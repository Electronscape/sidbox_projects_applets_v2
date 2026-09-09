
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
d008001e:	f003 fbf7 	bl	d0083810 <setbuf>
d0080022:	6833      	ldr	r3, [r6, #0]
d0080024:	2100      	movs	r1, #0
d0080026:	68d8      	ldr	r0, [r3, #12]
d0080028:	f003 fbf2 	bl	d0083810 <setbuf>
d008002c:	4629      	mov	r1, r5
d008002e:	4620      	mov	r0, r4
d0080030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0080034:	f000 bb90 	b.w	d0080758 <main>
d0080038:	d008a6c4 	.word	0xd008a6c4

d008003c <gfx_createBitmap>:
d008003c:	b510      	push	{r4, lr}
d008003e:	4604      	mov	r4, r0
d0080040:	fb01 f002 	mul.w	r0, r1, r2
d0080044:	b292      	uxth	r2, r2
d0080046:	80a1      	strh	r1, [r4, #4]
d0080048:	60e0      	str	r0, [r4, #12]
d008004a:	80e2      	strh	r2, [r4, #6]
d008004c:	8122      	strh	r2, [r4, #8]
d008004e:	f003 fb25 	bl	d008369c <malloc>
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
d0080064:	d008cb58 	.word	0xd008cb58
d0080068:	d0600000 	.word	0xd0600000
d008006c:	d008aae8 	.word	0xd008aae8

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
d00800b8:	f003 faea 	bl	d0083690 <__errno>
d00800bc:	2209      	movs	r2, #9
d00800be:	4603      	mov	r3, r0
d00800c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800c4:	601a      	str	r2, [r3, #0]
d00800c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00800c8:	d008a744 	.word	0xd008a744
d00800cc:	2001f000 	.word	0x2001f000

d00800d0 <_read>:
d00800d0:	b508      	push	{r3, lr}
d00800d2:	f003 fadd 	bl	d0083690 <__errno>
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
d008011e:	f003 fab7 	bl	d0083690 <__errno>
d0080122:	220c      	movs	r2, #12
d0080124:	4603      	mov	r3, r0
d0080126:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008012a:	601a      	str	r2, [r3, #0]
d008012c:	bd10      	pop	{r4, pc}
d008012e:	bf00      	nop
d0080130:	d008a740 	.word	0xd008a740
d0080134:	d008cb58 	.word	0xd008cb58
d0080138:	d0600000 	.word	0xd0600000

d008013c <draw_star_speed_range>:
d008013c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080140:	4c30      	ldr	r4, [pc, #192]	; (d0080204 <draw_star_speed_range+0xc8>)
d0080142:	2501      	movs	r5, #1
d0080144:	4606      	mov	r6, r0
d0080146:	460f      	mov	r7, r1
d0080148:	f8df 80bc 	ldr.w	r8, [pc, #188]	; d0080208 <draw_star_speed_range+0xcc>
d008014c:	f8df a0bc 	ldr.w	sl, [pc, #188]	; d008020c <draw_star_speed_range+0xd0>
d0080150:	7923      	ldrb	r3, [r4, #4]
d0080152:	42b3      	cmp	r3, r6
d0080154:	d34e      	bcc.n	d00801f4 <draw_star_speed_range+0xb8>
d0080156:	42bb      	cmp	r3, r7
d0080158:	d84c      	bhi.n	d00801f4 <draw_star_speed_range+0xb8>
d008015a:	f8df 90b4 	ldr.w	r9, [pc, #180]	; d0080210 <draw_star_speed_range+0xd4>
d008015e:	7960      	ldrb	r0, [r4, #5]
d0080160:	f899 300c 	ldrb.w	r3, [r9, #12]
d0080164:	f899 100d 	ldrb.w	r1, [r9, #13]
d0080168:	f899 c00e 	ldrb.w	ip, [r9, #14]
d008016c:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0080170:	f899 100f 	ldrb.w	r1, [r9, #15]
d0080174:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0080178:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d008017c:	685b      	ldr	r3, [r3, #4]
d008017e:	68db      	ldr	r3, [r3, #12]
d0080180:	4798      	blx	r3
d0080182:	f894 b004 	ldrb.w	fp, [r4, #4]
d0080186:	f1bb 0f08 	cmp.w	fp, #8
d008018a:	f200 82b2 	bhi.w	d00806f2 <draw_star_speed_range+0x5b6>
d008018e:	f1bb 0f06 	cmp.w	fp, #6
d0080192:	f200 82b1 	bhi.w	d00806f8 <draw_star_speed_range+0x5bc>
d0080196:	f1bb 0f04 	cmp.w	fp, #4
d008019a:	d83b      	bhi.n	d0080214 <draw_star_speed_range+0xd8>
d008019c:	f1bb 0f02 	cmp.w	fp, #2
d00801a0:	f200 82b7 	bhi.w	d0080712 <draw_star_speed_range+0x5d6>
d00801a4:	d038      	beq.n	d0080218 <draw_star_speed_range+0xdc>
d00801a6:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d00801aa:	f9b4 0000 	ldrsh.w	r0, [r4]
d00801ae:	f1a1 0c26 	sub.w	ip, r1, #38	; 0x26
d00801b2:	b283      	uxth	r3, r0
d00801b4:	fa1f fc8c 	uxth.w	ip, ip
d00801b8:	f5bc 7f8d 	cmp.w	ip, #282	; 0x11a
d00801bc:	f080 819f 	bcs.w	d00804fe <draw_star_speed_range+0x3c2>
d00801c0:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00801c4:	f080 819b 	bcs.w	d00804fe <draw_star_speed_range+0x3c2>
d00801c8:	f899 300c 	ldrb.w	r3, [r9, #12]
d00801cc:	f899 e00d 	ldrb.w	lr, [r9, #13]
d00801d0:	f899 c00e 	ldrb.w	ip, [r9, #14]
d00801d4:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d00801d8:	f899 e00f 	ldrb.w	lr, [r9, #15]
d00801dc:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d00801e0:	ea43 630e 	orr.w	r3, r3, lr, lsl #24
d00801e4:	e185      	b.n	d00804f2 <draw_star_speed_range+0x3b6>
d00801e6:	285b      	cmp	r0, #91	; 0x5b
d00801e8:	f240 82ad 	bls.w	d0080746 <draw_star_speed_range+0x60a>
d00801ec:	2209      	movs	r2, #9
d00801ee:	2302      	movs	r3, #2
d00801f0:	7122      	strb	r2, [r4, #4]
d00801f2:	7163      	strb	r3, [r4, #5]
d00801f4:	2d60      	cmp	r5, #96	; 0x60
d00801f6:	f000 82a4 	beq.w	d0080742 <draw_star_speed_range+0x606>
d00801fa:	3501      	adds	r5, #1
d00801fc:	3406      	adds	r4, #6
d00801fe:	b2ed      	uxtb	r5, r5
d0080200:	e7a6      	b.n	d0080150 <draw_star_speed_range+0x14>
d0080202:	bf00      	nop
d0080204:	d008a8a0 	.word	0xd008a8a0
d0080208:	41c64e6d 	.word	0x41c64e6d
d008020c:	11a3019b 	.word	0x11a3019b
d0080210:	2001f000 	.word	0x2001f000
d0080214:	f04f 0b05 	mov.w	fp, #5
d0080218:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d008021c:	f9b4 0000 	ldrsh.w	r0, [r4]
d0080220:	f1a1 0326 	sub.w	r3, r1, #38	; 0x26
d0080224:	b29b      	uxth	r3, r3
d0080226:	f5b3 7f8d 	cmp.w	r3, #282	; 0x11a
d008022a:	d219      	bcs.n	d0080260 <draw_star_speed_range+0x124>
d008022c:	fa1f fc80 	uxth.w	ip, r0
d0080230:	f5bc 7ff0 	cmp.w	ip, #480	; 0x1e0
d0080234:	d216      	bcs.n	d0080264 <draw_star_speed_range+0x128>
d0080236:	f899 300c 	ldrb.w	r3, [r9, #12]
d008023a:	f899 e00d 	ldrb.w	lr, [r9, #13]
d008023e:	f899 c00e 	ldrb.w	ip, [r9, #14]
d0080242:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d0080246:	f899 e00f 	ldrb.w	lr, [r9, #15]
d008024a:	ea43 4c0c 	orr.w	ip, r3, ip, lsl #16
d008024e:	ea4c 630e 	orr.w	r3, ip, lr, lsl #24
d0080252:	685b      	ldr	r3, [r3, #4]
d0080254:	689b      	ldr	r3, [r3, #8]
d0080256:	4798      	blx	r3
d0080258:	f9b4 0000 	ldrsh.w	r0, [r4]
d008025c:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d0080260:	fa1f fc80 	uxth.w	ip, r0
d0080264:	f1a1 0e26 	sub.w	lr, r1, #38	; 0x26
d0080268:	f10c 0001 	add.w	r0, ip, #1
d008026c:	4663      	mov	r3, ip
d008026e:	fa1f fe8e 	uxth.w	lr, lr
d0080272:	b280      	uxth	r0, r0
d0080274:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d0080278:	d219      	bcs.n	d00802ae <draw_star_speed_range+0x172>
d008027a:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d008027e:	d216      	bcs.n	d00802ae <draw_star_speed_range+0x172>
d0080280:	f899 300c 	ldrb.w	r3, [r9, #12]
d0080284:	b200      	sxth	r0, r0
d0080286:	f899 e00d 	ldrb.w	lr, [r9, #13]
d008028a:	f899 c00e 	ldrb.w	ip, [r9, #14]
d008028e:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d0080292:	f899 e00f 	ldrb.w	lr, [r9, #15]
d0080296:	ea43 4c0c 	orr.w	ip, r3, ip, lsl #16
d008029a:	ea4c 630e 	orr.w	r3, ip, lr, lsl #24
d008029e:	685b      	ldr	r3, [r3, #4]
d00802a0:	689b      	ldr	r3, [r3, #8]
d00802a2:	4798      	blx	r3
d00802a4:	f9b4 0000 	ldrsh.w	r0, [r4]
d00802a8:	fa1f fc80 	uxth.w	ip, r0
d00802ac:	4663      	mov	r3, ip
d00802ae:	f1bb 0f02 	cmp.w	fp, #2
d00802b2:	f000 8122 	beq.w	d00804fa <draw_star_speed_range+0x3be>
d00802b6:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d00802ba:	f10c 0002 	add.w	r0, ip, #2
d00802be:	4663      	mov	r3, ip
d00802c0:	f1a1 0e26 	sub.w	lr, r1, #38	; 0x26
d00802c4:	b280      	uxth	r0, r0
d00802c6:	fa1f fe8e 	uxth.w	lr, lr
d00802ca:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d00802ce:	d219      	bcs.n	d0080304 <draw_star_speed_range+0x1c8>
d00802d0:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d00802d4:	d216      	bcs.n	d0080304 <draw_star_speed_range+0x1c8>
d00802d6:	f899 300c 	ldrb.w	r3, [r9, #12]
d00802da:	b200      	sxth	r0, r0
d00802dc:	f899 e00d 	ldrb.w	lr, [r9, #13]
d00802e0:	f899 c00e 	ldrb.w	ip, [r9, #14]
d00802e4:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d00802e8:	f899 e00f 	ldrb.w	lr, [r9, #15]
d00802ec:	ea43 4c0c 	orr.w	ip, r3, ip, lsl #16
d00802f0:	ea4c 630e 	orr.w	r3, ip, lr, lsl #24
d00802f4:	685b      	ldr	r3, [r3, #4]
d00802f6:	689b      	ldr	r3, [r3, #8]
d00802f8:	4798      	blx	r3
d00802fa:	f9b4 0000 	ldrsh.w	r0, [r4]
d00802fe:	fa1f fc80 	uxth.w	ip, r0
d0080302:	4663      	mov	r3, ip
d0080304:	f1bb 0f03 	cmp.w	fp, #3
d0080308:	f000 80f7 	beq.w	d00804fa <draw_star_speed_range+0x3be>
d008030c:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d0080310:	f10c 0003 	add.w	r0, ip, #3
d0080314:	4663      	mov	r3, ip
d0080316:	f1a1 0e26 	sub.w	lr, r1, #38	; 0x26
d008031a:	b280      	uxth	r0, r0
d008031c:	fa1f fe8e 	uxth.w	lr, lr
d0080320:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d0080324:	d219      	bcs.n	d008035a <draw_star_speed_range+0x21e>
d0080326:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d008032a:	d216      	bcs.n	d008035a <draw_star_speed_range+0x21e>
d008032c:	f899 300c 	ldrb.w	r3, [r9, #12]
d0080330:	b200      	sxth	r0, r0
d0080332:	f899 e00d 	ldrb.w	lr, [r9, #13]
d0080336:	f899 c00e 	ldrb.w	ip, [r9, #14]
d008033a:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d008033e:	f899 e00f 	ldrb.w	lr, [r9, #15]
d0080342:	ea43 4c0c 	orr.w	ip, r3, ip, lsl #16
d0080346:	ea4c 630e 	orr.w	r3, ip, lr, lsl #24
d008034a:	685b      	ldr	r3, [r3, #4]
d008034c:	689b      	ldr	r3, [r3, #8]
d008034e:	4798      	blx	r3
d0080350:	f9b4 0000 	ldrsh.w	r0, [r4]
d0080354:	fa1f fc80 	uxth.w	ip, r0
d0080358:	4663      	mov	r3, ip
d008035a:	f1bb 0f04 	cmp.w	fp, #4
d008035e:	f000 80cc 	beq.w	d00804fa <draw_star_speed_range+0x3be>
d0080362:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d0080366:	f10c 0004 	add.w	r0, ip, #4
d008036a:	4663      	mov	r3, ip
d008036c:	f1a1 0e26 	sub.w	lr, r1, #38	; 0x26
d0080370:	b280      	uxth	r0, r0
d0080372:	fa1f fe8e 	uxth.w	lr, lr
d0080376:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d008037a:	d219      	bcs.n	d00803b0 <draw_star_speed_range+0x274>
d008037c:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0080380:	d216      	bcs.n	d00803b0 <draw_star_speed_range+0x274>
d0080382:	f899 300c 	ldrb.w	r3, [r9, #12]
d0080386:	b200      	sxth	r0, r0
d0080388:	f899 e00d 	ldrb.w	lr, [r9, #13]
d008038c:	f899 c00e 	ldrb.w	ip, [r9, #14]
d0080390:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d0080394:	f899 e00f 	ldrb.w	lr, [r9, #15]
d0080398:	ea43 4c0c 	orr.w	ip, r3, ip, lsl #16
d008039c:	ea4c 630e 	orr.w	r3, ip, lr, lsl #24
d00803a0:	685b      	ldr	r3, [r3, #4]
d00803a2:	689b      	ldr	r3, [r3, #8]
d00803a4:	4798      	blx	r3
d00803a6:	f9b4 0000 	ldrsh.w	r0, [r4]
d00803aa:	fa1f fc80 	uxth.w	ip, r0
d00803ae:	4663      	mov	r3, ip
d00803b0:	f1bb 0f05 	cmp.w	fp, #5
d00803b4:	f000 80a1 	beq.w	d00804fa <draw_star_speed_range+0x3be>
d00803b8:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d00803bc:	f10c 0005 	add.w	r0, ip, #5
d00803c0:	4663      	mov	r3, ip
d00803c2:	f1a1 0e26 	sub.w	lr, r1, #38	; 0x26
d00803c6:	b280      	uxth	r0, r0
d00803c8:	fa1f fe8e 	uxth.w	lr, lr
d00803cc:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d00803d0:	d219      	bcs.n	d0080406 <draw_star_speed_range+0x2ca>
d00803d2:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d00803d6:	d216      	bcs.n	d0080406 <draw_star_speed_range+0x2ca>
d00803d8:	f899 300c 	ldrb.w	r3, [r9, #12]
d00803dc:	b200      	sxth	r0, r0
d00803de:	f899 e00d 	ldrb.w	lr, [r9, #13]
d00803e2:	f899 c00e 	ldrb.w	ip, [r9, #14]
d00803e6:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d00803ea:	f899 e00f 	ldrb.w	lr, [r9, #15]
d00803ee:	ea43 4c0c 	orr.w	ip, r3, ip, lsl #16
d00803f2:	ea4c 630e 	orr.w	r3, ip, lr, lsl #24
d00803f6:	685b      	ldr	r3, [r3, #4]
d00803f8:	689b      	ldr	r3, [r3, #8]
d00803fa:	4798      	blx	r3
d00803fc:	f9b4 0000 	ldrsh.w	r0, [r4]
d0080400:	fa1f fc80 	uxth.w	ip, r0
d0080404:	4663      	mov	r3, ip
d0080406:	f1bb 0f06 	cmp.w	fp, #6
d008040a:	d076      	beq.n	d00804fa <draw_star_speed_range+0x3be>
d008040c:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d0080410:	f10c 0006 	add.w	r0, ip, #6
d0080414:	4663      	mov	r3, ip
d0080416:	f1a1 0e26 	sub.w	lr, r1, #38	; 0x26
d008041a:	b280      	uxth	r0, r0
d008041c:	fa1f fe8e 	uxth.w	lr, lr
d0080420:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d0080424:	d219      	bcs.n	d008045a <draw_star_speed_range+0x31e>
d0080426:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d008042a:	d216      	bcs.n	d008045a <draw_star_speed_range+0x31e>
d008042c:	f899 300c 	ldrb.w	r3, [r9, #12]
d0080430:	b200      	sxth	r0, r0
d0080432:	f899 e00d 	ldrb.w	lr, [r9, #13]
d0080436:	f899 c00e 	ldrb.w	ip, [r9, #14]
d008043a:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d008043e:	f899 e00f 	ldrb.w	lr, [r9, #15]
d0080442:	ea43 4c0c 	orr.w	ip, r3, ip, lsl #16
d0080446:	ea4c 630e 	orr.w	r3, ip, lr, lsl #24
d008044a:	685b      	ldr	r3, [r3, #4]
d008044c:	689b      	ldr	r3, [r3, #8]
d008044e:	4798      	blx	r3
d0080450:	f9b4 0000 	ldrsh.w	r0, [r4]
d0080454:	fa1f fc80 	uxth.w	ip, r0
d0080458:	4663      	mov	r3, ip
d008045a:	f1bb 0f07 	cmp.w	fp, #7
d008045e:	d04c      	beq.n	d00804fa <draw_star_speed_range+0x3be>
d0080460:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d0080464:	f10c 0007 	add.w	r0, ip, #7
d0080468:	4663      	mov	r3, ip
d008046a:	f1a1 0e26 	sub.w	lr, r1, #38	; 0x26
d008046e:	b280      	uxth	r0, r0
d0080470:	fa1f fe8e 	uxth.w	lr, lr
d0080474:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d0080478:	d219      	bcs.n	d00804ae <draw_star_speed_range+0x372>
d008047a:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d008047e:	d216      	bcs.n	d00804ae <draw_star_speed_range+0x372>
d0080480:	f899 300c 	ldrb.w	r3, [r9, #12]
d0080484:	b200      	sxth	r0, r0
d0080486:	f899 e00d 	ldrb.w	lr, [r9, #13]
d008048a:	f899 c00e 	ldrb.w	ip, [r9, #14]
d008048e:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d0080492:	f899 e00f 	ldrb.w	lr, [r9, #15]
d0080496:	ea43 4c0c 	orr.w	ip, r3, ip, lsl #16
d008049a:	ea4c 630e 	orr.w	r3, ip, lr, lsl #24
d008049e:	685b      	ldr	r3, [r3, #4]
d00804a0:	689b      	ldr	r3, [r3, #8]
d00804a2:	4798      	blx	r3
d00804a4:	f9b4 0000 	ldrsh.w	r0, [r4]
d00804a8:	fa1f fc80 	uxth.w	ip, r0
d00804ac:	4663      	mov	r3, ip
d00804ae:	f1bb 0f09 	cmp.w	fp, #9
d00804b2:	d122      	bne.n	d00804fa <draw_star_speed_range+0x3be>
d00804b4:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d00804b8:	4663      	mov	r3, ip
d00804ba:	f1a1 0c26 	sub.w	ip, r1, #38	; 0x26
d00804be:	f103 0008 	add.w	r0, r3, #8
d00804c2:	fa1f fc8c 	uxth.w	ip, ip
d00804c6:	b280      	uxth	r0, r0
d00804c8:	f5bc 7f8d 	cmp.w	ip, #282	; 0x11a
d00804cc:	d215      	bcs.n	d00804fa <draw_star_speed_range+0x3be>
d00804ce:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d00804d2:	d212      	bcs.n	d00804fa <draw_star_speed_range+0x3be>
d00804d4:	f899 300c 	ldrb.w	r3, [r9, #12]
d00804d8:	b200      	sxth	r0, r0
d00804da:	f899 c00d 	ldrb.w	ip, [r9, #13]
d00804de:	f899 b00e 	ldrb.w	fp, [r9, #14]
d00804e2:	ea43 2e0c 	orr.w	lr, r3, ip, lsl #8
d00804e6:	f899 300f 	ldrb.w	r3, [r9, #15]
d00804ea:	ea4e 4c0b 	orr.w	ip, lr, fp, lsl #16
d00804ee:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d00804f2:	685b      	ldr	r3, [r3, #4]
d00804f4:	689b      	ldr	r3, [r3, #8]
d00804f6:	4798      	blx	r3
d00804f8:	8823      	ldrh	r3, [r4, #0]
d00804fa:	f894 b004 	ldrb.w	fp, [r4, #4]
d00804fe:	f1bb 0f06 	cmp.w	fp, #6
d0080502:	f240 80e6 	bls.w	d00806d2 <draw_star_speed_range+0x596>
d0080506:	1c58      	adds	r0, r3, #1
d0080508:	8861      	ldrh	r1, [r4, #2]
d008050a:	f240 1bdf 	movw	fp, #479	; 0x1df
d008050e:	fa1f fc80 	uxth.w	ip, r0
d0080512:	f1a1 0e27 	sub.w	lr, r1, #39	; 0x27
d0080516:	b200      	sxth	r0, r0
d0080518:	45dc      	cmp	ip, fp
d008051a:	bf94      	ite	ls
d008051c:	2200      	movls	r2, #0
d008051e:	2201      	movhi	r2, #1
d0080520:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d0080524:	d21e      	bcs.n	d0080564 <draw_star_speed_range+0x428>
d0080526:	b9ea      	cbnz	r2, d0080564 <draw_star_speed_range+0x428>
d0080528:	f899 300c 	ldrb.w	r3, [r9, #12]
d008052c:	3901      	subs	r1, #1
d008052e:	f899 e00d 	ldrb.w	lr, [r9, #13]
d0080532:	f899 c00e 	ldrb.w	ip, [r9, #14]
d0080536:	b209      	sxth	r1, r1
d0080538:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d008053c:	f899 e00f 	ldrb.w	lr, [r9, #15]
d0080540:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0080544:	ea43 6c0e 	orr.w	ip, r3, lr, lsl #24
d0080548:	f8dc 3004 	ldr.w	r3, [ip, #4]
d008054c:	689b      	ldr	r3, [r3, #8]
d008054e:	4798      	blx	r3
d0080550:	8823      	ldrh	r3, [r4, #0]
d0080552:	8861      	ldrh	r1, [r4, #2]
d0080554:	1c58      	adds	r0, r3, #1
d0080556:	fa1f fc80 	uxth.w	ip, r0
d008055a:	b200      	sxth	r0, r0
d008055c:	45dc      	cmp	ip, fp
d008055e:	bf94      	ite	ls
d0080560:	2200      	movls	r2, #0
d0080562:	2201      	movhi	r2, #1
d0080564:	f1a1 0e25 	sub.w	lr, r1, #37	; 0x25
d0080568:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d008056c:	f080 80bb 	bcs.w	d00806e6 <draw_star_speed_range+0x5aa>
d0080570:	2a00      	cmp	r2, #0
d0080572:	f040 80b8 	bne.w	d00806e6 <draw_star_speed_range+0x5aa>
d0080576:	f899 300c 	ldrb.w	r3, [r9, #12]
d008057a:	3101      	adds	r1, #1
d008057c:	f899 e00d 	ldrb.w	lr, [r9, #13]
d0080580:	f899 c00e 	ldrb.w	ip, [r9, #14]
d0080584:	b209      	sxth	r1, r1
d0080586:	ea43 2e0e 	orr.w	lr, r3, lr, lsl #8
d008058a:	f899 300f 	ldrb.w	r3, [r9, #15]
d008058e:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d0080592:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d0080596:	685b      	ldr	r3, [r3, #4]
d0080598:	689b      	ldr	r3, [r3, #8]
d008059a:	4798      	blx	r3
d008059c:	f894 b004 	ldrb.w	fp, [r4, #4]
d00805a0:	8823      	ldrh	r3, [r4, #0]
d00805a2:	f1bb 0f08 	cmp.w	fp, #8
d00805a6:	f240 8094 	bls.w	d00806d2 <draw_star_speed_range+0x596>
d00805aa:	1cd8      	adds	r0, r3, #3
d00805ac:	8861      	ldrh	r1, [r4, #2]
d00805ae:	f240 1bdf 	movw	fp, #479	; 0x1df
d00805b2:	fa1f fc80 	uxth.w	ip, r0
d00805b6:	f1a1 0e27 	sub.w	lr, r1, #39	; 0x27
d00805ba:	b200      	sxth	r0, r0
d00805bc:	45dc      	cmp	ip, fp
d00805be:	bf94      	ite	ls
d00805c0:	2200      	movls	r2, #0
d00805c2:	2201      	movhi	r2, #1
d00805c4:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d00805c8:	d21e      	bcs.n	d0080608 <draw_star_speed_range+0x4cc>
d00805ca:	b9ea      	cbnz	r2, d0080608 <draw_star_speed_range+0x4cc>
d00805cc:	f899 300c 	ldrb.w	r3, [r9, #12]
d00805d0:	3901      	subs	r1, #1
d00805d2:	f899 e00d 	ldrb.w	lr, [r9, #13]
d00805d6:	f899 c00e 	ldrb.w	ip, [r9, #14]
d00805da:	b209      	sxth	r1, r1
d00805dc:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d00805e0:	f899 e00f 	ldrb.w	lr, [r9, #15]
d00805e4:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d00805e8:	ea43 6c0e 	orr.w	ip, r3, lr, lsl #24
d00805ec:	f8dc 3004 	ldr.w	r3, [ip, #4]
d00805f0:	689b      	ldr	r3, [r3, #8]
d00805f2:	4798      	blx	r3
d00805f4:	8823      	ldrh	r3, [r4, #0]
d00805f6:	8861      	ldrh	r1, [r4, #2]
d00805f8:	1cd8      	adds	r0, r3, #3
d00805fa:	fa1f fc80 	uxth.w	ip, r0
d00805fe:	b200      	sxth	r0, r0
d0080600:	45dc      	cmp	ip, fp
d0080602:	bf94      	ite	ls
d0080604:	2200      	movls	r2, #0
d0080606:	2201      	movhi	r2, #1
d0080608:	f1a1 0e25 	sub.w	lr, r1, #37	; 0x25
d008060c:	f5be 7f8d 	cmp.w	lr, #282	; 0x11a
d0080610:	d214      	bcs.n	d008063c <draw_star_speed_range+0x500>
d0080612:	b99a      	cbnz	r2, d008063c <draw_star_speed_range+0x500>
d0080614:	f899 300c 	ldrb.w	r3, [r9, #12]
d0080618:	3101      	adds	r1, #1
d008061a:	f899 c00d 	ldrb.w	ip, [r9, #13]
d008061e:	f899 e00e 	ldrb.w	lr, [r9, #14]
d0080622:	b209      	sxth	r1, r1
d0080624:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d0080628:	f899 200f 	ldrb.w	r2, [r9, #15]
d008062c:	ea43 430e 	orr.w	r3, r3, lr, lsl #16
d0080630:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080634:	685b      	ldr	r3, [r3, #4]
d0080636:	689b      	ldr	r3, [r3, #8]
d0080638:	4798      	blx	r3
d008063a:	8823      	ldrh	r3, [r4, #0]
d008063c:	f894 b004 	ldrb.w	fp, [r4, #4]
d0080640:	eba3 030b 	sub.w	r3, r3, fp
d0080644:	f1bb 0f08 	cmp.w	fp, #8
d0080648:	b21b      	sxth	r3, r3
d008064a:	8023      	strh	r3, [r4, #0]
d008064c:	d84e      	bhi.n	d00806ec <draw_star_speed_range+0x5b0>
d008064e:	f1bb 0f06 	cmp.w	fp, #6
d0080652:	d845      	bhi.n	d00806e0 <draw_star_speed_range+0x5a4>
d0080654:	f1bb 0f04 	cmp.w	fp, #4
d0080658:	d858      	bhi.n	d008070c <draw_star_speed_range+0x5d0>
d008065a:	f1bb 0f02 	cmp.w	fp, #2
d008065e:	d85b      	bhi.n	d0080718 <draw_star_speed_range+0x5dc>
d0080660:	d064      	beq.n	d008072c <draw_star_speed_range+0x5f0>
d0080662:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0080666:	4293      	cmp	r3, r2
d0080668:	f6bf adc4 	bge.w	d00801f4 <draw_star_speed_range+0xb8>
d008066c:	4938      	ldr	r1, [pc, #224]	; (d0080750 <draw_star_speed_range+0x614>)
d008066e:	f243 0e39 	movw	lr, #12345	; 0x3039
d0080672:	f240 1c19 	movw	ip, #281	; 0x119
d0080676:	1e68      	subs	r0, r5, #1
d0080678:	680b      	ldr	r3, [r1, #0]
d008067a:	b2c0      	uxtb	r0, r0
d008067c:	fb08 e303 	mla	r3, r8, r3, lr
d0080680:	281f      	cmp	r0, #31
d0080682:	ea4f 4213 	mov.w	r2, r3, lsr #16
d0080686:	fb08 e303 	mla	r3, r8, r3, lr
d008068a:	fbaa eb02 	umull	lr, fp, sl, r2
d008068e:	ea4f 4e13 	mov.w	lr, r3, lsr #16
d0080692:	600b      	str	r3, [r1, #0]
d0080694:	eba2 030b 	sub.w	r3, r2, fp
d0080698:	492e      	ldr	r1, [pc, #184]	; (d0080754 <draw_star_speed_range+0x618>)
d008069a:	eb0b 0353 	add.w	r3, fp, r3, lsr #1
d008069e:	fba1 910e 	umull	r9, r1, r1, lr
d00806a2:	ea4f 2313 	mov.w	r3, r3, lsr #8
d00806a6:	ea4f 01d1 	mov.w	r1, r1, lsr #3
d00806aa:	fb0c e111 	mls	r1, ip, r1, lr
d00806ae:	ebc3 1c03 	rsb	ip, r3, r3, lsl #4
d00806b2:	ebc3 134c 	rsb	r3, r3, ip, lsl #5
d00806b6:	f101 0126 	add.w	r1, r1, #38	; 0x26
d00806ba:	eba2 0203 	sub.w	r2, r2, r3
d00806be:	8061      	strh	r1, [r4, #2]
d00806c0:	f502 72f0 	add.w	r2, r2, #480	; 0x1e0
d00806c4:	8022      	strh	r2, [r4, #0]
d00806c6:	d81a      	bhi.n	d00806fe <draw_star_speed_range+0x5c2>
d00806c8:	2201      	movs	r2, #1
d00806ca:	2306      	movs	r3, #6
d00806cc:	7122      	strb	r2, [r4, #4]
d00806ce:	7163      	strb	r3, [r4, #5]
d00806d0:	e593      	b.n	d00801fa <draw_star_speed_range+0xbe>
d00806d2:	eba3 030b 	sub.w	r3, r3, fp
d00806d6:	f1bb 0f06 	cmp.w	fp, #6
d00806da:	b21b      	sxth	r3, r3
d00806dc:	8023      	strh	r3, [r4, #0]
d00806de:	d9b9      	bls.n	d0080654 <draw_star_speed_range+0x518>
d00806e0:	f06f 0206 	mvn.w	r2, #6
d00806e4:	e7bf      	b.n	d0080666 <draw_star_speed_range+0x52a>
d00806e6:	f894 b004 	ldrb.w	fp, [r4, #4]
d00806ea:	e75a      	b.n	d00805a2 <draw_star_speed_range+0x466>
d00806ec:	f06f 0208 	mvn.w	r2, #8
d00806f0:	e7b9      	b.n	d0080666 <draw_star_speed_range+0x52a>
d00806f2:	f04f 0b09 	mov.w	fp, #9
d00806f6:	e58f      	b.n	d0080218 <draw_star_speed_range+0xdc>
d00806f8:	f04f 0b07 	mov.w	fp, #7
d00806fc:	e58c      	b.n	d0080218 <draw_star_speed_range+0xdc>
d00806fe:	2835      	cmp	r0, #53	; 0x35
d0080700:	d80d      	bhi.n	d008071e <draw_star_speed_range+0x5e2>
d0080702:	2202      	movs	r2, #2
d0080704:	2306      	movs	r3, #6
d0080706:	7122      	strb	r2, [r4, #4]
d0080708:	7163      	strb	r3, [r4, #5]
d008070a:	e576      	b.n	d00801fa <draw_star_speed_range+0xbe>
d008070c:	f06f 0204 	mvn.w	r2, #4
d0080710:	e7a9      	b.n	d0080666 <draw_star_speed_range+0x52a>
d0080712:	f04f 0b03 	mov.w	fp, #3
d0080716:	e57f      	b.n	d0080218 <draw_star_speed_range+0xdc>
d0080718:	f06f 0202 	mvn.w	r2, #2
d008071c:	e7a3      	b.n	d0080666 <draw_star_speed_range+0x52a>
d008071e:	2847      	cmp	r0, #71	; 0x47
d0080720:	d807      	bhi.n	d0080732 <draw_star_speed_range+0x5f6>
d0080722:	2203      	movs	r2, #3
d0080724:	2305      	movs	r3, #5
d0080726:	7122      	strb	r2, [r4, #4]
d0080728:	7163      	strb	r3, [r4, #5]
d008072a:	e566      	b.n	d00801fa <draw_star_speed_range+0xbe>
d008072c:	f06f 0201 	mvn.w	r2, #1
d0080730:	e799      	b.n	d0080666 <draw_star_speed_range+0x52a>
d0080732:	2853      	cmp	r0, #83	; 0x53
d0080734:	f63f ad57 	bhi.w	d00801e6 <draw_star_speed_range+0xaa>
d0080738:	2205      	movs	r2, #5
d008073a:	2301      	movs	r3, #1
d008073c:	7122      	strb	r2, [r4, #4]
d008073e:	7163      	strb	r3, [r4, #5]
d0080740:	e55b      	b.n	d00801fa <draw_star_speed_range+0xbe>
d0080742:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0080746:	2207      	movs	r2, #7
d0080748:	2301      	movs	r3, #1
d008074a:	7122      	strb	r2, [r4, #4]
d008074c:	7163      	strb	r3, [r4, #5]
d008074e:	e554      	b.n	d00801fa <draw_star_speed_range+0xbe>
d0080750:	d008a6c0 	.word	0xd008a6c0
d0080754:	0749cb29 	.word	0x0749cb29

d0080758 <main>:
d0080758:	f8df a32c 	ldr.w	sl, [pc, #812]	; d0080a88 <main+0x330>
d008075c:	f44f 2000 	mov.w	r0, #524288	; 0x80000
d0080760:	2502      	movs	r5, #2
d0080762:	f04f 0900 	mov.w	r9, #0
d0080766:	f89a 3000 	ldrb.w	r3, [sl]
d008076a:	f89a 2001 	ldrb.w	r2, [sl, #1]
d008076e:	46c8      	mov	r8, r9
d0080770:	f89a 1002 	ldrb.w	r1, [sl, #2]
d0080774:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080778:	f89a 2003 	ldrb.w	r2, [sl, #3]
d008077c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080780:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080784:	e92d 4880 	stmdb	sp!, {r7, fp, lr}
d0080788:	681b      	ldr	r3, [r3, #0]
d008078a:	b0b1      	sub	sp, #196	; 0xc4
d008078c:	4798      	blx	r3
d008078e:	f8df b2fc 	ldr.w	fp, [pc, #764]	; d0080a8c <main+0x334>
d0080792:	f7ff fc61 	bl	d0080058 <initMalloc>
d0080796:	f89a 300c 	ldrb.w	r3, [sl, #12]
d008079a:	f89a 200d 	ldrb.w	r2, [sl, #13]
d008079e:	2190      	movs	r1, #144	; 0x90
d00807a0:	f89a 400e 	ldrb.w	r4, [sl, #14]
d00807a4:	20dc      	movs	r0, #220	; 0xdc
d00807a6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00807aa:	f89a 200f 	ldrb.w	r2, [sl, #15]
d00807ae:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d00807b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00807b6:	681b      	ldr	r3, [r3, #0]
d00807b8:	691b      	ldr	r3, [r3, #16]
d00807ba:	4798      	blx	r3
d00807bc:	f89a 000c 	ldrb.w	r0, [sl, #12]
d00807c0:	f89a 100d 	ldrb.w	r1, [sl, #13]
d00807c4:	f44f 73a0 	mov.w	r3, #320	; 0x140
d00807c8:	f89a 200e 	ldrb.w	r2, [sl, #14]
d00807cc:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d00807d0:	f89a 100f 	ldrb.w	r1, [sl, #15]
d00807d4:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
d00807d8:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00807dc:	ea40 6001 	orr.w	r0, r0, r1, lsl #24
d00807e0:	4619      	mov	r1, r3
d00807e2:	6804      	ldr	r4, [r0, #0]
d00807e4:	4610      	mov	r0, r2
d00807e6:	9500      	str	r5, [sp, #0]
d00807e8:	6964      	ldr	r4, [r4, #20]
d00807ea:	47a0      	blx	r4
d00807ec:	f89a 3014 	ldrb.w	r3, [sl, #20]
d00807f0:	f89a 2015 	ldrb.w	r2, [sl, #21]
d00807f4:	f44f 7000 	mov.w	r0, #512	; 0x200
d00807f8:	f89a 1016 	ldrb.w	r1, [sl, #22]
d00807fc:	2410      	movs	r4, #16
d00807fe:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080802:	f89a 2017 	ldrb.w	r2, [sl, #23]
d0080806:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008080a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008080e:	681b      	ldr	r3, [r3, #0]
d0080810:	681b      	ldr	r3, [r3, #0]
d0080812:	4798      	blx	r3
d0080814:	f89a 2014 	ldrb.w	r2, [sl, #20]
d0080818:	f89a 3015 	ldrb.w	r3, [sl, #21]
d008081c:	2101      	movs	r1, #1
d008081e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d0080822:	f89a 3016 	ldrb.w	r3, [sl, #22]
d0080826:	f89a 0017 	ldrb.w	r0, [sl, #23]
d008082a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d008082e:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0080832:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d0080836:	f89a 000d 	ldrb.w	r0, [sl, #13]
d008083a:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d008083e:	6810      	ldr	r0, [r2, #0]
d0080840:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0080844:	6840      	ldr	r0, [r0, #4]
d0080846:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d008084a:	f89a 200f 	ldrb.w	r2, [sl, #15]
d008084e:	7001      	strb	r1, [r0, #0]
d0080850:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080854:	681b      	ldr	r3, [r3, #0]
d0080856:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0080858:	4798      	blx	r3
d008085a:	f89a 300c 	ldrb.w	r3, [sl, #12]
d008085e:	4986      	ldr	r1, [pc, #536]	; (d0080a78 <main+0x320>)
d0080860:	f89a 200d 	ldrb.w	r2, [sl, #13]
d0080864:	6008      	str	r0, [r1, #0]
d0080866:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008086a:	f89a 100e 	ldrb.w	r1, [sl, #14]
d008086e:	f89a 200f 	ldrb.w	r2, [sl, #15]
d0080872:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080876:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008087a:	681b      	ldr	r3, [r3, #0]
d008087c:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d008087e:	4798      	blx	r3
d0080880:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0080884:	497d      	ldr	r1, [pc, #500]	; (d0080a7c <main+0x324>)
d0080886:	f89a 200d 	ldrb.w	r2, [sl, #13]
d008088a:	6008      	str	r0, [r1, #0]
d008088c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080890:	f89a 100e 	ldrb.w	r1, [sl, #14]
d0080894:	f89a 200f 	ldrb.w	r2, [sl, #15]
d0080898:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008089c:	4878      	ldr	r0, [pc, #480]	; (d0080a80 <main+0x328>)
d008089e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00808a2:	681b      	ldr	r3, [r3, #0]
d00808a4:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d00808a6:	4798      	blx	r3
d00808a8:	f89a 3018 	ldrb.w	r3, [sl, #24]
d00808ac:	f89a 2019 	ldrb.w	r2, [sl, #25]
d00808b0:	f89a 101a 	ldrb.w	r1, [sl, #26]
d00808b4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00808b8:	f89a 201b 	ldrb.w	r2, [sl, #27]
d00808bc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00808c0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00808c4:	681b      	ldr	r3, [r3, #0]
d00808c6:	4798      	blx	r3
d00808c8:	f89a 300c 	ldrb.w	r3, [sl, #12]
d00808cc:	f89a 200d 	ldrb.w	r2, [sl, #13]
d00808d0:	f89a 100e 	ldrb.w	r1, [sl, #14]
d00808d4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00808d8:	f89a 200f 	ldrb.w	r2, [sl, #15]
d00808dc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00808e0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00808e4:	681b      	ldr	r3, [r3, #0]
d00808e6:	6d5b      	ldr	r3, [r3, #84]	; 0x54
d00808e8:	4798      	blx	r3
d00808ea:	f89a 300c 	ldrb.w	r3, [sl, #12]
d00808ee:	f89a 200d 	ldrb.w	r2, [sl, #13]
d00808f2:	2157      	movs	r1, #87	; 0x57
d00808f4:	2050      	movs	r0, #80	; 0x50
d00808f6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00808fa:	f89a 200e 	ldrb.w	r2, [sl, #14]
d00808fe:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080902:	f89a 200f 	ldrb.w	r2, [sl, #15]
d0080906:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008090a:	681b      	ldr	r3, [r3, #0]
d008090c:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d008090e:	4798      	blx	r3
d0080910:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0080914:	f89a 200d 	ldrb.w	r2, [sl, #13]
d0080918:	2004      	movs	r0, #4
d008091a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008091e:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0080922:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080926:	f89a 200f 	ldrb.w	r2, [sl, #15]
d008092a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008092e:	681b      	ldr	r3, [r3, #0]
d0080930:	6e5b      	ldr	r3, [r3, #100]	; 0x64
d0080932:	4798      	blx	r3
d0080934:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d0080938:	f44f 72a0 	mov.w	r2, #320	; 0x140
d008093c:	4851      	ldr	r0, [pc, #324]	; (d0080a84 <main+0x32c>)
d008093e:	f7ff fb7d 	bl	d008003c <gfx_createBitmap>
d0080942:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0080946:	f89a 200d 	ldrb.w	r2, [sl, #13]
d008094a:	484e      	ldr	r0, [pc, #312]	; (d0080a84 <main+0x32c>)
d008094c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080950:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0080954:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080958:	f89a 200f 	ldrb.w	r2, [sl, #15]
d008095c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080960:	681b      	ldr	r3, [r3, #0]
d0080962:	699b      	ldr	r3, [r3, #24]
d0080964:	4798      	blx	r3
d0080966:	f89a 300c 	ldrb.w	r3, [sl, #12]
d008096a:	f89a 200d 	ldrb.w	r2, [sl, #13]
d008096e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080972:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0080976:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d008097a:	f89a 200f 	ldrb.w	r2, [sl, #15]
d008097e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080982:	685b      	ldr	r3, [r3, #4]
d0080984:	681b      	ldr	r3, [r3, #0]
d0080986:	4798      	blx	r3
d0080988:	e040      	b.n	d0080a0c <main+0x2b4>
d008098a:	f89a 300c 	ldrb.w	r3, [sl, #12]
d008098e:	f105 0611 	add.w	r6, r5, #17
d0080992:	f89a 200d 	ldrb.w	r2, [sl, #13]
d0080996:	4620      	mov	r0, r4
d0080998:	f89a 700e 	ldrb.w	r7, [sl, #14]
d008099c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00809a0:	f89a 200f 	ldrb.w	r2, [sl, #15]
d00809a4:	9106      	str	r1, [sp, #24]
d00809a6:	b231      	sxth	r1, r6
d00809a8:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d00809ac:	f81b 6c01 	ldrb.w	r6, [fp, #-1]
d00809b0:	9105      	str	r1, [sp, #20]
d00809b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00809b6:	685b      	ldr	r3, [r3, #4]
d00809b8:	68db      	ldr	r3, [r3, #12]
d00809ba:	4798      	blx	r3
d00809bc:	f89a 200c 	ldrb.w	r2, [sl, #12]
d00809c0:	f89a c00d 	ldrb.w	ip, [sl, #13]
d00809c4:	2311      	movs	r3, #17
d00809c6:	f89a 700e 	ldrb.w	r7, [sl, #14]
d00809ca:	ea42 200c 	orr.w	r0, r2, ip, lsl #8
d00809ce:	f89a c00f 	ldrb.w	ip, [sl, #15]
d00809d2:	9906      	ldr	r1, [sp, #24]
d00809d4:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00809d8:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d00809dc:	2000      	movs	r0, #0
d00809de:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d00809e2:	687f      	ldr	r7, [r7, #4]
d00809e4:	687f      	ldr	r7, [r7, #4]
d00809e6:	47b8      	blx	r7
d00809e8:	42a6      	cmp	r6, r4
d00809ea:	d004      	beq.n	d00809f6 <main+0x29e>
d00809ec:	f109 0301 	add.w	r3, r9, #1
d00809f0:	9905      	ldr	r1, [sp, #20]
d00809f2:	4299      	cmp	r1, r3
d00809f4:	dc7b      	bgt.n	d0080aee <main+0x396>
d00809f6:	fa1f f388 	uxth.w	r3, r8
d00809fa:	2b11      	cmp	r3, #17
d00809fc:	f000 80a5 	beq.w	d0080b4a <main+0x3f2>
d0080a00:	f108 0801 	add.w	r8, r8, #1
d0080a04:	f109 0911 	add.w	r9, r9, #17
d0080a08:	f81b 4f01 	ldrb.w	r4, [fp, #1]!
d0080a0c:	f1b8 0f11 	cmp.w	r8, #17
d0080a10:	fa1f f589 	uxth.w	r5, r9
d0080a14:	fa0f f189 	sxth.w	r1, r9
d0080a18:	fa0f f688 	sxth.w	r6, r8
d0080a1c:	d038      	beq.n	d0080a90 <main+0x338>
d0080a1e:	2e00      	cmp	r6, #0
d0080a20:	d1b3      	bne.n	d008098a <main+0x232>
d0080a22:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0080a26:	f89a 200d 	ldrb.w	r2, [sl, #13]
d0080a2a:	f89a 400e 	ldrb.w	r4, [sl, #14]
d0080a2e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080a32:	f89a 200f 	ldrb.w	r2, [sl, #15]
d0080a36:	f89b 0000 	ldrb.w	r0, [fp]
d0080a3a:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d0080a3e:	9105      	str	r1, [sp, #20]
d0080a40:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080a44:	685b      	ldr	r3, [r3, #4]
d0080a46:	68db      	ldr	r3, [r3, #12]
d0080a48:	4798      	blx	r3
d0080a4a:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0080a4e:	f89a 200d 	ldrb.w	r2, [sl, #13]
d0080a52:	4630      	mov	r0, r6
d0080a54:	f89a 700e 	ldrb.w	r7, [sl, #14]
d0080a58:	ea43 2402 	orr.w	r4, r3, r2, lsl #8
d0080a5c:	f89a 500f 	ldrb.w	r5, [sl, #15]
d0080a60:	9905      	ldr	r1, [sp, #20]
d0080a62:	2311      	movs	r3, #17
d0080a64:	ea44 4407 	orr.w	r4, r4, r7, lsl #16
d0080a68:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080a6c:	ea44 6405 	orr.w	r4, r4, r5, lsl #24
d0080a70:	6864      	ldr	r4, [r4, #4]
d0080a72:	6864      	ldr	r4, [r4, #4]
d0080a74:	47a0      	blx	r4
d0080a76:	e7c3      	b.n	d0080a00 <main+0x2a8>
d0080a78:	d008ab40 	.word	0xd008ab40
d0080a7c:	d008ab20 	.word	0xd008ab20
d0080a80:	d0084640 	.word	0xd0084640
d0080a84:	d008ab00 	.word	0xd008ab00
d0080a88:	2001f000 	.word	0x2001f000
d0080a8c:	d008a534 	.word	0xd008a534
d0080a90:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0080a94:	4620      	mov	r0, r4
d0080a96:	f89a 200d 	ldrb.w	r2, [sl, #13]
d0080a9a:	f89a 700e 	ldrb.w	r7, [sl, #14]
d0080a9e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080aa2:	f89a 200f 	ldrb.w	r2, [sl, #15]
d0080aa6:	f81b 6c01 	ldrb.w	r6, [fp, #-1]
d0080aaa:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d0080aae:	9105      	str	r1, [sp, #20]
d0080ab0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080ab4:	685b      	ldr	r3, [r3, #4]
d0080ab6:	68db      	ldr	r3, [r3, #12]
d0080ab8:	4798      	blx	r3
d0080aba:	f89a 200c 	ldrb.w	r2, [sl, #12]
d0080abe:	f89a c00d 	ldrb.w	ip, [sl, #13]
d0080ac2:	f5c5 73a0 	rsb	r3, r5, #320	; 0x140
d0080ac6:	f89a 000e 	ldrb.w	r0, [sl, #14]
d0080aca:	ea42 270c 	orr.w	r7, r2, ip, lsl #8
d0080ace:	f89a c00f 	ldrb.w	ip, [sl, #15]
d0080ad2:	9905      	ldr	r1, [sp, #20]
d0080ad4:	b21b      	sxth	r3, r3
d0080ad6:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d0080ada:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080ade:	2000      	movs	r0, #0
d0080ae0:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0080ae4:	687f      	ldr	r7, [r7, #4]
d0080ae6:	687f      	ldr	r7, [r7, #4]
d0080ae8:	47b8      	blx	r7
d0080aea:	42b4      	cmp	r4, r6
d0080aec:	d083      	beq.n	d00809f6 <main+0x29e>
d0080aee:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0080af2:	4630      	mov	r0, r6
d0080af4:	f89a 200d 	ldrb.w	r2, [sl, #13]
d0080af8:	f89a 100e 	ldrb.w	r1, [sl, #14]
d0080afc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080b00:	f89a 200f 	ldrb.w	r2, [sl, #15]
d0080b04:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080b08:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080b0c:	685b      	ldr	r3, [r3, #4]
d0080b0e:	68db      	ldr	r3, [r3, #12]
d0080b10:	4798      	blx	r3
d0080b12:	f89a 400c 	ldrb.w	r4, [sl, #12]
d0080b16:	f89a 200d 	ldrb.w	r2, [sl, #13]
d0080b1a:	1ce9      	adds	r1, r5, #3
d0080b1c:	f89a 000e 	ldrb.w	r0, [sl, #14]
d0080b20:	2302      	movs	r3, #2
d0080b22:	ea44 2402 	orr.w	r4, r4, r2, lsl #8
d0080b26:	f89a 600f 	ldrb.w	r6, [sl, #15]
d0080b2a:	b209      	sxth	r1, r1
d0080b2c:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080b30:	ea44 4400 	orr.w	r4, r4, r0, lsl #16
d0080b34:	2000      	movs	r0, #0
d0080b36:	ea44 6406 	orr.w	r4, r4, r6, lsl #24
d0080b3a:	6864      	ldr	r4, [r4, #4]
d0080b3c:	6864      	ldr	r4, [r4, #4]
d0080b3e:	47a0      	blx	r4
d0080b40:	fa1f f388 	uxth.w	r3, r8
d0080b44:	2b11      	cmp	r3, #17
d0080b46:	f47f af5b 	bne.w	d0080a00 <main+0x2a8>
d0080b4a:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0080b4e:	2500      	movs	r5, #0
d0080b50:	f89a 200d 	ldrb.w	r2, [sl, #13]
d0080b54:	f243 0839 	movw	r8, #12345	; 0x3039
d0080b58:	f89a 100e 	ldrb.w	r1, [sl, #14]
d0080b5c:	f240 1919 	movw	r9, #281	; 0x119
d0080b60:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080b64:	f89a 200f 	ldrb.w	r2, [sl, #15]
d0080b68:	4844      	ldr	r0, [pc, #272]	; (d0080c7c <main+0x524>)
d0080b6a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080b6e:	4c44      	ldr	r4, [pc, #272]	; (d0080c80 <main+0x528>)
d0080b70:	f8df b12c 	ldr.w	fp, [pc, #300]	; d0080ca0 <main+0x548>
d0080b74:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080b78:	681b      	ldr	r3, [r3, #0]
d0080b7a:	6a1b      	ldr	r3, [r3, #32]
d0080b7c:	4798      	blx	r3
d0080b7e:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0080b82:	f89a 200d 	ldrb.w	r2, [sl, #13]
d0080b86:	f89a 100e 	ldrb.w	r1, [sl, #14]
d0080b8a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080b8e:	f89a 200f 	ldrb.w	r2, [sl, #15]
d0080b92:	483c      	ldr	r0, [pc, #240]	; (d0080c84 <main+0x52c>)
d0080b94:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080b98:	6800      	ldr	r0, [r0, #0]
d0080b9a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080b9e:	681b      	ldr	r3, [r3, #0]
d0080ba0:	69db      	ldr	r3, [r3, #28]
d0080ba2:	4798      	blx	r3
d0080ba4:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0080ba8:	f89a 200d 	ldrb.w	r2, [sl, #13]
d0080bac:	f89a 100e 	ldrb.w	r1, [sl, #14]
d0080bb0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080bb4:	f89a 200f 	ldrb.w	r2, [sl, #15]
d0080bb8:	4833      	ldr	r0, [pc, #204]	; (d0080c88 <main+0x530>)
d0080bba:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080bbe:	6800      	ldr	r0, [r0, #0]
d0080bc0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080bc4:	681b      	ldr	r3, [r3, #0]
d0080bc6:	699b      	ldr	r3, [r3, #24]
d0080bc8:	4798      	blx	r3
d0080bca:	4b30      	ldr	r3, [pc, #192]	; (d0080c8c <main+0x534>)
d0080bcc:	f44f 62ca 	mov.w	r2, #1616	; 0x650
d0080bd0:	492f      	ldr	r1, [pc, #188]	; (d0080c90 <main+0x538>)
d0080bd2:	6818      	ldr	r0, [r3, #0]
d0080bd4:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d0080bd8:	6022      	str	r2, [r4, #0]
d0080bda:	4a2e      	ldr	r2, [pc, #184]	; (d0080c94 <main+0x53c>)
d0080bdc:	f8df e0bc 	ldr.w	lr, [pc, #188]	; d0080c9c <main+0x544>
d0080be0:	6013      	str	r3, [r2, #0]
d0080be2:	e006      	b.n	d0080bf2 <main+0x49a>
d0080be4:	2306      	movs	r3, #6
d0080be6:	f04f 0201 	mov.w	r2, #1
d0080bea:	714b      	strb	r3, [r1, #5]
d0080bec:	710a      	strb	r2, [r1, #4]
d0080bee:	3501      	adds	r5, #1
d0080bf0:	3106      	adds	r1, #6
d0080bf2:	fb0e 8000 	mla	r0, lr, r0, r8
d0080bf6:	4b28      	ldr	r3, [pc, #160]	; (d0080c98 <main+0x540>)
d0080bf8:	2d1f      	cmp	r5, #31
d0080bfa:	b2ee      	uxtb	r6, r5
d0080bfc:	ea4f 4410 	mov.w	r4, r0, lsr #16
d0080c00:	fb0e 8000 	mla	r0, lr, r0, r8
d0080c04:	fba3 2304 	umull	r2, r3, r3, r4
d0080c08:	ea4f 4c10 	mov.w	ip, r0, lsr #16
d0080c0c:	eba4 0203 	sub.w	r2, r4, r3
d0080c10:	eb03 0352 	add.w	r3, r3, r2, lsr #1
d0080c14:	fbab 720c 	umull	r7, r2, fp, ip
d0080c18:	ea4f 2313 	mov.w	r3, r3, lsr #8
d0080c1c:	ea4f 02d2 	mov.w	r2, r2, lsr #3
d0080c20:	ebc3 1703 	rsb	r7, r3, r3, lsl #4
d0080c24:	fb09 c212 	mls	r2, r9, r2, ip
d0080c28:	ebc3 1347 	rsb	r3, r3, r7, lsl #5
d0080c2c:	f102 0226 	add.w	r2, r2, #38	; 0x26
d0080c30:	eba4 0403 	sub.w	r4, r4, r3
d0080c34:	804a      	strh	r2, [r1, #2]
d0080c36:	800c      	strh	r4, [r1, #0]
d0080c38:	d9d4      	bls.n	d0080be4 <main+0x48c>
d0080c3a:	2e35      	cmp	r6, #53	; 0x35
d0080c3c:	d805      	bhi.n	d0080c4a <main+0x4f2>
d0080c3e:	2306      	movs	r3, #6
d0080c40:	f04f 0202 	mov.w	r2, #2
d0080c44:	714b      	strb	r3, [r1, #5]
d0080c46:	710a      	strb	r2, [r1, #4]
d0080c48:	e7d1      	b.n	d0080bee <main+0x496>
d0080c4a:	2e47      	cmp	r6, #71	; 0x47
d0080c4c:	d804      	bhi.n	d0080c58 <main+0x500>
d0080c4e:	2203      	movs	r2, #3
d0080c50:	2305      	movs	r3, #5
d0080c52:	710a      	strb	r2, [r1, #4]
d0080c54:	714b      	strb	r3, [r1, #5]
d0080c56:	e7ca      	b.n	d0080bee <main+0x496>
d0080c58:	2e53      	cmp	r6, #83	; 0x53
d0080c5a:	d805      	bhi.n	d0080c68 <main+0x510>
d0080c5c:	2305      	movs	r3, #5
d0080c5e:	f04f 0201 	mov.w	r2, #1
d0080c62:	710b      	strb	r3, [r1, #4]
d0080c64:	714a      	strb	r2, [r1, #5]
d0080c66:	e7c2      	b.n	d0080bee <main+0x496>
d0080c68:	2e5b      	cmp	r6, #91	; 0x5b
d0080c6a:	d81b      	bhi.n	d0080ca4 <main+0x54c>
d0080c6c:	f04f 0307 	mov.w	r3, #7
d0080c70:	710b      	strb	r3, [r1, #4]
d0080c72:	f04f 0301 	mov.w	r3, #1
d0080c76:	714b      	strb	r3, [r1, #5]
d0080c78:	e7b9      	b.n	d0080bee <main+0x496>
d0080c7a:	bf00      	nop
d0080c7c:	d008ab00 	.word	0xd008ab00
d0080c80:	d008a880 	.word	0xd008a880
d0080c84:	d008ab40 	.word	0xd008ab40
d0080c88:	d008ab20 	.word	0xd008ab20
d0080c8c:	d008a6c0 	.word	0xd008a6c0
d0080c90:	d008a8a0 	.word	0xd008a8a0
d0080c94:	d008a6a4 	.word	0xd008a6a4
d0080c98:	11a3019b 	.word	0x11a3019b
d0080c9c:	41c64e6d 	.word	0x41c64e6d
d0080ca0:	0749cb29 	.word	0x0749cb29
d0080ca4:	f04f 0309 	mov.w	r3, #9
d0080ca8:	2e5f      	cmp	r6, #95	; 0x5f
d0080caa:	710b      	strb	r3, [r1, #4]
d0080cac:	f04f 0302 	mov.w	r3, #2
d0080cb0:	714b      	strb	r3, [r1, #5]
d0080cb2:	d19c      	bne.n	d0080bee <main+0x496>
d0080cb4:	4bda      	ldr	r3, [pc, #872]	; (d0081020 <main+0x8c8>)
d0080cb6:	f8df 9388 	ldr.w	r9, [pc, #904]	; d0081040 <main+0x8e8>
d0080cba:	9309      	str	r3, [sp, #36]	; 0x24
d0080cbc:	46cb      	mov	fp, r9
d0080cbe:	4bd9      	ldr	r3, [pc, #868]	; (d0081024 <main+0x8cc>)
d0080cc0:	6018      	str	r0, [r3, #0]
d0080cc2:	f89a 000c 	ldrb.w	r0, [sl, #12]
d0080cc6:	f89a 100d 	ldrb.w	r1, [sl, #13]
d0080cca:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0080cce:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0080cd2:	f89a 300f 	ldrb.w	r3, [sl, #15]
d0080cd6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080cda:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080cde:	681b      	ldr	r3, [r3, #0]
d0080ce0:	68db      	ldr	r3, [r3, #12]
d0080ce2:	4798      	blx	r3
d0080ce4:	f89a 000c 	ldrb.w	r0, [sl, #12]
d0080ce8:	f89a 100d 	ldrb.w	r1, [sl, #13]
d0080cec:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0080cf0:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0080cf4:	f89a 300f 	ldrb.w	r3, [sl, #15]
d0080cf8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080cfc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080d00:	685b      	ldr	r3, [r3, #4]
d0080d02:	681b      	ldr	r3, [r3, #0]
d0080d04:	4798      	blx	r3
d0080d06:	2105      	movs	r1, #5
d0080d08:	2000      	movs	r0, #0
d0080d0a:	f7ff fa17 	bl	d008013c <draw_star_speed_range>
d0080d0e:	4bc6      	ldr	r3, [pc, #792]	; (d0081028 <main+0x8d0>)
d0080d10:	781c      	ldrb	r4, [r3, #0]
d0080d12:	940b      	str	r4, [sp, #44]	; 0x2c
d0080d14:	2c00      	cmp	r4, #0
d0080d16:	f040 828d 	bne.w	d0081234 <main+0xadc>
d0080d1a:	48c2      	ldr	r0, [pc, #776]	; (d0081024 <main+0x8cc>)
d0080d1c:	f243 0139 	movw	r1, #12345	; 0x3039
d0080d20:	4cc2      	ldr	r4, [pc, #776]	; (d008102c <main+0x8d4>)
d0080d22:	6800      	ldr	r0, [r0, #0]
d0080d24:	4dc2      	ldr	r5, [pc, #776]	; (d0081030 <main+0x8d8>)
d0080d26:	fb04 1600 	mla	r6, r4, r0, r1
d0080d2a:	4620      	mov	r0, r4
d0080d2c:	fb04 1706 	mla	r7, r4, r6, r1
d0080d30:	ea4f 4956 	mov.w	r9, r6, lsr #17
d0080d34:	961b      	str	r6, [sp, #108]	; 0x6c
d0080d36:	4606      	mov	r6, r0
d0080d38:	fb04 1407 	mla	r4, r4, r7, r1
d0080d3c:	fba5 2909 	umull	r2, r9, r5, r9
d0080d40:	fb00 1004 	mla	r0, r0, r4, r1
d0080d44:	f3c4 4405 	ubfx	r4, r4, #16, #6
d0080d48:	ea4f 1259 	mov.w	r2, r9, lsr #5
d0080d4c:	971a      	str	r7, [sp, #104]	; 0x68
d0080d4e:	fb06 1800 	mla	r8, r6, r0, r1
d0080d52:	0c00      	lsrs	r0, r0, #16
d0080d54:	f88b 4006 	strb.w	r4, [fp, #6]
d0080d58:	900c      	str	r0, [sp, #48]	; 0x30
d0080d5a:	4630      	mov	r0, r6
d0080d5c:	fb06 1408 	mla	r4, r6, r8, r1
d0080d60:	ea4f 4618 	mov.w	r6, r8, lsr #16
d0080d64:	921c      	str	r2, [sp, #112]	; 0x70
d0080d66:	fb00 1c04 	mla	ip, r0, r4, r1
d0080d6a:	0c22      	lsrs	r2, r4, #16
d0080d6c:	960d      	str	r6, [sp, #52]	; 0x34
d0080d6e:	4606      	mov	r6, r0
d0080d70:	fb00 180c 	mla	r8, r0, ip, r1
d0080d74:	f8cd c014 	str.w	ip, [sp, #20]
d0080d78:	fb00 1008 	mla	r0, r0, r8, r1
d0080d7c:	920e      	str	r2, [sp, #56]	; 0x38
d0080d7e:	fb06 1400 	mla	r4, r6, r0, r1
d0080d82:	f3c0 4005 	ubfx	r0, r0, #16, #6
d0080d86:	fb06 1904 	mla	r9, r6, r4, r1
d0080d8a:	0c24      	lsrs	r4, r4, #16
d0080d8c:	f88b 0012 	strb.w	r0, [fp, #18]
d0080d90:	4630      	mov	r0, r6
d0080d92:	ea4f 4c19 	mov.w	ip, r9, lsr #16
d0080d96:	fb06 1609 	mla	r6, r6, r9, r1
d0080d9a:	940f      	str	r4, [sp, #60]	; 0x3c
d0080d9c:	4604      	mov	r4, r0
d0080d9e:	f8cd c040 	str.w	ip, [sp, #64]	; 0x40
d0080da2:	fb00 1c06 	mla	ip, r0, r6, r1
d0080da6:	0c36      	lsrs	r6, r6, #16
d0080da8:	4622      	mov	r2, r4
d0080daa:	9611      	str	r6, [sp, #68]	; 0x44
d0080dac:	fb00 160c 	mla	r6, r0, ip, r1
d0080db0:	f8cd c018 	str.w	ip, [sp, #24]
d0080db4:	fb00 1006 	mla	r0, r0, r6, r1
d0080db8:	fb04 1700 	mla	r7, r4, r0, r1
d0080dbc:	f3c0 4005 	ubfx	r0, r0, #16, #6
d0080dc0:	fb04 1c07 	mla	ip, r4, r7, r1
d0080dc4:	0c3f      	lsrs	r7, r7, #16
d0080dc6:	f88b 001e 	strb.w	r0, [fp, #30]
d0080dca:	fb04 100c 	mla	r0, r4, ip, r1
d0080dce:	ea4f 4c1c 	mov.w	ip, ip, lsr #16
d0080dd2:	9712      	str	r7, [sp, #72]	; 0x48
d0080dd4:	f8cd c04c 	str.w	ip, [sp, #76]	; 0x4c
d0080dd8:	fb04 1c00 	mla	ip, r4, r0, r1
d0080ddc:	0c00      	lsrs	r0, r0, #16
d0080dde:	fb04 170c 	mla	r7, r4, ip, r1
d0080de2:	9014      	str	r0, [sp, #80]	; 0x50
d0080de4:	fb04 1007 	mla	r0, r4, r7, r1
d0080de8:	f8cd c01c 	str.w	ip, [sp, #28]
d0080dec:	fb04 1e00 	mla	lr, r4, r0, r1
d0080df0:	f3c0 4005 	ubfx	r0, r0, #16, #6
d0080df4:	fb04 140e 	mla	r4, r4, lr, r1
d0080df8:	ea4f 4c1e 	mov.w	ip, lr, lsr #16
d0080dfc:	f88b 002a 	strb.w	r0, [fp, #42]	; 0x2a
d0080e00:	fb02 1004 	mla	r0, r2, r4, r1
d0080e04:	0c23      	lsrs	r3, r4, #16
d0080e06:	f8cd c054 	str.w	ip, [sp, #84]	; 0x54
d0080e0a:	fb02 1c00 	mla	ip, r2, r0, r1
d0080e0e:	0c00      	lsrs	r0, r0, #16
d0080e10:	9316      	str	r3, [sp, #88]	; 0x58
d0080e12:	f8cd c020 	str.w	ip, [sp, #32]
d0080e16:	fb02 1c0c 	mla	ip, r2, ip, r1
d0080e1a:	4b86      	ldr	r3, [pc, #536]	; (d0081034 <main+0x8dc>)
d0080e1c:	9017      	str	r0, [sp, #92]	; 0x5c
d0080e1e:	0cb8      	lsrs	r0, r7, #18
d0080e20:	fb02 1e0c 	mla	lr, r2, ip, r1
d0080e24:	ea4f 449c 	mov.w	r4, ip, lsr #18
d0080e28:	fb02 190e 	mla	r9, r2, lr, r1
d0080e2c:	f3ce 4e05 	ubfx	lr, lr, #16, #6
d0080e30:	fba3 2404 	umull	r2, r4, r3, r4
d0080e34:	f103 5363 	add.w	r3, r3, #952107008	; 0x38c00000
d0080e38:	f8cd e07c 	str.w	lr, [sp, #124]	; 0x7c
d0080e3c:	f503 232c 	add.w	r3, r3, #704512	; 0xac000
d0080e40:	0864      	lsrs	r4, r4, #1
d0080e42:	f603 432e 	addw	r3, r3, #3118	; 0xc2e
d0080e46:	fb03 1e09 	mla	lr, r3, r9, r1
d0080e4a:	461a      	mov	r2, r3
d0080e4c:	ea4f 4919 	mov.w	r9, r9, lsr #16
d0080e50:	4b78      	ldr	r3, [pc, #480]	; (d0081034 <main+0x8dc>)
d0080e52:	f8cd 9060 	str.w	r9, [sp, #96]	; 0x60
d0080e56:	fba3 9000 	umull	r9, r0, r3, r0
d0080e5a:	4b76      	ldr	r3, [pc, #472]	; (d0081034 <main+0x8dc>)
d0080e5c:	fb02 190e 	mla	r9, r2, lr, r1
d0080e60:	21e4      	movs	r1, #228	; 0xe4
d0080e62:	ea4f 4e1e 	mov.w	lr, lr, lsr #16
d0080e66:	fb01 f404 	mul.w	r4, r1, r4
d0080e6a:	0840      	lsrs	r0, r0, #1
d0080e6c:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
d0080e70:	ea4f 4998 	mov.w	r9, r8, lsr #18
d0080e74:	f8cd e064 	str.w	lr, [sp, #100]	; 0x64
d0080e78:	ea4f 4e96 	mov.w	lr, r6, lsr #18
d0080e7c:	460a      	mov	r2, r1
d0080e7e:	ebc4 441c 	rsb	r4, r4, ip, lsr #16
d0080e82:	fb01 f000 	mul.w	r0, r1, r0
d0080e86:	991a      	ldr	r1, [sp, #104]	; 0x68
d0080e88:	fba3 ce0e 	umull	ip, lr, r3, lr
d0080e8c:	342a      	adds	r4, #42	; 0x2a
d0080e8e:	fba3 9c09 	umull	r9, ip, r3, r9
d0080e92:	ea4f 4991 	mov.w	r9, r1, lsr #18
d0080e96:	ebc0 4017 	rsb	r0, r0, r7, lsr #16
d0080e9a:	ea4f 0c5c 	mov.w	ip, ip, lsr #1
d0080e9e:	fba3 7909 	umull	r7, r9, r3, r9
d0080ea2:	ea4f 0e5e 	mov.w	lr, lr, lsr #1
d0080ea6:	9f08      	ldr	r7, [sp, #32]
d0080ea8:	fb02 fc0c 	mul.w	ip, r2, ip
d0080eac:	ea4f 0959 	mov.w	r9, r9, lsr #1
d0080eb0:	b224      	sxth	r4, r4
d0080eb2:	fb02 fe0e 	mul.w	lr, r2, lr
d0080eb6:	ebcc 4c18 	rsb	ip, ip, r8, lsr #16
d0080eba:	fb02 f909 	mul.w	r9, r2, r9
d0080ebe:	302a      	adds	r0, #42	; 0x2a
d0080ec0:	ebce 4e16 	rsb	lr, lr, r6, lsr #16
d0080ec4:	f10c 0c2a 	add.w	ip, ip, #42	; 0x2a
d0080ec8:	ebc9 4911 	rsb	r9, r9, r1, lsr #16
d0080ecc:	b200      	sxth	r0, r0
d0080ece:	f8ab 4034 	strh.w	r4, [fp, #52]	; 0x34
d0080ed2:	f8cd c078 	str.w	ip, [sp, #120]	; 0x78
d0080ed6:	0c7e      	lsrs	r6, r7, #17
d0080ed8:	9f07      	ldr	r7, [sp, #28]
d0080eda:	f10e 0e2a 	add.w	lr, lr, #42	; 0x2a
d0080ede:	9917      	ldr	r1, [sp, #92]	; 0x5c
d0080ee0:	fba5 c606 	umull	ip, r6, r5, r6
d0080ee4:	0c7f      	lsrs	r7, r7, #17
d0080ee6:	4b54      	ldr	r3, [pc, #336]	; (d0081038 <main+0x8e0>)
d0080ee8:	468c      	mov	ip, r1
d0080eea:	f8ab 0028 	strh.w	r0, [fp, #40]	; 0x28
d0080eee:	f8ab 0026 	strh.w	r0, [fp, #38]	; 0x26
d0080ef2:	0976      	lsrs	r6, r6, #5
d0080ef4:	980a      	ldr	r0, [sp, #40]	; 0x28
d0080ef6:	f8ab 4032 	strh.w	r4, [fp, #50]	; 0x32
d0080efa:	0c00      	lsrs	r0, r0, #16
d0080efc:	fba3 c40c 	umull	ip, r4, r3, ip
d0080f00:	fba5 c107 	umull	ip, r1, r5, r7
d0080f04:	9b05      	ldr	r3, [sp, #20]
d0080f06:	9f06      	ldr	r7, [sp, #24]
d0080f08:	f109 0c2a 	add.w	ip, r9, #42	; 0x2a
d0080f0c:	ea4f 4853 	mov.w	r8, r3, lsr #17
d0080f10:	901a      	str	r0, [sp, #104]	; 0x68
d0080f12:	0c7f      	lsrs	r7, r7, #17
d0080f14:	9816      	ldr	r0, [sp, #88]	; 0x58
d0080f16:	09a4      	lsrs	r4, r4, #6
d0080f18:	f8cd c074 	str.w	ip, [sp, #116]	; 0x74
d0080f1c:	fba5 c707 	umull	ip, r7, r5, r7
d0080f20:	4b46      	ldr	r3, [pc, #280]	; (d008103c <main+0x8e4>)
d0080f22:	fba5 c508 	umull	ip, r5, r5, r8
d0080f26:	ebc4 1404 	rsb	r4, r4, r4, lsl #4
d0080f2a:	4684      	mov	ip, r0
d0080f2c:	9817      	ldr	r0, [sp, #92]	; 0x5c
d0080f2e:	4a42      	ldr	r2, [pc, #264]	; (d0081038 <main+0x8e0>)
d0080f30:	f04f 095a 	mov.w	r9, #90	; 0x5a
d0080f34:	eba0 04c4 	sub.w	r4, r0, r4, lsl #3
d0080f38:	9815      	ldr	r0, [sp, #84]	; 0x54
d0080f3a:	fba3 c80c 	umull	ip, r8, r3, ip
d0080f3e:	097f      	lsrs	r7, r7, #5
d0080f40:	4684      	mov	ip, r0
d0080f42:	3460      	adds	r4, #96	; 0x60
d0080f44:	ea4f 0858 	mov.w	r8, r8, lsr #1
d0080f48:	fba2 c00c 	umull	ip, r0, r2, ip
d0080f4c:	fa0f fc8e 	sxth.w	ip, lr
d0080f50:	f8ab 402e 	strh.w	r4, [fp, #46]	; 0x2e
d0080f54:	eb08 0848 	add.w	r8, r8, r8, lsl #1
d0080f58:	9c16      	ldr	r4, [sp, #88]	; 0x58
d0080f5a:	ea4f 1e10 	mov.w	lr, r0, lsr #4
d0080f5e:	9814      	ldr	r0, [sp, #80]	; 0x50
d0080f60:	0949      	lsrs	r1, r1, #5
d0080f62:	4a35      	ldr	r2, [pc, #212]	; (d0081038 <main+0x8e0>)
d0080f64:	eba4 0808 	sub.w	r8, r4, r8
d0080f68:	f8cd c05c 	str.w	ip, [sp, #92]	; 0x5c
d0080f6c:	ebce 1e0e 	rsb	lr, lr, lr, lsl #4
d0080f70:	fb09 f406 	mul.w	r4, r9, r6
d0080f74:	4684      	mov	ip, r0
d0080f76:	9e15      	ldr	r6, [sp, #84]	; 0x54
d0080f78:	fb09 f101 	mul.w	r1, r9, r1
d0080f7c:	fba2 c00c 	umull	ip, r0, r2, ip
d0080f80:	096d      	lsrs	r5, r5, #5
d0080f82:	eba6 0e4e 	sub.w	lr, r6, lr, lsl #1
d0080f86:	fb09 f607 	mul.w	r6, r9, r7
d0080f8a:	9f08      	ldr	r7, [sp, #32]
d0080f8c:	0980      	lsrs	r0, r0, #6
d0080f8e:	fb09 f505 	mul.w	r5, r9, r5
d0080f92:	f108 0801 	add.w	r8, r8, #1
d0080f96:	ebc4 4417 	rsb	r4, r4, r7, lsr #16
d0080f9a:	9f13      	ldr	r7, [sp, #76]	; 0x4c
d0080f9c:	ebc0 1000 	rsb	r0, r0, r0, lsl #4
d0080fa0:	9508      	str	r5, [sp, #32]
d0080fa2:	fba3 2c07 	umull	r2, ip, r3, r7
d0080fa6:	9f14      	ldr	r7, [sp, #80]	; 0x50
d0080fa8:	4a23      	ldr	r2, [pc, #140]	; (d0081038 <main+0x8e0>)
d0080faa:	f504 744e 	add.w	r4, r4, #824	; 0x338
d0080fae:	eba7 00c0 	sub.w	r0, r7, r0, lsl #3
d0080fb2:	9f07      	ldr	r7, [sp, #28]
d0080fb4:	ea4f 0c5c 	mov.w	ip, ip, lsr #1
d0080fb8:	f10e 0e0a 	add.w	lr, lr, #10
d0080fbc:	ebc1 4117 	rsb	r1, r1, r7, lsr #16
d0080fc0:	9f12      	ldr	r7, [sp, #72]	; 0x48
d0080fc2:	eb0c 0c4c 	add.w	ip, ip, ip, lsl #1
d0080fc6:	fba2 5707 	umull	r5, r7, r2, r7
d0080fca:	9a1c      	ldr	r2, [sp, #112]	; 0x70
d0080fcc:	9d06      	ldr	r5, [sp, #24]
d0080fce:	fb09 f902 	mul.w	r9, r9, r2
d0080fd2:	4a19      	ldr	r2, [pc, #100]	; (d0081038 <main+0x8e0>)
d0080fd4:	941c      	str	r4, [sp, #112]	; 0x70
d0080fd6:	093f      	lsrs	r7, r7, #4
d0080fd8:	f8cd 901c 	str.w	r9, [sp, #28]
d0080fdc:	ebc6 4915 	rsb	r9, r6, r5, lsr #16
d0080fe0:	9d11      	ldr	r5, [sp, #68]	; 0x44
d0080fe2:	ebc7 1707 	rsb	r7, r7, r7, lsl #4
d0080fe6:	f8cd 9018 	str.w	r9, [sp, #24]
d0080fea:	46a9      	mov	r9, r5
d0080fec:	9d10      	ldr	r5, [sp, #64]	; 0x40
d0080fee:	fba2 9609 	umull	r9, r6, r2, r9
d0080ff2:	46a9      	mov	r9, r5
d0080ff4:	fba3 5909 	umull	r5, r9, r3, r9
d0080ff8:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
d0080ffa:	09b6      	lsrs	r6, r6, #6
d0080ffc:	462c      	mov	r4, r5
d0080ffe:	ea4f 0959 	mov.w	r9, r9, lsr #1
d0081002:	ebc6 1606 	rsb	r6, r6, r6, lsl #4
d0081006:	fba2 4504 	umull	r4, r5, r2, r4
d008100a:	9c13      	ldr	r4, [sp, #76]	; 0x4c
d008100c:	9a0e      	ldr	r2, [sp, #56]	; 0x38
d008100e:	eb09 0949 	add.w	r9, r9, r9, lsl #1
d0081012:	eba4 0c0c 	sub.w	ip, r4, ip
d0081016:	f8cd 8058 	str.w	r8, [sp, #88]	; 0x58
d008101a:	4614      	mov	r4, r2
d008101c:	e012      	b.n	d0081044 <main+0x8ec>
d008101e:	bf00      	nop
d0081020:	d008a844 	.word	0xd008a844
d0081024:	d008a6c0 	.word	0xd008a6c0
d0081028:	d008a840 	.word	0xd008a840
d008102c:	41c64e6d 	.word	0x41c64e6d
d0081030:	b60b60b7 	.word	0xb60b60b7
d0081034:	08fb823f 	.word	0x08fb823f
d0081038:	88888889 	.word	0x88888889
d008103c:	aaaaaaab 	.word	0xaaaaaaab
d0081040:	d008a74c 	.word	0xd008a74c
d0081044:	4ad4      	ldr	r2, [pc, #848]	; (d0081398 <main+0xc40>)
d0081046:	f8cd e054 	str.w	lr, [sp, #84]	; 0x54
d008104a:	f100 0e54 	add.w	lr, r0, #84	; 0x54
d008104e:	fba2 2404 	umull	r2, r4, r2, r4
d0081052:	9a0d      	ldr	r2, [sp, #52]	; 0x34
d0081054:	980c      	ldr	r0, [sp, #48]	; 0x30
d0081056:	092d      	lsrs	r5, r5, #4
d0081058:	4690      	mov	r8, r2
d008105a:	f8cd e04c 	str.w	lr, [sp, #76]	; 0x4c
d008105e:	4686      	mov	lr, r0
d0081060:	ebc5 1505 	rsb	r5, r5, r5, lsl #4
d0081064:	fba3 2808 	umull	r2, r8, r3, r8
d0081068:	9a10      	ldr	r2, [sp, #64]	; 0x40
d008106a:	09a4      	lsrs	r4, r4, #6
d008106c:	f10c 0c01 	add.w	ip, ip, #1
d0081070:	eba2 0909 	sub.w	r9, r2, r9
d0081074:	4ac8      	ldr	r2, [pc, #800]	; (d0081398 <main+0xc40>)
d0081076:	ea4f 0858 	mov.w	r8, r8, lsr #1
d008107a:	fba2 e00e 	umull	lr, r0, r2, lr
d008107e:	f501 7e3b 	add.w	lr, r1, #748	; 0x2ec
d0081082:	9a1a      	ldr	r2, [sp, #104]	; 0x68
d0081084:	eb08 0848 	add.w	r8, r8, r8, lsl #1
d0081088:	f8cd e050 	str.w	lr, [sp, #80]	; 0x50
d008108c:	ebc4 1404 	rsb	r4, r4, r4, lsl #4
d0081090:	4696      	mov	lr, r2
d0081092:	4ac1      	ldr	r2, [pc, #772]	; (d0081398 <main+0xc40>)
d0081094:	0900      	lsrs	r0, r0, #4
d0081096:	f109 0901 	add.w	r9, r9, #1
d008109a:	fba2 1e0e 	umull	r1, lr, r2, lr
d008109e:	9918      	ldr	r1, [sp, #96]	; 0x60
d00810a0:	ebc0 1000 	rsb	r0, r0, r0, lsl #4
d00810a4:	fba2 1201 	umull	r1, r2, r2, r1
d00810a8:	9912      	ldr	r1, [sp, #72]	; 0x48
d00810aa:	ea4f 1e9e 	mov.w	lr, lr, lsr #6
d00810ae:	eba1 0747 	sub.w	r7, r1, r7, lsl #1
d00810b2:	990d      	ldr	r1, [sp, #52]	; 0x34
d00810b4:	0912      	lsrs	r2, r2, #4
d00810b6:	f8cd 9034 	str.w	r9, [sp, #52]	; 0x34
d00810ba:	eba1 0808 	sub.w	r8, r1, r8
d00810be:	9919      	ldr	r1, [sp, #100]	; 0x64
d00810c0:	ebce 1e0e 	rsb	lr, lr, lr, lsl #4
d00810c4:	370a      	adds	r7, #10
d00810c6:	fba3 3101 	umull	r3, r1, r3, r1
d00810ca:	9b06      	ldr	r3, [sp, #24]
d00810cc:	f108 0801 	add.w	r8, r8, #1
d00810d0:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
d00810d4:	f503 7328 	add.w	r3, r3, #672	; 0x2a0
d00810d8:	0849      	lsrs	r1, r1, #1
d00810da:	f8cd 8018 	str.w	r8, [sp, #24]
d00810de:	9310      	str	r3, [sp, #64]	; 0x40
d00810e0:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d00810e4:	9b11      	ldr	r3, [sp, #68]	; 0x44
d00810e6:	eba3 06c6 	sub.w	r6, r3, r6, lsl #3
d00810ea:	9b1c      	ldr	r3, [sp, #112]	; 0x70
d00810ec:	f8ab 3030 	strh.w	r3, [fp, #48]	; 0x30
d00810f0:	3648      	adds	r6, #72	; 0x48
d00810f2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d00810f4:	eba3 0545 	sub.w	r5, r3, r5, lsl #1
d00810f8:	9b19      	ldr	r3, [sp, #100]	; 0x64
d00810fa:	1a59      	subs	r1, r3, r1
d00810fc:	9b0e      	ldr	r3, [sp, #56]	; 0x38
d00810fe:	350a      	adds	r5, #10
d0081100:	eba3 04c4 	sub.w	r4, r3, r4, lsl #3
d0081104:	9b08      	ldr	r3, [sp, #32]
d0081106:	3101      	adds	r1, #1
d0081108:	4698      	mov	r8, r3
d008110a:	9b05      	ldr	r3, [sp, #20]
d008110c:	343c      	adds	r4, #60	; 0x3c
d008110e:	ebc8 4813 	rsb	r8, r8, r3, lsr #16
d0081112:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d0081114:	eba3 0040 	sub.w	r0, r3, r0, lsl #1
d0081118:	9b07      	ldr	r3, [sp, #28]
d008111a:	f508 7815 	add.w	r8, r8, #596	; 0x254
d008111e:	4699      	mov	r9, r3
d0081120:	300a      	adds	r0, #10
d0081122:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
d0081124:	9005      	str	r0, [sp, #20]
d0081126:	ebc9 4913 	rsb	r9, r9, r3, lsr #16
d008112a:	9818      	ldr	r0, [sp, #96]	; 0x60
d008112c:	9b1a      	ldr	r3, [sp, #104]	; 0x68
d008112e:	eba0 0242 	sub.w	r2, r0, r2, lsl #1
d0081132:	f9bd 0078 	ldrsh.w	r0, [sp, #120]	; 0x78
d0081136:	eba3 0ece 	sub.w	lr, r3, lr, lsl #3
d008113a:	f8ab 6016 	strh.w	r6, [fp, #22]
d008113e:	9b16      	ldr	r3, [sp, #88]	; 0x58
d0081140:	f509 7902 	add.w	r9, r9, #520	; 0x208
d0081144:	9e10      	ldr	r6, [sp, #64]	; 0x40
d0081146:	f10e 0e6c 	add.w	lr, lr, #108	; 0x6c
d008114a:	f88b 302c 	strb.w	r3, [fp, #44]	; 0x2c
d008114e:	320a      	adds	r2, #10
d0081150:	9b15      	ldr	r3, [sp, #84]	; 0x54
d0081152:	f8ab 6018 	strh.w	r6, [fp, #24]
d0081156:	9e0d      	ldr	r6, [sp, #52]	; 0x34
d0081158:	f88b 302b 	strb.w	r3, [fp, #43]	; 0x2b
d008115c:	f88b 6014 	strb.w	r6, [fp, #20]
d0081160:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d0081162:	9e06      	ldr	r6, [sp, #24]
d0081164:	f8cd e01c 	str.w	lr, [sp, #28]
d0081168:	f8ab 3022 	strh.w	r3, [fp, #34]	; 0x22
d008116c:	f9bd e074 	ldrsh.w	lr, [sp, #116]	; 0x74
d0081170:	9b14      	ldr	r3, [sp, #80]	; 0x50
d0081172:	f88b 701f 	strb.w	r7, [fp, #31]
d0081176:	f88b 6008 	strb.w	r6, [fp, #8]
d008117a:	9f17      	ldr	r7, [sp, #92]	; 0x5c
d008117c:	9e05      	ldr	r6, [sp, #20]
d008117e:	f8ab 3024 	strh.w	r3, [fp, #36]	; 0x24
d0081182:	f88b 5013 	strb.w	r5, [fp, #19]
d0081186:	f8ab 0010 	strh.w	r0, [fp, #16]
d008118a:	f8ab 000e 	strh.w	r0, [fp, #14]
d008118e:	f8ab 400a 	strh.w	r4, [fp, #10]
d0081192:	f88b c020 	strb.w	ip, [fp, #32]
d0081196:	f8ab 701c 	strh.w	r7, [fp, #28]
d008119a:	f8ab 701a 	strh.w	r7, [fp, #26]
d008119e:	f8ab 800c 	strh.w	r8, [fp, #12]
d00811a2:	f88b 6007 	strb.w	r6, [fp, #7]
d00811a6:	f8ab e004 	strh.w	lr, [fp, #4]
d00811aa:	f8ab e002 	strh.w	lr, [fp, #2]
d00811ae:	f8ab 9000 	strh.w	r9, [fp]
d00811b2:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
d00811b4:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00811b6:	9d1f      	ldr	r5, [sp, #124]	; 0x7c
d00811b8:	715c      	strb	r4, [r3, #5]
d00811ba:	72dc      	strb	r4, [r3, #11]
d00811bc:	745c      	strb	r4, [r3, #17]
d00811be:	75dc      	strb	r4, [r3, #23]
d00811c0:	775c      	strb	r4, [r3, #29]
d00811c2:	f883 4023 	strb.w	r4, [r3, #35]	; 0x23
d00811c6:	f883 4029 	strb.w	r4, [r3, #41]	; 0x29
d00811ca:	f883 402f 	strb.w	r4, [r3, #47]	; 0x2f
d00811ce:	4b73      	ldr	r3, [pc, #460]	; (d008139c <main+0xc44>)
d00811d0:	4873      	ldr	r0, [pc, #460]	; (d00813a0 <main+0xc48>)
d00811d2:	f883 4026 	strb.w	r4, [r3, #38]	; 0x26
d00811d6:	721c      	strb	r4, [r3, #8]
d00811d8:	749c      	strb	r4, [r3, #18]
d00811da:	771c      	strb	r4, [r3, #28]
d00811dc:	f883 4030 	strb.w	r4, [r3, #48]	; 0x30
d00811e0:	f883 403a 	strb.w	r4, [r3, #58]	; 0x3a
d00811e4:	f883 4044 	strb.w	r4, [r3, #68]	; 0x44
d00811e8:	f883 404e 	strb.w	r4, [r3, #78]	; 0x4e
d00811ec:	f883 4058 	strb.w	r4, [r3, #88]	; 0x58
d00811f0:	f883 4062 	strb.w	r4, [r3, #98]	; 0x62
d00811f4:	f883 406c 	strb.w	r4, [r3, #108]	; 0x6c
d00811f8:	f883 4076 	strb.w	r4, [r3, #118]	; 0x76
d00811fc:	4b69      	ldr	r3, [pc, #420]	; (d00813a4 <main+0xc4c>)
d00811fe:	f88b 5036 	strb.w	r5, [fp, #54]	; 0x36
d0081202:	719c      	strb	r4, [r3, #6]
d0081204:	739c      	strb	r4, [r3, #14]
d0081206:	759c      	strb	r4, [r3, #22]
d0081208:	779c      	strb	r4, [r3, #30]
d008120a:	f883 4026 	strb.w	r4, [r3, #38]	; 0x26
d008120e:	f883 402e 	strb.w	r4, [r3, #46]	; 0x2e
d0081212:	f883 4036 	strb.w	r4, [r3, #54]	; 0x36
d0081216:	f883 403e 	strb.w	r4, [r3, #62]	; 0x3e
d008121a:	9c0a      	ldr	r4, [sp, #40]	; 0x28
d008121c:	4b62      	ldr	r3, [pc, #392]	; (d00813a8 <main+0xc50>)
d008121e:	6004      	str	r4, [r0, #0]
d0081220:	f88b 2037 	strb.w	r2, [fp, #55]	; 0x37
d0081224:	f04f 0201 	mov.w	r2, #1
d0081228:	9807      	ldr	r0, [sp, #28]
d008122a:	f88b 1038 	strb.w	r1, [fp, #56]	; 0x38
d008122e:	f8ab 003a 	strh.w	r0, [fp, #58]	; 0x3a
d0081232:	701a      	strb	r2, [r3, #0]
d0081234:	4b5d      	ldr	r3, [pc, #372]	; (d00813ac <main+0xc54>)
d0081236:	8819      	ldrh	r1, [r3, #0]
d0081238:	3901      	subs	r1, #1
d008123a:	b209      	sxth	r1, r1
d008123c:	f111 0fa5 	cmn.w	r1, #165	; 0xa5
d0081240:	f2c1 8545 	blt.w	d0082cce <main+0x2576>
d0081244:	8019      	strh	r1, [r3, #0]
d0081246:	f89a 200c 	ldrb.w	r2, [sl, #12]
d008124a:	2576      	movs	r5, #118	; 0x76
d008124c:	f89a 400d 	ldrb.w	r4, [sl, #13]
d0081250:	23a5      	movs	r3, #165	; 0xa5
d0081252:	f89a 000e 	ldrb.w	r0, [sl, #14]
d0081256:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
d008125a:	f89a 400f 	ldrb.w	r4, [sl, #15]
d008125e:	4e54      	ldr	r6, [pc, #336]	; (d00813b0 <main+0xc58>)
d0081260:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d0081264:	2225      	movs	r2, #37	; 0x25
d0081266:	ea40 6404 	orr.w	r4, r0, r4, lsl #24
d008126a:	4852      	ldr	r0, [pc, #328]	; (d00813b4 <main+0xc5c>)
d008126c:	6864      	ldr	r4, [r4, #4]
d008126e:	9500      	str	r5, [sp, #0]
d0081270:	69a4      	ldr	r4, [r4, #24]
d0081272:	47a0      	blx	r4
d0081274:	f89b 2006 	ldrb.w	r2, [fp, #6]
d0081278:	f89b 1008 	ldrb.w	r1, [fp, #8]
d008127c:	f8bb 3000 	ldrh.w	r3, [fp]
d0081280:	3201      	adds	r2, #1
d0081282:	f9b6 6000 	ldrsh.w	r6, [r6]
d0081286:	f002 023f 	and.w	r2, r2, #63	; 0x3f
d008128a:	1a5b      	subs	r3, r3, r1
d008128c:	494a      	ldr	r1, [pc, #296]	; (d00813b8 <main+0xc60>)
d008128e:	2e1d      	cmp	r6, #29
d0081290:	f89b 4007 	ldrb.w	r4, [fp, #7]
d0081294:	b21b      	sxth	r3, r3
d0081296:	5689      	ldrsb	r1, [r1, r2]
d0081298:	f88b 2006 	strb.w	r2, [fp, #6]
d008129c:	bfd8      	it	le
d008129e:	2200      	movle	r2, #0
d00812a0:	fb11 f104 	smulbb	r1, r1, r4
d00812a4:	bfc8      	it	gt
d00812a6:	2201      	movgt	r2, #1
d00812a8:	4d44      	ldr	r5, [pc, #272]	; (d00813bc <main+0xc64>)
d00812aa:	2900      	cmp	r1, #0
d00812ac:	9206      	str	r2, [sp, #24]
d00812ae:	8828      	ldrh	r0, [r5, #0]
d00812b0:	bfb8      	it	lt
d00812b2:	311f      	addlt	r1, #31
d00812b4:	f8bb 2004 	ldrh.w	r2, [fp, #4]
d00812b8:	3001      	adds	r0, #1
d00812ba:	f113 0f20 	cmn.w	r3, #32
d00812be:	eb02 1161 	add.w	r1, r2, r1, asr #5
d00812c2:	9605      	str	r6, [sp, #20]
d00812c4:	b280      	uxth	r0, r0
d00812c6:	f8ab 3000 	strh.w	r3, [fp]
d00812ca:	b20a      	sxth	r2, r1
d00812cc:	b289      	uxth	r1, r1
d00812ce:	9007      	str	r0, [sp, #28]
d00812d0:	8028      	strh	r0, [r5, #0]
d00812d2:	920a      	str	r2, [sp, #40]	; 0x28
d00812d4:	910f      	str	r1, [sp, #60]	; 0x3c
d00812d6:	f8ab 2002 	strh.w	r2, [fp, #2]
d00812da:	da7d      	bge.n	d00813d8 <main+0xc80>
d00812dc:	4b30      	ldr	r3, [pc, #192]	; (d00813a0 <main+0xc48>)
d00812de:	f243 0239 	movw	r2, #12345	; 0x3039
d00812e2:	4c37      	ldr	r4, [pc, #220]	; (d00813c0 <main+0xc68>)
d00812e4:	f04f 0edc 	mov.w	lr, #220	; 0xdc
d00812e8:	681b      	ldr	r3, [r3, #0]
d00812ea:	f04f 0c96 	mov.w	ip, #150	; 0x96
d00812ee:	4620      	mov	r0, r4
d00812f0:	4d34      	ldr	r5, [pc, #208]	; (d00813c4 <main+0xc6c>)
d00812f2:	fb04 2703 	mla	r7, r4, r3, r2
d00812f6:	4b34      	ldr	r3, [pc, #208]	; (d00813c8 <main+0xc70>)
d00812f8:	f8df 90d8 	ldr.w	r9, [pc, #216]	; d00813d4 <main+0xc7c>
d00812fc:	fb04 2607 	mla	r6, r4, r7, r2
d0081300:	0cb9      	lsrs	r1, r7, #18
d0081302:	fb04 2806 	mla	r8, r4, r6, r2
d0081306:	fba3 1301 	umull	r1, r3, r3, r1
d008130a:	fb04 2108 	mla	r1, r4, r8, r2
d008130e:	f3c8 4805 	ubfx	r8, r8, #16, #6
d0081312:	085b      	lsrs	r3, r3, #1
d0081314:	fb04 2401 	mla	r4, r4, r1, r2
d0081318:	0c09      	lsrs	r1, r1, #16
d008131a:	fb0e f303 	mul.w	r3, lr, r3
d008131e:	fb00 2204 	mla	r2, r0, r4, r2
d0081322:	481f      	ldr	r0, [pc, #124]	; (d00813a0 <main+0xc48>)
d0081324:	fba5 5e01 	umull	r5, lr, r5, r1
d0081328:	ebc3 4317 	rsb	r3, r3, r7, lsr #16
d008132c:	0cb5      	lsrs	r5, r6, #18
d008132e:	4f27      	ldr	r7, [pc, #156]	; (d00813cc <main+0xc74>)
d0081330:	0c24      	lsrs	r4, r4, #16
d0081332:	6002      	str	r2, [r0, #0]
d0081334:	fba7 7505 	umull	r7, r5, r7, r5
d0081338:	0c17      	lsrs	r7, r2, #16
d008133a:	f88b 8006 	strb.w	r8, [fp, #6]
d008133e:	ea4f 1e5e 	mov.w	lr, lr, lsr #5
d0081342:	fba9 2007 	umull	r2, r0, r9, r7
d0081346:	4a22      	ldr	r2, [pc, #136]	; (d00813d0 <main+0xc78>)
d0081348:	086d      	lsrs	r5, r5, #1
d008134a:	f503 73fc 	add.w	r3, r3, #504	; 0x1f8
d008134e:	fba2 8204 	umull	r8, r2, r2, r4
d0081352:	f04f 08e4 	mov.w	r8, #228	; 0xe4
d0081356:	eb0e 1e0e 	add.w	lr, lr, lr, lsl #4
d008135a:	0852      	lsrs	r2, r2, #1
d008135c:	fb08 f505 	mul.w	r5, r8, r5
d0081360:	0900      	lsrs	r0, r0, #4
d0081362:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0081366:	fb0c 7010 	mls	r0, ip, r0, r7
d008136a:	eba1 0e4e 	sub.w	lr, r1, lr, lsl #1
d008136e:	1aa2      	subs	r2, r4, r2
d0081370:	ebc5 4516 	rsb	r5, r5, r6, lsr #16
d0081374:	b21b      	sxth	r3, r3
d0081376:	305a      	adds	r0, #90	; 0x5a
d0081378:	f10e 0e0a 	add.w	lr, lr, #10
d008137c:	3201      	adds	r2, #1
d008137e:	352a      	adds	r5, #42	; 0x2a
d0081380:	f8ab 3000 	strh.w	r3, [fp]
d0081384:	f8ab 000a 	strh.w	r0, [fp, #10]
d0081388:	f88b e007 	strb.w	lr, [fp, #7]
d008138c:	f88b 2008 	strb.w	r2, [fp, #8]
d0081390:	f8ab 5004 	strh.w	r5, [fp, #4]
d0081394:	e020      	b.n	d00813d8 <main+0xc80>
d0081396:	bf00      	nop
d0081398:	88888889 	.word	0x88888889
d008139c:	d008a788 	.word	0xd008a788
d00813a0:	d008a6c0 	.word	0xd008a6c0
d00813a4:	d008a800 	.word	0xd008a800
d00813a8:	d008a840 	.word	0xd008a840
d00813ac:	d008a6ae 	.word	0xd008a6ae
d00813b0:	d008a6aa 	.word	0xd008a6aa
d00813b4:	d0084a40 	.word	0xd0084a40
d00813b8:	d008a5b0 	.word	0xd008a5b0
d00813bc:	d008a74a 	.word	0xd008a74a
d00813c0:	41c64e6d 	.word	0x41c64e6d
d00813c4:	f0f0f0f1 	.word	0xf0f0f0f1
d00813c8:	094f2095 	.word	0x094f2095
d00813cc:	08fb823f 	.word	0x08fb823f
d00813d0:	aaaaaaab 	.word	0xaaaaaaab
d00813d4:	1b4e81b5 	.word	0x1b4e81b5
d00813d8:	f5b3 7f43 	cmp.w	r3, #780	; 0x30c
d00813dc:	f281 84e6 	bge.w	d0082dac <main+0x2654>
d00813e0:	9a05      	ldr	r2, [sp, #20]
d00813e2:	429a      	cmp	r2, r3
d00813e4:	f281 84e2 	bge.w	d0082dac <main+0x2654>
d00813e8:	f04f 0e00 	mov.w	lr, #0
d00813ec:	f89b 1012 	ldrb.w	r1, [fp, #18]
d00813f0:	f89b 0014 	ldrb.w	r0, [fp, #20]
d00813f4:	f8bb 200c 	ldrh.w	r2, [fp, #12]
d00813f8:	3101      	adds	r1, #1
d00813fa:	f89b 4013 	ldrb.w	r4, [fp, #19]
d00813fe:	f001 013f 	and.w	r1, r1, #63	; 0x3f
d0081402:	1a12      	subs	r2, r2, r0
d0081404:	48db      	ldr	r0, [pc, #876]	; (d0081774 <main+0x101c>)
d0081406:	f88b 1012 	strb.w	r1, [fp, #18]
d008140a:	b212      	sxth	r2, r2
d008140c:	5640      	ldrsb	r0, [r0, r1]
d008140e:	f8ab 200c 	strh.w	r2, [fp, #12]
d0081412:	fb10 f104 	smulbb	r1, r0, r4
d0081416:	f8bb 0010 	ldrh.w	r0, [fp, #16]
d008141a:	2900      	cmp	r1, #0
d008141c:	bfb8      	it	lt
d008141e:	311f      	addlt	r1, #31
d0081420:	f112 0f20 	cmn.w	r2, #32
d0081424:	eb00 1161 	add.w	r1, r0, r1, asr #5
d0081428:	b208      	sxth	r0, r1
d008142a:	b289      	uxth	r1, r1
d008142c:	900b      	str	r0, [sp, #44]	; 0x2c
d008142e:	9110      	str	r1, [sp, #64]	; 0x40
d0081430:	f8ab 000e 	strh.w	r0, [fp, #14]
d0081434:	da5c      	bge.n	d00814f0 <main+0xd98>
d0081436:	4ad0      	ldr	r2, [pc, #832]	; (d0081778 <main+0x1020>)
d0081438:	f243 0139 	movw	r1, #12345	; 0x3039
d008143c:	4dcf      	ldr	r5, [pc, #828]	; (d008177c <main+0x1024>)
d008143e:	f04f 08dc 	mov.w	r8, #220	; 0xdc
d0081442:	6812      	ldr	r2, [r2, #0]
d0081444:	4628      	mov	r0, r5
d0081446:	4ece      	ldr	r6, [pc, #824]	; (d0081780 <main+0x1028>)
d0081448:	fb05 1c02 	mla	ip, r5, r2, r1
d008144c:	4acd      	ldr	r2, [pc, #820]	; (d0081784 <main+0x102c>)
d008144e:	fb05 170c 	mla	r7, r5, ip, r1
d0081452:	ea4f 449c 	mov.w	r4, ip, lsr #18
d0081456:	fb05 1907 	mla	r9, r5, r7, r1
d008145a:	fba2 4204 	umull	r4, r2, r2, r4
d008145e:	fb05 1409 	mla	r4, r5, r9, r1
d0081462:	f3c9 4905 	ubfx	r9, r9, #16, #6
d0081466:	0852      	lsrs	r2, r2, #1
d0081468:	fb05 1504 	mla	r5, r5, r4, r1
d008146c:	0c24      	lsrs	r4, r4, #16
d008146e:	fb08 f202 	mul.w	r2, r8, r2
d0081472:	fb00 1105 	mla	r1, r0, r5, r1
d0081476:	48c4      	ldr	r0, [pc, #784]	; (d0081788 <main+0x1030>)
d0081478:	fba6 6804 	umull	r6, r8, r6, r4
d008147c:	0cbe      	lsrs	r6, r7, #18
d008147e:	ebc2 421c 	rsb	r2, r2, ip, lsr #16
d0081482:	f88b 9012 	strb.w	r9, [fp, #18]
d0081486:	fba0 c606 	umull	ip, r6, r0, r6
d008148a:	48bb      	ldr	r0, [pc, #748]	; (d0081778 <main+0x1020>)
d008148c:	ea4f 4c11 	mov.w	ip, r1, lsr #16
d0081490:	f502 72fc 	add.w	r2, r2, #504	; 0x1f8
d0081494:	6001      	str	r1, [r0, #0]
d0081496:	0c2d      	lsrs	r5, r5, #16
d0081498:	49bc      	ldr	r1, [pc, #752]	; (d008178c <main+0x1034>)
d008149a:	ea4f 1858 	mov.w	r8, r8, lsr #5
d008149e:	0876      	lsrs	r6, r6, #1
d00814a0:	fba1 100c 	umull	r1, r0, r1, ip
d00814a4:	49ba      	ldr	r1, [pc, #744]	; (d0081790 <main+0x1038>)
d00814a6:	eb08 1808 	add.w	r8, r8, r8, lsl #4
d00814aa:	fba1 9105 	umull	r9, r1, r1, r5
d00814ae:	0900      	lsrs	r0, r0, #4
d00814b0:	f04f 0996 	mov.w	r9, #150	; 0x96
d00814b4:	eba4 0848 	sub.w	r8, r4, r8, lsl #1
d00814b8:	0849      	lsrs	r1, r1, #1
d00814ba:	fb09 c010 	mls	r0, r9, r0, ip
d00814be:	f04f 09e4 	mov.w	r9, #228	; 0xe4
d00814c2:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d00814c6:	f108 080a 	add.w	r8, r8, #10
d00814ca:	fb09 f606 	mul.w	r6, r9, r6
d00814ce:	b212      	sxth	r2, r2
d00814d0:	1a69      	subs	r1, r5, r1
d00814d2:	305a      	adds	r0, #90	; 0x5a
d00814d4:	ebc6 4617 	rsb	r6, r6, r7, lsr #16
d00814d8:	f8ab 200c 	strh.w	r2, [fp, #12]
d00814dc:	3101      	adds	r1, #1
d00814de:	f8ab 0016 	strh.w	r0, [fp, #22]
d00814e2:	362a      	adds	r6, #42	; 0x2a
d00814e4:	f88b 8013 	strb.w	r8, [fp, #19]
d00814e8:	f88b 1014 	strb.w	r1, [fp, #20]
d00814ec:	f8ab 6010 	strh.w	r6, [fp, #16]
d00814f0:	9905      	ldr	r1, [sp, #20]
d00814f2:	4291      	cmp	r1, r2
d00814f4:	f281 8463 	bge.w	d0082dbe <main+0x2666>
d00814f8:	429a      	cmp	r2, r3
d00814fa:	f281 8460 	bge.w	d0082dbe <main+0x2666>
d00814fe:	f04f 0e01 	mov.w	lr, #1
d0081502:	f89b 101e 	ldrb.w	r1, [fp, #30]
d0081506:	f89b 0020 	ldrb.w	r0, [fp, #32]
d008150a:	f8bb 3018 	ldrh.w	r3, [fp, #24]
d008150e:	3101      	adds	r1, #1
d0081510:	f89b 401f 	ldrb.w	r4, [fp, #31]
d0081514:	f001 013f 	and.w	r1, r1, #63	; 0x3f
d0081518:	1a1b      	subs	r3, r3, r0
d008151a:	4896      	ldr	r0, [pc, #600]	; (d0081774 <main+0x101c>)
d008151c:	b21b      	sxth	r3, r3
d008151e:	f88b 101e 	strb.w	r1, [fp, #30]
d0081522:	5640      	ldrsb	r0, [r0, r1]
d0081524:	f8ab 3018 	strh.w	r3, [fp, #24]
d0081528:	fb10 f004 	smulbb	r0, r0, r4
d008152c:	f8bb 401c 	ldrh.w	r4, [fp, #28]
d0081530:	2800      	cmp	r0, #0
d0081532:	bfb8      	it	lt
d0081534:	301f      	addlt	r0, #31
d0081536:	f113 0f20 	cmn.w	r3, #32
d008153a:	eb04 1060 	add.w	r0, r4, r0, asr #5
d008153e:	b201      	sxth	r1, r0
d0081540:	b280      	uxth	r0, r0
d0081542:	910c      	str	r1, [sp, #48]	; 0x30
d0081544:	9011      	str	r0, [sp, #68]	; 0x44
d0081546:	f8ab 101a 	strh.w	r1, [fp, #26]
d008154a:	da5c      	bge.n	d0081606 <main+0xeae>
d008154c:	4b8a      	ldr	r3, [pc, #552]	; (d0081778 <main+0x1020>)
d008154e:	f243 0139 	movw	r1, #12345	; 0x3039
d0081552:	4d8a      	ldr	r5, [pc, #552]	; (d008177c <main+0x1024>)
d0081554:	f04f 08dc 	mov.w	r8, #220	; 0xdc
d0081558:	681b      	ldr	r3, [r3, #0]
d008155a:	4628      	mov	r0, r5
d008155c:	4e88      	ldr	r6, [pc, #544]	; (d0081780 <main+0x1028>)
d008155e:	fb05 1c03 	mla	ip, r5, r3, r1
d0081562:	4b88      	ldr	r3, [pc, #544]	; (d0081784 <main+0x102c>)
d0081564:	fb05 170c 	mla	r7, r5, ip, r1
d0081568:	ea4f 449c 	mov.w	r4, ip, lsr #18
d008156c:	fb05 1907 	mla	r9, r5, r7, r1
d0081570:	fba3 4304 	umull	r4, r3, r3, r4
d0081574:	fb05 1409 	mla	r4, r5, r9, r1
d0081578:	f3c9 4905 	ubfx	r9, r9, #16, #6
d008157c:	085b      	lsrs	r3, r3, #1
d008157e:	fb05 1504 	mla	r5, r5, r4, r1
d0081582:	0c24      	lsrs	r4, r4, #16
d0081584:	fb08 f303 	mul.w	r3, r8, r3
d0081588:	fb00 1105 	mla	r1, r0, r5, r1
d008158c:	487e      	ldr	r0, [pc, #504]	; (d0081788 <main+0x1030>)
d008158e:	fba6 6804 	umull	r6, r8, r6, r4
d0081592:	0cbe      	lsrs	r6, r7, #18
d0081594:	ebc3 431c 	rsb	r3, r3, ip, lsr #16
d0081598:	f88b 901e 	strb.w	r9, [fp, #30]
d008159c:	fba0 c606 	umull	ip, r6, r0, r6
d00815a0:	4875      	ldr	r0, [pc, #468]	; (d0081778 <main+0x1020>)
d00815a2:	ea4f 4c11 	mov.w	ip, r1, lsr #16
d00815a6:	f503 73fc 	add.w	r3, r3, #504	; 0x1f8
d00815aa:	6001      	str	r1, [r0, #0]
d00815ac:	0c2d      	lsrs	r5, r5, #16
d00815ae:	4977      	ldr	r1, [pc, #476]	; (d008178c <main+0x1034>)
d00815b0:	ea4f 1858 	mov.w	r8, r8, lsr #5
d00815b4:	0876      	lsrs	r6, r6, #1
d00815b6:	fba1 100c 	umull	r1, r0, r1, ip
d00815ba:	4975      	ldr	r1, [pc, #468]	; (d0081790 <main+0x1038>)
d00815bc:	eb08 1808 	add.w	r8, r8, r8, lsl #4
d00815c0:	fba1 9105 	umull	r9, r1, r1, r5
d00815c4:	0900      	lsrs	r0, r0, #4
d00815c6:	f04f 0996 	mov.w	r9, #150	; 0x96
d00815ca:	eba4 0848 	sub.w	r8, r4, r8, lsl #1
d00815ce:	0849      	lsrs	r1, r1, #1
d00815d0:	fb09 c010 	mls	r0, r9, r0, ip
d00815d4:	f04f 09e4 	mov.w	r9, #228	; 0xe4
d00815d8:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d00815dc:	f108 080a 	add.w	r8, r8, #10
d00815e0:	fb09 f606 	mul.w	r6, r9, r6
d00815e4:	b21b      	sxth	r3, r3
d00815e6:	1a69      	subs	r1, r5, r1
d00815e8:	305a      	adds	r0, #90	; 0x5a
d00815ea:	ebc6 4617 	rsb	r6, r6, r7, lsr #16
d00815ee:	f8ab 3018 	strh.w	r3, [fp, #24]
d00815f2:	3101      	adds	r1, #1
d00815f4:	f8ab 0022 	strh.w	r0, [fp, #34]	; 0x22
d00815f8:	362a      	adds	r6, #42	; 0x2a
d00815fa:	f88b 801f 	strb.w	r8, [fp, #31]
d00815fe:	f88b 1020 	strb.w	r1, [fp, #32]
d0081602:	f8ab 601c 	strh.w	r6, [fp, #28]
d0081606:	9905      	ldr	r1, [sp, #20]
d0081608:	4299      	cmp	r1, r3
d008160a:	f281 83d5 	bge.w	d0082db8 <main+0x2660>
d008160e:	4293      	cmp	r3, r2
d0081610:	f281 83d2 	bge.w	d0082db8 <main+0x2660>
d0081614:	f04f 0e02 	mov.w	lr, #2
d0081618:	f89b 102a 	ldrb.w	r1, [fp, #42]	; 0x2a
d008161c:	f89b 002c 	ldrb.w	r0, [fp, #44]	; 0x2c
d0081620:	f8bb 2024 	ldrh.w	r2, [fp, #36]	; 0x24
d0081624:	3101      	adds	r1, #1
d0081626:	f89b 402b 	ldrb.w	r4, [fp, #43]	; 0x2b
d008162a:	f001 013f 	and.w	r1, r1, #63	; 0x3f
d008162e:	1a12      	subs	r2, r2, r0
d0081630:	4850      	ldr	r0, [pc, #320]	; (d0081774 <main+0x101c>)
d0081632:	b212      	sxth	r2, r2
d0081634:	f88b 102a 	strb.w	r1, [fp, #42]	; 0x2a
d0081638:	5640      	ldrsb	r0, [r0, r1]
d008163a:	f8ab 2024 	strh.w	r2, [fp, #36]	; 0x24
d008163e:	fb10 f004 	smulbb	r0, r0, r4
d0081642:	f8bb 4028 	ldrh.w	r4, [fp, #40]	; 0x28
d0081646:	2800      	cmp	r0, #0
d0081648:	bfb8      	it	lt
d008164a:	301f      	addlt	r0, #31
d008164c:	f112 0f20 	cmn.w	r2, #32
d0081650:	eb04 1060 	add.w	r0, r4, r0, asr #5
d0081654:	b201      	sxth	r1, r0
d0081656:	b280      	uxth	r0, r0
d0081658:	910d      	str	r1, [sp, #52]	; 0x34
d008165a:	9012      	str	r0, [sp, #72]	; 0x48
d008165c:	f8ab 1026 	strh.w	r1, [fp, #38]	; 0x26
d0081660:	da5c      	bge.n	d008171c <main+0xfc4>
d0081662:	4a45      	ldr	r2, [pc, #276]	; (d0081778 <main+0x1020>)
d0081664:	f243 0139 	movw	r1, #12345	; 0x3039
d0081668:	4d44      	ldr	r5, [pc, #272]	; (d008177c <main+0x1024>)
d008166a:	f04f 08dc 	mov.w	r8, #220	; 0xdc
d008166e:	6812      	ldr	r2, [r2, #0]
d0081670:	4628      	mov	r0, r5
d0081672:	4e43      	ldr	r6, [pc, #268]	; (d0081780 <main+0x1028>)
d0081674:	fb05 1c02 	mla	ip, r5, r2, r1
d0081678:	4a42      	ldr	r2, [pc, #264]	; (d0081784 <main+0x102c>)
d008167a:	fb05 170c 	mla	r7, r5, ip, r1
d008167e:	ea4f 449c 	mov.w	r4, ip, lsr #18
d0081682:	fb05 1907 	mla	r9, r5, r7, r1
d0081686:	fba2 4204 	umull	r4, r2, r2, r4
d008168a:	fb05 1409 	mla	r4, r5, r9, r1
d008168e:	f3c9 4905 	ubfx	r9, r9, #16, #6
d0081692:	0852      	lsrs	r2, r2, #1
d0081694:	fb05 1504 	mla	r5, r5, r4, r1
d0081698:	0c24      	lsrs	r4, r4, #16
d008169a:	fb08 f202 	mul.w	r2, r8, r2
d008169e:	fb00 1105 	mla	r1, r0, r5, r1
d00816a2:	4839      	ldr	r0, [pc, #228]	; (d0081788 <main+0x1030>)
d00816a4:	fba6 6804 	umull	r6, r8, r6, r4
d00816a8:	0cbe      	lsrs	r6, r7, #18
d00816aa:	ebc2 421c 	rsb	r2, r2, ip, lsr #16
d00816ae:	f88b 902a 	strb.w	r9, [fp, #42]	; 0x2a
d00816b2:	fba0 c606 	umull	ip, r6, r0, r6
d00816b6:	4830      	ldr	r0, [pc, #192]	; (d0081778 <main+0x1020>)
d00816b8:	ea4f 4c11 	mov.w	ip, r1, lsr #16
d00816bc:	f502 72fc 	add.w	r2, r2, #504	; 0x1f8
d00816c0:	6001      	str	r1, [r0, #0]
d00816c2:	0c2d      	lsrs	r5, r5, #16
d00816c4:	4931      	ldr	r1, [pc, #196]	; (d008178c <main+0x1034>)
d00816c6:	ea4f 1858 	mov.w	r8, r8, lsr #5
d00816ca:	0876      	lsrs	r6, r6, #1
d00816cc:	fba1 100c 	umull	r1, r0, r1, ip
d00816d0:	492f      	ldr	r1, [pc, #188]	; (d0081790 <main+0x1038>)
d00816d2:	eb08 1808 	add.w	r8, r8, r8, lsl #4
d00816d6:	fba1 9105 	umull	r9, r1, r1, r5
d00816da:	0900      	lsrs	r0, r0, #4
d00816dc:	f04f 0996 	mov.w	r9, #150	; 0x96
d00816e0:	eba4 0848 	sub.w	r8, r4, r8, lsl #1
d00816e4:	0849      	lsrs	r1, r1, #1
d00816e6:	fb09 c010 	mls	r0, r9, r0, ip
d00816ea:	f04f 09e4 	mov.w	r9, #228	; 0xe4
d00816ee:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d00816f2:	f108 080a 	add.w	r8, r8, #10
d00816f6:	fb09 f606 	mul.w	r6, r9, r6
d00816fa:	b212      	sxth	r2, r2
d00816fc:	1a69      	subs	r1, r5, r1
d00816fe:	305a      	adds	r0, #90	; 0x5a
d0081700:	ebc6 4617 	rsb	r6, r6, r7, lsr #16
d0081704:	f8ab 2024 	strh.w	r2, [fp, #36]	; 0x24
d0081708:	3101      	adds	r1, #1
d008170a:	f8ab 002e 	strh.w	r0, [fp, #46]	; 0x2e
d008170e:	362a      	adds	r6, #42	; 0x2a
d0081710:	f88b 802b 	strb.w	r8, [fp, #43]	; 0x2b
d0081714:	f88b 102c 	strb.w	r1, [fp, #44]	; 0x2c
d0081718:	f8ab 6028 	strh.w	r6, [fp, #40]	; 0x28
d008171c:	429a      	cmp	r2, r3
d008171e:	f281 8339 	bge.w	d0082d94 <main+0x263c>
d0081722:	9905      	ldr	r1, [sp, #20]
d0081724:	4291      	cmp	r1, r2
d0081726:	f281 8335 	bge.w	d0082d94 <main+0x263c>
d008172a:	f04f 0e03 	mov.w	lr, #3
d008172e:	f89b 1036 	ldrb.w	r1, [fp, #54]	; 0x36
d0081732:	4810      	ldr	r0, [pc, #64]	; (d0081774 <main+0x101c>)
d0081734:	3101      	adds	r1, #1
d0081736:	f89b 4037 	ldrb.w	r4, [fp, #55]	; 0x37
d008173a:	f8bb 3030 	ldrh.w	r3, [fp, #48]	; 0x30
d008173e:	f001 013f 	and.w	r1, r1, #63	; 0x3f
d0081742:	f89b 6038 	ldrb.w	r6, [fp, #56]	; 0x38
d0081746:	5640      	ldrsb	r0, [r0, r1]
d0081748:	1b9b      	subs	r3, r3, r6
d008174a:	f88b 1036 	strb.w	r1, [fp, #54]	; 0x36
d008174e:	fb10 f004 	smulbb	r0, r0, r4
d0081752:	f8bb 4034 	ldrh.w	r4, [fp, #52]	; 0x34
d0081756:	b21b      	sxth	r3, r3
d0081758:	2800      	cmp	r0, #0
d008175a:	f8ab 3030 	strh.w	r3, [fp, #48]	; 0x30
d008175e:	bfb8      	it	lt
d0081760:	301f      	addlt	r0, #31
d0081762:	f113 0f20 	cmn.w	r3, #32
d0081766:	eb04 1060 	add.w	r0, r4, r0, asr #5
d008176a:	b201      	sxth	r1, r0
d008176c:	b280      	uxth	r0, r0
d008176e:	910e      	str	r1, [sp, #56]	; 0x38
d0081770:	e010      	b.n	d0081794 <main+0x103c>
d0081772:	bf00      	nop
d0081774:	d008a5b0 	.word	0xd008a5b0
d0081778:	d008a6c0 	.word	0xd008a6c0
d008177c:	41c64e6d 	.word	0x41c64e6d
d0081780:	f0f0f0f1 	.word	0xf0f0f0f1
d0081784:	094f2095 	.word	0x094f2095
d0081788:	08fb823f 	.word	0x08fb823f
d008178c:	1b4e81b5 	.word	0x1b4e81b5
d0081790:	aaaaaaab 	.word	0xaaaaaaab
d0081794:	9013      	str	r0, [sp, #76]	; 0x4c
d0081796:	f8ab 1032 	strh.w	r1, [fp, #50]	; 0x32
d008179a:	da5a      	bge.n	d0081852 <main+0x10fa>
d008179c:	4b79      	ldr	r3, [pc, #484]	; (d0081984 <main+0x122c>)
d008179e:	f243 0539 	movw	r5, #12345	; 0x3039
d00817a2:	4c79      	ldr	r4, [pc, #484]	; (d0081988 <main+0x1230>)
d00817a4:	f04f 09dc 	mov.w	r9, #220	; 0xdc
d00817a8:	681e      	ldr	r6, [r3, #0]
d00817aa:	4b78      	ldr	r3, [pc, #480]	; (d008198c <main+0x1234>)
d00817ac:	fb04 5606 	mla	r6, r4, r6, r5
d00817b0:	4877      	ldr	r0, [pc, #476]	; (d0081990 <main+0x1238>)
d00817b2:	fb04 5c06 	mla	ip, r4, r6, r5
d00817b6:	0cb1      	lsrs	r1, r6, #18
d00817b8:	fb04 570c 	mla	r7, r4, ip, r5
d00817bc:	fba3 1301 	umull	r1, r3, r3, r1
d00817c0:	fb04 5107 	mla	r1, r4, r7, r5
d00817c4:	f3c7 4705 	ubfx	r7, r7, #16, #6
d00817c8:	085b      	lsrs	r3, r3, #1
d00817ca:	fb04 5801 	mla	r8, r4, r1, r5
d00817ce:	0c09      	lsrs	r1, r1, #16
d00817d0:	fb09 f303 	mul.w	r3, r9, r3
d00817d4:	fb04 5508 	mla	r5, r4, r8, r5
d00817d8:	4c6e      	ldr	r4, [pc, #440]	; (d0081994 <main+0x123c>)
d00817da:	f88b 7036 	strb.w	r7, [fp, #54]	; 0x36
d00817de:	ebc3 4316 	rsb	r3, r3, r6, lsr #16
d00817e2:	fba4 9401 	umull	r9, r4, r4, r1
d00817e6:	4f6c      	ldr	r7, [pc, #432]	; (d0081998 <main+0x1240>)
d00817e8:	ea4f 499c 	mov.w	r9, ip, lsr #18
d00817ec:	4e65      	ldr	r6, [pc, #404]	; (d0081984 <main+0x122c>)
d00817ee:	ea4f 4818 	mov.w	r8, r8, lsr #16
d00817f2:	f503 73fc 	add.w	r3, r3, #504	; 0x1f8
d00817f6:	fba7 7909 	umull	r7, r9, r7, r9
d00817fa:	0c2f      	lsrs	r7, r5, #16
d00817fc:	6035      	str	r5, [r6, #0]
d00817fe:	0964      	lsrs	r4, r4, #5
d0081800:	fba0 5007 	umull	r5, r0, r0, r7
d0081804:	4d65      	ldr	r5, [pc, #404]	; (d008199c <main+0x1244>)
d0081806:	ea4f 0959 	mov.w	r9, r9, lsr #1
d008180a:	fba5 6508 	umull	r6, r5, r5, r8
d008180e:	0900      	lsrs	r0, r0, #4
d0081810:	2696      	movs	r6, #150	; 0x96
d0081812:	eb04 1404 	add.w	r4, r4, r4, lsl #4
d0081816:	086d      	lsrs	r5, r5, #1
d0081818:	fb06 7010 	mls	r0, r6, r0, r7
d008181c:	26e4      	movs	r6, #228	; 0xe4
d008181e:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0081822:	fb06 f909 	mul.w	r9, r6, r9
d0081826:	eba1 0444 	sub.w	r4, r1, r4, lsl #1
d008182a:	eba8 0505 	sub.w	r5, r8, r5
d008182e:	b21b      	sxth	r3, r3
d0081830:	ebc9 491c 	rsb	r9, r9, ip, lsr #16
d0081834:	305a      	adds	r0, #90	; 0x5a
d0081836:	340a      	adds	r4, #10
d0081838:	3501      	adds	r5, #1
d008183a:	f109 092a 	add.w	r9, r9, #42	; 0x2a
d008183e:	f8ab 3030 	strh.w	r3, [fp, #48]	; 0x30
d0081842:	f8ab 003a 	strh.w	r0, [fp, #58]	; 0x3a
d0081846:	f88b 4037 	strb.w	r4, [fp, #55]	; 0x37
d008184a:	f88b 5038 	strb.w	r5, [fp, #56]	; 0x38
d008184e:	f8ab 9034 	strh.w	r9, [fp, #52]	; 0x34
d0081852:	4293      	cmp	r3, r2
d0081854:	f281 8294 	bge.w	d0082d80 <main+0x2628>
d0081858:	9a05      	ldr	r2, [sp, #20]
d008185a:	429a      	cmp	r2, r3
d008185c:	f281 8290 	bge.w	d0082d80 <main+0x2628>
d0081860:	f04f 0e04 	mov.w	lr, #4
d0081864:	9b07      	ldr	r3, [sp, #28]
d0081866:	4a4e      	ldr	r2, [pc, #312]	; (d00819a0 <main+0x1248>)
d0081868:	f3c3 0385 	ubfx	r3, r3, #2, #6
d008186c:	f9b2 8000 	ldrsh.w	r8, [r2]
d0081870:	4a4c      	ldr	r2, [pc, #304]	; (d00819a4 <main+0x124c>)
d0081872:	fa1f f188 	uxth.w	r1, r8
d0081876:	56d3      	ldrsb	r3, [r2, r3]
d0081878:	f101 0208 	add.w	r2, r1, #8
d008187c:	ebc3 00c3 	rsb	r0, r3, r3, lsl #3
d0081880:	b212      	sxth	r2, r2
d0081882:	eb03 0380 	add.w	r3, r3, r0, lsl #2
d0081886:	9207      	str	r2, [sp, #28]
d0081888:	005b      	lsls	r3, r3, #1
d008188a:	4a47      	ldr	r2, [pc, #284]	; (d00819a8 <main+0x1250>)
d008188c:	bf48      	it	mi
d008188e:	331f      	addmi	r3, #31
d0081890:	115b      	asrs	r3, r3, #5
d0081892:	3378      	adds	r3, #120	; 0x78
d0081894:	b21b      	sxth	r3, r3
d0081896:	8013      	strh	r3, [r2, #0]
d0081898:	9a06      	ldr	r2, [sp, #24]
d008189a:	2a00      	cmp	r2, #0
d008189c:	f001 8211 	beq.w	d0082cc2 <main+0x256a>
d00818a0:	eb0e 034e 	add.w	r3, lr, lr, lsl #1
d00818a4:	eb0b 0383 	add.w	r3, fp, r3, lsl #2
d00818a8:	885b      	ldrh	r3, [r3, #2]
d00818aa:	3307      	adds	r3, #7
d00818ac:	b21b      	sxth	r3, r3
d00818ae:	9805      	ldr	r0, [sp, #20]
d00818b0:	f1a1 062a 	sub.w	r6, r1, #42	; 0x2a
d00818b4:	f101 052a 	add.w	r5, r1, #42	; 0x2a
d00818b8:	4a3c      	ldr	r2, [pc, #240]	; (d00819ac <main+0x1254>)
d00818ba:	f100 075e 	add.w	r7, r0, #94	; 0x5e
d00818be:	b236      	sxth	r6, r6
d00818c0:	b22d      	sxth	r5, r5
d00818c2:	4686      	mov	lr, r0
d00818c4:	f8dd c01c 	ldr.w	ip, [sp, #28]
d00818c8:	7a10      	ldrb	r0, [r2, #8]
d00818ca:	b1a0      	cbz	r0, d00818f6 <main+0x119e>
d00818cc:	f9b2 0000 	ldrsh.w	r0, [r2]
d00818d0:	ebbe 1f20 	cmp.w	lr, r0, asr #4
d00818d4:	ea4f 1420 	mov.w	r4, r0, asr #4
d00818d8:	da0d      	bge.n	d00818f6 <main+0x119e>
d00818da:	42a7      	cmp	r7, r4
d00818dc:	db0b      	blt.n	d00818f6 <main+0x119e>
d00818de:	f9b2 0002 	ldrsh.w	r0, [r2, #2]
d00818e2:	ebcc 1420 	rsb	r4, ip, r0, asr #4
d00818e6:	1100      	asrs	r0, r0, #4
d00818e8:	340f      	adds	r4, #15
d00818ea:	2c1e      	cmp	r4, #30
d00818ec:	d803      	bhi.n	d00818f6 <main+0x119e>
d00818ee:	4584      	cmp	ip, r0
d00818f0:	bfd4      	ite	le
d00818f2:	4633      	movle	r3, r6
d00818f4:	462b      	movgt	r3, r5
d00818f6:	320a      	adds	r2, #10
d00818f8:	482d      	ldr	r0, [pc, #180]	; (d00819b0 <main+0x1258>)
d00818fa:	4290      	cmp	r0, r2
d00818fc:	d1e4      	bne.n	d00818c8 <main+0x1170>
d00818fe:	4a2a      	ldr	r2, [pc, #168]	; (d00819a8 <main+0x1250>)
d0081900:	8013      	strh	r3, [r2, #0]
d0081902:	2b29      	cmp	r3, #41	; 0x29
d0081904:	f301 81d7 	bgt.w	d0082cb6 <main+0x255e>
d0081908:	232a      	movs	r3, #42	; 0x2a
d008190a:	4827      	ldr	r0, [pc, #156]	; (d00819a8 <main+0x1250>)
d008190c:	2228      	movs	r2, #40	; 0x28
d008190e:	8003      	strh	r3, [r0, #0]
d0081910:	4590      	cmp	r8, r2
d0081912:	f281 81c8 	bge.w	d0082ca6 <main+0x254e>
d0081916:	1c8b      	adds	r3, r1, #2
d0081918:	310a      	adds	r1, #10
d008191a:	fa0f f883 	sxth.w	r8, r3
d008191e:	b20b      	sxth	r3, r1
d0081920:	9307      	str	r3, [sp, #28]
d0081922:	4b1f      	ldr	r3, [pc, #124]	; (d00819a0 <main+0x1248>)
d0081924:	f8a3 8000 	strh.w	r8, [r3]
d0081928:	4a22      	ldr	r2, [pc, #136]	; (d00819b4 <main+0x125c>)
d008192a:	7813      	ldrb	r3, [r2, #0]
d008192c:	2b00      	cmp	r3, #0
d008192e:	f001 81ab 	beq.w	d0082c88 <main+0x2530>
d0081932:	3b01      	subs	r3, #1
d0081934:	7013      	strb	r3, [r2, #0]
d0081936:	4b20      	ldr	r3, [pc, #128]	; (d00819b8 <main+0x1260>)
d0081938:	f893 9000 	ldrb.w	r9, [r3]
d008193c:	f1b9 0f00 	cmp.w	r9, #0
d0081940:	d005      	beq.n	d008194e <main+0x11f6>
d0081942:	f109 31ff 	add.w	r1, r9, #4294967295	; 0xffffffff
d0081946:	fa5f f981 	uxtb.w	r9, r1
d008194a:	f883 9000 	strb.w	r9, [r3]
d008194e:	4a1b      	ldr	r2, [pc, #108]	; (d00819bc <main+0x1264>)
d0081950:	7813      	ldrb	r3, [r2, #0]
d0081952:	2b00      	cmp	r3, #0
d0081954:	f001 8144 	beq.w	d0082be0 <main+0x2488>
d0081958:	3b01      	subs	r3, #1
d008195a:	b2db      	uxtb	r3, r3
d008195c:	7013      	strb	r3, [r2, #0]
d008195e:	9a05      	ldr	r2, [sp, #20]
d0081960:	2a1d      	cmp	r2, #29
d0081962:	dd02      	ble.n	d008196a <main+0x1212>
d0081964:	2b00      	cmp	r3, #0
d0081966:	f001 813f 	beq.w	d0082be8 <main+0x2490>
d008196a:	4b06      	ldr	r3, [pc, #24]	; (d0081984 <main+0x122c>)
d008196c:	681b      	ldr	r3, [r3, #0]
d008196e:	9306      	str	r3, [sp, #24]
d0081970:	4c13      	ldr	r4, [pc, #76]	; (d00819c0 <main+0x1268>)
d0081972:	f04f 0e00 	mov.w	lr, #0
d0081976:	4b13      	ldr	r3, [pc, #76]	; (d00819c4 <main+0x126c>)
d0081978:	9409      	str	r4, [sp, #36]	; 0x24
d008197a:	f8d3 c000 	ldr.w	ip, [r3]
d008197e:	4623      	mov	r3, r4
d0081980:	9408      	str	r4, [sp, #32]
d0081982:	e028      	b.n	d00819d6 <main+0x127e>
d0081984:	d008a6c0 	.word	0xd008a6c0
d0081988:	41c64e6d 	.word	0x41c64e6d
d008198c:	094f2095 	.word	0x094f2095
d0081990:	1b4e81b5 	.word	0x1b4e81b5
d0081994:	f0f0f0f1 	.word	0xf0f0f0f1
d0081998:	08fb823f 	.word	0x08fb823f
d008199c:	aaaaaaab 	.word	0xaaaaaaab
d00819a0:	d008a6ac 	.word	0xd008a6ac
d00819a4:	d008a5b0 	.word	0xd008a5b0
d00819a8:	d008a6a8 	.word	0xd008a6a8
d00819ac:	d008a788 	.word	0xd008a788
d00819b0:	d008a800 	.word	0xd008a800
d00819b4:	d008a885 	.word	0xd008a885
d00819b8:	d008a884 	.word	0xd008a884
d00819bc:	d008a6a0 	.word	0xd008a6a0
d00819c0:	d008a844 	.word	0xd008a844
d00819c4:	d008a878 	.word	0xd008a878
d00819c8:	f883 e005 	strb.w	lr, [r3, #5]
d00819cc:	3306      	adds	r3, #6
d00819ce:	4ab9      	ldr	r2, [pc, #740]	; (d0081cb4 <main+0x155c>)
d00819d0:	429a      	cmp	r2, r3
d00819d2:	f000 80fd 	beq.w	d0081bd0 <main+0x1478>
d00819d6:	795a      	ldrb	r2, [r3, #5]
d00819d8:	2a00      	cmp	r2, #0
d00819da:	d0f7      	beq.n	d00819cc <main+0x1274>
d00819dc:	791d      	ldrb	r5, [r3, #4]
d00819de:	2d01      	cmp	r5, #1
d00819e0:	f240 870d 	bls.w	d00827fe <main+0x20a6>
d00819e4:	2d03      	cmp	r5, #3
d00819e6:	f200 86f0 	bhi.w	d00827ca <main+0x2072>
d00819ea:	2703      	movs	r7, #3
d00819ec:	2101      	movs	r1, #1
d00819ee:	2609      	movs	r6, #9
d00819f0:	881a      	ldrh	r2, [r3, #0]
d00819f2:	8858      	ldrh	r0, [r3, #2]
d00819f4:	320a      	adds	r2, #10
d00819f6:	1a40      	subs	r0, r0, r1
d00819f8:	b212      	sxth	r2, r2
d00819fa:	b200      	sxth	r0, r0
d00819fc:	801a      	strh	r2, [r3, #0]
d00819fe:	3501      	adds	r5, #1
d0081a00:	711d      	strb	r5, [r3, #4]
d0081a02:	f5b2 7ff0 	cmp.w	r2, #480	; 0x1e0
d0081a06:	dcdf      	bgt.n	d00819c8 <main+0x1270>
d0081a08:	f9bb 1000 	ldrsh.w	r1, [fp]
d0081a0c:	f101 051f 	add.w	r5, r1, #31
d0081a10:	4295      	cmp	r5, r2
d0081a12:	db0b      	blt.n	d0081a2c <main+0x12d4>
d0081a14:	18b5      	adds	r5, r6, r2
d0081a16:	42a9      	cmp	r1, r5
d0081a18:	da08      	bge.n	d0081a2c <main+0x12d4>
d0081a1a:	9c0a      	ldr	r4, [sp, #40]	; 0x28
d0081a1c:	4625      	mov	r5, r4
d0081a1e:	351f      	adds	r5, #31
d0081a20:	4285      	cmp	r5, r0
d0081a22:	db03      	blt.n	d0081a2c <main+0x12d4>
d0081a24:	183d      	adds	r5, r7, r0
d0081a26:	42ac      	cmp	r4, r5
d0081a28:	f2c1 832f 	blt.w	d008308a <main+0x2932>
d0081a2c:	f9bb 100c 	ldrsh.w	r1, [fp, #12]
d0081a30:	f101 051f 	add.w	r5, r1, #31
d0081a34:	42aa      	cmp	r2, r5
d0081a36:	dc0b      	bgt.n	d0081a50 <main+0x12f8>
d0081a38:	18b5      	adds	r5, r6, r2
d0081a3a:	42a9      	cmp	r1, r5
d0081a3c:	da08      	bge.n	d0081a50 <main+0x12f8>
d0081a3e:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
d0081a40:	4625      	mov	r5, r4
d0081a42:	351f      	adds	r5, #31
d0081a44:	4285      	cmp	r5, r0
d0081a46:	db03      	blt.n	d0081a50 <main+0x12f8>
d0081a48:	183d      	adds	r5, r7, r0
d0081a4a:	42ac      	cmp	r4, r5
d0081a4c:	f2c1 8321 	blt.w	d0083092 <main+0x293a>
d0081a50:	f9bb 1018 	ldrsh.w	r1, [fp, #24]
d0081a54:	f101 051f 	add.w	r5, r1, #31
d0081a58:	42aa      	cmp	r2, r5
d0081a5a:	dc0b      	bgt.n	d0081a74 <main+0x131c>
d0081a5c:	18b5      	adds	r5, r6, r2
d0081a5e:	42a9      	cmp	r1, r5
d0081a60:	da08      	bge.n	d0081a74 <main+0x131c>
d0081a62:	9c0c      	ldr	r4, [sp, #48]	; 0x30
d0081a64:	4625      	mov	r5, r4
d0081a66:	351f      	adds	r5, #31
d0081a68:	4285      	cmp	r5, r0
d0081a6a:	db03      	blt.n	d0081a74 <main+0x131c>
d0081a6c:	183d      	adds	r5, r7, r0
d0081a6e:	42ac      	cmp	r4, r5
d0081a70:	f2c1 8313 	blt.w	d008309a <main+0x2942>
d0081a74:	f9bb 1024 	ldrsh.w	r1, [fp, #36]	; 0x24
d0081a78:	f101 051f 	add.w	r5, r1, #31
d0081a7c:	42aa      	cmp	r2, r5
d0081a7e:	dc0b      	bgt.n	d0081a98 <main+0x1340>
d0081a80:	18b5      	adds	r5, r6, r2
d0081a82:	42a9      	cmp	r1, r5
d0081a84:	da08      	bge.n	d0081a98 <main+0x1340>
d0081a86:	9c0d      	ldr	r4, [sp, #52]	; 0x34
d0081a88:	4625      	mov	r5, r4
d0081a8a:	351f      	adds	r5, #31
d0081a8c:	4285      	cmp	r5, r0
d0081a8e:	db03      	blt.n	d0081a98 <main+0x1340>
d0081a90:	183d      	adds	r5, r7, r0
d0081a92:	42ac      	cmp	r4, r5
d0081a94:	f2c1 8305 	blt.w	d00830a2 <main+0x294a>
d0081a98:	f9bb 1030 	ldrsh.w	r1, [fp, #48]	; 0x30
d0081a9c:	f101 051f 	add.w	r5, r1, #31
d0081aa0:	42aa      	cmp	r2, r5
d0081aa2:	dc93      	bgt.n	d00819cc <main+0x1274>
d0081aa4:	4432      	add	r2, r6
d0081aa6:	4291      	cmp	r1, r2
d0081aa8:	da90      	bge.n	d00819cc <main+0x1274>
d0081aaa:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d0081aac:	4622      	mov	r2, r4
d0081aae:	321f      	adds	r2, #31
d0081ab0:	4282      	cmp	r2, r0
d0081ab2:	db8b      	blt.n	d00819cc <main+0x1274>
d0081ab4:	4438      	add	r0, r7
d0081ab6:	4284      	cmp	r4, r0
d0081ab8:	da88      	bge.n	d00819cc <main+0x1274>
d0081aba:	9d13      	ldr	r5, [sp, #76]	; 0x4c
d0081abc:	2204      	movs	r2, #4
d0081abe:	4c7e      	ldr	r4, [pc, #504]	; (d0081cb8 <main+0x1560>)
d0081ac0:	f10c 0c07 	add.w	ip, ip, #7
d0081ac4:	f883 e005 	strb.w	lr, [r3, #5]
d0081ac8:	79a0      	ldrb	r0, [r4, #6]
d0081aca:	2800      	cmp	r0, #0
d0081acc:	f001 82b1 	beq.w	d0083032 <main+0x28da>
d0081ad0:	7ba0      	ldrb	r0, [r4, #14]
d0081ad2:	2800      	cmp	r0, #0
d0081ad4:	f001 82ac 	beq.w	d0083030 <main+0x28d8>
d0081ad8:	7da0      	ldrb	r0, [r4, #22]
d0081ada:	2800      	cmp	r0, #0
d0081adc:	f001 8472 	beq.w	d00833c4 <main+0x2c6c>
d0081ae0:	7fa0      	ldrb	r0, [r4, #30]
d0081ae2:	2800      	cmp	r0, #0
d0081ae4:	f001 84c7 	beq.w	d0083476 <main+0x2d1e>
d0081ae8:	f894 0026 	ldrb.w	r0, [r4, #38]	; 0x26
d0081aec:	2800      	cmp	r0, #0
d0081aee:	f001 84c4 	beq.w	d008347a <main+0x2d22>
d0081af2:	f894 002e 	ldrb.w	r0, [r4, #46]	; 0x2e
d0081af6:	2800      	cmp	r0, #0
d0081af8:	f001 84c5 	beq.w	d0083486 <main+0x2d2e>
d0081afc:	f894 0036 	ldrb.w	r0, [r4, #54]	; 0x36
d0081b00:	2800      	cmp	r0, #0
d0081b02:	f001 84c4 	beq.w	d008348e <main+0x2d36>
d0081b06:	f894 003e 	ldrb.w	r0, [r4, #62]	; 0x3e
d0081b0a:	2800      	cmp	r0, #0
d0081b0c:	f001 84c1 	beq.w	d0083492 <main+0x2d3a>
d0081b10:	4c6a      	ldr	r4, [pc, #424]	; (d0081cbc <main+0x1564>)
d0081b12:	f243 0039 	movw	r0, #12345	; 0x3039
d0081b16:	9906      	ldr	r1, [sp, #24]
d0081b18:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0081b1c:	4d68      	ldr	r5, [pc, #416]	; (d0081cc0 <main+0x1568>)
d0081b1e:	3306      	adds	r3, #6
d0081b20:	fb04 0701 	mla	r7, r4, r1, r0
d0081b24:	9214      	str	r2, [sp, #80]	; 0x50
d0081b26:	fb04 0607 	mla	r6, r4, r7, r0
d0081b2a:	0c79      	lsrs	r1, r7, #17
d0081b2c:	fb04 0006 	mla	r0, r4, r6, r0
d0081b30:	0cb2      	lsrs	r2, r6, #18
d0081b32:	fba5 5101 	umull	r5, r1, r5, r1
d0081b36:	f243 0539 	movw	r5, #12345	; 0x3039
d0081b3a:	fb04 5500 	mla	r5, r4, r0, r5
d0081b3e:	f3c0 4005 	ubfx	r0, r0, #16, #6
d0081b42:	0949      	lsrs	r1, r1, #5
d0081b44:	9015      	str	r0, [sp, #84]	; 0x54
d0081b46:	485f      	ldr	r0, [pc, #380]	; (d0081cc4 <main+0x156c>)
d0081b48:	fba0 0202 	umull	r0, r2, r0, r2
d0081b4c:	f243 0039 	movw	r0, #12345	; 0x3039
d0081b50:	fb04 0005 	mla	r0, r4, r5, r0
d0081b54:	f3c5 4504 	ubfx	r5, r5, #16, #5
d0081b58:	0852      	lsrs	r2, r2, #1
d0081b5a:	9516      	str	r5, [sp, #88]	; 0x58
d0081b5c:	25e6      	movs	r5, #230	; 0xe6
d0081b5e:	fb05 f101 	mul.w	r1, r5, r1
d0081b62:	0c05      	lsrs	r5, r0, #16
d0081b64:	9517      	str	r5, [sp, #92]	; 0x5c
d0081b66:	f243 0539 	movw	r5, #12345	; 0x3039
d0081b6a:	ebc1 4117 	rsb	r1, r1, r7, lsr #16
d0081b6e:	9f17      	ldr	r7, [sp, #92]	; 0x5c
d0081b70:	fb04 5000 	mla	r0, r4, r0, r5
d0081b74:	4d54      	ldr	r5, [pc, #336]	; (d0081cc8 <main+0x1570>)
d0081b76:	f501 7100 	add.w	r1, r1, #512	; 0x200
d0081b7a:	4604      	mov	r4, r0
d0081b7c:	9006      	str	r0, [sp, #24]
d0081b7e:	20e4      	movs	r0, #228	; 0xe4
d0081b80:	fb00 f202 	mul.w	r2, r0, r2
d0081b84:	fba5 5007 	umull	r5, r0, r5, r7
d0081b88:	9d16      	ldr	r5, [sp, #88]	; 0x58
d0081b8a:	ebc2 4216 	rsb	r2, r2, r6, lsr #16
d0081b8e:	350c      	adds	r5, #12
d0081b90:	0840      	lsrs	r0, r0, #1
d0081b92:	322a      	adds	r2, #42	; 0x2a
d0081b94:	9516      	str	r5, [sp, #88]	; 0x58
d0081b96:	0c25      	lsrs	r5, r4, #16
d0081b98:	9c14      	ldr	r4, [sp, #80]	; 0x50
d0081b9a:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0081b9e:	f82b 1024 	strh.w	r1, [fp, r4, lsl #2]
d0081ba2:	1a38      	subs	r0, r7, r0
d0081ba4:	4949      	ldr	r1, [pc, #292]	; (d0081ccc <main+0x1574>)
d0081ba6:	27aa      	movs	r7, #170	; 0xaa
d0081ba8:	3001      	adds	r0, #1
d0081baa:	fba1 6105 	umull	r6, r1, r1, r5
d0081bae:	eb0b 0684 	add.w	r6, fp, r4, lsl #2
d0081bb2:	09c9      	lsrs	r1, r1, #7
d0081bb4:	80b2      	strh	r2, [r6, #4]
d0081bb6:	9a15      	ldr	r2, [sp, #84]	; 0x54
d0081bb8:	fb07 5111 	mls	r1, r7, r1, r5
d0081bbc:	9d16      	ldr	r5, [sp, #88]	; 0x58
d0081bbe:	71b2      	strb	r2, [r6, #6]
d0081bc0:	4a3c      	ldr	r2, [pc, #240]	; (d0081cb4 <main+0x155c>)
d0081bc2:	3164      	adds	r1, #100	; 0x64
d0081bc4:	71f5      	strb	r5, [r6, #7]
d0081bc6:	429a      	cmp	r2, r3
d0081bc8:	7230      	strb	r0, [r6, #8]
d0081bca:	8171      	strh	r1, [r6, #10]
d0081bcc:	f47f af03 	bne.w	d00819d6 <main+0x127e>
d0081bd0:	9805      	ldr	r0, [sp, #20]
d0081bd2:	f64f 71f1 	movw	r1, #65521	; 0xfff1
d0081bd6:	f8df b104 	ldr.w	fp, [pc, #260]	; d0081cdc <main+0x1584>
d0081bda:	2200      	movs	r2, #0
d0081bdc:	4b3c      	ldr	r3, [pc, #240]	; (d0081cd0 <main+0x1578>)
d0081bde:	1a09      	subs	r1, r1, r0
d0081be0:	483c      	ldr	r0, [pc, #240]	; (d0081cd4 <main+0x157c>)
d0081be2:	f893 e008 	ldrb.w	lr, [r3, #8]
d0081be6:	465b      	mov	r3, fp
d0081be8:	f8c0 c000 	str.w	ip, [r0]
d0081bec:	468c      	mov	ip, r1
d0081bee:	9c08      	ldr	r4, [sp, #32]
d0081bf0:	f8cd b020 	str.w	fp, [sp, #32]
d0081bf4:	8959      	ldrh	r1, [r3, #10]
d0081bf6:	2900      	cmp	r1, #0
d0081bf8:	f040 867e 	bne.w	d00828f8 <main+0x21a0>
d0081bfc:	8819      	ldrh	r1, [r3, #0]
d0081bfe:	f1a1 006f 	sub.w	r0, r1, #111	; 0x6f
d0081c02:	f5b0 7fae 	cmp.w	r0, #348	; 0x15c
d0081c06:	f241 8069 	bls.w	d0082cdc <main+0x2584>
d0081c0a:	3201      	adds	r2, #1
d0081c0c:	330c      	adds	r3, #12
d0081c0e:	2a05      	cmp	r2, #5
d0081c10:	d1f0      	bne.n	d0081bf4 <main+0x149c>
d0081c12:	4b31      	ldr	r3, [pc, #196]	; (d0081cd8 <main+0x1580>)
d0081c14:	9a06      	ldr	r2, [sp, #24]
d0081c16:	601a      	str	r2, [r3, #0]
d0081c18:	f1b9 0f00 	cmp.w	r9, #0
d0081c1c:	f000 8681 	beq.w	d0082922 <main+0x21ca>
d0081c20:	482b      	ldr	r0, [pc, #172]	; (d0081cd0 <main+0x1578>)
d0081c22:	7a03      	ldrb	r3, [r0, #8]
d0081c24:	b19b      	cbz	r3, d0081c4e <main+0x14f6>
d0081c26:	8841      	ldrh	r1, [r0, #2]
d0081c28:	88c3      	ldrh	r3, [r0, #6]
d0081c2a:	8882      	ldrh	r2, [r0, #4]
d0081c2c:	440b      	add	r3, r1
d0081c2e:	8801      	ldrh	r1, [r0, #0]
d0081c30:	b21b      	sxth	r3, r3
d0081c32:	440a      	add	r2, r1
d0081c34:	1119      	asrs	r1, r3, #4
d0081c36:	8043      	strh	r3, [r0, #2]
d0081c38:	b213      	sxth	r3, r2
d0081c3a:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081c3e:	8003      	strh	r3, [r0, #0]
d0081c40:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081c44:	f201 80be 	bhi.w	d0082dc4 <main+0x266c>
d0081c48:	3320      	adds	r3, #32
d0081c4a:	f2c1 80bb 	blt.w	d0082dc4 <main+0x266c>
d0081c4e:	4820      	ldr	r0, [pc, #128]	; (d0081cd0 <main+0x1578>)
d0081c50:	7c83      	ldrb	r3, [r0, #18]
d0081c52:	b19b      	cbz	r3, d0081c7c <main+0x1524>
d0081c54:	8981      	ldrh	r1, [r0, #12]
d0081c56:	8a03      	ldrh	r3, [r0, #16]
d0081c58:	89c2      	ldrh	r2, [r0, #14]
d0081c5a:	440b      	add	r3, r1
d0081c5c:	8941      	ldrh	r1, [r0, #10]
d0081c5e:	b21b      	sxth	r3, r3
d0081c60:	440a      	add	r2, r1
d0081c62:	1119      	asrs	r1, r3, #4
d0081c64:	8183      	strh	r3, [r0, #12]
d0081c66:	b213      	sxth	r3, r2
d0081c68:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081c6c:	8143      	strh	r3, [r0, #10]
d0081c6e:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081c72:	f201 80ac 	bhi.w	d0082dce <main+0x2676>
d0081c76:	3320      	adds	r3, #32
d0081c78:	f2c1 80a9 	blt.w	d0082dce <main+0x2676>
d0081c7c:	4814      	ldr	r0, [pc, #80]	; (d0081cd0 <main+0x1578>)
d0081c7e:	7f03      	ldrb	r3, [r0, #28]
d0081c80:	b19b      	cbz	r3, d0081caa <main+0x1552>
d0081c82:	8ac3      	ldrh	r3, [r0, #22]
d0081c84:	8b41      	ldrh	r1, [r0, #26]
d0081c86:	8b02      	ldrh	r2, [r0, #24]
d0081c88:	440b      	add	r3, r1
d0081c8a:	8a81      	ldrh	r1, [r0, #20]
d0081c8c:	b21b      	sxth	r3, r3
d0081c8e:	440a      	add	r2, r1
d0081c90:	1119      	asrs	r1, r3, #4
d0081c92:	82c3      	strh	r3, [r0, #22]
d0081c94:	b213      	sxth	r3, r2
d0081c96:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081c9a:	8283      	strh	r3, [r0, #20]
d0081c9c:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081ca0:	f201 809a 	bhi.w	d0082dd8 <main+0x2680>
d0081ca4:	3320      	adds	r3, #32
d0081ca6:	f2c1 8097 	blt.w	d0082dd8 <main+0x2680>
d0081caa:	4809      	ldr	r0, [pc, #36]	; (d0081cd0 <main+0x1578>)
d0081cac:	f890 3026 	ldrb.w	r3, [r0, #38]	; 0x26
d0081cb0:	b353      	cbz	r3, d0081d08 <main+0x15b0>
d0081cb2:	e015      	b.n	d0081ce0 <main+0x1588>
d0081cb4:	d008a874 	.word	0xd008a874
d0081cb8:	d008a800 	.word	0xd008a800
d0081cbc:	41c64e6d 	.word	0x41c64e6d
d0081cc0:	473c1ab7 	.word	0x473c1ab7
d0081cc4:	08fb823f 	.word	0x08fb823f
d0081cc8:	aaaaaaab 	.word	0xaaaaaaab
d0081ccc:	c0c0c0c1 	.word	0xc0c0c0c1
d0081cd0:	d008a788 	.word	0xd008a788
d0081cd4:	d008a878 	.word	0xd008a878
d0081cd8:	d008a6c0 	.word	0xd008a6c0
d0081cdc:	d008a74c 	.word	0xd008a74c
d0081ce0:	8c03      	ldrh	r3, [r0, #32]
d0081ce2:	8c81      	ldrh	r1, [r0, #36]	; 0x24
d0081ce4:	8c42      	ldrh	r2, [r0, #34]	; 0x22
d0081ce6:	440b      	add	r3, r1
d0081ce8:	8bc1      	ldrh	r1, [r0, #30]
d0081cea:	b21b      	sxth	r3, r3
d0081cec:	440a      	add	r2, r1
d0081cee:	1119      	asrs	r1, r3, #4
d0081cf0:	8403      	strh	r3, [r0, #32]
d0081cf2:	b213      	sxth	r3, r2
d0081cf4:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081cf8:	83c3      	strh	r3, [r0, #30]
d0081cfa:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081cfe:	f201 8070 	bhi.w	d0082de2 <main+0x268a>
d0081d02:	3320      	adds	r3, #32
d0081d04:	f2c1 806d 	blt.w	d0082de2 <main+0x268a>
d0081d08:	4871      	ldr	r0, [pc, #452]	; (d0081ed0 <main+0x1778>)
d0081d0a:	f890 3030 	ldrb.w	r3, [r0, #48]	; 0x30
d0081d0e:	b19b      	cbz	r3, d0081d38 <main+0x15e0>
d0081d10:	8d43      	ldrh	r3, [r0, #42]	; 0x2a
d0081d12:	8dc1      	ldrh	r1, [r0, #46]	; 0x2e
d0081d14:	8d02      	ldrh	r2, [r0, #40]	; 0x28
d0081d16:	440b      	add	r3, r1
d0081d18:	8d81      	ldrh	r1, [r0, #44]	; 0x2c
d0081d1a:	b21b      	sxth	r3, r3
d0081d1c:	440a      	add	r2, r1
d0081d1e:	1119      	asrs	r1, r3, #4
d0081d20:	8543      	strh	r3, [r0, #42]	; 0x2a
d0081d22:	b213      	sxth	r3, r2
d0081d24:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081d28:	8503      	strh	r3, [r0, #40]	; 0x28
d0081d2a:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081d2e:	f201 805e 	bhi.w	d0082dee <main+0x2696>
d0081d32:	3320      	adds	r3, #32
d0081d34:	f2c1 805b 	blt.w	d0082dee <main+0x2696>
d0081d38:	4865      	ldr	r0, [pc, #404]	; (d0081ed0 <main+0x1778>)
d0081d3a:	f890 303a 	ldrb.w	r3, [r0, #58]	; 0x3a
d0081d3e:	b19b      	cbz	r3, d0081d68 <main+0x1610>
d0081d40:	8e83      	ldrh	r3, [r0, #52]	; 0x34
d0081d42:	8f01      	ldrh	r1, [r0, #56]	; 0x38
d0081d44:	8e42      	ldrh	r2, [r0, #50]	; 0x32
d0081d46:	440b      	add	r3, r1
d0081d48:	8ec1      	ldrh	r1, [r0, #54]	; 0x36
d0081d4a:	b21b      	sxth	r3, r3
d0081d4c:	440a      	add	r2, r1
d0081d4e:	1119      	asrs	r1, r3, #4
d0081d50:	8683      	strh	r3, [r0, #52]	; 0x34
d0081d52:	b213      	sxth	r3, r2
d0081d54:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081d58:	8643      	strh	r3, [r0, #50]	; 0x32
d0081d5a:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081d5e:	f201 804c 	bhi.w	d0082dfa <main+0x26a2>
d0081d62:	3320      	adds	r3, #32
d0081d64:	f2c1 8049 	blt.w	d0082dfa <main+0x26a2>
d0081d68:	4859      	ldr	r0, [pc, #356]	; (d0081ed0 <main+0x1778>)
d0081d6a:	f890 3044 	ldrb.w	r3, [r0, #68]	; 0x44
d0081d6e:	b1ab      	cbz	r3, d0081d9c <main+0x1644>
d0081d70:	8fc3      	ldrh	r3, [r0, #62]	; 0x3e
d0081d72:	f8b0 1042 	ldrh.w	r1, [r0, #66]	; 0x42
d0081d76:	8f82      	ldrh	r2, [r0, #60]	; 0x3c
d0081d78:	440b      	add	r3, r1
d0081d7a:	f8b0 1040 	ldrh.w	r1, [r0, #64]	; 0x40
d0081d7e:	b21b      	sxth	r3, r3
d0081d80:	440a      	add	r2, r1
d0081d82:	1119      	asrs	r1, r3, #4
d0081d84:	87c3      	strh	r3, [r0, #62]	; 0x3e
d0081d86:	b213      	sxth	r3, r2
d0081d88:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081d8c:	8783      	strh	r3, [r0, #60]	; 0x3c
d0081d8e:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081d92:	f201 8038 	bhi.w	d0082e06 <main+0x26ae>
d0081d96:	3320      	adds	r3, #32
d0081d98:	f2c1 8035 	blt.w	d0082e06 <main+0x26ae>
d0081d9c:	484c      	ldr	r0, [pc, #304]	; (d0081ed0 <main+0x1778>)
d0081d9e:	f890 304e 	ldrb.w	r3, [r0, #78]	; 0x4e
d0081da2:	b1cb      	cbz	r3, d0081dd8 <main+0x1680>
d0081da4:	f8b0 3048 	ldrh.w	r3, [r0, #72]	; 0x48
d0081da8:	f8b0 104c 	ldrh.w	r1, [r0, #76]	; 0x4c
d0081dac:	f8b0 2046 	ldrh.w	r2, [r0, #70]	; 0x46
d0081db0:	440b      	add	r3, r1
d0081db2:	f8b0 104a 	ldrh.w	r1, [r0, #74]	; 0x4a
d0081db6:	b21b      	sxth	r3, r3
d0081db8:	440a      	add	r2, r1
d0081dba:	1119      	asrs	r1, r3, #4
d0081dbc:	f8a0 3048 	strh.w	r3, [r0, #72]	; 0x48
d0081dc0:	b213      	sxth	r3, r2
d0081dc2:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081dc6:	f8a0 3046 	strh.w	r3, [r0, #70]	; 0x46
d0081dca:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081dce:	f201 8020 	bhi.w	d0082e12 <main+0x26ba>
d0081dd2:	3320      	adds	r3, #32
d0081dd4:	f2c1 801d 	blt.w	d0082e12 <main+0x26ba>
d0081dd8:	483d      	ldr	r0, [pc, #244]	; (d0081ed0 <main+0x1778>)
d0081dda:	f890 3058 	ldrb.w	r3, [r0, #88]	; 0x58
d0081dde:	b1cb      	cbz	r3, d0081e14 <main+0x16bc>
d0081de0:	f8b0 3052 	ldrh.w	r3, [r0, #82]	; 0x52
d0081de4:	f8b0 1056 	ldrh.w	r1, [r0, #86]	; 0x56
d0081de8:	f8b0 2050 	ldrh.w	r2, [r0, #80]	; 0x50
d0081dec:	440b      	add	r3, r1
d0081dee:	f8b0 1054 	ldrh.w	r1, [r0, #84]	; 0x54
d0081df2:	b21b      	sxth	r3, r3
d0081df4:	440a      	add	r2, r1
d0081df6:	1119      	asrs	r1, r3, #4
d0081df8:	f8a0 3052 	strh.w	r3, [r0, #82]	; 0x52
d0081dfc:	b213      	sxth	r3, r2
d0081dfe:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081e02:	f8a0 3050 	strh.w	r3, [r0, #80]	; 0x50
d0081e06:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081e0a:	f201 8008 	bhi.w	d0082e1e <main+0x26c6>
d0081e0e:	3320      	adds	r3, #32
d0081e10:	f2c1 8005 	blt.w	d0082e1e <main+0x26c6>
d0081e14:	482e      	ldr	r0, [pc, #184]	; (d0081ed0 <main+0x1778>)
d0081e16:	f890 3062 	ldrb.w	r3, [r0, #98]	; 0x62
d0081e1a:	b1cb      	cbz	r3, d0081e50 <main+0x16f8>
d0081e1c:	f8b0 305c 	ldrh.w	r3, [r0, #92]	; 0x5c
d0081e20:	f8b0 1060 	ldrh.w	r1, [r0, #96]	; 0x60
d0081e24:	f8b0 205a 	ldrh.w	r2, [r0, #90]	; 0x5a
d0081e28:	440b      	add	r3, r1
d0081e2a:	f8b0 105e 	ldrh.w	r1, [r0, #94]	; 0x5e
d0081e2e:	b21b      	sxth	r3, r3
d0081e30:	440a      	add	r2, r1
d0081e32:	1119      	asrs	r1, r3, #4
d0081e34:	f8a0 305c 	strh.w	r3, [r0, #92]	; 0x5c
d0081e38:	b213      	sxth	r3, r2
d0081e3a:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081e3e:	f8a0 305a 	strh.w	r3, [r0, #90]	; 0x5a
d0081e42:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081e46:	f200 87f0 	bhi.w	d0082e2a <main+0x26d2>
d0081e4a:	3320      	adds	r3, #32
d0081e4c:	f2c0 87ed 	blt.w	d0082e2a <main+0x26d2>
d0081e50:	481f      	ldr	r0, [pc, #124]	; (d0081ed0 <main+0x1778>)
d0081e52:	f890 306c 	ldrb.w	r3, [r0, #108]	; 0x6c
d0081e56:	b1cb      	cbz	r3, d0081e8c <main+0x1734>
d0081e58:	f8b0 3066 	ldrh.w	r3, [r0, #102]	; 0x66
d0081e5c:	f8b0 106a 	ldrh.w	r1, [r0, #106]	; 0x6a
d0081e60:	f8b0 2064 	ldrh.w	r2, [r0, #100]	; 0x64
d0081e64:	440b      	add	r3, r1
d0081e66:	f8b0 1068 	ldrh.w	r1, [r0, #104]	; 0x68
d0081e6a:	b21b      	sxth	r3, r3
d0081e6c:	440a      	add	r2, r1
d0081e6e:	1119      	asrs	r1, r3, #4
d0081e70:	f8a0 3066 	strh.w	r3, [r0, #102]	; 0x66
d0081e74:	b213      	sxth	r3, r2
d0081e76:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081e7a:	f8a0 3064 	strh.w	r3, [r0, #100]	; 0x64
d0081e7e:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081e82:	f200 87d8 	bhi.w	d0082e36 <main+0x26de>
d0081e86:	3320      	adds	r3, #32
d0081e88:	f2c0 87d5 	blt.w	d0082e36 <main+0x26de>
d0081e8c:	4810      	ldr	r0, [pc, #64]	; (d0081ed0 <main+0x1778>)
d0081e8e:	f890 3076 	ldrb.w	r3, [r0, #118]	; 0x76
d0081e92:	b1cb      	cbz	r3, d0081ec8 <main+0x1770>
d0081e94:	f8b0 1070 	ldrh.w	r1, [r0, #112]	; 0x70
d0081e98:	f8b0 3074 	ldrh.w	r3, [r0, #116]	; 0x74
d0081e9c:	f8b0 2072 	ldrh.w	r2, [r0, #114]	; 0x72
d0081ea0:	440b      	add	r3, r1
d0081ea2:	f8b0 106e 	ldrh.w	r1, [r0, #110]	; 0x6e
d0081ea6:	b21b      	sxth	r3, r3
d0081ea8:	440a      	add	r2, r1
d0081eaa:	1119      	asrs	r1, r3, #4
d0081eac:	f8a0 3070 	strh.w	r3, [r0, #112]	; 0x70
d0081eb0:	b213      	sxth	r3, r2
d0081eb2:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081eb6:	f8a0 306e 	strh.w	r3, [r0, #110]	; 0x6e
d0081eba:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081ebe:	f200 87c0 	bhi.w	d0082e42 <main+0x26ea>
d0081ec2:	3320      	adds	r3, #32
d0081ec4:	f2c0 87bd 	blt.w	d0082e42 <main+0x26ea>
d0081ec8:	2705      	movs	r7, #5
d0081eca:	f8df 8008 	ldr.w	r8, [pc, #8]	; d0081ed4 <main+0x177c>
d0081ece:	e03b      	b.n	d0081f48 <main+0x17f0>
d0081ed0:	d008a788 	.word	0xd008a788
d0081ed4:	d0089650 	.word	0xd0089650
d0081ed8:	f89a 100d 	ldrb.w	r1, [sl, #13]
d0081edc:	2b03      	cmp	r3, #3
d0081ede:	f89a 600e 	ldrb.w	r6, [sl, #14]
d0081ee2:	f04f 030b 	mov.w	r3, #11
d0081ee6:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
d0081eea:	4640      	mov	r0, r8
d0081eec:	f89a 500f 	ldrb.w	r5, [sl, #15]
d0081ef0:	ea41 4606 	orr.w	r6, r1, r6, lsl #16
d0081ef4:	8862      	ldrh	r2, [r4, #2]
d0081ef6:	f9b4 1000 	ldrsh.w	r1, [r4]
d0081efa:	f200 84c9 	bhi.w	d0082890 <main+0x2138>
d0081efe:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0081f02:	3a03      	subs	r2, #3
d0081f04:	686d      	ldr	r5, [r5, #4]
d0081f06:	b212      	sxth	r2, r2
d0081f08:	9700      	str	r7, [sp, #0]
d0081f0a:	69ad      	ldr	r5, [r5, #24]
d0081f0c:	47a8      	blx	r5
d0081f0e:	f89a 200c 	ldrb.w	r2, [sl, #12]
d0081f12:	f89a 100d 	ldrb.w	r1, [sl, #13]
d0081f16:	230b      	movs	r3, #11
d0081f18:	f89a 600e 	ldrb.w	r6, [sl, #14]
d0081f1c:	4640      	mov	r0, r8
d0081f1e:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
d0081f22:	8862      	ldrh	r2, [r4, #2]
d0081f24:	f89a 500f 	ldrb.w	r5, [sl, #15]
d0081f28:	ea41 4606 	orr.w	r6, r1, r6, lsl #16
d0081f2c:	3203      	adds	r2, #3
d0081f2e:	f9b4 1000 	ldrsh.w	r1, [r4]
d0081f32:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0081f36:	b212      	sxth	r2, r2
d0081f38:	686d      	ldr	r5, [r5, #4]
d0081f3a:	9700      	str	r7, [sp, #0]
d0081f3c:	69ad      	ldr	r5, [r5, #24]
d0081f3e:	47a8      	blx	r5
d0081f40:	3406      	adds	r4, #6
d0081f42:	4bc7      	ldr	r3, [pc, #796]	; (d0082260 <main+0x1b08>)
d0081f44:	42a3      	cmp	r3, r4
d0081f46:	d021      	beq.n	d0081f8c <main+0x1834>
d0081f48:	7963      	ldrb	r3, [r4, #5]
d0081f4a:	2b00      	cmp	r3, #0
d0081f4c:	d0f8      	beq.n	d0081f40 <main+0x17e8>
d0081f4e:	7923      	ldrb	r3, [r4, #4]
d0081f50:	f89a 200c 	ldrb.w	r2, [sl, #12]
d0081f54:	2b01      	cmp	r3, #1
d0081f56:	d8bf      	bhi.n	d0081ed8 <main+0x1780>
d0081f58:	f89a 100d 	ldrb.w	r1, [sl, #13]
d0081f5c:	230b      	movs	r3, #11
d0081f5e:	f89a 600e 	ldrb.w	r6, [sl, #14]
d0081f62:	4640      	mov	r0, r8
d0081f64:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
d0081f68:	f89a 500f 	ldrb.w	r5, [sl, #15]
d0081f6c:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
d0081f70:	3406      	adds	r4, #6
d0081f72:	ea41 4606 	orr.w	r6, r1, r6, lsl #16
d0081f76:	f934 1c06 	ldrsh.w	r1, [r4, #-6]
d0081f7a:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0081f7e:	686d      	ldr	r5, [r5, #4]
d0081f80:	9700      	str	r7, [sp, #0]
d0081f82:	69ad      	ldr	r5, [r5, #24]
d0081f84:	47a8      	blx	r5
d0081f86:	4bb6      	ldr	r3, [pc, #728]	; (d0082260 <main+0x1b08>)
d0081f88:	42a3      	cmp	r3, r4
d0081f8a:	d1dd      	bne.n	d0081f48 <main+0x17f0>
d0081f8c:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0081f90:	20fc      	movs	r0, #252	; 0xfc
d0081f92:	f89a 200d 	ldrb.w	r2, [sl, #13]
d0081f96:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0081f9a:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0081f9e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0081fa2:	f89a 200f 	ldrb.w	r2, [sl, #15]
d0081fa6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0081faa:	685b      	ldr	r3, [r3, #4]
d0081fac:	68db      	ldr	r3, [r3, #12]
d0081fae:	4798      	blx	r3
d0081fb0:	4aac      	ldr	r2, [pc, #688]	; (d0082264 <main+0x1b0c>)
d0081fb2:	7a13      	ldrb	r3, [r2, #8]
d0081fb4:	b30b      	cbz	r3, d0081ffa <main+0x18a2>
d0081fb6:	f9b2 1002 	ldrsh.w	r1, [r2, #2]
d0081fba:	f9b2 0000 	ldrsh.w	r0, [r2]
d0081fbe:	f3c1 130f 	ubfx	r3, r1, #4, #16
d0081fc2:	1109      	asrs	r1, r1, #4
d0081fc4:	1100      	asrs	r0, r0, #4
d0081fc6:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d0081fca:	d816      	bhi.n	d0081ffa <main+0x18a2>
d0081fcc:	b283      	uxth	r3, r0
d0081fce:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0081fd2:	d812      	bhi.n	d0081ffa <main+0x18a2>
d0081fd4:	f89a 200c 	ldrb.w	r2, [sl, #12]
d0081fd8:	2304      	movs	r3, #4
d0081fda:	f89a 400d 	ldrb.w	r4, [sl, #13]
d0081fde:	f89a 500e 	ldrb.w	r5, [sl, #14]
d0081fe2:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
d0081fe6:	f89a 400f 	ldrb.w	r4, [sl, #15]
d0081fea:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d0081fee:	461a      	mov	r2, r3
d0081ff0:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0081ff4:	6864      	ldr	r4, [r4, #4]
d0081ff6:	6864      	ldr	r4, [r4, #4]
d0081ff8:	47a0      	blx	r4
d0081ffa:	4a9a      	ldr	r2, [pc, #616]	; (d0082264 <main+0x1b0c>)
d0081ffc:	7c93      	ldrb	r3, [r2, #18]
d0081ffe:	b30b      	cbz	r3, d0082044 <main+0x18ec>
d0082000:	f9b2 000a 	ldrsh.w	r0, [r2, #10]
d0082004:	f9b2 100c 	ldrsh.w	r1, [r2, #12]
d0082008:	f3c0 130f 	ubfx	r3, r0, #4, #16
d008200c:	1100      	asrs	r0, r0, #4
d008200e:	1109      	asrs	r1, r1, #4
d0082010:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0082014:	d816      	bhi.n	d0082044 <main+0x18ec>
d0082016:	b28b      	uxth	r3, r1
d0082018:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d008201c:	d812      	bhi.n	d0082044 <main+0x18ec>
d008201e:	f89a 200c 	ldrb.w	r2, [sl, #12]
d0082022:	2304      	movs	r3, #4
d0082024:	f89a 400d 	ldrb.w	r4, [sl, #13]
d0082028:	f89a 500e 	ldrb.w	r5, [sl, #14]
d008202c:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
d0082030:	f89a 400f 	ldrb.w	r4, [sl, #15]
d0082034:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d0082038:	461a      	mov	r2, r3
d008203a:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d008203e:	6864      	ldr	r4, [r4, #4]
d0082040:	6864      	ldr	r4, [r4, #4]
d0082042:	47a0      	blx	r4
d0082044:	4a87      	ldr	r2, [pc, #540]	; (d0082264 <main+0x1b0c>)
d0082046:	7f13      	ldrb	r3, [r2, #28]
d0082048:	b30b      	cbz	r3, d008208e <main+0x1936>
d008204a:	f9b2 0014 	ldrsh.w	r0, [r2, #20]
d008204e:	f9b2 1016 	ldrsh.w	r1, [r2, #22]
d0082052:	f3c0 130f 	ubfx	r3, r0, #4, #16
d0082056:	1100      	asrs	r0, r0, #4
d0082058:	1109      	asrs	r1, r1, #4
d008205a:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d008205e:	d816      	bhi.n	d008208e <main+0x1936>
d0082060:	b28b      	uxth	r3, r1
d0082062:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d0082066:	d812      	bhi.n	d008208e <main+0x1936>
d0082068:	f89a 200c 	ldrb.w	r2, [sl, #12]
d008206c:	2304      	movs	r3, #4
d008206e:	f89a 400d 	ldrb.w	r4, [sl, #13]
d0082072:	f89a 500e 	ldrb.w	r5, [sl, #14]
d0082076:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
d008207a:	f89a 400f 	ldrb.w	r4, [sl, #15]
d008207e:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d0082082:	461a      	mov	r2, r3
d0082084:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0082088:	6864      	ldr	r4, [r4, #4]
d008208a:	6864      	ldr	r4, [r4, #4]
d008208c:	47a0      	blx	r4
d008208e:	4a75      	ldr	r2, [pc, #468]	; (d0082264 <main+0x1b0c>)
d0082090:	f892 3026 	ldrb.w	r3, [r2, #38]	; 0x26
d0082094:	b30b      	cbz	r3, d00820da <main+0x1982>
d0082096:	f9b2 1020 	ldrsh.w	r1, [r2, #32]
d008209a:	f9b2 001e 	ldrsh.w	r0, [r2, #30]
d008209e:	f3c1 130f 	ubfx	r3, r1, #4, #16
d00820a2:	1109      	asrs	r1, r1, #4
d00820a4:	1100      	asrs	r0, r0, #4
d00820a6:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d00820aa:	d816      	bhi.n	d00820da <main+0x1982>
d00820ac:	b283      	uxth	r3, r0
d00820ae:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d00820b2:	d812      	bhi.n	d00820da <main+0x1982>
d00820b4:	f89a 200c 	ldrb.w	r2, [sl, #12]
d00820b8:	2304      	movs	r3, #4
d00820ba:	f89a 400d 	ldrb.w	r4, [sl, #13]
d00820be:	f89a 500e 	ldrb.w	r5, [sl, #14]
d00820c2:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
d00820c6:	f89a 400f 	ldrb.w	r4, [sl, #15]
d00820ca:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d00820ce:	461a      	mov	r2, r3
d00820d0:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d00820d4:	6864      	ldr	r4, [r4, #4]
d00820d6:	6864      	ldr	r4, [r4, #4]
d00820d8:	47a0      	blx	r4
d00820da:	4a62      	ldr	r2, [pc, #392]	; (d0082264 <main+0x1b0c>)
d00820dc:	f892 3030 	ldrb.w	r3, [r2, #48]	; 0x30
d00820e0:	b30b      	cbz	r3, d0082126 <main+0x19ce>
d00820e2:	f9b2 102a 	ldrsh.w	r1, [r2, #42]	; 0x2a
d00820e6:	f9b2 0028 	ldrsh.w	r0, [r2, #40]	; 0x28
d00820ea:	f3c1 130f 	ubfx	r3, r1, #4, #16
d00820ee:	1109      	asrs	r1, r1, #4
d00820f0:	1100      	asrs	r0, r0, #4
d00820f2:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d00820f6:	d816      	bhi.n	d0082126 <main+0x19ce>
d00820f8:	b283      	uxth	r3, r0
d00820fa:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d00820fe:	d812      	bhi.n	d0082126 <main+0x19ce>
d0082100:	f89a 200c 	ldrb.w	r2, [sl, #12]
d0082104:	2304      	movs	r3, #4
d0082106:	f89a 400d 	ldrb.w	r4, [sl, #13]
d008210a:	f89a 500e 	ldrb.w	r5, [sl, #14]
d008210e:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
d0082112:	f89a 400f 	ldrb.w	r4, [sl, #15]
d0082116:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d008211a:	461a      	mov	r2, r3
d008211c:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0082120:	6864      	ldr	r4, [r4, #4]
d0082122:	6864      	ldr	r4, [r4, #4]
d0082124:	47a0      	blx	r4
d0082126:	4a4f      	ldr	r2, [pc, #316]	; (d0082264 <main+0x1b0c>)
d0082128:	f892 303a 	ldrb.w	r3, [r2, #58]	; 0x3a
d008212c:	b30b      	cbz	r3, d0082172 <main+0x1a1a>
d008212e:	f9b2 1034 	ldrsh.w	r1, [r2, #52]	; 0x34
d0082132:	f9b2 0032 	ldrsh.w	r0, [r2, #50]	; 0x32
d0082136:	f3c1 130f 	ubfx	r3, r1, #4, #16
d008213a:	1109      	asrs	r1, r1, #4
d008213c:	1100      	asrs	r0, r0, #4
d008213e:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d0082142:	d816      	bhi.n	d0082172 <main+0x1a1a>
d0082144:	b283      	uxth	r3, r0
d0082146:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d008214a:	d812      	bhi.n	d0082172 <main+0x1a1a>
d008214c:	f89a 200c 	ldrb.w	r2, [sl, #12]
d0082150:	2304      	movs	r3, #4
d0082152:	f89a 400d 	ldrb.w	r4, [sl, #13]
d0082156:	f89a 500e 	ldrb.w	r5, [sl, #14]
d008215a:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
d008215e:	f89a 400f 	ldrb.w	r4, [sl, #15]
d0082162:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d0082166:	461a      	mov	r2, r3
d0082168:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d008216c:	6864      	ldr	r4, [r4, #4]
d008216e:	6864      	ldr	r4, [r4, #4]
d0082170:	47a0      	blx	r4
d0082172:	4a3c      	ldr	r2, [pc, #240]	; (d0082264 <main+0x1b0c>)
d0082174:	f892 3044 	ldrb.w	r3, [r2, #68]	; 0x44
d0082178:	b30b      	cbz	r3, d00821be <main+0x1a66>
d008217a:	f9b2 103e 	ldrsh.w	r1, [r2, #62]	; 0x3e
d008217e:	f9b2 003c 	ldrsh.w	r0, [r2, #60]	; 0x3c
d0082182:	f3c1 130f 	ubfx	r3, r1, #4, #16
d0082186:	1109      	asrs	r1, r1, #4
d0082188:	1100      	asrs	r0, r0, #4
d008218a:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d008218e:	d816      	bhi.n	d00821be <main+0x1a66>
d0082190:	b283      	uxth	r3, r0
d0082192:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0082196:	d812      	bhi.n	d00821be <main+0x1a66>
d0082198:	f89a 200c 	ldrb.w	r2, [sl, #12]
d008219c:	2304      	movs	r3, #4
d008219e:	f89a 400d 	ldrb.w	r4, [sl, #13]
d00821a2:	f89a 500e 	ldrb.w	r5, [sl, #14]
d00821a6:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
d00821aa:	f89a 400f 	ldrb.w	r4, [sl, #15]
d00821ae:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d00821b2:	461a      	mov	r2, r3
d00821b4:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d00821b8:	6864      	ldr	r4, [r4, #4]
d00821ba:	6864      	ldr	r4, [r4, #4]
d00821bc:	47a0      	blx	r4
d00821be:	4a29      	ldr	r2, [pc, #164]	; (d0082264 <main+0x1b0c>)
d00821c0:	f892 304e 	ldrb.w	r3, [r2, #78]	; 0x4e
d00821c4:	b30b      	cbz	r3, d008220a <main+0x1ab2>
d00821c6:	f9b2 1048 	ldrsh.w	r1, [r2, #72]	; 0x48
d00821ca:	f9b2 0046 	ldrsh.w	r0, [r2, #70]	; 0x46
d00821ce:	f3c1 130f 	ubfx	r3, r1, #4, #16
d00821d2:	1109      	asrs	r1, r1, #4
d00821d4:	1100      	asrs	r0, r0, #4
d00821d6:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d00821da:	d816      	bhi.n	d008220a <main+0x1ab2>
d00821dc:	b283      	uxth	r3, r0
d00821de:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d00821e2:	d812      	bhi.n	d008220a <main+0x1ab2>
d00821e4:	f89a 200c 	ldrb.w	r2, [sl, #12]
d00821e8:	2304      	movs	r3, #4
d00821ea:	f89a 400d 	ldrb.w	r4, [sl, #13]
d00821ee:	f89a 500e 	ldrb.w	r5, [sl, #14]
d00821f2:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
d00821f6:	f89a 400f 	ldrb.w	r4, [sl, #15]
d00821fa:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d00821fe:	461a      	mov	r2, r3
d0082200:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0082204:	6864      	ldr	r4, [r4, #4]
d0082206:	6864      	ldr	r4, [r4, #4]
d0082208:	47a0      	blx	r4
d008220a:	4a16      	ldr	r2, [pc, #88]	; (d0082264 <main+0x1b0c>)
d008220c:	f892 3058 	ldrb.w	r3, [r2, #88]	; 0x58
d0082210:	b30b      	cbz	r3, d0082256 <main+0x1afe>
d0082212:	f9b2 1052 	ldrsh.w	r1, [r2, #82]	; 0x52
d0082216:	f9b2 0050 	ldrsh.w	r0, [r2, #80]	; 0x50
d008221a:	f3c1 130f 	ubfx	r3, r1, #4, #16
d008221e:	1109      	asrs	r1, r1, #4
d0082220:	1100      	asrs	r0, r0, #4
d0082222:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d0082226:	d816      	bhi.n	d0082256 <main+0x1afe>
d0082228:	b283      	uxth	r3, r0
d008222a:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d008222e:	d812      	bhi.n	d0082256 <main+0x1afe>
d0082230:	f89a 200c 	ldrb.w	r2, [sl, #12]
d0082234:	2304      	movs	r3, #4
d0082236:	f89a 400d 	ldrb.w	r4, [sl, #13]
d008223a:	f89a 500e 	ldrb.w	r5, [sl, #14]
d008223e:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
d0082242:	f89a 400f 	ldrb.w	r4, [sl, #15]
d0082246:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d008224a:	461a      	mov	r2, r3
d008224c:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0082250:	6864      	ldr	r4, [r4, #4]
d0082252:	6864      	ldr	r4, [r4, #4]
d0082254:	47a0      	blx	r4
d0082256:	4a03      	ldr	r2, [pc, #12]	; (d0082264 <main+0x1b0c>)
d0082258:	f892 3062 	ldrb.w	r3, [r2, #98]	; 0x62
d008225c:	e004      	b.n	d0082268 <main+0x1b10>
d008225e:	bf00      	nop
d0082260:	d008a874 	.word	0xd008a874
d0082264:	d008a788 	.word	0xd008a788
d0082268:	b30b      	cbz	r3, d00822ae <main+0x1b56>
d008226a:	f9b2 105c 	ldrsh.w	r1, [r2, #92]	; 0x5c
d008226e:	f9b2 005a 	ldrsh.w	r0, [r2, #90]	; 0x5a
d0082272:	f3c1 130f 	ubfx	r3, r1, #4, #16
d0082276:	1109      	asrs	r1, r1, #4
d0082278:	1100      	asrs	r0, r0, #4
d008227a:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d008227e:	d816      	bhi.n	d00822ae <main+0x1b56>
d0082280:	b283      	uxth	r3, r0
d0082282:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0082286:	d812      	bhi.n	d00822ae <main+0x1b56>
d0082288:	f89a 200c 	ldrb.w	r2, [sl, #12]
d008228c:	2304      	movs	r3, #4
d008228e:	f89a 400d 	ldrb.w	r4, [sl, #13]
d0082292:	f89a 500e 	ldrb.w	r5, [sl, #14]
d0082296:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
d008229a:	f89a 400f 	ldrb.w	r4, [sl, #15]
d008229e:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d00822a2:	461a      	mov	r2, r3
d00822a4:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d00822a8:	6864      	ldr	r4, [r4, #4]
d00822aa:	6864      	ldr	r4, [r4, #4]
d00822ac:	47a0      	blx	r4
d00822ae:	4a97      	ldr	r2, [pc, #604]	; (d008250c <main+0x1db4>)
d00822b0:	f892 306c 	ldrb.w	r3, [r2, #108]	; 0x6c
d00822b4:	b30b      	cbz	r3, d00822fa <main+0x1ba2>
d00822b6:	f9b2 1066 	ldrsh.w	r1, [r2, #102]	; 0x66
d00822ba:	f9b2 0064 	ldrsh.w	r0, [r2, #100]	; 0x64
d00822be:	f3c1 130f 	ubfx	r3, r1, #4, #16
d00822c2:	1109      	asrs	r1, r1, #4
d00822c4:	1100      	asrs	r0, r0, #4
d00822c6:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d00822ca:	d816      	bhi.n	d00822fa <main+0x1ba2>
d00822cc:	b283      	uxth	r3, r0
d00822ce:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d00822d2:	d812      	bhi.n	d00822fa <main+0x1ba2>
d00822d4:	f89a 200c 	ldrb.w	r2, [sl, #12]
d00822d8:	2304      	movs	r3, #4
d00822da:	f89a 400d 	ldrb.w	r4, [sl, #13]
d00822de:	f89a 500e 	ldrb.w	r5, [sl, #14]
d00822e2:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
d00822e6:	f89a 400f 	ldrb.w	r4, [sl, #15]
d00822ea:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d00822ee:	461a      	mov	r2, r3
d00822f0:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d00822f4:	6864      	ldr	r4, [r4, #4]
d00822f6:	6864      	ldr	r4, [r4, #4]
d00822f8:	47a0      	blx	r4
d00822fa:	4a84      	ldr	r2, [pc, #528]	; (d008250c <main+0x1db4>)
d00822fc:	f892 3076 	ldrb.w	r3, [r2, #118]	; 0x76
d0082300:	b30b      	cbz	r3, d0082346 <main+0x1bee>
d0082302:	f9b2 006e 	ldrsh.w	r0, [r2, #110]	; 0x6e
d0082306:	f9b2 1070 	ldrsh.w	r1, [r2, #112]	; 0x70
d008230a:	f3c0 130f 	ubfx	r3, r0, #4, #16
d008230e:	1100      	asrs	r0, r0, #4
d0082310:	1109      	asrs	r1, r1, #4
d0082312:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0082316:	d816      	bhi.n	d0082346 <main+0x1bee>
d0082318:	b28b      	uxth	r3, r1
d008231a:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d008231e:	d812      	bhi.n	d0082346 <main+0x1bee>
d0082320:	f89a 200c 	ldrb.w	r2, [sl, #12]
d0082324:	2304      	movs	r3, #4
d0082326:	f89a 400d 	ldrb.w	r4, [sl, #13]
d008232a:	f89a 500e 	ldrb.w	r5, [sl, #14]
d008232e:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
d0082332:	f89a 400f 	ldrb.w	r4, [sl, #15]
d0082336:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d008233a:	461a      	mov	r2, r3
d008233c:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0082340:	6864      	ldr	r4, [r4, #4]
d0082342:	6864      	ldr	r4, [r4, #4]
d0082344:	47a0      	blx	r4
d0082346:	4d72      	ldr	r5, [pc, #456]	; (d0082510 <main+0x1db8>)
d0082348:	f8df 81f0 	ldr.w	r8, [pc, #496]	; d008253c <main+0x1de4>
d008234c:	e004      	b.n	d0082358 <main+0x1c00>
d008234e:	3508      	adds	r5, #8
d0082350:	4b70      	ldr	r3, [pc, #448]	; (d0082514 <main+0x1dbc>)
d0082352:	42ab      	cmp	r3, r5
d0082354:	f000 8085 	beq.w	d0082462 <main+0x1d0a>
d0082358:	79ab      	ldrb	r3, [r5, #6]
d008235a:	2b00      	cmp	r3, #0
d008235c:	d0f7      	beq.n	d008234e <main+0x1bf6>
d008235e:	2600      	movs	r6, #0
d0082360:	eb06 0346 	add.w	r3, r6, r6, lsl #1
d0082364:	796c      	ldrb	r4, [r5, #5]
d0082366:	4f6c      	ldr	r7, [pc, #432]	; (d0082518 <main+0x1dc0>)
d0082368:	b2f1      	uxtb	r1, r6
d008236a:	eb06 0383 	add.w	r3, r6, r3, lsl #2
d008236e:	f895 c004 	ldrb.w	ip, [r5, #4]
d0082372:	886a      	ldrh	r2, [r5, #2]
d0082374:	f001 0001 	and.w	r0, r1, #1
d0082378:	4423      	add	r3, r4
d008237a:	f8b5 e000 	ldrh.w	lr, [r5]
d008237e:	f8ad 2014 	strh.w	r2, [sp, #20]
d0082382:	f10c 0204 	add.w	r2, ip, #4
d0082386:	f003 033f 	and.w	r3, r3, #63	; 0x3f
d008238a:	f1bc 0f07 	cmp.w	ip, #7
d008238e:	f100 001d 	add.w	r0, r0, #29
d0082392:	f103 0410 	add.w	r4, r3, #16
d0082396:	56fb      	ldrsb	r3, [r7, r3]
d0082398:	f004 043f 	and.w	r4, r4, #63	; 0x3f
d008239c:	fb02 f303 	mul.w	r3, r2, r3
d00823a0:	f917 9004 	ldrsb.w	r9, [r7, r4]
d00823a4:	fb02 f209 	mul.w	r2, r2, r9
d00823a8:	fb88 7402 	smull	r7, r4, r8, r2
d00823ac:	ea4f 79e2 	mov.w	r9, r2, asr #31
d00823b0:	4422      	add	r2, r4
d00823b2:	fb88 7403 	smull	r7, r4, r8, r3
d00823b6:	eb06 075c 	add.w	r7, r6, ip, lsr #1
d00823ba:	441c      	add	r4, r3
d00823bc:	ea4f 73e3 	mov.w	r3, r3, asr #31
d00823c0:	ebc9 19a2 	rsb	r9, r9, r2, asr #6
d00823c4:	f107 0702 	add.w	r7, r7, #2
d00823c8:	ebc3 14a4 	rsb	r4, r3, r4, asr #6
d00823cc:	f8bd 3014 	ldrh.w	r3, [sp, #20]
d00823d0:	b23f      	sxth	r7, r7
d00823d2:	4499      	add	r9, r3
d00823d4:	4474      	add	r4, lr
d00823d6:	fa0f f989 	sxth.w	r9, r9
d00823da:	b224      	sxth	r4, r4
d00823dc:	f240 8246 	bls.w	d008286c <main+0x2114>
d00823e0:	f1bc 0f0f 	cmp.w	ip, #15
d00823e4:	f200 8210 	bhi.w	d0082808 <main+0x20b0>
d00823e8:	f89a 000c 	ldrb.w	r0, [sl, #12]
d00823ec:	f011 0f01 	tst.w	r1, #1
d00823f0:	f89a 100d 	ldrb.w	r1, [sl, #13]
d00823f4:	f89a 200e 	ldrb.w	r2, [sl, #14]
d00823f8:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00823fc:	f89a 300f 	ldrb.w	r3, [sl, #15]
d0082400:	bf0c      	ite	eq
d0082402:	201f      	moveq	r0, #31
d0082404:	2030      	movne	r0, #48	; 0x30
d0082406:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d008240a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008240e:	685b      	ldr	r3, [r3, #4]
d0082410:	68db      	ldr	r3, [r3, #12]
d0082412:	4798      	blx	r3
d0082414:	f89a 000c 	ldrb.w	r0, [sl, #12]
d0082418:	463a      	mov	r2, r7
d008241a:	f89a 300d 	ldrb.w	r3, [sl, #13]
d008241e:	3601      	adds	r6, #1
d0082420:	f89a c00e 	ldrb.w	ip, [sl, #14]
d0082424:	4649      	mov	r1, r9
d0082426:	ea40 2703 	orr.w	r7, r0, r3, lsl #8
d008242a:	f89a 300f 	ldrb.w	r3, [sl, #15]
d008242e:	4620      	mov	r0, r4
d0082430:	ea47 440c 	orr.w	r4, r7, ip, lsl #16
d0082434:	ea44 6303 	orr.w	r3, r4, r3, lsl #24
d0082438:	685b      	ldr	r3, [r3, #4]
d008243a:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
d008243c:	4798      	blx	r3
d008243e:	2e04      	cmp	r6, #4
d0082440:	d18e      	bne.n	d0082360 <main+0x1c08>
d0082442:	792b      	ldrb	r3, [r5, #4]
d0082444:	3301      	adds	r3, #1
d0082446:	b2db      	uxtb	r3, r3
d0082448:	2b21      	cmp	r3, #33	; 0x21
d008244a:	712b      	strb	r3, [r5, #4]
d008244c:	f67f af7f 	bls.w	d008234e <main+0x1bf6>
d0082450:	f04f 0300 	mov.w	r3, #0
d0082454:	3508      	adds	r5, #8
d0082456:	f805 3c02 	strb.w	r3, [r5, #-2]
d008245a:	4b2e      	ldr	r3, [pc, #184]	; (d0082514 <main+0x1dbc>)
d008245c:	42ab      	cmp	r3, r5
d008245e:	f47f af7b 	bne.w	d0082358 <main+0x1c00>
d0082462:	2520      	movs	r5, #32
d0082464:	4f2d      	ldr	r7, [pc, #180]	; (d008251c <main+0x1dc4>)
d0082466:	9e08      	ldr	r6, [sp, #32]
d0082468:	f89a 200c 	ldrb.w	r2, [sl, #12]
d008246c:	2320      	movs	r3, #32
d008246e:	f89a 100d 	ldrb.w	r1, [sl, #13]
d0082472:	4638      	mov	r0, r7
d0082474:	f89a 400e 	ldrb.w	r4, [sl, #14]
d0082478:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
d008247c:	f89a c00f 	ldrb.w	ip, [sl, #15]
d0082480:	f9b6 2002 	ldrsh.w	r2, [r6, #2]
d0082484:	ea41 4404 	orr.w	r4, r1, r4, lsl #16
d0082488:	f936 1b0c 	ldrsh.w	r1, [r6], #12
d008248c:	ea44 640c 	orr.w	r4, r4, ip, lsl #24
d0082490:	6864      	ldr	r4, [r4, #4]
d0082492:	9500      	str	r5, [sp, #0]
d0082494:	69a4      	ldr	r4, [r4, #24]
d0082496:	47a0      	blx	r4
d0082498:	4b21      	ldr	r3, [pc, #132]	; (d0082520 <main+0x1dc8>)
d008249a:	42b3      	cmp	r3, r6
d008249c:	d1e4      	bne.n	d0082468 <main+0x1d10>
d008249e:	4b21      	ldr	r3, [pc, #132]	; (d0082524 <main+0x1dcc>)
d00824a0:	f9b3 1000 	ldrsh.w	r1, [r3]
d00824a4:	2900      	cmp	r1, #0
d00824a6:	db1e      	blt.n	d00824e6 <main+0x1d8e>
d00824a8:	4b1f      	ldr	r3, [pc, #124]	; (d0082528 <main+0x1dd0>)
d00824aa:	781b      	ldrb	r3, [r3, #0]
d00824ac:	b11b      	cbz	r3, d00824b6 <main+0x1d5e>
d00824ae:	4b1f      	ldr	r3, [pc, #124]	; (d008252c <main+0x1dd4>)
d00824b0:	881b      	ldrh	r3, [r3, #0]
d00824b2:	07db      	lsls	r3, r3, #31
d00824b4:	d417      	bmi.n	d00824e6 <main+0x1d8e>
d00824b6:	f89a 200c 	ldrb.w	r2, [sl, #12]
d00824ba:	2511      	movs	r5, #17
d00824bc:	f89a 400d 	ldrb.w	r4, [sl, #13]
d00824c0:	231f      	movs	r3, #31
d00824c2:	f89a 000e 	ldrb.w	r0, [sl, #14]
d00824c6:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
d00824ca:	f89a 400f 	ldrb.w	r4, [sl, #15]
d00824ce:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d00824d2:	4a17      	ldr	r2, [pc, #92]	; (d0082530 <main+0x1dd8>)
d00824d4:	ea40 6404 	orr.w	r4, r0, r4, lsl #24
d00824d8:	f9b2 2000 	ldrsh.w	r2, [r2]
d00824dc:	4815      	ldr	r0, [pc, #84]	; (d0082534 <main+0x1ddc>)
d00824de:	6864      	ldr	r4, [r4, #4]
d00824e0:	9500      	str	r5, [sp, #0]
d00824e2:	69a4      	ldr	r4, [r4, #24]
d00824e4:	47a0      	blx	r4
d00824e6:	21ff      	movs	r1, #255	; 0xff
d00824e8:	2007      	movs	r0, #7
d00824ea:	f7fd fe27 	bl	d008013c <draw_star_speed_range>
d00824ee:	4b12      	ldr	r3, [pc, #72]	; (d0082538 <main+0x1de0>)
d00824f0:	6819      	ldr	r1, [r3, #0]
d00824f2:	3902      	subs	r1, #2
d00824f4:	f111 0f43 	cmn.w	r1, #67	; 0x43
d00824f8:	f2c0 8206 	blt.w	d0082908 <main+0x21b0>
d00824fc:	6019      	str	r1, [r3, #0]
d00824fe:	2700      	movs	r7, #0
d0082500:	f04f 0820 	mov.w	r8, #32
d0082504:	f8df 9038 	ldr.w	r9, [pc, #56]	; d0082540 <main+0x1de8>
d0082508:	e01e      	b.n	d0082548 <main+0x1df0>
d008250a:	bf00      	nop
d008250c:	d008a788 	.word	0xd008a788
d0082510:	d008a800 	.word	0xd008a800
d0082514:	d008a840 	.word	0xd008a840
d0082518:	d008a5b0 	.word	0xd008a5b0
d008251c:	d0089688 	.word	0xd0089688
d0082520:	d008a788 	.word	0xd008a788
d0082524:	d008a6aa 	.word	0xd008a6aa
d0082528:	d008a884 	.word	0xd008a884
d008252c:	d008a74a 	.word	0xd008a74a
d0082530:	d008a6ac 	.word	0xd008a6ac
d0082534:	d0089a88 	.word	0xd0089a88
d0082538:	d008a87c 	.word	0xd008a87c
d008253c:	ea0ea0eb 	.word	0xea0ea0eb
d0082540:	d0089c98 	.word	0xd0089c98
d0082544:	4bbf      	ldr	r3, [pc, #764]	; (d0082844 <main+0x20ec>)
d0082546:	6819      	ldr	r1, [r3, #0]
d0082548:	f89a 000c 	ldrb.w	r0, [sl, #12]
d008254c:	4439      	add	r1, r7
d008254e:	f89a 500d 	ldrb.w	r5, [sl, #13]
d0082552:	3744      	adds	r7, #68	; 0x44
d0082554:	f89a 600e 	ldrb.w	r6, [sl, #14]
d0082558:	2344      	movs	r3, #68	; 0x44
d008255a:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d008255e:	f89a 400f 	ldrb.w	r4, [sl, #15]
d0082562:	b2bf      	uxth	r7, r7
d0082564:	2200      	movs	r2, #0
d0082566:	ea40 4506 	orr.w	r5, r0, r6, lsl #16
d008256a:	4648      	mov	r0, r9
d008256c:	b209      	sxth	r1, r1
d008256e:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0082572:	6864      	ldr	r4, [r4, #4]
d0082574:	f8cd 8000 	str.w	r8, [sp]
d0082578:	69a4      	ldr	r4, [r4, #24]
d008257a:	47a0      	blx	r4
d008257c:	f5b7 7f08 	cmp.w	r7, #544	; 0x220
d0082580:	d1e0      	bne.n	d0082544 <main+0x1dec>
d0082582:	49b1      	ldr	r1, [pc, #708]	; (d0082848 <main+0x20f0>)
d0082584:	4ab1      	ldr	r2, [pc, #708]	; (d008284c <main+0x20f4>)
d0082586:	680b      	ldr	r3, [r1, #0]
d0082588:	6812      	ldr	r2, [r2, #0]
d008258a:	3b03      	subs	r3, #3
d008258c:	4252      	negs	r2, r2
d008258e:	600b      	str	r3, [r1, #0]
d0082590:	4293      	cmp	r3, r2
d0082592:	dc02      	bgt.n	d008259a <main+0x1e42>
d0082594:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d0082598:	600b      	str	r3, [r1, #0]
d008259a:	f89a 500c 	ldrb.w	r5, [sl, #12]
d008259e:	2010      	movs	r0, #16
d00825a0:	f89a 100d 	ldrb.w	r1, [sl, #13]
d00825a4:	2402      	movs	r4, #2
d00825a6:	f89a 200e 	ldrb.w	r2, [sl, #14]
d00825aa:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d00825ae:	f89a 300f 	ldrb.w	r3, [sl, #15]
d00825b2:	4fa5      	ldr	r7, [pc, #660]	; (d0082848 <main+0x20f0>)
d00825b4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00825b8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00825bc:	685b      	ldr	r3, [r3, #4]
d00825be:	68db      	ldr	r3, [r3, #12]
d00825c0:	4798      	blx	r3
d00825c2:	f89a 000c 	ldrb.w	r0, [sl, #12]
d00825c6:	f89a 200d 	ldrb.w	r2, [sl, #13]
d00825ca:	4623      	mov	r3, r4
d00825cc:	f89a 500e 	ldrb.w	r5, [sl, #14]
d00825d0:	210e      	movs	r1, #14
d00825d2:	ea40 2202 	orr.w	r2, r0, r2, lsl #8
d00825d6:	f89a 600f 	ldrb.w	r6, [sl, #15]
d00825da:	6838      	ldr	r0, [r7, #0]
d00825dc:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d00825e0:	4a9b      	ldr	r2, [pc, #620]	; (d0082850 <main+0x20f8>)
d00825e2:	3802      	subs	r0, #2
d00825e4:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d00825e8:	686d      	ldr	r5, [r5, #4]
d00825ea:	9400      	str	r4, [sp, #0]
d00825ec:	6b2d      	ldr	r5, [r5, #48]	; 0x30
d00825ee:	47a8      	blx	r5
d00825f0:	f89a 000c 	ldrb.w	r0, [sl, #12]
d00825f4:	f89a 200d 	ldrb.w	r2, [sl, #13]
d00825f8:	4623      	mov	r3, r4
d00825fa:	f89a 500e 	ldrb.w	r5, [sl, #14]
d00825fe:	210e      	movs	r1, #14
d0082600:	ea40 2202 	orr.w	r2, r0, r2, lsl #8
d0082604:	f89a 600f 	ldrb.w	r6, [sl, #15]
d0082608:	6838      	ldr	r0, [r7, #0]
d008260a:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d008260e:	4a90      	ldr	r2, [pc, #576]	; (d0082850 <main+0x20f8>)
d0082610:	4420      	add	r0, r4
d0082612:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d0082616:	686d      	ldr	r5, [r5, #4]
d0082618:	9400      	str	r4, [sp, #0]
d008261a:	6b2d      	ldr	r5, [r5, #48]	; 0x30
d008261c:	47a8      	blx	r5
d008261e:	f89a 200c 	ldrb.w	r2, [sl, #12]
d0082622:	f89a 000d 	ldrb.w	r0, [sl, #13]
d0082626:	4623      	mov	r3, r4
d0082628:	f89a 600e 	ldrb.w	r6, [sl, #14]
d008262c:	210c      	movs	r1, #12
d008262e:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d0082632:	f89a 500f 	ldrb.w	r5, [sl, #15]
d0082636:	4a86      	ldr	r2, [pc, #536]	; (d0082850 <main+0x20f8>)
d0082638:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d008263c:	6838      	ldr	r0, [r7, #0]
d008263e:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0082642:	686d      	ldr	r5, [r5, #4]
d0082644:	9400      	str	r4, [sp, #0]
d0082646:	6b2d      	ldr	r5, [r5, #48]	; 0x30
d0082648:	47a8      	blx	r5
d008264a:	f89a 200c 	ldrb.w	r2, [sl, #12]
d008264e:	f89a 000d 	ldrb.w	r0, [sl, #13]
d0082652:	4623      	mov	r3, r4
d0082654:	f89a 600e 	ldrb.w	r6, [sl, #14]
d0082658:	2110      	movs	r1, #16
d008265a:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d008265e:	f89a 500f 	ldrb.w	r5, [sl, #15]
d0082662:	4a7b      	ldr	r2, [pc, #492]	; (d0082850 <main+0x20f8>)
d0082664:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d0082668:	6838      	ldr	r0, [r7, #0]
d008266a:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d008266e:	260c      	movs	r6, #12
d0082670:	686d      	ldr	r5, [r5, #4]
d0082672:	9400      	str	r4, [sp, #0]
d0082674:	6b2d      	ldr	r5, [r5, #48]	; 0x30
d0082676:	47a8      	blx	r5
d0082678:	f89a 000c 	ldrb.w	r0, [sl, #12]
d008267c:	f89a 300d 	ldrb.w	r3, [sl, #13]
d0082680:	2557      	movs	r5, #87	; 0x57
d0082682:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0082686:	ea40 2303 	orr.w	r3, r0, r3, lsl #8
d008268a:	f89a 100f 	ldrb.w	r1, [sl, #15]
d008268e:	2050      	movs	r0, #80	; 0x50
d0082690:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
d0082694:	4623      	mov	r3, r4
d0082696:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
d008269a:	4a6d      	ldr	r2, [pc, #436]	; (d0082850 <main+0x20f8>)
d008269c:	684f      	ldr	r7, [r1, #4]
d008269e:	210e      	movs	r1, #14
d00826a0:	9001      	str	r0, [sp, #4]
d00826a2:	4869      	ldr	r0, [pc, #420]	; (d0082848 <main+0x20f0>)
d00826a4:	9400      	str	r4, [sp, #0]
d00826a6:	9603      	str	r6, [sp, #12]
d00826a8:	9502      	str	r5, [sp, #8]
d00826aa:	6b7d      	ldr	r5, [r7, #52]	; 0x34
d00826ac:	6800      	ldr	r0, [r0, #0]
d00826ae:	47a8      	blx	r5
d00826b0:	f89a 500c 	ldrb.w	r5, [sl, #12]
d00826b4:	f89a 100d 	ldrb.w	r1, [sl, #13]
d00826b8:	2001      	movs	r0, #1
d00826ba:	f89a 200e 	ldrb.w	r2, [sl, #14]
d00826be:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d00826c2:	f89a 300f 	ldrb.w	r3, [sl, #15]
d00826c6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00826ca:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00826ce:	685b      	ldr	r3, [r3, #4]
d00826d0:	68db      	ldr	r3, [r3, #12]
d00826d2:	4798      	blx	r3
d00826d4:	f89a 100c 	ldrb.w	r1, [sl, #12]
d00826d8:	f89a 000d 	ldrb.w	r0, [sl, #13]
d00826dc:	2305      	movs	r3, #5
d00826de:	f89a 600e 	ldrb.w	r6, [sl, #14]
d00826e2:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00826e6:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d00826ea:	f89a 500f 	ldrb.w	r5, [sl, #15]
d00826ee:	2120      	movs	r1, #32
d00826f0:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d00826f4:	2000      	movs	r0, #0
d00826f6:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d00826fa:	686d      	ldr	r5, [r5, #4]
d00826fc:	686d      	ldr	r5, [r5, #4]
d00826fe:	47a8      	blx	r5
d0082700:	4b54      	ldr	r3, [pc, #336]	; (d0082854 <main+0x20fc>)
d0082702:	2140      	movs	r1, #64	; 0x40
d0082704:	a820      	add	r0, sp, #128	; 0x80
d0082706:	881a      	ldrh	r2, [r3, #0]
d0082708:	4b53      	ldr	r3, [pc, #332]	; (d0082858 <main+0x2100>)
d008270a:	681b      	ldr	r3, [r3, #0]
d008270c:	9200      	str	r2, [sp, #0]
d008270e:	4a53      	ldr	r2, [pc, #332]	; (d008285c <main+0x2104>)
d0082710:	f001 f94c 	bl	d00839ac <sniprintf>
d0082714:	f89a 500c 	ldrb.w	r5, [sl, #12]
d0082718:	f89a 100d 	ldrb.w	r1, [sl, #13]
d008271c:	4620      	mov	r0, r4
d008271e:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0082722:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d0082726:	f89a 300f 	ldrb.w	r3, [sl, #15]
d008272a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d008272e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0082732:	685b      	ldr	r3, [r3, #4]
d0082734:	68db      	ldr	r3, [r3, #12]
d0082736:	4798      	blx	r3
d0082738:	f89a 100c 	ldrb.w	r1, [sl, #12]
d008273c:	f89a 000d 	ldrb.w	r0, [sl, #13]
d0082740:	2301      	movs	r3, #1
d0082742:	f89a 600e 	ldrb.w	r6, [sl, #14]
d0082746:	aa20      	add	r2, sp, #128	; 0x80
d0082748:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d008274c:	f89a 500f 	ldrb.w	r5, [sl, #15]
d0082750:	f44f 7194 	mov.w	r1, #296	; 0x128
d0082754:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d0082758:	2008      	movs	r0, #8
d008275a:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d008275e:	686d      	ldr	r5, [r5, #4]
d0082760:	9400      	str	r4, [sp, #0]
d0082762:	6b2c      	ldr	r4, [r5, #48]	; 0x30
d0082764:	47a0      	blx	r4
d0082766:	4a3e      	ldr	r2, [pc, #248]	; (d0082860 <main+0x2108>)
d0082768:	7813      	ldrb	r3, [r2, #0]
d008276a:	f1c3 0301 	rsb	r3, r3, #1
d008276e:	b2db      	uxtb	r3, r3
d0082770:	7013      	strb	r3, [r2, #0]
d0082772:	7813      	ldrb	r3, [r2, #0]
d0082774:	f89a 100c 	ldrb.w	r1, [sl, #12]
d0082778:	f89a 000d 	ldrb.w	r0, [sl, #13]
d008277c:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0082780:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0082784:	2b00      	cmp	r3, #0
d0082786:	f000 80c4 	beq.w	d0082912 <main+0x21ba>
d008278a:	4936      	ldr	r1, [pc, #216]	; (d0082864 <main+0x210c>)
d008278c:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0082790:	f89a 300f 	ldrb.w	r3, [sl, #15]
d0082794:	6809      	ldr	r1, [r1, #0]
d0082796:	4834      	ldr	r0, [pc, #208]	; (d0082868 <main+0x2110>)
d0082798:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008279c:	6800      	ldr	r0, [r0, #0]
d008279e:	681b      	ldr	r3, [r3, #0]
d00827a0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00827a2:	4798      	blx	r3
d00827a4:	f89a 000c 	ldrb.w	r0, [sl, #12]
d00827a8:	f89a 100d 	ldrb.w	r1, [sl, #13]
d00827ac:	f89a 200e 	ldrb.w	r2, [sl, #14]
d00827b0:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00827b4:	f89a 300f 	ldrb.w	r3, [sl, #15]
d00827b8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00827bc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00827c0:	681b      	ldr	r3, [r3, #0]
d00827c2:	681b      	ldr	r3, [r3, #0]
d00827c4:	4798      	blx	r3
d00827c6:	f7fe ba7c 	b.w	d0080cc2 <main+0x56a>
d00827ca:	1f28      	subs	r0, r5, #4
d00827cc:	881a      	ldrh	r2, [r3, #0]
d00827ce:	8859      	ldrh	r1, [r3, #2]
d00827d0:	260b      	movs	r6, #11
d00827d2:	1080      	asrs	r0, r0, #2
d00827d4:	320a      	adds	r2, #10
d00827d6:	3002      	adds	r0, #2
d00827d8:	b212      	sxth	r2, r2
d00827da:	280c      	cmp	r0, #12
d00827dc:	801a      	strh	r2, [r3, #0]
d00827de:	bfa8      	it	ge
d00827e0:	200c      	movge	r0, #12
d00827e2:	2dff      	cmp	r5, #255	; 0xff
d00827e4:	b280      	uxth	r0, r0
d00827e6:	ea4f 0740 	mov.w	r7, r0, lsl #1
d00827ea:	eba1 0000 	sub.w	r0, r1, r0
d00827ee:	f107 0701 	add.w	r7, r7, #1
d00827f2:	b200      	sxth	r0, r0
d00827f4:	b2bf      	uxth	r7, r7
d00827f6:	f43f a904 	beq.w	d0081a02 <main+0x12aa>
d00827fa:	f7ff b900 	b.w	d00819fe <main+0x12a6>
d00827fe:	2701      	movs	r7, #1
d0082800:	2100      	movs	r1, #0
d0082802:	2607      	movs	r6, #7
d0082804:	f7ff b8f4 	b.w	d00819f0 <main+0x1298>
d0082808:	f001 0001 	and.w	r0, r1, #1
d008280c:	f1bc 0f18 	cmp.w	ip, #24
d0082810:	f100 0018 	add.w	r0, r0, #24
d0082814:	d92a      	bls.n	d008286c <main+0x2114>
d0082816:	f89a 000c 	ldrb.w	r0, [sl, #12]
d008281a:	f011 0f01 	tst.w	r1, #1
d008281e:	f89a 100d 	ldrb.w	r1, [sl, #13]
d0082822:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0082826:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d008282a:	f89a 300f 	ldrb.w	r3, [sl, #15]
d008282e:	bf0c      	ite	eq
d0082830:	2014      	moveq	r0, #20
d0082832:	2012      	movne	r0, #18
d0082834:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0082838:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008283c:	685b      	ldr	r3, [r3, #4]
d008283e:	68db      	ldr	r3, [r3, #12]
d0082840:	4798      	blx	r3
d0082842:	e5e7      	b.n	d0082414 <main+0x1cbc>
d0082844:	d008a87c 	.word	0xd008a87c
d0082848:	d008a6a4 	.word	0xd008a6a4
d008284c:	d008a880 	.word	0xd008a880
d0082850:	d008a548 	.word	0xd008a548
d0082854:	d008a874 	.word	0xd008a874
d0082858:	d008a878 	.word	0xd008a878
d008285c:	d008a518 	.word	0xd008a518
d0082860:	d008a748 	.word	0xd008a748
d0082864:	d008ab20 	.word	0xd008ab20
d0082868:	d008ab40 	.word	0xd008ab40
d008286c:	f89a c00c 	ldrb.w	ip, [sl, #12]
d0082870:	f89a 100d 	ldrb.w	r1, [sl, #13]
d0082874:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0082878:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d008287c:	f89a 300f 	ldrb.w	r3, [sl, #15]
d0082880:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0082884:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0082888:	685b      	ldr	r3, [r3, #4]
d008288a:	68db      	ldr	r3, [r3, #12]
d008288c:	4798      	blx	r3
d008288e:	e5c1      	b.n	d0082414 <main+0x1cbc>
d0082890:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0082894:	3a06      	subs	r2, #6
d0082896:	686d      	ldr	r5, [r5, #4]
d0082898:	b212      	sxth	r2, r2
d008289a:	9700      	str	r7, [sp, #0]
d008289c:	69ad      	ldr	r5, [r5, #24]
d008289e:	47a8      	blx	r5
d00828a0:	f89a 200c 	ldrb.w	r2, [sl, #12]
d00828a4:	f89a 100d 	ldrb.w	r1, [sl, #13]
d00828a8:	230b      	movs	r3, #11
d00828aa:	f89a 600e 	ldrb.w	r6, [sl, #14]
d00828ae:	4640      	mov	r0, r8
d00828b0:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
d00828b4:	f89a 500f 	ldrb.w	r5, [sl, #15]
d00828b8:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
d00828bc:	ea41 4606 	orr.w	r6, r1, r6, lsl #16
d00828c0:	f9b4 1000 	ldrsh.w	r1, [r4]
d00828c4:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d00828c8:	686d      	ldr	r5, [r5, #4]
d00828ca:	9700      	str	r7, [sp, #0]
d00828cc:	69ad      	ldr	r5, [r5, #24]
d00828ce:	47a8      	blx	r5
d00828d0:	f89a 200c 	ldrb.w	r2, [sl, #12]
d00828d4:	f89a 100d 	ldrb.w	r1, [sl, #13]
d00828d8:	230b      	movs	r3, #11
d00828da:	f89a 600e 	ldrb.w	r6, [sl, #14]
d00828de:	4640      	mov	r0, r8
d00828e0:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
d00828e4:	8862      	ldrh	r2, [r4, #2]
d00828e6:	f89a 500f 	ldrb.w	r5, [sl, #15]
d00828ea:	ea41 4606 	orr.w	r6, r1, r6, lsl #16
d00828ee:	3206      	adds	r2, #6
d00828f0:	f9b4 1000 	ldrsh.w	r1, [r4]
d00828f4:	f7ff bb1d 	b.w	d0081f32 <main+0x17da>
d00828f8:	3901      	subs	r1, #1
d00828fa:	b289      	uxth	r1, r1
d00828fc:	8159      	strh	r1, [r3, #10]
d00828fe:	2900      	cmp	r1, #0
d0082900:	f47f a983 	bne.w	d0081c0a <main+0x14b2>
d0082904:	f7ff b97a 	b.w	d0081bfc <main+0x14a4>
d0082908:	2300      	movs	r3, #0
d008290a:	4aa7      	ldr	r2, [pc, #668]	; (d0082ba8 <main+0x2450>)
d008290c:	4619      	mov	r1, r3
d008290e:	6013      	str	r3, [r2, #0]
d0082910:	e5f5      	b.n	d00824fe <main+0x1da6>
d0082912:	49a6      	ldr	r1, [pc, #664]	; (d0082bac <main+0x2454>)
d0082914:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0082918:	f89a 300f 	ldrb.w	r3, [sl, #15]
d008291c:	6809      	ldr	r1, [r1, #0]
d008291e:	48a4      	ldr	r0, [pc, #656]	; (d0082bb0 <main+0x2458>)
d0082920:	e73a      	b.n	d0082798 <main+0x2040>
d0082922:	9a05      	ldr	r2, [sp, #20]
d0082924:	4649      	mov	r1, r9
d0082926:	4ba3      	ldr	r3, [pc, #652]	; (d0082bb4 <main+0x245c>)
d0082928:	f108 0e10 	add.w	lr, r8, #16
d008292c:	f102 071e 	add.w	r7, r2, #30
d0082930:	464e      	mov	r6, r9
d0082932:	e016      	b.n	d0082962 <main+0x220a>
d0082934:	1c90      	adds	r0, r2, #2
d0082936:	bfac      	ite	ge
d0082938:	2500      	movge	r5, #0
d008293a:	2501      	movlt	r5, #1
d008293c:	bb35      	cbnz	r5, d008298c <main+0x2234>
d008293e:	4297      	cmp	r7, r2
d0082940:	f102 0001 	add.w	r0, r2, #1
d0082944:	db09      	blt.n	d008295a <main+0x2202>
d0082946:	9a05      	ldr	r2, [sp, #20]
d0082948:	4282      	cmp	r2, r0
d008294a:	dc06      	bgt.n	d008295a <main+0x2202>
d008294c:	45e6      	cmp	lr, ip
d008294e:	f10c 0201 	add.w	r2, ip, #1
d0082952:	db02      	blt.n	d008295a <main+0x2202>
d0082954:	4590      	cmp	r8, r2
d0082956:	f340 83b1 	ble.w	d00830bc <main+0x2964>
d008295a:	3101      	adds	r1, #1
d008295c:	330a      	adds	r3, #10
d008295e:	290c      	cmp	r1, #12
d0082960:	d019      	beq.n	d0082996 <main+0x223e>
d0082962:	7a1a      	ldrb	r2, [r3, #8]
d0082964:	2a00      	cmp	r2, #0
d0082966:	d0f8      	beq.n	d008295a <main+0x2202>
d0082968:	8858      	ldrh	r0, [r3, #2]
d008296a:	88dd      	ldrh	r5, [r3, #6]
d008296c:	881a      	ldrh	r2, [r3, #0]
d008296e:	4428      	add	r0, r5
d0082970:	889d      	ldrh	r5, [r3, #4]
d0082972:	b200      	sxth	r0, r0
d0082974:	442a      	add	r2, r5
d0082976:	ea4f 1c20 	mov.w	ip, r0, asr #4
d008297a:	8058      	strh	r0, [r3, #2]
d008297c:	b212      	sxth	r2, r2
d008297e:	f1ac 002a 	sub.w	r0, ip, #42	; 0x2a
d0082982:	801a      	strh	r2, [r3, #0]
d0082984:	1112      	asrs	r2, r2, #4
d0082986:	f5b0 7f82 	cmp.w	r0, #260	; 0x104
d008298a:	d9d3      	bls.n	d0082934 <main+0x21dc>
d008298c:	3101      	adds	r1, #1
d008298e:	721e      	strb	r6, [r3, #8]
d0082990:	330a      	adds	r3, #10
d0082992:	290c      	cmp	r1, #12
d0082994:	d1e5      	bne.n	d0082962 <main+0x220a>
d0082996:	9b05      	ldr	r3, [sp, #20]
d0082998:	2b1d      	cmp	r3, #29
d008299a:	f77f aa95 	ble.w	d0081ec8 <main+0x1770>
d008299e:	4619      	mov	r1, r3
d00829a0:	f9bb 3000 	ldrsh.w	r3, [fp]
d00829a4:	f103 021f 	add.w	r2, r3, #31
d00829a8:	428a      	cmp	r2, r1
d00829aa:	db0d      	blt.n	d00829c8 <main+0x2270>
d00829ac:	f101 021e 	add.w	r2, r1, #30
d00829b0:	4293      	cmp	r3, r2
d00829b2:	dc09      	bgt.n	d00829c8 <main+0x2270>
d00829b4:	990a      	ldr	r1, [sp, #40]	; 0x28
d00829b6:	460a      	mov	r2, r1
d00829b8:	321f      	adds	r2, #31
d00829ba:	4542      	cmp	r2, r8
d00829bc:	db04      	blt.n	d00829c8 <main+0x2270>
d00829be:	f108 0210 	add.w	r2, r8, #16
d00829c2:	4291      	cmp	r1, r2
d00829c4:	f340 856c 	ble.w	d00834a0 <main+0x2d48>
d00829c8:	f9bb 300c 	ldrsh.w	r3, [fp, #12]
d00829cc:	9905      	ldr	r1, [sp, #20]
d00829ce:	f103 021f 	add.w	r2, r3, #31
d00829d2:	4291      	cmp	r1, r2
d00829d4:	dc0d      	bgt.n	d00829f2 <main+0x229a>
d00829d6:	f101 021e 	add.w	r2, r1, #30
d00829da:	4293      	cmp	r3, r2
d00829dc:	dc09      	bgt.n	d00829f2 <main+0x229a>
d00829de:	990b      	ldr	r1, [sp, #44]	; 0x2c
d00829e0:	460a      	mov	r2, r1
d00829e2:	321f      	adds	r2, #31
d00829e4:	4542      	cmp	r2, r8
d00829e6:	db04      	blt.n	d00829f2 <main+0x229a>
d00829e8:	f108 0210 	add.w	r2, r8, #16
d00829ec:	4291      	cmp	r1, r2
d00829ee:	f340 855a 	ble.w	d00834a6 <main+0x2d4e>
d00829f2:	f9bb 3018 	ldrsh.w	r3, [fp, #24]
d00829f6:	9905      	ldr	r1, [sp, #20]
d00829f8:	f103 021f 	add.w	r2, r3, #31
d00829fc:	4291      	cmp	r1, r2
d00829fe:	dc0d      	bgt.n	d0082a1c <main+0x22c4>
d0082a00:	f101 021e 	add.w	r2, r1, #30
d0082a04:	4293      	cmp	r3, r2
d0082a06:	dc09      	bgt.n	d0082a1c <main+0x22c4>
d0082a08:	990c      	ldr	r1, [sp, #48]	; 0x30
d0082a0a:	460a      	mov	r2, r1
d0082a0c:	321f      	adds	r2, #31
d0082a0e:	4542      	cmp	r2, r8
d0082a10:	db04      	blt.n	d0082a1c <main+0x22c4>
d0082a12:	f108 0210 	add.w	r2, r8, #16
d0082a16:	4291      	cmp	r1, r2
d0082a18:	f340 854a 	ble.w	d00834b0 <main+0x2d58>
d0082a1c:	f9bb 3024 	ldrsh.w	r3, [fp, #36]	; 0x24
d0082a20:	9905      	ldr	r1, [sp, #20]
d0082a22:	f103 021f 	add.w	r2, r3, #31
d0082a26:	4291      	cmp	r1, r2
d0082a28:	dc0d      	bgt.n	d0082a46 <main+0x22ee>
d0082a2a:	f101 021e 	add.w	r2, r1, #30
d0082a2e:	4293      	cmp	r3, r2
d0082a30:	dc09      	bgt.n	d0082a46 <main+0x22ee>
d0082a32:	990d      	ldr	r1, [sp, #52]	; 0x34
d0082a34:	460a      	mov	r2, r1
d0082a36:	321f      	adds	r2, #31
d0082a38:	4542      	cmp	r2, r8
d0082a3a:	db04      	blt.n	d0082a46 <main+0x22ee>
d0082a3c:	f108 0210 	add.w	r2, r8, #16
d0082a40:	4291      	cmp	r1, r2
d0082a42:	f340 8528 	ble.w	d0083496 <main+0x2d3e>
d0082a46:	f9bb 3030 	ldrsh.w	r3, [fp, #48]	; 0x30
d0082a4a:	9905      	ldr	r1, [sp, #20]
d0082a4c:	f103 021f 	add.w	r2, r3, #31
d0082a50:	4291      	cmp	r1, r2
d0082a52:	f73f aa39 	bgt.w	d0081ec8 <main+0x1770>
d0082a56:	460a      	mov	r2, r1
d0082a58:	321e      	adds	r2, #30
d0082a5a:	4293      	cmp	r3, r2
d0082a5c:	f73f aa34 	bgt.w	d0081ec8 <main+0x1770>
d0082a60:	990e      	ldr	r1, [sp, #56]	; 0x38
d0082a62:	460a      	mov	r2, r1
d0082a64:	321f      	adds	r2, #31
d0082a66:	4542      	cmp	r2, r8
d0082a68:	f6ff aa2e 	blt.w	d0081ec8 <main+0x1770>
d0082a6c:	f108 0210 	add.w	r2, r8, #16
d0082a70:	4291      	cmp	r1, r2
d0082a72:	f73f aa29 	bgt.w	d0081ec8 <main+0x1770>
d0082a76:	9a13      	ldr	r2, [sp, #76]	; 0x4c
d0082a78:	2704      	movs	r7, #4
d0082a7a:	920f      	str	r2, [sp, #60]	; 0x3c
d0082a7c:	4d4e      	ldr	r5, [pc, #312]	; (d0082bb8 <main+0x2460>)
d0082a7e:	2096      	movs	r0, #150	; 0x96
d0082a80:	4e4e      	ldr	r6, [pc, #312]	; (d0082bbc <main+0x2464>)
d0082a82:	f64f 71e1 	movw	r1, #65505	; 0xffe1
d0082a86:	882a      	ldrh	r2, [r5, #0]
d0082a88:	7030      	strb	r0, [r6, #0]
d0082a8a:	484d      	ldr	r0, [pc, #308]	; (d0082bc0 <main+0x2468>)
d0082a8c:	3201      	adds	r2, #1
d0082a8e:	8001      	strh	r1, [r0, #0]
d0082a90:	2132      	movs	r1, #50	; 0x32
d0082a92:	484c      	ldr	r0, [pc, #304]	; (d0082bc4 <main+0x246c>)
d0082a94:	802a      	strh	r2, [r5, #0]
d0082a96:	4d4c      	ldr	r5, [pc, #304]	; (d0082bc8 <main+0x2470>)
d0082a98:	7982      	ldrb	r2, [r0, #6]
d0082a9a:	7029      	strb	r1, [r5, #0]
d0082a9c:	2a00      	cmp	r2, #0
d0082a9e:	f000 84ae 	beq.w	d00833fe <main+0x2ca6>
d0082aa2:	7b82      	ldrb	r2, [r0, #14]
d0082aa4:	2a00      	cmp	r2, #0
d0082aa6:	f000 84a9 	beq.w	d00833fc <main+0x2ca4>
d0082aaa:	7d82      	ldrb	r2, [r0, #22]
d0082aac:	2a00      	cmp	r2, #0
d0082aae:	f000 85b8 	beq.w	d0083622 <main+0x2eca>
d0082ab2:	7f82      	ldrb	r2, [r0, #30]
d0082ab4:	2a00      	cmp	r2, #0
d0082ab6:	f000 85b2 	beq.w	d008361e <main+0x2ec6>
d0082aba:	f890 2026 	ldrb.w	r2, [r0, #38]	; 0x26
d0082abe:	2a00      	cmp	r2, #0
d0082ac0:	f000 85a3 	beq.w	d008360a <main+0x2eb2>
d0082ac4:	f890 202e 	ldrb.w	r2, [r0, #46]	; 0x2e
d0082ac8:	2a00      	cmp	r2, #0
d0082aca:	f000 859c 	beq.w	d0083606 <main+0x2eae>
d0082ace:	f890 2036 	ldrb.w	r2, [r0, #54]	; 0x36
d0082ad2:	2a00      	cmp	r2, #0
d0082ad4:	f000 85b1 	beq.w	d008363a <main+0x2ee2>
d0082ad8:	f890 203e 	ldrb.w	r2, [r0, #62]	; 0x3e
d0082adc:	2a00      	cmp	r2, #0
d0082ade:	f000 85aa 	beq.w	d0083636 <main+0x2ede>
d0082ae2:	4938      	ldr	r1, [pc, #224]	; (d0082bc4 <main+0x246c>)
d0082ae4:	7d8a      	ldrb	r2, [r1, #22]
d0082ae6:	2a00      	cmp	r2, #0
d0082ae8:	f000 85a3 	beq.w	d0083632 <main+0x2eda>
d0082aec:	7f8a      	ldrb	r2, [r1, #30]
d0082aee:	2a00      	cmp	r2, #0
d0082af0:	f000 859d 	beq.w	d008362e <main+0x2ed6>
d0082af4:	f891 2026 	ldrb.w	r2, [r1, #38]	; 0x26
d0082af8:	2a00      	cmp	r2, #0
d0082afa:	f000 8596 	beq.w	d008362a <main+0x2ed2>
d0082afe:	f891 202e 	ldrb.w	r2, [r1, #46]	; 0x2e
d0082b02:	2a00      	cmp	r2, #0
d0082b04:	f000 858f 	beq.w	d0083626 <main+0x2ece>
d0082b08:	f891 2036 	ldrb.w	r2, [r1, #54]	; 0x36
d0082b0c:	2a00      	cmp	r2, #0
d0082b0e:	f000 8598 	beq.w	d0083642 <main+0x2eea>
d0082b12:	f891 203e 	ldrb.w	r2, [r1, #62]	; 0x3e
d0082b16:	2a00      	cmp	r2, #0
d0082b18:	f000 8591 	beq.w	d008363e <main+0x2ee6>
d0082b1c:	4e2b      	ldr	r6, [pc, #172]	; (d0082bcc <main+0x2474>)
d0082b1e:	f243 0339 	movw	r3, #12345	; 0x3039
d0082b22:	9806      	ldr	r0, [sp, #24]
d0082b24:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0082b28:	4929      	ldr	r1, [pc, #164]	; (d0082bd0 <main+0x2478>)
d0082b2a:	fb06 3e00 	mla	lr, r6, r0, r3
d0082b2e:	4a29      	ldr	r2, [pc, #164]	; (d0082bd4 <main+0x247c>)
d0082b30:	20b4      	movs	r0, #180	; 0xb4
d0082b32:	fb06 350e 	mla	r5, r6, lr, r3
d0082b36:	ea4f 4c9e 	mov.w	ip, lr, lsr #18
d0082b3a:	fb06 3305 	mla	r3, r6, r5, r3
d0082b3e:	4e26      	ldr	r6, [pc, #152]	; (d0082bd8 <main+0x2480>)
d0082b40:	fba1 1c0c 	umull	r1, ip, r1, ip
d0082b44:	0ca9      	lsrs	r1, r5, #18
d0082b46:	6033      	str	r3, [r6, #0]
d0082b48:	0c1b      	lsrs	r3, r3, #16
d0082b4a:	4e24      	ldr	r6, [pc, #144]	; (d0082bdc <main+0x2484>)
d0082b4c:	ea4f 0c9c 	mov.w	ip, ip, lsr #2
d0082b50:	fba6 6101 	umull	r6, r1, r6, r1
d0082b54:	fba2 6203 	umull	r6, r2, r2, r3
d0082b58:	fb00 f00c 	mul.w	r0, r0, ip
d0082b5c:	084e      	lsrs	r6, r1, #1
d0082b5e:	09d2      	lsrs	r2, r2, #7
d0082b60:	21e4      	movs	r1, #228	; 0xe4
d0082b62:	ebc0 401e 	rsb	r0, r0, lr, lsr #16
d0082b66:	fb01 f106 	mul.w	r1, r1, r6
d0082b6a:	eb02 0682 	add.w	r6, r2, r2, lsl #2
d0082b6e:	f200 2026 	addw	r0, r0, #550	; 0x226
d0082b72:	2200      	movs	r2, #0
d0082b74:	ebc1 4115 	rsb	r1, r1, r5, lsr #16
d0082b78:	eba3 1346 	sub.w	r3, r3, r6, lsl #5
d0082b7c:	f82b 0027 	strh.w	r0, [fp, r7, lsl #2]
d0082b80:	312a      	adds	r1, #42	; 0x2a
d0082b82:	9809      	ldr	r0, [sp, #36]	; 0x24
d0082b84:	eb0b 0787 	add.w	r7, fp, r7, lsl #2
d0082b88:	3378      	adds	r3, #120	; 0x78
d0082b8a:	7142      	strb	r2, [r0, #5]
d0082b8c:	80b9      	strh	r1, [r7, #4]
d0082b8e:	817b      	strh	r3, [r7, #10]
d0082b90:	72c2      	strb	r2, [r0, #11]
d0082b92:	7442      	strb	r2, [r0, #17]
d0082b94:	75c2      	strb	r2, [r0, #23]
d0082b96:	7742      	strb	r2, [r0, #29]
d0082b98:	f880 2023 	strb.w	r2, [r0, #35]	; 0x23
d0082b9c:	f880 2029 	strb.w	r2, [r0, #41]	; 0x29
d0082ba0:	f880 202f 	strb.w	r2, [r0, #47]	; 0x2f
d0082ba4:	f7ff b990 	b.w	d0081ec8 <main+0x1770>
d0082ba8:	d008a87c 	.word	0xd008a87c
d0082bac:	d008ab40 	.word	0xd008ab40
d0082bb0:	d008ab20 	.word	0xd008ab20
d0082bb4:	d008a788 	.word	0xd008a788
d0082bb8:	d008a874 	.word	0xd008a874
d0082bbc:	d008a884 	.word	0xd008a884
d0082bc0:	d008a6aa 	.word	0xd008a6aa
d0082bc4:	d008a800 	.word	0xd008a800
d0082bc8:	d008a885 	.word	0xd008a885
d0082bcc:	41c64e6d 	.word	0x41c64e6d
d0082bd0:	16c16c17 	.word	0x16c16c17
d0082bd4:	cccccccd 	.word	0xcccccccd
d0082bd8:	d008a6c0 	.word	0xd008a6c0
d0082bdc:	08fb823f 	.word	0x08fb823f
d0082be0:	9b05      	ldr	r3, [sp, #20]
d0082be2:	2b1d      	cmp	r3, #29
d0082be4:	f77e aec1 	ble.w	d008196a <main+0x1212>
d0082be8:	f1b9 0f81 	cmp.w	r9, #129	; 0x81
d0082bec:	f63e aebd 	bhi.w	d008196a <main+0x1212>
d0082bf0:	9809      	ldr	r0, [sp, #36]	; 0x24
d0082bf2:	9905      	ldr	r1, [sp, #20]
d0082bf4:	f890 202f 	ldrb.w	r2, [r0, #47]	; 0x2f
d0082bf8:	f101 041f 	add.w	r4, r1, #31
d0082bfc:	7945      	ldrb	r5, [r0, #5]
d0082bfe:	7ac6      	ldrb	r6, [r0, #11]
d0082c00:	7c47      	ldrb	r7, [r0, #17]
d0082c02:	f890 c017 	ldrb.w	ip, [r0, #23]
d0082c06:	7f43      	ldrb	r3, [r0, #29]
d0082c08:	f890 1023 	ldrb.w	r1, [r0, #35]	; 0x23
d0082c0c:	f890 0029 	ldrb.w	r0, [r0, #41]	; 0x29
d0082c10:	2a00      	cmp	r2, #0
d0082c12:	f000 82f5 	beq.w	d0083200 <main+0x2aa8>
d0082c16:	2800      	cmp	r0, #0
d0082c18:	f000 833a 	beq.w	d0083290 <main+0x2b38>
d0082c1c:	2900      	cmp	r1, #0
d0082c1e:	f000 8339 	beq.w	d0083294 <main+0x2b3c>
d0082c22:	2b00      	cmp	r3, #0
d0082c24:	f000 82ab 	beq.w	d008317e <main+0x2a26>
d0082c28:	f9bb 3000 	ldrsh.w	r3, [fp]
d0082c2c:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0082c30:	da02      	bge.n	d0082c38 <main+0x24e0>
d0082c32:	429c      	cmp	r4, r3
d0082c34:	f2c0 814f 	blt.w	d0082ed6 <main+0x277e>
d0082c38:	f9bb 300c 	ldrsh.w	r3, [fp, #12]
d0082c3c:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0082c40:	da02      	bge.n	d0082c48 <main+0x24f0>
d0082c42:	429c      	cmp	r4, r3
d0082c44:	f2c0 8180 	blt.w	d0082f48 <main+0x27f0>
d0082c48:	f9bb 3018 	ldrsh.w	r3, [fp, #24]
d0082c4c:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0082c50:	da02      	bge.n	d0082c58 <main+0x2500>
d0082c52:	429c      	cmp	r4, r3
d0082c54:	f2c0 81a4 	blt.w	d0082fa0 <main+0x2848>
d0082c58:	f9bb 3024 	ldrsh.w	r3, [fp, #36]	; 0x24
d0082c5c:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0082c60:	da02      	bge.n	d0082c68 <main+0x2510>
d0082c62:	429c      	cmp	r4, r3
d0082c64:	f2c0 81b3 	blt.w	d0082fce <main+0x2876>
d0082c68:	f9bb 3030 	ldrsh.w	r3, [fp, #48]	; 0x30
d0082c6c:	42a3      	cmp	r3, r4
d0082c6e:	dd03      	ble.n	d0082c78 <main+0x2520>
d0082c70:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0082c74:	f2c0 81c2 	blt.w	d0082ffc <main+0x28a4>
d0082c78:	4bbf      	ldr	r3, [pc, #764]	; (d0082f78 <main+0x2820>)
d0082c7a:	681b      	ldr	r3, [r3, #0]
d0082c7c:	9306      	str	r3, [sp, #24]
d0082c7e:	2303      	movs	r3, #3
d0082c80:	4abe      	ldr	r2, [pc, #760]	; (d0082f7c <main+0x2824>)
d0082c82:	7013      	strb	r3, [r2, #0]
d0082c84:	f7fe be74 	b.w	d0081970 <main+0x1218>
d0082c88:	9b05      	ldr	r3, [sp, #20]
d0082c8a:	2b1d      	cmp	r3, #29
d0082c8c:	f73e ae53 	bgt.w	d0081936 <main+0x11de>
d0082c90:	3302      	adds	r3, #2
d0082c92:	4abb      	ldr	r2, [pc, #748]	; (d0082f80 <main+0x2828>)
d0082c94:	b21b      	sxth	r3, r3
d0082c96:	2b1f      	cmp	r3, #31
d0082c98:	9305      	str	r3, [sp, #20]
d0082c9a:	bf04      	itt	eq
d0082c9c:	231e      	moveq	r3, #30
d0082c9e:	9305      	streq	r3, [sp, #20]
d0082ca0:	8013      	strh	r3, [r2, #0]
d0082ca2:	f7fe be48 	b.w	d0081936 <main+0x11de>
d0082ca6:	3302      	adds	r3, #2
d0082ca8:	4598      	cmp	r8, r3
d0082caa:	f77e ae3d 	ble.w	d0081928 <main+0x11d0>
d0082cae:	1e8b      	subs	r3, r1, #2
d0082cb0:	3106      	adds	r1, #6
d0082cb2:	f7fe be32 	b.w	d008191a <main+0x11c2>
d0082cb6:	f5b3 7f8f 	cmp.w	r3, #286	; 0x11e
d0082cba:	da6e      	bge.n	d0082d9a <main+0x2642>
d0082cbc:	1e9a      	subs	r2, r3, #2
d0082cbe:	f7fe be27 	b.w	d0081910 <main+0x11b8>
d0082cc2:	9a05      	ldr	r2, [sp, #20]
d0082cc4:	2a1d      	cmp	r2, #29
d0082cc6:	f77e ae1c 	ble.w	d0081902 <main+0x11aa>
d0082cca:	f7fe bdf0 	b.w	d00818ae <main+0x1156>
d0082cce:	f44f 7370 	mov.w	r3, #960	; 0x3c0
d0082cd2:	4aac      	ldr	r2, [pc, #688]	; (d0082f84 <main+0x282c>)
d0082cd4:	4619      	mov	r1, r3
d0082cd6:	8013      	strh	r3, [r2, #0]
d0082cd8:	f7fe bab5 	b.w	d0081246 <main+0xaee>
d0082cdc:	f1be 0f00 	cmp.w	lr, #0
d0082ce0:	f000 80b7 	beq.w	d0082e52 <main+0x26fa>
d0082ce4:	4da8      	ldr	r5, [pc, #672]	; (d0082f88 <main+0x2830>)
d0082ce6:	7ca8      	ldrb	r0, [r5, #18]
d0082ce8:	2800      	cmp	r0, #0
d0082cea:	f000 819e 	beq.w	d008302a <main+0x28d2>
d0082cee:	7f28      	ldrb	r0, [r5, #28]
d0082cf0:	2800      	cmp	r0, #0
d0082cf2:	f000 81b8 	beq.w	d0083066 <main+0x290e>
d0082cf6:	f895 0026 	ldrb.w	r0, [r5, #38]	; 0x26
d0082cfa:	2800      	cmp	r0, #0
d0082cfc:	f000 81b6 	beq.w	d008306c <main+0x2914>
d0082d00:	f895 0030 	ldrb.w	r0, [r5, #48]	; 0x30
d0082d04:	2800      	cmp	r0, #0
d0082d06:	f000 81b4 	beq.w	d0083072 <main+0x291a>
d0082d0a:	f895 003a 	ldrb.w	r0, [r5, #58]	; 0x3a
d0082d0e:	2800      	cmp	r0, #0
d0082d10:	f000 809d 	beq.w	d0082e4e <main+0x26f6>
d0082d14:	f895 0044 	ldrb.w	r0, [r5, #68]	; 0x44
d0082d18:	2800      	cmp	r0, #0
d0082d1a:	f000 81ad 	beq.w	d0083078 <main+0x2920>
d0082d1e:	f895 004e 	ldrb.w	r0, [r5, #78]	; 0x4e
d0082d22:	2800      	cmp	r0, #0
d0082d24:	f000 81ab 	beq.w	d008307e <main+0x2926>
d0082d28:	f895 0058 	ldrb.w	r0, [r5, #88]	; 0x58
d0082d2c:	2800      	cmp	r0, #0
d0082d2e:	f000 81a9 	beq.w	d0083084 <main+0x292c>
d0082d32:	f895 0062 	ldrb.w	r0, [r5, #98]	; 0x62
d0082d36:	2800      	cmp	r0, #0
d0082d38:	f000 81b7 	beq.w	d00830aa <main+0x2952>
d0082d3c:	f895 006c 	ldrb.w	r0, [r5, #108]	; 0x6c
d0082d40:	2800      	cmp	r0, #0
d0082d42:	f000 81b5 	beq.w	d00830b0 <main+0x2958>
d0082d46:	f895 0076 	ldrb.w	r0, [r5, #118]	; 0x76
d0082d4a:	2800      	cmp	r0, #0
d0082d4c:	f000 81b3 	beq.w	d00830b6 <main+0x295e>
d0082d50:	9906      	ldr	r1, [sp, #24]
d0082d52:	f243 0539 	movw	r5, #12345	; 0x3039
d0082d56:	4608      	mov	r0, r1
d0082d58:	498c      	ldr	r1, [pc, #560]	; (d0082f8c <main+0x2834>)
d0082d5a:	fb01 5100 	mla	r1, r1, r0, r5
d0082d5e:	4608      	mov	r0, r1
d0082d60:	9106      	str	r1, [sp, #24]
d0082d62:	eb02 01c2 	add.w	r1, r2, r2, lsl #3
d0082d66:	0c05      	lsrs	r5, r0, #16
d0082d68:	4889      	ldr	r0, [pc, #548]	; (d0082f90 <main+0x2838>)
d0082d6a:	315f      	adds	r1, #95	; 0x5f
d0082d6c:	fba0 6005 	umull	r6, r0, r0, r5
d0082d70:	26aa      	movs	r6, #170	; 0xaa
d0082d72:	09c0      	lsrs	r0, r0, #7
d0082d74:	fb06 5010 	mls	r0, r6, r0, r5
d0082d78:	4401      	add	r1, r0
d0082d7a:	8159      	strh	r1, [r3, #10]
d0082d7c:	f7fe bf45 	b.w	d0081c0a <main+0x14b2>
d0082d80:	9b06      	ldr	r3, [sp, #24]
d0082d82:	f1be 0f00 	cmp.w	lr, #0
d0082d86:	bfb4      	ite	lt
d0082d88:	2300      	movlt	r3, #0
d0082d8a:	f003 0301 	andge.w	r3, r3, #1
d0082d8e:	9306      	str	r3, [sp, #24]
d0082d90:	f7fe bd68 	b.w	d0081864 <main+0x110c>
d0082d94:	461a      	mov	r2, r3
d0082d96:	f7fe bcca 	b.w	d008172e <main+0xfd6>
d0082d9a:	f240 101d 	movw	r0, #285	; 0x11d
d0082d9e:	4c7d      	ldr	r4, [pc, #500]	; (d0082f94 <main+0x283c>)
d0082da0:	f240 121b 	movw	r2, #283	; 0x11b
d0082da4:	4603      	mov	r3, r0
d0082da6:	8020      	strh	r0, [r4, #0]
d0082da8:	f7fe bdb2 	b.w	d0081910 <main+0x11b8>
d0082dac:	f44f 7343 	mov.w	r3, #780	; 0x30c
d0082db0:	f04f 3eff 	mov.w	lr, #4294967295	; 0xffffffff
d0082db4:	f7fe bb1a 	b.w	d00813ec <main+0xc94>
d0082db8:	4613      	mov	r3, r2
d0082dba:	f7fe bc2d 	b.w	d0081618 <main+0xec0>
d0082dbe:	461a      	mov	r2, r3
d0082dc0:	f7fe bb9f 	b.w	d0081502 <main+0xdaa>
d0082dc4:	2300      	movs	r3, #0
d0082dc6:	4a70      	ldr	r2, [pc, #448]	; (d0082f88 <main+0x2830>)
d0082dc8:	7213      	strb	r3, [r2, #8]
d0082dca:	f7fe bf40 	b.w	d0081c4e <main+0x14f6>
d0082dce:	2300      	movs	r3, #0
d0082dd0:	4a6d      	ldr	r2, [pc, #436]	; (d0082f88 <main+0x2830>)
d0082dd2:	7493      	strb	r3, [r2, #18]
d0082dd4:	f7fe bf52 	b.w	d0081c7c <main+0x1524>
d0082dd8:	2300      	movs	r3, #0
d0082dda:	4a6b      	ldr	r2, [pc, #428]	; (d0082f88 <main+0x2830>)
d0082ddc:	7713      	strb	r3, [r2, #28]
d0082dde:	f7fe bf64 	b.w	d0081caa <main+0x1552>
d0082de2:	2300      	movs	r3, #0
d0082de4:	4a68      	ldr	r2, [pc, #416]	; (d0082f88 <main+0x2830>)
d0082de6:	f882 3026 	strb.w	r3, [r2, #38]	; 0x26
d0082dea:	f7fe bf8d 	b.w	d0081d08 <main+0x15b0>
d0082dee:	2300      	movs	r3, #0
d0082df0:	4a65      	ldr	r2, [pc, #404]	; (d0082f88 <main+0x2830>)
d0082df2:	f882 3030 	strb.w	r3, [r2, #48]	; 0x30
d0082df6:	f7fe bf9f 	b.w	d0081d38 <main+0x15e0>
d0082dfa:	2300      	movs	r3, #0
d0082dfc:	4a62      	ldr	r2, [pc, #392]	; (d0082f88 <main+0x2830>)
d0082dfe:	f882 303a 	strb.w	r3, [r2, #58]	; 0x3a
d0082e02:	f7fe bfb1 	b.w	d0081d68 <main+0x1610>
d0082e06:	2300      	movs	r3, #0
d0082e08:	4a5f      	ldr	r2, [pc, #380]	; (d0082f88 <main+0x2830>)
d0082e0a:	f882 3044 	strb.w	r3, [r2, #68]	; 0x44
d0082e0e:	f7fe bfc5 	b.w	d0081d9c <main+0x1644>
d0082e12:	2300      	movs	r3, #0
d0082e14:	4a5c      	ldr	r2, [pc, #368]	; (d0082f88 <main+0x2830>)
d0082e16:	f882 304e 	strb.w	r3, [r2, #78]	; 0x4e
d0082e1a:	f7fe bfdd 	b.w	d0081dd8 <main+0x1680>
d0082e1e:	2300      	movs	r3, #0
d0082e20:	4a59      	ldr	r2, [pc, #356]	; (d0082f88 <main+0x2830>)
d0082e22:	f882 3058 	strb.w	r3, [r2, #88]	; 0x58
d0082e26:	f7fe bff5 	b.w	d0081e14 <main+0x16bc>
d0082e2a:	2300      	movs	r3, #0
d0082e2c:	4a56      	ldr	r2, [pc, #344]	; (d0082f88 <main+0x2830>)
d0082e2e:	f882 3062 	strb.w	r3, [r2, #98]	; 0x62
d0082e32:	f7ff b80d 	b.w	d0081e50 <main+0x16f8>
d0082e36:	2300      	movs	r3, #0
d0082e38:	4a53      	ldr	r2, [pc, #332]	; (d0082f88 <main+0x2830>)
d0082e3a:	f882 306c 	strb.w	r3, [r2, #108]	; 0x6c
d0082e3e:	f7ff b825 	b.w	d0081e8c <main+0x1734>
d0082e42:	2300      	movs	r3, #0
d0082e44:	4a50      	ldr	r2, [pc, #320]	; (d0082f88 <main+0x2830>)
d0082e46:	f882 3076 	strb.w	r3, [r2, #118]	; 0x76
d0082e4a:	f7ff b83d 	b.w	d0081ec8 <main+0x1770>
d0082e4e:	f04f 0e05 	mov.w	lr, #5
d0082e52:	3110      	adds	r1, #16
d0082e54:	885d      	ldrh	r5, [r3, #2]
d0082e56:	b289      	uxth	r1, r1
d0082e58:	3510      	adds	r5, #16
d0082e5a:	eb01 000c 	add.w	r0, r1, ip
d0082e5e:	b22d      	sxth	r5, r5
d0082e60:	b200      	sxth	r0, r0
d0082e62:	2806      	cmp	r0, #6
d0082e64:	dc26      	bgt.n	d0082eb4 <main+0x275c>
d0082e66:	2001      	movs	r0, #1
d0082e68:	4607      	mov	r7, r0
d0082e6a:	9807      	ldr	r0, [sp, #28]
d0082e6c:	eb0e 0e8e 	add.w	lr, lr, lr, lsl #2
d0082e70:	0109      	lsls	r1, r1, #4
d0082e72:	4e45      	ldr	r6, [pc, #276]	; (d0082f88 <main+0x2830>)
d0082e74:	1b40      	subs	r0, r0, r5
d0082e76:	012d      	lsls	r5, r5, #4
d0082e78:	f826 101e 	strh.w	r1, [r6, lr, lsl #1]
d0082e7c:	eb06 014e 	add.w	r1, r6, lr, lsl #1
d0082e80:	0100      	lsls	r0, r0, #4
d0082e82:	804d      	strh	r5, [r1, #2]
d0082e84:	fb90 f0f7 	sdiv	r0, r0, r7
d0082e88:	f04f 0701 	mov.w	r7, #1
d0082e8c:	b200      	sxth	r0, r0
d0082e8e:	720f      	strb	r7, [r1, #8]
d0082e90:	2870      	cmp	r0, #112	; 0x70
d0082e92:	f64f 7790 	movw	r7, #65424	; 0xff90
d0082e96:	80c8      	strh	r0, [r1, #6]
d0082e98:	808f      	strh	r7, [r1, #4]
d0082e9a:	dd05      	ble.n	d0082ea8 <main+0x2750>
d0082e9c:	2070      	movs	r0, #112	; 0x70
d0082e9e:	4e3a      	ldr	r6, [pc, #232]	; (d0082f88 <main+0x2830>)
d0082ea0:	80c8      	strh	r0, [r1, #6]
d0082ea2:	f896 e008 	ldrb.w	lr, [r6, #8]
d0082ea6:	e753      	b.n	d0082d50 <main+0x25f8>
d0082ea8:	3070      	adds	r0, #112	; 0x70
d0082eaa:	db0d      	blt.n	d0082ec8 <main+0x2770>
d0082eac:	4936      	ldr	r1, [pc, #216]	; (d0082f88 <main+0x2830>)
d0082eae:	f891 e008 	ldrb.w	lr, [r1, #8]
d0082eb2:	e74d      	b.n	d0082d50 <main+0x25f8>
d0082eb4:	4e38      	ldr	r6, [pc, #224]	; (d0082f98 <main+0x2840>)
d0082eb6:	fb86 7600 	smull	r7, r6, r6, r0
d0082eba:	17c7      	asrs	r7, r0, #31
d0082ebc:	4430      	add	r0, r6
d0082ebe:	ebc7 00a0 	rsb	r0, r7, r0, asr #2
d0082ec2:	b200      	sxth	r0, r0
d0082ec4:	4607      	mov	r7, r0
d0082ec6:	e7d0      	b.n	d0082e6a <main+0x2712>
d0082ec8:	482f      	ldr	r0, [pc, #188]	; (d0082f88 <main+0x2830>)
d0082eca:	f890 e008 	ldrb.w	lr, [r0, #8]
d0082ece:	f64f 7090 	movw	r0, #65424	; 0xff90
d0082ed2:	80c8      	strh	r0, [r1, #6]
d0082ed4:	e73c      	b.n	d0082d50 <main+0x25f8>
d0082ed6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d0082ed8:	9a07      	ldr	r2, [sp, #28]
d0082eda:	3310      	adds	r3, #16
d0082edc:	b21b      	sxth	r3, r3
d0082ede:	1a9b      	subs	r3, r3, r2
d0082ee0:	3315      	adds	r3, #21
d0082ee2:	2b2a      	cmp	r3, #42	; 0x2a
d0082ee4:	f63f aea8 	bhi.w	d0082c38 <main+0x24e0>
d0082ee8:	2d00      	cmp	r5, #0
d0082eea:	f000 82c8 	beq.w	d008347e <main+0x2d26>
d0082eee:	2e00      	cmp	r6, #0
d0082ef0:	f000 82c7 	beq.w	d0083482 <main+0x2d2a>
d0082ef4:	2f00      	cmp	r7, #0
d0082ef6:	f000 82c8 	beq.w	d008348a <main+0x2d32>
d0082efa:	f1bc 0f00 	cmp.w	ip, #0
d0082efe:	f47f ae9b 	bne.w	d0082c38 <main+0x24e0>
d0082f02:	2203      	movs	r2, #3
d0082f04:	4b1c      	ldr	r3, [pc, #112]	; (d0082f78 <main+0x2820>)
d0082f06:	f243 0e39 	movw	lr, #12345	; 0x3039
d0082f0a:	9905      	ldr	r1, [sp, #20]
d0082f0c:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0082f10:	681b      	ldr	r3, [r3, #0]
d0082f12:	481e      	ldr	r0, [pc, #120]	; (d0082f8c <main+0x2834>)
d0082f14:	311d      	adds	r1, #29
d0082f16:	9c09      	ldr	r4, [sp, #36]	; 0x24
d0082f18:	fb00 e003 	mla	r0, r0, r3, lr
d0082f1c:	4b1f      	ldr	r3, [pc, #124]	; (d0082f9c <main+0x2844>)
d0082f1e:	f824 1012 	strh.w	r1, [r4, r2, lsl #1]
d0082f22:	eb04 0242 	add.w	r2, r4, r2, lsl #1
d0082f26:	0c01      	lsrs	r1, r0, #16
d0082f28:	9c07      	ldr	r4, [sp, #28]
d0082f2a:	9006      	str	r0, [sp, #24]
d0082f2c:	f44f 7080 	mov.w	r0, #256	; 0x100
d0082f30:	8054      	strh	r4, [r2, #2]
d0082f32:	fba3 4301 	umull	r4, r3, r3, r1
d0082f36:	8090      	strh	r0, [r2, #4]
d0082f38:	08db      	lsrs	r3, r3, #3
d0082f3a:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0082f3e:	eba1 0343 	sub.w	r3, r1, r3, lsl #1
d0082f42:	3309      	adds	r3, #9
d0082f44:	b2db      	uxtb	r3, r3
d0082f46:	e69b      	b.n	d0082c80 <main+0x2528>
d0082f48:	9b10      	ldr	r3, [sp, #64]	; 0x40
d0082f4a:	9a07      	ldr	r2, [sp, #28]
d0082f4c:	3310      	adds	r3, #16
d0082f4e:	b21b      	sxth	r3, r3
d0082f50:	1a9b      	subs	r3, r3, r2
d0082f52:	3315      	adds	r3, #21
d0082f54:	2b2a      	cmp	r3, #42	; 0x2a
d0082f56:	f63f ae77 	bhi.w	d0082c48 <main+0x24f0>
d0082f5a:	2d00      	cmp	r5, #0
d0082f5c:	f000 828f 	beq.w	d008347e <main+0x2d26>
d0082f60:	2e00      	cmp	r6, #0
d0082f62:	f000 828e 	beq.w	d0083482 <main+0x2d2a>
d0082f66:	2f00      	cmp	r7, #0
d0082f68:	f000 828f 	beq.w	d008348a <main+0x2d32>
d0082f6c:	f1bc 0f00 	cmp.w	ip, #0
d0082f70:	f47f ae6a 	bne.w	d0082c48 <main+0x24f0>
d0082f74:	e7c5      	b.n	d0082f02 <main+0x27aa>
d0082f76:	bf00      	nop
d0082f78:	d008a6c0 	.word	0xd008a6c0
d0082f7c:	d008a6a0 	.word	0xd008a6a0
d0082f80:	d008a6aa 	.word	0xd008a6aa
d0082f84:	d008a6ae 	.word	0xd008a6ae
d0082f88:	d008a788 	.word	0xd008a788
d0082f8c:	41c64e6d 	.word	0x41c64e6d
d0082f90:	c0c0c0c1 	.word	0xc0c0c0c1
d0082f94:	d008a6a8 	.word	0xd008a6a8
d0082f98:	92492493 	.word	0x92492493
d0082f9c:	cccccccd 	.word	0xcccccccd
d0082fa0:	9b11      	ldr	r3, [sp, #68]	; 0x44
d0082fa2:	9a07      	ldr	r2, [sp, #28]
d0082fa4:	3310      	adds	r3, #16
d0082fa6:	b21b      	sxth	r3, r3
d0082fa8:	1a9b      	subs	r3, r3, r2
d0082faa:	3315      	adds	r3, #21
d0082fac:	2b2a      	cmp	r3, #42	; 0x2a
d0082fae:	f63f ae53 	bhi.w	d0082c58 <main+0x2500>
d0082fb2:	2d00      	cmp	r5, #0
d0082fb4:	f000 8263 	beq.w	d008347e <main+0x2d26>
d0082fb8:	2e00      	cmp	r6, #0
d0082fba:	f000 8262 	beq.w	d0083482 <main+0x2d2a>
d0082fbe:	2f00      	cmp	r7, #0
d0082fc0:	f000 8263 	beq.w	d008348a <main+0x2d32>
d0082fc4:	f1bc 0f00 	cmp.w	ip, #0
d0082fc8:	f47f ae46 	bne.w	d0082c58 <main+0x2500>
d0082fcc:	e799      	b.n	d0082f02 <main+0x27aa>
d0082fce:	9b12      	ldr	r3, [sp, #72]	; 0x48
d0082fd0:	9a07      	ldr	r2, [sp, #28]
d0082fd2:	3310      	adds	r3, #16
d0082fd4:	b21b      	sxth	r3, r3
d0082fd6:	1a9b      	subs	r3, r3, r2
d0082fd8:	3315      	adds	r3, #21
d0082fda:	2b2a      	cmp	r3, #42	; 0x2a
d0082fdc:	f63f ae44 	bhi.w	d0082c68 <main+0x2510>
d0082fe0:	2d00      	cmp	r5, #0
d0082fe2:	f000 824c 	beq.w	d008347e <main+0x2d26>
d0082fe6:	2e00      	cmp	r6, #0
d0082fe8:	f000 824b 	beq.w	d0083482 <main+0x2d2a>
d0082fec:	2f00      	cmp	r7, #0
d0082fee:	f000 824c 	beq.w	d008348a <main+0x2d32>
d0082ff2:	f1bc 0f00 	cmp.w	ip, #0
d0082ff6:	f47f ae37 	bne.w	d0082c68 <main+0x2510>
d0082ffa:	e782      	b.n	d0082f02 <main+0x27aa>
d0082ffc:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d0082ffe:	9a07      	ldr	r2, [sp, #28]
d0083000:	3310      	adds	r3, #16
d0083002:	b21b      	sxth	r3, r3
d0083004:	1a9b      	subs	r3, r3, r2
d0083006:	3315      	adds	r3, #21
d0083008:	2b2a      	cmp	r3, #42	; 0x2a
d008300a:	f63f ae35 	bhi.w	d0082c78 <main+0x2520>
d008300e:	2d00      	cmp	r5, #0
d0083010:	f000 8235 	beq.w	d008347e <main+0x2d26>
d0083014:	2e00      	cmp	r6, #0
d0083016:	f000 8234 	beq.w	d0083482 <main+0x2d2a>
d008301a:	2f00      	cmp	r7, #0
d008301c:	f000 8235 	beq.w	d008348a <main+0x2d32>
d0083020:	f1bc 0f00 	cmp.w	ip, #0
d0083024:	f47f ae28 	bne.w	d0082c78 <main+0x2520>
d0083028:	e76b      	b.n	d0082f02 <main+0x27aa>
d008302a:	f04f 0e01 	mov.w	lr, #1
d008302e:	e710      	b.n	d0082e52 <main+0x26fa>
d0083030:	2001      	movs	r0, #1
d0083032:	9c06      	ldr	r4, [sp, #24]
d0083034:	f243 0739 	movw	r7, #12345	; 0x3039
d0083038:	3110      	adds	r1, #16
d008303a:	3510      	adds	r5, #16
d008303c:	4626      	mov	r6, r4
d008303e:	4cb7      	ldr	r4, [pc, #732]	; (d008331c <main+0x2bc4>)
d0083040:	fb04 7406 	mla	r4, r4, r6, r7
d0083044:	4fb6      	ldr	r7, [pc, #728]	; (d0083320 <main+0x2bc8>)
d0083046:	eb07 06c0 	add.w	r6, r7, r0, lsl #3
d008304a:	f827 1030 	strh.w	r1, [r7, r0, lsl #3]
d008304e:	f3c4 4105 	ubfx	r1, r4, #16, #6
d0083052:	f04f 0001 	mov.w	r0, #1
d0083056:	9406      	str	r4, [sp, #24]
d0083058:	71b0      	strb	r0, [r6, #6]
d008305a:	f886 e004 	strb.w	lr, [r6, #4]
d008305e:	8075      	strh	r5, [r6, #2]
d0083060:	7171      	strb	r1, [r6, #5]
d0083062:	f7fe bd55 	b.w	d0081b10 <main+0x13b8>
d0083066:	f04f 0e02 	mov.w	lr, #2
d008306a:	e6f2      	b.n	d0082e52 <main+0x26fa>
d008306c:	f04f 0e03 	mov.w	lr, #3
d0083070:	e6ef      	b.n	d0082e52 <main+0x26fa>
d0083072:	f04f 0e04 	mov.w	lr, #4
d0083076:	e6ec      	b.n	d0082e52 <main+0x26fa>
d0083078:	f04f 0e06 	mov.w	lr, #6
d008307c:	e6e9      	b.n	d0082e52 <main+0x26fa>
d008307e:	f04f 0e07 	mov.w	lr, #7
d0083082:	e6e6      	b.n	d0082e52 <main+0x26fa>
d0083084:	f04f 0e08 	mov.w	lr, #8
d0083088:	e6e3      	b.n	d0082e52 <main+0x26fa>
d008308a:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
d008308c:	2200      	movs	r2, #0
d008308e:	f7fe bd16 	b.w	d0081abe <main+0x1366>
d0083092:	9d10      	ldr	r5, [sp, #64]	; 0x40
d0083094:	2201      	movs	r2, #1
d0083096:	f7fe bd12 	b.w	d0081abe <main+0x1366>
d008309a:	9d11      	ldr	r5, [sp, #68]	; 0x44
d008309c:	2202      	movs	r2, #2
d008309e:	f7fe bd0e 	b.w	d0081abe <main+0x1366>
d00830a2:	9d12      	ldr	r5, [sp, #72]	; 0x48
d00830a4:	2203      	movs	r2, #3
d00830a6:	f7fe bd0a 	b.w	d0081abe <main+0x1366>
d00830aa:	f04f 0e09 	mov.w	lr, #9
d00830ae:	e6d0      	b.n	d0082e52 <main+0x26fa>
d00830b0:	f04f 0e0a 	mov.w	lr, #10
d00830b4:	e6cd      	b.n	d0082e52 <main+0x26fa>
d00830b6:	f04f 0e0b 	mov.w	lr, #11
d00830ba:	e6ca      	b.n	d0082e52 <main+0x26fa>
d00830bc:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d00830c0:	4b98      	ldr	r3, [pc, #608]	; (d0083324 <main+0x2bcc>)
d00830c2:	4e99      	ldr	r6, [pc, #612]	; (d0083328 <main+0x2bd0>)
d00830c4:	2096      	movs	r0, #150	; 0x96
d00830c6:	eb03 0341 	add.w	r3, r3, r1, lsl #1
d00830ca:	4998      	ldr	r1, [pc, #608]	; (d008332c <main+0x2bd4>)
d00830cc:	8832      	ldrh	r2, [r6, #0]
d00830ce:	7008      	strb	r0, [r1, #0]
d00830d0:	f64f 70e1 	movw	r0, #65505	; 0xffe1
d00830d4:	721d      	strb	r5, [r3, #8]
d00830d6:	3201      	adds	r2, #1
d00830d8:	4b95      	ldr	r3, [pc, #596]	; (d0083330 <main+0x2bd8>)
d00830da:	2132      	movs	r1, #50	; 0x32
d00830dc:	4d95      	ldr	r5, [pc, #596]	; (d0083334 <main+0x2bdc>)
d00830de:	8018      	strh	r0, [r3, #0]
d00830e0:	488f      	ldr	r0, [pc, #572]	; (d0083320 <main+0x2bc8>)
d00830e2:	8032      	strh	r2, [r6, #0]
d00830e4:	22a3      	movs	r2, #163	; 0xa3
d00830e6:	7029      	strb	r1, [r5, #0]
d00830e8:	7983      	ldrb	r3, [r0, #6]
d00830ea:	4993      	ldr	r1, [pc, #588]	; (d0083338 <main+0x2be0>)
d00830ec:	800a      	strh	r2, [r1, #0]
d00830ee:	2b00      	cmp	r3, #0
d00830f0:	f000 816b 	beq.w	d00833ca <main+0x2c72>
d00830f4:	7b83      	ldrb	r3, [r0, #14]
d00830f6:	2b00      	cmp	r3, #0
d00830f8:	f000 8166 	beq.w	d00833c8 <main+0x2c70>
d00830fc:	7d83      	ldrb	r3, [r0, #22]
d00830fe:	2b00      	cmp	r3, #0
d0083100:	f000 827d 	beq.w	d00835fe <main+0x2ea6>
d0083104:	7f83      	ldrb	r3, [r0, #30]
d0083106:	2b00      	cmp	r3, #0
d0083108:	f000 827b 	beq.w	d0083602 <main+0x2eaa>
d008310c:	f890 3026 	ldrb.w	r3, [r0, #38]	; 0x26
d0083110:	2b00      	cmp	r3, #0
d0083112:	f000 8282 	beq.w	d008361a <main+0x2ec2>
d0083116:	f890 302e 	ldrb.w	r3, [r0, #46]	; 0x2e
d008311a:	2b00      	cmp	r3, #0
d008311c:	f000 827b 	beq.w	d0083616 <main+0x2ebe>
d0083120:	f890 3036 	ldrb.w	r3, [r0, #54]	; 0x36
d0083124:	2b00      	cmp	r3, #0
d0083126:	f000 8274 	beq.w	d0083612 <main+0x2eba>
d008312a:	f890 303e 	ldrb.w	r3, [r0, #62]	; 0x3e
d008312e:	2b00      	cmp	r3, #0
d0083130:	f000 826d 	beq.w	d008360e <main+0x2eb6>
d0083134:	2300      	movs	r3, #0
d0083136:	4a7b      	ldr	r2, [pc, #492]	; (d0083324 <main+0x2bcc>)
d0083138:	7213      	strb	r3, [r2, #8]
d008313a:	7493      	strb	r3, [r2, #18]
d008313c:	7713      	strb	r3, [r2, #28]
d008313e:	f882 3026 	strb.w	r3, [r2, #38]	; 0x26
d0083142:	f882 3030 	strb.w	r3, [r2, #48]	; 0x30
d0083146:	f882 303a 	strb.w	r3, [r2, #58]	; 0x3a
d008314a:	f882 3044 	strb.w	r3, [r2, #68]	; 0x44
d008314e:	f882 304e 	strb.w	r3, [r2, #78]	; 0x4e
d0083152:	f882 3058 	strb.w	r3, [r2, #88]	; 0x58
d0083156:	f882 3062 	strb.w	r3, [r2, #98]	; 0x62
d008315a:	f882 306c 	strb.w	r3, [r2, #108]	; 0x6c
d008315e:	f882 3076 	strb.w	r3, [r2, #118]	; 0x76
d0083162:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0083164:	7153      	strb	r3, [r2, #5]
d0083166:	72d3      	strb	r3, [r2, #11]
d0083168:	7453      	strb	r3, [r2, #17]
d008316a:	75d3      	strb	r3, [r2, #23]
d008316c:	7753      	strb	r3, [r2, #29]
d008316e:	f882 3023 	strb.w	r3, [r2, #35]	; 0x23
d0083172:	f882 3029 	strb.w	r3, [r2, #41]	; 0x29
d0083176:	f882 302f 	strb.w	r3, [r2, #47]	; 0x2f
d008317a:	f7fe bea5 	b.w	d0081ec8 <main+0x1770>
d008317e:	f9bb 3000 	ldrsh.w	r3, [fp]
d0083182:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0083186:	da02      	bge.n	d008318e <main+0x2a36>
d0083188:	429c      	cmp	r4, r3
d008318a:	f2c0 8196 	blt.w	d00834ba <main+0x2d62>
d008318e:	f9bb 300c 	ldrsh.w	r3, [fp, #12]
d0083192:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0083196:	da02      	bge.n	d008319e <main+0x2a46>
d0083198:	429c      	cmp	r4, r3
d008319a:	f2c0 8198 	blt.w	d00834ce <main+0x2d76>
d008319e:	f9bb 3018 	ldrsh.w	r3, [fp, #24]
d00831a2:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00831a6:	da02      	bge.n	d00831ae <main+0x2a56>
d00831a8:	429c      	cmp	r4, r3
d00831aa:	f2c0 819a 	blt.w	d00834e2 <main+0x2d8a>
d00831ae:	f9bb 3024 	ldrsh.w	r3, [fp, #36]	; 0x24
d00831b2:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00831b6:	da02      	bge.n	d00831be <main+0x2a66>
d00831b8:	429c      	cmp	r4, r3
d00831ba:	f2c0 81ba 	blt.w	d0083532 <main+0x2dda>
d00831be:	f9bb 3030 	ldrsh.w	r3, [fp, #48]	; 0x30
d00831c2:	42a3      	cmp	r3, r4
d00831c4:	f77f ad58 	ble.w	d0082c78 <main+0x2520>
d00831c8:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00831cc:	f6bf ad54 	bge.w	d0082c78 <main+0x2520>
d00831d0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d00831d2:	9a07      	ldr	r2, [sp, #28]
d00831d4:	3310      	adds	r3, #16
d00831d6:	b21b      	sxth	r3, r3
d00831d8:	1a9b      	subs	r3, r3, r2
d00831da:	3315      	adds	r3, #21
d00831dc:	2b2a      	cmp	r3, #42	; 0x2a
d00831de:	f63f ad4b 	bhi.w	d0082c78 <main+0x2520>
d00831e2:	2d00      	cmp	r5, #0
d00831e4:	f000 814b 	beq.w	d008347e <main+0x2d26>
d00831e8:	2e00      	cmp	r6, #0
d00831ea:	f000 814a 	beq.w	d0083482 <main+0x2d2a>
d00831ee:	2f00      	cmp	r7, #0
d00831f0:	f000 814b 	beq.w	d008348a <main+0x2d32>
d00831f4:	f1bc 0f00 	cmp.w	ip, #0
d00831f8:	bf14      	ite	ne
d00831fa:	2204      	movne	r2, #4
d00831fc:	2203      	moveq	r2, #3
d00831fe:	e681      	b.n	d0082f04 <main+0x27ac>
d0083200:	2800      	cmp	r0, #0
d0083202:	f000 809b 	beq.w	d008333c <main+0x2be4>
d0083206:	2900      	cmp	r1, #0
d0083208:	d044      	beq.n	d0083294 <main+0x2b3c>
d008320a:	2b00      	cmp	r3, #0
d008320c:	d0b7      	beq.n	d008317e <main+0x2a26>
d008320e:	f9bb 3000 	ldrsh.w	r3, [fp]
d0083212:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0083216:	da02      	bge.n	d008321e <main+0x2ac6>
d0083218:	429c      	cmp	r4, r3
d008321a:	f2c0 81bc 	blt.w	d0083596 <main+0x2e3e>
d008321e:	f9bb 300c 	ldrsh.w	r3, [fp, #12]
d0083222:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0083226:	da02      	bge.n	d008322e <main+0x2ad6>
d0083228:	429c      	cmp	r4, r3
d008322a:	f2c0 81d2 	blt.w	d00835d2 <main+0x2e7a>
d008322e:	f9bb 3018 	ldrsh.w	r3, [fp, #24]
d0083232:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0083236:	da02      	bge.n	d008323e <main+0x2ae6>
d0083238:	429c      	cmp	r4, r3
d008323a:	f2c0 81d4 	blt.w	d00835e6 <main+0x2e8e>
d008323e:	f9bb 3024 	ldrsh.w	r3, [fp, #36]	; 0x24
d0083242:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0083246:	da02      	bge.n	d008324e <main+0x2af6>
d0083248:	429c      	cmp	r4, r3
d008324a:	f2c0 81b8 	blt.w	d00835be <main+0x2e66>
d008324e:	f9bb 3030 	ldrsh.w	r3, [fp, #48]	; 0x30
d0083252:	42a3      	cmp	r3, r4
d0083254:	f77f ad10 	ble.w	d0082c78 <main+0x2520>
d0083258:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d008325c:	f6bf ad0c 	bge.w	d0082c78 <main+0x2520>
d0083260:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d0083262:	9a07      	ldr	r2, [sp, #28]
d0083264:	3310      	adds	r3, #16
d0083266:	b21b      	sxth	r3, r3
d0083268:	1a9b      	subs	r3, r3, r2
d008326a:	3315      	adds	r3, #21
d008326c:	2b2a      	cmp	r3, #42	; 0x2a
d008326e:	f63f ad03 	bhi.w	d0082c78 <main+0x2520>
d0083272:	2d00      	cmp	r5, #0
d0083274:	f000 8103 	beq.w	d008347e <main+0x2d26>
d0083278:	2e00      	cmp	r6, #0
d008327a:	f000 8102 	beq.w	d0083482 <main+0x2d2a>
d008327e:	2f00      	cmp	r7, #0
d0083280:	f000 8103 	beq.w	d008348a <main+0x2d32>
d0083284:	f1bc 0f00 	cmp.w	ip, #0
d0083288:	bf14      	ite	ne
d008328a:	2207      	movne	r2, #7
d008328c:	2203      	moveq	r2, #3
d008328e:	e639      	b.n	d0082f04 <main+0x27ac>
d0083290:	2900      	cmp	r1, #0
d0083292:	d156      	bne.n	d0083342 <main+0x2bea>
d0083294:	2b00      	cmp	r3, #0
d0083296:	f43f af72 	beq.w	d008317e <main+0x2a26>
d008329a:	f9bb 3000 	ldrsh.w	r3, [fp]
d008329e:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00832a2:	da02      	bge.n	d00832aa <main+0x2b52>
d00832a4:	429c      	cmp	r4, r3
d00832a6:	f2c0 8126 	blt.w	d00834f6 <main+0x2d9e>
d00832aa:	f9bb 300c 	ldrsh.w	r3, [fp, #12]
d00832ae:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00832b2:	da02      	bge.n	d00832ba <main+0x2b62>
d00832b4:	429c      	cmp	r4, r3
d00832b6:	f2c0 8128 	blt.w	d008350a <main+0x2db2>
d00832ba:	f9bb 3018 	ldrsh.w	r3, [fp, #24]
d00832be:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00832c2:	da02      	bge.n	d00832ca <main+0x2b72>
d00832c4:	429c      	cmp	r4, r3
d00832c6:	f2c0 812a 	blt.w	d008351e <main+0x2dc6>
d00832ca:	f9bb 3024 	ldrsh.w	r3, [fp, #36]	; 0x24
d00832ce:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00832d2:	da02      	bge.n	d00832da <main+0x2b82>
d00832d4:	429c      	cmp	r4, r3
d00832d6:	f2c0 8154 	blt.w	d0083582 <main+0x2e2a>
d00832da:	f9bb 3030 	ldrsh.w	r3, [fp, #48]	; 0x30
d00832de:	42a3      	cmp	r3, r4
d00832e0:	f77f acca 	ble.w	d0082c78 <main+0x2520>
d00832e4:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00832e8:	f6bf acc6 	bge.w	d0082c78 <main+0x2520>
d00832ec:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d00832ee:	9a07      	ldr	r2, [sp, #28]
d00832f0:	3310      	adds	r3, #16
d00832f2:	b21b      	sxth	r3, r3
d00832f4:	1a9b      	subs	r3, r3, r2
d00832f6:	3315      	adds	r3, #21
d00832f8:	2b2a      	cmp	r3, #42	; 0x2a
d00832fa:	f63f acbd 	bhi.w	d0082c78 <main+0x2520>
d00832fe:	2d00      	cmp	r5, #0
d0083300:	f000 80bd 	beq.w	d008347e <main+0x2d26>
d0083304:	2e00      	cmp	r6, #0
d0083306:	f000 80bc 	beq.w	d0083482 <main+0x2d2a>
d008330a:	2f00      	cmp	r7, #0
d008330c:	f000 80bd 	beq.w	d008348a <main+0x2d32>
d0083310:	f1bc 0f00 	cmp.w	ip, #0
d0083314:	bf14      	ite	ne
d0083316:	2205      	movne	r2, #5
d0083318:	2203      	moveq	r2, #3
d008331a:	e5f3      	b.n	d0082f04 <main+0x27ac>
d008331c:	41c64e6d 	.word	0x41c64e6d
d0083320:	d008a800 	.word	0xd008a800
d0083324:	d008a788 	.word	0xd008a788
d0083328:	d008a874 	.word	0xd008a874
d008332c:	d008a884 	.word	0xd008a884
d0083330:	d008a6aa 	.word	0xd008a6aa
d0083334:	d008a885 	.word	0xd008a885
d0083338:	d008a6a8 	.word	0xd008a6a8
d008333c:	2900      	cmp	r1, #0
d008333e:	f000 8182 	beq.w	d0083646 <main+0x2eee>
d0083342:	2b00      	cmp	r3, #0
d0083344:	f43f af1b 	beq.w	d008317e <main+0x2a26>
d0083348:	f9bb 3000 	ldrsh.w	r3, [fp]
d008334c:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0083350:	da02      	bge.n	d0083358 <main+0x2c00>
d0083352:	429c      	cmp	r4, r3
d0083354:	f2c0 80f7 	blt.w	d0083546 <main+0x2dee>
d0083358:	f9bb 300c 	ldrsh.w	r3, [fp, #12]
d008335c:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0083360:	da02      	bge.n	d0083368 <main+0x2c10>
d0083362:	429c      	cmp	r4, r3
d0083364:	f2c0 80f9 	blt.w	d008355a <main+0x2e02>
d0083368:	f9bb 3018 	ldrsh.w	r3, [fp, #24]
d008336c:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0083370:	da02      	bge.n	d0083378 <main+0x2c20>
d0083372:	429c      	cmp	r4, r3
d0083374:	f2c0 80fb 	blt.w	d008356e <main+0x2e16>
d0083378:	f9bb 3024 	ldrsh.w	r3, [fp, #36]	; 0x24
d008337c:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0083380:	da02      	bge.n	d0083388 <main+0x2c30>
d0083382:	429c      	cmp	r4, r3
d0083384:	f2c0 8111 	blt.w	d00835aa <main+0x2e52>
d0083388:	f9bb 3030 	ldrsh.w	r3, [fp, #48]	; 0x30
d008338c:	42a3      	cmp	r3, r4
d008338e:	f77f ac73 	ble.w	d0082c78 <main+0x2520>
d0083392:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0083396:	f6bf ac6f 	bge.w	d0082c78 <main+0x2520>
d008339a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d008339c:	9a07      	ldr	r2, [sp, #28]
d008339e:	3310      	adds	r3, #16
d00833a0:	b21b      	sxth	r3, r3
d00833a2:	1a9b      	subs	r3, r3, r2
d00833a4:	3315      	adds	r3, #21
d00833a6:	2b2a      	cmp	r3, #42	; 0x2a
d00833a8:	f63f ac66 	bhi.w	d0082c78 <main+0x2520>
d00833ac:	2d00      	cmp	r5, #0
d00833ae:	d066      	beq.n	d008347e <main+0x2d26>
d00833b0:	2e00      	cmp	r6, #0
d00833b2:	d066      	beq.n	d0083482 <main+0x2d2a>
d00833b4:	2f00      	cmp	r7, #0
d00833b6:	d068      	beq.n	d008348a <main+0x2d32>
d00833b8:	f1bc 0f00 	cmp.w	ip, #0
d00833bc:	bf14      	ite	ne
d00833be:	2206      	movne	r2, #6
d00833c0:	2203      	moveq	r2, #3
d00833c2:	e59f      	b.n	d0082f04 <main+0x27ac>
d00833c4:	2002      	movs	r0, #2
d00833c6:	e634      	b.n	d0083032 <main+0x28da>
d00833c8:	2301      	movs	r3, #1
d00833ca:	9806      	ldr	r0, [sp, #24]
d00833cc:	f243 0239 	movw	r2, #12345	; 0x3039
d00833d0:	4eab      	ldr	r6, [pc, #684]	; (d0083680 <main+0x2f28>)
d00833d2:	4605      	mov	r5, r0
d00833d4:	48ab      	ldr	r0, [pc, #684]	; (d0083684 <main+0x2f2c>)
d00833d6:	eb06 01c3 	add.w	r1, r6, r3, lsl #3
d00833da:	4fab      	ldr	r7, [pc, #684]	; (d0083688 <main+0x2f30>)
d00833dc:	fb00 2205 	mla	r2, r0, r5, r2
d00833e0:	2001      	movs	r0, #1
d00833e2:	9d07      	ldr	r5, [sp, #28]
d00833e4:	603a      	str	r2, [r7, #0]
d00833e6:	f3c2 4205 	ubfx	r2, r2, #16, #6
d00833ea:	804d      	strh	r5, [r1, #2]
d00833ec:	2500      	movs	r5, #0
d00833ee:	7188      	strb	r0, [r1, #6]
d00833f0:	202d      	movs	r0, #45	; 0x2d
d00833f2:	714a      	strb	r2, [r1, #5]
d00833f4:	710d      	strb	r5, [r1, #4]
d00833f6:	f826 0033 	strh.w	r0, [r6, r3, lsl #3]
d00833fa:	e69b      	b.n	d0083134 <main+0x29dc>
d00833fc:	2201      	movs	r2, #1
d00833fe:	9e06      	ldr	r6, [sp, #24]
d0083400:	f243 0539 	movw	r5, #12345	; 0x3039
d0083404:	499e      	ldr	r1, [pc, #632]	; (d0083680 <main+0x2f28>)
d0083406:	46b4      	mov	ip, r6
d0083408:	4e9e      	ldr	r6, [pc, #632]	; (d0083684 <main+0x2f2c>)
d008340a:	eb01 00c2 	add.w	r0, r1, r2, lsl #3
d008340e:	2101      	movs	r1, #1
d0083410:	fb06 560c 	mla	r6, r6, ip, r5
d0083414:	f04f 0c00 	mov.w	ip, #0
d0083418:	7181      	strb	r1, [r0, #6]
d008341a:	f3c6 4505 	ubfx	r5, r6, #16, #6
d008341e:	9606      	str	r6, [sp, #24]
d0083420:	9e07      	ldr	r6, [sp, #28]
d0083422:	7145      	strb	r5, [r0, #5]
d0083424:	4d96      	ldr	r5, [pc, #600]	; (d0083680 <main+0x2f28>)
d0083426:	8046      	strh	r6, [r0, #2]
d0083428:	262d      	movs	r6, #45	; 0x2d
d008342a:	f880 c004 	strb.w	ip, [r0, #4]
d008342e:	79a8      	ldrb	r0, [r5, #6]
d0083430:	f825 6032 	strh.w	r6, [r5, r2, lsl #3]
d0083434:	2800      	cmp	r0, #0
d0083436:	f000 80e0 	beq.w	d00835fa <main+0x2ea2>
d008343a:	7baa      	ldrb	r2, [r5, #14]
d008343c:	2a00      	cmp	r2, #0
d008343e:	f47f ab50 	bne.w	d0082ae2 <main+0x238a>
d0083442:	9806      	ldr	r0, [sp, #24]
d0083444:	f243 0239 	movw	r2, #12345	; 0x3039
d0083448:	3310      	adds	r3, #16
d008344a:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
d008344c:	4606      	mov	r6, r0
d008344e:	488d      	ldr	r0, [pc, #564]	; (d0083684 <main+0x2f2c>)
d0083450:	3510      	adds	r5, #16
d0083452:	fb00 2606 	mla	r6, r0, r6, r2
d0083456:	488a      	ldr	r0, [pc, #552]	; (d0083680 <main+0x2f28>)
d0083458:	eb00 02c1 	add.w	r2, r0, r1, lsl #3
d008345c:	f820 3031 	strh.w	r3, [r0, r1, lsl #3]
d0083460:	2001      	movs	r0, #1
d0083462:	2100      	movs	r1, #0
d0083464:	f3c6 4305 	ubfx	r3, r6, #16, #6
d0083468:	9606      	str	r6, [sp, #24]
d008346a:	8055      	strh	r5, [r2, #2]
d008346c:	7190      	strb	r0, [r2, #6]
d008346e:	7111      	strb	r1, [r2, #4]
d0083470:	7153      	strb	r3, [r2, #5]
d0083472:	f7ff bb53 	b.w	d0082b1c <main+0x23c4>
d0083476:	2003      	movs	r0, #3
d0083478:	e5db      	b.n	d0083032 <main+0x28da>
d008347a:	2004      	movs	r0, #4
d008347c:	e5d9      	b.n	d0083032 <main+0x28da>
d008347e:	462a      	mov	r2, r5
d0083480:	e540      	b.n	d0082f04 <main+0x27ac>
d0083482:	2201      	movs	r2, #1
d0083484:	e53e      	b.n	d0082f04 <main+0x27ac>
d0083486:	2005      	movs	r0, #5
d0083488:	e5d3      	b.n	d0083032 <main+0x28da>
d008348a:	2202      	movs	r2, #2
d008348c:	e53a      	b.n	d0082f04 <main+0x27ac>
d008348e:	2006      	movs	r0, #6
d0083490:	e5cf      	b.n	d0083032 <main+0x28da>
d0083492:	2007      	movs	r0, #7
d0083494:	e5cd      	b.n	d0083032 <main+0x28da>
d0083496:	9a12      	ldr	r2, [sp, #72]	; 0x48
d0083498:	2703      	movs	r7, #3
d008349a:	920f      	str	r2, [sp, #60]	; 0x3c
d008349c:	f7ff baee 	b.w	d0082a7c <main+0x2324>
d00834a0:	2700      	movs	r7, #0
d00834a2:	f7ff baeb 	b.w	d0082a7c <main+0x2324>
d00834a6:	9a10      	ldr	r2, [sp, #64]	; 0x40
d00834a8:	2701      	movs	r7, #1
d00834aa:	920f      	str	r2, [sp, #60]	; 0x3c
d00834ac:	f7ff bae6 	b.w	d0082a7c <main+0x2324>
d00834b0:	9a11      	ldr	r2, [sp, #68]	; 0x44
d00834b2:	2702      	movs	r7, #2
d00834b4:	920f      	str	r2, [sp, #60]	; 0x3c
d00834b6:	f7ff bae1 	b.w	d0082a7c <main+0x2324>
d00834ba:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d00834bc:	9a07      	ldr	r2, [sp, #28]
d00834be:	3310      	adds	r3, #16
d00834c0:	b21b      	sxth	r3, r3
d00834c2:	1a9b      	subs	r3, r3, r2
d00834c4:	3315      	adds	r3, #21
d00834c6:	2b2a      	cmp	r3, #42	; 0x2a
d00834c8:	f63f ae61 	bhi.w	d008318e <main+0x2a36>
d00834cc:	e689      	b.n	d00831e2 <main+0x2a8a>
d00834ce:	9b10      	ldr	r3, [sp, #64]	; 0x40
d00834d0:	9a07      	ldr	r2, [sp, #28]
d00834d2:	3310      	adds	r3, #16
d00834d4:	b21b      	sxth	r3, r3
d00834d6:	1a9b      	subs	r3, r3, r2
d00834d8:	3315      	adds	r3, #21
d00834da:	2b2a      	cmp	r3, #42	; 0x2a
d00834dc:	f63f ae5f 	bhi.w	d008319e <main+0x2a46>
d00834e0:	e67f      	b.n	d00831e2 <main+0x2a8a>
d00834e2:	9b11      	ldr	r3, [sp, #68]	; 0x44
d00834e4:	9a07      	ldr	r2, [sp, #28]
d00834e6:	3310      	adds	r3, #16
d00834e8:	b21b      	sxth	r3, r3
d00834ea:	1a9b      	subs	r3, r3, r2
d00834ec:	3315      	adds	r3, #21
d00834ee:	2b2a      	cmp	r3, #42	; 0x2a
d00834f0:	f63f ae5d 	bhi.w	d00831ae <main+0x2a56>
d00834f4:	e675      	b.n	d00831e2 <main+0x2a8a>
d00834f6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d00834f8:	9a07      	ldr	r2, [sp, #28]
d00834fa:	3310      	adds	r3, #16
d00834fc:	b21b      	sxth	r3, r3
d00834fe:	1a9b      	subs	r3, r3, r2
d0083500:	3315      	adds	r3, #21
d0083502:	2b2a      	cmp	r3, #42	; 0x2a
d0083504:	f63f aed1 	bhi.w	d00832aa <main+0x2b52>
d0083508:	e6f9      	b.n	d00832fe <main+0x2ba6>
d008350a:	9b10      	ldr	r3, [sp, #64]	; 0x40
d008350c:	9a07      	ldr	r2, [sp, #28]
d008350e:	3310      	adds	r3, #16
d0083510:	b21b      	sxth	r3, r3
d0083512:	1a9b      	subs	r3, r3, r2
d0083514:	3315      	adds	r3, #21
d0083516:	2b2a      	cmp	r3, #42	; 0x2a
d0083518:	f63f aecf 	bhi.w	d00832ba <main+0x2b62>
d008351c:	e6ef      	b.n	d00832fe <main+0x2ba6>
d008351e:	9b11      	ldr	r3, [sp, #68]	; 0x44
d0083520:	9a07      	ldr	r2, [sp, #28]
d0083522:	3310      	adds	r3, #16
d0083524:	b21b      	sxth	r3, r3
d0083526:	1a9b      	subs	r3, r3, r2
d0083528:	3315      	adds	r3, #21
d008352a:	2b2a      	cmp	r3, #42	; 0x2a
d008352c:	f63f aecd 	bhi.w	d00832ca <main+0x2b72>
d0083530:	e6e5      	b.n	d00832fe <main+0x2ba6>
d0083532:	9b12      	ldr	r3, [sp, #72]	; 0x48
d0083534:	9a07      	ldr	r2, [sp, #28]
d0083536:	3310      	adds	r3, #16
d0083538:	b21b      	sxth	r3, r3
d008353a:	1a9b      	subs	r3, r3, r2
d008353c:	3315      	adds	r3, #21
d008353e:	2b2a      	cmp	r3, #42	; 0x2a
d0083540:	f63f ae3d 	bhi.w	d00831be <main+0x2a66>
d0083544:	e64d      	b.n	d00831e2 <main+0x2a8a>
d0083546:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d0083548:	9a07      	ldr	r2, [sp, #28]
d008354a:	3310      	adds	r3, #16
d008354c:	b21b      	sxth	r3, r3
d008354e:	1a9b      	subs	r3, r3, r2
d0083550:	3315      	adds	r3, #21
d0083552:	2b2a      	cmp	r3, #42	; 0x2a
d0083554:	f63f af00 	bhi.w	d0083358 <main+0x2c00>
d0083558:	e728      	b.n	d00833ac <main+0x2c54>
d008355a:	9b10      	ldr	r3, [sp, #64]	; 0x40
d008355c:	9a07      	ldr	r2, [sp, #28]
d008355e:	3310      	adds	r3, #16
d0083560:	b21b      	sxth	r3, r3
d0083562:	1a9b      	subs	r3, r3, r2
d0083564:	3315      	adds	r3, #21
d0083566:	2b2a      	cmp	r3, #42	; 0x2a
d0083568:	f63f aefe 	bhi.w	d0083368 <main+0x2c10>
d008356c:	e71e      	b.n	d00833ac <main+0x2c54>
d008356e:	9b11      	ldr	r3, [sp, #68]	; 0x44
d0083570:	9a07      	ldr	r2, [sp, #28]
d0083572:	3310      	adds	r3, #16
d0083574:	b21b      	sxth	r3, r3
d0083576:	1a9b      	subs	r3, r3, r2
d0083578:	3315      	adds	r3, #21
d008357a:	2b2a      	cmp	r3, #42	; 0x2a
d008357c:	f63f aefc 	bhi.w	d0083378 <main+0x2c20>
d0083580:	e714      	b.n	d00833ac <main+0x2c54>
d0083582:	9b12      	ldr	r3, [sp, #72]	; 0x48
d0083584:	9a07      	ldr	r2, [sp, #28]
d0083586:	3310      	adds	r3, #16
d0083588:	b21b      	sxth	r3, r3
d008358a:	1a9b      	subs	r3, r3, r2
d008358c:	3315      	adds	r3, #21
d008358e:	2b2a      	cmp	r3, #42	; 0x2a
d0083590:	f63f aea3 	bhi.w	d00832da <main+0x2b82>
d0083594:	e6b3      	b.n	d00832fe <main+0x2ba6>
d0083596:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d0083598:	9a07      	ldr	r2, [sp, #28]
d008359a:	3310      	adds	r3, #16
d008359c:	b21b      	sxth	r3, r3
d008359e:	1a9b      	subs	r3, r3, r2
d00835a0:	3315      	adds	r3, #21
d00835a2:	2b2a      	cmp	r3, #42	; 0x2a
d00835a4:	f63f ae3b 	bhi.w	d008321e <main+0x2ac6>
d00835a8:	e663      	b.n	d0083272 <main+0x2b1a>
d00835aa:	9b12      	ldr	r3, [sp, #72]	; 0x48
d00835ac:	9a07      	ldr	r2, [sp, #28]
d00835ae:	3310      	adds	r3, #16
d00835b0:	b21b      	sxth	r3, r3
d00835b2:	1a9b      	subs	r3, r3, r2
d00835b4:	3315      	adds	r3, #21
d00835b6:	2b2a      	cmp	r3, #42	; 0x2a
d00835b8:	f63f aee6 	bhi.w	d0083388 <main+0x2c30>
d00835bc:	e6f6      	b.n	d00833ac <main+0x2c54>
d00835be:	9b12      	ldr	r3, [sp, #72]	; 0x48
d00835c0:	9a07      	ldr	r2, [sp, #28]
d00835c2:	3310      	adds	r3, #16
d00835c4:	b21b      	sxth	r3, r3
d00835c6:	1a9b      	subs	r3, r3, r2
d00835c8:	3315      	adds	r3, #21
d00835ca:	2b2a      	cmp	r3, #42	; 0x2a
d00835cc:	f63f ae3f 	bhi.w	d008324e <main+0x2af6>
d00835d0:	e64f      	b.n	d0083272 <main+0x2b1a>
d00835d2:	9b10      	ldr	r3, [sp, #64]	; 0x40
d00835d4:	9a07      	ldr	r2, [sp, #28]
d00835d6:	3310      	adds	r3, #16
d00835d8:	b21b      	sxth	r3, r3
d00835da:	1a9b      	subs	r3, r3, r2
d00835dc:	3315      	adds	r3, #21
d00835de:	2b2a      	cmp	r3, #42	; 0x2a
d00835e0:	f63f ae25 	bhi.w	d008322e <main+0x2ad6>
d00835e4:	e645      	b.n	d0083272 <main+0x2b1a>
d00835e6:	9b11      	ldr	r3, [sp, #68]	; 0x44
d00835e8:	9a07      	ldr	r2, [sp, #28]
d00835ea:	3310      	adds	r3, #16
d00835ec:	b21b      	sxth	r3, r3
d00835ee:	1a9b      	subs	r3, r3, r2
d00835f0:	3315      	adds	r3, #21
d00835f2:	2b2a      	cmp	r3, #42	; 0x2a
d00835f4:	f63f ae23 	bhi.w	d008323e <main+0x2ae6>
d00835f8:	e63b      	b.n	d0083272 <main+0x2b1a>
d00835fa:	4601      	mov	r1, r0
d00835fc:	e721      	b.n	d0083442 <main+0x2cea>
d00835fe:	2302      	movs	r3, #2
d0083600:	e6e3      	b.n	d00833ca <main+0x2c72>
d0083602:	2303      	movs	r3, #3
d0083604:	e6e1      	b.n	d00833ca <main+0x2c72>
d0083606:	2205      	movs	r2, #5
d0083608:	e6f9      	b.n	d00833fe <main+0x2ca6>
d008360a:	2204      	movs	r2, #4
d008360c:	e6f7      	b.n	d00833fe <main+0x2ca6>
d008360e:	2307      	movs	r3, #7
d0083610:	e6db      	b.n	d00833ca <main+0x2c72>
d0083612:	2306      	movs	r3, #6
d0083614:	e6d9      	b.n	d00833ca <main+0x2c72>
d0083616:	2305      	movs	r3, #5
d0083618:	e6d7      	b.n	d00833ca <main+0x2c72>
d008361a:	2304      	movs	r3, #4
d008361c:	e6d5      	b.n	d00833ca <main+0x2c72>
d008361e:	2203      	movs	r2, #3
d0083620:	e6ed      	b.n	d00833fe <main+0x2ca6>
d0083622:	2202      	movs	r2, #2
d0083624:	e6eb      	b.n	d00833fe <main+0x2ca6>
d0083626:	2105      	movs	r1, #5
d0083628:	e70b      	b.n	d0083442 <main+0x2cea>
d008362a:	2104      	movs	r1, #4
d008362c:	e709      	b.n	d0083442 <main+0x2cea>
d008362e:	2103      	movs	r1, #3
d0083630:	e707      	b.n	d0083442 <main+0x2cea>
d0083632:	2102      	movs	r1, #2
d0083634:	e705      	b.n	d0083442 <main+0x2cea>
d0083636:	2207      	movs	r2, #7
d0083638:	e6e1      	b.n	d00833fe <main+0x2ca6>
d008363a:	2206      	movs	r2, #6
d008363c:	e6df      	b.n	d00833fe <main+0x2ca6>
d008363e:	2107      	movs	r1, #7
d0083640:	e6ff      	b.n	d0083442 <main+0x2cea>
d0083642:	2106      	movs	r1, #6
d0083644:	e6fd      	b.n	d0083442 <main+0x2cea>
d0083646:	2b00      	cmp	r3, #0
d0083648:	f47f ae27 	bne.w	d008329a <main+0x2b42>
d008364c:	4619      	mov	r1, r3
d008364e:	4a0f      	ldr	r2, [pc, #60]	; (d008368c <main+0x2f34>)
d0083650:	f240 1edf 	movw	lr, #479	; 0x1df
d0083654:	e004      	b.n	d0083660 <main+0x2f08>
d0083656:	2905      	cmp	r1, #5
d0083658:	f102 020c 	add.w	r2, r2, #12
d008365c:	f43f ab0c 	beq.w	d0082c78 <main+0x2520>
d0083660:	f9b2 3000 	ldrsh.w	r3, [r2]
d0083664:	3101      	adds	r1, #1
d0083666:	4573      	cmp	r3, lr
d0083668:	dcf5      	bgt.n	d0083656 <main+0x2efe>
d008366a:	42a3      	cmp	r3, r4
d008366c:	ddf3      	ble.n	d0083656 <main+0x2efe>
d008366e:	8853      	ldrh	r3, [r2, #2]
d0083670:	9807      	ldr	r0, [sp, #28]
d0083672:	3310      	adds	r3, #16
d0083674:	b21b      	sxth	r3, r3
d0083676:	1a1b      	subs	r3, r3, r0
d0083678:	3315      	adds	r3, #21
d008367a:	2b2a      	cmp	r3, #42	; 0x2a
d008367c:	d8eb      	bhi.n	d0083656 <main+0x2efe>
d008367e:	e5b0      	b.n	d00831e2 <main+0x2a8a>
d0083680:	d008a800 	.word	0xd008a800
d0083684:	41c64e6d 	.word	0x41c64e6d
d0083688:	d008a6c0 	.word	0xd008a6c0
d008368c:	d008a74c 	.word	0xd008a74c

d0083690 <__errno>:
d0083690:	4b01      	ldr	r3, [pc, #4]	; (d0083698 <__errno+0x8>)
d0083692:	6818      	ldr	r0, [r3, #0]
d0083694:	4770      	bx	lr
d0083696:	bf00      	nop
d0083698:	d008a6c4 	.word	0xd008a6c4

d008369c <malloc>:
d008369c:	4b02      	ldr	r3, [pc, #8]	; (d00836a8 <malloc+0xc>)
d008369e:	4601      	mov	r1, r0
d00836a0:	6818      	ldr	r0, [r3, #0]
d00836a2:	f000 b85b 	b.w	d008375c <_malloc_r>
d00836a6:	bf00      	nop
d00836a8:	d008a6c4 	.word	0xd008a6c4

d00836ac <memset>:
d00836ac:	4402      	add	r2, r0
d00836ae:	4603      	mov	r3, r0
d00836b0:	4293      	cmp	r3, r2
d00836b2:	d100      	bne.n	d00836b6 <memset+0xa>
d00836b4:	4770      	bx	lr
d00836b6:	f803 1b01 	strb.w	r1, [r3], #1
d00836ba:	e7f9      	b.n	d00836b0 <memset+0x4>

d00836bc <_free_r>:
d00836bc:	b537      	push	{r0, r1, r2, r4, r5, lr}
d00836be:	2900      	cmp	r1, #0
d00836c0:	d048      	beq.n	d0083754 <_free_r+0x98>
d00836c2:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00836c6:	9001      	str	r0, [sp, #4]
d00836c8:	2b00      	cmp	r3, #0
d00836ca:	f1a1 0404 	sub.w	r4, r1, #4
d00836ce:	bfb8      	it	lt
d00836d0:	18e4      	addlt	r4, r4, r3
d00836d2:	f000 fb7d 	bl	d0083dd0 <__malloc_lock>
d00836d6:	4a20      	ldr	r2, [pc, #128]	; (d0083758 <_free_r+0x9c>)
d00836d8:	9801      	ldr	r0, [sp, #4]
d00836da:	6813      	ldr	r3, [r2, #0]
d00836dc:	4615      	mov	r5, r2
d00836de:	b933      	cbnz	r3, d00836ee <_free_r+0x32>
d00836e0:	6063      	str	r3, [r4, #4]
d00836e2:	6014      	str	r4, [r2, #0]
d00836e4:	b003      	add	sp, #12
d00836e6:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00836ea:	f000 bb77 	b.w	d0083ddc <__malloc_unlock>
d00836ee:	42a3      	cmp	r3, r4
d00836f0:	d90b      	bls.n	d008370a <_free_r+0x4e>
d00836f2:	6821      	ldr	r1, [r4, #0]
d00836f4:	1862      	adds	r2, r4, r1
d00836f6:	4293      	cmp	r3, r2
d00836f8:	bf04      	itt	eq
d00836fa:	681a      	ldreq	r2, [r3, #0]
d00836fc:	685b      	ldreq	r3, [r3, #4]
d00836fe:	6063      	str	r3, [r4, #4]
d0083700:	bf04      	itt	eq
d0083702:	1852      	addeq	r2, r2, r1
d0083704:	6022      	streq	r2, [r4, #0]
d0083706:	602c      	str	r4, [r5, #0]
d0083708:	e7ec      	b.n	d00836e4 <_free_r+0x28>
d008370a:	461a      	mov	r2, r3
d008370c:	685b      	ldr	r3, [r3, #4]
d008370e:	b10b      	cbz	r3, d0083714 <_free_r+0x58>
d0083710:	42a3      	cmp	r3, r4
d0083712:	d9fa      	bls.n	d008370a <_free_r+0x4e>
d0083714:	6811      	ldr	r1, [r2, #0]
d0083716:	1855      	adds	r5, r2, r1
d0083718:	42a5      	cmp	r5, r4
d008371a:	d10b      	bne.n	d0083734 <_free_r+0x78>
d008371c:	6824      	ldr	r4, [r4, #0]
d008371e:	4421      	add	r1, r4
d0083720:	1854      	adds	r4, r2, r1
d0083722:	42a3      	cmp	r3, r4
d0083724:	6011      	str	r1, [r2, #0]
d0083726:	d1dd      	bne.n	d00836e4 <_free_r+0x28>
d0083728:	681c      	ldr	r4, [r3, #0]
d008372a:	685b      	ldr	r3, [r3, #4]
d008372c:	6053      	str	r3, [r2, #4]
d008372e:	4421      	add	r1, r4
d0083730:	6011      	str	r1, [r2, #0]
d0083732:	e7d7      	b.n	d00836e4 <_free_r+0x28>
d0083734:	d902      	bls.n	d008373c <_free_r+0x80>
d0083736:	230c      	movs	r3, #12
d0083738:	6003      	str	r3, [r0, #0]
d008373a:	e7d3      	b.n	d00836e4 <_free_r+0x28>
d008373c:	6825      	ldr	r5, [r4, #0]
d008373e:	1961      	adds	r1, r4, r5
d0083740:	428b      	cmp	r3, r1
d0083742:	bf04      	itt	eq
d0083744:	6819      	ldreq	r1, [r3, #0]
d0083746:	685b      	ldreq	r3, [r3, #4]
d0083748:	6063      	str	r3, [r4, #4]
d008374a:	bf04      	itt	eq
d008374c:	1949      	addeq	r1, r1, r5
d008374e:	6021      	streq	r1, [r4, #0]
d0083750:	6054      	str	r4, [r2, #4]
d0083752:	e7c7      	b.n	d00836e4 <_free_r+0x28>
d0083754:	b003      	add	sp, #12
d0083756:	bd30      	pop	{r4, r5, pc}
d0083758:	d008aae0 	.word	0xd008aae0

d008375c <_malloc_r>:
d008375c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008375e:	1ccd      	adds	r5, r1, #3
d0083760:	f025 0503 	bic.w	r5, r5, #3
d0083764:	3508      	adds	r5, #8
d0083766:	2d0c      	cmp	r5, #12
d0083768:	bf38      	it	cc
d008376a:	250c      	movcc	r5, #12
d008376c:	2d00      	cmp	r5, #0
d008376e:	4606      	mov	r6, r0
d0083770:	db01      	blt.n	d0083776 <_malloc_r+0x1a>
d0083772:	42a9      	cmp	r1, r5
d0083774:	d903      	bls.n	d008377e <_malloc_r+0x22>
d0083776:	230c      	movs	r3, #12
d0083778:	6033      	str	r3, [r6, #0]
d008377a:	2000      	movs	r0, #0
d008377c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d008377e:	f000 fb27 	bl	d0083dd0 <__malloc_lock>
d0083782:	4921      	ldr	r1, [pc, #132]	; (d0083808 <_malloc_r+0xac>)
d0083784:	680a      	ldr	r2, [r1, #0]
d0083786:	4614      	mov	r4, r2
d0083788:	b99c      	cbnz	r4, d00837b2 <_malloc_r+0x56>
d008378a:	4f20      	ldr	r7, [pc, #128]	; (d008380c <_malloc_r+0xb0>)
d008378c:	683b      	ldr	r3, [r7, #0]
d008378e:	b923      	cbnz	r3, d008379a <_malloc_r+0x3e>
d0083790:	4621      	mov	r1, r4
d0083792:	4630      	mov	r0, r6
d0083794:	f7fc fcb2 	bl	d00800fc <_sbrk_r>
d0083798:	6038      	str	r0, [r7, #0]
d008379a:	4629      	mov	r1, r5
d008379c:	4630      	mov	r0, r6
d008379e:	f7fc fcad 	bl	d00800fc <_sbrk_r>
d00837a2:	1c43      	adds	r3, r0, #1
d00837a4:	d123      	bne.n	d00837ee <_malloc_r+0x92>
d00837a6:	230c      	movs	r3, #12
d00837a8:	6033      	str	r3, [r6, #0]
d00837aa:	4630      	mov	r0, r6
d00837ac:	f000 fb16 	bl	d0083ddc <__malloc_unlock>
d00837b0:	e7e3      	b.n	d008377a <_malloc_r+0x1e>
d00837b2:	6823      	ldr	r3, [r4, #0]
d00837b4:	1b5b      	subs	r3, r3, r5
d00837b6:	d417      	bmi.n	d00837e8 <_malloc_r+0x8c>
d00837b8:	2b0b      	cmp	r3, #11
d00837ba:	d903      	bls.n	d00837c4 <_malloc_r+0x68>
d00837bc:	6023      	str	r3, [r4, #0]
d00837be:	441c      	add	r4, r3
d00837c0:	6025      	str	r5, [r4, #0]
d00837c2:	e004      	b.n	d00837ce <_malloc_r+0x72>
d00837c4:	6863      	ldr	r3, [r4, #4]
d00837c6:	42a2      	cmp	r2, r4
d00837c8:	bf0c      	ite	eq
d00837ca:	600b      	streq	r3, [r1, #0]
d00837cc:	6053      	strne	r3, [r2, #4]
d00837ce:	4630      	mov	r0, r6
d00837d0:	f000 fb04 	bl	d0083ddc <__malloc_unlock>
d00837d4:	f104 000b 	add.w	r0, r4, #11
d00837d8:	1d23      	adds	r3, r4, #4
d00837da:	f020 0007 	bic.w	r0, r0, #7
d00837de:	1ac2      	subs	r2, r0, r3
d00837e0:	d0cc      	beq.n	d008377c <_malloc_r+0x20>
d00837e2:	1a1b      	subs	r3, r3, r0
d00837e4:	50a3      	str	r3, [r4, r2]
d00837e6:	e7c9      	b.n	d008377c <_malloc_r+0x20>
d00837e8:	4622      	mov	r2, r4
d00837ea:	6864      	ldr	r4, [r4, #4]
d00837ec:	e7cc      	b.n	d0083788 <_malloc_r+0x2c>
d00837ee:	1cc4      	adds	r4, r0, #3
d00837f0:	f024 0403 	bic.w	r4, r4, #3
d00837f4:	42a0      	cmp	r0, r4
d00837f6:	d0e3      	beq.n	d00837c0 <_malloc_r+0x64>
d00837f8:	1a21      	subs	r1, r4, r0
d00837fa:	4630      	mov	r0, r6
d00837fc:	f7fc fc7e 	bl	d00800fc <_sbrk_r>
d0083800:	3001      	adds	r0, #1
d0083802:	d1dd      	bne.n	d00837c0 <_malloc_r+0x64>
d0083804:	e7cf      	b.n	d00837a6 <_malloc_r+0x4a>
d0083806:	bf00      	nop
d0083808:	d008aae0 	.word	0xd008aae0
d008380c:	d008aae4 	.word	0xd008aae4

d0083810 <setbuf>:
d0083810:	2900      	cmp	r1, #0
d0083812:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0083816:	bf0c      	ite	eq
d0083818:	2202      	moveq	r2, #2
d008381a:	2200      	movne	r2, #0
d008381c:	f000 b800 	b.w	d0083820 <setvbuf>

d0083820 <setvbuf>:
d0083820:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0083824:	461d      	mov	r5, r3
d0083826:	4b5d      	ldr	r3, [pc, #372]	; (d008399c <setvbuf+0x17c>)
d0083828:	681f      	ldr	r7, [r3, #0]
d008382a:	4604      	mov	r4, r0
d008382c:	460e      	mov	r6, r1
d008382e:	4690      	mov	r8, r2
d0083830:	b127      	cbz	r7, d008383c <setvbuf+0x1c>
d0083832:	69bb      	ldr	r3, [r7, #24]
d0083834:	b913      	cbnz	r3, d008383c <setvbuf+0x1c>
d0083836:	4638      	mov	r0, r7
d0083838:	f000 fa06 	bl	d0083c48 <__sinit>
d008383c:	4b58      	ldr	r3, [pc, #352]	; (d00839a0 <setvbuf+0x180>)
d008383e:	429c      	cmp	r4, r3
d0083840:	d167      	bne.n	d0083912 <setvbuf+0xf2>
d0083842:	687c      	ldr	r4, [r7, #4]
d0083844:	f1b8 0f02 	cmp.w	r8, #2
d0083848:	d006      	beq.n	d0083858 <setvbuf+0x38>
d008384a:	f1b8 0f01 	cmp.w	r8, #1
d008384e:	f200 809f 	bhi.w	d0083990 <setvbuf+0x170>
d0083852:	2d00      	cmp	r5, #0
d0083854:	f2c0 809c 	blt.w	d0083990 <setvbuf+0x170>
d0083858:	6e63      	ldr	r3, [r4, #100]	; 0x64
d008385a:	07db      	lsls	r3, r3, #31
d008385c:	d405      	bmi.n	d008386a <setvbuf+0x4a>
d008385e:	89a3      	ldrh	r3, [r4, #12]
d0083860:	0598      	lsls	r0, r3, #22
d0083862:	d402      	bmi.n	d008386a <setvbuf+0x4a>
d0083864:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0083866:	f000 fa8d 	bl	d0083d84 <__retarget_lock_acquire_recursive>
d008386a:	4621      	mov	r1, r4
d008386c:	4638      	mov	r0, r7
d008386e:	f000 f957 	bl	d0083b20 <_fflush_r>
d0083872:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0083874:	b141      	cbz	r1, d0083888 <setvbuf+0x68>
d0083876:	f104 0344 	add.w	r3, r4, #68	; 0x44
d008387a:	4299      	cmp	r1, r3
d008387c:	d002      	beq.n	d0083884 <setvbuf+0x64>
d008387e:	4638      	mov	r0, r7
d0083880:	f7ff ff1c 	bl	d00836bc <_free_r>
d0083884:	2300      	movs	r3, #0
d0083886:	6363      	str	r3, [r4, #52]	; 0x34
d0083888:	2300      	movs	r3, #0
d008388a:	61a3      	str	r3, [r4, #24]
d008388c:	6063      	str	r3, [r4, #4]
d008388e:	89a3      	ldrh	r3, [r4, #12]
d0083890:	0619      	lsls	r1, r3, #24
d0083892:	d503      	bpl.n	d008389c <setvbuf+0x7c>
d0083894:	6921      	ldr	r1, [r4, #16]
d0083896:	4638      	mov	r0, r7
d0083898:	f7ff ff10 	bl	d00836bc <_free_r>
d008389c:	89a3      	ldrh	r3, [r4, #12]
d008389e:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00838a2:	f023 0303 	bic.w	r3, r3, #3
d00838a6:	f1b8 0f02 	cmp.w	r8, #2
d00838aa:	81a3      	strh	r3, [r4, #12]
d00838ac:	d06c      	beq.n	d0083988 <setvbuf+0x168>
d00838ae:	ab01      	add	r3, sp, #4
d00838b0:	466a      	mov	r2, sp
d00838b2:	4621      	mov	r1, r4
d00838b4:	4638      	mov	r0, r7
d00838b6:	f000 fa67 	bl	d0083d88 <__swhatbuf_r>
d00838ba:	89a3      	ldrh	r3, [r4, #12]
d00838bc:	4318      	orrs	r0, r3
d00838be:	81a0      	strh	r0, [r4, #12]
d00838c0:	2d00      	cmp	r5, #0
d00838c2:	d130      	bne.n	d0083926 <setvbuf+0x106>
d00838c4:	9d00      	ldr	r5, [sp, #0]
d00838c6:	4628      	mov	r0, r5
d00838c8:	f7ff fee8 	bl	d008369c <malloc>
d00838cc:	4606      	mov	r6, r0
d00838ce:	2800      	cmp	r0, #0
d00838d0:	d155      	bne.n	d008397e <setvbuf+0x15e>
d00838d2:	f8dd 9000 	ldr.w	r9, [sp]
d00838d6:	45a9      	cmp	r9, r5
d00838d8:	d14a      	bne.n	d0083970 <setvbuf+0x150>
d00838da:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00838de:	2200      	movs	r2, #0
d00838e0:	60a2      	str	r2, [r4, #8]
d00838e2:	f104 0247 	add.w	r2, r4, #71	; 0x47
d00838e6:	6022      	str	r2, [r4, #0]
d00838e8:	6122      	str	r2, [r4, #16]
d00838ea:	2201      	movs	r2, #1
d00838ec:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00838f0:	6162      	str	r2, [r4, #20]
d00838f2:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00838f4:	f043 0302 	orr.w	r3, r3, #2
d00838f8:	07d2      	lsls	r2, r2, #31
d00838fa:	81a3      	strh	r3, [r4, #12]
d00838fc:	d405      	bmi.n	d008390a <setvbuf+0xea>
d00838fe:	f413 7f00 	tst.w	r3, #512	; 0x200
d0083902:	d102      	bne.n	d008390a <setvbuf+0xea>
d0083904:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0083906:	f000 fa3e 	bl	d0083d86 <__retarget_lock_release_recursive>
d008390a:	4628      	mov	r0, r5
d008390c:	b003      	add	sp, #12
d008390e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0083912:	4b24      	ldr	r3, [pc, #144]	; (d00839a4 <setvbuf+0x184>)
d0083914:	429c      	cmp	r4, r3
d0083916:	d101      	bne.n	d008391c <setvbuf+0xfc>
d0083918:	68bc      	ldr	r4, [r7, #8]
d008391a:	e793      	b.n	d0083844 <setvbuf+0x24>
d008391c:	4b22      	ldr	r3, [pc, #136]	; (d00839a8 <setvbuf+0x188>)
d008391e:	429c      	cmp	r4, r3
d0083920:	bf08      	it	eq
d0083922:	68fc      	ldreq	r4, [r7, #12]
d0083924:	e78e      	b.n	d0083844 <setvbuf+0x24>
d0083926:	2e00      	cmp	r6, #0
d0083928:	d0cd      	beq.n	d00838c6 <setvbuf+0xa6>
d008392a:	69bb      	ldr	r3, [r7, #24]
d008392c:	b913      	cbnz	r3, d0083934 <setvbuf+0x114>
d008392e:	4638      	mov	r0, r7
d0083930:	f000 f98a 	bl	d0083c48 <__sinit>
d0083934:	f1b8 0f01 	cmp.w	r8, #1
d0083938:	bf08      	it	eq
d008393a:	89a3      	ldrheq	r3, [r4, #12]
d008393c:	6026      	str	r6, [r4, #0]
d008393e:	bf04      	itt	eq
d0083940:	f043 0301 	orreq.w	r3, r3, #1
d0083944:	81a3      	strheq	r3, [r4, #12]
d0083946:	89a2      	ldrh	r2, [r4, #12]
d0083948:	f012 0308 	ands.w	r3, r2, #8
d008394c:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0083950:	d01c      	beq.n	d008398c <setvbuf+0x16c>
d0083952:	07d3      	lsls	r3, r2, #31
d0083954:	bf41      	itttt	mi
d0083956:	2300      	movmi	r3, #0
d0083958:	426d      	negmi	r5, r5
d008395a:	60a3      	strmi	r3, [r4, #8]
d008395c:	61a5      	strmi	r5, [r4, #24]
d008395e:	bf58      	it	pl
d0083960:	60a5      	strpl	r5, [r4, #8]
d0083962:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0083964:	f015 0501 	ands.w	r5, r5, #1
d0083968:	d115      	bne.n	d0083996 <setvbuf+0x176>
d008396a:	f412 7f00 	tst.w	r2, #512	; 0x200
d008396e:	e7c8      	b.n	d0083902 <setvbuf+0xe2>
d0083970:	4648      	mov	r0, r9
d0083972:	f7ff fe93 	bl	d008369c <malloc>
d0083976:	4606      	mov	r6, r0
d0083978:	2800      	cmp	r0, #0
d008397a:	d0ae      	beq.n	d00838da <setvbuf+0xba>
d008397c:	464d      	mov	r5, r9
d008397e:	89a3      	ldrh	r3, [r4, #12]
d0083980:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0083984:	81a3      	strh	r3, [r4, #12]
d0083986:	e7d0      	b.n	d008392a <setvbuf+0x10a>
d0083988:	2500      	movs	r5, #0
d008398a:	e7a8      	b.n	d00838de <setvbuf+0xbe>
d008398c:	60a3      	str	r3, [r4, #8]
d008398e:	e7e8      	b.n	d0083962 <setvbuf+0x142>
d0083990:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0083994:	e7b9      	b.n	d008390a <setvbuf+0xea>
d0083996:	2500      	movs	r5, #0
d0083998:	e7b7      	b.n	d008390a <setvbuf+0xea>
d008399a:	bf00      	nop
d008399c:	d008a6c4 	.word	0xd008a6c4
d00839a0:	d008a614 	.word	0xd008a614
d00839a4:	d008a634 	.word	0xd008a634
d00839a8:	d008a5f4 	.word	0xd008a5f4

d00839ac <sniprintf>:
d00839ac:	b40c      	push	{r2, r3}
d00839ae:	b530      	push	{r4, r5, lr}
d00839b0:	4b17      	ldr	r3, [pc, #92]	; (d0083a10 <sniprintf+0x64>)
d00839b2:	1e0c      	subs	r4, r1, #0
d00839b4:	681d      	ldr	r5, [r3, #0]
d00839b6:	b09d      	sub	sp, #116	; 0x74
d00839b8:	da08      	bge.n	d00839cc <sniprintf+0x20>
d00839ba:	238b      	movs	r3, #139	; 0x8b
d00839bc:	602b      	str	r3, [r5, #0]
d00839be:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00839c2:	b01d      	add	sp, #116	; 0x74
d00839c4:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00839c8:	b002      	add	sp, #8
d00839ca:	4770      	bx	lr
d00839cc:	f44f 7302 	mov.w	r3, #520	; 0x208
d00839d0:	f8ad 3014 	strh.w	r3, [sp, #20]
d00839d4:	bf14      	ite	ne
d00839d6:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d00839da:	4623      	moveq	r3, r4
d00839dc:	9304      	str	r3, [sp, #16]
d00839de:	9307      	str	r3, [sp, #28]
d00839e0:	f64f 73ff 	movw	r3, #65535	; 0xffff
d00839e4:	9002      	str	r0, [sp, #8]
d00839e6:	9006      	str	r0, [sp, #24]
d00839e8:	f8ad 3016 	strh.w	r3, [sp, #22]
d00839ec:	9a20      	ldr	r2, [sp, #128]	; 0x80
d00839ee:	ab21      	add	r3, sp, #132	; 0x84
d00839f0:	a902      	add	r1, sp, #8
d00839f2:	4628      	mov	r0, r5
d00839f4:	9301      	str	r3, [sp, #4]
d00839f6:	f000 fa53 	bl	d0083ea0 <_svfiprintf_r>
d00839fa:	1c43      	adds	r3, r0, #1
d00839fc:	bfbc      	itt	lt
d00839fe:	238b      	movlt	r3, #139	; 0x8b
d0083a00:	602b      	strlt	r3, [r5, #0]
d0083a02:	2c00      	cmp	r4, #0
d0083a04:	d0dd      	beq.n	d00839c2 <sniprintf+0x16>
d0083a06:	9b02      	ldr	r3, [sp, #8]
d0083a08:	2200      	movs	r2, #0
d0083a0a:	701a      	strb	r2, [r3, #0]
d0083a0c:	e7d9      	b.n	d00839c2 <sniprintf+0x16>
d0083a0e:	bf00      	nop
d0083a10:	d008a6c4 	.word	0xd008a6c4

d0083a14 <__sflush_r>:
d0083a14:	898a      	ldrh	r2, [r1, #12]
d0083a16:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0083a1a:	4605      	mov	r5, r0
d0083a1c:	0710      	lsls	r0, r2, #28
d0083a1e:	460c      	mov	r4, r1
d0083a20:	d458      	bmi.n	d0083ad4 <__sflush_r+0xc0>
d0083a22:	684b      	ldr	r3, [r1, #4]
d0083a24:	2b00      	cmp	r3, #0
d0083a26:	dc05      	bgt.n	d0083a34 <__sflush_r+0x20>
d0083a28:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0083a2a:	2b00      	cmp	r3, #0
d0083a2c:	dc02      	bgt.n	d0083a34 <__sflush_r+0x20>
d0083a2e:	2000      	movs	r0, #0
d0083a30:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0083a34:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0083a36:	2e00      	cmp	r6, #0
d0083a38:	d0f9      	beq.n	d0083a2e <__sflush_r+0x1a>
d0083a3a:	2300      	movs	r3, #0
d0083a3c:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0083a40:	682f      	ldr	r7, [r5, #0]
d0083a42:	602b      	str	r3, [r5, #0]
d0083a44:	d032      	beq.n	d0083aac <__sflush_r+0x98>
d0083a46:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0083a48:	89a3      	ldrh	r3, [r4, #12]
d0083a4a:	075a      	lsls	r2, r3, #29
d0083a4c:	d505      	bpl.n	d0083a5a <__sflush_r+0x46>
d0083a4e:	6863      	ldr	r3, [r4, #4]
d0083a50:	1ac0      	subs	r0, r0, r3
d0083a52:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0083a54:	b10b      	cbz	r3, d0083a5a <__sflush_r+0x46>
d0083a56:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0083a58:	1ac0      	subs	r0, r0, r3
d0083a5a:	2300      	movs	r3, #0
d0083a5c:	4602      	mov	r2, r0
d0083a5e:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0083a60:	6a21      	ldr	r1, [r4, #32]
d0083a62:	4628      	mov	r0, r5
d0083a64:	47b0      	blx	r6
d0083a66:	1c43      	adds	r3, r0, #1
d0083a68:	89a3      	ldrh	r3, [r4, #12]
d0083a6a:	d106      	bne.n	d0083a7a <__sflush_r+0x66>
d0083a6c:	6829      	ldr	r1, [r5, #0]
d0083a6e:	291d      	cmp	r1, #29
d0083a70:	d82c      	bhi.n	d0083acc <__sflush_r+0xb8>
d0083a72:	4a2a      	ldr	r2, [pc, #168]	; (d0083b1c <__sflush_r+0x108>)
d0083a74:	40ca      	lsrs	r2, r1
d0083a76:	07d6      	lsls	r6, r2, #31
d0083a78:	d528      	bpl.n	d0083acc <__sflush_r+0xb8>
d0083a7a:	2200      	movs	r2, #0
d0083a7c:	6062      	str	r2, [r4, #4]
d0083a7e:	04d9      	lsls	r1, r3, #19
d0083a80:	6922      	ldr	r2, [r4, #16]
d0083a82:	6022      	str	r2, [r4, #0]
d0083a84:	d504      	bpl.n	d0083a90 <__sflush_r+0x7c>
d0083a86:	1c42      	adds	r2, r0, #1
d0083a88:	d101      	bne.n	d0083a8e <__sflush_r+0x7a>
d0083a8a:	682b      	ldr	r3, [r5, #0]
d0083a8c:	b903      	cbnz	r3, d0083a90 <__sflush_r+0x7c>
d0083a8e:	6560      	str	r0, [r4, #84]	; 0x54
d0083a90:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0083a92:	602f      	str	r7, [r5, #0]
d0083a94:	2900      	cmp	r1, #0
d0083a96:	d0ca      	beq.n	d0083a2e <__sflush_r+0x1a>
d0083a98:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0083a9c:	4299      	cmp	r1, r3
d0083a9e:	d002      	beq.n	d0083aa6 <__sflush_r+0x92>
d0083aa0:	4628      	mov	r0, r5
d0083aa2:	f7ff fe0b 	bl	d00836bc <_free_r>
d0083aa6:	2000      	movs	r0, #0
d0083aa8:	6360      	str	r0, [r4, #52]	; 0x34
d0083aaa:	e7c1      	b.n	d0083a30 <__sflush_r+0x1c>
d0083aac:	6a21      	ldr	r1, [r4, #32]
d0083aae:	2301      	movs	r3, #1
d0083ab0:	4628      	mov	r0, r5
d0083ab2:	47b0      	blx	r6
d0083ab4:	1c41      	adds	r1, r0, #1
d0083ab6:	d1c7      	bne.n	d0083a48 <__sflush_r+0x34>
d0083ab8:	682b      	ldr	r3, [r5, #0]
d0083aba:	2b00      	cmp	r3, #0
d0083abc:	d0c4      	beq.n	d0083a48 <__sflush_r+0x34>
d0083abe:	2b1d      	cmp	r3, #29
d0083ac0:	d001      	beq.n	d0083ac6 <__sflush_r+0xb2>
d0083ac2:	2b16      	cmp	r3, #22
d0083ac4:	d101      	bne.n	d0083aca <__sflush_r+0xb6>
d0083ac6:	602f      	str	r7, [r5, #0]
d0083ac8:	e7b1      	b.n	d0083a2e <__sflush_r+0x1a>
d0083aca:	89a3      	ldrh	r3, [r4, #12]
d0083acc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0083ad0:	81a3      	strh	r3, [r4, #12]
d0083ad2:	e7ad      	b.n	d0083a30 <__sflush_r+0x1c>
d0083ad4:	690f      	ldr	r7, [r1, #16]
d0083ad6:	2f00      	cmp	r7, #0
d0083ad8:	d0a9      	beq.n	d0083a2e <__sflush_r+0x1a>
d0083ada:	0793      	lsls	r3, r2, #30
d0083adc:	680e      	ldr	r6, [r1, #0]
d0083ade:	bf08      	it	eq
d0083ae0:	694b      	ldreq	r3, [r1, #20]
d0083ae2:	600f      	str	r7, [r1, #0]
d0083ae4:	bf18      	it	ne
d0083ae6:	2300      	movne	r3, #0
d0083ae8:	eba6 0807 	sub.w	r8, r6, r7
d0083aec:	608b      	str	r3, [r1, #8]
d0083aee:	f1b8 0f00 	cmp.w	r8, #0
d0083af2:	dd9c      	ble.n	d0083a2e <__sflush_r+0x1a>
d0083af4:	6a21      	ldr	r1, [r4, #32]
d0083af6:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0083af8:	4643      	mov	r3, r8
d0083afa:	463a      	mov	r2, r7
d0083afc:	4628      	mov	r0, r5
d0083afe:	47b0      	blx	r6
d0083b00:	2800      	cmp	r0, #0
d0083b02:	dc06      	bgt.n	d0083b12 <__sflush_r+0xfe>
d0083b04:	89a3      	ldrh	r3, [r4, #12]
d0083b06:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0083b0a:	81a3      	strh	r3, [r4, #12]
d0083b0c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0083b10:	e78e      	b.n	d0083a30 <__sflush_r+0x1c>
d0083b12:	4407      	add	r7, r0
d0083b14:	eba8 0800 	sub.w	r8, r8, r0
d0083b18:	e7e9      	b.n	d0083aee <__sflush_r+0xda>
d0083b1a:	bf00      	nop
d0083b1c:	20400001 	.word	0x20400001

d0083b20 <_fflush_r>:
d0083b20:	b538      	push	{r3, r4, r5, lr}
d0083b22:	690b      	ldr	r3, [r1, #16]
d0083b24:	4605      	mov	r5, r0
d0083b26:	460c      	mov	r4, r1
d0083b28:	b913      	cbnz	r3, d0083b30 <_fflush_r+0x10>
d0083b2a:	2500      	movs	r5, #0
d0083b2c:	4628      	mov	r0, r5
d0083b2e:	bd38      	pop	{r3, r4, r5, pc}
d0083b30:	b118      	cbz	r0, d0083b3a <_fflush_r+0x1a>
d0083b32:	6983      	ldr	r3, [r0, #24]
d0083b34:	b90b      	cbnz	r3, d0083b3a <_fflush_r+0x1a>
d0083b36:	f000 f887 	bl	d0083c48 <__sinit>
d0083b3a:	4b14      	ldr	r3, [pc, #80]	; (d0083b8c <_fflush_r+0x6c>)
d0083b3c:	429c      	cmp	r4, r3
d0083b3e:	d11b      	bne.n	d0083b78 <_fflush_r+0x58>
d0083b40:	686c      	ldr	r4, [r5, #4]
d0083b42:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0083b46:	2b00      	cmp	r3, #0
d0083b48:	d0ef      	beq.n	d0083b2a <_fflush_r+0xa>
d0083b4a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0083b4c:	07d0      	lsls	r0, r2, #31
d0083b4e:	d404      	bmi.n	d0083b5a <_fflush_r+0x3a>
d0083b50:	0599      	lsls	r1, r3, #22
d0083b52:	d402      	bmi.n	d0083b5a <_fflush_r+0x3a>
d0083b54:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0083b56:	f000 f915 	bl	d0083d84 <__retarget_lock_acquire_recursive>
d0083b5a:	4628      	mov	r0, r5
d0083b5c:	4621      	mov	r1, r4
d0083b5e:	f7ff ff59 	bl	d0083a14 <__sflush_r>
d0083b62:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0083b64:	07da      	lsls	r2, r3, #31
d0083b66:	4605      	mov	r5, r0
d0083b68:	d4e0      	bmi.n	d0083b2c <_fflush_r+0xc>
d0083b6a:	89a3      	ldrh	r3, [r4, #12]
d0083b6c:	059b      	lsls	r3, r3, #22
d0083b6e:	d4dd      	bmi.n	d0083b2c <_fflush_r+0xc>
d0083b70:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0083b72:	f000 f908 	bl	d0083d86 <__retarget_lock_release_recursive>
d0083b76:	e7d9      	b.n	d0083b2c <_fflush_r+0xc>
d0083b78:	4b05      	ldr	r3, [pc, #20]	; (d0083b90 <_fflush_r+0x70>)
d0083b7a:	429c      	cmp	r4, r3
d0083b7c:	d101      	bne.n	d0083b82 <_fflush_r+0x62>
d0083b7e:	68ac      	ldr	r4, [r5, #8]
d0083b80:	e7df      	b.n	d0083b42 <_fflush_r+0x22>
d0083b82:	4b04      	ldr	r3, [pc, #16]	; (d0083b94 <_fflush_r+0x74>)
d0083b84:	429c      	cmp	r4, r3
d0083b86:	bf08      	it	eq
d0083b88:	68ec      	ldreq	r4, [r5, #12]
d0083b8a:	e7da      	b.n	d0083b42 <_fflush_r+0x22>
d0083b8c:	d008a614 	.word	0xd008a614
d0083b90:	d008a634 	.word	0xd008a634
d0083b94:	d008a5f4 	.word	0xd008a5f4

d0083b98 <std>:
d0083b98:	2300      	movs	r3, #0
d0083b9a:	b510      	push	{r4, lr}
d0083b9c:	4604      	mov	r4, r0
d0083b9e:	e9c0 3300 	strd	r3, r3, [r0]
d0083ba2:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0083ba6:	6083      	str	r3, [r0, #8]
d0083ba8:	8181      	strh	r1, [r0, #12]
d0083baa:	6643      	str	r3, [r0, #100]	; 0x64
d0083bac:	81c2      	strh	r2, [r0, #14]
d0083bae:	6183      	str	r3, [r0, #24]
d0083bb0:	4619      	mov	r1, r3
d0083bb2:	2208      	movs	r2, #8
d0083bb4:	305c      	adds	r0, #92	; 0x5c
d0083bb6:	f7ff fd79 	bl	d00836ac <memset>
d0083bba:	4b05      	ldr	r3, [pc, #20]	; (d0083bd0 <std+0x38>)
d0083bbc:	6263      	str	r3, [r4, #36]	; 0x24
d0083bbe:	4b05      	ldr	r3, [pc, #20]	; (d0083bd4 <std+0x3c>)
d0083bc0:	62a3      	str	r3, [r4, #40]	; 0x28
d0083bc2:	4b05      	ldr	r3, [pc, #20]	; (d0083bd8 <std+0x40>)
d0083bc4:	62e3      	str	r3, [r4, #44]	; 0x2c
d0083bc6:	4b05      	ldr	r3, [pc, #20]	; (d0083bdc <std+0x44>)
d0083bc8:	6224      	str	r4, [r4, #32]
d0083bca:	6323      	str	r3, [r4, #48]	; 0x30
d0083bcc:	bd10      	pop	{r4, pc}
d0083bce:	bf00      	nop
d0083bd0:	d00843c9 	.word	0xd00843c9
d0083bd4:	d00843eb 	.word	0xd00843eb
d0083bd8:	d0084423 	.word	0xd0084423
d0083bdc:	d0084447 	.word	0xd0084447

d0083be0 <_cleanup_r>:
d0083be0:	4901      	ldr	r1, [pc, #4]	; (d0083be8 <_cleanup_r+0x8>)
d0083be2:	f000 b8af 	b.w	d0083d44 <_fwalk_reent>
d0083be6:	bf00      	nop
d0083be8:	d0083b21 	.word	0xd0083b21

d0083bec <__sfmoreglue>:
d0083bec:	b570      	push	{r4, r5, r6, lr}
d0083bee:	1e4a      	subs	r2, r1, #1
d0083bf0:	2568      	movs	r5, #104	; 0x68
d0083bf2:	4355      	muls	r5, r2
d0083bf4:	460e      	mov	r6, r1
d0083bf6:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0083bfa:	f7ff fdaf 	bl	d008375c <_malloc_r>
d0083bfe:	4604      	mov	r4, r0
d0083c00:	b140      	cbz	r0, d0083c14 <__sfmoreglue+0x28>
d0083c02:	2100      	movs	r1, #0
d0083c04:	e9c0 1600 	strd	r1, r6, [r0]
d0083c08:	300c      	adds	r0, #12
d0083c0a:	60a0      	str	r0, [r4, #8]
d0083c0c:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0083c10:	f7ff fd4c 	bl	d00836ac <memset>
d0083c14:	4620      	mov	r0, r4
d0083c16:	bd70      	pop	{r4, r5, r6, pc}

d0083c18 <__sfp_lock_acquire>:
d0083c18:	4801      	ldr	r0, [pc, #4]	; (d0083c20 <__sfp_lock_acquire+0x8>)
d0083c1a:	f000 b8b3 	b.w	d0083d84 <__retarget_lock_acquire_recursive>
d0083c1e:	bf00      	nop
d0083c20:	d008ab4c 	.word	0xd008ab4c

d0083c24 <__sfp_lock_release>:
d0083c24:	4801      	ldr	r0, [pc, #4]	; (d0083c2c <__sfp_lock_release+0x8>)
d0083c26:	f000 b8ae 	b.w	d0083d86 <__retarget_lock_release_recursive>
d0083c2a:	bf00      	nop
d0083c2c:	d008ab4c 	.word	0xd008ab4c

d0083c30 <__sinit_lock_acquire>:
d0083c30:	4801      	ldr	r0, [pc, #4]	; (d0083c38 <__sinit_lock_acquire+0x8>)
d0083c32:	f000 b8a7 	b.w	d0083d84 <__retarget_lock_acquire_recursive>
d0083c36:	bf00      	nop
d0083c38:	d008ab47 	.word	0xd008ab47

d0083c3c <__sinit_lock_release>:
d0083c3c:	4801      	ldr	r0, [pc, #4]	; (d0083c44 <__sinit_lock_release+0x8>)
d0083c3e:	f000 b8a2 	b.w	d0083d86 <__retarget_lock_release_recursive>
d0083c42:	bf00      	nop
d0083c44:	d008ab47 	.word	0xd008ab47

d0083c48 <__sinit>:
d0083c48:	b510      	push	{r4, lr}
d0083c4a:	4604      	mov	r4, r0
d0083c4c:	f7ff fff0 	bl	d0083c30 <__sinit_lock_acquire>
d0083c50:	69a3      	ldr	r3, [r4, #24]
d0083c52:	b11b      	cbz	r3, d0083c5c <__sinit+0x14>
d0083c54:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0083c58:	f7ff bff0 	b.w	d0083c3c <__sinit_lock_release>
d0083c5c:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0083c60:	6523      	str	r3, [r4, #80]	; 0x50
d0083c62:	4b13      	ldr	r3, [pc, #76]	; (d0083cb0 <__sinit+0x68>)
d0083c64:	4a13      	ldr	r2, [pc, #76]	; (d0083cb4 <__sinit+0x6c>)
d0083c66:	681b      	ldr	r3, [r3, #0]
d0083c68:	62a2      	str	r2, [r4, #40]	; 0x28
d0083c6a:	42a3      	cmp	r3, r4
d0083c6c:	bf04      	itt	eq
d0083c6e:	2301      	moveq	r3, #1
d0083c70:	61a3      	streq	r3, [r4, #24]
d0083c72:	4620      	mov	r0, r4
d0083c74:	f000 f820 	bl	d0083cb8 <__sfp>
d0083c78:	6060      	str	r0, [r4, #4]
d0083c7a:	4620      	mov	r0, r4
d0083c7c:	f000 f81c 	bl	d0083cb8 <__sfp>
d0083c80:	60a0      	str	r0, [r4, #8]
d0083c82:	4620      	mov	r0, r4
d0083c84:	f000 f818 	bl	d0083cb8 <__sfp>
d0083c88:	2200      	movs	r2, #0
d0083c8a:	60e0      	str	r0, [r4, #12]
d0083c8c:	2104      	movs	r1, #4
d0083c8e:	6860      	ldr	r0, [r4, #4]
d0083c90:	f7ff ff82 	bl	d0083b98 <std>
d0083c94:	68a0      	ldr	r0, [r4, #8]
d0083c96:	2201      	movs	r2, #1
d0083c98:	2109      	movs	r1, #9
d0083c9a:	f7ff ff7d 	bl	d0083b98 <std>
d0083c9e:	68e0      	ldr	r0, [r4, #12]
d0083ca0:	2202      	movs	r2, #2
d0083ca2:	2112      	movs	r1, #18
d0083ca4:	f7ff ff78 	bl	d0083b98 <std>
d0083ca8:	2301      	movs	r3, #1
d0083caa:	61a3      	str	r3, [r4, #24]
d0083cac:	e7d2      	b.n	d0083c54 <__sinit+0xc>
d0083cae:	bf00      	nop
d0083cb0:	d008a5f0 	.word	0xd008a5f0
d0083cb4:	d0083be1 	.word	0xd0083be1

d0083cb8 <__sfp>:
d0083cb8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0083cba:	4607      	mov	r7, r0
d0083cbc:	f7ff ffac 	bl	d0083c18 <__sfp_lock_acquire>
d0083cc0:	4b1e      	ldr	r3, [pc, #120]	; (d0083d3c <__sfp+0x84>)
d0083cc2:	681e      	ldr	r6, [r3, #0]
d0083cc4:	69b3      	ldr	r3, [r6, #24]
d0083cc6:	b913      	cbnz	r3, d0083cce <__sfp+0x16>
d0083cc8:	4630      	mov	r0, r6
d0083cca:	f7ff ffbd 	bl	d0083c48 <__sinit>
d0083cce:	3648      	adds	r6, #72	; 0x48
d0083cd0:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0083cd4:	3b01      	subs	r3, #1
d0083cd6:	d503      	bpl.n	d0083ce0 <__sfp+0x28>
d0083cd8:	6833      	ldr	r3, [r6, #0]
d0083cda:	b30b      	cbz	r3, d0083d20 <__sfp+0x68>
d0083cdc:	6836      	ldr	r6, [r6, #0]
d0083cde:	e7f7      	b.n	d0083cd0 <__sfp+0x18>
d0083ce0:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0083ce4:	b9d5      	cbnz	r5, d0083d1c <__sfp+0x64>
d0083ce6:	4b16      	ldr	r3, [pc, #88]	; (d0083d40 <__sfp+0x88>)
d0083ce8:	60e3      	str	r3, [r4, #12]
d0083cea:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0083cee:	6665      	str	r5, [r4, #100]	; 0x64
d0083cf0:	f000 f847 	bl	d0083d82 <__retarget_lock_init_recursive>
d0083cf4:	f7ff ff96 	bl	d0083c24 <__sfp_lock_release>
d0083cf8:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0083cfc:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0083d00:	6025      	str	r5, [r4, #0]
d0083d02:	61a5      	str	r5, [r4, #24]
d0083d04:	2208      	movs	r2, #8
d0083d06:	4629      	mov	r1, r5
d0083d08:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0083d0c:	f7ff fcce 	bl	d00836ac <memset>
d0083d10:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0083d14:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0083d18:	4620      	mov	r0, r4
d0083d1a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0083d1c:	3468      	adds	r4, #104	; 0x68
d0083d1e:	e7d9      	b.n	d0083cd4 <__sfp+0x1c>
d0083d20:	2104      	movs	r1, #4
d0083d22:	4638      	mov	r0, r7
d0083d24:	f7ff ff62 	bl	d0083bec <__sfmoreglue>
d0083d28:	4604      	mov	r4, r0
d0083d2a:	6030      	str	r0, [r6, #0]
d0083d2c:	2800      	cmp	r0, #0
d0083d2e:	d1d5      	bne.n	d0083cdc <__sfp+0x24>
d0083d30:	f7ff ff78 	bl	d0083c24 <__sfp_lock_release>
d0083d34:	230c      	movs	r3, #12
d0083d36:	603b      	str	r3, [r7, #0]
d0083d38:	e7ee      	b.n	d0083d18 <__sfp+0x60>
d0083d3a:	bf00      	nop
d0083d3c:	d008a5f0 	.word	0xd008a5f0
d0083d40:	ffff0001 	.word	0xffff0001

d0083d44 <_fwalk_reent>:
d0083d44:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0083d48:	4606      	mov	r6, r0
d0083d4a:	4688      	mov	r8, r1
d0083d4c:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0083d50:	2700      	movs	r7, #0
d0083d52:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0083d56:	f1b9 0901 	subs.w	r9, r9, #1
d0083d5a:	d505      	bpl.n	d0083d68 <_fwalk_reent+0x24>
d0083d5c:	6824      	ldr	r4, [r4, #0]
d0083d5e:	2c00      	cmp	r4, #0
d0083d60:	d1f7      	bne.n	d0083d52 <_fwalk_reent+0xe>
d0083d62:	4638      	mov	r0, r7
d0083d64:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0083d68:	89ab      	ldrh	r3, [r5, #12]
d0083d6a:	2b01      	cmp	r3, #1
d0083d6c:	d907      	bls.n	d0083d7e <_fwalk_reent+0x3a>
d0083d6e:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0083d72:	3301      	adds	r3, #1
d0083d74:	d003      	beq.n	d0083d7e <_fwalk_reent+0x3a>
d0083d76:	4629      	mov	r1, r5
d0083d78:	4630      	mov	r0, r6
d0083d7a:	47c0      	blx	r8
d0083d7c:	4307      	orrs	r7, r0
d0083d7e:	3568      	adds	r5, #104	; 0x68
d0083d80:	e7e9      	b.n	d0083d56 <_fwalk_reent+0x12>

d0083d82 <__retarget_lock_init_recursive>:
d0083d82:	4770      	bx	lr

d0083d84 <__retarget_lock_acquire_recursive>:
d0083d84:	4770      	bx	lr

d0083d86 <__retarget_lock_release_recursive>:
d0083d86:	4770      	bx	lr

d0083d88 <__swhatbuf_r>:
d0083d88:	b570      	push	{r4, r5, r6, lr}
d0083d8a:	460e      	mov	r6, r1
d0083d8c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0083d90:	2900      	cmp	r1, #0
d0083d92:	b096      	sub	sp, #88	; 0x58
d0083d94:	4614      	mov	r4, r2
d0083d96:	461d      	mov	r5, r3
d0083d98:	da07      	bge.n	d0083daa <__swhatbuf_r+0x22>
d0083d9a:	2300      	movs	r3, #0
d0083d9c:	602b      	str	r3, [r5, #0]
d0083d9e:	89b3      	ldrh	r3, [r6, #12]
d0083da0:	061a      	lsls	r2, r3, #24
d0083da2:	d410      	bmi.n	d0083dc6 <__swhatbuf_r+0x3e>
d0083da4:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0083da8:	e00e      	b.n	d0083dc8 <__swhatbuf_r+0x40>
d0083daa:	466a      	mov	r2, sp
d0083dac:	f000 fb60 	bl	d0084470 <_fstat_r>
d0083db0:	2800      	cmp	r0, #0
d0083db2:	dbf2      	blt.n	d0083d9a <__swhatbuf_r+0x12>
d0083db4:	9a01      	ldr	r2, [sp, #4]
d0083db6:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0083dba:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0083dbe:	425a      	negs	r2, r3
d0083dc0:	415a      	adcs	r2, r3
d0083dc2:	602a      	str	r2, [r5, #0]
d0083dc4:	e7ee      	b.n	d0083da4 <__swhatbuf_r+0x1c>
d0083dc6:	2340      	movs	r3, #64	; 0x40
d0083dc8:	2000      	movs	r0, #0
d0083dca:	6023      	str	r3, [r4, #0]
d0083dcc:	b016      	add	sp, #88	; 0x58
d0083dce:	bd70      	pop	{r4, r5, r6, pc}

d0083dd0 <__malloc_lock>:
d0083dd0:	4801      	ldr	r0, [pc, #4]	; (d0083dd8 <__malloc_lock+0x8>)
d0083dd2:	f7ff bfd7 	b.w	d0083d84 <__retarget_lock_acquire_recursive>
d0083dd6:	bf00      	nop
d0083dd8:	d008ab48 	.word	0xd008ab48

d0083ddc <__malloc_unlock>:
d0083ddc:	4801      	ldr	r0, [pc, #4]	; (d0083de4 <__malloc_unlock+0x8>)
d0083dde:	f7ff bfd2 	b.w	d0083d86 <__retarget_lock_release_recursive>
d0083de2:	bf00      	nop
d0083de4:	d008ab48 	.word	0xd008ab48

d0083de8 <__ssputs_r>:
d0083de8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0083dec:	688e      	ldr	r6, [r1, #8]
d0083dee:	429e      	cmp	r6, r3
d0083df0:	4682      	mov	sl, r0
d0083df2:	460c      	mov	r4, r1
d0083df4:	4690      	mov	r8, r2
d0083df6:	461f      	mov	r7, r3
d0083df8:	d838      	bhi.n	d0083e6c <__ssputs_r+0x84>
d0083dfa:	898a      	ldrh	r2, [r1, #12]
d0083dfc:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0083e00:	d032      	beq.n	d0083e68 <__ssputs_r+0x80>
d0083e02:	6825      	ldr	r5, [r4, #0]
d0083e04:	6909      	ldr	r1, [r1, #16]
d0083e06:	eba5 0901 	sub.w	r9, r5, r1
d0083e0a:	6965      	ldr	r5, [r4, #20]
d0083e0c:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0083e10:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0083e14:	3301      	adds	r3, #1
d0083e16:	444b      	add	r3, r9
d0083e18:	106d      	asrs	r5, r5, #1
d0083e1a:	429d      	cmp	r5, r3
d0083e1c:	bf38      	it	cc
d0083e1e:	461d      	movcc	r5, r3
d0083e20:	0553      	lsls	r3, r2, #21
d0083e22:	d531      	bpl.n	d0083e88 <__ssputs_r+0xa0>
d0083e24:	4629      	mov	r1, r5
d0083e26:	f7ff fc99 	bl	d008375c <_malloc_r>
d0083e2a:	4606      	mov	r6, r0
d0083e2c:	b950      	cbnz	r0, d0083e44 <__ssputs_r+0x5c>
d0083e2e:	230c      	movs	r3, #12
d0083e30:	f8ca 3000 	str.w	r3, [sl]
d0083e34:	89a3      	ldrh	r3, [r4, #12]
d0083e36:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0083e3a:	81a3      	strh	r3, [r4, #12]
d0083e3c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0083e40:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0083e44:	6921      	ldr	r1, [r4, #16]
d0083e46:	464a      	mov	r2, r9
d0083e48:	f000 fb8a 	bl	d0084560 <memcpy>
d0083e4c:	89a3      	ldrh	r3, [r4, #12]
d0083e4e:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0083e52:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0083e56:	81a3      	strh	r3, [r4, #12]
d0083e58:	6126      	str	r6, [r4, #16]
d0083e5a:	6165      	str	r5, [r4, #20]
d0083e5c:	444e      	add	r6, r9
d0083e5e:	eba5 0509 	sub.w	r5, r5, r9
d0083e62:	6026      	str	r6, [r4, #0]
d0083e64:	60a5      	str	r5, [r4, #8]
d0083e66:	463e      	mov	r6, r7
d0083e68:	42be      	cmp	r6, r7
d0083e6a:	d900      	bls.n	d0083e6e <__ssputs_r+0x86>
d0083e6c:	463e      	mov	r6, r7
d0083e6e:	4632      	mov	r2, r6
d0083e70:	6820      	ldr	r0, [r4, #0]
d0083e72:	4641      	mov	r1, r8
d0083e74:	f000 fb82 	bl	d008457c <memmove>
d0083e78:	68a3      	ldr	r3, [r4, #8]
d0083e7a:	6822      	ldr	r2, [r4, #0]
d0083e7c:	1b9b      	subs	r3, r3, r6
d0083e7e:	4432      	add	r2, r6
d0083e80:	60a3      	str	r3, [r4, #8]
d0083e82:	6022      	str	r2, [r4, #0]
d0083e84:	2000      	movs	r0, #0
d0083e86:	e7db      	b.n	d0083e40 <__ssputs_r+0x58>
d0083e88:	462a      	mov	r2, r5
d0083e8a:	f000 fb91 	bl	d00845b0 <_realloc_r>
d0083e8e:	4606      	mov	r6, r0
d0083e90:	2800      	cmp	r0, #0
d0083e92:	d1e1      	bne.n	d0083e58 <__ssputs_r+0x70>
d0083e94:	6921      	ldr	r1, [r4, #16]
d0083e96:	4650      	mov	r0, sl
d0083e98:	f7ff fc10 	bl	d00836bc <_free_r>
d0083e9c:	e7c7      	b.n	d0083e2e <__ssputs_r+0x46>
	...

d0083ea0 <_svfiprintf_r>:
d0083ea0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0083ea4:	4698      	mov	r8, r3
d0083ea6:	898b      	ldrh	r3, [r1, #12]
d0083ea8:	061b      	lsls	r3, r3, #24
d0083eaa:	b09d      	sub	sp, #116	; 0x74
d0083eac:	4607      	mov	r7, r0
d0083eae:	460d      	mov	r5, r1
d0083eb0:	4614      	mov	r4, r2
d0083eb2:	d50e      	bpl.n	d0083ed2 <_svfiprintf_r+0x32>
d0083eb4:	690b      	ldr	r3, [r1, #16]
d0083eb6:	b963      	cbnz	r3, d0083ed2 <_svfiprintf_r+0x32>
d0083eb8:	2140      	movs	r1, #64	; 0x40
d0083eba:	f7ff fc4f 	bl	d008375c <_malloc_r>
d0083ebe:	6028      	str	r0, [r5, #0]
d0083ec0:	6128      	str	r0, [r5, #16]
d0083ec2:	b920      	cbnz	r0, d0083ece <_svfiprintf_r+0x2e>
d0083ec4:	230c      	movs	r3, #12
d0083ec6:	603b      	str	r3, [r7, #0]
d0083ec8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0083ecc:	e0d1      	b.n	d0084072 <_svfiprintf_r+0x1d2>
d0083ece:	2340      	movs	r3, #64	; 0x40
d0083ed0:	616b      	str	r3, [r5, #20]
d0083ed2:	2300      	movs	r3, #0
d0083ed4:	9309      	str	r3, [sp, #36]	; 0x24
d0083ed6:	2320      	movs	r3, #32
d0083ed8:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0083edc:	f8cd 800c 	str.w	r8, [sp, #12]
d0083ee0:	2330      	movs	r3, #48	; 0x30
d0083ee2:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d008408c <_svfiprintf_r+0x1ec>
d0083ee6:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0083eea:	f04f 0901 	mov.w	r9, #1
d0083eee:	4623      	mov	r3, r4
d0083ef0:	469a      	mov	sl, r3
d0083ef2:	f813 2b01 	ldrb.w	r2, [r3], #1
d0083ef6:	b10a      	cbz	r2, d0083efc <_svfiprintf_r+0x5c>
d0083ef8:	2a25      	cmp	r2, #37	; 0x25
d0083efa:	d1f9      	bne.n	d0083ef0 <_svfiprintf_r+0x50>
d0083efc:	ebba 0b04 	subs.w	fp, sl, r4
d0083f00:	d00b      	beq.n	d0083f1a <_svfiprintf_r+0x7a>
d0083f02:	465b      	mov	r3, fp
d0083f04:	4622      	mov	r2, r4
d0083f06:	4629      	mov	r1, r5
d0083f08:	4638      	mov	r0, r7
d0083f0a:	f7ff ff6d 	bl	d0083de8 <__ssputs_r>
d0083f0e:	3001      	adds	r0, #1
d0083f10:	f000 80aa 	beq.w	d0084068 <_svfiprintf_r+0x1c8>
d0083f14:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0083f16:	445a      	add	r2, fp
d0083f18:	9209      	str	r2, [sp, #36]	; 0x24
d0083f1a:	f89a 3000 	ldrb.w	r3, [sl]
d0083f1e:	2b00      	cmp	r3, #0
d0083f20:	f000 80a2 	beq.w	d0084068 <_svfiprintf_r+0x1c8>
d0083f24:	2300      	movs	r3, #0
d0083f26:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0083f2a:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0083f2e:	f10a 0a01 	add.w	sl, sl, #1
d0083f32:	9304      	str	r3, [sp, #16]
d0083f34:	9307      	str	r3, [sp, #28]
d0083f36:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0083f3a:	931a      	str	r3, [sp, #104]	; 0x68
d0083f3c:	4654      	mov	r4, sl
d0083f3e:	2205      	movs	r2, #5
d0083f40:	f814 1b01 	ldrb.w	r1, [r4], #1
d0083f44:	4851      	ldr	r0, [pc, #324]	; (d008408c <_svfiprintf_r+0x1ec>)
d0083f46:	f000 fabb 	bl	d00844c0 <memchr>
d0083f4a:	9a04      	ldr	r2, [sp, #16]
d0083f4c:	b9d8      	cbnz	r0, d0083f86 <_svfiprintf_r+0xe6>
d0083f4e:	06d0      	lsls	r0, r2, #27
d0083f50:	bf44      	itt	mi
d0083f52:	2320      	movmi	r3, #32
d0083f54:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0083f58:	0711      	lsls	r1, r2, #28
d0083f5a:	bf44      	itt	mi
d0083f5c:	232b      	movmi	r3, #43	; 0x2b
d0083f5e:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0083f62:	f89a 3000 	ldrb.w	r3, [sl]
d0083f66:	2b2a      	cmp	r3, #42	; 0x2a
d0083f68:	d015      	beq.n	d0083f96 <_svfiprintf_r+0xf6>
d0083f6a:	9a07      	ldr	r2, [sp, #28]
d0083f6c:	4654      	mov	r4, sl
d0083f6e:	2000      	movs	r0, #0
d0083f70:	f04f 0c0a 	mov.w	ip, #10
d0083f74:	4621      	mov	r1, r4
d0083f76:	f811 3b01 	ldrb.w	r3, [r1], #1
d0083f7a:	3b30      	subs	r3, #48	; 0x30
d0083f7c:	2b09      	cmp	r3, #9
d0083f7e:	d94e      	bls.n	d008401e <_svfiprintf_r+0x17e>
d0083f80:	b1b0      	cbz	r0, d0083fb0 <_svfiprintf_r+0x110>
d0083f82:	9207      	str	r2, [sp, #28]
d0083f84:	e014      	b.n	d0083fb0 <_svfiprintf_r+0x110>
d0083f86:	eba0 0308 	sub.w	r3, r0, r8
d0083f8a:	fa09 f303 	lsl.w	r3, r9, r3
d0083f8e:	4313      	orrs	r3, r2
d0083f90:	9304      	str	r3, [sp, #16]
d0083f92:	46a2      	mov	sl, r4
d0083f94:	e7d2      	b.n	d0083f3c <_svfiprintf_r+0x9c>
d0083f96:	9b03      	ldr	r3, [sp, #12]
d0083f98:	1d19      	adds	r1, r3, #4
d0083f9a:	681b      	ldr	r3, [r3, #0]
d0083f9c:	9103      	str	r1, [sp, #12]
d0083f9e:	2b00      	cmp	r3, #0
d0083fa0:	bfbb      	ittet	lt
d0083fa2:	425b      	neglt	r3, r3
d0083fa4:	f042 0202 	orrlt.w	r2, r2, #2
d0083fa8:	9307      	strge	r3, [sp, #28]
d0083faa:	9307      	strlt	r3, [sp, #28]
d0083fac:	bfb8      	it	lt
d0083fae:	9204      	strlt	r2, [sp, #16]
d0083fb0:	7823      	ldrb	r3, [r4, #0]
d0083fb2:	2b2e      	cmp	r3, #46	; 0x2e
d0083fb4:	d10c      	bne.n	d0083fd0 <_svfiprintf_r+0x130>
d0083fb6:	7863      	ldrb	r3, [r4, #1]
d0083fb8:	2b2a      	cmp	r3, #42	; 0x2a
d0083fba:	d135      	bne.n	d0084028 <_svfiprintf_r+0x188>
d0083fbc:	9b03      	ldr	r3, [sp, #12]
d0083fbe:	1d1a      	adds	r2, r3, #4
d0083fc0:	681b      	ldr	r3, [r3, #0]
d0083fc2:	9203      	str	r2, [sp, #12]
d0083fc4:	2b00      	cmp	r3, #0
d0083fc6:	bfb8      	it	lt
d0083fc8:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0083fcc:	3402      	adds	r4, #2
d0083fce:	9305      	str	r3, [sp, #20]
d0083fd0:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d008409c <_svfiprintf_r+0x1fc>
d0083fd4:	7821      	ldrb	r1, [r4, #0]
d0083fd6:	2203      	movs	r2, #3
d0083fd8:	4650      	mov	r0, sl
d0083fda:	f000 fa71 	bl	d00844c0 <memchr>
d0083fde:	b140      	cbz	r0, d0083ff2 <_svfiprintf_r+0x152>
d0083fe0:	2340      	movs	r3, #64	; 0x40
d0083fe2:	eba0 000a 	sub.w	r0, r0, sl
d0083fe6:	fa03 f000 	lsl.w	r0, r3, r0
d0083fea:	9b04      	ldr	r3, [sp, #16]
d0083fec:	4303      	orrs	r3, r0
d0083fee:	3401      	adds	r4, #1
d0083ff0:	9304      	str	r3, [sp, #16]
d0083ff2:	f814 1b01 	ldrb.w	r1, [r4], #1
d0083ff6:	4826      	ldr	r0, [pc, #152]	; (d0084090 <_svfiprintf_r+0x1f0>)
d0083ff8:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0083ffc:	2206      	movs	r2, #6
d0083ffe:	f000 fa5f 	bl	d00844c0 <memchr>
d0084002:	2800      	cmp	r0, #0
d0084004:	d038      	beq.n	d0084078 <_svfiprintf_r+0x1d8>
d0084006:	4b23      	ldr	r3, [pc, #140]	; (d0084094 <_svfiprintf_r+0x1f4>)
d0084008:	bb1b      	cbnz	r3, d0084052 <_svfiprintf_r+0x1b2>
d008400a:	9b03      	ldr	r3, [sp, #12]
d008400c:	3307      	adds	r3, #7
d008400e:	f023 0307 	bic.w	r3, r3, #7
d0084012:	3308      	adds	r3, #8
d0084014:	9303      	str	r3, [sp, #12]
d0084016:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0084018:	4433      	add	r3, r6
d008401a:	9309      	str	r3, [sp, #36]	; 0x24
d008401c:	e767      	b.n	d0083eee <_svfiprintf_r+0x4e>
d008401e:	fb0c 3202 	mla	r2, ip, r2, r3
d0084022:	460c      	mov	r4, r1
d0084024:	2001      	movs	r0, #1
d0084026:	e7a5      	b.n	d0083f74 <_svfiprintf_r+0xd4>
d0084028:	2300      	movs	r3, #0
d008402a:	3401      	adds	r4, #1
d008402c:	9305      	str	r3, [sp, #20]
d008402e:	4619      	mov	r1, r3
d0084030:	f04f 0c0a 	mov.w	ip, #10
d0084034:	4620      	mov	r0, r4
d0084036:	f810 2b01 	ldrb.w	r2, [r0], #1
d008403a:	3a30      	subs	r2, #48	; 0x30
d008403c:	2a09      	cmp	r2, #9
d008403e:	d903      	bls.n	d0084048 <_svfiprintf_r+0x1a8>
d0084040:	2b00      	cmp	r3, #0
d0084042:	d0c5      	beq.n	d0083fd0 <_svfiprintf_r+0x130>
d0084044:	9105      	str	r1, [sp, #20]
d0084046:	e7c3      	b.n	d0083fd0 <_svfiprintf_r+0x130>
d0084048:	fb0c 2101 	mla	r1, ip, r1, r2
d008404c:	4604      	mov	r4, r0
d008404e:	2301      	movs	r3, #1
d0084050:	e7f0      	b.n	d0084034 <_svfiprintf_r+0x194>
d0084052:	ab03      	add	r3, sp, #12
d0084054:	9300      	str	r3, [sp, #0]
d0084056:	462a      	mov	r2, r5
d0084058:	4b0f      	ldr	r3, [pc, #60]	; (d0084098 <_svfiprintf_r+0x1f8>)
d008405a:	a904      	add	r1, sp, #16
d008405c:	4638      	mov	r0, r7
d008405e:	f3af 8000 	nop.w
d0084062:	1c42      	adds	r2, r0, #1
d0084064:	4606      	mov	r6, r0
d0084066:	d1d6      	bne.n	d0084016 <_svfiprintf_r+0x176>
d0084068:	89ab      	ldrh	r3, [r5, #12]
d008406a:	065b      	lsls	r3, r3, #25
d008406c:	f53f af2c 	bmi.w	d0083ec8 <_svfiprintf_r+0x28>
d0084070:	9809      	ldr	r0, [sp, #36]	; 0x24
d0084072:	b01d      	add	sp, #116	; 0x74
d0084074:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0084078:	ab03      	add	r3, sp, #12
d008407a:	9300      	str	r3, [sp, #0]
d008407c:	462a      	mov	r2, r5
d008407e:	4b06      	ldr	r3, [pc, #24]	; (d0084098 <_svfiprintf_r+0x1f8>)
d0084080:	a904      	add	r1, sp, #16
d0084082:	4638      	mov	r0, r7
d0084084:	f000 f87a 	bl	d008417c <_printf_i>
d0084088:	e7eb      	b.n	d0084062 <_svfiprintf_r+0x1c2>
d008408a:	bf00      	nop
d008408c:	d008a654 	.word	0xd008a654
d0084090:	d008a65e 	.word	0xd008a65e
d0084094:	00000000 	.word	0x00000000
d0084098:	d0083de9 	.word	0xd0083de9
d008409c:	d008a65a 	.word	0xd008a65a

d00840a0 <_printf_common>:
d00840a0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00840a4:	4616      	mov	r6, r2
d00840a6:	4699      	mov	r9, r3
d00840a8:	688a      	ldr	r2, [r1, #8]
d00840aa:	690b      	ldr	r3, [r1, #16]
d00840ac:	f8dd 8020 	ldr.w	r8, [sp, #32]
d00840b0:	4293      	cmp	r3, r2
d00840b2:	bfb8      	it	lt
d00840b4:	4613      	movlt	r3, r2
d00840b6:	6033      	str	r3, [r6, #0]
d00840b8:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d00840bc:	4607      	mov	r7, r0
d00840be:	460c      	mov	r4, r1
d00840c0:	b10a      	cbz	r2, d00840c6 <_printf_common+0x26>
d00840c2:	3301      	adds	r3, #1
d00840c4:	6033      	str	r3, [r6, #0]
d00840c6:	6823      	ldr	r3, [r4, #0]
d00840c8:	0699      	lsls	r1, r3, #26
d00840ca:	bf42      	ittt	mi
d00840cc:	6833      	ldrmi	r3, [r6, #0]
d00840ce:	3302      	addmi	r3, #2
d00840d0:	6033      	strmi	r3, [r6, #0]
d00840d2:	6825      	ldr	r5, [r4, #0]
d00840d4:	f015 0506 	ands.w	r5, r5, #6
d00840d8:	d106      	bne.n	d00840e8 <_printf_common+0x48>
d00840da:	f104 0a19 	add.w	sl, r4, #25
d00840de:	68e3      	ldr	r3, [r4, #12]
d00840e0:	6832      	ldr	r2, [r6, #0]
d00840e2:	1a9b      	subs	r3, r3, r2
d00840e4:	42ab      	cmp	r3, r5
d00840e6:	dc26      	bgt.n	d0084136 <_printf_common+0x96>
d00840e8:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d00840ec:	1e13      	subs	r3, r2, #0
d00840ee:	6822      	ldr	r2, [r4, #0]
d00840f0:	bf18      	it	ne
d00840f2:	2301      	movne	r3, #1
d00840f4:	0692      	lsls	r2, r2, #26
d00840f6:	d42b      	bmi.n	d0084150 <_printf_common+0xb0>
d00840f8:	f104 0243 	add.w	r2, r4, #67	; 0x43
d00840fc:	4649      	mov	r1, r9
d00840fe:	4638      	mov	r0, r7
d0084100:	47c0      	blx	r8
d0084102:	3001      	adds	r0, #1
d0084104:	d01e      	beq.n	d0084144 <_printf_common+0xa4>
d0084106:	6823      	ldr	r3, [r4, #0]
d0084108:	68e5      	ldr	r5, [r4, #12]
d008410a:	6832      	ldr	r2, [r6, #0]
d008410c:	f003 0306 	and.w	r3, r3, #6
d0084110:	2b04      	cmp	r3, #4
d0084112:	bf08      	it	eq
d0084114:	1aad      	subeq	r5, r5, r2
d0084116:	68a3      	ldr	r3, [r4, #8]
d0084118:	6922      	ldr	r2, [r4, #16]
d008411a:	bf0c      	ite	eq
d008411c:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0084120:	2500      	movne	r5, #0
d0084122:	4293      	cmp	r3, r2
d0084124:	bfc4      	itt	gt
d0084126:	1a9b      	subgt	r3, r3, r2
d0084128:	18ed      	addgt	r5, r5, r3
d008412a:	2600      	movs	r6, #0
d008412c:	341a      	adds	r4, #26
d008412e:	42b5      	cmp	r5, r6
d0084130:	d11a      	bne.n	d0084168 <_printf_common+0xc8>
d0084132:	2000      	movs	r0, #0
d0084134:	e008      	b.n	d0084148 <_printf_common+0xa8>
d0084136:	2301      	movs	r3, #1
d0084138:	4652      	mov	r2, sl
d008413a:	4649      	mov	r1, r9
d008413c:	4638      	mov	r0, r7
d008413e:	47c0      	blx	r8
d0084140:	3001      	adds	r0, #1
d0084142:	d103      	bne.n	d008414c <_printf_common+0xac>
d0084144:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0084148:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d008414c:	3501      	adds	r5, #1
d008414e:	e7c6      	b.n	d00840de <_printf_common+0x3e>
d0084150:	18e1      	adds	r1, r4, r3
d0084152:	1c5a      	adds	r2, r3, #1
d0084154:	2030      	movs	r0, #48	; 0x30
d0084156:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d008415a:	4422      	add	r2, r4
d008415c:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0084160:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0084164:	3302      	adds	r3, #2
d0084166:	e7c7      	b.n	d00840f8 <_printf_common+0x58>
d0084168:	2301      	movs	r3, #1
d008416a:	4622      	mov	r2, r4
d008416c:	4649      	mov	r1, r9
d008416e:	4638      	mov	r0, r7
d0084170:	47c0      	blx	r8
d0084172:	3001      	adds	r0, #1
d0084174:	d0e6      	beq.n	d0084144 <_printf_common+0xa4>
d0084176:	3601      	adds	r6, #1
d0084178:	e7d9      	b.n	d008412e <_printf_common+0x8e>
	...

d008417c <_printf_i>:
d008417c:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0084180:	460c      	mov	r4, r1
d0084182:	4691      	mov	r9, r2
d0084184:	7e27      	ldrb	r7, [r4, #24]
d0084186:	990c      	ldr	r1, [sp, #48]	; 0x30
d0084188:	2f78      	cmp	r7, #120	; 0x78
d008418a:	4680      	mov	r8, r0
d008418c:	469a      	mov	sl, r3
d008418e:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0084192:	d807      	bhi.n	d00841a4 <_printf_i+0x28>
d0084194:	2f62      	cmp	r7, #98	; 0x62
d0084196:	d80a      	bhi.n	d00841ae <_printf_i+0x32>
d0084198:	2f00      	cmp	r7, #0
d008419a:	f000 80d8 	beq.w	d008434e <_printf_i+0x1d2>
d008419e:	2f58      	cmp	r7, #88	; 0x58
d00841a0:	f000 80a3 	beq.w	d00842ea <_printf_i+0x16e>
d00841a4:	f104 0642 	add.w	r6, r4, #66	; 0x42
d00841a8:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d00841ac:	e03a      	b.n	d0084224 <_printf_i+0xa8>
d00841ae:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d00841b2:	2b15      	cmp	r3, #21
d00841b4:	d8f6      	bhi.n	d00841a4 <_printf_i+0x28>
d00841b6:	a001      	add	r0, pc, #4	; (adr r0, d00841bc <_printf_i+0x40>)
d00841b8:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d00841bc:	d0084215 	.word	0xd0084215
d00841c0:	d0084229 	.word	0xd0084229
d00841c4:	d00841a5 	.word	0xd00841a5
d00841c8:	d00841a5 	.word	0xd00841a5
d00841cc:	d00841a5 	.word	0xd00841a5
d00841d0:	d00841a5 	.word	0xd00841a5
d00841d4:	d0084229 	.word	0xd0084229
d00841d8:	d00841a5 	.word	0xd00841a5
d00841dc:	d00841a5 	.word	0xd00841a5
d00841e0:	d00841a5 	.word	0xd00841a5
d00841e4:	d00841a5 	.word	0xd00841a5
d00841e8:	d0084335 	.word	0xd0084335
d00841ec:	d0084259 	.word	0xd0084259
d00841f0:	d0084317 	.word	0xd0084317
d00841f4:	d00841a5 	.word	0xd00841a5
d00841f8:	d00841a5 	.word	0xd00841a5
d00841fc:	d0084357 	.word	0xd0084357
d0084200:	d00841a5 	.word	0xd00841a5
d0084204:	d0084259 	.word	0xd0084259
d0084208:	d00841a5 	.word	0xd00841a5
d008420c:	d00841a5 	.word	0xd00841a5
d0084210:	d008431f 	.word	0xd008431f
d0084214:	680b      	ldr	r3, [r1, #0]
d0084216:	1d1a      	adds	r2, r3, #4
d0084218:	681b      	ldr	r3, [r3, #0]
d008421a:	600a      	str	r2, [r1, #0]
d008421c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0084220:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0084224:	2301      	movs	r3, #1
d0084226:	e0a3      	b.n	d0084370 <_printf_i+0x1f4>
d0084228:	6825      	ldr	r5, [r4, #0]
d008422a:	6808      	ldr	r0, [r1, #0]
d008422c:	062e      	lsls	r6, r5, #24
d008422e:	f100 0304 	add.w	r3, r0, #4
d0084232:	d50a      	bpl.n	d008424a <_printf_i+0xce>
d0084234:	6805      	ldr	r5, [r0, #0]
d0084236:	600b      	str	r3, [r1, #0]
d0084238:	2d00      	cmp	r5, #0
d008423a:	da03      	bge.n	d0084244 <_printf_i+0xc8>
d008423c:	232d      	movs	r3, #45	; 0x2d
d008423e:	426d      	negs	r5, r5
d0084240:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0084244:	485e      	ldr	r0, [pc, #376]	; (d00843c0 <_printf_i+0x244>)
d0084246:	230a      	movs	r3, #10
d0084248:	e019      	b.n	d008427e <_printf_i+0x102>
d008424a:	f015 0f40 	tst.w	r5, #64	; 0x40
d008424e:	6805      	ldr	r5, [r0, #0]
d0084250:	600b      	str	r3, [r1, #0]
d0084252:	bf18      	it	ne
d0084254:	b22d      	sxthne	r5, r5
d0084256:	e7ef      	b.n	d0084238 <_printf_i+0xbc>
d0084258:	680b      	ldr	r3, [r1, #0]
d008425a:	6825      	ldr	r5, [r4, #0]
d008425c:	1d18      	adds	r0, r3, #4
d008425e:	6008      	str	r0, [r1, #0]
d0084260:	0628      	lsls	r0, r5, #24
d0084262:	d501      	bpl.n	d0084268 <_printf_i+0xec>
d0084264:	681d      	ldr	r5, [r3, #0]
d0084266:	e002      	b.n	d008426e <_printf_i+0xf2>
d0084268:	0669      	lsls	r1, r5, #25
d008426a:	d5fb      	bpl.n	d0084264 <_printf_i+0xe8>
d008426c:	881d      	ldrh	r5, [r3, #0]
d008426e:	4854      	ldr	r0, [pc, #336]	; (d00843c0 <_printf_i+0x244>)
d0084270:	2f6f      	cmp	r7, #111	; 0x6f
d0084272:	bf0c      	ite	eq
d0084274:	2308      	moveq	r3, #8
d0084276:	230a      	movne	r3, #10
d0084278:	2100      	movs	r1, #0
d008427a:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d008427e:	6866      	ldr	r6, [r4, #4]
d0084280:	60a6      	str	r6, [r4, #8]
d0084282:	2e00      	cmp	r6, #0
d0084284:	bfa2      	ittt	ge
d0084286:	6821      	ldrge	r1, [r4, #0]
d0084288:	f021 0104 	bicge.w	r1, r1, #4
d008428c:	6021      	strge	r1, [r4, #0]
d008428e:	b90d      	cbnz	r5, d0084294 <_printf_i+0x118>
d0084290:	2e00      	cmp	r6, #0
d0084292:	d04d      	beq.n	d0084330 <_printf_i+0x1b4>
d0084294:	4616      	mov	r6, r2
d0084296:	fbb5 f1f3 	udiv	r1, r5, r3
d008429a:	fb03 5711 	mls	r7, r3, r1, r5
d008429e:	5dc7      	ldrb	r7, [r0, r7]
d00842a0:	f806 7d01 	strb.w	r7, [r6, #-1]!
d00842a4:	462f      	mov	r7, r5
d00842a6:	42bb      	cmp	r3, r7
d00842a8:	460d      	mov	r5, r1
d00842aa:	d9f4      	bls.n	d0084296 <_printf_i+0x11a>
d00842ac:	2b08      	cmp	r3, #8
d00842ae:	d10b      	bne.n	d00842c8 <_printf_i+0x14c>
d00842b0:	6823      	ldr	r3, [r4, #0]
d00842b2:	07df      	lsls	r7, r3, #31
d00842b4:	d508      	bpl.n	d00842c8 <_printf_i+0x14c>
d00842b6:	6923      	ldr	r3, [r4, #16]
d00842b8:	6861      	ldr	r1, [r4, #4]
d00842ba:	4299      	cmp	r1, r3
d00842bc:	bfde      	ittt	le
d00842be:	2330      	movle	r3, #48	; 0x30
d00842c0:	f806 3c01 	strble.w	r3, [r6, #-1]
d00842c4:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d00842c8:	1b92      	subs	r2, r2, r6
d00842ca:	6122      	str	r2, [r4, #16]
d00842cc:	f8cd a000 	str.w	sl, [sp]
d00842d0:	464b      	mov	r3, r9
d00842d2:	aa03      	add	r2, sp, #12
d00842d4:	4621      	mov	r1, r4
d00842d6:	4640      	mov	r0, r8
d00842d8:	f7ff fee2 	bl	d00840a0 <_printf_common>
d00842dc:	3001      	adds	r0, #1
d00842de:	d14c      	bne.n	d008437a <_printf_i+0x1fe>
d00842e0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00842e4:	b004      	add	sp, #16
d00842e6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00842ea:	4835      	ldr	r0, [pc, #212]	; (d00843c0 <_printf_i+0x244>)
d00842ec:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d00842f0:	6823      	ldr	r3, [r4, #0]
d00842f2:	680e      	ldr	r6, [r1, #0]
d00842f4:	061f      	lsls	r7, r3, #24
d00842f6:	f856 5b04 	ldr.w	r5, [r6], #4
d00842fa:	600e      	str	r6, [r1, #0]
d00842fc:	d514      	bpl.n	d0084328 <_printf_i+0x1ac>
d00842fe:	07d9      	lsls	r1, r3, #31
d0084300:	bf44      	itt	mi
d0084302:	f043 0320 	orrmi.w	r3, r3, #32
d0084306:	6023      	strmi	r3, [r4, #0]
d0084308:	b91d      	cbnz	r5, d0084312 <_printf_i+0x196>
d008430a:	6823      	ldr	r3, [r4, #0]
d008430c:	f023 0320 	bic.w	r3, r3, #32
d0084310:	6023      	str	r3, [r4, #0]
d0084312:	2310      	movs	r3, #16
d0084314:	e7b0      	b.n	d0084278 <_printf_i+0xfc>
d0084316:	6823      	ldr	r3, [r4, #0]
d0084318:	f043 0320 	orr.w	r3, r3, #32
d008431c:	6023      	str	r3, [r4, #0]
d008431e:	2378      	movs	r3, #120	; 0x78
d0084320:	4828      	ldr	r0, [pc, #160]	; (d00843c4 <_printf_i+0x248>)
d0084322:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0084326:	e7e3      	b.n	d00842f0 <_printf_i+0x174>
d0084328:	065e      	lsls	r6, r3, #25
d008432a:	bf48      	it	mi
d008432c:	b2ad      	uxthmi	r5, r5
d008432e:	e7e6      	b.n	d00842fe <_printf_i+0x182>
d0084330:	4616      	mov	r6, r2
d0084332:	e7bb      	b.n	d00842ac <_printf_i+0x130>
d0084334:	680b      	ldr	r3, [r1, #0]
d0084336:	6826      	ldr	r6, [r4, #0]
d0084338:	6960      	ldr	r0, [r4, #20]
d008433a:	1d1d      	adds	r5, r3, #4
d008433c:	600d      	str	r5, [r1, #0]
d008433e:	0635      	lsls	r5, r6, #24
d0084340:	681b      	ldr	r3, [r3, #0]
d0084342:	d501      	bpl.n	d0084348 <_printf_i+0x1cc>
d0084344:	6018      	str	r0, [r3, #0]
d0084346:	e002      	b.n	d008434e <_printf_i+0x1d2>
d0084348:	0671      	lsls	r1, r6, #25
d008434a:	d5fb      	bpl.n	d0084344 <_printf_i+0x1c8>
d008434c:	8018      	strh	r0, [r3, #0]
d008434e:	2300      	movs	r3, #0
d0084350:	6123      	str	r3, [r4, #16]
d0084352:	4616      	mov	r6, r2
d0084354:	e7ba      	b.n	d00842cc <_printf_i+0x150>
d0084356:	680b      	ldr	r3, [r1, #0]
d0084358:	1d1a      	adds	r2, r3, #4
d008435a:	600a      	str	r2, [r1, #0]
d008435c:	681e      	ldr	r6, [r3, #0]
d008435e:	6862      	ldr	r2, [r4, #4]
d0084360:	2100      	movs	r1, #0
d0084362:	4630      	mov	r0, r6
d0084364:	f000 f8ac 	bl	d00844c0 <memchr>
d0084368:	b108      	cbz	r0, d008436e <_printf_i+0x1f2>
d008436a:	1b80      	subs	r0, r0, r6
d008436c:	6060      	str	r0, [r4, #4]
d008436e:	6863      	ldr	r3, [r4, #4]
d0084370:	6123      	str	r3, [r4, #16]
d0084372:	2300      	movs	r3, #0
d0084374:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0084378:	e7a8      	b.n	d00842cc <_printf_i+0x150>
d008437a:	6923      	ldr	r3, [r4, #16]
d008437c:	4632      	mov	r2, r6
d008437e:	4649      	mov	r1, r9
d0084380:	4640      	mov	r0, r8
d0084382:	47d0      	blx	sl
d0084384:	3001      	adds	r0, #1
d0084386:	d0ab      	beq.n	d00842e0 <_printf_i+0x164>
d0084388:	6823      	ldr	r3, [r4, #0]
d008438a:	079b      	lsls	r3, r3, #30
d008438c:	d413      	bmi.n	d00843b6 <_printf_i+0x23a>
d008438e:	68e0      	ldr	r0, [r4, #12]
d0084390:	9b03      	ldr	r3, [sp, #12]
d0084392:	4298      	cmp	r0, r3
d0084394:	bfb8      	it	lt
d0084396:	4618      	movlt	r0, r3
d0084398:	e7a4      	b.n	d00842e4 <_printf_i+0x168>
d008439a:	2301      	movs	r3, #1
d008439c:	4632      	mov	r2, r6
d008439e:	4649      	mov	r1, r9
d00843a0:	4640      	mov	r0, r8
d00843a2:	47d0      	blx	sl
d00843a4:	3001      	adds	r0, #1
d00843a6:	d09b      	beq.n	d00842e0 <_printf_i+0x164>
d00843a8:	3501      	adds	r5, #1
d00843aa:	68e3      	ldr	r3, [r4, #12]
d00843ac:	9903      	ldr	r1, [sp, #12]
d00843ae:	1a5b      	subs	r3, r3, r1
d00843b0:	42ab      	cmp	r3, r5
d00843b2:	dcf2      	bgt.n	d008439a <_printf_i+0x21e>
d00843b4:	e7eb      	b.n	d008438e <_printf_i+0x212>
d00843b6:	2500      	movs	r5, #0
d00843b8:	f104 0619 	add.w	r6, r4, #25
d00843bc:	e7f5      	b.n	d00843aa <_printf_i+0x22e>
d00843be:	bf00      	nop
d00843c0:	d008a665 	.word	0xd008a665
d00843c4:	d008a676 	.word	0xd008a676

d00843c8 <__sread>:
d00843c8:	b510      	push	{r4, lr}
d00843ca:	460c      	mov	r4, r1
d00843cc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00843d0:	f000 f914 	bl	d00845fc <_read_r>
d00843d4:	2800      	cmp	r0, #0
d00843d6:	bfab      	itete	ge
d00843d8:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d00843da:	89a3      	ldrhlt	r3, [r4, #12]
d00843dc:	181b      	addge	r3, r3, r0
d00843de:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d00843e2:	bfac      	ite	ge
d00843e4:	6563      	strge	r3, [r4, #84]	; 0x54
d00843e6:	81a3      	strhlt	r3, [r4, #12]
d00843e8:	bd10      	pop	{r4, pc}

d00843ea <__swrite>:
d00843ea:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00843ee:	461f      	mov	r7, r3
d00843f0:	898b      	ldrh	r3, [r1, #12]
d00843f2:	05db      	lsls	r3, r3, #23
d00843f4:	4605      	mov	r5, r0
d00843f6:	460c      	mov	r4, r1
d00843f8:	4616      	mov	r6, r2
d00843fa:	d505      	bpl.n	d0084408 <__swrite+0x1e>
d00843fc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0084400:	2302      	movs	r3, #2
d0084402:	2200      	movs	r2, #0
d0084404:	f000 f846 	bl	d0084494 <_lseek_r>
d0084408:	89a3      	ldrh	r3, [r4, #12]
d008440a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d008440e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0084412:	81a3      	strh	r3, [r4, #12]
d0084414:	4632      	mov	r2, r6
d0084416:	463b      	mov	r3, r7
d0084418:	4628      	mov	r0, r5
d008441a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d008441e:	f7fb be27 	b.w	d0080070 <_write_r>

d0084422 <__sseek>:
d0084422:	b510      	push	{r4, lr}
d0084424:	460c      	mov	r4, r1
d0084426:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d008442a:	f000 f833 	bl	d0084494 <_lseek_r>
d008442e:	1c43      	adds	r3, r0, #1
d0084430:	89a3      	ldrh	r3, [r4, #12]
d0084432:	bf15      	itete	ne
d0084434:	6560      	strne	r0, [r4, #84]	; 0x54
d0084436:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d008443a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d008443e:	81a3      	strheq	r3, [r4, #12]
d0084440:	bf18      	it	ne
d0084442:	81a3      	strhne	r3, [r4, #12]
d0084444:	bd10      	pop	{r4, pc}

d0084446 <__sclose>:
d0084446:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d008444a:	f000 b801 	b.w	d0084450 <_close_r>
	...

d0084450 <_close_r>:
d0084450:	b538      	push	{r3, r4, r5, lr}
d0084452:	4d06      	ldr	r5, [pc, #24]	; (d008446c <_close_r+0x1c>)
d0084454:	2300      	movs	r3, #0
d0084456:	4604      	mov	r4, r0
d0084458:	4608      	mov	r0, r1
d008445a:	602b      	str	r3, [r5, #0]
d008445c:	f7fb fe42 	bl	d00800e4 <_close>
d0084460:	1c43      	adds	r3, r0, #1
d0084462:	d102      	bne.n	d008446a <_close_r+0x1a>
d0084464:	682b      	ldr	r3, [r5, #0]
d0084466:	b103      	cbz	r3, d008446a <_close_r+0x1a>
d0084468:	6023      	str	r3, [r4, #0]
d008446a:	bd38      	pop	{r3, r4, r5, pc}
d008446c:	d008ab50 	.word	0xd008ab50

d0084470 <_fstat_r>:
d0084470:	b538      	push	{r3, r4, r5, lr}
d0084472:	4d07      	ldr	r5, [pc, #28]	; (d0084490 <_fstat_r+0x20>)
d0084474:	2300      	movs	r3, #0
d0084476:	4604      	mov	r4, r0
d0084478:	4608      	mov	r0, r1
d008447a:	4611      	mov	r1, r2
d008447c:	602b      	str	r3, [r5, #0]
d008447e:	f7fb fe35 	bl	d00800ec <_fstat>
d0084482:	1c43      	adds	r3, r0, #1
d0084484:	d102      	bne.n	d008448c <_fstat_r+0x1c>
d0084486:	682b      	ldr	r3, [r5, #0]
d0084488:	b103      	cbz	r3, d008448c <_fstat_r+0x1c>
d008448a:	6023      	str	r3, [r4, #0]
d008448c:	bd38      	pop	{r3, r4, r5, pc}
d008448e:	bf00      	nop
d0084490:	d008ab50 	.word	0xd008ab50

d0084494 <_lseek_r>:
d0084494:	b538      	push	{r3, r4, r5, lr}
d0084496:	4d07      	ldr	r5, [pc, #28]	; (d00844b4 <_lseek_r+0x20>)
d0084498:	4604      	mov	r4, r0
d008449a:	4608      	mov	r0, r1
d008449c:	4611      	mov	r1, r2
d008449e:	2200      	movs	r2, #0
d00844a0:	602a      	str	r2, [r5, #0]
d00844a2:	461a      	mov	r2, r3
d00844a4:	f7fb fe28 	bl	d00800f8 <_lseek>
d00844a8:	1c43      	adds	r3, r0, #1
d00844aa:	d102      	bne.n	d00844b2 <_lseek_r+0x1e>
d00844ac:	682b      	ldr	r3, [r5, #0]
d00844ae:	b103      	cbz	r3, d00844b2 <_lseek_r+0x1e>
d00844b0:	6023      	str	r3, [r4, #0]
d00844b2:	bd38      	pop	{r3, r4, r5, pc}
d00844b4:	d008ab50 	.word	0xd008ab50
	...

d00844c0 <memchr>:
d00844c0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00844c4:	2a10      	cmp	r2, #16
d00844c6:	db2b      	blt.n	d0084520 <memchr+0x60>
d00844c8:	f010 0f07 	tst.w	r0, #7
d00844cc:	d008      	beq.n	d00844e0 <memchr+0x20>
d00844ce:	f810 3b01 	ldrb.w	r3, [r0], #1
d00844d2:	3a01      	subs	r2, #1
d00844d4:	428b      	cmp	r3, r1
d00844d6:	d02d      	beq.n	d0084534 <memchr+0x74>
d00844d8:	f010 0f07 	tst.w	r0, #7
d00844dc:	b342      	cbz	r2, d0084530 <memchr+0x70>
d00844de:	d1f6      	bne.n	d00844ce <memchr+0xe>
d00844e0:	b4f0      	push	{r4, r5, r6, r7}
d00844e2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d00844e6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d00844ea:	f022 0407 	bic.w	r4, r2, #7
d00844ee:	f07f 0700 	mvns.w	r7, #0
d00844f2:	2300      	movs	r3, #0
d00844f4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d00844f8:	3c08      	subs	r4, #8
d00844fa:	ea85 0501 	eor.w	r5, r5, r1
d00844fe:	ea86 0601 	eor.w	r6, r6, r1
d0084502:	fa85 f547 	uadd8	r5, r5, r7
d0084506:	faa3 f587 	sel	r5, r3, r7
d008450a:	fa86 f647 	uadd8	r6, r6, r7
d008450e:	faa5 f687 	sel	r6, r5, r7
d0084512:	b98e      	cbnz	r6, d0084538 <memchr+0x78>
d0084514:	d1ee      	bne.n	d00844f4 <memchr+0x34>
d0084516:	bcf0      	pop	{r4, r5, r6, r7}
d0084518:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d008451c:	f002 0207 	and.w	r2, r2, #7
d0084520:	b132      	cbz	r2, d0084530 <memchr+0x70>
d0084522:	f810 3b01 	ldrb.w	r3, [r0], #1
d0084526:	3a01      	subs	r2, #1
d0084528:	ea83 0301 	eor.w	r3, r3, r1
d008452c:	b113      	cbz	r3, d0084534 <memchr+0x74>
d008452e:	d1f8      	bne.n	d0084522 <memchr+0x62>
d0084530:	2000      	movs	r0, #0
d0084532:	4770      	bx	lr
d0084534:	3801      	subs	r0, #1
d0084536:	4770      	bx	lr
d0084538:	2d00      	cmp	r5, #0
d008453a:	bf06      	itte	eq
d008453c:	4635      	moveq	r5, r6
d008453e:	3803      	subeq	r0, #3
d0084540:	3807      	subne	r0, #7
d0084542:	f015 0f01 	tst.w	r5, #1
d0084546:	d107      	bne.n	d0084558 <memchr+0x98>
d0084548:	3001      	adds	r0, #1
d008454a:	f415 7f80 	tst.w	r5, #256	; 0x100
d008454e:	bf02      	ittt	eq
d0084550:	3001      	addeq	r0, #1
d0084552:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0084556:	3001      	addeq	r0, #1
d0084558:	bcf0      	pop	{r4, r5, r6, r7}
d008455a:	3801      	subs	r0, #1
d008455c:	4770      	bx	lr
d008455e:	bf00      	nop

d0084560 <memcpy>:
d0084560:	440a      	add	r2, r1
d0084562:	4291      	cmp	r1, r2
d0084564:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0084568:	d100      	bne.n	d008456c <memcpy+0xc>
d008456a:	4770      	bx	lr
d008456c:	b510      	push	{r4, lr}
d008456e:	f811 4b01 	ldrb.w	r4, [r1], #1
d0084572:	f803 4f01 	strb.w	r4, [r3, #1]!
d0084576:	4291      	cmp	r1, r2
d0084578:	d1f9      	bne.n	d008456e <memcpy+0xe>
d008457a:	bd10      	pop	{r4, pc}

d008457c <memmove>:
d008457c:	4288      	cmp	r0, r1
d008457e:	b510      	push	{r4, lr}
d0084580:	eb01 0402 	add.w	r4, r1, r2
d0084584:	d902      	bls.n	d008458c <memmove+0x10>
d0084586:	4284      	cmp	r4, r0
d0084588:	4623      	mov	r3, r4
d008458a:	d807      	bhi.n	d008459c <memmove+0x20>
d008458c:	1e43      	subs	r3, r0, #1
d008458e:	42a1      	cmp	r1, r4
d0084590:	d008      	beq.n	d00845a4 <memmove+0x28>
d0084592:	f811 2b01 	ldrb.w	r2, [r1], #1
d0084596:	f803 2f01 	strb.w	r2, [r3, #1]!
d008459a:	e7f8      	b.n	d008458e <memmove+0x12>
d008459c:	4402      	add	r2, r0
d008459e:	4601      	mov	r1, r0
d00845a0:	428a      	cmp	r2, r1
d00845a2:	d100      	bne.n	d00845a6 <memmove+0x2a>
d00845a4:	bd10      	pop	{r4, pc}
d00845a6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d00845aa:	f802 4d01 	strb.w	r4, [r2, #-1]!
d00845ae:	e7f7      	b.n	d00845a0 <memmove+0x24>

d00845b0 <_realloc_r>:
d00845b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00845b2:	4607      	mov	r7, r0
d00845b4:	4614      	mov	r4, r2
d00845b6:	460e      	mov	r6, r1
d00845b8:	b921      	cbnz	r1, d00845c4 <_realloc_r+0x14>
d00845ba:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00845be:	4611      	mov	r1, r2
d00845c0:	f7ff b8cc 	b.w	d008375c <_malloc_r>
d00845c4:	b922      	cbnz	r2, d00845d0 <_realloc_r+0x20>
d00845c6:	f7ff f879 	bl	d00836bc <_free_r>
d00845ca:	4625      	mov	r5, r4
d00845cc:	4628      	mov	r0, r5
d00845ce:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00845d0:	f000 f826 	bl	d0084620 <_malloc_usable_size_r>
d00845d4:	42a0      	cmp	r0, r4
d00845d6:	d20f      	bcs.n	d00845f8 <_realloc_r+0x48>
d00845d8:	4621      	mov	r1, r4
d00845da:	4638      	mov	r0, r7
d00845dc:	f7ff f8be 	bl	d008375c <_malloc_r>
d00845e0:	4605      	mov	r5, r0
d00845e2:	2800      	cmp	r0, #0
d00845e4:	d0f2      	beq.n	d00845cc <_realloc_r+0x1c>
d00845e6:	4631      	mov	r1, r6
d00845e8:	4622      	mov	r2, r4
d00845ea:	f7ff ffb9 	bl	d0084560 <memcpy>
d00845ee:	4631      	mov	r1, r6
d00845f0:	4638      	mov	r0, r7
d00845f2:	f7ff f863 	bl	d00836bc <_free_r>
d00845f6:	e7e9      	b.n	d00845cc <_realloc_r+0x1c>
d00845f8:	4635      	mov	r5, r6
d00845fa:	e7e7      	b.n	d00845cc <_realloc_r+0x1c>

d00845fc <_read_r>:
d00845fc:	b538      	push	{r3, r4, r5, lr}
d00845fe:	4d07      	ldr	r5, [pc, #28]	; (d008461c <_read_r+0x20>)
d0084600:	4604      	mov	r4, r0
d0084602:	4608      	mov	r0, r1
d0084604:	4611      	mov	r1, r2
d0084606:	2200      	movs	r2, #0
d0084608:	602a      	str	r2, [r5, #0]
d008460a:	461a      	mov	r2, r3
d008460c:	f7fb fd60 	bl	d00800d0 <_read>
d0084610:	1c43      	adds	r3, r0, #1
d0084612:	d102      	bne.n	d008461a <_read_r+0x1e>
d0084614:	682b      	ldr	r3, [r5, #0]
d0084616:	b103      	cbz	r3, d008461a <_read_r+0x1e>
d0084618:	6023      	str	r3, [r4, #0]
d008461a:	bd38      	pop	{r3, r4, r5, pc}
d008461c:	d008ab50 	.word	0xd008ab50

d0084620 <_malloc_usable_size_r>:
d0084620:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0084624:	1f18      	subs	r0, r3, #4
d0084626:	2b00      	cmp	r3, #0
d0084628:	bfbc      	itt	lt
d008462a:	580b      	ldrlt	r3, [r1, r0]
d008462c:	18c0      	addlt	r0, r0, r3
d008462e:	4770      	bx	lr
	...

d0084640 <clut>:
d0084640:	0000 0000 afaf ffaf ffff ffff 67a2 ff3b     .............g;.
d0084650:	907c ffaa 9595 ff95 7b7b ff7b a997 ffff     |.......{{{.....
d0084660:	a91d ff37 a9ff ff7c 8112 ffbf bf66 ffeb     ..7...|.....f...
d0084670:	c178 ff78 9318 ff3d 3418 ffb3 311c ffd9     x.x...=..4...1..
d0084680:	0000 ff00 000e ff00 001d ff00 002b ff00     ............+...
d0084690:	0139 ff00 0147 ff00 0156 ff00 0164 ff00     9...G...V...d...
d00846a0:	01d2 ff00 01ff ff00 cece ffce ff00 ff00     ................
d00846b0:	ff00 ffb2 e700 ffff 9600 ffff 1100 ffff     ................
d00846c0:	1200 ff49 1355 ff49 14aa ff49 16ff ff49     ..I.U.I...I...I.
d00846d0:	1700 ff5b 1855 ff5b 19aa ff5b 1aff ff5b     ..[.U.[...[...[.
d00846e0:	1b00 ff6d 1c55 ff6d e300 ff00 ff54 ff85     ..m.U.m.....T...
d00846f0:	ff00 ffc4 d900 ffff a41f ffff 5400 ffe0     .............T..
d0084700:	0000 ffff 2655 ff92 27aa ff92 28ff ff92     ....U&...'...(..
d0084710:	2900 ffa4 2a55 ffa4 2baa ffa4 2cff ffa4     .)..U*...+...,..
d0084720:	2d00 ffb6 2f55 ffb6 30aa ffb6 31ff ffb6     .-..U/...0...1..
d0084730:	3200 ffc9 3355 ffc9 34aa ffc9 35ff ffc9     .2..U3...4...5..
d0084740:	3700 ffdb 3855 ffdb 39aa ffdb 3aff ffdb     .7..U8...9...:..
d0084750:	3b00 ffed 3c55 ffed 3daa ffed 3fff ffed     .;..U<...=...?..
d0084760:	4000 ffff 4155 ffff 42aa ffff 43ff ffff     .@..UA...B...C..
d0084770:	4400 ff00 4555 ff00 46aa ff00 48ff ff00     .D..UE...F...H..
d0084780:	ff00 ffff ff55 ff12 ee55 ff12 b6ff ff12     ....U...U.......
d0084790:	1fff ff00 0ec7 ff9d 0000 fff1 7700 ffff     .............w..
d00847a0:	5200 ff37 5355 ff37 54aa ff37 55ff ff37     .R7.US7..T7..U7.
d00847b0:	5600 ff49 5855 ff49 59aa ff49 5aff ff49     .VI.UXI..YI..ZI.
d00847c0:	5b00 ff5b 5c55 ff5b 5daa ff5b 5eff ff5b     .[[.U\[..][..^[.
d00847d0:	6000 ff6d 6155 ff6d 62aa ff6d 63ff ff6d     .`m.Uam..bm..cm.
d00847e0:	6400 ff6d 6555 ff80 66aa ff80 67ff ff80     .dm.Ue...f...g..
d00847f0:	6900 ff92 6a55 ff92 6baa ff92 6cff ff92     .i..Uj...k...l..
d0084800:	6d00 ffa4 6e55 ffa4 6faa ffa4 71ff ffa4     .m..Un...o...q..
d0084810:	7200 ffb6 7355 ffb6 74aa ffb6 75ff ffb6     .r..Us...t...u..
d0084820:	7600 ffc9 7755 ffc9 79aa ffc9 7aff ffc9     .v..Uw...y...z..
d0084830:	7b00 ffdb 7c55 ffdb 7daa ffdb 7eff ffdb     .{..U|...}...~..
d0084840:	7f00 ffed 8055 ffed 82aa ffed 83ff ffed     ....U...........
d0084850:	8400 ffff 8555 ffff 86aa ffff 87ff ffff     ....U...........
d0084860:	8800 ff00 8a55 ff00 8baa ff00 8cff ff00     ....U...........
d0084870:	8d00 ff12 8e55 ff12 8faa ff12 90ff ff12     ....U...........
d0084880:	9200 ff24 9355 ff24 94aa ff24 95ff ff24     ..$.U.$...$...$.
d0084890:	9600 ff37 9755 ff37 98aa ff37 99ff ff37     ..7.U.7...7...7.
d00848a0:	9b00 ff49 9c55 ff49 9daa ff49 9eff ff49     ..I.U.I...I...I.
d00848b0:	9f00 ff5b a055 ff5b a1aa ff5b a3ff ff5b     ..[.U.[...[...[.
d00848c0:	b5d5 ffa4 b0f8 ffa0 a3e6 ff94 89c1 ff7c     ..............|.
d00848d0:	81c0 ff62 62a1 ff1c 54ea ff42 a1bd ff62     ..b..b...TB...b.
d00848e0:	93c0 ff70 77a1 ff49 3faa ff00 54ff ff15     ..p..wI..?...T..
d00848f0:	50b9 ff1c b3ff ff00 88aa ff00 b5ff ff00     .P..............
d0084900:	62ff ff0e b7e3 ff5e c0b9 ffbd b9ff ff85     .b....^.........
d0084910:	6caf ff00 81b9 ff1f 5baa ff3f beff ffc9     .l.......[?.....
d0084920:	afcb ff5b c055 ffdb c1aa ffdb c0c0 ffbd     ..[.U...........
d0084930:	c400 ffed c555 ffed c6aa ffed c7ff ffed     ....U...........
d0084940:	c800 ffff c955 ffff caaa ffff ccff ffff     ....U...........
d0084950:	cd00 ff00 ce55 ff00 cfaa ff00 d0ff ff00     ....U...........
d0084960:	d100 ff12 d255 ff12 d3aa ff12 d5ff ff12     ....U...........
d0084970:	d600 ff24 d755 ff24 d8aa ff24 d9ff ff24     ..$.U.$...$...$.
d0084980:	da00 ff37 db55 ff37 ddaa ff37 deff ff37     ..7.U.7...7...7.
d0084990:	df00 ff49 e055 ff49 e1aa ff49 e2ff ff49     ..I.U.I...I...I.
d00849a0:	e300 ff5b e555 ff5b e6aa ff5b e7ff ff5b     ..[.U.[...[...[.
d00849b0:	e800 ff6d e955 ff6d eaaa ff6d ebff ff6d     ..m.U.m...m...m.
d00849c0:	58ec ff04 22ac ff04 77ff ff00 54ee ff00     .X..."...w...T..
d00849d0:	33dd ff00 0000 ff99 0000 ffff 6600 ffff     .3...........f..
d00849e0:	dd00 ffff f755 ffa4 f8aa ffa4 f9ff ffa4     ....U...........
d00849f0:	fa00 ffb6 fb55 ffb6 fcaa ffb6 feff ffb6     ....U...........
d0084a00:	00ff ffff 0000 ff00 1313 ff13 2727 ff27     ............'''.
d0084a10:	3a3a ff3a 4e4e ff4e 6262 ff62 7575 ff75     :::.NNN.bbb.uuu.
d0084a20:	8989 ff89 9c9c ff9c b0b0 ffb0 c4c4 ffc4     ................
d0084a30:	d7d7 ffd7 ebeb ffeb ffff ffff ffff ffff     ................

d0084a40 <projx_spacestation>:
	...
d0084a7c:	f500 f9f8 f5f9 f5f5 f5f5 f8f8 f7f7 f7f7     ................
d0084a8c:	f6f7 f5f6 f5f5 0000 0000 0000 0000 0000     ................
	...
d0084b20:	f600 f5f5 f5f9 f7f4 f7f7 f3f4 f5f5 f4f4     ................
d0084b30:	f5f4 f6f4 f5f6 f5f5 0000 0000 0000 0000     ................
	...
d0084bc4:	f5f4 f3f6 f9f4 f4f5 f6f7 f3f6 f5f3 f4f4     ................
d0084bd4:	f4f4 f5f4 f6f5 f5f6 f5f5 f5f5 00f4 0000     ................
	...
d0084c68:	f500 f5f8 f4f4 f5fa f6f4 f6f6 f3f3 f5f5     ................
d0084c78:	f4f4 f6f5 f6f7 f6f6 f4f6 f4f4 f5f4 00f4     ................
	...
d0084d0c:	f200 f8f8 f4f5 faf4 f4f5 f6f6 f4f6 f7f4     ................
d0084d1c:	f8f7 f7f7 f6f7 f5f5 f5f6 f4f6 f4f4 f4f4     ................
d0084d2c:	00f4 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0084db0:	f200 f8f4 f6f5 f5f4 f5fa f9f5 f8f9 f5f5     ................
d0084dc0:	f8f8 f6f7 f4f5 f5f4 f5f5 f5f5 f4f6 f4f4     ................
d0084dd0:	f5f4 00fb 0000 0000 0000 0000 0000 0000     ................
	...
d0084e54:	0000 f3f4 f4f3 f4f4 fafa f4f7 f4f4 f3f3     ................
d0084e64:	f8f5 f5f7 f4f4 f4f4 f5f4 f5f5 f5f6 f4f6     ................
d0084e74:	f4f4 f4f5 00f4 0000 0000 0000 0000 0000     ................
	...
d0084ef8:	0000 f5f4 f5f5 f7f6 faf8 f7fa f6f6 f5f6     ................
d0084f08:	f5f5 f8f7 f5f4 f4f4 f5f4 f5f4 f5f5 f5f6     ................
d0084f18:	f5f6 f5f5 f4f5 0000 0000 0000 0000 0000     ................
	...
d0084f9c:	0000 f300 f3f3 f6f6 f8f5 f7f7 f6f5 f6f6     ................
d0084fac:	f3f3 f6f3 f8f5 f2f2 f2f2 f3f2 f6f3 f3f6     ................
d0084fbc:	f3f4 f3f4 f3f3 00f3 0000 0000 0000 0000     ................
	...
d0085044:	f4f5 f4f4 f5f5 f7f7 f5f5 f4f4 f3f4 f3f3     ................
d0085054:	f5f3 f3f5 f3f3 f5f5 f4f5 f2f3 f1f2 f3f4     ................
d0085064:	f3f4 f3f3 0000 0000 0000 0000 0000 0000     ................
	...
d00850e8:	f5f4 f6f5 f5f5 f7f5 f5f7 f4f5 f4f4 f3f3     ................
d00850f8:	f3f3 f5f4 f5f5 f4f4 f2f2 f2f2 f3f3 f3f4     ................
d0085108:	f3f3 00f3 0000 0000 0000 0000 0000 0000     ................
	...
d008518c:	f300 f5f5 f6f6 f7f7 f7f7 f4f5 f4f4 f5f6     ................
d008519c:	f5f5 f5f5 f5f5 f2f2 f4f2 f4f4 f4f5 f3f4     ................
d00851ac:	f3f3 f3f3 f5f3 0000 0000 0000 0000 0000     ................
	...
d0085230:	0000 f4f3 f6f5 f7f6 f7f7 f5f5 f4f4 f6f4     ................
d0085240:	f5f5 f5f5 f5f5 f5f5 f5f5 f4f5 f4f4 f3f3     ................
d0085250:	f3f3 f4f3 f5f5 0000 0000 0000 0000 0000     ................
	...
d00852d4:	0000 f300 f4f5 f5f5 f6f6 f5f7 f4f5 f4f4     ................
d00852e4:	f5f5 f5f5 f5f5 f5f5 f4f5 f3f4 f3f3 f3f3     ................
d00852f4:	f3f2 f5f4 f2f5 0000 0000 0000 0000 0000     ................
	...
d008537c:	f300 f4f5 f4f4 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d008538c:	f5f5 f4f5 f3f4 f3f3 f3f3 f4f2 f5f4 f5f5     ................
d008539c:	f2f2 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0085424:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f4f5 f4f4     ................
d0085434:	f3f3 f4f2 f2f3 f5f4 f5f5 f2f2 0000 0000     ................
	...
d00854c8:	0000 f300 f5f5 f5f5 f5f5 f6f5 f2f8 f2f2     ................
d00854d8:	f2f2 f5f4 f5f5 f5f5 f3f3 00f1 0000 0000     ................
	...
d0085578:	f2f4 f5f2 f2f5 f4f4 f4f9 f4f6 f2f1 f4f2     ................
d0085588:	f3f3 0000 0000 0000 0000 0000 0000 0000     ................
	...
d008561c:	f500 f2f4 f5f7 f2f1 f4f3 f2f1 f2f2 f4f3     ................
d008562c:	f4f4 f3f3 0000 0000 0000 0000 0000 0000     ................
	...
d00856c0:	00f3 f200 f5f2 f5f5 f4f5 f3f4 f3f3 f4f4     ................
d00856d0:	f3f4 f3f4 f3f3 0000 0000 0000 0000 0000     ................
	...
d0085760:	0000 f300 f5f4 f4f5 f4f4 f4f4 f4f4 f4f5     ................
d0085770:	f4f4 f4f4 f4f4 f4f5 f3f4 f3f3 0000 0000     ................
	...
d0085804:	0000 f300 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d0085814:	f5f5 f5f5 f5f5 f5f5 f4f5 f3f4 00f3 0000     ................
	...
d00858ac:	f5f4 f6f5 f7f6 f9f8 f9f9 f9f9 f7f9 f7f7     ................
d00858bc:	f6f6 f5f5 f5f5 f4f4 f3f3 0000 0000 0000     ................
	...
d0085950:	f4f3 f5f5 f6f6 f8f7 f9f9 f9f9 f7f9 f6f7     ................
d0085960:	f5f6 f5f5 f5f5 f4f5 f3f4 00f3 0000 0000     ................
	...
d00859f4:	0000 f5f4 f5f5 f6f6 f7f7 f8f8 f7f7 f6f7     ................
d0085a04:	f6f6 f5f5 f5f5 f4f5 f3f4 0000 0000 0000     ................
	...
d0085a98:	0000 f300 f5f4 f5f5 f6f6 f6f6 f6f6 f6f6     ................
d0085aa8:	f5f6 f5f5 f5f5 f4f5 f2f4 00f5 0000 0000     ................
	...
d0085b40:	0000 f4f3 f5f4 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d0085b50:	f5f5 f2f5 f2f5 f3f2 0000 0000 0000 0000     ................
	...
d0085be8:	0000 f3f3 f2f3 f2f2 f3f3 f3f5 f1f5 f2f1     ................
d0085bf8:	f3f2 f3f3 f3f3 0000 0000 0000 0000 0000     ................
	...
d0085c8c:	0000 f3f3 f3f2 f2f2 f2f2 f4f3 f4f4 f2f2     ................
d0085c9c:	f3f3 f3f4 f3f3 00f3 0000 0000 0000 0000     ................
	...
d0085d30:	0000 f500 f4f5 f2f4 f2f2 f4f3 f5f6 f3f4     ................
d0085d40:	f3f2 f3f3 f3f4 f3f3 00f3 0000 0000 0000     ................
	...
d0085d5c:	f200 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2     ................
d0085d6c:	f2f2 f2f2 f2f2 f2f2 00f2 0000 0000 0000     ................
	...
d0085dd4:	0000 f300 f5f5 f3f5 f2f2 f3f2 f6f5 f4f5     ................
d0085de4:	f2f3 f3f3 f5f4 f3f7 f3f3 f1f3 f2f1 f2f2     ................
d0085df4:	f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2     ................
d0085e04:	f2f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d0085e14:	f5f2 f3f3 f3f3 f2f2 f2f2 f2f2 0000 0000     ................
	...
d0085e7c:	f5f3 f5f5 f2f3 f2f2 f4f4 f5f6 f4f4 f3f2     ................
d0085e8c:	f5f3 f5f5 f3f5 f3f3 f1f2 f3f1 f3f3 f3f3     ................
d0085e9c:	f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d0085eac:	f3f3 f3f3 f3f3 f3f3 f3f3 f2f3 f5f3 f3f3     ................
d0085ebc:	f3f3 f3f3 f3f3 f3f3 f2f3 f2f2 00f2 0000     ................
	...
d0085f20:	f400 f5f5 f3f5 f2f2 f3f2 f6f4 f4f6 f2f2     ................
d0085f30:	f4f3 f5f5 f7f5 f3f3 f3f3 f2f2 f2f1 f3f3     ................
d0085f40:	f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d0085f50:	f3f3 f3f3 f3f3 f3f3 f3f3 f2f3 f3f5 f3f3     ................
d0085f60:	f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f2f2     ................
d0085f70:	00f2 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0085fc4:	0000 f5f5 f4f5 f2f3 f1f2 f2f2 f5f4 f4f3     ................
d0085fd4:	f3f2 f5f5 f5f5 f7f5 f3f3 f3f3 f2f2 f2f1     ................
d0085fe4:	f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f2f3     ................
d0085ff4:	f2f2 f4f2 f4f4 f5f4 f5f5 f5f5 f5f5 f5f5     ................
d0086004:	f6f5 f5f5 f4f4 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d0086014:	f2f3 f1f1 f1f1 0000 0000 0000 0000 0000     ................
	...
d0086068:	0000 f5f3 f5f5 f2f3 f2f2 f2f2 f5f4 f5f6     ................
d0086078:	f2f2 f5f3 f5f5 f5f5 f5f9 f3f3 f2f3 f2f2     ................
d0086088:	f1f1 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f3f4     ................
d0086098:	f4f2 f1f5 f4f2 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d00860a8:	f5f5 f5f5 f5f5 f5f5 f4f4 f3f3 f3f3 f3f3     ................
d00860b8:	f3f3 f3f3 f1f2 f1f1 f1f1 00f1 0000 0000     ................
	...
d008610c:	0000 f300 f5f5 f3f5 f2f3 f2f2 f2f1 f5f3     ................
d008611c:	f3f5 f3f4 f5f4 f5f5 f5f5 f3f9 f3f3 f2f3     ................
d008612c:	f2f2 f1f1 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d008613c:	f6f2 f5f6 f2f2 f4f5 f5f5 f5f5 f5f5 f5f5     ................
d008614c:	f5f5 f5f5 f5f5 f5f5 f5f5 f4f4 f3f3 f3f3     ................
d008615c:	f3f3 f3f3 f3f3 f1f2 f1f1 f1f1 f1f1 00f1     ................
	...
d00861b0:	0000 f100 f5f4 f5f5 f2f3 f2f2 f2f2 f4f4     ................
d00861c0:	f6f6 f4f5 f2f1 f5f3 f5f5 f9f5 f3f6 f3f3     ................
d00861d0:	f2f3 f2f2 f2f1 f4f4 f4f4 f4f4 f4f4 f2f4     ................
d00861e0:	f3f2 f2f4 f5f4 f3f3 f5f5 f5f5 f5f5 f5f5     ................
d00861f0:	f5f5 f5f5 f5f5 f5f5 f5f5 f6f5 f4f5 f3f3     ................
d0086200:	f3f4 f3f3 f3f3 f3f3 f1f2 f1f1 f1f1 f1f1     ................
d0086210:	f2f1 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0086250:	0000 f300 f3f3 f3f3 f5f2 f5f5 f3f4 f2f3     ................
d0086260:	f2f2 f2f1 f5f4 f5f6 f5f4 f3f5 f5f3 f5f5     ................
d0086270:	f9f5 f3f5 f3f3 f2f3 f2f2 f3f1 f4f4 f4f4     ................
d0086280:	f4f4 f2f4 f5f4 f4f4 f3f5 f3f2 f3f3 f4f5     ................
d0086290:	f3f3 f3f3 f3f4 f4f4 f4f4 f5f5 f5f5 f6f5     ................
d00862a0:	f6f5 f4f5 f3f4 f4f3 f3f3 f3f4 f4f3 f1f2     ................
d00862b0:	f1f1 f1f1 f1f1 f1f1 00f1 0000 0000 0000     ................
	...
d00862f4:	f300 f3f3 f4f4 f4f4 f2f2 f6f5 f3f5 f2f3     ................
d0086304:	f2f2 f5f2 f5f3 f5f5 f5f4 f6f6 f1f6 f5f3     ................
d0086314:	f5f5 f9f6 f3f3 f3f3 f2f2 f2f2 f4f1 f4f4     ................
d0086324:	f5f4 f2f2 f5f2 f5f3 f3f6 f3f2 f3f3 f4f3     ................
d0086334:	f6f6 f6f6 f7f6 f6f7 f6f7 f5f7 f4f4 f5f5     ................
d0086344:	f6f5 f6f5 f4f4 f4f3 f3f3 f3f4 f4f3 f2f3     ................
d0086354:	f1f1 f1f1 f1f1 f1f1 f1f1 f1f1 0000 0000     ................
	...
d0086394:	0000 f300 f4f3 f4f4 f4f4 f4f4 f2f2 f5f3     ................
d00863a4:	f5f6 f3f3 f2f3 f5f2 f5f5 f5f5 f5f5 f7f6     ................
d00863b4:	f6f6 f1f1 f5f4 f5f5 f5f9 f3f3 f3f3 f2f2     ................
d00863c4:	f1f2 f4f1 f4f4 f3f3 f2f2 f4f5 f2f3 f3f2     ................
d00863d4:	f1f2 f2f2 f1f2 f1f2 f1f1 f1f1 f1f1 f4f2     ................
d00863e4:	f7f5 f5f5 f5f4 f6f5 f6f5 f4f5 f3f3 f3f4     ................
d00863f4:	f4f3 f3f3 f1f3 f1f1 f1f1 f1f1 f1f1 f1f1     ................
d0086404:	f2f1 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0086438:	f4f3 f4f4 f4f4 f4f2 f4f4 f3f4 f2f3 f4f2     ................
d0086448:	f6f5 f3f5 f2f3 f5f2 f5f5 f5f5 f5f5 f6f6     ................
d0086458:	f6f6 f4f6 f1f1 f5f4 f5f5 f3f9 f3f3 f3f3     ................
d0086468:	f2f2 f1f2 f2f5 f5f3 f3f5 f5f3 f2f2 f5f2     ................
d0086478:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f2f2     ................
d0086488:	f1f1 f2f1 f7f5 f5f5 f6f4 f5f6 f3f3 f3f4     ................
d0086498:	f4f3 f3f3 f2f4 f2f2 f1f2 f1f1 f1f1 f1f1     ................
d00864a8:	f1f1 f1f1 0000 0000 0000 0000 0000 0000     ................
	...
d00864d8:	0000 f4f3 f4f4 f4f4 f4f4 f4f4 f4f3 f3f3     ................
d00864e8:	f3f3 f3f2 f6f5 f4f5 f2f3 f5f3 f5f5 f5f5     ................
d00864f8:	f6f5 f7f7 f6f6 f1f6 f1f1 f1f1 f5f1 f5f5     ................
d0086508:	f3f6 f3f3 f2f3 f2f2 f2f1 f5f3 f5f7 f3f5     ................
d0086518:	f2f2 f5f5 0000 0000 0000 0000 0000 0000     ................
d0086528:	0000 f500 f5f5 f5f5 f2f2 f7f2 f6f7 f6f4     ................
d0086538:	f3f6 f3f4 f4f3 f3f3 f3f4 f1f2 f1f2 f2f2     ................
d0086548:	f1f1 f1f1 f1f1 f1f1 00f1 0000 0000 0000     ................
	...
d008657c:	f400 f4f4 f4f4 f4f4 f3f4 f3f4 f3f3 f3f3     ................
d008658c:	f3f3 f2f2 f5f3 f5f6 f3f3 f4f3 f5f5 f5f5     ................
d008659c:	f7f5 f7f8 f7f8 f1f5 f1f1 f1f1 f1f1 f5f4     ................
d00865ac:	f5f5 f3f5 f3f3 f2f3 f2f2 f3f2 f5f5 f5f7     ................
d00865bc:	f5f3 f5f5 0000 0000 0000 0000 0000 0000     ................
	...
d00865d4:	f500 f5f5 f4f1 f6f5 f5f4 f3f4 f4f3 f3f3     ................
d00865e4:	f3f4 f2f3 f1f2 f1f2 f2f1 f1f2 f1f1 f1f1     ................
d00865f4:	f1f1 00f2 0000 0000 0000 0000 0000 0000     ................
	...
d008661c:	0000 f300 f4f3 f4f4 f4f3 f2f3 f3f3 f3f3     ................
d008662c:	f3f3 f3f3 f3f3 f2f3 f4f2 f6f5 f3f5 f3f3     ................
d008663c:	f5f5 f5f5 f7f5 f8f9 f8f8 f1f7 f1f1 f1f1     ................
d008664c:	f1f1 f1f1 f5f4 f5f5 f3f3 f3f3 f2f2 f1f2     ................
d008665c:	f3f2 f5f5 f2f3 f4f2 0000 0000 0000 0000     ................
	...
d008667c:	f500 f1f5 f7f5 f3f5 f4f3 f3f3 f3f4 f2f3     ................
d008668c:	f2f2 f2f2 f1f2 f1f1 f1f1 f1f1 f1f2 f2f2     ................
	...
d00866c0:	0000 f4f3 f4f4 f2f4 f2f3 f2f3 f3f3 f3f2     ................
d00866d0:	f3f3 f3f3 f3f3 f3f3 f2f2 f5f5 f4f6 f3f3     ................
d00866e0:	f5f4 f5f5 f2f3 f9f9 f8f8 f1f1 f1f1 f1f1     ................
d00866f0:	f1f1 f2f2 f1f1 f5f5 f5f5 f3f3 f3f3 f2f2     ................
d0086700:	f2f1 f3f2 f2f3 f3f2 0000 0000 0000 0000     ................
d0086710:	0000 f2f2 00f2 0000 0000 0000 0000 0000     ................
d0086720:	0000 0000 f2f1 f4f8 f3f4 f3f4 f3f4 f2f4     ................
d0086730:	f2f2 f2f2 f2f2 f1f2 f1f1 f1f1 f1f2 f1f2     ................
d0086740:	00f2 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0086764:	f4f3 f4f4 f4f4 f2f3 f2f3 f2f3 f3f3 f3f2     ................
d0086774:	f3f3 f3f3 f3f3 f3f3 f2f3 f5f2 f5f6 f3f3     ................
d0086784:	f5f3 f5f5 f6f5 f2f8 f8f8 f1f1 f1f1 f1f1     ................
d0086794:	f1f1 f4f2 f1f1 f4f1 f5f5 f3f5 f3f3 f2f5     ................
d00867a4:	f2f2 f5f1 f2f2 f5f2 0000 0000 0000 0000     ................
d00867b4:	0000 f300 f3f3 0000 0000 0000 0000 0000     ................
d00867c4:	0000 0000 f500 f3f1 f3f4 f3f4 f3f4 f3f4     ................
d00867d4:	f2f2 f2f2 f2f2 f1f2 f1f1 f1f1 f1f1 f2f2     ................
d00867e4:	f2f2 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0086804:	0000 f4f3 f4f4 f4f4 f2f3 f2f2 f2f3 f2f3     ................
d0086814:	f3f3 f3f2 f3f3 f3f3 f3f3 f3f3 f3f3 f2f2     ................
d0086824:	f6f5 f3f5 f4f3 f5f5 f6f5 f7f6 f1f8 f1f1     ................
d0086834:	f1f1 f1f1 f1f1 f2f4 f1f1 f2f1 f4f1 f5f5     ................
d0086844:	f5f5 f4f5 f2f3 f1f2 f5f2 00f5 0000 0000     ................
d0086854:	0000 0000 0000 f300 f5f5 f3f5 0000 f1f2     ................
d0086864:	f1f1 f1f1 f1f1 f1f1 f3f2 f3f4 f3f4 f3f4     ................
d0086874:	f3f4 f3f4 f2f2 f2f2 f2f2 f2f2 f1f1 f1f1     ................
d0086884:	f1f1 f2f2 f2f1 00f2 0000 0000 0000 0000     ................
	...
d00868a8:	f400 f4f4 f4f4 f3f4 f2f2 f2f2 f2f3 f2f3     ................
d00868b8:	f2f3 f3f2 f2f3 f3f3 f4f3 f5f4 f5f5 f5f4     ................
d00868c8:	f7f4 f5f5 f3f3 f8f4 f6f5 f6f9 f7f9 f1f7     ................
d00868d8:	f1f1 f1f1 f1f1 f1f1 f1f1 f1f1 f1f1 f5f3     ................
d00868e8:	f5f5 f4f5 f2f2 f5f5 f5f4 f3f5 f5f3 f5f6     ................
d00868f8:	f4f4 f5f4 f4f3 f4f4 f7f5 f5f7 f3f5 f2f3     ................
d0086908:	f4f2 f4f4 f6f4 f4f6 f2f3 f3f4 f3f4 f3f4     ................
d0086918:	f3f4 f3f4 f2f2 f2f2 f2f2 f2f2 f1f1 f1f1     ................
d0086928:	f1f1 f2f2 f2f2 f2f2 0000 0000 0000 0000     ................
	...
d008694c:	f4f3 f2f4 f4f4 f2f2 f2f2 f2f2 f2f2 f2f2     ................
d008695c:	f2f2 f2f2 f2f2 f2f2 f5f4 f5f5 f5f5 f5f5     ................
d008696c:	f5f5 f5f7 f3f4 f5f3 f5f5 f7f6 f7f5 f7f6     ................
d008697c:	f1f1 f1f1 f4f4 f1f1 f1f1 f1f1 f1f1 f4f1     ................
d008698c:	f5f4 f5f5 f2f2 f3f3 f3f3 f2f3 f2f2 f3f2     ................
d008699c:	f3f3 f8f5 f5f5 f1f4 f5f3 f7f7 f4f4 f3f3     ................
d00869ac:	f2f2 f3f2 f3f3 f4f4 f2f3 f4f3 f3f4 f3f4     ................
d00869bc:	f3f4 f3f4 f2f2 f2f2 f2f2 f2f2 f1f1 f1f1     ................
d00869cc:	f1f1 f2f1 f2f2 f2f2 0000 0000 0000 0000     ................
	...
d00869ec:	0000 f300 f4f4 f4f4 f2f4 f2f2 f3f2 f4f4     ................
d00869fc:	f5f4 f5f5 f5f5 f2f4 f3f2 f3f3 f2f2 f2f4     ................
d0086a0c:	f5f2 f2f5 f2f1 f7f5 f3f5 f3f3 f5f5 f6f5     ................
d0086a1c:	f6f6 f7f6 f1f6 f4f1 f1f4 f1f1 f1f1 f1f1     ................
d0086a2c:	f7f1 f5f5 f3f4 f5f5 f2f4 f4f2 f6f5 f5f4     ................
d0086a3c:	f8f7 f7f9 f5f6 f4f4 f3f4 f5f1 f3f1 f5f5     ................
d0086a4c:	f7f2 f5f5 f5f5 f8f5 f5f6 f4f5 f3f3 f4f3     ................
d0086a5c:	f3f4 f3f4 f3f4 f2f4 f2f3 f2f2 f2f2 f2f2     ................
d0086a6c:	f1f1 f1f1 f1f1 f2f1 f2f2 f2f2 00f2 0000     ................
	...
d0086a90:	0000 f4f3 f4f4 f4f4 f2f4 f2f2 f2f2 f2f2     ................
d0086aa0:	f3f3 f2f3 f1f2 f2f1 f3f2 f5f5 f3f5 f5f2     ................
d0086ab0:	f5f5 f5f5 f8f5 f7f5 f5f6 f3f3 f5f3 f5f5     ................
d0086ac0:	f6f6 f6f5 f6f6 f4f4 f1f1 f1f1 f1f1 f1f1     ................
d0086ad0:	f7f1 f5f5 f4f4 f5f3 f4f5 f3f1 f2f2 f2f2     ................
d0086ae0:	f3f2 f3f3 f6f3 f3f3 f3f3 f5f2 f2f7 f3f1     ................
d0086af0:	f5f5 f2f2 f4f2 f4f4 f4f4 f3f4 f2f3 f4f3     ................
d0086b00:	f3f4 f4f4 f3f3 f2f4 f4f3 f2f3 f2f3 f2f2     ................
d0086b10:	f1f1 f1f1 f1f1 f2f1 f2f2 f2f2 00f3 0000     ................
	...
d0086b34:	0000 f4f4 f4f4 f4f4 f2f2 f2f2 f2f2 f4f2     ................
d0086b44:	f5f4 f4f5 f4f3 f5f5 f3f2 f7f5 f5f7 f3f5     ................
d0086b54:	f3f2 f2f3 f2f2 f4f1 f6f7 f3f5 f4f3 f5f5     ................
d0086b64:	f6f5 f5f6 f6f6 f3f6 f1f1 f4f1 f1f4 f1f1     ................
d0086b74:	f5f1 f5f5 f4f5 f3f4 f5f4 f3f4 f4f2 f5f5     ................
d0086b84:	f4f5 f2f2 f1f3 f5f1 f4f4 f1f4 f5f4 f1f3     ................
d0086b94:	f3f2 f3f3 f1f2 f2f5 f3f3 f3f3 f4f4 f4f3     ................
d0086ba4:	f3f4 f4f4 f4f3 f2f4 f1f3 f2f5 f2f3 f2f2     ................
d0086bb4:	f1f1 f1f1 f1f1 f2f1 f2f2 f2f2 f4f3 0000     ................
	...
d0086bd8:	f300 f4f4 f4f4 f2f4 f2f2 f2f2 f2f2 f7f4     ................
d0086be8:	f5f7 f9f7 f7f6 f5f6 f2f6 f5f3 f7f7 f5f7     ................
d0086bf8:	f2f3 f5f5 f8f7 f8f9 f7f5 f4f5 f3f3 f5f5     ................
d0086c08:	f5f5 f5f6 f6f5 f6f6 f5f6 f4f4 f1f4 f1f1     ................
d0086c18:	f1f1 f5f5 f5f5 f4f4 f3f2 f3f5 f2f3 f2f2     ................
d0086c28:	f2f2 f2f2 f2f2 f3f3 f3f2 f3f3 f1f2 f5f5     ................
d0086c38:	f5f5 f2f2 f5f2 f3f5 f2f3 f4f3 f4f4 f4f4     ................
d0086c48:	f4f4 f4f4 f4f3 f2f3 f2f3 f1f3 f4f3 f3f2     ................
d0086c58:	f2f2 f1f2 f1f1 f2f1 f2f2 f2f2 f4f2 0000     ................
	...
d0086c7c:	f4f3 f5f4 f4f4 f2f4 f2f2 f2f2 f2f2 f2f2     ................
d0086c8c:	f5f3 f5f4 f4f5 f3f3 f1f2 f3f2 f5f5 f7f7     ................
d0086c9c:	f3f5 f2f2 f3f2 f3f3 f5f1 f5f7 f3f3 f5f3     ................
d0086cac:	f5f5 f5f5 f5f5 f6f5 f6f5 f1f5 f1f1 f1f1     ................
d0086cbc:	f1f1 f5f5 f5f5 f4f4 f4f4 f5f3 f2f4 f5f2     ................
d0086ccc:	f2f5 f5f5 f5f2 f2f1 f2f1 f2f2 f3f4 f4f4     ................
d0086cdc:	f2f5 f5f3 f5f5 f2f2 f3f2 f4f4 f4f4 f4f4     ................
d0086cec:	f4f4 f4f4 f3f3 f2f3 f2f3 f2f3 f2f3 f2f2     ................
d0086cfc:	f2f5 f2f3 f2f1 f2f1 f2f2 f2f2 f5f2 0000     ................
	...
d0086d20:	f4f4 f4f4 f2f2 f2f2 f2f1 f2f2 f2f2 f2f2     ................
d0086d30:	f1f2 f2f1 f3f2 f7f5 f5f6 f3f4 f3f2 f5f5     ................
d0086d40:	f3f5 f5f2 f4f4 f200 f5f1 f7f5 f3f5 f3f3     ................
d0086d50:	f4f3 f5f5 f5f5 f5f5 f6f5 f5f5 f1f5 f1f1     ................
d0086d60:	f7f1 f5f5 f5f5 f4f5 f4f4 f2f3 f4f4 f2f2     ................
d0086d70:	f2f2 f4f1 f2f5 f1f5 f2f2 f2f2 f2f2 f2f2     ................
d0086d80:	f5f5 f2f5 f2f2 f2f2 f4f3 f4f4 f4f4 f4f4     ................
d0086d90:	f4f4 f4f4 f3f3 f2f3 f2f3 f2f3 f2f3 f2f3     ................
d0086da0:	f1f3 f2f5 f3f2 f2f2 f2f3 f2f2 f5f2 0000     ................
	...
d0086dc0:	0000 f300 f4f4 f4f4 f4f4 f2f1 f2f1 f2f2     ................
d0086dd0:	f2f2 f3f2 f4f5 f2f2 f2f2 f2f2 f2f2 f2f2     ................
d0086de0:	f2f2 f3f2 f3f3 f2f2 0000 0000 0000 f7f4     ................
d0086df0:	f5f6 f3f3 f4f3 f4f4 f4f4 f5f5 f5f5 f5f5     ................
d0086e00:	f5f5 f1f1 f7f1 f5f5 f5f5 f4f5 f4f4 f3f4     ................
d0086e10:	f3f2 f3f5 f3f4 f4f3 f5f2 f2f2 f2f2 f2f2     ................
d0086e20:	f5f5 f2f5 f5f5 f2f5 f2f2 f3f2 f4f4 f4f4     ................
d0086e30:	f4f4 f4f4 f4f4 f3f4 f3f3 f3f3 f3f2 f2f3     ................
d0086e40:	f1f3 f2f2 f2f3 f1f3 f4f3 f2f3 f2f3 f2f2     ................
d0086e50:	f5f2 0000 0000 0000 0000 0000 0000 0000     ................
d0086e60:	0000 0000 0000 f3f3 f4f4 f4f4 f4f4 f1f1     ................
d0086e70:	f2f1 f2f1 f2f2 f5f3 f3f4 f2f2 f5f5 f5f5     ................
d0086e80:	f5f5 f5f5 f5f5 f5f5 f2f2 f5f2 00f5 0000     ................
d0086e90:	0000 f500 f5f7 f3f4 f3f2 f4f4 f5f4 f5f5     ................
d0086ea0:	f5f5 f5f5 f5f5 f5f2 f5f5 f5f5 f5f5 f4f4     ................
d0086eb0:	f4f4 f3f4 f2f2 f4f2 f3f4 f5f3 f2f1 f2f5     ................
d0086ec0:	f2f2 f5f2 f5f5 f2f2 f2f2 f2f2 f2f2 f4f2     ................
d0086ed0:	f4f4 f4f4 f4f4 f4f4 f4f4 f3f3 f3f3 f3f3     ................
d0086ee0:	f3f2 f2f3 f1f2 f1f2 f1f2 f2f3 f2f3 f2f2     ................
d0086ef0:	f2f5 f2f2 f5f3 0000 0000 0000 0000 0000     ................
	...
d0086f08:	f300 f3f3 f4f4 f4f4 f4f4 f1f1 f2f1 f2f1     ................
d0086f18:	f2f1 f5f4 f2f3 f5f2 00f5 0000 0000 0000     ................
d0086f28:	0000 0000 f500 f5f5 0000 0000 0000 0000     ................
d0086f38:	f7f5 f3f5 f2f2 f3f3 f4f4 f4f4 f5f5 f5f5     ................
d0086f48:	f5f5 f2f5 f5f5 f5f5 f5f5 f4f4 f4f4 f3f4     ................
d0086f58:	f2f2 f2f3 f4f4 f3f3 f2f5 f2f2 f2f2 f2f2     ................
d0086f68:	f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f5f5 f4f4     ................
d0086f78:	f4f4 f4f4 f4f3 f3f3 f3f4 f3f3 f3f3 f2f3     ................
d0086f88:	f2f2 f2f1 f1f2 f1f2 f2f3 f2f3 f1f3 f2f4     ................
d0086f98:	f4f5 0000 0000 0000 0000 0000 0000 0000     ................
d0086fa8:	0000 0000 f300 f3f3 f4f4 f4f4 f4f4 f1f4     ................
d0086fb8:	f1f1 f2f1 f3f1 f3f4 f2f2 f5f5 0000 0000     ................
	...
d0086fdc:	f200 f3f2 f3f3 f2f3 f3f2 f4f4 f4f4 f4f4     ................
d0086fec:	f5f5 f5f5 f5f5 f5f5 f4f5 f4f4 f4f3 f3f4     ................
d0086ffc:	f2f3 f3f2 f4f2 f3f5 f2f5 f2f2 f2f2 f2f2     ................
d008700c:	f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f5f2 f5f4     ................
d008701c:	f4f4 f4f3 f4f3 f3f3 f3f4 f4f3 f3f3 f2f3     ................
d008702c:	f2f2 f2f1 f1f2 f2f2 f2f1 f2f3 f2f3 f4f2     ................
d008703c:	00f4 0000 0000 0000 0000 0000 0000 0000     ................
d008704c:	0000 0000 f300 f3f3 f4f4 f4f4 f4f4 f4f4     ................
d008705c:	f1f1 f2f1 f4f1 f2f4 f5f2 00f5 0000 0000     ................
	...
d0087080:	0000 f3f4 f5f5 f5f5 f2f3 f3f3 f4f4 f4f4     ................
d0087090:	f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f3f3     ................
d00870a0:	f2f3 f2f2 f2f3 f3f3 f3f5 f2f2 f2f2 f2f2     ................
d00870b0:	f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f4f3 f4f5     ................
d00870c0:	f4f3 f4f5 f4f3 f4f3 f3f4 f4f3 f3f3 f2f2     ................
d00870d0:	f2f2 f2f1 f1f2 f2f2 f3f1 f2f3 f2f3 f5f3     ................
d00870e0:	00f4 0000 0000 0000 0000 0000 0000 0000     ................
d00870f0:	0000 0000 f3f3 f4f3 f4f4 f4f4 f4f4 f4f4     ................
d0087100:	f1f4 f1f1 f4f1 f2f3 f5f2 0000 0000 0000     ................
	...
d0087124:	0000 f3f2 f7f5 f5f7 f5f5 f2f3 f2f2 f3f2     ................
d0087134:	f4f3 f4f4 f4f4 f4f4 f4f4 f4f4 f3f4 f3f3     ................
d0087144:	f2f3 f2f2 f3f3 f5f2 f3f5 f2f3 f2f2 f2f2     ................
d0087154:	f2f2 f2f2 f2f2 f2f2 f3f2 f4f3 f4f4 f4f4     ................
d0087164:	f4f3 f4f3 f4f5 f4f3 f3f3 f4f3 f2f2 f2f2     ................
d0087174:	f2f2 f2f2 f1f2 f2f2 f3f2 f2f3 f2f3 f5f4     ................
	...
d0087198:	f3f3 f4f2 f5f3 f4f4 f4f4 f4f4 f4f4 f1f1     ................
d00871a8:	f3f1 f2f3 f5f5 0000 0000 0000 0000 0000     ................
	...
d00871c8:	0000 f200 f5f3 f7f7 f7f7 f3f5 f2f2 f3f2     ................
d00871d8:	f3f3 f4f4 f4f4 f4f4 f4f4 f3f3 f3f3 f3f3     ................
d00871e8:	f2f2 f2f2 f4f3 f2f2 f5f5 f2f3 f2f2 f2f2     ................
d00871f8:	f2f2 f2f2 f2f2 f2f2 f4f2 f4f4 f4f4 f4f4     ................
d0087208:	f4f4 f4f4 f5f2 f4f4 f4f3 f2f3 f2f2 f2f2     ................
d0087218:	f2f2 f2f2 f2f2 f3f2 f3f2 f2f3 f3f3 f4f5     ................
	...
d008723c:	f3f3 f2f2 f5f5 f4f5 f4f4 f4f4 f4f4 f1f4     ................
d008724c:	f3f1 f2f3 00f5 0000 0000 0000 0000 0000     ................
	...
d0087270:	f3f2 f7f5 f7f7 f5f7 f2f3 f2f2 f3f2 f3f3     ................
d0087280:	f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f2f2 f3f2     ................
d0087290:	f5f3 f2f3 f5f2 f2f9 f2f2 f2f2 f2f2 f2f2     ................
d00872a0:	f2f2 f2f2 f4f4 f4f4 f4f4 f4f4 f3f4 f3f4     ................
d00872b0:	f4f3 f5f3 f4f4 f4f3 f2f2 f2f2 f2f2 f2f2     ................
d00872c0:	f2f2 f3f2 f3f3 f3f3 f5f3 00f5 0000 0000     ................
	...
d00872e0:	f3f3 f2f2 f5f5 f5f5 f4f4 f4f4 f4f4 f3f3     ................
d00872f0:	f1f2 f1f2 00f5 0000 0000 0000 0000 0000     ................
	...
d0087314:	f3f2 f3f3 f7f3 f7f7 f3f5 f2f2 f2f2 f2f2     ................
d0087324:	f3f2 f3f3 f3f3 f3f3 f3f3 f2f2 f2f2 f3f2     ................
d0087334:	f6f4 f3f3 f2f2 f1f9 f2f2 f3f2 f2f3 f2f2     ................
d0087344:	f2f2 f2f2 f4f3 f4f4 f4f4 f4f4 f4f4 f3f4     ................
d0087354:	f4f4 f4f3 f5f3 f4f3 f4f3 f2f2 f2f2 f2f2     ................
d0087364:	f2f2 f3f3 f3f3 f3f3 f5f5 0000 0000 0000     ................
	...
d0087384:	f2f3 f2f2 f5f5 f5f5 f4f5 f3f4 f3f3 f4f3     ................
d0087394:	f5f5 f1f4 00f5 0000 0000 0000 0000 0000     ................
	...
d00873b8:	f4f4 f2f4 f2f3 f9f5 f3f9 f2f2 f2f2 f2f7     ................
d00873c8:	f2f6 f2f2 f2f2 f2f2 f2f2 f2f2 f3f2 f5f4     ................
d00873d8:	f6f6 f5f5 f3f3 f3f4 f3f2 f4f3 f4f4 f2f4     ................
d00873e8:	f2f4 f4f3 f4f4 f4f4 f4f4 f4f5 f4f4 f3f4     ................
d00873f8:	f4f4 f4f3 f3f4 f5f3 f4f3 f4f3 f2f2 f2f2     ................
d0087408:	f4f2 f3f3 f3f3 f5f3 00f5 0000 0000 0000     ................
	...
d0087428:	f2f3 f3f2 f5f3 f5f5 f5f5 f3f5 f4f3 f5f5     ................
d0087438:	f4f5 f4f4 f3f4 00f3 0000 0000 0000 0000     ................
	...
d0087458:	0000 f100 f5f3 f2f2 f2f5 f5f3 f5f5 f2f5     ................
d0087468:	f2f1 f3f2 f2f2 f2f2 f2f2 f2f2 f3f3 f4f4     ................
d0087478:	f5f5 f5f5 f3f5 f4f4 f5f2 f4f4 f4f4 f4f4     ................
d0087488:	f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f5     ................
d0087498:	f4f4 f4f4 f2f3 f4f2 f3f4 f2f4 f4f5 f4f3     ................
d00874a8:	f4f3 f4f2 f4f3 f3f3 f3f3 f5f5 0000 0000     ................
	...
d00874cc:	f2f3 f3f2 f5f3 f5f5 f5f5 f6f5 f5f4 f4f5     ................
d00874dc:	f4f4 f4f4 f4f4 f4f4 f4f4 f3f4 00f3 0000     ................
	...
d00874fc:	0000 f1f1 f6f6 f1f2 f5f3 f2f3 f5f5 f5f5     ................
d008750c:	f1f5 f2f1 f3f3 f4f4 f4f4 f4f4 f5f5 f6f5     ................
d008751c:	f6f6 f4f5 f4f4 f4f4 f4f4 f5f2 f4f4 f4f4     ................
d008752c:	f4f4 f4f4 f4f4 f4f4 f4f4 f5f4 f4f4 f5f4     ................
d008753c:	f5f4 f2f4 f2f2 f2f2 f3f2 f4f4 f2f3 f4f5     ................
d008754c:	f4f3 f4f3 f4f3 f3f3 f5f3 00f5 0000 0000     ................
	...
d0087570:	f2f3 f3f2 f4f3 f5f5 f6f5 f6f5 f8f5 f4f6     ................
d0087580:	f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d0087590:	f3f4 00f1 0000 0000 0000 0000 0000 0000     ................
d00875a0:	0000 f4f2 f5f5 f2f2 f4f4 f5f5 f5f5 f5f5     ................
d00875b0:	f2f2 f5f5 f1f1 f2f2 f2f2 f3f2 f3f3 f4f4     ................
d00875c0:	f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f5f2 f4f5     ................
d00875d0:	f4f4 f4f4 f5f4 f5f4 f5f4 f5f4 f5f4 f4f4     ................
d00875e0:	f5f4 f2f2 f2f2 f2f2 f2f2 f4f4 f3f3 f3f3     ................
d00875f0:	f4f5 f4f3 f3f3 f3f3 f5f5 0000 0000 0000     ................
	...
d0087614:	f400 f3f3 f4f3 f5f3 f6f5 f6f5 f8f5 f7f6     ................
d0087624:	f5f7 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d0087634:	f2f4 f5f5 f4f4 f3f3 f3f3 0000 0000 0000     ................
d0087644:	f4f3 f4f4 f5f4 f2f2 f3f3 f3f3 f4f3 f4f3     ................
d0087654:	f4f3 f4f3 f4f4 f4f4 f5f2 f4f4 f4f4 f4f4     ................
d0087664:	f4f4 f4f4 f4f4 f4f4 f4f4 f5f4 f4f5 f6f4     ................
d0087674:	f5f5 f4f4 f5f5 f5f4 f5f4 f4f4 f4f4 f3f3     ................
d0087684:	f2f3 f3f2 f2f2 f2f2 f2f2 f2f2 f4f3 f3f4     ................
d0087694:	f3f2 f3f4 f3f3 f5f3 00f5 0000 0000 0000     ................
	...
d00876b8:	0000 f3f5 f4f3 f4f3 f6f4 f6f5 f6f5 f6f8     ................
d00876c8:	f6f7 f7f7 f4f5 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d00876d8:	f5f2 f5f5 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d00876e8:	f4f4 f4f4 f2f4 f4f5 f4f4 f4f4 f4f4 f4f4     ................
d00876f8:	f4f4 f4f4 f4f4 f4f4 f5f2 f4f4 f4f4 f4f4     ................
d0087708:	f4f4 f4f4 f4f4 f4f4 f5f4 f5f5 f5f5 f3f5     ................
d0087718:	f5f6 f4f5 f4f5 f5f4 f5f4 f4f4 f2f3 f2f3     ................
d0087728:	f2f3 f3f2 f2f2 f2f2 f2f2 f2f2 f2f2 f3f4     ................
d0087738:	f3f4 f3f2 f3f3 f5f5 0000 0000 0000 0000     ................
	...
d008775c:	0000 f6f3 f4f3 f4f3 f5f4 f6f5 f5f5 f8f5     ................
d008776c:	f7f6 f7f6 f7f7 f5f8 f5f5 f4f4 f4f4 f2f4     ................
d008777c:	f5f5 f4f5 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d008778c:	f4f4 f4f4 f4f2 f4f5 f4f4 f4f4 f4f4 f4f4     ................
d008779c:	f4f4 f4f4 f4f4 f4f4 f2f4 f4f5 f4f4 f4f4     ................
d00877ac:	f4f4 f4f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d00877bc:	f5f4 f5f5 f4f5 f5f4 f4f4 f2f5 f2f3 f2f3     ................
d00877cc:	f2f3 f3f2 f2f2 f2f3 f2f2 f2f2 f4f3 f3f4     ................
d00877dc:	f4f4 f2f3 f5f2 00f5 0000 0000 0000 0000     ................
	...
d0087800:	0000 f300 f5f6 f4f4 f5f4 f6f5 f6f5 f8f5     ................
d0087810:	f7f6 f5f5 f5f5 f5f5 f8f8 f8f8 f6f7 f5f5     ................
d0087820:	f5f5 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d0087830:	f4f4 f2f4 f5f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d0087840:	f4f4 f4f4 f4f4 f4f4 f3f4 f5f6 f5f5 f5f5     ................
d0087850:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d0087860:	f5f5 f6f4 f5f5 f5f5 f3f2 f2f3 f2f3 f2f3     ................
d0087870:	f2f3 f2f3 f2f2 f2f3 f2f2 f4f3 f4f4 f4f4     ................
d0087880:	f4f4 f5f3 f2f5 0000 0000 0000 0000 0000     ................
	...
d00878a8:	f5f5 f5f7 f5f4 f6f5 f6f5 f8f5 f7f6 f5f5     ................
d00878b8:	f7f8 f8f8 f6f6 f8f8 f8f8 f8f6 f8f9 f7f7     ................
d00878c8:	f6f7 f5f5 f4f5 f4f4 f4f4 f4f4 f4f4 f2f2     ................
d00878d8:	f6f5 f4f4 f4f4 f4f4 f5f4 f5f5 f5f5 f5f5     ................
d00878e8:	f6f6 f6f5 f5f5 f7f4 f5f6 f5f5 f5f5 f5f5     ................
d00878f8:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f3f5     ................
d0087908:	f5f6 f5f5 f3f4 f2f3 f2f3 f2f3 f2f3 f2f3     ................
d0087918:	f2f3 f2f3 f4f3 f4f4 f4f4 f4f4 f4f4 f5f5     ................
d0087928:	f2f5 0000 0000 0000 0000 0000 0000 0000     ................
	...
d008794c:	f500 f7f4 f6f6 f5f5 f8f6 f8f8 f7f6 f5f5     ................
d008795c:	f8f8 f9f8 f5f8 f6f9 f6f8 f6f9 f8f9 f8f8     ................
d008796c:	f7f7 f7f7 f7f7 f7f7 f7f7 f7f7 f6f7 f2f2     ................
d008797c:	f7f8 f7f6 f6f6 f7f6 f6f6 f6f6 f6f6 f5f6     ................
d008798c:	f6f6 f6f5 f6f5 f5f5 f5f8 f5f5 f5f5 f5f5     ................
d008799c:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f3 f5f5     ................
d00879ac:	f5f4 f5f5 f5f5 f2f5 f3f3 f2f3 f2f3 f2f3     ................
d00879bc:	f2f3 f4f3 f4f4 f4f4 f4f4 f4f4 f5f5 f5f5     ................
d00879cc:	00f4 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00879f0:	0000 f2f5 f7f5 f6f6 f6f7 f6f6 f7f7 f5f6     ................
d0087a00:	f9f8 f9f7 f5f9 f8f5 f9f8 f8f9 f8f8 f8f8     ................
d0087a10:	f8f7 f8f7 f7f7 f7f7 f7f7 f7f7 f6f7 f2f7     ................
d0087a20:	f7f5 f7f6 f7f6 f7f6 f6f6 f6f6 f6f6 f6f6     ................
d0087a30:	f6f6 f6f5 f6f5 f5f5 f7f5 f6f5 f5f5 f5f5     ................
d0087a40:	f5f5 f5f5 f5f5 f5f5 f3f4 f3f4 f4f4 f5f5     ................
d0087a50:	f4f5 f5f5 f5f5 f4f5 f3f3 f2f2 f2f3 f4f3     ................
d0087a60:	f4f3 f4f4 f4f4 f4f4 f5f4 f5f5 f5f5 00f4     ................
	...
d0087a98:	f4f5 f5f5 f5f7 f7f6 f8f5 f7f8 f9f8 f3f5     ................
d0087aa8:	f2f5 f3f2 f5f3 f9fb f8f8 f8f8 f8f7 f8f7     ................
d0087ab8:	f7f7 f7f8 f7f7 f7f7 f7f7 f7f7 f9f2 f7f6     ................
d0087ac8:	f7f6 f7f6 f6f6 f6f6 f6f6 f6f6 f6f6 f6f5     ................
d0087ad8:	f6f5 f6f5 f5f5 f6f6 f5f5 f5f5 f5f5 f5f5     ................
d0087ae8:	f4f4 f3f3 f3f4 f3f4 f3f4 f5f3 f5f5 f4f5     ................
d0087af8:	f5f6 f5f5 f3f5 f3f2 f4f3 f4f5 f4f4 f4f4     ................
d0087b08:	f5f4 f5f5 f5f5 f4f5 0000 0000 0000 0000     ................
	...
d0087b3c:	0000 f3f5 f5f3 f5f4 f5f8 f6f6 f5f3 f2f5     ................
d0087b4c:	f2f5 f2f2 f2f2 f7f5 f8f8 f6f6 f6f7 f6f5     ................
d0087b5c:	f7f7 f7f8 f7f7 f7f7 f7f7 f7f7 f2f5 f7f7     ................
d0087b6c:	f7f6 f7f6 f6f6 f6f7 f6f6 f6f6 f6f6 f6f5     ................
d0087b7c:	f6f6 f6f5 f5f5 f6f6 f4f6 f4f4 f4f4 f4f4     ................
d0087b8c:	f4f4 f4f3 f3f4 f3f4 f3f4 f3f4 f5f4 f5f5     ................
d0087b9c:	f6f3 f5f5 f5f5 f5f4 f4f5 f4f5 f4f4 f5f5     ................
d0087bac:	f5f5 f5f5 00f4 f200 0000 0000 0000 0000     ................
	...
d0087be0:	0000 f200 f4f2 f5f4 f4f5 f6f5 f5f6 f2f2     ................
d0087bf0:	f2f2 f2f2 f2f2 f3f2 f9f5 f6f9 f6f5 f6f5     ................
d0087c00:	f5f5 f5f6 f5f5 f5f5 f5f5 f7f5 f5f6 f7f2     ................
d0087c10:	f5f6 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d0087c20:	f4f5 f6f4 f6f5 f7f5 f6f6 f4f5 f4f4 f4f4     ................
d0087c30:	f4f4 f4f3 f3f4 f3f4 f3f4 f3f4 f3f4 f5f5     ................
d0087c40:	f3f5 f5f6 f5f5 f5f5 f4f4 f5f4 f5f5 f5f5     ................
d0087c50:	f4f5 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0087c88:	f200 f2f2 f5f4 f2f3 f4f2 f5f6 f2f2 f2f2     ................
d0087c98:	f200 f2f2 f5f2 f9f5 f5f9 f6f6 f6f5 f5f6     ................
d0087ca8:	f6f5 f5f5 f5f5 f5f5 f5f7 f2f8 f7f6 f5f5     ................
d0087cb8:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f4f5 f5f5     ................
d0087cc8:	f6f5 f5f5 f6f7 f4f6 f4f4 f4f4 f4f4 f4f4     ................
d0087cd8:	f3f4 f3f4 f3f4 f3f4 f5f4 f5f5 f5f5 f5f2     ................
d0087ce8:	f4f4 f4f4 f5f5 f5f5 f5f5 f2f4 0000 0000     ................
	...
d0087d2c:	0000 f200 f4f2 f2f5 f2f2 f2f2 f5f4 f2f2     ................
d0087d3c:	00f2 f200 f2f2 f2f5 f9f9 f8f9 f6f5 f5f5     ................
d0087d4c:	f6f5 f5f5 f5f5 f5f5 f7f7 f8f5 f7f7 f5f6     ................
d0087d5c:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f4f5 f5f5     ................
d0087d6c:	f6f4 f6f5 f7f5 f5f6 f5f4 f4f4 f4f4 f4f4     ................
d0087d7c:	f3f4 f4f4 f5f4 f5f5 f5f5 f5f5 f5f5 f2f5     ................
d0087d8c:	f5f5 f5f5 f5f5 f4f5 0000 0000 0000 0000     ................
	...
d0087dd4:	f200 f4f2 f2f2 f2f2 f2f2 f4f2 00f2 f400     ................
d0087de4:	f4f4 f2f5 f8f8 f9f8 f6f9 f6f5 f6f5 f5f5     ................
d0087df4:	f5f5 f5f5 f7f5 f8f5 f7f7 f5f6 f5f5 f5f5     ................
d0087e04:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f6f4 f6f5     ................
d0087e14:	f5f5 f6f7 f5f5 f4f4 f4f4 f5f4 f5f5 f5f5     ................
d0087e24:	f5f5 f5f5 f5f5 f5f5 f5f5 f6f6 f5f2 f5f5     ................
	...
d0087e78:	0000 f200 f4f4 f2f2 f2f2 f2f2 00f2 0000     ................
d0087e88:	0000 f400 f5f5 f9f5 f8f9 f6f8 f6f5 f5f5     ................
d0087e98:	f5f6 f5f5 f7f5 f5f7 f7f9 f7f6 f5f5 f5f5     ................
d0087ea8:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f6f6     ................
d0087eb8:	f6f6 f8f3 f6f5 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d0087ec8:	f5f5 f5f5 f6f5 f6f9 f5f6 f5f5 f3f3 f2f3     ................
d0087ed8:	f2f2 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0087f20:	f2f2 f2f2 f200 f2f2 00f2 f2f2 0000 0000     ................
d0087f30:	f200 f4f4 f9f5 f9f9 f9f9 f9f9 f8f9 f8f9     ................
d0087f40:	f8f8 f6f8 f8f9 f8f8 f8f7 f8f7 f7f7 f7f7     ................
d0087f50:	f6f7 f6f7 f6f7 f6f7 f6f6 f6f6 f6f6 f2f6     ................
d0087f60:	f5f7 f5f5 f5f5 f5f5 f5f5 f9f9 f5f9 f5f5     ................
d0087f70:	f5f5 f5f5 f5f5 f5f5 f4f4 f3f3 f2f2 00f2     ................
	...
d0087fc4:	0000 f200 0000 f200 f2f2 0000 0000 0000     ................
d0087fd4:	0000 0000 f200 f5f5 f8f9 f8f9 f8f9 f8f9     ................
d0087fe4:	f8f8 f8f8 f9f5 f8f8 f8f7 f8f7 f7f7 f6f6     ................
d0087ff4:	f6f7 f6f7 f6f7 f6f7 f6f6 f5f6 f5f6 f9f6     ................
d0088004:	f6f2 f6f5 f6f6 f6f6 f9f6 f9f9 f5f5 f5f5     ................
d0088014:	f6f6 f6f6 f5f6 f5f5 f4f5 f3f4 f2f3 f2f2     ................
d0088024:	f2f2 f2f2 00f2 0000 0000 0000 0000 0000     ................
	...
d008806c:	0000 f200 f2f2 0000 0000 0000 0000 0000     ................
d008807c:	0000 f2f2 f9f5 f9f9 f6f6 f6f6 f6f6 f5f6     ................
d008808c:	f2f5 f5f5 f6f6 f6f7 f6f6 f6f6 f6f6 f6f6     ................
d008809c:	f6f6 f6f6 f6f6 f8f8 f8f8 f8f8 f2f8 f5f2     ................
d00880ac:	f5f4 f6f5 f7f6 f6f6 f6f6 f6f6 f6f6 f6f6     ................
d00880bc:	f5f5 f5f5 f5f5 f4f4 f3f3 f2f2 f2f2 f3f2     ................
d00880cc:	f2f3 00f2 0000 0000 0000 0000 0000 0000     ................
	...
d0088114:	f200 0000 0000 0000 0000 0000 0000 0000     ................
d0088124:	0000 f5f5 f9f9 f9f9 f9f9 f9f9 f9f9 f9f5     ................
d0088134:	f9f9 f9f9 f9f9 f9f9 f9f9 f9f9 f9f9 f9f9     ................
d0088144:	f9f9 f5f9 f3f5 f2f3 f2f2 f2f2 f4f2 f5f5     ................
d0088154:	f6f5 f7f6 f8f7 f7f8 f7f7 f6f6 f5f6 f5f5     ................
d0088164:	f5f5 f4f4 f2f3 f2f2 f2f2 f2f2 f3f3 f2f3     ................
	...
d00881f0:	f2f2 f4f4 f2f2 f4f2 f5f5 f6f5 f6f6 f6f6     ................
d0088200:	f6f6 f6f6 f5f5 f5f5 f5f5 f3f4 f2f2 fef2     ................
d0088210:	f2fe f2f2 f3f2 f3f3 00f2 0000 0000 0000     ................
	...
d0088294:	0000 f400 f2f2 f2f2 f3f2 f4f4 f5f5 f5f5     ................
d00882a4:	f5f5 f5f5 f5f5 f5f5 f3f3 f2f2 f2f2 f8f2     ................
d00882b4:	f2f2 f2f2 f3f2 f3f3 f2f3 0000 0000 0000     ................
	...
d008833c:	f200 f3f2 f2f2 f2f2 f3f2 f3f3 f3f3 f3f3     ................
d008834c:	f3f3 f2f3 f2f2 f2f2 f4f2 f2f2 f2f2 f2f2     ................
d008835c:	f3f2 f3f3 f2f3 00f2 0000 0000 0000 0000     ................
	...
d00883e0:	0000 f3f2 f2f2 f9f2 f2f2 f2f2 f2f2 f2f2     ................
d00883f0:	f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2     ................
d0088400:	f3f2 f3f3 f3f3 f2f3 0000 0000 0000 0000     ................
	...
d0088484:	0000 f200 f3f2 f2f2 f2f2 f9f2 f2f2 f4f2     ................
d0088494:	f2f2 f2f9 f2f6 f2f2 f2f2 f2f2 f2f2 f3f2     ................
d00884a4:	f3f3 f3f3 f3f4 f3f3 00f2 0000 0000 0000     ................
	...
d008852c:	f5f4 f3f4 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2     ................
d008853c:	f2f2 f2f2 f2f2 f2f2 f3f2 f3f3 f3f3 f3f4     ................
d008854c:	f3f3 f2f3 00f5 0000 0000 0000 0000 0000     ................
	...
d00885d0:	f300 f5f5 f6f6 f4f5 f2f3 f2f2 f2f2 f2f2     ................
d00885e0:	f2f2 f2f2 f2f2 f3f2 f3f3 f4f3 f4f5 f3f4     ................
d00885f0:	f3f3 f2f3 00f2 0000 0000 0000 0000 0000     ................
	...
d0088674:	0000 f4f3 f6f5 f7f6 f7f7 f5f5 f4f4 f6f4     ................
d0088684:	f5f5 f5f5 f5f5 f5f5 f5f5 f4f5 f4f4 f3f3     ................
d0088694:	f3f3 f2f2 f3f5 0000 0000 0000 0000 0000     ................
	...
d0088718:	0000 f500 f4f5 f5f5 f6f6 f5f7 f4f5 f4f4     ................
d0088728:	f5f5 f5f5 f5f5 f5f5 f4f5 f3f4 f3f3 f3f3     ................
d0088738:	f2f2 f3f2 f3f5 00f2 0000 0000 0000 0000     ................
	...
d00887c0:	f300 f4f5 f4f4 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d00887d0:	f5f5 f4f5 f3f4 f3f3 f3f3 f2f2 f3f2 f3f5     ................
d00887e0:	f3f5 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0088868:	f3f5 f3f5 f5f5 f5f5 f5f5 f5f5 f4f5 f4f4     ................
d0088878:	f3f3 f2f2 f2f2 f2f2 f3f5 f3f5 f3f5 00f5     ................
	...
d008890c:	0000 f3f5 f3f5 f3f5 f3f5 f3f5 f3f8 f3f5     ................
d008891c:	f3f5 f3f5 f3f5 f3f5 f3f5 f3f5 f3f5 00f5     ................
	...
d00889b4:	f300 f3f5 f3f5 f3f5 f3f5 f5f5 f5f5 f4f5     ................
d00889c4:	f4f5 f3f5 f3f5 f3f5 f3f5 f5f5 0000 0000     ................
	...
d0088a58:	0000 f300 f3f5 f3f5 f3f5 f4f5 f5f5 f5f5     ................
d0088a68:	f4f5 f3f5 f3f5 f3f5 f3f5 f5f5 0000 0000     ................
	...
d0088b00:	0000 f3f5 f3f5 f3f5 f4f5 f5f5 f5f5 f4f5     ................
d0088b10:	f3f5 f3f5 f3f5 f3f5 00f5 0000 0000 0000     ................
	...
d0088ba8:	f300 f3f5 f4f5 f5f5 f5f5 f4f5 f4f5 f3f5     ................
d0088bb8:	f3f5 f3f5 00f5 0000 0000 0000 0000 0000     ................
	...
d0088c4c:	0000 f300 f3f5 f4f5 f5f5 f5f5 f4f5 f3f5     ................
d0088c5c:	f3f5 f3f5 00f5 0000 0000 0000 0000 0000     ................
	...
d0088cf4:	f2f2 f3f5 f4f5 f5f5 f4f5 f3f5 f3f5 f5f5     ................
d0088d04:	f2f5 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0088d9c:	f300 f4f5 f5f5 f4f5 f5f5 f5f5 00f5 0000     ................
	...
d0088e40:	0000 f200 f5f5 f5f5 f9f5 f2f5 f2f5 0000     ................
	...
d0088ee8:	0000 f300 f2f5 f2f5 f5f9 00f2 0000 0000     ................
	...
d0088f90:	f500 f5f2 00f2 f500 0000 0000 0000 0000     ................
	...
d0089034:	0000 f2f5 f5f2 0000 00f5 0000 0000 0000     ................
	...
d00890d8:	0000 f300 f2f5 00f5 f900 0000 0000 0000     ................
	...
d0089180:	f500 f5f2 0000 0000 0000 0000 0000 0000     ................
	...
d0089224:	0000 f2f9 00f5 0000 0000 0000 0000 0000     ................
	...
d00892cc:	f1f2 00f5 0000 0000 0000 0000 0000 0000     ................
	...
d0089370:	f100 f5f1 0000 0000 0000 0000 0000 0000     ................
	...
d0089414:	0000 00f1 00f5 0000 0000 0000 0000 0000     ................
	...
d00894bc:	f500 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0089560:	0000 f5f2 0000 0000 0000 0000 0000 0000     ................
	...
d0089608:	00f9 0000 0000 0000 0000 0000 0000 0000     ................
	...

d0089650 <px_bullet>:
d0089650:	0000 0000 e2e2 fdeb e2eb 0000 e200 ebeb     ................
d0089660:	fdfd fdfd e2fd ebe2 fdfd fdfd fdfd fdfd     ................
d0089670:	00eb e200 ebeb fdfd fdfd e2fd 0000 0000     ................
d0089680:	e2e2 fdeb e2eb 0000                         ........

d0089688 <px_enemy>:
	...
d0089694:	f2f2 f2f2 f2f2 00f2 0000 0000 0000 0000     ................
	...
d00896b0:	f200 f3f3 e1e1 e1e1 e1e1 f3e1 f2f3 0000     ................
	...
d00896cc:	0000 e500 e1e5 e1e1 e1e1 e1e1 e1e1 e1e1     ................
d00896dc:	e1e1 00e5 0000 0000 0000 0000 0000 0000     ................
d00896ec:	0000 e5e5 e1e6 e4e4 e4e4 e4e4 e1e4 e1e1     ................
d00896fc:	e1e1 e5e6 00e5 0000 0000 0000 0000 0000     ................
d008970c:	e500 e7e5 e4e7 e4e4 e4e4 e4e4 e4e4 e1e4     ................
d008971c:	e1e1 e7e7 e5e5 0000 0000 0000 0000 0000     ................
d008972c:	e5e5 e7e7 e3e8 e3e3 e3e3 e4e4 e4e4 e4e4     ................
d008973c:	e1e4 e7e8 e5e7 00e5 0000 0000 0000 e500     ................
d008974c:	e7e5 e8e7 e3e8 e3e3 e3e3 e3e3 e4e4 e4e4     ................
d008975c:	e4e4 e8e8 e7e7 e5e5 0000 0000 0000 e5e5     ................
d008976c:	e7e7 e8e8 e3fe e3e3 e3e3 e3e3 e4e3 e4e4     ................
d008977c:	e4e4 e8fe e7e8 e5e7 00e5 0000 0000 e6e5     ................
d008978c:	e8e7 fee8 e2fe e2e2 e3e3 e3e3 e3e3 e4e4     ................
d008979c:	e4e4 fefe e8e8 e6e7 00e5 0000 f200 e4e1     ................
d00897ac:	e3e3 e2e3 e2e2 e2e2 e1e4 f3f3 f3f3 e4e1     ................
d00897bc:	e4e4 e4e4 e1e1 e1e1 f2e1 0000 f300 e4e1     ................
d00897cc:	e3e3 e2e3 e2e2 f3e2 f3f3 f3f3 f3f3 f3f3     ................
d00897dc:	e4e4 e4e4 e1e1 e1e1 f3e1 0000 f200 e3e4     ................
d00897ec:	e3e3 e2e2 e2e2 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d00897fc:	e4f3 e4e4 e1e4 e1e1 f2e1 0000 e1f2 e3e4     ................
d008980c:	e3e3 e2e2 e4e2 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d008981c:	e1f3 e4e4 e1e4 e1e1 e1e1 00f2 e1f2 e3e4     ................
d008982c:	e3e3 e2e2 e1e2 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d008983c:	f3f3 e4e4 e1e4 e1e1 e1e1 00f2 e1f2 e3e4     ................
d008984c:	e3e3 e2e3 f3e2 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d008985c:	f3f3 e4e4 e1e4 e1e1 e1e1 00f2 e1f2 e3e4     ................
d008986c:	e3e3 e2e3 f3e2 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d008987c:	f3f3 e4e3 e1e4 e1e1 e1e1 00f2 e1f2 e4e4     ................
d008988c:	e3e3 e3e3 f3e3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d008989c:	f3f3 e4e3 e1e4 e1e1 e1e1 00f2 e1f2 e4e4     ................
d00898ac:	e3e3 e3e3 e1e3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d00898bc:	e1f3 e4e3 e1e4 e1e1 e1e1 00f2 e1f2 e4e1     ................
d00898cc:	e3e4 e3e3 e4e3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d00898dc:	e3f3 e4e3 e1e1 e1e1 e1e1 00f2 f200 e4e1     ................
d00898ec:	e4e4 e3e3 e3e3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d00898fc:	f8e1 e4e4 e1e1 e1e1 f2e1 0000 f300 e1e1     ................
d008990c:	e4e4 e3e4 e3e3 f3e3 f3f3 f3f3 f3f3 e1f3     ................
d008991c:	e4f9 e1e4 e1e1 e1e1 f3e1 0000 f200 e1e1     ................
d008992c:	e4e4 e4e4 e3e4 e3e3 e1e4 f3f3 e1f3 f8e3     ................
d008993c:	e4e4 e1e4 e1e1 e1e1 f2e1 0000 0000 e6e5     ................
d008994c:	e8e7 fee8 e4fe e4e4 e4e4 e3e3 e2e3 e4e3     ................
d008995c:	e4e4 fefe e8e8 e6e7 00e5 0000 0000 e5e5     ................
d008996c:	e7e7 e8e8 e4fe e4e4 e4e4 e4e4 e4e4 e4e4     ................
d008997c:	e1e4 e8fe e7e8 e5e7 00e5 0000 0000 e500     ................
d008998c:	e7e5 e8e7 e4e8 e4e4 e4e4 e4e4 e4e4 e1e4     ................
d008999c:	e1e1 e8e8 e7e7 e5e5 0000 0000 0000 0000     ................
d00899ac:	e5e5 e7e7 e1e8 e4e4 e4e4 e4e4 e1e4 e1e1     ................
d00899bc:	e1e1 e7e8 e5e7 00e5 0000 0000 0000 0000     ................
d00899cc:	e500 e7e5 e1e7 e1e1 e1e1 e1e1 e1e1 e1e1     ................
d00899dc:	e1e1 e7e7 e5e5 0000 0000 0000 0000 0000     ................
d00899ec:	0000 e5e5 e1e6 e1e1 e1e1 e1e1 e1e1 e1e1     ................
d00899fc:	e1e1 e5e6 00e5 0000 0000 0000 0000 0000     ................
d0089a0c:	0000 e500 e1e5 e1e1 e1e1 e1e1 e1e1 e1e1     ................
d0089a1c:	e1e1 e5e5 0000 0000 0000 0000 0000 0000     ................
d0089a2c:	0000 0000 f200 f2f3 e1e1 e1e1 e1e1 f2e1     ................
d0089a3c:	f2f3 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0089a54:	f2f2 f2f2 f2f2 00f2 0000 0000 0000 0000     ................
	...

d0089a88 <px_ship>:
d0089a88:	0000 0000 f2f2 0000 0000 0000 0000 0000     ................
	...
d0089aa8:	0000 f8f3 f2f8 0000 0000 0000 0000 0000     ................
	...
d0089ac8:	f300 f8f8 f2f8 0000 0000 0000 0000 0000     ................
	...
d0089ae8:	f6f2 f6f6 f2f5 0000 0000 0000 0000 0000     ................
	...
d0089b04:	0000 f200 f5f5 f5f5 f2f2 f2f2 f2f2 f2f2     ................
d0089b14:	f2f2 f2f2 f2f2 0000 0000 0000 0000 0000     ................
d0089b24:	0000 f2f2 f5f5 f7f7 fbf5 f7fb e1f2 f7e0     ................
d0089b34:	f7f7 f6f6 f2f5 00f2 0000 0000 0000 f2f2     ................
d0089b44:	f3f2 f7f2 f9f9 f5f7 fbfb f2f7 e0e1 f9e0     ................
d0089b54:	fbfb fbfb fbf2 f2f2 0000 0000 f200 f7f7     ................
d0089b64:	f2f5 f5f5 f5f5 fbf5 f7fb e1f2 e0e1 e0e0     ................
d0089b74:	e0e0 fbf2 e1f2 f2e1 0000 0000 fbf2 f7fb     ................
d0089b84:	f7f5 fbfb f5f9 fbf9 f5f9 e1f3 e1e1 e1e1     ................
d0089b94:	fbf2 e1f2 fbe0 f2e1 0000 f200 f7f7 f3f6     ................
d0089ba4:	f9f7 f9fb f7f5 fbf9 f5f7 f2f2 f2f2 fbf2     ................
d0089bb4:	f2f2 e1f3 fbe0 f2e1 0000 f7f2 f6f7 f7f2     ................
d0089bc4:	f9f9 f9f9 f7f5 f9f9 f9f9 f9f9 f9f9 f3f5     ................
d0089bd4:	f2f2 e1f3 e0e0 f2f2 f200 f2f2 f2f3 f9f5     ................
d0089be4:	f9f9 f9f9 f5f5 f4f4 f5f4 f5f5 f8f8 f7f8     ................
d0089bf4:	f2f5 e1f3 e1e1 00f2 0000 f200 f2f2 f2f2     ................
d0089c04:	f2f2 f2f2 f5f3 f3f5 f2f2 f3f3 f7f5 f8f8     ................
d0089c14:	f3f5 f2f2 f2f2 0000 0000 0000 f5f2 f5f5     ................
d0089c24:	f5f5 f5f4 f5f5 f3f5 f2f3 f2f2 f5f2 f8f8     ................
d0089c34:	f9f9 f8f9 f2f6 0000 0000 f200 f6f6 f6f6     ................
d0089c44:	f2f6 f7f5 f5f7 f5f5 f4f5 f4f3 f2f5 f2f2     ................
d0089c54:	f2f2 f2f2 00f2 0000 0000 f7f2 f7f7 f2f7     ................
d0089c64:	f200 f6f2 f7f7 f2f2 f2f2 f2f2 00f2 0000     ................
	...
d0089c7c:	0000 f2f2 f2f2 0000 0000 f2f2 00f2 0000     ................
	...

d0089c98 <topscroll_bar_bg1>:
d0089c98:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 02a0 0202     ................
d0089ca8:	0202 a002 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089cb8:	9f9f 029f 0202 0202 a002 9f9f 9f9f 9f9f     ................
d0089cc8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089cd8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 029f     ................
d0089ce8:	0202 0202 0202 0202 0202 9f02 9f9f 9f9f     ................
d0089cf8:	9f9f 9f9f a09f 0202 0202 a302 a3a3 9f9f     ................
d0089d08:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089d18:	02a0 a002 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089d28:	9f9f 0202 0202 0202 0202 0202 a002 9f9f     ................
d0089d38:	9f9f 9f9f 9f9f 9f9f a09f 0202 0202 0202     ................
d0089d48:	0202 0202 0202 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089d58:	029f 0202 0202 0202 9f9f 9f9f 9f9f 9f9f     ................
d0089d68:	9f9f 9f9f 9f9f 9f9f 02a0 a002 9f9f 02a0     ................
d0089d78:	9f02 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089d88:	0202 0202 0202 9f02 9f9f 9f9f 9f9f 9f9f     ................
d0089d98:	9f9f a09f 0202 0202 0202 0202 0202 9f9f     ................
d0089da8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089db8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089dc8:	9f9f 029f a0a0 0202 0202 9f9f 9f9f 9f9f     ................
d0089dd8:	9f9f 9f9f 9f9f 9f9f a09f 0202 0202 0202     ................
d0089de8:	9f02 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089df8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089e08:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089e18:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089e28:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089e38:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089e48:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089e58:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089e68:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089e78:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089e88:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089e98:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089ea8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089eb8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089ec8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089ed8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089ee8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089ef8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089f08:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089f18:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089f28:	a09f a0a0 a0a0 a0a0 9f9f 9f9f 9f9f 9f9f     ................
d0089f38:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089f48:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089f58:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089f68:	9f9f b79f 0202 0202 02a0 b7b7 a0a0 9fa0     ................
d0089f78:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 8f8f     ................
d0089f88:	8f8f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089f98:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089fa8:	9f9f 9f9f 9f9f b7b7 0202 02a0 0202 b702     ................
d0089fb8:	a0b7 9f9f 9f9f 9f9f 9f9f 8f9f 8f8f 8f8f     ................
d0089fc8:	8f8f 8f8f 8f8f 8f8f a0a0 a0a0 a0a0 9fa0     ................
d0089fd8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089fe8:	8f8f 8f8f 8f8f 8f8f 8f8f 0909 a009 a0a0     ................
d0089ff8:	a0a0 9fa0 9f9f 9f9f 8f9f 8f8f 8f8f 8f8f     ................
d008a008:	8f8f 8f8f 8f8f 8f8f 8f8f 02b7 0202 a002     ................
d008a018:	b702 a0b7 a0a0 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a028:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a038:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a048:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f b78f 02b7     ................
d008a058:	a002 0202 0202 b7b7 8fa0 8f8f 8f8f 8f8f     ................
d008a068:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a078:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a088:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a098:	8f8f 8f8f a0a0 a0a0 a0a0 8f8f 8f8f 0606     ................
d008a0a8:	0606 0606 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a0b8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a0c8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a0d8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a0e8:	068f 0605 0606 0606 8f06 8f8f 8f8f 8f8f     ................
d008a0f8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a108:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a118:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a128:	8f8f 8f8f 0506 0606 0606 0606 0606 8f8f     ................
d008a138:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a148:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a158:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a168:	8f8f 8f8f 8f8f 068f 0605 0606 0606 0606     ................
d008a178:	0606 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a188:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a198:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a1a8:	8f8f 8f8f 8f8f 8f8f 8f8f 0506 0606 0606     ................
d008a1b8:	0606 0606 6006 8f06 8f8f 8f8f 8f8f 8f8f     .....`..........
d008a1c8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a1d8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a1e8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 068f 0605     ................
d008a1f8:	0606 0606 0606 0606 0606 0660 8f8f 8f8f     ..........`.....
d008a208:	8f8f 0505 0505 0505 0505 0505 8f8f 8f8f     ................
d008a218:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a228:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a238:	0606 0605 0606 0606 0606 0606 0606 0660     ..............`.
d008a248:	8f06 8f8f 0505 0501 0505 0505 0505 0505     ................
d008a258:	0505 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a268:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a278:	8f8f 068f 0506 0606 0606 0606 0606 0606     ................
d008a288:	0606 6006 8f06 0505 0101 0505 0505 0505     ...`............
d008a298:	0505 0505 0605 8f05 8f8f 8f8f 8f8f 8f8f     ................
d008a2a8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a2b8:	8f8f 8f8f 8f8f 0606 0605 0606 0606 0606     ................
d008a2c8:	0606 0606 0606 6006 0505 0105 0505 0505     .......`........
d008a2d8:	0505 0505 0505 0505 0505 0506 8f8f 8f8f     ................
d008a2e8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a2f8:	8f8f 8f8f 8f8f 8f8f 068f 0506 0606 0606     ................
d008a308:	0606 0606 0606 0606 0606 0505 0105 0501     ................
d008a318:	0505 0505 0505 0505 0505 0505 0505 0605     ................
d008a328:	0505 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a338:	8f8f 8f8f 8f8f 8f8f 0d8f 8f8f 0606 0605     ................
d008a348:	0606 0606 0606 0606 0606 0606 0505 050d     ................
d008a358:	0501 0505 0505 0505 0505 0505 0505 0505     ................
d008a368:	0505 0505 0506 8f05 8f8f 8f8f 8f8f 8f8f     ................
d008a378:	8f8f 8f8f 8f8f 8f8f 8f8f 8f0d 0d8f 068f     ................
d008a388:	0606 0606 0606 0606 0606 060d 0606 0506     ................
d008a398:	0505 050d 0d05 0505 0505 0505 050d 050d     ................
d008a3a8:	0505 0505 0505 0505 0605 0505 8f05 0d8f     ................
d008a3b8:	8f8f 8f8f 8f0d 8f0d 8f8f 8f8f 0d0d 0d0d     ................
d008a3c8:	0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d     ................
d008a3d8:	0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d     ................
d008a3e8:	0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d     ................
d008a3f8:	0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d     ................
d008a408:	0b0a 0d0a 0a0d 0a0a 0b0a 0b0a 0a0a 0a0a     ................
d008a418:	0a0a 0a0a 0a0a 680a 0a68 0b0b 0a0a 0a0a     .......hh.......
d008a428:	0b0a 0a0a 0a0a 680a 0a0a 0a0a 680a 6868     .......h.....hhh
d008a438:	0b0a 0b0b 0b0a 0a0a 0b0a 0a0a 0b0b 0a0b     ................
d008a448:	0b0b 0a0a 0a0a 0b0b 0a0a 0b0a 0a0b 0a0a     ................
d008a458:	0a0a 0a0a 0a0a 0a0b 0a0a 0a0a 0a0a 0a0a     ................
d008a468:	0a0a 0b0a 0a0a 0a0a 0a0a 0a0a 0a0a 0b0b     ................
d008a478:	0a0a 0a0a 0a0b 0a0a 0b0a 0a0a 0a0a 0a0a     ................
d008a488:	0a0a 0a0a 0a0a 0b0b 0b0a 0a0a 0b0a 0a0a     ................
d008a498:	0a0b 0a68 0a0a 0b0a 0b0b 0a0a 6868 0a0a     ..h.........hh..
d008a4a8:	0a0a 680a 0a68 0a0b 6868 0a68 0a0a 680a     ...hh...hhh....h
d008a4b8:	6868 0a0a 0a0a 0b0a 0a0a 0a0a 0a0a 0b0b     hh..............
d008a4c8:	0a0a 0a0a 0a0a 0a0a 0a0a 0b0a 0a0a 0a0a     ................
d008a4d8:	680b 6868 0a0a 0a0a 0a0a 6868 0a0a 0a0a     .hhh......hh....
d008a4e8:	0a0a 0b0a 0a0b 0a0a 0a0a 0a0a 0a0a 0a0a     ................
d008a4f8:	0a0a 0a0a 0a0a 0a0a 0a0a 0a0a 0a0a 0a0a     ................
d008a508:	0a0a 0a0a 0a0a 680a 6868 0b0b 0a0a 0a0a     .......hhh......
d008a518:	4353 524f 2045 3025 6c36 2075 2020 4853     SCORE %06lu   SH
d008a528:	5049 4c20 534f 2054 7525 0000               IP LOST %u..

d008a534 <gradient_cols.9126>:
d008a534:	1010 1110 1211 1312 1413 1514 1615 1716     ................
d008a544:	1717 0000                                   ....

d008a548 <txtTitle>:
d008a548:	6874 7369 6920 2073 2061 6574 7473 7320     this is a test s
d008a558:	7263 6c6f 796c 202c 6f73 656d 6874 6e69     crolly, somethin
d008a568:	2067 6f74 7420 7365 2074 6f66 2072 6f6e     g to test for no
d008a578:	2c77 6220 7475 7720 6c69 206c 616d 656b     w, but will make
d008a588:	6920 2074 2061 696c 7474 656c 6220 7465      it a little bet
d008a598:	6574 2072 6966 6c6c 2079 6574 7478 2079     ter filly texty 
d008a5a8:	7473 6675 0066 0000                         stuff...

d008a5b0 <wave.9186>:
d008a5b0:	0300 0906 0f0c 1512 1917 1d1b 1f1e 2020     ..............  
d008a5c0:	2020 1e1f 1b1d 1719 1215 0c0f 0609 0003       ..............
d008a5d0:	fafd f4f7 eef1 e9eb e5e7 e2e3 e0e1 e0e0     ................
d008a5e0:	e1e0 e3e2 e7e5 ebe9 f1ee f7f4 fdfa 0300     ................

d008a5f0 <_global_impure_ptr>:
d008a5f0:	a6c8 d008                                   ....

d008a5f4 <__sf_fake_stderr>:
	...

d008a614 <__sf_fake_stdin>:
	...

d008a634 <__sf_fake_stdout>:
	...
d008a654:	2d23 2b30 0020 6c68 004c 6665 4567 4746     #-0+ .hlL.efgEFG
d008a664:	3000 3231 3433 3635 3837 4139 4342 4544     .0123456789ABCDE
d008a674:	0046 3130 3332 3534 3736 3938 6261 6463     F.0123456789abcd
d008a684:	6665                                         ef.

Disassembly of section .init:

d008a688 <_init>:
d008a688:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008a68a:	bf00      	nop

Disassembly of section .fini:

d008a68c <_fini>:
d008a68c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008a68e:	bf00      	nop
