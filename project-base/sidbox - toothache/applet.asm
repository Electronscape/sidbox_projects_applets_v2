
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
d008001e:	f001 f9cd 	bl	d00813bc <setbuf>
d0080022:	6833      	ldr	r3, [r6, #0]
d0080024:	2100      	movs	r1, #0
d0080026:	68d8      	ldr	r0, [r3, #12]
d0080028:	f001 f9c8 	bl	d00813bc <setbuf>
d008002c:	4629      	mov	r1, r5
d008002e:	4620      	mov	r0, r4
d0080030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0080034:	f000 b8fc 	b.w	d0080230 <main>
d0080038:	d0081f44 	.word	0xd0081f44

d008003c <initMalloc>:
d008003c:	4902      	ldr	r1, [pc, #8]	; (d0080048 <initMalloc+0xc>)
d008003e:	4b03      	ldr	r3, [pc, #12]	; (d008004c <initMalloc+0x10>)
d0080040:	4a03      	ldr	r2, [pc, #12]	; (d0080050 <initMalloc+0x14>)
d0080042:	1a5b      	subs	r3, r3, r1
d0080044:	6013      	str	r3, [r2, #0]
d0080046:	4770      	bx	lr
d0080048:	d0084438 	.word	0xd0084438
d008004c:	d0600000 	.word	0xd0600000
d0080050:	d00823f4 	.word	0xd00823f4

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
d008009c:	f001 f90a 	bl	d00812b4 <__errno>
d00800a0:	2209      	movs	r2, #9
d00800a2:	4603      	mov	r3, r0
d00800a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800a8:	601a      	str	r2, [r3, #0]
d00800aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00800ac:	d0081fc4 	.word	0xd0081fc4
d00800b0:	2001f000 	.word	0x2001f000

d00800b4 <_read>:
d00800b4:	b508      	push	{r3, lr}
d00800b6:	f001 f8fd 	bl	d00812b4 <__errno>
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
d0080102:	f001 f8d7 	bl	d00812b4 <__errno>
d0080106:	220c      	movs	r2, #12
d0080108:	4603      	mov	r3, r0
d008010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008010e:	601a      	str	r2, [r3, #0]
d0080110:	bd10      	pop	{r4, pc}
d0080112:	bf00      	nop
d0080114:	d0081fc0 	.word	0xd0081fc0
d0080118:	d0084438 	.word	0xd0084438
d008011c:	d0600000 	.word	0xd0600000

d0080120 <_isatty>:
d0080120:	2001      	movs	r0, #1
d0080122:	4770      	bx	lr

d0080124 <draw_panel>:
d0080124:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0080128:	4c40      	ldr	r4, [pc, #256]	; (d008022c <draw_panel+0x108>)
d008012a:	4698      	mov	r8, r3
d008012c:	b082      	sub	sp, #8
d008012e:	4606      	mov	r6, r0
d0080130:	7b25      	ldrb	r5, [r4, #12]
d0080132:	200e      	movs	r0, #14
d0080134:	7b67      	ldrb	r7, [r4, #13]
d0080136:	f894 e00e 	ldrb.w	lr, [r4, #14]
d008013a:	ea45 2507 	orr.w	r5, r5, r7, lsl #8
d008013e:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0080142:	460f      	mov	r7, r1
d0080144:	9201      	str	r2, [sp, #4]
d0080146:	ea45 450e 	orr.w	r5, r5, lr, lsl #16
d008014a:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d008014e:	686b      	ldr	r3, [r5, #4]
d0080150:	68db      	ldr	r3, [r3, #12]
d0080152:	4798      	blx	r3
d0080154:	7b25      	ldrb	r5, [r4, #12]
d0080156:	7b63      	ldrb	r3, [r4, #13]
d0080158:	1cf9      	adds	r1, r7, #3
d008015a:	f894 e00e 	ldrb.w	lr, [r4, #14]
d008015e:	1cf0      	adds	r0, r6, #3
d0080160:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d0080164:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0080168:	9a01      	ldr	r2, [sp, #4]
d008016a:	4643      	mov	r3, r8
d008016c:	ea45 450e 	orr.w	r5, r5, lr, lsl #16
d0080170:	b209      	sxth	r1, r1
d0080172:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d0080176:	b200      	sxth	r0, r0
d0080178:	686d      	ldr	r5, [r5, #4]
d008017a:	686d      	ldr	r5, [r5, #4]
d008017c:	47a8      	blx	r5
d008017e:	7b23      	ldrb	r3, [r4, #12]
d0080180:	7b61      	ldrb	r1, [r4, #13]
d0080182:	2003      	movs	r0, #3
d0080184:	7ba5      	ldrb	r5, [r4, #14]
d0080186:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d008018a:	7be1      	ldrb	r1, [r4, #15]
d008018c:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0080190:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0080194:	685b      	ldr	r3, [r3, #4]
d0080196:	68db      	ldr	r3, [r3, #12]
d0080198:	4798      	blx	r3
d008019a:	7b25      	ldrb	r5, [r4, #12]
d008019c:	7b61      	ldrb	r1, [r4, #13]
d008019e:	4643      	mov	r3, r8
d00801a0:	7ba0      	ldrb	r0, [r4, #14]
d00801a2:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d00801a6:	f894 c00f 	ldrb.w	ip, [r4, #15]
d00801aa:	9a01      	ldr	r2, [sp, #4]
d00801ac:	4639      	mov	r1, r7
d00801ae:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d00801b2:	4630      	mov	r0, r6
d00801b4:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d00801b8:	686d      	ldr	r5, [r5, #4]
d00801ba:	686d      	ldr	r5, [r5, #4]
d00801bc:	47a8      	blx	r5
d00801be:	7b23      	ldrb	r3, [r4, #12]
d00801c0:	7b61      	ldrb	r1, [r4, #13]
d00801c2:	2004      	movs	r0, #4
d00801c4:	7ba5      	ldrb	r5, [r4, #14]
d00801c6:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d00801ca:	7be1      	ldrb	r1, [r4, #15]
d00801cc:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00801d0:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00801d4:	685b      	ldr	r3, [r3, #4]
d00801d6:	68db      	ldr	r3, [r3, #12]
d00801d8:	4798      	blx	r3
d00801da:	7b25      	ldrb	r5, [r4, #12]
d00801dc:	7b63      	ldrb	r3, [r4, #13]
d00801de:	4639      	mov	r1, r7
d00801e0:	f894 e00e 	ldrb.w	lr, [r4, #14]
d00801e4:	4630      	mov	r0, r6
d00801e6:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d00801ea:	f894 c00f 	ldrb.w	ip, [r4, #15]
d00801ee:	9a01      	ldr	r2, [sp, #4]
d00801f0:	2302      	movs	r3, #2
d00801f2:	ea45 450e 	orr.w	r5, r5, lr, lsl #16
d00801f6:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d00801fa:	686d      	ldr	r5, [r5, #4]
d00801fc:	686d      	ldr	r5, [r5, #4]
d00801fe:	47a8      	blx	r5
d0080200:	7b25      	ldrb	r5, [r4, #12]
d0080202:	7b62      	ldrb	r2, [r4, #13]
d0080204:	4639      	mov	r1, r7
d0080206:	f894 c00e 	ldrb.w	ip, [r4, #14]
d008020a:	4643      	mov	r3, r8
d008020c:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d0080210:	7be7      	ldrb	r7, [r4, #15]
d0080212:	4630      	mov	r0, r6
d0080214:	2202      	movs	r2, #2
d0080216:	ea45 440c 	orr.w	r4, r5, ip, lsl #16
d008021a:	ea44 6407 	orr.w	r4, r4, r7, lsl #24
d008021e:	6864      	ldr	r4, [r4, #4]
d0080220:	6864      	ldr	r4, [r4, #4]
d0080222:	46a4      	mov	ip, r4
d0080224:	b002      	add	sp, #8
d0080226:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d008022a:	4760      	bx	ip
d008022c:	2001f000 	.word	0x2001f000

d0080230 <main>:
d0080230:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080234:	f8df b3b0 	ldr.w	fp, [pc, #944]	; d00805e8 <main+0x3b8>
d0080238:	b085      	sub	sp, #20
d008023a:	f44f 2000 	mov.w	r0, #524288	; 0x80000
d008023e:	2500      	movs	r5, #0
d0080240:	f89b 3000 	ldrb.w	r3, [fp]
d0080244:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d0080248:	f89b 2001 	ldrb.w	r2, [fp, #1]
d008024c:	f89b 1002 	ldrb.w	r1, [fp, #2]
d0080250:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080254:	f89b 2003 	ldrb.w	r2, [fp, #3]
d0080258:	4cd7      	ldr	r4, [pc, #860]	; (d00805b8 <main+0x388>)
d008025a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008025e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080262:	681b      	ldr	r3, [r3, #0]
d0080264:	4798      	blx	r3
d0080266:	f7ff fee9 	bl	d008003c <initMalloc>
d008026a:	48d4      	ldr	r0, [pc, #848]	; (d00805bc <main+0x38c>)
d008026c:	f001 f89e 	bl	d00813ac <puts>
d0080270:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0080274:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0080278:	2190      	movs	r1, #144	; 0x90
d008027a:	f89b 600e 	ldrb.w	r6, [fp, #14]
d008027e:	20dc      	movs	r0, #220	; 0xdc
d0080280:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080284:	f89b 200f 	ldrb.w	r2, [fp, #15]
d0080288:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d008028c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080290:	681b      	ldr	r3, [r3, #0]
d0080292:	691b      	ldr	r3, [r3, #16]
d0080294:	4798      	blx	r3
d0080296:	f89b 600c 	ldrb.w	r6, [fp, #12]
d008029a:	f89b 000d 	ldrb.w	r0, [fp, #13]
d008029e:	f44f 73a0 	mov.w	r3, #320	; 0x140
d00802a2:	f89b 100e 	ldrb.w	r1, [fp, #14]
d00802a6:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00802aa:	ea46 2600 	orr.w	r6, r6, r0, lsl #8
d00802ae:	f89b 000f 	ldrb.w	r0, [fp, #15]
d00802b2:	ea46 4601 	orr.w	r6, r6, r1, lsl #16
d00802b6:	4619      	mov	r1, r3
d00802b8:	ea46 6600 	orr.w	r6, r6, r0, lsl #24
d00802bc:	4610      	mov	r0, r2
d00802be:	6836      	ldr	r6, [r6, #0]
d00802c0:	9500      	str	r5, [sp, #0]
d00802c2:	6976      	ldr	r6, [r6, #20]
d00802c4:	47b0      	blx	r6
d00802c6:	f89b 300c 	ldrb.w	r3, [fp, #12]
d00802ca:	f89b 200d 	ldrb.w	r2, [fp, #13]
d00802ce:	f89b 100e 	ldrb.w	r1, [fp, #14]
d00802d2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00802d6:	f89b 200f 	ldrb.w	r2, [fp, #15]
d00802da:	4eb9      	ldr	r6, [pc, #740]	; (d00805c0 <main+0x390>)
d00802dc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00802e0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00802e4:	681b      	ldr	r3, [r3, #0]
d00802e6:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d00802e8:	4798      	blx	r3
d00802ea:	f89b 300c 	ldrb.w	r3, [fp, #12]
d00802ee:	49b5      	ldr	r1, [pc, #724]	; (d00805c4 <main+0x394>)
d00802f0:	f89b 200d 	ldrb.w	r2, [fp, #13]
d00802f4:	6008      	str	r0, [r1, #0]
d00802f6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00802fa:	f89b 100e 	ldrb.w	r1, [fp, #14]
d00802fe:	f89b 200f 	ldrb.w	r2, [fp, #15]
d0080302:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080306:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008030a:	681b      	ldr	r3, [r3, #0]
d008030c:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d008030e:	4798      	blx	r3
d0080310:	4629      	mov	r1, r5
d0080312:	4603      	mov	r3, r0
d0080314:	4dac      	ldr	r5, [pc, #688]	; (d00805c8 <main+0x398>)
d0080316:	4620      	mov	r0, r4
d0080318:	f44f 6280 	mov.w	r2, #1024	; 0x400
d008031c:	602b      	str	r3, [r5, #0]
d008031e:	f000 ffcf 	bl	d00812c0 <memset>
d0080322:	2516      	movs	r5, #22
d0080324:	f104 037c 	add.w	r3, r4, #124	; 0x7c
d0080328:	a195      	add	r1, pc, #596	; (adr r1, d0080580 <main+0x350>)
d008032a:	e9d1 0100 	ldrd	r0, r1, [r1]
d008032e:	e9c4 670c 	strd	r6, r7, [r4, #48]	; 0x30
d0080332:	e9c4 0100 	strd	r0, r1, [r4]
d0080336:	a794      	add	r7, pc, #592	; (adr r7, d0080588 <main+0x358>)
d0080338:	e9d7 6700 	ldrd	r6, r7, [r7]
d008033c:	a194      	add	r1, pc, #592	; (adr r1, d0080590 <main+0x360>)
d008033e:	e9d1 0100 	ldrd	r0, r1, [r1]
d0080342:	e9c4 6702 	strd	r6, r7, [r4, #8]
d0080346:	e9c4 0104 	strd	r0, r1, [r4, #16]
d008034a:	a793      	add	r7, pc, #588	; (adr r7, d0080598 <main+0x368>)
d008034c:	e9d7 6700 	ldrd	r6, r7, [r7]
d0080350:	a193      	add	r1, pc, #588	; (adr r1, d00805a0 <main+0x370>)
d0080352:	e9d1 0100 	ldrd	r0, r1, [r1]
d0080356:	e9c4 6706 	strd	r6, r7, [r4, #24]
d008035a:	e9c4 0108 	strd	r0, r1, [r4, #32]
d008035e:	a792      	add	r7, pc, #584	; (adr r7, d00805a8 <main+0x378>)
d0080360:	e9d7 6700 	ldrd	r6, r7, [r7]
d0080364:	a192      	add	r1, pc, #584	; (adr r1, d00805b0 <main+0x380>)
d0080366:	e9d1 0100 	ldrd	r0, r1, [r1]
d008036a:	e9c4 670a 	strd	r6, r7, [r4, #40]	; 0x28
d008036e:	e9c4 010e 	strd	r0, r1, [r4, #56]	; 0x38
d0080372:	f44f 6620 	mov.w	r6, #2560	; 0xa00
d0080376:	f44f 2180 	mov.w	r1, #262144	; 0x40000
d008037a:	ea45 0201 	orr.w	r2, r5, r1
d008037e:	f501 3180 	add.w	r1, r1, #65536	; 0x10000
d0080382:	3503      	adds	r5, #3
d0080384:	4332      	orrs	r2, r6
d0080386:	f5b1 1f10 	cmp.w	r1, #2359296	; 0x240000
d008038a:	f506 7600 	add.w	r6, r6, #512	; 0x200
d008038e:	f042 427f 	orr.w	r2, r2, #4278190080	; 0xff000000
d0080392:	f843 2f04 	str.w	r2, [r3, #4]!
d0080396:	d1f0      	bne.n	d008037a <main+0x14a>
d0080398:	4d8c      	ldr	r5, [pc, #560]	; (d00805cc <main+0x39c>)
d008039a:	246c      	movs	r4, #108	; 0x6c
d008039c:	f44f 40b0 	mov.w	r0, #22528	; 0x5800
d00803a0:	2100      	movs	r1, #0
d00803a2:	4e8b      	ldr	r6, [pc, #556]	; (d00805d0 <main+0x3a0>)
d00803a4:	b28a      	uxth	r2, r1
d00803a6:	ea44 0300 	orr.w	r3, r4, r0
d00803aa:	3101      	adds	r1, #1
d00803ac:	f500 6080 	add.w	r0, r0, #1024	; 0x400
d00803b0:	fba6 7202 	umull	r7, r2, r6, r2
d00803b4:	3403      	adds	r4, #3
d00803b6:	2920      	cmp	r1, #32
d00803b8:	ea4f 0252 	mov.w	r2, r2, lsr #1
d00803bc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00803c0:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
d00803c4:	f845 3f04 	str.w	r3, [r5, #4]!
d00803c8:	d1ec      	bne.n	d00803a4 <main+0x174>
d00803ca:	4c82      	ldr	r4, [pc, #520]	; (d00805d4 <main+0x3a4>)
d00803cc:	f44f 5020 	mov.w	r0, #10240	; 0x2800
d00803d0:	21d2      	movs	r1, #210	; 0xd2
d00803d2:	f44f 02a0 	mov.w	r2, #5242880	; 0x500000
d00803d6:	ea41 0302 	orr.w	r3, r1, r2
d00803da:	f502 22a0 	add.w	r2, r2, #327680	; 0x50000
d00803de:	3902      	subs	r1, #2
d00803e0:	4303      	orrs	r3, r0
d00803e2:	f5b2 0f70 	cmp.w	r2, #15728640	; 0xf00000
d00803e6:	f500 7040 	add.w	r0, r0, #768	; 0x300
d00803ea:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
d00803ee:	f844 3f04 	str.w	r3, [r4, #4]!
d00803f2:	d1f0      	bne.n	d00803d6 <main+0x1a6>
d00803f4:	f89b 300c 	ldrb.w	r3, [fp, #12]
d00803f8:	f04f 0a00 	mov.w	sl, #0
d00803fc:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0080400:	f89b 100e 	ldrb.w	r1, [fp, #14]
d0080404:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080408:	f89b 200f 	ldrb.w	r2, [fp, #15]
d008040c:	486a      	ldr	r0, [pc, #424]	; (d00805b8 <main+0x388>)
d008040e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080412:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080416:	681b      	ldr	r3, [r3, #0]
d0080418:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d008041a:	4798      	blx	r3
d008041c:	f89b 3018 	ldrb.w	r3, [fp, #24]
d0080420:	f89b 2019 	ldrb.w	r2, [fp, #25]
d0080424:	f89b 101a 	ldrb.w	r1, [fp, #26]
d0080428:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008042c:	f89b 201b 	ldrb.w	r2, [fp, #27]
d0080430:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080434:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080438:	681b      	ldr	r3, [r3, #0]
d008043a:	4798      	blx	r3
d008043c:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0080440:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0080444:	f89b 100e 	ldrb.w	r1, [fp, #14]
d0080448:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008044c:	f89b 200f 	ldrb.w	r2, [fp, #15]
d0080450:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080454:	495b      	ldr	r1, [pc, #364]	; (d00805c4 <main+0x394>)
d0080456:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008045a:	6808      	ldr	r0, [r1, #0]
d008045c:	681b      	ldr	r3, [r3, #0]
d008045e:	69db      	ldr	r3, [r3, #28]
d0080460:	4798      	blx	r3
d0080462:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0080466:	f89b 200d 	ldrb.w	r2, [fp, #13]
d008046a:	f89b 100e 	ldrb.w	r1, [fp, #14]
d008046e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080472:	f89b 200f 	ldrb.w	r2, [fp, #15]
d0080476:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008047a:	4953      	ldr	r1, [pc, #332]	; (d00805c8 <main+0x398>)
d008047c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080480:	6808      	ldr	r0, [r1, #0]
d0080482:	681b      	ldr	r3, [r3, #0]
d0080484:	699b      	ldr	r3, [r3, #24]
d0080486:	4798      	blx	r3
d0080488:	f89b 300c 	ldrb.w	r3, [fp, #12]
d008048c:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0080490:	2064      	movs	r0, #100	; 0x64
d0080492:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080496:	f89b 200e 	ldrb.w	r2, [fp, #14]
d008049a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d008049e:	f89b 200f 	ldrb.w	r2, [fp, #15]
d00804a2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00804a6:	681b      	ldr	r3, [r3, #0]
d00804a8:	689b      	ldr	r3, [r3, #8]
d00804aa:	4798      	blx	r3
d00804ac:	f89b 3014 	ldrb.w	r3, [fp, #20]
d00804b0:	f89b 2015 	ldrb.w	r2, [fp, #21]
d00804b4:	f44f 7000 	mov.w	r0, #512	; 0x200
d00804b8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00804bc:	f89b 2016 	ldrb.w	r2, [fp, #22]
d00804c0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00804c4:	f89b 2017 	ldrb.w	r2, [fp, #23]
d00804c8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00804cc:	681b      	ldr	r3, [r3, #0]
d00804ce:	681b      	ldr	r3, [r3, #0]
d00804d0:	4798      	blx	r3
d00804d2:	f89b 3014 	ldrb.w	r3, [fp, #20]
d00804d6:	f89b 1015 	ldrb.w	r1, [fp, #21]
d00804da:	2201      	movs	r2, #1
d00804dc:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d00804e0:	f89b 1016 	ldrb.w	r1, [fp, #22]
d00804e4:	f89b 0017 	ldrb.w	r0, [fp, #23]
d00804e8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00804ec:	f89b 1014 	ldrb.w	r1, [fp, #20]
d00804f0:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d00804f4:	f89b 0015 	ldrb.w	r0, [fp, #21]
d00804f8:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
d00804fc:	6818      	ldr	r0, [r3, #0]
d00804fe:	f89b 3016 	ldrb.w	r3, [fp, #22]
d0080502:	6844      	ldr	r4, [r0, #4]
d0080504:	ea41 4303 	orr.w	r3, r1, r3, lsl #16
d0080508:	f89b 0017 	ldrb.w	r0, [fp, #23]
d008050c:	7022      	strb	r2, [r4, #0]
d008050e:	4651      	mov	r1, sl
d0080510:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d0080514:	4830      	ldr	r0, [pc, #192]	; (d00805d8 <main+0x3a8>)
d0080516:	685b      	ldr	r3, [r3, #4]
d0080518:	681b      	ldr	r3, [r3, #0]
d008051a:	4798      	blx	r3
d008051c:	f89b 1018 	ldrb.w	r1, [fp, #24]
d0080520:	f89b 0019 	ldrb.w	r0, [fp, #25]
d0080524:	f89b 201a 	ldrb.w	r2, [fp, #26]
d0080528:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d008052c:	f89b 301b 	ldrb.w	r3, [fp, #27]
d0080530:	492a      	ldr	r1, [pc, #168]	; (d00805dc <main+0x3ac>)
d0080532:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0080536:	482a      	ldr	r0, [pc, #168]	; (d00805e0 <main+0x3b0>)
d0080538:	4c2a      	ldr	r4, [pc, #168]	; (d00805e4 <main+0x3b4>)
d008053a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008053e:	689b      	ldr	r3, [r3, #8]
d0080540:	4798      	blx	r3
d0080542:	4a27      	ldr	r2, [pc, #156]	; (d00805e0 <main+0x3b0>)
d0080544:	1e01      	subs	r1, r0, #0
d0080546:	f9b2 3000 	ldrsh.w	r3, [r2]
d008054a:	bf18      	it	ne
d008054c:	2101      	movne	r1, #1
d008054e:	2b00      	cmp	r3, #0
d0080550:	7021      	strb	r1, [r4, #0]
d0080552:	f2c0 865b 	blt.w	d008120c <main+0xfdc>
d0080556:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d008055a:	db04      	blt.n	d0080566 <main+0x336>
d008055c:	f240 12df 	movw	r2, #479	; 0x1df
d0080560:	4c1f      	ldr	r4, [pc, #124]	; (d00805e0 <main+0x3b0>)
d0080562:	4613      	mov	r3, r2
d0080564:	8022      	strh	r2, [r4, #0]
d0080566:	4c1d      	ldr	r4, [pc, #116]	; (d00805dc <main+0x3ac>)
d0080568:	f9b4 2000 	ldrsh.w	r2, [r4]
d008056c:	2a00      	cmp	r2, #0
d008056e:	f2c0 8647 	blt.w	d0081200 <main+0xfd0>
d0080572:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0080576:	db3e      	blt.n	d00805f6 <main+0x3c6>
d0080578:	e038      	b.n	d00805ec <main+0x3bc>
d008057a:	bf00      	nop
d008057c:	f3af 8000 	nop.w
d0080580:	ff000000 	.word	0xff000000
d0080584:	ff040812 	.word	0xff040812
d0080588:	ff08101e 	.word	0xff08101e
d008058c:	ff121d2a 	.word	0xff121d2a
d0080590:	ff1f3242 	.word	0xff1f3242
d0080594:	ffe2f1ef 	.word	0xffe2f1ef
d0080598:	ff759197 	.word	0xff759197
d008059c:	ff00d7e0 	.word	0xff00d7e0
d00805a0:	ff33e890 	.word	0xff33e890
d00805a4:	ffffcf52 	.word	0xffffcf52
d00805a8:	fff75b5b 	.word	0xfff75b5b
d00805ac:	ff3f81ff 	.word	0xff3f81ff
d00805b0:	ff02040a 	.word	0xff02040a
d00805b4:	ff155057 	.word	0xff155057
d00805b8:	d0081fe0 	.word	0xd0081fe0
d00805bc:	d0081df4 	.word	0xd0081df4
d00805c0:	ffe359ff 	.word	0xffe359ff
d00805c4:	d0082420 	.word	0xd0082420
d00805c8:	d0082400 	.word	0xd0082400
d00805cc:	d00820dc 	.word	0xd00820dc
d00805d0:	aaaaaaab 	.word	0xaaaaaaab
d00805d4:	d008215c 	.word	0xd008215c
d00805d8:	d0081e1c 	.word	0xd0081e1c
d00805dc:	d00823e8 	.word	0xd00823e8
d00805e0:	d00823e6 	.word	0xd00823e6
d00805e4:	d00823e3 	.word	0xd00823e3
d00805e8:	2001f000 	.word	0x2001f000
d00805ec:	f240 143f 	movw	r4, #319	; 0x13f
d00805f0:	4dd3      	ldr	r5, [pc, #844]	; (d0080940 <main+0x710>)
d00805f2:	4622      	mov	r2, r4
d00805f4:	802c      	strh	r4, [r5, #0]
d00805f6:	2800      	cmp	r0, #0
d00805f8:	f000 858d 	beq.w	d0081116 <main+0xee6>
d00805fc:	48d1      	ldr	r0, [pc, #836]	; (d0080944 <main+0x714>)
d00805fe:	7800      	ldrb	r0, [r0, #0]
d0080600:	2800      	cmp	r0, #0
d0080602:	f040 8588 	bne.w	d0081116 <main+0xee6>
d0080606:	f1a3 0127 	sub.w	r1, r3, #39	; 0x27
d008060a:	4ccf      	ldr	r4, [pc, #828]	; (d0080948 <main+0x718>)
d008060c:	f04f 050a 	mov.w	r5, #10
d0080610:	b289      	uxth	r1, r1
d0080612:	7025      	strb	r5, [r4, #0]
d0080614:	f5b1 7f88 	cmp.w	r1, #272	; 0x110
d0080618:	d205      	bcs.n	d0080626 <main+0x3f6>
d008061a:	f1a2 01f7 	sub.w	r1, r2, #247	; 0xf7
d008061e:	b28c      	uxth	r4, r1
d0080620:	2c26      	cmp	r4, #38	; 0x26
d0080622:	f240 85f9 	bls.w	d0081218 <main+0xfe8>
d0080626:	f5b3 7fb4 	cmp.w	r3, #360	; 0x168
d008062a:	f280 8603 	bge.w	d0081234 <main+0x1004>
d008062e:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
d0080632:	f280 8627 	bge.w	d0081284 <main+0x1054>
d0080636:	4bc5      	ldr	r3, [pc, #788]	; (d008094c <main+0x71c>)
d0080638:	781a      	ldrb	r2, [r3, #0]
d008063a:	2301      	movs	r3, #1
d008063c:	49c1      	ldr	r1, [pc, #772]	; (d0080944 <main+0x714>)
d008063e:	700b      	strb	r3, [r1, #0]
d0080640:	2a00      	cmp	r2, #0
d0080642:	f000 8575 	beq.w	d0081130 <main+0xf00>
d0080646:	f89b 000c 	ldrb.w	r0, [fp, #12]
d008064a:	f89b 100d 	ldrb.w	r1, [fp, #13]
d008064e:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080652:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0080656:	f89b 300f 	ldrb.w	r3, [fp, #15]
d008065a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d008065e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080662:	681b      	ldr	r3, [r3, #0]
d0080664:	68db      	ldr	r3, [r3, #12]
d0080666:	4798      	blx	r3
d0080668:	4ab9      	ldr	r2, [pc, #740]	; (d0080950 <main+0x720>)
d008066a:	7813      	ldrb	r3, [r2, #0]
d008066c:	f1c3 0301 	rsb	r3, r3, #1
d0080670:	b2db      	uxtb	r3, r3
d0080672:	7013      	strb	r3, [r2, #0]
d0080674:	7813      	ldrb	r3, [r2, #0]
d0080676:	f89b 100c 	ldrb.w	r1, [fp, #12]
d008067a:	f89b 000d 	ldrb.w	r0, [fp, #13]
d008067e:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080682:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0080686:	2b00      	cmp	r3, #0
d0080688:	f000 85ab 	beq.w	d00811e2 <main+0xfb2>
d008068c:	49b1      	ldr	r1, [pc, #708]	; (d0080954 <main+0x724>)
d008068e:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0080692:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080696:	6809      	ldr	r1, [r1, #0]
d0080698:	48af      	ldr	r0, [pc, #700]	; (d0080958 <main+0x728>)
d008069a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008069e:	f3ca 0784 	ubfx	r7, sl, #2, #5
d00806a2:	f04f 0800 	mov.w	r8, #0
d00806a6:	6800      	ldr	r0, [r0, #0]
d00806a8:	681b      	ldr	r3, [r3, #0]
d00806aa:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00806ac:	4798      	blx	r3
d00806ae:	f89b 400c 	ldrb.w	r4, [fp, #12]
d00806b2:	eb07 00d8 	add.w	r0, r7, r8, lsr #3
d00806b6:	f89b 300d 	ldrb.w	r3, [fp, #13]
d00806ba:	fa1f f688 	uxth.w	r6, r8
d00806be:	f89b 200e 	ldrb.w	r2, [fp, #14]
d00806c2:	f000 001f 	and.w	r0, r0, #31
d00806c6:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
d00806ca:	f89b 100f 	ldrb.w	r1, [fp, #15]
d00806ce:	3020      	adds	r0, #32
d00806d0:	3608      	adds	r6, #8
d00806d2:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
d00806d6:	ea42 6301 	orr.w	r3, r2, r1, lsl #24
d00806da:	685b      	ldr	r3, [r3, #4]
d00806dc:	68db      	ldr	r3, [r3, #12]
d00806de:	4798      	blx	r3
d00806e0:	f89b 000c 	ldrb.w	r0, [fp, #12]
d00806e4:	f89b 500d 	ldrb.w	r5, [fp, #13]
d00806e8:	2308      	movs	r3, #8
d00806ea:	f89b c00e 	ldrb.w	ip, [fp, #14]
d00806ee:	4641      	mov	r1, r8
d00806f0:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d00806f4:	f89b 400f 	ldrb.w	r4, [fp, #15]
d00806f8:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00806fc:	fa0f f886 	sxth.w	r8, r6
d0080700:	ea40 450c 	orr.w	r5, r0, ip, lsl #16
d0080704:	2000      	movs	r0, #0
d0080706:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d008070a:	6864      	ldr	r4, [r4, #4]
d008070c:	6864      	ldr	r4, [r4, #4]
d008070e:	47a0      	blx	r4
d0080710:	b2b3      	uxth	r3, r6
d0080712:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0080716:	d1ca      	bne.n	d00806ae <main+0x47e>
d0080718:	f89b 300c 	ldrb.w	r3, [fp, #12]
d008071c:	200f      	movs	r0, #15
d008071e:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080722:	f00a 070f 	and.w	r7, sl, #15
d0080726:	f89b 200e 	ldrb.w	r2, [fp, #14]
d008072a:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d008072e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080732:	f89b 200f 	ldrb.w	r2, [fp, #15]
d0080736:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008073a:	685b      	ldr	r3, [r3, #4]
d008073c:	68db      	ldr	r3, [r3, #12]
d008073e:	4798      	blx	r3
d0080740:	f89b 600c 	ldrb.w	r6, [fp, #12]
d0080744:	4639      	mov	r1, r7
d0080746:	f89b 000d 	ldrb.w	r0, [fp, #13]
d008074a:	3710      	adds	r7, #16
d008074c:	f89b 500e 	ldrb.w	r5, [fp, #14]
d0080750:	2301      	movs	r3, #1
d0080752:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
d0080756:	f89b 400f 	ldrb.w	r4, [fp, #15]
d008075a:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d008075e:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0080762:	2000      	movs	r0, #0
d0080764:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0080768:	6864      	ldr	r4, [r4, #4]
d008076a:	6864      	ldr	r4, [r4, #4]
d008076c:	47a0      	blx	r4
d008076e:	b2bb      	uxth	r3, r7
d0080770:	b23f      	sxth	r7, r7
d0080772:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0080776:	d3e3      	bcc.n	d0080740 <main+0x510>
d0080778:	fa5f f48a 	uxtb.w	r4, sl
d008077c:	f04f 0900 	mov.w	r9, #0
d0080780:	ea4f 084a 	mov.w	r8, sl, lsl #1
d0080784:	2794      	movs	r7, #148	; 0x94
d0080786:	4625      	mov	r5, r4
d0080788:	4e74      	ldr	r6, [pc, #464]	; (d008095c <main+0x72c>)
d008078a:	f89b 300c 	ldrb.w	r3, [fp, #12]
d008078e:	f005 0003 	and.w	r0, r5, #3
d0080792:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080796:	3501      	adds	r5, #1
d0080798:	f89b 200e 	ldrb.w	r2, [fp, #14]
d008079c:	3007      	adds	r0, #7
d008079e:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d00807a2:	f89b 300f 	ldrb.w	r3, [fp, #15]
d00807a6:	b2ed      	uxtb	r5, r5
d00807a8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00807ac:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00807b0:	685b      	ldr	r3, [r3, #4]
d00807b2:	68db      	ldr	r3, [r3, #12]
d00807b4:	4798      	blx	r3
d00807b6:	f89b e00c 	ldrb.w	lr, [fp, #12]
d00807ba:	f89b 200d 	ldrb.w	r2, [fp, #13]
d00807be:	ea4f 0199 	mov.w	r1, r9, lsr #2
d00807c2:	fba6 3008 	umull	r3, r0, r6, r8
d00807c6:	f89b 300e 	ldrb.w	r3, [fp, #14]
d00807ca:	ea4e 2c02 	orr.w	ip, lr, r2, lsl #8
d00807ce:	4a64      	ldr	r2, [pc, #400]	; (d0080960 <main+0x730>)
d00807d0:	0a00      	lsrs	r0, r0, #8
d00807d2:	fba2 2101 	umull	r2, r1, r2, r1
d00807d6:	ea4c 4203 	orr.w	r2, ip, r3, lsl #16
d00807da:	f89b 300f 	ldrb.w	r3, [fp, #15]
d00807de:	ebc0 1000 	rsb	r0, r0, r0, lsl #4
d00807e2:	0889      	lsrs	r1, r1, #2
d00807e4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00807e8:	fb07 9111 	mls	r1, r7, r1, r9
d00807ec:	eba8 1040 	sub.w	r0, r8, r0, lsl #5
d00807f0:	685b      	ldr	r3, [r3, #4]
d00807f2:	f109 092f 	add.w	r9, r9, #47	; 0x2f
d00807f6:	3134      	adds	r1, #52	; 0x34
d00807f8:	b200      	sxth	r0, r0
d00807fa:	689b      	ldr	r3, [r3, #8]
d00807fc:	f108 0849 	add.w	r8, r8, #73	; 0x49
d0080800:	b209      	sxth	r1, r1
d0080802:	4798      	blx	r3
d0080804:	f240 639c 	movw	r3, #1692	; 0x69c
d0080808:	4599      	cmp	r9, r3
d008080a:	d1be      	bne.n	d008078a <main+0x55a>
d008080c:	f89b 500c 	ldrb.w	r5, [fp, #12]
d0080810:	2003      	movs	r0, #3
d0080812:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080816:	eb04 0444 	add.w	r4, r4, r4, lsl #1
d008081a:	f89b 200e 	ldrb.w	r2, [fp, #14]
d008081e:	f04f 082c 	mov.w	r8, #44	; 0x2c
d0080822:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d0080826:	f89b 300f 	ldrb.w	r3, [fp, #15]
d008082a:	b2e4      	uxtb	r4, r4
d008082c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080830:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080834:	685b      	ldr	r3, [r3, #4]
d0080836:	68db      	ldr	r3, [r3, #12]
d0080838:	4798      	blx	r3
d008083a:	f89b 600c 	ldrb.w	r6, [fp, #12]
d008083e:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0080842:	2100      	movs	r1, #0
d0080844:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080848:	232a      	movs	r3, #42	; 0x2a
d008084a:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
d008084e:	f89b 500f 	ldrb.w	r5, [fp, #15]
d0080852:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0080856:	4608      	mov	r0, r1
d0080858:	ea42 6505 	orr.w	r5, r2, r5, lsl #24
d008085c:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080860:	686d      	ldr	r5, [r5, #4]
d0080862:	686d      	ldr	r5, [r5, #4]
d0080864:	47a8      	blx	r5
d0080866:	f89b 500c 	ldrb.w	r5, [fp, #12]
d008086a:	f89b 100d 	ldrb.w	r1, [fp, #13]
d008086e:	2007      	movs	r0, #7
d0080870:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080874:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d0080878:	f89b 300f 	ldrb.w	r3, [fp, #15]
d008087c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080880:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080884:	685b      	ldr	r3, [r3, #4]
d0080886:	68db      	ldr	r3, [r3, #12]
d0080888:	4798      	blx	r3
d008088a:	f89b 600c 	ldrb.w	r6, [fp, #12]
d008088e:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080892:	2302      	movs	r3, #2
d0080894:	f89b 000e 	ldrb.w	r0, [fp, #14]
d0080898:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d008089c:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
d00808a0:	f89b 500f 	ldrb.w	r5, [fp, #15]
d00808a4:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d00808a8:	2128      	movs	r1, #40	; 0x28
d00808aa:	ea40 6505 	orr.w	r5, r0, r5, lsl #24
d00808ae:	2000      	movs	r0, #0
d00808b0:	686d      	ldr	r5, [r5, #4]
d00808b2:	686d      	ldr	r5, [r5, #4]
d00808b4:	47a8      	blx	r5
d00808b6:	f89b 500c 	ldrb.w	r5, [fp, #12]
d00808ba:	f89b 100d 	ldrb.w	r1, [fp, #13]
d00808be:	200e      	movs	r0, #14
d00808c0:	f89b 200e 	ldrb.w	r2, [fp, #14]
d00808c4:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d00808c8:	f89b 300f 	ldrb.w	r3, [fp, #15]
d00808cc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00808d0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00808d4:	685b      	ldr	r3, [r3, #4]
d00808d6:	68db      	ldr	r3, [r3, #12]
d00808d8:	4798      	blx	r3
d00808da:	f89b 600c 	ldrb.w	r6, [fp, #12]
d00808de:	f89b 000d 	ldrb.w	r0, [fp, #13]
d00808e2:	210e      	movs	r1, #14
d00808e4:	f89b 500e 	ldrb.w	r5, [fp, #14]
d00808e8:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
d00808ec:	f89b 300f 	ldrb.w	r3, [fp, #15]
d00808f0:	4a1c      	ldr	r2, [pc, #112]	; (d0080964 <main+0x734>)
d00808f2:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d00808f6:	2013      	movs	r0, #19
d00808f8:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d00808fc:	685b      	ldr	r3, [r3, #4]
d00808fe:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0080900:	4798      	blx	r3
d0080902:	f89b 500c 	ldrb.w	r5, [fp, #12]
d0080906:	f89b 100d 	ldrb.w	r1, [fp, #13]
d008090a:	2005      	movs	r0, #5
d008090c:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080910:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d0080914:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080918:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d008091c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080920:	685b      	ldr	r3, [r3, #4]
d0080922:	68db      	ldr	r3, [r3, #12]
d0080924:	4798      	blx	r3
d0080926:	f89b 600c 	ldrb.w	r6, [fp, #12]
d008092a:	f89b 000d 	ldrb.w	r0, [fp, #13]
d008092e:	210d      	movs	r1, #13
d0080930:	f89b 500e 	ldrb.w	r5, [fp, #14]
d0080934:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
d0080938:	f89b 300f 	ldrb.w	r3, [fp, #15]
d008093c:	e014      	b.n	d0080968 <main+0x738>
d008093e:	bf00      	nop
d0080940:	d00823e8 	.word	0xd00823e8
d0080944:	d0081fc9 	.word	0xd0081fc9
d0080948:	d00823e4 	.word	0xd00823e4
d008094c:	d00823e1 	.word	0xd00823e1
d0080950:	d0081fc8 	.word	0xd0081fc8
d0080954:	d0082400 	.word	0xd0082400
d0080958:	d0082420 	.word	0xd0082420
d008095c:	88888889 	.word	0x88888889
d0080960:	1bacf915 	.word	0x1bacf915
d0080964:	d0081e30 	.word	0xd0081e30
d0080968:	4ad3      	ldr	r2, [pc, #844]	; (d0080cb8 <main+0xa88>)
d008096a:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d008096e:	2012      	movs	r0, #18
d0080970:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d0080974:	685b      	ldr	r3, [r3, #4]
d0080976:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0080978:	4798      	blx	r3
d008097a:	f89b 000c 	ldrb.w	r0, [fp, #12]
d008097e:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080982:	f01a 0f20 	tst.w	sl, #32
d0080986:	f89b 200e 	ldrb.w	r2, [fp, #14]
d008098a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d008098e:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080992:	bf14      	ite	ne
d0080994:	2008      	movne	r0, #8
d0080996:	2009      	moveq	r0, #9
d0080998:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d008099c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00809a0:	685b      	ldr	r3, [r3, #4]
d00809a2:	68db      	ldr	r3, [r3, #12]
d00809a4:	4798      	blx	r3
d00809a6:	f89b 600c 	ldrb.w	r6, [fp, #12]
d00809aa:	f89b 200d 	ldrb.w	r2, [fp, #13]
d00809ae:	230a      	movs	r3, #10
d00809b0:	f89b 000e 	ldrb.w	r0, [fp, #14]
d00809b4:	210c      	movs	r1, #12
d00809b6:	ea46 2202 	orr.w	r2, r6, r2, lsl #8
d00809ba:	f89b 500f 	ldrb.w	r5, [fp, #15]
d00809be:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d00809c2:	461a      	mov	r2, r3
d00809c4:	ea40 6505 	orr.w	r5, r0, r5, lsl #24
d00809c8:	f44f 70b5 	mov.w	r0, #362	; 0x16a
d00809cc:	686d      	ldr	r5, [r5, #4]
d00809ce:	686d      	ldr	r5, [r5, #4]
d00809d0:	47a8      	blx	r5
d00809d2:	f89b 500c 	ldrb.w	r5, [fp, #12]
d00809d6:	f89b 100d 	ldrb.w	r1, [fp, #13]
d00809da:	2006      	movs	r0, #6
d00809dc:	f89b 200e 	ldrb.w	r2, [fp, #14]
d00809e0:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d00809e4:	f89b 300f 	ldrb.w	r3, [fp, #15]
d00809e8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00809ec:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00809f0:	685b      	ldr	r3, [r3, #4]
d00809f2:	68db      	ldr	r3, [r3, #12]
d00809f4:	4798      	blx	r3
d00809f6:	f89b 200c 	ldrb.w	r2, [fp, #12]
d00809fa:	f89b 500d 	ldrb.w	r5, [fp, #13]
d00809fe:	210d      	movs	r1, #13
d0080a00:	f89b 000e 	ldrb.w	r0, [fp, #14]
d0080a04:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
d0080a08:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080a0c:	4aab      	ldr	r2, [pc, #684]	; (d0080cbc <main+0xa8c>)
d0080a0e:	ea45 4000 	orr.w	r0, r5, r0, lsl #16
d0080a12:	4dab      	ldr	r5, [pc, #684]	; (d0080cc0 <main+0xa90>)
d0080a14:	7816      	ldrb	r6, [r2, #0]
d0080a16:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d0080a1a:	4aaa      	ldr	r2, [pc, #680]	; (d0080cc4 <main+0xa94>)
d0080a1c:	f44f 70be 	mov.w	r0, #380	; 0x17c
d0080a20:	685b      	ldr	r3, [r3, #4]
d0080a22:	2e00      	cmp	r6, #0
d0080a24:	bf18      	it	ne
d0080a26:	462a      	movne	r2, r5
d0080a28:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0080a2a:	4798      	blx	r3
d0080a2c:	238a      	movs	r3, #138	; 0x8a
d0080a2e:	f44f 72d2 	mov.w	r2, #420	; 0x1a4
d0080a32:	2140      	movs	r1, #64	; 0x40
d0080a34:	201e      	movs	r0, #30
d0080a36:	f7ff fb75 	bl	d0080124 <draw_panel>
d0080a3a:	f89b 500c 	ldrb.w	r5, [fp, #12]
d0080a3e:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080a42:	2006      	movs	r0, #6
d0080a44:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080a48:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d0080a4c:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080a50:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080a54:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080a58:	685b      	ldr	r3, [r3, #4]
d0080a5a:	68db      	ldr	r3, [r3, #12]
d0080a5c:	4798      	blx	r3
d0080a5e:	f89b 600c 	ldrb.w	r6, [fp, #12]
d0080a62:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0080a66:	214c      	movs	r1, #76	; 0x4c
d0080a68:	f89b 500e 	ldrb.w	r5, [fp, #14]
d0080a6c:	4640      	mov	r0, r8
d0080a6e:	ea46 2202 	orr.w	r2, r6, r2, lsl #8
d0080a72:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080a76:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d0080a7a:	4a93      	ldr	r2, [pc, #588]	; (d0080cc8 <main+0xa98>)
d0080a7c:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d0080a80:	685b      	ldr	r3, [r3, #4]
d0080a82:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0080a84:	4798      	blx	r3
d0080a86:	06a3      	lsls	r3, r4, #26
d0080a88:	fa0f f988 	sxth.w	r9, r8
d0080a8c:	f004 053f 	and.w	r5, r4, #63	; 0x3f
d0080a90:	d502      	bpl.n	d0080a98 <main+0x868>
d0080a92:	f1c5 053f 	rsb	r5, r5, #63	; 0x3f
d0080a96:	b2ed      	uxtb	r5, r5
d0080a98:	f89b 600c 	ldrb.w	r6, [fp, #12]
d0080a9c:	2002      	movs	r0, #2
d0080a9e:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0080aa2:	3507      	adds	r5, #7
d0080aa4:	f89b c00e 	ldrb.w	ip, [fp, #14]
d0080aa8:	2700      	movs	r7, #0
d0080aaa:	ea46 2102 	orr.w	r1, r6, r2, lsl #8
d0080aae:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080ab2:	006d      	lsls	r5, r5, #1
d0080ab4:	ea41 420c 	orr.w	r2, r1, ip, lsl #16
d0080ab8:	b2ed      	uxtb	r5, r5
d0080aba:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080abe:	685b      	ldr	r3, [r3, #4]
d0080ac0:	68db      	ldr	r3, [r3, #12]
d0080ac2:	4798      	blx	r3
d0080ac4:	f89b c00c 	ldrb.w	ip, [fp, #12]
d0080ac8:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080acc:	2360      	movs	r3, #96	; 0x60
d0080ace:	f89b 000e 	ldrb.w	r0, [fp, #14]
d0080ad2:	2212      	movs	r2, #18
d0080ad4:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0080ad8:	f89b 600f 	ldrb.w	r6, [fp, #15]
d0080adc:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d0080ae0:	2158      	movs	r1, #88	; 0x58
d0080ae2:	ea40 6606 	orr.w	r6, r0, r6, lsl #24
d0080ae6:	4648      	mov	r0, r9
d0080ae8:	6876      	ldr	r6, [r6, #4]
d0080aea:	6876      	ldr	r6, [r6, #4]
d0080aec:	47b0      	blx	r6
d0080aee:	2f40      	cmp	r7, #64	; 0x40
d0080af0:	f04f 000a 	mov.w	r0, #10
d0080af4:	d803      	bhi.n	d0080afe <main+0x8ce>
d0080af6:	2f2b      	cmp	r7, #43	; 0x2b
d0080af8:	bf34      	ite	cc
d0080afa:	2008      	movcc	r0, #8
d0080afc:	2009      	movcs	r0, #9
d0080afe:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0080b02:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080b06:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080b0a:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d0080b0e:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080b12:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080b16:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080b1a:	685b      	ldr	r3, [r3, #4]
d0080b1c:	68db      	ldr	r3, [r3, #12]
d0080b1e:	4798      	blx	r3
d0080b20:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0080b24:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0080b28:	2305      	movs	r3, #5
d0080b2a:	f89b c00e 	ldrb.w	ip, [fp, #14]
d0080b2e:	2212      	movs	r2, #18
d0080b30:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0080b34:	f89b 600f 	ldrb.w	r6, [fp, #15]
d0080b38:	f1c7 01b2 	rsb	r1, r7, #178	; 0xb2
d0080b3c:	3708      	adds	r7, #8
d0080b3e:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0080b42:	4648      	mov	r0, r9
d0080b44:	b2ff      	uxtb	r7, r7
d0080b46:	ea4c 6606 	orr.w	r6, ip, r6, lsl #24
d0080b4a:	6876      	ldr	r6, [r6, #4]
d0080b4c:	6876      	ldr	r6, [r6, #4]
d0080b4e:	47b0      	blx	r6
d0080b50:	42bd      	cmp	r5, r7
d0080b52:	d8cc      	bhi.n	d0080aee <main+0x8be>
d0080b54:	f108 081a 	add.w	r8, r8, #26
d0080b58:	340d      	adds	r4, #13
d0080b5a:	fa1f f888 	uxth.w	r8, r8
d0080b5e:	b2e4      	uxtb	r4, r4
d0080b60:	f5b8 7fe6 	cmp.w	r8, #460	; 0x1cc
d0080b64:	d18f      	bne.n	d0080a86 <main+0x856>
d0080b66:	f89b 600c 	ldrb.w	r6, [fp, #12]
d0080b6a:	2501      	movs	r5, #1
d0080b6c:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080b70:	2007      	movs	r0, #7
d0080b72:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080b76:	24fa      	movs	r4, #250	; 0xfa
d0080b78:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
d0080b7c:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080b80:	4f52      	ldr	r7, [pc, #328]	; (d0080ccc <main+0xa9c>)
d0080b82:	2600      	movs	r6, #0
d0080b84:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080b88:	f8df 8150 	ldr.w	r8, [pc, #336]	; d0080cdc <main+0xaac>
d0080b8c:	f8df 9150 	ldr.w	r9, [pc, #336]	; d0080ce0 <main+0xab0>
d0080b90:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080b94:	685b      	ldr	r3, [r3, #4]
d0080b96:	68db      	ldr	r3, [r3, #12]
d0080b98:	4798      	blx	r3
d0080b9a:	f89b c00c 	ldrb.w	ip, [fp, #12]
d0080b9e:	fa2a f205 	lsr.w	r2, sl, r5
d0080ba2:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080ba6:	f44f 709f 	mov.w	r0, #318	; 0x13e
d0080baa:	ea4c 2301 	orr.w	r3, ip, r1, lsl #8
d0080bae:	fba7 7202 	umull	r7, r2, r7, r2
d0080bb2:	f89b 100e 	ldrb.w	r1, [fp, #14]
d0080bb6:	0912      	lsrs	r2, r2, #4
d0080bb8:	f89b 700f 	ldrb.w	r7, [fp, #15]
d0080bbc:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
d0080bc0:	2303      	movs	r3, #3
d0080bc2:	fb00 a212 	mls	r2, r0, r2, sl
d0080bc6:	202c      	movs	r0, #44	; 0x2c
d0080bc8:	ea41 6707 	orr.w	r7, r1, r7, lsl #24
d0080bcc:	21c3      	movs	r1, #195	; 0xc3
d0080bce:	3250      	adds	r2, #80	; 0x50
d0080bd0:	687f      	ldr	r7, [r7, #4]
d0080bd2:	b212      	sxth	r2, r2
d0080bd4:	687f      	ldr	r7, [r7, #4]
d0080bd6:	47b8      	blx	r7
d0080bd8:	2346      	movs	r3, #70	; 0x46
d0080bda:	f44f 7293 	mov.w	r2, #294	; 0x126
d0080bde:	21de      	movs	r1, #222	; 0xde
d0080be0:	201c      	movs	r0, #28
d0080be2:	f7ff fa9f 	bl	d0080124 <draw_panel>
d0080be6:	f89b 700c 	ldrb.w	r7, [fp, #12]
d0080bea:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080bee:	2006      	movs	r0, #6
d0080bf0:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080bf4:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d0080bf8:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080bfc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080c00:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080c04:	685b      	ldr	r3, [r3, #4]
d0080c06:	68db      	ldr	r3, [r3, #12]
d0080c08:	4798      	blx	r3
d0080c0a:	f89b 700c 	ldrb.w	r7, [fp, #12]
d0080c0e:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0080c12:	21ea      	movs	r1, #234	; 0xea
d0080c14:	f89b 000e 	ldrb.w	r0, [fp, #14]
d0080c18:	ea47 2202 	orr.w	r2, r7, r2, lsl #8
d0080c1c:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080c20:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d0080c24:	4a2a      	ldr	r2, [pc, #168]	; (d0080cd0 <main+0xaa0>)
d0080c26:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d0080c2a:	202a      	movs	r0, #42	; 0x2a
d0080c2c:	685b      	ldr	r3, [r3, #4]
d0080c2e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0080c30:	4798      	blx	r3
d0080c32:	f8cd a00c 	str.w	sl, [sp, #12]
d0080c36:	4b27      	ldr	r3, [pc, #156]	; (d0080cd4 <main+0xaa4>)
d0080c38:	b2f7      	uxtb	r7, r6
d0080c3a:	2006      	movs	r0, #6
d0080c3c:	f89b c00c 	ldrb.w	ip, [fp, #12]
d0080c40:	781b      	ldrb	r3, [r3, #0]
d0080c42:	42bb      	cmp	r3, r7
d0080c44:	f000 8227 	beq.w	d0081096 <main+0xe66>
d0080c48:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080c4c:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080c50:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0080c54:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080c58:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080c5c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080c60:	685b      	ldr	r3, [r3, #4]
d0080c62:	68db      	ldr	r3, [r3, #12]
d0080c64:	4798      	blx	r3
d0080c66:	4621      	mov	r1, r4
d0080c68:	4642      	mov	r2, r8
d0080c6a:	202e      	movs	r0, #46	; 0x2e
d0080c6c:	2e00      	cmp	r6, #0
d0080c6e:	f000 81fa 	beq.w	d0081066 <main+0xe36>
d0080c72:	2f01      	cmp	r7, #1
d0080c74:	f000 82be 	beq.w	d00811f4 <main+0xfc4>
d0080c78:	f89b e00c 	ldrb.w	lr, [fp, #12]
d0080c7c:	f89b 700d 	ldrb.w	r7, [fp, #13]
d0080c80:	f89b a00e 	ldrb.w	sl, [fp, #14]
d0080c84:	ea4e 2c07 	orr.w	ip, lr, r7, lsl #8
d0080c88:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080c8c:	ea4c 470a 	orr.w	r7, ip, sl, lsl #16
d0080c90:	ea47 6303 	orr.w	r3, r7, r3, lsl #24
d0080c94:	685b      	ldr	r3, [r3, #4]
d0080c96:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0080c98:	4798      	blx	r3
d0080c9a:	2d03      	cmp	r5, #3
d0080c9c:	f040 81f6 	bne.w	d008108c <main+0xe5c>
d0080ca0:	4b0d      	ldr	r3, [pc, #52]	; (d0080cd8 <main+0xaa8>)
d0080ca2:	226e      	movs	r2, #110	; 0x6e
d0080ca4:	21de      	movs	r1, #222	; 0xde
d0080ca6:	f44f 70aa 	mov.w	r0, #340	; 0x154
d0080caa:	781c      	ldrb	r4, [r3, #0]
d0080cac:	2346      	movs	r3, #70	; 0x46
d0080cae:	f8dd a00c 	ldr.w	sl, [sp, #12]
d0080cb2:	f7ff fa37 	bl	d0080124 <draw_panel>
d0080cb6:	e015      	b.n	d0080ce4 <main+0xab4>
d0080cb8:	d0081e30 	.word	0xd0081e30
d0080cbc:	d00823e3 	.word	0xd00823e3
d0080cc0:	d0081dc4 	.word	0xd0081dc4
d0080cc4:	d0081dd4 	.word	0xd0081dd4
d0080cc8:	d0081e44 	.word	0xd0081e44
d0080ccc:	19c2d14f 	.word	0x19c2d14f
d0080cd0:	d0081e5c 	.word	0xd0081e5c
d0080cd4:	d00823e2 	.word	0xd00823e2
d0080cd8:	d00823e0 	.word	0xd00823e0
d0080cdc:	d0081e94 	.word	0xd0081e94
d0080ce0:	d0081e68 	.word	0xd0081e68
d0080ce4:	eb04 0444 	add.w	r4, r4, r4, lsl #1
d0080ce8:	4dcd      	ldr	r5, [pc, #820]	; (d0081020 <main+0xdf0>)
d0080cea:	4bce      	ldr	r3, [pc, #824]	; (d0081024 <main+0xdf4>)
d0080cec:	ebc4 04c4 	rsb	r4, r4, r4, lsl #3
d0080cf0:	781b      	ldrb	r3, [r3, #0]
d0080cf2:	00a4      	lsls	r4, r4, #2
d0080cf4:	fba5 5404 	umull	r5, r4, r5, r4
d0080cf8:	f344 144f 	sbfx	r4, r4, #5, #16
d0080cfc:	2b00      	cmp	r3, #0
d0080cfe:	d034      	beq.n	d0080d6a <main+0xb3a>
d0080d00:	4bc9      	ldr	r3, [pc, #804]	; (d0081028 <main+0xdf8>)
d0080d02:	881b      	ldrh	r3, [r3, #0]
d0080d04:	f5a3 73aa 	sub.w	r3, r3, #340	; 0x154
d0080d08:	b29b      	uxth	r3, r3
d0080d0a:	2b6d      	cmp	r3, #109	; 0x6d
d0080d0c:	d82d      	bhi.n	d0080d6a <main+0xb3a>
d0080d0e:	4bc7      	ldr	r3, [pc, #796]	; (d008102c <main+0xdfc>)
d0080d10:	881b      	ldrh	r3, [r3, #0]
d0080d12:	3bde      	subs	r3, #222	; 0xde
d0080d14:	b29b      	uxth	r3, r3
d0080d16:	2b45      	cmp	r3, #69	; 0x45
d0080d18:	d827      	bhi.n	d0080d6a <main+0xb3a>
d0080d1a:	f89b 500c 	ldrb.w	r5, [fp, #12]
d0080d1e:	2004      	movs	r0, #4
d0080d20:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080d24:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080d28:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d0080d2c:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080d30:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080d34:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080d38:	685b      	ldr	r3, [r3, #4]
d0080d3a:	68db      	ldr	r3, [r3, #12]
d0080d3c:	4798      	blx	r3
d0080d3e:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0080d42:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0080d46:	233e      	movs	r3, #62	; 0x3e
d0080d48:	f89b 600e 	ldrb.w	r6, [fp, #14]
d0080d4c:	2266      	movs	r2, #102	; 0x66
d0080d4e:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0080d52:	f89b 500f 	ldrb.w	r5, [fp, #15]
d0080d56:	21e2      	movs	r1, #226	; 0xe2
d0080d58:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d0080d5c:	f44f 70ac 	mov.w	r0, #344	; 0x158
d0080d60:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0080d64:	686d      	ldr	r5, [r5, #4]
d0080d66:	686d      	ldr	r5, [r5, #4]
d0080d68:	47a8      	blx	r5
d0080d6a:	4bb1      	ldr	r3, [pc, #708]	; (d0081030 <main+0xe00>)
d0080d6c:	781b      	ldrb	r3, [r3, #0]
d0080d6e:	2b00      	cmp	r3, #0
d0080d70:	f000 81f8 	beq.w	d0081164 <main+0xf34>
d0080d74:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0080d78:	2008      	movs	r0, #8
d0080d7a:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080d7e:	2700      	movs	r7, #0
d0080d80:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080d84:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0080d88:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080d8c:	f89b 200f 	ldrb.w	r2, [fp, #15]
d0080d90:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080d94:	685b      	ldr	r3, [r3, #4]
d0080d96:	68db      	ldr	r3, [r3, #12]
d0080d98:	4798      	blx	r3
d0080d9a:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0080d9e:	b2b8      	uxth	r0, r7
d0080da0:	f89b 600d 	ldrb.w	r6, [fp, #13]
d0080da4:	f347 014e 	sbfx	r1, r7, #1, #15
d0080da8:	f89b 500e 	ldrb.w	r5, [fp, #14]
d0080dac:	3701      	adds	r7, #1
d0080dae:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
d0080db2:	f89b c00f 	ldrb.w	ip, [fp, #15]
d0080db6:	f100 030a 	add.w	r3, r0, #10
d0080dba:	f500 70b8 	add.w	r0, r0, #368	; 0x170
d0080dbe:	ea42 4605 	orr.w	r6, r2, r5, lsl #16
d0080dc2:	f1c1 01f4 	rsb	r1, r1, #244	; 0xf4
d0080dc6:	b21b      	sxth	r3, r3
d0080dc8:	2201      	movs	r2, #1
d0080dca:	ea46 650c 	orr.w	r5, r6, ip, lsl #24
d0080dce:	b200      	sxth	r0, r0
d0080dd0:	686d      	ldr	r5, [r5, #4]
d0080dd2:	686d      	ldr	r5, [r5, #4]
d0080dd4:	47a8      	blx	r5
d0080dd6:	2f12      	cmp	r7, #18
d0080dd8:	d1df      	bne.n	d0080d9a <main+0xb6a>
d0080dda:	f89b 500c 	ldrb.w	r5, [fp, #12]
d0080dde:	2002      	movs	r0, #2
d0080de0:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080de4:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080de8:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d0080dec:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080df0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080df4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080df8:	685b      	ldr	r3, [r3, #4]
d0080dfa:	68db      	ldr	r3, [r3, #12]
d0080dfc:	4798      	blx	r3
d0080dfe:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0080e02:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0080e06:	2303      	movs	r3, #3
d0080e08:	f89b 600e 	ldrb.w	r6, [fp, #14]
d0080e0c:	2254      	movs	r2, #84	; 0x54
d0080e0e:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0080e12:	f89b 500f 	ldrb.w	r5, [fp, #15]
d0080e16:	f240 1115 	movw	r1, #277	; 0x115
d0080e1a:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d0080e1e:	f44f 70b4 	mov.w	r0, #360	; 0x168
d0080e22:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0080e26:	686d      	ldr	r5, [r5, #4]
d0080e28:	686d      	ldr	r5, [r5, #4]
d0080e2a:	47a8      	blx	r5
d0080e2c:	f89b 500c 	ldrb.w	r5, [fp, #12]
d0080e30:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080e34:	2007      	movs	r0, #7
d0080e36:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080e3a:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d0080e3e:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080e42:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080e46:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080e4a:	685b      	ldr	r3, [r3, #4]
d0080e4c:	68db      	ldr	r3, [r3, #12]
d0080e4e:	4798      	blx	r3
d0080e50:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0080e54:	f89b 600d 	ldrb.w	r6, [fp, #13]
d0080e58:	4622      	mov	r2, r4
d0080e5a:	f89b 500e 	ldrb.w	r5, [fp, #14]
d0080e5e:	2303      	movs	r3, #3
d0080e60:	ea41 2606 	orr.w	r6, r1, r6, lsl #8
d0080e64:	f89b 400f 	ldrb.w	r4, [fp, #15]
d0080e68:	f240 1115 	movw	r1, #277	; 0x115
d0080e6c:	f44f 70b4 	mov.w	r0, #360	; 0x168
d0080e70:	ea46 4505 	orr.w	r5, r6, r5, lsl #16
d0080e74:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0080e78:	6864      	ldr	r4, [r4, #4]
d0080e7a:	6864      	ldr	r4, [r4, #4]
d0080e7c:	47a0      	blx	r4
d0080e7e:	f89b 400c 	ldrb.w	r4, [fp, #12]
d0080e82:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080e86:	2006      	movs	r0, #6
d0080e88:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080e8c:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0080e90:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080e94:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080e98:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080e9c:	685b      	ldr	r3, [r3, #4]
d0080e9e:	68db      	ldr	r3, [r3, #12]
d0080ea0:	4798      	blx	r3
d0080ea2:	f89b 200c 	ldrb.w	r2, [fp, #12]
d0080ea6:	f89b 500d 	ldrb.w	r5, [fp, #13]
d0080eaa:	21e4      	movs	r1, #228	; 0xe4
d0080eac:	f89b 400e 	ldrb.w	r4, [fp, #14]
d0080eb0:	f44f 70b3 	mov.w	r0, #358	; 0x166
d0080eb4:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
d0080eb8:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080ebc:	4a5c      	ldr	r2, [pc, #368]	; (d0081030 <main+0xe00>)
d0080ebe:	ea45 4404 	orr.w	r4, r5, r4, lsl #16
d0080ec2:	4d5c      	ldr	r5, [pc, #368]	; (d0081034 <main+0xe04>)
d0080ec4:	7816      	ldrb	r6, [r2, #0]
d0080ec6:	ea44 6303 	orr.w	r3, r4, r3, lsl #24
d0080eca:	4a5b      	ldr	r2, [pc, #364]	; (d0081038 <main+0xe08>)
d0080ecc:	685b      	ldr	r3, [r3, #4]
d0080ece:	2e00      	cmp	r6, #0
d0080ed0:	bf08      	it	eq
d0080ed2:	462a      	moveq	r2, r5
d0080ed4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0080ed6:	4798      	blx	r3
d0080ed8:	4b52      	ldr	r3, [pc, #328]	; (d0081024 <main+0xdf4>)
d0080eda:	781b      	ldrb	r3, [r3, #0]
d0080edc:	2b00      	cmp	r3, #0
d0080ede:	f000 8138 	beq.w	d0081152 <main+0xf22>
d0080ee2:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0080ee6:	200d      	movs	r0, #13
d0080ee8:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0080eec:	4e4e      	ldr	r6, [pc, #312]	; (d0081028 <main+0xdf8>)
d0080eee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080ef2:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080ef6:	4f4d      	ldr	r7, [pc, #308]	; (d008102c <main+0xdfc>)
d0080ef8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080efc:	f89b 200f 	ldrb.w	r2, [fp, #15]
d0080f00:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080f04:	685b      	ldr	r3, [r3, #4]
d0080f06:	68db      	ldr	r3, [r3, #12]
d0080f08:	4798      	blx	r3
d0080f0a:	f89b 000c 	ldrb.w	r0, [fp, #12]
d0080f0e:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080f12:	2301      	movs	r3, #1
d0080f14:	f89b 500e 	ldrb.w	r5, [fp, #14]
d0080f18:	2211      	movs	r2, #17
d0080f1a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0080f1e:	f89b 400f 	ldrb.w	r4, [fp, #15]
d0080f22:	8830      	ldrh	r0, [r6, #0]
d0080f24:	ea41 4505 	orr.w	r5, r1, r5, lsl #16
d0080f28:	f9b7 1000 	ldrsh.w	r1, [r7]
d0080f2c:	3808      	subs	r0, #8
d0080f2e:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0080f32:	b200      	sxth	r0, r0
d0080f34:	6864      	ldr	r4, [r4, #4]
d0080f36:	6864      	ldr	r4, [r4, #4]
d0080f38:	47a0      	blx	r4
d0080f3a:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0080f3e:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0080f42:	2311      	movs	r3, #17
d0080f44:	f89b 500e 	ldrb.w	r5, [fp, #14]
d0080f48:	2201      	movs	r2, #1
d0080f4a:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0080f4e:	f89b 400f 	ldrb.w	r4, [fp, #15]
d0080f52:	8839      	ldrh	r1, [r7, #0]
d0080f54:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0080f58:	f9b6 0000 	ldrsh.w	r0, [r6]
d0080f5c:	3908      	subs	r1, #8
d0080f5e:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0080f62:	b209      	sxth	r1, r1
d0080f64:	6864      	ldr	r4, [r4, #4]
d0080f66:	6864      	ldr	r4, [r4, #4]
d0080f68:	47a0      	blx	r4
d0080f6a:	4b34      	ldr	r3, [pc, #208]	; (d008103c <main+0xe0c>)
d0080f6c:	781b      	ldrb	r3, [r3, #0]
d0080f6e:	b353      	cbz	r3, d0080fc6 <main+0xd96>
d0080f70:	f89b 400c 	ldrb.w	r4, [fp, #12]
d0080f74:	200c      	movs	r0, #12
d0080f76:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080f7a:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080f7e:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0080f82:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080f86:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080f8a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080f8e:	685b      	ldr	r3, [r3, #4]
d0080f90:	68db      	ldr	r3, [r3, #12]
d0080f92:	4798      	blx	r3
d0080f94:	f89b 200c 	ldrb.w	r2, [fp, #12]
d0080f98:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0080f9c:	2305      	movs	r3, #5
d0080f9e:	f89b 500e 	ldrb.w	r5, [fp, #14]
d0080fa2:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d0080fa6:	f89b 400f 	ldrb.w	r4, [fp, #15]
d0080faa:	8839      	ldrh	r1, [r7, #0]
d0080fac:	461a      	mov	r2, r3
d0080fae:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0080fb2:	8830      	ldrh	r0, [r6, #0]
d0080fb4:	3902      	subs	r1, #2
d0080fb6:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0080fba:	3802      	subs	r0, #2
d0080fbc:	b209      	sxth	r1, r1
d0080fbe:	6864      	ldr	r4, [r4, #4]
d0080fc0:	b200      	sxth	r0, r0
d0080fc2:	6864      	ldr	r4, [r4, #4]
d0080fc4:	47a0      	blx	r4
d0080fc6:	f89b 400c 	ldrb.w	r4, [fp, #12]
d0080fca:	2006      	movs	r0, #6
d0080fcc:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0080fd0:	f10a 0a01 	add.w	sl, sl, #1
d0080fd4:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0080fd8:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0080fdc:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0080fe0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080fe4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080fe8:	685b      	ldr	r3, [r3, #4]
d0080fea:	68db      	ldr	r3, [r3, #12]
d0080fec:	4798      	blx	r3
d0080fee:	f89b 500c 	ldrb.w	r5, [fp, #12]
d0080ff2:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0080ff6:	f44f 7198 	mov.w	r1, #304	; 0x130
d0080ffa:	f89b 400e 	ldrb.w	r4, [fp, #14]
d0080ffe:	2012      	movs	r0, #18
d0081000:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
d0081004:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0081008:	ea42 4404 	orr.w	r4, r2, r4, lsl #16
d008100c:	4a0c      	ldr	r2, [pc, #48]	; (d0081040 <main+0xe10>)
d008100e:	ea44 6303 	orr.w	r3, r4, r3, lsl #24
d0081012:	685b      	ldr	r3, [r3, #4]
d0081014:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0081016:	4798      	blx	r3
d0081018:	f89b 000c 	ldrb.w	r0, [fp, #12]
d008101c:	e012      	b.n	d0081044 <main+0xe14>
d008101e:	bf00      	nop
d0081020:	51eb851f 	.word	0x51eb851f
d0081024:	d00823e3 	.word	0xd00823e3
d0081028:	d00823e6 	.word	0xd00823e6
d008102c:	d00823e8 	.word	0xd00823e8
d0081030:	d00823e1 	.word	0xd00823e1
d0081034:	d0081dec 	.word	0xd0081dec
d0081038:	d0081de4 	.word	0xd0081de4
d008103c:	d00823e4 	.word	0xd00823e4
d0081040:	d0081ea8 	.word	0xd0081ea8
d0081044:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0081048:	f89b 200e 	ldrb.w	r2, [fp, #14]
d008104c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0081050:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0081054:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0081058:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008105c:	681b      	ldr	r3, [r3, #0]
d008105e:	681b      	ldr	r3, [r3, #0]
d0081060:	4798      	blx	r3
d0081062:	f7ff ba5b 	b.w	d008051c <main+0x2ec>
d0081066:	f89b c00c 	ldrb.w	ip, [fp, #12]
d008106a:	464a      	mov	r2, r9
d008106c:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0081070:	f89b 700e 	ldrb.w	r7, [fp, #14]
d0081074:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d0081078:	f89b 300f 	ldrb.w	r3, [fp, #15]
d008107c:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0081080:	202e      	movs	r0, #46	; 0x2e
d0081082:	ea47 6303 	orr.w	r3, r7, r3, lsl #24
d0081086:	685b      	ldr	r3, [r3, #4]
d0081088:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d008108a:	4798      	blx	r3
d008108c:	3501      	adds	r5, #1
d008108e:	3601      	adds	r6, #1
d0081090:	340d      	adds	r4, #13
d0081092:	b2ed      	uxtb	r5, r5
d0081094:	e5cf      	b.n	d0080c36 <main+0xa06>
d0081096:	f89b 100d 	ldrb.w	r1, [fp, #13]
d008109a:	200b      	movs	r0, #11
d008109c:	f89b 200e 	ldrb.w	r2, [fp, #14]
d00810a0:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d00810a4:	f89b 300f 	ldrb.w	r3, [fp, #15]
d00810a8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00810ac:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00810b0:	685b      	ldr	r3, [r3, #4]
d00810b2:	68db      	ldr	r3, [r3, #12]
d00810b4:	4798      	blx	r3
d00810b6:	f89b 200c 	ldrb.w	r2, [fp, #12]
d00810ba:	f89b 000d 	ldrb.w	r0, [fp, #13]
d00810be:	1ea1      	subs	r1, r4, #2
d00810c0:	f89b e00e 	ldrb.w	lr, [fp, #14]
d00810c4:	230b      	movs	r3, #11
d00810c6:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d00810ca:	f89b c00f 	ldrb.w	ip, [fp, #15]
d00810ce:	b209      	sxth	r1, r1
d00810d0:	f44f 7287 	mov.w	r2, #270	; 0x10e
d00810d4:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d00810d8:	2027      	movs	r0, #39	; 0x27
d00810da:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d00810de:	f8dc c004 	ldr.w	ip, [ip, #4]
d00810e2:	f8dc a004 	ldr.w	sl, [ip, #4]
d00810e6:	47d0      	blx	sl
d00810e8:	f89b 000c 	ldrb.w	r0, [fp, #12]
d00810ec:	f89b 100d 	ldrb.w	r1, [fp, #13]
d00810f0:	f89b 200e 	ldrb.w	r2, [fp, #14]
d00810f4:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00810f8:	f89b 300f 	ldrb.w	r3, [fp, #15]
d00810fc:	4862      	ldr	r0, [pc, #392]	; (d0081288 <main+0x1058>)
d00810fe:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0081102:	7800      	ldrb	r0, [r0, #0]
d0081104:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0081108:	42b8      	cmp	r0, r7
d008110a:	bf0c      	ite	eq
d008110c:	200d      	moveq	r0, #13
d008110e:	2006      	movne	r0, #6
d0081110:	685b      	ldr	r3, [r3, #4]
d0081112:	68db      	ldr	r3, [r3, #12]
d0081114:	e5a6      	b.n	d0080c64 <main+0xa34>
d0081116:	4b5d      	ldr	r3, [pc, #372]	; (d008128c <main+0x105c>)
d0081118:	781b      	ldrb	r3, [r3, #0]
d008111a:	b113      	cbz	r3, d0081122 <main+0xef2>
d008111c:	3b01      	subs	r3, #1
d008111e:	4a5b      	ldr	r2, [pc, #364]	; (d008128c <main+0x105c>)
d0081120:	7013      	strb	r3, [r2, #0]
d0081122:	4b5b      	ldr	r3, [pc, #364]	; (d0081290 <main+0x1060>)
d0081124:	7019      	strb	r1, [r3, #0]
d0081126:	4b5b      	ldr	r3, [pc, #364]	; (d0081294 <main+0x1064>)
d0081128:	781a      	ldrb	r2, [r3, #0]
d008112a:	2a00      	cmp	r2, #0
d008112c:	f47f aa8b 	bne.w	d0080646 <main+0x416>
d0081130:	f01a 0f03 	tst.w	sl, #3
d0081134:	f47f aa87 	bne.w	d0080646 <main+0x416>
d0081138:	4857      	ldr	r0, [pc, #348]	; (d0081298 <main+0x1068>)
d008113a:	2165      	movs	r1, #101	; 0x65
d008113c:	4b57      	ldr	r3, [pc, #348]	; (d008129c <main+0x106c>)
d008113e:	7802      	ldrb	r2, [r0, #0]
d0081140:	3201      	adds	r2, #1
d0081142:	fb83 4302 	smull	r4, r3, r3, r2
d0081146:	091b      	lsrs	r3, r3, #4
d0081148:	fb01 2313 	mls	r3, r1, r3, r2
d008114c:	7003      	strb	r3, [r0, #0]
d008114e:	f7ff ba7a 	b.w	d0080646 <main+0x416>
d0081152:	4b4e      	ldr	r3, [pc, #312]	; (d008128c <main+0x105c>)
d0081154:	781b      	ldrb	r3, [r3, #0]
d0081156:	2b00      	cmp	r3, #0
d0081158:	f43f af35 	beq.w	d0080fc6 <main+0xd96>
d008115c:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0081160:	2007      	movs	r0, #7
d0081162:	e6c1      	b.n	d0080ee8 <main+0xcb8>
d0081164:	f89b 500c 	ldrb.w	r5, [fp, #12]
d0081168:	2009      	movs	r0, #9
d008116a:	f89b 100d 	ldrb.w	r1, [fp, #13]
d008116e:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0081172:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d0081176:	f89b 300f 	ldrb.w	r3, [fp, #15]
d008117a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d008117e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0081182:	685b      	ldr	r3, [r3, #4]
d0081184:	68db      	ldr	r3, [r3, #12]
d0081186:	4798      	blx	r3
d0081188:	f89b 100c 	ldrb.w	r1, [fp, #12]
d008118c:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0081190:	231e      	movs	r3, #30
d0081192:	f89b 600e 	ldrb.w	r6, [fp, #14]
d0081196:	2205      	movs	r2, #5
d0081198:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d008119c:	f89b 500f 	ldrb.w	r5, [fp, #15]
d00811a0:	21ef      	movs	r1, #239	; 0xef
d00811a2:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d00811a6:	f44f 70bc 	mov.w	r0, #376	; 0x178
d00811aa:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d00811ae:	686d      	ldr	r5, [r5, #4]
d00811b0:	686d      	ldr	r5, [r5, #4]
d00811b2:	47a8      	blx	r5
d00811b4:	f89b 100c 	ldrb.w	r1, [fp, #12]
d00811b8:	f89b 000d 	ldrb.w	r0, [fp, #13]
d00811bc:	231e      	movs	r3, #30
d00811be:	f89b 600e 	ldrb.w	r6, [fp, #14]
d00811c2:	2205      	movs	r2, #5
d00811c4:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d00811c8:	f89b 500f 	ldrb.w	r5, [fp, #15]
d00811cc:	21ef      	movs	r1, #239	; 0xef
d00811ce:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d00811d2:	f240 1085 	movw	r0, #389	; 0x185
d00811d6:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d00811da:	686d      	ldr	r5, [r5, #4]
d00811dc:	686d      	ldr	r5, [r5, #4]
d00811de:	47a8      	blx	r5
d00811e0:	e5fb      	b.n	d0080dda <main+0xbaa>
d00811e2:	492f      	ldr	r1, [pc, #188]	; (d00812a0 <main+0x1070>)
d00811e4:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d00811e8:	f89b 300f 	ldrb.w	r3, [fp, #15]
d00811ec:	6809      	ldr	r1, [r1, #0]
d00811ee:	482d      	ldr	r0, [pc, #180]	; (d00812a4 <main+0x1074>)
d00811f0:	f7ff ba53 	b.w	d008069a <main+0x46a>
d00811f4:	f89b c00c 	ldrb.w	ip, [fp, #12]
d00811f8:	4a2b      	ldr	r2, [pc, #172]	; (d00812a8 <main+0x1078>)
d00811fa:	f89b 000d 	ldrb.w	r0, [fp, #13]
d00811fe:	e737      	b.n	d0081070 <main+0xe40>
d0081200:	f04f 0200 	mov.w	r2, #0
d0081204:	8022      	strh	r2, [r4, #0]
d0081206:	2200      	movs	r2, #0
d0081208:	f7ff b9f5 	b.w	d00805f6 <main+0x3c6>
d008120c:	f04f 0300 	mov.w	r3, #0
d0081210:	8013      	strh	r3, [r2, #0]
d0081212:	2300      	movs	r3, #0
d0081214:	f7ff b9a7 	b.w	d0080566 <main+0x336>
d0081218:	4a1f      	ldr	r2, [pc, #124]	; (d0081298 <main+0x1068>)
d008121a:	4b24      	ldr	r3, [pc, #144]	; (d00812ac <main+0x107c>)
d008121c:	7010      	strb	r0, [r2, #0]
d008121e:	4a1d      	ldr	r2, [pc, #116]	; (d0081294 <main+0x1064>)
d0081220:	fba3 3101 	umull	r3, r1, r3, r1
d0081224:	2301      	movs	r3, #1
d0081226:	7010      	strb	r0, [r2, #0]
d0081228:	0889      	lsrs	r1, r1, #2
d008122a:	4a19      	ldr	r2, [pc, #100]	; (d0081290 <main+0x1060>)
d008122c:	7013      	strb	r3, [r2, #0]
d008122e:	4b16      	ldr	r3, [pc, #88]	; (d0081288 <main+0x1058>)
d0081230:	7019      	strb	r1, [r3, #0]
d0081232:	e77d      	b.n	d0081130 <main+0xf00>
d0081234:	b292      	uxth	r2, r2
d0081236:	f5a2 7189 	sub.w	r1, r2, #274	; 0x112
d008123a:	290e      	cmp	r1, #14
d008123c:	d802      	bhi.n	d0081244 <main+0x1014>
d008123e:	f5b3 7fde 	cmp.w	r3, #444	; 0x1bc
d0081242:	db0f      	blt.n	d0081264 <main+0x1034>
d0081244:	3ade      	subs	r2, #222	; 0xde
d0081246:	2a45      	cmp	r2, #69	; 0x45
d0081248:	f63f a9f5 	bhi.w	d0080636 <main+0x406>
d008124c:	f5b3 7fe1 	cmp.w	r3, #450	; 0x1c2
d0081250:	f6bf a9f1 	bge.w	d0080636 <main+0x406>
d0081254:	4b0f      	ldr	r3, [pc, #60]	; (d0081294 <main+0x1064>)
d0081256:	781a      	ldrb	r2, [r3, #0]
d0081258:	fab2 f282 	clz	r2, r2
d008125c:	0952      	lsrs	r2, r2, #5
d008125e:	701a      	strb	r2, [r3, #0]
d0081260:	f7ff b9eb 	b.w	d008063a <main+0x40a>
d0081264:	f5a3 72b4 	sub.w	r2, r3, #360	; 0x168
d0081268:	2364      	movs	r3, #100	; 0x64
d008126a:	4911      	ldr	r1, [pc, #68]	; (d00812b0 <main+0x1080>)
d008126c:	fb03 f302 	mul.w	r3, r3, r2
d0081270:	4a08      	ldr	r2, [pc, #32]	; (d0081294 <main+0x1064>)
d0081272:	089b      	lsrs	r3, r3, #2
d0081274:	7812      	ldrb	r2, [r2, #0]
d0081276:	fba1 1303 	umull	r1, r3, r1, r3
d008127a:	4907      	ldr	r1, [pc, #28]	; (d0081298 <main+0x1068>)
d008127c:	089b      	lsrs	r3, r3, #2
d008127e:	700b      	strb	r3, [r1, #0]
d0081280:	f7ff b9db 	b.w	d008063a <main+0x40a>
d0081284:	b292      	uxth	r2, r2
d0081286:	e7dd      	b.n	d0081244 <main+0x1014>
d0081288:	d00823e2 	.word	0xd00823e2
d008128c:	d00823e4 	.word	0xd00823e4
d0081290:	d0081fc9 	.word	0xd0081fc9
d0081294:	d00823e1 	.word	0xd00823e1
d0081298:	d00823e0 	.word	0xd00823e0
d008129c:	288df0cb 	.word	0x288df0cb
d00812a0:	d0082420 	.word	0xd0082420
d00812a4:	d0082400 	.word	0xd0082400
d00812a8:	d0081e7c 	.word	0xd0081e7c
d00812ac:	4ec4ec4f 	.word	0x4ec4ec4f
d00812b0:	30c30c31 	.word	0x30c30c31

d00812b4 <__errno>:
d00812b4:	4b01      	ldr	r3, [pc, #4]	; (d00812bc <__errno+0x8>)
d00812b6:	6818      	ldr	r0, [r3, #0]
d00812b8:	4770      	bx	lr
d00812ba:	bf00      	nop
d00812bc:	d0081f44 	.word	0xd0081f44

d00812c0 <memset>:
d00812c0:	4402      	add	r2, r0
d00812c2:	4603      	mov	r3, r0
d00812c4:	4293      	cmp	r3, r2
d00812c6:	d100      	bne.n	d00812ca <memset+0xa>
d00812c8:	4770      	bx	lr
d00812ca:	f803 1b01 	strb.w	r1, [r3], #1
d00812ce:	e7f9      	b.n	d00812c4 <memset+0x4>

d00812d0 <_puts_r>:
d00812d0:	b570      	push	{r4, r5, r6, lr}
d00812d2:	460e      	mov	r6, r1
d00812d4:	4605      	mov	r5, r0
d00812d6:	b118      	cbz	r0, d00812e0 <_puts_r+0x10>
d00812d8:	6983      	ldr	r3, [r0, #24]
d00812da:	b90b      	cbnz	r3, d00812e0 <_puts_r+0x10>
d00812dc:	f000 fb16 	bl	d008190c <__sinit>
d00812e0:	69ab      	ldr	r3, [r5, #24]
d00812e2:	68ac      	ldr	r4, [r5, #8]
d00812e4:	b913      	cbnz	r3, d00812ec <_puts_r+0x1c>
d00812e6:	4628      	mov	r0, r5
d00812e8:	f000 fb10 	bl	d008190c <__sinit>
d00812ec:	4b2c      	ldr	r3, [pc, #176]	; (d00813a0 <_puts_r+0xd0>)
d00812ee:	429c      	cmp	r4, r3
d00812f0:	d120      	bne.n	d0081334 <_puts_r+0x64>
d00812f2:	686c      	ldr	r4, [r5, #4]
d00812f4:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00812f6:	07db      	lsls	r3, r3, #31
d00812f8:	d405      	bmi.n	d0081306 <_puts_r+0x36>
d00812fa:	89a3      	ldrh	r3, [r4, #12]
d00812fc:	0598      	lsls	r0, r3, #22
d00812fe:	d402      	bmi.n	d0081306 <_puts_r+0x36>
d0081300:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081302:	f000 fba1 	bl	d0081a48 <__retarget_lock_acquire_recursive>
d0081306:	89a3      	ldrh	r3, [r4, #12]
d0081308:	0719      	lsls	r1, r3, #28
d008130a:	d51d      	bpl.n	d0081348 <_puts_r+0x78>
d008130c:	6923      	ldr	r3, [r4, #16]
d008130e:	b1db      	cbz	r3, d0081348 <_puts_r+0x78>
d0081310:	3e01      	subs	r6, #1
d0081312:	68a3      	ldr	r3, [r4, #8]
d0081314:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d0081318:	3b01      	subs	r3, #1
d008131a:	60a3      	str	r3, [r4, #8]
d008131c:	bb39      	cbnz	r1, d008136e <_puts_r+0x9e>
d008131e:	2b00      	cmp	r3, #0
d0081320:	da38      	bge.n	d0081394 <_puts_r+0xc4>
d0081322:	4622      	mov	r2, r4
d0081324:	210a      	movs	r1, #10
d0081326:	4628      	mov	r0, r5
d0081328:	f000 f916 	bl	d0081558 <__swbuf_r>
d008132c:	3001      	adds	r0, #1
d008132e:	d011      	beq.n	d0081354 <_puts_r+0x84>
d0081330:	250a      	movs	r5, #10
d0081332:	e011      	b.n	d0081358 <_puts_r+0x88>
d0081334:	4b1b      	ldr	r3, [pc, #108]	; (d00813a4 <_puts_r+0xd4>)
d0081336:	429c      	cmp	r4, r3
d0081338:	d101      	bne.n	d008133e <_puts_r+0x6e>
d008133a:	68ac      	ldr	r4, [r5, #8]
d008133c:	e7da      	b.n	d00812f4 <_puts_r+0x24>
d008133e:	4b1a      	ldr	r3, [pc, #104]	; (d00813a8 <_puts_r+0xd8>)
d0081340:	429c      	cmp	r4, r3
d0081342:	bf08      	it	eq
d0081344:	68ec      	ldreq	r4, [r5, #12]
d0081346:	e7d5      	b.n	d00812f4 <_puts_r+0x24>
d0081348:	4621      	mov	r1, r4
d008134a:	4628      	mov	r0, r5
d008134c:	f000 f956 	bl	d00815fc <__swsetup_r>
d0081350:	2800      	cmp	r0, #0
d0081352:	d0dd      	beq.n	d0081310 <_puts_r+0x40>
d0081354:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0081358:	6e63      	ldr	r3, [r4, #100]	; 0x64
d008135a:	07da      	lsls	r2, r3, #31
d008135c:	d405      	bmi.n	d008136a <_puts_r+0x9a>
d008135e:	89a3      	ldrh	r3, [r4, #12]
d0081360:	059b      	lsls	r3, r3, #22
d0081362:	d402      	bmi.n	d008136a <_puts_r+0x9a>
d0081364:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081366:	f000 fb70 	bl	d0081a4a <__retarget_lock_release_recursive>
d008136a:	4628      	mov	r0, r5
d008136c:	bd70      	pop	{r4, r5, r6, pc}
d008136e:	2b00      	cmp	r3, #0
d0081370:	da04      	bge.n	d008137c <_puts_r+0xac>
d0081372:	69a2      	ldr	r2, [r4, #24]
d0081374:	429a      	cmp	r2, r3
d0081376:	dc06      	bgt.n	d0081386 <_puts_r+0xb6>
d0081378:	290a      	cmp	r1, #10
d008137a:	d004      	beq.n	d0081386 <_puts_r+0xb6>
d008137c:	6823      	ldr	r3, [r4, #0]
d008137e:	1c5a      	adds	r2, r3, #1
d0081380:	6022      	str	r2, [r4, #0]
d0081382:	7019      	strb	r1, [r3, #0]
d0081384:	e7c5      	b.n	d0081312 <_puts_r+0x42>
d0081386:	4622      	mov	r2, r4
d0081388:	4628      	mov	r0, r5
d008138a:	f000 f8e5 	bl	d0081558 <__swbuf_r>
d008138e:	3001      	adds	r0, #1
d0081390:	d1bf      	bne.n	d0081312 <_puts_r+0x42>
d0081392:	e7df      	b.n	d0081354 <_puts_r+0x84>
d0081394:	6823      	ldr	r3, [r4, #0]
d0081396:	250a      	movs	r5, #10
d0081398:	1c5a      	adds	r2, r3, #1
d008139a:	6022      	str	r2, [r4, #0]
d008139c:	701d      	strb	r5, [r3, #0]
d008139e:	e7db      	b.n	d0081358 <_puts_r+0x88>
d00813a0:	d0081efc 	.word	0xd0081efc
d00813a4:	d0081f1c 	.word	0xd0081f1c
d00813a8:	d0081edc 	.word	0xd0081edc

d00813ac <puts>:
d00813ac:	4b02      	ldr	r3, [pc, #8]	; (d00813b8 <puts+0xc>)
d00813ae:	4601      	mov	r1, r0
d00813b0:	6818      	ldr	r0, [r3, #0]
d00813b2:	f7ff bf8d 	b.w	d00812d0 <_puts_r>
d00813b6:	bf00      	nop
d00813b8:	d0081f44 	.word	0xd0081f44

d00813bc <setbuf>:
d00813bc:	2900      	cmp	r1, #0
d00813be:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00813c2:	bf0c      	ite	eq
d00813c4:	2202      	moveq	r2, #2
d00813c6:	2200      	movne	r2, #0
d00813c8:	f000 b800 	b.w	d00813cc <setvbuf>

d00813cc <setvbuf>:
d00813cc:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d00813d0:	461d      	mov	r5, r3
d00813d2:	4b5d      	ldr	r3, [pc, #372]	; (d0081548 <setvbuf+0x17c>)
d00813d4:	681f      	ldr	r7, [r3, #0]
d00813d6:	4604      	mov	r4, r0
d00813d8:	460e      	mov	r6, r1
d00813da:	4690      	mov	r8, r2
d00813dc:	b127      	cbz	r7, d00813e8 <setvbuf+0x1c>
d00813de:	69bb      	ldr	r3, [r7, #24]
d00813e0:	b913      	cbnz	r3, d00813e8 <setvbuf+0x1c>
d00813e2:	4638      	mov	r0, r7
d00813e4:	f000 fa92 	bl	d008190c <__sinit>
d00813e8:	4b58      	ldr	r3, [pc, #352]	; (d008154c <setvbuf+0x180>)
d00813ea:	429c      	cmp	r4, r3
d00813ec:	d167      	bne.n	d00814be <setvbuf+0xf2>
d00813ee:	687c      	ldr	r4, [r7, #4]
d00813f0:	f1b8 0f02 	cmp.w	r8, #2
d00813f4:	d006      	beq.n	d0081404 <setvbuf+0x38>
d00813f6:	f1b8 0f01 	cmp.w	r8, #1
d00813fa:	f200 809f 	bhi.w	d008153c <setvbuf+0x170>
d00813fe:	2d00      	cmp	r5, #0
d0081400:	f2c0 809c 	blt.w	d008153c <setvbuf+0x170>
d0081404:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0081406:	07db      	lsls	r3, r3, #31
d0081408:	d405      	bmi.n	d0081416 <setvbuf+0x4a>
d008140a:	89a3      	ldrh	r3, [r4, #12]
d008140c:	0598      	lsls	r0, r3, #22
d008140e:	d402      	bmi.n	d0081416 <setvbuf+0x4a>
d0081410:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081412:	f000 fb19 	bl	d0081a48 <__retarget_lock_acquire_recursive>
d0081416:	4621      	mov	r1, r4
d0081418:	4638      	mov	r0, r7
d008141a:	f000 f9e3 	bl	d00817e4 <_fflush_r>
d008141e:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0081420:	b141      	cbz	r1, d0081434 <setvbuf+0x68>
d0081422:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0081426:	4299      	cmp	r1, r3
d0081428:	d002      	beq.n	d0081430 <setvbuf+0x64>
d008142a:	4638      	mov	r0, r7
d008142c:	f000 fb7a 	bl	d0081b24 <_free_r>
d0081430:	2300      	movs	r3, #0
d0081432:	6363      	str	r3, [r4, #52]	; 0x34
d0081434:	2300      	movs	r3, #0
d0081436:	61a3      	str	r3, [r4, #24]
d0081438:	6063      	str	r3, [r4, #4]
d008143a:	89a3      	ldrh	r3, [r4, #12]
d008143c:	0619      	lsls	r1, r3, #24
d008143e:	d503      	bpl.n	d0081448 <setvbuf+0x7c>
d0081440:	6921      	ldr	r1, [r4, #16]
d0081442:	4638      	mov	r0, r7
d0081444:	f000 fb6e 	bl	d0081b24 <_free_r>
d0081448:	89a3      	ldrh	r3, [r4, #12]
d008144a:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d008144e:	f023 0303 	bic.w	r3, r3, #3
d0081452:	f1b8 0f02 	cmp.w	r8, #2
d0081456:	81a3      	strh	r3, [r4, #12]
d0081458:	d06c      	beq.n	d0081534 <setvbuf+0x168>
d008145a:	ab01      	add	r3, sp, #4
d008145c:	466a      	mov	r2, sp
d008145e:	4621      	mov	r1, r4
d0081460:	4638      	mov	r0, r7
d0081462:	f000 faf3 	bl	d0081a4c <__swhatbuf_r>
d0081466:	89a3      	ldrh	r3, [r4, #12]
d0081468:	4318      	orrs	r0, r3
d008146a:	81a0      	strh	r0, [r4, #12]
d008146c:	2d00      	cmp	r5, #0
d008146e:	d130      	bne.n	d00814d2 <setvbuf+0x106>
d0081470:	9d00      	ldr	r5, [sp, #0]
d0081472:	4628      	mov	r0, r5
d0081474:	f000 fb4e 	bl	d0081b14 <malloc>
d0081478:	4606      	mov	r6, r0
d008147a:	2800      	cmp	r0, #0
d008147c:	d155      	bne.n	d008152a <setvbuf+0x15e>
d008147e:	f8dd 9000 	ldr.w	r9, [sp]
d0081482:	45a9      	cmp	r9, r5
d0081484:	d14a      	bne.n	d008151c <setvbuf+0x150>
d0081486:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d008148a:	2200      	movs	r2, #0
d008148c:	60a2      	str	r2, [r4, #8]
d008148e:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0081492:	6022      	str	r2, [r4, #0]
d0081494:	6122      	str	r2, [r4, #16]
d0081496:	2201      	movs	r2, #1
d0081498:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d008149c:	6162      	str	r2, [r4, #20]
d008149e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00814a0:	f043 0302 	orr.w	r3, r3, #2
d00814a4:	07d2      	lsls	r2, r2, #31
d00814a6:	81a3      	strh	r3, [r4, #12]
d00814a8:	d405      	bmi.n	d00814b6 <setvbuf+0xea>
d00814aa:	f413 7f00 	tst.w	r3, #512	; 0x200
d00814ae:	d102      	bne.n	d00814b6 <setvbuf+0xea>
d00814b0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00814b2:	f000 faca 	bl	d0081a4a <__retarget_lock_release_recursive>
d00814b6:	4628      	mov	r0, r5
d00814b8:	b003      	add	sp, #12
d00814ba:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00814be:	4b24      	ldr	r3, [pc, #144]	; (d0081550 <setvbuf+0x184>)
d00814c0:	429c      	cmp	r4, r3
d00814c2:	d101      	bne.n	d00814c8 <setvbuf+0xfc>
d00814c4:	68bc      	ldr	r4, [r7, #8]
d00814c6:	e793      	b.n	d00813f0 <setvbuf+0x24>
d00814c8:	4b22      	ldr	r3, [pc, #136]	; (d0081554 <setvbuf+0x188>)
d00814ca:	429c      	cmp	r4, r3
d00814cc:	bf08      	it	eq
d00814ce:	68fc      	ldreq	r4, [r7, #12]
d00814d0:	e78e      	b.n	d00813f0 <setvbuf+0x24>
d00814d2:	2e00      	cmp	r6, #0
d00814d4:	d0cd      	beq.n	d0081472 <setvbuf+0xa6>
d00814d6:	69bb      	ldr	r3, [r7, #24]
d00814d8:	b913      	cbnz	r3, d00814e0 <setvbuf+0x114>
d00814da:	4638      	mov	r0, r7
d00814dc:	f000 fa16 	bl	d008190c <__sinit>
d00814e0:	f1b8 0f01 	cmp.w	r8, #1
d00814e4:	bf08      	it	eq
d00814e6:	89a3      	ldrheq	r3, [r4, #12]
d00814e8:	6026      	str	r6, [r4, #0]
d00814ea:	bf04      	itt	eq
d00814ec:	f043 0301 	orreq.w	r3, r3, #1
d00814f0:	81a3      	strheq	r3, [r4, #12]
d00814f2:	89a2      	ldrh	r2, [r4, #12]
d00814f4:	f012 0308 	ands.w	r3, r2, #8
d00814f8:	e9c4 6504 	strd	r6, r5, [r4, #16]
d00814fc:	d01c      	beq.n	d0081538 <setvbuf+0x16c>
d00814fe:	07d3      	lsls	r3, r2, #31
d0081500:	bf41      	itttt	mi
d0081502:	2300      	movmi	r3, #0
d0081504:	426d      	negmi	r5, r5
d0081506:	60a3      	strmi	r3, [r4, #8]
d0081508:	61a5      	strmi	r5, [r4, #24]
d008150a:	bf58      	it	pl
d008150c:	60a5      	strpl	r5, [r4, #8]
d008150e:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0081510:	f015 0501 	ands.w	r5, r5, #1
d0081514:	d115      	bne.n	d0081542 <setvbuf+0x176>
d0081516:	f412 7f00 	tst.w	r2, #512	; 0x200
d008151a:	e7c8      	b.n	d00814ae <setvbuf+0xe2>
d008151c:	4648      	mov	r0, r9
d008151e:	f000 faf9 	bl	d0081b14 <malloc>
d0081522:	4606      	mov	r6, r0
d0081524:	2800      	cmp	r0, #0
d0081526:	d0ae      	beq.n	d0081486 <setvbuf+0xba>
d0081528:	464d      	mov	r5, r9
d008152a:	89a3      	ldrh	r3, [r4, #12]
d008152c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0081530:	81a3      	strh	r3, [r4, #12]
d0081532:	e7d0      	b.n	d00814d6 <setvbuf+0x10a>
d0081534:	2500      	movs	r5, #0
d0081536:	e7a8      	b.n	d008148a <setvbuf+0xbe>
d0081538:	60a3      	str	r3, [r4, #8]
d008153a:	e7e8      	b.n	d008150e <setvbuf+0x142>
d008153c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0081540:	e7b9      	b.n	d00814b6 <setvbuf+0xea>
d0081542:	2500      	movs	r5, #0
d0081544:	e7b7      	b.n	d00814b6 <setvbuf+0xea>
d0081546:	bf00      	nop
d0081548:	d0081f44 	.word	0xd0081f44
d008154c:	d0081efc 	.word	0xd0081efc
d0081550:	d0081f1c 	.word	0xd0081f1c
d0081554:	d0081edc 	.word	0xd0081edc

d0081558 <__swbuf_r>:
d0081558:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008155a:	460e      	mov	r6, r1
d008155c:	4614      	mov	r4, r2
d008155e:	4605      	mov	r5, r0
d0081560:	b118      	cbz	r0, d008156a <__swbuf_r+0x12>
d0081562:	6983      	ldr	r3, [r0, #24]
d0081564:	b90b      	cbnz	r3, d008156a <__swbuf_r+0x12>
d0081566:	f000 f9d1 	bl	d008190c <__sinit>
d008156a:	4b21      	ldr	r3, [pc, #132]	; (d00815f0 <__swbuf_r+0x98>)
d008156c:	429c      	cmp	r4, r3
d008156e:	d12b      	bne.n	d00815c8 <__swbuf_r+0x70>
d0081570:	686c      	ldr	r4, [r5, #4]
d0081572:	69a3      	ldr	r3, [r4, #24]
d0081574:	60a3      	str	r3, [r4, #8]
d0081576:	89a3      	ldrh	r3, [r4, #12]
d0081578:	071a      	lsls	r2, r3, #28
d008157a:	d52f      	bpl.n	d00815dc <__swbuf_r+0x84>
d008157c:	6923      	ldr	r3, [r4, #16]
d008157e:	b36b      	cbz	r3, d00815dc <__swbuf_r+0x84>
d0081580:	6923      	ldr	r3, [r4, #16]
d0081582:	6820      	ldr	r0, [r4, #0]
d0081584:	1ac0      	subs	r0, r0, r3
d0081586:	6963      	ldr	r3, [r4, #20]
d0081588:	b2f6      	uxtb	r6, r6
d008158a:	4283      	cmp	r3, r0
d008158c:	4637      	mov	r7, r6
d008158e:	dc04      	bgt.n	d008159a <__swbuf_r+0x42>
d0081590:	4621      	mov	r1, r4
d0081592:	4628      	mov	r0, r5
d0081594:	f000 f926 	bl	d00817e4 <_fflush_r>
d0081598:	bb30      	cbnz	r0, d00815e8 <__swbuf_r+0x90>
d008159a:	68a3      	ldr	r3, [r4, #8]
d008159c:	3b01      	subs	r3, #1
d008159e:	60a3      	str	r3, [r4, #8]
d00815a0:	6823      	ldr	r3, [r4, #0]
d00815a2:	1c5a      	adds	r2, r3, #1
d00815a4:	6022      	str	r2, [r4, #0]
d00815a6:	701e      	strb	r6, [r3, #0]
d00815a8:	6963      	ldr	r3, [r4, #20]
d00815aa:	3001      	adds	r0, #1
d00815ac:	4283      	cmp	r3, r0
d00815ae:	d004      	beq.n	d00815ba <__swbuf_r+0x62>
d00815b0:	89a3      	ldrh	r3, [r4, #12]
d00815b2:	07db      	lsls	r3, r3, #31
d00815b4:	d506      	bpl.n	d00815c4 <__swbuf_r+0x6c>
d00815b6:	2e0a      	cmp	r6, #10
d00815b8:	d104      	bne.n	d00815c4 <__swbuf_r+0x6c>
d00815ba:	4621      	mov	r1, r4
d00815bc:	4628      	mov	r0, r5
d00815be:	f000 f911 	bl	d00817e4 <_fflush_r>
d00815c2:	b988      	cbnz	r0, d00815e8 <__swbuf_r+0x90>
d00815c4:	4638      	mov	r0, r7
d00815c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00815c8:	4b0a      	ldr	r3, [pc, #40]	; (d00815f4 <__swbuf_r+0x9c>)
d00815ca:	429c      	cmp	r4, r3
d00815cc:	d101      	bne.n	d00815d2 <__swbuf_r+0x7a>
d00815ce:	68ac      	ldr	r4, [r5, #8]
d00815d0:	e7cf      	b.n	d0081572 <__swbuf_r+0x1a>
d00815d2:	4b09      	ldr	r3, [pc, #36]	; (d00815f8 <__swbuf_r+0xa0>)
d00815d4:	429c      	cmp	r4, r3
d00815d6:	bf08      	it	eq
d00815d8:	68ec      	ldreq	r4, [r5, #12]
d00815da:	e7ca      	b.n	d0081572 <__swbuf_r+0x1a>
d00815dc:	4621      	mov	r1, r4
d00815de:	4628      	mov	r0, r5
d00815e0:	f000 f80c 	bl	d00815fc <__swsetup_r>
d00815e4:	2800      	cmp	r0, #0
d00815e6:	d0cb      	beq.n	d0081580 <__swbuf_r+0x28>
d00815e8:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d00815ec:	e7ea      	b.n	d00815c4 <__swbuf_r+0x6c>
d00815ee:	bf00      	nop
d00815f0:	d0081efc 	.word	0xd0081efc
d00815f4:	d0081f1c 	.word	0xd0081f1c
d00815f8:	d0081edc 	.word	0xd0081edc

d00815fc <__swsetup_r>:
d00815fc:	4b32      	ldr	r3, [pc, #200]	; (d00816c8 <__swsetup_r+0xcc>)
d00815fe:	b570      	push	{r4, r5, r6, lr}
d0081600:	681d      	ldr	r5, [r3, #0]
d0081602:	4606      	mov	r6, r0
d0081604:	460c      	mov	r4, r1
d0081606:	b125      	cbz	r5, d0081612 <__swsetup_r+0x16>
d0081608:	69ab      	ldr	r3, [r5, #24]
d008160a:	b913      	cbnz	r3, d0081612 <__swsetup_r+0x16>
d008160c:	4628      	mov	r0, r5
d008160e:	f000 f97d 	bl	d008190c <__sinit>
d0081612:	4b2e      	ldr	r3, [pc, #184]	; (d00816cc <__swsetup_r+0xd0>)
d0081614:	429c      	cmp	r4, r3
d0081616:	d10f      	bne.n	d0081638 <__swsetup_r+0x3c>
d0081618:	686c      	ldr	r4, [r5, #4]
d008161a:	89a3      	ldrh	r3, [r4, #12]
d008161c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0081620:	0719      	lsls	r1, r3, #28
d0081622:	d42c      	bmi.n	d008167e <__swsetup_r+0x82>
d0081624:	06dd      	lsls	r5, r3, #27
d0081626:	d411      	bmi.n	d008164c <__swsetup_r+0x50>
d0081628:	2309      	movs	r3, #9
d008162a:	6033      	str	r3, [r6, #0]
d008162c:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d0081630:	81a3      	strh	r3, [r4, #12]
d0081632:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081636:	e03e      	b.n	d00816b6 <__swsetup_r+0xba>
d0081638:	4b25      	ldr	r3, [pc, #148]	; (d00816d0 <__swsetup_r+0xd4>)
d008163a:	429c      	cmp	r4, r3
d008163c:	d101      	bne.n	d0081642 <__swsetup_r+0x46>
d008163e:	68ac      	ldr	r4, [r5, #8]
d0081640:	e7eb      	b.n	d008161a <__swsetup_r+0x1e>
d0081642:	4b24      	ldr	r3, [pc, #144]	; (d00816d4 <__swsetup_r+0xd8>)
d0081644:	429c      	cmp	r4, r3
d0081646:	bf08      	it	eq
d0081648:	68ec      	ldreq	r4, [r5, #12]
d008164a:	e7e6      	b.n	d008161a <__swsetup_r+0x1e>
d008164c:	0758      	lsls	r0, r3, #29
d008164e:	d512      	bpl.n	d0081676 <__swsetup_r+0x7a>
d0081650:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0081652:	b141      	cbz	r1, d0081666 <__swsetup_r+0x6a>
d0081654:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0081658:	4299      	cmp	r1, r3
d008165a:	d002      	beq.n	d0081662 <__swsetup_r+0x66>
d008165c:	4630      	mov	r0, r6
d008165e:	f000 fa61 	bl	d0081b24 <_free_r>
d0081662:	2300      	movs	r3, #0
d0081664:	6363      	str	r3, [r4, #52]	; 0x34
d0081666:	89a3      	ldrh	r3, [r4, #12]
d0081668:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d008166c:	81a3      	strh	r3, [r4, #12]
d008166e:	2300      	movs	r3, #0
d0081670:	6063      	str	r3, [r4, #4]
d0081672:	6923      	ldr	r3, [r4, #16]
d0081674:	6023      	str	r3, [r4, #0]
d0081676:	89a3      	ldrh	r3, [r4, #12]
d0081678:	f043 0308 	orr.w	r3, r3, #8
d008167c:	81a3      	strh	r3, [r4, #12]
d008167e:	6923      	ldr	r3, [r4, #16]
d0081680:	b94b      	cbnz	r3, d0081696 <__swsetup_r+0x9a>
d0081682:	89a3      	ldrh	r3, [r4, #12]
d0081684:	f403 7320 	and.w	r3, r3, #640	; 0x280
d0081688:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d008168c:	d003      	beq.n	d0081696 <__swsetup_r+0x9a>
d008168e:	4621      	mov	r1, r4
d0081690:	4630      	mov	r0, r6
d0081692:	f000 f9ff 	bl	d0081a94 <__smakebuf_r>
d0081696:	89a0      	ldrh	r0, [r4, #12]
d0081698:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d008169c:	f010 0301 	ands.w	r3, r0, #1
d00816a0:	d00a      	beq.n	d00816b8 <__swsetup_r+0xbc>
d00816a2:	2300      	movs	r3, #0
d00816a4:	60a3      	str	r3, [r4, #8]
d00816a6:	6963      	ldr	r3, [r4, #20]
d00816a8:	425b      	negs	r3, r3
d00816aa:	61a3      	str	r3, [r4, #24]
d00816ac:	6923      	ldr	r3, [r4, #16]
d00816ae:	b943      	cbnz	r3, d00816c2 <__swsetup_r+0xc6>
d00816b0:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d00816b4:	d1ba      	bne.n	d008162c <__swsetup_r+0x30>
d00816b6:	bd70      	pop	{r4, r5, r6, pc}
d00816b8:	0781      	lsls	r1, r0, #30
d00816ba:	bf58      	it	pl
d00816bc:	6963      	ldrpl	r3, [r4, #20]
d00816be:	60a3      	str	r3, [r4, #8]
d00816c0:	e7f4      	b.n	d00816ac <__swsetup_r+0xb0>
d00816c2:	2000      	movs	r0, #0
d00816c4:	e7f7      	b.n	d00816b6 <__swsetup_r+0xba>
d00816c6:	bf00      	nop
d00816c8:	d0081f44 	.word	0xd0081f44
d00816cc:	d0081efc 	.word	0xd0081efc
d00816d0:	d0081f1c 	.word	0xd0081f1c
d00816d4:	d0081edc 	.word	0xd0081edc

d00816d8 <__sflush_r>:
d00816d8:	898a      	ldrh	r2, [r1, #12]
d00816da:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00816de:	4605      	mov	r5, r0
d00816e0:	0710      	lsls	r0, r2, #28
d00816e2:	460c      	mov	r4, r1
d00816e4:	d458      	bmi.n	d0081798 <__sflush_r+0xc0>
d00816e6:	684b      	ldr	r3, [r1, #4]
d00816e8:	2b00      	cmp	r3, #0
d00816ea:	dc05      	bgt.n	d00816f8 <__sflush_r+0x20>
d00816ec:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d00816ee:	2b00      	cmp	r3, #0
d00816f0:	dc02      	bgt.n	d00816f8 <__sflush_r+0x20>
d00816f2:	2000      	movs	r0, #0
d00816f4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00816f8:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00816fa:	2e00      	cmp	r6, #0
d00816fc:	d0f9      	beq.n	d00816f2 <__sflush_r+0x1a>
d00816fe:	2300      	movs	r3, #0
d0081700:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0081704:	682f      	ldr	r7, [r5, #0]
d0081706:	602b      	str	r3, [r5, #0]
d0081708:	d032      	beq.n	d0081770 <__sflush_r+0x98>
d008170a:	6d60      	ldr	r0, [r4, #84]	; 0x54
d008170c:	89a3      	ldrh	r3, [r4, #12]
d008170e:	075a      	lsls	r2, r3, #29
d0081710:	d505      	bpl.n	d008171e <__sflush_r+0x46>
d0081712:	6863      	ldr	r3, [r4, #4]
d0081714:	1ac0      	subs	r0, r0, r3
d0081716:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0081718:	b10b      	cbz	r3, d008171e <__sflush_r+0x46>
d008171a:	6c23      	ldr	r3, [r4, #64]	; 0x40
d008171c:	1ac0      	subs	r0, r0, r3
d008171e:	2300      	movs	r3, #0
d0081720:	4602      	mov	r2, r0
d0081722:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0081724:	6a21      	ldr	r1, [r4, #32]
d0081726:	4628      	mov	r0, r5
d0081728:	47b0      	blx	r6
d008172a:	1c43      	adds	r3, r0, #1
d008172c:	89a3      	ldrh	r3, [r4, #12]
d008172e:	d106      	bne.n	d008173e <__sflush_r+0x66>
d0081730:	6829      	ldr	r1, [r5, #0]
d0081732:	291d      	cmp	r1, #29
d0081734:	d82c      	bhi.n	d0081790 <__sflush_r+0xb8>
d0081736:	4a2a      	ldr	r2, [pc, #168]	; (d00817e0 <__sflush_r+0x108>)
d0081738:	40ca      	lsrs	r2, r1
d008173a:	07d6      	lsls	r6, r2, #31
d008173c:	d528      	bpl.n	d0081790 <__sflush_r+0xb8>
d008173e:	2200      	movs	r2, #0
d0081740:	6062      	str	r2, [r4, #4]
d0081742:	04d9      	lsls	r1, r3, #19
d0081744:	6922      	ldr	r2, [r4, #16]
d0081746:	6022      	str	r2, [r4, #0]
d0081748:	d504      	bpl.n	d0081754 <__sflush_r+0x7c>
d008174a:	1c42      	adds	r2, r0, #1
d008174c:	d101      	bne.n	d0081752 <__sflush_r+0x7a>
d008174e:	682b      	ldr	r3, [r5, #0]
d0081750:	b903      	cbnz	r3, d0081754 <__sflush_r+0x7c>
d0081752:	6560      	str	r0, [r4, #84]	; 0x54
d0081754:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0081756:	602f      	str	r7, [r5, #0]
d0081758:	2900      	cmp	r1, #0
d008175a:	d0ca      	beq.n	d00816f2 <__sflush_r+0x1a>
d008175c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0081760:	4299      	cmp	r1, r3
d0081762:	d002      	beq.n	d008176a <__sflush_r+0x92>
d0081764:	4628      	mov	r0, r5
d0081766:	f000 f9dd 	bl	d0081b24 <_free_r>
d008176a:	2000      	movs	r0, #0
d008176c:	6360      	str	r0, [r4, #52]	; 0x34
d008176e:	e7c1      	b.n	d00816f4 <__sflush_r+0x1c>
d0081770:	6a21      	ldr	r1, [r4, #32]
d0081772:	2301      	movs	r3, #1
d0081774:	4628      	mov	r0, r5
d0081776:	47b0      	blx	r6
d0081778:	1c41      	adds	r1, r0, #1
d008177a:	d1c7      	bne.n	d008170c <__sflush_r+0x34>
d008177c:	682b      	ldr	r3, [r5, #0]
d008177e:	2b00      	cmp	r3, #0
d0081780:	d0c4      	beq.n	d008170c <__sflush_r+0x34>
d0081782:	2b1d      	cmp	r3, #29
d0081784:	d001      	beq.n	d008178a <__sflush_r+0xb2>
d0081786:	2b16      	cmp	r3, #22
d0081788:	d101      	bne.n	d008178e <__sflush_r+0xb6>
d008178a:	602f      	str	r7, [r5, #0]
d008178c:	e7b1      	b.n	d00816f2 <__sflush_r+0x1a>
d008178e:	89a3      	ldrh	r3, [r4, #12]
d0081790:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0081794:	81a3      	strh	r3, [r4, #12]
d0081796:	e7ad      	b.n	d00816f4 <__sflush_r+0x1c>
d0081798:	690f      	ldr	r7, [r1, #16]
d008179a:	2f00      	cmp	r7, #0
d008179c:	d0a9      	beq.n	d00816f2 <__sflush_r+0x1a>
d008179e:	0793      	lsls	r3, r2, #30
d00817a0:	680e      	ldr	r6, [r1, #0]
d00817a2:	bf08      	it	eq
d00817a4:	694b      	ldreq	r3, [r1, #20]
d00817a6:	600f      	str	r7, [r1, #0]
d00817a8:	bf18      	it	ne
d00817aa:	2300      	movne	r3, #0
d00817ac:	eba6 0807 	sub.w	r8, r6, r7
d00817b0:	608b      	str	r3, [r1, #8]
d00817b2:	f1b8 0f00 	cmp.w	r8, #0
d00817b6:	dd9c      	ble.n	d00816f2 <__sflush_r+0x1a>
d00817b8:	6a21      	ldr	r1, [r4, #32]
d00817ba:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d00817bc:	4643      	mov	r3, r8
d00817be:	463a      	mov	r2, r7
d00817c0:	4628      	mov	r0, r5
d00817c2:	47b0      	blx	r6
d00817c4:	2800      	cmp	r0, #0
d00817c6:	dc06      	bgt.n	d00817d6 <__sflush_r+0xfe>
d00817c8:	89a3      	ldrh	r3, [r4, #12]
d00817ca:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00817ce:	81a3      	strh	r3, [r4, #12]
d00817d0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00817d4:	e78e      	b.n	d00816f4 <__sflush_r+0x1c>
d00817d6:	4407      	add	r7, r0
d00817d8:	eba8 0800 	sub.w	r8, r8, r0
d00817dc:	e7e9      	b.n	d00817b2 <__sflush_r+0xda>
d00817de:	bf00      	nop
d00817e0:	20400001 	.word	0x20400001

d00817e4 <_fflush_r>:
d00817e4:	b538      	push	{r3, r4, r5, lr}
d00817e6:	690b      	ldr	r3, [r1, #16]
d00817e8:	4605      	mov	r5, r0
d00817ea:	460c      	mov	r4, r1
d00817ec:	b913      	cbnz	r3, d00817f4 <_fflush_r+0x10>
d00817ee:	2500      	movs	r5, #0
d00817f0:	4628      	mov	r0, r5
d00817f2:	bd38      	pop	{r3, r4, r5, pc}
d00817f4:	b118      	cbz	r0, d00817fe <_fflush_r+0x1a>
d00817f6:	6983      	ldr	r3, [r0, #24]
d00817f8:	b90b      	cbnz	r3, d00817fe <_fflush_r+0x1a>
d00817fa:	f000 f887 	bl	d008190c <__sinit>
d00817fe:	4b14      	ldr	r3, [pc, #80]	; (d0081850 <_fflush_r+0x6c>)
d0081800:	429c      	cmp	r4, r3
d0081802:	d11b      	bne.n	d008183c <_fflush_r+0x58>
d0081804:	686c      	ldr	r4, [r5, #4]
d0081806:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d008180a:	2b00      	cmp	r3, #0
d008180c:	d0ef      	beq.n	d00817ee <_fflush_r+0xa>
d008180e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0081810:	07d0      	lsls	r0, r2, #31
d0081812:	d404      	bmi.n	d008181e <_fflush_r+0x3a>
d0081814:	0599      	lsls	r1, r3, #22
d0081816:	d402      	bmi.n	d008181e <_fflush_r+0x3a>
d0081818:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008181a:	f000 f915 	bl	d0081a48 <__retarget_lock_acquire_recursive>
d008181e:	4628      	mov	r0, r5
d0081820:	4621      	mov	r1, r4
d0081822:	f7ff ff59 	bl	d00816d8 <__sflush_r>
d0081826:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0081828:	07da      	lsls	r2, r3, #31
d008182a:	4605      	mov	r5, r0
d008182c:	d4e0      	bmi.n	d00817f0 <_fflush_r+0xc>
d008182e:	89a3      	ldrh	r3, [r4, #12]
d0081830:	059b      	lsls	r3, r3, #22
d0081832:	d4dd      	bmi.n	d00817f0 <_fflush_r+0xc>
d0081834:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081836:	f000 f908 	bl	d0081a4a <__retarget_lock_release_recursive>
d008183a:	e7d9      	b.n	d00817f0 <_fflush_r+0xc>
d008183c:	4b05      	ldr	r3, [pc, #20]	; (d0081854 <_fflush_r+0x70>)
d008183e:	429c      	cmp	r4, r3
d0081840:	d101      	bne.n	d0081846 <_fflush_r+0x62>
d0081842:	68ac      	ldr	r4, [r5, #8]
d0081844:	e7df      	b.n	d0081806 <_fflush_r+0x22>
d0081846:	4b04      	ldr	r3, [pc, #16]	; (d0081858 <_fflush_r+0x74>)
d0081848:	429c      	cmp	r4, r3
d008184a:	bf08      	it	eq
d008184c:	68ec      	ldreq	r4, [r5, #12]
d008184e:	e7da      	b.n	d0081806 <_fflush_r+0x22>
d0081850:	d0081efc 	.word	0xd0081efc
d0081854:	d0081f1c 	.word	0xd0081f1c
d0081858:	d0081edc 	.word	0xd0081edc

d008185c <std>:
d008185c:	2300      	movs	r3, #0
d008185e:	b510      	push	{r4, lr}
d0081860:	4604      	mov	r4, r0
d0081862:	e9c0 3300 	strd	r3, r3, [r0]
d0081866:	e9c0 3304 	strd	r3, r3, [r0, #16]
d008186a:	6083      	str	r3, [r0, #8]
d008186c:	8181      	strh	r1, [r0, #12]
d008186e:	6643      	str	r3, [r0, #100]	; 0x64
d0081870:	81c2      	strh	r2, [r0, #14]
d0081872:	6183      	str	r3, [r0, #24]
d0081874:	4619      	mov	r1, r3
d0081876:	2208      	movs	r2, #8
d0081878:	305c      	adds	r0, #92	; 0x5c
d008187a:	f7ff fd21 	bl	d00812c0 <memset>
d008187e:	4b05      	ldr	r3, [pc, #20]	; (d0081894 <std+0x38>)
d0081880:	6263      	str	r3, [r4, #36]	; 0x24
d0081882:	4b05      	ldr	r3, [pc, #20]	; (d0081898 <std+0x3c>)
d0081884:	62a3      	str	r3, [r4, #40]	; 0x28
d0081886:	4b05      	ldr	r3, [pc, #20]	; (d008189c <std+0x40>)
d0081888:	62e3      	str	r3, [r4, #44]	; 0x2c
d008188a:	4b05      	ldr	r3, [pc, #20]	; (d00818a0 <std+0x44>)
d008188c:	6224      	str	r4, [r4, #32]
d008188e:	6323      	str	r3, [r4, #48]	; 0x30
d0081890:	bd10      	pop	{r4, pc}
d0081892:	bf00      	nop
d0081894:	d0081c79 	.word	0xd0081c79
d0081898:	d0081c9b 	.word	0xd0081c9b
d008189c:	d0081cd3 	.word	0xd0081cd3
d00818a0:	d0081cf7 	.word	0xd0081cf7

d00818a4 <_cleanup_r>:
d00818a4:	4901      	ldr	r1, [pc, #4]	; (d00818ac <_cleanup_r+0x8>)
d00818a6:	f000 b8af 	b.w	d0081a08 <_fwalk_reent>
d00818aa:	bf00      	nop
d00818ac:	d00817e5 	.word	0xd00817e5

d00818b0 <__sfmoreglue>:
d00818b0:	b570      	push	{r4, r5, r6, lr}
d00818b2:	1e4a      	subs	r2, r1, #1
d00818b4:	2568      	movs	r5, #104	; 0x68
d00818b6:	4355      	muls	r5, r2
d00818b8:	460e      	mov	r6, r1
d00818ba:	f105 0174 	add.w	r1, r5, #116	; 0x74
d00818be:	f000 f981 	bl	d0081bc4 <_malloc_r>
d00818c2:	4604      	mov	r4, r0
d00818c4:	b140      	cbz	r0, d00818d8 <__sfmoreglue+0x28>
d00818c6:	2100      	movs	r1, #0
d00818c8:	e9c0 1600 	strd	r1, r6, [r0]
d00818cc:	300c      	adds	r0, #12
d00818ce:	60a0      	str	r0, [r4, #8]
d00818d0:	f105 0268 	add.w	r2, r5, #104	; 0x68
d00818d4:	f7ff fcf4 	bl	d00812c0 <memset>
d00818d8:	4620      	mov	r0, r4
d00818da:	bd70      	pop	{r4, r5, r6, pc}

d00818dc <__sfp_lock_acquire>:
d00818dc:	4801      	ldr	r0, [pc, #4]	; (d00818e4 <__sfp_lock_acquire+0x8>)
d00818de:	f000 b8b3 	b.w	d0081a48 <__retarget_lock_acquire_recursive>
d00818e2:	bf00      	nop
d00818e4:	d008242c 	.word	0xd008242c

d00818e8 <__sfp_lock_release>:
d00818e8:	4801      	ldr	r0, [pc, #4]	; (d00818f0 <__sfp_lock_release+0x8>)
d00818ea:	f000 b8ae 	b.w	d0081a4a <__retarget_lock_release_recursive>
d00818ee:	bf00      	nop
d00818f0:	d008242c 	.word	0xd008242c

d00818f4 <__sinit_lock_acquire>:
d00818f4:	4801      	ldr	r0, [pc, #4]	; (d00818fc <__sinit_lock_acquire+0x8>)
d00818f6:	f000 b8a7 	b.w	d0081a48 <__retarget_lock_acquire_recursive>
d00818fa:	bf00      	nop
d00818fc:	d0082427 	.word	0xd0082427

d0081900 <__sinit_lock_release>:
d0081900:	4801      	ldr	r0, [pc, #4]	; (d0081908 <__sinit_lock_release+0x8>)
d0081902:	f000 b8a2 	b.w	d0081a4a <__retarget_lock_release_recursive>
d0081906:	bf00      	nop
d0081908:	d0082427 	.word	0xd0082427

d008190c <__sinit>:
d008190c:	b510      	push	{r4, lr}
d008190e:	4604      	mov	r4, r0
d0081910:	f7ff fff0 	bl	d00818f4 <__sinit_lock_acquire>
d0081914:	69a3      	ldr	r3, [r4, #24]
d0081916:	b11b      	cbz	r3, d0081920 <__sinit+0x14>
d0081918:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d008191c:	f7ff bff0 	b.w	d0081900 <__sinit_lock_release>
d0081920:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0081924:	6523      	str	r3, [r4, #80]	; 0x50
d0081926:	4b13      	ldr	r3, [pc, #76]	; (d0081974 <__sinit+0x68>)
d0081928:	4a13      	ldr	r2, [pc, #76]	; (d0081978 <__sinit+0x6c>)
d008192a:	681b      	ldr	r3, [r3, #0]
d008192c:	62a2      	str	r2, [r4, #40]	; 0x28
d008192e:	42a3      	cmp	r3, r4
d0081930:	bf04      	itt	eq
d0081932:	2301      	moveq	r3, #1
d0081934:	61a3      	streq	r3, [r4, #24]
d0081936:	4620      	mov	r0, r4
d0081938:	f000 f820 	bl	d008197c <__sfp>
d008193c:	6060      	str	r0, [r4, #4]
d008193e:	4620      	mov	r0, r4
d0081940:	f000 f81c 	bl	d008197c <__sfp>
d0081944:	60a0      	str	r0, [r4, #8]
d0081946:	4620      	mov	r0, r4
d0081948:	f000 f818 	bl	d008197c <__sfp>
d008194c:	2200      	movs	r2, #0
d008194e:	60e0      	str	r0, [r4, #12]
d0081950:	2104      	movs	r1, #4
d0081952:	6860      	ldr	r0, [r4, #4]
d0081954:	f7ff ff82 	bl	d008185c <std>
d0081958:	68a0      	ldr	r0, [r4, #8]
d008195a:	2201      	movs	r2, #1
d008195c:	2109      	movs	r1, #9
d008195e:	f7ff ff7d 	bl	d008185c <std>
d0081962:	68e0      	ldr	r0, [r4, #12]
d0081964:	2202      	movs	r2, #2
d0081966:	2112      	movs	r1, #18
d0081968:	f7ff ff78 	bl	d008185c <std>
d008196c:	2301      	movs	r3, #1
d008196e:	61a3      	str	r3, [r4, #24]
d0081970:	e7d2      	b.n	d0081918 <__sinit+0xc>
d0081972:	bf00      	nop
d0081974:	d0081ed8 	.word	0xd0081ed8
d0081978:	d00818a5 	.word	0xd00818a5

d008197c <__sfp>:
d008197c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008197e:	4607      	mov	r7, r0
d0081980:	f7ff ffac 	bl	d00818dc <__sfp_lock_acquire>
d0081984:	4b1e      	ldr	r3, [pc, #120]	; (d0081a00 <__sfp+0x84>)
d0081986:	681e      	ldr	r6, [r3, #0]
d0081988:	69b3      	ldr	r3, [r6, #24]
d008198a:	b913      	cbnz	r3, d0081992 <__sfp+0x16>
d008198c:	4630      	mov	r0, r6
d008198e:	f7ff ffbd 	bl	d008190c <__sinit>
d0081992:	3648      	adds	r6, #72	; 0x48
d0081994:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0081998:	3b01      	subs	r3, #1
d008199a:	d503      	bpl.n	d00819a4 <__sfp+0x28>
d008199c:	6833      	ldr	r3, [r6, #0]
d008199e:	b30b      	cbz	r3, d00819e4 <__sfp+0x68>
d00819a0:	6836      	ldr	r6, [r6, #0]
d00819a2:	e7f7      	b.n	d0081994 <__sfp+0x18>
d00819a4:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d00819a8:	b9d5      	cbnz	r5, d00819e0 <__sfp+0x64>
d00819aa:	4b16      	ldr	r3, [pc, #88]	; (d0081a04 <__sfp+0x88>)
d00819ac:	60e3      	str	r3, [r4, #12]
d00819ae:	f104 0058 	add.w	r0, r4, #88	; 0x58
d00819b2:	6665      	str	r5, [r4, #100]	; 0x64
d00819b4:	f000 f847 	bl	d0081a46 <__retarget_lock_init_recursive>
d00819b8:	f7ff ff96 	bl	d00818e8 <__sfp_lock_release>
d00819bc:	e9c4 5501 	strd	r5, r5, [r4, #4]
d00819c0:	e9c4 5504 	strd	r5, r5, [r4, #16]
d00819c4:	6025      	str	r5, [r4, #0]
d00819c6:	61a5      	str	r5, [r4, #24]
d00819c8:	2208      	movs	r2, #8
d00819ca:	4629      	mov	r1, r5
d00819cc:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d00819d0:	f7ff fc76 	bl	d00812c0 <memset>
d00819d4:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d00819d8:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d00819dc:	4620      	mov	r0, r4
d00819de:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00819e0:	3468      	adds	r4, #104	; 0x68
d00819e2:	e7d9      	b.n	d0081998 <__sfp+0x1c>
d00819e4:	2104      	movs	r1, #4
d00819e6:	4638      	mov	r0, r7
d00819e8:	f7ff ff62 	bl	d00818b0 <__sfmoreglue>
d00819ec:	4604      	mov	r4, r0
d00819ee:	6030      	str	r0, [r6, #0]
d00819f0:	2800      	cmp	r0, #0
d00819f2:	d1d5      	bne.n	d00819a0 <__sfp+0x24>
d00819f4:	f7ff ff78 	bl	d00818e8 <__sfp_lock_release>
d00819f8:	230c      	movs	r3, #12
d00819fa:	603b      	str	r3, [r7, #0]
d00819fc:	e7ee      	b.n	d00819dc <__sfp+0x60>
d00819fe:	bf00      	nop
d0081a00:	d0081ed8 	.word	0xd0081ed8
d0081a04:	ffff0001 	.word	0xffff0001

d0081a08 <_fwalk_reent>:
d0081a08:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0081a0c:	4606      	mov	r6, r0
d0081a0e:	4688      	mov	r8, r1
d0081a10:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0081a14:	2700      	movs	r7, #0
d0081a16:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0081a1a:	f1b9 0901 	subs.w	r9, r9, #1
d0081a1e:	d505      	bpl.n	d0081a2c <_fwalk_reent+0x24>
d0081a20:	6824      	ldr	r4, [r4, #0]
d0081a22:	2c00      	cmp	r4, #0
d0081a24:	d1f7      	bne.n	d0081a16 <_fwalk_reent+0xe>
d0081a26:	4638      	mov	r0, r7
d0081a28:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0081a2c:	89ab      	ldrh	r3, [r5, #12]
d0081a2e:	2b01      	cmp	r3, #1
d0081a30:	d907      	bls.n	d0081a42 <_fwalk_reent+0x3a>
d0081a32:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0081a36:	3301      	adds	r3, #1
d0081a38:	d003      	beq.n	d0081a42 <_fwalk_reent+0x3a>
d0081a3a:	4629      	mov	r1, r5
d0081a3c:	4630      	mov	r0, r6
d0081a3e:	47c0      	blx	r8
d0081a40:	4307      	orrs	r7, r0
d0081a42:	3568      	adds	r5, #104	; 0x68
d0081a44:	e7e9      	b.n	d0081a1a <_fwalk_reent+0x12>

d0081a46 <__retarget_lock_init_recursive>:
d0081a46:	4770      	bx	lr

d0081a48 <__retarget_lock_acquire_recursive>:
d0081a48:	4770      	bx	lr

d0081a4a <__retarget_lock_release_recursive>:
d0081a4a:	4770      	bx	lr

d0081a4c <__swhatbuf_r>:
d0081a4c:	b570      	push	{r4, r5, r6, lr}
d0081a4e:	460e      	mov	r6, r1
d0081a50:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081a54:	2900      	cmp	r1, #0
d0081a56:	b096      	sub	sp, #88	; 0x58
d0081a58:	4614      	mov	r4, r2
d0081a5a:	461d      	mov	r5, r3
d0081a5c:	da07      	bge.n	d0081a6e <__swhatbuf_r+0x22>
d0081a5e:	2300      	movs	r3, #0
d0081a60:	602b      	str	r3, [r5, #0]
d0081a62:	89b3      	ldrh	r3, [r6, #12]
d0081a64:	061a      	lsls	r2, r3, #24
d0081a66:	d410      	bmi.n	d0081a8a <__swhatbuf_r+0x3e>
d0081a68:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0081a6c:	e00e      	b.n	d0081a8c <__swhatbuf_r+0x40>
d0081a6e:	466a      	mov	r2, sp
d0081a70:	f000 f956 	bl	d0081d20 <_fstat_r>
d0081a74:	2800      	cmp	r0, #0
d0081a76:	dbf2      	blt.n	d0081a5e <__swhatbuf_r+0x12>
d0081a78:	9a01      	ldr	r2, [sp, #4]
d0081a7a:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0081a7e:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0081a82:	425a      	negs	r2, r3
d0081a84:	415a      	adcs	r2, r3
d0081a86:	602a      	str	r2, [r5, #0]
d0081a88:	e7ee      	b.n	d0081a68 <__swhatbuf_r+0x1c>
d0081a8a:	2340      	movs	r3, #64	; 0x40
d0081a8c:	2000      	movs	r0, #0
d0081a8e:	6023      	str	r3, [r4, #0]
d0081a90:	b016      	add	sp, #88	; 0x58
d0081a92:	bd70      	pop	{r4, r5, r6, pc}

d0081a94 <__smakebuf_r>:
d0081a94:	898b      	ldrh	r3, [r1, #12]
d0081a96:	b573      	push	{r0, r1, r4, r5, r6, lr}
d0081a98:	079d      	lsls	r5, r3, #30
d0081a9a:	4606      	mov	r6, r0
d0081a9c:	460c      	mov	r4, r1
d0081a9e:	d507      	bpl.n	d0081ab0 <__smakebuf_r+0x1c>
d0081aa0:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0081aa4:	6023      	str	r3, [r4, #0]
d0081aa6:	6123      	str	r3, [r4, #16]
d0081aa8:	2301      	movs	r3, #1
d0081aaa:	6163      	str	r3, [r4, #20]
d0081aac:	b002      	add	sp, #8
d0081aae:	bd70      	pop	{r4, r5, r6, pc}
d0081ab0:	ab01      	add	r3, sp, #4
d0081ab2:	466a      	mov	r2, sp
d0081ab4:	f7ff ffca 	bl	d0081a4c <__swhatbuf_r>
d0081ab8:	9900      	ldr	r1, [sp, #0]
d0081aba:	4605      	mov	r5, r0
d0081abc:	4630      	mov	r0, r6
d0081abe:	f000 f881 	bl	d0081bc4 <_malloc_r>
d0081ac2:	b948      	cbnz	r0, d0081ad8 <__smakebuf_r+0x44>
d0081ac4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0081ac8:	059a      	lsls	r2, r3, #22
d0081aca:	d4ef      	bmi.n	d0081aac <__smakebuf_r+0x18>
d0081acc:	f023 0303 	bic.w	r3, r3, #3
d0081ad0:	f043 0302 	orr.w	r3, r3, #2
d0081ad4:	81a3      	strh	r3, [r4, #12]
d0081ad6:	e7e3      	b.n	d0081aa0 <__smakebuf_r+0xc>
d0081ad8:	4b0d      	ldr	r3, [pc, #52]	; (d0081b10 <__smakebuf_r+0x7c>)
d0081ada:	62b3      	str	r3, [r6, #40]	; 0x28
d0081adc:	89a3      	ldrh	r3, [r4, #12]
d0081ade:	6020      	str	r0, [r4, #0]
d0081ae0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0081ae4:	81a3      	strh	r3, [r4, #12]
d0081ae6:	9b00      	ldr	r3, [sp, #0]
d0081ae8:	6163      	str	r3, [r4, #20]
d0081aea:	9b01      	ldr	r3, [sp, #4]
d0081aec:	6120      	str	r0, [r4, #16]
d0081aee:	b15b      	cbz	r3, d0081b08 <__smakebuf_r+0x74>
d0081af0:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0081af4:	4630      	mov	r0, r6
d0081af6:	f000 f925 	bl	d0081d44 <_isatty_r>
d0081afa:	b128      	cbz	r0, d0081b08 <__smakebuf_r+0x74>
d0081afc:	89a3      	ldrh	r3, [r4, #12]
d0081afe:	f023 0303 	bic.w	r3, r3, #3
d0081b02:	f043 0301 	orr.w	r3, r3, #1
d0081b06:	81a3      	strh	r3, [r4, #12]
d0081b08:	89a0      	ldrh	r0, [r4, #12]
d0081b0a:	4305      	orrs	r5, r0
d0081b0c:	81a5      	strh	r5, [r4, #12]
d0081b0e:	e7cd      	b.n	d0081aac <__smakebuf_r+0x18>
d0081b10:	d00818a5 	.word	0xd00818a5

d0081b14 <malloc>:
d0081b14:	4b02      	ldr	r3, [pc, #8]	; (d0081b20 <malloc+0xc>)
d0081b16:	4601      	mov	r1, r0
d0081b18:	6818      	ldr	r0, [r3, #0]
d0081b1a:	f000 b853 	b.w	d0081bc4 <_malloc_r>
d0081b1e:	bf00      	nop
d0081b20:	d0081f44 	.word	0xd0081f44

d0081b24 <_free_r>:
d0081b24:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0081b26:	2900      	cmp	r1, #0
d0081b28:	d048      	beq.n	d0081bbc <_free_r+0x98>
d0081b2a:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0081b2e:	9001      	str	r0, [sp, #4]
d0081b30:	2b00      	cmp	r3, #0
d0081b32:	f1a1 0404 	sub.w	r4, r1, #4
d0081b36:	bfb8      	it	lt
d0081b38:	18e4      	addlt	r4, r4, r3
d0081b3a:	f000 f925 	bl	d0081d88 <__malloc_lock>
d0081b3e:	4a20      	ldr	r2, [pc, #128]	; (d0081bc0 <_free_r+0x9c>)
d0081b40:	9801      	ldr	r0, [sp, #4]
d0081b42:	6813      	ldr	r3, [r2, #0]
d0081b44:	4615      	mov	r5, r2
d0081b46:	b933      	cbnz	r3, d0081b56 <_free_r+0x32>
d0081b48:	6063      	str	r3, [r4, #4]
d0081b4a:	6014      	str	r4, [r2, #0]
d0081b4c:	b003      	add	sp, #12
d0081b4e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0081b52:	f000 b91f 	b.w	d0081d94 <__malloc_unlock>
d0081b56:	42a3      	cmp	r3, r4
d0081b58:	d90b      	bls.n	d0081b72 <_free_r+0x4e>
d0081b5a:	6821      	ldr	r1, [r4, #0]
d0081b5c:	1862      	adds	r2, r4, r1
d0081b5e:	4293      	cmp	r3, r2
d0081b60:	bf04      	itt	eq
d0081b62:	681a      	ldreq	r2, [r3, #0]
d0081b64:	685b      	ldreq	r3, [r3, #4]
d0081b66:	6063      	str	r3, [r4, #4]
d0081b68:	bf04      	itt	eq
d0081b6a:	1852      	addeq	r2, r2, r1
d0081b6c:	6022      	streq	r2, [r4, #0]
d0081b6e:	602c      	str	r4, [r5, #0]
d0081b70:	e7ec      	b.n	d0081b4c <_free_r+0x28>
d0081b72:	461a      	mov	r2, r3
d0081b74:	685b      	ldr	r3, [r3, #4]
d0081b76:	b10b      	cbz	r3, d0081b7c <_free_r+0x58>
d0081b78:	42a3      	cmp	r3, r4
d0081b7a:	d9fa      	bls.n	d0081b72 <_free_r+0x4e>
d0081b7c:	6811      	ldr	r1, [r2, #0]
d0081b7e:	1855      	adds	r5, r2, r1
d0081b80:	42a5      	cmp	r5, r4
d0081b82:	d10b      	bne.n	d0081b9c <_free_r+0x78>
d0081b84:	6824      	ldr	r4, [r4, #0]
d0081b86:	4421      	add	r1, r4
d0081b88:	1854      	adds	r4, r2, r1
d0081b8a:	42a3      	cmp	r3, r4
d0081b8c:	6011      	str	r1, [r2, #0]
d0081b8e:	d1dd      	bne.n	d0081b4c <_free_r+0x28>
d0081b90:	681c      	ldr	r4, [r3, #0]
d0081b92:	685b      	ldr	r3, [r3, #4]
d0081b94:	6053      	str	r3, [r2, #4]
d0081b96:	4421      	add	r1, r4
d0081b98:	6011      	str	r1, [r2, #0]
d0081b9a:	e7d7      	b.n	d0081b4c <_free_r+0x28>
d0081b9c:	d902      	bls.n	d0081ba4 <_free_r+0x80>
d0081b9e:	230c      	movs	r3, #12
d0081ba0:	6003      	str	r3, [r0, #0]
d0081ba2:	e7d3      	b.n	d0081b4c <_free_r+0x28>
d0081ba4:	6825      	ldr	r5, [r4, #0]
d0081ba6:	1961      	adds	r1, r4, r5
d0081ba8:	428b      	cmp	r3, r1
d0081baa:	bf04      	itt	eq
d0081bac:	6819      	ldreq	r1, [r3, #0]
d0081bae:	685b      	ldreq	r3, [r3, #4]
d0081bb0:	6063      	str	r3, [r4, #4]
d0081bb2:	bf04      	itt	eq
d0081bb4:	1949      	addeq	r1, r1, r5
d0081bb6:	6021      	streq	r1, [r4, #0]
d0081bb8:	6054      	str	r4, [r2, #4]
d0081bba:	e7c7      	b.n	d0081b4c <_free_r+0x28>
d0081bbc:	b003      	add	sp, #12
d0081bbe:	bd30      	pop	{r4, r5, pc}
d0081bc0:	d00823ec 	.word	0xd00823ec

d0081bc4 <_malloc_r>:
d0081bc4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0081bc6:	1ccd      	adds	r5, r1, #3
d0081bc8:	f025 0503 	bic.w	r5, r5, #3
d0081bcc:	3508      	adds	r5, #8
d0081bce:	2d0c      	cmp	r5, #12
d0081bd0:	bf38      	it	cc
d0081bd2:	250c      	movcc	r5, #12
d0081bd4:	2d00      	cmp	r5, #0
d0081bd6:	4606      	mov	r6, r0
d0081bd8:	db01      	blt.n	d0081bde <_malloc_r+0x1a>
d0081bda:	42a9      	cmp	r1, r5
d0081bdc:	d903      	bls.n	d0081be6 <_malloc_r+0x22>
d0081bde:	230c      	movs	r3, #12
d0081be0:	6033      	str	r3, [r6, #0]
d0081be2:	2000      	movs	r0, #0
d0081be4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0081be6:	f000 f8cf 	bl	d0081d88 <__malloc_lock>
d0081bea:	4921      	ldr	r1, [pc, #132]	; (d0081c70 <_malloc_r+0xac>)
d0081bec:	680a      	ldr	r2, [r1, #0]
d0081bee:	4614      	mov	r4, r2
d0081bf0:	b99c      	cbnz	r4, d0081c1a <_malloc_r+0x56>
d0081bf2:	4f20      	ldr	r7, [pc, #128]	; (d0081c74 <_malloc_r+0xb0>)
d0081bf4:	683b      	ldr	r3, [r7, #0]
d0081bf6:	b923      	cbnz	r3, d0081c02 <_malloc_r+0x3e>
d0081bf8:	4621      	mov	r1, r4
d0081bfa:	4630      	mov	r0, r6
d0081bfc:	f7fe fa70 	bl	d00800e0 <_sbrk_r>
d0081c00:	6038      	str	r0, [r7, #0]
d0081c02:	4629      	mov	r1, r5
d0081c04:	4630      	mov	r0, r6
d0081c06:	f7fe fa6b 	bl	d00800e0 <_sbrk_r>
d0081c0a:	1c43      	adds	r3, r0, #1
d0081c0c:	d123      	bne.n	d0081c56 <_malloc_r+0x92>
d0081c0e:	230c      	movs	r3, #12
d0081c10:	6033      	str	r3, [r6, #0]
d0081c12:	4630      	mov	r0, r6
d0081c14:	f000 f8be 	bl	d0081d94 <__malloc_unlock>
d0081c18:	e7e3      	b.n	d0081be2 <_malloc_r+0x1e>
d0081c1a:	6823      	ldr	r3, [r4, #0]
d0081c1c:	1b5b      	subs	r3, r3, r5
d0081c1e:	d417      	bmi.n	d0081c50 <_malloc_r+0x8c>
d0081c20:	2b0b      	cmp	r3, #11
d0081c22:	d903      	bls.n	d0081c2c <_malloc_r+0x68>
d0081c24:	6023      	str	r3, [r4, #0]
d0081c26:	441c      	add	r4, r3
d0081c28:	6025      	str	r5, [r4, #0]
d0081c2a:	e004      	b.n	d0081c36 <_malloc_r+0x72>
d0081c2c:	6863      	ldr	r3, [r4, #4]
d0081c2e:	42a2      	cmp	r2, r4
d0081c30:	bf0c      	ite	eq
d0081c32:	600b      	streq	r3, [r1, #0]
d0081c34:	6053      	strne	r3, [r2, #4]
d0081c36:	4630      	mov	r0, r6
d0081c38:	f000 f8ac 	bl	d0081d94 <__malloc_unlock>
d0081c3c:	f104 000b 	add.w	r0, r4, #11
d0081c40:	1d23      	adds	r3, r4, #4
d0081c42:	f020 0007 	bic.w	r0, r0, #7
d0081c46:	1ac2      	subs	r2, r0, r3
d0081c48:	d0cc      	beq.n	d0081be4 <_malloc_r+0x20>
d0081c4a:	1a1b      	subs	r3, r3, r0
d0081c4c:	50a3      	str	r3, [r4, r2]
d0081c4e:	e7c9      	b.n	d0081be4 <_malloc_r+0x20>
d0081c50:	4622      	mov	r2, r4
d0081c52:	6864      	ldr	r4, [r4, #4]
d0081c54:	e7cc      	b.n	d0081bf0 <_malloc_r+0x2c>
d0081c56:	1cc4      	adds	r4, r0, #3
d0081c58:	f024 0403 	bic.w	r4, r4, #3
d0081c5c:	42a0      	cmp	r0, r4
d0081c5e:	d0e3      	beq.n	d0081c28 <_malloc_r+0x64>
d0081c60:	1a21      	subs	r1, r4, r0
d0081c62:	4630      	mov	r0, r6
d0081c64:	f7fe fa3c 	bl	d00800e0 <_sbrk_r>
d0081c68:	3001      	adds	r0, #1
d0081c6a:	d1dd      	bne.n	d0081c28 <_malloc_r+0x64>
d0081c6c:	e7cf      	b.n	d0081c0e <_malloc_r+0x4a>
d0081c6e:	bf00      	nop
d0081c70:	d00823ec 	.word	0xd00823ec
d0081c74:	d00823f0 	.word	0xd00823f0

d0081c78 <__sread>:
d0081c78:	b510      	push	{r4, lr}
d0081c7a:	460c      	mov	r4, r1
d0081c7c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081c80:	f000 f88e 	bl	d0081da0 <_read_r>
d0081c84:	2800      	cmp	r0, #0
d0081c86:	bfab      	itete	ge
d0081c88:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0081c8a:	89a3      	ldrhlt	r3, [r4, #12]
d0081c8c:	181b      	addge	r3, r3, r0
d0081c8e:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0081c92:	bfac      	ite	ge
d0081c94:	6563      	strge	r3, [r4, #84]	; 0x54
d0081c96:	81a3      	strhlt	r3, [r4, #12]
d0081c98:	bd10      	pop	{r4, pc}

d0081c9a <__swrite>:
d0081c9a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0081c9e:	461f      	mov	r7, r3
d0081ca0:	898b      	ldrh	r3, [r1, #12]
d0081ca2:	05db      	lsls	r3, r3, #23
d0081ca4:	4605      	mov	r5, r0
d0081ca6:	460c      	mov	r4, r1
d0081ca8:	4616      	mov	r6, r2
d0081caa:	d505      	bpl.n	d0081cb8 <__swrite+0x1e>
d0081cac:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081cb0:	2302      	movs	r3, #2
d0081cb2:	2200      	movs	r2, #0
d0081cb4:	f000 f856 	bl	d0081d64 <_lseek_r>
d0081cb8:	89a3      	ldrh	r3, [r4, #12]
d0081cba:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0081cbe:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0081cc2:	81a3      	strh	r3, [r4, #12]
d0081cc4:	4632      	mov	r2, r6
d0081cc6:	463b      	mov	r3, r7
d0081cc8:	4628      	mov	r0, r5
d0081cca:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0081cce:	f7fe b9c1 	b.w	d0080054 <_write_r>

d0081cd2 <__sseek>:
d0081cd2:	b510      	push	{r4, lr}
d0081cd4:	460c      	mov	r4, r1
d0081cd6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081cda:	f000 f843 	bl	d0081d64 <_lseek_r>
d0081cde:	1c43      	adds	r3, r0, #1
d0081ce0:	89a3      	ldrh	r3, [r4, #12]
d0081ce2:	bf15      	itete	ne
d0081ce4:	6560      	strne	r0, [r4, #84]	; 0x54
d0081ce6:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0081cea:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0081cee:	81a3      	strheq	r3, [r4, #12]
d0081cf0:	bf18      	it	ne
d0081cf2:	81a3      	strhne	r3, [r4, #12]
d0081cf4:	bd10      	pop	{r4, pc}

d0081cf6 <__sclose>:
d0081cf6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081cfa:	f000 b801 	b.w	d0081d00 <_close_r>
	...

d0081d00 <_close_r>:
d0081d00:	b538      	push	{r3, r4, r5, lr}
d0081d02:	4d06      	ldr	r5, [pc, #24]	; (d0081d1c <_close_r+0x1c>)
d0081d04:	2300      	movs	r3, #0
d0081d06:	4604      	mov	r4, r0
d0081d08:	4608      	mov	r0, r1
d0081d0a:	602b      	str	r3, [r5, #0]
d0081d0c:	f7fe f9dc 	bl	d00800c8 <_close>
d0081d10:	1c43      	adds	r3, r0, #1
d0081d12:	d102      	bne.n	d0081d1a <_close_r+0x1a>
d0081d14:	682b      	ldr	r3, [r5, #0]
d0081d16:	b103      	cbz	r3, d0081d1a <_close_r+0x1a>
d0081d18:	6023      	str	r3, [r4, #0]
d0081d1a:	bd38      	pop	{r3, r4, r5, pc}
d0081d1c:	d0082430 	.word	0xd0082430

d0081d20 <_fstat_r>:
d0081d20:	b538      	push	{r3, r4, r5, lr}
d0081d22:	4d07      	ldr	r5, [pc, #28]	; (d0081d40 <_fstat_r+0x20>)
d0081d24:	2300      	movs	r3, #0
d0081d26:	4604      	mov	r4, r0
d0081d28:	4608      	mov	r0, r1
d0081d2a:	4611      	mov	r1, r2
d0081d2c:	602b      	str	r3, [r5, #0]
d0081d2e:	f7fe f9cf 	bl	d00800d0 <_fstat>
d0081d32:	1c43      	adds	r3, r0, #1
d0081d34:	d102      	bne.n	d0081d3c <_fstat_r+0x1c>
d0081d36:	682b      	ldr	r3, [r5, #0]
d0081d38:	b103      	cbz	r3, d0081d3c <_fstat_r+0x1c>
d0081d3a:	6023      	str	r3, [r4, #0]
d0081d3c:	bd38      	pop	{r3, r4, r5, pc}
d0081d3e:	bf00      	nop
d0081d40:	d0082430 	.word	0xd0082430

d0081d44 <_isatty_r>:
d0081d44:	b538      	push	{r3, r4, r5, lr}
d0081d46:	4d06      	ldr	r5, [pc, #24]	; (d0081d60 <_isatty_r+0x1c>)
d0081d48:	2300      	movs	r3, #0
d0081d4a:	4604      	mov	r4, r0
d0081d4c:	4608      	mov	r0, r1
d0081d4e:	602b      	str	r3, [r5, #0]
d0081d50:	f7fe f9e6 	bl	d0080120 <_isatty>
d0081d54:	1c43      	adds	r3, r0, #1
d0081d56:	d102      	bne.n	d0081d5e <_isatty_r+0x1a>
d0081d58:	682b      	ldr	r3, [r5, #0]
d0081d5a:	b103      	cbz	r3, d0081d5e <_isatty_r+0x1a>
d0081d5c:	6023      	str	r3, [r4, #0]
d0081d5e:	bd38      	pop	{r3, r4, r5, pc}
d0081d60:	d0082430 	.word	0xd0082430

d0081d64 <_lseek_r>:
d0081d64:	b538      	push	{r3, r4, r5, lr}
d0081d66:	4d07      	ldr	r5, [pc, #28]	; (d0081d84 <_lseek_r+0x20>)
d0081d68:	4604      	mov	r4, r0
d0081d6a:	4608      	mov	r0, r1
d0081d6c:	4611      	mov	r1, r2
d0081d6e:	2200      	movs	r2, #0
d0081d70:	602a      	str	r2, [r5, #0]
d0081d72:	461a      	mov	r2, r3
d0081d74:	f7fe f9b2 	bl	d00800dc <_lseek>
d0081d78:	1c43      	adds	r3, r0, #1
d0081d7a:	d102      	bne.n	d0081d82 <_lseek_r+0x1e>
d0081d7c:	682b      	ldr	r3, [r5, #0]
d0081d7e:	b103      	cbz	r3, d0081d82 <_lseek_r+0x1e>
d0081d80:	6023      	str	r3, [r4, #0]
d0081d82:	bd38      	pop	{r3, r4, r5, pc}
d0081d84:	d0082430 	.word	0xd0082430

d0081d88 <__malloc_lock>:
d0081d88:	4801      	ldr	r0, [pc, #4]	; (d0081d90 <__malloc_lock+0x8>)
d0081d8a:	f7ff be5d 	b.w	d0081a48 <__retarget_lock_acquire_recursive>
d0081d8e:	bf00      	nop
d0081d90:	d0082428 	.word	0xd0082428

d0081d94 <__malloc_unlock>:
d0081d94:	4801      	ldr	r0, [pc, #4]	; (d0081d9c <__malloc_unlock+0x8>)
d0081d96:	f7ff be58 	b.w	d0081a4a <__retarget_lock_release_recursive>
d0081d9a:	bf00      	nop
d0081d9c:	d0082428 	.word	0xd0082428

d0081da0 <_read_r>:
d0081da0:	b538      	push	{r3, r4, r5, lr}
d0081da2:	4d07      	ldr	r5, [pc, #28]	; (d0081dc0 <_read_r+0x20>)
d0081da4:	4604      	mov	r4, r0
d0081da6:	4608      	mov	r0, r1
d0081da8:	4611      	mov	r1, r2
d0081daa:	2200      	movs	r2, #0
d0081dac:	602a      	str	r2, [r5, #0]
d0081dae:	461a      	mov	r2, r3
d0081db0:	f7fe f980 	bl	d00800b4 <_read>
d0081db4:	1c43      	adds	r3, r0, #1
d0081db6:	d102      	bne.n	d0081dbe <_read_r+0x1e>
d0081db8:	682b      	ldr	r3, [r5, #0]
d0081dba:	b103      	cbz	r3, d0081dbe <_read_r+0x1e>
d0081dbc:	6023      	str	r3, [r4, #0]
d0081dbe:	bd38      	pop	{r3, r4, r5, pc}
d0081dc0:	d0082430 	.word	0xd0082430
d0081dc4:	43554f54 	.word	0x43554f54
d0081dc8:	43412048 	.word	0x43412048
d0081dcc:	45564954 	.word	0x45564954
d0081dd0:	00000000 	.word	0x00000000
d0081dd4:	544f4f42 	.word	0x544f4f42
d0081dd8:	4f524620 	.word	0x4f524620
d0081ddc:	4e45544e 	.word	0x4e45544e
d0081de0:	00000044 	.word	0x00000044
d0081de4:	53554150 	.word	0x53554150
d0081de8:	00004445 	.word	0x00004445
d0081dec:	59414c50 	.word	0x59414c50
d0081df0:	00474e49 	.word	0x00474e49
d0081df4:	544f4f54 	.word	0x544f4f54
d0081df8:	43412048 	.word	0x43412048
d0081dfc:	62204548 	.word	0x62204548
d0081e00:	20746f6f 	.word	0x20746f6f
d0081e04:	6e6f7266 	.word	0x6e6f7266
d0081e08:	646e6574 	.word	0x646e6574
d0081e0c:	73657420 	.word	0x73657420
d0081e10:	74732074 	.word	0x74732074
d0081e14:	69747261 	.word	0x69747261
d0081e18:	0000676e 	.word	0x0000676e
d0081e1c:	61636473 	.word	0x61636473
d0081e20:	2f3a6472 	.word	0x2f3a6472
d0081e24:	6576656c 	.word	0x6576656c
d0081e28:	6d2e316c 	.word	0x6d2e316c
d0081e2c:	0000646f 	.word	0x0000646f
d0081e30:	42444953 	.word	0x42444953
d0081e34:	4d20584f 	.word	0x4d20584f
d0081e38:	43495355 	.word	0x43495355
d0081e3c:	584f4220 	.word	0x584f4220
d0081e40:	00000000 	.word	0x00000000
d0081e44:	50415247 	.word	0x50415247
d0081e48:	53434948 	.word	0x53434948
d0081e4c:	49525020 	.word	0x49525020
d0081e50:	4954494d 	.word	0x4954494d
d0081e54:	54204556 	.word	0x54204556
d0081e58:	00545345 	.word	0x00545345
d0081e5c:	20504154 	.word	0x20504154
d0081e60:	52542041 	.word	0x52542041
d0081e64:	004b4341 	.word	0x004b4341
d0081e68:	20203130 	.word	0x20203130
d0081e6c:	544f4f42 	.word	0x544f4f42
d0081e70:	5345545f 	.word	0x5345545f
d0081e74:	4f4d2e54 	.word	0x4f4d2e54
d0081e78:	00000044 	.word	0x00000044
d0081e7c:	20203230 	.word	0x20203230
d0081e80:	43204453 	.word	0x43204453
d0081e84:	20445241 	.word	0x20445241
d0081e88:	4e414353 	.word	0x4e414353
d0081e8c:	4f4f5320 	.word	0x4f4f5320
d0081e90:	0000004e 	.word	0x0000004e
d0081e94:	20203330 	.word	0x20203330
d0081e98:	544f4f54 	.word	0x544f4f54
d0081e9c:	48434148 	.word	0x48434148
d0081ea0:	50412e45 	.word	0x50412e45
d0081ea4:	00000050 	.word	0x00000050
d0081ea8:	43554f54 	.word	0x43554f54
d0081eac:	4c502048 	.word	0x4c502048
d0081eb0:	494c5941 	.word	0x494c5941
d0081eb4:	2f205453 	.word	0x2f205453
d0081eb8:	41525420 	.word	0x41525420
d0081ebc:	4f50534e 	.word	0x4f50534e
d0081ec0:	2d205452 	.word	0x2d205452
d0081ec4:	524f4320 	.word	0x524f4320
d0081ec8:	52472045 	.word	0x52472045
d0081ecc:	49485041 	.word	0x49485041
d0081ed0:	4f205343 	.word	0x4f205343
d0081ed4:	00594c4e 	.word	0x00594c4e

d0081ed8 <_global_impure_ptr>:
d0081ed8:	d0081f48                                H...

d0081edc <__sf_fake_stderr>:
	...

d0081efc <__sf_fake_stdin>:
	...

d0081f1c <__sf_fake_stdout>:
	...

Disassembly of section .init:

d0081f3c <_init>:
d0081f3c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0081f3e:	bf00      	nop

Disassembly of section .fini:

d0081f40 <_fini>:
d0081f40:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0081f42:	bf00      	nop
