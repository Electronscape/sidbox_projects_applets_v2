
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
d008001e:	f001 f94d 	bl	d00812bc <setbuf>
d0080022:	6833      	ldr	r3, [r6, #0]
d0080024:	2100      	movs	r1, #0
d0080026:	68d8      	ldr	r0, [r3, #12]
d0080028:	f001 f948 	bl	d00812bc <setbuf>
d008002c:	4629      	mov	r1, r5
d008002e:	4620      	mov	r0, r4
d0080030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0080034:	f000 b976 	b.w	d0080324 <main>
d0080038:	d008222c 	.word	0xd008222c

d008003c <gfx_createBitmap>:
d008003c:	b510      	push	{r4, lr}
d008003e:	4604      	mov	r4, r0
d0080040:	fb01 f002 	mul.w	r0, r1, r2
d0080044:	b292      	uxth	r2, r2
d0080046:	80a1      	strh	r1, [r4, #4]
d0080048:	60e0      	str	r0, [r4, #12]
d008004a:	80e2      	strh	r2, [r4, #6]
d008004c:	8122      	strh	r2, [r4, #8]
d008004e:	f001 f87b 	bl	d0081148 <malloc>
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
d0080064:	d0093ed8 	.word	0xd0093ed8
d0080068:	d0600000 	.word	0xd0600000
d008006c:	d0091ec0 	.word	0xd0091ec0

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
d00800b8:	f001 f840 	bl	d008113c <__errno>
d00800bc:	2209      	movs	r2, #9
d00800be:	4603      	mov	r3, r0
d00800c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800c4:	601a      	str	r2, [r3, #0]
d00800c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00800c8:	d00822a4 	.word	0xd00822a4
d00800cc:	2001f000 	.word	0x2001f000

d00800d0 <_read>:
d00800d0:	b508      	push	{r3, lr}
d00800d2:	f001 f833 	bl	d008113c <__errno>
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
d008011e:	f001 f80d 	bl	d008113c <__errno>
d0080122:	220c      	movs	r2, #12
d0080124:	4603      	mov	r3, r0
d0080126:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008012a:	601a      	str	r2, [r3, #0]
d008012c:	bd10      	pop	{r4, pc}
d008012e:	bf00      	nop
d0080130:	d00822a0 	.word	0xd00822a0
d0080134:	d0093ed8 	.word	0xd0093ed8
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
d00802b0:	d00822c0 	.word	0xd00822c0

d00802b4 <draw_lcd_centered>:
d00802b4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00802b8:	b084      	sub	sp, #16
d00802ba:	4d19      	ldr	r5, [pc, #100]	; (d0080320 <draw_lcd_centered+0x6c>)
d00802bc:	460f      	mov	r7, r1
d00802be:	4690      	mov	r8, r2
d00802c0:	9003      	str	r0, [sp, #12]
d00802c2:	4608      	mov	r0, r1
d00802c4:	f001 f8fc 	bl	d00814c0 <strlen>
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

d0080324 <main>:
d0080324:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080328:	4dae      	ldr	r5, [pc, #696]	; (d00805e4 <main+0x2c0>)
d008032a:	f44f 2000 	mov.w	r0, #524288	; 0x80000
d008032e:	2400      	movs	r4, #0
d0080330:	782b      	ldrb	r3, [r5, #0]
d0080332:	462f      	mov	r7, r5
d0080334:	786a      	ldrb	r2, [r5, #1]
d0080336:	78a9      	ldrb	r1, [r5, #2]
d0080338:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008033c:	78ea      	ldrb	r2, [r5, #3]
d008033e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080342:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080346:	ed2d 8b02 	vpush	{d8}
d008034a:	681b      	ldr	r3, [r3, #0]
d008034c:	b08f      	sub	sp, #60	; 0x3c
d008034e:	4798      	blx	r3
d0080350:	f7ff fe82 	bl	d0080058 <initMalloc>
d0080354:	7d2b      	ldrb	r3, [r5, #20]
d0080356:	7d6a      	ldrb	r2, [r5, #21]
d0080358:	f44f 7000 	mov.w	r0, #512	; 0x200
d008035c:	7da9      	ldrb	r1, [r5, #22]
d008035e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080362:	7dea      	ldrb	r2, [r5, #23]
d0080364:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080368:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008036c:	681b      	ldr	r3, [r3, #0]
d008036e:	681b      	ldr	r3, [r3, #0]
d0080370:	4798      	blx	r3
d0080372:	7d2a      	ldrb	r2, [r5, #20]
d0080374:	7d6b      	ldrb	r3, [r5, #21]
d0080376:	2501      	movs	r5, #1
d0080378:	7dbe      	ldrb	r6, [r7, #22]
d008037a:	2190      	movs	r1, #144	; 0x90
d008037c:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d0080380:	7df8      	ldrb	r0, [r7, #23]
d0080382:	7b3b      	ldrb	r3, [r7, #12]
d0080384:	ea42 4206 	orr.w	r2, r2, r6, lsl #16
d0080388:	7b7e      	ldrb	r6, [r7, #13]
d008038a:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d008038e:	7bb8      	ldrb	r0, [r7, #14]
d0080390:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d0080394:	7bfe      	ldrb	r6, [r7, #15]
d0080396:	6812      	ldr	r2, [r2, #0]
d0080398:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d008039c:	20dc      	movs	r0, #220	; 0xdc
d008039e:	6852      	ldr	r2, [r2, #4]
d00803a0:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d00803a4:	7015      	strb	r5, [r2, #0]
d00803a6:	681b      	ldr	r3, [r3, #0]
d00803a8:	691b      	ldr	r3, [r3, #16]
d00803aa:	4798      	blx	r3
d00803ac:	7b3d      	ldrb	r5, [r7, #12]
d00803ae:	7b79      	ldrb	r1, [r7, #13]
d00803b0:	4623      	mov	r3, r4
d00803b2:	7bb8      	ldrb	r0, [r7, #14]
d00803b4:	4622      	mov	r2, r4
d00803b6:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d00803ba:	7bfe      	ldrb	r6, [r7, #15]
d00803bc:	f44f 71a0 	mov.w	r1, #320	; 0x140
d00803c0:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d00803c4:	f44f 70f0 	mov.w	r0, #480	; 0x1e0
d00803c8:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d00803cc:	682d      	ldr	r5, [r5, #0]
d00803ce:	9400      	str	r4, [sp, #0]
d00803d0:	696d      	ldr	r5, [r5, #20]
d00803d2:	47a8      	blx	r5
d00803d4:	f44f 72a0 	mov.w	r2, #320	; 0x140
d00803d8:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d00803dc:	4882      	ldr	r0, [pc, #520]	; (d00805e8 <main+0x2c4>)
d00803de:	f7ff fe2d 	bl	d008003c <gfx_createBitmap>
d00803e2:	7b3b      	ldrb	r3, [r7, #12]
d00803e4:	7b7a      	ldrb	r2, [r7, #13]
d00803e6:	7bb9      	ldrb	r1, [r7, #14]
d00803e8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00803ec:	7bfa      	ldrb	r2, [r7, #15]
d00803ee:	487e      	ldr	r0, [pc, #504]	; (d00805e8 <main+0x2c4>)
d00803f0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00803f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00803f8:	681b      	ldr	r3, [r3, #0]
d00803fa:	69db      	ldr	r3, [r3, #28]
d00803fc:	4798      	blx	r3
d00803fe:	7b3b      	ldrb	r3, [r7, #12]
d0080400:	7b7a      	ldrb	r2, [r7, #13]
d0080402:	7bb9      	ldrb	r1, [r7, #14]
d0080404:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080408:	7bfa      	ldrb	r2, [r7, #15]
d008040a:	4877      	ldr	r0, [pc, #476]	; (d00805e8 <main+0x2c4>)
d008040c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080410:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080414:	681b      	ldr	r3, [r3, #0]
d0080416:	699b      	ldr	r3, [r3, #24]
d0080418:	4798      	blx	r3
d008041a:	7b3b      	ldrb	r3, [r7, #12]
d008041c:	7b7a      	ldrb	r2, [r7, #13]
d008041e:	7bb9      	ldrb	r1, [r7, #14]
d0080420:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080424:	7bfa      	ldrb	r2, [r7, #15]
d0080426:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008042a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008042e:	685b      	ldr	r3, [r3, #4]
d0080430:	681b      	ldr	r3, [r3, #0]
d0080432:	4798      	blx	r3
d0080434:	7b3b      	ldrb	r3, [r7, #12]
d0080436:	7b7a      	ldrb	r2, [r7, #13]
d0080438:	2010      	movs	r0, #16
d008043a:	7bb9      	ldrb	r1, [r7, #14]
d008043c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080440:	7bfa      	ldrb	r2, [r7, #15]
d0080442:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080446:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008044a:	685b      	ldr	r3, [r3, #4]
d008044c:	68db      	ldr	r3, [r3, #12]
d008044e:	4798      	blx	r3
d0080450:	7b3d      	ldrb	r5, [r7, #12]
d0080452:	7b7b      	ldrb	r3, [r7, #13]
d0080454:	4621      	mov	r1, r4
d0080456:	7bba      	ldrb	r2, [r7, #14]
d0080458:	4620      	mov	r0, r4
d008045a:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d008045e:	7bfe      	ldrb	r6, [r7, #15]
d0080460:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0080464:	ea45 4502 	orr.w	r5, r5, r2, lsl #16
d0080468:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d008046c:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d0080470:	686d      	ldr	r5, [r5, #4]
d0080472:	686d      	ldr	r5, [r5, #4]
d0080474:	47a8      	blx	r5
d0080476:	7b3b      	ldrb	r3, [r7, #12]
d0080478:	7b7a      	ldrb	r2, [r7, #13]
d008047a:	2003      	movs	r0, #3
d008047c:	7bb9      	ldrb	r1, [r7, #14]
d008047e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080482:	7bfa      	ldrb	r2, [r7, #15]
d0080484:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080488:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008048c:	685b      	ldr	r3, [r3, #4]
d008048e:	68db      	ldr	r3, [r3, #12]
d0080490:	4798      	blx	r3
d0080492:	7b3d      	ldrb	r5, [r7, #12]
d0080494:	7b7a      	ldrb	r2, [r7, #13]
d0080496:	4620      	mov	r0, r4
d0080498:	7bb9      	ldrb	r1, [r7, #14]
d008049a:	233a      	movs	r3, #58	; 0x3a
d008049c:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d00804a0:	7bfe      	ldrb	r6, [r7, #15]
d00804a2:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00804a6:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d00804aa:	2184      	movs	r1, #132	; 0x84
d00804ac:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d00804b0:	686d      	ldr	r5, [r5, #4]
d00804b2:	686d      	ldr	r5, [r5, #4]
d00804b4:	47a8      	blx	r5
d00804b6:	7b3b      	ldrb	r3, [r7, #12]
d00804b8:	7b7a      	ldrb	r2, [r7, #13]
d00804ba:	200b      	movs	r0, #11
d00804bc:	7bb9      	ldrb	r1, [r7, #14]
d00804be:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00804c2:	7bfa      	ldrb	r2, [r7, #15]
d00804c4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00804c8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00804cc:	685b      	ldr	r3, [r3, #4]
d00804ce:	68db      	ldr	r3, [r3, #12]
d00804d0:	4798      	blx	r3
d00804d2:	7b3d      	ldrb	r5, [r7, #12]
d00804d4:	7b7a      	ldrb	r2, [r7, #13]
d00804d6:	4620      	mov	r0, r4
d00804d8:	7bb9      	ldrb	r1, [r7, #14]
d00804da:	2303      	movs	r3, #3
d00804dc:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d00804e0:	7bfe      	ldrb	r6, [r7, #15]
d00804e2:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00804e6:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d00804ea:	21be      	movs	r1, #190	; 0xbe
d00804ec:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d00804f0:	686d      	ldr	r5, [r5, #4]
d00804f2:	686d      	ldr	r5, [r5, #4]
d00804f4:	47a8      	blx	r5
d00804f6:	7b3b      	ldrb	r3, [r7, #12]
d00804f8:	7b7a      	ldrb	r2, [r7, #13]
d00804fa:	200b      	movs	r0, #11
d00804fc:	7bb9      	ldrb	r1, [r7, #14]
d00804fe:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080502:	7bfa      	ldrb	r2, [r7, #15]
d0080504:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080508:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008050c:	685b      	ldr	r3, [r3, #4]
d008050e:	68db      	ldr	r3, [r3, #12]
d0080510:	4798      	blx	r3
d0080512:	7b3a      	ldrb	r2, [r7, #12]
d0080514:	7b79      	ldrb	r1, [r7, #13]
d0080516:	4620      	mov	r0, r4
d0080518:	7bbe      	ldrb	r6, [r7, #14]
d008051a:	2303      	movs	r3, #3
d008051c:	ea42 2401 	orr.w	r4, r2, r1, lsl #8
d0080520:	7bfd      	ldrb	r5, [r7, #15]
d0080522:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080526:	217f      	movs	r1, #127	; 0x7f
d0080528:	ea44 4406 	orr.w	r4, r4, r6, lsl #16
d008052c:	ea44 6405 	orr.w	r4, r4, r5, lsl #24
d0080530:	6864      	ldr	r4, [r4, #4]
d0080532:	6864      	ldr	r4, [r4, #4]
d0080534:	47a0      	blx	r4
d0080536:	2202      	movs	r2, #2
d0080538:	492c      	ldr	r1, [pc, #176]	; (d00805ec <main+0x2c8>)
d008053a:	208c      	movs	r0, #140	; 0x8c
d008053c:	f7ff feba 	bl	d00802b4 <draw_lcd_centered>
d0080540:	20a4      	movs	r0, #164	; 0xa4
d0080542:	220b      	movs	r2, #11
d0080544:	492a      	ldr	r1, [pc, #168]	; (d00805f0 <main+0x2cc>)
d0080546:	f7ff feb5 	bl	d00802b4 <draw_lcd_centered>
d008054a:	7b3b      	ldrb	r3, [r7, #12]
d008054c:	7b7a      	ldrb	r2, [r7, #13]
d008054e:	7bb9      	ldrb	r1, [r7, #14]
d0080550:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080554:	7bfa      	ldrb	r2, [r7, #15]
d0080556:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008055a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008055e:	681b      	ldr	r3, [r3, #0]
d0080560:	681b      	ldr	r3, [r3, #0]
d0080562:	4798      	blx	r3
d0080564:	7b3b      	ldrb	r3, [r7, #12]
d0080566:	7b7a      	ldrb	r2, [r7, #13]
d0080568:	7bb9      	ldrb	r1, [r7, #14]
d008056a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008056e:	7bfa      	ldrb	r2, [r7, #15]
d0080570:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080574:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080578:	681b      	ldr	r3, [r3, #0]
d008057a:	68db      	ldr	r3, [r3, #12]
d008057c:	4798      	blx	r3
d008057e:	7f3b      	ldrb	r3, [r7, #28]
d0080580:	7f7a      	ldrb	r2, [r7, #29]
d0080582:	7fb9      	ldrb	r1, [r7, #30]
d0080584:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080588:	7ffa      	ldrb	r2, [r7, #31]
d008058a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008058e:	ea53 6302 	orrs.w	r3, r3, r2, lsl #24
d0080592:	f000 85bf 	beq.w	d0081114 <main+0xdf0>
d0080596:	4c13      	ldr	r4, [pc, #76]	; (d00805e4 <main+0x2c0>)
d0080598:	7f21      	ldrb	r1, [r4, #28]
d008059a:	7f63      	ldrb	r3, [r4, #29]
d008059c:	7fa2      	ldrb	r2, [r4, #30]
d008059e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00805a2:	7fe3      	ldrb	r3, [r4, #31]
d00805a4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00805a8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00805ac:	685b      	ldr	r3, [r3, #4]
d00805ae:	4798      	blx	r3
d00805b0:	2800      	cmp	r0, #0
d00805b2:	f000 85af 	beq.w	d0081114 <main+0xdf0>
d00805b6:	7821      	ldrb	r1, [r4, #0]
d00805b8:	7863      	ldrb	r3, [r4, #1]
d00805ba:	78a2      	ldrb	r2, [r4, #2]
d00805bc:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00805c0:	78e3      	ldrb	r3, [r4, #3]
d00805c2:	4f0c      	ldr	r7, [pc, #48]	; (d00805f4 <main+0x2d0>)
d00805c4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00805c8:	4c0b      	ldr	r4, [pc, #44]	; (d00805f8 <main+0x2d4>)
d00805ca:	4e0c      	ldr	r6, [pc, #48]	; (d00805fc <main+0x2d8>)
d00805cc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00805d0:	689b      	ldr	r3, [r3, #8]
d00805d2:	4798      	blx	r3
d00805d4:	4b0a      	ldr	r3, [pc, #40]	; (d0080600 <main+0x2dc>)
d00805d6:	f8df e02c 	ldr.w	lr, [pc, #44]	; d0080604 <main+0x2e0>
d00805da:	f04f 0c9a 	mov.w	ip, #154	; 0x9a
d00805de:	681b      	ldr	r3, [r3, #0]
d00805e0:	4058      	eors	r0, r3
d00805e2:	e011      	b.n	d0080608 <main+0x2e4>
d00805e4:	2001f000 	.word	0x2001f000
d00805e8:	d0091cc0 	.word	0xd0091cc0
d00805ec:	d0082174 	.word	0xd0082174
d00805f0:	d008215c 	.word	0xd008215c
d00805f4:	3531dec1 	.word	0x3531dec1
d00805f8:	d0091ce0 	.word	0xd0091ce0
d00805fc:	aaaaaaab 	.word	0xaaaaaaab
d0080600:	d0082228 	.word	0xd0082228
d0080604:	cccccccd 	.word	0xcccccccd
d0080608:	ea80 3340 	eor.w	r3, r0, r0, lsl #13
d008060c:	220f      	movs	r2, #15
d008060e:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0080612:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0080616:	ea83 3143 	eor.w	r1, r3, r3, lsl #13
d008061a:	fbae 5003 	umull	r5, r0, lr, r3
d008061e:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d0080622:	0b00      	lsrs	r0, r0, #12
d0080624:	ea81 1541 	eor.w	r5, r1, r1, lsl #5
d0080628:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d008062c:	ea85 3845 	eor.w	r8, r5, r5, lsl #13
d0080630:	fba7 9105 	umull	r9, r1, r7, r5
d0080634:	eba3 2380 	sub.w	r3, r3, r0, lsl #10
d0080638:	ea88 4058 	eor.w	r0, r8, r8, lsr #17
d008063c:	0949      	lsrs	r1, r1, #5
d008063e:	8023      	strh	r3, [r4, #0]
d0080640:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
d0080644:	fb0c 5111 	mls	r1, ip, r1, r5
d0080648:	fba6 5300 	umull	r5, r3, r6, r0
d008064c:	3122      	adds	r1, #34	; 0x22
d008064e:	08db      	lsrs	r3, r3, #3
d0080650:	70a1      	strb	r1, [r4, #2]
d0080652:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080656:	eba0 0383 	sub.w	r3, r0, r3, lsl #2
d008065a:	3302      	adds	r3, #2
d008065c:	b2db      	uxtb	r3, r3
d008065e:	2b09      	cmp	r3, #9
d0080660:	70e3      	strb	r3, [r4, #3]
d0080662:	d803      	bhi.n	d008066c <main+0x348>
d0080664:	2b06      	cmp	r3, #6
d0080666:	bf8c      	ite	hi
d0080668:	220d      	movhi	r2, #13
d008066a:	2205      	movls	r2, #5
d008066c:	7122      	strb	r2, [r4, #4]
d008066e:	3406      	adds	r4, #6
d0080670:	4baa      	ldr	r3, [pc, #680]	; (d008091c <main+0x5f8>)
d0080672:	42a3      	cmp	r3, r4
d0080674:	d1c8      	bne.n	d0080608 <main+0x2e4>
d0080676:	2300      	movs	r3, #0
d0080678:	9309      	str	r3, [sp, #36]	; 0x24
d008067a:	4ba9      	ldr	r3, [pc, #676]	; (d0080920 <main+0x5fc>)
d008067c:	6018      	str	r0, [r3, #0]
d008067e:	4ca9      	ldr	r4, [pc, #676]	; (d0080924 <main+0x600>)
d0080680:	7821      	ldrb	r1, [r4, #0]
d0080682:	7863      	ldrb	r3, [r4, #1]
d0080684:	78a2      	ldrb	r2, [r4, #2]
d0080686:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d008068a:	78e3      	ldrb	r3, [r4, #3]
d008068c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080690:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080694:	6a1b      	ldr	r3, [r3, #32]
d0080696:	4798      	blx	r3
d0080698:	f000 0003 	and.w	r0, r0, #3
d008069c:	2803      	cmp	r0, #3
d008069e:	f000 8490 	beq.w	d0080fc2 <main+0xc9e>
d00806a2:	4da0      	ldr	r5, [pc, #640]	; (d0080924 <main+0x600>)
d00806a4:	9a09      	ldr	r2, [sp, #36]	; 0x24
d00806a6:	7f2b      	ldrb	r3, [r5, #28]
d00806a8:	7f69      	ldrb	r1, [r5, #29]
d00806aa:	f3c2 00c3 	ubfx	r0, r2, #3, #4
d00806ae:	7faa      	ldrb	r2, [r5, #30]
d00806b0:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d00806b4:	f8df 9288 	ldr.w	r9, [pc, #648]	; d0080940 <main+0x61c>
d00806b8:	4c9b      	ldr	r4, [pc, #620]	; (d0080928 <main+0x604>)
d00806ba:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00806be:	7fea      	ldrb	r2, [r5, #31]
d00806c0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00806c4:	f819 2000 	ldrb.w	r2, [r9, r0]
d00806c8:	699b      	ldr	r3, [r3, #24]
d00806ca:	ee08 2a10 	vmov	s16, r2
d00806ce:	4798      	blx	r3
d00806d0:	4620      	mov	r0, r4
d00806d2:	22c8      	movs	r2, #200	; 0xc8
d00806d4:	2100      	movs	r1, #0
d00806d6:	34c8      	adds	r4, #200	; 0xc8
d00806d8:	f000 fd3e 	bl	d0081158 <memset>
d00806dc:	4b93      	ldr	r3, [pc, #588]	; (d008092c <main+0x608>)
d00806de:	429c      	cmp	r4, r3
d00806e0:	d1f6      	bne.n	d00806d0 <main+0x3ac>
d00806e2:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00806e4:	2514      	movs	r5, #20
d00806e6:	2600      	movs	r6, #0
d00806e8:	f3c3 1707 	ubfx	r7, r3, #4, #8
d00806ec:	b234      	sxth	r4, r6
d00806ee:	f007 030f 	and.w	r3, r7, #15
d00806f2:	fa0f f885 	sxth.w	r8, r5
d00806f6:	f819 a003 	ldrb.w	sl, [r9, r3]
d00806fa:	4544      	cmp	r4, r8
d00806fc:	da10      	bge.n	d0080720 <main+0x3fc>
d00806fe:	f00a 0a0f 	and.w	sl, sl, #15
d0080702:	eb04 0084 	add.w	r0, r4, r4, lsl #2
d0080706:	3401      	adds	r4, #1
d0080708:	4b87      	ldr	r3, [pc, #540]	; (d0080928 <main+0x604>)
d008070a:	2218      	movs	r2, #24
d008070c:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d0080710:	4651      	mov	r1, sl
d0080712:	b224      	sxth	r4, r4
d0080714:	eb03 00c0 	add.w	r0, r3, r0, lsl #3
d0080718:	f000 fd1e 	bl	d0081158 <memset>
d008071c:	45a0      	cmp	r8, r4
d008071e:	d1f0      	bne.n	d0080702 <main+0x3de>
d0080720:	3514      	adds	r5, #20
d0080722:	3701      	adds	r7, #1
d0080724:	3614      	adds	r6, #20
d0080726:	b2ad      	uxth	r5, r5
d0080728:	b2ff      	uxtb	r7, r7
d008072a:	f5b5 7faa 	cmp.w	r5, #340	; 0x154
d008072e:	b2b6      	uxth	r6, r6
d0080730:	d1dc      	bne.n	d00806ec <main+0x3c8>
d0080732:	4b7f      	ldr	r3, [pc, #508]	; (d0080930 <main+0x60c>)
d0080734:	f640 710f 	movw	r1, #3855	; 0xf0f
d0080738:	f503 427a 	add.w	r2, r3, #64000	; 0xfa00
d008073c:	f823 1bc8 	strh.w	r1, [r3], #200
d0080740:	4293      	cmp	r3, r2
d0080742:	d1fb      	bne.n	d008073c <main+0x418>
d0080744:	2301      	movs	r3, #1
d0080746:	f8df a1e0 	ldr.w	sl, [pc, #480]	; d0080928 <main+0x604>
d008074a:	2000      	movs	r0, #0
d008074c:	f240 1437 	movw	r4, #311	; 0x137
d0080750:	4619      	mov	r1, r3
d0080752:	4652      	mov	r2, sl
d0080754:	f88a 3028 	strb.w	r3, [sl, #40]	; 0x28
d0080758:	f88a 3038 	strb.w	r3, [sl, #56]	; 0x38
d008075c:	f88a 3048 	strb.w	r3, [sl, #72]	; 0x48
d0080760:	f88a 3058 	strb.w	r3, [sl, #88]	; 0x58
d0080764:	f88a 3068 	strb.w	r3, [sl, #104]	; 0x68
d0080768:	f88a 3078 	strb.w	r3, [sl, #120]	; 0x78
d008076c:	f88a 3088 	strb.w	r3, [sl, #136]	; 0x88
d0080770:	f88a 3098 	strb.w	r3, [sl, #152]	; 0x98
d0080774:	f88a 30a8 	strb.w	r3, [sl, #168]	; 0xa8
d0080778:	f88a 30f0 	strb.w	r3, [sl, #240]	; 0xf0
d008077c:	f88a 3100 	strb.w	r3, [sl, #256]	; 0x100
d0080780:	f88a 3110 	strb.w	r3, [sl, #272]	; 0x110
d0080784:	f88a 3120 	strb.w	r3, [sl, #288]	; 0x120
d0080788:	f88a 3130 	strb.w	r3, [sl, #304]	; 0x130
d008078c:	f88a 3140 	strb.w	r3, [sl, #320]	; 0x140
d0080790:	f88a 3150 	strb.w	r3, [sl, #336]	; 0x150
d0080794:	f88a 3160 	strb.w	r3, [sl, #352]	; 0x160
d0080798:	f88a 3170 	strb.w	r3, [sl, #368]	; 0x170
d008079c:	f88a 31b8 	strb.w	r3, [sl, #440]	; 0x1b8
d00807a0:	f88a 31c8 	strb.w	r3, [sl, #456]	; 0x1c8
d00807a4:	f88a 31d8 	strb.w	r3, [sl, #472]	; 0x1d8
d00807a8:	f88a 31e8 	strb.w	r3, [sl, #488]	; 0x1e8
d00807ac:	f88a 31f8 	strb.w	r3, [sl, #504]	; 0x1f8
d00807b0:	f88a 3208 	strb.w	r3, [sl, #520]	; 0x208
d00807b4:	f88a 3218 	strb.w	r3, [sl, #536]	; 0x218
d00807b8:	f88a 3228 	strb.w	r3, [sl, #552]	; 0x228
d00807bc:	f88a 3238 	strb.w	r3, [sl, #568]	; 0x238
d00807c0:	f88a 3280 	strb.w	r3, [sl, #640]	; 0x280
d00807c4:	f88a 3290 	strb.w	r3, [sl, #656]	; 0x290
d00807c8:	f88a 32a0 	strb.w	r3, [sl, #672]	; 0x2a0
d00807cc:	f88a 32b0 	strb.w	r3, [sl, #688]	; 0x2b0
d00807d0:	f88a 32c0 	strb.w	r3, [sl, #704]	; 0x2c0
d00807d4:	f88a 32d0 	strb.w	r3, [sl, #720]	; 0x2d0
d00807d8:	f88a 32e0 	strb.w	r3, [sl, #736]	; 0x2e0
d00807dc:	f88a 32f0 	strb.w	r3, [sl, #752]	; 0x2f0
d00807e0:	f88a 3300 	strb.w	r3, [sl, #768]	; 0x300
d00807e4:	f88a 3348 	strb.w	r3, [sl, #840]	; 0x348
d00807e8:	f88a 3358 	strb.w	r3, [sl, #856]	; 0x358
d00807ec:	f88a 3368 	strb.w	r3, [sl, #872]	; 0x368
d00807f0:	f88a 3378 	strb.w	r3, [sl, #888]	; 0x378
d00807f4:	f88a 3388 	strb.w	r3, [sl, #904]	; 0x388
d00807f8:	f88a 3398 	strb.w	r3, [sl, #920]	; 0x398
d00807fc:	f88a 33a8 	strb.w	r3, [sl, #936]	; 0x3a8
d0080800:	f88a 33b8 	strb.w	r3, [sl, #952]	; 0x3b8
d0080804:	f88a 33c8 	strb.w	r3, [sl, #968]	; 0x3c8
d0080808:	f88a 3410 	strb.w	r3, [sl, #1040]	; 0x410
d008080c:	f88a 3420 	strb.w	r3, [sl, #1056]	; 0x420
d0080810:	f88a 3430 	strb.w	r3, [sl, #1072]	; 0x430
d0080814:	f88a 3440 	strb.w	r3, [sl, #1088]	; 0x440
d0080818:	f88a 3450 	strb.w	r3, [sl, #1104]	; 0x450
d008081c:	f88a 3460 	strb.w	r3, [sl, #1120]	; 0x460
d0080820:	f88a 3470 	strb.w	r3, [sl, #1136]	; 0x470
d0080824:	f88a 3480 	strb.w	r3, [sl, #1152]	; 0x480
d0080828:	f88a 3490 	strb.w	r3, [sl, #1168]	; 0x490
d008082c:	f88a 34d8 	strb.w	r3, [sl, #1240]	; 0x4d8
d0080830:	f88a 34e8 	strb.w	r3, [sl, #1256]	; 0x4e8
d0080834:	f88a 34f8 	strb.w	r3, [sl, #1272]	; 0x4f8
d0080838:	f88a 3508 	strb.w	r3, [sl, #1288]	; 0x508
d008083c:	f88a 3518 	strb.w	r3, [sl, #1304]	; 0x518
d0080840:	f88a 3528 	strb.w	r3, [sl, #1320]	; 0x528
d0080844:	f88a 3538 	strb.w	r3, [sl, #1336]	; 0x538
d0080848:	f88a 3548 	strb.w	r3, [sl, #1352]	; 0x548
d008084c:	f88a 3558 	strb.w	r3, [sl, #1368]	; 0x558
d0080850:	f88a 35a0 	strb.w	r3, [sl, #1440]	; 0x5a0
d0080854:	f88a 35b0 	strb.w	r3, [sl, #1456]	; 0x5b0
d0080858:	f88a 35c0 	strb.w	r3, [sl, #1472]	; 0x5c0
d008085c:	f88a 35d0 	strb.w	r3, [sl, #1488]	; 0x5d0
d0080860:	f88a 35e0 	strb.w	r3, [sl, #1504]	; 0x5e0
d0080864:	f88a 35f0 	strb.w	r3, [sl, #1520]	; 0x5f0
d0080868:	f88a 3600 	strb.w	r3, [sl, #1536]	; 0x600
d008086c:	f88a 3610 	strb.w	r3, [sl, #1552]	; 0x610
d0080870:	f88a 3620 	strb.w	r3, [sl, #1568]	; 0x620
d0080874:	f88a 3668 	strb.w	r3, [sl, #1640]	; 0x668
d0080878:	f88a 3678 	strb.w	r3, [sl, #1656]	; 0x678
d008087c:	f88a 3688 	strb.w	r3, [sl, #1672]	; 0x688
d0080880:	f88a 3698 	strb.w	r3, [sl, #1688]	; 0x698
d0080884:	f88a 36a8 	strb.w	r3, [sl, #1704]	; 0x6a8
d0080888:	f88a 36b8 	strb.w	r3, [sl, #1720]	; 0x6b8
d008088c:	f88a 36c8 	strb.w	r3, [sl, #1736]	; 0x6c8
d0080890:	f88a 36d8 	strb.w	r3, [sl, #1752]	; 0x6d8
d0080894:	f88a 36e8 	strb.w	r3, [sl, #1768]	; 0x6e8
d0080898:	3001      	adds	r0, #1
d008089a:	f882 1730 	strb.w	r1, [r2, #1840]	; 0x730
d008089e:	f882 1740 	strb.w	r1, [r2, #1856]	; 0x740
d00808a2:	32c8      	adds	r2, #200	; 0xc8
d00808a4:	42a0      	cmp	r0, r4
d00808a6:	f882 1688 	strb.w	r1, [r2, #1672]	; 0x688
d00808aa:	f882 1698 	strb.w	r1, [r2, #1688]	; 0x698
d00808ae:	f882 16a8 	strb.w	r1, [r2, #1704]	; 0x6a8
d00808b2:	f882 16b8 	strb.w	r1, [r2, #1720]	; 0x6b8
d00808b6:	f882 16c8 	strb.w	r1, [r2, #1736]	; 0x6c8
d00808ba:	f882 16d8 	strb.w	r1, [r2, #1752]	; 0x6d8
d00808be:	f882 16e8 	strb.w	r1, [r2, #1768]	; 0x6e8
d00808c2:	d1e9      	bne.n	d0080898 <main+0x574>
d00808c4:	4e1b      	ldr	r6, [pc, #108]	; (d0080934 <main+0x610>)
d00808c6:	2300      	movs	r3, #0
d00808c8:	b29c      	uxth	r4, r3
d00808ca:	2101      	movs	r1, #1
d00808cc:	2298      	movs	r2, #152	; 0x98
d00808ce:	4630      	mov	r0, r6
d00808d0:	1865      	adds	r5, r4, r1
d00808d2:	b22d      	sxth	r5, r5
d00808d4:	429d      	cmp	r5, r3
d00808d6:	dd01      	ble.n	d00808dc <main+0x5b8>
d00808d8:	f000 fc3e 	bl	d0081158 <memset>
d00808dc:	3410      	adds	r4, #16
d00808de:	f506 6648 	add.w	r6, r6, #3200	; 0xc80
d00808e2:	b2a2      	uxth	r2, r4
d00808e4:	b223      	sxth	r3, r4
d00808e6:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d00808ea:	d1ed      	bne.n	d00808c8 <main+0x5a4>
d00808ec:	4b0e      	ldr	r3, [pc, #56]	; (d0080928 <main+0x604>)
d00808ee:	2205      	movs	r2, #5
d00808f0:	f883 2068 	strb.w	r2, [r3, #104]	; 0x68
d00808f4:	33c8      	adds	r3, #200	; 0xc8
d00808f6:	490d      	ldr	r1, [pc, #52]	; (d008092c <main+0x608>)
d00808f8:	428b      	cmp	r3, r1
d00808fa:	d1f9      	bne.n	d00808f0 <main+0x5cc>
d00808fc:	2298      	movs	r2, #152	; 0x98
d00808fe:	2105      	movs	r1, #5
d0080900:	480d      	ldr	r0, [pc, #52]	; (d0080938 <main+0x614>)
d0080902:	f04f 089a 	mov.w	r8, #154	; 0x9a
d0080906:	f000 fc27 	bl	d0081158 <memset>
d008090a:	4b05      	ldr	r3, [pc, #20]	; (d0080920 <main+0x5fc>)
d008090c:	4a0b      	ldr	r2, [pc, #44]	; (d008093c <main+0x618>)
d008090e:	f04f 0cc8 	mov.w	ip, #200	; 0xc8
d0080912:	f8d3 b000 	ldr.w	fp, [r3]
d0080916:	f8df e02c 	ldr.w	lr, [pc, #44]	; d0080944 <main+0x620>
d008091a:	e01a      	b.n	d0080952 <main+0x62e>
d008091c:	d0091e90 	.word	0xd0091e90
d0080920:	d0082228 	.word	0xd0082228
d0080924:	2001f000 	.word	0x2001f000
d0080928:	d00822c0 	.word	0xd00822c0
d008092c:	d0091cc0 	.word	0xd0091cc0
d0080930:	d00822d8 	.word	0xd00822d8
d0080934:	d00822e0 	.word	0xd00822e0
d0080938:	d0089fe0 	.word	0xd0089fe0
d008093c:	d0091ce0 	.word	0xd0091ce0
d0080940:	d008214c 	.word	0xd008214c
d0080944:	aaaaaaab 	.word	0xaaaaaaab
d0080948:	8013      	strh	r3, [r2, #0]
d008094a:	3206      	adds	r2, #6
d008094c:	4b9f      	ldr	r3, [pc, #636]	; (d0080bcc <main+0x8a8>)
d008094e:	429a      	cmp	r2, r3
d0080950:	d07b      	beq.n	d0080a4a <main+0x726>
d0080952:	78d5      	ldrb	r5, [r2, #3]
d0080954:	8811      	ldrh	r1, [r2, #0]
d0080956:	2d08      	cmp	r5, #8
d0080958:	7890      	ldrb	r0, [r2, #2]
d008095a:	ea4f 1311 	mov.w	r3, r1, lsr #4
d008095e:	7914      	ldrb	r4, [r2, #4]
d0080960:	bf94      	ite	ls
d0080962:	2602      	movls	r6, #2
d0080964:	2604      	movhi	r6, #4
d0080966:	28c7      	cmp	r0, #199	; 0xc7
d0080968:	eba3 0306 	sub.w	r3, r3, r6
d008096c:	b29b      	uxth	r3, r3
d008096e:	d82c      	bhi.n	d00809ca <main+0x6a6>
d0080970:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0080974:	d205      	bcs.n	d0080982 <main+0x65e>
d0080976:	fb0c a703 	mla	r7, ip, r3, sl
d008097a:	f004 090f 	and.w	r9, r4, #15
d008097e:	f807 9000 	strb.w	r9, [r7, r0]
d0080982:	1c5f      	adds	r7, r3, #1
d0080984:	b2bf      	uxth	r7, r7
d0080986:	f5b7 7fa0 	cmp.w	r7, #320	; 0x140
d008098a:	d205      	bcs.n	d0080998 <main+0x674>
d008098c:	fb0c a707 	mla	r7, ip, r7, sl
d0080990:	f004 090f 	and.w	r9, r4, #15
d0080994:	f807 9000 	strb.w	r9, [r7, r0]
d0080998:	2e02      	cmp	r6, #2
d008099a:	d016      	beq.n	d00809ca <main+0x6a6>
d008099c:	1c9f      	adds	r7, r3, #2
d008099e:	b2bf      	uxth	r7, r7
d00809a0:	f5b7 7fa0 	cmp.w	r7, #320	; 0x140
d00809a4:	d205      	bcs.n	d00809b2 <main+0x68e>
d00809a6:	fb0c a707 	mla	r7, ip, r7, sl
d00809aa:	f004 090f 	and.w	r9, r4, #15
d00809ae:	f807 9000 	strb.w	r9, [r7, r0]
d00809b2:	2e04      	cmp	r6, #4
d00809b4:	d109      	bne.n	d00809ca <main+0x6a6>
d00809b6:	3303      	adds	r3, #3
d00809b8:	b29b      	uxth	r3, r3
d00809ba:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00809be:	d204      	bcs.n	d00809ca <main+0x6a6>
d00809c0:	fb0c a303 	mla	r3, ip, r3, sl
d00809c4:	f004 040f 	and.w	r4, r4, #15
d00809c8:	541c      	strb	r4, [r3, r0]
d00809ca:	1b4b      	subs	r3, r1, r5
d00809cc:	b29b      	uxth	r3, r3
d00809ce:	f5b3 5fa0 	cmp.w	r3, #5120	; 0x1400
d00809d2:	d9b9      	bls.n	d0080948 <main+0x624>
d00809d4:	ea8b 334b 	eor.w	r3, fp, fp, lsl #13
d00809d8:	497d      	ldr	r1, [pc, #500]	; (d0080bd0 <main+0x8ac>)
d00809da:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d00809de:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d00809e2:	ea83 3043 	eor.w	r0, r3, r3, lsl #13
d00809e6:	fba1 4103 	umull	r4, r1, r1, r3
d00809ea:	4c7a      	ldr	r4, [pc, #488]	; (d0080bd4 <main+0x8b0>)
d00809ec:	ea80 4050 	eor.w	r0, r0, r0, lsr #17
d00809f0:	0b09      	lsrs	r1, r1, #12
d00809f2:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
d00809f6:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d00809fa:	ea80 3b40 	eor.w	fp, r0, r0, lsl #13
d00809fe:	fba4 5400 	umull	r5, r4, r4, r0
d0080a02:	eba3 2181 	sub.w	r1, r3, r1, lsl #10
d0080a06:	ea8b 435b 	eor.w	r3, fp, fp, lsr #17
d0080a0a:	0964      	lsrs	r4, r4, #5
d0080a0c:	f501 51a0 	add.w	r1, r1, #5120	; 0x1400
d0080a10:	ea83 1b43 	eor.w	fp, r3, r3, lsl #5
d0080a14:	fb08 0014 	mls	r0, r8, r4, r0
d0080a18:	fbae 430b 	umull	r4, r3, lr, fp
d0080a1c:	8011      	strh	r1, [r2, #0]
d0080a1e:	3022      	adds	r0, #34	; 0x22
d0080a20:	08d9      	lsrs	r1, r3, #3
d0080a22:	7090      	strb	r0, [r2, #2]
d0080a24:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d0080a28:	ebab 0181 	sub.w	r1, fp, r1, lsl #2
d0080a2c:	3102      	adds	r1, #2
d0080a2e:	b2c9      	uxtb	r1, r1
d0080a30:	2909      	cmp	r1, #9
d0080a32:	70d1      	strb	r1, [r2, #3]
d0080a34:	f200 80be 	bhi.w	d0080bb4 <main+0x890>
d0080a38:	2906      	cmp	r1, #6
d0080a3a:	bf8c      	ite	hi
d0080a3c:	230d      	movhi	r3, #13
d0080a3e:	2305      	movls	r3, #5
d0080a40:	7113      	strb	r3, [r2, #4]
d0080a42:	3206      	adds	r2, #6
d0080a44:	4b61      	ldr	r3, [pc, #388]	; (d0080bcc <main+0x8a8>)
d0080a46:	429a      	cmp	r2, r3
d0080a48:	d183      	bne.n	d0080952 <main+0x62e>
d0080a4a:	f8bd 3024 	ldrh.w	r3, [sp, #36]	; 0x24
d0080a4e:	2201      	movs	r2, #1
d0080a50:	f04f 0c00 	mov.w	ip, #0
d0080a54:	f8cd b034 	str.w	fp, [sp, #52]	; 0x34
d0080a58:	0059      	lsls	r1, r3, #1
d0080a5a:	9203      	str	r2, [sp, #12]
d0080a5c:	46e1      	mov	r9, ip
d0080a5e:	2268      	movs	r2, #104	; 0x68
d0080a60:	910c      	str	r1, [sp, #48]	; 0x30
d0080a62:	b289      	uxth	r1, r1
d0080a64:	930b      	str	r3, [sp, #44]	; 0x2c
d0080a66:	4688      	mov	r8, r1
d0080a68:	910a      	str	r1, [sp, #40]	; 0x28
d0080a6a:	495b      	ldr	r1, [pc, #364]	; (d0080bd8 <main+0x8b4>)
d0080a6c:	f8c1 b000 	str.w	fp, [r1]
d0080a70:	46c3      	mov	fp, r8
d0080a72:	4698      	mov	r8, r3
d0080a74:	e00f      	b.n	d0080a96 <main+0x772>
d0080a76:	9803      	ldr	r0, [sp, #12]
d0080a78:	f108 0209 	add.w	r2, r8, #9
d0080a7c:	f10b 0113 	add.w	r1, fp, #19
d0080a80:	f20c 1c3f 	addw	ip, ip, #319	; 0x13f
d0080a84:	3001      	adds	r0, #1
d0080a86:	fa1f f882 	uxth.w	r8, r2
d0080a8a:	46f1      	mov	r9, lr
d0080a8c:	461a      	mov	r2, r3
d0080a8e:	fa1f fb81 	uxth.w	fp, r1
d0080a92:	b283      	uxth	r3, r0
d0080a94:	9303      	str	r3, [sp, #12]
d0080a96:	4b51      	ldr	r3, [pc, #324]	; (d0080bdc <main+0x8b8>)
d0080a98:	f018 0f80 	tst.w	r8, #128	; 0x80
d0080a9c:	ea4f 70ec 	mov.w	r0, ip, asr #31
d0080aa0:	4c4f      	ldr	r4, [pc, #316]	; (d0080be0 <main+0x8bc>)
d0080aa2:	fb83 310c 	smull	r3, r1, r3, ip
d0080aa6:	fa5f f388 	uxtb.w	r3, r8
d0080aaa:	bf14      	ite	ne
d0080aac:	f1c3 03ff 	rsbne	r3, r3, #255	; 0xff
d0080ab0:	b21b      	sxtheq	r3, r3
d0080ab2:	4461      	add	r1, ip
d0080ab4:	f01b 0f80 	tst.w	fp, #128	; 0x80
d0080ab8:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
d0080abc:	ebc0 10a1 	rsb	r0, r0, r1, asr #6
d0080ac0:	ea4f 03c3 	mov.w	r3, r3, lsl #3
d0080ac4:	fa5f f18b 	uxtb.w	r1, fp
d0080ac8:	fba4 5403 	umull	r5, r4, r4, r3
d0080acc:	fa0f fe80 	sxth.w	lr, r0
d0080ad0:	bf14      	ite	ne
d0080ad2:	f1c1 01ff 	rsbne	r1, r1, #255	; 0xff
d0080ad6:	b209      	sxtheq	r1, r1
d0080ad8:	1b1b      	subs	r3, r3, r4
d0080ada:	eb01 01c1 	add.w	r1, r1, r1, lsl #3
d0080ade:	eb04 0353 	add.w	r3, r4, r3, lsr #1
d0080ae2:	4c3f      	ldr	r4, [pc, #252]	; (d0080be0 <main+0x8bc>)
d0080ae4:	0049      	lsls	r1, r1, #1
d0080ae6:	f3c3 138f 	ubfx	r3, r3, #6, #16
d0080aea:	fba4 5401 	umull	r5, r4, r4, r1
d0080aee:	3343      	adds	r3, #67	; 0x43
d0080af0:	1b09      	subs	r1, r1, r4
d0080af2:	eb04 0151 	add.w	r1, r4, r1, lsr #1
d0080af6:	eb03 1391 	add.w	r3, r3, r1, lsr #6
d0080afa:	9903      	ldr	r1, [sp, #12]
d0080afc:	2901      	cmp	r1, #1
d0080afe:	b29d      	uxth	r5, r3
d0080b00:	b21b      	sxth	r3, r3
d0080b02:	d0b8      	beq.n	d0080a76 <main+0x752>
d0080b04:	45ce      	cmp	lr, r9
d0080b06:	f340 8257 	ble.w	d0080fb8 <main+0xc94>
d0080b0a:	eba0 0009 	sub.w	r0, r0, r9
d0080b0e:	2101      	movs	r1, #1
d0080b10:	9107      	str	r1, [sp, #28]
d0080b12:	b281      	uxth	r1, r0
d0080b14:	4293      	cmp	r3, r2
d0080b16:	9104      	str	r1, [sp, #16]
d0080b18:	b201      	sxth	r1, r0
d0080b1a:	9106      	str	r1, [sp, #24]
d0080b1c:	f340 8248 	ble.w	d0080fb0 <main+0xc8c>
d0080b20:	1b55      	subs	r5, r2, r5
d0080b22:	2101      	movs	r1, #1
d0080b24:	9108      	str	r1, [sp, #32]
d0080b26:	b2a9      	uxth	r1, r5
d0080b28:	fa1f f489 	uxth.w	r4, r9
d0080b2c:	4608      	mov	r0, r1
d0080b2e:	9105      	str	r1, [sp, #20]
d0080b30:	9904      	ldr	r1, [sp, #16]
d0080b32:	b22d      	sxth	r5, r5
d0080b34:	4401      	add	r1, r0
d0080b36:	b209      	sxth	r1, r1
d0080b38:	2a00      	cmp	r2, #0
d0080b3a:	db23      	blt.n	d0080b84 <main+0x860>
d0080b3c:	f240 103f 	movw	r0, #319	; 0x13f
d0080b40:	4284      	cmp	r4, r0
d0080b42:	bf94      	ite	ls
d0080b44:	2600      	movls	r6, #0
d0080b46:	2601      	movhi	r6, #1
d0080b48:	2ac7      	cmp	r2, #199	; 0xc7
d0080b4a:	bfc8      	it	gt
d0080b4c:	f046 0601 	orrgt.w	r6, r6, #1
d0080b50:	bb9e      	cbnz	r6, d0080bba <main+0x896>
d0080b52:	20c8      	movs	r0, #200	; 0xc8
d0080b54:	fb19 2700 	smlabb	r7, r9, r0, r2
d0080b58:	f04f 000c 	mov.w	r0, #12
d0080b5c:	f80a 0007 	strb.w	r0, [sl, r7]
d0080b60:	1c60      	adds	r0, r4, #1
d0080b62:	b200      	sxth	r0, r0
d0080b64:	f240 173f 	movw	r7, #319	; 0x13f
d0080b68:	42b8      	cmp	r0, r7
d0080b6a:	dc07      	bgt.n	d0080b7c <main+0x858>
d0080b6c:	b936      	cbnz	r6, d0080b7c <main+0x858>
d0080b6e:	26c8      	movs	r6, #200	; 0xc8
d0080b70:	fb10 2006 	smlabb	r0, r0, r6, r2
d0080b74:	f04f 060c 	mov.w	r6, #12
d0080b78:	f80a 6000 	strb.w	r6, [sl, r0]
d0080b7c:	45ce      	cmp	lr, r9
d0080b7e:	d101      	bne.n	d0080b84 <main+0x860>
d0080b80:	4293      	cmp	r3, r2
d0080b82:	d02f      	beq.n	d0080be4 <main+0x8c0>
d0080b84:	0048      	lsls	r0, r1, #1
d0080b86:	b200      	sxth	r0, r0
d0080b88:	42a8      	cmp	r0, r5
d0080b8a:	db07      	blt.n	d0080b9c <main+0x878>
d0080b8c:	9e05      	ldr	r6, [sp, #20]
d0080b8e:	4431      	add	r1, r6
d0080b90:	9e07      	ldr	r6, [sp, #28]
d0080b92:	4434      	add	r4, r6
d0080b94:	b209      	sxth	r1, r1
d0080b96:	fa0f f984 	sxth.w	r9, r4
d0080b9a:	b2a4      	uxth	r4, r4
d0080b9c:	9e06      	ldr	r6, [sp, #24]
d0080b9e:	42b0      	cmp	r0, r6
d0080ba0:	dcca      	bgt.n	d0080b38 <main+0x814>
d0080ba2:	9804      	ldr	r0, [sp, #16]
d0080ba4:	4401      	add	r1, r0
d0080ba6:	9808      	ldr	r0, [sp, #32]
d0080ba8:	4402      	add	r2, r0
d0080baa:	b209      	sxth	r1, r1
d0080bac:	b212      	sxth	r2, r2
d0080bae:	2a00      	cmp	r2, #0
d0080bb0:	dac4      	bge.n	d0080b3c <main+0x818>
d0080bb2:	e7e7      	b.n	d0080b84 <main+0x860>
d0080bb4:	230f      	movs	r3, #15
d0080bb6:	7113      	strb	r3, [r2, #4]
d0080bb8:	e743      	b.n	d0080a42 <main+0x71e>
d0080bba:	1c60      	adds	r0, r4, #1
d0080bbc:	b200      	sxth	r0, r0
d0080bbe:	2800      	cmp	r0, #0
d0080bc0:	dbdc      	blt.n	d0080b7c <main+0x858>
d0080bc2:	2ac7      	cmp	r2, #199	; 0xc7
d0080bc4:	bfd4      	ite	le
d0080bc6:	2600      	movle	r6, #0
d0080bc8:	2601      	movgt	r6, #1
d0080bca:	e7cb      	b.n	d0080b64 <main+0x840>
d0080bcc:	d0091e90 	.word	0xd0091e90
d0080bd0:	cccccccd 	.word	0xcccccccd
d0080bd4:	3531dec1 	.word	0x3531dec1
d0080bd8:	d0082228 	.word	0xd0082228
d0080bdc:	ac769185 	.word	0xac769185
d0080be0:	02040811 	.word	0x02040811
d0080be4:	9a03      	ldr	r2, [sp, #12]
d0080be6:	2a60      	cmp	r2, #96	; 0x60
d0080be8:	f47f af45 	bne.w	d0080a76 <main+0x752>
d0080bec:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d0080bee:	990b      	ldr	r1, [sp, #44]	; 0x2c
d0080bf0:	f003 02fe 	and.w	r2, r3, #254	; 0xfe
d0080bf4:	061e      	lsls	r6, r3, #24
d0080bf6:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d0080bf8:	bf4c      	ite	mi
d0080bfa:	f1c2 02ff 	rsbmi	r2, r2, #255	; 0xff
d0080bfe:	b212      	sxthpl	r2, r2
d0080c00:	440b      	add	r3, r1
d0080c02:	f8dd b034 	ldr.w	fp, [sp, #52]	; 0x34
d0080c06:	061d      	lsls	r5, r3, #24
d0080c08:	b2d8      	uxtb	r0, r3
d0080c0a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d0080c0c:	eb02 0582 	add.w	r5, r2, r2, lsl #2
d0080c10:	bf4c      	ite	mi
d0080c12:	f1c0 00ff 	rsbmi	r0, r0, #255	; 0xff
d0080c16:	b200      	sxthpl	r0, r0
d0080c18:	3340      	adds	r3, #64	; 0x40
d0080c1a:	eb02 0245 	add.w	r2, r2, r5, lsl #1
d0080c1e:	eb00 1000 	add.w	r0, r0, r0, lsl #4
d0080c22:	061c      	lsls	r4, r3, #24
d0080c24:	f003 01fe 	and.w	r1, r3, #254	; 0xfe
d0080c28:	ea4f 1202 	mov.w	r2, r2, lsl #4
d0080c2c:	bf4c      	ite	mi
d0080c2e:	f1c1 03ff 	rsbmi	r3, r1, #255	; 0xff
d0080c32:	b20b      	sxthpl	r3, r1
d0080c34:	0080      	lsls	r0, r0, #2
d0080c36:	9303      	str	r3, [sp, #12]
d0080c38:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d0080c3a:	eb03 0183 	add.w	r1, r3, r3, lsl #2
d0080c3e:	b2cb      	uxtb	r3, r1
d0080c40:	0609      	lsls	r1, r1, #24
d0080c42:	49c9      	ldr	r1, [pc, #804]	; (d0080f68 <main+0xc44>)
d0080c44:	bf4c      	ite	mi
d0080c46:	f1c3 03ff 	rsbmi	r3, r3, #255	; 0xff
d0080c4a:	b21b      	sxthpl	r3, r3
d0080c4c:	eb03 04c3 	add.w	r4, r3, r3, lsl #3
d0080c50:	eb03 0344 	add.w	r3, r3, r4, lsl #1
d0080c54:	fba1 4602 	umull	r4, r6, r1, r2
d0080c58:	009b      	lsls	r3, r3, #2
d0080c5a:	1b92      	subs	r2, r2, r6
d0080c5c:	fba1 4703 	umull	r4, r7, r1, r3
d0080c60:	eb06 0252 	add.w	r2, r6, r2, lsr #1
d0080c64:	fba1 1500 	umull	r1, r5, r1, r0
d0080c68:	1bdb      	subs	r3, r3, r7
d0080c6a:	f3c2 168f 	ubfx	r6, r2, #6, #16
d0080c6e:	1b40      	subs	r0, r0, r5
d0080c70:	eb07 0353 	add.w	r3, r7, r3, lsr #1
d0080c74:	f106 045c 	add.w	r4, r6, #92	; 0x5c
d0080c78:	eb05 0550 	add.w	r5, r5, r0, lsr #1
d0080c7c:	f3c3 178f 	ubfx	r7, r3, #6, #16
d0080c80:	b2a3      	uxth	r3, r4
d0080c82:	f3c5 128f 	ubfx	r2, r5, #6, #16
d0080c86:	b224      	sxth	r4, r4
d0080c88:	f107 0944 	add.w	r9, r7, #68	; 0x44
d0080c8c:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0080c90:	9204      	str	r2, [sp, #16]
d0080c92:	fa0f f989 	sxth.w	r9, r9
d0080c96:	d223      	bcs.n	d0080ce0 <main+0x9bc>
d0080c98:	f106 0874 	add.w	r8, r6, #116	; 0x74
d0080c9c:	fa0f f888 	sxth.w	r8, r8
d0080ca0:	f5b8 7fa0 	cmp.w	r8, #320	; 0x140
d0080ca4:	bfa8      	it	ge
d0080ca6:	f44f 78a0 	movge.w	r8, #320	; 0x140
d0080caa:	4544      	cmp	r4, r8
d0080cac:	da18      	bge.n	d0080ce0 <main+0x9bc>
d0080cae:	9a04      	ldr	r2, [sp, #16]
d0080cb0:	21c8      	movs	r1, #200	; 0xc8
d0080cb2:	9605      	str	r6, [sp, #20]
d0080cb4:	4613      	mov	r3, r2
d0080cb6:	3236      	adds	r2, #54	; 0x36
d0080cb8:	3324      	adds	r3, #36	; 0x24
d0080cba:	b292      	uxth	r2, r2
d0080cbc:	b29b      	uxth	r3, r3
d0080cbe:	fb14 3101 	smlabb	r1, r4, r1, r3
d0080cc2:	1ad2      	subs	r2, r2, r3
d0080cc4:	eb0a 0501 	add.w	r5, sl, r1
d0080cc8:	4616      	mov	r6, r2
d0080cca:	3401      	adds	r4, #1
d0080ccc:	4628      	mov	r0, r5
d0080cce:	4632      	mov	r2, r6
d0080cd0:	210b      	movs	r1, #11
d0080cd2:	b224      	sxth	r4, r4
d0080cd4:	35c8      	adds	r5, #200	; 0xc8
d0080cd6:	f000 fa3f 	bl	d0081158 <memset>
d0080cda:	45a0      	cmp	r8, r4
d0080cdc:	dcf5      	bgt.n	d0080cca <main+0x9a6>
d0080cde:	9e05      	ldr	r6, [sp, #20]
d0080ce0:	f106 0860 	add.w	r8, r6, #96	; 0x60
d0080ce4:	fa1f f388 	uxth.w	r3, r8
d0080ce8:	fa0f f888 	sxth.w	r8, r8
d0080cec:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0080cf0:	d221      	bcs.n	d0080d36 <main+0xa12>
d0080cf2:	f106 0470 	add.w	r4, r6, #112	; 0x70
d0080cf6:	b224      	sxth	r4, r4
d0080cf8:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080cfc:	bfa8      	it	ge
d0080cfe:	f44f 74a0 	movge.w	r4, #320	; 0x140
d0080d02:	45a0      	cmp	r8, r4
d0080d04:	da17      	bge.n	d0080d36 <main+0xa12>
d0080d06:	9a04      	ldr	r2, [sp, #16]
d0080d08:	25c8      	movs	r5, #200	; 0xc8
d0080d0a:	4613      	mov	r3, r2
d0080d0c:	f102 0632 	add.w	r6, r2, #50	; 0x32
d0080d10:	3328      	adds	r3, #40	; 0x28
d0080d12:	b2b6      	uxth	r6, r6
d0080d14:	b29b      	uxth	r3, r3
d0080d16:	fb18 3505 	smlabb	r5, r8, r5, r3
d0080d1a:	1af6      	subs	r6, r6, r3
d0080d1c:	4455      	add	r5, sl
d0080d1e:	f108 0801 	add.w	r8, r8, #1
d0080d22:	4628      	mov	r0, r5
d0080d24:	4632      	mov	r2, r6
d0080d26:	210f      	movs	r1, #15
d0080d28:	fa0f f888 	sxth.w	r8, r8
d0080d2c:	35c8      	adds	r5, #200	; 0xc8
d0080d2e:	f000 fa13 	bl	d0081158 <memset>
d0080d32:	4544      	cmp	r4, r8
d0080d34:	dcf3      	bgt.n	d0080d1e <main+0x9fa>
d0080d36:	9b03      	ldr	r3, [sp, #12]
d0080d38:	2212      	movs	r2, #18
d0080d3a:	4d8b      	ldr	r5, [pc, #556]	; (d0080f68 <main+0xc44>)
d0080d3c:	f107 0642 	add.w	r6, r7, #66	; 0x42
d0080d40:	eb03 0143 	add.w	r1, r3, r3, lsl #1
d0080d44:	230e      	movs	r3, #14
d0080d46:	0148      	lsls	r0, r1, #5
d0080d48:	4649      	mov	r1, r9
d0080d4a:	fba5 4500 	umull	r4, r5, r5, r0
d0080d4e:	1b40      	subs	r0, r0, r5
d0080d50:	eb05 0550 	add.w	r5, r5, r0, lsr #1
d0080d54:	f3c5 158f 	ubfx	r5, r5, #6, #16
d0080d58:	f105 00c8 	add.w	r0, r5, #200	; 0xc8
d0080d5c:	f105 04c6 	add.w	r4, r5, #198	; 0xc6
d0080d60:	b200      	sxth	r0, r0
d0080d62:	b224      	sxth	r4, r4
d0080d64:	9003      	str	r0, [sp, #12]
d0080d66:	f7ff f9e9 	bl	d008013c <draw_circle>
d0080d6a:	2306      	movs	r3, #6
d0080d6c:	9803      	ldr	r0, [sp, #12]
d0080d6e:	4649      	mov	r1, r9
d0080d70:	220a      	movs	r2, #10
d0080d72:	f7ff f9e3 	bl	d008013c <draw_circle>
d0080d76:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080d7a:	b233      	sxth	r3, r6
d0080d7c:	da1e      	bge.n	d0080dbc <main+0xa98>
d0080d7e:	2bc7      	cmp	r3, #199	; 0xc7
d0080d80:	dc1c      	bgt.n	d0080dbc <main+0xa98>
d0080d82:	35cb      	adds	r5, #203	; 0xcb
d0080d84:	3747      	adds	r7, #71	; 0x47
d0080d86:	b22d      	sxth	r5, r5
d0080d88:	b23f      	sxth	r7, r7
d0080d8a:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d0080d8e:	bfa8      	it	ge
d0080d90:	f44f 75a0 	movge.w	r5, #320	; 0x140
d0080d94:	2fc8      	cmp	r7, #200	; 0xc8
d0080d96:	bfa8      	it	ge
d0080d98:	27c8      	movge	r7, #200	; 0xc8
d0080d9a:	42ac      	cmp	r4, r5
d0080d9c:	da0e      	bge.n	d0080dbc <main+0xa98>
d0080d9e:	26c8      	movs	r6, #200	; 0xc8
d0080da0:	1aff      	subs	r7, r7, r3
d0080da2:	fb14 3606 	smlabb	r6, r4, r6, r3
d0080da6:	4456      	add	r6, sl
d0080da8:	3401      	adds	r4, #1
d0080daa:	4630      	mov	r0, r6
d0080dac:	463a      	mov	r2, r7
d0080dae:	210a      	movs	r1, #10
d0080db0:	b224      	sxth	r4, r4
d0080db2:	36c8      	adds	r6, #200	; 0xc8
d0080db4:	f000 f9d0 	bl	d0081158 <memset>
d0080db8:	42a5      	cmp	r5, r4
d0080dba:	dcf5      	bgt.n	d0080da8 <main+0xa84>
d0080dbc:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0080dbe:	2098      	movs	r0, #152	; 0x98
d0080dc0:	4c6a      	ldr	r4, [pc, #424]	; (d0080f6c <main+0xc48>)
d0080dc2:	210f      	movs	r1, #15
d0080dc4:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080dc8:	08da      	lsrs	r2, r3, #3
d0080dca:	fba4 4202 	umull	r4, r2, r4, r2
d0080dce:	0852      	lsrs	r2, r2, #1
d0080dd0:	fb00 3212 	mls	r2, r0, r2, r3
d0080dd4:	4866      	ldr	r0, [pc, #408]	; (d0080f70 <main+0xc4c>)
d0080dd6:	3220      	adds	r2, #32
d0080dd8:	b2d2      	uxtb	r2, r2
d0080dda:	eb0a 0302 	add.w	r3, sl, r2
d0080dde:	4402      	add	r2, r0
d0080de0:	f803 1bc8 	strb.w	r1, [r3], #200
d0080de4:	4293      	cmp	r3, r2
d0080de6:	d1fb      	bne.n	d0080de0 <main+0xabc>
d0080de8:	2100      	movs	r1, #0
d0080dea:	4e62      	ldr	r6, [pc, #392]	; (d0080f74 <main+0xc50>)
d0080dec:	2598      	movs	r5, #152	; 0x98
d0080dee:	24c8      	movs	r4, #200	; 0xc8
d0080df0:	ea8b 334b 	eor.w	r3, fp, fp, lsl #13
d0080df4:	f001 0701 	and.w	r7, r1, #1
d0080df8:	3101      	adds	r1, #1
d0080dfa:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0080dfe:	3708      	adds	r7, #8
d0080e00:	291c      	cmp	r1, #28
d0080e02:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0080e06:	fba6 0203 	umull	r0, r2, r6, r3
d0080e0a:	ea83 3b43 	eor.w	fp, r3, r3, lsl #13
d0080e0e:	ea4f 2212 	mov.w	r2, r2, lsr #8
d0080e12:	ea8b 4b5b 	eor.w	fp, fp, fp, lsr #17
d0080e16:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d0080e1a:	ea8b 1b4b 	eor.w	fp, fp, fp, lsl #5
d0080e1e:	eba3 1282 	sub.w	r2, r3, r2, lsl #6
d0080e22:	4b52      	ldr	r3, [pc, #328]	; (d0080f6c <main+0xc48>)
d0080e24:	ea4f 00db 	mov.w	r0, fp, lsr #3
d0080e28:	fb04 a202 	mla	r2, r4, r2, sl
d0080e2c:	fba3 3000 	umull	r3, r0, r3, r0
d0080e30:	ea4f 0050 	mov.w	r0, r0, lsr #1
d0080e34:	fb05 b010 	mls	r0, r5, r0, fp
d0080e38:	f100 0020 	add.w	r0, r0, #32
d0080e3c:	b280      	uxth	r0, r0
d0080e3e:	5417      	strb	r7, [r2, r0]
d0080e40:	d1d6      	bne.n	d0080df0 <main+0xacc>
d0080e42:	494d      	ldr	r1, [pc, #308]	; (d0080f78 <main+0xc54>)
d0080e44:	f04f 3201 	mov.w	r2, #16843009	; 0x1010101
d0080e48:	4b4c      	ldr	r3, [pc, #304]	; (d0080f7c <main+0xc58>)
d0080e4a:	f8c1 b000 	str.w	fp, [r1]
d0080e4e:	f503 417a 	add.w	r1, r3, #64000	; 0xfa00
d0080e52:	e9c3 2200 	strd	r2, r2, [r3]
d0080e56:	e9c3 2202 	strd	r2, r2, [r3, #8]
d0080e5a:	33c8      	adds	r3, #200	; 0xc8
d0080e5c:	4299      	cmp	r1, r3
d0080e5e:	d1f8      	bne.n	d0080e52 <main+0xb2e>
d0080e60:	4b47      	ldr	r3, [pc, #284]	; (d0080f80 <main+0xc5c>)
d0080e62:	2200      	movs	r2, #0
d0080e64:	f503 41fa 	add.w	r1, r3, #32000	; 0x7d00
d0080e68:	601a      	str	r2, [r3, #0]
d0080e6a:	33c8      	adds	r3, #200	; 0xc8
d0080e6c:	f843 2cc4 	str.w	r2, [r3, #-196]
d0080e70:	f843 2cc0 	str.w	r2, [r3, #-192]
d0080e74:	428b      	cmp	r3, r1
d0080e76:	d1f7      	bne.n	d0080e68 <main+0xb44>
d0080e78:	4b42      	ldr	r3, [pc, #264]	; (d0080f84 <main+0xc60>)
d0080e7a:	2200      	movs	r2, #0
d0080e7c:	4942      	ldr	r1, [pc, #264]	; (d0080f88 <main+0xc64>)
d0080e7e:	601a      	str	r2, [r3, #0]
d0080e80:	33c8      	adds	r3, #200	; 0xc8
d0080e82:	f843 2cc4 	str.w	r2, [r3, #-196]
d0080e86:	f843 2cc0 	str.w	r2, [r3, #-192]
d0080e8a:	428b      	cmp	r3, r1
d0080e8c:	d1f7      	bne.n	d0080e7e <main+0xb5a>
d0080e8e:	4d3f      	ldr	r5, [pc, #252]	; (d0080f8c <main+0xc68>)
d0080e90:	ee18 1a10 	vmov	r1, s16
d0080e94:	7f28      	ldrb	r0, [r5, #28]
d0080e96:	462e      	mov	r6, r5
d0080e98:	7f6c      	ldrb	r4, [r5, #29]
d0080e9a:	7faa      	ldrb	r2, [r5, #30]
d0080e9c:	ea40 2404 	orr.w	r4, r0, r4, lsl #8
d0080ea0:	7feb      	ldrb	r3, [r5, #31]
d0080ea2:	483b      	ldr	r0, [pc, #236]	; (d0080f90 <main+0xc6c>)
d0080ea4:	ea44 4202 	orr.w	r2, r4, r2, lsl #16
d0080ea8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080eac:	69db      	ldr	r3, [r3, #28]
d0080eae:	4798      	blx	r3
d0080eb0:	7f2a      	ldrb	r2, [r5, #28]
d0080eb2:	7f68      	ldrb	r0, [r5, #29]
d0080eb4:	230f      	movs	r3, #15
d0080eb6:	7fad      	ldrb	r5, [r5, #30]
d0080eb8:	2107      	movs	r1, #7
d0080eba:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d0080ebe:	7ff4      	ldrb	r4, [r6, #31]
d0080ec0:	4a34      	ldr	r2, [pc, #208]	; (d0080f94 <main+0xc70>)
d0080ec2:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0080ec6:	2008      	movs	r0, #8
d0080ec8:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0080ecc:	6ae4      	ldr	r4, [r4, #44]	; 0x2c
d0080ece:	47a0      	blx	r4
d0080ed0:	7f32      	ldrb	r2, [r6, #28]
d0080ed2:	7f70      	ldrb	r0, [r6, #29]
d0080ed4:	230e      	movs	r3, #14
d0080ed6:	7fb5      	ldrb	r5, [r6, #30]
d0080ed8:	2107      	movs	r1, #7
d0080eda:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d0080ede:	7ff4      	ldrb	r4, [r6, #31]
d0080ee0:	4a2d      	ldr	r2, [pc, #180]	; (d0080f98 <main+0xc74>)
d0080ee2:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0080ee6:	20b0      	movs	r0, #176	; 0xb0
d0080ee8:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0080eec:	6ae4      	ldr	r4, [r4, #44]	; 0x2c
d0080eee:	47a0      	blx	r4
d0080ef0:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0080ef2:	4a2a      	ldr	r2, [pc, #168]	; (d0080f9c <main+0xc78>)
d0080ef4:	2128      	movs	r1, #40	; 0x28
d0080ef6:	461c      	mov	r4, r3
d0080ef8:	4829      	ldr	r0, [pc, #164]	; (d0080fa0 <main+0xc7c>)
d0080efa:	3401      	adds	r4, #1
d0080efc:	9409      	str	r4, [sp, #36]	; 0x24
d0080efe:	f000 faab 	bl	d0081458 <sniprintf>
d0080f02:	7f32      	ldrb	r2, [r6, #28]
d0080f04:	230d      	movs	r3, #13
d0080f06:	7f70      	ldrb	r0, [r6, #29]
d0080f08:	21bc      	movs	r1, #188	; 0xbc
d0080f0a:	7fb5      	ldrb	r5, [r6, #30]
d0080f0c:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d0080f10:	7ff4      	ldrb	r4, [r6, #31]
d0080f12:	4a23      	ldr	r2, [pc, #140]	; (d0080fa0 <main+0xc7c>)
d0080f14:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0080f18:	2008      	movs	r0, #8
d0080f1a:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0080f1e:	6ae4      	ldr	r4, [r4, #44]	; 0x2c
d0080f20:	47a0      	blx	r4
d0080f22:	7f31      	ldrb	r1, [r6, #28]
d0080f24:	7f73      	ldrb	r3, [r6, #29]
d0080f26:	7fb2      	ldrb	r2, [r6, #30]
d0080f28:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0080f2c:	7ff3      	ldrb	r3, [r6, #31]
d0080f2e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080f32:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080f36:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d0080f38:	4798      	blx	r3
d0080f3a:	7d31      	ldrb	r1, [r6, #20]
d0080f3c:	7d73      	ldrb	r3, [r6, #21]
d0080f3e:	7db2      	ldrb	r2, [r6, #22]
d0080f40:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0080f44:	7df3      	ldrb	r3, [r6, #23]
d0080f46:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080f4a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080f4e:	685b      	ldr	r3, [r3, #4]
d0080f50:	685b      	ldr	r3, [r3, #4]
d0080f52:	4798      	blx	r3
d0080f54:	7a31      	ldrb	r1, [r6, #8]
d0080f56:	7a73      	ldrb	r3, [r6, #9]
d0080f58:	7ab2      	ldrb	r2, [r6, #10]
d0080f5a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0080f5e:	7af3      	ldrb	r3, [r6, #11]
d0080f60:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080f64:	e01e      	b.n	d0080fa4 <main+0xc80>
d0080f66:	bf00      	nop
d0080f68:	02040811 	.word	0x02040811
d0080f6c:	1af286bd 	.word	0x1af286bd
d0080f70:	d0091cc0 	.word	0xd0091cc0
d0080f74:	cccccccd 	.word	0xcccccccd
d0080f78:	d0082228 	.word	0xd0082228
d0080f7c:	d0082378 	.word	0xd0082378
d0080f80:	d00825e4 	.word	0xd00825e4
d0080f84:	d008a604 	.word	0xd008a604
d0080f88:	d00919a4 	.word	0xd00919a4
d0080f8c:	2001f000 	.word	0x2001f000
d0080f90:	d00822c0 	.word	0xd00822c0
d0080f94:	d0082108 	.word	0xd0082108
d0080f98:	d0082118 	.word	0xd0082118
d0080f9c:	d008212c 	.word	0xd008212c
d0080fa0:	d0091e90 	.word	0xd0091e90
d0080fa4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080fa8:	689b      	ldr	r3, [r3, #8]
d0080faa:	4798      	blx	r3
d0080fac:	f7ff bb67 	b.w	d008067e <main+0x35a>
d0080fb0:	1aad      	subs	r5, r5, r2
d0080fb2:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d0080fb6:	e5b5      	b.n	d0080b24 <main+0x800>
d0080fb8:	eba9 0000 	sub.w	r0, r9, r0
d0080fbc:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d0080fc0:	e5a6      	b.n	d0080b10 <main+0x7ec>
d0080fc2:	7f23      	ldrb	r3, [r4, #28]
d0080fc4:	4626      	mov	r6, r4
d0080fc6:	7f62      	ldrb	r2, [r4, #29]
d0080fc8:	2502      	movs	r5, #2
d0080fca:	7fa1      	ldrb	r1, [r4, #30]
d0080fcc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080fd0:	7fe2      	ldrb	r2, [r4, #31]
d0080fd2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080fd6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080fda:	689b      	ldr	r3, [r3, #8]
d0080fdc:	4798      	blx	r3
d0080fde:	7b23      	ldrb	r3, [r4, #12]
d0080fe0:	7b62      	ldrb	r2, [r4, #13]
d0080fe2:	7ba1      	ldrb	r1, [r4, #14]
d0080fe4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080fe8:	7be2      	ldrb	r2, [r4, #15]
d0080fea:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080fee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080ff2:	681b      	ldr	r3, [r3, #0]
d0080ff4:	68db      	ldr	r3, [r3, #12]
d0080ff6:	4798      	blx	r3
d0080ff8:	7b24      	ldrb	r4, [r4, #12]
d0080ffa:	7b72      	ldrb	r2, [r6, #13]
d0080ffc:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0081000:	7bb1      	ldrb	r1, [r6, #14]
d0081002:	ea44 2402 	orr.w	r4, r4, r2, lsl #8
d0081006:	7bf0      	ldrb	r0, [r6, #15]
d0081008:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d008100c:	ea44 4401 	orr.w	r4, r4, r1, lsl #16
d0081010:	4619      	mov	r1, r3
d0081012:	ea44 6400 	orr.w	r4, r4, r0, lsl #24
d0081016:	4610      	mov	r0, r2
d0081018:	6824      	ldr	r4, [r4, #0]
d008101a:	9500      	str	r5, [sp, #0]
d008101c:	6964      	ldr	r4, [r4, #20]
d008101e:	47a0      	blx	r4
d0081020:	7b32      	ldrb	r2, [r6, #12]
d0081022:	7b73      	ldrb	r3, [r6, #13]
d0081024:	7bb0      	ldrb	r0, [r6, #14]
d0081026:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d008102a:	7bf4      	ldrb	r4, [r6, #15]
d008102c:	7b33      	ldrb	r3, [r6, #12]
d008102e:	7b71      	ldrb	r1, [r6, #13]
d0081030:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
d0081034:	7bb0      	ldrb	r0, [r6, #14]
d0081036:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d008103a:	7bf1      	ldrb	r1, [r6, #15]
d008103c:	ea42 6204 	orr.w	r2, r2, r4, lsl #24
d0081040:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0081044:	6812      	ldr	r2, [r2, #0]
d0081046:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d008104a:	69d4      	ldr	r4, [r2, #28]
d008104c:	681b      	ldr	r3, [r3, #0]
d008104e:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
d0081050:	4798      	blx	r3
d0081052:	47a0      	blx	r4
d0081054:	7b32      	ldrb	r2, [r6, #12]
d0081056:	7b73      	ldrb	r3, [r6, #13]
d0081058:	7bb0      	ldrb	r0, [r6, #14]
d008105a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d008105e:	7bf4      	ldrb	r4, [r6, #15]
d0081060:	7b33      	ldrb	r3, [r6, #12]
d0081062:	7b71      	ldrb	r1, [r6, #13]
d0081064:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
d0081068:	7bb0      	ldrb	r0, [r6, #14]
d008106a:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d008106e:	7bf1      	ldrb	r1, [r6, #15]
d0081070:	ea42 6204 	orr.w	r2, r2, r4, lsl #24
d0081074:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0081078:	6812      	ldr	r2, [r2, #0]
d008107a:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d008107e:	6a14      	ldr	r4, [r2, #32]
d0081080:	681b      	ldr	r3, [r3, #0]
d0081082:	6c5b      	ldr	r3, [r3, #68]	; 0x44
d0081084:	4798      	blx	r3
d0081086:	47a0      	blx	r4
d0081088:	7b32      	ldrb	r2, [r6, #12]
d008108a:	7b73      	ldrb	r3, [r6, #13]
d008108c:	7bb0      	ldrb	r0, [r6, #14]
d008108e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d0081092:	7bf4      	ldrb	r4, [r6, #15]
d0081094:	7b33      	ldrb	r3, [r6, #12]
d0081096:	7b71      	ldrb	r1, [r6, #13]
d0081098:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
d008109c:	7bb0      	ldrb	r0, [r6, #14]
d008109e:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d00810a2:	7bf1      	ldrb	r1, [r6, #15]
d00810a4:	ea42 6204 	orr.w	r2, r2, r4, lsl #24
d00810a8:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00810ac:	6812      	ldr	r2, [r2, #0]
d00810ae:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00810b2:	6994      	ldr	r4, [r2, #24]
d00810b4:	681b      	ldr	r3, [r3, #0]
d00810b6:	6c5b      	ldr	r3, [r3, #68]	; 0x44
d00810b8:	4798      	blx	r3
d00810ba:	47a0      	blx	r4
d00810bc:	7b33      	ldrb	r3, [r6, #12]
d00810be:	7b72      	ldrb	r2, [r6, #13]
d00810c0:	7bb1      	ldrb	r1, [r6, #14]
d00810c2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00810c6:	7bf2      	ldrb	r2, [r6, #15]
d00810c8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00810cc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00810d0:	681b      	ldr	r3, [r3, #0]
d00810d2:	681b      	ldr	r3, [r3, #0]
d00810d4:	4798      	blx	r3
d00810d6:	7b33      	ldrb	r3, [r6, #12]
d00810d8:	7b72      	ldrb	r2, [r6, #13]
d00810da:	7bb1      	ldrb	r1, [r6, #14]
d00810dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00810e0:	7bf2      	ldrb	r2, [r6, #15]
d00810e2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00810e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00810ea:	681b      	ldr	r3, [r3, #0]
d00810ec:	68db      	ldr	r3, [r3, #12]
d00810ee:	4798      	blx	r3
d00810f0:	7833      	ldrb	r3, [r6, #0]
d00810f2:	7872      	ldrb	r2, [r6, #1]
d00810f4:	78b1      	ldrb	r1, [r6, #2]
d00810f6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00810fa:	78f2      	ldrb	r2, [r6, #3]
d00810fc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081100:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0081104:	685b      	ldr	r3, [r3, #4]
d0081106:	4798      	blx	r3
d0081108:	2000      	movs	r0, #0
d008110a:	b00f      	add	sp, #60	; 0x3c
d008110c:	ecbd 8b02 	vpop	{d8}
d0081110:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0081114:	4807      	ldr	r0, [pc, #28]	; (d0081134 <main+0xe10>)
d0081116:	7803      	ldrb	r3, [r0, #0]
d0081118:	7842      	ldrb	r2, [r0, #1]
d008111a:	7881      	ldrb	r1, [r0, #2]
d008111c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0081120:	78c2      	ldrb	r2, [r0, #3]
d0081122:	4805      	ldr	r0, [pc, #20]	; (d0081138 <main+0xe14>)
d0081124:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081128:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008112c:	68db      	ldr	r3, [r3, #12]
d008112e:	4798      	blx	r3
d0081130:	2001      	movs	r0, #1
d0081132:	e7ea      	b.n	d008110a <main+0xde6>
d0081134:	2001f000 	.word	0x2001f000
d0081138:	d00820f0 	.word	0xd00820f0

d008113c <__errno>:
d008113c:	4b01      	ldr	r3, [pc, #4]	; (d0081144 <__errno+0x8>)
d008113e:	6818      	ldr	r0, [r3, #0]
d0081140:	4770      	bx	lr
d0081142:	bf00      	nop
d0081144:	d008222c 	.word	0xd008222c

d0081148 <malloc>:
d0081148:	4b02      	ldr	r3, [pc, #8]	; (d0081154 <malloc+0xc>)
d008114a:	4601      	mov	r1, r0
d008114c:	6818      	ldr	r0, [r3, #0]
d008114e:	f000 b85b 	b.w	d0081208 <_malloc_r>
d0081152:	bf00      	nop
d0081154:	d008222c 	.word	0xd008222c

d0081158 <memset>:
d0081158:	4402      	add	r2, r0
d008115a:	4603      	mov	r3, r0
d008115c:	4293      	cmp	r3, r2
d008115e:	d100      	bne.n	d0081162 <memset+0xa>
d0081160:	4770      	bx	lr
d0081162:	f803 1b01 	strb.w	r1, [r3], #1
d0081166:	e7f9      	b.n	d008115c <memset+0x4>

d0081168 <_free_r>:
d0081168:	b537      	push	{r0, r1, r2, r4, r5, lr}
d008116a:	2900      	cmp	r1, #0
d008116c:	d048      	beq.n	d0081200 <_free_r+0x98>
d008116e:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0081172:	9001      	str	r0, [sp, #4]
d0081174:	2b00      	cmp	r3, #0
d0081176:	f1a1 0404 	sub.w	r4, r1, #4
d008117a:	bfb8      	it	lt
d008117c:	18e4      	addlt	r4, r4, r3
d008117e:	f000 fb85 	bl	d008188c <__malloc_lock>
d0081182:	4a20      	ldr	r2, [pc, #128]	; (d0081204 <_free_r+0x9c>)
d0081184:	9801      	ldr	r0, [sp, #4]
d0081186:	6813      	ldr	r3, [r2, #0]
d0081188:	4615      	mov	r5, r2
d008118a:	b933      	cbnz	r3, d008119a <_free_r+0x32>
d008118c:	6063      	str	r3, [r4, #4]
d008118e:	6014      	str	r4, [r2, #0]
d0081190:	b003      	add	sp, #12
d0081192:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0081196:	f000 bb7f 	b.w	d0081898 <__malloc_unlock>
d008119a:	42a3      	cmp	r3, r4
d008119c:	d90b      	bls.n	d00811b6 <_free_r+0x4e>
d008119e:	6821      	ldr	r1, [r4, #0]
d00811a0:	1862      	adds	r2, r4, r1
d00811a2:	4293      	cmp	r3, r2
d00811a4:	bf04      	itt	eq
d00811a6:	681a      	ldreq	r2, [r3, #0]
d00811a8:	685b      	ldreq	r3, [r3, #4]
d00811aa:	6063      	str	r3, [r4, #4]
d00811ac:	bf04      	itt	eq
d00811ae:	1852      	addeq	r2, r2, r1
d00811b0:	6022      	streq	r2, [r4, #0]
d00811b2:	602c      	str	r4, [r5, #0]
d00811b4:	e7ec      	b.n	d0081190 <_free_r+0x28>
d00811b6:	461a      	mov	r2, r3
d00811b8:	685b      	ldr	r3, [r3, #4]
d00811ba:	b10b      	cbz	r3, d00811c0 <_free_r+0x58>
d00811bc:	42a3      	cmp	r3, r4
d00811be:	d9fa      	bls.n	d00811b6 <_free_r+0x4e>
d00811c0:	6811      	ldr	r1, [r2, #0]
d00811c2:	1855      	adds	r5, r2, r1
d00811c4:	42a5      	cmp	r5, r4
d00811c6:	d10b      	bne.n	d00811e0 <_free_r+0x78>
d00811c8:	6824      	ldr	r4, [r4, #0]
d00811ca:	4421      	add	r1, r4
d00811cc:	1854      	adds	r4, r2, r1
d00811ce:	42a3      	cmp	r3, r4
d00811d0:	6011      	str	r1, [r2, #0]
d00811d2:	d1dd      	bne.n	d0081190 <_free_r+0x28>
d00811d4:	681c      	ldr	r4, [r3, #0]
d00811d6:	685b      	ldr	r3, [r3, #4]
d00811d8:	6053      	str	r3, [r2, #4]
d00811da:	4421      	add	r1, r4
d00811dc:	6011      	str	r1, [r2, #0]
d00811de:	e7d7      	b.n	d0081190 <_free_r+0x28>
d00811e0:	d902      	bls.n	d00811e8 <_free_r+0x80>
d00811e2:	230c      	movs	r3, #12
d00811e4:	6003      	str	r3, [r0, #0]
d00811e6:	e7d3      	b.n	d0081190 <_free_r+0x28>
d00811e8:	6825      	ldr	r5, [r4, #0]
d00811ea:	1961      	adds	r1, r4, r5
d00811ec:	428b      	cmp	r3, r1
d00811ee:	bf04      	itt	eq
d00811f0:	6819      	ldreq	r1, [r3, #0]
d00811f2:	685b      	ldreq	r3, [r3, #4]
d00811f4:	6063      	str	r3, [r4, #4]
d00811f6:	bf04      	itt	eq
d00811f8:	1949      	addeq	r1, r1, r5
d00811fa:	6021      	streq	r1, [r4, #0]
d00811fc:	6054      	str	r4, [r2, #4]
d00811fe:	e7c7      	b.n	d0081190 <_free_r+0x28>
d0081200:	b003      	add	sp, #12
d0081202:	bd30      	pop	{r4, r5, pc}
d0081204:	d0091eb8 	.word	0xd0091eb8

d0081208 <_malloc_r>:
d0081208:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008120a:	1ccd      	adds	r5, r1, #3
d008120c:	f025 0503 	bic.w	r5, r5, #3
d0081210:	3508      	adds	r5, #8
d0081212:	2d0c      	cmp	r5, #12
d0081214:	bf38      	it	cc
d0081216:	250c      	movcc	r5, #12
d0081218:	2d00      	cmp	r5, #0
d008121a:	4606      	mov	r6, r0
d008121c:	db01      	blt.n	d0081222 <_malloc_r+0x1a>
d008121e:	42a9      	cmp	r1, r5
d0081220:	d903      	bls.n	d008122a <_malloc_r+0x22>
d0081222:	230c      	movs	r3, #12
d0081224:	6033      	str	r3, [r6, #0]
d0081226:	2000      	movs	r0, #0
d0081228:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d008122a:	f000 fb2f 	bl	d008188c <__malloc_lock>
d008122e:	4921      	ldr	r1, [pc, #132]	; (d00812b4 <_malloc_r+0xac>)
d0081230:	680a      	ldr	r2, [r1, #0]
d0081232:	4614      	mov	r4, r2
d0081234:	b99c      	cbnz	r4, d008125e <_malloc_r+0x56>
d0081236:	4f20      	ldr	r7, [pc, #128]	; (d00812b8 <_malloc_r+0xb0>)
d0081238:	683b      	ldr	r3, [r7, #0]
d008123a:	b923      	cbnz	r3, d0081246 <_malloc_r+0x3e>
d008123c:	4621      	mov	r1, r4
d008123e:	4630      	mov	r0, r6
d0081240:	f7fe ff5c 	bl	d00800fc <_sbrk_r>
d0081244:	6038      	str	r0, [r7, #0]
d0081246:	4629      	mov	r1, r5
d0081248:	4630      	mov	r0, r6
d008124a:	f7fe ff57 	bl	d00800fc <_sbrk_r>
d008124e:	1c43      	adds	r3, r0, #1
d0081250:	d123      	bne.n	d008129a <_malloc_r+0x92>
d0081252:	230c      	movs	r3, #12
d0081254:	6033      	str	r3, [r6, #0]
d0081256:	4630      	mov	r0, r6
d0081258:	f000 fb1e 	bl	d0081898 <__malloc_unlock>
d008125c:	e7e3      	b.n	d0081226 <_malloc_r+0x1e>
d008125e:	6823      	ldr	r3, [r4, #0]
d0081260:	1b5b      	subs	r3, r3, r5
d0081262:	d417      	bmi.n	d0081294 <_malloc_r+0x8c>
d0081264:	2b0b      	cmp	r3, #11
d0081266:	d903      	bls.n	d0081270 <_malloc_r+0x68>
d0081268:	6023      	str	r3, [r4, #0]
d008126a:	441c      	add	r4, r3
d008126c:	6025      	str	r5, [r4, #0]
d008126e:	e004      	b.n	d008127a <_malloc_r+0x72>
d0081270:	6863      	ldr	r3, [r4, #4]
d0081272:	42a2      	cmp	r2, r4
d0081274:	bf0c      	ite	eq
d0081276:	600b      	streq	r3, [r1, #0]
d0081278:	6053      	strne	r3, [r2, #4]
d008127a:	4630      	mov	r0, r6
d008127c:	f000 fb0c 	bl	d0081898 <__malloc_unlock>
d0081280:	f104 000b 	add.w	r0, r4, #11
d0081284:	1d23      	adds	r3, r4, #4
d0081286:	f020 0007 	bic.w	r0, r0, #7
d008128a:	1ac2      	subs	r2, r0, r3
d008128c:	d0cc      	beq.n	d0081228 <_malloc_r+0x20>
d008128e:	1a1b      	subs	r3, r3, r0
d0081290:	50a3      	str	r3, [r4, r2]
d0081292:	e7c9      	b.n	d0081228 <_malloc_r+0x20>
d0081294:	4622      	mov	r2, r4
d0081296:	6864      	ldr	r4, [r4, #4]
d0081298:	e7cc      	b.n	d0081234 <_malloc_r+0x2c>
d008129a:	1cc4      	adds	r4, r0, #3
d008129c:	f024 0403 	bic.w	r4, r4, #3
d00812a0:	42a0      	cmp	r0, r4
d00812a2:	d0e3      	beq.n	d008126c <_malloc_r+0x64>
d00812a4:	1a21      	subs	r1, r4, r0
d00812a6:	4630      	mov	r0, r6
d00812a8:	f7fe ff28 	bl	d00800fc <_sbrk_r>
d00812ac:	3001      	adds	r0, #1
d00812ae:	d1dd      	bne.n	d008126c <_malloc_r+0x64>
d00812b0:	e7cf      	b.n	d0081252 <_malloc_r+0x4a>
d00812b2:	bf00      	nop
d00812b4:	d0091eb8 	.word	0xd0091eb8
d00812b8:	d0091ebc 	.word	0xd0091ebc

d00812bc <setbuf>:
d00812bc:	2900      	cmp	r1, #0
d00812be:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00812c2:	bf0c      	ite	eq
d00812c4:	2202      	moveq	r2, #2
d00812c6:	2200      	movne	r2, #0
d00812c8:	f000 b800 	b.w	d00812cc <setvbuf>

d00812cc <setvbuf>:
d00812cc:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d00812d0:	461d      	mov	r5, r3
d00812d2:	4b5d      	ldr	r3, [pc, #372]	; (d0081448 <setvbuf+0x17c>)
d00812d4:	681f      	ldr	r7, [r3, #0]
d00812d6:	4604      	mov	r4, r0
d00812d8:	460e      	mov	r6, r1
d00812da:	4690      	mov	r8, r2
d00812dc:	b127      	cbz	r7, d00812e8 <setvbuf+0x1c>
d00812de:	69bb      	ldr	r3, [r7, #24]
d00812e0:	b913      	cbnz	r3, d00812e8 <setvbuf+0x1c>
d00812e2:	4638      	mov	r0, r7
d00812e4:	f000 fa0e 	bl	d0081704 <__sinit>
d00812e8:	4b58      	ldr	r3, [pc, #352]	; (d008144c <setvbuf+0x180>)
d00812ea:	429c      	cmp	r4, r3
d00812ec:	d167      	bne.n	d00813be <setvbuf+0xf2>
d00812ee:	687c      	ldr	r4, [r7, #4]
d00812f0:	f1b8 0f02 	cmp.w	r8, #2
d00812f4:	d006      	beq.n	d0081304 <setvbuf+0x38>
d00812f6:	f1b8 0f01 	cmp.w	r8, #1
d00812fa:	f200 809f 	bhi.w	d008143c <setvbuf+0x170>
d00812fe:	2d00      	cmp	r5, #0
d0081300:	f2c0 809c 	blt.w	d008143c <setvbuf+0x170>
d0081304:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0081306:	07db      	lsls	r3, r3, #31
d0081308:	d405      	bmi.n	d0081316 <setvbuf+0x4a>
d008130a:	89a3      	ldrh	r3, [r4, #12]
d008130c:	0598      	lsls	r0, r3, #22
d008130e:	d402      	bmi.n	d0081316 <setvbuf+0x4a>
d0081310:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081312:	f000 fa95 	bl	d0081840 <__retarget_lock_acquire_recursive>
d0081316:	4621      	mov	r1, r4
d0081318:	4638      	mov	r0, r7
d008131a:	f000 f95f 	bl	d00815dc <_fflush_r>
d008131e:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0081320:	b141      	cbz	r1, d0081334 <setvbuf+0x68>
d0081322:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0081326:	4299      	cmp	r1, r3
d0081328:	d002      	beq.n	d0081330 <setvbuf+0x64>
d008132a:	4638      	mov	r0, r7
d008132c:	f7ff ff1c 	bl	d0081168 <_free_r>
d0081330:	2300      	movs	r3, #0
d0081332:	6363      	str	r3, [r4, #52]	; 0x34
d0081334:	2300      	movs	r3, #0
d0081336:	61a3      	str	r3, [r4, #24]
d0081338:	6063      	str	r3, [r4, #4]
d008133a:	89a3      	ldrh	r3, [r4, #12]
d008133c:	0619      	lsls	r1, r3, #24
d008133e:	d503      	bpl.n	d0081348 <setvbuf+0x7c>
d0081340:	6921      	ldr	r1, [r4, #16]
d0081342:	4638      	mov	r0, r7
d0081344:	f7ff ff10 	bl	d0081168 <_free_r>
d0081348:	89a3      	ldrh	r3, [r4, #12]
d008134a:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d008134e:	f023 0303 	bic.w	r3, r3, #3
d0081352:	f1b8 0f02 	cmp.w	r8, #2
d0081356:	81a3      	strh	r3, [r4, #12]
d0081358:	d06c      	beq.n	d0081434 <setvbuf+0x168>
d008135a:	ab01      	add	r3, sp, #4
d008135c:	466a      	mov	r2, sp
d008135e:	4621      	mov	r1, r4
d0081360:	4638      	mov	r0, r7
d0081362:	f000 fa6f 	bl	d0081844 <__swhatbuf_r>
d0081366:	89a3      	ldrh	r3, [r4, #12]
d0081368:	4318      	orrs	r0, r3
d008136a:	81a0      	strh	r0, [r4, #12]
d008136c:	2d00      	cmp	r5, #0
d008136e:	d130      	bne.n	d00813d2 <setvbuf+0x106>
d0081370:	9d00      	ldr	r5, [sp, #0]
d0081372:	4628      	mov	r0, r5
d0081374:	f7ff fee8 	bl	d0081148 <malloc>
d0081378:	4606      	mov	r6, r0
d008137a:	2800      	cmp	r0, #0
d008137c:	d155      	bne.n	d008142a <setvbuf+0x15e>
d008137e:	f8dd 9000 	ldr.w	r9, [sp]
d0081382:	45a9      	cmp	r9, r5
d0081384:	d14a      	bne.n	d008141c <setvbuf+0x150>
d0081386:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d008138a:	2200      	movs	r2, #0
d008138c:	60a2      	str	r2, [r4, #8]
d008138e:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0081392:	6022      	str	r2, [r4, #0]
d0081394:	6122      	str	r2, [r4, #16]
d0081396:	2201      	movs	r2, #1
d0081398:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d008139c:	6162      	str	r2, [r4, #20]
d008139e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00813a0:	f043 0302 	orr.w	r3, r3, #2
d00813a4:	07d2      	lsls	r2, r2, #31
d00813a6:	81a3      	strh	r3, [r4, #12]
d00813a8:	d405      	bmi.n	d00813b6 <setvbuf+0xea>
d00813aa:	f413 7f00 	tst.w	r3, #512	; 0x200
d00813ae:	d102      	bne.n	d00813b6 <setvbuf+0xea>
d00813b0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00813b2:	f000 fa46 	bl	d0081842 <__retarget_lock_release_recursive>
d00813b6:	4628      	mov	r0, r5
d00813b8:	b003      	add	sp, #12
d00813ba:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00813be:	4b24      	ldr	r3, [pc, #144]	; (d0081450 <setvbuf+0x184>)
d00813c0:	429c      	cmp	r4, r3
d00813c2:	d101      	bne.n	d00813c8 <setvbuf+0xfc>
d00813c4:	68bc      	ldr	r4, [r7, #8]
d00813c6:	e793      	b.n	d00812f0 <setvbuf+0x24>
d00813c8:	4b22      	ldr	r3, [pc, #136]	; (d0081454 <setvbuf+0x188>)
d00813ca:	429c      	cmp	r4, r3
d00813cc:	bf08      	it	eq
d00813ce:	68fc      	ldreq	r4, [r7, #12]
d00813d0:	e78e      	b.n	d00812f0 <setvbuf+0x24>
d00813d2:	2e00      	cmp	r6, #0
d00813d4:	d0cd      	beq.n	d0081372 <setvbuf+0xa6>
d00813d6:	69bb      	ldr	r3, [r7, #24]
d00813d8:	b913      	cbnz	r3, d00813e0 <setvbuf+0x114>
d00813da:	4638      	mov	r0, r7
d00813dc:	f000 f992 	bl	d0081704 <__sinit>
d00813e0:	f1b8 0f01 	cmp.w	r8, #1
d00813e4:	bf08      	it	eq
d00813e6:	89a3      	ldrheq	r3, [r4, #12]
d00813e8:	6026      	str	r6, [r4, #0]
d00813ea:	bf04      	itt	eq
d00813ec:	f043 0301 	orreq.w	r3, r3, #1
d00813f0:	81a3      	strheq	r3, [r4, #12]
d00813f2:	89a2      	ldrh	r2, [r4, #12]
d00813f4:	f012 0308 	ands.w	r3, r2, #8
d00813f8:	e9c4 6504 	strd	r6, r5, [r4, #16]
d00813fc:	d01c      	beq.n	d0081438 <setvbuf+0x16c>
d00813fe:	07d3      	lsls	r3, r2, #31
d0081400:	bf41      	itttt	mi
d0081402:	2300      	movmi	r3, #0
d0081404:	426d      	negmi	r5, r5
d0081406:	60a3      	strmi	r3, [r4, #8]
d0081408:	61a5      	strmi	r5, [r4, #24]
d008140a:	bf58      	it	pl
d008140c:	60a5      	strpl	r5, [r4, #8]
d008140e:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0081410:	f015 0501 	ands.w	r5, r5, #1
d0081414:	d115      	bne.n	d0081442 <setvbuf+0x176>
d0081416:	f412 7f00 	tst.w	r2, #512	; 0x200
d008141a:	e7c8      	b.n	d00813ae <setvbuf+0xe2>
d008141c:	4648      	mov	r0, r9
d008141e:	f7ff fe93 	bl	d0081148 <malloc>
d0081422:	4606      	mov	r6, r0
d0081424:	2800      	cmp	r0, #0
d0081426:	d0ae      	beq.n	d0081386 <setvbuf+0xba>
d0081428:	464d      	mov	r5, r9
d008142a:	89a3      	ldrh	r3, [r4, #12]
d008142c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0081430:	81a3      	strh	r3, [r4, #12]
d0081432:	e7d0      	b.n	d00813d6 <setvbuf+0x10a>
d0081434:	2500      	movs	r5, #0
d0081436:	e7a8      	b.n	d008138a <setvbuf+0xbe>
d0081438:	60a3      	str	r3, [r4, #8]
d008143a:	e7e8      	b.n	d008140e <setvbuf+0x142>
d008143c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0081440:	e7b9      	b.n	d00813b6 <setvbuf+0xea>
d0081442:	2500      	movs	r5, #0
d0081444:	e7b7      	b.n	d00813b6 <setvbuf+0xea>
d0081446:	bf00      	nop
d0081448:	d008222c 	.word	0xd008222c
d008144c:	d00821ac 	.word	0xd00821ac
d0081450:	d00821cc 	.word	0xd00821cc
d0081454:	d008218c 	.word	0xd008218c

d0081458 <sniprintf>:
d0081458:	b40c      	push	{r2, r3}
d008145a:	b530      	push	{r4, r5, lr}
d008145c:	4b17      	ldr	r3, [pc, #92]	; (d00814bc <sniprintf+0x64>)
d008145e:	1e0c      	subs	r4, r1, #0
d0081460:	681d      	ldr	r5, [r3, #0]
d0081462:	b09d      	sub	sp, #116	; 0x74
d0081464:	da08      	bge.n	d0081478 <sniprintf+0x20>
d0081466:	238b      	movs	r3, #139	; 0x8b
d0081468:	602b      	str	r3, [r5, #0]
d008146a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008146e:	b01d      	add	sp, #116	; 0x74
d0081470:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0081474:	b002      	add	sp, #8
d0081476:	4770      	bx	lr
d0081478:	f44f 7302 	mov.w	r3, #520	; 0x208
d008147c:	f8ad 3014 	strh.w	r3, [sp, #20]
d0081480:	bf14      	ite	ne
d0081482:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d0081486:	4623      	moveq	r3, r4
d0081488:	9304      	str	r3, [sp, #16]
d008148a:	9307      	str	r3, [sp, #28]
d008148c:	f64f 73ff 	movw	r3, #65535	; 0xffff
d0081490:	9002      	str	r0, [sp, #8]
d0081492:	9006      	str	r0, [sp, #24]
d0081494:	f8ad 3016 	strh.w	r3, [sp, #22]
d0081498:	9a20      	ldr	r2, [sp, #128]	; 0x80
d008149a:	ab21      	add	r3, sp, #132	; 0x84
d008149c:	a902      	add	r1, sp, #8
d008149e:	4628      	mov	r0, r5
d00814a0:	9301      	str	r3, [sp, #4]
d00814a2:	f000 fa5b 	bl	d008195c <_svfiprintf_r>
d00814a6:	1c43      	adds	r3, r0, #1
d00814a8:	bfbc      	itt	lt
d00814aa:	238b      	movlt	r3, #139	; 0x8b
d00814ac:	602b      	strlt	r3, [r5, #0]
d00814ae:	2c00      	cmp	r4, #0
d00814b0:	d0dd      	beq.n	d008146e <sniprintf+0x16>
d00814b2:	9b02      	ldr	r3, [sp, #8]
d00814b4:	2200      	movs	r2, #0
d00814b6:	701a      	strb	r2, [r3, #0]
d00814b8:	e7d9      	b.n	d008146e <sniprintf+0x16>
d00814ba:	bf00      	nop
d00814bc:	d008222c 	.word	0xd008222c

d00814c0 <strlen>:
d00814c0:	4603      	mov	r3, r0
d00814c2:	f813 2b01 	ldrb.w	r2, [r3], #1
d00814c6:	2a00      	cmp	r2, #0
d00814c8:	d1fb      	bne.n	d00814c2 <strlen+0x2>
d00814ca:	1a18      	subs	r0, r3, r0
d00814cc:	3801      	subs	r0, #1
d00814ce:	4770      	bx	lr

d00814d0 <__sflush_r>:
d00814d0:	898a      	ldrh	r2, [r1, #12]
d00814d2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00814d6:	4605      	mov	r5, r0
d00814d8:	0710      	lsls	r0, r2, #28
d00814da:	460c      	mov	r4, r1
d00814dc:	d458      	bmi.n	d0081590 <__sflush_r+0xc0>
d00814de:	684b      	ldr	r3, [r1, #4]
d00814e0:	2b00      	cmp	r3, #0
d00814e2:	dc05      	bgt.n	d00814f0 <__sflush_r+0x20>
d00814e4:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d00814e6:	2b00      	cmp	r3, #0
d00814e8:	dc02      	bgt.n	d00814f0 <__sflush_r+0x20>
d00814ea:	2000      	movs	r0, #0
d00814ec:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00814f0:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00814f2:	2e00      	cmp	r6, #0
d00814f4:	d0f9      	beq.n	d00814ea <__sflush_r+0x1a>
d00814f6:	2300      	movs	r3, #0
d00814f8:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d00814fc:	682f      	ldr	r7, [r5, #0]
d00814fe:	602b      	str	r3, [r5, #0]
d0081500:	d032      	beq.n	d0081568 <__sflush_r+0x98>
d0081502:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0081504:	89a3      	ldrh	r3, [r4, #12]
d0081506:	075a      	lsls	r2, r3, #29
d0081508:	d505      	bpl.n	d0081516 <__sflush_r+0x46>
d008150a:	6863      	ldr	r3, [r4, #4]
d008150c:	1ac0      	subs	r0, r0, r3
d008150e:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0081510:	b10b      	cbz	r3, d0081516 <__sflush_r+0x46>
d0081512:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0081514:	1ac0      	subs	r0, r0, r3
d0081516:	2300      	movs	r3, #0
d0081518:	4602      	mov	r2, r0
d008151a:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d008151c:	6a21      	ldr	r1, [r4, #32]
d008151e:	4628      	mov	r0, r5
d0081520:	47b0      	blx	r6
d0081522:	1c43      	adds	r3, r0, #1
d0081524:	89a3      	ldrh	r3, [r4, #12]
d0081526:	d106      	bne.n	d0081536 <__sflush_r+0x66>
d0081528:	6829      	ldr	r1, [r5, #0]
d008152a:	291d      	cmp	r1, #29
d008152c:	d82c      	bhi.n	d0081588 <__sflush_r+0xb8>
d008152e:	4a2a      	ldr	r2, [pc, #168]	; (d00815d8 <__sflush_r+0x108>)
d0081530:	40ca      	lsrs	r2, r1
d0081532:	07d6      	lsls	r6, r2, #31
d0081534:	d528      	bpl.n	d0081588 <__sflush_r+0xb8>
d0081536:	2200      	movs	r2, #0
d0081538:	6062      	str	r2, [r4, #4]
d008153a:	04d9      	lsls	r1, r3, #19
d008153c:	6922      	ldr	r2, [r4, #16]
d008153e:	6022      	str	r2, [r4, #0]
d0081540:	d504      	bpl.n	d008154c <__sflush_r+0x7c>
d0081542:	1c42      	adds	r2, r0, #1
d0081544:	d101      	bne.n	d008154a <__sflush_r+0x7a>
d0081546:	682b      	ldr	r3, [r5, #0]
d0081548:	b903      	cbnz	r3, d008154c <__sflush_r+0x7c>
d008154a:	6560      	str	r0, [r4, #84]	; 0x54
d008154c:	6b61      	ldr	r1, [r4, #52]	; 0x34
d008154e:	602f      	str	r7, [r5, #0]
d0081550:	2900      	cmp	r1, #0
d0081552:	d0ca      	beq.n	d00814ea <__sflush_r+0x1a>
d0081554:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0081558:	4299      	cmp	r1, r3
d008155a:	d002      	beq.n	d0081562 <__sflush_r+0x92>
d008155c:	4628      	mov	r0, r5
d008155e:	f7ff fe03 	bl	d0081168 <_free_r>
d0081562:	2000      	movs	r0, #0
d0081564:	6360      	str	r0, [r4, #52]	; 0x34
d0081566:	e7c1      	b.n	d00814ec <__sflush_r+0x1c>
d0081568:	6a21      	ldr	r1, [r4, #32]
d008156a:	2301      	movs	r3, #1
d008156c:	4628      	mov	r0, r5
d008156e:	47b0      	blx	r6
d0081570:	1c41      	adds	r1, r0, #1
d0081572:	d1c7      	bne.n	d0081504 <__sflush_r+0x34>
d0081574:	682b      	ldr	r3, [r5, #0]
d0081576:	2b00      	cmp	r3, #0
d0081578:	d0c4      	beq.n	d0081504 <__sflush_r+0x34>
d008157a:	2b1d      	cmp	r3, #29
d008157c:	d001      	beq.n	d0081582 <__sflush_r+0xb2>
d008157e:	2b16      	cmp	r3, #22
d0081580:	d101      	bne.n	d0081586 <__sflush_r+0xb6>
d0081582:	602f      	str	r7, [r5, #0]
d0081584:	e7b1      	b.n	d00814ea <__sflush_r+0x1a>
d0081586:	89a3      	ldrh	r3, [r4, #12]
d0081588:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d008158c:	81a3      	strh	r3, [r4, #12]
d008158e:	e7ad      	b.n	d00814ec <__sflush_r+0x1c>
d0081590:	690f      	ldr	r7, [r1, #16]
d0081592:	2f00      	cmp	r7, #0
d0081594:	d0a9      	beq.n	d00814ea <__sflush_r+0x1a>
d0081596:	0793      	lsls	r3, r2, #30
d0081598:	680e      	ldr	r6, [r1, #0]
d008159a:	bf08      	it	eq
d008159c:	694b      	ldreq	r3, [r1, #20]
d008159e:	600f      	str	r7, [r1, #0]
d00815a0:	bf18      	it	ne
d00815a2:	2300      	movne	r3, #0
d00815a4:	eba6 0807 	sub.w	r8, r6, r7
d00815a8:	608b      	str	r3, [r1, #8]
d00815aa:	f1b8 0f00 	cmp.w	r8, #0
d00815ae:	dd9c      	ble.n	d00814ea <__sflush_r+0x1a>
d00815b0:	6a21      	ldr	r1, [r4, #32]
d00815b2:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d00815b4:	4643      	mov	r3, r8
d00815b6:	463a      	mov	r2, r7
d00815b8:	4628      	mov	r0, r5
d00815ba:	47b0      	blx	r6
d00815bc:	2800      	cmp	r0, #0
d00815be:	dc06      	bgt.n	d00815ce <__sflush_r+0xfe>
d00815c0:	89a3      	ldrh	r3, [r4, #12]
d00815c2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00815c6:	81a3      	strh	r3, [r4, #12]
d00815c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00815cc:	e78e      	b.n	d00814ec <__sflush_r+0x1c>
d00815ce:	4407      	add	r7, r0
d00815d0:	eba8 0800 	sub.w	r8, r8, r0
d00815d4:	e7e9      	b.n	d00815aa <__sflush_r+0xda>
d00815d6:	bf00      	nop
d00815d8:	20400001 	.word	0x20400001

d00815dc <_fflush_r>:
d00815dc:	b538      	push	{r3, r4, r5, lr}
d00815de:	690b      	ldr	r3, [r1, #16]
d00815e0:	4605      	mov	r5, r0
d00815e2:	460c      	mov	r4, r1
d00815e4:	b913      	cbnz	r3, d00815ec <_fflush_r+0x10>
d00815e6:	2500      	movs	r5, #0
d00815e8:	4628      	mov	r0, r5
d00815ea:	bd38      	pop	{r3, r4, r5, pc}
d00815ec:	b118      	cbz	r0, d00815f6 <_fflush_r+0x1a>
d00815ee:	6983      	ldr	r3, [r0, #24]
d00815f0:	b90b      	cbnz	r3, d00815f6 <_fflush_r+0x1a>
d00815f2:	f000 f887 	bl	d0081704 <__sinit>
d00815f6:	4b14      	ldr	r3, [pc, #80]	; (d0081648 <_fflush_r+0x6c>)
d00815f8:	429c      	cmp	r4, r3
d00815fa:	d11b      	bne.n	d0081634 <_fflush_r+0x58>
d00815fc:	686c      	ldr	r4, [r5, #4]
d00815fe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0081602:	2b00      	cmp	r3, #0
d0081604:	d0ef      	beq.n	d00815e6 <_fflush_r+0xa>
d0081606:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0081608:	07d0      	lsls	r0, r2, #31
d008160a:	d404      	bmi.n	d0081616 <_fflush_r+0x3a>
d008160c:	0599      	lsls	r1, r3, #22
d008160e:	d402      	bmi.n	d0081616 <_fflush_r+0x3a>
d0081610:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081612:	f000 f915 	bl	d0081840 <__retarget_lock_acquire_recursive>
d0081616:	4628      	mov	r0, r5
d0081618:	4621      	mov	r1, r4
d008161a:	f7ff ff59 	bl	d00814d0 <__sflush_r>
d008161e:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0081620:	07da      	lsls	r2, r3, #31
d0081622:	4605      	mov	r5, r0
d0081624:	d4e0      	bmi.n	d00815e8 <_fflush_r+0xc>
d0081626:	89a3      	ldrh	r3, [r4, #12]
d0081628:	059b      	lsls	r3, r3, #22
d008162a:	d4dd      	bmi.n	d00815e8 <_fflush_r+0xc>
d008162c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008162e:	f000 f908 	bl	d0081842 <__retarget_lock_release_recursive>
d0081632:	e7d9      	b.n	d00815e8 <_fflush_r+0xc>
d0081634:	4b05      	ldr	r3, [pc, #20]	; (d008164c <_fflush_r+0x70>)
d0081636:	429c      	cmp	r4, r3
d0081638:	d101      	bne.n	d008163e <_fflush_r+0x62>
d008163a:	68ac      	ldr	r4, [r5, #8]
d008163c:	e7df      	b.n	d00815fe <_fflush_r+0x22>
d008163e:	4b04      	ldr	r3, [pc, #16]	; (d0081650 <_fflush_r+0x74>)
d0081640:	429c      	cmp	r4, r3
d0081642:	bf08      	it	eq
d0081644:	68ec      	ldreq	r4, [r5, #12]
d0081646:	e7da      	b.n	d00815fe <_fflush_r+0x22>
d0081648:	d00821ac 	.word	0xd00821ac
d008164c:	d00821cc 	.word	0xd00821cc
d0081650:	d008218c 	.word	0xd008218c

d0081654 <std>:
d0081654:	2300      	movs	r3, #0
d0081656:	b510      	push	{r4, lr}
d0081658:	4604      	mov	r4, r0
d008165a:	e9c0 3300 	strd	r3, r3, [r0]
d008165e:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0081662:	6083      	str	r3, [r0, #8]
d0081664:	8181      	strh	r1, [r0, #12]
d0081666:	6643      	str	r3, [r0, #100]	; 0x64
d0081668:	81c2      	strh	r2, [r0, #14]
d008166a:	6183      	str	r3, [r0, #24]
d008166c:	4619      	mov	r1, r3
d008166e:	2208      	movs	r2, #8
d0081670:	305c      	adds	r0, #92	; 0x5c
d0081672:	f7ff fd71 	bl	d0081158 <memset>
d0081676:	4b05      	ldr	r3, [pc, #20]	; (d008168c <std+0x38>)
d0081678:	6263      	str	r3, [r4, #36]	; 0x24
d008167a:	4b05      	ldr	r3, [pc, #20]	; (d0081690 <std+0x3c>)
d008167c:	62a3      	str	r3, [r4, #40]	; 0x28
d008167e:	4b05      	ldr	r3, [pc, #20]	; (d0081694 <std+0x40>)
d0081680:	62e3      	str	r3, [r4, #44]	; 0x2c
d0081682:	4b05      	ldr	r3, [pc, #20]	; (d0081698 <std+0x44>)
d0081684:	6224      	str	r4, [r4, #32]
d0081686:	6323      	str	r3, [r4, #48]	; 0x30
d0081688:	bd10      	pop	{r4, pc}
d008168a:	bf00      	nop
d008168c:	d0081e85 	.word	0xd0081e85
d0081690:	d0081ea7 	.word	0xd0081ea7
d0081694:	d0081edf 	.word	0xd0081edf
d0081698:	d0081f03 	.word	0xd0081f03

d008169c <_cleanup_r>:
d008169c:	4901      	ldr	r1, [pc, #4]	; (d00816a4 <_cleanup_r+0x8>)
d008169e:	f000 b8af 	b.w	d0081800 <_fwalk_reent>
d00816a2:	bf00      	nop
d00816a4:	d00815dd 	.word	0xd00815dd

d00816a8 <__sfmoreglue>:
d00816a8:	b570      	push	{r4, r5, r6, lr}
d00816aa:	1e4a      	subs	r2, r1, #1
d00816ac:	2568      	movs	r5, #104	; 0x68
d00816ae:	4355      	muls	r5, r2
d00816b0:	460e      	mov	r6, r1
d00816b2:	f105 0174 	add.w	r1, r5, #116	; 0x74
d00816b6:	f7ff fda7 	bl	d0081208 <_malloc_r>
d00816ba:	4604      	mov	r4, r0
d00816bc:	b140      	cbz	r0, d00816d0 <__sfmoreglue+0x28>
d00816be:	2100      	movs	r1, #0
d00816c0:	e9c0 1600 	strd	r1, r6, [r0]
d00816c4:	300c      	adds	r0, #12
d00816c6:	60a0      	str	r0, [r4, #8]
d00816c8:	f105 0268 	add.w	r2, r5, #104	; 0x68
d00816cc:	f7ff fd44 	bl	d0081158 <memset>
d00816d0:	4620      	mov	r0, r4
d00816d2:	bd70      	pop	{r4, r5, r6, pc}

d00816d4 <__sfp_lock_acquire>:
d00816d4:	4801      	ldr	r0, [pc, #4]	; (d00816dc <__sfp_lock_acquire+0x8>)
d00816d6:	f000 b8b3 	b.w	d0081840 <__retarget_lock_acquire_recursive>
d00816da:	bf00      	nop
d00816dc:	d0091ecc 	.word	0xd0091ecc

d00816e0 <__sfp_lock_release>:
d00816e0:	4801      	ldr	r0, [pc, #4]	; (d00816e8 <__sfp_lock_release+0x8>)
d00816e2:	f000 b8ae 	b.w	d0081842 <__retarget_lock_release_recursive>
d00816e6:	bf00      	nop
d00816e8:	d0091ecc 	.word	0xd0091ecc

d00816ec <__sinit_lock_acquire>:
d00816ec:	4801      	ldr	r0, [pc, #4]	; (d00816f4 <__sinit_lock_acquire+0x8>)
d00816ee:	f000 b8a7 	b.w	d0081840 <__retarget_lock_acquire_recursive>
d00816f2:	bf00      	nop
d00816f4:	d0091ec7 	.word	0xd0091ec7

d00816f8 <__sinit_lock_release>:
d00816f8:	4801      	ldr	r0, [pc, #4]	; (d0081700 <__sinit_lock_release+0x8>)
d00816fa:	f000 b8a2 	b.w	d0081842 <__retarget_lock_release_recursive>
d00816fe:	bf00      	nop
d0081700:	d0091ec7 	.word	0xd0091ec7

d0081704 <__sinit>:
d0081704:	b510      	push	{r4, lr}
d0081706:	4604      	mov	r4, r0
d0081708:	f7ff fff0 	bl	d00816ec <__sinit_lock_acquire>
d008170c:	69a3      	ldr	r3, [r4, #24]
d008170e:	b11b      	cbz	r3, d0081718 <__sinit+0x14>
d0081710:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0081714:	f7ff bff0 	b.w	d00816f8 <__sinit_lock_release>
d0081718:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d008171c:	6523      	str	r3, [r4, #80]	; 0x50
d008171e:	4b13      	ldr	r3, [pc, #76]	; (d008176c <__sinit+0x68>)
d0081720:	4a13      	ldr	r2, [pc, #76]	; (d0081770 <__sinit+0x6c>)
d0081722:	681b      	ldr	r3, [r3, #0]
d0081724:	62a2      	str	r2, [r4, #40]	; 0x28
d0081726:	42a3      	cmp	r3, r4
d0081728:	bf04      	itt	eq
d008172a:	2301      	moveq	r3, #1
d008172c:	61a3      	streq	r3, [r4, #24]
d008172e:	4620      	mov	r0, r4
d0081730:	f000 f820 	bl	d0081774 <__sfp>
d0081734:	6060      	str	r0, [r4, #4]
d0081736:	4620      	mov	r0, r4
d0081738:	f000 f81c 	bl	d0081774 <__sfp>
d008173c:	60a0      	str	r0, [r4, #8]
d008173e:	4620      	mov	r0, r4
d0081740:	f000 f818 	bl	d0081774 <__sfp>
d0081744:	2200      	movs	r2, #0
d0081746:	60e0      	str	r0, [r4, #12]
d0081748:	2104      	movs	r1, #4
d008174a:	6860      	ldr	r0, [r4, #4]
d008174c:	f7ff ff82 	bl	d0081654 <std>
d0081750:	68a0      	ldr	r0, [r4, #8]
d0081752:	2201      	movs	r2, #1
d0081754:	2109      	movs	r1, #9
d0081756:	f7ff ff7d 	bl	d0081654 <std>
d008175a:	68e0      	ldr	r0, [r4, #12]
d008175c:	2202      	movs	r2, #2
d008175e:	2112      	movs	r1, #18
d0081760:	f7ff ff78 	bl	d0081654 <std>
d0081764:	2301      	movs	r3, #1
d0081766:	61a3      	str	r3, [r4, #24]
d0081768:	e7d2      	b.n	d0081710 <__sinit+0xc>
d008176a:	bf00      	nop
d008176c:	d0082188 	.word	0xd0082188
d0081770:	d008169d 	.word	0xd008169d

d0081774 <__sfp>:
d0081774:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0081776:	4607      	mov	r7, r0
d0081778:	f7ff ffac 	bl	d00816d4 <__sfp_lock_acquire>
d008177c:	4b1e      	ldr	r3, [pc, #120]	; (d00817f8 <__sfp+0x84>)
d008177e:	681e      	ldr	r6, [r3, #0]
d0081780:	69b3      	ldr	r3, [r6, #24]
d0081782:	b913      	cbnz	r3, d008178a <__sfp+0x16>
d0081784:	4630      	mov	r0, r6
d0081786:	f7ff ffbd 	bl	d0081704 <__sinit>
d008178a:	3648      	adds	r6, #72	; 0x48
d008178c:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0081790:	3b01      	subs	r3, #1
d0081792:	d503      	bpl.n	d008179c <__sfp+0x28>
d0081794:	6833      	ldr	r3, [r6, #0]
d0081796:	b30b      	cbz	r3, d00817dc <__sfp+0x68>
d0081798:	6836      	ldr	r6, [r6, #0]
d008179a:	e7f7      	b.n	d008178c <__sfp+0x18>
d008179c:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d00817a0:	b9d5      	cbnz	r5, d00817d8 <__sfp+0x64>
d00817a2:	4b16      	ldr	r3, [pc, #88]	; (d00817fc <__sfp+0x88>)
d00817a4:	60e3      	str	r3, [r4, #12]
d00817a6:	f104 0058 	add.w	r0, r4, #88	; 0x58
d00817aa:	6665      	str	r5, [r4, #100]	; 0x64
d00817ac:	f000 f847 	bl	d008183e <__retarget_lock_init_recursive>
d00817b0:	f7ff ff96 	bl	d00816e0 <__sfp_lock_release>
d00817b4:	e9c4 5501 	strd	r5, r5, [r4, #4]
d00817b8:	e9c4 5504 	strd	r5, r5, [r4, #16]
d00817bc:	6025      	str	r5, [r4, #0]
d00817be:	61a5      	str	r5, [r4, #24]
d00817c0:	2208      	movs	r2, #8
d00817c2:	4629      	mov	r1, r5
d00817c4:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d00817c8:	f7ff fcc6 	bl	d0081158 <memset>
d00817cc:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d00817d0:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d00817d4:	4620      	mov	r0, r4
d00817d6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00817d8:	3468      	adds	r4, #104	; 0x68
d00817da:	e7d9      	b.n	d0081790 <__sfp+0x1c>
d00817dc:	2104      	movs	r1, #4
d00817de:	4638      	mov	r0, r7
d00817e0:	f7ff ff62 	bl	d00816a8 <__sfmoreglue>
d00817e4:	4604      	mov	r4, r0
d00817e6:	6030      	str	r0, [r6, #0]
d00817e8:	2800      	cmp	r0, #0
d00817ea:	d1d5      	bne.n	d0081798 <__sfp+0x24>
d00817ec:	f7ff ff78 	bl	d00816e0 <__sfp_lock_release>
d00817f0:	230c      	movs	r3, #12
d00817f2:	603b      	str	r3, [r7, #0]
d00817f4:	e7ee      	b.n	d00817d4 <__sfp+0x60>
d00817f6:	bf00      	nop
d00817f8:	d0082188 	.word	0xd0082188
d00817fc:	ffff0001 	.word	0xffff0001

d0081800 <_fwalk_reent>:
d0081800:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0081804:	4606      	mov	r6, r0
d0081806:	4688      	mov	r8, r1
d0081808:	f100 0448 	add.w	r4, r0, #72	; 0x48
d008180c:	2700      	movs	r7, #0
d008180e:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0081812:	f1b9 0901 	subs.w	r9, r9, #1
d0081816:	d505      	bpl.n	d0081824 <_fwalk_reent+0x24>
d0081818:	6824      	ldr	r4, [r4, #0]
d008181a:	2c00      	cmp	r4, #0
d008181c:	d1f7      	bne.n	d008180e <_fwalk_reent+0xe>
d008181e:	4638      	mov	r0, r7
d0081820:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0081824:	89ab      	ldrh	r3, [r5, #12]
d0081826:	2b01      	cmp	r3, #1
d0081828:	d907      	bls.n	d008183a <_fwalk_reent+0x3a>
d008182a:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d008182e:	3301      	adds	r3, #1
d0081830:	d003      	beq.n	d008183a <_fwalk_reent+0x3a>
d0081832:	4629      	mov	r1, r5
d0081834:	4630      	mov	r0, r6
d0081836:	47c0      	blx	r8
d0081838:	4307      	orrs	r7, r0
d008183a:	3568      	adds	r5, #104	; 0x68
d008183c:	e7e9      	b.n	d0081812 <_fwalk_reent+0x12>

d008183e <__retarget_lock_init_recursive>:
d008183e:	4770      	bx	lr

d0081840 <__retarget_lock_acquire_recursive>:
d0081840:	4770      	bx	lr

d0081842 <__retarget_lock_release_recursive>:
d0081842:	4770      	bx	lr

d0081844 <__swhatbuf_r>:
d0081844:	b570      	push	{r4, r5, r6, lr}
d0081846:	460e      	mov	r6, r1
d0081848:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d008184c:	2900      	cmp	r1, #0
d008184e:	b096      	sub	sp, #88	; 0x58
d0081850:	4614      	mov	r4, r2
d0081852:	461d      	mov	r5, r3
d0081854:	da07      	bge.n	d0081866 <__swhatbuf_r+0x22>
d0081856:	2300      	movs	r3, #0
d0081858:	602b      	str	r3, [r5, #0]
d008185a:	89b3      	ldrh	r3, [r6, #12]
d008185c:	061a      	lsls	r2, r3, #24
d008185e:	d410      	bmi.n	d0081882 <__swhatbuf_r+0x3e>
d0081860:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0081864:	e00e      	b.n	d0081884 <__swhatbuf_r+0x40>
d0081866:	466a      	mov	r2, sp
d0081868:	f000 fb60 	bl	d0081f2c <_fstat_r>
d008186c:	2800      	cmp	r0, #0
d008186e:	dbf2      	blt.n	d0081856 <__swhatbuf_r+0x12>
d0081870:	9a01      	ldr	r2, [sp, #4]
d0081872:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0081876:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d008187a:	425a      	negs	r2, r3
d008187c:	415a      	adcs	r2, r3
d008187e:	602a      	str	r2, [r5, #0]
d0081880:	e7ee      	b.n	d0081860 <__swhatbuf_r+0x1c>
d0081882:	2340      	movs	r3, #64	; 0x40
d0081884:	2000      	movs	r0, #0
d0081886:	6023      	str	r3, [r4, #0]
d0081888:	b016      	add	sp, #88	; 0x58
d008188a:	bd70      	pop	{r4, r5, r6, pc}

d008188c <__malloc_lock>:
d008188c:	4801      	ldr	r0, [pc, #4]	; (d0081894 <__malloc_lock+0x8>)
d008188e:	f7ff bfd7 	b.w	d0081840 <__retarget_lock_acquire_recursive>
d0081892:	bf00      	nop
d0081894:	d0091ec8 	.word	0xd0091ec8

d0081898 <__malloc_unlock>:
d0081898:	4801      	ldr	r0, [pc, #4]	; (d00818a0 <__malloc_unlock+0x8>)
d008189a:	f7ff bfd2 	b.w	d0081842 <__retarget_lock_release_recursive>
d008189e:	bf00      	nop
d00818a0:	d0091ec8 	.word	0xd0091ec8

d00818a4 <__ssputs_r>:
d00818a4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00818a8:	688e      	ldr	r6, [r1, #8]
d00818aa:	429e      	cmp	r6, r3
d00818ac:	4682      	mov	sl, r0
d00818ae:	460c      	mov	r4, r1
d00818b0:	4690      	mov	r8, r2
d00818b2:	461f      	mov	r7, r3
d00818b4:	d838      	bhi.n	d0081928 <__ssputs_r+0x84>
d00818b6:	898a      	ldrh	r2, [r1, #12]
d00818b8:	f412 6f90 	tst.w	r2, #1152	; 0x480
d00818bc:	d032      	beq.n	d0081924 <__ssputs_r+0x80>
d00818be:	6825      	ldr	r5, [r4, #0]
d00818c0:	6909      	ldr	r1, [r1, #16]
d00818c2:	eba5 0901 	sub.w	r9, r5, r1
d00818c6:	6965      	ldr	r5, [r4, #20]
d00818c8:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d00818cc:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d00818d0:	3301      	adds	r3, #1
d00818d2:	444b      	add	r3, r9
d00818d4:	106d      	asrs	r5, r5, #1
d00818d6:	429d      	cmp	r5, r3
d00818d8:	bf38      	it	cc
d00818da:	461d      	movcc	r5, r3
d00818dc:	0553      	lsls	r3, r2, #21
d00818de:	d531      	bpl.n	d0081944 <__ssputs_r+0xa0>
d00818e0:	4629      	mov	r1, r5
d00818e2:	f7ff fc91 	bl	d0081208 <_malloc_r>
d00818e6:	4606      	mov	r6, r0
d00818e8:	b950      	cbnz	r0, d0081900 <__ssputs_r+0x5c>
d00818ea:	230c      	movs	r3, #12
d00818ec:	f8ca 3000 	str.w	r3, [sl]
d00818f0:	89a3      	ldrh	r3, [r4, #12]
d00818f2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00818f6:	81a3      	strh	r3, [r4, #12]
d00818f8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00818fc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0081900:	6921      	ldr	r1, [r4, #16]
d0081902:	464a      	mov	r2, r9
d0081904:	f000 fb8c 	bl	d0082020 <memcpy>
d0081908:	89a3      	ldrh	r3, [r4, #12]
d008190a:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d008190e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0081912:	81a3      	strh	r3, [r4, #12]
d0081914:	6126      	str	r6, [r4, #16]
d0081916:	6165      	str	r5, [r4, #20]
d0081918:	444e      	add	r6, r9
d008191a:	eba5 0509 	sub.w	r5, r5, r9
d008191e:	6026      	str	r6, [r4, #0]
d0081920:	60a5      	str	r5, [r4, #8]
d0081922:	463e      	mov	r6, r7
d0081924:	42be      	cmp	r6, r7
d0081926:	d900      	bls.n	d008192a <__ssputs_r+0x86>
d0081928:	463e      	mov	r6, r7
d008192a:	4632      	mov	r2, r6
d008192c:	6820      	ldr	r0, [r4, #0]
d008192e:	4641      	mov	r1, r8
d0081930:	f000 fb84 	bl	d008203c <memmove>
d0081934:	68a3      	ldr	r3, [r4, #8]
d0081936:	6822      	ldr	r2, [r4, #0]
d0081938:	1b9b      	subs	r3, r3, r6
d008193a:	4432      	add	r2, r6
d008193c:	60a3      	str	r3, [r4, #8]
d008193e:	6022      	str	r2, [r4, #0]
d0081940:	2000      	movs	r0, #0
d0081942:	e7db      	b.n	d00818fc <__ssputs_r+0x58>
d0081944:	462a      	mov	r2, r5
d0081946:	f000 fb93 	bl	d0082070 <_realloc_r>
d008194a:	4606      	mov	r6, r0
d008194c:	2800      	cmp	r0, #0
d008194e:	d1e1      	bne.n	d0081914 <__ssputs_r+0x70>
d0081950:	6921      	ldr	r1, [r4, #16]
d0081952:	4650      	mov	r0, sl
d0081954:	f7ff fc08 	bl	d0081168 <_free_r>
d0081958:	e7c7      	b.n	d00818ea <__ssputs_r+0x46>
	...

d008195c <_svfiprintf_r>:
d008195c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0081960:	4698      	mov	r8, r3
d0081962:	898b      	ldrh	r3, [r1, #12]
d0081964:	061b      	lsls	r3, r3, #24
d0081966:	b09d      	sub	sp, #116	; 0x74
d0081968:	4607      	mov	r7, r0
d008196a:	460d      	mov	r5, r1
d008196c:	4614      	mov	r4, r2
d008196e:	d50e      	bpl.n	d008198e <_svfiprintf_r+0x32>
d0081970:	690b      	ldr	r3, [r1, #16]
d0081972:	b963      	cbnz	r3, d008198e <_svfiprintf_r+0x32>
d0081974:	2140      	movs	r1, #64	; 0x40
d0081976:	f7ff fc47 	bl	d0081208 <_malloc_r>
d008197a:	6028      	str	r0, [r5, #0]
d008197c:	6128      	str	r0, [r5, #16]
d008197e:	b920      	cbnz	r0, d008198a <_svfiprintf_r+0x2e>
d0081980:	230c      	movs	r3, #12
d0081982:	603b      	str	r3, [r7, #0]
d0081984:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081988:	e0d1      	b.n	d0081b2e <_svfiprintf_r+0x1d2>
d008198a:	2340      	movs	r3, #64	; 0x40
d008198c:	616b      	str	r3, [r5, #20]
d008198e:	2300      	movs	r3, #0
d0081990:	9309      	str	r3, [sp, #36]	; 0x24
d0081992:	2320      	movs	r3, #32
d0081994:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0081998:	f8cd 800c 	str.w	r8, [sp, #12]
d008199c:	2330      	movs	r3, #48	; 0x30
d008199e:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0081b48 <_svfiprintf_r+0x1ec>
d00819a2:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d00819a6:	f04f 0901 	mov.w	r9, #1
d00819aa:	4623      	mov	r3, r4
d00819ac:	469a      	mov	sl, r3
d00819ae:	f813 2b01 	ldrb.w	r2, [r3], #1
d00819b2:	b10a      	cbz	r2, d00819b8 <_svfiprintf_r+0x5c>
d00819b4:	2a25      	cmp	r2, #37	; 0x25
d00819b6:	d1f9      	bne.n	d00819ac <_svfiprintf_r+0x50>
d00819b8:	ebba 0b04 	subs.w	fp, sl, r4
d00819bc:	d00b      	beq.n	d00819d6 <_svfiprintf_r+0x7a>
d00819be:	465b      	mov	r3, fp
d00819c0:	4622      	mov	r2, r4
d00819c2:	4629      	mov	r1, r5
d00819c4:	4638      	mov	r0, r7
d00819c6:	f7ff ff6d 	bl	d00818a4 <__ssputs_r>
d00819ca:	3001      	adds	r0, #1
d00819cc:	f000 80aa 	beq.w	d0081b24 <_svfiprintf_r+0x1c8>
d00819d0:	9a09      	ldr	r2, [sp, #36]	; 0x24
d00819d2:	445a      	add	r2, fp
d00819d4:	9209      	str	r2, [sp, #36]	; 0x24
d00819d6:	f89a 3000 	ldrb.w	r3, [sl]
d00819da:	2b00      	cmp	r3, #0
d00819dc:	f000 80a2 	beq.w	d0081b24 <_svfiprintf_r+0x1c8>
d00819e0:	2300      	movs	r3, #0
d00819e2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d00819e6:	e9cd 2305 	strd	r2, r3, [sp, #20]
d00819ea:	f10a 0a01 	add.w	sl, sl, #1
d00819ee:	9304      	str	r3, [sp, #16]
d00819f0:	9307      	str	r3, [sp, #28]
d00819f2:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d00819f6:	931a      	str	r3, [sp, #104]	; 0x68
d00819f8:	4654      	mov	r4, sl
d00819fa:	2205      	movs	r2, #5
d00819fc:	f814 1b01 	ldrb.w	r1, [r4], #1
d0081a00:	4851      	ldr	r0, [pc, #324]	; (d0081b48 <_svfiprintf_r+0x1ec>)
d0081a02:	f000 fabd 	bl	d0081f80 <memchr>
d0081a06:	9a04      	ldr	r2, [sp, #16]
d0081a08:	b9d8      	cbnz	r0, d0081a42 <_svfiprintf_r+0xe6>
d0081a0a:	06d0      	lsls	r0, r2, #27
d0081a0c:	bf44      	itt	mi
d0081a0e:	2320      	movmi	r3, #32
d0081a10:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0081a14:	0711      	lsls	r1, r2, #28
d0081a16:	bf44      	itt	mi
d0081a18:	232b      	movmi	r3, #43	; 0x2b
d0081a1a:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0081a1e:	f89a 3000 	ldrb.w	r3, [sl]
d0081a22:	2b2a      	cmp	r3, #42	; 0x2a
d0081a24:	d015      	beq.n	d0081a52 <_svfiprintf_r+0xf6>
d0081a26:	9a07      	ldr	r2, [sp, #28]
d0081a28:	4654      	mov	r4, sl
d0081a2a:	2000      	movs	r0, #0
d0081a2c:	f04f 0c0a 	mov.w	ip, #10
d0081a30:	4621      	mov	r1, r4
d0081a32:	f811 3b01 	ldrb.w	r3, [r1], #1
d0081a36:	3b30      	subs	r3, #48	; 0x30
d0081a38:	2b09      	cmp	r3, #9
d0081a3a:	d94e      	bls.n	d0081ada <_svfiprintf_r+0x17e>
d0081a3c:	b1b0      	cbz	r0, d0081a6c <_svfiprintf_r+0x110>
d0081a3e:	9207      	str	r2, [sp, #28]
d0081a40:	e014      	b.n	d0081a6c <_svfiprintf_r+0x110>
d0081a42:	eba0 0308 	sub.w	r3, r0, r8
d0081a46:	fa09 f303 	lsl.w	r3, r9, r3
d0081a4a:	4313      	orrs	r3, r2
d0081a4c:	9304      	str	r3, [sp, #16]
d0081a4e:	46a2      	mov	sl, r4
d0081a50:	e7d2      	b.n	d00819f8 <_svfiprintf_r+0x9c>
d0081a52:	9b03      	ldr	r3, [sp, #12]
d0081a54:	1d19      	adds	r1, r3, #4
d0081a56:	681b      	ldr	r3, [r3, #0]
d0081a58:	9103      	str	r1, [sp, #12]
d0081a5a:	2b00      	cmp	r3, #0
d0081a5c:	bfbb      	ittet	lt
d0081a5e:	425b      	neglt	r3, r3
d0081a60:	f042 0202 	orrlt.w	r2, r2, #2
d0081a64:	9307      	strge	r3, [sp, #28]
d0081a66:	9307      	strlt	r3, [sp, #28]
d0081a68:	bfb8      	it	lt
d0081a6a:	9204      	strlt	r2, [sp, #16]
d0081a6c:	7823      	ldrb	r3, [r4, #0]
d0081a6e:	2b2e      	cmp	r3, #46	; 0x2e
d0081a70:	d10c      	bne.n	d0081a8c <_svfiprintf_r+0x130>
d0081a72:	7863      	ldrb	r3, [r4, #1]
d0081a74:	2b2a      	cmp	r3, #42	; 0x2a
d0081a76:	d135      	bne.n	d0081ae4 <_svfiprintf_r+0x188>
d0081a78:	9b03      	ldr	r3, [sp, #12]
d0081a7a:	1d1a      	adds	r2, r3, #4
d0081a7c:	681b      	ldr	r3, [r3, #0]
d0081a7e:	9203      	str	r2, [sp, #12]
d0081a80:	2b00      	cmp	r3, #0
d0081a82:	bfb8      	it	lt
d0081a84:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0081a88:	3402      	adds	r4, #2
d0081a8a:	9305      	str	r3, [sp, #20]
d0081a8c:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0081b58 <_svfiprintf_r+0x1fc>
d0081a90:	7821      	ldrb	r1, [r4, #0]
d0081a92:	2203      	movs	r2, #3
d0081a94:	4650      	mov	r0, sl
d0081a96:	f000 fa73 	bl	d0081f80 <memchr>
d0081a9a:	b140      	cbz	r0, d0081aae <_svfiprintf_r+0x152>
d0081a9c:	2340      	movs	r3, #64	; 0x40
d0081a9e:	eba0 000a 	sub.w	r0, r0, sl
d0081aa2:	fa03 f000 	lsl.w	r0, r3, r0
d0081aa6:	9b04      	ldr	r3, [sp, #16]
d0081aa8:	4303      	orrs	r3, r0
d0081aaa:	3401      	adds	r4, #1
d0081aac:	9304      	str	r3, [sp, #16]
d0081aae:	f814 1b01 	ldrb.w	r1, [r4], #1
d0081ab2:	4826      	ldr	r0, [pc, #152]	; (d0081b4c <_svfiprintf_r+0x1f0>)
d0081ab4:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0081ab8:	2206      	movs	r2, #6
d0081aba:	f000 fa61 	bl	d0081f80 <memchr>
d0081abe:	2800      	cmp	r0, #0
d0081ac0:	d038      	beq.n	d0081b34 <_svfiprintf_r+0x1d8>
d0081ac2:	4b23      	ldr	r3, [pc, #140]	; (d0081b50 <_svfiprintf_r+0x1f4>)
d0081ac4:	bb1b      	cbnz	r3, d0081b0e <_svfiprintf_r+0x1b2>
d0081ac6:	9b03      	ldr	r3, [sp, #12]
d0081ac8:	3307      	adds	r3, #7
d0081aca:	f023 0307 	bic.w	r3, r3, #7
d0081ace:	3308      	adds	r3, #8
d0081ad0:	9303      	str	r3, [sp, #12]
d0081ad2:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0081ad4:	4433      	add	r3, r6
d0081ad6:	9309      	str	r3, [sp, #36]	; 0x24
d0081ad8:	e767      	b.n	d00819aa <_svfiprintf_r+0x4e>
d0081ada:	fb0c 3202 	mla	r2, ip, r2, r3
d0081ade:	460c      	mov	r4, r1
d0081ae0:	2001      	movs	r0, #1
d0081ae2:	e7a5      	b.n	d0081a30 <_svfiprintf_r+0xd4>
d0081ae4:	2300      	movs	r3, #0
d0081ae6:	3401      	adds	r4, #1
d0081ae8:	9305      	str	r3, [sp, #20]
d0081aea:	4619      	mov	r1, r3
d0081aec:	f04f 0c0a 	mov.w	ip, #10
d0081af0:	4620      	mov	r0, r4
d0081af2:	f810 2b01 	ldrb.w	r2, [r0], #1
d0081af6:	3a30      	subs	r2, #48	; 0x30
d0081af8:	2a09      	cmp	r2, #9
d0081afa:	d903      	bls.n	d0081b04 <_svfiprintf_r+0x1a8>
d0081afc:	2b00      	cmp	r3, #0
d0081afe:	d0c5      	beq.n	d0081a8c <_svfiprintf_r+0x130>
d0081b00:	9105      	str	r1, [sp, #20]
d0081b02:	e7c3      	b.n	d0081a8c <_svfiprintf_r+0x130>
d0081b04:	fb0c 2101 	mla	r1, ip, r1, r2
d0081b08:	4604      	mov	r4, r0
d0081b0a:	2301      	movs	r3, #1
d0081b0c:	e7f0      	b.n	d0081af0 <_svfiprintf_r+0x194>
d0081b0e:	ab03      	add	r3, sp, #12
d0081b10:	9300      	str	r3, [sp, #0]
d0081b12:	462a      	mov	r2, r5
d0081b14:	4b0f      	ldr	r3, [pc, #60]	; (d0081b54 <_svfiprintf_r+0x1f8>)
d0081b16:	a904      	add	r1, sp, #16
d0081b18:	4638      	mov	r0, r7
d0081b1a:	f3af 8000 	nop.w
d0081b1e:	1c42      	adds	r2, r0, #1
d0081b20:	4606      	mov	r6, r0
d0081b22:	d1d6      	bne.n	d0081ad2 <_svfiprintf_r+0x176>
d0081b24:	89ab      	ldrh	r3, [r5, #12]
d0081b26:	065b      	lsls	r3, r3, #25
d0081b28:	f53f af2c 	bmi.w	d0081984 <_svfiprintf_r+0x28>
d0081b2c:	9809      	ldr	r0, [sp, #36]	; 0x24
d0081b2e:	b01d      	add	sp, #116	; 0x74
d0081b30:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0081b34:	ab03      	add	r3, sp, #12
d0081b36:	9300      	str	r3, [sp, #0]
d0081b38:	462a      	mov	r2, r5
d0081b3a:	4b06      	ldr	r3, [pc, #24]	; (d0081b54 <_svfiprintf_r+0x1f8>)
d0081b3c:	a904      	add	r1, sp, #16
d0081b3e:	4638      	mov	r0, r7
d0081b40:	f000 f87a 	bl	d0081c38 <_printf_i>
d0081b44:	e7eb      	b.n	d0081b1e <_svfiprintf_r+0x1c2>
d0081b46:	bf00      	nop
d0081b48:	d00821ec 	.word	0xd00821ec
d0081b4c:	d00821f6 	.word	0xd00821f6
d0081b50:	00000000 	.word	0x00000000
d0081b54:	d00818a5 	.word	0xd00818a5
d0081b58:	d00821f2 	.word	0xd00821f2

d0081b5c <_printf_common>:
d0081b5c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0081b60:	4616      	mov	r6, r2
d0081b62:	4699      	mov	r9, r3
d0081b64:	688a      	ldr	r2, [r1, #8]
d0081b66:	690b      	ldr	r3, [r1, #16]
d0081b68:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0081b6c:	4293      	cmp	r3, r2
d0081b6e:	bfb8      	it	lt
d0081b70:	4613      	movlt	r3, r2
d0081b72:	6033      	str	r3, [r6, #0]
d0081b74:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0081b78:	4607      	mov	r7, r0
d0081b7a:	460c      	mov	r4, r1
d0081b7c:	b10a      	cbz	r2, d0081b82 <_printf_common+0x26>
d0081b7e:	3301      	adds	r3, #1
d0081b80:	6033      	str	r3, [r6, #0]
d0081b82:	6823      	ldr	r3, [r4, #0]
d0081b84:	0699      	lsls	r1, r3, #26
d0081b86:	bf42      	ittt	mi
d0081b88:	6833      	ldrmi	r3, [r6, #0]
d0081b8a:	3302      	addmi	r3, #2
d0081b8c:	6033      	strmi	r3, [r6, #0]
d0081b8e:	6825      	ldr	r5, [r4, #0]
d0081b90:	f015 0506 	ands.w	r5, r5, #6
d0081b94:	d106      	bne.n	d0081ba4 <_printf_common+0x48>
d0081b96:	f104 0a19 	add.w	sl, r4, #25
d0081b9a:	68e3      	ldr	r3, [r4, #12]
d0081b9c:	6832      	ldr	r2, [r6, #0]
d0081b9e:	1a9b      	subs	r3, r3, r2
d0081ba0:	42ab      	cmp	r3, r5
d0081ba2:	dc26      	bgt.n	d0081bf2 <_printf_common+0x96>
d0081ba4:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0081ba8:	1e13      	subs	r3, r2, #0
d0081baa:	6822      	ldr	r2, [r4, #0]
d0081bac:	bf18      	it	ne
d0081bae:	2301      	movne	r3, #1
d0081bb0:	0692      	lsls	r2, r2, #26
d0081bb2:	d42b      	bmi.n	d0081c0c <_printf_common+0xb0>
d0081bb4:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0081bb8:	4649      	mov	r1, r9
d0081bba:	4638      	mov	r0, r7
d0081bbc:	47c0      	blx	r8
d0081bbe:	3001      	adds	r0, #1
d0081bc0:	d01e      	beq.n	d0081c00 <_printf_common+0xa4>
d0081bc2:	6823      	ldr	r3, [r4, #0]
d0081bc4:	68e5      	ldr	r5, [r4, #12]
d0081bc6:	6832      	ldr	r2, [r6, #0]
d0081bc8:	f003 0306 	and.w	r3, r3, #6
d0081bcc:	2b04      	cmp	r3, #4
d0081bce:	bf08      	it	eq
d0081bd0:	1aad      	subeq	r5, r5, r2
d0081bd2:	68a3      	ldr	r3, [r4, #8]
d0081bd4:	6922      	ldr	r2, [r4, #16]
d0081bd6:	bf0c      	ite	eq
d0081bd8:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0081bdc:	2500      	movne	r5, #0
d0081bde:	4293      	cmp	r3, r2
d0081be0:	bfc4      	itt	gt
d0081be2:	1a9b      	subgt	r3, r3, r2
d0081be4:	18ed      	addgt	r5, r5, r3
d0081be6:	2600      	movs	r6, #0
d0081be8:	341a      	adds	r4, #26
d0081bea:	42b5      	cmp	r5, r6
d0081bec:	d11a      	bne.n	d0081c24 <_printf_common+0xc8>
d0081bee:	2000      	movs	r0, #0
d0081bf0:	e008      	b.n	d0081c04 <_printf_common+0xa8>
d0081bf2:	2301      	movs	r3, #1
d0081bf4:	4652      	mov	r2, sl
d0081bf6:	4649      	mov	r1, r9
d0081bf8:	4638      	mov	r0, r7
d0081bfa:	47c0      	blx	r8
d0081bfc:	3001      	adds	r0, #1
d0081bfe:	d103      	bne.n	d0081c08 <_printf_common+0xac>
d0081c00:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081c04:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0081c08:	3501      	adds	r5, #1
d0081c0a:	e7c6      	b.n	d0081b9a <_printf_common+0x3e>
d0081c0c:	18e1      	adds	r1, r4, r3
d0081c0e:	1c5a      	adds	r2, r3, #1
d0081c10:	2030      	movs	r0, #48	; 0x30
d0081c12:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0081c16:	4422      	add	r2, r4
d0081c18:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0081c1c:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0081c20:	3302      	adds	r3, #2
d0081c22:	e7c7      	b.n	d0081bb4 <_printf_common+0x58>
d0081c24:	2301      	movs	r3, #1
d0081c26:	4622      	mov	r2, r4
d0081c28:	4649      	mov	r1, r9
d0081c2a:	4638      	mov	r0, r7
d0081c2c:	47c0      	blx	r8
d0081c2e:	3001      	adds	r0, #1
d0081c30:	d0e6      	beq.n	d0081c00 <_printf_common+0xa4>
d0081c32:	3601      	adds	r6, #1
d0081c34:	e7d9      	b.n	d0081bea <_printf_common+0x8e>
	...

d0081c38 <_printf_i>:
d0081c38:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0081c3c:	460c      	mov	r4, r1
d0081c3e:	4691      	mov	r9, r2
d0081c40:	7e27      	ldrb	r7, [r4, #24]
d0081c42:	990c      	ldr	r1, [sp, #48]	; 0x30
d0081c44:	2f78      	cmp	r7, #120	; 0x78
d0081c46:	4680      	mov	r8, r0
d0081c48:	469a      	mov	sl, r3
d0081c4a:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0081c4e:	d807      	bhi.n	d0081c60 <_printf_i+0x28>
d0081c50:	2f62      	cmp	r7, #98	; 0x62
d0081c52:	d80a      	bhi.n	d0081c6a <_printf_i+0x32>
d0081c54:	2f00      	cmp	r7, #0
d0081c56:	f000 80d8 	beq.w	d0081e0a <_printf_i+0x1d2>
d0081c5a:	2f58      	cmp	r7, #88	; 0x58
d0081c5c:	f000 80a3 	beq.w	d0081da6 <_printf_i+0x16e>
d0081c60:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0081c64:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0081c68:	e03a      	b.n	d0081ce0 <_printf_i+0xa8>
d0081c6a:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0081c6e:	2b15      	cmp	r3, #21
d0081c70:	d8f6      	bhi.n	d0081c60 <_printf_i+0x28>
d0081c72:	a001      	add	r0, pc, #4	; (adr r0, d0081c78 <_printf_i+0x40>)
d0081c74:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0081c78:	d0081cd1 	.word	0xd0081cd1
d0081c7c:	d0081ce5 	.word	0xd0081ce5
d0081c80:	d0081c61 	.word	0xd0081c61
d0081c84:	d0081c61 	.word	0xd0081c61
d0081c88:	d0081c61 	.word	0xd0081c61
d0081c8c:	d0081c61 	.word	0xd0081c61
d0081c90:	d0081ce5 	.word	0xd0081ce5
d0081c94:	d0081c61 	.word	0xd0081c61
d0081c98:	d0081c61 	.word	0xd0081c61
d0081c9c:	d0081c61 	.word	0xd0081c61
d0081ca0:	d0081c61 	.word	0xd0081c61
d0081ca4:	d0081df1 	.word	0xd0081df1
d0081ca8:	d0081d15 	.word	0xd0081d15
d0081cac:	d0081dd3 	.word	0xd0081dd3
d0081cb0:	d0081c61 	.word	0xd0081c61
d0081cb4:	d0081c61 	.word	0xd0081c61
d0081cb8:	d0081e13 	.word	0xd0081e13
d0081cbc:	d0081c61 	.word	0xd0081c61
d0081cc0:	d0081d15 	.word	0xd0081d15
d0081cc4:	d0081c61 	.word	0xd0081c61
d0081cc8:	d0081c61 	.word	0xd0081c61
d0081ccc:	d0081ddb 	.word	0xd0081ddb
d0081cd0:	680b      	ldr	r3, [r1, #0]
d0081cd2:	1d1a      	adds	r2, r3, #4
d0081cd4:	681b      	ldr	r3, [r3, #0]
d0081cd6:	600a      	str	r2, [r1, #0]
d0081cd8:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0081cdc:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0081ce0:	2301      	movs	r3, #1
d0081ce2:	e0a3      	b.n	d0081e2c <_printf_i+0x1f4>
d0081ce4:	6825      	ldr	r5, [r4, #0]
d0081ce6:	6808      	ldr	r0, [r1, #0]
d0081ce8:	062e      	lsls	r6, r5, #24
d0081cea:	f100 0304 	add.w	r3, r0, #4
d0081cee:	d50a      	bpl.n	d0081d06 <_printf_i+0xce>
d0081cf0:	6805      	ldr	r5, [r0, #0]
d0081cf2:	600b      	str	r3, [r1, #0]
d0081cf4:	2d00      	cmp	r5, #0
d0081cf6:	da03      	bge.n	d0081d00 <_printf_i+0xc8>
d0081cf8:	232d      	movs	r3, #45	; 0x2d
d0081cfa:	426d      	negs	r5, r5
d0081cfc:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0081d00:	485e      	ldr	r0, [pc, #376]	; (d0081e7c <_printf_i+0x244>)
d0081d02:	230a      	movs	r3, #10
d0081d04:	e019      	b.n	d0081d3a <_printf_i+0x102>
d0081d06:	f015 0f40 	tst.w	r5, #64	; 0x40
d0081d0a:	6805      	ldr	r5, [r0, #0]
d0081d0c:	600b      	str	r3, [r1, #0]
d0081d0e:	bf18      	it	ne
d0081d10:	b22d      	sxthne	r5, r5
d0081d12:	e7ef      	b.n	d0081cf4 <_printf_i+0xbc>
d0081d14:	680b      	ldr	r3, [r1, #0]
d0081d16:	6825      	ldr	r5, [r4, #0]
d0081d18:	1d18      	adds	r0, r3, #4
d0081d1a:	6008      	str	r0, [r1, #0]
d0081d1c:	0628      	lsls	r0, r5, #24
d0081d1e:	d501      	bpl.n	d0081d24 <_printf_i+0xec>
d0081d20:	681d      	ldr	r5, [r3, #0]
d0081d22:	e002      	b.n	d0081d2a <_printf_i+0xf2>
d0081d24:	0669      	lsls	r1, r5, #25
d0081d26:	d5fb      	bpl.n	d0081d20 <_printf_i+0xe8>
d0081d28:	881d      	ldrh	r5, [r3, #0]
d0081d2a:	4854      	ldr	r0, [pc, #336]	; (d0081e7c <_printf_i+0x244>)
d0081d2c:	2f6f      	cmp	r7, #111	; 0x6f
d0081d2e:	bf0c      	ite	eq
d0081d30:	2308      	moveq	r3, #8
d0081d32:	230a      	movne	r3, #10
d0081d34:	2100      	movs	r1, #0
d0081d36:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0081d3a:	6866      	ldr	r6, [r4, #4]
d0081d3c:	60a6      	str	r6, [r4, #8]
d0081d3e:	2e00      	cmp	r6, #0
d0081d40:	bfa2      	ittt	ge
d0081d42:	6821      	ldrge	r1, [r4, #0]
d0081d44:	f021 0104 	bicge.w	r1, r1, #4
d0081d48:	6021      	strge	r1, [r4, #0]
d0081d4a:	b90d      	cbnz	r5, d0081d50 <_printf_i+0x118>
d0081d4c:	2e00      	cmp	r6, #0
d0081d4e:	d04d      	beq.n	d0081dec <_printf_i+0x1b4>
d0081d50:	4616      	mov	r6, r2
d0081d52:	fbb5 f1f3 	udiv	r1, r5, r3
d0081d56:	fb03 5711 	mls	r7, r3, r1, r5
d0081d5a:	5dc7      	ldrb	r7, [r0, r7]
d0081d5c:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0081d60:	462f      	mov	r7, r5
d0081d62:	42bb      	cmp	r3, r7
d0081d64:	460d      	mov	r5, r1
d0081d66:	d9f4      	bls.n	d0081d52 <_printf_i+0x11a>
d0081d68:	2b08      	cmp	r3, #8
d0081d6a:	d10b      	bne.n	d0081d84 <_printf_i+0x14c>
d0081d6c:	6823      	ldr	r3, [r4, #0]
d0081d6e:	07df      	lsls	r7, r3, #31
d0081d70:	d508      	bpl.n	d0081d84 <_printf_i+0x14c>
d0081d72:	6923      	ldr	r3, [r4, #16]
d0081d74:	6861      	ldr	r1, [r4, #4]
d0081d76:	4299      	cmp	r1, r3
d0081d78:	bfde      	ittt	le
d0081d7a:	2330      	movle	r3, #48	; 0x30
d0081d7c:	f806 3c01 	strble.w	r3, [r6, #-1]
d0081d80:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0081d84:	1b92      	subs	r2, r2, r6
d0081d86:	6122      	str	r2, [r4, #16]
d0081d88:	f8cd a000 	str.w	sl, [sp]
d0081d8c:	464b      	mov	r3, r9
d0081d8e:	aa03      	add	r2, sp, #12
d0081d90:	4621      	mov	r1, r4
d0081d92:	4640      	mov	r0, r8
d0081d94:	f7ff fee2 	bl	d0081b5c <_printf_common>
d0081d98:	3001      	adds	r0, #1
d0081d9a:	d14c      	bne.n	d0081e36 <_printf_i+0x1fe>
d0081d9c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081da0:	b004      	add	sp, #16
d0081da2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0081da6:	4835      	ldr	r0, [pc, #212]	; (d0081e7c <_printf_i+0x244>)
d0081da8:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0081dac:	6823      	ldr	r3, [r4, #0]
d0081dae:	680e      	ldr	r6, [r1, #0]
d0081db0:	061f      	lsls	r7, r3, #24
d0081db2:	f856 5b04 	ldr.w	r5, [r6], #4
d0081db6:	600e      	str	r6, [r1, #0]
d0081db8:	d514      	bpl.n	d0081de4 <_printf_i+0x1ac>
d0081dba:	07d9      	lsls	r1, r3, #31
d0081dbc:	bf44      	itt	mi
d0081dbe:	f043 0320 	orrmi.w	r3, r3, #32
d0081dc2:	6023      	strmi	r3, [r4, #0]
d0081dc4:	b91d      	cbnz	r5, d0081dce <_printf_i+0x196>
d0081dc6:	6823      	ldr	r3, [r4, #0]
d0081dc8:	f023 0320 	bic.w	r3, r3, #32
d0081dcc:	6023      	str	r3, [r4, #0]
d0081dce:	2310      	movs	r3, #16
d0081dd0:	e7b0      	b.n	d0081d34 <_printf_i+0xfc>
d0081dd2:	6823      	ldr	r3, [r4, #0]
d0081dd4:	f043 0320 	orr.w	r3, r3, #32
d0081dd8:	6023      	str	r3, [r4, #0]
d0081dda:	2378      	movs	r3, #120	; 0x78
d0081ddc:	4828      	ldr	r0, [pc, #160]	; (d0081e80 <_printf_i+0x248>)
d0081dde:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0081de2:	e7e3      	b.n	d0081dac <_printf_i+0x174>
d0081de4:	065e      	lsls	r6, r3, #25
d0081de6:	bf48      	it	mi
d0081de8:	b2ad      	uxthmi	r5, r5
d0081dea:	e7e6      	b.n	d0081dba <_printf_i+0x182>
d0081dec:	4616      	mov	r6, r2
d0081dee:	e7bb      	b.n	d0081d68 <_printf_i+0x130>
d0081df0:	680b      	ldr	r3, [r1, #0]
d0081df2:	6826      	ldr	r6, [r4, #0]
d0081df4:	6960      	ldr	r0, [r4, #20]
d0081df6:	1d1d      	adds	r5, r3, #4
d0081df8:	600d      	str	r5, [r1, #0]
d0081dfa:	0635      	lsls	r5, r6, #24
d0081dfc:	681b      	ldr	r3, [r3, #0]
d0081dfe:	d501      	bpl.n	d0081e04 <_printf_i+0x1cc>
d0081e00:	6018      	str	r0, [r3, #0]
d0081e02:	e002      	b.n	d0081e0a <_printf_i+0x1d2>
d0081e04:	0671      	lsls	r1, r6, #25
d0081e06:	d5fb      	bpl.n	d0081e00 <_printf_i+0x1c8>
d0081e08:	8018      	strh	r0, [r3, #0]
d0081e0a:	2300      	movs	r3, #0
d0081e0c:	6123      	str	r3, [r4, #16]
d0081e0e:	4616      	mov	r6, r2
d0081e10:	e7ba      	b.n	d0081d88 <_printf_i+0x150>
d0081e12:	680b      	ldr	r3, [r1, #0]
d0081e14:	1d1a      	adds	r2, r3, #4
d0081e16:	600a      	str	r2, [r1, #0]
d0081e18:	681e      	ldr	r6, [r3, #0]
d0081e1a:	6862      	ldr	r2, [r4, #4]
d0081e1c:	2100      	movs	r1, #0
d0081e1e:	4630      	mov	r0, r6
d0081e20:	f000 f8ae 	bl	d0081f80 <memchr>
d0081e24:	b108      	cbz	r0, d0081e2a <_printf_i+0x1f2>
d0081e26:	1b80      	subs	r0, r0, r6
d0081e28:	6060      	str	r0, [r4, #4]
d0081e2a:	6863      	ldr	r3, [r4, #4]
d0081e2c:	6123      	str	r3, [r4, #16]
d0081e2e:	2300      	movs	r3, #0
d0081e30:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0081e34:	e7a8      	b.n	d0081d88 <_printf_i+0x150>
d0081e36:	6923      	ldr	r3, [r4, #16]
d0081e38:	4632      	mov	r2, r6
d0081e3a:	4649      	mov	r1, r9
d0081e3c:	4640      	mov	r0, r8
d0081e3e:	47d0      	blx	sl
d0081e40:	3001      	adds	r0, #1
d0081e42:	d0ab      	beq.n	d0081d9c <_printf_i+0x164>
d0081e44:	6823      	ldr	r3, [r4, #0]
d0081e46:	079b      	lsls	r3, r3, #30
d0081e48:	d413      	bmi.n	d0081e72 <_printf_i+0x23a>
d0081e4a:	68e0      	ldr	r0, [r4, #12]
d0081e4c:	9b03      	ldr	r3, [sp, #12]
d0081e4e:	4298      	cmp	r0, r3
d0081e50:	bfb8      	it	lt
d0081e52:	4618      	movlt	r0, r3
d0081e54:	e7a4      	b.n	d0081da0 <_printf_i+0x168>
d0081e56:	2301      	movs	r3, #1
d0081e58:	4632      	mov	r2, r6
d0081e5a:	4649      	mov	r1, r9
d0081e5c:	4640      	mov	r0, r8
d0081e5e:	47d0      	blx	sl
d0081e60:	3001      	adds	r0, #1
d0081e62:	d09b      	beq.n	d0081d9c <_printf_i+0x164>
d0081e64:	3501      	adds	r5, #1
d0081e66:	68e3      	ldr	r3, [r4, #12]
d0081e68:	9903      	ldr	r1, [sp, #12]
d0081e6a:	1a5b      	subs	r3, r3, r1
d0081e6c:	42ab      	cmp	r3, r5
d0081e6e:	dcf2      	bgt.n	d0081e56 <_printf_i+0x21e>
d0081e70:	e7eb      	b.n	d0081e4a <_printf_i+0x212>
d0081e72:	2500      	movs	r5, #0
d0081e74:	f104 0619 	add.w	r6, r4, #25
d0081e78:	e7f5      	b.n	d0081e66 <_printf_i+0x22e>
d0081e7a:	bf00      	nop
d0081e7c:	d00821fd 	.word	0xd00821fd
d0081e80:	d008220e 	.word	0xd008220e

d0081e84 <__sread>:
d0081e84:	b510      	push	{r4, lr}
d0081e86:	460c      	mov	r4, r1
d0081e88:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081e8c:	f000 f916 	bl	d00820bc <_read_r>
d0081e90:	2800      	cmp	r0, #0
d0081e92:	bfab      	itete	ge
d0081e94:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0081e96:	89a3      	ldrhlt	r3, [r4, #12]
d0081e98:	181b      	addge	r3, r3, r0
d0081e9a:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0081e9e:	bfac      	ite	ge
d0081ea0:	6563      	strge	r3, [r4, #84]	; 0x54
d0081ea2:	81a3      	strhlt	r3, [r4, #12]
d0081ea4:	bd10      	pop	{r4, pc}

d0081ea6 <__swrite>:
d0081ea6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0081eaa:	461f      	mov	r7, r3
d0081eac:	898b      	ldrh	r3, [r1, #12]
d0081eae:	05db      	lsls	r3, r3, #23
d0081eb0:	4605      	mov	r5, r0
d0081eb2:	460c      	mov	r4, r1
d0081eb4:	4616      	mov	r6, r2
d0081eb6:	d505      	bpl.n	d0081ec4 <__swrite+0x1e>
d0081eb8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081ebc:	2302      	movs	r3, #2
d0081ebe:	2200      	movs	r2, #0
d0081ec0:	f000 f846 	bl	d0081f50 <_lseek_r>
d0081ec4:	89a3      	ldrh	r3, [r4, #12]
d0081ec6:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0081eca:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0081ece:	81a3      	strh	r3, [r4, #12]
d0081ed0:	4632      	mov	r2, r6
d0081ed2:	463b      	mov	r3, r7
d0081ed4:	4628      	mov	r0, r5
d0081ed6:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0081eda:	f7fe b8c9 	b.w	d0080070 <_write_r>

d0081ede <__sseek>:
d0081ede:	b510      	push	{r4, lr}
d0081ee0:	460c      	mov	r4, r1
d0081ee2:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081ee6:	f000 f833 	bl	d0081f50 <_lseek_r>
d0081eea:	1c43      	adds	r3, r0, #1
d0081eec:	89a3      	ldrh	r3, [r4, #12]
d0081eee:	bf15      	itete	ne
d0081ef0:	6560      	strne	r0, [r4, #84]	; 0x54
d0081ef2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0081ef6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0081efa:	81a3      	strheq	r3, [r4, #12]
d0081efc:	bf18      	it	ne
d0081efe:	81a3      	strhne	r3, [r4, #12]
d0081f00:	bd10      	pop	{r4, pc}

d0081f02 <__sclose>:
d0081f02:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081f06:	f000 b801 	b.w	d0081f0c <_close_r>
	...

d0081f0c <_close_r>:
d0081f0c:	b538      	push	{r3, r4, r5, lr}
d0081f0e:	4d06      	ldr	r5, [pc, #24]	; (d0081f28 <_close_r+0x1c>)
d0081f10:	2300      	movs	r3, #0
d0081f12:	4604      	mov	r4, r0
d0081f14:	4608      	mov	r0, r1
d0081f16:	602b      	str	r3, [r5, #0]
d0081f18:	f7fe f8e4 	bl	d00800e4 <_close>
d0081f1c:	1c43      	adds	r3, r0, #1
d0081f1e:	d102      	bne.n	d0081f26 <_close_r+0x1a>
d0081f20:	682b      	ldr	r3, [r5, #0]
d0081f22:	b103      	cbz	r3, d0081f26 <_close_r+0x1a>
d0081f24:	6023      	str	r3, [r4, #0]
d0081f26:	bd38      	pop	{r3, r4, r5, pc}
d0081f28:	d0091ed0 	.word	0xd0091ed0

d0081f2c <_fstat_r>:
d0081f2c:	b538      	push	{r3, r4, r5, lr}
d0081f2e:	4d07      	ldr	r5, [pc, #28]	; (d0081f4c <_fstat_r+0x20>)
d0081f30:	2300      	movs	r3, #0
d0081f32:	4604      	mov	r4, r0
d0081f34:	4608      	mov	r0, r1
d0081f36:	4611      	mov	r1, r2
d0081f38:	602b      	str	r3, [r5, #0]
d0081f3a:	f7fe f8d7 	bl	d00800ec <_fstat>
d0081f3e:	1c43      	adds	r3, r0, #1
d0081f40:	d102      	bne.n	d0081f48 <_fstat_r+0x1c>
d0081f42:	682b      	ldr	r3, [r5, #0]
d0081f44:	b103      	cbz	r3, d0081f48 <_fstat_r+0x1c>
d0081f46:	6023      	str	r3, [r4, #0]
d0081f48:	bd38      	pop	{r3, r4, r5, pc}
d0081f4a:	bf00      	nop
d0081f4c:	d0091ed0 	.word	0xd0091ed0

d0081f50 <_lseek_r>:
d0081f50:	b538      	push	{r3, r4, r5, lr}
d0081f52:	4d07      	ldr	r5, [pc, #28]	; (d0081f70 <_lseek_r+0x20>)
d0081f54:	4604      	mov	r4, r0
d0081f56:	4608      	mov	r0, r1
d0081f58:	4611      	mov	r1, r2
d0081f5a:	2200      	movs	r2, #0
d0081f5c:	602a      	str	r2, [r5, #0]
d0081f5e:	461a      	mov	r2, r3
d0081f60:	f7fe f8ca 	bl	d00800f8 <_lseek>
d0081f64:	1c43      	adds	r3, r0, #1
d0081f66:	d102      	bne.n	d0081f6e <_lseek_r+0x1e>
d0081f68:	682b      	ldr	r3, [r5, #0]
d0081f6a:	b103      	cbz	r3, d0081f6e <_lseek_r+0x1e>
d0081f6c:	6023      	str	r3, [r4, #0]
d0081f6e:	bd38      	pop	{r3, r4, r5, pc}
d0081f70:	d0091ed0 	.word	0xd0091ed0
	...

d0081f80 <memchr>:
d0081f80:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0081f84:	2a10      	cmp	r2, #16
d0081f86:	db2b      	blt.n	d0081fe0 <memchr+0x60>
d0081f88:	f010 0f07 	tst.w	r0, #7
d0081f8c:	d008      	beq.n	d0081fa0 <memchr+0x20>
d0081f8e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0081f92:	3a01      	subs	r2, #1
d0081f94:	428b      	cmp	r3, r1
d0081f96:	d02d      	beq.n	d0081ff4 <memchr+0x74>
d0081f98:	f010 0f07 	tst.w	r0, #7
d0081f9c:	b342      	cbz	r2, d0081ff0 <memchr+0x70>
d0081f9e:	d1f6      	bne.n	d0081f8e <memchr+0xe>
d0081fa0:	b4f0      	push	{r4, r5, r6, r7}
d0081fa2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0081fa6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d0081faa:	f022 0407 	bic.w	r4, r2, #7
d0081fae:	f07f 0700 	mvns.w	r7, #0
d0081fb2:	2300      	movs	r3, #0
d0081fb4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0081fb8:	3c08      	subs	r4, #8
d0081fba:	ea85 0501 	eor.w	r5, r5, r1
d0081fbe:	ea86 0601 	eor.w	r6, r6, r1
d0081fc2:	fa85 f547 	uadd8	r5, r5, r7
d0081fc6:	faa3 f587 	sel	r5, r3, r7
d0081fca:	fa86 f647 	uadd8	r6, r6, r7
d0081fce:	faa5 f687 	sel	r6, r5, r7
d0081fd2:	b98e      	cbnz	r6, d0081ff8 <memchr+0x78>
d0081fd4:	d1ee      	bne.n	d0081fb4 <memchr+0x34>
d0081fd6:	bcf0      	pop	{r4, r5, r6, r7}
d0081fd8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0081fdc:	f002 0207 	and.w	r2, r2, #7
d0081fe0:	b132      	cbz	r2, d0081ff0 <memchr+0x70>
d0081fe2:	f810 3b01 	ldrb.w	r3, [r0], #1
d0081fe6:	3a01      	subs	r2, #1
d0081fe8:	ea83 0301 	eor.w	r3, r3, r1
d0081fec:	b113      	cbz	r3, d0081ff4 <memchr+0x74>
d0081fee:	d1f8      	bne.n	d0081fe2 <memchr+0x62>
d0081ff0:	2000      	movs	r0, #0
d0081ff2:	4770      	bx	lr
d0081ff4:	3801      	subs	r0, #1
d0081ff6:	4770      	bx	lr
d0081ff8:	2d00      	cmp	r5, #0
d0081ffa:	bf06      	itte	eq
d0081ffc:	4635      	moveq	r5, r6
d0081ffe:	3803      	subeq	r0, #3
d0082000:	3807      	subne	r0, #7
d0082002:	f015 0f01 	tst.w	r5, #1
d0082006:	d107      	bne.n	d0082018 <memchr+0x98>
d0082008:	3001      	adds	r0, #1
d008200a:	f415 7f80 	tst.w	r5, #256	; 0x100
d008200e:	bf02      	ittt	eq
d0082010:	3001      	addeq	r0, #1
d0082012:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0082016:	3001      	addeq	r0, #1
d0082018:	bcf0      	pop	{r4, r5, r6, r7}
d008201a:	3801      	subs	r0, #1
d008201c:	4770      	bx	lr
d008201e:	bf00      	nop

d0082020 <memcpy>:
d0082020:	440a      	add	r2, r1
d0082022:	4291      	cmp	r1, r2
d0082024:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0082028:	d100      	bne.n	d008202c <memcpy+0xc>
d008202a:	4770      	bx	lr
d008202c:	b510      	push	{r4, lr}
d008202e:	f811 4b01 	ldrb.w	r4, [r1], #1
d0082032:	f803 4f01 	strb.w	r4, [r3, #1]!
d0082036:	4291      	cmp	r1, r2
d0082038:	d1f9      	bne.n	d008202e <memcpy+0xe>
d008203a:	bd10      	pop	{r4, pc}

d008203c <memmove>:
d008203c:	4288      	cmp	r0, r1
d008203e:	b510      	push	{r4, lr}
d0082040:	eb01 0402 	add.w	r4, r1, r2
d0082044:	d902      	bls.n	d008204c <memmove+0x10>
d0082046:	4284      	cmp	r4, r0
d0082048:	4623      	mov	r3, r4
d008204a:	d807      	bhi.n	d008205c <memmove+0x20>
d008204c:	1e43      	subs	r3, r0, #1
d008204e:	42a1      	cmp	r1, r4
d0082050:	d008      	beq.n	d0082064 <memmove+0x28>
d0082052:	f811 2b01 	ldrb.w	r2, [r1], #1
d0082056:	f803 2f01 	strb.w	r2, [r3, #1]!
d008205a:	e7f8      	b.n	d008204e <memmove+0x12>
d008205c:	4402      	add	r2, r0
d008205e:	4601      	mov	r1, r0
d0082060:	428a      	cmp	r2, r1
d0082062:	d100      	bne.n	d0082066 <memmove+0x2a>
d0082064:	bd10      	pop	{r4, pc}
d0082066:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d008206a:	f802 4d01 	strb.w	r4, [r2, #-1]!
d008206e:	e7f7      	b.n	d0082060 <memmove+0x24>

d0082070 <_realloc_r>:
d0082070:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0082072:	4607      	mov	r7, r0
d0082074:	4614      	mov	r4, r2
d0082076:	460e      	mov	r6, r1
d0082078:	b921      	cbnz	r1, d0082084 <_realloc_r+0x14>
d008207a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d008207e:	4611      	mov	r1, r2
d0082080:	f7ff b8c2 	b.w	d0081208 <_malloc_r>
d0082084:	b922      	cbnz	r2, d0082090 <_realloc_r+0x20>
d0082086:	f7ff f86f 	bl	d0081168 <_free_r>
d008208a:	4625      	mov	r5, r4
d008208c:	4628      	mov	r0, r5
d008208e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0082090:	f000 f826 	bl	d00820e0 <_malloc_usable_size_r>
d0082094:	42a0      	cmp	r0, r4
d0082096:	d20f      	bcs.n	d00820b8 <_realloc_r+0x48>
d0082098:	4621      	mov	r1, r4
d008209a:	4638      	mov	r0, r7
d008209c:	f7ff f8b4 	bl	d0081208 <_malloc_r>
d00820a0:	4605      	mov	r5, r0
d00820a2:	2800      	cmp	r0, #0
d00820a4:	d0f2      	beq.n	d008208c <_realloc_r+0x1c>
d00820a6:	4631      	mov	r1, r6
d00820a8:	4622      	mov	r2, r4
d00820aa:	f7ff ffb9 	bl	d0082020 <memcpy>
d00820ae:	4631      	mov	r1, r6
d00820b0:	4638      	mov	r0, r7
d00820b2:	f7ff f859 	bl	d0081168 <_free_r>
d00820b6:	e7e9      	b.n	d008208c <_realloc_r+0x1c>
d00820b8:	4635      	mov	r5, r6
d00820ba:	e7e7      	b.n	d008208c <_realloc_r+0x1c>

d00820bc <_read_r>:
d00820bc:	b538      	push	{r3, r4, r5, lr}
d00820be:	4d07      	ldr	r5, [pc, #28]	; (d00820dc <_read_r+0x20>)
d00820c0:	4604      	mov	r4, r0
d00820c2:	4608      	mov	r0, r1
d00820c4:	4611      	mov	r1, r2
d00820c6:	2200      	movs	r2, #0
d00820c8:	602a      	str	r2, [r5, #0]
d00820ca:	461a      	mov	r2, r3
d00820cc:	f7fe f800 	bl	d00800d0 <_read>
d00820d0:	1c43      	adds	r3, r0, #1
d00820d2:	d102      	bne.n	d00820da <_read_r+0x1e>
d00820d4:	682b      	ldr	r3, [r5, #0]
d00820d6:	b103      	cbz	r3, d00820da <_read_r+0x1e>
d00820d8:	6023      	str	r3, [r4, #0]
d00820da:	bd38      	pop	{r3, r4, r5, pc}
d00820dc:	d0091ed0 	.word	0xd0091ed0

d00820e0 <_malloc_usable_size_r>:
d00820e0:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00820e4:	1f18      	subs	r0, r3, #4
d00820e6:	2b00      	cmp	r3, #0
d00820e8:	bfbc      	itt	lt
d00820ea:	580b      	ldrlt	r3, [r1, r0]
d00820ec:	18c0      	addlt	r0, r0, r3
d00820ee:	4770      	bx	lr
d00820f0:	20545243 	.word	0x20545243
d00820f4:	20495041 	.word	0x20495041
d00820f8:	76616e75 	.word	0x76616e75
d00820fc:	616c6961 	.word	0x616c6961
d0082100:	0a656c62 	.word	0x0a656c62
d0082104:	00000000 	.word	0x00000000
d0082108:	42444953 	.word	0x42444953
d008210c:	4320584f 	.word	0x4320584f
d0082110:	44205452 	.word	0x44205452
d0082114:	004f4d45 	.word	0x004f4d45
d0082118:	49424752 	.word	0x49424752
d008211c:	30323320 	.word	0x30323320
d0082120:	30303278 	.word	0x30303278
d0082124:	48303520 	.word	0x48303520
d0082128:	0000005a 	.word	0x0000005a
d008212c:	4d415246 	.word	0x4d415246
d0082130:	6c252045 	.word	0x6c252045
d0082134:	48202075 	.word	0x48202075
d0082138:	20444c4f 	.word	0x20444c4f
d008213c:	45524946 	.word	0x45524946
d0082140:	204b4f2b 	.word	0x204b4f2b
d0082144:	45204f54 	.word	0x45204f54
d0082148:	00544958 	.word	0x00544958

d008214c <bars>:
d008214c:	03020100 07060504 0b0a0908 0f0e0d0c     ................

d008215c <lcd_msg_bottom>:
d008215c:	73657250 49462073 2b204552 204b4f20     Press FIRE + OK 
d008216c:	65206f74 00746978                       to exit.

d0082174 <lcd_msg_top>:
d0082174:	20545243 6f6d6564 6e757220 676e696e     CRT demo running
d0082184:	00000000                                ....

d0082188 <_global_impure_ptr>:
d0082188:	d0082230                                0"..

d008218c <__sf_fake_stderr>:
	...

d00821ac <__sf_fake_stdin>:
	...

d00821cc <__sf_fake_stdout>:
	...
d00821ec:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d00821fc:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d008220c:	31300046 35343332 39383736 64636261     F.0123456789abcd
d008221c:	                                         ef.

Disassembly of section .init:

d0082220 <_init>:
d0082220:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0082222:	bf00      	nop

Disassembly of section .fini:

d0082224 <_fini>:
d0082224:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0082226:	bf00      	nop
