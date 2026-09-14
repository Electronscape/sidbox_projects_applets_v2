
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
d008001e:	f003 fc25 	bl	d008386c <setbuf>
d0080022:	6833      	ldr	r3, [r6, #0]
d0080024:	2100      	movs	r1, #0
d0080026:	68d8      	ldr	r0, [r3, #12]
d0080028:	f003 fc20 	bl	d008386c <setbuf>
d008002c:	4629      	mov	r1, r5
d008002e:	4620      	mov	r0, r4
d0080030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0080034:	f000 bb92 	b.w	d008075c <main>
d0080038:	d008a964 	.word	0xd008a964

d008003c <gfx_createBitmap>:
d008003c:	b510      	push	{r4, lr}
d008003e:	4604      	mov	r4, r0
d0080040:	fb01 f002 	mul.w	r0, r1, r2
d0080044:	b292      	uxth	r2, r2
d0080046:	80a1      	strh	r1, [r4, #4]
d0080048:	60e0      	str	r0, [r4, #12]
d008004a:	80e2      	strh	r2, [r4, #6]
d008004c:	8122      	strh	r2, [r4, #8]
d008004e:	f003 fadd 	bl	d008360c <malloc>
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
d0080064:	d008cdf8 	.word	0xd008cdf8
d0080068:	d0600000 	.word	0xd0600000
d008006c:	d008ad88 	.word	0xd008ad88

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
d00800b8:	f003 faa2 	bl	d0083600 <__errno>
d00800bc:	2209      	movs	r2, #9
d00800be:	4603      	mov	r3, r0
d00800c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800c4:	601a      	str	r2, [r3, #0]
d00800c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00800c8:	d008a9e4 	.word	0xd008a9e4
d00800cc:	2001f000 	.word	0x2001f000

d00800d0 <_read>:
d00800d0:	b508      	push	{r3, lr}
d00800d2:	f003 fa95 	bl	d0083600 <__errno>
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
d008011e:	f003 fa6f 	bl	d0083600 <__errno>
d0080122:	220c      	movs	r2, #12
d0080124:	4603      	mov	r3, r0
d0080126:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008012a:	601a      	str	r2, [r3, #0]
d008012c:	bd10      	pop	{r4, pc}
d008012e:	bf00      	nop
d0080130:	d008a9e0 	.word	0xd008a9e0
d0080134:	d008cdf8 	.word	0xd008cdf8
d0080138:	d0600000 	.word	0xd0600000

d008013c <_isatty>:
d008013c:	2001      	movs	r0, #1
d008013e:	4770      	bx	lr

d0080140 <draw_star_speed_range>:
d0080140:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080144:	4c30      	ldr	r4, [pc, #192]	; (d0080208 <draw_star_speed_range+0xc8>)
d0080146:	2501      	movs	r5, #1
d0080148:	4606      	mov	r6, r0
d008014a:	460f      	mov	r7, r1
d008014c:	f8df 80bc 	ldr.w	r8, [pc, #188]	; d008020c <draw_star_speed_range+0xcc>
d0080150:	f8df a0bc 	ldr.w	sl, [pc, #188]	; d0080210 <draw_star_speed_range+0xd0>
d0080154:	7923      	ldrb	r3, [r4, #4]
d0080156:	42b3      	cmp	r3, r6
d0080158:	d34e      	bcc.n	d00801f8 <draw_star_speed_range+0xb8>
d008015a:	42bb      	cmp	r3, r7
d008015c:	d84c      	bhi.n	d00801f8 <draw_star_speed_range+0xb8>
d008015e:	f8df 90b4 	ldr.w	r9, [pc, #180]	; d0080214 <draw_star_speed_range+0xd4>
d0080162:	7960      	ldrb	r0, [r4, #5]
d0080164:	f899 300c 	ldrb.w	r3, [r9, #12]
d0080168:	f899 100d 	ldrb.w	r1, [r9, #13]
d008016c:	f899 c00e 	ldrb.w	ip, [r9, #14]
d0080170:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0080174:	f899 100f 	ldrb.w	r1, [r9, #15]
d0080178:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d008017c:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0080180:	685b      	ldr	r3, [r3, #4]
d0080182:	68db      	ldr	r3, [r3, #12]
d0080184:	4798      	blx	r3
d0080186:	f894 b004 	ldrb.w	fp, [r4, #4]
d008018a:	f1bb 0f08 	cmp.w	fp, #8
d008018e:	f200 82b2 	bhi.w	d00806f6 <draw_star_speed_range+0x5b6>
d0080192:	f1bb 0f06 	cmp.w	fp, #6
d0080196:	f200 82b1 	bhi.w	d00806fc <draw_star_speed_range+0x5bc>
d008019a:	f1bb 0f04 	cmp.w	fp, #4
d008019e:	d83b      	bhi.n	d0080218 <draw_star_speed_range+0xd8>
d00801a0:	f1bb 0f02 	cmp.w	fp, #2
d00801a4:	f200 82b7 	bhi.w	d0080716 <draw_star_speed_range+0x5d6>
d00801a8:	d038      	beq.n	d008021c <draw_star_speed_range+0xdc>
d00801aa:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d00801ae:	f9b4 0000 	ldrsh.w	r0, [r4]
d00801b2:	f1a1 0c26 	sub.w	ip, r1, #38	; 0x26
d00801b6:	b283      	uxth	r3, r0
d00801b8:	fa1f fc8c 	uxth.w	ip, ip
d00801bc:	f5bc 7f8d 	cmp.w	ip, #282	; 0x11a
d00801c0:	f080 819f 	bcs.w	d0080502 <draw_star_speed_range+0x3c2>
d00801c4:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00801c8:	f080 819b 	bcs.w	d0080502 <draw_star_speed_range+0x3c2>
d00801cc:	f899 300c 	ldrb.w	r3, [r9, #12]
d00801d0:	f899 e00d 	ldrb.w	lr, [r9, #13]
d00801d4:	f899 c00e 	ldrb.w	ip, [r9, #14]
d00801d8:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d00801dc:	f899 e00f 	ldrb.w	lr, [r9, #15]
d00801e0:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d00801e4:	ea43 630e 	orr.w	r3, r3, lr, lsl #24
d00801e8:	e185      	b.n	d00804f6 <draw_star_speed_range+0x3b6>
d00801ea:	285b      	cmp	r0, #91	; 0x5b
d00801ec:	f240 82ad 	bls.w	d008074a <draw_star_speed_range+0x60a>
d00801f0:	2209      	movs	r2, #9
d00801f2:	2302      	movs	r3, #2
d00801f4:	7122      	strb	r2, [r4, #4]
d00801f6:	7163      	strb	r3, [r4, #5]
d00801f8:	2d60      	cmp	r5, #96	; 0x60
d00801fa:	f000 82a4 	beq.w	d0080746 <draw_star_speed_range+0x606>
d00801fe:	3501      	adds	r5, #1
d0080200:	3406      	adds	r4, #6
d0080202:	b2ed      	uxtb	r5, r5
d0080204:	e7a6      	b.n	d0080154 <draw_star_speed_range+0x14>
d0080206:	bf00      	nop
d0080208:	d008ab40 	.word	0xd008ab40
d008020c:	41c64e6d 	.word	0x41c64e6d
d0080210:	11a3019b 	.word	0x11a3019b
d0080214:	2001f000 	.word	0x2001f000
d0080218:	f04f 0b05 	mov.w	fp, #5
d008021c:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d0080220:	f9b4 0000 	ldrsh.w	r0, [r4]
d0080224:	f1a1 0326 	sub.w	r3, r1, #38	; 0x26
d0080228:	b29b      	uxth	r3, r3
d008022a:	f5b3 7f8d 	cmp.w	r3, #282	; 0x11a
d008022e:	d219      	bcs.n	d0080264 <draw_star_speed_range+0x124>
d0080230:	fa1f fc80 	uxth.w	ip, r0
d0080234:	f5bc 7ff0 	cmp.w	ip, #480	; 0x1e0
d0080238:	d216      	bcs.n	d0080268 <draw_star_speed_range+0x128>
d008023a:	f899 300c 	ldrb.w	r3, [r9, #12]
d008023e:	f899 e00d 	ldrb.w	lr, [r9, #13]
d0080242:	f899 c00e 	ldrb.w	ip, [r9, #14]
d0080246:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d008024a:	f899 e00f 	ldrb.w	lr, [r9, #15]
d008024e:	ea43 4c0c 	orr.w	ip, r3, ip, lsl #16
d0080252:	ea4c 630e 	orr.w	r3, ip, lr, lsl #24
d0080256:	685b      	ldr	r3, [r3, #4]
d0080258:	689b      	ldr	r3, [r3, #8]
d008025a:	4798      	blx	r3
d008025c:	f9b4 0000 	ldrsh.w	r0, [r4]
d0080260:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d0080264:	fa1f fc80 	uxth.w	ip, r0
d0080268:	f1a1 0e26 	sub.w	lr, r1, #38	; 0x26
d008026c:	f10c 0001 	add.w	r0, ip, #1
d0080270:	4663      	mov	r3, ip
d0080272:	fa1f fe8e 	uxth.w	lr, lr
d0080276:	b280      	uxth	r0, r0
d0080278:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d008027c:	d219      	bcs.n	d00802b2 <draw_star_speed_range+0x172>
d008027e:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0080282:	d216      	bcs.n	d00802b2 <draw_star_speed_range+0x172>
d0080284:	f899 300c 	ldrb.w	r3, [r9, #12]
d0080288:	b200      	sxth	r0, r0
d008028a:	f899 e00d 	ldrb.w	lr, [r9, #13]
d008028e:	f899 c00e 	ldrb.w	ip, [r9, #14]
d0080292:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d0080296:	f899 e00f 	ldrb.w	lr, [r9, #15]
d008029a:	ea43 4c0c 	orr.w	ip, r3, ip, lsl #16
d008029e:	ea4c 630e 	orr.w	r3, ip, lr, lsl #24
d00802a2:	685b      	ldr	r3, [r3, #4]
d00802a4:	689b      	ldr	r3, [r3, #8]
d00802a6:	4798      	blx	r3
d00802a8:	f9b4 0000 	ldrsh.w	r0, [r4]
d00802ac:	fa1f fc80 	uxth.w	ip, r0
d00802b0:	4663      	mov	r3, ip
d00802b2:	f1bb 0f02 	cmp.w	fp, #2
d00802b6:	f000 8122 	beq.w	d00804fe <draw_star_speed_range+0x3be>
d00802ba:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d00802be:	f10c 0002 	add.w	r0, ip, #2
d00802c2:	4663      	mov	r3, ip
d00802c4:	f1a1 0e26 	sub.w	lr, r1, #38	; 0x26
d00802c8:	b280      	uxth	r0, r0
d00802ca:	fa1f fe8e 	uxth.w	lr, lr
d00802ce:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d00802d2:	d219      	bcs.n	d0080308 <draw_star_speed_range+0x1c8>
d00802d4:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d00802d8:	d216      	bcs.n	d0080308 <draw_star_speed_range+0x1c8>
d00802da:	f899 300c 	ldrb.w	r3, [r9, #12]
d00802de:	b200      	sxth	r0, r0
d00802e0:	f899 e00d 	ldrb.w	lr, [r9, #13]
d00802e4:	f899 c00e 	ldrb.w	ip, [r9, #14]
d00802e8:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d00802ec:	f899 e00f 	ldrb.w	lr, [r9, #15]
d00802f0:	ea43 4c0c 	orr.w	ip, r3, ip, lsl #16
d00802f4:	ea4c 630e 	orr.w	r3, ip, lr, lsl #24
d00802f8:	685b      	ldr	r3, [r3, #4]
d00802fa:	689b      	ldr	r3, [r3, #8]
d00802fc:	4798      	blx	r3
d00802fe:	f9b4 0000 	ldrsh.w	r0, [r4]
d0080302:	fa1f fc80 	uxth.w	ip, r0
d0080306:	4663      	mov	r3, ip
d0080308:	f1bb 0f03 	cmp.w	fp, #3
d008030c:	f000 80f7 	beq.w	d00804fe <draw_star_speed_range+0x3be>
d0080310:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d0080314:	f10c 0003 	add.w	r0, ip, #3
d0080318:	4663      	mov	r3, ip
d008031a:	f1a1 0e26 	sub.w	lr, r1, #38	; 0x26
d008031e:	b280      	uxth	r0, r0
d0080320:	fa1f fe8e 	uxth.w	lr, lr
d0080324:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d0080328:	d219      	bcs.n	d008035e <draw_star_speed_range+0x21e>
d008032a:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d008032e:	d216      	bcs.n	d008035e <draw_star_speed_range+0x21e>
d0080330:	f899 300c 	ldrb.w	r3, [r9, #12]
d0080334:	b200      	sxth	r0, r0
d0080336:	f899 e00d 	ldrb.w	lr, [r9, #13]
d008033a:	f899 c00e 	ldrb.w	ip, [r9, #14]
d008033e:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d0080342:	f899 e00f 	ldrb.w	lr, [r9, #15]
d0080346:	ea43 4c0c 	orr.w	ip, r3, ip, lsl #16
d008034a:	ea4c 630e 	orr.w	r3, ip, lr, lsl #24
d008034e:	685b      	ldr	r3, [r3, #4]
d0080350:	689b      	ldr	r3, [r3, #8]
d0080352:	4798      	blx	r3
d0080354:	f9b4 0000 	ldrsh.w	r0, [r4]
d0080358:	fa1f fc80 	uxth.w	ip, r0
d008035c:	4663      	mov	r3, ip
d008035e:	f1bb 0f04 	cmp.w	fp, #4
d0080362:	f000 80cc 	beq.w	d00804fe <draw_star_speed_range+0x3be>
d0080366:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d008036a:	f10c 0004 	add.w	r0, ip, #4
d008036e:	4663      	mov	r3, ip
d0080370:	f1a1 0e26 	sub.w	lr, r1, #38	; 0x26
d0080374:	b280      	uxth	r0, r0
d0080376:	fa1f fe8e 	uxth.w	lr, lr
d008037a:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d008037e:	d219      	bcs.n	d00803b4 <draw_star_speed_range+0x274>
d0080380:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0080384:	d216      	bcs.n	d00803b4 <draw_star_speed_range+0x274>
d0080386:	f899 300c 	ldrb.w	r3, [r9, #12]
d008038a:	b200      	sxth	r0, r0
d008038c:	f899 e00d 	ldrb.w	lr, [r9, #13]
d0080390:	f899 c00e 	ldrb.w	ip, [r9, #14]
d0080394:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d0080398:	f899 e00f 	ldrb.w	lr, [r9, #15]
d008039c:	ea43 4c0c 	orr.w	ip, r3, ip, lsl #16
d00803a0:	ea4c 630e 	orr.w	r3, ip, lr, lsl #24
d00803a4:	685b      	ldr	r3, [r3, #4]
d00803a6:	689b      	ldr	r3, [r3, #8]
d00803a8:	4798      	blx	r3
d00803aa:	f9b4 0000 	ldrsh.w	r0, [r4]
d00803ae:	fa1f fc80 	uxth.w	ip, r0
d00803b2:	4663      	mov	r3, ip
d00803b4:	f1bb 0f05 	cmp.w	fp, #5
d00803b8:	f000 80a1 	beq.w	d00804fe <draw_star_speed_range+0x3be>
d00803bc:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d00803c0:	f10c 0005 	add.w	r0, ip, #5
d00803c4:	4663      	mov	r3, ip
d00803c6:	f1a1 0e26 	sub.w	lr, r1, #38	; 0x26
d00803ca:	b280      	uxth	r0, r0
d00803cc:	fa1f fe8e 	uxth.w	lr, lr
d00803d0:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d00803d4:	d219      	bcs.n	d008040a <draw_star_speed_range+0x2ca>
d00803d6:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d00803da:	d216      	bcs.n	d008040a <draw_star_speed_range+0x2ca>
d00803dc:	f899 300c 	ldrb.w	r3, [r9, #12]
d00803e0:	b200      	sxth	r0, r0
d00803e2:	f899 e00d 	ldrb.w	lr, [r9, #13]
d00803e6:	f899 c00e 	ldrb.w	ip, [r9, #14]
d00803ea:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d00803ee:	f899 e00f 	ldrb.w	lr, [r9, #15]
d00803f2:	ea43 4c0c 	orr.w	ip, r3, ip, lsl #16
d00803f6:	ea4c 630e 	orr.w	r3, ip, lr, lsl #24
d00803fa:	685b      	ldr	r3, [r3, #4]
d00803fc:	689b      	ldr	r3, [r3, #8]
d00803fe:	4798      	blx	r3
d0080400:	f9b4 0000 	ldrsh.w	r0, [r4]
d0080404:	fa1f fc80 	uxth.w	ip, r0
d0080408:	4663      	mov	r3, ip
d008040a:	f1bb 0f06 	cmp.w	fp, #6
d008040e:	d076      	beq.n	d00804fe <draw_star_speed_range+0x3be>
d0080410:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d0080414:	f10c 0006 	add.w	r0, ip, #6
d0080418:	4663      	mov	r3, ip
d008041a:	f1a1 0e26 	sub.w	lr, r1, #38	; 0x26
d008041e:	b280      	uxth	r0, r0
d0080420:	fa1f fe8e 	uxth.w	lr, lr
d0080424:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d0080428:	d219      	bcs.n	d008045e <draw_star_speed_range+0x31e>
d008042a:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d008042e:	d216      	bcs.n	d008045e <draw_star_speed_range+0x31e>
d0080430:	f899 300c 	ldrb.w	r3, [r9, #12]
d0080434:	b200      	sxth	r0, r0
d0080436:	f899 e00d 	ldrb.w	lr, [r9, #13]
d008043a:	f899 c00e 	ldrb.w	ip, [r9, #14]
d008043e:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d0080442:	f899 e00f 	ldrb.w	lr, [r9, #15]
d0080446:	ea43 4c0c 	orr.w	ip, r3, ip, lsl #16
d008044a:	ea4c 630e 	orr.w	r3, ip, lr, lsl #24
d008044e:	685b      	ldr	r3, [r3, #4]
d0080450:	689b      	ldr	r3, [r3, #8]
d0080452:	4798      	blx	r3
d0080454:	f9b4 0000 	ldrsh.w	r0, [r4]
d0080458:	fa1f fc80 	uxth.w	ip, r0
d008045c:	4663      	mov	r3, ip
d008045e:	f1bb 0f07 	cmp.w	fp, #7
d0080462:	d04c      	beq.n	d00804fe <draw_star_speed_range+0x3be>
d0080464:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d0080468:	f10c 0007 	add.w	r0, ip, #7
d008046c:	4663      	mov	r3, ip
d008046e:	f1a1 0e26 	sub.w	lr, r1, #38	; 0x26
d0080472:	b280      	uxth	r0, r0
d0080474:	fa1f fe8e 	uxth.w	lr, lr
d0080478:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d008047c:	d219      	bcs.n	d00804b2 <draw_star_speed_range+0x372>
d008047e:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0080482:	d216      	bcs.n	d00804b2 <draw_star_speed_range+0x372>
d0080484:	f899 300c 	ldrb.w	r3, [r9, #12]
d0080488:	b200      	sxth	r0, r0
d008048a:	f899 e00d 	ldrb.w	lr, [r9, #13]
d008048e:	f899 c00e 	ldrb.w	ip, [r9, #14]
d0080492:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d0080496:	f899 e00f 	ldrb.w	lr, [r9, #15]
d008049a:	ea43 4c0c 	orr.w	ip, r3, ip, lsl #16
d008049e:	ea4c 630e 	orr.w	r3, ip, lr, lsl #24
d00804a2:	685b      	ldr	r3, [r3, #4]
d00804a4:	689b      	ldr	r3, [r3, #8]
d00804a6:	4798      	blx	r3
d00804a8:	f9b4 0000 	ldrsh.w	r0, [r4]
d00804ac:	fa1f fc80 	uxth.w	ip, r0
d00804b0:	4663      	mov	r3, ip
d00804b2:	f1bb 0f09 	cmp.w	fp, #9
d00804b6:	d122      	bne.n	d00804fe <draw_star_speed_range+0x3be>
d00804b8:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d00804bc:	4663      	mov	r3, ip
d00804be:	f1a1 0c26 	sub.w	ip, r1, #38	; 0x26
d00804c2:	f103 0008 	add.w	r0, r3, #8
d00804c6:	fa1f fc8c 	uxth.w	ip, ip
d00804ca:	b280      	uxth	r0, r0
d00804cc:	f5bc 7f8d 	cmp.w	ip, #282	; 0x11a
d00804d0:	d215      	bcs.n	d00804fe <draw_star_speed_range+0x3be>
d00804d2:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d00804d6:	d212      	bcs.n	d00804fe <draw_star_speed_range+0x3be>
d00804d8:	f899 300c 	ldrb.w	r3, [r9, #12]
d00804dc:	b200      	sxth	r0, r0
d00804de:	f899 c00d 	ldrb.w	ip, [r9, #13]
d00804e2:	f899 b00e 	ldrb.w	fp, [r9, #14]
d00804e6:	ea43 2e0c 	orr.w	lr, r3, ip, lsl #8
d00804ea:	f899 300f 	ldrb.w	r3, [r9, #15]
d00804ee:	ea4e 4c0b 	orr.w	ip, lr, fp, lsl #16
d00804f2:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d00804f6:	685b      	ldr	r3, [r3, #4]
d00804f8:	689b      	ldr	r3, [r3, #8]
d00804fa:	4798      	blx	r3
d00804fc:	8823      	ldrh	r3, [r4, #0]
d00804fe:	f894 b004 	ldrb.w	fp, [r4, #4]
d0080502:	f1bb 0f06 	cmp.w	fp, #6
d0080506:	f240 80e6 	bls.w	d00806d6 <draw_star_speed_range+0x596>
d008050a:	1c58      	adds	r0, r3, #1
d008050c:	8861      	ldrh	r1, [r4, #2]
d008050e:	f240 1bdf 	movw	fp, #479	; 0x1df
d0080512:	fa1f fc80 	uxth.w	ip, r0
d0080516:	f1a1 0e27 	sub.w	lr, r1, #39	; 0x27
d008051a:	b200      	sxth	r0, r0
d008051c:	45dc      	cmp	ip, fp
d008051e:	bf94      	ite	ls
d0080520:	2200      	movls	r2, #0
d0080522:	2201      	movhi	r2, #1
d0080524:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d0080528:	d21e      	bcs.n	d0080568 <draw_star_speed_range+0x428>
d008052a:	b9ea      	cbnz	r2, d0080568 <draw_star_speed_range+0x428>
d008052c:	f899 300c 	ldrb.w	r3, [r9, #12]
d0080530:	3901      	subs	r1, #1
d0080532:	f899 e00d 	ldrb.w	lr, [r9, #13]
d0080536:	f899 c00e 	ldrb.w	ip, [r9, #14]
d008053a:	b209      	sxth	r1, r1
d008053c:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d0080540:	f899 e00f 	ldrb.w	lr, [r9, #15]
d0080544:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0080548:	ea43 6c0e 	orr.w	ip, r3, lr, lsl #24
d008054c:	f8dc 3004 	ldr.w	r3, [ip, #4]
d0080550:	689b      	ldr	r3, [r3, #8]
d0080552:	4798      	blx	r3
d0080554:	8823      	ldrh	r3, [r4, #0]
d0080556:	8861      	ldrh	r1, [r4, #2]
d0080558:	1c58      	adds	r0, r3, #1
d008055a:	fa1f fc80 	uxth.w	ip, r0
d008055e:	b200      	sxth	r0, r0
d0080560:	45dc      	cmp	ip, fp
d0080562:	bf94      	ite	ls
d0080564:	2200      	movls	r2, #0
d0080566:	2201      	movhi	r2, #1
d0080568:	f1a1 0e25 	sub.w	lr, r1, #37	; 0x25
d008056c:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d0080570:	f080 80bb 	bcs.w	d00806ea <draw_star_speed_range+0x5aa>
d0080574:	2a00      	cmp	r2, #0
d0080576:	f040 80b8 	bne.w	d00806ea <draw_star_speed_range+0x5aa>
d008057a:	f899 300c 	ldrb.w	r3, [r9, #12]
d008057e:	3101      	adds	r1, #1
d0080580:	f899 e00d 	ldrb.w	lr, [r9, #13]
d0080584:	f899 c00e 	ldrb.w	ip, [r9, #14]
d0080588:	b209      	sxth	r1, r1
d008058a:	ea43 2e0e 	orr.w	lr, r3, lr, lsl #8
d008058e:	f899 300f 	ldrb.w	r3, [r9, #15]
d0080592:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d0080596:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d008059a:	685b      	ldr	r3, [r3, #4]
d008059c:	689b      	ldr	r3, [r3, #8]
d008059e:	4798      	blx	r3
d00805a0:	f894 b004 	ldrb.w	fp, [r4, #4]
d00805a4:	8823      	ldrh	r3, [r4, #0]
d00805a6:	f1bb 0f08 	cmp.w	fp, #8
d00805aa:	f240 8094 	bls.w	d00806d6 <draw_star_speed_range+0x596>
d00805ae:	1cd8      	adds	r0, r3, #3
d00805b0:	8861      	ldrh	r1, [r4, #2]
d00805b2:	f240 1bdf 	movw	fp, #479	; 0x1df
d00805b6:	fa1f fc80 	uxth.w	ip, r0
d00805ba:	f1a1 0e27 	sub.w	lr, r1, #39	; 0x27
d00805be:	b200      	sxth	r0, r0
d00805c0:	45dc      	cmp	ip, fp
d00805c2:	bf94      	ite	ls
d00805c4:	2200      	movls	r2, #0
d00805c6:	2201      	movhi	r2, #1
d00805c8:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d00805cc:	d21e      	bcs.n	d008060c <draw_star_speed_range+0x4cc>
d00805ce:	b9ea      	cbnz	r2, d008060c <draw_star_speed_range+0x4cc>
d00805d0:	f899 300c 	ldrb.w	r3, [r9, #12]
d00805d4:	3901      	subs	r1, #1
d00805d6:	f899 e00d 	ldrb.w	lr, [r9, #13]
d00805da:	f899 c00e 	ldrb.w	ip, [r9, #14]
d00805de:	b209      	sxth	r1, r1
d00805e0:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d00805e4:	f899 e00f 	ldrb.w	lr, [r9, #15]
d00805e8:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d00805ec:	ea43 6c0e 	orr.w	ip, r3, lr, lsl #24
d00805f0:	f8dc 3004 	ldr.w	r3, [ip, #4]
d00805f4:	689b      	ldr	r3, [r3, #8]
d00805f6:	4798      	blx	r3
d00805f8:	8823      	ldrh	r3, [r4, #0]
d00805fa:	8861      	ldrh	r1, [r4, #2]
d00805fc:	1cd8      	adds	r0, r3, #3
d00805fe:	fa1f fc80 	uxth.w	ip, r0
d0080602:	b200      	sxth	r0, r0
d0080604:	45dc      	cmp	ip, fp
d0080606:	bf94      	ite	ls
d0080608:	2200      	movls	r2, #0
d008060a:	2201      	movhi	r2, #1
d008060c:	f1a1 0e25 	sub.w	lr, r1, #37	; 0x25
d0080610:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d0080614:	d214      	bcs.n	d0080640 <draw_star_speed_range+0x500>
d0080616:	b99a      	cbnz	r2, d0080640 <draw_star_speed_range+0x500>
d0080618:	f899 300c 	ldrb.w	r3, [r9, #12]
d008061c:	3101      	adds	r1, #1
d008061e:	f899 c00d 	ldrb.w	ip, [r9, #13]
d0080622:	f899 e00e 	ldrb.w	lr, [r9, #14]
d0080626:	b209      	sxth	r1, r1
d0080628:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d008062c:	f899 200f 	ldrb.w	r2, [r9, #15]
d0080630:	ea43 430e 	orr.w	r3, r3, lr, lsl #16
d0080634:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080638:	685b      	ldr	r3, [r3, #4]
d008063a:	689b      	ldr	r3, [r3, #8]
d008063c:	4798      	blx	r3
d008063e:	8823      	ldrh	r3, [r4, #0]
d0080640:	f894 b004 	ldrb.w	fp, [r4, #4]
d0080644:	eba3 030b 	sub.w	r3, r3, fp
d0080648:	f1bb 0f08 	cmp.w	fp, #8
d008064c:	b21b      	sxth	r3, r3
d008064e:	8023      	strh	r3, [r4, #0]
d0080650:	d84e      	bhi.n	d00806f0 <draw_star_speed_range+0x5b0>
d0080652:	f1bb 0f06 	cmp.w	fp, #6
d0080656:	d845      	bhi.n	d00806e4 <draw_star_speed_range+0x5a4>
d0080658:	f1bb 0f04 	cmp.w	fp, #4
d008065c:	d858      	bhi.n	d0080710 <draw_star_speed_range+0x5d0>
d008065e:	f1bb 0f02 	cmp.w	fp, #2
d0080662:	d85b      	bhi.n	d008071c <draw_star_speed_range+0x5dc>
d0080664:	d064      	beq.n	d0080730 <draw_star_speed_range+0x5f0>
d0080666:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d008066a:	4293      	cmp	r3, r2
d008066c:	f6bf adc4 	bge.w	d00801f8 <draw_star_speed_range+0xb8>
d0080670:	4938      	ldr	r1, [pc, #224]	; (d0080754 <draw_star_speed_range+0x614>)
d0080672:	f243 0e39 	movw	lr, #12345	; 0x3039
d0080676:	f240 1c19 	movw	ip, #281	; 0x119
d008067a:	1e68      	subs	r0, r5, #1
d008067c:	680b      	ldr	r3, [r1, #0]
d008067e:	b2c0      	uxtb	r0, r0
d0080680:	fb08 e303 	mla	r3, r8, r3, lr
d0080684:	281f      	cmp	r0, #31
d0080686:	ea4f 4213 	mov.w	r2, r3, lsr #16
d008068a:	fb08 e303 	mla	r3, r8, r3, lr
d008068e:	fbaa eb02 	umull	lr, fp, sl, r2
d0080692:	ea4f 4e13 	mov.w	lr, r3, lsr #16
d0080696:	600b      	str	r3, [r1, #0]
d0080698:	eba2 030b 	sub.w	r3, r2, fp
d008069c:	492e      	ldr	r1, [pc, #184]	; (d0080758 <draw_star_speed_range+0x618>)
d008069e:	eb0b 0353 	add.w	r3, fp, r3, lsr #1
d00806a2:	fba1 910e 	umull	r9, r1, r1, lr
d00806a6:	ea4f 2313 	mov.w	r3, r3, lsr #8
d00806aa:	ea4f 01d1 	mov.w	r1, r1, lsr #3
d00806ae:	fb0c e111 	mls	r1, ip, r1, lr
d00806b2:	ebc3 1c03 	rsb	ip, r3, r3, lsl #4
d00806b6:	ebc3 134c 	rsb	r3, r3, ip, lsl #5
d00806ba:	f101 0126 	add.w	r1, r1, #38	; 0x26
d00806be:	eba2 0203 	sub.w	r2, r2, r3
d00806c2:	8061      	strh	r1, [r4, #2]
d00806c4:	f502 72f0 	add.w	r2, r2, #480	; 0x1e0
d00806c8:	8022      	strh	r2, [r4, #0]
d00806ca:	d81a      	bhi.n	d0080702 <draw_star_speed_range+0x5c2>
d00806cc:	2201      	movs	r2, #1
d00806ce:	2306      	movs	r3, #6
d00806d0:	7122      	strb	r2, [r4, #4]
d00806d2:	7163      	strb	r3, [r4, #5]
d00806d4:	e593      	b.n	d00801fe <draw_star_speed_range+0xbe>
d00806d6:	eba3 030b 	sub.w	r3, r3, fp
d00806da:	f1bb 0f06 	cmp.w	fp, #6
d00806de:	b21b      	sxth	r3, r3
d00806e0:	8023      	strh	r3, [r4, #0]
d00806e2:	d9b9      	bls.n	d0080658 <draw_star_speed_range+0x518>
d00806e4:	f06f 0206 	mvn.w	r2, #6
d00806e8:	e7bf      	b.n	d008066a <draw_star_speed_range+0x52a>
d00806ea:	f894 b004 	ldrb.w	fp, [r4, #4]
d00806ee:	e75a      	b.n	d00805a6 <draw_star_speed_range+0x466>
d00806f0:	f06f 0208 	mvn.w	r2, #8
d00806f4:	e7b9      	b.n	d008066a <draw_star_speed_range+0x52a>
d00806f6:	f04f 0b09 	mov.w	fp, #9
d00806fa:	e58f      	b.n	d008021c <draw_star_speed_range+0xdc>
d00806fc:	f04f 0b07 	mov.w	fp, #7
d0080700:	e58c      	b.n	d008021c <draw_star_speed_range+0xdc>
d0080702:	2835      	cmp	r0, #53	; 0x35
d0080704:	d80d      	bhi.n	d0080722 <draw_star_speed_range+0x5e2>
d0080706:	2202      	movs	r2, #2
d0080708:	2306      	movs	r3, #6
d008070a:	7122      	strb	r2, [r4, #4]
d008070c:	7163      	strb	r3, [r4, #5]
d008070e:	e576      	b.n	d00801fe <draw_star_speed_range+0xbe>
d0080710:	f06f 0204 	mvn.w	r2, #4
d0080714:	e7a9      	b.n	d008066a <draw_star_speed_range+0x52a>
d0080716:	f04f 0b03 	mov.w	fp, #3
d008071a:	e57f      	b.n	d008021c <draw_star_speed_range+0xdc>
d008071c:	f06f 0202 	mvn.w	r2, #2
d0080720:	e7a3      	b.n	d008066a <draw_star_speed_range+0x52a>
d0080722:	2847      	cmp	r0, #71	; 0x47
d0080724:	d807      	bhi.n	d0080736 <draw_star_speed_range+0x5f6>
d0080726:	2203      	movs	r2, #3
d0080728:	2305      	movs	r3, #5
d008072a:	7122      	strb	r2, [r4, #4]
d008072c:	7163      	strb	r3, [r4, #5]
d008072e:	e566      	b.n	d00801fe <draw_star_speed_range+0xbe>
d0080730:	f06f 0201 	mvn.w	r2, #1
d0080734:	e799      	b.n	d008066a <draw_star_speed_range+0x52a>
d0080736:	2853      	cmp	r0, #83	; 0x53
d0080738:	f63f ad57 	bhi.w	d00801ea <draw_star_speed_range+0xaa>
d008073c:	2205      	movs	r2, #5
d008073e:	2301      	movs	r3, #1
d0080740:	7122      	strb	r2, [r4, #4]
d0080742:	7163      	strb	r3, [r4, #5]
d0080744:	e55b      	b.n	d00801fe <draw_star_speed_range+0xbe>
d0080746:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d008074a:	2207      	movs	r2, #7
d008074c:	2301      	movs	r3, #1
d008074e:	7122      	strb	r2, [r4, #4]
d0080750:	7163      	strb	r3, [r4, #5]
d0080752:	e554      	b.n	d00801fe <draw_star_speed_range+0xbe>
d0080754:	d008a960 	.word	0xd008a960
d0080758:	0749cb29 	.word	0x0749cb29

d008075c <main>:
d008075c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080760:	f8df 82d0 	ldr.w	r8, [pc, #720]	; d0080a34 <main+0x2d8>
d0080764:	b0a7      	sub	sp, #156	; 0x9c
d0080766:	f44f 2000 	mov.w	r0, #524288	; 0x80000
d008076a:	2602      	movs	r6, #2
d008076c:	f898 3000 	ldrb.w	r3, [r8]
d0080770:	2500      	movs	r5, #0
d0080772:	f898 2001 	ldrb.w	r2, [r8, #1]
d0080776:	f04f 0910 	mov.w	r9, #16
d008077a:	f898 1002 	ldrb.w	r1, [r8, #2]
d008077e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080782:	f898 2003 	ldrb.w	r2, [r8, #3]
d0080786:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008078a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008078e:	681b      	ldr	r3, [r3, #0]
d0080790:	4798      	blx	r3
d0080792:	f7ff fc61 	bl	d0080058 <initMalloc>
d0080796:	f898 300c 	ldrb.w	r3, [r8, #12]
d008079a:	f898 200d 	ldrb.w	r2, [r8, #13]
d008079e:	2190      	movs	r1, #144	; 0x90
d00807a0:	f898 400e 	ldrb.w	r4, [r8, #14]
d00807a4:	20dc      	movs	r0, #220	; 0xdc
d00807a6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00807aa:	f898 200f 	ldrb.w	r2, [r8, #15]
d00807ae:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d00807b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00807b6:	681b      	ldr	r3, [r3, #0]
d00807b8:	691b      	ldr	r3, [r3, #16]
d00807ba:	4798      	blx	r3
d00807bc:	f898 000c 	ldrb.w	r0, [r8, #12]
d00807c0:	f898 100d 	ldrb.w	r1, [r8, #13]
d00807c4:	f44f 73a0 	mov.w	r3, #320	; 0x140
d00807c8:	f898 200e 	ldrb.w	r2, [r8, #14]
d00807cc:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d00807d0:	f898 100f 	ldrb.w	r1, [r8, #15]
d00807d4:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
d00807d8:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00807dc:	ea40 6001 	orr.w	r0, r0, r1, lsl #24
d00807e0:	4619      	mov	r1, r3
d00807e2:	6804      	ldr	r4, [r0, #0]
d00807e4:	4610      	mov	r0, r2
d00807e6:	9600      	str	r6, [sp, #0]
d00807e8:	6964      	ldr	r4, [r4, #20]
d00807ea:	47a0      	blx	r4
d00807ec:	f898 300c 	ldrb.w	r3, [r8, #12]
d00807f0:	f898 200d 	ldrb.w	r2, [r8, #13]
d00807f4:	462c      	mov	r4, r5
d00807f6:	f898 100e 	ldrb.w	r1, [r8, #14]
d00807fa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00807fe:	f898 200f 	ldrb.w	r2, [r8, #15]
d0080802:	4e87      	ldr	r6, [pc, #540]	; (d0080a20 <main+0x2c4>)
d0080804:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080808:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008080c:	681b      	ldr	r3, [r3, #0]
d008080e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0080810:	4798      	blx	r3
d0080812:	f898 300c 	ldrb.w	r3, [r8, #12]
d0080816:	4983      	ldr	r1, [pc, #524]	; (d0080a24 <main+0x2c8>)
d0080818:	f898 200d 	ldrb.w	r2, [r8, #13]
d008081c:	6008      	str	r0, [r1, #0]
d008081e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080822:	f898 100e 	ldrb.w	r1, [r8, #14]
d0080826:	f898 200f 	ldrb.w	r2, [r8, #15]
d008082a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008082e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080832:	681b      	ldr	r3, [r3, #0]
d0080834:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d0080836:	4798      	blx	r3
d0080838:	f898 300c 	ldrb.w	r3, [r8, #12]
d008083c:	497a      	ldr	r1, [pc, #488]	; (d0080a28 <main+0x2cc>)
d008083e:	f898 200d 	ldrb.w	r2, [r8, #13]
d0080842:	6008      	str	r0, [r1, #0]
d0080844:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080848:	f898 100e 	ldrb.w	r1, [r8, #14]
d008084c:	f898 200f 	ldrb.w	r2, [r8, #15]
d0080850:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080854:	4875      	ldr	r0, [pc, #468]	; (d0080a2c <main+0x2d0>)
d0080856:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008085a:	681b      	ldr	r3, [r3, #0]
d008085c:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d008085e:	4798      	blx	r3
d0080860:	f898 3018 	ldrb.w	r3, [r8, #24]
d0080864:	f898 2019 	ldrb.w	r2, [r8, #25]
d0080868:	f898 101a 	ldrb.w	r1, [r8, #26]
d008086c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080870:	f898 201b 	ldrb.w	r2, [r8, #27]
d0080874:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080878:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008087c:	681b      	ldr	r3, [r3, #0]
d008087e:	4798      	blx	r3
d0080880:	f898 300c 	ldrb.w	r3, [r8, #12]
d0080884:	f898 200d 	ldrb.w	r2, [r8, #13]
d0080888:	f898 100e 	ldrb.w	r1, [r8, #14]
d008088c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080890:	f898 200f 	ldrb.w	r2, [r8, #15]
d0080894:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080898:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008089c:	681b      	ldr	r3, [r3, #0]
d008089e:	6d5b      	ldr	r3, [r3, #84]	; 0x54
d00808a0:	4798      	blx	r3
d00808a2:	f898 300c 	ldrb.w	r3, [r8, #12]
d00808a6:	f898 200d 	ldrb.w	r2, [r8, #13]
d00808aa:	2157      	movs	r1, #87	; 0x57
d00808ac:	2050      	movs	r0, #80	; 0x50
d00808ae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00808b2:	f898 200e 	ldrb.w	r2, [r8, #14]
d00808b6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00808ba:	f898 200f 	ldrb.w	r2, [r8, #15]
d00808be:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00808c2:	681b      	ldr	r3, [r3, #0]
d00808c4:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d00808c6:	4798      	blx	r3
d00808c8:	f898 300c 	ldrb.w	r3, [r8, #12]
d00808cc:	f898 200d 	ldrb.w	r2, [r8, #13]
d00808d0:	2004      	movs	r0, #4
d00808d2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00808d6:	f898 200e 	ldrb.w	r2, [r8, #14]
d00808da:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00808de:	f898 200f 	ldrb.w	r2, [r8, #15]
d00808e2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00808e6:	681b      	ldr	r3, [r3, #0]
d00808e8:	6e5b      	ldr	r3, [r3, #100]	; 0x64
d00808ea:	4798      	blx	r3
d00808ec:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d00808f0:	f44f 72a0 	mov.w	r2, #320	; 0x140
d00808f4:	484e      	ldr	r0, [pc, #312]	; (d0080a30 <main+0x2d4>)
d00808f6:	f7ff fba1 	bl	d008003c <gfx_createBitmap>
d00808fa:	f898 300c 	ldrb.w	r3, [r8, #12]
d00808fe:	f898 200d 	ldrb.w	r2, [r8, #13]
d0080902:	484b      	ldr	r0, [pc, #300]	; (d0080a30 <main+0x2d4>)
d0080904:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080908:	f898 200e 	ldrb.w	r2, [r8, #14]
d008090c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080910:	f898 200f 	ldrb.w	r2, [r8, #15]
d0080914:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080918:	681b      	ldr	r3, [r3, #0]
d008091a:	699b      	ldr	r3, [r3, #24]
d008091c:	4798      	blx	r3
d008091e:	f898 300c 	ldrb.w	r3, [r8, #12]
d0080922:	f898 200d 	ldrb.w	r2, [r8, #13]
d0080926:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008092a:	f898 200e 	ldrb.w	r2, [r8, #14]
d008092e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080932:	f898 200f 	ldrb.w	r2, [r8, #15]
d0080936:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008093a:	685b      	ldr	r3, [r3, #4]
d008093c:	681b      	ldr	r3, [r3, #0]
d008093e:	4798      	blx	r3
d0080940:	e03b      	b.n	d00809ba <main+0x25e>
d0080942:	f898 200d 	ldrb.w	r2, [r8, #13]
d0080946:	f107 0311 	add.w	r3, r7, #17
d008094a:	f898 e00e 	ldrb.w	lr, [r8, #14]
d008094e:	4648      	mov	r0, r9
d0080950:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d0080954:	f816 ac01 	ldrb.w	sl, [r6, #-1]
d0080958:	b21b      	sxth	r3, r3
d008095a:	ea41 420e 	orr.w	r2, r1, lr, lsl #16
d008095e:	9304      	str	r3, [sp, #16]
d0080960:	f898 300f 	ldrb.w	r3, [r8, #15]
d0080964:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080968:	685b      	ldr	r3, [r3, #4]
d008096a:	68db      	ldr	r3, [r3, #12]
d008096c:	4798      	blx	r3
d008096e:	f898 000c 	ldrb.w	r0, [r8, #12]
d0080972:	f898 200d 	ldrb.w	r2, [r8, #13]
d0080976:	4659      	mov	r1, fp
d0080978:	f898 e00e 	ldrb.w	lr, [r8, #14]
d008097c:	2311      	movs	r3, #17
d008097e:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
d0080982:	f898 c00f 	ldrb.w	ip, [r8, #15]
d0080986:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d008098a:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d008098e:	2000      	movs	r0, #0
d0080990:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d0080994:	f8dc c004 	ldr.w	ip, [ip, #4]
d0080998:	f8dc b004 	ldr.w	fp, [ip, #4]
d008099c:	47d8      	blx	fp
d008099e:	45ca      	cmp	sl, r9
d00809a0:	d003      	beq.n	d00809aa <main+0x24e>
d00809a2:	1c6b      	adds	r3, r5, #1
d00809a4:	9a04      	ldr	r2, [sp, #16]
d00809a6:	429a      	cmp	r2, r3
d00809a8:	dc74      	bgt.n	d0080a94 <main+0x338>
d00809aa:	b2a3      	uxth	r3, r4
d00809ac:	2b11      	cmp	r3, #17
d00809ae:	f000 809e 	beq.w	d0080aee <main+0x392>
d00809b2:	3401      	adds	r4, #1
d00809b4:	3511      	adds	r5, #17
d00809b6:	f816 9f01 	ldrb.w	r9, [r6, #1]!
d00809ba:	2c11      	cmp	r4, #17
d00809bc:	b2af      	uxth	r7, r5
d00809be:	fa0f fb85 	sxth.w	fp, r5
d00809c2:	f898 100c 	ldrb.w	r1, [r8, #12]
d00809c6:	fa0f fa84 	sxth.w	sl, r4
d00809ca:	d035      	beq.n	d0080a38 <main+0x2dc>
d00809cc:	f1ba 0f00 	cmp.w	sl, #0
d00809d0:	d1b7      	bne.n	d0080942 <main+0x1e6>
d00809d2:	f898 300d 	ldrb.w	r3, [r8, #13]
d00809d6:	f898 200e 	ldrb.w	r2, [r8, #14]
d00809da:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00809de:	f898 300f 	ldrb.w	r3, [r8, #15]
d00809e2:	7830      	ldrb	r0, [r6, #0]
d00809e4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00809e8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00809ec:	685b      	ldr	r3, [r3, #4]
d00809ee:	68db      	ldr	r3, [r3, #12]
d00809f0:	4798      	blx	r3
d00809f2:	f898 e00c 	ldrb.w	lr, [r8, #12]
d00809f6:	f898 700d 	ldrb.w	r7, [r8, #13]
d00809fa:	4659      	mov	r1, fp
d00809fc:	f898 c00e 	ldrb.w	ip, [r8, #14]
d0080a00:	4650      	mov	r0, sl
d0080a02:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d0080a06:	f898 700f 	ldrb.w	r7, [r8, #15]
d0080a0a:	2311      	movs	r3, #17
d0080a0c:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080a10:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d0080a14:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0080a18:	687f      	ldr	r7, [r7, #4]
d0080a1a:	687f      	ldr	r7, [r7, #4]
d0080a1c:	47b8      	blx	r7
d0080a1e:	e7c8      	b.n	d00809b2 <main+0x256>
d0080a20:	d008a7d4 	.word	0xd008a7d4
d0080a24:	d008ade0 	.word	0xd008ade0
d0080a28:	d008adc0 	.word	0xd008adc0
d0080a2c:	d00848c0 	.word	0xd00848c0
d0080a30:	d008ada0 	.word	0xd008ada0
d0080a34:	2001f000 	.word	0x2001f000
d0080a38:	f898 300d 	ldrb.w	r3, [r8, #13]
d0080a3c:	4648      	mov	r0, r9
d0080a3e:	f898 200e 	ldrb.w	r2, [r8, #14]
d0080a42:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0080a46:	f898 300f 	ldrb.w	r3, [r8, #15]
d0080a4a:	f816 ac01 	ldrb.w	sl, [r6, #-1]
d0080a4e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080a52:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080a56:	685b      	ldr	r3, [r3, #4]
d0080a58:	68db      	ldr	r3, [r3, #12]
d0080a5a:	4798      	blx	r3
d0080a5c:	f898 000c 	ldrb.w	r0, [r8, #12]
d0080a60:	f898 c00d 	ldrb.w	ip, [r8, #13]
d0080a64:	f5c7 73a0 	rsb	r3, r7, #320	; 0x140
d0080a68:	f898 e00e 	ldrb.w	lr, [r8, #14]
d0080a6c:	4659      	mov	r1, fp
d0080a6e:	ea40 200c 	orr.w	r0, r0, ip, lsl #8
d0080a72:	f898 c00f 	ldrb.w	ip, [r8, #15]
d0080a76:	b21b      	sxth	r3, r3
d0080a78:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080a7c:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d0080a80:	2000      	movs	r0, #0
d0080a82:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d0080a86:	f8dc c004 	ldr.w	ip, [ip, #4]
d0080a8a:	f8dc b004 	ldr.w	fp, [ip, #4]
d0080a8e:	47d8      	blx	fp
d0080a90:	45d1      	cmp	r9, sl
d0080a92:	d08a      	beq.n	d00809aa <main+0x24e>
d0080a94:	f898 100c 	ldrb.w	r1, [r8, #12]
d0080a98:	4650      	mov	r0, sl
d0080a9a:	f898 300d 	ldrb.w	r3, [r8, #13]
d0080a9e:	f898 200e 	ldrb.w	r2, [r8, #14]
d0080aa2:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0080aa6:	f898 300f 	ldrb.w	r3, [r8, #15]
d0080aaa:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080aae:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080ab2:	685b      	ldr	r3, [r3, #4]
d0080ab4:	68db      	ldr	r3, [r3, #12]
d0080ab6:	4798      	blx	r3
d0080ab8:	f898 200c 	ldrb.w	r2, [r8, #12]
d0080abc:	f898 c00d 	ldrb.w	ip, [r8, #13]
d0080ac0:	1cf9      	adds	r1, r7, #3
d0080ac2:	f898 700e 	ldrb.w	r7, [r8, #14]
d0080ac6:	2302      	movs	r3, #2
d0080ac8:	ea42 200c 	orr.w	r0, r2, ip, lsl #8
d0080acc:	f898 e00f 	ldrb.w	lr, [r8, #15]
d0080ad0:	b209      	sxth	r1, r1
d0080ad2:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080ad6:	ea40 4c07 	orr.w	ip, r0, r7, lsl #16
d0080ada:	2000      	movs	r0, #0
d0080adc:	ea4c 670e 	orr.w	r7, ip, lr, lsl #24
d0080ae0:	687f      	ldr	r7, [r7, #4]
d0080ae2:	687f      	ldr	r7, [r7, #4]
d0080ae4:	47b8      	blx	r7
d0080ae6:	b2a3      	uxth	r3, r4
d0080ae8:	2b11      	cmp	r3, #17
d0080aea:	f47f af62 	bne.w	d00809b2 <main+0x256>
d0080aee:	f898 100c 	ldrb.w	r1, [r8, #12]
d0080af2:	2600      	movs	r6, #0
d0080af4:	f898 300d 	ldrb.w	r3, [r8, #13]
d0080af8:	f240 1a19 	movw	sl, #281	; 0x119
d0080afc:	f898 200e 	ldrb.w	r2, [r8, #14]
d0080b00:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0080b04:	f898 300f 	ldrb.w	r3, [r8, #15]
d0080b08:	4845      	ldr	r0, [pc, #276]	; (d0080c20 <main+0x4c4>)
d0080b0a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080b0e:	4c45      	ldr	r4, [pc, #276]	; (d0080c24 <main+0x4c8>)
d0080b10:	f8df b130 	ldr.w	fp, [pc, #304]	; d0080c44 <main+0x4e8>
d0080b14:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080b18:	681b      	ldr	r3, [r3, #0]
d0080b1a:	6a1b      	ldr	r3, [r3, #32]
d0080b1c:	4798      	blx	r3
d0080b1e:	f898 100c 	ldrb.w	r1, [r8, #12]
d0080b22:	f898 300d 	ldrb.w	r3, [r8, #13]
d0080b26:	f898 200e 	ldrb.w	r2, [r8, #14]
d0080b2a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0080b2e:	f898 300f 	ldrb.w	r3, [r8, #15]
d0080b32:	483d      	ldr	r0, [pc, #244]	; (d0080c28 <main+0x4cc>)
d0080b34:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080b38:	6800      	ldr	r0, [r0, #0]
d0080b3a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080b3e:	681b      	ldr	r3, [r3, #0]
d0080b40:	69db      	ldr	r3, [r3, #28]
d0080b42:	4798      	blx	r3
d0080b44:	f898 100c 	ldrb.w	r1, [r8, #12]
d0080b48:	f898 300d 	ldrb.w	r3, [r8, #13]
d0080b4c:	f898 200e 	ldrb.w	r2, [r8, #14]
d0080b50:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0080b54:	f898 300f 	ldrb.w	r3, [r8, #15]
d0080b58:	4834      	ldr	r0, [pc, #208]	; (d0080c2c <main+0x4d0>)
d0080b5a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080b5e:	6800      	ldr	r0, [r0, #0]
d0080b60:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080b64:	681b      	ldr	r3, [r3, #0]
d0080b66:	699b      	ldr	r3, [r3, #24]
d0080b68:	4798      	blx	r3
d0080b6a:	4b31      	ldr	r3, [pc, #196]	; (d0080c30 <main+0x4d4>)
d0080b6c:	f44f 62ca 	mov.w	r2, #1616	; 0x650
d0080b70:	4830      	ldr	r0, [pc, #192]	; (d0080c34 <main+0x4d8>)
d0080b72:	6819      	ldr	r1, [r3, #0]
d0080b74:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d0080b78:	6002      	str	r2, [r0, #0]
d0080b7a:	f243 0c39 	movw	ip, #12345	; 0x3039
d0080b7e:	4a2e      	ldr	r2, [pc, #184]	; (d0080c38 <main+0x4dc>)
d0080b80:	f8df e0bc 	ldr.w	lr, [pc, #188]	; d0080c40 <main+0x4e4>
d0080b84:	6013      	str	r3, [r2, #0]
d0080b86:	e006      	b.n	d0080b96 <main+0x43a>
d0080b88:	2306      	movs	r3, #6
d0080b8a:	f04f 0201 	mov.w	r2, #1
d0080b8e:	7163      	strb	r3, [r4, #5]
d0080b90:	7122      	strb	r2, [r4, #4]
d0080b92:	3601      	adds	r6, #1
d0080b94:	3406      	adds	r4, #6
d0080b96:	fb0e c101 	mla	r1, lr, r1, ip
d0080b9a:	2e1f      	cmp	r6, #31
d0080b9c:	b2f5      	uxtb	r5, r6
d0080b9e:	ea4f 4011 	mov.w	r0, r1, lsr #16
d0080ba2:	fb0e c101 	mla	r1, lr, r1, ip
d0080ba6:	fbab 2300 	umull	r2, r3, fp, r0
d0080baa:	ea4f 4911 	mov.w	r9, r1, lsr #16
d0080bae:	eba0 0203 	sub.w	r2, r0, r3
d0080bb2:	eb03 0352 	add.w	r3, r3, r2, lsr #1
d0080bb6:	4a21      	ldr	r2, [pc, #132]	; (d0080c3c <main+0x4e0>)
d0080bb8:	ea4f 2313 	mov.w	r3, r3, lsr #8
d0080bbc:	fba2 7209 	umull	r7, r2, r2, r9
d0080bc0:	ebc3 1703 	rsb	r7, r3, r3, lsl #4
d0080bc4:	ea4f 02d2 	mov.w	r2, r2, lsr #3
d0080bc8:	ebc3 1347 	rsb	r3, r3, r7, lsl #5
d0080bcc:	fb0a 9212 	mls	r2, sl, r2, r9
d0080bd0:	eba0 0003 	sub.w	r0, r0, r3
d0080bd4:	f102 0226 	add.w	r2, r2, #38	; 0x26
d0080bd8:	8020      	strh	r0, [r4, #0]
d0080bda:	8062      	strh	r2, [r4, #2]
d0080bdc:	d9d4      	bls.n	d0080b88 <main+0x42c>
d0080bde:	2d35      	cmp	r5, #53	; 0x35
d0080be0:	d805      	bhi.n	d0080bee <main+0x492>
d0080be2:	2306      	movs	r3, #6
d0080be4:	f04f 0202 	mov.w	r2, #2
d0080be8:	7163      	strb	r3, [r4, #5]
d0080bea:	7122      	strb	r2, [r4, #4]
d0080bec:	e7d1      	b.n	d0080b92 <main+0x436>
d0080bee:	2d47      	cmp	r5, #71	; 0x47
d0080bf0:	d804      	bhi.n	d0080bfc <main+0x4a0>
d0080bf2:	2203      	movs	r2, #3
d0080bf4:	2305      	movs	r3, #5
d0080bf6:	7122      	strb	r2, [r4, #4]
d0080bf8:	7163      	strb	r3, [r4, #5]
d0080bfa:	e7ca      	b.n	d0080b92 <main+0x436>
d0080bfc:	2d53      	cmp	r5, #83	; 0x53
d0080bfe:	d805      	bhi.n	d0080c0c <main+0x4b0>
d0080c00:	2305      	movs	r3, #5
d0080c02:	f04f 0201 	mov.w	r2, #1
d0080c06:	7123      	strb	r3, [r4, #4]
d0080c08:	7162      	strb	r2, [r4, #5]
d0080c0a:	e7c2      	b.n	d0080b92 <main+0x436>
d0080c0c:	2d5b      	cmp	r5, #91	; 0x5b
d0080c0e:	d81b      	bhi.n	d0080c48 <main+0x4ec>
d0080c10:	f04f 0307 	mov.w	r3, #7
d0080c14:	7123      	strb	r3, [r4, #4]
d0080c16:	f04f 0301 	mov.w	r3, #1
d0080c1a:	7163      	strb	r3, [r4, #5]
d0080c1c:	e7b9      	b.n	d0080b92 <main+0x436>
d0080c1e:	bf00      	nop
d0080c20:	d008ada0 	.word	0xd008ada0
d0080c24:	d008ab40 	.word	0xd008ab40
d0080c28:	d008ade0 	.word	0xd008ade0
d0080c2c:	d008adc0 	.word	0xd008adc0
d0080c30:	d008a960 	.word	0xd008a960
d0080c34:	d008ab20 	.word	0xd008ab20
d0080c38:	d008a944 	.word	0xd008a944
d0080c3c:	0749cb29 	.word	0x0749cb29
d0080c40:	41c64e6d 	.word	0x41c64e6d
d0080c44:	11a3019b 	.word	0x11a3019b
d0080c48:	f04f 0309 	mov.w	r3, #9
d0080c4c:	2d5f      	cmp	r5, #95	; 0x5f
d0080c4e:	7123      	strb	r3, [r4, #4]
d0080c50:	f04f 0302 	mov.w	r3, #2
d0080c54:	7163      	strb	r3, [r4, #5]
d0080c56:	d19c      	bne.n	d0080b92 <main+0x436>
d0080c58:	4bce      	ldr	r3, [pc, #824]	; (d0080f94 <main+0x838>)
d0080c5a:	6019      	str	r1, [r3, #0]
d0080c5c:	f898 1000 	ldrb.w	r1, [r8]
d0080c60:	f898 3001 	ldrb.w	r3, [r8, #1]
d0080c64:	f898 2002 	ldrb.w	r2, [r8, #2]
d0080c68:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0080c6c:	f898 3003 	ldrb.w	r3, [r8, #3]
d0080c70:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080c74:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080c78:	6a1b      	ldr	r3, [r3, #32]
d0080c7a:	4798      	blx	r3
d0080c7c:	9009      	str	r0, [sp, #36]	; 0x24
d0080c7e:	2800      	cmp	r0, #0
d0080c80:	f001 8347 	beq.w	d0082312 <main+0x1bb6>
d0080c84:	f898 100c 	ldrb.w	r1, [r8, #12]
d0080c88:	f898 300d 	ldrb.w	r3, [r8, #13]
d0080c8c:	f898 200e 	ldrb.w	r2, [r8, #14]
d0080c90:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0080c94:	f898 300f 	ldrb.w	r3, [r8, #15]
d0080c98:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080c9c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080ca0:	681b      	ldr	r3, [r3, #0]
d0080ca2:	68db      	ldr	r3, [r3, #12]
d0080ca4:	4798      	blx	r3
d0080ca6:	f898 100c 	ldrb.w	r1, [r8, #12]
d0080caa:	f898 300d 	ldrb.w	r3, [r8, #13]
d0080cae:	f898 200e 	ldrb.w	r2, [r8, #14]
d0080cb2:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0080cb6:	f898 300f 	ldrb.w	r3, [r8, #15]
d0080cba:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080cbe:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080cc2:	685b      	ldr	r3, [r3, #4]
d0080cc4:	681b      	ldr	r3, [r3, #0]
d0080cc6:	4798      	blx	r3
d0080cc8:	2105      	movs	r1, #5
d0080cca:	2000      	movs	r0, #0
d0080ccc:	f7ff fa38 	bl	d0080140 <draw_star_speed_range>
d0080cd0:	4bb1      	ldr	r3, [pc, #708]	; (d0080f98 <main+0x83c>)
d0080cd2:	781b      	ldrb	r3, [r3, #0]
d0080cd4:	9304      	str	r3, [sp, #16]
d0080cd6:	2b00      	cmp	r3, #0
d0080cd8:	f001 8480 	beq.w	d00825dc <main+0x1e80>
d0080cdc:	4baf      	ldr	r3, [pc, #700]	; (d0080f9c <main+0x840>)
d0080cde:	f8df a2f4 	ldr.w	sl, [pc, #756]	; d0080fd4 <main+0x878>
d0080ce2:	9308      	str	r3, [sp, #32]
d0080ce4:	4cae      	ldr	r4, [pc, #696]	; (d0080fa0 <main+0x844>)
d0080ce6:	4baf      	ldr	r3, [pc, #700]	; (d0080fa4 <main+0x848>)
d0080ce8:	930b      	str	r3, [sp, #44]	; 0x2c
d0080cea:	4baf      	ldr	r3, [pc, #700]	; (d0080fa8 <main+0x84c>)
d0080cec:	8819      	ldrh	r1, [r3, #0]
d0080cee:	3901      	subs	r1, #1
d0080cf0:	b209      	sxth	r1, r1
d0080cf2:	f111 0fa5 	cmn.w	r1, #165	; 0xa5
d0080cf6:	f2c1 86c6 	blt.w	d0082a86 <main+0x232a>
d0080cfa:	8019      	strh	r1, [r3, #0]
d0080cfc:	f898 c00c 	ldrb.w	ip, [r8, #12]
d0080d00:	2676      	movs	r6, #118	; 0x76
d0080d02:	f898 200d 	ldrb.w	r2, [r8, #13]
d0080d06:	23a5      	movs	r3, #165	; 0xa5
d0080d08:	f898 500e 	ldrb.w	r5, [r8, #14]
d0080d0c:	ea4c 2c02 	orr.w	ip, ip, r2, lsl #8
d0080d10:	f898 700f 	ldrb.w	r7, [r8, #15]
d0080d14:	2225      	movs	r2, #37	; 0x25
d0080d16:	48a5      	ldr	r0, [pc, #660]	; (d0080fac <main+0x850>)
d0080d18:	ea4c 4505 	orr.w	r5, ip, r5, lsl #16
d0080d1c:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d0080d20:	4fa3      	ldr	r7, [pc, #652]	; (d0080fb0 <main+0x854>)
d0080d22:	686d      	ldr	r5, [r5, #4]
d0080d24:	9600      	str	r6, [sp, #0]
d0080d26:	4ea3      	ldr	r6, [pc, #652]	; (d0080fb4 <main+0x858>)
d0080d28:	69ad      	ldr	r5, [r5, #24]
d0080d2a:	47a8      	blx	r5
d0080d2c:	f89a 1006 	ldrb.w	r1, [sl, #6]
d0080d30:	8830      	ldrh	r0, [r6, #0]
d0080d32:	f89a 5008 	ldrb.w	r5, [sl, #8]
d0080d36:	3101      	adds	r1, #1
d0080d38:	f8ba 2000 	ldrh.w	r2, [sl]
d0080d3c:	3001      	adds	r0, #1
d0080d3e:	f001 013f 	and.w	r1, r1, #63	; 0x3f
d0080d42:	f9b7 7000 	ldrsh.w	r7, [r7]
d0080d46:	1b52      	subs	r2, r2, r5
d0080d48:	b285      	uxth	r5, r0
d0080d4a:	489b      	ldr	r0, [pc, #620]	; (d0080fb8 <main+0x85c>)
d0080d4c:	2f1d      	cmp	r7, #29
d0080d4e:	f89a 3007 	ldrb.w	r3, [sl, #7]
d0080d52:	b212      	sxth	r2, r2
d0080d54:	5640      	ldrsb	r0, [r0, r1]
d0080d56:	f88a 1006 	strb.w	r1, [sl, #6]
d0080d5a:	bfd8      	it	le
d0080d5c:	2100      	movle	r1, #0
d0080d5e:	fb10 f303 	smulbb	r3, r0, r3
d0080d62:	bfc8      	it	gt
d0080d64:	2101      	movgt	r1, #1
d0080d66:	9506      	str	r5, [sp, #24]
d0080d68:	2b00      	cmp	r3, #0
d0080d6a:	9107      	str	r1, [sp, #28]
d0080d6c:	f8ba 1004 	ldrh.w	r1, [sl, #4]
d0080d70:	bfb8      	it	lt
d0080d72:	331f      	addlt	r3, #31
d0080d74:	f112 0f20 	cmn.w	r2, #32
d0080d78:	9704      	str	r7, [sp, #16]
d0080d7a:	eb01 1363 	add.w	r3, r1, r3, asr #5
d0080d7e:	8035      	strh	r5, [r6, #0]
d0080d80:	f8aa 2000 	strh.w	r2, [sl]
d0080d84:	b219      	sxth	r1, r3
d0080d86:	b29b      	uxth	r3, r3
d0080d88:	910c      	str	r1, [sp, #48]	; 0x30
d0080d8a:	930a      	str	r3, [sp, #40]	; 0x28
d0080d8c:	f8aa 1002 	strh.w	r1, [sl, #2]
d0080d90:	f2c1 83a6 	blt.w	d00824e0 <main+0x1d84>
d0080d94:	4b7f      	ldr	r3, [pc, #508]	; (d0080f94 <main+0x838>)
d0080d96:	f5b2 7f43 	cmp.w	r2, #780	; 0x30c
d0080d9a:	681b      	ldr	r3, [r3, #0]
d0080d9c:	9305      	str	r3, [sp, #20]
d0080d9e:	f281 8401 	bge.w	d00825a4 <main+0x1e48>
d0080da2:	9b04      	ldr	r3, [sp, #16]
d0080da4:	4293      	cmp	r3, r2
d0080da6:	f281 83fd 	bge.w	d00825a4 <main+0x1e48>
d0080daa:	f04f 0b00 	mov.w	fp, #0
d0080dae:	f89a 1012 	ldrb.w	r1, [sl, #18]
d0080db2:	f89a 0014 	ldrb.w	r0, [sl, #20]
d0080db6:	f8ba 300c 	ldrh.w	r3, [sl, #12]
d0080dba:	3101      	adds	r1, #1
d0080dbc:	f89a 5013 	ldrb.w	r5, [sl, #19]
d0080dc0:	f001 013f 	and.w	r1, r1, #63	; 0x3f
d0080dc4:	1a1b      	subs	r3, r3, r0
d0080dc6:	487c      	ldr	r0, [pc, #496]	; (d0080fb8 <main+0x85c>)
d0080dc8:	b21b      	sxth	r3, r3
d0080dca:	f88a 1012 	strb.w	r1, [sl, #18]
d0080dce:	5640      	ldrsb	r0, [r0, r1]
d0080dd0:	f8aa 300c 	strh.w	r3, [sl, #12]
d0080dd4:	fb10 f005 	smulbb	r0, r0, r5
d0080dd8:	f8ba 5010 	ldrh.w	r5, [sl, #16]
d0080ddc:	2800      	cmp	r0, #0
d0080dde:	bfb8      	it	lt
d0080de0:	301f      	addlt	r0, #31
d0080de2:	f113 0f20 	cmn.w	r3, #32
d0080de6:	eb05 1060 	add.w	r0, r5, r0, asr #5
d0080dea:	b201      	sxth	r1, r0
d0080dec:	b280      	uxth	r0, r0
d0080dee:	910e      	str	r1, [sp, #56]	; 0x38
d0080df0:	9011      	str	r0, [sp, #68]	; 0x44
d0080df2:	f8aa 100e 	strh.w	r1, [sl, #14]
d0080df6:	da5d      	bge.n	d0080eb4 <main+0x758>
d0080df8:	f243 0339 	movw	r3, #12345	; 0x3039
d0080dfc:	4f6f      	ldr	r7, [pc, #444]	; (d0080fbc <main+0x860>)
d0080dfe:	9805      	ldr	r0, [sp, #20]
d0080e00:	463d      	mov	r5, r7
d0080e02:	496f      	ldr	r1, [pc, #444]	; (d0080fc0 <main+0x864>)
d0080e04:	fb07 3900 	mla	r9, r7, r0, r3
d0080e08:	486e      	ldr	r0, [pc, #440]	; (d0080fc4 <main+0x868>)
d0080e0a:	fb07 3e09 	mla	lr, r7, r9, r3
d0080e0e:	ea4f 4c99 	mov.w	ip, r9, lsr #18
d0080e12:	fb07 360e 	mla	r6, r7, lr, r3
d0080e16:	fba0 c00c 	umull	ip, r0, r0, ip
d0080e1a:	fb07 3706 	mla	r7, r7, r6, r3
d0080e1e:	f3c6 4605 	ubfx	r6, r6, #16, #6
d0080e22:	0840      	lsrs	r0, r0, #1
d0080e24:	ea4f 4c17 	mov.w	ip, r7, lsr #16
d0080e28:	fb05 3707 	mla	r7, r5, r7, r3
d0080e2c:	f88a 6012 	strb.w	r6, [sl, #18]
d0080e30:	fb05 3507 	mla	r5, r5, r7, r3
d0080e34:	0c3f      	lsrs	r7, r7, #16
d0080e36:	23dc      	movs	r3, #220	; 0xdc
d0080e38:	4e63      	ldr	r6, [pc, #396]	; (d0080fc8 <main+0x86c>)
d0080e3a:	970d      	str	r7, [sp, #52]	; 0x34
d0080e3c:	fb03 f300 	mul.w	r3, r3, r0
d0080e40:	4638      	mov	r0, r7
d0080e42:	fba6 760c 	umull	r7, r6, r6, ip
d0080e46:	4f61      	ldr	r7, [pc, #388]	; (d0080fcc <main+0x870>)
d0080e48:	fba1 0100 	umull	r0, r1, r1, r0
d0080e4c:	ea4f 409e 	mov.w	r0, lr, lsr #18
d0080e50:	ebc3 4319 	rsb	r3, r3, r9, lsr #16
d0080e54:	9505      	str	r5, [sp, #20]
d0080e56:	fba7 7000 	umull	r7, r0, r7, r0
d0080e5a:	4f4e      	ldr	r7, [pc, #312]	; (d0080f94 <main+0x838>)
d0080e5c:	ea4f 4915 	mov.w	r9, r5, lsr #16
d0080e60:	f503 73fc 	add.w	r3, r3, #504	; 0x1f8
d0080e64:	603d      	str	r5, [r7, #0]
d0080e66:	0840      	lsrs	r0, r0, #1
d0080e68:	25e4      	movs	r5, #228	; 0xe4
d0080e6a:	0849      	lsrs	r1, r1, #1
d0080e6c:	0976      	lsrs	r6, r6, #5
d0080e6e:	fb05 f000 	mul.w	r0, r5, r0
d0080e72:	4d57      	ldr	r5, [pc, #348]	; (d0080fd0 <main+0x874>)
d0080e74:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d0080e78:	fba5 7509 	umull	r7, r5, r5, r9
d0080e7c:	ebc0 401e 	rsb	r0, r0, lr, lsr #16
d0080e80:	eb06 1606 	add.w	r6, r6, r6, lsl #4
d0080e84:	9f0d      	ldr	r7, [sp, #52]	; 0x34
d0080e86:	092d      	lsrs	r5, r5, #4
d0080e88:	f04f 0e96 	mov.w	lr, #150	; 0x96
d0080e8c:	1a79      	subs	r1, r7, r1
d0080e8e:	ebac 0646 	sub.w	r6, ip, r6, lsl #1
d0080e92:	fb0e 9515 	mls	r5, lr, r5, r9
d0080e96:	302a      	adds	r0, #42	; 0x2a
d0080e98:	3101      	adds	r1, #1
d0080e9a:	360a      	adds	r6, #10
d0080e9c:	b21b      	sxth	r3, r3
d0080e9e:	355a      	adds	r5, #90	; 0x5a
d0080ea0:	f88a 1014 	strb.w	r1, [sl, #20]
d0080ea4:	f88a 6013 	strb.w	r6, [sl, #19]
d0080ea8:	f8aa 5016 	strh.w	r5, [sl, #22]
d0080eac:	f8aa 0010 	strh.w	r0, [sl, #16]
d0080eb0:	f8aa 300c 	strh.w	r3, [sl, #12]
d0080eb4:	9904      	ldr	r1, [sp, #16]
d0080eb6:	4299      	cmp	r1, r3
d0080eb8:	f281 875f 	bge.w	d0082d7a <main+0x261e>
d0080ebc:	429a      	cmp	r2, r3
d0080ebe:	f341 875c 	ble.w	d0082d7a <main+0x261e>
d0080ec2:	f04f 0b01 	mov.w	fp, #1
d0080ec6:	f89a 101e 	ldrb.w	r1, [sl, #30]
d0080eca:	f89a 0020 	ldrb.w	r0, [sl, #32]
d0080ece:	f8ba 2018 	ldrh.w	r2, [sl, #24]
d0080ed2:	3101      	adds	r1, #1
d0080ed4:	f89a 501f 	ldrb.w	r5, [sl, #31]
d0080ed8:	f001 013f 	and.w	r1, r1, #63	; 0x3f
d0080edc:	1a12      	subs	r2, r2, r0
d0080ede:	4836      	ldr	r0, [pc, #216]	; (d0080fb8 <main+0x85c>)
d0080ee0:	b212      	sxth	r2, r2
d0080ee2:	f88a 101e 	strb.w	r1, [sl, #30]
d0080ee6:	5640      	ldrsb	r0, [r0, r1]
d0080ee8:	f8aa 2018 	strh.w	r2, [sl, #24]
d0080eec:	fb10 f005 	smulbb	r0, r0, r5
d0080ef0:	f8ba 501c 	ldrh.w	r5, [sl, #28]
d0080ef4:	2800      	cmp	r0, #0
d0080ef6:	bfb8      	it	lt
d0080ef8:	301f      	addlt	r0, #31
d0080efa:	f112 0f20 	cmn.w	r2, #32
d0080efe:	eb05 1060 	add.w	r0, r5, r0, asr #5
d0080f02:	b201      	sxth	r1, r0
d0080f04:	b280      	uxth	r0, r0
d0080f06:	910f      	str	r1, [sp, #60]	; 0x3c
d0080f08:	9012      	str	r0, [sp, #72]	; 0x48
d0080f0a:	f8aa 101a 	strh.w	r1, [sl, #26]
d0080f0e:	f280 8081 	bge.w	d0081014 <main+0x8b8>
d0080f12:	f243 0239 	movw	r2, #12345	; 0x3039
d0080f16:	4f29      	ldr	r7, [pc, #164]	; (d0080fbc <main+0x860>)
d0080f18:	9805      	ldr	r0, [sp, #20]
d0080f1a:	463d      	mov	r5, r7
d0080f1c:	4928      	ldr	r1, [pc, #160]	; (d0080fc0 <main+0x864>)
d0080f1e:	fb07 2900 	mla	r9, r7, r0, r2
d0080f22:	4828      	ldr	r0, [pc, #160]	; (d0080fc4 <main+0x868>)
d0080f24:	fb07 2e09 	mla	lr, r7, r9, r2
d0080f28:	ea4f 4c99 	mov.w	ip, r9, lsr #18
d0080f2c:	fb07 260e 	mla	r6, r7, lr, r2
d0080f30:	fba0 c00c 	umull	ip, r0, r0, ip
d0080f34:	fb07 2706 	mla	r7, r7, r6, r2
d0080f38:	f3c6 4605 	ubfx	r6, r6, #16, #6
d0080f3c:	0840      	lsrs	r0, r0, #1
d0080f3e:	ea4f 4c17 	mov.w	ip, r7, lsr #16
d0080f42:	fb05 2707 	mla	r7, r5, r7, r2
d0080f46:	f88a 601e 	strb.w	r6, [sl, #30]
d0080f4a:	fb05 2507 	mla	r5, r5, r7, r2
d0080f4e:	0c3f      	lsrs	r7, r7, #16
d0080f50:	22dc      	movs	r2, #220	; 0xdc
d0080f52:	4e1d      	ldr	r6, [pc, #116]	; (d0080fc8 <main+0x86c>)
d0080f54:	970d      	str	r7, [sp, #52]	; 0x34
d0080f56:	fb02 f200 	mul.w	r2, r2, r0
d0080f5a:	4638      	mov	r0, r7
d0080f5c:	fba6 760c 	umull	r7, r6, r6, ip
d0080f60:	4f1a      	ldr	r7, [pc, #104]	; (d0080fcc <main+0x870>)
d0080f62:	fba1 0100 	umull	r0, r1, r1, r0
d0080f66:	ea4f 409e 	mov.w	r0, lr, lsr #18
d0080f6a:	ebc2 4219 	rsb	r2, r2, r9, lsr #16
d0080f6e:	9505      	str	r5, [sp, #20]
d0080f70:	fba7 7000 	umull	r7, r0, r7, r0
d0080f74:	4f07      	ldr	r7, [pc, #28]	; (d0080f94 <main+0x838>)
d0080f76:	ea4f 4915 	mov.w	r9, r5, lsr #16
d0080f7a:	f502 72fc 	add.w	r2, r2, #504	; 0x1f8
d0080f7e:	603d      	str	r5, [r7, #0]
d0080f80:	0840      	lsrs	r0, r0, #1
d0080f82:	25e4      	movs	r5, #228	; 0xe4
d0080f84:	0849      	lsrs	r1, r1, #1
d0080f86:	0976      	lsrs	r6, r6, #5
d0080f88:	fb05 f000 	mul.w	r0, r5, r0
d0080f8c:	4d10      	ldr	r5, [pc, #64]	; (d0080fd0 <main+0x874>)
d0080f8e:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d0080f92:	e021      	b.n	d0080fd8 <main+0x87c>
d0080f94:	d008a960 	.word	0xd008a960
d0080f98:	d008aae0 	.word	0xd008aae0
d0080f9c:	d008aae4 	.word	0xd008aae4
d0080fa0:	d008aa28 	.word	0xd008aa28
d0080fa4:	d008aaa0 	.word	0xd008aaa0
d0080fa8:	d008a94e 	.word	0xd008a94e
d0080fac:	d0084cc0 	.word	0xd0084cc0
d0080fb0:	d008a94a 	.word	0xd008a94a
d0080fb4:	d008a9ea 	.word	0xd008a9ea
d0080fb8:	d008a850 	.word	0xd008a850
d0080fbc:	41c64e6d 	.word	0x41c64e6d
d0080fc0:	aaaaaaab 	.word	0xaaaaaaab
d0080fc4:	094f2095 	.word	0x094f2095
d0080fc8:	f0f0f0f1 	.word	0xf0f0f0f1
d0080fcc:	08fb823f 	.word	0x08fb823f
d0080fd0:	1b4e81b5 	.word	0x1b4e81b5
d0080fd4:	d008a9ec 	.word	0xd008a9ec
d0080fd8:	fba5 7509 	umull	r7, r5, r5, r9
d0080fdc:	ebc0 401e 	rsb	r0, r0, lr, lsr #16
d0080fe0:	eb06 1606 	add.w	r6, r6, r6, lsl #4
d0080fe4:	9f0d      	ldr	r7, [sp, #52]	; 0x34
d0080fe6:	092d      	lsrs	r5, r5, #4
d0080fe8:	f04f 0e96 	mov.w	lr, #150	; 0x96
d0080fec:	1a79      	subs	r1, r7, r1
d0080fee:	ebac 0646 	sub.w	r6, ip, r6, lsl #1
d0080ff2:	fb0e 9515 	mls	r5, lr, r5, r9
d0080ff6:	302a      	adds	r0, #42	; 0x2a
d0080ff8:	3101      	adds	r1, #1
d0080ffa:	360a      	adds	r6, #10
d0080ffc:	b212      	sxth	r2, r2
d0080ffe:	355a      	adds	r5, #90	; 0x5a
d0081000:	f88a 1020 	strb.w	r1, [sl, #32]
d0081004:	f88a 601f 	strb.w	r6, [sl, #31]
d0081008:	f8aa 5022 	strh.w	r5, [sl, #34]	; 0x22
d008100c:	f8aa 001c 	strh.w	r0, [sl, #28]
d0081010:	f8aa 2018 	strh.w	r2, [sl, #24]
d0081014:	429a      	cmp	r2, r3
d0081016:	f281 86ad 	bge.w	d0082d74 <main+0x2618>
d008101a:	9904      	ldr	r1, [sp, #16]
d008101c:	4291      	cmp	r1, r2
d008101e:	f281 86a9 	bge.w	d0082d74 <main+0x2618>
d0081022:	f04f 0b02 	mov.w	fp, #2
d0081026:	f89a 102a 	ldrb.w	r1, [sl, #42]	; 0x2a
d008102a:	f89a 002c 	ldrb.w	r0, [sl, #44]	; 0x2c
d008102e:	f8ba 3024 	ldrh.w	r3, [sl, #36]	; 0x24
d0081032:	3101      	adds	r1, #1
d0081034:	f89a 502b 	ldrb.w	r5, [sl, #43]	; 0x2b
d0081038:	f001 013f 	and.w	r1, r1, #63	; 0x3f
d008103c:	1a1b      	subs	r3, r3, r0
d008103e:	48cd      	ldr	r0, [pc, #820]	; (d0081374 <main+0xc18>)
d0081040:	b21b      	sxth	r3, r3
d0081042:	f88a 102a 	strb.w	r1, [sl, #42]	; 0x2a
d0081046:	5640      	ldrsb	r0, [r0, r1]
d0081048:	f8aa 3024 	strh.w	r3, [sl, #36]	; 0x24
d008104c:	fb10 f005 	smulbb	r0, r0, r5
d0081050:	f8ba 5028 	ldrh.w	r5, [sl, #40]	; 0x28
d0081054:	2800      	cmp	r0, #0
d0081056:	bfb8      	it	lt
d0081058:	301f      	addlt	r0, #31
d008105a:	f113 0f20 	cmn.w	r3, #32
d008105e:	eb05 1060 	add.w	r0, r5, r0, asr #5
d0081062:	b201      	sxth	r1, r0
d0081064:	b280      	uxth	r0, r0
d0081066:	9110      	str	r1, [sp, #64]	; 0x40
d0081068:	9013      	str	r0, [sp, #76]	; 0x4c
d008106a:	f8aa 1026 	strh.w	r1, [sl, #38]	; 0x26
d008106e:	da5d      	bge.n	d008112c <main+0x9d0>
d0081070:	f243 0339 	movw	r3, #12345	; 0x3039
d0081074:	4fc0      	ldr	r7, [pc, #768]	; (d0081378 <main+0xc1c>)
d0081076:	9805      	ldr	r0, [sp, #20]
d0081078:	463d      	mov	r5, r7
d008107a:	49c0      	ldr	r1, [pc, #768]	; (d008137c <main+0xc20>)
d008107c:	fb07 3900 	mla	r9, r7, r0, r3
d0081080:	48bf      	ldr	r0, [pc, #764]	; (d0081380 <main+0xc24>)
d0081082:	fb07 3e09 	mla	lr, r7, r9, r3
d0081086:	ea4f 4c99 	mov.w	ip, r9, lsr #18
d008108a:	fb07 360e 	mla	r6, r7, lr, r3
d008108e:	fba0 c00c 	umull	ip, r0, r0, ip
d0081092:	fb07 3706 	mla	r7, r7, r6, r3
d0081096:	f3c6 4605 	ubfx	r6, r6, #16, #6
d008109a:	0840      	lsrs	r0, r0, #1
d008109c:	ea4f 4c17 	mov.w	ip, r7, lsr #16
d00810a0:	fb05 3707 	mla	r7, r5, r7, r3
d00810a4:	f88a 602a 	strb.w	r6, [sl, #42]	; 0x2a
d00810a8:	fb05 3507 	mla	r5, r5, r7, r3
d00810ac:	0c3f      	lsrs	r7, r7, #16
d00810ae:	23dc      	movs	r3, #220	; 0xdc
d00810b0:	4eb4      	ldr	r6, [pc, #720]	; (d0081384 <main+0xc28>)
d00810b2:	970d      	str	r7, [sp, #52]	; 0x34
d00810b4:	fb03 f300 	mul.w	r3, r3, r0
d00810b8:	4638      	mov	r0, r7
d00810ba:	fba6 760c 	umull	r7, r6, r6, ip
d00810be:	4fb2      	ldr	r7, [pc, #712]	; (d0081388 <main+0xc2c>)
d00810c0:	fba1 0100 	umull	r0, r1, r1, r0
d00810c4:	ea4f 409e 	mov.w	r0, lr, lsr #18
d00810c8:	ebc3 4319 	rsb	r3, r3, r9, lsr #16
d00810cc:	9505      	str	r5, [sp, #20]
d00810ce:	fba7 7000 	umull	r7, r0, r7, r0
d00810d2:	4fae      	ldr	r7, [pc, #696]	; (d008138c <main+0xc30>)
d00810d4:	ea4f 4915 	mov.w	r9, r5, lsr #16
d00810d8:	f503 73fc 	add.w	r3, r3, #504	; 0x1f8
d00810dc:	603d      	str	r5, [r7, #0]
d00810de:	0840      	lsrs	r0, r0, #1
d00810e0:	25e4      	movs	r5, #228	; 0xe4
d00810e2:	0849      	lsrs	r1, r1, #1
d00810e4:	0976      	lsrs	r6, r6, #5
d00810e6:	fb05 f000 	mul.w	r0, r5, r0
d00810ea:	4da9      	ldr	r5, [pc, #676]	; (d0081390 <main+0xc34>)
d00810ec:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d00810f0:	fba5 7509 	umull	r7, r5, r5, r9
d00810f4:	ebc0 401e 	rsb	r0, r0, lr, lsr #16
d00810f8:	eb06 1606 	add.w	r6, r6, r6, lsl #4
d00810fc:	9f0d      	ldr	r7, [sp, #52]	; 0x34
d00810fe:	092d      	lsrs	r5, r5, #4
d0081100:	f04f 0e96 	mov.w	lr, #150	; 0x96
d0081104:	1a79      	subs	r1, r7, r1
d0081106:	ebac 0646 	sub.w	r6, ip, r6, lsl #1
d008110a:	fb0e 9515 	mls	r5, lr, r5, r9
d008110e:	302a      	adds	r0, #42	; 0x2a
d0081110:	3101      	adds	r1, #1
d0081112:	360a      	adds	r6, #10
d0081114:	b21b      	sxth	r3, r3
d0081116:	355a      	adds	r5, #90	; 0x5a
d0081118:	f88a 102c 	strb.w	r1, [sl, #44]	; 0x2c
d008111c:	f88a 602b 	strb.w	r6, [sl, #43]	; 0x2b
d0081120:	f8aa 502e 	strh.w	r5, [sl, #46]	; 0x2e
d0081124:	f8aa 0028 	strh.w	r0, [sl, #40]	; 0x28
d0081128:	f8aa 3024 	strh.w	r3, [sl, #36]	; 0x24
d008112c:	9904      	ldr	r1, [sp, #16]
d008112e:	4299      	cmp	r1, r3
d0081130:	f281 861d 	bge.w	d0082d6e <main+0x2612>
d0081134:	4293      	cmp	r3, r2
d0081136:	f281 861a 	bge.w	d0082d6e <main+0x2612>
d008113a:	f04f 0b03 	mov.w	fp, #3
d008113e:	f89a 1036 	ldrb.w	r1, [sl, #54]	; 0x36
d0081142:	f89a 0038 	ldrb.w	r0, [sl, #56]	; 0x38
d0081146:	f8ba 2030 	ldrh.w	r2, [sl, #48]	; 0x30
d008114a:	3101      	adds	r1, #1
d008114c:	f89a 5037 	ldrb.w	r5, [sl, #55]	; 0x37
d0081150:	f001 013f 	and.w	r1, r1, #63	; 0x3f
d0081154:	1a12      	subs	r2, r2, r0
d0081156:	4887      	ldr	r0, [pc, #540]	; (d0081374 <main+0xc18>)
d0081158:	b212      	sxth	r2, r2
d008115a:	f88a 1036 	strb.w	r1, [sl, #54]	; 0x36
d008115e:	5640      	ldrsb	r0, [r0, r1]
d0081160:	f8aa 2030 	strh.w	r2, [sl, #48]	; 0x30
d0081164:	fb10 f005 	smulbb	r0, r0, r5
d0081168:	f8ba 5034 	ldrh.w	r5, [sl, #52]	; 0x34
d008116c:	2800      	cmp	r0, #0
d008116e:	bfb8      	it	lt
d0081170:	301f      	addlt	r0, #31
d0081172:	f112 0f20 	cmn.w	r2, #32
d0081176:	eb05 1060 	add.w	r0, r5, r0, asr #5
d008117a:	b201      	sxth	r1, r0
d008117c:	b280      	uxth	r0, r0
d008117e:	910d      	str	r1, [sp, #52]	; 0x34
d0081180:	9014      	str	r0, [sp, #80]	; 0x50
d0081182:	f8aa 1032 	strh.w	r1, [sl, #50]	; 0x32
d0081186:	da5d      	bge.n	d0081244 <main+0xae8>
d0081188:	f243 0239 	movw	r2, #12345	; 0x3039
d008118c:	4f7a      	ldr	r7, [pc, #488]	; (d0081378 <main+0xc1c>)
d008118e:	9905      	ldr	r1, [sp, #20]
d0081190:	463e      	mov	r6, r7
d0081192:	4d7b      	ldr	r5, [pc, #492]	; (d0081380 <main+0xc24>)
d0081194:	fb07 2e01 	mla	lr, r7, r1, r2
d0081198:	4878      	ldr	r0, [pc, #480]	; (d008137c <main+0xc20>)
d008119a:	fb07 2c0e 	mla	ip, r7, lr, r2
d008119e:	ea4f 499e 	mov.w	r9, lr, lsr #18
d00811a2:	fb07 210c 	mla	r1, r7, ip, r2
d00811a6:	fba5 9509 	umull	r9, r5, r5, r9
d00811aa:	fb07 2701 	mla	r7, r7, r1, r2
d00811ae:	f3c1 4105 	ubfx	r1, r1, #16, #6
d00811b2:	086d      	lsrs	r5, r5, #1
d00811b4:	ea4f 4917 	mov.w	r9, r7, lsr #16
d00811b8:	fb06 2707 	mla	r7, r6, r7, r2
d00811bc:	f88a 1036 	strb.w	r1, [sl, #54]	; 0x36
d00811c0:	fb06 2607 	mla	r6, r6, r7, r2
d00811c4:	0c3f      	lsrs	r7, r7, #16
d00811c6:	22dc      	movs	r2, #220	; 0xdc
d00811c8:	496e      	ldr	r1, [pc, #440]	; (d0081384 <main+0xc28>)
d00811ca:	9715      	str	r7, [sp, #84]	; 0x54
d00811cc:	fb02 f205 	mul.w	r2, r2, r5
d00811d0:	463d      	mov	r5, r7
d00811d2:	fba1 7109 	umull	r7, r1, r1, r9
d00811d6:	4f6c      	ldr	r7, [pc, #432]	; (d0081388 <main+0xc2c>)
d00811d8:	fba0 5005 	umull	r5, r0, r0, r5
d00811dc:	ea4f 459c 	mov.w	r5, ip, lsr #18
d00811e0:	ebc2 421e 	rsb	r2, r2, lr, lsr #16
d00811e4:	9605      	str	r6, [sp, #20]
d00811e6:	fba7 7505 	umull	r7, r5, r7, r5
d00811ea:	4f68      	ldr	r7, [pc, #416]	; (d008138c <main+0xc30>)
d00811ec:	ea4f 4e16 	mov.w	lr, r6, lsr #16
d00811f0:	f502 72fc 	add.w	r2, r2, #504	; 0x1f8
d00811f4:	603e      	str	r6, [r7, #0]
d00811f6:	086d      	lsrs	r5, r5, #1
d00811f8:	26e4      	movs	r6, #228	; 0xe4
d00811fa:	0840      	lsrs	r0, r0, #1
d00811fc:	0949      	lsrs	r1, r1, #5
d00811fe:	fb06 f505 	mul.w	r5, r6, r5
d0081202:	4e63      	ldr	r6, [pc, #396]	; (d0081390 <main+0xc34>)
d0081204:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0081208:	fba6 760e 	umull	r7, r6, r6, lr
d008120c:	ebc5 451c 	rsb	r5, r5, ip, lsr #16
d0081210:	eb01 1101 	add.w	r1, r1, r1, lsl #4
d0081214:	9f15      	ldr	r7, [sp, #84]	; 0x54
d0081216:	0936      	lsrs	r6, r6, #4
d0081218:	f04f 0c96 	mov.w	ip, #150	; 0x96
d008121c:	1a38      	subs	r0, r7, r0
d008121e:	eba9 0141 	sub.w	r1, r9, r1, lsl #1
d0081222:	fb0c e616 	mls	r6, ip, r6, lr
d0081226:	352a      	adds	r5, #42	; 0x2a
d0081228:	3001      	adds	r0, #1
d008122a:	310a      	adds	r1, #10
d008122c:	b212      	sxth	r2, r2
d008122e:	365a      	adds	r6, #90	; 0x5a
d0081230:	f88a 0038 	strb.w	r0, [sl, #56]	; 0x38
d0081234:	f88a 1037 	strb.w	r1, [sl, #55]	; 0x37
d0081238:	f8aa 603a 	strh.w	r6, [sl, #58]	; 0x3a
d008123c:	f8aa 5034 	strh.w	r5, [sl, #52]	; 0x34
d0081240:	f8aa 2030 	strh.w	r2, [sl, #48]	; 0x30
d0081244:	429a      	cmp	r2, r3
d0081246:	f281 859b 	bge.w	d0082d80 <main+0x2624>
d008124a:	9b04      	ldr	r3, [sp, #16]
d008124c:	4293      	cmp	r3, r2
d008124e:	f281 8597 	bge.w	d0082d80 <main+0x2624>
d0081252:	f04f 0b04 	mov.w	fp, #4
d0081256:	9b06      	ldr	r3, [sp, #24]
d0081258:	4a46      	ldr	r2, [pc, #280]	; (d0081374 <main+0xc18>)
d008125a:	f3c3 0385 	ubfx	r3, r3, #2, #6
d008125e:	56d2      	ldrsb	r2, [r2, r3]
d0081260:	4b4c      	ldr	r3, [pc, #304]	; (d0081394 <main+0xc38>)
d0081262:	f9b3 9000 	ldrsh.w	r9, [r3]
d0081266:	ebc2 03c2 	rsb	r3, r2, r2, lsl #3
d008126a:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d008126e:	fa1f f589 	uxth.w	r5, r9
d0081272:	0052      	lsls	r2, r2, #1
d0081274:	f105 0308 	add.w	r3, r5, #8
d0081278:	bf48      	it	mi
d008127a:	321f      	addmi	r2, #31
d008127c:	b21b      	sxth	r3, r3
d008127e:	1152      	asrs	r2, r2, #5
d0081280:	9306      	str	r3, [sp, #24]
d0081282:	3278      	adds	r2, #120	; 0x78
d0081284:	4b44      	ldr	r3, [pc, #272]	; (d0081398 <main+0xc3c>)
d0081286:	b212      	sxth	r2, r2
d0081288:	801a      	strh	r2, [r3, #0]
d008128a:	9b07      	ldr	r3, [sp, #28]
d008128c:	2b00      	cmp	r3, #0
d008128e:	f001 8112 	beq.w	d00824b6 <main+0x1d5a>
d0081292:	eb0b 0b4b 	add.w	fp, fp, fp, lsl #1
d0081296:	eb0a 0b8b 	add.w	fp, sl, fp, lsl #2
d008129a:	f8bb 2002 	ldrh.w	r2, [fp, #2]
d008129e:	3207      	adds	r2, #7
d00812a0:	b212      	sxth	r2, r2
d00812a2:	9904      	ldr	r1, [sp, #16]
d00812a4:	f1a5 0c2a 	sub.w	ip, r5, #42	; 0x2a
d00812a8:	4b3c      	ldr	r3, [pc, #240]	; (d008139c <main+0xc40>)
d00812aa:	f105 072a 	add.w	r7, r5, #42	; 0x2a
d00812ae:	f101 0e5e 	add.w	lr, r1, #94	; 0x5e
d00812b2:	fa0f fc8c 	sxth.w	ip, ip
d00812b6:	f103 0078 	add.w	r0, r3, #120	; 0x78
d00812ba:	b23f      	sxth	r7, r7
d00812bc:	468b      	mov	fp, r1
d00812be:	7a19      	ldrb	r1, [r3, #8]
d00812c0:	b1b1      	cbz	r1, d00812f0 <main+0xb94>
d00812c2:	f9b3 1000 	ldrsh.w	r1, [r3]
d00812c6:	ebbb 1f21 	cmp.w	fp, r1, asr #4
d00812ca:	ea4f 1621 	mov.w	r6, r1, asr #4
d00812ce:	da0f      	bge.n	d00812f0 <main+0xb94>
d00812d0:	45b6      	cmp	lr, r6
d00812d2:	db0d      	blt.n	d00812f0 <main+0xb94>
d00812d4:	f9b3 1002 	ldrsh.w	r1, [r3, #2]
d00812d8:	9e06      	ldr	r6, [sp, #24]
d00812da:	ebc6 1621 	rsb	r6, r6, r1, asr #4
d00812de:	1109      	asrs	r1, r1, #4
d00812e0:	360f      	adds	r6, #15
d00812e2:	2e1e      	cmp	r6, #30
d00812e4:	d804      	bhi.n	d00812f0 <main+0xb94>
d00812e6:	9e06      	ldr	r6, [sp, #24]
d00812e8:	428e      	cmp	r6, r1
d00812ea:	bfd4      	ite	le
d00812ec:	4662      	movle	r2, ip
d00812ee:	463a      	movgt	r2, r7
d00812f0:	330a      	adds	r3, #10
d00812f2:	4298      	cmp	r0, r3
d00812f4:	d1e3      	bne.n	d00812be <main+0xb62>
d00812f6:	4b28      	ldr	r3, [pc, #160]	; (d0081398 <main+0xc3c>)
d00812f8:	801a      	strh	r2, [r3, #0]
d00812fa:	2a29      	cmp	r2, #41	; 0x29
d00812fc:	f301 80d4 	bgt.w	d00824a8 <main+0x1d4c>
d0081300:	222a      	movs	r2, #42	; 0x2a
d0081302:	4925      	ldr	r1, [pc, #148]	; (d0081398 <main+0xc3c>)
d0081304:	2328      	movs	r3, #40	; 0x28
d0081306:	800a      	strh	r2, [r1, #0]
d0081308:	4599      	cmp	r9, r3
d008130a:	f281 80c5 	bge.w	d0082498 <main+0x1d3c>
d008130e:	1cab      	adds	r3, r5, #2
d0081310:	350a      	adds	r5, #10
d0081312:	fa0f f983 	sxth.w	r9, r3
d0081316:	b22b      	sxth	r3, r5
d0081318:	9306      	str	r3, [sp, #24]
d008131a:	4b1e      	ldr	r3, [pc, #120]	; (d0081394 <main+0xc38>)
d008131c:	f8a3 9000 	strh.w	r9, [r3]
d0081320:	4a1f      	ldr	r2, [pc, #124]	; (d00813a0 <main+0xc44>)
d0081322:	7813      	ldrb	r3, [r2, #0]
d0081324:	2b00      	cmp	r3, #0
d0081326:	f001 80cc 	beq.w	d00824c2 <main+0x1d66>
d008132a:	3b01      	subs	r3, #1
d008132c:	7013      	strb	r3, [r2, #0]
d008132e:	4b1d      	ldr	r3, [pc, #116]	; (d00813a4 <main+0xc48>)
d0081330:	f893 e000 	ldrb.w	lr, [r3]
d0081334:	f1be 0f00 	cmp.w	lr, #0
d0081338:	d005      	beq.n	d0081346 <main+0xbea>
d008133a:	f10e 31ff 	add.w	r1, lr, #4294967295	; 0xffffffff
d008133e:	fa5f fe81 	uxtb.w	lr, r1
d0081342:	f883 e000 	strb.w	lr, [r3]
d0081346:	4e18      	ldr	r6, [pc, #96]	; (d00813a8 <main+0xc4c>)
d0081348:	7833      	ldrb	r3, [r6, #0]
d008134a:	2b00      	cmp	r3, #0
d008134c:	f001 804f 	beq.w	d00823ee <main+0x1c92>
d0081350:	3b01      	subs	r3, #1
d0081352:	9a04      	ldr	r2, [sp, #16]
d0081354:	b2db      	uxtb	r3, r3
d0081356:	2a1d      	cmp	r2, #29
d0081358:	7033      	strb	r3, [r6, #0]
d008135a:	dd02      	ble.n	d0081362 <main+0xc06>
d008135c:	2b00      	cmp	r3, #0
d008135e:	f001 804a 	beq.w	d00823f6 <main+0x1c9a>
d0081362:	4b12      	ldr	r3, [pc, #72]	; (d00813ac <main+0xc50>)
d0081364:	4d12      	ldr	r5, [pc, #72]	; (d00813b0 <main+0xc54>)
d0081366:	681b      	ldr	r3, [r3, #0]
d0081368:	f105 0b30 	add.w	fp, r5, #48	; 0x30
d008136c:	9508      	str	r5, [sp, #32]
d008136e:	9307      	str	r3, [sp, #28]
d0081370:	462b      	mov	r3, r5
d0081372:	e01f      	b.n	d00813b4 <main+0xc58>
d0081374:	d008a850 	.word	0xd008a850
d0081378:	41c64e6d 	.word	0x41c64e6d
d008137c:	aaaaaaab 	.word	0xaaaaaaab
d0081380:	094f2095 	.word	0x094f2095
d0081384:	f0f0f0f1 	.word	0xf0f0f0f1
d0081388:	08fb823f 	.word	0x08fb823f
d008138c:	d008a960 	.word	0xd008a960
d0081390:	1b4e81b5 	.word	0x1b4e81b5
d0081394:	d008a94c 	.word	0xd008a94c
d0081398:	d008a948 	.word	0xd008a948
d008139c:	d008aa28 	.word	0xd008aa28
d00813a0:	d008ab25 	.word	0xd008ab25
d00813a4:	d008ab24 	.word	0xd008ab24
d00813a8:	d008a940 	.word	0xd008a940
d00813ac:	d008ab18 	.word	0xd008ab18
d00813b0:	d008aae4 	.word	0xd008aae4
d00813b4:	940a      	str	r4, [sp, #40]	; 0x28
d00813b6:	e006      	b.n	d00813c6 <main+0xc6a>
d00813b8:	f04f 0200 	mov.w	r2, #0
d00813bc:	715a      	strb	r2, [r3, #5]
d00813be:	3306      	adds	r3, #6
d00813c0:	459b      	cmp	fp, r3
d00813c2:	f000 8117 	beq.w	d00815f4 <main+0xe98>
d00813c6:	795a      	ldrb	r2, [r3, #5]
d00813c8:	2a00      	cmp	r2, #0
d00813ca:	d0f8      	beq.n	d00813be <main+0xc62>
d00813cc:	791e      	ldrb	r6, [r3, #4]
d00813ce:	2e01      	cmp	r6, #1
d00813d0:	f240 8108 	bls.w	d00815e4 <main+0xe88>
d00813d4:	2e03      	cmp	r6, #3
d00813d6:	f200 80eb 	bhi.w	d00815b0 <main+0xe54>
d00813da:	2703      	movs	r7, #3
d00813dc:	2001      	movs	r0, #1
d00813de:	f04f 0c09 	mov.w	ip, #9
d00813e2:	881a      	ldrh	r2, [r3, #0]
d00813e4:	8859      	ldrh	r1, [r3, #2]
d00813e6:	320a      	adds	r2, #10
d00813e8:	1a09      	subs	r1, r1, r0
d00813ea:	b212      	sxth	r2, r2
d00813ec:	b209      	sxth	r1, r1
d00813ee:	801a      	strh	r2, [r3, #0]
d00813f0:	3601      	adds	r6, #1
d00813f2:	711e      	strb	r6, [r3, #4]
d00813f4:	f5b2 7ff0 	cmp.w	r2, #480	; 0x1e0
d00813f8:	dcde      	bgt.n	d00813b8 <main+0xc5c>
d00813fa:	f9ba 0000 	ldrsh.w	r0, [sl]
d00813fe:	f100 061f 	add.w	r6, r0, #31
d0081402:	4296      	cmp	r6, r2
d0081404:	db0c      	blt.n	d0081420 <main+0xcc4>
d0081406:	eb0c 0602 	add.w	r6, ip, r2
d008140a:	42b0      	cmp	r0, r6
d008140c:	da08      	bge.n	d0081420 <main+0xcc4>
d008140e:	9c0c      	ldr	r4, [sp, #48]	; 0x30
d0081410:	4626      	mov	r6, r4
d0081412:	361f      	adds	r6, #31
d0081414:	428e      	cmp	r6, r1
d0081416:	db03      	blt.n	d0081420 <main+0xcc4>
d0081418:	187e      	adds	r6, r7, r1
d008141a:	42b4      	cmp	r4, r6
d008141c:	f2c1 864b 	blt.w	d00830b6 <main+0x295a>
d0081420:	f9ba 000c 	ldrsh.w	r0, [sl, #12]
d0081424:	f100 061f 	add.w	r6, r0, #31
d0081428:	42b2      	cmp	r2, r6
d008142a:	dc0c      	bgt.n	d0081446 <main+0xcea>
d008142c:	eb0c 0602 	add.w	r6, ip, r2
d0081430:	42b0      	cmp	r0, r6
d0081432:	da08      	bge.n	d0081446 <main+0xcea>
d0081434:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d0081436:	4626      	mov	r6, r4
d0081438:	361f      	adds	r6, #31
d008143a:	428e      	cmp	r6, r1
d008143c:	db03      	blt.n	d0081446 <main+0xcea>
d008143e:	187e      	adds	r6, r7, r1
d0081440:	42b4      	cmp	r4, r6
d0081442:	f2c1 863c 	blt.w	d00830be <main+0x2962>
d0081446:	f9ba 0018 	ldrsh.w	r0, [sl, #24]
d008144a:	f100 061f 	add.w	r6, r0, #31
d008144e:	42b2      	cmp	r2, r6
d0081450:	dc0c      	bgt.n	d008146c <main+0xd10>
d0081452:	eb0c 0602 	add.w	r6, ip, r2
d0081456:	42b0      	cmp	r0, r6
d0081458:	da08      	bge.n	d008146c <main+0xd10>
d008145a:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
d008145c:	4626      	mov	r6, r4
d008145e:	361f      	adds	r6, #31
d0081460:	428e      	cmp	r6, r1
d0081462:	db03      	blt.n	d008146c <main+0xd10>
d0081464:	187e      	adds	r6, r7, r1
d0081466:	42b4      	cmp	r4, r6
d0081468:	f2c1 862d 	blt.w	d00830c6 <main+0x296a>
d008146c:	f9ba 0024 	ldrsh.w	r0, [sl, #36]	; 0x24
d0081470:	f100 061f 	add.w	r6, r0, #31
d0081474:	42b2      	cmp	r2, r6
d0081476:	dc0c      	bgt.n	d0081492 <main+0xd36>
d0081478:	eb0c 0602 	add.w	r6, ip, r2
d008147c:	42b0      	cmp	r0, r6
d008147e:	da08      	bge.n	d0081492 <main+0xd36>
d0081480:	9c10      	ldr	r4, [sp, #64]	; 0x40
d0081482:	4626      	mov	r6, r4
d0081484:	361f      	adds	r6, #31
d0081486:	428e      	cmp	r6, r1
d0081488:	db03      	blt.n	d0081492 <main+0xd36>
d008148a:	187e      	adds	r6, r7, r1
d008148c:	42b4      	cmp	r4, r6
d008148e:	f2c1 861e 	blt.w	d00830ce <main+0x2972>
d0081492:	f9ba 0030 	ldrsh.w	r0, [sl, #48]	; 0x30
d0081496:	f100 061f 	add.w	r6, r0, #31
d008149a:	42b2      	cmp	r2, r6
d008149c:	dc8f      	bgt.n	d00813be <main+0xc62>
d008149e:	4462      	add	r2, ip
d00814a0:	4290      	cmp	r0, r2
d00814a2:	da8c      	bge.n	d00813be <main+0xc62>
d00814a4:	9c0d      	ldr	r4, [sp, #52]	; 0x34
d00814a6:	4622      	mov	r2, r4
d00814a8:	321f      	adds	r2, #31
d00814aa:	428a      	cmp	r2, r1
d00814ac:	db87      	blt.n	d00813be <main+0xc62>
d00814ae:	4439      	add	r1, r7
d00814b0:	428c      	cmp	r4, r1
d00814b2:	da84      	bge.n	d00813be <main+0xc62>
d00814b4:	9e0d      	ldr	r6, [sp, #52]	; 0x34
d00814b6:	2104      	movs	r1, #4
d00814b8:	9f07      	ldr	r7, [sp, #28]
d00814ba:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
d00814bc:	3707      	adds	r7, #7
d00814be:	79a2      	ldrb	r2, [r4, #6]
d00814c0:	9707      	str	r7, [sp, #28]
d00814c2:	f04f 0700 	mov.w	r7, #0
d00814c6:	715f      	strb	r7, [r3, #5]
d00814c8:	2a00      	cmp	r2, #0
d00814ca:	f001 85c0 	beq.w	d008304e <main+0x28f2>
d00814ce:	7ba2      	ldrb	r2, [r4, #14]
d00814d0:	2a00      	cmp	r2, #0
d00814d2:	f001 85bb 	beq.w	d008304c <main+0x28f0>
d00814d6:	7da2      	ldrb	r2, [r4, #22]
d00814d8:	2a00      	cmp	r2, #0
d00814da:	f001 8711 	beq.w	d0083300 <main+0x2ba4>
d00814de:	7fa2      	ldrb	r2, [r4, #30]
d00814e0:	2a00      	cmp	r2, #0
d00814e2:	f001 8711 	beq.w	d0083308 <main+0x2bac>
d00814e6:	f894 2026 	ldrb.w	r2, [r4, #38]	; 0x26
d00814ea:	2a00      	cmp	r2, #0
d00814ec:	f001 8714 	beq.w	d0083318 <main+0x2bbc>
d00814f0:	f894 202e 	ldrb.w	r2, [r4, #46]	; 0x2e
d00814f4:	2a00      	cmp	r2, #0
d00814f6:	f001 870d 	beq.w	d0083314 <main+0x2bb8>
d00814fa:	f894 2036 	ldrb.w	r2, [r4, #54]	; 0x36
d00814fe:	2a00      	cmp	r2, #0
d0081500:	f001 8706 	beq.w	d0083310 <main+0x2bb4>
d0081504:	f894 203e 	ldrb.w	r2, [r4, #62]	; 0x3e
d0081508:	2a00      	cmp	r2, #0
d008150a:	f001 86ff 	beq.w	d008330c <main+0x2bb0>
d008150e:	9a05      	ldr	r2, [sp, #20]
d0081510:	f243 0739 	movw	r7, #12345	; 0x3039
d0081514:	4610      	mov	r0, r2
d0081516:	4a36      	ldr	r2, [pc, #216]	; (d00815f0 <main+0xe94>)
d0081518:	fb02 7600 	mla	r6, r2, r0, r7
d008151c:	200c      	movs	r0, #12
d008151e:	fb00 f001 	mul.w	r0, r0, r1
d0081522:	4611      	mov	r1, r2
d0081524:	fb02 7206 	mla	r2, r2, r6, r7
d0081528:	ea4f 4c16 	mov.w	ip, r6, lsr #16
d008152c:	460c      	mov	r4, r1
d008152e:	9011      	str	r0, [sp, #68]	; 0x44
d0081530:	fb01 7602 	mla	r6, r1, r2, r7
d0081534:	0c17      	lsrs	r7, r2, #16
d0081536:	f243 0239 	movw	r2, #12345	; 0x3039
d008153a:	4450      	add	r0, sl
d008153c:	9712      	str	r7, [sp, #72]	; 0x48
d008153e:	fb01 2106 	mla	r1, r1, r6, r2
d0081542:	f3c6 4605 	ubfx	r6, r6, #16, #6
d0081546:	fb04 2201 	mla	r2, r4, r1, r2
d008154a:	f3c1 4104 	ubfx	r1, r1, #16, #5
d008154e:	7186      	strb	r6, [r0, #6]
d0081550:	f243 0639 	movw	r6, #12345	; 0x3039
d0081554:	0c17      	lsrs	r7, r2, #16
d0081556:	310c      	adds	r1, #12
d0081558:	fb04 6202 	mla	r2, r4, r2, r6
d008155c:	9113      	str	r1, [sp, #76]	; 0x4c
d008155e:	4614      	mov	r4, r2
d0081560:	9205      	str	r2, [sp, #20]
d0081562:	22e6      	movs	r2, #230	; 0xe6
d0081564:	fbbc f6f2 	udiv	r6, ip, r2
d0081568:	4611      	mov	r1, r2
d008156a:	2203      	movs	r2, #3
d008156c:	fbb7 f2f2 	udiv	r2, r7, r2
d0081570:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0081574:	fb01 c616 	mls	r6, r1, r6, ip
d0081578:	ea4f 4c14 	mov.w	ip, r4, lsr #16
d008157c:	9913      	ldr	r1, [sp, #76]	; 0x4c
d008157e:	24e4      	movs	r4, #228	; 0xe4
d0081580:	1aba      	subs	r2, r7, r2
d0081582:	9f12      	ldr	r7, [sp, #72]	; 0x48
d0081584:	f506 7600 	add.w	r6, r6, #512	; 0x200
d0081588:	71c1      	strb	r1, [r0, #7]
d008158a:	3201      	adds	r2, #1
d008158c:	fbb7 f1f4 	udiv	r1, r7, r4
d0081590:	fb04 7111 	mls	r1, r4, r1, r7
d0081594:	9c11      	ldr	r4, [sp, #68]	; 0x44
d0081596:	7202      	strb	r2, [r0, #8]
d0081598:	f82a 6004 	strh.w	r6, [sl, r4]
d008159c:	24aa      	movs	r4, #170	; 0xaa
d008159e:	312a      	adds	r1, #42	; 0x2a
d00815a0:	fbbc f2f4 	udiv	r2, ip, r4
d00815a4:	fb04 c212 	mls	r2, r4, r2, ip
d00815a8:	8081      	strh	r1, [r0, #4]
d00815aa:	3264      	adds	r2, #100	; 0x64
d00815ac:	8142      	strh	r2, [r0, #10]
d00815ae:	e706      	b.n	d00813be <main+0xc62>
d00815b0:	1f31      	subs	r1, r6, #4
d00815b2:	881a      	ldrh	r2, [r3, #0]
d00815b4:	8858      	ldrh	r0, [r3, #2]
d00815b6:	f04f 0c0b 	mov.w	ip, #11
d00815ba:	1089      	asrs	r1, r1, #2
d00815bc:	320a      	adds	r2, #10
d00815be:	3102      	adds	r1, #2
d00815c0:	b212      	sxth	r2, r2
d00815c2:	290c      	cmp	r1, #12
d00815c4:	801a      	strh	r2, [r3, #0]
d00815c6:	bfa8      	it	ge
d00815c8:	210c      	movge	r1, #12
d00815ca:	2eff      	cmp	r6, #255	; 0xff
d00815cc:	b289      	uxth	r1, r1
d00815ce:	ea4f 0741 	mov.w	r7, r1, lsl #1
d00815d2:	eba0 0101 	sub.w	r1, r0, r1
d00815d6:	f107 0701 	add.w	r7, r7, #1
d00815da:	b209      	sxth	r1, r1
d00815dc:	b2bf      	uxth	r7, r7
d00815de:	f43f af09 	beq.w	d00813f4 <main+0xc98>
d00815e2:	e705      	b.n	d00813f0 <main+0xc94>
d00815e4:	2701      	movs	r7, #1
d00815e6:	2000      	movs	r0, #0
d00815e8:	f04f 0c07 	mov.w	ip, #7
d00815ec:	e6f9      	b.n	d00813e2 <main+0xc86>
d00815ee:	bf00      	nop
d00815f0:	41c64e6d 	.word	0x41c64e6d
d00815f4:	9904      	ldr	r1, [sp, #16]
d00815f6:	f64f 70f1 	movw	r0, #65521	; 0xfff1
d00815fa:	9b07      	ldr	r3, [sp, #28]
d00815fc:	2200      	movs	r2, #0
d00815fe:	f8df a2b8 	ldr.w	sl, [pc, #696]	; d00818b8 <main+0x115c>
d0081602:	1a40      	subs	r0, r0, r1
d0081604:	9c0a      	ldr	r4, [sp, #40]	; 0x28
d0081606:	49a9      	ldr	r1, [pc, #676]	; (d00818ac <main+0x1150>)
d0081608:	4656      	mov	r6, sl
d008160a:	7a27      	ldrb	r7, [r4, #8]
d008160c:	600b      	str	r3, [r1, #0]
d008160e:	4653      	mov	r3, sl
d0081610:	9007      	str	r0, [sp, #28]
d0081612:	8959      	ldrh	r1, [r3, #10]
d0081614:	2900      	cmp	r1, #0
d0081616:	f040 85c2 	bne.w	d008219e <main+0x1a42>
d008161a:	8819      	ldrh	r1, [r3, #0]
d008161c:	f1a1 006f 	sub.w	r0, r1, #111	; 0x6f
d0081620:	f5b0 7fae 	cmp.w	r0, #348	; 0x15c
d0081624:	f241 8350 	bls.w	d0082cc8 <main+0x256c>
d0081628:	3201      	adds	r2, #1
d008162a:	330c      	adds	r3, #12
d008162c:	2a05      	cmp	r2, #5
d008162e:	d1f0      	bne.n	d0081612 <main+0xeb6>
d0081630:	4b9f      	ldr	r3, [pc, #636]	; (d00818b0 <main+0x1154>)
d0081632:	9a05      	ldr	r2, [sp, #20]
d0081634:	601a      	str	r2, [r3, #0]
d0081636:	f1be 0f00 	cmp.w	lr, #0
d008163a:	f001 822a 	beq.w	d0082a92 <main+0x2336>
d008163e:	7a23      	ldrb	r3, [r4, #8]
d0081640:	b19b      	cbz	r3, d008166a <main+0xf0e>
d0081642:	8863      	ldrh	r3, [r4, #2]
d0081644:	88e1      	ldrh	r1, [r4, #6]
d0081646:	8822      	ldrh	r2, [r4, #0]
d0081648:	440b      	add	r3, r1
d008164a:	88a1      	ldrh	r1, [r4, #4]
d008164c:	b21b      	sxth	r3, r3
d008164e:	440a      	add	r2, r1
d0081650:	1119      	asrs	r1, r3, #4
d0081652:	8063      	strh	r3, [r4, #2]
d0081654:	b213      	sxth	r3, r2
d0081656:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d008165a:	8023      	strh	r3, [r4, #0]
d008165c:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081660:	f201 83b8 	bhi.w	d0082dd4 <main+0x2678>
d0081664:	3320      	adds	r3, #32
d0081666:	f2c1 83b5 	blt.w	d0082dd4 <main+0x2678>
d008166a:	7ca3      	ldrb	r3, [r4, #18]
d008166c:	b19b      	cbz	r3, d0081696 <main+0xf3a>
d008166e:	89a3      	ldrh	r3, [r4, #12]
d0081670:	8a21      	ldrh	r1, [r4, #16]
d0081672:	8962      	ldrh	r2, [r4, #10]
d0081674:	440b      	add	r3, r1
d0081676:	89e1      	ldrh	r1, [r4, #14]
d0081678:	b21b      	sxth	r3, r3
d008167a:	440a      	add	r2, r1
d008167c:	1119      	asrs	r1, r3, #4
d008167e:	81a3      	strh	r3, [r4, #12]
d0081680:	b213      	sxth	r3, r2
d0081682:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081686:	8163      	strh	r3, [r4, #10]
d0081688:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d008168c:	f201 839e 	bhi.w	d0082dcc <main+0x2670>
d0081690:	3320      	adds	r3, #32
d0081692:	f2c1 839b 	blt.w	d0082dcc <main+0x2670>
d0081696:	7f23      	ldrb	r3, [r4, #28]
d0081698:	b19b      	cbz	r3, d00816c2 <main+0xf66>
d008169a:	8ae3      	ldrh	r3, [r4, #22]
d008169c:	8b61      	ldrh	r1, [r4, #26]
d008169e:	8aa2      	ldrh	r2, [r4, #20]
d00816a0:	440b      	add	r3, r1
d00816a2:	8b21      	ldrh	r1, [r4, #24]
d00816a4:	b21b      	sxth	r3, r3
d00816a6:	440a      	add	r2, r1
d00816a8:	1119      	asrs	r1, r3, #4
d00816aa:	82e3      	strh	r3, [r4, #22]
d00816ac:	b213      	sxth	r3, r2
d00816ae:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d00816b2:	82a3      	strh	r3, [r4, #20]
d00816b4:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d00816b8:	f201 8375 	bhi.w	d0082da6 <main+0x264a>
d00816bc:	3320      	adds	r3, #32
d00816be:	f2c1 8372 	blt.w	d0082da6 <main+0x264a>
d00816c2:	f894 3026 	ldrb.w	r3, [r4, #38]	; 0x26
d00816c6:	b19b      	cbz	r3, d00816f0 <main+0xf94>
d00816c8:	8c23      	ldrh	r3, [r4, #32]
d00816ca:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
d00816cc:	8be2      	ldrh	r2, [r4, #30]
d00816ce:	440b      	add	r3, r1
d00816d0:	8c61      	ldrh	r1, [r4, #34]	; 0x22
d00816d2:	b21b      	sxth	r3, r3
d00816d4:	440a      	add	r2, r1
d00816d6:	1119      	asrs	r1, r3, #4
d00816d8:	8423      	strh	r3, [r4, #32]
d00816da:	b213      	sxth	r3, r2
d00816dc:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d00816e0:	83e3      	strh	r3, [r4, #30]
d00816e2:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d00816e6:	f201 8362 	bhi.w	d0082dae <main+0x2652>
d00816ea:	3320      	adds	r3, #32
d00816ec:	f2c1 835f 	blt.w	d0082dae <main+0x2652>
d00816f0:	f894 3030 	ldrb.w	r3, [r4, #48]	; 0x30
d00816f4:	b19b      	cbz	r3, d008171e <main+0xfc2>
d00816f6:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
d00816f8:	8de1      	ldrh	r1, [r4, #46]	; 0x2e
d00816fa:	8d22      	ldrh	r2, [r4, #40]	; 0x28
d00816fc:	440b      	add	r3, r1
d00816fe:	8da1      	ldrh	r1, [r4, #44]	; 0x2c
d0081700:	b21b      	sxth	r3, r3
d0081702:	440a      	add	r2, r1
d0081704:	1119      	asrs	r1, r3, #4
d0081706:	8563      	strh	r3, [r4, #42]	; 0x2a
d0081708:	b213      	sxth	r3, r2
d008170a:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d008170e:	8523      	strh	r3, [r4, #40]	; 0x28
d0081710:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081714:	f201 8350 	bhi.w	d0082db8 <main+0x265c>
d0081718:	3320      	adds	r3, #32
d008171a:	f2c1 834d 	blt.w	d0082db8 <main+0x265c>
d008171e:	f894 303a 	ldrb.w	r3, [r4, #58]	; 0x3a
d0081722:	b19b      	cbz	r3, d008174c <main+0xff0>
d0081724:	8ea3      	ldrh	r3, [r4, #52]	; 0x34
d0081726:	8f21      	ldrh	r1, [r4, #56]	; 0x38
d0081728:	8e62      	ldrh	r2, [r4, #50]	; 0x32
d008172a:	440b      	add	r3, r1
d008172c:	8ee1      	ldrh	r1, [r4, #54]	; 0x36
d008172e:	b21b      	sxth	r3, r3
d0081730:	440a      	add	r2, r1
d0081732:	1119      	asrs	r1, r3, #4
d0081734:	86a3      	strh	r3, [r4, #52]	; 0x34
d0081736:	b213      	sxth	r3, r2
d0081738:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d008173c:	8663      	strh	r3, [r4, #50]	; 0x32
d008173e:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081742:	f201 833e 	bhi.w	d0082dc2 <main+0x2666>
d0081746:	3320      	adds	r3, #32
d0081748:	f2c1 833b 	blt.w	d0082dc2 <main+0x2666>
d008174c:	f894 3044 	ldrb.w	r3, [r4, #68]	; 0x44
d0081750:	b1ab      	cbz	r3, d008177e <main+0x1022>
d0081752:	8fe3      	ldrh	r3, [r4, #62]	; 0x3e
d0081754:	f8b4 1042 	ldrh.w	r1, [r4, #66]	; 0x42
d0081758:	8fa2      	ldrh	r2, [r4, #60]	; 0x3c
d008175a:	440b      	add	r3, r1
d008175c:	f8b4 1040 	ldrh.w	r1, [r4, #64]	; 0x40
d0081760:	b21b      	sxth	r3, r3
d0081762:	440a      	add	r2, r1
d0081764:	1119      	asrs	r1, r3, #4
d0081766:	87e3      	strh	r3, [r4, #62]	; 0x3e
d0081768:	b213      	sxth	r3, r2
d008176a:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d008176e:	87a3      	strh	r3, [r4, #60]	; 0x3c
d0081770:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081774:	f201 8332 	bhi.w	d0082ddc <main+0x2680>
d0081778:	3320      	adds	r3, #32
d008177a:	f2c1 832f 	blt.w	d0082ddc <main+0x2680>
d008177e:	f894 304e 	ldrb.w	r3, [r4, #78]	; 0x4e
d0081782:	b1cb      	cbz	r3, d00817b8 <main+0x105c>
d0081784:	f8b4 3048 	ldrh.w	r3, [r4, #72]	; 0x48
d0081788:	f8b4 104c 	ldrh.w	r1, [r4, #76]	; 0x4c
d008178c:	f8b4 2046 	ldrh.w	r2, [r4, #70]	; 0x46
d0081790:	440b      	add	r3, r1
d0081792:	f8b4 104a 	ldrh.w	r1, [r4, #74]	; 0x4a
d0081796:	b21b      	sxth	r3, r3
d0081798:	440a      	add	r2, r1
d008179a:	1119      	asrs	r1, r3, #4
d008179c:	f8a4 3048 	strh.w	r3, [r4, #72]	; 0x48
d00817a0:	b213      	sxth	r3, r2
d00817a2:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d00817a6:	f8a4 3046 	strh.w	r3, [r4, #70]	; 0x46
d00817aa:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d00817ae:	f201 831a 	bhi.w	d0082de6 <main+0x268a>
d00817b2:	3320      	adds	r3, #32
d00817b4:	f2c1 8317 	blt.w	d0082de6 <main+0x268a>
d00817b8:	f894 3058 	ldrb.w	r3, [r4, #88]	; 0x58
d00817bc:	b1cb      	cbz	r3, d00817f2 <main+0x1096>
d00817be:	f8b4 3052 	ldrh.w	r3, [r4, #82]	; 0x52
d00817c2:	f8b4 1056 	ldrh.w	r1, [r4, #86]	; 0x56
d00817c6:	f8b4 2050 	ldrh.w	r2, [r4, #80]	; 0x50
d00817ca:	440b      	add	r3, r1
d00817cc:	f8b4 1054 	ldrh.w	r1, [r4, #84]	; 0x54
d00817d0:	b21b      	sxth	r3, r3
d00817d2:	440a      	add	r2, r1
d00817d4:	1119      	asrs	r1, r3, #4
d00817d6:	f8a4 3052 	strh.w	r3, [r4, #82]	; 0x52
d00817da:	b213      	sxth	r3, r2
d00817dc:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d00817e0:	f8a4 3050 	strh.w	r3, [r4, #80]	; 0x50
d00817e4:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d00817e8:	f201 8302 	bhi.w	d0082df0 <main+0x2694>
d00817ec:	3320      	adds	r3, #32
d00817ee:	f2c1 82ff 	blt.w	d0082df0 <main+0x2694>
d00817f2:	f894 3062 	ldrb.w	r3, [r4, #98]	; 0x62
d00817f6:	b1cb      	cbz	r3, d008182c <main+0x10d0>
d00817f8:	f8b4 305c 	ldrh.w	r3, [r4, #92]	; 0x5c
d00817fc:	f8b4 1060 	ldrh.w	r1, [r4, #96]	; 0x60
d0081800:	f8b4 205a 	ldrh.w	r2, [r4, #90]	; 0x5a
d0081804:	440b      	add	r3, r1
d0081806:	f8b4 105e 	ldrh.w	r1, [r4, #94]	; 0x5e
d008180a:	b21b      	sxth	r3, r3
d008180c:	440a      	add	r2, r1
d008180e:	1119      	asrs	r1, r3, #4
d0081810:	f8a4 305c 	strh.w	r3, [r4, #92]	; 0x5c
d0081814:	b213      	sxth	r3, r2
d0081816:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d008181a:	f8a4 305a 	strh.w	r3, [r4, #90]	; 0x5a
d008181e:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081822:	f201 82ea 	bhi.w	d0082dfa <main+0x269e>
d0081826:	3320      	adds	r3, #32
d0081828:	f2c1 82e7 	blt.w	d0082dfa <main+0x269e>
d008182c:	f894 306c 	ldrb.w	r3, [r4, #108]	; 0x6c
d0081830:	b1cb      	cbz	r3, d0081866 <main+0x110a>
d0081832:	f8b4 3066 	ldrh.w	r3, [r4, #102]	; 0x66
d0081836:	f8b4 106a 	ldrh.w	r1, [r4, #106]	; 0x6a
d008183a:	f8b4 2064 	ldrh.w	r2, [r4, #100]	; 0x64
d008183e:	440b      	add	r3, r1
d0081840:	f8b4 1068 	ldrh.w	r1, [r4, #104]	; 0x68
d0081844:	b21b      	sxth	r3, r3
d0081846:	440a      	add	r2, r1
d0081848:	1119      	asrs	r1, r3, #4
d008184a:	f8a4 3066 	strh.w	r3, [r4, #102]	; 0x66
d008184e:	b213      	sxth	r3, r2
d0081850:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081854:	f8a4 3064 	strh.w	r3, [r4, #100]	; 0x64
d0081858:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d008185c:	f201 82d2 	bhi.w	d0082e04 <main+0x26a8>
d0081860:	3320      	adds	r3, #32
d0081862:	f2c1 82cf 	blt.w	d0082e04 <main+0x26a8>
d0081866:	f894 3076 	ldrb.w	r3, [r4, #118]	; 0x76
d008186a:	b1cb      	cbz	r3, d00818a0 <main+0x1144>
d008186c:	f8b4 1070 	ldrh.w	r1, [r4, #112]	; 0x70
d0081870:	f8b4 3074 	ldrh.w	r3, [r4, #116]	; 0x74
d0081874:	f8b4 2072 	ldrh.w	r2, [r4, #114]	; 0x72
d0081878:	440b      	add	r3, r1
d008187a:	f8b4 106e 	ldrh.w	r1, [r4, #110]	; 0x6e
d008187e:	b21b      	sxth	r3, r3
d0081880:	440a      	add	r2, r1
d0081882:	1119      	asrs	r1, r3, #4
d0081884:	f8a4 3070 	strh.w	r3, [r4, #112]	; 0x70
d0081888:	b213      	sxth	r3, r2
d008188a:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d008188e:	f8a4 306e 	strh.w	r3, [r4, #110]	; 0x6e
d0081892:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081896:	f201 82ba 	bhi.w	d0082e0e <main+0x26b2>
d008189a:	3320      	adds	r3, #32
d008189c:	f2c1 82b7 	blt.w	d0082e0e <main+0x26b2>
d00818a0:	4b04      	ldr	r3, [pc, #16]	; (d00818b4 <main+0x1158>)
d00818a2:	9307      	str	r3, [sp, #28]
d00818a4:	2705      	movs	r7, #5
d00818a6:	f8df a014 	ldr.w	sl, [pc, #20]	; d00818bc <main+0x1160>
d00818aa:	e044      	b.n	d0081936 <main+0x11da>
d00818ac:	d008ab18 	.word	0xd008ab18
d00818b0:	d008a960 	.word	0xd008a960
d00818b4:	d008ab14 	.word	0xd008ab14
d00818b8:	d008a9ec 	.word	0xd008a9ec
d00818bc:	d00898d0 	.word	0xd00898d0
d00818c0:	f898 100d 	ldrb.w	r1, [r8, #13]
d00818c4:	2b03      	cmp	r3, #3
d00818c6:	f898 e00e 	ldrb.w	lr, [r8, #14]
d00818ca:	f04f 030b 	mov.w	r3, #11
d00818ce:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
d00818d2:	4650      	mov	r0, sl
d00818d4:	f898 c00f 	ldrb.w	ip, [r8, #15]
d00818d8:	ea41 4e0e 	orr.w	lr, r1, lr, lsl #16
d00818dc:	886a      	ldrh	r2, [r5, #2]
d00818de:	f9b5 1000 	ldrsh.w	r1, [r5]
d00818e2:	f200 8464 	bhi.w	d00821ae <main+0x1a52>
d00818e6:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d00818ea:	3a03      	subs	r2, #3
d00818ec:	f8dc c004 	ldr.w	ip, [ip, #4]
d00818f0:	b212      	sxth	r2, r2
d00818f2:	9700      	str	r7, [sp, #0]
d00818f4:	f8dc 9018 	ldr.w	r9, [ip, #24]
d00818f8:	47c8      	blx	r9
d00818fa:	f898 200c 	ldrb.w	r2, [r8, #12]
d00818fe:	f898 100d 	ldrb.w	r1, [r8, #13]
d0081902:	230b      	movs	r3, #11
d0081904:	f898 e00e 	ldrb.w	lr, [r8, #14]
d0081908:	4650      	mov	r0, sl
d008190a:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
d008190e:	886a      	ldrh	r2, [r5, #2]
d0081910:	f898 c00f 	ldrb.w	ip, [r8, #15]
d0081914:	ea41 4e0e 	orr.w	lr, r1, lr, lsl #16
d0081918:	3203      	adds	r2, #3
d008191a:	f9b5 1000 	ldrsh.w	r1, [r5]
d008191e:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d0081922:	b212      	sxth	r2, r2
d0081924:	f8dc c004 	ldr.w	ip, [ip, #4]
d0081928:	9700      	str	r7, [sp, #0]
d008192a:	f8dc 9018 	ldr.w	r9, [ip, #24]
d008192e:	47c8      	blx	r9
d0081930:	3506      	adds	r5, #6
d0081932:	45ab      	cmp	fp, r5
d0081934:	d022      	beq.n	d008197c <main+0x1220>
d0081936:	796b      	ldrb	r3, [r5, #5]
d0081938:	2b00      	cmp	r3, #0
d008193a:	d0f9      	beq.n	d0081930 <main+0x11d4>
d008193c:	792b      	ldrb	r3, [r5, #4]
d008193e:	f898 200c 	ldrb.w	r2, [r8, #12]
d0081942:	2b01      	cmp	r3, #1
d0081944:	d8bc      	bhi.n	d00818c0 <main+0x1164>
d0081946:	f898 e00d 	ldrb.w	lr, [r8, #13]
d008194a:	3506      	adds	r5, #6
d008194c:	f898 c00e 	ldrb.w	ip, [r8, #14]
d0081950:	230b      	movs	r3, #11
d0081952:	ea42 210e 	orr.w	r1, r2, lr, lsl #8
d0081956:	f898 900f 	ldrb.w	r9, [r8, #15]
d008195a:	f935 2c04 	ldrsh.w	r2, [r5, #-4]
d008195e:	4650      	mov	r0, sl
d0081960:	ea41 4e0c 	orr.w	lr, r1, ip, lsl #16
d0081964:	f935 1c06 	ldrsh.w	r1, [r5, #-6]
d0081968:	ea4e 6c09 	orr.w	ip, lr, r9, lsl #24
d008196c:	f8dc c004 	ldr.w	ip, [ip, #4]
d0081970:	9700      	str	r7, [sp, #0]
d0081972:	f8dc 9018 	ldr.w	r9, [ip, #24]
d0081976:	47c8      	blx	r9
d0081978:	45ab      	cmp	fp, r5
d008197a:	d1dc      	bne.n	d0081936 <main+0x11da>
d008197c:	f898 300c 	ldrb.w	r3, [r8, #12]
d0081980:	20fc      	movs	r0, #252	; 0xfc
d0081982:	f898 200d 	ldrb.w	r2, [r8, #13]
d0081986:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008198a:	f898 200e 	ldrb.w	r2, [r8, #14]
d008198e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0081992:	f898 200f 	ldrb.w	r2, [r8, #15]
d0081996:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008199a:	685b      	ldr	r3, [r3, #4]
d008199c:	68db      	ldr	r3, [r3, #12]
d008199e:	4798      	blx	r3
d00819a0:	7a23      	ldrb	r3, [r4, #8]
d00819a2:	b30b      	cbz	r3, d00819e8 <main+0x128c>
d00819a4:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d00819a8:	f9b4 0000 	ldrsh.w	r0, [r4]
d00819ac:	f3c1 130f 	ubfx	r3, r1, #4, #16
d00819b0:	1109      	asrs	r1, r1, #4
d00819b2:	1100      	asrs	r0, r0, #4
d00819b4:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d00819b8:	d816      	bhi.n	d00819e8 <main+0x128c>
d00819ba:	b283      	uxth	r3, r0
d00819bc:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d00819c0:	d812      	bhi.n	d00819e8 <main+0x128c>
d00819c2:	f898 200c 	ldrb.w	r2, [r8, #12]
d00819c6:	2304      	movs	r3, #4
d00819c8:	f898 700d 	ldrb.w	r7, [r8, #13]
d00819cc:	f898 500e 	ldrb.w	r5, [r8, #14]
d00819d0:	ea42 2c07 	orr.w	ip, r2, r7, lsl #8
d00819d4:	f898 700f 	ldrb.w	r7, [r8, #15]
d00819d8:	461a      	mov	r2, r3
d00819da:	ea4c 4c05 	orr.w	ip, ip, r5, lsl #16
d00819de:	ea4c 6507 	orr.w	r5, ip, r7, lsl #24
d00819e2:	686d      	ldr	r5, [r5, #4]
d00819e4:	686d      	ldr	r5, [r5, #4]
d00819e6:	47a8      	blx	r5
d00819e8:	7ca3      	ldrb	r3, [r4, #18]
d00819ea:	b30b      	cbz	r3, d0081a30 <main+0x12d4>
d00819ec:	f9b4 000a 	ldrsh.w	r0, [r4, #10]
d00819f0:	f9b4 100c 	ldrsh.w	r1, [r4, #12]
d00819f4:	f3c0 130f 	ubfx	r3, r0, #4, #16
d00819f8:	1100      	asrs	r0, r0, #4
d00819fa:	1109      	asrs	r1, r1, #4
d00819fc:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0081a00:	d816      	bhi.n	d0081a30 <main+0x12d4>
d0081a02:	b28b      	uxth	r3, r1
d0081a04:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d0081a08:	d812      	bhi.n	d0081a30 <main+0x12d4>
d0081a0a:	f898 200c 	ldrb.w	r2, [r8, #12]
d0081a0e:	2304      	movs	r3, #4
d0081a10:	f898 700d 	ldrb.w	r7, [r8, #13]
d0081a14:	f898 500e 	ldrb.w	r5, [r8, #14]
d0081a18:	ea42 2c07 	orr.w	ip, r2, r7, lsl #8
d0081a1c:	f898 700f 	ldrb.w	r7, [r8, #15]
d0081a20:	461a      	mov	r2, r3
d0081a22:	ea4c 4c05 	orr.w	ip, ip, r5, lsl #16
d0081a26:	ea4c 6507 	orr.w	r5, ip, r7, lsl #24
d0081a2a:	686d      	ldr	r5, [r5, #4]
d0081a2c:	686d      	ldr	r5, [r5, #4]
d0081a2e:	47a8      	blx	r5
d0081a30:	7f23      	ldrb	r3, [r4, #28]
d0081a32:	b30b      	cbz	r3, d0081a78 <main+0x131c>
d0081a34:	f9b4 0014 	ldrsh.w	r0, [r4, #20]
d0081a38:	f9b4 1016 	ldrsh.w	r1, [r4, #22]
d0081a3c:	f3c0 130f 	ubfx	r3, r0, #4, #16
d0081a40:	1100      	asrs	r0, r0, #4
d0081a42:	1109      	asrs	r1, r1, #4
d0081a44:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0081a48:	d816      	bhi.n	d0081a78 <main+0x131c>
d0081a4a:	b28b      	uxth	r3, r1
d0081a4c:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d0081a50:	d812      	bhi.n	d0081a78 <main+0x131c>
d0081a52:	f898 200c 	ldrb.w	r2, [r8, #12]
d0081a56:	2304      	movs	r3, #4
d0081a58:	f898 700d 	ldrb.w	r7, [r8, #13]
d0081a5c:	f898 500e 	ldrb.w	r5, [r8, #14]
d0081a60:	ea42 2c07 	orr.w	ip, r2, r7, lsl #8
d0081a64:	f898 700f 	ldrb.w	r7, [r8, #15]
d0081a68:	461a      	mov	r2, r3
d0081a6a:	ea4c 4c05 	orr.w	ip, ip, r5, lsl #16
d0081a6e:	ea4c 6507 	orr.w	r5, ip, r7, lsl #24
d0081a72:	686d      	ldr	r5, [r5, #4]
d0081a74:	686d      	ldr	r5, [r5, #4]
d0081a76:	47a8      	blx	r5
d0081a78:	f894 3026 	ldrb.w	r3, [r4, #38]	; 0x26
d0081a7c:	b30b      	cbz	r3, d0081ac2 <main+0x1366>
d0081a7e:	f9b4 001e 	ldrsh.w	r0, [r4, #30]
d0081a82:	f9b4 1020 	ldrsh.w	r1, [r4, #32]
d0081a86:	f3c0 130f 	ubfx	r3, r0, #4, #16
d0081a8a:	1100      	asrs	r0, r0, #4
d0081a8c:	1109      	asrs	r1, r1, #4
d0081a8e:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0081a92:	d816      	bhi.n	d0081ac2 <main+0x1366>
d0081a94:	b28b      	uxth	r3, r1
d0081a96:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d0081a9a:	d812      	bhi.n	d0081ac2 <main+0x1366>
d0081a9c:	f898 200c 	ldrb.w	r2, [r8, #12]
d0081aa0:	2304      	movs	r3, #4
d0081aa2:	f898 700d 	ldrb.w	r7, [r8, #13]
d0081aa6:	f898 500e 	ldrb.w	r5, [r8, #14]
d0081aaa:	ea42 2c07 	orr.w	ip, r2, r7, lsl #8
d0081aae:	f898 700f 	ldrb.w	r7, [r8, #15]
d0081ab2:	461a      	mov	r2, r3
d0081ab4:	ea4c 4c05 	orr.w	ip, ip, r5, lsl #16
d0081ab8:	ea4c 6507 	orr.w	r5, ip, r7, lsl #24
d0081abc:	686d      	ldr	r5, [r5, #4]
d0081abe:	686d      	ldr	r5, [r5, #4]
d0081ac0:	47a8      	blx	r5
d0081ac2:	f894 3030 	ldrb.w	r3, [r4, #48]	; 0x30
d0081ac6:	b30b      	cbz	r3, d0081b0c <main+0x13b0>
d0081ac8:	f9b4 102a 	ldrsh.w	r1, [r4, #42]	; 0x2a
d0081acc:	f9b4 0028 	ldrsh.w	r0, [r4, #40]	; 0x28
d0081ad0:	f3c1 130f 	ubfx	r3, r1, #4, #16
d0081ad4:	1109      	asrs	r1, r1, #4
d0081ad6:	1100      	asrs	r0, r0, #4
d0081ad8:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d0081adc:	d816      	bhi.n	d0081b0c <main+0x13b0>
d0081ade:	b283      	uxth	r3, r0
d0081ae0:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0081ae4:	d812      	bhi.n	d0081b0c <main+0x13b0>
d0081ae6:	f898 200c 	ldrb.w	r2, [r8, #12]
d0081aea:	2304      	movs	r3, #4
d0081aec:	f898 700d 	ldrb.w	r7, [r8, #13]
d0081af0:	f898 500e 	ldrb.w	r5, [r8, #14]
d0081af4:	ea42 2c07 	orr.w	ip, r2, r7, lsl #8
d0081af8:	f898 700f 	ldrb.w	r7, [r8, #15]
d0081afc:	461a      	mov	r2, r3
d0081afe:	ea4c 4c05 	orr.w	ip, ip, r5, lsl #16
d0081b02:	ea4c 6507 	orr.w	r5, ip, r7, lsl #24
d0081b06:	686d      	ldr	r5, [r5, #4]
d0081b08:	686d      	ldr	r5, [r5, #4]
d0081b0a:	47a8      	blx	r5
d0081b0c:	f894 303a 	ldrb.w	r3, [r4, #58]	; 0x3a
d0081b10:	b30b      	cbz	r3, d0081b56 <main+0x13fa>
d0081b12:	f9b4 0032 	ldrsh.w	r0, [r4, #50]	; 0x32
d0081b16:	f9b4 1034 	ldrsh.w	r1, [r4, #52]	; 0x34
d0081b1a:	f3c0 130f 	ubfx	r3, r0, #4, #16
d0081b1e:	1100      	asrs	r0, r0, #4
d0081b20:	1109      	asrs	r1, r1, #4
d0081b22:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0081b26:	d816      	bhi.n	d0081b56 <main+0x13fa>
d0081b28:	b28b      	uxth	r3, r1
d0081b2a:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d0081b2e:	d812      	bhi.n	d0081b56 <main+0x13fa>
d0081b30:	f898 200c 	ldrb.w	r2, [r8, #12]
d0081b34:	2304      	movs	r3, #4
d0081b36:	f898 700d 	ldrb.w	r7, [r8, #13]
d0081b3a:	f898 500e 	ldrb.w	r5, [r8, #14]
d0081b3e:	ea42 2c07 	orr.w	ip, r2, r7, lsl #8
d0081b42:	f898 700f 	ldrb.w	r7, [r8, #15]
d0081b46:	461a      	mov	r2, r3
d0081b48:	ea4c 4c05 	orr.w	ip, ip, r5, lsl #16
d0081b4c:	ea4c 6507 	orr.w	r5, ip, r7, lsl #24
d0081b50:	686d      	ldr	r5, [r5, #4]
d0081b52:	686d      	ldr	r5, [r5, #4]
d0081b54:	47a8      	blx	r5
d0081b56:	f894 3044 	ldrb.w	r3, [r4, #68]	; 0x44
d0081b5a:	b30b      	cbz	r3, d0081ba0 <main+0x1444>
d0081b5c:	f9b4 003c 	ldrsh.w	r0, [r4, #60]	; 0x3c
d0081b60:	f9b4 103e 	ldrsh.w	r1, [r4, #62]	; 0x3e
d0081b64:	f3c0 130f 	ubfx	r3, r0, #4, #16
d0081b68:	1100      	asrs	r0, r0, #4
d0081b6a:	1109      	asrs	r1, r1, #4
d0081b6c:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0081b70:	d816      	bhi.n	d0081ba0 <main+0x1444>
d0081b72:	b28b      	uxth	r3, r1
d0081b74:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d0081b78:	d812      	bhi.n	d0081ba0 <main+0x1444>
d0081b7a:	f898 200c 	ldrb.w	r2, [r8, #12]
d0081b7e:	2304      	movs	r3, #4
d0081b80:	f898 700d 	ldrb.w	r7, [r8, #13]
d0081b84:	f898 500e 	ldrb.w	r5, [r8, #14]
d0081b88:	ea42 2c07 	orr.w	ip, r2, r7, lsl #8
d0081b8c:	f898 700f 	ldrb.w	r7, [r8, #15]
d0081b90:	461a      	mov	r2, r3
d0081b92:	ea4c 4c05 	orr.w	ip, ip, r5, lsl #16
d0081b96:	ea4c 6507 	orr.w	r5, ip, r7, lsl #24
d0081b9a:	686d      	ldr	r5, [r5, #4]
d0081b9c:	686d      	ldr	r5, [r5, #4]
d0081b9e:	47a8      	blx	r5
d0081ba0:	f894 304e 	ldrb.w	r3, [r4, #78]	; 0x4e
d0081ba4:	b30b      	cbz	r3, d0081bea <main+0x148e>
d0081ba6:	f9b4 0046 	ldrsh.w	r0, [r4, #70]	; 0x46
d0081baa:	f9b4 1048 	ldrsh.w	r1, [r4, #72]	; 0x48
d0081bae:	f3c0 130f 	ubfx	r3, r0, #4, #16
d0081bb2:	1100      	asrs	r0, r0, #4
d0081bb4:	1109      	asrs	r1, r1, #4
d0081bb6:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0081bba:	d816      	bhi.n	d0081bea <main+0x148e>
d0081bbc:	b28b      	uxth	r3, r1
d0081bbe:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d0081bc2:	d812      	bhi.n	d0081bea <main+0x148e>
d0081bc4:	f898 200c 	ldrb.w	r2, [r8, #12]
d0081bc8:	2304      	movs	r3, #4
d0081bca:	f898 700d 	ldrb.w	r7, [r8, #13]
d0081bce:	f898 500e 	ldrb.w	r5, [r8, #14]
d0081bd2:	ea42 2c07 	orr.w	ip, r2, r7, lsl #8
d0081bd6:	f898 700f 	ldrb.w	r7, [r8, #15]
d0081bda:	461a      	mov	r2, r3
d0081bdc:	ea4c 4c05 	orr.w	ip, ip, r5, lsl #16
d0081be0:	ea4c 6507 	orr.w	r5, ip, r7, lsl #24
d0081be4:	686d      	ldr	r5, [r5, #4]
d0081be6:	686d      	ldr	r5, [r5, #4]
d0081be8:	47a8      	blx	r5
d0081bea:	f894 3058 	ldrb.w	r3, [r4, #88]	; 0x58
d0081bee:	b30b      	cbz	r3, d0081c34 <main+0x14d8>
d0081bf0:	f9b4 0050 	ldrsh.w	r0, [r4, #80]	; 0x50
d0081bf4:	f9b4 1052 	ldrsh.w	r1, [r4, #82]	; 0x52
d0081bf8:	f3c0 130f 	ubfx	r3, r0, #4, #16
d0081bfc:	1100      	asrs	r0, r0, #4
d0081bfe:	1109      	asrs	r1, r1, #4
d0081c00:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0081c04:	d816      	bhi.n	d0081c34 <main+0x14d8>
d0081c06:	b28b      	uxth	r3, r1
d0081c08:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d0081c0c:	d812      	bhi.n	d0081c34 <main+0x14d8>
d0081c0e:	f898 200c 	ldrb.w	r2, [r8, #12]
d0081c12:	2304      	movs	r3, #4
d0081c14:	f898 700d 	ldrb.w	r7, [r8, #13]
d0081c18:	f898 500e 	ldrb.w	r5, [r8, #14]
d0081c1c:	ea42 2c07 	orr.w	ip, r2, r7, lsl #8
d0081c20:	f898 700f 	ldrb.w	r7, [r8, #15]
d0081c24:	461a      	mov	r2, r3
d0081c26:	ea4c 4c05 	orr.w	ip, ip, r5, lsl #16
d0081c2a:	ea4c 6507 	orr.w	r5, ip, r7, lsl #24
d0081c2e:	686d      	ldr	r5, [r5, #4]
d0081c30:	686d      	ldr	r5, [r5, #4]
d0081c32:	47a8      	blx	r5
d0081c34:	f894 3062 	ldrb.w	r3, [r4, #98]	; 0x62
d0081c38:	b30b      	cbz	r3, d0081c7e <main+0x1522>
d0081c3a:	f9b4 005a 	ldrsh.w	r0, [r4, #90]	; 0x5a
d0081c3e:	f9b4 105c 	ldrsh.w	r1, [r4, #92]	; 0x5c
d0081c42:	f3c0 130f 	ubfx	r3, r0, #4, #16
d0081c46:	1100      	asrs	r0, r0, #4
d0081c48:	1109      	asrs	r1, r1, #4
d0081c4a:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0081c4e:	d816      	bhi.n	d0081c7e <main+0x1522>
d0081c50:	b28b      	uxth	r3, r1
d0081c52:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d0081c56:	d812      	bhi.n	d0081c7e <main+0x1522>
d0081c58:	f898 200c 	ldrb.w	r2, [r8, #12]
d0081c5c:	2304      	movs	r3, #4
d0081c5e:	f898 700d 	ldrb.w	r7, [r8, #13]
d0081c62:	f898 500e 	ldrb.w	r5, [r8, #14]
d0081c66:	ea42 2c07 	orr.w	ip, r2, r7, lsl #8
d0081c6a:	f898 700f 	ldrb.w	r7, [r8, #15]
d0081c6e:	461a      	mov	r2, r3
d0081c70:	ea4c 4c05 	orr.w	ip, ip, r5, lsl #16
d0081c74:	ea4c 6507 	orr.w	r5, ip, r7, lsl #24
d0081c78:	686d      	ldr	r5, [r5, #4]
d0081c7a:	686d      	ldr	r5, [r5, #4]
d0081c7c:	47a8      	blx	r5
d0081c7e:	f894 306c 	ldrb.w	r3, [r4, #108]	; 0x6c
d0081c82:	b30b      	cbz	r3, d0081cc8 <main+0x156c>
d0081c84:	f9b4 0064 	ldrsh.w	r0, [r4, #100]	; 0x64
d0081c88:	f9b4 1066 	ldrsh.w	r1, [r4, #102]	; 0x66
d0081c8c:	f3c0 130f 	ubfx	r3, r0, #4, #16
d0081c90:	1100      	asrs	r0, r0, #4
d0081c92:	1109      	asrs	r1, r1, #4
d0081c94:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0081c98:	d816      	bhi.n	d0081cc8 <main+0x156c>
d0081c9a:	b28b      	uxth	r3, r1
d0081c9c:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d0081ca0:	d812      	bhi.n	d0081cc8 <main+0x156c>
d0081ca2:	f898 200c 	ldrb.w	r2, [r8, #12]
d0081ca6:	2304      	movs	r3, #4
d0081ca8:	f898 700d 	ldrb.w	r7, [r8, #13]
d0081cac:	f898 500e 	ldrb.w	r5, [r8, #14]
d0081cb0:	ea42 2c07 	orr.w	ip, r2, r7, lsl #8
d0081cb4:	f898 700f 	ldrb.w	r7, [r8, #15]
d0081cb8:	461a      	mov	r2, r3
d0081cba:	ea4c 4c05 	orr.w	ip, ip, r5, lsl #16
d0081cbe:	ea4c 6507 	orr.w	r5, ip, r7, lsl #24
d0081cc2:	686d      	ldr	r5, [r5, #4]
d0081cc4:	686d      	ldr	r5, [r5, #4]
d0081cc6:	47a8      	blx	r5
d0081cc8:	f894 3076 	ldrb.w	r3, [r4, #118]	; 0x76
d0081ccc:	b30b      	cbz	r3, d0081d12 <main+0x15b6>
d0081cce:	f9b4 006e 	ldrsh.w	r0, [r4, #110]	; 0x6e
d0081cd2:	f9b4 1070 	ldrsh.w	r1, [r4, #112]	; 0x70
d0081cd6:	f3c0 130f 	ubfx	r3, r0, #4, #16
d0081cda:	1100      	asrs	r0, r0, #4
d0081cdc:	1109      	asrs	r1, r1, #4
d0081cde:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0081ce2:	d816      	bhi.n	d0081d12 <main+0x15b6>
d0081ce4:	b28b      	uxth	r3, r1
d0081ce6:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d0081cea:	d812      	bhi.n	d0081d12 <main+0x15b6>
d0081cec:	f898 200c 	ldrb.w	r2, [r8, #12]
d0081cf0:	2304      	movs	r3, #4
d0081cf2:	f898 500d 	ldrb.w	r5, [r8, #13]
d0081cf6:	f898 400e 	ldrb.w	r4, [r8, #14]
d0081cfa:	ea42 2705 	orr.w	r7, r2, r5, lsl #8
d0081cfe:	f898 500f 	ldrb.w	r5, [r8, #15]
d0081d02:	461a      	mov	r2, r3
d0081d04:	ea47 4704 	orr.w	r7, r7, r4, lsl #16
d0081d08:	ea47 6405 	orr.w	r4, r7, r5, lsl #24
d0081d0c:	6864      	ldr	r4, [r4, #4]
d0081d0e:	6864      	ldr	r4, [r4, #4]
d0081d10:	47a0      	blx	r4
d0081d12:	4c6b      	ldr	r4, [pc, #428]	; (d0081ec0 <main+0x1764>)
d0081d14:	f104 0940 	add.w	r9, r4, #64	; 0x40
d0081d18:	e002      	b.n	d0081d20 <main+0x15c4>
d0081d1a:	3408      	adds	r4, #8
d0081d1c:	45a1      	cmp	r9, r4
d0081d1e:	d07b      	beq.n	d0081e18 <main+0x16bc>
d0081d20:	79a3      	ldrb	r3, [r4, #6]
d0081d22:	2b00      	cmp	r3, #0
d0081d24:	d0f9      	beq.n	d0081d1a <main+0x15be>
d0081d26:	2700      	movs	r7, #0
d0081d28:	9606      	str	r6, [sp, #24]
d0081d2a:	eb07 0347 	add.w	r3, r7, r7, lsl #1
d0081d2e:	7965      	ldrb	r5, [r4, #5]
d0081d30:	f894 c004 	ldrb.w	ip, [r4, #4]
d0081d34:	fa5f fe87 	uxtb.w	lr, r7
d0081d38:	eb07 0383 	add.w	r3, r7, r3, lsl #2
d0081d3c:	f8b4 a002 	ldrh.w	sl, [r4, #2]
d0081d40:	f10c 0204 	add.w	r2, ip, #4
d0081d44:	f8b4 b000 	ldrh.w	fp, [r4]
d0081d48:	442b      	add	r3, r5
d0081d4a:	4d5e      	ldr	r5, [pc, #376]	; (d0081ec4 <main+0x1768>)
d0081d4c:	f00e 0001 	and.w	r0, lr, #1
d0081d50:	f1bc 0f07 	cmp.w	ip, #7
d0081d54:	f003 033f 	and.w	r3, r3, #63	; 0x3f
d0081d58:	f100 001d 	add.w	r0, r0, #29
d0081d5c:	f103 0110 	add.w	r1, r3, #16
d0081d60:	56eb      	ldrsb	r3, [r5, r3]
d0081d62:	f001 013f 	and.w	r1, r1, #63	; 0x3f
d0081d66:	fb02 f303 	mul.w	r3, r2, r3
d0081d6a:	5669      	ldrsb	r1, [r5, r1]
d0081d6c:	fb02 f201 	mul.w	r2, r2, r1
d0081d70:	4955      	ldr	r1, [pc, #340]	; (d0081ec8 <main+0x176c>)
d0081d72:	460e      	mov	r6, r1
d0081d74:	fb81 1502 	smull	r1, r5, r1, r2
d0081d78:	ea4f 71e2 	mov.w	r1, r2, asr #31
d0081d7c:	442a      	add	r2, r5
d0081d7e:	4635      	mov	r5, r6
d0081d80:	fb85 6503 	smull	r6, r5, r5, r3
d0081d84:	ebc1 11a2 	rsb	r1, r1, r2, asr #6
d0081d88:	eb07 025c 	add.w	r2, r7, ip, lsr #1
d0081d8c:	441d      	add	r5, r3
d0081d8e:	ea4f 73e3 	mov.w	r3, r3, asr #31
d0081d92:	4451      	add	r1, sl
d0081d94:	f102 0202 	add.w	r2, r2, #2
d0081d98:	ebc3 15a5 	rsb	r5, r3, r5, asr #6
d0081d9c:	b209      	sxth	r1, r1
d0081d9e:	445d      	add	r5, fp
d0081da0:	b212      	sxth	r2, r2
d0081da2:	b22d      	sxth	r5, r5
d0081da4:	f200 823b 	bhi.w	d008221e <main+0x1ac2>
d0081da8:	f898 a00c 	ldrb.w	sl, [r8, #12]
d0081dac:	f898 e00d 	ldrb.w	lr, [r8, #13]
d0081db0:	f898 c00e 	ldrb.w	ip, [r8, #14]
d0081db4:	ea4a 2e0e 	orr.w	lr, sl, lr, lsl #8
d0081db8:	f898 300f 	ldrb.w	r3, [r8, #15]
d0081dbc:	9105      	str	r1, [sp, #20]
d0081dbe:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d0081dc2:	9204      	str	r2, [sp, #16]
d0081dc4:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d0081dc8:	685b      	ldr	r3, [r3, #4]
d0081dca:	68db      	ldr	r3, [r3, #12]
d0081dcc:	4798      	blx	r3
d0081dce:	9a04      	ldr	r2, [sp, #16]
d0081dd0:	9905      	ldr	r1, [sp, #20]
d0081dd2:	f898 c00c 	ldrb.w	ip, [r8, #12]
d0081dd6:	4628      	mov	r0, r5
d0081dd8:	f898 300d 	ldrb.w	r3, [r8, #13]
d0081ddc:	3701      	adds	r7, #1
d0081dde:	f898 e00e 	ldrb.w	lr, [r8, #14]
d0081de2:	ea4c 2c03 	orr.w	ip, ip, r3, lsl #8
d0081de6:	f898 300f 	ldrb.w	r3, [r8, #15]
d0081dea:	ea4c 450e 	orr.w	r5, ip, lr, lsl #16
d0081dee:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d0081df2:	685b      	ldr	r3, [r3, #4]
d0081df4:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
d0081df6:	4798      	blx	r3
d0081df8:	2f04      	cmp	r7, #4
d0081dfa:	d196      	bne.n	d0081d2a <main+0x15ce>
d0081dfc:	7923      	ldrb	r3, [r4, #4]
d0081dfe:	9e06      	ldr	r6, [sp, #24]
d0081e00:	3301      	adds	r3, #1
d0081e02:	b2db      	uxtb	r3, r3
d0081e04:	2b21      	cmp	r3, #33	; 0x21
d0081e06:	7123      	strb	r3, [r4, #4]
d0081e08:	d987      	bls.n	d0081d1a <main+0x15be>
d0081e0a:	f04f 0300 	mov.w	r3, #0
d0081e0e:	3408      	adds	r4, #8
d0081e10:	f804 3c02 	strb.w	r3, [r4, #-2]
d0081e14:	45a1      	cmp	r9, r4
d0081e16:	d183      	bne.n	d0081d20 <main+0x15c4>
d0081e18:	4f2c      	ldr	r7, [pc, #176]	; (d0081ecc <main+0x1770>)
d0081e1a:	2520      	movs	r5, #32
d0081e1c:	f8df 90c8 	ldr.w	r9, [pc, #200]	; d0081ee8 <main+0x178c>
d0081e20:	f898 200c 	ldrb.w	r2, [r8, #12]
d0081e24:	2320      	movs	r3, #32
d0081e26:	f898 100d 	ldrb.w	r1, [r8, #13]
d0081e2a:	4648      	mov	r0, r9
d0081e2c:	f898 400e 	ldrb.w	r4, [r8, #14]
d0081e30:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
d0081e34:	f898 c00f 	ldrb.w	ip, [r8, #15]
d0081e38:	f9b6 2002 	ldrsh.w	r2, [r6, #2]
d0081e3c:	ea41 4404 	orr.w	r4, r1, r4, lsl #16
d0081e40:	f936 1b0c 	ldrsh.w	r1, [r6], #12
d0081e44:	ea44 640c 	orr.w	r4, r4, ip, lsl #24
d0081e48:	6864      	ldr	r4, [r4, #4]
d0081e4a:	9500      	str	r5, [sp, #0]
d0081e4c:	69a4      	ldr	r4, [r4, #24]
d0081e4e:	47a0      	blx	r4
d0081e50:	42b7      	cmp	r7, r6
d0081e52:	d1e5      	bne.n	d0081e20 <main+0x16c4>
d0081e54:	4b1e      	ldr	r3, [pc, #120]	; (d0081ed0 <main+0x1774>)
d0081e56:	f9b3 1000 	ldrsh.w	r1, [r3]
d0081e5a:	2900      	cmp	r1, #0
d0081e5c:	db1e      	blt.n	d0081e9c <main+0x1740>
d0081e5e:	4b1d      	ldr	r3, [pc, #116]	; (d0081ed4 <main+0x1778>)
d0081e60:	781b      	ldrb	r3, [r3, #0]
d0081e62:	b11b      	cbz	r3, d0081e6c <main+0x1710>
d0081e64:	4b1c      	ldr	r3, [pc, #112]	; (d0081ed8 <main+0x177c>)
d0081e66:	881b      	ldrh	r3, [r3, #0]
d0081e68:	07d8      	lsls	r0, r3, #31
d0081e6a:	d417      	bmi.n	d0081e9c <main+0x1740>
d0081e6c:	f898 300c 	ldrb.w	r3, [r8, #12]
d0081e70:	2511      	movs	r5, #17
d0081e72:	f898 400d 	ldrb.w	r4, [r8, #13]
d0081e76:	f898 000e 	ldrb.w	r0, [r8, #14]
d0081e7a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d0081e7e:	f898 400f 	ldrb.w	r4, [r8, #15]
d0081e82:	4a16      	ldr	r2, [pc, #88]	; (d0081edc <main+0x1780>)
d0081e84:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
d0081e88:	231f      	movs	r3, #31
d0081e8a:	f9b2 2000 	ldrsh.w	r2, [r2]
d0081e8e:	ea40 6404 	orr.w	r4, r0, r4, lsl #24
d0081e92:	4813      	ldr	r0, [pc, #76]	; (d0081ee0 <main+0x1784>)
d0081e94:	6864      	ldr	r4, [r4, #4]
d0081e96:	9500      	str	r5, [sp, #0]
d0081e98:	69a4      	ldr	r4, [r4, #24]
d0081e9a:	47a0      	blx	r4
d0081e9c:	4e11      	ldr	r6, [pc, #68]	; (d0081ee4 <main+0x1788>)
d0081e9e:	21ff      	movs	r1, #255	; 0xff
d0081ea0:	2007      	movs	r0, #7
d0081ea2:	f7fe f94d 	bl	d0080140 <draw_star_speed_range>
d0081ea6:	6831      	ldr	r1, [r6, #0]
d0081ea8:	3902      	subs	r1, #2
d0081eaa:	f111 0f43 	cmn.w	r1, #67	; 0x43
d0081eae:	f2c0 829a 	blt.w	d00823e6 <main+0x1c8a>
d0081eb2:	6031      	str	r1, [r6, #0]
d0081eb4:	2400      	movs	r4, #0
d0081eb6:	2720      	movs	r7, #32
d0081eb8:	f8df 9030 	ldr.w	r9, [pc, #48]	; d0081eec <main+0x1790>
d0081ebc:	e019      	b.n	d0081ef2 <main+0x1796>
d0081ebe:	bf00      	nop
d0081ec0:	d008aaa0 	.word	0xd008aaa0
d0081ec4:	d008a850 	.word	0xd008a850
d0081ec8:	ea0ea0eb 	.word	0xea0ea0eb
d0081ecc:	d008aa28 	.word	0xd008aa28
d0081ed0:	d008a94a 	.word	0xd008a94a
d0081ed4:	d008ab24 	.word	0xd008ab24
d0081ed8:	d008a9ea 	.word	0xd008a9ea
d0081edc:	d008a94c 	.word	0xd008a94c
d0081ee0:	d0089d08 	.word	0xd0089d08
d0081ee4:	d008ab1c 	.word	0xd008ab1c
d0081ee8:	d0089908 	.word	0xd0089908
d0081eec:	d0089f18 	.word	0xd0089f18
d0081ef0:	6831      	ldr	r1, [r6, #0]
d0081ef2:	f898 000c 	ldrb.w	r0, [r8, #12]
d0081ef6:	4421      	add	r1, r4
d0081ef8:	f898 500d 	ldrb.w	r5, [r8, #13]
d0081efc:	3444      	adds	r4, #68	; 0x44
d0081efe:	f898 c00e 	ldrb.w	ip, [r8, #14]
d0081f02:	2344      	movs	r3, #68	; 0x44
d0081f04:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d0081f08:	f898 500f 	ldrb.w	r5, [r8, #15]
d0081f0c:	b2a4      	uxth	r4, r4
d0081f0e:	2200      	movs	r2, #0
d0081f10:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0081f14:	4648      	mov	r0, r9
d0081f16:	b209      	sxth	r1, r1
d0081f18:	ea4c 6505 	orr.w	r5, ip, r5, lsl #24
d0081f1c:	686d      	ldr	r5, [r5, #4]
d0081f1e:	9700      	str	r7, [sp, #0]
d0081f20:	69ad      	ldr	r5, [r5, #24]
d0081f22:	47a8      	blx	r5
d0081f24:	f5b4 7f08 	cmp.w	r4, #544	; 0x220
d0081f28:	d1e2      	bne.n	d0081ef0 <main+0x1794>
d0081f2a:	49c8      	ldr	r1, [pc, #800]	; (d008224c <main+0x1af0>)
d0081f2c:	4ac8      	ldr	r2, [pc, #800]	; (d0082250 <main+0x1af4>)
d0081f2e:	680b      	ldr	r3, [r1, #0]
d0081f30:	6812      	ldr	r2, [r2, #0]
d0081f32:	3b03      	subs	r3, #3
d0081f34:	4252      	negs	r2, r2
d0081f36:	600b      	str	r3, [r1, #0]
d0081f38:	4293      	cmp	r3, r2
d0081f3a:	dc02      	bgt.n	d0081f42 <main+0x17e6>
d0081f3c:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d0081f40:	600b      	str	r3, [r1, #0]
d0081f42:	f898 100c 	ldrb.w	r1, [r8, #12]
d0081f46:	2010      	movs	r0, #16
d0081f48:	f898 300d 	ldrb.w	r3, [r8, #13]
d0081f4c:	2402      	movs	r4, #2
d0081f4e:	f898 200e 	ldrb.w	r2, [r8, #14]
d0081f52:	260c      	movs	r6, #12
d0081f54:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0081f58:	f898 300f 	ldrb.w	r3, [r8, #15]
d0081f5c:	4fbb      	ldr	r7, [pc, #748]	; (d008224c <main+0x1af0>)
d0081f5e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0081f62:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0081f66:	685b      	ldr	r3, [r3, #4]
d0081f68:	68db      	ldr	r3, [r3, #12]
d0081f6a:	4798      	blx	r3
d0081f6c:	f898 000c 	ldrb.w	r0, [r8, #12]
d0081f70:	f898 500d 	ldrb.w	r5, [r8, #13]
d0081f74:	4623      	mov	r3, r4
d0081f76:	f898 200e 	ldrb.w	r2, [r8, #14]
d0081f7a:	210e      	movs	r1, #14
d0081f7c:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d0081f80:	f898 500f 	ldrb.w	r5, [r8, #15]
d0081f84:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0081f88:	6838      	ldr	r0, [r7, #0]
d0081f8a:	ea42 6505 	orr.w	r5, r2, r5, lsl #24
d0081f8e:	3802      	subs	r0, #2
d0081f90:	4ab0      	ldr	r2, [pc, #704]	; (d0082254 <main+0x1af8>)
d0081f92:	686d      	ldr	r5, [r5, #4]
d0081f94:	9400      	str	r4, [sp, #0]
d0081f96:	6b2d      	ldr	r5, [r5, #48]	; 0x30
d0081f98:	47a8      	blx	r5
d0081f9a:	f898 000c 	ldrb.w	r0, [r8, #12]
d0081f9e:	f898 500d 	ldrb.w	r5, [r8, #13]
d0081fa2:	4623      	mov	r3, r4
d0081fa4:	f898 200e 	ldrb.w	r2, [r8, #14]
d0081fa8:	210e      	movs	r1, #14
d0081faa:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d0081fae:	f898 500f 	ldrb.w	r5, [r8, #15]
d0081fb2:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0081fb6:	6838      	ldr	r0, [r7, #0]
d0081fb8:	ea42 6505 	orr.w	r5, r2, r5, lsl #24
d0081fbc:	4420      	add	r0, r4
d0081fbe:	4aa5      	ldr	r2, [pc, #660]	; (d0082254 <main+0x1af8>)
d0081fc0:	686d      	ldr	r5, [r5, #4]
d0081fc2:	9400      	str	r4, [sp, #0]
d0081fc4:	6b2d      	ldr	r5, [r5, #48]	; 0x30
d0081fc6:	47a8      	blx	r5
d0081fc8:	f898 200c 	ldrb.w	r2, [r8, #12]
d0081fcc:	f898 500d 	ldrb.w	r5, [r8, #13]
d0081fd0:	4623      	mov	r3, r4
d0081fd2:	f898 000e 	ldrb.w	r0, [r8, #14]
d0081fd6:	210c      	movs	r1, #12
d0081fd8:	ea42 2205 	orr.w	r2, r2, r5, lsl #8
d0081fdc:	f898 500f 	ldrb.w	r5, [r8, #15]
d0081fe0:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d0081fe4:	4a9b      	ldr	r2, [pc, #620]	; (d0082254 <main+0x1af8>)
d0081fe6:	ea40 6505 	orr.w	r5, r0, r5, lsl #24
d0081fea:	6838      	ldr	r0, [r7, #0]
d0081fec:	686d      	ldr	r5, [r5, #4]
d0081fee:	9400      	str	r4, [sp, #0]
d0081ff0:	6b2d      	ldr	r5, [r5, #48]	; 0x30
d0081ff2:	47a8      	blx	r5
d0081ff4:	f898 200c 	ldrb.w	r2, [r8, #12]
d0081ff8:	f898 500d 	ldrb.w	r5, [r8, #13]
d0081ffc:	4623      	mov	r3, r4
d0081ffe:	f898 000e 	ldrb.w	r0, [r8, #14]
d0082002:	2110      	movs	r1, #16
d0082004:	ea42 2205 	orr.w	r2, r2, r5, lsl #8
d0082008:	f898 500f 	ldrb.w	r5, [r8, #15]
d008200c:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d0082010:	4a90      	ldr	r2, [pc, #576]	; (d0082254 <main+0x1af8>)
d0082012:	ea40 6505 	orr.w	r5, r0, r5, lsl #24
d0082016:	6838      	ldr	r0, [r7, #0]
d0082018:	686d      	ldr	r5, [r5, #4]
d008201a:	9400      	str	r4, [sp, #0]
d008201c:	6b2d      	ldr	r5, [r5, #48]	; 0x30
d008201e:	47a8      	blx	r5
d0082020:	f898 100c 	ldrb.w	r1, [r8, #12]
d0082024:	f898 200d 	ldrb.w	r2, [r8, #13]
d0082028:	2557      	movs	r5, #87	; 0x57
d008202a:	f898 300e 	ldrb.w	r3, [r8, #14]
d008202e:	2050      	movs	r0, #80	; 0x50
d0082030:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d0082034:	f898 200f 	ldrb.w	r2, [r8, #15]
d0082038:	ea41 4303 	orr.w	r3, r1, r3, lsl #16
d008203c:	210e      	movs	r1, #14
d008203e:	ea43 6202 	orr.w	r2, r3, r2, lsl #24
d0082042:	4623      	mov	r3, r4
d0082044:	6857      	ldr	r7, [r2, #4]
d0082046:	9400      	str	r4, [sp, #0]
d0082048:	9603      	str	r6, [sp, #12]
d008204a:	9502      	str	r5, [sp, #8]
d008204c:	9001      	str	r0, [sp, #4]
d008204e:	6b7d      	ldr	r5, [r7, #52]	; 0x34
d0082050:	4f7e      	ldr	r7, [pc, #504]	; (d008224c <main+0x1af0>)
d0082052:	4a80      	ldr	r2, [pc, #512]	; (d0082254 <main+0x1af8>)
d0082054:	6838      	ldr	r0, [r7, #0]
d0082056:	47a8      	blx	r5
d0082058:	f898 100c 	ldrb.w	r1, [r8, #12]
d008205c:	f898 300d 	ldrb.w	r3, [r8, #13]
d0082060:	2001      	movs	r0, #1
d0082062:	f898 200e 	ldrb.w	r2, [r8, #14]
d0082066:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d008206a:	f898 300f 	ldrb.w	r3, [r8, #15]
d008206e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0082072:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0082076:	685b      	ldr	r3, [r3, #4]
d0082078:	68db      	ldr	r3, [r3, #12]
d008207a:	4798      	blx	r3
d008207c:	f898 100c 	ldrb.w	r1, [r8, #12]
d0082080:	f898 500d 	ldrb.w	r5, [r8, #13]
d0082084:	2305      	movs	r3, #5
d0082086:	f898 000e 	ldrb.w	r0, [r8, #14]
d008208a:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d008208e:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d0082092:	f898 500f 	ldrb.w	r5, [r8, #15]
d0082096:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d008209a:	2120      	movs	r1, #32
d008209c:	ea40 6505 	orr.w	r5, r0, r5, lsl #24
d00820a0:	2000      	movs	r0, #0
d00820a2:	686d      	ldr	r5, [r5, #4]
d00820a4:	686d      	ldr	r5, [r5, #4]
d00820a6:	47a8      	blx	r5
d00820a8:	9b07      	ldr	r3, [sp, #28]
d00820aa:	2140      	movs	r1, #64	; 0x40
d00820ac:	a816      	add	r0, sp, #88	; 0x58
d00820ae:	881a      	ldrh	r2, [r3, #0]
d00820b0:	4b69      	ldr	r3, [pc, #420]	; (d0082258 <main+0x1afc>)
d00820b2:	681b      	ldr	r3, [r3, #0]
d00820b4:	9200      	str	r2, [sp, #0]
d00820b6:	4a69      	ldr	r2, [pc, #420]	; (d008225c <main+0x1b00>)
d00820b8:	f001 fca6 	bl	d0083a08 <sniprintf>
d00820bc:	f898 100c 	ldrb.w	r1, [r8, #12]
d00820c0:	f898 300d 	ldrb.w	r3, [r8, #13]
d00820c4:	4620      	mov	r0, r4
d00820c6:	f898 200e 	ldrb.w	r2, [r8, #14]
d00820ca:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00820ce:	f898 300f 	ldrb.w	r3, [r8, #15]
d00820d2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00820d6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00820da:	685b      	ldr	r3, [r3, #4]
d00820dc:	68db      	ldr	r3, [r3, #12]
d00820de:	4798      	blx	r3
d00820e0:	f898 100c 	ldrb.w	r1, [r8, #12]
d00820e4:	f898 700d 	ldrb.w	r7, [r8, #13]
d00820e8:	aa16      	add	r2, sp, #88	; 0x58
d00820ea:	f898 600e 	ldrb.w	r6, [r8, #14]
d00820ee:	2301      	movs	r3, #1
d00820f0:	ea41 2707 	orr.w	r7, r1, r7, lsl #8
d00820f4:	f898 500f 	ldrb.w	r5, [r8, #15]
d00820f8:	f44f 7194 	mov.w	r1, #296	; 0x128
d00820fc:	2008      	movs	r0, #8
d00820fe:	ea47 4606 	orr.w	r6, r7, r6, lsl #16
d0082102:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0082106:	686d      	ldr	r5, [r5, #4]
d0082108:	9400      	str	r4, [sp, #0]
d008210a:	6b2c      	ldr	r4, [r5, #48]	; 0x30
d008210c:	47a0      	blx	r4
d008210e:	4a54      	ldr	r2, [pc, #336]	; (d0082260 <main+0x1b04>)
d0082110:	7813      	ldrb	r3, [r2, #0]
d0082112:	f1c3 0301 	rsb	r3, r3, #1
d0082116:	b2db      	uxtb	r3, r3
d0082118:	7013      	strb	r3, [r2, #0]
d008211a:	7813      	ldrb	r3, [r2, #0]
d008211c:	f898 100c 	ldrb.w	r1, [r8, #12]
d0082120:	f898 000d 	ldrb.w	r0, [r8, #13]
d0082124:	f898 200e 	ldrb.w	r2, [r8, #14]
d0082128:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d008212c:	2b00      	cmp	r3, #0
d008212e:	f000 8152 	beq.w	d00823d6 <main+0x1c7a>
d0082132:	494c      	ldr	r1, [pc, #304]	; (d0082264 <main+0x1b08>)
d0082134:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0082138:	f898 300f 	ldrb.w	r3, [r8, #15]
d008213c:	6809      	ldr	r1, [r1, #0]
d008213e:	484a      	ldr	r0, [pc, #296]	; (d0082268 <main+0x1b0c>)
d0082140:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0082144:	6800      	ldr	r0, [r0, #0]
d0082146:	681b      	ldr	r3, [r3, #0]
d0082148:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d008214a:	4798      	blx	r3
d008214c:	f898 100c 	ldrb.w	r1, [r8, #12]
d0082150:	f898 300d 	ldrb.w	r3, [r8, #13]
d0082154:	f898 200e 	ldrb.w	r2, [r8, #14]
d0082158:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d008215c:	f898 300f 	ldrb.w	r3, [r8, #15]
d0082160:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0082164:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0082168:	681b      	ldr	r3, [r3, #0]
d008216a:	681b      	ldr	r3, [r3, #0]
d008216c:	4798      	blx	r3
d008216e:	f898 1014 	ldrb.w	r1, [r8, #20]
d0082172:	f898 3015 	ldrb.w	r3, [r8, #21]
d0082176:	f898 2016 	ldrb.w	r2, [r8, #22]
d008217a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d008217e:	f898 3017 	ldrb.w	r3, [r8, #23]
d0082182:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0082186:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008218a:	685b      	ldr	r3, [r3, #4]
d008218c:	685b      	ldr	r3, [r3, #4]
d008218e:	4798      	blx	r3
d0082190:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0082192:	f003 0003 	and.w	r0, r3, #3
d0082196:	2803      	cmp	r0, #3
d0082198:	f47e ad60 	bne.w	d0080c5c <main+0x500>
d008219c:	e0a7      	b.n	d00822ee <main+0x1b92>
d008219e:	3901      	subs	r1, #1
d00821a0:	b289      	uxth	r1, r1
d00821a2:	8159      	strh	r1, [r3, #10]
d00821a4:	2900      	cmp	r1, #0
d00821a6:	f47f aa3f 	bne.w	d0081628 <main+0xecc>
d00821aa:	f7ff ba36 	b.w	d008161a <main+0xebe>
d00821ae:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d00821b2:	3a06      	subs	r2, #6
d00821b4:	f8dc c004 	ldr.w	ip, [ip, #4]
d00821b8:	b212      	sxth	r2, r2
d00821ba:	9700      	str	r7, [sp, #0]
d00821bc:	f8dc 9018 	ldr.w	r9, [ip, #24]
d00821c0:	47c8      	blx	r9
d00821c2:	f898 200c 	ldrb.w	r2, [r8, #12]
d00821c6:	f898 e00d 	ldrb.w	lr, [r8, #13]
d00821ca:	230b      	movs	r3, #11
d00821cc:	f898 c00e 	ldrb.w	ip, [r8, #14]
d00821d0:	4650      	mov	r0, sl
d00821d2:	ea42 210e 	orr.w	r1, r2, lr, lsl #8
d00821d6:	f898 900f 	ldrb.w	r9, [r8, #15]
d00821da:	f9b5 2002 	ldrsh.w	r2, [r5, #2]
d00821de:	ea41 4e0c 	orr.w	lr, r1, ip, lsl #16
d00821e2:	f9b5 1000 	ldrsh.w	r1, [r5]
d00821e6:	ea4e 6c09 	orr.w	ip, lr, r9, lsl #24
d00821ea:	f8dc c004 	ldr.w	ip, [ip, #4]
d00821ee:	9700      	str	r7, [sp, #0]
d00821f0:	f8dc 9018 	ldr.w	r9, [ip, #24]
d00821f4:	47c8      	blx	r9
d00821f6:	f898 200c 	ldrb.w	r2, [r8, #12]
d00821fa:	f898 100d 	ldrb.w	r1, [r8, #13]
d00821fe:	230b      	movs	r3, #11
d0082200:	f898 e00e 	ldrb.w	lr, [r8, #14]
d0082204:	4650      	mov	r0, sl
d0082206:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
d008220a:	886a      	ldrh	r2, [r5, #2]
d008220c:	f898 c00f 	ldrb.w	ip, [r8, #15]
d0082210:	ea41 4e0e 	orr.w	lr, r1, lr, lsl #16
d0082214:	3206      	adds	r2, #6
d0082216:	f9b5 1000 	ldrsh.w	r1, [r5]
d008221a:	f7ff bb80 	b.w	d008191e <main+0x11c2>
d008221e:	f1bc 0f0f 	cmp.w	ip, #15
d0082222:	d823      	bhi.n	d008226c <main+0x1b10>
d0082224:	f898 000c 	ldrb.w	r0, [r8, #12]
d0082228:	f01e 0f01 	tst.w	lr, #1
d008222c:	f898 300d 	ldrb.w	r3, [r8, #13]
d0082230:	f898 c00e 	ldrb.w	ip, [r8, #14]
d0082234:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
d0082238:	9105      	str	r1, [sp, #20]
d008223a:	f898 300f 	ldrb.w	r3, [r8, #15]
d008223e:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0082242:	9204      	str	r2, [sp, #16]
d0082244:	bf0c      	ite	eq
d0082246:	201f      	moveq	r0, #31
d0082248:	2030      	movne	r0, #48	; 0x30
d008224a:	e5bb      	b.n	d0081dc4 <main+0x1668>
d008224c:	d008a944 	.word	0xd008a944
d0082250:	d008ab20 	.word	0xd008ab20
d0082254:	d008a7e8 	.word	0xd008a7e8
d0082258:	d008ab18 	.word	0xd008ab18
d008225c:	d008a798 	.word	0xd008a798
d0082260:	d008a9e8 	.word	0xd008a9e8
d0082264:	d008adc0 	.word	0xd008adc0
d0082268:	d008ade0 	.word	0xd008ade0
d008226c:	f00e 0001 	and.w	r0, lr, #1
d0082270:	f1bc 0f18 	cmp.w	ip, #24
d0082274:	9105      	str	r1, [sp, #20]
d0082276:	f100 0018 	add.w	r0, r0, #24
d008227a:	9204      	str	r2, [sp, #16]
d008227c:	d80c      	bhi.n	d0082298 <main+0x1b3c>
d008227e:	f898 e00c 	ldrb.w	lr, [r8, #12]
d0082282:	f898 300d 	ldrb.w	r3, [r8, #13]
d0082286:	f898 c00e 	ldrb.w	ip, [r8, #14]
d008228a:	ea4e 2e03 	orr.w	lr, lr, r3, lsl #8
d008228e:	f898 300f 	ldrb.w	r3, [r8, #15]
d0082292:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d0082296:	e595      	b.n	d0081dc4 <main+0x1668>
d0082298:	f898 000c 	ldrb.w	r0, [r8, #12]
d008229c:	f01e 0f01 	tst.w	lr, #1
d00822a0:	f898 300d 	ldrb.w	r3, [r8, #13]
d00822a4:	f898 c00e 	ldrb.w	ip, [r8, #14]
d00822a8:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
d00822ac:	f898 300f 	ldrb.w	r3, [r8, #15]
d00822b0:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d00822b4:	bf0c      	ite	eq
d00822b6:	2014      	moveq	r0, #20
d00822b8:	2012      	movne	r0, #18
d00822ba:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d00822be:	685b      	ldr	r3, [r3, #4]
d00822c0:	68db      	ldr	r3, [r3, #12]
d00822c2:	4798      	blx	r3
d00822c4:	9905      	ldr	r1, [sp, #20]
d00822c6:	9a04      	ldr	r2, [sp, #16]
d00822c8:	e583      	b.n	d0081dd2 <main+0x1676>
d00822ca:	f898 1000 	ldrb.w	r1, [r8]
d00822ce:	f898 3001 	ldrb.w	r3, [r8, #1]
d00822d2:	f898 2002 	ldrb.w	r2, [r8, #2]
d00822d6:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00822da:	f898 3003 	ldrb.w	r3, [r8, #3]
d00822de:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00822e2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00822e6:	6a1b      	ldr	r3, [r3, #32]
d00822e8:	4798      	blx	r3
d00822ea:	0783      	lsls	r3, r0, #30
d00822ec:	d511      	bpl.n	d0082312 <main+0x1bb6>
d00822ee:	f898 1000 	ldrb.w	r1, [r8]
d00822f2:	f898 3001 	ldrb.w	r3, [r8, #1]
d00822f6:	f898 2002 	ldrb.w	r2, [r8, #2]
d00822fa:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00822fe:	f898 3003 	ldrb.w	r3, [r8, #3]
d0082302:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0082306:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008230a:	6a1b      	ldr	r3, [r3, #32]
d008230c:	4798      	blx	r3
d008230e:	07c2      	lsls	r2, r0, #31
d0082310:	d4db      	bmi.n	d00822ca <main+0x1b6e>
d0082312:	48a7      	ldr	r0, [pc, #668]	; (d00825b0 <main+0x1e54>)
d0082314:	2502      	movs	r5, #2
d0082316:	f001 faa1 	bl	d008385c <puts>
d008231a:	f898 300c 	ldrb.w	r3, [r8, #12]
d008231e:	f898 200d 	ldrb.w	r2, [r8, #13]
d0082322:	f898 100e 	ldrb.w	r1, [r8, #14]
d0082326:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008232a:	f898 200f 	ldrb.w	r2, [r8, #15]
d008232e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0082332:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0082336:	681b      	ldr	r3, [r3, #0]
d0082338:	68db      	ldr	r3, [r3, #12]
d008233a:	4798      	blx	r3
d008233c:	f898 400c 	ldrb.w	r4, [r8, #12]
d0082340:	f898 200d 	ldrb.w	r2, [r8, #13]
d0082344:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0082348:	f898 100e 	ldrb.w	r1, [r8, #14]
d008234c:	ea44 2402 	orr.w	r4, r4, r2, lsl #8
d0082350:	f898 000f 	ldrb.w	r0, [r8, #15]
d0082354:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0082358:	ea44 4401 	orr.w	r4, r4, r1, lsl #16
d008235c:	4619      	mov	r1, r3
d008235e:	ea44 6400 	orr.w	r4, r4, r0, lsl #24
d0082362:	4610      	mov	r0, r2
d0082364:	6824      	ldr	r4, [r4, #0]
d0082366:	9500      	str	r5, [sp, #0]
d0082368:	6964      	ldr	r4, [r4, #20]
d008236a:	47a0      	blx	r4
d008236c:	f898 3004 	ldrb.w	r3, [r8, #4]
d0082370:	f898 2005 	ldrb.w	r2, [r8, #5]
d0082374:	f898 1006 	ldrb.w	r1, [r8, #6]
d0082378:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008237c:	f898 2007 	ldrb.w	r2, [r8, #7]
d0082380:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0082384:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0082388:	685b      	ldr	r3, [r3, #4]
d008238a:	4798      	blx	r3
d008238c:	f898 300c 	ldrb.w	r3, [r8, #12]
d0082390:	f898 200d 	ldrb.w	r2, [r8, #13]
d0082394:	f898 100e 	ldrb.w	r1, [r8, #14]
d0082398:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008239c:	f898 200f 	ldrb.w	r2, [r8, #15]
d00823a0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00823a4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00823a8:	681b      	ldr	r3, [r3, #0]
d00823aa:	68db      	ldr	r3, [r3, #12]
d00823ac:	4798      	blx	r3
d00823ae:	f898 3000 	ldrb.w	r3, [r8]
d00823b2:	f898 2001 	ldrb.w	r2, [r8, #1]
d00823b6:	f898 1002 	ldrb.w	r1, [r8, #2]
d00823ba:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00823be:	f898 2003 	ldrb.w	r2, [r8, #3]
d00823c2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00823c6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00823ca:	685b      	ldr	r3, [r3, #4]
d00823cc:	4798      	blx	r3
d00823ce:	2000      	movs	r0, #0
d00823d0:	b027      	add	sp, #156	; 0x9c
d00823d2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00823d6:	4977      	ldr	r1, [pc, #476]	; (d00825b4 <main+0x1e58>)
d00823d8:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d00823dc:	f898 300f 	ldrb.w	r3, [r8, #15]
d00823e0:	6809      	ldr	r1, [r1, #0]
d00823e2:	4875      	ldr	r0, [pc, #468]	; (d00825b8 <main+0x1e5c>)
d00823e4:	e6ac      	b.n	d0082140 <main+0x19e4>
d00823e6:	2300      	movs	r3, #0
d00823e8:	4619      	mov	r1, r3
d00823ea:	6033      	str	r3, [r6, #0]
d00823ec:	e562      	b.n	d0081eb4 <main+0x1758>
d00823ee:	9b04      	ldr	r3, [sp, #16]
d00823f0:	2b1d      	cmp	r3, #29
d00823f2:	f77e afb6 	ble.w	d0081362 <main+0xc06>
d00823f6:	f1be 0f81 	cmp.w	lr, #129	; 0x81
d00823fa:	f63e afb2 	bhi.w	d0081362 <main+0xc06>
d00823fe:	9908      	ldr	r1, [sp, #32]
d0082400:	9a04      	ldr	r2, [sp, #16]
d0082402:	f891 002f 	ldrb.w	r0, [r1, #47]	; 0x2f
d0082406:	f102 051f 	add.w	r5, r2, #31
d008240a:	7c4a      	ldrb	r2, [r1, #17]
d008240c:	794f      	ldrb	r7, [r1, #5]
d008240e:	f891 c00b 	ldrb.w	ip, [r1, #11]
d0082412:	f891 b017 	ldrb.w	fp, [r1, #23]
d0082416:	7f4b      	ldrb	r3, [r1, #29]
d0082418:	9207      	str	r2, [sp, #28]
d008241a:	f891 2023 	ldrb.w	r2, [r1, #35]	; 0x23
d008241e:	f891 1029 	ldrb.w	r1, [r1, #41]	; 0x29
d0082422:	2800      	cmp	r0, #0
d0082424:	f000 86a5 	beq.w	d0083172 <main+0x2a16>
d0082428:	2900      	cmp	r1, #0
d008242a:	f000 86d4 	beq.w	d00831d6 <main+0x2a7a>
d008242e:	2a00      	cmp	r2, #0
d0082430:	f000 86ff 	beq.w	d0083232 <main+0x2ad6>
d0082434:	2b00      	cmp	r3, #0
d0082436:	f000 8727 	beq.w	d0083288 <main+0x2b2c>
d008243a:	f9ba 3000 	ldrsh.w	r3, [sl]
d008243e:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0082442:	da02      	bge.n	d008244a <main+0x1cee>
d0082444:	429d      	cmp	r5, r3
d0082446:	f2c0 850f 	blt.w	d0082e68 <main+0x270c>
d008244a:	f9ba 300c 	ldrsh.w	r3, [sl, #12]
d008244e:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0082452:	da02      	bge.n	d008245a <main+0x1cfe>
d0082454:	429d      	cmp	r5, r3
d0082456:	f2c0 8559 	blt.w	d0082f0c <main+0x27b0>
d008245a:	f9ba 3018 	ldrsh.w	r3, [sl, #24]
d008245e:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0082462:	da02      	bge.n	d008246a <main+0x1d0e>
d0082464:	429d      	cmp	r5, r3
d0082466:	f2c0 8518 	blt.w	d0082e9a <main+0x273e>
d008246a:	f9ba 3024 	ldrsh.w	r3, [sl, #36]	; 0x24
d008246e:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0082472:	da02      	bge.n	d008247a <main+0x1d1e>
d0082474:	429d      	cmp	r5, r3
d0082476:	f2c0 857c 	blt.w	d0082f72 <main+0x2816>
d008247a:	f9ba 3030 	ldrsh.w	r3, [sl, #48]	; 0x30
d008247e:	429d      	cmp	r5, r3
d0082480:	da03      	bge.n	d008248a <main+0x1d2e>
d0082482:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0082486:	f2c0 855a 	blt.w	d0082f3e <main+0x27e2>
d008248a:	2303      	movs	r3, #3
d008248c:	4a4b      	ldr	r2, [pc, #300]	; (d00825bc <main+0x1e60>)
d008248e:	7033      	strb	r3, [r6, #0]
d0082490:	6812      	ldr	r2, [r2, #0]
d0082492:	9205      	str	r2, [sp, #20]
d0082494:	f7fe bf65 	b.w	d0081362 <main+0xc06>
d0082498:	3202      	adds	r2, #2
d008249a:	4591      	cmp	r9, r2
d008249c:	f77e af40 	ble.w	d0081320 <main+0xbc4>
d00824a0:	1eab      	subs	r3, r5, #2
d00824a2:	3506      	adds	r5, #6
d00824a4:	f7fe bf35 	b.w	d0081312 <main+0xbb6>
d00824a8:	f5b2 7f8f 	cmp.w	r2, #286	; 0x11e
d00824ac:	f280 8472 	bge.w	d0082d94 <main+0x2638>
d00824b0:	1e93      	subs	r3, r2, #2
d00824b2:	f7fe bf29 	b.w	d0081308 <main+0xbac>
d00824b6:	9b04      	ldr	r3, [sp, #16]
d00824b8:	2b1d      	cmp	r3, #29
d00824ba:	f77e af1e 	ble.w	d00812fa <main+0xb9e>
d00824be:	f7fe bef0 	b.w	d00812a2 <main+0xb46>
d00824c2:	9b04      	ldr	r3, [sp, #16]
d00824c4:	2b1d      	cmp	r3, #29
d00824c6:	f73e af32 	bgt.w	d008132e <main+0xbd2>
d00824ca:	3302      	adds	r3, #2
d00824cc:	4a3c      	ldr	r2, [pc, #240]	; (d00825c0 <main+0x1e64>)
d00824ce:	b21b      	sxth	r3, r3
d00824d0:	2b1f      	cmp	r3, #31
d00824d2:	9304      	str	r3, [sp, #16]
d00824d4:	bf04      	itt	eq
d00824d6:	231e      	moveq	r3, #30
d00824d8:	9304      	streq	r3, [sp, #16]
d00824da:	8013      	strh	r3, [r2, #0]
d00824dc:	f7fe bf27 	b.w	d008132e <main+0xbd2>
d00824e0:	4836      	ldr	r0, [pc, #216]	; (d00825bc <main+0x1e60>)
d00824e2:	f243 0539 	movw	r5, #12345	; 0x3039
d00824e6:	4937      	ldr	r1, [pc, #220]	; (d00825c4 <main+0x1e68>)
d00824e8:	6806      	ldr	r6, [r0, #0]
d00824ea:	4b37      	ldr	r3, [pc, #220]	; (d00825c8 <main+0x1e6c>)
d00824ec:	fb01 5606 	mla	r6, r1, r6, r5
d00824f0:	4a36      	ldr	r2, [pc, #216]	; (d00825cc <main+0x1e70>)
d00824f2:	fb01 5e06 	mla	lr, r1, r6, r5
d00824f6:	0cb0      	lsrs	r0, r6, #18
d00824f8:	fb01 5b0e 	mla	fp, r1, lr, r5
d00824fc:	fba3 3000 	umull	r3, r0, r3, r0
d0082500:	4b33      	ldr	r3, [pc, #204]	; (d00825d0 <main+0x1e74>)
d0082502:	fb01 570b 	mla	r7, r1, fp, r5
d0082506:	ea4f 0950 	mov.w	r9, r0, lsr #1
d008250a:	f3cb 4005 	ubfx	r0, fp, #16, #6
d008250e:	fb01 5c07 	mla	ip, r1, r7, r5
d0082512:	0c3f      	lsrs	r7, r7, #16
d0082514:	f88a 0006 	strb.w	r0, [sl, #6]
d0082518:	fb01 510c 	mla	r1, r1, ip, r5
d008251c:	ea4f 4c1c 	mov.w	ip, ip, lsr #16
d0082520:	fba3 5307 	umull	r5, r3, r3, r7
d0082524:	482b      	ldr	r0, [pc, #172]	; (d00825d4 <main+0x1e78>)
d0082526:	fba2 520c 	umull	r5, r2, r2, ip
d008252a:	ea4f 459e 	mov.w	r5, lr, lsr #18
d008252e:	095b      	lsrs	r3, r3, #5
d0082530:	9105      	str	r1, [sp, #20]
d0082532:	fba0 b505 	umull	fp, r5, r0, r5
d0082536:	4821      	ldr	r0, [pc, #132]	; (d00825bc <main+0x1e60>)
d0082538:	0852      	lsrs	r2, r2, #1
d008253a:	f04f 0be4 	mov.w	fp, #228	; 0xe4
d008253e:	6001      	str	r1, [r0, #0]
d0082540:	20dc      	movs	r0, #220	; 0xdc
d0082542:	eb03 1303 	add.w	r3, r3, r3, lsl #4
d0082546:	fb00 f009 	mul.w	r0, r0, r9
d008254a:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d008254e:	ea4f 4911 	mov.w	r9, r1, lsr #16
d0082552:	4921      	ldr	r1, [pc, #132]	; (d00825d8 <main+0x1e7c>)
d0082554:	ebac 0202 	sub.w	r2, ip, r2
d0082558:	eba7 0343 	sub.w	r3, r7, r3, lsl #1
d008255c:	086d      	lsrs	r5, r5, #1
d008255e:	fba1 7109 	umull	r7, r1, r1, r9
d0082562:	ebc0 4016 	rsb	r0, r0, r6, lsr #16
d0082566:	f102 0c01 	add.w	ip, r2, #1
d008256a:	0909      	lsrs	r1, r1, #4
d008256c:	2296      	movs	r2, #150	; 0x96
d008256e:	f500 70fc 	add.w	r0, r0, #504	; 0x1f8
d0082572:	fb0b f505 	mul.w	r5, fp, r5
d0082576:	fb02 9111 	mls	r1, r2, r1, r9
d008257a:	330a      	adds	r3, #10
d008257c:	b202      	sxth	r2, r0
d008257e:	f88a c008 	strb.w	ip, [sl, #8]
d0082582:	ebc5 451e 	rsb	r5, r5, lr, lsr #16
d0082586:	315a      	adds	r1, #90	; 0x5a
d0082588:	f5b2 7f43 	cmp.w	r2, #780	; 0x30c
d008258c:	f88a 3007 	strb.w	r3, [sl, #7]
d0082590:	f105 052a 	add.w	r5, r5, #42	; 0x2a
d0082594:	f8aa 2000 	strh.w	r2, [sl]
d0082598:	f8aa 100a 	strh.w	r1, [sl, #10]
d008259c:	f8aa 5004 	strh.w	r5, [sl, #4]
d00825a0:	f6fe abff 	blt.w	d0080da2 <main+0x646>
d00825a4:	f44f 7243 	mov.w	r2, #780	; 0x30c
d00825a8:	f04f 3bff 	mov.w	fp, #4294967295	; 0xffffffff
d00825ac:	f7fe bbff 	b.w	d0080dae <main+0x652>
d00825b0:	d008a7b4 	.word	0xd008a7b4
d00825b4:	d008ade0 	.word	0xd008ade0
d00825b8:	d008adc0 	.word	0xd008adc0
d00825bc:	d008a960 	.word	0xd008a960
d00825c0:	d008a94a 	.word	0xd008a94a
d00825c4:	41c64e6d 	.word	0x41c64e6d
d00825c8:	094f2095 	.word	0x094f2095
d00825cc:	aaaaaaab 	.word	0xaaaaaaab
d00825d0:	f0f0f0f1 	.word	0xf0f0f0f1
d00825d4:	08fb823f 	.word	0x08fb823f
d00825d8:	1b4e81b5 	.word	0x1b4e81b5
d00825dc:	4adb      	ldr	r2, [pc, #876]	; (d008294c <main+0x21f0>)
d00825de:	255a      	movs	r5, #90	; 0x5a
d00825e0:	4cdb      	ldr	r4, [pc, #876]	; (d0082950 <main+0x21f4>)
d00825e2:	6810      	ldr	r0, [r2, #0]
d00825e4:	f243 0239 	movw	r2, #12345	; 0x3039
d00825e8:	4eda      	ldr	r6, [pc, #872]	; (d0082954 <main+0x21f8>)
d00825ea:	fb04 2000 	mla	r0, r4, r0, r2
d00825ee:	f8df a374 	ldr.w	sl, [pc, #884]	; d0082964 <main+0x2208>
d00825f2:	fb04 2b00 	mla	fp, r4, r0, r2
d00825f6:	ea4f 4950 	mov.w	r9, r0, lsr #17
d00825fa:	fb04 210b 	mla	r1, r4, fp, r2
d00825fe:	fba6 3909 	umull	r3, r9, r6, r9
d0082602:	fb04 2601 	mla	r6, r4, r1, r2
d0082606:	f3c1 4305 	ubfx	r3, r1, #16, #6
d008260a:	ea4f 1959 	mov.w	r9, r9, lsr #5
d008260e:	fb04 2706 	mla	r7, r4, r6, r2
d0082612:	930b      	str	r3, [sp, #44]	; 0x2c
d0082614:	0c33      	lsrs	r3, r6, #16
d0082616:	fb04 2107 	mla	r1, r4, r7, r2
d008261a:	ea4f 4c17 	mov.w	ip, r7, lsr #16
d008261e:	930d      	str	r3, [sp, #52]	; 0x34
d0082620:	fb05 f909 	mul.w	r9, r5, r9
d0082624:	461d      	mov	r5, r3
d0082626:	4bcc      	ldr	r3, [pc, #816]	; (d0082958 <main+0x21fc>)
d0082628:	fba3 7605 	umull	r7, r6, r3, r5
d008262c:	ebc9 4710 	rsb	r7, r9, r0, lsr #16
d0082630:	4620      	mov	r0, r4
d0082632:	fb04 2401 	mla	r4, r4, r1, r2
d0082636:	970a      	str	r7, [sp, #40]	; 0x28
d0082638:	0936      	lsrs	r6, r6, #4
d008263a:	4625      	mov	r5, r4
d008263c:	0c0c      	lsrs	r4, r1, #16
d008263e:	4601      	mov	r1, r0
d0082640:	ebc6 1606 	rsb	r6, r6, r6, lsl #4
d0082644:	9407      	str	r4, [sp, #28]
d0082646:	4cc5      	ldr	r4, [pc, #788]	; (d008295c <main+0x2200>)
d0082648:	fb00 2905 	mla	r9, r0, r5, r2
d008264c:	9505      	str	r5, [sp, #20]
d008264e:	fba4 e70c 	umull	lr, r7, r4, ip
d0082652:	4dc3      	ldr	r5, [pc, #780]	; (d0082960 <main+0x2204>)
d0082654:	ea4f 449b 	mov.w	r4, fp, lsr #18
d0082658:	fb00 2009 	mla	r0, r0, r9, r2
d008265c:	462b      	mov	r3, r5
d008265e:	087f      	lsrs	r7, r7, #1
d0082660:	fba5 e404 	umull	lr, r4, r5, r4
d0082664:	9d05      	ldr	r5, [sp, #20]
d0082666:	9006      	str	r0, [sp, #24]
d0082668:	0c6d      	lsrs	r5, r5, #17
d008266a:	48ba      	ldr	r0, [pc, #744]	; (d0082954 <main+0x21f8>)
d008266c:	0864      	lsrs	r4, r4, #1
d008266e:	fba0 e505 	umull	lr, r5, r0, r5
d0082672:	9806      	ldr	r0, [sp, #24]
d0082674:	4686      	mov	lr, r0
d0082676:	4608      	mov	r0, r1
d0082678:	096d      	lsrs	r5, r5, #5
d008267a:	fb01 2e0e 	mla	lr, r1, lr, r2
d008267e:	ea4f 4199 	mov.w	r1, r9, lsr #18
d0082682:	9108      	str	r1, [sp, #32]
d0082684:	21e4      	movs	r1, #228	; 0xe4
d0082686:	fb00 200e 	mla	r0, r0, lr, r2
d008268a:	ea4f 4e1e 	mov.w	lr, lr, lsr #16
d008268e:	fb01 f404 	mul.w	r4, r1, r4
d0082692:	9908      	ldr	r1, [sp, #32]
d0082694:	f8cd e03c 	str.w	lr, [sp, #60]	; 0x3c
d0082698:	fba3 e101 	umull	lr, r1, r3, r1
d008269c:	f103 5363 	add.w	r3, r3, #952107008	; 0x38c00000
d00826a0:	ebc4 441b 	rsb	r4, r4, fp, lsr #16
d00826a4:	f503 232c 	add.w	r3, r3, #704512	; 0xac000
d00826a8:	342a      	adds	r4, #42	; 0x2a
d00826aa:	f603 432e 	addw	r3, r3, #3118	; 0xc2e
d00826ae:	b224      	sxth	r4, r4
d00826b0:	fb03 2e00 	mla	lr, r3, r0, r2
d00826b4:	0c00      	lsrs	r0, r0, #16
d00826b6:	9008      	str	r0, [sp, #32]
d00826b8:	0848      	lsrs	r0, r1, #1
d00826ba:	215a      	movs	r1, #90	; 0x5a
d00826bc:	fb01 f505 	mul.w	r5, r1, r5
d00826c0:	fb03 210e 	mla	r1, r3, lr, r2
d00826c4:	ea4f 4e1e 	mov.w	lr, lr, lsr #16
d00826c8:	460b      	mov	r3, r1
d00826ca:	21e4      	movs	r1, #228	; 0xe4
d00826cc:	f8cd e040 	str.w	lr, [sp, #64]	; 0x40
d00826d0:	fb01 f000 	mul.w	r0, r1, r0
d00826d4:	469e      	mov	lr, r3
d00826d6:	eb07 0147 	add.w	r1, r7, r7, lsl #1
d00826da:	930c      	str	r3, [sp, #48]	; 0x30
d00826dc:	4b9c      	ldr	r3, [pc, #624]	; (d0082950 <main+0x21f4>)
d00826de:	ebc0 4019 	rsb	r0, r0, r9, lsr #16
d00826e2:	fb03 2e0e 	mla	lr, r3, lr, r2
d00826e6:	461f      	mov	r7, r3
d00826e8:	ebac 0301 	sub.w	r3, ip, r1
d00826ec:	990d      	ldr	r1, [sp, #52]	; 0x34
d00826ee:	fb07 2c0e 	mla	ip, r7, lr, r2
d00826f2:	302a      	adds	r0, #42	; 0x2a
d00826f4:	930e      	str	r3, [sp, #56]	; 0x38
d00826f6:	eba1 0646 	sub.w	r6, r1, r6, lsl #1
d00826fa:	9b05      	ldr	r3, [sp, #20]
d00826fc:	fb07 290c 	mla	r9, r7, ip, r2
d0082700:	ea4f 419e 	mov.w	r1, lr, lsr #18
d0082704:	360a      	adds	r6, #10
d0082706:	ebc5 4513 	rsb	r5, r5, r3, lsr #16
d008270a:	4b95      	ldr	r3, [pc, #596]	; (d0082960 <main+0x2204>)
d008270c:	f3cc 4c05 	ubfx	ip, ip, #16, #6
d0082710:	b200      	sxth	r0, r0
d0082712:	fba3 b101 	umull	fp, r1, r3, r1
d0082716:	4b8e      	ldr	r3, [pc, #568]	; (d0082950 <main+0x21f4>)
d0082718:	fb07 2b09 	mla	fp, r7, r9, r2
d008271c:	9f0a      	ldr	r7, [sp, #40]	; 0x28
d008271e:	ea4f 4919 	mov.w	r9, r9, lsr #16
d0082722:	f505 7515 	add.w	r5, r5, #596	; 0x254
d0082726:	0849      	lsrs	r1, r1, #1
d0082728:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
d008272c:	f507 7902 	add.w	r9, r7, #520	; 0x208
d0082730:	461f      	mov	r7, r3
d0082732:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
d0082736:	fb03 290b 	mla	r9, r3, fp, r2
d008273a:	23e4      	movs	r3, #228	; 0xe4
d008273c:	ea4f 4b1b 	mov.w	fp, fp, lsr #16
d0082740:	fb03 f101 	mul.w	r1, r3, r1
d0082744:	4b82      	ldr	r3, [pc, #520]	; (d0082950 <main+0x21f4>)
d0082746:	f8cd b048 	str.w	fp, [sp, #72]	; 0x48
d008274a:	ebc1 411e 	rsb	r1, r1, lr, lsr #16
d008274e:	fb07 2b09 	mla	fp, r7, r9, r2
d0082752:	9f0e      	ldr	r7, [sp, #56]	; 0x38
d0082754:	ea4f 4919 	mov.w	r9, r9, lsr #16
d0082758:	312a      	adds	r1, #42	; 0x2a
d008275a:	fb03 2e0b 	mla	lr, r3, fp, r2
d008275e:	f8cd b014 	str.w	fp, [sp, #20]
d0082762:	3701      	adds	r7, #1
d0082764:	910e      	str	r1, [sp, #56]	; 0x38
d0082766:	4673      	mov	r3, lr
d0082768:	9906      	ldr	r1, [sp, #24]
d008276a:	930d      	str	r3, [sp, #52]	; 0x34
d008276c:	f3c1 4e05 	ubfx	lr, r1, #16, #6
d0082770:	990b      	ldr	r1, [sp, #44]	; 0x2c
d0082772:	f8cd 904c 	str.w	r9, [sp, #76]	; 0x4c
d0082776:	f8cd e018 	str.w	lr, [sp, #24]
d008277a:	469e      	mov	lr, r3
d008277c:	4b74      	ldr	r3, [pc, #464]	; (d0082950 <main+0x21f4>)
d008277e:	f88a 1006 	strb.w	r1, [sl, #6]
d0082782:	fb03 2e0e 	mla	lr, r3, lr, r2
d0082786:	990a      	ldr	r1, [sp, #40]	; 0x28
d0082788:	fb03 2b0e 	mla	fp, r3, lr, r2
d008278c:	f3ce 4e05 	ubfx	lr, lr, #16, #6
d0082790:	f8aa 1000 	strh.w	r1, [sl]
d0082794:	fb03 290b 	mla	r9, r3, fp, r2
d0082798:	f9bd 1038 	ldrsh.w	r1, [sp, #56]	; 0x38
d008279c:	f88a 6007 	strb.w	r6, [sl, #7]
d00827a0:	ea4f 4b1b 	mov.w	fp, fp, lsr #16
d00827a4:	fb03 2609 	mla	r6, r3, r9, r2
d00827a8:	ea4f 4919 	mov.w	r9, r9, lsr #16
d00827ac:	f88a 7008 	strb.w	r7, [sl, #8]
d00827b0:	4f67      	ldr	r7, [pc, #412]	; (d0082950 <main+0x21f4>)
d00827b2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
d00827b6:	fb07 2906 	mla	r9, r7, r6, r2
d00827ba:	0c36      	lsrs	r6, r6, #16
d00827bc:	4b66      	ldr	r3, [pc, #408]	; (d0082958 <main+0x21fc>)
d00827be:	960b      	str	r6, [sp, #44]	; 0x2c
d00827c0:	9e07      	ldr	r6, [sp, #28]
d00827c2:	f8aa 500c 	strh.w	r5, [sl, #12]
d00827c6:	fba3 3606 	umull	r3, r6, r3, r6
d00827ca:	463b      	mov	r3, r7
d00827cc:	fb07 2709 	mla	r7, r7, r9, r2
d00827d0:	09b6      	lsrs	r6, r6, #6
d00827d2:	f88a c01e 	strb.w	ip, [sl, #30]
d00827d6:	fb03 2507 	mla	r5, r3, r7, r2
d00827da:	9b06      	ldr	r3, [sp, #24]
d00827dc:	ebc6 1606 	rsb	r6, r6, r6, lsl #4
d00827e0:	f88a e02a 	strb.w	lr, [sl, #42]	; 0x2a
d00827e4:	f88a 3012 	strb.w	r3, [sl, #18]
d00827e8:	9b07      	ldr	r3, [sp, #28]
d00827ea:	f8aa 0010 	strh.w	r0, [sl, #16]
d00827ee:	eba3 06c6 	sub.w	r6, r3, r6, lsl #3
d00827f2:	4b57      	ldr	r3, [pc, #348]	; (d0082950 <main+0x21f4>)
d00827f4:	f8aa 000e 	strh.w	r0, [sl, #14]
d00827f8:	fb03 2c05 	mla	ip, r3, r5, r2
d00827fc:	f3c5 4505 	ubfx	r5, r5, #16, #6
d0082800:	980d      	ldr	r0, [sp, #52]	; 0x34
d0082802:	363c      	adds	r6, #60	; 0x3c
d0082804:	950e      	str	r5, [sp, #56]	; 0x38
d0082806:	fb03 250c 	mla	r5, r3, ip, r2
d008280a:	ea4f 4c1c 	mov.w	ip, ip, lsr #16
d008280e:	4b50      	ldr	r3, [pc, #320]	; (d0082950 <main+0x21f4>)
d0082810:	f8cd c01c 	str.w	ip, [sp, #28]
d0082814:	fb03 2c05 	mla	ip, r3, r5, r2
d0082818:	4b4f      	ldr	r3, [pc, #316]	; (d0082958 <main+0x21fc>)
d008281a:	f8aa 101c 	strh.w	r1, [sl, #28]
d008281e:	f8cd c018 	str.w	ip, [sp, #24]
d0082822:	ea4f 4c15 	mov.w	ip, r5, lsr #16
d0082826:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
d0082828:	f8aa 101a 	strh.w	r1, [sl, #26]
d008282c:	0c81      	lsrs	r1, r0, #18
d008282e:	46ae      	mov	lr, r5
d0082830:	f8aa 4004 	strh.w	r4, [sl, #4]
d0082834:	f8aa 4002 	strh.w	r4, [sl, #2]
d0082838:	fba3 e20e 	umull	lr, r2, r3, lr
d008283c:	4c47      	ldr	r4, [pc, #284]	; (d008295c <main+0x2200>)
d008283e:	f8aa 600a 	strh.w	r6, [sl, #10]
d0082842:	26e4      	movs	r6, #228	; 0xe4
d0082844:	0912      	lsrs	r2, r2, #4
d0082846:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
d008284a:	eba5 0242 	sub.w	r2, r5, r2, lsl #1
d008284e:	4d44      	ldr	r5, [pc, #272]	; (d0082960 <main+0x2204>)
d0082850:	320a      	adds	r2, #10
d0082852:	fba5 e101 	umull	lr, r1, r5, r1
d0082856:	f88a 2013 	strb.w	r2, [sl, #19]
d008285a:	0849      	lsrs	r1, r1, #1
d008285c:	9a08      	ldr	r2, [sp, #32]
d008285e:	fb06 f101 	mul.w	r1, r6, r1
d0082862:	4696      	mov	lr, r2
d0082864:	ebc1 4110 	rsb	r1, r1, r0, lsr #16
d0082868:	fba4 e20e 	umull	lr, r2, r4, lr
d008286c:	9c08      	ldr	r4, [sp, #32]
d008286e:	312a      	adds	r1, #42	; 0x2a
d0082870:	0852      	lsrs	r2, r2, #1
d0082872:	b209      	sxth	r1, r1
d0082874:	eb02 0042 	add.w	r0, r2, r2, lsl #1
d0082878:	0cba      	lsrs	r2, r7, #18
d008287a:	f8aa 1028 	strh.w	r1, [sl, #40]	; 0x28
d008287e:	1a20      	subs	r0, r4, r0
d0082880:	9c10      	ldr	r4, [sp, #64]	; 0x40
d0082882:	fba5 e202 	umull	lr, r2, r5, r2
d0082886:	9d11      	ldr	r5, [sp, #68]	; 0x44
d0082888:	3001      	adds	r0, #1
d008288a:	f8aa 1026 	strh.w	r1, [sl, #38]	; 0x26
d008288e:	0852      	lsrs	r2, r2, #1
d0082890:	f88a 0014 	strb.w	r0, [sl, #20]
d0082894:	fba3 e004 	umull	lr, r0, r3, r4
d0082898:	46ae      	mov	lr, r5
d008289a:	fb06 f202 	mul.w	r2, r6, r2
d008289e:	4e2d      	ldr	r6, [pc, #180]	; (d0082954 <main+0x21f8>)
d00828a0:	0980      	lsrs	r0, r0, #6
d00828a2:	fba3 e10e 	umull	lr, r1, r3, lr
d00828a6:	ebc2 4217 	rsb	r2, r2, r7, lsr #16
d00828aa:	9b12      	ldr	r3, [sp, #72]	; 0x48
d00828ac:	ebc0 1000 	rsb	r0, r0, r0, lsl #4
d00828b0:	9f0c      	ldr	r7, [sp, #48]	; 0x30
d00828b2:	0909      	lsrs	r1, r1, #4
d00828b4:	469e      	mov	lr, r3
d00828b6:	eba4 00c0 	sub.w	r0, r4, r0, lsl #3
d00828ba:	4c28      	ldr	r4, [pc, #160]	; (d008295c <main+0x2200>)
d00828bc:	ebc1 1101 	rsb	r1, r1, r1, lsl #4
d00828c0:	322a      	adds	r2, #42	; 0x2a
d00828c2:	3048      	adds	r0, #72	; 0x48
d00828c4:	fba4 e40e 	umull	lr, r4, r4, lr
d00828c8:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
d00828cc:	f8aa 0016 	strh.w	r0, [sl, #22]
d00828d0:	0c78      	lsrs	r0, r7, #17
d00828d2:	310a      	adds	r1, #10
d00828d4:	0864      	lsrs	r4, r4, #1
d00828d6:	fba6 e500 	umull	lr, r5, r6, r0
d00828da:	9805      	ldr	r0, [sp, #20]
d00828dc:	b212      	sxth	r2, r2
d00828de:	f88a 101f 	strb.w	r1, [sl, #31]
d00828e2:	0c40      	lsrs	r0, r0, #17
d00828e4:	eb04 0444 	add.w	r4, r4, r4, lsl #1
d00828e8:	f8aa 2034 	strh.w	r2, [sl, #52]	; 0x34
d00828ec:	fba6 e100 	umull	lr, r1, r6, r0
d00828f0:	096d      	lsrs	r5, r5, #5
d00828f2:	205a      	movs	r0, #90	; 0x5a
d00828f4:	1b1c      	subs	r4, r3, r4
d00828f6:	f8aa 2032 	strh.w	r2, [sl, #50]	; 0x32
d00828fa:	0949      	lsrs	r1, r1, #5
d00828fc:	fb00 f505 	mul.w	r5, r0, r5
d0082900:	ea4f 4259 	mov.w	r2, r9, lsr #17
d0082904:	3401      	adds	r4, #1
d0082906:	fb00 f101 	mul.w	r1, r0, r1
d008290a:	fba6 e202 	umull	lr, r2, r6, r2
d008290e:	ebc5 4517 	rsb	r5, r5, r7, lsr #16
d0082912:	9e05      	ldr	r6, [sp, #20]
d0082914:	9f06      	ldr	r7, [sp, #24]
d0082916:	0952      	lsrs	r2, r2, #5
d0082918:	ebc1 4116 	rsb	r1, r1, r6, lsr #16
d008291c:	f88a 4020 	strb.w	r4, [sl, #32]
d0082920:	0c3b      	lsrs	r3, r7, #16
d0082922:	9c13      	ldr	r4, [sp, #76]	; 0x4c
d0082924:	f501 713b 	add.w	r1, r1, #748	; 0x2ec
d0082928:	f505 7528 	add.w	r5, r5, #672	; 0x2a0
d008292c:	46a6      	mov	lr, r4
d008292e:	9308      	str	r3, [sp, #32]
d0082930:	4b09      	ldr	r3, [pc, #36]	; (d0082958 <main+0x21fc>)
d0082932:	fb00 f202 	mul.w	r2, r0, r2
d0082936:	f8aa 1024 	strh.w	r1, [sl, #36]	; 0x24
d008293a:	fba3 e60e 	umull	lr, r6, r3, lr
d008293e:	4907      	ldr	r1, [pc, #28]	; (d008295c <main+0x2200>)
d0082940:	980a      	ldr	r0, [sp, #40]	; 0x28
d0082942:	fba3 e70b 	umull	lr, r7, r3, fp
d0082946:	f8aa 5018 	strh.w	r5, [sl, #24]
d008294a:	e00d      	b.n	d0082968 <main+0x220c>
d008294c:	d008a960 	.word	0xd008a960
d0082950:	41c64e6d 	.word	0x41c64e6d
d0082954:	b60b60b7 	.word	0xb60b60b7
d0082958:	88888889 	.word	0x88888889
d008295c:	aaaaaaab 	.word	0xaaaaaaab
d0082960:	08fb823f 	.word	0x08fb823f
d0082964:	d008a9ec 	.word	0xd008a9ec
d0082968:	09b6      	lsrs	r6, r6, #6
d008296a:	fba1 e50c 	umull	lr, r5, r1, ip
d008296e:	093f      	lsrs	r7, r7, #4
d0082970:	fba1 e000 	umull	lr, r0, r1, r0
d0082974:	990b      	ldr	r1, [sp, #44]	; 0x2c
d0082976:	ebc6 1606 	rsb	r6, r6, r6, lsl #4
d008297a:	fba3 1e01 	umull	r1, lr, r3, r1
d008297e:	9907      	ldr	r1, [sp, #28]
d0082980:	eba4 06c6 	sub.w	r6, r4, r6, lsl #3
d0082984:	fba3 4101 	umull	r4, r1, r3, r1
d0082988:	9c08      	ldr	r4, [sp, #32]
d008298a:	3654      	adds	r6, #84	; 0x54
d008298c:	0840      	lsrs	r0, r0, #1
d008298e:	fba3 4304 	umull	r4, r3, r3, r4
d0082992:	ea4f 1e9e 	mov.w	lr, lr, lsr #6
d0082996:	f8aa 6022 	strh.w	r6, [sl, #34]	; 0x22
d008299a:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d008299e:	099e      	lsrs	r6, r3, #6
d00829a0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d00829a2:	086d      	lsrs	r5, r5, #1
d00829a4:	1a18      	subs	r0, r3, r0
d00829a6:	0909      	lsrs	r1, r1, #4
d00829a8:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d00829aa:	ebce 1e0e 	rsb	lr, lr, lr, lsl #4
d00829ae:	ebc7 1707 	rsb	r7, r7, r7, lsl #4
d00829b2:	3001      	adds	r0, #1
d00829b4:	eba3 0ece 	sub.w	lr, r3, lr, lsl #3
d00829b8:	9b07      	ldr	r3, [sp, #28]
d00829ba:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d00829be:	f88a 002c 	strb.w	r0, [sl, #44]	; 0x2c
d00829c2:	ebc1 1101 	rsb	r1, r1, r1, lsl #4
d00829c6:	980e      	ldr	r0, [sp, #56]	; 0x38
d00829c8:	ebc6 1606 	rsb	r6, r6, r6, lsl #4
d00829cc:	ebac 0505 	sub.w	r5, ip, r5
d00829d0:	eba3 0141 	sub.w	r1, r3, r1, lsl #1
d00829d4:	9b08      	ldr	r3, [sp, #32]
d00829d6:	ebc2 4219 	rsb	r2, r2, r9, lsr #16
d00829da:	3501      	adds	r5, #1
d00829dc:	ebab 0747 	sub.w	r7, fp, r7, lsl #1
d00829e0:	310a      	adds	r1, #10
d00829e2:	eba3 04c6 	sub.w	r4, r3, r6, lsl #3
d00829e6:	f502 724e 	add.w	r2, r2, #824	; 0x338
d00829ea:	4bad      	ldr	r3, [pc, #692]	; (d0082ca0 <main+0x2544>)
d00829ec:	370a      	adds	r7, #10
d00829ee:	4ead      	ldr	r6, [pc, #692]	; (d0082ca4 <main+0x2548>)
d00829f0:	f10e 0e60 	add.w	lr, lr, #96	; 0x60
d00829f4:	9308      	str	r3, [sp, #32]
d00829f6:	f104 0c6c 	add.w	ip, r4, #108	; 0x6c
d00829fa:	960b      	str	r6, [sp, #44]	; 0x2c
d00829fc:	2601      	movs	r6, #1
d00829fe:	f8aa 2030 	strh.w	r2, [sl, #48]	; 0x30
d0082a02:	f88a 702b 	strb.w	r7, [sl, #43]	; 0x2b
d0082a06:	f8aa e02e 	strh.w	lr, [sl, #46]	; 0x2e
d0082a0a:	f88a 0036 	strb.w	r0, [sl, #54]	; 0x36
d0082a0e:	f88a 5038 	strb.w	r5, [sl, #56]	; 0x38
d0082a12:	9f06      	ldr	r7, [sp, #24]
d0082a14:	f88a 1037 	strb.w	r1, [sl, #55]	; 0x37
d0082a18:	9904      	ldr	r1, [sp, #16]
d0082a1a:	4ca3      	ldr	r4, [pc, #652]	; (d0082ca8 <main+0x254c>)
d0082a1c:	7159      	strb	r1, [r3, #5]
d0082a1e:	72d9      	strb	r1, [r3, #11]
d0082a20:	7459      	strb	r1, [r3, #17]
d0082a22:	75d9      	strb	r1, [r3, #23]
d0082a24:	7759      	strb	r1, [r3, #29]
d0082a26:	f883 1023 	strb.w	r1, [r3, #35]	; 0x23
d0082a2a:	f883 1029 	strb.w	r1, [r3, #41]	; 0x29
d0082a2e:	f883 102f 	strb.w	r1, [r3, #47]	; 0x2f
d0082a32:	4a9e      	ldr	r2, [pc, #632]	; (d0082cac <main+0x2550>)
d0082a34:	4b9b      	ldr	r3, [pc, #620]	; (d0082ca4 <main+0x2548>)
d0082a36:	6017      	str	r7, [r2, #0]
d0082a38:	7199      	strb	r1, [r3, #6]
d0082a3a:	7399      	strb	r1, [r3, #14]
d0082a3c:	7599      	strb	r1, [r3, #22]
d0082a3e:	7799      	strb	r1, [r3, #30]
d0082a40:	f883 1026 	strb.w	r1, [r3, #38]	; 0x26
d0082a44:	f883 102e 	strb.w	r1, [r3, #46]	; 0x2e
d0082a48:	f883 1036 	strb.w	r1, [r3, #54]	; 0x36
d0082a4c:	f8aa c03a 	strh.w	ip, [sl, #58]	; 0x3a
d0082a50:	7221      	strb	r1, [r4, #8]
d0082a52:	74a1      	strb	r1, [r4, #18]
d0082a54:	7721      	strb	r1, [r4, #28]
d0082a56:	f884 1026 	strb.w	r1, [r4, #38]	; 0x26
d0082a5a:	f884 1030 	strb.w	r1, [r4, #48]	; 0x30
d0082a5e:	f884 103a 	strb.w	r1, [r4, #58]	; 0x3a
d0082a62:	f884 1044 	strb.w	r1, [r4, #68]	; 0x44
d0082a66:	f884 104e 	strb.w	r1, [r4, #78]	; 0x4e
d0082a6a:	f884 1058 	strb.w	r1, [r4, #88]	; 0x58
d0082a6e:	f884 1062 	strb.w	r1, [r4, #98]	; 0x62
d0082a72:	f884 106c 	strb.w	r1, [r4, #108]	; 0x6c
d0082a76:	f884 1076 	strb.w	r1, [r4, #118]	; 0x76
d0082a7a:	f883 103e 	strb.w	r1, [r3, #62]	; 0x3e
d0082a7e:	4b8c      	ldr	r3, [pc, #560]	; (d0082cb0 <main+0x2554>)
d0082a80:	701e      	strb	r6, [r3, #0]
d0082a82:	f7fe b932 	b.w	d0080cea <main+0x58e>
d0082a86:	f44f 7270 	mov.w	r2, #960	; 0x3c0
d0082a8a:	4611      	mov	r1, r2
d0082a8c:	801a      	strh	r2, [r3, #0]
d0082a8e:	f7fe b935 	b.w	d0080cfc <main+0x5a0>
d0082a92:	9a04      	ldr	r2, [sp, #16]
d0082a94:	4671      	mov	r1, lr
d0082a96:	4b84      	ldr	r3, [pc, #528]	; (d0082ca8 <main+0x254c>)
d0082a98:	f102 0e1e 	add.w	lr, r2, #30
d0082a9c:	f109 0210 	add.w	r2, r9, #16
d0082aa0:	468c      	mov	ip, r1
d0082aa2:	9407      	str	r4, [sp, #28]
d0082aa4:	920a      	str	r2, [sp, #40]	; 0x28
d0082aa6:	e016      	b.n	d0082ad6 <main+0x237a>
d0082aa8:	1c94      	adds	r4, r2, #2
d0082aaa:	bfac      	ite	ge
d0082aac:	2700      	movge	r7, #0
d0082aae:	2701      	movlt	r7, #1
d0082ab0:	bb2f      	cbnz	r7, d0082afe <main+0x23a2>
d0082ab2:	4596      	cmp	lr, r2
d0082ab4:	f102 0401 	add.w	r4, r2, #1
d0082ab8:	db09      	blt.n	d0082ace <main+0x2372>
d0082aba:	9a04      	ldr	r2, [sp, #16]
d0082abc:	42a2      	cmp	r2, r4
d0082abe:	dc06      	bgt.n	d0082ace <main+0x2372>
d0082ac0:	9c0a      	ldr	r4, [sp, #40]	; 0x28
d0082ac2:	1c42      	adds	r2, r0, #1
d0082ac4:	4284      	cmp	r4, r0
d0082ac6:	db02      	blt.n	d0082ace <main+0x2372>
d0082ac8:	4591      	cmp	r9, r2
d0082aca:	f340 830a 	ble.w	d00830e2 <main+0x2986>
d0082ace:	3101      	adds	r1, #1
d0082ad0:	330a      	adds	r3, #10
d0082ad2:	290c      	cmp	r1, #12
d0082ad4:	d019      	beq.n	d0082b0a <main+0x23ae>
d0082ad6:	7a1a      	ldrb	r2, [r3, #8]
d0082ad8:	2a00      	cmp	r2, #0
d0082ada:	d0f8      	beq.n	d0082ace <main+0x2372>
d0082adc:	885f      	ldrh	r7, [r3, #2]
d0082ade:	88d8      	ldrh	r0, [r3, #6]
d0082ae0:	881a      	ldrh	r2, [r3, #0]
d0082ae2:	4407      	add	r7, r0
d0082ae4:	8898      	ldrh	r0, [r3, #4]
d0082ae6:	b23f      	sxth	r7, r7
d0082ae8:	4402      	add	r2, r0
d0082aea:	1138      	asrs	r0, r7, #4
d0082aec:	805f      	strh	r7, [r3, #2]
d0082aee:	b212      	sxth	r2, r2
d0082af0:	f1a0 072a 	sub.w	r7, r0, #42	; 0x2a
d0082af4:	801a      	strh	r2, [r3, #0]
d0082af6:	1112      	asrs	r2, r2, #4
d0082af8:	f5b7 7f82 	cmp.w	r7, #260	; 0x104
d0082afc:	d9d4      	bls.n	d0082aa8 <main+0x234c>
d0082afe:	3101      	adds	r1, #1
d0082b00:	f883 c008 	strb.w	ip, [r3, #8]
d0082b04:	330a      	adds	r3, #10
d0082b06:	290c      	cmp	r1, #12
d0082b08:	d1e5      	bne.n	d0082ad6 <main+0x237a>
d0082b0a:	9b04      	ldr	r3, [sp, #16]
d0082b0c:	9c07      	ldr	r4, [sp, #28]
d0082b0e:	2b1d      	cmp	r3, #29
d0082b10:	f77e aec6 	ble.w	d00818a0 <main+0x1144>
d0082b14:	4619      	mov	r1, r3
d0082b16:	f9ba 3000 	ldrsh.w	r3, [sl]
d0082b1a:	f103 021f 	add.w	r2, r3, #31
d0082b1e:	4291      	cmp	r1, r2
d0082b20:	dc09      	bgt.n	d0082b36 <main+0x23da>
d0082b22:	f101 021e 	add.w	r2, r1, #30
d0082b26:	429a      	cmp	r2, r3
d0082b28:	db05      	blt.n	d0082b36 <main+0x23da>
d0082b2a:	990c      	ldr	r1, [sp, #48]	; 0x30
d0082b2c:	460a      	mov	r2, r1
d0082b2e:	321f      	adds	r2, #31
d0082b30:	454a      	cmp	r2, r9
d0082b32:	f280 8191 	bge.w	d0082e58 <main+0x26fc>
d0082b36:	f9ba 300c 	ldrsh.w	r3, [sl, #12]
d0082b3a:	9904      	ldr	r1, [sp, #16]
d0082b3c:	f103 021f 	add.w	r2, r3, #31
d0082b40:	4291      	cmp	r1, r2
d0082b42:	dc09      	bgt.n	d0082b58 <main+0x23fc>
d0082b44:	f101 021e 	add.w	r2, r1, #30
d0082b48:	4293      	cmp	r3, r2
d0082b4a:	dc05      	bgt.n	d0082b58 <main+0x23fc>
d0082b4c:	990e      	ldr	r1, [sp, #56]	; 0x38
d0082b4e:	460a      	mov	r2, r1
d0082b50:	321f      	adds	r2, #31
d0082b52:	454a      	cmp	r2, r9
d0082b54:	f280 8176 	bge.w	d0082e44 <main+0x26e8>
d0082b58:	f9ba 3018 	ldrsh.w	r3, [sl, #24]
d0082b5c:	9904      	ldr	r1, [sp, #16]
d0082b5e:	f103 021f 	add.w	r2, r3, #31
d0082b62:	4291      	cmp	r1, r2
d0082b64:	dc09      	bgt.n	d0082b7a <main+0x241e>
d0082b66:	f101 021e 	add.w	r2, r1, #30
d0082b6a:	4293      	cmp	r3, r2
d0082b6c:	dc05      	bgt.n	d0082b7a <main+0x241e>
d0082b6e:	990f      	ldr	r1, [sp, #60]	; 0x3c
d0082b70:	460a      	mov	r2, r1
d0082b72:	321f      	adds	r2, #31
d0082b74:	454a      	cmp	r2, r9
d0082b76:	f280 815b 	bge.w	d0082e30 <main+0x26d4>
d0082b7a:	f9ba 3024 	ldrsh.w	r3, [sl, #36]	; 0x24
d0082b7e:	9904      	ldr	r1, [sp, #16]
d0082b80:	f103 021f 	add.w	r2, r3, #31
d0082b84:	4291      	cmp	r1, r2
d0082b86:	dc09      	bgt.n	d0082b9c <main+0x2440>
d0082b88:	f101 021e 	add.w	r2, r1, #30
d0082b8c:	4293      	cmp	r3, r2
d0082b8e:	dc05      	bgt.n	d0082b9c <main+0x2440>
d0082b90:	9910      	ldr	r1, [sp, #64]	; 0x40
d0082b92:	460a      	mov	r2, r1
d0082b94:	321f      	adds	r2, #31
d0082b96:	454a      	cmp	r2, r9
d0082b98:	f280 8140 	bge.w	d0082e1c <main+0x26c0>
d0082b9c:	f9ba 3030 	ldrsh.w	r3, [sl, #48]	; 0x30
d0082ba0:	9904      	ldr	r1, [sp, #16]
d0082ba2:	f103 021f 	add.w	r2, r3, #31
d0082ba6:	4291      	cmp	r1, r2
d0082ba8:	f73e ae7a 	bgt.w	d00818a0 <main+0x1144>
d0082bac:	460a      	mov	r2, r1
d0082bae:	321e      	adds	r2, #30
d0082bb0:	4293      	cmp	r3, r2
d0082bb2:	f73e ae75 	bgt.w	d00818a0 <main+0x1144>
d0082bb6:	9a0d      	ldr	r2, [sp, #52]	; 0x34
d0082bb8:	321f      	adds	r2, #31
d0082bba:	454a      	cmp	r2, r9
d0082bbc:	f6fe ae70 	blt.w	d00818a0 <main+0x1144>
d0082bc0:	f109 0210 	add.w	r2, r9, #16
d0082bc4:	990d      	ldr	r1, [sp, #52]	; 0x34
d0082bc6:	4291      	cmp	r1, r2
d0082bc8:	f73e ae6a 	bgt.w	d00818a0 <main+0x1144>
d0082bcc:	9a0d      	ldr	r2, [sp, #52]	; 0x34
d0082bce:	f04f 0904 	mov.w	r9, #4
d0082bd2:	920c      	str	r2, [sp, #48]	; 0x30
d0082bd4:	4f37      	ldr	r7, [pc, #220]	; (d0082cb4 <main+0x2558>)
d0082bd6:	2296      	movs	r2, #150	; 0x96
d0082bd8:	4837      	ldr	r0, [pc, #220]	; (d0082cb8 <main+0x255c>)
d0082bda:	f64f 7ce1 	movw	ip, #65505	; 0xffe1
d0082bde:	8839      	ldrh	r1, [r7, #0]
d0082be0:	7002      	strb	r2, [r0, #0]
d0082be2:	2232      	movs	r2, #50	; 0x32
d0082be4:	4835      	ldr	r0, [pc, #212]	; (d0082cbc <main+0x2560>)
d0082be6:	3101      	adds	r1, #1
d0082be8:	9707      	str	r7, [sp, #28]
d0082bea:	f8a0 c000 	strh.w	ip, [r0]
d0082bee:	4834      	ldr	r0, [pc, #208]	; (d0082cc0 <main+0x2564>)
d0082bf0:	8039      	strh	r1, [r7, #0]
d0082bf2:	7002      	strb	r2, [r0, #0]
d0082bf4:	2200      	movs	r2, #0
d0082bf6:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
d0082bf8:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
d0082bfc:	7988      	ldrb	r0, [r1, #6]
d0082bfe:	2800      	cmp	r0, #0
d0082c00:	f000 83ba 	beq.w	d0083378 <main+0x2c1c>
d0082c04:	3201      	adds	r2, #1
d0082c06:	2a08      	cmp	r2, #8
d0082c08:	d1f6      	bne.n	d0082bf8 <main+0x249c>
d0082c0a:	2200      	movs	r2, #0
d0082c0c:	980b      	ldr	r0, [sp, #44]	; 0x2c
d0082c0e:	eb00 01c2 	add.w	r1, r0, r2, lsl #3
d0082c12:	798f      	ldrb	r7, [r1, #6]
d0082c14:	2f00      	cmp	r7, #0
d0082c16:	f000 8391 	beq.w	d008333c <main+0x2be0>
d0082c1a:	3201      	adds	r2, #1
d0082c1c:	2a08      	cmp	r2, #8
d0082c1e:	d1f6      	bne.n	d0082c0e <main+0x24b2>
d0082c20:	4b22      	ldr	r3, [pc, #136]	; (d0082cac <main+0x2550>)
d0082c22:	21a0      	movs	r1, #160	; 0xa0
d0082c24:	4827      	ldr	r0, [pc, #156]	; (d0082cc4 <main+0x2568>)
d0082c26:	270c      	movs	r7, #12
d0082c28:	681a      	ldr	r2, [r3, #0]
d0082c2a:	f243 0339 	movw	r3, #12345	; 0x3039
d0082c2e:	fb07 f709 	mul.w	r7, r7, r9
d0082c32:	f04f 0ce4 	mov.w	ip, #228	; 0xe4
d0082c36:	fb00 3e02 	mla	lr, r0, r2, r3
d0082c3a:	f04f 09b4 	mov.w	r9, #180	; 0xb4
d0082c3e:	fb00 320e 	mla	r2, r0, lr, r3
d0082c42:	ea4f 4e1e 	mov.w	lr, lr, lsr #16
d0082c46:	fb00 3302 	mla	r3, r0, r2, r3
d0082c4a:	0c12      	lsrs	r2, r2, #16
d0082c4c:	0c18      	lsrs	r0, r3, #16
d0082c4e:	9204      	str	r2, [sp, #16]
d0082c50:	4a16      	ldr	r2, [pc, #88]	; (d0082cac <main+0x2550>)
d0082c52:	6013      	str	r3, [r2, #0]
d0082c54:	9a08      	ldr	r2, [sp, #32]
d0082c56:	fbb0 f3f1 	udiv	r3, r0, r1
d0082c5a:	fb01 0313 	mls	r3, r1, r3, r0
d0082c5e:	2100      	movs	r1, #0
d0082c60:	eb0a 0007 	add.w	r0, sl, r7
d0082c64:	3378      	adds	r3, #120	; 0x78
d0082c66:	7151      	strb	r1, [r2, #5]
d0082c68:	72d1      	strb	r1, [r2, #11]
d0082c6a:	7451      	strb	r1, [r2, #17]
d0082c6c:	75d1      	strb	r1, [r2, #23]
d0082c6e:	7751      	strb	r1, [r2, #29]
d0082c70:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
d0082c74:	f882 1029 	strb.w	r1, [r2, #41]	; 0x29
d0082c78:	f882 102f 	strb.w	r1, [r2, #47]	; 0x2f
d0082c7c:	9a04      	ldr	r2, [sp, #16]
d0082c7e:	8143      	strh	r3, [r0, #10]
d0082c80:	fbb2 f1fc 	udiv	r1, r2, ip
d0082c84:	fbbe f3f9 	udiv	r3, lr, r9
d0082c88:	fb0c 2211 	mls	r2, ip, r1, r2
d0082c8c:	fb09 e313 	mls	r3, r9, r3, lr
d0082c90:	322a      	adds	r2, #42	; 0x2a
d0082c92:	f203 2326 	addw	r3, r3, #550	; 0x226
d0082c96:	8082      	strh	r2, [r0, #4]
d0082c98:	f82a 3007 	strh.w	r3, [sl, r7]
d0082c9c:	f7fe be02 	b.w	d00818a4 <main+0x1148>
d0082ca0:	d008aae4 	.word	0xd008aae4
d0082ca4:	d008aaa0 	.word	0xd008aaa0
d0082ca8:	d008aa28 	.word	0xd008aa28
d0082cac:	d008a960 	.word	0xd008a960
d0082cb0:	d008aae0 	.word	0xd008aae0
d0082cb4:	d008ab14 	.word	0xd008ab14
d0082cb8:	d008ab24 	.word	0xd008ab24
d0082cbc:	d008a94a 	.word	0xd008a94a
d0082cc0:	d008ab25 	.word	0xd008ab25
d0082cc4:	41c64e6d 	.word	0x41c64e6d
d0082cc8:	2f00      	cmp	r7, #0
d0082cca:	f000 816b 	beq.w	d0082fa4 <main+0x2848>
d0082cce:	7ca0      	ldrb	r0, [r4, #18]
d0082cd0:	2800      	cmp	r0, #0
d0082cd2:	f000 81ae 	beq.w	d0083032 <main+0x28d6>
d0082cd6:	7f20      	ldrb	r0, [r4, #28]
d0082cd8:	2800      	cmp	r0, #0
d0082cda:	f000 81d4 	beq.w	d0083086 <main+0x292a>
d0082cde:	f894 0026 	ldrb.w	r0, [r4, #38]	; 0x26
d0082ce2:	2800      	cmp	r0, #0
d0082ce4:	f000 81d2 	beq.w	d008308c <main+0x2930>
d0082ce8:	f894 0030 	ldrb.w	r0, [r4, #48]	; 0x30
d0082cec:	2800      	cmp	r0, #0
d0082cee:	f000 81d0 	beq.w	d0083092 <main+0x2936>
d0082cf2:	f894 003a 	ldrb.w	r0, [r4, #58]	; 0x3a
d0082cf6:	2800      	cmp	r0, #0
d0082cf8:	f000 81ce 	beq.w	d0083098 <main+0x293c>
d0082cfc:	f894 0044 	ldrb.w	r0, [r4, #68]	; 0x44
d0082d00:	2800      	cmp	r0, #0
d0082d02:	f000 81cc 	beq.w	d008309e <main+0x2942>
d0082d06:	f894 004e 	ldrb.w	r0, [r4, #78]	; 0x4e
d0082d0a:	2800      	cmp	r0, #0
d0082d0c:	f000 81ca 	beq.w	d00830a4 <main+0x2948>
d0082d10:	f894 0058 	ldrb.w	r0, [r4, #88]	; 0x58
d0082d14:	2800      	cmp	r0, #0
d0082d16:	f000 81c8 	beq.w	d00830aa <main+0x294e>
d0082d1a:	f894 0062 	ldrb.w	r0, [r4, #98]	; 0x62
d0082d1e:	2800      	cmp	r0, #0
d0082d20:	f000 81c6 	beq.w	d00830b0 <main+0x2954>
d0082d24:	f894 006c 	ldrb.w	r0, [r4, #108]	; 0x6c
d0082d28:	2800      	cmp	r0, #0
d0082d2a:	f000 81d4 	beq.w	d00830d6 <main+0x297a>
d0082d2e:	f894 0076 	ldrb.w	r0, [r4, #118]	; 0x76
d0082d32:	2800      	cmp	r0, #0
d0082d34:	f000 81d2 	beq.w	d00830dc <main+0x2980>
d0082d38:	9905      	ldr	r1, [sp, #20]
d0082d3a:	f243 0c39 	movw	ip, #12345	; 0x3039
d0082d3e:	4608      	mov	r0, r1
d0082d40:	49bd      	ldr	r1, [pc, #756]	; (d0083038 <main+0x28dc>)
d0082d42:	fb01 c100 	mla	r1, r1, r0, ip
d0082d46:	4608      	mov	r0, r1
d0082d48:	9105      	str	r1, [sp, #20]
d0082d4a:	eb02 01c2 	add.w	r1, r2, r2, lsl #3
d0082d4e:	ea4f 4c10 	mov.w	ip, r0, lsr #16
d0082d52:	48ba      	ldr	r0, [pc, #744]	; (d008303c <main+0x28e0>)
d0082d54:	315f      	adds	r1, #95	; 0x5f
d0082d56:	910a      	str	r1, [sp, #40]	; 0x28
d0082d58:	fba0 100c 	umull	r1, r0, r0, ip
d0082d5c:	21aa      	movs	r1, #170	; 0xaa
d0082d5e:	09c0      	lsrs	r0, r0, #7
d0082d60:	fb01 c010 	mls	r0, r1, r0, ip
d0082d64:	990a      	ldr	r1, [sp, #40]	; 0x28
d0082d66:	4401      	add	r1, r0
d0082d68:	8159      	strh	r1, [r3, #10]
d0082d6a:	f7fe bc5d 	b.w	d0081628 <main+0xecc>
d0082d6e:	4613      	mov	r3, r2
d0082d70:	f7fe b9e5 	b.w	d008113e <main+0x9e2>
d0082d74:	461a      	mov	r2, r3
d0082d76:	f7fe b956 	b.w	d0081026 <main+0x8ca>
d0082d7a:	4613      	mov	r3, r2
d0082d7c:	f7fe b8a3 	b.w	d0080ec6 <main+0x76a>
d0082d80:	9b07      	ldr	r3, [sp, #28]
d0082d82:	f1bb 0f00 	cmp.w	fp, #0
d0082d86:	bfb4      	ite	lt
d0082d88:	2300      	movlt	r3, #0
d0082d8a:	f003 0301 	andge.w	r3, r3, #1
d0082d8e:	9307      	str	r3, [sp, #28]
d0082d90:	f7fe ba61 	b.w	d0081256 <main+0xafa>
d0082d94:	f240 111d 	movw	r1, #285	; 0x11d
d0082d98:	48a9      	ldr	r0, [pc, #676]	; (d0083040 <main+0x28e4>)
d0082d9a:	f240 131b 	movw	r3, #283	; 0x11b
d0082d9e:	460a      	mov	r2, r1
d0082da0:	8001      	strh	r1, [r0, #0]
d0082da2:	f7fe bab1 	b.w	d0081308 <main+0xbac>
d0082da6:	2300      	movs	r3, #0
d0082da8:	7723      	strb	r3, [r4, #28]
d0082daa:	f7fe bc8a 	b.w	d00816c2 <main+0xf66>
d0082dae:	2300      	movs	r3, #0
d0082db0:	f884 3026 	strb.w	r3, [r4, #38]	; 0x26
d0082db4:	f7fe bc9c 	b.w	d00816f0 <main+0xf94>
d0082db8:	2300      	movs	r3, #0
d0082dba:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
d0082dbe:	f7fe bcae 	b.w	d008171e <main+0xfc2>
d0082dc2:	2300      	movs	r3, #0
d0082dc4:	f884 303a 	strb.w	r3, [r4, #58]	; 0x3a
d0082dc8:	f7fe bcc0 	b.w	d008174c <main+0xff0>
d0082dcc:	2300      	movs	r3, #0
d0082dce:	74a3      	strb	r3, [r4, #18]
d0082dd0:	f7fe bc61 	b.w	d0081696 <main+0xf3a>
d0082dd4:	2300      	movs	r3, #0
d0082dd6:	7223      	strb	r3, [r4, #8]
d0082dd8:	f7fe bc47 	b.w	d008166a <main+0xf0e>
d0082ddc:	2300      	movs	r3, #0
d0082dde:	f884 3044 	strb.w	r3, [r4, #68]	; 0x44
d0082de2:	f7fe bccc 	b.w	d008177e <main+0x1022>
d0082de6:	2300      	movs	r3, #0
d0082de8:	f884 304e 	strb.w	r3, [r4, #78]	; 0x4e
d0082dec:	f7fe bce4 	b.w	d00817b8 <main+0x105c>
d0082df0:	2300      	movs	r3, #0
d0082df2:	f884 3058 	strb.w	r3, [r4, #88]	; 0x58
d0082df6:	f7fe bcfc 	b.w	d00817f2 <main+0x1096>
d0082dfa:	2300      	movs	r3, #0
d0082dfc:	f884 3062 	strb.w	r3, [r4, #98]	; 0x62
d0082e00:	f7fe bd14 	b.w	d008182c <main+0x10d0>
d0082e04:	2300      	movs	r3, #0
d0082e06:	f884 306c 	strb.w	r3, [r4, #108]	; 0x6c
d0082e0a:	f7fe bd2c 	b.w	d0081866 <main+0x110a>
d0082e0e:	2300      	movs	r3, #0
d0082e10:	4a8c      	ldr	r2, [pc, #560]	; (d0083044 <main+0x28e8>)
d0082e12:	f884 3076 	strb.w	r3, [r4, #118]	; 0x76
d0082e16:	9207      	str	r2, [sp, #28]
d0082e18:	f7fe bd44 	b.w	d00818a4 <main+0x1148>
d0082e1c:	f109 0210 	add.w	r2, r9, #16
d0082e20:	4291      	cmp	r1, r2
d0082e22:	f73f aebb 	bgt.w	d0082b9c <main+0x2440>
d0082e26:	9a10      	ldr	r2, [sp, #64]	; 0x40
d0082e28:	f04f 0903 	mov.w	r9, #3
d0082e2c:	920c      	str	r2, [sp, #48]	; 0x30
d0082e2e:	e6d1      	b.n	d0082bd4 <main+0x2478>
d0082e30:	f109 0210 	add.w	r2, r9, #16
d0082e34:	4291      	cmp	r1, r2
d0082e36:	f73f aea0 	bgt.w	d0082b7a <main+0x241e>
d0082e3a:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
d0082e3c:	f04f 0902 	mov.w	r9, #2
d0082e40:	920c      	str	r2, [sp, #48]	; 0x30
d0082e42:	e6c7      	b.n	d0082bd4 <main+0x2478>
d0082e44:	f109 0210 	add.w	r2, r9, #16
d0082e48:	4291      	cmp	r1, r2
d0082e4a:	f73f ae85 	bgt.w	d0082b58 <main+0x23fc>
d0082e4e:	9a0e      	ldr	r2, [sp, #56]	; 0x38
d0082e50:	f04f 0901 	mov.w	r9, #1
d0082e54:	920c      	str	r2, [sp, #48]	; 0x30
d0082e56:	e6bd      	b.n	d0082bd4 <main+0x2478>
d0082e58:	f109 0210 	add.w	r2, r9, #16
d0082e5c:	428a      	cmp	r2, r1
d0082e5e:	f6ff ae6a 	blt.w	d0082b36 <main+0x23da>
d0082e62:	f04f 0900 	mov.w	r9, #0
d0082e66:	e6b5      	b.n	d0082bd4 <main+0x2478>
d0082e68:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d0082e6a:	9a06      	ldr	r2, [sp, #24]
d0082e6c:	3310      	adds	r3, #16
d0082e6e:	b21b      	sxth	r3, r3
d0082e70:	1a9b      	subs	r3, r3, r2
d0082e72:	3315      	adds	r3, #21
d0082e74:	2b2a      	cmp	r3, #42	; 0x2a
d0082e76:	f63f aae8 	bhi.w	d008244a <main+0x1cee>
d0082e7a:	2f00      	cmp	r7, #0
d0082e7c:	f000 8296 	beq.w	d00833ac <main+0x2c50>
d0082e80:	f1bc 0f00 	cmp.w	ip, #0
d0082e84:	f000 8290 	beq.w	d00833a8 <main+0x2c4c>
d0082e88:	9b07      	ldr	r3, [sp, #28]
d0082e8a:	2b00      	cmp	r3, #0
d0082e8c:	f000 823a 	beq.w	d0083304 <main+0x2ba8>
d0082e90:	f1bb 0f00 	cmp.w	fp, #0
d0082e94:	f47f aad9 	bne.w	d008244a <main+0x1cee>
d0082e98:	e017      	b.n	d0082eca <main+0x276e>
d0082e9a:	9b12      	ldr	r3, [sp, #72]	; 0x48
d0082e9c:	9a06      	ldr	r2, [sp, #24]
d0082e9e:	3310      	adds	r3, #16
d0082ea0:	b21b      	sxth	r3, r3
d0082ea2:	1a9b      	subs	r3, r3, r2
d0082ea4:	3315      	adds	r3, #21
d0082ea6:	2b2a      	cmp	r3, #42	; 0x2a
d0082ea8:	f63f aadf 	bhi.w	d008246a <main+0x1d0e>
d0082eac:	2f00      	cmp	r7, #0
d0082eae:	f000 827d 	beq.w	d00833ac <main+0x2c50>
d0082eb2:	f1bc 0f00 	cmp.w	ip, #0
d0082eb6:	f000 8277 	beq.w	d00833a8 <main+0x2c4c>
d0082eba:	9b07      	ldr	r3, [sp, #28]
d0082ebc:	2b00      	cmp	r3, #0
d0082ebe:	f000 8221 	beq.w	d0083304 <main+0x2ba8>
d0082ec2:	f1bb 0f00 	cmp.w	fp, #0
d0082ec6:	f47f aad0 	bne.w	d008246a <main+0x1d0e>
d0082eca:	2303      	movs	r3, #3
d0082ecc:	9805      	ldr	r0, [sp, #20]
d0082ece:	2206      	movs	r2, #6
d0082ed0:	f243 0539 	movw	r5, #12345	; 0x3039
d0082ed4:	210a      	movs	r1, #10
d0082ed6:	4607      	mov	r7, r0
d0082ed8:	4857      	ldr	r0, [pc, #348]	; (d0083038 <main+0x28dc>)
d0082eda:	fb02 f303 	mul.w	r3, r2, r3
d0082ede:	9a04      	ldr	r2, [sp, #16]
d0082ee0:	fb00 5507 	mla	r5, r0, r7, r5
d0082ee4:	4f58      	ldr	r7, [pc, #352]	; (d0083048 <main+0x28ec>)
d0082ee6:	321d      	adds	r2, #29
d0082ee8:	0c28      	lsrs	r0, r5, #16
d0082eea:	603d      	str	r5, [r7, #0]
d0082eec:	9d08      	ldr	r5, [sp, #32]
d0082eee:	52ea      	strh	r2, [r5, r3]
d0082ef0:	442b      	add	r3, r5
d0082ef2:	f44f 7280 	mov.w	r2, #256	; 0x100
d0082ef6:	9d06      	ldr	r5, [sp, #24]
d0082ef8:	809a      	strh	r2, [r3, #4]
d0082efa:	805d      	strh	r5, [r3, #2]
d0082efc:	fbb0 f3f1 	udiv	r3, r0, r1
d0082f00:	fb01 0313 	mls	r3, r1, r3, r0
d0082f04:	3309      	adds	r3, #9
d0082f06:	b2db      	uxtb	r3, r3
d0082f08:	f7ff bac0 	b.w	d008248c <main+0x1d30>
d0082f0c:	9b11      	ldr	r3, [sp, #68]	; 0x44
d0082f0e:	9a06      	ldr	r2, [sp, #24]
d0082f10:	3310      	adds	r3, #16
d0082f12:	b21b      	sxth	r3, r3
d0082f14:	1a9b      	subs	r3, r3, r2
d0082f16:	3315      	adds	r3, #21
d0082f18:	2b2a      	cmp	r3, #42	; 0x2a
d0082f1a:	f63f aa9e 	bhi.w	d008245a <main+0x1cfe>
d0082f1e:	2f00      	cmp	r7, #0
d0082f20:	f000 8244 	beq.w	d00833ac <main+0x2c50>
d0082f24:	f1bc 0f00 	cmp.w	ip, #0
d0082f28:	f000 823e 	beq.w	d00833a8 <main+0x2c4c>
d0082f2c:	9b07      	ldr	r3, [sp, #28]
d0082f2e:	2b00      	cmp	r3, #0
d0082f30:	f000 81e8 	beq.w	d0083304 <main+0x2ba8>
d0082f34:	f1bb 0f00 	cmp.w	fp, #0
d0082f38:	f47f aa8f 	bne.w	d008245a <main+0x1cfe>
d0082f3c:	e7c5      	b.n	d0082eca <main+0x276e>
d0082f3e:	9b14      	ldr	r3, [sp, #80]	; 0x50
d0082f40:	9a06      	ldr	r2, [sp, #24]
d0082f42:	3310      	adds	r3, #16
d0082f44:	b21b      	sxth	r3, r3
d0082f46:	1a9b      	subs	r3, r3, r2
d0082f48:	3315      	adds	r3, #21
d0082f4a:	2b2a      	cmp	r3, #42	; 0x2a
d0082f4c:	f63f aa9d 	bhi.w	d008248a <main+0x1d2e>
d0082f50:	2f00      	cmp	r7, #0
d0082f52:	f000 822b 	beq.w	d00833ac <main+0x2c50>
d0082f56:	f1bc 0f00 	cmp.w	ip, #0
d0082f5a:	f000 8225 	beq.w	d00833a8 <main+0x2c4c>
d0082f5e:	9b07      	ldr	r3, [sp, #28]
d0082f60:	2b00      	cmp	r3, #0
d0082f62:	f000 81cf 	beq.w	d0083304 <main+0x2ba8>
d0082f66:	2303      	movs	r3, #3
d0082f68:	f1bb 0f00 	cmp.w	fp, #0
d0082f6c:	f47f aa8e 	bne.w	d008248c <main+0x1d30>
d0082f70:	e7ac      	b.n	d0082ecc <main+0x2770>
d0082f72:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d0082f74:	9a06      	ldr	r2, [sp, #24]
d0082f76:	3310      	adds	r3, #16
d0082f78:	b21b      	sxth	r3, r3
d0082f7a:	1a9b      	subs	r3, r3, r2
d0082f7c:	3315      	adds	r3, #21
d0082f7e:	2b2a      	cmp	r3, #42	; 0x2a
d0082f80:	f63f aa7b 	bhi.w	d008247a <main+0x1d1e>
d0082f84:	2f00      	cmp	r7, #0
d0082f86:	f000 8211 	beq.w	d00833ac <main+0x2c50>
d0082f8a:	f1bc 0f00 	cmp.w	ip, #0
d0082f8e:	f000 820b 	beq.w	d00833a8 <main+0x2c4c>
d0082f92:	9b07      	ldr	r3, [sp, #28]
d0082f94:	2b00      	cmp	r3, #0
d0082f96:	f000 81b5 	beq.w	d0083304 <main+0x2ba8>
d0082f9a:	f1bb 0f00 	cmp.w	fp, #0
d0082f9e:	f47f aa6c 	bne.w	d008247a <main+0x1d1e>
d0082fa2:	e792      	b.n	d0082eca <main+0x276e>
d0082fa4:	970a      	str	r7, [sp, #40]	; 0x28
d0082fa6:	3110      	adds	r1, #16
d0082fa8:	9807      	ldr	r0, [sp, #28]
d0082faa:	f8b3 c002 	ldrh.w	ip, [r3, #2]
d0082fae:	b289      	uxth	r1, r1
d0082fb0:	f10c 0c10 	add.w	ip, ip, #16
d0082fb4:	1808      	adds	r0, r1, r0
d0082fb6:	fa0f fc8c 	sxth.w	ip, ip
d0082fba:	b200      	sxth	r0, r0
d0082fbc:	2806      	cmp	r0, #6
d0082fbe:	dc2a      	bgt.n	d0083016 <main+0x28ba>
d0082fc0:	2001      	movs	r0, #1
d0082fc2:	9011      	str	r0, [sp, #68]	; 0x44
d0082fc4:	9806      	ldr	r0, [sp, #24]
d0082fc6:	0109      	lsls	r1, r1, #4
d0082fc8:	eba0 070c 	sub.w	r7, r0, ip
d0082fcc:	980a      	ldr	r0, [sp, #40]	; 0x28
d0082fce:	ea4f 1c0c 	mov.w	ip, ip, lsl #4
d0082fd2:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d0082fd6:	013f      	lsls	r7, r7, #4
d0082fd8:	f824 1010 	strh.w	r1, [r4, r0, lsl #1]
d0082fdc:	eb04 0040 	add.w	r0, r4, r0, lsl #1
d0082fe0:	9911      	ldr	r1, [sp, #68]	; 0x44
d0082fe2:	f8a0 c002 	strh.w	ip, [r0, #2]
d0082fe6:	fb97 f7f1 	sdiv	r7, r7, r1
d0082fea:	b239      	sxth	r1, r7
d0082fec:	f04f 0701 	mov.w	r7, #1
d0082ff0:	2970      	cmp	r1, #112	; 0x70
d0082ff2:	7207      	strb	r7, [r0, #8]
d0082ff4:	f64f 7790 	movw	r7, #65424	; 0xff90
d0082ff8:	80c1      	strh	r1, [r0, #6]
d0082ffa:	8087      	strh	r7, [r0, #4]
d0082ffc:	dd07      	ble.n	d008300e <main+0x28b2>
d0082ffe:	980a      	ldr	r0, [sp, #40]	; 0x28
d0083000:	210a      	movs	r1, #10
d0083002:	7a27      	ldrb	r7, [r4, #8]
d0083004:	fb01 4100 	mla	r1, r1, r0, r4
d0083008:	2070      	movs	r0, #112	; 0x70
d008300a:	80c8      	strh	r0, [r1, #6]
d008300c:	e694      	b.n	d0082d38 <main+0x25dc>
d008300e:	3170      	adds	r1, #112	; 0x70
d0083010:	db06      	blt.n	d0083020 <main+0x28c4>
d0083012:	7a27      	ldrb	r7, [r4, #8]
d0083014:	e690      	b.n	d0082d38 <main+0x25dc>
d0083016:	2707      	movs	r7, #7
d0083018:	fb90 f0f7 	sdiv	r0, r0, r7
d008301c:	9011      	str	r0, [sp, #68]	; 0x44
d008301e:	e7d1      	b.n	d0082fc4 <main+0x2868>
d0083020:	200a      	movs	r0, #10
d0083022:	990a      	ldr	r1, [sp, #40]	; 0x28
d0083024:	7a27      	ldrb	r7, [r4, #8]
d0083026:	fb00 4101 	mla	r1, r0, r1, r4
d008302a:	f64f 7090 	movw	r0, #65424	; 0xff90
d008302e:	80c8      	strh	r0, [r1, #6]
d0083030:	e682      	b.n	d0082d38 <main+0x25dc>
d0083032:	2001      	movs	r0, #1
d0083034:	900a      	str	r0, [sp, #40]	; 0x28
d0083036:	e7b6      	b.n	d0082fa6 <main+0x284a>
d0083038:	41c64e6d 	.word	0x41c64e6d
d008303c:	c0c0c0c1 	.word	0xc0c0c0c1
d0083040:	d008a948 	.word	0xd008a948
d0083044:	d008ab14 	.word	0xd008ab14
d0083048:	d008a960 	.word	0xd008a960
d008304c:	2201      	movs	r2, #1
d008304e:	9c05      	ldr	r4, [sp, #20]
d0083050:	f243 0c39 	movw	ip, #12345	; 0x3039
d0083054:	3610      	adds	r6, #16
d0083056:	4627      	mov	r7, r4
d0083058:	4cb0      	ldr	r4, [pc, #704]	; (d008331c <main+0x2bc0>)
d008305a:	fb04 c407 	mla	r4, r4, r7, ip
d008305e:	f100 0c10 	add.w	ip, r0, #16
d0083062:	980b      	ldr	r0, [sp, #44]	; 0x2c
d0083064:	9405      	str	r4, [sp, #20]
d0083066:	eb00 07c2 	add.w	r7, r0, r2, lsl #3
d008306a:	f820 c032 	strh.w	ip, [r0, r2, lsl #3]
d008306e:	f04f 0001 	mov.w	r0, #1
d0083072:	f3c4 4205 	ubfx	r2, r4, #16, #6
d0083076:	807e      	strh	r6, [r7, #2]
d0083078:	71b8      	strb	r0, [r7, #6]
d008307a:	f04f 0000 	mov.w	r0, #0
d008307e:	717a      	strb	r2, [r7, #5]
d0083080:	7138      	strb	r0, [r7, #4]
d0083082:	f7fe ba44 	b.w	d008150e <main+0xdb2>
d0083086:	2002      	movs	r0, #2
d0083088:	900a      	str	r0, [sp, #40]	; 0x28
d008308a:	e78c      	b.n	d0082fa6 <main+0x284a>
d008308c:	2003      	movs	r0, #3
d008308e:	900a      	str	r0, [sp, #40]	; 0x28
d0083090:	e789      	b.n	d0082fa6 <main+0x284a>
d0083092:	2004      	movs	r0, #4
d0083094:	900a      	str	r0, [sp, #40]	; 0x28
d0083096:	e786      	b.n	d0082fa6 <main+0x284a>
d0083098:	2005      	movs	r0, #5
d008309a:	900a      	str	r0, [sp, #40]	; 0x28
d008309c:	e783      	b.n	d0082fa6 <main+0x284a>
d008309e:	2006      	movs	r0, #6
d00830a0:	900a      	str	r0, [sp, #40]	; 0x28
d00830a2:	e780      	b.n	d0082fa6 <main+0x284a>
d00830a4:	2007      	movs	r0, #7
d00830a6:	900a      	str	r0, [sp, #40]	; 0x28
d00830a8:	e77d      	b.n	d0082fa6 <main+0x284a>
d00830aa:	2008      	movs	r0, #8
d00830ac:	900a      	str	r0, [sp, #40]	; 0x28
d00830ae:	e77a      	b.n	d0082fa6 <main+0x284a>
d00830b0:	2009      	movs	r0, #9
d00830b2:	900a      	str	r0, [sp, #40]	; 0x28
d00830b4:	e777      	b.n	d0082fa6 <main+0x284a>
d00830b6:	9e0c      	ldr	r6, [sp, #48]	; 0x30
d00830b8:	2100      	movs	r1, #0
d00830ba:	f7fe b9fd 	b.w	d00814b8 <main+0xd5c>
d00830be:	9e0e      	ldr	r6, [sp, #56]	; 0x38
d00830c0:	2101      	movs	r1, #1
d00830c2:	f7fe b9f9 	b.w	d00814b8 <main+0xd5c>
d00830c6:	9e0f      	ldr	r6, [sp, #60]	; 0x3c
d00830c8:	2102      	movs	r1, #2
d00830ca:	f7fe b9f5 	b.w	d00814b8 <main+0xd5c>
d00830ce:	9e10      	ldr	r6, [sp, #64]	; 0x40
d00830d0:	2103      	movs	r1, #3
d00830d2:	f7fe b9f1 	b.w	d00814b8 <main+0xd5c>
d00830d6:	200a      	movs	r0, #10
d00830d8:	900a      	str	r0, [sp, #40]	; 0x28
d00830da:	e764      	b.n	d0082fa6 <main+0x284a>
d00830dc:	200b      	movs	r0, #11
d00830de:	900a      	str	r0, [sp, #40]	; 0x28
d00830e0:	e761      	b.n	d0082fa6 <main+0x284a>
d00830e2:	4b8f      	ldr	r3, [pc, #572]	; (d0083320 <main+0x2bc4>)
d00830e4:	2096      	movs	r0, #150	; 0x96
d00830e6:	9c07      	ldr	r4, [sp, #28]
d00830e8:	461a      	mov	r2, r3
d00830ea:	230a      	movs	r3, #10
d00830ec:	fb03 4101 	mla	r1, r3, r1, r4
d00830f0:	463b      	mov	r3, r7
d00830f2:	9207      	str	r2, [sp, #28]
d00830f4:	720f      	strb	r7, [r1, #8]
d00830f6:	f64f 77e1 	movw	r7, #65505	; 0xffe1
d00830fa:	8812      	ldrh	r2, [r2, #0]
d00830fc:	4989      	ldr	r1, [pc, #548]	; (d0083324 <main+0x2bc8>)
d00830fe:	3201      	adds	r2, #1
d0083100:	7008      	strb	r0, [r1, #0]
d0083102:	2132      	movs	r1, #50	; 0x32
d0083104:	4886      	ldr	r0, [pc, #536]	; (d0083320 <main+0x2bc4>)
d0083106:	8002      	strh	r2, [r0, #0]
d0083108:	22a3      	movs	r2, #163	; 0xa3
d008310a:	4887      	ldr	r0, [pc, #540]	; (d0083328 <main+0x2bcc>)
d008310c:	8007      	strh	r7, [r0, #0]
d008310e:	4887      	ldr	r0, [pc, #540]	; (d008332c <main+0x2bd0>)
d0083110:	7001      	strb	r1, [r0, #0]
d0083112:	4987      	ldr	r1, [pc, #540]	; (d0083330 <main+0x2bd4>)
d0083114:	980b      	ldr	r0, [sp, #44]	; 0x2c
d0083116:	800a      	strh	r2, [r1, #0]
d0083118:	eb00 02c3 	add.w	r2, r0, r3, lsl #3
d008311c:	7991      	ldrb	r1, [r2, #6]
d008311e:	2900      	cmp	r1, #0
d0083120:	f000 80d7 	beq.w	d00832d2 <main+0x2b76>
d0083124:	3301      	adds	r3, #1
d0083126:	2b08      	cmp	r3, #8
d0083128:	d1f6      	bne.n	d0083118 <main+0x29bc>
d008312a:	2300      	movs	r3, #0
d008312c:	9a08      	ldr	r2, [sp, #32]
d008312e:	7223      	strb	r3, [r4, #8]
d0083130:	74a3      	strb	r3, [r4, #18]
d0083132:	7723      	strb	r3, [r4, #28]
d0083134:	f884 3026 	strb.w	r3, [r4, #38]	; 0x26
d0083138:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
d008313c:	f884 303a 	strb.w	r3, [r4, #58]	; 0x3a
d0083140:	f884 3044 	strb.w	r3, [r4, #68]	; 0x44
d0083144:	f884 304e 	strb.w	r3, [r4, #78]	; 0x4e
d0083148:	f884 3058 	strb.w	r3, [r4, #88]	; 0x58
d008314c:	f884 3062 	strb.w	r3, [r4, #98]	; 0x62
d0083150:	f884 306c 	strb.w	r3, [r4, #108]	; 0x6c
d0083154:	f884 3076 	strb.w	r3, [r4, #118]	; 0x76
d0083158:	7153      	strb	r3, [r2, #5]
d008315a:	72d3      	strb	r3, [r2, #11]
d008315c:	7453      	strb	r3, [r2, #17]
d008315e:	75d3      	strb	r3, [r2, #23]
d0083160:	7753      	strb	r3, [r2, #29]
d0083162:	f882 3023 	strb.w	r3, [r2, #35]	; 0x23
d0083166:	f882 3029 	strb.w	r3, [r2, #41]	; 0x29
d008316a:	f882 302f 	strb.w	r3, [r2, #47]	; 0x2f
d008316e:	f7fe bb99 	b.w	d00818a4 <main+0x1148>
d0083172:	2900      	cmp	r1, #0
d0083174:	f000 81d4 	beq.w	d0083520 <main+0x2dc4>
d0083178:	2a00      	cmp	r2, #0
d008317a:	f000 819c 	beq.w	d00834b6 <main+0x2d5a>
d008317e:	2b00      	cmp	r3, #0
d0083180:	f000 817f 	beq.w	d0083482 <main+0x2d26>
d0083184:	4b6b      	ldr	r3, [pc, #428]	; (d0083334 <main+0x2bd8>)
d0083186:	e004      	b.n	d0083192 <main+0x2a36>
d0083188:	2805      	cmp	r0, #5
d008318a:	f103 030c 	add.w	r3, r3, #12
d008318e:	f43f a97c 	beq.w	d008248a <main+0x1d2e>
d0083192:	f9b3 2000 	ldrsh.w	r2, [r3]
d0083196:	3001      	adds	r0, #1
d0083198:	4295      	cmp	r5, r2
d008319a:	daf5      	bge.n	d0083188 <main+0x2a2c>
d008319c:	f240 11df 	movw	r1, #479	; 0x1df
d00831a0:	428a      	cmp	r2, r1
d00831a2:	dcf1      	bgt.n	d0083188 <main+0x2a2c>
d00831a4:	885a      	ldrh	r2, [r3, #2]
d00831a6:	9906      	ldr	r1, [sp, #24]
d00831a8:	3210      	adds	r2, #16
d00831aa:	b212      	sxth	r2, r2
d00831ac:	1a52      	subs	r2, r2, r1
d00831ae:	3215      	adds	r2, #21
d00831b0:	2a2a      	cmp	r2, #42	; 0x2a
d00831b2:	d8e9      	bhi.n	d0083188 <main+0x2a2c>
d00831b4:	2f00      	cmp	r7, #0
d00831b6:	f000 80f9 	beq.w	d00833ac <main+0x2c50>
d00831ba:	f1bc 0f00 	cmp.w	ip, #0
d00831be:	f000 80f3 	beq.w	d00833a8 <main+0x2c4c>
d00831c2:	9b07      	ldr	r3, [sp, #28]
d00831c4:	2b00      	cmp	r3, #0
d00831c6:	f000 809d 	beq.w	d0083304 <main+0x2ba8>
d00831ca:	f1bb 0f00 	cmp.w	fp, #0
d00831ce:	bf14      	ite	ne
d00831d0:	2307      	movne	r3, #7
d00831d2:	2303      	moveq	r3, #3
d00831d4:	e67a      	b.n	d0082ecc <main+0x2770>
d00831d6:	2a00      	cmp	r2, #0
d00831d8:	f000 811e 	beq.w	d0083418 <main+0x2cbc>
d00831dc:	2b00      	cmp	r3, #0
d00831de:	f000 8101 	beq.w	d00833e4 <main+0x2c88>
d00831e2:	4b54      	ldr	r3, [pc, #336]	; (d0083334 <main+0x2bd8>)
d00831e4:	e004      	b.n	d00831f0 <main+0x2a94>
d00831e6:	2905      	cmp	r1, #5
d00831e8:	f103 030c 	add.w	r3, r3, #12
d00831ec:	f43f a94d 	beq.w	d008248a <main+0x1d2e>
d00831f0:	f9b3 2000 	ldrsh.w	r2, [r3]
d00831f4:	3101      	adds	r1, #1
d00831f6:	4295      	cmp	r5, r2
d00831f8:	daf5      	bge.n	d00831e6 <main+0x2a8a>
d00831fa:	f240 10df 	movw	r0, #479	; 0x1df
d00831fe:	4282      	cmp	r2, r0
d0083200:	dcf1      	bgt.n	d00831e6 <main+0x2a8a>
d0083202:	885a      	ldrh	r2, [r3, #2]
d0083204:	9806      	ldr	r0, [sp, #24]
d0083206:	3210      	adds	r2, #16
d0083208:	b212      	sxth	r2, r2
d008320a:	1a12      	subs	r2, r2, r0
d008320c:	3215      	adds	r2, #21
d008320e:	2a2a      	cmp	r2, #42	; 0x2a
d0083210:	d8e9      	bhi.n	d00831e6 <main+0x2a8a>
d0083212:	2f00      	cmp	r7, #0
d0083214:	f000 80ca 	beq.w	d00833ac <main+0x2c50>
d0083218:	f1bc 0f00 	cmp.w	ip, #0
d008321c:	f000 80c4 	beq.w	d00833a8 <main+0x2c4c>
d0083220:	9b07      	ldr	r3, [sp, #28]
d0083222:	2b00      	cmp	r3, #0
d0083224:	d06e      	beq.n	d0083304 <main+0x2ba8>
d0083226:	f1bb 0f00 	cmp.w	fp, #0
d008322a:	bf14      	ite	ne
d008322c:	2306      	movne	r3, #6
d008322e:	2303      	moveq	r3, #3
d0083230:	e64c      	b.n	d0082ecc <main+0x2770>
d0083232:	2b00      	cmp	r3, #0
d0083234:	f000 80bc 	beq.w	d00833b0 <main+0x2c54>
d0083238:	4b3e      	ldr	r3, [pc, #248]	; (d0083334 <main+0x2bd8>)
d008323a:	e004      	b.n	d0083246 <main+0x2aea>
d008323c:	2a05      	cmp	r2, #5
d008323e:	f103 030c 	add.w	r3, r3, #12
d0083242:	f43f a922 	beq.w	d008248a <main+0x1d2e>
d0083246:	f9b3 1000 	ldrsh.w	r1, [r3]
d008324a:	3201      	adds	r2, #1
d008324c:	428d      	cmp	r5, r1
d008324e:	daf5      	bge.n	d008323c <main+0x2ae0>
d0083250:	f240 10df 	movw	r0, #479	; 0x1df
d0083254:	4281      	cmp	r1, r0
d0083256:	dcf1      	bgt.n	d008323c <main+0x2ae0>
d0083258:	8859      	ldrh	r1, [r3, #2]
d008325a:	9806      	ldr	r0, [sp, #24]
d008325c:	3110      	adds	r1, #16
d008325e:	b209      	sxth	r1, r1
d0083260:	1a09      	subs	r1, r1, r0
d0083262:	3115      	adds	r1, #21
d0083264:	292a      	cmp	r1, #42	; 0x2a
d0083266:	d8e9      	bhi.n	d008323c <main+0x2ae0>
d0083268:	2f00      	cmp	r7, #0
d008326a:	f000 809f 	beq.w	d00833ac <main+0x2c50>
d008326e:	f1bc 0f00 	cmp.w	ip, #0
d0083272:	f000 8099 	beq.w	d00833a8 <main+0x2c4c>
d0083276:	9b07      	ldr	r3, [sp, #28]
d0083278:	2b00      	cmp	r3, #0
d008327a:	d043      	beq.n	d0083304 <main+0x2ba8>
d008327c:	f1bb 0f00 	cmp.w	fp, #0
d0083280:	bf14      	ite	ne
d0083282:	2305      	movne	r3, #5
d0083284:	2303      	moveq	r3, #3
d0083286:	e621      	b.n	d0082ecc <main+0x2770>
d0083288:	4a2a      	ldr	r2, [pc, #168]	; (d0083334 <main+0x2bd8>)
d008328a:	e004      	b.n	d0083296 <main+0x2b3a>
d008328c:	2b05      	cmp	r3, #5
d008328e:	f102 020c 	add.w	r2, r2, #12
d0083292:	f43f a8fa 	beq.w	d008248a <main+0x1d2e>
d0083296:	f9b2 1000 	ldrsh.w	r1, [r2]
d008329a:	3301      	adds	r3, #1
d008329c:	428d      	cmp	r5, r1
d008329e:	daf5      	bge.n	d008328c <main+0x2b30>
d00832a0:	f240 10df 	movw	r0, #479	; 0x1df
d00832a4:	4281      	cmp	r1, r0
d00832a6:	dcf1      	bgt.n	d008328c <main+0x2b30>
d00832a8:	8851      	ldrh	r1, [r2, #2]
d00832aa:	9806      	ldr	r0, [sp, #24]
d00832ac:	3110      	adds	r1, #16
d00832ae:	b209      	sxth	r1, r1
d00832b0:	1a09      	subs	r1, r1, r0
d00832b2:	3115      	adds	r1, #21
d00832b4:	292a      	cmp	r1, #42	; 0x2a
d00832b6:	d8e9      	bhi.n	d008328c <main+0x2b30>
d00832b8:	2f00      	cmp	r7, #0
d00832ba:	d077      	beq.n	d00833ac <main+0x2c50>
d00832bc:	f1bc 0f00 	cmp.w	ip, #0
d00832c0:	d072      	beq.n	d00833a8 <main+0x2c4c>
d00832c2:	9b07      	ldr	r3, [sp, #28]
d00832c4:	b1f3      	cbz	r3, d0083304 <main+0x2ba8>
d00832c6:	f1bb 0f00 	cmp.w	fp, #0
d00832ca:	bf14      	ite	ne
d00832cc:	2304      	movne	r3, #4
d00832ce:	2303      	moveq	r3, #3
d00832d0:	e5fc      	b.n	d0082ecc <main+0x2770>
d00832d2:	9f06      	ldr	r7, [sp, #24]
d00832d4:	f243 0039 	movw	r0, #12345	; 0x3039
d00832d8:	7111      	strb	r1, [r2, #4]
d00832da:	9905      	ldr	r1, [sp, #20]
d00832dc:	8057      	strh	r7, [r2, #2]
d00832de:	2701      	movs	r7, #1
d00832e0:	468c      	mov	ip, r1
d00832e2:	490e      	ldr	r1, [pc, #56]	; (d008331c <main+0x2bc0>)
d00832e4:	7197      	strb	r7, [r2, #6]
d00832e6:	fb01 010c 	mla	r1, r1, ip, r0
d00832ea:	4f13      	ldr	r7, [pc, #76]	; (d0083338 <main+0x2bdc>)
d00832ec:	f04f 0c2d 	mov.w	ip, #45	; 0x2d
d00832f0:	f3c1 4005 	ubfx	r0, r1, #16, #6
d00832f4:	6039      	str	r1, [r7, #0]
d00832f6:	990b      	ldr	r1, [sp, #44]	; 0x2c
d00832f8:	7150      	strb	r0, [r2, #5]
d00832fa:	f821 c033 	strh.w	ip, [r1, r3, lsl #3]
d00832fe:	e714      	b.n	d008312a <main+0x29ce>
d0083300:	2202      	movs	r2, #2
d0083302:	e6a4      	b.n	d008304e <main+0x28f2>
d0083304:	2302      	movs	r3, #2
d0083306:	e5e1      	b.n	d0082ecc <main+0x2770>
d0083308:	2203      	movs	r2, #3
d008330a:	e6a0      	b.n	d008304e <main+0x28f2>
d008330c:	2207      	movs	r2, #7
d008330e:	e69e      	b.n	d008304e <main+0x28f2>
d0083310:	2206      	movs	r2, #6
d0083312:	e69c      	b.n	d008304e <main+0x28f2>
d0083314:	2205      	movs	r2, #5
d0083316:	e69a      	b.n	d008304e <main+0x28f2>
d0083318:	2204      	movs	r2, #4
d008331a:	e698      	b.n	d008304e <main+0x28f2>
d008331c:	41c64e6d 	.word	0x41c64e6d
d0083320:	d008ab14 	.word	0xd008ab14
d0083324:	d008ab24 	.word	0xd008ab24
d0083328:	d008a94a 	.word	0xd008a94a
d008332c:	d008ab25 	.word	0xd008ab25
d0083330:	d008a948 	.word	0xd008a948
d0083334:	d008a9ec 	.word	0xd008a9ec
d0083338:	d008a960 	.word	0xd008a960
d008333c:	9704      	str	r7, [sp, #16]
d008333e:	f103 0710 	add.w	r7, r3, #16
d0083342:	48ac      	ldr	r0, [pc, #688]	; (d00835f4 <main+0x2e98>)
d0083344:	f243 0c39 	movw	ip, #12345	; 0x3039
d0083348:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d008334a:	6800      	ldr	r0, [r0, #0]
d008334c:	f103 0e10 	add.w	lr, r3, #16
d0083350:	4ba9      	ldr	r3, [pc, #676]	; (d00835f8 <main+0x2e9c>)
d0083352:	fb03 c000 	mla	r0, r3, r0, ip
d0083356:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d0083358:	f04f 0c01 	mov.w	ip, #1
d008335c:	f8a1 e002 	strh.w	lr, [r1, #2]
d0083360:	f823 7032 	strh.w	r7, [r3, r2, lsl #3]
d0083364:	f3c0 4305 	ubfx	r3, r0, #16, #6
d0083368:	9a04      	ldr	r2, [sp, #16]
d008336a:	714b      	strb	r3, [r1, #5]
d008336c:	710a      	strb	r2, [r1, #4]
d008336e:	4aa1      	ldr	r2, [pc, #644]	; (d00835f4 <main+0x2e98>)
d0083370:	f881 c006 	strb.w	ip, [r1, #6]
d0083374:	6010      	str	r0, [r2, #0]
d0083376:	e453      	b.n	d0082c20 <main+0x24c4>
d0083378:	9f06      	ldr	r7, [sp, #24]
d008337a:	f243 0e39 	movw	lr, #12345	; 0x3039
d008337e:	7108      	strb	r0, [r1, #4]
d0083380:	2001      	movs	r0, #1
d0083382:	804f      	strh	r7, [r1, #2]
d0083384:	9f05      	ldr	r7, [sp, #20]
d0083386:	7188      	strb	r0, [r1, #6]
d0083388:	46bc      	mov	ip, r7
d008338a:	4f9b      	ldr	r7, [pc, #620]	; (d00835f8 <main+0x2e9c>)
d008338c:	4899      	ldr	r0, [pc, #612]	; (d00835f4 <main+0x2e98>)
d008338e:	fb07 e70c 	mla	r7, r7, ip, lr
d0083392:	f04f 0c2d 	mov.w	ip, #45	; 0x2d
d0083396:	f3c7 4e05 	ubfx	lr, r7, #16, #6
d008339a:	6007      	str	r7, [r0, #0]
d008339c:	980b      	ldr	r0, [sp, #44]	; 0x2c
d008339e:	f881 e005 	strb.w	lr, [r1, #5]
d00833a2:	f820 c032 	strh.w	ip, [r0, r2, lsl #3]
d00833a6:	e430      	b.n	d0082c0a <main+0x24ae>
d00833a8:	2301      	movs	r3, #1
d00833aa:	e58f      	b.n	d0082ecc <main+0x2770>
d00833ac:	463b      	mov	r3, r7
d00833ae:	e58d      	b.n	d0082ecc <main+0x2770>
d00833b0:	4619      	mov	r1, r3
d00833b2:	4a92      	ldr	r2, [pc, #584]	; (d00835fc <main+0x2ea0>)
d00833b4:	e004      	b.n	d00833c0 <main+0x2c64>
d00833b6:	2905      	cmp	r1, #5
d00833b8:	f102 020c 	add.w	r2, r2, #12
d00833bc:	f43f a865 	beq.w	d008248a <main+0x1d2e>
d00833c0:	f9b2 3000 	ldrsh.w	r3, [r2]
d00833c4:	3101      	adds	r1, #1
d00833c6:	429d      	cmp	r5, r3
d00833c8:	daf5      	bge.n	d00833b6 <main+0x2c5a>
d00833ca:	f240 10df 	movw	r0, #479	; 0x1df
d00833ce:	4283      	cmp	r3, r0
d00833d0:	dcf1      	bgt.n	d00833b6 <main+0x2c5a>
d00833d2:	8853      	ldrh	r3, [r2, #2]
d00833d4:	9806      	ldr	r0, [sp, #24]
d00833d6:	3310      	adds	r3, #16
d00833d8:	b21b      	sxth	r3, r3
d00833da:	1a1b      	subs	r3, r3, r0
d00833dc:	3315      	adds	r3, #21
d00833de:	2b2a      	cmp	r3, #42	; 0x2a
d00833e0:	d8e9      	bhi.n	d00833b6 <main+0x2c5a>
d00833e2:	e769      	b.n	d00832b8 <main+0x2b5c>
d00833e4:	4619      	mov	r1, r3
d00833e6:	4a85      	ldr	r2, [pc, #532]	; (d00835fc <main+0x2ea0>)
d00833e8:	e004      	b.n	d00833f4 <main+0x2c98>
d00833ea:	2905      	cmp	r1, #5
d00833ec:	f102 020c 	add.w	r2, r2, #12
d00833f0:	f43f a84b 	beq.w	d008248a <main+0x1d2e>
d00833f4:	f9b2 3000 	ldrsh.w	r3, [r2]
d00833f8:	3101      	adds	r1, #1
d00833fa:	429d      	cmp	r5, r3
d00833fc:	daf5      	bge.n	d00833ea <main+0x2c8e>
d00833fe:	f240 10df 	movw	r0, #479	; 0x1df
d0083402:	4283      	cmp	r3, r0
d0083404:	dcf1      	bgt.n	d00833ea <main+0x2c8e>
d0083406:	8853      	ldrh	r3, [r2, #2]
d0083408:	9806      	ldr	r0, [sp, #24]
d008340a:	3310      	adds	r3, #16
d008340c:	b21b      	sxth	r3, r3
d008340e:	1a1b      	subs	r3, r3, r0
d0083410:	3315      	adds	r3, #21
d0083412:	2b2a      	cmp	r3, #42	; 0x2a
d0083414:	d8e9      	bhi.n	d00833ea <main+0x2c8e>
d0083416:	e74f      	b.n	d00832b8 <main+0x2b5c>
d0083418:	b1cb      	cbz	r3, d008344e <main+0x2cf2>
d008341a:	4611      	mov	r1, r2
d008341c:	4a77      	ldr	r2, [pc, #476]	; (d00835fc <main+0x2ea0>)
d008341e:	e004      	b.n	d008342a <main+0x2cce>
d0083420:	2905      	cmp	r1, #5
d0083422:	f102 020c 	add.w	r2, r2, #12
d0083426:	f43f a830 	beq.w	d008248a <main+0x1d2e>
d008342a:	f9b2 3000 	ldrsh.w	r3, [r2]
d008342e:	3101      	adds	r1, #1
d0083430:	429d      	cmp	r5, r3
d0083432:	daf5      	bge.n	d0083420 <main+0x2cc4>
d0083434:	f240 10df 	movw	r0, #479	; 0x1df
d0083438:	4283      	cmp	r3, r0
d008343a:	dcf1      	bgt.n	d0083420 <main+0x2cc4>
d008343c:	8853      	ldrh	r3, [r2, #2]
d008343e:	9806      	ldr	r0, [sp, #24]
d0083440:	3310      	adds	r3, #16
d0083442:	b21b      	sxth	r3, r3
d0083444:	1a1b      	subs	r3, r3, r0
d0083446:	3315      	adds	r3, #21
d0083448:	2b2a      	cmp	r3, #42	; 0x2a
d008344a:	d8e9      	bhi.n	d0083420 <main+0x2cc4>
d008344c:	e70c      	b.n	d0083268 <main+0x2b0c>
d008344e:	4619      	mov	r1, r3
d0083450:	4a6a      	ldr	r2, [pc, #424]	; (d00835fc <main+0x2ea0>)
d0083452:	e004      	b.n	d008345e <main+0x2d02>
d0083454:	2905      	cmp	r1, #5
d0083456:	f102 020c 	add.w	r2, r2, #12
d008345a:	f43f a816 	beq.w	d008248a <main+0x1d2e>
d008345e:	f9b2 3000 	ldrsh.w	r3, [r2]
d0083462:	3101      	adds	r1, #1
d0083464:	429d      	cmp	r5, r3
d0083466:	daf5      	bge.n	d0083454 <main+0x2cf8>
d0083468:	f240 10df 	movw	r0, #479	; 0x1df
d008346c:	4283      	cmp	r3, r0
d008346e:	dcf1      	bgt.n	d0083454 <main+0x2cf8>
d0083470:	8853      	ldrh	r3, [r2, #2]
d0083472:	9806      	ldr	r0, [sp, #24]
d0083474:	3310      	adds	r3, #16
d0083476:	b21b      	sxth	r3, r3
d0083478:	1a1b      	subs	r3, r3, r0
d008347a:	3315      	adds	r3, #21
d008347c:	2b2a      	cmp	r3, #42	; 0x2a
d008347e:	d8e9      	bhi.n	d0083454 <main+0x2cf8>
d0083480:	e71a      	b.n	d00832b8 <main+0x2b5c>
d0083482:	4619      	mov	r1, r3
d0083484:	4a5d      	ldr	r2, [pc, #372]	; (d00835fc <main+0x2ea0>)
d0083486:	e004      	b.n	d0083492 <main+0x2d36>
d0083488:	2905      	cmp	r1, #5
d008348a:	f102 020c 	add.w	r2, r2, #12
d008348e:	f43e affc 	beq.w	d008248a <main+0x1d2e>
d0083492:	f9b2 3000 	ldrsh.w	r3, [r2]
d0083496:	3101      	adds	r1, #1
d0083498:	429d      	cmp	r5, r3
d008349a:	daf5      	bge.n	d0083488 <main+0x2d2c>
d008349c:	f240 10df 	movw	r0, #479	; 0x1df
d00834a0:	4283      	cmp	r3, r0
d00834a2:	dcf1      	bgt.n	d0083488 <main+0x2d2c>
d00834a4:	8853      	ldrh	r3, [r2, #2]
d00834a6:	9806      	ldr	r0, [sp, #24]
d00834a8:	3310      	adds	r3, #16
d00834aa:	b21b      	sxth	r3, r3
d00834ac:	1a1b      	subs	r3, r3, r0
d00834ae:	3315      	adds	r3, #21
d00834b0:	2b2a      	cmp	r3, #42	; 0x2a
d00834b2:	d8e9      	bhi.n	d0083488 <main+0x2d2c>
d00834b4:	e700      	b.n	d00832b8 <main+0x2b5c>
d00834b6:	b1cb      	cbz	r3, d00834ec <main+0x2d90>
d00834b8:	4611      	mov	r1, r2
d00834ba:	4a50      	ldr	r2, [pc, #320]	; (d00835fc <main+0x2ea0>)
d00834bc:	e004      	b.n	d00834c8 <main+0x2d6c>
d00834be:	2905      	cmp	r1, #5
d00834c0:	f102 020c 	add.w	r2, r2, #12
d00834c4:	f43e afe1 	beq.w	d008248a <main+0x1d2e>
d00834c8:	f9b2 3000 	ldrsh.w	r3, [r2]
d00834cc:	3101      	adds	r1, #1
d00834ce:	42ab      	cmp	r3, r5
d00834d0:	ddf5      	ble.n	d00834be <main+0x2d62>
d00834d2:	f240 10df 	movw	r0, #479	; 0x1df
d00834d6:	4283      	cmp	r3, r0
d00834d8:	dcf1      	bgt.n	d00834be <main+0x2d62>
d00834da:	8853      	ldrh	r3, [r2, #2]
d00834dc:	9806      	ldr	r0, [sp, #24]
d00834de:	3310      	adds	r3, #16
d00834e0:	b21b      	sxth	r3, r3
d00834e2:	1a1b      	subs	r3, r3, r0
d00834e4:	3315      	adds	r3, #21
d00834e6:	2b2a      	cmp	r3, #42	; 0x2a
d00834e8:	d8e9      	bhi.n	d00834be <main+0x2d62>
d00834ea:	e6bd      	b.n	d0083268 <main+0x2b0c>
d00834ec:	4619      	mov	r1, r3
d00834ee:	4a43      	ldr	r2, [pc, #268]	; (d00835fc <main+0x2ea0>)
d00834f0:	e004      	b.n	d00834fc <main+0x2da0>
d00834f2:	2905      	cmp	r1, #5
d00834f4:	f102 020c 	add.w	r2, r2, #12
d00834f8:	f43e afc7 	beq.w	d008248a <main+0x1d2e>
d00834fc:	f9b2 3000 	ldrsh.w	r3, [r2]
d0083500:	3101      	adds	r1, #1
d0083502:	429d      	cmp	r5, r3
d0083504:	daf5      	bge.n	d00834f2 <main+0x2d96>
d0083506:	f240 10df 	movw	r0, #479	; 0x1df
d008350a:	4283      	cmp	r3, r0
d008350c:	dcf1      	bgt.n	d00834f2 <main+0x2d96>
d008350e:	8853      	ldrh	r3, [r2, #2]
d0083510:	9806      	ldr	r0, [sp, #24]
d0083512:	3310      	adds	r3, #16
d0083514:	b21b      	sxth	r3, r3
d0083516:	1a1b      	subs	r3, r3, r0
d0083518:	3315      	adds	r3, #21
d008351a:	2b2a      	cmp	r3, #42	; 0x2a
d008351c:	d8e9      	bhi.n	d00834f2 <main+0x2d96>
d008351e:	e6cb      	b.n	d00832b8 <main+0x2b5c>
d0083520:	b39a      	cbz	r2, d008358a <main+0x2e2e>
d0083522:	b1c3      	cbz	r3, d0083556 <main+0x2dfa>
d0083524:	4a35      	ldr	r2, [pc, #212]	; (d00835fc <main+0x2ea0>)
d0083526:	e004      	b.n	d0083532 <main+0x2dd6>
d0083528:	2905      	cmp	r1, #5
d008352a:	f102 020c 	add.w	r2, r2, #12
d008352e:	f43e afac 	beq.w	d008248a <main+0x1d2e>
d0083532:	f9b2 3000 	ldrsh.w	r3, [r2]
d0083536:	3101      	adds	r1, #1
d0083538:	42ab      	cmp	r3, r5
d008353a:	ddf5      	ble.n	d0083528 <main+0x2dcc>
d008353c:	f240 10df 	movw	r0, #479	; 0x1df
d0083540:	4283      	cmp	r3, r0
d0083542:	dcf1      	bgt.n	d0083528 <main+0x2dcc>
d0083544:	8853      	ldrh	r3, [r2, #2]
d0083546:	9806      	ldr	r0, [sp, #24]
d0083548:	3310      	adds	r3, #16
d008354a:	b21b      	sxth	r3, r3
d008354c:	1a1b      	subs	r3, r3, r0
d008354e:	3315      	adds	r3, #21
d0083550:	2b2a      	cmp	r3, #42	; 0x2a
d0083552:	d8e9      	bhi.n	d0083528 <main+0x2dcc>
d0083554:	e65d      	b.n	d0083212 <main+0x2ab6>
d0083556:	4619      	mov	r1, r3
d0083558:	4a28      	ldr	r2, [pc, #160]	; (d00835fc <main+0x2ea0>)
d008355a:	e004      	b.n	d0083566 <main+0x2e0a>
d008355c:	2905      	cmp	r1, #5
d008355e:	f102 020c 	add.w	r2, r2, #12
d0083562:	f43e af92 	beq.w	d008248a <main+0x1d2e>
d0083566:	f9b2 3000 	ldrsh.w	r3, [r2]
d008356a:	3101      	adds	r1, #1
d008356c:	42ab      	cmp	r3, r5
d008356e:	ddf5      	ble.n	d008355c <main+0x2e00>
d0083570:	f240 10df 	movw	r0, #479	; 0x1df
d0083574:	4283      	cmp	r3, r0
d0083576:	dcf1      	bgt.n	d008355c <main+0x2e00>
d0083578:	8853      	ldrh	r3, [r2, #2]
d008357a:	9806      	ldr	r0, [sp, #24]
d008357c:	3310      	adds	r3, #16
d008357e:	b21b      	sxth	r3, r3
d0083580:	1a1b      	subs	r3, r3, r0
d0083582:	3315      	adds	r3, #21
d0083584:	2b2a      	cmp	r3, #42	; 0x2a
d0083586:	d8e9      	bhi.n	d008355c <main+0x2e00>
d0083588:	e696      	b.n	d00832b8 <main+0x2b5c>
d008358a:	b1cb      	cbz	r3, d00835c0 <main+0x2e64>
d008358c:	4611      	mov	r1, r2
d008358e:	4a1b      	ldr	r2, [pc, #108]	; (d00835fc <main+0x2ea0>)
d0083590:	e004      	b.n	d008359c <main+0x2e40>
d0083592:	2905      	cmp	r1, #5
d0083594:	f102 020c 	add.w	r2, r2, #12
d0083598:	f43e af77 	beq.w	d008248a <main+0x1d2e>
d008359c:	f9b2 3000 	ldrsh.w	r3, [r2]
d00835a0:	3101      	adds	r1, #1
d00835a2:	42ab      	cmp	r3, r5
d00835a4:	ddf5      	ble.n	d0083592 <main+0x2e36>
d00835a6:	f240 10df 	movw	r0, #479	; 0x1df
d00835aa:	4283      	cmp	r3, r0
d00835ac:	dcf1      	bgt.n	d0083592 <main+0x2e36>
d00835ae:	8853      	ldrh	r3, [r2, #2]
d00835b0:	9806      	ldr	r0, [sp, #24]
d00835b2:	3310      	adds	r3, #16
d00835b4:	b21b      	sxth	r3, r3
d00835b6:	1a1b      	subs	r3, r3, r0
d00835b8:	3315      	adds	r3, #21
d00835ba:	2b2a      	cmp	r3, #42	; 0x2a
d00835bc:	d8e9      	bhi.n	d0083592 <main+0x2e36>
d00835be:	e653      	b.n	d0083268 <main+0x2b0c>
d00835c0:	4619      	mov	r1, r3
d00835c2:	4a0e      	ldr	r2, [pc, #56]	; (d00835fc <main+0x2ea0>)
d00835c4:	e004      	b.n	d00835d0 <main+0x2e74>
d00835c6:	2905      	cmp	r1, #5
d00835c8:	f102 020c 	add.w	r2, r2, #12
d00835cc:	f43e af5d 	beq.w	d008248a <main+0x1d2e>
d00835d0:	f9b2 3000 	ldrsh.w	r3, [r2]
d00835d4:	f240 10df 	movw	r0, #479	; 0x1df
d00835d8:	3101      	adds	r1, #1
d00835da:	4283      	cmp	r3, r0
d00835dc:	dcf3      	bgt.n	d00835c6 <main+0x2e6a>
d00835de:	42ab      	cmp	r3, r5
d00835e0:	ddf1      	ble.n	d00835c6 <main+0x2e6a>
d00835e2:	8853      	ldrh	r3, [r2, #2]
d00835e4:	9806      	ldr	r0, [sp, #24]
d00835e6:	3310      	adds	r3, #16
d00835e8:	b21b      	sxth	r3, r3
d00835ea:	1a1b      	subs	r3, r3, r0
d00835ec:	3315      	adds	r3, #21
d00835ee:	2b2a      	cmp	r3, #42	; 0x2a
d00835f0:	d8e9      	bhi.n	d00835c6 <main+0x2e6a>
d00835f2:	e661      	b.n	d00832b8 <main+0x2b5c>
d00835f4:	d008a960 	.word	0xd008a960
d00835f8:	41c64e6d 	.word	0x41c64e6d
d00835fc:	d008a9ec 	.word	0xd008a9ec

d0083600 <__errno>:
d0083600:	4b01      	ldr	r3, [pc, #4]	; (d0083608 <__errno+0x8>)
d0083602:	6818      	ldr	r0, [r3, #0]
d0083604:	4770      	bx	lr
d0083606:	bf00      	nop
d0083608:	d008a964 	.word	0xd008a964

d008360c <malloc>:
d008360c:	4b02      	ldr	r3, [pc, #8]	; (d0083618 <malloc+0xc>)
d008360e:	4601      	mov	r1, r0
d0083610:	6818      	ldr	r0, [r3, #0]
d0083612:	f000 b85b 	b.w	d00836cc <_malloc_r>
d0083616:	bf00      	nop
d0083618:	d008a964 	.word	0xd008a964

d008361c <memset>:
d008361c:	4402      	add	r2, r0
d008361e:	4603      	mov	r3, r0
d0083620:	4293      	cmp	r3, r2
d0083622:	d100      	bne.n	d0083626 <memset+0xa>
d0083624:	4770      	bx	lr
d0083626:	f803 1b01 	strb.w	r1, [r3], #1
d008362a:	e7f9      	b.n	d0083620 <memset+0x4>

d008362c <_free_r>:
d008362c:	b537      	push	{r0, r1, r2, r4, r5, lr}
d008362e:	2900      	cmp	r1, #0
d0083630:	d048      	beq.n	d00836c4 <_free_r+0x98>
d0083632:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0083636:	9001      	str	r0, [sp, #4]
d0083638:	2b00      	cmp	r3, #0
d008363a:	f1a1 0404 	sub.w	r4, r1, #4
d008363e:	bfb8      	it	lt
d0083640:	18e4      	addlt	r4, r4, r3
d0083642:	f000 fcf3 	bl	d008402c <__malloc_lock>
d0083646:	4a20      	ldr	r2, [pc, #128]	; (d00836c8 <_free_r+0x9c>)
d0083648:	9801      	ldr	r0, [sp, #4]
d008364a:	6813      	ldr	r3, [r2, #0]
d008364c:	4615      	mov	r5, r2
d008364e:	b933      	cbnz	r3, d008365e <_free_r+0x32>
d0083650:	6063      	str	r3, [r4, #4]
d0083652:	6014      	str	r4, [r2, #0]
d0083654:	b003      	add	sp, #12
d0083656:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d008365a:	f000 bced 	b.w	d0084038 <__malloc_unlock>
d008365e:	42a3      	cmp	r3, r4
d0083660:	d90b      	bls.n	d008367a <_free_r+0x4e>
d0083662:	6821      	ldr	r1, [r4, #0]
d0083664:	1862      	adds	r2, r4, r1
d0083666:	4293      	cmp	r3, r2
d0083668:	bf04      	itt	eq
d008366a:	681a      	ldreq	r2, [r3, #0]
d008366c:	685b      	ldreq	r3, [r3, #4]
d008366e:	6063      	str	r3, [r4, #4]
d0083670:	bf04      	itt	eq
d0083672:	1852      	addeq	r2, r2, r1
d0083674:	6022      	streq	r2, [r4, #0]
d0083676:	602c      	str	r4, [r5, #0]
d0083678:	e7ec      	b.n	d0083654 <_free_r+0x28>
d008367a:	461a      	mov	r2, r3
d008367c:	685b      	ldr	r3, [r3, #4]
d008367e:	b10b      	cbz	r3, d0083684 <_free_r+0x58>
d0083680:	42a3      	cmp	r3, r4
d0083682:	d9fa      	bls.n	d008367a <_free_r+0x4e>
d0083684:	6811      	ldr	r1, [r2, #0]
d0083686:	1855      	adds	r5, r2, r1
d0083688:	42a5      	cmp	r5, r4
d008368a:	d10b      	bne.n	d00836a4 <_free_r+0x78>
d008368c:	6824      	ldr	r4, [r4, #0]
d008368e:	4421      	add	r1, r4
d0083690:	1854      	adds	r4, r2, r1
d0083692:	42a3      	cmp	r3, r4
d0083694:	6011      	str	r1, [r2, #0]
d0083696:	d1dd      	bne.n	d0083654 <_free_r+0x28>
d0083698:	681c      	ldr	r4, [r3, #0]
d008369a:	685b      	ldr	r3, [r3, #4]
d008369c:	6053      	str	r3, [r2, #4]
d008369e:	4421      	add	r1, r4
d00836a0:	6011      	str	r1, [r2, #0]
d00836a2:	e7d7      	b.n	d0083654 <_free_r+0x28>
d00836a4:	d902      	bls.n	d00836ac <_free_r+0x80>
d00836a6:	230c      	movs	r3, #12
d00836a8:	6003      	str	r3, [r0, #0]
d00836aa:	e7d3      	b.n	d0083654 <_free_r+0x28>
d00836ac:	6825      	ldr	r5, [r4, #0]
d00836ae:	1961      	adds	r1, r4, r5
d00836b0:	428b      	cmp	r3, r1
d00836b2:	bf04      	itt	eq
d00836b4:	6819      	ldreq	r1, [r3, #0]
d00836b6:	685b      	ldreq	r3, [r3, #4]
d00836b8:	6063      	str	r3, [r4, #4]
d00836ba:	bf04      	itt	eq
d00836bc:	1949      	addeq	r1, r1, r5
d00836be:	6021      	streq	r1, [r4, #0]
d00836c0:	6054      	str	r4, [r2, #4]
d00836c2:	e7c7      	b.n	d0083654 <_free_r+0x28>
d00836c4:	b003      	add	sp, #12
d00836c6:	bd30      	pop	{r4, r5, pc}
d00836c8:	d008ad80 	.word	0xd008ad80

d00836cc <_malloc_r>:
d00836cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00836ce:	1ccd      	adds	r5, r1, #3
d00836d0:	f025 0503 	bic.w	r5, r5, #3
d00836d4:	3508      	adds	r5, #8
d00836d6:	2d0c      	cmp	r5, #12
d00836d8:	bf38      	it	cc
d00836da:	250c      	movcc	r5, #12
d00836dc:	2d00      	cmp	r5, #0
d00836de:	4606      	mov	r6, r0
d00836e0:	db01      	blt.n	d00836e6 <_malloc_r+0x1a>
d00836e2:	42a9      	cmp	r1, r5
d00836e4:	d903      	bls.n	d00836ee <_malloc_r+0x22>
d00836e6:	230c      	movs	r3, #12
d00836e8:	6033      	str	r3, [r6, #0]
d00836ea:	2000      	movs	r0, #0
d00836ec:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00836ee:	f000 fc9d 	bl	d008402c <__malloc_lock>
d00836f2:	4921      	ldr	r1, [pc, #132]	; (d0083778 <_malloc_r+0xac>)
d00836f4:	680a      	ldr	r2, [r1, #0]
d00836f6:	4614      	mov	r4, r2
d00836f8:	b99c      	cbnz	r4, d0083722 <_malloc_r+0x56>
d00836fa:	4f20      	ldr	r7, [pc, #128]	; (d008377c <_malloc_r+0xb0>)
d00836fc:	683b      	ldr	r3, [r7, #0]
d00836fe:	b923      	cbnz	r3, d008370a <_malloc_r+0x3e>
d0083700:	4621      	mov	r1, r4
d0083702:	4630      	mov	r0, r6
d0083704:	f7fc fcfa 	bl	d00800fc <_sbrk_r>
d0083708:	6038      	str	r0, [r7, #0]
d008370a:	4629      	mov	r1, r5
d008370c:	4630      	mov	r0, r6
d008370e:	f7fc fcf5 	bl	d00800fc <_sbrk_r>
d0083712:	1c43      	adds	r3, r0, #1
d0083714:	d123      	bne.n	d008375e <_malloc_r+0x92>
d0083716:	230c      	movs	r3, #12
d0083718:	6033      	str	r3, [r6, #0]
d008371a:	4630      	mov	r0, r6
d008371c:	f000 fc8c 	bl	d0084038 <__malloc_unlock>
d0083720:	e7e3      	b.n	d00836ea <_malloc_r+0x1e>
d0083722:	6823      	ldr	r3, [r4, #0]
d0083724:	1b5b      	subs	r3, r3, r5
d0083726:	d417      	bmi.n	d0083758 <_malloc_r+0x8c>
d0083728:	2b0b      	cmp	r3, #11
d008372a:	d903      	bls.n	d0083734 <_malloc_r+0x68>
d008372c:	6023      	str	r3, [r4, #0]
d008372e:	441c      	add	r4, r3
d0083730:	6025      	str	r5, [r4, #0]
d0083732:	e004      	b.n	d008373e <_malloc_r+0x72>
d0083734:	6863      	ldr	r3, [r4, #4]
d0083736:	42a2      	cmp	r2, r4
d0083738:	bf0c      	ite	eq
d008373a:	600b      	streq	r3, [r1, #0]
d008373c:	6053      	strne	r3, [r2, #4]
d008373e:	4630      	mov	r0, r6
d0083740:	f000 fc7a 	bl	d0084038 <__malloc_unlock>
d0083744:	f104 000b 	add.w	r0, r4, #11
d0083748:	1d23      	adds	r3, r4, #4
d008374a:	f020 0007 	bic.w	r0, r0, #7
d008374e:	1ac2      	subs	r2, r0, r3
d0083750:	d0cc      	beq.n	d00836ec <_malloc_r+0x20>
d0083752:	1a1b      	subs	r3, r3, r0
d0083754:	50a3      	str	r3, [r4, r2]
d0083756:	e7c9      	b.n	d00836ec <_malloc_r+0x20>
d0083758:	4622      	mov	r2, r4
d008375a:	6864      	ldr	r4, [r4, #4]
d008375c:	e7cc      	b.n	d00836f8 <_malloc_r+0x2c>
d008375e:	1cc4      	adds	r4, r0, #3
d0083760:	f024 0403 	bic.w	r4, r4, #3
d0083764:	42a0      	cmp	r0, r4
d0083766:	d0e3      	beq.n	d0083730 <_malloc_r+0x64>
d0083768:	1a21      	subs	r1, r4, r0
d008376a:	4630      	mov	r0, r6
d008376c:	f7fc fcc6 	bl	d00800fc <_sbrk_r>
d0083770:	3001      	adds	r0, #1
d0083772:	d1dd      	bne.n	d0083730 <_malloc_r+0x64>
d0083774:	e7cf      	b.n	d0083716 <_malloc_r+0x4a>
d0083776:	bf00      	nop
d0083778:	d008ad80 	.word	0xd008ad80
d008377c:	d008ad84 	.word	0xd008ad84

d0083780 <_puts_r>:
d0083780:	b570      	push	{r4, r5, r6, lr}
d0083782:	460e      	mov	r6, r1
d0083784:	4605      	mov	r5, r0
d0083786:	b118      	cbz	r0, d0083790 <_puts_r+0x10>
d0083788:	6983      	ldr	r3, [r0, #24]
d008378a:	b90b      	cbnz	r3, d0083790 <_puts_r+0x10>
d008378c:	f000 fb4a 	bl	d0083e24 <__sinit>
d0083790:	69ab      	ldr	r3, [r5, #24]
d0083792:	68ac      	ldr	r4, [r5, #8]
d0083794:	b913      	cbnz	r3, d008379c <_puts_r+0x1c>
d0083796:	4628      	mov	r0, r5
d0083798:	f000 fb44 	bl	d0083e24 <__sinit>
d008379c:	4b2c      	ldr	r3, [pc, #176]	; (d0083850 <_puts_r+0xd0>)
d008379e:	429c      	cmp	r4, r3
d00837a0:	d120      	bne.n	d00837e4 <_puts_r+0x64>
d00837a2:	686c      	ldr	r4, [r5, #4]
d00837a4:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00837a6:	07db      	lsls	r3, r3, #31
d00837a8:	d405      	bmi.n	d00837b6 <_puts_r+0x36>
d00837aa:	89a3      	ldrh	r3, [r4, #12]
d00837ac:	0598      	lsls	r0, r3, #22
d00837ae:	d402      	bmi.n	d00837b6 <_puts_r+0x36>
d00837b0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00837b2:	f000 fbd5 	bl	d0083f60 <__retarget_lock_acquire_recursive>
d00837b6:	89a3      	ldrh	r3, [r4, #12]
d00837b8:	0719      	lsls	r1, r3, #28
d00837ba:	d51d      	bpl.n	d00837f8 <_puts_r+0x78>
d00837bc:	6923      	ldr	r3, [r4, #16]
d00837be:	b1db      	cbz	r3, d00837f8 <_puts_r+0x78>
d00837c0:	3e01      	subs	r6, #1
d00837c2:	68a3      	ldr	r3, [r4, #8]
d00837c4:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d00837c8:	3b01      	subs	r3, #1
d00837ca:	60a3      	str	r3, [r4, #8]
d00837cc:	bb39      	cbnz	r1, d008381e <_puts_r+0x9e>
d00837ce:	2b00      	cmp	r3, #0
d00837d0:	da38      	bge.n	d0083844 <_puts_r+0xc4>
d00837d2:	4622      	mov	r2, r4
d00837d4:	210a      	movs	r1, #10
d00837d6:	4628      	mov	r0, r5
d00837d8:	f000 f94a 	bl	d0083a70 <__swbuf_r>
d00837dc:	3001      	adds	r0, #1
d00837de:	d011      	beq.n	d0083804 <_puts_r+0x84>
d00837e0:	250a      	movs	r5, #10
d00837e2:	e011      	b.n	d0083808 <_puts_r+0x88>
d00837e4:	4b1b      	ldr	r3, [pc, #108]	; (d0083854 <_puts_r+0xd4>)
d00837e6:	429c      	cmp	r4, r3
d00837e8:	d101      	bne.n	d00837ee <_puts_r+0x6e>
d00837ea:	68ac      	ldr	r4, [r5, #8]
d00837ec:	e7da      	b.n	d00837a4 <_puts_r+0x24>
d00837ee:	4b1a      	ldr	r3, [pc, #104]	; (d0083858 <_puts_r+0xd8>)
d00837f0:	429c      	cmp	r4, r3
d00837f2:	bf08      	it	eq
d00837f4:	68ec      	ldreq	r4, [r5, #12]
d00837f6:	e7d5      	b.n	d00837a4 <_puts_r+0x24>
d00837f8:	4621      	mov	r1, r4
d00837fa:	4628      	mov	r0, r5
d00837fc:	f000 f98a 	bl	d0083b14 <__swsetup_r>
d0083800:	2800      	cmp	r0, #0
d0083802:	d0dd      	beq.n	d00837c0 <_puts_r+0x40>
d0083804:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0083808:	6e63      	ldr	r3, [r4, #100]	; 0x64
d008380a:	07da      	lsls	r2, r3, #31
d008380c:	d405      	bmi.n	d008381a <_puts_r+0x9a>
d008380e:	89a3      	ldrh	r3, [r4, #12]
d0083810:	059b      	lsls	r3, r3, #22
d0083812:	d402      	bmi.n	d008381a <_puts_r+0x9a>
d0083814:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0083816:	f000 fba4 	bl	d0083f62 <__retarget_lock_release_recursive>
d008381a:	4628      	mov	r0, r5
d008381c:	bd70      	pop	{r4, r5, r6, pc}
d008381e:	2b00      	cmp	r3, #0
d0083820:	da04      	bge.n	d008382c <_puts_r+0xac>
d0083822:	69a2      	ldr	r2, [r4, #24]
d0083824:	429a      	cmp	r2, r3
d0083826:	dc06      	bgt.n	d0083836 <_puts_r+0xb6>
d0083828:	290a      	cmp	r1, #10
d008382a:	d004      	beq.n	d0083836 <_puts_r+0xb6>
d008382c:	6823      	ldr	r3, [r4, #0]
d008382e:	1c5a      	adds	r2, r3, #1
d0083830:	6022      	str	r2, [r4, #0]
d0083832:	7019      	strb	r1, [r3, #0]
d0083834:	e7c5      	b.n	d00837c2 <_puts_r+0x42>
d0083836:	4622      	mov	r2, r4
d0083838:	4628      	mov	r0, r5
d008383a:	f000 f919 	bl	d0083a70 <__swbuf_r>
d008383e:	3001      	adds	r0, #1
d0083840:	d1bf      	bne.n	d00837c2 <_puts_r+0x42>
d0083842:	e7df      	b.n	d0083804 <_puts_r+0x84>
d0083844:	6823      	ldr	r3, [r4, #0]
d0083846:	250a      	movs	r5, #10
d0083848:	1c5a      	adds	r2, r3, #1
d008384a:	6022      	str	r2, [r4, #0]
d008384c:	701d      	strb	r5, [r3, #0]
d008384e:	e7db      	b.n	d0083808 <_puts_r+0x88>
d0083850:	d008a8b4 	.word	0xd008a8b4
d0083854:	d008a8d4 	.word	0xd008a8d4
d0083858:	d008a894 	.word	0xd008a894

d008385c <puts>:
d008385c:	4b02      	ldr	r3, [pc, #8]	; (d0083868 <puts+0xc>)
d008385e:	4601      	mov	r1, r0
d0083860:	6818      	ldr	r0, [r3, #0]
d0083862:	f7ff bf8d 	b.w	d0083780 <_puts_r>
d0083866:	bf00      	nop
d0083868:	d008a964 	.word	0xd008a964

d008386c <setbuf>:
d008386c:	2900      	cmp	r1, #0
d008386e:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0083872:	bf0c      	ite	eq
d0083874:	2202      	moveq	r2, #2
d0083876:	2200      	movne	r2, #0
d0083878:	f000 b800 	b.w	d008387c <setvbuf>

d008387c <setvbuf>:
d008387c:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0083880:	461d      	mov	r5, r3
d0083882:	4b5d      	ldr	r3, [pc, #372]	; (d00839f8 <setvbuf+0x17c>)
d0083884:	681f      	ldr	r7, [r3, #0]
d0083886:	4604      	mov	r4, r0
d0083888:	460e      	mov	r6, r1
d008388a:	4690      	mov	r8, r2
d008388c:	b127      	cbz	r7, d0083898 <setvbuf+0x1c>
d008388e:	69bb      	ldr	r3, [r7, #24]
d0083890:	b913      	cbnz	r3, d0083898 <setvbuf+0x1c>
d0083892:	4638      	mov	r0, r7
d0083894:	f000 fac6 	bl	d0083e24 <__sinit>
d0083898:	4b58      	ldr	r3, [pc, #352]	; (d00839fc <setvbuf+0x180>)
d008389a:	429c      	cmp	r4, r3
d008389c:	d167      	bne.n	d008396e <setvbuf+0xf2>
d008389e:	687c      	ldr	r4, [r7, #4]
d00838a0:	f1b8 0f02 	cmp.w	r8, #2
d00838a4:	d006      	beq.n	d00838b4 <setvbuf+0x38>
d00838a6:	f1b8 0f01 	cmp.w	r8, #1
d00838aa:	f200 809f 	bhi.w	d00839ec <setvbuf+0x170>
d00838ae:	2d00      	cmp	r5, #0
d00838b0:	f2c0 809c 	blt.w	d00839ec <setvbuf+0x170>
d00838b4:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00838b6:	07db      	lsls	r3, r3, #31
d00838b8:	d405      	bmi.n	d00838c6 <setvbuf+0x4a>
d00838ba:	89a3      	ldrh	r3, [r4, #12]
d00838bc:	0598      	lsls	r0, r3, #22
d00838be:	d402      	bmi.n	d00838c6 <setvbuf+0x4a>
d00838c0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00838c2:	f000 fb4d 	bl	d0083f60 <__retarget_lock_acquire_recursive>
d00838c6:	4621      	mov	r1, r4
d00838c8:	4638      	mov	r0, r7
d00838ca:	f000 fa17 	bl	d0083cfc <_fflush_r>
d00838ce:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00838d0:	b141      	cbz	r1, d00838e4 <setvbuf+0x68>
d00838d2:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00838d6:	4299      	cmp	r1, r3
d00838d8:	d002      	beq.n	d00838e0 <setvbuf+0x64>
d00838da:	4638      	mov	r0, r7
d00838dc:	f7ff fea6 	bl	d008362c <_free_r>
d00838e0:	2300      	movs	r3, #0
d00838e2:	6363      	str	r3, [r4, #52]	; 0x34
d00838e4:	2300      	movs	r3, #0
d00838e6:	61a3      	str	r3, [r4, #24]
d00838e8:	6063      	str	r3, [r4, #4]
d00838ea:	89a3      	ldrh	r3, [r4, #12]
d00838ec:	0619      	lsls	r1, r3, #24
d00838ee:	d503      	bpl.n	d00838f8 <setvbuf+0x7c>
d00838f0:	6921      	ldr	r1, [r4, #16]
d00838f2:	4638      	mov	r0, r7
d00838f4:	f7ff fe9a 	bl	d008362c <_free_r>
d00838f8:	89a3      	ldrh	r3, [r4, #12]
d00838fa:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00838fe:	f023 0303 	bic.w	r3, r3, #3
d0083902:	f1b8 0f02 	cmp.w	r8, #2
d0083906:	81a3      	strh	r3, [r4, #12]
d0083908:	d06c      	beq.n	d00839e4 <setvbuf+0x168>
d008390a:	ab01      	add	r3, sp, #4
d008390c:	466a      	mov	r2, sp
d008390e:	4621      	mov	r1, r4
d0083910:	4638      	mov	r0, r7
d0083912:	f000 fb27 	bl	d0083f64 <__swhatbuf_r>
d0083916:	89a3      	ldrh	r3, [r4, #12]
d0083918:	4318      	orrs	r0, r3
d008391a:	81a0      	strh	r0, [r4, #12]
d008391c:	2d00      	cmp	r5, #0
d008391e:	d130      	bne.n	d0083982 <setvbuf+0x106>
d0083920:	9d00      	ldr	r5, [sp, #0]
d0083922:	4628      	mov	r0, r5
d0083924:	f7ff fe72 	bl	d008360c <malloc>
d0083928:	4606      	mov	r6, r0
d008392a:	2800      	cmp	r0, #0
d008392c:	d155      	bne.n	d00839da <setvbuf+0x15e>
d008392e:	f8dd 9000 	ldr.w	r9, [sp]
d0083932:	45a9      	cmp	r9, r5
d0083934:	d14a      	bne.n	d00839cc <setvbuf+0x150>
d0083936:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d008393a:	2200      	movs	r2, #0
d008393c:	60a2      	str	r2, [r4, #8]
d008393e:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0083942:	6022      	str	r2, [r4, #0]
d0083944:	6122      	str	r2, [r4, #16]
d0083946:	2201      	movs	r2, #1
d0083948:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d008394c:	6162      	str	r2, [r4, #20]
d008394e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0083950:	f043 0302 	orr.w	r3, r3, #2
d0083954:	07d2      	lsls	r2, r2, #31
d0083956:	81a3      	strh	r3, [r4, #12]
d0083958:	d405      	bmi.n	d0083966 <setvbuf+0xea>
d008395a:	f413 7f00 	tst.w	r3, #512	; 0x200
d008395e:	d102      	bne.n	d0083966 <setvbuf+0xea>
d0083960:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0083962:	f000 fafe 	bl	d0083f62 <__retarget_lock_release_recursive>
d0083966:	4628      	mov	r0, r5
d0083968:	b003      	add	sp, #12
d008396a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d008396e:	4b24      	ldr	r3, [pc, #144]	; (d0083a00 <setvbuf+0x184>)
d0083970:	429c      	cmp	r4, r3
d0083972:	d101      	bne.n	d0083978 <setvbuf+0xfc>
d0083974:	68bc      	ldr	r4, [r7, #8]
d0083976:	e793      	b.n	d00838a0 <setvbuf+0x24>
d0083978:	4b22      	ldr	r3, [pc, #136]	; (d0083a04 <setvbuf+0x188>)
d008397a:	429c      	cmp	r4, r3
d008397c:	bf08      	it	eq
d008397e:	68fc      	ldreq	r4, [r7, #12]
d0083980:	e78e      	b.n	d00838a0 <setvbuf+0x24>
d0083982:	2e00      	cmp	r6, #0
d0083984:	d0cd      	beq.n	d0083922 <setvbuf+0xa6>
d0083986:	69bb      	ldr	r3, [r7, #24]
d0083988:	b913      	cbnz	r3, d0083990 <setvbuf+0x114>
d008398a:	4638      	mov	r0, r7
d008398c:	f000 fa4a 	bl	d0083e24 <__sinit>
d0083990:	f1b8 0f01 	cmp.w	r8, #1
d0083994:	bf08      	it	eq
d0083996:	89a3      	ldrheq	r3, [r4, #12]
d0083998:	6026      	str	r6, [r4, #0]
d008399a:	bf04      	itt	eq
d008399c:	f043 0301 	orreq.w	r3, r3, #1
d00839a0:	81a3      	strheq	r3, [r4, #12]
d00839a2:	89a2      	ldrh	r2, [r4, #12]
d00839a4:	f012 0308 	ands.w	r3, r2, #8
d00839a8:	e9c4 6504 	strd	r6, r5, [r4, #16]
d00839ac:	d01c      	beq.n	d00839e8 <setvbuf+0x16c>
d00839ae:	07d3      	lsls	r3, r2, #31
d00839b0:	bf41      	itttt	mi
d00839b2:	2300      	movmi	r3, #0
d00839b4:	426d      	negmi	r5, r5
d00839b6:	60a3      	strmi	r3, [r4, #8]
d00839b8:	61a5      	strmi	r5, [r4, #24]
d00839ba:	bf58      	it	pl
d00839bc:	60a5      	strpl	r5, [r4, #8]
d00839be:	6e65      	ldr	r5, [r4, #100]	; 0x64
d00839c0:	f015 0501 	ands.w	r5, r5, #1
d00839c4:	d115      	bne.n	d00839f2 <setvbuf+0x176>
d00839c6:	f412 7f00 	tst.w	r2, #512	; 0x200
d00839ca:	e7c8      	b.n	d008395e <setvbuf+0xe2>
d00839cc:	4648      	mov	r0, r9
d00839ce:	f7ff fe1d 	bl	d008360c <malloc>
d00839d2:	4606      	mov	r6, r0
d00839d4:	2800      	cmp	r0, #0
d00839d6:	d0ae      	beq.n	d0083936 <setvbuf+0xba>
d00839d8:	464d      	mov	r5, r9
d00839da:	89a3      	ldrh	r3, [r4, #12]
d00839dc:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00839e0:	81a3      	strh	r3, [r4, #12]
d00839e2:	e7d0      	b.n	d0083986 <setvbuf+0x10a>
d00839e4:	2500      	movs	r5, #0
d00839e6:	e7a8      	b.n	d008393a <setvbuf+0xbe>
d00839e8:	60a3      	str	r3, [r4, #8]
d00839ea:	e7e8      	b.n	d00839be <setvbuf+0x142>
d00839ec:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00839f0:	e7b9      	b.n	d0083966 <setvbuf+0xea>
d00839f2:	2500      	movs	r5, #0
d00839f4:	e7b7      	b.n	d0083966 <setvbuf+0xea>
d00839f6:	bf00      	nop
d00839f8:	d008a964 	.word	0xd008a964
d00839fc:	d008a8b4 	.word	0xd008a8b4
d0083a00:	d008a8d4 	.word	0xd008a8d4
d0083a04:	d008a894 	.word	0xd008a894

d0083a08 <sniprintf>:
d0083a08:	b40c      	push	{r2, r3}
d0083a0a:	b530      	push	{r4, r5, lr}
d0083a0c:	4b17      	ldr	r3, [pc, #92]	; (d0083a6c <sniprintf+0x64>)
d0083a0e:	1e0c      	subs	r4, r1, #0
d0083a10:	681d      	ldr	r5, [r3, #0]
d0083a12:	b09d      	sub	sp, #116	; 0x74
d0083a14:	da08      	bge.n	d0083a28 <sniprintf+0x20>
d0083a16:	238b      	movs	r3, #139	; 0x8b
d0083a18:	602b      	str	r3, [r5, #0]
d0083a1a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0083a1e:	b01d      	add	sp, #116	; 0x74
d0083a20:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0083a24:	b002      	add	sp, #8
d0083a26:	4770      	bx	lr
d0083a28:	f44f 7302 	mov.w	r3, #520	; 0x208
d0083a2c:	f8ad 3014 	strh.w	r3, [sp, #20]
d0083a30:	bf14      	ite	ne
d0083a32:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d0083a36:	4623      	moveq	r3, r4
d0083a38:	9304      	str	r3, [sp, #16]
d0083a3a:	9307      	str	r3, [sp, #28]
d0083a3c:	f64f 73ff 	movw	r3, #65535	; 0xffff
d0083a40:	9002      	str	r0, [sp, #8]
d0083a42:	9006      	str	r0, [sp, #24]
d0083a44:	f8ad 3016 	strh.w	r3, [sp, #22]
d0083a48:	9a20      	ldr	r2, [sp, #128]	; 0x80
d0083a4a:	ab21      	add	r3, sp, #132	; 0x84
d0083a4c:	a902      	add	r1, sp, #8
d0083a4e:	4628      	mov	r0, r5
d0083a50:	9301      	str	r3, [sp, #4]
d0083a52:	f000 fb53 	bl	d00840fc <_svfiprintf_r>
d0083a56:	1c43      	adds	r3, r0, #1
d0083a58:	bfbc      	itt	lt
d0083a5a:	238b      	movlt	r3, #139	; 0x8b
d0083a5c:	602b      	strlt	r3, [r5, #0]
d0083a5e:	2c00      	cmp	r4, #0
d0083a60:	d0dd      	beq.n	d0083a1e <sniprintf+0x16>
d0083a62:	9b02      	ldr	r3, [sp, #8]
d0083a64:	2200      	movs	r2, #0
d0083a66:	701a      	strb	r2, [r3, #0]
d0083a68:	e7d9      	b.n	d0083a1e <sniprintf+0x16>
d0083a6a:	bf00      	nop
d0083a6c:	d008a964 	.word	0xd008a964

d0083a70 <__swbuf_r>:
d0083a70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0083a72:	460e      	mov	r6, r1
d0083a74:	4614      	mov	r4, r2
d0083a76:	4605      	mov	r5, r0
d0083a78:	b118      	cbz	r0, d0083a82 <__swbuf_r+0x12>
d0083a7a:	6983      	ldr	r3, [r0, #24]
d0083a7c:	b90b      	cbnz	r3, d0083a82 <__swbuf_r+0x12>
d0083a7e:	f000 f9d1 	bl	d0083e24 <__sinit>
d0083a82:	4b21      	ldr	r3, [pc, #132]	; (d0083b08 <__swbuf_r+0x98>)
d0083a84:	429c      	cmp	r4, r3
d0083a86:	d12b      	bne.n	d0083ae0 <__swbuf_r+0x70>
d0083a88:	686c      	ldr	r4, [r5, #4]
d0083a8a:	69a3      	ldr	r3, [r4, #24]
d0083a8c:	60a3      	str	r3, [r4, #8]
d0083a8e:	89a3      	ldrh	r3, [r4, #12]
d0083a90:	071a      	lsls	r2, r3, #28
d0083a92:	d52f      	bpl.n	d0083af4 <__swbuf_r+0x84>
d0083a94:	6923      	ldr	r3, [r4, #16]
d0083a96:	b36b      	cbz	r3, d0083af4 <__swbuf_r+0x84>
d0083a98:	6923      	ldr	r3, [r4, #16]
d0083a9a:	6820      	ldr	r0, [r4, #0]
d0083a9c:	1ac0      	subs	r0, r0, r3
d0083a9e:	6963      	ldr	r3, [r4, #20]
d0083aa0:	b2f6      	uxtb	r6, r6
d0083aa2:	4283      	cmp	r3, r0
d0083aa4:	4637      	mov	r7, r6
d0083aa6:	dc04      	bgt.n	d0083ab2 <__swbuf_r+0x42>
d0083aa8:	4621      	mov	r1, r4
d0083aaa:	4628      	mov	r0, r5
d0083aac:	f000 f926 	bl	d0083cfc <_fflush_r>
d0083ab0:	bb30      	cbnz	r0, d0083b00 <__swbuf_r+0x90>
d0083ab2:	68a3      	ldr	r3, [r4, #8]
d0083ab4:	3b01      	subs	r3, #1
d0083ab6:	60a3      	str	r3, [r4, #8]
d0083ab8:	6823      	ldr	r3, [r4, #0]
d0083aba:	1c5a      	adds	r2, r3, #1
d0083abc:	6022      	str	r2, [r4, #0]
d0083abe:	701e      	strb	r6, [r3, #0]
d0083ac0:	6963      	ldr	r3, [r4, #20]
d0083ac2:	3001      	adds	r0, #1
d0083ac4:	4283      	cmp	r3, r0
d0083ac6:	d004      	beq.n	d0083ad2 <__swbuf_r+0x62>
d0083ac8:	89a3      	ldrh	r3, [r4, #12]
d0083aca:	07db      	lsls	r3, r3, #31
d0083acc:	d506      	bpl.n	d0083adc <__swbuf_r+0x6c>
d0083ace:	2e0a      	cmp	r6, #10
d0083ad0:	d104      	bne.n	d0083adc <__swbuf_r+0x6c>
d0083ad2:	4621      	mov	r1, r4
d0083ad4:	4628      	mov	r0, r5
d0083ad6:	f000 f911 	bl	d0083cfc <_fflush_r>
d0083ada:	b988      	cbnz	r0, d0083b00 <__swbuf_r+0x90>
d0083adc:	4638      	mov	r0, r7
d0083ade:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0083ae0:	4b0a      	ldr	r3, [pc, #40]	; (d0083b0c <__swbuf_r+0x9c>)
d0083ae2:	429c      	cmp	r4, r3
d0083ae4:	d101      	bne.n	d0083aea <__swbuf_r+0x7a>
d0083ae6:	68ac      	ldr	r4, [r5, #8]
d0083ae8:	e7cf      	b.n	d0083a8a <__swbuf_r+0x1a>
d0083aea:	4b09      	ldr	r3, [pc, #36]	; (d0083b10 <__swbuf_r+0xa0>)
d0083aec:	429c      	cmp	r4, r3
d0083aee:	bf08      	it	eq
d0083af0:	68ec      	ldreq	r4, [r5, #12]
d0083af2:	e7ca      	b.n	d0083a8a <__swbuf_r+0x1a>
d0083af4:	4621      	mov	r1, r4
d0083af6:	4628      	mov	r0, r5
d0083af8:	f000 f80c 	bl	d0083b14 <__swsetup_r>
d0083afc:	2800      	cmp	r0, #0
d0083afe:	d0cb      	beq.n	d0083a98 <__swbuf_r+0x28>
d0083b00:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d0083b04:	e7ea      	b.n	d0083adc <__swbuf_r+0x6c>
d0083b06:	bf00      	nop
d0083b08:	d008a8b4 	.word	0xd008a8b4
d0083b0c:	d008a8d4 	.word	0xd008a8d4
d0083b10:	d008a894 	.word	0xd008a894

d0083b14 <__swsetup_r>:
d0083b14:	4b32      	ldr	r3, [pc, #200]	; (d0083be0 <__swsetup_r+0xcc>)
d0083b16:	b570      	push	{r4, r5, r6, lr}
d0083b18:	681d      	ldr	r5, [r3, #0]
d0083b1a:	4606      	mov	r6, r0
d0083b1c:	460c      	mov	r4, r1
d0083b1e:	b125      	cbz	r5, d0083b2a <__swsetup_r+0x16>
d0083b20:	69ab      	ldr	r3, [r5, #24]
d0083b22:	b913      	cbnz	r3, d0083b2a <__swsetup_r+0x16>
d0083b24:	4628      	mov	r0, r5
d0083b26:	f000 f97d 	bl	d0083e24 <__sinit>
d0083b2a:	4b2e      	ldr	r3, [pc, #184]	; (d0083be4 <__swsetup_r+0xd0>)
d0083b2c:	429c      	cmp	r4, r3
d0083b2e:	d10f      	bne.n	d0083b50 <__swsetup_r+0x3c>
d0083b30:	686c      	ldr	r4, [r5, #4]
d0083b32:	89a3      	ldrh	r3, [r4, #12]
d0083b34:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0083b38:	0719      	lsls	r1, r3, #28
d0083b3a:	d42c      	bmi.n	d0083b96 <__swsetup_r+0x82>
d0083b3c:	06dd      	lsls	r5, r3, #27
d0083b3e:	d411      	bmi.n	d0083b64 <__swsetup_r+0x50>
d0083b40:	2309      	movs	r3, #9
d0083b42:	6033      	str	r3, [r6, #0]
d0083b44:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d0083b48:	81a3      	strh	r3, [r4, #12]
d0083b4a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0083b4e:	e03e      	b.n	d0083bce <__swsetup_r+0xba>
d0083b50:	4b25      	ldr	r3, [pc, #148]	; (d0083be8 <__swsetup_r+0xd4>)
d0083b52:	429c      	cmp	r4, r3
d0083b54:	d101      	bne.n	d0083b5a <__swsetup_r+0x46>
d0083b56:	68ac      	ldr	r4, [r5, #8]
d0083b58:	e7eb      	b.n	d0083b32 <__swsetup_r+0x1e>
d0083b5a:	4b24      	ldr	r3, [pc, #144]	; (d0083bec <__swsetup_r+0xd8>)
d0083b5c:	429c      	cmp	r4, r3
d0083b5e:	bf08      	it	eq
d0083b60:	68ec      	ldreq	r4, [r5, #12]
d0083b62:	e7e6      	b.n	d0083b32 <__swsetup_r+0x1e>
d0083b64:	0758      	lsls	r0, r3, #29
d0083b66:	d512      	bpl.n	d0083b8e <__swsetup_r+0x7a>
d0083b68:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0083b6a:	b141      	cbz	r1, d0083b7e <__swsetup_r+0x6a>
d0083b6c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0083b70:	4299      	cmp	r1, r3
d0083b72:	d002      	beq.n	d0083b7a <__swsetup_r+0x66>
d0083b74:	4630      	mov	r0, r6
d0083b76:	f7ff fd59 	bl	d008362c <_free_r>
d0083b7a:	2300      	movs	r3, #0
d0083b7c:	6363      	str	r3, [r4, #52]	; 0x34
d0083b7e:	89a3      	ldrh	r3, [r4, #12]
d0083b80:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d0083b84:	81a3      	strh	r3, [r4, #12]
d0083b86:	2300      	movs	r3, #0
d0083b88:	6063      	str	r3, [r4, #4]
d0083b8a:	6923      	ldr	r3, [r4, #16]
d0083b8c:	6023      	str	r3, [r4, #0]
d0083b8e:	89a3      	ldrh	r3, [r4, #12]
d0083b90:	f043 0308 	orr.w	r3, r3, #8
d0083b94:	81a3      	strh	r3, [r4, #12]
d0083b96:	6923      	ldr	r3, [r4, #16]
d0083b98:	b94b      	cbnz	r3, d0083bae <__swsetup_r+0x9a>
d0083b9a:	89a3      	ldrh	r3, [r4, #12]
d0083b9c:	f403 7320 	and.w	r3, r3, #640	; 0x280
d0083ba0:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d0083ba4:	d003      	beq.n	d0083bae <__swsetup_r+0x9a>
d0083ba6:	4621      	mov	r1, r4
d0083ba8:	4630      	mov	r0, r6
d0083baa:	f000 f9ff 	bl	d0083fac <__smakebuf_r>
d0083bae:	89a0      	ldrh	r0, [r4, #12]
d0083bb0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0083bb4:	f010 0301 	ands.w	r3, r0, #1
d0083bb8:	d00a      	beq.n	d0083bd0 <__swsetup_r+0xbc>
d0083bba:	2300      	movs	r3, #0
d0083bbc:	60a3      	str	r3, [r4, #8]
d0083bbe:	6963      	ldr	r3, [r4, #20]
d0083bc0:	425b      	negs	r3, r3
d0083bc2:	61a3      	str	r3, [r4, #24]
d0083bc4:	6923      	ldr	r3, [r4, #16]
d0083bc6:	b943      	cbnz	r3, d0083bda <__swsetup_r+0xc6>
d0083bc8:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d0083bcc:	d1ba      	bne.n	d0083b44 <__swsetup_r+0x30>
d0083bce:	bd70      	pop	{r4, r5, r6, pc}
d0083bd0:	0781      	lsls	r1, r0, #30
d0083bd2:	bf58      	it	pl
d0083bd4:	6963      	ldrpl	r3, [r4, #20]
d0083bd6:	60a3      	str	r3, [r4, #8]
d0083bd8:	e7f4      	b.n	d0083bc4 <__swsetup_r+0xb0>
d0083bda:	2000      	movs	r0, #0
d0083bdc:	e7f7      	b.n	d0083bce <__swsetup_r+0xba>
d0083bde:	bf00      	nop
d0083be0:	d008a964 	.word	0xd008a964
d0083be4:	d008a8b4 	.word	0xd008a8b4
d0083be8:	d008a8d4 	.word	0xd008a8d4
d0083bec:	d008a894 	.word	0xd008a894

d0083bf0 <__sflush_r>:
d0083bf0:	898a      	ldrh	r2, [r1, #12]
d0083bf2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0083bf6:	4605      	mov	r5, r0
d0083bf8:	0710      	lsls	r0, r2, #28
d0083bfa:	460c      	mov	r4, r1
d0083bfc:	d458      	bmi.n	d0083cb0 <__sflush_r+0xc0>
d0083bfe:	684b      	ldr	r3, [r1, #4]
d0083c00:	2b00      	cmp	r3, #0
d0083c02:	dc05      	bgt.n	d0083c10 <__sflush_r+0x20>
d0083c04:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0083c06:	2b00      	cmp	r3, #0
d0083c08:	dc02      	bgt.n	d0083c10 <__sflush_r+0x20>
d0083c0a:	2000      	movs	r0, #0
d0083c0c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0083c10:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0083c12:	2e00      	cmp	r6, #0
d0083c14:	d0f9      	beq.n	d0083c0a <__sflush_r+0x1a>
d0083c16:	2300      	movs	r3, #0
d0083c18:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0083c1c:	682f      	ldr	r7, [r5, #0]
d0083c1e:	602b      	str	r3, [r5, #0]
d0083c20:	d032      	beq.n	d0083c88 <__sflush_r+0x98>
d0083c22:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0083c24:	89a3      	ldrh	r3, [r4, #12]
d0083c26:	075a      	lsls	r2, r3, #29
d0083c28:	d505      	bpl.n	d0083c36 <__sflush_r+0x46>
d0083c2a:	6863      	ldr	r3, [r4, #4]
d0083c2c:	1ac0      	subs	r0, r0, r3
d0083c2e:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0083c30:	b10b      	cbz	r3, d0083c36 <__sflush_r+0x46>
d0083c32:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0083c34:	1ac0      	subs	r0, r0, r3
d0083c36:	2300      	movs	r3, #0
d0083c38:	4602      	mov	r2, r0
d0083c3a:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0083c3c:	6a21      	ldr	r1, [r4, #32]
d0083c3e:	4628      	mov	r0, r5
d0083c40:	47b0      	blx	r6
d0083c42:	1c43      	adds	r3, r0, #1
d0083c44:	89a3      	ldrh	r3, [r4, #12]
d0083c46:	d106      	bne.n	d0083c56 <__sflush_r+0x66>
d0083c48:	6829      	ldr	r1, [r5, #0]
d0083c4a:	291d      	cmp	r1, #29
d0083c4c:	d82c      	bhi.n	d0083ca8 <__sflush_r+0xb8>
d0083c4e:	4a2a      	ldr	r2, [pc, #168]	; (d0083cf8 <__sflush_r+0x108>)
d0083c50:	40ca      	lsrs	r2, r1
d0083c52:	07d6      	lsls	r6, r2, #31
d0083c54:	d528      	bpl.n	d0083ca8 <__sflush_r+0xb8>
d0083c56:	2200      	movs	r2, #0
d0083c58:	6062      	str	r2, [r4, #4]
d0083c5a:	04d9      	lsls	r1, r3, #19
d0083c5c:	6922      	ldr	r2, [r4, #16]
d0083c5e:	6022      	str	r2, [r4, #0]
d0083c60:	d504      	bpl.n	d0083c6c <__sflush_r+0x7c>
d0083c62:	1c42      	adds	r2, r0, #1
d0083c64:	d101      	bne.n	d0083c6a <__sflush_r+0x7a>
d0083c66:	682b      	ldr	r3, [r5, #0]
d0083c68:	b903      	cbnz	r3, d0083c6c <__sflush_r+0x7c>
d0083c6a:	6560      	str	r0, [r4, #84]	; 0x54
d0083c6c:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0083c6e:	602f      	str	r7, [r5, #0]
d0083c70:	2900      	cmp	r1, #0
d0083c72:	d0ca      	beq.n	d0083c0a <__sflush_r+0x1a>
d0083c74:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0083c78:	4299      	cmp	r1, r3
d0083c7a:	d002      	beq.n	d0083c82 <__sflush_r+0x92>
d0083c7c:	4628      	mov	r0, r5
d0083c7e:	f7ff fcd5 	bl	d008362c <_free_r>
d0083c82:	2000      	movs	r0, #0
d0083c84:	6360      	str	r0, [r4, #52]	; 0x34
d0083c86:	e7c1      	b.n	d0083c0c <__sflush_r+0x1c>
d0083c88:	6a21      	ldr	r1, [r4, #32]
d0083c8a:	2301      	movs	r3, #1
d0083c8c:	4628      	mov	r0, r5
d0083c8e:	47b0      	blx	r6
d0083c90:	1c41      	adds	r1, r0, #1
d0083c92:	d1c7      	bne.n	d0083c24 <__sflush_r+0x34>
d0083c94:	682b      	ldr	r3, [r5, #0]
d0083c96:	2b00      	cmp	r3, #0
d0083c98:	d0c4      	beq.n	d0083c24 <__sflush_r+0x34>
d0083c9a:	2b1d      	cmp	r3, #29
d0083c9c:	d001      	beq.n	d0083ca2 <__sflush_r+0xb2>
d0083c9e:	2b16      	cmp	r3, #22
d0083ca0:	d101      	bne.n	d0083ca6 <__sflush_r+0xb6>
d0083ca2:	602f      	str	r7, [r5, #0]
d0083ca4:	e7b1      	b.n	d0083c0a <__sflush_r+0x1a>
d0083ca6:	89a3      	ldrh	r3, [r4, #12]
d0083ca8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0083cac:	81a3      	strh	r3, [r4, #12]
d0083cae:	e7ad      	b.n	d0083c0c <__sflush_r+0x1c>
d0083cb0:	690f      	ldr	r7, [r1, #16]
d0083cb2:	2f00      	cmp	r7, #0
d0083cb4:	d0a9      	beq.n	d0083c0a <__sflush_r+0x1a>
d0083cb6:	0793      	lsls	r3, r2, #30
d0083cb8:	680e      	ldr	r6, [r1, #0]
d0083cba:	bf08      	it	eq
d0083cbc:	694b      	ldreq	r3, [r1, #20]
d0083cbe:	600f      	str	r7, [r1, #0]
d0083cc0:	bf18      	it	ne
d0083cc2:	2300      	movne	r3, #0
d0083cc4:	eba6 0807 	sub.w	r8, r6, r7
d0083cc8:	608b      	str	r3, [r1, #8]
d0083cca:	f1b8 0f00 	cmp.w	r8, #0
d0083cce:	dd9c      	ble.n	d0083c0a <__sflush_r+0x1a>
d0083cd0:	6a21      	ldr	r1, [r4, #32]
d0083cd2:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0083cd4:	4643      	mov	r3, r8
d0083cd6:	463a      	mov	r2, r7
d0083cd8:	4628      	mov	r0, r5
d0083cda:	47b0      	blx	r6
d0083cdc:	2800      	cmp	r0, #0
d0083cde:	dc06      	bgt.n	d0083cee <__sflush_r+0xfe>
d0083ce0:	89a3      	ldrh	r3, [r4, #12]
d0083ce2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0083ce6:	81a3      	strh	r3, [r4, #12]
d0083ce8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0083cec:	e78e      	b.n	d0083c0c <__sflush_r+0x1c>
d0083cee:	4407      	add	r7, r0
d0083cf0:	eba8 0800 	sub.w	r8, r8, r0
d0083cf4:	e7e9      	b.n	d0083cca <__sflush_r+0xda>
d0083cf6:	bf00      	nop
d0083cf8:	20400001 	.word	0x20400001

d0083cfc <_fflush_r>:
d0083cfc:	b538      	push	{r3, r4, r5, lr}
d0083cfe:	690b      	ldr	r3, [r1, #16]
d0083d00:	4605      	mov	r5, r0
d0083d02:	460c      	mov	r4, r1
d0083d04:	b913      	cbnz	r3, d0083d0c <_fflush_r+0x10>
d0083d06:	2500      	movs	r5, #0
d0083d08:	4628      	mov	r0, r5
d0083d0a:	bd38      	pop	{r3, r4, r5, pc}
d0083d0c:	b118      	cbz	r0, d0083d16 <_fflush_r+0x1a>
d0083d0e:	6983      	ldr	r3, [r0, #24]
d0083d10:	b90b      	cbnz	r3, d0083d16 <_fflush_r+0x1a>
d0083d12:	f000 f887 	bl	d0083e24 <__sinit>
d0083d16:	4b14      	ldr	r3, [pc, #80]	; (d0083d68 <_fflush_r+0x6c>)
d0083d18:	429c      	cmp	r4, r3
d0083d1a:	d11b      	bne.n	d0083d54 <_fflush_r+0x58>
d0083d1c:	686c      	ldr	r4, [r5, #4]
d0083d1e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0083d22:	2b00      	cmp	r3, #0
d0083d24:	d0ef      	beq.n	d0083d06 <_fflush_r+0xa>
d0083d26:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0083d28:	07d0      	lsls	r0, r2, #31
d0083d2a:	d404      	bmi.n	d0083d36 <_fflush_r+0x3a>
d0083d2c:	0599      	lsls	r1, r3, #22
d0083d2e:	d402      	bmi.n	d0083d36 <_fflush_r+0x3a>
d0083d30:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0083d32:	f000 f915 	bl	d0083f60 <__retarget_lock_acquire_recursive>
d0083d36:	4628      	mov	r0, r5
d0083d38:	4621      	mov	r1, r4
d0083d3a:	f7ff ff59 	bl	d0083bf0 <__sflush_r>
d0083d3e:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0083d40:	07da      	lsls	r2, r3, #31
d0083d42:	4605      	mov	r5, r0
d0083d44:	d4e0      	bmi.n	d0083d08 <_fflush_r+0xc>
d0083d46:	89a3      	ldrh	r3, [r4, #12]
d0083d48:	059b      	lsls	r3, r3, #22
d0083d4a:	d4dd      	bmi.n	d0083d08 <_fflush_r+0xc>
d0083d4c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0083d4e:	f000 f908 	bl	d0083f62 <__retarget_lock_release_recursive>
d0083d52:	e7d9      	b.n	d0083d08 <_fflush_r+0xc>
d0083d54:	4b05      	ldr	r3, [pc, #20]	; (d0083d6c <_fflush_r+0x70>)
d0083d56:	429c      	cmp	r4, r3
d0083d58:	d101      	bne.n	d0083d5e <_fflush_r+0x62>
d0083d5a:	68ac      	ldr	r4, [r5, #8]
d0083d5c:	e7df      	b.n	d0083d1e <_fflush_r+0x22>
d0083d5e:	4b04      	ldr	r3, [pc, #16]	; (d0083d70 <_fflush_r+0x74>)
d0083d60:	429c      	cmp	r4, r3
d0083d62:	bf08      	it	eq
d0083d64:	68ec      	ldreq	r4, [r5, #12]
d0083d66:	e7da      	b.n	d0083d1e <_fflush_r+0x22>
d0083d68:	d008a8b4 	.word	0xd008a8b4
d0083d6c:	d008a8d4 	.word	0xd008a8d4
d0083d70:	d008a894 	.word	0xd008a894

d0083d74 <std>:
d0083d74:	2300      	movs	r3, #0
d0083d76:	b510      	push	{r4, lr}
d0083d78:	4604      	mov	r4, r0
d0083d7a:	e9c0 3300 	strd	r3, r3, [r0]
d0083d7e:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0083d82:	6083      	str	r3, [r0, #8]
d0083d84:	8181      	strh	r1, [r0, #12]
d0083d86:	6643      	str	r3, [r0, #100]	; 0x64
d0083d88:	81c2      	strh	r2, [r0, #14]
d0083d8a:	6183      	str	r3, [r0, #24]
d0083d8c:	4619      	mov	r1, r3
d0083d8e:	2208      	movs	r2, #8
d0083d90:	305c      	adds	r0, #92	; 0x5c
d0083d92:	f7ff fc43 	bl	d008361c <memset>
d0083d96:	4b05      	ldr	r3, [pc, #20]	; (d0083dac <std+0x38>)
d0083d98:	6263      	str	r3, [r4, #36]	; 0x24
d0083d9a:	4b05      	ldr	r3, [pc, #20]	; (d0083db0 <std+0x3c>)
d0083d9c:	62a3      	str	r3, [r4, #40]	; 0x28
d0083d9e:	4b05      	ldr	r3, [pc, #20]	; (d0083db4 <std+0x40>)
d0083da0:	62e3      	str	r3, [r4, #44]	; 0x2c
d0083da2:	4b05      	ldr	r3, [pc, #20]	; (d0083db8 <std+0x44>)
d0083da4:	6224      	str	r4, [r4, #32]
d0083da6:	6323      	str	r3, [r4, #48]	; 0x30
d0083da8:	bd10      	pop	{r4, pc}
d0083daa:	bf00      	nop
d0083dac:	d0084625 	.word	0xd0084625
d0083db0:	d0084647 	.word	0xd0084647
d0083db4:	d008467f 	.word	0xd008467f
d0083db8:	d00846a3 	.word	0xd00846a3

d0083dbc <_cleanup_r>:
d0083dbc:	4901      	ldr	r1, [pc, #4]	; (d0083dc4 <_cleanup_r+0x8>)
d0083dbe:	f000 b8af 	b.w	d0083f20 <_fwalk_reent>
d0083dc2:	bf00      	nop
d0083dc4:	d0083cfd 	.word	0xd0083cfd

d0083dc8 <__sfmoreglue>:
d0083dc8:	b570      	push	{r4, r5, r6, lr}
d0083dca:	1e4a      	subs	r2, r1, #1
d0083dcc:	2568      	movs	r5, #104	; 0x68
d0083dce:	4355      	muls	r5, r2
d0083dd0:	460e      	mov	r6, r1
d0083dd2:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0083dd6:	f7ff fc79 	bl	d00836cc <_malloc_r>
d0083dda:	4604      	mov	r4, r0
d0083ddc:	b140      	cbz	r0, d0083df0 <__sfmoreglue+0x28>
d0083dde:	2100      	movs	r1, #0
d0083de0:	e9c0 1600 	strd	r1, r6, [r0]
d0083de4:	300c      	adds	r0, #12
d0083de6:	60a0      	str	r0, [r4, #8]
d0083de8:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0083dec:	f7ff fc16 	bl	d008361c <memset>
d0083df0:	4620      	mov	r0, r4
d0083df2:	bd70      	pop	{r4, r5, r6, pc}

d0083df4 <__sfp_lock_acquire>:
d0083df4:	4801      	ldr	r0, [pc, #4]	; (d0083dfc <__sfp_lock_acquire+0x8>)
d0083df6:	f000 b8b3 	b.w	d0083f60 <__retarget_lock_acquire_recursive>
d0083dfa:	bf00      	nop
d0083dfc:	d008adec 	.word	0xd008adec

d0083e00 <__sfp_lock_release>:
d0083e00:	4801      	ldr	r0, [pc, #4]	; (d0083e08 <__sfp_lock_release+0x8>)
d0083e02:	f000 b8ae 	b.w	d0083f62 <__retarget_lock_release_recursive>
d0083e06:	bf00      	nop
d0083e08:	d008adec 	.word	0xd008adec

d0083e0c <__sinit_lock_acquire>:
d0083e0c:	4801      	ldr	r0, [pc, #4]	; (d0083e14 <__sinit_lock_acquire+0x8>)
d0083e0e:	f000 b8a7 	b.w	d0083f60 <__retarget_lock_acquire_recursive>
d0083e12:	bf00      	nop
d0083e14:	d008ade7 	.word	0xd008ade7

d0083e18 <__sinit_lock_release>:
d0083e18:	4801      	ldr	r0, [pc, #4]	; (d0083e20 <__sinit_lock_release+0x8>)
d0083e1a:	f000 b8a2 	b.w	d0083f62 <__retarget_lock_release_recursive>
d0083e1e:	bf00      	nop
d0083e20:	d008ade7 	.word	0xd008ade7

d0083e24 <__sinit>:
d0083e24:	b510      	push	{r4, lr}
d0083e26:	4604      	mov	r4, r0
d0083e28:	f7ff fff0 	bl	d0083e0c <__sinit_lock_acquire>
d0083e2c:	69a3      	ldr	r3, [r4, #24]
d0083e2e:	b11b      	cbz	r3, d0083e38 <__sinit+0x14>
d0083e30:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0083e34:	f7ff bff0 	b.w	d0083e18 <__sinit_lock_release>
d0083e38:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0083e3c:	6523      	str	r3, [r4, #80]	; 0x50
d0083e3e:	4b13      	ldr	r3, [pc, #76]	; (d0083e8c <__sinit+0x68>)
d0083e40:	4a13      	ldr	r2, [pc, #76]	; (d0083e90 <__sinit+0x6c>)
d0083e42:	681b      	ldr	r3, [r3, #0]
d0083e44:	62a2      	str	r2, [r4, #40]	; 0x28
d0083e46:	42a3      	cmp	r3, r4
d0083e48:	bf04      	itt	eq
d0083e4a:	2301      	moveq	r3, #1
d0083e4c:	61a3      	streq	r3, [r4, #24]
d0083e4e:	4620      	mov	r0, r4
d0083e50:	f000 f820 	bl	d0083e94 <__sfp>
d0083e54:	6060      	str	r0, [r4, #4]
d0083e56:	4620      	mov	r0, r4
d0083e58:	f000 f81c 	bl	d0083e94 <__sfp>
d0083e5c:	60a0      	str	r0, [r4, #8]
d0083e5e:	4620      	mov	r0, r4
d0083e60:	f000 f818 	bl	d0083e94 <__sfp>
d0083e64:	2200      	movs	r2, #0
d0083e66:	60e0      	str	r0, [r4, #12]
d0083e68:	2104      	movs	r1, #4
d0083e6a:	6860      	ldr	r0, [r4, #4]
d0083e6c:	f7ff ff82 	bl	d0083d74 <std>
d0083e70:	68a0      	ldr	r0, [r4, #8]
d0083e72:	2201      	movs	r2, #1
d0083e74:	2109      	movs	r1, #9
d0083e76:	f7ff ff7d 	bl	d0083d74 <std>
d0083e7a:	68e0      	ldr	r0, [r4, #12]
d0083e7c:	2202      	movs	r2, #2
d0083e7e:	2112      	movs	r1, #18
d0083e80:	f7ff ff78 	bl	d0083d74 <std>
d0083e84:	2301      	movs	r3, #1
d0083e86:	61a3      	str	r3, [r4, #24]
d0083e88:	e7d2      	b.n	d0083e30 <__sinit+0xc>
d0083e8a:	bf00      	nop
d0083e8c:	d008a890 	.word	0xd008a890
d0083e90:	d0083dbd 	.word	0xd0083dbd

d0083e94 <__sfp>:
d0083e94:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0083e96:	4607      	mov	r7, r0
d0083e98:	f7ff ffac 	bl	d0083df4 <__sfp_lock_acquire>
d0083e9c:	4b1e      	ldr	r3, [pc, #120]	; (d0083f18 <__sfp+0x84>)
d0083e9e:	681e      	ldr	r6, [r3, #0]
d0083ea0:	69b3      	ldr	r3, [r6, #24]
d0083ea2:	b913      	cbnz	r3, d0083eaa <__sfp+0x16>
d0083ea4:	4630      	mov	r0, r6
d0083ea6:	f7ff ffbd 	bl	d0083e24 <__sinit>
d0083eaa:	3648      	adds	r6, #72	; 0x48
d0083eac:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0083eb0:	3b01      	subs	r3, #1
d0083eb2:	d503      	bpl.n	d0083ebc <__sfp+0x28>
d0083eb4:	6833      	ldr	r3, [r6, #0]
d0083eb6:	b30b      	cbz	r3, d0083efc <__sfp+0x68>
d0083eb8:	6836      	ldr	r6, [r6, #0]
d0083eba:	e7f7      	b.n	d0083eac <__sfp+0x18>
d0083ebc:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0083ec0:	b9d5      	cbnz	r5, d0083ef8 <__sfp+0x64>
d0083ec2:	4b16      	ldr	r3, [pc, #88]	; (d0083f1c <__sfp+0x88>)
d0083ec4:	60e3      	str	r3, [r4, #12]
d0083ec6:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0083eca:	6665      	str	r5, [r4, #100]	; 0x64
d0083ecc:	f000 f847 	bl	d0083f5e <__retarget_lock_init_recursive>
d0083ed0:	f7ff ff96 	bl	d0083e00 <__sfp_lock_release>
d0083ed4:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0083ed8:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0083edc:	6025      	str	r5, [r4, #0]
d0083ede:	61a5      	str	r5, [r4, #24]
d0083ee0:	2208      	movs	r2, #8
d0083ee2:	4629      	mov	r1, r5
d0083ee4:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0083ee8:	f7ff fb98 	bl	d008361c <memset>
d0083eec:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0083ef0:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0083ef4:	4620      	mov	r0, r4
d0083ef6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0083ef8:	3468      	adds	r4, #104	; 0x68
d0083efa:	e7d9      	b.n	d0083eb0 <__sfp+0x1c>
d0083efc:	2104      	movs	r1, #4
d0083efe:	4638      	mov	r0, r7
d0083f00:	f7ff ff62 	bl	d0083dc8 <__sfmoreglue>
d0083f04:	4604      	mov	r4, r0
d0083f06:	6030      	str	r0, [r6, #0]
d0083f08:	2800      	cmp	r0, #0
d0083f0a:	d1d5      	bne.n	d0083eb8 <__sfp+0x24>
d0083f0c:	f7ff ff78 	bl	d0083e00 <__sfp_lock_release>
d0083f10:	230c      	movs	r3, #12
d0083f12:	603b      	str	r3, [r7, #0]
d0083f14:	e7ee      	b.n	d0083ef4 <__sfp+0x60>
d0083f16:	bf00      	nop
d0083f18:	d008a890 	.word	0xd008a890
d0083f1c:	ffff0001 	.word	0xffff0001

d0083f20 <_fwalk_reent>:
d0083f20:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0083f24:	4606      	mov	r6, r0
d0083f26:	4688      	mov	r8, r1
d0083f28:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0083f2c:	2700      	movs	r7, #0
d0083f2e:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0083f32:	f1b9 0901 	subs.w	r9, r9, #1
d0083f36:	d505      	bpl.n	d0083f44 <_fwalk_reent+0x24>
d0083f38:	6824      	ldr	r4, [r4, #0]
d0083f3a:	2c00      	cmp	r4, #0
d0083f3c:	d1f7      	bne.n	d0083f2e <_fwalk_reent+0xe>
d0083f3e:	4638      	mov	r0, r7
d0083f40:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0083f44:	89ab      	ldrh	r3, [r5, #12]
d0083f46:	2b01      	cmp	r3, #1
d0083f48:	d907      	bls.n	d0083f5a <_fwalk_reent+0x3a>
d0083f4a:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0083f4e:	3301      	adds	r3, #1
d0083f50:	d003      	beq.n	d0083f5a <_fwalk_reent+0x3a>
d0083f52:	4629      	mov	r1, r5
d0083f54:	4630      	mov	r0, r6
d0083f56:	47c0      	blx	r8
d0083f58:	4307      	orrs	r7, r0
d0083f5a:	3568      	adds	r5, #104	; 0x68
d0083f5c:	e7e9      	b.n	d0083f32 <_fwalk_reent+0x12>

d0083f5e <__retarget_lock_init_recursive>:
d0083f5e:	4770      	bx	lr

d0083f60 <__retarget_lock_acquire_recursive>:
d0083f60:	4770      	bx	lr

d0083f62 <__retarget_lock_release_recursive>:
d0083f62:	4770      	bx	lr

d0083f64 <__swhatbuf_r>:
d0083f64:	b570      	push	{r4, r5, r6, lr}
d0083f66:	460e      	mov	r6, r1
d0083f68:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0083f6c:	2900      	cmp	r1, #0
d0083f6e:	b096      	sub	sp, #88	; 0x58
d0083f70:	4614      	mov	r4, r2
d0083f72:	461d      	mov	r5, r3
d0083f74:	da07      	bge.n	d0083f86 <__swhatbuf_r+0x22>
d0083f76:	2300      	movs	r3, #0
d0083f78:	602b      	str	r3, [r5, #0]
d0083f7a:	89b3      	ldrh	r3, [r6, #12]
d0083f7c:	061a      	lsls	r2, r3, #24
d0083f7e:	d410      	bmi.n	d0083fa2 <__swhatbuf_r+0x3e>
d0083f80:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0083f84:	e00e      	b.n	d0083fa4 <__swhatbuf_r+0x40>
d0083f86:	466a      	mov	r2, sp
d0083f88:	f000 fba0 	bl	d00846cc <_fstat_r>
d0083f8c:	2800      	cmp	r0, #0
d0083f8e:	dbf2      	blt.n	d0083f76 <__swhatbuf_r+0x12>
d0083f90:	9a01      	ldr	r2, [sp, #4]
d0083f92:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0083f96:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0083f9a:	425a      	negs	r2, r3
d0083f9c:	415a      	adcs	r2, r3
d0083f9e:	602a      	str	r2, [r5, #0]
d0083fa0:	e7ee      	b.n	d0083f80 <__swhatbuf_r+0x1c>
d0083fa2:	2340      	movs	r3, #64	; 0x40
d0083fa4:	2000      	movs	r0, #0
d0083fa6:	6023      	str	r3, [r4, #0]
d0083fa8:	b016      	add	sp, #88	; 0x58
d0083faa:	bd70      	pop	{r4, r5, r6, pc}

d0083fac <__smakebuf_r>:
d0083fac:	898b      	ldrh	r3, [r1, #12]
d0083fae:	b573      	push	{r0, r1, r4, r5, r6, lr}
d0083fb0:	079d      	lsls	r5, r3, #30
d0083fb2:	4606      	mov	r6, r0
d0083fb4:	460c      	mov	r4, r1
d0083fb6:	d507      	bpl.n	d0083fc8 <__smakebuf_r+0x1c>
d0083fb8:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0083fbc:	6023      	str	r3, [r4, #0]
d0083fbe:	6123      	str	r3, [r4, #16]
d0083fc0:	2301      	movs	r3, #1
d0083fc2:	6163      	str	r3, [r4, #20]
d0083fc4:	b002      	add	sp, #8
d0083fc6:	bd70      	pop	{r4, r5, r6, pc}
d0083fc8:	ab01      	add	r3, sp, #4
d0083fca:	466a      	mov	r2, sp
d0083fcc:	f7ff ffca 	bl	d0083f64 <__swhatbuf_r>
d0083fd0:	9900      	ldr	r1, [sp, #0]
d0083fd2:	4605      	mov	r5, r0
d0083fd4:	4630      	mov	r0, r6
d0083fd6:	f7ff fb79 	bl	d00836cc <_malloc_r>
d0083fda:	b948      	cbnz	r0, d0083ff0 <__smakebuf_r+0x44>
d0083fdc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0083fe0:	059a      	lsls	r2, r3, #22
d0083fe2:	d4ef      	bmi.n	d0083fc4 <__smakebuf_r+0x18>
d0083fe4:	f023 0303 	bic.w	r3, r3, #3
d0083fe8:	f043 0302 	orr.w	r3, r3, #2
d0083fec:	81a3      	strh	r3, [r4, #12]
d0083fee:	e7e3      	b.n	d0083fb8 <__smakebuf_r+0xc>
d0083ff0:	4b0d      	ldr	r3, [pc, #52]	; (d0084028 <__smakebuf_r+0x7c>)
d0083ff2:	62b3      	str	r3, [r6, #40]	; 0x28
d0083ff4:	89a3      	ldrh	r3, [r4, #12]
d0083ff6:	6020      	str	r0, [r4, #0]
d0083ff8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0083ffc:	81a3      	strh	r3, [r4, #12]
d0083ffe:	9b00      	ldr	r3, [sp, #0]
d0084000:	6163      	str	r3, [r4, #20]
d0084002:	9b01      	ldr	r3, [sp, #4]
d0084004:	6120      	str	r0, [r4, #16]
d0084006:	b15b      	cbz	r3, d0084020 <__smakebuf_r+0x74>
d0084008:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d008400c:	4630      	mov	r0, r6
d008400e:	f000 fb6f 	bl	d00846f0 <_isatty_r>
d0084012:	b128      	cbz	r0, d0084020 <__smakebuf_r+0x74>
d0084014:	89a3      	ldrh	r3, [r4, #12]
d0084016:	f023 0303 	bic.w	r3, r3, #3
d008401a:	f043 0301 	orr.w	r3, r3, #1
d008401e:	81a3      	strh	r3, [r4, #12]
d0084020:	89a0      	ldrh	r0, [r4, #12]
d0084022:	4305      	orrs	r5, r0
d0084024:	81a5      	strh	r5, [r4, #12]
d0084026:	e7cd      	b.n	d0083fc4 <__smakebuf_r+0x18>
d0084028:	d0083dbd 	.word	0xd0083dbd

d008402c <__malloc_lock>:
d008402c:	4801      	ldr	r0, [pc, #4]	; (d0084034 <__malloc_lock+0x8>)
d008402e:	f7ff bf97 	b.w	d0083f60 <__retarget_lock_acquire_recursive>
d0084032:	bf00      	nop
d0084034:	d008ade8 	.word	0xd008ade8

d0084038 <__malloc_unlock>:
d0084038:	4801      	ldr	r0, [pc, #4]	; (d0084040 <__malloc_unlock+0x8>)
d008403a:	f7ff bf92 	b.w	d0083f62 <__retarget_lock_release_recursive>
d008403e:	bf00      	nop
d0084040:	d008ade8 	.word	0xd008ade8

d0084044 <__ssputs_r>:
d0084044:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0084048:	688e      	ldr	r6, [r1, #8]
d008404a:	429e      	cmp	r6, r3
d008404c:	4682      	mov	sl, r0
d008404e:	460c      	mov	r4, r1
d0084050:	4690      	mov	r8, r2
d0084052:	461f      	mov	r7, r3
d0084054:	d838      	bhi.n	d00840c8 <__ssputs_r+0x84>
d0084056:	898a      	ldrh	r2, [r1, #12]
d0084058:	f412 6f90 	tst.w	r2, #1152	; 0x480
d008405c:	d032      	beq.n	d00840c4 <__ssputs_r+0x80>
d008405e:	6825      	ldr	r5, [r4, #0]
d0084060:	6909      	ldr	r1, [r1, #16]
d0084062:	eba5 0901 	sub.w	r9, r5, r1
d0084066:	6965      	ldr	r5, [r4, #20]
d0084068:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d008406c:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0084070:	3301      	adds	r3, #1
d0084072:	444b      	add	r3, r9
d0084074:	106d      	asrs	r5, r5, #1
d0084076:	429d      	cmp	r5, r3
d0084078:	bf38      	it	cc
d008407a:	461d      	movcc	r5, r3
d008407c:	0553      	lsls	r3, r2, #21
d008407e:	d531      	bpl.n	d00840e4 <__ssputs_r+0xa0>
d0084080:	4629      	mov	r1, r5
d0084082:	f7ff fb23 	bl	d00836cc <_malloc_r>
d0084086:	4606      	mov	r6, r0
d0084088:	b950      	cbnz	r0, d00840a0 <__ssputs_r+0x5c>
d008408a:	230c      	movs	r3, #12
d008408c:	f8ca 3000 	str.w	r3, [sl]
d0084090:	89a3      	ldrh	r3, [r4, #12]
d0084092:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0084096:	81a3      	strh	r3, [r4, #12]
d0084098:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008409c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00840a0:	6921      	ldr	r1, [r4, #16]
d00840a2:	464a      	mov	r2, r9
d00840a4:	f000 fb9c 	bl	d00847e0 <memcpy>
d00840a8:	89a3      	ldrh	r3, [r4, #12]
d00840aa:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d00840ae:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00840b2:	81a3      	strh	r3, [r4, #12]
d00840b4:	6126      	str	r6, [r4, #16]
d00840b6:	6165      	str	r5, [r4, #20]
d00840b8:	444e      	add	r6, r9
d00840ba:	eba5 0509 	sub.w	r5, r5, r9
d00840be:	6026      	str	r6, [r4, #0]
d00840c0:	60a5      	str	r5, [r4, #8]
d00840c2:	463e      	mov	r6, r7
d00840c4:	42be      	cmp	r6, r7
d00840c6:	d900      	bls.n	d00840ca <__ssputs_r+0x86>
d00840c8:	463e      	mov	r6, r7
d00840ca:	4632      	mov	r2, r6
d00840cc:	6820      	ldr	r0, [r4, #0]
d00840ce:	4641      	mov	r1, r8
d00840d0:	f000 fb94 	bl	d00847fc <memmove>
d00840d4:	68a3      	ldr	r3, [r4, #8]
d00840d6:	6822      	ldr	r2, [r4, #0]
d00840d8:	1b9b      	subs	r3, r3, r6
d00840da:	4432      	add	r2, r6
d00840dc:	60a3      	str	r3, [r4, #8]
d00840de:	6022      	str	r2, [r4, #0]
d00840e0:	2000      	movs	r0, #0
d00840e2:	e7db      	b.n	d008409c <__ssputs_r+0x58>
d00840e4:	462a      	mov	r2, r5
d00840e6:	f000 fba3 	bl	d0084830 <_realloc_r>
d00840ea:	4606      	mov	r6, r0
d00840ec:	2800      	cmp	r0, #0
d00840ee:	d1e1      	bne.n	d00840b4 <__ssputs_r+0x70>
d00840f0:	6921      	ldr	r1, [r4, #16]
d00840f2:	4650      	mov	r0, sl
d00840f4:	f7ff fa9a 	bl	d008362c <_free_r>
d00840f8:	e7c7      	b.n	d008408a <__ssputs_r+0x46>
	...

d00840fc <_svfiprintf_r>:
d00840fc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0084100:	4698      	mov	r8, r3
d0084102:	898b      	ldrh	r3, [r1, #12]
d0084104:	061b      	lsls	r3, r3, #24
d0084106:	b09d      	sub	sp, #116	; 0x74
d0084108:	4607      	mov	r7, r0
d008410a:	460d      	mov	r5, r1
d008410c:	4614      	mov	r4, r2
d008410e:	d50e      	bpl.n	d008412e <_svfiprintf_r+0x32>
d0084110:	690b      	ldr	r3, [r1, #16]
d0084112:	b963      	cbnz	r3, d008412e <_svfiprintf_r+0x32>
d0084114:	2140      	movs	r1, #64	; 0x40
d0084116:	f7ff fad9 	bl	d00836cc <_malloc_r>
d008411a:	6028      	str	r0, [r5, #0]
d008411c:	6128      	str	r0, [r5, #16]
d008411e:	b920      	cbnz	r0, d008412a <_svfiprintf_r+0x2e>
d0084120:	230c      	movs	r3, #12
d0084122:	603b      	str	r3, [r7, #0]
d0084124:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0084128:	e0d1      	b.n	d00842ce <_svfiprintf_r+0x1d2>
d008412a:	2340      	movs	r3, #64	; 0x40
d008412c:	616b      	str	r3, [r5, #20]
d008412e:	2300      	movs	r3, #0
d0084130:	9309      	str	r3, [sp, #36]	; 0x24
d0084132:	2320      	movs	r3, #32
d0084134:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0084138:	f8cd 800c 	str.w	r8, [sp, #12]
d008413c:	2330      	movs	r3, #48	; 0x30
d008413e:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d00842e8 <_svfiprintf_r+0x1ec>
d0084142:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0084146:	f04f 0901 	mov.w	r9, #1
d008414a:	4623      	mov	r3, r4
d008414c:	469a      	mov	sl, r3
d008414e:	f813 2b01 	ldrb.w	r2, [r3], #1
d0084152:	b10a      	cbz	r2, d0084158 <_svfiprintf_r+0x5c>
d0084154:	2a25      	cmp	r2, #37	; 0x25
d0084156:	d1f9      	bne.n	d008414c <_svfiprintf_r+0x50>
d0084158:	ebba 0b04 	subs.w	fp, sl, r4
d008415c:	d00b      	beq.n	d0084176 <_svfiprintf_r+0x7a>
d008415e:	465b      	mov	r3, fp
d0084160:	4622      	mov	r2, r4
d0084162:	4629      	mov	r1, r5
d0084164:	4638      	mov	r0, r7
d0084166:	f7ff ff6d 	bl	d0084044 <__ssputs_r>
d008416a:	3001      	adds	r0, #1
d008416c:	f000 80aa 	beq.w	d00842c4 <_svfiprintf_r+0x1c8>
d0084170:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0084172:	445a      	add	r2, fp
d0084174:	9209      	str	r2, [sp, #36]	; 0x24
d0084176:	f89a 3000 	ldrb.w	r3, [sl]
d008417a:	2b00      	cmp	r3, #0
d008417c:	f000 80a2 	beq.w	d00842c4 <_svfiprintf_r+0x1c8>
d0084180:	2300      	movs	r3, #0
d0084182:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0084186:	e9cd 2305 	strd	r2, r3, [sp, #20]
d008418a:	f10a 0a01 	add.w	sl, sl, #1
d008418e:	9304      	str	r3, [sp, #16]
d0084190:	9307      	str	r3, [sp, #28]
d0084192:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0084196:	931a      	str	r3, [sp, #104]	; 0x68
d0084198:	4654      	mov	r4, sl
d008419a:	2205      	movs	r2, #5
d008419c:	f814 1b01 	ldrb.w	r1, [r4], #1
d00841a0:	4851      	ldr	r0, [pc, #324]	; (d00842e8 <_svfiprintf_r+0x1ec>)
d00841a2:	f000 facd 	bl	d0084740 <memchr>
d00841a6:	9a04      	ldr	r2, [sp, #16]
d00841a8:	b9d8      	cbnz	r0, d00841e2 <_svfiprintf_r+0xe6>
d00841aa:	06d0      	lsls	r0, r2, #27
d00841ac:	bf44      	itt	mi
d00841ae:	2320      	movmi	r3, #32
d00841b0:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00841b4:	0711      	lsls	r1, r2, #28
d00841b6:	bf44      	itt	mi
d00841b8:	232b      	movmi	r3, #43	; 0x2b
d00841ba:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00841be:	f89a 3000 	ldrb.w	r3, [sl]
d00841c2:	2b2a      	cmp	r3, #42	; 0x2a
d00841c4:	d015      	beq.n	d00841f2 <_svfiprintf_r+0xf6>
d00841c6:	9a07      	ldr	r2, [sp, #28]
d00841c8:	4654      	mov	r4, sl
d00841ca:	2000      	movs	r0, #0
d00841cc:	f04f 0c0a 	mov.w	ip, #10
d00841d0:	4621      	mov	r1, r4
d00841d2:	f811 3b01 	ldrb.w	r3, [r1], #1
d00841d6:	3b30      	subs	r3, #48	; 0x30
d00841d8:	2b09      	cmp	r3, #9
d00841da:	d94e      	bls.n	d008427a <_svfiprintf_r+0x17e>
d00841dc:	b1b0      	cbz	r0, d008420c <_svfiprintf_r+0x110>
d00841de:	9207      	str	r2, [sp, #28]
d00841e0:	e014      	b.n	d008420c <_svfiprintf_r+0x110>
d00841e2:	eba0 0308 	sub.w	r3, r0, r8
d00841e6:	fa09 f303 	lsl.w	r3, r9, r3
d00841ea:	4313      	orrs	r3, r2
d00841ec:	9304      	str	r3, [sp, #16]
d00841ee:	46a2      	mov	sl, r4
d00841f0:	e7d2      	b.n	d0084198 <_svfiprintf_r+0x9c>
d00841f2:	9b03      	ldr	r3, [sp, #12]
d00841f4:	1d19      	adds	r1, r3, #4
d00841f6:	681b      	ldr	r3, [r3, #0]
d00841f8:	9103      	str	r1, [sp, #12]
d00841fa:	2b00      	cmp	r3, #0
d00841fc:	bfbb      	ittet	lt
d00841fe:	425b      	neglt	r3, r3
d0084200:	f042 0202 	orrlt.w	r2, r2, #2
d0084204:	9307      	strge	r3, [sp, #28]
d0084206:	9307      	strlt	r3, [sp, #28]
d0084208:	bfb8      	it	lt
d008420a:	9204      	strlt	r2, [sp, #16]
d008420c:	7823      	ldrb	r3, [r4, #0]
d008420e:	2b2e      	cmp	r3, #46	; 0x2e
d0084210:	d10c      	bne.n	d008422c <_svfiprintf_r+0x130>
d0084212:	7863      	ldrb	r3, [r4, #1]
d0084214:	2b2a      	cmp	r3, #42	; 0x2a
d0084216:	d135      	bne.n	d0084284 <_svfiprintf_r+0x188>
d0084218:	9b03      	ldr	r3, [sp, #12]
d008421a:	1d1a      	adds	r2, r3, #4
d008421c:	681b      	ldr	r3, [r3, #0]
d008421e:	9203      	str	r2, [sp, #12]
d0084220:	2b00      	cmp	r3, #0
d0084222:	bfb8      	it	lt
d0084224:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0084228:	3402      	adds	r4, #2
d008422a:	9305      	str	r3, [sp, #20]
d008422c:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d00842f8 <_svfiprintf_r+0x1fc>
d0084230:	7821      	ldrb	r1, [r4, #0]
d0084232:	2203      	movs	r2, #3
d0084234:	4650      	mov	r0, sl
d0084236:	f000 fa83 	bl	d0084740 <memchr>
d008423a:	b140      	cbz	r0, d008424e <_svfiprintf_r+0x152>
d008423c:	2340      	movs	r3, #64	; 0x40
d008423e:	eba0 000a 	sub.w	r0, r0, sl
d0084242:	fa03 f000 	lsl.w	r0, r3, r0
d0084246:	9b04      	ldr	r3, [sp, #16]
d0084248:	4303      	orrs	r3, r0
d008424a:	3401      	adds	r4, #1
d008424c:	9304      	str	r3, [sp, #16]
d008424e:	f814 1b01 	ldrb.w	r1, [r4], #1
d0084252:	4826      	ldr	r0, [pc, #152]	; (d00842ec <_svfiprintf_r+0x1f0>)
d0084254:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0084258:	2206      	movs	r2, #6
d008425a:	f000 fa71 	bl	d0084740 <memchr>
d008425e:	2800      	cmp	r0, #0
d0084260:	d038      	beq.n	d00842d4 <_svfiprintf_r+0x1d8>
d0084262:	4b23      	ldr	r3, [pc, #140]	; (d00842f0 <_svfiprintf_r+0x1f4>)
d0084264:	bb1b      	cbnz	r3, d00842ae <_svfiprintf_r+0x1b2>
d0084266:	9b03      	ldr	r3, [sp, #12]
d0084268:	3307      	adds	r3, #7
d008426a:	f023 0307 	bic.w	r3, r3, #7
d008426e:	3308      	adds	r3, #8
d0084270:	9303      	str	r3, [sp, #12]
d0084272:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0084274:	4433      	add	r3, r6
d0084276:	9309      	str	r3, [sp, #36]	; 0x24
d0084278:	e767      	b.n	d008414a <_svfiprintf_r+0x4e>
d008427a:	fb0c 3202 	mla	r2, ip, r2, r3
d008427e:	460c      	mov	r4, r1
d0084280:	2001      	movs	r0, #1
d0084282:	e7a5      	b.n	d00841d0 <_svfiprintf_r+0xd4>
d0084284:	2300      	movs	r3, #0
d0084286:	3401      	adds	r4, #1
d0084288:	9305      	str	r3, [sp, #20]
d008428a:	4619      	mov	r1, r3
d008428c:	f04f 0c0a 	mov.w	ip, #10
d0084290:	4620      	mov	r0, r4
d0084292:	f810 2b01 	ldrb.w	r2, [r0], #1
d0084296:	3a30      	subs	r2, #48	; 0x30
d0084298:	2a09      	cmp	r2, #9
d008429a:	d903      	bls.n	d00842a4 <_svfiprintf_r+0x1a8>
d008429c:	2b00      	cmp	r3, #0
d008429e:	d0c5      	beq.n	d008422c <_svfiprintf_r+0x130>
d00842a0:	9105      	str	r1, [sp, #20]
d00842a2:	e7c3      	b.n	d008422c <_svfiprintf_r+0x130>
d00842a4:	fb0c 2101 	mla	r1, ip, r1, r2
d00842a8:	4604      	mov	r4, r0
d00842aa:	2301      	movs	r3, #1
d00842ac:	e7f0      	b.n	d0084290 <_svfiprintf_r+0x194>
d00842ae:	ab03      	add	r3, sp, #12
d00842b0:	9300      	str	r3, [sp, #0]
d00842b2:	462a      	mov	r2, r5
d00842b4:	4b0f      	ldr	r3, [pc, #60]	; (d00842f4 <_svfiprintf_r+0x1f8>)
d00842b6:	a904      	add	r1, sp, #16
d00842b8:	4638      	mov	r0, r7
d00842ba:	f3af 8000 	nop.w
d00842be:	1c42      	adds	r2, r0, #1
d00842c0:	4606      	mov	r6, r0
d00842c2:	d1d6      	bne.n	d0084272 <_svfiprintf_r+0x176>
d00842c4:	89ab      	ldrh	r3, [r5, #12]
d00842c6:	065b      	lsls	r3, r3, #25
d00842c8:	f53f af2c 	bmi.w	d0084124 <_svfiprintf_r+0x28>
d00842cc:	9809      	ldr	r0, [sp, #36]	; 0x24
d00842ce:	b01d      	add	sp, #116	; 0x74
d00842d0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00842d4:	ab03      	add	r3, sp, #12
d00842d6:	9300      	str	r3, [sp, #0]
d00842d8:	462a      	mov	r2, r5
d00842da:	4b06      	ldr	r3, [pc, #24]	; (d00842f4 <_svfiprintf_r+0x1f8>)
d00842dc:	a904      	add	r1, sp, #16
d00842de:	4638      	mov	r0, r7
d00842e0:	f000 f87a 	bl	d00843d8 <_printf_i>
d00842e4:	e7eb      	b.n	d00842be <_svfiprintf_r+0x1c2>
d00842e6:	bf00      	nop
d00842e8:	d008a8f4 	.word	0xd008a8f4
d00842ec:	d008a8fe 	.word	0xd008a8fe
d00842f0:	00000000 	.word	0x00000000
d00842f4:	d0084045 	.word	0xd0084045
d00842f8:	d008a8fa 	.word	0xd008a8fa

d00842fc <_printf_common>:
d00842fc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0084300:	4616      	mov	r6, r2
d0084302:	4699      	mov	r9, r3
d0084304:	688a      	ldr	r2, [r1, #8]
d0084306:	690b      	ldr	r3, [r1, #16]
d0084308:	f8dd 8020 	ldr.w	r8, [sp, #32]
d008430c:	4293      	cmp	r3, r2
d008430e:	bfb8      	it	lt
d0084310:	4613      	movlt	r3, r2
d0084312:	6033      	str	r3, [r6, #0]
d0084314:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0084318:	4607      	mov	r7, r0
d008431a:	460c      	mov	r4, r1
d008431c:	b10a      	cbz	r2, d0084322 <_printf_common+0x26>
d008431e:	3301      	adds	r3, #1
d0084320:	6033      	str	r3, [r6, #0]
d0084322:	6823      	ldr	r3, [r4, #0]
d0084324:	0699      	lsls	r1, r3, #26
d0084326:	bf42      	ittt	mi
d0084328:	6833      	ldrmi	r3, [r6, #0]
d008432a:	3302      	addmi	r3, #2
d008432c:	6033      	strmi	r3, [r6, #0]
d008432e:	6825      	ldr	r5, [r4, #0]
d0084330:	f015 0506 	ands.w	r5, r5, #6
d0084334:	d106      	bne.n	d0084344 <_printf_common+0x48>
d0084336:	f104 0a19 	add.w	sl, r4, #25
d008433a:	68e3      	ldr	r3, [r4, #12]
d008433c:	6832      	ldr	r2, [r6, #0]
d008433e:	1a9b      	subs	r3, r3, r2
d0084340:	42ab      	cmp	r3, r5
d0084342:	dc26      	bgt.n	d0084392 <_printf_common+0x96>
d0084344:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0084348:	1e13      	subs	r3, r2, #0
d008434a:	6822      	ldr	r2, [r4, #0]
d008434c:	bf18      	it	ne
d008434e:	2301      	movne	r3, #1
d0084350:	0692      	lsls	r2, r2, #26
d0084352:	d42b      	bmi.n	d00843ac <_printf_common+0xb0>
d0084354:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0084358:	4649      	mov	r1, r9
d008435a:	4638      	mov	r0, r7
d008435c:	47c0      	blx	r8
d008435e:	3001      	adds	r0, #1
d0084360:	d01e      	beq.n	d00843a0 <_printf_common+0xa4>
d0084362:	6823      	ldr	r3, [r4, #0]
d0084364:	68e5      	ldr	r5, [r4, #12]
d0084366:	6832      	ldr	r2, [r6, #0]
d0084368:	f003 0306 	and.w	r3, r3, #6
d008436c:	2b04      	cmp	r3, #4
d008436e:	bf08      	it	eq
d0084370:	1aad      	subeq	r5, r5, r2
d0084372:	68a3      	ldr	r3, [r4, #8]
d0084374:	6922      	ldr	r2, [r4, #16]
d0084376:	bf0c      	ite	eq
d0084378:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d008437c:	2500      	movne	r5, #0
d008437e:	4293      	cmp	r3, r2
d0084380:	bfc4      	itt	gt
d0084382:	1a9b      	subgt	r3, r3, r2
d0084384:	18ed      	addgt	r5, r5, r3
d0084386:	2600      	movs	r6, #0
d0084388:	341a      	adds	r4, #26
d008438a:	42b5      	cmp	r5, r6
d008438c:	d11a      	bne.n	d00843c4 <_printf_common+0xc8>
d008438e:	2000      	movs	r0, #0
d0084390:	e008      	b.n	d00843a4 <_printf_common+0xa8>
d0084392:	2301      	movs	r3, #1
d0084394:	4652      	mov	r2, sl
d0084396:	4649      	mov	r1, r9
d0084398:	4638      	mov	r0, r7
d008439a:	47c0      	blx	r8
d008439c:	3001      	adds	r0, #1
d008439e:	d103      	bne.n	d00843a8 <_printf_common+0xac>
d00843a0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00843a4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00843a8:	3501      	adds	r5, #1
d00843aa:	e7c6      	b.n	d008433a <_printf_common+0x3e>
d00843ac:	18e1      	adds	r1, r4, r3
d00843ae:	1c5a      	adds	r2, r3, #1
d00843b0:	2030      	movs	r0, #48	; 0x30
d00843b2:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d00843b6:	4422      	add	r2, r4
d00843b8:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d00843bc:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d00843c0:	3302      	adds	r3, #2
d00843c2:	e7c7      	b.n	d0084354 <_printf_common+0x58>
d00843c4:	2301      	movs	r3, #1
d00843c6:	4622      	mov	r2, r4
d00843c8:	4649      	mov	r1, r9
d00843ca:	4638      	mov	r0, r7
d00843cc:	47c0      	blx	r8
d00843ce:	3001      	adds	r0, #1
d00843d0:	d0e6      	beq.n	d00843a0 <_printf_common+0xa4>
d00843d2:	3601      	adds	r6, #1
d00843d4:	e7d9      	b.n	d008438a <_printf_common+0x8e>
	...

d00843d8 <_printf_i>:
d00843d8:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d00843dc:	460c      	mov	r4, r1
d00843de:	4691      	mov	r9, r2
d00843e0:	7e27      	ldrb	r7, [r4, #24]
d00843e2:	990c      	ldr	r1, [sp, #48]	; 0x30
d00843e4:	2f78      	cmp	r7, #120	; 0x78
d00843e6:	4680      	mov	r8, r0
d00843e8:	469a      	mov	sl, r3
d00843ea:	f104 0243 	add.w	r2, r4, #67	; 0x43
d00843ee:	d807      	bhi.n	d0084400 <_printf_i+0x28>
d00843f0:	2f62      	cmp	r7, #98	; 0x62
d00843f2:	d80a      	bhi.n	d008440a <_printf_i+0x32>
d00843f4:	2f00      	cmp	r7, #0
d00843f6:	f000 80d8 	beq.w	d00845aa <_printf_i+0x1d2>
d00843fa:	2f58      	cmp	r7, #88	; 0x58
d00843fc:	f000 80a3 	beq.w	d0084546 <_printf_i+0x16e>
d0084400:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0084404:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0084408:	e03a      	b.n	d0084480 <_printf_i+0xa8>
d008440a:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d008440e:	2b15      	cmp	r3, #21
d0084410:	d8f6      	bhi.n	d0084400 <_printf_i+0x28>
d0084412:	a001      	add	r0, pc, #4	; (adr r0, d0084418 <_printf_i+0x40>)
d0084414:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0084418:	d0084471 	.word	0xd0084471
d008441c:	d0084485 	.word	0xd0084485
d0084420:	d0084401 	.word	0xd0084401
d0084424:	d0084401 	.word	0xd0084401
d0084428:	d0084401 	.word	0xd0084401
d008442c:	d0084401 	.word	0xd0084401
d0084430:	d0084485 	.word	0xd0084485
d0084434:	d0084401 	.word	0xd0084401
d0084438:	d0084401 	.word	0xd0084401
d008443c:	d0084401 	.word	0xd0084401
d0084440:	d0084401 	.word	0xd0084401
d0084444:	d0084591 	.word	0xd0084591
d0084448:	d00844b5 	.word	0xd00844b5
d008444c:	d0084573 	.word	0xd0084573
d0084450:	d0084401 	.word	0xd0084401
d0084454:	d0084401 	.word	0xd0084401
d0084458:	d00845b3 	.word	0xd00845b3
d008445c:	d0084401 	.word	0xd0084401
d0084460:	d00844b5 	.word	0xd00844b5
d0084464:	d0084401 	.word	0xd0084401
d0084468:	d0084401 	.word	0xd0084401
d008446c:	d008457b 	.word	0xd008457b
d0084470:	680b      	ldr	r3, [r1, #0]
d0084472:	1d1a      	adds	r2, r3, #4
d0084474:	681b      	ldr	r3, [r3, #0]
d0084476:	600a      	str	r2, [r1, #0]
d0084478:	f104 0642 	add.w	r6, r4, #66	; 0x42
d008447c:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0084480:	2301      	movs	r3, #1
d0084482:	e0a3      	b.n	d00845cc <_printf_i+0x1f4>
d0084484:	6825      	ldr	r5, [r4, #0]
d0084486:	6808      	ldr	r0, [r1, #0]
d0084488:	062e      	lsls	r6, r5, #24
d008448a:	f100 0304 	add.w	r3, r0, #4
d008448e:	d50a      	bpl.n	d00844a6 <_printf_i+0xce>
d0084490:	6805      	ldr	r5, [r0, #0]
d0084492:	600b      	str	r3, [r1, #0]
d0084494:	2d00      	cmp	r5, #0
d0084496:	da03      	bge.n	d00844a0 <_printf_i+0xc8>
d0084498:	232d      	movs	r3, #45	; 0x2d
d008449a:	426d      	negs	r5, r5
d008449c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00844a0:	485e      	ldr	r0, [pc, #376]	; (d008461c <_printf_i+0x244>)
d00844a2:	230a      	movs	r3, #10
d00844a4:	e019      	b.n	d00844da <_printf_i+0x102>
d00844a6:	f015 0f40 	tst.w	r5, #64	; 0x40
d00844aa:	6805      	ldr	r5, [r0, #0]
d00844ac:	600b      	str	r3, [r1, #0]
d00844ae:	bf18      	it	ne
d00844b0:	b22d      	sxthne	r5, r5
d00844b2:	e7ef      	b.n	d0084494 <_printf_i+0xbc>
d00844b4:	680b      	ldr	r3, [r1, #0]
d00844b6:	6825      	ldr	r5, [r4, #0]
d00844b8:	1d18      	adds	r0, r3, #4
d00844ba:	6008      	str	r0, [r1, #0]
d00844bc:	0628      	lsls	r0, r5, #24
d00844be:	d501      	bpl.n	d00844c4 <_printf_i+0xec>
d00844c0:	681d      	ldr	r5, [r3, #0]
d00844c2:	e002      	b.n	d00844ca <_printf_i+0xf2>
d00844c4:	0669      	lsls	r1, r5, #25
d00844c6:	d5fb      	bpl.n	d00844c0 <_printf_i+0xe8>
d00844c8:	881d      	ldrh	r5, [r3, #0]
d00844ca:	4854      	ldr	r0, [pc, #336]	; (d008461c <_printf_i+0x244>)
d00844cc:	2f6f      	cmp	r7, #111	; 0x6f
d00844ce:	bf0c      	ite	eq
d00844d0:	2308      	moveq	r3, #8
d00844d2:	230a      	movne	r3, #10
d00844d4:	2100      	movs	r1, #0
d00844d6:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d00844da:	6866      	ldr	r6, [r4, #4]
d00844dc:	60a6      	str	r6, [r4, #8]
d00844de:	2e00      	cmp	r6, #0
d00844e0:	bfa2      	ittt	ge
d00844e2:	6821      	ldrge	r1, [r4, #0]
d00844e4:	f021 0104 	bicge.w	r1, r1, #4
d00844e8:	6021      	strge	r1, [r4, #0]
d00844ea:	b90d      	cbnz	r5, d00844f0 <_printf_i+0x118>
d00844ec:	2e00      	cmp	r6, #0
d00844ee:	d04d      	beq.n	d008458c <_printf_i+0x1b4>
d00844f0:	4616      	mov	r6, r2
d00844f2:	fbb5 f1f3 	udiv	r1, r5, r3
d00844f6:	fb03 5711 	mls	r7, r3, r1, r5
d00844fa:	5dc7      	ldrb	r7, [r0, r7]
d00844fc:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0084500:	462f      	mov	r7, r5
d0084502:	42bb      	cmp	r3, r7
d0084504:	460d      	mov	r5, r1
d0084506:	d9f4      	bls.n	d00844f2 <_printf_i+0x11a>
d0084508:	2b08      	cmp	r3, #8
d008450a:	d10b      	bne.n	d0084524 <_printf_i+0x14c>
d008450c:	6823      	ldr	r3, [r4, #0]
d008450e:	07df      	lsls	r7, r3, #31
d0084510:	d508      	bpl.n	d0084524 <_printf_i+0x14c>
d0084512:	6923      	ldr	r3, [r4, #16]
d0084514:	6861      	ldr	r1, [r4, #4]
d0084516:	4299      	cmp	r1, r3
d0084518:	bfde      	ittt	le
d008451a:	2330      	movle	r3, #48	; 0x30
d008451c:	f806 3c01 	strble.w	r3, [r6, #-1]
d0084520:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0084524:	1b92      	subs	r2, r2, r6
d0084526:	6122      	str	r2, [r4, #16]
d0084528:	f8cd a000 	str.w	sl, [sp]
d008452c:	464b      	mov	r3, r9
d008452e:	aa03      	add	r2, sp, #12
d0084530:	4621      	mov	r1, r4
d0084532:	4640      	mov	r0, r8
d0084534:	f7ff fee2 	bl	d00842fc <_printf_common>
d0084538:	3001      	adds	r0, #1
d008453a:	d14c      	bne.n	d00845d6 <_printf_i+0x1fe>
d008453c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0084540:	b004      	add	sp, #16
d0084542:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0084546:	4835      	ldr	r0, [pc, #212]	; (d008461c <_printf_i+0x244>)
d0084548:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d008454c:	6823      	ldr	r3, [r4, #0]
d008454e:	680e      	ldr	r6, [r1, #0]
d0084550:	061f      	lsls	r7, r3, #24
d0084552:	f856 5b04 	ldr.w	r5, [r6], #4
d0084556:	600e      	str	r6, [r1, #0]
d0084558:	d514      	bpl.n	d0084584 <_printf_i+0x1ac>
d008455a:	07d9      	lsls	r1, r3, #31
d008455c:	bf44      	itt	mi
d008455e:	f043 0320 	orrmi.w	r3, r3, #32
d0084562:	6023      	strmi	r3, [r4, #0]
d0084564:	b91d      	cbnz	r5, d008456e <_printf_i+0x196>
d0084566:	6823      	ldr	r3, [r4, #0]
d0084568:	f023 0320 	bic.w	r3, r3, #32
d008456c:	6023      	str	r3, [r4, #0]
d008456e:	2310      	movs	r3, #16
d0084570:	e7b0      	b.n	d00844d4 <_printf_i+0xfc>
d0084572:	6823      	ldr	r3, [r4, #0]
d0084574:	f043 0320 	orr.w	r3, r3, #32
d0084578:	6023      	str	r3, [r4, #0]
d008457a:	2378      	movs	r3, #120	; 0x78
d008457c:	4828      	ldr	r0, [pc, #160]	; (d0084620 <_printf_i+0x248>)
d008457e:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0084582:	e7e3      	b.n	d008454c <_printf_i+0x174>
d0084584:	065e      	lsls	r6, r3, #25
d0084586:	bf48      	it	mi
d0084588:	b2ad      	uxthmi	r5, r5
d008458a:	e7e6      	b.n	d008455a <_printf_i+0x182>
d008458c:	4616      	mov	r6, r2
d008458e:	e7bb      	b.n	d0084508 <_printf_i+0x130>
d0084590:	680b      	ldr	r3, [r1, #0]
d0084592:	6826      	ldr	r6, [r4, #0]
d0084594:	6960      	ldr	r0, [r4, #20]
d0084596:	1d1d      	adds	r5, r3, #4
d0084598:	600d      	str	r5, [r1, #0]
d008459a:	0635      	lsls	r5, r6, #24
d008459c:	681b      	ldr	r3, [r3, #0]
d008459e:	d501      	bpl.n	d00845a4 <_printf_i+0x1cc>
d00845a0:	6018      	str	r0, [r3, #0]
d00845a2:	e002      	b.n	d00845aa <_printf_i+0x1d2>
d00845a4:	0671      	lsls	r1, r6, #25
d00845a6:	d5fb      	bpl.n	d00845a0 <_printf_i+0x1c8>
d00845a8:	8018      	strh	r0, [r3, #0]
d00845aa:	2300      	movs	r3, #0
d00845ac:	6123      	str	r3, [r4, #16]
d00845ae:	4616      	mov	r6, r2
d00845b0:	e7ba      	b.n	d0084528 <_printf_i+0x150>
d00845b2:	680b      	ldr	r3, [r1, #0]
d00845b4:	1d1a      	adds	r2, r3, #4
d00845b6:	600a      	str	r2, [r1, #0]
d00845b8:	681e      	ldr	r6, [r3, #0]
d00845ba:	6862      	ldr	r2, [r4, #4]
d00845bc:	2100      	movs	r1, #0
d00845be:	4630      	mov	r0, r6
d00845c0:	f000 f8be 	bl	d0084740 <memchr>
d00845c4:	b108      	cbz	r0, d00845ca <_printf_i+0x1f2>
d00845c6:	1b80      	subs	r0, r0, r6
d00845c8:	6060      	str	r0, [r4, #4]
d00845ca:	6863      	ldr	r3, [r4, #4]
d00845cc:	6123      	str	r3, [r4, #16]
d00845ce:	2300      	movs	r3, #0
d00845d0:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00845d4:	e7a8      	b.n	d0084528 <_printf_i+0x150>
d00845d6:	6923      	ldr	r3, [r4, #16]
d00845d8:	4632      	mov	r2, r6
d00845da:	4649      	mov	r1, r9
d00845dc:	4640      	mov	r0, r8
d00845de:	47d0      	blx	sl
d00845e0:	3001      	adds	r0, #1
d00845e2:	d0ab      	beq.n	d008453c <_printf_i+0x164>
d00845e4:	6823      	ldr	r3, [r4, #0]
d00845e6:	079b      	lsls	r3, r3, #30
d00845e8:	d413      	bmi.n	d0084612 <_printf_i+0x23a>
d00845ea:	68e0      	ldr	r0, [r4, #12]
d00845ec:	9b03      	ldr	r3, [sp, #12]
d00845ee:	4298      	cmp	r0, r3
d00845f0:	bfb8      	it	lt
d00845f2:	4618      	movlt	r0, r3
d00845f4:	e7a4      	b.n	d0084540 <_printf_i+0x168>
d00845f6:	2301      	movs	r3, #1
d00845f8:	4632      	mov	r2, r6
d00845fa:	4649      	mov	r1, r9
d00845fc:	4640      	mov	r0, r8
d00845fe:	47d0      	blx	sl
d0084600:	3001      	adds	r0, #1
d0084602:	d09b      	beq.n	d008453c <_printf_i+0x164>
d0084604:	3501      	adds	r5, #1
d0084606:	68e3      	ldr	r3, [r4, #12]
d0084608:	9903      	ldr	r1, [sp, #12]
d008460a:	1a5b      	subs	r3, r3, r1
d008460c:	42ab      	cmp	r3, r5
d008460e:	dcf2      	bgt.n	d00845f6 <_printf_i+0x21e>
d0084610:	e7eb      	b.n	d00845ea <_printf_i+0x212>
d0084612:	2500      	movs	r5, #0
d0084614:	f104 0619 	add.w	r6, r4, #25
d0084618:	e7f5      	b.n	d0084606 <_printf_i+0x22e>
d008461a:	bf00      	nop
d008461c:	d008a905 	.word	0xd008a905
d0084620:	d008a916 	.word	0xd008a916

d0084624 <__sread>:
d0084624:	b510      	push	{r4, lr}
d0084626:	460c      	mov	r4, r1
d0084628:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d008462c:	f000 f926 	bl	d008487c <_read_r>
d0084630:	2800      	cmp	r0, #0
d0084632:	bfab      	itete	ge
d0084634:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0084636:	89a3      	ldrhlt	r3, [r4, #12]
d0084638:	181b      	addge	r3, r3, r0
d008463a:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d008463e:	bfac      	ite	ge
d0084640:	6563      	strge	r3, [r4, #84]	; 0x54
d0084642:	81a3      	strhlt	r3, [r4, #12]
d0084644:	bd10      	pop	{r4, pc}

d0084646 <__swrite>:
d0084646:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d008464a:	461f      	mov	r7, r3
d008464c:	898b      	ldrh	r3, [r1, #12]
d008464e:	05db      	lsls	r3, r3, #23
d0084650:	4605      	mov	r5, r0
d0084652:	460c      	mov	r4, r1
d0084654:	4616      	mov	r6, r2
d0084656:	d505      	bpl.n	d0084664 <__swrite+0x1e>
d0084658:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d008465c:	2302      	movs	r3, #2
d008465e:	2200      	movs	r2, #0
d0084660:	f000 f856 	bl	d0084710 <_lseek_r>
d0084664:	89a3      	ldrh	r3, [r4, #12]
d0084666:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d008466a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d008466e:	81a3      	strh	r3, [r4, #12]
d0084670:	4632      	mov	r2, r6
d0084672:	463b      	mov	r3, r7
d0084674:	4628      	mov	r0, r5
d0084676:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d008467a:	f7fb bcf9 	b.w	d0080070 <_write_r>

d008467e <__sseek>:
d008467e:	b510      	push	{r4, lr}
d0084680:	460c      	mov	r4, r1
d0084682:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0084686:	f000 f843 	bl	d0084710 <_lseek_r>
d008468a:	1c43      	adds	r3, r0, #1
d008468c:	89a3      	ldrh	r3, [r4, #12]
d008468e:	bf15      	itete	ne
d0084690:	6560      	strne	r0, [r4, #84]	; 0x54
d0084692:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0084696:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d008469a:	81a3      	strheq	r3, [r4, #12]
d008469c:	bf18      	it	ne
d008469e:	81a3      	strhne	r3, [r4, #12]
d00846a0:	bd10      	pop	{r4, pc}

d00846a2 <__sclose>:
d00846a2:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00846a6:	f000 b801 	b.w	d00846ac <_close_r>
	...

d00846ac <_close_r>:
d00846ac:	b538      	push	{r3, r4, r5, lr}
d00846ae:	4d06      	ldr	r5, [pc, #24]	; (d00846c8 <_close_r+0x1c>)
d00846b0:	2300      	movs	r3, #0
d00846b2:	4604      	mov	r4, r0
d00846b4:	4608      	mov	r0, r1
d00846b6:	602b      	str	r3, [r5, #0]
d00846b8:	f7fb fd14 	bl	d00800e4 <_close>
d00846bc:	1c43      	adds	r3, r0, #1
d00846be:	d102      	bne.n	d00846c6 <_close_r+0x1a>
d00846c0:	682b      	ldr	r3, [r5, #0]
d00846c2:	b103      	cbz	r3, d00846c6 <_close_r+0x1a>
d00846c4:	6023      	str	r3, [r4, #0]
d00846c6:	bd38      	pop	{r3, r4, r5, pc}
d00846c8:	d008adf0 	.word	0xd008adf0

d00846cc <_fstat_r>:
d00846cc:	b538      	push	{r3, r4, r5, lr}
d00846ce:	4d07      	ldr	r5, [pc, #28]	; (d00846ec <_fstat_r+0x20>)
d00846d0:	2300      	movs	r3, #0
d00846d2:	4604      	mov	r4, r0
d00846d4:	4608      	mov	r0, r1
d00846d6:	4611      	mov	r1, r2
d00846d8:	602b      	str	r3, [r5, #0]
d00846da:	f7fb fd07 	bl	d00800ec <_fstat>
d00846de:	1c43      	adds	r3, r0, #1
d00846e0:	d102      	bne.n	d00846e8 <_fstat_r+0x1c>
d00846e2:	682b      	ldr	r3, [r5, #0]
d00846e4:	b103      	cbz	r3, d00846e8 <_fstat_r+0x1c>
d00846e6:	6023      	str	r3, [r4, #0]
d00846e8:	bd38      	pop	{r3, r4, r5, pc}
d00846ea:	bf00      	nop
d00846ec:	d008adf0 	.word	0xd008adf0

d00846f0 <_isatty_r>:
d00846f0:	b538      	push	{r3, r4, r5, lr}
d00846f2:	4d06      	ldr	r5, [pc, #24]	; (d008470c <_isatty_r+0x1c>)
d00846f4:	2300      	movs	r3, #0
d00846f6:	4604      	mov	r4, r0
d00846f8:	4608      	mov	r0, r1
d00846fa:	602b      	str	r3, [r5, #0]
d00846fc:	f7fb fd1e 	bl	d008013c <_isatty>
d0084700:	1c43      	adds	r3, r0, #1
d0084702:	d102      	bne.n	d008470a <_isatty_r+0x1a>
d0084704:	682b      	ldr	r3, [r5, #0]
d0084706:	b103      	cbz	r3, d008470a <_isatty_r+0x1a>
d0084708:	6023      	str	r3, [r4, #0]
d008470a:	bd38      	pop	{r3, r4, r5, pc}
d008470c:	d008adf0 	.word	0xd008adf0

d0084710 <_lseek_r>:
d0084710:	b538      	push	{r3, r4, r5, lr}
d0084712:	4d07      	ldr	r5, [pc, #28]	; (d0084730 <_lseek_r+0x20>)
d0084714:	4604      	mov	r4, r0
d0084716:	4608      	mov	r0, r1
d0084718:	4611      	mov	r1, r2
d008471a:	2200      	movs	r2, #0
d008471c:	602a      	str	r2, [r5, #0]
d008471e:	461a      	mov	r2, r3
d0084720:	f7fb fcea 	bl	d00800f8 <_lseek>
d0084724:	1c43      	adds	r3, r0, #1
d0084726:	d102      	bne.n	d008472e <_lseek_r+0x1e>
d0084728:	682b      	ldr	r3, [r5, #0]
d008472a:	b103      	cbz	r3, d008472e <_lseek_r+0x1e>
d008472c:	6023      	str	r3, [r4, #0]
d008472e:	bd38      	pop	{r3, r4, r5, pc}
d0084730:	d008adf0 	.word	0xd008adf0
	...

d0084740 <memchr>:
d0084740:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0084744:	2a10      	cmp	r2, #16
d0084746:	db2b      	blt.n	d00847a0 <memchr+0x60>
d0084748:	f010 0f07 	tst.w	r0, #7
d008474c:	d008      	beq.n	d0084760 <memchr+0x20>
d008474e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0084752:	3a01      	subs	r2, #1
d0084754:	428b      	cmp	r3, r1
d0084756:	d02d      	beq.n	d00847b4 <memchr+0x74>
d0084758:	f010 0f07 	tst.w	r0, #7
d008475c:	b342      	cbz	r2, d00847b0 <memchr+0x70>
d008475e:	d1f6      	bne.n	d008474e <memchr+0xe>
d0084760:	b4f0      	push	{r4, r5, r6, r7}
d0084762:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0084766:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d008476a:	f022 0407 	bic.w	r4, r2, #7
d008476e:	f07f 0700 	mvns.w	r7, #0
d0084772:	2300      	movs	r3, #0
d0084774:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0084778:	3c08      	subs	r4, #8
d008477a:	ea85 0501 	eor.w	r5, r5, r1
d008477e:	ea86 0601 	eor.w	r6, r6, r1
d0084782:	fa85 f547 	uadd8	r5, r5, r7
d0084786:	faa3 f587 	sel	r5, r3, r7
d008478a:	fa86 f647 	uadd8	r6, r6, r7
d008478e:	faa5 f687 	sel	r6, r5, r7
d0084792:	b98e      	cbnz	r6, d00847b8 <memchr+0x78>
d0084794:	d1ee      	bne.n	d0084774 <memchr+0x34>
d0084796:	bcf0      	pop	{r4, r5, r6, r7}
d0084798:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d008479c:	f002 0207 	and.w	r2, r2, #7
d00847a0:	b132      	cbz	r2, d00847b0 <memchr+0x70>
d00847a2:	f810 3b01 	ldrb.w	r3, [r0], #1
d00847a6:	3a01      	subs	r2, #1
d00847a8:	ea83 0301 	eor.w	r3, r3, r1
d00847ac:	b113      	cbz	r3, d00847b4 <memchr+0x74>
d00847ae:	d1f8      	bne.n	d00847a2 <memchr+0x62>
d00847b0:	2000      	movs	r0, #0
d00847b2:	4770      	bx	lr
d00847b4:	3801      	subs	r0, #1
d00847b6:	4770      	bx	lr
d00847b8:	2d00      	cmp	r5, #0
d00847ba:	bf06      	itte	eq
d00847bc:	4635      	moveq	r5, r6
d00847be:	3803      	subeq	r0, #3
d00847c0:	3807      	subne	r0, #7
d00847c2:	f015 0f01 	tst.w	r5, #1
d00847c6:	d107      	bne.n	d00847d8 <memchr+0x98>
d00847c8:	3001      	adds	r0, #1
d00847ca:	f415 7f80 	tst.w	r5, #256	; 0x100
d00847ce:	bf02      	ittt	eq
d00847d0:	3001      	addeq	r0, #1
d00847d2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d00847d6:	3001      	addeq	r0, #1
d00847d8:	bcf0      	pop	{r4, r5, r6, r7}
d00847da:	3801      	subs	r0, #1
d00847dc:	4770      	bx	lr
d00847de:	bf00      	nop

d00847e0 <memcpy>:
d00847e0:	440a      	add	r2, r1
d00847e2:	4291      	cmp	r1, r2
d00847e4:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d00847e8:	d100      	bne.n	d00847ec <memcpy+0xc>
d00847ea:	4770      	bx	lr
d00847ec:	b510      	push	{r4, lr}
d00847ee:	f811 4b01 	ldrb.w	r4, [r1], #1
d00847f2:	f803 4f01 	strb.w	r4, [r3, #1]!
d00847f6:	4291      	cmp	r1, r2
d00847f8:	d1f9      	bne.n	d00847ee <memcpy+0xe>
d00847fa:	bd10      	pop	{r4, pc}

d00847fc <memmove>:
d00847fc:	4288      	cmp	r0, r1
d00847fe:	b510      	push	{r4, lr}
d0084800:	eb01 0402 	add.w	r4, r1, r2
d0084804:	d902      	bls.n	d008480c <memmove+0x10>
d0084806:	4284      	cmp	r4, r0
d0084808:	4623      	mov	r3, r4
d008480a:	d807      	bhi.n	d008481c <memmove+0x20>
d008480c:	1e43      	subs	r3, r0, #1
d008480e:	42a1      	cmp	r1, r4
d0084810:	d008      	beq.n	d0084824 <memmove+0x28>
d0084812:	f811 2b01 	ldrb.w	r2, [r1], #1
d0084816:	f803 2f01 	strb.w	r2, [r3, #1]!
d008481a:	e7f8      	b.n	d008480e <memmove+0x12>
d008481c:	4402      	add	r2, r0
d008481e:	4601      	mov	r1, r0
d0084820:	428a      	cmp	r2, r1
d0084822:	d100      	bne.n	d0084826 <memmove+0x2a>
d0084824:	bd10      	pop	{r4, pc}
d0084826:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d008482a:	f802 4d01 	strb.w	r4, [r2, #-1]!
d008482e:	e7f7      	b.n	d0084820 <memmove+0x24>

d0084830 <_realloc_r>:
d0084830:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0084832:	4607      	mov	r7, r0
d0084834:	4614      	mov	r4, r2
d0084836:	460e      	mov	r6, r1
d0084838:	b921      	cbnz	r1, d0084844 <_realloc_r+0x14>
d008483a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d008483e:	4611      	mov	r1, r2
d0084840:	f7fe bf44 	b.w	d00836cc <_malloc_r>
d0084844:	b922      	cbnz	r2, d0084850 <_realloc_r+0x20>
d0084846:	f7fe fef1 	bl	d008362c <_free_r>
d008484a:	4625      	mov	r5, r4
d008484c:	4628      	mov	r0, r5
d008484e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0084850:	f000 f826 	bl	d00848a0 <_malloc_usable_size_r>
d0084854:	42a0      	cmp	r0, r4
d0084856:	d20f      	bcs.n	d0084878 <_realloc_r+0x48>
d0084858:	4621      	mov	r1, r4
d008485a:	4638      	mov	r0, r7
d008485c:	f7fe ff36 	bl	d00836cc <_malloc_r>
d0084860:	4605      	mov	r5, r0
d0084862:	2800      	cmp	r0, #0
d0084864:	d0f2      	beq.n	d008484c <_realloc_r+0x1c>
d0084866:	4631      	mov	r1, r6
d0084868:	4622      	mov	r2, r4
d008486a:	f7ff ffb9 	bl	d00847e0 <memcpy>
d008486e:	4631      	mov	r1, r6
d0084870:	4638      	mov	r0, r7
d0084872:	f7fe fedb 	bl	d008362c <_free_r>
d0084876:	e7e9      	b.n	d008484c <_realloc_r+0x1c>
d0084878:	4635      	mov	r5, r6
d008487a:	e7e7      	b.n	d008484c <_realloc_r+0x1c>

d008487c <_read_r>:
d008487c:	b538      	push	{r3, r4, r5, lr}
d008487e:	4d07      	ldr	r5, [pc, #28]	; (d008489c <_read_r+0x20>)
d0084880:	4604      	mov	r4, r0
d0084882:	4608      	mov	r0, r1
d0084884:	4611      	mov	r1, r2
d0084886:	2200      	movs	r2, #0
d0084888:	602a      	str	r2, [r5, #0]
d008488a:	461a      	mov	r2, r3
d008488c:	f7fb fc20 	bl	d00800d0 <_read>
d0084890:	1c43      	adds	r3, r0, #1
d0084892:	d102      	bne.n	d008489a <_read_r+0x1e>
d0084894:	682b      	ldr	r3, [r5, #0]
d0084896:	b103      	cbz	r3, d008489a <_read_r+0x1e>
d0084898:	6023      	str	r3, [r4, #0]
d008489a:	bd38      	pop	{r3, r4, r5, pc}
d008489c:	d008adf0 	.word	0xd008adf0

d00848a0 <_malloc_usable_size_r>:
d00848a0:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00848a4:	1f18      	subs	r0, r3, #4
d00848a6:	2b00      	cmp	r3, #0
d00848a8:	bfbc      	itt	lt
d00848aa:	580b      	ldrlt	r3, [r1, r0]
d00848ac:	18c0      	addlt	r0, r0, r3
d00848ae:	4770      	bx	lr
	...

d00848c0 <clut>:
d00848c0:	0000 0000 afaf ffaf ffff ffff 67a2 ff3b     .............g;.
d00848d0:	907c ffaa 9595 ff95 7b7b ff7b a997 ffff     |.......{{{.....
d00848e0:	a91d ff37 a9ff ff7c 8112 ffbf bf66 ffeb     ..7...|.....f...
d00848f0:	c178 ff78 9318 ff3d 3418 ffb3 311c ffd9     x.x...=..4...1..
d0084900:	0000 ff00 000e ff00 001d ff00 002b ff00     ............+...
d0084910:	0139 ff00 0147 ff00 0156 ff00 0164 ff00     9...G...V...d...
d0084920:	01d2 ff00 01ff ff00 cece ffce ff00 ff00     ................
d0084930:	ff00 ffb2 e700 ffff 9600 ffff 1100 ffff     ................
d0084940:	1200 ff49 1355 ff49 14aa ff49 16ff ff49     ..I.U.I...I...I.
d0084950:	1700 ff5b 1855 ff5b 19aa ff5b 1aff ff5b     ..[.U.[...[...[.
d0084960:	1b00 ff6d 1c55 ff6d e300 ff00 ff54 ff85     ..m.U.m.....T...
d0084970:	ff00 ffc4 d900 ffff a41f ffff 5400 ffe0     .............T..
d0084980:	0000 ffff 2655 ff92 27aa ff92 28ff ff92     ....U&...'...(..
d0084990:	2900 ffa4 2a55 ffa4 2baa ffa4 2cff ffa4     .)..U*...+...,..
d00849a0:	2d00 ffb6 2f55 ffb6 30aa ffb6 31ff ffb6     .-..U/...0...1..
d00849b0:	3200 ffc9 3355 ffc9 34aa ffc9 35ff ffc9     .2..U3...4...5..
d00849c0:	3700 ffdb 3855 ffdb 39aa ffdb 3aff ffdb     .7..U8...9...:..
d00849d0:	3b00 ffed 3c55 ffed 3daa ffed 3fff ffed     .;..U<...=...?..
d00849e0:	4000 ffff 4155 ffff 42aa ffff 43ff ffff     .@..UA...B...C..
d00849f0:	4400 ff00 4555 ff00 46aa ff00 48ff ff00     .D..UE...F...H..
d0084a00:	ff00 ffff ff55 ff12 ee55 ff12 b6ff ff12     ....U...U.......
d0084a10:	1fff ff00 0ec7 ff9d 0000 fff1 7700 ffff     .............w..
d0084a20:	5200 ff37 5355 ff37 54aa ff37 55ff ff37     .R7.US7..T7..U7.
d0084a30:	5600 ff49 5855 ff49 59aa ff49 5aff ff49     .VI.UXI..YI..ZI.
d0084a40:	5b00 ff5b 5c55 ff5b 5daa ff5b 5eff ff5b     .[[.U\[..][..^[.
d0084a50:	6000 ff6d 6155 ff6d 62aa ff6d 63ff ff6d     .`m.Uam..bm..cm.
d0084a60:	6400 ff6d 6555 ff80 66aa ff80 67ff ff80     .dm.Ue...f...g..
d0084a70:	6900 ff92 6a55 ff92 6baa ff92 6cff ff92     .i..Uj...k...l..
d0084a80:	6d00 ffa4 6e55 ffa4 6faa ffa4 71ff ffa4     .m..Un...o...q..
d0084a90:	7200 ffb6 7355 ffb6 74aa ffb6 75ff ffb6     .r..Us...t...u..
d0084aa0:	7600 ffc9 7755 ffc9 79aa ffc9 7aff ffc9     .v..Uw...y...z..
d0084ab0:	7b00 ffdb 7c55 ffdb 7daa ffdb 7eff ffdb     .{..U|...}...~..
d0084ac0:	7f00 ffed 8055 ffed 82aa ffed 83ff ffed     ....U...........
d0084ad0:	8400 ffff 8555 ffff 86aa ffff 87ff ffff     ....U...........
d0084ae0:	8800 ff00 8a55 ff00 8baa ff00 8cff ff00     ....U...........
d0084af0:	8d00 ff12 8e55 ff12 8faa ff12 90ff ff12     ....U...........
d0084b00:	9200 ff24 9355 ff24 94aa ff24 95ff ff24     ..$.U.$...$...$.
d0084b10:	9600 ff37 9755 ff37 98aa ff37 99ff ff37     ..7.U.7...7...7.
d0084b20:	9b00 ff49 9c55 ff49 9daa ff49 9eff ff49     ..I.U.I...I...I.
d0084b30:	9f00 ff5b a055 ff5b a1aa ff5b a3ff ff5b     ..[.U.[...[...[.
d0084b40:	b5d5 ffa4 b0f8 ffa0 a3e6 ff94 89c1 ff7c     ..............|.
d0084b50:	81c0 ff62 62a1 ff1c 54ea ff42 a1bd ff62     ..b..b...TB...b.
d0084b60:	93c0 ff70 77a1 ff49 3faa ff00 54ff ff15     ..p..wI..?...T..
d0084b70:	50b9 ff1c b3ff ff00 88aa ff00 b5ff ff00     .P..............
d0084b80:	62ff ff0e b7e3 ff5e c0b9 ffbd b9ff ff85     .b....^.........
d0084b90:	6caf ff00 81b9 ff1f 5baa ff3f beff ffc9     .l.......[?.....
d0084ba0:	afcb ff5b c055 ffdb c1aa ffdb c0c0 ffbd     ..[.U...........
d0084bb0:	c400 ffed c555 ffed c6aa ffed c7ff ffed     ....U...........
d0084bc0:	c800 ffff c955 ffff caaa ffff ccff ffff     ....U...........
d0084bd0:	cd00 ff00 ce55 ff00 cfaa ff00 d0ff ff00     ....U...........
d0084be0:	d100 ff12 d255 ff12 d3aa ff12 d5ff ff12     ....U...........
d0084bf0:	d600 ff24 d755 ff24 d8aa ff24 d9ff ff24     ..$.U.$...$...$.
d0084c00:	da00 ff37 db55 ff37 ddaa ff37 deff ff37     ..7.U.7...7...7.
d0084c10:	df00 ff49 e055 ff49 e1aa ff49 e2ff ff49     ..I.U.I...I...I.
d0084c20:	e300 ff5b e555 ff5b e6aa ff5b e7ff ff5b     ..[.U.[...[...[.
d0084c30:	e800 ff6d e955 ff6d eaaa ff6d ebff ff6d     ..m.U.m...m...m.
d0084c40:	58ec ff04 22ac ff04 77ff ff00 54ee ff00     .X..."...w...T..
d0084c50:	33dd ff00 0000 ff99 0000 ffff 6600 ffff     .3...........f..
d0084c60:	dd00 ffff f755 ffa4 f8aa ffa4 f9ff ffa4     ....U...........
d0084c70:	fa00 ffb6 fb55 ffb6 fcaa ffb6 feff ffb6     ....U...........
d0084c80:	00ff ffff 0000 ff00 1313 ff13 2727 ff27     ............'''.
d0084c90:	3a3a ff3a 4e4e ff4e 6262 ff62 7575 ff75     :::.NNN.bbb.uuu.
d0084ca0:	8989 ff89 9c9c ff9c b0b0 ffb0 c4c4 ffc4     ................
d0084cb0:	d7d7 ffd7 ebeb ffeb ffff ffff ffff ffff     ................

d0084cc0 <projx_spacestation>:
	...
d0084cfc:	f500 f9f8 f5f9 f5f5 f5f5 f8f8 f7f7 f7f7     ................
d0084d0c:	f6f7 f5f6 f5f5 0000 0000 0000 0000 0000     ................
	...
d0084da0:	f600 f5f5 f5f9 f7f4 f7f7 f3f4 f5f5 f4f4     ................
d0084db0:	f5f4 f6f4 f5f6 f5f5 0000 0000 0000 0000     ................
	...
d0084e44:	f5f4 f3f6 f9f4 f4f5 f6f7 f3f6 f5f3 f4f4     ................
d0084e54:	f4f4 f5f4 f6f5 f5f6 f5f5 f5f5 00f4 0000     ................
	...
d0084ee8:	f500 f5f8 f4f4 f5fa f6f4 f6f6 f3f3 f5f5     ................
d0084ef8:	f4f4 f6f5 f6f7 f6f6 f4f6 f4f4 f5f4 00f4     ................
	...
d0084f8c:	f200 f8f8 f4f5 faf4 f4f5 f6f6 f4f6 f7f4     ................
d0084f9c:	f8f7 f7f7 f6f7 f5f5 f5f6 f4f6 f4f4 f4f4     ................
d0084fac:	00f4 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0085030:	f200 f8f4 f6f5 f5f4 f5fa f9f5 f8f9 f5f5     ................
d0085040:	f8f8 f6f7 f4f5 f5f4 f5f5 f5f5 f4f6 f4f4     ................
d0085050:	f5f4 00fb 0000 0000 0000 0000 0000 0000     ................
	...
d00850d4:	0000 f3f4 f4f3 f4f4 fafa f4f7 f4f4 f3f3     ................
d00850e4:	f8f5 f5f7 f4f4 f4f4 f5f4 f5f5 f5f6 f4f6     ................
d00850f4:	f4f4 f4f5 00f4 0000 0000 0000 0000 0000     ................
	...
d0085178:	0000 f5f4 f5f5 f7f6 faf8 f7fa f6f6 f5f6     ................
d0085188:	f5f5 f8f7 f5f4 f4f4 f5f4 f5f4 f5f5 f5f6     ................
d0085198:	f5f6 f5f5 f4f5 0000 0000 0000 0000 0000     ................
	...
d008521c:	0000 f300 f3f3 f6f6 f8f5 f7f7 f6f5 f6f6     ................
d008522c:	f3f3 f6f3 f8f5 f2f2 f2f2 f3f2 f6f3 f3f6     ................
d008523c:	f3f4 f3f4 f3f3 00f3 0000 0000 0000 0000     ................
	...
d00852c4:	f4f5 f4f4 f5f5 f7f7 f5f5 f4f4 f3f4 f3f3     ................
d00852d4:	f5f3 f3f5 f3f3 f5f5 f4f5 f2f3 f1f2 f3f4     ................
d00852e4:	f3f4 f3f3 0000 0000 0000 0000 0000 0000     ................
	...
d0085368:	f5f4 f6f5 f5f5 f7f5 f5f7 f4f5 f4f4 f3f3     ................
d0085378:	f3f3 f5f4 f5f5 f4f4 f2f2 f2f2 f3f3 f3f4     ................
d0085388:	f3f3 00f3 0000 0000 0000 0000 0000 0000     ................
	...
d008540c:	f300 f5f5 f6f6 f7f7 f7f7 f4f5 f4f4 f5f6     ................
d008541c:	f5f5 f5f5 f5f5 f2f2 f4f2 f4f4 f4f5 f3f4     ................
d008542c:	f3f3 f3f3 f5f3 0000 0000 0000 0000 0000     ................
	...
d00854b0:	0000 f4f3 f6f5 f7f6 f7f7 f5f5 f4f4 f6f4     ................
d00854c0:	f5f5 f5f5 f5f5 f5f5 f5f5 f4f5 f4f4 f3f3     ................
d00854d0:	f3f3 f4f3 f5f5 0000 0000 0000 0000 0000     ................
	...
d0085554:	0000 f300 f4f5 f5f5 f6f6 f5f7 f4f5 f4f4     ................
d0085564:	f5f5 f5f5 f5f5 f5f5 f4f5 f3f4 f3f3 f3f3     ................
d0085574:	f3f2 f5f4 f2f5 0000 0000 0000 0000 0000     ................
	...
d00855fc:	f300 f4f5 f4f4 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d008560c:	f5f5 f4f5 f3f4 f3f3 f3f3 f4f2 f5f4 f5f5     ................
d008561c:	f2f2 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00856a4:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f4f5 f4f4     ................
d00856b4:	f3f3 f4f2 f2f3 f5f4 f5f5 f2f2 0000 0000     ................
	...
d0085748:	0000 f300 f5f5 f5f5 f5f5 f6f5 f2f8 f2f2     ................
d0085758:	f2f2 f5f4 f5f5 f5f5 f3f3 00f1 0000 0000     ................
	...
d00857f8:	f2f4 f5f2 f2f5 f4f4 f4f9 f4f6 f2f1 f4f2     ................
d0085808:	f3f3 0000 0000 0000 0000 0000 0000 0000     ................
	...
d008589c:	f500 f2f4 f5f7 f2f1 f4f3 f2f1 f2f2 f4f3     ................
d00858ac:	f4f4 f3f3 0000 0000 0000 0000 0000 0000     ................
	...
d0085940:	00f3 f200 f5f2 f5f5 f4f5 f3f4 f3f3 f4f4     ................
d0085950:	f3f4 f3f4 f3f3 0000 0000 0000 0000 0000     ................
	...
d00859e0:	0000 f300 f5f4 f4f5 f4f4 f4f4 f4f4 f4f5     ................
d00859f0:	f4f4 f4f4 f4f4 f4f5 f3f4 f3f3 0000 0000     ................
	...
d0085a84:	0000 f300 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d0085a94:	f5f5 f5f5 f5f5 f5f5 f4f5 f3f4 00f3 0000     ................
	...
d0085b2c:	f5f4 f6f5 f7f6 f9f8 f9f9 f9f9 f7f9 f7f7     ................
d0085b3c:	f6f6 f5f5 f5f5 f4f4 f3f3 0000 0000 0000     ................
	...
d0085bd0:	f4f3 f5f5 f6f6 f8f7 f9f9 f9f9 f7f9 f6f7     ................
d0085be0:	f5f6 f5f5 f5f5 f4f5 f3f4 00f3 0000 0000     ................
	...
d0085c74:	0000 f5f4 f5f5 f6f6 f7f7 f8f8 f7f7 f6f7     ................
d0085c84:	f6f6 f5f5 f5f5 f4f5 f3f4 0000 0000 0000     ................
	...
d0085d18:	0000 f300 f5f4 f5f5 f6f6 f6f6 f6f6 f6f6     ................
d0085d28:	f5f6 f5f5 f5f5 f4f5 f2f4 00f5 0000 0000     ................
	...
d0085dc0:	0000 f4f3 f5f4 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d0085dd0:	f5f5 f2f5 f2f5 f3f2 0000 0000 0000 0000     ................
	...
d0085e68:	0000 f3f3 f2f3 f2f2 f3f3 f3f5 f1f5 f2f1     ................
d0085e78:	f3f2 f3f3 f3f3 0000 0000 0000 0000 0000     ................
	...
d0085f0c:	0000 f3f3 f3f2 f2f2 f2f2 f4f3 f4f4 f2f2     ................
d0085f1c:	f3f3 f3f4 f3f3 00f3 0000 0000 0000 0000     ................
	...
d0085fb0:	0000 f500 f4f5 f2f4 f2f2 f4f3 f5f6 f3f4     ................
d0085fc0:	f3f2 f3f3 f3f4 f3f3 00f3 0000 0000 0000     ................
	...
d0085fdc:	f200 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2     ................
d0085fec:	f2f2 f2f2 f2f2 f2f2 00f2 0000 0000 0000     ................
	...
d0086054:	0000 f300 f5f5 f3f5 f2f2 f3f2 f6f5 f4f5     ................
d0086064:	f2f3 f3f3 f5f4 f3f7 f3f3 f1f3 f2f1 f2f2     ................
d0086074:	f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2     ................
d0086084:	f2f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d0086094:	f5f2 f3f3 f3f3 f2f2 f2f2 f2f2 0000 0000     ................
	...
d00860fc:	f5f3 f5f5 f2f3 f2f2 f4f4 f5f6 f4f4 f3f2     ................
d008610c:	f5f3 f5f5 f3f5 f3f3 f1f2 f3f1 f3f3 f3f3     ................
d008611c:	f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d008612c:	f3f3 f3f3 f3f3 f3f3 f3f3 f2f3 f5f3 f3f3     ................
d008613c:	f3f3 f3f3 f3f3 f3f3 f2f3 f2f2 00f2 0000     ................
	...
d00861a0:	f400 f5f5 f3f5 f2f2 f3f2 f6f4 f4f6 f2f2     ................
d00861b0:	f4f3 f5f5 f7f5 f3f3 f3f3 f2f2 f2f1 f3f3     ................
d00861c0:	f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d00861d0:	f3f3 f3f3 f3f3 f3f3 f3f3 f2f3 f3f5 f3f3     ................
d00861e0:	f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f2f2     ................
d00861f0:	00f2 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0086244:	0000 f5f5 f4f5 f2f3 f1f2 f2f2 f5f4 f4f3     ................
d0086254:	f3f2 f5f5 f5f5 f7f5 f3f3 f3f3 f2f2 f2f1     ................
d0086264:	f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f2f3     ................
d0086274:	f2f2 f4f2 f4f4 f5f4 f5f5 f5f5 f5f5 f5f5     ................
d0086284:	f6f5 f5f5 f4f4 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d0086294:	f2f3 f1f1 f1f1 0000 0000 0000 0000 0000     ................
	...
d00862e8:	0000 f5f3 f5f5 f2f3 f2f2 f2f2 f5f4 f5f6     ................
d00862f8:	f2f2 f5f3 f5f5 f5f5 f5f9 f3f3 f2f3 f2f2     ................
d0086308:	f1f1 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f3f4     ................
d0086318:	f4f2 f1f5 f4f2 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d0086328:	f5f5 f5f5 f5f5 f5f5 f4f4 f3f3 f3f3 f3f3     ................
d0086338:	f3f3 f3f3 f1f2 f1f1 f1f1 00f1 0000 0000     ................
	...
d008638c:	0000 f300 f5f5 f3f5 f2f3 f2f2 f2f1 f5f3     ................
d008639c:	f3f5 f3f4 f5f4 f5f5 f5f5 f3f9 f3f3 f2f3     ................
d00863ac:	f2f2 f1f1 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d00863bc:	f6f2 f5f6 f2f2 f4f5 f5f5 f5f5 f5f5 f5f5     ................
d00863cc:	f5f5 f5f5 f5f5 f5f5 f5f5 f4f4 f3f3 f3f3     ................
d00863dc:	f3f3 f3f3 f3f3 f1f2 f1f1 f1f1 f1f1 00f1     ................
	...
d0086430:	0000 f100 f5f4 f5f5 f2f3 f2f2 f2f2 f4f4     ................
d0086440:	f6f6 f4f5 f2f1 f5f3 f5f5 f9f5 f3f6 f3f3     ................
d0086450:	f2f3 f2f2 f2f1 f4f4 f4f4 f4f4 f4f4 f2f4     ................
d0086460:	f3f2 f2f4 f5f4 f3f3 f5f5 f5f5 f5f5 f5f5     ................
d0086470:	f5f5 f5f5 f5f5 f5f5 f5f5 f6f5 f4f5 f3f3     ................
d0086480:	f3f4 f3f3 f3f3 f3f3 f1f2 f1f1 f1f1 f1f1     ................
d0086490:	f2f1 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00864d0:	0000 f300 f3f3 f3f3 f5f2 f5f5 f3f4 f2f3     ................
d00864e0:	f2f2 f2f1 f5f4 f5f6 f5f4 f3f5 f5f3 f5f5     ................
d00864f0:	f9f5 f3f5 f3f3 f2f3 f2f2 f3f1 f4f4 f4f4     ................
d0086500:	f4f4 f2f4 f5f4 f4f4 f3f5 f3f2 f3f3 f4f5     ................
d0086510:	f3f3 f3f3 f3f4 f4f4 f4f4 f5f5 f5f5 f6f5     ................
d0086520:	f6f5 f4f5 f3f4 f4f3 f3f3 f3f4 f4f3 f1f2     ................
d0086530:	f1f1 f1f1 f1f1 f1f1 00f1 0000 0000 0000     ................
	...
d0086574:	f300 f3f3 f4f4 f4f4 f2f2 f6f5 f3f5 f2f3     ................
d0086584:	f2f2 f5f2 f5f3 f5f5 f5f4 f6f6 f1f6 f5f3     ................
d0086594:	f5f5 f9f6 f3f3 f3f3 f2f2 f2f2 f4f1 f4f4     ................
d00865a4:	f5f4 f2f2 f5f2 f5f3 f3f6 f3f2 f3f3 f4f3     ................
d00865b4:	f6f6 f6f6 f7f6 f6f7 f6f7 f5f7 f4f4 f5f5     ................
d00865c4:	f6f5 f6f5 f4f4 f4f3 f3f3 f3f4 f4f3 f2f3     ................
d00865d4:	f1f1 f1f1 f1f1 f1f1 f1f1 f1f1 0000 0000     ................
	...
d0086614:	0000 f300 f4f3 f4f4 f4f4 f4f4 f2f2 f5f3     ................
d0086624:	f5f6 f3f3 f2f3 f5f2 f5f5 f5f5 f5f5 f7f6     ................
d0086634:	f6f6 f1f1 f5f4 f5f5 f5f9 f3f3 f3f3 f2f2     ................
d0086644:	f1f2 f4f1 f4f4 f3f3 f2f2 f4f5 f2f3 f3f2     ................
d0086654:	f1f2 f2f2 f1f2 f1f2 f1f1 f1f1 f1f1 f4f2     ................
d0086664:	f7f5 f5f5 f5f4 f6f5 f6f5 f4f5 f3f3 f3f4     ................
d0086674:	f4f3 f3f3 f1f3 f1f1 f1f1 f1f1 f1f1 f1f1     ................
d0086684:	f2f1 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00866b8:	f4f3 f4f4 f4f4 f4f2 f4f4 f3f4 f2f3 f4f2     ................
d00866c8:	f6f5 f3f5 f2f3 f5f2 f5f5 f5f5 f5f5 f6f6     ................
d00866d8:	f6f6 f4f6 f1f1 f5f4 f5f5 f3f9 f3f3 f3f3     ................
d00866e8:	f2f2 f1f2 f2f5 f5f3 f3f5 f5f3 f2f2 f5f2     ................
d00866f8:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f2f2     ................
d0086708:	f1f1 f2f1 f7f5 f5f5 f6f4 f5f6 f3f3 f3f4     ................
d0086718:	f4f3 f3f3 f2f4 f2f2 f1f2 f1f1 f1f1 f1f1     ................
d0086728:	f1f1 f1f1 0000 0000 0000 0000 0000 0000     ................
	...
d0086758:	0000 f4f3 f4f4 f4f4 f4f4 f4f4 f4f3 f3f3     ................
d0086768:	f3f3 f3f2 f6f5 f4f5 f2f3 f5f3 f5f5 f5f5     ................
d0086778:	f6f5 f7f7 f6f6 f1f6 f1f1 f1f1 f5f1 f5f5     ................
d0086788:	f3f6 f3f3 f2f3 f2f2 f2f1 f5f3 f5f7 f3f5     ................
d0086798:	f2f2 f5f5 0000 0000 0000 0000 0000 0000     ................
d00867a8:	0000 f500 f5f5 f5f5 f2f2 f7f2 f6f7 f6f4     ................
d00867b8:	f3f6 f3f4 f4f3 f3f3 f3f4 f1f2 f1f2 f2f2     ................
d00867c8:	f1f1 f1f1 f1f1 f1f1 00f1 0000 0000 0000     ................
	...
d00867fc:	f400 f4f4 f4f4 f4f4 f3f4 f3f4 f3f3 f3f3     ................
d008680c:	f3f3 f2f2 f5f3 f5f6 f3f3 f4f3 f5f5 f5f5     ................
d008681c:	f7f5 f7f8 f7f8 f1f5 f1f1 f1f1 f1f1 f5f4     ................
d008682c:	f5f5 f3f5 f3f3 f2f3 f2f2 f3f2 f5f5 f5f7     ................
d008683c:	f5f3 f5f5 0000 0000 0000 0000 0000 0000     ................
	...
d0086854:	f500 f5f5 f4f1 f6f5 f5f4 f3f4 f4f3 f3f3     ................
d0086864:	f3f4 f2f3 f1f2 f1f2 f2f1 f1f2 f1f1 f1f1     ................
d0086874:	f1f1 00f2 0000 0000 0000 0000 0000 0000     ................
	...
d008689c:	0000 f300 f4f3 f4f4 f4f3 f2f3 f3f3 f3f3     ................
d00868ac:	f3f3 f3f3 f3f3 f2f3 f4f2 f6f5 f3f5 f3f3     ................
d00868bc:	f5f5 f5f5 f7f5 f8f9 f8f8 f1f7 f1f1 f1f1     ................
d00868cc:	f1f1 f1f1 f5f4 f5f5 f3f3 f3f3 f2f2 f1f2     ................
d00868dc:	f3f2 f5f5 f2f3 f4f2 0000 0000 0000 0000     ................
	...
d00868fc:	f500 f1f5 f7f5 f3f5 f4f3 f3f3 f3f4 f2f3     ................
d008690c:	f2f2 f2f2 f1f2 f1f1 f1f1 f1f1 f1f2 f2f2     ................
	...
d0086940:	0000 f4f3 f4f4 f2f4 f2f3 f2f3 f3f3 f3f2     ................
d0086950:	f3f3 f3f3 f3f3 f3f3 f2f2 f5f5 f4f6 f3f3     ................
d0086960:	f5f4 f5f5 f2f3 f9f9 f8f8 f1f1 f1f1 f1f1     ................
d0086970:	f1f1 f2f2 f1f1 f5f5 f5f5 f3f3 f3f3 f2f2     ................
d0086980:	f2f1 f3f2 f2f3 f3f2 0000 0000 0000 0000     ................
d0086990:	0000 f2f2 00f2 0000 0000 0000 0000 0000     ................
d00869a0:	0000 0000 f2f1 f4f8 f3f4 f3f4 f3f4 f2f4     ................
d00869b0:	f2f2 f2f2 f2f2 f1f2 f1f1 f1f1 f1f2 f1f2     ................
d00869c0:	00f2 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00869e4:	f4f3 f4f4 f4f4 f2f3 f2f3 f2f3 f3f3 f3f2     ................
d00869f4:	f3f3 f3f3 f3f3 f3f3 f2f3 f5f2 f5f6 f3f3     ................
d0086a04:	f5f3 f5f5 f6f5 f2f8 f8f8 f1f1 f1f1 f1f1     ................
d0086a14:	f1f1 f4f2 f1f1 f4f1 f5f5 f3f5 f3f3 f2f5     ................
d0086a24:	f2f2 f5f1 f2f2 f5f2 0000 0000 0000 0000     ................
d0086a34:	0000 f300 f3f3 0000 0000 0000 0000 0000     ................
d0086a44:	0000 0000 f500 f3f1 f3f4 f3f4 f3f4 f3f4     ................
d0086a54:	f2f2 f2f2 f2f2 f1f2 f1f1 f1f1 f1f1 f2f2     ................
d0086a64:	f2f2 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0086a84:	0000 f4f3 f4f4 f4f4 f2f3 f2f2 f2f3 f2f3     ................
d0086a94:	f3f3 f3f2 f3f3 f3f3 f3f3 f3f3 f3f3 f2f2     ................
d0086aa4:	f6f5 f3f5 f4f3 f5f5 f6f5 f7f6 f1f8 f1f1     ................
d0086ab4:	f1f1 f1f1 f1f1 f2f4 f1f1 f2f1 f4f1 f5f5     ................
d0086ac4:	f5f5 f4f5 f2f3 f1f2 f5f2 00f5 0000 0000     ................
d0086ad4:	0000 0000 0000 f300 f5f5 f3f5 0000 f1f2     ................
d0086ae4:	f1f1 f1f1 f1f1 f1f1 f3f2 f3f4 f3f4 f3f4     ................
d0086af4:	f3f4 f3f4 f2f2 f2f2 f2f2 f2f2 f1f1 f1f1     ................
d0086b04:	f1f1 f2f2 f2f1 00f2 0000 0000 0000 0000     ................
	...
d0086b28:	f400 f4f4 f4f4 f3f4 f2f2 f2f2 f2f3 f2f3     ................
d0086b38:	f2f3 f3f2 f2f3 f3f3 f4f3 f5f4 f5f5 f5f4     ................
d0086b48:	f7f4 f5f5 f3f3 f8f4 f6f5 f6f9 f7f9 f1f7     ................
d0086b58:	f1f1 f1f1 f1f1 f1f1 f1f1 f1f1 f1f1 f5f3     ................
d0086b68:	f5f5 f4f5 f2f2 f5f5 f5f4 f3f5 f5f3 f5f6     ................
d0086b78:	f4f4 f5f4 f4f3 f4f4 f7f5 f5f7 f3f5 f2f3     ................
d0086b88:	f4f2 f4f4 f6f4 f4f6 f2f3 f3f4 f3f4 f3f4     ................
d0086b98:	f3f4 f3f4 f2f2 f2f2 f2f2 f2f2 f1f1 f1f1     ................
d0086ba8:	f1f1 f2f2 f2f2 f2f2 0000 0000 0000 0000     ................
	...
d0086bcc:	f4f3 f2f4 f4f4 f2f2 f2f2 f2f2 f2f2 f2f2     ................
d0086bdc:	f2f2 f2f2 f2f2 f2f2 f5f4 f5f5 f5f5 f5f5     ................
d0086bec:	f5f5 f5f7 f3f4 f5f3 f5f5 f7f6 f7f5 f7f6     ................
d0086bfc:	f1f1 f1f1 f4f4 f1f1 f1f1 f1f1 f1f1 f4f1     ................
d0086c0c:	f5f4 f5f5 f2f2 f3f3 f3f3 f2f3 f2f2 f3f2     ................
d0086c1c:	f3f3 f8f5 f5f5 f1f4 f5f3 f7f7 f4f4 f3f3     ................
d0086c2c:	f2f2 f3f2 f3f3 f4f4 f2f3 f4f3 f3f4 f3f4     ................
d0086c3c:	f3f4 f3f4 f2f2 f2f2 f2f2 f2f2 f1f1 f1f1     ................
d0086c4c:	f1f1 f2f1 f2f2 f2f2 0000 0000 0000 0000     ................
	...
d0086c6c:	0000 f300 f4f4 f4f4 f2f4 f2f2 f3f2 f4f4     ................
d0086c7c:	f5f4 f5f5 f5f5 f2f4 f3f2 f3f3 f2f2 f2f4     ................
d0086c8c:	f5f2 f2f5 f2f1 f7f5 f3f5 f3f3 f5f5 f6f5     ................
d0086c9c:	f6f6 f7f6 f1f6 f4f1 f1f4 f1f1 f1f1 f1f1     ................
d0086cac:	f7f1 f5f5 f3f4 f5f5 f2f4 f4f2 f6f5 f5f4     ................
d0086cbc:	f8f7 f7f9 f5f6 f4f4 f3f4 f5f1 f3f1 f5f5     ................
d0086ccc:	f7f2 f5f5 f5f5 f8f5 f5f6 f4f5 f3f3 f4f3     ................
d0086cdc:	f3f4 f3f4 f3f4 f2f4 f2f3 f2f2 f2f2 f2f2     ................
d0086cec:	f1f1 f1f1 f1f1 f2f1 f2f2 f2f2 00f2 0000     ................
	...
d0086d10:	0000 f4f3 f4f4 f4f4 f2f4 f2f2 f2f2 f2f2     ................
d0086d20:	f3f3 f2f3 f1f2 f2f1 f3f2 f5f5 f3f5 f5f2     ................
d0086d30:	f5f5 f5f5 f8f5 f7f5 f5f6 f3f3 f5f3 f5f5     ................
d0086d40:	f6f6 f6f5 f6f6 f4f4 f1f1 f1f1 f1f1 f1f1     ................
d0086d50:	f7f1 f5f5 f4f4 f5f3 f4f5 f3f1 f2f2 f2f2     ................
d0086d60:	f3f2 f3f3 f6f3 f3f3 f3f3 f5f2 f2f7 f3f1     ................
d0086d70:	f5f5 f2f2 f4f2 f4f4 f4f4 f3f4 f2f3 f4f3     ................
d0086d80:	f3f4 f4f4 f3f3 f2f4 f4f3 f2f3 f2f3 f2f2     ................
d0086d90:	f1f1 f1f1 f1f1 f2f1 f2f2 f2f2 00f3 0000     ................
	...
d0086db4:	0000 f4f4 f4f4 f4f4 f2f2 f2f2 f2f2 f4f2     ................
d0086dc4:	f5f4 f4f5 f4f3 f5f5 f3f2 f7f5 f5f7 f3f5     ................
d0086dd4:	f3f2 f2f3 f2f2 f4f1 f6f7 f3f5 f4f3 f5f5     ................
d0086de4:	f6f5 f5f6 f6f6 f3f6 f1f1 f4f1 f1f4 f1f1     ................
d0086df4:	f5f1 f5f5 f4f5 f3f4 f5f4 f3f4 f4f2 f5f5     ................
d0086e04:	f4f5 f2f2 f1f3 f5f1 f4f4 f1f4 f5f4 f1f3     ................
d0086e14:	f3f2 f3f3 f1f2 f2f5 f3f3 f3f3 f4f4 f4f3     ................
d0086e24:	f3f4 f4f4 f4f3 f2f4 f1f3 f2f5 f2f3 f2f2     ................
d0086e34:	f1f1 f1f1 f1f1 f2f1 f2f2 f2f2 f4f3 0000     ................
	...
d0086e58:	f300 f4f4 f4f4 f2f4 f2f2 f2f2 f2f2 f7f4     ................
d0086e68:	f5f7 f9f7 f7f6 f5f6 f2f6 f5f3 f7f7 f5f7     ................
d0086e78:	f2f3 f5f5 f8f7 f8f9 f7f5 f4f5 f3f3 f5f5     ................
d0086e88:	f5f5 f5f6 f6f5 f6f6 f5f6 f4f4 f1f4 f1f1     ................
d0086e98:	f1f1 f5f5 f5f5 f4f4 f3f2 f3f5 f2f3 f2f2     ................
d0086ea8:	f2f2 f2f2 f2f2 f3f3 f3f2 f3f3 f1f2 f5f5     ................
d0086eb8:	f5f5 f2f2 f5f2 f3f5 f2f3 f4f3 f4f4 f4f4     ................
d0086ec8:	f4f4 f4f4 f4f3 f2f3 f2f3 f1f3 f4f3 f3f2     ................
d0086ed8:	f2f2 f1f2 f1f1 f2f1 f2f2 f2f2 f4f2 0000     ................
	...
d0086efc:	f4f3 f5f4 f4f4 f2f4 f2f2 f2f2 f2f2 f2f2     ................
d0086f0c:	f5f3 f5f4 f4f5 f3f3 f1f2 f3f2 f5f5 f7f7     ................
d0086f1c:	f3f5 f2f2 f3f2 f3f3 f5f1 f5f7 f3f3 f5f3     ................
d0086f2c:	f5f5 f5f5 f5f5 f6f5 f6f5 f1f5 f1f1 f1f1     ................
d0086f3c:	f1f1 f5f5 f5f5 f4f4 f4f4 f5f3 f2f4 f5f2     ................
d0086f4c:	f2f5 f5f5 f5f2 f2f1 f2f1 f2f2 f3f4 f4f4     ................
d0086f5c:	f2f5 f5f3 f5f5 f2f2 f3f2 f4f4 f4f4 f4f4     ................
d0086f6c:	f4f4 f4f4 f3f3 f2f3 f2f3 f2f3 f2f3 f2f2     ................
d0086f7c:	f2f5 f2f3 f2f1 f2f1 f2f2 f2f2 f5f2 0000     ................
	...
d0086fa0:	f4f4 f4f4 f2f2 f2f2 f2f1 f2f2 f2f2 f2f2     ................
d0086fb0:	f1f2 f2f1 f3f2 f7f5 f5f6 f3f4 f3f2 f5f5     ................
d0086fc0:	f3f5 f5f2 f4f4 f200 f5f1 f7f5 f3f5 f3f3     ................
d0086fd0:	f4f3 f5f5 f5f5 f5f5 f6f5 f5f5 f1f5 f1f1     ................
d0086fe0:	f7f1 f5f5 f5f5 f4f5 f4f4 f2f3 f4f4 f2f2     ................
d0086ff0:	f2f2 f4f1 f2f5 f1f5 f2f2 f2f2 f2f2 f2f2     ................
d0087000:	f5f5 f2f5 f2f2 f2f2 f4f3 f4f4 f4f4 f4f4     ................
d0087010:	f4f4 f4f4 f3f3 f2f3 f2f3 f2f3 f2f3 f2f3     ................
d0087020:	f1f3 f2f5 f3f2 f2f2 f2f3 f2f2 f5f2 0000     ................
	...
d0087040:	0000 f300 f4f4 f4f4 f4f4 f2f1 f2f1 f2f2     ................
d0087050:	f2f2 f3f2 f4f5 f2f2 f2f2 f2f2 f2f2 f2f2     ................
d0087060:	f2f2 f3f2 f3f3 f2f2 0000 0000 0000 f7f4     ................
d0087070:	f5f6 f3f3 f4f3 f4f4 f4f4 f5f5 f5f5 f5f5     ................
d0087080:	f5f5 f1f1 f7f1 f5f5 f5f5 f4f5 f4f4 f3f4     ................
d0087090:	f3f2 f3f5 f3f4 f4f3 f5f2 f2f2 f2f2 f2f2     ................
d00870a0:	f5f5 f2f5 f5f5 f2f5 f2f2 f3f2 f4f4 f4f4     ................
d00870b0:	f4f4 f4f4 f4f4 f3f4 f3f3 f3f3 f3f2 f2f3     ................
d00870c0:	f1f3 f2f2 f2f3 f1f3 f4f3 f2f3 f2f3 f2f2     ................
d00870d0:	f5f2 0000 0000 0000 0000 0000 0000 0000     ................
d00870e0:	0000 0000 0000 f3f3 f4f4 f4f4 f4f4 f1f1     ................
d00870f0:	f2f1 f2f1 f2f2 f5f3 f3f4 f2f2 f5f5 f5f5     ................
d0087100:	f5f5 f5f5 f5f5 f5f5 f2f2 f5f2 00f5 0000     ................
d0087110:	0000 f500 f5f7 f3f4 f3f2 f4f4 f5f4 f5f5     ................
d0087120:	f5f5 f5f5 f5f5 f5f2 f5f5 f5f5 f5f5 f4f4     ................
d0087130:	f4f4 f3f4 f2f2 f4f2 f3f4 f5f3 f2f1 f2f5     ................
d0087140:	f2f2 f5f2 f5f5 f2f2 f2f2 f2f2 f2f2 f4f2     ................
d0087150:	f4f4 f4f4 f4f4 f4f4 f4f4 f3f3 f3f3 f3f3     ................
d0087160:	f3f2 f2f3 f1f2 f1f2 f1f2 f2f3 f2f3 f2f2     ................
d0087170:	f2f5 f2f2 f5f3 0000 0000 0000 0000 0000     ................
	...
d0087188:	f300 f3f3 f4f4 f4f4 f4f4 f1f1 f2f1 f2f1     ................
d0087198:	f2f1 f5f4 f2f3 f5f2 00f5 0000 0000 0000     ................
d00871a8:	0000 0000 f500 f5f5 0000 0000 0000 0000     ................
d00871b8:	f7f5 f3f5 f2f2 f3f3 f4f4 f4f4 f5f5 f5f5     ................
d00871c8:	f5f5 f2f5 f5f5 f5f5 f5f5 f4f4 f4f4 f3f4     ................
d00871d8:	f2f2 f2f3 f4f4 f3f3 f2f5 f2f2 f2f2 f2f2     ................
d00871e8:	f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f5f5 f4f4     ................
d00871f8:	f4f4 f4f4 f4f3 f3f3 f3f4 f3f3 f3f3 f2f3     ................
d0087208:	f2f2 f2f1 f1f2 f1f2 f2f3 f2f3 f1f3 f2f4     ................
d0087218:	f4f5 0000 0000 0000 0000 0000 0000 0000     ................
d0087228:	0000 0000 f300 f3f3 f4f4 f4f4 f4f4 f1f4     ................
d0087238:	f1f1 f2f1 f3f1 f3f4 f2f2 f5f5 0000 0000     ................
	...
d008725c:	f200 f3f2 f3f3 f2f3 f3f2 f4f4 f4f4 f4f4     ................
d008726c:	f5f5 f5f5 f5f5 f5f5 f4f5 f4f4 f4f3 f3f4     ................
d008727c:	f2f3 f3f2 f4f2 f3f5 f2f5 f2f2 f2f2 f2f2     ................
d008728c:	f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f5f2 f5f4     ................
d008729c:	f4f4 f4f3 f4f3 f3f3 f3f4 f4f3 f3f3 f2f3     ................
d00872ac:	f2f2 f2f1 f1f2 f2f2 f2f1 f2f3 f2f3 f4f2     ................
d00872bc:	00f4 0000 0000 0000 0000 0000 0000 0000     ................
d00872cc:	0000 0000 f300 f3f3 f4f4 f4f4 f4f4 f4f4     ................
d00872dc:	f1f1 f2f1 f4f1 f2f4 f5f2 00f5 0000 0000     ................
	...
d0087300:	0000 f3f4 f5f5 f5f5 f2f3 f3f3 f4f4 f4f4     ................
d0087310:	f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f3f3     ................
d0087320:	f2f3 f2f2 f2f3 f3f3 f3f5 f2f2 f2f2 f2f2     ................
d0087330:	f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f4f3 f4f5     ................
d0087340:	f4f3 f4f5 f4f3 f4f3 f3f4 f4f3 f3f3 f2f2     ................
d0087350:	f2f2 f2f1 f1f2 f2f2 f3f1 f2f3 f2f3 f5f3     ................
d0087360:	00f4 0000 0000 0000 0000 0000 0000 0000     ................
d0087370:	0000 0000 f3f3 f4f3 f4f4 f4f4 f4f4 f4f4     ................
d0087380:	f1f4 f1f1 f4f1 f2f3 f5f2 0000 0000 0000     ................
	...
d00873a4:	0000 f3f2 f7f5 f5f7 f5f5 f2f3 f2f2 f3f2     ................
d00873b4:	f4f3 f4f4 f4f4 f4f4 f4f4 f4f4 f3f4 f3f3     ................
d00873c4:	f2f3 f2f2 f3f3 f5f2 f3f5 f2f3 f2f2 f2f2     ................
d00873d4:	f2f2 f2f2 f2f2 f2f2 f3f2 f4f3 f4f4 f4f4     ................
d00873e4:	f4f3 f4f3 f4f5 f4f3 f3f3 f4f3 f2f2 f2f2     ................
d00873f4:	f2f2 f2f2 f1f2 f2f2 f3f2 f2f3 f2f3 f5f4     ................
	...
d0087418:	f3f3 f4f2 f5f3 f4f4 f4f4 f4f4 f4f4 f1f1     ................
d0087428:	f3f1 f2f3 f5f5 0000 0000 0000 0000 0000     ................
	...
d0087448:	0000 f200 f5f3 f7f7 f7f7 f3f5 f2f2 f3f2     ................
d0087458:	f3f3 f4f4 f4f4 f4f4 f4f4 f3f3 f3f3 f3f3     ................
d0087468:	f2f2 f2f2 f4f3 f2f2 f5f5 f2f3 f2f2 f2f2     ................
d0087478:	f2f2 f2f2 f2f2 f2f2 f4f2 f4f4 f4f4 f4f4     ................
d0087488:	f4f4 f4f4 f5f2 f4f4 f4f3 f2f3 f2f2 f2f2     ................
d0087498:	f2f2 f2f2 f2f2 f3f2 f3f2 f2f3 f3f3 f4f5     ................
	...
d00874bc:	f3f3 f2f2 f5f5 f4f5 f4f4 f4f4 f4f4 f1f4     ................
d00874cc:	f3f1 f2f3 00f5 0000 0000 0000 0000 0000     ................
	...
d00874f0:	f3f2 f7f5 f7f7 f5f7 f2f3 f2f2 f3f2 f3f3     ................
d0087500:	f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f2f2 f3f2     ................
d0087510:	f5f3 f2f3 f5f2 f2f9 f2f2 f2f2 f2f2 f2f2     ................
d0087520:	f2f2 f2f2 f4f4 f4f4 f4f4 f4f4 f3f4 f3f4     ................
d0087530:	f4f3 f5f3 f4f4 f4f3 f2f2 f2f2 f2f2 f2f2     ................
d0087540:	f2f2 f3f2 f3f3 f3f3 f5f3 00f5 0000 0000     ................
	...
d0087560:	f3f3 f2f2 f5f5 f5f5 f4f4 f4f4 f4f4 f3f3     ................
d0087570:	f1f2 f1f2 00f5 0000 0000 0000 0000 0000     ................
	...
d0087594:	f3f2 f3f3 f7f3 f7f7 f3f5 f2f2 f2f2 f2f2     ................
d00875a4:	f3f2 f3f3 f3f3 f3f3 f3f3 f2f2 f2f2 f3f2     ................
d00875b4:	f6f4 f3f3 f2f2 f1f9 f2f2 f3f2 f2f3 f2f2     ................
d00875c4:	f2f2 f2f2 f4f3 f4f4 f4f4 f4f4 f4f4 f3f4     ................
d00875d4:	f4f4 f4f3 f5f3 f4f3 f4f3 f2f2 f2f2 f2f2     ................
d00875e4:	f2f2 f3f3 f3f3 f3f3 f5f5 0000 0000 0000     ................
	...
d0087604:	f2f3 f2f2 f5f5 f5f5 f4f5 f3f4 f3f3 f4f3     ................
d0087614:	f5f5 f1f4 00f5 0000 0000 0000 0000 0000     ................
	...
d0087638:	f4f4 f2f4 f2f3 f9f5 f3f9 f2f2 f2f2 f2f7     ................
d0087648:	f2f6 f2f2 f2f2 f2f2 f2f2 f2f2 f3f2 f5f4     ................
d0087658:	f6f6 f5f5 f3f3 f3f4 f3f2 f4f3 f4f4 f2f4     ................
d0087668:	f2f4 f4f3 f4f4 f4f4 f4f4 f4f5 f4f4 f3f4     ................
d0087678:	f4f4 f4f3 f3f4 f5f3 f4f3 f4f3 f2f2 f2f2     ................
d0087688:	f4f2 f3f3 f3f3 f5f3 00f5 0000 0000 0000     ................
	...
d00876a8:	f2f3 f3f2 f5f3 f5f5 f5f5 f3f5 f4f3 f5f5     ................
d00876b8:	f4f5 f4f4 f3f4 00f3 0000 0000 0000 0000     ................
	...
d00876d8:	0000 f100 f5f3 f2f2 f2f5 f5f3 f5f5 f2f5     ................
d00876e8:	f2f1 f3f2 f2f2 f2f2 f2f2 f2f2 f3f3 f4f4     ................
d00876f8:	f5f5 f5f5 f3f5 f4f4 f5f2 f4f4 f4f4 f4f4     ................
d0087708:	f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f5     ................
d0087718:	f4f4 f4f4 f2f3 f4f2 f3f4 f2f4 f4f5 f4f3     ................
d0087728:	f4f3 f4f2 f4f3 f3f3 f3f3 f5f5 0000 0000     ................
	...
d008774c:	f2f3 f3f2 f5f3 f5f5 f5f5 f6f5 f5f4 f4f5     ................
d008775c:	f4f4 f4f4 f4f4 f4f4 f4f4 f3f4 00f3 0000     ................
	...
d008777c:	0000 f1f1 f6f6 f1f2 f5f3 f2f3 f5f5 f5f5     ................
d008778c:	f1f5 f2f1 f3f3 f4f4 f4f4 f4f4 f5f5 f6f5     ................
d008779c:	f6f6 f4f5 f4f4 f4f4 f4f4 f5f2 f4f4 f4f4     ................
d00877ac:	f4f4 f4f4 f4f4 f4f4 f4f4 f5f4 f4f4 f5f4     ................
d00877bc:	f5f4 f2f4 f2f2 f2f2 f3f2 f4f4 f2f3 f4f5     ................
d00877cc:	f4f3 f4f3 f4f3 f3f3 f5f3 00f5 0000 0000     ................
	...
d00877f0:	f2f3 f3f2 f4f3 f5f5 f6f5 f6f5 f8f5 f4f6     ................
d0087800:	f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d0087810:	f3f4 00f1 0000 0000 0000 0000 0000 0000     ................
d0087820:	0000 f4f2 f5f5 f2f2 f4f4 f5f5 f5f5 f5f5     ................
d0087830:	f2f2 f5f5 f1f1 f2f2 f2f2 f3f2 f3f3 f4f4     ................
d0087840:	f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f5f2 f4f5     ................
d0087850:	f4f4 f4f4 f5f4 f5f4 f5f4 f5f4 f5f4 f4f4     ................
d0087860:	f5f4 f2f2 f2f2 f2f2 f2f2 f4f4 f3f3 f3f3     ................
d0087870:	f4f5 f4f3 f3f3 f3f3 f5f5 0000 0000 0000     ................
	...
d0087894:	f400 f3f3 f4f3 f5f3 f6f5 f6f5 f8f5 f7f6     ................
d00878a4:	f5f7 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d00878b4:	f2f4 f5f5 f4f4 f3f3 f3f3 0000 0000 0000     ................
d00878c4:	f4f3 f4f4 f5f4 f2f2 f3f3 f3f3 f4f3 f4f3     ................
d00878d4:	f4f3 f4f3 f4f4 f4f4 f5f2 f4f4 f4f4 f4f4     ................
d00878e4:	f4f4 f4f4 f4f4 f4f4 f4f4 f5f4 f4f5 f6f4     ................
d00878f4:	f5f5 f4f4 f5f5 f5f4 f5f4 f4f4 f4f4 f3f3     ................
d0087904:	f2f3 f3f2 f2f2 f2f2 f2f2 f2f2 f4f3 f3f4     ................
d0087914:	f3f2 f3f4 f3f3 f5f3 00f5 0000 0000 0000     ................
	...
d0087938:	0000 f3f5 f4f3 f4f3 f6f4 f6f5 f6f5 f6f8     ................
d0087948:	f6f7 f7f7 f4f5 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d0087958:	f5f2 f5f5 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d0087968:	f4f4 f4f4 f2f4 f4f5 f4f4 f4f4 f4f4 f4f4     ................
d0087978:	f4f4 f4f4 f4f4 f4f4 f5f2 f4f4 f4f4 f4f4     ................
d0087988:	f4f4 f4f4 f4f4 f4f4 f5f4 f5f5 f5f5 f3f5     ................
d0087998:	f5f6 f4f5 f4f5 f5f4 f5f4 f4f4 f2f3 f2f3     ................
d00879a8:	f2f3 f3f2 f2f2 f2f2 f2f2 f2f2 f2f2 f3f4     ................
d00879b8:	f3f4 f3f2 f3f3 f5f5 0000 0000 0000 0000     ................
	...
d00879dc:	0000 f6f3 f4f3 f4f3 f5f4 f6f5 f5f5 f8f5     ................
d00879ec:	f7f6 f7f6 f7f7 f5f8 f5f5 f4f4 f4f4 f2f4     ................
d00879fc:	f5f5 f4f5 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d0087a0c:	f4f4 f4f4 f4f2 f4f5 f4f4 f4f4 f4f4 f4f4     ................
d0087a1c:	f4f4 f4f4 f4f4 f4f4 f2f4 f4f5 f4f4 f4f4     ................
d0087a2c:	f4f4 f4f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d0087a3c:	f5f4 f5f5 f4f5 f5f4 f4f4 f2f5 f2f3 f2f3     ................
d0087a4c:	f2f3 f3f2 f2f2 f2f3 f2f2 f2f2 f4f3 f3f4     ................
d0087a5c:	f4f4 f2f3 f5f2 00f5 0000 0000 0000 0000     ................
	...
d0087a80:	0000 f300 f5f6 f4f4 f5f4 f6f5 f6f5 f8f5     ................
d0087a90:	f7f6 f5f5 f5f5 f5f5 f8f8 f8f8 f6f7 f5f5     ................
d0087aa0:	f5f5 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d0087ab0:	f4f4 f2f4 f5f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d0087ac0:	f4f4 f4f4 f4f4 f4f4 f3f4 f5f6 f5f5 f5f5     ................
d0087ad0:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d0087ae0:	f5f5 f6f4 f5f5 f5f5 f3f2 f2f3 f2f3 f2f3     ................
d0087af0:	f2f3 f2f3 f2f2 f2f3 f2f2 f4f3 f4f4 f4f4     ................
d0087b00:	f4f4 f5f3 f2f5 0000 0000 0000 0000 0000     ................
	...
d0087b28:	f5f5 f5f7 f5f4 f6f5 f6f5 f8f5 f7f6 f5f5     ................
d0087b38:	f7f8 f8f8 f6f6 f8f8 f8f8 f8f6 f8f9 f7f7     ................
d0087b48:	f6f7 f5f5 f4f5 f4f4 f4f4 f4f4 f4f4 f2f2     ................
d0087b58:	f6f5 f4f4 f4f4 f4f4 f5f4 f5f5 f5f5 f5f5     ................
d0087b68:	f6f6 f6f5 f5f5 f7f4 f5f6 f5f5 f5f5 f5f5     ................
d0087b78:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f3f5     ................
d0087b88:	f5f6 f5f5 f3f4 f2f3 f2f3 f2f3 f2f3 f2f3     ................
d0087b98:	f2f3 f2f3 f4f3 f4f4 f4f4 f4f4 f4f4 f5f5     ................
d0087ba8:	f2f5 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0087bcc:	f500 f7f4 f6f6 f5f5 f8f6 f8f8 f7f6 f5f5     ................
d0087bdc:	f8f8 f9f8 f5f8 f6f9 f6f8 f6f9 f8f9 f8f8     ................
d0087bec:	f7f7 f7f7 f7f7 f7f7 f7f7 f7f7 f6f7 f2f2     ................
d0087bfc:	f7f8 f7f6 f6f6 f7f6 f6f6 f6f6 f6f6 f5f6     ................
d0087c0c:	f6f6 f6f5 f6f5 f5f5 f5f8 f5f5 f5f5 f5f5     ................
d0087c1c:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f3 f5f5     ................
d0087c2c:	f5f4 f5f5 f5f5 f2f5 f3f3 f2f3 f2f3 f2f3     ................
d0087c3c:	f2f3 f4f3 f4f4 f4f4 f4f4 f4f4 f5f5 f5f5     ................
d0087c4c:	00f4 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0087c70:	0000 f2f5 f7f5 f6f6 f6f7 f6f6 f7f7 f5f6     ................
d0087c80:	f9f8 f9f7 f5f9 f8f5 f9f8 f8f9 f8f8 f8f8     ................
d0087c90:	f8f7 f8f7 f7f7 f7f7 f7f7 f7f7 f6f7 f2f7     ................
d0087ca0:	f7f5 f7f6 f7f6 f7f6 f6f6 f6f6 f6f6 f6f6     ................
d0087cb0:	f6f6 f6f5 f6f5 f5f5 f7f5 f6f5 f5f5 f5f5     ................
d0087cc0:	f5f5 f5f5 f5f5 f5f5 f3f4 f3f4 f4f4 f5f5     ................
d0087cd0:	f4f5 f5f5 f5f5 f4f5 f3f3 f2f2 f2f3 f4f3     ................
d0087ce0:	f4f3 f4f4 f4f4 f4f4 f5f4 f5f5 f5f5 00f4     ................
	...
d0087d18:	f4f5 f5f5 f5f7 f7f6 f8f5 f7f8 f9f8 f3f5     ................
d0087d28:	f2f5 f3f2 f5f3 f9fb f8f8 f8f8 f8f7 f8f7     ................
d0087d38:	f7f7 f7f8 f7f7 f7f7 f7f7 f7f7 f9f2 f7f6     ................
d0087d48:	f7f6 f7f6 f6f6 f6f6 f6f6 f6f6 f6f6 f6f5     ................
d0087d58:	f6f5 f6f5 f5f5 f6f6 f5f5 f5f5 f5f5 f5f5     ................
d0087d68:	f4f4 f3f3 f3f4 f3f4 f3f4 f5f3 f5f5 f4f5     ................
d0087d78:	f5f6 f5f5 f3f5 f3f2 f4f3 f4f5 f4f4 f4f4     ................
d0087d88:	f5f4 f5f5 f5f5 f4f5 0000 0000 0000 0000     ................
	...
d0087dbc:	0000 f3f5 f5f3 f5f4 f5f8 f6f6 f5f3 f2f5     ................
d0087dcc:	f2f5 f2f2 f2f2 f7f5 f8f8 f6f6 f6f7 f6f5     ................
d0087ddc:	f7f7 f7f8 f7f7 f7f7 f7f7 f7f7 f2f5 f7f7     ................
d0087dec:	f7f6 f7f6 f6f6 f6f7 f6f6 f6f6 f6f6 f6f5     ................
d0087dfc:	f6f6 f6f5 f5f5 f6f6 f4f6 f4f4 f4f4 f4f4     ................
d0087e0c:	f4f4 f4f3 f3f4 f3f4 f3f4 f3f4 f5f4 f5f5     ................
d0087e1c:	f6f3 f5f5 f5f5 f5f4 f4f5 f4f5 f4f4 f5f5     ................
d0087e2c:	f5f5 f5f5 00f4 f200 0000 0000 0000 0000     ................
	...
d0087e60:	0000 f200 f4f2 f5f4 f4f5 f6f5 f5f6 f2f2     ................
d0087e70:	f2f2 f2f2 f2f2 f3f2 f9f5 f6f9 f6f5 f6f5     ................
d0087e80:	f5f5 f5f6 f5f5 f5f5 f5f5 f7f5 f5f6 f7f2     ................
d0087e90:	f5f6 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d0087ea0:	f4f5 f6f4 f6f5 f7f5 f6f6 f4f5 f4f4 f4f4     ................
d0087eb0:	f4f4 f4f3 f3f4 f3f4 f3f4 f3f4 f3f4 f5f5     ................
d0087ec0:	f3f5 f5f6 f5f5 f5f5 f4f4 f5f4 f5f5 f5f5     ................
d0087ed0:	f4f5 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0087f08:	f200 f2f2 f5f4 f2f3 f4f2 f5f6 f2f2 f2f2     ................
d0087f18:	f200 f2f2 f5f2 f9f5 f5f9 f6f6 f6f5 f5f6     ................
d0087f28:	f6f5 f5f5 f5f5 f5f5 f5f7 f2f8 f7f6 f5f5     ................
d0087f38:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f4f5 f5f5     ................
d0087f48:	f6f5 f5f5 f6f7 f4f6 f4f4 f4f4 f4f4 f4f4     ................
d0087f58:	f3f4 f3f4 f3f4 f3f4 f5f4 f5f5 f5f5 f5f2     ................
d0087f68:	f4f4 f4f4 f5f5 f5f5 f5f5 f2f4 0000 0000     ................
	...
d0087fac:	0000 f200 f4f2 f2f5 f2f2 f2f2 f5f4 f2f2     ................
d0087fbc:	00f2 f200 f2f2 f2f5 f9f9 f8f9 f6f5 f5f5     ................
d0087fcc:	f6f5 f5f5 f5f5 f5f5 f7f7 f8f5 f7f7 f5f6     ................
d0087fdc:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f4f5 f5f5     ................
d0087fec:	f6f4 f6f5 f7f5 f5f6 f5f4 f4f4 f4f4 f4f4     ................
d0087ffc:	f3f4 f4f4 f5f4 f5f5 f5f5 f5f5 f5f5 f2f5     ................
d008800c:	f5f5 f5f5 f5f5 f4f5 0000 0000 0000 0000     ................
	...
d0088054:	f200 f4f2 f2f2 f2f2 f2f2 f4f2 00f2 f400     ................
d0088064:	f4f4 f2f5 f8f8 f9f8 f6f9 f6f5 f6f5 f5f5     ................
d0088074:	f5f5 f5f5 f7f5 f8f5 f7f7 f5f6 f5f5 f5f5     ................
d0088084:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f6f4 f6f5     ................
d0088094:	f5f5 f6f7 f5f5 f4f4 f4f4 f5f4 f5f5 f5f5     ................
d00880a4:	f5f5 f5f5 f5f5 f5f5 f5f5 f6f6 f5f2 f5f5     ................
	...
d00880f8:	0000 f200 f4f4 f2f2 f2f2 f2f2 00f2 0000     ................
d0088108:	0000 f400 f5f5 f9f5 f8f9 f6f8 f6f5 f5f5     ................
d0088118:	f5f6 f5f5 f7f5 f5f7 f7f9 f7f6 f5f5 f5f5     ................
d0088128:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f6f6     ................
d0088138:	f6f6 f8f3 f6f5 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d0088148:	f5f5 f5f5 f6f5 f6f9 f5f6 f5f5 f3f3 f2f3     ................
d0088158:	f2f2 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00881a0:	f2f2 f2f2 f200 f2f2 00f2 f2f2 0000 0000     ................
d00881b0:	f200 f4f4 f9f5 f9f9 f9f9 f9f9 f8f9 f8f9     ................
d00881c0:	f8f8 f6f8 f8f9 f8f8 f8f7 f8f7 f7f7 f7f7     ................
d00881d0:	f6f7 f6f7 f6f7 f6f7 f6f6 f6f6 f6f6 f2f6     ................
d00881e0:	f5f7 f5f5 f5f5 f5f5 f5f5 f9f9 f5f9 f5f5     ................
d00881f0:	f5f5 f5f5 f5f5 f5f5 f4f4 f3f3 f2f2 00f2     ................
	...
d0088244:	0000 f200 0000 f200 f2f2 0000 0000 0000     ................
d0088254:	0000 0000 f200 f5f5 f8f9 f8f9 f8f9 f8f9     ................
d0088264:	f8f8 f8f8 f9f5 f8f8 f8f7 f8f7 f7f7 f6f6     ................
d0088274:	f6f7 f6f7 f6f7 f6f7 f6f6 f5f6 f5f6 f9f6     ................
d0088284:	f6f2 f6f5 f6f6 f6f6 f9f6 f9f9 f5f5 f5f5     ................
d0088294:	f6f6 f6f6 f5f6 f5f5 f4f5 f3f4 f2f3 f2f2     ................
d00882a4:	f2f2 f2f2 00f2 0000 0000 0000 0000 0000     ................
	...
d00882ec:	0000 f200 f2f2 0000 0000 0000 0000 0000     ................
d00882fc:	0000 f2f2 f9f5 f9f9 f6f6 f6f6 f6f6 f5f6     ................
d008830c:	f2f5 f5f5 f6f6 f6f7 f6f6 f6f6 f6f6 f6f6     ................
d008831c:	f6f6 f6f6 f6f6 f8f8 f8f8 f8f8 f2f8 f5f2     ................
d008832c:	f5f4 f6f5 f7f6 f6f6 f6f6 f6f6 f6f6 f6f6     ................
d008833c:	f5f5 f5f5 f5f5 f4f4 f3f3 f2f2 f2f2 f3f2     ................
d008834c:	f2f3 00f2 0000 0000 0000 0000 0000 0000     ................
	...
d0088394:	f200 0000 0000 0000 0000 0000 0000 0000     ................
d00883a4:	0000 f5f5 f9f9 f9f9 f9f9 f9f9 f9f9 f9f5     ................
d00883b4:	f9f9 f9f9 f9f9 f9f9 f9f9 f9f9 f9f9 f9f9     ................
d00883c4:	f9f9 f5f9 f3f5 f2f3 f2f2 f2f2 f4f2 f5f5     ................
d00883d4:	f6f5 f7f6 f8f7 f7f8 f7f7 f6f6 f5f6 f5f5     ................
d00883e4:	f5f5 f4f4 f2f3 f2f2 f2f2 f2f2 f3f3 f2f3     ................
	...
d0088470:	f2f2 f4f4 f2f2 f4f2 f5f5 f6f5 f6f6 f6f6     ................
d0088480:	f6f6 f6f6 f5f5 f5f5 f5f5 f3f4 f2f2 fef2     ................
d0088490:	f2fe f2f2 f3f2 f3f3 00f2 0000 0000 0000     ................
	...
d0088514:	0000 f400 f2f2 f2f2 f3f2 f4f4 f5f5 f5f5     ................
d0088524:	f5f5 f5f5 f5f5 f5f5 f3f3 f2f2 f2f2 f8f2     ................
d0088534:	f2f2 f2f2 f3f2 f3f3 f2f3 0000 0000 0000     ................
	...
d00885bc:	f200 f3f2 f2f2 f2f2 f3f2 f3f3 f3f3 f3f3     ................
d00885cc:	f3f3 f2f3 f2f2 f2f2 f4f2 f2f2 f2f2 f2f2     ................
d00885dc:	f3f2 f3f3 f2f3 00f2 0000 0000 0000 0000     ................
	...
d0088660:	0000 f3f2 f2f2 f9f2 f2f2 f2f2 f2f2 f2f2     ................
d0088670:	f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2     ................
d0088680:	f3f2 f3f3 f3f3 f2f3 0000 0000 0000 0000     ................
	...
d0088704:	0000 f200 f3f2 f2f2 f2f2 f9f2 f2f2 f4f2     ................
d0088714:	f2f2 f2f9 f2f6 f2f2 f2f2 f2f2 f2f2 f3f2     ................
d0088724:	f3f3 f3f3 f3f4 f3f3 00f2 0000 0000 0000     ................
	...
d00887ac:	f5f4 f3f4 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2     ................
d00887bc:	f2f2 f2f2 f2f2 f2f2 f3f2 f3f3 f3f3 f3f4     ................
d00887cc:	f3f3 f2f3 00f5 0000 0000 0000 0000 0000     ................
	...
d0088850:	f300 f5f5 f6f6 f4f5 f2f3 f2f2 f2f2 f2f2     ................
d0088860:	f2f2 f2f2 f2f2 f3f2 f3f3 f4f3 f4f5 f3f4     ................
d0088870:	f3f3 f2f3 00f2 0000 0000 0000 0000 0000     ................
	...
d00888f4:	0000 f4f3 f6f5 f7f6 f7f7 f5f5 f4f4 f6f4     ................
d0088904:	f5f5 f5f5 f5f5 f5f5 f5f5 f4f5 f4f4 f3f3     ................
d0088914:	f3f3 f2f2 f3f5 0000 0000 0000 0000 0000     ................
	...
d0088998:	0000 f500 f4f5 f5f5 f6f6 f5f7 f4f5 f4f4     ................
d00889a8:	f5f5 f5f5 f5f5 f5f5 f4f5 f3f4 f3f3 f3f3     ................
d00889b8:	f2f2 f3f2 f3f5 00f2 0000 0000 0000 0000     ................
	...
d0088a40:	f300 f4f5 f4f4 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d0088a50:	f5f5 f4f5 f3f4 f3f3 f3f3 f2f2 f3f2 f3f5     ................
d0088a60:	f3f5 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0088ae8:	f3f5 f3f5 f5f5 f5f5 f5f5 f5f5 f4f5 f4f4     ................
d0088af8:	f3f3 f2f2 f2f2 f2f2 f3f5 f3f5 f3f5 00f5     ................
	...
d0088b8c:	0000 f3f5 f3f5 f3f5 f3f5 f3f5 f3f8 f3f5     ................
d0088b9c:	f3f5 f3f5 f3f5 f3f5 f3f5 f3f5 f3f5 00f5     ................
	...
d0088c34:	f300 f3f5 f3f5 f3f5 f3f5 f5f5 f5f5 f4f5     ................
d0088c44:	f4f5 f3f5 f3f5 f3f5 f3f5 f5f5 0000 0000     ................
	...
d0088cd8:	0000 f300 f3f5 f3f5 f3f5 f4f5 f5f5 f5f5     ................
d0088ce8:	f4f5 f3f5 f3f5 f3f5 f3f5 f5f5 0000 0000     ................
	...
d0088d80:	0000 f3f5 f3f5 f3f5 f4f5 f5f5 f5f5 f4f5     ................
d0088d90:	f3f5 f3f5 f3f5 f3f5 00f5 0000 0000 0000     ................
	...
d0088e28:	f300 f3f5 f4f5 f5f5 f5f5 f4f5 f4f5 f3f5     ................
d0088e38:	f3f5 f3f5 00f5 0000 0000 0000 0000 0000     ................
	...
d0088ecc:	0000 f300 f3f5 f4f5 f5f5 f5f5 f4f5 f3f5     ................
d0088edc:	f3f5 f3f5 00f5 0000 0000 0000 0000 0000     ................
	...
d0088f74:	f2f2 f3f5 f4f5 f5f5 f4f5 f3f5 f3f5 f5f5     ................
d0088f84:	f2f5 0000 0000 0000 0000 0000 0000 0000     ................
	...
d008901c:	f300 f4f5 f5f5 f4f5 f5f5 f5f5 00f5 0000     ................
	...
d00890c0:	0000 f200 f5f5 f5f5 f9f5 f2f5 f2f5 0000     ................
	...
d0089168:	0000 f300 f2f5 f2f5 f5f9 00f2 0000 0000     ................
	...
d0089210:	f500 f5f2 00f2 f500 0000 0000 0000 0000     ................
	...
d00892b4:	0000 f2f5 f5f2 0000 00f5 0000 0000 0000     ................
	...
d0089358:	0000 f300 f2f5 00f5 f900 0000 0000 0000     ................
	...
d0089400:	f500 f5f2 0000 0000 0000 0000 0000 0000     ................
	...
d00894a4:	0000 f2f9 00f5 0000 0000 0000 0000 0000     ................
	...
d008954c:	f1f2 00f5 0000 0000 0000 0000 0000 0000     ................
	...
d00895f0:	f100 f5f1 0000 0000 0000 0000 0000 0000     ................
	...
d0089694:	0000 00f1 00f5 0000 0000 0000 0000 0000     ................
	...
d008973c:	f500 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00897e0:	0000 f5f2 0000 0000 0000 0000 0000 0000     ................
	...
d0089888:	00f9 0000 0000 0000 0000 0000 0000 0000     ................
	...

d00898d0 <px_bullet>:
d00898d0:	0000 0000 e2e2 fdeb e2eb 0000 e200 ebeb     ................
d00898e0:	fdfd fdfd e2fd ebe2 fdfd fdfd fdfd fdfd     ................
d00898f0:	00eb e200 ebeb fdfd fdfd e2fd 0000 0000     ................
d0089900:	e2e2 fdeb e2eb 0000                         ........

d0089908 <px_enemy>:
	...
d0089914:	f2f2 f2f2 f2f2 00f2 0000 0000 0000 0000     ................
	...
d0089930:	f200 f3f3 e1e1 e1e1 e1e1 f3e1 f2f3 0000     ................
	...
d008994c:	0000 e500 e1e5 e1e1 e1e1 e1e1 e1e1 e1e1     ................
d008995c:	e1e1 00e5 0000 0000 0000 0000 0000 0000     ................
d008996c:	0000 e5e5 e1e6 e4e4 e4e4 e4e4 e1e4 e1e1     ................
d008997c:	e1e1 e5e6 00e5 0000 0000 0000 0000 0000     ................
d008998c:	e500 e7e5 e4e7 e4e4 e4e4 e4e4 e4e4 e1e4     ................
d008999c:	e1e1 e7e7 e5e5 0000 0000 0000 0000 0000     ................
d00899ac:	e5e5 e7e7 e3e8 e3e3 e3e3 e4e4 e4e4 e4e4     ................
d00899bc:	e1e4 e7e8 e5e7 00e5 0000 0000 0000 e500     ................
d00899cc:	e7e5 e8e7 e3e8 e3e3 e3e3 e3e3 e4e4 e4e4     ................
d00899dc:	e4e4 e8e8 e7e7 e5e5 0000 0000 0000 e5e5     ................
d00899ec:	e7e7 e8e8 e3fe e3e3 e3e3 e3e3 e4e3 e4e4     ................
d00899fc:	e4e4 e8fe e7e8 e5e7 00e5 0000 0000 e6e5     ................
d0089a0c:	e8e7 fee8 e2fe e2e2 e3e3 e3e3 e3e3 e4e4     ................
d0089a1c:	e4e4 fefe e8e8 e6e7 00e5 0000 f200 e4e1     ................
d0089a2c:	e3e3 e2e3 e2e2 e2e2 e1e4 f3f3 f3f3 e4e1     ................
d0089a3c:	e4e4 e4e4 e1e1 e1e1 f2e1 0000 f300 e4e1     ................
d0089a4c:	e3e3 e2e3 e2e2 f3e2 f3f3 f3f3 f3f3 f3f3     ................
d0089a5c:	e4e4 e4e4 e1e1 e1e1 f3e1 0000 f200 e3e4     ................
d0089a6c:	e3e3 e2e2 e2e2 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d0089a7c:	e4f3 e4e4 e1e4 e1e1 f2e1 0000 e1f2 e3e4     ................
d0089a8c:	e3e3 e2e2 e4e2 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d0089a9c:	e1f3 e4e4 e1e4 e1e1 e1e1 00f2 e1f2 e3e4     ................
d0089aac:	e3e3 e2e2 e1e2 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d0089abc:	f3f3 e4e4 e1e4 e1e1 e1e1 00f2 e1f2 e3e4     ................
d0089acc:	e3e3 e2e3 f3e2 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d0089adc:	f3f3 e4e4 e1e4 e1e1 e1e1 00f2 e1f2 e3e4     ................
d0089aec:	e3e3 e2e3 f3e2 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d0089afc:	f3f3 e4e3 e1e4 e1e1 e1e1 00f2 e1f2 e4e4     ................
d0089b0c:	e3e3 e3e3 f3e3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d0089b1c:	f3f3 e4e3 e1e4 e1e1 e1e1 00f2 e1f2 e4e4     ................
d0089b2c:	e3e3 e3e3 e1e3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d0089b3c:	e1f3 e4e3 e1e4 e1e1 e1e1 00f2 e1f2 e4e1     ................
d0089b4c:	e3e4 e3e3 e4e3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d0089b5c:	e3f3 e4e3 e1e1 e1e1 e1e1 00f2 f200 e4e1     ................
d0089b6c:	e4e4 e3e3 e3e3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d0089b7c:	f8e1 e4e4 e1e1 e1e1 f2e1 0000 f300 e1e1     ................
d0089b8c:	e4e4 e3e4 e3e3 f3e3 f3f3 f3f3 f3f3 e1f3     ................
d0089b9c:	e4f9 e1e4 e1e1 e1e1 f3e1 0000 f200 e1e1     ................
d0089bac:	e4e4 e4e4 e3e4 e3e3 e1e4 f3f3 e1f3 f8e3     ................
d0089bbc:	e4e4 e1e4 e1e1 e1e1 f2e1 0000 0000 e6e5     ................
d0089bcc:	e8e7 fee8 e4fe e4e4 e4e4 e3e3 e2e3 e4e3     ................
d0089bdc:	e4e4 fefe e8e8 e6e7 00e5 0000 0000 e5e5     ................
d0089bec:	e7e7 e8e8 e4fe e4e4 e4e4 e4e4 e4e4 e4e4     ................
d0089bfc:	e1e4 e8fe e7e8 e5e7 00e5 0000 0000 e500     ................
d0089c0c:	e7e5 e8e7 e4e8 e4e4 e4e4 e4e4 e4e4 e1e4     ................
d0089c1c:	e1e1 e8e8 e7e7 e5e5 0000 0000 0000 0000     ................
d0089c2c:	e5e5 e7e7 e1e8 e4e4 e4e4 e4e4 e1e4 e1e1     ................
d0089c3c:	e1e1 e7e8 e5e7 00e5 0000 0000 0000 0000     ................
d0089c4c:	e500 e7e5 e1e7 e1e1 e1e1 e1e1 e1e1 e1e1     ................
d0089c5c:	e1e1 e7e7 e5e5 0000 0000 0000 0000 0000     ................
d0089c6c:	0000 e5e5 e1e6 e1e1 e1e1 e1e1 e1e1 e1e1     ................
d0089c7c:	e1e1 e5e6 00e5 0000 0000 0000 0000 0000     ................
d0089c8c:	0000 e500 e1e5 e1e1 e1e1 e1e1 e1e1 e1e1     ................
d0089c9c:	e1e1 e5e5 0000 0000 0000 0000 0000 0000     ................
d0089cac:	0000 0000 f200 f2f3 e1e1 e1e1 e1e1 f2e1     ................
d0089cbc:	f2f3 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0089cd4:	f2f2 f2f2 f2f2 00f2 0000 0000 0000 0000     ................
	...

d0089d08 <px_ship>:
d0089d08:	0000 0000 f2f2 0000 0000 0000 0000 0000     ................
	...
d0089d28:	0000 f8f3 f2f8 0000 0000 0000 0000 0000     ................
	...
d0089d48:	f300 f8f8 f2f8 0000 0000 0000 0000 0000     ................
	...
d0089d68:	f6f2 f6f6 f2f5 0000 0000 0000 0000 0000     ................
	...
d0089d84:	0000 f200 f5f5 f5f5 f2f2 f2f2 f2f2 f2f2     ................
d0089d94:	f2f2 f2f2 f2f2 0000 0000 0000 0000 0000     ................
d0089da4:	0000 f2f2 f5f5 f7f7 fbf5 f7fb e1f2 f7e0     ................
d0089db4:	f7f7 f6f6 f2f5 00f2 0000 0000 0000 f2f2     ................
d0089dc4:	f3f2 f7f2 f9f9 f5f7 fbfb f2f7 e0e1 f9e0     ................
d0089dd4:	fbfb fbfb fbf2 f2f2 0000 0000 f200 f7f7     ................
d0089de4:	f2f5 f5f5 f5f5 fbf5 f7fb e1f2 e0e1 e0e0     ................
d0089df4:	e0e0 fbf2 e1f2 f2e1 0000 0000 fbf2 f7fb     ................
d0089e04:	f7f5 fbfb f5f9 fbf9 f5f9 e1f3 e1e1 e1e1     ................
d0089e14:	fbf2 e1f2 fbe0 f2e1 0000 f200 f7f7 f3f6     ................
d0089e24:	f9f7 f9fb f7f5 fbf9 f5f7 f2f2 f2f2 fbf2     ................
d0089e34:	f2f2 e1f3 fbe0 f2e1 0000 f7f2 f6f7 f7f2     ................
d0089e44:	f9f9 f9f9 f7f5 f9f9 f9f9 f9f9 f9f9 f3f5     ................
d0089e54:	f2f2 e1f3 e0e0 f2f2 f200 f2f2 f2f3 f9f5     ................
d0089e64:	f9f9 f9f9 f5f5 f4f4 f5f4 f5f5 f8f8 f7f8     ................
d0089e74:	f2f5 e1f3 e1e1 00f2 0000 f200 f2f2 f2f2     ................
d0089e84:	f2f2 f2f2 f5f3 f3f5 f2f2 f3f3 f7f5 f8f8     ................
d0089e94:	f3f5 f2f2 f2f2 0000 0000 0000 f5f2 f5f5     ................
d0089ea4:	f5f5 f5f4 f5f5 f3f5 f2f3 f2f2 f5f2 f8f8     ................
d0089eb4:	f9f9 f8f9 f2f6 0000 0000 f200 f6f6 f6f6     ................
d0089ec4:	f2f6 f7f5 f5f7 f5f5 f4f5 f4f3 f2f5 f2f2     ................
d0089ed4:	f2f2 f2f2 00f2 0000 0000 f7f2 f7f7 f2f7     ................
d0089ee4:	f200 f6f2 f7f7 f2f2 f2f2 f2f2 00f2 0000     ................
	...
d0089efc:	0000 f2f2 f2f2 0000 0000 f2f2 00f2 0000     ................
	...

d0089f18 <topscroll_bar_bg1>:
d0089f18:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 02a0 0202     ................
d0089f28:	0202 a002 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089f38:	9f9f 029f 0202 0202 a002 9f9f 9f9f 9f9f     ................
d0089f48:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089f58:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 029f     ................
d0089f68:	0202 0202 0202 0202 0202 9f02 9f9f 9f9f     ................
d0089f78:	9f9f 9f9f a09f 0202 0202 a302 a3a3 9f9f     ................
d0089f88:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089f98:	02a0 a002 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089fa8:	9f9f 0202 0202 0202 0202 0202 a002 9f9f     ................
d0089fb8:	9f9f 9f9f 9f9f 9f9f a09f 0202 0202 0202     ................
d0089fc8:	0202 0202 0202 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089fd8:	029f 0202 0202 0202 9f9f 9f9f 9f9f 9f9f     ................
d0089fe8:	9f9f 9f9f 9f9f 9f9f 02a0 a002 9f9f 02a0     ................
d0089ff8:	9f02 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a008:	0202 0202 0202 9f02 9f9f 9f9f 9f9f 9f9f     ................
d008a018:	9f9f a09f 0202 0202 0202 0202 0202 9f9f     ................
d008a028:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a038:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a048:	9f9f 029f a0a0 0202 0202 9f9f 9f9f 9f9f     ................
d008a058:	9f9f 9f9f 9f9f 9f9f a09f 0202 0202 0202     ................
d008a068:	9f02 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a078:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a088:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a098:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a0a8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a0b8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a0c8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a0d8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a0e8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a0f8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a108:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a118:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a128:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a138:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a148:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a158:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a168:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a178:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a188:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a198:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a1a8:	a09f a0a0 a0a0 a0a0 9f9f 9f9f 9f9f 9f9f     ................
d008a1b8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a1c8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a1d8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a1e8:	9f9f b79f 0202 0202 02a0 b7b7 a0a0 9fa0     ................
d008a1f8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 8f8f     ................
d008a208:	8f8f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a218:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a228:	9f9f 9f9f 9f9f b7b7 0202 02a0 0202 b702     ................
d008a238:	a0b7 9f9f 9f9f 9f9f 9f9f 8f9f 8f8f 8f8f     ................
d008a248:	8f8f 8f8f 8f8f 8f8f a0a0 a0a0 a0a0 9fa0     ................
d008a258:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d008a268:	8f8f 8f8f 8f8f 8f8f 8f8f 0909 a009 a0a0     ................
d008a278:	a0a0 9fa0 9f9f 9f9f 8f9f 8f8f 8f8f 8f8f     ................
d008a288:	8f8f 8f8f 8f8f 8f8f 8f8f 02b7 0202 a002     ................
d008a298:	b702 a0b7 a0a0 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a2a8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a2b8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a2c8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f b78f 02b7     ................
d008a2d8:	a002 0202 0202 b7b7 8fa0 8f8f 8f8f 8f8f     ................
d008a2e8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a2f8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a308:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a318:	8f8f 8f8f a0a0 a0a0 a0a0 8f8f 8f8f 0606     ................
d008a328:	0606 0606 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a338:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a348:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a358:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a368:	068f 0605 0606 0606 8f06 8f8f 8f8f 8f8f     ................
d008a378:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a388:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a398:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a3a8:	8f8f 8f8f 0506 0606 0606 0606 0606 8f8f     ................
d008a3b8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a3c8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a3d8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a3e8:	8f8f 8f8f 8f8f 068f 0605 0606 0606 0606     ................
d008a3f8:	0606 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a408:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a418:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a428:	8f8f 8f8f 8f8f 8f8f 8f8f 0506 0606 0606     ................
d008a438:	0606 0606 6006 8f06 8f8f 8f8f 8f8f 8f8f     .....`..........
d008a448:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a458:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a468:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 068f 0605     ................
d008a478:	0606 0606 0606 0606 0606 0660 8f8f 8f8f     ..........`.....
d008a488:	8f8f 0505 0505 0505 0505 0505 8f8f 8f8f     ................
d008a498:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a4a8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a4b8:	0606 0605 0606 0606 0606 0606 0606 0660     ..............`.
d008a4c8:	8f06 8f8f 0505 0501 0505 0505 0505 0505     ................
d008a4d8:	0505 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a4e8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a4f8:	8f8f 068f 0506 0606 0606 0606 0606 0606     ................
d008a508:	0606 6006 8f06 0505 0101 0505 0505 0505     ...`............
d008a518:	0505 0505 0605 8f05 8f8f 8f8f 8f8f 8f8f     ................
d008a528:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a538:	8f8f 8f8f 8f8f 0606 0605 0606 0606 0606     ................
d008a548:	0606 0606 0606 6006 0505 0105 0505 0505     .......`........
d008a558:	0505 0505 0505 0505 0505 0506 8f8f 8f8f     ................
d008a568:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a578:	8f8f 8f8f 8f8f 8f8f 068f 0506 0606 0606     ................
d008a588:	0606 0606 0606 0606 0606 0505 0105 0501     ................
d008a598:	0505 0505 0505 0505 0505 0505 0505 0605     ................
d008a5a8:	0505 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a5b8:	8f8f 8f8f 8f8f 8f8f 0d8f 8f8f 0606 0605     ................
d008a5c8:	0606 0606 0606 0606 0606 0606 0505 050d     ................
d008a5d8:	0501 0505 0505 0505 0505 0505 0505 0505     ................
d008a5e8:	0505 0505 0506 8f05 8f8f 8f8f 8f8f 8f8f     ................
d008a5f8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f0d 0d8f 068f     ................
d008a608:	0606 0606 0606 0606 0606 060d 0606 0506     ................
d008a618:	0505 050d 0d05 0505 0505 0505 050d 050d     ................
d008a628:	0505 0505 0505 0505 0605 0505 8f05 0d8f     ................
d008a638:	8f8f 8f8f 8f0d 8f0d 8f8f 8f8f 0d0d 0d0d     ................
d008a648:	0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d     ................
d008a658:	0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d     ................
d008a668:	0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d     ................
d008a678:	0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d     ................
d008a688:	0b0a 0d0a 0a0d 0a0a 0b0a 0b0a 0a0a 0a0a     ................
d008a698:	0a0a 0a0a 0a0a 680a 0a68 0b0b 0a0a 0a0a     .......hh.......
d008a6a8:	0b0a 0a0a 0a0a 680a 0a0a 0a0a 680a 6868     .......h.....hhh
d008a6b8:	0b0a 0b0b 0b0a 0a0a 0b0a 0a0a 0b0b 0a0b     ................
d008a6c8:	0b0b 0a0a 0a0a 0b0b 0a0a 0b0a 0a0b 0a0a     ................
d008a6d8:	0a0a 0a0a 0a0a 0a0b 0a0a 0a0a 0a0a 0a0a     ................
d008a6e8:	0a0a 0b0a 0a0a 0a0a 0a0a 0a0a 0a0a 0b0b     ................
d008a6f8:	0a0a 0a0a 0a0b 0a0a 0b0a 0a0a 0a0a 0a0a     ................
d008a708:	0a0a 0a0a 0a0a 0b0b 0b0a 0a0a 0b0a 0a0a     ................
d008a718:	0a0b 0a68 0a0a 0b0a 0b0b 0a0a 6868 0a0a     ..h.........hh..
d008a728:	0a0a 680a 0a68 0a0b 6868 0a68 0a0a 680a     ...hh...hhh....h
d008a738:	6868 0a0a 0a0a 0b0a 0a0a 0a0a 0a0a 0b0b     hh..............
d008a748:	0a0a 0a0a 0a0a 0a0a 0a0a 0b0a 0a0a 0a0a     ................
d008a758:	680b 6868 0a0a 0a0a 0a0a 6868 0a0a 0a0a     .hhh......hh....
d008a768:	0a0a 0b0a 0a0b 0a0a 0a0a 0a0a 0a0a 0a0a     ................
d008a778:	0a0a 0a0a 0a0a 0a0a 0a0a 0a0a 0a0a 0a0a     ................
d008a788:	0a0a 0a0a 0a0a 680a 6868 0b0b 0a0a 0a0a     .......hhh......
d008a798:	4353 524f 2045 3025 6c36 2075 2020 4853     SCORE %06lu   SH
d008a7a8:	5049 4c20 534f 2054 7525 0000 7559 7070     IP LOST %u..Yupp
d008a7b8:	5420 6f6f 6874 6361 6568 6420 7365 746b      Toothache deskt
d008a7c8:	706f 4520 646e 6465 3a20 0029               op Ended :).

d008a7d4 <gradient_cols.9281>:
d008a7d4:	1010 1110 1211 1312 1413 1514 1615 1716     ................
d008a7e4:	1717 0000                                   ....

d008a7e8 <txtTitle>:
d008a7e8:	6874 7369 6920 2073 2061 6574 7473 7320     this is a test s
d008a7f8:	7263 6c6f 796c 202c 6f73 656d 6874 6e69     crolly, somethin
d008a808:	2067 6f74 7420 7365 2074 6f66 2072 6f6e     g to test for no
d008a818:	2c77 6220 7475 7720 6c69 206c 616d 656b     w, but will make
d008a828:	6920 2074 2061 696c 7474 656c 6220 7465      it a little bet
d008a838:	6574 2072 6966 6c6c 2079 6574 7478 2079     ter filly texty 
d008a848:	7473 6675 0066 0000                         stuff...

d008a850 <wave.9341>:
d008a850:	0300 0906 0f0c 1512 1917 1d1b 1f1e 2020     ..............  
d008a860:	2020 1e1f 1b1d 1719 1215 0c0f 0609 0003       ..............
d008a870:	fafd f4f7 eef1 e9eb e5e7 e2e3 e0e1 e0e0     ................
d008a880:	e1e0 e3e2 e7e5 ebe9 f1ee f7f4 fdfa 0300     ................

d008a890 <_global_impure_ptr>:
d008a890:	a968 d008                                   h...

d008a894 <__sf_fake_stderr>:
	...

d008a8b4 <__sf_fake_stdin>:
	...

d008a8d4 <__sf_fake_stdout>:
	...
d008a8f4:	2d23 2b30 0020 6c68 004c 6665 4567 4746     #-0+ .hlL.efgEFG
d008a904:	3000 3231 3433 3635 3837 4139 4342 4544     .0123456789ABCDE
d008a914:	0046 3130 3332 3534 3736 3938 6261 6463     F.0123456789abcd
d008a924:	6665                                         ef.

Disassembly of section .init:

d008a928 <_init>:
d008a928:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008a92a:	bf00      	nop

Disassembly of section .fini:

d008a92c <_fini>:
d008a92c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008a92e:	bf00      	nop
