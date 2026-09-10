
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
d008001e:	f001 fadf 	bl	d00815e0 <setbuf>
d0080022:	6833      	ldr	r3, [r6, #0]
d0080024:	2100      	movs	r1, #0
d0080026:	68d8      	ldr	r0, [r3, #12]
d0080028:	f001 fada 	bl	d00815e0 <setbuf>
d008002c:	4629      	mov	r1, r5
d008002e:	4620      	mov	r0, r4
d0080030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0080034:	f000 ba24 	b.w	d0080480 <main>
d0080038:	d0082724 	.word	0xd0082724

d008003c <gfx_createBitmap>:
d008003c:	b510      	push	{r4, lr}
d008003e:	4604      	mov	r4, r0
d0080040:	fb01 f002 	mul.w	r0, r1, r2
d0080044:	b292      	uxth	r2, r2
d0080046:	80a1      	strh	r1, [r4, #4]
d0080048:	60e0      	str	r0, [r4, #12]
d008004a:	80e2      	strh	r2, [r4, #6]
d008004c:	8122      	strh	r2, [r4, #8]
d008004e:	f001 fa0d 	bl	d008146c <malloc>
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
d0080064:	d00943d8 	.word	0xd00943d8
d0080068:	d0600000 	.word	0xd0600000
d008006c:	d00923c0 	.word	0xd00923c0

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
d00800b8:	f001 f9d2 	bl	d0081460 <__errno>
d00800bc:	2209      	movs	r2, #9
d00800be:	4603      	mov	r3, r0
d00800c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800c4:	601a      	str	r2, [r3, #0]
d00800c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00800c8:	d00827a4 	.word	0xd00827a4
d00800cc:	2001f000 	.word	0x2001f000

d00800d0 <_read>:
d00800d0:	b508      	push	{r3, lr}
d00800d2:	f001 f9c5 	bl	d0081460 <__errno>
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
d008011e:	f001 f99f 	bl	d0081460 <__errno>
d0080122:	220c      	movs	r2, #12
d0080124:	4603      	mov	r3, r0
d0080126:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008012a:	601a      	str	r2, [r3, #0]
d008012c:	bd10      	pop	{r4, pc}
d008012e:	bf00      	nop
d0080130:	d00827a0 	.word	0xd00827a0
d0080134:	d00943d8 	.word	0xd00943d8
d0080138:	d0600000 	.word	0xd0600000

d008013c <draw_circle>:
d008013c:	b289      	uxth	r1, r1
d008013e:	b280      	uxth	r0, r0
d0080140:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080144:	2400      	movs	r4, #0
d0080146:	b089      	sub	sp, #36	; 0x24
d0080148:	f240 1e3f 	movw	lr, #319	; 0x13f
d008014c:	f8df a160 	ldr.w	sl, [pc, #352]	; d00802b0 <draw_circle+0x174>
d0080150:	f04f 09c8 	mov.w	r9, #200	; 0xc8
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
d0080178:	29c7      	cmp	r1, #199	; 0xc7
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
d00801ac:	28c7      	cmp	r0, #199	; 0xc7
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
d008021c:	29c7      	cmp	r1, #199	; 0xc7
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
d0080242:	28c7      	cmp	r0, #199	; 0xc7
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
d00802b0:	d00827c0 	.word	0xd00827c0

d00802b4 <draw_lcd_centered>:
d00802b4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00802b8:	b084      	sub	sp, #16
d00802ba:	4d19      	ldr	r5, [pc, #100]	; (d0080320 <draw_lcd_centered+0x6c>)
d00802bc:	460f      	mov	r7, r1
d00802be:	4690      	mov	r8, r2
d00802c0:	9003      	str	r0, [sp, #12]
d00802c2:	4608      	mov	r0, r1
d00802c4:	f001 fa8e 	bl	d00817e4 <strlen>
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
d0080330:	f200 809b 	bhi.w	d008046a <draw_text_cell.constprop.0+0x146>
d0080334:	b2db      	uxtb	r3, r3
d0080336:	3b20      	subs	r3, #32
d0080338:	00db      	lsls	r3, r3, #3
d008033a:	4e4f      	ldr	r6, [pc, #316]	; (d0080478 <draw_text_cell.constprop.0+0x154>)
d008033c:	4d4f      	ldr	r5, [pc, #316]	; (d008047c <draw_text_cell.constprop.0+0x158>)
d008033e:	4433      	add	r3, r6
d0080340:	1e5c      	subs	r4, r3, #1
d0080342:	1dde      	adds	r6, r3, #7
d0080344:	f814 7f01 	ldrb.w	r7, [r4, #1]!
d0080348:	07fb      	lsls	r3, r7, #31
d008034a:	d536      	bpl.n	d00803ba <draw_text_cell.constprop.0+0x96>
d008034c:	b201      	sxth	r1, r0
d008034e:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0080352:	da32      	bge.n	d00803ba <draw_text_cell.constprop.0+0x96>
d0080354:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0080358:	f017 0f02 	tst.w	r7, #2
d008035c:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0080360:	eb05 0cc3 	add.w	ip, r5, r3, lsl #3
d0080364:	ea4f 03c3 	mov.w	r3, r3, lsl #3
d0080368:	f88c 2007 	strb.w	r2, [ip, #7]
d008036c:	d130      	bne.n	d00803d0 <draw_text_cell.constprop.0+0xac>
d008036e:	077b      	lsls	r3, r7, #29
d0080370:	d532      	bpl.n	d00803d8 <draw_text_cell.constprop.0+0xb4>
d0080372:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d0080376:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d008037a:	00cb      	lsls	r3, r1, #3
d008037c:	18e9      	adds	r1, r5, r3
d008037e:	724a      	strb	r2, [r1, #9]
d0080380:	0739      	lsls	r1, r7, #28
d0080382:	d434      	bmi.n	d00803ee <draw_text_cell.constprop.0+0xca>
d0080384:	06fb      	lsls	r3, r7, #27
d0080386:	d550      	bpl.n	d008042a <draw_text_cell.constprop.0+0x106>
d0080388:	b203      	sxth	r3, r0
d008038a:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d008038e:	da69      	bge.n	d0080464 <draw_text_cell.constprop.0+0x140>
d0080390:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0080394:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0080398:	00db      	lsls	r3, r3, #3
d008039a:	18e9      	adds	r1, r5, r3
d008039c:	72ca      	strb	r2, [r1, #11]
d008039e:	06b9      	lsls	r1, r7, #26
d00803a0:	d42d      	bmi.n	d00803fe <draw_text_cell.constprop.0+0xda>
d00803a2:	067b      	lsls	r3, r7, #25
d00803a4:	d550      	bpl.n	d0080448 <draw_text_cell.constprop.0+0x124>
d00803a6:	b203      	sxth	r3, r0
d00803a8:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00803ac:	da2f      	bge.n	d008040e <draw_text_cell.constprop.0+0xea>
d00803ae:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d00803b2:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d00803b6:	00db      	lsls	r3, r3, #3
d00803b8:	e025      	b.n	d0080406 <draw_text_cell.constprop.0+0xe2>
d00803ba:	07bb      	lsls	r3, r7, #30
d00803bc:	d52d      	bpl.n	d008041a <draw_text_cell.constprop.0+0xf6>
d00803be:	b203      	sxth	r3, r0
d00803c0:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00803c4:	da29      	bge.n	d008041a <draw_text_cell.constprop.0+0xf6>
d00803c6:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d00803ca:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d00803ce:	00db      	lsls	r3, r3, #3
d00803d0:	18e9      	adds	r1, r5, r3
d00803d2:	720a      	strb	r2, [r1, #8]
d00803d4:	0779      	lsls	r1, r7, #29
d00803d6:	d4d1      	bmi.n	d008037c <draw_text_cell.constprop.0+0x58>
d00803d8:	073b      	lsls	r3, r7, #28
d00803da:	d5d3      	bpl.n	d0080384 <draw_text_cell.constprop.0+0x60>
d00803dc:	b203      	sxth	r3, r0
d00803de:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00803e2:	dacf      	bge.n	d0080384 <draw_text_cell.constprop.0+0x60>
d00803e4:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d00803e8:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d00803ec:	00db      	lsls	r3, r3, #3
d00803ee:	18e9      	adds	r1, r5, r3
d00803f0:	728a      	strb	r2, [r1, #10]
d00803f2:	06f9      	lsls	r1, r7, #27
d00803f4:	d519      	bpl.n	d008042a <draw_text_cell.constprop.0+0x106>
d00803f6:	18e9      	adds	r1, r5, r3
d00803f8:	72ca      	strb	r2, [r1, #11]
d00803fa:	06b9      	lsls	r1, r7, #26
d00803fc:	d5d1      	bpl.n	d00803a2 <draw_text_cell.constprop.0+0x7e>
d00803fe:	18e9      	adds	r1, r5, r3
d0080400:	730a      	strb	r2, [r1, #12]
d0080402:	0679      	lsls	r1, r7, #25
d0080404:	d520      	bpl.n	d0080448 <draw_text_cell.constprop.0+0x124>
d0080406:	18e9      	adds	r1, r5, r3
d0080408:	734a      	strb	r2, [r1, #13]
d008040a:	0639      	lsls	r1, r7, #24
d008040c:	d427      	bmi.n	d008045e <draw_text_cell.constprop.0+0x13a>
d008040e:	3001      	adds	r0, #1
d0080410:	42a6      	cmp	r6, r4
d0080412:	b280      	uxth	r0, r0
d0080414:	d196      	bne.n	d0080344 <draw_text_cell.constprop.0+0x20>
d0080416:	bcf0      	pop	{r4, r5, r6, r7}
d0080418:	4770      	bx	lr
d008041a:	077b      	lsls	r3, r7, #29
d008041c:	d5dc      	bpl.n	d00803d8 <draw_text_cell.constprop.0+0xb4>
d008041e:	b201      	sxth	r1, r0
d0080420:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0080424:	dba5      	blt.n	d0080372 <draw_text_cell.constprop.0+0x4e>
d0080426:	06fb      	lsls	r3, r7, #27
d0080428:	d4ae      	bmi.n	d0080388 <draw_text_cell.constprop.0+0x64>
d008042a:	06bb      	lsls	r3, r7, #26
d008042c:	d5b9      	bpl.n	d00803a2 <draw_text_cell.constprop.0+0x7e>
d008042e:	b203      	sxth	r3, r0
d0080430:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0080434:	dab5      	bge.n	d00803a2 <draw_text_cell.constprop.0+0x7e>
d0080436:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d008043a:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d008043e:	00db      	lsls	r3, r3, #3
d0080440:	18e9      	adds	r1, r5, r3
d0080442:	730a      	strb	r2, [r1, #12]
d0080444:	0679      	lsls	r1, r7, #25
d0080446:	d4de      	bmi.n	d0080406 <draw_text_cell.constprop.0+0xe2>
d0080448:	063f      	lsls	r7, r7, #24
d008044a:	d5e0      	bpl.n	d008040e <draw_text_cell.constprop.0+0xea>
d008044c:	b203      	sxth	r3, r0
d008044e:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0080452:	dadc      	bge.n	d008040e <draw_text_cell.constprop.0+0xea>
d0080454:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0080458:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d008045c:	00db      	lsls	r3, r3, #3
d008045e:	442b      	add	r3, r5
d0080460:	739a      	strb	r2, [r3, #14]
d0080462:	e7d4      	b.n	d008040e <draw_text_cell.constprop.0+0xea>
d0080464:	0679      	lsls	r1, r7, #25
d0080466:	d5ef      	bpl.n	d0080448 <draw_text_cell.constprop.0+0x124>
d0080468:	e7d1      	b.n	d008040e <draw_text_cell.constprop.0+0xea>
d008046a:	b2d9      	uxtb	r1, r3
d008046c:	293a      	cmp	r1, #58	; 0x3a
d008046e:	bf94      	ite	ls
d0080470:	00db      	lslls	r3, r3, #3
d0080472:	23f8      	movhi	r3, #248	; 0xf8
d0080474:	e761      	b.n	d008033a <draw_text_cell.constprop.0+0x16>
d0080476:	bf00      	nop
d0080478:	d008247c 	.word	0xd008247c
d008047c:	d00827c0 	.word	0xd00827c0

d0080480 <main>:
d0080480:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080484:	4dae      	ldr	r5, [pc, #696]	; (d0080740 <main+0x2c0>)
d0080486:	f44f 2000 	mov.w	r0, #524288	; 0x80000
d008048a:	2400      	movs	r4, #0
d008048c:	782b      	ldrb	r3, [r5, #0]
d008048e:	462f      	mov	r7, r5
d0080490:	786a      	ldrb	r2, [r5, #1]
d0080492:	78a9      	ldrb	r1, [r5, #2]
d0080494:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080498:	78ea      	ldrb	r2, [r5, #3]
d008049a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008049e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00804a2:	ed2d 8b02 	vpush	{d8}
d00804a6:	681b      	ldr	r3, [r3, #0]
d00804a8:	b08f      	sub	sp, #60	; 0x3c
d00804aa:	4798      	blx	r3
d00804ac:	f7ff fdd4 	bl	d0080058 <initMalloc>
d00804b0:	7d2b      	ldrb	r3, [r5, #20]
d00804b2:	7d6a      	ldrb	r2, [r5, #21]
d00804b4:	f44f 7000 	mov.w	r0, #512	; 0x200
d00804b8:	7da9      	ldrb	r1, [r5, #22]
d00804ba:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00804be:	7dea      	ldrb	r2, [r5, #23]
d00804c0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00804c4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00804c8:	681b      	ldr	r3, [r3, #0]
d00804ca:	681b      	ldr	r3, [r3, #0]
d00804cc:	4798      	blx	r3
d00804ce:	7d2a      	ldrb	r2, [r5, #20]
d00804d0:	7d6b      	ldrb	r3, [r5, #21]
d00804d2:	2501      	movs	r5, #1
d00804d4:	7dbe      	ldrb	r6, [r7, #22]
d00804d6:	2190      	movs	r1, #144	; 0x90
d00804d8:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d00804dc:	7df8      	ldrb	r0, [r7, #23]
d00804de:	7b3b      	ldrb	r3, [r7, #12]
d00804e0:	ea42 4206 	orr.w	r2, r2, r6, lsl #16
d00804e4:	7b7e      	ldrb	r6, [r7, #13]
d00804e6:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d00804ea:	7bb8      	ldrb	r0, [r7, #14]
d00804ec:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d00804f0:	7bfe      	ldrb	r6, [r7, #15]
d00804f2:	6812      	ldr	r2, [r2, #0]
d00804f4:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00804f8:	20dc      	movs	r0, #220	; 0xdc
d00804fa:	6852      	ldr	r2, [r2, #4]
d00804fc:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d0080500:	7015      	strb	r5, [r2, #0]
d0080502:	681b      	ldr	r3, [r3, #0]
d0080504:	691b      	ldr	r3, [r3, #16]
d0080506:	4798      	blx	r3
d0080508:	7b3d      	ldrb	r5, [r7, #12]
d008050a:	7b79      	ldrb	r1, [r7, #13]
d008050c:	4623      	mov	r3, r4
d008050e:	7bb8      	ldrb	r0, [r7, #14]
d0080510:	4622      	mov	r2, r4
d0080512:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d0080516:	7bfe      	ldrb	r6, [r7, #15]
d0080518:	f44f 71a0 	mov.w	r1, #320	; 0x140
d008051c:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0080520:	f44f 70f0 	mov.w	r0, #480	; 0x1e0
d0080524:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d0080528:	682d      	ldr	r5, [r5, #0]
d008052a:	9400      	str	r4, [sp, #0]
d008052c:	696d      	ldr	r5, [r5, #20]
d008052e:	47a8      	blx	r5
d0080530:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0080534:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d0080538:	4882      	ldr	r0, [pc, #520]	; (d0080744 <main+0x2c4>)
d008053a:	f7ff fd7f 	bl	d008003c <gfx_createBitmap>
d008053e:	7b3b      	ldrb	r3, [r7, #12]
d0080540:	7b7a      	ldrb	r2, [r7, #13]
d0080542:	7bb9      	ldrb	r1, [r7, #14]
d0080544:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080548:	7bfa      	ldrb	r2, [r7, #15]
d008054a:	487e      	ldr	r0, [pc, #504]	; (d0080744 <main+0x2c4>)
d008054c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080550:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080554:	681b      	ldr	r3, [r3, #0]
d0080556:	69db      	ldr	r3, [r3, #28]
d0080558:	4798      	blx	r3
d008055a:	7b3b      	ldrb	r3, [r7, #12]
d008055c:	7b7a      	ldrb	r2, [r7, #13]
d008055e:	7bb9      	ldrb	r1, [r7, #14]
d0080560:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080564:	7bfa      	ldrb	r2, [r7, #15]
d0080566:	4877      	ldr	r0, [pc, #476]	; (d0080744 <main+0x2c4>)
d0080568:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008056c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080570:	681b      	ldr	r3, [r3, #0]
d0080572:	699b      	ldr	r3, [r3, #24]
d0080574:	4798      	blx	r3
d0080576:	7b3b      	ldrb	r3, [r7, #12]
d0080578:	7b7a      	ldrb	r2, [r7, #13]
d008057a:	7bb9      	ldrb	r1, [r7, #14]
d008057c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080580:	7bfa      	ldrb	r2, [r7, #15]
d0080582:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080586:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008058a:	685b      	ldr	r3, [r3, #4]
d008058c:	681b      	ldr	r3, [r3, #0]
d008058e:	4798      	blx	r3
d0080590:	7b3b      	ldrb	r3, [r7, #12]
d0080592:	7b7a      	ldrb	r2, [r7, #13]
d0080594:	2010      	movs	r0, #16
d0080596:	7bb9      	ldrb	r1, [r7, #14]
d0080598:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008059c:	7bfa      	ldrb	r2, [r7, #15]
d008059e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00805a2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00805a6:	685b      	ldr	r3, [r3, #4]
d00805a8:	68db      	ldr	r3, [r3, #12]
d00805aa:	4798      	blx	r3
d00805ac:	7b3d      	ldrb	r5, [r7, #12]
d00805ae:	7b7b      	ldrb	r3, [r7, #13]
d00805b0:	4621      	mov	r1, r4
d00805b2:	7bba      	ldrb	r2, [r7, #14]
d00805b4:	4620      	mov	r0, r4
d00805b6:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d00805ba:	7bfe      	ldrb	r6, [r7, #15]
d00805bc:	f44f 73a0 	mov.w	r3, #320	; 0x140
d00805c0:	ea45 4502 	orr.w	r5, r5, r2, lsl #16
d00805c4:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00805c8:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d00805cc:	686d      	ldr	r5, [r5, #4]
d00805ce:	686d      	ldr	r5, [r5, #4]
d00805d0:	47a8      	blx	r5
d00805d2:	7b3b      	ldrb	r3, [r7, #12]
d00805d4:	7b7a      	ldrb	r2, [r7, #13]
d00805d6:	2003      	movs	r0, #3
d00805d8:	7bb9      	ldrb	r1, [r7, #14]
d00805da:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00805de:	7bfa      	ldrb	r2, [r7, #15]
d00805e0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00805e4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00805e8:	685b      	ldr	r3, [r3, #4]
d00805ea:	68db      	ldr	r3, [r3, #12]
d00805ec:	4798      	blx	r3
d00805ee:	7b3d      	ldrb	r5, [r7, #12]
d00805f0:	7b7a      	ldrb	r2, [r7, #13]
d00805f2:	4620      	mov	r0, r4
d00805f4:	7bb9      	ldrb	r1, [r7, #14]
d00805f6:	233a      	movs	r3, #58	; 0x3a
d00805f8:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d00805fc:	7bfe      	ldrb	r6, [r7, #15]
d00805fe:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080602:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d0080606:	2184      	movs	r1, #132	; 0x84
d0080608:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d008060c:	686d      	ldr	r5, [r5, #4]
d008060e:	686d      	ldr	r5, [r5, #4]
d0080610:	47a8      	blx	r5
d0080612:	7b3b      	ldrb	r3, [r7, #12]
d0080614:	7b7a      	ldrb	r2, [r7, #13]
d0080616:	200b      	movs	r0, #11
d0080618:	7bb9      	ldrb	r1, [r7, #14]
d008061a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008061e:	7bfa      	ldrb	r2, [r7, #15]
d0080620:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080624:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080628:	685b      	ldr	r3, [r3, #4]
d008062a:	68db      	ldr	r3, [r3, #12]
d008062c:	4798      	blx	r3
d008062e:	7b3d      	ldrb	r5, [r7, #12]
d0080630:	7b7a      	ldrb	r2, [r7, #13]
d0080632:	4620      	mov	r0, r4
d0080634:	7bb9      	ldrb	r1, [r7, #14]
d0080636:	2303      	movs	r3, #3
d0080638:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d008063c:	7bfe      	ldrb	r6, [r7, #15]
d008063e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080642:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d0080646:	21be      	movs	r1, #190	; 0xbe
d0080648:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d008064c:	686d      	ldr	r5, [r5, #4]
d008064e:	686d      	ldr	r5, [r5, #4]
d0080650:	47a8      	blx	r5
d0080652:	7b3b      	ldrb	r3, [r7, #12]
d0080654:	7b7a      	ldrb	r2, [r7, #13]
d0080656:	200b      	movs	r0, #11
d0080658:	7bb9      	ldrb	r1, [r7, #14]
d008065a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008065e:	7bfa      	ldrb	r2, [r7, #15]
d0080660:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080664:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080668:	685b      	ldr	r3, [r3, #4]
d008066a:	68db      	ldr	r3, [r3, #12]
d008066c:	4798      	blx	r3
d008066e:	7b3a      	ldrb	r2, [r7, #12]
d0080670:	7b79      	ldrb	r1, [r7, #13]
d0080672:	4620      	mov	r0, r4
d0080674:	7bbe      	ldrb	r6, [r7, #14]
d0080676:	2303      	movs	r3, #3
d0080678:	ea42 2401 	orr.w	r4, r2, r1, lsl #8
d008067c:	7bfd      	ldrb	r5, [r7, #15]
d008067e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080682:	217f      	movs	r1, #127	; 0x7f
d0080684:	ea44 4406 	orr.w	r4, r4, r6, lsl #16
d0080688:	ea44 6405 	orr.w	r4, r4, r5, lsl #24
d008068c:	6864      	ldr	r4, [r4, #4]
d008068e:	6864      	ldr	r4, [r4, #4]
d0080690:	47a0      	blx	r4
d0080692:	2202      	movs	r2, #2
d0080694:	492c      	ldr	r1, [pc, #176]	; (d0080748 <main+0x2c8>)
d0080696:	208c      	movs	r0, #140	; 0x8c
d0080698:	f7ff fe0c 	bl	d00802b4 <draw_lcd_centered>
d008069c:	20a4      	movs	r0, #164	; 0xa4
d008069e:	220b      	movs	r2, #11
d00806a0:	492a      	ldr	r1, [pc, #168]	; (d008074c <main+0x2cc>)
d00806a2:	f7ff fe07 	bl	d00802b4 <draw_lcd_centered>
d00806a6:	7b3b      	ldrb	r3, [r7, #12]
d00806a8:	7b7a      	ldrb	r2, [r7, #13]
d00806aa:	7bb9      	ldrb	r1, [r7, #14]
d00806ac:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00806b0:	7bfa      	ldrb	r2, [r7, #15]
d00806b2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00806b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00806ba:	681b      	ldr	r3, [r3, #0]
d00806bc:	681b      	ldr	r3, [r3, #0]
d00806be:	4798      	blx	r3
d00806c0:	7b3b      	ldrb	r3, [r7, #12]
d00806c2:	7b7a      	ldrb	r2, [r7, #13]
d00806c4:	7bb9      	ldrb	r1, [r7, #14]
d00806c6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00806ca:	7bfa      	ldrb	r2, [r7, #15]
d00806cc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00806d0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00806d4:	681b      	ldr	r3, [r3, #0]
d00806d6:	68db      	ldr	r3, [r3, #12]
d00806d8:	4798      	blx	r3
d00806da:	7f3b      	ldrb	r3, [r7, #28]
d00806dc:	7f7a      	ldrb	r2, [r7, #29]
d00806de:	7fb9      	ldrb	r1, [r7, #30]
d00806e0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00806e4:	7ffa      	ldrb	r2, [r7, #31]
d00806e6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00806ea:	ea53 6302 	orrs.w	r3, r3, r2, lsl #24
d00806ee:	f000 86a1 	beq.w	d0081434 <main+0xfb4>
d00806f2:	4c13      	ldr	r4, [pc, #76]	; (d0080740 <main+0x2c0>)
d00806f4:	7f21      	ldrb	r1, [r4, #28]
d00806f6:	7f63      	ldrb	r3, [r4, #29]
d00806f8:	7fa2      	ldrb	r2, [r4, #30]
d00806fa:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00806fe:	7fe3      	ldrb	r3, [r4, #31]
d0080700:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080704:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080708:	685b      	ldr	r3, [r3, #4]
d008070a:	4798      	blx	r3
d008070c:	2800      	cmp	r0, #0
d008070e:	f000 8691 	beq.w	d0081434 <main+0xfb4>
d0080712:	7821      	ldrb	r1, [r4, #0]
d0080714:	279a      	movs	r7, #154	; 0x9a
d0080716:	7863      	ldrb	r3, [r4, #1]
d0080718:	78a2      	ldrb	r2, [r4, #2]
d008071a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d008071e:	78e3      	ldrb	r3, [r4, #3]
d0080720:	4e0b      	ldr	r6, [pc, #44]	; (d0080750 <main+0x2d0>)
d0080722:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080726:	4d0b      	ldr	r5, [pc, #44]	; (d0080754 <main+0x2d4>)
d0080728:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008072c:	689b      	ldr	r3, [r3, #8]
d008072e:	4798      	blx	r3
d0080730:	4b09      	ldr	r3, [pc, #36]	; (d0080758 <main+0x2d8>)
d0080732:	490a      	ldr	r1, [pc, #40]	; (d008075c <main+0x2dc>)
d0080734:	681b      	ldr	r3, [r3, #0]
d0080736:	f8df c028 	ldr.w	ip, [pc, #40]	; d0080760 <main+0x2e0>
d008073a:	4058      	eors	r0, r3
d008073c:	e012      	b.n	d0080764 <main+0x2e4>
d008073e:	bf00      	nop
d0080740:	2001f000 	.word	0x2001f000
d0080744:	d00921c0 	.word	0xd00921c0
d0080748:	d008266c 	.word	0xd008266c
d008074c:	d0082654 	.word	0xd0082654
d0080750:	3531dec1 	.word	0x3531dec1
d0080754:	aaaaaaab 	.word	0xaaaaaaab
d0080758:	d0082720 	.word	0xd0082720
d008075c:	d00921e0 	.word	0xd00921e0
d0080760:	cccccccd 	.word	0xcccccccd
d0080764:	ea80 3340 	eor.w	r3, r0, r0, lsl #13
d0080768:	220f      	movs	r2, #15
d008076a:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d008076e:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0080772:	ea83 3443 	eor.w	r4, r3, r3, lsl #13
d0080776:	fbac e003 	umull	lr, r0, ip, r3
d008077a:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d008077e:	0b00      	lsrs	r0, r0, #12
d0080780:	ea84 1e44 	eor.w	lr, r4, r4, lsl #5
d0080784:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d0080788:	ea8e 384e 	eor.w	r8, lr, lr, lsl #13
d008078c:	fba6 940e 	umull	r9, r4, r6, lr
d0080790:	eba3 2380 	sub.w	r3, r3, r0, lsl #10
d0080794:	ea88 4058 	eor.w	r0, r8, r8, lsr #17
d0080798:	0964      	lsrs	r4, r4, #5
d008079a:	800b      	strh	r3, [r1, #0]
d008079c:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
d00807a0:	fb07 e414 	mls	r4, r7, r4, lr
d00807a4:	fba5 e300 	umull	lr, r3, r5, r0
d00807a8:	3422      	adds	r4, #34	; 0x22
d00807aa:	08db      	lsrs	r3, r3, #3
d00807ac:	708c      	strb	r4, [r1, #2]
d00807ae:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00807b2:	eba0 0383 	sub.w	r3, r0, r3, lsl #2
d00807b6:	3302      	adds	r3, #2
d00807b8:	b2db      	uxtb	r3, r3
d00807ba:	2b09      	cmp	r3, #9
d00807bc:	70cb      	strb	r3, [r1, #3]
d00807be:	d803      	bhi.n	d00807c8 <main+0x348>
d00807c0:	2b06      	cmp	r3, #6
d00807c2:	bf8c      	ite	hi
d00807c4:	220d      	movhi	r2, #13
d00807c6:	2205      	movls	r2, #5
d00807c8:	710a      	strb	r2, [r1, #4]
d00807ca:	3106      	adds	r1, #6
d00807cc:	4ba4      	ldr	r3, [pc, #656]	; (d0080a60 <main+0x5e0>)
d00807ce:	4299      	cmp	r1, r3
d00807d0:	d1c8      	bne.n	d0080764 <main+0x2e4>
d00807d2:	2300      	movs	r3, #0
d00807d4:	9309      	str	r3, [sp, #36]	; 0x24
d00807d6:	4ba3      	ldr	r3, [pc, #652]	; (d0080a64 <main+0x5e4>)
d00807d8:	6018      	str	r0, [r3, #0]
d00807da:	4ca3      	ldr	r4, [pc, #652]	; (d0080a68 <main+0x5e8>)
d00807dc:	7821      	ldrb	r1, [r4, #0]
d00807de:	7863      	ldrb	r3, [r4, #1]
d00807e0:	78a2      	ldrb	r2, [r4, #2]
d00807e2:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00807e6:	78e3      	ldrb	r3, [r4, #3]
d00807e8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00807ec:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00807f0:	6a1b      	ldr	r3, [r3, #32]
d00807f2:	4798      	blx	r3
d00807f4:	f000 0003 	and.w	r0, r0, #3
d00807f8:	2803      	cmp	r0, #3
d00807fa:	f000 8572 	beq.w	d00812e2 <main+0xe62>
d00807fe:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0080800:	f8df 9280 	ldr.w	r9, [pc, #640]	; d0080a84 <main+0x604>
d0080804:	f3c3 03c3 	ubfx	r3, r3, #3, #4
d0080808:	4c98      	ldr	r4, [pc, #608]	; (d0080a6c <main+0x5ec>)
d008080a:	f819 3003 	ldrb.w	r3, [r9, r3]
d008080e:	ee08 3a10 	vmov	s16, r3
d0080812:	4620      	mov	r0, r4
d0080814:	22c8      	movs	r2, #200	; 0xc8
d0080816:	2100      	movs	r1, #0
d0080818:	34c8      	adds	r4, #200	; 0xc8
d008081a:	f000 fe2f 	bl	d008147c <memset>
d008081e:	4b94      	ldr	r3, [pc, #592]	; (d0080a70 <main+0x5f0>)
d0080820:	429c      	cmp	r4, r3
d0080822:	d1f6      	bne.n	d0080812 <main+0x392>
d0080824:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0080826:	2514      	movs	r5, #20
d0080828:	2600      	movs	r6, #0
d008082a:	f3c3 0747 	ubfx	r7, r3, #1, #8
d008082e:	b234      	sxth	r4, r6
d0080830:	f007 030f 	and.w	r3, r7, #15
d0080834:	fa0f f885 	sxth.w	r8, r5
d0080838:	f819 a003 	ldrb.w	sl, [r9, r3]
d008083c:	4544      	cmp	r4, r8
d008083e:	da10      	bge.n	d0080862 <main+0x3e2>
d0080840:	f00a 0a0f 	and.w	sl, sl, #15
d0080844:	eb04 0084 	add.w	r0, r4, r4, lsl #2
d0080848:	3401      	adds	r4, #1
d008084a:	4b88      	ldr	r3, [pc, #544]	; (d0080a6c <main+0x5ec>)
d008084c:	2218      	movs	r2, #24
d008084e:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d0080852:	4651      	mov	r1, sl
d0080854:	b224      	sxth	r4, r4
d0080856:	eb03 00c0 	add.w	r0, r3, r0, lsl #3
d008085a:	f000 fe0f 	bl	d008147c <memset>
d008085e:	45a0      	cmp	r8, r4
d0080860:	d1f0      	bne.n	d0080844 <main+0x3c4>
d0080862:	3514      	adds	r5, #20
d0080864:	3701      	adds	r7, #1
d0080866:	3614      	adds	r6, #20
d0080868:	b2ad      	uxth	r5, r5
d008086a:	b2ff      	uxtb	r7, r7
d008086c:	f5b5 7faa 	cmp.w	r5, #340	; 0x154
d0080870:	b2b6      	uxth	r6, r6
d0080872:	d1dc      	bne.n	d008082e <main+0x3ae>
d0080874:	4b7f      	ldr	r3, [pc, #508]	; (d0080a74 <main+0x5f4>)
d0080876:	f640 710f 	movw	r1, #3855	; 0xf0f
d008087a:	f503 427a 	add.w	r2, r3, #64000	; 0xfa00
d008087e:	f823 1bc8 	strh.w	r1, [r3], #200
d0080882:	429a      	cmp	r2, r3
d0080884:	d1fb      	bne.n	d008087e <main+0x3fe>
d0080886:	2301      	movs	r3, #1
d0080888:	f8df a1e0 	ldr.w	sl, [pc, #480]	; d0080a6c <main+0x5ec>
d008088c:	2000      	movs	r0, #0
d008088e:	f240 1437 	movw	r4, #311	; 0x137
d0080892:	4619      	mov	r1, r3
d0080894:	4652      	mov	r2, sl
d0080896:	f88a 3028 	strb.w	r3, [sl, #40]	; 0x28
d008089a:	f88a 3038 	strb.w	r3, [sl, #56]	; 0x38
d008089e:	f88a 3048 	strb.w	r3, [sl, #72]	; 0x48
d00808a2:	f88a 3058 	strb.w	r3, [sl, #88]	; 0x58
d00808a6:	f88a 3068 	strb.w	r3, [sl, #104]	; 0x68
d00808aa:	f88a 3078 	strb.w	r3, [sl, #120]	; 0x78
d00808ae:	f88a 3088 	strb.w	r3, [sl, #136]	; 0x88
d00808b2:	f88a 3098 	strb.w	r3, [sl, #152]	; 0x98
d00808b6:	f88a 30a8 	strb.w	r3, [sl, #168]	; 0xa8
d00808ba:	f88a 30f0 	strb.w	r3, [sl, #240]	; 0xf0
d00808be:	f88a 3100 	strb.w	r3, [sl, #256]	; 0x100
d00808c2:	f88a 3110 	strb.w	r3, [sl, #272]	; 0x110
d00808c6:	f88a 3120 	strb.w	r3, [sl, #288]	; 0x120
d00808ca:	f88a 3130 	strb.w	r3, [sl, #304]	; 0x130
d00808ce:	f88a 3140 	strb.w	r3, [sl, #320]	; 0x140
d00808d2:	f88a 3150 	strb.w	r3, [sl, #336]	; 0x150
d00808d6:	f88a 3160 	strb.w	r3, [sl, #352]	; 0x160
d00808da:	f88a 3170 	strb.w	r3, [sl, #368]	; 0x170
d00808de:	f88a 31b8 	strb.w	r3, [sl, #440]	; 0x1b8
d00808e2:	f88a 31c8 	strb.w	r3, [sl, #456]	; 0x1c8
d00808e6:	f88a 31d8 	strb.w	r3, [sl, #472]	; 0x1d8
d00808ea:	f88a 31e8 	strb.w	r3, [sl, #488]	; 0x1e8
d00808ee:	f88a 31f8 	strb.w	r3, [sl, #504]	; 0x1f8
d00808f2:	f88a 3208 	strb.w	r3, [sl, #520]	; 0x208
d00808f6:	f88a 3218 	strb.w	r3, [sl, #536]	; 0x218
d00808fa:	f88a 3228 	strb.w	r3, [sl, #552]	; 0x228
d00808fe:	f88a 3238 	strb.w	r3, [sl, #568]	; 0x238
d0080902:	f88a 3280 	strb.w	r3, [sl, #640]	; 0x280
d0080906:	f88a 3290 	strb.w	r3, [sl, #656]	; 0x290
d008090a:	f88a 32a0 	strb.w	r3, [sl, #672]	; 0x2a0
d008090e:	f88a 32b0 	strb.w	r3, [sl, #688]	; 0x2b0
d0080912:	f88a 32c0 	strb.w	r3, [sl, #704]	; 0x2c0
d0080916:	f88a 32d0 	strb.w	r3, [sl, #720]	; 0x2d0
d008091a:	f88a 32e0 	strb.w	r3, [sl, #736]	; 0x2e0
d008091e:	f88a 32f0 	strb.w	r3, [sl, #752]	; 0x2f0
d0080922:	f88a 3300 	strb.w	r3, [sl, #768]	; 0x300
d0080926:	f88a 3348 	strb.w	r3, [sl, #840]	; 0x348
d008092a:	f88a 3358 	strb.w	r3, [sl, #856]	; 0x358
d008092e:	f88a 3368 	strb.w	r3, [sl, #872]	; 0x368
d0080932:	f88a 3378 	strb.w	r3, [sl, #888]	; 0x378
d0080936:	f88a 3388 	strb.w	r3, [sl, #904]	; 0x388
d008093a:	f88a 3398 	strb.w	r3, [sl, #920]	; 0x398
d008093e:	f88a 33a8 	strb.w	r3, [sl, #936]	; 0x3a8
d0080942:	f88a 33b8 	strb.w	r3, [sl, #952]	; 0x3b8
d0080946:	f88a 33c8 	strb.w	r3, [sl, #968]	; 0x3c8
d008094a:	f88a 3410 	strb.w	r3, [sl, #1040]	; 0x410
d008094e:	f88a 3420 	strb.w	r3, [sl, #1056]	; 0x420
d0080952:	f88a 3430 	strb.w	r3, [sl, #1072]	; 0x430
d0080956:	f88a 3440 	strb.w	r3, [sl, #1088]	; 0x440
d008095a:	f88a 3450 	strb.w	r3, [sl, #1104]	; 0x450
d008095e:	f88a 3460 	strb.w	r3, [sl, #1120]	; 0x460
d0080962:	f88a 3470 	strb.w	r3, [sl, #1136]	; 0x470
d0080966:	f88a 3480 	strb.w	r3, [sl, #1152]	; 0x480
d008096a:	f88a 3490 	strb.w	r3, [sl, #1168]	; 0x490
d008096e:	f88a 34d8 	strb.w	r3, [sl, #1240]	; 0x4d8
d0080972:	f88a 34e8 	strb.w	r3, [sl, #1256]	; 0x4e8
d0080976:	f88a 34f8 	strb.w	r3, [sl, #1272]	; 0x4f8
d008097a:	f88a 3508 	strb.w	r3, [sl, #1288]	; 0x508
d008097e:	f88a 3518 	strb.w	r3, [sl, #1304]	; 0x518
d0080982:	f88a 3528 	strb.w	r3, [sl, #1320]	; 0x528
d0080986:	f88a 3538 	strb.w	r3, [sl, #1336]	; 0x538
d008098a:	f88a 3548 	strb.w	r3, [sl, #1352]	; 0x548
d008098e:	f88a 3558 	strb.w	r3, [sl, #1368]	; 0x558
d0080992:	f88a 35a0 	strb.w	r3, [sl, #1440]	; 0x5a0
d0080996:	f88a 35b0 	strb.w	r3, [sl, #1456]	; 0x5b0
d008099a:	f88a 35c0 	strb.w	r3, [sl, #1472]	; 0x5c0
d008099e:	f88a 35d0 	strb.w	r3, [sl, #1488]	; 0x5d0
d00809a2:	f88a 35e0 	strb.w	r3, [sl, #1504]	; 0x5e0
d00809a6:	f88a 35f0 	strb.w	r3, [sl, #1520]	; 0x5f0
d00809aa:	f88a 3600 	strb.w	r3, [sl, #1536]	; 0x600
d00809ae:	f88a 3610 	strb.w	r3, [sl, #1552]	; 0x610
d00809b2:	f88a 3620 	strb.w	r3, [sl, #1568]	; 0x620
d00809b6:	f88a 3668 	strb.w	r3, [sl, #1640]	; 0x668
d00809ba:	f88a 3678 	strb.w	r3, [sl, #1656]	; 0x678
d00809be:	f88a 3688 	strb.w	r3, [sl, #1672]	; 0x688
d00809c2:	f88a 3698 	strb.w	r3, [sl, #1688]	; 0x698
d00809c6:	f88a 36a8 	strb.w	r3, [sl, #1704]	; 0x6a8
d00809ca:	f88a 36b8 	strb.w	r3, [sl, #1720]	; 0x6b8
d00809ce:	f88a 36c8 	strb.w	r3, [sl, #1736]	; 0x6c8
d00809d2:	f88a 36d8 	strb.w	r3, [sl, #1752]	; 0x6d8
d00809d6:	f88a 36e8 	strb.w	r3, [sl, #1768]	; 0x6e8
d00809da:	3001      	adds	r0, #1
d00809dc:	f882 1730 	strb.w	r1, [r2, #1840]	; 0x730
d00809e0:	f882 1740 	strb.w	r1, [r2, #1856]	; 0x740
d00809e4:	32c8      	adds	r2, #200	; 0xc8
d00809e6:	42a0      	cmp	r0, r4
d00809e8:	f882 1688 	strb.w	r1, [r2, #1672]	; 0x688
d00809ec:	f882 1698 	strb.w	r1, [r2, #1688]	; 0x698
d00809f0:	f882 16a8 	strb.w	r1, [r2, #1704]	; 0x6a8
d00809f4:	f882 16b8 	strb.w	r1, [r2, #1720]	; 0x6b8
d00809f8:	f882 16c8 	strb.w	r1, [r2, #1736]	; 0x6c8
d00809fc:	f882 16d8 	strb.w	r1, [r2, #1752]	; 0x6d8
d0080a00:	f882 16e8 	strb.w	r1, [r2, #1768]	; 0x6e8
d0080a04:	d1e9      	bne.n	d00809da <main+0x55a>
d0080a06:	4e1c      	ldr	r6, [pc, #112]	; (d0080a78 <main+0x5f8>)
d0080a08:	2300      	movs	r3, #0
d0080a0a:	b29c      	uxth	r4, r3
d0080a0c:	2101      	movs	r1, #1
d0080a0e:	2298      	movs	r2, #152	; 0x98
d0080a10:	4630      	mov	r0, r6
d0080a12:	1865      	adds	r5, r4, r1
d0080a14:	b22d      	sxth	r5, r5
d0080a16:	429d      	cmp	r5, r3
d0080a18:	dd01      	ble.n	d0080a1e <main+0x59e>
d0080a1a:	f000 fd2f 	bl	d008147c <memset>
d0080a1e:	3410      	adds	r4, #16
d0080a20:	f506 6648 	add.w	r6, r6, #3200	; 0xc80
d0080a24:	b2a2      	uxth	r2, r4
d0080a26:	b223      	sxth	r3, r4
d0080a28:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0080a2c:	d1ed      	bne.n	d0080a0a <main+0x58a>
d0080a2e:	4b0f      	ldr	r3, [pc, #60]	; (d0080a6c <main+0x5ec>)
d0080a30:	2205      	movs	r2, #5
d0080a32:	f883 2068 	strb.w	r2, [r3, #104]	; 0x68
d0080a36:	33c8      	adds	r3, #200	; 0xc8
d0080a38:	490d      	ldr	r1, [pc, #52]	; (d0080a70 <main+0x5f0>)
d0080a3a:	428b      	cmp	r3, r1
d0080a3c:	d1f9      	bne.n	d0080a32 <main+0x5b2>
d0080a3e:	2298      	movs	r2, #152	; 0x98
d0080a40:	2105      	movs	r1, #5
d0080a42:	480e      	ldr	r0, [pc, #56]	; (d0080a7c <main+0x5fc>)
d0080a44:	f04f 089a 	mov.w	r8, #154	; 0x9a
d0080a48:	f000 fd18 	bl	d008147c <memset>
d0080a4c:	4b05      	ldr	r3, [pc, #20]	; (d0080a64 <main+0x5e4>)
d0080a4e:	4a0c      	ldr	r2, [pc, #48]	; (d0080a80 <main+0x600>)
d0080a50:	f04f 0cc8 	mov.w	ip, #200	; 0xc8
d0080a54:	f8d3 b000 	ldr.w	fp, [r3]
d0080a58:	f8df e02c 	ldr.w	lr, [pc, #44]	; d0080a88 <main+0x608>
d0080a5c:	e01b      	b.n	d0080a96 <main+0x616>
d0080a5e:	bf00      	nop
d0080a60:	d0092390 	.word	0xd0092390
d0080a64:	d0082720 	.word	0xd0082720
d0080a68:	2001f000 	.word	0x2001f000
d0080a6c:	d00827c0 	.word	0xd00827c0
d0080a70:	d00921c0 	.word	0xd00921c0
d0080a74:	d00827d8 	.word	0xd00827d8
d0080a78:	d00827e0 	.word	0xd00827e0
d0080a7c:	d008a4e0 	.word	0xd008a4e0
d0080a80:	d00921e0 	.word	0xd00921e0
d0080a84:	d008246c 	.word	0xd008246c
d0080a88:	aaaaaaab 	.word	0xaaaaaaab
d0080a8c:	8013      	strh	r3, [r2, #0]
d0080a8e:	3206      	adds	r2, #6
d0080a90:	4b9f      	ldr	r3, [pc, #636]	; (d0080d10 <main+0x890>)
d0080a92:	429a      	cmp	r2, r3
d0080a94:	d07b      	beq.n	d0080b8e <main+0x70e>
d0080a96:	78d5      	ldrb	r5, [r2, #3]
d0080a98:	8811      	ldrh	r1, [r2, #0]
d0080a9a:	2d08      	cmp	r5, #8
d0080a9c:	7890      	ldrb	r0, [r2, #2]
d0080a9e:	ea4f 1311 	mov.w	r3, r1, lsr #4
d0080aa2:	7914      	ldrb	r4, [r2, #4]
d0080aa4:	bf94      	ite	ls
d0080aa6:	2602      	movls	r6, #2
d0080aa8:	2604      	movhi	r6, #4
d0080aaa:	28c7      	cmp	r0, #199	; 0xc7
d0080aac:	eba3 0306 	sub.w	r3, r3, r6
d0080ab0:	b29b      	uxth	r3, r3
d0080ab2:	d82c      	bhi.n	d0080b0e <main+0x68e>
d0080ab4:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0080ab8:	d205      	bcs.n	d0080ac6 <main+0x646>
d0080aba:	fb0c a703 	mla	r7, ip, r3, sl
d0080abe:	f004 090f 	and.w	r9, r4, #15
d0080ac2:	f807 9000 	strb.w	r9, [r7, r0]
d0080ac6:	1c5f      	adds	r7, r3, #1
d0080ac8:	b2bf      	uxth	r7, r7
d0080aca:	f5b7 7fa0 	cmp.w	r7, #320	; 0x140
d0080ace:	d205      	bcs.n	d0080adc <main+0x65c>
d0080ad0:	fb0c a707 	mla	r7, ip, r7, sl
d0080ad4:	f004 090f 	and.w	r9, r4, #15
d0080ad8:	f807 9000 	strb.w	r9, [r7, r0]
d0080adc:	2e02      	cmp	r6, #2
d0080ade:	d016      	beq.n	d0080b0e <main+0x68e>
d0080ae0:	1c9f      	adds	r7, r3, #2
d0080ae2:	b2bf      	uxth	r7, r7
d0080ae4:	f5b7 7fa0 	cmp.w	r7, #320	; 0x140
d0080ae8:	d205      	bcs.n	d0080af6 <main+0x676>
d0080aea:	fb0c a707 	mla	r7, ip, r7, sl
d0080aee:	f004 090f 	and.w	r9, r4, #15
d0080af2:	f807 9000 	strb.w	r9, [r7, r0]
d0080af6:	2e04      	cmp	r6, #4
d0080af8:	d109      	bne.n	d0080b0e <main+0x68e>
d0080afa:	3303      	adds	r3, #3
d0080afc:	b29b      	uxth	r3, r3
d0080afe:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0080b02:	d204      	bcs.n	d0080b0e <main+0x68e>
d0080b04:	fb0c a303 	mla	r3, ip, r3, sl
d0080b08:	f004 040f 	and.w	r4, r4, #15
d0080b0c:	541c      	strb	r4, [r3, r0]
d0080b0e:	1b4b      	subs	r3, r1, r5
d0080b10:	b29b      	uxth	r3, r3
d0080b12:	f5b3 5fa0 	cmp.w	r3, #5120	; 0x1400
d0080b16:	d9b9      	bls.n	d0080a8c <main+0x60c>
d0080b18:	ea8b 334b 	eor.w	r3, fp, fp, lsl #13
d0080b1c:	497d      	ldr	r1, [pc, #500]	; (d0080d14 <main+0x894>)
d0080b1e:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0080b22:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0080b26:	ea83 3043 	eor.w	r0, r3, r3, lsl #13
d0080b2a:	fba1 4103 	umull	r4, r1, r1, r3
d0080b2e:	4c7a      	ldr	r4, [pc, #488]	; (d0080d18 <main+0x898>)
d0080b30:	ea80 4050 	eor.w	r0, r0, r0, lsr #17
d0080b34:	0b09      	lsrs	r1, r1, #12
d0080b36:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
d0080b3a:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d0080b3e:	ea80 3b40 	eor.w	fp, r0, r0, lsl #13
d0080b42:	fba4 5400 	umull	r5, r4, r4, r0
d0080b46:	eba3 2181 	sub.w	r1, r3, r1, lsl #10
d0080b4a:	ea8b 435b 	eor.w	r3, fp, fp, lsr #17
d0080b4e:	0964      	lsrs	r4, r4, #5
d0080b50:	f501 51a0 	add.w	r1, r1, #5120	; 0x1400
d0080b54:	ea83 1b43 	eor.w	fp, r3, r3, lsl #5
d0080b58:	fb08 0014 	mls	r0, r8, r4, r0
d0080b5c:	fbae 430b 	umull	r4, r3, lr, fp
d0080b60:	8011      	strh	r1, [r2, #0]
d0080b62:	3022      	adds	r0, #34	; 0x22
d0080b64:	08d9      	lsrs	r1, r3, #3
d0080b66:	7090      	strb	r0, [r2, #2]
d0080b68:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d0080b6c:	ebab 0181 	sub.w	r1, fp, r1, lsl #2
d0080b70:	3102      	adds	r1, #2
d0080b72:	b2c9      	uxtb	r1, r1
d0080b74:	2909      	cmp	r1, #9
d0080b76:	70d1      	strb	r1, [r2, #3]
d0080b78:	f200 80be 	bhi.w	d0080cf8 <main+0x878>
d0080b7c:	2906      	cmp	r1, #6
d0080b7e:	bf8c      	ite	hi
d0080b80:	230d      	movhi	r3, #13
d0080b82:	2305      	movls	r3, #5
d0080b84:	7113      	strb	r3, [r2, #4]
d0080b86:	3206      	adds	r2, #6
d0080b88:	4b61      	ldr	r3, [pc, #388]	; (d0080d10 <main+0x890>)
d0080b8a:	429a      	cmp	r2, r3
d0080b8c:	d183      	bne.n	d0080a96 <main+0x616>
d0080b8e:	f8bd 3024 	ldrh.w	r3, [sp, #36]	; 0x24
d0080b92:	2201      	movs	r2, #1
d0080b94:	f04f 0c00 	mov.w	ip, #0
d0080b98:	f8cd b034 	str.w	fp, [sp, #52]	; 0x34
d0080b9c:	0059      	lsls	r1, r3, #1
d0080b9e:	9203      	str	r2, [sp, #12]
d0080ba0:	46e1      	mov	r9, ip
d0080ba2:	2268      	movs	r2, #104	; 0x68
d0080ba4:	910c      	str	r1, [sp, #48]	; 0x30
d0080ba6:	b289      	uxth	r1, r1
d0080ba8:	930a      	str	r3, [sp, #40]	; 0x28
d0080baa:	4688      	mov	r8, r1
d0080bac:	910b      	str	r1, [sp, #44]	; 0x2c
d0080bae:	495b      	ldr	r1, [pc, #364]	; (d0080d1c <main+0x89c>)
d0080bb0:	f8c1 b000 	str.w	fp, [r1]
d0080bb4:	46c3      	mov	fp, r8
d0080bb6:	4698      	mov	r8, r3
d0080bb8:	e00f      	b.n	d0080bda <main+0x75a>
d0080bba:	9803      	ldr	r0, [sp, #12]
d0080bbc:	f108 0209 	add.w	r2, r8, #9
d0080bc0:	f10b 0113 	add.w	r1, fp, #19
d0080bc4:	f20c 1c3f 	addw	ip, ip, #319	; 0x13f
d0080bc8:	3001      	adds	r0, #1
d0080bca:	fa1f f882 	uxth.w	r8, r2
d0080bce:	46f1      	mov	r9, lr
d0080bd0:	461a      	mov	r2, r3
d0080bd2:	fa1f fb81 	uxth.w	fp, r1
d0080bd6:	b283      	uxth	r3, r0
d0080bd8:	9303      	str	r3, [sp, #12]
d0080bda:	4b51      	ldr	r3, [pc, #324]	; (d0080d20 <main+0x8a0>)
d0080bdc:	f018 0f80 	tst.w	r8, #128	; 0x80
d0080be0:	ea4f 70ec 	mov.w	r0, ip, asr #31
d0080be4:	4c4f      	ldr	r4, [pc, #316]	; (d0080d24 <main+0x8a4>)
d0080be6:	fb83 310c 	smull	r3, r1, r3, ip
d0080bea:	fa5f f388 	uxtb.w	r3, r8
d0080bee:	bf14      	ite	ne
d0080bf0:	f1c3 03ff 	rsbne	r3, r3, #255	; 0xff
d0080bf4:	b21b      	sxtheq	r3, r3
d0080bf6:	4461      	add	r1, ip
d0080bf8:	f01b 0f80 	tst.w	fp, #128	; 0x80
d0080bfc:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
d0080c00:	ebc0 10a1 	rsb	r0, r0, r1, asr #6
d0080c04:	ea4f 03c3 	mov.w	r3, r3, lsl #3
d0080c08:	fa5f f18b 	uxtb.w	r1, fp
d0080c0c:	fba4 5403 	umull	r5, r4, r4, r3
d0080c10:	fa0f fe80 	sxth.w	lr, r0
d0080c14:	bf14      	ite	ne
d0080c16:	f1c1 01ff 	rsbne	r1, r1, #255	; 0xff
d0080c1a:	b209      	sxtheq	r1, r1
d0080c1c:	1b1b      	subs	r3, r3, r4
d0080c1e:	eb01 01c1 	add.w	r1, r1, r1, lsl #3
d0080c22:	eb04 0353 	add.w	r3, r4, r3, lsr #1
d0080c26:	4c3f      	ldr	r4, [pc, #252]	; (d0080d24 <main+0x8a4>)
d0080c28:	0049      	lsls	r1, r1, #1
d0080c2a:	f3c3 138f 	ubfx	r3, r3, #6, #16
d0080c2e:	fba4 5401 	umull	r5, r4, r4, r1
d0080c32:	3343      	adds	r3, #67	; 0x43
d0080c34:	1b09      	subs	r1, r1, r4
d0080c36:	eb04 0151 	add.w	r1, r4, r1, lsr #1
d0080c3a:	eb03 1391 	add.w	r3, r3, r1, lsr #6
d0080c3e:	9903      	ldr	r1, [sp, #12]
d0080c40:	2901      	cmp	r1, #1
d0080c42:	b29d      	uxth	r5, r3
d0080c44:	b21b      	sxth	r3, r3
d0080c46:	d0b8      	beq.n	d0080bba <main+0x73a>
d0080c48:	45ce      	cmp	lr, r9
d0080c4a:	f340 8335 	ble.w	d00812b8 <main+0xe38>
d0080c4e:	eba0 0009 	sub.w	r0, r0, r9
d0080c52:	2101      	movs	r1, #1
d0080c54:	9107      	str	r1, [sp, #28]
d0080c56:	b281      	uxth	r1, r0
d0080c58:	4293      	cmp	r3, r2
d0080c5a:	9104      	str	r1, [sp, #16]
d0080c5c:	b201      	sxth	r1, r0
d0080c5e:	9106      	str	r1, [sp, #24]
d0080c60:	f340 8326 	ble.w	d00812b0 <main+0xe30>
d0080c64:	1b55      	subs	r5, r2, r5
d0080c66:	2101      	movs	r1, #1
d0080c68:	9108      	str	r1, [sp, #32]
d0080c6a:	b2a9      	uxth	r1, r5
d0080c6c:	fa1f f489 	uxth.w	r4, r9
d0080c70:	4608      	mov	r0, r1
d0080c72:	9105      	str	r1, [sp, #20]
d0080c74:	9904      	ldr	r1, [sp, #16]
d0080c76:	b22d      	sxth	r5, r5
d0080c78:	4401      	add	r1, r0
d0080c7a:	b209      	sxth	r1, r1
d0080c7c:	2a00      	cmp	r2, #0
d0080c7e:	db23      	blt.n	d0080cc8 <main+0x848>
d0080c80:	f240 103f 	movw	r0, #319	; 0x13f
d0080c84:	4284      	cmp	r4, r0
d0080c86:	bf94      	ite	ls
d0080c88:	2600      	movls	r6, #0
d0080c8a:	2601      	movhi	r6, #1
d0080c8c:	2ac7      	cmp	r2, #199	; 0xc7
d0080c8e:	bfc8      	it	gt
d0080c90:	f046 0601 	orrgt.w	r6, r6, #1
d0080c94:	bb9e      	cbnz	r6, d0080cfe <main+0x87e>
d0080c96:	20c8      	movs	r0, #200	; 0xc8
d0080c98:	fb19 2700 	smlabb	r7, r9, r0, r2
d0080c9c:	f04f 000c 	mov.w	r0, #12
d0080ca0:	f80a 0007 	strb.w	r0, [sl, r7]
d0080ca4:	1c60      	adds	r0, r4, #1
d0080ca6:	b200      	sxth	r0, r0
d0080ca8:	f240 173f 	movw	r7, #319	; 0x13f
d0080cac:	42b8      	cmp	r0, r7
d0080cae:	dc07      	bgt.n	d0080cc0 <main+0x840>
d0080cb0:	b936      	cbnz	r6, d0080cc0 <main+0x840>
d0080cb2:	26c8      	movs	r6, #200	; 0xc8
d0080cb4:	fb10 2006 	smlabb	r0, r0, r6, r2
d0080cb8:	f04f 060c 	mov.w	r6, #12
d0080cbc:	f80a 6000 	strb.w	r6, [sl, r0]
d0080cc0:	45ce      	cmp	lr, r9
d0080cc2:	d101      	bne.n	d0080cc8 <main+0x848>
d0080cc4:	4293      	cmp	r3, r2
d0080cc6:	d02f      	beq.n	d0080d28 <main+0x8a8>
d0080cc8:	0048      	lsls	r0, r1, #1
d0080cca:	b200      	sxth	r0, r0
d0080ccc:	42a8      	cmp	r0, r5
d0080cce:	db07      	blt.n	d0080ce0 <main+0x860>
d0080cd0:	9e05      	ldr	r6, [sp, #20]
d0080cd2:	4431      	add	r1, r6
d0080cd4:	9e07      	ldr	r6, [sp, #28]
d0080cd6:	4434      	add	r4, r6
d0080cd8:	b209      	sxth	r1, r1
d0080cda:	fa0f f984 	sxth.w	r9, r4
d0080cde:	b2a4      	uxth	r4, r4
d0080ce0:	9e06      	ldr	r6, [sp, #24]
d0080ce2:	42b0      	cmp	r0, r6
d0080ce4:	dcca      	bgt.n	d0080c7c <main+0x7fc>
d0080ce6:	9804      	ldr	r0, [sp, #16]
d0080ce8:	4401      	add	r1, r0
d0080cea:	9808      	ldr	r0, [sp, #32]
d0080cec:	4402      	add	r2, r0
d0080cee:	b209      	sxth	r1, r1
d0080cf0:	b212      	sxth	r2, r2
d0080cf2:	2a00      	cmp	r2, #0
d0080cf4:	dac4      	bge.n	d0080c80 <main+0x800>
d0080cf6:	e7e7      	b.n	d0080cc8 <main+0x848>
d0080cf8:	230f      	movs	r3, #15
d0080cfa:	7113      	strb	r3, [r2, #4]
d0080cfc:	e743      	b.n	d0080b86 <main+0x706>
d0080cfe:	1c60      	adds	r0, r4, #1
d0080d00:	b200      	sxth	r0, r0
d0080d02:	2800      	cmp	r0, #0
d0080d04:	dbdc      	blt.n	d0080cc0 <main+0x840>
d0080d06:	2ac7      	cmp	r2, #199	; 0xc7
d0080d08:	bfd4      	ite	le
d0080d0a:	2600      	movle	r6, #0
d0080d0c:	2601      	movgt	r6, #1
d0080d0e:	e7cb      	b.n	d0080ca8 <main+0x828>
d0080d10:	d0092390 	.word	0xd0092390
d0080d14:	cccccccd 	.word	0xcccccccd
d0080d18:	3531dec1 	.word	0x3531dec1
d0080d1c:	d0082720 	.word	0xd0082720
d0080d20:	ac769185 	.word	0xac769185
d0080d24:	02040811 	.word	0x02040811
d0080d28:	9a03      	ldr	r2, [sp, #12]
d0080d2a:	2a60      	cmp	r2, #96	; 0x60
d0080d2c:	f47f af45 	bne.w	d0080bba <main+0x73a>
d0080d30:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d0080d32:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d0080d34:	061e      	lsls	r6, r3, #24
d0080d36:	f003 00fe 	and.w	r0, r3, #254	; 0xfe
d0080d3a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d0080d3c:	bf4c      	ite	mi
d0080d3e:	f1c0 00ff 	rsbmi	r0, r0, #255	; 0xff
d0080d42:	b200      	sxthpl	r0, r0
d0080d44:	4413      	add	r3, r2
d0080d46:	f8dd b034 	ldr.w	fp, [sp, #52]	; 0x34
d0080d4a:	0200      	lsls	r0, r0, #8
d0080d4c:	061d      	lsls	r5, r3, #24
d0080d4e:	b2d9      	uxtb	r1, r3
d0080d50:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d0080d52:	bf4c      	ite	mi
d0080d54:	f1c1 01ff 	rsbmi	r1, r1, #255	; 0xff
d0080d58:	b209      	sxthpl	r1, r1
d0080d5a:	3340      	adds	r3, #64	; 0x40
d0080d5c:	4dbe      	ldr	r5, [pc, #760]	; (d0081058 <main+0xbd8>)
d0080d5e:	01c9      	lsls	r1, r1, #7
d0080d60:	061c      	lsls	r4, r3, #24
d0080d62:	f003 02fe 	and.w	r2, r3, #254	; 0xfe
d0080d66:	bf4c      	ite	mi
d0080d68:	f1c2 03ff 	rsbmi	r3, r2, #255	; 0xff
d0080d6c:	b213      	sxthpl	r3, r2
d0080d6e:	9304      	str	r3, [sp, #16]
d0080d70:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d0080d72:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0080d76:	b2da      	uxtb	r2, r3
d0080d78:	061b      	lsls	r3, r3, #24
d0080d7a:	bf4c      	ite	mi
d0080d7c:	f1c2 03ff 	rsbmi	r3, r2, #255	; 0xff
d0080d80:	b213      	sxthpl	r3, r2
d0080d82:	eb03 02c3 	add.w	r2, r3, r3, lsl #3
d0080d86:	eb03 0342 	add.w	r3, r3, r2, lsl #1
d0080d8a:	fba5 2700 	umull	r2, r7, r5, r0
d0080d8e:	fba5 2601 	umull	r2, r6, r5, r1
d0080d92:	009b      	lsls	r3, r3, #2
d0080d94:	1bc0      	subs	r0, r0, r7
d0080d96:	1b89      	subs	r1, r1, r6
d0080d98:	fba5 2503 	umull	r2, r5, r5, r3
d0080d9c:	eb07 0050 	add.w	r0, r7, r0, lsr #1
d0080da0:	eb06 0651 	add.w	r6, r6, r1, lsr #1
d0080da4:	1b5b      	subs	r3, r3, r5
d0080da6:	f3c0 178f 	ubfx	r7, r0, #6, #16
d0080daa:	f3c6 168f 	ubfx	r6, r6, #6, #16
d0080dae:	eb05 0553 	add.w	r5, r5, r3, lsr #1
d0080db2:	f107 0421 	add.w	r4, r7, #33	; 0x21
d0080db6:	f106 031a 	add.w	r3, r6, #26
d0080dba:	f3c5 128f 	ubfx	r2, r5, #6, #16
d0080dbe:	b224      	sxth	r4, r4
d0080dc0:	b21b      	sxth	r3, r3
d0080dc2:	f102 0944 	add.w	r9, r2, #68	; 0x44
d0080dc6:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080dca:	9203      	str	r2, [sp, #12]
d0080dcc:	fa0f f989 	sxth.w	r9, r9
d0080dd0:	da25      	bge.n	d0080e1e <main+0x99e>
d0080dd2:	2bc7      	cmp	r3, #199	; 0xc7
d0080dd4:	dc23      	bgt.n	d0080e1e <main+0x99e>
d0080dd6:	f107 0839 	add.w	r8, r7, #57	; 0x39
d0080dda:	f106 022c 	add.w	r2, r6, #44	; 0x2c
d0080dde:	fa0f f888 	sxth.w	r8, r8
d0080de2:	b212      	sxth	r2, r2
d0080de4:	f5b8 7fa0 	cmp.w	r8, #320	; 0x140
d0080de8:	bfa8      	it	ge
d0080dea:	f44f 78a0 	movge.w	r8, #320	; 0x140
d0080dee:	2ac8      	cmp	r2, #200	; 0xc8
d0080df0:	bfa8      	it	ge
d0080df2:	22c8      	movge	r2, #200	; 0xc8
d0080df4:	45a0      	cmp	r8, r4
d0080df6:	dd12      	ble.n	d0080e1e <main+0x99e>
d0080df8:	21c8      	movs	r1, #200	; 0xc8
d0080dfa:	1ad2      	subs	r2, r2, r3
d0080dfc:	9605      	str	r6, [sp, #20]
d0080dfe:	fb14 3301 	smlabb	r3, r4, r1, r3
d0080e02:	4616      	mov	r6, r2
d0080e04:	eb0a 0503 	add.w	r5, sl, r3
d0080e08:	3401      	adds	r4, #1
d0080e0a:	4628      	mov	r0, r5
d0080e0c:	4632      	mov	r2, r6
d0080e0e:	210b      	movs	r1, #11
d0080e10:	b224      	sxth	r4, r4
d0080e12:	35c8      	adds	r5, #200	; 0xc8
d0080e14:	f000 fb32 	bl	d008147c <memset>
d0080e18:	45a0      	cmp	r8, r4
d0080e1a:	dcf5      	bgt.n	d0080e08 <main+0x988>
d0080e1c:	9e05      	ldr	r6, [sp, #20]
d0080e1e:	f107 0425 	add.w	r4, r7, #37	; 0x25
d0080e22:	f106 031e 	add.w	r3, r6, #30
d0080e26:	b224      	sxth	r4, r4
d0080e28:	b21b      	sxth	r3, r3
d0080e2a:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080e2e:	da24      	bge.n	d0080e7a <main+0x9fa>
d0080e30:	2bc7      	cmp	r3, #199	; 0xc7
d0080e32:	dc22      	bgt.n	d0080e7a <main+0x9fa>
d0080e34:	3735      	adds	r7, #53	; 0x35
d0080e36:	f106 0828 	add.w	r8, r6, #40	; 0x28
d0080e3a:	b23e      	sxth	r6, r7
d0080e3c:	fa0f f888 	sxth.w	r8, r8
d0080e40:	f5b6 7fa0 	cmp.w	r6, #320	; 0x140
d0080e44:	bfa8      	it	ge
d0080e46:	f44f 76a0 	movge.w	r6, #320	; 0x140
d0080e4a:	f1b8 0fc8 	cmp.w	r8, #200	; 0xc8
d0080e4e:	bfa8      	it	ge
d0080e50:	f04f 08c8 	movge.w	r8, #200	; 0xc8
d0080e54:	42a6      	cmp	r6, r4
d0080e56:	dd10      	ble.n	d0080e7a <main+0x9fa>
d0080e58:	27c8      	movs	r7, #200	; 0xc8
d0080e5a:	eba8 0803 	sub.w	r8, r8, r3
d0080e5e:	fb14 3307 	smlabb	r3, r4, r7, r3
d0080e62:	eb0a 0703 	add.w	r7, sl, r3
d0080e66:	3401      	adds	r4, #1
d0080e68:	4638      	mov	r0, r7
d0080e6a:	4642      	mov	r2, r8
d0080e6c:	210f      	movs	r1, #15
d0080e6e:	b224      	sxth	r4, r4
d0080e70:	37c8      	adds	r7, #200	; 0xc8
d0080e72:	f000 fb03 	bl	d008147c <memset>
d0080e76:	42a6      	cmp	r6, r4
d0080e78:	dcf5      	bgt.n	d0080e66 <main+0x9e6>
d0080e7a:	9b04      	ldr	r3, [sp, #16]
d0080e7c:	2212      	movs	r2, #18
d0080e7e:	4f76      	ldr	r7, [pc, #472]	; (d0081058 <main+0xbd8>)
d0080e80:	eb03 0143 	add.w	r1, r3, r3, lsl #1
d0080e84:	230e      	movs	r3, #14
d0080e86:	0148      	lsls	r0, r1, #5
d0080e88:	4649      	mov	r1, r9
d0080e8a:	fba7 4700 	umull	r4, r7, r7, r0
d0080e8e:	1bc0      	subs	r0, r0, r7
d0080e90:	eb07 0750 	add.w	r7, r7, r0, lsr #1
d0080e94:	f3c7 178f 	ubfx	r7, r7, #6, #16
d0080e98:	f107 00c8 	add.w	r0, r7, #200	; 0xc8
d0080e9c:	f107 04c6 	add.w	r4, r7, #198	; 0xc6
d0080ea0:	b200      	sxth	r0, r0
d0080ea2:	b224      	sxth	r4, r4
d0080ea4:	9004      	str	r0, [sp, #16]
d0080ea6:	f7ff f949 	bl	d008013c <draw_circle>
d0080eaa:	2306      	movs	r3, #6
d0080eac:	9804      	ldr	r0, [sp, #16]
d0080eae:	4649      	mov	r1, r9
d0080eb0:	220a      	movs	r2, #10
d0080eb2:	f7ff f943 	bl	d008013c <draw_circle>
d0080eb6:	9b03      	ldr	r3, [sp, #12]
d0080eb8:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080ebc:	f103 0642 	add.w	r6, r3, #66	; 0x42
d0080ec0:	b233      	sxth	r3, r6
d0080ec2:	da1f      	bge.n	d0080f04 <main+0xa84>
d0080ec4:	2bc7      	cmp	r3, #199	; 0xc7
d0080ec6:	dc1d      	bgt.n	d0080f04 <main+0xa84>
d0080ec8:	37cb      	adds	r7, #203	; 0xcb
d0080eca:	9a03      	ldr	r2, [sp, #12]
d0080ecc:	b23d      	sxth	r5, r7
d0080ece:	3247      	adds	r2, #71	; 0x47
d0080ed0:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d0080ed4:	b217      	sxth	r7, r2
d0080ed6:	bfa8      	it	ge
d0080ed8:	f44f 75a0 	movge.w	r5, #320	; 0x140
d0080edc:	2fc8      	cmp	r7, #200	; 0xc8
d0080ede:	bfa8      	it	ge
d0080ee0:	27c8      	movge	r7, #200	; 0xc8
d0080ee2:	42a5      	cmp	r5, r4
d0080ee4:	dd0e      	ble.n	d0080f04 <main+0xa84>
d0080ee6:	26c8      	movs	r6, #200	; 0xc8
d0080ee8:	1aff      	subs	r7, r7, r3
d0080eea:	fb14 3606 	smlabb	r6, r4, r6, r3
d0080eee:	4456      	add	r6, sl
d0080ef0:	3401      	adds	r4, #1
d0080ef2:	4630      	mov	r0, r6
d0080ef4:	463a      	mov	r2, r7
d0080ef6:	210a      	movs	r1, #10
d0080ef8:	b224      	sxth	r4, r4
d0080efa:	36c8      	adds	r6, #200	; 0xc8
d0080efc:	f000 fabe 	bl	d008147c <memset>
d0080f00:	42a5      	cmp	r5, r4
d0080f02:	dcf5      	bgt.n	d0080ef0 <main+0xa70>
d0080f04:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0080f06:	2098      	movs	r0, #152	; 0x98
d0080f08:	4c54      	ldr	r4, [pc, #336]	; (d008105c <main+0xbdc>)
d0080f0a:	210f      	movs	r1, #15
d0080f0c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080f10:	08da      	lsrs	r2, r3, #3
d0080f12:	fba4 4202 	umull	r4, r2, r4, r2
d0080f16:	0852      	lsrs	r2, r2, #1
d0080f18:	fb00 3212 	mls	r2, r0, r2, r3
d0080f1c:	4850      	ldr	r0, [pc, #320]	; (d0081060 <main+0xbe0>)
d0080f1e:	3220      	adds	r2, #32
d0080f20:	b2d2      	uxtb	r2, r2
d0080f22:	eb0a 0302 	add.w	r3, sl, r2
d0080f26:	4402      	add	r2, r0
d0080f28:	f803 1bc8 	strb.w	r1, [r3], #200
d0080f2c:	429a      	cmp	r2, r3
d0080f2e:	d1fb      	bne.n	d0080f28 <main+0xaa8>
d0080f30:	2100      	movs	r1, #0
d0080f32:	4e4c      	ldr	r6, [pc, #304]	; (d0081064 <main+0xbe4>)
d0080f34:	2598      	movs	r5, #152	; 0x98
d0080f36:	24c8      	movs	r4, #200	; 0xc8
d0080f38:	ea8b 334b 	eor.w	r3, fp, fp, lsl #13
d0080f3c:	f001 0701 	and.w	r7, r1, #1
d0080f40:	3101      	adds	r1, #1
d0080f42:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0080f46:	3708      	adds	r7, #8
d0080f48:	291c      	cmp	r1, #28
d0080f4a:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0080f4e:	fba6 0203 	umull	r0, r2, r6, r3
d0080f52:	ea83 3b43 	eor.w	fp, r3, r3, lsl #13
d0080f56:	ea4f 2212 	mov.w	r2, r2, lsr #8
d0080f5a:	ea8b 4b5b 	eor.w	fp, fp, fp, lsr #17
d0080f5e:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d0080f62:	ea8b 1b4b 	eor.w	fp, fp, fp, lsl #5
d0080f66:	eba3 1282 	sub.w	r2, r3, r2, lsl #6
d0080f6a:	4b3c      	ldr	r3, [pc, #240]	; (d008105c <main+0xbdc>)
d0080f6c:	ea4f 00db 	mov.w	r0, fp, lsr #3
d0080f70:	fb04 a202 	mla	r2, r4, r2, sl
d0080f74:	fba3 3000 	umull	r3, r0, r3, r0
d0080f78:	ea4f 0050 	mov.w	r0, r0, lsr #1
d0080f7c:	fb05 b010 	mls	r0, r5, r0, fp
d0080f80:	f100 0020 	add.w	r0, r0, #32
d0080f84:	b280      	uxth	r0, r0
d0080f86:	5417      	strb	r7, [r2, r0]
d0080f88:	d1d6      	bne.n	d0080f38 <main+0xab8>
d0080f8a:	4937      	ldr	r1, [pc, #220]	; (d0081068 <main+0xbe8>)
d0080f8c:	f04f 3201 	mov.w	r2, #16843009	; 0x1010101
d0080f90:	4b36      	ldr	r3, [pc, #216]	; (d008106c <main+0xbec>)
d0080f92:	f8c1 b000 	str.w	fp, [r1]
d0080f96:	f503 417a 	add.w	r1, r3, #64000	; 0xfa00
d0080f9a:	e9c3 2200 	strd	r2, r2, [r3]
d0080f9e:	e9c3 2202 	strd	r2, r2, [r3, #8]
d0080fa2:	33c8      	adds	r3, #200	; 0xc8
d0080fa4:	428b      	cmp	r3, r1
d0080fa6:	d1f8      	bne.n	d0080f9a <main+0xb1a>
d0080fa8:	4b31      	ldr	r3, [pc, #196]	; (d0081070 <main+0xbf0>)
d0080faa:	2200      	movs	r2, #0
d0080fac:	f503 41fa 	add.w	r1, r3, #32000	; 0x7d00
d0080fb0:	601a      	str	r2, [r3, #0]
d0080fb2:	33c8      	adds	r3, #200	; 0xc8
d0080fb4:	f843 2cc4 	str.w	r2, [r3, #-196]
d0080fb8:	f843 2cc0 	str.w	r2, [r3, #-192]
d0080fbc:	428b      	cmp	r3, r1
d0080fbe:	d1f7      	bne.n	d0080fb0 <main+0xb30>
d0080fc0:	4b2c      	ldr	r3, [pc, #176]	; (d0081074 <main+0xbf4>)
d0080fc2:	2200      	movs	r2, #0
d0080fc4:	492c      	ldr	r1, [pc, #176]	; (d0081078 <main+0xbf8>)
d0080fc6:	601a      	str	r2, [r3, #0]
d0080fc8:	33c8      	adds	r3, #200	; 0xc8
d0080fca:	f843 2cc4 	str.w	r2, [r3, #-196]
d0080fce:	f843 2cc0 	str.w	r2, [r3, #-192]
d0080fd2:	4299      	cmp	r1, r3
d0080fd4:	d1f7      	bne.n	d0080fc6 <main+0xb46>
d0080fd6:	4d29      	ldr	r5, [pc, #164]	; (d008107c <main+0xbfc>)
d0080fd8:	2153      	movs	r1, #83	; 0x53
d0080fda:	2408      	movs	r4, #8
d0080fdc:	e002      	b.n	d0080fe4 <main+0xb64>
d0080fde:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080fe2:	d009      	beq.n	d0080ff8 <main+0xb78>
d0080fe4:	4620      	mov	r0, r4
d0080fe6:	220f      	movs	r2, #15
d0080fe8:	3408      	adds	r4, #8
d0080fea:	f7ff f99b 	bl	d0080324 <draw_text_cell.constprop.0>
d0080fee:	f815 1f01 	ldrb.w	r1, [r5, #1]!
d0080ff2:	b2a4      	uxth	r4, r4
d0080ff4:	2900      	cmp	r1, #0
d0080ff6:	d1f2      	bne.n	d0080fde <main+0xb5e>
d0080ff8:	4d21      	ldr	r5, [pc, #132]	; (d0081080 <main+0xc00>)
d0080ffa:	2152      	movs	r1, #82	; 0x52
d0080ffc:	24b0      	movs	r4, #176	; 0xb0
d0080ffe:	e002      	b.n	d0081006 <main+0xb86>
d0081000:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0081004:	d009      	beq.n	d008101a <main+0xb9a>
d0081006:	4620      	mov	r0, r4
d0081008:	220e      	movs	r2, #14
d008100a:	3408      	adds	r4, #8
d008100c:	f7ff f98a 	bl	d0080324 <draw_text_cell.constprop.0>
d0081010:	f815 1f01 	ldrb.w	r1, [r5, #1]!
d0081014:	b2a4      	uxth	r4, r4
d0081016:	2900      	cmp	r1, #0
d0081018:	d1f2      	bne.n	d0081000 <main+0xb80>
d008101a:	4c1a      	ldr	r4, [pc, #104]	; (d0081084 <main+0xc04>)
d008101c:	2128      	movs	r1, #40	; 0x28
d008101e:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0081020:	4a19      	ldr	r2, [pc, #100]	; (d0081088 <main+0xc08>)
d0081022:	4620      	mov	r0, r4
d0081024:	f000 fbaa 	bl	d008177c <sniprintf>
d0081028:	7823      	ldrb	r3, [r4, #0]
d008102a:	2b00      	cmp	r3, #0
d008102c:	f000 80d4 	beq.w	d00811d8 <main+0xd58>
d0081030:	4620      	mov	r0, r4
d0081032:	2608      	movs	r6, #8
d0081034:	4f15      	ldr	r7, [pc, #84]	; (d008108c <main+0xc0c>)
d0081036:	250d      	movs	r5, #13
d0081038:	f1a3 0261 	sub.w	r2, r3, #97	; 0x61
d008103c:	2a19      	cmp	r2, #25
d008103e:	f200 8149 	bhi.w	d00812d4 <main+0xe54>
d0081042:	f1a3 0420 	sub.w	r4, r3, #32
d0081046:	b2e4      	uxtb	r4, r4
d0081048:	3c20      	subs	r4, #32
d008104a:	00e4      	lsls	r4, r4, #3
d008104c:	443c      	add	r4, r7
d008104e:	4631      	mov	r1, r6
d0081050:	f104 3cff 	add.w	ip, r4, #4294967295	; 0xffffffff
d0081054:	3407      	adds	r4, #7
d0081056:	e05d      	b.n	d0081114 <main+0xc94>
d0081058:	02040811 	.word	0x02040811
d008105c:	1af286bd 	.word	0x1af286bd
d0081060:	d00921c0 	.word	0xd00921c0
d0081064:	cccccccd 	.word	0xcccccccd
d0081068:	d0082720 	.word	0xd0082720
d008106c:	d0082878 	.word	0xd0082878
d0081070:	d0082ae4 	.word	0xd0082ae4
d0081074:	d008ab04 	.word	0xd008ab04
d0081078:	d0091ea4 	.word	0xd0091ea4
d008107c:	d0082410 	.word	0xd0082410
d0081080:	d0082420 	.word	0xd0082420
d0081084:	d0092390 	.word	0xd0092390
d0081088:	d008244c 	.word	0xd008244c
d008108c:	d008247c 	.word	0xd008247c
d0081090:	b20a      	sxth	r2, r1
d0081092:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0081096:	da42      	bge.n	d008111e <main+0xc9e>
d0081098:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d008109c:	f01e 0f02 	tst.w	lr, #2
d00810a0:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d00810a4:	eb0a 08c3 	add.w	r8, sl, r3, lsl #3
d00810a8:	ea4f 03c3 	mov.w	r3, r3, lsl #3
d00810ac:	f888 50bc 	strb.w	r5, [r8, #188]	; 0xbc
d00810b0:	d143      	bne.n	d008113a <main+0xcba>
d00810b2:	f01e 0f04 	tst.w	lr, #4
d00810b6:	d047      	beq.n	d0081148 <main+0xcc8>
d00810b8:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d00810bc:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d00810c0:	00d3      	lsls	r3, r2, #3
d00810c2:	eb0a 0203 	add.w	r2, sl, r3
d00810c6:	f01e 0f08 	tst.w	lr, #8
d00810ca:	f882 50be 	strb.w	r5, [r2, #190]	; 0xbe
d00810ce:	f000 80cb 	beq.w	d0081268 <main+0xde8>
d00810d2:	eb0a 0203 	add.w	r2, sl, r3
d00810d6:	f01e 0f10 	tst.w	lr, #16
d00810da:	f882 50bf 	strb.w	r5, [r2, #191]	; 0xbf
d00810de:	d048      	beq.n	d0081172 <main+0xcf2>
d00810e0:	eb0a 0203 	add.w	r2, sl, r3
d00810e4:	f01e 0f20 	tst.w	lr, #32
d00810e8:	f882 50c0 	strb.w	r5, [r2, #192]	; 0xc0
d00810ec:	f000 80d2 	beq.w	d0081294 <main+0xe14>
d00810f0:	eb0a 0203 	add.w	r2, sl, r3
d00810f4:	f01e 0f40 	tst.w	lr, #64	; 0x40
d00810f8:	f882 50c1 	strb.w	r5, [r2, #193]	; 0xc1
d00810fc:	d04f      	beq.n	d008119e <main+0xd1e>
d00810fe:	eb0a 0203 	add.w	r2, sl, r3
d0081102:	f01e 0f80 	tst.w	lr, #128	; 0x80
d0081106:	f882 50c2 	strb.w	r5, [r2, #194]	; 0xc2
d008110a:	d154      	bne.n	d00811b6 <main+0xd36>
d008110c:	3101      	adds	r1, #1
d008110e:	4564      	cmp	r4, ip
d0081110:	b289      	uxth	r1, r1
d0081112:	d057      	beq.n	d00811c4 <main+0xd44>
d0081114:	f81c ef01 	ldrb.w	lr, [ip, #1]!
d0081118:	f01e 0f01 	tst.w	lr, #1
d008111c:	d1b8      	bne.n	d0081090 <main+0xc10>
d008111e:	f01e 0f02 	tst.w	lr, #2
d0081122:	f000 8094 	beq.w	d008124e <main+0xdce>
d0081126:	b20b      	sxth	r3, r1
d0081128:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d008112c:	f280 808f 	bge.w	d008124e <main+0xdce>
d0081130:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0081134:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0081138:	00db      	lsls	r3, r3, #3
d008113a:	eb0a 0203 	add.w	r2, sl, r3
d008113e:	f01e 0f04 	tst.w	lr, #4
d0081142:	f882 50bd 	strb.w	r5, [r2, #189]	; 0xbd
d0081146:	d1bc      	bne.n	d00810c2 <main+0xc42>
d0081148:	f01e 0f08 	tst.w	lr, #8
d008114c:	f000 808c 	beq.w	d0081268 <main+0xde8>
d0081150:	b20b      	sxth	r3, r1
d0081152:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0081156:	da0c      	bge.n	d0081172 <main+0xcf2>
d0081158:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d008115c:	f01e 0f10 	tst.w	lr, #16
d0081160:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0081164:	ea4f 03c3 	mov.w	r3, r3, lsl #3
d0081168:	eb0a 0203 	add.w	r2, sl, r3
d008116c:	f882 50bf 	strb.w	r5, [r2, #191]	; 0xbf
d0081170:	d1b6      	bne.n	d00810e0 <main+0xc60>
d0081172:	f01e 0f20 	tst.w	lr, #32
d0081176:	f000 808d 	beq.w	d0081294 <main+0xe14>
d008117a:	b20b      	sxth	r3, r1
d008117c:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0081180:	f280 809f 	bge.w	d00812c2 <main+0xe42>
d0081184:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0081188:	f01e 0f40 	tst.w	lr, #64	; 0x40
d008118c:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0081190:	ea4f 03c3 	mov.w	r3, r3, lsl #3
d0081194:	eb0a 0203 	add.w	r2, sl, r3
d0081198:	f882 50c1 	strb.w	r5, [r2, #193]	; 0xc1
d008119c:	d1af      	bne.n	d00810fe <main+0xc7e>
d008119e:	f01e 0f80 	tst.w	lr, #128	; 0x80
d00811a2:	d0b3      	beq.n	d008110c <main+0xc8c>
d00811a4:	b20b      	sxth	r3, r1
d00811a6:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00811aa:	daaf      	bge.n	d008110c <main+0xc8c>
d00811ac:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d00811b0:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d00811b4:	00db      	lsls	r3, r3, #3
d00811b6:	4453      	add	r3, sl
d00811b8:	3101      	adds	r1, #1
d00811ba:	4564      	cmp	r4, ip
d00811bc:	b289      	uxth	r1, r1
d00811be:	f883 50c3 	strb.w	r5, [r3, #195]	; 0xc3
d00811c2:	d1a7      	bne.n	d0081114 <main+0xc94>
d00811c4:	3608      	adds	r6, #8
d00811c6:	f810 3f01 	ldrb.w	r3, [r0, #1]!
d00811ca:	b2b6      	uxth	r6, r6
d00811cc:	f5b6 7fa0 	cmp.w	r6, #320	; 0x140
d00811d0:	d002      	beq.n	d00811d8 <main+0xd58>
d00811d2:	2b00      	cmp	r3, #0
d00811d4:	f47f af30 	bne.w	d0081038 <main+0xbb8>
d00811d8:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00811da:	4c9e      	ldr	r4, [pc, #632]	; (d0081454 <main+0xfd4>)
d00811dc:	3301      	adds	r3, #1
d00811de:	7f21      	ldrb	r1, [r4, #28]
d00811e0:	4625      	mov	r5, r4
d00811e2:	9309      	str	r3, [sp, #36]	; 0x24
d00811e4:	7f63      	ldrb	r3, [r4, #29]
d00811e6:	7fa2      	ldrb	r2, [r4, #30]
d00811e8:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00811ec:	7fe3      	ldrb	r3, [r4, #31]
d00811ee:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00811f2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00811f6:	699b      	ldr	r3, [r3, #24]
d00811f8:	4798      	blx	r3
d00811fa:	7f20      	ldrb	r0, [r4, #28]
d00811fc:	7f63      	ldrb	r3, [r4, #29]
d00811fe:	ee18 1a10 	vmov	r1, s16
d0081202:	7fa2      	ldrb	r2, [r4, #30]
d0081204:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
d0081208:	7feb      	ldrb	r3, [r5, #31]
d008120a:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d008120e:	4892      	ldr	r0, [pc, #584]	; (d0081458 <main+0xfd8>)
d0081210:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0081214:	69db      	ldr	r3, [r3, #28]
d0081216:	4798      	blx	r3
d0081218:	7d29      	ldrb	r1, [r5, #20]
d008121a:	7d6b      	ldrb	r3, [r5, #21]
d008121c:	7daa      	ldrb	r2, [r5, #22]
d008121e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0081222:	7deb      	ldrb	r3, [r5, #23]
d0081224:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0081228:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008122c:	685b      	ldr	r3, [r3, #4]
d008122e:	685b      	ldr	r3, [r3, #4]
d0081230:	4798      	blx	r3
d0081232:	7a29      	ldrb	r1, [r5, #8]
d0081234:	7a6b      	ldrb	r3, [r5, #9]
d0081236:	7aaa      	ldrb	r2, [r5, #10]
d0081238:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d008123c:	7aeb      	ldrb	r3, [r5, #11]
d008123e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0081242:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0081246:	689b      	ldr	r3, [r3, #8]
d0081248:	4798      	blx	r3
d008124a:	f7ff bac6 	b.w	d00807da <main+0x35a>
d008124e:	f01e 0f04 	tst.w	lr, #4
d0081252:	f43f af79 	beq.w	d0081148 <main+0xcc8>
d0081256:	b20a      	sxth	r2, r1
d0081258:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d008125c:	f6ff af2c 	blt.w	d00810b8 <main+0xc38>
d0081260:	f01e 0f08 	tst.w	lr, #8
d0081264:	f47f af74 	bne.w	d0081150 <main+0xcd0>
d0081268:	f01e 0f10 	tst.w	lr, #16
d008126c:	d081      	beq.n	d0081172 <main+0xcf2>
d008126e:	b20b      	sxth	r3, r1
d0081270:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0081274:	f6bf af7d 	bge.w	d0081172 <main+0xcf2>
d0081278:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d008127c:	f01e 0f20 	tst.w	lr, #32
d0081280:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0081284:	ea4f 03c3 	mov.w	r3, r3, lsl #3
d0081288:	eb0a 0203 	add.w	r2, sl, r3
d008128c:	f882 50c0 	strb.w	r5, [r2, #192]	; 0xc0
d0081290:	f47f af2e 	bne.w	d00810f0 <main+0xc70>
d0081294:	f01e 0f40 	tst.w	lr, #64	; 0x40
d0081298:	d081      	beq.n	d008119e <main+0xd1e>
d008129a:	b20b      	sxth	r3, r1
d008129c:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00812a0:	f6bf af34 	bge.w	d008110c <main+0xc8c>
d00812a4:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d00812a8:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d00812ac:	00db      	lsls	r3, r3, #3
d00812ae:	e726      	b.n	d00810fe <main+0xc7e>
d00812b0:	1aad      	subs	r5, r5, r2
d00812b2:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d00812b6:	e4d7      	b.n	d0080c68 <main+0x7e8>
d00812b8:	eba9 0000 	sub.w	r0, r9, r0
d00812bc:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d00812c0:	e4c8      	b.n	d0080c54 <main+0x7d4>
d00812c2:	f01e 0f40 	tst.w	lr, #64	; 0x40
d00812c6:	f47f af21 	bne.w	d008110c <main+0xc8c>
d00812ca:	f01e 0f80 	tst.w	lr, #128	; 0x80
d00812ce:	f43f af1d 	beq.w	d008110c <main+0xc8c>
d00812d2:	e767      	b.n	d00811a4 <main+0xd24>
d00812d4:	3b20      	subs	r3, #32
d00812d6:	b2da      	uxtb	r2, r3
d00812d8:	2a3a      	cmp	r2, #58	; 0x3a
d00812da:	bf94      	ite	ls
d00812dc:	00dc      	lslls	r4, r3, #3
d00812de:	24f8      	movhi	r4, #248	; 0xf8
d00812e0:	e6b4      	b.n	d008104c <main+0xbcc>
d00812e2:	7f23      	ldrb	r3, [r4, #28]
d00812e4:	4626      	mov	r6, r4
d00812e6:	7f62      	ldrb	r2, [r4, #29]
d00812e8:	2502      	movs	r5, #2
d00812ea:	7fa1      	ldrb	r1, [r4, #30]
d00812ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00812f0:	7fe2      	ldrb	r2, [r4, #31]
d00812f2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00812f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00812fa:	689b      	ldr	r3, [r3, #8]
d00812fc:	4798      	blx	r3
d00812fe:	7b23      	ldrb	r3, [r4, #12]
d0081300:	7b62      	ldrb	r2, [r4, #13]
d0081302:	7ba1      	ldrb	r1, [r4, #14]
d0081304:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0081308:	7be2      	ldrb	r2, [r4, #15]
d008130a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008130e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0081312:	681b      	ldr	r3, [r3, #0]
d0081314:	68db      	ldr	r3, [r3, #12]
d0081316:	4798      	blx	r3
d0081318:	7b24      	ldrb	r4, [r4, #12]
d008131a:	7b72      	ldrb	r2, [r6, #13]
d008131c:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0081320:	7bb1      	ldrb	r1, [r6, #14]
d0081322:	ea44 2402 	orr.w	r4, r4, r2, lsl #8
d0081326:	7bf0      	ldrb	r0, [r6, #15]
d0081328:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d008132c:	ea44 4401 	orr.w	r4, r4, r1, lsl #16
d0081330:	4619      	mov	r1, r3
d0081332:	ea44 6400 	orr.w	r4, r4, r0, lsl #24
d0081336:	4610      	mov	r0, r2
d0081338:	6824      	ldr	r4, [r4, #0]
d008133a:	9500      	str	r5, [sp, #0]
d008133c:	6964      	ldr	r4, [r4, #20]
d008133e:	47a0      	blx	r4
d0081340:	7b32      	ldrb	r2, [r6, #12]
d0081342:	7b73      	ldrb	r3, [r6, #13]
d0081344:	7bb0      	ldrb	r0, [r6, #14]
d0081346:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d008134a:	7bf4      	ldrb	r4, [r6, #15]
d008134c:	7b33      	ldrb	r3, [r6, #12]
d008134e:	7b71      	ldrb	r1, [r6, #13]
d0081350:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
d0081354:	7bb0      	ldrb	r0, [r6, #14]
d0081356:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d008135a:	7bf1      	ldrb	r1, [r6, #15]
d008135c:	ea42 6204 	orr.w	r2, r2, r4, lsl #24
d0081360:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0081364:	6812      	ldr	r2, [r2, #0]
d0081366:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d008136a:	69d4      	ldr	r4, [r2, #28]
d008136c:	681b      	ldr	r3, [r3, #0]
d008136e:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
d0081370:	4798      	blx	r3
d0081372:	47a0      	blx	r4
d0081374:	7b32      	ldrb	r2, [r6, #12]
d0081376:	7b73      	ldrb	r3, [r6, #13]
d0081378:	7bb0      	ldrb	r0, [r6, #14]
d008137a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d008137e:	7bf4      	ldrb	r4, [r6, #15]
d0081380:	7b33      	ldrb	r3, [r6, #12]
d0081382:	7b71      	ldrb	r1, [r6, #13]
d0081384:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
d0081388:	7bb0      	ldrb	r0, [r6, #14]
d008138a:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d008138e:	7bf1      	ldrb	r1, [r6, #15]
d0081390:	ea42 6204 	orr.w	r2, r2, r4, lsl #24
d0081394:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0081398:	6812      	ldr	r2, [r2, #0]
d008139a:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d008139e:	6a14      	ldr	r4, [r2, #32]
d00813a0:	681b      	ldr	r3, [r3, #0]
d00813a2:	6c5b      	ldr	r3, [r3, #68]	; 0x44
d00813a4:	4798      	blx	r3
d00813a6:	47a0      	blx	r4
d00813a8:	7b32      	ldrb	r2, [r6, #12]
d00813aa:	7b73      	ldrb	r3, [r6, #13]
d00813ac:	7bb0      	ldrb	r0, [r6, #14]
d00813ae:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d00813b2:	7bf4      	ldrb	r4, [r6, #15]
d00813b4:	7b33      	ldrb	r3, [r6, #12]
d00813b6:	7b71      	ldrb	r1, [r6, #13]
d00813b8:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
d00813bc:	7bb0      	ldrb	r0, [r6, #14]
d00813be:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d00813c2:	7bf1      	ldrb	r1, [r6, #15]
d00813c4:	ea42 6204 	orr.w	r2, r2, r4, lsl #24
d00813c8:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00813cc:	6812      	ldr	r2, [r2, #0]
d00813ce:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00813d2:	6994      	ldr	r4, [r2, #24]
d00813d4:	681b      	ldr	r3, [r3, #0]
d00813d6:	6c5b      	ldr	r3, [r3, #68]	; 0x44
d00813d8:	4798      	blx	r3
d00813da:	47a0      	blx	r4
d00813dc:	7b33      	ldrb	r3, [r6, #12]
d00813de:	7b72      	ldrb	r2, [r6, #13]
d00813e0:	7bb1      	ldrb	r1, [r6, #14]
d00813e2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00813e6:	7bf2      	ldrb	r2, [r6, #15]
d00813e8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00813ec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00813f0:	681b      	ldr	r3, [r3, #0]
d00813f2:	681b      	ldr	r3, [r3, #0]
d00813f4:	4798      	blx	r3
d00813f6:	7b33      	ldrb	r3, [r6, #12]
d00813f8:	7b72      	ldrb	r2, [r6, #13]
d00813fa:	7bb1      	ldrb	r1, [r6, #14]
d00813fc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0081400:	7bf2      	ldrb	r2, [r6, #15]
d0081402:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081406:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008140a:	681b      	ldr	r3, [r3, #0]
d008140c:	68db      	ldr	r3, [r3, #12]
d008140e:	4798      	blx	r3
d0081410:	7833      	ldrb	r3, [r6, #0]
d0081412:	7872      	ldrb	r2, [r6, #1]
d0081414:	78b1      	ldrb	r1, [r6, #2]
d0081416:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008141a:	78f2      	ldrb	r2, [r6, #3]
d008141c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081420:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0081424:	685b      	ldr	r3, [r3, #4]
d0081426:	4798      	blx	r3
d0081428:	2000      	movs	r0, #0
d008142a:	b00f      	add	sp, #60	; 0x3c
d008142c:	ecbd 8b02 	vpop	{d8}
d0081430:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0081434:	4807      	ldr	r0, [pc, #28]	; (d0081454 <main+0xfd4>)
d0081436:	7803      	ldrb	r3, [r0, #0]
d0081438:	7842      	ldrb	r2, [r0, #1]
d008143a:	7881      	ldrb	r1, [r0, #2]
d008143c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0081440:	78c2      	ldrb	r2, [r0, #3]
d0081442:	4806      	ldr	r0, [pc, #24]	; (d008145c <main+0xfdc>)
d0081444:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081448:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008144c:	68db      	ldr	r3, [r3, #12]
d008144e:	4798      	blx	r3
d0081450:	2001      	movs	r0, #1
d0081452:	e7ea      	b.n	d008142a <main+0xfaa>
d0081454:	2001f000 	.word	0x2001f000
d0081458:	d00827c0 	.word	0xd00827c0
d008145c:	d0082434 	.word	0xd0082434

d0081460 <__errno>:
d0081460:	4b01      	ldr	r3, [pc, #4]	; (d0081468 <__errno+0x8>)
d0081462:	6818      	ldr	r0, [r3, #0]
d0081464:	4770      	bx	lr
d0081466:	bf00      	nop
d0081468:	d0082724 	.word	0xd0082724

d008146c <malloc>:
d008146c:	4b02      	ldr	r3, [pc, #8]	; (d0081478 <malloc+0xc>)
d008146e:	4601      	mov	r1, r0
d0081470:	6818      	ldr	r0, [r3, #0]
d0081472:	f000 b85b 	b.w	d008152c <_malloc_r>
d0081476:	bf00      	nop
d0081478:	d0082724 	.word	0xd0082724

d008147c <memset>:
d008147c:	4402      	add	r2, r0
d008147e:	4603      	mov	r3, r0
d0081480:	4293      	cmp	r3, r2
d0081482:	d100      	bne.n	d0081486 <memset+0xa>
d0081484:	4770      	bx	lr
d0081486:	f803 1b01 	strb.w	r1, [r3], #1
d008148a:	e7f9      	b.n	d0081480 <memset+0x4>

d008148c <_free_r>:
d008148c:	b537      	push	{r0, r1, r2, r4, r5, lr}
d008148e:	2900      	cmp	r1, #0
d0081490:	d048      	beq.n	d0081524 <_free_r+0x98>
d0081492:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0081496:	9001      	str	r0, [sp, #4]
d0081498:	2b00      	cmp	r3, #0
d008149a:	f1a1 0404 	sub.w	r4, r1, #4
d008149e:	bfb8      	it	lt
d00814a0:	18e4      	addlt	r4, r4, r3
d00814a2:	f000 fb85 	bl	d0081bb0 <__malloc_lock>
d00814a6:	4a20      	ldr	r2, [pc, #128]	; (d0081528 <_free_r+0x9c>)
d00814a8:	9801      	ldr	r0, [sp, #4]
d00814aa:	6813      	ldr	r3, [r2, #0]
d00814ac:	4615      	mov	r5, r2
d00814ae:	b933      	cbnz	r3, d00814be <_free_r+0x32>
d00814b0:	6063      	str	r3, [r4, #4]
d00814b2:	6014      	str	r4, [r2, #0]
d00814b4:	b003      	add	sp, #12
d00814b6:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00814ba:	f000 bb7f 	b.w	d0081bbc <__malloc_unlock>
d00814be:	42a3      	cmp	r3, r4
d00814c0:	d90b      	bls.n	d00814da <_free_r+0x4e>
d00814c2:	6821      	ldr	r1, [r4, #0]
d00814c4:	1862      	adds	r2, r4, r1
d00814c6:	4293      	cmp	r3, r2
d00814c8:	bf04      	itt	eq
d00814ca:	681a      	ldreq	r2, [r3, #0]
d00814cc:	685b      	ldreq	r3, [r3, #4]
d00814ce:	6063      	str	r3, [r4, #4]
d00814d0:	bf04      	itt	eq
d00814d2:	1852      	addeq	r2, r2, r1
d00814d4:	6022      	streq	r2, [r4, #0]
d00814d6:	602c      	str	r4, [r5, #0]
d00814d8:	e7ec      	b.n	d00814b4 <_free_r+0x28>
d00814da:	461a      	mov	r2, r3
d00814dc:	685b      	ldr	r3, [r3, #4]
d00814de:	b10b      	cbz	r3, d00814e4 <_free_r+0x58>
d00814e0:	42a3      	cmp	r3, r4
d00814e2:	d9fa      	bls.n	d00814da <_free_r+0x4e>
d00814e4:	6811      	ldr	r1, [r2, #0]
d00814e6:	1855      	adds	r5, r2, r1
d00814e8:	42a5      	cmp	r5, r4
d00814ea:	d10b      	bne.n	d0081504 <_free_r+0x78>
d00814ec:	6824      	ldr	r4, [r4, #0]
d00814ee:	4421      	add	r1, r4
d00814f0:	1854      	adds	r4, r2, r1
d00814f2:	42a3      	cmp	r3, r4
d00814f4:	6011      	str	r1, [r2, #0]
d00814f6:	d1dd      	bne.n	d00814b4 <_free_r+0x28>
d00814f8:	681c      	ldr	r4, [r3, #0]
d00814fa:	685b      	ldr	r3, [r3, #4]
d00814fc:	6053      	str	r3, [r2, #4]
d00814fe:	4421      	add	r1, r4
d0081500:	6011      	str	r1, [r2, #0]
d0081502:	e7d7      	b.n	d00814b4 <_free_r+0x28>
d0081504:	d902      	bls.n	d008150c <_free_r+0x80>
d0081506:	230c      	movs	r3, #12
d0081508:	6003      	str	r3, [r0, #0]
d008150a:	e7d3      	b.n	d00814b4 <_free_r+0x28>
d008150c:	6825      	ldr	r5, [r4, #0]
d008150e:	1961      	adds	r1, r4, r5
d0081510:	428b      	cmp	r3, r1
d0081512:	bf04      	itt	eq
d0081514:	6819      	ldreq	r1, [r3, #0]
d0081516:	685b      	ldreq	r3, [r3, #4]
d0081518:	6063      	str	r3, [r4, #4]
d008151a:	bf04      	itt	eq
d008151c:	1949      	addeq	r1, r1, r5
d008151e:	6021      	streq	r1, [r4, #0]
d0081520:	6054      	str	r4, [r2, #4]
d0081522:	e7c7      	b.n	d00814b4 <_free_r+0x28>
d0081524:	b003      	add	sp, #12
d0081526:	bd30      	pop	{r4, r5, pc}
d0081528:	d00923b8 	.word	0xd00923b8

d008152c <_malloc_r>:
d008152c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008152e:	1ccd      	adds	r5, r1, #3
d0081530:	f025 0503 	bic.w	r5, r5, #3
d0081534:	3508      	adds	r5, #8
d0081536:	2d0c      	cmp	r5, #12
d0081538:	bf38      	it	cc
d008153a:	250c      	movcc	r5, #12
d008153c:	2d00      	cmp	r5, #0
d008153e:	4606      	mov	r6, r0
d0081540:	db01      	blt.n	d0081546 <_malloc_r+0x1a>
d0081542:	42a9      	cmp	r1, r5
d0081544:	d903      	bls.n	d008154e <_malloc_r+0x22>
d0081546:	230c      	movs	r3, #12
d0081548:	6033      	str	r3, [r6, #0]
d008154a:	2000      	movs	r0, #0
d008154c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d008154e:	f000 fb2f 	bl	d0081bb0 <__malloc_lock>
d0081552:	4921      	ldr	r1, [pc, #132]	; (d00815d8 <_malloc_r+0xac>)
d0081554:	680a      	ldr	r2, [r1, #0]
d0081556:	4614      	mov	r4, r2
d0081558:	b99c      	cbnz	r4, d0081582 <_malloc_r+0x56>
d008155a:	4f20      	ldr	r7, [pc, #128]	; (d00815dc <_malloc_r+0xb0>)
d008155c:	683b      	ldr	r3, [r7, #0]
d008155e:	b923      	cbnz	r3, d008156a <_malloc_r+0x3e>
d0081560:	4621      	mov	r1, r4
d0081562:	4630      	mov	r0, r6
d0081564:	f7fe fdca 	bl	d00800fc <_sbrk_r>
d0081568:	6038      	str	r0, [r7, #0]
d008156a:	4629      	mov	r1, r5
d008156c:	4630      	mov	r0, r6
d008156e:	f7fe fdc5 	bl	d00800fc <_sbrk_r>
d0081572:	1c43      	adds	r3, r0, #1
d0081574:	d123      	bne.n	d00815be <_malloc_r+0x92>
d0081576:	230c      	movs	r3, #12
d0081578:	6033      	str	r3, [r6, #0]
d008157a:	4630      	mov	r0, r6
d008157c:	f000 fb1e 	bl	d0081bbc <__malloc_unlock>
d0081580:	e7e3      	b.n	d008154a <_malloc_r+0x1e>
d0081582:	6823      	ldr	r3, [r4, #0]
d0081584:	1b5b      	subs	r3, r3, r5
d0081586:	d417      	bmi.n	d00815b8 <_malloc_r+0x8c>
d0081588:	2b0b      	cmp	r3, #11
d008158a:	d903      	bls.n	d0081594 <_malloc_r+0x68>
d008158c:	6023      	str	r3, [r4, #0]
d008158e:	441c      	add	r4, r3
d0081590:	6025      	str	r5, [r4, #0]
d0081592:	e004      	b.n	d008159e <_malloc_r+0x72>
d0081594:	6863      	ldr	r3, [r4, #4]
d0081596:	42a2      	cmp	r2, r4
d0081598:	bf0c      	ite	eq
d008159a:	600b      	streq	r3, [r1, #0]
d008159c:	6053      	strne	r3, [r2, #4]
d008159e:	4630      	mov	r0, r6
d00815a0:	f000 fb0c 	bl	d0081bbc <__malloc_unlock>
d00815a4:	f104 000b 	add.w	r0, r4, #11
d00815a8:	1d23      	adds	r3, r4, #4
d00815aa:	f020 0007 	bic.w	r0, r0, #7
d00815ae:	1ac2      	subs	r2, r0, r3
d00815b0:	d0cc      	beq.n	d008154c <_malloc_r+0x20>
d00815b2:	1a1b      	subs	r3, r3, r0
d00815b4:	50a3      	str	r3, [r4, r2]
d00815b6:	e7c9      	b.n	d008154c <_malloc_r+0x20>
d00815b8:	4622      	mov	r2, r4
d00815ba:	6864      	ldr	r4, [r4, #4]
d00815bc:	e7cc      	b.n	d0081558 <_malloc_r+0x2c>
d00815be:	1cc4      	adds	r4, r0, #3
d00815c0:	f024 0403 	bic.w	r4, r4, #3
d00815c4:	42a0      	cmp	r0, r4
d00815c6:	d0e3      	beq.n	d0081590 <_malloc_r+0x64>
d00815c8:	1a21      	subs	r1, r4, r0
d00815ca:	4630      	mov	r0, r6
d00815cc:	f7fe fd96 	bl	d00800fc <_sbrk_r>
d00815d0:	3001      	adds	r0, #1
d00815d2:	d1dd      	bne.n	d0081590 <_malloc_r+0x64>
d00815d4:	e7cf      	b.n	d0081576 <_malloc_r+0x4a>
d00815d6:	bf00      	nop
d00815d8:	d00923b8 	.word	0xd00923b8
d00815dc:	d00923bc 	.word	0xd00923bc

d00815e0 <setbuf>:
d00815e0:	2900      	cmp	r1, #0
d00815e2:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00815e6:	bf0c      	ite	eq
d00815e8:	2202      	moveq	r2, #2
d00815ea:	2200      	movne	r2, #0
d00815ec:	f000 b800 	b.w	d00815f0 <setvbuf>

d00815f0 <setvbuf>:
d00815f0:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d00815f4:	461d      	mov	r5, r3
d00815f6:	4b5d      	ldr	r3, [pc, #372]	; (d008176c <setvbuf+0x17c>)
d00815f8:	681f      	ldr	r7, [r3, #0]
d00815fa:	4604      	mov	r4, r0
d00815fc:	460e      	mov	r6, r1
d00815fe:	4690      	mov	r8, r2
d0081600:	b127      	cbz	r7, d008160c <setvbuf+0x1c>
d0081602:	69bb      	ldr	r3, [r7, #24]
d0081604:	b913      	cbnz	r3, d008160c <setvbuf+0x1c>
d0081606:	4638      	mov	r0, r7
d0081608:	f000 fa0e 	bl	d0081a28 <__sinit>
d008160c:	4b58      	ldr	r3, [pc, #352]	; (d0081770 <setvbuf+0x180>)
d008160e:	429c      	cmp	r4, r3
d0081610:	d167      	bne.n	d00816e2 <setvbuf+0xf2>
d0081612:	687c      	ldr	r4, [r7, #4]
d0081614:	f1b8 0f02 	cmp.w	r8, #2
d0081618:	d006      	beq.n	d0081628 <setvbuf+0x38>
d008161a:	f1b8 0f01 	cmp.w	r8, #1
d008161e:	f200 809f 	bhi.w	d0081760 <setvbuf+0x170>
d0081622:	2d00      	cmp	r5, #0
d0081624:	f2c0 809c 	blt.w	d0081760 <setvbuf+0x170>
d0081628:	6e63      	ldr	r3, [r4, #100]	; 0x64
d008162a:	07db      	lsls	r3, r3, #31
d008162c:	d405      	bmi.n	d008163a <setvbuf+0x4a>
d008162e:	89a3      	ldrh	r3, [r4, #12]
d0081630:	0598      	lsls	r0, r3, #22
d0081632:	d402      	bmi.n	d008163a <setvbuf+0x4a>
d0081634:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081636:	f000 fa95 	bl	d0081b64 <__retarget_lock_acquire_recursive>
d008163a:	4621      	mov	r1, r4
d008163c:	4638      	mov	r0, r7
d008163e:	f000 f95f 	bl	d0081900 <_fflush_r>
d0081642:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0081644:	b141      	cbz	r1, d0081658 <setvbuf+0x68>
d0081646:	f104 0344 	add.w	r3, r4, #68	; 0x44
d008164a:	4299      	cmp	r1, r3
d008164c:	d002      	beq.n	d0081654 <setvbuf+0x64>
d008164e:	4638      	mov	r0, r7
d0081650:	f7ff ff1c 	bl	d008148c <_free_r>
d0081654:	2300      	movs	r3, #0
d0081656:	6363      	str	r3, [r4, #52]	; 0x34
d0081658:	2300      	movs	r3, #0
d008165a:	61a3      	str	r3, [r4, #24]
d008165c:	6063      	str	r3, [r4, #4]
d008165e:	89a3      	ldrh	r3, [r4, #12]
d0081660:	0619      	lsls	r1, r3, #24
d0081662:	d503      	bpl.n	d008166c <setvbuf+0x7c>
d0081664:	6921      	ldr	r1, [r4, #16]
d0081666:	4638      	mov	r0, r7
d0081668:	f7ff ff10 	bl	d008148c <_free_r>
d008166c:	89a3      	ldrh	r3, [r4, #12]
d008166e:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0081672:	f023 0303 	bic.w	r3, r3, #3
d0081676:	f1b8 0f02 	cmp.w	r8, #2
d008167a:	81a3      	strh	r3, [r4, #12]
d008167c:	d06c      	beq.n	d0081758 <setvbuf+0x168>
d008167e:	ab01      	add	r3, sp, #4
d0081680:	466a      	mov	r2, sp
d0081682:	4621      	mov	r1, r4
d0081684:	4638      	mov	r0, r7
d0081686:	f000 fa6f 	bl	d0081b68 <__swhatbuf_r>
d008168a:	89a3      	ldrh	r3, [r4, #12]
d008168c:	4318      	orrs	r0, r3
d008168e:	81a0      	strh	r0, [r4, #12]
d0081690:	2d00      	cmp	r5, #0
d0081692:	d130      	bne.n	d00816f6 <setvbuf+0x106>
d0081694:	9d00      	ldr	r5, [sp, #0]
d0081696:	4628      	mov	r0, r5
d0081698:	f7ff fee8 	bl	d008146c <malloc>
d008169c:	4606      	mov	r6, r0
d008169e:	2800      	cmp	r0, #0
d00816a0:	d155      	bne.n	d008174e <setvbuf+0x15e>
d00816a2:	f8dd 9000 	ldr.w	r9, [sp]
d00816a6:	45a9      	cmp	r9, r5
d00816a8:	d14a      	bne.n	d0081740 <setvbuf+0x150>
d00816aa:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00816ae:	2200      	movs	r2, #0
d00816b0:	60a2      	str	r2, [r4, #8]
d00816b2:	f104 0247 	add.w	r2, r4, #71	; 0x47
d00816b6:	6022      	str	r2, [r4, #0]
d00816b8:	6122      	str	r2, [r4, #16]
d00816ba:	2201      	movs	r2, #1
d00816bc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00816c0:	6162      	str	r2, [r4, #20]
d00816c2:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00816c4:	f043 0302 	orr.w	r3, r3, #2
d00816c8:	07d2      	lsls	r2, r2, #31
d00816ca:	81a3      	strh	r3, [r4, #12]
d00816cc:	d405      	bmi.n	d00816da <setvbuf+0xea>
d00816ce:	f413 7f00 	tst.w	r3, #512	; 0x200
d00816d2:	d102      	bne.n	d00816da <setvbuf+0xea>
d00816d4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00816d6:	f000 fa46 	bl	d0081b66 <__retarget_lock_release_recursive>
d00816da:	4628      	mov	r0, r5
d00816dc:	b003      	add	sp, #12
d00816de:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00816e2:	4b24      	ldr	r3, [pc, #144]	; (d0081774 <setvbuf+0x184>)
d00816e4:	429c      	cmp	r4, r3
d00816e6:	d101      	bne.n	d00816ec <setvbuf+0xfc>
d00816e8:	68bc      	ldr	r4, [r7, #8]
d00816ea:	e793      	b.n	d0081614 <setvbuf+0x24>
d00816ec:	4b22      	ldr	r3, [pc, #136]	; (d0081778 <setvbuf+0x188>)
d00816ee:	429c      	cmp	r4, r3
d00816f0:	bf08      	it	eq
d00816f2:	68fc      	ldreq	r4, [r7, #12]
d00816f4:	e78e      	b.n	d0081614 <setvbuf+0x24>
d00816f6:	2e00      	cmp	r6, #0
d00816f8:	d0cd      	beq.n	d0081696 <setvbuf+0xa6>
d00816fa:	69bb      	ldr	r3, [r7, #24]
d00816fc:	b913      	cbnz	r3, d0081704 <setvbuf+0x114>
d00816fe:	4638      	mov	r0, r7
d0081700:	f000 f992 	bl	d0081a28 <__sinit>
d0081704:	f1b8 0f01 	cmp.w	r8, #1
d0081708:	bf08      	it	eq
d008170a:	89a3      	ldrheq	r3, [r4, #12]
d008170c:	6026      	str	r6, [r4, #0]
d008170e:	bf04      	itt	eq
d0081710:	f043 0301 	orreq.w	r3, r3, #1
d0081714:	81a3      	strheq	r3, [r4, #12]
d0081716:	89a2      	ldrh	r2, [r4, #12]
d0081718:	f012 0308 	ands.w	r3, r2, #8
d008171c:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0081720:	d01c      	beq.n	d008175c <setvbuf+0x16c>
d0081722:	07d3      	lsls	r3, r2, #31
d0081724:	bf41      	itttt	mi
d0081726:	2300      	movmi	r3, #0
d0081728:	426d      	negmi	r5, r5
d008172a:	60a3      	strmi	r3, [r4, #8]
d008172c:	61a5      	strmi	r5, [r4, #24]
d008172e:	bf58      	it	pl
d0081730:	60a5      	strpl	r5, [r4, #8]
d0081732:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0081734:	f015 0501 	ands.w	r5, r5, #1
d0081738:	d115      	bne.n	d0081766 <setvbuf+0x176>
d008173a:	f412 7f00 	tst.w	r2, #512	; 0x200
d008173e:	e7c8      	b.n	d00816d2 <setvbuf+0xe2>
d0081740:	4648      	mov	r0, r9
d0081742:	f7ff fe93 	bl	d008146c <malloc>
d0081746:	4606      	mov	r6, r0
d0081748:	2800      	cmp	r0, #0
d008174a:	d0ae      	beq.n	d00816aa <setvbuf+0xba>
d008174c:	464d      	mov	r5, r9
d008174e:	89a3      	ldrh	r3, [r4, #12]
d0081750:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0081754:	81a3      	strh	r3, [r4, #12]
d0081756:	e7d0      	b.n	d00816fa <setvbuf+0x10a>
d0081758:	2500      	movs	r5, #0
d008175a:	e7a8      	b.n	d00816ae <setvbuf+0xbe>
d008175c:	60a3      	str	r3, [r4, #8]
d008175e:	e7e8      	b.n	d0081732 <setvbuf+0x142>
d0081760:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0081764:	e7b9      	b.n	d00816da <setvbuf+0xea>
d0081766:	2500      	movs	r5, #0
d0081768:	e7b7      	b.n	d00816da <setvbuf+0xea>
d008176a:	bf00      	nop
d008176c:	d0082724 	.word	0xd0082724
d0081770:	d00826a4 	.word	0xd00826a4
d0081774:	d00826c4 	.word	0xd00826c4
d0081778:	d0082684 	.word	0xd0082684

d008177c <sniprintf>:
d008177c:	b40c      	push	{r2, r3}
d008177e:	b530      	push	{r4, r5, lr}
d0081780:	4b17      	ldr	r3, [pc, #92]	; (d00817e0 <sniprintf+0x64>)
d0081782:	1e0c      	subs	r4, r1, #0
d0081784:	681d      	ldr	r5, [r3, #0]
d0081786:	b09d      	sub	sp, #116	; 0x74
d0081788:	da08      	bge.n	d008179c <sniprintf+0x20>
d008178a:	238b      	movs	r3, #139	; 0x8b
d008178c:	602b      	str	r3, [r5, #0]
d008178e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081792:	b01d      	add	sp, #116	; 0x74
d0081794:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0081798:	b002      	add	sp, #8
d008179a:	4770      	bx	lr
d008179c:	f44f 7302 	mov.w	r3, #520	; 0x208
d00817a0:	f8ad 3014 	strh.w	r3, [sp, #20]
d00817a4:	bf14      	ite	ne
d00817a6:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d00817aa:	4623      	moveq	r3, r4
d00817ac:	9304      	str	r3, [sp, #16]
d00817ae:	9307      	str	r3, [sp, #28]
d00817b0:	f64f 73ff 	movw	r3, #65535	; 0xffff
d00817b4:	9002      	str	r0, [sp, #8]
d00817b6:	9006      	str	r0, [sp, #24]
d00817b8:	f8ad 3016 	strh.w	r3, [sp, #22]
d00817bc:	9a20      	ldr	r2, [sp, #128]	; 0x80
d00817be:	ab21      	add	r3, sp, #132	; 0x84
d00817c0:	a902      	add	r1, sp, #8
d00817c2:	4628      	mov	r0, r5
d00817c4:	9301      	str	r3, [sp, #4]
d00817c6:	f000 fa5b 	bl	d0081c80 <_svfiprintf_r>
d00817ca:	1c43      	adds	r3, r0, #1
d00817cc:	bfbc      	itt	lt
d00817ce:	238b      	movlt	r3, #139	; 0x8b
d00817d0:	602b      	strlt	r3, [r5, #0]
d00817d2:	2c00      	cmp	r4, #0
d00817d4:	d0dd      	beq.n	d0081792 <sniprintf+0x16>
d00817d6:	9b02      	ldr	r3, [sp, #8]
d00817d8:	2200      	movs	r2, #0
d00817da:	701a      	strb	r2, [r3, #0]
d00817dc:	e7d9      	b.n	d0081792 <sniprintf+0x16>
d00817de:	bf00      	nop
d00817e0:	d0082724 	.word	0xd0082724

d00817e4 <strlen>:
d00817e4:	4603      	mov	r3, r0
d00817e6:	f813 2b01 	ldrb.w	r2, [r3], #1
d00817ea:	2a00      	cmp	r2, #0
d00817ec:	d1fb      	bne.n	d00817e6 <strlen+0x2>
d00817ee:	1a18      	subs	r0, r3, r0
d00817f0:	3801      	subs	r0, #1
d00817f2:	4770      	bx	lr

d00817f4 <__sflush_r>:
d00817f4:	898a      	ldrh	r2, [r1, #12]
d00817f6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00817fa:	4605      	mov	r5, r0
d00817fc:	0710      	lsls	r0, r2, #28
d00817fe:	460c      	mov	r4, r1
d0081800:	d458      	bmi.n	d00818b4 <__sflush_r+0xc0>
d0081802:	684b      	ldr	r3, [r1, #4]
d0081804:	2b00      	cmp	r3, #0
d0081806:	dc05      	bgt.n	d0081814 <__sflush_r+0x20>
d0081808:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d008180a:	2b00      	cmp	r3, #0
d008180c:	dc02      	bgt.n	d0081814 <__sflush_r+0x20>
d008180e:	2000      	movs	r0, #0
d0081810:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0081814:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0081816:	2e00      	cmp	r6, #0
d0081818:	d0f9      	beq.n	d008180e <__sflush_r+0x1a>
d008181a:	2300      	movs	r3, #0
d008181c:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0081820:	682f      	ldr	r7, [r5, #0]
d0081822:	602b      	str	r3, [r5, #0]
d0081824:	d032      	beq.n	d008188c <__sflush_r+0x98>
d0081826:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0081828:	89a3      	ldrh	r3, [r4, #12]
d008182a:	075a      	lsls	r2, r3, #29
d008182c:	d505      	bpl.n	d008183a <__sflush_r+0x46>
d008182e:	6863      	ldr	r3, [r4, #4]
d0081830:	1ac0      	subs	r0, r0, r3
d0081832:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0081834:	b10b      	cbz	r3, d008183a <__sflush_r+0x46>
d0081836:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0081838:	1ac0      	subs	r0, r0, r3
d008183a:	2300      	movs	r3, #0
d008183c:	4602      	mov	r2, r0
d008183e:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0081840:	6a21      	ldr	r1, [r4, #32]
d0081842:	4628      	mov	r0, r5
d0081844:	47b0      	blx	r6
d0081846:	1c43      	adds	r3, r0, #1
d0081848:	89a3      	ldrh	r3, [r4, #12]
d008184a:	d106      	bne.n	d008185a <__sflush_r+0x66>
d008184c:	6829      	ldr	r1, [r5, #0]
d008184e:	291d      	cmp	r1, #29
d0081850:	d82c      	bhi.n	d00818ac <__sflush_r+0xb8>
d0081852:	4a2a      	ldr	r2, [pc, #168]	; (d00818fc <__sflush_r+0x108>)
d0081854:	40ca      	lsrs	r2, r1
d0081856:	07d6      	lsls	r6, r2, #31
d0081858:	d528      	bpl.n	d00818ac <__sflush_r+0xb8>
d008185a:	2200      	movs	r2, #0
d008185c:	6062      	str	r2, [r4, #4]
d008185e:	04d9      	lsls	r1, r3, #19
d0081860:	6922      	ldr	r2, [r4, #16]
d0081862:	6022      	str	r2, [r4, #0]
d0081864:	d504      	bpl.n	d0081870 <__sflush_r+0x7c>
d0081866:	1c42      	adds	r2, r0, #1
d0081868:	d101      	bne.n	d008186e <__sflush_r+0x7a>
d008186a:	682b      	ldr	r3, [r5, #0]
d008186c:	b903      	cbnz	r3, d0081870 <__sflush_r+0x7c>
d008186e:	6560      	str	r0, [r4, #84]	; 0x54
d0081870:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0081872:	602f      	str	r7, [r5, #0]
d0081874:	2900      	cmp	r1, #0
d0081876:	d0ca      	beq.n	d008180e <__sflush_r+0x1a>
d0081878:	f104 0344 	add.w	r3, r4, #68	; 0x44
d008187c:	4299      	cmp	r1, r3
d008187e:	d002      	beq.n	d0081886 <__sflush_r+0x92>
d0081880:	4628      	mov	r0, r5
d0081882:	f7ff fe03 	bl	d008148c <_free_r>
d0081886:	2000      	movs	r0, #0
d0081888:	6360      	str	r0, [r4, #52]	; 0x34
d008188a:	e7c1      	b.n	d0081810 <__sflush_r+0x1c>
d008188c:	6a21      	ldr	r1, [r4, #32]
d008188e:	2301      	movs	r3, #1
d0081890:	4628      	mov	r0, r5
d0081892:	47b0      	blx	r6
d0081894:	1c41      	adds	r1, r0, #1
d0081896:	d1c7      	bne.n	d0081828 <__sflush_r+0x34>
d0081898:	682b      	ldr	r3, [r5, #0]
d008189a:	2b00      	cmp	r3, #0
d008189c:	d0c4      	beq.n	d0081828 <__sflush_r+0x34>
d008189e:	2b1d      	cmp	r3, #29
d00818a0:	d001      	beq.n	d00818a6 <__sflush_r+0xb2>
d00818a2:	2b16      	cmp	r3, #22
d00818a4:	d101      	bne.n	d00818aa <__sflush_r+0xb6>
d00818a6:	602f      	str	r7, [r5, #0]
d00818a8:	e7b1      	b.n	d008180e <__sflush_r+0x1a>
d00818aa:	89a3      	ldrh	r3, [r4, #12]
d00818ac:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00818b0:	81a3      	strh	r3, [r4, #12]
d00818b2:	e7ad      	b.n	d0081810 <__sflush_r+0x1c>
d00818b4:	690f      	ldr	r7, [r1, #16]
d00818b6:	2f00      	cmp	r7, #0
d00818b8:	d0a9      	beq.n	d008180e <__sflush_r+0x1a>
d00818ba:	0793      	lsls	r3, r2, #30
d00818bc:	680e      	ldr	r6, [r1, #0]
d00818be:	bf08      	it	eq
d00818c0:	694b      	ldreq	r3, [r1, #20]
d00818c2:	600f      	str	r7, [r1, #0]
d00818c4:	bf18      	it	ne
d00818c6:	2300      	movne	r3, #0
d00818c8:	eba6 0807 	sub.w	r8, r6, r7
d00818cc:	608b      	str	r3, [r1, #8]
d00818ce:	f1b8 0f00 	cmp.w	r8, #0
d00818d2:	dd9c      	ble.n	d008180e <__sflush_r+0x1a>
d00818d4:	6a21      	ldr	r1, [r4, #32]
d00818d6:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d00818d8:	4643      	mov	r3, r8
d00818da:	463a      	mov	r2, r7
d00818dc:	4628      	mov	r0, r5
d00818de:	47b0      	blx	r6
d00818e0:	2800      	cmp	r0, #0
d00818e2:	dc06      	bgt.n	d00818f2 <__sflush_r+0xfe>
d00818e4:	89a3      	ldrh	r3, [r4, #12]
d00818e6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00818ea:	81a3      	strh	r3, [r4, #12]
d00818ec:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00818f0:	e78e      	b.n	d0081810 <__sflush_r+0x1c>
d00818f2:	4407      	add	r7, r0
d00818f4:	eba8 0800 	sub.w	r8, r8, r0
d00818f8:	e7e9      	b.n	d00818ce <__sflush_r+0xda>
d00818fa:	bf00      	nop
d00818fc:	20400001 	.word	0x20400001

d0081900 <_fflush_r>:
d0081900:	b538      	push	{r3, r4, r5, lr}
d0081902:	690b      	ldr	r3, [r1, #16]
d0081904:	4605      	mov	r5, r0
d0081906:	460c      	mov	r4, r1
d0081908:	b913      	cbnz	r3, d0081910 <_fflush_r+0x10>
d008190a:	2500      	movs	r5, #0
d008190c:	4628      	mov	r0, r5
d008190e:	bd38      	pop	{r3, r4, r5, pc}
d0081910:	b118      	cbz	r0, d008191a <_fflush_r+0x1a>
d0081912:	6983      	ldr	r3, [r0, #24]
d0081914:	b90b      	cbnz	r3, d008191a <_fflush_r+0x1a>
d0081916:	f000 f887 	bl	d0081a28 <__sinit>
d008191a:	4b14      	ldr	r3, [pc, #80]	; (d008196c <_fflush_r+0x6c>)
d008191c:	429c      	cmp	r4, r3
d008191e:	d11b      	bne.n	d0081958 <_fflush_r+0x58>
d0081920:	686c      	ldr	r4, [r5, #4]
d0081922:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0081926:	2b00      	cmp	r3, #0
d0081928:	d0ef      	beq.n	d008190a <_fflush_r+0xa>
d008192a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d008192c:	07d0      	lsls	r0, r2, #31
d008192e:	d404      	bmi.n	d008193a <_fflush_r+0x3a>
d0081930:	0599      	lsls	r1, r3, #22
d0081932:	d402      	bmi.n	d008193a <_fflush_r+0x3a>
d0081934:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081936:	f000 f915 	bl	d0081b64 <__retarget_lock_acquire_recursive>
d008193a:	4628      	mov	r0, r5
d008193c:	4621      	mov	r1, r4
d008193e:	f7ff ff59 	bl	d00817f4 <__sflush_r>
d0081942:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0081944:	07da      	lsls	r2, r3, #31
d0081946:	4605      	mov	r5, r0
d0081948:	d4e0      	bmi.n	d008190c <_fflush_r+0xc>
d008194a:	89a3      	ldrh	r3, [r4, #12]
d008194c:	059b      	lsls	r3, r3, #22
d008194e:	d4dd      	bmi.n	d008190c <_fflush_r+0xc>
d0081950:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081952:	f000 f908 	bl	d0081b66 <__retarget_lock_release_recursive>
d0081956:	e7d9      	b.n	d008190c <_fflush_r+0xc>
d0081958:	4b05      	ldr	r3, [pc, #20]	; (d0081970 <_fflush_r+0x70>)
d008195a:	429c      	cmp	r4, r3
d008195c:	d101      	bne.n	d0081962 <_fflush_r+0x62>
d008195e:	68ac      	ldr	r4, [r5, #8]
d0081960:	e7df      	b.n	d0081922 <_fflush_r+0x22>
d0081962:	4b04      	ldr	r3, [pc, #16]	; (d0081974 <_fflush_r+0x74>)
d0081964:	429c      	cmp	r4, r3
d0081966:	bf08      	it	eq
d0081968:	68ec      	ldreq	r4, [r5, #12]
d008196a:	e7da      	b.n	d0081922 <_fflush_r+0x22>
d008196c:	d00826a4 	.word	0xd00826a4
d0081970:	d00826c4 	.word	0xd00826c4
d0081974:	d0082684 	.word	0xd0082684

d0081978 <std>:
d0081978:	2300      	movs	r3, #0
d008197a:	b510      	push	{r4, lr}
d008197c:	4604      	mov	r4, r0
d008197e:	e9c0 3300 	strd	r3, r3, [r0]
d0081982:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0081986:	6083      	str	r3, [r0, #8]
d0081988:	8181      	strh	r1, [r0, #12]
d008198a:	6643      	str	r3, [r0, #100]	; 0x64
d008198c:	81c2      	strh	r2, [r0, #14]
d008198e:	6183      	str	r3, [r0, #24]
d0081990:	4619      	mov	r1, r3
d0081992:	2208      	movs	r2, #8
d0081994:	305c      	adds	r0, #92	; 0x5c
d0081996:	f7ff fd71 	bl	d008147c <memset>
d008199a:	4b05      	ldr	r3, [pc, #20]	; (d00819b0 <std+0x38>)
d008199c:	6263      	str	r3, [r4, #36]	; 0x24
d008199e:	4b05      	ldr	r3, [pc, #20]	; (d00819b4 <std+0x3c>)
d00819a0:	62a3      	str	r3, [r4, #40]	; 0x28
d00819a2:	4b05      	ldr	r3, [pc, #20]	; (d00819b8 <std+0x40>)
d00819a4:	62e3      	str	r3, [r4, #44]	; 0x2c
d00819a6:	4b05      	ldr	r3, [pc, #20]	; (d00819bc <std+0x44>)
d00819a8:	6224      	str	r4, [r4, #32]
d00819aa:	6323      	str	r3, [r4, #48]	; 0x30
d00819ac:	bd10      	pop	{r4, pc}
d00819ae:	bf00      	nop
d00819b0:	d00821a9 	.word	0xd00821a9
d00819b4:	d00821cb 	.word	0xd00821cb
d00819b8:	d0082203 	.word	0xd0082203
d00819bc:	d0082227 	.word	0xd0082227

d00819c0 <_cleanup_r>:
d00819c0:	4901      	ldr	r1, [pc, #4]	; (d00819c8 <_cleanup_r+0x8>)
d00819c2:	f000 b8af 	b.w	d0081b24 <_fwalk_reent>
d00819c6:	bf00      	nop
d00819c8:	d0081901 	.word	0xd0081901

d00819cc <__sfmoreglue>:
d00819cc:	b570      	push	{r4, r5, r6, lr}
d00819ce:	1e4a      	subs	r2, r1, #1
d00819d0:	2568      	movs	r5, #104	; 0x68
d00819d2:	4355      	muls	r5, r2
d00819d4:	460e      	mov	r6, r1
d00819d6:	f105 0174 	add.w	r1, r5, #116	; 0x74
d00819da:	f7ff fda7 	bl	d008152c <_malloc_r>
d00819de:	4604      	mov	r4, r0
d00819e0:	b140      	cbz	r0, d00819f4 <__sfmoreglue+0x28>
d00819e2:	2100      	movs	r1, #0
d00819e4:	e9c0 1600 	strd	r1, r6, [r0]
d00819e8:	300c      	adds	r0, #12
d00819ea:	60a0      	str	r0, [r4, #8]
d00819ec:	f105 0268 	add.w	r2, r5, #104	; 0x68
d00819f0:	f7ff fd44 	bl	d008147c <memset>
d00819f4:	4620      	mov	r0, r4
d00819f6:	bd70      	pop	{r4, r5, r6, pc}

d00819f8 <__sfp_lock_acquire>:
d00819f8:	4801      	ldr	r0, [pc, #4]	; (d0081a00 <__sfp_lock_acquire+0x8>)
d00819fa:	f000 b8b3 	b.w	d0081b64 <__retarget_lock_acquire_recursive>
d00819fe:	bf00      	nop
d0081a00:	d00923cc 	.word	0xd00923cc

d0081a04 <__sfp_lock_release>:
d0081a04:	4801      	ldr	r0, [pc, #4]	; (d0081a0c <__sfp_lock_release+0x8>)
d0081a06:	f000 b8ae 	b.w	d0081b66 <__retarget_lock_release_recursive>
d0081a0a:	bf00      	nop
d0081a0c:	d00923cc 	.word	0xd00923cc

d0081a10 <__sinit_lock_acquire>:
d0081a10:	4801      	ldr	r0, [pc, #4]	; (d0081a18 <__sinit_lock_acquire+0x8>)
d0081a12:	f000 b8a7 	b.w	d0081b64 <__retarget_lock_acquire_recursive>
d0081a16:	bf00      	nop
d0081a18:	d00923c7 	.word	0xd00923c7

d0081a1c <__sinit_lock_release>:
d0081a1c:	4801      	ldr	r0, [pc, #4]	; (d0081a24 <__sinit_lock_release+0x8>)
d0081a1e:	f000 b8a2 	b.w	d0081b66 <__retarget_lock_release_recursive>
d0081a22:	bf00      	nop
d0081a24:	d00923c7 	.word	0xd00923c7

d0081a28 <__sinit>:
d0081a28:	b510      	push	{r4, lr}
d0081a2a:	4604      	mov	r4, r0
d0081a2c:	f7ff fff0 	bl	d0081a10 <__sinit_lock_acquire>
d0081a30:	69a3      	ldr	r3, [r4, #24]
d0081a32:	b11b      	cbz	r3, d0081a3c <__sinit+0x14>
d0081a34:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0081a38:	f7ff bff0 	b.w	d0081a1c <__sinit_lock_release>
d0081a3c:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0081a40:	6523      	str	r3, [r4, #80]	; 0x50
d0081a42:	4b13      	ldr	r3, [pc, #76]	; (d0081a90 <__sinit+0x68>)
d0081a44:	4a13      	ldr	r2, [pc, #76]	; (d0081a94 <__sinit+0x6c>)
d0081a46:	681b      	ldr	r3, [r3, #0]
d0081a48:	62a2      	str	r2, [r4, #40]	; 0x28
d0081a4a:	42a3      	cmp	r3, r4
d0081a4c:	bf04      	itt	eq
d0081a4e:	2301      	moveq	r3, #1
d0081a50:	61a3      	streq	r3, [r4, #24]
d0081a52:	4620      	mov	r0, r4
d0081a54:	f000 f820 	bl	d0081a98 <__sfp>
d0081a58:	6060      	str	r0, [r4, #4]
d0081a5a:	4620      	mov	r0, r4
d0081a5c:	f000 f81c 	bl	d0081a98 <__sfp>
d0081a60:	60a0      	str	r0, [r4, #8]
d0081a62:	4620      	mov	r0, r4
d0081a64:	f000 f818 	bl	d0081a98 <__sfp>
d0081a68:	2200      	movs	r2, #0
d0081a6a:	60e0      	str	r0, [r4, #12]
d0081a6c:	2104      	movs	r1, #4
d0081a6e:	6860      	ldr	r0, [r4, #4]
d0081a70:	f7ff ff82 	bl	d0081978 <std>
d0081a74:	68a0      	ldr	r0, [r4, #8]
d0081a76:	2201      	movs	r2, #1
d0081a78:	2109      	movs	r1, #9
d0081a7a:	f7ff ff7d 	bl	d0081978 <std>
d0081a7e:	68e0      	ldr	r0, [r4, #12]
d0081a80:	2202      	movs	r2, #2
d0081a82:	2112      	movs	r1, #18
d0081a84:	f7ff ff78 	bl	d0081978 <std>
d0081a88:	2301      	movs	r3, #1
d0081a8a:	61a3      	str	r3, [r4, #24]
d0081a8c:	e7d2      	b.n	d0081a34 <__sinit+0xc>
d0081a8e:	bf00      	nop
d0081a90:	d0082680 	.word	0xd0082680
d0081a94:	d00819c1 	.word	0xd00819c1

d0081a98 <__sfp>:
d0081a98:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0081a9a:	4607      	mov	r7, r0
d0081a9c:	f7ff ffac 	bl	d00819f8 <__sfp_lock_acquire>
d0081aa0:	4b1e      	ldr	r3, [pc, #120]	; (d0081b1c <__sfp+0x84>)
d0081aa2:	681e      	ldr	r6, [r3, #0]
d0081aa4:	69b3      	ldr	r3, [r6, #24]
d0081aa6:	b913      	cbnz	r3, d0081aae <__sfp+0x16>
d0081aa8:	4630      	mov	r0, r6
d0081aaa:	f7ff ffbd 	bl	d0081a28 <__sinit>
d0081aae:	3648      	adds	r6, #72	; 0x48
d0081ab0:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0081ab4:	3b01      	subs	r3, #1
d0081ab6:	d503      	bpl.n	d0081ac0 <__sfp+0x28>
d0081ab8:	6833      	ldr	r3, [r6, #0]
d0081aba:	b30b      	cbz	r3, d0081b00 <__sfp+0x68>
d0081abc:	6836      	ldr	r6, [r6, #0]
d0081abe:	e7f7      	b.n	d0081ab0 <__sfp+0x18>
d0081ac0:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0081ac4:	b9d5      	cbnz	r5, d0081afc <__sfp+0x64>
d0081ac6:	4b16      	ldr	r3, [pc, #88]	; (d0081b20 <__sfp+0x88>)
d0081ac8:	60e3      	str	r3, [r4, #12]
d0081aca:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0081ace:	6665      	str	r5, [r4, #100]	; 0x64
d0081ad0:	f000 f847 	bl	d0081b62 <__retarget_lock_init_recursive>
d0081ad4:	f7ff ff96 	bl	d0081a04 <__sfp_lock_release>
d0081ad8:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0081adc:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0081ae0:	6025      	str	r5, [r4, #0]
d0081ae2:	61a5      	str	r5, [r4, #24]
d0081ae4:	2208      	movs	r2, #8
d0081ae6:	4629      	mov	r1, r5
d0081ae8:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0081aec:	f7ff fcc6 	bl	d008147c <memset>
d0081af0:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0081af4:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0081af8:	4620      	mov	r0, r4
d0081afa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0081afc:	3468      	adds	r4, #104	; 0x68
d0081afe:	e7d9      	b.n	d0081ab4 <__sfp+0x1c>
d0081b00:	2104      	movs	r1, #4
d0081b02:	4638      	mov	r0, r7
d0081b04:	f7ff ff62 	bl	d00819cc <__sfmoreglue>
d0081b08:	4604      	mov	r4, r0
d0081b0a:	6030      	str	r0, [r6, #0]
d0081b0c:	2800      	cmp	r0, #0
d0081b0e:	d1d5      	bne.n	d0081abc <__sfp+0x24>
d0081b10:	f7ff ff78 	bl	d0081a04 <__sfp_lock_release>
d0081b14:	230c      	movs	r3, #12
d0081b16:	603b      	str	r3, [r7, #0]
d0081b18:	e7ee      	b.n	d0081af8 <__sfp+0x60>
d0081b1a:	bf00      	nop
d0081b1c:	d0082680 	.word	0xd0082680
d0081b20:	ffff0001 	.word	0xffff0001

d0081b24 <_fwalk_reent>:
d0081b24:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0081b28:	4606      	mov	r6, r0
d0081b2a:	4688      	mov	r8, r1
d0081b2c:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0081b30:	2700      	movs	r7, #0
d0081b32:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0081b36:	f1b9 0901 	subs.w	r9, r9, #1
d0081b3a:	d505      	bpl.n	d0081b48 <_fwalk_reent+0x24>
d0081b3c:	6824      	ldr	r4, [r4, #0]
d0081b3e:	2c00      	cmp	r4, #0
d0081b40:	d1f7      	bne.n	d0081b32 <_fwalk_reent+0xe>
d0081b42:	4638      	mov	r0, r7
d0081b44:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0081b48:	89ab      	ldrh	r3, [r5, #12]
d0081b4a:	2b01      	cmp	r3, #1
d0081b4c:	d907      	bls.n	d0081b5e <_fwalk_reent+0x3a>
d0081b4e:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0081b52:	3301      	adds	r3, #1
d0081b54:	d003      	beq.n	d0081b5e <_fwalk_reent+0x3a>
d0081b56:	4629      	mov	r1, r5
d0081b58:	4630      	mov	r0, r6
d0081b5a:	47c0      	blx	r8
d0081b5c:	4307      	orrs	r7, r0
d0081b5e:	3568      	adds	r5, #104	; 0x68
d0081b60:	e7e9      	b.n	d0081b36 <_fwalk_reent+0x12>

d0081b62 <__retarget_lock_init_recursive>:
d0081b62:	4770      	bx	lr

d0081b64 <__retarget_lock_acquire_recursive>:
d0081b64:	4770      	bx	lr

d0081b66 <__retarget_lock_release_recursive>:
d0081b66:	4770      	bx	lr

d0081b68 <__swhatbuf_r>:
d0081b68:	b570      	push	{r4, r5, r6, lr}
d0081b6a:	460e      	mov	r6, r1
d0081b6c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081b70:	2900      	cmp	r1, #0
d0081b72:	b096      	sub	sp, #88	; 0x58
d0081b74:	4614      	mov	r4, r2
d0081b76:	461d      	mov	r5, r3
d0081b78:	da07      	bge.n	d0081b8a <__swhatbuf_r+0x22>
d0081b7a:	2300      	movs	r3, #0
d0081b7c:	602b      	str	r3, [r5, #0]
d0081b7e:	89b3      	ldrh	r3, [r6, #12]
d0081b80:	061a      	lsls	r2, r3, #24
d0081b82:	d410      	bmi.n	d0081ba6 <__swhatbuf_r+0x3e>
d0081b84:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0081b88:	e00e      	b.n	d0081ba8 <__swhatbuf_r+0x40>
d0081b8a:	466a      	mov	r2, sp
d0081b8c:	f000 fb60 	bl	d0082250 <_fstat_r>
d0081b90:	2800      	cmp	r0, #0
d0081b92:	dbf2      	blt.n	d0081b7a <__swhatbuf_r+0x12>
d0081b94:	9a01      	ldr	r2, [sp, #4]
d0081b96:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0081b9a:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0081b9e:	425a      	negs	r2, r3
d0081ba0:	415a      	adcs	r2, r3
d0081ba2:	602a      	str	r2, [r5, #0]
d0081ba4:	e7ee      	b.n	d0081b84 <__swhatbuf_r+0x1c>
d0081ba6:	2340      	movs	r3, #64	; 0x40
d0081ba8:	2000      	movs	r0, #0
d0081baa:	6023      	str	r3, [r4, #0]
d0081bac:	b016      	add	sp, #88	; 0x58
d0081bae:	bd70      	pop	{r4, r5, r6, pc}

d0081bb0 <__malloc_lock>:
d0081bb0:	4801      	ldr	r0, [pc, #4]	; (d0081bb8 <__malloc_lock+0x8>)
d0081bb2:	f7ff bfd7 	b.w	d0081b64 <__retarget_lock_acquire_recursive>
d0081bb6:	bf00      	nop
d0081bb8:	d00923c8 	.word	0xd00923c8

d0081bbc <__malloc_unlock>:
d0081bbc:	4801      	ldr	r0, [pc, #4]	; (d0081bc4 <__malloc_unlock+0x8>)
d0081bbe:	f7ff bfd2 	b.w	d0081b66 <__retarget_lock_release_recursive>
d0081bc2:	bf00      	nop
d0081bc4:	d00923c8 	.word	0xd00923c8

d0081bc8 <__ssputs_r>:
d0081bc8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0081bcc:	688e      	ldr	r6, [r1, #8]
d0081bce:	429e      	cmp	r6, r3
d0081bd0:	4682      	mov	sl, r0
d0081bd2:	460c      	mov	r4, r1
d0081bd4:	4690      	mov	r8, r2
d0081bd6:	461f      	mov	r7, r3
d0081bd8:	d838      	bhi.n	d0081c4c <__ssputs_r+0x84>
d0081bda:	898a      	ldrh	r2, [r1, #12]
d0081bdc:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0081be0:	d032      	beq.n	d0081c48 <__ssputs_r+0x80>
d0081be2:	6825      	ldr	r5, [r4, #0]
d0081be4:	6909      	ldr	r1, [r1, #16]
d0081be6:	eba5 0901 	sub.w	r9, r5, r1
d0081bea:	6965      	ldr	r5, [r4, #20]
d0081bec:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0081bf0:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0081bf4:	3301      	adds	r3, #1
d0081bf6:	444b      	add	r3, r9
d0081bf8:	106d      	asrs	r5, r5, #1
d0081bfa:	429d      	cmp	r5, r3
d0081bfc:	bf38      	it	cc
d0081bfe:	461d      	movcc	r5, r3
d0081c00:	0553      	lsls	r3, r2, #21
d0081c02:	d531      	bpl.n	d0081c68 <__ssputs_r+0xa0>
d0081c04:	4629      	mov	r1, r5
d0081c06:	f7ff fc91 	bl	d008152c <_malloc_r>
d0081c0a:	4606      	mov	r6, r0
d0081c0c:	b950      	cbnz	r0, d0081c24 <__ssputs_r+0x5c>
d0081c0e:	230c      	movs	r3, #12
d0081c10:	f8ca 3000 	str.w	r3, [sl]
d0081c14:	89a3      	ldrh	r3, [r4, #12]
d0081c16:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0081c1a:	81a3      	strh	r3, [r4, #12]
d0081c1c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081c20:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0081c24:	6921      	ldr	r1, [r4, #16]
d0081c26:	464a      	mov	r2, r9
d0081c28:	f000 fb8a 	bl	d0082340 <memcpy>
d0081c2c:	89a3      	ldrh	r3, [r4, #12]
d0081c2e:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0081c32:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0081c36:	81a3      	strh	r3, [r4, #12]
d0081c38:	6126      	str	r6, [r4, #16]
d0081c3a:	6165      	str	r5, [r4, #20]
d0081c3c:	444e      	add	r6, r9
d0081c3e:	eba5 0509 	sub.w	r5, r5, r9
d0081c42:	6026      	str	r6, [r4, #0]
d0081c44:	60a5      	str	r5, [r4, #8]
d0081c46:	463e      	mov	r6, r7
d0081c48:	42be      	cmp	r6, r7
d0081c4a:	d900      	bls.n	d0081c4e <__ssputs_r+0x86>
d0081c4c:	463e      	mov	r6, r7
d0081c4e:	4632      	mov	r2, r6
d0081c50:	6820      	ldr	r0, [r4, #0]
d0081c52:	4641      	mov	r1, r8
d0081c54:	f000 fb82 	bl	d008235c <memmove>
d0081c58:	68a3      	ldr	r3, [r4, #8]
d0081c5a:	6822      	ldr	r2, [r4, #0]
d0081c5c:	1b9b      	subs	r3, r3, r6
d0081c5e:	4432      	add	r2, r6
d0081c60:	60a3      	str	r3, [r4, #8]
d0081c62:	6022      	str	r2, [r4, #0]
d0081c64:	2000      	movs	r0, #0
d0081c66:	e7db      	b.n	d0081c20 <__ssputs_r+0x58>
d0081c68:	462a      	mov	r2, r5
d0081c6a:	f000 fb91 	bl	d0082390 <_realloc_r>
d0081c6e:	4606      	mov	r6, r0
d0081c70:	2800      	cmp	r0, #0
d0081c72:	d1e1      	bne.n	d0081c38 <__ssputs_r+0x70>
d0081c74:	6921      	ldr	r1, [r4, #16]
d0081c76:	4650      	mov	r0, sl
d0081c78:	f7ff fc08 	bl	d008148c <_free_r>
d0081c7c:	e7c7      	b.n	d0081c0e <__ssputs_r+0x46>
	...

d0081c80 <_svfiprintf_r>:
d0081c80:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0081c84:	4698      	mov	r8, r3
d0081c86:	898b      	ldrh	r3, [r1, #12]
d0081c88:	061b      	lsls	r3, r3, #24
d0081c8a:	b09d      	sub	sp, #116	; 0x74
d0081c8c:	4607      	mov	r7, r0
d0081c8e:	460d      	mov	r5, r1
d0081c90:	4614      	mov	r4, r2
d0081c92:	d50e      	bpl.n	d0081cb2 <_svfiprintf_r+0x32>
d0081c94:	690b      	ldr	r3, [r1, #16]
d0081c96:	b963      	cbnz	r3, d0081cb2 <_svfiprintf_r+0x32>
d0081c98:	2140      	movs	r1, #64	; 0x40
d0081c9a:	f7ff fc47 	bl	d008152c <_malloc_r>
d0081c9e:	6028      	str	r0, [r5, #0]
d0081ca0:	6128      	str	r0, [r5, #16]
d0081ca2:	b920      	cbnz	r0, d0081cae <_svfiprintf_r+0x2e>
d0081ca4:	230c      	movs	r3, #12
d0081ca6:	603b      	str	r3, [r7, #0]
d0081ca8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081cac:	e0d1      	b.n	d0081e52 <_svfiprintf_r+0x1d2>
d0081cae:	2340      	movs	r3, #64	; 0x40
d0081cb0:	616b      	str	r3, [r5, #20]
d0081cb2:	2300      	movs	r3, #0
d0081cb4:	9309      	str	r3, [sp, #36]	; 0x24
d0081cb6:	2320      	movs	r3, #32
d0081cb8:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0081cbc:	f8cd 800c 	str.w	r8, [sp, #12]
d0081cc0:	2330      	movs	r3, #48	; 0x30
d0081cc2:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0081e6c <_svfiprintf_r+0x1ec>
d0081cc6:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0081cca:	f04f 0901 	mov.w	r9, #1
d0081cce:	4623      	mov	r3, r4
d0081cd0:	469a      	mov	sl, r3
d0081cd2:	f813 2b01 	ldrb.w	r2, [r3], #1
d0081cd6:	b10a      	cbz	r2, d0081cdc <_svfiprintf_r+0x5c>
d0081cd8:	2a25      	cmp	r2, #37	; 0x25
d0081cda:	d1f9      	bne.n	d0081cd0 <_svfiprintf_r+0x50>
d0081cdc:	ebba 0b04 	subs.w	fp, sl, r4
d0081ce0:	d00b      	beq.n	d0081cfa <_svfiprintf_r+0x7a>
d0081ce2:	465b      	mov	r3, fp
d0081ce4:	4622      	mov	r2, r4
d0081ce6:	4629      	mov	r1, r5
d0081ce8:	4638      	mov	r0, r7
d0081cea:	f7ff ff6d 	bl	d0081bc8 <__ssputs_r>
d0081cee:	3001      	adds	r0, #1
d0081cf0:	f000 80aa 	beq.w	d0081e48 <_svfiprintf_r+0x1c8>
d0081cf4:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0081cf6:	445a      	add	r2, fp
d0081cf8:	9209      	str	r2, [sp, #36]	; 0x24
d0081cfa:	f89a 3000 	ldrb.w	r3, [sl]
d0081cfe:	2b00      	cmp	r3, #0
d0081d00:	f000 80a2 	beq.w	d0081e48 <_svfiprintf_r+0x1c8>
d0081d04:	2300      	movs	r3, #0
d0081d06:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0081d0a:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0081d0e:	f10a 0a01 	add.w	sl, sl, #1
d0081d12:	9304      	str	r3, [sp, #16]
d0081d14:	9307      	str	r3, [sp, #28]
d0081d16:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0081d1a:	931a      	str	r3, [sp, #104]	; 0x68
d0081d1c:	4654      	mov	r4, sl
d0081d1e:	2205      	movs	r2, #5
d0081d20:	f814 1b01 	ldrb.w	r1, [r4], #1
d0081d24:	4851      	ldr	r0, [pc, #324]	; (d0081e6c <_svfiprintf_r+0x1ec>)
d0081d26:	f000 fabb 	bl	d00822a0 <memchr>
d0081d2a:	9a04      	ldr	r2, [sp, #16]
d0081d2c:	b9d8      	cbnz	r0, d0081d66 <_svfiprintf_r+0xe6>
d0081d2e:	06d0      	lsls	r0, r2, #27
d0081d30:	bf44      	itt	mi
d0081d32:	2320      	movmi	r3, #32
d0081d34:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0081d38:	0711      	lsls	r1, r2, #28
d0081d3a:	bf44      	itt	mi
d0081d3c:	232b      	movmi	r3, #43	; 0x2b
d0081d3e:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0081d42:	f89a 3000 	ldrb.w	r3, [sl]
d0081d46:	2b2a      	cmp	r3, #42	; 0x2a
d0081d48:	d015      	beq.n	d0081d76 <_svfiprintf_r+0xf6>
d0081d4a:	9a07      	ldr	r2, [sp, #28]
d0081d4c:	4654      	mov	r4, sl
d0081d4e:	2000      	movs	r0, #0
d0081d50:	f04f 0c0a 	mov.w	ip, #10
d0081d54:	4621      	mov	r1, r4
d0081d56:	f811 3b01 	ldrb.w	r3, [r1], #1
d0081d5a:	3b30      	subs	r3, #48	; 0x30
d0081d5c:	2b09      	cmp	r3, #9
d0081d5e:	d94e      	bls.n	d0081dfe <_svfiprintf_r+0x17e>
d0081d60:	b1b0      	cbz	r0, d0081d90 <_svfiprintf_r+0x110>
d0081d62:	9207      	str	r2, [sp, #28]
d0081d64:	e014      	b.n	d0081d90 <_svfiprintf_r+0x110>
d0081d66:	eba0 0308 	sub.w	r3, r0, r8
d0081d6a:	fa09 f303 	lsl.w	r3, r9, r3
d0081d6e:	4313      	orrs	r3, r2
d0081d70:	9304      	str	r3, [sp, #16]
d0081d72:	46a2      	mov	sl, r4
d0081d74:	e7d2      	b.n	d0081d1c <_svfiprintf_r+0x9c>
d0081d76:	9b03      	ldr	r3, [sp, #12]
d0081d78:	1d19      	adds	r1, r3, #4
d0081d7a:	681b      	ldr	r3, [r3, #0]
d0081d7c:	9103      	str	r1, [sp, #12]
d0081d7e:	2b00      	cmp	r3, #0
d0081d80:	bfbb      	ittet	lt
d0081d82:	425b      	neglt	r3, r3
d0081d84:	f042 0202 	orrlt.w	r2, r2, #2
d0081d88:	9307      	strge	r3, [sp, #28]
d0081d8a:	9307      	strlt	r3, [sp, #28]
d0081d8c:	bfb8      	it	lt
d0081d8e:	9204      	strlt	r2, [sp, #16]
d0081d90:	7823      	ldrb	r3, [r4, #0]
d0081d92:	2b2e      	cmp	r3, #46	; 0x2e
d0081d94:	d10c      	bne.n	d0081db0 <_svfiprintf_r+0x130>
d0081d96:	7863      	ldrb	r3, [r4, #1]
d0081d98:	2b2a      	cmp	r3, #42	; 0x2a
d0081d9a:	d135      	bne.n	d0081e08 <_svfiprintf_r+0x188>
d0081d9c:	9b03      	ldr	r3, [sp, #12]
d0081d9e:	1d1a      	adds	r2, r3, #4
d0081da0:	681b      	ldr	r3, [r3, #0]
d0081da2:	9203      	str	r2, [sp, #12]
d0081da4:	2b00      	cmp	r3, #0
d0081da6:	bfb8      	it	lt
d0081da8:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0081dac:	3402      	adds	r4, #2
d0081dae:	9305      	str	r3, [sp, #20]
d0081db0:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0081e7c <_svfiprintf_r+0x1fc>
d0081db4:	7821      	ldrb	r1, [r4, #0]
d0081db6:	2203      	movs	r2, #3
d0081db8:	4650      	mov	r0, sl
d0081dba:	f000 fa71 	bl	d00822a0 <memchr>
d0081dbe:	b140      	cbz	r0, d0081dd2 <_svfiprintf_r+0x152>
d0081dc0:	2340      	movs	r3, #64	; 0x40
d0081dc2:	eba0 000a 	sub.w	r0, r0, sl
d0081dc6:	fa03 f000 	lsl.w	r0, r3, r0
d0081dca:	9b04      	ldr	r3, [sp, #16]
d0081dcc:	4303      	orrs	r3, r0
d0081dce:	3401      	adds	r4, #1
d0081dd0:	9304      	str	r3, [sp, #16]
d0081dd2:	f814 1b01 	ldrb.w	r1, [r4], #1
d0081dd6:	4826      	ldr	r0, [pc, #152]	; (d0081e70 <_svfiprintf_r+0x1f0>)
d0081dd8:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0081ddc:	2206      	movs	r2, #6
d0081dde:	f000 fa5f 	bl	d00822a0 <memchr>
d0081de2:	2800      	cmp	r0, #0
d0081de4:	d038      	beq.n	d0081e58 <_svfiprintf_r+0x1d8>
d0081de6:	4b23      	ldr	r3, [pc, #140]	; (d0081e74 <_svfiprintf_r+0x1f4>)
d0081de8:	bb1b      	cbnz	r3, d0081e32 <_svfiprintf_r+0x1b2>
d0081dea:	9b03      	ldr	r3, [sp, #12]
d0081dec:	3307      	adds	r3, #7
d0081dee:	f023 0307 	bic.w	r3, r3, #7
d0081df2:	3308      	adds	r3, #8
d0081df4:	9303      	str	r3, [sp, #12]
d0081df6:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0081df8:	4433      	add	r3, r6
d0081dfa:	9309      	str	r3, [sp, #36]	; 0x24
d0081dfc:	e767      	b.n	d0081cce <_svfiprintf_r+0x4e>
d0081dfe:	fb0c 3202 	mla	r2, ip, r2, r3
d0081e02:	460c      	mov	r4, r1
d0081e04:	2001      	movs	r0, #1
d0081e06:	e7a5      	b.n	d0081d54 <_svfiprintf_r+0xd4>
d0081e08:	2300      	movs	r3, #0
d0081e0a:	3401      	adds	r4, #1
d0081e0c:	9305      	str	r3, [sp, #20]
d0081e0e:	4619      	mov	r1, r3
d0081e10:	f04f 0c0a 	mov.w	ip, #10
d0081e14:	4620      	mov	r0, r4
d0081e16:	f810 2b01 	ldrb.w	r2, [r0], #1
d0081e1a:	3a30      	subs	r2, #48	; 0x30
d0081e1c:	2a09      	cmp	r2, #9
d0081e1e:	d903      	bls.n	d0081e28 <_svfiprintf_r+0x1a8>
d0081e20:	2b00      	cmp	r3, #0
d0081e22:	d0c5      	beq.n	d0081db0 <_svfiprintf_r+0x130>
d0081e24:	9105      	str	r1, [sp, #20]
d0081e26:	e7c3      	b.n	d0081db0 <_svfiprintf_r+0x130>
d0081e28:	fb0c 2101 	mla	r1, ip, r1, r2
d0081e2c:	4604      	mov	r4, r0
d0081e2e:	2301      	movs	r3, #1
d0081e30:	e7f0      	b.n	d0081e14 <_svfiprintf_r+0x194>
d0081e32:	ab03      	add	r3, sp, #12
d0081e34:	9300      	str	r3, [sp, #0]
d0081e36:	462a      	mov	r2, r5
d0081e38:	4b0f      	ldr	r3, [pc, #60]	; (d0081e78 <_svfiprintf_r+0x1f8>)
d0081e3a:	a904      	add	r1, sp, #16
d0081e3c:	4638      	mov	r0, r7
d0081e3e:	f3af 8000 	nop.w
d0081e42:	1c42      	adds	r2, r0, #1
d0081e44:	4606      	mov	r6, r0
d0081e46:	d1d6      	bne.n	d0081df6 <_svfiprintf_r+0x176>
d0081e48:	89ab      	ldrh	r3, [r5, #12]
d0081e4a:	065b      	lsls	r3, r3, #25
d0081e4c:	f53f af2c 	bmi.w	d0081ca8 <_svfiprintf_r+0x28>
d0081e50:	9809      	ldr	r0, [sp, #36]	; 0x24
d0081e52:	b01d      	add	sp, #116	; 0x74
d0081e54:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0081e58:	ab03      	add	r3, sp, #12
d0081e5a:	9300      	str	r3, [sp, #0]
d0081e5c:	462a      	mov	r2, r5
d0081e5e:	4b06      	ldr	r3, [pc, #24]	; (d0081e78 <_svfiprintf_r+0x1f8>)
d0081e60:	a904      	add	r1, sp, #16
d0081e62:	4638      	mov	r0, r7
d0081e64:	f000 f87a 	bl	d0081f5c <_printf_i>
d0081e68:	e7eb      	b.n	d0081e42 <_svfiprintf_r+0x1c2>
d0081e6a:	bf00      	nop
d0081e6c:	d00826e4 	.word	0xd00826e4
d0081e70:	d00826ee 	.word	0xd00826ee
d0081e74:	00000000 	.word	0x00000000
d0081e78:	d0081bc9 	.word	0xd0081bc9
d0081e7c:	d00826ea 	.word	0xd00826ea

d0081e80 <_printf_common>:
d0081e80:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0081e84:	4616      	mov	r6, r2
d0081e86:	4699      	mov	r9, r3
d0081e88:	688a      	ldr	r2, [r1, #8]
d0081e8a:	690b      	ldr	r3, [r1, #16]
d0081e8c:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0081e90:	4293      	cmp	r3, r2
d0081e92:	bfb8      	it	lt
d0081e94:	4613      	movlt	r3, r2
d0081e96:	6033      	str	r3, [r6, #0]
d0081e98:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0081e9c:	4607      	mov	r7, r0
d0081e9e:	460c      	mov	r4, r1
d0081ea0:	b10a      	cbz	r2, d0081ea6 <_printf_common+0x26>
d0081ea2:	3301      	adds	r3, #1
d0081ea4:	6033      	str	r3, [r6, #0]
d0081ea6:	6823      	ldr	r3, [r4, #0]
d0081ea8:	0699      	lsls	r1, r3, #26
d0081eaa:	bf42      	ittt	mi
d0081eac:	6833      	ldrmi	r3, [r6, #0]
d0081eae:	3302      	addmi	r3, #2
d0081eb0:	6033      	strmi	r3, [r6, #0]
d0081eb2:	6825      	ldr	r5, [r4, #0]
d0081eb4:	f015 0506 	ands.w	r5, r5, #6
d0081eb8:	d106      	bne.n	d0081ec8 <_printf_common+0x48>
d0081eba:	f104 0a19 	add.w	sl, r4, #25
d0081ebe:	68e3      	ldr	r3, [r4, #12]
d0081ec0:	6832      	ldr	r2, [r6, #0]
d0081ec2:	1a9b      	subs	r3, r3, r2
d0081ec4:	42ab      	cmp	r3, r5
d0081ec6:	dc26      	bgt.n	d0081f16 <_printf_common+0x96>
d0081ec8:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0081ecc:	1e13      	subs	r3, r2, #0
d0081ece:	6822      	ldr	r2, [r4, #0]
d0081ed0:	bf18      	it	ne
d0081ed2:	2301      	movne	r3, #1
d0081ed4:	0692      	lsls	r2, r2, #26
d0081ed6:	d42b      	bmi.n	d0081f30 <_printf_common+0xb0>
d0081ed8:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0081edc:	4649      	mov	r1, r9
d0081ede:	4638      	mov	r0, r7
d0081ee0:	47c0      	blx	r8
d0081ee2:	3001      	adds	r0, #1
d0081ee4:	d01e      	beq.n	d0081f24 <_printf_common+0xa4>
d0081ee6:	6823      	ldr	r3, [r4, #0]
d0081ee8:	68e5      	ldr	r5, [r4, #12]
d0081eea:	6832      	ldr	r2, [r6, #0]
d0081eec:	f003 0306 	and.w	r3, r3, #6
d0081ef0:	2b04      	cmp	r3, #4
d0081ef2:	bf08      	it	eq
d0081ef4:	1aad      	subeq	r5, r5, r2
d0081ef6:	68a3      	ldr	r3, [r4, #8]
d0081ef8:	6922      	ldr	r2, [r4, #16]
d0081efa:	bf0c      	ite	eq
d0081efc:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0081f00:	2500      	movne	r5, #0
d0081f02:	4293      	cmp	r3, r2
d0081f04:	bfc4      	itt	gt
d0081f06:	1a9b      	subgt	r3, r3, r2
d0081f08:	18ed      	addgt	r5, r5, r3
d0081f0a:	2600      	movs	r6, #0
d0081f0c:	341a      	adds	r4, #26
d0081f0e:	42b5      	cmp	r5, r6
d0081f10:	d11a      	bne.n	d0081f48 <_printf_common+0xc8>
d0081f12:	2000      	movs	r0, #0
d0081f14:	e008      	b.n	d0081f28 <_printf_common+0xa8>
d0081f16:	2301      	movs	r3, #1
d0081f18:	4652      	mov	r2, sl
d0081f1a:	4649      	mov	r1, r9
d0081f1c:	4638      	mov	r0, r7
d0081f1e:	47c0      	blx	r8
d0081f20:	3001      	adds	r0, #1
d0081f22:	d103      	bne.n	d0081f2c <_printf_common+0xac>
d0081f24:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081f28:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0081f2c:	3501      	adds	r5, #1
d0081f2e:	e7c6      	b.n	d0081ebe <_printf_common+0x3e>
d0081f30:	18e1      	adds	r1, r4, r3
d0081f32:	1c5a      	adds	r2, r3, #1
d0081f34:	2030      	movs	r0, #48	; 0x30
d0081f36:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0081f3a:	4422      	add	r2, r4
d0081f3c:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0081f40:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0081f44:	3302      	adds	r3, #2
d0081f46:	e7c7      	b.n	d0081ed8 <_printf_common+0x58>
d0081f48:	2301      	movs	r3, #1
d0081f4a:	4622      	mov	r2, r4
d0081f4c:	4649      	mov	r1, r9
d0081f4e:	4638      	mov	r0, r7
d0081f50:	47c0      	blx	r8
d0081f52:	3001      	adds	r0, #1
d0081f54:	d0e6      	beq.n	d0081f24 <_printf_common+0xa4>
d0081f56:	3601      	adds	r6, #1
d0081f58:	e7d9      	b.n	d0081f0e <_printf_common+0x8e>
	...

d0081f5c <_printf_i>:
d0081f5c:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0081f60:	460c      	mov	r4, r1
d0081f62:	4691      	mov	r9, r2
d0081f64:	7e27      	ldrb	r7, [r4, #24]
d0081f66:	990c      	ldr	r1, [sp, #48]	; 0x30
d0081f68:	2f78      	cmp	r7, #120	; 0x78
d0081f6a:	4680      	mov	r8, r0
d0081f6c:	469a      	mov	sl, r3
d0081f6e:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0081f72:	d807      	bhi.n	d0081f84 <_printf_i+0x28>
d0081f74:	2f62      	cmp	r7, #98	; 0x62
d0081f76:	d80a      	bhi.n	d0081f8e <_printf_i+0x32>
d0081f78:	2f00      	cmp	r7, #0
d0081f7a:	f000 80d8 	beq.w	d008212e <_printf_i+0x1d2>
d0081f7e:	2f58      	cmp	r7, #88	; 0x58
d0081f80:	f000 80a3 	beq.w	d00820ca <_printf_i+0x16e>
d0081f84:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0081f88:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0081f8c:	e03a      	b.n	d0082004 <_printf_i+0xa8>
d0081f8e:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0081f92:	2b15      	cmp	r3, #21
d0081f94:	d8f6      	bhi.n	d0081f84 <_printf_i+0x28>
d0081f96:	a001      	add	r0, pc, #4	; (adr r0, d0081f9c <_printf_i+0x40>)
d0081f98:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0081f9c:	d0081ff5 	.word	0xd0081ff5
d0081fa0:	d0082009 	.word	0xd0082009
d0081fa4:	d0081f85 	.word	0xd0081f85
d0081fa8:	d0081f85 	.word	0xd0081f85
d0081fac:	d0081f85 	.word	0xd0081f85
d0081fb0:	d0081f85 	.word	0xd0081f85
d0081fb4:	d0082009 	.word	0xd0082009
d0081fb8:	d0081f85 	.word	0xd0081f85
d0081fbc:	d0081f85 	.word	0xd0081f85
d0081fc0:	d0081f85 	.word	0xd0081f85
d0081fc4:	d0081f85 	.word	0xd0081f85
d0081fc8:	d0082115 	.word	0xd0082115
d0081fcc:	d0082039 	.word	0xd0082039
d0081fd0:	d00820f7 	.word	0xd00820f7
d0081fd4:	d0081f85 	.word	0xd0081f85
d0081fd8:	d0081f85 	.word	0xd0081f85
d0081fdc:	d0082137 	.word	0xd0082137
d0081fe0:	d0081f85 	.word	0xd0081f85
d0081fe4:	d0082039 	.word	0xd0082039
d0081fe8:	d0081f85 	.word	0xd0081f85
d0081fec:	d0081f85 	.word	0xd0081f85
d0081ff0:	d00820ff 	.word	0xd00820ff
d0081ff4:	680b      	ldr	r3, [r1, #0]
d0081ff6:	1d1a      	adds	r2, r3, #4
d0081ff8:	681b      	ldr	r3, [r3, #0]
d0081ffa:	600a      	str	r2, [r1, #0]
d0081ffc:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0082000:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0082004:	2301      	movs	r3, #1
d0082006:	e0a3      	b.n	d0082150 <_printf_i+0x1f4>
d0082008:	6825      	ldr	r5, [r4, #0]
d008200a:	6808      	ldr	r0, [r1, #0]
d008200c:	062e      	lsls	r6, r5, #24
d008200e:	f100 0304 	add.w	r3, r0, #4
d0082012:	d50a      	bpl.n	d008202a <_printf_i+0xce>
d0082014:	6805      	ldr	r5, [r0, #0]
d0082016:	600b      	str	r3, [r1, #0]
d0082018:	2d00      	cmp	r5, #0
d008201a:	da03      	bge.n	d0082024 <_printf_i+0xc8>
d008201c:	232d      	movs	r3, #45	; 0x2d
d008201e:	426d      	negs	r5, r5
d0082020:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0082024:	485e      	ldr	r0, [pc, #376]	; (d00821a0 <_printf_i+0x244>)
d0082026:	230a      	movs	r3, #10
d0082028:	e019      	b.n	d008205e <_printf_i+0x102>
d008202a:	f015 0f40 	tst.w	r5, #64	; 0x40
d008202e:	6805      	ldr	r5, [r0, #0]
d0082030:	600b      	str	r3, [r1, #0]
d0082032:	bf18      	it	ne
d0082034:	b22d      	sxthne	r5, r5
d0082036:	e7ef      	b.n	d0082018 <_printf_i+0xbc>
d0082038:	680b      	ldr	r3, [r1, #0]
d008203a:	6825      	ldr	r5, [r4, #0]
d008203c:	1d18      	adds	r0, r3, #4
d008203e:	6008      	str	r0, [r1, #0]
d0082040:	0628      	lsls	r0, r5, #24
d0082042:	d501      	bpl.n	d0082048 <_printf_i+0xec>
d0082044:	681d      	ldr	r5, [r3, #0]
d0082046:	e002      	b.n	d008204e <_printf_i+0xf2>
d0082048:	0669      	lsls	r1, r5, #25
d008204a:	d5fb      	bpl.n	d0082044 <_printf_i+0xe8>
d008204c:	881d      	ldrh	r5, [r3, #0]
d008204e:	4854      	ldr	r0, [pc, #336]	; (d00821a0 <_printf_i+0x244>)
d0082050:	2f6f      	cmp	r7, #111	; 0x6f
d0082052:	bf0c      	ite	eq
d0082054:	2308      	moveq	r3, #8
d0082056:	230a      	movne	r3, #10
d0082058:	2100      	movs	r1, #0
d008205a:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d008205e:	6866      	ldr	r6, [r4, #4]
d0082060:	60a6      	str	r6, [r4, #8]
d0082062:	2e00      	cmp	r6, #0
d0082064:	bfa2      	ittt	ge
d0082066:	6821      	ldrge	r1, [r4, #0]
d0082068:	f021 0104 	bicge.w	r1, r1, #4
d008206c:	6021      	strge	r1, [r4, #0]
d008206e:	b90d      	cbnz	r5, d0082074 <_printf_i+0x118>
d0082070:	2e00      	cmp	r6, #0
d0082072:	d04d      	beq.n	d0082110 <_printf_i+0x1b4>
d0082074:	4616      	mov	r6, r2
d0082076:	fbb5 f1f3 	udiv	r1, r5, r3
d008207a:	fb03 5711 	mls	r7, r3, r1, r5
d008207e:	5dc7      	ldrb	r7, [r0, r7]
d0082080:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0082084:	462f      	mov	r7, r5
d0082086:	42bb      	cmp	r3, r7
d0082088:	460d      	mov	r5, r1
d008208a:	d9f4      	bls.n	d0082076 <_printf_i+0x11a>
d008208c:	2b08      	cmp	r3, #8
d008208e:	d10b      	bne.n	d00820a8 <_printf_i+0x14c>
d0082090:	6823      	ldr	r3, [r4, #0]
d0082092:	07df      	lsls	r7, r3, #31
d0082094:	d508      	bpl.n	d00820a8 <_printf_i+0x14c>
d0082096:	6923      	ldr	r3, [r4, #16]
d0082098:	6861      	ldr	r1, [r4, #4]
d008209a:	4299      	cmp	r1, r3
d008209c:	bfde      	ittt	le
d008209e:	2330      	movle	r3, #48	; 0x30
d00820a0:	f806 3c01 	strble.w	r3, [r6, #-1]
d00820a4:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d00820a8:	1b92      	subs	r2, r2, r6
d00820aa:	6122      	str	r2, [r4, #16]
d00820ac:	f8cd a000 	str.w	sl, [sp]
d00820b0:	464b      	mov	r3, r9
d00820b2:	aa03      	add	r2, sp, #12
d00820b4:	4621      	mov	r1, r4
d00820b6:	4640      	mov	r0, r8
d00820b8:	f7ff fee2 	bl	d0081e80 <_printf_common>
d00820bc:	3001      	adds	r0, #1
d00820be:	d14c      	bne.n	d008215a <_printf_i+0x1fe>
d00820c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00820c4:	b004      	add	sp, #16
d00820c6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00820ca:	4835      	ldr	r0, [pc, #212]	; (d00821a0 <_printf_i+0x244>)
d00820cc:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d00820d0:	6823      	ldr	r3, [r4, #0]
d00820d2:	680e      	ldr	r6, [r1, #0]
d00820d4:	061f      	lsls	r7, r3, #24
d00820d6:	f856 5b04 	ldr.w	r5, [r6], #4
d00820da:	600e      	str	r6, [r1, #0]
d00820dc:	d514      	bpl.n	d0082108 <_printf_i+0x1ac>
d00820de:	07d9      	lsls	r1, r3, #31
d00820e0:	bf44      	itt	mi
d00820e2:	f043 0320 	orrmi.w	r3, r3, #32
d00820e6:	6023      	strmi	r3, [r4, #0]
d00820e8:	b91d      	cbnz	r5, d00820f2 <_printf_i+0x196>
d00820ea:	6823      	ldr	r3, [r4, #0]
d00820ec:	f023 0320 	bic.w	r3, r3, #32
d00820f0:	6023      	str	r3, [r4, #0]
d00820f2:	2310      	movs	r3, #16
d00820f4:	e7b0      	b.n	d0082058 <_printf_i+0xfc>
d00820f6:	6823      	ldr	r3, [r4, #0]
d00820f8:	f043 0320 	orr.w	r3, r3, #32
d00820fc:	6023      	str	r3, [r4, #0]
d00820fe:	2378      	movs	r3, #120	; 0x78
d0082100:	4828      	ldr	r0, [pc, #160]	; (d00821a4 <_printf_i+0x248>)
d0082102:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0082106:	e7e3      	b.n	d00820d0 <_printf_i+0x174>
d0082108:	065e      	lsls	r6, r3, #25
d008210a:	bf48      	it	mi
d008210c:	b2ad      	uxthmi	r5, r5
d008210e:	e7e6      	b.n	d00820de <_printf_i+0x182>
d0082110:	4616      	mov	r6, r2
d0082112:	e7bb      	b.n	d008208c <_printf_i+0x130>
d0082114:	680b      	ldr	r3, [r1, #0]
d0082116:	6826      	ldr	r6, [r4, #0]
d0082118:	6960      	ldr	r0, [r4, #20]
d008211a:	1d1d      	adds	r5, r3, #4
d008211c:	600d      	str	r5, [r1, #0]
d008211e:	0635      	lsls	r5, r6, #24
d0082120:	681b      	ldr	r3, [r3, #0]
d0082122:	d501      	bpl.n	d0082128 <_printf_i+0x1cc>
d0082124:	6018      	str	r0, [r3, #0]
d0082126:	e002      	b.n	d008212e <_printf_i+0x1d2>
d0082128:	0671      	lsls	r1, r6, #25
d008212a:	d5fb      	bpl.n	d0082124 <_printf_i+0x1c8>
d008212c:	8018      	strh	r0, [r3, #0]
d008212e:	2300      	movs	r3, #0
d0082130:	6123      	str	r3, [r4, #16]
d0082132:	4616      	mov	r6, r2
d0082134:	e7ba      	b.n	d00820ac <_printf_i+0x150>
d0082136:	680b      	ldr	r3, [r1, #0]
d0082138:	1d1a      	adds	r2, r3, #4
d008213a:	600a      	str	r2, [r1, #0]
d008213c:	681e      	ldr	r6, [r3, #0]
d008213e:	6862      	ldr	r2, [r4, #4]
d0082140:	2100      	movs	r1, #0
d0082142:	4630      	mov	r0, r6
d0082144:	f000 f8ac 	bl	d00822a0 <memchr>
d0082148:	b108      	cbz	r0, d008214e <_printf_i+0x1f2>
d008214a:	1b80      	subs	r0, r0, r6
d008214c:	6060      	str	r0, [r4, #4]
d008214e:	6863      	ldr	r3, [r4, #4]
d0082150:	6123      	str	r3, [r4, #16]
d0082152:	2300      	movs	r3, #0
d0082154:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0082158:	e7a8      	b.n	d00820ac <_printf_i+0x150>
d008215a:	6923      	ldr	r3, [r4, #16]
d008215c:	4632      	mov	r2, r6
d008215e:	4649      	mov	r1, r9
d0082160:	4640      	mov	r0, r8
d0082162:	47d0      	blx	sl
d0082164:	3001      	adds	r0, #1
d0082166:	d0ab      	beq.n	d00820c0 <_printf_i+0x164>
d0082168:	6823      	ldr	r3, [r4, #0]
d008216a:	079b      	lsls	r3, r3, #30
d008216c:	d413      	bmi.n	d0082196 <_printf_i+0x23a>
d008216e:	68e0      	ldr	r0, [r4, #12]
d0082170:	9b03      	ldr	r3, [sp, #12]
d0082172:	4298      	cmp	r0, r3
d0082174:	bfb8      	it	lt
d0082176:	4618      	movlt	r0, r3
d0082178:	e7a4      	b.n	d00820c4 <_printf_i+0x168>
d008217a:	2301      	movs	r3, #1
d008217c:	4632      	mov	r2, r6
d008217e:	4649      	mov	r1, r9
d0082180:	4640      	mov	r0, r8
d0082182:	47d0      	blx	sl
d0082184:	3001      	adds	r0, #1
d0082186:	d09b      	beq.n	d00820c0 <_printf_i+0x164>
d0082188:	3501      	adds	r5, #1
d008218a:	68e3      	ldr	r3, [r4, #12]
d008218c:	9903      	ldr	r1, [sp, #12]
d008218e:	1a5b      	subs	r3, r3, r1
d0082190:	42ab      	cmp	r3, r5
d0082192:	dcf2      	bgt.n	d008217a <_printf_i+0x21e>
d0082194:	e7eb      	b.n	d008216e <_printf_i+0x212>
d0082196:	2500      	movs	r5, #0
d0082198:	f104 0619 	add.w	r6, r4, #25
d008219c:	e7f5      	b.n	d008218a <_printf_i+0x22e>
d008219e:	bf00      	nop
d00821a0:	d00826f5 	.word	0xd00826f5
d00821a4:	d0082706 	.word	0xd0082706

d00821a8 <__sread>:
d00821a8:	b510      	push	{r4, lr}
d00821aa:	460c      	mov	r4, r1
d00821ac:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00821b0:	f000 f914 	bl	d00823dc <_read_r>
d00821b4:	2800      	cmp	r0, #0
d00821b6:	bfab      	itete	ge
d00821b8:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d00821ba:	89a3      	ldrhlt	r3, [r4, #12]
d00821bc:	181b      	addge	r3, r3, r0
d00821be:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d00821c2:	bfac      	ite	ge
d00821c4:	6563      	strge	r3, [r4, #84]	; 0x54
d00821c6:	81a3      	strhlt	r3, [r4, #12]
d00821c8:	bd10      	pop	{r4, pc}

d00821ca <__swrite>:
d00821ca:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00821ce:	461f      	mov	r7, r3
d00821d0:	898b      	ldrh	r3, [r1, #12]
d00821d2:	05db      	lsls	r3, r3, #23
d00821d4:	4605      	mov	r5, r0
d00821d6:	460c      	mov	r4, r1
d00821d8:	4616      	mov	r6, r2
d00821da:	d505      	bpl.n	d00821e8 <__swrite+0x1e>
d00821dc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00821e0:	2302      	movs	r3, #2
d00821e2:	2200      	movs	r2, #0
d00821e4:	f000 f846 	bl	d0082274 <_lseek_r>
d00821e8:	89a3      	ldrh	r3, [r4, #12]
d00821ea:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d00821ee:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d00821f2:	81a3      	strh	r3, [r4, #12]
d00821f4:	4632      	mov	r2, r6
d00821f6:	463b      	mov	r3, r7
d00821f8:	4628      	mov	r0, r5
d00821fa:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d00821fe:	f7fd bf37 	b.w	d0080070 <_write_r>

d0082202 <__sseek>:
d0082202:	b510      	push	{r4, lr}
d0082204:	460c      	mov	r4, r1
d0082206:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d008220a:	f000 f833 	bl	d0082274 <_lseek_r>
d008220e:	1c43      	adds	r3, r0, #1
d0082210:	89a3      	ldrh	r3, [r4, #12]
d0082212:	bf15      	itete	ne
d0082214:	6560      	strne	r0, [r4, #84]	; 0x54
d0082216:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d008221a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d008221e:	81a3      	strheq	r3, [r4, #12]
d0082220:	bf18      	it	ne
d0082222:	81a3      	strhne	r3, [r4, #12]
d0082224:	bd10      	pop	{r4, pc}

d0082226 <__sclose>:
d0082226:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d008222a:	f000 b801 	b.w	d0082230 <_close_r>
	...

d0082230 <_close_r>:
d0082230:	b538      	push	{r3, r4, r5, lr}
d0082232:	4d06      	ldr	r5, [pc, #24]	; (d008224c <_close_r+0x1c>)
d0082234:	2300      	movs	r3, #0
d0082236:	4604      	mov	r4, r0
d0082238:	4608      	mov	r0, r1
d008223a:	602b      	str	r3, [r5, #0]
d008223c:	f7fd ff52 	bl	d00800e4 <_close>
d0082240:	1c43      	adds	r3, r0, #1
d0082242:	d102      	bne.n	d008224a <_close_r+0x1a>
d0082244:	682b      	ldr	r3, [r5, #0]
d0082246:	b103      	cbz	r3, d008224a <_close_r+0x1a>
d0082248:	6023      	str	r3, [r4, #0]
d008224a:	bd38      	pop	{r3, r4, r5, pc}
d008224c:	d00923d0 	.word	0xd00923d0

d0082250 <_fstat_r>:
d0082250:	b538      	push	{r3, r4, r5, lr}
d0082252:	4d07      	ldr	r5, [pc, #28]	; (d0082270 <_fstat_r+0x20>)
d0082254:	2300      	movs	r3, #0
d0082256:	4604      	mov	r4, r0
d0082258:	4608      	mov	r0, r1
d008225a:	4611      	mov	r1, r2
d008225c:	602b      	str	r3, [r5, #0]
d008225e:	f7fd ff45 	bl	d00800ec <_fstat>
d0082262:	1c43      	adds	r3, r0, #1
d0082264:	d102      	bne.n	d008226c <_fstat_r+0x1c>
d0082266:	682b      	ldr	r3, [r5, #0]
d0082268:	b103      	cbz	r3, d008226c <_fstat_r+0x1c>
d008226a:	6023      	str	r3, [r4, #0]
d008226c:	bd38      	pop	{r3, r4, r5, pc}
d008226e:	bf00      	nop
d0082270:	d00923d0 	.word	0xd00923d0

d0082274 <_lseek_r>:
d0082274:	b538      	push	{r3, r4, r5, lr}
d0082276:	4d07      	ldr	r5, [pc, #28]	; (d0082294 <_lseek_r+0x20>)
d0082278:	4604      	mov	r4, r0
d008227a:	4608      	mov	r0, r1
d008227c:	4611      	mov	r1, r2
d008227e:	2200      	movs	r2, #0
d0082280:	602a      	str	r2, [r5, #0]
d0082282:	461a      	mov	r2, r3
d0082284:	f7fd ff38 	bl	d00800f8 <_lseek>
d0082288:	1c43      	adds	r3, r0, #1
d008228a:	d102      	bne.n	d0082292 <_lseek_r+0x1e>
d008228c:	682b      	ldr	r3, [r5, #0]
d008228e:	b103      	cbz	r3, d0082292 <_lseek_r+0x1e>
d0082290:	6023      	str	r3, [r4, #0]
d0082292:	bd38      	pop	{r3, r4, r5, pc}
d0082294:	d00923d0 	.word	0xd00923d0
	...

d00822a0 <memchr>:
d00822a0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00822a4:	2a10      	cmp	r2, #16
d00822a6:	db2b      	blt.n	d0082300 <memchr+0x60>
d00822a8:	f010 0f07 	tst.w	r0, #7
d00822ac:	d008      	beq.n	d00822c0 <memchr+0x20>
d00822ae:	f810 3b01 	ldrb.w	r3, [r0], #1
d00822b2:	3a01      	subs	r2, #1
d00822b4:	428b      	cmp	r3, r1
d00822b6:	d02d      	beq.n	d0082314 <memchr+0x74>
d00822b8:	f010 0f07 	tst.w	r0, #7
d00822bc:	b342      	cbz	r2, d0082310 <memchr+0x70>
d00822be:	d1f6      	bne.n	d00822ae <memchr+0xe>
d00822c0:	b4f0      	push	{r4, r5, r6, r7}
d00822c2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d00822c6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d00822ca:	f022 0407 	bic.w	r4, r2, #7
d00822ce:	f07f 0700 	mvns.w	r7, #0
d00822d2:	2300      	movs	r3, #0
d00822d4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d00822d8:	3c08      	subs	r4, #8
d00822da:	ea85 0501 	eor.w	r5, r5, r1
d00822de:	ea86 0601 	eor.w	r6, r6, r1
d00822e2:	fa85 f547 	uadd8	r5, r5, r7
d00822e6:	faa3 f587 	sel	r5, r3, r7
d00822ea:	fa86 f647 	uadd8	r6, r6, r7
d00822ee:	faa5 f687 	sel	r6, r5, r7
d00822f2:	b98e      	cbnz	r6, d0082318 <memchr+0x78>
d00822f4:	d1ee      	bne.n	d00822d4 <memchr+0x34>
d00822f6:	bcf0      	pop	{r4, r5, r6, r7}
d00822f8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00822fc:	f002 0207 	and.w	r2, r2, #7
d0082300:	b132      	cbz	r2, d0082310 <memchr+0x70>
d0082302:	f810 3b01 	ldrb.w	r3, [r0], #1
d0082306:	3a01      	subs	r2, #1
d0082308:	ea83 0301 	eor.w	r3, r3, r1
d008230c:	b113      	cbz	r3, d0082314 <memchr+0x74>
d008230e:	d1f8      	bne.n	d0082302 <memchr+0x62>
d0082310:	2000      	movs	r0, #0
d0082312:	4770      	bx	lr
d0082314:	3801      	subs	r0, #1
d0082316:	4770      	bx	lr
d0082318:	2d00      	cmp	r5, #0
d008231a:	bf06      	itte	eq
d008231c:	4635      	moveq	r5, r6
d008231e:	3803      	subeq	r0, #3
d0082320:	3807      	subne	r0, #7
d0082322:	f015 0f01 	tst.w	r5, #1
d0082326:	d107      	bne.n	d0082338 <memchr+0x98>
d0082328:	3001      	adds	r0, #1
d008232a:	f415 7f80 	tst.w	r5, #256	; 0x100
d008232e:	bf02      	ittt	eq
d0082330:	3001      	addeq	r0, #1
d0082332:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0082336:	3001      	addeq	r0, #1
d0082338:	bcf0      	pop	{r4, r5, r6, r7}
d008233a:	3801      	subs	r0, #1
d008233c:	4770      	bx	lr
d008233e:	bf00      	nop

d0082340 <memcpy>:
d0082340:	440a      	add	r2, r1
d0082342:	4291      	cmp	r1, r2
d0082344:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0082348:	d100      	bne.n	d008234c <memcpy+0xc>
d008234a:	4770      	bx	lr
d008234c:	b510      	push	{r4, lr}
d008234e:	f811 4b01 	ldrb.w	r4, [r1], #1
d0082352:	f803 4f01 	strb.w	r4, [r3, #1]!
d0082356:	4291      	cmp	r1, r2
d0082358:	d1f9      	bne.n	d008234e <memcpy+0xe>
d008235a:	bd10      	pop	{r4, pc}

d008235c <memmove>:
d008235c:	4288      	cmp	r0, r1
d008235e:	b510      	push	{r4, lr}
d0082360:	eb01 0402 	add.w	r4, r1, r2
d0082364:	d902      	bls.n	d008236c <memmove+0x10>
d0082366:	4284      	cmp	r4, r0
d0082368:	4623      	mov	r3, r4
d008236a:	d807      	bhi.n	d008237c <memmove+0x20>
d008236c:	1e43      	subs	r3, r0, #1
d008236e:	42a1      	cmp	r1, r4
d0082370:	d008      	beq.n	d0082384 <memmove+0x28>
d0082372:	f811 2b01 	ldrb.w	r2, [r1], #1
d0082376:	f803 2f01 	strb.w	r2, [r3, #1]!
d008237a:	e7f8      	b.n	d008236e <memmove+0x12>
d008237c:	4402      	add	r2, r0
d008237e:	4601      	mov	r1, r0
d0082380:	428a      	cmp	r2, r1
d0082382:	d100      	bne.n	d0082386 <memmove+0x2a>
d0082384:	bd10      	pop	{r4, pc}
d0082386:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d008238a:	f802 4d01 	strb.w	r4, [r2, #-1]!
d008238e:	e7f7      	b.n	d0082380 <memmove+0x24>

d0082390 <_realloc_r>:
d0082390:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0082392:	4607      	mov	r7, r0
d0082394:	4614      	mov	r4, r2
d0082396:	460e      	mov	r6, r1
d0082398:	b921      	cbnz	r1, d00823a4 <_realloc_r+0x14>
d008239a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d008239e:	4611      	mov	r1, r2
d00823a0:	f7ff b8c4 	b.w	d008152c <_malloc_r>
d00823a4:	b922      	cbnz	r2, d00823b0 <_realloc_r+0x20>
d00823a6:	f7ff f871 	bl	d008148c <_free_r>
d00823aa:	4625      	mov	r5, r4
d00823ac:	4628      	mov	r0, r5
d00823ae:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00823b0:	f000 f826 	bl	d0082400 <_malloc_usable_size_r>
d00823b4:	42a0      	cmp	r0, r4
d00823b6:	d20f      	bcs.n	d00823d8 <_realloc_r+0x48>
d00823b8:	4621      	mov	r1, r4
d00823ba:	4638      	mov	r0, r7
d00823bc:	f7ff f8b6 	bl	d008152c <_malloc_r>
d00823c0:	4605      	mov	r5, r0
d00823c2:	2800      	cmp	r0, #0
d00823c4:	d0f2      	beq.n	d00823ac <_realloc_r+0x1c>
d00823c6:	4631      	mov	r1, r6
d00823c8:	4622      	mov	r2, r4
d00823ca:	f7ff ffb9 	bl	d0082340 <memcpy>
d00823ce:	4631      	mov	r1, r6
d00823d0:	4638      	mov	r0, r7
d00823d2:	f7ff f85b 	bl	d008148c <_free_r>
d00823d6:	e7e9      	b.n	d00823ac <_realloc_r+0x1c>
d00823d8:	4635      	mov	r5, r6
d00823da:	e7e7      	b.n	d00823ac <_realloc_r+0x1c>

d00823dc <_read_r>:
d00823dc:	b538      	push	{r3, r4, r5, lr}
d00823de:	4d07      	ldr	r5, [pc, #28]	; (d00823fc <_read_r+0x20>)
d00823e0:	4604      	mov	r4, r0
d00823e2:	4608      	mov	r0, r1
d00823e4:	4611      	mov	r1, r2
d00823e6:	2200      	movs	r2, #0
d00823e8:	602a      	str	r2, [r5, #0]
d00823ea:	461a      	mov	r2, r3
d00823ec:	f7fd fe70 	bl	d00800d0 <_read>
d00823f0:	1c43      	adds	r3, r0, #1
d00823f2:	d102      	bne.n	d00823fa <_read_r+0x1e>
d00823f4:	682b      	ldr	r3, [r5, #0]
d00823f6:	b103      	cbz	r3, d00823fa <_read_r+0x1e>
d00823f8:	6023      	str	r3, [r4, #0]
d00823fa:	bd38      	pop	{r3, r4, r5, pc}
d00823fc:	d00923d0 	.word	0xd00923d0

d0082400 <_malloc_usable_size_r>:
d0082400:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0082404:	1f18      	subs	r0, r3, #4
d0082406:	2b00      	cmp	r3, #0
d0082408:	bfbc      	itt	lt
d008240a:	580b      	ldrlt	r3, [r1, r0]
d008240c:	18c0      	addlt	r0, r0, r3
d008240e:	4770      	bx	lr
d0082410:	42444953 	.word	0x42444953
d0082414:	4320584f 	.word	0x4320584f
d0082418:	44205452 	.word	0x44205452
d008241c:	004f4d45 	.word	0x004f4d45
d0082420:	49424752 	.word	0x49424752
d0082424:	30323320 	.word	0x30323320
d0082428:	30303278 	.word	0x30303278
d008242c:	48303520 	.word	0x48303520
d0082430:	0000005a 	.word	0x0000005a
d0082434:	20545243 	.word	0x20545243
d0082438:	20495041 	.word	0x20495041
d008243c:	76616e75 	.word	0x76616e75
d0082440:	616c6961 	.word	0x616c6961
d0082444:	0a656c62 	.word	0x0a656c62
d0082448:	00000000 	.word	0x00000000
d008244c:	4d415246 	.word	0x4d415246
d0082450:	6c252045 	.word	0x6c252045
d0082454:	48202075 	.word	0x48202075
d0082458:	20444c4f 	.word	0x20444c4f
d008245c:	45524946 	.word	0x45524946
d0082460:	204b4f2b 	.word	0x204b4f2b
d0082464:	45204f54 	.word	0x45204f54
d0082468:	00544958 	.word	0x00544958

d008246c <bars>:
d008246c:	03020100 07060504 0b0a0908 0f0e0d0c     ................

d008247c <font_8x8_32_90>:
	...
d0082484:	5f000000 0000005f 00030300 00000303     ...__...........
d0082494:	147f7f14 00147f7f 6b2e2400 00123a6b     .........$.kk:..
d00824a4:	18366a4c 0032566c 594f7e30 40683a77     Lj6.lV2.0~OYw:h@
d00824b4:	07040000 00000003 3e1c0000 00004163     ...........>cA..
d00824c4:	63410000 00001c3e 1c3e2a08 082a3e1c     ..Ac>....*>..>*.
d00824d4:	3e080800 0008083e e0800000 00000060     ...>>.......`...
d00824e4:	08080800 00080808 00000000 00006060     ............``..
d00824f4:	18306040 0103060c 597f3e00 003e7f4d     @`0......>.YM.>.
d0082504:	7f060400 0000007f 71634200 00464f59     .........BcqYOF.
d0082514:	49632200 00367f49 13161c18 00107f7f     ."cII.6.........
d0082524:	45672700 00397d45 4b7e3c00 00307949     .'gEE}9..<~KIy0.
d0082534:	71010100 00070f79 497f3600 00367f49     ...qy....6.II.6.
d0082544:	494f0600 001e3f69 66000000 00000066     ..OIi?.....ff...
d0082554:	e6800000 00000066 14080800 00222214     ....f........"".
d0082564:	14141400 00141414 14222200 00080814     ........."".....
d0082574:	51030200 00060f59 5d417f3e 001e1f55     ...QY...>.A]U...
d0082584:	097f7e00 007e7f09 497f7f00 00367f49     .~....~....II.6.
d0082594:	633e1c00 00414141 417f7f00 001c3e63     ..>cAAA....Ac>..
d00825a4:	497f7f00 00414149 097f7f00 00010109     ...IIAA.........
d00825b4:	417f3e00 007a7b49 087f7f00 007f7f08     .>.AI{z.........
d00825c4:	7f410000 0000417f 40602000 003f7f40     ..A..A... `@@.?.
d00825d4:	1c087f7f 00416336 407f7f00 00404040     ....6cA....@@@@.
d00825e4:	0c067f7f 007f7f06 0c067f7f 007f7f18     ................
d00825f4:	417f3e00 003e7f41 097f7f00 00060f09     .>.AA.>.........
d0082604:	61417f3e 00407e7f 097f7f00 00667f19     >.Aa.~@.......f.
d0082614:	4d6f2600 00327b59 7f010100 0001017f     .&oMY{2.........
d0082624:	407f3f00 003f7f40 703f0f00 000f3f70     .?.@@.?...?pp?..
d0082634:	18307f7f 007f7f30 1c366341 4163361c     ..0.0...Ac6..6cA
d0082644:	7c060301 0103067c 4d597161 00414347     ...||...aqYMGCA.

d0082654 <lcd_msg_bottom>:
d0082654:	73657250 49462073 2b204552 204b4f20     Press FIRE + OK 
d0082664:	65206f74 00746978                       to exit.

d008266c <lcd_msg_top>:
d008266c:	20545243 6f6d6564 6e757220 676e696e     CRT demo running
d008267c:	00000000                                ....

d0082680 <_global_impure_ptr>:
d0082680:	d0082728                                ('..

d0082684 <__sf_fake_stderr>:
	...

d00826a4 <__sf_fake_stdin>:
	...

d00826c4 <__sf_fake_stdout>:
	...
d00826e4:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d00826f4:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d0082704:	31300046 35343332 39383736 64636261     F.0123456789abcd
d0082714:	                                         ef.

Disassembly of section .init:

d0082718 <_init>:
d0082718:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008271a:	bf00      	nop

Disassembly of section .fini:

d008271c <_fini>:
d008271c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008271e:	bf00      	nop
