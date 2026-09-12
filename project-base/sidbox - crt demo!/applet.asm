
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
d008001e:	f001 fae5 	bl	d00815ec <setbuf>
d0080022:	6833      	ldr	r3, [r6, #0]
d0080024:	2100      	movs	r1, #0
d0080026:	68d8      	ldr	r0, [r3, #12]
d0080028:	f001 fae0 	bl	d00815ec <setbuf>
d008002c:	4629      	mov	r1, r5
d008002e:	4620      	mov	r0, r4
d0080030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0080034:	f000 ba14 	b.w	d0080460 <main>
d0080038:	d0083734 	.word	0xd0083734

d008003c <gfx_createBitmap>:
d008003c:	b510      	push	{r4, lr}
d008003e:	4604      	mov	r4, r0
d0080040:	fb01 f002 	mul.w	r0, r1, r2
d0080044:	b292      	uxth	r2, r2
d0080046:	80a1      	strh	r1, [r4, #4]
d0080048:	60e0      	str	r0, [r4, #12]
d008004a:	80e2      	strh	r2, [r4, #6]
d008004c:	8122      	strh	r2, [r4, #8]
d008004e:	f001 fa13 	bl	d0081478 <malloc>
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
d0080064:	d0098620 	.word	0xd0098620
d0080068:	d0600000 	.word	0xd0600000
d008006c:	d00965e0 	.word	0xd00965e0

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
d00800b8:	f001 f9d8 	bl	d008146c <__errno>
d00800bc:	2209      	movs	r2, #9
d00800be:	4603      	mov	r3, r0
d00800c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800c4:	601a      	str	r2, [r3, #0]
d00800c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00800c8:	d00837a4 	.word	0xd00837a4
d00800cc:	2001f000 	.word	0x2001f000

d00800d0 <_read>:
d00800d0:	b508      	push	{r3, lr}
d00800d2:	f001 f9cb 	bl	d008146c <__errno>
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
d008011e:	f001 f9a5 	bl	d008146c <__errno>
d0080122:	220c      	movs	r2, #12
d0080124:	4603      	mov	r3, r0
d0080126:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008012a:	601a      	str	r2, [r3, #0]
d008012c:	bd10      	pop	{r4, pc}
d008012e:	bf00      	nop
d0080130:	d00837a0 	.word	0xd00837a0
d0080134:	d0098620 	.word	0xd0098620
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
d00802b0:	d00837c0 	.word	0xd00837c0

d00802b4 <draw_lcd_centered>:
d00802b4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00802b8:	b084      	sub	sp, #16
d00802ba:	4d19      	ldr	r5, [pc, #100]	; (d0080320 <draw_lcd_centered+0x6c>)
d00802bc:	460f      	mov	r7, r1
d00802be:	4690      	mov	r8, r2
d00802c0:	9003      	str	r0, [sp, #12]
d00802c2:	4608      	mov	r0, r1
d00802c4:	f001 fa94 	bl	d00817f0 <strlen>
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
d0080458:	d008248c 	.word	0xd008248c
d008045c:	d00837c0 	.word	0xd00837c0

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
d0080724:	d00963e0 	.word	0xd00963e0
d0080728:	d008267c 	.word	0xd008267c
d008072c:	d0082664 	.word	0xd0082664
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
d00807a4:	f000 864d 	beq.w	d0081442 <main+0xfe2>
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
d00807c4:	f000 863d 	beq.w	d0081442 <main+0xfe2>
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
d008089c:	f000 8522 	beq.w	d00812e4 <main+0xe84>
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
d00808bc:	f000 fde4 	bl	d0081488 <memset>
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
d00808f6:	f000 fdc7 	bl	d0081488 <memset>
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
d0080972:	f000 fd89 	bl	d0081488 <memset>
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
d008099c:	f000 fd74 	bl	d0081488 <memset>
d00809a0:	4b0e      	ldr	r3, [pc, #56]	; (d00809dc <main+0x57c>)
d00809a2:	4a0c      	ldr	r2, [pc, #48]	; (d00809d4 <main+0x574>)
d00809a4:	f04f 0eb8 	mov.w	lr, #184	; 0xb8
d00809a8:	f8d3 a000 	ldr.w	sl, [r3]
d00809ac:	f8df 8044 	ldr.w	r8, [pc, #68]	; d00809f4 <main+0x594>
d00809b0:	f8df c024 	ldr.w	ip, [pc, #36]	; d00809d8 <main+0x578>
d00809b4:	e028      	b.n	d0080a08 <main+0x5a8>
d00809b6:	bf00      	nop
d00809b8:	d00963c0 	.word	0xd00963c0
d00809bc:	d00837c0 	.word	0xd00837c0
d00809c0:	00f00140 	.word	0x00f00140
d00809c4:	d0082690 	.word	0xd0082690
d00809c8:	d0096600 	.word	0xd0096600
d00809cc:	2001f000 	.word	0x2001f000
d00809d0:	b21642c9 	.word	0xb21642c9
d00809d4:	d0096400 	.word	0xd0096400
d00809d8:	aaaaaaab 	.word	0xaaaaaaab
d00809dc:	d0083730 	.word	0xd0083730
d00809e0:	d00965b0 	.word	0xd00965b0
d00809e4:	d00963c0 	.word	0xd00963c0
d00809e8:	d00837d8 	.word	0xd00837d8
d00809ec:	d00837e0 	.word	0xd00837e0
d00809f0:	d008cde0 	.word	0xd008cde0
d00809f4:	cccccccd 	.word	0xcccccccd
d00809f8:	d008247c 	.word	0xd008247c
d00809fc:	8013      	strh	r3, [r2, #0]
d00809fe:	3206      	adds	r2, #6
d0080a00:	4ba6      	ldr	r3, [pc, #664]	; (d0080c9c <main+0x83c>)
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
d0080aae:	4c7c      	ldr	r4, [pc, #496]	; (d0080ca0 <main+0x840>)
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
d0080af8:	f200 80c3 	bhi.w	d0080c82 <main+0x822>
d0080afc:	2906      	cmp	r1, #6
d0080afe:	bf8c      	ite	hi
d0080b00:	230d      	movhi	r3, #13
d0080b02:	2305      	movls	r3, #5
d0080b04:	7113      	strb	r3, [r2, #4]
d0080b06:	3206      	adds	r2, #6
d0080b08:	4b64      	ldr	r3, [pc, #400]	; (d0080c9c <main+0x83c>)
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
d0080b32:	4a5c      	ldr	r2, [pc, #368]	; (d0080ca4 <main+0x844>)
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
d0080b5c:	4b52      	ldr	r3, [pc, #328]	; (d0080ca8 <main+0x848>)
d0080b5e:	f01a 0f80 	tst.w	sl, #128	; 0x80
d0080b62:	ea4f 72e8 	mov.w	r2, r8, asr #31
d0080b66:	4851      	ldr	r0, [pc, #324]	; (d0080cac <main+0x84c>)
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
d0080bb4:	483d      	ldr	r0, [pc, #244]	; (d0080cac <main+0x84c>)
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
d0080bd4:	f340 836b 	ble.w	d00812ae <main+0xe4e>
d0080bd8:	eba2 020e 	sub.w	r2, r2, lr
d0080bdc:	2101      	movs	r1, #1
d0080bde:	9107      	str	r1, [sp, #28]
d0080be0:	42bb      	cmp	r3, r7
d0080be2:	b291      	uxth	r1, r2
d0080be4:	b212      	sxth	r2, r2
d0080be6:	9104      	str	r1, [sp, #16]
d0080be8:	9206      	str	r2, [sp, #24]
d0080bea:	f340 835c 	ble.w	d00812a6 <main+0xe46>
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
d0080c08:	db23      	blt.n	d0080c52 <main+0x7f2>
d0080c0a:	f240 113f 	movw	r1, #319	; 0x13f
d0080c0e:	4288      	cmp	r0, r1
d0080c10:	bf94      	ite	ls
d0080c12:	2500      	movls	r5, #0
d0080c14:	2501      	movhi	r5, #1
d0080c16:	2fef      	cmp	r7, #239	; 0xef
d0080c18:	bfc8      	it	gt
d0080c1a:	f045 0501 	orrgt.w	r5, r5, #1
d0080c1e:	bb9d      	cbnz	r5, d0080c88 <main+0x828>
d0080c20:	21f0      	movs	r1, #240	; 0xf0
d0080c22:	fb1e 7601 	smlabb	r6, lr, r1, r7
d0080c26:	f04f 010c 	mov.w	r1, #12
d0080c2a:	f80b 1006 	strb.w	r1, [fp, r6]
d0080c2e:	1c41      	adds	r1, r0, #1
d0080c30:	b209      	sxth	r1, r1
d0080c32:	f240 163f 	movw	r6, #319	; 0x13f
d0080c36:	42b1      	cmp	r1, r6
d0080c38:	dc07      	bgt.n	d0080c4a <main+0x7ea>
d0080c3a:	b935      	cbnz	r5, d0080c4a <main+0x7ea>
d0080c3c:	25f0      	movs	r5, #240	; 0xf0
d0080c3e:	fb11 7105 	smlabb	r1, r1, r5, r7
d0080c42:	f04f 050c 	mov.w	r5, #12
d0080c46:	f80b 5001 	strb.w	r5, [fp, r1]
d0080c4a:	45f4      	cmp	ip, lr
d0080c4c:	d101      	bne.n	d0080c52 <main+0x7f2>
d0080c4e:	42bb      	cmp	r3, r7
d0080c50:	d02e      	beq.n	d0080cb0 <main+0x850>
d0080c52:	0051      	lsls	r1, r2, #1
d0080c54:	b209      	sxth	r1, r1
d0080c56:	42a1      	cmp	r1, r4
d0080c58:	db07      	blt.n	d0080c6a <main+0x80a>
d0080c5a:	9d05      	ldr	r5, [sp, #20]
d0080c5c:	442a      	add	r2, r5
d0080c5e:	9d07      	ldr	r5, [sp, #28]
d0080c60:	4428      	add	r0, r5
d0080c62:	b212      	sxth	r2, r2
d0080c64:	fa0f fe80 	sxth.w	lr, r0
d0080c68:	b280      	uxth	r0, r0
d0080c6a:	9d06      	ldr	r5, [sp, #24]
d0080c6c:	42a9      	cmp	r1, r5
d0080c6e:	dcca      	bgt.n	d0080c06 <main+0x7a6>
d0080c70:	9904      	ldr	r1, [sp, #16]
d0080c72:	440a      	add	r2, r1
d0080c74:	9908      	ldr	r1, [sp, #32]
d0080c76:	440f      	add	r7, r1
d0080c78:	b212      	sxth	r2, r2
d0080c7a:	b23f      	sxth	r7, r7
d0080c7c:	2f00      	cmp	r7, #0
d0080c7e:	dac4      	bge.n	d0080c0a <main+0x7aa>
d0080c80:	e7e7      	b.n	d0080c52 <main+0x7f2>
d0080c82:	230f      	movs	r3, #15
d0080c84:	7113      	strb	r3, [r2, #4]
d0080c86:	e73e      	b.n	d0080b06 <main+0x6a6>
d0080c88:	1c41      	adds	r1, r0, #1
d0080c8a:	b209      	sxth	r1, r1
d0080c8c:	2900      	cmp	r1, #0
d0080c8e:	dbdc      	blt.n	d0080c4a <main+0x7ea>
d0080c90:	2fef      	cmp	r7, #239	; 0xef
d0080c92:	bfd4      	ite	le
d0080c94:	2500      	movle	r5, #0
d0080c96:	2501      	movgt	r5, #1
d0080c98:	e7cb      	b.n	d0080c32 <main+0x7d2>
d0080c9a:	bf00      	nop
d0080c9c:	d00965b0 	.word	0xd00965b0
d0080ca0:	b21642c9 	.word	0xb21642c9
d0080ca4:	d0083730 	.word	0xd0083730
d0080ca8:	ac769185 	.word	0xac769185
d0080cac:	02040811 	.word	0x02040811
d0080cb0:	9a03      	ldr	r2, [sp, #12]
d0080cb2:	2a60      	cmp	r2, #96	; 0x60
d0080cb4:	f47f af42 	bne.w	d0080b3c <main+0x6dc>
d0080cb8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d0080cba:	980b      	ldr	r0, [sp, #44]	; 0x2c
d0080cbc:	f003 01fe 	and.w	r1, r3, #254	; 0xfe
d0080cc0:	061e      	lsls	r6, r3, #24
d0080cc2:	9b10      	ldr	r3, [sp, #64]	; 0x40
d0080cc4:	bf4c      	ite	mi
d0080cc6:	f1c1 01ff 	rsbmi	r1, r1, #255	; 0xff
d0080cca:	b209      	sxthpl	r1, r1
d0080ccc:	4403      	add	r3, r0
d0080cce:	f8dd a044 	ldr.w	sl, [sp, #68]	; 0x44
d0080cd2:	0209      	lsls	r1, r1, #8
d0080cd4:	461a      	mov	r2, r3
d0080cd6:	b2db      	uxtb	r3, r3
d0080cd8:	0615      	lsls	r5, r2, #24
d0080cda:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d0080cdc:	f102 0240 	add.w	r2, r2, #64	; 0x40
d0080ce0:	bf4c      	ite	mi
d0080ce2:	f1c3 03ff 	rsbmi	r3, r3, #255	; 0xff
d0080ce6:	b21b      	sxthpl	r3, r3
d0080ce8:	f002 00fe 	and.w	r0, r2, #254	; 0xfe
d0080cec:	0614      	lsls	r4, r2, #24
d0080cee:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080cf2:	4cbe      	ldr	r4, [pc, #760]	; (d0080fec <main+0xb8c>)
d0080cf4:	bf4c      	ite	mi
d0080cf6:	f1c0 02ff 	rsbmi	r2, r0, #255	; 0xff
d0080cfa:	b202      	sxthpl	r2, r0
d0080cfc:	9204      	str	r2, [sp, #16]
d0080cfe:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d0080d00:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d0080d04:	b2d0      	uxtb	r0, r2
d0080d06:	0612      	lsls	r2, r2, #24
d0080d08:	bf4c      	ite	mi
d0080d0a:	f1c0 02ff 	rsbmi	r2, r0, #255	; 0xff
d0080d0e:	b202      	sxthpl	r2, r0
d0080d10:	ebc3 00c3 	rsb	r0, r3, r3, lsl #3
d0080d14:	ebc2 05c2 	rsb	r5, r2, r2, lsl #3
d0080d18:	00c0      	lsls	r0, r0, #3
d0080d1a:	eb02 0385 	add.w	r3, r2, r5, lsl #2
d0080d1e:	fba4 5201 	umull	r5, r2, r4, r1
d0080d22:	fba4 5700 	umull	r5, r7, r4, r0
d0080d26:	009b      	lsls	r3, r3, #2
d0080d28:	1a89      	subs	r1, r1, r2
d0080d2a:	1bc0      	subs	r0, r0, r7
d0080d2c:	fba4 5403 	umull	r5, r4, r4, r3
d0080d30:	eb02 0151 	add.w	r1, r2, r1, lsr #1
d0080d34:	eb07 0750 	add.w	r7, r7, r0, lsr #1
d0080d38:	1b1b      	subs	r3, r3, r4
d0080d3a:	f3c1 158f 	ubfx	r5, r1, #6, #16
d0080d3e:	f3c7 178f 	ubfx	r7, r7, #6, #16
d0080d42:	eb04 0453 	add.w	r4, r4, r3, lsr #1
d0080d46:	f105 0221 	add.w	r2, r5, #33	; 0x21
d0080d4a:	f107 031c 	add.w	r3, r7, #28
d0080d4e:	f3c4 118f 	ubfx	r1, r4, #6, #16
d0080d52:	b214      	sxth	r4, r2
d0080d54:	b21b      	sxth	r3, r3
d0080d56:	f101 0946 	add.w	r9, r1, #70	; 0x46
d0080d5a:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080d5e:	9103      	str	r1, [sp, #12]
d0080d60:	fa0f f989 	sxth.w	r9, r9
d0080d64:	da25      	bge.n	d0080db2 <main+0x952>
d0080d66:	2bef      	cmp	r3, #239	; 0xef
d0080d68:	dc23      	bgt.n	d0080db2 <main+0x952>
d0080d6a:	f105 0839 	add.w	r8, r5, #57	; 0x39
d0080d6e:	f107 022e 	add.w	r2, r7, #46	; 0x2e
d0080d72:	fa0f f888 	sxth.w	r8, r8
d0080d76:	b212      	sxth	r2, r2
d0080d78:	f5b8 7fa0 	cmp.w	r8, #320	; 0x140
d0080d7c:	bfa8      	it	ge
d0080d7e:	f44f 78a0 	movge.w	r8, #320	; 0x140
d0080d82:	2af0      	cmp	r2, #240	; 0xf0
d0080d84:	bfa8      	it	ge
d0080d86:	22f0      	movge	r2, #240	; 0xf0
d0080d88:	45a0      	cmp	r8, r4
d0080d8a:	dd12      	ble.n	d0080db2 <main+0x952>
d0080d8c:	21f0      	movs	r1, #240	; 0xf0
d0080d8e:	1ad2      	subs	r2, r2, r3
d0080d90:	9505      	str	r5, [sp, #20]
d0080d92:	fb14 3301 	smlabb	r3, r4, r1, r3
d0080d96:	4615      	mov	r5, r2
d0080d98:	eb0b 0603 	add.w	r6, fp, r3
d0080d9c:	3401      	adds	r4, #1
d0080d9e:	4630      	mov	r0, r6
d0080da0:	462a      	mov	r2, r5
d0080da2:	210b      	movs	r1, #11
d0080da4:	b224      	sxth	r4, r4
d0080da6:	36f0      	adds	r6, #240	; 0xf0
d0080da8:	f000 fb6e 	bl	d0081488 <memset>
d0080dac:	45a0      	cmp	r8, r4
d0080dae:	dcf5      	bgt.n	d0080d9c <main+0x93c>
d0080db0:	9d05      	ldr	r5, [sp, #20]
d0080db2:	f105 0425 	add.w	r4, r5, #37	; 0x25
d0080db6:	f107 0320 	add.w	r3, r7, #32
d0080dba:	b224      	sxth	r4, r4
d0080dbc:	b21b      	sxth	r3, r3
d0080dbe:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080dc2:	da23      	bge.n	d0080e0c <main+0x9ac>
d0080dc4:	2bef      	cmp	r3, #239	; 0xef
d0080dc6:	dc21      	bgt.n	d0080e0c <main+0x9ac>
d0080dc8:	3535      	adds	r5, #53	; 0x35
d0080dca:	372a      	adds	r7, #42	; 0x2a
d0080dcc:	b22d      	sxth	r5, r5
d0080dce:	fa0f f887 	sxth.w	r8, r7
d0080dd2:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d0080dd6:	bfa8      	it	ge
d0080dd8:	f44f 75a0 	movge.w	r5, #320	; 0x140
d0080ddc:	f1b8 0ff0 	cmp.w	r8, #240	; 0xf0
d0080de0:	bfa8      	it	ge
d0080de2:	f04f 08f0 	movge.w	r8, #240	; 0xf0
d0080de6:	42a5      	cmp	r5, r4
d0080de8:	dd10      	ble.n	d0080e0c <main+0x9ac>
d0080dea:	27f0      	movs	r7, #240	; 0xf0
d0080dec:	eba8 0803 	sub.w	r8, r8, r3
d0080df0:	fb14 3307 	smlabb	r3, r4, r7, r3
d0080df4:	eb0b 0703 	add.w	r7, fp, r3
d0080df8:	3401      	adds	r4, #1
d0080dfa:	4638      	mov	r0, r7
d0080dfc:	4642      	mov	r2, r8
d0080dfe:	210f      	movs	r1, #15
d0080e00:	b224      	sxth	r4, r4
d0080e02:	37f0      	adds	r7, #240	; 0xf0
d0080e04:	f000 fb40 	bl	d0081488 <memset>
d0080e08:	42a5      	cmp	r5, r4
d0080e0a:	dcf5      	bgt.n	d0080df8 <main+0x998>
d0080e0c:	9b04      	ldr	r3, [sp, #16]
d0080e0e:	2212      	movs	r2, #18
d0080e10:	4c76      	ldr	r4, [pc, #472]	; (d0080fec <main+0xb8c>)
d0080e12:	4649      	mov	r1, r9
d0080e14:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0080e18:	230e      	movs	r3, #14
d0080e1a:	0140      	lsls	r0, r0, #5
d0080e1c:	fba4 5400 	umull	r5, r4, r4, r0
d0080e20:	1b00      	subs	r0, r0, r4
d0080e22:	eb04 0450 	add.w	r4, r4, r0, lsr #1
d0080e26:	f3c4 148f 	ubfx	r4, r4, #6, #16
d0080e2a:	f104 00c8 	add.w	r0, r4, #200	; 0xc8
d0080e2e:	f104 05c6 	add.w	r5, r4, #198	; 0xc6
d0080e32:	b200      	sxth	r0, r0
d0080e34:	b22d      	sxth	r5, r5
d0080e36:	9004      	str	r0, [sp, #16]
d0080e38:	f7ff f980 	bl	d008013c <draw_circle>
d0080e3c:	2306      	movs	r3, #6
d0080e3e:	9804      	ldr	r0, [sp, #16]
d0080e40:	4649      	mov	r1, r9
d0080e42:	220a      	movs	r2, #10
d0080e44:	f7ff f97a 	bl	d008013c <draw_circle>
d0080e48:	9b03      	ldr	r3, [sp, #12]
d0080e4a:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d0080e4e:	f103 0344 	add.w	r3, r3, #68	; 0x44
d0080e52:	b21b      	sxth	r3, r3
d0080e54:	da20      	bge.n	d0080e98 <main+0xa38>
d0080e56:	2bef      	cmp	r3, #239	; 0xef
d0080e58:	dc1e      	bgt.n	d0080e98 <main+0xa38>
d0080e5a:	34cb      	adds	r4, #203	; 0xcb
d0080e5c:	9e03      	ldr	r6, [sp, #12]
d0080e5e:	b224      	sxth	r4, r4
d0080e60:	3649      	adds	r6, #73	; 0x49
d0080e62:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080e66:	b237      	sxth	r7, r6
d0080e68:	bfa8      	it	ge
d0080e6a:	f44f 74a0 	movge.w	r4, #320	; 0x140
d0080e6e:	2ff0      	cmp	r7, #240	; 0xf0
d0080e70:	bfa8      	it	ge
d0080e72:	27f0      	movge	r7, #240	; 0xf0
d0080e74:	42ac      	cmp	r4, r5
d0080e76:	dd0f      	ble.n	d0080e98 <main+0xa38>
d0080e78:	26f0      	movs	r6, #240	; 0xf0
d0080e7a:	1aff      	subs	r7, r7, r3
d0080e7c:	fb15 3306 	smlabb	r3, r5, r6, r3
d0080e80:	eb0b 0603 	add.w	r6, fp, r3
d0080e84:	3501      	adds	r5, #1
d0080e86:	4630      	mov	r0, r6
d0080e88:	463a      	mov	r2, r7
d0080e8a:	210a      	movs	r1, #10
d0080e8c:	b22d      	sxth	r5, r5
d0080e8e:	36f0      	adds	r6, #240	; 0xf0
d0080e90:	f000 fafa 	bl	d0081488 <memset>
d0080e94:	42ac      	cmp	r4, r5
d0080e96:	dcf5      	bgt.n	d0080e84 <main+0xa24>
d0080e98:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0080e9a:	20bc      	movs	r0, #188	; 0xbc
d0080e9c:	4a54      	ldr	r2, [pc, #336]	; (d0080ff0 <main+0xb90>)
d0080e9e:	210f      	movs	r1, #15
d0080ea0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080ea4:	fba2 4203 	umull	r4, r2, r2, r3
d0080ea8:	09d2      	lsrs	r2, r2, #7
d0080eaa:	fb00 3212 	mls	r2, r0, r2, r3
d0080eae:	4851      	ldr	r0, [pc, #324]	; (d0080ff4 <main+0xb94>)
d0080eb0:	3220      	adds	r2, #32
d0080eb2:	b2d2      	uxtb	r2, r2
d0080eb4:	eb0b 0302 	add.w	r3, fp, r2
d0080eb8:	4402      	add	r2, r0
d0080eba:	f803 1bf0 	strb.w	r1, [r3], #240
d0080ebe:	4293      	cmp	r3, r2
d0080ec0:	d1fb      	bne.n	d0080eba <main+0xa5a>
d0080ec2:	2000      	movs	r0, #0
d0080ec4:	4e4c      	ldr	r6, [pc, #304]	; (d0080ff8 <main+0xb98>)
d0080ec6:	25bc      	movs	r5, #188	; 0xbc
d0080ec8:	ea8a 334a 	eor.w	r3, sl, sl, lsl #13
d0080ecc:	f000 0401 	and.w	r4, r0, #1
d0080ed0:	3001      	adds	r0, #1
d0080ed2:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0080ed6:	3408      	adds	r4, #8
d0080ed8:	281c      	cmp	r0, #28
d0080eda:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0080ede:	ea83 3a43 	eor.w	sl, r3, r3, lsl #13
d0080ee2:	fba6 1203 	umull	r1, r2, r6, r3
d0080ee6:	4942      	ldr	r1, [pc, #264]	; (d0080ff0 <main+0xb90>)
d0080ee8:	ea8a 4a5a 	eor.w	sl, sl, sl, lsr #17
d0080eec:	ea4f 2212 	mov.w	r2, r2, lsr #8
d0080ef0:	ea8a 1a4a 	eor.w	sl, sl, sl, lsl #5
d0080ef4:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d0080ef8:	fba1 710a 	umull	r7, r1, r1, sl
d0080efc:	eba3 1382 	sub.w	r3, r3, r2, lsl #6
d0080f00:	ea4f 11d1 	mov.w	r1, r1, lsr #7
d0080f04:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d0080f08:	fb05 a111 	mls	r1, r5, r1, sl
d0080f0c:	eb0b 1203 	add.w	r2, fp, r3, lsl #4
d0080f10:	f101 0320 	add.w	r3, r1, #32
d0080f14:	b29b      	uxth	r3, r3
d0080f16:	54d4      	strb	r4, [r2, r3]
d0080f18:	d1d6      	bne.n	d0080ec8 <main+0xa68>
d0080f1a:	4938      	ldr	r1, [pc, #224]	; (d0080ffc <main+0xb9c>)
d0080f1c:	f04f 3201 	mov.w	r2, #16843009	; 0x1010101
d0080f20:	4b37      	ldr	r3, [pc, #220]	; (d0081000 <main+0xba0>)
d0080f22:	f8c1 a000 	str.w	sl, [r1]
d0080f26:	f503 3196 	add.w	r1, r3, #76800	; 0x12c00
d0080f2a:	e9c3 2200 	strd	r2, r2, [r3]
d0080f2e:	e9c3 2202 	strd	r2, r2, [r3, #8]
d0080f32:	33f0      	adds	r3, #240	; 0xf0
d0080f34:	4299      	cmp	r1, r3
d0080f36:	d1f8      	bne.n	d0080f2a <main+0xaca>
d0080f38:	4b32      	ldr	r3, [pc, #200]	; (d0081004 <main+0xba4>)
d0080f3a:	2200      	movs	r2, #0
d0080f3c:	f503 4116 	add.w	r1, r3, #38400	; 0x9600
d0080f40:	601a      	str	r2, [r3, #0]
d0080f42:	33f0      	adds	r3, #240	; 0xf0
d0080f44:	f843 2cec 	str.w	r2, [r3, #-236]
d0080f48:	f843 2ce8 	str.w	r2, [r3, #-232]
d0080f4c:	428b      	cmp	r3, r1
d0080f4e:	d1f7      	bne.n	d0080f40 <main+0xae0>
d0080f50:	4b2d      	ldr	r3, [pc, #180]	; (d0081008 <main+0xba8>)
d0080f52:	2200      	movs	r2, #0
d0080f54:	492d      	ldr	r1, [pc, #180]	; (d008100c <main+0xbac>)
d0080f56:	601a      	str	r2, [r3, #0]
d0080f58:	33f0      	adds	r3, #240	; 0xf0
d0080f5a:	f843 2cec 	str.w	r2, [r3, #-236]
d0080f5e:	f843 2ce8 	str.w	r2, [r3, #-232]
d0080f62:	428b      	cmp	r3, r1
d0080f64:	d1f7      	bne.n	d0080f56 <main+0xaf6>
d0080f66:	4d2a      	ldr	r5, [pc, #168]	; (d0081010 <main+0xbb0>)
d0080f68:	2153      	movs	r1, #83	; 0x53
d0080f6a:	2408      	movs	r4, #8
d0080f6c:	e002      	b.n	d0080f74 <main+0xb14>
d0080f6e:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080f72:	d009      	beq.n	d0080f88 <main+0xb28>
d0080f74:	4620      	mov	r0, r4
d0080f76:	220f      	movs	r2, #15
d0080f78:	3408      	adds	r4, #8
d0080f7a:	f7ff f9d3 	bl	d0080324 <draw_text_cell.constprop.0>
d0080f7e:	f815 1f01 	ldrb.w	r1, [r5, #1]!
d0080f82:	b2a4      	uxth	r4, r4
d0080f84:	2900      	cmp	r1, #0
d0080f86:	d1f2      	bne.n	d0080f6e <main+0xb0e>
d0080f88:	4d22      	ldr	r5, [pc, #136]	; (d0081014 <main+0xbb4>)
d0080f8a:	2152      	movs	r1, #82	; 0x52
d0080f8c:	24b0      	movs	r4, #176	; 0xb0
d0080f8e:	e002      	b.n	d0080f96 <main+0xb36>
d0080f90:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080f94:	d009      	beq.n	d0080faa <main+0xb4a>
d0080f96:	4620      	mov	r0, r4
d0080f98:	220e      	movs	r2, #14
d0080f9a:	3408      	adds	r4, #8
d0080f9c:	f7ff f9c2 	bl	d0080324 <draw_text_cell.constprop.0>
d0080fa0:	f815 1f01 	ldrb.w	r1, [r5, #1]!
d0080fa4:	b2a4      	uxth	r4, r4
d0080fa6:	2900      	cmp	r1, #0
d0080fa8:	d1f2      	bne.n	d0080f90 <main+0xb30>
d0080faa:	4c1b      	ldr	r4, [pc, #108]	; (d0081018 <main+0xbb8>)
d0080fac:	2128      	movs	r1, #40	; 0x28
d0080fae:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0080fb0:	4a1a      	ldr	r2, [pc, #104]	; (d008101c <main+0xbbc>)
d0080fb2:	4620      	mov	r0, r4
d0080fb4:	f000 fbe8 	bl	d0081788 <sniprintf>
d0080fb8:	7823      	ldrb	r3, [r4, #0]
d0080fba:	2b00      	cmp	r3, #0
d0080fbc:	f000 80bc 	beq.w	d0081138 <main+0xcd8>
d0080fc0:	4620      	mov	r0, r4
d0080fc2:	f04f 0c08 	mov.w	ip, #8
d0080fc6:	f8df 8058 	ldr.w	r8, [pc, #88]	; d0081020 <main+0xbc0>
d0080fca:	260d      	movs	r6, #13
d0080fcc:	f1a3 0261 	sub.w	r2, r3, #97	; 0x61
d0080fd0:	2a19      	cmp	r2, #25
d0080fd2:	f200 8178 	bhi.w	d00812c6 <main+0xe66>
d0080fd6:	f1a3 0420 	sub.w	r4, r3, #32
d0080fda:	b2e4      	uxtb	r4, r4
d0080fdc:	3c20      	subs	r4, #32
d0080fde:	00e4      	lsls	r4, r4, #3
d0080fe0:	4444      	add	r4, r8
d0080fe2:	4661      	mov	r1, ip
d0080fe4:	1e65      	subs	r5, r4, #1
d0080fe6:	3407      	adds	r4, #7
d0080fe8:	e054      	b.n	d0081094 <main+0xc34>
d0080fea:	bf00      	nop
d0080fec:	02040811 	.word	0x02040811
d0080ff0:	ae4c415d 	.word	0xae4c415d
d0080ff4:	d00963c0 	.word	0xd00963c0
d0080ff8:	cccccccd 	.word	0xcccccccd
d0080ffc:	d0083730 	.word	0xd0083730
d0081000:	d00838a0 	.word	0xd00838a0
d0081004:	d0083b84 	.word	0xd0083b84
d0081008:	d008d544 	.word	0xd008d544
d008100c:	d0096004 	.word	0xd0096004
d0081010:	d0082420 	.word	0xd0082420
d0081014:	d0082430 	.word	0xd0082430
d0081018:	d00965b0 	.word	0xd00965b0
d008101c:	d008245c 	.word	0xd008245c
d0081020:	d008248c 	.word	0xd008248c
d0081024:	b20a      	sxth	r2, r1
d0081026:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d008102a:	da37      	bge.n	d008109c <main+0xc3c>
d008102c:	ebc2 1302 	rsb	r3, r2, r2, lsl #4
d0081030:	f017 0f02 	tst.w	r7, #2
d0081034:	eb0b 1e03 	add.w	lr, fp, r3, lsl #4
d0081038:	ea4f 1303 	mov.w	r3, r3, lsl #4
d008103c:	f88e 60e4 	strb.w	r6, [lr, #228]	; 0xe4
d0081040:	d137      	bne.n	d00810b2 <main+0xc52>
d0081042:	077b      	lsls	r3, r7, #29
d0081044:	d53b      	bpl.n	d00810be <main+0xc5e>
d0081046:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
d008104a:	0113      	lsls	r3, r2, #4
d008104c:	eb0b 0203 	add.w	r2, fp, r3
d0081050:	f882 60e6 	strb.w	r6, [r2, #230]	; 0xe6
d0081054:	073a      	lsls	r2, r7, #28
d0081056:	f140 8108 	bpl.w	d008126a <main+0xe0a>
d008105a:	eb0b 0203 	add.w	r2, fp, r3
d008105e:	f882 60e7 	strb.w	r6, [r2, #231]	; 0xe7
d0081062:	06fa      	lsls	r2, r7, #27
d0081064:	d53b      	bpl.n	d00810de <main+0xc7e>
d0081066:	eb0b 0203 	add.w	r2, fp, r3
d008106a:	f882 60e8 	strb.w	r6, [r2, #232]	; 0xe8
d008106e:	06ba      	lsls	r2, r7, #26
d0081070:	f140 810d 	bpl.w	d008128e <main+0xe2e>
d0081074:	eb0b 0203 	add.w	r2, fp, r3
d0081078:	f882 60e9 	strb.w	r6, [r2, #233]	; 0xe9
d008107c:	067a      	lsls	r2, r7, #25
d008107e:	d53f      	bpl.n	d0081100 <main+0xca0>
d0081080:	eb0b 0203 	add.w	r2, fp, r3
d0081084:	063f      	lsls	r7, r7, #24
d0081086:	f882 60ea 	strb.w	r6, [r2, #234]	; 0xea
d008108a:	d442      	bmi.n	d0081112 <main+0xcb2>
d008108c:	3101      	adds	r1, #1
d008108e:	42a5      	cmp	r5, r4
d0081090:	b289      	uxth	r1, r1
d0081092:	d045      	beq.n	d0081120 <main+0xcc0>
d0081094:	f815 7f01 	ldrb.w	r7, [r5, #1]!
d0081098:	07fb      	lsls	r3, r7, #31
d008109a:	d4c3      	bmi.n	d0081024 <main+0xbc4>
d008109c:	07bb      	lsls	r3, r7, #30
d008109e:	f140 80d9 	bpl.w	d0081254 <main+0xdf4>
d00810a2:	b20b      	sxth	r3, r1
d00810a4:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00810a8:	f280 80d4 	bge.w	d0081254 <main+0xdf4>
d00810ac:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d00810b0:	011b      	lsls	r3, r3, #4
d00810b2:	eb0b 0203 	add.w	r2, fp, r3
d00810b6:	f882 60e5 	strb.w	r6, [r2, #229]	; 0xe5
d00810ba:	077a      	lsls	r2, r7, #29
d00810bc:	d4c6      	bmi.n	d008104c <main+0xbec>
d00810be:	073b      	lsls	r3, r7, #28
d00810c0:	f140 80d3 	bpl.w	d008126a <main+0xe0a>
d00810c4:	b20b      	sxth	r3, r1
d00810c6:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00810ca:	da08      	bge.n	d00810de <main+0xc7e>
d00810cc:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d00810d0:	011b      	lsls	r3, r3, #4
d00810d2:	eb0b 0203 	add.w	r2, fp, r3
d00810d6:	f882 60e7 	strb.w	r6, [r2, #231]	; 0xe7
d00810da:	06fa      	lsls	r2, r7, #27
d00810dc:	d4c3      	bmi.n	d0081066 <main+0xc06>
d00810de:	06bb      	lsls	r3, r7, #26
d00810e0:	f140 80d5 	bpl.w	d008128e <main+0xe2e>
d00810e4:	b20b      	sxth	r3, r1
d00810e6:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00810ea:	f280 80e5 	bge.w	d00812b8 <main+0xe58>
d00810ee:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d00810f2:	011b      	lsls	r3, r3, #4
d00810f4:	eb0b 0203 	add.w	r2, fp, r3
d00810f8:	f882 60e9 	strb.w	r6, [r2, #233]	; 0xe9
d00810fc:	067a      	lsls	r2, r7, #25
d00810fe:	d4bf      	bmi.n	d0081080 <main+0xc20>
d0081100:	063f      	lsls	r7, r7, #24
d0081102:	d5c3      	bpl.n	d008108c <main+0xc2c>
d0081104:	b20b      	sxth	r3, r1
d0081106:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d008110a:	dabf      	bge.n	d008108c <main+0xc2c>
d008110c:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d0081110:	011b      	lsls	r3, r3, #4
d0081112:	445b      	add	r3, fp
d0081114:	3101      	adds	r1, #1
d0081116:	42a5      	cmp	r5, r4
d0081118:	b289      	uxth	r1, r1
d008111a:	f883 60eb 	strb.w	r6, [r3, #235]	; 0xeb
d008111e:	d1b9      	bne.n	d0081094 <main+0xc34>
d0081120:	f10c 0c08 	add.w	ip, ip, #8
d0081124:	f810 3f01 	ldrb.w	r3, [r0, #1]!
d0081128:	fa1f fc8c 	uxth.w	ip, ip
d008112c:	f5bc 7fa0 	cmp.w	ip, #320	; 0x140
d0081130:	d002      	beq.n	d0081138 <main+0xcd8>
d0081132:	2b00      	cmp	r3, #0
d0081134:	f47f af4a 	bne.w	d0080fcc <main+0xb6c>
d0081138:	4f66      	ldr	r7, [pc, #408]	; (d00812d4 <main+0xe74>)
d008113a:	f8bd 5034 	ldrh.w	r5, [sp, #52]	; 0x34
d008113e:	7b3b      	ldrb	r3, [r7, #12]
d0081140:	7b78      	ldrb	r0, [r7, #13]
d0081142:	f105 022c 	add.w	r2, r5, #44	; 0x2c
d0081146:	7bbe      	ldrb	r6, [r7, #14]
d0081148:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
d008114c:	7bfc      	ldrb	r4, [r7, #15]
d008114e:	f8dd 8030 	ldr.w	r8, [sp, #48]	; 0x30
d0081152:	b212      	sxth	r2, r2
d0081154:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d0081158:	4b5f      	ldr	r3, [pc, #380]	; (d00812d8 <main+0xe78>)
d008115a:	4641      	mov	r1, r8
d008115c:	485f      	ldr	r0, [pc, #380]	; (d00812dc <main+0xe7c>)
d008115e:	ea46 6404 	orr.w	r4, r6, r4, lsl #24
d0081162:	6824      	ldr	r4, [r4, #0]
d0081164:	6f24      	ldr	r4, [r4, #112]	; 0x70
d0081166:	47a0      	blx	r4
d0081168:	7b3b      	ldrb	r3, [r7, #12]
d008116a:	7b7e      	ldrb	r6, [r7, #13]
d008116c:	2214      	movs	r2, #20
d008116e:	7bbc      	ldrb	r4, [r7, #14]
d0081170:	ea43 2006 	orr.w	r0, r3, r6, lsl #8
d0081174:	7bff      	ldrb	r7, [r7, #15]
d0081176:	4611      	mov	r1, r2
d0081178:	4b57      	ldr	r3, [pc, #348]	; (d00812d8 <main+0xe78>)
d008117a:	ea40 4604 	orr.w	r6, r0, r4, lsl #16
d008117e:	4857      	ldr	r0, [pc, #348]	; (d00812dc <main+0xe7c>)
d0081180:	ea46 6407 	orr.w	r4, r6, r7, lsl #24
d0081184:	6824      	ldr	r4, [r4, #0]
d0081186:	6f24      	ldr	r4, [r4, #112]	; 0x70
d0081188:	47a0      	blx	r4
d008118a:	f8bd 0038 	ldrh.w	r0, [sp, #56]	; 0x38
d008118e:	4643      	mov	r3, r8
d0081190:	f8bd 103c 	ldrh.w	r1, [sp, #60]	; 0x3c
d0081194:	4403      	add	r3, r0
d0081196:	440d      	add	r5, r1
d0081198:	f103 0240 	add.w	r2, r3, #64	; 0x40
d008119c:	b22c      	sxth	r4, r5
d008119e:	b21b      	sxth	r3, r3
d00811a0:	b292      	uxth	r2, r2
d00811a2:	940d      	str	r4, [sp, #52]	; 0x34
d00811a4:	930c      	str	r3, [sp, #48]	; 0x30
d00811a6:	b2ab      	uxth	r3, r5
d00811a8:	f5b2 7fc0 	cmp.w	r2, #384	; 0x180
d00811ac:	d902      	bls.n	d00811b4 <main+0xd54>
d00811ae:	4240      	negs	r0, r0
d00811b0:	b202      	sxth	r2, r0
d00811b2:	920e      	str	r2, [sp, #56]	; 0x38
d00811b4:	3340      	adds	r3, #64	; 0x40
d00811b6:	b29b      	uxth	r3, r3
d00811b8:	f5b3 7f98 	cmp.w	r3, #304	; 0x130
d00811bc:	d902      	bls.n	d00811c4 <main+0xd64>
d00811be:	4249      	negs	r1, r1
d00811c0:	b20b      	sxth	r3, r1
d00811c2:	930f      	str	r3, [sp, #60]	; 0x3c
d00811c4:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00811c6:	4c43      	ldr	r4, [pc, #268]	; (d00812d4 <main+0xe74>)
d00811c8:	3301      	adds	r3, #1
d00811ca:	7b21      	ldrb	r1, [r4, #12]
d00811cc:	4625      	mov	r5, r4
d00811ce:	9309      	str	r3, [sp, #36]	; 0x24
d00811d0:	7b63      	ldrb	r3, [r4, #13]
d00811d2:	7ba2      	ldrb	r2, [r4, #14]
d00811d4:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00811d8:	7be3      	ldrb	r3, [r4, #15]
d00811da:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00811de:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00811e2:	681b      	ldr	r3, [r3, #0]
d00811e4:	6f5b      	ldr	r3, [r3, #116]	; 0x74
d00811e6:	4798      	blx	r3
d00811e8:	7f21      	ldrb	r1, [r4, #28]
d00811ea:	7f63      	ldrb	r3, [r4, #29]
d00811ec:	7fa2      	ldrb	r2, [r4, #30]
d00811ee:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00811f2:	7fe3      	ldrb	r3, [r4, #31]
d00811f4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00811f8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00811fc:	699b      	ldr	r3, [r3, #24]
d00811fe:	4798      	blx	r3
d0081200:	7f20      	ldrb	r0, [r4, #28]
d0081202:	7f63      	ldrb	r3, [r4, #29]
d0081204:	ee18 1a10 	vmov	r1, s16
d0081208:	7fa2      	ldrb	r2, [r4, #30]
d008120a:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
d008120e:	7feb      	ldrb	r3, [r5, #31]
d0081210:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0081214:	4832      	ldr	r0, [pc, #200]	; (d00812e0 <main+0xe80>)
d0081216:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008121a:	69db      	ldr	r3, [r3, #28]
d008121c:	4798      	blx	r3
d008121e:	7d29      	ldrb	r1, [r5, #20]
d0081220:	7d6b      	ldrb	r3, [r5, #21]
d0081222:	7daa      	ldrb	r2, [r5, #22]
d0081224:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0081228:	7deb      	ldrb	r3, [r5, #23]
d008122a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d008122e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0081232:	685b      	ldr	r3, [r3, #4]
d0081234:	685b      	ldr	r3, [r3, #4]
d0081236:	4798      	blx	r3
d0081238:	7a29      	ldrb	r1, [r5, #8]
d008123a:	7a6b      	ldrb	r3, [r5, #9]
d008123c:	7aaa      	ldrb	r2, [r5, #10]
d008123e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0081242:	7aeb      	ldrb	r3, [r5, #11]
d0081244:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0081248:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008124c:	689b      	ldr	r3, [r3, #8]
d008124e:	4798      	blx	r3
d0081250:	f7ff bb14 	b.w	d008087c <main+0x41c>
d0081254:	077b      	lsls	r3, r7, #29
d0081256:	f57f af32 	bpl.w	d00810be <main+0xc5e>
d008125a:	b20a      	sxth	r2, r1
d008125c:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0081260:	f6ff aef1 	blt.w	d0081046 <main+0xbe6>
d0081264:	073b      	lsls	r3, r7, #28
d0081266:	f53f af2d 	bmi.w	d00810c4 <main+0xc64>
d008126a:	06fb      	lsls	r3, r7, #27
d008126c:	f57f af37 	bpl.w	d00810de <main+0xc7e>
d0081270:	b20b      	sxth	r3, r1
d0081272:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0081276:	f6bf af32 	bge.w	d00810de <main+0xc7e>
d008127a:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d008127e:	011b      	lsls	r3, r3, #4
d0081280:	eb0b 0203 	add.w	r2, fp, r3
d0081284:	f882 60e8 	strb.w	r6, [r2, #232]	; 0xe8
d0081288:	06ba      	lsls	r2, r7, #26
d008128a:	f53f aef3 	bmi.w	d0081074 <main+0xc14>
d008128e:	067b      	lsls	r3, r7, #25
d0081290:	f57f af36 	bpl.w	d0081100 <main+0xca0>
d0081294:	b20b      	sxth	r3, r1
d0081296:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d008129a:	f6bf aef7 	bge.w	d008108c <main+0xc2c>
d008129e:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d00812a2:	011b      	lsls	r3, r3, #4
d00812a4:	e6ec      	b.n	d0081080 <main+0xc20>
d00812a6:	1be4      	subs	r4, r4, r7
d00812a8:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d00812ac:	e4a1      	b.n	d0080bf2 <main+0x792>
d00812ae:	ebae 0202 	sub.w	r2, lr, r2
d00812b2:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d00812b6:	e492      	b.n	d0080bde <main+0x77e>
d00812b8:	067a      	lsls	r2, r7, #25
d00812ba:	f53f aee7 	bmi.w	d008108c <main+0xc2c>
d00812be:	063f      	lsls	r7, r7, #24
d00812c0:	f57f aee4 	bpl.w	d008108c <main+0xc2c>
d00812c4:	e71e      	b.n	d0081104 <main+0xca4>
d00812c6:	3b20      	subs	r3, #32
d00812c8:	b2da      	uxtb	r2, r3
d00812ca:	2a3a      	cmp	r2, #58	; 0x3a
d00812cc:	bf94      	ite	ls
d00812ce:	00dc      	lslls	r4, r3, #3
d00812d0:	24f8      	movhi	r4, #248	; 0xf8
d00812d2:	e685      	b.n	d0080fe0 <main+0xb80>
d00812d4:	2001f000 	.word	0x2001f000
d00812d8:	d00963c0 	.word	0xd00963c0
d00812dc:	d0096600 	.word	0xd0096600
d00812e0:	d00837c0 	.word	0xd00837c0
d00812e4:	7f23      	ldrb	r3, [r4, #28]
d00812e6:	4626      	mov	r6, r4
d00812e8:	7f62      	ldrb	r2, [r4, #29]
d00812ea:	2502      	movs	r5, #2
d00812ec:	7fa1      	ldrb	r1, [r4, #30]
d00812ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00812f2:	7fe2      	ldrb	r2, [r4, #31]
d00812f4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00812f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00812fc:	689b      	ldr	r3, [r3, #8]
d00812fe:	4798      	blx	r3
d0081300:	7823      	ldrb	r3, [r4, #0]
d0081302:	7862      	ldrb	r2, [r4, #1]
d0081304:	78a1      	ldrb	r1, [r4, #2]
d0081306:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008130a:	78e2      	ldrb	r2, [r4, #3]
d008130c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081310:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0081314:	6c9b      	ldr	r3, [r3, #72]	; 0x48
d0081316:	4798      	blx	r3
d0081318:	7823      	ldrb	r3, [r4, #0]
d008131a:	7862      	ldrb	r2, [r4, #1]
d008131c:	78a1      	ldrb	r1, [r4, #2]
d008131e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0081322:	78e2      	ldrb	r2, [r4, #3]
d0081324:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081328:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008132c:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d008132e:	4798      	blx	r3
d0081330:	7823      	ldrb	r3, [r4, #0]
d0081332:	7862      	ldrb	r2, [r4, #1]
d0081334:	78a1      	ldrb	r1, [r4, #2]
d0081336:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008133a:	78e2      	ldrb	r2, [r4, #3]
d008133c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081340:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0081344:	6c1b      	ldr	r3, [r3, #64]	; 0x40
d0081346:	4798      	blx	r3
d0081348:	7823      	ldrb	r3, [r4, #0]
d008134a:	7862      	ldrb	r2, [r4, #1]
d008134c:	78a1      	ldrb	r1, [r4, #2]
d008134e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0081352:	78e2      	ldrb	r2, [r4, #3]
d0081354:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081358:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008135c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
d008135e:	4798      	blx	r3
d0081360:	7823      	ldrb	r3, [r4, #0]
d0081362:	7862      	ldrb	r2, [r4, #1]
d0081364:	78a1      	ldrb	r1, [r4, #2]
d0081366:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008136a:	78e2      	ldrb	r2, [r4, #3]
d008136c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081370:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0081374:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d0081376:	4798      	blx	r3
d0081378:	7d23      	ldrb	r3, [r4, #20]
d008137a:	7d62      	ldrb	r2, [r4, #21]
d008137c:	7da1      	ldrb	r1, [r4, #22]
d008137e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0081382:	7de2      	ldrb	r2, [r4, #23]
d0081384:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081388:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008138c:	681b      	ldr	r3, [r3, #0]
d008138e:	68db      	ldr	r3, [r3, #12]
d0081390:	4798      	blx	r3
d0081392:	7823      	ldrb	r3, [r4, #0]
d0081394:	7862      	ldrb	r2, [r4, #1]
d0081396:	78a1      	ldrb	r1, [r4, #2]
d0081398:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008139c:	78e2      	ldrb	r2, [r4, #3]
d008139e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00813a2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00813a6:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d00813a8:	4798      	blx	r3
d00813aa:	7b23      	ldrb	r3, [r4, #12]
d00813ac:	7b62      	ldrb	r2, [r4, #13]
d00813ae:	7ba1      	ldrb	r1, [r4, #14]
d00813b0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00813b4:	7be2      	ldrb	r2, [r4, #15]
d00813b6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00813ba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00813be:	681b      	ldr	r3, [r3, #0]
d00813c0:	68db      	ldr	r3, [r3, #12]
d00813c2:	4798      	blx	r3
d00813c4:	7b24      	ldrb	r4, [r4, #12]
d00813c6:	7b72      	ldrb	r2, [r6, #13]
d00813c8:	f44f 73a0 	mov.w	r3, #320	; 0x140
d00813cc:	7bb1      	ldrb	r1, [r6, #14]
d00813ce:	ea44 2402 	orr.w	r4, r4, r2, lsl #8
d00813d2:	7bf0      	ldrb	r0, [r6, #15]
d00813d4:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00813d8:	ea44 4401 	orr.w	r4, r4, r1, lsl #16
d00813dc:	4619      	mov	r1, r3
d00813de:	ea44 6400 	orr.w	r4, r4, r0, lsl #24
d00813e2:	4610      	mov	r0, r2
d00813e4:	6824      	ldr	r4, [r4, #0]
d00813e6:	9500      	str	r5, [sp, #0]
d00813e8:	6964      	ldr	r4, [r4, #20]
d00813ea:	47a0      	blx	r4
d00813ec:	7933      	ldrb	r3, [r6, #4]
d00813ee:	7972      	ldrb	r2, [r6, #5]
d00813f0:	79b1      	ldrb	r1, [r6, #6]
d00813f2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00813f6:	79f2      	ldrb	r2, [r6, #7]
d00813f8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00813fc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0081400:	685b      	ldr	r3, [r3, #4]
d0081402:	4798      	blx	r3
d0081404:	7b33      	ldrb	r3, [r6, #12]
d0081406:	7b72      	ldrb	r2, [r6, #13]
d0081408:	7bb1      	ldrb	r1, [r6, #14]
d008140a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008140e:	7bf2      	ldrb	r2, [r6, #15]
d0081410:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081414:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0081418:	681b      	ldr	r3, [r3, #0]
d008141a:	68db      	ldr	r3, [r3, #12]
d008141c:	4798      	blx	r3
d008141e:	7833      	ldrb	r3, [r6, #0]
d0081420:	7872      	ldrb	r2, [r6, #1]
d0081422:	78b1      	ldrb	r1, [r6, #2]
d0081424:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0081428:	78f2      	ldrb	r2, [r6, #3]
d008142a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008142e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0081432:	685b      	ldr	r3, [r3, #4]
d0081434:	4798      	blx	r3
d0081436:	2000      	movs	r0, #0
d0081438:	b013      	add	sp, #76	; 0x4c
d008143a:	ecbd 8b02 	vpop	{d8}
d008143e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0081442:	4808      	ldr	r0, [pc, #32]	; (d0081464 <main+0x1004>)
d0081444:	7803      	ldrb	r3, [r0, #0]
d0081446:	7842      	ldrb	r2, [r0, #1]
d0081448:	7881      	ldrb	r1, [r0, #2]
d008144a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008144e:	78c2      	ldrb	r2, [r0, #3]
d0081450:	4805      	ldr	r0, [pc, #20]	; (d0081468 <main+0x1008>)
d0081452:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081456:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008145a:	68db      	ldr	r3, [r3, #12]
d008145c:	4798      	blx	r3
d008145e:	2001      	movs	r0, #1
d0081460:	e7ea      	b.n	d0081438 <main+0xfd8>
d0081462:	bf00      	nop
d0081464:	2001f000 	.word	0x2001f000
d0081468:	d0082444 	.word	0xd0082444

d008146c <__errno>:
d008146c:	4b01      	ldr	r3, [pc, #4]	; (d0081474 <__errno+0x8>)
d008146e:	6818      	ldr	r0, [r3, #0]
d0081470:	4770      	bx	lr
d0081472:	bf00      	nop
d0081474:	d0083734 	.word	0xd0083734

d0081478 <malloc>:
d0081478:	4b02      	ldr	r3, [pc, #8]	; (d0081484 <malloc+0xc>)
d008147a:	4601      	mov	r1, r0
d008147c:	6818      	ldr	r0, [r3, #0]
d008147e:	f000 b85b 	b.w	d0081538 <_malloc_r>
d0081482:	bf00      	nop
d0081484:	d0083734 	.word	0xd0083734

d0081488 <memset>:
d0081488:	4402      	add	r2, r0
d008148a:	4603      	mov	r3, r0
d008148c:	4293      	cmp	r3, r2
d008148e:	d100      	bne.n	d0081492 <memset+0xa>
d0081490:	4770      	bx	lr
d0081492:	f803 1b01 	strb.w	r1, [r3], #1
d0081496:	e7f9      	b.n	d008148c <memset+0x4>

d0081498 <_free_r>:
d0081498:	b537      	push	{r0, r1, r2, r4, r5, lr}
d008149a:	2900      	cmp	r1, #0
d008149c:	d048      	beq.n	d0081530 <_free_r+0x98>
d008149e:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00814a2:	9001      	str	r0, [sp, #4]
d00814a4:	2b00      	cmp	r3, #0
d00814a6:	f1a1 0404 	sub.w	r4, r1, #4
d00814aa:	bfb8      	it	lt
d00814ac:	18e4      	addlt	r4, r4, r3
d00814ae:	f000 fb85 	bl	d0081bbc <__malloc_lock>
d00814b2:	4a20      	ldr	r2, [pc, #128]	; (d0081534 <_free_r+0x9c>)
d00814b4:	9801      	ldr	r0, [sp, #4]
d00814b6:	6813      	ldr	r3, [r2, #0]
d00814b8:	4615      	mov	r5, r2
d00814ba:	b933      	cbnz	r3, d00814ca <_free_r+0x32>
d00814bc:	6063      	str	r3, [r4, #4]
d00814be:	6014      	str	r4, [r2, #0]
d00814c0:	b003      	add	sp, #12
d00814c2:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00814c6:	f000 bb7f 	b.w	d0081bc8 <__malloc_unlock>
d00814ca:	42a3      	cmp	r3, r4
d00814cc:	d90b      	bls.n	d00814e6 <_free_r+0x4e>
d00814ce:	6821      	ldr	r1, [r4, #0]
d00814d0:	1862      	adds	r2, r4, r1
d00814d2:	4293      	cmp	r3, r2
d00814d4:	bf04      	itt	eq
d00814d6:	681a      	ldreq	r2, [r3, #0]
d00814d8:	685b      	ldreq	r3, [r3, #4]
d00814da:	6063      	str	r3, [r4, #4]
d00814dc:	bf04      	itt	eq
d00814de:	1852      	addeq	r2, r2, r1
d00814e0:	6022      	streq	r2, [r4, #0]
d00814e2:	602c      	str	r4, [r5, #0]
d00814e4:	e7ec      	b.n	d00814c0 <_free_r+0x28>
d00814e6:	461a      	mov	r2, r3
d00814e8:	685b      	ldr	r3, [r3, #4]
d00814ea:	b10b      	cbz	r3, d00814f0 <_free_r+0x58>
d00814ec:	42a3      	cmp	r3, r4
d00814ee:	d9fa      	bls.n	d00814e6 <_free_r+0x4e>
d00814f0:	6811      	ldr	r1, [r2, #0]
d00814f2:	1855      	adds	r5, r2, r1
d00814f4:	42a5      	cmp	r5, r4
d00814f6:	d10b      	bne.n	d0081510 <_free_r+0x78>
d00814f8:	6824      	ldr	r4, [r4, #0]
d00814fa:	4421      	add	r1, r4
d00814fc:	1854      	adds	r4, r2, r1
d00814fe:	42a3      	cmp	r3, r4
d0081500:	6011      	str	r1, [r2, #0]
d0081502:	d1dd      	bne.n	d00814c0 <_free_r+0x28>
d0081504:	681c      	ldr	r4, [r3, #0]
d0081506:	685b      	ldr	r3, [r3, #4]
d0081508:	6053      	str	r3, [r2, #4]
d008150a:	4421      	add	r1, r4
d008150c:	6011      	str	r1, [r2, #0]
d008150e:	e7d7      	b.n	d00814c0 <_free_r+0x28>
d0081510:	d902      	bls.n	d0081518 <_free_r+0x80>
d0081512:	230c      	movs	r3, #12
d0081514:	6003      	str	r3, [r0, #0]
d0081516:	e7d3      	b.n	d00814c0 <_free_r+0x28>
d0081518:	6825      	ldr	r5, [r4, #0]
d008151a:	1961      	adds	r1, r4, r5
d008151c:	428b      	cmp	r3, r1
d008151e:	bf04      	itt	eq
d0081520:	6819      	ldreq	r1, [r3, #0]
d0081522:	685b      	ldreq	r3, [r3, #4]
d0081524:	6063      	str	r3, [r4, #4]
d0081526:	bf04      	itt	eq
d0081528:	1949      	addeq	r1, r1, r5
d008152a:	6021      	streq	r1, [r4, #0]
d008152c:	6054      	str	r4, [r2, #4]
d008152e:	e7c7      	b.n	d00814c0 <_free_r+0x28>
d0081530:	b003      	add	sp, #12
d0081532:	bd30      	pop	{r4, r5, pc}
d0081534:	d00965d8 	.word	0xd00965d8

d0081538 <_malloc_r>:
d0081538:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008153a:	1ccd      	adds	r5, r1, #3
d008153c:	f025 0503 	bic.w	r5, r5, #3
d0081540:	3508      	adds	r5, #8
d0081542:	2d0c      	cmp	r5, #12
d0081544:	bf38      	it	cc
d0081546:	250c      	movcc	r5, #12
d0081548:	2d00      	cmp	r5, #0
d008154a:	4606      	mov	r6, r0
d008154c:	db01      	blt.n	d0081552 <_malloc_r+0x1a>
d008154e:	42a9      	cmp	r1, r5
d0081550:	d903      	bls.n	d008155a <_malloc_r+0x22>
d0081552:	230c      	movs	r3, #12
d0081554:	6033      	str	r3, [r6, #0]
d0081556:	2000      	movs	r0, #0
d0081558:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d008155a:	f000 fb2f 	bl	d0081bbc <__malloc_lock>
d008155e:	4921      	ldr	r1, [pc, #132]	; (d00815e4 <_malloc_r+0xac>)
d0081560:	680a      	ldr	r2, [r1, #0]
d0081562:	4614      	mov	r4, r2
d0081564:	b99c      	cbnz	r4, d008158e <_malloc_r+0x56>
d0081566:	4f20      	ldr	r7, [pc, #128]	; (d00815e8 <_malloc_r+0xb0>)
d0081568:	683b      	ldr	r3, [r7, #0]
d008156a:	b923      	cbnz	r3, d0081576 <_malloc_r+0x3e>
d008156c:	4621      	mov	r1, r4
d008156e:	4630      	mov	r0, r6
d0081570:	f7fe fdc4 	bl	d00800fc <_sbrk_r>
d0081574:	6038      	str	r0, [r7, #0]
d0081576:	4629      	mov	r1, r5
d0081578:	4630      	mov	r0, r6
d008157a:	f7fe fdbf 	bl	d00800fc <_sbrk_r>
d008157e:	1c43      	adds	r3, r0, #1
d0081580:	d123      	bne.n	d00815ca <_malloc_r+0x92>
d0081582:	230c      	movs	r3, #12
d0081584:	6033      	str	r3, [r6, #0]
d0081586:	4630      	mov	r0, r6
d0081588:	f000 fb1e 	bl	d0081bc8 <__malloc_unlock>
d008158c:	e7e3      	b.n	d0081556 <_malloc_r+0x1e>
d008158e:	6823      	ldr	r3, [r4, #0]
d0081590:	1b5b      	subs	r3, r3, r5
d0081592:	d417      	bmi.n	d00815c4 <_malloc_r+0x8c>
d0081594:	2b0b      	cmp	r3, #11
d0081596:	d903      	bls.n	d00815a0 <_malloc_r+0x68>
d0081598:	6023      	str	r3, [r4, #0]
d008159a:	441c      	add	r4, r3
d008159c:	6025      	str	r5, [r4, #0]
d008159e:	e004      	b.n	d00815aa <_malloc_r+0x72>
d00815a0:	6863      	ldr	r3, [r4, #4]
d00815a2:	42a2      	cmp	r2, r4
d00815a4:	bf0c      	ite	eq
d00815a6:	600b      	streq	r3, [r1, #0]
d00815a8:	6053      	strne	r3, [r2, #4]
d00815aa:	4630      	mov	r0, r6
d00815ac:	f000 fb0c 	bl	d0081bc8 <__malloc_unlock>
d00815b0:	f104 000b 	add.w	r0, r4, #11
d00815b4:	1d23      	adds	r3, r4, #4
d00815b6:	f020 0007 	bic.w	r0, r0, #7
d00815ba:	1ac2      	subs	r2, r0, r3
d00815bc:	d0cc      	beq.n	d0081558 <_malloc_r+0x20>
d00815be:	1a1b      	subs	r3, r3, r0
d00815c0:	50a3      	str	r3, [r4, r2]
d00815c2:	e7c9      	b.n	d0081558 <_malloc_r+0x20>
d00815c4:	4622      	mov	r2, r4
d00815c6:	6864      	ldr	r4, [r4, #4]
d00815c8:	e7cc      	b.n	d0081564 <_malloc_r+0x2c>
d00815ca:	1cc4      	adds	r4, r0, #3
d00815cc:	f024 0403 	bic.w	r4, r4, #3
d00815d0:	42a0      	cmp	r0, r4
d00815d2:	d0e3      	beq.n	d008159c <_malloc_r+0x64>
d00815d4:	1a21      	subs	r1, r4, r0
d00815d6:	4630      	mov	r0, r6
d00815d8:	f7fe fd90 	bl	d00800fc <_sbrk_r>
d00815dc:	3001      	adds	r0, #1
d00815de:	d1dd      	bne.n	d008159c <_malloc_r+0x64>
d00815e0:	e7cf      	b.n	d0081582 <_malloc_r+0x4a>
d00815e2:	bf00      	nop
d00815e4:	d00965d8 	.word	0xd00965d8
d00815e8:	d00965dc 	.word	0xd00965dc

d00815ec <setbuf>:
d00815ec:	2900      	cmp	r1, #0
d00815ee:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00815f2:	bf0c      	ite	eq
d00815f4:	2202      	moveq	r2, #2
d00815f6:	2200      	movne	r2, #0
d00815f8:	f000 b800 	b.w	d00815fc <setvbuf>

d00815fc <setvbuf>:
d00815fc:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0081600:	461d      	mov	r5, r3
d0081602:	4b5d      	ldr	r3, [pc, #372]	; (d0081778 <setvbuf+0x17c>)
d0081604:	681f      	ldr	r7, [r3, #0]
d0081606:	4604      	mov	r4, r0
d0081608:	460e      	mov	r6, r1
d008160a:	4690      	mov	r8, r2
d008160c:	b127      	cbz	r7, d0081618 <setvbuf+0x1c>
d008160e:	69bb      	ldr	r3, [r7, #24]
d0081610:	b913      	cbnz	r3, d0081618 <setvbuf+0x1c>
d0081612:	4638      	mov	r0, r7
d0081614:	f000 fa0e 	bl	d0081a34 <__sinit>
d0081618:	4b58      	ldr	r3, [pc, #352]	; (d008177c <setvbuf+0x180>)
d008161a:	429c      	cmp	r4, r3
d008161c:	d167      	bne.n	d00816ee <setvbuf+0xf2>
d008161e:	687c      	ldr	r4, [r7, #4]
d0081620:	f1b8 0f02 	cmp.w	r8, #2
d0081624:	d006      	beq.n	d0081634 <setvbuf+0x38>
d0081626:	f1b8 0f01 	cmp.w	r8, #1
d008162a:	f200 809f 	bhi.w	d008176c <setvbuf+0x170>
d008162e:	2d00      	cmp	r5, #0
d0081630:	f2c0 809c 	blt.w	d008176c <setvbuf+0x170>
d0081634:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0081636:	07db      	lsls	r3, r3, #31
d0081638:	d405      	bmi.n	d0081646 <setvbuf+0x4a>
d008163a:	89a3      	ldrh	r3, [r4, #12]
d008163c:	0598      	lsls	r0, r3, #22
d008163e:	d402      	bmi.n	d0081646 <setvbuf+0x4a>
d0081640:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081642:	f000 fa95 	bl	d0081b70 <__retarget_lock_acquire_recursive>
d0081646:	4621      	mov	r1, r4
d0081648:	4638      	mov	r0, r7
d008164a:	f000 f95f 	bl	d008190c <_fflush_r>
d008164e:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0081650:	b141      	cbz	r1, d0081664 <setvbuf+0x68>
d0081652:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0081656:	4299      	cmp	r1, r3
d0081658:	d002      	beq.n	d0081660 <setvbuf+0x64>
d008165a:	4638      	mov	r0, r7
d008165c:	f7ff ff1c 	bl	d0081498 <_free_r>
d0081660:	2300      	movs	r3, #0
d0081662:	6363      	str	r3, [r4, #52]	; 0x34
d0081664:	2300      	movs	r3, #0
d0081666:	61a3      	str	r3, [r4, #24]
d0081668:	6063      	str	r3, [r4, #4]
d008166a:	89a3      	ldrh	r3, [r4, #12]
d008166c:	0619      	lsls	r1, r3, #24
d008166e:	d503      	bpl.n	d0081678 <setvbuf+0x7c>
d0081670:	6921      	ldr	r1, [r4, #16]
d0081672:	4638      	mov	r0, r7
d0081674:	f7ff ff10 	bl	d0081498 <_free_r>
d0081678:	89a3      	ldrh	r3, [r4, #12]
d008167a:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d008167e:	f023 0303 	bic.w	r3, r3, #3
d0081682:	f1b8 0f02 	cmp.w	r8, #2
d0081686:	81a3      	strh	r3, [r4, #12]
d0081688:	d06c      	beq.n	d0081764 <setvbuf+0x168>
d008168a:	ab01      	add	r3, sp, #4
d008168c:	466a      	mov	r2, sp
d008168e:	4621      	mov	r1, r4
d0081690:	4638      	mov	r0, r7
d0081692:	f000 fa6f 	bl	d0081b74 <__swhatbuf_r>
d0081696:	89a3      	ldrh	r3, [r4, #12]
d0081698:	4318      	orrs	r0, r3
d008169a:	81a0      	strh	r0, [r4, #12]
d008169c:	2d00      	cmp	r5, #0
d008169e:	d130      	bne.n	d0081702 <setvbuf+0x106>
d00816a0:	9d00      	ldr	r5, [sp, #0]
d00816a2:	4628      	mov	r0, r5
d00816a4:	f7ff fee8 	bl	d0081478 <malloc>
d00816a8:	4606      	mov	r6, r0
d00816aa:	2800      	cmp	r0, #0
d00816ac:	d155      	bne.n	d008175a <setvbuf+0x15e>
d00816ae:	f8dd 9000 	ldr.w	r9, [sp]
d00816b2:	45a9      	cmp	r9, r5
d00816b4:	d14a      	bne.n	d008174c <setvbuf+0x150>
d00816b6:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00816ba:	2200      	movs	r2, #0
d00816bc:	60a2      	str	r2, [r4, #8]
d00816be:	f104 0247 	add.w	r2, r4, #71	; 0x47
d00816c2:	6022      	str	r2, [r4, #0]
d00816c4:	6122      	str	r2, [r4, #16]
d00816c6:	2201      	movs	r2, #1
d00816c8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00816cc:	6162      	str	r2, [r4, #20]
d00816ce:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00816d0:	f043 0302 	orr.w	r3, r3, #2
d00816d4:	07d2      	lsls	r2, r2, #31
d00816d6:	81a3      	strh	r3, [r4, #12]
d00816d8:	d405      	bmi.n	d00816e6 <setvbuf+0xea>
d00816da:	f413 7f00 	tst.w	r3, #512	; 0x200
d00816de:	d102      	bne.n	d00816e6 <setvbuf+0xea>
d00816e0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00816e2:	f000 fa46 	bl	d0081b72 <__retarget_lock_release_recursive>
d00816e6:	4628      	mov	r0, r5
d00816e8:	b003      	add	sp, #12
d00816ea:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00816ee:	4b24      	ldr	r3, [pc, #144]	; (d0081780 <setvbuf+0x184>)
d00816f0:	429c      	cmp	r4, r3
d00816f2:	d101      	bne.n	d00816f8 <setvbuf+0xfc>
d00816f4:	68bc      	ldr	r4, [r7, #8]
d00816f6:	e793      	b.n	d0081620 <setvbuf+0x24>
d00816f8:	4b22      	ldr	r3, [pc, #136]	; (d0081784 <setvbuf+0x188>)
d00816fa:	429c      	cmp	r4, r3
d00816fc:	bf08      	it	eq
d00816fe:	68fc      	ldreq	r4, [r7, #12]
d0081700:	e78e      	b.n	d0081620 <setvbuf+0x24>
d0081702:	2e00      	cmp	r6, #0
d0081704:	d0cd      	beq.n	d00816a2 <setvbuf+0xa6>
d0081706:	69bb      	ldr	r3, [r7, #24]
d0081708:	b913      	cbnz	r3, d0081710 <setvbuf+0x114>
d008170a:	4638      	mov	r0, r7
d008170c:	f000 f992 	bl	d0081a34 <__sinit>
d0081710:	f1b8 0f01 	cmp.w	r8, #1
d0081714:	bf08      	it	eq
d0081716:	89a3      	ldrheq	r3, [r4, #12]
d0081718:	6026      	str	r6, [r4, #0]
d008171a:	bf04      	itt	eq
d008171c:	f043 0301 	orreq.w	r3, r3, #1
d0081720:	81a3      	strheq	r3, [r4, #12]
d0081722:	89a2      	ldrh	r2, [r4, #12]
d0081724:	f012 0308 	ands.w	r3, r2, #8
d0081728:	e9c4 6504 	strd	r6, r5, [r4, #16]
d008172c:	d01c      	beq.n	d0081768 <setvbuf+0x16c>
d008172e:	07d3      	lsls	r3, r2, #31
d0081730:	bf41      	itttt	mi
d0081732:	2300      	movmi	r3, #0
d0081734:	426d      	negmi	r5, r5
d0081736:	60a3      	strmi	r3, [r4, #8]
d0081738:	61a5      	strmi	r5, [r4, #24]
d008173a:	bf58      	it	pl
d008173c:	60a5      	strpl	r5, [r4, #8]
d008173e:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0081740:	f015 0501 	ands.w	r5, r5, #1
d0081744:	d115      	bne.n	d0081772 <setvbuf+0x176>
d0081746:	f412 7f00 	tst.w	r2, #512	; 0x200
d008174a:	e7c8      	b.n	d00816de <setvbuf+0xe2>
d008174c:	4648      	mov	r0, r9
d008174e:	f7ff fe93 	bl	d0081478 <malloc>
d0081752:	4606      	mov	r6, r0
d0081754:	2800      	cmp	r0, #0
d0081756:	d0ae      	beq.n	d00816b6 <setvbuf+0xba>
d0081758:	464d      	mov	r5, r9
d008175a:	89a3      	ldrh	r3, [r4, #12]
d008175c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0081760:	81a3      	strh	r3, [r4, #12]
d0081762:	e7d0      	b.n	d0081706 <setvbuf+0x10a>
d0081764:	2500      	movs	r5, #0
d0081766:	e7a8      	b.n	d00816ba <setvbuf+0xbe>
d0081768:	60a3      	str	r3, [r4, #8]
d008176a:	e7e8      	b.n	d008173e <setvbuf+0x142>
d008176c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0081770:	e7b9      	b.n	d00816e6 <setvbuf+0xea>
d0081772:	2500      	movs	r5, #0
d0081774:	e7b7      	b.n	d00816e6 <setvbuf+0xea>
d0081776:	bf00      	nop
d0081778:	d0083734 	.word	0xd0083734
d008177c:	d00836b4 	.word	0xd00836b4
d0081780:	d00836d4 	.word	0xd00836d4
d0081784:	d0083694 	.word	0xd0083694

d0081788 <sniprintf>:
d0081788:	b40c      	push	{r2, r3}
d008178a:	b530      	push	{r4, r5, lr}
d008178c:	4b17      	ldr	r3, [pc, #92]	; (d00817ec <sniprintf+0x64>)
d008178e:	1e0c      	subs	r4, r1, #0
d0081790:	681d      	ldr	r5, [r3, #0]
d0081792:	b09d      	sub	sp, #116	; 0x74
d0081794:	da08      	bge.n	d00817a8 <sniprintf+0x20>
d0081796:	238b      	movs	r3, #139	; 0x8b
d0081798:	602b      	str	r3, [r5, #0]
d008179a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008179e:	b01d      	add	sp, #116	; 0x74
d00817a0:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00817a4:	b002      	add	sp, #8
d00817a6:	4770      	bx	lr
d00817a8:	f44f 7302 	mov.w	r3, #520	; 0x208
d00817ac:	f8ad 3014 	strh.w	r3, [sp, #20]
d00817b0:	bf14      	ite	ne
d00817b2:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d00817b6:	4623      	moveq	r3, r4
d00817b8:	9304      	str	r3, [sp, #16]
d00817ba:	9307      	str	r3, [sp, #28]
d00817bc:	f64f 73ff 	movw	r3, #65535	; 0xffff
d00817c0:	9002      	str	r0, [sp, #8]
d00817c2:	9006      	str	r0, [sp, #24]
d00817c4:	f8ad 3016 	strh.w	r3, [sp, #22]
d00817c8:	9a20      	ldr	r2, [sp, #128]	; 0x80
d00817ca:	ab21      	add	r3, sp, #132	; 0x84
d00817cc:	a902      	add	r1, sp, #8
d00817ce:	4628      	mov	r0, r5
d00817d0:	9301      	str	r3, [sp, #4]
d00817d2:	f000 fa5b 	bl	d0081c8c <_svfiprintf_r>
d00817d6:	1c43      	adds	r3, r0, #1
d00817d8:	bfbc      	itt	lt
d00817da:	238b      	movlt	r3, #139	; 0x8b
d00817dc:	602b      	strlt	r3, [r5, #0]
d00817de:	2c00      	cmp	r4, #0
d00817e0:	d0dd      	beq.n	d008179e <sniprintf+0x16>
d00817e2:	9b02      	ldr	r3, [sp, #8]
d00817e4:	2200      	movs	r2, #0
d00817e6:	701a      	strb	r2, [r3, #0]
d00817e8:	e7d9      	b.n	d008179e <sniprintf+0x16>
d00817ea:	bf00      	nop
d00817ec:	d0083734 	.word	0xd0083734

d00817f0 <strlen>:
d00817f0:	4603      	mov	r3, r0
d00817f2:	f813 2b01 	ldrb.w	r2, [r3], #1
d00817f6:	2a00      	cmp	r2, #0
d00817f8:	d1fb      	bne.n	d00817f2 <strlen+0x2>
d00817fa:	1a18      	subs	r0, r3, r0
d00817fc:	3801      	subs	r0, #1
d00817fe:	4770      	bx	lr

d0081800 <__sflush_r>:
d0081800:	898a      	ldrh	r2, [r1, #12]
d0081802:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0081806:	4605      	mov	r5, r0
d0081808:	0710      	lsls	r0, r2, #28
d008180a:	460c      	mov	r4, r1
d008180c:	d458      	bmi.n	d00818c0 <__sflush_r+0xc0>
d008180e:	684b      	ldr	r3, [r1, #4]
d0081810:	2b00      	cmp	r3, #0
d0081812:	dc05      	bgt.n	d0081820 <__sflush_r+0x20>
d0081814:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0081816:	2b00      	cmp	r3, #0
d0081818:	dc02      	bgt.n	d0081820 <__sflush_r+0x20>
d008181a:	2000      	movs	r0, #0
d008181c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0081820:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0081822:	2e00      	cmp	r6, #0
d0081824:	d0f9      	beq.n	d008181a <__sflush_r+0x1a>
d0081826:	2300      	movs	r3, #0
d0081828:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d008182c:	682f      	ldr	r7, [r5, #0]
d008182e:	602b      	str	r3, [r5, #0]
d0081830:	d032      	beq.n	d0081898 <__sflush_r+0x98>
d0081832:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0081834:	89a3      	ldrh	r3, [r4, #12]
d0081836:	075a      	lsls	r2, r3, #29
d0081838:	d505      	bpl.n	d0081846 <__sflush_r+0x46>
d008183a:	6863      	ldr	r3, [r4, #4]
d008183c:	1ac0      	subs	r0, r0, r3
d008183e:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0081840:	b10b      	cbz	r3, d0081846 <__sflush_r+0x46>
d0081842:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0081844:	1ac0      	subs	r0, r0, r3
d0081846:	2300      	movs	r3, #0
d0081848:	4602      	mov	r2, r0
d008184a:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d008184c:	6a21      	ldr	r1, [r4, #32]
d008184e:	4628      	mov	r0, r5
d0081850:	47b0      	blx	r6
d0081852:	1c43      	adds	r3, r0, #1
d0081854:	89a3      	ldrh	r3, [r4, #12]
d0081856:	d106      	bne.n	d0081866 <__sflush_r+0x66>
d0081858:	6829      	ldr	r1, [r5, #0]
d008185a:	291d      	cmp	r1, #29
d008185c:	d82c      	bhi.n	d00818b8 <__sflush_r+0xb8>
d008185e:	4a2a      	ldr	r2, [pc, #168]	; (d0081908 <__sflush_r+0x108>)
d0081860:	40ca      	lsrs	r2, r1
d0081862:	07d6      	lsls	r6, r2, #31
d0081864:	d528      	bpl.n	d00818b8 <__sflush_r+0xb8>
d0081866:	2200      	movs	r2, #0
d0081868:	6062      	str	r2, [r4, #4]
d008186a:	04d9      	lsls	r1, r3, #19
d008186c:	6922      	ldr	r2, [r4, #16]
d008186e:	6022      	str	r2, [r4, #0]
d0081870:	d504      	bpl.n	d008187c <__sflush_r+0x7c>
d0081872:	1c42      	adds	r2, r0, #1
d0081874:	d101      	bne.n	d008187a <__sflush_r+0x7a>
d0081876:	682b      	ldr	r3, [r5, #0]
d0081878:	b903      	cbnz	r3, d008187c <__sflush_r+0x7c>
d008187a:	6560      	str	r0, [r4, #84]	; 0x54
d008187c:	6b61      	ldr	r1, [r4, #52]	; 0x34
d008187e:	602f      	str	r7, [r5, #0]
d0081880:	2900      	cmp	r1, #0
d0081882:	d0ca      	beq.n	d008181a <__sflush_r+0x1a>
d0081884:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0081888:	4299      	cmp	r1, r3
d008188a:	d002      	beq.n	d0081892 <__sflush_r+0x92>
d008188c:	4628      	mov	r0, r5
d008188e:	f7ff fe03 	bl	d0081498 <_free_r>
d0081892:	2000      	movs	r0, #0
d0081894:	6360      	str	r0, [r4, #52]	; 0x34
d0081896:	e7c1      	b.n	d008181c <__sflush_r+0x1c>
d0081898:	6a21      	ldr	r1, [r4, #32]
d008189a:	2301      	movs	r3, #1
d008189c:	4628      	mov	r0, r5
d008189e:	47b0      	blx	r6
d00818a0:	1c41      	adds	r1, r0, #1
d00818a2:	d1c7      	bne.n	d0081834 <__sflush_r+0x34>
d00818a4:	682b      	ldr	r3, [r5, #0]
d00818a6:	2b00      	cmp	r3, #0
d00818a8:	d0c4      	beq.n	d0081834 <__sflush_r+0x34>
d00818aa:	2b1d      	cmp	r3, #29
d00818ac:	d001      	beq.n	d00818b2 <__sflush_r+0xb2>
d00818ae:	2b16      	cmp	r3, #22
d00818b0:	d101      	bne.n	d00818b6 <__sflush_r+0xb6>
d00818b2:	602f      	str	r7, [r5, #0]
d00818b4:	e7b1      	b.n	d008181a <__sflush_r+0x1a>
d00818b6:	89a3      	ldrh	r3, [r4, #12]
d00818b8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00818bc:	81a3      	strh	r3, [r4, #12]
d00818be:	e7ad      	b.n	d008181c <__sflush_r+0x1c>
d00818c0:	690f      	ldr	r7, [r1, #16]
d00818c2:	2f00      	cmp	r7, #0
d00818c4:	d0a9      	beq.n	d008181a <__sflush_r+0x1a>
d00818c6:	0793      	lsls	r3, r2, #30
d00818c8:	680e      	ldr	r6, [r1, #0]
d00818ca:	bf08      	it	eq
d00818cc:	694b      	ldreq	r3, [r1, #20]
d00818ce:	600f      	str	r7, [r1, #0]
d00818d0:	bf18      	it	ne
d00818d2:	2300      	movne	r3, #0
d00818d4:	eba6 0807 	sub.w	r8, r6, r7
d00818d8:	608b      	str	r3, [r1, #8]
d00818da:	f1b8 0f00 	cmp.w	r8, #0
d00818de:	dd9c      	ble.n	d008181a <__sflush_r+0x1a>
d00818e0:	6a21      	ldr	r1, [r4, #32]
d00818e2:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d00818e4:	4643      	mov	r3, r8
d00818e6:	463a      	mov	r2, r7
d00818e8:	4628      	mov	r0, r5
d00818ea:	47b0      	blx	r6
d00818ec:	2800      	cmp	r0, #0
d00818ee:	dc06      	bgt.n	d00818fe <__sflush_r+0xfe>
d00818f0:	89a3      	ldrh	r3, [r4, #12]
d00818f2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00818f6:	81a3      	strh	r3, [r4, #12]
d00818f8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00818fc:	e78e      	b.n	d008181c <__sflush_r+0x1c>
d00818fe:	4407      	add	r7, r0
d0081900:	eba8 0800 	sub.w	r8, r8, r0
d0081904:	e7e9      	b.n	d00818da <__sflush_r+0xda>
d0081906:	bf00      	nop
d0081908:	20400001 	.word	0x20400001

d008190c <_fflush_r>:
d008190c:	b538      	push	{r3, r4, r5, lr}
d008190e:	690b      	ldr	r3, [r1, #16]
d0081910:	4605      	mov	r5, r0
d0081912:	460c      	mov	r4, r1
d0081914:	b913      	cbnz	r3, d008191c <_fflush_r+0x10>
d0081916:	2500      	movs	r5, #0
d0081918:	4628      	mov	r0, r5
d008191a:	bd38      	pop	{r3, r4, r5, pc}
d008191c:	b118      	cbz	r0, d0081926 <_fflush_r+0x1a>
d008191e:	6983      	ldr	r3, [r0, #24]
d0081920:	b90b      	cbnz	r3, d0081926 <_fflush_r+0x1a>
d0081922:	f000 f887 	bl	d0081a34 <__sinit>
d0081926:	4b14      	ldr	r3, [pc, #80]	; (d0081978 <_fflush_r+0x6c>)
d0081928:	429c      	cmp	r4, r3
d008192a:	d11b      	bne.n	d0081964 <_fflush_r+0x58>
d008192c:	686c      	ldr	r4, [r5, #4]
d008192e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0081932:	2b00      	cmp	r3, #0
d0081934:	d0ef      	beq.n	d0081916 <_fflush_r+0xa>
d0081936:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0081938:	07d0      	lsls	r0, r2, #31
d008193a:	d404      	bmi.n	d0081946 <_fflush_r+0x3a>
d008193c:	0599      	lsls	r1, r3, #22
d008193e:	d402      	bmi.n	d0081946 <_fflush_r+0x3a>
d0081940:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081942:	f000 f915 	bl	d0081b70 <__retarget_lock_acquire_recursive>
d0081946:	4628      	mov	r0, r5
d0081948:	4621      	mov	r1, r4
d008194a:	f7ff ff59 	bl	d0081800 <__sflush_r>
d008194e:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0081950:	07da      	lsls	r2, r3, #31
d0081952:	4605      	mov	r5, r0
d0081954:	d4e0      	bmi.n	d0081918 <_fflush_r+0xc>
d0081956:	89a3      	ldrh	r3, [r4, #12]
d0081958:	059b      	lsls	r3, r3, #22
d008195a:	d4dd      	bmi.n	d0081918 <_fflush_r+0xc>
d008195c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008195e:	f000 f908 	bl	d0081b72 <__retarget_lock_release_recursive>
d0081962:	e7d9      	b.n	d0081918 <_fflush_r+0xc>
d0081964:	4b05      	ldr	r3, [pc, #20]	; (d008197c <_fflush_r+0x70>)
d0081966:	429c      	cmp	r4, r3
d0081968:	d101      	bne.n	d008196e <_fflush_r+0x62>
d008196a:	68ac      	ldr	r4, [r5, #8]
d008196c:	e7df      	b.n	d008192e <_fflush_r+0x22>
d008196e:	4b04      	ldr	r3, [pc, #16]	; (d0081980 <_fflush_r+0x74>)
d0081970:	429c      	cmp	r4, r3
d0081972:	bf08      	it	eq
d0081974:	68ec      	ldreq	r4, [r5, #12]
d0081976:	e7da      	b.n	d008192e <_fflush_r+0x22>
d0081978:	d00836b4 	.word	0xd00836b4
d008197c:	d00836d4 	.word	0xd00836d4
d0081980:	d0083694 	.word	0xd0083694

d0081984 <std>:
d0081984:	2300      	movs	r3, #0
d0081986:	b510      	push	{r4, lr}
d0081988:	4604      	mov	r4, r0
d008198a:	e9c0 3300 	strd	r3, r3, [r0]
d008198e:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0081992:	6083      	str	r3, [r0, #8]
d0081994:	8181      	strh	r1, [r0, #12]
d0081996:	6643      	str	r3, [r0, #100]	; 0x64
d0081998:	81c2      	strh	r2, [r0, #14]
d008199a:	6183      	str	r3, [r0, #24]
d008199c:	4619      	mov	r1, r3
d008199e:	2208      	movs	r2, #8
d00819a0:	305c      	adds	r0, #92	; 0x5c
d00819a2:	f7ff fd71 	bl	d0081488 <memset>
d00819a6:	4b05      	ldr	r3, [pc, #20]	; (d00819bc <std+0x38>)
d00819a8:	6263      	str	r3, [r4, #36]	; 0x24
d00819aa:	4b05      	ldr	r3, [pc, #20]	; (d00819c0 <std+0x3c>)
d00819ac:	62a3      	str	r3, [r4, #40]	; 0x28
d00819ae:	4b05      	ldr	r3, [pc, #20]	; (d00819c4 <std+0x40>)
d00819b0:	62e3      	str	r3, [r4, #44]	; 0x2c
d00819b2:	4b05      	ldr	r3, [pc, #20]	; (d00819c8 <std+0x44>)
d00819b4:	6224      	str	r4, [r4, #32]
d00819b6:	6323      	str	r3, [r4, #48]	; 0x30
d00819b8:	bd10      	pop	{r4, pc}
d00819ba:	bf00      	nop
d00819bc:	d00821b5 	.word	0xd00821b5
d00819c0:	d00821d7 	.word	0xd00821d7
d00819c4:	d008220f 	.word	0xd008220f
d00819c8:	d0082233 	.word	0xd0082233

d00819cc <_cleanup_r>:
d00819cc:	4901      	ldr	r1, [pc, #4]	; (d00819d4 <_cleanup_r+0x8>)
d00819ce:	f000 b8af 	b.w	d0081b30 <_fwalk_reent>
d00819d2:	bf00      	nop
d00819d4:	d008190d 	.word	0xd008190d

d00819d8 <__sfmoreglue>:
d00819d8:	b570      	push	{r4, r5, r6, lr}
d00819da:	1e4a      	subs	r2, r1, #1
d00819dc:	2568      	movs	r5, #104	; 0x68
d00819de:	4355      	muls	r5, r2
d00819e0:	460e      	mov	r6, r1
d00819e2:	f105 0174 	add.w	r1, r5, #116	; 0x74
d00819e6:	f7ff fda7 	bl	d0081538 <_malloc_r>
d00819ea:	4604      	mov	r4, r0
d00819ec:	b140      	cbz	r0, d0081a00 <__sfmoreglue+0x28>
d00819ee:	2100      	movs	r1, #0
d00819f0:	e9c0 1600 	strd	r1, r6, [r0]
d00819f4:	300c      	adds	r0, #12
d00819f6:	60a0      	str	r0, [r4, #8]
d00819f8:	f105 0268 	add.w	r2, r5, #104	; 0x68
d00819fc:	f7ff fd44 	bl	d0081488 <memset>
d0081a00:	4620      	mov	r0, r4
d0081a02:	bd70      	pop	{r4, r5, r6, pc}

d0081a04 <__sfp_lock_acquire>:
d0081a04:	4801      	ldr	r0, [pc, #4]	; (d0081a0c <__sfp_lock_acquire+0x8>)
d0081a06:	f000 b8b3 	b.w	d0081b70 <__retarget_lock_acquire_recursive>
d0081a0a:	bf00      	nop
d0081a0c:	d0096614 	.word	0xd0096614

d0081a10 <__sfp_lock_release>:
d0081a10:	4801      	ldr	r0, [pc, #4]	; (d0081a18 <__sfp_lock_release+0x8>)
d0081a12:	f000 b8ae 	b.w	d0081b72 <__retarget_lock_release_recursive>
d0081a16:	bf00      	nop
d0081a18:	d0096614 	.word	0xd0096614

d0081a1c <__sinit_lock_acquire>:
d0081a1c:	4801      	ldr	r0, [pc, #4]	; (d0081a24 <__sinit_lock_acquire+0x8>)
d0081a1e:	f000 b8a7 	b.w	d0081b70 <__retarget_lock_acquire_recursive>
d0081a22:	bf00      	nop
d0081a24:	d009660f 	.word	0xd009660f

d0081a28 <__sinit_lock_release>:
d0081a28:	4801      	ldr	r0, [pc, #4]	; (d0081a30 <__sinit_lock_release+0x8>)
d0081a2a:	f000 b8a2 	b.w	d0081b72 <__retarget_lock_release_recursive>
d0081a2e:	bf00      	nop
d0081a30:	d009660f 	.word	0xd009660f

d0081a34 <__sinit>:
d0081a34:	b510      	push	{r4, lr}
d0081a36:	4604      	mov	r4, r0
d0081a38:	f7ff fff0 	bl	d0081a1c <__sinit_lock_acquire>
d0081a3c:	69a3      	ldr	r3, [r4, #24]
d0081a3e:	b11b      	cbz	r3, d0081a48 <__sinit+0x14>
d0081a40:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0081a44:	f7ff bff0 	b.w	d0081a28 <__sinit_lock_release>
d0081a48:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0081a4c:	6523      	str	r3, [r4, #80]	; 0x50
d0081a4e:	4b13      	ldr	r3, [pc, #76]	; (d0081a9c <__sinit+0x68>)
d0081a50:	4a13      	ldr	r2, [pc, #76]	; (d0081aa0 <__sinit+0x6c>)
d0081a52:	681b      	ldr	r3, [r3, #0]
d0081a54:	62a2      	str	r2, [r4, #40]	; 0x28
d0081a56:	42a3      	cmp	r3, r4
d0081a58:	bf04      	itt	eq
d0081a5a:	2301      	moveq	r3, #1
d0081a5c:	61a3      	streq	r3, [r4, #24]
d0081a5e:	4620      	mov	r0, r4
d0081a60:	f000 f820 	bl	d0081aa4 <__sfp>
d0081a64:	6060      	str	r0, [r4, #4]
d0081a66:	4620      	mov	r0, r4
d0081a68:	f000 f81c 	bl	d0081aa4 <__sfp>
d0081a6c:	60a0      	str	r0, [r4, #8]
d0081a6e:	4620      	mov	r0, r4
d0081a70:	f000 f818 	bl	d0081aa4 <__sfp>
d0081a74:	2200      	movs	r2, #0
d0081a76:	60e0      	str	r0, [r4, #12]
d0081a78:	2104      	movs	r1, #4
d0081a7a:	6860      	ldr	r0, [r4, #4]
d0081a7c:	f7ff ff82 	bl	d0081984 <std>
d0081a80:	68a0      	ldr	r0, [r4, #8]
d0081a82:	2201      	movs	r2, #1
d0081a84:	2109      	movs	r1, #9
d0081a86:	f7ff ff7d 	bl	d0081984 <std>
d0081a8a:	68e0      	ldr	r0, [r4, #12]
d0081a8c:	2202      	movs	r2, #2
d0081a8e:	2112      	movs	r1, #18
d0081a90:	f7ff ff78 	bl	d0081984 <std>
d0081a94:	2301      	movs	r3, #1
d0081a96:	61a3      	str	r3, [r4, #24]
d0081a98:	e7d2      	b.n	d0081a40 <__sinit+0xc>
d0081a9a:	bf00      	nop
d0081a9c:	d0083690 	.word	0xd0083690
d0081aa0:	d00819cd 	.word	0xd00819cd

d0081aa4 <__sfp>:
d0081aa4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0081aa6:	4607      	mov	r7, r0
d0081aa8:	f7ff ffac 	bl	d0081a04 <__sfp_lock_acquire>
d0081aac:	4b1e      	ldr	r3, [pc, #120]	; (d0081b28 <__sfp+0x84>)
d0081aae:	681e      	ldr	r6, [r3, #0]
d0081ab0:	69b3      	ldr	r3, [r6, #24]
d0081ab2:	b913      	cbnz	r3, d0081aba <__sfp+0x16>
d0081ab4:	4630      	mov	r0, r6
d0081ab6:	f7ff ffbd 	bl	d0081a34 <__sinit>
d0081aba:	3648      	adds	r6, #72	; 0x48
d0081abc:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0081ac0:	3b01      	subs	r3, #1
d0081ac2:	d503      	bpl.n	d0081acc <__sfp+0x28>
d0081ac4:	6833      	ldr	r3, [r6, #0]
d0081ac6:	b30b      	cbz	r3, d0081b0c <__sfp+0x68>
d0081ac8:	6836      	ldr	r6, [r6, #0]
d0081aca:	e7f7      	b.n	d0081abc <__sfp+0x18>
d0081acc:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0081ad0:	b9d5      	cbnz	r5, d0081b08 <__sfp+0x64>
d0081ad2:	4b16      	ldr	r3, [pc, #88]	; (d0081b2c <__sfp+0x88>)
d0081ad4:	60e3      	str	r3, [r4, #12]
d0081ad6:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0081ada:	6665      	str	r5, [r4, #100]	; 0x64
d0081adc:	f000 f847 	bl	d0081b6e <__retarget_lock_init_recursive>
d0081ae0:	f7ff ff96 	bl	d0081a10 <__sfp_lock_release>
d0081ae4:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0081ae8:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0081aec:	6025      	str	r5, [r4, #0]
d0081aee:	61a5      	str	r5, [r4, #24]
d0081af0:	2208      	movs	r2, #8
d0081af2:	4629      	mov	r1, r5
d0081af4:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0081af8:	f7ff fcc6 	bl	d0081488 <memset>
d0081afc:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0081b00:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0081b04:	4620      	mov	r0, r4
d0081b06:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0081b08:	3468      	adds	r4, #104	; 0x68
d0081b0a:	e7d9      	b.n	d0081ac0 <__sfp+0x1c>
d0081b0c:	2104      	movs	r1, #4
d0081b0e:	4638      	mov	r0, r7
d0081b10:	f7ff ff62 	bl	d00819d8 <__sfmoreglue>
d0081b14:	4604      	mov	r4, r0
d0081b16:	6030      	str	r0, [r6, #0]
d0081b18:	2800      	cmp	r0, #0
d0081b1a:	d1d5      	bne.n	d0081ac8 <__sfp+0x24>
d0081b1c:	f7ff ff78 	bl	d0081a10 <__sfp_lock_release>
d0081b20:	230c      	movs	r3, #12
d0081b22:	603b      	str	r3, [r7, #0]
d0081b24:	e7ee      	b.n	d0081b04 <__sfp+0x60>
d0081b26:	bf00      	nop
d0081b28:	d0083690 	.word	0xd0083690
d0081b2c:	ffff0001 	.word	0xffff0001

d0081b30 <_fwalk_reent>:
d0081b30:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0081b34:	4606      	mov	r6, r0
d0081b36:	4688      	mov	r8, r1
d0081b38:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0081b3c:	2700      	movs	r7, #0
d0081b3e:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0081b42:	f1b9 0901 	subs.w	r9, r9, #1
d0081b46:	d505      	bpl.n	d0081b54 <_fwalk_reent+0x24>
d0081b48:	6824      	ldr	r4, [r4, #0]
d0081b4a:	2c00      	cmp	r4, #0
d0081b4c:	d1f7      	bne.n	d0081b3e <_fwalk_reent+0xe>
d0081b4e:	4638      	mov	r0, r7
d0081b50:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0081b54:	89ab      	ldrh	r3, [r5, #12]
d0081b56:	2b01      	cmp	r3, #1
d0081b58:	d907      	bls.n	d0081b6a <_fwalk_reent+0x3a>
d0081b5a:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0081b5e:	3301      	adds	r3, #1
d0081b60:	d003      	beq.n	d0081b6a <_fwalk_reent+0x3a>
d0081b62:	4629      	mov	r1, r5
d0081b64:	4630      	mov	r0, r6
d0081b66:	47c0      	blx	r8
d0081b68:	4307      	orrs	r7, r0
d0081b6a:	3568      	adds	r5, #104	; 0x68
d0081b6c:	e7e9      	b.n	d0081b42 <_fwalk_reent+0x12>

d0081b6e <__retarget_lock_init_recursive>:
d0081b6e:	4770      	bx	lr

d0081b70 <__retarget_lock_acquire_recursive>:
d0081b70:	4770      	bx	lr

d0081b72 <__retarget_lock_release_recursive>:
d0081b72:	4770      	bx	lr

d0081b74 <__swhatbuf_r>:
d0081b74:	b570      	push	{r4, r5, r6, lr}
d0081b76:	460e      	mov	r6, r1
d0081b78:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081b7c:	2900      	cmp	r1, #0
d0081b7e:	b096      	sub	sp, #88	; 0x58
d0081b80:	4614      	mov	r4, r2
d0081b82:	461d      	mov	r5, r3
d0081b84:	da07      	bge.n	d0081b96 <__swhatbuf_r+0x22>
d0081b86:	2300      	movs	r3, #0
d0081b88:	602b      	str	r3, [r5, #0]
d0081b8a:	89b3      	ldrh	r3, [r6, #12]
d0081b8c:	061a      	lsls	r2, r3, #24
d0081b8e:	d410      	bmi.n	d0081bb2 <__swhatbuf_r+0x3e>
d0081b90:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0081b94:	e00e      	b.n	d0081bb4 <__swhatbuf_r+0x40>
d0081b96:	466a      	mov	r2, sp
d0081b98:	f000 fb60 	bl	d008225c <_fstat_r>
d0081b9c:	2800      	cmp	r0, #0
d0081b9e:	dbf2      	blt.n	d0081b86 <__swhatbuf_r+0x12>
d0081ba0:	9a01      	ldr	r2, [sp, #4]
d0081ba2:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0081ba6:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0081baa:	425a      	negs	r2, r3
d0081bac:	415a      	adcs	r2, r3
d0081bae:	602a      	str	r2, [r5, #0]
d0081bb0:	e7ee      	b.n	d0081b90 <__swhatbuf_r+0x1c>
d0081bb2:	2340      	movs	r3, #64	; 0x40
d0081bb4:	2000      	movs	r0, #0
d0081bb6:	6023      	str	r3, [r4, #0]
d0081bb8:	b016      	add	sp, #88	; 0x58
d0081bba:	bd70      	pop	{r4, r5, r6, pc}

d0081bbc <__malloc_lock>:
d0081bbc:	4801      	ldr	r0, [pc, #4]	; (d0081bc4 <__malloc_lock+0x8>)
d0081bbe:	f7ff bfd7 	b.w	d0081b70 <__retarget_lock_acquire_recursive>
d0081bc2:	bf00      	nop
d0081bc4:	d0096610 	.word	0xd0096610

d0081bc8 <__malloc_unlock>:
d0081bc8:	4801      	ldr	r0, [pc, #4]	; (d0081bd0 <__malloc_unlock+0x8>)
d0081bca:	f7ff bfd2 	b.w	d0081b72 <__retarget_lock_release_recursive>
d0081bce:	bf00      	nop
d0081bd0:	d0096610 	.word	0xd0096610

d0081bd4 <__ssputs_r>:
d0081bd4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0081bd8:	688e      	ldr	r6, [r1, #8]
d0081bda:	429e      	cmp	r6, r3
d0081bdc:	4682      	mov	sl, r0
d0081bde:	460c      	mov	r4, r1
d0081be0:	4690      	mov	r8, r2
d0081be2:	461f      	mov	r7, r3
d0081be4:	d838      	bhi.n	d0081c58 <__ssputs_r+0x84>
d0081be6:	898a      	ldrh	r2, [r1, #12]
d0081be8:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0081bec:	d032      	beq.n	d0081c54 <__ssputs_r+0x80>
d0081bee:	6825      	ldr	r5, [r4, #0]
d0081bf0:	6909      	ldr	r1, [r1, #16]
d0081bf2:	eba5 0901 	sub.w	r9, r5, r1
d0081bf6:	6965      	ldr	r5, [r4, #20]
d0081bf8:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0081bfc:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0081c00:	3301      	adds	r3, #1
d0081c02:	444b      	add	r3, r9
d0081c04:	106d      	asrs	r5, r5, #1
d0081c06:	429d      	cmp	r5, r3
d0081c08:	bf38      	it	cc
d0081c0a:	461d      	movcc	r5, r3
d0081c0c:	0553      	lsls	r3, r2, #21
d0081c0e:	d531      	bpl.n	d0081c74 <__ssputs_r+0xa0>
d0081c10:	4629      	mov	r1, r5
d0081c12:	f7ff fc91 	bl	d0081538 <_malloc_r>
d0081c16:	4606      	mov	r6, r0
d0081c18:	b950      	cbnz	r0, d0081c30 <__ssputs_r+0x5c>
d0081c1a:	230c      	movs	r3, #12
d0081c1c:	f8ca 3000 	str.w	r3, [sl]
d0081c20:	89a3      	ldrh	r3, [r4, #12]
d0081c22:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0081c26:	81a3      	strh	r3, [r4, #12]
d0081c28:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081c2c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0081c30:	6921      	ldr	r1, [r4, #16]
d0081c32:	464a      	mov	r2, r9
d0081c34:	f000 fb8c 	bl	d0082350 <memcpy>
d0081c38:	89a3      	ldrh	r3, [r4, #12]
d0081c3a:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0081c3e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0081c42:	81a3      	strh	r3, [r4, #12]
d0081c44:	6126      	str	r6, [r4, #16]
d0081c46:	6165      	str	r5, [r4, #20]
d0081c48:	444e      	add	r6, r9
d0081c4a:	eba5 0509 	sub.w	r5, r5, r9
d0081c4e:	6026      	str	r6, [r4, #0]
d0081c50:	60a5      	str	r5, [r4, #8]
d0081c52:	463e      	mov	r6, r7
d0081c54:	42be      	cmp	r6, r7
d0081c56:	d900      	bls.n	d0081c5a <__ssputs_r+0x86>
d0081c58:	463e      	mov	r6, r7
d0081c5a:	4632      	mov	r2, r6
d0081c5c:	6820      	ldr	r0, [r4, #0]
d0081c5e:	4641      	mov	r1, r8
d0081c60:	f000 fb84 	bl	d008236c <memmove>
d0081c64:	68a3      	ldr	r3, [r4, #8]
d0081c66:	6822      	ldr	r2, [r4, #0]
d0081c68:	1b9b      	subs	r3, r3, r6
d0081c6a:	4432      	add	r2, r6
d0081c6c:	60a3      	str	r3, [r4, #8]
d0081c6e:	6022      	str	r2, [r4, #0]
d0081c70:	2000      	movs	r0, #0
d0081c72:	e7db      	b.n	d0081c2c <__ssputs_r+0x58>
d0081c74:	462a      	mov	r2, r5
d0081c76:	f000 fb93 	bl	d00823a0 <_realloc_r>
d0081c7a:	4606      	mov	r6, r0
d0081c7c:	2800      	cmp	r0, #0
d0081c7e:	d1e1      	bne.n	d0081c44 <__ssputs_r+0x70>
d0081c80:	6921      	ldr	r1, [r4, #16]
d0081c82:	4650      	mov	r0, sl
d0081c84:	f7ff fc08 	bl	d0081498 <_free_r>
d0081c88:	e7c7      	b.n	d0081c1a <__ssputs_r+0x46>
	...

d0081c8c <_svfiprintf_r>:
d0081c8c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0081c90:	4698      	mov	r8, r3
d0081c92:	898b      	ldrh	r3, [r1, #12]
d0081c94:	061b      	lsls	r3, r3, #24
d0081c96:	b09d      	sub	sp, #116	; 0x74
d0081c98:	4607      	mov	r7, r0
d0081c9a:	460d      	mov	r5, r1
d0081c9c:	4614      	mov	r4, r2
d0081c9e:	d50e      	bpl.n	d0081cbe <_svfiprintf_r+0x32>
d0081ca0:	690b      	ldr	r3, [r1, #16]
d0081ca2:	b963      	cbnz	r3, d0081cbe <_svfiprintf_r+0x32>
d0081ca4:	2140      	movs	r1, #64	; 0x40
d0081ca6:	f7ff fc47 	bl	d0081538 <_malloc_r>
d0081caa:	6028      	str	r0, [r5, #0]
d0081cac:	6128      	str	r0, [r5, #16]
d0081cae:	b920      	cbnz	r0, d0081cba <_svfiprintf_r+0x2e>
d0081cb0:	230c      	movs	r3, #12
d0081cb2:	603b      	str	r3, [r7, #0]
d0081cb4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081cb8:	e0d1      	b.n	d0081e5e <_svfiprintf_r+0x1d2>
d0081cba:	2340      	movs	r3, #64	; 0x40
d0081cbc:	616b      	str	r3, [r5, #20]
d0081cbe:	2300      	movs	r3, #0
d0081cc0:	9309      	str	r3, [sp, #36]	; 0x24
d0081cc2:	2320      	movs	r3, #32
d0081cc4:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0081cc8:	f8cd 800c 	str.w	r8, [sp, #12]
d0081ccc:	2330      	movs	r3, #48	; 0x30
d0081cce:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0081e78 <_svfiprintf_r+0x1ec>
d0081cd2:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0081cd6:	f04f 0901 	mov.w	r9, #1
d0081cda:	4623      	mov	r3, r4
d0081cdc:	469a      	mov	sl, r3
d0081cde:	f813 2b01 	ldrb.w	r2, [r3], #1
d0081ce2:	b10a      	cbz	r2, d0081ce8 <_svfiprintf_r+0x5c>
d0081ce4:	2a25      	cmp	r2, #37	; 0x25
d0081ce6:	d1f9      	bne.n	d0081cdc <_svfiprintf_r+0x50>
d0081ce8:	ebba 0b04 	subs.w	fp, sl, r4
d0081cec:	d00b      	beq.n	d0081d06 <_svfiprintf_r+0x7a>
d0081cee:	465b      	mov	r3, fp
d0081cf0:	4622      	mov	r2, r4
d0081cf2:	4629      	mov	r1, r5
d0081cf4:	4638      	mov	r0, r7
d0081cf6:	f7ff ff6d 	bl	d0081bd4 <__ssputs_r>
d0081cfa:	3001      	adds	r0, #1
d0081cfc:	f000 80aa 	beq.w	d0081e54 <_svfiprintf_r+0x1c8>
d0081d00:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0081d02:	445a      	add	r2, fp
d0081d04:	9209      	str	r2, [sp, #36]	; 0x24
d0081d06:	f89a 3000 	ldrb.w	r3, [sl]
d0081d0a:	2b00      	cmp	r3, #0
d0081d0c:	f000 80a2 	beq.w	d0081e54 <_svfiprintf_r+0x1c8>
d0081d10:	2300      	movs	r3, #0
d0081d12:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0081d16:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0081d1a:	f10a 0a01 	add.w	sl, sl, #1
d0081d1e:	9304      	str	r3, [sp, #16]
d0081d20:	9307      	str	r3, [sp, #28]
d0081d22:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0081d26:	931a      	str	r3, [sp, #104]	; 0x68
d0081d28:	4654      	mov	r4, sl
d0081d2a:	2205      	movs	r2, #5
d0081d2c:	f814 1b01 	ldrb.w	r1, [r4], #1
d0081d30:	4851      	ldr	r0, [pc, #324]	; (d0081e78 <_svfiprintf_r+0x1ec>)
d0081d32:	f000 fabd 	bl	d00822b0 <memchr>
d0081d36:	9a04      	ldr	r2, [sp, #16]
d0081d38:	b9d8      	cbnz	r0, d0081d72 <_svfiprintf_r+0xe6>
d0081d3a:	06d0      	lsls	r0, r2, #27
d0081d3c:	bf44      	itt	mi
d0081d3e:	2320      	movmi	r3, #32
d0081d40:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0081d44:	0711      	lsls	r1, r2, #28
d0081d46:	bf44      	itt	mi
d0081d48:	232b      	movmi	r3, #43	; 0x2b
d0081d4a:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0081d4e:	f89a 3000 	ldrb.w	r3, [sl]
d0081d52:	2b2a      	cmp	r3, #42	; 0x2a
d0081d54:	d015      	beq.n	d0081d82 <_svfiprintf_r+0xf6>
d0081d56:	9a07      	ldr	r2, [sp, #28]
d0081d58:	4654      	mov	r4, sl
d0081d5a:	2000      	movs	r0, #0
d0081d5c:	f04f 0c0a 	mov.w	ip, #10
d0081d60:	4621      	mov	r1, r4
d0081d62:	f811 3b01 	ldrb.w	r3, [r1], #1
d0081d66:	3b30      	subs	r3, #48	; 0x30
d0081d68:	2b09      	cmp	r3, #9
d0081d6a:	d94e      	bls.n	d0081e0a <_svfiprintf_r+0x17e>
d0081d6c:	b1b0      	cbz	r0, d0081d9c <_svfiprintf_r+0x110>
d0081d6e:	9207      	str	r2, [sp, #28]
d0081d70:	e014      	b.n	d0081d9c <_svfiprintf_r+0x110>
d0081d72:	eba0 0308 	sub.w	r3, r0, r8
d0081d76:	fa09 f303 	lsl.w	r3, r9, r3
d0081d7a:	4313      	orrs	r3, r2
d0081d7c:	9304      	str	r3, [sp, #16]
d0081d7e:	46a2      	mov	sl, r4
d0081d80:	e7d2      	b.n	d0081d28 <_svfiprintf_r+0x9c>
d0081d82:	9b03      	ldr	r3, [sp, #12]
d0081d84:	1d19      	adds	r1, r3, #4
d0081d86:	681b      	ldr	r3, [r3, #0]
d0081d88:	9103      	str	r1, [sp, #12]
d0081d8a:	2b00      	cmp	r3, #0
d0081d8c:	bfbb      	ittet	lt
d0081d8e:	425b      	neglt	r3, r3
d0081d90:	f042 0202 	orrlt.w	r2, r2, #2
d0081d94:	9307      	strge	r3, [sp, #28]
d0081d96:	9307      	strlt	r3, [sp, #28]
d0081d98:	bfb8      	it	lt
d0081d9a:	9204      	strlt	r2, [sp, #16]
d0081d9c:	7823      	ldrb	r3, [r4, #0]
d0081d9e:	2b2e      	cmp	r3, #46	; 0x2e
d0081da0:	d10c      	bne.n	d0081dbc <_svfiprintf_r+0x130>
d0081da2:	7863      	ldrb	r3, [r4, #1]
d0081da4:	2b2a      	cmp	r3, #42	; 0x2a
d0081da6:	d135      	bne.n	d0081e14 <_svfiprintf_r+0x188>
d0081da8:	9b03      	ldr	r3, [sp, #12]
d0081daa:	1d1a      	adds	r2, r3, #4
d0081dac:	681b      	ldr	r3, [r3, #0]
d0081dae:	9203      	str	r2, [sp, #12]
d0081db0:	2b00      	cmp	r3, #0
d0081db2:	bfb8      	it	lt
d0081db4:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0081db8:	3402      	adds	r4, #2
d0081dba:	9305      	str	r3, [sp, #20]
d0081dbc:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0081e88 <_svfiprintf_r+0x1fc>
d0081dc0:	7821      	ldrb	r1, [r4, #0]
d0081dc2:	2203      	movs	r2, #3
d0081dc4:	4650      	mov	r0, sl
d0081dc6:	f000 fa73 	bl	d00822b0 <memchr>
d0081dca:	b140      	cbz	r0, d0081dde <_svfiprintf_r+0x152>
d0081dcc:	2340      	movs	r3, #64	; 0x40
d0081dce:	eba0 000a 	sub.w	r0, r0, sl
d0081dd2:	fa03 f000 	lsl.w	r0, r3, r0
d0081dd6:	9b04      	ldr	r3, [sp, #16]
d0081dd8:	4303      	orrs	r3, r0
d0081dda:	3401      	adds	r4, #1
d0081ddc:	9304      	str	r3, [sp, #16]
d0081dde:	f814 1b01 	ldrb.w	r1, [r4], #1
d0081de2:	4826      	ldr	r0, [pc, #152]	; (d0081e7c <_svfiprintf_r+0x1f0>)
d0081de4:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0081de8:	2206      	movs	r2, #6
d0081dea:	f000 fa61 	bl	d00822b0 <memchr>
d0081dee:	2800      	cmp	r0, #0
d0081df0:	d038      	beq.n	d0081e64 <_svfiprintf_r+0x1d8>
d0081df2:	4b23      	ldr	r3, [pc, #140]	; (d0081e80 <_svfiprintf_r+0x1f4>)
d0081df4:	bb1b      	cbnz	r3, d0081e3e <_svfiprintf_r+0x1b2>
d0081df6:	9b03      	ldr	r3, [sp, #12]
d0081df8:	3307      	adds	r3, #7
d0081dfa:	f023 0307 	bic.w	r3, r3, #7
d0081dfe:	3308      	adds	r3, #8
d0081e00:	9303      	str	r3, [sp, #12]
d0081e02:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0081e04:	4433      	add	r3, r6
d0081e06:	9309      	str	r3, [sp, #36]	; 0x24
d0081e08:	e767      	b.n	d0081cda <_svfiprintf_r+0x4e>
d0081e0a:	fb0c 3202 	mla	r2, ip, r2, r3
d0081e0e:	460c      	mov	r4, r1
d0081e10:	2001      	movs	r0, #1
d0081e12:	e7a5      	b.n	d0081d60 <_svfiprintf_r+0xd4>
d0081e14:	2300      	movs	r3, #0
d0081e16:	3401      	adds	r4, #1
d0081e18:	9305      	str	r3, [sp, #20]
d0081e1a:	4619      	mov	r1, r3
d0081e1c:	f04f 0c0a 	mov.w	ip, #10
d0081e20:	4620      	mov	r0, r4
d0081e22:	f810 2b01 	ldrb.w	r2, [r0], #1
d0081e26:	3a30      	subs	r2, #48	; 0x30
d0081e28:	2a09      	cmp	r2, #9
d0081e2a:	d903      	bls.n	d0081e34 <_svfiprintf_r+0x1a8>
d0081e2c:	2b00      	cmp	r3, #0
d0081e2e:	d0c5      	beq.n	d0081dbc <_svfiprintf_r+0x130>
d0081e30:	9105      	str	r1, [sp, #20]
d0081e32:	e7c3      	b.n	d0081dbc <_svfiprintf_r+0x130>
d0081e34:	fb0c 2101 	mla	r1, ip, r1, r2
d0081e38:	4604      	mov	r4, r0
d0081e3a:	2301      	movs	r3, #1
d0081e3c:	e7f0      	b.n	d0081e20 <_svfiprintf_r+0x194>
d0081e3e:	ab03      	add	r3, sp, #12
d0081e40:	9300      	str	r3, [sp, #0]
d0081e42:	462a      	mov	r2, r5
d0081e44:	4b0f      	ldr	r3, [pc, #60]	; (d0081e84 <_svfiprintf_r+0x1f8>)
d0081e46:	a904      	add	r1, sp, #16
d0081e48:	4638      	mov	r0, r7
d0081e4a:	f3af 8000 	nop.w
d0081e4e:	1c42      	adds	r2, r0, #1
d0081e50:	4606      	mov	r6, r0
d0081e52:	d1d6      	bne.n	d0081e02 <_svfiprintf_r+0x176>
d0081e54:	89ab      	ldrh	r3, [r5, #12]
d0081e56:	065b      	lsls	r3, r3, #25
d0081e58:	f53f af2c 	bmi.w	d0081cb4 <_svfiprintf_r+0x28>
d0081e5c:	9809      	ldr	r0, [sp, #36]	; 0x24
d0081e5e:	b01d      	add	sp, #116	; 0x74
d0081e60:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0081e64:	ab03      	add	r3, sp, #12
d0081e66:	9300      	str	r3, [sp, #0]
d0081e68:	462a      	mov	r2, r5
d0081e6a:	4b06      	ldr	r3, [pc, #24]	; (d0081e84 <_svfiprintf_r+0x1f8>)
d0081e6c:	a904      	add	r1, sp, #16
d0081e6e:	4638      	mov	r0, r7
d0081e70:	f000 f87a 	bl	d0081f68 <_printf_i>
d0081e74:	e7eb      	b.n	d0081e4e <_svfiprintf_r+0x1c2>
d0081e76:	bf00      	nop
d0081e78:	d00836f4 	.word	0xd00836f4
d0081e7c:	d00836fe 	.word	0xd00836fe
d0081e80:	00000000 	.word	0x00000000
d0081e84:	d0081bd5 	.word	0xd0081bd5
d0081e88:	d00836fa 	.word	0xd00836fa

d0081e8c <_printf_common>:
d0081e8c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0081e90:	4616      	mov	r6, r2
d0081e92:	4699      	mov	r9, r3
d0081e94:	688a      	ldr	r2, [r1, #8]
d0081e96:	690b      	ldr	r3, [r1, #16]
d0081e98:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0081e9c:	4293      	cmp	r3, r2
d0081e9e:	bfb8      	it	lt
d0081ea0:	4613      	movlt	r3, r2
d0081ea2:	6033      	str	r3, [r6, #0]
d0081ea4:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0081ea8:	4607      	mov	r7, r0
d0081eaa:	460c      	mov	r4, r1
d0081eac:	b10a      	cbz	r2, d0081eb2 <_printf_common+0x26>
d0081eae:	3301      	adds	r3, #1
d0081eb0:	6033      	str	r3, [r6, #0]
d0081eb2:	6823      	ldr	r3, [r4, #0]
d0081eb4:	0699      	lsls	r1, r3, #26
d0081eb6:	bf42      	ittt	mi
d0081eb8:	6833      	ldrmi	r3, [r6, #0]
d0081eba:	3302      	addmi	r3, #2
d0081ebc:	6033      	strmi	r3, [r6, #0]
d0081ebe:	6825      	ldr	r5, [r4, #0]
d0081ec0:	f015 0506 	ands.w	r5, r5, #6
d0081ec4:	d106      	bne.n	d0081ed4 <_printf_common+0x48>
d0081ec6:	f104 0a19 	add.w	sl, r4, #25
d0081eca:	68e3      	ldr	r3, [r4, #12]
d0081ecc:	6832      	ldr	r2, [r6, #0]
d0081ece:	1a9b      	subs	r3, r3, r2
d0081ed0:	42ab      	cmp	r3, r5
d0081ed2:	dc26      	bgt.n	d0081f22 <_printf_common+0x96>
d0081ed4:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0081ed8:	1e13      	subs	r3, r2, #0
d0081eda:	6822      	ldr	r2, [r4, #0]
d0081edc:	bf18      	it	ne
d0081ede:	2301      	movne	r3, #1
d0081ee0:	0692      	lsls	r2, r2, #26
d0081ee2:	d42b      	bmi.n	d0081f3c <_printf_common+0xb0>
d0081ee4:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0081ee8:	4649      	mov	r1, r9
d0081eea:	4638      	mov	r0, r7
d0081eec:	47c0      	blx	r8
d0081eee:	3001      	adds	r0, #1
d0081ef0:	d01e      	beq.n	d0081f30 <_printf_common+0xa4>
d0081ef2:	6823      	ldr	r3, [r4, #0]
d0081ef4:	68e5      	ldr	r5, [r4, #12]
d0081ef6:	6832      	ldr	r2, [r6, #0]
d0081ef8:	f003 0306 	and.w	r3, r3, #6
d0081efc:	2b04      	cmp	r3, #4
d0081efe:	bf08      	it	eq
d0081f00:	1aad      	subeq	r5, r5, r2
d0081f02:	68a3      	ldr	r3, [r4, #8]
d0081f04:	6922      	ldr	r2, [r4, #16]
d0081f06:	bf0c      	ite	eq
d0081f08:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0081f0c:	2500      	movne	r5, #0
d0081f0e:	4293      	cmp	r3, r2
d0081f10:	bfc4      	itt	gt
d0081f12:	1a9b      	subgt	r3, r3, r2
d0081f14:	18ed      	addgt	r5, r5, r3
d0081f16:	2600      	movs	r6, #0
d0081f18:	341a      	adds	r4, #26
d0081f1a:	42b5      	cmp	r5, r6
d0081f1c:	d11a      	bne.n	d0081f54 <_printf_common+0xc8>
d0081f1e:	2000      	movs	r0, #0
d0081f20:	e008      	b.n	d0081f34 <_printf_common+0xa8>
d0081f22:	2301      	movs	r3, #1
d0081f24:	4652      	mov	r2, sl
d0081f26:	4649      	mov	r1, r9
d0081f28:	4638      	mov	r0, r7
d0081f2a:	47c0      	blx	r8
d0081f2c:	3001      	adds	r0, #1
d0081f2e:	d103      	bne.n	d0081f38 <_printf_common+0xac>
d0081f30:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081f34:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0081f38:	3501      	adds	r5, #1
d0081f3a:	e7c6      	b.n	d0081eca <_printf_common+0x3e>
d0081f3c:	18e1      	adds	r1, r4, r3
d0081f3e:	1c5a      	adds	r2, r3, #1
d0081f40:	2030      	movs	r0, #48	; 0x30
d0081f42:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0081f46:	4422      	add	r2, r4
d0081f48:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0081f4c:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0081f50:	3302      	adds	r3, #2
d0081f52:	e7c7      	b.n	d0081ee4 <_printf_common+0x58>
d0081f54:	2301      	movs	r3, #1
d0081f56:	4622      	mov	r2, r4
d0081f58:	4649      	mov	r1, r9
d0081f5a:	4638      	mov	r0, r7
d0081f5c:	47c0      	blx	r8
d0081f5e:	3001      	adds	r0, #1
d0081f60:	d0e6      	beq.n	d0081f30 <_printf_common+0xa4>
d0081f62:	3601      	adds	r6, #1
d0081f64:	e7d9      	b.n	d0081f1a <_printf_common+0x8e>
	...

d0081f68 <_printf_i>:
d0081f68:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0081f6c:	460c      	mov	r4, r1
d0081f6e:	4691      	mov	r9, r2
d0081f70:	7e27      	ldrb	r7, [r4, #24]
d0081f72:	990c      	ldr	r1, [sp, #48]	; 0x30
d0081f74:	2f78      	cmp	r7, #120	; 0x78
d0081f76:	4680      	mov	r8, r0
d0081f78:	469a      	mov	sl, r3
d0081f7a:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0081f7e:	d807      	bhi.n	d0081f90 <_printf_i+0x28>
d0081f80:	2f62      	cmp	r7, #98	; 0x62
d0081f82:	d80a      	bhi.n	d0081f9a <_printf_i+0x32>
d0081f84:	2f00      	cmp	r7, #0
d0081f86:	f000 80d8 	beq.w	d008213a <_printf_i+0x1d2>
d0081f8a:	2f58      	cmp	r7, #88	; 0x58
d0081f8c:	f000 80a3 	beq.w	d00820d6 <_printf_i+0x16e>
d0081f90:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0081f94:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0081f98:	e03a      	b.n	d0082010 <_printf_i+0xa8>
d0081f9a:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0081f9e:	2b15      	cmp	r3, #21
d0081fa0:	d8f6      	bhi.n	d0081f90 <_printf_i+0x28>
d0081fa2:	a001      	add	r0, pc, #4	; (adr r0, d0081fa8 <_printf_i+0x40>)
d0081fa4:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0081fa8:	d0082001 	.word	0xd0082001
d0081fac:	d0082015 	.word	0xd0082015
d0081fb0:	d0081f91 	.word	0xd0081f91
d0081fb4:	d0081f91 	.word	0xd0081f91
d0081fb8:	d0081f91 	.word	0xd0081f91
d0081fbc:	d0081f91 	.word	0xd0081f91
d0081fc0:	d0082015 	.word	0xd0082015
d0081fc4:	d0081f91 	.word	0xd0081f91
d0081fc8:	d0081f91 	.word	0xd0081f91
d0081fcc:	d0081f91 	.word	0xd0081f91
d0081fd0:	d0081f91 	.word	0xd0081f91
d0081fd4:	d0082121 	.word	0xd0082121
d0081fd8:	d0082045 	.word	0xd0082045
d0081fdc:	d0082103 	.word	0xd0082103
d0081fe0:	d0081f91 	.word	0xd0081f91
d0081fe4:	d0081f91 	.word	0xd0081f91
d0081fe8:	d0082143 	.word	0xd0082143
d0081fec:	d0081f91 	.word	0xd0081f91
d0081ff0:	d0082045 	.word	0xd0082045
d0081ff4:	d0081f91 	.word	0xd0081f91
d0081ff8:	d0081f91 	.word	0xd0081f91
d0081ffc:	d008210b 	.word	0xd008210b
d0082000:	680b      	ldr	r3, [r1, #0]
d0082002:	1d1a      	adds	r2, r3, #4
d0082004:	681b      	ldr	r3, [r3, #0]
d0082006:	600a      	str	r2, [r1, #0]
d0082008:	f104 0642 	add.w	r6, r4, #66	; 0x42
d008200c:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0082010:	2301      	movs	r3, #1
d0082012:	e0a3      	b.n	d008215c <_printf_i+0x1f4>
d0082014:	6825      	ldr	r5, [r4, #0]
d0082016:	6808      	ldr	r0, [r1, #0]
d0082018:	062e      	lsls	r6, r5, #24
d008201a:	f100 0304 	add.w	r3, r0, #4
d008201e:	d50a      	bpl.n	d0082036 <_printf_i+0xce>
d0082020:	6805      	ldr	r5, [r0, #0]
d0082022:	600b      	str	r3, [r1, #0]
d0082024:	2d00      	cmp	r5, #0
d0082026:	da03      	bge.n	d0082030 <_printf_i+0xc8>
d0082028:	232d      	movs	r3, #45	; 0x2d
d008202a:	426d      	negs	r5, r5
d008202c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0082030:	485e      	ldr	r0, [pc, #376]	; (d00821ac <_printf_i+0x244>)
d0082032:	230a      	movs	r3, #10
d0082034:	e019      	b.n	d008206a <_printf_i+0x102>
d0082036:	f015 0f40 	tst.w	r5, #64	; 0x40
d008203a:	6805      	ldr	r5, [r0, #0]
d008203c:	600b      	str	r3, [r1, #0]
d008203e:	bf18      	it	ne
d0082040:	b22d      	sxthne	r5, r5
d0082042:	e7ef      	b.n	d0082024 <_printf_i+0xbc>
d0082044:	680b      	ldr	r3, [r1, #0]
d0082046:	6825      	ldr	r5, [r4, #0]
d0082048:	1d18      	adds	r0, r3, #4
d008204a:	6008      	str	r0, [r1, #0]
d008204c:	0628      	lsls	r0, r5, #24
d008204e:	d501      	bpl.n	d0082054 <_printf_i+0xec>
d0082050:	681d      	ldr	r5, [r3, #0]
d0082052:	e002      	b.n	d008205a <_printf_i+0xf2>
d0082054:	0669      	lsls	r1, r5, #25
d0082056:	d5fb      	bpl.n	d0082050 <_printf_i+0xe8>
d0082058:	881d      	ldrh	r5, [r3, #0]
d008205a:	4854      	ldr	r0, [pc, #336]	; (d00821ac <_printf_i+0x244>)
d008205c:	2f6f      	cmp	r7, #111	; 0x6f
d008205e:	bf0c      	ite	eq
d0082060:	2308      	moveq	r3, #8
d0082062:	230a      	movne	r3, #10
d0082064:	2100      	movs	r1, #0
d0082066:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d008206a:	6866      	ldr	r6, [r4, #4]
d008206c:	60a6      	str	r6, [r4, #8]
d008206e:	2e00      	cmp	r6, #0
d0082070:	bfa2      	ittt	ge
d0082072:	6821      	ldrge	r1, [r4, #0]
d0082074:	f021 0104 	bicge.w	r1, r1, #4
d0082078:	6021      	strge	r1, [r4, #0]
d008207a:	b90d      	cbnz	r5, d0082080 <_printf_i+0x118>
d008207c:	2e00      	cmp	r6, #0
d008207e:	d04d      	beq.n	d008211c <_printf_i+0x1b4>
d0082080:	4616      	mov	r6, r2
d0082082:	fbb5 f1f3 	udiv	r1, r5, r3
d0082086:	fb03 5711 	mls	r7, r3, r1, r5
d008208a:	5dc7      	ldrb	r7, [r0, r7]
d008208c:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0082090:	462f      	mov	r7, r5
d0082092:	42bb      	cmp	r3, r7
d0082094:	460d      	mov	r5, r1
d0082096:	d9f4      	bls.n	d0082082 <_printf_i+0x11a>
d0082098:	2b08      	cmp	r3, #8
d008209a:	d10b      	bne.n	d00820b4 <_printf_i+0x14c>
d008209c:	6823      	ldr	r3, [r4, #0]
d008209e:	07df      	lsls	r7, r3, #31
d00820a0:	d508      	bpl.n	d00820b4 <_printf_i+0x14c>
d00820a2:	6923      	ldr	r3, [r4, #16]
d00820a4:	6861      	ldr	r1, [r4, #4]
d00820a6:	4299      	cmp	r1, r3
d00820a8:	bfde      	ittt	le
d00820aa:	2330      	movle	r3, #48	; 0x30
d00820ac:	f806 3c01 	strble.w	r3, [r6, #-1]
d00820b0:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d00820b4:	1b92      	subs	r2, r2, r6
d00820b6:	6122      	str	r2, [r4, #16]
d00820b8:	f8cd a000 	str.w	sl, [sp]
d00820bc:	464b      	mov	r3, r9
d00820be:	aa03      	add	r2, sp, #12
d00820c0:	4621      	mov	r1, r4
d00820c2:	4640      	mov	r0, r8
d00820c4:	f7ff fee2 	bl	d0081e8c <_printf_common>
d00820c8:	3001      	adds	r0, #1
d00820ca:	d14c      	bne.n	d0082166 <_printf_i+0x1fe>
d00820cc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00820d0:	b004      	add	sp, #16
d00820d2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00820d6:	4835      	ldr	r0, [pc, #212]	; (d00821ac <_printf_i+0x244>)
d00820d8:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d00820dc:	6823      	ldr	r3, [r4, #0]
d00820de:	680e      	ldr	r6, [r1, #0]
d00820e0:	061f      	lsls	r7, r3, #24
d00820e2:	f856 5b04 	ldr.w	r5, [r6], #4
d00820e6:	600e      	str	r6, [r1, #0]
d00820e8:	d514      	bpl.n	d0082114 <_printf_i+0x1ac>
d00820ea:	07d9      	lsls	r1, r3, #31
d00820ec:	bf44      	itt	mi
d00820ee:	f043 0320 	orrmi.w	r3, r3, #32
d00820f2:	6023      	strmi	r3, [r4, #0]
d00820f4:	b91d      	cbnz	r5, d00820fe <_printf_i+0x196>
d00820f6:	6823      	ldr	r3, [r4, #0]
d00820f8:	f023 0320 	bic.w	r3, r3, #32
d00820fc:	6023      	str	r3, [r4, #0]
d00820fe:	2310      	movs	r3, #16
d0082100:	e7b0      	b.n	d0082064 <_printf_i+0xfc>
d0082102:	6823      	ldr	r3, [r4, #0]
d0082104:	f043 0320 	orr.w	r3, r3, #32
d0082108:	6023      	str	r3, [r4, #0]
d008210a:	2378      	movs	r3, #120	; 0x78
d008210c:	4828      	ldr	r0, [pc, #160]	; (d00821b0 <_printf_i+0x248>)
d008210e:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0082112:	e7e3      	b.n	d00820dc <_printf_i+0x174>
d0082114:	065e      	lsls	r6, r3, #25
d0082116:	bf48      	it	mi
d0082118:	b2ad      	uxthmi	r5, r5
d008211a:	e7e6      	b.n	d00820ea <_printf_i+0x182>
d008211c:	4616      	mov	r6, r2
d008211e:	e7bb      	b.n	d0082098 <_printf_i+0x130>
d0082120:	680b      	ldr	r3, [r1, #0]
d0082122:	6826      	ldr	r6, [r4, #0]
d0082124:	6960      	ldr	r0, [r4, #20]
d0082126:	1d1d      	adds	r5, r3, #4
d0082128:	600d      	str	r5, [r1, #0]
d008212a:	0635      	lsls	r5, r6, #24
d008212c:	681b      	ldr	r3, [r3, #0]
d008212e:	d501      	bpl.n	d0082134 <_printf_i+0x1cc>
d0082130:	6018      	str	r0, [r3, #0]
d0082132:	e002      	b.n	d008213a <_printf_i+0x1d2>
d0082134:	0671      	lsls	r1, r6, #25
d0082136:	d5fb      	bpl.n	d0082130 <_printf_i+0x1c8>
d0082138:	8018      	strh	r0, [r3, #0]
d008213a:	2300      	movs	r3, #0
d008213c:	6123      	str	r3, [r4, #16]
d008213e:	4616      	mov	r6, r2
d0082140:	e7ba      	b.n	d00820b8 <_printf_i+0x150>
d0082142:	680b      	ldr	r3, [r1, #0]
d0082144:	1d1a      	adds	r2, r3, #4
d0082146:	600a      	str	r2, [r1, #0]
d0082148:	681e      	ldr	r6, [r3, #0]
d008214a:	6862      	ldr	r2, [r4, #4]
d008214c:	2100      	movs	r1, #0
d008214e:	4630      	mov	r0, r6
d0082150:	f000 f8ae 	bl	d00822b0 <memchr>
d0082154:	b108      	cbz	r0, d008215a <_printf_i+0x1f2>
d0082156:	1b80      	subs	r0, r0, r6
d0082158:	6060      	str	r0, [r4, #4]
d008215a:	6863      	ldr	r3, [r4, #4]
d008215c:	6123      	str	r3, [r4, #16]
d008215e:	2300      	movs	r3, #0
d0082160:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0082164:	e7a8      	b.n	d00820b8 <_printf_i+0x150>
d0082166:	6923      	ldr	r3, [r4, #16]
d0082168:	4632      	mov	r2, r6
d008216a:	4649      	mov	r1, r9
d008216c:	4640      	mov	r0, r8
d008216e:	47d0      	blx	sl
d0082170:	3001      	adds	r0, #1
d0082172:	d0ab      	beq.n	d00820cc <_printf_i+0x164>
d0082174:	6823      	ldr	r3, [r4, #0]
d0082176:	079b      	lsls	r3, r3, #30
d0082178:	d413      	bmi.n	d00821a2 <_printf_i+0x23a>
d008217a:	68e0      	ldr	r0, [r4, #12]
d008217c:	9b03      	ldr	r3, [sp, #12]
d008217e:	4298      	cmp	r0, r3
d0082180:	bfb8      	it	lt
d0082182:	4618      	movlt	r0, r3
d0082184:	e7a4      	b.n	d00820d0 <_printf_i+0x168>
d0082186:	2301      	movs	r3, #1
d0082188:	4632      	mov	r2, r6
d008218a:	4649      	mov	r1, r9
d008218c:	4640      	mov	r0, r8
d008218e:	47d0      	blx	sl
d0082190:	3001      	adds	r0, #1
d0082192:	d09b      	beq.n	d00820cc <_printf_i+0x164>
d0082194:	3501      	adds	r5, #1
d0082196:	68e3      	ldr	r3, [r4, #12]
d0082198:	9903      	ldr	r1, [sp, #12]
d008219a:	1a5b      	subs	r3, r3, r1
d008219c:	42ab      	cmp	r3, r5
d008219e:	dcf2      	bgt.n	d0082186 <_printf_i+0x21e>
d00821a0:	e7eb      	b.n	d008217a <_printf_i+0x212>
d00821a2:	2500      	movs	r5, #0
d00821a4:	f104 0619 	add.w	r6, r4, #25
d00821a8:	e7f5      	b.n	d0082196 <_printf_i+0x22e>
d00821aa:	bf00      	nop
d00821ac:	d0083705 	.word	0xd0083705
d00821b0:	d0083716 	.word	0xd0083716

d00821b4 <__sread>:
d00821b4:	b510      	push	{r4, lr}
d00821b6:	460c      	mov	r4, r1
d00821b8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00821bc:	f000 f916 	bl	d00823ec <_read_r>
d00821c0:	2800      	cmp	r0, #0
d00821c2:	bfab      	itete	ge
d00821c4:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d00821c6:	89a3      	ldrhlt	r3, [r4, #12]
d00821c8:	181b      	addge	r3, r3, r0
d00821ca:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d00821ce:	bfac      	ite	ge
d00821d0:	6563      	strge	r3, [r4, #84]	; 0x54
d00821d2:	81a3      	strhlt	r3, [r4, #12]
d00821d4:	bd10      	pop	{r4, pc}

d00821d6 <__swrite>:
d00821d6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00821da:	461f      	mov	r7, r3
d00821dc:	898b      	ldrh	r3, [r1, #12]
d00821de:	05db      	lsls	r3, r3, #23
d00821e0:	4605      	mov	r5, r0
d00821e2:	460c      	mov	r4, r1
d00821e4:	4616      	mov	r6, r2
d00821e6:	d505      	bpl.n	d00821f4 <__swrite+0x1e>
d00821e8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00821ec:	2302      	movs	r3, #2
d00821ee:	2200      	movs	r2, #0
d00821f0:	f000 f846 	bl	d0082280 <_lseek_r>
d00821f4:	89a3      	ldrh	r3, [r4, #12]
d00821f6:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d00821fa:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d00821fe:	81a3      	strh	r3, [r4, #12]
d0082200:	4632      	mov	r2, r6
d0082202:	463b      	mov	r3, r7
d0082204:	4628      	mov	r0, r5
d0082206:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d008220a:	f7fd bf31 	b.w	d0080070 <_write_r>

d008220e <__sseek>:
d008220e:	b510      	push	{r4, lr}
d0082210:	460c      	mov	r4, r1
d0082212:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0082216:	f000 f833 	bl	d0082280 <_lseek_r>
d008221a:	1c43      	adds	r3, r0, #1
d008221c:	89a3      	ldrh	r3, [r4, #12]
d008221e:	bf15      	itete	ne
d0082220:	6560      	strne	r0, [r4, #84]	; 0x54
d0082222:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0082226:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d008222a:	81a3      	strheq	r3, [r4, #12]
d008222c:	bf18      	it	ne
d008222e:	81a3      	strhne	r3, [r4, #12]
d0082230:	bd10      	pop	{r4, pc}

d0082232 <__sclose>:
d0082232:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0082236:	f000 b801 	b.w	d008223c <_close_r>
	...

d008223c <_close_r>:
d008223c:	b538      	push	{r3, r4, r5, lr}
d008223e:	4d06      	ldr	r5, [pc, #24]	; (d0082258 <_close_r+0x1c>)
d0082240:	2300      	movs	r3, #0
d0082242:	4604      	mov	r4, r0
d0082244:	4608      	mov	r0, r1
d0082246:	602b      	str	r3, [r5, #0]
d0082248:	f7fd ff4c 	bl	d00800e4 <_close>
d008224c:	1c43      	adds	r3, r0, #1
d008224e:	d102      	bne.n	d0082256 <_close_r+0x1a>
d0082250:	682b      	ldr	r3, [r5, #0]
d0082252:	b103      	cbz	r3, d0082256 <_close_r+0x1a>
d0082254:	6023      	str	r3, [r4, #0]
d0082256:	bd38      	pop	{r3, r4, r5, pc}
d0082258:	d0096618 	.word	0xd0096618

d008225c <_fstat_r>:
d008225c:	b538      	push	{r3, r4, r5, lr}
d008225e:	4d07      	ldr	r5, [pc, #28]	; (d008227c <_fstat_r+0x20>)
d0082260:	2300      	movs	r3, #0
d0082262:	4604      	mov	r4, r0
d0082264:	4608      	mov	r0, r1
d0082266:	4611      	mov	r1, r2
d0082268:	602b      	str	r3, [r5, #0]
d008226a:	f7fd ff3f 	bl	d00800ec <_fstat>
d008226e:	1c43      	adds	r3, r0, #1
d0082270:	d102      	bne.n	d0082278 <_fstat_r+0x1c>
d0082272:	682b      	ldr	r3, [r5, #0]
d0082274:	b103      	cbz	r3, d0082278 <_fstat_r+0x1c>
d0082276:	6023      	str	r3, [r4, #0]
d0082278:	bd38      	pop	{r3, r4, r5, pc}
d008227a:	bf00      	nop
d008227c:	d0096618 	.word	0xd0096618

d0082280 <_lseek_r>:
d0082280:	b538      	push	{r3, r4, r5, lr}
d0082282:	4d07      	ldr	r5, [pc, #28]	; (d00822a0 <_lseek_r+0x20>)
d0082284:	4604      	mov	r4, r0
d0082286:	4608      	mov	r0, r1
d0082288:	4611      	mov	r1, r2
d008228a:	2200      	movs	r2, #0
d008228c:	602a      	str	r2, [r5, #0]
d008228e:	461a      	mov	r2, r3
d0082290:	f7fd ff32 	bl	d00800f8 <_lseek>
d0082294:	1c43      	adds	r3, r0, #1
d0082296:	d102      	bne.n	d008229e <_lseek_r+0x1e>
d0082298:	682b      	ldr	r3, [r5, #0]
d008229a:	b103      	cbz	r3, d008229e <_lseek_r+0x1e>
d008229c:	6023      	str	r3, [r4, #0]
d008229e:	bd38      	pop	{r3, r4, r5, pc}
d00822a0:	d0096618 	.word	0xd0096618
	...

d00822b0 <memchr>:
d00822b0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00822b4:	2a10      	cmp	r2, #16
d00822b6:	db2b      	blt.n	d0082310 <memchr+0x60>
d00822b8:	f010 0f07 	tst.w	r0, #7
d00822bc:	d008      	beq.n	d00822d0 <memchr+0x20>
d00822be:	f810 3b01 	ldrb.w	r3, [r0], #1
d00822c2:	3a01      	subs	r2, #1
d00822c4:	428b      	cmp	r3, r1
d00822c6:	d02d      	beq.n	d0082324 <memchr+0x74>
d00822c8:	f010 0f07 	tst.w	r0, #7
d00822cc:	b342      	cbz	r2, d0082320 <memchr+0x70>
d00822ce:	d1f6      	bne.n	d00822be <memchr+0xe>
d00822d0:	b4f0      	push	{r4, r5, r6, r7}
d00822d2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d00822d6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d00822da:	f022 0407 	bic.w	r4, r2, #7
d00822de:	f07f 0700 	mvns.w	r7, #0
d00822e2:	2300      	movs	r3, #0
d00822e4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d00822e8:	3c08      	subs	r4, #8
d00822ea:	ea85 0501 	eor.w	r5, r5, r1
d00822ee:	ea86 0601 	eor.w	r6, r6, r1
d00822f2:	fa85 f547 	uadd8	r5, r5, r7
d00822f6:	faa3 f587 	sel	r5, r3, r7
d00822fa:	fa86 f647 	uadd8	r6, r6, r7
d00822fe:	faa5 f687 	sel	r6, r5, r7
d0082302:	b98e      	cbnz	r6, d0082328 <memchr+0x78>
d0082304:	d1ee      	bne.n	d00822e4 <memchr+0x34>
d0082306:	bcf0      	pop	{r4, r5, r6, r7}
d0082308:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d008230c:	f002 0207 	and.w	r2, r2, #7
d0082310:	b132      	cbz	r2, d0082320 <memchr+0x70>
d0082312:	f810 3b01 	ldrb.w	r3, [r0], #1
d0082316:	3a01      	subs	r2, #1
d0082318:	ea83 0301 	eor.w	r3, r3, r1
d008231c:	b113      	cbz	r3, d0082324 <memchr+0x74>
d008231e:	d1f8      	bne.n	d0082312 <memchr+0x62>
d0082320:	2000      	movs	r0, #0
d0082322:	4770      	bx	lr
d0082324:	3801      	subs	r0, #1
d0082326:	4770      	bx	lr
d0082328:	2d00      	cmp	r5, #0
d008232a:	bf06      	itte	eq
d008232c:	4635      	moveq	r5, r6
d008232e:	3803      	subeq	r0, #3
d0082330:	3807      	subne	r0, #7
d0082332:	f015 0f01 	tst.w	r5, #1
d0082336:	d107      	bne.n	d0082348 <memchr+0x98>
d0082338:	3001      	adds	r0, #1
d008233a:	f415 7f80 	tst.w	r5, #256	; 0x100
d008233e:	bf02      	ittt	eq
d0082340:	3001      	addeq	r0, #1
d0082342:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0082346:	3001      	addeq	r0, #1
d0082348:	bcf0      	pop	{r4, r5, r6, r7}
d008234a:	3801      	subs	r0, #1
d008234c:	4770      	bx	lr
d008234e:	bf00      	nop

d0082350 <memcpy>:
d0082350:	440a      	add	r2, r1
d0082352:	4291      	cmp	r1, r2
d0082354:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0082358:	d100      	bne.n	d008235c <memcpy+0xc>
d008235a:	4770      	bx	lr
d008235c:	b510      	push	{r4, lr}
d008235e:	f811 4b01 	ldrb.w	r4, [r1], #1
d0082362:	f803 4f01 	strb.w	r4, [r3, #1]!
d0082366:	4291      	cmp	r1, r2
d0082368:	d1f9      	bne.n	d008235e <memcpy+0xe>
d008236a:	bd10      	pop	{r4, pc}

d008236c <memmove>:
d008236c:	4288      	cmp	r0, r1
d008236e:	b510      	push	{r4, lr}
d0082370:	eb01 0402 	add.w	r4, r1, r2
d0082374:	d902      	bls.n	d008237c <memmove+0x10>
d0082376:	4284      	cmp	r4, r0
d0082378:	4623      	mov	r3, r4
d008237a:	d807      	bhi.n	d008238c <memmove+0x20>
d008237c:	1e43      	subs	r3, r0, #1
d008237e:	42a1      	cmp	r1, r4
d0082380:	d008      	beq.n	d0082394 <memmove+0x28>
d0082382:	f811 2b01 	ldrb.w	r2, [r1], #1
d0082386:	f803 2f01 	strb.w	r2, [r3, #1]!
d008238a:	e7f8      	b.n	d008237e <memmove+0x12>
d008238c:	4402      	add	r2, r0
d008238e:	4601      	mov	r1, r0
d0082390:	428a      	cmp	r2, r1
d0082392:	d100      	bne.n	d0082396 <memmove+0x2a>
d0082394:	bd10      	pop	{r4, pc}
d0082396:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d008239a:	f802 4d01 	strb.w	r4, [r2, #-1]!
d008239e:	e7f7      	b.n	d0082390 <memmove+0x24>

d00823a0 <_realloc_r>:
d00823a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00823a2:	4607      	mov	r7, r0
d00823a4:	4614      	mov	r4, r2
d00823a6:	460e      	mov	r6, r1
d00823a8:	b921      	cbnz	r1, d00823b4 <_realloc_r+0x14>
d00823aa:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00823ae:	4611      	mov	r1, r2
d00823b0:	f7ff b8c2 	b.w	d0081538 <_malloc_r>
d00823b4:	b922      	cbnz	r2, d00823c0 <_realloc_r+0x20>
d00823b6:	f7ff f86f 	bl	d0081498 <_free_r>
d00823ba:	4625      	mov	r5, r4
d00823bc:	4628      	mov	r0, r5
d00823be:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00823c0:	f000 f826 	bl	d0082410 <_malloc_usable_size_r>
d00823c4:	42a0      	cmp	r0, r4
d00823c6:	d20f      	bcs.n	d00823e8 <_realloc_r+0x48>
d00823c8:	4621      	mov	r1, r4
d00823ca:	4638      	mov	r0, r7
d00823cc:	f7ff f8b4 	bl	d0081538 <_malloc_r>
d00823d0:	4605      	mov	r5, r0
d00823d2:	2800      	cmp	r0, #0
d00823d4:	d0f2      	beq.n	d00823bc <_realloc_r+0x1c>
d00823d6:	4631      	mov	r1, r6
d00823d8:	4622      	mov	r2, r4
d00823da:	f7ff ffb9 	bl	d0082350 <memcpy>
d00823de:	4631      	mov	r1, r6
d00823e0:	4638      	mov	r0, r7
d00823e2:	f7ff f859 	bl	d0081498 <_free_r>
d00823e6:	e7e9      	b.n	d00823bc <_realloc_r+0x1c>
d00823e8:	4635      	mov	r5, r6
d00823ea:	e7e7      	b.n	d00823bc <_realloc_r+0x1c>

d00823ec <_read_r>:
d00823ec:	b538      	push	{r3, r4, r5, lr}
d00823ee:	4d07      	ldr	r5, [pc, #28]	; (d008240c <_read_r+0x20>)
d00823f0:	4604      	mov	r4, r0
d00823f2:	4608      	mov	r0, r1
d00823f4:	4611      	mov	r1, r2
d00823f6:	2200      	movs	r2, #0
d00823f8:	602a      	str	r2, [r5, #0]
d00823fa:	461a      	mov	r2, r3
d00823fc:	f7fd fe68 	bl	d00800d0 <_read>
d0082400:	1c43      	adds	r3, r0, #1
d0082402:	d102      	bne.n	d008240a <_read_r+0x1e>
d0082404:	682b      	ldr	r3, [r5, #0]
d0082406:	b103      	cbz	r3, d008240a <_read_r+0x1e>
d0082408:	6023      	str	r3, [r4, #0]
d008240a:	bd38      	pop	{r3, r4, r5, pc}
d008240c:	d0096618 	.word	0xd0096618

d0082410 <_malloc_usable_size_r>:
d0082410:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0082414:	1f18      	subs	r0, r3, #4
d0082416:	2b00      	cmp	r3, #0
d0082418:	bfbc      	itt	lt
d008241a:	580b      	ldrlt	r3, [r1, r0]
d008241c:	18c0      	addlt	r0, r0, r3
d008241e:	4770      	bx	lr
d0082420:	42444953 	.word	0x42444953
d0082424:	4320584f 	.word	0x4320584f
d0082428:	44205452 	.word	0x44205452
d008242c:	004f4d45 	.word	0x004f4d45
d0082430:	49424752 	.word	0x49424752
d0082434:	30323320 	.word	0x30323320
d0082438:	30343278 	.word	0x30343278
d008243c:	48303520 	.word	0x48303520
d0082440:	0000005a 	.word	0x0000005a
d0082444:	20545243 	.word	0x20545243
d0082448:	20495041 	.word	0x20495041
d008244c:	76616e75 	.word	0x76616e75
d0082450:	616c6961 	.word	0x616c6961
d0082454:	0a656c62 	.word	0x0a656c62
d0082458:	00000000 	.word	0x00000000
d008245c:	4d415246 	.word	0x4d415246
d0082460:	6c252045 	.word	0x6c252045
d0082464:	48202075 	.word	0x48202075
d0082468:	20444c4f 	.word	0x20444c4f
d008246c:	45524946 	.word	0x45524946
d0082470:	204b4f2b 	.word	0x204b4f2b
d0082474:	45204f54 	.word	0x45204f54
d0082478:	00544958 	.word	0x00544958

d008247c <bars>:
d008247c:	03020100 07060504 0b0a0908 0f0e0d0c     ................

d008248c <font_8x8_32_90>:
	...
d0082494:	5f000000 0000005f 00030300 00000303     ...__...........
d00824a4:	147f7f14 00147f7f 6b2e2400 00123a6b     .........$.kk:..
d00824b4:	18366a4c 0032566c 594f7e30 40683a77     Lj6.lV2.0~OYw:h@
d00824c4:	07040000 00000003 3e1c0000 00004163     ...........>cA..
d00824d4:	63410000 00001c3e 1c3e2a08 082a3e1c     ..Ac>....*>..>*.
d00824e4:	3e080800 0008083e e0800000 00000060     ...>>.......`...
d00824f4:	08080800 00080808 00000000 00006060     ............``..
d0082504:	18306040 0103060c 597f3e00 003e7f4d     @`0......>.YM.>.
d0082514:	7f060400 0000007f 71634200 00464f59     .........BcqYOF.
d0082524:	49632200 00367f49 13161c18 00107f7f     ."cII.6.........
d0082534:	45672700 00397d45 4b7e3c00 00307949     .'gEE}9..<~KIy0.
d0082544:	71010100 00070f79 497f3600 00367f49     ...qy....6.II.6.
d0082554:	494f0600 001e3f69 66000000 00000066     ..OIi?.....ff...
d0082564:	e6800000 00000066 14080800 00222214     ....f........"".
d0082574:	14141400 00141414 14222200 00080814     ........."".....
d0082584:	51030200 00060f59 5d417f3e 001e1f55     ...QY...>.A]U...
d0082594:	097f7e00 007e7f09 497f7f00 00367f49     .~....~....II.6.
d00825a4:	633e1c00 00414141 417f7f00 001c3e63     ..>cAAA....Ac>..
d00825b4:	497f7f00 00414149 097f7f00 00010109     ...IIAA.........
d00825c4:	417f3e00 007a7b49 087f7f00 007f7f08     .>.AI{z.........
d00825d4:	7f410000 0000417f 40602000 003f7f40     ..A..A... `@@.?.
d00825e4:	1c087f7f 00416336 407f7f00 00404040     ....6cA....@@@@.
d00825f4:	0c067f7f 007f7f06 0c067f7f 007f7f18     ................
d0082604:	417f3e00 003e7f41 097f7f00 00060f09     .>.AA.>.........
d0082614:	61417f3e 00407e7f 097f7f00 00667f19     >.Aa.~@.......f.
d0082624:	4d6f2600 00327b59 7f010100 0001017f     .&oMY{2.........
d0082634:	407f3f00 003f7f40 703f0f00 000f3f70     .?.@@.?...?pp?..
d0082644:	18307f7f 007f7f30 1c366341 4163361c     ..0.0...Ac6..6cA
d0082654:	7c060301 0103067c 4d597161 00414347     ...||...aqYMGCA.

d0082664 <lcd_msg_bottom>:
d0082664:	73657250 49462073 2b204552 204b4f20     Press FIRE + OK 
d0082674:	65206f74 00746978                       to exit.

d008267c <lcd_msg_top>:
d008267c:	20545243 6f6d6564 6e757220 676e696e     CRT demo running
d008268c:	00000000                                ....

d0082690 <sprite>:
	...
d00826e8:	06000000 06060606 06060606 00000606     ................
	...
d0082724:	06000000 06060606 06060606 06060606     ................
d0082734:	06060606 00000606 00000000 00000000     ................
	...
d0082764:	06060600 06060606 06060606 06060606     ................
d0082774:	06060606 06060606 00000000 00000000     ................
	...
d00827a0:	06000000 06060606 06060606 06060606     ................
d00827b0:	06060606 06060606 06060606 00000606     ................
	...
d00827e0:	06060600 06060606 06060606 06060606     ................
d00827f0:	06060606 06060606 06060606 06060606     ................
	...
d008281c:	06000000 06060606 06060606 06060606     ................
	...
d0082834:	06060600 06060606 06060606 00000606     ................
	...
d008285c:	06060000 06060606 06060606 00000000     ................
	...
d0082878:	06060600 06060606 00060606 00000000     ................
	...
d008289c:	06060600 06060606 00000606 00000000     ................
	...
d00828b8:	06000000 06060606 06060606 00000000     ................
	...
d00828dc:	06060606 06060606 00000000 00000000     ................
	...
d00828fc:	06060600 06060606 00000006 00000000     ................
	...
d0082918:	06000000 06060606 00000606 00000000     ................
	...
d008293c:	06000000 06060606 00000606 00000000     ................
	...
d0082958:	06060000 06060606 00000006 00000000     ................
	...
d0082980:	06060606 00060606 00000000 00000000     ................
	...
d0082998:	06060600 06060606 00000000 00000000     ................
	...
d00829c0:	06060600 06060606 00000000 00000000     ................
	...
d00829d8:	06060606 00060606 00000000 00000000     ................
	...
d0082a00:	06060000 06060606 00000006 00000000     ................
	...
d0082a18:	06060606 00000606 00000000 00000000     ................
	...
d0082a40:	06000000 06060606 00000006 00000000     ................
d0082a50:	00000000 06000000 06060606 00000006     ................
	...
d0082a84:	06060606 00000606 00000000 00000000     ................
d0082a94:	06000000 06060606 00000000 00000000     ................
	...
d0082aac:	05050500 05050505 00000000 00000000     ................
	...
d0082ac4:	06060600 00000606 00000000 00000000     ................
d0082ad4:	06060000 06060606 00000000 00000000     ................
d0082ae4:	00000000 05050000 00000005 00000000     ................
d0082af4:	00050505 00000000 00000000 00000000     ................
d0082b04:	06060600 00060606 00000000 00000000     ................
d0082b14:	06060000 00060606 00000000 05000000     ................
d0082b24:	05050505 00000505 00000000 00000000     ................
d0082b34:	05000000 00000005 00000000 00000000     ................
d0082b44:	06060000 00060606 00000000 00000000     ................
d0082b54:	06060600 00060606 00000000 05050000     ................
d0082b64:	05000000 00000005 00000000 00000000     ................
d0082b74:	00000000 00000505 00000000 00000000     ................
d0082b84:	06060000 06060606 00000000 00000000     ................
d0082b94:	06060600 00000606 00000000 00050500     ................
d0082ba4:	00050000 00000505 00000000 00000000     ................
d0082bb4:	00000000 00050000 00000000 00000000     ................
d0082bc4:	06000000 06060606 00000000 00000000     ................
d0082bd4:	06060606 00000606 00000000 00000500     ................
d0082be4:	00000500 00000500 00000000 00000000     ................
d0082bf4:	00000000 05000000 00000000 00000000     ................
d0082c04:	06000000 06060606 00000006 00000000     ................
d0082c14:	06060606 00000006 00000000 00000500     ................
d0082c24:	00000505 00000500 00000000 00000000     ................
d0082c34:	00000000 05000000 00000005 00000000     ................
d0082c44:	00000000 06060606 00000006 00000000     ................
d0082c54:	06060606 00000006 00000000 00000500     ................
d0082c64:	00000005 00000500 00000000 00000000     ................
	...
d0082c7c:	00000005 00000000 00000000 06060606     ................
d0082c8c:	00000006 00000000 06060606 00000006     ................
d0082c9c:	00000000 05050500 00000000 00000505     ................
	...
d0082cbc:	00000500 00000000 00000000 06060606     ................
d0082ccc:	00000006 06000000 06060606 00000006     ................
d0082cdc:	00000000 05050000 05000000 00000005     ................
	...
d0082cfc:	00000500 00000000 00000000 06060606     ................
d0082d0c:	00000606 06000000 06060606 00000000     ................
d0082d1c:	00000000 05000000 05050505 00000000     ................
	...
d0082d3c:	00000500 00000000 00000000 06060600     ................
d0082d4c:	00000606 06000000 06060606 00000000     ................
d0082d5c:	00000000 00050000 00000000 00000000     ................
	...
d0082d7c:	00050000 00000000 00000000 06060600     ................
d0082d8c:	00000606 06000000 06060606 00000000     ................
d0082d9c:	00000000 00050000 00000000 00000000     ................
d0082dac:	05000000 00000505 00000000 05050500     ................
d0082dbc:	05050505 00050505 00000000 06060600     ................
d0082dcc:	00000606 06000000 06060606 00000000     ................
d0082ddc:	00000000 00050000 00000000 00000000     ................
d0082dec:	00050000 00050000 00000000 05050500     ................
d0082dfc:	05050505 00050505 00000000 06060600     ................
d0082e0c:	00000606 06000000 06060606 00000000     ................
d0082e1c:	00000000 00050000 00000000 00000000     ................
d0082e2c:	00050000 00050000 00000000 00000000     ................
d0082e3c:	00050000 05050000 00000005 06060600     ................
d0082e4c:	00000606 06000000 06060606 00000000     ................
d0082e5c:	00000000 00050000 00000000 00000000     ................
d0082e6c:	00050000 00050000 00000000 05050500     ................
d0082e7c:	05050505 00050505 00000000 06060600     ................
d0082e8c:	00000606 06000000 06060606 00000000     ................
d0082e9c:	00000000 00050000 00000000 00000000     ................
d0082eac:	05000000 00000505 00000000 05050500     ................
d0082ebc:	05050505 00050505 00000000 06060600     ................
d0082ecc:	00000606 06000000 06060606 00000000     ................
d0082edc:	00000000 00050000 00000000 00000000     ................
	...
d0082efc:	00050000 00000000 00000000 06060600     ................
d0082f0c:	00000606 06000000 06060606 00000000     ................
d0082f1c:	00000000 05000000 05050505 00000000     ................
	...
d0082f3c:	00000500 00000000 00000000 06060600     ................
d0082f4c:	00000606 06000000 06060606 00000006     ................
d0082f5c:	00000000 05050000 05000000 00000005     ................
	...
d0082f7c:	00000500 00000000 00000000 06060606     ................
d0082f8c:	00000606 00000000 06060606 00000006     ................
d0082f9c:	00000000 05050500 00000000 00000505     ................
	...
d0082fbc:	00000500 00000000 00000000 06060606     ................
d0082fcc:	00000006 00000000 06060606 00000006     ................
d0082fdc:	00000000 00000500 00000005 00000500     ................
	...
d0082ffc:	00000005 00000000 00000000 06060606     ................
d008300c:	00000006 00000000 06060606 00000006     ................
d008301c:	00000000 00000500 00000505 00000500     ................
	...
d0083038:	05000000 00000005 00000000 00000000     ................
d0083048:	06060606 00000006 00000000 06060606     ................
d0083058:	00000606 00000000 00000500 00000500     ................
d0083068:	00000500 00000000 00000000 00000000     ................
d0083078:	05000000 00000000 00000000 06000000     ................
d0083088:	06060606 00000006 00000000 06060600     ................
d0083098:	00000606 00000000 00050500 00050000     ................
d00830a8:	00000505 0e0e0000 000e0e0e 00000000     ................
d00830b8:	00050000 00000000 00000000 06000000     ................
d00830c8:	06060606 00000000 00000000 06060600     ................
d00830d8:	00060606 00000000 05050000 05000000     ................
d00830e8:	00000005 0e0e0000 000e0e0e 00000000     ................
d00830f8:	00000505 00000000 00000000 06060000     ................
d0083108:	06060606 00000000 00000000 06060000     ................
d0083118:	00060606 00000000 05000000 05050505     ................
d0083128:	00000505 00000000 00000000 05000000     ................
d0083138:	00000005 00000000 00000000 06060000     ................
d0083148:	00060606 00000000 00000000 06060000     ................
d0083158:	06060606 00000000 00000000 00000000     ................
d0083168:	05050000 00000005 00000000 00050505     ................
	...
d0083184:	06060600 00060606 00000000 00000000     ................
d0083194:	06000000 06060606 00000000 00000000     ................
	...
d00831ac:	05050500 05050505 00000000 00000000     ................
	...
d00831c4:	06060600 00000606 00000000 00000000     ................
d00831d4:	06000000 06060606 00000006 00000000     ................
	...
d0083204:	06060606 00000606 00000000 00000000     ................
d0083214:	00000000 06060606 00000606 00000000     ................
	...
d0083240:	06000000 06060606 00000006 00000000     ................
	...
d0083258:	06060606 00060606 00000000 00000000     ................
d0083268:	00000000 0e0e0e00 0e0e0e00 00000000     ................
	...
d0083280:	06060000 06060606 00000006 00000000     ................
	...
d0083298:	06060600 06060606 00000000 00000000     ................
d00832a8:	00000000 0e0e0e00 0e0e0e0e 00000000     ................
	...
d00832c0:	06060600 06060606 00000000 00000000     ................
	...
d00832d8:	06060000 06060606 00000006 00000000     ................
d00832e8:	00000000 0e0e0000 000e0e0e 00000000     ................
	...
d0083300:	06060606 00060606 00000000 00000000     ................
	...
d0083318:	06000000 06060606 00000606 00000000     ................
	...
d008333c:	06000000 06060606 00000606 00000000     ................
	...
d008335c:	06060606 06060606 00000000 00000000     ................
	...
d008337c:	06060600 06060606 00000006 00000000     ................
	...
d008339c:	06060600 06060606 00000606 00000000     ................
	...
d00833b8:	06000000 06060606 06060606 00000000     ................
	...
d00833dc:	06060000 06060606 06060606 00000000     ................
	...
d00833f8:	06060600 06060606 00060606 00000000     ................
	...
d008341c:	06000000 06060606 06060606 06060606     ................
	...
d0083434:	06060600 06060606 06060606 00000606     ................
	...
d0083460:	06060600 06060606 06060606 06060606     ................
d0083470:	06060606 06060606 06060606 06060606     ................
	...
d00834a0:	06000000 06060606 06060606 06060606     ................
d00834b0:	06060606 06060606 06060606 00000606     ................
	...
d00834e4:	06060600 06060606 06060606 06060606     ................
d00834f4:	06060606 06060606 00000000 00000000     ................
	...
d0083524:	06000000 06060606 06060606 06060606     ................
d0083534:	06060606 00000606 00000000 00000000     ................
	...
d0083568:	06000000 06060606 06060606 00000606     ................
	...

d0083690 <_global_impure_ptr>:
d0083690:	d0083738                                87..

d0083694 <__sf_fake_stderr>:
	...

d00836b4 <__sf_fake_stdin>:
	...

d00836d4 <__sf_fake_stdout>:
	...
d00836f4:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d0083704:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d0083714:	31300046 35343332 39383736 64636261     F.0123456789abcd
d0083724:	                                         ef.

Disassembly of section .init:

d0083728 <_init>:
d0083728:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008372a:	bf00      	nop

Disassembly of section .fini:

d008372c <_fini>:
d008372c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008372e:	bf00      	nop
