
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
d008001e:	f000 fa07 	bl	d0080430 <setbuf>
d0080022:	6833      	ldr	r3, [r6, #0]
d0080024:	2100      	movs	r1, #0
d0080026:	68d8      	ldr	r0, [r3, #12]
d0080028:	f000 fa02 	bl	d0080430 <setbuf>
d008002c:	4629      	mov	r1, r5
d008002e:	4620      	mov	r0, r4
d0080030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0080034:	f000 b874 	b.w	d0080120 <main>
d0080038:	d00810f8 	.word	0xd00810f8

d008003c <initMalloc>:
d008003c:	4902      	ldr	r1, [pc, #8]	; (d0080048 <initMalloc+0xc>)
d008003e:	4b03      	ldr	r3, [pc, #12]	; (d008004c <initMalloc+0x10>)
d0080040:	4a03      	ldr	r2, [pc, #12]	; (d0080050 <initMalloc+0x14>)
d0080042:	1a5b      	subs	r3, r3, r1
d0080044:	6013      	str	r3, [r2, #0]
d0080046:	4770      	bx	lr
d0080048:	d00831b8 	.word	0xd00831b8
d008004c:	d0600000 	.word	0xd0600000
d0080050:	d0081178 	.word	0xd0081178

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
d008009c:	f000 f9ba 	bl	d0080414 <__errno>
d00800a0:	2209      	movs	r2, #9
d00800a2:	4603      	mov	r3, r0
d00800a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800a8:	601a      	str	r2, [r3, #0]
d00800aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00800ac:	d0081164 	.word	0xd0081164
d00800b0:	2001f000 	.word	0x2001f000

d00800b4 <_read>:
d00800b4:	b508      	push	{r3, lr}
d00800b6:	f000 f9ad 	bl	d0080414 <__errno>
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
d0080102:	f000 f987 	bl	d0080414 <__errno>
d0080106:	220c      	movs	r2, #12
d0080108:	4603      	mov	r3, r0
d008010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008010e:	601a      	str	r2, [r3, #0]
d0080110:	bd10      	pop	{r4, pc}
d0080112:	bf00      	nop
d0080114:	d0081160 	.word	0xd0081160
d0080118:	d00831b8 	.word	0xd00831b8
d008011c:	d0600000 	.word	0xd0600000

d0080120 <main>:
d0080120:	4c73      	ldr	r4, [pc, #460]	; (d00802f0 <main+0x1d0>)
d0080122:	f44f 2000 	mov.w	r0, #524288	; 0x80000
d0080126:	f8df 91d8 	ldr.w	r9, [pc, #472]	; d0080300 <main+0x1e0>
d008012a:	7823      	ldrb	r3, [r4, #0]
d008012c:	7862      	ldrb	r2, [r4, #1]
d008012e:	78a1      	ldrb	r1, [r4, #2]
d0080130:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080134:	78e2      	ldrb	r2, [r4, #3]
d0080136:	f8df 81cc 	ldr.w	r8, [pc, #460]	; d0080304 <main+0x1e4>
d008013a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008013e:	4d6d      	ldr	r5, [pc, #436]	; (d00802f4 <main+0x1d4>)
d0080140:	f8df a1c4 	ldr.w	sl, [pc, #452]	; d0080308 <main+0x1e8>
d0080144:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080148:	e92d 4880 	stmdb	sp!, {r7, fp, lr}
d008014c:	681b      	ldr	r3, [r3, #0]
d008014e:	b085      	sub	sp, #20
d0080150:	4798      	blx	r3
d0080152:	2700      	movs	r7, #0
d0080154:	f7ff ff72 	bl	d008003c <initMalloc>
d0080158:	7b23      	ldrb	r3, [r4, #12]
d008015a:	7b62      	ldrb	r2, [r4, #13]
d008015c:	2190      	movs	r1, #144	; 0x90
d008015e:	7ba6      	ldrb	r6, [r4, #14]
d0080160:	20dc      	movs	r0, #220	; 0xdc
d0080162:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080166:	7be2      	ldrb	r2, [r4, #15]
d0080168:	f8df b1a0 	ldr.w	fp, [pc, #416]	; d008030c <main+0x1ec>
d008016c:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0080170:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080174:	681b      	ldr	r3, [r3, #0]
d0080176:	691b      	ldr	r3, [r3, #16]
d0080178:	4798      	blx	r3
d008017a:	7b20      	ldrb	r0, [r4, #12]
d008017c:	7b61      	ldrb	r1, [r4, #13]
d008017e:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0080182:	7ba2      	ldrb	r2, [r4, #14]
d0080184:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d0080188:	7be1      	ldrb	r1, [r4, #15]
d008018a:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
d008018e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080192:	ea40 6001 	orr.w	r0, r0, r1, lsl #24
d0080196:	4619      	mov	r1, r3
d0080198:	6806      	ldr	r6, [r0, #0]
d008019a:	4610      	mov	r0, r2
d008019c:	9700      	str	r7, [sp, #0]
d008019e:	6976      	ldr	r6, [r6, #20]
d00801a0:	47b0      	blx	r6
d00801a2:	7d23      	ldrb	r3, [r4, #20]
d00801a4:	7d62      	ldrb	r2, [r4, #21]
d00801a6:	f44f 7000 	mov.w	r0, #512	; 0x200
d00801aa:	7da1      	ldrb	r1, [r4, #22]
d00801ac:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00801b0:	7de2      	ldrb	r2, [r4, #23]
d00801b2:	4e51      	ldr	r6, [pc, #324]	; (d00802f8 <main+0x1d8>)
d00801b4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00801b8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00801bc:	681b      	ldr	r3, [r3, #0]
d00801be:	681b      	ldr	r3, [r3, #0]
d00801c0:	4798      	blx	r3
d00801c2:	7d22      	ldrb	r2, [r4, #20]
d00801c4:	7d63      	ldrb	r3, [r4, #21]
d00801c6:	2101      	movs	r1, #1
d00801c8:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d00801cc:	7da3      	ldrb	r3, [r4, #22]
d00801ce:	7de0      	ldrb	r0, [r4, #23]
d00801d0:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d00801d4:	7b23      	ldrb	r3, [r4, #12]
d00801d6:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d00801da:	7b60      	ldrb	r0, [r4, #13]
d00801dc:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d00801e0:	6810      	ldr	r0, [r2, #0]
d00801e2:	7ba2      	ldrb	r2, [r4, #14]
d00801e4:	6840      	ldr	r0, [r0, #4]
d00801e6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00801ea:	7be2      	ldrb	r2, [r4, #15]
d00801ec:	7001      	strb	r1, [r0, #0]
d00801ee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00801f2:	681b      	ldr	r3, [r3, #0]
d00801f4:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d00801f6:	4798      	blx	r3
d00801f8:	7b23      	ldrb	r3, [r4, #12]
d00801fa:	7b62      	ldrb	r2, [r4, #13]
d00801fc:	7ba1      	ldrb	r1, [r4, #14]
d00801fe:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080202:	7be2      	ldrb	r2, [r4, #15]
d0080204:	f8c9 0000 	str.w	r0, [r9]
d0080208:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008020c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080210:	681b      	ldr	r3, [r3, #0]
d0080212:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d0080214:	4798      	blx	r3
d0080216:	7b23      	ldrb	r3, [r4, #12]
d0080218:	7b62      	ldrb	r2, [r4, #13]
d008021a:	7ba1      	ldrb	r1, [r4, #14]
d008021c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080220:	7be2      	ldrb	r2, [r4, #15]
d0080222:	f8c8 0000 	str.w	r0, [r8]
d0080226:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008022a:	4834      	ldr	r0, [pc, #208]	; (d00802fc <main+0x1dc>)
d008022c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080230:	681b      	ldr	r3, [r3, #0]
d0080232:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d0080234:	4798      	blx	r3
d0080236:	7e23      	ldrb	r3, [r4, #24]
d0080238:	7e62      	ldrb	r2, [r4, #25]
d008023a:	7ea1      	ldrb	r1, [r4, #26]
d008023c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080240:	7ee2      	ldrb	r2, [r4, #27]
d0080242:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080246:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008024a:	681b      	ldr	r3, [r3, #0]
d008024c:	4798      	blx	r3
d008024e:	7b23      	ldrb	r3, [r4, #12]
d0080250:	7b62      	ldrb	r2, [r4, #13]
d0080252:	7ba1      	ldrb	r1, [r4, #14]
d0080254:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080258:	7be2      	ldrb	r2, [r4, #15]
d008025a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008025e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080262:	681b      	ldr	r3, [r3, #0]
d0080264:	6d5b      	ldr	r3, [r3, #84]	; 0x54
d0080266:	4798      	blx	r3
d0080268:	7b23      	ldrb	r3, [r4, #12]
d008026a:	7b62      	ldrb	r2, [r4, #13]
d008026c:	2157      	movs	r1, #87	; 0x57
d008026e:	2050      	movs	r0, #80	; 0x50
d0080270:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080274:	7ba2      	ldrb	r2, [r4, #14]
d0080276:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d008027a:	7be2      	ldrb	r2, [r4, #15]
d008027c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080280:	681b      	ldr	r3, [r3, #0]
d0080282:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d0080284:	4798      	blx	r3
d0080286:	7b23      	ldrb	r3, [r4, #12]
d0080288:	7b62      	ldrb	r2, [r4, #13]
d008028a:	2004      	movs	r0, #4
d008028c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080290:	7ba2      	ldrb	r2, [r4, #14]
d0080292:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080296:	7be2      	ldrb	r2, [r4, #15]
d0080298:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008029c:	681b      	ldr	r3, [r3, #0]
d008029e:	6e5b      	ldr	r3, [r3, #100]	; 0x64
d00802a0:	4798      	blx	r3
d00802a2:	7b23      	ldrb	r3, [r4, #12]
d00802a4:	7b62      	ldrb	r2, [r4, #13]
d00802a6:	f8d9 0000 	ldr.w	r0, [r9]
d00802aa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00802ae:	7ba2      	ldrb	r2, [r4, #14]
d00802b0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00802b4:	7be2      	ldrb	r2, [r4, #15]
d00802b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00802ba:	681b      	ldr	r3, [r3, #0]
d00802bc:	69db      	ldr	r3, [r3, #28]
d00802be:	4798      	blx	r3
d00802c0:	7b23      	ldrb	r3, [r4, #12]
d00802c2:	7b62      	ldrb	r2, [r4, #13]
d00802c4:	f8d8 0000 	ldr.w	r0, [r8]
d00802c8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00802cc:	7ba2      	ldrb	r2, [r4, #14]
d00802ce:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00802d2:	7be2      	ldrb	r2, [r4, #15]
d00802d4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00802d8:	681b      	ldr	r3, [r3, #0]
d00802da:	699b      	ldr	r3, [r3, #24]
d00802dc:	4798      	blx	r3
d00802de:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d00802e2:	f44f 62ca 	mov.w	r2, #1616	; 0x650
d00802e6:	602b      	str	r3, [r5, #0]
d00802e8:	f8ca 2000 	str.w	r2, [sl]
d00802ec:	e029      	b.n	d0080342 <main+0x222>
d00802ee:	bf00      	nop
d00802f0:	2001f000 	.word	0x2001f000
d00802f4:	d00810f4 	.word	0xd00810f4
d00802f8:	d0081168 	.word	0xd0081168
d00802fc:	d0080c20 	.word	0xd0080c20
d0080300:	d00811a0 	.word	0xd00811a0
d0080304:	d0081180 	.word	0xd0081180
d0080308:	d008116c 	.word	0xd008116c
d008030c:	d0081020 	.word	0xd0081020
d0080310:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0080314:	7be3      	ldrb	r3, [r4, #15]
d0080316:	f8d8 1000 	ldr.w	r1, [r8]
d008031a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008031e:	f8d9 0000 	ldr.w	r0, [r9]
d0080322:	681b      	ldr	r3, [r3, #0]
d0080324:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0080326:	4798      	blx	r3
d0080328:	7b20      	ldrb	r0, [r4, #12]
d008032a:	7b61      	ldrb	r1, [r4, #13]
d008032c:	7ba2      	ldrb	r2, [r4, #14]
d008032e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0080332:	7be3      	ldrb	r3, [r4, #15]
d0080334:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080338:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008033c:	681b      	ldr	r3, [r3, #0]
d008033e:	681b      	ldr	r3, [r3, #0]
d0080340:	4798      	blx	r3
d0080342:	7b20      	ldrb	r0, [r4, #12]
d0080344:	7b61      	ldrb	r1, [r4, #13]
d0080346:	7ba2      	ldrb	r2, [r4, #14]
d0080348:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d008034c:	7be3      	ldrb	r3, [r4, #15]
d008034e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080352:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080356:	681b      	ldr	r3, [r3, #0]
d0080358:	68db      	ldr	r3, [r3, #12]
d008035a:	4798      	blx	r3
d008035c:	7b20      	ldrb	r0, [r4, #12]
d008035e:	7b61      	ldrb	r1, [r4, #13]
d0080360:	7ba2      	ldrb	r2, [r4, #14]
d0080362:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0080366:	7be3      	ldrb	r3, [r4, #15]
d0080368:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d008036c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080370:	685b      	ldr	r3, [r3, #4]
d0080372:	681b      	ldr	r3, [r3, #0]
d0080374:	4798      	blx	r3
d0080376:	7b23      	ldrb	r3, [r4, #12]
d0080378:	7b62      	ldrb	r2, [r4, #13]
d008037a:	200b      	movs	r0, #11
d008037c:	7ba1      	ldrb	r1, [r4, #14]
d008037e:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
d0080382:	f8da 7000 	ldr.w	r7, [sl]
d0080386:	682b      	ldr	r3, [r5, #0]
d0080388:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
d008038c:	7be2      	ldrb	r2, [r4, #15]
d008038e:	3b02      	subs	r3, #2
d0080390:	427f      	negs	r7, r7
d0080392:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d0080396:	42bb      	cmp	r3, r7
d0080398:	6852      	ldr	r2, [r2, #4]
d008039a:	bfd8      	it	le
d008039c:	f44f 73f0 	movle.w	r3, #480	; 0x1e0
d00803a0:	68d2      	ldr	r2, [r2, #12]
d00803a2:	602b      	str	r3, [r5, #0]
d00803a4:	4790      	blx	r2
d00803a6:	f894 e00c 	ldrb.w	lr, [r4, #12]
d00803aa:	f04f 0c0c 	mov.w	ip, #12
d00803ae:	7b67      	ldrb	r7, [r4, #13]
d00803b0:	2157      	movs	r1, #87	; 0x57
d00803b2:	7ba2      	ldrb	r2, [r4, #14]
d00803b4:	2050      	movs	r0, #80	; 0x50
d00803b6:	ea4e 2307 	orr.w	r3, lr, r7, lsl #8
d00803ba:	f894 e00f 	ldrb.w	lr, [r4, #15]
d00803be:	ea43 4702 	orr.w	r7, r3, r2, lsl #16
d00803c2:	2302      	movs	r3, #2
d00803c4:	ea47 620e 	orr.w	r2, r7, lr, lsl #24
d00803c8:	6857      	ldr	r7, [r2, #4]
d00803ca:	465a      	mov	r2, fp
d00803cc:	9102      	str	r1, [sp, #8]
d00803ce:	2108      	movs	r1, #8
d00803d0:	9001      	str	r0, [sp, #4]
d00803d2:	9300      	str	r3, [sp, #0]
d00803d4:	f8cd c00c 	str.w	ip, [sp, #12]
d00803d8:	6828      	ldr	r0, [r5, #0]
d00803da:	6b7f      	ldr	r7, [r7, #52]	; 0x34
d00803dc:	47b8      	blx	r7
d00803de:	7833      	ldrb	r3, [r6, #0]
d00803e0:	f1c3 0301 	rsb	r3, r3, #1
d00803e4:	b2db      	uxtb	r3, r3
d00803e6:	7033      	strb	r3, [r6, #0]
d00803e8:	7833      	ldrb	r3, [r6, #0]
d00803ea:	7b21      	ldrb	r1, [r4, #12]
d00803ec:	7b60      	ldrb	r0, [r4, #13]
d00803ee:	7ba2      	ldrb	r2, [r4, #14]
d00803f0:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d00803f4:	2b00      	cmp	r3, #0
d00803f6:	d18b      	bne.n	d0080310 <main+0x1f0>
d00803f8:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d00803fc:	7be3      	ldrb	r3, [r4, #15]
d00803fe:	f8d9 1000 	ldr.w	r1, [r9]
d0080402:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080406:	f8d8 0000 	ldr.w	r0, [r8]
d008040a:	681b      	ldr	r3, [r3, #0]
d008040c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d008040e:	4798      	blx	r3
d0080410:	e78a      	b.n	d0080328 <main+0x208>
d0080412:	bf00      	nop

d0080414 <__errno>:
d0080414:	4b01      	ldr	r3, [pc, #4]	; (d008041c <__errno+0x8>)
d0080416:	6818      	ldr	r0, [r3, #0]
d0080418:	4770      	bx	lr
d008041a:	bf00      	nop
d008041c:	d00810f8 	.word	0xd00810f8

d0080420 <memset>:
d0080420:	4402      	add	r2, r0
d0080422:	4603      	mov	r3, r0
d0080424:	4293      	cmp	r3, r2
d0080426:	d100      	bne.n	d008042a <memset+0xa>
d0080428:	4770      	bx	lr
d008042a:	f803 1b01 	strb.w	r1, [r3], #1
d008042e:	e7f9      	b.n	d0080424 <memset+0x4>

d0080430 <setbuf>:
d0080430:	2900      	cmp	r1, #0
d0080432:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0080436:	bf0c      	ite	eq
d0080438:	2202      	moveq	r2, #2
d008043a:	2200      	movne	r2, #0
d008043c:	f000 b800 	b.w	d0080440 <setvbuf>

d0080440 <setvbuf>:
d0080440:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0080444:	461d      	mov	r5, r3
d0080446:	4b5d      	ldr	r3, [pc, #372]	; (d00805bc <setvbuf+0x17c>)
d0080448:	681f      	ldr	r7, [r3, #0]
d008044a:	4604      	mov	r4, r0
d008044c:	460e      	mov	r6, r1
d008044e:	4690      	mov	r8, r2
d0080450:	b127      	cbz	r7, d008045c <setvbuf+0x1c>
d0080452:	69bb      	ldr	r3, [r7, #24]
d0080454:	b913      	cbnz	r3, d008045c <setvbuf+0x1c>
d0080456:	4638      	mov	r0, r7
d0080458:	f000 f9d2 	bl	d0080800 <__sinit>
d008045c:	4b58      	ldr	r3, [pc, #352]	; (d00805c0 <setvbuf+0x180>)
d008045e:	429c      	cmp	r4, r3
d0080460:	d167      	bne.n	d0080532 <setvbuf+0xf2>
d0080462:	687c      	ldr	r4, [r7, #4]
d0080464:	f1b8 0f02 	cmp.w	r8, #2
d0080468:	d006      	beq.n	d0080478 <setvbuf+0x38>
d008046a:	f1b8 0f01 	cmp.w	r8, #1
d008046e:	f200 809f 	bhi.w	d00805b0 <setvbuf+0x170>
d0080472:	2d00      	cmp	r5, #0
d0080474:	f2c0 809c 	blt.w	d00805b0 <setvbuf+0x170>
d0080478:	6e63      	ldr	r3, [r4, #100]	; 0x64
d008047a:	07db      	lsls	r3, r3, #31
d008047c:	d405      	bmi.n	d008048a <setvbuf+0x4a>
d008047e:	89a3      	ldrh	r3, [r4, #12]
d0080480:	0598      	lsls	r0, r3, #22
d0080482:	d402      	bmi.n	d008048a <setvbuf+0x4a>
d0080484:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0080486:	f000 fa59 	bl	d008093c <__retarget_lock_acquire_recursive>
d008048a:	4621      	mov	r1, r4
d008048c:	4638      	mov	r0, r7
d008048e:	f000 f923 	bl	d00806d8 <_fflush_r>
d0080492:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0080494:	b141      	cbz	r1, d00804a8 <setvbuf+0x68>
d0080496:	f104 0344 	add.w	r3, r4, #68	; 0x44
d008049a:	4299      	cmp	r1, r3
d008049c:	d002      	beq.n	d00804a4 <setvbuf+0x64>
d008049e:	4638      	mov	r0, r7
d00804a0:	f000 fa7a 	bl	d0080998 <_free_r>
d00804a4:	2300      	movs	r3, #0
d00804a6:	6363      	str	r3, [r4, #52]	; 0x34
d00804a8:	2300      	movs	r3, #0
d00804aa:	61a3      	str	r3, [r4, #24]
d00804ac:	6063      	str	r3, [r4, #4]
d00804ae:	89a3      	ldrh	r3, [r4, #12]
d00804b0:	0619      	lsls	r1, r3, #24
d00804b2:	d503      	bpl.n	d00804bc <setvbuf+0x7c>
d00804b4:	6921      	ldr	r1, [r4, #16]
d00804b6:	4638      	mov	r0, r7
d00804b8:	f000 fa6e 	bl	d0080998 <_free_r>
d00804bc:	89a3      	ldrh	r3, [r4, #12]
d00804be:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00804c2:	f023 0303 	bic.w	r3, r3, #3
d00804c6:	f1b8 0f02 	cmp.w	r8, #2
d00804ca:	81a3      	strh	r3, [r4, #12]
d00804cc:	d06c      	beq.n	d00805a8 <setvbuf+0x168>
d00804ce:	ab01      	add	r3, sp, #4
d00804d0:	466a      	mov	r2, sp
d00804d2:	4621      	mov	r1, r4
d00804d4:	4638      	mov	r0, r7
d00804d6:	f000 fa33 	bl	d0080940 <__swhatbuf_r>
d00804da:	89a3      	ldrh	r3, [r4, #12]
d00804dc:	4318      	orrs	r0, r3
d00804de:	81a0      	strh	r0, [r4, #12]
d00804e0:	2d00      	cmp	r5, #0
d00804e2:	d130      	bne.n	d0080546 <setvbuf+0x106>
d00804e4:	9d00      	ldr	r5, [sp, #0]
d00804e6:	4628      	mov	r0, r5
d00804e8:	f000 fa4e 	bl	d0080988 <malloc>
d00804ec:	4606      	mov	r6, r0
d00804ee:	2800      	cmp	r0, #0
d00804f0:	d155      	bne.n	d008059e <setvbuf+0x15e>
d00804f2:	f8dd 9000 	ldr.w	r9, [sp]
d00804f6:	45a9      	cmp	r9, r5
d00804f8:	d14a      	bne.n	d0080590 <setvbuf+0x150>
d00804fa:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00804fe:	2200      	movs	r2, #0
d0080500:	60a2      	str	r2, [r4, #8]
d0080502:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0080506:	6022      	str	r2, [r4, #0]
d0080508:	6122      	str	r2, [r4, #16]
d008050a:	2201      	movs	r2, #1
d008050c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0080510:	6162      	str	r2, [r4, #20]
d0080512:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0080514:	f043 0302 	orr.w	r3, r3, #2
d0080518:	07d2      	lsls	r2, r2, #31
d008051a:	81a3      	strh	r3, [r4, #12]
d008051c:	d405      	bmi.n	d008052a <setvbuf+0xea>
d008051e:	f413 7f00 	tst.w	r3, #512	; 0x200
d0080522:	d102      	bne.n	d008052a <setvbuf+0xea>
d0080524:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0080526:	f000 fa0a 	bl	d008093e <__retarget_lock_release_recursive>
d008052a:	4628      	mov	r0, r5
d008052c:	b003      	add	sp, #12
d008052e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0080532:	4b24      	ldr	r3, [pc, #144]	; (d00805c4 <setvbuf+0x184>)
d0080534:	429c      	cmp	r4, r3
d0080536:	d101      	bne.n	d008053c <setvbuf+0xfc>
d0080538:	68bc      	ldr	r4, [r7, #8]
d008053a:	e793      	b.n	d0080464 <setvbuf+0x24>
d008053c:	4b22      	ldr	r3, [pc, #136]	; (d00805c8 <setvbuf+0x188>)
d008053e:	429c      	cmp	r4, r3
d0080540:	bf08      	it	eq
d0080542:	68fc      	ldreq	r4, [r7, #12]
d0080544:	e78e      	b.n	d0080464 <setvbuf+0x24>
d0080546:	2e00      	cmp	r6, #0
d0080548:	d0cd      	beq.n	d00804e6 <setvbuf+0xa6>
d008054a:	69bb      	ldr	r3, [r7, #24]
d008054c:	b913      	cbnz	r3, d0080554 <setvbuf+0x114>
d008054e:	4638      	mov	r0, r7
d0080550:	f000 f956 	bl	d0080800 <__sinit>
d0080554:	f1b8 0f01 	cmp.w	r8, #1
d0080558:	bf08      	it	eq
d008055a:	89a3      	ldrheq	r3, [r4, #12]
d008055c:	6026      	str	r6, [r4, #0]
d008055e:	bf04      	itt	eq
d0080560:	f043 0301 	orreq.w	r3, r3, #1
d0080564:	81a3      	strheq	r3, [r4, #12]
d0080566:	89a2      	ldrh	r2, [r4, #12]
d0080568:	f012 0308 	ands.w	r3, r2, #8
d008056c:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0080570:	d01c      	beq.n	d00805ac <setvbuf+0x16c>
d0080572:	07d3      	lsls	r3, r2, #31
d0080574:	bf41      	itttt	mi
d0080576:	2300      	movmi	r3, #0
d0080578:	426d      	negmi	r5, r5
d008057a:	60a3      	strmi	r3, [r4, #8]
d008057c:	61a5      	strmi	r5, [r4, #24]
d008057e:	bf58      	it	pl
d0080580:	60a5      	strpl	r5, [r4, #8]
d0080582:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0080584:	f015 0501 	ands.w	r5, r5, #1
d0080588:	d115      	bne.n	d00805b6 <setvbuf+0x176>
d008058a:	f412 7f00 	tst.w	r2, #512	; 0x200
d008058e:	e7c8      	b.n	d0080522 <setvbuf+0xe2>
d0080590:	4648      	mov	r0, r9
d0080592:	f000 f9f9 	bl	d0080988 <malloc>
d0080596:	4606      	mov	r6, r0
d0080598:	2800      	cmp	r0, #0
d008059a:	d0ae      	beq.n	d00804fa <setvbuf+0xba>
d008059c:	464d      	mov	r5, r9
d008059e:	89a3      	ldrh	r3, [r4, #12]
d00805a0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00805a4:	81a3      	strh	r3, [r4, #12]
d00805a6:	e7d0      	b.n	d008054a <setvbuf+0x10a>
d00805a8:	2500      	movs	r5, #0
d00805aa:	e7a8      	b.n	d00804fe <setvbuf+0xbe>
d00805ac:	60a3      	str	r3, [r4, #8]
d00805ae:	e7e8      	b.n	d0080582 <setvbuf+0x142>
d00805b0:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00805b4:	e7b9      	b.n	d008052a <setvbuf+0xea>
d00805b6:	2500      	movs	r5, #0
d00805b8:	e7b7      	b.n	d008052a <setvbuf+0xea>
d00805ba:	bf00      	nop
d00805bc:	d00810f8 	.word	0xd00810f8
d00805c0:	d00810ac 	.word	0xd00810ac
d00805c4:	d00810cc 	.word	0xd00810cc
d00805c8:	d008108c 	.word	0xd008108c

d00805cc <__sflush_r>:
d00805cc:	898a      	ldrh	r2, [r1, #12]
d00805ce:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00805d2:	4605      	mov	r5, r0
d00805d4:	0710      	lsls	r0, r2, #28
d00805d6:	460c      	mov	r4, r1
d00805d8:	d458      	bmi.n	d008068c <__sflush_r+0xc0>
d00805da:	684b      	ldr	r3, [r1, #4]
d00805dc:	2b00      	cmp	r3, #0
d00805de:	dc05      	bgt.n	d00805ec <__sflush_r+0x20>
d00805e0:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d00805e2:	2b00      	cmp	r3, #0
d00805e4:	dc02      	bgt.n	d00805ec <__sflush_r+0x20>
d00805e6:	2000      	movs	r0, #0
d00805e8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00805ec:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00805ee:	2e00      	cmp	r6, #0
d00805f0:	d0f9      	beq.n	d00805e6 <__sflush_r+0x1a>
d00805f2:	2300      	movs	r3, #0
d00805f4:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d00805f8:	682f      	ldr	r7, [r5, #0]
d00805fa:	602b      	str	r3, [r5, #0]
d00805fc:	d032      	beq.n	d0080664 <__sflush_r+0x98>
d00805fe:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0080600:	89a3      	ldrh	r3, [r4, #12]
d0080602:	075a      	lsls	r2, r3, #29
d0080604:	d505      	bpl.n	d0080612 <__sflush_r+0x46>
d0080606:	6863      	ldr	r3, [r4, #4]
d0080608:	1ac0      	subs	r0, r0, r3
d008060a:	6b63      	ldr	r3, [r4, #52]	; 0x34
d008060c:	b10b      	cbz	r3, d0080612 <__sflush_r+0x46>
d008060e:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0080610:	1ac0      	subs	r0, r0, r3
d0080612:	2300      	movs	r3, #0
d0080614:	4602      	mov	r2, r0
d0080616:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0080618:	6a21      	ldr	r1, [r4, #32]
d008061a:	4628      	mov	r0, r5
d008061c:	47b0      	blx	r6
d008061e:	1c43      	adds	r3, r0, #1
d0080620:	89a3      	ldrh	r3, [r4, #12]
d0080622:	d106      	bne.n	d0080632 <__sflush_r+0x66>
d0080624:	6829      	ldr	r1, [r5, #0]
d0080626:	291d      	cmp	r1, #29
d0080628:	d82c      	bhi.n	d0080684 <__sflush_r+0xb8>
d008062a:	4a2a      	ldr	r2, [pc, #168]	; (d00806d4 <__sflush_r+0x108>)
d008062c:	40ca      	lsrs	r2, r1
d008062e:	07d6      	lsls	r6, r2, #31
d0080630:	d528      	bpl.n	d0080684 <__sflush_r+0xb8>
d0080632:	2200      	movs	r2, #0
d0080634:	6062      	str	r2, [r4, #4]
d0080636:	04d9      	lsls	r1, r3, #19
d0080638:	6922      	ldr	r2, [r4, #16]
d008063a:	6022      	str	r2, [r4, #0]
d008063c:	d504      	bpl.n	d0080648 <__sflush_r+0x7c>
d008063e:	1c42      	adds	r2, r0, #1
d0080640:	d101      	bne.n	d0080646 <__sflush_r+0x7a>
d0080642:	682b      	ldr	r3, [r5, #0]
d0080644:	b903      	cbnz	r3, d0080648 <__sflush_r+0x7c>
d0080646:	6560      	str	r0, [r4, #84]	; 0x54
d0080648:	6b61      	ldr	r1, [r4, #52]	; 0x34
d008064a:	602f      	str	r7, [r5, #0]
d008064c:	2900      	cmp	r1, #0
d008064e:	d0ca      	beq.n	d00805e6 <__sflush_r+0x1a>
d0080650:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0080654:	4299      	cmp	r1, r3
d0080656:	d002      	beq.n	d008065e <__sflush_r+0x92>
d0080658:	4628      	mov	r0, r5
d008065a:	f000 f99d 	bl	d0080998 <_free_r>
d008065e:	2000      	movs	r0, #0
d0080660:	6360      	str	r0, [r4, #52]	; 0x34
d0080662:	e7c1      	b.n	d00805e8 <__sflush_r+0x1c>
d0080664:	6a21      	ldr	r1, [r4, #32]
d0080666:	2301      	movs	r3, #1
d0080668:	4628      	mov	r0, r5
d008066a:	47b0      	blx	r6
d008066c:	1c41      	adds	r1, r0, #1
d008066e:	d1c7      	bne.n	d0080600 <__sflush_r+0x34>
d0080670:	682b      	ldr	r3, [r5, #0]
d0080672:	2b00      	cmp	r3, #0
d0080674:	d0c4      	beq.n	d0080600 <__sflush_r+0x34>
d0080676:	2b1d      	cmp	r3, #29
d0080678:	d001      	beq.n	d008067e <__sflush_r+0xb2>
d008067a:	2b16      	cmp	r3, #22
d008067c:	d101      	bne.n	d0080682 <__sflush_r+0xb6>
d008067e:	602f      	str	r7, [r5, #0]
d0080680:	e7b1      	b.n	d00805e6 <__sflush_r+0x1a>
d0080682:	89a3      	ldrh	r3, [r4, #12]
d0080684:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0080688:	81a3      	strh	r3, [r4, #12]
d008068a:	e7ad      	b.n	d00805e8 <__sflush_r+0x1c>
d008068c:	690f      	ldr	r7, [r1, #16]
d008068e:	2f00      	cmp	r7, #0
d0080690:	d0a9      	beq.n	d00805e6 <__sflush_r+0x1a>
d0080692:	0793      	lsls	r3, r2, #30
d0080694:	680e      	ldr	r6, [r1, #0]
d0080696:	bf08      	it	eq
d0080698:	694b      	ldreq	r3, [r1, #20]
d008069a:	600f      	str	r7, [r1, #0]
d008069c:	bf18      	it	ne
d008069e:	2300      	movne	r3, #0
d00806a0:	eba6 0807 	sub.w	r8, r6, r7
d00806a4:	608b      	str	r3, [r1, #8]
d00806a6:	f1b8 0f00 	cmp.w	r8, #0
d00806aa:	dd9c      	ble.n	d00805e6 <__sflush_r+0x1a>
d00806ac:	6a21      	ldr	r1, [r4, #32]
d00806ae:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d00806b0:	4643      	mov	r3, r8
d00806b2:	463a      	mov	r2, r7
d00806b4:	4628      	mov	r0, r5
d00806b6:	47b0      	blx	r6
d00806b8:	2800      	cmp	r0, #0
d00806ba:	dc06      	bgt.n	d00806ca <__sflush_r+0xfe>
d00806bc:	89a3      	ldrh	r3, [r4, #12]
d00806be:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00806c2:	81a3      	strh	r3, [r4, #12]
d00806c4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00806c8:	e78e      	b.n	d00805e8 <__sflush_r+0x1c>
d00806ca:	4407      	add	r7, r0
d00806cc:	eba8 0800 	sub.w	r8, r8, r0
d00806d0:	e7e9      	b.n	d00806a6 <__sflush_r+0xda>
d00806d2:	bf00      	nop
d00806d4:	20400001 	.word	0x20400001

d00806d8 <_fflush_r>:
d00806d8:	b538      	push	{r3, r4, r5, lr}
d00806da:	690b      	ldr	r3, [r1, #16]
d00806dc:	4605      	mov	r5, r0
d00806de:	460c      	mov	r4, r1
d00806e0:	b913      	cbnz	r3, d00806e8 <_fflush_r+0x10>
d00806e2:	2500      	movs	r5, #0
d00806e4:	4628      	mov	r0, r5
d00806e6:	bd38      	pop	{r3, r4, r5, pc}
d00806e8:	b118      	cbz	r0, d00806f2 <_fflush_r+0x1a>
d00806ea:	6983      	ldr	r3, [r0, #24]
d00806ec:	b90b      	cbnz	r3, d00806f2 <_fflush_r+0x1a>
d00806ee:	f000 f887 	bl	d0080800 <__sinit>
d00806f2:	4b14      	ldr	r3, [pc, #80]	; (d0080744 <_fflush_r+0x6c>)
d00806f4:	429c      	cmp	r4, r3
d00806f6:	d11b      	bne.n	d0080730 <_fflush_r+0x58>
d00806f8:	686c      	ldr	r4, [r5, #4]
d00806fa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00806fe:	2b00      	cmp	r3, #0
d0080700:	d0ef      	beq.n	d00806e2 <_fflush_r+0xa>
d0080702:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0080704:	07d0      	lsls	r0, r2, #31
d0080706:	d404      	bmi.n	d0080712 <_fflush_r+0x3a>
d0080708:	0599      	lsls	r1, r3, #22
d008070a:	d402      	bmi.n	d0080712 <_fflush_r+0x3a>
d008070c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008070e:	f000 f915 	bl	d008093c <__retarget_lock_acquire_recursive>
d0080712:	4628      	mov	r0, r5
d0080714:	4621      	mov	r1, r4
d0080716:	f7ff ff59 	bl	d00805cc <__sflush_r>
d008071a:	6e63      	ldr	r3, [r4, #100]	; 0x64
d008071c:	07da      	lsls	r2, r3, #31
d008071e:	4605      	mov	r5, r0
d0080720:	d4e0      	bmi.n	d00806e4 <_fflush_r+0xc>
d0080722:	89a3      	ldrh	r3, [r4, #12]
d0080724:	059b      	lsls	r3, r3, #22
d0080726:	d4dd      	bmi.n	d00806e4 <_fflush_r+0xc>
d0080728:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008072a:	f000 f908 	bl	d008093e <__retarget_lock_release_recursive>
d008072e:	e7d9      	b.n	d00806e4 <_fflush_r+0xc>
d0080730:	4b05      	ldr	r3, [pc, #20]	; (d0080748 <_fflush_r+0x70>)
d0080732:	429c      	cmp	r4, r3
d0080734:	d101      	bne.n	d008073a <_fflush_r+0x62>
d0080736:	68ac      	ldr	r4, [r5, #8]
d0080738:	e7df      	b.n	d00806fa <_fflush_r+0x22>
d008073a:	4b04      	ldr	r3, [pc, #16]	; (d008074c <_fflush_r+0x74>)
d008073c:	429c      	cmp	r4, r3
d008073e:	bf08      	it	eq
d0080740:	68ec      	ldreq	r4, [r5, #12]
d0080742:	e7da      	b.n	d00806fa <_fflush_r+0x22>
d0080744:	d00810ac 	.word	0xd00810ac
d0080748:	d00810cc 	.word	0xd00810cc
d008074c:	d008108c 	.word	0xd008108c

d0080750 <std>:
d0080750:	2300      	movs	r3, #0
d0080752:	b510      	push	{r4, lr}
d0080754:	4604      	mov	r4, r0
d0080756:	e9c0 3300 	strd	r3, r3, [r0]
d008075a:	e9c0 3304 	strd	r3, r3, [r0, #16]
d008075e:	6083      	str	r3, [r0, #8]
d0080760:	8181      	strh	r1, [r0, #12]
d0080762:	6643      	str	r3, [r0, #100]	; 0x64
d0080764:	81c2      	strh	r2, [r0, #14]
d0080766:	6183      	str	r3, [r0, #24]
d0080768:	4619      	mov	r1, r3
d008076a:	2208      	movs	r2, #8
d008076c:	305c      	adds	r0, #92	; 0x5c
d008076e:	f7ff fe57 	bl	d0080420 <memset>
d0080772:	4b05      	ldr	r3, [pc, #20]	; (d0080788 <std+0x38>)
d0080774:	6263      	str	r3, [r4, #36]	; 0x24
d0080776:	4b05      	ldr	r3, [pc, #20]	; (d008078c <std+0x3c>)
d0080778:	62a3      	str	r3, [r4, #40]	; 0x28
d008077a:	4b05      	ldr	r3, [pc, #20]	; (d0080790 <std+0x40>)
d008077c:	62e3      	str	r3, [r4, #44]	; 0x2c
d008077e:	4b05      	ldr	r3, [pc, #20]	; (d0080794 <std+0x44>)
d0080780:	6224      	str	r4, [r4, #32]
d0080782:	6323      	str	r3, [r4, #48]	; 0x30
d0080784:	bd10      	pop	{r4, pc}
d0080786:	bf00      	nop
d0080788:	d0080aed 	.word	0xd0080aed
d008078c:	d0080b0f 	.word	0xd0080b0f
d0080790:	d0080b47 	.word	0xd0080b47
d0080794:	d0080b6b 	.word	0xd0080b6b

d0080798 <_cleanup_r>:
d0080798:	4901      	ldr	r1, [pc, #4]	; (d00807a0 <_cleanup_r+0x8>)
d008079a:	f000 b8af 	b.w	d00808fc <_fwalk_reent>
d008079e:	bf00      	nop
d00807a0:	d00806d9 	.word	0xd00806d9

d00807a4 <__sfmoreglue>:
d00807a4:	b570      	push	{r4, r5, r6, lr}
d00807a6:	1e4a      	subs	r2, r1, #1
d00807a8:	2568      	movs	r5, #104	; 0x68
d00807aa:	4355      	muls	r5, r2
d00807ac:	460e      	mov	r6, r1
d00807ae:	f105 0174 	add.w	r1, r5, #116	; 0x74
d00807b2:	f000 f941 	bl	d0080a38 <_malloc_r>
d00807b6:	4604      	mov	r4, r0
d00807b8:	b140      	cbz	r0, d00807cc <__sfmoreglue+0x28>
d00807ba:	2100      	movs	r1, #0
d00807bc:	e9c0 1600 	strd	r1, r6, [r0]
d00807c0:	300c      	adds	r0, #12
d00807c2:	60a0      	str	r0, [r4, #8]
d00807c4:	f105 0268 	add.w	r2, r5, #104	; 0x68
d00807c8:	f7ff fe2a 	bl	d0080420 <memset>
d00807cc:	4620      	mov	r0, r4
d00807ce:	bd70      	pop	{r4, r5, r6, pc}

d00807d0 <__sfp_lock_acquire>:
d00807d0:	4801      	ldr	r0, [pc, #4]	; (d00807d8 <__sfp_lock_acquire+0x8>)
d00807d2:	f000 b8b3 	b.w	d008093c <__retarget_lock_acquire_recursive>
d00807d6:	bf00      	nop
d00807d8:	d00811ac 	.word	0xd00811ac

d00807dc <__sfp_lock_release>:
d00807dc:	4801      	ldr	r0, [pc, #4]	; (d00807e4 <__sfp_lock_release+0x8>)
d00807de:	f000 b8ae 	b.w	d008093e <__retarget_lock_release_recursive>
d00807e2:	bf00      	nop
d00807e4:	d00811ac 	.word	0xd00811ac

d00807e8 <__sinit_lock_acquire>:
d00807e8:	4801      	ldr	r0, [pc, #4]	; (d00807f0 <__sinit_lock_acquire+0x8>)
d00807ea:	f000 b8a7 	b.w	d008093c <__retarget_lock_acquire_recursive>
d00807ee:	bf00      	nop
d00807f0:	d00811a7 	.word	0xd00811a7

d00807f4 <__sinit_lock_release>:
d00807f4:	4801      	ldr	r0, [pc, #4]	; (d00807fc <__sinit_lock_release+0x8>)
d00807f6:	f000 b8a2 	b.w	d008093e <__retarget_lock_release_recursive>
d00807fa:	bf00      	nop
d00807fc:	d00811a7 	.word	0xd00811a7

d0080800 <__sinit>:
d0080800:	b510      	push	{r4, lr}
d0080802:	4604      	mov	r4, r0
d0080804:	f7ff fff0 	bl	d00807e8 <__sinit_lock_acquire>
d0080808:	69a3      	ldr	r3, [r4, #24]
d008080a:	b11b      	cbz	r3, d0080814 <__sinit+0x14>
d008080c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0080810:	f7ff bff0 	b.w	d00807f4 <__sinit_lock_release>
d0080814:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0080818:	6523      	str	r3, [r4, #80]	; 0x50
d008081a:	4b13      	ldr	r3, [pc, #76]	; (d0080868 <__sinit+0x68>)
d008081c:	4a13      	ldr	r2, [pc, #76]	; (d008086c <__sinit+0x6c>)
d008081e:	681b      	ldr	r3, [r3, #0]
d0080820:	62a2      	str	r2, [r4, #40]	; 0x28
d0080822:	42a3      	cmp	r3, r4
d0080824:	bf04      	itt	eq
d0080826:	2301      	moveq	r3, #1
d0080828:	61a3      	streq	r3, [r4, #24]
d008082a:	4620      	mov	r0, r4
d008082c:	f000 f820 	bl	d0080870 <__sfp>
d0080830:	6060      	str	r0, [r4, #4]
d0080832:	4620      	mov	r0, r4
d0080834:	f000 f81c 	bl	d0080870 <__sfp>
d0080838:	60a0      	str	r0, [r4, #8]
d008083a:	4620      	mov	r0, r4
d008083c:	f000 f818 	bl	d0080870 <__sfp>
d0080840:	2200      	movs	r2, #0
d0080842:	60e0      	str	r0, [r4, #12]
d0080844:	2104      	movs	r1, #4
d0080846:	6860      	ldr	r0, [r4, #4]
d0080848:	f7ff ff82 	bl	d0080750 <std>
d008084c:	68a0      	ldr	r0, [r4, #8]
d008084e:	2201      	movs	r2, #1
d0080850:	2109      	movs	r1, #9
d0080852:	f7ff ff7d 	bl	d0080750 <std>
d0080856:	68e0      	ldr	r0, [r4, #12]
d0080858:	2202      	movs	r2, #2
d008085a:	2112      	movs	r1, #18
d008085c:	f7ff ff78 	bl	d0080750 <std>
d0080860:	2301      	movs	r3, #1
d0080862:	61a3      	str	r3, [r4, #24]
d0080864:	e7d2      	b.n	d008080c <__sinit+0xc>
d0080866:	bf00      	nop
d0080868:	d0081088 	.word	0xd0081088
d008086c:	d0080799 	.word	0xd0080799

d0080870 <__sfp>:
d0080870:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0080872:	4607      	mov	r7, r0
d0080874:	f7ff ffac 	bl	d00807d0 <__sfp_lock_acquire>
d0080878:	4b1e      	ldr	r3, [pc, #120]	; (d00808f4 <__sfp+0x84>)
d008087a:	681e      	ldr	r6, [r3, #0]
d008087c:	69b3      	ldr	r3, [r6, #24]
d008087e:	b913      	cbnz	r3, d0080886 <__sfp+0x16>
d0080880:	4630      	mov	r0, r6
d0080882:	f7ff ffbd 	bl	d0080800 <__sinit>
d0080886:	3648      	adds	r6, #72	; 0x48
d0080888:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d008088c:	3b01      	subs	r3, #1
d008088e:	d503      	bpl.n	d0080898 <__sfp+0x28>
d0080890:	6833      	ldr	r3, [r6, #0]
d0080892:	b30b      	cbz	r3, d00808d8 <__sfp+0x68>
d0080894:	6836      	ldr	r6, [r6, #0]
d0080896:	e7f7      	b.n	d0080888 <__sfp+0x18>
d0080898:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d008089c:	b9d5      	cbnz	r5, d00808d4 <__sfp+0x64>
d008089e:	4b16      	ldr	r3, [pc, #88]	; (d00808f8 <__sfp+0x88>)
d00808a0:	60e3      	str	r3, [r4, #12]
d00808a2:	f104 0058 	add.w	r0, r4, #88	; 0x58
d00808a6:	6665      	str	r5, [r4, #100]	; 0x64
d00808a8:	f000 f847 	bl	d008093a <__retarget_lock_init_recursive>
d00808ac:	f7ff ff96 	bl	d00807dc <__sfp_lock_release>
d00808b0:	e9c4 5501 	strd	r5, r5, [r4, #4]
d00808b4:	e9c4 5504 	strd	r5, r5, [r4, #16]
d00808b8:	6025      	str	r5, [r4, #0]
d00808ba:	61a5      	str	r5, [r4, #24]
d00808bc:	2208      	movs	r2, #8
d00808be:	4629      	mov	r1, r5
d00808c0:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d00808c4:	f7ff fdac 	bl	d0080420 <memset>
d00808c8:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d00808cc:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d00808d0:	4620      	mov	r0, r4
d00808d2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00808d4:	3468      	adds	r4, #104	; 0x68
d00808d6:	e7d9      	b.n	d008088c <__sfp+0x1c>
d00808d8:	2104      	movs	r1, #4
d00808da:	4638      	mov	r0, r7
d00808dc:	f7ff ff62 	bl	d00807a4 <__sfmoreglue>
d00808e0:	4604      	mov	r4, r0
d00808e2:	6030      	str	r0, [r6, #0]
d00808e4:	2800      	cmp	r0, #0
d00808e6:	d1d5      	bne.n	d0080894 <__sfp+0x24>
d00808e8:	f7ff ff78 	bl	d00807dc <__sfp_lock_release>
d00808ec:	230c      	movs	r3, #12
d00808ee:	603b      	str	r3, [r7, #0]
d00808f0:	e7ee      	b.n	d00808d0 <__sfp+0x60>
d00808f2:	bf00      	nop
d00808f4:	d0081088 	.word	0xd0081088
d00808f8:	ffff0001 	.word	0xffff0001

d00808fc <_fwalk_reent>:
d00808fc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0080900:	4606      	mov	r6, r0
d0080902:	4688      	mov	r8, r1
d0080904:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0080908:	2700      	movs	r7, #0
d008090a:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d008090e:	f1b9 0901 	subs.w	r9, r9, #1
d0080912:	d505      	bpl.n	d0080920 <_fwalk_reent+0x24>
d0080914:	6824      	ldr	r4, [r4, #0]
d0080916:	2c00      	cmp	r4, #0
d0080918:	d1f7      	bne.n	d008090a <_fwalk_reent+0xe>
d008091a:	4638      	mov	r0, r7
d008091c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0080920:	89ab      	ldrh	r3, [r5, #12]
d0080922:	2b01      	cmp	r3, #1
d0080924:	d907      	bls.n	d0080936 <_fwalk_reent+0x3a>
d0080926:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d008092a:	3301      	adds	r3, #1
d008092c:	d003      	beq.n	d0080936 <_fwalk_reent+0x3a>
d008092e:	4629      	mov	r1, r5
d0080930:	4630      	mov	r0, r6
d0080932:	47c0      	blx	r8
d0080934:	4307      	orrs	r7, r0
d0080936:	3568      	adds	r5, #104	; 0x68
d0080938:	e7e9      	b.n	d008090e <_fwalk_reent+0x12>

d008093a <__retarget_lock_init_recursive>:
d008093a:	4770      	bx	lr

d008093c <__retarget_lock_acquire_recursive>:
d008093c:	4770      	bx	lr

d008093e <__retarget_lock_release_recursive>:
d008093e:	4770      	bx	lr

d0080940 <__swhatbuf_r>:
d0080940:	b570      	push	{r4, r5, r6, lr}
d0080942:	460e      	mov	r6, r1
d0080944:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0080948:	2900      	cmp	r1, #0
d008094a:	b096      	sub	sp, #88	; 0x58
d008094c:	4614      	mov	r4, r2
d008094e:	461d      	mov	r5, r3
d0080950:	da07      	bge.n	d0080962 <__swhatbuf_r+0x22>
d0080952:	2300      	movs	r3, #0
d0080954:	602b      	str	r3, [r5, #0]
d0080956:	89b3      	ldrh	r3, [r6, #12]
d0080958:	061a      	lsls	r2, r3, #24
d008095a:	d410      	bmi.n	d008097e <__swhatbuf_r+0x3e>
d008095c:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0080960:	e00e      	b.n	d0080980 <__swhatbuf_r+0x40>
d0080962:	466a      	mov	r2, sp
d0080964:	f000 f916 	bl	d0080b94 <_fstat_r>
d0080968:	2800      	cmp	r0, #0
d008096a:	dbf2      	blt.n	d0080952 <__swhatbuf_r+0x12>
d008096c:	9a01      	ldr	r2, [sp, #4]
d008096e:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0080972:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0080976:	425a      	negs	r2, r3
d0080978:	415a      	adcs	r2, r3
d008097a:	602a      	str	r2, [r5, #0]
d008097c:	e7ee      	b.n	d008095c <__swhatbuf_r+0x1c>
d008097e:	2340      	movs	r3, #64	; 0x40
d0080980:	2000      	movs	r0, #0
d0080982:	6023      	str	r3, [r4, #0]
d0080984:	b016      	add	sp, #88	; 0x58
d0080986:	bd70      	pop	{r4, r5, r6, pc}

d0080988 <malloc>:
d0080988:	4b02      	ldr	r3, [pc, #8]	; (d0080994 <malloc+0xc>)
d008098a:	4601      	mov	r1, r0
d008098c:	6818      	ldr	r0, [r3, #0]
d008098e:	f000 b853 	b.w	d0080a38 <_malloc_r>
d0080992:	bf00      	nop
d0080994:	d00810f8 	.word	0xd00810f8

d0080998 <_free_r>:
d0080998:	b537      	push	{r0, r1, r2, r4, r5, lr}
d008099a:	2900      	cmp	r1, #0
d008099c:	d048      	beq.n	d0080a30 <_free_r+0x98>
d008099e:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00809a2:	9001      	str	r0, [sp, #4]
d00809a4:	2b00      	cmp	r3, #0
d00809a6:	f1a1 0404 	sub.w	r4, r1, #4
d00809aa:	bfb8      	it	lt
d00809ac:	18e4      	addlt	r4, r4, r3
d00809ae:	f000 f915 	bl	d0080bdc <__malloc_lock>
d00809b2:	4a20      	ldr	r2, [pc, #128]	; (d0080a34 <_free_r+0x9c>)
d00809b4:	9801      	ldr	r0, [sp, #4]
d00809b6:	6813      	ldr	r3, [r2, #0]
d00809b8:	4615      	mov	r5, r2
d00809ba:	b933      	cbnz	r3, d00809ca <_free_r+0x32>
d00809bc:	6063      	str	r3, [r4, #4]
d00809be:	6014      	str	r4, [r2, #0]
d00809c0:	b003      	add	sp, #12
d00809c2:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00809c6:	f000 b90f 	b.w	d0080be8 <__malloc_unlock>
d00809ca:	42a3      	cmp	r3, r4
d00809cc:	d90b      	bls.n	d00809e6 <_free_r+0x4e>
d00809ce:	6821      	ldr	r1, [r4, #0]
d00809d0:	1862      	adds	r2, r4, r1
d00809d2:	4293      	cmp	r3, r2
d00809d4:	bf04      	itt	eq
d00809d6:	681a      	ldreq	r2, [r3, #0]
d00809d8:	685b      	ldreq	r3, [r3, #4]
d00809da:	6063      	str	r3, [r4, #4]
d00809dc:	bf04      	itt	eq
d00809de:	1852      	addeq	r2, r2, r1
d00809e0:	6022      	streq	r2, [r4, #0]
d00809e2:	602c      	str	r4, [r5, #0]
d00809e4:	e7ec      	b.n	d00809c0 <_free_r+0x28>
d00809e6:	461a      	mov	r2, r3
d00809e8:	685b      	ldr	r3, [r3, #4]
d00809ea:	b10b      	cbz	r3, d00809f0 <_free_r+0x58>
d00809ec:	42a3      	cmp	r3, r4
d00809ee:	d9fa      	bls.n	d00809e6 <_free_r+0x4e>
d00809f0:	6811      	ldr	r1, [r2, #0]
d00809f2:	1855      	adds	r5, r2, r1
d00809f4:	42a5      	cmp	r5, r4
d00809f6:	d10b      	bne.n	d0080a10 <_free_r+0x78>
d00809f8:	6824      	ldr	r4, [r4, #0]
d00809fa:	4421      	add	r1, r4
d00809fc:	1854      	adds	r4, r2, r1
d00809fe:	42a3      	cmp	r3, r4
d0080a00:	6011      	str	r1, [r2, #0]
d0080a02:	d1dd      	bne.n	d00809c0 <_free_r+0x28>
d0080a04:	681c      	ldr	r4, [r3, #0]
d0080a06:	685b      	ldr	r3, [r3, #4]
d0080a08:	6053      	str	r3, [r2, #4]
d0080a0a:	4421      	add	r1, r4
d0080a0c:	6011      	str	r1, [r2, #0]
d0080a0e:	e7d7      	b.n	d00809c0 <_free_r+0x28>
d0080a10:	d902      	bls.n	d0080a18 <_free_r+0x80>
d0080a12:	230c      	movs	r3, #12
d0080a14:	6003      	str	r3, [r0, #0]
d0080a16:	e7d3      	b.n	d00809c0 <_free_r+0x28>
d0080a18:	6825      	ldr	r5, [r4, #0]
d0080a1a:	1961      	adds	r1, r4, r5
d0080a1c:	428b      	cmp	r3, r1
d0080a1e:	bf04      	itt	eq
d0080a20:	6819      	ldreq	r1, [r3, #0]
d0080a22:	685b      	ldreq	r3, [r3, #4]
d0080a24:	6063      	str	r3, [r4, #4]
d0080a26:	bf04      	itt	eq
d0080a28:	1949      	addeq	r1, r1, r5
d0080a2a:	6021      	streq	r1, [r4, #0]
d0080a2c:	6054      	str	r4, [r2, #4]
d0080a2e:	e7c7      	b.n	d00809c0 <_free_r+0x28>
d0080a30:	b003      	add	sp, #12
d0080a32:	bd30      	pop	{r4, r5, pc}
d0080a34:	d0081170 	.word	0xd0081170

d0080a38 <_malloc_r>:
d0080a38:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0080a3a:	1ccd      	adds	r5, r1, #3
d0080a3c:	f025 0503 	bic.w	r5, r5, #3
d0080a40:	3508      	adds	r5, #8
d0080a42:	2d0c      	cmp	r5, #12
d0080a44:	bf38      	it	cc
d0080a46:	250c      	movcc	r5, #12
d0080a48:	2d00      	cmp	r5, #0
d0080a4a:	4606      	mov	r6, r0
d0080a4c:	db01      	blt.n	d0080a52 <_malloc_r+0x1a>
d0080a4e:	42a9      	cmp	r1, r5
d0080a50:	d903      	bls.n	d0080a5a <_malloc_r+0x22>
d0080a52:	230c      	movs	r3, #12
d0080a54:	6033      	str	r3, [r6, #0]
d0080a56:	2000      	movs	r0, #0
d0080a58:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0080a5a:	f000 f8bf 	bl	d0080bdc <__malloc_lock>
d0080a5e:	4921      	ldr	r1, [pc, #132]	; (d0080ae4 <_malloc_r+0xac>)
d0080a60:	680a      	ldr	r2, [r1, #0]
d0080a62:	4614      	mov	r4, r2
d0080a64:	b99c      	cbnz	r4, d0080a8e <_malloc_r+0x56>
d0080a66:	4f20      	ldr	r7, [pc, #128]	; (d0080ae8 <_malloc_r+0xb0>)
d0080a68:	683b      	ldr	r3, [r7, #0]
d0080a6a:	b923      	cbnz	r3, d0080a76 <_malloc_r+0x3e>
d0080a6c:	4621      	mov	r1, r4
d0080a6e:	4630      	mov	r0, r6
d0080a70:	f7ff fb36 	bl	d00800e0 <_sbrk_r>
d0080a74:	6038      	str	r0, [r7, #0]
d0080a76:	4629      	mov	r1, r5
d0080a78:	4630      	mov	r0, r6
d0080a7a:	f7ff fb31 	bl	d00800e0 <_sbrk_r>
d0080a7e:	1c43      	adds	r3, r0, #1
d0080a80:	d123      	bne.n	d0080aca <_malloc_r+0x92>
d0080a82:	230c      	movs	r3, #12
d0080a84:	6033      	str	r3, [r6, #0]
d0080a86:	4630      	mov	r0, r6
d0080a88:	f000 f8ae 	bl	d0080be8 <__malloc_unlock>
d0080a8c:	e7e3      	b.n	d0080a56 <_malloc_r+0x1e>
d0080a8e:	6823      	ldr	r3, [r4, #0]
d0080a90:	1b5b      	subs	r3, r3, r5
d0080a92:	d417      	bmi.n	d0080ac4 <_malloc_r+0x8c>
d0080a94:	2b0b      	cmp	r3, #11
d0080a96:	d903      	bls.n	d0080aa0 <_malloc_r+0x68>
d0080a98:	6023      	str	r3, [r4, #0]
d0080a9a:	441c      	add	r4, r3
d0080a9c:	6025      	str	r5, [r4, #0]
d0080a9e:	e004      	b.n	d0080aaa <_malloc_r+0x72>
d0080aa0:	6863      	ldr	r3, [r4, #4]
d0080aa2:	42a2      	cmp	r2, r4
d0080aa4:	bf0c      	ite	eq
d0080aa6:	600b      	streq	r3, [r1, #0]
d0080aa8:	6053      	strne	r3, [r2, #4]
d0080aaa:	4630      	mov	r0, r6
d0080aac:	f000 f89c 	bl	d0080be8 <__malloc_unlock>
d0080ab0:	f104 000b 	add.w	r0, r4, #11
d0080ab4:	1d23      	adds	r3, r4, #4
d0080ab6:	f020 0007 	bic.w	r0, r0, #7
d0080aba:	1ac2      	subs	r2, r0, r3
d0080abc:	d0cc      	beq.n	d0080a58 <_malloc_r+0x20>
d0080abe:	1a1b      	subs	r3, r3, r0
d0080ac0:	50a3      	str	r3, [r4, r2]
d0080ac2:	e7c9      	b.n	d0080a58 <_malloc_r+0x20>
d0080ac4:	4622      	mov	r2, r4
d0080ac6:	6864      	ldr	r4, [r4, #4]
d0080ac8:	e7cc      	b.n	d0080a64 <_malloc_r+0x2c>
d0080aca:	1cc4      	adds	r4, r0, #3
d0080acc:	f024 0403 	bic.w	r4, r4, #3
d0080ad0:	42a0      	cmp	r0, r4
d0080ad2:	d0e3      	beq.n	d0080a9c <_malloc_r+0x64>
d0080ad4:	1a21      	subs	r1, r4, r0
d0080ad6:	4630      	mov	r0, r6
d0080ad8:	f7ff fb02 	bl	d00800e0 <_sbrk_r>
d0080adc:	3001      	adds	r0, #1
d0080ade:	d1dd      	bne.n	d0080a9c <_malloc_r+0x64>
d0080ae0:	e7cf      	b.n	d0080a82 <_malloc_r+0x4a>
d0080ae2:	bf00      	nop
d0080ae4:	d0081170 	.word	0xd0081170
d0080ae8:	d0081174 	.word	0xd0081174

d0080aec <__sread>:
d0080aec:	b510      	push	{r4, lr}
d0080aee:	460c      	mov	r4, r1
d0080af0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0080af4:	f000 f87e 	bl	d0080bf4 <_read_r>
d0080af8:	2800      	cmp	r0, #0
d0080afa:	bfab      	itete	ge
d0080afc:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0080afe:	89a3      	ldrhlt	r3, [r4, #12]
d0080b00:	181b      	addge	r3, r3, r0
d0080b02:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0080b06:	bfac      	ite	ge
d0080b08:	6563      	strge	r3, [r4, #84]	; 0x54
d0080b0a:	81a3      	strhlt	r3, [r4, #12]
d0080b0c:	bd10      	pop	{r4, pc}

d0080b0e <__swrite>:
d0080b0e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0080b12:	461f      	mov	r7, r3
d0080b14:	898b      	ldrh	r3, [r1, #12]
d0080b16:	05db      	lsls	r3, r3, #23
d0080b18:	4605      	mov	r5, r0
d0080b1a:	460c      	mov	r4, r1
d0080b1c:	4616      	mov	r6, r2
d0080b1e:	d505      	bpl.n	d0080b2c <__swrite+0x1e>
d0080b20:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0080b24:	2302      	movs	r3, #2
d0080b26:	2200      	movs	r2, #0
d0080b28:	f000 f846 	bl	d0080bb8 <_lseek_r>
d0080b2c:	89a3      	ldrh	r3, [r4, #12]
d0080b2e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0080b32:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0080b36:	81a3      	strh	r3, [r4, #12]
d0080b38:	4632      	mov	r2, r6
d0080b3a:	463b      	mov	r3, r7
d0080b3c:	4628      	mov	r0, r5
d0080b3e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0080b42:	f7ff ba87 	b.w	d0080054 <_write_r>

d0080b46 <__sseek>:
d0080b46:	b510      	push	{r4, lr}
d0080b48:	460c      	mov	r4, r1
d0080b4a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0080b4e:	f000 f833 	bl	d0080bb8 <_lseek_r>
d0080b52:	1c43      	adds	r3, r0, #1
d0080b54:	89a3      	ldrh	r3, [r4, #12]
d0080b56:	bf15      	itete	ne
d0080b58:	6560      	strne	r0, [r4, #84]	; 0x54
d0080b5a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0080b5e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0080b62:	81a3      	strheq	r3, [r4, #12]
d0080b64:	bf18      	it	ne
d0080b66:	81a3      	strhne	r3, [r4, #12]
d0080b68:	bd10      	pop	{r4, pc}

d0080b6a <__sclose>:
d0080b6a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0080b6e:	f000 b801 	b.w	d0080b74 <_close_r>
	...

d0080b74 <_close_r>:
d0080b74:	b538      	push	{r3, r4, r5, lr}
d0080b76:	4d06      	ldr	r5, [pc, #24]	; (d0080b90 <_close_r+0x1c>)
d0080b78:	2300      	movs	r3, #0
d0080b7a:	4604      	mov	r4, r0
d0080b7c:	4608      	mov	r0, r1
d0080b7e:	602b      	str	r3, [r5, #0]
d0080b80:	f7ff faa2 	bl	d00800c8 <_close>
d0080b84:	1c43      	adds	r3, r0, #1
d0080b86:	d102      	bne.n	d0080b8e <_close_r+0x1a>
d0080b88:	682b      	ldr	r3, [r5, #0]
d0080b8a:	b103      	cbz	r3, d0080b8e <_close_r+0x1a>
d0080b8c:	6023      	str	r3, [r4, #0]
d0080b8e:	bd38      	pop	{r3, r4, r5, pc}
d0080b90:	d00811b0 	.word	0xd00811b0

d0080b94 <_fstat_r>:
d0080b94:	b538      	push	{r3, r4, r5, lr}
d0080b96:	4d07      	ldr	r5, [pc, #28]	; (d0080bb4 <_fstat_r+0x20>)
d0080b98:	2300      	movs	r3, #0
d0080b9a:	4604      	mov	r4, r0
d0080b9c:	4608      	mov	r0, r1
d0080b9e:	4611      	mov	r1, r2
d0080ba0:	602b      	str	r3, [r5, #0]
d0080ba2:	f7ff fa95 	bl	d00800d0 <_fstat>
d0080ba6:	1c43      	adds	r3, r0, #1
d0080ba8:	d102      	bne.n	d0080bb0 <_fstat_r+0x1c>
d0080baa:	682b      	ldr	r3, [r5, #0]
d0080bac:	b103      	cbz	r3, d0080bb0 <_fstat_r+0x1c>
d0080bae:	6023      	str	r3, [r4, #0]
d0080bb0:	bd38      	pop	{r3, r4, r5, pc}
d0080bb2:	bf00      	nop
d0080bb4:	d00811b0 	.word	0xd00811b0

d0080bb8 <_lseek_r>:
d0080bb8:	b538      	push	{r3, r4, r5, lr}
d0080bba:	4d07      	ldr	r5, [pc, #28]	; (d0080bd8 <_lseek_r+0x20>)
d0080bbc:	4604      	mov	r4, r0
d0080bbe:	4608      	mov	r0, r1
d0080bc0:	4611      	mov	r1, r2
d0080bc2:	2200      	movs	r2, #0
d0080bc4:	602a      	str	r2, [r5, #0]
d0080bc6:	461a      	mov	r2, r3
d0080bc8:	f7ff fa88 	bl	d00800dc <_lseek>
d0080bcc:	1c43      	adds	r3, r0, #1
d0080bce:	d102      	bne.n	d0080bd6 <_lseek_r+0x1e>
d0080bd0:	682b      	ldr	r3, [r5, #0]
d0080bd2:	b103      	cbz	r3, d0080bd6 <_lseek_r+0x1e>
d0080bd4:	6023      	str	r3, [r4, #0]
d0080bd6:	bd38      	pop	{r3, r4, r5, pc}
d0080bd8:	d00811b0 	.word	0xd00811b0

d0080bdc <__malloc_lock>:
d0080bdc:	4801      	ldr	r0, [pc, #4]	; (d0080be4 <__malloc_lock+0x8>)
d0080bde:	f7ff bead 	b.w	d008093c <__retarget_lock_acquire_recursive>
d0080be2:	bf00      	nop
d0080be4:	d00811a8 	.word	0xd00811a8

d0080be8 <__malloc_unlock>:
d0080be8:	4801      	ldr	r0, [pc, #4]	; (d0080bf0 <__malloc_unlock+0x8>)
d0080bea:	f7ff bea8 	b.w	d008093e <__retarget_lock_release_recursive>
d0080bee:	bf00      	nop
d0080bf0:	d00811a8 	.word	0xd00811a8

d0080bf4 <_read_r>:
d0080bf4:	b538      	push	{r3, r4, r5, lr}
d0080bf6:	4d07      	ldr	r5, [pc, #28]	; (d0080c14 <_read_r+0x20>)
d0080bf8:	4604      	mov	r4, r0
d0080bfa:	4608      	mov	r0, r1
d0080bfc:	4611      	mov	r1, r2
d0080bfe:	2200      	movs	r2, #0
d0080c00:	602a      	str	r2, [r5, #0]
d0080c02:	461a      	mov	r2, r3
d0080c04:	f7ff fa56 	bl	d00800b4 <_read>
d0080c08:	1c43      	adds	r3, r0, #1
d0080c0a:	d102      	bne.n	d0080c12 <_read_r+0x1e>
d0080c0c:	682b      	ldr	r3, [r5, #0]
d0080c0e:	b103      	cbz	r3, d0080c12 <_read_r+0x1e>
d0080c10:	6023      	str	r3, [r4, #0]
d0080c12:	bd38      	pop	{r3, r4, r5, pc}
d0080c14:	d00811b0 	.word	0xd00811b0
	...

d0080c20 <clut>:
d0080c20:	00000000 ffafafaf ffffffff ff3b67a2     .............g;.
d0080c30:	ffaa907c ff959595 ff7b7b7b ffffa997     |.......{{{.....
d0080c40:	ff37a91d ff7ca9ff ffbf8112 ffebbf66     ..7...|.....f...
d0080c50:	ff78c178 ff3d9318 ffb33418 ffd9311c     x.x...=..4...1..
d0080c60:	ff000000 ff00000e ff00001d ff00002b     ............+...
d0080c70:	ff000139 ff000147 ff000156 ff000164     9...G...V...d...
d0080c80:	ff0001d2 ff0001ff ffcecece ff00ff00     ................
d0080c90:	ffb2ff00 ffffe700 ffff9600 ffff1100     ................
d0080ca0:	ff491200 ff491355 ff4914aa ff4916ff     ..I.U.I...I...I.
d0080cb0:	ff5b1700 ff5b1855 ff5b19aa ff5b1aff     ..[.U.[...[...[.
d0080cc0:	ff6d1b00 ff6d1c55 ff00e300 ff85ff54     ..m.U.m.....T...
d0080cd0:	ffc4ff00 ffffd900 ffffa41f ffe05400     .............T..
d0080ce0:	ffff0000 ff922655 ff9227aa ff9228ff     ....U&...'...(..
d0080cf0:	ffa42900 ffa42a55 ffa42baa ffa42cff     .)..U*...+...,..
d0080d00:	ffb62d00 ffb62f55 ffb630aa ffb631ff     .-..U/...0...1..
d0080d10:	ffc93200 ffc93355 ffc934aa ffc935ff     .2..U3...4...5..
d0080d20:	ffdb3700 ffdb3855 ffdb39aa ffdb3aff     .7..U8...9...:..
d0080d30:	ffed3b00 ffed3c55 ffed3daa ffed3fff     .;..U<...=...?..
d0080d40:	ffff4000 ffff4155 ffff42aa ffff43ff     .@..UA...B...C..
d0080d50:	ff004400 ff004555 ff0046aa ff0048ff     .D..UE...F...H..
d0080d60:	ffffff00 ff12ff55 ff12ee55 ff12b6ff     ....U...U.......
d0080d70:	ff001fff ff9d0ec7 fff10000 ffff7700     .............w..
d0080d80:	ff375200 ff375355 ff3754aa ff3755ff     .R7.US7..T7..U7.
d0080d90:	ff495600 ff495855 ff4959aa ff495aff     .VI.UXI..YI..ZI.
d0080da0:	ff5b5b00 ff5b5c55 ff5b5daa ff5b5eff     .[[.U\[..][..^[.
d0080db0:	ff6d6000 ff6d6155 ff6d62aa ff6d63ff     .`m.Uam..bm..cm.
d0080dc0:	ff6d6400 ff806555 ff8066aa ff8067ff     .dm.Ue...f...g..
d0080dd0:	ff926900 ff926a55 ff926baa ff926cff     .i..Uj...k...l..
d0080de0:	ffa46d00 ffa46e55 ffa46faa ffa471ff     .m..Un...o...q..
d0080df0:	ffb67200 ffb67355 ffb674aa ffb675ff     .r..Us...t...u..
d0080e00:	ffc97600 ffc97755 ffc979aa ffc97aff     .v..Uw...y...z..
d0080e10:	ffdb7b00 ffdb7c55 ffdb7daa ffdb7eff     .{..U|...}...~..
d0080e20:	ffed7f00 ffed8055 ffed82aa ffed83ff     ....U...........
d0080e30:	ffff8400 ffff8555 ffff86aa ffff87ff     ....U...........
d0080e40:	ff008800 ff008a55 ff008baa ff008cff     ....U...........
d0080e50:	ff128d00 ff128e55 ff128faa ff1290ff     ....U...........
d0080e60:	ff249200 ff249355 ff2494aa ff2495ff     ..$.U.$...$...$.
d0080e70:	ff379600 ff379755 ff3798aa ff3799ff     ..7.U.7...7...7.
d0080e80:	ff499b00 ff499c55 ff499daa ff499eff     ..I.U.I...I...I.
d0080e90:	ff5b9f00 ff5ba055 ff5ba1aa ff5ba3ff     ..[.U.[...[...[.
d0080ea0:	ffa4b5d5 ffa0b0f8 ff94a3e6 ff7c89c1     ..............|.
d0080eb0:	ff6281c0 ff1c62a1 ff4254ea ff62a1bd     ..b..b...TB...b.
d0080ec0:	ff7093c0 ff4977a1 ff003faa ff1554ff     ..p..wI..?...T..
d0080ed0:	ff1c50b9 ff00b3ff ff0088aa ff00b5ff     .P..............
d0080ee0:	ff0e62ff ff5eb7e3 ffbdc0b9 ff85b9ff     .b....^.........
d0080ef0:	ff006caf ff1f81b9 ff3f5baa ffc9beff     .l.......[?.....
d0080f00:	ff5bafcb ffdbc055 ffdbc1aa ffbdc0c0     ..[.U...........
d0080f10:	ffedc400 ffedc555 ffedc6aa ffedc7ff     ....U...........
d0080f20:	ffffc800 ffffc955 ffffcaaa ffffccff     ....U...........
d0080f30:	ff00cd00 ff00ce55 ff00cfaa ff00d0ff     ....U...........
d0080f40:	ff12d100 ff12d255 ff12d3aa ff12d5ff     ....U...........
d0080f50:	ff24d600 ff24d755 ff24d8aa ff24d9ff     ..$.U.$...$...$.
d0080f60:	ff37da00 ff37db55 ff37ddaa ff37deff     ..7.U.7...7...7.
d0080f70:	ff49df00 ff49e055 ff49e1aa ff49e2ff     ..I.U.I...I...I.
d0080f80:	ff5be300 ff5be555 ff5be6aa ff5be7ff     ..[.U.[...[...[.
d0080f90:	ff6de800 ff6de955 ff6deaaa ff6debff     ..m.U.m...m...m.
d0080fa0:	ff6dec00 ff80ee55 ff80efaa ff80f0ff     ..m.U...........
d0080fb0:	ff93cea2 ff92f255 ff92f3aa ff92f4ff     ....U...........
d0080fc0:	ffa4f600 ffa4f755 ffa4f8aa ffa4f9ff     ....U...........
d0080fd0:	ffb6fa00 ffb6fb55 ffb6fcaa ffb6feff     ....U...........
d0080fe0:	ffc9ff00 ffc9ff55 ffc9ffaa ffc9ffff     ....U...........
d0080ff0:	ffdbff00 ffdbff55 ffdbffaa ffdbffff     ....U...........
d0081000:	ffedff00 ffedff55 ffedffaa ffedffff     ....U...........
d0081010:	ffffff00 ffffff55 ffffffaa ffffffff     ....U...........

d0081020 <txtTitle>:
d0081020:	73696874 20736920 65742061 73207473     this is a test s
d0081030:	6c6f7263 202c796c 656d6f73 6e696874     crolly, somethin
d0081040:	6f742067 73657420 6f662074 6f6e2072     g to test for no
d0081050:	62202c77 77207475 206c6c69 656b616d     w, but will make
d0081060:	20746920 696c2061 656c7474 74656220      it a little bet
d0081070:	20726574 6c6c6966 65742079 20797478     ter filly texty 
d0081080:	66757473 00000066                       stuff...

d0081088 <_global_impure_ptr>:
d0081088:	d00810fc                                ....

d008108c <__sf_fake_stderr>:
	...

d00810ac <__sf_fake_stdin>:
	...

d00810cc <__sf_fake_stdout>:
	...

Disassembly of section .init:

d00810ec <_init>:
d00810ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00810ee:	bf00      	nop

Disassembly of section .fini:

d00810f0 <_fini>:
d00810f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00810f2:	bf00      	nop
