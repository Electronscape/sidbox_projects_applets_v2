
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
d008001e:	f001 f951 	bl	d00812c4 <setbuf>
d0080022:	6833      	ldr	r3, [r6, #0]
d0080024:	2100      	movs	r1, #0
d0080026:	68d8      	ldr	r0, [r3, #12]
d0080028:	f001 f94c 	bl	d00812c4 <setbuf>
d008002c:	4629      	mov	r1, r5
d008002e:	4620      	mov	r0, r4
d0080030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0080034:	f000 b8fc 	b.w	d0080230 <main>
d0080038:	d0081c04 	.word	0xd0081c04

d008003c <initMalloc>:
d008003c:	4902      	ldr	r1, [pc, #8]	; (d0080048 <initMalloc+0xc>)
d008003e:	4b03      	ldr	r3, [pc, #12]	; (d008004c <initMalloc+0x10>)
d0080040:	4a03      	ldr	r2, [pc, #12]	; (d0080050 <initMalloc+0x14>)
d0080042:	1a5b      	subs	r3, r3, r1
d0080044:	6013      	str	r3, [r2, #0]
d0080046:	4770      	bx	lr
d0080048:	d00840f8 	.word	0xd00840f8
d008004c:	d0600000 	.word	0xd0600000
d0080050:	d00820b4 	.word	0xd00820b4

d0080054 <_write_r>:
d0080054:	3901      	subs	r1, #1
d0080056:	2901      	cmp	r1, #1
d0080058:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008005a:	d81f      	bhi.n	d008009c <_write_r+0x48>
d008005c:	b1e2      	cbz	r2, d0080098 <_write_r+0x44>
d008005e:	461c      	mov	r4, r3
d0080060:	b1d3      	cbz	r3, d0080098 <_write_r+0x44>
d0080062:	4d12      	ldr	r5, [pc, #72]	; (d00800ac <_write_r+0x58>)
d0080064:	682e      	ldr	r6, [r5, #0]
d0080066:	b9ae      	cbnz	r6, d0080094 <_write_r+0x40>
d0080068:	4f11      	ldr	r7, [pc, #68]	; (d00800b0 <_write_r+0x5c>)
d008006a:	2301      	movs	r3, #1
d008006c:	4611      	mov	r1, r2
d008006e:	4630      	mov	r0, r6
d0080070:	602b      	str	r3, [r5, #0]
d0080072:	4622      	mov	r2, r4
d0080074:	7a3b      	ldrb	r3, [r7, #8]
d0080076:	f897 c009 	ldrb.w	ip, [r7, #9]
d008007a:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d008007e:	f897 c00a 	ldrb.w	ip, [r7, #10]
d0080082:	7aff      	ldrb	r7, [r7, #11]
d0080084:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0080088:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d008008c:	681b      	ldr	r3, [r3, #0]
d008008e:	685b      	ldr	r3, [r3, #4]
d0080090:	4798      	blx	r3
d0080092:	602e      	str	r6, [r5, #0]
d0080094:	4620      	mov	r0, r4
d0080096:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0080098:	2000      	movs	r0, #0
d008009a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d008009c:	f001 f904 	bl	d00812a8 <__errno>
d00800a0:	2209      	movs	r2, #9
d00800a2:	4603      	mov	r3, r0
d00800a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800a8:	601a      	str	r2, [r3, #0]
d00800aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00800ac:	d0081c84 	.word	0xd0081c84
d00800b0:	2001f000 	.word	0x2001f000

d00800b4 <_read>:
d00800b4:	b508      	push	{r3, lr}
d00800b6:	f001 f8f7 	bl	d00812a8 <__errno>
d00800ba:	2258      	movs	r2, #88	; 0x58
d00800bc:	4603      	mov	r3, r0
d00800be:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800c2:	601a      	str	r2, [r3, #0]
d00800c4:	bd08      	pop	{r3, pc}
d00800c6:	bf00      	nop

d00800c8 <_close>:
d00800c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800cc:	4770      	bx	lr
d00800ce:	bf00      	nop

d00800d0 <_fstat>:
d00800d0:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d00800d4:	2000      	movs	r0, #0
d00800d6:	604b      	str	r3, [r1, #4]
d00800d8:	4770      	bx	lr
d00800da:	bf00      	nop

d00800dc <_lseek>:
d00800dc:	2000      	movs	r0, #0
d00800de:	4770      	bx	lr

d00800e0 <_sbrk_r>:
d00800e0:	4b0c      	ldr	r3, [pc, #48]	; (d0080114 <_sbrk_r+0x34>)
d00800e2:	4a0d      	ldr	r2, [pc, #52]	; (d0080118 <_sbrk_r+0x38>)
d00800e4:	6818      	ldr	r0, [r3, #0]
d00800e6:	b510      	push	{r4, lr}
d00800e8:	b918      	cbnz	r0, d00800f2 <_sbrk_r+0x12>
d00800ea:	1dd0      	adds	r0, r2, #7
d00800ec:	f020 0007 	bic.w	r0, r0, #7
d00800f0:	6018      	str	r0, [r3, #0]
d00800f2:	4401      	add	r1, r0
d00800f4:	4c09      	ldr	r4, [pc, #36]	; (d008011c <_sbrk_r+0x3c>)
d00800f6:	42a1      	cmp	r1, r4
d00800f8:	d803      	bhi.n	d0080102 <_sbrk_r+0x22>
d00800fa:	4291      	cmp	r1, r2
d00800fc:	d301      	bcc.n	d0080102 <_sbrk_r+0x22>
d00800fe:	6019      	str	r1, [r3, #0]
d0080100:	bd10      	pop	{r4, pc}
d0080102:	f001 f8d1 	bl	d00812a8 <__errno>
d0080106:	220c      	movs	r2, #12
d0080108:	4603      	mov	r3, r0
d008010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008010e:	601a      	str	r2, [r3, #0]
d0080110:	bd10      	pop	{r4, pc}
d0080112:	bf00      	nop
d0080114:	d0081c80 	.word	0xd0081c80
d0080118:	d00840f8 	.word	0xd00840f8
d008011c:	d0600000 	.word	0xd0600000

d0080120 <draw_panel>:
d0080120:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0080124:	4c40      	ldr	r4, [pc, #256]	; (d0080228 <draw_panel+0x108>)
d0080126:	4698      	mov	r8, r3
d0080128:	b082      	sub	sp, #8
d008012a:	4606      	mov	r6, r0
d008012c:	7b25      	ldrb	r5, [r4, #12]
d008012e:	200e      	movs	r0, #14
d0080130:	7b67      	ldrb	r7, [r4, #13]
d0080132:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0080136:	ea45 2507 	orr.w	r5, r5, r7, lsl #8
d008013a:	f894 c00f 	ldrb.w	ip, [r4, #15]
d008013e:	460f      	mov	r7, r1
d0080140:	9201      	str	r2, [sp, #4]
d0080142:	ea45 450e 	orr.w	r5, r5, lr, lsl #16
d0080146:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d008014a:	686b      	ldr	r3, [r5, #4]
d008014c:	68db      	ldr	r3, [r3, #12]
d008014e:	4798      	blx	r3
d0080150:	7b25      	ldrb	r5, [r4, #12]
d0080152:	7b63      	ldrb	r3, [r4, #13]
d0080154:	1cf9      	adds	r1, r7, #3
d0080156:	f894 e00e 	ldrb.w	lr, [r4, #14]
d008015a:	1cf0      	adds	r0, r6, #3
d008015c:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d0080160:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0080164:	9a01      	ldr	r2, [sp, #4]
d0080166:	4643      	mov	r3, r8
d0080168:	ea45 450e 	orr.w	r5, r5, lr, lsl #16
d008016c:	b209      	sxth	r1, r1
d008016e:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d0080172:	b200      	sxth	r0, r0
d0080174:	686d      	ldr	r5, [r5, #4]
d0080176:	686d      	ldr	r5, [r5, #4]
d0080178:	47a8      	blx	r5
d008017a:	7b23      	ldrb	r3, [r4, #12]
d008017c:	7b61      	ldrb	r1, [r4, #13]
d008017e:	2003      	movs	r0, #3
d0080180:	7ba5      	ldrb	r5, [r4, #14]
d0080182:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0080186:	7be1      	ldrb	r1, [r4, #15]
d0080188:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d008018c:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0080190:	685b      	ldr	r3, [r3, #4]
d0080192:	68db      	ldr	r3, [r3, #12]
d0080194:	4798      	blx	r3
d0080196:	7b25      	ldrb	r5, [r4, #12]
d0080198:	7b61      	ldrb	r1, [r4, #13]
d008019a:	4643      	mov	r3, r8
d008019c:	7ba0      	ldrb	r0, [r4, #14]
d008019e:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d00801a2:	f894 c00f 	ldrb.w	ip, [r4, #15]
d00801a6:	9a01      	ldr	r2, [sp, #4]
d00801a8:	4639      	mov	r1, r7
d00801aa:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d00801ae:	4630      	mov	r0, r6
d00801b0:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d00801b4:	686d      	ldr	r5, [r5, #4]
d00801b6:	686d      	ldr	r5, [r5, #4]
d00801b8:	47a8      	blx	r5
d00801ba:	7b23      	ldrb	r3, [r4, #12]
d00801bc:	7b61      	ldrb	r1, [r4, #13]
d00801be:	2004      	movs	r0, #4
d00801c0:	7ba5      	ldrb	r5, [r4, #14]
d00801c2:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d00801c6:	7be1      	ldrb	r1, [r4, #15]
d00801c8:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00801cc:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00801d0:	685b      	ldr	r3, [r3, #4]
d00801d2:	68db      	ldr	r3, [r3, #12]
d00801d4:	4798      	blx	r3
d00801d6:	7b25      	ldrb	r5, [r4, #12]
d00801d8:	7b63      	ldrb	r3, [r4, #13]
d00801da:	4639      	mov	r1, r7
d00801dc:	f894 e00e 	ldrb.w	lr, [r4, #14]
d00801e0:	4630      	mov	r0, r6
d00801e2:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d00801e6:	f894 c00f 	ldrb.w	ip, [r4, #15]
d00801ea:	9a01      	ldr	r2, [sp, #4]
d00801ec:	2302      	movs	r3, #2
d00801ee:	ea45 450e 	orr.w	r5, r5, lr, lsl #16
d00801f2:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d00801f6:	686d      	ldr	r5, [r5, #4]
d00801f8:	686d      	ldr	r5, [r5, #4]
d00801fa:	47a8      	blx	r5
d00801fc:	7b25      	ldrb	r5, [r4, #12]
d00801fe:	7b62      	ldrb	r2, [r4, #13]
d0080200:	4639      	mov	r1, r7
d0080202:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0080206:	4643      	mov	r3, r8
d0080208:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d008020c:	7be7      	ldrb	r7, [r4, #15]
d008020e:	4630      	mov	r0, r6
d0080210:	2202      	movs	r2, #2
d0080212:	ea45 440c 	orr.w	r4, r5, ip, lsl #16
d0080216:	ea44 6407 	orr.w	r4, r4, r7, lsl #24
d008021a:	6864      	ldr	r4, [r4, #4]
d008021c:	6864      	ldr	r4, [r4, #4]
d008021e:	46a4      	mov	ip, r4
d0080220:	b002      	add	sp, #8
d0080222:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0080226:	4760      	bx	ip
d0080228:	2001f000 	.word	0x2001f000
d008022c:	00000000 	.word	0x00000000

d0080230 <main>:
d0080230:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080234:	f8df b3a4 	ldr.w	fp, [pc, #932]	; d00805dc <main+0x3ac>
d0080238:	b085      	sub	sp, #20
d008023a:	f44f 2000 	mov.w	r0, #524288	; 0x80000
d008023e:	2500      	movs	r5, #0
d0080240:	f89b 3000 	ldrb.w	r3, [fp]
d0080244:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d0080248:	f89b 2001 	ldrb.w	r2, [fp, #1]
d008024c:	f89b 1002 	ldrb.w	r1, [fp, #2]
d0080250:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080254:	f89b 2003 	ldrb.w	r2, [fp, #3]
d0080258:	4cd5      	ldr	r4, [pc, #852]	; (d00805b0 <main+0x380>)
d008025a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008025e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080262:	681b      	ldr	r3, [r3, #0]
d0080264:	4798      	blx	r3
d0080266:	f7ff fee9 	bl	d008003c <initMalloc>
d008026a:	f89b 300c 	ldrb.w	r3, [fp, #12]
d008026e:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0080272:	2190      	movs	r1, #144	; 0x90
d0080274:	f89b 600e 	ldrb.w	r6, [fp, #14]
d0080278:	20dc      	movs	r0, #220	; 0xdc
d008027a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008027e:	f89b 200f 	ldrb.w	r2, [fp, #15]
d0080282:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0080286:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008028a:	681b      	ldr	r3, [r3, #0]
d008028c:	691b      	ldr	r3, [r3, #16]
d008028e:	4798      	blx	r3
d0080290:	f89b 600c 	ldrb.w	r6, [fp, #12]
d0080294:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0080298:	f44f 73a0 	mov.w	r3, #320	; 0x140
d008029c:	f89b 100e 	ldrb.w	r1, [fp, #14]
d00802a0:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00802a4:	ea46 2600 	orr.w	r6, r6, r0, lsl #8
d00802a8:	f89b 000f 	ldrb.w	r0, [fp, #15]
d00802ac:	ea46 4601 	orr.w	r6, r6, r1, lsl #16
d00802b0:	4619      	mov	r1, r3
d00802b2:	ea46 6600 	orr.w	r6, r6, r0, lsl #24
d00802b6:	4610      	mov	r0, r2
d00802b8:	6836      	ldr	r6, [r6, #0]
d00802ba:	9500      	str	r5, [sp, #0]
d00802bc:	6976      	ldr	r6, [r6, #20]
d00802be:	47b0      	blx	r6
d00802c0:	f89b 3014 	ldrb.w	r3, [fp, #20]
d00802c4:	f89b 2015 	ldrb.w	r2, [fp, #21]
d00802c8:	f44f 7000 	mov.w	r0, #512	; 0x200
d00802cc:	f89b 1016 	ldrb.w	r1, [fp, #22]
d00802d0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00802d4:	f89b 2017 	ldrb.w	r2, [fp, #23]
d00802d8:	4eb6      	ldr	r6, [pc, #728]	; (d00805b4 <main+0x384>)
d00802da:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00802de:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00802e2:	681b      	ldr	r3, [r3, #0]
d00802e4:	681b      	ldr	r3, [r3, #0]
d00802e6:	4798      	blx	r3
d00802e8:	f89b 2014 	ldrb.w	r2, [fp, #20]
d00802ec:	f89b 3015 	ldrb.w	r3, [fp, #21]
d00802f0:	2101      	movs	r1, #1
d00802f2:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d00802f6:	f89b 3016 	ldrb.w	r3, [fp, #22]
d00802fa:	f89b 0017 	ldrb.w	r0, [fp, #23]
d00802fe:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d0080302:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0080306:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d008030a:	f89b 000d 	ldrb.w	r0, [fp, #13]
d008030e:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0080312:	f89b 000e 	ldrb.w	r0, [fp, #14]
d0080316:	6812      	ldr	r2, [r2, #0]
d0080318:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d008031c:	f89b 000f 	ldrb.w	r0, [fp, #15]
d0080320:	6852      	ldr	r2, [r2, #4]
d0080322:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d0080326:	7011      	strb	r1, [r2, #0]
d0080328:	681b      	ldr	r3, [r3, #0]
d008032a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d008032c:	4798      	blx	r3
d008032e:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0080332:	49a1      	ldr	r1, [pc, #644]	; (d00805b8 <main+0x388>)
d0080334:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0080338:	6008      	str	r0, [r1, #0]
d008033a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008033e:	f89b 100e 	ldrb.w	r1, [fp, #14]
d0080342:	f89b 200f 	ldrb.w	r2, [fp, #15]
d0080346:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008034a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008034e:	681b      	ldr	r3, [r3, #0]
d0080350:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d0080352:	4798      	blx	r3
d0080354:	4629      	mov	r1, r5
d0080356:	4603      	mov	r3, r0
d0080358:	4d98      	ldr	r5, [pc, #608]	; (d00805bc <main+0x38c>)
d008035a:	4620      	mov	r0, r4
d008035c:	f44f 6280 	mov.w	r2, #1024	; 0x400
d0080360:	602b      	str	r3, [r5, #0]
d0080362:	f000 ffa7 	bl	d00812b4 <memset>
d0080366:	2516      	movs	r5, #22
d0080368:	f104 037c 	add.w	r3, r4, #124	; 0x7c
d008036c:	a182      	add	r1, pc, #520	; (adr r1, d0080578 <main+0x348>)
d008036e:	e9d1 0100 	ldrd	r0, r1, [r1]
d0080372:	e9c4 670c 	strd	r6, r7, [r4, #48]	; 0x30
d0080376:	e9c4 0100 	strd	r0, r1, [r4]
d008037a:	a781      	add	r7, pc, #516	; (adr r7, d0080580 <main+0x350>)
d008037c:	e9d7 6700 	ldrd	r6, r7, [r7]
d0080380:	a181      	add	r1, pc, #516	; (adr r1, d0080588 <main+0x358>)
d0080382:	e9d1 0100 	ldrd	r0, r1, [r1]
d0080386:	e9c4 6702 	strd	r6, r7, [r4, #8]
d008038a:	e9c4 0104 	strd	r0, r1, [r4, #16]
d008038e:	a780      	add	r7, pc, #512	; (adr r7, d0080590 <main+0x360>)
d0080390:	e9d7 6700 	ldrd	r6, r7, [r7]
d0080394:	a180      	add	r1, pc, #512	; (adr r1, d0080598 <main+0x368>)
d0080396:	e9d1 0100 	ldrd	r0, r1, [r1]
d008039a:	e9c4 6706 	strd	r6, r7, [r4, #24]
d008039e:	e9c4 0108 	strd	r0, r1, [r4, #32]
d00803a2:	a77f      	add	r7, pc, #508	; (adr r7, d00805a0 <main+0x370>)
d00803a4:	e9d7 6700 	ldrd	r6, r7, [r7]
d00803a8:	a17f      	add	r1, pc, #508	; (adr r1, d00805a8 <main+0x378>)
d00803aa:	e9d1 0100 	ldrd	r0, r1, [r1]
d00803ae:	e9c4 670a 	strd	r6, r7, [r4, #40]	; 0x28
d00803b2:	e9c4 010e 	strd	r0, r1, [r4, #56]	; 0x38
d00803b6:	f44f 6620 	mov.w	r6, #2560	; 0xa00
d00803ba:	f44f 2180 	mov.w	r1, #262144	; 0x40000
d00803be:	ea45 0201 	orr.w	r2, r5, r1
d00803c2:	f501 3180 	add.w	r1, r1, #65536	; 0x10000
d00803c6:	3503      	adds	r5, #3
d00803c8:	4332      	orrs	r2, r6
d00803ca:	f5b1 1f10 	cmp.w	r1, #2359296	; 0x240000
d00803ce:	f506 7600 	add.w	r6, r6, #512	; 0x200
d00803d2:	f042 427f 	orr.w	r2, r2, #4278190080	; 0xff000000
d00803d6:	f843 2f04 	str.w	r2, [r3, #4]!
d00803da:	d1f0      	bne.n	d00803be <main+0x18e>
d00803dc:	4d78      	ldr	r5, [pc, #480]	; (d00805c0 <main+0x390>)
d00803de:	246c      	movs	r4, #108	; 0x6c
d00803e0:	f44f 40b0 	mov.w	r0, #22528	; 0x5800
d00803e4:	2100      	movs	r1, #0
d00803e6:	4e77      	ldr	r6, [pc, #476]	; (d00805c4 <main+0x394>)
d00803e8:	b28a      	uxth	r2, r1
d00803ea:	ea44 0300 	orr.w	r3, r4, r0
d00803ee:	3101      	adds	r1, #1
d00803f0:	f500 6080 	add.w	r0, r0, #1024	; 0x400
d00803f4:	fba6 7202 	umull	r7, r2, r6, r2
d00803f8:	3403      	adds	r4, #3
d00803fa:	2920      	cmp	r1, #32
d00803fc:	ea4f 0252 	mov.w	r2, r2, lsr #1
d0080400:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080404:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
d0080408:	f845 3f04 	str.w	r3, [r5, #4]!
d008040c:	d1ec      	bne.n	d00803e8 <main+0x1b8>
d008040e:	4c6e      	ldr	r4, [pc, #440]	; (d00805c8 <main+0x398>)
d0080410:	f44f 5020 	mov.w	r0, #10240	; 0x2800
d0080414:	21d2      	movs	r1, #210	; 0xd2
d0080416:	f44f 02a0 	mov.w	r2, #5242880	; 0x500000
d008041a:	ea41 0302 	orr.w	r3, r1, r2
d008041e:	f502 22a0 	add.w	r2, r2, #327680	; 0x50000
d0080422:	3902      	subs	r1, #2
d0080424:	4303      	orrs	r3, r0
d0080426:	f5b2 0f70 	cmp.w	r2, #15728640	; 0xf00000
d008042a:	f500 7040 	add.w	r0, r0, #768	; 0x300
d008042e:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
d0080432:	f844 3f04 	str.w	r3, [r4, #4]!
d0080436:	d1f0      	bne.n	d008041a <main+0x1ea>
d0080438:	f89b 300c 	ldrb.w	r3, [fp, #12]
d008043c:	f04f 0a00 	mov.w	sl, #0
d0080440:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0080444:	f89b 100e 	ldrb.w	r1, [fp, #14]
d0080448:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008044c:	f89b 200f 	ldrb.w	r2, [fp, #15]
d0080450:	4857      	ldr	r0, [pc, #348]	; (d00805b0 <main+0x380>)
d0080452:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080456:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008045a:	681b      	ldr	r3, [r3, #0]
d008045c:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d008045e:	4798      	blx	r3
d0080460:	f89b 3018 	ldrb.w	r3, [fp, #24]
d0080464:	f89b 2019 	ldrb.w	r2, [fp, #25]
d0080468:	f89b 101a 	ldrb.w	r1, [fp, #26]
d008046c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080470:	f89b 201b 	ldrb.w	r2, [fp, #27]
d0080474:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080478:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008047c:	681b      	ldr	r3, [r3, #0]
d008047e:	4798      	blx	r3
d0080480:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0080484:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0080488:	f89b 100e 	ldrb.w	r1, [fp, #14]
d008048c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080490:	f89b 200f 	ldrb.w	r2, [fp, #15]
d0080494:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080498:	4947      	ldr	r1, [pc, #284]	; (d00805b8 <main+0x388>)
d008049a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008049e:	6808      	ldr	r0, [r1, #0]
d00804a0:	681b      	ldr	r3, [r3, #0]
d00804a2:	69db      	ldr	r3, [r3, #28]
d00804a4:	4798      	blx	r3
d00804a6:	f89b 300c 	ldrb.w	r3, [fp, #12]
d00804aa:	f89b 200d 	ldrb.w	r2, [fp, #13]
d00804ae:	f89b 100e 	ldrb.w	r1, [fp, #14]
d00804b2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00804b6:	f89b 200f 	ldrb.w	r2, [fp, #15]
d00804ba:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00804be:	493f      	ldr	r1, [pc, #252]	; (d00805bc <main+0x38c>)
d00804c0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00804c4:	6808      	ldr	r0, [r1, #0]
d00804c6:	681b      	ldr	r3, [r3, #0]
d00804c8:	699b      	ldr	r3, [r3, #24]
d00804ca:	4798      	blx	r3
d00804cc:	f89b 300c 	ldrb.w	r3, [fp, #12]
d00804d0:	f89b 200d 	ldrb.w	r2, [fp, #13]
d00804d4:	2064      	movs	r0, #100	; 0x64
d00804d6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00804da:	f89b 200e 	ldrb.w	r2, [fp, #14]
d00804de:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00804e2:	f89b 200f 	ldrb.w	r2, [fp, #15]
d00804e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00804ea:	681b      	ldr	r3, [r3, #0]
d00804ec:	689b      	ldr	r3, [r3, #8]
d00804ee:	4798      	blx	r3
d00804f0:	f89b 3014 	ldrb.w	r3, [fp, #20]
d00804f4:	f89b 2015 	ldrb.w	r2, [fp, #21]
d00804f8:	4651      	mov	r1, sl
d00804fa:	4834      	ldr	r0, [pc, #208]	; (d00805cc <main+0x39c>)
d00804fc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080500:	f89b 2016 	ldrb.w	r2, [fp, #22]
d0080504:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080508:	f89b 2017 	ldrb.w	r2, [fp, #23]
d008050c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080510:	685b      	ldr	r3, [r3, #4]
d0080512:	681b      	ldr	r3, [r3, #0]
d0080514:	4798      	blx	r3
d0080516:	f89b 1018 	ldrb.w	r1, [fp, #24]
d008051a:	f89b 0019 	ldrb.w	r0, [fp, #25]
d008051e:	f89b 201a 	ldrb.w	r2, [fp, #26]
d0080522:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0080526:	f89b 301b 	ldrb.w	r3, [fp, #27]
d008052a:	4929      	ldr	r1, [pc, #164]	; (d00805d0 <main+0x3a0>)
d008052c:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0080530:	4828      	ldr	r0, [pc, #160]	; (d00805d4 <main+0x3a4>)
d0080532:	4c29      	ldr	r4, [pc, #164]	; (d00805d8 <main+0x3a8>)
d0080534:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080538:	689b      	ldr	r3, [r3, #8]
d008053a:	4798      	blx	r3
d008053c:	4a25      	ldr	r2, [pc, #148]	; (d00805d4 <main+0x3a4>)
d008053e:	1e01      	subs	r1, r0, #0
d0080540:	f9b2 3000 	ldrsh.w	r3, [r2]
d0080544:	bf18      	it	ne
d0080546:	2101      	movne	r1, #1
d0080548:	2b00      	cmp	r3, #0
d008054a:	7021      	strb	r1, [r4, #0]
d008054c:	f2c0 8658 	blt.w	d0081200 <main+0xfd0>
d0080550:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0080554:	db04      	blt.n	d0080560 <main+0x330>
d0080556:	f240 12df 	movw	r2, #479	; 0x1df
d008055a:	4c1e      	ldr	r4, [pc, #120]	; (d00805d4 <main+0x3a4>)
d008055c:	4613      	mov	r3, r2
d008055e:	8022      	strh	r2, [r4, #0]
d0080560:	4c1b      	ldr	r4, [pc, #108]	; (d00805d0 <main+0x3a0>)
d0080562:	f9b4 2000 	ldrsh.w	r2, [r4]
d0080566:	2a00      	cmp	r2, #0
d0080568:	f2c0 8644 	blt.w	d00811f4 <main+0xfc4>
d008056c:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0080570:	db3b      	blt.n	d00805ea <main+0x3ba>
d0080572:	e035      	b.n	d00805e0 <main+0x3b0>
d0080574:	f3af 8000 	nop.w
d0080578:	ff000000 	.word	0xff000000
d008057c:	ff040812 	.word	0xff040812
d0080580:	ff08101e 	.word	0xff08101e
d0080584:	ff121d2a 	.word	0xff121d2a
d0080588:	ff1f3242 	.word	0xff1f3242
d008058c:	ffe2f1ef 	.word	0xffe2f1ef
d0080590:	ff759197 	.word	0xff759197
d0080594:	ff00d7e0 	.word	0xff00d7e0
d0080598:	ff33e890 	.word	0xff33e890
d008059c:	ffffcf52 	.word	0xffffcf52
d00805a0:	fff75b5b 	.word	0xfff75b5b
d00805a4:	ff3f81ff 	.word	0xff3f81ff
d00805a8:	ff02040a 	.word	0xff02040a
d00805ac:	ff155057 	.word	0xff155057
d00805b0:	d0081ca0 	.word	0xd0081ca0
d00805b4:	ffe359ff 	.word	0xffe359ff
d00805b8:	d00820e0 	.word	0xd00820e0
d00805bc:	d00820c0 	.word	0xd00820c0
d00805c0:	d0081d9c 	.word	0xd0081d9c
d00805c4:	aaaaaaab 	.word	0xaaaaaaab
d00805c8:	d0081e1c 	.word	0xd0081e1c
d00805cc:	d0081adc 	.word	0xd0081adc
d00805d0:	d00820a8 	.word	0xd00820a8
d00805d4:	d00820a6 	.word	0xd00820a6
d00805d8:	d00820a3 	.word	0xd00820a3
d00805dc:	2001f000 	.word	0x2001f000
d00805e0:	f240 143f 	movw	r4, #319	; 0x13f
d00805e4:	4dd3      	ldr	r5, [pc, #844]	; (d0080934 <main+0x704>)
d00805e6:	4622      	mov	r2, r4
d00805e8:	802c      	strh	r4, [r5, #0]
d00805ea:	2800      	cmp	r0, #0
d00805ec:	f000 858d 	beq.w	d008110a <main+0xeda>
d00805f0:	48d1      	ldr	r0, [pc, #836]	; (d0080938 <main+0x708>)
d00805f2:	7800      	ldrb	r0, [r0, #0]
d00805f4:	2800      	cmp	r0, #0
d00805f6:	f040 8588 	bne.w	d008110a <main+0xeda>
d00805fa:	f1a3 0127 	sub.w	r1, r3, #39	; 0x27
d00805fe:	4ccf      	ldr	r4, [pc, #828]	; (d008093c <main+0x70c>)
d0080600:	f04f 050a 	mov.w	r5, #10
d0080604:	b289      	uxth	r1, r1
d0080606:	7025      	strb	r5, [r4, #0]
d0080608:	f5b1 7f88 	cmp.w	r1, #272	; 0x110
d008060c:	d205      	bcs.n	d008061a <main+0x3ea>
d008060e:	f1a2 01f7 	sub.w	r1, r2, #247	; 0xf7
d0080612:	b28c      	uxth	r4, r1
d0080614:	2c26      	cmp	r4, #38	; 0x26
d0080616:	f240 85f9 	bls.w	d008120c <main+0xfdc>
d008061a:	f5b3 7fb4 	cmp.w	r3, #360	; 0x168
d008061e:	f280 8603 	bge.w	d0081228 <main+0xff8>
d0080622:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
d0080626:	f280 8627 	bge.w	d0081278 <main+0x1048>
d008062a:	4bc5      	ldr	r3, [pc, #788]	; (d0080940 <main+0x710>)
d008062c:	781a      	ldrb	r2, [r3, #0]
d008062e:	2301      	movs	r3, #1
d0080630:	49c1      	ldr	r1, [pc, #772]	; (d0080938 <main+0x708>)
d0080632:	700b      	strb	r3, [r1, #0]
d0080634:	2a00      	cmp	r2, #0
d0080636:	f000 8575 	beq.w	d0081124 <main+0xef4>
d008063a:	f89b 000c 	ldrb.w	r0, [fp, #12]
d008063e:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080642:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080646:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d008064a:	f89b 300f 	ldrb.w	r3, [fp, #15]
d008064e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080652:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080656:	681b      	ldr	r3, [r3, #0]
d0080658:	68db      	ldr	r3, [r3, #12]
d008065a:	4798      	blx	r3
d008065c:	4ab9      	ldr	r2, [pc, #740]	; (d0080944 <main+0x714>)
d008065e:	7813      	ldrb	r3, [r2, #0]
d0080660:	f1c3 0301 	rsb	r3, r3, #1
d0080664:	b2db      	uxtb	r3, r3
d0080666:	7013      	strb	r3, [r2, #0]
d0080668:	7813      	ldrb	r3, [r2, #0]
d008066a:	f89b 100c 	ldrb.w	r1, [fp, #12]
d008066e:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0080672:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080676:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d008067a:	2b00      	cmp	r3, #0
d008067c:	f000 85ab 	beq.w	d00811d6 <main+0xfa6>
d0080680:	49b1      	ldr	r1, [pc, #708]	; (d0080948 <main+0x718>)
d0080682:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0080686:	f89b 300f 	ldrb.w	r3, [fp, #15]
d008068a:	6809      	ldr	r1, [r1, #0]
d008068c:	48af      	ldr	r0, [pc, #700]	; (d008094c <main+0x71c>)
d008068e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080692:	f3ca 0784 	ubfx	r7, sl, #2, #5
d0080696:	f04f 0800 	mov.w	r8, #0
d008069a:	6800      	ldr	r0, [r0, #0]
d008069c:	681b      	ldr	r3, [r3, #0]
d008069e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00806a0:	4798      	blx	r3
d00806a2:	f89b 400c 	ldrb.w	r4, [fp, #12]
d00806a6:	eb07 00d8 	add.w	r0, r7, r8, lsr #3
d00806aa:	f89b 300d 	ldrb.w	r3, [fp, #13]
d00806ae:	fa1f f688 	uxth.w	r6, r8
d00806b2:	f89b 200e 	ldrb.w	r2, [fp, #14]
d00806b6:	f000 001f 	and.w	r0, r0, #31
d00806ba:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
d00806be:	f89b 100f 	ldrb.w	r1, [fp, #15]
d00806c2:	3020      	adds	r0, #32
d00806c4:	3608      	adds	r6, #8
d00806c6:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
d00806ca:	ea42 6301 	orr.w	r3, r2, r1, lsl #24
d00806ce:	685b      	ldr	r3, [r3, #4]
d00806d0:	68db      	ldr	r3, [r3, #12]
d00806d2:	4798      	blx	r3
d00806d4:	f89b 000c 	ldrb.w	r0, [fp, #12]
d00806d8:	f89b 500d 	ldrb.w	r5, [fp, #13]
d00806dc:	2308      	movs	r3, #8
d00806de:	f89b c00e 	ldrb.w	ip, [fp, #14]
d00806e2:	4641      	mov	r1, r8
d00806e4:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d00806e8:	f89b 400f 	ldrb.w	r4, [fp, #15]
d00806ec:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00806f0:	fa0f f886 	sxth.w	r8, r6
d00806f4:	ea40 450c 	orr.w	r5, r0, ip, lsl #16
d00806f8:	2000      	movs	r0, #0
d00806fa:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d00806fe:	6864      	ldr	r4, [r4, #4]
d0080700:	6864      	ldr	r4, [r4, #4]
d0080702:	47a0      	blx	r4
d0080704:	b2b3      	uxth	r3, r6
d0080706:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d008070a:	d1ca      	bne.n	d00806a2 <main+0x472>
d008070c:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0080710:	200f      	movs	r0, #15
d0080712:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080716:	f00a 070f 	and.w	r7, sl, #15
d008071a:	f89b 200e 	ldrb.w	r2, [fp, #14]
d008071e:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0080722:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080726:	f89b 200f 	ldrb.w	r2, [fp, #15]
d008072a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008072e:	685b      	ldr	r3, [r3, #4]
d0080730:	68db      	ldr	r3, [r3, #12]
d0080732:	4798      	blx	r3
d0080734:	f89b 600c 	ldrb.w	r6, [fp, #12]
d0080738:	4639      	mov	r1, r7
d008073a:	f89b 000d 	ldrb.w	r0, [fp, #13]
d008073e:	3710      	adds	r7, #16
d0080740:	f89b 500e 	ldrb.w	r5, [fp, #14]
d0080744:	2301      	movs	r3, #1
d0080746:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
d008074a:	f89b 400f 	ldrb.w	r4, [fp, #15]
d008074e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080752:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0080756:	2000      	movs	r0, #0
d0080758:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d008075c:	6864      	ldr	r4, [r4, #4]
d008075e:	6864      	ldr	r4, [r4, #4]
d0080760:	47a0      	blx	r4
d0080762:	b2bb      	uxth	r3, r7
d0080764:	b23f      	sxth	r7, r7
d0080766:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d008076a:	d3e3      	bcc.n	d0080734 <main+0x504>
d008076c:	fa5f f48a 	uxtb.w	r4, sl
d0080770:	f04f 0900 	mov.w	r9, #0
d0080774:	ea4f 084a 	mov.w	r8, sl, lsl #1
d0080778:	2794      	movs	r7, #148	; 0x94
d008077a:	4625      	mov	r5, r4
d008077c:	4e74      	ldr	r6, [pc, #464]	; (d0080950 <main+0x720>)
d008077e:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0080782:	f005 0003 	and.w	r0, r5, #3
d0080786:	f89b 100d 	ldrb.w	r1, [fp, #13]
d008078a:	3501      	adds	r5, #1
d008078c:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080790:	3007      	adds	r0, #7
d0080792:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d0080796:	f89b 300f 	ldrb.w	r3, [fp, #15]
d008079a:	b2ed      	uxtb	r5, r5
d008079c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00807a0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00807a4:	685b      	ldr	r3, [r3, #4]
d00807a6:	68db      	ldr	r3, [r3, #12]
d00807a8:	4798      	blx	r3
d00807aa:	f89b e00c 	ldrb.w	lr, [fp, #12]
d00807ae:	f89b 200d 	ldrb.w	r2, [fp, #13]
d00807b2:	ea4f 0199 	mov.w	r1, r9, lsr #2
d00807b6:	fba6 3008 	umull	r3, r0, r6, r8
d00807ba:	f89b 300e 	ldrb.w	r3, [fp, #14]
d00807be:	ea4e 2c02 	orr.w	ip, lr, r2, lsl #8
d00807c2:	4a64      	ldr	r2, [pc, #400]	; (d0080954 <main+0x724>)
d00807c4:	0a00      	lsrs	r0, r0, #8
d00807c6:	fba2 2101 	umull	r2, r1, r2, r1
d00807ca:	ea4c 4203 	orr.w	r2, ip, r3, lsl #16
d00807ce:	f89b 300f 	ldrb.w	r3, [fp, #15]
d00807d2:	ebc0 1000 	rsb	r0, r0, r0, lsl #4
d00807d6:	0889      	lsrs	r1, r1, #2
d00807d8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00807dc:	fb07 9111 	mls	r1, r7, r1, r9
d00807e0:	eba8 1040 	sub.w	r0, r8, r0, lsl #5
d00807e4:	685b      	ldr	r3, [r3, #4]
d00807e6:	f109 092f 	add.w	r9, r9, #47	; 0x2f
d00807ea:	3134      	adds	r1, #52	; 0x34
d00807ec:	b200      	sxth	r0, r0
d00807ee:	689b      	ldr	r3, [r3, #8]
d00807f0:	f108 0849 	add.w	r8, r8, #73	; 0x49
d00807f4:	b209      	sxth	r1, r1
d00807f6:	4798      	blx	r3
d00807f8:	f240 639c 	movw	r3, #1692	; 0x69c
d00807fc:	4599      	cmp	r9, r3
d00807fe:	d1be      	bne.n	d008077e <main+0x54e>
d0080800:	f89b 500c 	ldrb.w	r5, [fp, #12]
d0080804:	2003      	movs	r0, #3
d0080806:	f89b 100d 	ldrb.w	r1, [fp, #13]
d008080a:	eb04 0444 	add.w	r4, r4, r4, lsl #1
d008080e:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080812:	f04f 082c 	mov.w	r8, #44	; 0x2c
d0080816:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d008081a:	f89b 300f 	ldrb.w	r3, [fp, #15]
d008081e:	b2e4      	uxtb	r4, r4
d0080820:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080824:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080828:	685b      	ldr	r3, [r3, #4]
d008082a:	68db      	ldr	r3, [r3, #12]
d008082c:	4798      	blx	r3
d008082e:	f89b 600c 	ldrb.w	r6, [fp, #12]
d0080832:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0080836:	2100      	movs	r1, #0
d0080838:	f89b 200e 	ldrb.w	r2, [fp, #14]
d008083c:	232a      	movs	r3, #42	; 0x2a
d008083e:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
d0080842:	f89b 500f 	ldrb.w	r5, [fp, #15]
d0080846:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d008084a:	4608      	mov	r0, r1
d008084c:	ea42 6505 	orr.w	r5, r2, r5, lsl #24
d0080850:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080854:	686d      	ldr	r5, [r5, #4]
d0080856:	686d      	ldr	r5, [r5, #4]
d0080858:	47a8      	blx	r5
d008085a:	f89b 500c 	ldrb.w	r5, [fp, #12]
d008085e:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080862:	2007      	movs	r0, #7
d0080864:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080868:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d008086c:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080870:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080874:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080878:	685b      	ldr	r3, [r3, #4]
d008087a:	68db      	ldr	r3, [r3, #12]
d008087c:	4798      	blx	r3
d008087e:	f89b 600c 	ldrb.w	r6, [fp, #12]
d0080882:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080886:	2302      	movs	r3, #2
d0080888:	f89b 000e 	ldrb.w	r0, [fp, #14]
d008088c:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080890:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
d0080894:	f89b 500f 	ldrb.w	r5, [fp, #15]
d0080898:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d008089c:	2128      	movs	r1, #40	; 0x28
d008089e:	ea40 6505 	orr.w	r5, r0, r5, lsl #24
d00808a2:	2000      	movs	r0, #0
d00808a4:	686d      	ldr	r5, [r5, #4]
d00808a6:	686d      	ldr	r5, [r5, #4]
d00808a8:	47a8      	blx	r5
d00808aa:	f89b 500c 	ldrb.w	r5, [fp, #12]
d00808ae:	f89b 100d 	ldrb.w	r1, [fp, #13]
d00808b2:	200e      	movs	r0, #14
d00808b4:	f89b 200e 	ldrb.w	r2, [fp, #14]
d00808b8:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d00808bc:	f89b 300f 	ldrb.w	r3, [fp, #15]
d00808c0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00808c4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00808c8:	685b      	ldr	r3, [r3, #4]
d00808ca:	68db      	ldr	r3, [r3, #12]
d00808cc:	4798      	blx	r3
d00808ce:	f89b 600c 	ldrb.w	r6, [fp, #12]
d00808d2:	f89b 000d 	ldrb.w	r0, [fp, #13]
d00808d6:	210e      	movs	r1, #14
d00808d8:	f89b 500e 	ldrb.w	r5, [fp, #14]
d00808dc:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
d00808e0:	f89b 300f 	ldrb.w	r3, [fp, #15]
d00808e4:	4a1c      	ldr	r2, [pc, #112]	; (d0080958 <main+0x728>)
d00808e6:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d00808ea:	2013      	movs	r0, #19
d00808ec:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d00808f0:	685b      	ldr	r3, [r3, #4]
d00808f2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d00808f4:	4798      	blx	r3
d00808f6:	f89b 500c 	ldrb.w	r5, [fp, #12]
d00808fa:	f89b 100d 	ldrb.w	r1, [fp, #13]
d00808fe:	2005      	movs	r0, #5
d0080900:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080904:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d0080908:	f89b 300f 	ldrb.w	r3, [fp, #15]
d008090c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080910:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080914:	685b      	ldr	r3, [r3, #4]
d0080916:	68db      	ldr	r3, [r3, #12]
d0080918:	4798      	blx	r3
d008091a:	f89b 600c 	ldrb.w	r6, [fp, #12]
d008091e:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0080922:	210d      	movs	r1, #13
d0080924:	f89b 500e 	ldrb.w	r5, [fp, #14]
d0080928:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
d008092c:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080930:	e014      	b.n	d008095c <main+0x72c>
d0080932:	bf00      	nop
d0080934:	d00820a8 	.word	0xd00820a8
d0080938:	d0081c89 	.word	0xd0081c89
d008093c:	d00820a4 	.word	0xd00820a4
d0080940:	d00820a1 	.word	0xd00820a1
d0080944:	d0081c88 	.word	0xd0081c88
d0080948:	d00820c0 	.word	0xd00820c0
d008094c:	d00820e0 	.word	0xd00820e0
d0080950:	88888889 	.word	0x88888889
d0080954:	1bacf915 	.word	0x1bacf915
d0080958:	d0081af0 	.word	0xd0081af0
d008095c:	4ad3      	ldr	r2, [pc, #844]	; (d0080cac <main+0xa7c>)
d008095e:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0080962:	2012      	movs	r0, #18
d0080964:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d0080968:	685b      	ldr	r3, [r3, #4]
d008096a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d008096c:	4798      	blx	r3
d008096e:	f89b 000c 	ldrb.w	r0, [fp, #12]
d0080972:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080976:	f01a 0f20 	tst.w	sl, #32
d008097a:	f89b 200e 	ldrb.w	r2, [fp, #14]
d008097e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0080982:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080986:	bf14      	ite	ne
d0080988:	2008      	movne	r0, #8
d008098a:	2009      	moveq	r0, #9
d008098c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080990:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080994:	685b      	ldr	r3, [r3, #4]
d0080996:	68db      	ldr	r3, [r3, #12]
d0080998:	4798      	blx	r3
d008099a:	f89b 600c 	ldrb.w	r6, [fp, #12]
d008099e:	f89b 200d 	ldrb.w	r2, [fp, #13]
d00809a2:	230a      	movs	r3, #10
d00809a4:	f89b 000e 	ldrb.w	r0, [fp, #14]
d00809a8:	210c      	movs	r1, #12
d00809aa:	ea46 2202 	orr.w	r2, r6, r2, lsl #8
d00809ae:	f89b 500f 	ldrb.w	r5, [fp, #15]
d00809b2:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d00809b6:	461a      	mov	r2, r3
d00809b8:	ea40 6505 	orr.w	r5, r0, r5, lsl #24
d00809bc:	f44f 70b5 	mov.w	r0, #362	; 0x16a
d00809c0:	686d      	ldr	r5, [r5, #4]
d00809c2:	686d      	ldr	r5, [r5, #4]
d00809c4:	47a8      	blx	r5
d00809c6:	f89b 500c 	ldrb.w	r5, [fp, #12]
d00809ca:	f89b 100d 	ldrb.w	r1, [fp, #13]
d00809ce:	2006      	movs	r0, #6
d00809d0:	f89b 200e 	ldrb.w	r2, [fp, #14]
d00809d4:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d00809d8:	f89b 300f 	ldrb.w	r3, [fp, #15]
d00809dc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00809e0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00809e4:	685b      	ldr	r3, [r3, #4]
d00809e6:	68db      	ldr	r3, [r3, #12]
d00809e8:	4798      	blx	r3
d00809ea:	f89b 200c 	ldrb.w	r2, [fp, #12]
d00809ee:	f89b 500d 	ldrb.w	r5, [fp, #13]
d00809f2:	210d      	movs	r1, #13
d00809f4:	f89b 000e 	ldrb.w	r0, [fp, #14]
d00809f8:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
d00809fc:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080a00:	4aab      	ldr	r2, [pc, #684]	; (d0080cb0 <main+0xa80>)
d0080a02:	ea45 4000 	orr.w	r0, r5, r0, lsl #16
d0080a06:	4dab      	ldr	r5, [pc, #684]	; (d0080cb4 <main+0xa84>)
d0080a08:	7816      	ldrb	r6, [r2, #0]
d0080a0a:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d0080a0e:	4aaa      	ldr	r2, [pc, #680]	; (d0080cb8 <main+0xa88>)
d0080a10:	f44f 70be 	mov.w	r0, #380	; 0x17c
d0080a14:	685b      	ldr	r3, [r3, #4]
d0080a16:	2e00      	cmp	r6, #0
d0080a18:	bf18      	it	ne
d0080a1a:	462a      	movne	r2, r5
d0080a1c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0080a1e:	4798      	blx	r3
d0080a20:	238a      	movs	r3, #138	; 0x8a
d0080a22:	f44f 72d2 	mov.w	r2, #420	; 0x1a4
d0080a26:	2140      	movs	r1, #64	; 0x40
d0080a28:	201e      	movs	r0, #30
d0080a2a:	f7ff fb79 	bl	d0080120 <draw_panel>
d0080a2e:	f89b 500c 	ldrb.w	r5, [fp, #12]
d0080a32:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080a36:	2006      	movs	r0, #6
d0080a38:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080a3c:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d0080a40:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080a44:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080a48:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080a4c:	685b      	ldr	r3, [r3, #4]
d0080a4e:	68db      	ldr	r3, [r3, #12]
d0080a50:	4798      	blx	r3
d0080a52:	f89b 600c 	ldrb.w	r6, [fp, #12]
d0080a56:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0080a5a:	214c      	movs	r1, #76	; 0x4c
d0080a5c:	f89b 500e 	ldrb.w	r5, [fp, #14]
d0080a60:	4640      	mov	r0, r8
d0080a62:	ea46 2202 	orr.w	r2, r6, r2, lsl #8
d0080a66:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080a6a:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d0080a6e:	4a93      	ldr	r2, [pc, #588]	; (d0080cbc <main+0xa8c>)
d0080a70:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d0080a74:	685b      	ldr	r3, [r3, #4]
d0080a76:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0080a78:	4798      	blx	r3
d0080a7a:	06a3      	lsls	r3, r4, #26
d0080a7c:	fa0f f988 	sxth.w	r9, r8
d0080a80:	f004 053f 	and.w	r5, r4, #63	; 0x3f
d0080a84:	d502      	bpl.n	d0080a8c <main+0x85c>
d0080a86:	f1c5 053f 	rsb	r5, r5, #63	; 0x3f
d0080a8a:	b2ed      	uxtb	r5, r5
d0080a8c:	f89b 600c 	ldrb.w	r6, [fp, #12]
d0080a90:	2002      	movs	r0, #2
d0080a92:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0080a96:	3507      	adds	r5, #7
d0080a98:	f89b c00e 	ldrb.w	ip, [fp, #14]
d0080a9c:	2700      	movs	r7, #0
d0080a9e:	ea46 2102 	orr.w	r1, r6, r2, lsl #8
d0080aa2:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080aa6:	006d      	lsls	r5, r5, #1
d0080aa8:	ea41 420c 	orr.w	r2, r1, ip, lsl #16
d0080aac:	b2ed      	uxtb	r5, r5
d0080aae:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080ab2:	685b      	ldr	r3, [r3, #4]
d0080ab4:	68db      	ldr	r3, [r3, #12]
d0080ab6:	4798      	blx	r3
d0080ab8:	f89b c00c 	ldrb.w	ip, [fp, #12]
d0080abc:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080ac0:	2360      	movs	r3, #96	; 0x60
d0080ac2:	f89b 000e 	ldrb.w	r0, [fp, #14]
d0080ac6:	2212      	movs	r2, #18
d0080ac8:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0080acc:	f89b 600f 	ldrb.w	r6, [fp, #15]
d0080ad0:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d0080ad4:	2158      	movs	r1, #88	; 0x58
d0080ad6:	ea40 6606 	orr.w	r6, r0, r6, lsl #24
d0080ada:	4648      	mov	r0, r9
d0080adc:	6876      	ldr	r6, [r6, #4]
d0080ade:	6876      	ldr	r6, [r6, #4]
d0080ae0:	47b0      	blx	r6
d0080ae2:	2f40      	cmp	r7, #64	; 0x40
d0080ae4:	f04f 000a 	mov.w	r0, #10
d0080ae8:	d803      	bhi.n	d0080af2 <main+0x8c2>
d0080aea:	2f2b      	cmp	r7, #43	; 0x2b
d0080aec:	bf34      	ite	cc
d0080aee:	2008      	movcc	r0, #8
d0080af0:	2009      	movcs	r0, #9
d0080af2:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0080af6:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080afa:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080afe:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d0080b02:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080b06:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080b0a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080b0e:	685b      	ldr	r3, [r3, #4]
d0080b10:	68db      	ldr	r3, [r3, #12]
d0080b12:	4798      	blx	r3
d0080b14:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0080b18:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0080b1c:	2305      	movs	r3, #5
d0080b1e:	f89b c00e 	ldrb.w	ip, [fp, #14]
d0080b22:	2212      	movs	r2, #18
d0080b24:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0080b28:	f89b 600f 	ldrb.w	r6, [fp, #15]
d0080b2c:	f1c7 01b2 	rsb	r1, r7, #178	; 0xb2
d0080b30:	3708      	adds	r7, #8
d0080b32:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0080b36:	4648      	mov	r0, r9
d0080b38:	b2ff      	uxtb	r7, r7
d0080b3a:	ea4c 6606 	orr.w	r6, ip, r6, lsl #24
d0080b3e:	6876      	ldr	r6, [r6, #4]
d0080b40:	6876      	ldr	r6, [r6, #4]
d0080b42:	47b0      	blx	r6
d0080b44:	42bd      	cmp	r5, r7
d0080b46:	d8cc      	bhi.n	d0080ae2 <main+0x8b2>
d0080b48:	f108 081a 	add.w	r8, r8, #26
d0080b4c:	340d      	adds	r4, #13
d0080b4e:	fa1f f888 	uxth.w	r8, r8
d0080b52:	b2e4      	uxtb	r4, r4
d0080b54:	f5b8 7fe6 	cmp.w	r8, #460	; 0x1cc
d0080b58:	d18f      	bne.n	d0080a7a <main+0x84a>
d0080b5a:	f89b 600c 	ldrb.w	r6, [fp, #12]
d0080b5e:	2501      	movs	r5, #1
d0080b60:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080b64:	2007      	movs	r0, #7
d0080b66:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080b6a:	24fa      	movs	r4, #250	; 0xfa
d0080b6c:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
d0080b70:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080b74:	4f52      	ldr	r7, [pc, #328]	; (d0080cc0 <main+0xa90>)
d0080b76:	2600      	movs	r6, #0
d0080b78:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080b7c:	f8df 8150 	ldr.w	r8, [pc, #336]	; d0080cd0 <main+0xaa0>
d0080b80:	f8df 9150 	ldr.w	r9, [pc, #336]	; d0080cd4 <main+0xaa4>
d0080b84:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080b88:	685b      	ldr	r3, [r3, #4]
d0080b8a:	68db      	ldr	r3, [r3, #12]
d0080b8c:	4798      	blx	r3
d0080b8e:	f89b c00c 	ldrb.w	ip, [fp, #12]
d0080b92:	fa2a f205 	lsr.w	r2, sl, r5
d0080b96:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080b9a:	f44f 709f 	mov.w	r0, #318	; 0x13e
d0080b9e:	ea4c 2301 	orr.w	r3, ip, r1, lsl #8
d0080ba2:	fba7 7202 	umull	r7, r2, r7, r2
d0080ba6:	f89b 100e 	ldrb.w	r1, [fp, #14]
d0080baa:	0912      	lsrs	r2, r2, #4
d0080bac:	f89b 700f 	ldrb.w	r7, [fp, #15]
d0080bb0:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
d0080bb4:	2303      	movs	r3, #3
d0080bb6:	fb00 a212 	mls	r2, r0, r2, sl
d0080bba:	202c      	movs	r0, #44	; 0x2c
d0080bbc:	ea41 6707 	orr.w	r7, r1, r7, lsl #24
d0080bc0:	21c3      	movs	r1, #195	; 0xc3
d0080bc2:	3250      	adds	r2, #80	; 0x50
d0080bc4:	687f      	ldr	r7, [r7, #4]
d0080bc6:	b212      	sxth	r2, r2
d0080bc8:	687f      	ldr	r7, [r7, #4]
d0080bca:	47b8      	blx	r7
d0080bcc:	2346      	movs	r3, #70	; 0x46
d0080bce:	f44f 7293 	mov.w	r2, #294	; 0x126
d0080bd2:	21de      	movs	r1, #222	; 0xde
d0080bd4:	201c      	movs	r0, #28
d0080bd6:	f7ff faa3 	bl	d0080120 <draw_panel>
d0080bda:	f89b 700c 	ldrb.w	r7, [fp, #12]
d0080bde:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080be2:	2006      	movs	r0, #6
d0080be4:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080be8:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d0080bec:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080bf0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080bf4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080bf8:	685b      	ldr	r3, [r3, #4]
d0080bfa:	68db      	ldr	r3, [r3, #12]
d0080bfc:	4798      	blx	r3
d0080bfe:	f89b 700c 	ldrb.w	r7, [fp, #12]
d0080c02:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0080c06:	21ea      	movs	r1, #234	; 0xea
d0080c08:	f89b 000e 	ldrb.w	r0, [fp, #14]
d0080c0c:	ea47 2202 	orr.w	r2, r7, r2, lsl #8
d0080c10:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080c14:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d0080c18:	4a2a      	ldr	r2, [pc, #168]	; (d0080cc4 <main+0xa94>)
d0080c1a:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d0080c1e:	202a      	movs	r0, #42	; 0x2a
d0080c20:	685b      	ldr	r3, [r3, #4]
d0080c22:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0080c24:	4798      	blx	r3
d0080c26:	f8cd a00c 	str.w	sl, [sp, #12]
d0080c2a:	4b27      	ldr	r3, [pc, #156]	; (d0080cc8 <main+0xa98>)
d0080c2c:	b2f7      	uxtb	r7, r6
d0080c2e:	2006      	movs	r0, #6
d0080c30:	f89b c00c 	ldrb.w	ip, [fp, #12]
d0080c34:	781b      	ldrb	r3, [r3, #0]
d0080c36:	42bb      	cmp	r3, r7
d0080c38:	f000 8227 	beq.w	d008108a <main+0xe5a>
d0080c3c:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080c40:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080c44:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0080c48:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080c4c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080c50:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080c54:	685b      	ldr	r3, [r3, #4]
d0080c56:	68db      	ldr	r3, [r3, #12]
d0080c58:	4798      	blx	r3
d0080c5a:	4621      	mov	r1, r4
d0080c5c:	4642      	mov	r2, r8
d0080c5e:	202e      	movs	r0, #46	; 0x2e
d0080c60:	2e00      	cmp	r6, #0
d0080c62:	f000 81fa 	beq.w	d008105a <main+0xe2a>
d0080c66:	2f01      	cmp	r7, #1
d0080c68:	f000 82be 	beq.w	d00811e8 <main+0xfb8>
d0080c6c:	f89b e00c 	ldrb.w	lr, [fp, #12]
d0080c70:	f89b 700d 	ldrb.w	r7, [fp, #13]
d0080c74:	f89b a00e 	ldrb.w	sl, [fp, #14]
d0080c78:	ea4e 2c07 	orr.w	ip, lr, r7, lsl #8
d0080c7c:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080c80:	ea4c 470a 	orr.w	r7, ip, sl, lsl #16
d0080c84:	ea47 6303 	orr.w	r3, r7, r3, lsl #24
d0080c88:	685b      	ldr	r3, [r3, #4]
d0080c8a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0080c8c:	4798      	blx	r3
d0080c8e:	2d03      	cmp	r5, #3
d0080c90:	f040 81f6 	bne.w	d0081080 <main+0xe50>
d0080c94:	4b0d      	ldr	r3, [pc, #52]	; (d0080ccc <main+0xa9c>)
d0080c96:	226e      	movs	r2, #110	; 0x6e
d0080c98:	21de      	movs	r1, #222	; 0xde
d0080c9a:	f44f 70aa 	mov.w	r0, #340	; 0x154
d0080c9e:	781c      	ldrb	r4, [r3, #0]
d0080ca0:	2346      	movs	r3, #70	; 0x46
d0080ca2:	f8dd a00c 	ldr.w	sl, [sp, #12]
d0080ca6:	f7ff fa3b 	bl	d0080120 <draw_panel>
d0080caa:	e015      	b.n	d0080cd8 <main+0xaa8>
d0080cac:	d0081af0 	.word	0xd0081af0
d0080cb0:	d00820a3 	.word	0xd00820a3
d0080cb4:	d0081aac 	.word	0xd0081aac
d0080cb8:	d0081abc 	.word	0xd0081abc
d0080cbc:	d0081b04 	.word	0xd0081b04
d0080cc0:	19c2d14f 	.word	0x19c2d14f
d0080cc4:	d0081b1c 	.word	0xd0081b1c
d0080cc8:	d00820a2 	.word	0xd00820a2
d0080ccc:	d00820a0 	.word	0xd00820a0
d0080cd0:	d0081b54 	.word	0xd0081b54
d0080cd4:	d0081b28 	.word	0xd0081b28
d0080cd8:	eb04 0444 	add.w	r4, r4, r4, lsl #1
d0080cdc:	4dcd      	ldr	r5, [pc, #820]	; (d0081014 <main+0xde4>)
d0080cde:	4bce      	ldr	r3, [pc, #824]	; (d0081018 <main+0xde8>)
d0080ce0:	ebc4 04c4 	rsb	r4, r4, r4, lsl #3
d0080ce4:	781b      	ldrb	r3, [r3, #0]
d0080ce6:	00a4      	lsls	r4, r4, #2
d0080ce8:	fba5 5404 	umull	r5, r4, r5, r4
d0080cec:	f344 144f 	sbfx	r4, r4, #5, #16
d0080cf0:	2b00      	cmp	r3, #0
d0080cf2:	d034      	beq.n	d0080d5e <main+0xb2e>
d0080cf4:	4bc9      	ldr	r3, [pc, #804]	; (d008101c <main+0xdec>)
d0080cf6:	881b      	ldrh	r3, [r3, #0]
d0080cf8:	f5a3 73aa 	sub.w	r3, r3, #340	; 0x154
d0080cfc:	b29b      	uxth	r3, r3
d0080cfe:	2b6d      	cmp	r3, #109	; 0x6d
d0080d00:	d82d      	bhi.n	d0080d5e <main+0xb2e>
d0080d02:	4bc7      	ldr	r3, [pc, #796]	; (d0081020 <main+0xdf0>)
d0080d04:	881b      	ldrh	r3, [r3, #0]
d0080d06:	3bde      	subs	r3, #222	; 0xde
d0080d08:	b29b      	uxth	r3, r3
d0080d0a:	2b45      	cmp	r3, #69	; 0x45
d0080d0c:	d827      	bhi.n	d0080d5e <main+0xb2e>
d0080d0e:	f89b 500c 	ldrb.w	r5, [fp, #12]
d0080d12:	2004      	movs	r0, #4
d0080d14:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080d18:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080d1c:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d0080d20:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080d24:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080d28:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080d2c:	685b      	ldr	r3, [r3, #4]
d0080d2e:	68db      	ldr	r3, [r3, #12]
d0080d30:	4798      	blx	r3
d0080d32:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0080d36:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0080d3a:	233e      	movs	r3, #62	; 0x3e
d0080d3c:	f89b 600e 	ldrb.w	r6, [fp, #14]
d0080d40:	2266      	movs	r2, #102	; 0x66
d0080d42:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0080d46:	f89b 500f 	ldrb.w	r5, [fp, #15]
d0080d4a:	21e2      	movs	r1, #226	; 0xe2
d0080d4c:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d0080d50:	f44f 70ac 	mov.w	r0, #344	; 0x158
d0080d54:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0080d58:	686d      	ldr	r5, [r5, #4]
d0080d5a:	686d      	ldr	r5, [r5, #4]
d0080d5c:	47a8      	blx	r5
d0080d5e:	4bb1      	ldr	r3, [pc, #708]	; (d0081024 <main+0xdf4>)
d0080d60:	781b      	ldrb	r3, [r3, #0]
d0080d62:	2b00      	cmp	r3, #0
d0080d64:	f000 81f8 	beq.w	d0081158 <main+0xf28>
d0080d68:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0080d6c:	2008      	movs	r0, #8
d0080d6e:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080d72:	2700      	movs	r7, #0
d0080d74:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080d78:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0080d7c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080d80:	f89b 200f 	ldrb.w	r2, [fp, #15]
d0080d84:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080d88:	685b      	ldr	r3, [r3, #4]
d0080d8a:	68db      	ldr	r3, [r3, #12]
d0080d8c:	4798      	blx	r3
d0080d8e:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0080d92:	b2b8      	uxth	r0, r7
d0080d94:	f89b 600d 	ldrb.w	r6, [fp, #13]
d0080d98:	f347 014e 	sbfx	r1, r7, #1, #15
d0080d9c:	f89b 500e 	ldrb.w	r5, [fp, #14]
d0080da0:	3701      	adds	r7, #1
d0080da2:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
d0080da6:	f89b c00f 	ldrb.w	ip, [fp, #15]
d0080daa:	f100 030a 	add.w	r3, r0, #10
d0080dae:	f500 70b8 	add.w	r0, r0, #368	; 0x170
d0080db2:	ea42 4605 	orr.w	r6, r2, r5, lsl #16
d0080db6:	f1c1 01f4 	rsb	r1, r1, #244	; 0xf4
d0080dba:	b21b      	sxth	r3, r3
d0080dbc:	2201      	movs	r2, #1
d0080dbe:	ea46 650c 	orr.w	r5, r6, ip, lsl #24
d0080dc2:	b200      	sxth	r0, r0
d0080dc4:	686d      	ldr	r5, [r5, #4]
d0080dc6:	686d      	ldr	r5, [r5, #4]
d0080dc8:	47a8      	blx	r5
d0080dca:	2f12      	cmp	r7, #18
d0080dcc:	d1df      	bne.n	d0080d8e <main+0xb5e>
d0080dce:	f89b 500c 	ldrb.w	r5, [fp, #12]
d0080dd2:	2002      	movs	r0, #2
d0080dd4:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080dd8:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080ddc:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d0080de0:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080de4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080de8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080dec:	685b      	ldr	r3, [r3, #4]
d0080dee:	68db      	ldr	r3, [r3, #12]
d0080df0:	4798      	blx	r3
d0080df2:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0080df6:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0080dfa:	2303      	movs	r3, #3
d0080dfc:	f89b 600e 	ldrb.w	r6, [fp, #14]
d0080e00:	2254      	movs	r2, #84	; 0x54
d0080e02:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0080e06:	f89b 500f 	ldrb.w	r5, [fp, #15]
d0080e0a:	f240 1115 	movw	r1, #277	; 0x115
d0080e0e:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d0080e12:	f44f 70b4 	mov.w	r0, #360	; 0x168
d0080e16:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0080e1a:	686d      	ldr	r5, [r5, #4]
d0080e1c:	686d      	ldr	r5, [r5, #4]
d0080e1e:	47a8      	blx	r5
d0080e20:	f89b 500c 	ldrb.w	r5, [fp, #12]
d0080e24:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080e28:	2007      	movs	r0, #7
d0080e2a:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080e2e:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d0080e32:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080e36:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080e3a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080e3e:	685b      	ldr	r3, [r3, #4]
d0080e40:	68db      	ldr	r3, [r3, #12]
d0080e42:	4798      	blx	r3
d0080e44:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0080e48:	f89b 600d 	ldrb.w	r6, [fp, #13]
d0080e4c:	4622      	mov	r2, r4
d0080e4e:	f89b 500e 	ldrb.w	r5, [fp, #14]
d0080e52:	2303      	movs	r3, #3
d0080e54:	ea41 2606 	orr.w	r6, r1, r6, lsl #8
d0080e58:	f89b 400f 	ldrb.w	r4, [fp, #15]
d0080e5c:	f240 1115 	movw	r1, #277	; 0x115
d0080e60:	f44f 70b4 	mov.w	r0, #360	; 0x168
d0080e64:	ea46 4505 	orr.w	r5, r6, r5, lsl #16
d0080e68:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0080e6c:	6864      	ldr	r4, [r4, #4]
d0080e6e:	6864      	ldr	r4, [r4, #4]
d0080e70:	47a0      	blx	r4
d0080e72:	f89b 400c 	ldrb.w	r4, [fp, #12]
d0080e76:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080e7a:	2006      	movs	r0, #6
d0080e7c:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080e80:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0080e84:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080e88:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080e8c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080e90:	685b      	ldr	r3, [r3, #4]
d0080e92:	68db      	ldr	r3, [r3, #12]
d0080e94:	4798      	blx	r3
d0080e96:	f89b 200c 	ldrb.w	r2, [fp, #12]
d0080e9a:	f89b 500d 	ldrb.w	r5, [fp, #13]
d0080e9e:	21e4      	movs	r1, #228	; 0xe4
d0080ea0:	f89b 400e 	ldrb.w	r4, [fp, #14]
d0080ea4:	f44f 70b3 	mov.w	r0, #358	; 0x166
d0080ea8:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
d0080eac:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080eb0:	4a5c      	ldr	r2, [pc, #368]	; (d0081024 <main+0xdf4>)
d0080eb2:	ea45 4404 	orr.w	r4, r5, r4, lsl #16
d0080eb6:	4d5c      	ldr	r5, [pc, #368]	; (d0081028 <main+0xdf8>)
d0080eb8:	7816      	ldrb	r6, [r2, #0]
d0080eba:	ea44 6303 	orr.w	r3, r4, r3, lsl #24
d0080ebe:	4a5b      	ldr	r2, [pc, #364]	; (d008102c <main+0xdfc>)
d0080ec0:	685b      	ldr	r3, [r3, #4]
d0080ec2:	2e00      	cmp	r6, #0
d0080ec4:	bf08      	it	eq
d0080ec6:	462a      	moveq	r2, r5
d0080ec8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0080eca:	4798      	blx	r3
d0080ecc:	4b52      	ldr	r3, [pc, #328]	; (d0081018 <main+0xde8>)
d0080ece:	781b      	ldrb	r3, [r3, #0]
d0080ed0:	2b00      	cmp	r3, #0
d0080ed2:	f000 8138 	beq.w	d0081146 <main+0xf16>
d0080ed6:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0080eda:	200d      	movs	r0, #13
d0080edc:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0080ee0:	4e4e      	ldr	r6, [pc, #312]	; (d008101c <main+0xdec>)
d0080ee2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080ee6:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080eea:	4f4d      	ldr	r7, [pc, #308]	; (d0081020 <main+0xdf0>)
d0080eec:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080ef0:	f89b 200f 	ldrb.w	r2, [fp, #15]
d0080ef4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080ef8:	685b      	ldr	r3, [r3, #4]
d0080efa:	68db      	ldr	r3, [r3, #12]
d0080efc:	4798      	blx	r3
d0080efe:	f89b 000c 	ldrb.w	r0, [fp, #12]
d0080f02:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080f06:	2301      	movs	r3, #1
d0080f08:	f89b 500e 	ldrb.w	r5, [fp, #14]
d0080f0c:	2211      	movs	r2, #17
d0080f0e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0080f12:	f89b 400f 	ldrb.w	r4, [fp, #15]
d0080f16:	8830      	ldrh	r0, [r6, #0]
d0080f18:	ea41 4505 	orr.w	r5, r1, r5, lsl #16
d0080f1c:	f9b7 1000 	ldrsh.w	r1, [r7]
d0080f20:	3808      	subs	r0, #8
d0080f22:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0080f26:	b200      	sxth	r0, r0
d0080f28:	6864      	ldr	r4, [r4, #4]
d0080f2a:	6864      	ldr	r4, [r4, #4]
d0080f2c:	47a0      	blx	r4
d0080f2e:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0080f32:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0080f36:	2311      	movs	r3, #17
d0080f38:	f89b 500e 	ldrb.w	r5, [fp, #14]
d0080f3c:	2201      	movs	r2, #1
d0080f3e:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0080f42:	f89b 400f 	ldrb.w	r4, [fp, #15]
d0080f46:	8839      	ldrh	r1, [r7, #0]
d0080f48:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0080f4c:	f9b6 0000 	ldrsh.w	r0, [r6]
d0080f50:	3908      	subs	r1, #8
d0080f52:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0080f56:	b209      	sxth	r1, r1
d0080f58:	6864      	ldr	r4, [r4, #4]
d0080f5a:	6864      	ldr	r4, [r4, #4]
d0080f5c:	47a0      	blx	r4
d0080f5e:	4b34      	ldr	r3, [pc, #208]	; (d0081030 <main+0xe00>)
d0080f60:	781b      	ldrb	r3, [r3, #0]
d0080f62:	b353      	cbz	r3, d0080fba <main+0xd8a>
d0080f64:	f89b 400c 	ldrb.w	r4, [fp, #12]
d0080f68:	200c      	movs	r0, #12
d0080f6a:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080f6e:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080f72:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0080f76:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080f7a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080f7e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080f82:	685b      	ldr	r3, [r3, #4]
d0080f84:	68db      	ldr	r3, [r3, #12]
d0080f86:	4798      	blx	r3
d0080f88:	f89b 200c 	ldrb.w	r2, [fp, #12]
d0080f8c:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0080f90:	2305      	movs	r3, #5
d0080f92:	f89b 500e 	ldrb.w	r5, [fp, #14]
d0080f96:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d0080f9a:	f89b 400f 	ldrb.w	r4, [fp, #15]
d0080f9e:	8839      	ldrh	r1, [r7, #0]
d0080fa0:	461a      	mov	r2, r3
d0080fa2:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0080fa6:	8830      	ldrh	r0, [r6, #0]
d0080fa8:	3902      	subs	r1, #2
d0080faa:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0080fae:	3802      	subs	r0, #2
d0080fb0:	b209      	sxth	r1, r1
d0080fb2:	6864      	ldr	r4, [r4, #4]
d0080fb4:	b200      	sxth	r0, r0
d0080fb6:	6864      	ldr	r4, [r4, #4]
d0080fb8:	47a0      	blx	r4
d0080fba:	f89b 400c 	ldrb.w	r4, [fp, #12]
d0080fbe:	2006      	movs	r0, #6
d0080fc0:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080fc4:	f10a 0a01 	add.w	sl, sl, #1
d0080fc8:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080fcc:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0080fd0:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080fd4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080fd8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080fdc:	685b      	ldr	r3, [r3, #4]
d0080fde:	68db      	ldr	r3, [r3, #12]
d0080fe0:	4798      	blx	r3
d0080fe2:	f89b 500c 	ldrb.w	r5, [fp, #12]
d0080fe6:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0080fea:	f44f 7198 	mov.w	r1, #304	; 0x130
d0080fee:	f89b 400e 	ldrb.w	r4, [fp, #14]
d0080ff2:	2012      	movs	r0, #18
d0080ff4:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
d0080ff8:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080ffc:	ea42 4404 	orr.w	r4, r2, r4, lsl #16
d0081000:	4a0c      	ldr	r2, [pc, #48]	; (d0081034 <main+0xe04>)
d0081002:	ea44 6303 	orr.w	r3, r4, r3, lsl #24
d0081006:	685b      	ldr	r3, [r3, #4]
d0081008:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d008100a:	4798      	blx	r3
d008100c:	f89b 000c 	ldrb.w	r0, [fp, #12]
d0081010:	e012      	b.n	d0081038 <main+0xe08>
d0081012:	bf00      	nop
d0081014:	51eb851f 	.word	0x51eb851f
d0081018:	d00820a3 	.word	0xd00820a3
d008101c:	d00820a6 	.word	0xd00820a6
d0081020:	d00820a8 	.word	0xd00820a8
d0081024:	d00820a1 	.word	0xd00820a1
d0081028:	d0081ad4 	.word	0xd0081ad4
d008102c:	d0081acc 	.word	0xd0081acc
d0081030:	d00820a4 	.word	0xd00820a4
d0081034:	d0081b68 	.word	0xd0081b68
d0081038:	f89b 100d 	ldrb.w	r1, [fp, #13]
d008103c:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0081040:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0081044:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0081048:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d008104c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0081050:	681b      	ldr	r3, [r3, #0]
d0081052:	681b      	ldr	r3, [r3, #0]
d0081054:	4798      	blx	r3
d0081056:	f7ff ba5e 	b.w	d0080516 <main+0x2e6>
d008105a:	f89b c00c 	ldrb.w	ip, [fp, #12]
d008105e:	464a      	mov	r2, r9
d0081060:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0081064:	f89b 700e 	ldrb.w	r7, [fp, #14]
d0081068:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d008106c:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0081070:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0081074:	202e      	movs	r0, #46	; 0x2e
d0081076:	ea47 6303 	orr.w	r3, r7, r3, lsl #24
d008107a:	685b      	ldr	r3, [r3, #4]
d008107c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d008107e:	4798      	blx	r3
d0081080:	3501      	adds	r5, #1
d0081082:	3601      	adds	r6, #1
d0081084:	340d      	adds	r4, #13
d0081086:	b2ed      	uxtb	r5, r5
d0081088:	e5cf      	b.n	d0080c2a <main+0x9fa>
d008108a:	f89b 100d 	ldrb.w	r1, [fp, #13]
d008108e:	200b      	movs	r0, #11
d0081090:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0081094:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0081098:	f89b 300f 	ldrb.w	r3, [fp, #15]
d008109c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00810a0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00810a4:	685b      	ldr	r3, [r3, #4]
d00810a6:	68db      	ldr	r3, [r3, #12]
d00810a8:	4798      	blx	r3
d00810aa:	f89b 200c 	ldrb.w	r2, [fp, #12]
d00810ae:	f89b 000d 	ldrb.w	r0, [fp, #13]
d00810b2:	1ea1      	subs	r1, r4, #2
d00810b4:	f89b e00e 	ldrb.w	lr, [fp, #14]
d00810b8:	230b      	movs	r3, #11
d00810ba:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d00810be:	f89b c00f 	ldrb.w	ip, [fp, #15]
d00810c2:	b209      	sxth	r1, r1
d00810c4:	f44f 7287 	mov.w	r2, #270	; 0x10e
d00810c8:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d00810cc:	2027      	movs	r0, #39	; 0x27
d00810ce:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d00810d2:	f8dc c004 	ldr.w	ip, [ip, #4]
d00810d6:	f8dc a004 	ldr.w	sl, [ip, #4]
d00810da:	47d0      	blx	sl
d00810dc:	f89b 000c 	ldrb.w	r0, [fp, #12]
d00810e0:	f89b 100d 	ldrb.w	r1, [fp, #13]
d00810e4:	f89b 200e 	ldrb.w	r2, [fp, #14]
d00810e8:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00810ec:	f89b 300f 	ldrb.w	r3, [fp, #15]
d00810f0:	4862      	ldr	r0, [pc, #392]	; (d008127c <main+0x104c>)
d00810f2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00810f6:	7800      	ldrb	r0, [r0, #0]
d00810f8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00810fc:	42b8      	cmp	r0, r7
d00810fe:	bf0c      	ite	eq
d0081100:	200d      	moveq	r0, #13
d0081102:	2006      	movne	r0, #6
d0081104:	685b      	ldr	r3, [r3, #4]
d0081106:	68db      	ldr	r3, [r3, #12]
d0081108:	e5a6      	b.n	d0080c58 <main+0xa28>
d008110a:	4b5d      	ldr	r3, [pc, #372]	; (d0081280 <main+0x1050>)
d008110c:	781b      	ldrb	r3, [r3, #0]
d008110e:	b113      	cbz	r3, d0081116 <main+0xee6>
d0081110:	3b01      	subs	r3, #1
d0081112:	4a5b      	ldr	r2, [pc, #364]	; (d0081280 <main+0x1050>)
d0081114:	7013      	strb	r3, [r2, #0]
d0081116:	4b5b      	ldr	r3, [pc, #364]	; (d0081284 <main+0x1054>)
d0081118:	7019      	strb	r1, [r3, #0]
d008111a:	4b5b      	ldr	r3, [pc, #364]	; (d0081288 <main+0x1058>)
d008111c:	781a      	ldrb	r2, [r3, #0]
d008111e:	2a00      	cmp	r2, #0
d0081120:	f47f aa8b 	bne.w	d008063a <main+0x40a>
d0081124:	f01a 0f03 	tst.w	sl, #3
d0081128:	f47f aa87 	bne.w	d008063a <main+0x40a>
d008112c:	4857      	ldr	r0, [pc, #348]	; (d008128c <main+0x105c>)
d008112e:	2165      	movs	r1, #101	; 0x65
d0081130:	4b57      	ldr	r3, [pc, #348]	; (d0081290 <main+0x1060>)
d0081132:	7802      	ldrb	r2, [r0, #0]
d0081134:	3201      	adds	r2, #1
d0081136:	fb83 4302 	smull	r4, r3, r3, r2
d008113a:	091b      	lsrs	r3, r3, #4
d008113c:	fb01 2313 	mls	r3, r1, r3, r2
d0081140:	7003      	strb	r3, [r0, #0]
d0081142:	f7ff ba7a 	b.w	d008063a <main+0x40a>
d0081146:	4b4e      	ldr	r3, [pc, #312]	; (d0081280 <main+0x1050>)
d0081148:	781b      	ldrb	r3, [r3, #0]
d008114a:	2b00      	cmp	r3, #0
d008114c:	f43f af35 	beq.w	d0080fba <main+0xd8a>
d0081150:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0081154:	2007      	movs	r0, #7
d0081156:	e6c1      	b.n	d0080edc <main+0xcac>
d0081158:	f89b 500c 	ldrb.w	r5, [fp, #12]
d008115c:	2009      	movs	r0, #9
d008115e:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0081162:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0081166:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d008116a:	f89b 300f 	ldrb.w	r3, [fp, #15]
d008116e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0081172:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0081176:	685b      	ldr	r3, [r3, #4]
d0081178:	68db      	ldr	r3, [r3, #12]
d008117a:	4798      	blx	r3
d008117c:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0081180:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0081184:	231e      	movs	r3, #30
d0081186:	f89b 600e 	ldrb.w	r6, [fp, #14]
d008118a:	2205      	movs	r2, #5
d008118c:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0081190:	f89b 500f 	ldrb.w	r5, [fp, #15]
d0081194:	21ef      	movs	r1, #239	; 0xef
d0081196:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d008119a:	f44f 70bc 	mov.w	r0, #376	; 0x178
d008119e:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d00811a2:	686d      	ldr	r5, [r5, #4]
d00811a4:	686d      	ldr	r5, [r5, #4]
d00811a6:	47a8      	blx	r5
d00811a8:	f89b 100c 	ldrb.w	r1, [fp, #12]
d00811ac:	f89b 000d 	ldrb.w	r0, [fp, #13]
d00811b0:	231e      	movs	r3, #30
d00811b2:	f89b 600e 	ldrb.w	r6, [fp, #14]
d00811b6:	2205      	movs	r2, #5
d00811b8:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d00811bc:	f89b 500f 	ldrb.w	r5, [fp, #15]
d00811c0:	21ef      	movs	r1, #239	; 0xef
d00811c2:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d00811c6:	f240 1085 	movw	r0, #389	; 0x185
d00811ca:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d00811ce:	686d      	ldr	r5, [r5, #4]
d00811d0:	686d      	ldr	r5, [r5, #4]
d00811d2:	47a8      	blx	r5
d00811d4:	e5fb      	b.n	d0080dce <main+0xb9e>
d00811d6:	492f      	ldr	r1, [pc, #188]	; (d0081294 <main+0x1064>)
d00811d8:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d00811dc:	f89b 300f 	ldrb.w	r3, [fp, #15]
d00811e0:	6809      	ldr	r1, [r1, #0]
d00811e2:	482d      	ldr	r0, [pc, #180]	; (d0081298 <main+0x1068>)
d00811e4:	f7ff ba53 	b.w	d008068e <main+0x45e>
d00811e8:	f89b c00c 	ldrb.w	ip, [fp, #12]
d00811ec:	4a2b      	ldr	r2, [pc, #172]	; (d008129c <main+0x106c>)
d00811ee:	f89b 000d 	ldrb.w	r0, [fp, #13]
d00811f2:	e737      	b.n	d0081064 <main+0xe34>
d00811f4:	f04f 0200 	mov.w	r2, #0
d00811f8:	8022      	strh	r2, [r4, #0]
d00811fa:	2200      	movs	r2, #0
d00811fc:	f7ff b9f5 	b.w	d00805ea <main+0x3ba>
d0081200:	f04f 0300 	mov.w	r3, #0
d0081204:	8013      	strh	r3, [r2, #0]
d0081206:	2300      	movs	r3, #0
d0081208:	f7ff b9aa 	b.w	d0080560 <main+0x330>
d008120c:	4a1f      	ldr	r2, [pc, #124]	; (d008128c <main+0x105c>)
d008120e:	4b24      	ldr	r3, [pc, #144]	; (d00812a0 <main+0x1070>)
d0081210:	7010      	strb	r0, [r2, #0]
d0081212:	4a1d      	ldr	r2, [pc, #116]	; (d0081288 <main+0x1058>)
d0081214:	fba3 3101 	umull	r3, r1, r3, r1
d0081218:	2301      	movs	r3, #1
d008121a:	7010      	strb	r0, [r2, #0]
d008121c:	0889      	lsrs	r1, r1, #2
d008121e:	4a19      	ldr	r2, [pc, #100]	; (d0081284 <main+0x1054>)
d0081220:	7013      	strb	r3, [r2, #0]
d0081222:	4b16      	ldr	r3, [pc, #88]	; (d008127c <main+0x104c>)
d0081224:	7019      	strb	r1, [r3, #0]
d0081226:	e77d      	b.n	d0081124 <main+0xef4>
d0081228:	b292      	uxth	r2, r2
d008122a:	f5a2 7189 	sub.w	r1, r2, #274	; 0x112
d008122e:	290e      	cmp	r1, #14
d0081230:	d802      	bhi.n	d0081238 <main+0x1008>
d0081232:	f5b3 7fde 	cmp.w	r3, #444	; 0x1bc
d0081236:	db0f      	blt.n	d0081258 <main+0x1028>
d0081238:	3ade      	subs	r2, #222	; 0xde
d008123a:	2a45      	cmp	r2, #69	; 0x45
d008123c:	f63f a9f5 	bhi.w	d008062a <main+0x3fa>
d0081240:	f5b3 7fe1 	cmp.w	r3, #450	; 0x1c2
d0081244:	f6bf a9f1 	bge.w	d008062a <main+0x3fa>
d0081248:	4b0f      	ldr	r3, [pc, #60]	; (d0081288 <main+0x1058>)
d008124a:	781a      	ldrb	r2, [r3, #0]
d008124c:	fab2 f282 	clz	r2, r2
d0081250:	0952      	lsrs	r2, r2, #5
d0081252:	701a      	strb	r2, [r3, #0]
d0081254:	f7ff b9eb 	b.w	d008062e <main+0x3fe>
d0081258:	f5a3 72b4 	sub.w	r2, r3, #360	; 0x168
d008125c:	2364      	movs	r3, #100	; 0x64
d008125e:	4911      	ldr	r1, [pc, #68]	; (d00812a4 <main+0x1074>)
d0081260:	fb03 f302 	mul.w	r3, r3, r2
d0081264:	4a08      	ldr	r2, [pc, #32]	; (d0081288 <main+0x1058>)
d0081266:	089b      	lsrs	r3, r3, #2
d0081268:	7812      	ldrb	r2, [r2, #0]
d008126a:	fba1 1303 	umull	r1, r3, r1, r3
d008126e:	4907      	ldr	r1, [pc, #28]	; (d008128c <main+0x105c>)
d0081270:	089b      	lsrs	r3, r3, #2
d0081272:	700b      	strb	r3, [r1, #0]
d0081274:	f7ff b9db 	b.w	d008062e <main+0x3fe>
d0081278:	b292      	uxth	r2, r2
d008127a:	e7dd      	b.n	d0081238 <main+0x1008>
d008127c:	d00820a2 	.word	0xd00820a2
d0081280:	d00820a4 	.word	0xd00820a4
d0081284:	d0081c89 	.word	0xd0081c89
d0081288:	d00820a1 	.word	0xd00820a1
d008128c:	d00820a0 	.word	0xd00820a0
d0081290:	288df0cb 	.word	0x288df0cb
d0081294:	d00820e0 	.word	0xd00820e0
d0081298:	d00820c0 	.word	0xd00820c0
d008129c:	d0081b3c 	.word	0xd0081b3c
d00812a0:	4ec4ec4f 	.word	0x4ec4ec4f
d00812a4:	30c30c31 	.word	0x30c30c31

d00812a8 <__errno>:
d00812a8:	4b01      	ldr	r3, [pc, #4]	; (d00812b0 <__errno+0x8>)
d00812aa:	6818      	ldr	r0, [r3, #0]
d00812ac:	4770      	bx	lr
d00812ae:	bf00      	nop
d00812b0:	d0081c04 	.word	0xd0081c04

d00812b4 <memset>:
d00812b4:	4402      	add	r2, r0
d00812b6:	4603      	mov	r3, r0
d00812b8:	4293      	cmp	r3, r2
d00812ba:	d100      	bne.n	d00812be <memset+0xa>
d00812bc:	4770      	bx	lr
d00812be:	f803 1b01 	strb.w	r1, [r3], #1
d00812c2:	e7f9      	b.n	d00812b8 <memset+0x4>

d00812c4 <setbuf>:
d00812c4:	2900      	cmp	r1, #0
d00812c6:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00812ca:	bf0c      	ite	eq
d00812cc:	2202      	moveq	r2, #2
d00812ce:	2200      	movne	r2, #0
d00812d0:	f000 b800 	b.w	d00812d4 <setvbuf>

d00812d4 <setvbuf>:
d00812d4:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d00812d8:	461d      	mov	r5, r3
d00812da:	4b5d      	ldr	r3, [pc, #372]	; (d0081450 <setvbuf+0x17c>)
d00812dc:	681f      	ldr	r7, [r3, #0]
d00812de:	4604      	mov	r4, r0
d00812e0:	460e      	mov	r6, r1
d00812e2:	4690      	mov	r8, r2
d00812e4:	b127      	cbz	r7, d00812f0 <setvbuf+0x1c>
d00812e6:	69bb      	ldr	r3, [r7, #24]
d00812e8:	b913      	cbnz	r3, d00812f0 <setvbuf+0x1c>
d00812ea:	4638      	mov	r0, r7
d00812ec:	f000 f9d2 	bl	d0081694 <__sinit>
d00812f0:	4b58      	ldr	r3, [pc, #352]	; (d0081454 <setvbuf+0x180>)
d00812f2:	429c      	cmp	r4, r3
d00812f4:	d167      	bne.n	d00813c6 <setvbuf+0xf2>
d00812f6:	687c      	ldr	r4, [r7, #4]
d00812f8:	f1b8 0f02 	cmp.w	r8, #2
d00812fc:	d006      	beq.n	d008130c <setvbuf+0x38>
d00812fe:	f1b8 0f01 	cmp.w	r8, #1
d0081302:	f200 809f 	bhi.w	d0081444 <setvbuf+0x170>
d0081306:	2d00      	cmp	r5, #0
d0081308:	f2c0 809c 	blt.w	d0081444 <setvbuf+0x170>
d008130c:	6e63      	ldr	r3, [r4, #100]	; 0x64
d008130e:	07db      	lsls	r3, r3, #31
d0081310:	d405      	bmi.n	d008131e <setvbuf+0x4a>
d0081312:	89a3      	ldrh	r3, [r4, #12]
d0081314:	0598      	lsls	r0, r3, #22
d0081316:	d402      	bmi.n	d008131e <setvbuf+0x4a>
d0081318:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008131a:	f000 fa59 	bl	d00817d0 <__retarget_lock_acquire_recursive>
d008131e:	4621      	mov	r1, r4
d0081320:	4638      	mov	r0, r7
d0081322:	f000 f923 	bl	d008156c <_fflush_r>
d0081326:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0081328:	b141      	cbz	r1, d008133c <setvbuf+0x68>
d008132a:	f104 0344 	add.w	r3, r4, #68	; 0x44
d008132e:	4299      	cmp	r1, r3
d0081330:	d002      	beq.n	d0081338 <setvbuf+0x64>
d0081332:	4638      	mov	r0, r7
d0081334:	f000 fa7a 	bl	d008182c <_free_r>
d0081338:	2300      	movs	r3, #0
d008133a:	6363      	str	r3, [r4, #52]	; 0x34
d008133c:	2300      	movs	r3, #0
d008133e:	61a3      	str	r3, [r4, #24]
d0081340:	6063      	str	r3, [r4, #4]
d0081342:	89a3      	ldrh	r3, [r4, #12]
d0081344:	0619      	lsls	r1, r3, #24
d0081346:	d503      	bpl.n	d0081350 <setvbuf+0x7c>
d0081348:	6921      	ldr	r1, [r4, #16]
d008134a:	4638      	mov	r0, r7
d008134c:	f000 fa6e 	bl	d008182c <_free_r>
d0081350:	89a3      	ldrh	r3, [r4, #12]
d0081352:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0081356:	f023 0303 	bic.w	r3, r3, #3
d008135a:	f1b8 0f02 	cmp.w	r8, #2
d008135e:	81a3      	strh	r3, [r4, #12]
d0081360:	d06c      	beq.n	d008143c <setvbuf+0x168>
d0081362:	ab01      	add	r3, sp, #4
d0081364:	466a      	mov	r2, sp
d0081366:	4621      	mov	r1, r4
d0081368:	4638      	mov	r0, r7
d008136a:	f000 fa33 	bl	d00817d4 <__swhatbuf_r>
d008136e:	89a3      	ldrh	r3, [r4, #12]
d0081370:	4318      	orrs	r0, r3
d0081372:	81a0      	strh	r0, [r4, #12]
d0081374:	2d00      	cmp	r5, #0
d0081376:	d130      	bne.n	d00813da <setvbuf+0x106>
d0081378:	9d00      	ldr	r5, [sp, #0]
d008137a:	4628      	mov	r0, r5
d008137c:	f000 fa4e 	bl	d008181c <malloc>
d0081380:	4606      	mov	r6, r0
d0081382:	2800      	cmp	r0, #0
d0081384:	d155      	bne.n	d0081432 <setvbuf+0x15e>
d0081386:	f8dd 9000 	ldr.w	r9, [sp]
d008138a:	45a9      	cmp	r9, r5
d008138c:	d14a      	bne.n	d0081424 <setvbuf+0x150>
d008138e:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0081392:	2200      	movs	r2, #0
d0081394:	60a2      	str	r2, [r4, #8]
d0081396:	f104 0247 	add.w	r2, r4, #71	; 0x47
d008139a:	6022      	str	r2, [r4, #0]
d008139c:	6122      	str	r2, [r4, #16]
d008139e:	2201      	movs	r2, #1
d00813a0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00813a4:	6162      	str	r2, [r4, #20]
d00813a6:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00813a8:	f043 0302 	orr.w	r3, r3, #2
d00813ac:	07d2      	lsls	r2, r2, #31
d00813ae:	81a3      	strh	r3, [r4, #12]
d00813b0:	d405      	bmi.n	d00813be <setvbuf+0xea>
d00813b2:	f413 7f00 	tst.w	r3, #512	; 0x200
d00813b6:	d102      	bne.n	d00813be <setvbuf+0xea>
d00813b8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00813ba:	f000 fa0a 	bl	d00817d2 <__retarget_lock_release_recursive>
d00813be:	4628      	mov	r0, r5
d00813c0:	b003      	add	sp, #12
d00813c2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00813c6:	4b24      	ldr	r3, [pc, #144]	; (d0081458 <setvbuf+0x184>)
d00813c8:	429c      	cmp	r4, r3
d00813ca:	d101      	bne.n	d00813d0 <setvbuf+0xfc>
d00813cc:	68bc      	ldr	r4, [r7, #8]
d00813ce:	e793      	b.n	d00812f8 <setvbuf+0x24>
d00813d0:	4b22      	ldr	r3, [pc, #136]	; (d008145c <setvbuf+0x188>)
d00813d2:	429c      	cmp	r4, r3
d00813d4:	bf08      	it	eq
d00813d6:	68fc      	ldreq	r4, [r7, #12]
d00813d8:	e78e      	b.n	d00812f8 <setvbuf+0x24>
d00813da:	2e00      	cmp	r6, #0
d00813dc:	d0cd      	beq.n	d008137a <setvbuf+0xa6>
d00813de:	69bb      	ldr	r3, [r7, #24]
d00813e0:	b913      	cbnz	r3, d00813e8 <setvbuf+0x114>
d00813e2:	4638      	mov	r0, r7
d00813e4:	f000 f956 	bl	d0081694 <__sinit>
d00813e8:	f1b8 0f01 	cmp.w	r8, #1
d00813ec:	bf08      	it	eq
d00813ee:	89a3      	ldrheq	r3, [r4, #12]
d00813f0:	6026      	str	r6, [r4, #0]
d00813f2:	bf04      	itt	eq
d00813f4:	f043 0301 	orreq.w	r3, r3, #1
d00813f8:	81a3      	strheq	r3, [r4, #12]
d00813fa:	89a2      	ldrh	r2, [r4, #12]
d00813fc:	f012 0308 	ands.w	r3, r2, #8
d0081400:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0081404:	d01c      	beq.n	d0081440 <setvbuf+0x16c>
d0081406:	07d3      	lsls	r3, r2, #31
d0081408:	bf41      	itttt	mi
d008140a:	2300      	movmi	r3, #0
d008140c:	426d      	negmi	r5, r5
d008140e:	60a3      	strmi	r3, [r4, #8]
d0081410:	61a5      	strmi	r5, [r4, #24]
d0081412:	bf58      	it	pl
d0081414:	60a5      	strpl	r5, [r4, #8]
d0081416:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0081418:	f015 0501 	ands.w	r5, r5, #1
d008141c:	d115      	bne.n	d008144a <setvbuf+0x176>
d008141e:	f412 7f00 	tst.w	r2, #512	; 0x200
d0081422:	e7c8      	b.n	d00813b6 <setvbuf+0xe2>
d0081424:	4648      	mov	r0, r9
d0081426:	f000 f9f9 	bl	d008181c <malloc>
d008142a:	4606      	mov	r6, r0
d008142c:	2800      	cmp	r0, #0
d008142e:	d0ae      	beq.n	d008138e <setvbuf+0xba>
d0081430:	464d      	mov	r5, r9
d0081432:	89a3      	ldrh	r3, [r4, #12]
d0081434:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0081438:	81a3      	strh	r3, [r4, #12]
d008143a:	e7d0      	b.n	d00813de <setvbuf+0x10a>
d008143c:	2500      	movs	r5, #0
d008143e:	e7a8      	b.n	d0081392 <setvbuf+0xbe>
d0081440:	60a3      	str	r3, [r4, #8]
d0081442:	e7e8      	b.n	d0081416 <setvbuf+0x142>
d0081444:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0081448:	e7b9      	b.n	d00813be <setvbuf+0xea>
d008144a:	2500      	movs	r5, #0
d008144c:	e7b7      	b.n	d00813be <setvbuf+0xea>
d008144e:	bf00      	nop
d0081450:	d0081c04 	.word	0xd0081c04
d0081454:	d0081bbc 	.word	0xd0081bbc
d0081458:	d0081bdc 	.word	0xd0081bdc
d008145c:	d0081b9c 	.word	0xd0081b9c

d0081460 <__sflush_r>:
d0081460:	898a      	ldrh	r2, [r1, #12]
d0081462:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0081466:	4605      	mov	r5, r0
d0081468:	0710      	lsls	r0, r2, #28
d008146a:	460c      	mov	r4, r1
d008146c:	d458      	bmi.n	d0081520 <__sflush_r+0xc0>
d008146e:	684b      	ldr	r3, [r1, #4]
d0081470:	2b00      	cmp	r3, #0
d0081472:	dc05      	bgt.n	d0081480 <__sflush_r+0x20>
d0081474:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0081476:	2b00      	cmp	r3, #0
d0081478:	dc02      	bgt.n	d0081480 <__sflush_r+0x20>
d008147a:	2000      	movs	r0, #0
d008147c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0081480:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0081482:	2e00      	cmp	r6, #0
d0081484:	d0f9      	beq.n	d008147a <__sflush_r+0x1a>
d0081486:	2300      	movs	r3, #0
d0081488:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d008148c:	682f      	ldr	r7, [r5, #0]
d008148e:	602b      	str	r3, [r5, #0]
d0081490:	d032      	beq.n	d00814f8 <__sflush_r+0x98>
d0081492:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0081494:	89a3      	ldrh	r3, [r4, #12]
d0081496:	075a      	lsls	r2, r3, #29
d0081498:	d505      	bpl.n	d00814a6 <__sflush_r+0x46>
d008149a:	6863      	ldr	r3, [r4, #4]
d008149c:	1ac0      	subs	r0, r0, r3
d008149e:	6b63      	ldr	r3, [r4, #52]	; 0x34
d00814a0:	b10b      	cbz	r3, d00814a6 <__sflush_r+0x46>
d00814a2:	6c23      	ldr	r3, [r4, #64]	; 0x40
d00814a4:	1ac0      	subs	r0, r0, r3
d00814a6:	2300      	movs	r3, #0
d00814a8:	4602      	mov	r2, r0
d00814aa:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00814ac:	6a21      	ldr	r1, [r4, #32]
d00814ae:	4628      	mov	r0, r5
d00814b0:	47b0      	blx	r6
d00814b2:	1c43      	adds	r3, r0, #1
d00814b4:	89a3      	ldrh	r3, [r4, #12]
d00814b6:	d106      	bne.n	d00814c6 <__sflush_r+0x66>
d00814b8:	6829      	ldr	r1, [r5, #0]
d00814ba:	291d      	cmp	r1, #29
d00814bc:	d82c      	bhi.n	d0081518 <__sflush_r+0xb8>
d00814be:	4a2a      	ldr	r2, [pc, #168]	; (d0081568 <__sflush_r+0x108>)
d00814c0:	40ca      	lsrs	r2, r1
d00814c2:	07d6      	lsls	r6, r2, #31
d00814c4:	d528      	bpl.n	d0081518 <__sflush_r+0xb8>
d00814c6:	2200      	movs	r2, #0
d00814c8:	6062      	str	r2, [r4, #4]
d00814ca:	04d9      	lsls	r1, r3, #19
d00814cc:	6922      	ldr	r2, [r4, #16]
d00814ce:	6022      	str	r2, [r4, #0]
d00814d0:	d504      	bpl.n	d00814dc <__sflush_r+0x7c>
d00814d2:	1c42      	adds	r2, r0, #1
d00814d4:	d101      	bne.n	d00814da <__sflush_r+0x7a>
d00814d6:	682b      	ldr	r3, [r5, #0]
d00814d8:	b903      	cbnz	r3, d00814dc <__sflush_r+0x7c>
d00814da:	6560      	str	r0, [r4, #84]	; 0x54
d00814dc:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00814de:	602f      	str	r7, [r5, #0]
d00814e0:	2900      	cmp	r1, #0
d00814e2:	d0ca      	beq.n	d008147a <__sflush_r+0x1a>
d00814e4:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00814e8:	4299      	cmp	r1, r3
d00814ea:	d002      	beq.n	d00814f2 <__sflush_r+0x92>
d00814ec:	4628      	mov	r0, r5
d00814ee:	f000 f99d 	bl	d008182c <_free_r>
d00814f2:	2000      	movs	r0, #0
d00814f4:	6360      	str	r0, [r4, #52]	; 0x34
d00814f6:	e7c1      	b.n	d008147c <__sflush_r+0x1c>
d00814f8:	6a21      	ldr	r1, [r4, #32]
d00814fa:	2301      	movs	r3, #1
d00814fc:	4628      	mov	r0, r5
d00814fe:	47b0      	blx	r6
d0081500:	1c41      	adds	r1, r0, #1
d0081502:	d1c7      	bne.n	d0081494 <__sflush_r+0x34>
d0081504:	682b      	ldr	r3, [r5, #0]
d0081506:	2b00      	cmp	r3, #0
d0081508:	d0c4      	beq.n	d0081494 <__sflush_r+0x34>
d008150a:	2b1d      	cmp	r3, #29
d008150c:	d001      	beq.n	d0081512 <__sflush_r+0xb2>
d008150e:	2b16      	cmp	r3, #22
d0081510:	d101      	bne.n	d0081516 <__sflush_r+0xb6>
d0081512:	602f      	str	r7, [r5, #0]
d0081514:	e7b1      	b.n	d008147a <__sflush_r+0x1a>
d0081516:	89a3      	ldrh	r3, [r4, #12]
d0081518:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d008151c:	81a3      	strh	r3, [r4, #12]
d008151e:	e7ad      	b.n	d008147c <__sflush_r+0x1c>
d0081520:	690f      	ldr	r7, [r1, #16]
d0081522:	2f00      	cmp	r7, #0
d0081524:	d0a9      	beq.n	d008147a <__sflush_r+0x1a>
d0081526:	0793      	lsls	r3, r2, #30
d0081528:	680e      	ldr	r6, [r1, #0]
d008152a:	bf08      	it	eq
d008152c:	694b      	ldreq	r3, [r1, #20]
d008152e:	600f      	str	r7, [r1, #0]
d0081530:	bf18      	it	ne
d0081532:	2300      	movne	r3, #0
d0081534:	eba6 0807 	sub.w	r8, r6, r7
d0081538:	608b      	str	r3, [r1, #8]
d008153a:	f1b8 0f00 	cmp.w	r8, #0
d008153e:	dd9c      	ble.n	d008147a <__sflush_r+0x1a>
d0081540:	6a21      	ldr	r1, [r4, #32]
d0081542:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0081544:	4643      	mov	r3, r8
d0081546:	463a      	mov	r2, r7
d0081548:	4628      	mov	r0, r5
d008154a:	47b0      	blx	r6
d008154c:	2800      	cmp	r0, #0
d008154e:	dc06      	bgt.n	d008155e <__sflush_r+0xfe>
d0081550:	89a3      	ldrh	r3, [r4, #12]
d0081552:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0081556:	81a3      	strh	r3, [r4, #12]
d0081558:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008155c:	e78e      	b.n	d008147c <__sflush_r+0x1c>
d008155e:	4407      	add	r7, r0
d0081560:	eba8 0800 	sub.w	r8, r8, r0
d0081564:	e7e9      	b.n	d008153a <__sflush_r+0xda>
d0081566:	bf00      	nop
d0081568:	20400001 	.word	0x20400001

d008156c <_fflush_r>:
d008156c:	b538      	push	{r3, r4, r5, lr}
d008156e:	690b      	ldr	r3, [r1, #16]
d0081570:	4605      	mov	r5, r0
d0081572:	460c      	mov	r4, r1
d0081574:	b913      	cbnz	r3, d008157c <_fflush_r+0x10>
d0081576:	2500      	movs	r5, #0
d0081578:	4628      	mov	r0, r5
d008157a:	bd38      	pop	{r3, r4, r5, pc}
d008157c:	b118      	cbz	r0, d0081586 <_fflush_r+0x1a>
d008157e:	6983      	ldr	r3, [r0, #24]
d0081580:	b90b      	cbnz	r3, d0081586 <_fflush_r+0x1a>
d0081582:	f000 f887 	bl	d0081694 <__sinit>
d0081586:	4b14      	ldr	r3, [pc, #80]	; (d00815d8 <_fflush_r+0x6c>)
d0081588:	429c      	cmp	r4, r3
d008158a:	d11b      	bne.n	d00815c4 <_fflush_r+0x58>
d008158c:	686c      	ldr	r4, [r5, #4]
d008158e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0081592:	2b00      	cmp	r3, #0
d0081594:	d0ef      	beq.n	d0081576 <_fflush_r+0xa>
d0081596:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0081598:	07d0      	lsls	r0, r2, #31
d008159a:	d404      	bmi.n	d00815a6 <_fflush_r+0x3a>
d008159c:	0599      	lsls	r1, r3, #22
d008159e:	d402      	bmi.n	d00815a6 <_fflush_r+0x3a>
d00815a0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00815a2:	f000 f915 	bl	d00817d0 <__retarget_lock_acquire_recursive>
d00815a6:	4628      	mov	r0, r5
d00815a8:	4621      	mov	r1, r4
d00815aa:	f7ff ff59 	bl	d0081460 <__sflush_r>
d00815ae:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00815b0:	07da      	lsls	r2, r3, #31
d00815b2:	4605      	mov	r5, r0
d00815b4:	d4e0      	bmi.n	d0081578 <_fflush_r+0xc>
d00815b6:	89a3      	ldrh	r3, [r4, #12]
d00815b8:	059b      	lsls	r3, r3, #22
d00815ba:	d4dd      	bmi.n	d0081578 <_fflush_r+0xc>
d00815bc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00815be:	f000 f908 	bl	d00817d2 <__retarget_lock_release_recursive>
d00815c2:	e7d9      	b.n	d0081578 <_fflush_r+0xc>
d00815c4:	4b05      	ldr	r3, [pc, #20]	; (d00815dc <_fflush_r+0x70>)
d00815c6:	429c      	cmp	r4, r3
d00815c8:	d101      	bne.n	d00815ce <_fflush_r+0x62>
d00815ca:	68ac      	ldr	r4, [r5, #8]
d00815cc:	e7df      	b.n	d008158e <_fflush_r+0x22>
d00815ce:	4b04      	ldr	r3, [pc, #16]	; (d00815e0 <_fflush_r+0x74>)
d00815d0:	429c      	cmp	r4, r3
d00815d2:	bf08      	it	eq
d00815d4:	68ec      	ldreq	r4, [r5, #12]
d00815d6:	e7da      	b.n	d008158e <_fflush_r+0x22>
d00815d8:	d0081bbc 	.word	0xd0081bbc
d00815dc:	d0081bdc 	.word	0xd0081bdc
d00815e0:	d0081b9c 	.word	0xd0081b9c

d00815e4 <std>:
d00815e4:	2300      	movs	r3, #0
d00815e6:	b510      	push	{r4, lr}
d00815e8:	4604      	mov	r4, r0
d00815ea:	e9c0 3300 	strd	r3, r3, [r0]
d00815ee:	e9c0 3304 	strd	r3, r3, [r0, #16]
d00815f2:	6083      	str	r3, [r0, #8]
d00815f4:	8181      	strh	r1, [r0, #12]
d00815f6:	6643      	str	r3, [r0, #100]	; 0x64
d00815f8:	81c2      	strh	r2, [r0, #14]
d00815fa:	6183      	str	r3, [r0, #24]
d00815fc:	4619      	mov	r1, r3
d00815fe:	2208      	movs	r2, #8
d0081600:	305c      	adds	r0, #92	; 0x5c
d0081602:	f7ff fe57 	bl	d00812b4 <memset>
d0081606:	4b05      	ldr	r3, [pc, #20]	; (d008161c <std+0x38>)
d0081608:	6263      	str	r3, [r4, #36]	; 0x24
d008160a:	4b05      	ldr	r3, [pc, #20]	; (d0081620 <std+0x3c>)
d008160c:	62a3      	str	r3, [r4, #40]	; 0x28
d008160e:	4b05      	ldr	r3, [pc, #20]	; (d0081624 <std+0x40>)
d0081610:	62e3      	str	r3, [r4, #44]	; 0x2c
d0081612:	4b05      	ldr	r3, [pc, #20]	; (d0081628 <std+0x44>)
d0081614:	6224      	str	r4, [r4, #32]
d0081616:	6323      	str	r3, [r4, #48]	; 0x30
d0081618:	bd10      	pop	{r4, pc}
d008161a:	bf00      	nop
d008161c:	d0081981 	.word	0xd0081981
d0081620:	d00819a3 	.word	0xd00819a3
d0081624:	d00819db 	.word	0xd00819db
d0081628:	d00819ff 	.word	0xd00819ff

d008162c <_cleanup_r>:
d008162c:	4901      	ldr	r1, [pc, #4]	; (d0081634 <_cleanup_r+0x8>)
d008162e:	f000 b8af 	b.w	d0081790 <_fwalk_reent>
d0081632:	bf00      	nop
d0081634:	d008156d 	.word	0xd008156d

d0081638 <__sfmoreglue>:
d0081638:	b570      	push	{r4, r5, r6, lr}
d008163a:	1e4a      	subs	r2, r1, #1
d008163c:	2568      	movs	r5, #104	; 0x68
d008163e:	4355      	muls	r5, r2
d0081640:	460e      	mov	r6, r1
d0081642:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0081646:	f000 f941 	bl	d00818cc <_malloc_r>
d008164a:	4604      	mov	r4, r0
d008164c:	b140      	cbz	r0, d0081660 <__sfmoreglue+0x28>
d008164e:	2100      	movs	r1, #0
d0081650:	e9c0 1600 	strd	r1, r6, [r0]
d0081654:	300c      	adds	r0, #12
d0081656:	60a0      	str	r0, [r4, #8]
d0081658:	f105 0268 	add.w	r2, r5, #104	; 0x68
d008165c:	f7ff fe2a 	bl	d00812b4 <memset>
d0081660:	4620      	mov	r0, r4
d0081662:	bd70      	pop	{r4, r5, r6, pc}

d0081664 <__sfp_lock_acquire>:
d0081664:	4801      	ldr	r0, [pc, #4]	; (d008166c <__sfp_lock_acquire+0x8>)
d0081666:	f000 b8b3 	b.w	d00817d0 <__retarget_lock_acquire_recursive>
d008166a:	bf00      	nop
d008166c:	d00820ec 	.word	0xd00820ec

d0081670 <__sfp_lock_release>:
d0081670:	4801      	ldr	r0, [pc, #4]	; (d0081678 <__sfp_lock_release+0x8>)
d0081672:	f000 b8ae 	b.w	d00817d2 <__retarget_lock_release_recursive>
d0081676:	bf00      	nop
d0081678:	d00820ec 	.word	0xd00820ec

d008167c <__sinit_lock_acquire>:
d008167c:	4801      	ldr	r0, [pc, #4]	; (d0081684 <__sinit_lock_acquire+0x8>)
d008167e:	f000 b8a7 	b.w	d00817d0 <__retarget_lock_acquire_recursive>
d0081682:	bf00      	nop
d0081684:	d00820e7 	.word	0xd00820e7

d0081688 <__sinit_lock_release>:
d0081688:	4801      	ldr	r0, [pc, #4]	; (d0081690 <__sinit_lock_release+0x8>)
d008168a:	f000 b8a2 	b.w	d00817d2 <__retarget_lock_release_recursive>
d008168e:	bf00      	nop
d0081690:	d00820e7 	.word	0xd00820e7

d0081694 <__sinit>:
d0081694:	b510      	push	{r4, lr}
d0081696:	4604      	mov	r4, r0
d0081698:	f7ff fff0 	bl	d008167c <__sinit_lock_acquire>
d008169c:	69a3      	ldr	r3, [r4, #24]
d008169e:	b11b      	cbz	r3, d00816a8 <__sinit+0x14>
d00816a0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00816a4:	f7ff bff0 	b.w	d0081688 <__sinit_lock_release>
d00816a8:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d00816ac:	6523      	str	r3, [r4, #80]	; 0x50
d00816ae:	4b13      	ldr	r3, [pc, #76]	; (d00816fc <__sinit+0x68>)
d00816b0:	4a13      	ldr	r2, [pc, #76]	; (d0081700 <__sinit+0x6c>)
d00816b2:	681b      	ldr	r3, [r3, #0]
d00816b4:	62a2      	str	r2, [r4, #40]	; 0x28
d00816b6:	42a3      	cmp	r3, r4
d00816b8:	bf04      	itt	eq
d00816ba:	2301      	moveq	r3, #1
d00816bc:	61a3      	streq	r3, [r4, #24]
d00816be:	4620      	mov	r0, r4
d00816c0:	f000 f820 	bl	d0081704 <__sfp>
d00816c4:	6060      	str	r0, [r4, #4]
d00816c6:	4620      	mov	r0, r4
d00816c8:	f000 f81c 	bl	d0081704 <__sfp>
d00816cc:	60a0      	str	r0, [r4, #8]
d00816ce:	4620      	mov	r0, r4
d00816d0:	f000 f818 	bl	d0081704 <__sfp>
d00816d4:	2200      	movs	r2, #0
d00816d6:	60e0      	str	r0, [r4, #12]
d00816d8:	2104      	movs	r1, #4
d00816da:	6860      	ldr	r0, [r4, #4]
d00816dc:	f7ff ff82 	bl	d00815e4 <std>
d00816e0:	68a0      	ldr	r0, [r4, #8]
d00816e2:	2201      	movs	r2, #1
d00816e4:	2109      	movs	r1, #9
d00816e6:	f7ff ff7d 	bl	d00815e4 <std>
d00816ea:	68e0      	ldr	r0, [r4, #12]
d00816ec:	2202      	movs	r2, #2
d00816ee:	2112      	movs	r1, #18
d00816f0:	f7ff ff78 	bl	d00815e4 <std>
d00816f4:	2301      	movs	r3, #1
d00816f6:	61a3      	str	r3, [r4, #24]
d00816f8:	e7d2      	b.n	d00816a0 <__sinit+0xc>
d00816fa:	bf00      	nop
d00816fc:	d0081b98 	.word	0xd0081b98
d0081700:	d008162d 	.word	0xd008162d

d0081704 <__sfp>:
d0081704:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0081706:	4607      	mov	r7, r0
d0081708:	f7ff ffac 	bl	d0081664 <__sfp_lock_acquire>
d008170c:	4b1e      	ldr	r3, [pc, #120]	; (d0081788 <__sfp+0x84>)
d008170e:	681e      	ldr	r6, [r3, #0]
d0081710:	69b3      	ldr	r3, [r6, #24]
d0081712:	b913      	cbnz	r3, d008171a <__sfp+0x16>
d0081714:	4630      	mov	r0, r6
d0081716:	f7ff ffbd 	bl	d0081694 <__sinit>
d008171a:	3648      	adds	r6, #72	; 0x48
d008171c:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0081720:	3b01      	subs	r3, #1
d0081722:	d503      	bpl.n	d008172c <__sfp+0x28>
d0081724:	6833      	ldr	r3, [r6, #0]
d0081726:	b30b      	cbz	r3, d008176c <__sfp+0x68>
d0081728:	6836      	ldr	r6, [r6, #0]
d008172a:	e7f7      	b.n	d008171c <__sfp+0x18>
d008172c:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0081730:	b9d5      	cbnz	r5, d0081768 <__sfp+0x64>
d0081732:	4b16      	ldr	r3, [pc, #88]	; (d008178c <__sfp+0x88>)
d0081734:	60e3      	str	r3, [r4, #12]
d0081736:	f104 0058 	add.w	r0, r4, #88	; 0x58
d008173a:	6665      	str	r5, [r4, #100]	; 0x64
d008173c:	f000 f847 	bl	d00817ce <__retarget_lock_init_recursive>
d0081740:	f7ff ff96 	bl	d0081670 <__sfp_lock_release>
d0081744:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0081748:	e9c4 5504 	strd	r5, r5, [r4, #16]
d008174c:	6025      	str	r5, [r4, #0]
d008174e:	61a5      	str	r5, [r4, #24]
d0081750:	2208      	movs	r2, #8
d0081752:	4629      	mov	r1, r5
d0081754:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0081758:	f7ff fdac 	bl	d00812b4 <memset>
d008175c:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0081760:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0081764:	4620      	mov	r0, r4
d0081766:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0081768:	3468      	adds	r4, #104	; 0x68
d008176a:	e7d9      	b.n	d0081720 <__sfp+0x1c>
d008176c:	2104      	movs	r1, #4
d008176e:	4638      	mov	r0, r7
d0081770:	f7ff ff62 	bl	d0081638 <__sfmoreglue>
d0081774:	4604      	mov	r4, r0
d0081776:	6030      	str	r0, [r6, #0]
d0081778:	2800      	cmp	r0, #0
d008177a:	d1d5      	bne.n	d0081728 <__sfp+0x24>
d008177c:	f7ff ff78 	bl	d0081670 <__sfp_lock_release>
d0081780:	230c      	movs	r3, #12
d0081782:	603b      	str	r3, [r7, #0]
d0081784:	e7ee      	b.n	d0081764 <__sfp+0x60>
d0081786:	bf00      	nop
d0081788:	d0081b98 	.word	0xd0081b98
d008178c:	ffff0001 	.word	0xffff0001

d0081790 <_fwalk_reent>:
d0081790:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0081794:	4606      	mov	r6, r0
d0081796:	4688      	mov	r8, r1
d0081798:	f100 0448 	add.w	r4, r0, #72	; 0x48
d008179c:	2700      	movs	r7, #0
d008179e:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d00817a2:	f1b9 0901 	subs.w	r9, r9, #1
d00817a6:	d505      	bpl.n	d00817b4 <_fwalk_reent+0x24>
d00817a8:	6824      	ldr	r4, [r4, #0]
d00817aa:	2c00      	cmp	r4, #0
d00817ac:	d1f7      	bne.n	d008179e <_fwalk_reent+0xe>
d00817ae:	4638      	mov	r0, r7
d00817b0:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d00817b4:	89ab      	ldrh	r3, [r5, #12]
d00817b6:	2b01      	cmp	r3, #1
d00817b8:	d907      	bls.n	d00817ca <_fwalk_reent+0x3a>
d00817ba:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d00817be:	3301      	adds	r3, #1
d00817c0:	d003      	beq.n	d00817ca <_fwalk_reent+0x3a>
d00817c2:	4629      	mov	r1, r5
d00817c4:	4630      	mov	r0, r6
d00817c6:	47c0      	blx	r8
d00817c8:	4307      	orrs	r7, r0
d00817ca:	3568      	adds	r5, #104	; 0x68
d00817cc:	e7e9      	b.n	d00817a2 <_fwalk_reent+0x12>

d00817ce <__retarget_lock_init_recursive>:
d00817ce:	4770      	bx	lr

d00817d0 <__retarget_lock_acquire_recursive>:
d00817d0:	4770      	bx	lr

d00817d2 <__retarget_lock_release_recursive>:
d00817d2:	4770      	bx	lr

d00817d4 <__swhatbuf_r>:
d00817d4:	b570      	push	{r4, r5, r6, lr}
d00817d6:	460e      	mov	r6, r1
d00817d8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00817dc:	2900      	cmp	r1, #0
d00817de:	b096      	sub	sp, #88	; 0x58
d00817e0:	4614      	mov	r4, r2
d00817e2:	461d      	mov	r5, r3
d00817e4:	da07      	bge.n	d00817f6 <__swhatbuf_r+0x22>
d00817e6:	2300      	movs	r3, #0
d00817e8:	602b      	str	r3, [r5, #0]
d00817ea:	89b3      	ldrh	r3, [r6, #12]
d00817ec:	061a      	lsls	r2, r3, #24
d00817ee:	d410      	bmi.n	d0081812 <__swhatbuf_r+0x3e>
d00817f0:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00817f4:	e00e      	b.n	d0081814 <__swhatbuf_r+0x40>
d00817f6:	466a      	mov	r2, sp
d00817f8:	f000 f916 	bl	d0081a28 <_fstat_r>
d00817fc:	2800      	cmp	r0, #0
d00817fe:	dbf2      	blt.n	d00817e6 <__swhatbuf_r+0x12>
d0081800:	9a01      	ldr	r2, [sp, #4]
d0081802:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0081806:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d008180a:	425a      	negs	r2, r3
d008180c:	415a      	adcs	r2, r3
d008180e:	602a      	str	r2, [r5, #0]
d0081810:	e7ee      	b.n	d00817f0 <__swhatbuf_r+0x1c>
d0081812:	2340      	movs	r3, #64	; 0x40
d0081814:	2000      	movs	r0, #0
d0081816:	6023      	str	r3, [r4, #0]
d0081818:	b016      	add	sp, #88	; 0x58
d008181a:	bd70      	pop	{r4, r5, r6, pc}

d008181c <malloc>:
d008181c:	4b02      	ldr	r3, [pc, #8]	; (d0081828 <malloc+0xc>)
d008181e:	4601      	mov	r1, r0
d0081820:	6818      	ldr	r0, [r3, #0]
d0081822:	f000 b853 	b.w	d00818cc <_malloc_r>
d0081826:	bf00      	nop
d0081828:	d0081c04 	.word	0xd0081c04

d008182c <_free_r>:
d008182c:	b537      	push	{r0, r1, r2, r4, r5, lr}
d008182e:	2900      	cmp	r1, #0
d0081830:	d048      	beq.n	d00818c4 <_free_r+0x98>
d0081832:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0081836:	9001      	str	r0, [sp, #4]
d0081838:	2b00      	cmp	r3, #0
d008183a:	f1a1 0404 	sub.w	r4, r1, #4
d008183e:	bfb8      	it	lt
d0081840:	18e4      	addlt	r4, r4, r3
d0081842:	f000 f915 	bl	d0081a70 <__malloc_lock>
d0081846:	4a20      	ldr	r2, [pc, #128]	; (d00818c8 <_free_r+0x9c>)
d0081848:	9801      	ldr	r0, [sp, #4]
d008184a:	6813      	ldr	r3, [r2, #0]
d008184c:	4615      	mov	r5, r2
d008184e:	b933      	cbnz	r3, d008185e <_free_r+0x32>
d0081850:	6063      	str	r3, [r4, #4]
d0081852:	6014      	str	r4, [r2, #0]
d0081854:	b003      	add	sp, #12
d0081856:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d008185a:	f000 b90f 	b.w	d0081a7c <__malloc_unlock>
d008185e:	42a3      	cmp	r3, r4
d0081860:	d90b      	bls.n	d008187a <_free_r+0x4e>
d0081862:	6821      	ldr	r1, [r4, #0]
d0081864:	1862      	adds	r2, r4, r1
d0081866:	4293      	cmp	r3, r2
d0081868:	bf04      	itt	eq
d008186a:	681a      	ldreq	r2, [r3, #0]
d008186c:	685b      	ldreq	r3, [r3, #4]
d008186e:	6063      	str	r3, [r4, #4]
d0081870:	bf04      	itt	eq
d0081872:	1852      	addeq	r2, r2, r1
d0081874:	6022      	streq	r2, [r4, #0]
d0081876:	602c      	str	r4, [r5, #0]
d0081878:	e7ec      	b.n	d0081854 <_free_r+0x28>
d008187a:	461a      	mov	r2, r3
d008187c:	685b      	ldr	r3, [r3, #4]
d008187e:	b10b      	cbz	r3, d0081884 <_free_r+0x58>
d0081880:	42a3      	cmp	r3, r4
d0081882:	d9fa      	bls.n	d008187a <_free_r+0x4e>
d0081884:	6811      	ldr	r1, [r2, #0]
d0081886:	1855      	adds	r5, r2, r1
d0081888:	42a5      	cmp	r5, r4
d008188a:	d10b      	bne.n	d00818a4 <_free_r+0x78>
d008188c:	6824      	ldr	r4, [r4, #0]
d008188e:	4421      	add	r1, r4
d0081890:	1854      	adds	r4, r2, r1
d0081892:	42a3      	cmp	r3, r4
d0081894:	6011      	str	r1, [r2, #0]
d0081896:	d1dd      	bne.n	d0081854 <_free_r+0x28>
d0081898:	681c      	ldr	r4, [r3, #0]
d008189a:	685b      	ldr	r3, [r3, #4]
d008189c:	6053      	str	r3, [r2, #4]
d008189e:	4421      	add	r1, r4
d00818a0:	6011      	str	r1, [r2, #0]
d00818a2:	e7d7      	b.n	d0081854 <_free_r+0x28>
d00818a4:	d902      	bls.n	d00818ac <_free_r+0x80>
d00818a6:	230c      	movs	r3, #12
d00818a8:	6003      	str	r3, [r0, #0]
d00818aa:	e7d3      	b.n	d0081854 <_free_r+0x28>
d00818ac:	6825      	ldr	r5, [r4, #0]
d00818ae:	1961      	adds	r1, r4, r5
d00818b0:	428b      	cmp	r3, r1
d00818b2:	bf04      	itt	eq
d00818b4:	6819      	ldreq	r1, [r3, #0]
d00818b6:	685b      	ldreq	r3, [r3, #4]
d00818b8:	6063      	str	r3, [r4, #4]
d00818ba:	bf04      	itt	eq
d00818bc:	1949      	addeq	r1, r1, r5
d00818be:	6021      	streq	r1, [r4, #0]
d00818c0:	6054      	str	r4, [r2, #4]
d00818c2:	e7c7      	b.n	d0081854 <_free_r+0x28>
d00818c4:	b003      	add	sp, #12
d00818c6:	bd30      	pop	{r4, r5, pc}
d00818c8:	d00820ac 	.word	0xd00820ac

d00818cc <_malloc_r>:
d00818cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00818ce:	1ccd      	adds	r5, r1, #3
d00818d0:	f025 0503 	bic.w	r5, r5, #3
d00818d4:	3508      	adds	r5, #8
d00818d6:	2d0c      	cmp	r5, #12
d00818d8:	bf38      	it	cc
d00818da:	250c      	movcc	r5, #12
d00818dc:	2d00      	cmp	r5, #0
d00818de:	4606      	mov	r6, r0
d00818e0:	db01      	blt.n	d00818e6 <_malloc_r+0x1a>
d00818e2:	42a9      	cmp	r1, r5
d00818e4:	d903      	bls.n	d00818ee <_malloc_r+0x22>
d00818e6:	230c      	movs	r3, #12
d00818e8:	6033      	str	r3, [r6, #0]
d00818ea:	2000      	movs	r0, #0
d00818ec:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00818ee:	f000 f8bf 	bl	d0081a70 <__malloc_lock>
d00818f2:	4921      	ldr	r1, [pc, #132]	; (d0081978 <_malloc_r+0xac>)
d00818f4:	680a      	ldr	r2, [r1, #0]
d00818f6:	4614      	mov	r4, r2
d00818f8:	b99c      	cbnz	r4, d0081922 <_malloc_r+0x56>
d00818fa:	4f20      	ldr	r7, [pc, #128]	; (d008197c <_malloc_r+0xb0>)
d00818fc:	683b      	ldr	r3, [r7, #0]
d00818fe:	b923      	cbnz	r3, d008190a <_malloc_r+0x3e>
d0081900:	4621      	mov	r1, r4
d0081902:	4630      	mov	r0, r6
d0081904:	f7fe fbec 	bl	d00800e0 <_sbrk_r>
d0081908:	6038      	str	r0, [r7, #0]
d008190a:	4629      	mov	r1, r5
d008190c:	4630      	mov	r0, r6
d008190e:	f7fe fbe7 	bl	d00800e0 <_sbrk_r>
d0081912:	1c43      	adds	r3, r0, #1
d0081914:	d123      	bne.n	d008195e <_malloc_r+0x92>
d0081916:	230c      	movs	r3, #12
d0081918:	6033      	str	r3, [r6, #0]
d008191a:	4630      	mov	r0, r6
d008191c:	f000 f8ae 	bl	d0081a7c <__malloc_unlock>
d0081920:	e7e3      	b.n	d00818ea <_malloc_r+0x1e>
d0081922:	6823      	ldr	r3, [r4, #0]
d0081924:	1b5b      	subs	r3, r3, r5
d0081926:	d417      	bmi.n	d0081958 <_malloc_r+0x8c>
d0081928:	2b0b      	cmp	r3, #11
d008192a:	d903      	bls.n	d0081934 <_malloc_r+0x68>
d008192c:	6023      	str	r3, [r4, #0]
d008192e:	441c      	add	r4, r3
d0081930:	6025      	str	r5, [r4, #0]
d0081932:	e004      	b.n	d008193e <_malloc_r+0x72>
d0081934:	6863      	ldr	r3, [r4, #4]
d0081936:	42a2      	cmp	r2, r4
d0081938:	bf0c      	ite	eq
d008193a:	600b      	streq	r3, [r1, #0]
d008193c:	6053      	strne	r3, [r2, #4]
d008193e:	4630      	mov	r0, r6
d0081940:	f000 f89c 	bl	d0081a7c <__malloc_unlock>
d0081944:	f104 000b 	add.w	r0, r4, #11
d0081948:	1d23      	adds	r3, r4, #4
d008194a:	f020 0007 	bic.w	r0, r0, #7
d008194e:	1ac2      	subs	r2, r0, r3
d0081950:	d0cc      	beq.n	d00818ec <_malloc_r+0x20>
d0081952:	1a1b      	subs	r3, r3, r0
d0081954:	50a3      	str	r3, [r4, r2]
d0081956:	e7c9      	b.n	d00818ec <_malloc_r+0x20>
d0081958:	4622      	mov	r2, r4
d008195a:	6864      	ldr	r4, [r4, #4]
d008195c:	e7cc      	b.n	d00818f8 <_malloc_r+0x2c>
d008195e:	1cc4      	adds	r4, r0, #3
d0081960:	f024 0403 	bic.w	r4, r4, #3
d0081964:	42a0      	cmp	r0, r4
d0081966:	d0e3      	beq.n	d0081930 <_malloc_r+0x64>
d0081968:	1a21      	subs	r1, r4, r0
d008196a:	4630      	mov	r0, r6
d008196c:	f7fe fbb8 	bl	d00800e0 <_sbrk_r>
d0081970:	3001      	adds	r0, #1
d0081972:	d1dd      	bne.n	d0081930 <_malloc_r+0x64>
d0081974:	e7cf      	b.n	d0081916 <_malloc_r+0x4a>
d0081976:	bf00      	nop
d0081978:	d00820ac 	.word	0xd00820ac
d008197c:	d00820b0 	.word	0xd00820b0

d0081980 <__sread>:
d0081980:	b510      	push	{r4, lr}
d0081982:	460c      	mov	r4, r1
d0081984:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081988:	f000 f87e 	bl	d0081a88 <_read_r>
d008198c:	2800      	cmp	r0, #0
d008198e:	bfab      	itete	ge
d0081990:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0081992:	89a3      	ldrhlt	r3, [r4, #12]
d0081994:	181b      	addge	r3, r3, r0
d0081996:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d008199a:	bfac      	ite	ge
d008199c:	6563      	strge	r3, [r4, #84]	; 0x54
d008199e:	81a3      	strhlt	r3, [r4, #12]
d00819a0:	bd10      	pop	{r4, pc}

d00819a2 <__swrite>:
d00819a2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00819a6:	461f      	mov	r7, r3
d00819a8:	898b      	ldrh	r3, [r1, #12]
d00819aa:	05db      	lsls	r3, r3, #23
d00819ac:	4605      	mov	r5, r0
d00819ae:	460c      	mov	r4, r1
d00819b0:	4616      	mov	r6, r2
d00819b2:	d505      	bpl.n	d00819c0 <__swrite+0x1e>
d00819b4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00819b8:	2302      	movs	r3, #2
d00819ba:	2200      	movs	r2, #0
d00819bc:	f000 f846 	bl	d0081a4c <_lseek_r>
d00819c0:	89a3      	ldrh	r3, [r4, #12]
d00819c2:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d00819c6:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d00819ca:	81a3      	strh	r3, [r4, #12]
d00819cc:	4632      	mov	r2, r6
d00819ce:	463b      	mov	r3, r7
d00819d0:	4628      	mov	r0, r5
d00819d2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d00819d6:	f7fe bb3d 	b.w	d0080054 <_write_r>

d00819da <__sseek>:
d00819da:	b510      	push	{r4, lr}
d00819dc:	460c      	mov	r4, r1
d00819de:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00819e2:	f000 f833 	bl	d0081a4c <_lseek_r>
d00819e6:	1c43      	adds	r3, r0, #1
d00819e8:	89a3      	ldrh	r3, [r4, #12]
d00819ea:	bf15      	itete	ne
d00819ec:	6560      	strne	r0, [r4, #84]	; 0x54
d00819ee:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d00819f2:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d00819f6:	81a3      	strheq	r3, [r4, #12]
d00819f8:	bf18      	it	ne
d00819fa:	81a3      	strhne	r3, [r4, #12]
d00819fc:	bd10      	pop	{r4, pc}

d00819fe <__sclose>:
d00819fe:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081a02:	f000 b801 	b.w	d0081a08 <_close_r>
	...

d0081a08 <_close_r>:
d0081a08:	b538      	push	{r3, r4, r5, lr}
d0081a0a:	4d06      	ldr	r5, [pc, #24]	; (d0081a24 <_close_r+0x1c>)
d0081a0c:	2300      	movs	r3, #0
d0081a0e:	4604      	mov	r4, r0
d0081a10:	4608      	mov	r0, r1
d0081a12:	602b      	str	r3, [r5, #0]
d0081a14:	f7fe fb58 	bl	d00800c8 <_close>
d0081a18:	1c43      	adds	r3, r0, #1
d0081a1a:	d102      	bne.n	d0081a22 <_close_r+0x1a>
d0081a1c:	682b      	ldr	r3, [r5, #0]
d0081a1e:	b103      	cbz	r3, d0081a22 <_close_r+0x1a>
d0081a20:	6023      	str	r3, [r4, #0]
d0081a22:	bd38      	pop	{r3, r4, r5, pc}
d0081a24:	d00820f0 	.word	0xd00820f0

d0081a28 <_fstat_r>:
d0081a28:	b538      	push	{r3, r4, r5, lr}
d0081a2a:	4d07      	ldr	r5, [pc, #28]	; (d0081a48 <_fstat_r+0x20>)
d0081a2c:	2300      	movs	r3, #0
d0081a2e:	4604      	mov	r4, r0
d0081a30:	4608      	mov	r0, r1
d0081a32:	4611      	mov	r1, r2
d0081a34:	602b      	str	r3, [r5, #0]
d0081a36:	f7fe fb4b 	bl	d00800d0 <_fstat>
d0081a3a:	1c43      	adds	r3, r0, #1
d0081a3c:	d102      	bne.n	d0081a44 <_fstat_r+0x1c>
d0081a3e:	682b      	ldr	r3, [r5, #0]
d0081a40:	b103      	cbz	r3, d0081a44 <_fstat_r+0x1c>
d0081a42:	6023      	str	r3, [r4, #0]
d0081a44:	bd38      	pop	{r3, r4, r5, pc}
d0081a46:	bf00      	nop
d0081a48:	d00820f0 	.word	0xd00820f0

d0081a4c <_lseek_r>:
d0081a4c:	b538      	push	{r3, r4, r5, lr}
d0081a4e:	4d07      	ldr	r5, [pc, #28]	; (d0081a6c <_lseek_r+0x20>)
d0081a50:	4604      	mov	r4, r0
d0081a52:	4608      	mov	r0, r1
d0081a54:	4611      	mov	r1, r2
d0081a56:	2200      	movs	r2, #0
d0081a58:	602a      	str	r2, [r5, #0]
d0081a5a:	461a      	mov	r2, r3
d0081a5c:	f7fe fb3e 	bl	d00800dc <_lseek>
d0081a60:	1c43      	adds	r3, r0, #1
d0081a62:	d102      	bne.n	d0081a6a <_lseek_r+0x1e>
d0081a64:	682b      	ldr	r3, [r5, #0]
d0081a66:	b103      	cbz	r3, d0081a6a <_lseek_r+0x1e>
d0081a68:	6023      	str	r3, [r4, #0]
d0081a6a:	bd38      	pop	{r3, r4, r5, pc}
d0081a6c:	d00820f0 	.word	0xd00820f0

d0081a70 <__malloc_lock>:
d0081a70:	4801      	ldr	r0, [pc, #4]	; (d0081a78 <__malloc_lock+0x8>)
d0081a72:	f7ff bead 	b.w	d00817d0 <__retarget_lock_acquire_recursive>
d0081a76:	bf00      	nop
d0081a78:	d00820e8 	.word	0xd00820e8

d0081a7c <__malloc_unlock>:
d0081a7c:	4801      	ldr	r0, [pc, #4]	; (d0081a84 <__malloc_unlock+0x8>)
d0081a7e:	f7ff bea8 	b.w	d00817d2 <__retarget_lock_release_recursive>
d0081a82:	bf00      	nop
d0081a84:	d00820e8 	.word	0xd00820e8

d0081a88 <_read_r>:
d0081a88:	b538      	push	{r3, r4, r5, lr}
d0081a8a:	4d07      	ldr	r5, [pc, #28]	; (d0081aa8 <_read_r+0x20>)
d0081a8c:	4604      	mov	r4, r0
d0081a8e:	4608      	mov	r0, r1
d0081a90:	4611      	mov	r1, r2
d0081a92:	2200      	movs	r2, #0
d0081a94:	602a      	str	r2, [r5, #0]
d0081a96:	461a      	mov	r2, r3
d0081a98:	f7fe fb0c 	bl	d00800b4 <_read>
d0081a9c:	1c43      	adds	r3, r0, #1
d0081a9e:	d102      	bne.n	d0081aa6 <_read_r+0x1e>
d0081aa0:	682b      	ldr	r3, [r5, #0]
d0081aa2:	b103      	cbz	r3, d0081aa6 <_read_r+0x1e>
d0081aa4:	6023      	str	r3, [r4, #0]
d0081aa6:	bd38      	pop	{r3, r4, r5, pc}
d0081aa8:	d00820f0 	.word	0xd00820f0
d0081aac:	43554f54 	.word	0x43554f54
d0081ab0:	43412048 	.word	0x43412048
d0081ab4:	45564954 	.word	0x45564954
d0081ab8:	00000000 	.word	0x00000000
d0081abc:	544f4f42 	.word	0x544f4f42
d0081ac0:	4f524620 	.word	0x4f524620
d0081ac4:	4e45544e 	.word	0x4e45544e
d0081ac8:	00000044 	.word	0x00000044
d0081acc:	53554150 	.word	0x53554150
d0081ad0:	00004445 	.word	0x00004445
d0081ad4:	59414c50 	.word	0x59414c50
d0081ad8:	00474e49 	.word	0x00474e49
d0081adc:	61636473 	.word	0x61636473
d0081ae0:	2f3a6472 	.word	0x2f3a6472
d0081ae4:	6576656c 	.word	0x6576656c
d0081ae8:	6d2e316c 	.word	0x6d2e316c
d0081aec:	0000646f 	.word	0x0000646f
d0081af0:	42444953 	.word	0x42444953
d0081af4:	4d20584f 	.word	0x4d20584f
d0081af8:	43495355 	.word	0x43495355
d0081afc:	584f4220 	.word	0x584f4220
d0081b00:	00000000 	.word	0x00000000
d0081b04:	50415247 	.word	0x50415247
d0081b08:	53434948 	.word	0x53434948
d0081b0c:	49525020 	.word	0x49525020
d0081b10:	4954494d 	.word	0x4954494d
d0081b14:	54204556 	.word	0x54204556
d0081b18:	00545345 	.word	0x00545345
d0081b1c:	20504154 	.word	0x20504154
d0081b20:	52542041 	.word	0x52542041
d0081b24:	004b4341 	.word	0x004b4341
d0081b28:	20203130 	.word	0x20203130
d0081b2c:	544f4f42 	.word	0x544f4f42
d0081b30:	5345545f 	.word	0x5345545f
d0081b34:	4f4d2e54 	.word	0x4f4d2e54
d0081b38:	00000044 	.word	0x00000044
d0081b3c:	20203230 	.word	0x20203230
d0081b40:	43204453 	.word	0x43204453
d0081b44:	20445241 	.word	0x20445241
d0081b48:	4e414353 	.word	0x4e414353
d0081b4c:	4f4f5320 	.word	0x4f4f5320
d0081b50:	0000004e 	.word	0x0000004e
d0081b54:	20203330 	.word	0x20203330
d0081b58:	544f4f54 	.word	0x544f4f54
d0081b5c:	48434148 	.word	0x48434148
d0081b60:	50412e45 	.word	0x50412e45
d0081b64:	00000050 	.word	0x00000050
d0081b68:	43554f54 	.word	0x43554f54
d0081b6c:	4c502048 	.word	0x4c502048
d0081b70:	494c5941 	.word	0x494c5941
d0081b74:	2f205453 	.word	0x2f205453
d0081b78:	41525420 	.word	0x41525420
d0081b7c:	4f50534e 	.word	0x4f50534e
d0081b80:	2d205452 	.word	0x2d205452
d0081b84:	524f4320 	.word	0x524f4320
d0081b88:	52472045 	.word	0x52472045
d0081b8c:	49485041 	.word	0x49485041
d0081b90:	4f205343 	.word	0x4f205343
d0081b94:	00594c4e 	.word	0x00594c4e

d0081b98 <_global_impure_ptr>:
d0081b98:	d0081c08                                ....

d0081b9c <__sf_fake_stderr>:
	...

d0081bbc <__sf_fake_stdin>:
	...

d0081bdc <__sf_fake_stdout>:
	...

Disassembly of section .init:

d0081bfc <_init>:
d0081bfc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0081bfe:	bf00      	nop

Disassembly of section .fini:

d0081c00 <_fini>:
d0081c00:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0081c02:	bf00      	nop
