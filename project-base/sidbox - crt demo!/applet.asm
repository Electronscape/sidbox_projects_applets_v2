
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
d008001e:	f001 fa2b 	bl	d0081478 <setbuf>
d0080022:	6833      	ldr	r3, [r6, #0]
d0080024:	2100      	movs	r1, #0
d0080026:	68d8      	ldr	r0, [r3, #12]
d0080028:	f001 fa26 	bl	d0081478 <setbuf>
d008002c:	4629      	mov	r1, r5
d008002e:	4620      	mov	r0, r4
d0080030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0080034:	f000 ba14 	b.w	d0080460 <main>
d0080038:	d00825b4 	.word	0xd00825b4

d008003c <gfx_createBitmap>:
d008003c:	b510      	push	{r4, lr}
d008003e:	4604      	mov	r4, r0
d0080040:	fb01 f002 	mul.w	r0, r1, r2
d0080044:	b292      	uxth	r2, r2
d0080046:	80a1      	strh	r1, [r4, #4]
d0080048:	60e0      	str	r0, [r4, #12]
d008004a:	80e2      	strh	r2, [r4, #6]
d008004c:	8122      	strh	r2, [r4, #8]
d008004e:	f001 f959 	bl	d0081304 <malloc>
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
d0080064:	d0097458 	.word	0xd0097458
d0080068:	d0600000 	.word	0xd0600000
d008006c:	d0095440 	.word	0xd0095440

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
d00800b8:	f001 f91e 	bl	d00812f8 <__errno>
d00800bc:	2209      	movs	r2, #9
d00800be:	4603      	mov	r3, r0
d00800c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800c4:	601a      	str	r2, [r3, #0]
d00800c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00800c8:	d0082624 	.word	0xd0082624
d00800cc:	2001f000 	.word	0x2001f000

d00800d0 <_read>:
d00800d0:	b508      	push	{r3, lr}
d00800d2:	f001 f911 	bl	d00812f8 <__errno>
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
d008011e:	f001 f8eb 	bl	d00812f8 <__errno>
d0080122:	220c      	movs	r2, #12
d0080124:	4603      	mov	r3, r0
d0080126:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008012a:	601a      	str	r2, [r3, #0]
d008012c:	bd10      	pop	{r4, pc}
d008012e:	bf00      	nop
d0080130:	d0082620 	.word	0xd0082620
d0080134:	d0097458 	.word	0xd0097458
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
d00802b0:	d0082640 	.word	0xd0082640

d00802b4 <draw_lcd_centered>:
d00802b4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00802b8:	b084      	sub	sp, #16
d00802ba:	4d19      	ldr	r5, [pc, #100]	; (d0080320 <draw_lcd_centered+0x6c>)
d00802bc:	460f      	mov	r7, r1
d00802be:	4690      	mov	r8, r2
d00802c0:	9003      	str	r0, [sp, #12]
d00802c2:	4608      	mov	r0, r1
d00802c4:	f001 f9da 	bl	d008167c <strlen>
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
d0080458:	d008230c 	.word	0xd008230c
d008045c:	d0082640 	.word	0xd0082640

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
d0080488:	b08f      	sub	sp, #60	; 0x3c
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
d0080518:	4882      	ldr	r0, [pc, #520]	; (d0080724 <main+0x2c4>)
d008051a:	f7ff fd8f 	bl	d008003c <gfx_createBitmap>
d008051e:	7b3b      	ldrb	r3, [r7, #12]
d0080520:	7b7a      	ldrb	r2, [r7, #13]
d0080522:	7bb9      	ldrb	r1, [r7, #14]
d0080524:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080528:	7bfa      	ldrb	r2, [r7, #15]
d008052a:	487e      	ldr	r0, [pc, #504]	; (d0080724 <main+0x2c4>)
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
d0080546:	4877      	ldr	r0, [pc, #476]	; (d0080724 <main+0x2c4>)
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
d0080668:	ea44 6405 	orr.w	r4, r4, r5, lsl #24
d008066c:	6864      	ldr	r4, [r4, #4]
d008066e:	6864      	ldr	r4, [r4, #4]
d0080670:	47a0      	blx	r4
d0080672:	2202      	movs	r2, #2
d0080674:	492c      	ldr	r1, [pc, #176]	; (d0080728 <main+0x2c8>)
d0080676:	208c      	movs	r0, #140	; 0x8c
d0080678:	f7ff fe1c 	bl	d00802b4 <draw_lcd_centered>
d008067c:	20a4      	movs	r0, #164	; 0xa4
d008067e:	220b      	movs	r2, #11
d0080680:	492a      	ldr	r1, [pc, #168]	; (d008072c <main+0x2cc>)
d0080682:	f7ff fe17 	bl	d00802b4 <draw_lcd_centered>
d0080686:	7b3b      	ldrb	r3, [r7, #12]
d0080688:	7b7a      	ldrb	r2, [r7, #13]
d008068a:	7bb9      	ldrb	r1, [r7, #14]
d008068c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080690:	7bfa      	ldrb	r2, [r7, #15]
d0080692:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080696:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008069a:	681b      	ldr	r3, [r3, #0]
d008069c:	681b      	ldr	r3, [r3, #0]
d008069e:	4798      	blx	r3
d00806a0:	7b3b      	ldrb	r3, [r7, #12]
d00806a2:	7b7a      	ldrb	r2, [r7, #13]
d00806a4:	7bb9      	ldrb	r1, [r7, #14]
d00806a6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00806aa:	7bfa      	ldrb	r2, [r7, #15]
d00806ac:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00806b0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00806b4:	681b      	ldr	r3, [r3, #0]
d00806b6:	68db      	ldr	r3, [r3, #12]
d00806b8:	4798      	blx	r3
d00806ba:	7f3b      	ldrb	r3, [r7, #28]
d00806bc:	7f7a      	ldrb	r2, [r7, #29]
d00806be:	7fb9      	ldrb	r1, [r7, #30]
d00806c0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00806c4:	7ffa      	ldrb	r2, [r7, #31]
d00806c6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00806ca:	ea53 6302 	orrs.w	r3, r3, r2, lsl #24
d00806ce:	f000 85fc 	beq.w	d00812ca <main+0xe6a>
d00806d2:	4c13      	ldr	r4, [pc, #76]	; (d0080720 <main+0x2c0>)
d00806d4:	7f21      	ldrb	r1, [r4, #28]
d00806d6:	7f63      	ldrb	r3, [r4, #29]
d00806d8:	7fa2      	ldrb	r2, [r4, #30]
d00806da:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00806de:	7fe3      	ldrb	r3, [r4, #31]
d00806e0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00806e4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00806e8:	685b      	ldr	r3, [r3, #4]
d00806ea:	4798      	blx	r3
d00806ec:	2800      	cmp	r0, #0
d00806ee:	f000 85ec 	beq.w	d00812ca <main+0xe6a>
d00806f2:	7821      	ldrb	r1, [r4, #0]
d00806f4:	27b8      	movs	r7, #184	; 0xb8
d00806f6:	7863      	ldrb	r3, [r4, #1]
d00806f8:	78a2      	ldrb	r2, [r4, #2]
d00806fa:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00806fe:	78e3      	ldrb	r3, [r4, #3]
d0080700:	4e0b      	ldr	r6, [pc, #44]	; (d0080730 <main+0x2d0>)
d0080702:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080706:	4d0b      	ldr	r5, [pc, #44]	; (d0080734 <main+0x2d4>)
d0080708:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008070c:	689b      	ldr	r3, [r3, #8]
d008070e:	4798      	blx	r3
d0080710:	4b09      	ldr	r3, [pc, #36]	; (d0080738 <main+0x2d8>)
d0080712:	490a      	ldr	r1, [pc, #40]	; (d008073c <main+0x2dc>)
d0080714:	681b      	ldr	r3, [r3, #0]
d0080716:	f8df c028 	ldr.w	ip, [pc, #40]	; d0080740 <main+0x2e0>
d008071a:	4058      	eors	r0, r3
d008071c:	e012      	b.n	d0080744 <main+0x2e4>
d008071e:	bf00      	nop
d0080720:	2001f000 	.word	0x2001f000
d0080724:	d0095240 	.word	0xd0095240
d0080728:	d00824fc 	.word	0xd00824fc
d008072c:	d00824e4 	.word	0xd00824e4
d0080730:	b21642c9 	.word	0xb21642c9
d0080734:	aaaaaaab 	.word	0xaaaaaaab
d0080738:	d00825b0 	.word	0xd00825b0
d008073c:	d0095260 	.word	0xd0095260
d0080740:	cccccccd 	.word	0xcccccccd
d0080744:	ea80 3340 	eor.w	r3, r0, r0, lsl #13
d0080748:	220f      	movs	r2, #15
d008074a:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d008074e:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0080752:	ea83 3443 	eor.w	r4, r3, r3, lsl #13
d0080756:	fbac e003 	umull	lr, r0, ip, r3
d008075a:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d008075e:	0b00      	lsrs	r0, r0, #12
d0080760:	ea84 1e44 	eor.w	lr, r4, r4, lsl #5
d0080764:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d0080768:	ea8e 384e 	eor.w	r8, lr, lr, lsl #13
d008076c:	fba6 940e 	umull	r9, r4, r6, lr
d0080770:	eba3 2380 	sub.w	r3, r3, r0, lsl #10
d0080774:	ea88 4058 	eor.w	r0, r8, r8, lsr #17
d0080778:	09e4      	lsrs	r4, r4, #7
d008077a:	800b      	strh	r3, [r1, #0]
d008077c:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
d0080780:	fb07 e414 	mls	r4, r7, r4, lr
d0080784:	fba5 e300 	umull	lr, r3, r5, r0
d0080788:	3422      	adds	r4, #34	; 0x22
d008078a:	08db      	lsrs	r3, r3, #3
d008078c:	708c      	strb	r4, [r1, #2]
d008078e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080792:	eba0 0383 	sub.w	r3, r0, r3, lsl #2
d0080796:	3302      	adds	r3, #2
d0080798:	b2db      	uxtb	r3, r3
d008079a:	2b09      	cmp	r3, #9
d008079c:	70cb      	strb	r3, [r1, #3]
d008079e:	d803      	bhi.n	d00807a8 <main+0x348>
d00807a0:	2b06      	cmp	r3, #6
d00807a2:	bf8c      	ite	hi
d00807a4:	220d      	movhi	r2, #13
d00807a6:	2205      	movls	r2, #5
d00807a8:	710a      	strb	r2, [r1, #4]
d00807aa:	3106      	adds	r1, #6
d00807ac:	4ba3      	ldr	r3, [pc, #652]	; (d0080a3c <main+0x5dc>)
d00807ae:	428b      	cmp	r3, r1
d00807b0:	d1c8      	bne.n	d0080744 <main+0x2e4>
d00807b2:	2300      	movs	r3, #0
d00807b4:	9309      	str	r3, [sp, #36]	; 0x24
d00807b6:	4ba2      	ldr	r3, [pc, #648]	; (d0080a40 <main+0x5e0>)
d00807b8:	6018      	str	r0, [r3, #0]
d00807ba:	4ba2      	ldr	r3, [pc, #648]	; (d0080a44 <main+0x5e4>)
d00807bc:	f5a3 3b96 	sub.w	fp, r3, #76800	; 0x12c00
d00807c0:	4ca1      	ldr	r4, [pc, #644]	; (d0080a48 <main+0x5e8>)
d00807c2:	7821      	ldrb	r1, [r4, #0]
d00807c4:	7863      	ldrb	r3, [r4, #1]
d00807c6:	78a2      	ldrb	r2, [r4, #2]
d00807c8:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00807cc:	78e3      	ldrb	r3, [r4, #3]
d00807ce:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00807d2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00807d6:	6a1b      	ldr	r3, [r3, #32]
d00807d8:	4798      	blx	r3
d00807da:	f000 0003 	and.w	r0, r0, #3
d00807de:	2803      	cmp	r0, #3
d00807e0:	f000 84ca 	beq.w	d0081178 <main+0xd18>
d00807e4:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00807e6:	465c      	mov	r4, fp
d00807e8:	f8df 8278 	ldr.w	r8, [pc, #632]	; d0080a64 <main+0x604>
d00807ec:	f3c3 03c3 	ubfx	r3, r3, #3, #4
d00807f0:	f818 3003 	ldrb.w	r3, [r8, r3]
d00807f4:	ee08 3a10 	vmov	s16, r3
d00807f8:	4620      	mov	r0, r4
d00807fa:	22f0      	movs	r2, #240	; 0xf0
d00807fc:	2100      	movs	r1, #0
d00807fe:	34f0      	adds	r4, #240	; 0xf0
d0080800:	f000 fd88 	bl	d0081314 <memset>
d0080804:	4b8f      	ldr	r3, [pc, #572]	; (d0080a44 <main+0x5e4>)
d0080806:	42a3      	cmp	r3, r4
d0080808:	d1f6      	bne.n	d00807f8 <main+0x398>
d008080a:	9b09      	ldr	r3, [sp, #36]	; 0x24
d008080c:	2414      	movs	r4, #20
d008080e:	2500      	movs	r5, #0
d0080810:	f3c3 0647 	ubfx	r6, r3, #1, #8
d0080814:	b22f      	sxth	r7, r5
d0080816:	f006 030f 	and.w	r3, r6, #15
d008081a:	fa0f fa84 	sxth.w	sl, r4
d008081e:	f818 9003 	ldrb.w	r9, [r8, r3]
d0080822:	4557      	cmp	r7, sl
d0080824:	da0d      	bge.n	d0080842 <main+0x3e2>
d0080826:	f009 090f 	and.w	r9, r9, #15
d008082a:	ebc7 1007 	rsb	r0, r7, r7, lsl #4
d008082e:	3701      	adds	r7, #1
d0080830:	2218      	movs	r2, #24
d0080832:	4649      	mov	r1, r9
d0080834:	b23f      	sxth	r7, r7
d0080836:	eb0b 1000 	add.w	r0, fp, r0, lsl #4
d008083a:	f000 fd6b 	bl	d0081314 <memset>
d008083e:	45ba      	cmp	sl, r7
d0080840:	d1f3      	bne.n	d008082a <main+0x3ca>
d0080842:	3414      	adds	r4, #20
d0080844:	3601      	adds	r6, #1
d0080846:	3514      	adds	r5, #20
d0080848:	b2a4      	uxth	r4, r4
d008084a:	b2f6      	uxtb	r6, r6
d008084c:	f5b4 7faa 	cmp.w	r4, #340	; 0x154
d0080850:	b2ad      	uxth	r5, r5
d0080852:	d1df      	bne.n	d0080814 <main+0x3b4>
d0080854:	4b7d      	ldr	r3, [pc, #500]	; (d0080a4c <main+0x5ec>)
d0080856:	f640 710f 	movw	r1, #3855	; 0xf0f
d008085a:	f503 3296 	add.w	r2, r3, #76800	; 0x12c00
d008085e:	f823 1bf0 	strh.w	r1, [r3], #240
d0080862:	429a      	cmp	r2, r3
d0080864:	d1fb      	bne.n	d008085e <main+0x3fe>
d0080866:	4b7a      	ldr	r3, [pc, #488]	; (d0080a50 <main+0x5f0>)
d0080868:	2201      	movs	r2, #1
d008086a:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
d008086e:	33f0      	adds	r3, #240	; 0xf0
d0080870:	4974      	ldr	r1, [pc, #464]	; (d0080a44 <main+0x5e4>)
d0080872:	f803 2cb8 	strb.w	r2, [r3, #-184]
d0080876:	f803 2ca8 	strb.w	r2, [r3, #-168]
d008087a:	f803 2c98 	strb.w	r2, [r3, #-152]
d008087e:	f803 2c88 	strb.w	r2, [r3, #-136]
d0080882:	f803 2c78 	strb.w	r2, [r3, #-120]
d0080886:	f803 2c68 	strb.w	r2, [r3, #-104]
d008088a:	f803 2c58 	strb.w	r2, [r3, #-88]
d008088e:	f803 2c48 	strb.w	r2, [r3, #-72]
d0080892:	f803 2c38 	strb.w	r2, [r3, #-56]
d0080896:	f803 2c28 	strb.w	r2, [r3, #-40]
d008089a:	f803 2c18 	strb.w	r2, [r3, #-24]
d008089e:	4299      	cmp	r1, r3
d00808a0:	d1e3      	bne.n	d008086a <main+0x40a>
d00808a2:	4e6c      	ldr	r6, [pc, #432]	; (d0080a54 <main+0x5f4>)
d00808a4:	2300      	movs	r3, #0
d00808a6:	b29c      	uxth	r4, r3
d00808a8:	2101      	movs	r1, #1
d00808aa:	22bc      	movs	r2, #188	; 0xbc
d00808ac:	4630      	mov	r0, r6
d00808ae:	1865      	adds	r5, r4, r1
d00808b0:	b22d      	sxth	r5, r5
d00808b2:	429d      	cmp	r5, r3
d00808b4:	dd01      	ble.n	d00808ba <main+0x45a>
d00808b6:	f000 fd2d 	bl	d0081314 <memset>
d00808ba:	3410      	adds	r4, #16
d00808bc:	f506 6670 	add.w	r6, r6, #3840	; 0xf00
d00808c0:	b2a2      	uxth	r2, r4
d00808c2:	b223      	sxth	r3, r4
d00808c4:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d00808c8:	d1ed      	bne.n	d00808a6 <main+0x446>
d00808ca:	4b61      	ldr	r3, [pc, #388]	; (d0080a50 <main+0x5f0>)
d00808cc:	2205      	movs	r2, #5
d00808ce:	f883 207e 	strb.w	r2, [r3, #126]	; 0x7e
d00808d2:	33f0      	adds	r3, #240	; 0xf0
d00808d4:	495b      	ldr	r1, [pc, #364]	; (d0080a44 <main+0x5e4>)
d00808d6:	4299      	cmp	r1, r3
d00808d8:	d1f9      	bne.n	d00808ce <main+0x46e>
d00808da:	22bc      	movs	r2, #188	; 0xbc
d00808dc:	2105      	movs	r1, #5
d00808de:	485e      	ldr	r0, [pc, #376]	; (d0080a58 <main+0x5f8>)
d00808e0:	f000 fd18 	bl	d0081314 <memset>
d00808e4:	4b56      	ldr	r3, [pc, #344]	; (d0080a40 <main+0x5e0>)
d00808e6:	4a5d      	ldr	r2, [pc, #372]	; (d0080a5c <main+0x5fc>)
d00808e8:	f04f 0eb8 	mov.w	lr, #184	; 0xb8
d00808ec:	f8d3 a000 	ldr.w	sl, [r3]
d00808f0:	f8df 8174 	ldr.w	r8, [pc, #372]	; d0080a68 <main+0x608>
d00808f4:	f8df c174 	ldr.w	ip, [pc, #372]	; d0080a6c <main+0x60c>
d00808f8:	e005      	b.n	d0080906 <main+0x4a6>
d00808fa:	8013      	strh	r3, [r2, #0]
d00808fc:	3206      	adds	r2, #6
d00808fe:	4b4f      	ldr	r3, [pc, #316]	; (d0080a3c <main+0x5dc>)
d0080900:	4293      	cmp	r3, r2
d0080902:	f000 8084 	beq.w	d0080a0e <main+0x5ae>
d0080906:	78d4      	ldrb	r4, [r2, #3]
d0080908:	8811      	ldrh	r1, [r2, #0]
d008090a:	2c08      	cmp	r4, #8
d008090c:	7890      	ldrb	r0, [r2, #2]
d008090e:	ea4f 1311 	mov.w	r3, r1, lsr #4
d0080912:	7915      	ldrb	r5, [r2, #4]
d0080914:	bf94      	ite	ls
d0080916:	2702      	movls	r7, #2
d0080918:	2704      	movhi	r7, #4
d008091a:	28ef      	cmp	r0, #239	; 0xef
d008091c:	eba3 0307 	sub.w	r3, r3, r7
d0080920:	b29b      	uxth	r3, r3
d0080922:	d834      	bhi.n	d008098e <main+0x52e>
d0080924:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0080928:	d207      	bcs.n	d008093a <main+0x4da>
d008092a:	ebc3 1603 	rsb	r6, r3, r3, lsl #4
d008092e:	f005 090f 	and.w	r9, r5, #15
d0080932:	eb0b 1606 	add.w	r6, fp, r6, lsl #4
d0080936:	f806 9000 	strb.w	r9, [r6, r0]
d008093a:	1c5e      	adds	r6, r3, #1
d008093c:	b2b6      	uxth	r6, r6
d008093e:	f5b6 7fa0 	cmp.w	r6, #320	; 0x140
d0080942:	d207      	bcs.n	d0080954 <main+0x4f4>
d0080944:	ebc6 1606 	rsb	r6, r6, r6, lsl #4
d0080948:	f005 090f 	and.w	r9, r5, #15
d008094c:	eb0b 1606 	add.w	r6, fp, r6, lsl #4
d0080950:	f806 9000 	strb.w	r9, [r6, r0]
d0080954:	2f02      	cmp	r7, #2
d0080956:	d01a      	beq.n	d008098e <main+0x52e>
d0080958:	1c9e      	adds	r6, r3, #2
d008095a:	b2b6      	uxth	r6, r6
d008095c:	f5b6 7fa0 	cmp.w	r6, #320	; 0x140
d0080960:	d207      	bcs.n	d0080972 <main+0x512>
d0080962:	ebc6 1606 	rsb	r6, r6, r6, lsl #4
d0080966:	f005 090f 	and.w	r9, r5, #15
d008096a:	eb0b 1606 	add.w	r6, fp, r6, lsl #4
d008096e:	f806 9000 	strb.w	r9, [r6, r0]
d0080972:	2f04      	cmp	r7, #4
d0080974:	d10b      	bne.n	d008098e <main+0x52e>
d0080976:	3303      	adds	r3, #3
d0080978:	b29b      	uxth	r3, r3
d008097a:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d008097e:	d206      	bcs.n	d008098e <main+0x52e>
d0080980:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d0080984:	f005 050f 	and.w	r5, r5, #15
d0080988:	eb0b 1303 	add.w	r3, fp, r3, lsl #4
d008098c:	541d      	strb	r5, [r3, r0]
d008098e:	1b0b      	subs	r3, r1, r4
d0080990:	b29b      	uxth	r3, r3
d0080992:	f5b3 5fa0 	cmp.w	r3, #5120	; 0x1400
d0080996:	d9b0      	bls.n	d00808fa <main+0x49a>
d0080998:	ea8a 334a 	eor.w	r3, sl, sl, lsl #13
d008099c:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d00809a0:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d00809a4:	ea83 3043 	eor.w	r0, r3, r3, lsl #13
d00809a8:	fba8 4103 	umull	r4, r1, r8, r3
d00809ac:	4c2c      	ldr	r4, [pc, #176]	; (d0080a60 <main+0x600>)
d00809ae:	ea80 4050 	eor.w	r0, r0, r0, lsr #17
d00809b2:	0b09      	lsrs	r1, r1, #12
d00809b4:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
d00809b8:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d00809bc:	ea80 3a40 	eor.w	sl, r0, r0, lsl #13
d00809c0:	fba4 5400 	umull	r5, r4, r4, r0
d00809c4:	eba3 2181 	sub.w	r1, r3, r1, lsl #10
d00809c8:	ea8a 435a 	eor.w	r3, sl, sl, lsr #17
d00809cc:	09e4      	lsrs	r4, r4, #7
d00809ce:	f501 51a0 	add.w	r1, r1, #5120	; 0x1400
d00809d2:	ea83 1a43 	eor.w	sl, r3, r3, lsl #5
d00809d6:	fb0e 0014 	mls	r0, lr, r4, r0
d00809da:	fbac 430a 	umull	r4, r3, ip, sl
d00809de:	8011      	strh	r1, [r2, #0]
d00809e0:	3022      	adds	r0, #34	; 0x22
d00809e2:	08d9      	lsrs	r1, r3, #3
d00809e4:	7090      	strb	r0, [r2, #2]
d00809e6:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d00809ea:	ebaa 0181 	sub.w	r1, sl, r1, lsl #2
d00809ee:	3102      	adds	r1, #2
d00809f0:	b2c9      	uxtb	r1, r1
d00809f2:	2909      	cmp	r1, #9
d00809f4:	70d1      	strb	r1, [r2, #3]
d00809f6:	f200 80de 	bhi.w	d0080bb6 <main+0x756>
d00809fa:	2906      	cmp	r1, #6
d00809fc:	bf8c      	ite	hi
d00809fe:	230d      	movhi	r3, #13
d0080a00:	2305      	movls	r3, #5
d0080a02:	7113      	strb	r3, [r2, #4]
d0080a04:	3206      	adds	r2, #6
d0080a06:	4b0d      	ldr	r3, [pc, #52]	; (d0080a3c <main+0x5dc>)
d0080a08:	4293      	cmp	r3, r2
d0080a0a:	f47f af7c 	bne.w	d0080906 <main+0x4a6>
d0080a0e:	f8bd 3024 	ldrh.w	r3, [sp, #36]	; 0x24
d0080a12:	2201      	movs	r2, #1
d0080a14:	f04f 0800 	mov.w	r8, #0
d0080a18:	f8cd a034 	str.w	sl, [sp, #52]	; 0x34
d0080a1c:	9203      	str	r2, [sp, #12]
d0080a1e:	fa03 f202 	lsl.w	r2, r3, r2
d0080a22:	277e      	movs	r7, #126	; 0x7e
d0080a24:	46c6      	mov	lr, r8
d0080a26:	920c      	str	r2, [sp, #48]	; 0x30
d0080a28:	b292      	uxth	r2, r2
d0080a2a:	930b      	str	r3, [sp, #44]	; 0x2c
d0080a2c:	4691      	mov	r9, r2
d0080a2e:	920a      	str	r2, [sp, #40]	; 0x28
d0080a30:	4a03      	ldr	r2, [pc, #12]	; (d0080a40 <main+0x5e0>)
d0080a32:	f8c2 a000 	str.w	sl, [r2]
d0080a36:	469a      	mov	sl, r3
d0080a38:	e02a      	b.n	d0080a90 <main+0x630>
d0080a3a:	bf00      	nop
d0080a3c:	d0095410 	.word	0xd0095410
d0080a40:	d00825b0 	.word	0xd00825b0
d0080a44:	d0095240 	.word	0xd0095240
d0080a48:	2001f000 	.word	0x2001f000
d0080a4c:	d0082658 	.word	0xd0082658
d0080a50:	d0082640 	.word	0xd0082640
d0080a54:	d0082660 	.word	0xd0082660
d0080a58:	d008bc60 	.word	0xd008bc60
d0080a5c:	d0095260 	.word	0xd0095260
d0080a60:	b21642c9 	.word	0xb21642c9
d0080a64:	d00822fc 	.word	0xd00822fc
d0080a68:	cccccccd 	.word	0xcccccccd
d0080a6c:	aaaaaaab 	.word	0xaaaaaaab
d0080a70:	9903      	ldr	r1, [sp, #12]
d0080a72:	f10a 0009 	add.w	r0, sl, #9
d0080a76:	f109 0213 	add.w	r2, r9, #19
d0080a7a:	461f      	mov	r7, r3
d0080a7c:	3101      	adds	r1, #1
d0080a7e:	f208 183f 	addw	r8, r8, #319	; 0x13f
d0080a82:	fa1f fa80 	uxth.w	sl, r0
d0080a86:	46e6      	mov	lr, ip
d0080a88:	b28b      	uxth	r3, r1
d0080a8a:	fa1f f982 	uxth.w	r9, r2
d0080a8e:	9303      	str	r3, [sp, #12]
d0080a90:	4b4f      	ldr	r3, [pc, #316]	; (d0080bd0 <main+0x770>)
d0080a92:	f01a 0f80 	tst.w	sl, #128	; 0x80
d0080a96:	ea4f 72e8 	mov.w	r2, r8, asr #31
d0080a9a:	484e      	ldr	r0, [pc, #312]	; (d0080bd4 <main+0x774>)
d0080a9c:	fb83 3108 	smull	r3, r1, r3, r8
d0080aa0:	fa5f f38a 	uxtb.w	r3, sl
d0080aa4:	bf14      	ite	ne
d0080aa6:	f1c3 03ff 	rsbne	r3, r3, #255	; 0xff
d0080aaa:	b21b      	sxtheq	r3, r3
d0080aac:	4441      	add	r1, r8
d0080aae:	f019 0f80 	tst.w	r9, #128	; 0x80
d0080ab2:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080ab6:	ebc2 12a1 	rsb	r2, r2, r1, asr #6
d0080aba:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
d0080abe:	fa5f f189 	uxtb.w	r1, r9
d0080ac2:	ea4f 0383 	mov.w	r3, r3, lsl #2
d0080ac6:	bf14      	ite	ne
d0080ac8:	f1c1 01ff 	rsbne	r1, r1, #255	; 0xff
d0080acc:	b209      	sxtheq	r1, r1
d0080ace:	fba0 4003 	umull	r4, r0, r0, r3
d0080ad2:	fa0f fc82 	sxth.w	ip, r2
d0080ad6:	1a1b      	subs	r3, r3, r0
d0080ad8:	eb00 0353 	add.w	r3, r0, r3, lsr #1
d0080adc:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d0080ae0:	f3c3 138f 	ubfx	r3, r3, #6, #16
d0080ae4:	eb01 0180 	add.w	r1, r1, r0, lsl #2
d0080ae8:	483a      	ldr	r0, [pc, #232]	; (d0080bd4 <main+0x774>)
d0080aea:	3347      	adds	r3, #71	; 0x47
d0080aec:	0049      	lsls	r1, r1, #1
d0080aee:	fba0 4001 	umull	r4, r0, r0, r1
d0080af2:	1a09      	subs	r1, r1, r0
d0080af4:	eb00 0151 	add.w	r1, r0, r1, lsr #1
d0080af8:	eb03 1391 	add.w	r3, r3, r1, lsr #6
d0080afc:	9903      	ldr	r1, [sp, #12]
d0080afe:	2901      	cmp	r1, #1
d0080b00:	b29c      	uxth	r4, r3
d0080b02:	b21b      	sxth	r3, r3
d0080b04:	d0b4      	beq.n	d0080a70 <main+0x610>
d0080b06:	45f4      	cmp	ip, lr
d0080b08:	f340 8321 	ble.w	d008114e <main+0xcee>
d0080b0c:	eba2 020e 	sub.w	r2, r2, lr
d0080b10:	2101      	movs	r1, #1
d0080b12:	9107      	str	r1, [sp, #28]
d0080b14:	42bb      	cmp	r3, r7
d0080b16:	b291      	uxth	r1, r2
d0080b18:	b212      	sxth	r2, r2
d0080b1a:	9104      	str	r1, [sp, #16]
d0080b1c:	9206      	str	r2, [sp, #24]
d0080b1e:	f340 8312 	ble.w	d0081146 <main+0xce6>
d0080b22:	1b3c      	subs	r4, r7, r4
d0080b24:	2201      	movs	r2, #1
d0080b26:	9208      	str	r2, [sp, #32]
d0080b28:	b2a2      	uxth	r2, r4
d0080b2a:	fa1f f08e 	uxth.w	r0, lr
d0080b2e:	4611      	mov	r1, r2
d0080b30:	9205      	str	r2, [sp, #20]
d0080b32:	9a04      	ldr	r2, [sp, #16]
d0080b34:	b224      	sxth	r4, r4
d0080b36:	440a      	add	r2, r1
d0080b38:	b212      	sxth	r2, r2
d0080b3a:	2f00      	cmp	r7, #0
d0080b3c:	db23      	blt.n	d0080b86 <main+0x726>
d0080b3e:	f240 113f 	movw	r1, #319	; 0x13f
d0080b42:	4288      	cmp	r0, r1
d0080b44:	bf94      	ite	ls
d0080b46:	2500      	movls	r5, #0
d0080b48:	2501      	movhi	r5, #1
d0080b4a:	2fef      	cmp	r7, #239	; 0xef
d0080b4c:	bfc8      	it	gt
d0080b4e:	f045 0501 	orrgt.w	r5, r5, #1
d0080b52:	bb9d      	cbnz	r5, d0080bbc <main+0x75c>
d0080b54:	21f0      	movs	r1, #240	; 0xf0
d0080b56:	fb1e 7601 	smlabb	r6, lr, r1, r7
d0080b5a:	f04f 010c 	mov.w	r1, #12
d0080b5e:	f80b 1006 	strb.w	r1, [fp, r6]
d0080b62:	1c41      	adds	r1, r0, #1
d0080b64:	b209      	sxth	r1, r1
d0080b66:	f240 163f 	movw	r6, #319	; 0x13f
d0080b6a:	42b1      	cmp	r1, r6
d0080b6c:	dc07      	bgt.n	d0080b7e <main+0x71e>
d0080b6e:	b935      	cbnz	r5, d0080b7e <main+0x71e>
d0080b70:	25f0      	movs	r5, #240	; 0xf0
d0080b72:	fb11 7105 	smlabb	r1, r1, r5, r7
d0080b76:	f04f 050c 	mov.w	r5, #12
d0080b7a:	f80b 5001 	strb.w	r5, [fp, r1]
d0080b7e:	45f4      	cmp	ip, lr
d0080b80:	d101      	bne.n	d0080b86 <main+0x726>
d0080b82:	42bb      	cmp	r3, r7
d0080b84:	d028      	beq.n	d0080bd8 <main+0x778>
d0080b86:	0051      	lsls	r1, r2, #1
d0080b88:	b209      	sxth	r1, r1
d0080b8a:	42a1      	cmp	r1, r4
d0080b8c:	db07      	blt.n	d0080b9e <main+0x73e>
d0080b8e:	9d05      	ldr	r5, [sp, #20]
d0080b90:	442a      	add	r2, r5
d0080b92:	9d07      	ldr	r5, [sp, #28]
d0080b94:	4428      	add	r0, r5
d0080b96:	b212      	sxth	r2, r2
d0080b98:	fa0f fe80 	sxth.w	lr, r0
d0080b9c:	b280      	uxth	r0, r0
d0080b9e:	9d06      	ldr	r5, [sp, #24]
d0080ba0:	42a9      	cmp	r1, r5
d0080ba2:	dcca      	bgt.n	d0080b3a <main+0x6da>
d0080ba4:	9904      	ldr	r1, [sp, #16]
d0080ba6:	440a      	add	r2, r1
d0080ba8:	9908      	ldr	r1, [sp, #32]
d0080baa:	440f      	add	r7, r1
d0080bac:	b212      	sxth	r2, r2
d0080bae:	b23f      	sxth	r7, r7
d0080bb0:	2f00      	cmp	r7, #0
d0080bb2:	dac4      	bge.n	d0080b3e <main+0x6de>
d0080bb4:	e7e7      	b.n	d0080b86 <main+0x726>
d0080bb6:	230f      	movs	r3, #15
d0080bb8:	7113      	strb	r3, [r2, #4]
d0080bba:	e723      	b.n	d0080a04 <main+0x5a4>
d0080bbc:	1c41      	adds	r1, r0, #1
d0080bbe:	b209      	sxth	r1, r1
d0080bc0:	2900      	cmp	r1, #0
d0080bc2:	dbdc      	blt.n	d0080b7e <main+0x71e>
d0080bc4:	2fef      	cmp	r7, #239	; 0xef
d0080bc6:	bfd4      	ite	le
d0080bc8:	2500      	movle	r5, #0
d0080bca:	2501      	movgt	r5, #1
d0080bcc:	e7cb      	b.n	d0080b66 <main+0x706>
d0080bce:	bf00      	nop
d0080bd0:	ac769185 	.word	0xac769185
d0080bd4:	02040811 	.word	0x02040811
d0080bd8:	9a03      	ldr	r2, [sp, #12]
d0080bda:	2a60      	cmp	r2, #96	; 0x60
d0080bdc:	f47f af48 	bne.w	d0080a70 <main+0x610>
d0080be0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d0080be2:	980b      	ldr	r0, [sp, #44]	; 0x2c
d0080be4:	061e      	lsls	r6, r3, #24
d0080be6:	f003 01fe 	and.w	r1, r3, #254	; 0xfe
d0080bea:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d0080bec:	bf4c      	ite	mi
d0080bee:	f1c1 01ff 	rsbmi	r1, r1, #255	; 0xff
d0080bf2:	b209      	sxthpl	r1, r1
d0080bf4:	4403      	add	r3, r0
d0080bf6:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
d0080bfa:	0209      	lsls	r1, r1, #8
d0080bfc:	461a      	mov	r2, r3
d0080bfe:	b2db      	uxtb	r3, r3
d0080c00:	0615      	lsls	r5, r2, #24
d0080c02:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d0080c04:	4dc2      	ldr	r5, [pc, #776]	; (d0080f10 <main+0xab0>)
d0080c06:	f102 0240 	add.w	r2, r2, #64	; 0x40
d0080c0a:	bf4c      	ite	mi
d0080c0c:	f1c3 03ff 	rsbmi	r3, r3, #255	; 0xff
d0080c10:	b21b      	sxthpl	r3, r3
d0080c12:	f002 00fe 	and.w	r0, r2, #254	; 0xfe
d0080c16:	0614      	lsls	r4, r2, #24
d0080c18:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080c1c:	bf4c      	ite	mi
d0080c1e:	f1c0 02ff 	rsbmi	r2, r0, #255	; 0xff
d0080c22:	b202      	sxthpl	r2, r0
d0080c24:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
d0080c28:	9204      	str	r2, [sp, #16]
d0080c2a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d0080c2c:	00db      	lsls	r3, r3, #3
d0080c2e:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d0080c32:	b2d0      	uxtb	r0, r2
d0080c34:	0612      	lsls	r2, r2, #24
d0080c36:	bf4c      	ite	mi
d0080c38:	f1c0 02ff 	rsbmi	r2, r0, #255	; 0xff
d0080c3c:	b202      	sxthpl	r2, r0
d0080c3e:	ebc2 00c2 	rsb	r0, r2, r2, lsl #3
d0080c42:	eb02 0280 	add.w	r2, r2, r0, lsl #2
d0080c46:	fba5 0701 	umull	r0, r7, r5, r1
d0080c4a:	fba5 0603 	umull	r0, r6, r5, r3
d0080c4e:	0092      	lsls	r2, r2, #2
d0080c50:	1bc9      	subs	r1, r1, r7
d0080c52:	1b9b      	subs	r3, r3, r6
d0080c54:	fba5 0502 	umull	r0, r5, r5, r2
d0080c58:	eb07 0751 	add.w	r7, r7, r1, lsr #1
d0080c5c:	eb06 0353 	add.w	r3, r6, r3, lsr #1
d0080c60:	1b52      	subs	r2, r2, r5
d0080c62:	f3c7 178f 	ubfx	r7, r7, #6, #16
d0080c66:	f3c3 168f 	ubfx	r6, r3, #6, #16
d0080c6a:	eb05 0552 	add.w	r5, r5, r2, lsr #1
d0080c6e:	f107 0421 	add.w	r4, r7, #33	; 0x21
d0080c72:	f106 031c 	add.w	r3, r6, #28
d0080c76:	f3c5 128f 	ubfx	r2, r5, #6, #16
d0080c7a:	b224      	sxth	r4, r4
d0080c7c:	b21b      	sxth	r3, r3
d0080c7e:	f102 0946 	add.w	r9, r2, #70	; 0x46
d0080c82:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080c86:	9203      	str	r2, [sp, #12]
d0080c88:	fa0f f989 	sxth.w	r9, r9
d0080c8c:	da25      	bge.n	d0080cda <main+0x87a>
d0080c8e:	2bef      	cmp	r3, #239	; 0xef
d0080c90:	dc23      	bgt.n	d0080cda <main+0x87a>
d0080c92:	f107 0839 	add.w	r8, r7, #57	; 0x39
d0080c96:	f106 022e 	add.w	r2, r6, #46	; 0x2e
d0080c9a:	fa0f f888 	sxth.w	r8, r8
d0080c9e:	b212      	sxth	r2, r2
d0080ca0:	f5b8 7fa0 	cmp.w	r8, #320	; 0x140
d0080ca4:	bfa8      	it	ge
d0080ca6:	f44f 78a0 	movge.w	r8, #320	; 0x140
d0080caa:	2af0      	cmp	r2, #240	; 0xf0
d0080cac:	bfa8      	it	ge
d0080cae:	22f0      	movge	r2, #240	; 0xf0
d0080cb0:	45a0      	cmp	r8, r4
d0080cb2:	dd12      	ble.n	d0080cda <main+0x87a>
d0080cb4:	21f0      	movs	r1, #240	; 0xf0
d0080cb6:	1ad2      	subs	r2, r2, r3
d0080cb8:	9605      	str	r6, [sp, #20]
d0080cba:	fb14 3301 	smlabb	r3, r4, r1, r3
d0080cbe:	4616      	mov	r6, r2
d0080cc0:	eb0b 0503 	add.w	r5, fp, r3
d0080cc4:	3401      	adds	r4, #1
d0080cc6:	4628      	mov	r0, r5
d0080cc8:	4632      	mov	r2, r6
d0080cca:	210b      	movs	r1, #11
d0080ccc:	b224      	sxth	r4, r4
d0080cce:	35f0      	adds	r5, #240	; 0xf0
d0080cd0:	f000 fb20 	bl	d0081314 <memset>
d0080cd4:	45a0      	cmp	r8, r4
d0080cd6:	dcf5      	bgt.n	d0080cc4 <main+0x864>
d0080cd8:	9e05      	ldr	r6, [sp, #20]
d0080cda:	f107 0425 	add.w	r4, r7, #37	; 0x25
d0080cde:	f106 0320 	add.w	r3, r6, #32
d0080ce2:	b224      	sxth	r4, r4
d0080ce4:	b21b      	sxth	r3, r3
d0080ce6:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080cea:	da24      	bge.n	d0080d36 <main+0x8d6>
d0080cec:	2bef      	cmp	r3, #239	; 0xef
d0080cee:	dc22      	bgt.n	d0080d36 <main+0x8d6>
d0080cf0:	3735      	adds	r7, #53	; 0x35
d0080cf2:	f106 082a 	add.w	r8, r6, #42	; 0x2a
d0080cf6:	b23e      	sxth	r6, r7
d0080cf8:	fa0f f888 	sxth.w	r8, r8
d0080cfc:	f5b6 7fa0 	cmp.w	r6, #320	; 0x140
d0080d00:	bfa8      	it	ge
d0080d02:	f44f 76a0 	movge.w	r6, #320	; 0x140
d0080d06:	f1b8 0ff0 	cmp.w	r8, #240	; 0xf0
d0080d0a:	bfa8      	it	ge
d0080d0c:	f04f 08f0 	movge.w	r8, #240	; 0xf0
d0080d10:	42a6      	cmp	r6, r4
d0080d12:	dd10      	ble.n	d0080d36 <main+0x8d6>
d0080d14:	27f0      	movs	r7, #240	; 0xf0
d0080d16:	eba8 0803 	sub.w	r8, r8, r3
d0080d1a:	fb14 3307 	smlabb	r3, r4, r7, r3
d0080d1e:	eb0b 0703 	add.w	r7, fp, r3
d0080d22:	3401      	adds	r4, #1
d0080d24:	4638      	mov	r0, r7
d0080d26:	4642      	mov	r2, r8
d0080d28:	210f      	movs	r1, #15
d0080d2a:	b224      	sxth	r4, r4
d0080d2c:	37f0      	adds	r7, #240	; 0xf0
d0080d2e:	f000 faf1 	bl	d0081314 <memset>
d0080d32:	42a6      	cmp	r6, r4
d0080d34:	dcf5      	bgt.n	d0080d22 <main+0x8c2>
d0080d36:	9b04      	ldr	r3, [sp, #16]
d0080d38:	2212      	movs	r2, #18
d0080d3a:	4f75      	ldr	r7, [pc, #468]	; (d0080f10 <main+0xab0>)
d0080d3c:	4649      	mov	r1, r9
d0080d3e:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0080d42:	230e      	movs	r3, #14
d0080d44:	0140      	lsls	r0, r0, #5
d0080d46:	fba7 4700 	umull	r4, r7, r7, r0
d0080d4a:	1bc0      	subs	r0, r0, r7
d0080d4c:	eb07 0750 	add.w	r7, r7, r0, lsr #1
d0080d50:	f3c7 178f 	ubfx	r7, r7, #6, #16
d0080d54:	f107 00c8 	add.w	r0, r7, #200	; 0xc8
d0080d58:	f107 04c6 	add.w	r4, r7, #198	; 0xc6
d0080d5c:	b200      	sxth	r0, r0
d0080d5e:	b224      	sxth	r4, r4
d0080d60:	9004      	str	r0, [sp, #16]
d0080d62:	f7ff f9eb 	bl	d008013c <draw_circle>
d0080d66:	2306      	movs	r3, #6
d0080d68:	9804      	ldr	r0, [sp, #16]
d0080d6a:	4649      	mov	r1, r9
d0080d6c:	220a      	movs	r2, #10
d0080d6e:	f7ff f9e5 	bl	d008013c <draw_circle>
d0080d72:	9b03      	ldr	r3, [sp, #12]
d0080d74:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080d78:	f103 0644 	add.w	r6, r3, #68	; 0x44
d0080d7c:	b233      	sxth	r3, r6
d0080d7e:	da1f      	bge.n	d0080dc0 <main+0x960>
d0080d80:	2bef      	cmp	r3, #239	; 0xef
d0080d82:	dc1d      	bgt.n	d0080dc0 <main+0x960>
d0080d84:	37cb      	adds	r7, #203	; 0xcb
d0080d86:	9a03      	ldr	r2, [sp, #12]
d0080d88:	b23d      	sxth	r5, r7
d0080d8a:	3249      	adds	r2, #73	; 0x49
d0080d8c:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d0080d90:	b217      	sxth	r7, r2
d0080d92:	bfa8      	it	ge
d0080d94:	f44f 75a0 	movge.w	r5, #320	; 0x140
d0080d98:	2ff0      	cmp	r7, #240	; 0xf0
d0080d9a:	bfa8      	it	ge
d0080d9c:	27f0      	movge	r7, #240	; 0xf0
d0080d9e:	42a5      	cmp	r5, r4
d0080da0:	dd0e      	ble.n	d0080dc0 <main+0x960>
d0080da2:	26f0      	movs	r6, #240	; 0xf0
d0080da4:	1aff      	subs	r7, r7, r3
d0080da6:	fb14 3606 	smlabb	r6, r4, r6, r3
d0080daa:	445e      	add	r6, fp
d0080dac:	3401      	adds	r4, #1
d0080dae:	4630      	mov	r0, r6
d0080db0:	463a      	mov	r2, r7
d0080db2:	210a      	movs	r1, #10
d0080db4:	b224      	sxth	r4, r4
d0080db6:	36f0      	adds	r6, #240	; 0xf0
d0080db8:	f000 faac 	bl	d0081314 <memset>
d0080dbc:	42a5      	cmp	r5, r4
d0080dbe:	dcf5      	bgt.n	d0080dac <main+0x94c>
d0080dc0:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0080dc2:	20bc      	movs	r0, #188	; 0xbc
d0080dc4:	4a53      	ldr	r2, [pc, #332]	; (d0080f14 <main+0xab4>)
d0080dc6:	210f      	movs	r1, #15
d0080dc8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080dcc:	fba2 4203 	umull	r4, r2, r2, r3
d0080dd0:	09d2      	lsrs	r2, r2, #7
d0080dd2:	fb00 3212 	mls	r2, r0, r2, r3
d0080dd6:	4850      	ldr	r0, [pc, #320]	; (d0080f18 <main+0xab8>)
d0080dd8:	3220      	adds	r2, #32
d0080dda:	b2d2      	uxtb	r2, r2
d0080ddc:	eb0b 0302 	add.w	r3, fp, r2
d0080de0:	4402      	add	r2, r0
d0080de2:	f803 1bf0 	strb.w	r1, [r3], #240
d0080de6:	4293      	cmp	r3, r2
d0080de8:	d1fb      	bne.n	d0080de2 <main+0x982>
d0080dea:	2100      	movs	r1, #0
d0080dec:	4d4b      	ldr	r5, [pc, #300]	; (d0080f1c <main+0xabc>)
d0080dee:	24bc      	movs	r4, #188	; 0xbc
d0080df0:	ea8a 334a 	eor.w	r3, sl, sl, lsl #13
d0080df4:	f001 0601 	and.w	r6, r1, #1
d0080df8:	3101      	adds	r1, #1
d0080dfa:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0080dfe:	3608      	adds	r6, #8
d0080e00:	291c      	cmp	r1, #28
d0080e02:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0080e06:	ea83 3a43 	eor.w	sl, r3, r3, lsl #13
d0080e0a:	fba5 0203 	umull	r0, r2, r5, r3
d0080e0e:	4841      	ldr	r0, [pc, #260]	; (d0080f14 <main+0xab4>)
d0080e10:	ea8a 4a5a 	eor.w	sl, sl, sl, lsr #17
d0080e14:	ea4f 2212 	mov.w	r2, r2, lsr #8
d0080e18:	ea8a 1a4a 	eor.w	sl, sl, sl, lsl #5
d0080e1c:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d0080e20:	fba0 700a 	umull	r7, r0, r0, sl
d0080e24:	eba3 1382 	sub.w	r3, r3, r2, lsl #6
d0080e28:	ea4f 10d0 	mov.w	r0, r0, lsr #7
d0080e2c:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d0080e30:	fb04 a010 	mls	r0, r4, r0, sl
d0080e34:	eb0b 1203 	add.w	r2, fp, r3, lsl #4
d0080e38:	f100 0320 	add.w	r3, r0, #32
d0080e3c:	b29b      	uxth	r3, r3
d0080e3e:	54d6      	strb	r6, [r2, r3]
d0080e40:	d1d6      	bne.n	d0080df0 <main+0x990>
d0080e42:	4937      	ldr	r1, [pc, #220]	; (d0080f20 <main+0xac0>)
d0080e44:	f04f 3201 	mov.w	r2, #16843009	; 0x1010101
d0080e48:	4b36      	ldr	r3, [pc, #216]	; (d0080f24 <main+0xac4>)
d0080e4a:	f8c1 a000 	str.w	sl, [r1]
d0080e4e:	f503 3196 	add.w	r1, r3, #76800	; 0x12c00
d0080e52:	e9c3 2200 	strd	r2, r2, [r3]
d0080e56:	e9c3 2202 	strd	r2, r2, [r3, #8]
d0080e5a:	33f0      	adds	r3, #240	; 0xf0
d0080e5c:	4299      	cmp	r1, r3
d0080e5e:	d1f8      	bne.n	d0080e52 <main+0x9f2>
d0080e60:	4b31      	ldr	r3, [pc, #196]	; (d0080f28 <main+0xac8>)
d0080e62:	2200      	movs	r2, #0
d0080e64:	f503 4116 	add.w	r1, r3, #38400	; 0x9600
d0080e68:	601a      	str	r2, [r3, #0]
d0080e6a:	33f0      	adds	r3, #240	; 0xf0
d0080e6c:	f843 2cec 	str.w	r2, [r3, #-236]
d0080e70:	f843 2ce8 	str.w	r2, [r3, #-232]
d0080e74:	4299      	cmp	r1, r3
d0080e76:	d1f7      	bne.n	d0080e68 <main+0xa08>
d0080e78:	4b2c      	ldr	r3, [pc, #176]	; (d0080f2c <main+0xacc>)
d0080e7a:	2200      	movs	r2, #0
d0080e7c:	492c      	ldr	r1, [pc, #176]	; (d0080f30 <main+0xad0>)
d0080e7e:	601a      	str	r2, [r3, #0]
d0080e80:	33f0      	adds	r3, #240	; 0xf0
d0080e82:	f843 2cec 	str.w	r2, [r3, #-236]
d0080e86:	f843 2ce8 	str.w	r2, [r3, #-232]
d0080e8a:	4299      	cmp	r1, r3
d0080e8c:	d1f7      	bne.n	d0080e7e <main+0xa1e>
d0080e8e:	4d29      	ldr	r5, [pc, #164]	; (d0080f34 <main+0xad4>)
d0080e90:	2153      	movs	r1, #83	; 0x53
d0080e92:	2408      	movs	r4, #8
d0080e94:	e002      	b.n	d0080e9c <main+0xa3c>
d0080e96:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080e9a:	d009      	beq.n	d0080eb0 <main+0xa50>
d0080e9c:	4620      	mov	r0, r4
d0080e9e:	220f      	movs	r2, #15
d0080ea0:	3408      	adds	r4, #8
d0080ea2:	f7ff fa3f 	bl	d0080324 <draw_text_cell.constprop.0>
d0080ea6:	f815 1f01 	ldrb.w	r1, [r5, #1]!
d0080eaa:	b2a4      	uxth	r4, r4
d0080eac:	2900      	cmp	r1, #0
d0080eae:	d1f2      	bne.n	d0080e96 <main+0xa36>
d0080eb0:	4d21      	ldr	r5, [pc, #132]	; (d0080f38 <main+0xad8>)
d0080eb2:	2152      	movs	r1, #82	; 0x52
d0080eb4:	24b0      	movs	r4, #176	; 0xb0
d0080eb6:	e002      	b.n	d0080ebe <main+0xa5e>
d0080eb8:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080ebc:	d009      	beq.n	d0080ed2 <main+0xa72>
d0080ebe:	4620      	mov	r0, r4
d0080ec0:	220e      	movs	r2, #14
d0080ec2:	3408      	adds	r4, #8
d0080ec4:	f7ff fa2e 	bl	d0080324 <draw_text_cell.constprop.0>
d0080ec8:	f815 1f01 	ldrb.w	r1, [r5, #1]!
d0080ecc:	b2a4      	uxth	r4, r4
d0080ece:	2900      	cmp	r1, #0
d0080ed0:	d1f2      	bne.n	d0080eb8 <main+0xa58>
d0080ed2:	4c1a      	ldr	r4, [pc, #104]	; (d0080f3c <main+0xadc>)
d0080ed4:	2128      	movs	r1, #40	; 0x28
d0080ed6:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0080ed8:	4a19      	ldr	r2, [pc, #100]	; (d0080f40 <main+0xae0>)
d0080eda:	4620      	mov	r0, r4
d0080edc:	f000 fb9a 	bl	d0081614 <sniprintf>
d0080ee0:	7823      	ldrb	r3, [r4, #0]
d0080ee2:	2b00      	cmp	r3, #0
d0080ee4:	f000 80c8 	beq.w	d0081078 <main+0xc18>
d0080ee8:	4620      	mov	r0, r4
d0080eea:	2608      	movs	r6, #8
d0080eec:	4f15      	ldr	r7, [pc, #84]	; (d0080f44 <main+0xae4>)
d0080eee:	250d      	movs	r5, #13
d0080ef0:	f1a3 0261 	sub.w	r2, r3, #97	; 0x61
d0080ef4:	2a19      	cmp	r2, #25
d0080ef6:	f200 8138 	bhi.w	d008116a <main+0xd0a>
d0080efa:	f1a3 0420 	sub.w	r4, r3, #32
d0080efe:	b2e4      	uxtb	r4, r4
d0080f00:	3c20      	subs	r4, #32
d0080f02:	00e4      	lsls	r4, r4, #3
d0080f04:	443c      	add	r4, r7
d0080f06:	4631      	mov	r1, r6
d0080f08:	f104 3cff 	add.w	ip, r4, #4294967295	; 0xffffffff
d0080f0c:	3407      	adds	r4, #7
d0080f0e:	e059      	b.n	d0080fc4 <main+0xb64>
d0080f10:	02040811 	.word	0x02040811
d0080f14:	ae4c415d 	.word	0xae4c415d
d0080f18:	d0095240 	.word	0xd0095240
d0080f1c:	cccccccd 	.word	0xcccccccd
d0080f20:	d00825b0 	.word	0xd00825b0
d0080f24:	d0082720 	.word	0xd0082720
d0080f28:	d0082a04 	.word	0xd0082a04
d0080f2c:	d008c3c4 	.word	0xd008c3c4
d0080f30:	d0094e84 	.word	0xd0094e84
d0080f34:	d00822a0 	.word	0xd00822a0
d0080f38:	d00822b0 	.word	0xd00822b0
d0080f3c:	d0095410 	.word	0xd0095410
d0080f40:	d00822dc 	.word	0xd00822dc
d0080f44:	d008230c 	.word	0xd008230c
d0080f48:	b20a      	sxth	r2, r1
d0080f4a:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0080f4e:	da3e      	bge.n	d0080fce <main+0xb6e>
d0080f50:	ebc2 1302 	rsb	r3, r2, r2, lsl #4
d0080f54:	f01e 0f02 	tst.w	lr, #2
d0080f58:	eb0b 1803 	add.w	r8, fp, r3, lsl #4
d0080f5c:	ea4f 1303 	mov.w	r3, r3, lsl #4
d0080f60:	f888 50e4 	strb.w	r5, [r8, #228]	; 0xe4
d0080f64:	d13f      	bne.n	d0080fe6 <main+0xb86>
d0080f66:	f01e 0f04 	tst.w	lr, #4
d0080f6a:	d043      	beq.n	d0080ff4 <main+0xb94>
d0080f6c:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
d0080f70:	0113      	lsls	r3, r2, #4
d0080f72:	eb0b 0203 	add.w	r2, fp, r3
d0080f76:	f01e 0f08 	tst.w	lr, #8
d0080f7a:	f882 50e6 	strb.w	r5, [r2, #230]	; 0xe6
d0080f7e:	f000 80c3 	beq.w	d0081108 <main+0xca8>
d0080f82:	eb0b 0203 	add.w	r2, fp, r3
d0080f86:	f01e 0f10 	tst.w	lr, #16
d0080f8a:	f882 50e7 	strb.w	r5, [r2, #231]	; 0xe7
d0080f8e:	d044      	beq.n	d008101a <main+0xbba>
d0080f90:	eb0b 0203 	add.w	r2, fp, r3
d0080f94:	f01e 0f20 	tst.w	lr, #32
d0080f98:	f882 50e8 	strb.w	r5, [r2, #232]	; 0xe8
d0080f9c:	f000 80c7 	beq.w	d008112e <main+0xcce>
d0080fa0:	eb0b 0203 	add.w	r2, fp, r3
d0080fa4:	f01e 0f40 	tst.w	lr, #64	; 0x40
d0080fa8:	f882 50e9 	strb.w	r5, [r2, #233]	; 0xe9
d0080fac:	d049      	beq.n	d0081042 <main+0xbe2>
d0080fae:	eb0b 0203 	add.w	r2, fp, r3
d0080fb2:	f01e 0f80 	tst.w	lr, #128	; 0x80
d0080fb6:	f882 50ea 	strb.w	r5, [r2, #234]	; 0xea
d0080fba:	d14c      	bne.n	d0081056 <main+0xbf6>
d0080fbc:	3101      	adds	r1, #1
d0080fbe:	4564      	cmp	r4, ip
d0080fc0:	b289      	uxth	r1, r1
d0080fc2:	d04f      	beq.n	d0081064 <main+0xc04>
d0080fc4:	f81c ef01 	ldrb.w	lr, [ip, #1]!
d0080fc8:	f01e 0f01 	tst.w	lr, #1
d0080fcc:	d1bc      	bne.n	d0080f48 <main+0xae8>
d0080fce:	f01e 0f02 	tst.w	lr, #2
d0080fd2:	f000 808c 	beq.w	d00810ee <main+0xc8e>
d0080fd6:	b20b      	sxth	r3, r1
d0080fd8:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0080fdc:	f280 8087 	bge.w	d00810ee <main+0xc8e>
d0080fe0:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d0080fe4:	011b      	lsls	r3, r3, #4
d0080fe6:	eb0b 0203 	add.w	r2, fp, r3
d0080fea:	f01e 0f04 	tst.w	lr, #4
d0080fee:	f882 50e5 	strb.w	r5, [r2, #229]	; 0xe5
d0080ff2:	d1be      	bne.n	d0080f72 <main+0xb12>
d0080ff4:	f01e 0f08 	tst.w	lr, #8
d0080ff8:	f000 8086 	beq.w	d0081108 <main+0xca8>
d0080ffc:	b20b      	sxth	r3, r1
d0080ffe:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0081002:	da0a      	bge.n	d008101a <main+0xbba>
d0081004:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d0081008:	f01e 0f10 	tst.w	lr, #16
d008100c:	ea4f 1303 	mov.w	r3, r3, lsl #4
d0081010:	eb0b 0203 	add.w	r2, fp, r3
d0081014:	f882 50e7 	strb.w	r5, [r2, #231]	; 0xe7
d0081018:	d1ba      	bne.n	d0080f90 <main+0xb30>
d008101a:	f01e 0f20 	tst.w	lr, #32
d008101e:	f000 8086 	beq.w	d008112e <main+0xcce>
d0081022:	b20b      	sxth	r3, r1
d0081024:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0081028:	f280 8096 	bge.w	d0081158 <main+0xcf8>
d008102c:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d0081030:	f01e 0f40 	tst.w	lr, #64	; 0x40
d0081034:	ea4f 1303 	mov.w	r3, r3, lsl #4
d0081038:	eb0b 0203 	add.w	r2, fp, r3
d008103c:	f882 50e9 	strb.w	r5, [r2, #233]	; 0xe9
d0081040:	d1b5      	bne.n	d0080fae <main+0xb4e>
d0081042:	f01e 0f80 	tst.w	lr, #128	; 0x80
d0081046:	d0b9      	beq.n	d0080fbc <main+0xb5c>
d0081048:	b20b      	sxth	r3, r1
d008104a:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d008104e:	dab5      	bge.n	d0080fbc <main+0xb5c>
d0081050:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d0081054:	011b      	lsls	r3, r3, #4
d0081056:	445b      	add	r3, fp
d0081058:	3101      	adds	r1, #1
d008105a:	4564      	cmp	r4, ip
d008105c:	b289      	uxth	r1, r1
d008105e:	f883 50eb 	strb.w	r5, [r3, #235]	; 0xeb
d0081062:	d1af      	bne.n	d0080fc4 <main+0xb64>
d0081064:	3608      	adds	r6, #8
d0081066:	f810 3f01 	ldrb.w	r3, [r0, #1]!
d008106a:	b2b6      	uxth	r6, r6
d008106c:	f5b6 7fa0 	cmp.w	r6, #320	; 0x140
d0081070:	d002      	beq.n	d0081078 <main+0xc18>
d0081072:	2b00      	cmp	r3, #0
d0081074:	f47f af3c 	bne.w	d0080ef0 <main+0xa90>
d0081078:	9b09      	ldr	r3, [sp, #36]	; 0x24
d008107a:	4c9c      	ldr	r4, [pc, #624]	; (d00812ec <main+0xe8c>)
d008107c:	3301      	adds	r3, #1
d008107e:	7f21      	ldrb	r1, [r4, #28]
d0081080:	4625      	mov	r5, r4
d0081082:	9309      	str	r3, [sp, #36]	; 0x24
d0081084:	7f63      	ldrb	r3, [r4, #29]
d0081086:	7fa2      	ldrb	r2, [r4, #30]
d0081088:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d008108c:	7fe3      	ldrb	r3, [r4, #31]
d008108e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0081092:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0081096:	699b      	ldr	r3, [r3, #24]
d0081098:	4798      	blx	r3
d008109a:	7f20      	ldrb	r0, [r4, #28]
d008109c:	7f63      	ldrb	r3, [r4, #29]
d008109e:	ee18 1a10 	vmov	r1, s16
d00810a2:	7fa2      	ldrb	r2, [r4, #30]
d00810a4:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
d00810a8:	7feb      	ldrb	r3, [r5, #31]
d00810aa:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d00810ae:	4890      	ldr	r0, [pc, #576]	; (d00812f0 <main+0xe90>)
d00810b0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00810b4:	69db      	ldr	r3, [r3, #28]
d00810b6:	4798      	blx	r3
d00810b8:	7d29      	ldrb	r1, [r5, #20]
d00810ba:	7d6b      	ldrb	r3, [r5, #21]
d00810bc:	7daa      	ldrb	r2, [r5, #22]
d00810be:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00810c2:	7deb      	ldrb	r3, [r5, #23]
d00810c4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00810c8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00810cc:	685b      	ldr	r3, [r3, #4]
d00810ce:	685b      	ldr	r3, [r3, #4]
d00810d0:	4798      	blx	r3
d00810d2:	7a29      	ldrb	r1, [r5, #8]
d00810d4:	7a6b      	ldrb	r3, [r5, #9]
d00810d6:	7aaa      	ldrb	r2, [r5, #10]
d00810d8:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00810dc:	7aeb      	ldrb	r3, [r5, #11]
d00810de:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00810e2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00810e6:	689b      	ldr	r3, [r3, #8]
d00810e8:	4798      	blx	r3
d00810ea:	f7ff bb69 	b.w	d00807c0 <main+0x360>
d00810ee:	f01e 0f04 	tst.w	lr, #4
d00810f2:	f43f af7f 	beq.w	d0080ff4 <main+0xb94>
d00810f6:	b20a      	sxth	r2, r1
d00810f8:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d00810fc:	f6ff af36 	blt.w	d0080f6c <main+0xb0c>
d0081100:	f01e 0f08 	tst.w	lr, #8
d0081104:	f47f af7a 	bne.w	d0080ffc <main+0xb9c>
d0081108:	f01e 0f10 	tst.w	lr, #16
d008110c:	d085      	beq.n	d008101a <main+0xbba>
d008110e:	b20b      	sxth	r3, r1
d0081110:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0081114:	da81      	bge.n	d008101a <main+0xbba>
d0081116:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d008111a:	f01e 0f20 	tst.w	lr, #32
d008111e:	ea4f 1303 	mov.w	r3, r3, lsl #4
d0081122:	eb0b 0203 	add.w	r2, fp, r3
d0081126:	f882 50e8 	strb.w	r5, [r2, #232]	; 0xe8
d008112a:	f47f af39 	bne.w	d0080fa0 <main+0xb40>
d008112e:	f01e 0f40 	tst.w	lr, #64	; 0x40
d0081132:	d086      	beq.n	d0081042 <main+0xbe2>
d0081134:	b20b      	sxth	r3, r1
d0081136:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d008113a:	f6bf af3f 	bge.w	d0080fbc <main+0xb5c>
d008113e:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d0081142:	011b      	lsls	r3, r3, #4
d0081144:	e733      	b.n	d0080fae <main+0xb4e>
d0081146:	1be4      	subs	r4, r4, r7
d0081148:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d008114c:	e4eb      	b.n	d0080b26 <main+0x6c6>
d008114e:	ebae 0202 	sub.w	r2, lr, r2
d0081152:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d0081156:	e4dc      	b.n	d0080b12 <main+0x6b2>
d0081158:	f01e 0f40 	tst.w	lr, #64	; 0x40
d008115c:	f47f af2e 	bne.w	d0080fbc <main+0xb5c>
d0081160:	f01e 0f80 	tst.w	lr, #128	; 0x80
d0081164:	f43f af2a 	beq.w	d0080fbc <main+0xb5c>
d0081168:	e76e      	b.n	d0081048 <main+0xbe8>
d008116a:	3b20      	subs	r3, #32
d008116c:	b2da      	uxtb	r2, r3
d008116e:	2a3a      	cmp	r2, #58	; 0x3a
d0081170:	bf94      	ite	ls
d0081172:	00dc      	lslls	r4, r3, #3
d0081174:	24f8      	movhi	r4, #248	; 0xf8
d0081176:	e6c5      	b.n	d0080f04 <main+0xaa4>
d0081178:	7f23      	ldrb	r3, [r4, #28]
d008117a:	4626      	mov	r6, r4
d008117c:	7f62      	ldrb	r2, [r4, #29]
d008117e:	2502      	movs	r5, #2
d0081180:	7fa1      	ldrb	r1, [r4, #30]
d0081182:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0081186:	7fe2      	ldrb	r2, [r4, #31]
d0081188:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008118c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0081190:	689b      	ldr	r3, [r3, #8]
d0081192:	4798      	blx	r3
d0081194:	7b23      	ldrb	r3, [r4, #12]
d0081196:	7b62      	ldrb	r2, [r4, #13]
d0081198:	7ba1      	ldrb	r1, [r4, #14]
d008119a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008119e:	7be2      	ldrb	r2, [r4, #15]
d00811a0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00811a4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00811a8:	681b      	ldr	r3, [r3, #0]
d00811aa:	68db      	ldr	r3, [r3, #12]
d00811ac:	4798      	blx	r3
d00811ae:	7b24      	ldrb	r4, [r4, #12]
d00811b0:	7b72      	ldrb	r2, [r6, #13]
d00811b2:	f44f 73a0 	mov.w	r3, #320	; 0x140
d00811b6:	7bb1      	ldrb	r1, [r6, #14]
d00811b8:	ea44 2402 	orr.w	r4, r4, r2, lsl #8
d00811bc:	7bf0      	ldrb	r0, [r6, #15]
d00811be:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00811c2:	ea44 4401 	orr.w	r4, r4, r1, lsl #16
d00811c6:	4619      	mov	r1, r3
d00811c8:	ea44 6400 	orr.w	r4, r4, r0, lsl #24
d00811cc:	4610      	mov	r0, r2
d00811ce:	6824      	ldr	r4, [r4, #0]
d00811d0:	9500      	str	r5, [sp, #0]
d00811d2:	6964      	ldr	r4, [r4, #20]
d00811d4:	47a0      	blx	r4
d00811d6:	7b32      	ldrb	r2, [r6, #12]
d00811d8:	7b73      	ldrb	r3, [r6, #13]
d00811da:	7bb0      	ldrb	r0, [r6, #14]
d00811dc:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d00811e0:	7bf4      	ldrb	r4, [r6, #15]
d00811e2:	7b33      	ldrb	r3, [r6, #12]
d00811e4:	7b71      	ldrb	r1, [r6, #13]
d00811e6:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
d00811ea:	7bb0      	ldrb	r0, [r6, #14]
d00811ec:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d00811f0:	7bf1      	ldrb	r1, [r6, #15]
d00811f2:	ea42 6204 	orr.w	r2, r2, r4, lsl #24
d00811f6:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00811fa:	6812      	ldr	r2, [r2, #0]
d00811fc:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0081200:	69d4      	ldr	r4, [r2, #28]
d0081202:	681b      	ldr	r3, [r3, #0]
d0081204:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
d0081206:	4798      	blx	r3
d0081208:	47a0      	blx	r4
d008120a:	7b32      	ldrb	r2, [r6, #12]
d008120c:	7b73      	ldrb	r3, [r6, #13]
d008120e:	7bb0      	ldrb	r0, [r6, #14]
d0081210:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d0081214:	7bf4      	ldrb	r4, [r6, #15]
d0081216:	7b33      	ldrb	r3, [r6, #12]
d0081218:	7b71      	ldrb	r1, [r6, #13]
d008121a:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
d008121e:	7bb0      	ldrb	r0, [r6, #14]
d0081220:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0081224:	7bf1      	ldrb	r1, [r6, #15]
d0081226:	ea42 6204 	orr.w	r2, r2, r4, lsl #24
d008122a:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d008122e:	6812      	ldr	r2, [r2, #0]
d0081230:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0081234:	6a14      	ldr	r4, [r2, #32]
d0081236:	681b      	ldr	r3, [r3, #0]
d0081238:	6c5b      	ldr	r3, [r3, #68]	; 0x44
d008123a:	4798      	blx	r3
d008123c:	47a0      	blx	r4
d008123e:	7b32      	ldrb	r2, [r6, #12]
d0081240:	7b73      	ldrb	r3, [r6, #13]
d0081242:	7bb0      	ldrb	r0, [r6, #14]
d0081244:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d0081248:	7bf4      	ldrb	r4, [r6, #15]
d008124a:	7b33      	ldrb	r3, [r6, #12]
d008124c:	7b71      	ldrb	r1, [r6, #13]
d008124e:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
d0081252:	7bb0      	ldrb	r0, [r6, #14]
d0081254:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0081258:	7bf1      	ldrb	r1, [r6, #15]
d008125a:	ea42 6204 	orr.w	r2, r2, r4, lsl #24
d008125e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0081262:	6812      	ldr	r2, [r2, #0]
d0081264:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0081268:	6994      	ldr	r4, [r2, #24]
d008126a:	681b      	ldr	r3, [r3, #0]
d008126c:	6c5b      	ldr	r3, [r3, #68]	; 0x44
d008126e:	4798      	blx	r3
d0081270:	47a0      	blx	r4
d0081272:	7b33      	ldrb	r3, [r6, #12]
d0081274:	7b72      	ldrb	r2, [r6, #13]
d0081276:	7bb1      	ldrb	r1, [r6, #14]
d0081278:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008127c:	7bf2      	ldrb	r2, [r6, #15]
d008127e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081282:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0081286:	681b      	ldr	r3, [r3, #0]
d0081288:	681b      	ldr	r3, [r3, #0]
d008128a:	4798      	blx	r3
d008128c:	7b33      	ldrb	r3, [r6, #12]
d008128e:	7b72      	ldrb	r2, [r6, #13]
d0081290:	7bb1      	ldrb	r1, [r6, #14]
d0081292:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0081296:	7bf2      	ldrb	r2, [r6, #15]
d0081298:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008129c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00812a0:	681b      	ldr	r3, [r3, #0]
d00812a2:	68db      	ldr	r3, [r3, #12]
d00812a4:	4798      	blx	r3
d00812a6:	7833      	ldrb	r3, [r6, #0]
d00812a8:	7872      	ldrb	r2, [r6, #1]
d00812aa:	78b1      	ldrb	r1, [r6, #2]
d00812ac:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00812b0:	78f2      	ldrb	r2, [r6, #3]
d00812b2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00812b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00812ba:	685b      	ldr	r3, [r3, #4]
d00812bc:	4798      	blx	r3
d00812be:	2000      	movs	r0, #0
d00812c0:	b00f      	add	sp, #60	; 0x3c
d00812c2:	ecbd 8b02 	vpop	{d8}
d00812c6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00812ca:	4808      	ldr	r0, [pc, #32]	; (d00812ec <main+0xe8c>)
d00812cc:	7803      	ldrb	r3, [r0, #0]
d00812ce:	7842      	ldrb	r2, [r0, #1]
d00812d0:	7881      	ldrb	r1, [r0, #2]
d00812d2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00812d6:	78c2      	ldrb	r2, [r0, #3]
d00812d8:	4806      	ldr	r0, [pc, #24]	; (d00812f4 <main+0xe94>)
d00812da:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00812de:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00812e2:	68db      	ldr	r3, [r3, #12]
d00812e4:	4798      	blx	r3
d00812e6:	2001      	movs	r0, #1
d00812e8:	e7ea      	b.n	d00812c0 <main+0xe60>
d00812ea:	bf00      	nop
d00812ec:	2001f000 	.word	0x2001f000
d00812f0:	d0082640 	.word	0xd0082640
d00812f4:	d00822c4 	.word	0xd00822c4

d00812f8 <__errno>:
d00812f8:	4b01      	ldr	r3, [pc, #4]	; (d0081300 <__errno+0x8>)
d00812fa:	6818      	ldr	r0, [r3, #0]
d00812fc:	4770      	bx	lr
d00812fe:	bf00      	nop
d0081300:	d00825b4 	.word	0xd00825b4

d0081304 <malloc>:
d0081304:	4b02      	ldr	r3, [pc, #8]	; (d0081310 <malloc+0xc>)
d0081306:	4601      	mov	r1, r0
d0081308:	6818      	ldr	r0, [r3, #0]
d008130a:	f000 b85b 	b.w	d00813c4 <_malloc_r>
d008130e:	bf00      	nop
d0081310:	d00825b4 	.word	0xd00825b4

d0081314 <memset>:
d0081314:	4402      	add	r2, r0
d0081316:	4603      	mov	r3, r0
d0081318:	4293      	cmp	r3, r2
d008131a:	d100      	bne.n	d008131e <memset+0xa>
d008131c:	4770      	bx	lr
d008131e:	f803 1b01 	strb.w	r1, [r3], #1
d0081322:	e7f9      	b.n	d0081318 <memset+0x4>

d0081324 <_free_r>:
d0081324:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0081326:	2900      	cmp	r1, #0
d0081328:	d048      	beq.n	d00813bc <_free_r+0x98>
d008132a:	f851 3c04 	ldr.w	r3, [r1, #-4]
d008132e:	9001      	str	r0, [sp, #4]
d0081330:	2b00      	cmp	r3, #0
d0081332:	f1a1 0404 	sub.w	r4, r1, #4
d0081336:	bfb8      	it	lt
d0081338:	18e4      	addlt	r4, r4, r3
d008133a:	f000 fb85 	bl	d0081a48 <__malloc_lock>
d008133e:	4a20      	ldr	r2, [pc, #128]	; (d00813c0 <_free_r+0x9c>)
d0081340:	9801      	ldr	r0, [sp, #4]
d0081342:	6813      	ldr	r3, [r2, #0]
d0081344:	4615      	mov	r5, r2
d0081346:	b933      	cbnz	r3, d0081356 <_free_r+0x32>
d0081348:	6063      	str	r3, [r4, #4]
d008134a:	6014      	str	r4, [r2, #0]
d008134c:	b003      	add	sp, #12
d008134e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0081352:	f000 bb7f 	b.w	d0081a54 <__malloc_unlock>
d0081356:	42a3      	cmp	r3, r4
d0081358:	d90b      	bls.n	d0081372 <_free_r+0x4e>
d008135a:	6821      	ldr	r1, [r4, #0]
d008135c:	1862      	adds	r2, r4, r1
d008135e:	4293      	cmp	r3, r2
d0081360:	bf04      	itt	eq
d0081362:	681a      	ldreq	r2, [r3, #0]
d0081364:	685b      	ldreq	r3, [r3, #4]
d0081366:	6063      	str	r3, [r4, #4]
d0081368:	bf04      	itt	eq
d008136a:	1852      	addeq	r2, r2, r1
d008136c:	6022      	streq	r2, [r4, #0]
d008136e:	602c      	str	r4, [r5, #0]
d0081370:	e7ec      	b.n	d008134c <_free_r+0x28>
d0081372:	461a      	mov	r2, r3
d0081374:	685b      	ldr	r3, [r3, #4]
d0081376:	b10b      	cbz	r3, d008137c <_free_r+0x58>
d0081378:	42a3      	cmp	r3, r4
d008137a:	d9fa      	bls.n	d0081372 <_free_r+0x4e>
d008137c:	6811      	ldr	r1, [r2, #0]
d008137e:	1855      	adds	r5, r2, r1
d0081380:	42a5      	cmp	r5, r4
d0081382:	d10b      	bne.n	d008139c <_free_r+0x78>
d0081384:	6824      	ldr	r4, [r4, #0]
d0081386:	4421      	add	r1, r4
d0081388:	1854      	adds	r4, r2, r1
d008138a:	42a3      	cmp	r3, r4
d008138c:	6011      	str	r1, [r2, #0]
d008138e:	d1dd      	bne.n	d008134c <_free_r+0x28>
d0081390:	681c      	ldr	r4, [r3, #0]
d0081392:	685b      	ldr	r3, [r3, #4]
d0081394:	6053      	str	r3, [r2, #4]
d0081396:	4421      	add	r1, r4
d0081398:	6011      	str	r1, [r2, #0]
d008139a:	e7d7      	b.n	d008134c <_free_r+0x28>
d008139c:	d902      	bls.n	d00813a4 <_free_r+0x80>
d008139e:	230c      	movs	r3, #12
d00813a0:	6003      	str	r3, [r0, #0]
d00813a2:	e7d3      	b.n	d008134c <_free_r+0x28>
d00813a4:	6825      	ldr	r5, [r4, #0]
d00813a6:	1961      	adds	r1, r4, r5
d00813a8:	428b      	cmp	r3, r1
d00813aa:	bf04      	itt	eq
d00813ac:	6819      	ldreq	r1, [r3, #0]
d00813ae:	685b      	ldreq	r3, [r3, #4]
d00813b0:	6063      	str	r3, [r4, #4]
d00813b2:	bf04      	itt	eq
d00813b4:	1949      	addeq	r1, r1, r5
d00813b6:	6021      	streq	r1, [r4, #0]
d00813b8:	6054      	str	r4, [r2, #4]
d00813ba:	e7c7      	b.n	d008134c <_free_r+0x28>
d00813bc:	b003      	add	sp, #12
d00813be:	bd30      	pop	{r4, r5, pc}
d00813c0:	d0095438 	.word	0xd0095438

d00813c4 <_malloc_r>:
d00813c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00813c6:	1ccd      	adds	r5, r1, #3
d00813c8:	f025 0503 	bic.w	r5, r5, #3
d00813cc:	3508      	adds	r5, #8
d00813ce:	2d0c      	cmp	r5, #12
d00813d0:	bf38      	it	cc
d00813d2:	250c      	movcc	r5, #12
d00813d4:	2d00      	cmp	r5, #0
d00813d6:	4606      	mov	r6, r0
d00813d8:	db01      	blt.n	d00813de <_malloc_r+0x1a>
d00813da:	42a9      	cmp	r1, r5
d00813dc:	d903      	bls.n	d00813e6 <_malloc_r+0x22>
d00813de:	230c      	movs	r3, #12
d00813e0:	6033      	str	r3, [r6, #0]
d00813e2:	2000      	movs	r0, #0
d00813e4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00813e6:	f000 fb2f 	bl	d0081a48 <__malloc_lock>
d00813ea:	4921      	ldr	r1, [pc, #132]	; (d0081470 <_malloc_r+0xac>)
d00813ec:	680a      	ldr	r2, [r1, #0]
d00813ee:	4614      	mov	r4, r2
d00813f0:	b99c      	cbnz	r4, d008141a <_malloc_r+0x56>
d00813f2:	4f20      	ldr	r7, [pc, #128]	; (d0081474 <_malloc_r+0xb0>)
d00813f4:	683b      	ldr	r3, [r7, #0]
d00813f6:	b923      	cbnz	r3, d0081402 <_malloc_r+0x3e>
d00813f8:	4621      	mov	r1, r4
d00813fa:	4630      	mov	r0, r6
d00813fc:	f7fe fe7e 	bl	d00800fc <_sbrk_r>
d0081400:	6038      	str	r0, [r7, #0]
d0081402:	4629      	mov	r1, r5
d0081404:	4630      	mov	r0, r6
d0081406:	f7fe fe79 	bl	d00800fc <_sbrk_r>
d008140a:	1c43      	adds	r3, r0, #1
d008140c:	d123      	bne.n	d0081456 <_malloc_r+0x92>
d008140e:	230c      	movs	r3, #12
d0081410:	6033      	str	r3, [r6, #0]
d0081412:	4630      	mov	r0, r6
d0081414:	f000 fb1e 	bl	d0081a54 <__malloc_unlock>
d0081418:	e7e3      	b.n	d00813e2 <_malloc_r+0x1e>
d008141a:	6823      	ldr	r3, [r4, #0]
d008141c:	1b5b      	subs	r3, r3, r5
d008141e:	d417      	bmi.n	d0081450 <_malloc_r+0x8c>
d0081420:	2b0b      	cmp	r3, #11
d0081422:	d903      	bls.n	d008142c <_malloc_r+0x68>
d0081424:	6023      	str	r3, [r4, #0]
d0081426:	441c      	add	r4, r3
d0081428:	6025      	str	r5, [r4, #0]
d008142a:	e004      	b.n	d0081436 <_malloc_r+0x72>
d008142c:	6863      	ldr	r3, [r4, #4]
d008142e:	42a2      	cmp	r2, r4
d0081430:	bf0c      	ite	eq
d0081432:	600b      	streq	r3, [r1, #0]
d0081434:	6053      	strne	r3, [r2, #4]
d0081436:	4630      	mov	r0, r6
d0081438:	f000 fb0c 	bl	d0081a54 <__malloc_unlock>
d008143c:	f104 000b 	add.w	r0, r4, #11
d0081440:	1d23      	adds	r3, r4, #4
d0081442:	f020 0007 	bic.w	r0, r0, #7
d0081446:	1ac2      	subs	r2, r0, r3
d0081448:	d0cc      	beq.n	d00813e4 <_malloc_r+0x20>
d008144a:	1a1b      	subs	r3, r3, r0
d008144c:	50a3      	str	r3, [r4, r2]
d008144e:	e7c9      	b.n	d00813e4 <_malloc_r+0x20>
d0081450:	4622      	mov	r2, r4
d0081452:	6864      	ldr	r4, [r4, #4]
d0081454:	e7cc      	b.n	d00813f0 <_malloc_r+0x2c>
d0081456:	1cc4      	adds	r4, r0, #3
d0081458:	f024 0403 	bic.w	r4, r4, #3
d008145c:	42a0      	cmp	r0, r4
d008145e:	d0e3      	beq.n	d0081428 <_malloc_r+0x64>
d0081460:	1a21      	subs	r1, r4, r0
d0081462:	4630      	mov	r0, r6
d0081464:	f7fe fe4a 	bl	d00800fc <_sbrk_r>
d0081468:	3001      	adds	r0, #1
d008146a:	d1dd      	bne.n	d0081428 <_malloc_r+0x64>
d008146c:	e7cf      	b.n	d008140e <_malloc_r+0x4a>
d008146e:	bf00      	nop
d0081470:	d0095438 	.word	0xd0095438
d0081474:	d009543c 	.word	0xd009543c

d0081478 <setbuf>:
d0081478:	2900      	cmp	r1, #0
d008147a:	f44f 6380 	mov.w	r3, #1024	; 0x400
d008147e:	bf0c      	ite	eq
d0081480:	2202      	moveq	r2, #2
d0081482:	2200      	movne	r2, #0
d0081484:	f000 b800 	b.w	d0081488 <setvbuf>

d0081488 <setvbuf>:
d0081488:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d008148c:	461d      	mov	r5, r3
d008148e:	4b5d      	ldr	r3, [pc, #372]	; (d0081604 <setvbuf+0x17c>)
d0081490:	681f      	ldr	r7, [r3, #0]
d0081492:	4604      	mov	r4, r0
d0081494:	460e      	mov	r6, r1
d0081496:	4690      	mov	r8, r2
d0081498:	b127      	cbz	r7, d00814a4 <setvbuf+0x1c>
d008149a:	69bb      	ldr	r3, [r7, #24]
d008149c:	b913      	cbnz	r3, d00814a4 <setvbuf+0x1c>
d008149e:	4638      	mov	r0, r7
d00814a0:	f000 fa0e 	bl	d00818c0 <__sinit>
d00814a4:	4b58      	ldr	r3, [pc, #352]	; (d0081608 <setvbuf+0x180>)
d00814a6:	429c      	cmp	r4, r3
d00814a8:	d167      	bne.n	d008157a <setvbuf+0xf2>
d00814aa:	687c      	ldr	r4, [r7, #4]
d00814ac:	f1b8 0f02 	cmp.w	r8, #2
d00814b0:	d006      	beq.n	d00814c0 <setvbuf+0x38>
d00814b2:	f1b8 0f01 	cmp.w	r8, #1
d00814b6:	f200 809f 	bhi.w	d00815f8 <setvbuf+0x170>
d00814ba:	2d00      	cmp	r5, #0
d00814bc:	f2c0 809c 	blt.w	d00815f8 <setvbuf+0x170>
d00814c0:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00814c2:	07db      	lsls	r3, r3, #31
d00814c4:	d405      	bmi.n	d00814d2 <setvbuf+0x4a>
d00814c6:	89a3      	ldrh	r3, [r4, #12]
d00814c8:	0598      	lsls	r0, r3, #22
d00814ca:	d402      	bmi.n	d00814d2 <setvbuf+0x4a>
d00814cc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00814ce:	f000 fa95 	bl	d00819fc <__retarget_lock_acquire_recursive>
d00814d2:	4621      	mov	r1, r4
d00814d4:	4638      	mov	r0, r7
d00814d6:	f000 f95f 	bl	d0081798 <_fflush_r>
d00814da:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00814dc:	b141      	cbz	r1, d00814f0 <setvbuf+0x68>
d00814de:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00814e2:	4299      	cmp	r1, r3
d00814e4:	d002      	beq.n	d00814ec <setvbuf+0x64>
d00814e6:	4638      	mov	r0, r7
d00814e8:	f7ff ff1c 	bl	d0081324 <_free_r>
d00814ec:	2300      	movs	r3, #0
d00814ee:	6363      	str	r3, [r4, #52]	; 0x34
d00814f0:	2300      	movs	r3, #0
d00814f2:	61a3      	str	r3, [r4, #24]
d00814f4:	6063      	str	r3, [r4, #4]
d00814f6:	89a3      	ldrh	r3, [r4, #12]
d00814f8:	0619      	lsls	r1, r3, #24
d00814fa:	d503      	bpl.n	d0081504 <setvbuf+0x7c>
d00814fc:	6921      	ldr	r1, [r4, #16]
d00814fe:	4638      	mov	r0, r7
d0081500:	f7ff ff10 	bl	d0081324 <_free_r>
d0081504:	89a3      	ldrh	r3, [r4, #12]
d0081506:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d008150a:	f023 0303 	bic.w	r3, r3, #3
d008150e:	f1b8 0f02 	cmp.w	r8, #2
d0081512:	81a3      	strh	r3, [r4, #12]
d0081514:	d06c      	beq.n	d00815f0 <setvbuf+0x168>
d0081516:	ab01      	add	r3, sp, #4
d0081518:	466a      	mov	r2, sp
d008151a:	4621      	mov	r1, r4
d008151c:	4638      	mov	r0, r7
d008151e:	f000 fa6f 	bl	d0081a00 <__swhatbuf_r>
d0081522:	89a3      	ldrh	r3, [r4, #12]
d0081524:	4318      	orrs	r0, r3
d0081526:	81a0      	strh	r0, [r4, #12]
d0081528:	2d00      	cmp	r5, #0
d008152a:	d130      	bne.n	d008158e <setvbuf+0x106>
d008152c:	9d00      	ldr	r5, [sp, #0]
d008152e:	4628      	mov	r0, r5
d0081530:	f7ff fee8 	bl	d0081304 <malloc>
d0081534:	4606      	mov	r6, r0
d0081536:	2800      	cmp	r0, #0
d0081538:	d155      	bne.n	d00815e6 <setvbuf+0x15e>
d008153a:	f8dd 9000 	ldr.w	r9, [sp]
d008153e:	45a9      	cmp	r9, r5
d0081540:	d14a      	bne.n	d00815d8 <setvbuf+0x150>
d0081542:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0081546:	2200      	movs	r2, #0
d0081548:	60a2      	str	r2, [r4, #8]
d008154a:	f104 0247 	add.w	r2, r4, #71	; 0x47
d008154e:	6022      	str	r2, [r4, #0]
d0081550:	6122      	str	r2, [r4, #16]
d0081552:	2201      	movs	r2, #1
d0081554:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0081558:	6162      	str	r2, [r4, #20]
d008155a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d008155c:	f043 0302 	orr.w	r3, r3, #2
d0081560:	07d2      	lsls	r2, r2, #31
d0081562:	81a3      	strh	r3, [r4, #12]
d0081564:	d405      	bmi.n	d0081572 <setvbuf+0xea>
d0081566:	f413 7f00 	tst.w	r3, #512	; 0x200
d008156a:	d102      	bne.n	d0081572 <setvbuf+0xea>
d008156c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008156e:	f000 fa46 	bl	d00819fe <__retarget_lock_release_recursive>
d0081572:	4628      	mov	r0, r5
d0081574:	b003      	add	sp, #12
d0081576:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d008157a:	4b24      	ldr	r3, [pc, #144]	; (d008160c <setvbuf+0x184>)
d008157c:	429c      	cmp	r4, r3
d008157e:	d101      	bne.n	d0081584 <setvbuf+0xfc>
d0081580:	68bc      	ldr	r4, [r7, #8]
d0081582:	e793      	b.n	d00814ac <setvbuf+0x24>
d0081584:	4b22      	ldr	r3, [pc, #136]	; (d0081610 <setvbuf+0x188>)
d0081586:	429c      	cmp	r4, r3
d0081588:	bf08      	it	eq
d008158a:	68fc      	ldreq	r4, [r7, #12]
d008158c:	e78e      	b.n	d00814ac <setvbuf+0x24>
d008158e:	2e00      	cmp	r6, #0
d0081590:	d0cd      	beq.n	d008152e <setvbuf+0xa6>
d0081592:	69bb      	ldr	r3, [r7, #24]
d0081594:	b913      	cbnz	r3, d008159c <setvbuf+0x114>
d0081596:	4638      	mov	r0, r7
d0081598:	f000 f992 	bl	d00818c0 <__sinit>
d008159c:	f1b8 0f01 	cmp.w	r8, #1
d00815a0:	bf08      	it	eq
d00815a2:	89a3      	ldrheq	r3, [r4, #12]
d00815a4:	6026      	str	r6, [r4, #0]
d00815a6:	bf04      	itt	eq
d00815a8:	f043 0301 	orreq.w	r3, r3, #1
d00815ac:	81a3      	strheq	r3, [r4, #12]
d00815ae:	89a2      	ldrh	r2, [r4, #12]
d00815b0:	f012 0308 	ands.w	r3, r2, #8
d00815b4:	e9c4 6504 	strd	r6, r5, [r4, #16]
d00815b8:	d01c      	beq.n	d00815f4 <setvbuf+0x16c>
d00815ba:	07d3      	lsls	r3, r2, #31
d00815bc:	bf41      	itttt	mi
d00815be:	2300      	movmi	r3, #0
d00815c0:	426d      	negmi	r5, r5
d00815c2:	60a3      	strmi	r3, [r4, #8]
d00815c4:	61a5      	strmi	r5, [r4, #24]
d00815c6:	bf58      	it	pl
d00815c8:	60a5      	strpl	r5, [r4, #8]
d00815ca:	6e65      	ldr	r5, [r4, #100]	; 0x64
d00815cc:	f015 0501 	ands.w	r5, r5, #1
d00815d0:	d115      	bne.n	d00815fe <setvbuf+0x176>
d00815d2:	f412 7f00 	tst.w	r2, #512	; 0x200
d00815d6:	e7c8      	b.n	d008156a <setvbuf+0xe2>
d00815d8:	4648      	mov	r0, r9
d00815da:	f7ff fe93 	bl	d0081304 <malloc>
d00815de:	4606      	mov	r6, r0
d00815e0:	2800      	cmp	r0, #0
d00815e2:	d0ae      	beq.n	d0081542 <setvbuf+0xba>
d00815e4:	464d      	mov	r5, r9
d00815e6:	89a3      	ldrh	r3, [r4, #12]
d00815e8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00815ec:	81a3      	strh	r3, [r4, #12]
d00815ee:	e7d0      	b.n	d0081592 <setvbuf+0x10a>
d00815f0:	2500      	movs	r5, #0
d00815f2:	e7a8      	b.n	d0081546 <setvbuf+0xbe>
d00815f4:	60a3      	str	r3, [r4, #8]
d00815f6:	e7e8      	b.n	d00815ca <setvbuf+0x142>
d00815f8:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00815fc:	e7b9      	b.n	d0081572 <setvbuf+0xea>
d00815fe:	2500      	movs	r5, #0
d0081600:	e7b7      	b.n	d0081572 <setvbuf+0xea>
d0081602:	bf00      	nop
d0081604:	d00825b4 	.word	0xd00825b4
d0081608:	d0082534 	.word	0xd0082534
d008160c:	d0082554 	.word	0xd0082554
d0081610:	d0082514 	.word	0xd0082514

d0081614 <sniprintf>:
d0081614:	b40c      	push	{r2, r3}
d0081616:	b530      	push	{r4, r5, lr}
d0081618:	4b17      	ldr	r3, [pc, #92]	; (d0081678 <sniprintf+0x64>)
d008161a:	1e0c      	subs	r4, r1, #0
d008161c:	681d      	ldr	r5, [r3, #0]
d008161e:	b09d      	sub	sp, #116	; 0x74
d0081620:	da08      	bge.n	d0081634 <sniprintf+0x20>
d0081622:	238b      	movs	r3, #139	; 0x8b
d0081624:	602b      	str	r3, [r5, #0]
d0081626:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008162a:	b01d      	add	sp, #116	; 0x74
d008162c:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0081630:	b002      	add	sp, #8
d0081632:	4770      	bx	lr
d0081634:	f44f 7302 	mov.w	r3, #520	; 0x208
d0081638:	f8ad 3014 	strh.w	r3, [sp, #20]
d008163c:	bf14      	ite	ne
d008163e:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d0081642:	4623      	moveq	r3, r4
d0081644:	9304      	str	r3, [sp, #16]
d0081646:	9307      	str	r3, [sp, #28]
d0081648:	f64f 73ff 	movw	r3, #65535	; 0xffff
d008164c:	9002      	str	r0, [sp, #8]
d008164e:	9006      	str	r0, [sp, #24]
d0081650:	f8ad 3016 	strh.w	r3, [sp, #22]
d0081654:	9a20      	ldr	r2, [sp, #128]	; 0x80
d0081656:	ab21      	add	r3, sp, #132	; 0x84
d0081658:	a902      	add	r1, sp, #8
d008165a:	4628      	mov	r0, r5
d008165c:	9301      	str	r3, [sp, #4]
d008165e:	f000 fa5b 	bl	d0081b18 <_svfiprintf_r>
d0081662:	1c43      	adds	r3, r0, #1
d0081664:	bfbc      	itt	lt
d0081666:	238b      	movlt	r3, #139	; 0x8b
d0081668:	602b      	strlt	r3, [r5, #0]
d008166a:	2c00      	cmp	r4, #0
d008166c:	d0dd      	beq.n	d008162a <sniprintf+0x16>
d008166e:	9b02      	ldr	r3, [sp, #8]
d0081670:	2200      	movs	r2, #0
d0081672:	701a      	strb	r2, [r3, #0]
d0081674:	e7d9      	b.n	d008162a <sniprintf+0x16>
d0081676:	bf00      	nop
d0081678:	d00825b4 	.word	0xd00825b4

d008167c <strlen>:
d008167c:	4603      	mov	r3, r0
d008167e:	f813 2b01 	ldrb.w	r2, [r3], #1
d0081682:	2a00      	cmp	r2, #0
d0081684:	d1fb      	bne.n	d008167e <strlen+0x2>
d0081686:	1a18      	subs	r0, r3, r0
d0081688:	3801      	subs	r0, #1
d008168a:	4770      	bx	lr

d008168c <__sflush_r>:
d008168c:	898a      	ldrh	r2, [r1, #12]
d008168e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0081692:	4605      	mov	r5, r0
d0081694:	0710      	lsls	r0, r2, #28
d0081696:	460c      	mov	r4, r1
d0081698:	d458      	bmi.n	d008174c <__sflush_r+0xc0>
d008169a:	684b      	ldr	r3, [r1, #4]
d008169c:	2b00      	cmp	r3, #0
d008169e:	dc05      	bgt.n	d00816ac <__sflush_r+0x20>
d00816a0:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d00816a2:	2b00      	cmp	r3, #0
d00816a4:	dc02      	bgt.n	d00816ac <__sflush_r+0x20>
d00816a6:	2000      	movs	r0, #0
d00816a8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00816ac:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00816ae:	2e00      	cmp	r6, #0
d00816b0:	d0f9      	beq.n	d00816a6 <__sflush_r+0x1a>
d00816b2:	2300      	movs	r3, #0
d00816b4:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d00816b8:	682f      	ldr	r7, [r5, #0]
d00816ba:	602b      	str	r3, [r5, #0]
d00816bc:	d032      	beq.n	d0081724 <__sflush_r+0x98>
d00816be:	6d60      	ldr	r0, [r4, #84]	; 0x54
d00816c0:	89a3      	ldrh	r3, [r4, #12]
d00816c2:	075a      	lsls	r2, r3, #29
d00816c4:	d505      	bpl.n	d00816d2 <__sflush_r+0x46>
d00816c6:	6863      	ldr	r3, [r4, #4]
d00816c8:	1ac0      	subs	r0, r0, r3
d00816ca:	6b63      	ldr	r3, [r4, #52]	; 0x34
d00816cc:	b10b      	cbz	r3, d00816d2 <__sflush_r+0x46>
d00816ce:	6c23      	ldr	r3, [r4, #64]	; 0x40
d00816d0:	1ac0      	subs	r0, r0, r3
d00816d2:	2300      	movs	r3, #0
d00816d4:	4602      	mov	r2, r0
d00816d6:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00816d8:	6a21      	ldr	r1, [r4, #32]
d00816da:	4628      	mov	r0, r5
d00816dc:	47b0      	blx	r6
d00816de:	1c43      	adds	r3, r0, #1
d00816e0:	89a3      	ldrh	r3, [r4, #12]
d00816e2:	d106      	bne.n	d00816f2 <__sflush_r+0x66>
d00816e4:	6829      	ldr	r1, [r5, #0]
d00816e6:	291d      	cmp	r1, #29
d00816e8:	d82c      	bhi.n	d0081744 <__sflush_r+0xb8>
d00816ea:	4a2a      	ldr	r2, [pc, #168]	; (d0081794 <__sflush_r+0x108>)
d00816ec:	40ca      	lsrs	r2, r1
d00816ee:	07d6      	lsls	r6, r2, #31
d00816f0:	d528      	bpl.n	d0081744 <__sflush_r+0xb8>
d00816f2:	2200      	movs	r2, #0
d00816f4:	6062      	str	r2, [r4, #4]
d00816f6:	04d9      	lsls	r1, r3, #19
d00816f8:	6922      	ldr	r2, [r4, #16]
d00816fa:	6022      	str	r2, [r4, #0]
d00816fc:	d504      	bpl.n	d0081708 <__sflush_r+0x7c>
d00816fe:	1c42      	adds	r2, r0, #1
d0081700:	d101      	bne.n	d0081706 <__sflush_r+0x7a>
d0081702:	682b      	ldr	r3, [r5, #0]
d0081704:	b903      	cbnz	r3, d0081708 <__sflush_r+0x7c>
d0081706:	6560      	str	r0, [r4, #84]	; 0x54
d0081708:	6b61      	ldr	r1, [r4, #52]	; 0x34
d008170a:	602f      	str	r7, [r5, #0]
d008170c:	2900      	cmp	r1, #0
d008170e:	d0ca      	beq.n	d00816a6 <__sflush_r+0x1a>
d0081710:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0081714:	4299      	cmp	r1, r3
d0081716:	d002      	beq.n	d008171e <__sflush_r+0x92>
d0081718:	4628      	mov	r0, r5
d008171a:	f7ff fe03 	bl	d0081324 <_free_r>
d008171e:	2000      	movs	r0, #0
d0081720:	6360      	str	r0, [r4, #52]	; 0x34
d0081722:	e7c1      	b.n	d00816a8 <__sflush_r+0x1c>
d0081724:	6a21      	ldr	r1, [r4, #32]
d0081726:	2301      	movs	r3, #1
d0081728:	4628      	mov	r0, r5
d008172a:	47b0      	blx	r6
d008172c:	1c41      	adds	r1, r0, #1
d008172e:	d1c7      	bne.n	d00816c0 <__sflush_r+0x34>
d0081730:	682b      	ldr	r3, [r5, #0]
d0081732:	2b00      	cmp	r3, #0
d0081734:	d0c4      	beq.n	d00816c0 <__sflush_r+0x34>
d0081736:	2b1d      	cmp	r3, #29
d0081738:	d001      	beq.n	d008173e <__sflush_r+0xb2>
d008173a:	2b16      	cmp	r3, #22
d008173c:	d101      	bne.n	d0081742 <__sflush_r+0xb6>
d008173e:	602f      	str	r7, [r5, #0]
d0081740:	e7b1      	b.n	d00816a6 <__sflush_r+0x1a>
d0081742:	89a3      	ldrh	r3, [r4, #12]
d0081744:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0081748:	81a3      	strh	r3, [r4, #12]
d008174a:	e7ad      	b.n	d00816a8 <__sflush_r+0x1c>
d008174c:	690f      	ldr	r7, [r1, #16]
d008174e:	2f00      	cmp	r7, #0
d0081750:	d0a9      	beq.n	d00816a6 <__sflush_r+0x1a>
d0081752:	0793      	lsls	r3, r2, #30
d0081754:	680e      	ldr	r6, [r1, #0]
d0081756:	bf08      	it	eq
d0081758:	694b      	ldreq	r3, [r1, #20]
d008175a:	600f      	str	r7, [r1, #0]
d008175c:	bf18      	it	ne
d008175e:	2300      	movne	r3, #0
d0081760:	eba6 0807 	sub.w	r8, r6, r7
d0081764:	608b      	str	r3, [r1, #8]
d0081766:	f1b8 0f00 	cmp.w	r8, #0
d008176a:	dd9c      	ble.n	d00816a6 <__sflush_r+0x1a>
d008176c:	6a21      	ldr	r1, [r4, #32]
d008176e:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0081770:	4643      	mov	r3, r8
d0081772:	463a      	mov	r2, r7
d0081774:	4628      	mov	r0, r5
d0081776:	47b0      	blx	r6
d0081778:	2800      	cmp	r0, #0
d008177a:	dc06      	bgt.n	d008178a <__sflush_r+0xfe>
d008177c:	89a3      	ldrh	r3, [r4, #12]
d008177e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0081782:	81a3      	strh	r3, [r4, #12]
d0081784:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081788:	e78e      	b.n	d00816a8 <__sflush_r+0x1c>
d008178a:	4407      	add	r7, r0
d008178c:	eba8 0800 	sub.w	r8, r8, r0
d0081790:	e7e9      	b.n	d0081766 <__sflush_r+0xda>
d0081792:	bf00      	nop
d0081794:	20400001 	.word	0x20400001

d0081798 <_fflush_r>:
d0081798:	b538      	push	{r3, r4, r5, lr}
d008179a:	690b      	ldr	r3, [r1, #16]
d008179c:	4605      	mov	r5, r0
d008179e:	460c      	mov	r4, r1
d00817a0:	b913      	cbnz	r3, d00817a8 <_fflush_r+0x10>
d00817a2:	2500      	movs	r5, #0
d00817a4:	4628      	mov	r0, r5
d00817a6:	bd38      	pop	{r3, r4, r5, pc}
d00817a8:	b118      	cbz	r0, d00817b2 <_fflush_r+0x1a>
d00817aa:	6983      	ldr	r3, [r0, #24]
d00817ac:	b90b      	cbnz	r3, d00817b2 <_fflush_r+0x1a>
d00817ae:	f000 f887 	bl	d00818c0 <__sinit>
d00817b2:	4b14      	ldr	r3, [pc, #80]	; (d0081804 <_fflush_r+0x6c>)
d00817b4:	429c      	cmp	r4, r3
d00817b6:	d11b      	bne.n	d00817f0 <_fflush_r+0x58>
d00817b8:	686c      	ldr	r4, [r5, #4]
d00817ba:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00817be:	2b00      	cmp	r3, #0
d00817c0:	d0ef      	beq.n	d00817a2 <_fflush_r+0xa>
d00817c2:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00817c4:	07d0      	lsls	r0, r2, #31
d00817c6:	d404      	bmi.n	d00817d2 <_fflush_r+0x3a>
d00817c8:	0599      	lsls	r1, r3, #22
d00817ca:	d402      	bmi.n	d00817d2 <_fflush_r+0x3a>
d00817cc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00817ce:	f000 f915 	bl	d00819fc <__retarget_lock_acquire_recursive>
d00817d2:	4628      	mov	r0, r5
d00817d4:	4621      	mov	r1, r4
d00817d6:	f7ff ff59 	bl	d008168c <__sflush_r>
d00817da:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00817dc:	07da      	lsls	r2, r3, #31
d00817de:	4605      	mov	r5, r0
d00817e0:	d4e0      	bmi.n	d00817a4 <_fflush_r+0xc>
d00817e2:	89a3      	ldrh	r3, [r4, #12]
d00817e4:	059b      	lsls	r3, r3, #22
d00817e6:	d4dd      	bmi.n	d00817a4 <_fflush_r+0xc>
d00817e8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00817ea:	f000 f908 	bl	d00819fe <__retarget_lock_release_recursive>
d00817ee:	e7d9      	b.n	d00817a4 <_fflush_r+0xc>
d00817f0:	4b05      	ldr	r3, [pc, #20]	; (d0081808 <_fflush_r+0x70>)
d00817f2:	429c      	cmp	r4, r3
d00817f4:	d101      	bne.n	d00817fa <_fflush_r+0x62>
d00817f6:	68ac      	ldr	r4, [r5, #8]
d00817f8:	e7df      	b.n	d00817ba <_fflush_r+0x22>
d00817fa:	4b04      	ldr	r3, [pc, #16]	; (d008180c <_fflush_r+0x74>)
d00817fc:	429c      	cmp	r4, r3
d00817fe:	bf08      	it	eq
d0081800:	68ec      	ldreq	r4, [r5, #12]
d0081802:	e7da      	b.n	d00817ba <_fflush_r+0x22>
d0081804:	d0082534 	.word	0xd0082534
d0081808:	d0082554 	.word	0xd0082554
d008180c:	d0082514 	.word	0xd0082514

d0081810 <std>:
d0081810:	2300      	movs	r3, #0
d0081812:	b510      	push	{r4, lr}
d0081814:	4604      	mov	r4, r0
d0081816:	e9c0 3300 	strd	r3, r3, [r0]
d008181a:	e9c0 3304 	strd	r3, r3, [r0, #16]
d008181e:	6083      	str	r3, [r0, #8]
d0081820:	8181      	strh	r1, [r0, #12]
d0081822:	6643      	str	r3, [r0, #100]	; 0x64
d0081824:	81c2      	strh	r2, [r0, #14]
d0081826:	6183      	str	r3, [r0, #24]
d0081828:	4619      	mov	r1, r3
d008182a:	2208      	movs	r2, #8
d008182c:	305c      	adds	r0, #92	; 0x5c
d008182e:	f7ff fd71 	bl	d0081314 <memset>
d0081832:	4b05      	ldr	r3, [pc, #20]	; (d0081848 <std+0x38>)
d0081834:	6263      	str	r3, [r4, #36]	; 0x24
d0081836:	4b05      	ldr	r3, [pc, #20]	; (d008184c <std+0x3c>)
d0081838:	62a3      	str	r3, [r4, #40]	; 0x28
d008183a:	4b05      	ldr	r3, [pc, #20]	; (d0081850 <std+0x40>)
d008183c:	62e3      	str	r3, [r4, #44]	; 0x2c
d008183e:	4b05      	ldr	r3, [pc, #20]	; (d0081854 <std+0x44>)
d0081840:	6224      	str	r4, [r4, #32]
d0081842:	6323      	str	r3, [r4, #48]	; 0x30
d0081844:	bd10      	pop	{r4, pc}
d0081846:	bf00      	nop
d0081848:	d0082041 	.word	0xd0082041
d008184c:	d0082063 	.word	0xd0082063
d0081850:	d008209b 	.word	0xd008209b
d0081854:	d00820bf 	.word	0xd00820bf

d0081858 <_cleanup_r>:
d0081858:	4901      	ldr	r1, [pc, #4]	; (d0081860 <_cleanup_r+0x8>)
d008185a:	f000 b8af 	b.w	d00819bc <_fwalk_reent>
d008185e:	bf00      	nop
d0081860:	d0081799 	.word	0xd0081799

d0081864 <__sfmoreglue>:
d0081864:	b570      	push	{r4, r5, r6, lr}
d0081866:	1e4a      	subs	r2, r1, #1
d0081868:	2568      	movs	r5, #104	; 0x68
d008186a:	4355      	muls	r5, r2
d008186c:	460e      	mov	r6, r1
d008186e:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0081872:	f7ff fda7 	bl	d00813c4 <_malloc_r>
d0081876:	4604      	mov	r4, r0
d0081878:	b140      	cbz	r0, d008188c <__sfmoreglue+0x28>
d008187a:	2100      	movs	r1, #0
d008187c:	e9c0 1600 	strd	r1, r6, [r0]
d0081880:	300c      	adds	r0, #12
d0081882:	60a0      	str	r0, [r4, #8]
d0081884:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0081888:	f7ff fd44 	bl	d0081314 <memset>
d008188c:	4620      	mov	r0, r4
d008188e:	bd70      	pop	{r4, r5, r6, pc}

d0081890 <__sfp_lock_acquire>:
d0081890:	4801      	ldr	r0, [pc, #4]	; (d0081898 <__sfp_lock_acquire+0x8>)
d0081892:	f000 b8b3 	b.w	d00819fc <__retarget_lock_acquire_recursive>
d0081896:	bf00      	nop
d0081898:	d009544c 	.word	0xd009544c

d008189c <__sfp_lock_release>:
d008189c:	4801      	ldr	r0, [pc, #4]	; (d00818a4 <__sfp_lock_release+0x8>)
d008189e:	f000 b8ae 	b.w	d00819fe <__retarget_lock_release_recursive>
d00818a2:	bf00      	nop
d00818a4:	d009544c 	.word	0xd009544c

d00818a8 <__sinit_lock_acquire>:
d00818a8:	4801      	ldr	r0, [pc, #4]	; (d00818b0 <__sinit_lock_acquire+0x8>)
d00818aa:	f000 b8a7 	b.w	d00819fc <__retarget_lock_acquire_recursive>
d00818ae:	bf00      	nop
d00818b0:	d0095447 	.word	0xd0095447

d00818b4 <__sinit_lock_release>:
d00818b4:	4801      	ldr	r0, [pc, #4]	; (d00818bc <__sinit_lock_release+0x8>)
d00818b6:	f000 b8a2 	b.w	d00819fe <__retarget_lock_release_recursive>
d00818ba:	bf00      	nop
d00818bc:	d0095447 	.word	0xd0095447

d00818c0 <__sinit>:
d00818c0:	b510      	push	{r4, lr}
d00818c2:	4604      	mov	r4, r0
d00818c4:	f7ff fff0 	bl	d00818a8 <__sinit_lock_acquire>
d00818c8:	69a3      	ldr	r3, [r4, #24]
d00818ca:	b11b      	cbz	r3, d00818d4 <__sinit+0x14>
d00818cc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00818d0:	f7ff bff0 	b.w	d00818b4 <__sinit_lock_release>
d00818d4:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d00818d8:	6523      	str	r3, [r4, #80]	; 0x50
d00818da:	4b13      	ldr	r3, [pc, #76]	; (d0081928 <__sinit+0x68>)
d00818dc:	4a13      	ldr	r2, [pc, #76]	; (d008192c <__sinit+0x6c>)
d00818de:	681b      	ldr	r3, [r3, #0]
d00818e0:	62a2      	str	r2, [r4, #40]	; 0x28
d00818e2:	42a3      	cmp	r3, r4
d00818e4:	bf04      	itt	eq
d00818e6:	2301      	moveq	r3, #1
d00818e8:	61a3      	streq	r3, [r4, #24]
d00818ea:	4620      	mov	r0, r4
d00818ec:	f000 f820 	bl	d0081930 <__sfp>
d00818f0:	6060      	str	r0, [r4, #4]
d00818f2:	4620      	mov	r0, r4
d00818f4:	f000 f81c 	bl	d0081930 <__sfp>
d00818f8:	60a0      	str	r0, [r4, #8]
d00818fa:	4620      	mov	r0, r4
d00818fc:	f000 f818 	bl	d0081930 <__sfp>
d0081900:	2200      	movs	r2, #0
d0081902:	60e0      	str	r0, [r4, #12]
d0081904:	2104      	movs	r1, #4
d0081906:	6860      	ldr	r0, [r4, #4]
d0081908:	f7ff ff82 	bl	d0081810 <std>
d008190c:	68a0      	ldr	r0, [r4, #8]
d008190e:	2201      	movs	r2, #1
d0081910:	2109      	movs	r1, #9
d0081912:	f7ff ff7d 	bl	d0081810 <std>
d0081916:	68e0      	ldr	r0, [r4, #12]
d0081918:	2202      	movs	r2, #2
d008191a:	2112      	movs	r1, #18
d008191c:	f7ff ff78 	bl	d0081810 <std>
d0081920:	2301      	movs	r3, #1
d0081922:	61a3      	str	r3, [r4, #24]
d0081924:	e7d2      	b.n	d00818cc <__sinit+0xc>
d0081926:	bf00      	nop
d0081928:	d0082510 	.word	0xd0082510
d008192c:	d0081859 	.word	0xd0081859

d0081930 <__sfp>:
d0081930:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0081932:	4607      	mov	r7, r0
d0081934:	f7ff ffac 	bl	d0081890 <__sfp_lock_acquire>
d0081938:	4b1e      	ldr	r3, [pc, #120]	; (d00819b4 <__sfp+0x84>)
d008193a:	681e      	ldr	r6, [r3, #0]
d008193c:	69b3      	ldr	r3, [r6, #24]
d008193e:	b913      	cbnz	r3, d0081946 <__sfp+0x16>
d0081940:	4630      	mov	r0, r6
d0081942:	f7ff ffbd 	bl	d00818c0 <__sinit>
d0081946:	3648      	adds	r6, #72	; 0x48
d0081948:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d008194c:	3b01      	subs	r3, #1
d008194e:	d503      	bpl.n	d0081958 <__sfp+0x28>
d0081950:	6833      	ldr	r3, [r6, #0]
d0081952:	b30b      	cbz	r3, d0081998 <__sfp+0x68>
d0081954:	6836      	ldr	r6, [r6, #0]
d0081956:	e7f7      	b.n	d0081948 <__sfp+0x18>
d0081958:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d008195c:	b9d5      	cbnz	r5, d0081994 <__sfp+0x64>
d008195e:	4b16      	ldr	r3, [pc, #88]	; (d00819b8 <__sfp+0x88>)
d0081960:	60e3      	str	r3, [r4, #12]
d0081962:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0081966:	6665      	str	r5, [r4, #100]	; 0x64
d0081968:	f000 f847 	bl	d00819fa <__retarget_lock_init_recursive>
d008196c:	f7ff ff96 	bl	d008189c <__sfp_lock_release>
d0081970:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0081974:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0081978:	6025      	str	r5, [r4, #0]
d008197a:	61a5      	str	r5, [r4, #24]
d008197c:	2208      	movs	r2, #8
d008197e:	4629      	mov	r1, r5
d0081980:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0081984:	f7ff fcc6 	bl	d0081314 <memset>
d0081988:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d008198c:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0081990:	4620      	mov	r0, r4
d0081992:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0081994:	3468      	adds	r4, #104	; 0x68
d0081996:	e7d9      	b.n	d008194c <__sfp+0x1c>
d0081998:	2104      	movs	r1, #4
d008199a:	4638      	mov	r0, r7
d008199c:	f7ff ff62 	bl	d0081864 <__sfmoreglue>
d00819a0:	4604      	mov	r4, r0
d00819a2:	6030      	str	r0, [r6, #0]
d00819a4:	2800      	cmp	r0, #0
d00819a6:	d1d5      	bne.n	d0081954 <__sfp+0x24>
d00819a8:	f7ff ff78 	bl	d008189c <__sfp_lock_release>
d00819ac:	230c      	movs	r3, #12
d00819ae:	603b      	str	r3, [r7, #0]
d00819b0:	e7ee      	b.n	d0081990 <__sfp+0x60>
d00819b2:	bf00      	nop
d00819b4:	d0082510 	.word	0xd0082510
d00819b8:	ffff0001 	.word	0xffff0001

d00819bc <_fwalk_reent>:
d00819bc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d00819c0:	4606      	mov	r6, r0
d00819c2:	4688      	mov	r8, r1
d00819c4:	f100 0448 	add.w	r4, r0, #72	; 0x48
d00819c8:	2700      	movs	r7, #0
d00819ca:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d00819ce:	f1b9 0901 	subs.w	r9, r9, #1
d00819d2:	d505      	bpl.n	d00819e0 <_fwalk_reent+0x24>
d00819d4:	6824      	ldr	r4, [r4, #0]
d00819d6:	2c00      	cmp	r4, #0
d00819d8:	d1f7      	bne.n	d00819ca <_fwalk_reent+0xe>
d00819da:	4638      	mov	r0, r7
d00819dc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d00819e0:	89ab      	ldrh	r3, [r5, #12]
d00819e2:	2b01      	cmp	r3, #1
d00819e4:	d907      	bls.n	d00819f6 <_fwalk_reent+0x3a>
d00819e6:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d00819ea:	3301      	adds	r3, #1
d00819ec:	d003      	beq.n	d00819f6 <_fwalk_reent+0x3a>
d00819ee:	4629      	mov	r1, r5
d00819f0:	4630      	mov	r0, r6
d00819f2:	47c0      	blx	r8
d00819f4:	4307      	orrs	r7, r0
d00819f6:	3568      	adds	r5, #104	; 0x68
d00819f8:	e7e9      	b.n	d00819ce <_fwalk_reent+0x12>

d00819fa <__retarget_lock_init_recursive>:
d00819fa:	4770      	bx	lr

d00819fc <__retarget_lock_acquire_recursive>:
d00819fc:	4770      	bx	lr

d00819fe <__retarget_lock_release_recursive>:
d00819fe:	4770      	bx	lr

d0081a00 <__swhatbuf_r>:
d0081a00:	b570      	push	{r4, r5, r6, lr}
d0081a02:	460e      	mov	r6, r1
d0081a04:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081a08:	2900      	cmp	r1, #0
d0081a0a:	b096      	sub	sp, #88	; 0x58
d0081a0c:	4614      	mov	r4, r2
d0081a0e:	461d      	mov	r5, r3
d0081a10:	da07      	bge.n	d0081a22 <__swhatbuf_r+0x22>
d0081a12:	2300      	movs	r3, #0
d0081a14:	602b      	str	r3, [r5, #0]
d0081a16:	89b3      	ldrh	r3, [r6, #12]
d0081a18:	061a      	lsls	r2, r3, #24
d0081a1a:	d410      	bmi.n	d0081a3e <__swhatbuf_r+0x3e>
d0081a1c:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0081a20:	e00e      	b.n	d0081a40 <__swhatbuf_r+0x40>
d0081a22:	466a      	mov	r2, sp
d0081a24:	f000 fb60 	bl	d00820e8 <_fstat_r>
d0081a28:	2800      	cmp	r0, #0
d0081a2a:	dbf2      	blt.n	d0081a12 <__swhatbuf_r+0x12>
d0081a2c:	9a01      	ldr	r2, [sp, #4]
d0081a2e:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0081a32:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0081a36:	425a      	negs	r2, r3
d0081a38:	415a      	adcs	r2, r3
d0081a3a:	602a      	str	r2, [r5, #0]
d0081a3c:	e7ee      	b.n	d0081a1c <__swhatbuf_r+0x1c>
d0081a3e:	2340      	movs	r3, #64	; 0x40
d0081a40:	2000      	movs	r0, #0
d0081a42:	6023      	str	r3, [r4, #0]
d0081a44:	b016      	add	sp, #88	; 0x58
d0081a46:	bd70      	pop	{r4, r5, r6, pc}

d0081a48 <__malloc_lock>:
d0081a48:	4801      	ldr	r0, [pc, #4]	; (d0081a50 <__malloc_lock+0x8>)
d0081a4a:	f7ff bfd7 	b.w	d00819fc <__retarget_lock_acquire_recursive>
d0081a4e:	bf00      	nop
d0081a50:	d0095448 	.word	0xd0095448

d0081a54 <__malloc_unlock>:
d0081a54:	4801      	ldr	r0, [pc, #4]	; (d0081a5c <__malloc_unlock+0x8>)
d0081a56:	f7ff bfd2 	b.w	d00819fe <__retarget_lock_release_recursive>
d0081a5a:	bf00      	nop
d0081a5c:	d0095448 	.word	0xd0095448

d0081a60 <__ssputs_r>:
d0081a60:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0081a64:	688e      	ldr	r6, [r1, #8]
d0081a66:	429e      	cmp	r6, r3
d0081a68:	4682      	mov	sl, r0
d0081a6a:	460c      	mov	r4, r1
d0081a6c:	4690      	mov	r8, r2
d0081a6e:	461f      	mov	r7, r3
d0081a70:	d838      	bhi.n	d0081ae4 <__ssputs_r+0x84>
d0081a72:	898a      	ldrh	r2, [r1, #12]
d0081a74:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0081a78:	d032      	beq.n	d0081ae0 <__ssputs_r+0x80>
d0081a7a:	6825      	ldr	r5, [r4, #0]
d0081a7c:	6909      	ldr	r1, [r1, #16]
d0081a7e:	eba5 0901 	sub.w	r9, r5, r1
d0081a82:	6965      	ldr	r5, [r4, #20]
d0081a84:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0081a88:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0081a8c:	3301      	adds	r3, #1
d0081a8e:	444b      	add	r3, r9
d0081a90:	106d      	asrs	r5, r5, #1
d0081a92:	429d      	cmp	r5, r3
d0081a94:	bf38      	it	cc
d0081a96:	461d      	movcc	r5, r3
d0081a98:	0553      	lsls	r3, r2, #21
d0081a9a:	d531      	bpl.n	d0081b00 <__ssputs_r+0xa0>
d0081a9c:	4629      	mov	r1, r5
d0081a9e:	f7ff fc91 	bl	d00813c4 <_malloc_r>
d0081aa2:	4606      	mov	r6, r0
d0081aa4:	b950      	cbnz	r0, d0081abc <__ssputs_r+0x5c>
d0081aa6:	230c      	movs	r3, #12
d0081aa8:	f8ca 3000 	str.w	r3, [sl]
d0081aac:	89a3      	ldrh	r3, [r4, #12]
d0081aae:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0081ab2:	81a3      	strh	r3, [r4, #12]
d0081ab4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081ab8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0081abc:	6921      	ldr	r1, [r4, #16]
d0081abe:	464a      	mov	r2, r9
d0081ac0:	f000 fb86 	bl	d00821d0 <memcpy>
d0081ac4:	89a3      	ldrh	r3, [r4, #12]
d0081ac6:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0081aca:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0081ace:	81a3      	strh	r3, [r4, #12]
d0081ad0:	6126      	str	r6, [r4, #16]
d0081ad2:	6165      	str	r5, [r4, #20]
d0081ad4:	444e      	add	r6, r9
d0081ad6:	eba5 0509 	sub.w	r5, r5, r9
d0081ada:	6026      	str	r6, [r4, #0]
d0081adc:	60a5      	str	r5, [r4, #8]
d0081ade:	463e      	mov	r6, r7
d0081ae0:	42be      	cmp	r6, r7
d0081ae2:	d900      	bls.n	d0081ae6 <__ssputs_r+0x86>
d0081ae4:	463e      	mov	r6, r7
d0081ae6:	4632      	mov	r2, r6
d0081ae8:	6820      	ldr	r0, [r4, #0]
d0081aea:	4641      	mov	r1, r8
d0081aec:	f000 fb7e 	bl	d00821ec <memmove>
d0081af0:	68a3      	ldr	r3, [r4, #8]
d0081af2:	6822      	ldr	r2, [r4, #0]
d0081af4:	1b9b      	subs	r3, r3, r6
d0081af6:	4432      	add	r2, r6
d0081af8:	60a3      	str	r3, [r4, #8]
d0081afa:	6022      	str	r2, [r4, #0]
d0081afc:	2000      	movs	r0, #0
d0081afe:	e7db      	b.n	d0081ab8 <__ssputs_r+0x58>
d0081b00:	462a      	mov	r2, r5
d0081b02:	f000 fb8d 	bl	d0082220 <_realloc_r>
d0081b06:	4606      	mov	r6, r0
d0081b08:	2800      	cmp	r0, #0
d0081b0a:	d1e1      	bne.n	d0081ad0 <__ssputs_r+0x70>
d0081b0c:	6921      	ldr	r1, [r4, #16]
d0081b0e:	4650      	mov	r0, sl
d0081b10:	f7ff fc08 	bl	d0081324 <_free_r>
d0081b14:	e7c7      	b.n	d0081aa6 <__ssputs_r+0x46>
	...

d0081b18 <_svfiprintf_r>:
d0081b18:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0081b1c:	4698      	mov	r8, r3
d0081b1e:	898b      	ldrh	r3, [r1, #12]
d0081b20:	061b      	lsls	r3, r3, #24
d0081b22:	b09d      	sub	sp, #116	; 0x74
d0081b24:	4607      	mov	r7, r0
d0081b26:	460d      	mov	r5, r1
d0081b28:	4614      	mov	r4, r2
d0081b2a:	d50e      	bpl.n	d0081b4a <_svfiprintf_r+0x32>
d0081b2c:	690b      	ldr	r3, [r1, #16]
d0081b2e:	b963      	cbnz	r3, d0081b4a <_svfiprintf_r+0x32>
d0081b30:	2140      	movs	r1, #64	; 0x40
d0081b32:	f7ff fc47 	bl	d00813c4 <_malloc_r>
d0081b36:	6028      	str	r0, [r5, #0]
d0081b38:	6128      	str	r0, [r5, #16]
d0081b3a:	b920      	cbnz	r0, d0081b46 <_svfiprintf_r+0x2e>
d0081b3c:	230c      	movs	r3, #12
d0081b3e:	603b      	str	r3, [r7, #0]
d0081b40:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081b44:	e0d1      	b.n	d0081cea <_svfiprintf_r+0x1d2>
d0081b46:	2340      	movs	r3, #64	; 0x40
d0081b48:	616b      	str	r3, [r5, #20]
d0081b4a:	2300      	movs	r3, #0
d0081b4c:	9309      	str	r3, [sp, #36]	; 0x24
d0081b4e:	2320      	movs	r3, #32
d0081b50:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0081b54:	f8cd 800c 	str.w	r8, [sp, #12]
d0081b58:	2330      	movs	r3, #48	; 0x30
d0081b5a:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0081d04 <_svfiprintf_r+0x1ec>
d0081b5e:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0081b62:	f04f 0901 	mov.w	r9, #1
d0081b66:	4623      	mov	r3, r4
d0081b68:	469a      	mov	sl, r3
d0081b6a:	f813 2b01 	ldrb.w	r2, [r3], #1
d0081b6e:	b10a      	cbz	r2, d0081b74 <_svfiprintf_r+0x5c>
d0081b70:	2a25      	cmp	r2, #37	; 0x25
d0081b72:	d1f9      	bne.n	d0081b68 <_svfiprintf_r+0x50>
d0081b74:	ebba 0b04 	subs.w	fp, sl, r4
d0081b78:	d00b      	beq.n	d0081b92 <_svfiprintf_r+0x7a>
d0081b7a:	465b      	mov	r3, fp
d0081b7c:	4622      	mov	r2, r4
d0081b7e:	4629      	mov	r1, r5
d0081b80:	4638      	mov	r0, r7
d0081b82:	f7ff ff6d 	bl	d0081a60 <__ssputs_r>
d0081b86:	3001      	adds	r0, #1
d0081b88:	f000 80aa 	beq.w	d0081ce0 <_svfiprintf_r+0x1c8>
d0081b8c:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0081b8e:	445a      	add	r2, fp
d0081b90:	9209      	str	r2, [sp, #36]	; 0x24
d0081b92:	f89a 3000 	ldrb.w	r3, [sl]
d0081b96:	2b00      	cmp	r3, #0
d0081b98:	f000 80a2 	beq.w	d0081ce0 <_svfiprintf_r+0x1c8>
d0081b9c:	2300      	movs	r3, #0
d0081b9e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0081ba2:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0081ba6:	f10a 0a01 	add.w	sl, sl, #1
d0081baa:	9304      	str	r3, [sp, #16]
d0081bac:	9307      	str	r3, [sp, #28]
d0081bae:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0081bb2:	931a      	str	r3, [sp, #104]	; 0x68
d0081bb4:	4654      	mov	r4, sl
d0081bb6:	2205      	movs	r2, #5
d0081bb8:	f814 1b01 	ldrb.w	r1, [r4], #1
d0081bbc:	4851      	ldr	r0, [pc, #324]	; (d0081d04 <_svfiprintf_r+0x1ec>)
d0081bbe:	f000 fab7 	bl	d0082130 <memchr>
d0081bc2:	9a04      	ldr	r2, [sp, #16]
d0081bc4:	b9d8      	cbnz	r0, d0081bfe <_svfiprintf_r+0xe6>
d0081bc6:	06d0      	lsls	r0, r2, #27
d0081bc8:	bf44      	itt	mi
d0081bca:	2320      	movmi	r3, #32
d0081bcc:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0081bd0:	0711      	lsls	r1, r2, #28
d0081bd2:	bf44      	itt	mi
d0081bd4:	232b      	movmi	r3, #43	; 0x2b
d0081bd6:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0081bda:	f89a 3000 	ldrb.w	r3, [sl]
d0081bde:	2b2a      	cmp	r3, #42	; 0x2a
d0081be0:	d015      	beq.n	d0081c0e <_svfiprintf_r+0xf6>
d0081be2:	9a07      	ldr	r2, [sp, #28]
d0081be4:	4654      	mov	r4, sl
d0081be6:	2000      	movs	r0, #0
d0081be8:	f04f 0c0a 	mov.w	ip, #10
d0081bec:	4621      	mov	r1, r4
d0081bee:	f811 3b01 	ldrb.w	r3, [r1], #1
d0081bf2:	3b30      	subs	r3, #48	; 0x30
d0081bf4:	2b09      	cmp	r3, #9
d0081bf6:	d94e      	bls.n	d0081c96 <_svfiprintf_r+0x17e>
d0081bf8:	b1b0      	cbz	r0, d0081c28 <_svfiprintf_r+0x110>
d0081bfa:	9207      	str	r2, [sp, #28]
d0081bfc:	e014      	b.n	d0081c28 <_svfiprintf_r+0x110>
d0081bfe:	eba0 0308 	sub.w	r3, r0, r8
d0081c02:	fa09 f303 	lsl.w	r3, r9, r3
d0081c06:	4313      	orrs	r3, r2
d0081c08:	9304      	str	r3, [sp, #16]
d0081c0a:	46a2      	mov	sl, r4
d0081c0c:	e7d2      	b.n	d0081bb4 <_svfiprintf_r+0x9c>
d0081c0e:	9b03      	ldr	r3, [sp, #12]
d0081c10:	1d19      	adds	r1, r3, #4
d0081c12:	681b      	ldr	r3, [r3, #0]
d0081c14:	9103      	str	r1, [sp, #12]
d0081c16:	2b00      	cmp	r3, #0
d0081c18:	bfbb      	ittet	lt
d0081c1a:	425b      	neglt	r3, r3
d0081c1c:	f042 0202 	orrlt.w	r2, r2, #2
d0081c20:	9307      	strge	r3, [sp, #28]
d0081c22:	9307      	strlt	r3, [sp, #28]
d0081c24:	bfb8      	it	lt
d0081c26:	9204      	strlt	r2, [sp, #16]
d0081c28:	7823      	ldrb	r3, [r4, #0]
d0081c2a:	2b2e      	cmp	r3, #46	; 0x2e
d0081c2c:	d10c      	bne.n	d0081c48 <_svfiprintf_r+0x130>
d0081c2e:	7863      	ldrb	r3, [r4, #1]
d0081c30:	2b2a      	cmp	r3, #42	; 0x2a
d0081c32:	d135      	bne.n	d0081ca0 <_svfiprintf_r+0x188>
d0081c34:	9b03      	ldr	r3, [sp, #12]
d0081c36:	1d1a      	adds	r2, r3, #4
d0081c38:	681b      	ldr	r3, [r3, #0]
d0081c3a:	9203      	str	r2, [sp, #12]
d0081c3c:	2b00      	cmp	r3, #0
d0081c3e:	bfb8      	it	lt
d0081c40:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0081c44:	3402      	adds	r4, #2
d0081c46:	9305      	str	r3, [sp, #20]
d0081c48:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0081d14 <_svfiprintf_r+0x1fc>
d0081c4c:	7821      	ldrb	r1, [r4, #0]
d0081c4e:	2203      	movs	r2, #3
d0081c50:	4650      	mov	r0, sl
d0081c52:	f000 fa6d 	bl	d0082130 <memchr>
d0081c56:	b140      	cbz	r0, d0081c6a <_svfiprintf_r+0x152>
d0081c58:	2340      	movs	r3, #64	; 0x40
d0081c5a:	eba0 000a 	sub.w	r0, r0, sl
d0081c5e:	fa03 f000 	lsl.w	r0, r3, r0
d0081c62:	9b04      	ldr	r3, [sp, #16]
d0081c64:	4303      	orrs	r3, r0
d0081c66:	3401      	adds	r4, #1
d0081c68:	9304      	str	r3, [sp, #16]
d0081c6a:	f814 1b01 	ldrb.w	r1, [r4], #1
d0081c6e:	4826      	ldr	r0, [pc, #152]	; (d0081d08 <_svfiprintf_r+0x1f0>)
d0081c70:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0081c74:	2206      	movs	r2, #6
d0081c76:	f000 fa5b 	bl	d0082130 <memchr>
d0081c7a:	2800      	cmp	r0, #0
d0081c7c:	d038      	beq.n	d0081cf0 <_svfiprintf_r+0x1d8>
d0081c7e:	4b23      	ldr	r3, [pc, #140]	; (d0081d0c <_svfiprintf_r+0x1f4>)
d0081c80:	bb1b      	cbnz	r3, d0081cca <_svfiprintf_r+0x1b2>
d0081c82:	9b03      	ldr	r3, [sp, #12]
d0081c84:	3307      	adds	r3, #7
d0081c86:	f023 0307 	bic.w	r3, r3, #7
d0081c8a:	3308      	adds	r3, #8
d0081c8c:	9303      	str	r3, [sp, #12]
d0081c8e:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0081c90:	4433      	add	r3, r6
d0081c92:	9309      	str	r3, [sp, #36]	; 0x24
d0081c94:	e767      	b.n	d0081b66 <_svfiprintf_r+0x4e>
d0081c96:	fb0c 3202 	mla	r2, ip, r2, r3
d0081c9a:	460c      	mov	r4, r1
d0081c9c:	2001      	movs	r0, #1
d0081c9e:	e7a5      	b.n	d0081bec <_svfiprintf_r+0xd4>
d0081ca0:	2300      	movs	r3, #0
d0081ca2:	3401      	adds	r4, #1
d0081ca4:	9305      	str	r3, [sp, #20]
d0081ca6:	4619      	mov	r1, r3
d0081ca8:	f04f 0c0a 	mov.w	ip, #10
d0081cac:	4620      	mov	r0, r4
d0081cae:	f810 2b01 	ldrb.w	r2, [r0], #1
d0081cb2:	3a30      	subs	r2, #48	; 0x30
d0081cb4:	2a09      	cmp	r2, #9
d0081cb6:	d903      	bls.n	d0081cc0 <_svfiprintf_r+0x1a8>
d0081cb8:	2b00      	cmp	r3, #0
d0081cba:	d0c5      	beq.n	d0081c48 <_svfiprintf_r+0x130>
d0081cbc:	9105      	str	r1, [sp, #20]
d0081cbe:	e7c3      	b.n	d0081c48 <_svfiprintf_r+0x130>
d0081cc0:	fb0c 2101 	mla	r1, ip, r1, r2
d0081cc4:	4604      	mov	r4, r0
d0081cc6:	2301      	movs	r3, #1
d0081cc8:	e7f0      	b.n	d0081cac <_svfiprintf_r+0x194>
d0081cca:	ab03      	add	r3, sp, #12
d0081ccc:	9300      	str	r3, [sp, #0]
d0081cce:	462a      	mov	r2, r5
d0081cd0:	4b0f      	ldr	r3, [pc, #60]	; (d0081d10 <_svfiprintf_r+0x1f8>)
d0081cd2:	a904      	add	r1, sp, #16
d0081cd4:	4638      	mov	r0, r7
d0081cd6:	f3af 8000 	nop.w
d0081cda:	1c42      	adds	r2, r0, #1
d0081cdc:	4606      	mov	r6, r0
d0081cde:	d1d6      	bne.n	d0081c8e <_svfiprintf_r+0x176>
d0081ce0:	89ab      	ldrh	r3, [r5, #12]
d0081ce2:	065b      	lsls	r3, r3, #25
d0081ce4:	f53f af2c 	bmi.w	d0081b40 <_svfiprintf_r+0x28>
d0081ce8:	9809      	ldr	r0, [sp, #36]	; 0x24
d0081cea:	b01d      	add	sp, #116	; 0x74
d0081cec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0081cf0:	ab03      	add	r3, sp, #12
d0081cf2:	9300      	str	r3, [sp, #0]
d0081cf4:	462a      	mov	r2, r5
d0081cf6:	4b06      	ldr	r3, [pc, #24]	; (d0081d10 <_svfiprintf_r+0x1f8>)
d0081cf8:	a904      	add	r1, sp, #16
d0081cfa:	4638      	mov	r0, r7
d0081cfc:	f000 f87a 	bl	d0081df4 <_printf_i>
d0081d00:	e7eb      	b.n	d0081cda <_svfiprintf_r+0x1c2>
d0081d02:	bf00      	nop
d0081d04:	d0082574 	.word	0xd0082574
d0081d08:	d008257e 	.word	0xd008257e
d0081d0c:	00000000 	.word	0x00000000
d0081d10:	d0081a61 	.word	0xd0081a61
d0081d14:	d008257a 	.word	0xd008257a

d0081d18 <_printf_common>:
d0081d18:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0081d1c:	4616      	mov	r6, r2
d0081d1e:	4699      	mov	r9, r3
d0081d20:	688a      	ldr	r2, [r1, #8]
d0081d22:	690b      	ldr	r3, [r1, #16]
d0081d24:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0081d28:	4293      	cmp	r3, r2
d0081d2a:	bfb8      	it	lt
d0081d2c:	4613      	movlt	r3, r2
d0081d2e:	6033      	str	r3, [r6, #0]
d0081d30:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0081d34:	4607      	mov	r7, r0
d0081d36:	460c      	mov	r4, r1
d0081d38:	b10a      	cbz	r2, d0081d3e <_printf_common+0x26>
d0081d3a:	3301      	adds	r3, #1
d0081d3c:	6033      	str	r3, [r6, #0]
d0081d3e:	6823      	ldr	r3, [r4, #0]
d0081d40:	0699      	lsls	r1, r3, #26
d0081d42:	bf42      	ittt	mi
d0081d44:	6833      	ldrmi	r3, [r6, #0]
d0081d46:	3302      	addmi	r3, #2
d0081d48:	6033      	strmi	r3, [r6, #0]
d0081d4a:	6825      	ldr	r5, [r4, #0]
d0081d4c:	f015 0506 	ands.w	r5, r5, #6
d0081d50:	d106      	bne.n	d0081d60 <_printf_common+0x48>
d0081d52:	f104 0a19 	add.w	sl, r4, #25
d0081d56:	68e3      	ldr	r3, [r4, #12]
d0081d58:	6832      	ldr	r2, [r6, #0]
d0081d5a:	1a9b      	subs	r3, r3, r2
d0081d5c:	42ab      	cmp	r3, r5
d0081d5e:	dc26      	bgt.n	d0081dae <_printf_common+0x96>
d0081d60:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0081d64:	1e13      	subs	r3, r2, #0
d0081d66:	6822      	ldr	r2, [r4, #0]
d0081d68:	bf18      	it	ne
d0081d6a:	2301      	movne	r3, #1
d0081d6c:	0692      	lsls	r2, r2, #26
d0081d6e:	d42b      	bmi.n	d0081dc8 <_printf_common+0xb0>
d0081d70:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0081d74:	4649      	mov	r1, r9
d0081d76:	4638      	mov	r0, r7
d0081d78:	47c0      	blx	r8
d0081d7a:	3001      	adds	r0, #1
d0081d7c:	d01e      	beq.n	d0081dbc <_printf_common+0xa4>
d0081d7e:	6823      	ldr	r3, [r4, #0]
d0081d80:	68e5      	ldr	r5, [r4, #12]
d0081d82:	6832      	ldr	r2, [r6, #0]
d0081d84:	f003 0306 	and.w	r3, r3, #6
d0081d88:	2b04      	cmp	r3, #4
d0081d8a:	bf08      	it	eq
d0081d8c:	1aad      	subeq	r5, r5, r2
d0081d8e:	68a3      	ldr	r3, [r4, #8]
d0081d90:	6922      	ldr	r2, [r4, #16]
d0081d92:	bf0c      	ite	eq
d0081d94:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0081d98:	2500      	movne	r5, #0
d0081d9a:	4293      	cmp	r3, r2
d0081d9c:	bfc4      	itt	gt
d0081d9e:	1a9b      	subgt	r3, r3, r2
d0081da0:	18ed      	addgt	r5, r5, r3
d0081da2:	2600      	movs	r6, #0
d0081da4:	341a      	adds	r4, #26
d0081da6:	42b5      	cmp	r5, r6
d0081da8:	d11a      	bne.n	d0081de0 <_printf_common+0xc8>
d0081daa:	2000      	movs	r0, #0
d0081dac:	e008      	b.n	d0081dc0 <_printf_common+0xa8>
d0081dae:	2301      	movs	r3, #1
d0081db0:	4652      	mov	r2, sl
d0081db2:	4649      	mov	r1, r9
d0081db4:	4638      	mov	r0, r7
d0081db6:	47c0      	blx	r8
d0081db8:	3001      	adds	r0, #1
d0081dba:	d103      	bne.n	d0081dc4 <_printf_common+0xac>
d0081dbc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081dc0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0081dc4:	3501      	adds	r5, #1
d0081dc6:	e7c6      	b.n	d0081d56 <_printf_common+0x3e>
d0081dc8:	18e1      	adds	r1, r4, r3
d0081dca:	1c5a      	adds	r2, r3, #1
d0081dcc:	2030      	movs	r0, #48	; 0x30
d0081dce:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0081dd2:	4422      	add	r2, r4
d0081dd4:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0081dd8:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0081ddc:	3302      	adds	r3, #2
d0081dde:	e7c7      	b.n	d0081d70 <_printf_common+0x58>
d0081de0:	2301      	movs	r3, #1
d0081de2:	4622      	mov	r2, r4
d0081de4:	4649      	mov	r1, r9
d0081de6:	4638      	mov	r0, r7
d0081de8:	47c0      	blx	r8
d0081dea:	3001      	adds	r0, #1
d0081dec:	d0e6      	beq.n	d0081dbc <_printf_common+0xa4>
d0081dee:	3601      	adds	r6, #1
d0081df0:	e7d9      	b.n	d0081da6 <_printf_common+0x8e>
	...

d0081df4 <_printf_i>:
d0081df4:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0081df8:	460c      	mov	r4, r1
d0081dfa:	4691      	mov	r9, r2
d0081dfc:	7e27      	ldrb	r7, [r4, #24]
d0081dfe:	990c      	ldr	r1, [sp, #48]	; 0x30
d0081e00:	2f78      	cmp	r7, #120	; 0x78
d0081e02:	4680      	mov	r8, r0
d0081e04:	469a      	mov	sl, r3
d0081e06:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0081e0a:	d807      	bhi.n	d0081e1c <_printf_i+0x28>
d0081e0c:	2f62      	cmp	r7, #98	; 0x62
d0081e0e:	d80a      	bhi.n	d0081e26 <_printf_i+0x32>
d0081e10:	2f00      	cmp	r7, #0
d0081e12:	f000 80d8 	beq.w	d0081fc6 <_printf_i+0x1d2>
d0081e16:	2f58      	cmp	r7, #88	; 0x58
d0081e18:	f000 80a3 	beq.w	d0081f62 <_printf_i+0x16e>
d0081e1c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0081e20:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0081e24:	e03a      	b.n	d0081e9c <_printf_i+0xa8>
d0081e26:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0081e2a:	2b15      	cmp	r3, #21
d0081e2c:	d8f6      	bhi.n	d0081e1c <_printf_i+0x28>
d0081e2e:	a001      	add	r0, pc, #4	; (adr r0, d0081e34 <_printf_i+0x40>)
d0081e30:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0081e34:	d0081e8d 	.word	0xd0081e8d
d0081e38:	d0081ea1 	.word	0xd0081ea1
d0081e3c:	d0081e1d 	.word	0xd0081e1d
d0081e40:	d0081e1d 	.word	0xd0081e1d
d0081e44:	d0081e1d 	.word	0xd0081e1d
d0081e48:	d0081e1d 	.word	0xd0081e1d
d0081e4c:	d0081ea1 	.word	0xd0081ea1
d0081e50:	d0081e1d 	.word	0xd0081e1d
d0081e54:	d0081e1d 	.word	0xd0081e1d
d0081e58:	d0081e1d 	.word	0xd0081e1d
d0081e5c:	d0081e1d 	.word	0xd0081e1d
d0081e60:	d0081fad 	.word	0xd0081fad
d0081e64:	d0081ed1 	.word	0xd0081ed1
d0081e68:	d0081f8f 	.word	0xd0081f8f
d0081e6c:	d0081e1d 	.word	0xd0081e1d
d0081e70:	d0081e1d 	.word	0xd0081e1d
d0081e74:	d0081fcf 	.word	0xd0081fcf
d0081e78:	d0081e1d 	.word	0xd0081e1d
d0081e7c:	d0081ed1 	.word	0xd0081ed1
d0081e80:	d0081e1d 	.word	0xd0081e1d
d0081e84:	d0081e1d 	.word	0xd0081e1d
d0081e88:	d0081f97 	.word	0xd0081f97
d0081e8c:	680b      	ldr	r3, [r1, #0]
d0081e8e:	1d1a      	adds	r2, r3, #4
d0081e90:	681b      	ldr	r3, [r3, #0]
d0081e92:	600a      	str	r2, [r1, #0]
d0081e94:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0081e98:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0081e9c:	2301      	movs	r3, #1
d0081e9e:	e0a3      	b.n	d0081fe8 <_printf_i+0x1f4>
d0081ea0:	6825      	ldr	r5, [r4, #0]
d0081ea2:	6808      	ldr	r0, [r1, #0]
d0081ea4:	062e      	lsls	r6, r5, #24
d0081ea6:	f100 0304 	add.w	r3, r0, #4
d0081eaa:	d50a      	bpl.n	d0081ec2 <_printf_i+0xce>
d0081eac:	6805      	ldr	r5, [r0, #0]
d0081eae:	600b      	str	r3, [r1, #0]
d0081eb0:	2d00      	cmp	r5, #0
d0081eb2:	da03      	bge.n	d0081ebc <_printf_i+0xc8>
d0081eb4:	232d      	movs	r3, #45	; 0x2d
d0081eb6:	426d      	negs	r5, r5
d0081eb8:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0081ebc:	485e      	ldr	r0, [pc, #376]	; (d0082038 <_printf_i+0x244>)
d0081ebe:	230a      	movs	r3, #10
d0081ec0:	e019      	b.n	d0081ef6 <_printf_i+0x102>
d0081ec2:	f015 0f40 	tst.w	r5, #64	; 0x40
d0081ec6:	6805      	ldr	r5, [r0, #0]
d0081ec8:	600b      	str	r3, [r1, #0]
d0081eca:	bf18      	it	ne
d0081ecc:	b22d      	sxthne	r5, r5
d0081ece:	e7ef      	b.n	d0081eb0 <_printf_i+0xbc>
d0081ed0:	680b      	ldr	r3, [r1, #0]
d0081ed2:	6825      	ldr	r5, [r4, #0]
d0081ed4:	1d18      	adds	r0, r3, #4
d0081ed6:	6008      	str	r0, [r1, #0]
d0081ed8:	0628      	lsls	r0, r5, #24
d0081eda:	d501      	bpl.n	d0081ee0 <_printf_i+0xec>
d0081edc:	681d      	ldr	r5, [r3, #0]
d0081ede:	e002      	b.n	d0081ee6 <_printf_i+0xf2>
d0081ee0:	0669      	lsls	r1, r5, #25
d0081ee2:	d5fb      	bpl.n	d0081edc <_printf_i+0xe8>
d0081ee4:	881d      	ldrh	r5, [r3, #0]
d0081ee6:	4854      	ldr	r0, [pc, #336]	; (d0082038 <_printf_i+0x244>)
d0081ee8:	2f6f      	cmp	r7, #111	; 0x6f
d0081eea:	bf0c      	ite	eq
d0081eec:	2308      	moveq	r3, #8
d0081eee:	230a      	movne	r3, #10
d0081ef0:	2100      	movs	r1, #0
d0081ef2:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0081ef6:	6866      	ldr	r6, [r4, #4]
d0081ef8:	60a6      	str	r6, [r4, #8]
d0081efa:	2e00      	cmp	r6, #0
d0081efc:	bfa2      	ittt	ge
d0081efe:	6821      	ldrge	r1, [r4, #0]
d0081f00:	f021 0104 	bicge.w	r1, r1, #4
d0081f04:	6021      	strge	r1, [r4, #0]
d0081f06:	b90d      	cbnz	r5, d0081f0c <_printf_i+0x118>
d0081f08:	2e00      	cmp	r6, #0
d0081f0a:	d04d      	beq.n	d0081fa8 <_printf_i+0x1b4>
d0081f0c:	4616      	mov	r6, r2
d0081f0e:	fbb5 f1f3 	udiv	r1, r5, r3
d0081f12:	fb03 5711 	mls	r7, r3, r1, r5
d0081f16:	5dc7      	ldrb	r7, [r0, r7]
d0081f18:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0081f1c:	462f      	mov	r7, r5
d0081f1e:	42bb      	cmp	r3, r7
d0081f20:	460d      	mov	r5, r1
d0081f22:	d9f4      	bls.n	d0081f0e <_printf_i+0x11a>
d0081f24:	2b08      	cmp	r3, #8
d0081f26:	d10b      	bne.n	d0081f40 <_printf_i+0x14c>
d0081f28:	6823      	ldr	r3, [r4, #0]
d0081f2a:	07df      	lsls	r7, r3, #31
d0081f2c:	d508      	bpl.n	d0081f40 <_printf_i+0x14c>
d0081f2e:	6923      	ldr	r3, [r4, #16]
d0081f30:	6861      	ldr	r1, [r4, #4]
d0081f32:	4299      	cmp	r1, r3
d0081f34:	bfde      	ittt	le
d0081f36:	2330      	movle	r3, #48	; 0x30
d0081f38:	f806 3c01 	strble.w	r3, [r6, #-1]
d0081f3c:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0081f40:	1b92      	subs	r2, r2, r6
d0081f42:	6122      	str	r2, [r4, #16]
d0081f44:	f8cd a000 	str.w	sl, [sp]
d0081f48:	464b      	mov	r3, r9
d0081f4a:	aa03      	add	r2, sp, #12
d0081f4c:	4621      	mov	r1, r4
d0081f4e:	4640      	mov	r0, r8
d0081f50:	f7ff fee2 	bl	d0081d18 <_printf_common>
d0081f54:	3001      	adds	r0, #1
d0081f56:	d14c      	bne.n	d0081ff2 <_printf_i+0x1fe>
d0081f58:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081f5c:	b004      	add	sp, #16
d0081f5e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0081f62:	4835      	ldr	r0, [pc, #212]	; (d0082038 <_printf_i+0x244>)
d0081f64:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0081f68:	6823      	ldr	r3, [r4, #0]
d0081f6a:	680e      	ldr	r6, [r1, #0]
d0081f6c:	061f      	lsls	r7, r3, #24
d0081f6e:	f856 5b04 	ldr.w	r5, [r6], #4
d0081f72:	600e      	str	r6, [r1, #0]
d0081f74:	d514      	bpl.n	d0081fa0 <_printf_i+0x1ac>
d0081f76:	07d9      	lsls	r1, r3, #31
d0081f78:	bf44      	itt	mi
d0081f7a:	f043 0320 	orrmi.w	r3, r3, #32
d0081f7e:	6023      	strmi	r3, [r4, #0]
d0081f80:	b91d      	cbnz	r5, d0081f8a <_printf_i+0x196>
d0081f82:	6823      	ldr	r3, [r4, #0]
d0081f84:	f023 0320 	bic.w	r3, r3, #32
d0081f88:	6023      	str	r3, [r4, #0]
d0081f8a:	2310      	movs	r3, #16
d0081f8c:	e7b0      	b.n	d0081ef0 <_printf_i+0xfc>
d0081f8e:	6823      	ldr	r3, [r4, #0]
d0081f90:	f043 0320 	orr.w	r3, r3, #32
d0081f94:	6023      	str	r3, [r4, #0]
d0081f96:	2378      	movs	r3, #120	; 0x78
d0081f98:	4828      	ldr	r0, [pc, #160]	; (d008203c <_printf_i+0x248>)
d0081f9a:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0081f9e:	e7e3      	b.n	d0081f68 <_printf_i+0x174>
d0081fa0:	065e      	lsls	r6, r3, #25
d0081fa2:	bf48      	it	mi
d0081fa4:	b2ad      	uxthmi	r5, r5
d0081fa6:	e7e6      	b.n	d0081f76 <_printf_i+0x182>
d0081fa8:	4616      	mov	r6, r2
d0081faa:	e7bb      	b.n	d0081f24 <_printf_i+0x130>
d0081fac:	680b      	ldr	r3, [r1, #0]
d0081fae:	6826      	ldr	r6, [r4, #0]
d0081fb0:	6960      	ldr	r0, [r4, #20]
d0081fb2:	1d1d      	adds	r5, r3, #4
d0081fb4:	600d      	str	r5, [r1, #0]
d0081fb6:	0635      	lsls	r5, r6, #24
d0081fb8:	681b      	ldr	r3, [r3, #0]
d0081fba:	d501      	bpl.n	d0081fc0 <_printf_i+0x1cc>
d0081fbc:	6018      	str	r0, [r3, #0]
d0081fbe:	e002      	b.n	d0081fc6 <_printf_i+0x1d2>
d0081fc0:	0671      	lsls	r1, r6, #25
d0081fc2:	d5fb      	bpl.n	d0081fbc <_printf_i+0x1c8>
d0081fc4:	8018      	strh	r0, [r3, #0]
d0081fc6:	2300      	movs	r3, #0
d0081fc8:	6123      	str	r3, [r4, #16]
d0081fca:	4616      	mov	r6, r2
d0081fcc:	e7ba      	b.n	d0081f44 <_printf_i+0x150>
d0081fce:	680b      	ldr	r3, [r1, #0]
d0081fd0:	1d1a      	adds	r2, r3, #4
d0081fd2:	600a      	str	r2, [r1, #0]
d0081fd4:	681e      	ldr	r6, [r3, #0]
d0081fd6:	6862      	ldr	r2, [r4, #4]
d0081fd8:	2100      	movs	r1, #0
d0081fda:	4630      	mov	r0, r6
d0081fdc:	f000 f8a8 	bl	d0082130 <memchr>
d0081fe0:	b108      	cbz	r0, d0081fe6 <_printf_i+0x1f2>
d0081fe2:	1b80      	subs	r0, r0, r6
d0081fe4:	6060      	str	r0, [r4, #4]
d0081fe6:	6863      	ldr	r3, [r4, #4]
d0081fe8:	6123      	str	r3, [r4, #16]
d0081fea:	2300      	movs	r3, #0
d0081fec:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0081ff0:	e7a8      	b.n	d0081f44 <_printf_i+0x150>
d0081ff2:	6923      	ldr	r3, [r4, #16]
d0081ff4:	4632      	mov	r2, r6
d0081ff6:	4649      	mov	r1, r9
d0081ff8:	4640      	mov	r0, r8
d0081ffa:	47d0      	blx	sl
d0081ffc:	3001      	adds	r0, #1
d0081ffe:	d0ab      	beq.n	d0081f58 <_printf_i+0x164>
d0082000:	6823      	ldr	r3, [r4, #0]
d0082002:	079b      	lsls	r3, r3, #30
d0082004:	d413      	bmi.n	d008202e <_printf_i+0x23a>
d0082006:	68e0      	ldr	r0, [r4, #12]
d0082008:	9b03      	ldr	r3, [sp, #12]
d008200a:	4298      	cmp	r0, r3
d008200c:	bfb8      	it	lt
d008200e:	4618      	movlt	r0, r3
d0082010:	e7a4      	b.n	d0081f5c <_printf_i+0x168>
d0082012:	2301      	movs	r3, #1
d0082014:	4632      	mov	r2, r6
d0082016:	4649      	mov	r1, r9
d0082018:	4640      	mov	r0, r8
d008201a:	47d0      	blx	sl
d008201c:	3001      	adds	r0, #1
d008201e:	d09b      	beq.n	d0081f58 <_printf_i+0x164>
d0082020:	3501      	adds	r5, #1
d0082022:	68e3      	ldr	r3, [r4, #12]
d0082024:	9903      	ldr	r1, [sp, #12]
d0082026:	1a5b      	subs	r3, r3, r1
d0082028:	42ab      	cmp	r3, r5
d008202a:	dcf2      	bgt.n	d0082012 <_printf_i+0x21e>
d008202c:	e7eb      	b.n	d0082006 <_printf_i+0x212>
d008202e:	2500      	movs	r5, #0
d0082030:	f104 0619 	add.w	r6, r4, #25
d0082034:	e7f5      	b.n	d0082022 <_printf_i+0x22e>
d0082036:	bf00      	nop
d0082038:	d0082585 	.word	0xd0082585
d008203c:	d0082596 	.word	0xd0082596

d0082040 <__sread>:
d0082040:	b510      	push	{r4, lr}
d0082042:	460c      	mov	r4, r1
d0082044:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0082048:	f000 f910 	bl	d008226c <_read_r>
d008204c:	2800      	cmp	r0, #0
d008204e:	bfab      	itete	ge
d0082050:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0082052:	89a3      	ldrhlt	r3, [r4, #12]
d0082054:	181b      	addge	r3, r3, r0
d0082056:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d008205a:	bfac      	ite	ge
d008205c:	6563      	strge	r3, [r4, #84]	; 0x54
d008205e:	81a3      	strhlt	r3, [r4, #12]
d0082060:	bd10      	pop	{r4, pc}

d0082062 <__swrite>:
d0082062:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0082066:	461f      	mov	r7, r3
d0082068:	898b      	ldrh	r3, [r1, #12]
d008206a:	05db      	lsls	r3, r3, #23
d008206c:	4605      	mov	r5, r0
d008206e:	460c      	mov	r4, r1
d0082070:	4616      	mov	r6, r2
d0082072:	d505      	bpl.n	d0082080 <__swrite+0x1e>
d0082074:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0082078:	2302      	movs	r3, #2
d008207a:	2200      	movs	r2, #0
d008207c:	f000 f846 	bl	d008210c <_lseek_r>
d0082080:	89a3      	ldrh	r3, [r4, #12]
d0082082:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0082086:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d008208a:	81a3      	strh	r3, [r4, #12]
d008208c:	4632      	mov	r2, r6
d008208e:	463b      	mov	r3, r7
d0082090:	4628      	mov	r0, r5
d0082092:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0082096:	f7fd bfeb 	b.w	d0080070 <_write_r>

d008209a <__sseek>:
d008209a:	b510      	push	{r4, lr}
d008209c:	460c      	mov	r4, r1
d008209e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00820a2:	f000 f833 	bl	d008210c <_lseek_r>
d00820a6:	1c43      	adds	r3, r0, #1
d00820a8:	89a3      	ldrh	r3, [r4, #12]
d00820aa:	bf15      	itete	ne
d00820ac:	6560      	strne	r0, [r4, #84]	; 0x54
d00820ae:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d00820b2:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d00820b6:	81a3      	strheq	r3, [r4, #12]
d00820b8:	bf18      	it	ne
d00820ba:	81a3      	strhne	r3, [r4, #12]
d00820bc:	bd10      	pop	{r4, pc}

d00820be <__sclose>:
d00820be:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00820c2:	f000 b801 	b.w	d00820c8 <_close_r>
	...

d00820c8 <_close_r>:
d00820c8:	b538      	push	{r3, r4, r5, lr}
d00820ca:	4d06      	ldr	r5, [pc, #24]	; (d00820e4 <_close_r+0x1c>)
d00820cc:	2300      	movs	r3, #0
d00820ce:	4604      	mov	r4, r0
d00820d0:	4608      	mov	r0, r1
d00820d2:	602b      	str	r3, [r5, #0]
d00820d4:	f7fe f806 	bl	d00800e4 <_close>
d00820d8:	1c43      	adds	r3, r0, #1
d00820da:	d102      	bne.n	d00820e2 <_close_r+0x1a>
d00820dc:	682b      	ldr	r3, [r5, #0]
d00820de:	b103      	cbz	r3, d00820e2 <_close_r+0x1a>
d00820e0:	6023      	str	r3, [r4, #0]
d00820e2:	bd38      	pop	{r3, r4, r5, pc}
d00820e4:	d0095450 	.word	0xd0095450

d00820e8 <_fstat_r>:
d00820e8:	b538      	push	{r3, r4, r5, lr}
d00820ea:	4d07      	ldr	r5, [pc, #28]	; (d0082108 <_fstat_r+0x20>)
d00820ec:	2300      	movs	r3, #0
d00820ee:	4604      	mov	r4, r0
d00820f0:	4608      	mov	r0, r1
d00820f2:	4611      	mov	r1, r2
d00820f4:	602b      	str	r3, [r5, #0]
d00820f6:	f7fd fff9 	bl	d00800ec <_fstat>
d00820fa:	1c43      	adds	r3, r0, #1
d00820fc:	d102      	bne.n	d0082104 <_fstat_r+0x1c>
d00820fe:	682b      	ldr	r3, [r5, #0]
d0082100:	b103      	cbz	r3, d0082104 <_fstat_r+0x1c>
d0082102:	6023      	str	r3, [r4, #0]
d0082104:	bd38      	pop	{r3, r4, r5, pc}
d0082106:	bf00      	nop
d0082108:	d0095450 	.word	0xd0095450

d008210c <_lseek_r>:
d008210c:	b538      	push	{r3, r4, r5, lr}
d008210e:	4d07      	ldr	r5, [pc, #28]	; (d008212c <_lseek_r+0x20>)
d0082110:	4604      	mov	r4, r0
d0082112:	4608      	mov	r0, r1
d0082114:	4611      	mov	r1, r2
d0082116:	2200      	movs	r2, #0
d0082118:	602a      	str	r2, [r5, #0]
d008211a:	461a      	mov	r2, r3
d008211c:	f7fd ffec 	bl	d00800f8 <_lseek>
d0082120:	1c43      	adds	r3, r0, #1
d0082122:	d102      	bne.n	d008212a <_lseek_r+0x1e>
d0082124:	682b      	ldr	r3, [r5, #0]
d0082126:	b103      	cbz	r3, d008212a <_lseek_r+0x1e>
d0082128:	6023      	str	r3, [r4, #0]
d008212a:	bd38      	pop	{r3, r4, r5, pc}
d008212c:	d0095450 	.word	0xd0095450

d0082130 <memchr>:
d0082130:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0082134:	2a10      	cmp	r2, #16
d0082136:	db2b      	blt.n	d0082190 <memchr+0x60>
d0082138:	f010 0f07 	tst.w	r0, #7
d008213c:	d008      	beq.n	d0082150 <memchr+0x20>
d008213e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0082142:	3a01      	subs	r2, #1
d0082144:	428b      	cmp	r3, r1
d0082146:	d02d      	beq.n	d00821a4 <memchr+0x74>
d0082148:	f010 0f07 	tst.w	r0, #7
d008214c:	b342      	cbz	r2, d00821a0 <memchr+0x70>
d008214e:	d1f6      	bne.n	d008213e <memchr+0xe>
d0082150:	b4f0      	push	{r4, r5, r6, r7}
d0082152:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0082156:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d008215a:	f022 0407 	bic.w	r4, r2, #7
d008215e:	f07f 0700 	mvns.w	r7, #0
d0082162:	2300      	movs	r3, #0
d0082164:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0082168:	3c08      	subs	r4, #8
d008216a:	ea85 0501 	eor.w	r5, r5, r1
d008216e:	ea86 0601 	eor.w	r6, r6, r1
d0082172:	fa85 f547 	uadd8	r5, r5, r7
d0082176:	faa3 f587 	sel	r5, r3, r7
d008217a:	fa86 f647 	uadd8	r6, r6, r7
d008217e:	faa5 f687 	sel	r6, r5, r7
d0082182:	b98e      	cbnz	r6, d00821a8 <memchr+0x78>
d0082184:	d1ee      	bne.n	d0082164 <memchr+0x34>
d0082186:	bcf0      	pop	{r4, r5, r6, r7}
d0082188:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d008218c:	f002 0207 	and.w	r2, r2, #7
d0082190:	b132      	cbz	r2, d00821a0 <memchr+0x70>
d0082192:	f810 3b01 	ldrb.w	r3, [r0], #1
d0082196:	3a01      	subs	r2, #1
d0082198:	ea83 0301 	eor.w	r3, r3, r1
d008219c:	b113      	cbz	r3, d00821a4 <memchr+0x74>
d008219e:	d1f8      	bne.n	d0082192 <memchr+0x62>
d00821a0:	2000      	movs	r0, #0
d00821a2:	4770      	bx	lr
d00821a4:	3801      	subs	r0, #1
d00821a6:	4770      	bx	lr
d00821a8:	2d00      	cmp	r5, #0
d00821aa:	bf06      	itte	eq
d00821ac:	4635      	moveq	r5, r6
d00821ae:	3803      	subeq	r0, #3
d00821b0:	3807      	subne	r0, #7
d00821b2:	f015 0f01 	tst.w	r5, #1
d00821b6:	d107      	bne.n	d00821c8 <memchr+0x98>
d00821b8:	3001      	adds	r0, #1
d00821ba:	f415 7f80 	tst.w	r5, #256	; 0x100
d00821be:	bf02      	ittt	eq
d00821c0:	3001      	addeq	r0, #1
d00821c2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d00821c6:	3001      	addeq	r0, #1
d00821c8:	bcf0      	pop	{r4, r5, r6, r7}
d00821ca:	3801      	subs	r0, #1
d00821cc:	4770      	bx	lr
d00821ce:	bf00      	nop

d00821d0 <memcpy>:
d00821d0:	440a      	add	r2, r1
d00821d2:	4291      	cmp	r1, r2
d00821d4:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d00821d8:	d100      	bne.n	d00821dc <memcpy+0xc>
d00821da:	4770      	bx	lr
d00821dc:	b510      	push	{r4, lr}
d00821de:	f811 4b01 	ldrb.w	r4, [r1], #1
d00821e2:	f803 4f01 	strb.w	r4, [r3, #1]!
d00821e6:	4291      	cmp	r1, r2
d00821e8:	d1f9      	bne.n	d00821de <memcpy+0xe>
d00821ea:	bd10      	pop	{r4, pc}

d00821ec <memmove>:
d00821ec:	4288      	cmp	r0, r1
d00821ee:	b510      	push	{r4, lr}
d00821f0:	eb01 0402 	add.w	r4, r1, r2
d00821f4:	d902      	bls.n	d00821fc <memmove+0x10>
d00821f6:	4284      	cmp	r4, r0
d00821f8:	4623      	mov	r3, r4
d00821fa:	d807      	bhi.n	d008220c <memmove+0x20>
d00821fc:	1e43      	subs	r3, r0, #1
d00821fe:	42a1      	cmp	r1, r4
d0082200:	d008      	beq.n	d0082214 <memmove+0x28>
d0082202:	f811 2b01 	ldrb.w	r2, [r1], #1
d0082206:	f803 2f01 	strb.w	r2, [r3, #1]!
d008220a:	e7f8      	b.n	d00821fe <memmove+0x12>
d008220c:	4402      	add	r2, r0
d008220e:	4601      	mov	r1, r0
d0082210:	428a      	cmp	r2, r1
d0082212:	d100      	bne.n	d0082216 <memmove+0x2a>
d0082214:	bd10      	pop	{r4, pc}
d0082216:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d008221a:	f802 4d01 	strb.w	r4, [r2, #-1]!
d008221e:	e7f7      	b.n	d0082210 <memmove+0x24>

d0082220 <_realloc_r>:
d0082220:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0082222:	4607      	mov	r7, r0
d0082224:	4614      	mov	r4, r2
d0082226:	460e      	mov	r6, r1
d0082228:	b921      	cbnz	r1, d0082234 <_realloc_r+0x14>
d008222a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d008222e:	4611      	mov	r1, r2
d0082230:	f7ff b8c8 	b.w	d00813c4 <_malloc_r>
d0082234:	b922      	cbnz	r2, d0082240 <_realloc_r+0x20>
d0082236:	f7ff f875 	bl	d0081324 <_free_r>
d008223a:	4625      	mov	r5, r4
d008223c:	4628      	mov	r0, r5
d008223e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0082240:	f000 f826 	bl	d0082290 <_malloc_usable_size_r>
d0082244:	42a0      	cmp	r0, r4
d0082246:	d20f      	bcs.n	d0082268 <_realloc_r+0x48>
d0082248:	4621      	mov	r1, r4
d008224a:	4638      	mov	r0, r7
d008224c:	f7ff f8ba 	bl	d00813c4 <_malloc_r>
d0082250:	4605      	mov	r5, r0
d0082252:	2800      	cmp	r0, #0
d0082254:	d0f2      	beq.n	d008223c <_realloc_r+0x1c>
d0082256:	4631      	mov	r1, r6
d0082258:	4622      	mov	r2, r4
d008225a:	f7ff ffb9 	bl	d00821d0 <memcpy>
d008225e:	4631      	mov	r1, r6
d0082260:	4638      	mov	r0, r7
d0082262:	f7ff f85f 	bl	d0081324 <_free_r>
d0082266:	e7e9      	b.n	d008223c <_realloc_r+0x1c>
d0082268:	4635      	mov	r5, r6
d008226a:	e7e7      	b.n	d008223c <_realloc_r+0x1c>

d008226c <_read_r>:
d008226c:	b538      	push	{r3, r4, r5, lr}
d008226e:	4d07      	ldr	r5, [pc, #28]	; (d008228c <_read_r+0x20>)
d0082270:	4604      	mov	r4, r0
d0082272:	4608      	mov	r0, r1
d0082274:	4611      	mov	r1, r2
d0082276:	2200      	movs	r2, #0
d0082278:	602a      	str	r2, [r5, #0]
d008227a:	461a      	mov	r2, r3
d008227c:	f7fd ff28 	bl	d00800d0 <_read>
d0082280:	1c43      	adds	r3, r0, #1
d0082282:	d102      	bne.n	d008228a <_read_r+0x1e>
d0082284:	682b      	ldr	r3, [r5, #0]
d0082286:	b103      	cbz	r3, d008228a <_read_r+0x1e>
d0082288:	6023      	str	r3, [r4, #0]
d008228a:	bd38      	pop	{r3, r4, r5, pc}
d008228c:	d0095450 	.word	0xd0095450

d0082290 <_malloc_usable_size_r>:
d0082290:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0082294:	1f18      	subs	r0, r3, #4
d0082296:	2b00      	cmp	r3, #0
d0082298:	bfbc      	itt	lt
d008229a:	580b      	ldrlt	r3, [r1, r0]
d008229c:	18c0      	addlt	r0, r0, r3
d008229e:	4770      	bx	lr
d00822a0:	42444953 	.word	0x42444953
d00822a4:	4320584f 	.word	0x4320584f
d00822a8:	44205452 	.word	0x44205452
d00822ac:	004f4d45 	.word	0x004f4d45
d00822b0:	49424752 	.word	0x49424752
d00822b4:	30323320 	.word	0x30323320
d00822b8:	30343278 	.word	0x30343278
d00822bc:	48303520 	.word	0x48303520
d00822c0:	0000005a 	.word	0x0000005a
d00822c4:	20545243 	.word	0x20545243
d00822c8:	20495041 	.word	0x20495041
d00822cc:	76616e75 	.word	0x76616e75
d00822d0:	616c6961 	.word	0x616c6961
d00822d4:	0a656c62 	.word	0x0a656c62
d00822d8:	00000000 	.word	0x00000000
d00822dc:	4d415246 	.word	0x4d415246
d00822e0:	6c252045 	.word	0x6c252045
d00822e4:	48202075 	.word	0x48202075
d00822e8:	20444c4f 	.word	0x20444c4f
d00822ec:	45524946 	.word	0x45524946
d00822f0:	204b4f2b 	.word	0x204b4f2b
d00822f4:	45204f54 	.word	0x45204f54
d00822f8:	00544958 	.word	0x00544958

d00822fc <bars>:
d00822fc:	03020100 07060504 0b0a0908 0f0e0d0c     ................

d008230c <font_8x8_32_90>:
	...
d0082314:	5f000000 0000005f 00030300 00000303     ...__...........
d0082324:	147f7f14 00147f7f 6b2e2400 00123a6b     .........$.kk:..
d0082334:	18366a4c 0032566c 594f7e30 40683a77     Lj6.lV2.0~OYw:h@
d0082344:	07040000 00000003 3e1c0000 00004163     ...........>cA..
d0082354:	63410000 00001c3e 1c3e2a08 082a3e1c     ..Ac>....*>..>*.
d0082364:	3e080800 0008083e e0800000 00000060     ...>>.......`...
d0082374:	08080800 00080808 00000000 00006060     ............``..
d0082384:	18306040 0103060c 597f3e00 003e7f4d     @`0......>.YM.>.
d0082394:	7f060400 0000007f 71634200 00464f59     .........BcqYOF.
d00823a4:	49632200 00367f49 13161c18 00107f7f     ."cII.6.........
d00823b4:	45672700 00397d45 4b7e3c00 00307949     .'gEE}9..<~KIy0.
d00823c4:	71010100 00070f79 497f3600 00367f49     ...qy....6.II.6.
d00823d4:	494f0600 001e3f69 66000000 00000066     ..OIi?.....ff...
d00823e4:	e6800000 00000066 14080800 00222214     ....f........"".
d00823f4:	14141400 00141414 14222200 00080814     ........."".....
d0082404:	51030200 00060f59 5d417f3e 001e1f55     ...QY...>.A]U...
d0082414:	097f7e00 007e7f09 497f7f00 00367f49     .~....~....II.6.
d0082424:	633e1c00 00414141 417f7f00 001c3e63     ..>cAAA....Ac>..
d0082434:	497f7f00 00414149 097f7f00 00010109     ...IIAA.........
d0082444:	417f3e00 007a7b49 087f7f00 007f7f08     .>.AI{z.........
d0082454:	7f410000 0000417f 40602000 003f7f40     ..A..A... `@@.?.
d0082464:	1c087f7f 00416336 407f7f00 00404040     ....6cA....@@@@.
d0082474:	0c067f7f 007f7f06 0c067f7f 007f7f18     ................
d0082484:	417f3e00 003e7f41 097f7f00 00060f09     .>.AA.>.........
d0082494:	61417f3e 00407e7f 097f7f00 00667f19     >.Aa.~@.......f.
d00824a4:	4d6f2600 00327b59 7f010100 0001017f     .&oMY{2.........
d00824b4:	407f3f00 003f7f40 703f0f00 000f3f70     .?.@@.?...?pp?..
d00824c4:	18307f7f 007f7f30 1c366341 4163361c     ..0.0...Ac6..6cA
d00824d4:	7c060301 0103067c 4d597161 00414347     ...||...aqYMGCA.

d00824e4 <lcd_msg_bottom>:
d00824e4:	73657250 49462073 2b204552 204b4f20     Press FIRE + OK 
d00824f4:	65206f74 00746978                       to exit.

d00824fc <lcd_msg_top>:
d00824fc:	20545243 6f6d6564 6e757220 676e696e     CRT demo running
d008250c:	00000000                                ....

d0082510 <_global_impure_ptr>:
d0082510:	d00825b8                                .%..

d0082514 <__sf_fake_stderr>:
	...

d0082534 <__sf_fake_stdin>:
	...

d0082554 <__sf_fake_stdout>:
	...
d0082574:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d0082584:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d0082594:	31300046 35343332 39383736 64636261     F.0123456789abcd
d00825a4:	                                         ef.

Disassembly of section .init:

d00825a8 <_init>:
d00825a8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00825aa:	bf00      	nop

Disassembly of section .fini:

d00825ac <_fini>:
d00825ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00825ae:	bf00      	nop
