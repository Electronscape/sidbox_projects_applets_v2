
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d05fc010 <applet_entry>:
d05fc010:	b570      	push	{r4, r5, r6, lr}
d05fc012:	4e09      	ldr	r6, [pc, #36]	; (d05fc038 <applet_entry+0x28>)
d05fc014:	460d      	mov	r5, r1
d05fc016:	4604      	mov	r4, r0
d05fc018:	2100      	movs	r1, #0
d05fc01a:	6833      	ldr	r3, [r6, #0]
d05fc01c:	6898      	ldr	r0, [r3, #8]
d05fc01e:	f000 f94d 	bl	d05fc2bc <setbuf>
d05fc022:	6833      	ldr	r3, [r6, #0]
d05fc024:	2100      	movs	r1, #0
d05fc026:	68d8      	ldr	r0, [r3, #12]
d05fc028:	f000 f948 	bl	d05fc2bc <setbuf>
d05fc02c:	4629      	mov	r1, r5
d05fc02e:	4620      	mov	r0, r4
d05fc030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d05fc034:	f000 b86a 	b.w	d05fc10c <main>
d05fc038:	d05fd5a4 	.word	0xd05fd5a4

d05fc03c <_write_r>:
d05fc03c:	3901      	subs	r1, #1
d05fc03e:	2901      	cmp	r1, #1
d05fc040:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05fc042:	d81f      	bhi.n	d05fc084 <_write_r+0x48>
d05fc044:	b1e2      	cbz	r2, d05fc080 <_write_r+0x44>
d05fc046:	461c      	mov	r4, r3
d05fc048:	b1d3      	cbz	r3, d05fc080 <_write_r+0x44>
d05fc04a:	4d12      	ldr	r5, [pc, #72]	; (d05fc094 <_write_r+0x58>)
d05fc04c:	682e      	ldr	r6, [r5, #0]
d05fc04e:	b9ae      	cbnz	r6, d05fc07c <_write_r+0x40>
d05fc050:	4f11      	ldr	r7, [pc, #68]	; (d05fc098 <_write_r+0x5c>)
d05fc052:	2301      	movs	r3, #1
d05fc054:	4611      	mov	r1, r2
d05fc056:	4630      	mov	r0, r6
d05fc058:	602b      	str	r3, [r5, #0]
d05fc05a:	4622      	mov	r2, r4
d05fc05c:	7a3b      	ldrb	r3, [r7, #8]
d05fc05e:	f897 c009 	ldrb.w	ip, [r7, #9]
d05fc062:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d05fc066:	f897 c00a 	ldrb.w	ip, [r7, #10]
d05fc06a:	7aff      	ldrb	r7, [r7, #11]
d05fc06c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d05fc070:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d05fc074:	681b      	ldr	r3, [r3, #0]
d05fc076:	685b      	ldr	r3, [r3, #4]
d05fc078:	4798      	blx	r3
d05fc07a:	602e      	str	r6, [r5, #0]
d05fc07c:	4620      	mov	r0, r4
d05fc07e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05fc080:	2000      	movs	r0, #0
d05fc082:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05fc084:	f000 f868 	bl	d05fc158 <__errno>
d05fc088:	2209      	movs	r2, #9
d05fc08a:	4603      	mov	r3, r0
d05fc08c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05fc090:	601a      	str	r2, [r3, #0]
d05fc092:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05fc094:	d05fd60c 	.word	0xd05fd60c
d05fc098:	2001f000 	.word	0x2001f000

d05fc09c <_read>:
d05fc09c:	b508      	push	{r3, lr}
d05fc09e:	f000 f85b 	bl	d05fc158 <__errno>
d05fc0a2:	2258      	movs	r2, #88	; 0x58
d05fc0a4:	4603      	mov	r3, r0
d05fc0a6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05fc0aa:	601a      	str	r2, [r3, #0]
d05fc0ac:	bd08      	pop	{r3, pc}
d05fc0ae:	bf00      	nop

d05fc0b0 <_close>:
d05fc0b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05fc0b4:	4770      	bx	lr
d05fc0b6:	bf00      	nop

d05fc0b8 <_fstat>:
d05fc0b8:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d05fc0bc:	2000      	movs	r0, #0
d05fc0be:	604b      	str	r3, [r1, #4]
d05fc0c0:	4770      	bx	lr
d05fc0c2:	bf00      	nop

d05fc0c4 <_lseek>:
d05fc0c4:	2000      	movs	r0, #0
d05fc0c6:	4770      	bx	lr

d05fc0c8 <_sbrk_r>:
d05fc0c8:	4b0c      	ldr	r3, [pc, #48]	; (d05fc0fc <_sbrk_r+0x34>)
d05fc0ca:	4a0d      	ldr	r2, [pc, #52]	; (d05fc100 <_sbrk_r+0x38>)
d05fc0cc:	6818      	ldr	r0, [r3, #0]
d05fc0ce:	b510      	push	{r4, lr}
d05fc0d0:	b918      	cbnz	r0, d05fc0da <_sbrk_r+0x12>
d05fc0d2:	1dd0      	adds	r0, r2, #7
d05fc0d4:	f020 0007 	bic.w	r0, r0, #7
d05fc0d8:	6018      	str	r0, [r3, #0]
d05fc0da:	4401      	add	r1, r0
d05fc0dc:	4c09      	ldr	r4, [pc, #36]	; (d05fc104 <_sbrk_r+0x3c>)
d05fc0de:	42a1      	cmp	r1, r4
d05fc0e0:	d803      	bhi.n	d05fc0ea <_sbrk_r+0x22>
d05fc0e2:	4291      	cmp	r1, r2
d05fc0e4:	d301      	bcc.n	d05fc0ea <_sbrk_r+0x22>
d05fc0e6:	6019      	str	r1, [r3, #0]
d05fc0e8:	bd10      	pop	{r4, pc}
d05fc0ea:	f000 f835 	bl	d05fc158 <__errno>
d05fc0ee:	220c      	movs	r2, #12
d05fc0f0:	4603      	mov	r3, r0
d05fc0f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05fc0f6:	601a      	str	r2, [r3, #0]
d05fc0f8:	bd10      	pop	{r4, pc}
d05fc0fa:	bf00      	nop
d05fc0fc:	d05fd608 	.word	0xd05fd608
d05fc100:	d05ff628 	.word	0xd05ff628
d05fc104:	d0600000 	.word	0xd0600000

d05fc108 <_isatty>:
d05fc108:	2001      	movs	r0, #1
d05fc10a:	4770      	bx	lr

d05fc10c <main>:
d05fc10c:	b508      	push	{r3, lr}
d05fc10e:	480c      	ldr	r0, [pc, #48]	; (d05fc140 <main+0x34>)
d05fc110:	f000 f8cc 	bl	d05fc2ac <puts>
d05fc114:	2158      	movs	r1, #88	; 0x58
d05fc116:	480b      	ldr	r0, [pc, #44]	; (d05fc144 <main+0x38>)
d05fc118:	f000 f82c 	bl	d05fc174 <iprintf>
d05fc11c:	200a      	movs	r0, #10
d05fc11e:	f000 f841 	bl	d05fc1a4 <putchar>
d05fc122:	4809      	ldr	r0, [pc, #36]	; (d05fc148 <main+0x3c>)
d05fc124:	f000 f8c2 	bl	d05fc2ac <puts>
d05fc128:	4808      	ldr	r0, [pc, #32]	; (d05fc14c <main+0x40>)
d05fc12a:	f000 f8bf 	bl	d05fc2ac <puts>
d05fc12e:	4808      	ldr	r0, [pc, #32]	; (d05fc150 <main+0x44>)
d05fc130:	f000 f8bc 	bl	d05fc2ac <puts>
d05fc134:	4807      	ldr	r0, [pc, #28]	; (d05fc154 <main+0x48>)
d05fc136:	f000 f8b9 	bl	d05fc2ac <puts>
d05fc13a:	2000      	movs	r0, #0
d05fc13c:	bd08      	pop	{r3, pc}
d05fc13e:	bf00      	nop
d05fc140:	d05fd3dc 	.word	0xd05fd3dc
d05fc144:	d05fd3f4 	.word	0xd05fd3f4
d05fc148:	d05fd414 	.word	0xd05fd414
d05fc14c:	d05fd444 	.word	0xd05fd444
d05fc150:	d05fd470 	.word	0xd05fd470
d05fc154:	d05fd4e8 	.word	0xd05fd4e8

d05fc158 <__errno>:
d05fc158:	4b01      	ldr	r3, [pc, #4]	; (d05fc160 <__errno+0x8>)
d05fc15a:	6818      	ldr	r0, [r3, #0]
d05fc15c:	4770      	bx	lr
d05fc15e:	bf00      	nop
d05fc160:	d05fd5a4 	.word	0xd05fd5a4

d05fc164 <memset>:
d05fc164:	4402      	add	r2, r0
d05fc166:	4603      	mov	r3, r0
d05fc168:	4293      	cmp	r3, r2
d05fc16a:	d100      	bne.n	d05fc16e <memset+0xa>
d05fc16c:	4770      	bx	lr
d05fc16e:	f803 1b01 	strb.w	r1, [r3], #1
d05fc172:	e7f9      	b.n	d05fc168 <memset+0x4>

d05fc174 <iprintf>:
d05fc174:	b40f      	push	{r0, r1, r2, r3}
d05fc176:	4b0a      	ldr	r3, [pc, #40]	; (d05fc1a0 <iprintf+0x2c>)
d05fc178:	b513      	push	{r0, r1, r4, lr}
d05fc17a:	681c      	ldr	r4, [r3, #0]
d05fc17c:	b124      	cbz	r4, d05fc188 <iprintf+0x14>
d05fc17e:	69a3      	ldr	r3, [r4, #24]
d05fc180:	b913      	cbnz	r3, d05fc188 <iprintf+0x14>
d05fc182:	4620      	mov	r0, r4
d05fc184:	f000 fb42 	bl	d05fc80c <__sinit>
d05fc188:	ab05      	add	r3, sp, #20
d05fc18a:	9a04      	ldr	r2, [sp, #16]
d05fc18c:	68a1      	ldr	r1, [r4, #8]
d05fc18e:	9301      	str	r3, [sp, #4]
d05fc190:	4620      	mov	r0, r4
d05fc192:	f000 fd1b 	bl	d05fcbcc <_vfiprintf_r>
d05fc196:	b002      	add	sp, #8
d05fc198:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d05fc19c:	b004      	add	sp, #16
d05fc19e:	4770      	bx	lr
d05fc1a0:	d05fd5a4 	.word	0xd05fd5a4

d05fc1a4 <putchar>:
d05fc1a4:	4b09      	ldr	r3, [pc, #36]	; (d05fc1cc <putchar+0x28>)
d05fc1a6:	b513      	push	{r0, r1, r4, lr}
d05fc1a8:	681c      	ldr	r4, [r3, #0]
d05fc1aa:	4601      	mov	r1, r0
d05fc1ac:	b134      	cbz	r4, d05fc1bc <putchar+0x18>
d05fc1ae:	69a3      	ldr	r3, [r4, #24]
d05fc1b0:	b923      	cbnz	r3, d05fc1bc <putchar+0x18>
d05fc1b2:	9001      	str	r0, [sp, #4]
d05fc1b4:	4620      	mov	r0, r4
d05fc1b6:	f000 fb29 	bl	d05fc80c <__sinit>
d05fc1ba:	9901      	ldr	r1, [sp, #4]
d05fc1bc:	68a2      	ldr	r2, [r4, #8]
d05fc1be:	4620      	mov	r0, r4
d05fc1c0:	b002      	add	sp, #8
d05fc1c2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d05fc1c6:	f000 bfc5 	b.w	d05fd154 <_putc_r>
d05fc1ca:	bf00      	nop
d05fc1cc:	d05fd5a4 	.word	0xd05fd5a4

d05fc1d0 <_puts_r>:
d05fc1d0:	b570      	push	{r4, r5, r6, lr}
d05fc1d2:	460e      	mov	r6, r1
d05fc1d4:	4605      	mov	r5, r0
d05fc1d6:	b118      	cbz	r0, d05fc1e0 <_puts_r+0x10>
d05fc1d8:	6983      	ldr	r3, [r0, #24]
d05fc1da:	b90b      	cbnz	r3, d05fc1e0 <_puts_r+0x10>
d05fc1dc:	f000 fb16 	bl	d05fc80c <__sinit>
d05fc1e0:	69ab      	ldr	r3, [r5, #24]
d05fc1e2:	68ac      	ldr	r4, [r5, #8]
d05fc1e4:	b913      	cbnz	r3, d05fc1ec <_puts_r+0x1c>
d05fc1e6:	4628      	mov	r0, r5
d05fc1e8:	f000 fb10 	bl	d05fc80c <__sinit>
d05fc1ec:	4b2c      	ldr	r3, [pc, #176]	; (d05fc2a0 <_puts_r+0xd0>)
d05fc1ee:	429c      	cmp	r4, r3
d05fc1f0:	d120      	bne.n	d05fc234 <_puts_r+0x64>
d05fc1f2:	686c      	ldr	r4, [r5, #4]
d05fc1f4:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05fc1f6:	07db      	lsls	r3, r3, #31
d05fc1f8:	d405      	bmi.n	d05fc206 <_puts_r+0x36>
d05fc1fa:	89a3      	ldrh	r3, [r4, #12]
d05fc1fc:	0598      	lsls	r0, r3, #22
d05fc1fe:	d402      	bmi.n	d05fc206 <_puts_r+0x36>
d05fc200:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05fc202:	f000 fba1 	bl	d05fc948 <__retarget_lock_acquire_recursive>
d05fc206:	89a3      	ldrh	r3, [r4, #12]
d05fc208:	0719      	lsls	r1, r3, #28
d05fc20a:	d51d      	bpl.n	d05fc248 <_puts_r+0x78>
d05fc20c:	6923      	ldr	r3, [r4, #16]
d05fc20e:	b1db      	cbz	r3, d05fc248 <_puts_r+0x78>
d05fc210:	3e01      	subs	r6, #1
d05fc212:	68a3      	ldr	r3, [r4, #8]
d05fc214:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d05fc218:	3b01      	subs	r3, #1
d05fc21a:	60a3      	str	r3, [r4, #8]
d05fc21c:	bb39      	cbnz	r1, d05fc26e <_puts_r+0x9e>
d05fc21e:	2b00      	cmp	r3, #0
d05fc220:	da38      	bge.n	d05fc294 <_puts_r+0xc4>
d05fc222:	4622      	mov	r2, r4
d05fc224:	210a      	movs	r1, #10
d05fc226:	4628      	mov	r0, r5
d05fc228:	f000 f916 	bl	d05fc458 <__swbuf_r>
d05fc22c:	3001      	adds	r0, #1
d05fc22e:	d011      	beq.n	d05fc254 <_puts_r+0x84>
d05fc230:	250a      	movs	r5, #10
d05fc232:	e011      	b.n	d05fc258 <_puts_r+0x88>
d05fc234:	4b1b      	ldr	r3, [pc, #108]	; (d05fc2a4 <_puts_r+0xd4>)
d05fc236:	429c      	cmp	r4, r3
d05fc238:	d101      	bne.n	d05fc23e <_puts_r+0x6e>
d05fc23a:	68ac      	ldr	r4, [r5, #8]
d05fc23c:	e7da      	b.n	d05fc1f4 <_puts_r+0x24>
d05fc23e:	4b1a      	ldr	r3, [pc, #104]	; (d05fc2a8 <_puts_r+0xd8>)
d05fc240:	429c      	cmp	r4, r3
d05fc242:	bf08      	it	eq
d05fc244:	68ec      	ldreq	r4, [r5, #12]
d05fc246:	e7d5      	b.n	d05fc1f4 <_puts_r+0x24>
d05fc248:	4621      	mov	r1, r4
d05fc24a:	4628      	mov	r0, r5
d05fc24c:	f000 f956 	bl	d05fc4fc <__swsetup_r>
d05fc250:	2800      	cmp	r0, #0
d05fc252:	d0dd      	beq.n	d05fc210 <_puts_r+0x40>
d05fc254:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05fc258:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05fc25a:	07da      	lsls	r2, r3, #31
d05fc25c:	d405      	bmi.n	d05fc26a <_puts_r+0x9a>
d05fc25e:	89a3      	ldrh	r3, [r4, #12]
d05fc260:	059b      	lsls	r3, r3, #22
d05fc262:	d402      	bmi.n	d05fc26a <_puts_r+0x9a>
d05fc264:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05fc266:	f000 fb70 	bl	d05fc94a <__retarget_lock_release_recursive>
d05fc26a:	4628      	mov	r0, r5
d05fc26c:	bd70      	pop	{r4, r5, r6, pc}
d05fc26e:	2b00      	cmp	r3, #0
d05fc270:	da04      	bge.n	d05fc27c <_puts_r+0xac>
d05fc272:	69a2      	ldr	r2, [r4, #24]
d05fc274:	429a      	cmp	r2, r3
d05fc276:	dc06      	bgt.n	d05fc286 <_puts_r+0xb6>
d05fc278:	290a      	cmp	r1, #10
d05fc27a:	d004      	beq.n	d05fc286 <_puts_r+0xb6>
d05fc27c:	6823      	ldr	r3, [r4, #0]
d05fc27e:	1c5a      	adds	r2, r3, #1
d05fc280:	6022      	str	r2, [r4, #0]
d05fc282:	7019      	strb	r1, [r3, #0]
d05fc284:	e7c5      	b.n	d05fc212 <_puts_r+0x42>
d05fc286:	4622      	mov	r2, r4
d05fc288:	4628      	mov	r0, r5
d05fc28a:	f000 f8e5 	bl	d05fc458 <__swbuf_r>
d05fc28e:	3001      	adds	r0, #1
d05fc290:	d1bf      	bne.n	d05fc212 <_puts_r+0x42>
d05fc292:	e7df      	b.n	d05fc254 <_puts_r+0x84>
d05fc294:	6823      	ldr	r3, [r4, #0]
d05fc296:	250a      	movs	r5, #10
d05fc298:	1c5a      	adds	r2, r3, #1
d05fc29a:	6022      	str	r2, [r4, #0]
d05fc29c:	701d      	strb	r5, [r3, #0]
d05fc29e:	e7db      	b.n	d05fc258 <_puts_r+0x88>
d05fc2a0:	d05fd528 	.word	0xd05fd528
d05fc2a4:	d05fd548 	.word	0xd05fd548
d05fc2a8:	d05fd508 	.word	0xd05fd508

d05fc2ac <puts>:
d05fc2ac:	4b02      	ldr	r3, [pc, #8]	; (d05fc2b8 <puts+0xc>)
d05fc2ae:	4601      	mov	r1, r0
d05fc2b0:	6818      	ldr	r0, [r3, #0]
d05fc2b2:	f7ff bf8d 	b.w	d05fc1d0 <_puts_r>
d05fc2b6:	bf00      	nop
d05fc2b8:	d05fd5a4 	.word	0xd05fd5a4

d05fc2bc <setbuf>:
d05fc2bc:	2900      	cmp	r1, #0
d05fc2be:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05fc2c2:	bf0c      	ite	eq
d05fc2c4:	2202      	moveq	r2, #2
d05fc2c6:	2200      	movne	r2, #0
d05fc2c8:	f000 b800 	b.w	d05fc2cc <setvbuf>

d05fc2cc <setvbuf>:
d05fc2cc:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d05fc2d0:	461d      	mov	r5, r3
d05fc2d2:	4b5d      	ldr	r3, [pc, #372]	; (d05fc448 <setvbuf+0x17c>)
d05fc2d4:	681f      	ldr	r7, [r3, #0]
d05fc2d6:	4604      	mov	r4, r0
d05fc2d8:	460e      	mov	r6, r1
d05fc2da:	4690      	mov	r8, r2
d05fc2dc:	b127      	cbz	r7, d05fc2e8 <setvbuf+0x1c>
d05fc2de:	69bb      	ldr	r3, [r7, #24]
d05fc2e0:	b913      	cbnz	r3, d05fc2e8 <setvbuf+0x1c>
d05fc2e2:	4638      	mov	r0, r7
d05fc2e4:	f000 fa92 	bl	d05fc80c <__sinit>
d05fc2e8:	4b58      	ldr	r3, [pc, #352]	; (d05fc44c <setvbuf+0x180>)
d05fc2ea:	429c      	cmp	r4, r3
d05fc2ec:	d167      	bne.n	d05fc3be <setvbuf+0xf2>
d05fc2ee:	687c      	ldr	r4, [r7, #4]
d05fc2f0:	f1b8 0f02 	cmp.w	r8, #2
d05fc2f4:	d006      	beq.n	d05fc304 <setvbuf+0x38>
d05fc2f6:	f1b8 0f01 	cmp.w	r8, #1
d05fc2fa:	f200 809f 	bhi.w	d05fc43c <setvbuf+0x170>
d05fc2fe:	2d00      	cmp	r5, #0
d05fc300:	f2c0 809c 	blt.w	d05fc43c <setvbuf+0x170>
d05fc304:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05fc306:	07db      	lsls	r3, r3, #31
d05fc308:	d405      	bmi.n	d05fc316 <setvbuf+0x4a>
d05fc30a:	89a3      	ldrh	r3, [r4, #12]
d05fc30c:	0598      	lsls	r0, r3, #22
d05fc30e:	d402      	bmi.n	d05fc316 <setvbuf+0x4a>
d05fc310:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05fc312:	f000 fb19 	bl	d05fc948 <__retarget_lock_acquire_recursive>
d05fc316:	4621      	mov	r1, r4
d05fc318:	4638      	mov	r0, r7
d05fc31a:	f000 f9e3 	bl	d05fc6e4 <_fflush_r>
d05fc31e:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05fc320:	b141      	cbz	r1, d05fc334 <setvbuf+0x68>
d05fc322:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05fc326:	4299      	cmp	r1, r3
d05fc328:	d002      	beq.n	d05fc330 <setvbuf+0x64>
d05fc32a:	4638      	mov	r0, r7
d05fc32c:	f000 fb7a 	bl	d05fca24 <_free_r>
d05fc330:	2300      	movs	r3, #0
d05fc332:	6363      	str	r3, [r4, #52]	; 0x34
d05fc334:	2300      	movs	r3, #0
d05fc336:	61a3      	str	r3, [r4, #24]
d05fc338:	6063      	str	r3, [r4, #4]
d05fc33a:	89a3      	ldrh	r3, [r4, #12]
d05fc33c:	0619      	lsls	r1, r3, #24
d05fc33e:	d503      	bpl.n	d05fc348 <setvbuf+0x7c>
d05fc340:	6921      	ldr	r1, [r4, #16]
d05fc342:	4638      	mov	r0, r7
d05fc344:	f000 fb6e 	bl	d05fca24 <_free_r>
d05fc348:	89a3      	ldrh	r3, [r4, #12]
d05fc34a:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d05fc34e:	f023 0303 	bic.w	r3, r3, #3
d05fc352:	f1b8 0f02 	cmp.w	r8, #2
d05fc356:	81a3      	strh	r3, [r4, #12]
d05fc358:	d06c      	beq.n	d05fc434 <setvbuf+0x168>
d05fc35a:	ab01      	add	r3, sp, #4
d05fc35c:	466a      	mov	r2, sp
d05fc35e:	4621      	mov	r1, r4
d05fc360:	4638      	mov	r0, r7
d05fc362:	f000 faf3 	bl	d05fc94c <__swhatbuf_r>
d05fc366:	89a3      	ldrh	r3, [r4, #12]
d05fc368:	4318      	orrs	r0, r3
d05fc36a:	81a0      	strh	r0, [r4, #12]
d05fc36c:	2d00      	cmp	r5, #0
d05fc36e:	d130      	bne.n	d05fc3d2 <setvbuf+0x106>
d05fc370:	9d00      	ldr	r5, [sp, #0]
d05fc372:	4628      	mov	r0, r5
d05fc374:	f000 fb4e 	bl	d05fca14 <malloc>
d05fc378:	4606      	mov	r6, r0
d05fc37a:	2800      	cmp	r0, #0
d05fc37c:	d155      	bne.n	d05fc42a <setvbuf+0x15e>
d05fc37e:	f8dd 9000 	ldr.w	r9, [sp]
d05fc382:	45a9      	cmp	r9, r5
d05fc384:	d14a      	bne.n	d05fc41c <setvbuf+0x150>
d05fc386:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05fc38a:	2200      	movs	r2, #0
d05fc38c:	60a2      	str	r2, [r4, #8]
d05fc38e:	f104 0247 	add.w	r2, r4, #71	; 0x47
d05fc392:	6022      	str	r2, [r4, #0]
d05fc394:	6122      	str	r2, [r4, #16]
d05fc396:	2201      	movs	r2, #1
d05fc398:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05fc39c:	6162      	str	r2, [r4, #20]
d05fc39e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05fc3a0:	f043 0302 	orr.w	r3, r3, #2
d05fc3a4:	07d2      	lsls	r2, r2, #31
d05fc3a6:	81a3      	strh	r3, [r4, #12]
d05fc3a8:	d405      	bmi.n	d05fc3b6 <setvbuf+0xea>
d05fc3aa:	f413 7f00 	tst.w	r3, #512	; 0x200
d05fc3ae:	d102      	bne.n	d05fc3b6 <setvbuf+0xea>
d05fc3b0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05fc3b2:	f000 faca 	bl	d05fc94a <__retarget_lock_release_recursive>
d05fc3b6:	4628      	mov	r0, r5
d05fc3b8:	b003      	add	sp, #12
d05fc3ba:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05fc3be:	4b24      	ldr	r3, [pc, #144]	; (d05fc450 <setvbuf+0x184>)
d05fc3c0:	429c      	cmp	r4, r3
d05fc3c2:	d101      	bne.n	d05fc3c8 <setvbuf+0xfc>
d05fc3c4:	68bc      	ldr	r4, [r7, #8]
d05fc3c6:	e793      	b.n	d05fc2f0 <setvbuf+0x24>
d05fc3c8:	4b22      	ldr	r3, [pc, #136]	; (d05fc454 <setvbuf+0x188>)
d05fc3ca:	429c      	cmp	r4, r3
d05fc3cc:	bf08      	it	eq
d05fc3ce:	68fc      	ldreq	r4, [r7, #12]
d05fc3d0:	e78e      	b.n	d05fc2f0 <setvbuf+0x24>
d05fc3d2:	2e00      	cmp	r6, #0
d05fc3d4:	d0cd      	beq.n	d05fc372 <setvbuf+0xa6>
d05fc3d6:	69bb      	ldr	r3, [r7, #24]
d05fc3d8:	b913      	cbnz	r3, d05fc3e0 <setvbuf+0x114>
d05fc3da:	4638      	mov	r0, r7
d05fc3dc:	f000 fa16 	bl	d05fc80c <__sinit>
d05fc3e0:	f1b8 0f01 	cmp.w	r8, #1
d05fc3e4:	bf08      	it	eq
d05fc3e6:	89a3      	ldrheq	r3, [r4, #12]
d05fc3e8:	6026      	str	r6, [r4, #0]
d05fc3ea:	bf04      	itt	eq
d05fc3ec:	f043 0301 	orreq.w	r3, r3, #1
d05fc3f0:	81a3      	strheq	r3, [r4, #12]
d05fc3f2:	89a2      	ldrh	r2, [r4, #12]
d05fc3f4:	f012 0308 	ands.w	r3, r2, #8
d05fc3f8:	e9c4 6504 	strd	r6, r5, [r4, #16]
d05fc3fc:	d01c      	beq.n	d05fc438 <setvbuf+0x16c>
d05fc3fe:	07d3      	lsls	r3, r2, #31
d05fc400:	bf41      	itttt	mi
d05fc402:	2300      	movmi	r3, #0
d05fc404:	426d      	negmi	r5, r5
d05fc406:	60a3      	strmi	r3, [r4, #8]
d05fc408:	61a5      	strmi	r5, [r4, #24]
d05fc40a:	bf58      	it	pl
d05fc40c:	60a5      	strpl	r5, [r4, #8]
d05fc40e:	6e65      	ldr	r5, [r4, #100]	; 0x64
d05fc410:	f015 0501 	ands.w	r5, r5, #1
d05fc414:	d115      	bne.n	d05fc442 <setvbuf+0x176>
d05fc416:	f412 7f00 	tst.w	r2, #512	; 0x200
d05fc41a:	e7c8      	b.n	d05fc3ae <setvbuf+0xe2>
d05fc41c:	4648      	mov	r0, r9
d05fc41e:	f000 faf9 	bl	d05fca14 <malloc>
d05fc422:	4606      	mov	r6, r0
d05fc424:	2800      	cmp	r0, #0
d05fc426:	d0ae      	beq.n	d05fc386 <setvbuf+0xba>
d05fc428:	464d      	mov	r5, r9
d05fc42a:	89a3      	ldrh	r3, [r4, #12]
d05fc42c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05fc430:	81a3      	strh	r3, [r4, #12]
d05fc432:	e7d0      	b.n	d05fc3d6 <setvbuf+0x10a>
d05fc434:	2500      	movs	r5, #0
d05fc436:	e7a8      	b.n	d05fc38a <setvbuf+0xbe>
d05fc438:	60a3      	str	r3, [r4, #8]
d05fc43a:	e7e8      	b.n	d05fc40e <setvbuf+0x142>
d05fc43c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05fc440:	e7b9      	b.n	d05fc3b6 <setvbuf+0xea>
d05fc442:	2500      	movs	r5, #0
d05fc444:	e7b7      	b.n	d05fc3b6 <setvbuf+0xea>
d05fc446:	bf00      	nop
d05fc448:	d05fd5a4 	.word	0xd05fd5a4
d05fc44c:	d05fd528 	.word	0xd05fd528
d05fc450:	d05fd548 	.word	0xd05fd548
d05fc454:	d05fd508 	.word	0xd05fd508

d05fc458 <__swbuf_r>:
d05fc458:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05fc45a:	460e      	mov	r6, r1
d05fc45c:	4614      	mov	r4, r2
d05fc45e:	4605      	mov	r5, r0
d05fc460:	b118      	cbz	r0, d05fc46a <__swbuf_r+0x12>
d05fc462:	6983      	ldr	r3, [r0, #24]
d05fc464:	b90b      	cbnz	r3, d05fc46a <__swbuf_r+0x12>
d05fc466:	f000 f9d1 	bl	d05fc80c <__sinit>
d05fc46a:	4b21      	ldr	r3, [pc, #132]	; (d05fc4f0 <__swbuf_r+0x98>)
d05fc46c:	429c      	cmp	r4, r3
d05fc46e:	d12b      	bne.n	d05fc4c8 <__swbuf_r+0x70>
d05fc470:	686c      	ldr	r4, [r5, #4]
d05fc472:	69a3      	ldr	r3, [r4, #24]
d05fc474:	60a3      	str	r3, [r4, #8]
d05fc476:	89a3      	ldrh	r3, [r4, #12]
d05fc478:	071a      	lsls	r2, r3, #28
d05fc47a:	d52f      	bpl.n	d05fc4dc <__swbuf_r+0x84>
d05fc47c:	6923      	ldr	r3, [r4, #16]
d05fc47e:	b36b      	cbz	r3, d05fc4dc <__swbuf_r+0x84>
d05fc480:	6923      	ldr	r3, [r4, #16]
d05fc482:	6820      	ldr	r0, [r4, #0]
d05fc484:	1ac0      	subs	r0, r0, r3
d05fc486:	6963      	ldr	r3, [r4, #20]
d05fc488:	b2f6      	uxtb	r6, r6
d05fc48a:	4283      	cmp	r3, r0
d05fc48c:	4637      	mov	r7, r6
d05fc48e:	dc04      	bgt.n	d05fc49a <__swbuf_r+0x42>
d05fc490:	4621      	mov	r1, r4
d05fc492:	4628      	mov	r0, r5
d05fc494:	f000 f926 	bl	d05fc6e4 <_fflush_r>
d05fc498:	bb30      	cbnz	r0, d05fc4e8 <__swbuf_r+0x90>
d05fc49a:	68a3      	ldr	r3, [r4, #8]
d05fc49c:	3b01      	subs	r3, #1
d05fc49e:	60a3      	str	r3, [r4, #8]
d05fc4a0:	6823      	ldr	r3, [r4, #0]
d05fc4a2:	1c5a      	adds	r2, r3, #1
d05fc4a4:	6022      	str	r2, [r4, #0]
d05fc4a6:	701e      	strb	r6, [r3, #0]
d05fc4a8:	6963      	ldr	r3, [r4, #20]
d05fc4aa:	3001      	adds	r0, #1
d05fc4ac:	4283      	cmp	r3, r0
d05fc4ae:	d004      	beq.n	d05fc4ba <__swbuf_r+0x62>
d05fc4b0:	89a3      	ldrh	r3, [r4, #12]
d05fc4b2:	07db      	lsls	r3, r3, #31
d05fc4b4:	d506      	bpl.n	d05fc4c4 <__swbuf_r+0x6c>
d05fc4b6:	2e0a      	cmp	r6, #10
d05fc4b8:	d104      	bne.n	d05fc4c4 <__swbuf_r+0x6c>
d05fc4ba:	4621      	mov	r1, r4
d05fc4bc:	4628      	mov	r0, r5
d05fc4be:	f000 f911 	bl	d05fc6e4 <_fflush_r>
d05fc4c2:	b988      	cbnz	r0, d05fc4e8 <__swbuf_r+0x90>
d05fc4c4:	4638      	mov	r0, r7
d05fc4c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05fc4c8:	4b0a      	ldr	r3, [pc, #40]	; (d05fc4f4 <__swbuf_r+0x9c>)
d05fc4ca:	429c      	cmp	r4, r3
d05fc4cc:	d101      	bne.n	d05fc4d2 <__swbuf_r+0x7a>
d05fc4ce:	68ac      	ldr	r4, [r5, #8]
d05fc4d0:	e7cf      	b.n	d05fc472 <__swbuf_r+0x1a>
d05fc4d2:	4b09      	ldr	r3, [pc, #36]	; (d05fc4f8 <__swbuf_r+0xa0>)
d05fc4d4:	429c      	cmp	r4, r3
d05fc4d6:	bf08      	it	eq
d05fc4d8:	68ec      	ldreq	r4, [r5, #12]
d05fc4da:	e7ca      	b.n	d05fc472 <__swbuf_r+0x1a>
d05fc4dc:	4621      	mov	r1, r4
d05fc4de:	4628      	mov	r0, r5
d05fc4e0:	f000 f80c 	bl	d05fc4fc <__swsetup_r>
d05fc4e4:	2800      	cmp	r0, #0
d05fc4e6:	d0cb      	beq.n	d05fc480 <__swbuf_r+0x28>
d05fc4e8:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d05fc4ec:	e7ea      	b.n	d05fc4c4 <__swbuf_r+0x6c>
d05fc4ee:	bf00      	nop
d05fc4f0:	d05fd528 	.word	0xd05fd528
d05fc4f4:	d05fd548 	.word	0xd05fd548
d05fc4f8:	d05fd508 	.word	0xd05fd508

d05fc4fc <__swsetup_r>:
d05fc4fc:	4b32      	ldr	r3, [pc, #200]	; (d05fc5c8 <__swsetup_r+0xcc>)
d05fc4fe:	b570      	push	{r4, r5, r6, lr}
d05fc500:	681d      	ldr	r5, [r3, #0]
d05fc502:	4606      	mov	r6, r0
d05fc504:	460c      	mov	r4, r1
d05fc506:	b125      	cbz	r5, d05fc512 <__swsetup_r+0x16>
d05fc508:	69ab      	ldr	r3, [r5, #24]
d05fc50a:	b913      	cbnz	r3, d05fc512 <__swsetup_r+0x16>
d05fc50c:	4628      	mov	r0, r5
d05fc50e:	f000 f97d 	bl	d05fc80c <__sinit>
d05fc512:	4b2e      	ldr	r3, [pc, #184]	; (d05fc5cc <__swsetup_r+0xd0>)
d05fc514:	429c      	cmp	r4, r3
d05fc516:	d10f      	bne.n	d05fc538 <__swsetup_r+0x3c>
d05fc518:	686c      	ldr	r4, [r5, #4]
d05fc51a:	89a3      	ldrh	r3, [r4, #12]
d05fc51c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d05fc520:	0719      	lsls	r1, r3, #28
d05fc522:	d42c      	bmi.n	d05fc57e <__swsetup_r+0x82>
d05fc524:	06dd      	lsls	r5, r3, #27
d05fc526:	d411      	bmi.n	d05fc54c <__swsetup_r+0x50>
d05fc528:	2309      	movs	r3, #9
d05fc52a:	6033      	str	r3, [r6, #0]
d05fc52c:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d05fc530:	81a3      	strh	r3, [r4, #12]
d05fc532:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05fc536:	e03e      	b.n	d05fc5b6 <__swsetup_r+0xba>
d05fc538:	4b25      	ldr	r3, [pc, #148]	; (d05fc5d0 <__swsetup_r+0xd4>)
d05fc53a:	429c      	cmp	r4, r3
d05fc53c:	d101      	bne.n	d05fc542 <__swsetup_r+0x46>
d05fc53e:	68ac      	ldr	r4, [r5, #8]
d05fc540:	e7eb      	b.n	d05fc51a <__swsetup_r+0x1e>
d05fc542:	4b24      	ldr	r3, [pc, #144]	; (d05fc5d4 <__swsetup_r+0xd8>)
d05fc544:	429c      	cmp	r4, r3
d05fc546:	bf08      	it	eq
d05fc548:	68ec      	ldreq	r4, [r5, #12]
d05fc54a:	e7e6      	b.n	d05fc51a <__swsetup_r+0x1e>
d05fc54c:	0758      	lsls	r0, r3, #29
d05fc54e:	d512      	bpl.n	d05fc576 <__swsetup_r+0x7a>
d05fc550:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05fc552:	b141      	cbz	r1, d05fc566 <__swsetup_r+0x6a>
d05fc554:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05fc558:	4299      	cmp	r1, r3
d05fc55a:	d002      	beq.n	d05fc562 <__swsetup_r+0x66>
d05fc55c:	4630      	mov	r0, r6
d05fc55e:	f000 fa61 	bl	d05fca24 <_free_r>
d05fc562:	2300      	movs	r3, #0
d05fc564:	6363      	str	r3, [r4, #52]	; 0x34
d05fc566:	89a3      	ldrh	r3, [r4, #12]
d05fc568:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d05fc56c:	81a3      	strh	r3, [r4, #12]
d05fc56e:	2300      	movs	r3, #0
d05fc570:	6063      	str	r3, [r4, #4]
d05fc572:	6923      	ldr	r3, [r4, #16]
d05fc574:	6023      	str	r3, [r4, #0]
d05fc576:	89a3      	ldrh	r3, [r4, #12]
d05fc578:	f043 0308 	orr.w	r3, r3, #8
d05fc57c:	81a3      	strh	r3, [r4, #12]
d05fc57e:	6923      	ldr	r3, [r4, #16]
d05fc580:	b94b      	cbnz	r3, d05fc596 <__swsetup_r+0x9a>
d05fc582:	89a3      	ldrh	r3, [r4, #12]
d05fc584:	f403 7320 	and.w	r3, r3, #640	; 0x280
d05fc588:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d05fc58c:	d003      	beq.n	d05fc596 <__swsetup_r+0x9a>
d05fc58e:	4621      	mov	r1, r4
d05fc590:	4630      	mov	r0, r6
d05fc592:	f000 f9ff 	bl	d05fc994 <__smakebuf_r>
d05fc596:	89a0      	ldrh	r0, [r4, #12]
d05fc598:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d05fc59c:	f010 0301 	ands.w	r3, r0, #1
d05fc5a0:	d00a      	beq.n	d05fc5b8 <__swsetup_r+0xbc>
d05fc5a2:	2300      	movs	r3, #0
d05fc5a4:	60a3      	str	r3, [r4, #8]
d05fc5a6:	6963      	ldr	r3, [r4, #20]
d05fc5a8:	425b      	negs	r3, r3
d05fc5aa:	61a3      	str	r3, [r4, #24]
d05fc5ac:	6923      	ldr	r3, [r4, #16]
d05fc5ae:	b943      	cbnz	r3, d05fc5c2 <__swsetup_r+0xc6>
d05fc5b0:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d05fc5b4:	d1ba      	bne.n	d05fc52c <__swsetup_r+0x30>
d05fc5b6:	bd70      	pop	{r4, r5, r6, pc}
d05fc5b8:	0781      	lsls	r1, r0, #30
d05fc5ba:	bf58      	it	pl
d05fc5bc:	6963      	ldrpl	r3, [r4, #20]
d05fc5be:	60a3      	str	r3, [r4, #8]
d05fc5c0:	e7f4      	b.n	d05fc5ac <__swsetup_r+0xb0>
d05fc5c2:	2000      	movs	r0, #0
d05fc5c4:	e7f7      	b.n	d05fc5b6 <__swsetup_r+0xba>
d05fc5c6:	bf00      	nop
d05fc5c8:	d05fd5a4 	.word	0xd05fd5a4
d05fc5cc:	d05fd528 	.word	0xd05fd528
d05fc5d0:	d05fd548 	.word	0xd05fd548
d05fc5d4:	d05fd508 	.word	0xd05fd508

d05fc5d8 <__sflush_r>:
d05fc5d8:	898a      	ldrh	r2, [r1, #12]
d05fc5da:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05fc5de:	4605      	mov	r5, r0
d05fc5e0:	0710      	lsls	r0, r2, #28
d05fc5e2:	460c      	mov	r4, r1
d05fc5e4:	d458      	bmi.n	d05fc698 <__sflush_r+0xc0>
d05fc5e6:	684b      	ldr	r3, [r1, #4]
d05fc5e8:	2b00      	cmp	r3, #0
d05fc5ea:	dc05      	bgt.n	d05fc5f8 <__sflush_r+0x20>
d05fc5ec:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d05fc5ee:	2b00      	cmp	r3, #0
d05fc5f0:	dc02      	bgt.n	d05fc5f8 <__sflush_r+0x20>
d05fc5f2:	2000      	movs	r0, #0
d05fc5f4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d05fc5f8:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05fc5fa:	2e00      	cmp	r6, #0
d05fc5fc:	d0f9      	beq.n	d05fc5f2 <__sflush_r+0x1a>
d05fc5fe:	2300      	movs	r3, #0
d05fc600:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d05fc604:	682f      	ldr	r7, [r5, #0]
d05fc606:	602b      	str	r3, [r5, #0]
d05fc608:	d032      	beq.n	d05fc670 <__sflush_r+0x98>
d05fc60a:	6d60      	ldr	r0, [r4, #84]	; 0x54
d05fc60c:	89a3      	ldrh	r3, [r4, #12]
d05fc60e:	075a      	lsls	r2, r3, #29
d05fc610:	d505      	bpl.n	d05fc61e <__sflush_r+0x46>
d05fc612:	6863      	ldr	r3, [r4, #4]
d05fc614:	1ac0      	subs	r0, r0, r3
d05fc616:	6b63      	ldr	r3, [r4, #52]	; 0x34
d05fc618:	b10b      	cbz	r3, d05fc61e <__sflush_r+0x46>
d05fc61a:	6c23      	ldr	r3, [r4, #64]	; 0x40
d05fc61c:	1ac0      	subs	r0, r0, r3
d05fc61e:	2300      	movs	r3, #0
d05fc620:	4602      	mov	r2, r0
d05fc622:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05fc624:	6a21      	ldr	r1, [r4, #32]
d05fc626:	4628      	mov	r0, r5
d05fc628:	47b0      	blx	r6
d05fc62a:	1c43      	adds	r3, r0, #1
d05fc62c:	89a3      	ldrh	r3, [r4, #12]
d05fc62e:	d106      	bne.n	d05fc63e <__sflush_r+0x66>
d05fc630:	6829      	ldr	r1, [r5, #0]
d05fc632:	291d      	cmp	r1, #29
d05fc634:	d82c      	bhi.n	d05fc690 <__sflush_r+0xb8>
d05fc636:	4a2a      	ldr	r2, [pc, #168]	; (d05fc6e0 <__sflush_r+0x108>)
d05fc638:	40ca      	lsrs	r2, r1
d05fc63a:	07d6      	lsls	r6, r2, #31
d05fc63c:	d528      	bpl.n	d05fc690 <__sflush_r+0xb8>
d05fc63e:	2200      	movs	r2, #0
d05fc640:	6062      	str	r2, [r4, #4]
d05fc642:	04d9      	lsls	r1, r3, #19
d05fc644:	6922      	ldr	r2, [r4, #16]
d05fc646:	6022      	str	r2, [r4, #0]
d05fc648:	d504      	bpl.n	d05fc654 <__sflush_r+0x7c>
d05fc64a:	1c42      	adds	r2, r0, #1
d05fc64c:	d101      	bne.n	d05fc652 <__sflush_r+0x7a>
d05fc64e:	682b      	ldr	r3, [r5, #0]
d05fc650:	b903      	cbnz	r3, d05fc654 <__sflush_r+0x7c>
d05fc652:	6560      	str	r0, [r4, #84]	; 0x54
d05fc654:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05fc656:	602f      	str	r7, [r5, #0]
d05fc658:	2900      	cmp	r1, #0
d05fc65a:	d0ca      	beq.n	d05fc5f2 <__sflush_r+0x1a>
d05fc65c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05fc660:	4299      	cmp	r1, r3
d05fc662:	d002      	beq.n	d05fc66a <__sflush_r+0x92>
d05fc664:	4628      	mov	r0, r5
d05fc666:	f000 f9dd 	bl	d05fca24 <_free_r>
d05fc66a:	2000      	movs	r0, #0
d05fc66c:	6360      	str	r0, [r4, #52]	; 0x34
d05fc66e:	e7c1      	b.n	d05fc5f4 <__sflush_r+0x1c>
d05fc670:	6a21      	ldr	r1, [r4, #32]
d05fc672:	2301      	movs	r3, #1
d05fc674:	4628      	mov	r0, r5
d05fc676:	47b0      	blx	r6
d05fc678:	1c41      	adds	r1, r0, #1
d05fc67a:	d1c7      	bne.n	d05fc60c <__sflush_r+0x34>
d05fc67c:	682b      	ldr	r3, [r5, #0]
d05fc67e:	2b00      	cmp	r3, #0
d05fc680:	d0c4      	beq.n	d05fc60c <__sflush_r+0x34>
d05fc682:	2b1d      	cmp	r3, #29
d05fc684:	d001      	beq.n	d05fc68a <__sflush_r+0xb2>
d05fc686:	2b16      	cmp	r3, #22
d05fc688:	d101      	bne.n	d05fc68e <__sflush_r+0xb6>
d05fc68a:	602f      	str	r7, [r5, #0]
d05fc68c:	e7b1      	b.n	d05fc5f2 <__sflush_r+0x1a>
d05fc68e:	89a3      	ldrh	r3, [r4, #12]
d05fc690:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05fc694:	81a3      	strh	r3, [r4, #12]
d05fc696:	e7ad      	b.n	d05fc5f4 <__sflush_r+0x1c>
d05fc698:	690f      	ldr	r7, [r1, #16]
d05fc69a:	2f00      	cmp	r7, #0
d05fc69c:	d0a9      	beq.n	d05fc5f2 <__sflush_r+0x1a>
d05fc69e:	0793      	lsls	r3, r2, #30
d05fc6a0:	680e      	ldr	r6, [r1, #0]
d05fc6a2:	bf08      	it	eq
d05fc6a4:	694b      	ldreq	r3, [r1, #20]
d05fc6a6:	600f      	str	r7, [r1, #0]
d05fc6a8:	bf18      	it	ne
d05fc6aa:	2300      	movne	r3, #0
d05fc6ac:	eba6 0807 	sub.w	r8, r6, r7
d05fc6b0:	608b      	str	r3, [r1, #8]
d05fc6b2:	f1b8 0f00 	cmp.w	r8, #0
d05fc6b6:	dd9c      	ble.n	d05fc5f2 <__sflush_r+0x1a>
d05fc6b8:	6a21      	ldr	r1, [r4, #32]
d05fc6ba:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d05fc6bc:	4643      	mov	r3, r8
d05fc6be:	463a      	mov	r2, r7
d05fc6c0:	4628      	mov	r0, r5
d05fc6c2:	47b0      	blx	r6
d05fc6c4:	2800      	cmp	r0, #0
d05fc6c6:	dc06      	bgt.n	d05fc6d6 <__sflush_r+0xfe>
d05fc6c8:	89a3      	ldrh	r3, [r4, #12]
d05fc6ca:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05fc6ce:	81a3      	strh	r3, [r4, #12]
d05fc6d0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05fc6d4:	e78e      	b.n	d05fc5f4 <__sflush_r+0x1c>
d05fc6d6:	4407      	add	r7, r0
d05fc6d8:	eba8 0800 	sub.w	r8, r8, r0
d05fc6dc:	e7e9      	b.n	d05fc6b2 <__sflush_r+0xda>
d05fc6de:	bf00      	nop
d05fc6e0:	20400001 	.word	0x20400001

d05fc6e4 <_fflush_r>:
d05fc6e4:	b538      	push	{r3, r4, r5, lr}
d05fc6e6:	690b      	ldr	r3, [r1, #16]
d05fc6e8:	4605      	mov	r5, r0
d05fc6ea:	460c      	mov	r4, r1
d05fc6ec:	b913      	cbnz	r3, d05fc6f4 <_fflush_r+0x10>
d05fc6ee:	2500      	movs	r5, #0
d05fc6f0:	4628      	mov	r0, r5
d05fc6f2:	bd38      	pop	{r3, r4, r5, pc}
d05fc6f4:	b118      	cbz	r0, d05fc6fe <_fflush_r+0x1a>
d05fc6f6:	6983      	ldr	r3, [r0, #24]
d05fc6f8:	b90b      	cbnz	r3, d05fc6fe <_fflush_r+0x1a>
d05fc6fa:	f000 f887 	bl	d05fc80c <__sinit>
d05fc6fe:	4b14      	ldr	r3, [pc, #80]	; (d05fc750 <_fflush_r+0x6c>)
d05fc700:	429c      	cmp	r4, r3
d05fc702:	d11b      	bne.n	d05fc73c <_fflush_r+0x58>
d05fc704:	686c      	ldr	r4, [r5, #4]
d05fc706:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05fc70a:	2b00      	cmp	r3, #0
d05fc70c:	d0ef      	beq.n	d05fc6ee <_fflush_r+0xa>
d05fc70e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05fc710:	07d0      	lsls	r0, r2, #31
d05fc712:	d404      	bmi.n	d05fc71e <_fflush_r+0x3a>
d05fc714:	0599      	lsls	r1, r3, #22
d05fc716:	d402      	bmi.n	d05fc71e <_fflush_r+0x3a>
d05fc718:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05fc71a:	f000 f915 	bl	d05fc948 <__retarget_lock_acquire_recursive>
d05fc71e:	4628      	mov	r0, r5
d05fc720:	4621      	mov	r1, r4
d05fc722:	f7ff ff59 	bl	d05fc5d8 <__sflush_r>
d05fc726:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05fc728:	07da      	lsls	r2, r3, #31
d05fc72a:	4605      	mov	r5, r0
d05fc72c:	d4e0      	bmi.n	d05fc6f0 <_fflush_r+0xc>
d05fc72e:	89a3      	ldrh	r3, [r4, #12]
d05fc730:	059b      	lsls	r3, r3, #22
d05fc732:	d4dd      	bmi.n	d05fc6f0 <_fflush_r+0xc>
d05fc734:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05fc736:	f000 f908 	bl	d05fc94a <__retarget_lock_release_recursive>
d05fc73a:	e7d9      	b.n	d05fc6f0 <_fflush_r+0xc>
d05fc73c:	4b05      	ldr	r3, [pc, #20]	; (d05fc754 <_fflush_r+0x70>)
d05fc73e:	429c      	cmp	r4, r3
d05fc740:	d101      	bne.n	d05fc746 <_fflush_r+0x62>
d05fc742:	68ac      	ldr	r4, [r5, #8]
d05fc744:	e7df      	b.n	d05fc706 <_fflush_r+0x22>
d05fc746:	4b04      	ldr	r3, [pc, #16]	; (d05fc758 <_fflush_r+0x74>)
d05fc748:	429c      	cmp	r4, r3
d05fc74a:	bf08      	it	eq
d05fc74c:	68ec      	ldreq	r4, [r5, #12]
d05fc74e:	e7da      	b.n	d05fc706 <_fflush_r+0x22>
d05fc750:	d05fd528 	.word	0xd05fd528
d05fc754:	d05fd548 	.word	0xd05fd548
d05fc758:	d05fd508 	.word	0xd05fd508

d05fc75c <std>:
d05fc75c:	2300      	movs	r3, #0
d05fc75e:	b510      	push	{r4, lr}
d05fc760:	4604      	mov	r4, r0
d05fc762:	e9c0 3300 	strd	r3, r3, [r0]
d05fc766:	e9c0 3304 	strd	r3, r3, [r0, #16]
d05fc76a:	6083      	str	r3, [r0, #8]
d05fc76c:	8181      	strh	r1, [r0, #12]
d05fc76e:	6643      	str	r3, [r0, #100]	; 0x64
d05fc770:	81c2      	strh	r2, [r0, #14]
d05fc772:	6183      	str	r3, [r0, #24]
d05fc774:	4619      	mov	r1, r3
d05fc776:	2208      	movs	r2, #8
d05fc778:	305c      	adds	r0, #92	; 0x5c
d05fc77a:	f7ff fcf3 	bl	d05fc164 <memset>
d05fc77e:	4b05      	ldr	r3, [pc, #20]	; (d05fc794 <std+0x38>)
d05fc780:	6263      	str	r3, [r4, #36]	; 0x24
d05fc782:	4b05      	ldr	r3, [pc, #20]	; (d05fc798 <std+0x3c>)
d05fc784:	62a3      	str	r3, [r4, #40]	; 0x28
d05fc786:	4b05      	ldr	r3, [pc, #20]	; (d05fc79c <std+0x40>)
d05fc788:	62e3      	str	r3, [r4, #44]	; 0x2c
d05fc78a:	4b05      	ldr	r3, [pc, #20]	; (d05fc7a0 <std+0x44>)
d05fc78c:	6224      	str	r4, [r4, #32]
d05fc78e:	6323      	str	r3, [r4, #48]	; 0x30
d05fc790:	bd10      	pop	{r4, pc}
d05fc792:	bf00      	nop
d05fc794:	d05fd1e5 	.word	0xd05fd1e5
d05fc798:	d05fd207 	.word	0xd05fd207
d05fc79c:	d05fd23f 	.word	0xd05fd23f
d05fc7a0:	d05fd263 	.word	0xd05fd263

d05fc7a4 <_cleanup_r>:
d05fc7a4:	4901      	ldr	r1, [pc, #4]	; (d05fc7ac <_cleanup_r+0x8>)
d05fc7a6:	f000 b8af 	b.w	d05fc908 <_fwalk_reent>
d05fc7aa:	bf00      	nop
d05fc7ac:	d05fc6e5 	.word	0xd05fc6e5

d05fc7b0 <__sfmoreglue>:
d05fc7b0:	b570      	push	{r4, r5, r6, lr}
d05fc7b2:	1e4a      	subs	r2, r1, #1
d05fc7b4:	2568      	movs	r5, #104	; 0x68
d05fc7b6:	4355      	muls	r5, r2
d05fc7b8:	460e      	mov	r6, r1
d05fc7ba:	f105 0174 	add.w	r1, r5, #116	; 0x74
d05fc7be:	f000 f981 	bl	d05fcac4 <_malloc_r>
d05fc7c2:	4604      	mov	r4, r0
d05fc7c4:	b140      	cbz	r0, d05fc7d8 <__sfmoreglue+0x28>
d05fc7c6:	2100      	movs	r1, #0
d05fc7c8:	e9c0 1600 	strd	r1, r6, [r0]
d05fc7cc:	300c      	adds	r0, #12
d05fc7ce:	60a0      	str	r0, [r4, #8]
d05fc7d0:	f105 0268 	add.w	r2, r5, #104	; 0x68
d05fc7d4:	f7ff fcc6 	bl	d05fc164 <memset>
d05fc7d8:	4620      	mov	r0, r4
d05fc7da:	bd70      	pop	{r4, r5, r6, pc}

d05fc7dc <__sfp_lock_acquire>:
d05fc7dc:	4801      	ldr	r0, [pc, #4]	; (d05fc7e4 <__sfp_lock_acquire+0x8>)
d05fc7de:	f000 b8b3 	b.w	d05fc948 <__retarget_lock_acquire_recursive>
d05fc7e2:	bf00      	nop
d05fc7e4:	d05fd620 	.word	0xd05fd620

d05fc7e8 <__sfp_lock_release>:
d05fc7e8:	4801      	ldr	r0, [pc, #4]	; (d05fc7f0 <__sfp_lock_release+0x8>)
d05fc7ea:	f000 b8ae 	b.w	d05fc94a <__retarget_lock_release_recursive>
d05fc7ee:	bf00      	nop
d05fc7f0:	d05fd620 	.word	0xd05fd620

d05fc7f4 <__sinit_lock_acquire>:
d05fc7f4:	4801      	ldr	r0, [pc, #4]	; (d05fc7fc <__sinit_lock_acquire+0x8>)
d05fc7f6:	f000 b8a7 	b.w	d05fc948 <__retarget_lock_acquire_recursive>
d05fc7fa:	bf00      	nop
d05fc7fc:	d05fd61b 	.word	0xd05fd61b

d05fc800 <__sinit_lock_release>:
d05fc800:	4801      	ldr	r0, [pc, #4]	; (d05fc808 <__sinit_lock_release+0x8>)
d05fc802:	f000 b8a2 	b.w	d05fc94a <__retarget_lock_release_recursive>
d05fc806:	bf00      	nop
d05fc808:	d05fd61b 	.word	0xd05fd61b

d05fc80c <__sinit>:
d05fc80c:	b510      	push	{r4, lr}
d05fc80e:	4604      	mov	r4, r0
d05fc810:	f7ff fff0 	bl	d05fc7f4 <__sinit_lock_acquire>
d05fc814:	69a3      	ldr	r3, [r4, #24]
d05fc816:	b11b      	cbz	r3, d05fc820 <__sinit+0x14>
d05fc818:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d05fc81c:	f7ff bff0 	b.w	d05fc800 <__sinit_lock_release>
d05fc820:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d05fc824:	6523      	str	r3, [r4, #80]	; 0x50
d05fc826:	4b13      	ldr	r3, [pc, #76]	; (d05fc874 <__sinit+0x68>)
d05fc828:	4a13      	ldr	r2, [pc, #76]	; (d05fc878 <__sinit+0x6c>)
d05fc82a:	681b      	ldr	r3, [r3, #0]
d05fc82c:	62a2      	str	r2, [r4, #40]	; 0x28
d05fc82e:	42a3      	cmp	r3, r4
d05fc830:	bf04      	itt	eq
d05fc832:	2301      	moveq	r3, #1
d05fc834:	61a3      	streq	r3, [r4, #24]
d05fc836:	4620      	mov	r0, r4
d05fc838:	f000 f820 	bl	d05fc87c <__sfp>
d05fc83c:	6060      	str	r0, [r4, #4]
d05fc83e:	4620      	mov	r0, r4
d05fc840:	f000 f81c 	bl	d05fc87c <__sfp>
d05fc844:	60a0      	str	r0, [r4, #8]
d05fc846:	4620      	mov	r0, r4
d05fc848:	f000 f818 	bl	d05fc87c <__sfp>
d05fc84c:	2200      	movs	r2, #0
d05fc84e:	60e0      	str	r0, [r4, #12]
d05fc850:	2104      	movs	r1, #4
d05fc852:	6860      	ldr	r0, [r4, #4]
d05fc854:	f7ff ff82 	bl	d05fc75c <std>
d05fc858:	68a0      	ldr	r0, [r4, #8]
d05fc85a:	2201      	movs	r2, #1
d05fc85c:	2109      	movs	r1, #9
d05fc85e:	f7ff ff7d 	bl	d05fc75c <std>
d05fc862:	68e0      	ldr	r0, [r4, #12]
d05fc864:	2202      	movs	r2, #2
d05fc866:	2112      	movs	r1, #18
d05fc868:	f7ff ff78 	bl	d05fc75c <std>
d05fc86c:	2301      	movs	r3, #1
d05fc86e:	61a3      	str	r3, [r4, #24]
d05fc870:	e7d2      	b.n	d05fc818 <__sinit+0xc>
d05fc872:	bf00      	nop
d05fc874:	d05fd504 	.word	0xd05fd504
d05fc878:	d05fc7a5 	.word	0xd05fc7a5

d05fc87c <__sfp>:
d05fc87c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05fc87e:	4607      	mov	r7, r0
d05fc880:	f7ff ffac 	bl	d05fc7dc <__sfp_lock_acquire>
d05fc884:	4b1e      	ldr	r3, [pc, #120]	; (d05fc900 <__sfp+0x84>)
d05fc886:	681e      	ldr	r6, [r3, #0]
d05fc888:	69b3      	ldr	r3, [r6, #24]
d05fc88a:	b913      	cbnz	r3, d05fc892 <__sfp+0x16>
d05fc88c:	4630      	mov	r0, r6
d05fc88e:	f7ff ffbd 	bl	d05fc80c <__sinit>
d05fc892:	3648      	adds	r6, #72	; 0x48
d05fc894:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d05fc898:	3b01      	subs	r3, #1
d05fc89a:	d503      	bpl.n	d05fc8a4 <__sfp+0x28>
d05fc89c:	6833      	ldr	r3, [r6, #0]
d05fc89e:	b30b      	cbz	r3, d05fc8e4 <__sfp+0x68>
d05fc8a0:	6836      	ldr	r6, [r6, #0]
d05fc8a2:	e7f7      	b.n	d05fc894 <__sfp+0x18>
d05fc8a4:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d05fc8a8:	b9d5      	cbnz	r5, d05fc8e0 <__sfp+0x64>
d05fc8aa:	4b16      	ldr	r3, [pc, #88]	; (d05fc904 <__sfp+0x88>)
d05fc8ac:	60e3      	str	r3, [r4, #12]
d05fc8ae:	f104 0058 	add.w	r0, r4, #88	; 0x58
d05fc8b2:	6665      	str	r5, [r4, #100]	; 0x64
d05fc8b4:	f000 f847 	bl	d05fc946 <__retarget_lock_init_recursive>
d05fc8b8:	f7ff ff96 	bl	d05fc7e8 <__sfp_lock_release>
d05fc8bc:	e9c4 5501 	strd	r5, r5, [r4, #4]
d05fc8c0:	e9c4 5504 	strd	r5, r5, [r4, #16]
d05fc8c4:	6025      	str	r5, [r4, #0]
d05fc8c6:	61a5      	str	r5, [r4, #24]
d05fc8c8:	2208      	movs	r2, #8
d05fc8ca:	4629      	mov	r1, r5
d05fc8cc:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d05fc8d0:	f7ff fc48 	bl	d05fc164 <memset>
d05fc8d4:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d05fc8d8:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d05fc8dc:	4620      	mov	r0, r4
d05fc8de:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05fc8e0:	3468      	adds	r4, #104	; 0x68
d05fc8e2:	e7d9      	b.n	d05fc898 <__sfp+0x1c>
d05fc8e4:	2104      	movs	r1, #4
d05fc8e6:	4638      	mov	r0, r7
d05fc8e8:	f7ff ff62 	bl	d05fc7b0 <__sfmoreglue>
d05fc8ec:	4604      	mov	r4, r0
d05fc8ee:	6030      	str	r0, [r6, #0]
d05fc8f0:	2800      	cmp	r0, #0
d05fc8f2:	d1d5      	bne.n	d05fc8a0 <__sfp+0x24>
d05fc8f4:	f7ff ff78 	bl	d05fc7e8 <__sfp_lock_release>
d05fc8f8:	230c      	movs	r3, #12
d05fc8fa:	603b      	str	r3, [r7, #0]
d05fc8fc:	e7ee      	b.n	d05fc8dc <__sfp+0x60>
d05fc8fe:	bf00      	nop
d05fc900:	d05fd504 	.word	0xd05fd504
d05fc904:	ffff0001 	.word	0xffff0001

d05fc908 <_fwalk_reent>:
d05fc908:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d05fc90c:	4606      	mov	r6, r0
d05fc90e:	4688      	mov	r8, r1
d05fc910:	f100 0448 	add.w	r4, r0, #72	; 0x48
d05fc914:	2700      	movs	r7, #0
d05fc916:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d05fc91a:	f1b9 0901 	subs.w	r9, r9, #1
d05fc91e:	d505      	bpl.n	d05fc92c <_fwalk_reent+0x24>
d05fc920:	6824      	ldr	r4, [r4, #0]
d05fc922:	2c00      	cmp	r4, #0
d05fc924:	d1f7      	bne.n	d05fc916 <_fwalk_reent+0xe>
d05fc926:	4638      	mov	r0, r7
d05fc928:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d05fc92c:	89ab      	ldrh	r3, [r5, #12]
d05fc92e:	2b01      	cmp	r3, #1
d05fc930:	d907      	bls.n	d05fc942 <_fwalk_reent+0x3a>
d05fc932:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d05fc936:	3301      	adds	r3, #1
d05fc938:	d003      	beq.n	d05fc942 <_fwalk_reent+0x3a>
d05fc93a:	4629      	mov	r1, r5
d05fc93c:	4630      	mov	r0, r6
d05fc93e:	47c0      	blx	r8
d05fc940:	4307      	orrs	r7, r0
d05fc942:	3568      	adds	r5, #104	; 0x68
d05fc944:	e7e9      	b.n	d05fc91a <_fwalk_reent+0x12>

d05fc946 <__retarget_lock_init_recursive>:
d05fc946:	4770      	bx	lr

d05fc948 <__retarget_lock_acquire_recursive>:
d05fc948:	4770      	bx	lr

d05fc94a <__retarget_lock_release_recursive>:
d05fc94a:	4770      	bx	lr

d05fc94c <__swhatbuf_r>:
d05fc94c:	b570      	push	{r4, r5, r6, lr}
d05fc94e:	460e      	mov	r6, r1
d05fc950:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05fc954:	2900      	cmp	r1, #0
d05fc956:	b096      	sub	sp, #88	; 0x58
d05fc958:	4614      	mov	r4, r2
d05fc95a:	461d      	mov	r5, r3
d05fc95c:	da07      	bge.n	d05fc96e <__swhatbuf_r+0x22>
d05fc95e:	2300      	movs	r3, #0
d05fc960:	602b      	str	r3, [r5, #0]
d05fc962:	89b3      	ldrh	r3, [r6, #12]
d05fc964:	061a      	lsls	r2, r3, #24
d05fc966:	d410      	bmi.n	d05fc98a <__swhatbuf_r+0x3e>
d05fc968:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05fc96c:	e00e      	b.n	d05fc98c <__swhatbuf_r+0x40>
d05fc96e:	466a      	mov	r2, sp
d05fc970:	f000 fc8c 	bl	d05fd28c <_fstat_r>
d05fc974:	2800      	cmp	r0, #0
d05fc976:	dbf2      	blt.n	d05fc95e <__swhatbuf_r+0x12>
d05fc978:	9a01      	ldr	r2, [sp, #4]
d05fc97a:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d05fc97e:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d05fc982:	425a      	negs	r2, r3
d05fc984:	415a      	adcs	r2, r3
d05fc986:	602a      	str	r2, [r5, #0]
d05fc988:	e7ee      	b.n	d05fc968 <__swhatbuf_r+0x1c>
d05fc98a:	2340      	movs	r3, #64	; 0x40
d05fc98c:	2000      	movs	r0, #0
d05fc98e:	6023      	str	r3, [r4, #0]
d05fc990:	b016      	add	sp, #88	; 0x58
d05fc992:	bd70      	pop	{r4, r5, r6, pc}

d05fc994 <__smakebuf_r>:
d05fc994:	898b      	ldrh	r3, [r1, #12]
d05fc996:	b573      	push	{r0, r1, r4, r5, r6, lr}
d05fc998:	079d      	lsls	r5, r3, #30
d05fc99a:	4606      	mov	r6, r0
d05fc99c:	460c      	mov	r4, r1
d05fc99e:	d507      	bpl.n	d05fc9b0 <__smakebuf_r+0x1c>
d05fc9a0:	f104 0347 	add.w	r3, r4, #71	; 0x47
d05fc9a4:	6023      	str	r3, [r4, #0]
d05fc9a6:	6123      	str	r3, [r4, #16]
d05fc9a8:	2301      	movs	r3, #1
d05fc9aa:	6163      	str	r3, [r4, #20]
d05fc9ac:	b002      	add	sp, #8
d05fc9ae:	bd70      	pop	{r4, r5, r6, pc}
d05fc9b0:	ab01      	add	r3, sp, #4
d05fc9b2:	466a      	mov	r2, sp
d05fc9b4:	f7ff ffca 	bl	d05fc94c <__swhatbuf_r>
d05fc9b8:	9900      	ldr	r1, [sp, #0]
d05fc9ba:	4605      	mov	r5, r0
d05fc9bc:	4630      	mov	r0, r6
d05fc9be:	f000 f881 	bl	d05fcac4 <_malloc_r>
d05fc9c2:	b948      	cbnz	r0, d05fc9d8 <__smakebuf_r+0x44>
d05fc9c4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05fc9c8:	059a      	lsls	r2, r3, #22
d05fc9ca:	d4ef      	bmi.n	d05fc9ac <__smakebuf_r+0x18>
d05fc9cc:	f023 0303 	bic.w	r3, r3, #3
d05fc9d0:	f043 0302 	orr.w	r3, r3, #2
d05fc9d4:	81a3      	strh	r3, [r4, #12]
d05fc9d6:	e7e3      	b.n	d05fc9a0 <__smakebuf_r+0xc>
d05fc9d8:	4b0d      	ldr	r3, [pc, #52]	; (d05fca10 <__smakebuf_r+0x7c>)
d05fc9da:	62b3      	str	r3, [r6, #40]	; 0x28
d05fc9dc:	89a3      	ldrh	r3, [r4, #12]
d05fc9de:	6020      	str	r0, [r4, #0]
d05fc9e0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05fc9e4:	81a3      	strh	r3, [r4, #12]
d05fc9e6:	9b00      	ldr	r3, [sp, #0]
d05fc9e8:	6163      	str	r3, [r4, #20]
d05fc9ea:	9b01      	ldr	r3, [sp, #4]
d05fc9ec:	6120      	str	r0, [r4, #16]
d05fc9ee:	b15b      	cbz	r3, d05fca08 <__smakebuf_r+0x74>
d05fc9f0:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d05fc9f4:	4630      	mov	r0, r6
d05fc9f6:	f000 fc5b 	bl	d05fd2b0 <_isatty_r>
d05fc9fa:	b128      	cbz	r0, d05fca08 <__smakebuf_r+0x74>
d05fc9fc:	89a3      	ldrh	r3, [r4, #12]
d05fc9fe:	f023 0303 	bic.w	r3, r3, #3
d05fca02:	f043 0301 	orr.w	r3, r3, #1
d05fca06:	81a3      	strh	r3, [r4, #12]
d05fca08:	89a0      	ldrh	r0, [r4, #12]
d05fca0a:	4305      	orrs	r5, r0
d05fca0c:	81a5      	strh	r5, [r4, #12]
d05fca0e:	e7cd      	b.n	d05fc9ac <__smakebuf_r+0x18>
d05fca10:	d05fc7a5 	.word	0xd05fc7a5

d05fca14 <malloc>:
d05fca14:	4b02      	ldr	r3, [pc, #8]	; (d05fca20 <malloc+0xc>)
d05fca16:	4601      	mov	r1, r0
d05fca18:	6818      	ldr	r0, [r3, #0]
d05fca1a:	f000 b853 	b.w	d05fcac4 <_malloc_r>
d05fca1e:	bf00      	nop
d05fca20:	d05fd5a4 	.word	0xd05fd5a4

d05fca24 <_free_r>:
d05fca24:	b537      	push	{r0, r1, r2, r4, r5, lr}
d05fca26:	2900      	cmp	r1, #0
d05fca28:	d048      	beq.n	d05fcabc <_free_r+0x98>
d05fca2a:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05fca2e:	9001      	str	r0, [sp, #4]
d05fca30:	2b00      	cmp	r3, #0
d05fca32:	f1a1 0404 	sub.w	r4, r1, #4
d05fca36:	bfb8      	it	lt
d05fca38:	18e4      	addlt	r4, r4, r3
d05fca3a:	f000 fcb1 	bl	d05fd3a0 <__malloc_lock>
d05fca3e:	4a20      	ldr	r2, [pc, #128]	; (d05fcac0 <_free_r+0x9c>)
d05fca40:	9801      	ldr	r0, [sp, #4]
d05fca42:	6813      	ldr	r3, [r2, #0]
d05fca44:	4615      	mov	r5, r2
d05fca46:	b933      	cbnz	r3, d05fca56 <_free_r+0x32>
d05fca48:	6063      	str	r3, [r4, #4]
d05fca4a:	6014      	str	r4, [r2, #0]
d05fca4c:	b003      	add	sp, #12
d05fca4e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05fca52:	f000 bcab 	b.w	d05fd3ac <__malloc_unlock>
d05fca56:	42a3      	cmp	r3, r4
d05fca58:	d90b      	bls.n	d05fca72 <_free_r+0x4e>
d05fca5a:	6821      	ldr	r1, [r4, #0]
d05fca5c:	1862      	adds	r2, r4, r1
d05fca5e:	4293      	cmp	r3, r2
d05fca60:	bf04      	itt	eq
d05fca62:	681a      	ldreq	r2, [r3, #0]
d05fca64:	685b      	ldreq	r3, [r3, #4]
d05fca66:	6063      	str	r3, [r4, #4]
d05fca68:	bf04      	itt	eq
d05fca6a:	1852      	addeq	r2, r2, r1
d05fca6c:	6022      	streq	r2, [r4, #0]
d05fca6e:	602c      	str	r4, [r5, #0]
d05fca70:	e7ec      	b.n	d05fca4c <_free_r+0x28>
d05fca72:	461a      	mov	r2, r3
d05fca74:	685b      	ldr	r3, [r3, #4]
d05fca76:	b10b      	cbz	r3, d05fca7c <_free_r+0x58>
d05fca78:	42a3      	cmp	r3, r4
d05fca7a:	d9fa      	bls.n	d05fca72 <_free_r+0x4e>
d05fca7c:	6811      	ldr	r1, [r2, #0]
d05fca7e:	1855      	adds	r5, r2, r1
d05fca80:	42a5      	cmp	r5, r4
d05fca82:	d10b      	bne.n	d05fca9c <_free_r+0x78>
d05fca84:	6824      	ldr	r4, [r4, #0]
d05fca86:	4421      	add	r1, r4
d05fca88:	1854      	adds	r4, r2, r1
d05fca8a:	42a3      	cmp	r3, r4
d05fca8c:	6011      	str	r1, [r2, #0]
d05fca8e:	d1dd      	bne.n	d05fca4c <_free_r+0x28>
d05fca90:	681c      	ldr	r4, [r3, #0]
d05fca92:	685b      	ldr	r3, [r3, #4]
d05fca94:	6053      	str	r3, [r2, #4]
d05fca96:	4421      	add	r1, r4
d05fca98:	6011      	str	r1, [r2, #0]
d05fca9a:	e7d7      	b.n	d05fca4c <_free_r+0x28>
d05fca9c:	d902      	bls.n	d05fcaa4 <_free_r+0x80>
d05fca9e:	230c      	movs	r3, #12
d05fcaa0:	6003      	str	r3, [r0, #0]
d05fcaa2:	e7d3      	b.n	d05fca4c <_free_r+0x28>
d05fcaa4:	6825      	ldr	r5, [r4, #0]
d05fcaa6:	1961      	adds	r1, r4, r5
d05fcaa8:	428b      	cmp	r3, r1
d05fcaaa:	bf04      	itt	eq
d05fcaac:	6819      	ldreq	r1, [r3, #0]
d05fcaae:	685b      	ldreq	r3, [r3, #4]
d05fcab0:	6063      	str	r3, [r4, #4]
d05fcab2:	bf04      	itt	eq
d05fcab4:	1949      	addeq	r1, r1, r5
d05fcab6:	6021      	streq	r1, [r4, #0]
d05fcab8:	6054      	str	r4, [r2, #4]
d05fcaba:	e7c7      	b.n	d05fca4c <_free_r+0x28>
d05fcabc:	b003      	add	sp, #12
d05fcabe:	bd30      	pop	{r4, r5, pc}
d05fcac0:	d05fd610 	.word	0xd05fd610

d05fcac4 <_malloc_r>:
d05fcac4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05fcac6:	1ccd      	adds	r5, r1, #3
d05fcac8:	f025 0503 	bic.w	r5, r5, #3
d05fcacc:	3508      	adds	r5, #8
d05fcace:	2d0c      	cmp	r5, #12
d05fcad0:	bf38      	it	cc
d05fcad2:	250c      	movcc	r5, #12
d05fcad4:	2d00      	cmp	r5, #0
d05fcad6:	4606      	mov	r6, r0
d05fcad8:	db01      	blt.n	d05fcade <_malloc_r+0x1a>
d05fcada:	42a9      	cmp	r1, r5
d05fcadc:	d903      	bls.n	d05fcae6 <_malloc_r+0x22>
d05fcade:	230c      	movs	r3, #12
d05fcae0:	6033      	str	r3, [r6, #0]
d05fcae2:	2000      	movs	r0, #0
d05fcae4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05fcae6:	f000 fc5b 	bl	d05fd3a0 <__malloc_lock>
d05fcaea:	4921      	ldr	r1, [pc, #132]	; (d05fcb70 <_malloc_r+0xac>)
d05fcaec:	680a      	ldr	r2, [r1, #0]
d05fcaee:	4614      	mov	r4, r2
d05fcaf0:	b99c      	cbnz	r4, d05fcb1a <_malloc_r+0x56>
d05fcaf2:	4f20      	ldr	r7, [pc, #128]	; (d05fcb74 <_malloc_r+0xb0>)
d05fcaf4:	683b      	ldr	r3, [r7, #0]
d05fcaf6:	b923      	cbnz	r3, d05fcb02 <_malloc_r+0x3e>
d05fcaf8:	4621      	mov	r1, r4
d05fcafa:	4630      	mov	r0, r6
d05fcafc:	f7ff fae4 	bl	d05fc0c8 <_sbrk_r>
d05fcb00:	6038      	str	r0, [r7, #0]
d05fcb02:	4629      	mov	r1, r5
d05fcb04:	4630      	mov	r0, r6
d05fcb06:	f7ff fadf 	bl	d05fc0c8 <_sbrk_r>
d05fcb0a:	1c43      	adds	r3, r0, #1
d05fcb0c:	d123      	bne.n	d05fcb56 <_malloc_r+0x92>
d05fcb0e:	230c      	movs	r3, #12
d05fcb10:	6033      	str	r3, [r6, #0]
d05fcb12:	4630      	mov	r0, r6
d05fcb14:	f000 fc4a 	bl	d05fd3ac <__malloc_unlock>
d05fcb18:	e7e3      	b.n	d05fcae2 <_malloc_r+0x1e>
d05fcb1a:	6823      	ldr	r3, [r4, #0]
d05fcb1c:	1b5b      	subs	r3, r3, r5
d05fcb1e:	d417      	bmi.n	d05fcb50 <_malloc_r+0x8c>
d05fcb20:	2b0b      	cmp	r3, #11
d05fcb22:	d903      	bls.n	d05fcb2c <_malloc_r+0x68>
d05fcb24:	6023      	str	r3, [r4, #0]
d05fcb26:	441c      	add	r4, r3
d05fcb28:	6025      	str	r5, [r4, #0]
d05fcb2a:	e004      	b.n	d05fcb36 <_malloc_r+0x72>
d05fcb2c:	6863      	ldr	r3, [r4, #4]
d05fcb2e:	42a2      	cmp	r2, r4
d05fcb30:	bf0c      	ite	eq
d05fcb32:	600b      	streq	r3, [r1, #0]
d05fcb34:	6053      	strne	r3, [r2, #4]
d05fcb36:	4630      	mov	r0, r6
d05fcb38:	f000 fc38 	bl	d05fd3ac <__malloc_unlock>
d05fcb3c:	f104 000b 	add.w	r0, r4, #11
d05fcb40:	1d23      	adds	r3, r4, #4
d05fcb42:	f020 0007 	bic.w	r0, r0, #7
d05fcb46:	1ac2      	subs	r2, r0, r3
d05fcb48:	d0cc      	beq.n	d05fcae4 <_malloc_r+0x20>
d05fcb4a:	1a1b      	subs	r3, r3, r0
d05fcb4c:	50a3      	str	r3, [r4, r2]
d05fcb4e:	e7c9      	b.n	d05fcae4 <_malloc_r+0x20>
d05fcb50:	4622      	mov	r2, r4
d05fcb52:	6864      	ldr	r4, [r4, #4]
d05fcb54:	e7cc      	b.n	d05fcaf0 <_malloc_r+0x2c>
d05fcb56:	1cc4      	adds	r4, r0, #3
d05fcb58:	f024 0403 	bic.w	r4, r4, #3
d05fcb5c:	42a0      	cmp	r0, r4
d05fcb5e:	d0e3      	beq.n	d05fcb28 <_malloc_r+0x64>
d05fcb60:	1a21      	subs	r1, r4, r0
d05fcb62:	4630      	mov	r0, r6
d05fcb64:	f7ff fab0 	bl	d05fc0c8 <_sbrk_r>
d05fcb68:	3001      	adds	r0, #1
d05fcb6a:	d1dd      	bne.n	d05fcb28 <_malloc_r+0x64>
d05fcb6c:	e7cf      	b.n	d05fcb0e <_malloc_r+0x4a>
d05fcb6e:	bf00      	nop
d05fcb70:	d05fd610 	.word	0xd05fd610
d05fcb74:	d05fd614 	.word	0xd05fd614

d05fcb78 <__sfputc_r>:
d05fcb78:	6893      	ldr	r3, [r2, #8]
d05fcb7a:	3b01      	subs	r3, #1
d05fcb7c:	2b00      	cmp	r3, #0
d05fcb7e:	b410      	push	{r4}
d05fcb80:	6093      	str	r3, [r2, #8]
d05fcb82:	da08      	bge.n	d05fcb96 <__sfputc_r+0x1e>
d05fcb84:	6994      	ldr	r4, [r2, #24]
d05fcb86:	42a3      	cmp	r3, r4
d05fcb88:	db01      	blt.n	d05fcb8e <__sfputc_r+0x16>
d05fcb8a:	290a      	cmp	r1, #10
d05fcb8c:	d103      	bne.n	d05fcb96 <__sfputc_r+0x1e>
d05fcb8e:	f85d 4b04 	ldr.w	r4, [sp], #4
d05fcb92:	f7ff bc61 	b.w	d05fc458 <__swbuf_r>
d05fcb96:	6813      	ldr	r3, [r2, #0]
d05fcb98:	1c58      	adds	r0, r3, #1
d05fcb9a:	6010      	str	r0, [r2, #0]
d05fcb9c:	7019      	strb	r1, [r3, #0]
d05fcb9e:	4608      	mov	r0, r1
d05fcba0:	f85d 4b04 	ldr.w	r4, [sp], #4
d05fcba4:	4770      	bx	lr

d05fcba6 <__sfputs_r>:
d05fcba6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05fcba8:	4606      	mov	r6, r0
d05fcbaa:	460f      	mov	r7, r1
d05fcbac:	4614      	mov	r4, r2
d05fcbae:	18d5      	adds	r5, r2, r3
d05fcbb0:	42ac      	cmp	r4, r5
d05fcbb2:	d101      	bne.n	d05fcbb8 <__sfputs_r+0x12>
d05fcbb4:	2000      	movs	r0, #0
d05fcbb6:	e007      	b.n	d05fcbc8 <__sfputs_r+0x22>
d05fcbb8:	f814 1b01 	ldrb.w	r1, [r4], #1
d05fcbbc:	463a      	mov	r2, r7
d05fcbbe:	4630      	mov	r0, r6
d05fcbc0:	f7ff ffda 	bl	d05fcb78 <__sfputc_r>
d05fcbc4:	1c43      	adds	r3, r0, #1
d05fcbc6:	d1f3      	bne.n	d05fcbb0 <__sfputs_r+0xa>
d05fcbc8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d05fcbcc <_vfiprintf_r>:
d05fcbcc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05fcbd0:	460d      	mov	r5, r1
d05fcbd2:	b09d      	sub	sp, #116	; 0x74
d05fcbd4:	4614      	mov	r4, r2
d05fcbd6:	4698      	mov	r8, r3
d05fcbd8:	4606      	mov	r6, r0
d05fcbda:	b118      	cbz	r0, d05fcbe4 <_vfiprintf_r+0x18>
d05fcbdc:	6983      	ldr	r3, [r0, #24]
d05fcbde:	b90b      	cbnz	r3, d05fcbe4 <_vfiprintf_r+0x18>
d05fcbe0:	f7ff fe14 	bl	d05fc80c <__sinit>
d05fcbe4:	4b89      	ldr	r3, [pc, #548]	; (d05fce0c <_vfiprintf_r+0x240>)
d05fcbe6:	429d      	cmp	r5, r3
d05fcbe8:	d11b      	bne.n	d05fcc22 <_vfiprintf_r+0x56>
d05fcbea:	6875      	ldr	r5, [r6, #4]
d05fcbec:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d05fcbee:	07d9      	lsls	r1, r3, #31
d05fcbf0:	d405      	bmi.n	d05fcbfe <_vfiprintf_r+0x32>
d05fcbf2:	89ab      	ldrh	r3, [r5, #12]
d05fcbf4:	059a      	lsls	r2, r3, #22
d05fcbf6:	d402      	bmi.n	d05fcbfe <_vfiprintf_r+0x32>
d05fcbf8:	6da8      	ldr	r0, [r5, #88]	; 0x58
d05fcbfa:	f7ff fea5 	bl	d05fc948 <__retarget_lock_acquire_recursive>
d05fcbfe:	89ab      	ldrh	r3, [r5, #12]
d05fcc00:	071b      	lsls	r3, r3, #28
d05fcc02:	d501      	bpl.n	d05fcc08 <_vfiprintf_r+0x3c>
d05fcc04:	692b      	ldr	r3, [r5, #16]
d05fcc06:	b9eb      	cbnz	r3, d05fcc44 <_vfiprintf_r+0x78>
d05fcc08:	4629      	mov	r1, r5
d05fcc0a:	4630      	mov	r0, r6
d05fcc0c:	f7ff fc76 	bl	d05fc4fc <__swsetup_r>
d05fcc10:	b1c0      	cbz	r0, d05fcc44 <_vfiprintf_r+0x78>
d05fcc12:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d05fcc14:	07dc      	lsls	r4, r3, #31
d05fcc16:	d50e      	bpl.n	d05fcc36 <_vfiprintf_r+0x6a>
d05fcc18:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05fcc1c:	b01d      	add	sp, #116	; 0x74
d05fcc1e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05fcc22:	4b7b      	ldr	r3, [pc, #492]	; (d05fce10 <_vfiprintf_r+0x244>)
d05fcc24:	429d      	cmp	r5, r3
d05fcc26:	d101      	bne.n	d05fcc2c <_vfiprintf_r+0x60>
d05fcc28:	68b5      	ldr	r5, [r6, #8]
d05fcc2a:	e7df      	b.n	d05fcbec <_vfiprintf_r+0x20>
d05fcc2c:	4b79      	ldr	r3, [pc, #484]	; (d05fce14 <_vfiprintf_r+0x248>)
d05fcc2e:	429d      	cmp	r5, r3
d05fcc30:	bf08      	it	eq
d05fcc32:	68f5      	ldreq	r5, [r6, #12]
d05fcc34:	e7da      	b.n	d05fcbec <_vfiprintf_r+0x20>
d05fcc36:	89ab      	ldrh	r3, [r5, #12]
d05fcc38:	0598      	lsls	r0, r3, #22
d05fcc3a:	d4ed      	bmi.n	d05fcc18 <_vfiprintf_r+0x4c>
d05fcc3c:	6da8      	ldr	r0, [r5, #88]	; 0x58
d05fcc3e:	f7ff fe84 	bl	d05fc94a <__retarget_lock_release_recursive>
d05fcc42:	e7e9      	b.n	d05fcc18 <_vfiprintf_r+0x4c>
d05fcc44:	2300      	movs	r3, #0
d05fcc46:	9309      	str	r3, [sp, #36]	; 0x24
d05fcc48:	2320      	movs	r3, #32
d05fcc4a:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d05fcc4e:	f8cd 800c 	str.w	r8, [sp, #12]
d05fcc52:	2330      	movs	r3, #48	; 0x30
d05fcc54:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d05fce18 <_vfiprintf_r+0x24c>
d05fcc58:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d05fcc5c:	f04f 0901 	mov.w	r9, #1
d05fcc60:	4623      	mov	r3, r4
d05fcc62:	469a      	mov	sl, r3
d05fcc64:	f813 2b01 	ldrb.w	r2, [r3], #1
d05fcc68:	b10a      	cbz	r2, d05fcc6e <_vfiprintf_r+0xa2>
d05fcc6a:	2a25      	cmp	r2, #37	; 0x25
d05fcc6c:	d1f9      	bne.n	d05fcc62 <_vfiprintf_r+0x96>
d05fcc6e:	ebba 0b04 	subs.w	fp, sl, r4
d05fcc72:	d00b      	beq.n	d05fcc8c <_vfiprintf_r+0xc0>
d05fcc74:	465b      	mov	r3, fp
d05fcc76:	4622      	mov	r2, r4
d05fcc78:	4629      	mov	r1, r5
d05fcc7a:	4630      	mov	r0, r6
d05fcc7c:	f7ff ff93 	bl	d05fcba6 <__sfputs_r>
d05fcc80:	3001      	adds	r0, #1
d05fcc82:	f000 80aa 	beq.w	d05fcdda <_vfiprintf_r+0x20e>
d05fcc86:	9a09      	ldr	r2, [sp, #36]	; 0x24
d05fcc88:	445a      	add	r2, fp
d05fcc8a:	9209      	str	r2, [sp, #36]	; 0x24
d05fcc8c:	f89a 3000 	ldrb.w	r3, [sl]
d05fcc90:	2b00      	cmp	r3, #0
d05fcc92:	f000 80a2 	beq.w	d05fcdda <_vfiprintf_r+0x20e>
d05fcc96:	2300      	movs	r3, #0
d05fcc98:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d05fcc9c:	e9cd 2305 	strd	r2, r3, [sp, #20]
d05fcca0:	f10a 0a01 	add.w	sl, sl, #1
d05fcca4:	9304      	str	r3, [sp, #16]
d05fcca6:	9307      	str	r3, [sp, #28]
d05fcca8:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d05fccac:	931a      	str	r3, [sp, #104]	; 0x68
d05fccae:	4654      	mov	r4, sl
d05fccb0:	2205      	movs	r2, #5
d05fccb2:	f814 1b01 	ldrb.w	r1, [r4], #1
d05fccb6:	4858      	ldr	r0, [pc, #352]	; (d05fce18 <_vfiprintf_r+0x24c>)
d05fccb8:	f000 fb22 	bl	d05fd300 <memchr>
d05fccbc:	9a04      	ldr	r2, [sp, #16]
d05fccbe:	b9d8      	cbnz	r0, d05fccf8 <_vfiprintf_r+0x12c>
d05fccc0:	06d1      	lsls	r1, r2, #27
d05fccc2:	bf44      	itt	mi
d05fccc4:	2320      	movmi	r3, #32
d05fccc6:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05fccca:	0713      	lsls	r3, r2, #28
d05fcccc:	bf44      	itt	mi
d05fccce:	232b      	movmi	r3, #43	; 0x2b
d05fccd0:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05fccd4:	f89a 3000 	ldrb.w	r3, [sl]
d05fccd8:	2b2a      	cmp	r3, #42	; 0x2a
d05fccda:	d015      	beq.n	d05fcd08 <_vfiprintf_r+0x13c>
d05fccdc:	9a07      	ldr	r2, [sp, #28]
d05fccde:	4654      	mov	r4, sl
d05fcce0:	2000      	movs	r0, #0
d05fcce2:	f04f 0c0a 	mov.w	ip, #10
d05fcce6:	4621      	mov	r1, r4
d05fcce8:	f811 3b01 	ldrb.w	r3, [r1], #1
d05fccec:	3b30      	subs	r3, #48	; 0x30
d05fccee:	2b09      	cmp	r3, #9
d05fccf0:	d94e      	bls.n	d05fcd90 <_vfiprintf_r+0x1c4>
d05fccf2:	b1b0      	cbz	r0, d05fcd22 <_vfiprintf_r+0x156>
d05fccf4:	9207      	str	r2, [sp, #28]
d05fccf6:	e014      	b.n	d05fcd22 <_vfiprintf_r+0x156>
d05fccf8:	eba0 0308 	sub.w	r3, r0, r8
d05fccfc:	fa09 f303 	lsl.w	r3, r9, r3
d05fcd00:	4313      	orrs	r3, r2
d05fcd02:	9304      	str	r3, [sp, #16]
d05fcd04:	46a2      	mov	sl, r4
d05fcd06:	e7d2      	b.n	d05fccae <_vfiprintf_r+0xe2>
d05fcd08:	9b03      	ldr	r3, [sp, #12]
d05fcd0a:	1d19      	adds	r1, r3, #4
d05fcd0c:	681b      	ldr	r3, [r3, #0]
d05fcd0e:	9103      	str	r1, [sp, #12]
d05fcd10:	2b00      	cmp	r3, #0
d05fcd12:	bfbb      	ittet	lt
d05fcd14:	425b      	neglt	r3, r3
d05fcd16:	f042 0202 	orrlt.w	r2, r2, #2
d05fcd1a:	9307      	strge	r3, [sp, #28]
d05fcd1c:	9307      	strlt	r3, [sp, #28]
d05fcd1e:	bfb8      	it	lt
d05fcd20:	9204      	strlt	r2, [sp, #16]
d05fcd22:	7823      	ldrb	r3, [r4, #0]
d05fcd24:	2b2e      	cmp	r3, #46	; 0x2e
d05fcd26:	d10c      	bne.n	d05fcd42 <_vfiprintf_r+0x176>
d05fcd28:	7863      	ldrb	r3, [r4, #1]
d05fcd2a:	2b2a      	cmp	r3, #42	; 0x2a
d05fcd2c:	d135      	bne.n	d05fcd9a <_vfiprintf_r+0x1ce>
d05fcd2e:	9b03      	ldr	r3, [sp, #12]
d05fcd30:	1d1a      	adds	r2, r3, #4
d05fcd32:	681b      	ldr	r3, [r3, #0]
d05fcd34:	9203      	str	r2, [sp, #12]
d05fcd36:	2b00      	cmp	r3, #0
d05fcd38:	bfb8      	it	lt
d05fcd3a:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d05fcd3e:	3402      	adds	r4, #2
d05fcd40:	9305      	str	r3, [sp, #20]
d05fcd42:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d05fce28 <_vfiprintf_r+0x25c>
d05fcd46:	7821      	ldrb	r1, [r4, #0]
d05fcd48:	2203      	movs	r2, #3
d05fcd4a:	4650      	mov	r0, sl
d05fcd4c:	f000 fad8 	bl	d05fd300 <memchr>
d05fcd50:	b140      	cbz	r0, d05fcd64 <_vfiprintf_r+0x198>
d05fcd52:	2340      	movs	r3, #64	; 0x40
d05fcd54:	eba0 000a 	sub.w	r0, r0, sl
d05fcd58:	fa03 f000 	lsl.w	r0, r3, r0
d05fcd5c:	9b04      	ldr	r3, [sp, #16]
d05fcd5e:	4303      	orrs	r3, r0
d05fcd60:	3401      	adds	r4, #1
d05fcd62:	9304      	str	r3, [sp, #16]
d05fcd64:	f814 1b01 	ldrb.w	r1, [r4], #1
d05fcd68:	482c      	ldr	r0, [pc, #176]	; (d05fce1c <_vfiprintf_r+0x250>)
d05fcd6a:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d05fcd6e:	2206      	movs	r2, #6
d05fcd70:	f000 fac6 	bl	d05fd300 <memchr>
d05fcd74:	2800      	cmp	r0, #0
d05fcd76:	d03f      	beq.n	d05fcdf8 <_vfiprintf_r+0x22c>
d05fcd78:	4b29      	ldr	r3, [pc, #164]	; (d05fce20 <_vfiprintf_r+0x254>)
d05fcd7a:	bb1b      	cbnz	r3, d05fcdc4 <_vfiprintf_r+0x1f8>
d05fcd7c:	9b03      	ldr	r3, [sp, #12]
d05fcd7e:	3307      	adds	r3, #7
d05fcd80:	f023 0307 	bic.w	r3, r3, #7
d05fcd84:	3308      	adds	r3, #8
d05fcd86:	9303      	str	r3, [sp, #12]
d05fcd88:	9b09      	ldr	r3, [sp, #36]	; 0x24
d05fcd8a:	443b      	add	r3, r7
d05fcd8c:	9309      	str	r3, [sp, #36]	; 0x24
d05fcd8e:	e767      	b.n	d05fcc60 <_vfiprintf_r+0x94>
d05fcd90:	fb0c 3202 	mla	r2, ip, r2, r3
d05fcd94:	460c      	mov	r4, r1
d05fcd96:	2001      	movs	r0, #1
d05fcd98:	e7a5      	b.n	d05fcce6 <_vfiprintf_r+0x11a>
d05fcd9a:	2300      	movs	r3, #0
d05fcd9c:	3401      	adds	r4, #1
d05fcd9e:	9305      	str	r3, [sp, #20]
d05fcda0:	4619      	mov	r1, r3
d05fcda2:	f04f 0c0a 	mov.w	ip, #10
d05fcda6:	4620      	mov	r0, r4
d05fcda8:	f810 2b01 	ldrb.w	r2, [r0], #1
d05fcdac:	3a30      	subs	r2, #48	; 0x30
d05fcdae:	2a09      	cmp	r2, #9
d05fcdb0:	d903      	bls.n	d05fcdba <_vfiprintf_r+0x1ee>
d05fcdb2:	2b00      	cmp	r3, #0
d05fcdb4:	d0c5      	beq.n	d05fcd42 <_vfiprintf_r+0x176>
d05fcdb6:	9105      	str	r1, [sp, #20]
d05fcdb8:	e7c3      	b.n	d05fcd42 <_vfiprintf_r+0x176>
d05fcdba:	fb0c 2101 	mla	r1, ip, r1, r2
d05fcdbe:	4604      	mov	r4, r0
d05fcdc0:	2301      	movs	r3, #1
d05fcdc2:	e7f0      	b.n	d05fcda6 <_vfiprintf_r+0x1da>
d05fcdc4:	ab03      	add	r3, sp, #12
d05fcdc6:	9300      	str	r3, [sp, #0]
d05fcdc8:	462a      	mov	r2, r5
d05fcdca:	4b16      	ldr	r3, [pc, #88]	; (d05fce24 <_vfiprintf_r+0x258>)
d05fcdcc:	a904      	add	r1, sp, #16
d05fcdce:	4630      	mov	r0, r6
d05fcdd0:	f3af 8000 	nop.w
d05fcdd4:	4607      	mov	r7, r0
d05fcdd6:	1c78      	adds	r0, r7, #1
d05fcdd8:	d1d6      	bne.n	d05fcd88 <_vfiprintf_r+0x1bc>
d05fcdda:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d05fcddc:	07d9      	lsls	r1, r3, #31
d05fcdde:	d405      	bmi.n	d05fcdec <_vfiprintf_r+0x220>
d05fcde0:	89ab      	ldrh	r3, [r5, #12]
d05fcde2:	059a      	lsls	r2, r3, #22
d05fcde4:	d402      	bmi.n	d05fcdec <_vfiprintf_r+0x220>
d05fcde6:	6da8      	ldr	r0, [r5, #88]	; 0x58
d05fcde8:	f7ff fdaf 	bl	d05fc94a <__retarget_lock_release_recursive>
d05fcdec:	89ab      	ldrh	r3, [r5, #12]
d05fcdee:	065b      	lsls	r3, r3, #25
d05fcdf0:	f53f af12 	bmi.w	d05fcc18 <_vfiprintf_r+0x4c>
d05fcdf4:	9809      	ldr	r0, [sp, #36]	; 0x24
d05fcdf6:	e711      	b.n	d05fcc1c <_vfiprintf_r+0x50>
d05fcdf8:	ab03      	add	r3, sp, #12
d05fcdfa:	9300      	str	r3, [sp, #0]
d05fcdfc:	462a      	mov	r2, r5
d05fcdfe:	4b09      	ldr	r3, [pc, #36]	; (d05fce24 <_vfiprintf_r+0x258>)
d05fce00:	a904      	add	r1, sp, #16
d05fce02:	4630      	mov	r0, r6
d05fce04:	f000 f880 	bl	d05fcf08 <_printf_i>
d05fce08:	e7e4      	b.n	d05fcdd4 <_vfiprintf_r+0x208>
d05fce0a:	bf00      	nop
d05fce0c:	d05fd528 	.word	0xd05fd528
d05fce10:	d05fd548 	.word	0xd05fd548
d05fce14:	d05fd508 	.word	0xd05fd508
d05fce18:	d05fd568 	.word	0xd05fd568
d05fce1c:	d05fd572 	.word	0xd05fd572
d05fce20:	00000000 	.word	0x00000000
d05fce24:	d05fcba7 	.word	0xd05fcba7
d05fce28:	d05fd56e 	.word	0xd05fd56e

d05fce2c <_printf_common>:
d05fce2c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05fce30:	4616      	mov	r6, r2
d05fce32:	4699      	mov	r9, r3
d05fce34:	688a      	ldr	r2, [r1, #8]
d05fce36:	690b      	ldr	r3, [r1, #16]
d05fce38:	f8dd 8020 	ldr.w	r8, [sp, #32]
d05fce3c:	4293      	cmp	r3, r2
d05fce3e:	bfb8      	it	lt
d05fce40:	4613      	movlt	r3, r2
d05fce42:	6033      	str	r3, [r6, #0]
d05fce44:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d05fce48:	4607      	mov	r7, r0
d05fce4a:	460c      	mov	r4, r1
d05fce4c:	b10a      	cbz	r2, d05fce52 <_printf_common+0x26>
d05fce4e:	3301      	adds	r3, #1
d05fce50:	6033      	str	r3, [r6, #0]
d05fce52:	6823      	ldr	r3, [r4, #0]
d05fce54:	0699      	lsls	r1, r3, #26
d05fce56:	bf42      	ittt	mi
d05fce58:	6833      	ldrmi	r3, [r6, #0]
d05fce5a:	3302      	addmi	r3, #2
d05fce5c:	6033      	strmi	r3, [r6, #0]
d05fce5e:	6825      	ldr	r5, [r4, #0]
d05fce60:	f015 0506 	ands.w	r5, r5, #6
d05fce64:	d106      	bne.n	d05fce74 <_printf_common+0x48>
d05fce66:	f104 0a19 	add.w	sl, r4, #25
d05fce6a:	68e3      	ldr	r3, [r4, #12]
d05fce6c:	6832      	ldr	r2, [r6, #0]
d05fce6e:	1a9b      	subs	r3, r3, r2
d05fce70:	42ab      	cmp	r3, r5
d05fce72:	dc26      	bgt.n	d05fcec2 <_printf_common+0x96>
d05fce74:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d05fce78:	1e13      	subs	r3, r2, #0
d05fce7a:	6822      	ldr	r2, [r4, #0]
d05fce7c:	bf18      	it	ne
d05fce7e:	2301      	movne	r3, #1
d05fce80:	0692      	lsls	r2, r2, #26
d05fce82:	d42b      	bmi.n	d05fcedc <_printf_common+0xb0>
d05fce84:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05fce88:	4649      	mov	r1, r9
d05fce8a:	4638      	mov	r0, r7
d05fce8c:	47c0      	blx	r8
d05fce8e:	3001      	adds	r0, #1
d05fce90:	d01e      	beq.n	d05fced0 <_printf_common+0xa4>
d05fce92:	6823      	ldr	r3, [r4, #0]
d05fce94:	68e5      	ldr	r5, [r4, #12]
d05fce96:	6832      	ldr	r2, [r6, #0]
d05fce98:	f003 0306 	and.w	r3, r3, #6
d05fce9c:	2b04      	cmp	r3, #4
d05fce9e:	bf08      	it	eq
d05fcea0:	1aad      	subeq	r5, r5, r2
d05fcea2:	68a3      	ldr	r3, [r4, #8]
d05fcea4:	6922      	ldr	r2, [r4, #16]
d05fcea6:	bf0c      	ite	eq
d05fcea8:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d05fceac:	2500      	movne	r5, #0
d05fceae:	4293      	cmp	r3, r2
d05fceb0:	bfc4      	itt	gt
d05fceb2:	1a9b      	subgt	r3, r3, r2
d05fceb4:	18ed      	addgt	r5, r5, r3
d05fceb6:	2600      	movs	r6, #0
d05fceb8:	341a      	adds	r4, #26
d05fceba:	42b5      	cmp	r5, r6
d05fcebc:	d11a      	bne.n	d05fcef4 <_printf_common+0xc8>
d05fcebe:	2000      	movs	r0, #0
d05fcec0:	e008      	b.n	d05fced4 <_printf_common+0xa8>
d05fcec2:	2301      	movs	r3, #1
d05fcec4:	4652      	mov	r2, sl
d05fcec6:	4649      	mov	r1, r9
d05fcec8:	4638      	mov	r0, r7
d05fceca:	47c0      	blx	r8
d05fcecc:	3001      	adds	r0, #1
d05fcece:	d103      	bne.n	d05fced8 <_printf_common+0xac>
d05fced0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05fced4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05fced8:	3501      	adds	r5, #1
d05fceda:	e7c6      	b.n	d05fce6a <_printf_common+0x3e>
d05fcedc:	18e1      	adds	r1, r4, r3
d05fcede:	1c5a      	adds	r2, r3, #1
d05fcee0:	2030      	movs	r0, #48	; 0x30
d05fcee2:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d05fcee6:	4422      	add	r2, r4
d05fcee8:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d05fceec:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d05fcef0:	3302      	adds	r3, #2
d05fcef2:	e7c7      	b.n	d05fce84 <_printf_common+0x58>
d05fcef4:	2301      	movs	r3, #1
d05fcef6:	4622      	mov	r2, r4
d05fcef8:	4649      	mov	r1, r9
d05fcefa:	4638      	mov	r0, r7
d05fcefc:	47c0      	blx	r8
d05fcefe:	3001      	adds	r0, #1
d05fcf00:	d0e6      	beq.n	d05fced0 <_printf_common+0xa4>
d05fcf02:	3601      	adds	r6, #1
d05fcf04:	e7d9      	b.n	d05fceba <_printf_common+0x8e>
	...

d05fcf08 <_printf_i>:
d05fcf08:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d05fcf0c:	460c      	mov	r4, r1
d05fcf0e:	4691      	mov	r9, r2
d05fcf10:	7e27      	ldrb	r7, [r4, #24]
d05fcf12:	990c      	ldr	r1, [sp, #48]	; 0x30
d05fcf14:	2f78      	cmp	r7, #120	; 0x78
d05fcf16:	4680      	mov	r8, r0
d05fcf18:	469a      	mov	sl, r3
d05fcf1a:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05fcf1e:	d807      	bhi.n	d05fcf30 <_printf_i+0x28>
d05fcf20:	2f62      	cmp	r7, #98	; 0x62
d05fcf22:	d80a      	bhi.n	d05fcf3a <_printf_i+0x32>
d05fcf24:	2f00      	cmp	r7, #0
d05fcf26:	f000 80d8 	beq.w	d05fd0da <_printf_i+0x1d2>
d05fcf2a:	2f58      	cmp	r7, #88	; 0x58
d05fcf2c:	f000 80a3 	beq.w	d05fd076 <_printf_i+0x16e>
d05fcf30:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05fcf34:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d05fcf38:	e03a      	b.n	d05fcfb0 <_printf_i+0xa8>
d05fcf3a:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d05fcf3e:	2b15      	cmp	r3, #21
d05fcf40:	d8f6      	bhi.n	d05fcf30 <_printf_i+0x28>
d05fcf42:	a001      	add	r0, pc, #4	; (adr r0, d05fcf48 <_printf_i+0x40>)
d05fcf44:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d05fcf48:	d05fcfa1 	.word	0xd05fcfa1
d05fcf4c:	d05fcfb5 	.word	0xd05fcfb5
d05fcf50:	d05fcf31 	.word	0xd05fcf31
d05fcf54:	d05fcf31 	.word	0xd05fcf31
d05fcf58:	d05fcf31 	.word	0xd05fcf31
d05fcf5c:	d05fcf31 	.word	0xd05fcf31
d05fcf60:	d05fcfb5 	.word	0xd05fcfb5
d05fcf64:	d05fcf31 	.word	0xd05fcf31
d05fcf68:	d05fcf31 	.word	0xd05fcf31
d05fcf6c:	d05fcf31 	.word	0xd05fcf31
d05fcf70:	d05fcf31 	.word	0xd05fcf31
d05fcf74:	d05fd0c1 	.word	0xd05fd0c1
d05fcf78:	d05fcfe5 	.word	0xd05fcfe5
d05fcf7c:	d05fd0a3 	.word	0xd05fd0a3
d05fcf80:	d05fcf31 	.word	0xd05fcf31
d05fcf84:	d05fcf31 	.word	0xd05fcf31
d05fcf88:	d05fd0e3 	.word	0xd05fd0e3
d05fcf8c:	d05fcf31 	.word	0xd05fcf31
d05fcf90:	d05fcfe5 	.word	0xd05fcfe5
d05fcf94:	d05fcf31 	.word	0xd05fcf31
d05fcf98:	d05fcf31 	.word	0xd05fcf31
d05fcf9c:	d05fd0ab 	.word	0xd05fd0ab
d05fcfa0:	680b      	ldr	r3, [r1, #0]
d05fcfa2:	1d1a      	adds	r2, r3, #4
d05fcfa4:	681b      	ldr	r3, [r3, #0]
d05fcfa6:	600a      	str	r2, [r1, #0]
d05fcfa8:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05fcfac:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d05fcfb0:	2301      	movs	r3, #1
d05fcfb2:	e0a3      	b.n	d05fd0fc <_printf_i+0x1f4>
d05fcfb4:	6825      	ldr	r5, [r4, #0]
d05fcfb6:	6808      	ldr	r0, [r1, #0]
d05fcfb8:	062e      	lsls	r6, r5, #24
d05fcfba:	f100 0304 	add.w	r3, r0, #4
d05fcfbe:	d50a      	bpl.n	d05fcfd6 <_printf_i+0xce>
d05fcfc0:	6805      	ldr	r5, [r0, #0]
d05fcfc2:	600b      	str	r3, [r1, #0]
d05fcfc4:	2d00      	cmp	r5, #0
d05fcfc6:	da03      	bge.n	d05fcfd0 <_printf_i+0xc8>
d05fcfc8:	232d      	movs	r3, #45	; 0x2d
d05fcfca:	426d      	negs	r5, r5
d05fcfcc:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05fcfd0:	485e      	ldr	r0, [pc, #376]	; (d05fd14c <_printf_i+0x244>)
d05fcfd2:	230a      	movs	r3, #10
d05fcfd4:	e019      	b.n	d05fd00a <_printf_i+0x102>
d05fcfd6:	f015 0f40 	tst.w	r5, #64	; 0x40
d05fcfda:	6805      	ldr	r5, [r0, #0]
d05fcfdc:	600b      	str	r3, [r1, #0]
d05fcfde:	bf18      	it	ne
d05fcfe0:	b22d      	sxthne	r5, r5
d05fcfe2:	e7ef      	b.n	d05fcfc4 <_printf_i+0xbc>
d05fcfe4:	680b      	ldr	r3, [r1, #0]
d05fcfe6:	6825      	ldr	r5, [r4, #0]
d05fcfe8:	1d18      	adds	r0, r3, #4
d05fcfea:	6008      	str	r0, [r1, #0]
d05fcfec:	0628      	lsls	r0, r5, #24
d05fcfee:	d501      	bpl.n	d05fcff4 <_printf_i+0xec>
d05fcff0:	681d      	ldr	r5, [r3, #0]
d05fcff2:	e002      	b.n	d05fcffa <_printf_i+0xf2>
d05fcff4:	0669      	lsls	r1, r5, #25
d05fcff6:	d5fb      	bpl.n	d05fcff0 <_printf_i+0xe8>
d05fcff8:	881d      	ldrh	r5, [r3, #0]
d05fcffa:	4854      	ldr	r0, [pc, #336]	; (d05fd14c <_printf_i+0x244>)
d05fcffc:	2f6f      	cmp	r7, #111	; 0x6f
d05fcffe:	bf0c      	ite	eq
d05fd000:	2308      	moveq	r3, #8
d05fd002:	230a      	movne	r3, #10
d05fd004:	2100      	movs	r1, #0
d05fd006:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d05fd00a:	6866      	ldr	r6, [r4, #4]
d05fd00c:	60a6      	str	r6, [r4, #8]
d05fd00e:	2e00      	cmp	r6, #0
d05fd010:	bfa2      	ittt	ge
d05fd012:	6821      	ldrge	r1, [r4, #0]
d05fd014:	f021 0104 	bicge.w	r1, r1, #4
d05fd018:	6021      	strge	r1, [r4, #0]
d05fd01a:	b90d      	cbnz	r5, d05fd020 <_printf_i+0x118>
d05fd01c:	2e00      	cmp	r6, #0
d05fd01e:	d04d      	beq.n	d05fd0bc <_printf_i+0x1b4>
d05fd020:	4616      	mov	r6, r2
d05fd022:	fbb5 f1f3 	udiv	r1, r5, r3
d05fd026:	fb03 5711 	mls	r7, r3, r1, r5
d05fd02a:	5dc7      	ldrb	r7, [r0, r7]
d05fd02c:	f806 7d01 	strb.w	r7, [r6, #-1]!
d05fd030:	462f      	mov	r7, r5
d05fd032:	42bb      	cmp	r3, r7
d05fd034:	460d      	mov	r5, r1
d05fd036:	d9f4      	bls.n	d05fd022 <_printf_i+0x11a>
d05fd038:	2b08      	cmp	r3, #8
d05fd03a:	d10b      	bne.n	d05fd054 <_printf_i+0x14c>
d05fd03c:	6823      	ldr	r3, [r4, #0]
d05fd03e:	07df      	lsls	r7, r3, #31
d05fd040:	d508      	bpl.n	d05fd054 <_printf_i+0x14c>
d05fd042:	6923      	ldr	r3, [r4, #16]
d05fd044:	6861      	ldr	r1, [r4, #4]
d05fd046:	4299      	cmp	r1, r3
d05fd048:	bfde      	ittt	le
d05fd04a:	2330      	movle	r3, #48	; 0x30
d05fd04c:	f806 3c01 	strble.w	r3, [r6, #-1]
d05fd050:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d05fd054:	1b92      	subs	r2, r2, r6
d05fd056:	6122      	str	r2, [r4, #16]
d05fd058:	f8cd a000 	str.w	sl, [sp]
d05fd05c:	464b      	mov	r3, r9
d05fd05e:	aa03      	add	r2, sp, #12
d05fd060:	4621      	mov	r1, r4
d05fd062:	4640      	mov	r0, r8
d05fd064:	f7ff fee2 	bl	d05fce2c <_printf_common>
d05fd068:	3001      	adds	r0, #1
d05fd06a:	d14c      	bne.n	d05fd106 <_printf_i+0x1fe>
d05fd06c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05fd070:	b004      	add	sp, #16
d05fd072:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05fd076:	4835      	ldr	r0, [pc, #212]	; (d05fd14c <_printf_i+0x244>)
d05fd078:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d05fd07c:	6823      	ldr	r3, [r4, #0]
d05fd07e:	680e      	ldr	r6, [r1, #0]
d05fd080:	061f      	lsls	r7, r3, #24
d05fd082:	f856 5b04 	ldr.w	r5, [r6], #4
d05fd086:	600e      	str	r6, [r1, #0]
d05fd088:	d514      	bpl.n	d05fd0b4 <_printf_i+0x1ac>
d05fd08a:	07d9      	lsls	r1, r3, #31
d05fd08c:	bf44      	itt	mi
d05fd08e:	f043 0320 	orrmi.w	r3, r3, #32
d05fd092:	6023      	strmi	r3, [r4, #0]
d05fd094:	b91d      	cbnz	r5, d05fd09e <_printf_i+0x196>
d05fd096:	6823      	ldr	r3, [r4, #0]
d05fd098:	f023 0320 	bic.w	r3, r3, #32
d05fd09c:	6023      	str	r3, [r4, #0]
d05fd09e:	2310      	movs	r3, #16
d05fd0a0:	e7b0      	b.n	d05fd004 <_printf_i+0xfc>
d05fd0a2:	6823      	ldr	r3, [r4, #0]
d05fd0a4:	f043 0320 	orr.w	r3, r3, #32
d05fd0a8:	6023      	str	r3, [r4, #0]
d05fd0aa:	2378      	movs	r3, #120	; 0x78
d05fd0ac:	4828      	ldr	r0, [pc, #160]	; (d05fd150 <_printf_i+0x248>)
d05fd0ae:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d05fd0b2:	e7e3      	b.n	d05fd07c <_printf_i+0x174>
d05fd0b4:	065e      	lsls	r6, r3, #25
d05fd0b6:	bf48      	it	mi
d05fd0b8:	b2ad      	uxthmi	r5, r5
d05fd0ba:	e7e6      	b.n	d05fd08a <_printf_i+0x182>
d05fd0bc:	4616      	mov	r6, r2
d05fd0be:	e7bb      	b.n	d05fd038 <_printf_i+0x130>
d05fd0c0:	680b      	ldr	r3, [r1, #0]
d05fd0c2:	6826      	ldr	r6, [r4, #0]
d05fd0c4:	6960      	ldr	r0, [r4, #20]
d05fd0c6:	1d1d      	adds	r5, r3, #4
d05fd0c8:	600d      	str	r5, [r1, #0]
d05fd0ca:	0635      	lsls	r5, r6, #24
d05fd0cc:	681b      	ldr	r3, [r3, #0]
d05fd0ce:	d501      	bpl.n	d05fd0d4 <_printf_i+0x1cc>
d05fd0d0:	6018      	str	r0, [r3, #0]
d05fd0d2:	e002      	b.n	d05fd0da <_printf_i+0x1d2>
d05fd0d4:	0671      	lsls	r1, r6, #25
d05fd0d6:	d5fb      	bpl.n	d05fd0d0 <_printf_i+0x1c8>
d05fd0d8:	8018      	strh	r0, [r3, #0]
d05fd0da:	2300      	movs	r3, #0
d05fd0dc:	6123      	str	r3, [r4, #16]
d05fd0de:	4616      	mov	r6, r2
d05fd0e0:	e7ba      	b.n	d05fd058 <_printf_i+0x150>
d05fd0e2:	680b      	ldr	r3, [r1, #0]
d05fd0e4:	1d1a      	adds	r2, r3, #4
d05fd0e6:	600a      	str	r2, [r1, #0]
d05fd0e8:	681e      	ldr	r6, [r3, #0]
d05fd0ea:	6862      	ldr	r2, [r4, #4]
d05fd0ec:	2100      	movs	r1, #0
d05fd0ee:	4630      	mov	r0, r6
d05fd0f0:	f000 f906 	bl	d05fd300 <memchr>
d05fd0f4:	b108      	cbz	r0, d05fd0fa <_printf_i+0x1f2>
d05fd0f6:	1b80      	subs	r0, r0, r6
d05fd0f8:	6060      	str	r0, [r4, #4]
d05fd0fa:	6863      	ldr	r3, [r4, #4]
d05fd0fc:	6123      	str	r3, [r4, #16]
d05fd0fe:	2300      	movs	r3, #0
d05fd100:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05fd104:	e7a8      	b.n	d05fd058 <_printf_i+0x150>
d05fd106:	6923      	ldr	r3, [r4, #16]
d05fd108:	4632      	mov	r2, r6
d05fd10a:	4649      	mov	r1, r9
d05fd10c:	4640      	mov	r0, r8
d05fd10e:	47d0      	blx	sl
d05fd110:	3001      	adds	r0, #1
d05fd112:	d0ab      	beq.n	d05fd06c <_printf_i+0x164>
d05fd114:	6823      	ldr	r3, [r4, #0]
d05fd116:	079b      	lsls	r3, r3, #30
d05fd118:	d413      	bmi.n	d05fd142 <_printf_i+0x23a>
d05fd11a:	68e0      	ldr	r0, [r4, #12]
d05fd11c:	9b03      	ldr	r3, [sp, #12]
d05fd11e:	4298      	cmp	r0, r3
d05fd120:	bfb8      	it	lt
d05fd122:	4618      	movlt	r0, r3
d05fd124:	e7a4      	b.n	d05fd070 <_printf_i+0x168>
d05fd126:	2301      	movs	r3, #1
d05fd128:	4632      	mov	r2, r6
d05fd12a:	4649      	mov	r1, r9
d05fd12c:	4640      	mov	r0, r8
d05fd12e:	47d0      	blx	sl
d05fd130:	3001      	adds	r0, #1
d05fd132:	d09b      	beq.n	d05fd06c <_printf_i+0x164>
d05fd134:	3501      	adds	r5, #1
d05fd136:	68e3      	ldr	r3, [r4, #12]
d05fd138:	9903      	ldr	r1, [sp, #12]
d05fd13a:	1a5b      	subs	r3, r3, r1
d05fd13c:	42ab      	cmp	r3, r5
d05fd13e:	dcf2      	bgt.n	d05fd126 <_printf_i+0x21e>
d05fd140:	e7eb      	b.n	d05fd11a <_printf_i+0x212>
d05fd142:	2500      	movs	r5, #0
d05fd144:	f104 0619 	add.w	r6, r4, #25
d05fd148:	e7f5      	b.n	d05fd136 <_printf_i+0x22e>
d05fd14a:	bf00      	nop
d05fd14c:	d05fd579 	.word	0xd05fd579
d05fd150:	d05fd58a 	.word	0xd05fd58a

d05fd154 <_putc_r>:
d05fd154:	b570      	push	{r4, r5, r6, lr}
d05fd156:	460d      	mov	r5, r1
d05fd158:	4614      	mov	r4, r2
d05fd15a:	4606      	mov	r6, r0
d05fd15c:	b118      	cbz	r0, d05fd166 <_putc_r+0x12>
d05fd15e:	6983      	ldr	r3, [r0, #24]
d05fd160:	b90b      	cbnz	r3, d05fd166 <_putc_r+0x12>
d05fd162:	f7ff fb53 	bl	d05fc80c <__sinit>
d05fd166:	4b1c      	ldr	r3, [pc, #112]	; (d05fd1d8 <_putc_r+0x84>)
d05fd168:	429c      	cmp	r4, r3
d05fd16a:	d124      	bne.n	d05fd1b6 <_putc_r+0x62>
d05fd16c:	6874      	ldr	r4, [r6, #4]
d05fd16e:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05fd170:	07d8      	lsls	r0, r3, #31
d05fd172:	d405      	bmi.n	d05fd180 <_putc_r+0x2c>
d05fd174:	89a3      	ldrh	r3, [r4, #12]
d05fd176:	0599      	lsls	r1, r3, #22
d05fd178:	d402      	bmi.n	d05fd180 <_putc_r+0x2c>
d05fd17a:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05fd17c:	f7ff fbe4 	bl	d05fc948 <__retarget_lock_acquire_recursive>
d05fd180:	68a3      	ldr	r3, [r4, #8]
d05fd182:	3b01      	subs	r3, #1
d05fd184:	2b00      	cmp	r3, #0
d05fd186:	60a3      	str	r3, [r4, #8]
d05fd188:	da05      	bge.n	d05fd196 <_putc_r+0x42>
d05fd18a:	69a2      	ldr	r2, [r4, #24]
d05fd18c:	4293      	cmp	r3, r2
d05fd18e:	db1c      	blt.n	d05fd1ca <_putc_r+0x76>
d05fd190:	b2eb      	uxtb	r3, r5
d05fd192:	2b0a      	cmp	r3, #10
d05fd194:	d019      	beq.n	d05fd1ca <_putc_r+0x76>
d05fd196:	6823      	ldr	r3, [r4, #0]
d05fd198:	1c5a      	adds	r2, r3, #1
d05fd19a:	6022      	str	r2, [r4, #0]
d05fd19c:	701d      	strb	r5, [r3, #0]
d05fd19e:	b2ed      	uxtb	r5, r5
d05fd1a0:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05fd1a2:	07da      	lsls	r2, r3, #31
d05fd1a4:	d405      	bmi.n	d05fd1b2 <_putc_r+0x5e>
d05fd1a6:	89a3      	ldrh	r3, [r4, #12]
d05fd1a8:	059b      	lsls	r3, r3, #22
d05fd1aa:	d402      	bmi.n	d05fd1b2 <_putc_r+0x5e>
d05fd1ac:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05fd1ae:	f7ff fbcc 	bl	d05fc94a <__retarget_lock_release_recursive>
d05fd1b2:	4628      	mov	r0, r5
d05fd1b4:	bd70      	pop	{r4, r5, r6, pc}
d05fd1b6:	4b09      	ldr	r3, [pc, #36]	; (d05fd1dc <_putc_r+0x88>)
d05fd1b8:	429c      	cmp	r4, r3
d05fd1ba:	d101      	bne.n	d05fd1c0 <_putc_r+0x6c>
d05fd1bc:	68b4      	ldr	r4, [r6, #8]
d05fd1be:	e7d6      	b.n	d05fd16e <_putc_r+0x1a>
d05fd1c0:	4b07      	ldr	r3, [pc, #28]	; (d05fd1e0 <_putc_r+0x8c>)
d05fd1c2:	429c      	cmp	r4, r3
d05fd1c4:	bf08      	it	eq
d05fd1c6:	68f4      	ldreq	r4, [r6, #12]
d05fd1c8:	e7d1      	b.n	d05fd16e <_putc_r+0x1a>
d05fd1ca:	4629      	mov	r1, r5
d05fd1cc:	4622      	mov	r2, r4
d05fd1ce:	4630      	mov	r0, r6
d05fd1d0:	f7ff f942 	bl	d05fc458 <__swbuf_r>
d05fd1d4:	4605      	mov	r5, r0
d05fd1d6:	e7e3      	b.n	d05fd1a0 <_putc_r+0x4c>
d05fd1d8:	d05fd528 	.word	0xd05fd528
d05fd1dc:	d05fd548 	.word	0xd05fd548
d05fd1e0:	d05fd508 	.word	0xd05fd508

d05fd1e4 <__sread>:
d05fd1e4:	b510      	push	{r4, lr}
d05fd1e6:	460c      	mov	r4, r1
d05fd1e8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05fd1ec:	f000 f8e4 	bl	d05fd3b8 <_read_r>
d05fd1f0:	2800      	cmp	r0, #0
d05fd1f2:	bfab      	itete	ge
d05fd1f4:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d05fd1f6:	89a3      	ldrhlt	r3, [r4, #12]
d05fd1f8:	181b      	addge	r3, r3, r0
d05fd1fa:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d05fd1fe:	bfac      	ite	ge
d05fd200:	6563      	strge	r3, [r4, #84]	; 0x54
d05fd202:	81a3      	strhlt	r3, [r4, #12]
d05fd204:	bd10      	pop	{r4, pc}

d05fd206 <__swrite>:
d05fd206:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05fd20a:	461f      	mov	r7, r3
d05fd20c:	898b      	ldrh	r3, [r1, #12]
d05fd20e:	05db      	lsls	r3, r3, #23
d05fd210:	4605      	mov	r5, r0
d05fd212:	460c      	mov	r4, r1
d05fd214:	4616      	mov	r6, r2
d05fd216:	d505      	bpl.n	d05fd224 <__swrite+0x1e>
d05fd218:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05fd21c:	2302      	movs	r3, #2
d05fd21e:	2200      	movs	r2, #0
d05fd220:	f000 f856 	bl	d05fd2d0 <_lseek_r>
d05fd224:	89a3      	ldrh	r3, [r4, #12]
d05fd226:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d05fd22a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d05fd22e:	81a3      	strh	r3, [r4, #12]
d05fd230:	4632      	mov	r2, r6
d05fd232:	463b      	mov	r3, r7
d05fd234:	4628      	mov	r0, r5
d05fd236:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d05fd23a:	f7fe beff 	b.w	d05fc03c <_write_r>

d05fd23e <__sseek>:
d05fd23e:	b510      	push	{r4, lr}
d05fd240:	460c      	mov	r4, r1
d05fd242:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05fd246:	f000 f843 	bl	d05fd2d0 <_lseek_r>
d05fd24a:	1c43      	adds	r3, r0, #1
d05fd24c:	89a3      	ldrh	r3, [r4, #12]
d05fd24e:	bf15      	itete	ne
d05fd250:	6560      	strne	r0, [r4, #84]	; 0x54
d05fd252:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d05fd256:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d05fd25a:	81a3      	strheq	r3, [r4, #12]
d05fd25c:	bf18      	it	ne
d05fd25e:	81a3      	strhne	r3, [r4, #12]
d05fd260:	bd10      	pop	{r4, pc}

d05fd262 <__sclose>:
d05fd262:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05fd266:	f000 b801 	b.w	d05fd26c <_close_r>
	...

d05fd26c <_close_r>:
d05fd26c:	b538      	push	{r3, r4, r5, lr}
d05fd26e:	4d06      	ldr	r5, [pc, #24]	; (d05fd288 <_close_r+0x1c>)
d05fd270:	2300      	movs	r3, #0
d05fd272:	4604      	mov	r4, r0
d05fd274:	4608      	mov	r0, r1
d05fd276:	602b      	str	r3, [r5, #0]
d05fd278:	f7fe ff1a 	bl	d05fc0b0 <_close>
d05fd27c:	1c43      	adds	r3, r0, #1
d05fd27e:	d102      	bne.n	d05fd286 <_close_r+0x1a>
d05fd280:	682b      	ldr	r3, [r5, #0]
d05fd282:	b103      	cbz	r3, d05fd286 <_close_r+0x1a>
d05fd284:	6023      	str	r3, [r4, #0]
d05fd286:	bd38      	pop	{r3, r4, r5, pc}
d05fd288:	d05fd624 	.word	0xd05fd624

d05fd28c <_fstat_r>:
d05fd28c:	b538      	push	{r3, r4, r5, lr}
d05fd28e:	4d07      	ldr	r5, [pc, #28]	; (d05fd2ac <_fstat_r+0x20>)
d05fd290:	2300      	movs	r3, #0
d05fd292:	4604      	mov	r4, r0
d05fd294:	4608      	mov	r0, r1
d05fd296:	4611      	mov	r1, r2
d05fd298:	602b      	str	r3, [r5, #0]
d05fd29a:	f7fe ff0d 	bl	d05fc0b8 <_fstat>
d05fd29e:	1c43      	adds	r3, r0, #1
d05fd2a0:	d102      	bne.n	d05fd2a8 <_fstat_r+0x1c>
d05fd2a2:	682b      	ldr	r3, [r5, #0]
d05fd2a4:	b103      	cbz	r3, d05fd2a8 <_fstat_r+0x1c>
d05fd2a6:	6023      	str	r3, [r4, #0]
d05fd2a8:	bd38      	pop	{r3, r4, r5, pc}
d05fd2aa:	bf00      	nop
d05fd2ac:	d05fd624 	.word	0xd05fd624

d05fd2b0 <_isatty_r>:
d05fd2b0:	b538      	push	{r3, r4, r5, lr}
d05fd2b2:	4d06      	ldr	r5, [pc, #24]	; (d05fd2cc <_isatty_r+0x1c>)
d05fd2b4:	2300      	movs	r3, #0
d05fd2b6:	4604      	mov	r4, r0
d05fd2b8:	4608      	mov	r0, r1
d05fd2ba:	602b      	str	r3, [r5, #0]
d05fd2bc:	f7fe ff24 	bl	d05fc108 <_isatty>
d05fd2c0:	1c43      	adds	r3, r0, #1
d05fd2c2:	d102      	bne.n	d05fd2ca <_isatty_r+0x1a>
d05fd2c4:	682b      	ldr	r3, [r5, #0]
d05fd2c6:	b103      	cbz	r3, d05fd2ca <_isatty_r+0x1a>
d05fd2c8:	6023      	str	r3, [r4, #0]
d05fd2ca:	bd38      	pop	{r3, r4, r5, pc}
d05fd2cc:	d05fd624 	.word	0xd05fd624

d05fd2d0 <_lseek_r>:
d05fd2d0:	b538      	push	{r3, r4, r5, lr}
d05fd2d2:	4d07      	ldr	r5, [pc, #28]	; (d05fd2f0 <_lseek_r+0x20>)
d05fd2d4:	4604      	mov	r4, r0
d05fd2d6:	4608      	mov	r0, r1
d05fd2d8:	4611      	mov	r1, r2
d05fd2da:	2200      	movs	r2, #0
d05fd2dc:	602a      	str	r2, [r5, #0]
d05fd2de:	461a      	mov	r2, r3
d05fd2e0:	f7fe fef0 	bl	d05fc0c4 <_lseek>
d05fd2e4:	1c43      	adds	r3, r0, #1
d05fd2e6:	d102      	bne.n	d05fd2ee <_lseek_r+0x1e>
d05fd2e8:	682b      	ldr	r3, [r5, #0]
d05fd2ea:	b103      	cbz	r3, d05fd2ee <_lseek_r+0x1e>
d05fd2ec:	6023      	str	r3, [r4, #0]
d05fd2ee:	bd38      	pop	{r3, r4, r5, pc}
d05fd2f0:	d05fd624 	.word	0xd05fd624
	...

d05fd300 <memchr>:
d05fd300:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05fd304:	2a10      	cmp	r2, #16
d05fd306:	db2b      	blt.n	d05fd360 <memchr+0x60>
d05fd308:	f010 0f07 	tst.w	r0, #7
d05fd30c:	d008      	beq.n	d05fd320 <memchr+0x20>
d05fd30e:	f810 3b01 	ldrb.w	r3, [r0], #1
d05fd312:	3a01      	subs	r2, #1
d05fd314:	428b      	cmp	r3, r1
d05fd316:	d02d      	beq.n	d05fd374 <memchr+0x74>
d05fd318:	f010 0f07 	tst.w	r0, #7
d05fd31c:	b342      	cbz	r2, d05fd370 <memchr+0x70>
d05fd31e:	d1f6      	bne.n	d05fd30e <memchr+0xe>
d05fd320:	b4f0      	push	{r4, r5, r6, r7}
d05fd322:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d05fd326:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d05fd32a:	f022 0407 	bic.w	r4, r2, #7
d05fd32e:	f07f 0700 	mvns.w	r7, #0
d05fd332:	2300      	movs	r3, #0
d05fd334:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d05fd338:	3c08      	subs	r4, #8
d05fd33a:	ea85 0501 	eor.w	r5, r5, r1
d05fd33e:	ea86 0601 	eor.w	r6, r6, r1
d05fd342:	fa85 f547 	uadd8	r5, r5, r7
d05fd346:	faa3 f587 	sel	r5, r3, r7
d05fd34a:	fa86 f647 	uadd8	r6, r6, r7
d05fd34e:	faa5 f687 	sel	r6, r5, r7
d05fd352:	b98e      	cbnz	r6, d05fd378 <memchr+0x78>
d05fd354:	d1ee      	bne.n	d05fd334 <memchr+0x34>
d05fd356:	bcf0      	pop	{r4, r5, r6, r7}
d05fd358:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05fd35c:	f002 0207 	and.w	r2, r2, #7
d05fd360:	b132      	cbz	r2, d05fd370 <memchr+0x70>
d05fd362:	f810 3b01 	ldrb.w	r3, [r0], #1
d05fd366:	3a01      	subs	r2, #1
d05fd368:	ea83 0301 	eor.w	r3, r3, r1
d05fd36c:	b113      	cbz	r3, d05fd374 <memchr+0x74>
d05fd36e:	d1f8      	bne.n	d05fd362 <memchr+0x62>
d05fd370:	2000      	movs	r0, #0
d05fd372:	4770      	bx	lr
d05fd374:	3801      	subs	r0, #1
d05fd376:	4770      	bx	lr
d05fd378:	2d00      	cmp	r5, #0
d05fd37a:	bf06      	itte	eq
d05fd37c:	4635      	moveq	r5, r6
d05fd37e:	3803      	subeq	r0, #3
d05fd380:	3807      	subne	r0, #7
d05fd382:	f015 0f01 	tst.w	r5, #1
d05fd386:	d107      	bne.n	d05fd398 <memchr+0x98>
d05fd388:	3001      	adds	r0, #1
d05fd38a:	f415 7f80 	tst.w	r5, #256	; 0x100
d05fd38e:	bf02      	ittt	eq
d05fd390:	3001      	addeq	r0, #1
d05fd392:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d05fd396:	3001      	addeq	r0, #1
d05fd398:	bcf0      	pop	{r4, r5, r6, r7}
d05fd39a:	3801      	subs	r0, #1
d05fd39c:	4770      	bx	lr
d05fd39e:	bf00      	nop

d05fd3a0 <__malloc_lock>:
d05fd3a0:	4801      	ldr	r0, [pc, #4]	; (d05fd3a8 <__malloc_lock+0x8>)
d05fd3a2:	f7ff bad1 	b.w	d05fc948 <__retarget_lock_acquire_recursive>
d05fd3a6:	bf00      	nop
d05fd3a8:	d05fd61c 	.word	0xd05fd61c

d05fd3ac <__malloc_unlock>:
d05fd3ac:	4801      	ldr	r0, [pc, #4]	; (d05fd3b4 <__malloc_unlock+0x8>)
d05fd3ae:	f7ff bacc 	b.w	d05fc94a <__retarget_lock_release_recursive>
d05fd3b2:	bf00      	nop
d05fd3b4:	d05fd61c 	.word	0xd05fd61c

d05fd3b8 <_read_r>:
d05fd3b8:	b538      	push	{r3, r4, r5, lr}
d05fd3ba:	4d07      	ldr	r5, [pc, #28]	; (d05fd3d8 <_read_r+0x20>)
d05fd3bc:	4604      	mov	r4, r0
d05fd3be:	4608      	mov	r0, r1
d05fd3c0:	4611      	mov	r1, r2
d05fd3c2:	2200      	movs	r2, #0
d05fd3c4:	602a      	str	r2, [r5, #0]
d05fd3c6:	461a      	mov	r2, r3
d05fd3c8:	f7fe fe68 	bl	d05fc09c <_read>
d05fd3cc:	1c43      	adds	r3, r0, #1
d05fd3ce:	d102      	bne.n	d05fd3d6 <_read_r+0x1e>
d05fd3d0:	682b      	ldr	r3, [r5, #0]
d05fd3d2:	b103      	cbz	r3, d05fd3d6 <_read_r+0x1e>
d05fd3d4:	6023      	str	r3, [r4, #0]
d05fd3d6:	bd38      	pop	{r3, r4, r5, pc}
d05fd3d8:	d05fd624 	.word	0xd05fd624
d05fd3dc:	6c707041 	.word	0x6c707041
d05fd3e0:	73207465 	.word	0x73207465
d05fd3e4:	20737961 	.word	0x20737961
d05fd3e8:	4c4c4548 	.word	0x4c4c4548
d05fd3ec:	0a21214f 	.word	0x0a21214f
d05fd3f0:	00000000 	.word	0x00000000
d05fd3f4:	20555043 	.word	0x20555043
d05fd3f8:	74736574 	.word	0x74736574
d05fd3fc:	20303420 	.word	0x20303420
d05fd400:	3128202b 	.word	0x3128202b
d05fd404:	202a2032 	.word	0x202a2032
d05fd408:	3d202934 	.word	0x3d202934
d05fd40c:	646c2520 	.word	0x646c2520
d05fd410:	00000a0a 	.word	0x00000a0a
d05fd414:	2a2a2a2a 	.word	0x2a2a2a2a
d05fd418:	43204320 	.word	0x43204320
d05fd41c:	414d4d4f 	.word	0x414d4d4f
d05fd420:	5420444e 	.word	0x5420444e
d05fd424:	20545345 	.word	0x20545345
d05fd428:	0a2a2a2a 	.word	0x0a2a2a2a
d05fd42c:	6d6f7246 	.word	0x6d6f7246
d05fd430:	64697320 	.word	0x64697320
d05fd434:	2f786f62 	.word	0x2f786f62
d05fd438:	66202f63 	.word	0x66202f63
d05fd43c:	65646c6f 	.word	0x65646c6f
d05fd440:	00002172 	.word	0x00002172
d05fd444:	2a2a2a2a 	.word	0x2a2a2a2a
d05fd448:	43204320 	.word	0x43204320
d05fd44c:	414d4d4f 	.word	0x414d4d4f
d05fd450:	5420444e 	.word	0x5420444e
d05fd454:	20545345 	.word	0x20545345
d05fd458:	0a2a2a2a 	.word	0x0a2a2a2a
d05fd45c:	6c756f77 	.word	0x6c756f77
d05fd460:	65622064 	.word	0x65622064
d05fd464:	616c6320 	.word	0x616c6320
d05fd468:	2173706d 	.word	0x2173706d
d05fd46c:	00000000 	.word	0x00000000
d05fd470:	2a2a2a2a 	.word	0x2a2a2a2a
d05fd474:	43204320 	.word	0x43204320
d05fd478:	414d4d4f 	.word	0x414d4d4f
d05fd47c:	5420444e 	.word	0x5420444e
d05fd480:	20545345 	.word	0x20545345
d05fd484:	0a2a2a2a 	.word	0x0a2a2a2a
d05fd488:	64616f6c 	.word	0x64616f6c
d05fd48c:	20676e69 	.word	0x20676e69
d05fd490:	6b726f77 	.word	0x6b726f77
d05fd494:	636e6562 	.word	0x636e6562
d05fd498:	293b2068 	.word	0x293b2068
d05fd49c:	75420a21 	.word	0x75420a21
d05fd4a0:	6f6e2074 	.word	0x6f6e2074
d05fd4a4:	6d412074 	.word	0x6d412074
d05fd4a8:	20616769 	.word	0x20616769
d05fd4ac:	656d6572 	.word	0x656d6572
d05fd4b0:	7265626d 	.word	0x7265626d
d05fd4b4:	68656820 	.word	0x68656820
d05fd4b8:	20490a65 	.word	0x20490a65
d05fd4bc:	45564f4c 	.word	0x45564f4c
d05fd4c0:	554f5920 	.word	0x554f5920
d05fd4c4:	4d4f4320 	.word	0x4d4f4320
d05fd4c8:	4f444f4d 	.word	0x4f444f4d
d05fd4cc:	21214552 	.word	0x21214552
d05fd4d0:	6968540a 	.word	0x6968540a
d05fd4d4:	73692073 	.word	0x73692073
d05fd4d8:	726f6620 	.word	0x726f6620
d05fd4dc:	756f7920 	.word	0x756f7920
d05fd4e0:	79756720 	.word	0x79756720
d05fd4e4:	00002173 	.word	0x00002173
d05fd4e8:	2d2d2d2d 	.word	0x2d2d2d2d
d05fd4ec:	43202d2d 	.word	0x43202d2d
d05fd4f0:	4c454d41 	.word	0x4c454d41
d05fd4f4:	4f4f5020 	.word	0x4f4f5020
d05fd4f8:	2d2d2d20 	.word	0x2d2d2d20
d05fd4fc:	2d2d2d2d 	.word	0x2d2d2d2d
d05fd500:	00000000 	.word	0x00000000

d05fd504 <_global_impure_ptr>:
d05fd504:	d05fd5a8                                .._.

d05fd508 <__sf_fake_stderr>:
	...

d05fd528 <__sf_fake_stdin>:
	...

d05fd548 <__sf_fake_stdout>:
	...
d05fd568:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d05fd578:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d05fd588:	31300046 35343332 39383736 64636261     F.0123456789abcd
d05fd598:	                                         ef.

Disassembly of section .init:

d05fd59c <_init>:
d05fd59c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05fd59e:	bf00      	nop

Disassembly of section .fini:

d05fd5a0 <_fini>:
d05fd5a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05fd5a2:	bf00      	nop
