
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
d008001e:	f000 ffa3 	bl	d0080f68 <setbuf>
d0080022:	6833      	ldr	r3, [r6, #0]
d0080024:	2100      	movs	r1, #0
d0080026:	68d8      	ldr	r0, [r3, #12]
d0080028:	f000 ff9e 	bl	d0080f68 <setbuf>
d008002c:	4629      	mov	r1, r5
d008002e:	4620      	mov	r0, r4
d0080030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0080034:	f000 b882 	b.w	d008013c <main>
d0080038:	d00823a4 	.word	0xd00823a4

d008003c <gfx_createBitmap>:
d008003c:	b510      	push	{r4, lr}
d008003e:	4604      	mov	r4, r0
d0080040:	fb01 f002 	mul.w	r0, r1, r2
d0080044:	b292      	uxth	r2, r2
d0080046:	80a1      	strh	r1, [r4, #4]
d0080048:	60e0      	str	r0, [r4, #12]
d008004a:	80e2      	strh	r2, [r4, #6]
d008004c:	8122      	strh	r2, [r4, #8]
d008004e:	f000 fed1 	bl	d0080df4 <malloc>
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
d0080064:	d00846f8 	.word	0xd00846f8
d0080068:	d0600000 	.word	0xd0600000
d008006c:	d0082688 	.word	0xd0082688

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
d00800b8:	f000 fe96 	bl	d0080de8 <__errno>
d00800bc:	2209      	movs	r2, #9
d00800be:	4603      	mov	r3, r0
d00800c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800c4:	601a      	str	r2, [r3, #0]
d00800c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00800c8:	d0082424 	.word	0xd0082424
d00800cc:	2001f000 	.word	0x2001f000

d00800d0 <_read>:
d00800d0:	b508      	push	{r3, lr}
d00800d2:	f000 fe89 	bl	d0080de8 <__errno>
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
d008011e:	f000 fe63 	bl	d0080de8 <__errno>
d0080122:	220c      	movs	r2, #12
d0080124:	4603      	mov	r3, r0
d0080126:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008012a:	601a      	str	r2, [r3, #0]
d008012c:	bd10      	pop	{r4, pc}
d008012e:	bf00      	nop
d0080130:	d0082420 	.word	0xd0082420
d0080134:	d00846f8 	.word	0xd00846f8
d0080138:	d0600000 	.word	0xd0600000

d008013c <main>:
d008013c:	4ca6      	ldr	r4, [pc, #664]	; (d00803d8 <main+0x29c>)
d008013e:	f44f 2000 	mov.w	r0, #524288	; 0x80000
d0080142:	2602      	movs	r6, #2
d0080144:	f04f 0a00 	mov.w	sl, #0
d0080148:	7823      	ldrb	r3, [r4, #0]
d008014a:	7862      	ldrb	r2, [r4, #1]
d008014c:	78a1      	ldrb	r1, [r4, #2]
d008014e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080152:	78e2      	ldrb	r2, [r4, #3]
d0080154:	f8df 9294 	ldr.w	r9, [pc, #660]	; d00803ec <main+0x2b0>
d0080158:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008015c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080160:	e92d 4880 	stmdb	sp!, {r7, fp, lr}
d0080164:	681b      	ldr	r3, [r3, #0]
d0080166:	b087      	sub	sp, #28
d0080168:	4798      	blx	r3
d008016a:	46d3      	mov	fp, sl
d008016c:	f7ff ff74 	bl	d0080058 <initMalloc>
d0080170:	7b23      	ldrb	r3, [r4, #12]
d0080172:	7b62      	ldrb	r2, [r4, #13]
d0080174:	2190      	movs	r1, #144	; 0x90
d0080176:	7ba5      	ldrb	r5, [r4, #14]
d0080178:	20dc      	movs	r0, #220	; 0xdc
d008017a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008017e:	7be2      	ldrb	r2, [r4, #15]
d0080180:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0080184:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080188:	681b      	ldr	r3, [r3, #0]
d008018a:	691b      	ldr	r3, [r3, #16]
d008018c:	4798      	blx	r3
d008018e:	7b20      	ldrb	r0, [r4, #12]
d0080190:	7b61      	ldrb	r1, [r4, #13]
d0080192:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0080196:	7ba2      	ldrb	r2, [r4, #14]
d0080198:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d008019c:	7be1      	ldrb	r1, [r4, #15]
d008019e:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
d00801a2:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00801a6:	ea40 6001 	orr.w	r0, r0, r1, lsl #24
d00801aa:	4619      	mov	r1, r3
d00801ac:	6805      	ldr	r5, [r0, #0]
d00801ae:	4610      	mov	r0, r2
d00801b0:	9600      	str	r6, [sp, #0]
d00801b2:	696d      	ldr	r5, [r5, #20]
d00801b4:	47a8      	blx	r5
d00801b6:	7d23      	ldrb	r3, [r4, #20]
d00801b8:	7d62      	ldrb	r2, [r4, #21]
d00801ba:	f44f 7000 	mov.w	r0, #512	; 0x200
d00801be:	7da1      	ldrb	r1, [r4, #22]
d00801c0:	2510      	movs	r5, #16
d00801c2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00801c6:	7de2      	ldrb	r2, [r4, #23]
d00801c8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00801cc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00801d0:	681b      	ldr	r3, [r3, #0]
d00801d2:	681b      	ldr	r3, [r3, #0]
d00801d4:	4798      	blx	r3
d00801d6:	7d22      	ldrb	r2, [r4, #20]
d00801d8:	7d63      	ldrb	r3, [r4, #21]
d00801da:	2101      	movs	r1, #1
d00801dc:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d00801e0:	7da3      	ldrb	r3, [r4, #22]
d00801e2:	7de0      	ldrb	r0, [r4, #23]
d00801e4:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d00801e8:	7b23      	ldrb	r3, [r4, #12]
d00801ea:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d00801ee:	7b60      	ldrb	r0, [r4, #13]
d00801f0:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d00801f4:	6810      	ldr	r0, [r2, #0]
d00801f6:	7ba2      	ldrb	r2, [r4, #14]
d00801f8:	6840      	ldr	r0, [r0, #4]
d00801fa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00801fe:	7be2      	ldrb	r2, [r4, #15]
d0080200:	7001      	strb	r1, [r0, #0]
d0080202:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080206:	681b      	ldr	r3, [r3, #0]
d0080208:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d008020a:	4798      	blx	r3
d008020c:	7b23      	ldrb	r3, [r4, #12]
d008020e:	4973      	ldr	r1, [pc, #460]	; (d00803dc <main+0x2a0>)
d0080210:	7b62      	ldrb	r2, [r4, #13]
d0080212:	6008      	str	r0, [r1, #0]
d0080214:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080218:	7ba1      	ldrb	r1, [r4, #14]
d008021a:	7be2      	ldrb	r2, [r4, #15]
d008021c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080220:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080224:	681b      	ldr	r3, [r3, #0]
d0080226:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d0080228:	4798      	blx	r3
d008022a:	7b23      	ldrb	r3, [r4, #12]
d008022c:	496c      	ldr	r1, [pc, #432]	; (d00803e0 <main+0x2a4>)
d008022e:	7b62      	ldrb	r2, [r4, #13]
d0080230:	6008      	str	r0, [r1, #0]
d0080232:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080236:	7ba1      	ldrb	r1, [r4, #14]
d0080238:	7be2      	ldrb	r2, [r4, #15]
d008023a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008023e:	4869      	ldr	r0, [pc, #420]	; (d00803e4 <main+0x2a8>)
d0080240:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080244:	681b      	ldr	r3, [r3, #0]
d0080246:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d0080248:	4798      	blx	r3
d008024a:	7e23      	ldrb	r3, [r4, #24]
d008024c:	7e62      	ldrb	r2, [r4, #25]
d008024e:	7ea1      	ldrb	r1, [r4, #26]
d0080250:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080254:	7ee2      	ldrb	r2, [r4, #27]
d0080256:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008025a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008025e:	681b      	ldr	r3, [r3, #0]
d0080260:	4798      	blx	r3
d0080262:	7b23      	ldrb	r3, [r4, #12]
d0080264:	7b62      	ldrb	r2, [r4, #13]
d0080266:	7ba1      	ldrb	r1, [r4, #14]
d0080268:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008026c:	7be2      	ldrb	r2, [r4, #15]
d008026e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080272:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080276:	681b      	ldr	r3, [r3, #0]
d0080278:	6d5b      	ldr	r3, [r3, #84]	; 0x54
d008027a:	4798      	blx	r3
d008027c:	7b23      	ldrb	r3, [r4, #12]
d008027e:	7b62      	ldrb	r2, [r4, #13]
d0080280:	2157      	movs	r1, #87	; 0x57
d0080282:	2050      	movs	r0, #80	; 0x50
d0080284:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080288:	7ba2      	ldrb	r2, [r4, #14]
d008028a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d008028e:	7be2      	ldrb	r2, [r4, #15]
d0080290:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080294:	681b      	ldr	r3, [r3, #0]
d0080296:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d0080298:	4798      	blx	r3
d008029a:	7b23      	ldrb	r3, [r4, #12]
d008029c:	7b62      	ldrb	r2, [r4, #13]
d008029e:	2004      	movs	r0, #4
d00802a0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00802a4:	7ba2      	ldrb	r2, [r4, #14]
d00802a6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00802aa:	7be2      	ldrb	r2, [r4, #15]
d00802ac:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00802b0:	681b      	ldr	r3, [r3, #0]
d00802b2:	6e5b      	ldr	r3, [r3, #100]	; 0x64
d00802b4:	4798      	blx	r3
d00802b6:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d00802ba:	f44f 72a0 	mov.w	r2, #320	; 0x140
d00802be:	484a      	ldr	r0, [pc, #296]	; (d00803e8 <main+0x2ac>)
d00802c0:	f7ff febc 	bl	d008003c <gfx_createBitmap>
d00802c4:	7b23      	ldrb	r3, [r4, #12]
d00802c6:	7b62      	ldrb	r2, [r4, #13]
d00802c8:	4847      	ldr	r0, [pc, #284]	; (d00803e8 <main+0x2ac>)
d00802ca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00802ce:	7ba2      	ldrb	r2, [r4, #14]
d00802d0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00802d4:	7be2      	ldrb	r2, [r4, #15]
d00802d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00802da:	681b      	ldr	r3, [r3, #0]
d00802dc:	699b      	ldr	r3, [r3, #24]
d00802de:	4798      	blx	r3
d00802e0:	7b23      	ldrb	r3, [r4, #12]
d00802e2:	7b62      	ldrb	r2, [r4, #13]
d00802e4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00802e8:	7ba2      	ldrb	r2, [r4, #14]
d00802ea:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00802ee:	7be2      	ldrb	r2, [r4, #15]
d00802f0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00802f4:	685b      	ldr	r3, [r3, #4]
d00802f6:	681b      	ldr	r3, [r3, #0]
d00802f8:	4798      	blx	r3
d00802fa:	e03d      	b.n	d0080378 <main+0x23c>
d00802fc:	7b23      	ldrb	r3, [r4, #12]
d00802fe:	f102 0711 	add.w	r7, r2, #17
d0080302:	7b62      	ldrb	r2, [r4, #13]
d0080304:	4628      	mov	r0, r5
d0080306:	f894 c00e 	ldrb.w	ip, [r4, #14]
d008030a:	fa0f f887 	sxth.w	r8, r7
d008030e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080312:	7be2      	ldrb	r2, [r4, #15]
d0080314:	f819 7c01 	ldrb.w	r7, [r9, #-1]
d0080318:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d008031c:	9105      	str	r1, [sp, #20]
d008031e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080322:	685b      	ldr	r3, [r3, #4]
d0080324:	68db      	ldr	r3, [r3, #12]
d0080326:	4798      	blx	r3
d0080328:	7b22      	ldrb	r2, [r4, #12]
d008032a:	f894 e00d 	ldrb.w	lr, [r4, #13]
d008032e:	2311      	movs	r3, #17
d0080330:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0080334:	ea42 200e 	orr.w	r0, r2, lr, lsl #8
d0080338:	f894 e00f 	ldrb.w	lr, [r4, #15]
d008033c:	9905      	ldr	r1, [sp, #20]
d008033e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080342:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0080346:	2000      	movs	r0, #0
d0080348:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d008034c:	f8dc c004 	ldr.w	ip, [ip, #4]
d0080350:	f8dc 6004 	ldr.w	r6, [ip, #4]
d0080354:	47b0      	blx	r6
d0080356:	42af      	cmp	r7, r5
d0080358:	d003      	beq.n	d0080362 <main+0x226>
d008035a:	f10a 0301 	add.w	r3, sl, #1
d008035e:	4598      	cmp	r8, r3
d0080360:	dc73      	bgt.n	d008044a <main+0x30e>
d0080362:	fa1f f38b 	uxth.w	r3, fp
d0080366:	2b11      	cmp	r3, #17
d0080368:	f000 8096 	beq.w	d0080498 <main+0x35c>
d008036c:	f10b 0b01 	add.w	fp, fp, #1
d0080370:	f10a 0a11 	add.w	sl, sl, #17
d0080374:	f819 5f01 	ldrb.w	r5, [r9, #1]!
d0080378:	fa1f f28a 	uxth.w	r2, sl
d008037c:	f1bb 0f11 	cmp.w	fp, #17
d0080380:	fa0f f18a 	sxth.w	r1, sl
d0080384:	fa0f f78b 	sxth.w	r7, fp
d0080388:	9204      	str	r2, [sp, #16]
d008038a:	d031      	beq.n	d00803f0 <main+0x2b4>
d008038c:	2f00      	cmp	r7, #0
d008038e:	d1b5      	bne.n	d00802fc <main+0x1c0>
d0080390:	7b23      	ldrb	r3, [r4, #12]
d0080392:	7b62      	ldrb	r2, [r4, #13]
d0080394:	7ba5      	ldrb	r5, [r4, #14]
d0080396:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008039a:	7be2      	ldrb	r2, [r4, #15]
d008039c:	f899 0000 	ldrb.w	r0, [r9]
d00803a0:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00803a4:	9104      	str	r1, [sp, #16]
d00803a6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00803aa:	685b      	ldr	r3, [r3, #4]
d00803ac:	68db      	ldr	r3, [r3, #12]
d00803ae:	4798      	blx	r3
d00803b0:	7b23      	ldrb	r3, [r4, #12]
d00803b2:	7b62      	ldrb	r2, [r4, #13]
d00803b4:	4638      	mov	r0, r7
d00803b6:	f894 c00e 	ldrb.w	ip, [r4, #14]
d00803ba:	ea43 2502 	orr.w	r5, r3, r2, lsl #8
d00803be:	7be6      	ldrb	r6, [r4, #15]
d00803c0:	9904      	ldr	r1, [sp, #16]
d00803c2:	2311      	movs	r3, #17
d00803c4:	ea45 450c 	orr.w	r5, r5, ip, lsl #16
d00803c8:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00803cc:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d00803d0:	686d      	ldr	r5, [r5, #4]
d00803d2:	686d      	ldr	r5, [r5, #4]
d00803d4:	47a8      	blx	r5
d00803d6:	e7c9      	b.n	d008036c <main+0x230>
d00803d8:	2001f000 	.word	0x2001f000
d00803dc:	d00826e0 	.word	0xd00826e0
d00803e0:	d00826c0 	.word	0xd00826c0
d00803e4:	d0081600 	.word	0xd0081600
d00803e8:	d00826a0 	.word	0xd00826a0
d00803ec:	d0082280 	.word	0xd0082280
d00803f0:	7b23      	ldrb	r3, [r4, #12]
d00803f2:	4628      	mov	r0, r5
d00803f4:	7b62      	ldrb	r2, [r4, #13]
d00803f6:	f894 c00e 	ldrb.w	ip, [r4, #14]
d00803fa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00803fe:	7be2      	ldrb	r2, [r4, #15]
d0080400:	f819 7c01 	ldrb.w	r7, [r9, #-1]
d0080404:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0080408:	9105      	str	r1, [sp, #20]
d008040a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008040e:	685b      	ldr	r3, [r3, #4]
d0080410:	68db      	ldr	r3, [r3, #12]
d0080412:	4798      	blx	r3
d0080414:	7b22      	ldrb	r2, [r4, #12]
d0080416:	f894 e00d 	ldrb.w	lr, [r4, #13]
d008041a:	7ba0      	ldrb	r0, [r4, #14]
d008041c:	ea42 2c0e 	orr.w	ip, r2, lr, lsl #8
d0080420:	f894 e00f 	ldrb.w	lr, [r4, #15]
d0080424:	9b04      	ldr	r3, [sp, #16]
d0080426:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d008042a:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d008042e:	9905      	ldr	r1, [sp, #20]
d0080430:	f5c3 73a0 	rsb	r3, r3, #320	; 0x140
d0080434:	2000      	movs	r0, #0
d0080436:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d008043a:	b21b      	sxth	r3, r3
d008043c:	f8dc c004 	ldr.w	ip, [ip, #4]
d0080440:	f8dc 8004 	ldr.w	r8, [ip, #4]
d0080444:	47c0      	blx	r8
d0080446:	42bd      	cmp	r5, r7
d0080448:	d08b      	beq.n	d0080362 <main+0x226>
d008044a:	7b23      	ldrb	r3, [r4, #12]
d008044c:	4638      	mov	r0, r7
d008044e:	7b62      	ldrb	r2, [r4, #13]
d0080450:	7ba1      	ldrb	r1, [r4, #14]
d0080452:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080456:	7be2      	ldrb	r2, [r4, #15]
d0080458:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008045c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080460:	685b      	ldr	r3, [r3, #4]
d0080462:	68db      	ldr	r3, [r3, #12]
d0080464:	4798      	blx	r3
d0080466:	7b25      	ldrb	r5, [r4, #12]
d0080468:	7b62      	ldrb	r2, [r4, #13]
d008046a:	2302      	movs	r3, #2
d008046c:	7ba0      	ldrb	r0, [r4, #14]
d008046e:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d0080472:	7be7      	ldrb	r7, [r4, #15]
d0080474:	9904      	ldr	r1, [sp, #16]
d0080476:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d008047a:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d008047e:	2000      	movs	r0, #0
d0080480:	3103      	adds	r1, #3
d0080482:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d0080486:	b209      	sxth	r1, r1
d0080488:	686d      	ldr	r5, [r5, #4]
d008048a:	686d      	ldr	r5, [r5, #4]
d008048c:	47a8      	blx	r5
d008048e:	fa1f f38b 	uxth.w	r3, fp
d0080492:	2b11      	cmp	r3, #17
d0080494:	f47f af6a 	bne.w	d008036c <main+0x230>
d0080498:	7b23      	ldrb	r3, [r4, #12]
d008049a:	f243 0a39 	movw	sl, #12345	; 0x3039
d008049e:	7b62      	ldrb	r2, [r4, #13]
d00804a0:	f240 1b19 	movw	fp, #281	; 0x119
d00804a4:	7ba1      	ldrb	r1, [r4, #14]
d00804a6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00804aa:	7be2      	ldrb	r2, [r4, #15]
d00804ac:	485d      	ldr	r0, [pc, #372]	; (d0080624 <main+0x4e8>)
d00804ae:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00804b2:	4e5d      	ldr	r6, [pc, #372]	; (d0080628 <main+0x4ec>)
d00804b4:	f8df 9194 	ldr.w	r9, [pc, #404]	; d008064c <main+0x510>
d00804b8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00804bc:	681b      	ldr	r3, [r3, #0]
d00804be:	6a1b      	ldr	r3, [r3, #32]
d00804c0:	4798      	blx	r3
d00804c2:	7b23      	ldrb	r3, [r4, #12]
d00804c4:	7b62      	ldrb	r2, [r4, #13]
d00804c6:	7ba1      	ldrb	r1, [r4, #14]
d00804c8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00804cc:	7be2      	ldrb	r2, [r4, #15]
d00804ce:	4857      	ldr	r0, [pc, #348]	; (d008062c <main+0x4f0>)
d00804d0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00804d4:	6800      	ldr	r0, [r0, #0]
d00804d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00804da:	681b      	ldr	r3, [r3, #0]
d00804dc:	69db      	ldr	r3, [r3, #28]
d00804de:	4798      	blx	r3
d00804e0:	7b23      	ldrb	r3, [r4, #12]
d00804e2:	7b62      	ldrb	r2, [r4, #13]
d00804e4:	7ba1      	ldrb	r1, [r4, #14]
d00804e6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00804ea:	7be2      	ldrb	r2, [r4, #15]
d00804ec:	4850      	ldr	r0, [pc, #320]	; (d0080630 <main+0x4f4>)
d00804ee:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00804f2:	6800      	ldr	r0, [r0, #0]
d00804f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00804f8:	681b      	ldr	r3, [r3, #0]
d00804fa:	699b      	ldr	r3, [r3, #24]
d00804fc:	4798      	blx	r3
d00804fe:	4b4d      	ldr	r3, [pc, #308]	; (d0080634 <main+0x4f8>)
d0080500:	f44f 62ca 	mov.w	r2, #1616	; 0x650
d0080504:	484c      	ldr	r0, [pc, #304]	; (d0080638 <main+0x4fc>)
d0080506:	f8d3 8000 	ldr.w	r8, [r3]
d008050a:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d008050e:	494b      	ldr	r1, [pc, #300]	; (d008063c <main+0x500>)
d0080510:	f04f 0e00 	mov.w	lr, #0
d0080514:	6002      	str	r2, [r0, #0]
d0080516:	6033      	str	r3, [r6, #0]
d0080518:	e007      	b.n	d008052a <main+0x3ee>
d008051a:	2306      	movs	r3, #6
d008051c:	f04f 0201 	mov.w	r2, #1
d0080520:	714b      	strb	r3, [r1, #5]
d0080522:	710a      	strb	r2, [r1, #4]
d0080524:	f10e 0e01 	add.w	lr, lr, #1
d0080528:	3106      	adds	r1, #6
d008052a:	fb09 a808 	mla	r8, r9, r8, sl
d008052e:	4b44      	ldr	r3, [pc, #272]	; (d0080640 <main+0x504>)
d0080530:	f1be 0f1f 	cmp.w	lr, #31
d0080534:	fa5f f58e 	uxtb.w	r5, lr
d0080538:	ea4f 4018 	mov.w	r0, r8, lsr #16
d008053c:	fb09 a808 	mla	r8, r9, r8, sl
d0080540:	fba3 2300 	umull	r2, r3, r3, r0
d0080544:	ea4f 4c18 	mov.w	ip, r8, lsr #16
d0080548:	eba0 0203 	sub.w	r2, r0, r3
d008054c:	eb03 0352 	add.w	r3, r3, r2, lsr #1
d0080550:	4a3c      	ldr	r2, [pc, #240]	; (d0080644 <main+0x508>)
d0080552:	ea4f 2313 	mov.w	r3, r3, lsr #8
d0080556:	fba2 720c 	umull	r7, r2, r2, ip
d008055a:	ebc3 1703 	rsb	r7, r3, r3, lsl #4
d008055e:	ea4f 02d2 	mov.w	r2, r2, lsr #3
d0080562:	ebc3 1347 	rsb	r3, r3, r7, lsl #5
d0080566:	fb0b c212 	mls	r2, fp, r2, ip
d008056a:	eba0 0003 	sub.w	r0, r0, r3
d008056e:	f102 0226 	add.w	r2, r2, #38	; 0x26
d0080572:	8008      	strh	r0, [r1, #0]
d0080574:	804a      	strh	r2, [r1, #2]
d0080576:	d9d0      	bls.n	d008051a <main+0x3de>
d0080578:	2d35      	cmp	r5, #53	; 0x35
d008057a:	d805      	bhi.n	d0080588 <main+0x44c>
d008057c:	2306      	movs	r3, #6
d008057e:	f04f 0202 	mov.w	r2, #2
d0080582:	714b      	strb	r3, [r1, #5]
d0080584:	710a      	strb	r2, [r1, #4]
d0080586:	e7cd      	b.n	d0080524 <main+0x3e8>
d0080588:	2d47      	cmp	r5, #71	; 0x47
d008058a:	d804      	bhi.n	d0080596 <main+0x45a>
d008058c:	2203      	movs	r2, #3
d008058e:	2305      	movs	r3, #5
d0080590:	710a      	strb	r2, [r1, #4]
d0080592:	714b      	strb	r3, [r1, #5]
d0080594:	e7c6      	b.n	d0080524 <main+0x3e8>
d0080596:	2d53      	cmp	r5, #83	; 0x53
d0080598:	d805      	bhi.n	d00805a6 <main+0x46a>
d008059a:	2305      	movs	r3, #5
d008059c:	f04f 0201 	mov.w	r2, #1
d00805a0:	710b      	strb	r3, [r1, #4]
d00805a2:	714a      	strb	r2, [r1, #5]
d00805a4:	e7be      	b.n	d0080524 <main+0x3e8>
d00805a6:	2d5b      	cmp	r5, #91	; 0x5b
d00805a8:	d806      	bhi.n	d00805b8 <main+0x47c>
d00805aa:	f04f 0307 	mov.w	r3, #7
d00805ae:	710b      	strb	r3, [r1, #4]
d00805b0:	f04f 0301 	mov.w	r3, #1
d00805b4:	714b      	strb	r3, [r1, #5]
d00805b6:	e7b5      	b.n	d0080524 <main+0x3e8>
d00805b8:	f04f 0309 	mov.w	r3, #9
d00805bc:	2d5f      	cmp	r5, #95	; 0x5f
d00805be:	710b      	strb	r3, [r1, #4]
d00805c0:	f04f 0302 	mov.w	r3, #2
d00805c4:	714b      	strb	r3, [r1, #5]
d00805c6:	d1ad      	bne.n	d0080524 <main+0x3e8>
d00805c8:	4b1a      	ldr	r3, [pc, #104]	; (d0080634 <main+0x4f8>)
d00805ca:	f8df a084 	ldr.w	sl, [pc, #132]	; d0080650 <main+0x514>
d00805ce:	f8c3 8000 	str.w	r8, [r3]
d00805d2:	7b20      	ldrb	r0, [r4, #12]
d00805d4:	7b61      	ldrb	r1, [r4, #13]
d00805d6:	7ba2      	ldrb	r2, [r4, #14]
d00805d8:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00805dc:	7be3      	ldrb	r3, [r4, #15]
d00805de:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00805e2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00805e6:	681b      	ldr	r3, [r3, #0]
d00805e8:	68db      	ldr	r3, [r3, #12]
d00805ea:	4798      	blx	r3
d00805ec:	7b20      	ldrb	r0, [r4, #12]
d00805ee:	7b61      	ldrb	r1, [r4, #13]
d00805f0:	7ba2      	ldrb	r2, [r4, #14]
d00805f2:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00805f6:	7be3      	ldrb	r3, [r4, #15]
d00805f8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00805fc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080600:	685b      	ldr	r3, [r3, #4]
d0080602:	681b      	ldr	r3, [r3, #0]
d0080604:	4798      	blx	r3
d0080606:	4b10      	ldr	r3, [pc, #64]	; (d0080648 <main+0x50c>)
d0080608:	6819      	ldr	r1, [r3, #0]
d008060a:	3902      	subs	r1, #2
d008060c:	f111 0f43 	cmn.w	r1, #67	; 0x43
d0080610:	f2c0 82c9 	blt.w	d0080ba6 <main+0xa6a>
d0080614:	6019      	str	r1, [r3, #0]
d0080616:	f04f 0800 	mov.w	r8, #0
d008061a:	f04f 0920 	mov.w	r9, #32
d008061e:	f8df b034 	ldr.w	fp, [pc, #52]	; d0080654 <main+0x518>
d0080622:	e01b      	b.n	d008065c <main+0x520>
d0080624:	d00826a0 	.word	0xd00826a0
d0080628:	d0082380 	.word	0xd0082380
d008062c:	d00826e0 	.word	0xd00826e0
d0080630:	d00826c0 	.word	0xd00826c0
d0080634:	d00823a0 	.word	0xd00823a0
d0080638:	d0082430 	.word	0xd0082430
d008063c:	d0082440 	.word	0xd0082440
d0080640:	11a3019b 	.word	0x11a3019b
d0080644:	0749cb29 	.word	0x0749cb29
d0080648:	d008242c 	.word	0xd008242c
d008064c:	41c64e6d 	.word	0x41c64e6d
d0080650:	d0082294 	.word	0xd0082294
d0080654:	d0081a00 	.word	0xd0081a00
d0080658:	4b70      	ldr	r3, [pc, #448]	; (d008081c <main+0x6e0>)
d008065a:	6819      	ldr	r1, [r3, #0]
d008065c:	7b20      	ldrb	r0, [r4, #12]
d008065e:	4441      	add	r1, r8
d0080660:	7b67      	ldrb	r7, [r4, #13]
d0080662:	f108 0844 	add.w	r8, r8, #68	; 0x44
d0080666:	f894 c00e 	ldrb.w	ip, [r4, #14]
d008066a:	2344      	movs	r3, #68	; 0x44
d008066c:	ea40 2007 	orr.w	r0, r0, r7, lsl #8
d0080670:	7be5      	ldrb	r5, [r4, #15]
d0080672:	fa1f f888 	uxth.w	r8, r8
d0080676:	2200      	movs	r2, #0
d0080678:	ea40 470c 	orr.w	r7, r0, ip, lsl #16
d008067c:	4658      	mov	r0, fp
d008067e:	b209      	sxth	r1, r1
d0080680:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0080684:	686d      	ldr	r5, [r5, #4]
d0080686:	f8cd 9000 	str.w	r9, [sp]
d008068a:	69ad      	ldr	r5, [r5, #24]
d008068c:	47a8      	blx	r5
d008068e:	f5b8 7f08 	cmp.w	r8, #544	; 0x220
d0080692:	d1e1      	bne.n	d0080658 <main+0x51c>
d0080694:	4a62      	ldr	r2, [pc, #392]	; (d0080820 <main+0x6e4>)
d0080696:	6833      	ldr	r3, [r6, #0]
d0080698:	6812      	ldr	r2, [r2, #0]
d008069a:	3b03      	subs	r3, #3
d008069c:	4252      	negs	r2, r2
d008069e:	6033      	str	r3, [r6, #0]
d00806a0:	4293      	cmp	r3, r2
d00806a2:	dc02      	bgt.n	d00806aa <main+0x56e>
d00806a4:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d00806a8:	6033      	str	r3, [r6, #0]
d00806aa:	7b27      	ldrb	r7, [r4, #12]
d00806ac:	2010      	movs	r0, #16
d00806ae:	7b61      	ldrb	r1, [r4, #13]
d00806b0:	f04f 0802 	mov.w	r8, #2
d00806b4:	7ba2      	ldrb	r2, [r4, #14]
d00806b6:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d00806ba:	7be3      	ldrb	r3, [r4, #15]
d00806bc:	2701      	movs	r7, #1
d00806be:	4d59      	ldr	r5, [pc, #356]	; (d0080824 <main+0x6e8>)
d00806c0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00806c4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00806c8:	685b      	ldr	r3, [r3, #4]
d00806ca:	68db      	ldr	r3, [r3, #12]
d00806cc:	4798      	blx	r3
d00806ce:	f894 e00c 	ldrb.w	lr, [r4, #12]
d00806d2:	7b60      	ldrb	r0, [r4, #13]
d00806d4:	4643      	mov	r3, r8
d00806d6:	7ba1      	ldrb	r1, [r4, #14]
d00806d8:	4652      	mov	r2, sl
d00806da:	ea4e 2000 	orr.w	r0, lr, r0, lsl #8
d00806de:	f894 c00f 	ldrb.w	ip, [r4, #15]
d00806e2:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
d00806e6:	6830      	ldr	r0, [r6, #0]
d00806e8:	ea41 6c0c 	orr.w	ip, r1, ip, lsl #24
d00806ec:	3802      	subs	r0, #2
d00806ee:	210e      	movs	r1, #14
d00806f0:	f8dc c004 	ldr.w	ip, [ip, #4]
d00806f4:	f8cd 8000 	str.w	r8, [sp]
d00806f8:	f8dc 9030 	ldr.w	r9, [ip, #48]	; 0x30
d00806fc:	47c8      	blx	r9
d00806fe:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0080702:	7b60      	ldrb	r0, [r4, #13]
d0080704:	4643      	mov	r3, r8
d0080706:	7ba1      	ldrb	r1, [r4, #14]
d0080708:	4652      	mov	r2, sl
d008070a:	ea4e 2000 	orr.w	r0, lr, r0, lsl #8
d008070e:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0080712:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
d0080716:	6830      	ldr	r0, [r6, #0]
d0080718:	ea41 6c0c 	orr.w	ip, r1, ip, lsl #24
d008071c:	4440      	add	r0, r8
d008071e:	210e      	movs	r1, #14
d0080720:	f8dc c004 	ldr.w	ip, [ip, #4]
d0080724:	f8cd 8000 	str.w	r8, [sp]
d0080728:	f8dc 9030 	ldr.w	r9, [ip, #48]	; 0x30
d008072c:	47c8      	blx	r9
d008072e:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0080732:	7b61      	ldrb	r1, [r4, #13]
d0080734:	4643      	mov	r3, r8
d0080736:	7ba0      	ldrb	r0, [r4, #14]
d0080738:	4652      	mov	r2, sl
d008073a:	ea4e 2101 	orr.w	r1, lr, r1, lsl #8
d008073e:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0080742:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d0080746:	210c      	movs	r1, #12
d0080748:	ea40 6c0c 	orr.w	ip, r0, ip, lsl #24
d008074c:	6830      	ldr	r0, [r6, #0]
d008074e:	f8dc c004 	ldr.w	ip, [ip, #4]
d0080752:	f8cd 8000 	str.w	r8, [sp]
d0080756:	f8dc 9030 	ldr.w	r9, [ip, #48]	; 0x30
d008075a:	47c8      	blx	r9
d008075c:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0080760:	7b61      	ldrb	r1, [r4, #13]
d0080762:	4643      	mov	r3, r8
d0080764:	7ba0      	ldrb	r0, [r4, #14]
d0080766:	4652      	mov	r2, sl
d0080768:	ea4e 2101 	orr.w	r1, lr, r1, lsl #8
d008076c:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0080770:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d0080774:	2110      	movs	r1, #16
d0080776:	ea40 6c0c 	orr.w	ip, r0, ip, lsl #24
d008077a:	6830      	ldr	r0, [r6, #0]
d008077c:	f8dc c004 	ldr.w	ip, [ip, #4]
d0080780:	f8cd 8000 	str.w	r8, [sp]
d0080784:	f8dc 9030 	ldr.w	r9, [ip, #48]	; 0x30
d0080788:	47c8      	blx	r9
d008078a:	7b20      	ldrb	r0, [r4, #12]
d008078c:	7b61      	ldrb	r1, [r4, #13]
d008078e:	f04f 0c0c 	mov.w	ip, #12
d0080792:	7ba2      	ldrb	r2, [r4, #14]
d0080794:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0080798:	7be3      	ldrb	r3, [r4, #15]
d008079a:	2050      	movs	r0, #80	; 0x50
d008079c:	f8df 9088 	ldr.w	r9, [pc, #136]	; d0080828 <main+0x6ec>
d00807a0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00807a4:	2157      	movs	r1, #87	; 0x57
d00807a6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00807aa:	4652      	mov	r2, sl
d00807ac:	f8d3 e004 	ldr.w	lr, [r3, #4]
d00807b0:	4643      	mov	r3, r8
d00807b2:	f8cd c00c 	str.w	ip, [sp, #12]
d00807b6:	9102      	str	r1, [sp, #8]
d00807b8:	210e      	movs	r1, #14
d00807ba:	f8cd 8000 	str.w	r8, [sp]
d00807be:	9001      	str	r0, [sp, #4]
d00807c0:	f8de 8034 	ldr.w	r8, [lr, #52]	; 0x34
d00807c4:	6830      	ldr	r0, [r6, #0]
d00807c6:	47c0      	blx	r8
d00807c8:	f894 c00c 	ldrb.w	ip, [r4, #12]
d00807cc:	7b61      	ldrb	r1, [r4, #13]
d00807ce:	4638      	mov	r0, r7
d00807d0:	7ba2      	ldrb	r2, [r4, #14]
d00807d2:	f04f 0800 	mov.w	r8, #0
d00807d6:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d00807da:	7be3      	ldrb	r3, [r4, #15]
d00807dc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00807e0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00807e4:	685b      	ldr	r3, [r3, #4]
d00807e6:	68db      	ldr	r3, [r3, #12]
d00807e8:	4798      	blx	r3
d00807ea:	f894 e00c 	ldrb.w	lr, [r4, #12]
d00807ee:	7b61      	ldrb	r1, [r4, #13]
d00807f0:	2305      	movs	r3, #5
d00807f2:	7ba0      	ldrb	r0, [r4, #14]
d00807f4:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00807f8:	ea4e 2101 	orr.w	r1, lr, r1, lsl #8
d00807fc:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0080800:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d0080804:	2120      	movs	r1, #32
d0080806:	ea40 6c0c 	orr.w	ip, r0, ip, lsl #24
d008080a:	4640      	mov	r0, r8
d008080c:	f8dc c004 	ldr.w	ip, [ip, #4]
d0080810:	f8dc b004 	ldr.w	fp, [ip, #4]
d0080814:	47d8      	blx	fp
d0080816:	9704      	str	r7, [sp, #16]
d0080818:	e0ae      	b.n	d0080978 <main+0x83c>
d008081a:	bf00      	nop
d008081c:	d008242c 	.word	0xd008242c
d0080820:	d0082430 	.word	0xd0082430
d0080824:	d0082440 	.word	0xd0082440
d0080828:	11a3019b 	.word	0x11a3019b
d008082c:	1c50      	adds	r0, r2, #1
d008082e:	8869      	ldrh	r1, [r5, #2]
d0080830:	f240 1bdf 	movw	fp, #479	; 0x1df
d0080834:	b283      	uxth	r3, r0
d0080836:	f1a1 0c27 	sub.w	ip, r1, #39	; 0x27
d008083a:	b200      	sxth	r0, r0
d008083c:	455b      	cmp	r3, fp
d008083e:	bf94      	ite	ls
d0080840:	2300      	movls	r3, #0
d0080842:	2301      	movhi	r3, #1
d0080844:	f5bc 7f8d 	cmp.w	ip, #282	; 0x11a
d0080848:	d219      	bcs.n	d008087e <main+0x742>
d008084a:	b9c3      	cbnz	r3, d008087e <main+0x742>
d008084c:	7b23      	ldrb	r3, [r4, #12]
d008084e:	3901      	subs	r1, #1
d0080850:	7b62      	ldrb	r2, [r4, #13]
d0080852:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0080856:	b209      	sxth	r1, r1
d0080858:	ea43 2c02 	orr.w	ip, r3, r2, lsl #8
d008085c:	7be3      	ldrb	r3, [r4, #15]
d008085e:	ea4c 420e 	orr.w	r2, ip, lr, lsl #16
d0080862:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080866:	685b      	ldr	r3, [r3, #4]
d0080868:	689b      	ldr	r3, [r3, #8]
d008086a:	4798      	blx	r3
d008086c:	882a      	ldrh	r2, [r5, #0]
d008086e:	8869      	ldrh	r1, [r5, #2]
d0080870:	1c50      	adds	r0, r2, #1
d0080872:	b283      	uxth	r3, r0
d0080874:	b200      	sxth	r0, r0
d0080876:	455b      	cmp	r3, fp
d0080878:	bf94      	ite	ls
d008087a:	2300      	movls	r3, #0
d008087c:	2301      	movhi	r3, #1
d008087e:	f1a1 0c25 	sub.w	ip, r1, #37	; 0x25
d0080882:	f5bc 7f8d 	cmp.w	ip, #282	; 0x11a
d0080886:	f080 80f3 	bcs.w	d0080a70 <main+0x934>
d008088a:	2b00      	cmp	r3, #0
d008088c:	f040 80f0 	bne.w	d0080a70 <main+0x934>
d0080890:	7b23      	ldrb	r3, [r4, #12]
d0080892:	3101      	adds	r1, #1
d0080894:	7b62      	ldrb	r2, [r4, #13]
d0080896:	f894 e00e 	ldrb.w	lr, [r4, #14]
d008089a:	b209      	sxth	r1, r1
d008089c:	ea43 2c02 	orr.w	ip, r3, r2, lsl #8
d00808a0:	7be3      	ldrb	r3, [r4, #15]
d00808a2:	ea4c 420e 	orr.w	r2, ip, lr, lsl #16
d00808a6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00808aa:	685b      	ldr	r3, [r3, #4]
d00808ac:	689b      	ldr	r3, [r3, #8]
d00808ae:	4798      	blx	r3
d00808b0:	792b      	ldrb	r3, [r5, #4]
d00808b2:	882a      	ldrh	r2, [r5, #0]
d00808b4:	2b08      	cmp	r3, #8
d00808b6:	f240 808e 	bls.w	d00809d6 <main+0x89a>
d00808ba:	1cd0      	adds	r0, r2, #3
d00808bc:	8869      	ldrh	r1, [r5, #2]
d00808be:	f240 1bdf 	movw	fp, #479	; 0x1df
d00808c2:	b283      	uxth	r3, r0
d00808c4:	f1a1 0c27 	sub.w	ip, r1, #39	; 0x27
d00808c8:	b200      	sxth	r0, r0
d00808ca:	455b      	cmp	r3, fp
d00808cc:	bf94      	ite	ls
d00808ce:	2300      	movls	r3, #0
d00808d0:	2301      	movhi	r3, #1
d00808d2:	f5bc 7f8d 	cmp.w	ip, #282	; 0x11a
d00808d6:	d219      	bcs.n	d008090c <main+0x7d0>
d00808d8:	b9c3      	cbnz	r3, d008090c <main+0x7d0>
d00808da:	7b23      	ldrb	r3, [r4, #12]
d00808dc:	3901      	subs	r1, #1
d00808de:	7b62      	ldrb	r2, [r4, #13]
d00808e0:	f894 e00e 	ldrb.w	lr, [r4, #14]
d00808e4:	b209      	sxth	r1, r1
d00808e6:	ea43 2c02 	orr.w	ip, r3, r2, lsl #8
d00808ea:	7be3      	ldrb	r3, [r4, #15]
d00808ec:	ea4c 420e 	orr.w	r2, ip, lr, lsl #16
d00808f0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00808f4:	685b      	ldr	r3, [r3, #4]
d00808f6:	689b      	ldr	r3, [r3, #8]
d00808f8:	4798      	blx	r3
d00808fa:	882a      	ldrh	r2, [r5, #0]
d00808fc:	8869      	ldrh	r1, [r5, #2]
d00808fe:	1cd0      	adds	r0, r2, #3
d0080900:	b283      	uxth	r3, r0
d0080902:	b200      	sxth	r0, r0
d0080904:	455b      	cmp	r3, fp
d0080906:	bf94      	ite	ls
d0080908:	2300      	movls	r3, #0
d008090a:	2301      	movhi	r3, #1
d008090c:	f1a1 0c25 	sub.w	ip, r1, #37	; 0x25
d0080910:	f5bc 7f8d 	cmp.w	ip, #282	; 0x11a
d0080914:	d211      	bcs.n	d008093a <main+0x7fe>
d0080916:	b983      	cbnz	r3, d008093a <main+0x7fe>
d0080918:	7b23      	ldrb	r3, [r4, #12]
d008091a:	3101      	adds	r1, #1
d008091c:	7b62      	ldrb	r2, [r4, #13]
d008091e:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0080922:	b209      	sxth	r1, r1
d0080924:	ea43 2c02 	orr.w	ip, r3, r2, lsl #8
d0080928:	7be3      	ldrb	r3, [r4, #15]
d008092a:	ea4c 420e 	orr.w	r2, ip, lr, lsl #16
d008092e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080932:	685b      	ldr	r3, [r3, #4]
d0080934:	689b      	ldr	r3, [r3, #8]
d0080936:	4798      	blx	r3
d0080938:	882a      	ldrh	r2, [r5, #0]
d008093a:	792b      	ldrb	r3, [r5, #4]
d008093c:	1ad2      	subs	r2, r2, r3
d008093e:	2b08      	cmp	r3, #8
d0080940:	b212      	sxth	r2, r2
d0080942:	802a      	strh	r2, [r5, #0]
d0080944:	f200 80f2 	bhi.w	d0080b2c <main+0x9f0>
d0080948:	2b06      	cmp	r3, #6
d008094a:	d849      	bhi.n	d00809e0 <main+0x8a4>
d008094c:	2b04      	cmp	r3, #4
d008094e:	f200 80e3 	bhi.w	d0080b18 <main+0x9dc>
d0080952:	2b02      	cmp	r3, #2
d0080954:	f200 8089 	bhi.w	d0080a6a <main+0x92e>
d0080958:	d07d      	beq.n	d0080a56 <main+0x91a>
d008095a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d008095e:	429a      	cmp	r2, r3
d0080960:	db42      	blt.n	d00809e8 <main+0x8ac>
d0080962:	9b04      	ldr	r3, [sp, #16]
d0080964:	2b60      	cmp	r3, #96	; 0x60
d0080966:	f000 80f2 	beq.w	d0080b4e <main+0xa12>
d008096a:	9f04      	ldr	r7, [sp, #16]
d008096c:	f108 0801 	add.w	r8, r8, #1
d0080970:	3506      	adds	r5, #6
d0080972:	3701      	adds	r7, #1
d0080974:	b2fb      	uxtb	r3, r7
d0080976:	9304      	str	r3, [sp, #16]
d0080978:	7b20      	ldrb	r0, [r4, #12]
d008097a:	7b61      	ldrb	r1, [r4, #13]
d008097c:	7ba2      	ldrb	r2, [r4, #14]
d008097e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0080982:	7be3      	ldrb	r3, [r4, #15]
d0080984:	7968      	ldrb	r0, [r5, #5]
d0080986:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d008098a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008098e:	685b      	ldr	r3, [r3, #4]
d0080990:	68db      	ldr	r3, [r3, #12]
d0080992:	4798      	blx	r3
d0080994:	792b      	ldrb	r3, [r5, #4]
d0080996:	2b08      	cmp	r3, #8
d0080998:	f200 80bb 	bhi.w	d0080b12 <main+0x9d6>
d008099c:	2b06      	cmp	r3, #6
d008099e:	f200 80b5 	bhi.w	d0080b0c <main+0x9d0>
d00809a2:	2b04      	cmp	r3, #4
d00809a4:	f200 80af 	bhi.w	d0080b06 <main+0x9ca>
d00809a8:	2b02      	cmp	r3, #2
d00809aa:	f200 80a9 	bhi.w	d0080b00 <main+0x9c4>
d00809ae:	d061      	beq.n	d0080a74 <main+0x938>
d00809b0:	f9b5 1002 	ldrsh.w	r1, [r5, #2]
d00809b4:	f9b5 0000 	ldrsh.w	r0, [r5]
d00809b8:	f1a1 0c26 	sub.w	ip, r1, #38	; 0x26
d00809bc:	b282      	uxth	r2, r0
d00809be:	fa1f fc8c 	uxth.w	ip, ip
d00809c2:	f5bc 7f8d 	cmp.w	ip, #282	; 0x11a
d00809c6:	d203      	bcs.n	d00809d0 <main+0x894>
d00809c8:	f5b2 7ff0 	cmp.w	r2, #480	; 0x1e0
d00809cc:	f0c0 81fb 	bcc.w	d0080dc6 <main+0xc8a>
d00809d0:	2b06      	cmp	r3, #6
d00809d2:	f63f af2b 	bhi.w	d008082c <main+0x6f0>
d00809d6:	1ad2      	subs	r2, r2, r3
d00809d8:	2b06      	cmp	r3, #6
d00809da:	b212      	sxth	r2, r2
d00809dc:	802a      	strh	r2, [r5, #0]
d00809de:	d9b5      	bls.n	d008094c <main+0x810>
d00809e0:	f06f 0306 	mvn.w	r3, #6
d00809e4:	429a      	cmp	r2, r3
d00809e6:	dabc      	bge.n	d0080962 <main+0x826>
d00809e8:	4b74      	ldr	r3, [pc, #464]	; (d0080bbc <main+0xa80>)
d00809ea:	f240 1e19 	movw	lr, #281	; 0x119
d00809ee:	4a74      	ldr	r2, [pc, #464]	; (d0080bc0 <main+0xa84>)
d00809f0:	f1b8 0f1f 	cmp.w	r8, #31
d00809f4:	6819      	ldr	r1, [r3, #0]
d00809f6:	f243 0339 	movw	r3, #12345	; 0x3039
d00809fa:	4617      	mov	r7, r2
d00809fc:	fa5f f088 	uxtb.w	r0, r8
d0080a00:	fb02 3101 	mla	r1, r2, r1, r3
d0080a04:	ea4f 4211 	mov.w	r2, r1, lsr #16
d0080a08:	fb07 3101 	mla	r1, r7, r1, r3
d0080a0c:	4f6b      	ldr	r7, [pc, #428]	; (d0080bbc <main+0xa80>)
d0080a0e:	fba9 c302 	umull	ip, r3, r9, r2
d0080a12:	ea4f 4c11 	mov.w	ip, r1, lsr #16
d0080a16:	6039      	str	r1, [r7, #0]
d0080a18:	eba2 0b03 	sub.w	fp, r2, r3
d0080a1c:	4969      	ldr	r1, [pc, #420]	; (d0080bc4 <main+0xa88>)
d0080a1e:	eb03 035b 	add.w	r3, r3, fp, lsr #1
d0080a22:	fba1 710c 	umull	r7, r1, r1, ip
d0080a26:	ea4f 2313 	mov.w	r3, r3, lsr #8
d0080a2a:	ea4f 01d1 	mov.w	r1, r1, lsr #3
d0080a2e:	fb0e c111 	mls	r1, lr, r1, ip
d0080a32:	ebc3 1c03 	rsb	ip, r3, r3, lsl #4
d0080a36:	ebc3 134c 	rsb	r3, r3, ip, lsl #5
d0080a3a:	f101 0126 	add.w	r1, r1, #38	; 0x26
d0080a3e:	eba2 0203 	sub.w	r2, r2, r3
d0080a42:	8069      	strh	r1, [r5, #2]
d0080a44:	f502 72f0 	add.w	r2, r2, #480	; 0x1e0
d0080a48:	802a      	strh	r2, [r5, #0]
d0080a4a:	d807      	bhi.n	d0080a5c <main+0x920>
d0080a4c:	2201      	movs	r2, #1
d0080a4e:	2306      	movs	r3, #6
d0080a50:	712a      	strb	r2, [r5, #4]
d0080a52:	716b      	strb	r3, [r5, #5]
d0080a54:	e789      	b.n	d008096a <main+0x82e>
d0080a56:	f06f 0301 	mvn.w	r3, #1
d0080a5a:	e780      	b.n	d008095e <main+0x822>
d0080a5c:	2835      	cmp	r0, #53	; 0x35
d0080a5e:	d85e      	bhi.n	d0080b1e <main+0x9e2>
d0080a60:	2202      	movs	r2, #2
d0080a62:	2306      	movs	r3, #6
d0080a64:	712a      	strb	r2, [r5, #4]
d0080a66:	716b      	strb	r3, [r5, #5]
d0080a68:	e77f      	b.n	d008096a <main+0x82e>
d0080a6a:	f06f 0302 	mvn.w	r3, #2
d0080a6e:	e776      	b.n	d008095e <main+0x822>
d0080a70:	792b      	ldrb	r3, [r5, #4]
d0080a72:	e71f      	b.n	d00808b4 <main+0x778>
d0080a74:	469b      	mov	fp, r3
d0080a76:	f9b5 1002 	ldrsh.w	r1, [r5, #2]
d0080a7a:	f9b5 0000 	ldrsh.w	r0, [r5]
d0080a7e:	f1a1 0326 	sub.w	r3, r1, #38	; 0x26
d0080a82:	b29b      	uxth	r3, r3
d0080a84:	f5b3 7f8d 	cmp.w	r3, #282	; 0x11a
d0080a88:	b283      	uxth	r3, r0
d0080a8a:	d214      	bcs.n	d0080ab6 <main+0x97a>
d0080a8c:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0080a90:	d211      	bcs.n	d0080ab6 <main+0x97a>
d0080a92:	7b23      	ldrb	r3, [r4, #12]
d0080a94:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0080a98:	7ba2      	ldrb	r2, [r4, #14]
d0080a9a:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d0080a9e:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0080aa2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080aa6:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d0080aaa:	685b      	ldr	r3, [r3, #4]
d0080aac:	689b      	ldr	r3, [r3, #8]
d0080aae:	4798      	blx	r3
d0080ab0:	882b      	ldrh	r3, [r5, #0]
d0080ab2:	f9b5 1002 	ldrsh.w	r1, [r5, #2]
d0080ab6:	f1a1 0c26 	sub.w	ip, r1, #38	; 0x26
d0080aba:	1c58      	adds	r0, r3, #1
d0080abc:	461a      	mov	r2, r3
d0080abe:	fa1f fc8c 	uxth.w	ip, ip
d0080ac2:	b280      	uxth	r0, r0
d0080ac4:	f5bc 7f8d 	cmp.w	ip, #282	; 0x11a
d0080ac8:	d215      	bcs.n	d0080af6 <main+0x9ba>
d0080aca:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0080ace:	d212      	bcs.n	d0080af6 <main+0x9ba>
d0080ad0:	7b23      	ldrb	r3, [r4, #12]
d0080ad2:	b200      	sxth	r0, r0
d0080ad4:	7b62      	ldrb	r2, [r4, #13]
d0080ad6:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0080ada:	ea43 2c02 	orr.w	ip, r3, r2, lsl #8
d0080ade:	7be3      	ldrb	r3, [r4, #15]
d0080ae0:	ea4c 420e 	orr.w	r2, ip, lr, lsl #16
d0080ae4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080ae8:	685b      	ldr	r3, [r3, #4]
d0080aea:	689b      	ldr	r3, [r3, #8]
d0080aec:	4798      	blx	r3
d0080aee:	f9b5 0000 	ldrsh.w	r0, [r5]
d0080af2:	b283      	uxth	r3, r0
d0080af4:	461a      	mov	r2, r3
d0080af6:	f1bb 0f02 	cmp.w	fp, #2
d0080afa:	d16d      	bne.n	d0080bd8 <main+0xa9c>
d0080afc:	792b      	ldrb	r3, [r5, #4]
d0080afe:	e767      	b.n	d00809d0 <main+0x894>
d0080b00:	f04f 0b03 	mov.w	fp, #3
d0080b04:	e7b7      	b.n	d0080a76 <main+0x93a>
d0080b06:	f04f 0b05 	mov.w	fp, #5
d0080b0a:	e7b4      	b.n	d0080a76 <main+0x93a>
d0080b0c:	f04f 0b07 	mov.w	fp, #7
d0080b10:	e7b1      	b.n	d0080a76 <main+0x93a>
d0080b12:	f04f 0b09 	mov.w	fp, #9
d0080b16:	e7ae      	b.n	d0080a76 <main+0x93a>
d0080b18:	f06f 0304 	mvn.w	r3, #4
d0080b1c:	e71f      	b.n	d008095e <main+0x822>
d0080b1e:	2847      	cmp	r0, #71	; 0x47
d0080b20:	d807      	bhi.n	d0080b32 <main+0x9f6>
d0080b22:	2203      	movs	r2, #3
d0080b24:	2305      	movs	r3, #5
d0080b26:	712a      	strb	r2, [r5, #4]
d0080b28:	716b      	strb	r3, [r5, #5]
d0080b2a:	e71e      	b.n	d008096a <main+0x82e>
d0080b2c:	f06f 0308 	mvn.w	r3, #8
d0080b30:	e715      	b.n	d008095e <main+0x822>
d0080b32:	2853      	cmp	r0, #83	; 0x53
d0080b34:	d804      	bhi.n	d0080b40 <main+0xa04>
d0080b36:	2205      	movs	r2, #5
d0080b38:	2301      	movs	r3, #1
d0080b3a:	712a      	strb	r2, [r5, #4]
d0080b3c:	716b      	strb	r3, [r5, #5]
d0080b3e:	e714      	b.n	d008096a <main+0x82e>
d0080b40:	285b      	cmp	r0, #91	; 0x5b
d0080b42:	d82b      	bhi.n	d0080b9c <main+0xa60>
d0080b44:	2207      	movs	r2, #7
d0080b46:	2301      	movs	r3, #1
d0080b48:	712a      	strb	r2, [r5, #4]
d0080b4a:	716b      	strb	r3, [r5, #5]
d0080b4c:	e70d      	b.n	d008096a <main+0x82e>
d0080b4e:	4a1e      	ldr	r2, [pc, #120]	; (d0080bc8 <main+0xa8c>)
d0080b50:	7813      	ldrb	r3, [r2, #0]
d0080b52:	f1c3 0301 	rsb	r3, r3, #1
d0080b56:	b2db      	uxtb	r3, r3
d0080b58:	7013      	strb	r3, [r2, #0]
d0080b5a:	7813      	ldrb	r3, [r2, #0]
d0080b5c:	7b21      	ldrb	r1, [r4, #12]
d0080b5e:	7b60      	ldrb	r0, [r4, #13]
d0080b60:	7ba2      	ldrb	r2, [r4, #14]
d0080b62:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0080b66:	b313      	cbz	r3, d0080bae <main+0xa72>
d0080b68:	4918      	ldr	r1, [pc, #96]	; (d0080bcc <main+0xa90>)
d0080b6a:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0080b6e:	7be3      	ldrb	r3, [r4, #15]
d0080b70:	6809      	ldr	r1, [r1, #0]
d0080b72:	4817      	ldr	r0, [pc, #92]	; (d0080bd0 <main+0xa94>)
d0080b74:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080b78:	6800      	ldr	r0, [r0, #0]
d0080b7a:	681b      	ldr	r3, [r3, #0]
d0080b7c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0080b7e:	4798      	blx	r3
d0080b80:	7b20      	ldrb	r0, [r4, #12]
d0080b82:	7b61      	ldrb	r1, [r4, #13]
d0080b84:	7ba2      	ldrb	r2, [r4, #14]
d0080b86:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0080b8a:	7be3      	ldrb	r3, [r4, #15]
d0080b8c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080b90:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080b94:	681b      	ldr	r3, [r3, #0]
d0080b96:	681b      	ldr	r3, [r3, #0]
d0080b98:	4798      	blx	r3
d0080b9a:	e51a      	b.n	d00805d2 <main+0x496>
d0080b9c:	2209      	movs	r2, #9
d0080b9e:	2302      	movs	r3, #2
d0080ba0:	712a      	strb	r2, [r5, #4]
d0080ba2:	716b      	strb	r3, [r5, #5]
d0080ba4:	e6dd      	b.n	d0080962 <main+0x826>
d0080ba6:	2100      	movs	r1, #0
d0080ba8:	4b0a      	ldr	r3, [pc, #40]	; (d0080bd4 <main+0xa98>)
d0080baa:	6019      	str	r1, [r3, #0]
d0080bac:	e533      	b.n	d0080616 <main+0x4da>
d0080bae:	4908      	ldr	r1, [pc, #32]	; (d0080bd0 <main+0xa94>)
d0080bb0:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0080bb4:	7be3      	ldrb	r3, [r4, #15]
d0080bb6:	6809      	ldr	r1, [r1, #0]
d0080bb8:	4804      	ldr	r0, [pc, #16]	; (d0080bcc <main+0xa90>)
d0080bba:	e7db      	b.n	d0080b74 <main+0xa38>
d0080bbc:	d00823a0 	.word	0xd00823a0
d0080bc0:	41c64e6d 	.word	0x41c64e6d
d0080bc4:	0749cb29 	.word	0x0749cb29
d0080bc8:	d0082428 	.word	0xd0082428
d0080bcc:	d00826c0 	.word	0xd00826c0
d0080bd0:	d00826e0 	.word	0xd00826e0
d0080bd4:	d008242c 	.word	0xd008242c
d0080bd8:	f9b5 1002 	ldrsh.w	r1, [r5, #2]
d0080bdc:	1c98      	adds	r0, r3, #2
d0080bde:	461a      	mov	r2, r3
d0080be0:	f1a1 0c26 	sub.w	ip, r1, #38	; 0x26
d0080be4:	b280      	uxth	r0, r0
d0080be6:	fa1f fc8c 	uxth.w	ip, ip
d0080bea:	f5bc 7f8d 	cmp.w	ip, #282	; 0x11a
d0080bee:	d215      	bcs.n	d0080c1c <main+0xae0>
d0080bf0:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0080bf4:	d212      	bcs.n	d0080c1c <main+0xae0>
d0080bf6:	7b23      	ldrb	r3, [r4, #12]
d0080bf8:	b200      	sxth	r0, r0
d0080bfa:	7b62      	ldrb	r2, [r4, #13]
d0080bfc:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0080c00:	ea43 2c02 	orr.w	ip, r3, r2, lsl #8
d0080c04:	7be3      	ldrb	r3, [r4, #15]
d0080c06:	ea4c 420e 	orr.w	r2, ip, lr, lsl #16
d0080c0a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080c0e:	685b      	ldr	r3, [r3, #4]
d0080c10:	689b      	ldr	r3, [r3, #8]
d0080c12:	4798      	blx	r3
d0080c14:	f9b5 0000 	ldrsh.w	r0, [r5]
d0080c18:	b283      	uxth	r3, r0
d0080c1a:	461a      	mov	r2, r3
d0080c1c:	f1bb 0f03 	cmp.w	fp, #3
d0080c20:	f43f af6c 	beq.w	d0080afc <main+0x9c0>
d0080c24:	f9b5 1002 	ldrsh.w	r1, [r5, #2]
d0080c28:	1cd8      	adds	r0, r3, #3
d0080c2a:	461a      	mov	r2, r3
d0080c2c:	f1a1 0c26 	sub.w	ip, r1, #38	; 0x26
d0080c30:	b280      	uxth	r0, r0
d0080c32:	fa1f fc8c 	uxth.w	ip, ip
d0080c36:	f5bc 7f8d 	cmp.w	ip, #282	; 0x11a
d0080c3a:	d215      	bcs.n	d0080c68 <main+0xb2c>
d0080c3c:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0080c40:	d212      	bcs.n	d0080c68 <main+0xb2c>
d0080c42:	7b23      	ldrb	r3, [r4, #12]
d0080c44:	b200      	sxth	r0, r0
d0080c46:	7b62      	ldrb	r2, [r4, #13]
d0080c48:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0080c4c:	ea43 2c02 	orr.w	ip, r3, r2, lsl #8
d0080c50:	7be3      	ldrb	r3, [r4, #15]
d0080c52:	ea4c 420e 	orr.w	r2, ip, lr, lsl #16
d0080c56:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080c5a:	685b      	ldr	r3, [r3, #4]
d0080c5c:	689b      	ldr	r3, [r3, #8]
d0080c5e:	4798      	blx	r3
d0080c60:	f9b5 0000 	ldrsh.w	r0, [r5]
d0080c64:	b283      	uxth	r3, r0
d0080c66:	461a      	mov	r2, r3
d0080c68:	f1bb 0f04 	cmp.w	fp, #4
d0080c6c:	f43f af46 	beq.w	d0080afc <main+0x9c0>
d0080c70:	f9b5 1002 	ldrsh.w	r1, [r5, #2]
d0080c74:	1d18      	adds	r0, r3, #4
d0080c76:	461a      	mov	r2, r3
d0080c78:	f1a1 0c26 	sub.w	ip, r1, #38	; 0x26
d0080c7c:	b280      	uxth	r0, r0
d0080c7e:	fa1f fc8c 	uxth.w	ip, ip
d0080c82:	f5bc 7f8d 	cmp.w	ip, #282	; 0x11a
d0080c86:	d216      	bcs.n	d0080cb6 <main+0xb7a>
d0080c88:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0080c8c:	d213      	bcs.n	d0080cb6 <main+0xb7a>
d0080c8e:	7b23      	ldrb	r3, [r4, #12]
d0080c90:	b200      	sxth	r0, r0
d0080c92:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0080c96:	7ba2      	ldrb	r2, [r4, #14]
d0080c98:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d0080c9c:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0080ca0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080ca4:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d0080ca8:	685b      	ldr	r3, [r3, #4]
d0080caa:	689b      	ldr	r3, [r3, #8]
d0080cac:	4798      	blx	r3
d0080cae:	f9b5 0000 	ldrsh.w	r0, [r5]
d0080cb2:	b283      	uxth	r3, r0
d0080cb4:	461a      	mov	r2, r3
d0080cb6:	f1bb 0f05 	cmp.w	fp, #5
d0080cba:	f43f af1f 	beq.w	d0080afc <main+0x9c0>
d0080cbe:	f9b5 1002 	ldrsh.w	r1, [r5, #2]
d0080cc2:	1d58      	adds	r0, r3, #5
d0080cc4:	461a      	mov	r2, r3
d0080cc6:	f1a1 0c26 	sub.w	ip, r1, #38	; 0x26
d0080cca:	b280      	uxth	r0, r0
d0080ccc:	fa1f fc8c 	uxth.w	ip, ip
d0080cd0:	f5bc 7f8d 	cmp.w	ip, #282	; 0x11a
d0080cd4:	d214      	bcs.n	d0080d00 <main+0xbc4>
d0080cd6:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0080cda:	d211      	bcs.n	d0080d00 <main+0xbc4>
d0080cdc:	7b23      	ldrb	r3, [r4, #12]
d0080cde:	b200      	sxth	r0, r0
d0080ce0:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0080ce4:	7ba2      	ldrb	r2, [r4, #14]
d0080ce6:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d0080cea:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0080cee:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080cf2:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d0080cf6:	685b      	ldr	r3, [r3, #4]
d0080cf8:	689b      	ldr	r3, [r3, #8]
d0080cfa:	4798      	blx	r3
d0080cfc:	882b      	ldrh	r3, [r5, #0]
d0080cfe:	461a      	mov	r2, r3
d0080d00:	f1bb 0f06 	cmp.w	fp, #6
d0080d04:	f43f aefa 	beq.w	d0080afc <main+0x9c0>
d0080d08:	f9b5 1002 	ldrsh.w	r1, [r5, #2]
d0080d0c:	1d98      	adds	r0, r3, #6
d0080d0e:	461a      	mov	r2, r3
d0080d10:	f1a1 0c26 	sub.w	ip, r1, #38	; 0x26
d0080d14:	b280      	uxth	r0, r0
d0080d16:	fa1f fc8c 	uxth.w	ip, ip
d0080d1a:	f5bc 7f8d 	cmp.w	ip, #282	; 0x11a
d0080d1e:	d214      	bcs.n	d0080d4a <main+0xc0e>
d0080d20:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0080d24:	d211      	bcs.n	d0080d4a <main+0xc0e>
d0080d26:	7b23      	ldrb	r3, [r4, #12]
d0080d28:	b200      	sxth	r0, r0
d0080d2a:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0080d2e:	7ba2      	ldrb	r2, [r4, #14]
d0080d30:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d0080d34:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0080d38:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080d3c:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d0080d40:	685b      	ldr	r3, [r3, #4]
d0080d42:	689b      	ldr	r3, [r3, #8]
d0080d44:	4798      	blx	r3
d0080d46:	882b      	ldrh	r3, [r5, #0]
d0080d48:	461a      	mov	r2, r3
d0080d4a:	f1bb 0f07 	cmp.w	fp, #7
d0080d4e:	f43f aed5 	beq.w	d0080afc <main+0x9c0>
d0080d52:	f9b5 1002 	ldrsh.w	r1, [r5, #2]
d0080d56:	1dd8      	adds	r0, r3, #7
d0080d58:	461a      	mov	r2, r3
d0080d5a:	f1a1 0c26 	sub.w	ip, r1, #38	; 0x26
d0080d5e:	b280      	uxth	r0, r0
d0080d60:	fa1f fc8c 	uxth.w	ip, ip
d0080d64:	f5bc 7f8d 	cmp.w	ip, #282	; 0x11a
d0080d68:	d214      	bcs.n	d0080d94 <main+0xc58>
d0080d6a:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0080d6e:	d211      	bcs.n	d0080d94 <main+0xc58>
d0080d70:	7b23      	ldrb	r3, [r4, #12]
d0080d72:	b200      	sxth	r0, r0
d0080d74:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0080d78:	7ba2      	ldrb	r2, [r4, #14]
d0080d7a:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d0080d7e:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0080d82:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080d86:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d0080d8a:	685b      	ldr	r3, [r3, #4]
d0080d8c:	689b      	ldr	r3, [r3, #8]
d0080d8e:	4798      	blx	r3
d0080d90:	882b      	ldrh	r3, [r5, #0]
d0080d92:	461a      	mov	r2, r3
d0080d94:	f1bb 0f09 	cmp.w	fp, #9
d0080d98:	f47f aeb0 	bne.w	d0080afc <main+0x9c0>
d0080d9c:	f9b5 1002 	ldrsh.w	r1, [r5, #2]
d0080da0:	461a      	mov	r2, r3
d0080da2:	f1a1 0326 	sub.w	r3, r1, #38	; 0x26
d0080da6:	f102 0008 	add.w	r0, r2, #8
d0080daa:	b29b      	uxth	r3, r3
d0080dac:	b280      	uxth	r0, r0
d0080dae:	f5b3 7f8d 	cmp.w	r3, #282	; 0x11a
d0080db2:	f4bf aea3 	bcs.w	d0080afc <main+0x9c0>
d0080db6:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0080dba:	f4bf ae9f 	bcs.w	d0080afc <main+0x9c0>
d0080dbe:	7b23      	ldrb	r3, [r4, #12]
d0080dc0:	b200      	sxth	r0, r0
d0080dc2:	7b62      	ldrb	r2, [r4, #13]
d0080dc4:	e001      	b.n	d0080dca <main+0xc8e>
d0080dc6:	7b23      	ldrb	r3, [r4, #12]
d0080dc8:	7b62      	ldrb	r2, [r4, #13]
d0080dca:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0080dce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080dd2:	7be2      	ldrb	r2, [r4, #15]
d0080dd4:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0080dd8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080ddc:	685b      	ldr	r3, [r3, #4]
d0080dde:	689b      	ldr	r3, [r3, #8]
d0080de0:	4798      	blx	r3
d0080de2:	882a      	ldrh	r2, [r5, #0]
d0080de4:	e68a      	b.n	d0080afc <main+0x9c0>
d0080de6:	bf00      	nop

d0080de8 <__errno>:
d0080de8:	4b01      	ldr	r3, [pc, #4]	; (d0080df0 <__errno+0x8>)
d0080dea:	6818      	ldr	r0, [r3, #0]
d0080dec:	4770      	bx	lr
d0080dee:	bf00      	nop
d0080df0:	d00823a4 	.word	0xd00823a4

d0080df4 <malloc>:
d0080df4:	4b02      	ldr	r3, [pc, #8]	; (d0080e00 <malloc+0xc>)
d0080df6:	4601      	mov	r1, r0
d0080df8:	6818      	ldr	r0, [r3, #0]
d0080dfa:	f000 b85b 	b.w	d0080eb4 <_malloc_r>
d0080dfe:	bf00      	nop
d0080e00:	d00823a4 	.word	0xd00823a4

d0080e04 <memset>:
d0080e04:	4402      	add	r2, r0
d0080e06:	4603      	mov	r3, r0
d0080e08:	4293      	cmp	r3, r2
d0080e0a:	d100      	bne.n	d0080e0e <memset+0xa>
d0080e0c:	4770      	bx	lr
d0080e0e:	f803 1b01 	strb.w	r1, [r3], #1
d0080e12:	e7f9      	b.n	d0080e08 <memset+0x4>

d0080e14 <_free_r>:
d0080e14:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0080e16:	2900      	cmp	r1, #0
d0080e18:	d048      	beq.n	d0080eac <_free_r+0x98>
d0080e1a:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0080e1e:	9001      	str	r0, [sp, #4]
d0080e20:	2b00      	cmp	r3, #0
d0080e22:	f1a1 0404 	sub.w	r4, r1, #4
d0080e26:	bfb8      	it	lt
d0080e28:	18e4      	addlt	r4, r4, r3
d0080e2a:	f000 fb49 	bl	d00814c0 <__malloc_lock>
d0080e2e:	4a20      	ldr	r2, [pc, #128]	; (d0080eb0 <_free_r+0x9c>)
d0080e30:	9801      	ldr	r0, [sp, #4]
d0080e32:	6813      	ldr	r3, [r2, #0]
d0080e34:	4615      	mov	r5, r2
d0080e36:	b933      	cbnz	r3, d0080e46 <_free_r+0x32>
d0080e38:	6063      	str	r3, [r4, #4]
d0080e3a:	6014      	str	r4, [r2, #0]
d0080e3c:	b003      	add	sp, #12
d0080e3e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0080e42:	f000 bb43 	b.w	d00814cc <__malloc_unlock>
d0080e46:	42a3      	cmp	r3, r4
d0080e48:	d90b      	bls.n	d0080e62 <_free_r+0x4e>
d0080e4a:	6821      	ldr	r1, [r4, #0]
d0080e4c:	1862      	adds	r2, r4, r1
d0080e4e:	4293      	cmp	r3, r2
d0080e50:	bf04      	itt	eq
d0080e52:	681a      	ldreq	r2, [r3, #0]
d0080e54:	685b      	ldreq	r3, [r3, #4]
d0080e56:	6063      	str	r3, [r4, #4]
d0080e58:	bf04      	itt	eq
d0080e5a:	1852      	addeq	r2, r2, r1
d0080e5c:	6022      	streq	r2, [r4, #0]
d0080e5e:	602c      	str	r4, [r5, #0]
d0080e60:	e7ec      	b.n	d0080e3c <_free_r+0x28>
d0080e62:	461a      	mov	r2, r3
d0080e64:	685b      	ldr	r3, [r3, #4]
d0080e66:	b10b      	cbz	r3, d0080e6c <_free_r+0x58>
d0080e68:	42a3      	cmp	r3, r4
d0080e6a:	d9fa      	bls.n	d0080e62 <_free_r+0x4e>
d0080e6c:	6811      	ldr	r1, [r2, #0]
d0080e6e:	1855      	adds	r5, r2, r1
d0080e70:	42a5      	cmp	r5, r4
d0080e72:	d10b      	bne.n	d0080e8c <_free_r+0x78>
d0080e74:	6824      	ldr	r4, [r4, #0]
d0080e76:	4421      	add	r1, r4
d0080e78:	1854      	adds	r4, r2, r1
d0080e7a:	42a3      	cmp	r3, r4
d0080e7c:	6011      	str	r1, [r2, #0]
d0080e7e:	d1dd      	bne.n	d0080e3c <_free_r+0x28>
d0080e80:	681c      	ldr	r4, [r3, #0]
d0080e82:	685b      	ldr	r3, [r3, #4]
d0080e84:	6053      	str	r3, [r2, #4]
d0080e86:	4421      	add	r1, r4
d0080e88:	6011      	str	r1, [r2, #0]
d0080e8a:	e7d7      	b.n	d0080e3c <_free_r+0x28>
d0080e8c:	d902      	bls.n	d0080e94 <_free_r+0x80>
d0080e8e:	230c      	movs	r3, #12
d0080e90:	6003      	str	r3, [r0, #0]
d0080e92:	e7d3      	b.n	d0080e3c <_free_r+0x28>
d0080e94:	6825      	ldr	r5, [r4, #0]
d0080e96:	1961      	adds	r1, r4, r5
d0080e98:	428b      	cmp	r3, r1
d0080e9a:	bf04      	itt	eq
d0080e9c:	6819      	ldreq	r1, [r3, #0]
d0080e9e:	685b      	ldreq	r3, [r3, #4]
d0080ea0:	6063      	str	r3, [r4, #4]
d0080ea2:	bf04      	itt	eq
d0080ea4:	1949      	addeq	r1, r1, r5
d0080ea6:	6021      	streq	r1, [r4, #0]
d0080ea8:	6054      	str	r4, [r2, #4]
d0080eaa:	e7c7      	b.n	d0080e3c <_free_r+0x28>
d0080eac:	b003      	add	sp, #12
d0080eae:	bd30      	pop	{r4, r5, pc}
d0080eb0:	d0082680 	.word	0xd0082680

d0080eb4 <_malloc_r>:
d0080eb4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0080eb6:	1ccd      	adds	r5, r1, #3
d0080eb8:	f025 0503 	bic.w	r5, r5, #3
d0080ebc:	3508      	adds	r5, #8
d0080ebe:	2d0c      	cmp	r5, #12
d0080ec0:	bf38      	it	cc
d0080ec2:	250c      	movcc	r5, #12
d0080ec4:	2d00      	cmp	r5, #0
d0080ec6:	4606      	mov	r6, r0
d0080ec8:	db01      	blt.n	d0080ece <_malloc_r+0x1a>
d0080eca:	42a9      	cmp	r1, r5
d0080ecc:	d903      	bls.n	d0080ed6 <_malloc_r+0x22>
d0080ece:	230c      	movs	r3, #12
d0080ed0:	6033      	str	r3, [r6, #0]
d0080ed2:	2000      	movs	r0, #0
d0080ed4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0080ed6:	f000 faf3 	bl	d00814c0 <__malloc_lock>
d0080eda:	4921      	ldr	r1, [pc, #132]	; (d0080f60 <_malloc_r+0xac>)
d0080edc:	680a      	ldr	r2, [r1, #0]
d0080ede:	4614      	mov	r4, r2
d0080ee0:	b99c      	cbnz	r4, d0080f0a <_malloc_r+0x56>
d0080ee2:	4f20      	ldr	r7, [pc, #128]	; (d0080f64 <_malloc_r+0xb0>)
d0080ee4:	683b      	ldr	r3, [r7, #0]
d0080ee6:	b923      	cbnz	r3, d0080ef2 <_malloc_r+0x3e>
d0080ee8:	4621      	mov	r1, r4
d0080eea:	4630      	mov	r0, r6
d0080eec:	f7ff f906 	bl	d00800fc <_sbrk_r>
d0080ef0:	6038      	str	r0, [r7, #0]
d0080ef2:	4629      	mov	r1, r5
d0080ef4:	4630      	mov	r0, r6
d0080ef6:	f7ff f901 	bl	d00800fc <_sbrk_r>
d0080efa:	1c43      	adds	r3, r0, #1
d0080efc:	d123      	bne.n	d0080f46 <_malloc_r+0x92>
d0080efe:	230c      	movs	r3, #12
d0080f00:	6033      	str	r3, [r6, #0]
d0080f02:	4630      	mov	r0, r6
d0080f04:	f000 fae2 	bl	d00814cc <__malloc_unlock>
d0080f08:	e7e3      	b.n	d0080ed2 <_malloc_r+0x1e>
d0080f0a:	6823      	ldr	r3, [r4, #0]
d0080f0c:	1b5b      	subs	r3, r3, r5
d0080f0e:	d417      	bmi.n	d0080f40 <_malloc_r+0x8c>
d0080f10:	2b0b      	cmp	r3, #11
d0080f12:	d903      	bls.n	d0080f1c <_malloc_r+0x68>
d0080f14:	6023      	str	r3, [r4, #0]
d0080f16:	441c      	add	r4, r3
d0080f18:	6025      	str	r5, [r4, #0]
d0080f1a:	e004      	b.n	d0080f26 <_malloc_r+0x72>
d0080f1c:	6863      	ldr	r3, [r4, #4]
d0080f1e:	42a2      	cmp	r2, r4
d0080f20:	bf0c      	ite	eq
d0080f22:	600b      	streq	r3, [r1, #0]
d0080f24:	6053      	strne	r3, [r2, #4]
d0080f26:	4630      	mov	r0, r6
d0080f28:	f000 fad0 	bl	d00814cc <__malloc_unlock>
d0080f2c:	f104 000b 	add.w	r0, r4, #11
d0080f30:	1d23      	adds	r3, r4, #4
d0080f32:	f020 0007 	bic.w	r0, r0, #7
d0080f36:	1ac2      	subs	r2, r0, r3
d0080f38:	d0cc      	beq.n	d0080ed4 <_malloc_r+0x20>
d0080f3a:	1a1b      	subs	r3, r3, r0
d0080f3c:	50a3      	str	r3, [r4, r2]
d0080f3e:	e7c9      	b.n	d0080ed4 <_malloc_r+0x20>
d0080f40:	4622      	mov	r2, r4
d0080f42:	6864      	ldr	r4, [r4, #4]
d0080f44:	e7cc      	b.n	d0080ee0 <_malloc_r+0x2c>
d0080f46:	1cc4      	adds	r4, r0, #3
d0080f48:	f024 0403 	bic.w	r4, r4, #3
d0080f4c:	42a0      	cmp	r0, r4
d0080f4e:	d0e3      	beq.n	d0080f18 <_malloc_r+0x64>
d0080f50:	1a21      	subs	r1, r4, r0
d0080f52:	4630      	mov	r0, r6
d0080f54:	f7ff f8d2 	bl	d00800fc <_sbrk_r>
d0080f58:	3001      	adds	r0, #1
d0080f5a:	d1dd      	bne.n	d0080f18 <_malloc_r+0x64>
d0080f5c:	e7cf      	b.n	d0080efe <_malloc_r+0x4a>
d0080f5e:	bf00      	nop
d0080f60:	d0082680 	.word	0xd0082680
d0080f64:	d0082684 	.word	0xd0082684

d0080f68 <setbuf>:
d0080f68:	2900      	cmp	r1, #0
d0080f6a:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0080f6e:	bf0c      	ite	eq
d0080f70:	2202      	moveq	r2, #2
d0080f72:	2200      	movne	r2, #0
d0080f74:	f000 b800 	b.w	d0080f78 <setvbuf>

d0080f78 <setvbuf>:
d0080f78:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0080f7c:	461d      	mov	r5, r3
d0080f7e:	4b5d      	ldr	r3, [pc, #372]	; (d00810f4 <setvbuf+0x17c>)
d0080f80:	681f      	ldr	r7, [r3, #0]
d0080f82:	4604      	mov	r4, r0
d0080f84:	460e      	mov	r6, r1
d0080f86:	4690      	mov	r8, r2
d0080f88:	b127      	cbz	r7, d0080f94 <setvbuf+0x1c>
d0080f8a:	69bb      	ldr	r3, [r7, #24]
d0080f8c:	b913      	cbnz	r3, d0080f94 <setvbuf+0x1c>
d0080f8e:	4638      	mov	r0, r7
d0080f90:	f000 f9d2 	bl	d0081338 <__sinit>
d0080f94:	4b58      	ldr	r3, [pc, #352]	; (d00810f8 <setvbuf+0x180>)
d0080f96:	429c      	cmp	r4, r3
d0080f98:	d167      	bne.n	d008106a <setvbuf+0xf2>
d0080f9a:	687c      	ldr	r4, [r7, #4]
d0080f9c:	f1b8 0f02 	cmp.w	r8, #2
d0080fa0:	d006      	beq.n	d0080fb0 <setvbuf+0x38>
d0080fa2:	f1b8 0f01 	cmp.w	r8, #1
d0080fa6:	f200 809f 	bhi.w	d00810e8 <setvbuf+0x170>
d0080faa:	2d00      	cmp	r5, #0
d0080fac:	f2c0 809c 	blt.w	d00810e8 <setvbuf+0x170>
d0080fb0:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0080fb2:	07db      	lsls	r3, r3, #31
d0080fb4:	d405      	bmi.n	d0080fc2 <setvbuf+0x4a>
d0080fb6:	89a3      	ldrh	r3, [r4, #12]
d0080fb8:	0598      	lsls	r0, r3, #22
d0080fba:	d402      	bmi.n	d0080fc2 <setvbuf+0x4a>
d0080fbc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0080fbe:	f000 fa59 	bl	d0081474 <__retarget_lock_acquire_recursive>
d0080fc2:	4621      	mov	r1, r4
d0080fc4:	4638      	mov	r0, r7
d0080fc6:	f000 f923 	bl	d0081210 <_fflush_r>
d0080fca:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0080fcc:	b141      	cbz	r1, d0080fe0 <setvbuf+0x68>
d0080fce:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0080fd2:	4299      	cmp	r1, r3
d0080fd4:	d002      	beq.n	d0080fdc <setvbuf+0x64>
d0080fd6:	4638      	mov	r0, r7
d0080fd8:	f7ff ff1c 	bl	d0080e14 <_free_r>
d0080fdc:	2300      	movs	r3, #0
d0080fde:	6363      	str	r3, [r4, #52]	; 0x34
d0080fe0:	2300      	movs	r3, #0
d0080fe2:	61a3      	str	r3, [r4, #24]
d0080fe4:	6063      	str	r3, [r4, #4]
d0080fe6:	89a3      	ldrh	r3, [r4, #12]
d0080fe8:	0619      	lsls	r1, r3, #24
d0080fea:	d503      	bpl.n	d0080ff4 <setvbuf+0x7c>
d0080fec:	6921      	ldr	r1, [r4, #16]
d0080fee:	4638      	mov	r0, r7
d0080ff0:	f7ff ff10 	bl	d0080e14 <_free_r>
d0080ff4:	89a3      	ldrh	r3, [r4, #12]
d0080ff6:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0080ffa:	f023 0303 	bic.w	r3, r3, #3
d0080ffe:	f1b8 0f02 	cmp.w	r8, #2
d0081002:	81a3      	strh	r3, [r4, #12]
d0081004:	d06c      	beq.n	d00810e0 <setvbuf+0x168>
d0081006:	ab01      	add	r3, sp, #4
d0081008:	466a      	mov	r2, sp
d008100a:	4621      	mov	r1, r4
d008100c:	4638      	mov	r0, r7
d008100e:	f000 fa33 	bl	d0081478 <__swhatbuf_r>
d0081012:	89a3      	ldrh	r3, [r4, #12]
d0081014:	4318      	orrs	r0, r3
d0081016:	81a0      	strh	r0, [r4, #12]
d0081018:	2d00      	cmp	r5, #0
d008101a:	d130      	bne.n	d008107e <setvbuf+0x106>
d008101c:	9d00      	ldr	r5, [sp, #0]
d008101e:	4628      	mov	r0, r5
d0081020:	f7ff fee8 	bl	d0080df4 <malloc>
d0081024:	4606      	mov	r6, r0
d0081026:	2800      	cmp	r0, #0
d0081028:	d155      	bne.n	d00810d6 <setvbuf+0x15e>
d008102a:	f8dd 9000 	ldr.w	r9, [sp]
d008102e:	45a9      	cmp	r9, r5
d0081030:	d14a      	bne.n	d00810c8 <setvbuf+0x150>
d0081032:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0081036:	2200      	movs	r2, #0
d0081038:	60a2      	str	r2, [r4, #8]
d008103a:	f104 0247 	add.w	r2, r4, #71	; 0x47
d008103e:	6022      	str	r2, [r4, #0]
d0081040:	6122      	str	r2, [r4, #16]
d0081042:	2201      	movs	r2, #1
d0081044:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0081048:	6162      	str	r2, [r4, #20]
d008104a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d008104c:	f043 0302 	orr.w	r3, r3, #2
d0081050:	07d2      	lsls	r2, r2, #31
d0081052:	81a3      	strh	r3, [r4, #12]
d0081054:	d405      	bmi.n	d0081062 <setvbuf+0xea>
d0081056:	f413 7f00 	tst.w	r3, #512	; 0x200
d008105a:	d102      	bne.n	d0081062 <setvbuf+0xea>
d008105c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008105e:	f000 fa0a 	bl	d0081476 <__retarget_lock_release_recursive>
d0081062:	4628      	mov	r0, r5
d0081064:	b003      	add	sp, #12
d0081066:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d008106a:	4b24      	ldr	r3, [pc, #144]	; (d00810fc <setvbuf+0x184>)
d008106c:	429c      	cmp	r4, r3
d008106e:	d101      	bne.n	d0081074 <setvbuf+0xfc>
d0081070:	68bc      	ldr	r4, [r7, #8]
d0081072:	e793      	b.n	d0080f9c <setvbuf+0x24>
d0081074:	4b22      	ldr	r3, [pc, #136]	; (d0081100 <setvbuf+0x188>)
d0081076:	429c      	cmp	r4, r3
d0081078:	bf08      	it	eq
d008107a:	68fc      	ldreq	r4, [r7, #12]
d008107c:	e78e      	b.n	d0080f9c <setvbuf+0x24>
d008107e:	2e00      	cmp	r6, #0
d0081080:	d0cd      	beq.n	d008101e <setvbuf+0xa6>
d0081082:	69bb      	ldr	r3, [r7, #24]
d0081084:	b913      	cbnz	r3, d008108c <setvbuf+0x114>
d0081086:	4638      	mov	r0, r7
d0081088:	f000 f956 	bl	d0081338 <__sinit>
d008108c:	f1b8 0f01 	cmp.w	r8, #1
d0081090:	bf08      	it	eq
d0081092:	89a3      	ldrheq	r3, [r4, #12]
d0081094:	6026      	str	r6, [r4, #0]
d0081096:	bf04      	itt	eq
d0081098:	f043 0301 	orreq.w	r3, r3, #1
d008109c:	81a3      	strheq	r3, [r4, #12]
d008109e:	89a2      	ldrh	r2, [r4, #12]
d00810a0:	f012 0308 	ands.w	r3, r2, #8
d00810a4:	e9c4 6504 	strd	r6, r5, [r4, #16]
d00810a8:	d01c      	beq.n	d00810e4 <setvbuf+0x16c>
d00810aa:	07d3      	lsls	r3, r2, #31
d00810ac:	bf41      	itttt	mi
d00810ae:	2300      	movmi	r3, #0
d00810b0:	426d      	negmi	r5, r5
d00810b2:	60a3      	strmi	r3, [r4, #8]
d00810b4:	61a5      	strmi	r5, [r4, #24]
d00810b6:	bf58      	it	pl
d00810b8:	60a5      	strpl	r5, [r4, #8]
d00810ba:	6e65      	ldr	r5, [r4, #100]	; 0x64
d00810bc:	f015 0501 	ands.w	r5, r5, #1
d00810c0:	d115      	bne.n	d00810ee <setvbuf+0x176>
d00810c2:	f412 7f00 	tst.w	r2, #512	; 0x200
d00810c6:	e7c8      	b.n	d008105a <setvbuf+0xe2>
d00810c8:	4648      	mov	r0, r9
d00810ca:	f7ff fe93 	bl	d0080df4 <malloc>
d00810ce:	4606      	mov	r6, r0
d00810d0:	2800      	cmp	r0, #0
d00810d2:	d0ae      	beq.n	d0081032 <setvbuf+0xba>
d00810d4:	464d      	mov	r5, r9
d00810d6:	89a3      	ldrh	r3, [r4, #12]
d00810d8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00810dc:	81a3      	strh	r3, [r4, #12]
d00810de:	e7d0      	b.n	d0081082 <setvbuf+0x10a>
d00810e0:	2500      	movs	r5, #0
d00810e2:	e7a8      	b.n	d0081036 <setvbuf+0xbe>
d00810e4:	60a3      	str	r3, [r4, #8]
d00810e6:	e7e8      	b.n	d00810ba <setvbuf+0x142>
d00810e8:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00810ec:	e7b9      	b.n	d0081062 <setvbuf+0xea>
d00810ee:	2500      	movs	r5, #0
d00810f0:	e7b7      	b.n	d0081062 <setvbuf+0xea>
d00810f2:	bf00      	nop
d00810f4:	d00823a4 	.word	0xd00823a4
d00810f8:	d0082320 	.word	0xd0082320
d00810fc:	d0082340 	.word	0xd0082340
d0081100:	d0082300 	.word	0xd0082300

d0081104 <__sflush_r>:
d0081104:	898a      	ldrh	r2, [r1, #12]
d0081106:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d008110a:	4605      	mov	r5, r0
d008110c:	0710      	lsls	r0, r2, #28
d008110e:	460c      	mov	r4, r1
d0081110:	d458      	bmi.n	d00811c4 <__sflush_r+0xc0>
d0081112:	684b      	ldr	r3, [r1, #4]
d0081114:	2b00      	cmp	r3, #0
d0081116:	dc05      	bgt.n	d0081124 <__sflush_r+0x20>
d0081118:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d008111a:	2b00      	cmp	r3, #0
d008111c:	dc02      	bgt.n	d0081124 <__sflush_r+0x20>
d008111e:	2000      	movs	r0, #0
d0081120:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0081124:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0081126:	2e00      	cmp	r6, #0
d0081128:	d0f9      	beq.n	d008111e <__sflush_r+0x1a>
d008112a:	2300      	movs	r3, #0
d008112c:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0081130:	682f      	ldr	r7, [r5, #0]
d0081132:	602b      	str	r3, [r5, #0]
d0081134:	d032      	beq.n	d008119c <__sflush_r+0x98>
d0081136:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0081138:	89a3      	ldrh	r3, [r4, #12]
d008113a:	075a      	lsls	r2, r3, #29
d008113c:	d505      	bpl.n	d008114a <__sflush_r+0x46>
d008113e:	6863      	ldr	r3, [r4, #4]
d0081140:	1ac0      	subs	r0, r0, r3
d0081142:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0081144:	b10b      	cbz	r3, d008114a <__sflush_r+0x46>
d0081146:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0081148:	1ac0      	subs	r0, r0, r3
d008114a:	2300      	movs	r3, #0
d008114c:	4602      	mov	r2, r0
d008114e:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0081150:	6a21      	ldr	r1, [r4, #32]
d0081152:	4628      	mov	r0, r5
d0081154:	47b0      	blx	r6
d0081156:	1c43      	adds	r3, r0, #1
d0081158:	89a3      	ldrh	r3, [r4, #12]
d008115a:	d106      	bne.n	d008116a <__sflush_r+0x66>
d008115c:	6829      	ldr	r1, [r5, #0]
d008115e:	291d      	cmp	r1, #29
d0081160:	d82c      	bhi.n	d00811bc <__sflush_r+0xb8>
d0081162:	4a2a      	ldr	r2, [pc, #168]	; (d008120c <__sflush_r+0x108>)
d0081164:	40ca      	lsrs	r2, r1
d0081166:	07d6      	lsls	r6, r2, #31
d0081168:	d528      	bpl.n	d00811bc <__sflush_r+0xb8>
d008116a:	2200      	movs	r2, #0
d008116c:	6062      	str	r2, [r4, #4]
d008116e:	04d9      	lsls	r1, r3, #19
d0081170:	6922      	ldr	r2, [r4, #16]
d0081172:	6022      	str	r2, [r4, #0]
d0081174:	d504      	bpl.n	d0081180 <__sflush_r+0x7c>
d0081176:	1c42      	adds	r2, r0, #1
d0081178:	d101      	bne.n	d008117e <__sflush_r+0x7a>
d008117a:	682b      	ldr	r3, [r5, #0]
d008117c:	b903      	cbnz	r3, d0081180 <__sflush_r+0x7c>
d008117e:	6560      	str	r0, [r4, #84]	; 0x54
d0081180:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0081182:	602f      	str	r7, [r5, #0]
d0081184:	2900      	cmp	r1, #0
d0081186:	d0ca      	beq.n	d008111e <__sflush_r+0x1a>
d0081188:	f104 0344 	add.w	r3, r4, #68	; 0x44
d008118c:	4299      	cmp	r1, r3
d008118e:	d002      	beq.n	d0081196 <__sflush_r+0x92>
d0081190:	4628      	mov	r0, r5
d0081192:	f7ff fe3f 	bl	d0080e14 <_free_r>
d0081196:	2000      	movs	r0, #0
d0081198:	6360      	str	r0, [r4, #52]	; 0x34
d008119a:	e7c1      	b.n	d0081120 <__sflush_r+0x1c>
d008119c:	6a21      	ldr	r1, [r4, #32]
d008119e:	2301      	movs	r3, #1
d00811a0:	4628      	mov	r0, r5
d00811a2:	47b0      	blx	r6
d00811a4:	1c41      	adds	r1, r0, #1
d00811a6:	d1c7      	bne.n	d0081138 <__sflush_r+0x34>
d00811a8:	682b      	ldr	r3, [r5, #0]
d00811aa:	2b00      	cmp	r3, #0
d00811ac:	d0c4      	beq.n	d0081138 <__sflush_r+0x34>
d00811ae:	2b1d      	cmp	r3, #29
d00811b0:	d001      	beq.n	d00811b6 <__sflush_r+0xb2>
d00811b2:	2b16      	cmp	r3, #22
d00811b4:	d101      	bne.n	d00811ba <__sflush_r+0xb6>
d00811b6:	602f      	str	r7, [r5, #0]
d00811b8:	e7b1      	b.n	d008111e <__sflush_r+0x1a>
d00811ba:	89a3      	ldrh	r3, [r4, #12]
d00811bc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00811c0:	81a3      	strh	r3, [r4, #12]
d00811c2:	e7ad      	b.n	d0081120 <__sflush_r+0x1c>
d00811c4:	690f      	ldr	r7, [r1, #16]
d00811c6:	2f00      	cmp	r7, #0
d00811c8:	d0a9      	beq.n	d008111e <__sflush_r+0x1a>
d00811ca:	0793      	lsls	r3, r2, #30
d00811cc:	680e      	ldr	r6, [r1, #0]
d00811ce:	bf08      	it	eq
d00811d0:	694b      	ldreq	r3, [r1, #20]
d00811d2:	600f      	str	r7, [r1, #0]
d00811d4:	bf18      	it	ne
d00811d6:	2300      	movne	r3, #0
d00811d8:	eba6 0807 	sub.w	r8, r6, r7
d00811dc:	608b      	str	r3, [r1, #8]
d00811de:	f1b8 0f00 	cmp.w	r8, #0
d00811e2:	dd9c      	ble.n	d008111e <__sflush_r+0x1a>
d00811e4:	6a21      	ldr	r1, [r4, #32]
d00811e6:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d00811e8:	4643      	mov	r3, r8
d00811ea:	463a      	mov	r2, r7
d00811ec:	4628      	mov	r0, r5
d00811ee:	47b0      	blx	r6
d00811f0:	2800      	cmp	r0, #0
d00811f2:	dc06      	bgt.n	d0081202 <__sflush_r+0xfe>
d00811f4:	89a3      	ldrh	r3, [r4, #12]
d00811f6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00811fa:	81a3      	strh	r3, [r4, #12]
d00811fc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081200:	e78e      	b.n	d0081120 <__sflush_r+0x1c>
d0081202:	4407      	add	r7, r0
d0081204:	eba8 0800 	sub.w	r8, r8, r0
d0081208:	e7e9      	b.n	d00811de <__sflush_r+0xda>
d008120a:	bf00      	nop
d008120c:	20400001 	.word	0x20400001

d0081210 <_fflush_r>:
d0081210:	b538      	push	{r3, r4, r5, lr}
d0081212:	690b      	ldr	r3, [r1, #16]
d0081214:	4605      	mov	r5, r0
d0081216:	460c      	mov	r4, r1
d0081218:	b913      	cbnz	r3, d0081220 <_fflush_r+0x10>
d008121a:	2500      	movs	r5, #0
d008121c:	4628      	mov	r0, r5
d008121e:	bd38      	pop	{r3, r4, r5, pc}
d0081220:	b118      	cbz	r0, d008122a <_fflush_r+0x1a>
d0081222:	6983      	ldr	r3, [r0, #24]
d0081224:	b90b      	cbnz	r3, d008122a <_fflush_r+0x1a>
d0081226:	f000 f887 	bl	d0081338 <__sinit>
d008122a:	4b14      	ldr	r3, [pc, #80]	; (d008127c <_fflush_r+0x6c>)
d008122c:	429c      	cmp	r4, r3
d008122e:	d11b      	bne.n	d0081268 <_fflush_r+0x58>
d0081230:	686c      	ldr	r4, [r5, #4]
d0081232:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0081236:	2b00      	cmp	r3, #0
d0081238:	d0ef      	beq.n	d008121a <_fflush_r+0xa>
d008123a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d008123c:	07d0      	lsls	r0, r2, #31
d008123e:	d404      	bmi.n	d008124a <_fflush_r+0x3a>
d0081240:	0599      	lsls	r1, r3, #22
d0081242:	d402      	bmi.n	d008124a <_fflush_r+0x3a>
d0081244:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081246:	f000 f915 	bl	d0081474 <__retarget_lock_acquire_recursive>
d008124a:	4628      	mov	r0, r5
d008124c:	4621      	mov	r1, r4
d008124e:	f7ff ff59 	bl	d0081104 <__sflush_r>
d0081252:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0081254:	07da      	lsls	r2, r3, #31
d0081256:	4605      	mov	r5, r0
d0081258:	d4e0      	bmi.n	d008121c <_fflush_r+0xc>
d008125a:	89a3      	ldrh	r3, [r4, #12]
d008125c:	059b      	lsls	r3, r3, #22
d008125e:	d4dd      	bmi.n	d008121c <_fflush_r+0xc>
d0081260:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081262:	f000 f908 	bl	d0081476 <__retarget_lock_release_recursive>
d0081266:	e7d9      	b.n	d008121c <_fflush_r+0xc>
d0081268:	4b05      	ldr	r3, [pc, #20]	; (d0081280 <_fflush_r+0x70>)
d008126a:	429c      	cmp	r4, r3
d008126c:	d101      	bne.n	d0081272 <_fflush_r+0x62>
d008126e:	68ac      	ldr	r4, [r5, #8]
d0081270:	e7df      	b.n	d0081232 <_fflush_r+0x22>
d0081272:	4b04      	ldr	r3, [pc, #16]	; (d0081284 <_fflush_r+0x74>)
d0081274:	429c      	cmp	r4, r3
d0081276:	bf08      	it	eq
d0081278:	68ec      	ldreq	r4, [r5, #12]
d008127a:	e7da      	b.n	d0081232 <_fflush_r+0x22>
d008127c:	d0082320 	.word	0xd0082320
d0081280:	d0082340 	.word	0xd0082340
d0081284:	d0082300 	.word	0xd0082300

d0081288 <std>:
d0081288:	2300      	movs	r3, #0
d008128a:	b510      	push	{r4, lr}
d008128c:	4604      	mov	r4, r0
d008128e:	e9c0 3300 	strd	r3, r3, [r0]
d0081292:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0081296:	6083      	str	r3, [r0, #8]
d0081298:	8181      	strh	r1, [r0, #12]
d008129a:	6643      	str	r3, [r0, #100]	; 0x64
d008129c:	81c2      	strh	r2, [r0, #14]
d008129e:	6183      	str	r3, [r0, #24]
d00812a0:	4619      	mov	r1, r3
d00812a2:	2208      	movs	r2, #8
d00812a4:	305c      	adds	r0, #92	; 0x5c
d00812a6:	f7ff fdad 	bl	d0080e04 <memset>
d00812aa:	4b05      	ldr	r3, [pc, #20]	; (d00812c0 <std+0x38>)
d00812ac:	6263      	str	r3, [r4, #36]	; 0x24
d00812ae:	4b05      	ldr	r3, [pc, #20]	; (d00812c4 <std+0x3c>)
d00812b0:	62a3      	str	r3, [r4, #40]	; 0x28
d00812b2:	4b05      	ldr	r3, [pc, #20]	; (d00812c8 <std+0x40>)
d00812b4:	62e3      	str	r3, [r4, #44]	; 0x2c
d00812b6:	4b05      	ldr	r3, [pc, #20]	; (d00812cc <std+0x44>)
d00812b8:	6224      	str	r4, [r4, #32]
d00812ba:	6323      	str	r3, [r4, #48]	; 0x30
d00812bc:	bd10      	pop	{r4, pc}
d00812be:	bf00      	nop
d00812c0:	d00814d9 	.word	0xd00814d9
d00812c4:	d00814fb 	.word	0xd00814fb
d00812c8:	d0081533 	.word	0xd0081533
d00812cc:	d0081557 	.word	0xd0081557

d00812d0 <_cleanup_r>:
d00812d0:	4901      	ldr	r1, [pc, #4]	; (d00812d8 <_cleanup_r+0x8>)
d00812d2:	f000 b8af 	b.w	d0081434 <_fwalk_reent>
d00812d6:	bf00      	nop
d00812d8:	d0081211 	.word	0xd0081211

d00812dc <__sfmoreglue>:
d00812dc:	b570      	push	{r4, r5, r6, lr}
d00812de:	1e4a      	subs	r2, r1, #1
d00812e0:	2568      	movs	r5, #104	; 0x68
d00812e2:	4355      	muls	r5, r2
d00812e4:	460e      	mov	r6, r1
d00812e6:	f105 0174 	add.w	r1, r5, #116	; 0x74
d00812ea:	f7ff fde3 	bl	d0080eb4 <_malloc_r>
d00812ee:	4604      	mov	r4, r0
d00812f0:	b140      	cbz	r0, d0081304 <__sfmoreglue+0x28>
d00812f2:	2100      	movs	r1, #0
d00812f4:	e9c0 1600 	strd	r1, r6, [r0]
d00812f8:	300c      	adds	r0, #12
d00812fa:	60a0      	str	r0, [r4, #8]
d00812fc:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0081300:	f7ff fd80 	bl	d0080e04 <memset>
d0081304:	4620      	mov	r0, r4
d0081306:	bd70      	pop	{r4, r5, r6, pc}

d0081308 <__sfp_lock_acquire>:
d0081308:	4801      	ldr	r0, [pc, #4]	; (d0081310 <__sfp_lock_acquire+0x8>)
d008130a:	f000 b8b3 	b.w	d0081474 <__retarget_lock_acquire_recursive>
d008130e:	bf00      	nop
d0081310:	d00826ec 	.word	0xd00826ec

d0081314 <__sfp_lock_release>:
d0081314:	4801      	ldr	r0, [pc, #4]	; (d008131c <__sfp_lock_release+0x8>)
d0081316:	f000 b8ae 	b.w	d0081476 <__retarget_lock_release_recursive>
d008131a:	bf00      	nop
d008131c:	d00826ec 	.word	0xd00826ec

d0081320 <__sinit_lock_acquire>:
d0081320:	4801      	ldr	r0, [pc, #4]	; (d0081328 <__sinit_lock_acquire+0x8>)
d0081322:	f000 b8a7 	b.w	d0081474 <__retarget_lock_acquire_recursive>
d0081326:	bf00      	nop
d0081328:	d00826e7 	.word	0xd00826e7

d008132c <__sinit_lock_release>:
d008132c:	4801      	ldr	r0, [pc, #4]	; (d0081334 <__sinit_lock_release+0x8>)
d008132e:	f000 b8a2 	b.w	d0081476 <__retarget_lock_release_recursive>
d0081332:	bf00      	nop
d0081334:	d00826e7 	.word	0xd00826e7

d0081338 <__sinit>:
d0081338:	b510      	push	{r4, lr}
d008133a:	4604      	mov	r4, r0
d008133c:	f7ff fff0 	bl	d0081320 <__sinit_lock_acquire>
d0081340:	69a3      	ldr	r3, [r4, #24]
d0081342:	b11b      	cbz	r3, d008134c <__sinit+0x14>
d0081344:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0081348:	f7ff bff0 	b.w	d008132c <__sinit_lock_release>
d008134c:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0081350:	6523      	str	r3, [r4, #80]	; 0x50
d0081352:	4b13      	ldr	r3, [pc, #76]	; (d00813a0 <__sinit+0x68>)
d0081354:	4a13      	ldr	r2, [pc, #76]	; (d00813a4 <__sinit+0x6c>)
d0081356:	681b      	ldr	r3, [r3, #0]
d0081358:	62a2      	str	r2, [r4, #40]	; 0x28
d008135a:	42a3      	cmp	r3, r4
d008135c:	bf04      	itt	eq
d008135e:	2301      	moveq	r3, #1
d0081360:	61a3      	streq	r3, [r4, #24]
d0081362:	4620      	mov	r0, r4
d0081364:	f000 f820 	bl	d00813a8 <__sfp>
d0081368:	6060      	str	r0, [r4, #4]
d008136a:	4620      	mov	r0, r4
d008136c:	f000 f81c 	bl	d00813a8 <__sfp>
d0081370:	60a0      	str	r0, [r4, #8]
d0081372:	4620      	mov	r0, r4
d0081374:	f000 f818 	bl	d00813a8 <__sfp>
d0081378:	2200      	movs	r2, #0
d008137a:	60e0      	str	r0, [r4, #12]
d008137c:	2104      	movs	r1, #4
d008137e:	6860      	ldr	r0, [r4, #4]
d0081380:	f7ff ff82 	bl	d0081288 <std>
d0081384:	68a0      	ldr	r0, [r4, #8]
d0081386:	2201      	movs	r2, #1
d0081388:	2109      	movs	r1, #9
d008138a:	f7ff ff7d 	bl	d0081288 <std>
d008138e:	68e0      	ldr	r0, [r4, #12]
d0081390:	2202      	movs	r2, #2
d0081392:	2112      	movs	r1, #18
d0081394:	f7ff ff78 	bl	d0081288 <std>
d0081398:	2301      	movs	r3, #1
d008139a:	61a3      	str	r3, [r4, #24]
d008139c:	e7d2      	b.n	d0081344 <__sinit+0xc>
d008139e:	bf00      	nop
d00813a0:	d00822fc 	.word	0xd00822fc
d00813a4:	d00812d1 	.word	0xd00812d1

d00813a8 <__sfp>:
d00813a8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00813aa:	4607      	mov	r7, r0
d00813ac:	f7ff ffac 	bl	d0081308 <__sfp_lock_acquire>
d00813b0:	4b1e      	ldr	r3, [pc, #120]	; (d008142c <__sfp+0x84>)
d00813b2:	681e      	ldr	r6, [r3, #0]
d00813b4:	69b3      	ldr	r3, [r6, #24]
d00813b6:	b913      	cbnz	r3, d00813be <__sfp+0x16>
d00813b8:	4630      	mov	r0, r6
d00813ba:	f7ff ffbd 	bl	d0081338 <__sinit>
d00813be:	3648      	adds	r6, #72	; 0x48
d00813c0:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d00813c4:	3b01      	subs	r3, #1
d00813c6:	d503      	bpl.n	d00813d0 <__sfp+0x28>
d00813c8:	6833      	ldr	r3, [r6, #0]
d00813ca:	b30b      	cbz	r3, d0081410 <__sfp+0x68>
d00813cc:	6836      	ldr	r6, [r6, #0]
d00813ce:	e7f7      	b.n	d00813c0 <__sfp+0x18>
d00813d0:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d00813d4:	b9d5      	cbnz	r5, d008140c <__sfp+0x64>
d00813d6:	4b16      	ldr	r3, [pc, #88]	; (d0081430 <__sfp+0x88>)
d00813d8:	60e3      	str	r3, [r4, #12]
d00813da:	f104 0058 	add.w	r0, r4, #88	; 0x58
d00813de:	6665      	str	r5, [r4, #100]	; 0x64
d00813e0:	f000 f847 	bl	d0081472 <__retarget_lock_init_recursive>
d00813e4:	f7ff ff96 	bl	d0081314 <__sfp_lock_release>
d00813e8:	e9c4 5501 	strd	r5, r5, [r4, #4]
d00813ec:	e9c4 5504 	strd	r5, r5, [r4, #16]
d00813f0:	6025      	str	r5, [r4, #0]
d00813f2:	61a5      	str	r5, [r4, #24]
d00813f4:	2208      	movs	r2, #8
d00813f6:	4629      	mov	r1, r5
d00813f8:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d00813fc:	f7ff fd02 	bl	d0080e04 <memset>
d0081400:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0081404:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0081408:	4620      	mov	r0, r4
d008140a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d008140c:	3468      	adds	r4, #104	; 0x68
d008140e:	e7d9      	b.n	d00813c4 <__sfp+0x1c>
d0081410:	2104      	movs	r1, #4
d0081412:	4638      	mov	r0, r7
d0081414:	f7ff ff62 	bl	d00812dc <__sfmoreglue>
d0081418:	4604      	mov	r4, r0
d008141a:	6030      	str	r0, [r6, #0]
d008141c:	2800      	cmp	r0, #0
d008141e:	d1d5      	bne.n	d00813cc <__sfp+0x24>
d0081420:	f7ff ff78 	bl	d0081314 <__sfp_lock_release>
d0081424:	230c      	movs	r3, #12
d0081426:	603b      	str	r3, [r7, #0]
d0081428:	e7ee      	b.n	d0081408 <__sfp+0x60>
d008142a:	bf00      	nop
d008142c:	d00822fc 	.word	0xd00822fc
d0081430:	ffff0001 	.word	0xffff0001

d0081434 <_fwalk_reent>:
d0081434:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0081438:	4606      	mov	r6, r0
d008143a:	4688      	mov	r8, r1
d008143c:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0081440:	2700      	movs	r7, #0
d0081442:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0081446:	f1b9 0901 	subs.w	r9, r9, #1
d008144a:	d505      	bpl.n	d0081458 <_fwalk_reent+0x24>
d008144c:	6824      	ldr	r4, [r4, #0]
d008144e:	2c00      	cmp	r4, #0
d0081450:	d1f7      	bne.n	d0081442 <_fwalk_reent+0xe>
d0081452:	4638      	mov	r0, r7
d0081454:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0081458:	89ab      	ldrh	r3, [r5, #12]
d008145a:	2b01      	cmp	r3, #1
d008145c:	d907      	bls.n	d008146e <_fwalk_reent+0x3a>
d008145e:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0081462:	3301      	adds	r3, #1
d0081464:	d003      	beq.n	d008146e <_fwalk_reent+0x3a>
d0081466:	4629      	mov	r1, r5
d0081468:	4630      	mov	r0, r6
d008146a:	47c0      	blx	r8
d008146c:	4307      	orrs	r7, r0
d008146e:	3568      	adds	r5, #104	; 0x68
d0081470:	e7e9      	b.n	d0081446 <_fwalk_reent+0x12>

d0081472 <__retarget_lock_init_recursive>:
d0081472:	4770      	bx	lr

d0081474 <__retarget_lock_acquire_recursive>:
d0081474:	4770      	bx	lr

d0081476 <__retarget_lock_release_recursive>:
d0081476:	4770      	bx	lr

d0081478 <__swhatbuf_r>:
d0081478:	b570      	push	{r4, r5, r6, lr}
d008147a:	460e      	mov	r6, r1
d008147c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081480:	2900      	cmp	r1, #0
d0081482:	b096      	sub	sp, #88	; 0x58
d0081484:	4614      	mov	r4, r2
d0081486:	461d      	mov	r5, r3
d0081488:	da07      	bge.n	d008149a <__swhatbuf_r+0x22>
d008148a:	2300      	movs	r3, #0
d008148c:	602b      	str	r3, [r5, #0]
d008148e:	89b3      	ldrh	r3, [r6, #12]
d0081490:	061a      	lsls	r2, r3, #24
d0081492:	d410      	bmi.n	d00814b6 <__swhatbuf_r+0x3e>
d0081494:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0081498:	e00e      	b.n	d00814b8 <__swhatbuf_r+0x40>
d008149a:	466a      	mov	r2, sp
d008149c:	f000 f870 	bl	d0081580 <_fstat_r>
d00814a0:	2800      	cmp	r0, #0
d00814a2:	dbf2      	blt.n	d008148a <__swhatbuf_r+0x12>
d00814a4:	9a01      	ldr	r2, [sp, #4]
d00814a6:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d00814aa:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d00814ae:	425a      	negs	r2, r3
d00814b0:	415a      	adcs	r2, r3
d00814b2:	602a      	str	r2, [r5, #0]
d00814b4:	e7ee      	b.n	d0081494 <__swhatbuf_r+0x1c>
d00814b6:	2340      	movs	r3, #64	; 0x40
d00814b8:	2000      	movs	r0, #0
d00814ba:	6023      	str	r3, [r4, #0]
d00814bc:	b016      	add	sp, #88	; 0x58
d00814be:	bd70      	pop	{r4, r5, r6, pc}

d00814c0 <__malloc_lock>:
d00814c0:	4801      	ldr	r0, [pc, #4]	; (d00814c8 <__malloc_lock+0x8>)
d00814c2:	f7ff bfd7 	b.w	d0081474 <__retarget_lock_acquire_recursive>
d00814c6:	bf00      	nop
d00814c8:	d00826e8 	.word	0xd00826e8

d00814cc <__malloc_unlock>:
d00814cc:	4801      	ldr	r0, [pc, #4]	; (d00814d4 <__malloc_unlock+0x8>)
d00814ce:	f7ff bfd2 	b.w	d0081476 <__retarget_lock_release_recursive>
d00814d2:	bf00      	nop
d00814d4:	d00826e8 	.word	0xd00826e8

d00814d8 <__sread>:
d00814d8:	b510      	push	{r4, lr}
d00814da:	460c      	mov	r4, r1
d00814dc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00814e0:	f000 f872 	bl	d00815c8 <_read_r>
d00814e4:	2800      	cmp	r0, #0
d00814e6:	bfab      	itete	ge
d00814e8:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d00814ea:	89a3      	ldrhlt	r3, [r4, #12]
d00814ec:	181b      	addge	r3, r3, r0
d00814ee:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d00814f2:	bfac      	ite	ge
d00814f4:	6563      	strge	r3, [r4, #84]	; 0x54
d00814f6:	81a3      	strhlt	r3, [r4, #12]
d00814f8:	bd10      	pop	{r4, pc}

d00814fa <__swrite>:
d00814fa:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00814fe:	461f      	mov	r7, r3
d0081500:	898b      	ldrh	r3, [r1, #12]
d0081502:	05db      	lsls	r3, r3, #23
d0081504:	4605      	mov	r5, r0
d0081506:	460c      	mov	r4, r1
d0081508:	4616      	mov	r6, r2
d008150a:	d505      	bpl.n	d0081518 <__swrite+0x1e>
d008150c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081510:	2302      	movs	r3, #2
d0081512:	2200      	movs	r2, #0
d0081514:	f000 f846 	bl	d00815a4 <_lseek_r>
d0081518:	89a3      	ldrh	r3, [r4, #12]
d008151a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d008151e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0081522:	81a3      	strh	r3, [r4, #12]
d0081524:	4632      	mov	r2, r6
d0081526:	463b      	mov	r3, r7
d0081528:	4628      	mov	r0, r5
d008152a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d008152e:	f7fe bd9f 	b.w	d0080070 <_write_r>

d0081532 <__sseek>:
d0081532:	b510      	push	{r4, lr}
d0081534:	460c      	mov	r4, r1
d0081536:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d008153a:	f000 f833 	bl	d00815a4 <_lseek_r>
d008153e:	1c43      	adds	r3, r0, #1
d0081540:	89a3      	ldrh	r3, [r4, #12]
d0081542:	bf15      	itete	ne
d0081544:	6560      	strne	r0, [r4, #84]	; 0x54
d0081546:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d008154a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d008154e:	81a3      	strheq	r3, [r4, #12]
d0081550:	bf18      	it	ne
d0081552:	81a3      	strhne	r3, [r4, #12]
d0081554:	bd10      	pop	{r4, pc}

d0081556 <__sclose>:
d0081556:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d008155a:	f000 b801 	b.w	d0081560 <_close_r>
	...

d0081560 <_close_r>:
d0081560:	b538      	push	{r3, r4, r5, lr}
d0081562:	4d06      	ldr	r5, [pc, #24]	; (d008157c <_close_r+0x1c>)
d0081564:	2300      	movs	r3, #0
d0081566:	4604      	mov	r4, r0
d0081568:	4608      	mov	r0, r1
d008156a:	602b      	str	r3, [r5, #0]
d008156c:	f7fe fdba 	bl	d00800e4 <_close>
d0081570:	1c43      	adds	r3, r0, #1
d0081572:	d102      	bne.n	d008157a <_close_r+0x1a>
d0081574:	682b      	ldr	r3, [r5, #0]
d0081576:	b103      	cbz	r3, d008157a <_close_r+0x1a>
d0081578:	6023      	str	r3, [r4, #0]
d008157a:	bd38      	pop	{r3, r4, r5, pc}
d008157c:	d00826f0 	.word	0xd00826f0

d0081580 <_fstat_r>:
d0081580:	b538      	push	{r3, r4, r5, lr}
d0081582:	4d07      	ldr	r5, [pc, #28]	; (d00815a0 <_fstat_r+0x20>)
d0081584:	2300      	movs	r3, #0
d0081586:	4604      	mov	r4, r0
d0081588:	4608      	mov	r0, r1
d008158a:	4611      	mov	r1, r2
d008158c:	602b      	str	r3, [r5, #0]
d008158e:	f7fe fdad 	bl	d00800ec <_fstat>
d0081592:	1c43      	adds	r3, r0, #1
d0081594:	d102      	bne.n	d008159c <_fstat_r+0x1c>
d0081596:	682b      	ldr	r3, [r5, #0]
d0081598:	b103      	cbz	r3, d008159c <_fstat_r+0x1c>
d008159a:	6023      	str	r3, [r4, #0]
d008159c:	bd38      	pop	{r3, r4, r5, pc}
d008159e:	bf00      	nop
d00815a0:	d00826f0 	.word	0xd00826f0

d00815a4 <_lseek_r>:
d00815a4:	b538      	push	{r3, r4, r5, lr}
d00815a6:	4d07      	ldr	r5, [pc, #28]	; (d00815c4 <_lseek_r+0x20>)
d00815a8:	4604      	mov	r4, r0
d00815aa:	4608      	mov	r0, r1
d00815ac:	4611      	mov	r1, r2
d00815ae:	2200      	movs	r2, #0
d00815b0:	602a      	str	r2, [r5, #0]
d00815b2:	461a      	mov	r2, r3
d00815b4:	f7fe fda0 	bl	d00800f8 <_lseek>
d00815b8:	1c43      	adds	r3, r0, #1
d00815ba:	d102      	bne.n	d00815c2 <_lseek_r+0x1e>
d00815bc:	682b      	ldr	r3, [r5, #0]
d00815be:	b103      	cbz	r3, d00815c2 <_lseek_r+0x1e>
d00815c0:	6023      	str	r3, [r4, #0]
d00815c2:	bd38      	pop	{r3, r4, r5, pc}
d00815c4:	d00826f0 	.word	0xd00826f0

d00815c8 <_read_r>:
d00815c8:	b538      	push	{r3, r4, r5, lr}
d00815ca:	4d07      	ldr	r5, [pc, #28]	; (d00815e8 <_read_r+0x20>)
d00815cc:	4604      	mov	r4, r0
d00815ce:	4608      	mov	r0, r1
d00815d0:	4611      	mov	r1, r2
d00815d2:	2200      	movs	r2, #0
d00815d4:	602a      	str	r2, [r5, #0]
d00815d6:	461a      	mov	r2, r3
d00815d8:	f7fe fd7a 	bl	d00800d0 <_read>
d00815dc:	1c43      	adds	r3, r0, #1
d00815de:	d102      	bne.n	d00815e6 <_read_r+0x1e>
d00815e0:	682b      	ldr	r3, [r5, #0]
d00815e2:	b103      	cbz	r3, d00815e6 <_read_r+0x1e>
d00815e4:	6023      	str	r3, [r4, #0]
d00815e6:	bd38      	pop	{r3, r4, r5, pc}
d00815e8:	d00826f0 	.word	0xd00826f0
	...

d0081600 <clut>:
d0081600:	00000000 ffafafaf ffffffff ff3b67a2     .............g;.
d0081610:	ffaa907c ff959595 ff7b7b7b ffffa997     |.......{{{.....
d0081620:	ff37a91d ff7ca9ff ffbf8112 ffebbf66     ..7...|.....f...
d0081630:	ff78c178 ff3d9318 ffb33418 ffd9311c     x.x...=..4...1..
d0081640:	ff000000 ff00000e ff00001d ff00002b     ............+...
d0081650:	ff000139 ff000147 ff000156 ff000164     9...G...V...d...
d0081660:	ff0001d2 ff0001ff ffcecece ff00ff00     ................
d0081670:	ffb2ff00 ffffe700 ffff9600 ffff1100     ................
d0081680:	ff491200 ff491355 ff4914aa ff4916ff     ..I.U.I...I...I.
d0081690:	ff5b1700 ff5b1855 ff5b19aa ff5b1aff     ..[.U.[...[...[.
d00816a0:	ff6d1b00 ff6d1c55 ff00e300 ff85ff54     ..m.U.m.....T...
d00816b0:	ffc4ff00 ffffd900 ffffa41f ffe05400     .............T..
d00816c0:	ffff0000 ff922655 ff9227aa ff9228ff     ....U&...'...(..
d00816d0:	ffa42900 ffa42a55 ffa42baa ffa42cff     .)..U*...+...,..
d00816e0:	ffb62d00 ffb62f55 ffb630aa ffb631ff     .-..U/...0...1..
d00816f0:	ffc93200 ffc93355 ffc934aa ffc935ff     .2..U3...4...5..
d0081700:	ffdb3700 ffdb3855 ffdb39aa ffdb3aff     .7..U8...9...:..
d0081710:	ffed3b00 ffed3c55 ffed3daa ffed3fff     .;..U<...=...?..
d0081720:	ffff4000 ffff4155 ffff42aa ffff43ff     .@..UA...B...C..
d0081730:	ff004400 ff004555 ff0046aa ff0048ff     .D..UE...F...H..
d0081740:	ffffff00 ff12ff55 ff12ee55 ff12b6ff     ....U...U.......
d0081750:	ff001fff ff9d0ec7 fff10000 ffff7700     .............w..
d0081760:	ff375200 ff375355 ff3754aa ff3755ff     .R7.US7..T7..U7.
d0081770:	ff495600 ff495855 ff4959aa ff495aff     .VI.UXI..YI..ZI.
d0081780:	ff5b5b00 ff5b5c55 ff5b5daa ff5b5eff     .[[.U\[..][..^[.
d0081790:	ff6d6000 ff6d6155 ff6d62aa ff6d63ff     .`m.Uam..bm..cm.
d00817a0:	ff6d6400 ff806555 ff8066aa ff8067ff     .dm.Ue...f...g..
d00817b0:	ff926900 ff926a55 ff926baa ff926cff     .i..Uj...k...l..
d00817c0:	ffa46d00 ffa46e55 ffa46faa ffa471ff     .m..Un...o...q..
d00817d0:	ffb67200 ffb67355 ffb674aa ffb675ff     .r..Us...t...u..
d00817e0:	ffc97600 ffc97755 ffc979aa ffc97aff     .v..Uw...y...z..
d00817f0:	ffdb7b00 ffdb7c55 ffdb7daa ffdb7eff     .{..U|...}...~..
d0081800:	ffed7f00 ffed8055 ffed82aa ffed83ff     ....U...........
d0081810:	ffff8400 ffff8555 ffff86aa ffff87ff     ....U...........
d0081820:	ff008800 ff008a55 ff008baa ff008cff     ....U...........
d0081830:	ff128d00 ff128e55 ff128faa ff1290ff     ....U...........
d0081840:	ff249200 ff249355 ff2494aa ff2495ff     ..$.U.$...$...$.
d0081850:	ff379600 ff379755 ff3798aa ff3799ff     ..7.U.7...7...7.
d0081860:	ff499b00 ff499c55 ff499daa ff499eff     ..I.U.I...I...I.
d0081870:	ff5b9f00 ff5ba055 ff5ba1aa ff5ba3ff     ..[.U.[...[...[.
d0081880:	ffa4b5d5 ffa0b0f8 ff94a3e6 ff7c89c1     ..............|.
d0081890:	ff6281c0 ff1c62a1 ff4254ea ff62a1bd     ..b..b...TB...b.
d00818a0:	ff7093c0 ff4977a1 ff003faa ff1554ff     ..p..wI..?...T..
d00818b0:	ff1c50b9 ff00b3ff ff0088aa ff00b5ff     .P..............
d00818c0:	ff0e62ff ff5eb7e3 ffbdc0b9 ff85b9ff     .b....^.........
d00818d0:	ff006caf ff1f81b9 ff3f5baa ffc9beff     .l.......[?.....
d00818e0:	ff5bafcb ffdbc055 ffdbc1aa ffbdc0c0     ..[.U...........
d00818f0:	ffedc400 ffedc555 ffedc6aa ffedc7ff     ....U...........
d0081900:	ffffc800 ffffc955 ffffcaaa ffffccff     ....U...........
d0081910:	ff00cd00 ff00ce55 ff00cfaa ff00d0ff     ....U...........
d0081920:	ff12d100 ff12d255 ff12d3aa ff12d5ff     ....U...........
d0081930:	ff24d600 ff24d755 ff24d8aa ff24d9ff     ..$.U.$...$...$.
d0081940:	ff37da00 ff37db55 ff37ddaa ff37deff     ..7.U.7...7...7.
d0081950:	ff49df00 ff49e055 ff49e1aa ff49e2ff     ..I.U.I...I...I.
d0081960:	ff5be300 ff5be555 ff5be6aa ff5be7ff     ..[.U.[...[...[.
d0081970:	ff6de800 ff6de955 ff6deaaa ff6debff     ..m.U.m...m...m.
d0081980:	ff6dec00 ff80ee55 ff80efaa ff80f0ff     ..m.U...........
d0081990:	ff93cea2 ff92f255 ff92f3aa ff92f4ff     ....U...........
d00819a0:	ffa4f600 ffa4f755 ffa4f8aa ffa4f9ff     ....U...........
d00819b0:	ffb6fa00 ffb6fb55 ffb6fcaa ffb6feff     ....U...........
d00819c0:	ffc9ff00 ffc9ff55 ffc9ffaa ffc9ffff     ....U...........
d00819d0:	ffdbff00 ffdbff55 ffdbffaa ffdbffff     ....U...........
d00819e0:	ffedff00 ffedff55 ffedffaa ffedffff     ....U...........
d00819f0:	ffffff00 ffffff55 ffffffaa ffffffff     ....U...........

d0081a00 <topscroll_bar_bg1>:
d0081a00:	9f9f9f9f 9f9f9f9f 9f9f9f9f 020202a0     ................
d0081a10:	a0020202 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081a20:	029f9f9f 02020202 9f9fa002 9f9f9f9f     ................
d0081a30:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081a40:	9f9f9f9f 9f9f9f9f 9f9f9f9f 029f9f9f     ................
d0081a50:	02020202 02020202 9f020202 9f9f9f9f     ................
d0081a60:	9f9f9f9f 0202a09f a3020202 9f9fa3a3     ................
d0081a70:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081a80:	a00202a0 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081a90:	02029f9f 02020202 02020202 9f9fa002     ................
d0081aa0:	9f9f9f9f 9f9f9f9f 0202a09f 02020202     ................
d0081ab0:	02020202 9f9f0202 9f9f9f9f 9f9f9f9f     ................
d0081ac0:	0202029f 02020202 9f9f9f9f 9f9f9f9f     ................
d0081ad0:	9f9f9f9f 9f9f9f9f a00202a0 02a09f9f     ................
d0081ae0:	9f9f9f02 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081af0:	02020202 9f020202 9f9f9f9f 9f9f9f9f     ................
d0081b00:	a09f9f9f 02020202 02020202 9f9f0202     ................
d0081b10:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081b20:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081b30:	029f9f9f 0202a0a0 9f9f0202 9f9f9f9f     ................
d0081b40:	9f9f9f9f 9f9f9f9f 0202a09f 02020202     ................
d0081b50:	9f9f9f02 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081b60:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081b70:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081b80:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081b90:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081ba0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081bb0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081bc0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081bd0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081be0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081bf0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081c00:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081c10:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081c20:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081c30:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081c40:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081c50:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081c60:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081c70:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081c80:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081c90:	a0a0a09f a0a0a0a0 9f9f9f9f 9f9f9f9f     ................
d0081ca0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081cb0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081cc0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081cd0:	b79f9f9f 02020202 b7b702a0 9fa0a0a0     ................
d0081ce0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 8f8f9f9f     ................
d0081cf0:	9f9f8f8f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081d00:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081d10:	9f9f9f9f b7b79f9f 02a00202 b7020202     ................
d0081d20:	9f9fa0b7 9f9f9f9f 8f9f9f9f 8f8f8f8f     ................
d0081d30:	8f8f8f8f 8f8f8f8f a0a0a0a0 9fa0a0a0     ................
d0081d40:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0081d50:	8f8f8f8f 8f8f8f8f 09098f8f a0a0a009     ................
d0081d60:	9fa0a0a0 9f9f9f9f 8f8f8f9f 8f8f8f8f     ................
d0081d70:	8f8f8f8f 8f8f8f8f 02b78f8f a0020202     ................
d0081d80:	a0b7b702 8f8fa0a0 8f8f8f8f 8f8f8f8f     ................
d0081d90:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081da0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081db0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 02b7b78f     ................
d0081dc0:	0202a002 b7b70202 8f8f8fa0 8f8f8f8f     ................
d0081dd0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081de0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081df0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081e00:	8f8f8f8f a0a0a0a0 8f8fa0a0 06068f8f     ................
d0081e10:	06060606 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081e20:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081e30:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081e40:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081e50:	0605068f 06060606 8f8f8f06 8f8f8f8f     ................
d0081e60:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081e70:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081e80:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081e90:	8f8f8f8f 06060506 06060606 8f8f0606     ................
d0081ea0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081eb0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081ec0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081ed0:	8f8f8f8f 068f8f8f 06060605 06060606     ................
d0081ee0:	8f8f0606 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081ef0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081f00:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081f10:	8f8f8f8f 8f8f8f8f 05068f8f 06060606     ................
d0081f20:	06060606 8f066006 8f8f8f8f 8f8f8f8f     .....`..........
d0081f30:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081f40:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081f50:	8f8f8f8f 8f8f8f8f 8f8f8f8f 0605068f     ................
d0081f60:	06060606 06060606 06600606 8f8f8f8f     ..........`.....
d0081f70:	05058f8f 05050505 05050505 8f8f8f8f     ................
d0081f80:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081f90:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081fa0:	06050606 06060606 06060606 06600606     ..............`.
d0081fb0:	8f8f8f06 05010505 05050505 05050505     ................
d0081fc0:	8f8f0505 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081fd0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0081fe0:	068f8f8f 06060506 06060606 06060606     ................
d0081ff0:	60060606 05058f06 05050101 05050505     ...`............
d0082000:	05050505 8f050605 8f8f8f8f 8f8f8f8f     ................
d0082010:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082020:	8f8f8f8f 06068f8f 06060605 06060606     ................
d0082030:	06060606 60060606 01050505 05050505     .......`........
d0082040:	05050505 05050505 05060505 8f8f8f8f     ................
d0082050:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082060:	8f8f8f8f 8f8f8f8f 0506068f 06060606     ................
d0082070:	06060606 06060606 05050606 05010105     ................
d0082080:	05050505 05050505 05050505 06050505     ................
d0082090:	8f8f0505 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d00820a0:	8f8f8f8f 8f8f8f8f 8f8f0d8f 06050606     ................
d00820b0:	06060606 06060606 06060606 050d0505     ................
d00820c0:	05050501 05050505 05050505 05050505     ................
d00820d0:	05050505 8f050506 8f8f8f8f 8f8f8f8f     ................
d00820e0:	8f8f8f8f 8f8f8f8f 8f0d8f8f 068f0d8f     ................
d00820f0:	06060606 06060606 060d0606 05060606     ................
d0082100:	050d0505 05050d05 05050505 050d050d     ................
d0082110:	05050505 05050505 05050605 0d8f8f05     ................
d0082120:	8f8f8f8f 8f0d8f0d 8f8f8f8f 0d0d0d0d     ................
d0082130:	0d0d0d0d 0d0d0d0d 0d0d0d0d 0d0d0d0d     ................
d0082140:	0d0d0d0d 0d0d0d0d 0d0d0d0d 0d0d0d0d     ................
d0082150:	0d0d0d0d 0d0d0d0d 0d0d0d0d 0d0d0d0d     ................
d0082160:	0d0d0d0d 0d0d0d0d 0d0d0d0d 0d0d0d0d     ................
d0082170:	0d0a0b0a 0a0a0a0d 0b0a0b0a 0a0a0a0a     ................
d0082180:	0a0a0a0a 680a0a0a 0b0b0a68 0a0a0a0a     .......hh.......
d0082190:	0a0a0b0a 680a0a0a 0a0a0a0a 6868680a     .......h.....hhh
d00821a0:	0b0b0b0a 0a0a0b0a 0a0a0b0a 0a0b0b0b     ................
d00821b0:	0a0a0b0b 0b0b0a0a 0b0a0a0a 0a0a0a0b     ................
d00821c0:	0a0a0a0a 0a0b0a0a 0a0a0a0a 0a0a0a0a     ................
d00821d0:	0b0a0a0a 0a0a0a0a 0a0a0a0a 0b0b0a0a     ................
d00821e0:	0a0a0a0a 0a0a0a0b 0a0a0b0a 0a0a0a0a     ................
d00821f0:	0a0a0a0a 0b0b0a0a 0a0a0b0a 0a0a0b0a     ................
d0082200:	0a680a0b 0b0a0a0a 0a0a0b0b 0a0a6868     ..h.........hh..
d0082210:	680a0a0a 0a0b0a68 0a686868 680a0a0a     ...hh...hhh....h
d0082220:	0a0a6868 0b0a0a0a 0a0a0a0a 0b0b0a0a     hh..............
d0082230:	0a0a0a0a 0a0a0a0a 0b0a0a0a 0a0a0a0a     ................
d0082240:	6868680b 0a0a0a0a 68680a0a 0a0a0a0a     .hhh......hh....
d0082250:	0b0a0a0a 0a0a0a0b 0a0a0a0a 0a0a0a0a     ................
d0082260:	0a0a0a0a 0a0a0a0a 0a0a0a0a 0a0a0a0a     ................
d0082270:	0a0a0a0a 680a0a0a 0b0b6868 0a0a0a0a     .......hhh......

d0082280 <gradient_cols.9103>:
d0082280:	11101010 13121211 15141413 17161615     ................
d0082290:	00001717                                ....

d0082294 <txtTitle>:
d0082294:	73696874 20736920 65742061 73207473     this is a test s
d00822a4:	6c6f7263 202c796c 656d6f73 6e696874     crolly, somethin
d00822b4:	6f742067 73657420 6f662074 6f6e2072     g to test for no
d00822c4:	62202c77 77207475 206c6c69 656b616d     w, but will make
d00822d4:	20746920 696c2061 656c7474 74656220      it a little bet
d00822e4:	20726574 6c6c6966 65742079 20797478     ter filly texty 
d00822f4:	66757473 00000066                       stuff...

d00822fc <_global_impure_ptr>:
d00822fc:	d00823a8                                .#..

d0082300 <__sf_fake_stderr>:
	...

d0082320 <__sf_fake_stdin>:
	...

d0082340 <__sf_fake_stdout>:
	...

Disassembly of section .init:

d0082360 <_init>:
d0082360:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0082362:	bf00      	nop

Disassembly of section .fini:

d0082364 <_fini>:
d0082364:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0082366:	bf00      	nop
