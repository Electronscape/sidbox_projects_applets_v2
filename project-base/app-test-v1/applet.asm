
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d05e0010 <applet_entry>:
d05e0010:	b570      	push	{r4, r5, r6, lr}
d05e0012:	4e09      	ldr	r6, [pc, #36]	; (d05e0038 <applet_entry+0x28>)
d05e0014:	460d      	mov	r5, r1
d05e0016:	4604      	mov	r4, r0
d05e0018:	2100      	movs	r1, #0
d05e001a:	6833      	ldr	r3, [r6, #0]
d05e001c:	6898      	ldr	r0, [r3, #8]
d05e001e:	f000 feed 	bl	d05e0dfc <setbuf>
d05e0022:	6833      	ldr	r3, [r6, #0]
d05e0024:	2100      	movs	r1, #0
d05e0026:	68d8      	ldr	r0, [r3, #12]
d05e0028:	f000 fee8 	bl	d05e0dfc <setbuf>
d05e002c:	4629      	mov	r1, r5
d05e002e:	4620      	mov	r0, r4
d05e0030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d05e0034:	f000 bc8e 	b.w	d05e0954 <main>
d05e0038:	d05e2934 	.word	0xd05e2934

d05e003c <_write_r>:
d05e003c:	3901      	subs	r1, #1
d05e003e:	2901      	cmp	r1, #1
d05e0040:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0042:	d81f      	bhi.n	d05e0084 <_write_r+0x48>
d05e0044:	b1e2      	cbz	r2, d05e0080 <_write_r+0x44>
d05e0046:	461c      	mov	r4, r3
d05e0048:	b1d3      	cbz	r3, d05e0080 <_write_r+0x44>
d05e004a:	4d12      	ldr	r5, [pc, #72]	; (d05e0094 <_write_r+0x58>)
d05e004c:	682e      	ldr	r6, [r5, #0]
d05e004e:	b9ae      	cbnz	r6, d05e007c <_write_r+0x40>
d05e0050:	4f11      	ldr	r7, [pc, #68]	; (d05e0098 <_write_r+0x5c>)
d05e0052:	2301      	movs	r3, #1
d05e0054:	4611      	mov	r1, r2
d05e0056:	4630      	mov	r0, r6
d05e0058:	602b      	str	r3, [r5, #0]
d05e005a:	4622      	mov	r2, r4
d05e005c:	7a3b      	ldrb	r3, [r7, #8]
d05e005e:	f897 c009 	ldrb.w	ip, [r7, #9]
d05e0062:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d05e0066:	f897 c00a 	ldrb.w	ip, [r7, #10]
d05e006a:	7aff      	ldrb	r7, [r7, #11]
d05e006c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d05e0070:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d05e0074:	681b      	ldr	r3, [r3, #0]
d05e0076:	685b      	ldr	r3, [r3, #4]
d05e0078:	4798      	blx	r3
d05e007a:	602e      	str	r6, [r5, #0]
d05e007c:	4620      	mov	r0, r4
d05e007e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0080:	2000      	movs	r0, #0
d05e0082:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0084:	f000 fe10 	bl	d05e0ca8 <__errno>
d05e0088:	2209      	movs	r2, #9
d05e008a:	4603      	mov	r3, r0
d05e008c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0090:	601a      	str	r2, [r3, #0]
d05e0092:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0094:	d05e299c 	.word	0xd05e299c
d05e0098:	2001f000 	.word	0x2001f000

d05e009c <_read>:
d05e009c:	b508      	push	{r3, lr}
d05e009e:	f000 fe03 	bl	d05e0ca8 <__errno>
d05e00a2:	2258      	movs	r2, #88	; 0x58
d05e00a4:	4603      	mov	r3, r0
d05e00a6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e00aa:	601a      	str	r2, [r3, #0]
d05e00ac:	bd08      	pop	{r3, pc}
d05e00ae:	bf00      	nop

d05e00b0 <_close>:
d05e00b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e00b4:	4770      	bx	lr
d05e00b6:	bf00      	nop

d05e00b8 <_fstat>:
d05e00b8:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d05e00bc:	2000      	movs	r0, #0
d05e00be:	604b      	str	r3, [r1, #4]
d05e00c0:	4770      	bx	lr
d05e00c2:	bf00      	nop

d05e00c4 <_lseek>:
d05e00c4:	2000      	movs	r0, #0
d05e00c6:	4770      	bx	lr

d05e00c8 <_sbrk_r>:
d05e00c8:	4b0c      	ldr	r3, [pc, #48]	; (d05e00fc <_sbrk_r+0x34>)
d05e00ca:	4a0d      	ldr	r2, [pc, #52]	; (d05e0100 <_sbrk_r+0x38>)
d05e00cc:	6818      	ldr	r0, [r3, #0]
d05e00ce:	b510      	push	{r4, lr}
d05e00d0:	b918      	cbnz	r0, d05e00da <_sbrk_r+0x12>
d05e00d2:	1dd0      	adds	r0, r2, #7
d05e00d4:	f020 0007 	bic.w	r0, r0, #7
d05e00d8:	6018      	str	r0, [r3, #0]
d05e00da:	4401      	add	r1, r0
d05e00dc:	4c09      	ldr	r4, [pc, #36]	; (d05e0104 <_sbrk_r+0x3c>)
d05e00de:	42a1      	cmp	r1, r4
d05e00e0:	d803      	bhi.n	d05e00ea <_sbrk_r+0x22>
d05e00e2:	4291      	cmp	r1, r2
d05e00e4:	d301      	bcc.n	d05e00ea <_sbrk_r+0x22>
d05e00e6:	6019      	str	r1, [r3, #0]
d05e00e8:	bd10      	pop	{r4, pc}
d05e00ea:	f000 fddd 	bl	d05e0ca8 <__errno>
d05e00ee:	220c      	movs	r2, #12
d05e00f0:	4603      	mov	r3, r0
d05e00f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e00f6:	601a      	str	r2, [r3, #0]
d05e00f8:	bd10      	pop	{r4, pc}
d05e00fa:	bf00      	nop
d05e00fc:	d05e2998 	.word	0xd05e2998
d05e0100:	d05e5238 	.word	0xd05e5238
d05e0104:	d0600000 	.word	0xd0600000

d05e0108 <_isatty>:
d05e0108:	2001      	movs	r0, #1
d05e010a:	4770      	bx	lr

d05e010c <set_status>:
d05e010c:	b5f0      	push	{r4, r5, r6, r7, lr}
d05e010e:	4d1f      	ldr	r5, [pc, #124]	; (d05e018c <set_status+0x80>)
d05e0110:	b085      	sub	sp, #20
d05e0112:	4606      	mov	r6, r0
d05e0114:	4c1e      	ldr	r4, [pc, #120]	; (d05e0190 <set_status+0x84>)
d05e0116:	682b      	ldr	r3, [r5, #0]
d05e0118:	b16b      	cbz	r3, d05e0136 <set_status+0x2a>
d05e011a:	4618      	mov	r0, r3
d05e011c:	7a23      	ldrb	r3, [r4, #8]
d05e011e:	7a62      	ldrb	r2, [r4, #9]
d05e0120:	7aa1      	ldrb	r1, [r4, #10]
d05e0122:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0126:	7ae2      	ldrb	r2, [r4, #11]
d05e0128:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e012c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0130:	68db      	ldr	r3, [r3, #12]
d05e0132:	6d5b      	ldr	r3, [r3, #84]	; 0x54
d05e0134:	4798      	blx	r3
d05e0136:	7a22      	ldrb	r2, [r4, #8]
d05e0138:	f04f 0c10 	mov.w	ip, #16
d05e013c:	7a60      	ldrb	r0, [r4, #9]
d05e013e:	2121      	movs	r1, #33	; 0x21
d05e0140:	7aa3      	ldrb	r3, [r4, #10]
d05e0142:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
d05e0146:	7ae0      	ldrb	r0, [r4, #11]
d05e0148:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d05e014c:	4b11      	ldr	r3, [pc, #68]	; (d05e0194 <set_status+0x88>)
d05e014e:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d05e0152:	7818      	ldrb	r0, [r3, #0]
d05e0154:	f44f 73c6 	mov.w	r3, #396	; 0x18c
d05e0158:	68d7      	ldr	r7, [r2, #12]
d05e015a:	22da      	movs	r2, #218	; 0xda
d05e015c:	9102      	str	r1, [sp, #8]
d05e015e:	210c      	movs	r1, #12
d05e0160:	9601      	str	r6, [sp, #4]
d05e0162:	f8cd c000 	str.w	ip, [sp]
d05e0166:	69be      	ldr	r6, [r7, #24]
d05e0168:	47b0      	blx	r6
d05e016a:	7a23      	ldrb	r3, [r4, #8]
d05e016c:	7a62      	ldrb	r2, [r4, #9]
d05e016e:	7aa1      	ldrb	r1, [r4, #10]
d05e0170:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0174:	7ae2      	ldrb	r2, [r4, #11]
d05e0176:	6028      	str	r0, [r5, #0]
d05e0178:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e017c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0180:	68db      	ldr	r3, [r3, #12]
d05e0182:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05e0184:	b005      	add	sp, #20
d05e0186:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d05e018a:	4718      	bx	r3
d05e018c:	d05e3218 	.word	0xd05e3218
d05e0190:	2001f000 	.word	0x2001f000
d05e0194:	d05e31b5 	.word	0xd05e31b5

d05e0198 <set_document>:
d05e0198:	b5f0      	push	{r4, r5, r6, r7, lr}
d05e019a:	4d30      	ldr	r5, [pc, #192]	; (d05e025c <set_document+0xc4>)
d05e019c:	b085      	sub	sp, #20
d05e019e:	4607      	mov	r7, r0
d05e01a0:	4c2f      	ldr	r4, [pc, #188]	; (d05e0260 <set_document+0xc8>)
d05e01a2:	682b      	ldr	r3, [r5, #0]
d05e01a4:	b16b      	cbz	r3, d05e01c2 <set_document+0x2a>
d05e01a6:	4618      	mov	r0, r3
d05e01a8:	7a23      	ldrb	r3, [r4, #8]
d05e01aa:	7a62      	ldrb	r2, [r4, #9]
d05e01ac:	7aa1      	ldrb	r1, [r4, #10]
d05e01ae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e01b2:	7ae2      	ldrb	r2, [r4, #11]
d05e01b4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e01b8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e01bc:	68db      	ldr	r3, [r3, #12]
d05e01be:	6d5b      	ldr	r3, [r3, #84]	; 0x54
d05e01c0:	4798      	blx	r3
d05e01c2:	7a22      	ldrb	r2, [r4, #8]
d05e01c4:	f04f 0ea8 	mov.w	lr, #168	; 0xa8
d05e01c8:	7a60      	ldrb	r0, [r4, #9]
d05e01ca:	2600      	movs	r6, #0
d05e01cc:	7aa3      	ldrb	r3, [r4, #10]
d05e01ce:	2141      	movs	r1, #65	; 0x41
d05e01d0:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
d05e01d4:	7ae0      	ldrb	r0, [r4, #11]
d05e01d6:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d05e01da:	4b22      	ldr	r3, [pc, #136]	; (d05e0264 <set_document+0xcc>)
d05e01dc:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d05e01e0:	7818      	ldrb	r0, [r3, #0]
d05e01e2:	f44f 73c6 	mov.w	r3, #396	; 0x18c
d05e01e6:	f8d2 c00c 	ldr.w	ip, [r2, #12]
d05e01ea:	222c      	movs	r2, #44	; 0x2c
d05e01ec:	f8cd e000 	str.w	lr, [sp]
d05e01f0:	9103      	str	r1, [sp, #12]
d05e01f2:	210c      	movs	r1, #12
d05e01f4:	9602      	str	r6, [sp, #8]
d05e01f6:	9701      	str	r7, [sp, #4]
d05e01f8:	f8dc 7034 	ldr.w	r7, [ip, #52]	; 0x34
d05e01fc:	47b8      	blx	r7
d05e01fe:	7a23      	ldrb	r3, [r4, #8]
d05e0200:	4631      	mov	r1, r6
d05e0202:	7a66      	ldrb	r6, [r4, #9]
d05e0204:	7aa2      	ldrb	r2, [r4, #10]
d05e0206:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d05e020a:	7ae6      	ldrb	r6, [r4, #11]
d05e020c:	6028      	str	r0, [r5, #0]
d05e020e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d05e0212:	4a15      	ldr	r2, [pc, #84]	; (d05e0268 <set_document+0xd0>)
d05e0214:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d05e0218:	68db      	ldr	r3, [r3, #12]
d05e021a:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05e021c:	4798      	blx	r3
d05e021e:	7a23      	ldrb	r3, [r4, #8]
d05e0220:	7a62      	ldrb	r2, [r4, #9]
d05e0222:	7aa1      	ldrb	r1, [r4, #10]
d05e0224:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0228:	7ae2      	ldrb	r2, [r4, #11]
d05e022a:	6828      	ldr	r0, [r5, #0]
d05e022c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0230:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0234:	68db      	ldr	r3, [r3, #12]
d05e0236:	6ddb      	ldr	r3, [r3, #92]	; 0x5c
d05e0238:	4798      	blx	r3
d05e023a:	7a23      	ldrb	r3, [r4, #8]
d05e023c:	7a62      	ldrb	r2, [r4, #9]
d05e023e:	7aa1      	ldrb	r1, [r4, #10]
d05e0240:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0244:	7ae2      	ldrb	r2, [r4, #11]
d05e0246:	6828      	ldr	r0, [r5, #0]
d05e0248:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e024c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0250:	68db      	ldr	r3, [r3, #12]
d05e0252:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05e0254:	b005      	add	sp, #20
d05e0256:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d05e025a:	4718      	bx	r3
d05e025c:	d05e321c 	.word	0xd05e321c
d05e0260:	2001f000 	.word	0x2001f000
d05e0264:	d05e31b5 	.word	0xd05e31b5
d05e0268:	d05e0401 	.word	0xd05e0401

d05e026c <on_sample_clicked>:
d05e026c:	b508      	push	{r3, lr}
d05e026e:	2200      	movs	r2, #0
d05e0270:	4b06      	ldr	r3, [pc, #24]	; (d05e028c <on_sample_clicked+0x20>)
d05e0272:	4807      	ldr	r0, [pc, #28]	; (d05e0290 <on_sample_clicked+0x24>)
d05e0274:	701a      	strb	r2, [r3, #0]
d05e0276:	f7ff ff8f 	bl	d05e0198 <set_document>
d05e027a:	4806      	ldr	r0, [pc, #24]	; (d05e0294 <on_sample_clicked+0x28>)
d05e027c:	f7ff ff46 	bl	d05e010c <set_status>
d05e0280:	4805      	ldr	r0, [pc, #20]	; (d05e0298 <on_sample_clicked+0x2c>)
d05e0282:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d05e0286:	f000 bdb1 	b.w	d05e0dec <puts>
d05e028a:	bf00      	nop
d05e028c:	d05e31b4 	.word	0xd05e31b4
d05e0290:	d05e2684 	.word	0xd05e2684
d05e0294:	d05e224c 	.word	0xd05e224c
d05e0298:	d05e2260 	.word	0xd05e2260

d05e029c <on_new_clicked>:
d05e029c:	b508      	push	{r3, lr}
d05e029e:	2200      	movs	r2, #0
d05e02a0:	4b06      	ldr	r3, [pc, #24]	; (d05e02bc <on_new_clicked+0x20>)
d05e02a2:	4807      	ldr	r0, [pc, #28]	; (d05e02c0 <on_new_clicked+0x24>)
d05e02a4:	701a      	strb	r2, [r3, #0]
d05e02a6:	f7ff ff77 	bl	d05e0198 <set_document>
d05e02aa:	4806      	ldr	r0, [pc, #24]	; (d05e02c4 <on_new_clicked+0x28>)
d05e02ac:	f7ff ff2e 	bl	d05e010c <set_status>
d05e02b0:	4805      	ldr	r0, [pc, #20]	; (d05e02c8 <on_new_clicked+0x2c>)
d05e02b2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d05e02b6:	f000 bd99 	b.w	d05e0dec <puts>
d05e02ba:	bf00      	nop
d05e02bc:	d05e31b4 	.word	0xd05e31b4
d05e02c0:	d05e2680 	.word	0xd05e2680
d05e02c4:	d05e2284 	.word	0xd05e2284
d05e02c8:	d05e2294 	.word	0xd05e2294

d05e02cc <on_load_clicked>:
d05e02cc:	b538      	push	{r3, r4, r5, lr}
d05e02ce:	4d11      	ldr	r5, [pc, #68]	; (d05e0314 <on_load_clicked+0x48>)
d05e02d0:	782b      	ldrb	r3, [r5, #0]
d05e02d2:	2bff      	cmp	r3, #255	; 0xff
d05e02d4:	d119      	bne.n	d05e030a <on_load_clicked+0x3e>
d05e02d6:	4b10      	ldr	r3, [pc, #64]	; (d05e0318 <on_load_clicked+0x4c>)
d05e02d8:	4810      	ldr	r0, [pc, #64]	; (d05e031c <on_load_clicked+0x50>)
d05e02da:	7a1c      	ldrb	r4, [r3, #8]
d05e02dc:	7a59      	ldrb	r1, [r3, #9]
d05e02de:	7a9a      	ldrb	r2, [r3, #10]
d05e02e0:	ea44 2401 	orr.w	r4, r4, r1, lsl #8
d05e02e4:	7ad9      	ldrb	r1, [r3, #11]
d05e02e6:	7800      	ldrb	r0, [r0, #0]
d05e02e8:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
d05e02ec:	4b0c      	ldr	r3, [pc, #48]	; (d05e0320 <on_load_clicked+0x54>)
d05e02ee:	4a0d      	ldr	r2, [pc, #52]	; (d05e0324 <on_load_clicked+0x58>)
d05e02f0:	ea44 6401 	orr.w	r4, r4, r1, lsl #24
d05e02f4:	490c      	ldr	r1, [pc, #48]	; (d05e0328 <on_load_clicked+0x5c>)
d05e02f6:	6924      	ldr	r4, [r4, #16]
d05e02f8:	69e4      	ldr	r4, [r4, #28]
d05e02fa:	47a0      	blx	r4
d05e02fc:	4603      	mov	r3, r0
d05e02fe:	480b      	ldr	r0, [pc, #44]	; (d05e032c <on_load_clicked+0x60>)
d05e0300:	702b      	strb	r3, [r5, #0]
d05e0302:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d05e0306:	f7ff bf01 	b.w	d05e010c <set_status>
d05e030a:	4809      	ldr	r0, [pc, #36]	; (d05e0330 <on_load_clicked+0x64>)
d05e030c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d05e0310:	f7ff befc 	b.w	d05e010c <set_status>
d05e0314:	d05e2930 	.word	0xd05e2930
d05e0318:	2001f000 	.word	0x2001f000
d05e031c:	d05e31b5 	.word	0xd05e31b5
d05e0320:	d05e22c8 	.word	0xd05e22c8
d05e0324:	d05e2830 	.word	0xd05e2830
d05e0328:	d05e22dc 	.word	0xd05e22dc
d05e032c:	d05e22f4 	.word	0xd05e22f4
d05e0330:	d05e22ac 	.word	0xd05e22ac

d05e0334 <on_save_clicked>:
d05e0334:	b538      	push	{r3, r4, r5, lr}
d05e0336:	4d11      	ldr	r5, [pc, #68]	; (d05e037c <on_save_clicked+0x48>)
d05e0338:	782b      	ldrb	r3, [r5, #0]
d05e033a:	2bff      	cmp	r3, #255	; 0xff
d05e033c:	d119      	bne.n	d05e0372 <on_save_clicked+0x3e>
d05e033e:	4b10      	ldr	r3, [pc, #64]	; (d05e0380 <on_save_clicked+0x4c>)
d05e0340:	4810      	ldr	r0, [pc, #64]	; (d05e0384 <on_save_clicked+0x50>)
d05e0342:	7a1c      	ldrb	r4, [r3, #8]
d05e0344:	7a59      	ldrb	r1, [r3, #9]
d05e0346:	7a9a      	ldrb	r2, [r3, #10]
d05e0348:	ea44 2401 	orr.w	r4, r4, r1, lsl #8
d05e034c:	7ad9      	ldrb	r1, [r3, #11]
d05e034e:	7800      	ldrb	r0, [r0, #0]
d05e0350:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
d05e0354:	4b0c      	ldr	r3, [pc, #48]	; (d05e0388 <on_save_clicked+0x54>)
d05e0356:	4a0d      	ldr	r2, [pc, #52]	; (d05e038c <on_save_clicked+0x58>)
d05e0358:	ea44 6401 	orr.w	r4, r4, r1, lsl #24
d05e035c:	490c      	ldr	r1, [pc, #48]	; (d05e0390 <on_save_clicked+0x5c>)
d05e035e:	6924      	ldr	r4, [r4, #16]
d05e0360:	69e4      	ldr	r4, [r4, #28]
d05e0362:	47a0      	blx	r4
d05e0364:	4603      	mov	r3, r0
d05e0366:	480b      	ldr	r0, [pc, #44]	; (d05e0394 <on_save_clicked+0x60>)
d05e0368:	702b      	strb	r3, [r5, #0]
d05e036a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d05e036e:	f7ff becd 	b.w	d05e010c <set_status>
d05e0372:	4809      	ldr	r0, [pc, #36]	; (d05e0398 <on_save_clicked+0x64>)
d05e0374:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d05e0378:	f7ff bec8 	b.w	d05e010c <set_status>
d05e037c:	d05e2931 	.word	0xd05e2931
d05e0380:	2001f000 	.word	0x2001f000
d05e0384:	d05e31b5 	.word	0xd05e31b5
d05e0388:	d05e22c8 	.word	0xd05e22c8
d05e038c:	d05e2830 	.word	0xd05e2830
d05e0390:	d05e2324 	.word	0xd05e2324
d05e0394:	d05e233c 	.word	0xd05e233c
d05e0398:	d05e2308 	.word	0xd05e2308

d05e039c <on_msg_clicked>:
d05e039c:	b570      	push	{r4, r5, r6, lr}
d05e039e:	4d11      	ldr	r5, [pc, #68]	; (d05e03e4 <on_msg_clicked+0x48>)
d05e03a0:	782b      	ldrb	r3, [r5, #0]
d05e03a2:	2bff      	cmp	r3, #255	; 0xff
d05e03a4:	d119      	bne.n	d05e03da <on_msg_clicked+0x3e>
d05e03a6:	4a10      	ldr	r2, [pc, #64]	; (d05e03e8 <on_msg_clicked+0x4c>)
d05e03a8:	2303      	movs	r3, #3
d05e03aa:	4810      	ldr	r0, [pc, #64]	; (d05e03ec <on_msg_clicked+0x50>)
d05e03ac:	7a14      	ldrb	r4, [r2, #8]
d05e03ae:	7a56      	ldrb	r6, [r2, #9]
d05e03b0:	7a91      	ldrb	r1, [r2, #10]
d05e03b2:	ea44 2406 	orr.w	r4, r4, r6, lsl #8
d05e03b6:	7ad6      	ldrb	r6, [r2, #11]
d05e03b8:	7800      	ldrb	r0, [r0, #0]
d05e03ba:	ea44 4401 	orr.w	r4, r4, r1, lsl #16
d05e03be:	4a0c      	ldr	r2, [pc, #48]	; (d05e03f0 <on_msg_clicked+0x54>)
d05e03c0:	490c      	ldr	r1, [pc, #48]	; (d05e03f4 <on_msg_clicked+0x58>)
d05e03c2:	ea44 6406 	orr.w	r4, r4, r6, lsl #24
d05e03c6:	6924      	ldr	r4, [r4, #16]
d05e03c8:	6864      	ldr	r4, [r4, #4]
d05e03ca:	47a0      	blx	r4
d05e03cc:	4603      	mov	r3, r0
d05e03ce:	480a      	ldr	r0, [pc, #40]	; (d05e03f8 <on_msg_clicked+0x5c>)
d05e03d0:	702b      	strb	r3, [r5, #0]
d05e03d2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d05e03d6:	f7ff be99 	b.w	d05e010c <set_status>
d05e03da:	4808      	ldr	r0, [pc, #32]	; (d05e03fc <on_msg_clicked+0x60>)
d05e03dc:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d05e03e0:	f7ff be94 	b.w	d05e010c <set_status>
d05e03e4:	d05e2932 	.word	0xd05e2932
d05e03e8:	2001f000 	.word	0x2001f000
d05e03ec:	d05e31b5 	.word	0xd05e31b5
d05e03f0:	d05e236c 	.word	0xd05e236c
d05e03f4:	d05e2398 	.word	0xd05e2398
d05e03f8:	d05e23a8 	.word	0xd05e23a8
d05e03fc:	d05e2350 	.word	0xd05e2350

d05e0400 <on_text_changed>:
d05e0400:	b508      	push	{r3, lr}
d05e0402:	4b07      	ldr	r3, [pc, #28]	; (d05e0420 <on_text_changed+0x20>)
d05e0404:	781a      	ldrb	r2, [r3, #0]
d05e0406:	b102      	cbz	r2, d05e040a <on_text_changed+0xa>
d05e0408:	bd08      	pop	{r3, pc}
d05e040a:	2201      	movs	r2, #1
d05e040c:	4805      	ldr	r0, [pc, #20]	; (d05e0424 <on_text_changed+0x24>)
d05e040e:	701a      	strb	r2, [r3, #0]
d05e0410:	f7ff fe7c 	bl	d05e010c <set_status>
d05e0414:	4804      	ldr	r0, [pc, #16]	; (d05e0428 <on_text_changed+0x28>)
d05e0416:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d05e041a:	f000 bce7 	b.w	d05e0dec <puts>
d05e041e:	bf00      	nop
d05e0420:	d05e31b4 	.word	0xd05e31b4
d05e0424:	d05e23bc 	.word	0xd05e23bc
d05e0428:	d05e23c8 	.word	0xd05e23c8

d05e042c <on_close_clicked>:
d05e042c:	b538      	push	{r3, r4, r5, lr}
d05e042e:	4b19      	ldr	r3, [pc, #100]	; (d05e0494 <on_close_clicked+0x68>)
d05e0430:	781a      	ldrb	r2, [r3, #0]
d05e0432:	2a00      	cmp	r2, #0
d05e0434:	d02d      	beq.n	d05e0492 <on_close_clicked+0x66>
d05e0436:	4c18      	ldr	r4, [pc, #96]	; (d05e0498 <on_close_clicked+0x6c>)
d05e0438:	2200      	movs	r2, #0
d05e043a:	7820      	ldrb	r0, [r4, #0]
d05e043c:	701a      	strb	r2, [r3, #0]
d05e043e:	28ff      	cmp	r0, #255	; 0xff
d05e0440:	d00f      	beq.n	d05e0462 <on_close_clicked+0x36>
d05e0442:	4a16      	ldr	r2, [pc, #88]	; (d05e049c <on_close_clicked+0x70>)
d05e0444:	7a13      	ldrb	r3, [r2, #8]
d05e0446:	7a55      	ldrb	r5, [r2, #9]
d05e0448:	7a91      	ldrb	r1, [r2, #10]
d05e044a:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05e044e:	7ad2      	ldrb	r2, [r2, #11]
d05e0450:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0454:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0458:	695b      	ldr	r3, [r3, #20]
d05e045a:	685b      	ldr	r3, [r3, #4]
d05e045c:	4798      	blx	r3
d05e045e:	23ff      	movs	r3, #255	; 0xff
d05e0460:	7023      	strb	r3, [r4, #0]
d05e0462:	4c0f      	ldr	r4, [pc, #60]	; (d05e04a0 <on_close_clicked+0x74>)
d05e0464:	7820      	ldrb	r0, [r4, #0]
d05e0466:	b178      	cbz	r0, d05e0488 <on_close_clicked+0x5c>
d05e0468:	4a0c      	ldr	r2, [pc, #48]	; (d05e049c <on_close_clicked+0x70>)
d05e046a:	7a13      	ldrb	r3, [r2, #8]
d05e046c:	7a55      	ldrb	r5, [r2, #9]
d05e046e:	7a91      	ldrb	r1, [r2, #10]
d05e0470:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05e0474:	7ad2      	ldrb	r2, [r2, #11]
d05e0476:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e047a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e047e:	685b      	ldr	r3, [r3, #4]
d05e0480:	685b      	ldr	r3, [r3, #4]
d05e0482:	4798      	blx	r3
d05e0484:	2300      	movs	r3, #0
d05e0486:	7023      	strb	r3, [r4, #0]
d05e0488:	4806      	ldr	r0, [pc, #24]	; (d05e04a4 <on_close_clicked+0x78>)
d05e048a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d05e048e:	f000 bcad 	b.w	d05e0dec <puts>
d05e0492:	bd38      	pop	{r3, r4, r5, pc}
d05e0494:	d05e282c 	.word	0xd05e282c
d05e0498:	d05e2933 	.word	0xd05e2933
d05e049c:	2001f000 	.word	0x2001f000
d05e04a0:	d05e31b5 	.word	0xd05e31b5
d05e04a4:	d05e23e4 	.word	0xd05e23e4

d05e04a8 <load_file>:
d05e04a8:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d05e04ac:	2300      	movs	r3, #0
d05e04ae:	b083      	sub	sp, #12
d05e04b0:	9301      	str	r3, [sp, #4]
d05e04b2:	2800      	cmp	r0, #0
d05e04b4:	f000 8086 	beq.w	d05e05c4 <load_file+0x11c>
d05e04b8:	7802      	ldrb	r2, [r0, #0]
d05e04ba:	4605      	mov	r5, r0
d05e04bc:	2a00      	cmp	r2, #0
d05e04be:	f000 8081 	beq.w	d05e05c4 <load_file+0x11c>
d05e04c2:	4c56      	ldr	r4, [pc, #344]	; (d05e061c <load_file+0x174>)
d05e04c4:	4618      	mov	r0, r3
d05e04c6:	2201      	movs	r2, #1
d05e04c8:	4629      	mov	r1, r5
d05e04ca:	7923      	ldrb	r3, [r4, #4]
d05e04cc:	7966      	ldrb	r6, [r4, #5]
d05e04ce:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d05e04d2:	79a6      	ldrb	r6, [r4, #6]
d05e04d4:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d05e04d8:	79e6      	ldrb	r6, [r4, #7]
d05e04da:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d05e04de:	681b      	ldr	r3, [r3, #0]
d05e04e0:	681b      	ldr	r3, [r3, #0]
d05e04e2:	4798      	blx	r3
d05e04e4:	4681      	mov	r9, r0
d05e04e6:	2800      	cmp	r0, #0
d05e04e8:	d172      	bne.n	d05e05d0 <load_file+0x128>
d05e04ea:	7923      	ldrb	r3, [r4, #4]
d05e04ec:	7962      	ldrb	r2, [r4, #5]
d05e04ee:	79a1      	ldrb	r1, [r4, #6]
d05e04f0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e04f4:	79e2      	ldrb	r2, [r4, #7]
d05e04f6:	f8df 8150 	ldr.w	r8, [pc, #336]	; d05e0648 <load_file+0x1a0>
d05e04fa:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e04fe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0502:	681b      	ldr	r3, [r3, #0]
d05e0504:	685b      	ldr	r3, [r3, #4]
d05e0506:	4798      	blx	r3
d05e0508:	7926      	ldrb	r6, [r4, #4]
d05e050a:	7963      	ldrb	r3, [r4, #5]
d05e050c:	f240 72ff 	movw	r2, #2047	; 0x7ff
d05e0510:	f894 c006 	ldrb.w	ip, [r4, #6]
d05e0514:	4641      	mov	r1, r8
d05e0516:	ea46 2603 	orr.w	r6, r6, r3, lsl #8
d05e051a:	79e7      	ldrb	r7, [r4, #7]
d05e051c:	4282      	cmp	r2, r0
d05e051e:	ab01      	add	r3, sp, #4
d05e0520:	ea46 460c 	orr.w	r6, r6, ip, lsl #16
d05e0524:	bf28      	it	cs
d05e0526:	4602      	movcs	r2, r0
d05e0528:	4648      	mov	r0, r9
d05e052a:	ea46 6607 	orr.w	r6, r6, r7, lsl #24
d05e052e:	6836      	ldr	r6, [r6, #0]
d05e0530:	68b6      	ldr	r6, [r6, #8]
d05e0532:	47b0      	blx	r6
d05e0534:	7927      	ldrb	r7, [r4, #4]
d05e0536:	f894 c005 	ldrb.w	ip, [r4, #5]
d05e053a:	4606      	mov	r6, r0
d05e053c:	79a1      	ldrb	r1, [r4, #6]
d05e053e:	4648      	mov	r0, r9
d05e0540:	ea47 230c 	orr.w	r3, r7, ip, lsl #8
d05e0544:	79e2      	ldrb	r2, [r4, #7]
d05e0546:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e054a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e054e:	681b      	ldr	r3, [r3, #0]
d05e0550:	68db      	ldr	r3, [r3, #12]
d05e0552:	4798      	blx	r3
d05e0554:	2e00      	cmp	r6, #0
d05e0556:	d14c      	bne.n	d05e05f2 <load_file+0x14a>
d05e0558:	9b01      	ldr	r3, [sp, #4]
d05e055a:	4640      	mov	r0, r8
d05e055c:	f808 6003 	strb.w	r6, [r8, r3]
d05e0560:	f7ff fe1a 	bl	d05e0198 <set_document>
d05e0564:	4b2e      	ldr	r3, [pc, #184]	; (d05e0620 <load_file+0x178>)
d05e0566:	782c      	ldrb	r4, [r5, #0]
d05e0568:	701e      	strb	r6, [r3, #0]
d05e056a:	b1d4      	cbz	r4, d05e05a2 <load_file+0xfa>
d05e056c:	462b      	mov	r3, r5
d05e056e:	e002      	b.n	d05e0576 <load_file+0xce>
d05e0570:	f813 4f01 	ldrb.w	r4, [r3, #1]!
d05e0574:	b144      	cbz	r4, d05e0588 <load_file+0xe0>
d05e0576:	2c5c      	cmp	r4, #92	; 0x5c
d05e0578:	d001      	beq.n	d05e057e <load_file+0xd6>
d05e057a:	2c2f      	cmp	r4, #47	; 0x2f
d05e057c:	d1f8      	bne.n	d05e0570 <load_file+0xc8>
d05e057e:	461e      	mov	r6, r3
d05e0580:	f813 4f01 	ldrb.w	r4, [r3, #1]!
d05e0584:	2c00      	cmp	r4, #0
d05e0586:	d1f6      	bne.n	d05e0576 <load_file+0xce>
d05e0588:	b15e      	cbz	r6, d05e05a2 <load_file+0xfa>
d05e058a:	1b76      	subs	r6, r6, r5
d05e058c:	d042      	beq.n	d05e0614 <load_file+0x16c>
d05e058e:	2eff      	cmp	r6, #255	; 0xff
d05e0590:	4b24      	ldr	r3, [pc, #144]	; (d05e0624 <load_file+0x17c>)
d05e0592:	4629      	mov	r1, r5
d05e0594:	bf28      	it	cs
d05e0596:	26ff      	movcs	r6, #255	; 0xff
d05e0598:	4618      	mov	r0, r3
d05e059a:	4632      	mov	r2, r6
d05e059c:	f000 fb8a 	bl	d05e0cb4 <memcpy>
d05e05a0:	5584      	strb	r4, [r0, r6]
d05e05a2:	462b      	mov	r3, r5
d05e05a4:	4a20      	ldr	r2, [pc, #128]	; (d05e0628 <load_file+0x180>)
d05e05a6:	2160      	movs	r1, #96	; 0x60
d05e05a8:	4820      	ldr	r0, [pc, #128]	; (d05e062c <load_file+0x184>)
d05e05aa:	f000 fcf5 	bl	d05e0f98 <sniprintf>
d05e05ae:	481f      	ldr	r0, [pc, #124]	; (d05e062c <load_file+0x184>)
d05e05b0:	f7ff fdac 	bl	d05e010c <set_status>
d05e05b4:	462a      	mov	r2, r5
d05e05b6:	9901      	ldr	r1, [sp, #4]
d05e05b8:	481d      	ldr	r0, [pc, #116]	; (d05e0630 <load_file+0x188>)
d05e05ba:	f000 fb91 	bl	d05e0ce0 <iprintf>
d05e05be:	b003      	add	sp, #12
d05e05c0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05e05c4:	481b      	ldr	r0, [pc, #108]	; (d05e0634 <load_file+0x18c>)
d05e05c6:	f7ff fda1 	bl	d05e010c <set_status>
d05e05ca:	b003      	add	sp, #12
d05e05cc:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05e05d0:	4603      	mov	r3, r0
d05e05d2:	4a19      	ldr	r2, [pc, #100]	; (d05e0638 <load_file+0x190>)
d05e05d4:	2160      	movs	r1, #96	; 0x60
d05e05d6:	4815      	ldr	r0, [pc, #84]	; (d05e062c <load_file+0x184>)
d05e05d8:	f000 fcde 	bl	d05e0f98 <sniprintf>
d05e05dc:	4813      	ldr	r0, [pc, #76]	; (d05e062c <load_file+0x184>)
d05e05de:	f7ff fd95 	bl	d05e010c <set_status>
d05e05e2:	462a      	mov	r2, r5
d05e05e4:	4649      	mov	r1, r9
d05e05e6:	4815      	ldr	r0, [pc, #84]	; (d05e063c <load_file+0x194>)
d05e05e8:	f000 fb7a 	bl	d05e0ce0 <iprintf>
d05e05ec:	b003      	add	sp, #12
d05e05ee:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05e05f2:	4633      	mov	r3, r6
d05e05f4:	4a12      	ldr	r2, [pc, #72]	; (d05e0640 <load_file+0x198>)
d05e05f6:	2160      	movs	r1, #96	; 0x60
d05e05f8:	480c      	ldr	r0, [pc, #48]	; (d05e062c <load_file+0x184>)
d05e05fa:	f000 fccd 	bl	d05e0f98 <sniprintf>
d05e05fe:	480b      	ldr	r0, [pc, #44]	; (d05e062c <load_file+0x184>)
d05e0600:	f7ff fd84 	bl	d05e010c <set_status>
d05e0604:	462a      	mov	r2, r5
d05e0606:	4631      	mov	r1, r6
d05e0608:	480e      	ldr	r0, [pc, #56]	; (d05e0644 <load_file+0x19c>)
d05e060a:	f000 fb69 	bl	d05e0ce0 <iprintf>
d05e060e:	b003      	add	sp, #12
d05e0610:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05e0614:	4b03      	ldr	r3, [pc, #12]	; (d05e0624 <load_file+0x17c>)
d05e0616:	222f      	movs	r2, #47	; 0x2f
d05e0618:	801a      	strh	r2, [r3, #0]
d05e061a:	e7c2      	b.n	d05e05a2 <load_file+0xfa>
d05e061c:	2001f000 	.word	0x2001f000
d05e0620:	d05e31b4 	.word	0xd05e31b4
d05e0624:	d05e2830 	.word	0xd05e2830
d05e0628:	d05e2474 	.word	0xd05e2474
d05e062c:	d05e31b8 	.word	0xd05e31b8
d05e0630:	d05e2484 	.word	0xd05e2484
d05e0634:	d05e23f8 	.word	0xd05e23f8
d05e0638:	d05e2408 	.word	0xd05e2408
d05e063c:	d05e241c 	.word	0xd05e241c
d05e0640:	d05e2440 	.word	0xd05e2440
d05e0644:	d05e2454 	.word	0xd05e2454
d05e0648:	d05e29b4 	.word	0xd05e29b4

d05e064c <editor_proc>:
d05e064c:	b111      	cbz	r1, d05e0654 <editor_proc+0x8>
d05e064e:	680b      	ldr	r3, [r1, #0]
d05e0650:	2b20      	cmp	r3, #32
d05e0652:	d001      	beq.n	d05e0658 <editor_proc+0xc>
d05e0654:	2000      	movs	r0, #0
d05e0656:	4770      	bx	lr
d05e0658:	68cb      	ldr	r3, [r1, #12]
d05e065a:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
d05e065e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05e0662:	b082      	sub	sp, #8
d05e0664:	f000 80bf 	beq.w	d05e07e6 <editor_proc+0x19a>
d05e0668:	f248 0202 	movw	r2, #32770	; 0x8002
d05e066c:	4293      	cmp	r3, r2
d05e066e:	d006      	beq.n	d05e067e <editor_proc+0x32>
d05e0670:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d05e0674:	d020      	beq.n	d05e06b8 <editor_proc+0x6c>
d05e0676:	2000      	movs	r0, #0
d05e0678:	b002      	add	sp, #8
d05e067a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d05e067e:	4b99      	ldr	r3, [pc, #612]	; (d05e08e4 <editor_proc+0x298>)
d05e0680:	7f0a      	ldrb	r2, [r1, #28]
d05e0682:	7818      	ldrb	r0, [r3, #0]
d05e0684:	4290      	cmp	r0, r2
d05e0686:	f040 80ac 	bne.w	d05e07e2 <editor_proc+0x196>
d05e068a:	690c      	ldr	r4, [r1, #16]
d05e068c:	22ff      	movs	r2, #255	; 0xff
d05e068e:	2c03      	cmp	r4, #3
d05e0690:	701a      	strb	r2, [r3, #0]
d05e0692:	f200 80c0 	bhi.w	d05e0816 <editor_proc+0x1ca>
d05e0696:	4b94      	ldr	r3, [pc, #592]	; (d05e08e8 <editor_proc+0x29c>)
d05e0698:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
d05e069c:	4a93      	ldr	r2, [pc, #588]	; (d05e08ec <editor_proc+0x2a0>)
d05e069e:	2160      	movs	r1, #96	; 0x60
d05e06a0:	4893      	ldr	r0, [pc, #588]	; (d05e08f0 <editor_proc+0x2a4>)
d05e06a2:	f000 fc79 	bl	d05e0f98 <sniprintf>
d05e06a6:	4892      	ldr	r0, [pc, #584]	; (d05e08f0 <editor_proc+0x2a4>)
d05e06a8:	f7ff fd30 	bl	d05e010c <set_status>
d05e06ac:	4621      	mov	r1, r4
d05e06ae:	4891      	ldr	r0, [pc, #580]	; (d05e08f4 <editor_proc+0x2a8>)
d05e06b0:	f000 fb16 	bl	d05e0ce0 <iprintf>
d05e06b4:	20f0      	movs	r0, #240	; 0xf0
d05e06b6:	e7df      	b.n	d05e0678 <editor_proc+0x2c>
d05e06b8:	4b8f      	ldr	r3, [pc, #572]	; (d05e08f8 <editor_proc+0x2ac>)
d05e06ba:	781a      	ldrb	r2, [r3, #0]
d05e06bc:	2a00      	cmp	r2, #0
d05e06be:	f000 8090 	beq.w	d05e07e2 <editor_proc+0x196>
d05e06c2:	4c8e      	ldr	r4, [pc, #568]	; (d05e08fc <editor_proc+0x2b0>)
d05e06c4:	2200      	movs	r2, #0
d05e06c6:	7820      	ldrb	r0, [r4, #0]
d05e06c8:	701a      	strb	r2, [r3, #0]
d05e06ca:	28ff      	cmp	r0, #255	; 0xff
d05e06cc:	d00f      	beq.n	d05e06ee <editor_proc+0xa2>
d05e06ce:	4a8c      	ldr	r2, [pc, #560]	; (d05e0900 <editor_proc+0x2b4>)
d05e06d0:	7a13      	ldrb	r3, [r2, #8]
d05e06d2:	7a55      	ldrb	r5, [r2, #9]
d05e06d4:	7a91      	ldrb	r1, [r2, #10]
d05e06d6:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05e06da:	7ad2      	ldrb	r2, [r2, #11]
d05e06dc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e06e0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e06e4:	695b      	ldr	r3, [r3, #20]
d05e06e6:	685b      	ldr	r3, [r3, #4]
d05e06e8:	4798      	blx	r3
d05e06ea:	23ff      	movs	r3, #255	; 0xff
d05e06ec:	7023      	strb	r3, [r4, #0]
d05e06ee:	4c85      	ldr	r4, [pc, #532]	; (d05e0904 <editor_proc+0x2b8>)
d05e06f0:	7820      	ldrb	r0, [r4, #0]
d05e06f2:	b178      	cbz	r0, d05e0714 <editor_proc+0xc8>
d05e06f4:	4a82      	ldr	r2, [pc, #520]	; (d05e0900 <editor_proc+0x2b4>)
d05e06f6:	7a13      	ldrb	r3, [r2, #8]
d05e06f8:	7a55      	ldrb	r5, [r2, #9]
d05e06fa:	7a91      	ldrb	r1, [r2, #10]
d05e06fc:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05e0700:	7ad2      	ldrb	r2, [r2, #11]
d05e0702:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0706:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e070a:	685b      	ldr	r3, [r3, #4]
d05e070c:	685b      	ldr	r3, [r3, #4]
d05e070e:	4798      	blx	r3
d05e0710:	2300      	movs	r3, #0
d05e0712:	7023      	strb	r3, [r4, #0]
d05e0714:	487c      	ldr	r0, [pc, #496]	; (d05e0908 <editor_proc+0x2bc>)
d05e0716:	f000 fb69 	bl	d05e0dec <puts>
d05e071a:	20f0      	movs	r0, #240	; 0xf0
d05e071c:	e7ac      	b.n	d05e0678 <editor_proc+0x2c>
d05e071e:	2600      	movs	r6, #0
d05e0720:	9601      	str	r6, [sp, #4]
d05e0722:	7823      	ldrb	r3, [r4, #0]
d05e0724:	2b00      	cmp	r3, #0
d05e0726:	f000 8086 	beq.w	d05e0836 <editor_proc+0x1ea>
d05e072a:	4d75      	ldr	r5, [pc, #468]	; (d05e0900 <editor_proc+0x2b4>)
d05e072c:	f44f 6200 	mov.w	r2, #2048	; 0x800
d05e0730:	4876      	ldr	r0, [pc, #472]	; (d05e090c <editor_proc+0x2c0>)
d05e0732:	7a2b      	ldrb	r3, [r5, #8]
d05e0734:	7a6f      	ldrb	r7, [r5, #9]
d05e0736:	7aa9      	ldrb	r1, [r5, #10]
d05e0738:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d05e073c:	7aef      	ldrb	r7, [r5, #11]
d05e073e:	6800      	ldr	r0, [r0, #0]
d05e0740:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0744:	4972      	ldr	r1, [pc, #456]	; (d05e0910 <editor_proc+0x2c4>)
d05e0746:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d05e074a:	68db      	ldr	r3, [r3, #12]
d05e074c:	6f1b      	ldr	r3, [r3, #112]	; 0x70
d05e074e:	4798      	blx	r3
d05e0750:	4607      	mov	r7, r0
d05e0752:	486f      	ldr	r0, [pc, #444]	; (d05e0910 <editor_proc+0x2c4>)
d05e0754:	f000 fc54 	bl	d05e1000 <strlen>
d05e0758:	792b      	ldrb	r3, [r5, #4]
d05e075a:	796a      	ldrb	r2, [r5, #5]
d05e075c:	4680      	mov	r8, r0
d05e075e:	79a9      	ldrb	r1, [r5, #6]
d05e0760:	4630      	mov	r0, r6
d05e0762:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0766:	79ee      	ldrb	r6, [r5, #7]
d05e0768:	220a      	movs	r2, #10
d05e076a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e076e:	4621      	mov	r1, r4
d05e0770:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d05e0774:	681b      	ldr	r3, [r3, #0]
d05e0776:	681b      	ldr	r3, [r3, #0]
d05e0778:	4798      	blx	r3
d05e077a:	4606      	mov	r6, r0
d05e077c:	2800      	cmp	r0, #0
d05e077e:	f040 808f 	bne.w	d05e08a0 <editor_proc+0x254>
d05e0782:	792e      	ldrb	r6, [r5, #4]
d05e0784:	ab01      	add	r3, sp, #4
d05e0786:	f895 c005 	ldrb.w	ip, [r5, #5]
d05e078a:	4642      	mov	r2, r8
d05e078c:	79a9      	ldrb	r1, [r5, #6]
d05e078e:	2000      	movs	r0, #0
d05e0790:	ea46 260c 	orr.w	r6, r6, ip, lsl #8
d05e0794:	f895 c007 	ldrb.w	ip, [r5, #7]
d05e0798:	ea46 4601 	orr.w	r6, r6, r1, lsl #16
d05e079c:	495c      	ldr	r1, [pc, #368]	; (d05e0910 <editor_proc+0x2c4>)
d05e079e:	ea46 660c 	orr.w	r6, r6, ip, lsl #24
d05e07a2:	6836      	ldr	r6, [r6, #0]
d05e07a4:	6936      	ldr	r6, [r6, #16]
d05e07a6:	47b0      	blx	r6
d05e07a8:	792b      	ldrb	r3, [r5, #4]
d05e07aa:	796a      	ldrb	r2, [r5, #5]
d05e07ac:	4606      	mov	r6, r0
d05e07ae:	79a9      	ldrb	r1, [r5, #6]
d05e07b0:	2000      	movs	r0, #0
d05e07b2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e07b6:	79ea      	ldrb	r2, [r5, #7]
d05e07b8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e07bc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e07c0:	681b      	ldr	r3, [r3, #0]
d05e07c2:	68db      	ldr	r3, [r3, #12]
d05e07c4:	4798      	blx	r3
d05e07c6:	2e00      	cmp	r6, #0
d05e07c8:	d179      	bne.n	d05e08be <editor_proc+0x272>
d05e07ca:	9b01      	ldr	r3, [sp, #4]
d05e07cc:	4598      	cmp	r8, r3
d05e07ce:	d036      	beq.n	d05e083e <editor_proc+0x1f2>
d05e07d0:	4850      	ldr	r0, [pc, #320]	; (d05e0914 <editor_proc+0x2c8>)
d05e07d2:	f7ff fc9b 	bl	d05e010c <set_status>
d05e07d6:	4623      	mov	r3, r4
d05e07d8:	4642      	mov	r2, r8
d05e07da:	9901      	ldr	r1, [sp, #4]
d05e07dc:	484e      	ldr	r0, [pc, #312]	; (d05e0918 <editor_proc+0x2cc>)
d05e07de:	f000 fa7f 	bl	d05e0ce0 <iprintf>
d05e07e2:	20f0      	movs	r0, #240	; 0xf0
d05e07e4:	e748      	b.n	d05e0678 <editor_proc+0x2c>
d05e07e6:	4a4d      	ldr	r2, [pc, #308]	; (d05e091c <editor_proc+0x2d0>)
d05e07e8:	7f0b      	ldrb	r3, [r1, #28]
d05e07ea:	7810      	ldrb	r0, [r2, #0]
d05e07ec:	690d      	ldr	r5, [r1, #16]
d05e07ee:	4298      	cmp	r0, r3
d05e07f0:	698c      	ldr	r4, [r1, #24]
d05e07f2:	d012      	beq.n	d05e081a <editor_proc+0x1ce>
d05e07f4:	4a4a      	ldr	r2, [pc, #296]	; (d05e0920 <editor_proc+0x2d4>)
d05e07f6:	7811      	ldrb	r1, [r2, #0]
d05e07f8:	4299      	cmp	r1, r3
d05e07fa:	d1f2      	bne.n	d05e07e2 <editor_proc+0x196>
d05e07fc:	23ff      	movs	r3, #255	; 0xff
d05e07fe:	2d01      	cmp	r5, #1
d05e0800:	7013      	strb	r3, [r2, #0]
d05e0802:	d103      	bne.n	d05e080c <editor_proc+0x1c0>
d05e0804:	b114      	cbz	r4, d05e080c <editor_proc+0x1c0>
d05e0806:	7823      	ldrb	r3, [r4, #0]
d05e0808:	2b00      	cmp	r3, #0
d05e080a:	d188      	bne.n	d05e071e <editor_proc+0xd2>
d05e080c:	4845      	ldr	r0, [pc, #276]	; (d05e0924 <editor_proc+0x2d8>)
d05e080e:	f7ff fc7d 	bl	d05e010c <set_status>
d05e0812:	20f0      	movs	r0, #240	; 0xf0
d05e0814:	e730      	b.n	d05e0678 <editor_proc+0x2c>
d05e0816:	4b44      	ldr	r3, [pc, #272]	; (d05e0928 <editor_proc+0x2dc>)
d05e0818:	e740      	b.n	d05e069c <editor_proc+0x50>
d05e081a:	23ff      	movs	r3, #255	; 0xff
d05e081c:	2d01      	cmp	r5, #1
d05e081e:	7013      	strb	r3, [r2, #0]
d05e0820:	d004      	beq.n	d05e082c <editor_proc+0x1e0>
d05e0822:	4842      	ldr	r0, [pc, #264]	; (d05e092c <editor_proc+0x2e0>)
d05e0824:	f7ff fc72 	bl	d05e010c <set_status>
d05e0828:	20f0      	movs	r0, #240	; 0xf0
d05e082a:	e725      	b.n	d05e0678 <editor_proc+0x2c>
d05e082c:	4620      	mov	r0, r4
d05e082e:	f7ff fe3b 	bl	d05e04a8 <load_file>
d05e0832:	20f0      	movs	r0, #240	; 0xf0
d05e0834:	e720      	b.n	d05e0678 <editor_proc+0x2c>
d05e0836:	483b      	ldr	r0, [pc, #236]	; (d05e0924 <editor_proc+0x2d8>)
d05e0838:	f7ff fc68 	bl	d05e010c <set_status>
d05e083c:	e7d1      	b.n	d05e07e2 <editor_proc+0x196>
d05e083e:	4b3c      	ldr	r3, [pc, #240]	; (d05e0930 <editor_proc+0x2e4>)
d05e0840:	7825      	ldrb	r5, [r4, #0]
d05e0842:	701e      	strb	r6, [r3, #0]
d05e0844:	b1bd      	cbz	r5, d05e0876 <editor_proc+0x22a>
d05e0846:	4623      	mov	r3, r4
d05e0848:	e004      	b.n	d05e0854 <editor_proc+0x208>
d05e084a:	2d2f      	cmp	r5, #47	; 0x2f
d05e084c:	d004      	beq.n	d05e0858 <editor_proc+0x20c>
d05e084e:	f813 5f01 	ldrb.w	r5, [r3, #1]!
d05e0852:	b11d      	cbz	r5, d05e085c <editor_proc+0x210>
d05e0854:	2d5c      	cmp	r5, #92	; 0x5c
d05e0856:	d1f8      	bne.n	d05e084a <editor_proc+0x1fe>
d05e0858:	461e      	mov	r6, r3
d05e085a:	e7f8      	b.n	d05e084e <editor_proc+0x202>
d05e085c:	b15e      	cbz	r6, d05e0876 <editor_proc+0x22a>
d05e085e:	1b36      	subs	r6, r6, r4
d05e0860:	d03c      	beq.n	d05e08dc <editor_proc+0x290>
d05e0862:	2eff      	cmp	r6, #255	; 0xff
d05e0864:	4b33      	ldr	r3, [pc, #204]	; (d05e0934 <editor_proc+0x2e8>)
d05e0866:	4621      	mov	r1, r4
d05e0868:	bf28      	it	cs
d05e086a:	26ff      	movcs	r6, #255	; 0xff
d05e086c:	4618      	mov	r0, r3
d05e086e:	4632      	mov	r2, r6
d05e0870:	f000 fa20 	bl	d05e0cb4 <memcpy>
d05e0874:	5585      	strb	r5, [r0, r6]
d05e0876:	f5b7 6f00 	cmp.w	r7, #2048	; 0x800
d05e087a:	4623      	mov	r3, r4
d05e087c:	f04f 0160 	mov.w	r1, #96	; 0x60
d05e0880:	481b      	ldr	r0, [pc, #108]	; (d05e08f0 <editor_proc+0x2a4>)
d05e0882:	bf8c      	ite	hi
d05e0884:	4a2c      	ldrhi	r2, [pc, #176]	; (d05e0938 <editor_proc+0x2ec>)
d05e0886:	4a2d      	ldrls	r2, [pc, #180]	; (d05e093c <editor_proc+0x2f0>)
d05e0888:	f000 fb86 	bl	d05e0f98 <sniprintf>
d05e088c:	4818      	ldr	r0, [pc, #96]	; (d05e08f0 <editor_proc+0x2a4>)
d05e088e:	f7ff fc3d 	bl	d05e010c <set_status>
d05e0892:	4622      	mov	r2, r4
d05e0894:	9901      	ldr	r1, [sp, #4]
d05e0896:	482a      	ldr	r0, [pc, #168]	; (d05e0940 <editor_proc+0x2f4>)
d05e0898:	f000 fa22 	bl	d05e0ce0 <iprintf>
d05e089c:	20f0      	movs	r0, #240	; 0xf0
d05e089e:	e6eb      	b.n	d05e0678 <editor_proc+0x2c>
d05e08a0:	4603      	mov	r3, r0
d05e08a2:	4a28      	ldr	r2, [pc, #160]	; (d05e0944 <editor_proc+0x2f8>)
d05e08a4:	2160      	movs	r1, #96	; 0x60
d05e08a6:	4812      	ldr	r0, [pc, #72]	; (d05e08f0 <editor_proc+0x2a4>)
d05e08a8:	f000 fb76 	bl	d05e0f98 <sniprintf>
d05e08ac:	4810      	ldr	r0, [pc, #64]	; (d05e08f0 <editor_proc+0x2a4>)
d05e08ae:	f7ff fc2d 	bl	d05e010c <set_status>
d05e08b2:	4622      	mov	r2, r4
d05e08b4:	4631      	mov	r1, r6
d05e08b6:	4824      	ldr	r0, [pc, #144]	; (d05e0948 <editor_proc+0x2fc>)
d05e08b8:	f000 fa12 	bl	d05e0ce0 <iprintf>
d05e08bc:	e791      	b.n	d05e07e2 <editor_proc+0x196>
d05e08be:	4633      	mov	r3, r6
d05e08c0:	4a22      	ldr	r2, [pc, #136]	; (d05e094c <editor_proc+0x300>)
d05e08c2:	2160      	movs	r1, #96	; 0x60
d05e08c4:	480a      	ldr	r0, [pc, #40]	; (d05e08f0 <editor_proc+0x2a4>)
d05e08c6:	f000 fb67 	bl	d05e0f98 <sniprintf>
d05e08ca:	4809      	ldr	r0, [pc, #36]	; (d05e08f0 <editor_proc+0x2a4>)
d05e08cc:	f7ff fc1e 	bl	d05e010c <set_status>
d05e08d0:	4622      	mov	r2, r4
d05e08d2:	4631      	mov	r1, r6
d05e08d4:	481e      	ldr	r0, [pc, #120]	; (d05e0950 <editor_proc+0x304>)
d05e08d6:	f000 fa03 	bl	d05e0ce0 <iprintf>
d05e08da:	e782      	b.n	d05e07e2 <editor_proc+0x196>
d05e08dc:	4b15      	ldr	r3, [pc, #84]	; (d05e0934 <editor_proc+0x2e8>)
d05e08de:	222f      	movs	r2, #47	; 0x2f
d05e08e0:	801a      	strh	r2, [r3, #0]
d05e08e2:	e7c8      	b.n	d05e0876 <editor_proc+0x22a>
d05e08e4:	d05e2932 	.word	0xd05e2932
d05e08e8:	d05e2670 	.word	0xd05e2670
d05e08ec:	d05e25bc 	.word	0xd05e25bc
d05e08f0:	d05e31b8 	.word	0xd05e31b8
d05e08f4:	d05e25d0 	.word	0xd05e25d0
d05e08f8:	d05e282c 	.word	0xd05e282c
d05e08fc:	d05e2933 	.word	0xd05e2933
d05e0900:	2001f000 	.word	0x2001f000
d05e0904:	d05e31b5 	.word	0xd05e31b5
d05e0908:	d05e23e4 	.word	0xd05e23e4
d05e090c:	d05e321c 	.word	0xd05e321c
d05e0910:	d05e29b4 	.word	0xd05e29b4
d05e0914:	d05e2534 	.word	0xd05e2534
d05e0918:	d05e2544 	.word	0xd05e2544
d05e091c:	d05e2930 	.word	0xd05e2930
d05e0920:	d05e2931 	.word	0xd05e2931
d05e0924:	d05e24b0 	.word	0xd05e24b0
d05e0928:	d05e24a8 	.word	0xd05e24a8
d05e092c:	d05e23f8 	.word	0xd05e23f8
d05e0930:	d05e31b4 	.word	0xd05e31b4
d05e0934:	d05e2830 	.word	0xd05e2830
d05e0938:	d05e2570 	.word	0xd05e2570
d05e093c:	d05e2588 	.word	0xd05e2588
d05e0940:	d05e2598 	.word	0xd05e2598
d05e0944:	d05e24c0 	.word	0xd05e24c0
d05e0948:	d05e24d4 	.word	0xd05e24d4
d05e094c:	d05e24fc 	.word	0xd05e24fc
d05e0950:	d05e2510 	.word	0xd05e2510

d05e0954 <main>:
d05e0954:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e0958:	4603      	mov	r3, r0
d05e095a:	4cb4      	ldr	r4, [pc, #720]	; (d05e0c2c <main+0x2d8>)
d05e095c:	b087      	sub	sp, #28
d05e095e:	48b4      	ldr	r0, [pc, #720]	; (d05e0c30 <main+0x2dc>)
d05e0960:	4db4      	ldr	r5, [pc, #720]	; (d05e0c34 <main+0x2e0>)
d05e0962:	f240 39ed 	movw	r9, #1005	; 0x3ed
d05e0966:	9304      	str	r3, [sp, #16]
d05e0968:	2701      	movs	r7, #1
d05e096a:	9105      	str	r1, [sp, #20]
d05e096c:	f000 fa3e 	bl	d05e0dec <puts>
d05e0970:	f894 c008 	ldrb.w	ip, [r4, #8]
d05e0974:	f44f 7e8b 	mov.w	lr, #278	; 0x116
d05e0978:	7a62      	ldrb	r2, [r4, #9]
d05e097a:	f44f 73d8 	mov.w	r3, #432	; 0x1b0
d05e097e:	7aa1      	ldrb	r1, [r4, #10]
d05e0980:	2616      	movs	r6, #22
d05e0982:	ea4c 2c02 	orr.w	ip, ip, r2, lsl #8
d05e0986:	7ae0      	ldrb	r0, [r4, #11]
d05e0988:	f8df 82e8 	ldr.w	r8, [pc, #744]	; d05e0c74 <main+0x320>
d05e098c:	2214      	movs	r2, #20
d05e098e:	ea4c 4c01 	orr.w	ip, ip, r1, lsl #16
d05e0992:	2118      	movs	r1, #24
d05e0994:	f8df a2e0 	ldr.w	sl, [pc, #736]	; d05e0c78 <main+0x324>
d05e0998:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d05e099c:	4628      	mov	r0, r5
d05e099e:	f8dc c004 	ldr.w	ip, [ip, #4]
d05e09a2:	f8cd e000 	str.w	lr, [sp]
d05e09a6:	f8cd 9008 	str.w	r9, [sp, #8]
d05e09aa:	f8cd 8004 	str.w	r8, [sp, #4]
d05e09ae:	f8dc 8000 	ldr.w	r8, [ip]
d05e09b2:	47c0      	blx	r8
d05e09b4:	7a23      	ldrb	r3, [r4, #8]
d05e09b6:	7a62      	ldrb	r2, [r4, #9]
d05e09b8:	7aa1      	ldrb	r1, [r4, #10]
d05e09ba:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e09be:	7ae2      	ldrb	r2, [r4, #11]
d05e09c0:	7828      	ldrb	r0, [r5, #0]
d05e09c2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e09c6:	499c      	ldr	r1, [pc, #624]	; (d05e0c38 <main+0x2e4>)
d05e09c8:	f8df 92b0 	ldr.w	r9, [pc, #688]	; d05e0c7c <main+0x328>
d05e09cc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e09d0:	f8df 82ac 	ldr.w	r8, [pc, #684]	; d05e0c80 <main+0x32c>
d05e09d4:	685b      	ldr	r3, [r3, #4]
d05e09d6:	689b      	ldr	r3, [r3, #8]
d05e09d8:	4798      	blx	r3
d05e09da:	7a21      	ldrb	r1, [r4, #8]
d05e09dc:	7a60      	ldrb	r0, [r4, #9]
d05e09de:	232a      	movs	r3, #42	; 0x2a
d05e09e0:	f894 c00a 	ldrb.w	ip, [r4, #10]
d05e09e4:	220a      	movs	r2, #10
d05e09e6:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
d05e09ea:	7ae0      	ldrb	r0, [r4, #11]
d05e09ec:	ea41 410c 	orr.w	r1, r1, ip, lsl #16
d05e09f0:	f8df c290 	ldr.w	ip, [pc, #656]	; d05e0c84 <main+0x330>
d05e09f4:	ea41 6100 	orr.w	r1, r1, r0, lsl #24
d05e09f8:	7828      	ldrb	r0, [r5, #0]
d05e09fa:	f8d1 e00c 	ldr.w	lr, [r1, #12]
d05e09fe:	2158      	movs	r1, #88	; 0x58
d05e0a00:	9702      	str	r7, [sp, #8]
d05e0a02:	f8cd c004 	str.w	ip, [sp, #4]
d05e0a06:	9600      	str	r6, [sp, #0]
d05e0a08:	f8de b008 	ldr.w	fp, [lr, #8]
d05e0a0c:	47d8      	blx	fp
d05e0a0e:	f894 c008 	ldrb.w	ip, [r4, #8]
d05e0a12:	498a      	ldr	r1, [pc, #552]	; (d05e0c3c <main+0x2e8>)
d05e0a14:	232e      	movs	r3, #46	; 0x2e
d05e0a16:	f894 e009 	ldrb.w	lr, [r4, #9]
d05e0a1a:	220a      	movs	r2, #10
d05e0a1c:	6008      	str	r0, [r1, #0]
d05e0a1e:	2186      	movs	r1, #134	; 0x86
d05e0a20:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d05e0a24:	7aa0      	ldrb	r0, [r4, #10]
d05e0a26:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d05e0a2a:	7ae0      	ldrb	r0, [r4, #11]
d05e0a2c:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d05e0a30:	4883      	ldr	r0, [pc, #524]	; (d05e0c40 <main+0x2ec>)
d05e0a32:	f8dc c00c 	ldr.w	ip, [ip, #12]
d05e0a36:	9702      	str	r7, [sp, #8]
d05e0a38:	9600      	str	r6, [sp, #0]
d05e0a3a:	9001      	str	r0, [sp, #4]
d05e0a3c:	7828      	ldrb	r0, [r5, #0]
d05e0a3e:	f8dc b008 	ldr.w	fp, [ip, #8]
d05e0a42:	47d8      	blx	fp
d05e0a44:	f894 c008 	ldrb.w	ip, [r4, #8]
d05e0a48:	f894 e009 	ldrb.w	lr, [r4, #9]
d05e0a4c:	233a      	movs	r3, #58	; 0x3a
d05e0a4e:	f8ca 0000 	str.w	r0, [sl]
d05e0a52:	220a      	movs	r2, #10
d05e0a54:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d05e0a58:	7aa0      	ldrb	r0, [r4, #10]
d05e0a5a:	21b8      	movs	r1, #184	; 0xb8
d05e0a5c:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d05e0a60:	7ae0      	ldrb	r0, [r4, #11]
d05e0a62:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d05e0a66:	4877      	ldr	r0, [pc, #476]	; (d05e0c44 <main+0x2f0>)
d05e0a68:	f8dc c00c 	ldr.w	ip, [ip, #12]
d05e0a6c:	9702      	str	r7, [sp, #8]
d05e0a6e:	9600      	str	r6, [sp, #0]
d05e0a70:	9001      	str	r0, [sp, #4]
d05e0a72:	7828      	ldrb	r0, [r5, #0]
d05e0a74:	f8dc b008 	ldr.w	fp, [ip, #8]
d05e0a78:	47d8      	blx	fp
d05e0a7a:	f894 c008 	ldrb.w	ip, [r4, #8]
d05e0a7e:	f894 e009 	ldrb.w	lr, [r4, #9]
d05e0a82:	232c      	movs	r3, #44	; 0x2c
d05e0a84:	f8c9 0000 	str.w	r0, [r9]
d05e0a88:	220a      	movs	r2, #10
d05e0a8a:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d05e0a8e:	7aa0      	ldrb	r0, [r4, #10]
d05e0a90:	21f6      	movs	r1, #246	; 0xf6
d05e0a92:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d05e0a96:	7ae0      	ldrb	r0, [r4, #11]
d05e0a98:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d05e0a9c:	486a      	ldr	r0, [pc, #424]	; (d05e0c48 <main+0x2f4>)
d05e0a9e:	f8dc c00c 	ldr.w	ip, [ip, #12]
d05e0aa2:	9702      	str	r7, [sp, #8]
d05e0aa4:	9600      	str	r6, [sp, #0]
d05e0aa6:	9001      	str	r0, [sp, #4]
d05e0aa8:	7828      	ldrb	r0, [r5, #0]
d05e0aaa:	f8dc b008 	ldr.w	fp, [ip, #8]
d05e0aae:	47d8      	blx	fp
d05e0ab0:	f894 c008 	ldrb.w	ip, [r4, #8]
d05e0ab4:	f894 e009 	ldrb.w	lr, [r4, #9]
d05e0ab8:	2336      	movs	r3, #54	; 0x36
d05e0aba:	f8c8 0000 	str.w	r0, [r8]
d05e0abe:	220a      	movs	r2, #10
d05e0ac0:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d05e0ac4:	7aa0      	ldrb	r0, [r4, #10]
d05e0ac6:	f44f 71aa 	mov.w	r1, #340	; 0x154
d05e0aca:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d05e0ace:	7ae0      	ldrb	r0, [r4, #11]
d05e0ad0:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d05e0ad4:	485d      	ldr	r0, [pc, #372]	; (d05e0c4c <main+0x2f8>)
d05e0ad6:	f8dc c00c 	ldr.w	ip, [ip, #12]
d05e0ada:	9702      	str	r7, [sp, #8]
d05e0adc:	9001      	str	r0, [sp, #4]
d05e0ade:	9600      	str	r6, [sp, #0]
d05e0ae0:	7828      	ldrb	r0, [r5, #0]
d05e0ae2:	f8dc 6008 	ldr.w	r6, [ip, #8]
d05e0ae6:	47b0      	blx	r6
d05e0ae8:	7a23      	ldrb	r3, [r4, #8]
d05e0aea:	4607      	mov	r7, r0
d05e0aec:	7a60      	ldrb	r0, [r4, #9]
d05e0aee:	7aa1      	ldrb	r1, [r4, #10]
d05e0af0:	2200      	movs	r2, #0
d05e0af2:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d05e0af6:	f894 c00b 	ldrb.w	ip, [r4, #11]
d05e0afa:	4850      	ldr	r0, [pc, #320]	; (d05e0c3c <main+0x2e8>)
d05e0afc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0b00:	4e53      	ldr	r6, [pc, #332]	; (d05e0c50 <main+0x2fc>)
d05e0b02:	4954      	ldr	r1, [pc, #336]	; (d05e0c54 <main+0x300>)
d05e0b04:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d05e0b08:	6800      	ldr	r0, [r0, #0]
d05e0b0a:	6037      	str	r7, [r6, #0]
d05e0b0c:	68db      	ldr	r3, [r3, #12]
d05e0b0e:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05e0b10:	4798      	blx	r3
d05e0b12:	7a23      	ldrb	r3, [r4, #8]
d05e0b14:	7a60      	ldrb	r0, [r4, #9]
d05e0b16:	2200      	movs	r2, #0
d05e0b18:	7aa1      	ldrb	r1, [r4, #10]
d05e0b1a:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d05e0b1e:	7ae7      	ldrb	r7, [r4, #11]
d05e0b20:	f8da 0000 	ldr.w	r0, [sl]
d05e0b24:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0b28:	494b      	ldr	r1, [pc, #300]	; (d05e0c58 <main+0x304>)
d05e0b2a:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d05e0b2e:	68db      	ldr	r3, [r3, #12]
d05e0b30:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05e0b32:	4798      	blx	r3
d05e0b34:	7a23      	ldrb	r3, [r4, #8]
d05e0b36:	7a60      	ldrb	r0, [r4, #9]
d05e0b38:	2200      	movs	r2, #0
d05e0b3a:	7aa1      	ldrb	r1, [r4, #10]
d05e0b3c:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d05e0b40:	7ae7      	ldrb	r7, [r4, #11]
d05e0b42:	f8d9 0000 	ldr.w	r0, [r9]
d05e0b46:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0b4a:	4944      	ldr	r1, [pc, #272]	; (d05e0c5c <main+0x308>)
d05e0b4c:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d05e0b50:	68db      	ldr	r3, [r3, #12]
d05e0b52:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05e0b54:	4798      	blx	r3
d05e0b56:	7a23      	ldrb	r3, [r4, #8]
d05e0b58:	7a60      	ldrb	r0, [r4, #9]
d05e0b5a:	2200      	movs	r2, #0
d05e0b5c:	7aa1      	ldrb	r1, [r4, #10]
d05e0b5e:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d05e0b62:	7ae7      	ldrb	r7, [r4, #11]
d05e0b64:	f8d8 0000 	ldr.w	r0, [r8]
d05e0b68:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0b6c:	493c      	ldr	r1, [pc, #240]	; (d05e0c60 <main+0x30c>)
d05e0b6e:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d05e0b72:	68db      	ldr	r3, [r3, #12]
d05e0b74:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05e0b76:	4798      	blx	r3
d05e0b78:	7a23      	ldrb	r3, [r4, #8]
d05e0b7a:	7a61      	ldrb	r1, [r4, #9]
d05e0b7c:	2200      	movs	r2, #0
d05e0b7e:	f894 c00a 	ldrb.w	ip, [r4, #10]
d05e0b82:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d05e0b86:	7ae7      	ldrb	r7, [r4, #11]
d05e0b88:	4610      	mov	r0, r2
d05e0b8a:	4936      	ldr	r1, [pc, #216]	; (d05e0c64 <main+0x310>)
d05e0b8c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d05e0b90:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d05e0b94:	68db      	ldr	r3, [r3, #12]
d05e0b96:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05e0b98:	4798      	blx	r3
d05e0b9a:	7a23      	ldrb	r3, [r4, #8]
d05e0b9c:	7a60      	ldrb	r0, [r4, #9]
d05e0b9e:	2200      	movs	r2, #0
d05e0ba0:	7aa1      	ldrb	r1, [r4, #10]
d05e0ba2:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d05e0ba6:	7ae7      	ldrb	r7, [r4, #11]
d05e0ba8:	6830      	ldr	r0, [r6, #0]
d05e0baa:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0bae:	492e      	ldr	r1, [pc, #184]	; (d05e0c68 <main+0x314>)
d05e0bb0:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d05e0bb4:	68db      	ldr	r3, [r3, #12]
d05e0bb6:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05e0bb8:	4798      	blx	r3
d05e0bba:	482c      	ldr	r0, [pc, #176]	; (d05e0c6c <main+0x318>)
d05e0bbc:	f7ff faec 	bl	d05e0198 <set_document>
d05e0bc0:	482b      	ldr	r0, [pc, #172]	; (d05e0c70 <main+0x31c>)
d05e0bc2:	f7ff faa3 	bl	d05e010c <set_status>
d05e0bc6:	7a23      	ldrb	r3, [r4, #8]
d05e0bc8:	7a62      	ldrb	r2, [r4, #9]
d05e0bca:	2000      	movs	r0, #0
d05e0bcc:	7aa1      	ldrb	r1, [r4, #10]
d05e0bce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0bd2:	7ae2      	ldrb	r2, [r4, #11]
d05e0bd4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0bd8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0bdc:	68db      	ldr	r3, [r3, #12]
d05e0bde:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05e0be0:	4798      	blx	r3
d05e0be2:	7a23      	ldrb	r3, [r4, #8]
d05e0be4:	7a62      	ldrb	r2, [r4, #9]
d05e0be6:	7aa1      	ldrb	r1, [r4, #10]
d05e0be8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0bec:	7ae2      	ldrb	r2, [r4, #11]
d05e0bee:	7828      	ldrb	r0, [r5, #0]
d05e0bf0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0bf4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0bf8:	685b      	ldr	r3, [r3, #4]
d05e0bfa:	68db      	ldr	r3, [r3, #12]
d05e0bfc:	4798      	blx	r3
d05e0bfe:	7a23      	ldrb	r3, [r4, #8]
d05e0c00:	7a62      	ldrb	r2, [r4, #9]
d05e0c02:	7aa1      	ldrb	r1, [r4, #10]
d05e0c04:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0c08:	7ae2      	ldrb	r2, [r4, #11]
d05e0c0a:	7828      	ldrb	r0, [r5, #0]
d05e0c0c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0c10:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0c14:	685b      	ldr	r3, [r3, #4]
d05e0c16:	695b      	ldr	r3, [r3, #20]
d05e0c18:	4798      	blx	r3
d05e0c1a:	9b04      	ldr	r3, [sp, #16]
d05e0c1c:	2b01      	cmp	r3, #1
d05e0c1e:	dd35      	ble.n	d05e0c8c <main+0x338>
d05e0c20:	9b05      	ldr	r3, [sp, #20]
d05e0c22:	b39b      	cbz	r3, d05e0c8c <main+0x338>
d05e0c24:	6859      	ldr	r1, [r3, #4]
d05e0c26:	b389      	cbz	r1, d05e0c8c <main+0x338>
d05e0c28:	e02e      	b.n	d05e0c88 <main+0x334>
d05e0c2a:	bf00      	nop
d05e0c2c:	2001f000 	.word	0x2001f000
d05e0c30:	d05e25f4 	.word	0xd05e25f4
d05e0c34:	d05e31b5 	.word	0xd05e31b5
d05e0c38:	d05e064d 	.word	0xd05e064d
d05e0c3c:	d05e29a8 	.word	0xd05e29a8
d05e0c40:	d05e2618 	.word	0xd05e2618
d05e0c44:	d05e2620 	.word	0xd05e2620
d05e0c48:	d05e2628 	.word	0xd05e2628
d05e0c4c:	d05e2630 	.word	0xd05e2630
d05e0c50:	d05e29a0 	.word	0xd05e29a0
d05e0c54:	d05e029d 	.word	0xd05e029d
d05e0c58:	d05e02cd 	.word	0xd05e02cd
d05e0c5c:	d05e026d 	.word	0xd05e026d
d05e0c60:	d05e0335 	.word	0xd05e0335
d05e0c64:	d05e039d 	.word	0xd05e039d
d05e0c68:	d05e042d 	.word	0xd05e042d
d05e0c6c:	d05e2684 	.word	0xd05e2684
d05e0c70:	d05e2638 	.word	0xd05e2638
d05e0c74:	d05e2608 	.word	0xd05e2608
d05e0c78:	d05e29a4 	.word	0xd05e29a4
d05e0c7c:	d05e29ac 	.word	0xd05e29ac
d05e0c80:	d05e29b0 	.word	0xd05e29b0
d05e0c84:	d05e2614 	.word	0xd05e2614
d05e0c88:	780b      	ldrb	r3, [r1, #0]
d05e0c8a:	b91b      	cbnz	r3, d05e0c94 <main+0x340>
d05e0c8c:	2000      	movs	r0, #0
d05e0c8e:	b007      	add	sp, #28
d05e0c90:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e0c94:	4803      	ldr	r0, [pc, #12]	; (d05e0ca4 <main+0x350>)
d05e0c96:	f000 f823 	bl	d05e0ce0 <iprintf>
d05e0c9a:	9b05      	ldr	r3, [sp, #20]
d05e0c9c:	6858      	ldr	r0, [r3, #4]
d05e0c9e:	f7ff fc03 	bl	d05e04a8 <load_file>
d05e0ca2:	e7f3      	b.n	d05e0c8c <main+0x338>
d05e0ca4:	d05e2640 	.word	0xd05e2640

d05e0ca8 <__errno>:
d05e0ca8:	4b01      	ldr	r3, [pc, #4]	; (d05e0cb0 <__errno+0x8>)
d05e0caa:	6818      	ldr	r0, [r3, #0]
d05e0cac:	4770      	bx	lr
d05e0cae:	bf00      	nop
d05e0cb0:	d05e2934 	.word	0xd05e2934

d05e0cb4 <memcpy>:
d05e0cb4:	440a      	add	r2, r1
d05e0cb6:	4291      	cmp	r1, r2
d05e0cb8:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d05e0cbc:	d100      	bne.n	d05e0cc0 <memcpy+0xc>
d05e0cbe:	4770      	bx	lr
d05e0cc0:	b510      	push	{r4, lr}
d05e0cc2:	f811 4b01 	ldrb.w	r4, [r1], #1
d05e0cc6:	f803 4f01 	strb.w	r4, [r3, #1]!
d05e0cca:	4291      	cmp	r1, r2
d05e0ccc:	d1f9      	bne.n	d05e0cc2 <memcpy+0xe>
d05e0cce:	bd10      	pop	{r4, pc}

d05e0cd0 <memset>:
d05e0cd0:	4402      	add	r2, r0
d05e0cd2:	4603      	mov	r3, r0
d05e0cd4:	4293      	cmp	r3, r2
d05e0cd6:	d100      	bne.n	d05e0cda <memset+0xa>
d05e0cd8:	4770      	bx	lr
d05e0cda:	f803 1b01 	strb.w	r1, [r3], #1
d05e0cde:	e7f9      	b.n	d05e0cd4 <memset+0x4>

d05e0ce0 <iprintf>:
d05e0ce0:	b40f      	push	{r0, r1, r2, r3}
d05e0ce2:	4b0a      	ldr	r3, [pc, #40]	; (d05e0d0c <iprintf+0x2c>)
d05e0ce4:	b513      	push	{r0, r1, r4, lr}
d05e0ce6:	681c      	ldr	r4, [r3, #0]
d05e0ce8:	b124      	cbz	r4, d05e0cf4 <iprintf+0x14>
d05e0cea:	69a3      	ldr	r3, [r4, #24]
d05e0cec:	b913      	cbnz	r3, d05e0cf4 <iprintf+0x14>
d05e0cee:	4620      	mov	r0, r4
d05e0cf0:	f000 fb68 	bl	d05e13c4 <__sinit>
d05e0cf4:	ab05      	add	r3, sp, #20
d05e0cf6:	9a04      	ldr	r2, [sp, #16]
d05e0cf8:	68a1      	ldr	r1, [r4, #8]
d05e0cfa:	9301      	str	r3, [sp, #4]
d05e0cfc:	4620      	mov	r0, r4
d05e0cfe:	f000 fe9d 	bl	d05e1a3c <_vfiprintf_r>
d05e0d02:	b002      	add	sp, #8
d05e0d04:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d05e0d08:	b004      	add	sp, #16
d05e0d0a:	4770      	bx	lr
d05e0d0c:	d05e2934 	.word	0xd05e2934

d05e0d10 <_puts_r>:
d05e0d10:	b570      	push	{r4, r5, r6, lr}
d05e0d12:	460e      	mov	r6, r1
d05e0d14:	4605      	mov	r5, r0
d05e0d16:	b118      	cbz	r0, d05e0d20 <_puts_r+0x10>
d05e0d18:	6983      	ldr	r3, [r0, #24]
d05e0d1a:	b90b      	cbnz	r3, d05e0d20 <_puts_r+0x10>
d05e0d1c:	f000 fb52 	bl	d05e13c4 <__sinit>
d05e0d20:	69ab      	ldr	r3, [r5, #24]
d05e0d22:	68ac      	ldr	r4, [r5, #8]
d05e0d24:	b913      	cbnz	r3, d05e0d2c <_puts_r+0x1c>
d05e0d26:	4628      	mov	r0, r5
d05e0d28:	f000 fb4c 	bl	d05e13c4 <__sinit>
d05e0d2c:	4b2c      	ldr	r3, [pc, #176]	; (d05e0de0 <_puts_r+0xd0>)
d05e0d2e:	429c      	cmp	r4, r3
d05e0d30:	d120      	bne.n	d05e0d74 <_puts_r+0x64>
d05e0d32:	686c      	ldr	r4, [r5, #4]
d05e0d34:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05e0d36:	07db      	lsls	r3, r3, #31
d05e0d38:	d405      	bmi.n	d05e0d46 <_puts_r+0x36>
d05e0d3a:	89a3      	ldrh	r3, [r4, #12]
d05e0d3c:	0598      	lsls	r0, r3, #22
d05e0d3e:	d402      	bmi.n	d05e0d46 <_puts_r+0x36>
d05e0d40:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05e0d42:	f000 fbdd 	bl	d05e1500 <__retarget_lock_acquire_recursive>
d05e0d46:	89a3      	ldrh	r3, [r4, #12]
d05e0d48:	0719      	lsls	r1, r3, #28
d05e0d4a:	d51d      	bpl.n	d05e0d88 <_puts_r+0x78>
d05e0d4c:	6923      	ldr	r3, [r4, #16]
d05e0d4e:	b1db      	cbz	r3, d05e0d88 <_puts_r+0x78>
d05e0d50:	3e01      	subs	r6, #1
d05e0d52:	68a3      	ldr	r3, [r4, #8]
d05e0d54:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d05e0d58:	3b01      	subs	r3, #1
d05e0d5a:	60a3      	str	r3, [r4, #8]
d05e0d5c:	bb39      	cbnz	r1, d05e0dae <_puts_r+0x9e>
d05e0d5e:	2b00      	cmp	r3, #0
d05e0d60:	da38      	bge.n	d05e0dd4 <_puts_r+0xc4>
d05e0d62:	4622      	mov	r2, r4
d05e0d64:	210a      	movs	r1, #10
d05e0d66:	4628      	mov	r0, r5
d05e0d68:	f000 f952 	bl	d05e1010 <__swbuf_r>
d05e0d6c:	3001      	adds	r0, #1
d05e0d6e:	d011      	beq.n	d05e0d94 <_puts_r+0x84>
d05e0d70:	250a      	movs	r5, #10
d05e0d72:	e011      	b.n	d05e0d98 <_puts_r+0x88>
d05e0d74:	4b1b      	ldr	r3, [pc, #108]	; (d05e0de4 <_puts_r+0xd4>)
d05e0d76:	429c      	cmp	r4, r3
d05e0d78:	d101      	bne.n	d05e0d7e <_puts_r+0x6e>
d05e0d7a:	68ac      	ldr	r4, [r5, #8]
d05e0d7c:	e7da      	b.n	d05e0d34 <_puts_r+0x24>
d05e0d7e:	4b1a      	ldr	r3, [pc, #104]	; (d05e0de8 <_puts_r+0xd8>)
d05e0d80:	429c      	cmp	r4, r3
d05e0d82:	bf08      	it	eq
d05e0d84:	68ec      	ldreq	r4, [r5, #12]
d05e0d86:	e7d5      	b.n	d05e0d34 <_puts_r+0x24>
d05e0d88:	4621      	mov	r1, r4
d05e0d8a:	4628      	mov	r0, r5
d05e0d8c:	f000 f992 	bl	d05e10b4 <__swsetup_r>
d05e0d90:	2800      	cmp	r0, #0
d05e0d92:	d0dd      	beq.n	d05e0d50 <_puts_r+0x40>
d05e0d94:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05e0d98:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05e0d9a:	07da      	lsls	r2, r3, #31
d05e0d9c:	d405      	bmi.n	d05e0daa <_puts_r+0x9a>
d05e0d9e:	89a3      	ldrh	r3, [r4, #12]
d05e0da0:	059b      	lsls	r3, r3, #22
d05e0da2:	d402      	bmi.n	d05e0daa <_puts_r+0x9a>
d05e0da4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05e0da6:	f000 fbac 	bl	d05e1502 <__retarget_lock_release_recursive>
d05e0daa:	4628      	mov	r0, r5
d05e0dac:	bd70      	pop	{r4, r5, r6, pc}
d05e0dae:	2b00      	cmp	r3, #0
d05e0db0:	da04      	bge.n	d05e0dbc <_puts_r+0xac>
d05e0db2:	69a2      	ldr	r2, [r4, #24]
d05e0db4:	429a      	cmp	r2, r3
d05e0db6:	dc06      	bgt.n	d05e0dc6 <_puts_r+0xb6>
d05e0db8:	290a      	cmp	r1, #10
d05e0dba:	d004      	beq.n	d05e0dc6 <_puts_r+0xb6>
d05e0dbc:	6823      	ldr	r3, [r4, #0]
d05e0dbe:	1c5a      	adds	r2, r3, #1
d05e0dc0:	6022      	str	r2, [r4, #0]
d05e0dc2:	7019      	strb	r1, [r3, #0]
d05e0dc4:	e7c5      	b.n	d05e0d52 <_puts_r+0x42>
d05e0dc6:	4622      	mov	r2, r4
d05e0dc8:	4628      	mov	r0, r5
d05e0dca:	f000 f921 	bl	d05e1010 <__swbuf_r>
d05e0dce:	3001      	adds	r0, #1
d05e0dd0:	d1bf      	bne.n	d05e0d52 <_puts_r+0x42>
d05e0dd2:	e7df      	b.n	d05e0d94 <_puts_r+0x84>
d05e0dd4:	6823      	ldr	r3, [r4, #0]
d05e0dd6:	250a      	movs	r5, #10
d05e0dd8:	1c5a      	adds	r2, r3, #1
d05e0dda:	6022      	str	r2, [r4, #0]
d05e0ddc:	701d      	strb	r5, [r3, #0]
d05e0dde:	e7db      	b.n	d05e0d98 <_puts_r+0x88>
d05e0de0:	d05e27b0 	.word	0xd05e27b0
d05e0de4:	d05e27d0 	.word	0xd05e27d0
d05e0de8:	d05e2790 	.word	0xd05e2790

d05e0dec <puts>:
d05e0dec:	4b02      	ldr	r3, [pc, #8]	; (d05e0df8 <puts+0xc>)
d05e0dee:	4601      	mov	r1, r0
d05e0df0:	6818      	ldr	r0, [r3, #0]
d05e0df2:	f7ff bf8d 	b.w	d05e0d10 <_puts_r>
d05e0df6:	bf00      	nop
d05e0df8:	d05e2934 	.word	0xd05e2934

d05e0dfc <setbuf>:
d05e0dfc:	2900      	cmp	r1, #0
d05e0dfe:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05e0e02:	bf0c      	ite	eq
d05e0e04:	2202      	moveq	r2, #2
d05e0e06:	2200      	movne	r2, #0
d05e0e08:	f000 b800 	b.w	d05e0e0c <setvbuf>

d05e0e0c <setvbuf>:
d05e0e0c:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d05e0e10:	461d      	mov	r5, r3
d05e0e12:	4b5d      	ldr	r3, [pc, #372]	; (d05e0f88 <setvbuf+0x17c>)
d05e0e14:	681f      	ldr	r7, [r3, #0]
d05e0e16:	4604      	mov	r4, r0
d05e0e18:	460e      	mov	r6, r1
d05e0e1a:	4690      	mov	r8, r2
d05e0e1c:	b127      	cbz	r7, d05e0e28 <setvbuf+0x1c>
d05e0e1e:	69bb      	ldr	r3, [r7, #24]
d05e0e20:	b913      	cbnz	r3, d05e0e28 <setvbuf+0x1c>
d05e0e22:	4638      	mov	r0, r7
d05e0e24:	f000 face 	bl	d05e13c4 <__sinit>
d05e0e28:	4b58      	ldr	r3, [pc, #352]	; (d05e0f8c <setvbuf+0x180>)
d05e0e2a:	429c      	cmp	r4, r3
d05e0e2c:	d167      	bne.n	d05e0efe <setvbuf+0xf2>
d05e0e2e:	687c      	ldr	r4, [r7, #4]
d05e0e30:	f1b8 0f02 	cmp.w	r8, #2
d05e0e34:	d006      	beq.n	d05e0e44 <setvbuf+0x38>
d05e0e36:	f1b8 0f01 	cmp.w	r8, #1
d05e0e3a:	f200 809f 	bhi.w	d05e0f7c <setvbuf+0x170>
d05e0e3e:	2d00      	cmp	r5, #0
d05e0e40:	f2c0 809c 	blt.w	d05e0f7c <setvbuf+0x170>
d05e0e44:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05e0e46:	07db      	lsls	r3, r3, #31
d05e0e48:	d405      	bmi.n	d05e0e56 <setvbuf+0x4a>
d05e0e4a:	89a3      	ldrh	r3, [r4, #12]
d05e0e4c:	0598      	lsls	r0, r3, #22
d05e0e4e:	d402      	bmi.n	d05e0e56 <setvbuf+0x4a>
d05e0e50:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05e0e52:	f000 fb55 	bl	d05e1500 <__retarget_lock_acquire_recursive>
d05e0e56:	4621      	mov	r1, r4
d05e0e58:	4638      	mov	r0, r7
d05e0e5a:	f000 fa1f 	bl	d05e129c <_fflush_r>
d05e0e5e:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05e0e60:	b141      	cbz	r1, d05e0e74 <setvbuf+0x68>
d05e0e62:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05e0e66:	4299      	cmp	r1, r3
d05e0e68:	d002      	beq.n	d05e0e70 <setvbuf+0x64>
d05e0e6a:	4638      	mov	r0, r7
d05e0e6c:	f000 fbb6 	bl	d05e15dc <_free_r>
d05e0e70:	2300      	movs	r3, #0
d05e0e72:	6363      	str	r3, [r4, #52]	; 0x34
d05e0e74:	2300      	movs	r3, #0
d05e0e76:	61a3      	str	r3, [r4, #24]
d05e0e78:	6063      	str	r3, [r4, #4]
d05e0e7a:	89a3      	ldrh	r3, [r4, #12]
d05e0e7c:	0619      	lsls	r1, r3, #24
d05e0e7e:	d503      	bpl.n	d05e0e88 <setvbuf+0x7c>
d05e0e80:	6921      	ldr	r1, [r4, #16]
d05e0e82:	4638      	mov	r0, r7
d05e0e84:	f000 fbaa 	bl	d05e15dc <_free_r>
d05e0e88:	89a3      	ldrh	r3, [r4, #12]
d05e0e8a:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d05e0e8e:	f023 0303 	bic.w	r3, r3, #3
d05e0e92:	f1b8 0f02 	cmp.w	r8, #2
d05e0e96:	81a3      	strh	r3, [r4, #12]
d05e0e98:	d06c      	beq.n	d05e0f74 <setvbuf+0x168>
d05e0e9a:	ab01      	add	r3, sp, #4
d05e0e9c:	466a      	mov	r2, sp
d05e0e9e:	4621      	mov	r1, r4
d05e0ea0:	4638      	mov	r0, r7
d05e0ea2:	f000 fb2f 	bl	d05e1504 <__swhatbuf_r>
d05e0ea6:	89a3      	ldrh	r3, [r4, #12]
d05e0ea8:	4318      	orrs	r0, r3
d05e0eaa:	81a0      	strh	r0, [r4, #12]
d05e0eac:	2d00      	cmp	r5, #0
d05e0eae:	d130      	bne.n	d05e0f12 <setvbuf+0x106>
d05e0eb0:	9d00      	ldr	r5, [sp, #0]
d05e0eb2:	4628      	mov	r0, r5
d05e0eb4:	f000 fb8a 	bl	d05e15cc <malloc>
d05e0eb8:	4606      	mov	r6, r0
d05e0eba:	2800      	cmp	r0, #0
d05e0ebc:	d155      	bne.n	d05e0f6a <setvbuf+0x15e>
d05e0ebe:	f8dd 9000 	ldr.w	r9, [sp]
d05e0ec2:	45a9      	cmp	r9, r5
d05e0ec4:	d14a      	bne.n	d05e0f5c <setvbuf+0x150>
d05e0ec6:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05e0eca:	2200      	movs	r2, #0
d05e0ecc:	60a2      	str	r2, [r4, #8]
d05e0ece:	f104 0247 	add.w	r2, r4, #71	; 0x47
d05e0ed2:	6022      	str	r2, [r4, #0]
d05e0ed4:	6122      	str	r2, [r4, #16]
d05e0ed6:	2201      	movs	r2, #1
d05e0ed8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05e0edc:	6162      	str	r2, [r4, #20]
d05e0ede:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05e0ee0:	f043 0302 	orr.w	r3, r3, #2
d05e0ee4:	07d2      	lsls	r2, r2, #31
d05e0ee6:	81a3      	strh	r3, [r4, #12]
d05e0ee8:	d405      	bmi.n	d05e0ef6 <setvbuf+0xea>
d05e0eea:	f413 7f00 	tst.w	r3, #512	; 0x200
d05e0eee:	d102      	bne.n	d05e0ef6 <setvbuf+0xea>
d05e0ef0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05e0ef2:	f000 fb06 	bl	d05e1502 <__retarget_lock_release_recursive>
d05e0ef6:	4628      	mov	r0, r5
d05e0ef8:	b003      	add	sp, #12
d05e0efa:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05e0efe:	4b24      	ldr	r3, [pc, #144]	; (d05e0f90 <setvbuf+0x184>)
d05e0f00:	429c      	cmp	r4, r3
d05e0f02:	d101      	bne.n	d05e0f08 <setvbuf+0xfc>
d05e0f04:	68bc      	ldr	r4, [r7, #8]
d05e0f06:	e793      	b.n	d05e0e30 <setvbuf+0x24>
d05e0f08:	4b22      	ldr	r3, [pc, #136]	; (d05e0f94 <setvbuf+0x188>)
d05e0f0a:	429c      	cmp	r4, r3
d05e0f0c:	bf08      	it	eq
d05e0f0e:	68fc      	ldreq	r4, [r7, #12]
d05e0f10:	e78e      	b.n	d05e0e30 <setvbuf+0x24>
d05e0f12:	2e00      	cmp	r6, #0
d05e0f14:	d0cd      	beq.n	d05e0eb2 <setvbuf+0xa6>
d05e0f16:	69bb      	ldr	r3, [r7, #24]
d05e0f18:	b913      	cbnz	r3, d05e0f20 <setvbuf+0x114>
d05e0f1a:	4638      	mov	r0, r7
d05e0f1c:	f000 fa52 	bl	d05e13c4 <__sinit>
d05e0f20:	f1b8 0f01 	cmp.w	r8, #1
d05e0f24:	bf08      	it	eq
d05e0f26:	89a3      	ldrheq	r3, [r4, #12]
d05e0f28:	6026      	str	r6, [r4, #0]
d05e0f2a:	bf04      	itt	eq
d05e0f2c:	f043 0301 	orreq.w	r3, r3, #1
d05e0f30:	81a3      	strheq	r3, [r4, #12]
d05e0f32:	89a2      	ldrh	r2, [r4, #12]
d05e0f34:	f012 0308 	ands.w	r3, r2, #8
d05e0f38:	e9c4 6504 	strd	r6, r5, [r4, #16]
d05e0f3c:	d01c      	beq.n	d05e0f78 <setvbuf+0x16c>
d05e0f3e:	07d3      	lsls	r3, r2, #31
d05e0f40:	bf41      	itttt	mi
d05e0f42:	2300      	movmi	r3, #0
d05e0f44:	426d      	negmi	r5, r5
d05e0f46:	60a3      	strmi	r3, [r4, #8]
d05e0f48:	61a5      	strmi	r5, [r4, #24]
d05e0f4a:	bf58      	it	pl
d05e0f4c:	60a5      	strpl	r5, [r4, #8]
d05e0f4e:	6e65      	ldr	r5, [r4, #100]	; 0x64
d05e0f50:	f015 0501 	ands.w	r5, r5, #1
d05e0f54:	d115      	bne.n	d05e0f82 <setvbuf+0x176>
d05e0f56:	f412 7f00 	tst.w	r2, #512	; 0x200
d05e0f5a:	e7c8      	b.n	d05e0eee <setvbuf+0xe2>
d05e0f5c:	4648      	mov	r0, r9
d05e0f5e:	f000 fb35 	bl	d05e15cc <malloc>
d05e0f62:	4606      	mov	r6, r0
d05e0f64:	2800      	cmp	r0, #0
d05e0f66:	d0ae      	beq.n	d05e0ec6 <setvbuf+0xba>
d05e0f68:	464d      	mov	r5, r9
d05e0f6a:	89a3      	ldrh	r3, [r4, #12]
d05e0f6c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05e0f70:	81a3      	strh	r3, [r4, #12]
d05e0f72:	e7d0      	b.n	d05e0f16 <setvbuf+0x10a>
d05e0f74:	2500      	movs	r5, #0
d05e0f76:	e7a8      	b.n	d05e0eca <setvbuf+0xbe>
d05e0f78:	60a3      	str	r3, [r4, #8]
d05e0f7a:	e7e8      	b.n	d05e0f4e <setvbuf+0x142>
d05e0f7c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05e0f80:	e7b9      	b.n	d05e0ef6 <setvbuf+0xea>
d05e0f82:	2500      	movs	r5, #0
d05e0f84:	e7b7      	b.n	d05e0ef6 <setvbuf+0xea>
d05e0f86:	bf00      	nop
d05e0f88:	d05e2934 	.word	0xd05e2934
d05e0f8c:	d05e27b0 	.word	0xd05e27b0
d05e0f90:	d05e27d0 	.word	0xd05e27d0
d05e0f94:	d05e2790 	.word	0xd05e2790

d05e0f98 <sniprintf>:
d05e0f98:	b40c      	push	{r2, r3}
d05e0f9a:	b530      	push	{r4, r5, lr}
d05e0f9c:	4b17      	ldr	r3, [pc, #92]	; (d05e0ffc <sniprintf+0x64>)
d05e0f9e:	1e0c      	subs	r4, r1, #0
d05e0fa0:	681d      	ldr	r5, [r3, #0]
d05e0fa2:	b09d      	sub	sp, #116	; 0x74
d05e0fa4:	da08      	bge.n	d05e0fb8 <sniprintf+0x20>
d05e0fa6:	238b      	movs	r3, #139	; 0x8b
d05e0fa8:	602b      	str	r3, [r5, #0]
d05e0faa:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0fae:	b01d      	add	sp, #116	; 0x74
d05e0fb0:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05e0fb4:	b002      	add	sp, #8
d05e0fb6:	4770      	bx	lr
d05e0fb8:	f44f 7302 	mov.w	r3, #520	; 0x208
d05e0fbc:	f8ad 3014 	strh.w	r3, [sp, #20]
d05e0fc0:	bf14      	ite	ne
d05e0fc2:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d05e0fc6:	4623      	moveq	r3, r4
d05e0fc8:	9304      	str	r3, [sp, #16]
d05e0fca:	9307      	str	r3, [sp, #28]
d05e0fcc:	f64f 73ff 	movw	r3, #65535	; 0xffff
d05e0fd0:	9002      	str	r0, [sp, #8]
d05e0fd2:	9006      	str	r0, [sp, #24]
d05e0fd4:	f8ad 3016 	strh.w	r3, [sp, #22]
d05e0fd8:	9a20      	ldr	r2, [sp, #128]	; 0x80
d05e0fda:	ab21      	add	r3, sp, #132	; 0x84
d05e0fdc:	a902      	add	r1, sp, #8
d05e0fde:	4628      	mov	r0, r5
d05e0fe0:	9301      	str	r3, [sp, #4]
d05e0fe2:	f000 fc01 	bl	d05e17e8 <_svfiprintf_r>
d05e0fe6:	1c43      	adds	r3, r0, #1
d05e0fe8:	bfbc      	itt	lt
d05e0fea:	238b      	movlt	r3, #139	; 0x8b
d05e0fec:	602b      	strlt	r3, [r5, #0]
d05e0fee:	2c00      	cmp	r4, #0
d05e0ff0:	d0dd      	beq.n	d05e0fae <sniprintf+0x16>
d05e0ff2:	9b02      	ldr	r3, [sp, #8]
d05e0ff4:	2200      	movs	r2, #0
d05e0ff6:	701a      	strb	r2, [r3, #0]
d05e0ff8:	e7d9      	b.n	d05e0fae <sniprintf+0x16>
d05e0ffa:	bf00      	nop
d05e0ffc:	d05e2934 	.word	0xd05e2934

d05e1000 <strlen>:
d05e1000:	4603      	mov	r3, r0
d05e1002:	f813 2b01 	ldrb.w	r2, [r3], #1
d05e1006:	2a00      	cmp	r2, #0
d05e1008:	d1fb      	bne.n	d05e1002 <strlen+0x2>
d05e100a:	1a18      	subs	r0, r3, r0
d05e100c:	3801      	subs	r0, #1
d05e100e:	4770      	bx	lr

d05e1010 <__swbuf_r>:
d05e1010:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e1012:	460e      	mov	r6, r1
d05e1014:	4614      	mov	r4, r2
d05e1016:	4605      	mov	r5, r0
d05e1018:	b118      	cbz	r0, d05e1022 <__swbuf_r+0x12>
d05e101a:	6983      	ldr	r3, [r0, #24]
d05e101c:	b90b      	cbnz	r3, d05e1022 <__swbuf_r+0x12>
d05e101e:	f000 f9d1 	bl	d05e13c4 <__sinit>
d05e1022:	4b21      	ldr	r3, [pc, #132]	; (d05e10a8 <__swbuf_r+0x98>)
d05e1024:	429c      	cmp	r4, r3
d05e1026:	d12b      	bne.n	d05e1080 <__swbuf_r+0x70>
d05e1028:	686c      	ldr	r4, [r5, #4]
d05e102a:	69a3      	ldr	r3, [r4, #24]
d05e102c:	60a3      	str	r3, [r4, #8]
d05e102e:	89a3      	ldrh	r3, [r4, #12]
d05e1030:	071a      	lsls	r2, r3, #28
d05e1032:	d52f      	bpl.n	d05e1094 <__swbuf_r+0x84>
d05e1034:	6923      	ldr	r3, [r4, #16]
d05e1036:	b36b      	cbz	r3, d05e1094 <__swbuf_r+0x84>
d05e1038:	6923      	ldr	r3, [r4, #16]
d05e103a:	6820      	ldr	r0, [r4, #0]
d05e103c:	1ac0      	subs	r0, r0, r3
d05e103e:	6963      	ldr	r3, [r4, #20]
d05e1040:	b2f6      	uxtb	r6, r6
d05e1042:	4283      	cmp	r3, r0
d05e1044:	4637      	mov	r7, r6
d05e1046:	dc04      	bgt.n	d05e1052 <__swbuf_r+0x42>
d05e1048:	4621      	mov	r1, r4
d05e104a:	4628      	mov	r0, r5
d05e104c:	f000 f926 	bl	d05e129c <_fflush_r>
d05e1050:	bb30      	cbnz	r0, d05e10a0 <__swbuf_r+0x90>
d05e1052:	68a3      	ldr	r3, [r4, #8]
d05e1054:	3b01      	subs	r3, #1
d05e1056:	60a3      	str	r3, [r4, #8]
d05e1058:	6823      	ldr	r3, [r4, #0]
d05e105a:	1c5a      	adds	r2, r3, #1
d05e105c:	6022      	str	r2, [r4, #0]
d05e105e:	701e      	strb	r6, [r3, #0]
d05e1060:	6963      	ldr	r3, [r4, #20]
d05e1062:	3001      	adds	r0, #1
d05e1064:	4283      	cmp	r3, r0
d05e1066:	d004      	beq.n	d05e1072 <__swbuf_r+0x62>
d05e1068:	89a3      	ldrh	r3, [r4, #12]
d05e106a:	07db      	lsls	r3, r3, #31
d05e106c:	d506      	bpl.n	d05e107c <__swbuf_r+0x6c>
d05e106e:	2e0a      	cmp	r6, #10
d05e1070:	d104      	bne.n	d05e107c <__swbuf_r+0x6c>
d05e1072:	4621      	mov	r1, r4
d05e1074:	4628      	mov	r0, r5
d05e1076:	f000 f911 	bl	d05e129c <_fflush_r>
d05e107a:	b988      	cbnz	r0, d05e10a0 <__swbuf_r+0x90>
d05e107c:	4638      	mov	r0, r7
d05e107e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e1080:	4b0a      	ldr	r3, [pc, #40]	; (d05e10ac <__swbuf_r+0x9c>)
d05e1082:	429c      	cmp	r4, r3
d05e1084:	d101      	bne.n	d05e108a <__swbuf_r+0x7a>
d05e1086:	68ac      	ldr	r4, [r5, #8]
d05e1088:	e7cf      	b.n	d05e102a <__swbuf_r+0x1a>
d05e108a:	4b09      	ldr	r3, [pc, #36]	; (d05e10b0 <__swbuf_r+0xa0>)
d05e108c:	429c      	cmp	r4, r3
d05e108e:	bf08      	it	eq
d05e1090:	68ec      	ldreq	r4, [r5, #12]
d05e1092:	e7ca      	b.n	d05e102a <__swbuf_r+0x1a>
d05e1094:	4621      	mov	r1, r4
d05e1096:	4628      	mov	r0, r5
d05e1098:	f000 f80c 	bl	d05e10b4 <__swsetup_r>
d05e109c:	2800      	cmp	r0, #0
d05e109e:	d0cb      	beq.n	d05e1038 <__swbuf_r+0x28>
d05e10a0:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d05e10a4:	e7ea      	b.n	d05e107c <__swbuf_r+0x6c>
d05e10a6:	bf00      	nop
d05e10a8:	d05e27b0 	.word	0xd05e27b0
d05e10ac:	d05e27d0 	.word	0xd05e27d0
d05e10b0:	d05e2790 	.word	0xd05e2790

d05e10b4 <__swsetup_r>:
d05e10b4:	4b32      	ldr	r3, [pc, #200]	; (d05e1180 <__swsetup_r+0xcc>)
d05e10b6:	b570      	push	{r4, r5, r6, lr}
d05e10b8:	681d      	ldr	r5, [r3, #0]
d05e10ba:	4606      	mov	r6, r0
d05e10bc:	460c      	mov	r4, r1
d05e10be:	b125      	cbz	r5, d05e10ca <__swsetup_r+0x16>
d05e10c0:	69ab      	ldr	r3, [r5, #24]
d05e10c2:	b913      	cbnz	r3, d05e10ca <__swsetup_r+0x16>
d05e10c4:	4628      	mov	r0, r5
d05e10c6:	f000 f97d 	bl	d05e13c4 <__sinit>
d05e10ca:	4b2e      	ldr	r3, [pc, #184]	; (d05e1184 <__swsetup_r+0xd0>)
d05e10cc:	429c      	cmp	r4, r3
d05e10ce:	d10f      	bne.n	d05e10f0 <__swsetup_r+0x3c>
d05e10d0:	686c      	ldr	r4, [r5, #4]
d05e10d2:	89a3      	ldrh	r3, [r4, #12]
d05e10d4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d05e10d8:	0719      	lsls	r1, r3, #28
d05e10da:	d42c      	bmi.n	d05e1136 <__swsetup_r+0x82>
d05e10dc:	06dd      	lsls	r5, r3, #27
d05e10de:	d411      	bmi.n	d05e1104 <__swsetup_r+0x50>
d05e10e0:	2309      	movs	r3, #9
d05e10e2:	6033      	str	r3, [r6, #0]
d05e10e4:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d05e10e8:	81a3      	strh	r3, [r4, #12]
d05e10ea:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e10ee:	e03e      	b.n	d05e116e <__swsetup_r+0xba>
d05e10f0:	4b25      	ldr	r3, [pc, #148]	; (d05e1188 <__swsetup_r+0xd4>)
d05e10f2:	429c      	cmp	r4, r3
d05e10f4:	d101      	bne.n	d05e10fa <__swsetup_r+0x46>
d05e10f6:	68ac      	ldr	r4, [r5, #8]
d05e10f8:	e7eb      	b.n	d05e10d2 <__swsetup_r+0x1e>
d05e10fa:	4b24      	ldr	r3, [pc, #144]	; (d05e118c <__swsetup_r+0xd8>)
d05e10fc:	429c      	cmp	r4, r3
d05e10fe:	bf08      	it	eq
d05e1100:	68ec      	ldreq	r4, [r5, #12]
d05e1102:	e7e6      	b.n	d05e10d2 <__swsetup_r+0x1e>
d05e1104:	0758      	lsls	r0, r3, #29
d05e1106:	d512      	bpl.n	d05e112e <__swsetup_r+0x7a>
d05e1108:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05e110a:	b141      	cbz	r1, d05e111e <__swsetup_r+0x6a>
d05e110c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05e1110:	4299      	cmp	r1, r3
d05e1112:	d002      	beq.n	d05e111a <__swsetup_r+0x66>
d05e1114:	4630      	mov	r0, r6
d05e1116:	f000 fa61 	bl	d05e15dc <_free_r>
d05e111a:	2300      	movs	r3, #0
d05e111c:	6363      	str	r3, [r4, #52]	; 0x34
d05e111e:	89a3      	ldrh	r3, [r4, #12]
d05e1120:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d05e1124:	81a3      	strh	r3, [r4, #12]
d05e1126:	2300      	movs	r3, #0
d05e1128:	6063      	str	r3, [r4, #4]
d05e112a:	6923      	ldr	r3, [r4, #16]
d05e112c:	6023      	str	r3, [r4, #0]
d05e112e:	89a3      	ldrh	r3, [r4, #12]
d05e1130:	f043 0308 	orr.w	r3, r3, #8
d05e1134:	81a3      	strh	r3, [r4, #12]
d05e1136:	6923      	ldr	r3, [r4, #16]
d05e1138:	b94b      	cbnz	r3, d05e114e <__swsetup_r+0x9a>
d05e113a:	89a3      	ldrh	r3, [r4, #12]
d05e113c:	f403 7320 	and.w	r3, r3, #640	; 0x280
d05e1140:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d05e1144:	d003      	beq.n	d05e114e <__swsetup_r+0x9a>
d05e1146:	4621      	mov	r1, r4
d05e1148:	4630      	mov	r0, r6
d05e114a:	f000 f9ff 	bl	d05e154c <__smakebuf_r>
d05e114e:	89a0      	ldrh	r0, [r4, #12]
d05e1150:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d05e1154:	f010 0301 	ands.w	r3, r0, #1
d05e1158:	d00a      	beq.n	d05e1170 <__swsetup_r+0xbc>
d05e115a:	2300      	movs	r3, #0
d05e115c:	60a3      	str	r3, [r4, #8]
d05e115e:	6963      	ldr	r3, [r4, #20]
d05e1160:	425b      	negs	r3, r3
d05e1162:	61a3      	str	r3, [r4, #24]
d05e1164:	6923      	ldr	r3, [r4, #16]
d05e1166:	b943      	cbnz	r3, d05e117a <__swsetup_r+0xc6>
d05e1168:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d05e116c:	d1ba      	bne.n	d05e10e4 <__swsetup_r+0x30>
d05e116e:	bd70      	pop	{r4, r5, r6, pc}
d05e1170:	0781      	lsls	r1, r0, #30
d05e1172:	bf58      	it	pl
d05e1174:	6963      	ldrpl	r3, [r4, #20]
d05e1176:	60a3      	str	r3, [r4, #8]
d05e1178:	e7f4      	b.n	d05e1164 <__swsetup_r+0xb0>
d05e117a:	2000      	movs	r0, #0
d05e117c:	e7f7      	b.n	d05e116e <__swsetup_r+0xba>
d05e117e:	bf00      	nop
d05e1180:	d05e2934 	.word	0xd05e2934
d05e1184:	d05e27b0 	.word	0xd05e27b0
d05e1188:	d05e27d0 	.word	0xd05e27d0
d05e118c:	d05e2790 	.word	0xd05e2790

d05e1190 <__sflush_r>:
d05e1190:	898a      	ldrh	r2, [r1, #12]
d05e1192:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05e1196:	4605      	mov	r5, r0
d05e1198:	0710      	lsls	r0, r2, #28
d05e119a:	460c      	mov	r4, r1
d05e119c:	d458      	bmi.n	d05e1250 <__sflush_r+0xc0>
d05e119e:	684b      	ldr	r3, [r1, #4]
d05e11a0:	2b00      	cmp	r3, #0
d05e11a2:	dc05      	bgt.n	d05e11b0 <__sflush_r+0x20>
d05e11a4:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d05e11a6:	2b00      	cmp	r3, #0
d05e11a8:	dc02      	bgt.n	d05e11b0 <__sflush_r+0x20>
d05e11aa:	2000      	movs	r0, #0
d05e11ac:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d05e11b0:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05e11b2:	2e00      	cmp	r6, #0
d05e11b4:	d0f9      	beq.n	d05e11aa <__sflush_r+0x1a>
d05e11b6:	2300      	movs	r3, #0
d05e11b8:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d05e11bc:	682f      	ldr	r7, [r5, #0]
d05e11be:	602b      	str	r3, [r5, #0]
d05e11c0:	d032      	beq.n	d05e1228 <__sflush_r+0x98>
d05e11c2:	6d60      	ldr	r0, [r4, #84]	; 0x54
d05e11c4:	89a3      	ldrh	r3, [r4, #12]
d05e11c6:	075a      	lsls	r2, r3, #29
d05e11c8:	d505      	bpl.n	d05e11d6 <__sflush_r+0x46>
d05e11ca:	6863      	ldr	r3, [r4, #4]
d05e11cc:	1ac0      	subs	r0, r0, r3
d05e11ce:	6b63      	ldr	r3, [r4, #52]	; 0x34
d05e11d0:	b10b      	cbz	r3, d05e11d6 <__sflush_r+0x46>
d05e11d2:	6c23      	ldr	r3, [r4, #64]	; 0x40
d05e11d4:	1ac0      	subs	r0, r0, r3
d05e11d6:	2300      	movs	r3, #0
d05e11d8:	4602      	mov	r2, r0
d05e11da:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05e11dc:	6a21      	ldr	r1, [r4, #32]
d05e11de:	4628      	mov	r0, r5
d05e11e0:	47b0      	blx	r6
d05e11e2:	1c43      	adds	r3, r0, #1
d05e11e4:	89a3      	ldrh	r3, [r4, #12]
d05e11e6:	d106      	bne.n	d05e11f6 <__sflush_r+0x66>
d05e11e8:	6829      	ldr	r1, [r5, #0]
d05e11ea:	291d      	cmp	r1, #29
d05e11ec:	d82c      	bhi.n	d05e1248 <__sflush_r+0xb8>
d05e11ee:	4a2a      	ldr	r2, [pc, #168]	; (d05e1298 <__sflush_r+0x108>)
d05e11f0:	40ca      	lsrs	r2, r1
d05e11f2:	07d6      	lsls	r6, r2, #31
d05e11f4:	d528      	bpl.n	d05e1248 <__sflush_r+0xb8>
d05e11f6:	2200      	movs	r2, #0
d05e11f8:	6062      	str	r2, [r4, #4]
d05e11fa:	04d9      	lsls	r1, r3, #19
d05e11fc:	6922      	ldr	r2, [r4, #16]
d05e11fe:	6022      	str	r2, [r4, #0]
d05e1200:	d504      	bpl.n	d05e120c <__sflush_r+0x7c>
d05e1202:	1c42      	adds	r2, r0, #1
d05e1204:	d101      	bne.n	d05e120a <__sflush_r+0x7a>
d05e1206:	682b      	ldr	r3, [r5, #0]
d05e1208:	b903      	cbnz	r3, d05e120c <__sflush_r+0x7c>
d05e120a:	6560      	str	r0, [r4, #84]	; 0x54
d05e120c:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05e120e:	602f      	str	r7, [r5, #0]
d05e1210:	2900      	cmp	r1, #0
d05e1212:	d0ca      	beq.n	d05e11aa <__sflush_r+0x1a>
d05e1214:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05e1218:	4299      	cmp	r1, r3
d05e121a:	d002      	beq.n	d05e1222 <__sflush_r+0x92>
d05e121c:	4628      	mov	r0, r5
d05e121e:	f000 f9dd 	bl	d05e15dc <_free_r>
d05e1222:	2000      	movs	r0, #0
d05e1224:	6360      	str	r0, [r4, #52]	; 0x34
d05e1226:	e7c1      	b.n	d05e11ac <__sflush_r+0x1c>
d05e1228:	6a21      	ldr	r1, [r4, #32]
d05e122a:	2301      	movs	r3, #1
d05e122c:	4628      	mov	r0, r5
d05e122e:	47b0      	blx	r6
d05e1230:	1c41      	adds	r1, r0, #1
d05e1232:	d1c7      	bne.n	d05e11c4 <__sflush_r+0x34>
d05e1234:	682b      	ldr	r3, [r5, #0]
d05e1236:	2b00      	cmp	r3, #0
d05e1238:	d0c4      	beq.n	d05e11c4 <__sflush_r+0x34>
d05e123a:	2b1d      	cmp	r3, #29
d05e123c:	d001      	beq.n	d05e1242 <__sflush_r+0xb2>
d05e123e:	2b16      	cmp	r3, #22
d05e1240:	d101      	bne.n	d05e1246 <__sflush_r+0xb6>
d05e1242:	602f      	str	r7, [r5, #0]
d05e1244:	e7b1      	b.n	d05e11aa <__sflush_r+0x1a>
d05e1246:	89a3      	ldrh	r3, [r4, #12]
d05e1248:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05e124c:	81a3      	strh	r3, [r4, #12]
d05e124e:	e7ad      	b.n	d05e11ac <__sflush_r+0x1c>
d05e1250:	690f      	ldr	r7, [r1, #16]
d05e1252:	2f00      	cmp	r7, #0
d05e1254:	d0a9      	beq.n	d05e11aa <__sflush_r+0x1a>
d05e1256:	0793      	lsls	r3, r2, #30
d05e1258:	680e      	ldr	r6, [r1, #0]
d05e125a:	bf08      	it	eq
d05e125c:	694b      	ldreq	r3, [r1, #20]
d05e125e:	600f      	str	r7, [r1, #0]
d05e1260:	bf18      	it	ne
d05e1262:	2300      	movne	r3, #0
d05e1264:	eba6 0807 	sub.w	r8, r6, r7
d05e1268:	608b      	str	r3, [r1, #8]
d05e126a:	f1b8 0f00 	cmp.w	r8, #0
d05e126e:	dd9c      	ble.n	d05e11aa <__sflush_r+0x1a>
d05e1270:	6a21      	ldr	r1, [r4, #32]
d05e1272:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d05e1274:	4643      	mov	r3, r8
d05e1276:	463a      	mov	r2, r7
d05e1278:	4628      	mov	r0, r5
d05e127a:	47b0      	blx	r6
d05e127c:	2800      	cmp	r0, #0
d05e127e:	dc06      	bgt.n	d05e128e <__sflush_r+0xfe>
d05e1280:	89a3      	ldrh	r3, [r4, #12]
d05e1282:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05e1286:	81a3      	strh	r3, [r4, #12]
d05e1288:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e128c:	e78e      	b.n	d05e11ac <__sflush_r+0x1c>
d05e128e:	4407      	add	r7, r0
d05e1290:	eba8 0800 	sub.w	r8, r8, r0
d05e1294:	e7e9      	b.n	d05e126a <__sflush_r+0xda>
d05e1296:	bf00      	nop
d05e1298:	20400001 	.word	0x20400001

d05e129c <_fflush_r>:
d05e129c:	b538      	push	{r3, r4, r5, lr}
d05e129e:	690b      	ldr	r3, [r1, #16]
d05e12a0:	4605      	mov	r5, r0
d05e12a2:	460c      	mov	r4, r1
d05e12a4:	b913      	cbnz	r3, d05e12ac <_fflush_r+0x10>
d05e12a6:	2500      	movs	r5, #0
d05e12a8:	4628      	mov	r0, r5
d05e12aa:	bd38      	pop	{r3, r4, r5, pc}
d05e12ac:	b118      	cbz	r0, d05e12b6 <_fflush_r+0x1a>
d05e12ae:	6983      	ldr	r3, [r0, #24]
d05e12b0:	b90b      	cbnz	r3, d05e12b6 <_fflush_r+0x1a>
d05e12b2:	f000 f887 	bl	d05e13c4 <__sinit>
d05e12b6:	4b14      	ldr	r3, [pc, #80]	; (d05e1308 <_fflush_r+0x6c>)
d05e12b8:	429c      	cmp	r4, r3
d05e12ba:	d11b      	bne.n	d05e12f4 <_fflush_r+0x58>
d05e12bc:	686c      	ldr	r4, [r5, #4]
d05e12be:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05e12c2:	2b00      	cmp	r3, #0
d05e12c4:	d0ef      	beq.n	d05e12a6 <_fflush_r+0xa>
d05e12c6:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05e12c8:	07d0      	lsls	r0, r2, #31
d05e12ca:	d404      	bmi.n	d05e12d6 <_fflush_r+0x3a>
d05e12cc:	0599      	lsls	r1, r3, #22
d05e12ce:	d402      	bmi.n	d05e12d6 <_fflush_r+0x3a>
d05e12d0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05e12d2:	f000 f915 	bl	d05e1500 <__retarget_lock_acquire_recursive>
d05e12d6:	4628      	mov	r0, r5
d05e12d8:	4621      	mov	r1, r4
d05e12da:	f7ff ff59 	bl	d05e1190 <__sflush_r>
d05e12de:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05e12e0:	07da      	lsls	r2, r3, #31
d05e12e2:	4605      	mov	r5, r0
d05e12e4:	d4e0      	bmi.n	d05e12a8 <_fflush_r+0xc>
d05e12e6:	89a3      	ldrh	r3, [r4, #12]
d05e12e8:	059b      	lsls	r3, r3, #22
d05e12ea:	d4dd      	bmi.n	d05e12a8 <_fflush_r+0xc>
d05e12ec:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05e12ee:	f000 f908 	bl	d05e1502 <__retarget_lock_release_recursive>
d05e12f2:	e7d9      	b.n	d05e12a8 <_fflush_r+0xc>
d05e12f4:	4b05      	ldr	r3, [pc, #20]	; (d05e130c <_fflush_r+0x70>)
d05e12f6:	429c      	cmp	r4, r3
d05e12f8:	d101      	bne.n	d05e12fe <_fflush_r+0x62>
d05e12fa:	68ac      	ldr	r4, [r5, #8]
d05e12fc:	e7df      	b.n	d05e12be <_fflush_r+0x22>
d05e12fe:	4b04      	ldr	r3, [pc, #16]	; (d05e1310 <_fflush_r+0x74>)
d05e1300:	429c      	cmp	r4, r3
d05e1302:	bf08      	it	eq
d05e1304:	68ec      	ldreq	r4, [r5, #12]
d05e1306:	e7da      	b.n	d05e12be <_fflush_r+0x22>
d05e1308:	d05e27b0 	.word	0xd05e27b0
d05e130c:	d05e27d0 	.word	0xd05e27d0
d05e1310:	d05e2790 	.word	0xd05e2790

d05e1314 <std>:
d05e1314:	2300      	movs	r3, #0
d05e1316:	b510      	push	{r4, lr}
d05e1318:	4604      	mov	r4, r0
d05e131a:	e9c0 3300 	strd	r3, r3, [r0]
d05e131e:	e9c0 3304 	strd	r3, r3, [r0, #16]
d05e1322:	6083      	str	r3, [r0, #8]
d05e1324:	8181      	strh	r1, [r0, #12]
d05e1326:	6643      	str	r3, [r0, #100]	; 0x64
d05e1328:	81c2      	strh	r2, [r0, #14]
d05e132a:	6183      	str	r3, [r0, #24]
d05e132c:	4619      	mov	r1, r3
d05e132e:	2208      	movs	r2, #8
d05e1330:	305c      	adds	r0, #92	; 0x5c
d05e1332:	f7ff fccd 	bl	d05e0cd0 <memset>
d05e1336:	4b05      	ldr	r3, [pc, #20]	; (d05e134c <std+0x38>)
d05e1338:	6263      	str	r3, [r4, #36]	; 0x24
d05e133a:	4b05      	ldr	r3, [pc, #20]	; (d05e1350 <std+0x3c>)
d05e133c:	62a3      	str	r3, [r4, #40]	; 0x28
d05e133e:	4b05      	ldr	r3, [pc, #20]	; (d05e1354 <std+0x40>)
d05e1340:	62e3      	str	r3, [r4, #44]	; 0x2c
d05e1342:	4b05      	ldr	r3, [pc, #20]	; (d05e1358 <std+0x44>)
d05e1344:	6224      	str	r4, [r4, #32]
d05e1346:	6323      	str	r3, [r4, #48]	; 0x30
d05e1348:	bd10      	pop	{r4, pc}
d05e134a:	bf00      	nop
d05e134c:	d05e1fc5 	.word	0xd05e1fc5
d05e1350:	d05e1fe7 	.word	0xd05e1fe7
d05e1354:	d05e201f 	.word	0xd05e201f
d05e1358:	d05e2043 	.word	0xd05e2043

d05e135c <_cleanup_r>:
d05e135c:	4901      	ldr	r1, [pc, #4]	; (d05e1364 <_cleanup_r+0x8>)
d05e135e:	f000 b8af 	b.w	d05e14c0 <_fwalk_reent>
d05e1362:	bf00      	nop
d05e1364:	d05e129d 	.word	0xd05e129d

d05e1368 <__sfmoreglue>:
d05e1368:	b570      	push	{r4, r5, r6, lr}
d05e136a:	1e4a      	subs	r2, r1, #1
d05e136c:	2568      	movs	r5, #104	; 0x68
d05e136e:	4355      	muls	r5, r2
d05e1370:	460e      	mov	r6, r1
d05e1372:	f105 0174 	add.w	r1, r5, #116	; 0x74
d05e1376:	f000 f981 	bl	d05e167c <_malloc_r>
d05e137a:	4604      	mov	r4, r0
d05e137c:	b140      	cbz	r0, d05e1390 <__sfmoreglue+0x28>
d05e137e:	2100      	movs	r1, #0
d05e1380:	e9c0 1600 	strd	r1, r6, [r0]
d05e1384:	300c      	adds	r0, #12
d05e1386:	60a0      	str	r0, [r4, #8]
d05e1388:	f105 0268 	add.w	r2, r5, #104	; 0x68
d05e138c:	f7ff fca0 	bl	d05e0cd0 <memset>
d05e1390:	4620      	mov	r0, r4
d05e1392:	bd70      	pop	{r4, r5, r6, pc}

d05e1394 <__sfp_lock_acquire>:
d05e1394:	4801      	ldr	r0, [pc, #4]	; (d05e139c <__sfp_lock_acquire+0x8>)
d05e1396:	f000 b8b3 	b.w	d05e1500 <__retarget_lock_acquire_recursive>
d05e139a:	bf00      	nop
d05e139c:	d05e3230 	.word	0xd05e3230

d05e13a0 <__sfp_lock_release>:
d05e13a0:	4801      	ldr	r0, [pc, #4]	; (d05e13a8 <__sfp_lock_release+0x8>)
d05e13a2:	f000 b8ae 	b.w	d05e1502 <__retarget_lock_release_recursive>
d05e13a6:	bf00      	nop
d05e13a8:	d05e3230 	.word	0xd05e3230

d05e13ac <__sinit_lock_acquire>:
d05e13ac:	4801      	ldr	r0, [pc, #4]	; (d05e13b4 <__sinit_lock_acquire+0x8>)
d05e13ae:	f000 b8a7 	b.w	d05e1500 <__retarget_lock_acquire_recursive>
d05e13b2:	bf00      	nop
d05e13b4:	d05e322b 	.word	0xd05e322b

d05e13b8 <__sinit_lock_release>:
d05e13b8:	4801      	ldr	r0, [pc, #4]	; (d05e13c0 <__sinit_lock_release+0x8>)
d05e13ba:	f000 b8a2 	b.w	d05e1502 <__retarget_lock_release_recursive>
d05e13be:	bf00      	nop
d05e13c0:	d05e322b 	.word	0xd05e322b

d05e13c4 <__sinit>:
d05e13c4:	b510      	push	{r4, lr}
d05e13c6:	4604      	mov	r4, r0
d05e13c8:	f7ff fff0 	bl	d05e13ac <__sinit_lock_acquire>
d05e13cc:	69a3      	ldr	r3, [r4, #24]
d05e13ce:	b11b      	cbz	r3, d05e13d8 <__sinit+0x14>
d05e13d0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d05e13d4:	f7ff bff0 	b.w	d05e13b8 <__sinit_lock_release>
d05e13d8:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d05e13dc:	6523      	str	r3, [r4, #80]	; 0x50
d05e13de:	4b13      	ldr	r3, [pc, #76]	; (d05e142c <__sinit+0x68>)
d05e13e0:	4a13      	ldr	r2, [pc, #76]	; (d05e1430 <__sinit+0x6c>)
d05e13e2:	681b      	ldr	r3, [r3, #0]
d05e13e4:	62a2      	str	r2, [r4, #40]	; 0x28
d05e13e6:	42a3      	cmp	r3, r4
d05e13e8:	bf04      	itt	eq
d05e13ea:	2301      	moveq	r3, #1
d05e13ec:	61a3      	streq	r3, [r4, #24]
d05e13ee:	4620      	mov	r0, r4
d05e13f0:	f000 f820 	bl	d05e1434 <__sfp>
d05e13f4:	6060      	str	r0, [r4, #4]
d05e13f6:	4620      	mov	r0, r4
d05e13f8:	f000 f81c 	bl	d05e1434 <__sfp>
d05e13fc:	60a0      	str	r0, [r4, #8]
d05e13fe:	4620      	mov	r0, r4
d05e1400:	f000 f818 	bl	d05e1434 <__sfp>
d05e1404:	2200      	movs	r2, #0
d05e1406:	60e0      	str	r0, [r4, #12]
d05e1408:	2104      	movs	r1, #4
d05e140a:	6860      	ldr	r0, [r4, #4]
d05e140c:	f7ff ff82 	bl	d05e1314 <std>
d05e1410:	68a0      	ldr	r0, [r4, #8]
d05e1412:	2201      	movs	r2, #1
d05e1414:	2109      	movs	r1, #9
d05e1416:	f7ff ff7d 	bl	d05e1314 <std>
d05e141a:	68e0      	ldr	r0, [r4, #12]
d05e141c:	2202      	movs	r2, #2
d05e141e:	2112      	movs	r1, #18
d05e1420:	f7ff ff78 	bl	d05e1314 <std>
d05e1424:	2301      	movs	r3, #1
d05e1426:	61a3      	str	r3, [r4, #24]
d05e1428:	e7d2      	b.n	d05e13d0 <__sinit+0xc>
d05e142a:	bf00      	nop
d05e142c:	d05e278c 	.word	0xd05e278c
d05e1430:	d05e135d 	.word	0xd05e135d

d05e1434 <__sfp>:
d05e1434:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e1436:	4607      	mov	r7, r0
d05e1438:	f7ff ffac 	bl	d05e1394 <__sfp_lock_acquire>
d05e143c:	4b1e      	ldr	r3, [pc, #120]	; (d05e14b8 <__sfp+0x84>)
d05e143e:	681e      	ldr	r6, [r3, #0]
d05e1440:	69b3      	ldr	r3, [r6, #24]
d05e1442:	b913      	cbnz	r3, d05e144a <__sfp+0x16>
d05e1444:	4630      	mov	r0, r6
d05e1446:	f7ff ffbd 	bl	d05e13c4 <__sinit>
d05e144a:	3648      	adds	r6, #72	; 0x48
d05e144c:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d05e1450:	3b01      	subs	r3, #1
d05e1452:	d503      	bpl.n	d05e145c <__sfp+0x28>
d05e1454:	6833      	ldr	r3, [r6, #0]
d05e1456:	b30b      	cbz	r3, d05e149c <__sfp+0x68>
d05e1458:	6836      	ldr	r6, [r6, #0]
d05e145a:	e7f7      	b.n	d05e144c <__sfp+0x18>
d05e145c:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d05e1460:	b9d5      	cbnz	r5, d05e1498 <__sfp+0x64>
d05e1462:	4b16      	ldr	r3, [pc, #88]	; (d05e14bc <__sfp+0x88>)
d05e1464:	60e3      	str	r3, [r4, #12]
d05e1466:	f104 0058 	add.w	r0, r4, #88	; 0x58
d05e146a:	6665      	str	r5, [r4, #100]	; 0x64
d05e146c:	f000 f847 	bl	d05e14fe <__retarget_lock_init_recursive>
d05e1470:	f7ff ff96 	bl	d05e13a0 <__sfp_lock_release>
d05e1474:	e9c4 5501 	strd	r5, r5, [r4, #4]
d05e1478:	e9c4 5504 	strd	r5, r5, [r4, #16]
d05e147c:	6025      	str	r5, [r4, #0]
d05e147e:	61a5      	str	r5, [r4, #24]
d05e1480:	2208      	movs	r2, #8
d05e1482:	4629      	mov	r1, r5
d05e1484:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d05e1488:	f7ff fc22 	bl	d05e0cd0 <memset>
d05e148c:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d05e1490:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d05e1494:	4620      	mov	r0, r4
d05e1496:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e1498:	3468      	adds	r4, #104	; 0x68
d05e149a:	e7d9      	b.n	d05e1450 <__sfp+0x1c>
d05e149c:	2104      	movs	r1, #4
d05e149e:	4638      	mov	r0, r7
d05e14a0:	f7ff ff62 	bl	d05e1368 <__sfmoreglue>
d05e14a4:	4604      	mov	r4, r0
d05e14a6:	6030      	str	r0, [r6, #0]
d05e14a8:	2800      	cmp	r0, #0
d05e14aa:	d1d5      	bne.n	d05e1458 <__sfp+0x24>
d05e14ac:	f7ff ff78 	bl	d05e13a0 <__sfp_lock_release>
d05e14b0:	230c      	movs	r3, #12
d05e14b2:	603b      	str	r3, [r7, #0]
d05e14b4:	e7ee      	b.n	d05e1494 <__sfp+0x60>
d05e14b6:	bf00      	nop
d05e14b8:	d05e278c 	.word	0xd05e278c
d05e14bc:	ffff0001 	.word	0xffff0001

d05e14c0 <_fwalk_reent>:
d05e14c0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d05e14c4:	4606      	mov	r6, r0
d05e14c6:	4688      	mov	r8, r1
d05e14c8:	f100 0448 	add.w	r4, r0, #72	; 0x48
d05e14cc:	2700      	movs	r7, #0
d05e14ce:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d05e14d2:	f1b9 0901 	subs.w	r9, r9, #1
d05e14d6:	d505      	bpl.n	d05e14e4 <_fwalk_reent+0x24>
d05e14d8:	6824      	ldr	r4, [r4, #0]
d05e14da:	2c00      	cmp	r4, #0
d05e14dc:	d1f7      	bne.n	d05e14ce <_fwalk_reent+0xe>
d05e14de:	4638      	mov	r0, r7
d05e14e0:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d05e14e4:	89ab      	ldrh	r3, [r5, #12]
d05e14e6:	2b01      	cmp	r3, #1
d05e14e8:	d907      	bls.n	d05e14fa <_fwalk_reent+0x3a>
d05e14ea:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d05e14ee:	3301      	adds	r3, #1
d05e14f0:	d003      	beq.n	d05e14fa <_fwalk_reent+0x3a>
d05e14f2:	4629      	mov	r1, r5
d05e14f4:	4630      	mov	r0, r6
d05e14f6:	47c0      	blx	r8
d05e14f8:	4307      	orrs	r7, r0
d05e14fa:	3568      	adds	r5, #104	; 0x68
d05e14fc:	e7e9      	b.n	d05e14d2 <_fwalk_reent+0x12>

d05e14fe <__retarget_lock_init_recursive>:
d05e14fe:	4770      	bx	lr

d05e1500 <__retarget_lock_acquire_recursive>:
d05e1500:	4770      	bx	lr

d05e1502 <__retarget_lock_release_recursive>:
d05e1502:	4770      	bx	lr

d05e1504 <__swhatbuf_r>:
d05e1504:	b570      	push	{r4, r5, r6, lr}
d05e1506:	460e      	mov	r6, r1
d05e1508:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05e150c:	2900      	cmp	r1, #0
d05e150e:	b096      	sub	sp, #88	; 0x58
d05e1510:	4614      	mov	r4, r2
d05e1512:	461d      	mov	r5, r3
d05e1514:	da07      	bge.n	d05e1526 <__swhatbuf_r+0x22>
d05e1516:	2300      	movs	r3, #0
d05e1518:	602b      	str	r3, [r5, #0]
d05e151a:	89b3      	ldrh	r3, [r6, #12]
d05e151c:	061a      	lsls	r2, r3, #24
d05e151e:	d410      	bmi.n	d05e1542 <__swhatbuf_r+0x3e>
d05e1520:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05e1524:	e00e      	b.n	d05e1544 <__swhatbuf_r+0x40>
d05e1526:	466a      	mov	r2, sp
d05e1528:	f000 fda0 	bl	d05e206c <_fstat_r>
d05e152c:	2800      	cmp	r0, #0
d05e152e:	dbf2      	blt.n	d05e1516 <__swhatbuf_r+0x12>
d05e1530:	9a01      	ldr	r2, [sp, #4]
d05e1532:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d05e1536:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d05e153a:	425a      	negs	r2, r3
d05e153c:	415a      	adcs	r2, r3
d05e153e:	602a      	str	r2, [r5, #0]
d05e1540:	e7ee      	b.n	d05e1520 <__swhatbuf_r+0x1c>
d05e1542:	2340      	movs	r3, #64	; 0x40
d05e1544:	2000      	movs	r0, #0
d05e1546:	6023      	str	r3, [r4, #0]
d05e1548:	b016      	add	sp, #88	; 0x58
d05e154a:	bd70      	pop	{r4, r5, r6, pc}

d05e154c <__smakebuf_r>:
d05e154c:	898b      	ldrh	r3, [r1, #12]
d05e154e:	b573      	push	{r0, r1, r4, r5, r6, lr}
d05e1550:	079d      	lsls	r5, r3, #30
d05e1552:	4606      	mov	r6, r0
d05e1554:	460c      	mov	r4, r1
d05e1556:	d507      	bpl.n	d05e1568 <__smakebuf_r+0x1c>
d05e1558:	f104 0347 	add.w	r3, r4, #71	; 0x47
d05e155c:	6023      	str	r3, [r4, #0]
d05e155e:	6123      	str	r3, [r4, #16]
d05e1560:	2301      	movs	r3, #1
d05e1562:	6163      	str	r3, [r4, #20]
d05e1564:	b002      	add	sp, #8
d05e1566:	bd70      	pop	{r4, r5, r6, pc}
d05e1568:	ab01      	add	r3, sp, #4
d05e156a:	466a      	mov	r2, sp
d05e156c:	f7ff ffca 	bl	d05e1504 <__swhatbuf_r>
d05e1570:	9900      	ldr	r1, [sp, #0]
d05e1572:	4605      	mov	r5, r0
d05e1574:	4630      	mov	r0, r6
d05e1576:	f000 f881 	bl	d05e167c <_malloc_r>
d05e157a:	b948      	cbnz	r0, d05e1590 <__smakebuf_r+0x44>
d05e157c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05e1580:	059a      	lsls	r2, r3, #22
d05e1582:	d4ef      	bmi.n	d05e1564 <__smakebuf_r+0x18>
d05e1584:	f023 0303 	bic.w	r3, r3, #3
d05e1588:	f043 0302 	orr.w	r3, r3, #2
d05e158c:	81a3      	strh	r3, [r4, #12]
d05e158e:	e7e3      	b.n	d05e1558 <__smakebuf_r+0xc>
d05e1590:	4b0d      	ldr	r3, [pc, #52]	; (d05e15c8 <__smakebuf_r+0x7c>)
d05e1592:	62b3      	str	r3, [r6, #40]	; 0x28
d05e1594:	89a3      	ldrh	r3, [r4, #12]
d05e1596:	6020      	str	r0, [r4, #0]
d05e1598:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05e159c:	81a3      	strh	r3, [r4, #12]
d05e159e:	9b00      	ldr	r3, [sp, #0]
d05e15a0:	6163      	str	r3, [r4, #20]
d05e15a2:	9b01      	ldr	r3, [sp, #4]
d05e15a4:	6120      	str	r0, [r4, #16]
d05e15a6:	b15b      	cbz	r3, d05e15c0 <__smakebuf_r+0x74>
d05e15a8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d05e15ac:	4630      	mov	r0, r6
d05e15ae:	f000 fd6f 	bl	d05e2090 <_isatty_r>
d05e15b2:	b128      	cbz	r0, d05e15c0 <__smakebuf_r+0x74>
d05e15b4:	89a3      	ldrh	r3, [r4, #12]
d05e15b6:	f023 0303 	bic.w	r3, r3, #3
d05e15ba:	f043 0301 	orr.w	r3, r3, #1
d05e15be:	81a3      	strh	r3, [r4, #12]
d05e15c0:	89a0      	ldrh	r0, [r4, #12]
d05e15c2:	4305      	orrs	r5, r0
d05e15c4:	81a5      	strh	r5, [r4, #12]
d05e15c6:	e7cd      	b.n	d05e1564 <__smakebuf_r+0x18>
d05e15c8:	d05e135d 	.word	0xd05e135d

d05e15cc <malloc>:
d05e15cc:	4b02      	ldr	r3, [pc, #8]	; (d05e15d8 <malloc+0xc>)
d05e15ce:	4601      	mov	r1, r0
d05e15d0:	6818      	ldr	r0, [r3, #0]
d05e15d2:	f000 b853 	b.w	d05e167c <_malloc_r>
d05e15d6:	bf00      	nop
d05e15d8:	d05e2934 	.word	0xd05e2934

d05e15dc <_free_r>:
d05e15dc:	b537      	push	{r0, r1, r2, r4, r5, lr}
d05e15de:	2900      	cmp	r1, #0
d05e15e0:	d048      	beq.n	d05e1674 <_free_r+0x98>
d05e15e2:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05e15e6:	9001      	str	r0, [sp, #4]
d05e15e8:	2b00      	cmp	r3, #0
d05e15ea:	f1a1 0404 	sub.w	r4, r1, #4
d05e15ee:	bfb8      	it	lt
d05e15f0:	18e4      	addlt	r4, r4, r3
d05e15f2:	f000 fddf 	bl	d05e21b4 <__malloc_lock>
d05e15f6:	4a20      	ldr	r2, [pc, #128]	; (d05e1678 <_free_r+0x9c>)
d05e15f8:	9801      	ldr	r0, [sp, #4]
d05e15fa:	6813      	ldr	r3, [r2, #0]
d05e15fc:	4615      	mov	r5, r2
d05e15fe:	b933      	cbnz	r3, d05e160e <_free_r+0x32>
d05e1600:	6063      	str	r3, [r4, #4]
d05e1602:	6014      	str	r4, [r2, #0]
d05e1604:	b003      	add	sp, #12
d05e1606:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05e160a:	f000 bdd9 	b.w	d05e21c0 <__malloc_unlock>
d05e160e:	42a3      	cmp	r3, r4
d05e1610:	d90b      	bls.n	d05e162a <_free_r+0x4e>
d05e1612:	6821      	ldr	r1, [r4, #0]
d05e1614:	1862      	adds	r2, r4, r1
d05e1616:	4293      	cmp	r3, r2
d05e1618:	bf04      	itt	eq
d05e161a:	681a      	ldreq	r2, [r3, #0]
d05e161c:	685b      	ldreq	r3, [r3, #4]
d05e161e:	6063      	str	r3, [r4, #4]
d05e1620:	bf04      	itt	eq
d05e1622:	1852      	addeq	r2, r2, r1
d05e1624:	6022      	streq	r2, [r4, #0]
d05e1626:	602c      	str	r4, [r5, #0]
d05e1628:	e7ec      	b.n	d05e1604 <_free_r+0x28>
d05e162a:	461a      	mov	r2, r3
d05e162c:	685b      	ldr	r3, [r3, #4]
d05e162e:	b10b      	cbz	r3, d05e1634 <_free_r+0x58>
d05e1630:	42a3      	cmp	r3, r4
d05e1632:	d9fa      	bls.n	d05e162a <_free_r+0x4e>
d05e1634:	6811      	ldr	r1, [r2, #0]
d05e1636:	1855      	adds	r5, r2, r1
d05e1638:	42a5      	cmp	r5, r4
d05e163a:	d10b      	bne.n	d05e1654 <_free_r+0x78>
d05e163c:	6824      	ldr	r4, [r4, #0]
d05e163e:	4421      	add	r1, r4
d05e1640:	1854      	adds	r4, r2, r1
d05e1642:	42a3      	cmp	r3, r4
d05e1644:	6011      	str	r1, [r2, #0]
d05e1646:	d1dd      	bne.n	d05e1604 <_free_r+0x28>
d05e1648:	681c      	ldr	r4, [r3, #0]
d05e164a:	685b      	ldr	r3, [r3, #4]
d05e164c:	6053      	str	r3, [r2, #4]
d05e164e:	4421      	add	r1, r4
d05e1650:	6011      	str	r1, [r2, #0]
d05e1652:	e7d7      	b.n	d05e1604 <_free_r+0x28>
d05e1654:	d902      	bls.n	d05e165c <_free_r+0x80>
d05e1656:	230c      	movs	r3, #12
d05e1658:	6003      	str	r3, [r0, #0]
d05e165a:	e7d3      	b.n	d05e1604 <_free_r+0x28>
d05e165c:	6825      	ldr	r5, [r4, #0]
d05e165e:	1961      	adds	r1, r4, r5
d05e1660:	428b      	cmp	r3, r1
d05e1662:	bf04      	itt	eq
d05e1664:	6819      	ldreq	r1, [r3, #0]
d05e1666:	685b      	ldreq	r3, [r3, #4]
d05e1668:	6063      	str	r3, [r4, #4]
d05e166a:	bf04      	itt	eq
d05e166c:	1949      	addeq	r1, r1, r5
d05e166e:	6021      	streq	r1, [r4, #0]
d05e1670:	6054      	str	r4, [r2, #4]
d05e1672:	e7c7      	b.n	d05e1604 <_free_r+0x28>
d05e1674:	b003      	add	sp, #12
d05e1676:	bd30      	pop	{r4, r5, pc}
d05e1678:	d05e3220 	.word	0xd05e3220

d05e167c <_malloc_r>:
d05e167c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e167e:	1ccd      	adds	r5, r1, #3
d05e1680:	f025 0503 	bic.w	r5, r5, #3
d05e1684:	3508      	adds	r5, #8
d05e1686:	2d0c      	cmp	r5, #12
d05e1688:	bf38      	it	cc
d05e168a:	250c      	movcc	r5, #12
d05e168c:	2d00      	cmp	r5, #0
d05e168e:	4606      	mov	r6, r0
d05e1690:	db01      	blt.n	d05e1696 <_malloc_r+0x1a>
d05e1692:	42a9      	cmp	r1, r5
d05e1694:	d903      	bls.n	d05e169e <_malloc_r+0x22>
d05e1696:	230c      	movs	r3, #12
d05e1698:	6033      	str	r3, [r6, #0]
d05e169a:	2000      	movs	r0, #0
d05e169c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e169e:	f000 fd89 	bl	d05e21b4 <__malloc_lock>
d05e16a2:	4921      	ldr	r1, [pc, #132]	; (d05e1728 <_malloc_r+0xac>)
d05e16a4:	680a      	ldr	r2, [r1, #0]
d05e16a6:	4614      	mov	r4, r2
d05e16a8:	b99c      	cbnz	r4, d05e16d2 <_malloc_r+0x56>
d05e16aa:	4f20      	ldr	r7, [pc, #128]	; (d05e172c <_malloc_r+0xb0>)
d05e16ac:	683b      	ldr	r3, [r7, #0]
d05e16ae:	b923      	cbnz	r3, d05e16ba <_malloc_r+0x3e>
d05e16b0:	4621      	mov	r1, r4
d05e16b2:	4630      	mov	r0, r6
d05e16b4:	f7fe fd08 	bl	d05e00c8 <_sbrk_r>
d05e16b8:	6038      	str	r0, [r7, #0]
d05e16ba:	4629      	mov	r1, r5
d05e16bc:	4630      	mov	r0, r6
d05e16be:	f7fe fd03 	bl	d05e00c8 <_sbrk_r>
d05e16c2:	1c43      	adds	r3, r0, #1
d05e16c4:	d123      	bne.n	d05e170e <_malloc_r+0x92>
d05e16c6:	230c      	movs	r3, #12
d05e16c8:	6033      	str	r3, [r6, #0]
d05e16ca:	4630      	mov	r0, r6
d05e16cc:	f000 fd78 	bl	d05e21c0 <__malloc_unlock>
d05e16d0:	e7e3      	b.n	d05e169a <_malloc_r+0x1e>
d05e16d2:	6823      	ldr	r3, [r4, #0]
d05e16d4:	1b5b      	subs	r3, r3, r5
d05e16d6:	d417      	bmi.n	d05e1708 <_malloc_r+0x8c>
d05e16d8:	2b0b      	cmp	r3, #11
d05e16da:	d903      	bls.n	d05e16e4 <_malloc_r+0x68>
d05e16dc:	6023      	str	r3, [r4, #0]
d05e16de:	441c      	add	r4, r3
d05e16e0:	6025      	str	r5, [r4, #0]
d05e16e2:	e004      	b.n	d05e16ee <_malloc_r+0x72>
d05e16e4:	6863      	ldr	r3, [r4, #4]
d05e16e6:	42a2      	cmp	r2, r4
d05e16e8:	bf0c      	ite	eq
d05e16ea:	600b      	streq	r3, [r1, #0]
d05e16ec:	6053      	strne	r3, [r2, #4]
d05e16ee:	4630      	mov	r0, r6
d05e16f0:	f000 fd66 	bl	d05e21c0 <__malloc_unlock>
d05e16f4:	f104 000b 	add.w	r0, r4, #11
d05e16f8:	1d23      	adds	r3, r4, #4
d05e16fa:	f020 0007 	bic.w	r0, r0, #7
d05e16fe:	1ac2      	subs	r2, r0, r3
d05e1700:	d0cc      	beq.n	d05e169c <_malloc_r+0x20>
d05e1702:	1a1b      	subs	r3, r3, r0
d05e1704:	50a3      	str	r3, [r4, r2]
d05e1706:	e7c9      	b.n	d05e169c <_malloc_r+0x20>
d05e1708:	4622      	mov	r2, r4
d05e170a:	6864      	ldr	r4, [r4, #4]
d05e170c:	e7cc      	b.n	d05e16a8 <_malloc_r+0x2c>
d05e170e:	1cc4      	adds	r4, r0, #3
d05e1710:	f024 0403 	bic.w	r4, r4, #3
d05e1714:	42a0      	cmp	r0, r4
d05e1716:	d0e3      	beq.n	d05e16e0 <_malloc_r+0x64>
d05e1718:	1a21      	subs	r1, r4, r0
d05e171a:	4630      	mov	r0, r6
d05e171c:	f7fe fcd4 	bl	d05e00c8 <_sbrk_r>
d05e1720:	3001      	adds	r0, #1
d05e1722:	d1dd      	bne.n	d05e16e0 <_malloc_r+0x64>
d05e1724:	e7cf      	b.n	d05e16c6 <_malloc_r+0x4a>
d05e1726:	bf00      	nop
d05e1728:	d05e3220 	.word	0xd05e3220
d05e172c:	d05e3224 	.word	0xd05e3224

d05e1730 <__ssputs_r>:
d05e1730:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e1734:	688e      	ldr	r6, [r1, #8]
d05e1736:	429e      	cmp	r6, r3
d05e1738:	4682      	mov	sl, r0
d05e173a:	460c      	mov	r4, r1
d05e173c:	4690      	mov	r8, r2
d05e173e:	461f      	mov	r7, r3
d05e1740:	d838      	bhi.n	d05e17b4 <__ssputs_r+0x84>
d05e1742:	898a      	ldrh	r2, [r1, #12]
d05e1744:	f412 6f90 	tst.w	r2, #1152	; 0x480
d05e1748:	d032      	beq.n	d05e17b0 <__ssputs_r+0x80>
d05e174a:	6825      	ldr	r5, [r4, #0]
d05e174c:	6909      	ldr	r1, [r1, #16]
d05e174e:	eba5 0901 	sub.w	r9, r5, r1
d05e1752:	6965      	ldr	r5, [r4, #20]
d05e1754:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05e1758:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d05e175c:	3301      	adds	r3, #1
d05e175e:	444b      	add	r3, r9
d05e1760:	106d      	asrs	r5, r5, #1
d05e1762:	429d      	cmp	r5, r3
d05e1764:	bf38      	it	cc
d05e1766:	461d      	movcc	r5, r3
d05e1768:	0553      	lsls	r3, r2, #21
d05e176a:	d531      	bpl.n	d05e17d0 <__ssputs_r+0xa0>
d05e176c:	4629      	mov	r1, r5
d05e176e:	f7ff ff85 	bl	d05e167c <_malloc_r>
d05e1772:	4606      	mov	r6, r0
d05e1774:	b950      	cbnz	r0, d05e178c <__ssputs_r+0x5c>
d05e1776:	230c      	movs	r3, #12
d05e1778:	f8ca 3000 	str.w	r3, [sl]
d05e177c:	89a3      	ldrh	r3, [r4, #12]
d05e177e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05e1782:	81a3      	strh	r3, [r4, #12]
d05e1784:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e1788:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e178c:	6921      	ldr	r1, [r4, #16]
d05e178e:	464a      	mov	r2, r9
d05e1790:	f7ff fa90 	bl	d05e0cb4 <memcpy>
d05e1794:	89a3      	ldrh	r3, [r4, #12]
d05e1796:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d05e179a:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05e179e:	81a3      	strh	r3, [r4, #12]
d05e17a0:	6126      	str	r6, [r4, #16]
d05e17a2:	6165      	str	r5, [r4, #20]
d05e17a4:	444e      	add	r6, r9
d05e17a6:	eba5 0509 	sub.w	r5, r5, r9
d05e17aa:	6026      	str	r6, [r4, #0]
d05e17ac:	60a5      	str	r5, [r4, #8]
d05e17ae:	463e      	mov	r6, r7
d05e17b0:	42be      	cmp	r6, r7
d05e17b2:	d900      	bls.n	d05e17b6 <__ssputs_r+0x86>
d05e17b4:	463e      	mov	r6, r7
d05e17b6:	4632      	mov	r2, r6
d05e17b8:	6820      	ldr	r0, [r4, #0]
d05e17ba:	4641      	mov	r1, r8
d05e17bc:	f000 fce0 	bl	d05e2180 <memmove>
d05e17c0:	68a3      	ldr	r3, [r4, #8]
d05e17c2:	6822      	ldr	r2, [r4, #0]
d05e17c4:	1b9b      	subs	r3, r3, r6
d05e17c6:	4432      	add	r2, r6
d05e17c8:	60a3      	str	r3, [r4, #8]
d05e17ca:	6022      	str	r2, [r4, #0]
d05e17cc:	2000      	movs	r0, #0
d05e17ce:	e7db      	b.n	d05e1788 <__ssputs_r+0x58>
d05e17d0:	462a      	mov	r2, r5
d05e17d2:	f000 fcfb 	bl	d05e21cc <_realloc_r>
d05e17d6:	4606      	mov	r6, r0
d05e17d8:	2800      	cmp	r0, #0
d05e17da:	d1e1      	bne.n	d05e17a0 <__ssputs_r+0x70>
d05e17dc:	6921      	ldr	r1, [r4, #16]
d05e17de:	4650      	mov	r0, sl
d05e17e0:	f7ff fefc 	bl	d05e15dc <_free_r>
d05e17e4:	e7c7      	b.n	d05e1776 <__ssputs_r+0x46>
	...

d05e17e8 <_svfiprintf_r>:
d05e17e8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e17ec:	4698      	mov	r8, r3
d05e17ee:	898b      	ldrh	r3, [r1, #12]
d05e17f0:	061b      	lsls	r3, r3, #24
d05e17f2:	b09d      	sub	sp, #116	; 0x74
d05e17f4:	4607      	mov	r7, r0
d05e17f6:	460d      	mov	r5, r1
d05e17f8:	4614      	mov	r4, r2
d05e17fa:	d50e      	bpl.n	d05e181a <_svfiprintf_r+0x32>
d05e17fc:	690b      	ldr	r3, [r1, #16]
d05e17fe:	b963      	cbnz	r3, d05e181a <_svfiprintf_r+0x32>
d05e1800:	2140      	movs	r1, #64	; 0x40
d05e1802:	f7ff ff3b 	bl	d05e167c <_malloc_r>
d05e1806:	6028      	str	r0, [r5, #0]
d05e1808:	6128      	str	r0, [r5, #16]
d05e180a:	b920      	cbnz	r0, d05e1816 <_svfiprintf_r+0x2e>
d05e180c:	230c      	movs	r3, #12
d05e180e:	603b      	str	r3, [r7, #0]
d05e1810:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e1814:	e0d1      	b.n	d05e19ba <_svfiprintf_r+0x1d2>
d05e1816:	2340      	movs	r3, #64	; 0x40
d05e1818:	616b      	str	r3, [r5, #20]
d05e181a:	2300      	movs	r3, #0
d05e181c:	9309      	str	r3, [sp, #36]	; 0x24
d05e181e:	2320      	movs	r3, #32
d05e1820:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d05e1824:	f8cd 800c 	str.w	r8, [sp, #12]
d05e1828:	2330      	movs	r3, #48	; 0x30
d05e182a:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d05e19d4 <_svfiprintf_r+0x1ec>
d05e182e:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d05e1832:	f04f 0901 	mov.w	r9, #1
d05e1836:	4623      	mov	r3, r4
d05e1838:	469a      	mov	sl, r3
d05e183a:	f813 2b01 	ldrb.w	r2, [r3], #1
d05e183e:	b10a      	cbz	r2, d05e1844 <_svfiprintf_r+0x5c>
d05e1840:	2a25      	cmp	r2, #37	; 0x25
d05e1842:	d1f9      	bne.n	d05e1838 <_svfiprintf_r+0x50>
d05e1844:	ebba 0b04 	subs.w	fp, sl, r4
d05e1848:	d00b      	beq.n	d05e1862 <_svfiprintf_r+0x7a>
d05e184a:	465b      	mov	r3, fp
d05e184c:	4622      	mov	r2, r4
d05e184e:	4629      	mov	r1, r5
d05e1850:	4638      	mov	r0, r7
d05e1852:	f7ff ff6d 	bl	d05e1730 <__ssputs_r>
d05e1856:	3001      	adds	r0, #1
d05e1858:	f000 80aa 	beq.w	d05e19b0 <_svfiprintf_r+0x1c8>
d05e185c:	9a09      	ldr	r2, [sp, #36]	; 0x24
d05e185e:	445a      	add	r2, fp
d05e1860:	9209      	str	r2, [sp, #36]	; 0x24
d05e1862:	f89a 3000 	ldrb.w	r3, [sl]
d05e1866:	2b00      	cmp	r3, #0
d05e1868:	f000 80a2 	beq.w	d05e19b0 <_svfiprintf_r+0x1c8>
d05e186c:	2300      	movs	r3, #0
d05e186e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d05e1872:	e9cd 2305 	strd	r2, r3, [sp, #20]
d05e1876:	f10a 0a01 	add.w	sl, sl, #1
d05e187a:	9304      	str	r3, [sp, #16]
d05e187c:	9307      	str	r3, [sp, #28]
d05e187e:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d05e1882:	931a      	str	r3, [sp, #104]	; 0x68
d05e1884:	4654      	mov	r4, sl
d05e1886:	2205      	movs	r2, #5
d05e1888:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e188c:	4851      	ldr	r0, [pc, #324]	; (d05e19d4 <_svfiprintf_r+0x1ec>)
d05e188e:	f000 fc27 	bl	d05e20e0 <memchr>
d05e1892:	9a04      	ldr	r2, [sp, #16]
d05e1894:	b9d8      	cbnz	r0, d05e18ce <_svfiprintf_r+0xe6>
d05e1896:	06d0      	lsls	r0, r2, #27
d05e1898:	bf44      	itt	mi
d05e189a:	2320      	movmi	r3, #32
d05e189c:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e18a0:	0711      	lsls	r1, r2, #28
d05e18a2:	bf44      	itt	mi
d05e18a4:	232b      	movmi	r3, #43	; 0x2b
d05e18a6:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e18aa:	f89a 3000 	ldrb.w	r3, [sl]
d05e18ae:	2b2a      	cmp	r3, #42	; 0x2a
d05e18b0:	d015      	beq.n	d05e18de <_svfiprintf_r+0xf6>
d05e18b2:	9a07      	ldr	r2, [sp, #28]
d05e18b4:	4654      	mov	r4, sl
d05e18b6:	2000      	movs	r0, #0
d05e18b8:	f04f 0c0a 	mov.w	ip, #10
d05e18bc:	4621      	mov	r1, r4
d05e18be:	f811 3b01 	ldrb.w	r3, [r1], #1
d05e18c2:	3b30      	subs	r3, #48	; 0x30
d05e18c4:	2b09      	cmp	r3, #9
d05e18c6:	d94e      	bls.n	d05e1966 <_svfiprintf_r+0x17e>
d05e18c8:	b1b0      	cbz	r0, d05e18f8 <_svfiprintf_r+0x110>
d05e18ca:	9207      	str	r2, [sp, #28]
d05e18cc:	e014      	b.n	d05e18f8 <_svfiprintf_r+0x110>
d05e18ce:	eba0 0308 	sub.w	r3, r0, r8
d05e18d2:	fa09 f303 	lsl.w	r3, r9, r3
d05e18d6:	4313      	orrs	r3, r2
d05e18d8:	9304      	str	r3, [sp, #16]
d05e18da:	46a2      	mov	sl, r4
d05e18dc:	e7d2      	b.n	d05e1884 <_svfiprintf_r+0x9c>
d05e18de:	9b03      	ldr	r3, [sp, #12]
d05e18e0:	1d19      	adds	r1, r3, #4
d05e18e2:	681b      	ldr	r3, [r3, #0]
d05e18e4:	9103      	str	r1, [sp, #12]
d05e18e6:	2b00      	cmp	r3, #0
d05e18e8:	bfbb      	ittet	lt
d05e18ea:	425b      	neglt	r3, r3
d05e18ec:	f042 0202 	orrlt.w	r2, r2, #2
d05e18f0:	9307      	strge	r3, [sp, #28]
d05e18f2:	9307      	strlt	r3, [sp, #28]
d05e18f4:	bfb8      	it	lt
d05e18f6:	9204      	strlt	r2, [sp, #16]
d05e18f8:	7823      	ldrb	r3, [r4, #0]
d05e18fa:	2b2e      	cmp	r3, #46	; 0x2e
d05e18fc:	d10c      	bne.n	d05e1918 <_svfiprintf_r+0x130>
d05e18fe:	7863      	ldrb	r3, [r4, #1]
d05e1900:	2b2a      	cmp	r3, #42	; 0x2a
d05e1902:	d135      	bne.n	d05e1970 <_svfiprintf_r+0x188>
d05e1904:	9b03      	ldr	r3, [sp, #12]
d05e1906:	1d1a      	adds	r2, r3, #4
d05e1908:	681b      	ldr	r3, [r3, #0]
d05e190a:	9203      	str	r2, [sp, #12]
d05e190c:	2b00      	cmp	r3, #0
d05e190e:	bfb8      	it	lt
d05e1910:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d05e1914:	3402      	adds	r4, #2
d05e1916:	9305      	str	r3, [sp, #20]
d05e1918:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d05e19e4 <_svfiprintf_r+0x1fc>
d05e191c:	7821      	ldrb	r1, [r4, #0]
d05e191e:	2203      	movs	r2, #3
d05e1920:	4650      	mov	r0, sl
d05e1922:	f000 fbdd 	bl	d05e20e0 <memchr>
d05e1926:	b140      	cbz	r0, d05e193a <_svfiprintf_r+0x152>
d05e1928:	2340      	movs	r3, #64	; 0x40
d05e192a:	eba0 000a 	sub.w	r0, r0, sl
d05e192e:	fa03 f000 	lsl.w	r0, r3, r0
d05e1932:	9b04      	ldr	r3, [sp, #16]
d05e1934:	4303      	orrs	r3, r0
d05e1936:	3401      	adds	r4, #1
d05e1938:	9304      	str	r3, [sp, #16]
d05e193a:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e193e:	4826      	ldr	r0, [pc, #152]	; (d05e19d8 <_svfiprintf_r+0x1f0>)
d05e1940:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d05e1944:	2206      	movs	r2, #6
d05e1946:	f000 fbcb 	bl	d05e20e0 <memchr>
d05e194a:	2800      	cmp	r0, #0
d05e194c:	d038      	beq.n	d05e19c0 <_svfiprintf_r+0x1d8>
d05e194e:	4b23      	ldr	r3, [pc, #140]	; (d05e19dc <_svfiprintf_r+0x1f4>)
d05e1950:	bb1b      	cbnz	r3, d05e199a <_svfiprintf_r+0x1b2>
d05e1952:	9b03      	ldr	r3, [sp, #12]
d05e1954:	3307      	adds	r3, #7
d05e1956:	f023 0307 	bic.w	r3, r3, #7
d05e195a:	3308      	adds	r3, #8
d05e195c:	9303      	str	r3, [sp, #12]
d05e195e:	9b09      	ldr	r3, [sp, #36]	; 0x24
d05e1960:	4433      	add	r3, r6
d05e1962:	9309      	str	r3, [sp, #36]	; 0x24
d05e1964:	e767      	b.n	d05e1836 <_svfiprintf_r+0x4e>
d05e1966:	fb0c 3202 	mla	r2, ip, r2, r3
d05e196a:	460c      	mov	r4, r1
d05e196c:	2001      	movs	r0, #1
d05e196e:	e7a5      	b.n	d05e18bc <_svfiprintf_r+0xd4>
d05e1970:	2300      	movs	r3, #0
d05e1972:	3401      	adds	r4, #1
d05e1974:	9305      	str	r3, [sp, #20]
d05e1976:	4619      	mov	r1, r3
d05e1978:	f04f 0c0a 	mov.w	ip, #10
d05e197c:	4620      	mov	r0, r4
d05e197e:	f810 2b01 	ldrb.w	r2, [r0], #1
d05e1982:	3a30      	subs	r2, #48	; 0x30
d05e1984:	2a09      	cmp	r2, #9
d05e1986:	d903      	bls.n	d05e1990 <_svfiprintf_r+0x1a8>
d05e1988:	2b00      	cmp	r3, #0
d05e198a:	d0c5      	beq.n	d05e1918 <_svfiprintf_r+0x130>
d05e198c:	9105      	str	r1, [sp, #20]
d05e198e:	e7c3      	b.n	d05e1918 <_svfiprintf_r+0x130>
d05e1990:	fb0c 2101 	mla	r1, ip, r1, r2
d05e1994:	4604      	mov	r4, r0
d05e1996:	2301      	movs	r3, #1
d05e1998:	e7f0      	b.n	d05e197c <_svfiprintf_r+0x194>
d05e199a:	ab03      	add	r3, sp, #12
d05e199c:	9300      	str	r3, [sp, #0]
d05e199e:	462a      	mov	r2, r5
d05e19a0:	4b0f      	ldr	r3, [pc, #60]	; (d05e19e0 <_svfiprintf_r+0x1f8>)
d05e19a2:	a904      	add	r1, sp, #16
d05e19a4:	4638      	mov	r0, r7
d05e19a6:	f3af 8000 	nop.w
d05e19aa:	1c42      	adds	r2, r0, #1
d05e19ac:	4606      	mov	r6, r0
d05e19ae:	d1d6      	bne.n	d05e195e <_svfiprintf_r+0x176>
d05e19b0:	89ab      	ldrh	r3, [r5, #12]
d05e19b2:	065b      	lsls	r3, r3, #25
d05e19b4:	f53f af2c 	bmi.w	d05e1810 <_svfiprintf_r+0x28>
d05e19b8:	9809      	ldr	r0, [sp, #36]	; 0x24
d05e19ba:	b01d      	add	sp, #116	; 0x74
d05e19bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e19c0:	ab03      	add	r3, sp, #12
d05e19c2:	9300      	str	r3, [sp, #0]
d05e19c4:	462a      	mov	r2, r5
d05e19c6:	4b06      	ldr	r3, [pc, #24]	; (d05e19e0 <_svfiprintf_r+0x1f8>)
d05e19c8:	a904      	add	r1, sp, #16
d05e19ca:	4638      	mov	r0, r7
d05e19cc:	f000 f9d4 	bl	d05e1d78 <_printf_i>
d05e19d0:	e7eb      	b.n	d05e19aa <_svfiprintf_r+0x1c2>
d05e19d2:	bf00      	nop
d05e19d4:	d05e27f0 	.word	0xd05e27f0
d05e19d8:	d05e27fa 	.word	0xd05e27fa
d05e19dc:	00000000 	.word	0x00000000
d05e19e0:	d05e1731 	.word	0xd05e1731
d05e19e4:	d05e27f6 	.word	0xd05e27f6

d05e19e8 <__sfputc_r>:
d05e19e8:	6893      	ldr	r3, [r2, #8]
d05e19ea:	3b01      	subs	r3, #1
d05e19ec:	2b00      	cmp	r3, #0
d05e19ee:	b410      	push	{r4}
d05e19f0:	6093      	str	r3, [r2, #8]
d05e19f2:	da08      	bge.n	d05e1a06 <__sfputc_r+0x1e>
d05e19f4:	6994      	ldr	r4, [r2, #24]
d05e19f6:	42a3      	cmp	r3, r4
d05e19f8:	db01      	blt.n	d05e19fe <__sfputc_r+0x16>
d05e19fa:	290a      	cmp	r1, #10
d05e19fc:	d103      	bne.n	d05e1a06 <__sfputc_r+0x1e>
d05e19fe:	f85d 4b04 	ldr.w	r4, [sp], #4
d05e1a02:	f7ff bb05 	b.w	d05e1010 <__swbuf_r>
d05e1a06:	6813      	ldr	r3, [r2, #0]
d05e1a08:	1c58      	adds	r0, r3, #1
d05e1a0a:	6010      	str	r0, [r2, #0]
d05e1a0c:	7019      	strb	r1, [r3, #0]
d05e1a0e:	4608      	mov	r0, r1
d05e1a10:	f85d 4b04 	ldr.w	r4, [sp], #4
d05e1a14:	4770      	bx	lr

d05e1a16 <__sfputs_r>:
d05e1a16:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e1a18:	4606      	mov	r6, r0
d05e1a1a:	460f      	mov	r7, r1
d05e1a1c:	4614      	mov	r4, r2
d05e1a1e:	18d5      	adds	r5, r2, r3
d05e1a20:	42ac      	cmp	r4, r5
d05e1a22:	d101      	bne.n	d05e1a28 <__sfputs_r+0x12>
d05e1a24:	2000      	movs	r0, #0
d05e1a26:	e007      	b.n	d05e1a38 <__sfputs_r+0x22>
d05e1a28:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e1a2c:	463a      	mov	r2, r7
d05e1a2e:	4630      	mov	r0, r6
d05e1a30:	f7ff ffda 	bl	d05e19e8 <__sfputc_r>
d05e1a34:	1c43      	adds	r3, r0, #1
d05e1a36:	d1f3      	bne.n	d05e1a20 <__sfputs_r+0xa>
d05e1a38:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d05e1a3c <_vfiprintf_r>:
d05e1a3c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e1a40:	460d      	mov	r5, r1
d05e1a42:	b09d      	sub	sp, #116	; 0x74
d05e1a44:	4614      	mov	r4, r2
d05e1a46:	4698      	mov	r8, r3
d05e1a48:	4606      	mov	r6, r0
d05e1a4a:	b118      	cbz	r0, d05e1a54 <_vfiprintf_r+0x18>
d05e1a4c:	6983      	ldr	r3, [r0, #24]
d05e1a4e:	b90b      	cbnz	r3, d05e1a54 <_vfiprintf_r+0x18>
d05e1a50:	f7ff fcb8 	bl	d05e13c4 <__sinit>
d05e1a54:	4b89      	ldr	r3, [pc, #548]	; (d05e1c7c <_vfiprintf_r+0x240>)
d05e1a56:	429d      	cmp	r5, r3
d05e1a58:	d11b      	bne.n	d05e1a92 <_vfiprintf_r+0x56>
d05e1a5a:	6875      	ldr	r5, [r6, #4]
d05e1a5c:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d05e1a5e:	07d9      	lsls	r1, r3, #31
d05e1a60:	d405      	bmi.n	d05e1a6e <_vfiprintf_r+0x32>
d05e1a62:	89ab      	ldrh	r3, [r5, #12]
d05e1a64:	059a      	lsls	r2, r3, #22
d05e1a66:	d402      	bmi.n	d05e1a6e <_vfiprintf_r+0x32>
d05e1a68:	6da8      	ldr	r0, [r5, #88]	; 0x58
d05e1a6a:	f7ff fd49 	bl	d05e1500 <__retarget_lock_acquire_recursive>
d05e1a6e:	89ab      	ldrh	r3, [r5, #12]
d05e1a70:	071b      	lsls	r3, r3, #28
d05e1a72:	d501      	bpl.n	d05e1a78 <_vfiprintf_r+0x3c>
d05e1a74:	692b      	ldr	r3, [r5, #16]
d05e1a76:	b9eb      	cbnz	r3, d05e1ab4 <_vfiprintf_r+0x78>
d05e1a78:	4629      	mov	r1, r5
d05e1a7a:	4630      	mov	r0, r6
d05e1a7c:	f7ff fb1a 	bl	d05e10b4 <__swsetup_r>
d05e1a80:	b1c0      	cbz	r0, d05e1ab4 <_vfiprintf_r+0x78>
d05e1a82:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d05e1a84:	07dc      	lsls	r4, r3, #31
d05e1a86:	d50e      	bpl.n	d05e1aa6 <_vfiprintf_r+0x6a>
d05e1a88:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e1a8c:	b01d      	add	sp, #116	; 0x74
d05e1a8e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e1a92:	4b7b      	ldr	r3, [pc, #492]	; (d05e1c80 <_vfiprintf_r+0x244>)
d05e1a94:	429d      	cmp	r5, r3
d05e1a96:	d101      	bne.n	d05e1a9c <_vfiprintf_r+0x60>
d05e1a98:	68b5      	ldr	r5, [r6, #8]
d05e1a9a:	e7df      	b.n	d05e1a5c <_vfiprintf_r+0x20>
d05e1a9c:	4b79      	ldr	r3, [pc, #484]	; (d05e1c84 <_vfiprintf_r+0x248>)
d05e1a9e:	429d      	cmp	r5, r3
d05e1aa0:	bf08      	it	eq
d05e1aa2:	68f5      	ldreq	r5, [r6, #12]
d05e1aa4:	e7da      	b.n	d05e1a5c <_vfiprintf_r+0x20>
d05e1aa6:	89ab      	ldrh	r3, [r5, #12]
d05e1aa8:	0598      	lsls	r0, r3, #22
d05e1aaa:	d4ed      	bmi.n	d05e1a88 <_vfiprintf_r+0x4c>
d05e1aac:	6da8      	ldr	r0, [r5, #88]	; 0x58
d05e1aae:	f7ff fd28 	bl	d05e1502 <__retarget_lock_release_recursive>
d05e1ab2:	e7e9      	b.n	d05e1a88 <_vfiprintf_r+0x4c>
d05e1ab4:	2300      	movs	r3, #0
d05e1ab6:	9309      	str	r3, [sp, #36]	; 0x24
d05e1ab8:	2320      	movs	r3, #32
d05e1aba:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d05e1abe:	f8cd 800c 	str.w	r8, [sp, #12]
d05e1ac2:	2330      	movs	r3, #48	; 0x30
d05e1ac4:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d05e1c88 <_vfiprintf_r+0x24c>
d05e1ac8:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d05e1acc:	f04f 0901 	mov.w	r9, #1
d05e1ad0:	4623      	mov	r3, r4
d05e1ad2:	469a      	mov	sl, r3
d05e1ad4:	f813 2b01 	ldrb.w	r2, [r3], #1
d05e1ad8:	b10a      	cbz	r2, d05e1ade <_vfiprintf_r+0xa2>
d05e1ada:	2a25      	cmp	r2, #37	; 0x25
d05e1adc:	d1f9      	bne.n	d05e1ad2 <_vfiprintf_r+0x96>
d05e1ade:	ebba 0b04 	subs.w	fp, sl, r4
d05e1ae2:	d00b      	beq.n	d05e1afc <_vfiprintf_r+0xc0>
d05e1ae4:	465b      	mov	r3, fp
d05e1ae6:	4622      	mov	r2, r4
d05e1ae8:	4629      	mov	r1, r5
d05e1aea:	4630      	mov	r0, r6
d05e1aec:	f7ff ff93 	bl	d05e1a16 <__sfputs_r>
d05e1af0:	3001      	adds	r0, #1
d05e1af2:	f000 80aa 	beq.w	d05e1c4a <_vfiprintf_r+0x20e>
d05e1af6:	9a09      	ldr	r2, [sp, #36]	; 0x24
d05e1af8:	445a      	add	r2, fp
d05e1afa:	9209      	str	r2, [sp, #36]	; 0x24
d05e1afc:	f89a 3000 	ldrb.w	r3, [sl]
d05e1b00:	2b00      	cmp	r3, #0
d05e1b02:	f000 80a2 	beq.w	d05e1c4a <_vfiprintf_r+0x20e>
d05e1b06:	2300      	movs	r3, #0
d05e1b08:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d05e1b0c:	e9cd 2305 	strd	r2, r3, [sp, #20]
d05e1b10:	f10a 0a01 	add.w	sl, sl, #1
d05e1b14:	9304      	str	r3, [sp, #16]
d05e1b16:	9307      	str	r3, [sp, #28]
d05e1b18:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d05e1b1c:	931a      	str	r3, [sp, #104]	; 0x68
d05e1b1e:	4654      	mov	r4, sl
d05e1b20:	2205      	movs	r2, #5
d05e1b22:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e1b26:	4858      	ldr	r0, [pc, #352]	; (d05e1c88 <_vfiprintf_r+0x24c>)
d05e1b28:	f000 fada 	bl	d05e20e0 <memchr>
d05e1b2c:	9a04      	ldr	r2, [sp, #16]
d05e1b2e:	b9d8      	cbnz	r0, d05e1b68 <_vfiprintf_r+0x12c>
d05e1b30:	06d1      	lsls	r1, r2, #27
d05e1b32:	bf44      	itt	mi
d05e1b34:	2320      	movmi	r3, #32
d05e1b36:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e1b3a:	0713      	lsls	r3, r2, #28
d05e1b3c:	bf44      	itt	mi
d05e1b3e:	232b      	movmi	r3, #43	; 0x2b
d05e1b40:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e1b44:	f89a 3000 	ldrb.w	r3, [sl]
d05e1b48:	2b2a      	cmp	r3, #42	; 0x2a
d05e1b4a:	d015      	beq.n	d05e1b78 <_vfiprintf_r+0x13c>
d05e1b4c:	9a07      	ldr	r2, [sp, #28]
d05e1b4e:	4654      	mov	r4, sl
d05e1b50:	2000      	movs	r0, #0
d05e1b52:	f04f 0c0a 	mov.w	ip, #10
d05e1b56:	4621      	mov	r1, r4
d05e1b58:	f811 3b01 	ldrb.w	r3, [r1], #1
d05e1b5c:	3b30      	subs	r3, #48	; 0x30
d05e1b5e:	2b09      	cmp	r3, #9
d05e1b60:	d94e      	bls.n	d05e1c00 <_vfiprintf_r+0x1c4>
d05e1b62:	b1b0      	cbz	r0, d05e1b92 <_vfiprintf_r+0x156>
d05e1b64:	9207      	str	r2, [sp, #28]
d05e1b66:	e014      	b.n	d05e1b92 <_vfiprintf_r+0x156>
d05e1b68:	eba0 0308 	sub.w	r3, r0, r8
d05e1b6c:	fa09 f303 	lsl.w	r3, r9, r3
d05e1b70:	4313      	orrs	r3, r2
d05e1b72:	9304      	str	r3, [sp, #16]
d05e1b74:	46a2      	mov	sl, r4
d05e1b76:	e7d2      	b.n	d05e1b1e <_vfiprintf_r+0xe2>
d05e1b78:	9b03      	ldr	r3, [sp, #12]
d05e1b7a:	1d19      	adds	r1, r3, #4
d05e1b7c:	681b      	ldr	r3, [r3, #0]
d05e1b7e:	9103      	str	r1, [sp, #12]
d05e1b80:	2b00      	cmp	r3, #0
d05e1b82:	bfbb      	ittet	lt
d05e1b84:	425b      	neglt	r3, r3
d05e1b86:	f042 0202 	orrlt.w	r2, r2, #2
d05e1b8a:	9307      	strge	r3, [sp, #28]
d05e1b8c:	9307      	strlt	r3, [sp, #28]
d05e1b8e:	bfb8      	it	lt
d05e1b90:	9204      	strlt	r2, [sp, #16]
d05e1b92:	7823      	ldrb	r3, [r4, #0]
d05e1b94:	2b2e      	cmp	r3, #46	; 0x2e
d05e1b96:	d10c      	bne.n	d05e1bb2 <_vfiprintf_r+0x176>
d05e1b98:	7863      	ldrb	r3, [r4, #1]
d05e1b9a:	2b2a      	cmp	r3, #42	; 0x2a
d05e1b9c:	d135      	bne.n	d05e1c0a <_vfiprintf_r+0x1ce>
d05e1b9e:	9b03      	ldr	r3, [sp, #12]
d05e1ba0:	1d1a      	adds	r2, r3, #4
d05e1ba2:	681b      	ldr	r3, [r3, #0]
d05e1ba4:	9203      	str	r2, [sp, #12]
d05e1ba6:	2b00      	cmp	r3, #0
d05e1ba8:	bfb8      	it	lt
d05e1baa:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d05e1bae:	3402      	adds	r4, #2
d05e1bb0:	9305      	str	r3, [sp, #20]
d05e1bb2:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d05e1c98 <_vfiprintf_r+0x25c>
d05e1bb6:	7821      	ldrb	r1, [r4, #0]
d05e1bb8:	2203      	movs	r2, #3
d05e1bba:	4650      	mov	r0, sl
d05e1bbc:	f000 fa90 	bl	d05e20e0 <memchr>
d05e1bc0:	b140      	cbz	r0, d05e1bd4 <_vfiprintf_r+0x198>
d05e1bc2:	2340      	movs	r3, #64	; 0x40
d05e1bc4:	eba0 000a 	sub.w	r0, r0, sl
d05e1bc8:	fa03 f000 	lsl.w	r0, r3, r0
d05e1bcc:	9b04      	ldr	r3, [sp, #16]
d05e1bce:	4303      	orrs	r3, r0
d05e1bd0:	3401      	adds	r4, #1
d05e1bd2:	9304      	str	r3, [sp, #16]
d05e1bd4:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e1bd8:	482c      	ldr	r0, [pc, #176]	; (d05e1c8c <_vfiprintf_r+0x250>)
d05e1bda:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d05e1bde:	2206      	movs	r2, #6
d05e1be0:	f000 fa7e 	bl	d05e20e0 <memchr>
d05e1be4:	2800      	cmp	r0, #0
d05e1be6:	d03f      	beq.n	d05e1c68 <_vfiprintf_r+0x22c>
d05e1be8:	4b29      	ldr	r3, [pc, #164]	; (d05e1c90 <_vfiprintf_r+0x254>)
d05e1bea:	bb1b      	cbnz	r3, d05e1c34 <_vfiprintf_r+0x1f8>
d05e1bec:	9b03      	ldr	r3, [sp, #12]
d05e1bee:	3307      	adds	r3, #7
d05e1bf0:	f023 0307 	bic.w	r3, r3, #7
d05e1bf4:	3308      	adds	r3, #8
d05e1bf6:	9303      	str	r3, [sp, #12]
d05e1bf8:	9b09      	ldr	r3, [sp, #36]	; 0x24
d05e1bfa:	443b      	add	r3, r7
d05e1bfc:	9309      	str	r3, [sp, #36]	; 0x24
d05e1bfe:	e767      	b.n	d05e1ad0 <_vfiprintf_r+0x94>
d05e1c00:	fb0c 3202 	mla	r2, ip, r2, r3
d05e1c04:	460c      	mov	r4, r1
d05e1c06:	2001      	movs	r0, #1
d05e1c08:	e7a5      	b.n	d05e1b56 <_vfiprintf_r+0x11a>
d05e1c0a:	2300      	movs	r3, #0
d05e1c0c:	3401      	adds	r4, #1
d05e1c0e:	9305      	str	r3, [sp, #20]
d05e1c10:	4619      	mov	r1, r3
d05e1c12:	f04f 0c0a 	mov.w	ip, #10
d05e1c16:	4620      	mov	r0, r4
d05e1c18:	f810 2b01 	ldrb.w	r2, [r0], #1
d05e1c1c:	3a30      	subs	r2, #48	; 0x30
d05e1c1e:	2a09      	cmp	r2, #9
d05e1c20:	d903      	bls.n	d05e1c2a <_vfiprintf_r+0x1ee>
d05e1c22:	2b00      	cmp	r3, #0
d05e1c24:	d0c5      	beq.n	d05e1bb2 <_vfiprintf_r+0x176>
d05e1c26:	9105      	str	r1, [sp, #20]
d05e1c28:	e7c3      	b.n	d05e1bb2 <_vfiprintf_r+0x176>
d05e1c2a:	fb0c 2101 	mla	r1, ip, r1, r2
d05e1c2e:	4604      	mov	r4, r0
d05e1c30:	2301      	movs	r3, #1
d05e1c32:	e7f0      	b.n	d05e1c16 <_vfiprintf_r+0x1da>
d05e1c34:	ab03      	add	r3, sp, #12
d05e1c36:	9300      	str	r3, [sp, #0]
d05e1c38:	462a      	mov	r2, r5
d05e1c3a:	4b16      	ldr	r3, [pc, #88]	; (d05e1c94 <_vfiprintf_r+0x258>)
d05e1c3c:	a904      	add	r1, sp, #16
d05e1c3e:	4630      	mov	r0, r6
d05e1c40:	f3af 8000 	nop.w
d05e1c44:	4607      	mov	r7, r0
d05e1c46:	1c78      	adds	r0, r7, #1
d05e1c48:	d1d6      	bne.n	d05e1bf8 <_vfiprintf_r+0x1bc>
d05e1c4a:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d05e1c4c:	07d9      	lsls	r1, r3, #31
d05e1c4e:	d405      	bmi.n	d05e1c5c <_vfiprintf_r+0x220>
d05e1c50:	89ab      	ldrh	r3, [r5, #12]
d05e1c52:	059a      	lsls	r2, r3, #22
d05e1c54:	d402      	bmi.n	d05e1c5c <_vfiprintf_r+0x220>
d05e1c56:	6da8      	ldr	r0, [r5, #88]	; 0x58
d05e1c58:	f7ff fc53 	bl	d05e1502 <__retarget_lock_release_recursive>
d05e1c5c:	89ab      	ldrh	r3, [r5, #12]
d05e1c5e:	065b      	lsls	r3, r3, #25
d05e1c60:	f53f af12 	bmi.w	d05e1a88 <_vfiprintf_r+0x4c>
d05e1c64:	9809      	ldr	r0, [sp, #36]	; 0x24
d05e1c66:	e711      	b.n	d05e1a8c <_vfiprintf_r+0x50>
d05e1c68:	ab03      	add	r3, sp, #12
d05e1c6a:	9300      	str	r3, [sp, #0]
d05e1c6c:	462a      	mov	r2, r5
d05e1c6e:	4b09      	ldr	r3, [pc, #36]	; (d05e1c94 <_vfiprintf_r+0x258>)
d05e1c70:	a904      	add	r1, sp, #16
d05e1c72:	4630      	mov	r0, r6
d05e1c74:	f000 f880 	bl	d05e1d78 <_printf_i>
d05e1c78:	e7e4      	b.n	d05e1c44 <_vfiprintf_r+0x208>
d05e1c7a:	bf00      	nop
d05e1c7c:	d05e27b0 	.word	0xd05e27b0
d05e1c80:	d05e27d0 	.word	0xd05e27d0
d05e1c84:	d05e2790 	.word	0xd05e2790
d05e1c88:	d05e27f0 	.word	0xd05e27f0
d05e1c8c:	d05e27fa 	.word	0xd05e27fa
d05e1c90:	00000000 	.word	0x00000000
d05e1c94:	d05e1a17 	.word	0xd05e1a17
d05e1c98:	d05e27f6 	.word	0xd05e27f6

d05e1c9c <_printf_common>:
d05e1c9c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e1ca0:	4616      	mov	r6, r2
d05e1ca2:	4699      	mov	r9, r3
d05e1ca4:	688a      	ldr	r2, [r1, #8]
d05e1ca6:	690b      	ldr	r3, [r1, #16]
d05e1ca8:	f8dd 8020 	ldr.w	r8, [sp, #32]
d05e1cac:	4293      	cmp	r3, r2
d05e1cae:	bfb8      	it	lt
d05e1cb0:	4613      	movlt	r3, r2
d05e1cb2:	6033      	str	r3, [r6, #0]
d05e1cb4:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d05e1cb8:	4607      	mov	r7, r0
d05e1cba:	460c      	mov	r4, r1
d05e1cbc:	b10a      	cbz	r2, d05e1cc2 <_printf_common+0x26>
d05e1cbe:	3301      	adds	r3, #1
d05e1cc0:	6033      	str	r3, [r6, #0]
d05e1cc2:	6823      	ldr	r3, [r4, #0]
d05e1cc4:	0699      	lsls	r1, r3, #26
d05e1cc6:	bf42      	ittt	mi
d05e1cc8:	6833      	ldrmi	r3, [r6, #0]
d05e1cca:	3302      	addmi	r3, #2
d05e1ccc:	6033      	strmi	r3, [r6, #0]
d05e1cce:	6825      	ldr	r5, [r4, #0]
d05e1cd0:	f015 0506 	ands.w	r5, r5, #6
d05e1cd4:	d106      	bne.n	d05e1ce4 <_printf_common+0x48>
d05e1cd6:	f104 0a19 	add.w	sl, r4, #25
d05e1cda:	68e3      	ldr	r3, [r4, #12]
d05e1cdc:	6832      	ldr	r2, [r6, #0]
d05e1cde:	1a9b      	subs	r3, r3, r2
d05e1ce0:	42ab      	cmp	r3, r5
d05e1ce2:	dc26      	bgt.n	d05e1d32 <_printf_common+0x96>
d05e1ce4:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d05e1ce8:	1e13      	subs	r3, r2, #0
d05e1cea:	6822      	ldr	r2, [r4, #0]
d05e1cec:	bf18      	it	ne
d05e1cee:	2301      	movne	r3, #1
d05e1cf0:	0692      	lsls	r2, r2, #26
d05e1cf2:	d42b      	bmi.n	d05e1d4c <_printf_common+0xb0>
d05e1cf4:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05e1cf8:	4649      	mov	r1, r9
d05e1cfa:	4638      	mov	r0, r7
d05e1cfc:	47c0      	blx	r8
d05e1cfe:	3001      	adds	r0, #1
d05e1d00:	d01e      	beq.n	d05e1d40 <_printf_common+0xa4>
d05e1d02:	6823      	ldr	r3, [r4, #0]
d05e1d04:	68e5      	ldr	r5, [r4, #12]
d05e1d06:	6832      	ldr	r2, [r6, #0]
d05e1d08:	f003 0306 	and.w	r3, r3, #6
d05e1d0c:	2b04      	cmp	r3, #4
d05e1d0e:	bf08      	it	eq
d05e1d10:	1aad      	subeq	r5, r5, r2
d05e1d12:	68a3      	ldr	r3, [r4, #8]
d05e1d14:	6922      	ldr	r2, [r4, #16]
d05e1d16:	bf0c      	ite	eq
d05e1d18:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d05e1d1c:	2500      	movne	r5, #0
d05e1d1e:	4293      	cmp	r3, r2
d05e1d20:	bfc4      	itt	gt
d05e1d22:	1a9b      	subgt	r3, r3, r2
d05e1d24:	18ed      	addgt	r5, r5, r3
d05e1d26:	2600      	movs	r6, #0
d05e1d28:	341a      	adds	r4, #26
d05e1d2a:	42b5      	cmp	r5, r6
d05e1d2c:	d11a      	bne.n	d05e1d64 <_printf_common+0xc8>
d05e1d2e:	2000      	movs	r0, #0
d05e1d30:	e008      	b.n	d05e1d44 <_printf_common+0xa8>
d05e1d32:	2301      	movs	r3, #1
d05e1d34:	4652      	mov	r2, sl
d05e1d36:	4649      	mov	r1, r9
d05e1d38:	4638      	mov	r0, r7
d05e1d3a:	47c0      	blx	r8
d05e1d3c:	3001      	adds	r0, #1
d05e1d3e:	d103      	bne.n	d05e1d48 <_printf_common+0xac>
d05e1d40:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e1d44:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e1d48:	3501      	adds	r5, #1
d05e1d4a:	e7c6      	b.n	d05e1cda <_printf_common+0x3e>
d05e1d4c:	18e1      	adds	r1, r4, r3
d05e1d4e:	1c5a      	adds	r2, r3, #1
d05e1d50:	2030      	movs	r0, #48	; 0x30
d05e1d52:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d05e1d56:	4422      	add	r2, r4
d05e1d58:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d05e1d5c:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d05e1d60:	3302      	adds	r3, #2
d05e1d62:	e7c7      	b.n	d05e1cf4 <_printf_common+0x58>
d05e1d64:	2301      	movs	r3, #1
d05e1d66:	4622      	mov	r2, r4
d05e1d68:	4649      	mov	r1, r9
d05e1d6a:	4638      	mov	r0, r7
d05e1d6c:	47c0      	blx	r8
d05e1d6e:	3001      	adds	r0, #1
d05e1d70:	d0e6      	beq.n	d05e1d40 <_printf_common+0xa4>
d05e1d72:	3601      	adds	r6, #1
d05e1d74:	e7d9      	b.n	d05e1d2a <_printf_common+0x8e>
	...

d05e1d78 <_printf_i>:
d05e1d78:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d05e1d7c:	460c      	mov	r4, r1
d05e1d7e:	4691      	mov	r9, r2
d05e1d80:	7e27      	ldrb	r7, [r4, #24]
d05e1d82:	990c      	ldr	r1, [sp, #48]	; 0x30
d05e1d84:	2f78      	cmp	r7, #120	; 0x78
d05e1d86:	4680      	mov	r8, r0
d05e1d88:	469a      	mov	sl, r3
d05e1d8a:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05e1d8e:	d807      	bhi.n	d05e1da0 <_printf_i+0x28>
d05e1d90:	2f62      	cmp	r7, #98	; 0x62
d05e1d92:	d80a      	bhi.n	d05e1daa <_printf_i+0x32>
d05e1d94:	2f00      	cmp	r7, #0
d05e1d96:	f000 80d8 	beq.w	d05e1f4a <_printf_i+0x1d2>
d05e1d9a:	2f58      	cmp	r7, #88	; 0x58
d05e1d9c:	f000 80a3 	beq.w	d05e1ee6 <_printf_i+0x16e>
d05e1da0:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05e1da4:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d05e1da8:	e03a      	b.n	d05e1e20 <_printf_i+0xa8>
d05e1daa:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d05e1dae:	2b15      	cmp	r3, #21
d05e1db0:	d8f6      	bhi.n	d05e1da0 <_printf_i+0x28>
d05e1db2:	a001      	add	r0, pc, #4	; (adr r0, d05e1db8 <_printf_i+0x40>)
d05e1db4:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d05e1db8:	d05e1e11 	.word	0xd05e1e11
d05e1dbc:	d05e1e25 	.word	0xd05e1e25
d05e1dc0:	d05e1da1 	.word	0xd05e1da1
d05e1dc4:	d05e1da1 	.word	0xd05e1da1
d05e1dc8:	d05e1da1 	.word	0xd05e1da1
d05e1dcc:	d05e1da1 	.word	0xd05e1da1
d05e1dd0:	d05e1e25 	.word	0xd05e1e25
d05e1dd4:	d05e1da1 	.word	0xd05e1da1
d05e1dd8:	d05e1da1 	.word	0xd05e1da1
d05e1ddc:	d05e1da1 	.word	0xd05e1da1
d05e1de0:	d05e1da1 	.word	0xd05e1da1
d05e1de4:	d05e1f31 	.word	0xd05e1f31
d05e1de8:	d05e1e55 	.word	0xd05e1e55
d05e1dec:	d05e1f13 	.word	0xd05e1f13
d05e1df0:	d05e1da1 	.word	0xd05e1da1
d05e1df4:	d05e1da1 	.word	0xd05e1da1
d05e1df8:	d05e1f53 	.word	0xd05e1f53
d05e1dfc:	d05e1da1 	.word	0xd05e1da1
d05e1e00:	d05e1e55 	.word	0xd05e1e55
d05e1e04:	d05e1da1 	.word	0xd05e1da1
d05e1e08:	d05e1da1 	.word	0xd05e1da1
d05e1e0c:	d05e1f1b 	.word	0xd05e1f1b
d05e1e10:	680b      	ldr	r3, [r1, #0]
d05e1e12:	1d1a      	adds	r2, r3, #4
d05e1e14:	681b      	ldr	r3, [r3, #0]
d05e1e16:	600a      	str	r2, [r1, #0]
d05e1e18:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05e1e1c:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d05e1e20:	2301      	movs	r3, #1
d05e1e22:	e0a3      	b.n	d05e1f6c <_printf_i+0x1f4>
d05e1e24:	6825      	ldr	r5, [r4, #0]
d05e1e26:	6808      	ldr	r0, [r1, #0]
d05e1e28:	062e      	lsls	r6, r5, #24
d05e1e2a:	f100 0304 	add.w	r3, r0, #4
d05e1e2e:	d50a      	bpl.n	d05e1e46 <_printf_i+0xce>
d05e1e30:	6805      	ldr	r5, [r0, #0]
d05e1e32:	600b      	str	r3, [r1, #0]
d05e1e34:	2d00      	cmp	r5, #0
d05e1e36:	da03      	bge.n	d05e1e40 <_printf_i+0xc8>
d05e1e38:	232d      	movs	r3, #45	; 0x2d
d05e1e3a:	426d      	negs	r5, r5
d05e1e3c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05e1e40:	485e      	ldr	r0, [pc, #376]	; (d05e1fbc <_printf_i+0x244>)
d05e1e42:	230a      	movs	r3, #10
d05e1e44:	e019      	b.n	d05e1e7a <_printf_i+0x102>
d05e1e46:	f015 0f40 	tst.w	r5, #64	; 0x40
d05e1e4a:	6805      	ldr	r5, [r0, #0]
d05e1e4c:	600b      	str	r3, [r1, #0]
d05e1e4e:	bf18      	it	ne
d05e1e50:	b22d      	sxthne	r5, r5
d05e1e52:	e7ef      	b.n	d05e1e34 <_printf_i+0xbc>
d05e1e54:	680b      	ldr	r3, [r1, #0]
d05e1e56:	6825      	ldr	r5, [r4, #0]
d05e1e58:	1d18      	adds	r0, r3, #4
d05e1e5a:	6008      	str	r0, [r1, #0]
d05e1e5c:	0628      	lsls	r0, r5, #24
d05e1e5e:	d501      	bpl.n	d05e1e64 <_printf_i+0xec>
d05e1e60:	681d      	ldr	r5, [r3, #0]
d05e1e62:	e002      	b.n	d05e1e6a <_printf_i+0xf2>
d05e1e64:	0669      	lsls	r1, r5, #25
d05e1e66:	d5fb      	bpl.n	d05e1e60 <_printf_i+0xe8>
d05e1e68:	881d      	ldrh	r5, [r3, #0]
d05e1e6a:	4854      	ldr	r0, [pc, #336]	; (d05e1fbc <_printf_i+0x244>)
d05e1e6c:	2f6f      	cmp	r7, #111	; 0x6f
d05e1e6e:	bf0c      	ite	eq
d05e1e70:	2308      	moveq	r3, #8
d05e1e72:	230a      	movne	r3, #10
d05e1e74:	2100      	movs	r1, #0
d05e1e76:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d05e1e7a:	6866      	ldr	r6, [r4, #4]
d05e1e7c:	60a6      	str	r6, [r4, #8]
d05e1e7e:	2e00      	cmp	r6, #0
d05e1e80:	bfa2      	ittt	ge
d05e1e82:	6821      	ldrge	r1, [r4, #0]
d05e1e84:	f021 0104 	bicge.w	r1, r1, #4
d05e1e88:	6021      	strge	r1, [r4, #0]
d05e1e8a:	b90d      	cbnz	r5, d05e1e90 <_printf_i+0x118>
d05e1e8c:	2e00      	cmp	r6, #0
d05e1e8e:	d04d      	beq.n	d05e1f2c <_printf_i+0x1b4>
d05e1e90:	4616      	mov	r6, r2
d05e1e92:	fbb5 f1f3 	udiv	r1, r5, r3
d05e1e96:	fb03 5711 	mls	r7, r3, r1, r5
d05e1e9a:	5dc7      	ldrb	r7, [r0, r7]
d05e1e9c:	f806 7d01 	strb.w	r7, [r6, #-1]!
d05e1ea0:	462f      	mov	r7, r5
d05e1ea2:	42bb      	cmp	r3, r7
d05e1ea4:	460d      	mov	r5, r1
d05e1ea6:	d9f4      	bls.n	d05e1e92 <_printf_i+0x11a>
d05e1ea8:	2b08      	cmp	r3, #8
d05e1eaa:	d10b      	bne.n	d05e1ec4 <_printf_i+0x14c>
d05e1eac:	6823      	ldr	r3, [r4, #0]
d05e1eae:	07df      	lsls	r7, r3, #31
d05e1eb0:	d508      	bpl.n	d05e1ec4 <_printf_i+0x14c>
d05e1eb2:	6923      	ldr	r3, [r4, #16]
d05e1eb4:	6861      	ldr	r1, [r4, #4]
d05e1eb6:	4299      	cmp	r1, r3
d05e1eb8:	bfde      	ittt	le
d05e1eba:	2330      	movle	r3, #48	; 0x30
d05e1ebc:	f806 3c01 	strble.w	r3, [r6, #-1]
d05e1ec0:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d05e1ec4:	1b92      	subs	r2, r2, r6
d05e1ec6:	6122      	str	r2, [r4, #16]
d05e1ec8:	f8cd a000 	str.w	sl, [sp]
d05e1ecc:	464b      	mov	r3, r9
d05e1ece:	aa03      	add	r2, sp, #12
d05e1ed0:	4621      	mov	r1, r4
d05e1ed2:	4640      	mov	r0, r8
d05e1ed4:	f7ff fee2 	bl	d05e1c9c <_printf_common>
d05e1ed8:	3001      	adds	r0, #1
d05e1eda:	d14c      	bne.n	d05e1f76 <_printf_i+0x1fe>
d05e1edc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e1ee0:	b004      	add	sp, #16
d05e1ee2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e1ee6:	4835      	ldr	r0, [pc, #212]	; (d05e1fbc <_printf_i+0x244>)
d05e1ee8:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d05e1eec:	6823      	ldr	r3, [r4, #0]
d05e1eee:	680e      	ldr	r6, [r1, #0]
d05e1ef0:	061f      	lsls	r7, r3, #24
d05e1ef2:	f856 5b04 	ldr.w	r5, [r6], #4
d05e1ef6:	600e      	str	r6, [r1, #0]
d05e1ef8:	d514      	bpl.n	d05e1f24 <_printf_i+0x1ac>
d05e1efa:	07d9      	lsls	r1, r3, #31
d05e1efc:	bf44      	itt	mi
d05e1efe:	f043 0320 	orrmi.w	r3, r3, #32
d05e1f02:	6023      	strmi	r3, [r4, #0]
d05e1f04:	b91d      	cbnz	r5, d05e1f0e <_printf_i+0x196>
d05e1f06:	6823      	ldr	r3, [r4, #0]
d05e1f08:	f023 0320 	bic.w	r3, r3, #32
d05e1f0c:	6023      	str	r3, [r4, #0]
d05e1f0e:	2310      	movs	r3, #16
d05e1f10:	e7b0      	b.n	d05e1e74 <_printf_i+0xfc>
d05e1f12:	6823      	ldr	r3, [r4, #0]
d05e1f14:	f043 0320 	orr.w	r3, r3, #32
d05e1f18:	6023      	str	r3, [r4, #0]
d05e1f1a:	2378      	movs	r3, #120	; 0x78
d05e1f1c:	4828      	ldr	r0, [pc, #160]	; (d05e1fc0 <_printf_i+0x248>)
d05e1f1e:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d05e1f22:	e7e3      	b.n	d05e1eec <_printf_i+0x174>
d05e1f24:	065e      	lsls	r6, r3, #25
d05e1f26:	bf48      	it	mi
d05e1f28:	b2ad      	uxthmi	r5, r5
d05e1f2a:	e7e6      	b.n	d05e1efa <_printf_i+0x182>
d05e1f2c:	4616      	mov	r6, r2
d05e1f2e:	e7bb      	b.n	d05e1ea8 <_printf_i+0x130>
d05e1f30:	680b      	ldr	r3, [r1, #0]
d05e1f32:	6826      	ldr	r6, [r4, #0]
d05e1f34:	6960      	ldr	r0, [r4, #20]
d05e1f36:	1d1d      	adds	r5, r3, #4
d05e1f38:	600d      	str	r5, [r1, #0]
d05e1f3a:	0635      	lsls	r5, r6, #24
d05e1f3c:	681b      	ldr	r3, [r3, #0]
d05e1f3e:	d501      	bpl.n	d05e1f44 <_printf_i+0x1cc>
d05e1f40:	6018      	str	r0, [r3, #0]
d05e1f42:	e002      	b.n	d05e1f4a <_printf_i+0x1d2>
d05e1f44:	0671      	lsls	r1, r6, #25
d05e1f46:	d5fb      	bpl.n	d05e1f40 <_printf_i+0x1c8>
d05e1f48:	8018      	strh	r0, [r3, #0]
d05e1f4a:	2300      	movs	r3, #0
d05e1f4c:	6123      	str	r3, [r4, #16]
d05e1f4e:	4616      	mov	r6, r2
d05e1f50:	e7ba      	b.n	d05e1ec8 <_printf_i+0x150>
d05e1f52:	680b      	ldr	r3, [r1, #0]
d05e1f54:	1d1a      	adds	r2, r3, #4
d05e1f56:	600a      	str	r2, [r1, #0]
d05e1f58:	681e      	ldr	r6, [r3, #0]
d05e1f5a:	6862      	ldr	r2, [r4, #4]
d05e1f5c:	2100      	movs	r1, #0
d05e1f5e:	4630      	mov	r0, r6
d05e1f60:	f000 f8be 	bl	d05e20e0 <memchr>
d05e1f64:	b108      	cbz	r0, d05e1f6a <_printf_i+0x1f2>
d05e1f66:	1b80      	subs	r0, r0, r6
d05e1f68:	6060      	str	r0, [r4, #4]
d05e1f6a:	6863      	ldr	r3, [r4, #4]
d05e1f6c:	6123      	str	r3, [r4, #16]
d05e1f6e:	2300      	movs	r3, #0
d05e1f70:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05e1f74:	e7a8      	b.n	d05e1ec8 <_printf_i+0x150>
d05e1f76:	6923      	ldr	r3, [r4, #16]
d05e1f78:	4632      	mov	r2, r6
d05e1f7a:	4649      	mov	r1, r9
d05e1f7c:	4640      	mov	r0, r8
d05e1f7e:	47d0      	blx	sl
d05e1f80:	3001      	adds	r0, #1
d05e1f82:	d0ab      	beq.n	d05e1edc <_printf_i+0x164>
d05e1f84:	6823      	ldr	r3, [r4, #0]
d05e1f86:	079b      	lsls	r3, r3, #30
d05e1f88:	d413      	bmi.n	d05e1fb2 <_printf_i+0x23a>
d05e1f8a:	68e0      	ldr	r0, [r4, #12]
d05e1f8c:	9b03      	ldr	r3, [sp, #12]
d05e1f8e:	4298      	cmp	r0, r3
d05e1f90:	bfb8      	it	lt
d05e1f92:	4618      	movlt	r0, r3
d05e1f94:	e7a4      	b.n	d05e1ee0 <_printf_i+0x168>
d05e1f96:	2301      	movs	r3, #1
d05e1f98:	4632      	mov	r2, r6
d05e1f9a:	4649      	mov	r1, r9
d05e1f9c:	4640      	mov	r0, r8
d05e1f9e:	47d0      	blx	sl
d05e1fa0:	3001      	adds	r0, #1
d05e1fa2:	d09b      	beq.n	d05e1edc <_printf_i+0x164>
d05e1fa4:	3501      	adds	r5, #1
d05e1fa6:	68e3      	ldr	r3, [r4, #12]
d05e1fa8:	9903      	ldr	r1, [sp, #12]
d05e1faa:	1a5b      	subs	r3, r3, r1
d05e1fac:	42ab      	cmp	r3, r5
d05e1fae:	dcf2      	bgt.n	d05e1f96 <_printf_i+0x21e>
d05e1fb0:	e7eb      	b.n	d05e1f8a <_printf_i+0x212>
d05e1fb2:	2500      	movs	r5, #0
d05e1fb4:	f104 0619 	add.w	r6, r4, #25
d05e1fb8:	e7f5      	b.n	d05e1fa6 <_printf_i+0x22e>
d05e1fba:	bf00      	nop
d05e1fbc:	d05e2801 	.word	0xd05e2801
d05e1fc0:	d05e2812 	.word	0xd05e2812

d05e1fc4 <__sread>:
d05e1fc4:	b510      	push	{r4, lr}
d05e1fc6:	460c      	mov	r4, r1
d05e1fc8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05e1fcc:	f000 f924 	bl	d05e2218 <_read_r>
d05e1fd0:	2800      	cmp	r0, #0
d05e1fd2:	bfab      	itete	ge
d05e1fd4:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d05e1fd6:	89a3      	ldrhlt	r3, [r4, #12]
d05e1fd8:	181b      	addge	r3, r3, r0
d05e1fda:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d05e1fde:	bfac      	ite	ge
d05e1fe0:	6563      	strge	r3, [r4, #84]	; 0x54
d05e1fe2:	81a3      	strhlt	r3, [r4, #12]
d05e1fe4:	bd10      	pop	{r4, pc}

d05e1fe6 <__swrite>:
d05e1fe6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05e1fea:	461f      	mov	r7, r3
d05e1fec:	898b      	ldrh	r3, [r1, #12]
d05e1fee:	05db      	lsls	r3, r3, #23
d05e1ff0:	4605      	mov	r5, r0
d05e1ff2:	460c      	mov	r4, r1
d05e1ff4:	4616      	mov	r6, r2
d05e1ff6:	d505      	bpl.n	d05e2004 <__swrite+0x1e>
d05e1ff8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05e1ffc:	2302      	movs	r3, #2
d05e1ffe:	2200      	movs	r2, #0
d05e2000:	f000 f856 	bl	d05e20b0 <_lseek_r>
d05e2004:	89a3      	ldrh	r3, [r4, #12]
d05e2006:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d05e200a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d05e200e:	81a3      	strh	r3, [r4, #12]
d05e2010:	4632      	mov	r2, r6
d05e2012:	463b      	mov	r3, r7
d05e2014:	4628      	mov	r0, r5
d05e2016:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d05e201a:	f7fe b80f 	b.w	d05e003c <_write_r>

d05e201e <__sseek>:
d05e201e:	b510      	push	{r4, lr}
d05e2020:	460c      	mov	r4, r1
d05e2022:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05e2026:	f000 f843 	bl	d05e20b0 <_lseek_r>
d05e202a:	1c43      	adds	r3, r0, #1
d05e202c:	89a3      	ldrh	r3, [r4, #12]
d05e202e:	bf15      	itete	ne
d05e2030:	6560      	strne	r0, [r4, #84]	; 0x54
d05e2032:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d05e2036:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d05e203a:	81a3      	strheq	r3, [r4, #12]
d05e203c:	bf18      	it	ne
d05e203e:	81a3      	strhne	r3, [r4, #12]
d05e2040:	bd10      	pop	{r4, pc}

d05e2042 <__sclose>:
d05e2042:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05e2046:	f000 b801 	b.w	d05e204c <_close_r>
	...

d05e204c <_close_r>:
d05e204c:	b538      	push	{r3, r4, r5, lr}
d05e204e:	4d06      	ldr	r5, [pc, #24]	; (d05e2068 <_close_r+0x1c>)
d05e2050:	2300      	movs	r3, #0
d05e2052:	4604      	mov	r4, r0
d05e2054:	4608      	mov	r0, r1
d05e2056:	602b      	str	r3, [r5, #0]
d05e2058:	f7fe f82a 	bl	d05e00b0 <_close>
d05e205c:	1c43      	adds	r3, r0, #1
d05e205e:	d102      	bne.n	d05e2066 <_close_r+0x1a>
d05e2060:	682b      	ldr	r3, [r5, #0]
d05e2062:	b103      	cbz	r3, d05e2066 <_close_r+0x1a>
d05e2064:	6023      	str	r3, [r4, #0]
d05e2066:	bd38      	pop	{r3, r4, r5, pc}
d05e2068:	d05e3234 	.word	0xd05e3234

d05e206c <_fstat_r>:
d05e206c:	b538      	push	{r3, r4, r5, lr}
d05e206e:	4d07      	ldr	r5, [pc, #28]	; (d05e208c <_fstat_r+0x20>)
d05e2070:	2300      	movs	r3, #0
d05e2072:	4604      	mov	r4, r0
d05e2074:	4608      	mov	r0, r1
d05e2076:	4611      	mov	r1, r2
d05e2078:	602b      	str	r3, [r5, #0]
d05e207a:	f7fe f81d 	bl	d05e00b8 <_fstat>
d05e207e:	1c43      	adds	r3, r0, #1
d05e2080:	d102      	bne.n	d05e2088 <_fstat_r+0x1c>
d05e2082:	682b      	ldr	r3, [r5, #0]
d05e2084:	b103      	cbz	r3, d05e2088 <_fstat_r+0x1c>
d05e2086:	6023      	str	r3, [r4, #0]
d05e2088:	bd38      	pop	{r3, r4, r5, pc}
d05e208a:	bf00      	nop
d05e208c:	d05e3234 	.word	0xd05e3234

d05e2090 <_isatty_r>:
d05e2090:	b538      	push	{r3, r4, r5, lr}
d05e2092:	4d06      	ldr	r5, [pc, #24]	; (d05e20ac <_isatty_r+0x1c>)
d05e2094:	2300      	movs	r3, #0
d05e2096:	4604      	mov	r4, r0
d05e2098:	4608      	mov	r0, r1
d05e209a:	602b      	str	r3, [r5, #0]
d05e209c:	f7fe f834 	bl	d05e0108 <_isatty>
d05e20a0:	1c43      	adds	r3, r0, #1
d05e20a2:	d102      	bne.n	d05e20aa <_isatty_r+0x1a>
d05e20a4:	682b      	ldr	r3, [r5, #0]
d05e20a6:	b103      	cbz	r3, d05e20aa <_isatty_r+0x1a>
d05e20a8:	6023      	str	r3, [r4, #0]
d05e20aa:	bd38      	pop	{r3, r4, r5, pc}
d05e20ac:	d05e3234 	.word	0xd05e3234

d05e20b0 <_lseek_r>:
d05e20b0:	b538      	push	{r3, r4, r5, lr}
d05e20b2:	4d07      	ldr	r5, [pc, #28]	; (d05e20d0 <_lseek_r+0x20>)
d05e20b4:	4604      	mov	r4, r0
d05e20b6:	4608      	mov	r0, r1
d05e20b8:	4611      	mov	r1, r2
d05e20ba:	2200      	movs	r2, #0
d05e20bc:	602a      	str	r2, [r5, #0]
d05e20be:	461a      	mov	r2, r3
d05e20c0:	f7fe f800 	bl	d05e00c4 <_lseek>
d05e20c4:	1c43      	adds	r3, r0, #1
d05e20c6:	d102      	bne.n	d05e20ce <_lseek_r+0x1e>
d05e20c8:	682b      	ldr	r3, [r5, #0]
d05e20ca:	b103      	cbz	r3, d05e20ce <_lseek_r+0x1e>
d05e20cc:	6023      	str	r3, [r4, #0]
d05e20ce:	bd38      	pop	{r3, r4, r5, pc}
d05e20d0:	d05e3234 	.word	0xd05e3234
	...

d05e20e0 <memchr>:
d05e20e0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05e20e4:	2a10      	cmp	r2, #16
d05e20e6:	db2b      	blt.n	d05e2140 <memchr+0x60>
d05e20e8:	f010 0f07 	tst.w	r0, #7
d05e20ec:	d008      	beq.n	d05e2100 <memchr+0x20>
d05e20ee:	f810 3b01 	ldrb.w	r3, [r0], #1
d05e20f2:	3a01      	subs	r2, #1
d05e20f4:	428b      	cmp	r3, r1
d05e20f6:	d02d      	beq.n	d05e2154 <memchr+0x74>
d05e20f8:	f010 0f07 	tst.w	r0, #7
d05e20fc:	b342      	cbz	r2, d05e2150 <memchr+0x70>
d05e20fe:	d1f6      	bne.n	d05e20ee <memchr+0xe>
d05e2100:	b4f0      	push	{r4, r5, r6, r7}
d05e2102:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d05e2106:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d05e210a:	f022 0407 	bic.w	r4, r2, #7
d05e210e:	f07f 0700 	mvns.w	r7, #0
d05e2112:	2300      	movs	r3, #0
d05e2114:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d05e2118:	3c08      	subs	r4, #8
d05e211a:	ea85 0501 	eor.w	r5, r5, r1
d05e211e:	ea86 0601 	eor.w	r6, r6, r1
d05e2122:	fa85 f547 	uadd8	r5, r5, r7
d05e2126:	faa3 f587 	sel	r5, r3, r7
d05e212a:	fa86 f647 	uadd8	r6, r6, r7
d05e212e:	faa5 f687 	sel	r6, r5, r7
d05e2132:	b98e      	cbnz	r6, d05e2158 <memchr+0x78>
d05e2134:	d1ee      	bne.n	d05e2114 <memchr+0x34>
d05e2136:	bcf0      	pop	{r4, r5, r6, r7}
d05e2138:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05e213c:	f002 0207 	and.w	r2, r2, #7
d05e2140:	b132      	cbz	r2, d05e2150 <memchr+0x70>
d05e2142:	f810 3b01 	ldrb.w	r3, [r0], #1
d05e2146:	3a01      	subs	r2, #1
d05e2148:	ea83 0301 	eor.w	r3, r3, r1
d05e214c:	b113      	cbz	r3, d05e2154 <memchr+0x74>
d05e214e:	d1f8      	bne.n	d05e2142 <memchr+0x62>
d05e2150:	2000      	movs	r0, #0
d05e2152:	4770      	bx	lr
d05e2154:	3801      	subs	r0, #1
d05e2156:	4770      	bx	lr
d05e2158:	2d00      	cmp	r5, #0
d05e215a:	bf06      	itte	eq
d05e215c:	4635      	moveq	r5, r6
d05e215e:	3803      	subeq	r0, #3
d05e2160:	3807      	subne	r0, #7
d05e2162:	f015 0f01 	tst.w	r5, #1
d05e2166:	d107      	bne.n	d05e2178 <memchr+0x98>
d05e2168:	3001      	adds	r0, #1
d05e216a:	f415 7f80 	tst.w	r5, #256	; 0x100
d05e216e:	bf02      	ittt	eq
d05e2170:	3001      	addeq	r0, #1
d05e2172:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d05e2176:	3001      	addeq	r0, #1
d05e2178:	bcf0      	pop	{r4, r5, r6, r7}
d05e217a:	3801      	subs	r0, #1
d05e217c:	4770      	bx	lr
d05e217e:	bf00      	nop

d05e2180 <memmove>:
d05e2180:	4288      	cmp	r0, r1
d05e2182:	b510      	push	{r4, lr}
d05e2184:	eb01 0402 	add.w	r4, r1, r2
d05e2188:	d902      	bls.n	d05e2190 <memmove+0x10>
d05e218a:	4284      	cmp	r4, r0
d05e218c:	4623      	mov	r3, r4
d05e218e:	d807      	bhi.n	d05e21a0 <memmove+0x20>
d05e2190:	1e43      	subs	r3, r0, #1
d05e2192:	42a1      	cmp	r1, r4
d05e2194:	d008      	beq.n	d05e21a8 <memmove+0x28>
d05e2196:	f811 2b01 	ldrb.w	r2, [r1], #1
d05e219a:	f803 2f01 	strb.w	r2, [r3, #1]!
d05e219e:	e7f8      	b.n	d05e2192 <memmove+0x12>
d05e21a0:	4402      	add	r2, r0
d05e21a2:	4601      	mov	r1, r0
d05e21a4:	428a      	cmp	r2, r1
d05e21a6:	d100      	bne.n	d05e21aa <memmove+0x2a>
d05e21a8:	bd10      	pop	{r4, pc}
d05e21aa:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d05e21ae:	f802 4d01 	strb.w	r4, [r2, #-1]!
d05e21b2:	e7f7      	b.n	d05e21a4 <memmove+0x24>

d05e21b4 <__malloc_lock>:
d05e21b4:	4801      	ldr	r0, [pc, #4]	; (d05e21bc <__malloc_lock+0x8>)
d05e21b6:	f7ff b9a3 	b.w	d05e1500 <__retarget_lock_acquire_recursive>
d05e21ba:	bf00      	nop
d05e21bc:	d05e322c 	.word	0xd05e322c

d05e21c0 <__malloc_unlock>:
d05e21c0:	4801      	ldr	r0, [pc, #4]	; (d05e21c8 <__malloc_unlock+0x8>)
d05e21c2:	f7ff b99e 	b.w	d05e1502 <__retarget_lock_release_recursive>
d05e21c6:	bf00      	nop
d05e21c8:	d05e322c 	.word	0xd05e322c

d05e21cc <_realloc_r>:
d05e21cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e21ce:	4607      	mov	r7, r0
d05e21d0:	4614      	mov	r4, r2
d05e21d2:	460e      	mov	r6, r1
d05e21d4:	b921      	cbnz	r1, d05e21e0 <_realloc_r+0x14>
d05e21d6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d05e21da:	4611      	mov	r1, r2
d05e21dc:	f7ff ba4e 	b.w	d05e167c <_malloc_r>
d05e21e0:	b922      	cbnz	r2, d05e21ec <_realloc_r+0x20>
d05e21e2:	f7ff f9fb 	bl	d05e15dc <_free_r>
d05e21e6:	4625      	mov	r5, r4
d05e21e8:	4628      	mov	r0, r5
d05e21ea:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e21ec:	f000 f826 	bl	d05e223c <_malloc_usable_size_r>
d05e21f0:	42a0      	cmp	r0, r4
d05e21f2:	d20f      	bcs.n	d05e2214 <_realloc_r+0x48>
d05e21f4:	4621      	mov	r1, r4
d05e21f6:	4638      	mov	r0, r7
d05e21f8:	f7ff fa40 	bl	d05e167c <_malloc_r>
d05e21fc:	4605      	mov	r5, r0
d05e21fe:	2800      	cmp	r0, #0
d05e2200:	d0f2      	beq.n	d05e21e8 <_realloc_r+0x1c>
d05e2202:	4631      	mov	r1, r6
d05e2204:	4622      	mov	r2, r4
d05e2206:	f7fe fd55 	bl	d05e0cb4 <memcpy>
d05e220a:	4631      	mov	r1, r6
d05e220c:	4638      	mov	r0, r7
d05e220e:	f7ff f9e5 	bl	d05e15dc <_free_r>
d05e2212:	e7e9      	b.n	d05e21e8 <_realloc_r+0x1c>
d05e2214:	4635      	mov	r5, r6
d05e2216:	e7e7      	b.n	d05e21e8 <_realloc_r+0x1c>

d05e2218 <_read_r>:
d05e2218:	b538      	push	{r3, r4, r5, lr}
d05e221a:	4d07      	ldr	r5, [pc, #28]	; (d05e2238 <_read_r+0x20>)
d05e221c:	4604      	mov	r4, r0
d05e221e:	4608      	mov	r0, r1
d05e2220:	4611      	mov	r1, r2
d05e2222:	2200      	movs	r2, #0
d05e2224:	602a      	str	r2, [r5, #0]
d05e2226:	461a      	mov	r2, r3
d05e2228:	f7fd ff38 	bl	d05e009c <_read>
d05e222c:	1c43      	adds	r3, r0, #1
d05e222e:	d102      	bne.n	d05e2236 <_read_r+0x1e>
d05e2230:	682b      	ldr	r3, [r5, #0]
d05e2232:	b103      	cbz	r3, d05e2236 <_read_r+0x1e>
d05e2234:	6023      	str	r3, [r4, #0]
d05e2236:	bd38      	pop	{r3, r4, r5, pc}
d05e2238:	d05e3234 	.word	0xd05e3234

d05e223c <_malloc_usable_size_r>:
d05e223c:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05e2240:	1f18      	subs	r0, r3, #4
d05e2242:	2b00      	cmp	r3, #0
d05e2244:	bfbc      	itt	lt
d05e2246:	580b      	ldrlt	r3, [r1, r0]
d05e2248:	18c0      	addlt	r0, r0, r3
d05e224a:	4770      	bx	lr
d05e224c:	64616f4c 	.word	0x64616f4c
d05e2250:	73206465 	.word	0x73206465
d05e2254:	6c706d61 	.word	0x6c706d61
d05e2258:	65742065 	.word	0x65742065
d05e225c:	00007478 	.word	0x00007478
d05e2260:	74696445 	.word	0x74696445
d05e2264:	2e315620 	.word	0x2e315620
d05e2268:	73203a30 	.word	0x73203a30
d05e226c:	6c706d61 	.word	0x6c706d61
d05e2270:	6f642065 	.word	0x6f642065
d05e2274:	656d7563 	.word	0x656d7563
d05e2278:	6c20746e 	.word	0x6c20746e
d05e227c:	6564616f 	.word	0x6564616f
d05e2280:	00000064 	.word	0x00000064
d05e2284:	2077654e 	.word	0x2077654e
d05e2288:	75636f64 	.word	0x75636f64
d05e228c:	746e656d 	.word	0x746e656d
d05e2290:	00000000 	.word	0x00000000
d05e2294:	74696445 	.word	0x74696445
d05e2298:	2e315620 	.word	0x2e315620
d05e229c:	6e203a30 	.word	0x6e203a30
d05e22a0:	64207765 	.word	0x64207765
d05e22a4:	6d75636f 	.word	0x6d75636f
d05e22a8:	00746e65 	.word	0x00746e65
d05e22ac:	64616f4c 	.word	0x64616f4c
d05e22b0:	61696420 	.word	0x61696420
d05e22b4:	20676f6c 	.word	0x20676f6c
d05e22b8:	65726c61 	.word	0x65726c61
d05e22bc:	20796461 	.word	0x20796461
d05e22c0:	6e65706f 	.word	0x6e65706f
d05e22c4:	00000000 	.word	0x00000000
d05e22c8:	78742e2a 	.word	0x78742e2a
d05e22cc:	2e2a7c74 	.word	0x2e2a7c74
d05e22d0:	7c676f6c 	.word	0x7c676f6c
d05e22d4:	66632e2a 	.word	0x66632e2a
d05e22d8:	00000067 	.word	0x00000067
d05e22dc:	74696445 	.word	0x74696445
d05e22e0:	2e315620 	.word	0x2e315620
d05e22e4:	4c203a30 	.word	0x4c203a30
d05e22e8:	2064616f 	.word	0x2064616f
d05e22ec:	74786554 	.word	0x74786554
d05e22f0:	00000000 	.word	0x00000000
d05e22f4:	64616f4c 	.word	0x64616f4c
d05e22f8:	61696420 	.word	0x61696420
d05e22fc:	20676f6c 	.word	0x20676f6c
d05e2300:	6e65706f 	.word	0x6e65706f
d05e2304:	00006465 	.word	0x00006465
d05e2308:	65766153 	.word	0x65766153
d05e230c:	61696420 	.word	0x61696420
d05e2310:	20676f6c 	.word	0x20676f6c
d05e2314:	65726c61 	.word	0x65726c61
d05e2318:	20796461 	.word	0x20796461
d05e231c:	6e65706f 	.word	0x6e65706f
d05e2320:	00000000 	.word	0x00000000
d05e2324:	74696445 	.word	0x74696445
d05e2328:	2e315620 	.word	0x2e315620
d05e232c:	53203a30 	.word	0x53203a30
d05e2330:	20657661 	.word	0x20657661
d05e2334:	74786554 	.word	0x74786554
d05e2338:	00734120 	.word	0x00734120
d05e233c:	65766153 	.word	0x65766153
d05e2340:	61696420 	.word	0x61696420
d05e2344:	20676f6c 	.word	0x20676f6c
d05e2348:	6e65706f 	.word	0x6e65706f
d05e234c:	00006465 	.word	0x00006465
d05e2350:	7373654d 	.word	0x7373654d
d05e2354:	20656761 	.word	0x20656761
d05e2358:	20786f62 	.word	0x20786f62
d05e235c:	65726c61 	.word	0x65726c61
d05e2360:	20796461 	.word	0x20796461
d05e2364:	6e65706f 	.word	0x6e65706f
d05e2368:	00000000 	.word	0x00000000
d05e236c:	6b636950 	.word	0x6b636950
d05e2370:	62206120 	.word	0x62206120
d05e2374:	6f747475 	.word	0x6f747475
d05e2378:	6e61206e 	.word	0x6e61206e
d05e237c:	20492064 	.word	0x20492064
d05e2380:	6c6c6977 	.word	0x6c6c6977
d05e2384:	70657220 	.word	0x70657220
d05e2388:	2074726f 	.word	0x2074726f
d05e238c:	68207469 	.word	0x68207469
d05e2390:	2e657265 	.word	0x2e657265
d05e2394:	00000000 	.word	0x00000000
d05e2398:	7373654d 	.word	0x7373654d
d05e239c:	20656761 	.word	0x20656761
d05e23a0:	74736554 	.word	0x74736554
d05e23a4:	00000000 	.word	0x00000000
d05e23a8:	7373654d 	.word	0x7373654d
d05e23ac:	20656761 	.word	0x20656761
d05e23b0:	20786f62 	.word	0x20786f62
d05e23b4:	6e65706f 	.word	0x6e65706f
d05e23b8:	00006465 	.word	0x00006465
d05e23bc:	69646f4d 	.word	0x69646f4d
d05e23c0:	64656966 	.word	0x64656966
d05e23c4:	00000000 	.word	0x00000000
d05e23c8:	45444953 	.word	0x45444953
d05e23cc:	3a746964 	.word	0x3a746964
d05e23d0:	636f6420 	.word	0x636f6420
d05e23d4:	6e656d75 	.word	0x6e656d75
d05e23d8:	6f6d2074 	.word	0x6f6d2074
d05e23dc:	69666964 	.word	0x69666964
d05e23e0:	00006465 	.word	0x00006465
d05e23e4:	74696445 	.word	0x74696445
d05e23e8:	2e315620 	.word	0x2e315620
d05e23ec:	63203a30 	.word	0x63203a30
d05e23f0:	69736f6c 	.word	0x69736f6c
d05e23f4:	0000676e 	.word	0x0000676e
d05e23f8:	64616f4c 	.word	0x64616f4c
d05e23fc:	6e616320 	.word	0x6e616320
d05e2400:	6c6c6563 	.word	0x6c6c6563
d05e2404:	00006465 	.word	0x00006465
d05e2408:	64616f4c 	.word	0x64616f4c
d05e240c:	69616620 	.word	0x69616620
d05e2410:	3a64656c 	.word	0x3a64656c
d05e2414:	20524620 	.word	0x20524620
d05e2418:	00007525 	.word	0x00007525
d05e241c:	74696445 	.word	0x74696445
d05e2420:	2e315620 	.word	0x2e315620
d05e2424:	6c203a30 	.word	0x6c203a30
d05e2428:	2064616f 	.word	0x2064616f
d05e242c:	6c696166 	.word	0x6c696166
d05e2430:	25206465 	.word	0x25206465
d05e2434:	6f662075 	.word	0x6f662075
d05e2438:	73252072 	.word	0x73252072
d05e243c:	0000000a 	.word	0x0000000a
d05e2440:	64616552 	.word	0x64616552
d05e2444:	69616620 	.word	0x69616620
d05e2448:	3a64656c 	.word	0x3a64656c
d05e244c:	20524620 	.word	0x20524620
d05e2450:	00007525 	.word	0x00007525
d05e2454:	45444953 	.word	0x45444953
d05e2458:	3a746964 	.word	0x3a746964
d05e245c:	61657220 	.word	0x61657220
d05e2460:	61662064 	.word	0x61662064
d05e2464:	64656c69 	.word	0x64656c69
d05e2468:	20752520 	.word	0x20752520
d05e246c:	20726f66 	.word	0x20726f66
d05e2470:	000a7325 	.word	0x000a7325
d05e2474:	64616f4c 	.word	0x64616f4c
d05e2478:	203a6465 	.word	0x203a6465
d05e247c:	32372e25 	.word	0x32372e25
d05e2480:	00000073 	.word	0x00000073
d05e2484:	45444953 	.word	0x45444953
d05e2488:	3a746964 	.word	0x3a746964
d05e248c:	616f6c20 	.word	0x616f6c20
d05e2490:	20646564 	.word	0x20646564
d05e2494:	20756c25 	.word	0x20756c25
d05e2498:	65747962 	.word	0x65747962
d05e249c:	72662073 	.word	0x72662073
d05e24a0:	25206d6f 	.word	0x25206d6f
d05e24a4:	00000a73 	.word	0x00000a73
d05e24a8:	6e6b6e75 	.word	0x6e6b6e75
d05e24ac:	006e776f 	.word	0x006e776f
d05e24b0:	65766153 	.word	0x65766153
d05e24b4:	6e616320 	.word	0x6e616320
d05e24b8:	6c6c6563 	.word	0x6c6c6563
d05e24bc:	00006465 	.word	0x00006465
d05e24c0:	65766153 	.word	0x65766153
d05e24c4:	69616620 	.word	0x69616620
d05e24c8:	3a64656c 	.word	0x3a64656c
d05e24cc:	20524620 	.word	0x20524620
d05e24d0:	00007525 	.word	0x00007525
d05e24d4:	45444953 	.word	0x45444953
d05e24d8:	3a746964 	.word	0x3a746964
d05e24dc:	76617320 	.word	0x76617320
d05e24e0:	706f2065 	.word	0x706f2065
d05e24e4:	66206e65 	.word	0x66206e65
d05e24e8:	656c6961 	.word	0x656c6961
d05e24ec:	75252064 	.word	0x75252064
d05e24f0:	726f6620 	.word	0x726f6620
d05e24f4:	0a732520 	.word	0x0a732520
d05e24f8:	00000000 	.word	0x00000000
d05e24fc:	74697257 	.word	0x74697257
d05e2500:	61662065 	.word	0x61662065
d05e2504:	64656c69 	.word	0x64656c69
d05e2508:	5246203a 	.word	0x5246203a
d05e250c:	00752520 	.word	0x00752520
d05e2510:	45444953 	.word	0x45444953
d05e2514:	3a746964 	.word	0x3a746964
d05e2518:	69727720 	.word	0x69727720
d05e251c:	66206574 	.word	0x66206574
d05e2520:	656c6961 	.word	0x656c6961
d05e2524:	75252064 	.word	0x75252064
d05e2528:	726f6620 	.word	0x726f6620
d05e252c:	0a732520 	.word	0x0a732520
d05e2530:	00000000 	.word	0x00000000
d05e2534:	65766153 	.word	0x65766153
d05e2538:	636e6920 	.word	0x636e6920
d05e253c:	6c706d6f 	.word	0x6c706d6f
d05e2540:	00657465 	.word	0x00657465
d05e2544:	74696445 	.word	0x74696445
d05e2548:	2e315620 	.word	0x2e315620
d05e254c:	77203a30 	.word	0x77203a30
d05e2550:	65746f72 	.word	0x65746f72
d05e2554:	756c2520 	.word	0x756c2520
d05e2558:	20666f20 	.word	0x20666f20
d05e255c:	20756c25 	.word	0x20756c25
d05e2560:	65747962 	.word	0x65747962
d05e2564:	6f742073 	.word	0x6f742073
d05e2568:	0a732520 	.word	0x0a732520
d05e256c:	00000000 	.word	0x00000000
d05e2570:	65766153 	.word	0x65766153
d05e2574:	72742064 	.word	0x72742064
d05e2578:	61636e75 	.word	0x61636e75
d05e257c:	3a646574 	.word	0x3a646574
d05e2580:	362e2520 	.word	0x362e2520
d05e2584:	00007334 	.word	0x00007334
d05e2588:	65766153 	.word	0x65766153
d05e258c:	25203a64 	.word	0x25203a64
d05e2590:	7332372e 	.word	0x7332372e
d05e2594:	00000000 	.word	0x00000000
d05e2598:	74696445 	.word	0x74696445
d05e259c:	2e315620 	.word	0x2e315620
d05e25a0:	73203a30 	.word	0x73203a30
d05e25a4:	64657661 	.word	0x64657661
d05e25a8:	756c2520 	.word	0x756c2520
d05e25ac:	74796220 	.word	0x74796220
d05e25b0:	74207365 	.word	0x74207365
d05e25b4:	7325206f 	.word	0x7325206f
d05e25b8:	0000000a 	.word	0x0000000a
d05e25bc:	7373654d 	.word	0x7373654d
d05e25c0:	20656761 	.word	0x20656761
d05e25c4:	696f6863 	.word	0x696f6863
d05e25c8:	203a6563 	.word	0x203a6563
d05e25cc:	00007325 	.word	0x00007325
d05e25d0:	74696445 	.word	0x74696445
d05e25d4:	2e315620 	.word	0x2e315620
d05e25d8:	6d203a30 	.word	0x6d203a30
d05e25dc:	61737365 	.word	0x61737365
d05e25e0:	62206567 	.word	0x62206567
d05e25e4:	6320786f 	.word	0x6320786f
d05e25e8:	63696f68 	.word	0x63696f68
d05e25ec:	64252065 	.word	0x64252065
d05e25f0:	0000000a 	.word	0x0000000a
d05e25f4:	74696445 	.word	0x74696445
d05e25f8:	2e315620 	.word	0x2e315620
d05e25fc:	74732030 	.word	0x74732030
d05e2600:	69747261 	.word	0x69747261
d05e2604:	0000676e 	.word	0x0000676e
d05e2608:	74696445 	.word	0x74696445
d05e260c:	2e315620 	.word	0x2e315620
d05e2610:	00000030 	.word	0x00000030
d05e2614:	0077654e 	.word	0x0077654e
d05e2618:	64616f4c 	.word	0x64616f4c
d05e261c:	00000000 	.word	0x00000000
d05e2620:	706d6153 	.word	0x706d6153
d05e2624:	0000656c 	.word	0x0000656c
d05e2628:	65766153 	.word	0x65766153
d05e262c:	00000000 	.word	0x00000000
d05e2630:	736f6c43 	.word	0x736f6c43
d05e2634:	00000065 	.word	0x00000065
d05e2638:	64616552 	.word	0x64616552
d05e263c:	00000079 	.word	0x00000079
d05e2640:	74696445 	.word	0x74696445
d05e2644:	2e315620 	.word	0x2e315620
d05e2648:	61203a30 	.word	0x61203a30
d05e264c:	20766772 	.word	0x20766772
d05e2650:	656c6966 	.word	0x656c6966
d05e2654:	0a732520 	.word	0x0a732520
d05e2658:	00000000 	.word	0x00000000
d05e265c:	636e6143 	.word	0x636e6143
d05e2660:	00006c65 	.word	0x00006c65
d05e2664:	00004b4f 	.word	0x00004b4f
d05e2668:	00736559 	.word	0x00736559
d05e266c:	00006f4e 	.word	0x00006f4e

d05e2670 <CSWTCH.98>:
d05e2670:	d05e265c d05e2664 d05e2668 d05e266c     \&^.d&^.h&^.l&^.

d05e2680 <empty_document>:
d05e2680:	00000000                                ....

d05e2684 <sample_document>:
d05e2684:	74696445 72637320 68637461 0a646170     Edit scratchpad.
d05e2694:	6968540a 73692073 74206120 20796e69     .This is a tiny 
d05e26a4:	6c707061 74207465 20747865 74696465     applet text edit
d05e26b4:	7320726f 6c6c6568 68540a2e 65742065     or shell..The te
d05e26c4:	72617478 69206165 534f2073 6e776f2d     xtarea is OS-own
d05e26d4:	202c6465 74206f73 6e697079 64652f67     ed, so typing/ed
d05e26e4:	6e697469 61682067 6e657070 6e692073     iting happens in
d05e26f4:	65687420 49554720 64616720 2e746567      the GUI gadget.
d05e2704:	4e270a0a 20277765 20646e61 6d615327     ..'New' and 'Sam
d05e2714:	27656c70 62657220 646c6975 69687420     ple' rebuild thi
d05e2724:	65742073 61207478 2e616572 616f4c0a     s text area..Loa
d05e2734:	6f6e2064 73752077 74207365 53206568     d now uses the S
d05e2744:	6f424449 69662078 7220656c 65757165     IDBox file reque
d05e2754:	72657473 61530a2e 6e206576 7720776f     ster..Save now w
d05e2764:	65746972 68742073 75632065 6e657272     rites the curren
d05e2774:	65742074 72617478 63206165 65746e6f     t textarea conte
d05e2784:	2e73746e 0000000a                       nts.....

d05e278c <_global_impure_ptr>:
d05e278c:	d05e2938                                8)^.

d05e2790 <__sf_fake_stderr>:
	...

d05e27b0 <__sf_fake_stdin>:
	...

d05e27d0 <__sf_fake_stdout>:
	...
d05e27f0:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d05e2800:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d05e2810:	31300046 35343332 39383736 64636261     F.0123456789abcd
d05e2820:	                                         ef.

Disassembly of section .init:

d05e2824 <_init>:
d05e2824:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e2826:	bf00      	nop

Disassembly of section .fini:

d05e2828 <_fini>:
d05e2828:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e282a:	bf00      	nop
