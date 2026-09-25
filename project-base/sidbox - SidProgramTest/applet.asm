
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d03e0010 <applet_entry>:
d03e0010:	b570      	push	{r4, r5, r6, lr}
d03e0012:	4e09      	ldr	r6, [pc, #36]	; (d03e0038 <applet_entry+0x28>)
d03e0014:	460d      	mov	r5, r1
d03e0016:	4604      	mov	r4, r0
d03e0018:	2100      	movs	r1, #0
d03e001a:	6833      	ldr	r3, [r6, #0]
d03e001c:	6898      	ldr	r0, [r3, #8]
d03e001e:	f007 fdeb 	bl	d03e7bf8 <setbuf>
d03e0022:	6833      	ldr	r3, [r6, #0]
d03e0024:	2100      	movs	r1, #0
d03e0026:	68d8      	ldr	r0, [r3, #12]
d03e0028:	f007 fde6 	bl	d03e7bf8 <setbuf>
d03e002c:	4629      	mov	r1, r5
d03e002e:	4620      	mov	r0, r4
d03e0030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d03e0034:	f004 bcd8 	b.w	d03e49e8 <main>
d03e0038:	d03ea2bc 	.word	0xd03ea2bc

d03e003c <initMalloc>:
d03e003c:	4902      	ldr	r1, [pc, #8]	; (d03e0048 <initMalloc+0xc>)
d03e003e:	4b03      	ldr	r3, [pc, #12]	; (d03e004c <initMalloc+0x10>)
d03e0040:	4a03      	ldr	r2, [pc, #12]	; (d03e0050 <initMalloc+0x14>)
d03e0042:	1a5b      	subs	r3, r3, r1
d03e0044:	6013      	str	r3, [r2, #0]
d03e0046:	4770      	bx	lr
d03e0048:	d03ec9b0 	.word	0xd03ec9b0
d03e004c:	d0600000 	.word	0xd0600000
d03e0050:	d03ea810 	.word	0xd03ea810

d03e0054 <_write_r>:
d03e0054:	3901      	subs	r1, #1
d03e0056:	2901      	cmp	r1, #1
d03e0058:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e005a:	d81f      	bhi.n	d03e009c <_write_r+0x48>
d03e005c:	b1e2      	cbz	r2, d03e0098 <_write_r+0x44>
d03e005e:	461c      	mov	r4, r3
d03e0060:	b1d3      	cbz	r3, d03e0098 <_write_r+0x44>
d03e0062:	4d12      	ldr	r5, [pc, #72]	; (d03e00ac <_write_r+0x58>)
d03e0064:	682e      	ldr	r6, [r5, #0]
d03e0066:	b9ae      	cbnz	r6, d03e0094 <_write_r+0x40>
d03e0068:	4f11      	ldr	r7, [pc, #68]	; (d03e00b0 <_write_r+0x5c>)
d03e006a:	2301      	movs	r3, #1
d03e006c:	4611      	mov	r1, r2
d03e006e:	4630      	mov	r0, r6
d03e0070:	602b      	str	r3, [r5, #0]
d03e0072:	4622      	mov	r2, r4
d03e0074:	7a3b      	ldrb	r3, [r7, #8]
d03e0076:	f897 c009 	ldrb.w	ip, [r7, #9]
d03e007a:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d03e007e:	f897 c00a 	ldrb.w	ip, [r7, #10]
d03e0082:	7aff      	ldrb	r7, [r7, #11]
d03e0084:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d03e0088:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d03e008c:	681b      	ldr	r3, [r3, #0]
d03e008e:	685b      	ldr	r3, [r3, #4]
d03e0090:	4798      	blx	r3
d03e0092:	602e      	str	r6, [r5, #0]
d03e0094:	4620      	mov	r0, r4
d03e0096:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e0098:	2000      	movs	r0, #0
d03e009a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e009c:	f007 fcde 	bl	d03e7a5c <__errno>
d03e00a0:	2209      	movs	r2, #9
d03e00a2:	4603      	mov	r3, r0
d03e00a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e00a8:	601a      	str	r2, [r3, #0]
d03e00aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e00ac:	d03ea324 	.word	0xd03ea324
d03e00b0:	2001f000 	.word	0x2001f000

d03e00b4 <_read>:
d03e00b4:	b508      	push	{r3, lr}
d03e00b6:	f007 fcd1 	bl	d03e7a5c <__errno>
d03e00ba:	2258      	movs	r2, #88	; 0x58
d03e00bc:	4603      	mov	r3, r0
d03e00be:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e00c2:	601a      	str	r2, [r3, #0]
d03e00c4:	bd08      	pop	{r3, pc}
d03e00c6:	bf00      	nop

d03e00c8 <_close>:
d03e00c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e00cc:	4770      	bx	lr
d03e00ce:	bf00      	nop

d03e00d0 <_fstat>:
d03e00d0:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d03e00d4:	2000      	movs	r0, #0
d03e00d6:	604b      	str	r3, [r1, #4]
d03e00d8:	4770      	bx	lr
d03e00da:	bf00      	nop

d03e00dc <_lseek>:
d03e00dc:	2000      	movs	r0, #0
d03e00de:	4770      	bx	lr

d03e00e0 <_sbrk_r>:
d03e00e0:	4b0c      	ldr	r3, [pc, #48]	; (d03e0114 <_sbrk_r+0x34>)
d03e00e2:	4a0d      	ldr	r2, [pc, #52]	; (d03e0118 <_sbrk_r+0x38>)
d03e00e4:	6818      	ldr	r0, [r3, #0]
d03e00e6:	b510      	push	{r4, lr}
d03e00e8:	b918      	cbnz	r0, d03e00f2 <_sbrk_r+0x12>
d03e00ea:	1dd0      	adds	r0, r2, #7
d03e00ec:	f020 0007 	bic.w	r0, r0, #7
d03e00f0:	6018      	str	r0, [r3, #0]
d03e00f2:	4401      	add	r1, r0
d03e00f4:	4c09      	ldr	r4, [pc, #36]	; (d03e011c <_sbrk_r+0x3c>)
d03e00f6:	42a1      	cmp	r1, r4
d03e00f8:	d803      	bhi.n	d03e0102 <_sbrk_r+0x22>
d03e00fa:	4291      	cmp	r1, r2
d03e00fc:	d301      	bcc.n	d03e0102 <_sbrk_r+0x22>
d03e00fe:	6019      	str	r1, [r3, #0]
d03e0100:	bd10      	pop	{r4, pc}
d03e0102:	f007 fcab 	bl	d03e7a5c <__errno>
d03e0106:	220c      	movs	r2, #12
d03e0108:	4603      	mov	r3, r0
d03e010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e010e:	601a      	str	r2, [r3, #0]
d03e0110:	bd10      	pop	{r4, pc}
d03e0112:	bf00      	nop
d03e0114:	d03ea320 	.word	0xd03ea320
d03e0118:	d03ec9b0 	.word	0xd03ec9b0
d03e011c:	d0600000 	.word	0xd0600000

d03e0120 <sid_midi_trigger_percussion>:
d03e0120:	b902      	cbnz	r2, d03e0124 <sid_midi_trigger_percussion+0x4>
d03e0122:	4770      	bx	lr
d03e0124:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e0128:	b082      	sub	sp, #8
d03e012a:	460d      	mov	r5, r1
d03e012c:	4616      	mov	r6, r2
d03e012e:	4604      	mov	r4, r0
d03e0130:	f10d 0106 	add.w	r1, sp, #6
d03e0134:	f10d 0207 	add.w	r2, sp, #7
d03e0138:	f000 fa90 	bl	d03e065c <get_voice_target>
d03e013c:	f1a5 0123 	sub.w	r1, r5, #35	; 0x23
d03e0140:	b2c9      	uxtb	r1, r1
d03e0142:	290f      	cmp	r1, #15
d03e0144:	d861      	bhi.n	d03e020a <sid_midi_trigger_percussion+0xea>
d03e0146:	4b32      	ldr	r3, [pc, #200]	; (d03e0210 <sid_midi_trigger_percussion+0xf0>)
d03e0148:	f853 7021 	ldr.w	r7, [r3, r1, lsl #2]
d03e014c:	4d31      	ldr	r5, [pc, #196]	; (d03e0214 <sid_midi_trigger_percussion+0xf4>)
d03e014e:	4932      	ldr	r1, [pc, #200]	; (d03e0218 <sid_midi_trigger_percussion+0xf8>)
d03e0150:	7d2b      	ldrb	r3, [r5, #20]
d03e0152:	7d68      	ldrb	r0, [r5, #21]
d03e0154:	7daa      	ldrb	r2, [r5, #22]
d03e0156:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03e015a:	f895 c017 	ldrb.w	ip, [r5, #23]
d03e015e:	f8b1 801c 	ldrh.w	r8, [r1, #28]
d03e0162:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0166:	f89d 1007 	ldrb.w	r1, [sp, #7]
d03e016a:	fa5f f288 	uxtb.w	r2, r8
d03e016e:	f89d 0006 	ldrb.w	r0, [sp, #6]
d03e0172:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d03e0176:	681b      	ldr	r3, [r3, #0]
d03e0178:	69db      	ldr	r3, [r3, #28]
d03e017a:	4798      	blx	r3
d03e017c:	7d2b      	ldrb	r3, [r5, #20]
d03e017e:	7d69      	ldrb	r1, [r5, #21]
d03e0180:	ea4f 2218 	mov.w	r2, r8, lsr #8
d03e0184:	7da8      	ldrb	r0, [r5, #22]
d03e0186:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03e018a:	7ded      	ldrb	r5, [r5, #23]
d03e018c:	f89d 1007 	ldrb.w	r1, [sp, #7]
d03e0190:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e0194:	f89d 0006 	ldrb.w	r0, [sp, #6]
d03e0198:	3101      	adds	r1, #1
d03e019a:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d03e019e:	2501      	movs	r5, #1
d03e01a0:	b2c9      	uxtb	r1, r1
d03e01a2:	681b      	ldr	r3, [r3, #0]
d03e01a4:	69db      	ldr	r3, [r3, #28]
d03e01a6:	4798      	blx	r3
d03e01a8:	4b1c      	ldr	r3, [pc, #112]	; (d03e021c <sid_midi_trigger_percussion+0xfc>)
d03e01aa:	ebc4 00c4 	rsb	r0, r4, r4, lsl #3
d03e01ae:	2200      	movs	r2, #0
d03e01b0:	f103 0408 	add.w	r4, r3, #8
d03e01b4:	f103 0820 	add.w	r8, r3, #32
d03e01b8:	00c1      	lsls	r1, r0, #3
d03e01ba:	f103 0c30 	add.w	ip, r3, #48	; 0x30
d03e01be:	eb03 00c0 	add.w	r0, r3, r0, lsl #3
d03e01c2:	f04f 0e0e 	mov.w	lr, #14
d03e01c6:	50cf      	str	r7, [r1, r3]
d03e01c8:	440c      	add	r4, r1
d03e01ca:	6047      	str	r7, [r0, #4]
d03e01cc:	3304      	adds	r3, #4
d03e01ce:	7306      	strb	r6, [r0, #12]
d03e01d0:	f04f 7780 	mov.w	r7, #16777216	; 0x1000000
d03e01d4:	f101 0630 	add.w	r6, r1, #48	; 0x30
d03e01d8:	f880 e00b 	strb.w	lr, [r0, #11]
d03e01dc:	7342      	strb	r2, [r0, #13]
d03e01de:	80e2      	strh	r2, [r4, #6]
d03e01e0:	7402      	strb	r2, [r0, #16]
d03e01e2:	8102      	strh	r2, [r0, #8]
d03e01e4:	85c2      	strh	r2, [r0, #46]	; 0x2e
d03e01e6:	8245      	strh	r5, [r0, #18]
d03e01e8:	f848 2001 	str.w	r2, [r8, r1]
d03e01ec:	8482      	strh	r2, [r0, #36]	; 0x24
d03e01ee:	f880 2028 	strb.w	r2, [r0, #40]	; 0x28
d03e01f2:	7502      	strb	r2, [r0, #20]
d03e01f4:	82c2      	strh	r2, [r0, #22]
d03e01f6:	8302      	strh	r2, [r0, #24]
d03e01f8:	8342      	strh	r2, [r0, #26]
d03e01fa:	8382      	strh	r2, [r0, #28]
d03e01fc:	f84c 7001 	str.w	r7, [ip, r1]
d03e0200:	50f2      	str	r2, [r6, r3]
d03e0202:	7285      	strb	r5, [r0, #10]
d03e0204:	b002      	add	sp, #8
d03e0206:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03e020a:	4f05      	ldr	r7, [pc, #20]	; (d03e0220 <sid_midi_trigger_percussion+0x100>)
d03e020c:	e79e      	b.n	d03e014c <sid_midi_trigger_percussion+0x2c>
d03e020e:	bf00      	nop
d03e0210:	d03e8a04 	.word	0xd03e8a04
d03e0214:	2001f000 	.word	0x2001f000
d03e0218:	d03e8f8c 	.word	0xd03e8f8c
d03e021c:	d03ea814 	.word	0xd03ea814
d03e0220:	d03e8a44 	.word	0xd03e8a44

d03e0224 <sid_voice_write_scaled_sr>:
d03e0224:	b4f0      	push	{r4, r5, r6, r7}
d03e0226:	4606      	mov	r6, r0
d03e0228:	4f23      	ldr	r7, [pc, #140]	; (d03e02b8 <sid_voice_write_scaled_sr+0x94>)
d03e022a:	4608      	mov	r0, r1
d03e022c:	7b75      	ldrb	r5, [r6, #13]
d03e022e:	7b33      	ldrb	r3, [r6, #12]
d03e0230:	092c      	lsrs	r4, r5, #4
d03e0232:	f005 050f 	and.w	r5, r5, #15
d03e0236:	fb14 f403 	smulbb	r4, r4, r3
d03e023a:	343f      	adds	r4, #63	; 0x3f
d03e023c:	fba7 7104 	umull	r7, r1, r7, r4
d03e0240:	1a64      	subs	r4, r4, r1
d03e0242:	eb01 0154 	add.w	r1, r1, r4, lsr #1
d03e0246:	f411 5f7f 	tst.w	r1, #16320	; 0x3fc0
d03e024a:	f3c1 1487 	ubfx	r4, r1, #6, #8
d03e024e:	d12b      	bne.n	d03e02a8 <sid_voice_write_scaled_sr+0x84>
d03e0250:	b353      	cbz	r3, d03e02a8 <sid_voice_write_scaled_sr+0x84>
d03e0252:	2410      	movs	r4, #16
d03e0254:	f896 7037 	ldrb.w	r7, [r6, #55]	; 0x37
d03e0258:	f3c4 1303 	ubfx	r3, r4, #4, #4
d03e025c:	f896 1034 	ldrb.w	r1, [r6, #52]	; 0x34
d03e0260:	b13f      	cbz	r7, d03e0272 <sid_voice_write_scaled_sr+0x4e>
d03e0262:	b131      	cbz	r1, d03e0272 <sid_voice_write_scaled_sr+0x4e>
d03e0264:	4299      	cmp	r1, r3
d03e0266:	d225      	bcs.n	d03e02b4 <sid_voice_write_scaled_sr+0x90>
d03e0268:	1a5b      	subs	r3, r3, r1
d03e026a:	f343 0303 	sbfx	r3, r3, #0, #4
d03e026e:	011b      	lsls	r3, r3, #4
d03e0270:	e001      	b.n	d03e0276 <sid_voice_write_scaled_sr+0x52>
d03e0272:	011b      	lsls	r3, r3, #4
d03e0274:	b25b      	sxtb	r3, r3
d03e0276:	1d91      	adds	r1, r2, #6
d03e0278:	432b      	orrs	r3, r5
d03e027a:	2801      	cmp	r0, #1
d03e027c:	b2da      	uxtb	r2, r3
d03e027e:	b2c9      	uxtb	r1, r1
d03e0280:	d803      	bhi.n	d03e028a <sid_voice_write_scaled_sr+0x66>
d03e0282:	4b0e      	ldr	r3, [pc, #56]	; (d03e02bc <sid_voice_write_scaled_sr+0x98>)
d03e0284:	eb03 1340 	add.w	r3, r3, r0, lsl #5
d03e0288:	545a      	strb	r2, [r3, r1]
d03e028a:	4c0d      	ldr	r4, [pc, #52]	; (d03e02c0 <sid_voice_write_scaled_sr+0x9c>)
d03e028c:	7d23      	ldrb	r3, [r4, #20]
d03e028e:	7d66      	ldrb	r6, [r4, #21]
d03e0290:	7da5      	ldrb	r5, [r4, #22]
d03e0292:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d03e0296:	7de4      	ldrb	r4, [r4, #23]
d03e0298:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d03e029c:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03e02a0:	681b      	ldr	r3, [r3, #0]
d03e02a2:	bcf0      	pop	{r4, r5, r6, r7}
d03e02a4:	69db      	ldr	r3, [r3, #28]
d03e02a6:	4718      	bx	r3
d03e02a8:	2c0f      	cmp	r4, #15
d03e02aa:	bf28      	it	cs
d03e02ac:	240f      	movcs	r4, #15
d03e02ae:	0124      	lsls	r4, r4, #4
d03e02b0:	b264      	sxtb	r4, r4
d03e02b2:	e7cf      	b.n	d03e0254 <sid_voice_write_scaled_sr+0x30>
d03e02b4:	2300      	movs	r3, #0
d03e02b6:	e7de      	b.n	d03e0276 <sid_voice_write_scaled_sr+0x52>
d03e02b8:	02040811 	.word	0x02040811
d03e02bc:	d03ea328 	.word	0xd03ea328
d03e02c0:	2001f000 	.word	0x2001f000

d03e02c4 <sid_voice_apply_note_offset>:
d03e02c4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e02c8:	f9b0 4020 	ldrsh.w	r4, [r0, #32]
d03e02cc:	460e      	mov	r6, r1
d03e02ce:	4615      	mov	r5, r2
d03e02d0:	7ac1      	ldrb	r1, [r0, #11]
d03e02d2:	2c00      	cmp	r4, #0
d03e02d4:	f880 3022 	strb.w	r3, [r0, #34]	; 0x22
d03e02d8:	eb04 0444 	add.w	r4, r4, r4, lsl #1
d03e02dc:	db6d      	blt.n	d03e03ba <sid_voice_apply_note_offset+0xf6>
d03e02de:	03e4      	lsls	r4, r4, #15
d03e02e0:	4a47      	ldr	r2, [pc, #284]	; (d03e0400 <sid_voice_apply_note_offset+0x13c>)
d03e02e2:	fba2 7204 	umull	r7, r2, r2, r4
d03e02e6:	1aa4      	subs	r4, r4, r2
d03e02e8:	eb02 0454 	add.w	r4, r2, r4, lsr #1
d03e02ec:	0e67      	lsrs	r7, r4, #25
d03e02ee:	f3c4 340c 	ubfx	r4, r4, #12, #13
d03e02f2:	440b      	add	r3, r1
d03e02f4:	19db      	adds	r3, r3, r7
d03e02f6:	d45a      	bmi.n	d03e03ae <sid_voice_apply_note_offset+0xea>
d03e02f8:	2b7e      	cmp	r3, #126	; 0x7e
d03e02fa:	dd31      	ble.n	d03e0360 <sid_voice_apply_note_offset+0x9c>
d03e02fc:	22ff      	movs	r2, #255	; 0xff
d03e02fe:	f64f 73ff 	movw	r3, #65535	; 0xffff
d03e0302:	4690      	mov	r8, r2
d03e0304:	2e01      	cmp	r6, #1
d03e0306:	4f3f      	ldr	r7, [pc, #252]	; (d03e0404 <sid_voice_apply_note_offset+0x140>)
d03e0308:	83c3      	strh	r3, [r0, #30]
d03e030a:	d83e      	bhi.n	d03e038a <sid_voice_apply_note_offset+0xc6>
d03e030c:	7d3b      	ldrb	r3, [r7, #20]
d03e030e:	4629      	mov	r1, r5
d03e0310:	7d78      	ldrb	r0, [r7, #21]
d03e0312:	f897 c016 	ldrb.w	ip, [r7, #22]
d03e0316:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03e031a:	4c3b      	ldr	r4, [pc, #236]	; (d03e0408 <sid_voice_apply_note_offset+0x144>)
d03e031c:	4630      	mov	r0, r6
d03e031e:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d03e0322:	f897 c017 	ldrb.w	ip, [r7, #23]
d03e0326:	eb04 1446 	add.w	r4, r4, r6, lsl #5
d03e032a:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d03e032e:	5562      	strb	r2, [r4, r5]
d03e0330:	681b      	ldr	r3, [r3, #0]
d03e0332:	69db      	ldr	r3, [r3, #28]
d03e0334:	4798      	blx	r3
d03e0336:	1c69      	adds	r1, r5, #1
d03e0338:	b2c9      	uxtb	r1, r1
d03e033a:	f804 8001 	strb.w	r8, [r4, r1]
d03e033e:	7d3b      	ldrb	r3, [r7, #20]
d03e0340:	4642      	mov	r2, r8
d03e0342:	7d7c      	ldrb	r4, [r7, #21]
d03e0344:	4630      	mov	r0, r6
d03e0346:	7dbd      	ldrb	r5, [r7, #22]
d03e0348:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d03e034c:	7dfc      	ldrb	r4, [r7, #23]
d03e034e:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d03e0352:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03e0356:	681b      	ldr	r3, [r3, #0]
d03e0358:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d03e035c:	69db      	ldr	r3, [r3, #28]
d03e035e:	4718      	bx	r3
d03e0360:	492a      	ldr	r1, [pc, #168]	; (d03e040c <sid_voice_apply_note_offset+0x148>)
d03e0362:	1c5f      	adds	r7, r3, #1
d03e0364:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
d03e0368:	f831 3017 	ldrh.w	r3, [r1, r7, lsl #1]
d03e036c:	1a9b      	subs	r3, r3, r2
d03e036e:	fb04 f403 	mul.w	r4, r4, r3
d03e0372:	2c00      	cmp	r4, #0
d03e0374:	db3a      	blt.n	d03e03ec <sid_voice_apply_note_offset+0x128>
d03e0376:	eb02 3464 	add.w	r4, r2, r4, asr #13
d03e037a:	b2a3      	uxth	r3, r4
d03e037c:	f3c4 2807 	ubfx	r8, r4, #8, #8
d03e0380:	b2e2      	uxtb	r2, r4
d03e0382:	2e01      	cmp	r6, #1
d03e0384:	4f1f      	ldr	r7, [pc, #124]	; (d03e0404 <sid_voice_apply_note_offset+0x140>)
d03e0386:	83c3      	strh	r3, [r0, #30]
d03e0388:	d9c0      	bls.n	d03e030c <sid_voice_apply_note_offset+0x48>
d03e038a:	7d3b      	ldrb	r3, [r7, #20]
d03e038c:	4629      	mov	r1, r5
d03e038e:	7d7c      	ldrb	r4, [r7, #21]
d03e0390:	4630      	mov	r0, r6
d03e0392:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d03e0396:	7dbc      	ldrb	r4, [r7, #22]
d03e0398:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d03e039c:	7dfc      	ldrb	r4, [r7, #23]
d03e039e:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03e03a2:	681b      	ldr	r3, [r3, #0]
d03e03a4:	69db      	ldr	r3, [r3, #28]
d03e03a6:	4798      	blx	r3
d03e03a8:	1c69      	adds	r1, r5, #1
d03e03aa:	b2c9      	uxtb	r1, r1
d03e03ac:	e7c7      	b.n	d03e033e <sid_voice_apply_note_offset+0x7a>
d03e03ae:	f04f 0801 	mov.w	r8, #1
d03e03b2:	2211      	movs	r2, #17
d03e03b4:	f240 1311 	movw	r3, #273	; 0x111
d03e03b8:	e7a4      	b.n	d03e0304 <sid_voice_apply_note_offset+0x40>
d03e03ba:	00a4      	lsls	r4, r4, #2
d03e03bc:	2c00      	cmp	r4, #0
d03e03be:	4627      	mov	r7, r4
d03e03c0:	da02      	bge.n	d03e03c8 <sid_voice_apply_note_offset+0x104>
d03e03c2:	f641 77ff 	movw	r7, #8191	; 0x1fff
d03e03c6:	4427      	add	r7, r4
d03e03c8:	f1d4 0c00 	rsbs	ip, r4, #0
d03e03cc:	f3c4 020c 	ubfx	r2, r4, #0, #13
d03e03d0:	ea4f 3767 	mov.w	r7, r7, asr #13
d03e03d4:	4614      	mov	r4, r2
d03e03d6:	f3cc 0c0c 	ubfx	ip, ip, #0, #13
d03e03da:	bf58      	it	pl
d03e03dc:	f1cc 0200 	rsbpl	r2, ip, #0
d03e03e0:	2c00      	cmp	r4, #0
d03e03e2:	d086      	beq.n	d03e02f2 <sid_voice_apply_note_offset+0x2e>
d03e03e4:	f502 5400 	add.w	r4, r2, #8192	; 0x2000
d03e03e8:	3f01      	subs	r7, #1
d03e03ea:	e782      	b.n	d03e02f2 <sid_voice_apply_note_offset+0x2e>
d03e03ec:	f504 54ff 	add.w	r4, r4, #8160	; 0x1fe0
d03e03f0:	341f      	adds	r4, #31
d03e03f2:	eb02 3464 	add.w	r4, r2, r4, asr #13
d03e03f6:	b2a3      	uxth	r3, r4
d03e03f8:	f3c4 2807 	ubfx	r8, r4, #8, #8
d03e03fc:	b2e2      	uxtb	r2, r4
d03e03fe:	e7c0      	b.n	d03e0382 <sid_voice_apply_note_offset+0xbe>
d03e0400:	00080041 	.word	0x00080041
d03e0404:	2001f000 	.word	0x2001f000
d03e0408:	d03ea328 	.word	0xd03ea328
d03e040c:	d03e8f8c 	.word	0xd03e8f8c

d03e0410 <sid_voice_hard_silence>:
d03e0410:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e0414:	2801      	cmp	r0, #1
d03e0416:	460d      	mov	r5, r1
d03e0418:	f101 0104 	add.w	r1, r1, #4
d03e041c:	4606      	mov	r6, r0
d03e041e:	4c33      	ldr	r4, [pc, #204]	; (d03e04ec <sid_voice_hard_silence+0xdc>)
d03e0420:	f04f 0208 	mov.w	r2, #8
d03e0424:	b2c9      	uxtb	r1, r1
d03e0426:	d83f      	bhi.n	d03e04a8 <sid_voice_hard_silence+0x98>
d03e0428:	7d23      	ldrb	r3, [r4, #20]
d03e042a:	f04f 0800 	mov.w	r8, #0
d03e042e:	f894 c015 	ldrb.w	ip, [r4, #21]
d03e0432:	4f2f      	ldr	r7, [pc, #188]	; (d03e04f0 <sid_voice_hard_silence+0xe0>)
d03e0434:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d03e0438:	f894 c016 	ldrb.w	ip, [r4, #22]
d03e043c:	eb07 1740 	add.w	r7, r7, r0, lsl #5
d03e0440:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d03e0444:	f894 c017 	ldrb.w	ip, [r4, #23]
d03e0448:	547a      	strb	r2, [r7, r1]
d03e044a:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d03e044e:	681b      	ldr	r3, [r3, #0]
d03e0450:	69db      	ldr	r3, [r3, #28]
d03e0452:	4798      	blx	r3
d03e0454:	7d23      	ldrb	r3, [r4, #20]
d03e0456:	f894 c015 	ldrb.w	ip, [r4, #21]
d03e045a:	1d69      	adds	r1, r5, #5
d03e045c:	7da0      	ldrb	r0, [r4, #22]
d03e045e:	4642      	mov	r2, r8
d03e0460:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d03e0464:	f894 c017 	ldrb.w	ip, [r4, #23]
d03e0468:	b2c9      	uxtb	r1, r1
d03e046a:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e046e:	4630      	mov	r0, r6
d03e0470:	f807 8001 	strb.w	r8, [r7, r1]
d03e0474:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d03e0478:	681b      	ldr	r3, [r3, #0]
d03e047a:	69db      	ldr	r3, [r3, #28]
d03e047c:	4798      	blx	r3
d03e047e:	1da9      	adds	r1, r5, #6
d03e0480:	b2c9      	uxtb	r1, r1
d03e0482:	f807 8001 	strb.w	r8, [r7, r1]
d03e0486:	7d23      	ldrb	r3, [r4, #20]
d03e0488:	4630      	mov	r0, r6
d03e048a:	7d62      	ldrb	r2, [r4, #21]
d03e048c:	7da5      	ldrb	r5, [r4, #22]
d03e048e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0492:	7de4      	ldrb	r4, [r4, #23]
d03e0494:	2200      	movs	r2, #0
d03e0496:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d03e049a:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03e049e:	681b      	ldr	r3, [r3, #0]
d03e04a0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d03e04a4:	69db      	ldr	r3, [r3, #28]
d03e04a6:	4718      	bx	r3
d03e04a8:	7d23      	ldrb	r3, [r4, #20]
d03e04aa:	7d67      	ldrb	r7, [r4, #21]
d03e04ac:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d03e04b0:	7da7      	ldrb	r7, [r4, #22]
d03e04b2:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d03e04b6:	7de7      	ldrb	r7, [r4, #23]
d03e04b8:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d03e04bc:	681b      	ldr	r3, [r3, #0]
d03e04be:	69db      	ldr	r3, [r3, #28]
d03e04c0:	4798      	blx	r3
d03e04c2:	7d23      	ldrb	r3, [r4, #20]
d03e04c4:	7d67      	ldrb	r7, [r4, #21]
d03e04c6:	1d69      	adds	r1, r5, #5
d03e04c8:	7da0      	ldrb	r0, [r4, #22]
d03e04ca:	2200      	movs	r2, #0
d03e04cc:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d03e04d0:	7de7      	ldrb	r7, [r4, #23]
d03e04d2:	b2c9      	uxtb	r1, r1
d03e04d4:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e04d8:	4630      	mov	r0, r6
d03e04da:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d03e04de:	681b      	ldr	r3, [r3, #0]
d03e04e0:	69db      	ldr	r3, [r3, #28]
d03e04e2:	4798      	blx	r3
d03e04e4:	1da9      	adds	r1, r5, #6
d03e04e6:	b2c9      	uxtb	r1, r1
d03e04e8:	e7cd      	b.n	d03e0486 <sid_voice_hard_silence+0x76>
d03e04ea:	bf00      	nop
d03e04ec:	2001f000 	.word	0x2001f000
d03e04f0:	d03ea328 	.word	0xd03ea328

d03e04f4 <sid_voice_set_program.part.0>:
d03e04f4:	4b52      	ldr	r3, [pc, #328]	; (d03e0640 <sid_voice_set_program.part.0+0x14c>)
d03e04f6:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03e04fa:	f853 5021 	ldr.w	r5, [r3, r1, lsl #2]
d03e04fe:	b082      	sub	sp, #8
d03e0500:	2d00      	cmp	r5, #0
d03e0502:	f000 8091 	beq.w	d03e0628 <sid_voice_set_program.part.0+0x134>
d03e0506:	ebc0 01c0 	rsb	r1, r0, r0, lsl #3
d03e050a:	f8df c144 	ldr.w	ip, [pc, #324]	; d03e0650 <sid_voice_set_program.part.0+0x15c>
d03e050e:	4607      	mov	r7, r0
d03e0510:	2000      	movs	r0, #0
d03e0512:	eb0c 03c1 	add.w	r3, ip, r1, lsl #3
d03e0516:	f84c 5031 	str.w	r5, [ip, r1, lsl #3]
d03e051a:	ea4f 0ec7 	mov.w	lr, r7, lsl #3
d03e051e:	4601      	mov	r1, r0
d03e0520:	605d      	str	r5, [r3, #4]
d03e0522:	72da      	strb	r2, [r3, #11]
d03e0524:	7358      	strb	r0, [r3, #13]
d03e0526:	7398      	strb	r0, [r3, #14]
d03e0528:	e002      	b.n	d03e0530 <sid_voice_set_program.part.0+0x3c>
d03e052a:	2960      	cmp	r1, #96	; 0x60
d03e052c:	f000 8086 	beq.w	d03e063c <sid_voice_set_program.part.0+0x148>
d03e0530:	f815 3021 	ldrb.w	r3, [r5, r1, lsl #2]
d03e0534:	3101      	adds	r1, #1
d03e0536:	2b0f      	cmp	r3, #15
d03e0538:	d07e      	beq.n	d03e0638 <sid_voice_set_program.part.0+0x144>
d03e053a:	f1a3 0413 	sub.w	r4, r3, #19
d03e053e:	fab4 f484 	clz	r4, r4
d03e0542:	0964      	lsrs	r4, r4, #5
d03e0544:	2c00      	cmp	r4, #0
d03e0546:	d177      	bne.n	d03e0638 <sid_voice_set_program.part.0+0x144>
d03e0548:	2b00      	cmp	r3, #0
d03e054a:	d1ee      	bne.n	d03e052a <sid_voice_set_program.part.0+0x36>
d03e054c:	483d      	ldr	r0, [pc, #244]	; (d03e0644 <sid_voice_set_program.part.0+0x150>)
d03e054e:	ebae 0507 	sub.w	r5, lr, r7
d03e0552:	f8df 8100 	ldr.w	r8, [pc, #256]	; d03e0654 <sid_voice_set_program.part.0+0x160>
d03e0556:	2600      	movs	r6, #0
d03e0558:	fba0 1007 	umull	r1, r0, r0, r7
d03e055c:	00e9      	lsls	r1, r5, #3
d03e055e:	eb0c 05c5 	add.w	r5, ip, r5, lsl #3
d03e0562:	f44f 3980 	mov.w	r9, #65536	; 0x10000
d03e0566:	f000 04fe 	and.w	r4, r0, #254	; 0xfe
d03e056a:	f04f 7a80 	mov.w	sl, #16777216	; 0x1000000
d03e056e:	73eb      	strb	r3, [r5, #15]
d03e0570:	f108 0310 	add.w	r3, r8, #16
d03e0574:	eb04 0450 	add.w	r4, r4, r0, lsr #1
d03e0578:	812e      	strh	r6, [r5, #8]
d03e057a:	f848 9001 	str.w	r9, [r8, r1]
d03e057e:	f108 0920 	add.w	r9, r8, #32
d03e0582:	752e      	strb	r6, [r5, #20]
d03e0584:	1b3c      	subs	r4, r7, r4
d03e0586:	82ee      	strh	r6, [r5, #22]
d03e0588:	f1a8 080c 	sub.w	r8, r8, #12
d03e058c:	832e      	strh	r6, [r5, #24]
d03e058e:	ebc4 04c4 	rsb	r4, r4, r4, lsl #3
d03e0592:	836e      	strh	r6, [r5, #26]
d03e0594:	0840      	lsrs	r0, r0, #1
d03e0596:	83ae      	strh	r6, [r5, #28]
d03e0598:	b2e4      	uxtb	r4, r4
d03e059a:	505e      	str	r6, [r3, r1]
d03e059c:	f101 0330 	add.w	r3, r1, #48	; 0x30
d03e05a0:	84ae      	strh	r6, [r5, #36]	; 0x24
d03e05a2:	85ee      	strh	r6, [r5, #46]	; 0x2e
d03e05a4:	f885 6028 	strb.w	r6, [r5, #40]	; 0x28
d03e05a8:	f849 a001 	str.w	sl, [r9, r1]
d03e05ac:	f843 6008 	str.w	r6, [r3, r8]
d03e05b0:	0613      	lsls	r3, r2, #24
d03e05b2:	d43c      	bmi.n	d03e062e <sid_voice_set_program.part.0+0x13a>
d03e05b4:	4b24      	ldr	r3, [pc, #144]	; (d03e0648 <sid_voice_set_program.part.0+0x154>)
d03e05b6:	f833 1012 	ldrh.w	r1, [r3, r2, lsl #1]
d03e05ba:	b2ca      	uxtb	r2, r1
d03e05bc:	0a0e      	lsrs	r6, r1, #8
d03e05be:	4d23      	ldr	r5, [pc, #140]	; (d03e064c <sid_voice_set_program.part.0+0x158>)
d03e05c0:	ebae 0707 	sub.w	r7, lr, r7
d03e05c4:	f8df 8090 	ldr.w	r8, [pc, #144]	; d03e0658 <sid_voice_set_program.part.0+0x164>
d03e05c8:	7d2b      	ldrb	r3, [r5, #20]
d03e05ca:	eb0c 07c7 	add.w	r7, ip, r7, lsl #3
d03e05ce:	f895 c015 	ldrb.w	ip, [r5, #21]
d03e05d2:	eb08 1840 	add.w	r8, r8, r0, lsl #5
d03e05d6:	83f9      	strh	r1, [r7, #30]
d03e05d8:	4621      	mov	r1, r4
d03e05da:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d03e05de:	f895 c016 	ldrb.w	ip, [r5, #22]
d03e05e2:	f808 2004 	strb.w	r2, [r8, r4]
d03e05e6:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d03e05ea:	f895 c017 	ldrb.w	ip, [r5, #23]
d03e05ee:	9001      	str	r0, [sp, #4]
d03e05f0:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d03e05f4:	681b      	ldr	r3, [r3, #0]
d03e05f6:	69db      	ldr	r3, [r3, #28]
d03e05f8:	4798      	blx	r3
d03e05fa:	7d2b      	ldrb	r3, [r5, #20]
d03e05fc:	f895 e015 	ldrb.w	lr, [r5, #21]
d03e0600:	1c61      	adds	r1, r4, #1
d03e0602:	f895 c016 	ldrb.w	ip, [r5, #22]
d03e0606:	4632      	mov	r2, r6
d03e0608:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d03e060c:	7dec      	ldrb	r4, [r5, #23]
d03e060e:	b2c9      	uxtb	r1, r1
d03e0610:	9801      	ldr	r0, [sp, #4]
d03e0612:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d03e0616:	f808 6001 	strb.w	r6, [r8, r1]
d03e061a:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03e061e:	681b      	ldr	r3, [r3, #0]
d03e0620:	69db      	ldr	r3, [r3, #28]
d03e0622:	4798      	blx	r3
d03e0624:	2301      	movs	r3, #1
d03e0626:	72bb      	strb	r3, [r7, #10]
d03e0628:	b002      	add	sp, #8
d03e062a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03e062e:	26ff      	movs	r6, #255	; 0xff
d03e0630:	f64f 71ff 	movw	r1, #65535	; 0xffff
d03e0634:	4632      	mov	r2, r6
d03e0636:	e7c2      	b.n	d03e05be <sid_voice_set_program.part.0+0xca>
d03e0638:	2301      	movs	r3, #1
d03e063a:	e787      	b.n	d03e054c <sid_voice_set_program.part.0+0x58>
d03e063c:	4623      	mov	r3, r4
d03e063e:	e785      	b.n	d03e054c <sid_voice_set_program.part.0+0x58>
d03e0640:	d03e9cbc 	.word	0xd03e9cbc
d03e0644:	aaaaaaab 	.word	0xaaaaaaab
d03e0648:	d03e8f8c 	.word	0xd03e8f8c
d03e064c:	2001f000 	.word	0x2001f000
d03e0650:	d03ea814 	.word	0xd03ea814
d03e0654:	d03ea824 	.word	0xd03ea824
d03e0658:	d03ea328 	.word	0xd03ea328

d03e065c <get_voice_target>:
d03e065c:	4b07      	ldr	r3, [pc, #28]	; (d03e067c <get_voice_target+0x20>)
d03e065e:	b410      	push	{r4}
d03e0660:	fba3 4300 	umull	r4, r3, r3, r0
d03e0664:	085b      	lsrs	r3, r3, #1
d03e0666:	eb03 0443 	add.w	r4, r3, r3, lsl #1
d03e066a:	700b      	strb	r3, [r1, #0]
d03e066c:	1b00      	subs	r0, r0, r4
d03e066e:	f85d 4b04 	ldr.w	r4, [sp], #4
d03e0672:	ebc0 00c0 	rsb	r0, r0, r0, lsl #3
d03e0676:	7010      	strb	r0, [r2, #0]
d03e0678:	4770      	bx	lr
d03e067a:	bf00      	nop
d03e067c:	aaaaaaab 	.word	0xaaaaaaab

d03e0680 <sid_voice_note_on>:
d03e0680:	2805      	cmp	r0, #5
d03e0682:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e0684:	4604      	mov	r4, r0
d03e0686:	bf94      	ite	ls
d03e0688:	2700      	movls	r7, #0
d03e068a:	2701      	movhi	r7, #1
d03e068c:	b1c3      	cbz	r3, d03e06c0 <sid_voice_note_on+0x40>
d03e068e:	b9bf      	cbnz	r7, d03e06c0 <sid_voice_note_on+0x40>
d03e0690:	4f3c      	ldr	r7, [pc, #240]	; (d03e0784 <sid_voice_note_on+0x104>)
d03e0692:	ebc0 0cc0 	rsb	ip, r0, r0, lsl #3
d03e0696:	2980      	cmp	r1, #128	; 0x80
d03e0698:	4616      	mov	r6, r2
d03e069a:	eb07 07cc 	add.w	r7, r7, ip, lsl #3
d03e069e:	733b      	strb	r3, [r7, #12]
d03e06a0:	d007      	beq.n	d03e06b2 <sid_voice_note_on+0x32>
d03e06a2:	2909      	cmp	r1, #9
d03e06a4:	d005      	beq.n	d03e06b2 <sid_voice_note_on+0x32>
d03e06a6:	060b      	lsls	r3, r1, #24
d03e06a8:	d446      	bmi.n	d03e0738 <sid_voice_note_on+0xb8>
d03e06aa:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d03e06ae:	f7ff bf21 	b.w	d03e04f4 <sid_voice_set_program.part.0>
d03e06b2:	461a      	mov	r2, r3
d03e06b4:	4631      	mov	r1, r6
d03e06b6:	4620      	mov	r0, r4
d03e06b8:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d03e06bc:	f7ff bd30 	b.w	d03e0120 <sid_midi_trigger_percussion>
d03e06c0:	2b00      	cmp	r3, #0
d03e06c2:	d139      	bne.n	d03e0738 <sid_voice_note_on+0xb8>
d03e06c4:	2f00      	cmp	r7, #0
d03e06c6:	d137      	bne.n	d03e0738 <sid_voice_note_on+0xb8>
d03e06c8:	ebc4 03c4 	rsb	r3, r4, r4, lsl #3
d03e06cc:	4d2d      	ldr	r5, [pc, #180]	; (d03e0784 <sid_voice_note_on+0x104>)
d03e06ce:	eb05 05c3 	add.w	r5, r5, r3, lsl #3
d03e06d2:	7aab      	ldrb	r3, [r5, #10]
d03e06d4:	2b00      	cmp	r3, #0
d03e06d6:	d02f      	beq.n	d03e0738 <sid_voice_note_on+0xb8>
d03e06d8:	4a2b      	ldr	r2, [pc, #172]	; (d03e0788 <sid_voice_note_on+0x108>)
d03e06da:	7be9      	ldrb	r1, [r5, #15]
d03e06dc:	fba2 3204 	umull	r3, r2, r2, r4
d03e06e0:	f002 03fe 	and.w	r3, r2, #254	; 0xfe
d03e06e4:	0850      	lsrs	r0, r2, #1
d03e06e6:	eb03 0352 	add.w	r3, r3, r2, lsr #1
d03e06ea:	1ae4      	subs	r4, r4, r3
d03e06ec:	ebc4 04c4 	rsb	r4, r4, r4, lsl #3
d03e06f0:	b2e3      	uxtb	r3, r4
d03e06f2:	b311      	cbz	r1, d03e073a <sid_voice_note_on+0xba>
d03e06f4:	4925      	ldr	r1, [pc, #148]	; (d03e078c <sid_voice_note_on+0x10c>)
d03e06f6:	3304      	adds	r3, #4
d03e06f8:	4e25      	ldr	r6, [pc, #148]	; (d03e0790 <sid_voice_note_on+0x110>)
d03e06fa:	7d0a      	ldrb	r2, [r1, #20]
d03e06fc:	7d4c      	ldrb	r4, [r1, #21]
d03e06fe:	eb06 1640 	add.w	r6, r6, r0, lsl #5
d03e0702:	ea42 2404 	orr.w	r4, r2, r4, lsl #8
d03e0706:	7d8a      	ldrb	r2, [r1, #22]
d03e0708:	7dc9      	ldrb	r1, [r1, #23]
d03e070a:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
d03e070e:	5cf2      	ldrb	r2, [r6, r3]
d03e0710:	ea44 6401 	orr.w	r4, r4, r1, lsl #24
d03e0714:	f002 02fe 	and.w	r2, r2, #254	; 0xfe
d03e0718:	b2d9      	uxtb	r1, r3
d03e071a:	6824      	ldr	r4, [r4, #0]
d03e071c:	54f2      	strb	r2, [r6, r3]
d03e071e:	69e3      	ldr	r3, [r4, #28]
d03e0720:	4798      	blx	r3
d03e0722:	2301      	movs	r3, #1
d03e0724:	812f      	strh	r7, [r5, #8]
d03e0726:	85ef      	strh	r7, [r5, #46]	; 0x2e
d03e0728:	84af      	strh	r7, [r5, #36]	; 0x24
d03e072a:	f885 7028 	strb.w	r7, [r5, #40]	; 0x28
d03e072e:	f885 7030 	strb.w	r7, [r5, #48]	; 0x30
d03e0732:	f885 7034 	strb.w	r7, [r5, #52]	; 0x34
d03e0736:	73ab      	strb	r3, [r5, #14]
d03e0738:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e073a:	4914      	ldr	r1, [pc, #80]	; (d03e078c <sid_voice_note_on+0x10c>)
d03e073c:	3304      	adds	r3, #4
d03e073e:	4e14      	ldr	r6, [pc, #80]	; (d03e0790 <sid_voice_note_on+0x110>)
d03e0740:	7d0a      	ldrb	r2, [r1, #20]
d03e0742:	7d4c      	ldrb	r4, [r1, #21]
d03e0744:	eb06 1640 	add.w	r6, r6, r0, lsl #5
d03e0748:	ea42 2404 	orr.w	r4, r2, r4, lsl #8
d03e074c:	7d8a      	ldrb	r2, [r1, #22]
d03e074e:	7dc9      	ldrb	r1, [r1, #23]
d03e0750:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
d03e0754:	5cf2      	ldrb	r2, [r6, r3]
d03e0756:	ea44 6401 	orr.w	r4, r4, r1, lsl #24
d03e075a:	f002 02fe 	and.w	r2, r2, #254	; 0xfe
d03e075e:	b2d9      	uxtb	r1, r3
d03e0760:	6824      	ldr	r4, [r4, #0]
d03e0762:	54f2      	strb	r2, [r6, r3]
d03e0764:	69e3      	ldr	r3, [r4, #28]
d03e0766:	4798      	blx	r3
d03e0768:	2301      	movs	r3, #1
d03e076a:	8a6a      	ldrh	r2, [r5, #18]
d03e076c:	85ef      	strh	r7, [r5, #46]	; 0x2e
d03e076e:	84af      	strh	r7, [r5, #36]	; 0x24
d03e0770:	f885 7028 	strb.w	r7, [r5, #40]	; 0x28
d03e0774:	f885 7030 	strb.w	r7, [r5, #48]	; 0x30
d03e0778:	f885 7034 	strb.w	r7, [r5, #52]	; 0x34
d03e077c:	73ab      	strb	r3, [r5, #14]
d03e077e:	742b      	strb	r3, [r5, #16]
d03e0780:	812a      	strh	r2, [r5, #8]
d03e0782:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e0784:	d03ea814 	.word	0xd03ea814
d03e0788:	aaaaaaab 	.word	0xaaaaaaab
d03e078c:	2001f000 	.word	0x2001f000
d03e0790:	d03ea328 	.word	0xd03ea328

d03e0794 <sid_voice_note_off>:
d03e0794:	2805      	cmp	r0, #5
d03e0796:	d83b      	bhi.n	d03e0810 <sid_voice_note_off+0x7c>
d03e0798:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e079a:	ebc0 03c0 	rsb	r3, r0, r0, lsl #3
d03e079e:	4c30      	ldr	r4, [pc, #192]	; (d03e0860 <sid_voice_note_off+0xcc>)
d03e07a0:	eb04 04c3 	add.w	r4, r4, r3, lsl #3
d03e07a4:	7aa3      	ldrb	r3, [r4, #10]
d03e07a6:	2b00      	cmp	r3, #0
d03e07a8:	d031      	beq.n	d03e080e <sid_voice_note_off+0x7a>
d03e07aa:	4b2e      	ldr	r3, [pc, #184]	; (d03e0864 <sid_voice_note_off+0xd0>)
d03e07ac:	7be5      	ldrb	r5, [r4, #15]
d03e07ae:	fba3 2300 	umull	r2, r3, r3, r0
d03e07b2:	f003 02fe 	and.w	r2, r3, #254	; 0xfe
d03e07b6:	0859      	lsrs	r1, r3, #1
d03e07b8:	eb02 0353 	add.w	r3, r2, r3, lsr #1
d03e07bc:	4a2a      	ldr	r2, [pc, #168]	; (d03e0868 <sid_voice_note_off+0xd4>)
d03e07be:	1ac3      	subs	r3, r0, r3
d03e07c0:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
d03e07c4:	b2db      	uxtb	r3, r3
d03e07c6:	3304      	adds	r3, #4
d03e07c8:	b31d      	cbz	r5, d03e0812 <sid_voice_note_off+0x7e>
d03e07ca:	7d15      	ldrb	r5, [r2, #20]
d03e07cc:	4608      	mov	r0, r1
d03e07ce:	7d57      	ldrb	r7, [r2, #21]
d03e07d0:	4e26      	ldr	r6, [pc, #152]	; (d03e086c <sid_voice_note_off+0xd8>)
d03e07d2:	ea45 2507 	orr.w	r5, r5, r7, lsl #8
d03e07d6:	7d97      	ldrb	r7, [r2, #22]
d03e07d8:	eb06 1641 	add.w	r6, r6, r1, lsl #5
d03e07dc:	7dd1      	ldrb	r1, [r2, #23]
d03e07de:	ea45 4507 	orr.w	r5, r5, r7, lsl #16
d03e07e2:	5cf2      	ldrb	r2, [r6, r3]
d03e07e4:	ea45 6501 	orr.w	r5, r5, r1, lsl #24
d03e07e8:	f002 02fe 	and.w	r2, r2, #254	; 0xfe
d03e07ec:	b2d9      	uxtb	r1, r3
d03e07ee:	682d      	ldr	r5, [r5, #0]
d03e07f0:	54f2      	strb	r2, [r6, r3]
d03e07f2:	69eb      	ldr	r3, [r5, #28]
d03e07f4:	4798      	blx	r3
d03e07f6:	2300      	movs	r3, #0
d03e07f8:	2201      	movs	r2, #1
d03e07fa:	8123      	strh	r3, [r4, #8]
d03e07fc:	73a2      	strb	r2, [r4, #14]
d03e07fe:	85e3      	strh	r3, [r4, #46]	; 0x2e
d03e0800:	84a3      	strh	r3, [r4, #36]	; 0x24
d03e0802:	f884 3028 	strb.w	r3, [r4, #40]	; 0x28
d03e0806:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
d03e080a:	f884 3034 	strb.w	r3, [r4, #52]	; 0x34
d03e080e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e0810:	4770      	bx	lr
d03e0812:	7d16      	ldrb	r6, [r2, #20]
d03e0814:	4608      	mov	r0, r1
d03e0816:	f892 c015 	ldrb.w	ip, [r2, #21]
d03e081a:	4f14      	ldr	r7, [pc, #80]	; (d03e086c <sid_voice_note_off+0xd8>)
d03e081c:	ea46 260c 	orr.w	r6, r6, ip, lsl #8
d03e0820:	f892 c016 	ldrb.w	ip, [r2, #22]
d03e0824:	eb07 1741 	add.w	r7, r7, r1, lsl #5
d03e0828:	7dd1      	ldrb	r1, [r2, #23]
d03e082a:	ea46 460c 	orr.w	r6, r6, ip, lsl #16
d03e082e:	5cfa      	ldrb	r2, [r7, r3]
d03e0830:	ea46 6601 	orr.w	r6, r6, r1, lsl #24
d03e0834:	f002 02fe 	and.w	r2, r2, #254	; 0xfe
d03e0838:	b2d9      	uxtb	r1, r3
d03e083a:	6836      	ldr	r6, [r6, #0]
d03e083c:	54fa      	strb	r2, [r7, r3]
d03e083e:	69f3      	ldr	r3, [r6, #28]
d03e0840:	4798      	blx	r3
d03e0842:	2301      	movs	r3, #1
d03e0844:	8a62      	ldrh	r2, [r4, #18]
d03e0846:	85e5      	strh	r5, [r4, #46]	; 0x2e
d03e0848:	84a5      	strh	r5, [r4, #36]	; 0x24
d03e084a:	f884 5028 	strb.w	r5, [r4, #40]	; 0x28
d03e084e:	f884 5030 	strb.w	r5, [r4, #48]	; 0x30
d03e0852:	f884 5034 	strb.w	r5, [r4, #52]	; 0x34
d03e0856:	73a3      	strb	r3, [r4, #14]
d03e0858:	7423      	strb	r3, [r4, #16]
d03e085a:	8122      	strh	r2, [r4, #8]
d03e085c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e085e:	bf00      	nop
d03e0860:	d03ea814 	.word	0xd03ea814
d03e0864:	aaaaaaab 	.word	0xaaaaaaab
d03e0868:	2001f000 	.word	0x2001f000
d03e086c:	d03ea328 	.word	0xd03ea328

d03e0870 <sid_voice_note_kill>:
d03e0870:	2805      	cmp	r0, #5
d03e0872:	d900      	bls.n	d03e0876 <sid_voice_note_kill+0x6>
d03e0874:	4770      	bx	lr
d03e0876:	4b12      	ldr	r3, [pc, #72]	; (d03e08c0 <sid_voice_note_kill+0x50>)
d03e0878:	fba3 2300 	umull	r2, r3, r3, r0
d03e087c:	f003 01fe 	and.w	r1, r3, #254	; 0xfe
d03e0880:	b510      	push	{r4, lr}
d03e0882:	eb01 0153 	add.w	r1, r1, r3, lsr #1
d03e0886:	4604      	mov	r4, r0
d03e0888:	0858      	lsrs	r0, r3, #1
d03e088a:	1a61      	subs	r1, r4, r1
d03e088c:	ebc4 04c4 	rsb	r4, r4, r4, lsl #3
d03e0890:	ebc1 01c1 	rsb	r1, r1, r1, lsl #3
d03e0894:	b2c9      	uxtb	r1, r1
d03e0896:	f7ff fdbb 	bl	d03e0410 <sid_voice_hard_silence>
d03e089a:	480a      	ldr	r0, [pc, #40]	; (d03e08c4 <sid_voice_note_kill+0x54>)
d03e089c:	2300      	movs	r3, #0
d03e089e:	2201      	movs	r2, #1
d03e08a0:	eb00 04c4 	add.w	r4, r0, r4, lsl #3
d03e08a4:	73a2      	strb	r2, [r4, #14]
d03e08a6:	72a3      	strb	r3, [r4, #10]
d03e08a8:	7423      	strb	r3, [r4, #16]
d03e08aa:	8123      	strh	r3, [r4, #8]
d03e08ac:	85e3      	strh	r3, [r4, #46]	; 0x2e
d03e08ae:	84a3      	strh	r3, [r4, #36]	; 0x24
d03e08b0:	f884 3028 	strb.w	r3, [r4, #40]	; 0x28
d03e08b4:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
d03e08b8:	f884 3034 	strb.w	r3, [r4, #52]	; 0x34
d03e08bc:	bd10      	pop	{r4, pc}
d03e08be:	bf00      	nop
d03e08c0:	aaaaaaab 	.word	0xaaaaaaab
d03e08c4:	d03ea814 	.word	0xd03ea814

d03e08c8 <sid_voice_pitch_bend>:
d03e08c8:	2805      	cmp	r0, #5
d03e08ca:	d87b      	bhi.n	d03e09c4 <sid_voice_pitch_bend+0xfc>
d03e08cc:	ebc0 03c0 	rsb	r3, r0, r0, lsl #3
d03e08d0:	ea4f 0cc0 	mov.w	ip, r0, lsl #3
d03e08d4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d03e08d8:	4f50      	ldr	r7, [pc, #320]	; (d03e0a1c <sid_voice_pitch_bend+0x154>)
d03e08da:	b083      	sub	sp, #12
d03e08dc:	4604      	mov	r4, r0
d03e08de:	eb07 03c3 	add.w	r3, r7, r3, lsl #3
d03e08e2:	7a9a      	ldrb	r2, [r3, #10]
d03e08e4:	b912      	cbnz	r2, d03e08ec <sid_voice_pitch_bend+0x24>
d03e08e6:	b003      	add	sp, #12
d03e08e8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d03e08ec:	4d4c      	ldr	r5, [pc, #304]	; (d03e0a20 <sid_voice_pitch_bend+0x158>)
d03e08ee:	2900      	cmp	r1, #0
d03e08f0:	7ade      	ldrb	r6, [r3, #11]
d03e08f2:	fba5 2e00 	umull	r2, lr, r5, r0
d03e08f6:	f993 2022 	ldrsb.w	r2, [r3, #34]	; 0x22
d03e08fa:	8419      	strh	r1, [r3, #32]
d03e08fc:	f00e 05fe 	and.w	r5, lr, #254	; 0xfe
d03e0900:	ea4f 005e 	mov.w	r0, lr, lsr #1
d03e0904:	eb05 055e 	add.w	r5, r5, lr, lsr #1
d03e0908:	eba4 0505 	sub.w	r5, r4, r5
d03e090c:	ebc5 05c5 	rsb	r5, r5, r5, lsl #3
d03e0910:	b2ed      	uxtb	r5, r5
d03e0912:	db58      	blt.n	d03e09c6 <sid_voice_pitch_bend+0xfe>
d03e0914:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d03e0918:	4b42      	ldr	r3, [pc, #264]	; (d03e0a24 <sid_voice_pitch_bend+0x15c>)
d03e091a:	03c9      	lsls	r1, r1, #15
d03e091c:	fba3 e301 	umull	lr, r3, r3, r1
d03e0920:	1ac9      	subs	r1, r1, r3
d03e0922:	eb03 0351 	add.w	r3, r3, r1, lsr #1
d03e0926:	ea4f 6e53 	mov.w	lr, r3, lsr #25
d03e092a:	f3c3 330c 	ubfx	r3, r3, #12, #13
d03e092e:	4432      	add	r2, r6
d03e0930:	eb12 020e 	adds.w	r2, r2, lr
d03e0934:	d466      	bmi.n	d03e0a04 <sid_voice_pitch_bend+0x13c>
d03e0936:	2a7e      	cmp	r2, #126	; 0x7e
d03e0938:	dc6a      	bgt.n	d03e0a10 <sid_voice_pitch_bend+0x148>
d03e093a:	493b      	ldr	r1, [pc, #236]	; (d03e0a28 <sid_voice_pitch_bend+0x160>)
d03e093c:	1c56      	adds	r6, r2, #1
d03e093e:	f831 2012 	ldrh.w	r2, [r1, r2, lsl #1]
d03e0942:	f831 1016 	ldrh.w	r1, [r1, r6, lsl #1]
d03e0946:	1a89      	subs	r1, r1, r2
d03e0948:	fb03 f301 	mul.w	r3, r3, r1
d03e094c:	2b00      	cmp	r3, #0
d03e094e:	da02      	bge.n	d03e0956 <sid_voice_pitch_bend+0x8e>
d03e0950:	f503 53ff 	add.w	r3, r3, #8160	; 0x1fe0
d03e0954:	331f      	adds	r3, #31
d03e0956:	eb02 3363 	add.w	r3, r2, r3, asr #13
d03e095a:	b299      	uxth	r1, r3
d03e095c:	f3c3 2807 	ubfx	r8, r3, #8, #8
d03e0960:	b2da      	uxtb	r2, r3
d03e0962:	4e32      	ldr	r6, [pc, #200]	; (d03e0a2c <sid_voice_pitch_bend+0x164>)
d03e0964:	ebac 0404 	sub.w	r4, ip, r4
d03e0968:	f8df 90c4 	ldr.w	r9, [pc, #196]	; d03e0a30 <sid_voice_pitch_bend+0x168>
d03e096c:	7d33      	ldrb	r3, [r6, #20]
d03e096e:	eb07 07c4 	add.w	r7, r7, r4, lsl #3
d03e0972:	7d74      	ldrb	r4, [r6, #21]
d03e0974:	eb09 1940 	add.w	r9, r9, r0, lsl #5
d03e0978:	83f9      	strh	r1, [r7, #30]
d03e097a:	4629      	mov	r1, r5
d03e097c:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d03e0980:	7db4      	ldrb	r4, [r6, #22]
d03e0982:	f809 2005 	strb.w	r2, [r9, r5]
d03e0986:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d03e098a:	7df4      	ldrb	r4, [r6, #23]
d03e098c:	9001      	str	r0, [sp, #4]
d03e098e:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03e0992:	681b      	ldr	r3, [r3, #0]
d03e0994:	69db      	ldr	r3, [r3, #28]
d03e0996:	4798      	blx	r3
d03e0998:	7d33      	ldrb	r3, [r6, #20]
d03e099a:	7d74      	ldrb	r4, [r6, #21]
d03e099c:	1c69      	adds	r1, r5, #1
d03e099e:	7db5      	ldrb	r5, [r6, #22]
d03e09a0:	4642      	mov	r2, r8
d03e09a2:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d03e09a6:	7df4      	ldrb	r4, [r6, #23]
d03e09a8:	b2c9      	uxtb	r1, r1
d03e09aa:	9801      	ldr	r0, [sp, #4]
d03e09ac:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d03e09b0:	f809 8001 	strb.w	r8, [r9, r1]
d03e09b4:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03e09b8:	681b      	ldr	r3, [r3, #0]
d03e09ba:	69db      	ldr	r3, [r3, #28]
d03e09bc:	b003      	add	sp, #12
d03e09be:	e8bd 43f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, lr}
d03e09c2:	4718      	bx	r3
d03e09c4:	4770      	bx	lr
d03e09c6:	eb01 0341 	add.w	r3, r1, r1, lsl #1
d03e09ca:	009b      	lsls	r3, r3, #2
d03e09cc:	2b00      	cmp	r3, #0
d03e09ce:	469e      	mov	lr, r3
d03e09d0:	da02      	bge.n	d03e09d8 <sid_voice_pitch_bend+0x110>
d03e09d2:	f641 7eff 	movw	lr, #8191	; 0x1fff
d03e09d6:	449e      	add	lr, r3
d03e09d8:	f1d3 0800 	rsbs	r8, r3, #0
d03e09dc:	f3c3 010c 	ubfx	r1, r3, #0, #13
d03e09e0:	ea4f 3e6e 	mov.w	lr, lr, asr #13
d03e09e4:	460b      	mov	r3, r1
d03e09e6:	f3c8 080c 	ubfx	r8, r8, #0, #13
d03e09ea:	bf58      	it	pl
d03e09ec:	f1c8 0100 	rsbpl	r1, r8, #0
d03e09f0:	2b00      	cmp	r3, #0
d03e09f2:	d09c      	beq.n	d03e092e <sid_voice_pitch_bend+0x66>
d03e09f4:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d03e09f8:	4432      	add	r2, r6
d03e09fa:	f501 5300 	add.w	r3, r1, #8192	; 0x2000
d03e09fe:	eb12 020e 	adds.w	r2, r2, lr
d03e0a02:	d598      	bpl.n	d03e0936 <sid_voice_pitch_bend+0x6e>
d03e0a04:	f04f 0801 	mov.w	r8, #1
d03e0a08:	2211      	movs	r2, #17
d03e0a0a:	f240 1111 	movw	r1, #273	; 0x111
d03e0a0e:	e7a8      	b.n	d03e0962 <sid_voice_pitch_bend+0x9a>
d03e0a10:	f04f 08ff 	mov.w	r8, #255	; 0xff
d03e0a14:	f64f 71ff 	movw	r1, #65535	; 0xffff
d03e0a18:	4642      	mov	r2, r8
d03e0a1a:	e7a2      	b.n	d03e0962 <sid_voice_pitch_bend+0x9a>
d03e0a1c:	d03ea814 	.word	0xd03ea814
d03e0a20:	aaaaaaab 	.word	0xaaaaaaab
d03e0a24:	00080041 	.word	0x00080041
d03e0a28:	d03e8f8c 	.word	0xd03e8f8c
d03e0a2c:	2001f000 	.word	0x2001f000
d03e0a30:	d03ea328 	.word	0xd03ea328

d03e0a34 <sid_voice_set_velocity>:
d03e0a34:	2805      	cmp	r0, #5
d03e0a36:	d85f      	bhi.n	d03e0af8 <sid_voice_set_velocity+0xc4>
d03e0a38:	ebc0 03c0 	rsb	r3, r0, r0, lsl #3
d03e0a3c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e0a40:	4e33      	ldr	r6, [pc, #204]	; (d03e0b10 <sid_voice_set_velocity+0xdc>)
d03e0a42:	00c7      	lsls	r7, r0, #3
d03e0a44:	eb06 03c3 	add.w	r3, r6, r3, lsl #3
d03e0a48:	7a9a      	ldrb	r2, [r3, #10]
d03e0a4a:	2a00      	cmp	r2, #0
d03e0a4c:	d052      	beq.n	d03e0af4 <sid_voice_set_velocity+0xc0>
d03e0a4e:	7b5a      	ldrb	r2, [r3, #13]
d03e0a50:	2a00      	cmp	r2, #0
d03e0a52:	d04f      	beq.n	d03e0af4 <sid_voice_set_velocity+0xc0>
d03e0a54:	ea4f 1c12 	mov.w	ip, r2, lsr #4
d03e0a58:	4d2e      	ldr	r5, [pc, #184]	; (d03e0b14 <sid_voice_set_velocity+0xe0>)
d03e0a5a:	f8df e0c4 	ldr.w	lr, [pc, #196]	; d03e0b20 <sid_voice_set_velocity+0xec>
d03e0a5e:	f002 020f 	and.w	r2, r2, #15
d03e0a62:	fb1c fc01 	smulbb	ip, ip, r1
d03e0a66:	fba5 4800 	umull	r4, r8, r5, r0
d03e0a6a:	7319      	strb	r1, [r3, #12]
d03e0a6c:	f10c 033f 	add.w	r3, ip, #63	; 0x3f
d03e0a70:	f008 05fe 	and.w	r5, r8, #254	; 0xfe
d03e0a74:	ea4f 0458 	mov.w	r4, r8, lsr #1
d03e0a78:	fbae ec03 	umull	lr, ip, lr, r3
d03e0a7c:	eb05 0558 	add.w	r5, r5, r8, lsr #1
d03e0a80:	eba3 030c 	sub.w	r3, r3, ip
d03e0a84:	1b45      	subs	r5, r0, r5
d03e0a86:	eb0c 0c53 	add.w	ip, ip, r3, lsr #1
d03e0a8a:	ebc5 05c5 	rsb	r5, r5, r5, lsl #3
d03e0a8e:	f41c 5f7f 	tst.w	ip, #16320	; 0x3fc0
d03e0a92:	f3cc 1387 	ubfx	r3, ip, #6, #8
d03e0a96:	b2ed      	uxtb	r5, r5
d03e0a98:	d12f      	bne.n	d03e0afa <sid_voice_set_velocity+0xc6>
d03e0a9a:	b371      	cbz	r1, d03e0afa <sid_voice_set_velocity+0xc6>
d03e0a9c:	2310      	movs	r3, #16
d03e0a9e:	1a38      	subs	r0, r7, r0
d03e0aa0:	f3c3 1303 	ubfx	r3, r3, #4, #4
d03e0aa4:	4617      	mov	r7, r2
d03e0aa6:	eb06 01c0 	add.w	r1, r6, r0, lsl #3
d03e0aaa:	f891 0037 	ldrb.w	r0, [r1, #55]	; 0x37
d03e0aae:	f891 2034 	ldrb.w	r2, [r1, #52]	; 0x34
d03e0ab2:	b340      	cbz	r0, d03e0b06 <sid_voice_set_velocity+0xd2>
d03e0ab4:	b33a      	cbz	r2, d03e0b06 <sid_voice_set_velocity+0xd2>
d03e0ab6:	429a      	cmp	r2, r3
d03e0ab8:	d228      	bcs.n	d03e0b0c <sid_voice_set_velocity+0xd8>
d03e0aba:	1a9b      	subs	r3, r3, r2
d03e0abc:	f343 0303 	sbfx	r3, r3, #0, #4
d03e0ac0:	011a      	lsls	r2, r3, #4
d03e0ac2:	4e15      	ldr	r6, [pc, #84]	; (d03e0b18 <sid_voice_set_velocity+0xe4>)
d03e0ac4:	433a      	orrs	r2, r7
d03e0ac6:	1da9      	adds	r1, r5, #6
d03e0ac8:	4d14      	ldr	r5, [pc, #80]	; (d03e0b1c <sid_voice_set_velocity+0xe8>)
d03e0aca:	7d33      	ldrb	r3, [r6, #20]
d03e0acc:	4620      	mov	r0, r4
d03e0ace:	7d77      	ldrb	r7, [r6, #21]
d03e0ad0:	eb05 1544 	add.w	r5, r5, r4, lsl #5
d03e0ad4:	b2d2      	uxtb	r2, r2
d03e0ad6:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d03e0ada:	7db7      	ldrb	r7, [r6, #22]
d03e0adc:	7df4      	ldrb	r4, [r6, #23]
d03e0ade:	b2c9      	uxtb	r1, r1
d03e0ae0:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d03e0ae4:	546a      	strb	r2, [r5, r1]
d03e0ae6:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03e0aea:	681b      	ldr	r3, [r3, #0]
d03e0aec:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d03e0af0:	69db      	ldr	r3, [r3, #28]
d03e0af2:	4718      	bx	r3
d03e0af4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03e0af8:	4770      	bx	lr
d03e0afa:	2b0f      	cmp	r3, #15
d03e0afc:	bf28      	it	cs
d03e0afe:	230f      	movcs	r3, #15
d03e0b00:	011b      	lsls	r3, r3, #4
d03e0b02:	b25b      	sxtb	r3, r3
d03e0b04:	e7cb      	b.n	d03e0a9e <sid_voice_set_velocity+0x6a>
d03e0b06:	011b      	lsls	r3, r3, #4
d03e0b08:	b25a      	sxtb	r2, r3
d03e0b0a:	e7da      	b.n	d03e0ac2 <sid_voice_set_velocity+0x8e>
d03e0b0c:	2200      	movs	r2, #0
d03e0b0e:	e7d8      	b.n	d03e0ac2 <sid_voice_set_velocity+0x8e>
d03e0b10:	d03ea814 	.word	0xd03ea814
d03e0b14:	aaaaaaab 	.word	0xaaaaaaab
d03e0b18:	2001f000 	.word	0x2001f000
d03e0b1c:	d03ea328 	.word	0xd03ea328
d03e0b20:	02040811 	.word	0x02040811

d03e0b24 <sid_voice_get_vm_debug>:
d03e0b24:	2805      	cmp	r0, #5
d03e0b26:	d81d      	bhi.n	d03e0b64 <sid_voice_get_vm_debug+0x40>
d03e0b28:	4b11      	ldr	r3, [pc, #68]	; (d03e0b70 <sid_voice_get_vm_debug+0x4c>)
d03e0b2a:	b430      	push	{r4, r5}
d03e0b2c:	b1f1      	cbz	r1, d03e0b6c <sid_voice_get_vm_debug+0x48>
d03e0b2e:	ebc0 05c0 	rsb	r5, r0, r0, lsl #3
d03e0b32:	00c4      	lsls	r4, r0, #3
d03e0b34:	eb03 05c5 	add.w	r5, r3, r5, lsl #3
d03e0b38:	7c6d      	ldrb	r5, [r5, #17]
d03e0b3a:	700d      	strb	r5, [r1, #0]
d03e0b3c:	b14a      	cbz	r2, d03e0b52 <sid_voice_get_vm_debug+0x2e>
d03e0b3e:	1a21      	subs	r1, r4, r0
d03e0b40:	eb03 01c1 	add.w	r1, r3, r1, lsl #3
d03e0b44:	7a8d      	ldrb	r5, [r1, #10]
d03e0b46:	b97d      	cbnz	r5, d03e0b68 <sid_voice_get_vm_debug+0x44>
d03e0b48:	7c09      	ldrb	r1, [r1, #16]
d03e0b4a:	3900      	subs	r1, #0
d03e0b4c:	bf18      	it	ne
d03e0b4e:	2101      	movne	r1, #1
d03e0b50:	7011      	strb	r1, [r2, #0]
d03e0b52:	1a20      	subs	r0, r4, r0
d03e0b54:	eb03 03c0 	add.w	r3, r3, r0, lsl #3
d03e0b58:	6858      	ldr	r0, [r3, #4]
d03e0b5a:	3800      	subs	r0, #0
d03e0b5c:	bc30      	pop	{r4, r5}
d03e0b5e:	bf18      	it	ne
d03e0b60:	2001      	movne	r0, #1
d03e0b62:	4770      	bx	lr
d03e0b64:	2000      	movs	r0, #0
d03e0b66:	4770      	bx	lr
d03e0b68:	2101      	movs	r1, #1
d03e0b6a:	e7f1      	b.n	d03e0b50 <sid_voice_get_vm_debug+0x2c>
d03e0b6c:	00c4      	lsls	r4, r0, #3
d03e0b6e:	e7e5      	b.n	d03e0b3c <sid_voice_get_vm_debug+0x18>
d03e0b70:	d03ea814 	.word	0xd03ea814

d03e0b74 <sid_soundfont_init>:
d03e0b74:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e0b76:	4c15      	ldr	r4, [pc, #84]	; (d03e0bcc <sid_soundfont_init+0x58>)
d03e0b78:	260f      	movs	r6, #15
d03e0b7a:	4d15      	ldr	r5, [pc, #84]	; (d03e0bd0 <sid_soundfont_init+0x5c>)
d03e0b7c:	2118      	movs	r1, #24
d03e0b7e:	7d23      	ldrb	r3, [r4, #20]
d03e0b80:	4632      	mov	r2, r6
d03e0b82:	7d67      	ldrb	r7, [r4, #21]
d03e0b84:	2000      	movs	r0, #0
d03e0b86:	762e      	strb	r6, [r5, #24]
d03e0b88:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d03e0b8c:	7da7      	ldrb	r7, [r4, #22]
d03e0b8e:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d03e0b92:	7de7      	ldrb	r7, [r4, #23]
d03e0b94:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d03e0b98:	681b      	ldr	r3, [r3, #0]
d03e0b9a:	69db      	ldr	r3, [r3, #28]
d03e0b9c:	4798      	blx	r3
d03e0b9e:	7d23      	ldrb	r3, [r4, #20]
d03e0ba0:	7d60      	ldrb	r0, [r4, #21]
d03e0ba2:	4632      	mov	r2, r6
d03e0ba4:	7da7      	ldrb	r7, [r4, #22]
d03e0ba6:	2118      	movs	r1, #24
d03e0ba8:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03e0bac:	7de4      	ldrb	r4, [r4, #23]
d03e0bae:	2001      	movs	r0, #1
d03e0bb0:	f885 6038 	strb.w	r6, [r5, #56]	; 0x38
d03e0bb4:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d03e0bb8:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03e0bbc:	681b      	ldr	r3, [r3, #0]
d03e0bbe:	69db      	ldr	r3, [r3, #28]
d03e0bc0:	4798      	blx	r3
d03e0bc2:	762e      	strb	r6, [r5, #24]
d03e0bc4:	f885 6038 	strb.w	r6, [r5, #56]	; 0x38
d03e0bc8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e0bca:	bf00      	nop
d03e0bcc:	2001f000 	.word	0x2001f000
d03e0bd0:	d03ea328 	.word	0xd03ea328

d03e0bd4 <sid_midi_isr>:
d03e0bd4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e0bd8:	f04f 0b00 	mov.w	fp, #0
d03e0bdc:	b085      	sub	sp, #20
d03e0bde:	f8df a2f4 	ldr.w	sl, [pc, #756]	; d03e0ed4 <sid_midi_isr+0x300>
d03e0be2:	4cb9      	ldr	r4, [pc, #740]	; (d03e0ec8 <sid_midi_isr+0x2f4>)
d03e0be4:	e005      	b.n	d03e0bf2 <sid_midi_isr+0x1e>
d03e0be6:	f10b 0b01 	add.w	fp, fp, #1
d03e0bea:	3438      	adds	r4, #56	; 0x38
d03e0bec:	f1bb 0f06 	cmp.w	fp, #6
d03e0bf0:	d01e      	beq.n	d03e0c30 <sid_midi_isr+0x5c>
d03e0bf2:	7aa3      	ldrb	r3, [r4, #10]
d03e0bf4:	fa5f f58b 	uxtb.w	r5, fp
d03e0bf8:	2b00      	cmp	r3, #0
d03e0bfa:	d0f4      	beq.n	d03e0be6 <sid_midi_isr+0x12>
d03e0bfc:	fbaa 3205 	umull	r3, r2, sl, r5
d03e0c00:	7c21      	ldrb	r1, [r4, #16]
d03e0c02:	f002 03fe 	and.w	r3, r2, #254	; 0xfe
d03e0c06:	0857      	lsrs	r7, r2, #1
d03e0c08:	eb03 0352 	add.w	r3, r3, r2, lsr #1
d03e0c0c:	1aed      	subs	r5, r5, r3
d03e0c0e:	ebc5 05c5 	rsb	r5, r5, r5, lsl #3
d03e0c12:	b2ed      	uxtb	r5, r5
d03e0c14:	b179      	cbz	r1, d03e0c36 <sid_midi_isr+0x62>
d03e0c16:	8926      	ldrh	r6, [r4, #8]
d03e0c18:	2e00      	cmp	r6, #0
d03e0c1a:	f000 8137 	beq.w	d03e0e8c <sid_midi_isr+0x2b8>
d03e0c1e:	f10b 0b01 	add.w	fp, fp, #1
d03e0c22:	3e01      	subs	r6, #1
d03e0c24:	3438      	adds	r4, #56	; 0x38
d03e0c26:	f1bb 0f06 	cmp.w	fp, #6
d03e0c2a:	f824 6c30 	strh.w	r6, [r4, #-48]
d03e0c2e:	d1e0      	bne.n	d03e0bf2 <sid_midi_isr+0x1e>
d03e0c30:	b005      	add	sp, #20
d03e0c32:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e0c36:	f9b4 002e 	ldrsh.w	r0, [r4, #46]	; 0x2e
d03e0c3a:	2800      	cmp	r0, #0
d03e0c3c:	f040 80d6 	bne.w	d03e0dec <sid_midi_isr+0x218>
d03e0c40:	f9b4 0024 	ldrsh.w	r0, [r4, #36]	; 0x24
d03e0c44:	2800      	cmp	r0, #0
d03e0c46:	d030      	beq.n	d03e0caa <sid_midi_isr+0xd6>
d03e0c48:	4ea0      	ldr	r6, [pc, #640]	; (d03e0ecc <sid_midi_isr+0x2f8>)
d03e0c4a:	4629      	mov	r1, r5
d03e0c4c:	4ba0      	ldr	r3, [pc, #640]	; (d03e0ed0 <sid_midi_isr+0x2fc>)
d03e0c4e:	8be2      	ldrh	r2, [r4, #30]
d03e0c50:	eb03 1847 	add.w	r8, r3, r7, lsl #5
d03e0c54:	7d33      	ldrb	r3, [r6, #20]
d03e0c56:	f896 c015 	ldrb.w	ip, [r6, #21]
d03e0c5a:	4402      	add	r2, r0
d03e0c5c:	7db0      	ldrb	r0, [r6, #22]
d03e0c5e:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d03e0c62:	f896 c017 	ldrb.w	ip, [r6, #23]
d03e0c66:	f382 0210 	usat	r2, #16, r2
d03e0c6a:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e0c6e:	4638      	mov	r0, r7
d03e0c70:	83e2      	strh	r2, [r4, #30]
d03e0c72:	b2d2      	uxtb	r2, r2
d03e0c74:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d03e0c78:	f808 2005 	strb.w	r2, [r8, r5]
d03e0c7c:	681b      	ldr	r3, [r3, #0]
d03e0c7e:	69db      	ldr	r3, [r3, #28]
d03e0c80:	4798      	blx	r3
d03e0c82:	7d33      	ldrb	r3, [r6, #20]
d03e0c84:	7d72      	ldrb	r2, [r6, #21]
d03e0c86:	1c69      	adds	r1, r5, #1
d03e0c88:	7db0      	ldrb	r0, [r6, #22]
d03e0c8a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0c8e:	7df6      	ldrb	r6, [r6, #23]
d03e0c90:	8be2      	ldrh	r2, [r4, #30]
d03e0c92:	b2c9      	uxtb	r1, r1
d03e0c94:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e0c98:	4638      	mov	r0, r7
d03e0c9a:	0a12      	lsrs	r2, r2, #8
d03e0c9c:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d03e0ca0:	f808 2001 	strb.w	r2, [r8, r1]
d03e0ca4:	681b      	ldr	r3, [r3, #0]
d03e0ca6:	69db      	ldr	r3, [r3, #28]
d03e0ca8:	4798      	blx	r3
d03e0caa:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d03e0cae:	2b00      	cmp	r3, #0
d03e0cb0:	f040 80d1 	bne.w	d03e0e56 <sid_midi_isr+0x282>
d03e0cb4:	f894 6030 	ldrb.w	r6, [r4, #48]	; 0x30
d03e0cb8:	2e00      	cmp	r6, #0
d03e0cba:	d047      	beq.n	d03e0d4c <sid_midi_isr+0x178>
d03e0cbc:	f894 2031 	ldrb.w	r2, [r4, #49]	; 0x31
d03e0cc0:	2a00      	cmp	r2, #0
d03e0cc2:	d043      	beq.n	d03e0d4c <sid_midi_isr+0x178>
d03e0cc4:	f894 3032 	ldrb.w	r3, [r4, #50]	; 0x32
d03e0cc8:	3301      	adds	r3, #1
d03e0cca:	b2db      	uxtb	r3, r3
d03e0ccc:	429a      	cmp	r2, r3
d03e0cce:	f884 3032 	strb.w	r3, [r4, #50]	; 0x32
d03e0cd2:	f240 82ff 	bls.w	d03e12d4 <sid_midi_isr+0x700>
d03e0cd6:	f994 2033 	ldrsb.w	r2, [r4, #51]	; 0x33
d03e0cda:	f8df 81f0 	ldr.w	r8, [pc, #496]	; d03e0ecc <sid_midi_isr+0x2f8>
d03e0cde:	4629      	mov	r1, r5
d03e0ce0:	4b7b      	ldr	r3, [pc, #492]	; (d03e0ed0 <sid_midi_isr+0x2fc>)
d03e0ce2:	8be0      	ldrh	r0, [r4, #30]
d03e0ce4:	eb03 1c47 	add.w	ip, r3, r7, lsl #5
d03e0ce8:	f898 3014 	ldrb.w	r3, [r8, #20]
d03e0cec:	f898 e015 	ldrb.w	lr, [r8, #21]
d03e0cf0:	fb16 0602 	smlabb	r6, r6, r2, r0
d03e0cf4:	f898 2016 	ldrb.w	r2, [r8, #22]
d03e0cf8:	4638      	mov	r0, r7
d03e0cfa:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d03e0cfe:	f898 e017 	ldrb.w	lr, [r8, #23]
d03e0d02:	f386 0610 	usat	r6, #16, r6
d03e0d06:	46e1      	mov	r9, ip
d03e0d08:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0d0c:	b2f2      	uxtb	r2, r6
d03e0d0e:	ea43 630e 	orr.w	r3, r3, lr, lsl #24
d03e0d12:	f80c 2005 	strb.w	r2, [ip, r5]
d03e0d16:	681b      	ldr	r3, [r3, #0]
d03e0d18:	69db      	ldr	r3, [r3, #28]
d03e0d1a:	4798      	blx	r3
d03e0d1c:	f898 3014 	ldrb.w	r3, [r8, #20]
d03e0d20:	f898 c015 	ldrb.w	ip, [r8, #21]
d03e0d24:	1c69      	adds	r1, r5, #1
d03e0d26:	f898 0016 	ldrb.w	r0, [r8, #22]
d03e0d2a:	f3c6 2207 	ubfx	r2, r6, #8, #8
d03e0d2e:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d03e0d32:	f898 c017 	ldrb.w	ip, [r8, #23]
d03e0d36:	b2c9      	uxtb	r1, r1
d03e0d38:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e0d3c:	4638      	mov	r0, r7
d03e0d3e:	f809 2001 	strb.w	r2, [r9, r1]
d03e0d42:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d03e0d46:	681b      	ldr	r3, [r3, #0]
d03e0d48:	69db      	ldr	r3, [r3, #28]
d03e0d4a:	4798      	blx	r3
d03e0d4c:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d03e0d50:	2b00      	cmp	r3, #0
d03e0d52:	d13a      	bne.n	d03e0dca <sid_midi_isr+0x1f6>
d03e0d54:	8923      	ldrh	r3, [r4, #8]
d03e0d56:	2b00      	cmp	r3, #0
d03e0d58:	d17a      	bne.n	d03e0e50 <sid_midi_isr+0x27c>
d03e0d5a:	f894 c00a 	ldrb.w	ip, [r4, #10]
d03e0d5e:	f1bc 0f00 	cmp.w	ip, #0
d03e0d62:	f43f af40 	beq.w	d03e0be6 <sid_midi_isr+0x12>
d03e0d66:	4b5a      	ldr	r3, [pc, #360]	; (d03e0ed0 <sid_midi_isr+0x2fc>)
d03e0d68:	f04f 0960 	mov.w	r9, #96	; 0x60
d03e0d6c:	9501      	str	r5, [sp, #4]
d03e0d6e:	eb03 1347 	add.w	r3, r3, r7, lsl #5
d03e0d72:	f8cd b00c 	str.w	fp, [sp, #12]
d03e0d76:	9302      	str	r3, [sp, #8]
d03e0d78:	6823      	ldr	r3, [r4, #0]
d03e0d7a:	6860      	ldr	r0, [r4, #4]
d03e0d7c:	781a      	ldrb	r2, [r3, #0]
d03e0d7e:	1a19      	subs	r1, r3, r0
d03e0d80:	f893 8001 	ldrb.w	r8, [r3, #1]
d03e0d84:	885e      	ldrh	r6, [r3, #2]
d03e0d86:	f5b1 7fc0 	cmp.w	r1, #384	; 0x180
d03e0d8a:	ea4f 0ea1 	mov.w	lr, r1, asr #2
d03e0d8e:	d201      	bcs.n	d03e0d94 <sid_midi_isr+0x1c0>
d03e0d90:	f884 e011 	strb.w	lr, [r4, #17]
d03e0d94:	2a15      	cmp	r2, #21
d03e0d96:	f200 82da 	bhi.w	d03e134e <sid_midi_isr+0x77a>
d03e0d9a:	e8df f012 	tbh	[pc, r2, lsl #1]
d03e0d9e:	009d      	.short	0x009d
d03e0da0:	015500cc 	.word	0x015500cc
d03e0da4:	011900d2 	.word	0x011900d2
d03e0da8:	01760168 	.word	0x01760168
d03e0dac:	021f01a2 	.word	0x021f01a2
d03e0db0:	01c101b2 	.word	0x01c101b2
d03e0db4:	02180205 	.word	0x02180205
d03e0db8:	028d01ae 	.word	0x028d01ae
d03e0dbc:	0276026e 	.word	0x0276026e
d03e0dc0:	02390229 	.word	0x02390229
d03e0dc4:	0258024c 	.word	0x0258024c
d03e0dc8:	007e      	.short	0x007e
d03e0dca:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d03e0dce:	2b00      	cmp	r3, #0
d03e0dd0:	d0c0      	beq.n	d03e0d54 <sid_midi_isr+0x180>
d03e0dd2:	7b62      	ldrb	r2, [r4, #13]
d03e0dd4:	2a00      	cmp	r2, #0
d03e0dd6:	d0bd      	beq.n	d03e0d54 <sid_midi_isr+0x180>
d03e0dd8:	f894 2036 	ldrb.w	r2, [r4, #54]	; 0x36
d03e0ddc:	3201      	adds	r2, #1
d03e0dde:	b2d2      	uxtb	r2, r2
d03e0de0:	4293      	cmp	r3, r2
d03e0de2:	f240 82a4 	bls.w	d03e132e <sid_midi_isr+0x75a>
d03e0de6:	f884 2036 	strb.w	r2, [r4, #54]	; 0x36
d03e0dea:	e7b3      	b.n	d03e0d54 <sid_midi_isr+0x180>
d03e0dec:	4e37      	ldr	r6, [pc, #220]	; (d03e0ecc <sid_midi_isr+0x2f8>)
d03e0dee:	4629      	mov	r1, r5
d03e0df0:	4b37      	ldr	r3, [pc, #220]	; (d03e0ed0 <sid_midi_isr+0x2fc>)
d03e0df2:	8be2      	ldrh	r2, [r4, #30]
d03e0df4:	eb03 1847 	add.w	r8, r3, r7, lsl #5
d03e0df8:	7d33      	ldrb	r3, [r6, #20]
d03e0dfa:	f896 c015 	ldrb.w	ip, [r6, #21]
d03e0dfe:	4402      	add	r2, r0
d03e0e00:	7db0      	ldrb	r0, [r6, #22]
d03e0e02:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d03e0e06:	f896 c017 	ldrb.w	ip, [r6, #23]
d03e0e0a:	f382 0210 	usat	r2, #16, r2
d03e0e0e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e0e12:	4638      	mov	r0, r7
d03e0e14:	83e2      	strh	r2, [r4, #30]
d03e0e16:	b2d2      	uxtb	r2, r2
d03e0e18:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d03e0e1c:	f808 2005 	strb.w	r2, [r8, r5]
d03e0e20:	681b      	ldr	r3, [r3, #0]
d03e0e22:	69db      	ldr	r3, [r3, #28]
d03e0e24:	4798      	blx	r3
d03e0e26:	7d33      	ldrb	r3, [r6, #20]
d03e0e28:	7d72      	ldrb	r2, [r6, #21]
d03e0e2a:	1c69      	adds	r1, r5, #1
d03e0e2c:	7db0      	ldrb	r0, [r6, #22]
d03e0e2e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0e32:	7df6      	ldrb	r6, [r6, #23]
d03e0e34:	8be2      	ldrh	r2, [r4, #30]
d03e0e36:	b2c9      	uxtb	r1, r1
d03e0e38:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e0e3c:	4638      	mov	r0, r7
d03e0e3e:	0a12      	lsrs	r2, r2, #8
d03e0e40:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d03e0e44:	f808 2001 	strb.w	r2, [r8, r1]
d03e0e48:	681b      	ldr	r3, [r3, #0]
d03e0e4a:	69db      	ldr	r3, [r3, #28]
d03e0e4c:	4798      	blx	r3
d03e0e4e:	e6f7      	b.n	d03e0c40 <sid_midi_isr+0x6c>
d03e0e50:	3b01      	subs	r3, #1
d03e0e52:	8123      	strh	r3, [r4, #8]
d03e0e54:	e6c7      	b.n	d03e0be6 <sid_midi_isr+0x12>
d03e0e56:	f894 6029 	ldrb.w	r6, [r4, #41]	; 0x29
d03e0e5a:	ebcb 03cb 	rsb	r3, fp, fp, lsl #3
d03e0e5e:	491a      	ldr	r1, [pc, #104]	; (d03e0ec8 <sid_midi_isr+0x2f4>)
d03e0e60:	462a      	mov	r2, r5
d03e0e62:	3601      	adds	r6, #1
d03e0e64:	eb01 03c3 	add.w	r3, r1, r3, lsl #3
d03e0e68:	fbaa 1006 	umull	r1, r0, sl, r6
d03e0e6c:	4639      	mov	r1, r7
d03e0e6e:	f400 7cff 	and.w	ip, r0, #510	; 0x1fe
d03e0e72:	eb0c 0c50 	add.w	ip, ip, r0, lsr #1
d03e0e76:	4620      	mov	r0, r4
d03e0e78:	eba6 060c 	sub.w	r6, r6, ip
d03e0e7c:	4433      	add	r3, r6
d03e0e7e:	f884 6029 	strb.w	r6, [r4, #41]	; 0x29
d03e0e82:	f993 302a 	ldrsb.w	r3, [r3, #42]	; 0x2a
d03e0e86:	f7ff fa1d 	bl	d03e02c4 <sid_voice_apply_note_offset>
d03e0e8a:	e713      	b.n	d03e0cb4 <sid_midi_isr+0xe0>
d03e0e8c:	4629      	mov	r1, r5
d03e0e8e:	4638      	mov	r0, r7
d03e0e90:	f7ff fabe 	bl	d03e0410 <sid_voice_hard_silence>
d03e0e94:	7426      	strb	r6, [r4, #16]
d03e0e96:	72a6      	strb	r6, [r4, #10]
d03e0e98:	e6a5      	b.n	d03e0be6 <sid_midi_isr+0x12>
d03e0e9a:	6823      	ldr	r3, [r4, #0]
d03e0e9c:	2e00      	cmp	r6, #0
d03e0e9e:	f000 80d0 	beq.w	d03e1042 <sid_midi_isr+0x46e>
d03e0ea2:	eba3 0386 	sub.w	r3, r3, r6, lsl #2
d03e0ea6:	6023      	str	r3, [r4, #0]
d03e0ea8:	f1bc 0f00 	cmp.w	ip, #0
d03e0eac:	f000 823c 	beq.w	d03e1328 <sid_midi_isr+0x754>
d03e0eb0:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
d03e0eb4:	f019 09ff 	ands.w	r9, r9, #255	; 0xff
d03e0eb8:	f47f af5e 	bne.w	d03e0d78 <sid_midi_isr+0x1a4>
d03e0ebc:	2301      	movs	r3, #1
d03e0ebe:	f8dd b00c 	ldr.w	fp, [sp, #12]
d03e0ec2:	8123      	strh	r3, [r4, #8]
d03e0ec4:	e68f      	b.n	d03e0be6 <sid_midi_isr+0x12>
d03e0ec6:	bf00      	nop
d03e0ec8:	d03ea814 	.word	0xd03ea814
d03e0ecc:	2001f000 	.word	0x2001f000
d03e0ed0:	d03ea328 	.word	0xd03ea328
d03e0ed4:	aaaaaaab 	.word	0xaaaaaaab
d03e0ed8:	9d01      	ldr	r5, [sp, #4]
d03e0eda:	7ba6      	ldrb	r6, [r4, #14]
d03e0edc:	f8dd b00c 	ldr.w	fp, [sp, #12]
d03e0ee0:	3504      	adds	r5, #4
d03e0ee2:	4ac0      	ldr	r2, [pc, #768]	; (d03e11e4 <sid_midi_isr+0x610>)
d03e0ee4:	4bc0      	ldr	r3, [pc, #768]	; (d03e11e8 <sid_midi_isr+0x614>)
d03e0ee6:	2e00      	cmp	r6, #0
d03e0ee8:	f000 8201 	beq.w	d03e12ee <sid_midi_isr+0x71a>
d03e0eec:	eb03 1647 	add.w	r6, r3, r7, lsl #5
d03e0ef0:	4638      	mov	r0, r7
d03e0ef2:	7d13      	ldrb	r3, [r2, #20]
d03e0ef4:	b2e9      	uxtb	r1, r5
d03e0ef6:	7d57      	ldrb	r7, [r2, #21]
d03e0ef8:	f892 c016 	ldrb.w	ip, [r2, #22]
d03e0efc:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d03e0f00:	7dd7      	ldrb	r7, [r2, #23]
d03e0f02:	5d72      	ldrb	r2, [r6, r5]
d03e0f04:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d03e0f08:	f002 02fe 	and.w	r2, r2, #254	; 0xfe
d03e0f0c:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d03e0f10:	5572      	strb	r2, [r6, r5]
d03e0f12:	681b      	ldr	r3, [r3, #0]
d03e0f14:	69db      	ldr	r3, [r3, #28]
d03e0f16:	4798      	blx	r3
d03e0f18:	2300      	movs	r3, #0
d03e0f1a:	2201      	movs	r2, #1
d03e0f1c:	8a61      	ldrh	r1, [r4, #18]
d03e0f1e:	85e3      	strh	r3, [r4, #46]	; 0x2e
d03e0f20:	73a2      	strb	r2, [r4, #14]
d03e0f22:	7422      	strb	r2, [r4, #16]
d03e0f24:	8121      	strh	r1, [r4, #8]
d03e0f26:	84a3      	strh	r3, [r4, #36]	; 0x24
d03e0f28:	f884 3028 	strb.w	r3, [r4, #40]	; 0x28
d03e0f2c:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
d03e0f30:	f884 3034 	strb.w	r3, [r4, #52]	; 0x34
d03e0f34:	e657      	b.n	d03e0be6 <sid_midi_isr+0x12>
d03e0f36:	3304      	adds	r3, #4
d03e0f38:	f8dd b00c 	ldr.w	fp, [sp, #12]
d03e0f3c:	8126      	strh	r6, [r4, #8]
d03e0f3e:	6023      	str	r3, [r4, #0]
d03e0f40:	e651      	b.n	d03e0be6 <sid_midi_isr+0x12>
d03e0f42:	f8df 82a0 	ldr.w	r8, [pc, #672]	; d03e11e4 <sid_midi_isr+0x610>
d03e0f46:	fa5f fb86 	uxtb.w	fp, r6
d03e0f4a:	9a01      	ldr	r2, [sp, #4]
d03e0f4c:	4638      	mov	r0, r7
d03e0f4e:	f898 e014 	ldrb.w	lr, [r8, #20]
d03e0f52:	f898 c015 	ldrb.w	ip, [r8, #21]
d03e0f56:	1d51      	adds	r1, r2, #5
d03e0f58:	9d02      	ldr	r5, [sp, #8]
d03e0f5a:	0a32      	lsrs	r2, r6, #8
d03e0f5c:	ea4e 230c 	orr.w	r3, lr, ip, lsl #8
d03e0f60:	f898 c016 	ldrb.w	ip, [r8, #22]
d03e0f64:	b2c9      	uxtb	r1, r1
d03e0f66:	f884 b00d 	strb.w	fp, [r4, #13]
d03e0f6a:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d03e0f6e:	f898 c017 	ldrb.w	ip, [r8, #23]
d03e0f72:	546a      	strb	r2, [r5, r1]
d03e0f74:	f006 060f 	and.w	r6, r6, #15
d03e0f78:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d03e0f7c:	681b      	ldr	r3, [r3, #0]
d03e0f7e:	69db      	ldr	r3, [r3, #28]
d03e0f80:	4798      	blx	r3
d03e0f82:	f898 3014 	ldrb.w	r3, [r8, #20]
d03e0f86:	f898 0015 	ldrb.w	r0, [r8, #21]
d03e0f8a:	f898 e016 	ldrb.w	lr, [r8, #22]
d03e0f8e:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03e0f92:	f898 c017 	ldrb.w	ip, [r8, #23]
d03e0f96:	9a01      	ldr	r2, [sp, #4]
d03e0f98:	4638      	mov	r0, r7
d03e0f9a:	ea43 430e 	orr.w	r3, r3, lr, lsl #16
d03e0f9e:	1d91      	adds	r1, r2, #6
d03e0fa0:	465a      	mov	r2, fp
d03e0fa2:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d03e0fa6:	b2c9      	uxtb	r1, r1
d03e0fa8:	681b      	ldr	r3, [r3, #0]
d03e0faa:	f805 b001 	strb.w	fp, [r5, r1]
d03e0fae:	69db      	ldr	r3, [r3, #28]
d03e0fb0:	4798      	blx	r3
d03e0fb2:	4639      	mov	r1, r7
d03e0fb4:	4620      	mov	r0, r4
d03e0fb6:	9a01      	ldr	r2, [sp, #4]
d03e0fb8:	f7ff f934 	bl	d03e0224 <sid_voice_write_scaled_sr>
d03e0fbc:	6821      	ldr	r1, [r4, #0]
d03e0fbe:	488b      	ldr	r0, [pc, #556]	; (d03e11ec <sid_midi_isr+0x618>)
d03e0fc0:	3104      	adds	r1, #4
d03e0fc2:	f894 c00a 	ldrb.w	ip, [r4, #10]
d03e0fc6:	f830 3016 	ldrh.w	r3, [r0, r6, lsl #1]
d03e0fca:	6021      	str	r1, [r4, #0]
d03e0fcc:	8263      	strh	r3, [r4, #18]
d03e0fce:	e76b      	b.n	d03e0ea8 <sid_midi_isr+0x2d4>
d03e0fd0:	f8df 8210 	ldr.w	r8, [pc, #528]	; d03e11e4 <sid_midi_isr+0x610>
d03e0fd4:	f3c6 060b 	ubfx	r6, r6, #0, #12
d03e0fd8:	9901      	ldr	r1, [sp, #4]
d03e0fda:	4638      	mov	r0, r7
d03e0fdc:	f898 3014 	ldrb.w	r3, [r8, #20]
d03e0fe0:	b2f2      	uxtb	r2, r6
d03e0fe2:	f898 c015 	ldrb.w	ip, [r8, #21]
d03e0fe6:	3102      	adds	r1, #2
d03e0fe8:	84e6      	strh	r6, [r4, #38]	; 0x26
d03e0fea:	ea43 2c0c 	orr.w	ip, r3, ip, lsl #8
d03e0fee:	f898 6016 	ldrb.w	r6, [r8, #22]
d03e0ff2:	b2c9      	uxtb	r1, r1
d03e0ff4:	9d02      	ldr	r5, [sp, #8]
d03e0ff6:	ea4c 4306 	orr.w	r3, ip, r6, lsl #16
d03e0ffa:	f898 6017 	ldrb.w	r6, [r8, #23]
d03e0ffe:	546a      	strb	r2, [r5, r1]
d03e1000:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d03e1004:	681b      	ldr	r3, [r3, #0]
d03e1006:	69db      	ldr	r3, [r3, #28]
d03e1008:	4798      	blx	r3
d03e100a:	f898 3014 	ldrb.w	r3, [r8, #20]
d03e100e:	9901      	ldr	r1, [sp, #4]
d03e1010:	4638      	mov	r0, r7
d03e1012:	f898 2015 	ldrb.w	r2, [r8, #21]
d03e1016:	3103      	adds	r1, #3
d03e1018:	f898 c016 	ldrb.w	ip, [r8, #22]
d03e101c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1020:	f898 6017 	ldrb.w	r6, [r8, #23]
d03e1024:	8ce2      	ldrh	r2, [r4, #38]	; 0x26
d03e1026:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d03e102a:	b2c9      	uxtb	r1, r1
d03e102c:	f3c2 2203 	ubfx	r2, r2, #8, #4
d03e1030:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d03e1034:	546a      	strb	r2, [r5, r1]
d03e1036:	681b      	ldr	r3, [r3, #0]
d03e1038:	69db      	ldr	r3, [r3, #28]
d03e103a:	4798      	blx	r3
d03e103c:	6823      	ldr	r3, [r4, #0]
d03e103e:	f894 c00a 	ldrb.w	ip, [r4, #10]
d03e1042:	3304      	adds	r3, #4
d03e1044:	6023      	str	r3, [r4, #0]
d03e1046:	e72f      	b.n	d03e0ea8 <sid_midi_isr+0x2d4>
d03e1048:	4866      	ldr	r0, [pc, #408]	; (d03e11e4 <sid_midi_isr+0x610>)
d03e104a:	b2f2      	uxtb	r2, r6
d03e104c:	9b01      	ldr	r3, [sp, #4]
d03e104e:	9d02      	ldr	r5, [sp, #8]
d03e1050:	1d19      	adds	r1, r3, #4
d03e1052:	7d03      	ldrb	r3, [r0, #20]
d03e1054:	7d46      	ldrb	r6, [r0, #21]
d03e1056:	b2c9      	uxtb	r1, r1
d03e1058:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d03e105c:	7d86      	ldrb	r6, [r0, #22]
d03e105e:	7dc0      	ldrb	r0, [r0, #23]
d03e1060:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d03e1064:	546a      	strb	r2, [r5, r1]
d03e1066:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d03e106a:	4638      	mov	r0, r7
d03e106c:	e7e3      	b.n	d03e1036 <sid_midi_isr+0x462>
d03e106e:	b273      	sxtb	r3, r6
d03e1070:	9a01      	ldr	r2, [sp, #4]
d03e1072:	4639      	mov	r1, r7
d03e1074:	4620      	mov	r0, r4
d03e1076:	f884 3023 	strb.w	r3, [r4, #35]	; 0x23
d03e107a:	f7ff f923 	bl	d03e02c4 <sid_voice_apply_note_offset>
d03e107e:	6823      	ldr	r3, [r4, #0]
d03e1080:	f894 c00a 	ldrb.w	ip, [r4, #10]
d03e1084:	3304      	adds	r3, #4
d03e1086:	6023      	str	r3, [r4, #0]
d03e1088:	e70e      	b.n	d03e0ea8 <sid_midi_isr+0x2d4>
d03e108a:	8ce3      	ldrh	r3, [r4, #38]	; 0x26
d03e108c:	441e      	add	r6, r3
d03e108e:	b2b6      	uxth	r6, r6
d03e1090:	f5b6 5f80 	cmp.w	r6, #4096	; 0x1000
d03e1094:	f0c0 8145 	bcc.w	d03e1322 <sid_midi_isr+0x74e>
d03e1098:	f640 73ff 	movw	r3, #4095	; 0xfff
d03e109c:	22ff      	movs	r2, #255	; 0xff
d03e109e:	84e3      	strh	r3, [r4, #38]	; 0x26
d03e10a0:	9901      	ldr	r1, [sp, #4]
d03e10a2:	4e50      	ldr	r6, [pc, #320]	; (d03e11e4 <sid_midi_isr+0x610>)
d03e10a4:	3102      	adds	r1, #2
d03e10a6:	f896 c014 	ldrb.w	ip, [r6, #20]
d03e10aa:	b2c9      	uxtb	r1, r1
d03e10ac:	7d70      	ldrb	r0, [r6, #21]
d03e10ae:	9d02      	ldr	r5, [sp, #8]
d03e10b0:	ea4c 2300 	orr.w	r3, ip, r0, lsl #8
d03e10b4:	7db0      	ldrb	r0, [r6, #22]
d03e10b6:	f896 c017 	ldrb.w	ip, [r6, #23]
d03e10ba:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e10be:	546a      	strb	r2, [r5, r1]
d03e10c0:	4638      	mov	r0, r7
d03e10c2:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d03e10c6:	681b      	ldr	r3, [r3, #0]
d03e10c8:	69db      	ldr	r3, [r3, #28]
d03e10ca:	4798      	blx	r3
d03e10cc:	7d33      	ldrb	r3, [r6, #20]
d03e10ce:	9901      	ldr	r1, [sp, #4]
d03e10d0:	4638      	mov	r0, r7
d03e10d2:	7d72      	ldrb	r2, [r6, #21]
d03e10d4:	3103      	adds	r1, #3
d03e10d6:	f896 c016 	ldrb.w	ip, [r6, #22]
d03e10da:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e10de:	7df6      	ldrb	r6, [r6, #23]
d03e10e0:	e7a0      	b.n	d03e1024 <sid_midi_isr+0x450>
d03e10e2:	8ce3      	ldrh	r3, [r4, #38]	; 0x26
d03e10e4:	429e      	cmp	r6, r3
d03e10e6:	f200 80ff 	bhi.w	d03e12e8 <sid_midi_isr+0x714>
d03e10ea:	1b9b      	subs	r3, r3, r6
d03e10ec:	b298      	uxth	r0, r3
d03e10ee:	b2da      	uxtb	r2, r3
d03e10f0:	9901      	ldr	r1, [sp, #4]
d03e10f2:	4e3c      	ldr	r6, [pc, #240]	; (d03e11e4 <sid_midi_isr+0x610>)
d03e10f4:	3102      	adds	r1, #2
d03e10f6:	84e0      	strh	r0, [r4, #38]	; 0x26
d03e10f8:	e7d5      	b.n	d03e10a6 <sid_midi_isr+0x4d2>
d03e10fa:	3304      	adds	r3, #4
d03e10fc:	85e6      	strh	r6, [r4, #46]	; 0x2e
d03e10fe:	6023      	str	r3, [r4, #0]
d03e1100:	e6d2      	b.n	d03e0ea8 <sid_midi_isr+0x2d4>
d03e1102:	b146      	cbz	r6, d03e1116 <sid_midi_isr+0x542>
d03e1104:	0a31      	lsrs	r1, r6, #8
d03e1106:	2200      	movs	r2, #0
d03e1108:	f884 602c 	strb.w	r6, [r4, #44]	; 0x2c
d03e110c:	2601      	movs	r6, #1
d03e110e:	f884 102b 	strb.w	r1, [r4, #43]	; 0x2b
d03e1112:	f884 202a 	strb.w	r2, [r4, #42]	; 0x2a
d03e1116:	3304      	adds	r3, #4
d03e1118:	f884 6028 	strb.w	r6, [r4, #40]	; 0x28
d03e111c:	6023      	str	r3, [r4, #0]
d03e111e:	e6c3      	b.n	d03e0ea8 <sid_midi_isr+0x2d4>
d03e1120:	f8df b0c0 	ldr.w	fp, [pc, #192]	; d03e11e4 <sid_midi_isr+0x610>
d03e1124:	f006 0207 	and.w	r2, r6, #7
d03e1128:	9d02      	ldr	r5, [sp, #8]
d03e112a:	2115      	movs	r1, #21
d03e112c:	f89b 3014 	ldrb.w	r3, [fp, #20]
d03e1130:	4638      	mov	r0, r7
d03e1132:	f89b c015 	ldrb.w	ip, [fp, #21]
d03e1136:	756a      	strb	r2, [r5, #21]
d03e1138:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d03e113c:	f89b c016 	ldrb.w	ip, [fp, #22]
d03e1140:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d03e1144:	f89b c017 	ldrb.w	ip, [fp, #23]
d03e1148:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d03e114c:	681b      	ldr	r3, [r3, #0]
d03e114e:	69db      	ldr	r3, [r3, #28]
d03e1150:	4798      	blx	r3
d03e1152:	f89b 3014 	ldrb.w	r3, [fp, #20]
d03e1156:	f89b c015 	ldrb.w	ip, [fp, #21]
d03e115a:	f3c6 02c7 	ubfx	r2, r6, #3, #8
d03e115e:	f89b 0016 	ldrb.w	r0, [fp, #22]
d03e1162:	2116      	movs	r1, #22
d03e1164:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d03e1168:	f89b c017 	ldrb.w	ip, [fp, #23]
d03e116c:	9d02      	ldr	r5, [sp, #8]
d03e116e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e1172:	4638      	mov	r0, r7
d03e1174:	75aa      	strb	r2, [r5, #22]
d03e1176:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d03e117a:	681b      	ldr	r3, [r3, #0]
d03e117c:	69db      	ldr	r3, [r3, #28]
d03e117e:	4798      	blx	r3
d03e1180:	f89b 3014 	ldrb.w	r3, [fp, #20]
d03e1184:	f89b 0015 	ldrb.w	r0, [fp, #21]
d03e1188:	4642      	mov	r2, r8
d03e118a:	f89b 6016 	ldrb.w	r6, [fp, #22]
d03e118e:	2118      	movs	r1, #24
d03e1190:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03e1194:	f89b c017 	ldrb.w	ip, [fp, #23]
d03e1198:	4638      	mov	r0, r7
d03e119a:	f885 8018 	strb.w	r8, [r5, #24]
d03e119e:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d03e11a2:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d03e11a6:	e746      	b.n	d03e1036 <sid_midi_isr+0x462>
d03e11a8:	2e00      	cmp	r6, #0
d03e11aa:	f43f ae87 	beq.w	d03e0ebc <sid_midi_isr+0x2e8>
d03e11ae:	f1b8 0f00 	cmp.w	r8, #0
d03e11b2:	f43f ae76 	beq.w	d03e0ea2 <sid_midi_isr+0x2ce>
d03e11b6:	7d22      	ldrb	r2, [r4, #20]
d03e11b8:	2a00      	cmp	r2, #0
d03e11ba:	bf18      	it	ne
d03e11bc:	4690      	movne	r8, r2
d03e11be:	f108 32ff 	add.w	r2, r8, #4294967295	; 0xffffffff
d03e11c2:	b2d2      	uxtb	r2, r2
d03e11c4:	7522      	strb	r2, [r4, #20]
d03e11c6:	2a00      	cmp	r2, #0
d03e11c8:	f43f af3b 	beq.w	d03e1042 <sid_midi_isr+0x46e>
d03e11cc:	e669      	b.n	d03e0ea2 <sid_midi_isr+0x2ce>
d03e11ce:	45b6      	cmp	lr, r6
d03e11d0:	f43f af37 	beq.w	d03e1042 <sid_midi_isr+0x46e>
d03e11d4:	eb00 0086 	add.w	r0, r0, r6, lsl #2
d03e11d8:	6020      	str	r0, [r4, #0]
d03e11da:	e665      	b.n	d03e0ea8 <sid_midi_isr+0x2d4>
d03e11dc:	3304      	adds	r3, #4
d03e11de:	84a6      	strh	r6, [r4, #36]	; 0x24
d03e11e0:	6023      	str	r3, [r4, #0]
d03e11e2:	e661      	b.n	d03e0ea8 <sid_midi_isr+0x2d4>
d03e11e4:	2001f000 	.word	0x2001f000
d03e11e8:	d03ea328 	.word	0xd03ea328
d03e11ec:	d03e908c 	.word	0xd03e908c
d03e11f0:	9a03      	ldr	r2, [sp, #12]
d03e11f2:	f008 0803 	and.w	r8, r8, #3
d03e11f6:	4958      	ldr	r1, [pc, #352]	; (d03e1358 <sid_midi_isr+0x784>)
d03e11f8:	3304      	adds	r3, #4
d03e11fa:	ebc2 02c2 	rsb	r2, r2, r2, lsl #3
d03e11fe:	eb08 0282 	add.w	r2, r8, r2, lsl #2
d03e1202:	eb01 0242 	add.w	r2, r1, r2, lsl #1
d03e1206:	82d6      	strh	r6, [r2, #22]
d03e1208:	6023      	str	r3, [r4, #0]
d03e120a:	f894 c00a 	ldrb.w	ip, [r4, #10]
d03e120e:	e64b      	b.n	d03e0ea8 <sid_midi_isr+0x2d4>
d03e1210:	9a03      	ldr	r2, [sp, #12]
d03e1212:	f008 0803 	and.w	r8, r8, #3
d03e1216:	4950      	ldr	r1, [pc, #320]	; (d03e1358 <sid_midi_isr+0x784>)
d03e1218:	3304      	adds	r3, #4
d03e121a:	ebc2 02c2 	rsb	r2, r2, r2, lsl #3
d03e121e:	eb08 0282 	add.w	r2, r8, r2, lsl #2
d03e1222:	3208      	adds	r2, #8
d03e1224:	eb01 0242 	add.w	r2, r1, r2, lsl #1
d03e1228:	88d1      	ldrh	r1, [r2, #6]
d03e122a:	440e      	add	r6, r1
d03e122c:	80d6      	strh	r6, [r2, #6]
d03e122e:	6023      	str	r3, [r4, #0]
d03e1230:	f894 c00a 	ldrb.w	ip, [r4, #10]
d03e1234:	e638      	b.n	d03e0ea8 <sid_midi_isr+0x2d4>
d03e1236:	7ba2      	ldrb	r2, [r4, #14]
d03e1238:	2a00      	cmp	r2, #0
d03e123a:	f43f af02 	beq.w	d03e1042 <sid_midi_isr+0x46e>
d03e123e:	6823      	ldr	r3, [r4, #0]
d03e1240:	2e00      	cmp	r6, #0
d03e1242:	f43f aefe 	beq.w	d03e1042 <sid_midi_isr+0x46e>
d03e1246:	eb03 0386 	add.w	r3, r3, r6, lsl #2
d03e124a:	6023      	str	r3, [r4, #0]
d03e124c:	e62c      	b.n	d03e0ea8 <sid_midi_isr+0x2d4>
d03e124e:	9a03      	ldr	r2, [sp, #12]
d03e1250:	f008 0803 	and.w	r8, r8, #3
d03e1254:	4840      	ldr	r0, [pc, #256]	; (d03e1358 <sid_midi_isr+0x784>)
d03e1256:	f346 2107 	sbfx	r1, r6, #8, #8
d03e125a:	ebc2 02c2 	rsb	r2, r2, r2, lsl #3
d03e125e:	eb08 0282 	add.w	r2, r8, r2, lsl #2
d03e1262:	eb00 0242 	add.w	r2, r0, r2, lsl #1
d03e1266:	f9b2 0016 	ldrsh.w	r0, [r2, #22]
d03e126a:	4288      	cmp	r0, r1
d03e126c:	f73f aee9 	bgt.w	d03e1042 <sid_midi_isr+0x46e>
d03e1270:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
d03e1274:	6823      	ldr	r3, [r4, #0]
d03e1276:	d1e6      	bne.n	d03e1246 <sid_midi_isr+0x672>
d03e1278:	e6e3      	b.n	d03e1042 <sid_midi_isr+0x46e>
d03e127a:	7ba2      	ldrb	r2, [r4, #14]
d03e127c:	2a00      	cmp	r2, #0
d03e127e:	f47f aee0 	bne.w	d03e1042 <sid_midi_isr+0x46e>
d03e1282:	2e00      	cmp	r6, #0
d03e1284:	f47f ae0d 	bne.w	d03e0ea2 <sid_midi_isr+0x2ce>
d03e1288:	e618      	b.n	d03e0ebc <sid_midi_isr+0x2e8>
d03e128a:	2200      	movs	r2, #0
d03e128c:	0a30      	lsrs	r0, r6, #8
d03e128e:	7b61      	ldrb	r1, [r4, #13]
d03e1290:	f884 6035 	strb.w	r6, [r4, #53]	; 0x35
d03e1294:	f884 0034 	strb.w	r0, [r4, #52]	; 0x34
d03e1298:	f884 2036 	strb.w	r2, [r4, #54]	; 0x36
d03e129c:	f884 2037 	strb.w	r2, [r4, #55]	; 0x37
d03e12a0:	2900      	cmp	r1, #0
d03e12a2:	f43f aece 	beq.w	d03e1042 <sid_midi_isr+0x46e>
d03e12a6:	9a01      	ldr	r2, [sp, #4]
d03e12a8:	4639      	mov	r1, r7
d03e12aa:	4620      	mov	r0, r4
d03e12ac:	f7fe ffba 	bl	d03e0224 <sid_voice_write_scaled_sr>
d03e12b0:	f894 c00a 	ldrb.w	ip, [r4, #10]
d03e12b4:	6823      	ldr	r3, [r4, #0]
d03e12b6:	e6c4      	b.n	d03e1042 <sid_midi_isr+0x46e>
d03e12b8:	3304      	adds	r3, #4
d03e12ba:	0a31      	lsrs	r1, r6, #8
d03e12bc:	2200      	movs	r2, #0
d03e12be:	f884 6031 	strb.w	r6, [r4, #49]	; 0x31
d03e12c2:	6023      	str	r3, [r4, #0]
d03e12c4:	2301      	movs	r3, #1
d03e12c6:	f884 1030 	strb.w	r1, [r4, #48]	; 0x30
d03e12ca:	f884 2032 	strb.w	r2, [r4, #50]	; 0x32
d03e12ce:	f884 3033 	strb.w	r3, [r4, #51]	; 0x33
d03e12d2:	e5e9      	b.n	d03e0ea8 <sid_midi_isr+0x2d4>
d03e12d4:	f894 2033 	ldrb.w	r2, [r4, #51]	; 0x33
d03e12d8:	2300      	movs	r3, #0
d03e12da:	4252      	negs	r2, r2
d03e12dc:	f884 3032 	strb.w	r3, [r4, #50]	; 0x32
d03e12e0:	b252      	sxtb	r2, r2
d03e12e2:	f884 2033 	strb.w	r2, [r4, #51]	; 0x33
d03e12e6:	e4f8      	b.n	d03e0cda <sid_midi_isr+0x106>
d03e12e8:	2200      	movs	r2, #0
d03e12ea:	4610      	mov	r0, r2
d03e12ec:	e700      	b.n	d03e10f0 <sid_midi_isr+0x51c>
d03e12ee:	eb03 1c47 	add.w	ip, r3, r7, lsl #5
d03e12f2:	4638      	mov	r0, r7
d03e12f4:	7d13      	ldrb	r3, [r2, #20]
d03e12f6:	b2e9      	uxtb	r1, r5
d03e12f8:	7d57      	ldrb	r7, [r2, #21]
d03e12fa:	f892 e016 	ldrb.w	lr, [r2, #22]
d03e12fe:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d03e1302:	7dd7      	ldrb	r7, [r2, #23]
d03e1304:	f81c 2005 	ldrb.w	r2, [ip, r5]
d03e1308:	ea43 430e 	orr.w	r3, r3, lr, lsl #16
d03e130c:	f002 02fe 	and.w	r2, r2, #254	; 0xfe
d03e1310:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d03e1314:	f80c 2005 	strb.w	r2, [ip, r5]
d03e1318:	681b      	ldr	r3, [r3, #0]
d03e131a:	69db      	ldr	r3, [r3, #28]
d03e131c:	4798      	blx	r3
d03e131e:	72a6      	strb	r6, [r4, #10]
d03e1320:	e461      	b.n	d03e0be6 <sid_midi_isr+0x12>
d03e1322:	b2f2      	uxtb	r2, r6
d03e1324:	84e6      	strh	r6, [r4, #38]	; 0x26
d03e1326:	e6bb      	b.n	d03e10a0 <sid_midi_isr+0x4cc>
d03e1328:	f8dd b00c 	ldr.w	fp, [sp, #12]
d03e132c:	e45b      	b.n	d03e0be6 <sid_midi_isr+0x12>
d03e132e:	f894 3037 	ldrb.w	r3, [r4, #55]	; 0x37
d03e1332:	2000      	movs	r0, #0
d03e1334:	462a      	mov	r2, r5
d03e1336:	4639      	mov	r1, r7
d03e1338:	fab3 f383 	clz	r3, r3
d03e133c:	f884 0036 	strb.w	r0, [r4, #54]	; 0x36
d03e1340:	4620      	mov	r0, r4
d03e1342:	095b      	lsrs	r3, r3, #5
d03e1344:	f884 3037 	strb.w	r3, [r4, #55]	; 0x37
d03e1348:	f7fe ff6c 	bl	d03e0224 <sid_voice_write_scaled_sr>
d03e134c:	e502      	b.n	d03e0d54 <sid_midi_isr+0x180>
d03e134e:	2300      	movs	r3, #0
d03e1350:	f8dd b00c 	ldr.w	fp, [sp, #12]
d03e1354:	72a3      	strb	r3, [r4, #10]
d03e1356:	e446      	b.n	d03e0be6 <sid_midi_isr+0x12>
d03e1358:	d03ea814 	.word	0xd03ea814

d03e135c <midi_effective_velocity>:
d03e135c:	4b26      	ldr	r3, [pc, #152]	; (d03e13f8 <midi_effective_velocity+0x9c>)
d03e135e:	2809      	cmp	r0, #9
d03e1360:	4a26      	ldr	r2, [pc, #152]	; (d03e13fc <midi_effective_velocity+0xa0>)
d03e1362:	b4f0      	push	{r4, r5, r6, r7}
d03e1364:	5c1c      	ldrb	r4, [r3, r0]
d03e1366:	4b26      	ldr	r3, [pc, #152]	; (d03e1400 <midi_effective_velocity+0xa4>)
d03e1368:	fb14 fc01 	smulbb	ip, r4, r1
d03e136c:	4d25      	ldr	r5, [pc, #148]	; (d03e1404 <midi_effective_velocity+0xa8>)
d03e136e:	881e      	ldrh	r6, [r3, #0]
d03e1370:	f10c 0c3f 	add.w	ip, ip, #63	; 0x3f
d03e1374:	5c2d      	ldrb	r5, [r5, r0]
d03e1376:	fba2 730c 	umull	r7, r3, r2, ip
d03e137a:	4f23      	ldr	r7, [pc, #140]	; (d03e1408 <midi_effective_velocity+0xac>)
d03e137c:	ebac 0c03 	sub.w	ip, ip, r3
d03e1380:	eb03 035c 	add.w	r3, r3, ip, lsr #1
d03e1384:	ea4f 1393 	mov.w	r3, r3, lsr #6
d03e1388:	fb05 f303 	mul.w	r3, r5, r3
d03e138c:	f103 033f 	add.w	r3, r3, #63	; 0x3f
d03e1390:	fba2 c203 	umull	ip, r2, r2, r3
d03e1394:	eba3 0302 	sub.w	r3, r3, r2
d03e1398:	eb02 0353 	add.w	r3, r2, r3, lsr #1
d03e139c:	ea4f 1393 	mov.w	r3, r3, lsr #6
d03e13a0:	fb06 f303 	mul.w	r3, r6, r3
d03e13a4:	f103 0332 	add.w	r3, r3, #50	; 0x32
d03e13a8:	fba7 2303 	umull	r2, r3, r7, r3
d03e13ac:	ea4f 1353 	mov.w	r3, r3, lsr #5
d03e13b0:	d00f      	beq.n	d03e13d2 <midi_effective_velocity+0x76>
d03e13b2:	b943      	cbnz	r3, d03e13c6 <midi_effective_velocity+0x6a>
d03e13b4:	b139      	cbz	r1, d03e13c6 <midi_effective_velocity+0x6a>
d03e13b6:	2d00      	cmp	r5, #0
d03e13b8:	bf18      	it	ne
d03e13ba:	2c00      	cmpne	r4, #0
d03e13bc:	d000      	beq.n	d03e13c0 <midi_effective_velocity+0x64>
d03e13be:	b98e      	cbnz	r6, d03e13e4 <midi_effective_velocity+0x88>
d03e13c0:	2000      	movs	r0, #0
d03e13c2:	bcf0      	pop	{r4, r5, r6, r7}
d03e13c4:	4770      	bx	lr
d03e13c6:	2bff      	cmp	r3, #255	; 0xff
d03e13c8:	bf28      	it	cs
d03e13ca:	23ff      	movcs	r3, #255	; 0xff
d03e13cc:	b2d8      	uxtb	r0, r3
d03e13ce:	bcf0      	pop	{r4, r5, r6, r7}
d03e13d0:	4770      	bx	lr
d03e13d2:	4a0e      	ldr	r2, [pc, #56]	; (d03e140c <midi_effective_velocity+0xb0>)
d03e13d4:	8812      	ldrh	r2, [r2, #0]
d03e13d6:	fb03 f302 	mul.w	r3, r3, r2
d03e13da:	3332      	adds	r3, #50	; 0x32
d03e13dc:	fba7 2303 	umull	r2, r3, r7, r3
d03e13e0:	095b      	lsrs	r3, r3, #5
d03e13e2:	e7e6      	b.n	d03e13b2 <midi_effective_velocity+0x56>
d03e13e4:	2809      	cmp	r0, #9
d03e13e6:	d001      	beq.n	d03e13ec <midi_effective_velocity+0x90>
d03e13e8:	2001      	movs	r0, #1
d03e13ea:	e7f0      	b.n	d03e13ce <midi_effective_velocity+0x72>
d03e13ec:	4b07      	ldr	r3, [pc, #28]	; (d03e140c <midi_effective_velocity+0xb0>)
d03e13ee:	8818      	ldrh	r0, [r3, #0]
d03e13f0:	3800      	subs	r0, #0
d03e13f2:	bf18      	it	ne
d03e13f4:	2001      	movne	r0, #1
d03e13f6:	e7ea      	b.n	d03e13ce <midi_effective_velocity+0x72>
d03e13f8:	d03ea3b4 	.word	0xd03ea3b4
d03e13fc:	02040811 	.word	0x02040811
d03e1400:	d03ea5d2 	.word	0xd03ea5d2
d03e1404:	d03ea394 	.word	0xd03ea394
d03e1408:	51eb851f 	.word	0x51eb851f
d03e140c:	d03ea3ca 	.word	0xd03ea3ca

d03e1410 <midi_update_active_channel_volume>:
d03e1410:	b538      	push	{r3, r4, r5, lr}
d03e1412:	4c2e      	ldr	r4, [pc, #184]	; (d03e14cc <midi_update_active_channel_volume+0xbc>)
d03e1414:	4605      	mov	r5, r0
d03e1416:	7823      	ldrb	r3, [r4, #0]
d03e1418:	b113      	cbz	r3, d03e1420 <midi_update_active_channel_volume+0x10>
d03e141a:	7863      	ldrb	r3, [r4, #1]
d03e141c:	4283      	cmp	r3, r0
d03e141e:	d028      	beq.n	d03e1472 <midi_update_active_channel_volume+0x62>
d03e1420:	7a23      	ldrb	r3, [r4, #8]
d03e1422:	b113      	cbz	r3, d03e142a <midi_update_active_channel_volume+0x1a>
d03e1424:	7a63      	ldrb	r3, [r4, #9]
d03e1426:	42ab      	cmp	r3, r5
d03e1428:	d02b      	beq.n	d03e1482 <midi_update_active_channel_volume+0x72>
d03e142a:	7c23      	ldrb	r3, [r4, #16]
d03e142c:	b113      	cbz	r3, d03e1434 <midi_update_active_channel_volume+0x24>
d03e142e:	7c63      	ldrb	r3, [r4, #17]
d03e1430:	42ab      	cmp	r3, r5
d03e1432:	d02f      	beq.n	d03e1494 <midi_update_active_channel_volume+0x84>
d03e1434:	7e23      	ldrb	r3, [r4, #24]
d03e1436:	b113      	cbz	r3, d03e143e <midi_update_active_channel_volume+0x2e>
d03e1438:	7e63      	ldrb	r3, [r4, #25]
d03e143a:	42ab      	cmp	r3, r5
d03e143c:	d033      	beq.n	d03e14a6 <midi_update_active_channel_volume+0x96>
d03e143e:	f894 3020 	ldrb.w	r3, [r4, #32]
d03e1442:	b11b      	cbz	r3, d03e144c <midi_update_active_channel_volume+0x3c>
d03e1444:	f894 3021 	ldrb.w	r3, [r4, #33]	; 0x21
d03e1448:	42ab      	cmp	r3, r5
d03e144a:	d035      	beq.n	d03e14b8 <midi_update_active_channel_volume+0xa8>
d03e144c:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d03e1450:	b11b      	cbz	r3, d03e145a <midi_update_active_channel_volume+0x4a>
d03e1452:	f894 3029 	ldrb.w	r3, [r4, #41]	; 0x29
d03e1456:	42ab      	cmp	r3, r5
d03e1458:	d000      	beq.n	d03e145c <midi_update_active_channel_volume+0x4c>
d03e145a:	bd38      	pop	{r3, r4, r5, pc}
d03e145c:	f894 102b 	ldrb.w	r1, [r4, #43]	; 0x2b
d03e1460:	4628      	mov	r0, r5
d03e1462:	f7ff ff7b 	bl	d03e135c <midi_effective_velocity>
d03e1466:	4601      	mov	r1, r0
d03e1468:	2005      	movs	r0, #5
d03e146a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d03e146e:	f7ff bae1 	b.w	d03e0a34 <sid_voice_set_velocity>
d03e1472:	78e1      	ldrb	r1, [r4, #3]
d03e1474:	f7ff ff72 	bl	d03e135c <midi_effective_velocity>
d03e1478:	4601      	mov	r1, r0
d03e147a:	2000      	movs	r0, #0
d03e147c:	f7ff fada 	bl	d03e0a34 <sid_voice_set_velocity>
d03e1480:	e7ce      	b.n	d03e1420 <midi_update_active_channel_volume+0x10>
d03e1482:	7ae1      	ldrb	r1, [r4, #11]
d03e1484:	4628      	mov	r0, r5
d03e1486:	f7ff ff69 	bl	d03e135c <midi_effective_velocity>
d03e148a:	4601      	mov	r1, r0
d03e148c:	2001      	movs	r0, #1
d03e148e:	f7ff fad1 	bl	d03e0a34 <sid_voice_set_velocity>
d03e1492:	e7ca      	b.n	d03e142a <midi_update_active_channel_volume+0x1a>
d03e1494:	7ce1      	ldrb	r1, [r4, #19]
d03e1496:	4628      	mov	r0, r5
d03e1498:	f7ff ff60 	bl	d03e135c <midi_effective_velocity>
d03e149c:	4601      	mov	r1, r0
d03e149e:	2002      	movs	r0, #2
d03e14a0:	f7ff fac8 	bl	d03e0a34 <sid_voice_set_velocity>
d03e14a4:	e7c6      	b.n	d03e1434 <midi_update_active_channel_volume+0x24>
d03e14a6:	7ee1      	ldrb	r1, [r4, #27]
d03e14a8:	4628      	mov	r0, r5
d03e14aa:	f7ff ff57 	bl	d03e135c <midi_effective_velocity>
d03e14ae:	4601      	mov	r1, r0
d03e14b0:	2003      	movs	r0, #3
d03e14b2:	f7ff fabf 	bl	d03e0a34 <sid_voice_set_velocity>
d03e14b6:	e7c2      	b.n	d03e143e <midi_update_active_channel_volume+0x2e>
d03e14b8:	f894 1023 	ldrb.w	r1, [r4, #35]	; 0x23
d03e14bc:	4628      	mov	r0, r5
d03e14be:	f7ff ff4d 	bl	d03e135c <midi_effective_velocity>
d03e14c2:	4601      	mov	r1, r0
d03e14c4:	2004      	movs	r0, #4
d03e14c6:	f7ff fab5 	bl	d03e0a34 <sid_voice_set_velocity>
d03e14ca:	e7bf      	b.n	d03e144c <midi_update_active_channel_volume+0x3c>
d03e14cc:	d03ea5f0 	.word	0xd03ea5f0

d03e14d0 <the50hzISR>:
d03e14d0:	b510      	push	{r4, lr}
d03e14d2:	4c44      	ldr	r4, [pc, #272]	; (d03e15e4 <the50hzISR+0x114>)
d03e14d4:	f7ff fb7e 	bl	d03e0bd4 <sid_midi_isr>
d03e14d8:	7823      	ldrb	r3, [r4, #0]
d03e14da:	b12b      	cbz	r3, d03e14e8 <the50hzISR+0x18>
d03e14dc:	88e3      	ldrh	r3, [r4, #6]
d03e14de:	f5b3 7f16 	cmp.w	r3, #600	; 0x258
d03e14e2:	d274      	bcs.n	d03e15ce <the50hzISR+0xfe>
d03e14e4:	3301      	adds	r3, #1
d03e14e6:	80e3      	strh	r3, [r4, #6]
d03e14e8:	7a23      	ldrb	r3, [r4, #8]
d03e14ea:	b12b      	cbz	r3, d03e14f8 <the50hzISR+0x28>
d03e14ec:	89e3      	ldrh	r3, [r4, #14]
d03e14ee:	f5b3 7f16 	cmp.w	r3, #600	; 0x258
d03e14f2:	d261      	bcs.n	d03e15b8 <the50hzISR+0xe8>
d03e14f4:	3301      	adds	r3, #1
d03e14f6:	81e3      	strh	r3, [r4, #14]
d03e14f8:	7c23      	ldrb	r3, [r4, #16]
d03e14fa:	b12b      	cbz	r3, d03e1508 <the50hzISR+0x38>
d03e14fc:	8ae3      	ldrh	r3, [r4, #22]
d03e14fe:	f5b3 7f16 	cmp.w	r3, #600	; 0x258
d03e1502:	d24e      	bcs.n	d03e15a2 <the50hzISR+0xd2>
d03e1504:	3301      	adds	r3, #1
d03e1506:	82e3      	strh	r3, [r4, #22]
d03e1508:	7e23      	ldrb	r3, [r4, #24]
d03e150a:	b12b      	cbz	r3, d03e1518 <the50hzISR+0x48>
d03e150c:	8be3      	ldrh	r3, [r4, #30]
d03e150e:	f5b3 7f16 	cmp.w	r3, #600	; 0x258
d03e1512:	d23b      	bcs.n	d03e158c <the50hzISR+0xbc>
d03e1514:	3301      	adds	r3, #1
d03e1516:	83e3      	strh	r3, [r4, #30]
d03e1518:	f894 3020 	ldrb.w	r3, [r4, #32]
d03e151c:	b12b      	cbz	r3, d03e152a <the50hzISR+0x5a>
d03e151e:	8ce3      	ldrh	r3, [r4, #38]	; 0x26
d03e1520:	f5b3 7f16 	cmp.w	r3, #600	; 0x258
d03e1524:	d226      	bcs.n	d03e1574 <the50hzISR+0xa4>
d03e1526:	3301      	adds	r3, #1
d03e1528:	84e3      	strh	r3, [r4, #38]	; 0x26
d03e152a:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d03e152e:	b12b      	cbz	r3, d03e153c <the50hzISR+0x6c>
d03e1530:	8de3      	ldrh	r3, [r4, #46]	; 0x2e
d03e1532:	f5b3 7f16 	cmp.w	r3, #600	; 0x258
d03e1536:	d211      	bcs.n	d03e155c <the50hzISR+0x8c>
d03e1538:	3301      	adds	r3, #1
d03e153a:	85e3      	strh	r3, [r4, #46]	; 0x2e
d03e153c:	4a2a      	ldr	r2, [pc, #168]	; (d03e15e8 <the50hzISR+0x118>)
d03e153e:	7813      	ldrb	r3, [r2, #0]
d03e1540:	3301      	adds	r3, #1
d03e1542:	b2db      	uxtb	r3, r3
d03e1544:	2b0e      	cmp	r3, #14
d03e1546:	7013      	strb	r3, [r2, #0]
d03e1548:	d907      	bls.n	d03e155a <the50hzISR+0x8a>
d03e154a:	2300      	movs	r3, #0
d03e154c:	4927      	ldr	r1, [pc, #156]	; (d03e15ec <the50hzISR+0x11c>)
d03e154e:	7013      	strb	r3, [r2, #0]
d03e1550:	780b      	ldrb	r3, [r1, #0]
d03e1552:	fab3 f383 	clz	r3, r3
d03e1556:	095b      	lsrs	r3, r3, #5
d03e1558:	700b      	strb	r3, [r1, #0]
d03e155a:	bd10      	pop	{r4, pc}
d03e155c:	2005      	movs	r0, #5
d03e155e:	f7ff f987 	bl	d03e0870 <sid_voice_note_kill>
d03e1562:	4a23      	ldr	r2, [pc, #140]	; (d03e15f0 <the50hzISR+0x120>)
d03e1564:	2100      	movs	r1, #0
d03e1566:	6813      	ldr	r3, [r2, #0]
d03e1568:	f884 1028 	strb.w	r1, [r4, #40]	; 0x28
d03e156c:	3301      	adds	r3, #1
d03e156e:	85e1      	strh	r1, [r4, #46]	; 0x2e
d03e1570:	6013      	str	r3, [r2, #0]
d03e1572:	e7e3      	b.n	d03e153c <the50hzISR+0x6c>
d03e1574:	2004      	movs	r0, #4
d03e1576:	f7ff f97b 	bl	d03e0870 <sid_voice_note_kill>
d03e157a:	4a1d      	ldr	r2, [pc, #116]	; (d03e15f0 <the50hzISR+0x120>)
d03e157c:	2100      	movs	r1, #0
d03e157e:	6813      	ldr	r3, [r2, #0]
d03e1580:	f884 1020 	strb.w	r1, [r4, #32]
d03e1584:	3301      	adds	r3, #1
d03e1586:	84e1      	strh	r1, [r4, #38]	; 0x26
d03e1588:	6013      	str	r3, [r2, #0]
d03e158a:	e7ce      	b.n	d03e152a <the50hzISR+0x5a>
d03e158c:	2003      	movs	r0, #3
d03e158e:	f7ff f96f 	bl	d03e0870 <sid_voice_note_kill>
d03e1592:	4a17      	ldr	r2, [pc, #92]	; (d03e15f0 <the50hzISR+0x120>)
d03e1594:	2100      	movs	r1, #0
d03e1596:	6813      	ldr	r3, [r2, #0]
d03e1598:	7621      	strb	r1, [r4, #24]
d03e159a:	3301      	adds	r3, #1
d03e159c:	83e1      	strh	r1, [r4, #30]
d03e159e:	6013      	str	r3, [r2, #0]
d03e15a0:	e7ba      	b.n	d03e1518 <the50hzISR+0x48>
d03e15a2:	2002      	movs	r0, #2
d03e15a4:	f7ff f964 	bl	d03e0870 <sid_voice_note_kill>
d03e15a8:	4a11      	ldr	r2, [pc, #68]	; (d03e15f0 <the50hzISR+0x120>)
d03e15aa:	2100      	movs	r1, #0
d03e15ac:	6813      	ldr	r3, [r2, #0]
d03e15ae:	7421      	strb	r1, [r4, #16]
d03e15b0:	3301      	adds	r3, #1
d03e15b2:	82e1      	strh	r1, [r4, #22]
d03e15b4:	6013      	str	r3, [r2, #0]
d03e15b6:	e7a7      	b.n	d03e1508 <the50hzISR+0x38>
d03e15b8:	2001      	movs	r0, #1
d03e15ba:	f7ff f959 	bl	d03e0870 <sid_voice_note_kill>
d03e15be:	4a0c      	ldr	r2, [pc, #48]	; (d03e15f0 <the50hzISR+0x120>)
d03e15c0:	2100      	movs	r1, #0
d03e15c2:	6813      	ldr	r3, [r2, #0]
d03e15c4:	7221      	strb	r1, [r4, #8]
d03e15c6:	3301      	adds	r3, #1
d03e15c8:	81e1      	strh	r1, [r4, #14]
d03e15ca:	6013      	str	r3, [r2, #0]
d03e15cc:	e794      	b.n	d03e14f8 <the50hzISR+0x28>
d03e15ce:	2000      	movs	r0, #0
d03e15d0:	f7ff f94e 	bl	d03e0870 <sid_voice_note_kill>
d03e15d4:	4a06      	ldr	r2, [pc, #24]	; (d03e15f0 <the50hzISR+0x120>)
d03e15d6:	2100      	movs	r1, #0
d03e15d8:	6813      	ldr	r3, [r2, #0]
d03e15da:	7021      	strb	r1, [r4, #0]
d03e15dc:	3301      	adds	r3, #1
d03e15de:	80e1      	strh	r1, [r4, #6]
d03e15e0:	6013      	str	r3, [r2, #0]
d03e15e2:	e781      	b.n	d03e14e8 <the50hzISR+0x18>
d03e15e4:	d03ea5f0 	.word	0xd03ea5f0
d03e15e8:	d03ea7ff 	.word	0xd03ea7ff
d03e15ec:	d03ea7fe 	.word	0xd03ea7fe
d03e15f0:	d03ea5ec 	.word	0xd03ea5ec

d03e15f4 <ui_select_program_delta>:
d03e15f4:	2809      	cmp	r0, #9
d03e15f6:	b4f0      	push	{r4, r5, r6, r7}
d03e15f8:	d011      	beq.n	d03e161e <ui_select_program_delta+0x2a>
d03e15fa:	280f      	cmp	r0, #15
d03e15fc:	d806      	bhi.n	d03e160c <ui_select_program_delta+0x18>
d03e15fe:	4c10      	ldr	r4, [pc, #64]	; (d03e1640 <ui_select_program_delta+0x4c>)
d03e1600:	5c22      	ldrb	r2, [r4, r0]
d03e1602:	4411      	add	r1, r2
d03e1604:	b20b      	sxth	r3, r1
d03e1606:	f383 0307 	usat	r3, #7, r3
d03e160a:	5423      	strb	r3, [r4, r0]
d03e160c:	4a0d      	ldr	r2, [pc, #52]	; (d03e1644 <ui_select_program_delta+0x50>)
d03e160e:	2301      	movs	r3, #1
d03e1610:	6811      	ldr	r1, [r2, #0]
d03e1612:	fa03 f000 	lsl.w	r0, r3, r0
d03e1616:	4308      	orrs	r0, r1
d03e1618:	bcf0      	pop	{r4, r5, r6, r7}
d03e161a:	6010      	str	r0, [r2, #0]
d03e161c:	4770      	bx	lr
d03e161e:	4d0a      	ldr	r5, [pc, #40]	; (d03e1648 <ui_select_program_delta+0x54>)
d03e1620:	2703      	movs	r7, #3
d03e1622:	4c0a      	ldr	r4, [pc, #40]	; (d03e164c <ui_select_program_delta+0x58>)
d03e1624:	4e0a      	ldr	r6, [pc, #40]	; (d03e1650 <ui_select_program_delta+0x5c>)
d03e1626:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d03e1628:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d03e162a:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d03e162e:	255a      	movs	r5, #90	; 0x5a
d03e1630:	7037      	strb	r7, [r6, #0]
d03e1632:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d03e1636:	4b07      	ldr	r3, [pc, #28]	; (d03e1654 <ui_select_program_delta+0x60>)
d03e1638:	701d      	strb	r5, [r3, #0]
d03e163a:	bcf0      	pop	{r4, r5, r6, r7}
d03e163c:	4770      	bx	lr
d03e163e:	bf00      	nop
d03e1640:	d03ea3a4 	.word	0xd03ea3a4
d03e1644:	d03ea624 	.word	0xd03ea624
d03e1648:	d03e90ac 	.word	0xd03e90ac
d03e164c:	d03ea648 	.word	0xd03ea648
d03e1650:	d03ea636 	.word	0xd03ea636
d03e1654:	d03ea670 	.word	0xd03ea670

d03e1658 <ui_box.constprop.0>:
d03e1658:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03e165c:	4c29      	ldr	r4, [pc, #164]	; (d03e1704 <ui_box.constprop.0+0xac>)
d03e165e:	4699      	mov	r9, r3
d03e1660:	4606      	mov	r6, r0
d03e1662:	201a      	movs	r0, #26
d03e1664:	7b25      	ldrb	r5, [r4, #12]
d03e1666:	4690      	mov	r8, r2
d03e1668:	7b67      	ldrb	r7, [r4, #13]
d03e166a:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e166e:	ea45 2507 	orr.w	r5, r5, r7, lsl #8
d03e1672:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e1676:	460f      	mov	r7, r1
d03e1678:	f89d a020 	ldrb.w	sl, [sp, #32]
d03e167c:	ea45 450e 	orr.w	r5, r5, lr, lsl #16
d03e1680:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d03e1684:	686b      	ldr	r3, [r5, #4]
d03e1686:	68db      	ldr	r3, [r3, #12]
d03e1688:	4798      	blx	r3
d03e168a:	7b25      	ldrb	r5, [r4, #12]
d03e168c:	7b61      	ldrb	r1, [r4, #13]
d03e168e:	464b      	mov	r3, r9
d03e1690:	7ba0      	ldrb	r0, [r4, #14]
d03e1692:	4642      	mov	r2, r8
d03e1694:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d03e1698:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e169c:	4639      	mov	r1, r7
d03e169e:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d03e16a2:	4630      	mov	r0, r6
d03e16a4:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d03e16a8:	686d      	ldr	r5, [r5, #4]
d03e16aa:	686d      	ldr	r5, [r5, #4]
d03e16ac:	47a8      	blx	r5
d03e16ae:	7b25      	ldrb	r5, [r4, #12]
d03e16b0:	7b63      	ldrb	r3, [r4, #13]
d03e16b2:	4650      	mov	r0, sl
d03e16b4:	7ba2      	ldrb	r2, [r4, #14]
d03e16b6:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d03e16ba:	7be3      	ldrb	r3, [r4, #15]
d03e16bc:	ea45 4502 	orr.w	r5, r5, r2, lsl #16
d03e16c0:	ea45 6503 	orr.w	r5, r5, r3, lsl #24
d03e16c4:	686b      	ldr	r3, [r5, #4]
d03e16c6:	68db      	ldr	r3, [r3, #12]
d03e16c8:	4798      	blx	r3
d03e16ca:	7b25      	ldrb	r5, [r4, #12]
d03e16cc:	7b61      	ldrb	r1, [r4, #13]
d03e16ce:	f1a9 0302 	sub.w	r3, r9, #2
d03e16d2:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e16d6:	f1a8 0202 	sub.w	r2, r8, #2
d03e16da:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d03e16de:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e16e2:	1c79      	adds	r1, r7, #1
d03e16e4:	1c70      	adds	r0, r6, #1
d03e16e6:	ea45 440e 	orr.w	r4, r5, lr, lsl #16
d03e16ea:	b21b      	sxth	r3, r3
d03e16ec:	ea44 640c 	orr.w	r4, r4, ip, lsl #24
d03e16f0:	b212      	sxth	r2, r2
d03e16f2:	6864      	ldr	r4, [r4, #4]
d03e16f4:	b209      	sxth	r1, r1
d03e16f6:	b200      	sxth	r0, r0
d03e16f8:	6864      	ldr	r4, [r4, #4]
d03e16fa:	46a4      	mov	ip, r4
d03e16fc:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03e1700:	4760      	bx	ip
d03e1702:	bf00      	nop
d03e1704:	2001f000 	.word	0x2001f000

d03e1708 <ui_button_draw.constprop.0>:
d03e1708:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e170c:	4c8f      	ldr	r4, [pc, #572]	; (d03e194c <ui_button_draw.constprop.0+0x244>)
d03e170e:	b08b      	sub	sp, #44	; 0x2c
d03e1710:	469b      	mov	fp, r3
d03e1712:	4607      	mov	r7, r0
d03e1714:	7824      	ldrb	r4, [r4, #0]
d03e1716:	460e      	mov	r6, r1
d03e1718:	f8dd a050 	ldr.w	sl, [sp, #80]	; 0x50
d03e171c:	07e3      	lsls	r3, r4, #31
d03e171e:	9203      	str	r2, [sp, #12]
d03e1720:	d505      	bpl.n	d03e172e <ui_button_draw.constprop.0+0x26>
d03e1722:	4b8b      	ldr	r3, [pc, #556]	; (d03e1950 <ui_button_draw.constprop.0+0x248>)
d03e1724:	f9b3 3000 	ldrsh.w	r3, [r3]
d03e1728:	4283      	cmp	r3, r0
d03e172a:	f280 80df 	bge.w	d03e18ec <ui_button_draw.constprop.0+0x1e4>
d03e172e:	4650      	mov	r0, sl
d03e1730:	4c88      	ldr	r4, [pc, #544]	; (d03e1954 <ui_button_draw.constprop.0+0x24c>)
d03e1732:	f006 fb63 	bl	d03e7dfc <strlen>
d03e1736:	211b      	movs	r1, #27
d03e1738:	ea4f 0cc0 	mov.w	ip, r0, lsl #3
d03e173c:	465b      	mov	r3, fp
d03e173e:	9a03      	ldr	r2, [sp, #12]
d03e1740:	4638      	mov	r0, r7
d03e1742:	fa0f f58c 	sxth.w	r5, ip
d03e1746:	9100      	str	r1, [sp, #0]
d03e1748:	4631      	mov	r1, r6
d03e174a:	9506      	str	r5, [sp, #24]
d03e174c:	f7ff ff84 	bl	d03e1658 <ui_box.constprop.0>
d03e1750:	7b23      	ldrb	r3, [r4, #12]
d03e1752:	2100      	movs	r1, #0
d03e1754:	7b62      	ldrb	r2, [r4, #13]
d03e1756:	2015      	movs	r0, #21
d03e1758:	9104      	str	r1, [sp, #16]
d03e175a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e175e:	7ba1      	ldrb	r1, [r4, #14]
d03e1760:	7be2      	ldrb	r2, [r4, #15]
d03e1762:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e1766:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e176a:	685b      	ldr	r3, [r3, #4]
d03e176c:	68db      	ldr	r3, [r3, #12]
d03e176e:	4798      	blx	r3
d03e1770:	7b22      	ldrb	r2, [r4, #12]
d03e1772:	7b63      	ldrb	r3, [r4, #13]
d03e1774:	b2bf      	uxth	r7, r7
d03e1776:	7ba1      	ldrb	r1, [r4, #14]
d03e1778:	b2b6      	uxth	r6, r6
d03e177a:	ea42 2303 	orr.w	r3, r2, r3, lsl #8
d03e177e:	7be2      	ldrb	r2, [r4, #15]
d03e1780:	f8bd 000c 	ldrh.w	r0, [sp, #12]
d03e1784:	fa1f f88b 	uxth.w	r8, fp
d03e1788:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
d03e178c:	9707      	str	r7, [sp, #28]
d03e178e:	f1a0 0902 	sub.w	r9, r0, #2
d03e1792:	9605      	str	r6, [sp, #20]
d03e1794:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d03e1798:	3701      	adds	r7, #1
d03e179a:	3601      	adds	r6, #1
d03e179c:	fa0f f989 	sxth.w	r9, r9
d03e17a0:	6852      	ldr	r2, [r2, #4]
d03e17a2:	b23f      	sxth	r7, r7
d03e17a4:	b236      	sxth	r6, r6
d03e17a6:	2302      	movs	r3, #2
d03e17a8:	6852      	ldr	r2, [r2, #4]
d03e17aa:	4631      	mov	r1, r6
d03e17ac:	9008      	str	r0, [sp, #32]
d03e17ae:	4615      	mov	r5, r2
d03e17b0:	4638      	mov	r0, r7
d03e17b2:	464a      	mov	r2, r9
d03e17b4:	47a8      	blx	r5
d03e17b6:	7b22      	ldrb	r2, [r4, #12]
d03e17b8:	7b63      	ldrb	r3, [r4, #13]
d03e17ba:	4631      	mov	r1, r6
d03e17bc:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e17c0:	4638      	mov	r0, r7
d03e17c2:	ea42 2303 	orr.w	r3, r2, r3, lsl #8
d03e17c6:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e17ca:	f8cd 8024 	str.w	r8, [sp, #36]	; 0x24
d03e17ce:	f1a8 0802 	sub.w	r8, r8, #2
d03e17d2:	ea43 4e0e 	orr.w	lr, r3, lr, lsl #16
d03e17d6:	2202      	movs	r2, #2
d03e17d8:	fa0f f888 	sxth.w	r8, r8
d03e17dc:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d03e17e0:	4643      	mov	r3, r8
d03e17e2:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e17e6:	f8dc 5004 	ldr.w	r5, [ip, #4]
d03e17ea:	47a8      	blx	r5
d03e17ec:	7b20      	ldrb	r0, [r4, #12]
d03e17ee:	7b61      	ldrb	r1, [r4, #13]
d03e17f0:	7ba2      	ldrb	r2, [r4, #14]
d03e17f2:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e17f6:	7be3      	ldrb	r3, [r4, #15]
d03e17f8:	9d04      	ldr	r5, [sp, #16]
d03e17fa:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e17fe:	2d00      	cmp	r5, #0
d03e1800:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e1804:	bf14      	ite	ne
d03e1806:	201d      	movne	r0, #29
d03e1808:	2010      	moveq	r0, #16
d03e180a:	685b      	ldr	r3, [r3, #4]
d03e180c:	68db      	ldr	r3, [r3, #12]
d03e180e:	4798      	blx	r3
d03e1810:	7b20      	ldrb	r0, [r4, #12]
d03e1812:	9a09      	ldr	r2, [sp, #36]	; 0x24
d03e1814:	7b63      	ldrb	r3, [r4, #13]
d03e1816:	1ed1      	subs	r1, r2, #3
d03e1818:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e181c:	ea40 2303 	orr.w	r3, r0, r3, lsl #8
d03e1820:	9805      	ldr	r0, [sp, #20]
d03e1822:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e1826:	464a      	mov	r2, r9
d03e1828:	4401      	add	r1, r0
d03e182a:	4638      	mov	r0, r7
d03e182c:	ea43 470e 	orr.w	r7, r3, lr, lsl #16
d03e1830:	2302      	movs	r3, #2
d03e1832:	b209      	sxth	r1, r1
d03e1834:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d03e1838:	687f      	ldr	r7, [r7, #4]
d03e183a:	687f      	ldr	r7, [r7, #4]
d03e183c:	47b8      	blx	r7
d03e183e:	7b21      	ldrb	r1, [r4, #12]
d03e1840:	7b62      	ldrb	r2, [r4, #13]
d03e1842:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e1846:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d03e184a:	9b08      	ldr	r3, [sp, #32]
d03e184c:	7be7      	ldrb	r7, [r4, #15]
d03e184e:	4631      	mov	r1, r6
d03e1850:	ea42 460c 	orr.w	r6, r2, ip, lsl #16
d03e1854:	1ed8      	subs	r0, r3, #3
d03e1856:	9d07      	ldr	r5, [sp, #28]
d03e1858:	4643      	mov	r3, r8
d03e185a:	ea46 6607 	orr.w	r6, r6, r7, lsl #24
d03e185e:	2202      	movs	r2, #2
d03e1860:	4428      	add	r0, r5
d03e1862:	6876      	ldr	r6, [r6, #4]
d03e1864:	b200      	sxth	r0, r0
d03e1866:	6876      	ldr	r6, [r6, #4]
d03e1868:	47b0      	blx	r6
d03e186a:	9b03      	ldr	r3, [sp, #12]
d03e186c:	9a06      	ldr	r2, [sp, #24]
d03e186e:	3b07      	subs	r3, #7
d03e1870:	4293      	cmp	r3, r2
d03e1872:	dc30      	bgt.n	d03e18d6 <ui_button_draw.constprop.0+0x1ce>
d03e1874:	3504      	adds	r5, #4
d03e1876:	b2aa      	uxth	r2, r5
d03e1878:	b22d      	sxth	r5, r5
d03e187a:	9b05      	ldr	r3, [sp, #20]
d03e187c:	f1ab 0110 	sub.w	r1, fp, #16
d03e1880:	eb03 0161 	add.w	r1, r3, r1, asr #1
d03e1884:	9b04      	ldr	r3, [sp, #16]
d03e1886:	b289      	uxth	r1, r1
d03e1888:	b113      	cbz	r3, d03e1890 <ui_button_draw.constprop.0+0x188>
d03e188a:	1c55      	adds	r5, r2, #1
d03e188c:	3101      	adds	r1, #1
d03e188e:	b22d      	sxth	r5, r5
d03e1890:	7b23      	ldrb	r3, [r4, #12]
d03e1892:	b209      	sxth	r1, r1
d03e1894:	7b62      	ldrb	r2, [r4, #13]
d03e1896:	2019      	movs	r0, #25
d03e1898:	9103      	str	r1, [sp, #12]
d03e189a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e189e:	7ba2      	ldrb	r2, [r4, #14]
d03e18a0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e18a4:	7be2      	ldrb	r2, [r4, #15]
d03e18a6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e18aa:	685b      	ldr	r3, [r3, #4]
d03e18ac:	68db      	ldr	r3, [r3, #12]
d03e18ae:	4798      	blx	r3
d03e18b0:	7b23      	ldrb	r3, [r4, #12]
d03e18b2:	7b60      	ldrb	r0, [r4, #13]
d03e18b4:	4652      	mov	r2, sl
d03e18b6:	7ba6      	ldrb	r6, [r4, #14]
d03e18b8:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03e18bc:	7be4      	ldrb	r4, [r4, #15]
d03e18be:	9903      	ldr	r1, [sp, #12]
d03e18c0:	4628      	mov	r0, r5
d03e18c2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d03e18c6:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03e18ca:	685b      	ldr	r3, [r3, #4]
d03e18cc:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e18ce:	b00b      	add	sp, #44	; 0x2c
d03e18d0:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e18d4:	4718      	bx	r3
d03e18d6:	4613      	mov	r3, r2
d03e18d8:	9a03      	ldr	r2, [sp, #12]
d03e18da:	1ad5      	subs	r5, r2, r3
d03e18dc:	9b07      	ldr	r3, [sp, #28]
d03e18de:	bf48      	it	mi
d03e18e0:	3501      	addmi	r5, #1
d03e18e2:	eb03 0565 	add.w	r5, r3, r5, asr #1
d03e18e6:	b2aa      	uxth	r2, r5
d03e18e8:	b22d      	sxth	r5, r5
d03e18ea:	e7c6      	b.n	d03e187a <ui_button_draw.constprop.0+0x172>
d03e18ec:	1882      	adds	r2, r0, r2
d03e18ee:	491a      	ldr	r1, [pc, #104]	; (d03e1958 <ui_button_draw.constprop.0+0x250>)
d03e18f0:	4293      	cmp	r3, r2
d03e18f2:	f9b1 1000 	ldrsh.w	r1, [r1]
d03e18f6:	f6bf af1a 	bge.w	d03e172e <ui_button_draw.constprop.0+0x26>
d03e18fa:	42b1      	cmp	r1, r6
d03e18fc:	f6ff af17 	blt.w	d03e172e <ui_button_draw.constprop.0+0x26>
d03e1900:	eb06 030b 	add.w	r3, r6, fp
d03e1904:	4299      	cmp	r1, r3
d03e1906:	f6bf af12 	bge.w	d03e172e <ui_button_draw.constprop.0+0x26>
d03e190a:	4650      	mov	r0, sl
d03e190c:	4c11      	ldr	r4, [pc, #68]	; (d03e1954 <ui_button_draw.constprop.0+0x24c>)
d03e190e:	f006 fa75 	bl	d03e7dfc <strlen>
d03e1912:	2114      	movs	r1, #20
d03e1914:	ea4f 0cc0 	mov.w	ip, r0, lsl #3
d03e1918:	465b      	mov	r3, fp
d03e191a:	9a03      	ldr	r2, [sp, #12]
d03e191c:	4638      	mov	r0, r7
d03e191e:	fa0f f58c 	sxth.w	r5, ip
d03e1922:	9100      	str	r1, [sp, #0]
d03e1924:	4631      	mov	r1, r6
d03e1926:	9506      	str	r5, [sp, #24]
d03e1928:	f7ff fe96 	bl	d03e1658 <ui_box.constprop.0>
d03e192c:	7b23      	ldrb	r3, [r4, #12]
d03e192e:	2101      	movs	r1, #1
d03e1930:	7b62      	ldrb	r2, [r4, #13]
d03e1932:	2010      	movs	r0, #16
d03e1934:	9104      	str	r1, [sp, #16]
d03e1936:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e193a:	7ba1      	ldrb	r1, [r4, #14]
d03e193c:	7be2      	ldrb	r2, [r4, #15]
d03e193e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e1942:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1946:	685b      	ldr	r3, [r3, #4]
d03e1948:	68db      	ldr	r3, [r3, #12]
d03e194a:	e710      	b.n	d03e176e <ui_button_draw.constprop.0+0x66>
d03e194c:	d03ea634 	.word	0xd03ea634
d03e1950:	d03ea63a 	.word	0xd03ea63a
d03e1954:	2001f000 	.word	0x2001f000
d03e1958:	d03ea63c 	.word	0xd03ea63c

d03e195c <ui_button_draw>:
d03e195c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e1960:	4cb3      	ldr	r4, [pc, #716]	; (d03e1c30 <ui_button_draw+0x2d4>)
d03e1962:	4693      	mov	fp, r2
d03e1964:	469a      	mov	sl, r3
d03e1966:	4606      	mov	r6, r0
d03e1968:	460d      	mov	r5, r1
d03e196a:	ed2d 8b04 	vpush	{d8-d9}
d03e196e:	b089      	sub	sp, #36	; 0x24
d03e1970:	7824      	ldrb	r4, [r4, #0]
d03e1972:	9b16      	ldr	r3, [sp, #88]	; 0x58
d03e1974:	07e2      	lsls	r2, r4, #31
d03e1976:	ee08 3a90 	vmov	s17, r3
d03e197a:	f89d 305c 	ldrb.w	r3, [sp, #92]	; 0x5c
d03e197e:	d537      	bpl.n	d03e19f0 <ui_button_draw+0x94>
d03e1980:	4aac      	ldr	r2, [pc, #688]	; (d03e1c34 <ui_button_draw+0x2d8>)
d03e1982:	f9b2 2000 	ldrsh.w	r2, [r2]
d03e1986:	4282      	cmp	r2, r0
d03e1988:	db32      	blt.n	d03e19f0 <ui_button_draw+0x94>
d03e198a:	eb06 010b 	add.w	r1, r6, fp
d03e198e:	48aa      	ldr	r0, [pc, #680]	; (d03e1c38 <ui_button_draw+0x2dc>)
d03e1990:	428a      	cmp	r2, r1
d03e1992:	f9b0 0000 	ldrsh.w	r0, [r0]
d03e1996:	da2b      	bge.n	d03e19f0 <ui_button_draw+0x94>
d03e1998:	42a8      	cmp	r0, r5
d03e199a:	db29      	blt.n	d03e19f0 <ui_button_draw+0x94>
d03e199c:	eb05 020a 	add.w	r2, r5, sl
d03e19a0:	4290      	cmp	r0, r2
d03e19a2:	da25      	bge.n	d03e19f0 <ui_button_draw+0x94>
d03e19a4:	2b00      	cmp	r3, #0
d03e19a6:	f000 812e 	beq.w	d03e1c06 <ui_button_draw+0x2aa>
d03e19aa:	ee18 0a90 	vmov	r0, s17
d03e19ae:	4ca3      	ldr	r4, [pc, #652]	; (d03e1c3c <ui_button_draw+0x2e0>)
d03e19b0:	f006 fa24 	bl	d03e7dfc <strlen>
d03e19b4:	2114      	movs	r1, #20
d03e19b6:	00c7      	lsls	r7, r0, #3
d03e19b8:	4653      	mov	r3, sl
d03e19ba:	465a      	mov	r2, fp
d03e19bc:	9100      	str	r1, [sp, #0]
d03e19be:	b23f      	sxth	r7, r7
d03e19c0:	4629      	mov	r1, r5
d03e19c2:	4630      	mov	r0, r6
d03e19c4:	9706      	str	r7, [sp, #24]
d03e19c6:	f7ff fe47 	bl	d03e1658 <ui_box.constprop.0>
d03e19ca:	7b23      	ldrb	r3, [r4, #12]
d03e19cc:	210f      	movs	r1, #15
d03e19ce:	7b62      	ldrb	r2, [r4, #13]
d03e19d0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e19d4:	ee09 1a10 	vmov	s18, r1
d03e19d8:	7ba1      	ldrb	r1, [r4, #14]
d03e19da:	2001      	movs	r0, #1
d03e19dc:	7be2      	ldrb	r2, [r4, #15]
d03e19de:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e19e2:	9005      	str	r0, [sp, #20]
d03e19e4:	2010      	movs	r0, #16
d03e19e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e19ea:	685b      	ldr	r3, [r3, #4]
d03e19ec:	68db      	ldr	r3, [r3, #12]
d03e19ee:	e023      	b.n	d03e1a38 <ui_button_draw+0xdc>
d03e19f0:	2b00      	cmp	r3, #0
d03e19f2:	f040 80db 	bne.w	d03e1bac <ui_button_draw+0x250>
d03e19f6:	ee18 0a90 	vmov	r0, s17
d03e19fa:	9305      	str	r3, [sp, #20]
d03e19fc:	f006 f9fe 	bl	d03e7dfc <strlen>
d03e1a00:	221b      	movs	r2, #27
d03e1a02:	00c7      	lsls	r7, r0, #3
d03e1a04:	4c8d      	ldr	r4, [pc, #564]	; (d03e1c3c <ui_button_draw+0x2e0>)
d03e1a06:	4653      	mov	r3, sl
d03e1a08:	4629      	mov	r1, r5
d03e1a0a:	b23f      	sxth	r7, r7
d03e1a0c:	4630      	mov	r0, r6
d03e1a0e:	9200      	str	r2, [sp, #0]
d03e1a10:	465a      	mov	r2, fp
d03e1a12:	9706      	str	r7, [sp, #24]
d03e1a14:	f7ff fe20 	bl	d03e1658 <ui_box.constprop.0>
d03e1a18:	7b23      	ldrb	r3, [r4, #12]
d03e1a1a:	2119      	movs	r1, #25
d03e1a1c:	7b62      	ldrb	r2, [r4, #13]
d03e1a1e:	2015      	movs	r0, #21
d03e1a20:	ee09 1a10 	vmov	s18, r1
d03e1a24:	7ba1      	ldrb	r1, [r4, #14]
d03e1a26:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1a2a:	7be2      	ldrb	r2, [r4, #15]
d03e1a2c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e1a30:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1a34:	685b      	ldr	r3, [r3, #4]
d03e1a36:	68db      	ldr	r3, [r3, #12]
d03e1a38:	4798      	blx	r3
d03e1a3a:	7b22      	ldrb	r2, [r4, #12]
d03e1a3c:	7b63      	ldrb	r3, [r4, #13]
d03e1a3e:	b2b6      	uxth	r6, r6
d03e1a40:	7ba1      	ldrb	r1, [r4, #14]
d03e1a42:	b2ad      	uxth	r5, r5
d03e1a44:	ea42 2303 	orr.w	r3, r2, r3, lsl #8
d03e1a48:	1c77      	adds	r7, r6, #1
d03e1a4a:	fa1f f08b 	uxth.w	r0, fp
d03e1a4e:	7be2      	ldrb	r2, [r4, #15]
d03e1a50:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
d03e1a54:	9603      	str	r6, [sp, #12]
d03e1a56:	b23b      	sxth	r3, r7
d03e1a58:	1c6e      	adds	r6, r5, #1
d03e1a5a:	f1a0 0902 	sub.w	r9, r0, #2
d03e1a5e:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d03e1a62:	ee08 3a10 	vmov	s16, r3
d03e1a66:	b236      	sxth	r6, r6
d03e1a68:	6852      	ldr	r2, [r2, #4]
d03e1a6a:	fa0f f989 	sxth.w	r9, r9
d03e1a6e:	2302      	movs	r3, #2
d03e1a70:	4631      	mov	r1, r6
d03e1a72:	f8d2 8004 	ldr.w	r8, [r2, #4]
d03e1a76:	464a      	mov	r2, r9
d03e1a78:	9007      	str	r0, [sp, #28]
d03e1a7a:	ee18 0a10 	vmov	r0, s16
d03e1a7e:	9504      	str	r5, [sp, #16]
d03e1a80:	47c0      	blx	r8
d03e1a82:	7b22      	ldrb	r2, [r4, #12]
d03e1a84:	fa1f f58a 	uxth.w	r5, sl
d03e1a88:	7b63      	ldrb	r3, [r4, #13]
d03e1a8a:	4631      	mov	r1, r6
d03e1a8c:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e1a90:	f1a5 0802 	sub.w	r8, r5, #2
d03e1a94:	ea42 2303 	orr.w	r3, r2, r3, lsl #8
d03e1a98:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e1a9c:	fa0f f888 	sxth.w	r8, r8
d03e1aa0:	ee18 0a10 	vmov	r0, s16
d03e1aa4:	ea43 4e0e 	orr.w	lr, r3, lr, lsl #16
d03e1aa8:	2202      	movs	r2, #2
d03e1aaa:	4643      	mov	r3, r8
d03e1aac:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d03e1ab0:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e1ab4:	f8dc 7004 	ldr.w	r7, [ip, #4]
d03e1ab8:	47b8      	blx	r7
d03e1aba:	7b20      	ldrb	r0, [r4, #12]
d03e1abc:	9a05      	ldr	r2, [sp, #20]
d03e1abe:	7b61      	ldrb	r1, [r4, #13]
d03e1ac0:	2a00      	cmp	r2, #0
d03e1ac2:	7ba2      	ldrb	r2, [r4, #14]
d03e1ac4:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e1ac8:	7be3      	ldrb	r3, [r4, #15]
d03e1aca:	bf14      	ite	ne
d03e1acc:	201d      	movne	r0, #29
d03e1ace:	2010      	moveq	r0, #16
d03e1ad0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e1ad4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e1ad8:	685b      	ldr	r3, [r3, #4]
d03e1ada:	68db      	ldr	r3, [r3, #12]
d03e1adc:	4798      	blx	r3
d03e1ade:	7b20      	ldrb	r0, [r4, #12]
d03e1ae0:	7b63      	ldrb	r3, [r4, #13]
d03e1ae2:	1ee9      	subs	r1, r5, #3
d03e1ae4:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e1ae8:	464a      	mov	r2, r9
d03e1aea:	ea40 2303 	orr.w	r3, r0, r3, lsl #8
d03e1aee:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e1af2:	9d04      	ldr	r5, [sp, #16]
d03e1af4:	ee18 0a10 	vmov	r0, s16
d03e1af8:	ea43 470e 	orr.w	r7, r3, lr, lsl #16
d03e1afc:	2302      	movs	r3, #2
d03e1afe:	4429      	add	r1, r5
d03e1b00:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d03e1b04:	b209      	sxth	r1, r1
d03e1b06:	687d      	ldr	r5, [r7, #4]
d03e1b08:	686d      	ldr	r5, [r5, #4]
d03e1b0a:	47a8      	blx	r5
d03e1b0c:	7b21      	ldrb	r1, [r4, #12]
d03e1b0e:	7b62      	ldrb	r2, [r4, #13]
d03e1b10:	7ba5      	ldrb	r5, [r4, #14]
d03e1b12:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d03e1b16:	9b07      	ldr	r3, [sp, #28]
d03e1b18:	7be7      	ldrb	r7, [r4, #15]
d03e1b1a:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d03e1b1e:	9903      	ldr	r1, [sp, #12]
d03e1b20:	1ed8      	subs	r0, r3, #3
d03e1b22:	2202      	movs	r2, #2
d03e1b24:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d03e1b28:	4643      	mov	r3, r8
d03e1b2a:	4408      	add	r0, r1
d03e1b2c:	4631      	mov	r1, r6
d03e1b2e:	686d      	ldr	r5, [r5, #4]
d03e1b30:	b200      	sxth	r0, r0
d03e1b32:	686d      	ldr	r5, [r5, #4]
d03e1b34:	47a8      	blx	r5
d03e1b36:	f1ab 0307 	sub.w	r3, fp, #7
d03e1b3a:	9a06      	ldr	r2, [sp, #24]
d03e1b3c:	4293      	cmp	r3, r2
d03e1b3e:	dc58      	bgt.n	d03e1bf2 <ui_button_draw+0x296>
d03e1b40:	9d03      	ldr	r5, [sp, #12]
d03e1b42:	3504      	adds	r5, #4
d03e1b44:	b2aa      	uxth	r2, r5
d03e1b46:	b22d      	sxth	r5, r5
d03e1b48:	9b04      	ldr	r3, [sp, #16]
d03e1b4a:	f1aa 0110 	sub.w	r1, sl, #16
d03e1b4e:	eb03 0161 	add.w	r1, r3, r1, asr #1
d03e1b52:	9b05      	ldr	r3, [sp, #20]
d03e1b54:	b289      	uxth	r1, r1
d03e1b56:	b113      	cbz	r3, d03e1b5e <ui_button_draw+0x202>
d03e1b58:	1c55      	adds	r5, r2, #1
d03e1b5a:	3101      	adds	r1, #1
d03e1b5c:	b22d      	sxth	r5, r5
d03e1b5e:	7b23      	ldrb	r3, [r4, #12]
d03e1b60:	b209      	sxth	r1, r1
d03e1b62:	7b62      	ldrb	r2, [r4, #13]
d03e1b64:	ee19 0a10 	vmov	r0, s18
d03e1b68:	7ba6      	ldrb	r6, [r4, #14]
d03e1b6a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1b6e:	7be2      	ldrb	r2, [r4, #15]
d03e1b70:	9103      	str	r1, [sp, #12]
d03e1b72:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d03e1b76:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1b7a:	685b      	ldr	r3, [r3, #4]
d03e1b7c:	68db      	ldr	r3, [r3, #12]
d03e1b7e:	4798      	blx	r3
d03e1b80:	7b23      	ldrb	r3, [r4, #12]
d03e1b82:	7b60      	ldrb	r0, [r4, #13]
d03e1b84:	ee18 2a90 	vmov	r2, s17
d03e1b88:	7ba6      	ldrb	r6, [r4, #14]
d03e1b8a:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03e1b8e:	7be4      	ldrb	r4, [r4, #15]
d03e1b90:	9903      	ldr	r1, [sp, #12]
d03e1b92:	4628      	mov	r0, r5
d03e1b94:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d03e1b98:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03e1b9c:	685b      	ldr	r3, [r3, #4]
d03e1b9e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e1ba0:	b009      	add	sp, #36	; 0x24
d03e1ba2:	ecbd 8b04 	vpop	{d8-d9}
d03e1ba6:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e1baa:	4718      	bx	r3
d03e1bac:	ee18 0a90 	vmov	r0, s17
d03e1bb0:	4c22      	ldr	r4, [pc, #136]	; (d03e1c3c <ui_button_draw+0x2e0>)
d03e1bb2:	f006 f923 	bl	d03e7dfc <strlen>
d03e1bb6:	211c      	movs	r1, #28
d03e1bb8:	00c7      	lsls	r7, r0, #3
d03e1bba:	4653      	mov	r3, sl
d03e1bbc:	465a      	mov	r2, fp
d03e1bbe:	4630      	mov	r0, r6
d03e1bc0:	b23f      	sxth	r7, r7
d03e1bc2:	9100      	str	r1, [sp, #0]
d03e1bc4:	4629      	mov	r1, r5
d03e1bc6:	9706      	str	r7, [sp, #24]
d03e1bc8:	f7ff fd46 	bl	d03e1658 <ui_box.constprop.0>
d03e1bcc:	7b23      	ldrb	r3, [r4, #12]
d03e1bce:	210f      	movs	r1, #15
d03e1bd0:	7b62      	ldrb	r2, [r4, #13]
d03e1bd2:	2000      	movs	r0, #0
d03e1bd4:	ee09 1a10 	vmov	s18, r1
d03e1bd8:	7ba1      	ldrb	r1, [r4, #14]
d03e1bda:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1bde:	7be2      	ldrb	r2, [r4, #15]
d03e1be0:	9005      	str	r0, [sp, #20]
d03e1be2:	201d      	movs	r0, #29
d03e1be4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e1be8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1bec:	685b      	ldr	r3, [r3, #4]
d03e1bee:	68db      	ldr	r3, [r3, #12]
d03e1bf0:	e722      	b.n	d03e1a38 <ui_button_draw+0xdc>
d03e1bf2:	ebbb 0502 	subs.w	r5, fp, r2
d03e1bf6:	9b03      	ldr	r3, [sp, #12]
d03e1bf8:	bf48      	it	mi
d03e1bfa:	3501      	addmi	r5, #1
d03e1bfc:	eb03 0565 	add.w	r5, r3, r5, asr #1
d03e1c00:	b2aa      	uxth	r2, r5
d03e1c02:	b22d      	sxth	r5, r5
d03e1c04:	e7a0      	b.n	d03e1b48 <ui_button_draw+0x1ec>
d03e1c06:	ee18 0a90 	vmov	r0, s17
d03e1c0a:	4c0c      	ldr	r4, [pc, #48]	; (d03e1c3c <ui_button_draw+0x2e0>)
d03e1c0c:	f006 f8f6 	bl	d03e7dfc <strlen>
d03e1c10:	2114      	movs	r1, #20
d03e1c12:	00c7      	lsls	r7, r0, #3
d03e1c14:	4653      	mov	r3, sl
d03e1c16:	465a      	mov	r2, fp
d03e1c18:	9100      	str	r1, [sp, #0]
d03e1c1a:	b23f      	sxth	r7, r7
d03e1c1c:	4629      	mov	r1, r5
d03e1c1e:	4630      	mov	r0, r6
d03e1c20:	9706      	str	r7, [sp, #24]
d03e1c22:	f7ff fd19 	bl	d03e1658 <ui_box.constprop.0>
d03e1c26:	7b23      	ldrb	r3, [r4, #12]
d03e1c28:	2119      	movs	r1, #25
d03e1c2a:	7b62      	ldrb	r2, [r4, #13]
d03e1c2c:	e6d0      	b.n	d03e19d0 <ui_button_draw+0x74>
d03e1c2e:	bf00      	nop
d03e1c30:	d03ea634 	.word	0xd03ea634
d03e1c34:	d03ea63a 	.word	0xd03ea63a
d03e1c38:	d03ea63c 	.word	0xd03ea63c
d03e1c3c:	2001f000 	.word	0x2001f000

d03e1c40 <ui_panel>:
d03e1c40:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e1c44:	271f      	movs	r7, #31
d03e1c46:	b082      	sub	sp, #8
d03e1c48:	4c2a      	ldr	r4, [pc, #168]	; (d03e1cf4 <ui_panel+0xb4>)
d03e1c4a:	4690      	mov	r8, r2
d03e1c4c:	9700      	str	r7, [sp, #0]
d03e1c4e:	4605      	mov	r5, r0
d03e1c50:	460e      	mov	r6, r1
d03e1c52:	9f08      	ldr	r7, [sp, #32]
d03e1c54:	f7ff fd00 	bl	d03e1658 <ui_box.constprop.0>
d03e1c58:	7b23      	ldrb	r3, [r4, #12]
d03e1c5a:	7b62      	ldrb	r2, [r4, #13]
d03e1c5c:	2014      	movs	r0, #20
d03e1c5e:	7ba1      	ldrb	r1, [r4, #14]
d03e1c60:	b2ad      	uxth	r5, r5
d03e1c62:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1c66:	7be2      	ldrb	r2, [r4, #15]
d03e1c68:	b2b6      	uxth	r6, r6
d03e1c6a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e1c6e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1c72:	685b      	ldr	r3, [r3, #4]
d03e1c74:	68db      	ldr	r3, [r3, #12]
d03e1c76:	4798      	blx	r3
d03e1c78:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e1c7c:	7b60      	ldrb	r0, [r4, #13]
d03e1c7e:	f1a8 0202 	sub.w	r2, r8, #2
d03e1c82:	7ba3      	ldrb	r3, [r4, #14]
d03e1c84:	1c71      	adds	r1, r6, #1
d03e1c86:	ea4c 2c00 	orr.w	ip, ip, r0, lsl #8
d03e1c8a:	f894 e00f 	ldrb.w	lr, [r4, #15]
d03e1c8e:	1c68      	adds	r0, r5, #1
d03e1c90:	b212      	sxth	r2, r2
d03e1c92:	ea4c 4c03 	orr.w	ip, ip, r3, lsl #16
d03e1c96:	2314      	movs	r3, #20
d03e1c98:	b209      	sxth	r1, r1
d03e1c9a:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d03e1c9e:	b200      	sxth	r0, r0
d03e1ca0:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e1ca4:	f8dc 8004 	ldr.w	r8, [ip, #4]
d03e1ca8:	47c0      	blx	r8
d03e1caa:	7b23      	ldrb	r3, [r4, #12]
d03e1cac:	7b62      	ldrb	r2, [r4, #13]
d03e1cae:	201e      	movs	r0, #30
d03e1cb0:	7ba1      	ldrb	r1, [r4, #14]
d03e1cb2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1cb6:	7be2      	ldrb	r2, [r4, #15]
d03e1cb8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e1cbc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1cc0:	685b      	ldr	r3, [r3, #4]
d03e1cc2:	68db      	ldr	r3, [r3, #12]
d03e1cc4:	4798      	blx	r3
d03e1cc6:	7b23      	ldrb	r3, [r4, #12]
d03e1cc8:	7b62      	ldrb	r2, [r4, #13]
d03e1cca:	1d31      	adds	r1, r6, #4
d03e1ccc:	7ba6      	ldrb	r6, [r4, #14]
d03e1cce:	f105 0008 	add.w	r0, r5, #8
d03e1cd2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1cd6:	7be4      	ldrb	r4, [r4, #15]
d03e1cd8:	b289      	uxth	r1, r1
d03e1cda:	463a      	mov	r2, r7
d03e1cdc:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d03e1ce0:	b280      	uxth	r0, r0
d03e1ce2:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03e1ce6:	685b      	ldr	r3, [r3, #4]
d03e1ce8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e1cea:	b002      	add	sp, #8
d03e1cec:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d03e1cf0:	4718      	bx	r3
d03e1cf2:	bf00      	nop
d03e1cf4:	2001f000 	.word	0x2001f000

d03e1cf8 <ui_draw_home>:
d03e1cf8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e1cfc:	f8df 9240 	ldr.w	r9, [pc, #576]	; d03e1f40 <ui_draw_home+0x248>
d03e1d00:	b09b      	sub	sp, #108	; 0x6c
d03e1d02:	4d7f      	ldr	r5, [pc, #508]	; (d03e1f00 <ui_draw_home+0x208>)
d03e1d04:	2360      	movs	r3, #96	; 0x60
d03e1d06:	f899 4000 	ldrb.w	r4, [r9]
d03e1d0a:	22c8      	movs	r2, #200	; 0xc8
d03e1d0c:	f8df 8234 	ldr.w	r8, [pc, #564]	; d03e1f44 <ui_draw_home+0x24c>
d03e1d10:	2146      	movs	r1, #70	; 0x46
d03e1d12:	200a      	movs	r0, #10
d03e1d14:	9500      	str	r5, [sp, #0]
d03e1d16:	f818 5004 	ldrb.w	r5, [r8, r4]
d03e1d1a:	f7ff ff91 	bl	d03e1c40 <ui_panel>
d03e1d1e:	4879      	ldr	r0, [pc, #484]	; (d03e1f04 <ui_draw_home+0x20c>)
d03e1d20:	2360      	movs	r3, #96	; 0x60
d03e1d22:	22fa      	movs	r2, #250	; 0xfa
d03e1d24:	2146      	movs	r1, #70	; 0x46
d03e1d26:	9000      	str	r0, [sp, #0]
d03e1d28:	20dc      	movs	r0, #220	; 0xdc
d03e1d2a:	f7ff ff89 	bl	d03e1c40 <ui_panel>
d03e1d2e:	2d80      	cmp	r5, #128	; 0x80
d03e1d30:	f104 0301 	add.w	r3, r4, #1
d03e1d34:	f200 80e1 	bhi.w	d03e1efa <ui_draw_home+0x202>
d03e1d38:	4a73      	ldr	r2, [pc, #460]	; (d03e1f08 <ui_draw_home+0x210>)
d03e1d3a:	f852 2025 	ldr.w	r2, [r2, r5, lsl #2]
d03e1d3e:	4c73      	ldr	r4, [pc, #460]	; (d03e1f0c <ui_draw_home+0x214>)
d03e1d40:	2160      	movs	r1, #96	; 0x60
d03e1d42:	9201      	str	r2, [sp, #4]
d03e1d44:	a802      	add	r0, sp, #8
d03e1d46:	4a72      	ldr	r2, [pc, #456]	; (d03e1f10 <ui_draw_home+0x218>)
d03e1d48:	9500      	str	r5, [sp, #0]
d03e1d4a:	25c8      	movs	r5, #200	; 0xc8
d03e1d4c:	f006 f822 	bl	d03e7d94 <sniprintf>
d03e1d50:	7b23      	ldrb	r3, [r4, #12]
d03e1d52:	7b62      	ldrb	r2, [r4, #13]
d03e1d54:	201e      	movs	r0, #30
d03e1d56:	7ba1      	ldrb	r1, [r4, #14]
d03e1d58:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1d5c:	7be2      	ldrb	r2, [r4, #15]
d03e1d5e:	4f6d      	ldr	r7, [pc, #436]	; (d03e1f14 <ui_draw_home+0x21c>)
d03e1d60:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e1d64:	f8df b1d4 	ldr.w	fp, [pc, #468]	; d03e1f3c <ui_draw_home+0x244>
d03e1d68:	f8df a1dc 	ldr.w	sl, [pc, #476]	; d03e1f48 <ui_draw_home+0x250>
d03e1d6c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1d70:	685b      	ldr	r3, [r3, #4]
d03e1d72:	68db      	ldr	r3, [r3, #12]
d03e1d74:	4798      	blx	r3
d03e1d76:	7b23      	ldrb	r3, [r4, #12]
d03e1d78:	7b60      	ldrb	r0, [r4, #13]
d03e1d7a:	aa02      	add	r2, sp, #8
d03e1d7c:	7ba1      	ldrb	r1, [r4, #14]
d03e1d7e:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03e1d82:	7be0      	ldrb	r0, [r4, #15]
d03e1d84:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e1d88:	2160      	movs	r1, #96	; 0x60
d03e1d8a:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d03e1d8e:	20e6      	movs	r0, #230	; 0xe6
d03e1d90:	685b      	ldr	r3, [r3, #4]
d03e1d92:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e1d94:	4798      	blx	r3
d03e1d96:	4960      	ldr	r1, [pc, #384]	; (d03e1f18 <ui_draw_home+0x220>)
d03e1d98:	2320      	movs	r3, #32
d03e1d9a:	2230      	movs	r2, #48	; 0x30
d03e1d9c:	20e6      	movs	r0, #230	; 0xe6
d03e1d9e:	9100      	str	r1, [sp, #0]
d03e1da0:	2186      	movs	r1, #134	; 0x86
d03e1da2:	f7ff fcb1 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e1da6:	495d      	ldr	r1, [pc, #372]	; (d03e1f1c <ui_draw_home+0x224>)
d03e1da8:	2320      	movs	r3, #32
d03e1daa:	2230      	movs	r2, #48	; 0x30
d03e1dac:	f44f 708d 	mov.w	r0, #282	; 0x11a
d03e1db0:	9100      	str	r1, [sp, #0]
d03e1db2:	2186      	movs	r1, #134	; 0x86
d03e1db4:	f7ff fca8 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e1db8:	4959      	ldr	r1, [pc, #356]	; (d03e1f20 <ui_draw_home+0x228>)
d03e1dba:	2320      	movs	r3, #32
d03e1dbc:	2230      	movs	r2, #48	; 0x30
d03e1dbe:	f44f 70ab 	mov.w	r0, #342	; 0x156
d03e1dc2:	9100      	str	r1, [sp, #0]
d03e1dc4:	2186      	movs	r1, #134	; 0x86
d03e1dc6:	f7ff fc9f 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e1dca:	4956      	ldr	r1, [pc, #344]	; (d03e1f24 <ui_draw_home+0x22c>)
d03e1dcc:	2320      	movs	r3, #32
d03e1dce:	2230      	movs	r2, #48	; 0x30
d03e1dd0:	f44f 70c5 	mov.w	r0, #394	; 0x18a
d03e1dd4:	9100      	str	r1, [sp, #0]
d03e1dd6:	2186      	movs	r1, #134	; 0x86
d03e1dd8:	f7ff fc96 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e1ddc:	4952      	ldr	r1, [pc, #328]	; (d03e1f28 <ui_draw_home+0x230>)
d03e1dde:	2362      	movs	r3, #98	; 0x62
d03e1de0:	22de      	movs	r2, #222	; 0xde
d03e1de2:	9100      	str	r1, [sp, #0]
d03e1de4:	200a      	movs	r0, #10
d03e1de6:	21ac      	movs	r1, #172	; 0xac
d03e1de8:	f7ff ff2a 	bl	d03e1c40 <ui_panel>
d03e1dec:	f817 6b01 	ldrb.w	r6, [r7], #1
d03e1df0:	4659      	mov	r1, fp
d03e1df2:	f818 2006 	ldrb.w	r2, [r8, r6]
d03e1df6:	1c73      	adds	r3, r6, #1
d03e1df8:	2a80      	cmp	r2, #128	; 0x80
d03e1dfa:	d802      	bhi.n	d03e1e02 <ui_draw_home+0x10a>
d03e1dfc:	4942      	ldr	r1, [pc, #264]	; (d03e1f08 <ui_draw_home+0x210>)
d03e1dfe:	f851 1022 	ldr.w	r1, [r1, r2, lsl #2]
d03e1e02:	9101      	str	r1, [sp, #4]
d03e1e04:	a802      	add	r0, sp, #8
d03e1e06:	2160      	movs	r1, #96	; 0x60
d03e1e08:	9200      	str	r2, [sp, #0]
d03e1e0a:	4652      	mov	r2, sl
d03e1e0c:	f005 ffc2 	bl	d03e7d94 <sniprintf>
d03e1e10:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e1e14:	7b62      	ldrb	r2, [r4, #13]
d03e1e16:	2018      	movs	r0, #24
d03e1e18:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e1e1c:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
d03e1e20:	7be3      	ldrb	r3, [r4, #15]
d03e1e22:	f899 c000 	ldrb.w	ip, [r9]
d03e1e26:	ea41 420e 	orr.w	r2, r1, lr, lsl #16
d03e1e2a:	45b4      	cmp	ip, r6
d03e1e2c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e1e30:	bf08      	it	eq
d03e1e32:	201e      	moveq	r0, #30
d03e1e34:	685b      	ldr	r3, [r3, #4]
d03e1e36:	68db      	ldr	r3, [r3, #12]
d03e1e38:	4798      	blx	r3
d03e1e3a:	7b22      	ldrb	r2, [r4, #12]
d03e1e3c:	7b60      	ldrb	r0, [r4, #13]
d03e1e3e:	4629      	mov	r1, r5
d03e1e40:	7ba6      	ldrb	r6, [r4, #14]
d03e1e42:	3510      	adds	r5, #16
d03e1e44:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d03e1e48:	7be3      	ldrb	r3, [r4, #15]
d03e1e4a:	aa02      	add	r2, sp, #8
d03e1e4c:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d03e1e50:	2018      	movs	r0, #24
d03e1e52:	ea46 6303 	orr.w	r3, r6, r3, lsl #24
d03e1e56:	685b      	ldr	r3, [r3, #4]
d03e1e58:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e1e5a:	4798      	blx	r3
d03e1e5c:	f5b5 7f84 	cmp.w	r5, #264	; 0x108
d03e1e60:	d1c4      	bne.n	d03e1dec <ui_draw_home+0xf4>
d03e1e62:	4832      	ldr	r0, [pc, #200]	; (d03e1f2c <ui_draw_home+0x234>)
d03e1e64:	235c      	movs	r3, #92	; 0x5c
d03e1e66:	22dc      	movs	r2, #220	; 0xdc
d03e1e68:	21ac      	movs	r1, #172	; 0xac
d03e1e6a:	9000      	str	r0, [sp, #0]
d03e1e6c:	20f2      	movs	r0, #242	; 0xf2
d03e1e6e:	f7ff fee7 	bl	d03e1c40 <ui_panel>
d03e1e72:	7b23      	ldrb	r3, [r4, #12]
d03e1e74:	7b62      	ldrb	r2, [r4, #13]
d03e1e76:	2018      	movs	r0, #24
d03e1e78:	7ba1      	ldrb	r1, [r4, #14]
d03e1e7a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1e7e:	7be2      	ldrb	r2, [r4, #15]
d03e1e80:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e1e84:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1e88:	685b      	ldr	r3, [r3, #4]
d03e1e8a:	68db      	ldr	r3, [r3, #12]
d03e1e8c:	4798      	blx	r3
d03e1e8e:	7b23      	ldrb	r3, [r4, #12]
d03e1e90:	7b65      	ldrb	r5, [r4, #13]
d03e1e92:	21c8      	movs	r1, #200	; 0xc8
d03e1e94:	7ba2      	ldrb	r2, [r4, #14]
d03e1e96:	f44f 7080 	mov.w	r0, #256	; 0x100
d03e1e9a:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d03e1e9e:	7be5      	ldrb	r5, [r4, #15]
d03e1ea0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e1ea4:	4a22      	ldr	r2, [pc, #136]	; (d03e1f30 <ui_draw_home+0x238>)
d03e1ea6:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d03e1eaa:	685b      	ldr	r3, [r3, #4]
d03e1eac:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e1eae:	4798      	blx	r3
d03e1eb0:	7b23      	ldrb	r3, [r4, #12]
d03e1eb2:	7b65      	ldrb	r5, [r4, #13]
d03e1eb4:	21d8      	movs	r1, #216	; 0xd8
d03e1eb6:	7ba2      	ldrb	r2, [r4, #14]
d03e1eb8:	f44f 7080 	mov.w	r0, #256	; 0x100
d03e1ebc:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d03e1ec0:	7be5      	ldrb	r5, [r4, #15]
d03e1ec2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e1ec6:	4a1b      	ldr	r2, [pc, #108]	; (d03e1f34 <ui_draw_home+0x23c>)
d03e1ec8:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d03e1ecc:	685b      	ldr	r3, [r3, #4]
d03e1ece:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e1ed0:	4798      	blx	r3
d03e1ed2:	7b23      	ldrb	r3, [r4, #12]
d03e1ed4:	7b62      	ldrb	r2, [r4, #13]
d03e1ed6:	21ec      	movs	r1, #236	; 0xec
d03e1ed8:	7ba5      	ldrb	r5, [r4, #14]
d03e1eda:	f44f 7080 	mov.w	r0, #256	; 0x100
d03e1ede:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1ee2:	7be4      	ldrb	r4, [r4, #15]
d03e1ee4:	4a14      	ldr	r2, [pc, #80]	; (d03e1f38 <ui_draw_home+0x240>)
d03e1ee6:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d03e1eea:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03e1eee:	685b      	ldr	r3, [r3, #4]
d03e1ef0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e1ef2:	4798      	blx	r3
d03e1ef4:	b01b      	add	sp, #108	; 0x6c
d03e1ef6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e1efa:	4a10      	ldr	r2, [pc, #64]	; (d03e1f3c <ui_draw_home+0x244>)
d03e1efc:	e71f      	b.n	d03e1d3e <ui_draw_home+0x46>
d03e1efe:	bf00      	nop
d03e1f00:	d03e90d8 	.word	0xd03e90d8
d03e1f04:	d03e90e4 	.word	0xd03e90e4
d03e1f08:	d03e99a4 	.word	0xd03e99a4
d03e1f0c:	2001f000 	.word	0x2001f000
d03e1f10:	d03e90f8 	.word	0xd03e90f8
d03e1f14:	d03ea640 	.word	0xd03ea640
d03e1f18:	d03e910c 	.word	0xd03e910c
d03e1f1c:	d03e9110 	.word	0xd03e9110
d03e1f20:	d03e9114 	.word	0xd03e9114
d03e1f24:	d03e9118 	.word	0xd03e9118
d03e1f28:	d03e911c 	.word	0xd03e911c
d03e1f2c:	d03e9144 	.word	0xd03e9144
d03e1f30:	d03e914c 	.word	0xd03e914c
d03e1f34:	d03e9164 	.word	0xd03e9164
d03e1f38:	d03e9178 	.word	0xd03e9178
d03e1f3c:	d03e90cc 	.word	0xd03e90cc
d03e1f40:	d03ea645 	.word	0xd03ea645
d03e1f44:	d03ea3a4 	.word	0xd03ea3a4
d03e1f48:	d03e912c 	.word	0xd03e912c

d03e1f4c <midi_update_all_active_volume>:
d03e1f4c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e1f4e:	4c0c      	ldr	r4, [pc, #48]	; (d03e1f80 <midi_update_all_active_volume+0x34>)
d03e1f50:	7823      	ldrb	r3, [r4, #0]
d03e1f52:	b9bb      	cbnz	r3, d03e1f84 <midi_update_all_active_volume+0x38>
d03e1f54:	7a23      	ldrb	r3, [r4, #8]
d03e1f56:	2b00      	cmp	r3, #0
d03e1f58:	d157      	bne.n	d03e200a <midi_update_all_active_volume+0xbe>
d03e1f5a:	7c23      	ldrb	r3, [r4, #16]
d03e1f5c:	2b00      	cmp	r3, #0
d03e1f5e:	f040 8098 	bne.w	d03e2092 <midi_update_all_active_volume+0x146>
d03e1f62:	7e23      	ldrb	r3, [r4, #24]
d03e1f64:	2b00      	cmp	r3, #0
d03e1f66:	f040 80d8 	bne.w	d03e211a <midi_update_all_active_volume+0x1ce>
d03e1f6a:	f894 3020 	ldrb.w	r3, [r4, #32]
d03e1f6e:	2b00      	cmp	r3, #0
d03e1f70:	f040 8118 	bne.w	d03e21a4 <midi_update_all_active_volume+0x258>
d03e1f74:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d03e1f78:	2b00      	cmp	r3, #0
d03e1f7a:	f040 815a 	bne.w	d03e2232 <midi_update_all_active_volume+0x2e6>
d03e1f7e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e1f80:	d03ea5f0 	.word	0xd03ea5f0
d03e1f84:	7862      	ldrb	r2, [r4, #1]
d03e1f86:	4bce      	ldr	r3, [pc, #824]	; (d03e22c0 <midi_update_all_active_volume+0x374>)
d03e1f88:	78e0      	ldrb	r0, [r4, #3]
d03e1f8a:	2a09      	cmp	r2, #9
d03e1f8c:	5c9e      	ldrb	r6, [r3, r2]
d03e1f8e:	49cd      	ldr	r1, [pc, #820]	; (d03e22c4 <midi_update_all_active_volume+0x378>)
d03e1f90:	fb16 fe00 	smulbb	lr, r6, r0
d03e1f94:	4bcc      	ldr	r3, [pc, #816]	; (d03e22c8 <midi_update_all_active_volume+0x37c>)
d03e1f96:	f8b1 c000 	ldrh.w	ip, [r1]
d03e1f9a:	f10e 0e3f 	add.w	lr, lr, #63	; 0x3f
d03e1f9e:	4dcb      	ldr	r5, [pc, #812]	; (d03e22cc <midi_update_all_active_volume+0x380>)
d03e1fa0:	fba3 710e 	umull	r7, r1, r3, lr
d03e1fa4:	5cad      	ldrb	r5, [r5, r2]
d03e1fa6:	4fca      	ldr	r7, [pc, #808]	; (d03e22d0 <midi_update_all_active_volume+0x384>)
d03e1fa8:	ebae 0e01 	sub.w	lr, lr, r1
d03e1fac:	eb01 015e 	add.w	r1, r1, lr, lsr #1
d03e1fb0:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e1fb4:	fb05 f101 	mul.w	r1, r5, r1
d03e1fb8:	f101 013f 	add.w	r1, r1, #63	; 0x3f
d03e1fbc:	fba3 e301 	umull	lr, r3, r3, r1
d03e1fc0:	eba1 0103 	sub.w	r1, r1, r3
d03e1fc4:	eb03 0151 	add.w	r1, r3, r1, lsr #1
d03e1fc8:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e1fcc:	fb0c f101 	mul.w	r1, ip, r1
d03e1fd0:	f101 0132 	add.w	r1, r1, #50	; 0x32
d03e1fd4:	fba7 3101 	umull	r3, r1, r7, r1
d03e1fd8:	ea4f 1151 	mov.w	r1, r1, lsr #5
d03e1fdc:	f000 818e 	beq.w	d03e22fc <midi_update_all_active_volume+0x3b0>
d03e1fe0:	2800      	cmp	r0, #0
d03e1fe2:	f000 81ba 	beq.w	d03e235a <midi_update_all_active_volume+0x40e>
d03e1fe6:	2900      	cmp	r1, #0
d03e1fe8:	f040 81b7 	bne.w	d03e235a <midi_update_all_active_volume+0x40e>
d03e1fec:	2e00      	cmp	r6, #0
d03e1fee:	bf18      	it	ne
d03e1ff0:	2d00      	cmpne	r5, #0
d03e1ff2:	d003      	beq.n	d03e1ffc <midi_update_all_active_volume+0xb0>
d03e1ff4:	f1bc 0f00 	cmp.w	ip, #0
d03e1ff8:	f040 81c2 	bne.w	d03e2380 <midi_update_all_active_volume+0x434>
d03e1ffc:	2100      	movs	r1, #0
d03e1ffe:	2000      	movs	r0, #0
d03e2000:	f7fe fd18 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2004:	7a23      	ldrb	r3, [r4, #8]
d03e2006:	2b00      	cmp	r3, #0
d03e2008:	d0a7      	beq.n	d03e1f5a <midi_update_all_active_volume+0xe>
d03e200a:	7a62      	ldrb	r2, [r4, #9]
d03e200c:	4bac      	ldr	r3, [pc, #688]	; (d03e22c0 <midi_update_all_active_volume+0x374>)
d03e200e:	7ae0      	ldrb	r0, [r4, #11]
d03e2010:	2a09      	cmp	r2, #9
d03e2012:	5c9d      	ldrb	r5, [r3, r2]
d03e2014:	49ab      	ldr	r1, [pc, #684]	; (d03e22c4 <midi_update_all_active_volume+0x378>)
d03e2016:	fb10 fe05 	smulbb	lr, r0, r5
d03e201a:	4bab      	ldr	r3, [pc, #684]	; (d03e22c8 <midi_update_all_active_volume+0x37c>)
d03e201c:	f8b1 c000 	ldrh.w	ip, [r1]
d03e2020:	f10e 0e3f 	add.w	lr, lr, #63	; 0x3f
d03e2024:	4ea9      	ldr	r6, [pc, #676]	; (d03e22cc <midi_update_all_active_volume+0x380>)
d03e2026:	fba3 710e 	umull	r7, r1, r3, lr
d03e202a:	5cb6      	ldrb	r6, [r6, r2]
d03e202c:	4fa8      	ldr	r7, [pc, #672]	; (d03e22d0 <midi_update_all_active_volume+0x384>)
d03e202e:	ebae 0e01 	sub.w	lr, lr, r1
d03e2032:	eb01 015e 	add.w	r1, r1, lr, lsr #1
d03e2036:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e203a:	fb06 f101 	mul.w	r1, r6, r1
d03e203e:	f101 013f 	add.w	r1, r1, #63	; 0x3f
d03e2042:	fba3 e301 	umull	lr, r3, r3, r1
d03e2046:	eba1 0103 	sub.w	r1, r1, r3
d03e204a:	eb03 0151 	add.w	r1, r3, r1, lsr #1
d03e204e:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e2052:	fb0c f101 	mul.w	r1, ip, r1
d03e2056:	f101 0132 	add.w	r1, r1, #50	; 0x32
d03e205a:	fba7 3101 	umull	r3, r1, r7, r1
d03e205e:	ea4f 1151 	mov.w	r1, r1, lsr #5
d03e2062:	f000 8124 	beq.w	d03e22ae <midi_update_all_active_volume+0x362>
d03e2066:	2900      	cmp	r1, #0
d03e2068:	f040 817c 	bne.w	d03e2364 <midi_update_all_active_volume+0x418>
d03e206c:	2800      	cmp	r0, #0
d03e206e:	f000 8179 	beq.w	d03e2364 <midi_update_all_active_volume+0x418>
d03e2072:	2e00      	cmp	r6, #0
d03e2074:	bf18      	it	ne
d03e2076:	2d00      	cmpne	r5, #0
d03e2078:	d003      	beq.n	d03e2082 <midi_update_all_active_volume+0x136>
d03e207a:	f1bc 0f00 	cmp.w	ip, #0
d03e207e:	f040 817b 	bne.w	d03e2378 <midi_update_all_active_volume+0x42c>
d03e2082:	2100      	movs	r1, #0
d03e2084:	2001      	movs	r0, #1
d03e2086:	f7fe fcd5 	bl	d03e0a34 <sid_voice_set_velocity>
d03e208a:	7c23      	ldrb	r3, [r4, #16]
d03e208c:	2b00      	cmp	r3, #0
d03e208e:	f43f af68 	beq.w	d03e1f62 <midi_update_all_active_volume+0x16>
d03e2092:	7c62      	ldrb	r2, [r4, #17]
d03e2094:	4b8a      	ldr	r3, [pc, #552]	; (d03e22c0 <midi_update_all_active_volume+0x374>)
d03e2096:	7ce0      	ldrb	r0, [r4, #19]
d03e2098:	2a09      	cmp	r2, #9
d03e209a:	5c9d      	ldrb	r5, [r3, r2]
d03e209c:	4989      	ldr	r1, [pc, #548]	; (d03e22c4 <midi_update_all_active_volume+0x378>)
d03e209e:	fb10 fe05 	smulbb	lr, r0, r5
d03e20a2:	4b89      	ldr	r3, [pc, #548]	; (d03e22c8 <midi_update_all_active_volume+0x37c>)
d03e20a4:	f8b1 c000 	ldrh.w	ip, [r1]
d03e20a8:	f10e 0e3f 	add.w	lr, lr, #63	; 0x3f
d03e20ac:	4e87      	ldr	r6, [pc, #540]	; (d03e22cc <midi_update_all_active_volume+0x380>)
d03e20ae:	fba3 710e 	umull	r7, r1, r3, lr
d03e20b2:	5cb6      	ldrb	r6, [r6, r2]
d03e20b4:	4f86      	ldr	r7, [pc, #536]	; (d03e22d0 <midi_update_all_active_volume+0x384>)
d03e20b6:	ebae 0e01 	sub.w	lr, lr, r1
d03e20ba:	eb01 015e 	add.w	r1, r1, lr, lsr #1
d03e20be:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e20c2:	fb06 f101 	mul.w	r1, r6, r1
d03e20c6:	f101 013f 	add.w	r1, r1, #63	; 0x3f
d03e20ca:	fba3 e301 	umull	lr, r3, r3, r1
d03e20ce:	eba1 0103 	sub.w	r1, r1, r3
d03e20d2:	eb03 0151 	add.w	r1, r3, r1, lsr #1
d03e20d6:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e20da:	fb0c f101 	mul.w	r1, ip, r1
d03e20de:	f101 0132 	add.w	r1, r1, #50	; 0x32
d03e20e2:	fba7 3101 	umull	r3, r1, r7, r1
d03e20e6:	ea4f 1151 	mov.w	r1, r1, lsr #5
d03e20ea:	f000 80f5 	beq.w	d03e22d8 <midi_update_all_active_volume+0x38c>
d03e20ee:	2900      	cmp	r1, #0
d03e20f0:	f040 813d 	bne.w	d03e236e <midi_update_all_active_volume+0x422>
d03e20f4:	2800      	cmp	r0, #0
d03e20f6:	f000 813a 	beq.w	d03e236e <midi_update_all_active_volume+0x422>
d03e20fa:	2e00      	cmp	r6, #0
d03e20fc:	bf18      	it	ne
d03e20fe:	2d00      	cmpne	r5, #0
d03e2100:	d003      	beq.n	d03e210a <midi_update_all_active_volume+0x1be>
d03e2102:	f1bc 0f00 	cmp.w	ip, #0
d03e2106:	f040 814b 	bne.w	d03e23a0 <midi_update_all_active_volume+0x454>
d03e210a:	2100      	movs	r1, #0
d03e210c:	2002      	movs	r0, #2
d03e210e:	f7fe fc91 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2112:	7e23      	ldrb	r3, [r4, #24]
d03e2114:	2b00      	cmp	r3, #0
d03e2116:	f43f af28 	beq.w	d03e1f6a <midi_update_all_active_volume+0x1e>
d03e211a:	7e62      	ldrb	r2, [r4, #25]
d03e211c:	4b68      	ldr	r3, [pc, #416]	; (d03e22c0 <midi_update_all_active_volume+0x374>)
d03e211e:	7ee0      	ldrb	r0, [r4, #27]
d03e2120:	2a09      	cmp	r2, #9
d03e2122:	5c9d      	ldrb	r5, [r3, r2]
d03e2124:	4967      	ldr	r1, [pc, #412]	; (d03e22c4 <midi_update_all_active_volume+0x378>)
d03e2126:	fb10 fe05 	smulbb	lr, r0, r5
d03e212a:	4b67      	ldr	r3, [pc, #412]	; (d03e22c8 <midi_update_all_active_volume+0x37c>)
d03e212c:	f8b1 c000 	ldrh.w	ip, [r1]
d03e2130:	f10e 0e3f 	add.w	lr, lr, #63	; 0x3f
d03e2134:	4e65      	ldr	r6, [pc, #404]	; (d03e22cc <midi_update_all_active_volume+0x380>)
d03e2136:	fba3 710e 	umull	r7, r1, r3, lr
d03e213a:	5cb6      	ldrb	r6, [r6, r2]
d03e213c:	4f64      	ldr	r7, [pc, #400]	; (d03e22d0 <midi_update_all_active_volume+0x384>)
d03e213e:	ebae 0e01 	sub.w	lr, lr, r1
d03e2142:	eb01 015e 	add.w	r1, r1, lr, lsr #1
d03e2146:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e214a:	fb06 f101 	mul.w	r1, r6, r1
d03e214e:	f101 013f 	add.w	r1, r1, #63	; 0x3f
d03e2152:	fba3 e301 	umull	lr, r3, r3, r1
d03e2156:	eba1 0103 	sub.w	r1, r1, r3
d03e215a:	eb03 0151 	add.w	r1, r3, r1, lsr #1
d03e215e:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e2162:	fb0c f101 	mul.w	r1, ip, r1
d03e2166:	f101 0132 	add.w	r1, r1, #50	; 0x32
d03e216a:	fba7 3101 	umull	r3, r1, r7, r1
d03e216e:	ea4f 1151 	mov.w	r1, r1, lsr #5
d03e2172:	f000 80cc 	beq.w	d03e230e <midi_update_all_active_volume+0x3c2>
d03e2176:	2900      	cmp	r1, #0
d03e2178:	f040 80db 	bne.w	d03e2332 <midi_update_all_active_volume+0x3e6>
d03e217c:	2800      	cmp	r0, #0
d03e217e:	f000 80d8 	beq.w	d03e2332 <midi_update_all_active_volume+0x3e6>
d03e2182:	2e00      	cmp	r6, #0
d03e2184:	bf18      	it	ne
d03e2186:	2d00      	cmpne	r5, #0
d03e2188:	d003      	beq.n	d03e2192 <midi_update_all_active_volume+0x246>
d03e218a:	f1bc 0f00 	cmp.w	ip, #0
d03e218e:	f040 80ff 	bne.w	d03e2390 <midi_update_all_active_volume+0x444>
d03e2192:	2100      	movs	r1, #0
d03e2194:	2003      	movs	r0, #3
d03e2196:	f7fe fc4d 	bl	d03e0a34 <sid_voice_set_velocity>
d03e219a:	f894 3020 	ldrb.w	r3, [r4, #32]
d03e219e:	2b00      	cmp	r3, #0
d03e21a0:	f43f aee8 	beq.w	d03e1f74 <midi_update_all_active_volume+0x28>
d03e21a4:	f894 2021 	ldrb.w	r2, [r4, #33]	; 0x21
d03e21a8:	4b45      	ldr	r3, [pc, #276]	; (d03e22c0 <midi_update_all_active_volume+0x374>)
d03e21aa:	f894 0023 	ldrb.w	r0, [r4, #35]	; 0x23
d03e21ae:	2a09      	cmp	r2, #9
d03e21b0:	5c9d      	ldrb	r5, [r3, r2]
d03e21b2:	4944      	ldr	r1, [pc, #272]	; (d03e22c4 <midi_update_all_active_volume+0x378>)
d03e21b4:	fb10 fe05 	smulbb	lr, r0, r5
d03e21b8:	4b43      	ldr	r3, [pc, #268]	; (d03e22c8 <midi_update_all_active_volume+0x37c>)
d03e21ba:	f8b1 c000 	ldrh.w	ip, [r1]
d03e21be:	f10e 0e3f 	add.w	lr, lr, #63	; 0x3f
d03e21c2:	4e42      	ldr	r6, [pc, #264]	; (d03e22cc <midi_update_all_active_volume+0x380>)
d03e21c4:	fba3 710e 	umull	r7, r1, r3, lr
d03e21c8:	5cb6      	ldrb	r6, [r6, r2]
d03e21ca:	4f41      	ldr	r7, [pc, #260]	; (d03e22d0 <midi_update_all_active_volume+0x384>)
d03e21cc:	ebae 0e01 	sub.w	lr, lr, r1
d03e21d0:	eb01 015e 	add.w	r1, r1, lr, lsr #1
d03e21d4:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e21d8:	fb06 f101 	mul.w	r1, r6, r1
d03e21dc:	f101 013f 	add.w	r1, r1, #63	; 0x3f
d03e21e0:	fba3 e301 	umull	lr, r3, r3, r1
d03e21e4:	eba1 0103 	sub.w	r1, r1, r3
d03e21e8:	eb03 0151 	add.w	r1, r3, r1, lsr #1
d03e21ec:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e21f0:	fb0c f101 	mul.w	r1, ip, r1
d03e21f4:	f101 0132 	add.w	r1, r1, #50	; 0x32
d03e21f8:	fba7 3101 	umull	r3, r1, r7, r1
d03e21fc:	ea4f 1151 	mov.w	r1, r1, lsr #5
d03e2200:	f000 808e 	beq.w	d03e2320 <midi_update_all_active_volume+0x3d4>
d03e2204:	2900      	cmp	r1, #0
d03e2206:	f040 8099 	bne.w	d03e233c <midi_update_all_active_volume+0x3f0>
d03e220a:	2800      	cmp	r0, #0
d03e220c:	f000 8096 	beq.w	d03e233c <midi_update_all_active_volume+0x3f0>
d03e2210:	2e00      	cmp	r6, #0
d03e2212:	bf18      	it	ne
d03e2214:	2d00      	cmpne	r5, #0
d03e2216:	d003      	beq.n	d03e2220 <midi_update_all_active_volume+0x2d4>
d03e2218:	f1bc 0f00 	cmp.w	ip, #0
d03e221c:	f040 80bc 	bne.w	d03e2398 <midi_update_all_active_volume+0x44c>
d03e2220:	2100      	movs	r1, #0
d03e2222:	2004      	movs	r0, #4
d03e2224:	f7fe fc06 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2228:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d03e222c:	2b00      	cmp	r3, #0
d03e222e:	f43f aea6 	beq.w	d03e1f7e <midi_update_all_active_volume+0x32>
d03e2232:	f894 2029 	ldrb.w	r2, [r4, #41]	; 0x29
d03e2236:	4b22      	ldr	r3, [pc, #136]	; (d03e22c0 <midi_update_all_active_volume+0x374>)
d03e2238:	f894 002b 	ldrb.w	r0, [r4, #43]	; 0x2b
d03e223c:	2a09      	cmp	r2, #9
d03e223e:	5c9d      	ldrb	r5, [r3, r2]
d03e2240:	4920      	ldr	r1, [pc, #128]	; (d03e22c4 <midi_update_all_active_volume+0x378>)
d03e2242:	fb10 fc05 	smulbb	ip, r0, r5
d03e2246:	4b20      	ldr	r3, [pc, #128]	; (d03e22c8 <midi_update_all_active_volume+0x37c>)
d03e2248:	880e      	ldrh	r6, [r1, #0]
d03e224a:	f10c 0c3f 	add.w	ip, ip, #63	; 0x3f
d03e224e:	4c1f      	ldr	r4, [pc, #124]	; (d03e22cc <midi_update_all_active_volume+0x380>)
d03e2250:	fba3 710c 	umull	r7, r1, r3, ip
d03e2254:	5ca4      	ldrb	r4, [r4, r2]
d03e2256:	4f1e      	ldr	r7, [pc, #120]	; (d03e22d0 <midi_update_all_active_volume+0x384>)
d03e2258:	ebac 0c01 	sub.w	ip, ip, r1
d03e225c:	eb01 015c 	add.w	r1, r1, ip, lsr #1
d03e2260:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e2264:	fb04 f101 	mul.w	r1, r4, r1
d03e2268:	f101 013f 	add.w	r1, r1, #63	; 0x3f
d03e226c:	fba3 c301 	umull	ip, r3, r3, r1
d03e2270:	eba1 0103 	sub.w	r1, r1, r3
d03e2274:	eb03 0151 	add.w	r1, r3, r1, lsr #1
d03e2278:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e227c:	fb06 f101 	mul.w	r1, r6, r1
d03e2280:	f101 0132 	add.w	r1, r1, #50	; 0x32
d03e2284:	fba7 3101 	umull	r3, r1, r7, r1
d03e2288:	ea4f 1151 	mov.w	r1, r1, lsr #5
d03e228c:	d02d      	beq.n	d03e22ea <midi_update_all_active_volume+0x39e>
d03e228e:	2900      	cmp	r1, #0
d03e2290:	d159      	bne.n	d03e2346 <midi_update_all_active_volume+0x3fa>
d03e2292:	2800      	cmp	r0, #0
d03e2294:	d057      	beq.n	d03e2346 <midi_update_all_active_volume+0x3fa>
d03e2296:	2d00      	cmp	r5, #0
d03e2298:	bf18      	it	ne
d03e229a:	2c00      	cmpne	r4, #0
d03e229c:	d001      	beq.n	d03e22a2 <midi_update_all_active_volume+0x356>
d03e229e:	2e00      	cmp	r6, #0
d03e22a0:	d172      	bne.n	d03e2388 <midi_update_all_active_volume+0x43c>
d03e22a2:	2100      	movs	r1, #0
d03e22a4:	2005      	movs	r0, #5
d03e22a6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d03e22aa:	f7fe bbc3 	b.w	d03e0a34 <sid_voice_set_velocity>
d03e22ae:	4b09      	ldr	r3, [pc, #36]	; (d03e22d4 <midi_update_all_active_volume+0x388>)
d03e22b0:	881b      	ldrh	r3, [r3, #0]
d03e22b2:	fb01 f103 	mul.w	r1, r1, r3
d03e22b6:	3132      	adds	r1, #50	; 0x32
d03e22b8:	fba7 3101 	umull	r3, r1, r7, r1
d03e22bc:	0949      	lsrs	r1, r1, #5
d03e22be:	e6d2      	b.n	d03e2066 <midi_update_all_active_volume+0x11a>
d03e22c0:	d03ea3b4 	.word	0xd03ea3b4
d03e22c4:	d03ea5d2 	.word	0xd03ea5d2
d03e22c8:	02040811 	.word	0x02040811
d03e22cc:	d03ea394 	.word	0xd03ea394
d03e22d0:	51eb851f 	.word	0x51eb851f
d03e22d4:	d03ea3ca 	.word	0xd03ea3ca
d03e22d8:	4b45      	ldr	r3, [pc, #276]	; (d03e23f0 <midi_update_all_active_volume+0x4a4>)
d03e22da:	881b      	ldrh	r3, [r3, #0]
d03e22dc:	fb01 f103 	mul.w	r1, r1, r3
d03e22e0:	3132      	adds	r1, #50	; 0x32
d03e22e2:	fba7 3101 	umull	r3, r1, r7, r1
d03e22e6:	0949      	lsrs	r1, r1, #5
d03e22e8:	e701      	b.n	d03e20ee <midi_update_all_active_volume+0x1a2>
d03e22ea:	4b41      	ldr	r3, [pc, #260]	; (d03e23f0 <midi_update_all_active_volume+0x4a4>)
d03e22ec:	881b      	ldrh	r3, [r3, #0]
d03e22ee:	fb01 f103 	mul.w	r1, r1, r3
d03e22f2:	3132      	adds	r1, #50	; 0x32
d03e22f4:	fba7 3101 	umull	r3, r1, r7, r1
d03e22f8:	0949      	lsrs	r1, r1, #5
d03e22fa:	e7c8      	b.n	d03e228e <midi_update_all_active_volume+0x342>
d03e22fc:	4b3c      	ldr	r3, [pc, #240]	; (d03e23f0 <midi_update_all_active_volume+0x4a4>)
d03e22fe:	881b      	ldrh	r3, [r3, #0]
d03e2300:	fb01 f103 	mul.w	r1, r1, r3
d03e2304:	3132      	adds	r1, #50	; 0x32
d03e2306:	fba7 3101 	umull	r3, r1, r7, r1
d03e230a:	0949      	lsrs	r1, r1, #5
d03e230c:	e668      	b.n	d03e1fe0 <midi_update_all_active_volume+0x94>
d03e230e:	4b38      	ldr	r3, [pc, #224]	; (d03e23f0 <midi_update_all_active_volume+0x4a4>)
d03e2310:	881b      	ldrh	r3, [r3, #0]
d03e2312:	fb01 f103 	mul.w	r1, r1, r3
d03e2316:	3132      	adds	r1, #50	; 0x32
d03e2318:	fba7 3101 	umull	r3, r1, r7, r1
d03e231c:	0949      	lsrs	r1, r1, #5
d03e231e:	e72a      	b.n	d03e2176 <midi_update_all_active_volume+0x22a>
d03e2320:	4b33      	ldr	r3, [pc, #204]	; (d03e23f0 <midi_update_all_active_volume+0x4a4>)
d03e2322:	881b      	ldrh	r3, [r3, #0]
d03e2324:	fb01 f103 	mul.w	r1, r1, r3
d03e2328:	3132      	adds	r1, #50	; 0x32
d03e232a:	fba7 3101 	umull	r3, r1, r7, r1
d03e232e:	0949      	lsrs	r1, r1, #5
d03e2330:	e768      	b.n	d03e2204 <midi_update_all_active_volume+0x2b8>
d03e2332:	29ff      	cmp	r1, #255	; 0xff
d03e2334:	bf28      	it	cs
d03e2336:	21ff      	movcs	r1, #255	; 0xff
d03e2338:	b2c9      	uxtb	r1, r1
d03e233a:	e72b      	b.n	d03e2194 <midi_update_all_active_volume+0x248>
d03e233c:	29ff      	cmp	r1, #255	; 0xff
d03e233e:	bf28      	it	cs
d03e2340:	21ff      	movcs	r1, #255	; 0xff
d03e2342:	b2c9      	uxtb	r1, r1
d03e2344:	e76d      	b.n	d03e2222 <midi_update_all_active_volume+0x2d6>
d03e2346:	29ff      	cmp	r1, #255	; 0xff
d03e2348:	f04f 0005 	mov.w	r0, #5
d03e234c:	bf28      	it	cs
d03e234e:	21ff      	movcs	r1, #255	; 0xff
d03e2350:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d03e2354:	b2c9      	uxtb	r1, r1
d03e2356:	f7fe bb6d 	b.w	d03e0a34 <sid_voice_set_velocity>
d03e235a:	29ff      	cmp	r1, #255	; 0xff
d03e235c:	bf28      	it	cs
d03e235e:	21ff      	movcs	r1, #255	; 0xff
d03e2360:	b2c9      	uxtb	r1, r1
d03e2362:	e64c      	b.n	d03e1ffe <midi_update_all_active_volume+0xb2>
d03e2364:	29ff      	cmp	r1, #255	; 0xff
d03e2366:	bf28      	it	cs
d03e2368:	21ff      	movcs	r1, #255	; 0xff
d03e236a:	b2c9      	uxtb	r1, r1
d03e236c:	e68a      	b.n	d03e2084 <midi_update_all_active_volume+0x138>
d03e236e:	29ff      	cmp	r1, #255	; 0xff
d03e2370:	bf28      	it	cs
d03e2372:	21ff      	movcs	r1, #255	; 0xff
d03e2374:	b2c9      	uxtb	r1, r1
d03e2376:	e6c9      	b.n	d03e210c <midi_update_all_active_volume+0x1c0>
d03e2378:	2a09      	cmp	r2, #9
d03e237a:	d015      	beq.n	d03e23a8 <midi_update_all_active_volume+0x45c>
d03e237c:	2101      	movs	r1, #1
d03e237e:	e681      	b.n	d03e2084 <midi_update_all_active_volume+0x138>
d03e2380:	2a09      	cmp	r2, #9
d03e2382:	d01d      	beq.n	d03e23c0 <midi_update_all_active_volume+0x474>
d03e2384:	2101      	movs	r1, #1
d03e2386:	e63a      	b.n	d03e1ffe <midi_update_all_active_volume+0xb2>
d03e2388:	2a09      	cmp	r2, #9
d03e238a:	d025      	beq.n	d03e23d8 <midi_update_all_active_volume+0x48c>
d03e238c:	2101      	movs	r1, #1
d03e238e:	e789      	b.n	d03e22a4 <midi_update_all_active_volume+0x358>
d03e2390:	2a09      	cmp	r2, #9
d03e2392:	d01b      	beq.n	d03e23cc <midi_update_all_active_volume+0x480>
d03e2394:	2101      	movs	r1, #1
d03e2396:	e6fd      	b.n	d03e2194 <midi_update_all_active_volume+0x248>
d03e2398:	2a09      	cmp	r2, #9
d03e239a:	d023      	beq.n	d03e23e4 <midi_update_all_active_volume+0x498>
d03e239c:	2101      	movs	r1, #1
d03e239e:	e740      	b.n	d03e2222 <midi_update_all_active_volume+0x2d6>
d03e23a0:	2a09      	cmp	r2, #9
d03e23a2:	d007      	beq.n	d03e23b4 <midi_update_all_active_volume+0x468>
d03e23a4:	2101      	movs	r1, #1
d03e23a6:	e6b1      	b.n	d03e210c <midi_update_all_active_volume+0x1c0>
d03e23a8:	4b11      	ldr	r3, [pc, #68]	; (d03e23f0 <midi_update_all_active_volume+0x4a4>)
d03e23aa:	8819      	ldrh	r1, [r3, #0]
d03e23ac:	3900      	subs	r1, #0
d03e23ae:	bf18      	it	ne
d03e23b0:	2101      	movne	r1, #1
d03e23b2:	e667      	b.n	d03e2084 <midi_update_all_active_volume+0x138>
d03e23b4:	4b0e      	ldr	r3, [pc, #56]	; (d03e23f0 <midi_update_all_active_volume+0x4a4>)
d03e23b6:	8819      	ldrh	r1, [r3, #0]
d03e23b8:	3900      	subs	r1, #0
d03e23ba:	bf18      	it	ne
d03e23bc:	2101      	movne	r1, #1
d03e23be:	e6a5      	b.n	d03e210c <midi_update_all_active_volume+0x1c0>
d03e23c0:	4b0b      	ldr	r3, [pc, #44]	; (d03e23f0 <midi_update_all_active_volume+0x4a4>)
d03e23c2:	8819      	ldrh	r1, [r3, #0]
d03e23c4:	3900      	subs	r1, #0
d03e23c6:	bf18      	it	ne
d03e23c8:	2101      	movne	r1, #1
d03e23ca:	e618      	b.n	d03e1ffe <midi_update_all_active_volume+0xb2>
d03e23cc:	4b08      	ldr	r3, [pc, #32]	; (d03e23f0 <midi_update_all_active_volume+0x4a4>)
d03e23ce:	8819      	ldrh	r1, [r3, #0]
d03e23d0:	3900      	subs	r1, #0
d03e23d2:	bf18      	it	ne
d03e23d4:	2101      	movne	r1, #1
d03e23d6:	e6dd      	b.n	d03e2194 <midi_update_all_active_volume+0x248>
d03e23d8:	4b05      	ldr	r3, [pc, #20]	; (d03e23f0 <midi_update_all_active_volume+0x4a4>)
d03e23da:	8819      	ldrh	r1, [r3, #0]
d03e23dc:	3900      	subs	r1, #0
d03e23de:	bf18      	it	ne
d03e23e0:	2101      	movne	r1, #1
d03e23e2:	e75f      	b.n	d03e22a4 <midi_update_all_active_volume+0x358>
d03e23e4:	4b02      	ldr	r3, [pc, #8]	; (d03e23f0 <midi_update_all_active_volume+0x4a4>)
d03e23e6:	8819      	ldrh	r1, [r3, #0]
d03e23e8:	3900      	subs	r1, #0
d03e23ea:	bf18      	it	ne
d03e23ec:	2101      	movne	r1, #1
d03e23ee:	e718      	b.n	d03e2222 <midi_update_all_active_volume+0x2d6>
d03e23f0:	d03ea3ca 	.word	0xd03ea3ca

d03e23f4 <midi_process_events>:
d03e23f4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e23f8:	4d84      	ldr	r5, [pc, #528]	; (d03e260c <midi_process_events+0x218>)
d03e23fa:	b085      	sub	sp, #20
d03e23fc:	f8df b220 	ldr.w	fp, [pc, #544]	; d03e2620 <midi_process_events+0x22c>
d03e2400:	782a      	ldrb	r2, [r5, #0]
d03e2402:	f89b 3000 	ldrb.w	r3, [fp]
d03e2406:	429a      	cmp	r2, r3
d03e2408:	d052      	beq.n	d03e24b0 <midi_process_events+0xbc>
d03e240a:	f8df a218 	ldr.w	sl, [pc, #536]	; d03e2624 <midi_process_events+0x230>
d03e240e:	4e80      	ldr	r6, [pc, #512]	; (d03e2610 <midi_process_events+0x21c>)
d03e2410:	782b      	ldrb	r3, [r5, #0]
d03e2412:	b2db      	uxtb	r3, r3
d03e2414:	f81a 7023 	ldrb.w	r7, [sl, r3, lsl #2]
d03e2418:	782b      	ldrb	r3, [r5, #0]
d03e241a:	b2ff      	uxtb	r7, r7
d03e241c:	eb0a 0383 	add.w	r3, sl, r3, lsl #2
d03e2420:	785c      	ldrb	r4, [r3, #1]
d03e2422:	782b      	ldrb	r3, [r5, #0]
d03e2424:	b2e4      	uxtb	r4, r4
d03e2426:	eb0a 0383 	add.w	r3, sl, r3, lsl #2
d03e242a:	f893 8002 	ldrb.w	r8, [r3, #2]
d03e242e:	782b      	ldrb	r3, [r5, #0]
d03e2430:	fa5f f888 	uxtb.w	r8, r8
d03e2434:	eb0a 0383 	add.w	r3, sl, r3, lsl #2
d03e2438:	78d9      	ldrb	r1, [r3, #3]
d03e243a:	782b      	ldrb	r3, [r5, #0]
d03e243c:	b2c9      	uxtb	r1, r1
d03e243e:	3301      	adds	r3, #1
d03e2440:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d03e2444:	702b      	strb	r3, [r5, #0]
d03e2446:	2f05      	cmp	r7, #5
d03e2448:	d82d      	bhi.n	d03e24a6 <midi_process_events+0xb2>
d03e244a:	e8df f017 	tbh	[pc, r7, lsl #1]
d03e244e:	00ac      	.short	0x00ac
d03e2450:	008b00ed 	.word	0x008b00ed
d03e2454:	00060034 	.word	0x00060034
d03e2458:	0168      	.short	0x0168
d03e245a:	2c0f      	cmp	r4, #15
d03e245c:	d817      	bhi.n	d03e248e <midi_process_events+0x9a>
d03e245e:	4b6d      	ldr	r3, [pc, #436]	; (d03e2614 <midi_process_events+0x220>)
d03e2460:	7818      	ldrb	r0, [r3, #0]
d03e2462:	4284      	cmp	r4, r0
d03e2464:	d013      	beq.n	d03e248e <midi_process_events+0x9a>
d03e2466:	785f      	ldrb	r7, [r3, #1]
d03e2468:	42bc      	cmp	r4, r7
d03e246a:	d010      	beq.n	d03e248e <midi_process_events+0x9a>
d03e246c:	f893 c002 	ldrb.w	ip, [r3, #2]
d03e2470:	4564      	cmp	r4, ip
d03e2472:	d00c      	beq.n	d03e248e <midi_process_events+0x9a>
d03e2474:	78da      	ldrb	r2, [r3, #3]
d03e2476:	42a2      	cmp	r2, r4
d03e2478:	d009      	beq.n	d03e248e <midi_process_events+0x9a>
d03e247a:	2200      	movs	r2, #0
d03e247c:	f364 0207 	bfi	r2, r4, #0, #8
d03e2480:	f360 220f 	bfi	r2, r0, #8, #8
d03e2484:	f367 4217 	bfi	r2, r7, #16, #8
d03e2488:	f36c 621f 	bfi	r2, ip, #24, #8
d03e248c:	601a      	str	r2, [r3, #0]
d03e248e:	f1b8 0f0b 	cmp.w	r8, #11
d03e2492:	f000 8227 	beq.w	d03e28e4 <midi_process_events+0x4f0>
d03e2496:	f1b8 0f79 	cmp.w	r8, #121	; 0x79
d03e249a:	f000 824b 	beq.w	d03e2934 <midi_process_events+0x540>
d03e249e:	f1b8 0f07 	cmp.w	r8, #7
d03e24a2:	f000 81eb 	beq.w	d03e287c <midi_process_events+0x488>
d03e24a6:	782a      	ldrb	r2, [r5, #0]
d03e24a8:	f89b 3000 	ldrb.w	r3, [fp]
d03e24ac:	429a      	cmp	r2, r3
d03e24ae:	d1af      	bne.n	d03e2410 <midi_process_events+0x1c>
d03e24b0:	b005      	add	sp, #20
d03e24b2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e24b6:	01c9      	lsls	r1, r1, #7
d03e24b8:	f008 077f 	and.w	r7, r8, #127	; 0x7f
d03e24bc:	2c0f      	cmp	r4, #15
d03e24be:	f401 517e 	and.w	r1, r1, #16256	; 0x3f80
d03e24c2:	ea47 0701 	orr.w	r7, r7, r1
d03e24c6:	f5a7 5700 	sub.w	r7, r7, #8192	; 0x2000
d03e24ca:	b23f      	sxth	r7, r7
d03e24cc:	f200 81d2 	bhi.w	d03e2874 <midi_process_events+0x480>
d03e24d0:	4b50      	ldr	r3, [pc, #320]	; (d03e2614 <midi_process_events+0x220>)
d03e24d2:	7819      	ldrb	r1, [r3, #0]
d03e24d4:	428c      	cmp	r4, r1
d03e24d6:	d013      	beq.n	d03e2500 <midi_process_events+0x10c>
d03e24d8:	7858      	ldrb	r0, [r3, #1]
d03e24da:	4284      	cmp	r4, r0
d03e24dc:	d010      	beq.n	d03e2500 <midi_process_events+0x10c>
d03e24de:	f893 c002 	ldrb.w	ip, [r3, #2]
d03e24e2:	4564      	cmp	r4, ip
d03e24e4:	d00c      	beq.n	d03e2500 <midi_process_events+0x10c>
d03e24e6:	78da      	ldrb	r2, [r3, #3]
d03e24e8:	42a2      	cmp	r2, r4
d03e24ea:	d009      	beq.n	d03e2500 <midi_process_events+0x10c>
d03e24ec:	2200      	movs	r2, #0
d03e24ee:	f364 0207 	bfi	r2, r4, #0, #8
d03e24f2:	f361 220f 	bfi	r2, r1, #8, #8
d03e24f6:	f360 4217 	bfi	r2, r0, #16, #8
d03e24fa:	f36c 621f 	bfi	r2, ip, #24, #8
d03e24fe:	601a      	str	r2, [r3, #0]
d03e2500:	4b45      	ldr	r3, [pc, #276]	; (d03e2618 <midi_process_events+0x224>)
d03e2502:	2c09      	cmp	r4, #9
d03e2504:	f823 7014 	strh.w	r7, [r3, r4, lsl #1]
d03e2508:	d0cd      	beq.n	d03e24a6 <midi_process_events+0xb2>
d03e250a:	7833      	ldrb	r3, [r6, #0]
d03e250c:	b11b      	cbz	r3, d03e2516 <midi_process_events+0x122>
d03e250e:	7873      	ldrb	r3, [r6, #1]
d03e2510:	42a3      	cmp	r3, r4
d03e2512:	f000 8333 	beq.w	d03e2b7c <midi_process_events+0x788>
d03e2516:	7a33      	ldrb	r3, [r6, #8]
d03e2518:	b11b      	cbz	r3, d03e2522 <midi_process_events+0x12e>
d03e251a:	7a73      	ldrb	r3, [r6, #9]
d03e251c:	42a3      	cmp	r3, r4
d03e251e:	f000 8332 	beq.w	d03e2b86 <midi_process_events+0x792>
d03e2522:	7c33      	ldrb	r3, [r6, #16]
d03e2524:	b11b      	cbz	r3, d03e252e <midi_process_events+0x13a>
d03e2526:	7c73      	ldrb	r3, [r6, #17]
d03e2528:	42a3      	cmp	r3, r4
d03e252a:	f000 8331 	beq.w	d03e2b90 <midi_process_events+0x79c>
d03e252e:	7e33      	ldrb	r3, [r6, #24]
d03e2530:	b11b      	cbz	r3, d03e253a <midi_process_events+0x146>
d03e2532:	7e73      	ldrb	r3, [r6, #25]
d03e2534:	42a3      	cmp	r3, r4
d03e2536:	f000 8317 	beq.w	d03e2b68 <midi_process_events+0x774>
d03e253a:	f896 3020 	ldrb.w	r3, [r6, #32]
d03e253e:	b123      	cbz	r3, d03e254a <midi_process_events+0x156>
d03e2540:	f896 3021 	ldrb.w	r3, [r6, #33]	; 0x21
d03e2544:	42a3      	cmp	r3, r4
d03e2546:	f000 8314 	beq.w	d03e2b72 <midi_process_events+0x77e>
d03e254a:	f896 3028 	ldrb.w	r3, [r6, #40]	; 0x28
d03e254e:	2b00      	cmp	r3, #0
d03e2550:	d0a9      	beq.n	d03e24a6 <midi_process_events+0xb2>
d03e2552:	f896 3029 	ldrb.w	r3, [r6, #41]	; 0x29
d03e2556:	42a3      	cmp	r3, r4
d03e2558:	d1a5      	bne.n	d03e24a6 <midi_process_events+0xb2>
d03e255a:	4639      	mov	r1, r7
d03e255c:	2005      	movs	r0, #5
d03e255e:	f7fe f9b3 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2562:	e7a0      	b.n	d03e24a6 <midi_process_events+0xb2>
d03e2564:	2c09      	cmp	r4, #9
d03e2566:	d09e      	beq.n	d03e24a6 <midi_process_events+0xb2>
d03e2568:	2c0f      	cmp	r4, #15
d03e256a:	d816      	bhi.n	d03e259a <midi_process_events+0x1a6>
d03e256c:	4b29      	ldr	r3, [pc, #164]	; (d03e2614 <midi_process_events+0x220>)
d03e256e:	7819      	ldrb	r1, [r3, #0]
d03e2570:	428c      	cmp	r4, r1
d03e2572:	d012      	beq.n	d03e259a <midi_process_events+0x1a6>
d03e2574:	7858      	ldrb	r0, [r3, #1]
d03e2576:	4284      	cmp	r4, r0
d03e2578:	d00f      	beq.n	d03e259a <midi_process_events+0x1a6>
d03e257a:	789f      	ldrb	r7, [r3, #2]
d03e257c:	42bc      	cmp	r4, r7
d03e257e:	d00c      	beq.n	d03e259a <midi_process_events+0x1a6>
d03e2580:	78da      	ldrb	r2, [r3, #3]
d03e2582:	42a2      	cmp	r2, r4
d03e2584:	d009      	beq.n	d03e259a <midi_process_events+0x1a6>
d03e2586:	2200      	movs	r2, #0
d03e2588:	f364 0207 	bfi	r2, r4, #0, #8
d03e258c:	f361 220f 	bfi	r2, r1, #8, #8
d03e2590:	f360 4217 	bfi	r2, r0, #16, #8
d03e2594:	f367 621f 	bfi	r2, r7, #24, #8
d03e2598:	601a      	str	r2, [r3, #0]
d03e259a:	f008 087f 	and.w	r8, r8, #127	; 0x7f
d03e259e:	4b1f      	ldr	r3, [pc, #124]	; (d03e261c <midi_process_events+0x228>)
d03e25a0:	f803 8004 	strb.w	r8, [r3, r4]
d03e25a4:	e77f      	b.n	d03e24a6 <midi_process_events+0xb2>
d03e25a6:	7833      	ldrb	r3, [r6, #0]
d03e25a8:	b11b      	cbz	r3, d03e25b2 <midi_process_events+0x1be>
d03e25aa:	7873      	ldrb	r3, [r6, #1]
d03e25ac:	42a3      	cmp	r3, r4
d03e25ae:	f000 8249 	beq.w	d03e2a44 <midi_process_events+0x650>
d03e25b2:	7a33      	ldrb	r3, [r6, #8]
d03e25b4:	b11b      	cbz	r3, d03e25be <midi_process_events+0x1ca>
d03e25b6:	7a73      	ldrb	r3, [r6, #9]
d03e25b8:	42a3      	cmp	r3, r4
d03e25ba:	f000 824f 	beq.w	d03e2a5c <midi_process_events+0x668>
d03e25be:	7c33      	ldrb	r3, [r6, #16]
d03e25c0:	b11b      	cbz	r3, d03e25ca <midi_process_events+0x1d6>
d03e25c2:	7c73      	ldrb	r3, [r6, #17]
d03e25c4:	42a3      	cmp	r3, r4
d03e25c6:	f000 8251 	beq.w	d03e2a6c <midi_process_events+0x678>
d03e25ca:	7e33      	ldrb	r3, [r6, #24]
d03e25cc:	b11b      	cbz	r3, d03e25d6 <midi_process_events+0x1e2>
d03e25ce:	7e73      	ldrb	r3, [r6, #25]
d03e25d0:	42a3      	cmp	r3, r4
d03e25d2:	f000 825f 	beq.w	d03e2a94 <midi_process_events+0x6a0>
d03e25d6:	f896 3020 	ldrb.w	r3, [r6, #32]
d03e25da:	b123      	cbz	r3, d03e25e6 <midi_process_events+0x1f2>
d03e25dc:	f896 3021 	ldrb.w	r3, [r6, #33]	; 0x21
d03e25e0:	42a3      	cmp	r3, r4
d03e25e2:	f000 825f 	beq.w	d03e2aa4 <midi_process_events+0x6b0>
d03e25e6:	f896 3028 	ldrb.w	r3, [r6, #40]	; 0x28
d03e25ea:	2b00      	cmp	r3, #0
d03e25ec:	f43f af5b 	beq.w	d03e24a6 <midi_process_events+0xb2>
d03e25f0:	f896 3029 	ldrb.w	r3, [r6, #41]	; 0x29
d03e25f4:	42a3      	cmp	r3, r4
d03e25f6:	f47f af56 	bne.w	d03e24a6 <midi_process_events+0xb2>
d03e25fa:	f896 302a 	ldrb.w	r3, [r6, #42]	; 0x2a
d03e25fe:	4543      	cmp	r3, r8
d03e2600:	f47f af51 	bne.w	d03e24a6 <midi_process_events+0xb2>
d03e2604:	f04f 0805 	mov.w	r8, #5
d03e2608:	4647      	mov	r7, r8
d03e260a:	e253      	b.n	d03e2ab4 <midi_process_events+0x6c0>
d03e260c:	d03ea5d0 	.word	0xd03ea5d0
d03e2610:	d03ea5f0 	.word	0xd03ea5f0
d03e2614:	d03ea640 	.word	0xd03ea640
d03e2618:	d03ea374 	.word	0xd03ea374
d03e261c:	d03ea3a4 	.word	0xd03ea3a4
d03e2620:	d03ea3cc 	.word	0xd03ea3cc
d03e2624:	d03ea3d0 	.word	0xd03ea3d0
d03e2628:	7833      	ldrb	r3, [r6, #0]
d03e262a:	b11b      	cbz	r3, d03e2634 <midi_process_events+0x240>
d03e262c:	7873      	ldrb	r3, [r6, #1]
d03e262e:	42a3      	cmp	r3, r4
d03e2630:	f000 8202 	beq.w	d03e2a38 <midi_process_events+0x644>
d03e2634:	7a33      	ldrb	r3, [r6, #8]
d03e2636:	b11b      	cbz	r3, d03e2640 <midi_process_events+0x24c>
d03e2638:	7a73      	ldrb	r3, [r6, #9]
d03e263a:	42a3      	cmp	r3, r4
d03e263c:	f000 8209 	beq.w	d03e2a52 <midi_process_events+0x65e>
d03e2640:	7c33      	ldrb	r3, [r6, #16]
d03e2642:	b11b      	cbz	r3, d03e264c <midi_process_events+0x258>
d03e2644:	7c73      	ldrb	r3, [r6, #17]
d03e2646:	42a3      	cmp	r3, r4
d03e2648:	f000 8218 	beq.w	d03e2a7c <midi_process_events+0x688>
d03e264c:	7e33      	ldrb	r3, [r6, #24]
d03e264e:	b11b      	cbz	r3, d03e2658 <midi_process_events+0x264>
d03e2650:	7e73      	ldrb	r3, [r6, #25]
d03e2652:	42a3      	cmp	r3, r4
d03e2654:	f000 8218 	beq.w	d03e2a88 <midi_process_events+0x694>
d03e2658:	f896 3020 	ldrb.w	r3, [r6, #32]
d03e265c:	b123      	cbz	r3, d03e2668 <midi_process_events+0x274>
d03e265e:	f896 3021 	ldrb.w	r3, [r6, #33]	; 0x21
d03e2662:	42a3      	cmp	r3, r4
d03e2664:	f000 8236 	beq.w	d03e2ad4 <midi_process_events+0x6e0>
d03e2668:	f896 3028 	ldrb.w	r3, [r6, #40]	; 0x28
d03e266c:	b123      	cbz	r3, d03e2678 <midi_process_events+0x284>
d03e266e:	f896 3029 	ldrb.w	r3, [r6, #41]	; 0x29
d03e2672:	42a3      	cmp	r3, r4
d03e2674:	f000 8235 	beq.w	d03e2ae2 <midi_process_events+0x6ee>
d03e2678:	27ff      	movs	r7, #255	; 0xff
d03e267a:	2c09      	cmp	r4, #9
d03e267c:	f040 8085 	bne.w	d03e278a <midi_process_events+0x396>
d03e2680:	4ba2      	ldr	r3, [pc, #648]	; (d03e290c <midi_process_events+0x518>)
d03e2682:	781b      	ldrb	r3, [r3, #0]
d03e2684:	2b00      	cmp	r3, #0
d03e2686:	f43f af0e 	beq.w	d03e24a6 <midi_process_events+0xb2>
d03e268a:	4ba1      	ldr	r3, [pc, #644]	; (d03e2910 <midi_process_events+0x51c>)
d03e268c:	7818      	ldrb	r0, [r3, #0]
d03e268e:	4284      	cmp	r4, r0
d03e2690:	d014      	beq.n	d03e26bc <midi_process_events+0x2c8>
d03e2692:	f893 c001 	ldrb.w	ip, [r3, #1]
d03e2696:	4564      	cmp	r4, ip
d03e2698:	d010      	beq.n	d03e26bc <midi_process_events+0x2c8>
d03e269a:	f893 e002 	ldrb.w	lr, [r3, #2]
d03e269e:	4574      	cmp	r4, lr
d03e26a0:	d00c      	beq.n	d03e26bc <midi_process_events+0x2c8>
d03e26a2:	78da      	ldrb	r2, [r3, #3]
d03e26a4:	42a2      	cmp	r2, r4
d03e26a6:	d009      	beq.n	d03e26bc <midi_process_events+0x2c8>
d03e26a8:	2200      	movs	r2, #0
d03e26aa:	f364 0207 	bfi	r2, r4, #0, #8
d03e26ae:	f360 220f 	bfi	r2, r0, #8, #8
d03e26b2:	f36c 4217 	bfi	r2, ip, #16, #8
d03e26b6:	f36e 621f 	bfi	r2, lr, #24, #8
d03e26ba:	601a      	str	r2, [r3, #0]
d03e26bc:	2fff      	cmp	r7, #255	; 0xff
d03e26be:	d069      	beq.n	d03e2794 <midi_process_events+0x3a0>
d03e26c0:	4638      	mov	r0, r7
d03e26c2:	9102      	str	r1, [sp, #8]
d03e26c4:	9701      	str	r7, [sp, #4]
d03e26c6:	f7fe f865 	bl	d03e0794 <sid_voice_note_off>
d03e26ca:	9902      	ldr	r1, [sp, #8]
d03e26cc:	4891      	ldr	r0, [pc, #580]	; (d03e2914 <midi_process_events+0x520>)
d03e26ce:	f04f 0c00 	mov.w	ip, #0
d03e26d2:	9b01      	ldr	r3, [sp, #4]
d03e26d4:	2201      	movs	r2, #1
d03e26d6:	f810 9004 	ldrb.w	r9, [r0, r4]
d03e26da:	4620      	mov	r0, r4
d03e26dc:	eb06 03c3 	add.w	r3, r6, r3, lsl #3
d03e26e0:	70d9      	strb	r1, [r3, #3]
d03e26e2:	f8a3 c006 	strh.w	ip, [r3, #6]
d03e26e6:	705c      	strb	r4, [r3, #1]
d03e26e8:	f883 9004 	strb.w	r9, [r3, #4]
d03e26ec:	f883 8002 	strb.w	r8, [r3, #2]
d03e26f0:	9b01      	ldr	r3, [sp, #4]
d03e26f2:	f806 2033 	strb.w	r2, [r6, r3, lsl #3]
d03e26f6:	f7fe fe31 	bl	d03e135c <midi_effective_velocity>
d03e26fa:	4642      	mov	r2, r8
d03e26fc:	4603      	mov	r3, r0
d03e26fe:	4649      	mov	r1, r9
d03e2700:	4638      	mov	r0, r7
d03e2702:	f7fd ffbd 	bl	d03e0680 <sid_voice_note_on>
d03e2706:	f1b9 0f80 	cmp.w	r9, #128	; 0x80
d03e270a:	d003      	beq.n	d03e2714 <midi_process_events+0x320>
d03e270c:	f1b9 0f09 	cmp.w	r9, #9
d03e2710:	f040 80a5 	bne.w	d03e285e <midi_process_events+0x46a>
d03e2714:	4a80      	ldr	r2, [pc, #512]	; (d03e2918 <midi_process_events+0x524>)
d03e2716:	6813      	ldr	r3, [r2, #0]
d03e2718:	3301      	adds	r3, #1
d03e271a:	6013      	str	r3, [r2, #0]
d03e271c:	e6c3      	b.n	d03e24a6 <midi_process_events+0xb2>
d03e271e:	7833      	ldrb	r3, [r6, #0]
d03e2720:	b11b      	cbz	r3, d03e272a <midi_process_events+0x336>
d03e2722:	7873      	ldrb	r3, [r6, #1]
d03e2724:	42a3      	cmp	r3, r4
d03e2726:	f000 8210 	beq.w	d03e2b4a <midi_process_events+0x756>
d03e272a:	7a33      	ldrb	r3, [r6, #8]
d03e272c:	b11b      	cbz	r3, d03e2736 <midi_process_events+0x342>
d03e272e:	7a73      	ldrb	r3, [r6, #9]
d03e2730:	42a3      	cmp	r3, r4
d03e2732:	f000 81dd 	beq.w	d03e2af0 <midi_process_events+0x6fc>
d03e2736:	7c33      	ldrb	r3, [r6, #16]
d03e2738:	b11b      	cbz	r3, d03e2742 <midi_process_events+0x34e>
d03e273a:	7c73      	ldrb	r3, [r6, #17]
d03e273c:	42a3      	cmp	r3, r4
d03e273e:	f000 81e2 	beq.w	d03e2b06 <midi_process_events+0x712>
d03e2742:	7e33      	ldrb	r3, [r6, #24]
d03e2744:	b11b      	cbz	r3, d03e274e <midi_process_events+0x35a>
d03e2746:	7e73      	ldrb	r3, [r6, #25]
d03e2748:	42a3      	cmp	r3, r4
d03e274a:	f000 81e7 	beq.w	d03e2b1c <midi_process_events+0x728>
d03e274e:	f896 3020 	ldrb.w	r3, [r6, #32]
d03e2752:	b123      	cbz	r3, d03e275e <midi_process_events+0x36a>
d03e2754:	f896 3021 	ldrb.w	r3, [r6, #33]	; 0x21
d03e2758:	42a3      	cmp	r3, r4
d03e275a:	f000 81ea 	beq.w	d03e2b32 <midi_process_events+0x73e>
d03e275e:	f896 3028 	ldrb.w	r3, [r6, #40]	; 0x28
d03e2762:	2b00      	cmp	r3, #0
d03e2764:	f43f ae9f 	beq.w	d03e24a6 <midi_process_events+0xb2>
d03e2768:	f896 3029 	ldrb.w	r3, [r6, #41]	; 0x29
d03e276c:	42a3      	cmp	r3, r4
d03e276e:	f47f ae9a 	bne.w	d03e24a6 <midi_process_events+0xb2>
d03e2772:	2005      	movs	r0, #5
d03e2774:	f7fe f80e 	bl	d03e0794 <sid_voice_note_off>
d03e2778:	4a68      	ldr	r2, [pc, #416]	; (d03e291c <midi_process_events+0x528>)
d03e277a:	2100      	movs	r1, #0
d03e277c:	6813      	ldr	r3, [r2, #0]
d03e277e:	f886 1028 	strb.w	r1, [r6, #40]	; 0x28
d03e2782:	3301      	adds	r3, #1
d03e2784:	85f1      	strh	r1, [r6, #46]	; 0x2e
d03e2786:	6013      	str	r3, [r2, #0]
d03e2788:	e68d      	b.n	d03e24a6 <midi_process_events+0xb2>
d03e278a:	2c0f      	cmp	r4, #15
d03e278c:	f67f af7d 	bls.w	d03e268a <midi_process_events+0x296>
d03e2790:	2fff      	cmp	r7, #255	; 0xff
d03e2792:	d195      	bne.n	d03e26c0 <midi_process_events+0x2cc>
d03e2794:	f8df e198 	ldr.w	lr, [pc, #408]	; d03e2930 <midi_process_events+0x53c>
d03e2798:	4b61      	ldr	r3, [pc, #388]	; (d03e2920 <midi_process_events+0x52c>)
d03e279a:	f89e 7000 	ldrb.w	r7, [lr]
d03e279e:	fba3 0207 	umull	r0, r2, r3, r7
d03e27a2:	9701      	str	r7, [sp, #4]
d03e27a4:	0892      	lsrs	r2, r2, #2
d03e27a6:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d03e27aa:	eba7 0242 	sub.w	r2, r7, r2, lsl #1
d03e27ae:	f816 0032 	ldrb.w	r0, [r6, r2, lsl #3]
d03e27b2:	2800      	cmp	r0, #0
d03e27b4:	f000 81f1 	beq.w	d03e2b9a <midi_process_events+0x7a6>
d03e27b8:	f107 0c01 	add.w	ip, r7, #1
d03e27bc:	fba3 020c 	umull	r0, r2, r3, ip
d03e27c0:	0892      	lsrs	r2, r2, #2
d03e27c2:	eb02 0042 	add.w	r0, r2, r2, lsl #1
d03e27c6:	9202      	str	r2, [sp, #8]
d03e27c8:	ebac 0240 	sub.w	r2, ip, r0, lsl #1
d03e27cc:	f816 0032 	ldrb.w	r0, [r6, r2, lsl #3]
d03e27d0:	2800      	cmp	r0, #0
d03e27d2:	f000 81e2 	beq.w	d03e2b9a <midi_process_events+0x7a6>
d03e27d6:	1cb8      	adds	r0, r7, #2
d03e27d8:	fba3 9200 	umull	r9, r2, r3, r0
d03e27dc:	0892      	lsrs	r2, r2, #2
d03e27de:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d03e27e2:	eba0 0242 	sub.w	r2, r0, r2, lsl #1
d03e27e6:	f816 0032 	ldrb.w	r0, [r6, r2, lsl #3]
d03e27ea:	2800      	cmp	r0, #0
d03e27ec:	f000 81d5 	beq.w	d03e2b9a <midi_process_events+0x7a6>
d03e27f0:	1cf8      	adds	r0, r7, #3
d03e27f2:	fba3 9200 	umull	r9, r2, r3, r0
d03e27f6:	0892      	lsrs	r2, r2, #2
d03e27f8:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d03e27fc:	eba0 0242 	sub.w	r2, r0, r2, lsl #1
d03e2800:	f816 0032 	ldrb.w	r0, [r6, r2, lsl #3]
d03e2804:	2800      	cmp	r0, #0
d03e2806:	f000 81c8 	beq.w	d03e2b9a <midi_process_events+0x7a6>
d03e280a:	1d38      	adds	r0, r7, #4
d03e280c:	fba3 9200 	umull	r9, r2, r3, r0
d03e2810:	0892      	lsrs	r2, r2, #2
d03e2812:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d03e2816:	eba0 0242 	sub.w	r2, r0, r2, lsl #1
d03e281a:	f816 0032 	ldrb.w	r0, [r6, r2, lsl #3]
d03e281e:	2800      	cmp	r0, #0
d03e2820:	f000 81bb 	beq.w	d03e2b9a <midi_process_events+0x7a6>
d03e2824:	1d7a      	adds	r2, r7, #5
d03e2826:	fba3 0302 	umull	r0, r3, r3, r2
d03e282a:	089b      	lsrs	r3, r3, #2
d03e282c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d03e2830:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
d03e2834:	f816 2033 	ldrb.w	r2, [r6, r3, lsl #3]
d03e2838:	2a00      	cmp	r2, #0
d03e283a:	f000 823f 	beq.w	d03e2cbc <midi_process_events+0x8c8>
d03e283e:	9b02      	ldr	r3, [sp, #8]
d03e2840:	4638      	mov	r0, r7
d03e2842:	9103      	str	r1, [sp, #12]
d03e2844:	eb03 0943 	add.w	r9, r3, r3, lsl #1
d03e2848:	ebac 0c49 	sub.w	ip, ip, r9, lsl #1
d03e284c:	f88e c000 	strb.w	ip, [lr]
d03e2850:	f7fe f80e 	bl	d03e0870 <sid_voice_note_kill>
d03e2854:	2300      	movs	r3, #0
d03e2856:	9903      	ldr	r1, [sp, #12]
d03e2858:	f806 3037 	strb.w	r3, [r6, r7, lsl #3]
d03e285c:	e736      	b.n	d03e26cc <midi_process_events+0x2d8>
d03e285e:	4b31      	ldr	r3, [pc, #196]	; (d03e2924 <midi_process_events+0x530>)
d03e2860:	4638      	mov	r0, r7
d03e2862:	f933 1014 	ldrsh.w	r1, [r3, r4, lsl #1]
d03e2866:	f7fe f82f 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e286a:	4a2b      	ldr	r2, [pc, #172]	; (d03e2918 <midi_process_events+0x524>)
d03e286c:	6813      	ldr	r3, [r2, #0]
d03e286e:	3301      	adds	r3, #1
d03e2870:	6013      	str	r3, [r2, #0]
d03e2872:	e618      	b.n	d03e24a6 <midi_process_events+0xb2>
d03e2874:	4b2b      	ldr	r3, [pc, #172]	; (d03e2924 <midi_process_events+0x530>)
d03e2876:	f823 7014 	strh.w	r7, [r3, r4, lsl #1]
d03e287a:	e646      	b.n	d03e250a <midi_process_events+0x116>
d03e287c:	f001 017f 	and.w	r1, r1, #127	; 0x7f
d03e2880:	7833      	ldrb	r3, [r6, #0]
d03e2882:	4a29      	ldr	r2, [pc, #164]	; (d03e2928 <midi_process_events+0x534>)
d03e2884:	5511      	strb	r1, [r2, r4]
d03e2886:	bba3      	cbnz	r3, d03e28f2 <midi_process_events+0x4fe>
d03e2888:	7a33      	ldrb	r3, [r6, #8]
d03e288a:	b11b      	cbz	r3, d03e2894 <midi_process_events+0x4a0>
d03e288c:	7a73      	ldrb	r3, [r6, #9]
d03e288e:	42a3      	cmp	r3, r4
d03e2890:	f000 81ae 	beq.w	d03e2bf0 <midi_process_events+0x7fc>
d03e2894:	7c33      	ldrb	r3, [r6, #16]
d03e2896:	b11b      	cbz	r3, d03e28a0 <midi_process_events+0x4ac>
d03e2898:	7c73      	ldrb	r3, [r6, #17]
d03e289a:	42a3      	cmp	r3, r4
d03e289c:	f000 819f 	beq.w	d03e2bde <midi_process_events+0x7ea>
d03e28a0:	7e33      	ldrb	r3, [r6, #24]
d03e28a2:	b11b      	cbz	r3, d03e28ac <midi_process_events+0x4b8>
d03e28a4:	7e73      	ldrb	r3, [r6, #25]
d03e28a6:	42a3      	cmp	r3, r4
d03e28a8:	f000 8190 	beq.w	d03e2bcc <midi_process_events+0x7d8>
d03e28ac:	f896 3020 	ldrb.w	r3, [r6, #32]
d03e28b0:	b123      	cbz	r3, d03e28bc <midi_process_events+0x4c8>
d03e28b2:	f896 3021 	ldrb.w	r3, [r6, #33]	; 0x21
d03e28b6:	42a3      	cmp	r3, r4
d03e28b8:	f000 817e 	beq.w	d03e2bb8 <midi_process_events+0x7c4>
d03e28bc:	f896 3028 	ldrb.w	r3, [r6, #40]	; 0x28
d03e28c0:	2b00      	cmp	r3, #0
d03e28c2:	f43f adf0 	beq.w	d03e24a6 <midi_process_events+0xb2>
d03e28c6:	f896 3029 	ldrb.w	r3, [r6, #41]	; 0x29
d03e28ca:	42a3      	cmp	r3, r4
d03e28cc:	f47f adeb 	bne.w	d03e24a6 <midi_process_events+0xb2>
d03e28d0:	f896 102b 	ldrb.w	r1, [r6, #43]	; 0x2b
d03e28d4:	4620      	mov	r0, r4
d03e28d6:	f7fe fd41 	bl	d03e135c <midi_effective_velocity>
d03e28da:	4601      	mov	r1, r0
d03e28dc:	2005      	movs	r0, #5
d03e28de:	f7fe f8a9 	bl	d03e0a34 <sid_voice_set_velocity>
d03e28e2:	e5e0      	b.n	d03e24a6 <midi_process_events+0xb2>
d03e28e4:	f001 017f 	and.w	r1, r1, #127	; 0x7f
d03e28e8:	7833      	ldrb	r3, [r6, #0]
d03e28ea:	4a10      	ldr	r2, [pc, #64]	; (d03e292c <midi_process_events+0x538>)
d03e28ec:	5511      	strb	r1, [r2, r4]
d03e28ee:	2b00      	cmp	r3, #0
d03e28f0:	d0ca      	beq.n	d03e2888 <midi_process_events+0x494>
d03e28f2:	7873      	ldrb	r3, [r6, #1]
d03e28f4:	42a3      	cmp	r3, r4
d03e28f6:	d1c7      	bne.n	d03e2888 <midi_process_events+0x494>
d03e28f8:	78f1      	ldrb	r1, [r6, #3]
d03e28fa:	4620      	mov	r0, r4
d03e28fc:	f7fe fd2e 	bl	d03e135c <midi_effective_velocity>
d03e2900:	4601      	mov	r1, r0
d03e2902:	2000      	movs	r0, #0
d03e2904:	f7fe f896 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2908:	e7be      	b.n	d03e2888 <midi_process_events+0x494>
d03e290a:	bf00      	nop
d03e290c:	d03ea3c8 	.word	0xd03ea3c8
d03e2910:	d03ea640 	.word	0xd03ea640
d03e2914:	d03ea3a4 	.word	0xd03ea3a4
d03e2918:	d03ea5e0 	.word	0xd03ea5e0
d03e291c:	d03ea5dc 	.word	0xd03ea5dc
d03e2920:	aaaaaaab 	.word	0xaaaaaaab
d03e2924:	d03ea374 	.word	0xd03ea374
d03e2928:	d03ea3b4 	.word	0xd03ea3b4
d03e292c:	d03ea394 	.word	0xd03ea394
d03e2930:	d03ea620 	.word	0xd03ea620
d03e2934:	237f      	movs	r3, #127	; 0x7f
d03e2936:	49b7      	ldr	r1, [pc, #732]	; (d03e2c14 <midi_process_events+0x820>)
d03e2938:	4fb7      	ldr	r7, [pc, #732]	; (d03e2c18 <midi_process_events+0x824>)
d03e293a:	f04f 0800 	mov.w	r8, #0
d03e293e:	550b      	strb	r3, [r1, r4]
d03e2940:	7832      	ldrb	r2, [r6, #0]
d03e2942:	49b6      	ldr	r1, [pc, #728]	; (d03e2c1c <midi_process_events+0x828>)
d03e2944:	f827 8014 	strh.w	r8, [r7, r4, lsl #1]
d03e2948:	550b      	strb	r3, [r1, r4]
d03e294a:	b11a      	cbz	r2, d03e2954 <midi_process_events+0x560>
d03e294c:	7873      	ldrb	r3, [r6, #1]
d03e294e:	42a3      	cmp	r3, r4
d03e2950:	f000 8157 	beq.w	d03e2c02 <midi_process_events+0x80e>
d03e2954:	7a33      	ldrb	r3, [r6, #8]
d03e2956:	b11b      	cbz	r3, d03e2960 <midi_process_events+0x56c>
d03e2958:	7a73      	ldrb	r3, [r6, #9]
d03e295a:	42a3      	cmp	r3, r4
d03e295c:	f000 8166 	beq.w	d03e2c2c <midi_process_events+0x838>
d03e2960:	7c33      	ldrb	r3, [r6, #16]
d03e2962:	b11b      	cbz	r3, d03e296c <midi_process_events+0x578>
d03e2964:	7c73      	ldrb	r3, [r6, #17]
d03e2966:	42a3      	cmp	r3, r4
d03e2968:	f000 8169 	beq.w	d03e2c3e <midi_process_events+0x84a>
d03e296c:	7e33      	ldrb	r3, [r6, #24]
d03e296e:	b11b      	cbz	r3, d03e2978 <midi_process_events+0x584>
d03e2970:	7e73      	ldrb	r3, [r6, #25]
d03e2972:	42a3      	cmp	r3, r4
d03e2974:	f000 816c 	beq.w	d03e2c50 <midi_process_events+0x85c>
d03e2978:	f896 3020 	ldrb.w	r3, [r6, #32]
d03e297c:	b123      	cbz	r3, d03e2988 <midi_process_events+0x594>
d03e297e:	f896 3021 	ldrb.w	r3, [r6, #33]	; 0x21
d03e2982:	42a3      	cmp	r3, r4
d03e2984:	f000 816d 	beq.w	d03e2c62 <midi_process_events+0x86e>
d03e2988:	f896 3028 	ldrb.w	r3, [r6, #40]	; 0x28
d03e298c:	b123      	cbz	r3, d03e2998 <midi_process_events+0x5a4>
d03e298e:	f896 3029 	ldrb.w	r3, [r6, #41]	; 0x29
d03e2992:	42a3      	cmp	r3, r4
d03e2994:	f000 816f 	beq.w	d03e2c76 <midi_process_events+0x882>
d03e2998:	2c0f      	cmp	r4, #15
d03e299a:	f200 80e1 	bhi.w	d03e2b60 <midi_process_events+0x76c>
d03e299e:	4ba0      	ldr	r3, [pc, #640]	; (d03e2c20 <midi_process_events+0x82c>)
d03e29a0:	7819      	ldrb	r1, [r3, #0]
d03e29a2:	428c      	cmp	r4, r1
d03e29a4:	d013      	beq.n	d03e29ce <midi_process_events+0x5da>
d03e29a6:	7858      	ldrb	r0, [r3, #1]
d03e29a8:	4284      	cmp	r4, r0
d03e29aa:	d010      	beq.n	d03e29ce <midi_process_events+0x5da>
d03e29ac:	f893 c002 	ldrb.w	ip, [r3, #2]
d03e29b0:	4564      	cmp	r4, ip
d03e29b2:	d00c      	beq.n	d03e29ce <midi_process_events+0x5da>
d03e29b4:	78da      	ldrb	r2, [r3, #3]
d03e29b6:	42a2      	cmp	r2, r4
d03e29b8:	d009      	beq.n	d03e29ce <midi_process_events+0x5da>
d03e29ba:	2200      	movs	r2, #0
d03e29bc:	f364 0207 	bfi	r2, r4, #0, #8
d03e29c0:	f361 220f 	bfi	r2, r1, #8, #8
d03e29c4:	f360 4217 	bfi	r2, r0, #16, #8
d03e29c8:	f36c 621f 	bfi	r2, ip, #24, #8
d03e29cc:	601a      	str	r2, [r3, #0]
d03e29ce:	2300      	movs	r3, #0
d03e29d0:	2c09      	cmp	r4, #9
d03e29d2:	f827 3014 	strh.w	r3, [r7, r4, lsl #1]
d03e29d6:	f43f ad66 	beq.w	d03e24a6 <midi_process_events+0xb2>
d03e29da:	7833      	ldrb	r3, [r6, #0]
d03e29dc:	b11b      	cbz	r3, d03e29e6 <midi_process_events+0x5f2>
d03e29de:	7873      	ldrb	r3, [r6, #1]
d03e29e0:	42a3      	cmp	r3, r4
d03e29e2:	f000 8166 	beq.w	d03e2cb2 <midi_process_events+0x8be>
d03e29e6:	7a33      	ldrb	r3, [r6, #8]
d03e29e8:	b11b      	cbz	r3, d03e29f2 <midi_process_events+0x5fe>
d03e29ea:	7a73      	ldrb	r3, [r6, #9]
d03e29ec:	42a3      	cmp	r3, r4
d03e29ee:	f000 815b 	beq.w	d03e2ca8 <midi_process_events+0x8b4>
d03e29f2:	7c33      	ldrb	r3, [r6, #16]
d03e29f4:	b11b      	cbz	r3, d03e29fe <midi_process_events+0x60a>
d03e29f6:	7c73      	ldrb	r3, [r6, #17]
d03e29f8:	42a3      	cmp	r3, r4
d03e29fa:	f000 8150 	beq.w	d03e2c9e <midi_process_events+0x8aa>
d03e29fe:	7e33      	ldrb	r3, [r6, #24]
d03e2a00:	b11b      	cbz	r3, d03e2a0a <midi_process_events+0x616>
d03e2a02:	7e73      	ldrb	r3, [r6, #25]
d03e2a04:	42a3      	cmp	r3, r4
d03e2a06:	f000 8145 	beq.w	d03e2c94 <midi_process_events+0x8a0>
d03e2a0a:	f896 3020 	ldrb.w	r3, [r6, #32]
d03e2a0e:	b123      	cbz	r3, d03e2a1a <midi_process_events+0x626>
d03e2a10:	f896 3021 	ldrb.w	r3, [r6, #33]	; 0x21
d03e2a14:	42a3      	cmp	r3, r4
d03e2a16:	f000 8138 	beq.w	d03e2c8a <midi_process_events+0x896>
d03e2a1a:	f896 3028 	ldrb.w	r3, [r6, #40]	; 0x28
d03e2a1e:	2b00      	cmp	r3, #0
d03e2a20:	f43f ad41 	beq.w	d03e24a6 <midi_process_events+0xb2>
d03e2a24:	f896 3029 	ldrb.w	r3, [r6, #41]	; 0x29
d03e2a28:	42a3      	cmp	r3, r4
d03e2a2a:	f47f ad3c 	bne.w	d03e24a6 <midi_process_events+0xb2>
d03e2a2e:	2100      	movs	r1, #0
d03e2a30:	2005      	movs	r0, #5
d03e2a32:	f7fd ff49 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2a36:	e536      	b.n	d03e24a6 <midi_process_events+0xb2>
d03e2a38:	78b3      	ldrb	r3, [r6, #2]
d03e2a3a:	4543      	cmp	r3, r8
d03e2a3c:	f47f adfa 	bne.w	d03e2634 <midi_process_events+0x240>
d03e2a40:	2700      	movs	r7, #0
d03e2a42:	e61a      	b.n	d03e267a <midi_process_events+0x286>
d03e2a44:	78b3      	ldrb	r3, [r6, #2]
d03e2a46:	4543      	cmp	r3, r8
d03e2a48:	f47f adb3 	bne.w	d03e25b2 <midi_process_events+0x1be>
d03e2a4c:	f04f 0800 	mov.w	r8, #0
d03e2a50:	e030      	b.n	d03e2ab4 <midi_process_events+0x6c0>
d03e2a52:	7ab3      	ldrb	r3, [r6, #10]
d03e2a54:	4543      	cmp	r3, r8
d03e2a56:	f47f adf3 	bne.w	d03e2640 <midi_process_events+0x24c>
d03e2a5a:	e60e      	b.n	d03e267a <midi_process_events+0x286>
d03e2a5c:	7ab3      	ldrb	r3, [r6, #10]
d03e2a5e:	4543      	cmp	r3, r8
d03e2a60:	f47f adad 	bne.w	d03e25be <midi_process_events+0x1ca>
d03e2a64:	f04f 0801 	mov.w	r8, #1
d03e2a68:	4647      	mov	r7, r8
d03e2a6a:	e023      	b.n	d03e2ab4 <midi_process_events+0x6c0>
d03e2a6c:	7cb3      	ldrb	r3, [r6, #18]
d03e2a6e:	4543      	cmp	r3, r8
d03e2a70:	f47f adab 	bne.w	d03e25ca <midi_process_events+0x1d6>
d03e2a74:	f04f 0802 	mov.w	r8, #2
d03e2a78:	4647      	mov	r7, r8
d03e2a7a:	e01b      	b.n	d03e2ab4 <midi_process_events+0x6c0>
d03e2a7c:	7cb3      	ldrb	r3, [r6, #18]
d03e2a7e:	4543      	cmp	r3, r8
d03e2a80:	f47f ade4 	bne.w	d03e264c <midi_process_events+0x258>
d03e2a84:	2702      	movs	r7, #2
d03e2a86:	e5f8      	b.n	d03e267a <midi_process_events+0x286>
d03e2a88:	7eb3      	ldrb	r3, [r6, #26]
d03e2a8a:	4543      	cmp	r3, r8
d03e2a8c:	f47f ade4 	bne.w	d03e2658 <midi_process_events+0x264>
d03e2a90:	2703      	movs	r7, #3
d03e2a92:	e5f2      	b.n	d03e267a <midi_process_events+0x286>
d03e2a94:	7eb3      	ldrb	r3, [r6, #26]
d03e2a96:	4543      	cmp	r3, r8
d03e2a98:	f47f ad9d 	bne.w	d03e25d6 <midi_process_events+0x1e2>
d03e2a9c:	f04f 0803 	mov.w	r8, #3
d03e2aa0:	4647      	mov	r7, r8
d03e2aa2:	e007      	b.n	d03e2ab4 <midi_process_events+0x6c0>
d03e2aa4:	f896 3022 	ldrb.w	r3, [r6, #34]	; 0x22
d03e2aa8:	4543      	cmp	r3, r8
d03e2aaa:	f47f ad9c 	bne.w	d03e25e6 <midi_process_events+0x1f2>
d03e2aae:	f04f 0804 	mov.w	r8, #4
d03e2ab2:	4647      	mov	r7, r8
d03e2ab4:	2c09      	cmp	r4, #9
d03e2ab6:	d002      	beq.n	d03e2abe <midi_process_events+0x6ca>
d03e2ab8:	4638      	mov	r0, r7
d03e2aba:	f7fd fe6b 	bl	d03e0794 <sid_voice_note_off>
d03e2abe:	4a59      	ldr	r2, [pc, #356]	; (d03e2c24 <midi_process_events+0x830>)
d03e2ac0:	2100      	movs	r1, #0
d03e2ac2:	eb06 00c8 	add.w	r0, r6, r8, lsl #3
d03e2ac6:	6813      	ldr	r3, [r2, #0]
d03e2ac8:	f806 1038 	strb.w	r1, [r6, r8, lsl #3]
d03e2acc:	3301      	adds	r3, #1
d03e2ace:	80c1      	strh	r1, [r0, #6]
d03e2ad0:	6013      	str	r3, [r2, #0]
d03e2ad2:	e4e8      	b.n	d03e24a6 <midi_process_events+0xb2>
d03e2ad4:	f896 3022 	ldrb.w	r3, [r6, #34]	; 0x22
d03e2ad8:	4543      	cmp	r3, r8
d03e2ada:	f47f adc5 	bne.w	d03e2668 <midi_process_events+0x274>
d03e2ade:	2704      	movs	r7, #4
d03e2ae0:	e5cb      	b.n	d03e267a <midi_process_events+0x286>
d03e2ae2:	f896 702a 	ldrb.w	r7, [r6, #42]	; 0x2a
d03e2ae6:	4547      	cmp	r7, r8
d03e2ae8:	bf0c      	ite	eq
d03e2aea:	2705      	moveq	r7, #5
d03e2aec:	27ff      	movne	r7, #255	; 0xff
d03e2aee:	e5c4      	b.n	d03e267a <midi_process_events+0x286>
d03e2af0:	2001      	movs	r0, #1
d03e2af2:	f7fd fe4f 	bl	d03e0794 <sid_voice_note_off>
d03e2af6:	4a4b      	ldr	r2, [pc, #300]	; (d03e2c24 <midi_process_events+0x830>)
d03e2af8:	2100      	movs	r1, #0
d03e2afa:	6813      	ldr	r3, [r2, #0]
d03e2afc:	7231      	strb	r1, [r6, #8]
d03e2afe:	3301      	adds	r3, #1
d03e2b00:	81f1      	strh	r1, [r6, #14]
d03e2b02:	6013      	str	r3, [r2, #0]
d03e2b04:	e617      	b.n	d03e2736 <midi_process_events+0x342>
d03e2b06:	2002      	movs	r0, #2
d03e2b08:	f7fd fe44 	bl	d03e0794 <sid_voice_note_off>
d03e2b0c:	4a45      	ldr	r2, [pc, #276]	; (d03e2c24 <midi_process_events+0x830>)
d03e2b0e:	2100      	movs	r1, #0
d03e2b10:	6813      	ldr	r3, [r2, #0]
d03e2b12:	7431      	strb	r1, [r6, #16]
d03e2b14:	3301      	adds	r3, #1
d03e2b16:	82f1      	strh	r1, [r6, #22]
d03e2b18:	6013      	str	r3, [r2, #0]
d03e2b1a:	e612      	b.n	d03e2742 <midi_process_events+0x34e>
d03e2b1c:	2003      	movs	r0, #3
d03e2b1e:	f7fd fe39 	bl	d03e0794 <sid_voice_note_off>
d03e2b22:	4a40      	ldr	r2, [pc, #256]	; (d03e2c24 <midi_process_events+0x830>)
d03e2b24:	2100      	movs	r1, #0
d03e2b26:	6813      	ldr	r3, [r2, #0]
d03e2b28:	7631      	strb	r1, [r6, #24]
d03e2b2a:	3301      	adds	r3, #1
d03e2b2c:	83f1      	strh	r1, [r6, #30]
d03e2b2e:	6013      	str	r3, [r2, #0]
d03e2b30:	e60d      	b.n	d03e274e <midi_process_events+0x35a>
d03e2b32:	2004      	movs	r0, #4
d03e2b34:	f7fd fe2e 	bl	d03e0794 <sid_voice_note_off>
d03e2b38:	4a3a      	ldr	r2, [pc, #232]	; (d03e2c24 <midi_process_events+0x830>)
d03e2b3a:	2100      	movs	r1, #0
d03e2b3c:	6813      	ldr	r3, [r2, #0]
d03e2b3e:	f886 1020 	strb.w	r1, [r6, #32]
d03e2b42:	3301      	adds	r3, #1
d03e2b44:	84f1      	strh	r1, [r6, #38]	; 0x26
d03e2b46:	6013      	str	r3, [r2, #0]
d03e2b48:	e609      	b.n	d03e275e <midi_process_events+0x36a>
d03e2b4a:	2000      	movs	r0, #0
d03e2b4c:	f7fd fe22 	bl	d03e0794 <sid_voice_note_off>
d03e2b50:	4a34      	ldr	r2, [pc, #208]	; (d03e2c24 <midi_process_events+0x830>)
d03e2b52:	2100      	movs	r1, #0
d03e2b54:	6813      	ldr	r3, [r2, #0]
d03e2b56:	7031      	strb	r1, [r6, #0]
d03e2b58:	3301      	adds	r3, #1
d03e2b5a:	80f1      	strh	r1, [r6, #6]
d03e2b5c:	6013      	str	r3, [r2, #0]
d03e2b5e:	e5e4      	b.n	d03e272a <midi_process_events+0x336>
d03e2b60:	2300      	movs	r3, #0
d03e2b62:	f827 3014 	strh.w	r3, [r7, r4, lsl #1]
d03e2b66:	e738      	b.n	d03e29da <midi_process_events+0x5e6>
d03e2b68:	4639      	mov	r1, r7
d03e2b6a:	2003      	movs	r0, #3
d03e2b6c:	f7fd feac 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2b70:	e4e3      	b.n	d03e253a <midi_process_events+0x146>
d03e2b72:	4639      	mov	r1, r7
d03e2b74:	2004      	movs	r0, #4
d03e2b76:	f7fd fea7 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2b7a:	e4e6      	b.n	d03e254a <midi_process_events+0x156>
d03e2b7c:	4639      	mov	r1, r7
d03e2b7e:	2000      	movs	r0, #0
d03e2b80:	f7fd fea2 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2b84:	e4c7      	b.n	d03e2516 <midi_process_events+0x122>
d03e2b86:	4639      	mov	r1, r7
d03e2b88:	2001      	movs	r0, #1
d03e2b8a:	f7fd fe9d 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2b8e:	e4c8      	b.n	d03e2522 <midi_process_events+0x12e>
d03e2b90:	4639      	mov	r1, r7
d03e2b92:	2002      	movs	r0, #2
d03e2b94:	f7fd fe98 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2b98:	e4c9      	b.n	d03e252e <midi_process_events+0x13a>
d03e2b9a:	b2d7      	uxtb	r7, r2
d03e2b9c:	4613      	mov	r3, r2
d03e2b9e:	9201      	str	r2, [sp, #4]
d03e2ba0:	1c5a      	adds	r2, r3, #1
d03e2ba2:	4b21      	ldr	r3, [pc, #132]	; (d03e2c28 <midi_process_events+0x834>)
d03e2ba4:	fba3 0302 	umull	r0, r3, r3, r2
d03e2ba8:	089b      	lsrs	r3, r3, #2
d03e2baa:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d03e2bae:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
d03e2bb2:	f88e 3000 	strb.w	r3, [lr]
d03e2bb6:	e589      	b.n	d03e26cc <midi_process_events+0x2d8>
d03e2bb8:	f896 1023 	ldrb.w	r1, [r6, #35]	; 0x23
d03e2bbc:	4620      	mov	r0, r4
d03e2bbe:	f7fe fbcd 	bl	d03e135c <midi_effective_velocity>
d03e2bc2:	4601      	mov	r1, r0
d03e2bc4:	2004      	movs	r0, #4
d03e2bc6:	f7fd ff35 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2bca:	e677      	b.n	d03e28bc <midi_process_events+0x4c8>
d03e2bcc:	7ef1      	ldrb	r1, [r6, #27]
d03e2bce:	4620      	mov	r0, r4
d03e2bd0:	f7fe fbc4 	bl	d03e135c <midi_effective_velocity>
d03e2bd4:	4601      	mov	r1, r0
d03e2bd6:	2003      	movs	r0, #3
d03e2bd8:	f7fd ff2c 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2bdc:	e666      	b.n	d03e28ac <midi_process_events+0x4b8>
d03e2bde:	7cf1      	ldrb	r1, [r6, #19]
d03e2be0:	4620      	mov	r0, r4
d03e2be2:	f7fe fbbb 	bl	d03e135c <midi_effective_velocity>
d03e2be6:	4601      	mov	r1, r0
d03e2be8:	2002      	movs	r0, #2
d03e2bea:	f7fd ff23 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2bee:	e657      	b.n	d03e28a0 <midi_process_events+0x4ac>
d03e2bf0:	7af1      	ldrb	r1, [r6, #11]
d03e2bf2:	4620      	mov	r0, r4
d03e2bf4:	f7fe fbb2 	bl	d03e135c <midi_effective_velocity>
d03e2bf8:	4601      	mov	r1, r0
d03e2bfa:	2001      	movs	r0, #1
d03e2bfc:	f7fd ff1a 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2c00:	e648      	b.n	d03e2894 <midi_process_events+0x4a0>
d03e2c02:	78f1      	ldrb	r1, [r6, #3]
d03e2c04:	4620      	mov	r0, r4
d03e2c06:	f7fe fba9 	bl	d03e135c <midi_effective_velocity>
d03e2c0a:	4601      	mov	r1, r0
d03e2c0c:	4640      	mov	r0, r8
d03e2c0e:	f7fd ff11 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2c12:	e69f      	b.n	d03e2954 <midi_process_events+0x560>
d03e2c14:	d03ea3b4 	.word	0xd03ea3b4
d03e2c18:	d03ea374 	.word	0xd03ea374
d03e2c1c:	d03ea394 	.word	0xd03ea394
d03e2c20:	d03ea640 	.word	0xd03ea640
d03e2c24:	d03ea5dc 	.word	0xd03ea5dc
d03e2c28:	aaaaaaab 	.word	0xaaaaaaab
d03e2c2c:	7af1      	ldrb	r1, [r6, #11]
d03e2c2e:	4620      	mov	r0, r4
d03e2c30:	f7fe fb94 	bl	d03e135c <midi_effective_velocity>
d03e2c34:	4601      	mov	r1, r0
d03e2c36:	2001      	movs	r0, #1
d03e2c38:	f7fd fefc 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2c3c:	e690      	b.n	d03e2960 <midi_process_events+0x56c>
d03e2c3e:	7cf1      	ldrb	r1, [r6, #19]
d03e2c40:	4620      	mov	r0, r4
d03e2c42:	f7fe fb8b 	bl	d03e135c <midi_effective_velocity>
d03e2c46:	4601      	mov	r1, r0
d03e2c48:	2002      	movs	r0, #2
d03e2c4a:	f7fd fef3 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2c4e:	e68d      	b.n	d03e296c <midi_process_events+0x578>
d03e2c50:	7ef1      	ldrb	r1, [r6, #27]
d03e2c52:	4620      	mov	r0, r4
d03e2c54:	f7fe fb82 	bl	d03e135c <midi_effective_velocity>
d03e2c58:	4601      	mov	r1, r0
d03e2c5a:	2003      	movs	r0, #3
d03e2c5c:	f7fd feea 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2c60:	e68a      	b.n	d03e2978 <midi_process_events+0x584>
d03e2c62:	f896 1023 	ldrb.w	r1, [r6, #35]	; 0x23
d03e2c66:	4620      	mov	r0, r4
d03e2c68:	f7fe fb78 	bl	d03e135c <midi_effective_velocity>
d03e2c6c:	4601      	mov	r1, r0
d03e2c6e:	2004      	movs	r0, #4
d03e2c70:	f7fd fee0 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2c74:	e688      	b.n	d03e2988 <midi_process_events+0x594>
d03e2c76:	f896 102b 	ldrb.w	r1, [r6, #43]	; 0x2b
d03e2c7a:	4620      	mov	r0, r4
d03e2c7c:	f7fe fb6e 	bl	d03e135c <midi_effective_velocity>
d03e2c80:	4601      	mov	r1, r0
d03e2c82:	2005      	movs	r0, #5
d03e2c84:	f7fd fed6 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2c88:	e686      	b.n	d03e2998 <midi_process_events+0x5a4>
d03e2c8a:	2100      	movs	r1, #0
d03e2c8c:	2004      	movs	r0, #4
d03e2c8e:	f7fd fe1b 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2c92:	e6c2      	b.n	d03e2a1a <midi_process_events+0x626>
d03e2c94:	2100      	movs	r1, #0
d03e2c96:	2003      	movs	r0, #3
d03e2c98:	f7fd fe16 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2c9c:	e6b5      	b.n	d03e2a0a <midi_process_events+0x616>
d03e2c9e:	2100      	movs	r1, #0
d03e2ca0:	2002      	movs	r0, #2
d03e2ca2:	f7fd fe11 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2ca6:	e6aa      	b.n	d03e29fe <midi_process_events+0x60a>
d03e2ca8:	2100      	movs	r1, #0
d03e2caa:	2001      	movs	r0, #1
d03e2cac:	f7fd fe0c 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2cb0:	e69f      	b.n	d03e29f2 <midi_process_events+0x5fe>
d03e2cb2:	2100      	movs	r1, #0
d03e2cb4:	4608      	mov	r0, r1
d03e2cb6:	f7fd fe07 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2cba:	e694      	b.n	d03e29e6 <midi_process_events+0x5f2>
d03e2cbc:	b2df      	uxtb	r7, r3
d03e2cbe:	9301      	str	r3, [sp, #4]
d03e2cc0:	e76e      	b.n	d03e2ba0 <midi_process_events+0x7ac>
d03e2cc2:	bf00      	nop

d03e2cc4 <ui_vm_editor_clamp_selection>:
d03e2cc4:	4b2b      	ldr	r3, [pc, #172]	; (d03e2d74 <ui_vm_editor_clamp_selection+0xb0>)
d03e2cc6:	4a2c      	ldr	r2, [pc, #176]	; (d03e2d78 <ui_vm_editor_clamp_selection+0xb4>)
d03e2cc8:	781b      	ldrb	r3, [r3, #0]
d03e2cca:	56d1      	ldrsb	r1, [r2, r3]
d03e2ccc:	5cd3      	ldrb	r3, [r2, r3]
d03e2cce:	2900      	cmp	r1, #0
d03e2cd0:	db3c      	blt.n	d03e2d4c <ui_vm_editor_clamp_selection+0x88>
d03e2cd2:	4a2a      	ldr	r2, [pc, #168]	; (d03e2d7c <ui_vm_editor_clamp_selection+0xb8>)
d03e2cd4:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
d03e2cd8:	2900      	cmp	r1, #0
d03e2cda:	d037      	beq.n	d03e2d4c <ui_vm_editor_clamp_selection+0x88>
d03e2cdc:	2300      	movs	r3, #0
d03e2cde:	b430      	push	{r4, r5}
d03e2ce0:	e001      	b.n	d03e2ce6 <ui_vm_editor_clamp_selection+0x22>
d03e2ce2:	2b60      	cmp	r3, #96	; 0x60
d03e2ce4:	d041      	beq.n	d03e2d6a <ui_vm_editor_clamp_selection+0xa6>
d03e2ce6:	f811 2023 	ldrb.w	r2, [r1, r3, lsl #2]
d03e2cea:	b2d8      	uxtb	r0, r3
d03e2cec:	3301      	adds	r3, #1
d03e2cee:	2a00      	cmp	r2, #0
d03e2cf0:	d1f7      	bne.n	d03e2ce2 <ui_vm_editor_clamp_selection+0x1e>
d03e2cf2:	1c43      	adds	r3, r0, #1
d03e2cf4:	b2db      	uxtb	r3, r3
d03e2cf6:	4a22      	ldr	r2, [pc, #136]	; (d03e2d80 <ui_vm_editor_clamp_selection+0xbc>)
d03e2cf8:	7814      	ldrb	r4, [r2, #0]
d03e2cfa:	429c      	cmp	r4, r3
d03e2cfc:	d301      	bcc.n	d03e2d02 <ui_vm_editor_clamp_selection+0x3e>
d03e2cfe:	4604      	mov	r4, r0
d03e2d00:	7010      	strb	r0, [r2, #0]
d03e2d02:	4b20      	ldr	r3, [pc, #128]	; (d03e2d84 <ui_vm_editor_clamp_selection+0xc0>)
d03e2d04:	781a      	ldrb	r2, [r3, #0]
d03e2d06:	2a02      	cmp	r2, #2
d03e2d08:	d901      	bls.n	d03e2d0e <ui_vm_editor_clamp_selection+0x4a>
d03e2d0a:	2200      	movs	r2, #0
d03e2d0c:	701a      	strb	r2, [r3, #0]
d03e2d0e:	4d1e      	ldr	r5, [pc, #120]	; (d03e2d88 <ui_vm_editor_clamp_selection+0xc4>)
d03e2d10:	782b      	ldrb	r3, [r5, #0]
d03e2d12:	42a3      	cmp	r3, r4
d03e2d14:	d913      	bls.n	d03e2d3e <ui_vm_editor_clamp_selection+0x7a>
d03e2d16:	702c      	strb	r4, [r5, #0]
d03e2d18:	2300      	movs	r3, #0
d03e2d1a:	e001      	b.n	d03e2d20 <ui_vm_editor_clamp_selection+0x5c>
d03e2d1c:	2b60      	cmp	r3, #96	; 0x60
d03e2d1e:	d026      	beq.n	d03e2d6e <ui_vm_editor_clamp_selection+0xaa>
d03e2d20:	f811 2023 	ldrb.w	r2, [r1, r3, lsl #2]
d03e2d24:	b2d8      	uxtb	r0, r3
d03e2d26:	3301      	adds	r3, #1
d03e2d28:	2a00      	cmp	r2, #0
d03e2d2a:	d1f7      	bne.n	d03e2d1c <ui_vm_editor_clamp_selection+0x58>
d03e2d2c:	1c43      	adds	r3, r0, #1
d03e2d2e:	b2db      	uxtb	r3, r3
d03e2d30:	2b06      	cmp	r3, #6
d03e2d32:	d813      	bhi.n	d03e2d5c <ui_vm_editor_clamp_selection+0x98>
d03e2d34:	4294      	cmp	r4, r2
d03e2d36:	bf88      	it	hi
d03e2d38:	702a      	strbhi	r2, [r5, #0]
d03e2d3a:	bc30      	pop	{r4, r5}
d03e2d3c:	4770      	bx	lr
d03e2d3e:	1d9a      	adds	r2, r3, #6
d03e2d40:	b2d2      	uxtb	r2, r2
d03e2d42:	42a2      	cmp	r2, r4
d03e2d44:	d808      	bhi.n	d03e2d58 <ui_vm_editor_clamp_selection+0x94>
d03e2d46:	3c05      	subs	r4, #5
d03e2d48:	b2e4      	uxtb	r4, r4
d03e2d4a:	e7e4      	b.n	d03e2d16 <ui_vm_editor_clamp_selection+0x52>
d03e2d4c:	2300      	movs	r3, #0
d03e2d4e:	490c      	ldr	r1, [pc, #48]	; (d03e2d80 <ui_vm_editor_clamp_selection+0xbc>)
d03e2d50:	4a0d      	ldr	r2, [pc, #52]	; (d03e2d88 <ui_vm_editor_clamp_selection+0xc4>)
d03e2d52:	700b      	strb	r3, [r1, #0]
d03e2d54:	7013      	strb	r3, [r2, #0]
d03e2d56:	4770      	bx	lr
d03e2d58:	461c      	mov	r4, r3
d03e2d5a:	e7dd      	b.n	d03e2d18 <ui_vm_editor_clamp_selection+0x54>
d03e2d5c:	1f42      	subs	r2, r0, #5
d03e2d5e:	b2d2      	uxtb	r2, r2
d03e2d60:	4294      	cmp	r4, r2
d03e2d62:	bf88      	it	hi
d03e2d64:	702a      	strbhi	r2, [r5, #0]
d03e2d66:	bc30      	pop	{r4, r5}
d03e2d68:	4770      	bx	lr
d03e2d6a:	205f      	movs	r0, #95	; 0x5f
d03e2d6c:	e7c3      	b.n	d03e2cf6 <ui_vm_editor_clamp_selection+0x32>
d03e2d6e:	225a      	movs	r2, #90	; 0x5a
d03e2d70:	e7e0      	b.n	d03e2d34 <ui_vm_editor_clamp_selection+0x70>
d03e2d72:	bf00      	nop
d03e2d74:	d03ea645 	.word	0xd03ea645
d03e2d78:	d03ea3a4 	.word	0xd03ea3a4
d03e2d7c:	d03e9cbc 	.word	0xd03e9cbc
d03e2d80:	d03ea7fd 	.word	0xd03ea7fd
d03e2d84:	d03ea7f4 	.word	0xd03ea7f4
d03e2d88:	d03ea805 	.word	0xd03ea805

d03e2d8c <ui_vm_editor_adjust>:
d03e2d8c:	4b20      	ldr	r3, [pc, #128]	; (d03e2e10 <ui_vm_editor_adjust+0x84>)
d03e2d8e:	781b      	ldrb	r3, [r3, #0]
d03e2d90:	b14b      	cbz	r3, d03e2da6 <ui_vm_editor_adjust+0x1a>
d03e2d92:	4b20      	ldr	r3, [pc, #128]	; (d03e2e14 <ui_vm_editor_adjust+0x88>)
d03e2d94:	781b      	ldrb	r3, [r3, #0]
d03e2d96:	2bff      	cmp	r3, #255	; 0xff
d03e2d98:	d005      	beq.n	d03e2da6 <ui_vm_editor_adjust+0x1a>
d03e2d9a:	4a1f      	ldr	r2, [pc, #124]	; (d03e2e18 <ui_vm_editor_adjust+0x8c>)
d03e2d9c:	491f      	ldr	r1, [pc, #124]	; (d03e2e1c <ui_vm_editor_adjust+0x90>)
d03e2d9e:	7812      	ldrb	r2, [r2, #0]
d03e2da0:	5c8a      	ldrb	r2, [r1, r2]
d03e2da2:	429a      	cmp	r2, r3
d03e2da4:	d000      	beq.n	d03e2da8 <ui_vm_editor_adjust+0x1c>
d03e2da6:	4770      	bx	lr
d03e2da8:	b510      	push	{r4, lr}
d03e2daa:	4604      	mov	r4, r0
d03e2dac:	f7ff ff8a 	bl	d03e2cc4 <ui_vm_editor_clamp_selection>
d03e2db0:	4b1b      	ldr	r3, [pc, #108]	; (d03e2e20 <ui_vm_editor_adjust+0x94>)
d03e2db2:	4a1c      	ldr	r2, [pc, #112]	; (d03e2e24 <ui_vm_editor_adjust+0x98>)
d03e2db4:	781b      	ldrb	r3, [r3, #0]
d03e2db6:	7812      	ldrb	r2, [r2, #0]
d03e2db8:	2b01      	cmp	r3, #1
d03e2dba:	d00a      	beq.n	d03e2dd2 <ui_vm_editor_adjust+0x46>
d03e2dbc:	2b02      	cmp	r3, #2
d03e2dbe:	d01d      	beq.n	d03e2dfc <ui_vm_editor_adjust+0x70>
d03e2dc0:	b183      	cbz	r3, d03e2de4 <ui_vm_editor_adjust+0x58>
d03e2dc2:	4b19      	ldr	r3, [pc, #100]	; (d03e2e28 <ui_vm_editor_adjust+0x9c>)
d03e2dc4:	2000      	movs	r0, #0
d03e2dc6:	4a19      	ldr	r2, [pc, #100]	; (d03e2e2c <ui_vm_editor_adjust+0xa0>)
d03e2dc8:	2101      	movs	r1, #1
d03e2dca:	f883 017c 	strb.w	r0, [r3, #380]	; 0x17c
d03e2dce:	7011      	strb	r1, [r2, #0]
d03e2dd0:	bd10      	pop	{r4, pc}
d03e2dd2:	4b15      	ldr	r3, [pc, #84]	; (d03e2e28 <ui_vm_editor_adjust+0x9c>)
d03e2dd4:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d03e2dd8:	7850      	ldrb	r0, [r2, #1]
d03e2dda:	4420      	add	r0, r4
d03e2ddc:	f380 0008 	usat	r0, #8, r0
d03e2de0:	7050      	strb	r0, [r2, #1]
d03e2de2:	e7ef      	b.n	d03e2dc4 <ui_vm_editor_adjust+0x38>
d03e2de4:	4b10      	ldr	r3, [pc, #64]	; (d03e2e28 <ui_vm_editor_adjust+0x9c>)
d03e2de6:	f813 0022 	ldrb.w	r0, [r3, r2, lsl #2]
d03e2dea:	4420      	add	r0, r4
d03e2dec:	2815      	cmp	r0, #21
d03e2dee:	bfa8      	it	ge
d03e2df0:	2015      	movge	r0, #21
d03e2df2:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d03e2df6:	f803 0022 	strb.w	r0, [r3, r2, lsl #2]
d03e2dfa:	e7e3      	b.n	d03e2dc4 <ui_vm_editor_adjust+0x38>
d03e2dfc:	4b0a      	ldr	r3, [pc, #40]	; (d03e2e28 <ui_vm_editor_adjust+0x9c>)
d03e2dfe:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d03e2e02:	8850      	ldrh	r0, [r2, #2]
d03e2e04:	4420      	add	r0, r4
d03e2e06:	f380 0010 	usat	r0, #16, r0
d03e2e0a:	8050      	strh	r0, [r2, #2]
d03e2e0c:	e7da      	b.n	d03e2dc4 <ui_vm_editor_adjust+0x38>
d03e2e0e:	bf00      	nop
d03e2e10:	d03ea7f5 	.word	0xd03ea7f5
d03e2e14:	d03ea7fc 	.word	0xd03ea7fc
d03e2e18:	d03ea645 	.word	0xd03ea645
d03e2e1c:	d03ea3a4 	.word	0xd03ea3a4
d03e2e20:	d03ea7f4 	.word	0xd03ea7f4
d03e2e24:	d03ea7fd 	.word	0xd03ea7fd
d03e2e28:	d03ea674 	.word	0xd03ea674
d03e2e2c:	d03ea628 	.word	0xd03ea628

d03e2e30 <ui_redraw_backbuffer>:
d03e2e30:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e2e34:	4c86      	ldr	r4, [pc, #536]	; (d03e3050 <ui_redraw_backbuffer+0x220>)
d03e2e36:	2700      	movs	r7, #0
d03e2e38:	f8df 8228 	ldr.w	r8, [pc, #552]	; d03e3064 <ui_redraw_backbuffer+0x234>
d03e2e3c:	7b23      	ldrb	r3, [r4, #12]
d03e2e3e:	7b62      	ldrb	r2, [r4, #13]
d03e2e40:	7ba1      	ldrb	r1, [r4, #14]
d03e2e42:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2e46:	7be2      	ldrb	r2, [r4, #15]
d03e2e48:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e2e4c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2e50:	681b      	ldr	r3, [r3, #0]
d03e2e52:	ed2d 8b02 	vpush	{d8}
d03e2e56:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d03e2e58:	b0a3      	sub	sp, #140	; 0x8c
d03e2e5a:	4798      	blx	r3
d03e2e5c:	7b23      	ldrb	r3, [r4, #12]
d03e2e5e:	7b62      	ldrb	r2, [r4, #13]
d03e2e60:	ee08 0a10 	vmov	s16, r0
d03e2e64:	487b      	ldr	r0, [pc, #492]	; (d03e3054 <ui_redraw_backbuffer+0x224>)
d03e2e66:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2e6a:	7ba2      	ldrb	r2, [r4, #14]
d03e2e6c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2e70:	7be2      	ldrb	r2, [r4, #15]
d03e2e72:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2e76:	681b      	ldr	r3, [r3, #0]
d03e2e78:	6a1b      	ldr	r3, [r3, #32]
d03e2e7a:	4798      	blx	r3
d03e2e7c:	7b23      	ldrb	r3, [r4, #12]
d03e2e7e:	7b62      	ldrb	r2, [r4, #13]
d03e2e80:	4874      	ldr	r0, [pc, #464]	; (d03e3054 <ui_redraw_backbuffer+0x224>)
d03e2e82:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2e86:	7ba2      	ldrb	r2, [r4, #14]
d03e2e88:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2e8c:	7be2      	ldrb	r2, [r4, #15]
d03e2e8e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2e92:	681b      	ldr	r3, [r3, #0]
d03e2e94:	699b      	ldr	r3, [r3, #24]
d03e2e96:	4798      	blx	r3
d03e2e98:	7b23      	ldrb	r3, [r4, #12]
d03e2e9a:	7b62      	ldrb	r2, [r4, #13]
d03e2e9c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2ea0:	7ba2      	ldrb	r2, [r4, #14]
d03e2ea2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2ea6:	7be2      	ldrb	r2, [r4, #15]
d03e2ea8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2eac:	685b      	ldr	r3, [r3, #4]
d03e2eae:	681b      	ldr	r3, [r3, #0]
d03e2eb0:	4798      	blx	r3
d03e2eb2:	7b20      	ldrb	r0, [r4, #12]
d03e2eb4:	7b61      	ldrb	r1, [r4, #13]
d03e2eb6:	7ba2      	ldrb	r2, [r4, #14]
d03e2eb8:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e2ebc:	7be3      	ldrb	r3, [r4, #15]
d03e2ebe:	f818 0f01 	ldrb.w	r0, [r8, #1]!
d03e2ec2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e2ec6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e2eca:	685b      	ldr	r3, [r3, #4]
d03e2ecc:	68db      	ldr	r3, [r3, #12]
d03e2ece:	4798      	blx	r3
d03e2ed0:	7b21      	ldrb	r1, [r4, #12]
d03e2ed2:	7b60      	ldrb	r0, [r4, #13]
d03e2ed4:	2328      	movs	r3, #40	; 0x28
d03e2ed6:	7ba6      	ldrb	r6, [r4, #14]
d03e2ed8:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03e2edc:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d03e2ee0:	7be5      	ldrb	r5, [r4, #15]
d03e2ee2:	b239      	sxth	r1, r7
d03e2ee4:	3728      	adds	r7, #40	; 0x28
d03e2ee6:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d03e2eea:	2000      	movs	r0, #0
d03e2eec:	b2bf      	uxth	r7, r7
d03e2eee:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d03e2ef2:	686d      	ldr	r5, [r5, #4]
d03e2ef4:	686d      	ldr	r5, [r5, #4]
d03e2ef6:	47a8      	blx	r5
d03e2ef8:	f5b7 7fa0 	cmp.w	r7, #320	; 0x140
d03e2efc:	d1d9      	bne.n	d03e2eb2 <ui_redraw_backbuffer+0x82>
d03e2efe:	7b26      	ldrb	r6, [r4, #12]
d03e2f00:	2015      	movs	r0, #21
d03e2f02:	7b61      	ldrb	r1, [r4, #13]
d03e2f04:	250a      	movs	r5, #10
d03e2f06:	7ba2      	ldrb	r2, [r4, #14]
d03e2f08:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
d03e2f0c:	7be3      	ldrb	r3, [r4, #15]
d03e2f0e:	4f52      	ldr	r7, [pc, #328]	; (d03e3058 <ui_redraw_backbuffer+0x228>)
d03e2f10:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e2f14:	f8df 8150 	ldr.w	r8, [pc, #336]	; d03e3068 <ui_redraw_backbuffer+0x238>
d03e2f18:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e2f1c:	685b      	ldr	r3, [r3, #4]
d03e2f1e:	68db      	ldr	r3, [r3, #12]
d03e2f20:	4798      	blx	r3
d03e2f22:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e2f26:	7b60      	ldrb	r0, [r4, #13]
d03e2f28:	2100      	movs	r1, #0
d03e2f2a:	7ba2      	ldrb	r2, [r4, #14]
d03e2f2c:	2302      	movs	r3, #2
d03e2f2e:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d03e2f32:	7be6      	ldrb	r6, [r4, #15]
d03e2f34:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d03e2f38:	4608      	mov	r0, r1
d03e2f3a:	ea42 6606 	orr.w	r6, r2, r6, lsl #24
d03e2f3e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03e2f42:	6876      	ldr	r6, [r6, #4]
d03e2f44:	6876      	ldr	r6, [r6, #4]
d03e2f46:	47b0      	blx	r6
d03e2f48:	7b26      	ldrb	r6, [r4, #12]
d03e2f4a:	7b61      	ldrb	r1, [r4, #13]
d03e2f4c:	201a      	movs	r0, #26
d03e2f4e:	7ba2      	ldrb	r2, [r4, #14]
d03e2f50:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
d03e2f54:	7be3      	ldrb	r3, [r4, #15]
d03e2f56:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e2f5a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e2f5e:	685b      	ldr	r3, [r3, #4]
d03e2f60:	68db      	ldr	r3, [r3, #12]
d03e2f62:	4798      	blx	r3
d03e2f64:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e2f68:	7b61      	ldrb	r1, [r4, #13]
d03e2f6a:	2301      	movs	r3, #1
d03e2f6c:	7ba0      	ldrb	r0, [r4, #14]
d03e2f6e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03e2f72:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e2f76:	7be6      	ldrb	r6, [r4, #15]
d03e2f78:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d03e2f7c:	213f      	movs	r1, #63	; 0x3f
d03e2f7e:	ea40 6606 	orr.w	r6, r0, r6, lsl #24
d03e2f82:	2000      	movs	r0, #0
d03e2f84:	6876      	ldr	r6, [r6, #4]
d03e2f86:	6876      	ldr	r6, [r6, #4]
d03e2f88:	47b0      	blx	r6
d03e2f8a:	7b26      	ldrb	r6, [r4, #12]
d03e2f8c:	7b61      	ldrb	r1, [r4, #13]
d03e2f8e:	201e      	movs	r0, #30
d03e2f90:	7ba2      	ldrb	r2, [r4, #14]
d03e2f92:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
d03e2f96:	7be3      	ldrb	r3, [r4, #15]
d03e2f98:	2600      	movs	r6, #0
d03e2f9a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e2f9e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e2fa2:	685b      	ldr	r3, [r3, #4]
d03e2fa4:	68db      	ldr	r3, [r3, #12]
d03e2fa6:	4798      	blx	r3
d03e2fa8:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e2fac:	7b62      	ldrb	r2, [r4, #13]
d03e2fae:	2108      	movs	r1, #8
d03e2fb0:	7ba0      	ldrb	r0, [r4, #14]
d03e2fb2:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d03e2fb6:	7be3      	ldrb	r3, [r4, #15]
d03e2fb8:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d03e2fbc:	4a27      	ldr	r2, [pc, #156]	; (d03e305c <ui_redraw_backbuffer+0x22c>)
d03e2fbe:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d03e2fc2:	200c      	movs	r0, #12
d03e2fc4:	685b      	ldr	r3, [r3, #4]
d03e2fc6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e2fc8:	4798      	blx	r3
d03e2fca:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e2fce:	7b61      	ldrb	r1, [r4, #13]
d03e2fd0:	2018      	movs	r0, #24
d03e2fd2:	7ba2      	ldrb	r2, [r4, #14]
d03e2fd4:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e2fd8:	7be3      	ldrb	r3, [r4, #15]
d03e2fda:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e2fde:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e2fe2:	685b      	ldr	r3, [r3, #4]
d03e2fe4:	68db      	ldr	r3, [r3, #12]
d03e2fe6:	4798      	blx	r3
d03e2fe8:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e2fec:	7b62      	ldrb	r2, [r4, #13]
d03e2fee:	2108      	movs	r1, #8
d03e2ff0:	7ba0      	ldrb	r0, [r4, #14]
d03e2ff2:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d03e2ff6:	7be3      	ldrb	r3, [r4, #15]
d03e2ff8:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d03e2ffc:	4a18      	ldr	r2, [pc, #96]	; (d03e3060 <ui_redraw_backbuffer+0x230>)
d03e2ffe:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d03e3002:	f44f 7087 	mov.w	r0, #270	; 0x10e
d03e3006:	685b      	ldr	r3, [r3, #4]
d03e3008:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e300a:	4798      	blx	r3
d03e300c:	f898 0000 	ldrb.w	r0, [r8]
d03e3010:	b2f2      	uxtb	r2, r6
d03e3012:	f857 1b04 	ldr.w	r1, [r7], #4
d03e3016:	3601      	adds	r6, #1
d03e3018:	1a80      	subs	r0, r0, r2
d03e301a:	231c      	movs	r3, #28
d03e301c:	9100      	str	r1, [sp, #0]
d03e301e:	2252      	movs	r2, #82	; 0x52
d03e3020:	fab0 f080 	clz	r0, r0
d03e3024:	2120      	movs	r1, #32
d03e3026:	0940      	lsrs	r0, r0, #5
d03e3028:	9001      	str	r0, [sp, #4]
d03e302a:	b228      	sxth	r0, r5
d03e302c:	f7fe fc96 	bl	d03e195c <ui_button_draw>
d03e3030:	355c      	adds	r5, #92	; 0x5c
d03e3032:	2e05      	cmp	r6, #5
d03e3034:	b2ad      	uxth	r5, r5
d03e3036:	d1e9      	bne.n	d03e300c <ui_redraw_backbuffer+0x1dc>
d03e3038:	f898 3000 	ldrb.w	r3, [r8]
d03e303c:	2b04      	cmp	r3, #4
d03e303e:	f200 8347 	bhi.w	d03e36d0 <ui_redraw_backbuffer+0x8a0>
d03e3042:	e8df f013 	tbh	[pc, r3, lsl #1]
d03e3046:	0348      	.short	0x0348
d03e3048:	056f0453 	.word	0x056f0453
d03e304c:	001307db 	.word	0x001307db
d03e3050:	2001f000 	.word	0x2001f000
d03e3054:	d03ea980 	.word	0xd03ea980
d03e3058:	d03e9ba8 	.word	0xd03e9ba8
d03e305c:	d03e91ec 	.word	0xd03e91ec
d03e3060:	d03e9204 	.word	0xd03e9204
d03e3064:	d03e9c13 	.word	0xd03e9c13
d03e3068:	d03ea636 	.word	0xd03ea636
d03e306c:	f8df a144 	ldr.w	sl, [pc, #324]	; d03e31b4 <ui_redraw_backbuffer+0x384>
d03e3070:	4b45      	ldr	r3, [pc, #276]	; (d03e3188 <ui_redraw_backbuffer+0x358>)
d03e3072:	4a46      	ldr	r2, [pc, #280]	; (d03e318c <ui_redraw_backbuffer+0x35c>)
d03e3074:	f89a 6000 	ldrb.w	r6, [sl]
d03e3078:	781b      	ldrb	r3, [r3, #0]
d03e307a:	5d95      	ldrb	r5, [r2, r6]
d03e307c:	9205      	str	r2, [sp, #20]
d03e307e:	2b00      	cmp	r3, #0
d03e3080:	f001 8102 	beq.w	d03e4288 <ui_redraw_backbuffer+0x1458>
d03e3084:	4a42      	ldr	r2, [pc, #264]	; (d03e3190 <ui_redraw_backbuffer+0x360>)
d03e3086:	4b43      	ldr	r3, [pc, #268]	; (d03e3194 <ui_redraw_backbuffer+0x364>)
d03e3088:	7811      	ldrb	r1, [r2, #0]
d03e308a:	4a43      	ldr	r2, [pc, #268]	; (d03e3198 <ui_redraw_backbuffer+0x368>)
d03e308c:	42a9      	cmp	r1, r5
d03e308e:	bf16      	itet	ne
d03e3090:	4613      	movne	r3, r2
d03e3092:	2201      	moveq	r2, #1
d03e3094:	2200      	movne	r2, #0
d03e3096:	9204      	str	r2, [sp, #16]
d03e3098:	9300      	str	r3, [sp, #0]
d03e309a:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03e309e:	23ce      	movs	r3, #206	; 0xce
d03e30a0:	2142      	movs	r1, #66	; 0x42
d03e30a2:	2010      	movs	r0, #16
d03e30a4:	f7fe fdcc 	bl	d03e1c40 <ui_panel>
d03e30a8:	2d80      	cmp	r5, #128	; 0x80
d03e30aa:	f106 0301 	add.w	r3, r6, #1
d03e30ae:	f201 80e8 	bhi.w	d03e4282 <ui_redraw_backbuffer+0x1452>
d03e30b2:	4a3a      	ldr	r2, [pc, #232]	; (d03e319c <ui_redraw_backbuffer+0x36c>)
d03e30b4:	f852 2025 	ldr.w	r2, [r2, r5, lsl #2]
d03e30b8:	af0a      	add	r7, sp, #40	; 0x28
d03e30ba:	2160      	movs	r1, #96	; 0x60
d03e30bc:	9201      	str	r2, [sp, #4]
d03e30be:	4638      	mov	r0, r7
d03e30c0:	4a37      	ldr	r2, [pc, #220]	; (d03e31a0 <ui_redraw_backbuffer+0x370>)
d03e30c2:	9500      	str	r5, [sp, #0]
d03e30c4:	f004 fe66 	bl	d03e7d94 <sniprintf>
d03e30c8:	7b26      	ldrb	r6, [r4, #12]
d03e30ca:	7b61      	ldrb	r1, [r4, #13]
d03e30cc:	201e      	movs	r0, #30
d03e30ce:	7ba2      	ldrb	r2, [r4, #14]
d03e30d0:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
d03e30d4:	7be3      	ldrb	r3, [r4, #15]
d03e30d6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e30da:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e30de:	685b      	ldr	r3, [r3, #4]
d03e30e0:	68db      	ldr	r3, [r3, #12]
d03e30e2:	4798      	blx	r3
d03e30e4:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e30e8:	7b60      	ldrb	r0, [r4, #13]
d03e30ea:	463a      	mov	r2, r7
d03e30ec:	7ba6      	ldrb	r6, [r4, #14]
d03e30ee:	2156      	movs	r1, #86	; 0x56
d03e30f0:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d03e30f4:	7be3      	ldrb	r3, [r4, #15]
d03e30f6:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d03e30fa:	201e      	movs	r0, #30
d03e30fc:	ea46 6303 	orr.w	r3, r6, r3, lsl #24
d03e3100:	685b      	ldr	r3, [r3, #4]
d03e3102:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3104:	4798      	blx	r3
d03e3106:	4927      	ldr	r1, [pc, #156]	; (d03e31a4 <ui_redraw_backbuffer+0x374>)
d03e3108:	2316      	movs	r3, #22
d03e310a:	2222      	movs	r2, #34	; 0x22
d03e310c:	f44f 70af 	mov.w	r0, #350	; 0x15e
d03e3110:	9100      	str	r1, [sp, #0]
d03e3112:	2144      	movs	r1, #68	; 0x44
d03e3114:	f7fe faf8 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e3118:	4923      	ldr	r1, [pc, #140]	; (d03e31a8 <ui_redraw_backbuffer+0x378>)
d03e311a:	2222      	movs	r2, #34	; 0x22
d03e311c:	2316      	movs	r3, #22
d03e311e:	9100      	str	r1, [sp, #0]
d03e3120:	f44f 70c2 	mov.w	r0, #388	; 0x184
d03e3124:	2144      	movs	r1, #68	; 0x44
d03e3126:	f7fe faef 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e312a:	062a      	lsls	r2, r5, #24
d03e312c:	f101 8174 	bmi.w	d03e4418 <ui_redraw_backbuffer+0x15e8>
d03e3130:	4b1e      	ldr	r3, [pc, #120]	; (d03e31ac <ui_redraw_backbuffer+0x37c>)
d03e3132:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
d03e3136:	2e00      	cmp	r6, #0
d03e3138:	f001 81de 	beq.w	d03e44f8 <ui_redraw_backbuffer+0x16c8>
d03e313c:	f89a 2000 	ldrb.w	r2, [sl]
d03e3140:	9805      	ldr	r0, [sp, #20]
d03e3142:	5681      	ldrsb	r1, [r0, r2]
d03e3144:	5c82      	ldrb	r2, [r0, r2]
d03e3146:	2900      	cmp	r1, #0
d03e3148:	f2c1 8218 	blt.w	d03e457c <ui_redraw_backbuffer+0x174c>
d03e314c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
d03e3150:	2900      	cmp	r1, #0
d03e3152:	f001 8245 	beq.w	d03e45e0 <ui_redraw_backbuffer+0x17b0>
d03e3156:	2300      	movs	r3, #0
d03e3158:	e002      	b.n	d03e3160 <ui_redraw_backbuffer+0x330>
d03e315a:	2b60      	cmp	r3, #96	; 0x60
d03e315c:	f001 8262 	beq.w	d03e4624 <ui_redraw_backbuffer+0x17f4>
d03e3160:	f811 2023 	ldrb.w	r2, [r1, r3, lsl #2]
d03e3164:	b2d8      	uxtb	r0, r3
d03e3166:	3301      	adds	r3, #1
d03e3168:	2a00      	cmp	r2, #0
d03e316a:	d1f6      	bne.n	d03e315a <ui_redraw_backbuffer+0x32a>
d03e316c:	1c43      	adds	r3, r0, #1
d03e316e:	b2db      	uxtb	r3, r3
d03e3170:	2b06      	cmp	r3, #6
d03e3172:	d901      	bls.n	d03e3178 <ui_redraw_backbuffer+0x348>
d03e3174:	1f42      	subs	r2, r0, #5
d03e3176:	b2d2      	uxtb	r2, r2
d03e3178:	490d      	ldr	r1, [pc, #52]	; (d03e31b0 <ui_redraw_backbuffer+0x380>)
d03e317a:	780b      	ldrb	r3, [r1, #0]
d03e317c:	4293      	cmp	r3, r2
d03e317e:	f04f 0300 	mov.w	r3, #0
d03e3182:	bf88      	it	hi
d03e3184:	700a      	strbhi	r2, [r1, #0]
d03e3186:	e01a      	b.n	d03e31be <ui_redraw_backbuffer+0x38e>
d03e3188:	d03ea7f5 	.word	0xd03ea7f5
d03e318c:	d03ea3a4 	.word	0xd03ea3a4
d03e3190:	d03ea7fc 	.word	0xd03ea7fc
d03e3194:	d03e91b0 	.word	0xd03e91b0
d03e3198:	d03e91c0 	.word	0xd03e91c0
d03e319c:	d03e99a4 	.word	0xd03e99a4
d03e31a0:	d03e93e0 	.word	0xd03e93e0
d03e31a4:	d03e910c 	.word	0xd03e910c
d03e31a8:	d03e9110 	.word	0xd03e9110
d03e31ac:	d03e9cbc 	.word	0xd03e9cbc
d03e31b0:	d03ea805 	.word	0xd03ea805
d03e31b4:	d03ea645 	.word	0xd03ea645
d03e31b8:	2b60      	cmp	r3, #96	; 0x60
d03e31ba:	f001 8214 	beq.w	d03e45e6 <ui_redraw_backbuffer+0x17b6>
d03e31be:	f816 2023 	ldrb.w	r2, [r6, r3, lsl #2]
d03e31c2:	b2d9      	uxtb	r1, r3
d03e31c4:	3301      	adds	r3, #1
d03e31c6:	2a00      	cmp	r2, #0
d03e31c8:	d1f6      	bne.n	d03e31b8 <ui_redraw_backbuffer+0x388>
d03e31ca:	3101      	adds	r1, #1
d03e31cc:	b2cb      	uxtb	r3, r1
d03e31ce:	9305      	str	r3, [sp, #20]
d03e31d0:	7b21      	ldrb	r1, [r4, #12]
d03e31d2:	201d      	movs	r0, #29
d03e31d4:	7b63      	ldrb	r3, [r4, #13]
d03e31d6:	f04f 0b00 	mov.w	fp, #0
d03e31da:	7ba2      	ldrb	r2, [r4, #14]
d03e31dc:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e31e0:	7be3      	ldrb	r3, [r4, #15]
d03e31e2:	f8df a358 	ldr.w	sl, [pc, #856]	; d03e353c <ui_redraw_backbuffer+0x70c>
d03e31e6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e31ea:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e31ee:	685b      	ldr	r3, [r3, #4]
d03e31f0:	68db      	ldr	r3, [r3, #12]
d03e31f2:	4798      	blx	r3
d03e31f4:	7b22      	ldrb	r2, [r4, #12]
d03e31f6:	7b63      	ldrb	r3, [r4, #13]
d03e31f8:	216a      	movs	r1, #106	; 0x6a
d03e31fa:	7ba0      	ldrb	r0, [r4, #14]
d03e31fc:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03e3200:	7be3      	ldrb	r3, [r4, #15]
d03e3202:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d03e3206:	4ac4      	ldr	r2, [pc, #784]	; (d03e3518 <ui_redraw_backbuffer+0x6e8>)
d03e3208:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d03e320c:	201e      	movs	r0, #30
d03e320e:	685b      	ldr	r3, [r3, #4]
d03e3210:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3212:	4798      	blx	r3
d03e3214:	9606      	str	r6, [sp, #24]
d03e3216:	4bc1      	ldr	r3, [pc, #772]	; (d03e351c <ui_redraw_backbuffer+0x6ec>)
d03e3218:	781d      	ldrb	r5, [r3, #0]
d03e321a:	9b05      	ldr	r3, [sp, #20]
d03e321c:	445d      	add	r5, fp
d03e321e:	b2ed      	uxtb	r5, r5
d03e3220:	429d      	cmp	r5, r3
d03e3222:	d255      	bcs.n	d03e32d0 <ui_redraw_backbuffer+0x4a0>
d03e3224:	9b04      	ldr	r3, [sp, #16]
d03e3226:	2b00      	cmp	r3, #0
d03e3228:	f001 8056 	beq.w	d03e42d8 <ui_redraw_backbuffer+0x14a8>
d03e322c:	4bbc      	ldr	r3, [pc, #752]	; (d03e3520 <ui_redraw_backbuffer+0x6f0>)
d03e322e:	781b      	ldrb	r3, [r3, #0]
d03e3230:	42ab      	cmp	r3, r5
d03e3232:	f001 8095 	beq.w	d03e4360 <ui_redraw_backbuffer+0x1530>
d03e3236:	ea4f 190b 	mov.w	r9, fp, lsl #4
d03e323a:	9b06      	ldr	r3, [sp, #24]
d03e323c:	f813 2025 	ldrb.w	r2, [r3, r5, lsl #2]
d03e3240:	eb03 0885 	add.w	r8, r3, r5, lsl #2
d03e3244:	2a15      	cmp	r2, #21
d03e3246:	f241 806d 	bls.w	d03e4324 <ui_redraw_backbuffer+0x14f4>
d03e324a:	f8b8 0002 	ldrh.w	r0, [r8, #2]
d03e324e:	462b      	mov	r3, r5
d03e3250:	4eb4      	ldr	r6, [pc, #720]	; (d03e3524 <ui_redraw_backbuffer+0x6f4>)
d03e3252:	4652      	mov	r2, sl
d03e3254:	9002      	str	r0, [sp, #8]
d03e3256:	2160      	movs	r1, #96	; 0x60
d03e3258:	4638      	mov	r0, r7
d03e325a:	f898 c001 	ldrb.w	ip, [r8, #1]
d03e325e:	9600      	str	r6, [sp, #0]
d03e3260:	f8cd c004 	str.w	ip, [sp, #4]
d03e3264:	f004 fd96 	bl	d03e7d94 <sniprintf>
d03e3268:	7b21      	ldrb	r1, [r4, #12]
d03e326a:	7b63      	ldrb	r3, [r4, #13]
d03e326c:	4608      	mov	r0, r1
d03e326e:	7ba2      	ldrb	r2, [r4, #14]
d03e3270:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e3274:	7be3      	ldrb	r3, [r4, #15]
d03e3276:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e327a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e327e:	4aa8      	ldr	r2, [pc, #672]	; (d03e3520 <ui_redraw_backbuffer+0x6f0>)
d03e3280:	7812      	ldrb	r2, [r2, #0]
d03e3282:	685b      	ldr	r3, [r3, #4]
d03e3284:	42aa      	cmp	r2, r5
d03e3286:	68db      	ldr	r3, [r3, #12]
d03e3288:	f001 80c3 	beq.w	d03e4412 <ui_redraw_backbuffer+0x15e2>
d03e328c:	f898 2000 	ldrb.w	r2, [r8]
d03e3290:	2a00      	cmp	r2, #0
d03e3292:	bf0c      	ite	eq
d03e3294:	200e      	moveq	r0, #14
d03e3296:	2019      	movne	r0, #25
d03e3298:	4798      	blx	r3
d03e329a:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e329e:	7b65      	ldrb	r5, [r4, #13]
d03e32a0:	f109 017c 	add.w	r1, r9, #124	; 0x7c
d03e32a4:	7ba3      	ldrb	r3, [r4, #14]
d03e32a6:	463a      	mov	r2, r7
d03e32a8:	ea4c 2005 	orr.w	r0, ip, r5, lsl #8
d03e32ac:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e32b0:	ea40 4503 	orr.w	r5, r0, r3, lsl #16
d03e32b4:	201e      	movs	r0, #30
d03e32b6:	ea45 630c 	orr.w	r3, r5, ip, lsl #24
d03e32ba:	685b      	ldr	r3, [r3, #4]
d03e32bc:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e32be:	4798      	blx	r3
d03e32c0:	f898 3000 	ldrb.w	r3, [r8]
d03e32c4:	b123      	cbz	r3, d03e32d0 <ui_redraw_backbuffer+0x4a0>
d03e32c6:	f10b 0b01 	add.w	fp, fp, #1
d03e32ca:	f1bb 0f06 	cmp.w	fp, #6
d03e32ce:	d1a2      	bne.n	d03e3216 <ui_redraw_backbuffer+0x3e6>
d03e32d0:	4895      	ldr	r0, [pc, #596]	; (d03e3528 <ui_redraw_backbuffer+0x6f8>)
d03e32d2:	2316      	movs	r3, #22
d03e32d4:	2222      	movs	r2, #34	; 0x22
d03e32d6:	216a      	movs	r1, #106	; 0x6a
d03e32d8:	9000      	str	r0, [sp, #0]
d03e32da:	f44f 70d1 	mov.w	r0, #418	; 0x1a2
d03e32de:	f7fe fa13 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e32e2:	9b04      	ldr	r3, [sp, #16]
d03e32e4:	2b00      	cmp	r3, #0
d03e32e6:	f001 80b7 	beq.w	d03e4458 <ui_redraw_backbuffer+0x1628>
d03e32ea:	4b90      	ldr	r3, [pc, #576]	; (d03e352c <ui_redraw_backbuffer+0x6fc>)
d03e32ec:	781d      	ldrb	r5, [r3, #0]
d03e32ee:	f015 0501 	ands.w	r5, r5, #1
d03e32f2:	f041 8146 	bne.w	d03e4582 <ui_redraw_backbuffer+0x1752>
d03e32f6:	4e8e      	ldr	r6, [pc, #568]	; (d03e3530 <ui_redraw_backbuffer+0x700>)
d03e32f8:	f04f 081c 	mov.w	r8, #28
d03e32fc:	f04f 090f 	mov.w	r9, #15
d03e3300:	7b21      	ldrb	r1, [r4, #12]
d03e3302:	f04f 0a00 	mov.w	sl, #0
d03e3306:	7b62      	ldrb	r2, [r4, #13]
d03e3308:	201a      	movs	r0, #26
d03e330a:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e330e:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d03e3312:	7be3      	ldrb	r3, [r4, #15]
d03e3314:	f8ad a024 	strh.w	sl, [sp, #36]	; 0x24
d03e3318:	ea41 420e 	orr.w	r2, r1, lr, lsl #16
d03e331c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3320:	685b      	ldr	r3, [r3, #4]
d03e3322:	68db      	ldr	r3, [r3, #12]
d03e3324:	4798      	blx	r3
d03e3326:	7b21      	ldrb	r1, [r4, #12]
d03e3328:	7b60      	ldrb	r0, [r4, #13]
d03e332a:	2350      	movs	r3, #80	; 0x50
d03e332c:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e3330:	2222      	movs	r2, #34	; 0x22
d03e3332:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d03e3336:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e333a:	2182      	movs	r1, #130	; 0x82
d03e333c:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d03e3340:	f44f 70d1 	mov.w	r0, #418	; 0x1a2
d03e3344:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d03e3348:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e334c:	f8dc a004 	ldr.w	sl, [ip, #4]
d03e3350:	47d0      	blx	sl
d03e3352:	7b21      	ldrb	r1, [r4, #12]
d03e3354:	7b63      	ldrb	r3, [r4, #13]
d03e3356:	4640      	mov	r0, r8
d03e3358:	7ba2      	ldrb	r2, [r4, #14]
d03e335a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e335e:	7be3      	ldrb	r3, [r4, #15]
d03e3360:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3364:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3368:	685b      	ldr	r3, [r3, #4]
d03e336a:	68db      	ldr	r3, [r3, #12]
d03e336c:	4798      	blx	r3
d03e336e:	7b21      	ldrb	r1, [r4, #12]
d03e3370:	f894 e00d 	ldrb.w	lr, [r4, #13]
d03e3374:	234e      	movs	r3, #78	; 0x4e
d03e3376:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e337a:	2220      	movs	r2, #32
d03e337c:	ea41 2e0e 	orr.w	lr, r1, lr, lsl #8
d03e3380:	f894 800f 	ldrb.w	r8, [r4, #15]
d03e3384:	2183      	movs	r1, #131	; 0x83
d03e3386:	f240 10a3 	movw	r0, #419	; 0x1a3
d03e338a:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d03e338e:	ea4c 6808 	orr.w	r8, ip, r8, lsl #24
d03e3392:	f8d8 c004 	ldr.w	ip, [r8, #4]
d03e3396:	f8dc 8004 	ldr.w	r8, [ip, #4]
d03e339a:	47c0      	blx	r8
d03e339c:	7b21      	ldrb	r1, [r4, #12]
d03e339e:	7b63      	ldrb	r3, [r4, #13]
d03e33a0:	4608      	mov	r0, r1
d03e33a2:	7ba2      	ldrb	r2, [r4, #14]
d03e33a4:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e33a8:	7be3      	ldrb	r3, [r4, #15]
d03e33aa:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e33ae:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e33b2:	685b      	ldr	r3, [r3, #4]
d03e33b4:	68db      	ldr	r3, [r3, #12]
d03e33b6:	2d00      	cmp	r5, #0
d03e33b8:	f041 8068 	bne.w	d03e448c <ui_redraw_backbuffer+0x165c>
d03e33bc:	9a04      	ldr	r2, [sp, #16]
d03e33be:	258a      	movs	r5, #138	; 0x8a
d03e33c0:	f240 18af 	movw	r8, #431	; 0x1af
d03e33c4:	2a00      	cmp	r2, #0
d03e33c6:	bf14      	ite	ne
d03e33c8:	201d      	movne	r0, #29
d03e33ca:	2015      	moveq	r0, #21
d03e33cc:	4798      	blx	r3
d03e33ce:	7b21      	ldrb	r1, [r4, #12]
d03e33d0:	7b60      	ldrb	r0, [r4, #13]
d03e33d2:	2302      	movs	r3, #2
d03e33d4:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e33d8:	2220      	movs	r2, #32
d03e33da:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
d03e33de:	f894 e00f 	ldrb.w	lr, [r4, #15]
d03e33e2:	ea41 400c 	orr.w	r0, r1, ip, lsl #16
d03e33e6:	2183      	movs	r1, #131	; 0x83
d03e33e8:	ea40 6c0e 	orr.w	ip, r0, lr, lsl #24
d03e33ec:	f240 10a3 	movw	r0, #419	; 0x1a3
d03e33f0:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e33f4:	f8dc a004 	ldr.w	sl, [ip, #4]
d03e33f8:	47d0      	blx	sl
d03e33fa:	7b21      	ldrb	r1, [r4, #12]
d03e33fc:	7b60      	ldrb	r0, [r4, #13]
d03e33fe:	234e      	movs	r3, #78	; 0x4e
d03e3400:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e3404:	2202      	movs	r2, #2
d03e3406:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
d03e340a:	f894 e00f 	ldrb.w	lr, [r4, #15]
d03e340e:	ea41 400c 	orr.w	r0, r1, ip, lsl #16
d03e3412:	2183      	movs	r1, #131	; 0x83
d03e3414:	ea40 6c0e 	orr.w	ip, r0, lr, lsl #24
d03e3418:	f240 10a3 	movw	r0, #419	; 0x1a3
d03e341c:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e3420:	f8dc a004 	ldr.w	sl, [ip, #4]
d03e3424:	47d0      	blx	sl
d03e3426:	7b21      	ldrb	r1, [r4, #12]
d03e3428:	2010      	movs	r0, #16
d03e342a:	7b63      	ldrb	r3, [r4, #13]
d03e342c:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e3430:	7ba2      	ldrb	r2, [r4, #14]
d03e3432:	7be3      	ldrb	r3, [r4, #15]
d03e3434:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3438:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e343c:	685b      	ldr	r3, [r3, #4]
d03e343e:	68db      	ldr	r3, [r3, #12]
d03e3440:	4798      	blx	r3
d03e3442:	7b21      	ldrb	r1, [r4, #12]
d03e3444:	7b60      	ldrb	r0, [r4, #13]
d03e3446:	2302      	movs	r3, #2
d03e3448:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e344c:	2220      	movs	r2, #32
d03e344e:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
d03e3452:	f894 e00f 	ldrb.w	lr, [r4, #15]
d03e3456:	ea41 400c 	orr.w	r0, r1, ip, lsl #16
d03e345a:	21cf      	movs	r1, #207	; 0xcf
d03e345c:	ea40 6c0e 	orr.w	ip, r0, lr, lsl #24
d03e3460:	f240 10a3 	movw	r0, #419	; 0x1a3
d03e3464:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e3468:	f8dc a004 	ldr.w	sl, [ip, #4]
d03e346c:	47d0      	blx	sl
d03e346e:	7b21      	ldrb	r1, [r4, #12]
d03e3470:	7b60      	ldrb	r0, [r4, #13]
d03e3472:	234e      	movs	r3, #78	; 0x4e
d03e3474:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e3478:	2202      	movs	r2, #2
d03e347a:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
d03e347e:	f894 e00f 	ldrb.w	lr, [r4, #15]
d03e3482:	ea41 400c 	orr.w	r0, r1, ip, lsl #16
d03e3486:	2183      	movs	r1, #131	; 0x83
d03e3488:	ea40 6c0e 	orr.w	ip, r0, lr, lsl #24
d03e348c:	f240 10c1 	movw	r0, #449	; 0x1c1
d03e3490:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e3494:	f8dc a004 	ldr.w	sl, [ip, #4]
d03e3498:	47d0      	blx	sl
d03e349a:	7b21      	ldrb	r1, [r4, #12]
d03e349c:	7b62      	ldrb	r2, [r4, #13]
d03e349e:	4648      	mov	r0, r9
d03e34a0:	7ba3      	ldrb	r3, [r4, #14]
d03e34a2:	f106 39ff 	add.w	r9, r6, #4294967295	; 0xffffffff
d03e34a6:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d03e34aa:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e34ae:	3603      	adds	r6, #3
d03e34b0:	ea41 4203 	orr.w	r2, r1, r3, lsl #16
d03e34b4:	ea42 630c 	orr.w	r3, r2, ip, lsl #24
d03e34b8:	685b      	ldr	r3, [r3, #4]
d03e34ba:	68db      	ldr	r3, [r3, #12]
d03e34bc:	4798      	blx	r3
d03e34be:	f894 a00c 	ldrb.w	sl, [r4, #12]
d03e34c2:	4629      	mov	r1, r5
d03e34c4:	f894 e00d 	ldrb.w	lr, [r4, #13]
d03e34c8:	aa09      	add	r2, sp, #36	; 0x24
d03e34ca:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e34ce:	3510      	adds	r5, #16
d03e34d0:	ea4a 2e0e 	orr.w	lr, sl, lr, lsl #8
d03e34d4:	7be3      	ldrb	r3, [r4, #15]
d03e34d6:	f819 0f01 	ldrb.w	r0, [r9, #1]!
d03e34da:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d03e34de:	f88d 0024 	strb.w	r0, [sp, #36]	; 0x24
d03e34e2:	4640      	mov	r0, r8
d03e34e4:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d03e34e8:	685b      	ldr	r3, [r3, #4]
d03e34ea:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e34ec:	4798      	blx	r3
d03e34ee:	454e      	cmp	r6, r9
d03e34f0:	d1e5      	bne.n	d03e34be <ui_redraw_backbuffer+0x68e>
d03e34f2:	4810      	ldr	r0, [pc, #64]	; (d03e3534 <ui_redraw_backbuffer+0x704>)
d03e34f4:	2316      	movs	r3, #22
d03e34f6:	2222      	movs	r2, #34	; 0x22
d03e34f8:	21da      	movs	r1, #218	; 0xda
d03e34fa:	9000      	str	r0, [sp, #0]
d03e34fc:	f44f 70d1 	mov.w	r0, #418	; 0x1a2
d03e3500:	f7fe f902 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e3504:	9b04      	ldr	r3, [sp, #16]
d03e3506:	2b00      	cmp	r3, #0
d03e3508:	f001 8016 	beq.w	d03e4538 <ui_redraw_backbuffer+0x1708>
d03e350c:	4b0a      	ldr	r3, [pc, #40]	; (d03e3538 <ui_redraw_backbuffer+0x708>)
d03e350e:	781a      	ldrb	r2, [r3, #0]
d03e3510:	2a01      	cmp	r2, #1
d03e3512:	f001 804b 	beq.w	d03e45ac <ui_redraw_backbuffer+0x177c>
d03e3516:	e013      	b.n	d03e3540 <ui_redraw_backbuffer+0x710>
d03e3518:	d03e942c 	.word	0xd03e942c
d03e351c:	d03ea805 	.word	0xd03ea805
d03e3520:	d03ea7fd 	.word	0xd03ea7fd
d03e3524:	d03e9508 	.word	0xd03e9508
d03e3528:	d03e9444 	.word	0xd03e9444
d03e352c:	d03ea634 	.word	0xd03ea634
d03e3530:	d03e91d0 	.word	0xd03e91d0
d03e3534:	d03e9448 	.word	0xd03e9448
d03e3538:	d03ea7f4 	.word	0xd03ea7f4
d03e353c:	d03e94f0 	.word	0xd03e94f0
d03e3540:	4b57      	ldr	r3, [pc, #348]	; (d03e36a0 <ui_redraw_backbuffer+0x870>)
d03e3542:	4958      	ldr	r1, [pc, #352]	; (d03e36a4 <ui_redraw_backbuffer+0x874>)
d03e3544:	2a02      	cmp	r2, #2
d03e3546:	bf08      	it	eq
d03e3548:	460b      	moveq	r3, r1
d03e354a:	4a57      	ldr	r2, [pc, #348]	; (d03e36a8 <ui_redraw_backbuffer+0x878>)
d03e354c:	2160      	movs	r1, #96	; 0x60
d03e354e:	9300      	str	r3, [sp, #0]
d03e3550:	4638      	mov	r0, r7
d03e3552:	7813      	ldrb	r3, [r2, #0]
d03e3554:	4a55      	ldr	r2, [pc, #340]	; (d03e36ac <ui_redraw_backbuffer+0x87c>)
d03e3556:	f004 fc1d 	bl	d03e7d94 <sniprintf>
d03e355a:	7b21      	ldrb	r1, [r4, #12]
d03e355c:	7b63      	ldrb	r3, [r4, #13]
d03e355e:	2018      	movs	r0, #24
d03e3560:	7ba2      	ldrb	r2, [r4, #14]
d03e3562:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e3566:	7be3      	ldrb	r3, [r4, #15]
d03e3568:	f8df 915c 	ldr.w	r9, [pc, #348]	; d03e36c8 <ui_redraw_backbuffer+0x898>
d03e356c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3570:	f8df 8158 	ldr.w	r8, [pc, #344]	; d03e36cc <ui_redraw_backbuffer+0x89c>
d03e3574:	4e4e      	ldr	r6, [pc, #312]	; (d03e36b0 <ui_redraw_backbuffer+0x880>)
d03e3576:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e357a:	4d4e      	ldr	r5, [pc, #312]	; (d03e36b4 <ui_redraw_backbuffer+0x884>)
d03e357c:	685b      	ldr	r3, [r3, #4]
d03e357e:	68db      	ldr	r3, [r3, #12]
d03e3580:	4798      	blx	r3
d03e3582:	7b20      	ldrb	r0, [r4, #12]
d03e3584:	7b63      	ldrb	r3, [r4, #13]
d03e3586:	463a      	mov	r2, r7
d03e3588:	7ba7      	ldrb	r7, [r4, #14]
d03e358a:	21e6      	movs	r1, #230	; 0xe6
d03e358c:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
d03e3590:	7be3      	ldrb	r3, [r4, #15]
d03e3592:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d03e3596:	201e      	movs	r0, #30
d03e3598:	ea47 6303 	orr.w	r3, r7, r3, lsl #24
d03e359c:	685b      	ldr	r3, [r3, #4]
d03e359e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e35a0:	4798      	blx	r3
d03e35a2:	4945      	ldr	r1, [pc, #276]	; (d03e36b8 <ui_redraw_backbuffer+0x888>)
d03e35a4:	2314      	movs	r3, #20
d03e35a6:	2242      	movs	r2, #66	; 0x42
d03e35a8:	9100      	str	r1, [sp, #0]
d03e35aa:	2046      	movs	r0, #70	; 0x46
d03e35ac:	21e2      	movs	r1, #226	; 0xe2
d03e35ae:	f7fe f8ab 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e35b2:	7b22      	ldrb	r2, [r4, #12]
d03e35b4:	7b63      	ldrb	r3, [r4, #13]
d03e35b6:	21e4      	movs	r1, #228	; 0xe4
d03e35b8:	7ba7      	ldrb	r7, [r4, #14]
d03e35ba:	209a      	movs	r0, #154	; 0x9a
d03e35bc:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03e35c0:	7be3      	ldrb	r3, [r4, #15]
d03e35c2:	ea42 4707 	orr.w	r7, r2, r7, lsl #16
d03e35c6:	4a3d      	ldr	r2, [pc, #244]	; (d03e36bc <ui_redraw_backbuffer+0x88c>)
d03e35c8:	ea47 6303 	orr.w	r3, r7, r3, lsl #24
d03e35cc:	685b      	ldr	r3, [r3, #4]
d03e35ce:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e35d0:	4798      	blx	r3
d03e35d2:	2314      	movs	r3, #20
d03e35d4:	222e      	movs	r2, #46	; 0x2e
d03e35d6:	21e2      	movs	r1, #226	; 0xe2
d03e35d8:	20b8      	movs	r0, #184	; 0xb8
d03e35da:	f8cd 9000 	str.w	r9, [sp]
d03e35de:	f7fe f893 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e35e2:	2314      	movs	r3, #20
d03e35e4:	2222      	movs	r2, #34	; 0x22
d03e35e6:	21e2      	movs	r1, #226	; 0xe2
d03e35e8:	20ea      	movs	r0, #234	; 0xea
d03e35ea:	f8cd 8000 	str.w	r8, [sp]
d03e35ee:	f7fe f88b 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e35f2:	2314      	movs	r3, #20
d03e35f4:	2222      	movs	r2, #34	; 0x22
d03e35f6:	21e2      	movs	r1, #226	; 0xe2
d03e35f8:	f44f 7088 	mov.w	r0, #272	; 0x110
d03e35fc:	9600      	str	r6, [sp, #0]
d03e35fe:	f7fe f883 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e3602:	2314      	movs	r3, #20
d03e3604:	222e      	movs	r2, #46	; 0x2e
d03e3606:	21e2      	movs	r1, #226	; 0xe2
d03e3608:	f44f 709b 	mov.w	r0, #310	; 0x136
d03e360c:	9500      	str	r5, [sp, #0]
d03e360e:	f7fe f87b 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e3612:	492b      	ldr	r1, [pc, #172]	; (d03e36c0 <ui_redraw_backbuffer+0x890>)
d03e3614:	2314      	movs	r3, #20
d03e3616:	222e      	movs	r2, #46	; 0x2e
d03e3618:	9100      	str	r1, [sp, #0]
d03e361a:	2046      	movs	r0, #70	; 0x46
d03e361c:	21fa      	movs	r1, #250	; 0xfa
d03e361e:	f7fe f873 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e3622:	7b21      	ldrb	r1, [r4, #12]
d03e3624:	7b63      	ldrb	r3, [r4, #13]
d03e3626:	2018      	movs	r0, #24
d03e3628:	7ba2      	ldrb	r2, [r4, #14]
d03e362a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e362e:	7be3      	ldrb	r3, [r4, #15]
d03e3630:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3634:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3638:	685b      	ldr	r3, [r3, #4]
d03e363a:	68db      	ldr	r3, [r3, #12]
d03e363c:	4798      	blx	r3
d03e363e:	7b22      	ldrb	r2, [r4, #12]
d03e3640:	7b63      	ldrb	r3, [r4, #13]
d03e3642:	21fc      	movs	r1, #252	; 0xfc
d03e3644:	7ba7      	ldrb	r7, [r4, #14]
d03e3646:	209a      	movs	r0, #154	; 0x9a
d03e3648:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03e364c:	7be3      	ldrb	r3, [r4, #15]
d03e364e:	ea42 4707 	orr.w	r7, r2, r7, lsl #16
d03e3652:	4a1c      	ldr	r2, [pc, #112]	; (d03e36c4 <ui_redraw_backbuffer+0x894>)
d03e3654:	ea47 6303 	orr.w	r3, r7, r3, lsl #24
d03e3658:	685b      	ldr	r3, [r3, #4]
d03e365a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e365c:	4798      	blx	r3
d03e365e:	2314      	movs	r3, #20
d03e3660:	222e      	movs	r2, #46	; 0x2e
d03e3662:	21fa      	movs	r1, #250	; 0xfa
d03e3664:	20b8      	movs	r0, #184	; 0xb8
d03e3666:	f8cd 9000 	str.w	r9, [sp]
d03e366a:	f7fe f84d 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e366e:	2314      	movs	r3, #20
d03e3670:	2222      	movs	r2, #34	; 0x22
d03e3672:	21fa      	movs	r1, #250	; 0xfa
d03e3674:	20ea      	movs	r0, #234	; 0xea
d03e3676:	f8cd 8000 	str.w	r8, [sp]
d03e367a:	f7fe f845 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e367e:	2314      	movs	r3, #20
d03e3680:	2222      	movs	r2, #34	; 0x22
d03e3682:	21fa      	movs	r1, #250	; 0xfa
d03e3684:	f44f 7088 	mov.w	r0, #272	; 0x110
d03e3688:	9600      	str	r6, [sp, #0]
d03e368a:	f7fe f83d 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e368e:	2314      	movs	r3, #20
d03e3690:	222e      	movs	r2, #46	; 0x2e
d03e3692:	21fa      	movs	r1, #250	; 0xfa
d03e3694:	f44f 709b 	mov.w	r0, #310	; 0x136
d03e3698:	9500      	str	r5, [sp, #0]
d03e369a:	f7fe f835 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e369e:	e01c      	b.n	d03e36da <ui_redraw_backbuffer+0x8aa>
d03e36a0:	d03e91e4 	.word	0xd03e91e4
d03e36a4:	d03e91e8 	.word	0xd03e91e8
d03e36a8:	d03ea7fd 	.word	0xd03ea7fd
d03e36ac:	d03e944c 	.word	0xd03e944c
d03e36b0:	d03e9284 	.word	0xd03e9284
d03e36b4:	d03e9468 	.word	0xd03e9468
d03e36b8:	d03e9458 	.word	0xd03e9458
d03e36bc:	d03e9460 	.word	0xd03e9460
d03e36c0:	d03e946c 	.word	0xd03e946c
d03e36c4:	d03e9470 	.word	0xd03e9470
d03e36c8:	d03e9464 	.word	0xd03e9464
d03e36cc:	d03e9280 	.word	0xd03e9280
d03e36d0:	2300      	movs	r3, #0
d03e36d2:	f888 3000 	strb.w	r3, [r8]
d03e36d6:	f7fe fb0f 	bl	d03e1cf8 <ui_draw_home>
d03e36da:	487b      	ldr	r0, [pc, #492]	; (d03e38c8 <ui_redraw_backbuffer+0xa98>)
d03e36dc:	2320      	movs	r3, #32
d03e36de:	2246      	movs	r2, #70	; 0x46
d03e36e0:	f44f 718e 	mov.w	r1, #284	; 0x11c
d03e36e4:	9000      	str	r0, [sp, #0]
d03e36e6:	2008      	movs	r0, #8
d03e36e8:	f7fe f80e 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e36ec:	4977      	ldr	r1, [pc, #476]	; (d03e38cc <ui_redraw_backbuffer+0xa9c>)
d03e36ee:	2320      	movs	r3, #32
d03e36f0:	2236      	movs	r2, #54	; 0x36
d03e36f2:	f44f 70b0 	mov.w	r0, #352	; 0x160
d03e36f6:	9100      	str	r1, [sp, #0]
d03e36f8:	f44f 718e 	mov.w	r1, #284	; 0x11c
d03e36fc:	4e74      	ldr	r6, [pc, #464]	; (d03e38d0 <ui_redraw_backbuffer+0xaa0>)
d03e36fe:	f7fe f803 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e3702:	4974      	ldr	r1, [pc, #464]	; (d03e38d4 <ui_redraw_backbuffer+0xaa4>)
d03e3704:	2320      	movs	r3, #32
d03e3706:	2236      	movs	r2, #54	; 0x36
d03e3708:	9100      	str	r1, [sp, #0]
d03e370a:	f44f 70ce 	mov.w	r0, #412	; 0x19c
d03e370e:	f44f 718e 	mov.w	r1, #284	; 0x11c
d03e3712:	f7fd fff9 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e3716:	7833      	ldrb	r3, [r6, #0]
d03e3718:	2b00      	cmp	r3, #0
d03e371a:	f000 80c0 	beq.w	d03e389e <ui_redraw_backbuffer+0xa6e>
d03e371e:	7b25      	ldrb	r5, [r4, #12]
d03e3720:	201a      	movs	r0, #26
d03e3722:	7b61      	ldrb	r1, [r4, #13]
d03e3724:	7ba2      	ldrb	r2, [r4, #14]
d03e3726:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e372a:	7be3      	ldrb	r3, [r4, #15]
d03e372c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3730:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3734:	685b      	ldr	r3, [r3, #4]
d03e3736:	68db      	ldr	r3, [r3, #12]
d03e3738:	4798      	blx	r3
d03e373a:	7b21      	ldrb	r1, [r4, #12]
d03e373c:	7b60      	ldrb	r0, [r4, #13]
d03e373e:	236c      	movs	r3, #108	; 0x6c
d03e3740:	7ba7      	ldrb	r7, [r4, #14]
d03e3742:	f44f 7290 	mov.w	r2, #288	; 0x120
d03e3746:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d03e374a:	7be5      	ldrb	r5, [r4, #15]
d03e374c:	2170      	movs	r1, #112	; 0x70
d03e374e:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d03e3752:	2060      	movs	r0, #96	; 0x60
d03e3754:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d03e3758:	686d      	ldr	r5, [r5, #4]
d03e375a:	686d      	ldr	r5, [r5, #4]
d03e375c:	47a8      	blx	r5
d03e375e:	7b25      	ldrb	r5, [r4, #12]
d03e3760:	7b61      	ldrb	r1, [r4, #13]
d03e3762:	201f      	movs	r0, #31
d03e3764:	7ba2      	ldrb	r2, [r4, #14]
d03e3766:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e376a:	7be3      	ldrb	r3, [r4, #15]
d03e376c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3770:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3774:	685b      	ldr	r3, [r3, #4]
d03e3776:	68db      	ldr	r3, [r3, #12]
d03e3778:	4798      	blx	r3
d03e377a:	7b21      	ldrb	r1, [r4, #12]
d03e377c:	7b60      	ldrb	r0, [r4, #13]
d03e377e:	236a      	movs	r3, #106	; 0x6a
d03e3780:	7ba7      	ldrb	r7, [r4, #14]
d03e3782:	f44f 728f 	mov.w	r2, #286	; 0x11e
d03e3786:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d03e378a:	7be5      	ldrb	r5, [r4, #15]
d03e378c:	2171      	movs	r1, #113	; 0x71
d03e378e:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d03e3792:	2061      	movs	r0, #97	; 0x61
d03e3794:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d03e3798:	686d      	ldr	r5, [r5, #4]
d03e379a:	686d      	ldr	r5, [r5, #4]
d03e379c:	47a8      	blx	r5
d03e379e:	7b25      	ldrb	r5, [r4, #12]
d03e37a0:	7b61      	ldrb	r1, [r4, #13]
d03e37a2:	2014      	movs	r0, #20
d03e37a4:	7ba2      	ldrb	r2, [r4, #14]
d03e37a6:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e37aa:	7be3      	ldrb	r3, [r4, #15]
d03e37ac:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e37b0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e37b4:	685b      	ldr	r3, [r3, #4]
d03e37b6:	68db      	ldr	r3, [r3, #12]
d03e37b8:	4798      	blx	r3
d03e37ba:	7b21      	ldrb	r1, [r4, #12]
d03e37bc:	7b60      	ldrb	r0, [r4, #13]
d03e37be:	2314      	movs	r3, #20
d03e37c0:	7ba7      	ldrb	r7, [r4, #14]
d03e37c2:	f44f 728f 	mov.w	r2, #286	; 0x11e
d03e37c6:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d03e37ca:	7be5      	ldrb	r5, [r4, #15]
d03e37cc:	2171      	movs	r1, #113	; 0x71
d03e37ce:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d03e37d2:	2061      	movs	r0, #97	; 0x61
d03e37d4:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d03e37d8:	686d      	ldr	r5, [r5, #4]
d03e37da:	686d      	ldr	r5, [r5, #4]
d03e37dc:	47a8      	blx	r5
d03e37de:	7b25      	ldrb	r5, [r4, #12]
d03e37e0:	7b61      	ldrb	r1, [r4, #13]
d03e37e2:	201e      	movs	r0, #30
d03e37e4:	7ba2      	ldrb	r2, [r4, #14]
d03e37e6:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e37ea:	7be3      	ldrb	r3, [r4, #15]
d03e37ec:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e37f0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e37f4:	685b      	ldr	r3, [r3, #4]
d03e37f6:	68db      	ldr	r3, [r3, #12]
d03e37f8:	4798      	blx	r3
d03e37fa:	7b22      	ldrb	r2, [r4, #12]
d03e37fc:	7b67      	ldrb	r7, [r4, #13]
d03e37fe:	2175      	movs	r1, #117	; 0x75
d03e3800:	7ba5      	ldrb	r5, [r4, #14]
d03e3802:	206e      	movs	r0, #110	; 0x6e
d03e3804:	ea42 2707 	orr.w	r7, r2, r7, lsl #8
d03e3808:	7be3      	ldrb	r3, [r4, #15]
d03e380a:	4a33      	ldr	r2, [pc, #204]	; (d03e38d8 <ui_redraw_backbuffer+0xaa8>)
d03e380c:	ea47 4505 	orr.w	r5, r7, r5, lsl #16
d03e3810:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e3814:	685b      	ldr	r3, [r3, #4]
d03e3816:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3818:	4798      	blx	r3
d03e381a:	7b25      	ldrb	r5, [r4, #12]
d03e381c:	7b61      	ldrb	r1, [r4, #13]
d03e381e:	2019      	movs	r0, #25
d03e3820:	7ba2      	ldrb	r2, [r4, #14]
d03e3822:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e3826:	7be3      	ldrb	r3, [r4, #15]
d03e3828:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e382c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3830:	685b      	ldr	r3, [r3, #4]
d03e3832:	68db      	ldr	r3, [r3, #12]
d03e3834:	4798      	blx	r3
d03e3836:	7833      	ldrb	r3, [r6, #0]
d03e3838:	2b01      	cmp	r3, #1
d03e383a:	d11f      	bne.n	d03e387c <ui_redraw_backbuffer+0xa4c>
d03e383c:	7b26      	ldrb	r6, [r4, #12]
d03e383e:	2192      	movs	r1, #146	; 0x92
d03e3840:	7b62      	ldrb	r2, [r4, #13]
d03e3842:	2074      	movs	r0, #116	; 0x74
d03e3844:	7ba5      	ldrb	r5, [r4, #14]
d03e3846:	ea46 2202 	orr.w	r2, r6, r2, lsl #8
d03e384a:	7be3      	ldrb	r3, [r4, #15]
d03e384c:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d03e3850:	4a22      	ldr	r2, [pc, #136]	; (d03e38dc <ui_redraw_backbuffer+0xaac>)
d03e3852:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e3856:	685b      	ldr	r3, [r3, #4]
d03e3858:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e385a:	4798      	blx	r3
d03e385c:	7b26      	ldrb	r6, [r4, #12]
d03e385e:	7b62      	ldrb	r2, [r4, #13]
d03e3860:	21a2      	movs	r1, #162	; 0xa2
d03e3862:	7ba5      	ldrb	r5, [r4, #14]
d03e3864:	2074      	movs	r0, #116	; 0x74
d03e3866:	ea46 2202 	orr.w	r2, r6, r2, lsl #8
d03e386a:	7be3      	ldrb	r3, [r4, #15]
d03e386c:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d03e3870:	4a1b      	ldr	r2, [pc, #108]	; (d03e38e0 <ui_redraw_backbuffer+0xab0>)
d03e3872:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e3876:	685b      	ldr	r3, [r3, #4]
d03e3878:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e387a:	4798      	blx	r3
d03e387c:	4819      	ldr	r0, [pc, #100]	; (d03e38e4 <ui_redraw_backbuffer+0xab4>)
d03e387e:	231c      	movs	r3, #28
d03e3880:	225c      	movs	r2, #92	; 0x5c
d03e3882:	21b2      	movs	r1, #178	; 0xb2
d03e3884:	9000      	str	r0, [sp, #0]
d03e3886:	2084      	movs	r0, #132	; 0x84
d03e3888:	f7fd ff3e 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e388c:	4916      	ldr	r1, [pc, #88]	; (d03e38e8 <ui_redraw_backbuffer+0xab8>)
d03e388e:	231c      	movs	r3, #28
d03e3890:	225c      	movs	r2, #92	; 0x5c
d03e3892:	9100      	str	r1, [sp, #0]
d03e3894:	f44f 7080 	mov.w	r0, #256	; 0x100
d03e3898:	21b2      	movs	r1, #178	; 0xb2
d03e389a:	f7fd ff35 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e389e:	7b23      	ldrb	r3, [r4, #12]
d03e38a0:	ee18 0a10 	vmov	r0, s16
d03e38a4:	7b62      	ldrb	r2, [r4, #13]
d03e38a6:	7ba1      	ldrb	r1, [r4, #14]
d03e38a8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e38ac:	7be2      	ldrb	r2, [r4, #15]
d03e38ae:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e38b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e38b6:	681b      	ldr	r3, [r3, #0]
d03e38b8:	699b      	ldr	r3, [r3, #24]
d03e38ba:	4798      	blx	r3
d03e38bc:	b023      	add	sp, #140	; 0x8c
d03e38be:	ecbd 8b02 	vpop	{d8}
d03e38c2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e38c6:	bf00      	nop
d03e38c8:	d03e9480 	.word	0xd03e9480
d03e38cc:	d03e9488 	.word	0xd03e9488
d03e38d0:	d03ea631 	.word	0xd03ea631
d03e38d4:	d03e9490 	.word	0xd03e9490
d03e38d8:	d03e9498 	.word	0xd03e9498
d03e38dc:	d03e94a8 	.word	0xd03e94a8
d03e38e0:	d03e94c4 	.word	0xd03e94c4
d03e38e4:	d03e94e0 	.word	0xd03e94e0
d03e38e8:	d03e94e8 	.word	0xd03e94e8
d03e38ec:	f8df 822c 	ldr.w	r8, [pc, #556]	; d03e3b1c <ui_redraw_backbuffer+0xcec>
d03e38f0:	23c4      	movs	r3, #196	; 0xc4
d03e38f2:	487e      	ldr	r0, [pc, #504]	; (d03e3aec <ui_redraw_backbuffer+0xcbc>)
d03e38f4:	f44f 72e2 	mov.w	r2, #452	; 0x1c4
d03e38f8:	4f7d      	ldr	r7, [pc, #500]	; (d03e3af0 <ui_redraw_backbuffer+0xcc0>)
d03e38fa:	214c      	movs	r1, #76	; 0x4c
d03e38fc:	f898 5000 	ldrb.w	r5, [r8]
d03e3900:	267c      	movs	r6, #124	; 0x7c
d03e3902:	9000      	str	r0, [sp, #0]
d03e3904:	200a      	movs	r0, #10
d03e3906:	9705      	str	r7, [sp, #20]
d03e3908:	f7fe f99a 	bl	d03e1c40 <ui_panel>
d03e390c:	f898 c000 	ldrb.w	ip, [r8]
d03e3910:	231a      	movs	r3, #26
d03e3912:	4978      	ldr	r1, [pc, #480]	; (d03e3af4 <ui_redraw_backbuffer+0xcc4>)
d03e3914:	2260      	movs	r2, #96	; 0x60
d03e3916:	fabc fc8c 	clz	ip, ip
d03e391a:	4618      	mov	r0, r3
d03e391c:	9100      	str	r1, [sp, #0]
d03e391e:	2158      	movs	r1, #88	; 0x58
d03e3920:	ea4f 1c5c 	mov.w	ip, ip, lsr #5
d03e3924:	af0a      	add	r7, sp, #40	; 0x28
d03e3926:	00ad      	lsls	r5, r5, #2
d03e3928:	f8df a1ec 	ldr.w	sl, [pc, #492]	; d03e3b18 <ui_redraw_backbuffer+0xce8>
d03e392c:	f8cd c004 	str.w	ip, [sp, #4]
d03e3930:	ee08 7a90 	vmov	s17, r7
d03e3934:	f7fe f812 	bl	d03e195c <ui_button_draw>
d03e3938:	f898 0000 	ldrb.w	r0, [r8]
d03e393c:	496e      	ldr	r1, [pc, #440]	; (d03e3af8 <ui_redraw_backbuffer+0xcc8>)
d03e393e:	231a      	movs	r3, #26
d03e3940:	f1a0 0001 	sub.w	r0, r0, #1
d03e3944:	2260      	movs	r2, #96	; 0x60
d03e3946:	9100      	str	r1, [sp, #0]
d03e3948:	2158      	movs	r1, #88	; 0x58
d03e394a:	fab0 f080 	clz	r0, r0
d03e394e:	b2ed      	uxtb	r5, r5
d03e3950:	f8df b1cc 	ldr.w	fp, [pc, #460]	; d03e3b20 <ui_redraw_backbuffer+0xcf0>
d03e3954:	0940      	lsrs	r0, r0, #5
d03e3956:	9001      	str	r0, [sp, #4]
d03e3958:	2082      	movs	r0, #130	; 0x82
d03e395a:	f7fd ffff 	bl	d03e195c <ui_button_draw>
d03e395e:	f898 0000 	ldrb.w	r0, [r8]
d03e3962:	4966      	ldr	r1, [pc, #408]	; (d03e3afc <ui_redraw_backbuffer+0xccc>)
d03e3964:	231a      	movs	r3, #26
d03e3966:	f1a0 0002 	sub.w	r0, r0, #2
d03e396a:	2260      	movs	r2, #96	; 0x60
d03e396c:	9100      	str	r1, [sp, #0]
d03e396e:	2158      	movs	r1, #88	; 0x58
d03e3970:	fab0 f080 	clz	r0, r0
d03e3974:	0940      	lsrs	r0, r0, #5
d03e3976:	9001      	str	r0, [sp, #4]
d03e3978:	20ea      	movs	r0, #234	; 0xea
d03e397a:	f7fd ffef 	bl	d03e195c <ui_button_draw>
d03e397e:	f898 0000 	ldrb.w	r0, [r8]
d03e3982:	495f      	ldr	r1, [pc, #380]	; (d03e3b00 <ui_redraw_backbuffer+0xcd0>)
d03e3984:	231a      	movs	r3, #26
d03e3986:	f1a0 0003 	sub.w	r0, r0, #3
d03e398a:	2260      	movs	r2, #96	; 0x60
d03e398c:	9100      	str	r1, [sp, #0]
d03e398e:	2158      	movs	r1, #88	; 0x58
d03e3990:	fab0 f080 	clz	r0, r0
d03e3994:	0940      	lsrs	r0, r0, #5
d03e3996:	9001      	str	r0, [sp, #4]
d03e3998:	f44f 70a9 	mov.w	r0, #338	; 0x152
d03e399c:	f7fd ffde 	bl	d03e195c <ui_button_draw>
d03e39a0:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e39a4:	7b61      	ldrb	r1, [r4, #13]
d03e39a6:	201d      	movs	r0, #29
d03e39a8:	7ba2      	ldrb	r2, [r4, #14]
d03e39aa:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e39ae:	7be3      	ldrb	r3, [r4, #15]
d03e39b0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e39b4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e39b8:	685b      	ldr	r3, [r3, #4]
d03e39ba:	68db      	ldr	r3, [r3, #12]
d03e39bc:	4798      	blx	r3
d03e39be:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e39c2:	7b62      	ldrb	r2, [r4, #13]
d03e39c4:	2174      	movs	r1, #116	; 0x74
d03e39c6:	7ba0      	ldrb	r0, [r4, #14]
d03e39c8:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d03e39cc:	7be3      	ldrb	r3, [r4, #15]
d03e39ce:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d03e39d2:	4a4c      	ldr	r2, [pc, #304]	; (d03e3b04 <ui_redraw_backbuffer+0xcd4>)
d03e39d4:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d03e39d8:	2036      	movs	r0, #54	; 0x36
d03e39da:	685b      	ldr	r3, [r3, #4]
d03e39dc:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e39de:	4798      	blx	r3
d03e39e0:	f89a 3000 	ldrb.w	r3, [sl]
d03e39e4:	f105 0901 	add.w	r9, r5, #1
d03e39e8:	9a05      	ldr	r2, [sp, #20]
d03e39ea:	42ab      	cmp	r3, r5
d03e39ec:	f812 8005 	ldrb.w	r8, [r2, r5]
d03e39f0:	d125      	bne.n	d03e3a3e <ui_redraw_backbuffer+0xc0e>
d03e39f2:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e39f6:	201c      	movs	r0, #28
d03e39f8:	7b61      	ldrb	r1, [r4, #13]
d03e39fa:	7ba2      	ldrb	r2, [r4, #14]
d03e39fc:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e3a00:	7be3      	ldrb	r3, [r4, #15]
d03e3a02:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3a06:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3a0a:	685b      	ldr	r3, [r3, #4]
d03e3a0c:	68db      	ldr	r3, [r3, #12]
d03e3a0e:	4798      	blx	r3
d03e3a10:	7b22      	ldrb	r2, [r4, #12]
d03e3a12:	7b60      	ldrb	r0, [r4, #13]
d03e3a14:	1f71      	subs	r1, r6, #5
d03e3a16:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e3a1a:	2320      	movs	r3, #32
d03e3a1c:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d03e3a20:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e3a24:	b209      	sxth	r1, r1
d03e3a26:	f44f 72d2 	mov.w	r2, #420	; 0x1a4
d03e3a2a:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d03e3a2e:	2018      	movs	r0, #24
d03e3a30:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d03e3a34:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e3a38:	f8dc 7004 	ldr.w	r7, [ip, #4]
d03e3a3c:	47b8      	blx	r7
d03e3a3e:	f1b8 0f80 	cmp.w	r8, #128	; 0x80
d03e3a42:	4b31      	ldr	r3, [pc, #196]	; (d03e3b08 <ui_redraw_backbuffer+0xcd8>)
d03e3a44:	d802      	bhi.n	d03e3a4c <ui_redraw_backbuffer+0xc1c>
d03e3a46:	4b31      	ldr	r3, [pc, #196]	; (d03e3b0c <ui_redraw_backbuffer+0xcdc>)
d03e3a48:	f853 3028 	ldr.w	r3, [r3, r8, lsl #2]
d03e3a4c:	465a      	mov	r2, fp
d03e3a4e:	2160      	movs	r1, #96	; 0x60
d03e3a50:	9301      	str	r3, [sp, #4]
d03e3a52:	ee18 0a90 	vmov	r0, s17
d03e3a56:	464b      	mov	r3, r9
d03e3a58:	f8cd 8000 	str.w	r8, [sp]
d03e3a5c:	f004 f99a 	bl	d03e7d94 <sniprintf>
d03e3a60:	7b20      	ldrb	r0, [r4, #12]
d03e3a62:	7b61      	ldrb	r1, [r4, #13]
d03e3a64:	2d09      	cmp	r5, #9
d03e3a66:	7ba2      	ldrb	r2, [r4, #14]
d03e3a68:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e3a6c:	7be3      	ldrb	r3, [r4, #15]
d03e3a6e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3a72:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3a76:	685b      	ldr	r3, [r3, #4]
d03e3a78:	68db      	ldr	r3, [r3, #12]
d03e3a7a:	f000 8400 	beq.w	d03e427e <ui_redraw_backbuffer+0x144e>
d03e3a7e:	f89a 0000 	ldrb.w	r0, [sl]
d03e3a82:	42a8      	cmp	r0, r5
d03e3a84:	bf0c      	ite	eq
d03e3a86:	200f      	moveq	r0, #15
d03e3a88:	2019      	movne	r0, #25
d03e3a8a:	4798      	blx	r3
d03e3a8c:	7b20      	ldrb	r0, [r4, #12]
d03e3a8e:	f894 c00d 	ldrb.w	ip, [r4, #13]
d03e3a92:	4631      	mov	r1, r6
d03e3a94:	f894 800e 	ldrb.w	r8, [r4, #14]
d03e3a98:	ee18 2a90 	vmov	r2, s17
d03e3a9c:	ea40 2e0c 	orr.w	lr, r0, ip, lsl #8
d03e3aa0:	7be3      	ldrb	r3, [r4, #15]
d03e3aa2:	2034      	movs	r0, #52	; 0x34
d03e3aa4:	fa5f f589 	uxtb.w	r5, r9
d03e3aa8:	ea4e 4c08 	orr.w	ip, lr, r8, lsl #16
d03e3aac:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d03e3ab0:	685b      	ldr	r3, [r3, #4]
d03e3ab2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3ab4:	4798      	blx	r3
d03e3ab6:	1f31      	subs	r1, r6, #4
d03e3ab8:	4b15      	ldr	r3, [pc, #84]	; (d03e3b10 <ui_redraw_backbuffer+0xce0>)
d03e3aba:	222a      	movs	r2, #42	; 0x2a
d03e3abc:	b209      	sxth	r1, r1
d03e3abe:	f44f 70ab 	mov.w	r0, #342	; 0x156
d03e3ac2:	9300      	str	r3, [sp, #0]
d03e3ac4:	231e      	movs	r3, #30
d03e3ac6:	9104      	str	r1, [sp, #16]
d03e3ac8:	f7fd fe1e 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e3acc:	4b11      	ldr	r3, [pc, #68]	; (d03e3b14 <ui_redraw_backbuffer+0xce4>)
d03e3ace:	3624      	adds	r6, #36	; 0x24
d03e3ad0:	9904      	ldr	r1, [sp, #16]
d03e3ad2:	222a      	movs	r2, #42	; 0x2a
d03e3ad4:	9300      	str	r3, [sp, #0]
d03e3ad6:	f44f 70c6 	mov.w	r0, #396	; 0x18c
d03e3ada:	231e      	movs	r3, #30
d03e3adc:	f7fd fe14 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e3ae0:	f5b6 7f86 	cmp.w	r6, #268	; 0x10c
d03e3ae4:	f47f af7c 	bne.w	d03e39e0 <ui_redraw_backbuffer+0xbb0>
d03e3ae8:	e5f7      	b.n	d03e36da <ui_redraw_backbuffer+0x8aa>
d03e3aea:	bf00      	nop
d03e3aec:	d03e9218 	.word	0xd03e9218
d03e3af0:	d03ea3a4 	.word	0xd03ea3a4
d03e3af4:	d03e922c 	.word	0xd03e922c
d03e3af8:	d03e9234 	.word	0xd03e9234
d03e3afc:	d03e923c 	.word	0xd03e923c
d03e3b00:	d03e9244 	.word	0xd03e9244
d03e3b04:	d03e9250 	.word	0xd03e9250
d03e3b08:	d03e90cc 	.word	0xd03e90cc
d03e3b0c:	d03e99a4 	.word	0xd03e99a4
d03e3b10:	d03e9280 	.word	0xd03e9280
d03e3b14:	d03e9284 	.word	0xd03e9284
d03e3b18:	d03ea645 	.word	0xd03ea645
d03e3b1c:	d03ea630 	.word	0xd03ea630
d03e3b20:	d03e9268 	.word	0xd03e9268
d03e3b24:	49c8      	ldr	r1, [pc, #800]	; (d03e3e48 <ui_redraw_backbuffer+0x1018>)
d03e3b26:	2334      	movs	r3, #52	; 0x34
d03e3b28:	4dc8      	ldr	r5, [pc, #800]	; (d03e3e4c <ui_redraw_backbuffer+0x101c>)
d03e3b2a:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03e3b2e:	4ec8      	ldr	r6, [pc, #800]	; (d03e3e50 <ui_redraw_backbuffer+0x1020>)
d03e3b30:	2010      	movs	r0, #16
d03e3b32:	9100      	str	r1, [sp, #0]
d03e3b34:	214e      	movs	r1, #78	; 0x4e
d03e3b36:	7836      	ldrb	r6, [r6, #0]
d03e3b38:	f7fe f882 	bl	d03e1c40 <ui_panel>
d03e3b3c:	882b      	ldrh	r3, [r5, #0]
d03e3b3e:	2160      	movs	r1, #96	; 0x60
d03e3b40:	4ac4      	ldr	r2, [pc, #784]	; (d03e3e54 <ui_redraw_backbuffer+0x1024>)
d03e3b42:	a80a      	add	r0, sp, #40	; 0x28
d03e3b44:	f004 f926 	bl	d03e7d94 <sniprintf>
d03e3b48:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e3b4c:	7b61      	ldrb	r1, [r4, #13]
d03e3b4e:	201e      	movs	r0, #30
d03e3b50:	7ba2      	ldrb	r2, [r4, #14]
d03e3b52:	f04f 0bee 	mov.w	fp, #238	; 0xee
d03e3b56:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e3b5a:	7be3      	ldrb	r3, [r4, #15]
d03e3b5c:	f8df 9314 	ldr.w	r9, [pc, #788]	; d03e3e74 <ui_redraw_backbuffer+0x1044>
d03e3b60:	27ca      	movs	r7, #202	; 0xca
d03e3b62:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3b66:	f8df 8310 	ldr.w	r8, [pc, #784]	; d03e3e78 <ui_redraw_backbuffer+0x1048>
d03e3b6a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3b6e:	685b      	ldr	r3, [r3, #4]
d03e3b70:	68db      	ldr	r3, [r3, #12]
d03e3b72:	4798      	blx	r3
d03e3b74:	f894 e00c 	ldrb.w	lr, [r4, #12]
d03e3b78:	f894 c00d 	ldrb.w	ip, [r4, #13]
d03e3b7c:	aa0a      	add	r2, sp, #40	; 0x28
d03e3b7e:	7ba3      	ldrb	r3, [r4, #14]
d03e3b80:	2160      	movs	r1, #96	; 0x60
d03e3b82:	ea4e 200c 	orr.w	r0, lr, ip, lsl #8
d03e3b86:	f894 e00f 	ldrb.w	lr, [r4, #15]
d03e3b8a:	ea40 4c03 	orr.w	ip, r0, r3, lsl #16
d03e3b8e:	2020      	movs	r0, #32
d03e3b90:	ea4c 630e 	orr.w	r3, ip, lr, lsl #24
d03e3b94:	685b      	ldr	r3, [r3, #4]
d03e3b96:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3b98:	4798      	blx	r3
d03e3b9a:	7b22      	ldrb	r2, [r4, #12]
d03e3b9c:	7b63      	ldrb	r3, [r4, #13]
d03e3b9e:	201a      	movs	r0, #26
d03e3ba0:	7ba1      	ldrb	r1, [r4, #14]
d03e3ba2:	ea42 2303 	orr.w	r3, r2, r3, lsl #8
d03e3ba6:	7be2      	ldrb	r2, [r4, #15]
d03e3ba8:	882d      	ldrh	r5, [r5, #0]
d03e3baa:	ea43 4c01 	orr.w	ip, r3, r1, lsl #16
d03e3bae:	49aa      	ldr	r1, [pc, #680]	; (d03e3e58 <ui_redraw_backbuffer+0x1028>)
d03e3bb0:	fb0b f505 	mul.w	r5, fp, r5
d03e3bb4:	ea4c 6302 	orr.w	r3, ip, r2, lsl #24
d03e3bb8:	fba1 2505 	umull	r2, r5, r1, r5
d03e3bbc:	685b      	ldr	r3, [r3, #4]
d03e3bbe:	096d      	lsrs	r5, r5, #5
d03e3bc0:	68db      	ldr	r3, [r3, #12]
d03e3bc2:	4798      	blx	r3
d03e3bc4:	f894 e00c 	ldrb.w	lr, [r4, #12]
d03e3bc8:	7b60      	ldrb	r0, [r4, #13]
d03e3bca:	230a      	movs	r3, #10
d03e3bcc:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e3bd0:	22f0      	movs	r2, #240	; 0xf0
d03e3bd2:	ea4e 2100 	orr.w	r1, lr, r0, lsl #8
d03e3bd6:	f894 e00f 	ldrb.w	lr, [r4, #15]
d03e3bda:	ea41 400c 	orr.w	r0, r1, ip, lsl #16
d03e3bde:	2162      	movs	r1, #98	; 0x62
d03e3be0:	ea40 6c0e 	orr.w	ip, r0, lr, lsl #24
d03e3be4:	205c      	movs	r0, #92	; 0x5c
d03e3be6:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e3bea:	f8dc a004 	ldr.w	sl, [ip, #4]
d03e3bee:	47d0      	blx	sl
d03e3bf0:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e3bf4:	7b61      	ldrb	r1, [r4, #13]
d03e3bf6:	2011      	movs	r0, #17
d03e3bf8:	7ba2      	ldrb	r2, [r4, #14]
d03e3bfa:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e3bfe:	7be3      	ldrb	r3, [r4, #15]
d03e3c00:	f8df a278 	ldr.w	sl, [pc, #632]	; d03e3e7c <ui_redraw_backbuffer+0x104c>
d03e3c04:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3c08:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3c0c:	685b      	ldr	r3, [r3, #4]
d03e3c0e:	68db      	ldr	r3, [r3, #12]
d03e3c10:	4798      	blx	r3
d03e3c12:	f894 e00c 	ldrb.w	lr, [r4, #12]
d03e3c16:	7b60      	ldrb	r0, [r4, #13]
d03e3c18:	465a      	mov	r2, fp
d03e3c1a:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e3c1e:	2308      	movs	r3, #8
d03e3c20:	ea4e 2100 	orr.w	r1, lr, r0, lsl #8
d03e3c24:	f894 e00f 	ldrb.w	lr, [r4, #15]
d03e3c28:	ea41 400c 	orr.w	r0, r1, ip, lsl #16
d03e3c2c:	2163      	movs	r1, #99	; 0x63
d03e3c2e:	ea40 6c0e 	orr.w	ip, r0, lr, lsl #24
d03e3c32:	205d      	movs	r0, #93	; 0x5d
d03e3c34:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e3c38:	f8dc b004 	ldr.w	fp, [ip, #4]
d03e3c3c:	47d8      	blx	fp
d03e3c3e:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e3c42:	7b61      	ldrb	r1, [r4, #13]
d03e3c44:	201d      	movs	r0, #29
d03e3c46:	7ba2      	ldrb	r2, [r4, #14]
d03e3c48:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e3c4c:	7be3      	ldrb	r3, [r4, #15]
d03e3c4e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3c52:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3c56:	685b      	ldr	r3, [r3, #4]
d03e3c58:	68db      	ldr	r3, [r3, #12]
d03e3c5a:	4798      	blx	r3
d03e3c5c:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e3c60:	7b60      	ldrb	r0, [r4, #13]
d03e3c62:	b22a      	sxth	r2, r5
d03e3c64:	7ba5      	ldrb	r5, [r4, #14]
d03e3c66:	2308      	movs	r3, #8
d03e3c68:	ea4c 2100 	orr.w	r1, ip, r0, lsl #8
d03e3c6c:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e3c70:	ea41 4005 	orr.w	r0, r1, r5, lsl #16
d03e3c74:	2163      	movs	r1, #99	; 0x63
d03e3c76:	ea40 650c 	orr.w	r5, r0, ip, lsl #24
d03e3c7a:	205d      	movs	r0, #93	; 0x5d
d03e3c7c:	686d      	ldr	r5, [r5, #4]
d03e3c7e:	686d      	ldr	r5, [r5, #4]
d03e3c80:	47a8      	blx	r5
d03e3c82:	2316      	movs	r3, #22
d03e3c84:	2222      	movs	r2, #34	; 0x22
d03e3c86:	2158      	movs	r1, #88	; 0x58
d03e3c88:	f44f 70b2 	mov.w	r0, #356	; 0x164
d03e3c8c:	f8cd 9000 	str.w	r9, [sp]
d03e3c90:	f7fd fd3a 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e3c94:	2316      	movs	r3, #22
d03e3c96:	2222      	movs	r2, #34	; 0x22
d03e3c98:	2158      	movs	r1, #88	; 0x58
d03e3c9a:	f44f 70c7 	mov.w	r0, #398	; 0x18e
d03e3c9e:	f8cd 8000 	str.w	r8, [sp]
d03e3ca2:	f7fd fd31 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e3ca6:	496d      	ldr	r1, [pc, #436]	; (d03e3e5c <ui_redraw_backbuffer+0x102c>)
d03e3ca8:	2334      	movs	r3, #52	; 0x34
d03e3caa:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03e3cae:	2010      	movs	r0, #16
d03e3cb0:	9100      	str	r1, [sp, #0]
d03e3cb2:	2184      	movs	r1, #132	; 0x84
d03e3cb4:	f7fd ffc4 	bl	d03e1c40 <ui_panel>
d03e3cb8:	4b69      	ldr	r3, [pc, #420]	; (d03e3e60 <ui_redraw_backbuffer+0x1030>)
d03e3cba:	2160      	movs	r1, #96	; 0x60
d03e3cbc:	a80a      	add	r0, sp, #40	; 0x28
d03e3cbe:	5d9a      	ldrb	r2, [r3, r6]
d03e3cc0:	1c73      	adds	r3, r6, #1
d03e3cc2:	9200      	str	r2, [sp, #0]
d03e3cc4:	4a67      	ldr	r2, [pc, #412]	; (d03e3e64 <ui_redraw_backbuffer+0x1034>)
d03e3cc6:	f004 f865 	bl	d03e7d94 <sniprintf>
d03e3cca:	7b25      	ldrb	r5, [r4, #12]
d03e3ccc:	7b61      	ldrb	r1, [r4, #13]
d03e3cce:	201e      	movs	r0, #30
d03e3cd0:	7ba2      	ldrb	r2, [r4, #14]
d03e3cd2:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e3cd6:	7be3      	ldrb	r3, [r4, #15]
d03e3cd8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3cdc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3ce0:	685b      	ldr	r3, [r3, #4]
d03e3ce2:	68db      	ldr	r3, [r3, #12]
d03e3ce4:	4798      	blx	r3
d03e3ce6:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e3cea:	7b65      	ldrb	r5, [r4, #13]
d03e3cec:	aa0a      	add	r2, sp, #40	; 0x28
d03e3cee:	7ba3      	ldrb	r3, [r4, #14]
d03e3cf0:	2196      	movs	r1, #150	; 0x96
d03e3cf2:	ea4c 2005 	orr.w	r0, ip, r5, lsl #8
d03e3cf6:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e3cfa:	ea40 4503 	orr.w	r5, r0, r3, lsl #16
d03e3cfe:	2020      	movs	r0, #32
d03e3d00:	ea45 630c 	orr.w	r3, r5, ip, lsl #24
d03e3d04:	685b      	ldr	r3, [r3, #4]
d03e3d06:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3d08:	4798      	blx	r3
d03e3d0a:	f894 e00c 	ldrb.w	lr, [r4, #12]
d03e3d0e:	7b62      	ldrb	r2, [r4, #13]
d03e3d10:	201a      	movs	r0, #26
d03e3d12:	4b53      	ldr	r3, [pc, #332]	; (d03e3e60 <ui_redraw_backbuffer+0x1030>)
d03e3d14:	ea4e 2102 	orr.w	r1, lr, r2, lsl #8
d03e3d18:	7ba2      	ldrb	r2, [r4, #14]
d03e3d1a:	f813 c006 	ldrb.w	ip, [r3, r6]
d03e3d1e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3d22:	7be3      	ldrb	r3, [r4, #15]
d03e3d24:	fb1c fc07 	smulbb	ip, ip, r7
d03e3d28:	494f      	ldr	r1, [pc, #316]	; (d03e3e68 <ui_redraw_backbuffer+0x1038>)
d03e3d2a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3d2e:	fba1 e50c 	umull	lr, r5, r1, ip
d03e3d32:	685b      	ldr	r3, [r3, #4]
d03e3d34:	ebac 0c05 	sub.w	ip, ip, r5
d03e3d38:	68db      	ldr	r3, [r3, #12]
d03e3d3a:	eb05 055c 	add.w	r5, r5, ip, lsr #1
d03e3d3e:	4798      	blx	r3
d03e3d40:	f894 e00c 	ldrb.w	lr, [r4, #12]
d03e3d44:	7b60      	ldrb	r0, [r4, #13]
d03e3d46:	230a      	movs	r3, #10
d03e3d48:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e3d4c:	22cc      	movs	r2, #204	; 0xcc
d03e3d4e:	ea4e 2100 	orr.w	r1, lr, r0, lsl #8
d03e3d52:	f894 e00f 	ldrb.w	lr, [r4, #15]
d03e3d56:	09ad      	lsrs	r5, r5, #6
d03e3d58:	ea41 400c 	orr.w	r0, r1, ip, lsl #16
d03e3d5c:	2198      	movs	r1, #152	; 0x98
d03e3d5e:	ea40 6c0e 	orr.w	ip, r0, lr, lsl #24
d03e3d62:	2080      	movs	r0, #128	; 0x80
d03e3d64:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e3d68:	f8dc b004 	ldr.w	fp, [ip, #4]
d03e3d6c:	47d8      	blx	fp
d03e3d6e:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e3d72:	7b61      	ldrb	r1, [r4, #13]
d03e3d74:	2011      	movs	r0, #17
d03e3d76:	7ba2      	ldrb	r2, [r4, #14]
d03e3d78:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e3d7c:	7be3      	ldrb	r3, [r4, #15]
d03e3d7e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3d82:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3d86:	685b      	ldr	r3, [r3, #4]
d03e3d88:	68db      	ldr	r3, [r3, #12]
d03e3d8a:	4798      	blx	r3
d03e3d8c:	f894 e00c 	ldrb.w	lr, [r4, #12]
d03e3d90:	7b60      	ldrb	r0, [r4, #13]
d03e3d92:	463a      	mov	r2, r7
d03e3d94:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e3d98:	2308      	movs	r3, #8
d03e3d9a:	ea4e 2100 	orr.w	r1, lr, r0, lsl #8
d03e3d9e:	f894 e00f 	ldrb.w	lr, [r4, #15]
d03e3da2:	ea41 400c 	orr.w	r0, r1, ip, lsl #16
d03e3da6:	2199      	movs	r1, #153	; 0x99
d03e3da8:	ea40 6c0e 	orr.w	ip, r0, lr, lsl #24
d03e3dac:	2081      	movs	r0, #129	; 0x81
d03e3dae:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e3db2:	f8dc b004 	ldr.w	fp, [ip, #4]
d03e3db6:	47d8      	blx	fp
d03e3db8:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e3dbc:	7b61      	ldrb	r1, [r4, #13]
d03e3dbe:	201d      	movs	r0, #29
d03e3dc0:	7ba2      	ldrb	r2, [r4, #14]
d03e3dc2:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e3dc6:	7be3      	ldrb	r3, [r4, #15]
d03e3dc8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3dcc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3dd0:	685b      	ldr	r3, [r3, #4]
d03e3dd2:	68db      	ldr	r3, [r3, #12]
d03e3dd4:	4798      	blx	r3
d03e3dd6:	7b21      	ldrb	r1, [r4, #12]
d03e3dd8:	7b60      	ldrb	r0, [r4, #13]
d03e3dda:	b22a      	sxth	r2, r5
d03e3ddc:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e3de0:	2308      	movs	r3, #8
d03e3de2:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d03e3de6:	7be5      	ldrb	r5, [r4, #15]
d03e3de8:	2199      	movs	r1, #153	; 0x99
d03e3dea:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d03e3dee:	2081      	movs	r0, #129	; 0x81
d03e3df0:	ea4c 6505 	orr.w	r5, ip, r5, lsl #24
d03e3df4:	686d      	ldr	r5, [r5, #4]
d03e3df6:	686d      	ldr	r5, [r5, #4]
d03e3df8:	47a8      	blx	r5
d03e3dfa:	2316      	movs	r3, #22
d03e3dfc:	2222      	movs	r2, #34	; 0x22
d03e3dfe:	218b      	movs	r1, #139	; 0x8b
d03e3e00:	f44f 70b2 	mov.w	r0, #356	; 0x164
d03e3e04:	f8cd 9000 	str.w	r9, [sp]
d03e3e08:	f7fd fc7e 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e3e0c:	2316      	movs	r3, #22
d03e3e0e:	2222      	movs	r2, #34	; 0x22
d03e3e10:	218b      	movs	r1, #139	; 0x8b
d03e3e12:	f44f 70c7 	mov.w	r0, #398	; 0x18e
d03e3e16:	f8cd 8000 	str.w	r8, [sp]
d03e3e1a:	f7fd fc75 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e3e1e:	4913      	ldr	r1, [pc, #76]	; (d03e3e6c <ui_redraw_backbuffer+0x103c>)
d03e3e20:	2334      	movs	r3, #52	; 0x34
d03e3e22:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03e3e26:	2010      	movs	r0, #16
d03e3e28:	9100      	str	r1, [sp, #0]
d03e3e2a:	21ba      	movs	r1, #186	; 0xba
d03e3e2c:	f7fd ff08 	bl	d03e1c40 <ui_panel>
d03e3e30:	f81a 3006 	ldrb.w	r3, [sl, r6]
d03e3e34:	4a0e      	ldr	r2, [pc, #56]	; (d03e3e70 <ui_redraw_backbuffer+0x1040>)
d03e3e36:	2160      	movs	r1, #96	; 0x60
d03e3e38:	a80a      	add	r0, sp, #40	; 0x28
d03e3e3a:	f003 ffab 	bl	d03e7d94 <sniprintf>
d03e3e3e:	7b25      	ldrb	r5, [r4, #12]
d03e3e40:	7b61      	ldrb	r1, [r4, #13]
d03e3e42:	201e      	movs	r0, #30
d03e3e44:	e01c      	b.n	d03e3e80 <ui_redraw_backbuffer+0x1050>
d03e3e46:	bf00      	nop
d03e3e48:	d03e9288 	.word	0xd03e9288
d03e3e4c:	d03ea5d2 	.word	0xd03ea5d2
d03e3e50:	d03ea645 	.word	0xd03ea645
d03e3e54:	d03e929c 	.word	0xd03e929c
d03e3e58:	1b4e81b5 	.word	0x1b4e81b5
d03e3e5c:	d03e92a4 	.word	0xd03e92a4
d03e3e60:	d03ea3b4 	.word	0xd03ea3b4
d03e3e64:	d03e92bc 	.word	0xd03e92bc
d03e3e68:	02040811 	.word	0x02040811
d03e3e6c:	d03e92cc 	.word	0xd03e92cc
d03e3e70:	d03e92e8 	.word	0xd03e92e8
d03e3e74:	d03e9280 	.word	0xd03e9280
d03e3e78:	d03e9284 	.word	0xd03e9284
d03e3e7c:	d03ea394 	.word	0xd03ea394
d03e3e80:	7ba2      	ldrb	r2, [r4, #14]
d03e3e82:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e3e86:	7be3      	ldrb	r3, [r4, #15]
d03e3e88:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3e8c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3e90:	685b      	ldr	r3, [r3, #4]
d03e3e92:	68db      	ldr	r3, [r3, #12]
d03e3e94:	4798      	blx	r3
d03e3e96:	7b20      	ldrb	r0, [r4, #12]
d03e3e98:	f894 c00d 	ldrb.w	ip, [r4, #13]
d03e3e9c:	aa0a      	add	r2, sp, #40	; 0x28
d03e3e9e:	7ba5      	ldrb	r5, [r4, #14]
d03e3ea0:	21cc      	movs	r1, #204	; 0xcc
d03e3ea2:	ea40 2c0c 	orr.w	ip, r0, ip, lsl #8
d03e3ea6:	7be3      	ldrb	r3, [r4, #15]
d03e3ea8:	2020      	movs	r0, #32
d03e3eaa:	ea4c 4505 	orr.w	r5, ip, r5, lsl #16
d03e3eae:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e3eb2:	685b      	ldr	r3, [r3, #4]
d03e3eb4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3eb6:	4798      	blx	r3
d03e3eb8:	7b25      	ldrb	r5, [r4, #12]
d03e3eba:	7b61      	ldrb	r1, [r4, #13]
d03e3ebc:	201a      	movs	r0, #26
d03e3ebe:	7ba2      	ldrb	r2, [r4, #14]
d03e3ec0:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e3ec4:	f81a a006 	ldrb.w	sl, [sl, r6]
d03e3ec8:	7be3      	ldrb	r3, [r4, #15]
d03e3eca:	fb1a f507 	smulbb	r5, sl, r7
d03e3ece:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3ed2:	4948      	ldr	r1, [pc, #288]	; (d03e3ff4 <ui_redraw_backbuffer+0x11c4>)
d03e3ed4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3ed8:	fba1 1a05 	umull	r1, sl, r1, r5
d03e3edc:	685b      	ldr	r3, [r3, #4]
d03e3ede:	eba5 020a 	sub.w	r2, r5, sl
d03e3ee2:	68db      	ldr	r3, [r3, #12]
d03e3ee4:	eb0a 0a52 	add.w	sl, sl, r2, lsr #1
d03e3ee8:	4798      	blx	r3
d03e3eea:	7b21      	ldrb	r1, [r4, #12]
d03e3eec:	7b66      	ldrb	r6, [r4, #13]
d03e3eee:	230a      	movs	r3, #10
d03e3ef0:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e3ef4:	22cc      	movs	r2, #204	; 0xcc
d03e3ef6:	ea41 2c06 	orr.w	ip, r1, r6, lsl #8
d03e3efa:	7be5      	ldrb	r5, [r4, #15]
d03e3efc:	21ce      	movs	r1, #206	; 0xce
d03e3efe:	2080      	movs	r0, #128	; 0x80
d03e3f00:	ea4c 460e 	orr.w	r6, ip, lr, lsl #16
d03e3f04:	ea4f 1a9a 	mov.w	sl, sl, lsr #6
d03e3f08:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d03e3f0c:	686d      	ldr	r5, [r5, #4]
d03e3f0e:	686d      	ldr	r5, [r5, #4]
d03e3f10:	47a8      	blx	r5
d03e3f12:	7b25      	ldrb	r5, [r4, #12]
d03e3f14:	7b61      	ldrb	r1, [r4, #13]
d03e3f16:	2011      	movs	r0, #17
d03e3f18:	7ba2      	ldrb	r2, [r4, #14]
d03e3f1a:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e3f1e:	7be3      	ldrb	r3, [r4, #15]
d03e3f20:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3f24:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3f28:	685b      	ldr	r3, [r3, #4]
d03e3f2a:	68db      	ldr	r3, [r3, #12]
d03e3f2c:	4798      	blx	r3
d03e3f2e:	7b21      	ldrb	r1, [r4, #12]
d03e3f30:	7b65      	ldrb	r5, [r4, #13]
d03e3f32:	463a      	mov	r2, r7
d03e3f34:	7ba6      	ldrb	r6, [r4, #14]
d03e3f36:	2308      	movs	r3, #8
d03e3f38:	ea41 2705 	orr.w	r7, r1, r5, lsl #8
d03e3f3c:	7be5      	ldrb	r5, [r4, #15]
d03e3f3e:	21cf      	movs	r1, #207	; 0xcf
d03e3f40:	2081      	movs	r0, #129	; 0x81
d03e3f42:	ea47 4606 	orr.w	r6, r7, r6, lsl #16
d03e3f46:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d03e3f4a:	686d      	ldr	r5, [r5, #4]
d03e3f4c:	686d      	ldr	r5, [r5, #4]
d03e3f4e:	47a8      	blx	r5
d03e3f50:	7b25      	ldrb	r5, [r4, #12]
d03e3f52:	7b61      	ldrb	r1, [r4, #13]
d03e3f54:	201d      	movs	r0, #29
d03e3f56:	7ba2      	ldrb	r2, [r4, #14]
d03e3f58:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e3f5c:	7be3      	ldrb	r3, [r4, #15]
d03e3f5e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3f62:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3f66:	685b      	ldr	r3, [r3, #4]
d03e3f68:	68db      	ldr	r3, [r3, #12]
d03e3f6a:	4798      	blx	r3
d03e3f6c:	7b21      	ldrb	r1, [r4, #12]
d03e3f6e:	7b67      	ldrb	r7, [r4, #13]
d03e3f70:	fa0f f28a 	sxth.w	r2, sl
d03e3f74:	7ba6      	ldrb	r6, [r4, #14]
d03e3f76:	2308      	movs	r3, #8
d03e3f78:	ea41 2707 	orr.w	r7, r1, r7, lsl #8
d03e3f7c:	7be5      	ldrb	r5, [r4, #15]
d03e3f7e:	21cf      	movs	r1, #207	; 0xcf
d03e3f80:	2081      	movs	r0, #129	; 0x81
d03e3f82:	ea47 4606 	orr.w	r6, r7, r6, lsl #16
d03e3f86:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d03e3f8a:	686d      	ldr	r5, [r5, #4]
d03e3f8c:	686d      	ldr	r5, [r5, #4]
d03e3f8e:	47a8      	blx	r5
d03e3f90:	2316      	movs	r3, #22
d03e3f92:	2222      	movs	r2, #34	; 0x22
d03e3f94:	21be      	movs	r1, #190	; 0xbe
d03e3f96:	f44f 70b2 	mov.w	r0, #356	; 0x164
d03e3f9a:	f8cd 9000 	str.w	r9, [sp]
d03e3f9e:	f7fd fbb3 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e3fa2:	2316      	movs	r3, #22
d03e3fa4:	2222      	movs	r2, #34	; 0x22
d03e3fa6:	21be      	movs	r1, #190	; 0xbe
d03e3fa8:	f44f 70c7 	mov.w	r0, #398	; 0x18e
d03e3fac:	f8cd 8000 	str.w	r8, [sp]
d03e3fb0:	f7fd fbaa 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e3fb4:	7b25      	ldrb	r5, [r4, #12]
d03e3fb6:	7b61      	ldrb	r1, [r4, #13]
d03e3fb8:	2018      	movs	r0, #24
d03e3fba:	7ba2      	ldrb	r2, [r4, #14]
d03e3fbc:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e3fc0:	7be3      	ldrb	r3, [r4, #15]
d03e3fc2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3fc6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3fca:	685b      	ldr	r3, [r3, #4]
d03e3fcc:	68db      	ldr	r3, [r3, #12]
d03e3fce:	4798      	blx	r3
d03e3fd0:	7b22      	ldrb	r2, [r4, #12]
d03e3fd2:	7b66      	ldrb	r6, [r4, #13]
d03e3fd4:	21fc      	movs	r1, #252	; 0xfc
d03e3fd6:	7ba5      	ldrb	r5, [r4, #14]
d03e3fd8:	201a      	movs	r0, #26
d03e3fda:	ea42 2606 	orr.w	r6, r2, r6, lsl #8
d03e3fde:	7be3      	ldrb	r3, [r4, #15]
d03e3fe0:	4a05      	ldr	r2, [pc, #20]	; (d03e3ff8 <ui_redraw_backbuffer+0x11c8>)
d03e3fe2:	ea46 4505 	orr.w	r5, r6, r5, lsl #16
d03e3fe6:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e3fea:	685b      	ldr	r3, [r3, #4]
d03e3fec:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3fee:	4798      	blx	r3
d03e3ff0:	f7ff bb73 	b.w	d03e36da <ui_redraw_backbuffer+0x8aa>
d03e3ff4:	02040811 	.word	0x02040811
d03e3ff8:	d03e92f4 	.word	0xd03e92f4
d03e3ffc:	48a4      	ldr	r0, [pc, #656]	; (d03e4290 <ui_redraw_backbuffer+0x1460>)
d03e3ffe:	23ba      	movs	r3, #186	; 0xba
d03e4000:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03e4004:	214e      	movs	r1, #78	; 0x4e
d03e4006:	9000      	str	r0, [sp, #0]
d03e4008:	2010      	movs	r0, #16
d03e400a:	f7fd fe19 	bl	d03e1c40 <ui_panel>
d03e400e:	7b25      	ldrb	r5, [r4, #12]
d03e4010:	7b61      	ldrb	r1, [r4, #13]
d03e4012:	201e      	movs	r0, #30
d03e4014:	7ba2      	ldrb	r2, [r4, #14]
d03e4016:	af0a      	add	r7, sp, #40	; 0x28
d03e4018:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e401c:	7be3      	ldrb	r3, [r4, #15]
d03e401e:	4d9d      	ldr	r5, [pc, #628]	; (d03e4294 <ui_redraw_backbuffer+0x1464>)
d03e4020:	f04f 0994 	mov.w	r9, #148	; 0x94
d03e4024:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e4028:	4e9b      	ldr	r6, [pc, #620]	; (d03e4298 <ui_redraw_backbuffer+0x1468>)
d03e402a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e402e:	685b      	ldr	r3, [r3, #4]
d03e4030:	68db      	ldr	r3, [r3, #12]
d03e4032:	4798      	blx	r3
d03e4034:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e4038:	7b62      	ldrb	r2, [r4, #13]
d03e403a:	2164      	movs	r1, #100	; 0x64
d03e403c:	7ba0      	ldrb	r0, [r4, #14]
d03e403e:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d03e4042:	7be3      	ldrb	r3, [r4, #15]
d03e4044:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d03e4048:	4a94      	ldr	r2, [pc, #592]	; (d03e429c <ui_redraw_backbuffer+0x146c>)
d03e404a:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d03e404e:	2020      	movs	r0, #32
d03e4050:	685b      	ldr	r3, [r3, #4]
d03e4052:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e4054:	4798      	blx	r3
d03e4056:	f895 c000 	ldrb.w	ip, [r5]
d03e405a:	4a91      	ldr	r2, [pc, #580]	; (d03e42a0 <ui_redraw_backbuffer+0x1470>)
d03e405c:	4638      	mov	r0, r7
d03e405e:	4b91      	ldr	r3, [pc, #580]	; (d03e42a4 <ui_redraw_backbuffer+0x1474>)
d03e4060:	2160      	movs	r1, #96	; 0x60
d03e4062:	f1bc 0f00 	cmp.w	ip, #0
d03e4066:	bf08      	it	eq
d03e4068:	4613      	moveq	r3, r2
d03e406a:	4a8f      	ldr	r2, [pc, #572]	; (d03e42a8 <ui_redraw_backbuffer+0x1478>)
d03e406c:	f003 fe92 	bl	d03e7d94 <sniprintf>
d03e4070:	7b20      	ldrb	r0, [r4, #12]
d03e4072:	7b61      	ldrb	r1, [r4, #13]
d03e4074:	7ba2      	ldrb	r2, [r4, #14]
d03e4076:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e407a:	7be3      	ldrb	r3, [r4, #15]
d03e407c:	7828      	ldrb	r0, [r5, #0]
d03e407e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e4082:	2800      	cmp	r0, #0
d03e4084:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e4088:	bf14      	ite	ne
d03e408a:	2009      	movne	r0, #9
d03e408c:	200d      	moveq	r0, #13
d03e408e:	685b      	ldr	r3, [r3, #4]
d03e4090:	68db      	ldr	r3, [r3, #12]
d03e4092:	4798      	blx	r3
d03e4094:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e4098:	7b61      	ldrb	r1, [r4, #13]
d03e409a:	463a      	mov	r2, r7
d03e409c:	7ba0      	ldrb	r0, [r4, #14]
d03e409e:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e40a2:	7be3      	ldrb	r3, [r4, #15]
d03e40a4:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d03e40a8:	217a      	movs	r1, #122	; 0x7a
d03e40aa:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d03e40ae:	2020      	movs	r0, #32
d03e40b0:	685b      	ldr	r3, [r3, #4]
d03e40b2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e40b4:	4798      	blx	r3
d03e40b6:	7829      	ldrb	r1, [r5, #0]
d03e40b8:	487c      	ldr	r0, [pc, #496]	; (d03e42ac <ui_redraw_backbuffer+0x147c>)
d03e40ba:	2318      	movs	r3, #24
d03e40bc:	4d7c      	ldr	r5, [pc, #496]	; (d03e42b0 <ui_redraw_backbuffer+0x1480>)
d03e40be:	2256      	movs	r2, #86	; 0x56
d03e40c0:	9101      	str	r1, [sp, #4]
d03e40c2:	2900      	cmp	r1, #0
d03e40c4:	bf08      	it	eq
d03e40c6:	4605      	moveq	r5, r0
d03e40c8:	215c      	movs	r1, #92	; 0x5c
d03e40ca:	f44f 709d 	mov.w	r0, #314	; 0x13a
d03e40ce:	9500      	str	r5, [sp, #0]
d03e40d0:	f7fd fc44 	bl	d03e195c <ui_button_draw>
d03e40d4:	8833      	ldrh	r3, [r6, #0]
d03e40d6:	4638      	mov	r0, r7
d03e40d8:	2160      	movs	r1, #96	; 0x60
d03e40da:	4a76      	ldr	r2, [pc, #472]	; (d03e42b4 <ui_redraw_backbuffer+0x1484>)
d03e40dc:	f003 fe5a 	bl	d03e7d94 <sniprintf>
d03e40e0:	7b25      	ldrb	r5, [r4, #12]
d03e40e2:	7b61      	ldrb	r1, [r4, #13]
d03e40e4:	201e      	movs	r0, #30
d03e40e6:	7ba2      	ldrb	r2, [r4, #14]
d03e40e8:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e40ec:	7be3      	ldrb	r3, [r4, #15]
d03e40ee:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e40f2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e40f6:	685b      	ldr	r3, [r3, #4]
d03e40f8:	68db      	ldr	r3, [r3, #12]
d03e40fa:	4798      	blx	r3
d03e40fc:	7b20      	ldrb	r0, [r4, #12]
d03e40fe:	7b63      	ldrb	r3, [r4, #13]
d03e4100:	463a      	mov	r2, r7
d03e4102:	7ba5      	ldrb	r5, [r4, #14]
d03e4104:	4649      	mov	r1, r9
d03e4106:	ea40 2703 	orr.w	r7, r0, r3, lsl #8
d03e410a:	7be3      	ldrb	r3, [r4, #15]
d03e410c:	2020      	movs	r0, #32
d03e410e:	ea47 4505 	orr.w	r5, r7, r5, lsl #16
d03e4112:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e4116:	685b      	ldr	r3, [r3, #4]
d03e4118:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e411a:	4798      	blx	r3
d03e411c:	7b25      	ldrb	r5, [r4, #12]
d03e411e:	7b61      	ldrb	r1, [r4, #13]
d03e4120:	201a      	movs	r0, #26
d03e4122:	7ba2      	ldrb	r2, [r4, #14]
d03e4124:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e4128:	7be3      	ldrb	r3, [r4, #15]
d03e412a:	f8b6 8000 	ldrh.w	r8, [r6]
d03e412e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e4132:	4961      	ldr	r1, [pc, #388]	; (d03e42b8 <ui_redraw_backbuffer+0x1488>)
d03e4134:	fb09 f808 	mul.w	r8, r9, r8
d03e4138:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e413c:	fba1 2808 	umull	r2, r8, r1, r8
d03e4140:	685b      	ldr	r3, [r3, #4]
d03e4142:	ea4f 1858 	mov.w	r8, r8, lsr #5
d03e4146:	68db      	ldr	r3, [r3, #12]
d03e4148:	4798      	blx	r3
d03e414a:	7b21      	ldrb	r1, [r4, #12]
d03e414c:	7b60      	ldrb	r0, [r4, #13]
d03e414e:	2296      	movs	r2, #150	; 0x96
d03e4150:	7ba6      	ldrb	r6, [r4, #14]
d03e4152:	230a      	movs	r3, #10
d03e4154:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d03e4158:	7be5      	ldrb	r5, [r4, #15]
d03e415a:	4611      	mov	r1, r2
d03e415c:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d03e4160:	208c      	movs	r0, #140	; 0x8c
d03e4162:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d03e4166:	686d      	ldr	r5, [r5, #4]
d03e4168:	686d      	ldr	r5, [r5, #4]
d03e416a:	47a8      	blx	r5
d03e416c:	7b25      	ldrb	r5, [r4, #12]
d03e416e:	7b61      	ldrb	r1, [r4, #13]
d03e4170:	2011      	movs	r0, #17
d03e4172:	7ba2      	ldrb	r2, [r4, #14]
d03e4174:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e4178:	7be3      	ldrb	r3, [r4, #15]
d03e417a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e417e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e4182:	685b      	ldr	r3, [r3, #4]
d03e4184:	68db      	ldr	r3, [r3, #12]
d03e4186:	4798      	blx	r3
d03e4188:	7b21      	ldrb	r1, [r4, #12]
d03e418a:	7b67      	ldrb	r7, [r4, #13]
d03e418c:	464a      	mov	r2, r9
d03e418e:	7ba6      	ldrb	r6, [r4, #14]
d03e4190:	2308      	movs	r3, #8
d03e4192:	ea41 2707 	orr.w	r7, r1, r7, lsl #8
d03e4196:	7be5      	ldrb	r5, [r4, #15]
d03e4198:	2197      	movs	r1, #151	; 0x97
d03e419a:	208d      	movs	r0, #141	; 0x8d
d03e419c:	ea47 4606 	orr.w	r6, r7, r6, lsl #16
d03e41a0:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d03e41a4:	686d      	ldr	r5, [r5, #4]
d03e41a6:	686d      	ldr	r5, [r5, #4]
d03e41a8:	47a8      	blx	r5
d03e41aa:	7b25      	ldrb	r5, [r4, #12]
d03e41ac:	7b61      	ldrb	r1, [r4, #13]
d03e41ae:	201d      	movs	r0, #29
d03e41b0:	7ba2      	ldrb	r2, [r4, #14]
d03e41b2:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e41b6:	7be3      	ldrb	r3, [r4, #15]
d03e41b8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e41bc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e41c0:	685b      	ldr	r3, [r3, #4]
d03e41c2:	68db      	ldr	r3, [r3, #12]
d03e41c4:	4798      	blx	r3
d03e41c6:	7b21      	ldrb	r1, [r4, #12]
d03e41c8:	7b67      	ldrb	r7, [r4, #13]
d03e41ca:	fa0f f288 	sxth.w	r2, r8
d03e41ce:	7ba6      	ldrb	r6, [r4, #14]
d03e41d0:	2308      	movs	r3, #8
d03e41d2:	ea41 2707 	orr.w	r7, r1, r7, lsl #8
d03e41d6:	7be5      	ldrb	r5, [r4, #15]
d03e41d8:	2197      	movs	r1, #151	; 0x97
d03e41da:	208d      	movs	r0, #141	; 0x8d
d03e41dc:	ea47 4606 	orr.w	r6, r7, r6, lsl #16
d03e41e0:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d03e41e4:	686d      	ldr	r5, [r5, #4]
d03e41e6:	686d      	ldr	r5, [r5, #4]
d03e41e8:	47a8      	blx	r5
d03e41ea:	4934      	ldr	r1, [pc, #208]	; (d03e42bc <ui_redraw_backbuffer+0x148c>)
d03e41ec:	2316      	movs	r3, #22
d03e41ee:	2222      	movs	r2, #34	; 0x22
d03e41f0:	f44f 709e 	mov.w	r0, #316	; 0x13c
d03e41f4:	9100      	str	r1, [sp, #0]
d03e41f6:	218a      	movs	r1, #138	; 0x8a
d03e41f8:	f7fd fa86 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e41fc:	4930      	ldr	r1, [pc, #192]	; (d03e42c0 <ui_redraw_backbuffer+0x1490>)
d03e41fe:	2316      	movs	r3, #22
d03e4200:	2222      	movs	r2, #34	; 0x22
d03e4202:	f44f 70b3 	mov.w	r0, #358	; 0x166
d03e4206:	9100      	str	r1, [sp, #0]
d03e4208:	218a      	movs	r1, #138	; 0x8a
d03e420a:	f7fd fa7d 	bl	d03e1708 <ui_button_draw.constprop.0>
d03e420e:	7b25      	ldrb	r5, [r4, #12]
d03e4210:	7b61      	ldrb	r1, [r4, #13]
d03e4212:	2018      	movs	r0, #24
d03e4214:	7ba2      	ldrb	r2, [r4, #14]
d03e4216:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e421a:	7be3      	ldrb	r3, [r4, #15]
d03e421c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e4220:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e4224:	685b      	ldr	r3, [r3, #4]
d03e4226:	68db      	ldr	r3, [r3, #12]
d03e4228:	4798      	blx	r3
d03e422a:	7b22      	ldrb	r2, [r4, #12]
d03e422c:	7b66      	ldrb	r6, [r4, #13]
d03e422e:	21b8      	movs	r1, #184	; 0xb8
d03e4230:	7ba5      	ldrb	r5, [r4, #14]
d03e4232:	2020      	movs	r0, #32
d03e4234:	ea42 2606 	orr.w	r6, r2, r6, lsl #8
d03e4238:	7be3      	ldrb	r3, [r4, #15]
d03e423a:	4a22      	ldr	r2, [pc, #136]	; (d03e42c4 <ui_redraw_backbuffer+0x1494>)
d03e423c:	ea46 4505 	orr.w	r5, r6, r5, lsl #16
d03e4240:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e4244:	685b      	ldr	r3, [r3, #4]
d03e4246:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e4248:	4798      	blx	r3
d03e424a:	7b22      	ldrb	r2, [r4, #12]
d03e424c:	7b66      	ldrb	r6, [r4, #13]
d03e424e:	21ca      	movs	r1, #202	; 0xca
d03e4250:	7ba5      	ldrb	r5, [r4, #14]
d03e4252:	2020      	movs	r0, #32
d03e4254:	ea42 2606 	orr.w	r6, r2, r6, lsl #8
d03e4258:	7be3      	ldrb	r3, [r4, #15]
d03e425a:	4a1b      	ldr	r2, [pc, #108]	; (d03e42c8 <ui_redraw_backbuffer+0x1498>)
d03e425c:	ea46 4505 	orr.w	r5, r6, r5, lsl #16
d03e4260:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e4264:	685b      	ldr	r3, [r3, #4]
d03e4266:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e4268:	4798      	blx	r3
d03e426a:	7b22      	ldrb	r2, [r4, #12]
d03e426c:	7b66      	ldrb	r6, [r4, #13]
d03e426e:	21e2      	movs	r1, #226	; 0xe2
d03e4270:	7ba5      	ldrb	r5, [r4, #14]
d03e4272:	2020      	movs	r0, #32
d03e4274:	ea42 2606 	orr.w	r6, r2, r6, lsl #8
d03e4278:	7be3      	ldrb	r3, [r4, #15]
d03e427a:	4a14      	ldr	r2, [pc, #80]	; (d03e42cc <ui_redraw_backbuffer+0x149c>)
d03e427c:	e6b1      	b.n	d03e3fe2 <ui_redraw_backbuffer+0x11b2>
d03e427e:	200e      	movs	r0, #14
d03e4280:	e403      	b.n	d03e3a8a <ui_redraw_backbuffer+0xc5a>
d03e4282:	4a13      	ldr	r2, [pc, #76]	; (d03e42d0 <ui_redraw_backbuffer+0x14a0>)
d03e4284:	f7fe bf18 	b.w	d03e30b8 <ui_redraw_backbuffer+0x288>
d03e4288:	9304      	str	r3, [sp, #16]
d03e428a:	4b12      	ldr	r3, [pc, #72]	; (d03e42d4 <ui_redraw_backbuffer+0x14a4>)
d03e428c:	f7fe bf04 	b.w	d03e3098 <ui_redraw_backbuffer+0x268>
d03e4290:	d03e9320 	.word	0xd03e9320
d03e4294:	d03ea3c8 	.word	0xd03ea3c8
d03e4298:	d03ea3ca 	.word	0xd03ea3ca
d03e429c:	d03e9334 	.word	0xd03e9334
d03e42a0:	d03e9198 	.word	0xd03e9198
d03e42a4:	d03e9190 	.word	0xd03e9190
d03e42a8:	d03e9360 	.word	0xd03e9360
d03e42ac:	d03e91a8 	.word	0xd03e91a8
d03e42b0:	d03e91a0 	.word	0xd03e91a0
d03e42b4:	d03e936c 	.word	0xd03e936c
d03e42b8:	1b4e81b5 	.word	0x1b4e81b5
d03e42bc:	d03e9280 	.word	0xd03e9280
d03e42c0:	d03e9284 	.word	0xd03e9284
d03e42c4:	d03e937c 	.word	0xd03e937c
d03e42c8:	d03e93a0 	.word	0xd03e93a0
d03e42cc:	d03e93c0 	.word	0xd03e93c0
d03e42d0:	d03e90cc 	.word	0xd03e90cc
d03e42d4:	d03e91c0 	.word	0xd03e91c0
d03e42d8:	9b06      	ldr	r3, [sp, #24]
d03e42da:	f813 2025 	ldrb.w	r2, [r3, r5, lsl #2]
d03e42de:	eb03 0885 	add.w	r8, r3, r5, lsl #2
d03e42e2:	2a15      	cmp	r2, #21
d03e42e4:	d92d      	bls.n	d03e4342 <ui_redraw_backbuffer+0x1512>
d03e42e6:	f8b8 0002 	ldrh.w	r0, [r8, #2]
d03e42ea:	462b      	mov	r3, r5
d03e42ec:	4652      	mov	r2, sl
d03e42ee:	4dbf      	ldr	r5, [pc, #764]	; (d03e45ec <ui_redraw_backbuffer+0x17bc>)
d03e42f0:	9002      	str	r0, [sp, #8]
d03e42f2:	2160      	movs	r1, #96	; 0x60
d03e42f4:	f898 6001 	ldrb.w	r6, [r8, #1]
d03e42f8:	4638      	mov	r0, r7
d03e42fa:	e9cd 5600 	strd	r5, r6, [sp]
d03e42fe:	f003 fd49 	bl	d03e7d94 <sniprintf>
d03e4302:	7b21      	ldrb	r1, [r4, #12]
d03e4304:	7b63      	ldrb	r3, [r4, #13]
d03e4306:	ea4f 190b 	mov.w	r9, fp, lsl #4
d03e430a:	7ba2      	ldrb	r2, [r4, #14]
d03e430c:	4608      	mov	r0, r1
d03e430e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e4312:	7be3      	ldrb	r3, [r4, #15]
d03e4314:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e4318:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e431c:	685b      	ldr	r3, [r3, #4]
d03e431e:	68db      	ldr	r3, [r3, #12]
d03e4320:	f7fe bfb4 	b.w	d03e328c <ui_redraw_backbuffer+0x45c>
d03e4324:	48b2      	ldr	r0, [pc, #712]	; (d03e45f0 <ui_redraw_backbuffer+0x17c0>)
d03e4326:	462b      	mov	r3, r5
d03e4328:	f8b8 1002 	ldrh.w	r1, [r8, #2]
d03e432c:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
d03e4330:	4652      	mov	r2, sl
d03e4332:	9102      	str	r1, [sp, #8]
d03e4334:	2160      	movs	r1, #96	; 0x60
d03e4336:	f898 c001 	ldrb.w	ip, [r8, #1]
d03e433a:	9000      	str	r0, [sp, #0]
d03e433c:	4638      	mov	r0, r7
d03e433e:	f7fe bf8f 	b.w	d03e3260 <ui_redraw_backbuffer+0x430>
d03e4342:	f8b8 1002 	ldrh.w	r1, [r8, #2]
d03e4346:	462b      	mov	r3, r5
d03e4348:	48a9      	ldr	r0, [pc, #676]	; (d03e45f0 <ui_redraw_backbuffer+0x17c0>)
d03e434a:	9102      	str	r1, [sp, #8]
d03e434c:	2160      	movs	r1, #96	; 0x60
d03e434e:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
d03e4352:	4652      	mov	r2, sl
d03e4354:	f898 5001 	ldrb.w	r5, [r8, #1]
d03e4358:	9000      	str	r0, [sp, #0]
d03e435a:	4638      	mov	r0, r7
d03e435c:	9501      	str	r5, [sp, #4]
d03e435e:	e7ce      	b.n	d03e42fe <ui_redraw_backbuffer+0x14ce>
d03e4360:	7b21      	ldrb	r1, [r4, #12]
d03e4362:	201c      	movs	r0, #28
d03e4364:	7b63      	ldrb	r3, [r4, #13]
d03e4366:	ea4f 190b 	mov.w	r9, fp, lsl #4
d03e436a:	7ba2      	ldrb	r2, [r4, #14]
d03e436c:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e4370:	7be3      	ldrb	r3, [r4, #15]
d03e4372:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e4376:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e437a:	685b      	ldr	r3, [r3, #4]
d03e437c:	68db      	ldr	r3, [r3, #12]
d03e437e:	4798      	blx	r3
d03e4380:	7b22      	ldrb	r2, [r4, #12]
d03e4382:	7b60      	ldrb	r0, [r4, #13]
d03e4384:	f109 017b 	add.w	r1, r9, #123	; 0x7b
d03e4388:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e438c:	2310      	movs	r3, #16
d03e438e:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d03e4392:	f894 e00f 	ldrb.w	lr, [r4, #15]
d03e4396:	b209      	sxth	r1, r1
d03e4398:	f44f 72c0 	mov.w	r2, #384	; 0x180
d03e439c:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d03e43a0:	201c      	movs	r0, #28
d03e43a2:	9107      	str	r1, [sp, #28]
d03e43a4:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d03e43a8:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e43ac:	f8dc 8004 	ldr.w	r8, [ip, #4]
d03e43b0:	47c0      	blx	r8
d03e43b2:	4b90      	ldr	r3, [pc, #576]	; (d03e45f4 <ui_redraw_backbuffer+0x17c4>)
d03e43b4:	781b      	ldrb	r3, [r3, #0]
d03e43b6:	2b00      	cmp	r3, #0
d03e43b8:	f43e af3f 	beq.w	d03e323a <ui_redraw_backbuffer+0x40a>
d03e43bc:	7b23      	ldrb	r3, [r4, #12]
d03e43be:	201d      	movs	r0, #29
d03e43c0:	7b62      	ldrb	r2, [r4, #13]
d03e43c2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e43c6:	7ba2      	ldrb	r2, [r4, #14]
d03e43c8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e43cc:	7be2      	ldrb	r2, [r4, #15]
d03e43ce:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e43d2:	685b      	ldr	r3, [r3, #4]
d03e43d4:	68db      	ldr	r3, [r3, #12]
d03e43d6:	4798      	blx	r3
d03e43d8:	4b87      	ldr	r3, [pc, #540]	; (d03e45f8 <ui_redraw_backbuffer+0x17c8>)
d03e43da:	7b20      	ldrb	r0, [r4, #12]
d03e43dc:	781b      	ldrb	r3, [r3, #0]
d03e43de:	9907      	ldr	r1, [sp, #28]
d03e43e0:	f894 c00d 	ldrb.w	ip, [r4, #13]
d03e43e4:	2b00      	cmp	r3, #0
d03e43e6:	f040 80e4 	bne.w	d03e45b2 <ui_redraw_backbuffer+0x1782>
d03e43ea:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e43ee:	ea40 200c 	orr.w	r0, r0, ip, lsl #8
d03e43f2:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e43f6:	2310      	movs	r3, #16
d03e43f8:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d03e43fc:	2240      	movs	r2, #64	; 0x40
d03e43fe:	203e      	movs	r0, #62	; 0x3e
d03e4400:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d03e4404:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e4408:	f8dc 8004 	ldr.w	r8, [ip, #4]
d03e440c:	47c0      	blx	r8
d03e440e:	f7fe bf14 	b.w	d03e323a <ui_redraw_backbuffer+0x40a>
d03e4412:	200f      	movs	r0, #15
d03e4414:	f7fe bf40 	b.w	d03e3298 <ui_redraw_backbuffer+0x468>
d03e4418:	7b21      	ldrb	r1, [r4, #12]
d03e441a:	2018      	movs	r0, #24
d03e441c:	7b63      	ldrb	r3, [r4, #13]
d03e441e:	7ba2      	ldrb	r2, [r4, #14]
d03e4420:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e4424:	7be3      	ldrb	r3, [r4, #15]
d03e4426:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e442a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e442e:	685b      	ldr	r3, [r3, #4]
d03e4430:	68db      	ldr	r3, [r3, #12]
d03e4432:	4798      	blx	r3
d03e4434:	7b22      	ldrb	r2, [r4, #12]
d03e4436:	7b63      	ldrb	r3, [r4, #13]
d03e4438:	217c      	movs	r1, #124	; 0x7c
d03e443a:	7ba5      	ldrb	r5, [r4, #14]
d03e443c:	201e      	movs	r0, #30
d03e443e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03e4442:	7be3      	ldrb	r3, [r4, #15]
d03e4444:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d03e4448:	4a6c      	ldr	r2, [pc, #432]	; (d03e45fc <ui_redraw_backbuffer+0x17cc>)
d03e444a:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e444e:	685b      	ldr	r3, [r3, #4]
d03e4450:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e4452:	4798      	blx	r3
d03e4454:	f7ff b941 	b.w	d03e36da <ui_redraw_backbuffer+0x8aa>
d03e4458:	4b69      	ldr	r3, [pc, #420]	; (d03e4600 <ui_redraw_backbuffer+0x17d0>)
d03e445a:	781b      	ldrb	r3, [r3, #0]
d03e445c:	07db      	lsls	r3, r3, #31
d03e445e:	d50d      	bpl.n	d03e447c <ui_redraw_backbuffer+0x164c>
d03e4460:	4b68      	ldr	r3, [pc, #416]	; (d03e4604 <ui_redraw_backbuffer+0x17d4>)
d03e4462:	881b      	ldrh	r3, [r3, #0]
d03e4464:	3b82      	subs	r3, #130	; 0x82
d03e4466:	b29b      	uxth	r3, r3
d03e4468:	2b4f      	cmp	r3, #79	; 0x4f
d03e446a:	d807      	bhi.n	d03e447c <ui_redraw_backbuffer+0x164c>
d03e446c:	4b66      	ldr	r3, [pc, #408]	; (d03e4608 <ui_redraw_backbuffer+0x17d8>)
d03e446e:	881b      	ldrh	r3, [r3, #0]
d03e4470:	f5a3 73d1 	sub.w	r3, r3, #418	; 0x1a2
d03e4474:	b29b      	uxth	r3, r3
d03e4476:	2b21      	cmp	r3, #33	; 0x21
d03e4478:	f240 80e8 	bls.w	d03e464c <ui_redraw_backbuffer+0x181c>
d03e447c:	2500      	movs	r5, #0
d03e447e:	4e63      	ldr	r6, [pc, #396]	; (d03e460c <ui_redraw_backbuffer+0x17dc>)
d03e4480:	f04f 081b 	mov.w	r8, #27
d03e4484:	f04f 0919 	mov.w	r9, #25
d03e4488:	f7fe bf3a 	b.w	d03e3300 <ui_redraw_backbuffer+0x4d0>
d03e448c:	2010      	movs	r0, #16
d03e448e:	258b      	movs	r5, #139	; 0x8b
d03e4490:	4798      	blx	r3
d03e4492:	7b21      	ldrb	r1, [r4, #12]
d03e4494:	7b60      	ldrb	r0, [r4, #13]
d03e4496:	2302      	movs	r3, #2
d03e4498:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e449c:	2220      	movs	r2, #32
d03e449e:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
d03e44a2:	f894 e00f 	ldrb.w	lr, [r4, #15]
d03e44a6:	f44f 78d8 	mov.w	r8, #432	; 0x1b0
d03e44aa:	ea41 400c 	orr.w	r0, r1, ip, lsl #16
d03e44ae:	2183      	movs	r1, #131	; 0x83
d03e44b0:	ea40 6c0e 	orr.w	ip, r0, lr, lsl #24
d03e44b4:	f240 10a3 	movw	r0, #419	; 0x1a3
d03e44b8:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e44bc:	f8dc a004 	ldr.w	sl, [ip, #4]
d03e44c0:	47d0      	blx	sl
d03e44c2:	7b21      	ldrb	r1, [r4, #12]
d03e44c4:	7b60      	ldrb	r0, [r4, #13]
d03e44c6:	234e      	movs	r3, #78	; 0x4e
d03e44c8:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e44cc:	2202      	movs	r2, #2
d03e44ce:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
d03e44d2:	f894 e00f 	ldrb.w	lr, [r4, #15]
d03e44d6:	ea41 400c 	orr.w	r0, r1, ip, lsl #16
d03e44da:	2183      	movs	r1, #131	; 0x83
d03e44dc:	ea40 6c0e 	orr.w	ip, r0, lr, lsl #24
d03e44e0:	f240 10a3 	movw	r0, #419	; 0x1a3
d03e44e4:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e44e8:	f8dc a004 	ldr.w	sl, [ip, #4]
d03e44ec:	47d0      	blx	sl
d03e44ee:	7b21      	ldrb	r1, [r4, #12]
d03e44f0:	201d      	movs	r0, #29
d03e44f2:	7b63      	ldrb	r3, [r4, #13]
d03e44f4:	f7fe bf9a 	b.w	d03e342c <ui_redraw_backbuffer+0x5fc>
d03e44f8:	7b21      	ldrb	r1, [r4, #12]
d03e44fa:	200d      	movs	r0, #13
d03e44fc:	7b63      	ldrb	r3, [r4, #13]
d03e44fe:	7ba2      	ldrb	r2, [r4, #14]
d03e4500:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e4504:	7be3      	ldrb	r3, [r4, #15]
d03e4506:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e450a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e450e:	685b      	ldr	r3, [r3, #4]
d03e4510:	68db      	ldr	r3, [r3, #12]
d03e4512:	4798      	blx	r3
d03e4514:	7b22      	ldrb	r2, [r4, #12]
d03e4516:	7b63      	ldrb	r3, [r4, #13]
d03e4518:	217c      	movs	r1, #124	; 0x7c
d03e451a:	7ba5      	ldrb	r5, [r4, #14]
d03e451c:	201e      	movs	r0, #30
d03e451e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03e4522:	7be3      	ldrb	r3, [r4, #15]
d03e4524:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d03e4528:	4a39      	ldr	r2, [pc, #228]	; (d03e4610 <ui_redraw_backbuffer+0x17e0>)
d03e452a:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e452e:	685b      	ldr	r3, [r3, #4]
d03e4530:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e4532:	4798      	blx	r3
d03e4534:	f7ff b8d1 	b.w	d03e36da <ui_redraw_backbuffer+0x8aa>
d03e4538:	9b05      	ldr	r3, [sp, #20]
d03e453a:	2160      	movs	r1, #96	; 0x60
d03e453c:	4a35      	ldr	r2, [pc, #212]	; (d03e4614 <ui_redraw_backbuffer+0x17e4>)
d03e453e:	4638      	mov	r0, r7
d03e4540:	9300      	str	r3, [sp, #0]
d03e4542:	4b35      	ldr	r3, [pc, #212]	; (d03e4618 <ui_redraw_backbuffer+0x17e8>)
d03e4544:	781b      	ldrb	r3, [r3, #0]
d03e4546:	f003 fc25 	bl	d03e7d94 <sniprintf>
d03e454a:	7b21      	ldrb	r1, [r4, #12]
d03e454c:	7b63      	ldrb	r3, [r4, #13]
d03e454e:	2018      	movs	r0, #24
d03e4550:	7ba2      	ldrb	r2, [r4, #14]
d03e4552:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e4556:	7be3      	ldrb	r3, [r4, #15]
d03e4558:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e455c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e4560:	685b      	ldr	r3, [r3, #4]
d03e4562:	68db      	ldr	r3, [r3, #12]
d03e4564:	4798      	blx	r3
d03e4566:	7b20      	ldrb	r0, [r4, #12]
d03e4568:	7b66      	ldrb	r6, [r4, #13]
d03e456a:	463a      	mov	r2, r7
d03e456c:	7ba5      	ldrb	r5, [r4, #14]
d03e456e:	21fa      	movs	r1, #250	; 0xfa
d03e4570:	ea40 2606 	orr.w	r6, r0, r6, lsl #8
d03e4574:	7be3      	ldrb	r3, [r4, #15]
d03e4576:	f44f 70b4 	mov.w	r0, #360	; 0x168
d03e457a:	e532      	b.n	d03e3fe2 <ui_redraw_backbuffer+0x11b2>
d03e457c:	2200      	movs	r2, #0
d03e457e:	f7fe bdfb 	b.w	d03e3178 <ui_redraw_backbuffer+0x348>
d03e4582:	4b20      	ldr	r3, [pc, #128]	; (d03e4604 <ui_redraw_backbuffer+0x17d4>)
d03e4584:	881b      	ldrh	r3, [r3, #0]
d03e4586:	3b82      	subs	r3, #130	; 0x82
d03e4588:	b29b      	uxth	r3, r3
d03e458a:	2b4f      	cmp	r3, #79	; 0x4f
d03e458c:	d806      	bhi.n	d03e459c <ui_redraw_backbuffer+0x176c>
d03e458e:	4b1e      	ldr	r3, [pc, #120]	; (d03e4608 <ui_redraw_backbuffer+0x17d8>)
d03e4590:	881b      	ldrh	r3, [r3, #0]
d03e4592:	f5a3 73d1 	sub.w	r3, r3, #418	; 0x1a2
d03e4596:	b29b      	uxth	r3, r3
d03e4598:	2b21      	cmp	r3, #33	; 0x21
d03e459a:	d95f      	bls.n	d03e465c <ui_redraw_backbuffer+0x182c>
d03e459c:	4e1f      	ldr	r6, [pc, #124]	; (d03e461c <ui_redraw_backbuffer+0x17ec>)
d03e459e:	f04f 081c 	mov.w	r8, #28
d03e45a2:	2500      	movs	r5, #0
d03e45a4:	f04f 090f 	mov.w	r9, #15
d03e45a8:	f7fe beaa 	b.w	d03e3300 <ui_redraw_backbuffer+0x4d0>
d03e45ac:	4b1c      	ldr	r3, [pc, #112]	; (d03e4620 <ui_redraw_backbuffer+0x17f0>)
d03e45ae:	f7fe bfcc 	b.w	d03e354a <ui_redraw_backbuffer+0x71a>
d03e45b2:	2b01      	cmp	r3, #1
d03e45b4:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e45b8:	f04f 0310 	mov.w	r3, #16
d03e45bc:	d035      	beq.n	d03e462a <ui_redraw_backbuffer+0x17fa>
d03e45be:	ea40 200c 	orr.w	r0, r0, ip, lsl #8
d03e45c2:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e45c6:	2228      	movs	r2, #40	; 0x28
d03e45c8:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d03e45cc:	209e      	movs	r0, #158	; 0x9e
d03e45ce:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d03e45d2:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e45d6:	f8dc 8004 	ldr.w	r8, [ip, #4]
d03e45da:	47c0      	blx	r8
d03e45dc:	f7fe be2d 	b.w	d03e323a <ui_redraw_backbuffer+0x40a>
d03e45e0:	460a      	mov	r2, r1
d03e45e2:	f7fe bdc9 	b.w	d03e3178 <ui_redraw_backbuffer+0x348>
d03e45e6:	9305      	str	r3, [sp, #20]
d03e45e8:	f7fe bdf2 	b.w	d03e31d0 <ui_redraw_backbuffer+0x3a0>
d03e45ec:	d03e9508 	.word	0xd03e9508
d03e45f0:	d03e9bbc 	.word	0xd03e9bbc
d03e45f4:	d03ea7fe 	.word	0xd03ea7fe
d03e45f8:	d03ea7f4 	.word	0xd03ea7f4
d03e45fc:	d03e93f4 	.word	0xd03e93f4
d03e4600:	d03ea634 	.word	0xd03ea634
d03e4604:	d03ea63c 	.word	0xd03ea63c
d03e4608:	d03ea63a 	.word	0xd03ea63a
d03e460c:	d03e91d8 	.word	0xd03e91d8
d03e4610:	d03e9414 	.word	0xd03e9414
d03e4614:	d03e9474 	.word	0xd03e9474
d03e4618:	d03ea805 	.word	0xd03ea805
d03e461c:	d03e91d0 	.word	0xd03e91d0
d03e4620:	d03e91e0 	.word	0xd03e91e0
d03e4624:	225a      	movs	r2, #90	; 0x5a
d03e4626:	f7fe bda7 	b.w	d03e3178 <ui_redraw_backbuffer+0x348>
d03e462a:	ea40 200c 	orr.w	r0, r0, ip, lsl #8
d03e462e:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e4632:	2212      	movs	r2, #18
d03e4634:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d03e4638:	2086      	movs	r0, #134	; 0x86
d03e463a:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d03e463e:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e4642:	f8dc 8004 	ldr.w	r8, [ip, #4]
d03e4646:	47c0      	blx	r8
d03e4648:	f7fe bdf7 	b.w	d03e323a <ui_redraw_backbuffer+0x40a>
d03e464c:	4e07      	ldr	r6, [pc, #28]	; (d03e466c <ui_redraw_backbuffer+0x183c>)
d03e464e:	f04f 0814 	mov.w	r8, #20
d03e4652:	2501      	movs	r5, #1
d03e4654:	f04f 0919 	mov.w	r9, #25
d03e4658:	f7fe be52 	b.w	d03e3300 <ui_redraw_backbuffer+0x4d0>
d03e465c:	9d04      	ldr	r5, [sp, #16]
d03e465e:	f04f 0814 	mov.w	r8, #20
d03e4662:	4e03      	ldr	r6, [pc, #12]	; (d03e4670 <ui_redraw_backbuffer+0x1840>)
d03e4664:	f04f 090f 	mov.w	r9, #15
d03e4668:	f7fe be4a 	b.w	d03e3300 <ui_redraw_backbuffer+0x4d0>
d03e466c:	d03e91d8 	.word	0xd03e91d8
d03e4670:	d03e91d0 	.word	0xd03e91d0

d03e4674 <midi_rx_byte>:
d03e4674:	0603      	lsls	r3, r0, #24
d03e4676:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e467a:	d447      	bmi.n	d03e470c <midi_rx_byte+0x98>
d03e467c:	4ba8      	ldr	r3, [pc, #672]	; (d03e4920 <midi_rx_byte+0x2ac>)
d03e467e:	781b      	ldrb	r3, [r3, #0]
d03e4680:	2b00      	cmp	r3, #0
d03e4682:	d141      	bne.n	d03e4708 <midi_rx_byte+0x94>
d03e4684:	49a7      	ldr	r1, [pc, #668]	; (d03e4924 <midi_rx_byte+0x2b0>)
d03e4686:	780b      	ldrb	r3, [r1, #0]
d03e4688:	2b00      	cmp	r3, #0
d03e468a:	d059      	beq.n	d03e4740 <midi_rx_byte+0xcc>
d03e468c:	4da6      	ldr	r5, [pc, #664]	; (d03e4928 <midi_rx_byte+0x2b4>)
d03e468e:	782a      	ldrb	r2, [r5, #0]
d03e4690:	2a01      	cmp	r2, #1
d03e4692:	f240 80d8 	bls.w	d03e4846 <midi_rx_byte+0x1d2>
d03e4696:	48a5      	ldr	r0, [pc, #660]	; (d03e492c <midi_rx_byte+0x2b8>)
d03e4698:	7804      	ldrb	r4, [r0, #0]
d03e469a:	4294      	cmp	r4, r2
d03e469c:	d834      	bhi.n	d03e4708 <midi_rx_byte+0x94>
d03e469e:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
d03e46a2:	f003 030f 	and.w	r3, r3, #15
d03e46a6:	2ab0      	cmp	r2, #176	; 0xb0
d03e46a8:	f000 80d1 	beq.w	d03e484e <midi_rx_byte+0x1da>
d03e46ac:	d964      	bls.n	d03e4778 <midi_rx_byte+0x104>
d03e46ae:	2ac0      	cmp	r2, #192	; 0xc0
d03e46b0:	f000 8112 	beq.w	d03e48d8 <midi_rx_byte+0x264>
d03e46b4:	2ae0      	cmp	r2, #224	; 0xe0
d03e46b6:	d122      	bne.n	d03e46fe <midi_rx_byte+0x8a>
d03e46b8:	4c9d      	ldr	r4, [pc, #628]	; (d03e4930 <midi_rx_byte+0x2bc>)
d03e46ba:	4e9e      	ldr	r6, [pc, #632]	; (d03e4934 <midi_rx_byte+0x2c0>)
d03e46bc:	7822      	ldrb	r2, [r4, #0]
d03e46be:	7836      	ldrb	r6, [r6, #0]
d03e46c0:	3201      	adds	r2, #1
d03e46c2:	489d      	ldr	r0, [pc, #628]	; (d03e4938 <midi_rx_byte+0x2c4>)
d03e46c4:	f002 027f 	and.w	r2, r2, #127	; 0x7f
d03e46c8:	f890 c000 	ldrb.w	ip, [r0]
d03e46cc:	7847      	ldrb	r7, [r0, #1]
d03e46ce:	42b2      	cmp	r2, r6
d03e46d0:	f000 80b4 	beq.w	d03e483c <midi_rx_byte+0x1c8>
d03e46d4:	7826      	ldrb	r6, [r4, #0]
d03e46d6:	f04f 0e03 	mov.w	lr, #3
d03e46da:	4898      	ldr	r0, [pc, #608]	; (d03e493c <midi_rx_byte+0x2c8>)
d03e46dc:	b2f6      	uxtb	r6, r6
d03e46de:	f800 e026 	strb.w	lr, [r0, r6, lsl #2]
d03e46e2:	7826      	ldrb	r6, [r4, #0]
d03e46e4:	eb00 0686 	add.w	r6, r0, r6, lsl #2
d03e46e8:	7073      	strb	r3, [r6, #1]
d03e46ea:	7823      	ldrb	r3, [r4, #0]
d03e46ec:	eb00 0383 	add.w	r3, r0, r3, lsl #2
d03e46f0:	f883 c002 	strb.w	ip, [r3, #2]
d03e46f4:	7823      	ldrb	r3, [r4, #0]
d03e46f6:	eb00 0083 	add.w	r0, r0, r3, lsl #2
d03e46fa:	70c7      	strb	r7, [r0, #3]
d03e46fc:	7022      	strb	r2, [r4, #0]
d03e46fe:	4b90      	ldr	r3, [pc, #576]	; (d03e4940 <midi_rx_byte+0x2cc>)
d03e4700:	2200      	movs	r2, #0
d03e4702:	781b      	ldrb	r3, [r3, #0]
d03e4704:	702a      	strb	r2, [r5, #0]
d03e4706:	700b      	strb	r3, [r1, #0]
d03e4708:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03e470c:	28f7      	cmp	r0, #247	; 0xf7
d03e470e:	d8fb      	bhi.n	d03e4708 <midi_rx_byte+0x94>
d03e4710:	28f0      	cmp	r0, #240	; 0xf0
d03e4712:	d067      	beq.n	d03e47e4 <midi_rx_byte+0x170>
d03e4714:	28f7      	cmp	r0, #247	; 0xf7
d03e4716:	d026      	beq.n	d03e4766 <midi_rx_byte+0xf2>
d03e4718:	4a81      	ldr	r2, [pc, #516]	; (d03e4920 <midi_rx_byte+0x2ac>)
d03e471a:	2300      	movs	r3, #0
d03e471c:	28ef      	cmp	r0, #239	; 0xef
d03e471e:	7013      	strb	r3, [r2, #0]
d03e4720:	d85e      	bhi.n	d03e47e0 <midi_rx_byte+0x16c>
d03e4722:	f000 04e0 	and.w	r4, r0, #224	; 0xe0
d03e4726:	4a86      	ldr	r2, [pc, #536]	; (d03e4940 <midi_rx_byte+0x2cc>)
d03e4728:	4980      	ldr	r1, [pc, #512]	; (d03e492c <midi_rx_byte+0x2b8>)
d03e472a:	2cc0      	cmp	r4, #192	; 0xc0
d03e472c:	7010      	strb	r0, [r2, #0]
d03e472e:	4d7d      	ldr	r5, [pc, #500]	; (d03e4924 <midi_rx_byte+0x2b0>)
d03e4730:	bf0c      	ite	eq
d03e4732:	2401      	moveq	r4, #1
d03e4734:	2402      	movne	r4, #2
d03e4736:	4a7c      	ldr	r2, [pc, #496]	; (d03e4928 <midi_rx_byte+0x2b4>)
d03e4738:	7028      	strb	r0, [r5, #0]
d03e473a:	700c      	strb	r4, [r1, #0]
d03e473c:	7013      	strb	r3, [r2, #0]
d03e473e:	e7e3      	b.n	d03e4708 <midi_rx_byte+0x94>
d03e4740:	4a7f      	ldr	r2, [pc, #508]	; (d03e4940 <midi_rx_byte+0x2cc>)
d03e4742:	7812      	ldrb	r2, [r2, #0]
d03e4744:	f002 04e0 	and.w	r4, r2, #224	; 0xe0
d03e4748:	700a      	strb	r2, [r1, #0]
d03e474a:	2cc0      	cmp	r4, #192	; 0xc0
d03e474c:	d13e      	bne.n	d03e47cc <midi_rx_byte+0x158>
d03e474e:	4d77      	ldr	r5, [pc, #476]	; (d03e492c <midi_rx_byte+0x2b8>)
d03e4750:	2401      	movs	r4, #1
d03e4752:	461e      	mov	r6, r3
d03e4754:	4613      	mov	r3, r2
d03e4756:	702c      	strb	r4, [r5, #0]
d03e4758:	4d73      	ldr	r5, [pc, #460]	; (d03e4928 <midi_rx_byte+0x2b4>)
d03e475a:	1c72      	adds	r2, r6, #1
d03e475c:	4f76      	ldr	r7, [pc, #472]	; (d03e4938 <midi_rx_byte+0x2c4>)
d03e475e:	b2d2      	uxtb	r2, r2
d03e4760:	55b8      	strb	r0, [r7, r6]
d03e4762:	702a      	strb	r2, [r5, #0]
d03e4764:	e799      	b.n	d03e469a <midi_rx_byte+0x26>
d03e4766:	486e      	ldr	r0, [pc, #440]	; (d03e4920 <midi_rx_byte+0x2ac>)
d03e4768:	2300      	movs	r3, #0
d03e476a:	496e      	ldr	r1, [pc, #440]	; (d03e4924 <midi_rx_byte+0x2b0>)
d03e476c:	4a6e      	ldr	r2, [pc, #440]	; (d03e4928 <midi_rx_byte+0x2b4>)
d03e476e:	7003      	strb	r3, [r0, #0]
d03e4770:	700b      	strb	r3, [r1, #0]
d03e4772:	7013      	strb	r3, [r2, #0]
d03e4774:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03e4778:	2a80      	cmp	r2, #128	; 0x80
d03e477a:	f000 8096 	beq.w	d03e48aa <midi_rx_byte+0x236>
d03e477e:	2a90      	cmp	r2, #144	; 0x90
d03e4780:	d1bd      	bne.n	d03e46fe <midi_rx_byte+0x8a>
d03e4782:	4c6d      	ldr	r4, [pc, #436]	; (d03e4938 <midi_rx_byte+0x2c4>)
d03e4784:	7867      	ldrb	r7, [r4, #1]
d03e4786:	2f00      	cmp	r7, #0
d03e4788:	d137      	bne.n	d03e47fa <midi_rx_byte+0x186>
d03e478a:	4a69      	ldr	r2, [pc, #420]	; (d03e4930 <midi_rx_byte+0x2bc>)
d03e478c:	4e69      	ldr	r6, [pc, #420]	; (d03e4934 <midi_rx_byte+0x2c0>)
d03e478e:	7810      	ldrb	r0, [r2, #0]
d03e4790:	7837      	ldrb	r7, [r6, #0]
d03e4792:	3001      	adds	r0, #1
d03e4794:	f894 c000 	ldrb.w	ip, [r4]
d03e4798:	f000 007f 	and.w	r0, r0, #127	; 0x7f
d03e479c:	42b8      	cmp	r0, r7
d03e479e:	f000 8101 	beq.w	d03e49a4 <midi_rx_byte+0x330>
d03e47a2:	7816      	ldrb	r6, [r2, #0]
d03e47a4:	2700      	movs	r7, #0
d03e47a6:	4c65      	ldr	r4, [pc, #404]	; (d03e493c <midi_rx_byte+0x2c8>)
d03e47a8:	b2f6      	uxtb	r6, r6
d03e47aa:	f804 7026 	strb.w	r7, [r4, r6, lsl #2]
d03e47ae:	7816      	ldrb	r6, [r2, #0]
d03e47b0:	eb04 0686 	add.w	r6, r4, r6, lsl #2
d03e47b4:	7073      	strb	r3, [r6, #1]
d03e47b6:	7813      	ldrb	r3, [r2, #0]
d03e47b8:	eb04 0383 	add.w	r3, r4, r3, lsl #2
d03e47bc:	f883 c002 	strb.w	ip, [r3, #2]
d03e47c0:	7813      	ldrb	r3, [r2, #0]
d03e47c2:	eb04 0483 	add.w	r4, r4, r3, lsl #2
d03e47c6:	70e7      	strb	r7, [r4, #3]
d03e47c8:	7010      	strb	r0, [r2, #0]
d03e47ca:	e798      	b.n	d03e46fe <midi_rx_byte+0x8a>
d03e47cc:	4e57      	ldr	r6, [pc, #348]	; (d03e492c <midi_rx_byte+0x2b8>)
d03e47ce:	2402      	movs	r4, #2
d03e47d0:	4d55      	ldr	r5, [pc, #340]	; (d03e4928 <midi_rx_byte+0x2b4>)
d03e47d2:	7034      	strb	r4, [r6, #0]
d03e47d4:	702b      	strb	r3, [r5, #0]
d03e47d6:	2a00      	cmp	r2, #0
d03e47d8:	d096      	beq.n	d03e4708 <midi_rx_byte+0x94>
d03e47da:	461e      	mov	r6, r3
d03e47dc:	4613      	mov	r3, r2
d03e47de:	e7bc      	b.n	d03e475a <midi_rx_byte+0xe6>
d03e47e0:	4857      	ldr	r0, [pc, #348]	; (d03e4940 <midi_rx_byte+0x2cc>)
d03e47e2:	e7c2      	b.n	d03e476a <midi_rx_byte+0xf6>
d03e47e4:	2300      	movs	r3, #0
d03e47e6:	4c4e      	ldr	r4, [pc, #312]	; (d03e4920 <midi_rx_byte+0x2ac>)
d03e47e8:	2501      	movs	r5, #1
d03e47ea:	4855      	ldr	r0, [pc, #340]	; (d03e4940 <midi_rx_byte+0x2cc>)
d03e47ec:	494d      	ldr	r1, [pc, #308]	; (d03e4924 <midi_rx_byte+0x2b0>)
d03e47ee:	4a4e      	ldr	r2, [pc, #312]	; (d03e4928 <midi_rx_byte+0x2b4>)
d03e47f0:	7025      	strb	r5, [r4, #0]
d03e47f2:	7003      	strb	r3, [r0, #0]
d03e47f4:	700b      	strb	r3, [r1, #0]
d03e47f6:	7013      	strb	r3, [r2, #0]
d03e47f8:	e786      	b.n	d03e4708 <midi_rx_byte+0x94>
d03e47fa:	4e4d      	ldr	r6, [pc, #308]	; (d03e4930 <midi_rx_byte+0x2bc>)
d03e47fc:	484d      	ldr	r0, [pc, #308]	; (d03e4934 <midi_rx_byte+0x2c0>)
d03e47fe:	7832      	ldrb	r2, [r6, #0]
d03e4800:	7800      	ldrb	r0, [r0, #0]
d03e4802:	3201      	adds	r2, #1
d03e4804:	f894 c000 	ldrb.w	ip, [r4]
d03e4808:	f002 027f 	and.w	r2, r2, #127	; 0x7f
d03e480c:	4282      	cmp	r2, r0
d03e480e:	d015      	beq.n	d03e483c <midi_rx_byte+0x1c8>
d03e4810:	7834      	ldrb	r4, [r6, #0]
d03e4812:	f04f 0e01 	mov.w	lr, #1
d03e4816:	4849      	ldr	r0, [pc, #292]	; (d03e493c <midi_rx_byte+0x2c8>)
d03e4818:	b2e4      	uxtb	r4, r4
d03e481a:	f800 e024 	strb.w	lr, [r0, r4, lsl #2]
d03e481e:	7834      	ldrb	r4, [r6, #0]
d03e4820:	eb00 0484 	add.w	r4, r0, r4, lsl #2
d03e4824:	7063      	strb	r3, [r4, #1]
d03e4826:	7833      	ldrb	r3, [r6, #0]
d03e4828:	eb00 0383 	add.w	r3, r0, r3, lsl #2
d03e482c:	f883 c002 	strb.w	ip, [r3, #2]
d03e4830:	7833      	ldrb	r3, [r6, #0]
d03e4832:	eb00 0083 	add.w	r0, r0, r3, lsl #2
d03e4836:	70c7      	strb	r7, [r0, #3]
d03e4838:	7032      	strb	r2, [r6, #0]
d03e483a:	e760      	b.n	d03e46fe <midi_rx_byte+0x8a>
d03e483c:	4a41      	ldr	r2, [pc, #260]	; (d03e4944 <midi_rx_byte+0x2d0>)
d03e483e:	6813      	ldr	r3, [r2, #0]
d03e4840:	3301      	adds	r3, #1
d03e4842:	6013      	str	r3, [r2, #0]
d03e4844:	e75b      	b.n	d03e46fe <midi_rx_byte+0x8a>
d03e4846:	4c39      	ldr	r4, [pc, #228]	; (d03e492c <midi_rx_byte+0x2b8>)
d03e4848:	4616      	mov	r6, r2
d03e484a:	7824      	ldrb	r4, [r4, #0]
d03e484c:	e785      	b.n	d03e475a <midi_rx_byte+0xe6>
d03e484e:	4c3a      	ldr	r4, [pc, #232]	; (d03e4938 <midi_rx_byte+0x2c4>)
d03e4850:	7822      	ldrb	r2, [r4, #0]
d03e4852:	2a78      	cmp	r2, #120	; 0x78
d03e4854:	d078      	beq.n	d03e4948 <midi_rx_byte+0x2d4>
d03e4856:	2a7b      	cmp	r2, #123	; 0x7b
d03e4858:	d076      	beq.n	d03e4948 <midi_rx_byte+0x2d4>
d03e485a:	2a0b      	cmp	r2, #11
d03e485c:	bf18      	it	ne
d03e485e:	2a07      	cmpne	r2, #7
d03e4860:	d002      	beq.n	d03e4868 <midi_rx_byte+0x1f4>
d03e4862:	2a79      	cmp	r2, #121	; 0x79
d03e4864:	f47f af4b 	bne.w	d03e46fe <midi_rx_byte+0x8a>
d03e4868:	4e31      	ldr	r6, [pc, #196]	; (d03e4930 <midi_rx_byte+0x2bc>)
d03e486a:	4f32      	ldr	r7, [pc, #200]	; (d03e4934 <midi_rx_byte+0x2c0>)
d03e486c:	7830      	ldrb	r0, [r6, #0]
d03e486e:	783f      	ldrb	r7, [r7, #0]
d03e4870:	3001      	adds	r0, #1
d03e4872:	f894 c001 	ldrb.w	ip, [r4, #1]
d03e4876:	f000 007f 	and.w	r0, r0, #127	; 0x7f
d03e487a:	42b8      	cmp	r0, r7
d03e487c:	d0de      	beq.n	d03e483c <midi_rx_byte+0x1c8>
d03e487e:	7837      	ldrb	r7, [r6, #0]
d03e4880:	f04f 0e04 	mov.w	lr, #4
d03e4884:	4c2d      	ldr	r4, [pc, #180]	; (d03e493c <midi_rx_byte+0x2c8>)
d03e4886:	b2ff      	uxtb	r7, r7
d03e4888:	f804 e027 	strb.w	lr, [r4, r7, lsl #2]
d03e488c:	7837      	ldrb	r7, [r6, #0]
d03e488e:	eb04 0787 	add.w	r7, r4, r7, lsl #2
d03e4892:	707b      	strb	r3, [r7, #1]
d03e4894:	7833      	ldrb	r3, [r6, #0]
d03e4896:	eb04 0383 	add.w	r3, r4, r3, lsl #2
d03e489a:	709a      	strb	r2, [r3, #2]
d03e489c:	7833      	ldrb	r3, [r6, #0]
d03e489e:	eb04 0483 	add.w	r4, r4, r3, lsl #2
d03e48a2:	f884 c003 	strb.w	ip, [r4, #3]
d03e48a6:	7030      	strb	r0, [r6, #0]
d03e48a8:	e729      	b.n	d03e46fe <midi_rx_byte+0x8a>
d03e48aa:	4a21      	ldr	r2, [pc, #132]	; (d03e4930 <midi_rx_byte+0x2bc>)
d03e48ac:	f8df e084 	ldr.w	lr, [pc, #132]	; d03e4934 <midi_rx_byte+0x2c0>
d03e48b0:	7810      	ldrb	r0, [r2, #0]
d03e48b2:	f89e 6000 	ldrb.w	r6, [lr]
d03e48b6:	3001      	adds	r0, #1
d03e48b8:	4c1f      	ldr	r4, [pc, #124]	; (d03e4938 <midi_rx_byte+0x2c4>)
d03e48ba:	f000 007f 	and.w	r0, r0, #127	; 0x7f
d03e48be:	f894 c000 	ldrb.w	ip, [r4]
d03e48c2:	7867      	ldrb	r7, [r4, #1]
d03e48c4:	42b0      	cmp	r0, r6
d03e48c6:	d05e      	beq.n	d03e4986 <midi_rx_byte+0x312>
d03e48c8:	7816      	ldrb	r6, [r2, #0]
d03e48ca:	f04f 0e00 	mov.w	lr, #0
d03e48ce:	4c1b      	ldr	r4, [pc, #108]	; (d03e493c <midi_rx_byte+0x2c8>)
d03e48d0:	b2f6      	uxtb	r6, r6
d03e48d2:	f804 e026 	strb.w	lr, [r4, r6, lsl #2]
d03e48d6:	e76a      	b.n	d03e47ae <midi_rx_byte+0x13a>
d03e48d8:	4c15      	ldr	r4, [pc, #84]	; (d03e4930 <midi_rx_byte+0x2bc>)
d03e48da:	4816      	ldr	r0, [pc, #88]	; (d03e4934 <midi_rx_byte+0x2c0>)
d03e48dc:	7822      	ldrb	r2, [r4, #0]
d03e48de:	7800      	ldrb	r0, [r0, #0]
d03e48e0:	3201      	adds	r2, #1
d03e48e2:	4e15      	ldr	r6, [pc, #84]	; (d03e4938 <midi_rx_byte+0x2c4>)
d03e48e4:	f002 027f 	and.w	r2, r2, #127	; 0x7f
d03e48e8:	7837      	ldrb	r7, [r6, #0]
d03e48ea:	4282      	cmp	r2, r0
d03e48ec:	d0a6      	beq.n	d03e483c <midi_rx_byte+0x1c8>
d03e48ee:	7826      	ldrb	r6, [r4, #0]
d03e48f0:	f04f 0e02 	mov.w	lr, #2
d03e48f4:	4811      	ldr	r0, [pc, #68]	; (d03e493c <midi_rx_byte+0x2c8>)
d03e48f6:	f04f 0c00 	mov.w	ip, #0
d03e48fa:	b2f6      	uxtb	r6, r6
d03e48fc:	f800 e026 	strb.w	lr, [r0, r6, lsl #2]
d03e4900:	7826      	ldrb	r6, [r4, #0]
d03e4902:	eb00 0686 	add.w	r6, r0, r6, lsl #2
d03e4906:	7073      	strb	r3, [r6, #1]
d03e4908:	7823      	ldrb	r3, [r4, #0]
d03e490a:	eb00 0383 	add.w	r3, r0, r3, lsl #2
d03e490e:	709f      	strb	r7, [r3, #2]
d03e4910:	7823      	ldrb	r3, [r4, #0]
d03e4912:	eb00 0083 	add.w	r0, r0, r3, lsl #2
d03e4916:	f880 c003 	strb.w	ip, [r0, #3]
d03e491a:	7022      	strb	r2, [r4, #0]
d03e491c:	e6ef      	b.n	d03e46fe <midi_rx_byte+0x8a>
d03e491e:	bf00      	nop
d03e4920:	d03ea5d4 	.word	0xd03ea5d4
d03e4924:	d03ea5db 	.word	0xd03ea5db
d03e4928:	d03ea5d5 	.word	0xd03ea5d5
d03e492c:	d03ea5da 	.word	0xd03ea5da
d03e4930:	d03ea3cc 	.word	0xd03ea3cc
d03e4934:	d03ea5d0 	.word	0xd03ea5d0
d03e4938:	d03ea5d8 	.word	0xd03ea5d8
d03e493c:	d03ea3d0 	.word	0xd03ea3d0
d03e4940:	d03ea5e8 	.word	0xd03ea5e8
d03e4944:	d03ea3c4 	.word	0xd03ea3c4
d03e4948:	4a23      	ldr	r2, [pc, #140]	; (d03e49d8 <midi_rx_byte+0x364>)
d03e494a:	4c24      	ldr	r4, [pc, #144]	; (d03e49dc <midi_rx_byte+0x368>)
d03e494c:	7810      	ldrb	r0, [r2, #0]
d03e494e:	7826      	ldrb	r6, [r4, #0]
d03e4950:	3001      	adds	r0, #1
d03e4952:	f000 007f 	and.w	r0, r0, #127	; 0x7f
d03e4956:	42b0      	cmp	r0, r6
d03e4958:	d031      	beq.n	d03e49be <midi_rx_byte+0x34a>
d03e495a:	7816      	ldrb	r6, [r2, #0]
d03e495c:	f04f 0c05 	mov.w	ip, #5
d03e4960:	4c1f      	ldr	r4, [pc, #124]	; (d03e49e0 <midi_rx_byte+0x36c>)
d03e4962:	2700      	movs	r7, #0
d03e4964:	b2f6      	uxtb	r6, r6
d03e4966:	f804 c026 	strb.w	ip, [r4, r6, lsl #2]
d03e496a:	7816      	ldrb	r6, [r2, #0]
d03e496c:	eb04 0686 	add.w	r6, r4, r6, lsl #2
d03e4970:	7073      	strb	r3, [r6, #1]
d03e4972:	7813      	ldrb	r3, [r2, #0]
d03e4974:	eb04 0383 	add.w	r3, r4, r3, lsl #2
d03e4978:	709f      	strb	r7, [r3, #2]
d03e497a:	7813      	ldrb	r3, [r2, #0]
d03e497c:	eb04 0483 	add.w	r4, r4, r3, lsl #2
d03e4980:	70e7      	strb	r7, [r4, #3]
d03e4982:	7010      	strb	r0, [r2, #0]
d03e4984:	e6bb      	b.n	d03e46fe <midi_rx_byte+0x8a>
d03e4986:	f89e 6000 	ldrb.w	r6, [lr]
d03e498a:	f8df 8058 	ldr.w	r8, [pc, #88]	; d03e49e4 <midi_rx_byte+0x370>
d03e498e:	3601      	adds	r6, #1
d03e4990:	f8d8 4000 	ldr.w	r4, [r8]
d03e4994:	f006 067f 	and.w	r6, r6, #127	; 0x7f
d03e4998:	3401      	adds	r4, #1
d03e499a:	f88e 6000 	strb.w	r6, [lr]
d03e499e:	f8c8 4000 	str.w	r4, [r8]
d03e49a2:	e791      	b.n	d03e48c8 <midi_rx_byte+0x254>
d03e49a4:	7837      	ldrb	r7, [r6, #0]
d03e49a6:	f8df e03c 	ldr.w	lr, [pc, #60]	; d03e49e4 <midi_rx_byte+0x370>
d03e49aa:	3701      	adds	r7, #1
d03e49ac:	f8de 4000 	ldr.w	r4, [lr]
d03e49b0:	f007 077f 	and.w	r7, r7, #127	; 0x7f
d03e49b4:	3401      	adds	r4, #1
d03e49b6:	7037      	strb	r7, [r6, #0]
d03e49b8:	f8ce 4000 	str.w	r4, [lr]
d03e49bc:	e6f1      	b.n	d03e47a2 <midi_rx_byte+0x12e>
d03e49be:	7826      	ldrb	r6, [r4, #0]
d03e49c0:	f8df c020 	ldr.w	ip, [pc, #32]	; d03e49e4 <midi_rx_byte+0x370>
d03e49c4:	3601      	adds	r6, #1
d03e49c6:	f8dc 7000 	ldr.w	r7, [ip]
d03e49ca:	f006 067f 	and.w	r6, r6, #127	; 0x7f
d03e49ce:	3701      	adds	r7, #1
d03e49d0:	7026      	strb	r6, [r4, #0]
d03e49d2:	f8cc 7000 	str.w	r7, [ip]
d03e49d6:	e7c0      	b.n	d03e495a <midi_rx_byte+0x2e6>
d03e49d8:	d03ea3cc 	.word	0xd03ea3cc
d03e49dc:	d03ea5d0 	.word	0xd03ea5d0
d03e49e0:	d03ea3d0 	.word	0xd03ea3d0
d03e49e4:	d03ea3c4 	.word	0xd03ea3c4

d03e49e8 <main>:
d03e49e8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e49ec:	4bcd      	ldr	r3, [pc, #820]	; (d03e4d24 <main+0x33c>)
d03e49ee:	2501      	movs	r5, #1
d03e49f0:	f8df 938c 	ldr.w	r9, [pc, #908]	; d03e4d80 <main+0x398>
d03e49f4:	b0a9      	sub	sp, #164	; 0xa4
d03e49f6:	701d      	strb	r5, [r3, #0]
d03e49f8:	f7fb fb20 	bl	d03e003c <initMalloc>
d03e49fc:	f899 3000 	ldrb.w	r3, [r9]
d03e4a00:	2400      	movs	r4, #0
d03e4a02:	f899 2001 	ldrb.w	r2, [r9, #1]
d03e4a06:	f899 1002 	ldrb.w	r1, [r9, #2]
d03e4a0a:	4620      	mov	r0, r4
d03e4a0c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4a10:	f899 2003 	ldrb.w	r2, [r9, #3]
d03e4a14:	4ec4      	ldr	r6, [pc, #784]	; (d03e4d28 <main+0x340>)
d03e4a16:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e4a1a:	f8df a368 	ldr.w	sl, [pc, #872]	; d03e4d84 <main+0x39c>
d03e4a1e:	f8df 8368 	ldr.w	r8, [pc, #872]	; d03e4d88 <main+0x3a0>
d03e4a22:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4a26:	f8df b364 	ldr.w	fp, [pc, #868]	; d03e4d8c <main+0x3a4>
d03e4a2a:	681b      	ldr	r3, [r3, #0]
d03e4a2c:	4798      	blx	r3
d03e4a2e:	f899 3004 	ldrb.w	r3, [r9, #4]
d03e4a32:	f899 2005 	ldrb.w	r2, [r9, #5]
d03e4a36:	f899 1006 	ldrb.w	r1, [r9, #6]
d03e4a3a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4a3e:	f899 2007 	ldrb.w	r2, [r9, #7]
d03e4a42:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e4a46:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4a4a:	689b      	ldr	r3, [r3, #8]
d03e4a4c:	4798      	blx	r3
d03e4a4e:	f899 3014 	ldrb.w	r3, [r9, #20]
d03e4a52:	f899 2015 	ldrb.w	r2, [r9, #21]
d03e4a56:	2080      	movs	r0, #128	; 0x80
d03e4a58:	f899 1016 	ldrb.w	r1, [r9, #22]
d03e4a5c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4a60:	f899 2017 	ldrb.w	r2, [r9, #23]
d03e4a64:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e4a68:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4a6c:	681b      	ldr	r3, [r3, #0]
d03e4a6e:	681b      	ldr	r3, [r3, #0]
d03e4a70:	4798      	blx	r3
d03e4a72:	f899 2014 	ldrb.w	r2, [r9, #20]
d03e4a76:	f899 3015 	ldrb.w	r3, [r9, #21]
d03e4a7a:	f899 0016 	ldrb.w	r0, [r9, #22]
d03e4a7e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03e4a82:	f899 1017 	ldrb.w	r1, [r9, #23]
d03e4a86:	f899 3014 	ldrb.w	r3, [r9, #20]
d03e4a8a:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
d03e4a8e:	f899 7015 	ldrb.w	r7, [r9, #21]
d03e4a92:	f899 0016 	ldrb.w	r0, [r9, #22]
d03e4a96:	ea42 6201 	orr.w	r2, r2, r1, lsl #24
d03e4a9a:	f899 1017 	ldrb.w	r1, [r9, #23]
d03e4a9e:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d03e4aa2:	6812      	ldr	r2, [r2, #0]
d03e4aa4:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e4aa8:	6852      	ldr	r2, [r2, #4]
d03e4aaa:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d03e4aae:	7015      	strb	r5, [r2, #0]
d03e4ab0:	681b      	ldr	r3, [r3, #0]
d03e4ab2:	699b      	ldr	r3, [r3, #24]
d03e4ab4:	4798      	blx	r3
d03e4ab6:	f899 300c 	ldrb.w	r3, [r9, #12]
d03e4aba:	f899 200d 	ldrb.w	r2, [r9, #13]
d03e4abe:	2190      	movs	r1, #144	; 0x90
d03e4ac0:	f899 700e 	ldrb.w	r7, [r9, #14]
d03e4ac4:	20dc      	movs	r0, #220	; 0xdc
d03e4ac6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4aca:	f899 200f 	ldrb.w	r2, [r9, #15]
d03e4ace:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d03e4ad2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4ad6:	681b      	ldr	r3, [r3, #0]
d03e4ad8:	691b      	ldr	r3, [r3, #16]
d03e4ada:	4798      	blx	r3
d03e4adc:	f899 700c 	ldrb.w	r7, [r9, #12]
d03e4ae0:	f899 200d 	ldrb.w	r2, [r9, #13]
d03e4ae4:	f04f 0c02 	mov.w	ip, #2
d03e4ae8:	f899 000e 	ldrb.w	r0, [r9, #14]
d03e4aec:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03e4af0:	ea47 2702 	orr.w	r7, r7, r2, lsl #8
d03e4af4:	f899 e00f 	ldrb.w	lr, [r9, #15]
d03e4af8:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03e4afc:	4619      	mov	r1, r3
d03e4afe:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d03e4b02:	4610      	mov	r0, r2
d03e4b04:	ea47 670e 	orr.w	r7, r7, lr, lsl #24
d03e4b08:	683f      	ldr	r7, [r7, #0]
d03e4b0a:	f8cd c000 	str.w	ip, [sp]
d03e4b0e:	697f      	ldr	r7, [r7, #20]
d03e4b10:	47b8      	blx	r7
d03e4b12:	f899 300c 	ldrb.w	r3, [r9, #12]
d03e4b16:	f899 200d 	ldrb.w	r2, [r9, #13]
d03e4b1a:	f899 100e 	ldrb.w	r1, [r9, #14]
d03e4b1e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4b22:	f899 200f 	ldrb.w	r2, [r9, #15]
d03e4b26:	4881      	ldr	r0, [pc, #516]	; (d03e4d2c <main+0x344>)
d03e4b28:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e4b2c:	4f80      	ldr	r7, [pc, #512]	; (d03e4d30 <main+0x348>)
d03e4b2e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4b32:	681b      	ldr	r3, [r3, #0]
d03e4b34:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d03e4b36:	4798      	blx	r3
d03e4b38:	f899 300c 	ldrb.w	r3, [r9, #12]
d03e4b3c:	f899 200d 	ldrb.w	r2, [r9, #13]
d03e4b40:	f899 100e 	ldrb.w	r1, [r9, #14]
d03e4b44:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4b48:	f899 200f 	ldrb.w	r2, [r9, #15]
d03e4b4c:	4877      	ldr	r0, [pc, #476]	; (d03e4d2c <main+0x344>)
d03e4b4e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e4b52:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4b56:	681b      	ldr	r3, [r3, #0]
d03e4b58:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d03e4b5a:	4798      	blx	r3
d03e4b5c:	f899 300c 	ldrb.w	r3, [r9, #12]
d03e4b60:	f899 200d 	ldrb.w	r2, [r9, #13]
d03e4b64:	f899 100e 	ldrb.w	r1, [r9, #14]
d03e4b68:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4b6c:	f899 200f 	ldrb.w	r2, [r9, #15]
d03e4b70:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e4b74:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4b78:	681b      	ldr	r3, [r3, #0]
d03e4b7a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d03e4b7c:	4798      	blx	r3
d03e4b7e:	f899 300c 	ldrb.w	r3, [r9, #12]
d03e4b82:	f899 200d 	ldrb.w	r2, [r9, #13]
d03e4b86:	f899 100e 	ldrb.w	r1, [r9, #14]
d03e4b8a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4b8e:	f899 200f 	ldrb.w	r2, [r9, #15]
d03e4b92:	6038      	str	r0, [r7, #0]
d03e4b94:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e4b98:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4b9c:	681b      	ldr	r3, [r3, #0]
d03e4b9e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d03e4ba0:	4798      	blx	r3
d03e4ba2:	4a64      	ldr	r2, [pc, #400]	; (d03e4d34 <main+0x34c>)
d03e4ba4:	f44f 3316 	mov.w	r3, #153600	; 0x25800
d03e4ba8:	4963      	ldr	r1, [pc, #396]	; (d03e4d38 <main+0x350>)
d03e4baa:	6010      	str	r0, [r2, #0]
d03e4bac:	f44f 72a0 	mov.w	r2, #320	; 0x140
d03e4bb0:	60f3      	str	r3, [r6, #12]
d03e4bb2:	4618      	mov	r0, r3
d03e4bb4:	6071      	str	r1, [r6, #4]
d03e4bb6:	8132      	strh	r2, [r6, #8]
d03e4bb8:	f002 ff56 	bl	d03e7a68 <malloc>
d03e4bbc:	4603      	mov	r3, r0
d03e4bbe:	4630      	mov	r0, r6
d03e4bc0:	6033      	str	r3, [r6, #0]
d03e4bc2:	f899 300c 	ldrb.w	r3, [r9, #12]
d03e4bc6:	f899 200d 	ldrb.w	r2, [r9, #13]
d03e4bca:	f899 100e 	ldrb.w	r1, [r9, #14]
d03e4bce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4bd2:	f899 200f 	ldrb.w	r2, [r9, #15]
d03e4bd6:	4e59      	ldr	r6, [pc, #356]	; (d03e4d3c <main+0x354>)
d03e4bd8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e4bdc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4be0:	681b      	ldr	r3, [r3, #0]
d03e4be2:	6a1b      	ldr	r3, [r3, #32]
d03e4be4:	4798      	blx	r3
d03e4be6:	f899 300c 	ldrb.w	r3, [r9, #12]
d03e4bea:	f899 200d 	ldrb.w	r2, [r9, #13]
d03e4bee:	f899 100e 	ldrb.w	r1, [r9, #14]
d03e4bf2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4bf6:	f899 200f 	ldrb.w	r2, [r9, #15]
d03e4bfa:	6838      	ldr	r0, [r7, #0]
d03e4bfc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e4c00:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4c04:	681b      	ldr	r3, [r3, #0]
d03e4c06:	69db      	ldr	r3, [r3, #28]
d03e4c08:	4798      	blx	r3
d03e4c0a:	f899 300c 	ldrb.w	r3, [r9, #12]
d03e4c0e:	f899 200d 	ldrb.w	r2, [r9, #13]
d03e4c12:	f899 100e 	ldrb.w	r1, [r9, #14]
d03e4c16:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4c1a:	f899 200f 	ldrb.w	r2, [r9, #15]
d03e4c1e:	4845      	ldr	r0, [pc, #276]	; (d03e4d34 <main+0x34c>)
d03e4c20:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e4c24:	6800      	ldr	r0, [r0, #0]
d03e4c26:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4c2a:	681b      	ldr	r3, [r3, #0]
d03e4c2c:	699b      	ldr	r3, [r3, #24]
d03e4c2e:	4798      	blx	r3
d03e4c30:	f899 3018 	ldrb.w	r3, [r9, #24]
d03e4c34:	f899 2019 	ldrb.w	r2, [r9, #25]
d03e4c38:	f899 101a 	ldrb.w	r1, [r9, #26]
d03e4c3c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4c40:	f899 201b 	ldrb.w	r2, [r9, #27]
d03e4c44:	483e      	ldr	r0, [pc, #248]	; (d03e4d40 <main+0x358>)
d03e4c46:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e4c4a:	7004      	strb	r4, [r0, #0]
d03e4c4c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4c50:	681b      	ldr	r3, [r3, #0]
d03e4c52:	4798      	blx	r3
d03e4c54:	f899 3014 	ldrb.w	r3, [r9, #20]
d03e4c58:	f899 1015 	ldrb.w	r1, [r9, #21]
d03e4c5c:	4620      	mov	r0, r4
d03e4c5e:	f899 2016 	ldrb.w	r2, [r9, #22]
d03e4c62:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03e4c66:	f899 1017 	ldrb.w	r1, [r9, #23]
d03e4c6a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4c6e:	220f      	movs	r2, #15
d03e4c70:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d03e4c74:	2118      	movs	r1, #24
d03e4c76:	681b      	ldr	r3, [r3, #0]
d03e4c78:	69db      	ldr	r3, [r3, #28]
d03e4c7a:	4798      	blx	r3
d03e4c7c:	f899 3014 	ldrb.w	r3, [r9, #20]
d03e4c80:	f899 1015 	ldrb.w	r1, [r9, #21]
d03e4c84:	4628      	mov	r0, r5
d03e4c86:	f899 2016 	ldrb.w	r2, [r9, #22]
d03e4c8a:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03e4c8e:	f899 1017 	ldrb.w	r1, [r9, #23]
d03e4c92:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4c96:	220f      	movs	r2, #15
d03e4c98:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d03e4c9c:	2118      	movs	r1, #24
d03e4c9e:	681b      	ldr	r3, [r3, #0]
d03e4ca0:	69db      	ldr	r3, [r3, #28]
d03e4ca2:	4798      	blx	r3
d03e4ca4:	f7fb ff66 	bl	d03e0b74 <sid_soundfont_init>
d03e4ca8:	4621      	mov	r1, r4
d03e4caa:	f44f 7200 	mov.w	r2, #512	; 0x200
d03e4cae:	4825      	ldr	r0, [pc, #148]	; (d03e4d44 <main+0x35c>)
d03e4cb0:	f002 fef0 	bl	d03e7a94 <memset>
d03e4cb4:	4621      	mov	r1, r4
d03e4cb6:	2230      	movs	r2, #48	; 0x30
d03e4cb8:	4650      	mov	r0, sl
d03e4cba:	f002 feeb 	bl	d03e7a94 <memset>
d03e4cbe:	4a22      	ldr	r2, [pc, #136]	; (d03e4d48 <main+0x360>)
d03e4cc0:	4b22      	ldr	r3, [pc, #136]	; (d03e4d4c <main+0x364>)
d03e4cc2:	7015      	strb	r5, [r2, #0]
d03e4cc4:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
d03e4cc6:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
d03e4cca:	f04f 337f 	mov.w	r3, #2139062143	; 0x7f7f7f7f
d03e4cce:	4a20      	ldr	r2, [pc, #128]	; (d03e4d50 <main+0x368>)
d03e4cd0:	26c8      	movs	r6, #200	; 0xc8
d03e4cd2:	20b4      	movs	r0, #180	; 0xb4
d03e4cd4:	6013      	str	r3, [r2, #0]
d03e4cd6:	4621      	mov	r1, r4
d03e4cd8:	6053      	str	r3, [r2, #4]
d03e4cda:	6093      	str	r3, [r2, #8]
d03e4cdc:	60d3      	str	r3, [r2, #12]
d03e4cde:	4a1d      	ldr	r2, [pc, #116]	; (d03e4d54 <main+0x36c>)
d03e4ce0:	6013      	str	r3, [r2, #0]
d03e4ce2:	6053      	str	r3, [r2, #4]
d03e4ce4:	6093      	str	r3, [r2, #8]
d03e4ce6:	60d3      	str	r3, [r2, #12]
d03e4ce8:	2220      	movs	r2, #32
d03e4cea:	4b1b      	ldr	r3, [pc, #108]	; (d03e4d58 <main+0x370>)
d03e4cec:	801e      	strh	r6, [r3, #0]
d03e4cee:	4b1b      	ldr	r3, [pc, #108]	; (d03e4d5c <main+0x374>)
d03e4cf0:	4e1b      	ldr	r6, [pc, #108]	; (d03e4d60 <main+0x378>)
d03e4cf2:	8018      	strh	r0, [r3, #0]
d03e4cf4:	481b      	ldr	r0, [pc, #108]	; (d03e4d64 <main+0x37c>)
d03e4cf6:	f002 fecd 	bl	d03e7a94 <memset>
d03e4cfa:	4a1b      	ldr	r2, [pc, #108]	; (d03e4d68 <main+0x380>)
d03e4cfc:	21f0      	movs	r1, #240	; 0xf0
d03e4cfe:	4b1b      	ldr	r3, [pc, #108]	; (d03e4d6c <main+0x384>)
d03e4d00:	7014      	strb	r4, [r2, #0]
d03e4d02:	22a0      	movs	r2, #160	; 0xa0
d03e4d04:	8031      	strh	r1, [r6, #0]
d03e4d06:	4621      	mov	r1, r4
d03e4d08:	4819      	ldr	r0, [pc, #100]	; (d03e4d70 <main+0x388>)
d03e4d0a:	4e1a      	ldr	r6, [pc, #104]	; (d03e4d74 <main+0x38c>)
d03e4d0c:	7004      	strb	r4, [r0, #0]
d03e4d0e:	8032      	strh	r2, [r6, #0]
d03e4d10:	f44f 72c0 	mov.w	r2, #384	; 0x180
d03e4d14:	701c      	strb	r4, [r3, #0]
d03e4d16:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d03e4d1a:	4817      	ldr	r0, [pc, #92]	; (d03e4d78 <main+0x390>)
d03e4d1c:	4e17      	ldr	r6, [pc, #92]	; (d03e4d7c <main+0x394>)
d03e4d1e:	7004      	strb	r4, [r0, #0]
d03e4d20:	6033      	str	r3, [r6, #0]
d03e4d22:	e035      	b.n	d03e4d90 <main+0x3a8>
d03e4d24:	d03ea368 	.word	0xd03ea368
d03e4d28:	d03ea980 	.word	0xd03ea980
d03e4d2c:	d03e9ebc 	.word	0xd03e9ebc
d03e4d30:	d03ea36c 	.word	0xd03ea36c
d03e4d34:	d03ea370 	.word	0xd03ea370
d03e4d38:	014001e0 	.word	0x014001e0
d03e4d3c:	d03ea3a4 	.word	0xd03ea3a4
d03e4d40:	d03ea369 	.word	0xd03ea369
d03e4d44:	d03ea3d0 	.word	0xd03ea3d0
d03e4d48:	d03ea3c8 	.word	0xd03ea3c8
d03e4d4c:	d03e9994 	.word	0xd03e9994
d03e4d50:	d03ea3b4 	.word	0xd03ea3b4
d03e4d54:	d03ea394 	.word	0xd03ea394
d03e4d58:	d03ea5d2 	.word	0xd03ea5d2
d03e4d5c:	d03ea3ca 	.word	0xd03ea3ca
d03e4d60:	d03ea63a 	.word	0xd03ea63a
d03e4d64:	d03ea374 	.word	0xd03ea374
d03e4d68:	d03ea3cc 	.word	0xd03ea3cc
d03e4d6c:	d03ea5d0 	.word	0xd03ea5d0
d03e4d70:	d03ea620 	.word	0xd03ea620
d03e4d74:	d03ea63c 	.word	0xd03ea63c
d03e4d78:	d03ea5e8 	.word	0xd03ea5e8
d03e4d7c:	d03ea62c 	.word	0xd03ea62c
d03e4d80:	2001f000 	.word	0x2001f000
d03e4d84:	d03ea5f0 	.word	0xd03ea5f0
d03e4d88:	d03ea5dc 	.word	0xd03ea5dc
d03e4d8c:	9e3779b9 	.word	0x9e3779b9
d03e4d90:	4878      	ldr	r0, [pc, #480]	; (d03e4f74 <main+0x58c>)
d03e4d92:	4e79      	ldr	r6, [pc, #484]	; (d03e4f78 <main+0x590>)
d03e4d94:	7004      	strb	r4, [r0, #0]
d03e4d96:	6034      	str	r4, [r6, #0]
d03e4d98:	4878      	ldr	r0, [pc, #480]	; (d03e4f7c <main+0x594>)
d03e4d9a:	4e79      	ldr	r6, [pc, #484]	; (d03e4f80 <main+0x598>)
d03e4d9c:	7004      	strb	r4, [r0, #0]
d03e4d9e:	7034      	strb	r4, [r6, #0]
d03e4da0:	4878      	ldr	r0, [pc, #480]	; (d03e4f84 <main+0x59c>)
d03e4da2:	4e79      	ldr	r6, [pc, #484]	; (d03e4f88 <main+0x5a0>)
d03e4da4:	7004      	strb	r4, [r0, #0]
d03e4da6:	7034      	strb	r4, [r6, #0]
d03e4da8:	4878      	ldr	r0, [pc, #480]	; (d03e4f8c <main+0x5a4>)
d03e4daa:	4e79      	ldr	r6, [pc, #484]	; (d03e4f90 <main+0x5a8>)
d03e4dac:	7004      	strb	r4, [r0, #0]
d03e4dae:	7034      	strb	r4, [r6, #0]
d03e4db0:	4878      	ldr	r0, [pc, #480]	; (d03e4f94 <main+0x5ac>)
d03e4db2:	4e79      	ldr	r6, [pc, #484]	; (d03e4f98 <main+0x5b0>)
d03e4db4:	6030      	str	r0, [r6, #0]
d03e4db6:	4879      	ldr	r0, [pc, #484]	; (d03e4f9c <main+0x5b4>)
d03e4db8:	7004      	strb	r4, [r0, #0]
d03e4dba:	4879      	ldr	r0, [pc, #484]	; (d03e4fa0 <main+0x5b8>)
d03e4dbc:	7004      	strb	r4, [r0, #0]
d03e4dbe:	4879      	ldr	r0, [pc, #484]	; (d03e4fa4 <main+0x5bc>)
d03e4dc0:	7004      	strb	r4, [r0, #0]
d03e4dc2:	4879      	ldr	r0, [pc, #484]	; (d03e4fa8 <main+0x5c0>)
d03e4dc4:	7004      	strb	r4, [r0, #0]
d03e4dc6:	4879      	ldr	r0, [pc, #484]	; (d03e4fac <main+0x5c4>)
d03e4dc8:	7004      	strb	r4, [r0, #0]
d03e4dca:	4879      	ldr	r0, [pc, #484]	; (d03e4fb0 <main+0x5c8>)
d03e4dcc:	7004      	strb	r4, [r0, #0]
d03e4dce:	4879      	ldr	r0, [pc, #484]	; (d03e4fb4 <main+0x5cc>)
d03e4dd0:	7004      	strb	r4, [r0, #0]
d03e4dd2:	4879      	ldr	r0, [pc, #484]	; (d03e4fb8 <main+0x5d0>)
d03e4dd4:	7004      	strb	r4, [r0, #0]
d03e4dd6:	4879      	ldr	r0, [pc, #484]	; (d03e4fbc <main+0x5d4>)
d03e4dd8:	7004      	strb	r4, [r0, #0]
d03e4dda:	4879      	ldr	r0, [pc, #484]	; (d03e4fc0 <main+0x5d8>)
d03e4ddc:	7004      	strb	r4, [r0, #0]
d03e4dde:	4879      	ldr	r0, [pc, #484]	; (d03e4fc4 <main+0x5dc>)
d03e4de0:	7005      	strb	r5, [r0, #0]
d03e4de2:	4879      	ldr	r0, [pc, #484]	; (d03e4fc8 <main+0x5e0>)
d03e4de4:	7004      	strb	r4, [r0, #0]
d03e4de6:	4879      	ldr	r0, [pc, #484]	; (d03e4fcc <main+0x5e4>)
d03e4de8:	7004      	strb	r4, [r0, #0]
d03e4dea:	4879      	ldr	r0, [pc, #484]	; (d03e4fd0 <main+0x5e8>)
d03e4dec:	7004      	strb	r4, [r0, #0]
d03e4dee:	4879      	ldr	r0, [pc, #484]	; (d03e4fd4 <main+0x5ec>)
d03e4df0:	7004      	strb	r4, [r0, #0]
d03e4df2:	4879      	ldr	r0, [pc, #484]	; (d03e4fd8 <main+0x5f0>)
d03e4df4:	7004      	strb	r4, [r0, #0]
d03e4df6:	4879      	ldr	r0, [pc, #484]	; (d03e4fdc <main+0x5f4>)
d03e4df8:	7004      	strb	r4, [r0, #0]
d03e4dfa:	4879      	ldr	r0, [pc, #484]	; (d03e4fe0 <main+0x5f8>)
d03e4dfc:	7003      	strb	r3, [r0, #0]
d03e4dfe:	4b79      	ldr	r3, [pc, #484]	; (d03e4fe4 <main+0x5fc>)
d03e4e00:	4879      	ldr	r0, [pc, #484]	; (d03e4fe8 <main+0x600>)
d03e4e02:	701c      	strb	r4, [r3, #0]
d03e4e04:	4b79      	ldr	r3, [pc, #484]	; (d03e4fec <main+0x604>)
d03e4e06:	701c      	strb	r4, [r3, #0]
d03e4e08:	4b79      	ldr	r3, [pc, #484]	; (d03e4ff0 <main+0x608>)
d03e4e0a:	701d      	strb	r5, [r3, #0]
d03e4e0c:	4b79      	ldr	r3, [pc, #484]	; (d03e4ff4 <main+0x60c>)
d03e4e0e:	701c      	strb	r4, [r3, #0]
d03e4e10:	4b79      	ldr	r3, [pc, #484]	; (d03e4ff8 <main+0x610>)
d03e4e12:	701c      	strb	r4, [r3, #0]
d03e4e14:	4b79      	ldr	r3, [pc, #484]	; (d03e4ffc <main+0x614>)
d03e4e16:	601c      	str	r4, [r3, #0]
d03e4e18:	f002 fe3c 	bl	d03e7a94 <memset>
d03e4e1c:	f899 3020 	ldrb.w	r3, [r9, #32]
d03e4e20:	f899 1021 	ldrb.w	r1, [r9, #33]	; 0x21
d03e4e24:	f899 2022 	ldrb.w	r2, [r9, #34]	; 0x22
d03e4e28:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03e4e2c:	f899 1023 	ldrb.w	r1, [r9, #35]	; 0x23
d03e4e30:	4873      	ldr	r0, [pc, #460]	; (d03e5000 <main+0x618>)
d03e4e32:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4e36:	4a73      	ldr	r2, [pc, #460]	; (d03e5004 <main+0x61c>)
d03e4e38:	6004      	str	r4, [r0, #0]
d03e4e3a:	6014      	str	r4, [r2, #0]
d03e4e3c:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d03e4e40:	4a71      	ldr	r2, [pc, #452]	; (d03e5008 <main+0x620>)
d03e4e42:	4872      	ldr	r0, [pc, #456]	; (d03e500c <main+0x624>)
d03e4e44:	6014      	str	r4, [r2, #0]
d03e4e46:	4a72      	ldr	r2, [pc, #456]	; (d03e5010 <main+0x628>)
d03e4e48:	681b      	ldr	r3, [r3, #0]
d03e4e4a:	6014      	str	r4, [r2, #0]
d03e4e4c:	f8c8 4000 	str.w	r4, [r8]
d03e4e50:	4798      	blx	r3
d03e4e52:	f899 3020 	ldrb.w	r3, [r9, #32]
d03e4e56:	f899 2021 	ldrb.w	r2, [r9, #33]	; 0x21
d03e4e5a:	f899 1022 	ldrb.w	r1, [r9, #34]	; 0x22
d03e4e5e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4e62:	f899 2023 	ldrb.w	r2, [r9, #35]	; 0x23
d03e4e66:	486b      	ldr	r0, [pc, #428]	; (d03e5014 <main+0x62c>)
d03e4e68:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e4e6c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4e70:	685b      	ldr	r3, [r3, #4]
d03e4e72:	4798      	blx	r3
d03e4e74:	f7fd ffdc 	bl	d03e2e30 <ui_redraw_backbuffer>
d03e4e78:	f7fd fabc 	bl	d03e23f4 <midi_process_events>
d03e4e7c:	4b3e      	ldr	r3, [pc, #248]	; (d03e4f78 <main+0x590>)
d03e4e7e:	681d      	ldr	r5, [r3, #0]
d03e4e80:	2d00      	cmp	r5, #0
d03e4e82:	d057      	beq.n	d03e4f34 <main+0x54c>
d03e4e84:	4a3c      	ldr	r2, [pc, #240]	; (d03e4f78 <main+0x590>)
d03e4e86:	2400      	movs	r4, #0
d03e4e88:	6813      	ldr	r3, [r2, #0]
d03e4e8a:	ea23 0305 	bic.w	r3, r3, r5
d03e4e8e:	6013      	str	r3, [r2, #0]
d03e4e90:	e002      	b.n	d03e4e98 <main+0x4b0>
d03e4e92:	3401      	adds	r4, #1
d03e4e94:	2c10      	cmp	r4, #16
d03e4e96:	d04d      	beq.n	d03e4f34 <main+0x54c>
d03e4e98:	fa25 f304 	lsr.w	r3, r5, r4
d03e4e9c:	07d9      	lsls	r1, r3, #31
d03e4e9e:	d5f8      	bpl.n	d03e4e92 <main+0x4aa>
d03e4ea0:	f89a 3000 	ldrb.w	r3, [sl]
d03e4ea4:	b12b      	cbz	r3, d03e4eb2 <main+0x4ca>
d03e4ea6:	f89a 2001 	ldrb.w	r2, [sl, #1]
d03e4eaa:	b2e3      	uxtb	r3, r4
d03e4eac:	429a      	cmp	r2, r3
d03e4eae:	f001 809c 	beq.w	d03e5fea <main+0x1602>
d03e4eb2:	f89a 3008 	ldrb.w	r3, [sl, #8]
d03e4eb6:	b12b      	cbz	r3, d03e4ec4 <main+0x4dc>
d03e4eb8:	f89a 2009 	ldrb.w	r2, [sl, #9]
d03e4ebc:	b2e3      	uxtb	r3, r4
d03e4ebe:	429a      	cmp	r2, r3
d03e4ec0:	f001 8112 	beq.w	d03e60e8 <main+0x1700>
d03e4ec4:	f89a 3010 	ldrb.w	r3, [sl, #16]
d03e4ec8:	b12b      	cbz	r3, d03e4ed6 <main+0x4ee>
d03e4eca:	f89a 2011 	ldrb.w	r2, [sl, #17]
d03e4ece:	b2e3      	uxtb	r3, r4
d03e4ed0:	429a      	cmp	r2, r3
d03e4ed2:	f001 811b 	beq.w	d03e610c <main+0x1724>
d03e4ed6:	f89a 3018 	ldrb.w	r3, [sl, #24]
d03e4eda:	b12b      	cbz	r3, d03e4ee8 <main+0x500>
d03e4edc:	f89a 2019 	ldrb.w	r2, [sl, #25]
d03e4ee0:	b2e3      	uxtb	r3, r4
d03e4ee2:	429a      	cmp	r2, r3
d03e4ee4:	f001 80dc 	beq.w	d03e60a0 <main+0x16b8>
d03e4ee8:	f89a 3020 	ldrb.w	r3, [sl, #32]
d03e4eec:	b12b      	cbz	r3, d03e4efa <main+0x512>
d03e4eee:	f89a 2021 	ldrb.w	r2, [sl, #33]	; 0x21
d03e4ef2:	b2e3      	uxtb	r3, r4
d03e4ef4:	429a      	cmp	r2, r3
d03e4ef6:	f001 80e5 	beq.w	d03e60c4 <main+0x16dc>
d03e4efa:	f89a 3028 	ldrb.w	r3, [sl, #40]	; 0x28
d03e4efe:	2b00      	cmp	r3, #0
d03e4f00:	d0c7      	beq.n	d03e4e92 <main+0x4aa>
d03e4f02:	f89a 2029 	ldrb.w	r2, [sl, #41]	; 0x29
d03e4f06:	b2e3      	uxtb	r3, r4
d03e4f08:	429a      	cmp	r2, r3
d03e4f0a:	d1c2      	bne.n	d03e4e92 <main+0x4aa>
d03e4f0c:	2005      	movs	r0, #5
d03e4f0e:	3401      	adds	r4, #1
d03e4f10:	f7fb fc40 	bl	d03e0794 <sid_voice_note_off>
d03e4f14:	f8d8 3000 	ldr.w	r3, [r8]
d03e4f18:	f04f 0200 	mov.w	r2, #0
d03e4f1c:	2c10      	cmp	r4, #16
d03e4f1e:	f103 0301 	add.w	r3, r3, #1
d03e4f22:	f88a 2028 	strb.w	r2, [sl, #40]	; 0x28
d03e4f26:	f04f 0200 	mov.w	r2, #0
d03e4f2a:	f8c8 3000 	str.w	r3, [r8]
d03e4f2e:	f8aa 202e 	strh.w	r2, [sl, #46]	; 0x2e
d03e4f32:	d1b1      	bne.n	d03e4e98 <main+0x4b0>
d03e4f34:	f899 000c 	ldrb.w	r0, [r9, #12]
d03e4f38:	f899 100d 	ldrb.w	r1, [r9, #13]
d03e4f3c:	f899 200e 	ldrb.w	r2, [r9, #14]
d03e4f40:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e4f44:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e4f48:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e4f4c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e4f50:	681b      	ldr	r3, [r3, #0]
d03e4f52:	68db      	ldr	r3, [r3, #12]
d03e4f54:	4798      	blx	r3
d03e4f56:	f7fd fa4d 	bl	d03e23f4 <midi_process_events>
d03e4f5a:	4b07      	ldr	r3, [pc, #28]	; (d03e4f78 <main+0x590>)
d03e4f5c:	681d      	ldr	r5, [r3, #0]
d03e4f5e:	2d00      	cmp	r5, #0
d03e4f60:	f000 80ab 	beq.w	d03e50ba <main+0x6d2>
d03e4f64:	4a04      	ldr	r2, [pc, #16]	; (d03e4f78 <main+0x590>)
d03e4f66:	2400      	movs	r4, #0
d03e4f68:	6813      	ldr	r3, [r2, #0]
d03e4f6a:	ea23 0305 	bic.w	r3, r3, r5
d03e4f6e:	6013      	str	r3, [r2, #0]
d03e4f70:	e055      	b.n	d03e501e <main+0x636>
d03e4f72:	bf00      	nop
d03e4f74:	d03ea5db 	.word	0xd03ea5db
d03e4f78:	d03ea624 	.word	0xd03ea624
d03e4f7c:	d03ea5d5 	.word	0xd03ea5d5
d03e4f80:	d03ea645 	.word	0xd03ea645
d03e4f84:	d03ea5da 	.word	0xd03ea5da
d03e4f88:	d03ea636 	.word	0xd03ea636
d03e4f8c:	d03ea5d4 	.word	0xd03ea5d4
d03e4f90:	d03ea630 	.word	0xd03ea630
d03e4f94:	03020100 	.word	0x03020100
d03e4f98:	d03ea640 	.word	0xd03ea640
d03e4f9c:	d03ea805 	.word	0xd03ea805
d03e4fa0:	d03ea632 	.word	0xd03ea632
d03e4fa4:	d03ea633 	.word	0xd03ea633
d03e4fa8:	d03ea644 	.word	0xd03ea644
d03e4fac:	d03ea635 	.word	0xd03ea635
d03e4fb0:	d03ea634 	.word	0xd03ea634
d03e4fb4:	d03ea637 	.word	0xd03ea637
d03e4fb8:	d03ea638 	.word	0xd03ea638
d03e4fbc:	d03ea648 	.word	0xd03ea648
d03e4fc0:	d03ea670 	.word	0xd03ea670
d03e4fc4:	d03ea628 	.word	0xd03ea628
d03e4fc8:	d03ea800 	.word	0xd03ea800
d03e4fcc:	d03ea801 	.word	0xd03ea801
d03e4fd0:	d03ea803 	.word	0xd03ea803
d03e4fd4:	d03ea802 	.word	0xd03ea802
d03e4fd8:	d03ea804 	.word	0xd03ea804
d03e4fdc:	d03ea7f5 	.word	0xd03ea7f5
d03e4fe0:	d03ea7fc 	.word	0xd03ea7fc
d03e4fe4:	d03ea7ff 	.word	0xd03ea7ff
d03e4fe8:	d03ea674 	.word	0xd03ea674
d03e4fec:	d03ea7fd 	.word	0xd03ea7fd
d03e4ff0:	d03ea7fe 	.word	0xd03ea7fe
d03e4ff4:	d03ea7f4 	.word	0xd03ea7f4
d03e4ff8:	d03ea631 	.word	0xd03ea631
d03e4ffc:	d03ea7f8 	.word	0xd03ea7f8
d03e5000:	d03ea5e0 	.word	0xd03ea5e0
d03e5004:	d03ea3c4 	.word	0xd03ea3c4
d03e5008:	d03ea5e4 	.word	0xd03ea5e4
d03e500c:	d03e14d1 	.word	0xd03e14d1
d03e5010:	d03ea5ec 	.word	0xd03ea5ec
d03e5014:	d03e4675 	.word	0xd03e4675
d03e5018:	3401      	adds	r4, #1
d03e501a:	2c10      	cmp	r4, #16
d03e501c:	d04d      	beq.n	d03e50ba <main+0x6d2>
d03e501e:	fa25 f304 	lsr.w	r3, r5, r4
d03e5022:	07da      	lsls	r2, r3, #31
d03e5024:	d5f8      	bpl.n	d03e5018 <main+0x630>
d03e5026:	f89a 3000 	ldrb.w	r3, [sl]
d03e502a:	b12b      	cbz	r3, d03e5038 <main+0x650>
d03e502c:	f89a 2001 	ldrb.w	r2, [sl, #1]
d03e5030:	b2e3      	uxtb	r3, r4
d03e5032:	429a      	cmp	r2, r3
d03e5034:	f000 87eb 	beq.w	d03e600e <main+0x1626>
d03e5038:	f89a 3008 	ldrb.w	r3, [sl, #8]
d03e503c:	b12b      	cbz	r3, d03e504a <main+0x662>
d03e503e:	f89a 2009 	ldrb.w	r2, [sl, #9]
d03e5042:	b2e3      	uxtb	r3, r4
d03e5044:	429a      	cmp	r2, r3
d03e5046:	f001 8019 	beq.w	d03e607c <main+0x1694>
d03e504a:	f89a 3010 	ldrb.w	r3, [sl, #16]
d03e504e:	b12b      	cbz	r3, d03e505c <main+0x674>
d03e5050:	f89a 2011 	ldrb.w	r2, [sl, #17]
d03e5054:	b2e3      	uxtb	r3, r4
d03e5056:	429a      	cmp	r2, r3
d03e5058:	f000 87a3 	beq.w	d03e5fa2 <main+0x15ba>
d03e505c:	f89a 3018 	ldrb.w	r3, [sl, #24]
d03e5060:	b12b      	cbz	r3, d03e506e <main+0x686>
d03e5062:	f89a 2019 	ldrb.w	r2, [sl, #25]
d03e5066:	b2e3      	uxtb	r3, r4
d03e5068:	429a      	cmp	r2, r3
d03e506a:	f001 8061 	beq.w	d03e6130 <main+0x1748>
d03e506e:	f89a 3020 	ldrb.w	r3, [sl, #32]
d03e5072:	b12b      	cbz	r3, d03e5080 <main+0x698>
d03e5074:	f89a 2021 	ldrb.w	r2, [sl, #33]	; 0x21
d03e5078:	b2e3      	uxtb	r3, r4
d03e507a:	429a      	cmp	r2, r3
d03e507c:	f000 87a3 	beq.w	d03e5fc6 <main+0x15de>
d03e5080:	f89a 3028 	ldrb.w	r3, [sl, #40]	; 0x28
d03e5084:	2b00      	cmp	r3, #0
d03e5086:	d0c7      	beq.n	d03e5018 <main+0x630>
d03e5088:	f89a 2029 	ldrb.w	r2, [sl, #41]	; 0x29
d03e508c:	b2e3      	uxtb	r3, r4
d03e508e:	429a      	cmp	r2, r3
d03e5090:	d1c2      	bne.n	d03e5018 <main+0x630>
d03e5092:	2005      	movs	r0, #5
d03e5094:	3401      	adds	r4, #1
d03e5096:	f7fb fb7d 	bl	d03e0794 <sid_voice_note_off>
d03e509a:	f8d8 3000 	ldr.w	r3, [r8]
d03e509e:	f04f 0200 	mov.w	r2, #0
d03e50a2:	2c10      	cmp	r4, #16
d03e50a4:	f103 0301 	add.w	r3, r3, #1
d03e50a8:	f88a 2028 	strb.w	r2, [sl, #40]	; 0x28
d03e50ac:	f04f 0200 	mov.w	r2, #0
d03e50b0:	f8c8 3000 	str.w	r3, [r8]
d03e50b4:	f8aa 202e 	strh.w	r2, [sl, #46]	; 0x2e
d03e50b8:	d1b1      	bne.n	d03e501e <main+0x636>
d03e50ba:	f899 0000 	ldrb.w	r0, [r9]
d03e50be:	f899 1001 	ldrb.w	r1, [r9, #1]
d03e50c2:	f899 2002 	ldrb.w	r2, [r9, #2]
d03e50c6:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e50ca:	f899 3003 	ldrb.w	r3, [r9, #3]
d03e50ce:	4889      	ldr	r0, [pc, #548]	; (d03e52f4 <main+0x90c>)
d03e50d0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e50d4:	7800      	ldrb	r0, [r0, #0]
d03e50d6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e50da:	9009      	str	r0, [sp, #36]	; 0x24
d03e50dc:	6a1b      	ldr	r3, [r3, #32]
d03e50de:	4798      	blx	r3
d03e50e0:	4b85      	ldr	r3, [pc, #532]	; (d03e52f8 <main+0x910>)
d03e50e2:	9003      	str	r0, [sp, #12]
d03e50e4:	781b      	ldrb	r3, [r3, #0]
d03e50e6:	ea20 0303 	bic.w	r3, r0, r3
d03e50ea:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
d03e50ee:	9304      	str	r3, [sp, #16]
d03e50f0:	f041 8030 	bne.w	d03e6154 <main+0x176c>
d03e50f4:	f010 0f3c 	tst.w	r0, #60	; 0x3c
d03e50f8:	4b80      	ldr	r3, [pc, #512]	; (d03e52fc <main+0x914>)
d03e50fa:	f001 80a1 	beq.w	d03e6240 <main+0x1858>
d03e50fe:	781b      	ldrb	r3, [r3, #0]
d03e5100:	2b00      	cmp	r3, #0
d03e5102:	f041 82c8 	bne.w	d03e6696 <main+0x1cae>
d03e5106:	9a03      	ldr	r2, [sp, #12]
d03e5108:	2303      	movs	r3, #3
d03e510a:	9204      	str	r2, [sp, #16]
d03e510c:	4a7b      	ldr	r2, [pc, #492]	; (d03e52fc <main+0x914>)
d03e510e:	7013      	strb	r3, [r2, #0]
d03e5110:	f899 0018 	ldrb.w	r0, [r9, #24]
d03e5114:	f899 1019 	ldrb.w	r1, [r9, #25]
d03e5118:	f899 201a 	ldrb.w	r2, [r9, #26]
d03e511c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e5120:	f899 301b 	ldrb.w	r3, [r9, #27]
d03e5124:	4876      	ldr	r0, [pc, #472]	; (d03e5300 <main+0x918>)
d03e5126:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e512a:	4976      	ldr	r1, [pc, #472]	; (d03e5304 <main+0x91c>)
d03e512c:	f9b0 6000 	ldrsh.w	r6, [r0]
d03e5130:	f9b1 7000 	ldrsh.w	r7, [r1]
d03e5134:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e5138:	2100      	movs	r1, #0
d03e513a:	f8ad 6030 	strh.w	r6, [sp, #48]	; 0x30
d03e513e:	685b      	ldr	r3, [r3, #4]
d03e5140:	910e      	str	r1, [sp, #56]	; 0x38
d03e5142:	910f      	str	r1, [sp, #60]	; 0x3c
d03e5144:	f8ad 6034 	strh.w	r6, [sp, #52]	; 0x34
d03e5148:	f8ad 7032 	strh.w	r7, [sp, #50]	; 0x32
d03e514c:	f8ad 7036 	strh.w	r7, [sp, #54]	; 0x36
d03e5150:	f8ad 6014 	strh.w	r6, [sp, #20]
d03e5154:	f8ad 7018 	strh.w	r7, [sp, #24]
d03e5158:	4798      	blx	r3
d03e515a:	f899 3018 	ldrb.w	r3, [r9, #24]
d03e515e:	f10d 0132 	add.w	r1, sp, #50	; 0x32
d03e5162:	f899 2019 	ldrb.w	r2, [r9, #25]
d03e5166:	4605      	mov	r5, r0
d03e5168:	a80c      	add	r0, sp, #48	; 0x30
d03e516a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e516e:	f899 201a 	ldrb.w	r2, [r9, #26]
d03e5172:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e5176:	f899 201b 	ldrb.w	r2, [r9, #27]
d03e517a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e517e:	689b      	ldr	r3, [r3, #8]
d03e5180:	4798      	blx	r3
d03e5182:	4604      	mov	r4, r0
d03e5184:	2800      	cmp	r0, #0
d03e5186:	f000 8608 	beq.w	d03e5d9a <main+0x13b2>
d03e518a:	f9bd 6030 	ldrsh.w	r6, [sp, #48]	; 0x30
d03e518e:	f240 12df 	movw	r2, #479	; 0x1df
d03e5192:	495d      	ldr	r1, [pc, #372]	; (d03e5308 <main+0x920>)
d03e5194:	f240 133f 	movw	r3, #319	; 0x13f
d03e5198:	ea26 70e6 	bic.w	r0, r6, r6, asr #31
d03e519c:	f9bd 7032 	ldrsh.w	r7, [sp, #50]	; 0x32
d03e51a0:	780d      	ldrb	r5, [r1, #0]
d03e51a2:	f04f 0c01 	mov.w	ip, #1
d03e51a6:	ea27 71e7 	bic.w	r1, r7, r7, asr #31
d03e51aa:	4282      	cmp	r2, r0
d03e51ac:	fab5 f485 	clz	r4, r5
d03e51b0:	bfa8      	it	ge
d03e51b2:	4602      	movge	r2, r0
d03e51b4:	4299      	cmp	r1, r3
d03e51b6:	9803      	ldr	r0, [sp, #12]
d03e51b8:	bfa8      	it	ge
d03e51ba:	4619      	movge	r1, r3
d03e51bc:	0963      	lsrs	r3, r4, #5
d03e51be:	f000 0003 	and.w	r0, r0, #3
d03e51c2:	468e      	mov	lr, r1
d03e51c4:	9305      	str	r3, [sp, #20]
d03e51c6:	4661      	mov	r1, ip
d03e51c8:	2300      	movs	r3, #0
d03e51ca:	9007      	str	r0, [sp, #28]
d03e51cc:	4849      	ldr	r0, [pc, #292]	; (d03e52f4 <main+0x90c>)
d03e51ce:	7800      	ldrb	r0, [r0, #0]
d03e51d0:	f000 0001 	and.w	r0, r0, #1
d03e51d4:	4604      	mov	r4, r0
d03e51d6:	f1c0 0501 	rsb	r5, r0, #1
d03e51da:	f080 0001 	eor.w	r0, r0, #1
d03e51de:	9508      	str	r5, [sp, #32]
d03e51e0:	9006      	str	r0, [sp, #24]
d03e51e2:	b2e0      	uxtb	r0, r4
d03e51e4:	940b      	str	r4, [sp, #44]	; 0x2c
d03e51e6:	900a      	str	r0, [sp, #40]	; 0x28
d03e51e8:	2b00      	cmp	r3, #0
d03e51ea:	f000 8648 	beq.w	d03e5e7e <main+0x1496>
d03e51ee:	4b41      	ldr	r3, [pc, #260]	; (d03e52f4 <main+0x90c>)
d03e51f0:	781b      	ldrb	r3, [r3, #0]
d03e51f2:	079b      	lsls	r3, r3, #30
d03e51f4:	f100 87f6 	bmi.w	d03e61e4 <main+0x17fc>
d03e51f8:	2301      	movs	r3, #1
d03e51fa:	461c      	mov	r4, r3
d03e51fc:	4618      	mov	r0, r3
d03e51fe:	4d42      	ldr	r5, [pc, #264]	; (d03e5308 <main+0x920>)
d03e5200:	f1bc 0f03 	cmp.w	ip, #3
d03e5204:	f88d 4044 	strb.w	r4, [sp, #68]	; 0x44
d03e5208:	702c      	strb	r4, [r5, #0]
d03e520a:	4d3a      	ldr	r5, [pc, #232]	; (d03e52f4 <main+0x90c>)
d03e520c:	9c05      	ldr	r4, [sp, #20]
d03e520e:	7029      	strb	r1, [r5, #0]
d03e5210:	4d3b      	ldr	r5, [pc, #236]	; (d03e5300 <main+0x918>)
d03e5212:	f88d 1046 	strb.w	r1, [sp, #70]	; 0x46
d03e5216:	802a      	strh	r2, [r5, #0]
d03e5218:	9906      	ldr	r1, [sp, #24]
d03e521a:	4d3a      	ldr	r5, [pc, #232]	; (d03e5304 <main+0x91c>)
d03e521c:	f8ad 2040 	strh.w	r2, [sp, #64]	; 0x40
d03e5220:	f8a5 e000 	strh.w	lr, [r5]
d03e5224:	f8ad e042 	strh.w	lr, [sp, #66]	; 0x42
d03e5228:	f88d 4045 	strb.w	r4, [sp, #69]	; 0x45
d03e522c:	f88d 1047 	strb.w	r1, [sp, #71]	; 0x47
d03e5230:	f88d 3048 	strb.w	r3, [sp, #72]	; 0x48
d03e5234:	f001 81bb 	beq.w	d03e65ae <main+0x1bc6>
d03e5238:	2800      	cmp	r0, #0
d03e523a:	f041 81bd 	bne.w	d03e65b8 <main+0x1bd0>
d03e523e:	4b33      	ldr	r3, [pc, #204]	; (d03e530c <main+0x924>)
d03e5240:	781c      	ldrb	r4, [r3, #0]
d03e5242:	4b33      	ldr	r3, [pc, #204]	; (d03e5310 <main+0x928>)
d03e5244:	2c00      	cmp	r4, #0
d03e5246:	f000 878a 	beq.w	d03e615e <main+0x1776>
d03e524a:	7018      	strb	r0, [r3, #0]
d03e524c:	4b31      	ldr	r3, [pc, #196]	; (d03e5314 <main+0x92c>)
d03e524e:	7018      	strb	r0, [r3, #0]
d03e5250:	9b08      	ldr	r3, [sp, #32]
d03e5252:	2b00      	cmp	r3, #0
d03e5254:	f000 83eb 	beq.w	d03e5a2e <main+0x1046>
d03e5258:	2e83      	cmp	r6, #131	; 0x83
d03e525a:	f341 82aa 	ble.w	d03e67b2 <main+0x1dca>
d03e525e:	b2b9      	uxth	r1, r7
d03e5260:	2edf      	cmp	r6, #223	; 0xdf
d03e5262:	f1a1 03b2 	sub.w	r3, r1, #178	; 0xb2
d03e5266:	b29b      	uxth	r3, r3
d03e5268:	dc02      	bgt.n	d03e5270 <main+0x888>
d03e526a:	2b1b      	cmp	r3, #27
d03e526c:	f241 86f7 	bls.w	d03e705e <main+0x2676>
d03e5270:	f5a6 7280 	sub.w	r2, r6, #256	; 0x100
d03e5274:	b292      	uxth	r2, r2
d03e5276:	2a5b      	cmp	r2, #91	; 0x5b
d03e5278:	d801      	bhi.n	d03e527e <main+0x896>
d03e527a:	2b1b      	cmp	r3, #27
d03e527c:	d907      	bls.n	d03e528e <main+0x8a6>
d03e527e:	f1a1 0370 	sub.w	r3, r1, #112	; 0x70
d03e5282:	2b6b      	cmp	r3, #107	; 0x6b
d03e5284:	d803      	bhi.n	d03e528e <main+0x8a6>
d03e5286:	f5b6 7fc0 	cmp.w	r6, #384	; 0x180
d03e528a:	f2c0 83d0 	blt.w	d03e5a2e <main+0x1046>
d03e528e:	4a1f      	ldr	r2, [pc, #124]	; (d03e530c <main+0x924>)
d03e5290:	f04f 0100 	mov.w	r1, #0
d03e5294:	235a      	movs	r3, #90	; 0x5a
d03e5296:	4d20      	ldr	r5, [pc, #128]	; (d03e5318 <main+0x930>)
d03e5298:	7011      	strb	r1, [r2, #0]
d03e529a:	4a20      	ldr	r2, [pc, #128]	; (d03e531c <main+0x934>)
d03e529c:	4c20      	ldr	r4, [pc, #128]	; (d03e5320 <main+0x938>)
d03e529e:	7013      	strb	r3, [r2, #0]
d03e52a0:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d03e52a2:	682d      	ldr	r5, [r5, #0]
d03e52a4:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d03e52a6:	8025      	strh	r5, [r4, #0]
d03e52a8:	9b07      	ldr	r3, [sp, #28]
d03e52aa:	2b03      	cmp	r3, #3
d03e52ac:	4b17      	ldr	r3, [pc, #92]	; (d03e530c <main+0x924>)
d03e52ae:	781b      	ldrb	r3, [r3, #0]
d03e52b0:	f000 83c3 	beq.w	d03e5a3a <main+0x1052>
d03e52b4:	2b00      	cmp	r3, #0
d03e52b6:	f000 83c6 	beq.w	d03e5a46 <main+0x105e>
d03e52ba:	4b0f      	ldr	r3, [pc, #60]	; (d03e52f8 <main+0x910>)
d03e52bc:	9a03      	ldr	r2, [sp, #12]
d03e52be:	701a      	strb	r2, [r3, #0]
d03e52c0:	4b18      	ldr	r3, [pc, #96]	; (d03e5324 <main+0x93c>)
d03e52c2:	781c      	ldrb	r4, [r3, #0]
d03e52c4:	2c00      	cmp	r4, #0
d03e52c6:	f040 8429 	bne.w	d03e5b1c <main+0x1134>
d03e52ca:	4b17      	ldr	r3, [pc, #92]	; (d03e5328 <main+0x940>)
d03e52cc:	4917      	ldr	r1, [pc, #92]	; (d03e532c <main+0x944>)
d03e52ce:	781b      	ldrb	r3, [r3, #0]
d03e52d0:	f88d 403c 	strb.w	r4, [sp, #60]	; 0x3c
d03e52d4:	56ca      	ldrsb	r2, [r1, r3]
d03e52d6:	5cc8      	ldrb	r0, [r1, r3]
d03e52d8:	2a00      	cmp	r2, #0
d03e52da:	f88d 4040 	strb.w	r4, [sp, #64]	; 0x40
d03e52de:	f2c0 8651 	blt.w	d03e5f84 <main+0x159c>
d03e52e2:	4a13      	ldr	r2, [pc, #76]	; (d03e5330 <main+0x948>)
d03e52e4:	f852 7020 	ldr.w	r7, [r2, r0, lsl #2]
d03e52e8:	2f00      	cmp	r7, #0
d03e52ea:	f000 864b 	beq.w	d03e5f84 <main+0x159c>
d03e52ee:	4626      	mov	r6, r4
d03e52f0:	e022      	b.n	d03e5338 <main+0x950>
d03e52f2:	bf00      	nop
d03e52f4:	d03ea634 	.word	0xd03ea634
d03e52f8:	d03ea633 	.word	0xd03ea633
d03e52fc:	d03ea644 	.word	0xd03ea644
d03e5300:	d03ea63a 	.word	0xd03ea63a
d03e5304:	d03ea63c 	.word	0xd03ea63c
d03e5308:	d03ea635 	.word	0xd03ea635
d03e530c:	d03ea631 	.word	0xd03ea631
d03e5310:	d03ea637 	.word	0xd03ea637
d03e5314:	d03ea638 	.word	0xd03ea638
d03e5318:	d03e9554 	.word	0xd03e9554
d03e531c:	d03ea670 	.word	0xd03ea670
d03e5320:	d03ea648 	.word	0xd03ea648
d03e5324:	d03ea632 	.word	0xd03ea632
d03e5328:	d03ea645 	.word	0xd03ea645
d03e532c:	d03ea3a4 	.word	0xd03ea3a4
d03e5330:	d03e9cbc 	.word	0xd03e9cbc
d03e5334:	2e60      	cmp	r6, #96	; 0x60
d03e5336:	d007      	beq.n	d03e5348 <main+0x960>
d03e5338:	f817 1026 	ldrb.w	r1, [r7, r6, lsl #2]
d03e533c:	b2f2      	uxtb	r2, r6
d03e533e:	3601      	adds	r6, #1
d03e5340:	2900      	cmp	r1, #0
d03e5342:	d1f7      	bne.n	d03e5334 <main+0x94c>
d03e5344:	1c56      	adds	r6, r2, #1
d03e5346:	b2f6      	uxtb	r6, r6
d03e5348:	4ad5      	ldr	r2, [pc, #852]	; (d03e56a0 <main+0xcb8>)
d03e534a:	f04f 0100 	mov.w	r1, #0
d03e534e:	7815      	ldrb	r5, [r2, #0]
d03e5350:	4ad4      	ldr	r2, [pc, #848]	; (d03e56a4 <main+0xcbc>)
d03e5352:	2d04      	cmp	r5, #4
d03e5354:	7011      	strb	r1, [r2, #0]
d03e5356:	f040 8768 	bne.w	d03e622a <main+0x1842>
d03e535a:	4ad3      	ldr	r2, [pc, #844]	; (d03e56a8 <main+0xcc0>)
d03e535c:	7811      	ldrb	r1, [r2, #0]
d03e535e:	b121      	cbz	r1, d03e536a <main+0x982>
d03e5360:	4ad2      	ldr	r2, [pc, #840]	; (d03e56ac <main+0xcc4>)
d03e5362:	7812      	ldrb	r2, [r2, #0]
d03e5364:	4282      	cmp	r2, r0
d03e5366:	f001 8575 	beq.w	d03e6e54 <main+0x246c>
d03e536a:	f89a 2000 	ldrb.w	r2, [sl]
d03e536e:	b122      	cbz	r2, d03e537a <main+0x992>
d03e5370:	f89a 2001 	ldrb.w	r2, [sl, #1]
d03e5374:	429a      	cmp	r2, r3
d03e5376:	f001 84e8 	beq.w	d03e6d4a <main+0x2362>
d03e537a:	f89a 2008 	ldrb.w	r2, [sl, #8]
d03e537e:	b122      	cbz	r2, d03e538a <main+0x9a2>
d03e5380:	f89a 2009 	ldrb.w	r2, [sl, #9]
d03e5384:	429a      	cmp	r2, r3
d03e5386:	f001 852f 	beq.w	d03e6de8 <main+0x2400>
d03e538a:	f89a 2010 	ldrb.w	r2, [sl, #16]
d03e538e:	b122      	cbz	r2, d03e539a <main+0x9b2>
d03e5390:	f89a 2011 	ldrb.w	r2, [sl, #17]
d03e5394:	429a      	cmp	r2, r3
d03e5396:	f001 852e 	beq.w	d03e6df6 <main+0x240e>
d03e539a:	f89a 2018 	ldrb.w	r2, [sl, #24]
d03e539e:	b122      	cbz	r2, d03e53aa <main+0x9c2>
d03e53a0:	f89a 2019 	ldrb.w	r2, [sl, #25]
d03e53a4:	429a      	cmp	r2, r3
d03e53a6:	f001 852d 	beq.w	d03e6e04 <main+0x241c>
d03e53aa:	f89a 2020 	ldrb.w	r2, [sl, #32]
d03e53ae:	b122      	cbz	r2, d03e53ba <main+0x9d2>
d03e53b0:	f89a 2021 	ldrb.w	r2, [sl, #33]	; 0x21
d03e53b4:	429a      	cmp	r2, r3
d03e53b6:	f001 852c 	beq.w	d03e6e12 <main+0x242a>
d03e53ba:	f89a 2028 	ldrb.w	r2, [sl, #40]	; 0x28
d03e53be:	b122      	cbz	r2, d03e53ca <main+0x9e2>
d03e53c0:	f89a 2029 	ldrb.w	r2, [sl, #41]	; 0x29
d03e53c4:	429a      	cmp	r2, r3
d03e53c6:	f001 8532 	beq.w	d03e6e2e <main+0x2446>
d03e53ca:	4ab9      	ldr	r2, [pc, #740]	; (d03e56b0 <main+0xcc8>)
d03e53cc:	7812      	ldrb	r2, [r2, #0]
d03e53ce:	2a00      	cmp	r2, #0
d03e53d0:	f041 8215 	bne.w	d03e67fe <main+0x1e16>
d03e53d4:	4ab7      	ldr	r2, [pc, #732]	; (d03e56b4 <main+0xccc>)
d03e53d6:	7812      	ldrb	r2, [r2, #0]
d03e53d8:	48b7      	ldr	r0, [pc, #732]	; (d03e56b8 <main+0xcd0>)
d03e53da:	eb03 040b 	add.w	r4, r3, fp
d03e53de:	f8df c304 	ldr.w	ip, [pc, #772]	; d03e56e4 <main+0xcfc>
d03e53e2:	eb02 060b 	add.w	r6, r2, fp
d03e53e6:	1828      	adds	r0, r5, r0
d03e53e8:	4bb4      	ldr	r3, [pc, #720]	; (d03e56bc <main+0xcd4>)
d03e53ea:	2d04      	cmp	r5, #4
d03e53ec:	ea80 0c0c 	eor.w	ip, r0, ip
d03e53f0:	781b      	ldrb	r3, [r3, #0]
d03e53f2:	eb04 148c 	add.w	r4, r4, ip, lsl #6
d03e53f6:	eb03 0e0b 	add.w	lr, r3, fp
d03e53fa:	4bb1      	ldr	r3, [pc, #708]	; (d03e56c0 <main+0xcd8>)
d03e53fc:	eb04 049c 	add.w	r4, r4, ip, lsr #2
d03e5400:	781b      	ldrb	r3, [r3, #0]
d03e5402:	ea84 000c 	eor.w	r0, r4, ip
d03e5406:	eb03 070b 	add.w	r7, r3, fp
d03e540a:	4bad      	ldr	r3, [pc, #692]	; (d03e56c0 <main+0xcd8>)
d03e540c:	785c      	ldrb	r4, [r3, #1]
d03e540e:	eb0e 1380 	add.w	r3, lr, r0, lsl #6
d03e5412:	eb03 0390 	add.w	r3, r3, r0, lsr #2
d03e5416:	eb04 0c0b 	add.w	ip, r4, fp
d03e541a:	ea83 0400 	eor.w	r4, r3, r0
d03e541e:	4ba8      	ldr	r3, [pc, #672]	; (d03e56c0 <main+0xcd8>)
d03e5420:	7898      	ldrb	r0, [r3, #2]
d03e5422:	eb07 1384 	add.w	r3, r7, r4, lsl #6
d03e5426:	eb03 0394 	add.w	r3, r3, r4, lsr #2
d03e542a:	4458      	add	r0, fp
d03e542c:	ea83 0304 	eor.w	r3, r3, r4
d03e5430:	4ca3      	ldr	r4, [pc, #652]	; (d03e56c0 <main+0xcd8>)
d03e5432:	78e7      	ldrb	r7, [r4, #3]
d03e5434:	eb0c 1483 	add.w	r4, ip, r3, lsl #6
d03e5438:	eb04 0493 	add.w	r4, r4, r3, lsr #2
d03e543c:	445f      	add	r7, fp
d03e543e:	ea83 0304 	eor.w	r3, r3, r4
d03e5442:	eb01 040b 	add.w	r4, r1, fp
d03e5446:	eb00 1083 	add.w	r0, r0, r3, lsl #6
d03e544a:	eb00 0093 	add.w	r0, r0, r3, lsr #2
d03e544e:	ea83 0300 	eor.w	r3, r3, r0
d03e5452:	4896      	ldr	r0, [pc, #600]	; (d03e56ac <main+0xcc4>)
d03e5454:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d03e5458:	7800      	ldrb	r0, [r0, #0]
d03e545a:	eb07 0793 	add.w	r7, r7, r3, lsr #2
d03e545e:	ea83 0307 	eor.w	r3, r3, r7
d03e5462:	eb00 070b 	add.w	r7, r0, fp
d03e5466:	eb06 1683 	add.w	r6, r6, r3, lsl #6
d03e546a:	eb06 0693 	add.w	r6, r6, r3, lsr #2
d03e546e:	ea86 0603 	eor.w	r6, r6, r3
d03e5472:	4b94      	ldr	r3, [pc, #592]	; (d03e56c4 <main+0xcdc>)
d03e5474:	eb04 1486 	add.w	r4, r4, r6, lsl #6
d03e5478:	f893 c000 	ldrb.w	ip, [r3]
d03e547c:	eb04 0396 	add.w	r3, r4, r6, lsr #2
d03e5480:	44dc      	add	ip, fp
d03e5482:	4c91      	ldr	r4, [pc, #580]	; (d03e56c8 <main+0xce0>)
d03e5484:	ea83 0306 	eor.w	r3, r3, r6
d03e5488:	7824      	ldrb	r4, [r4, #0]
d03e548a:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d03e548e:	445c      	add	r4, fp
d03e5490:	eb07 0793 	add.w	r7, r7, r3, lsr #2
d03e5494:	ea87 0703 	eor.w	r7, r7, r3
d03e5498:	eb0c 1387 	add.w	r3, ip, r7, lsl #6
d03e549c:	eb03 0397 	add.w	r3, r3, r7, lsr #2
d03e54a0:	ea83 0307 	eor.w	r3, r3, r7
d03e54a4:	eb04 1483 	add.w	r4, r4, r3, lsl #6
d03e54a8:	eb04 0493 	add.w	r4, r4, r3, lsr #2
d03e54ac:	ea83 0304 	eor.w	r3, r3, r4
d03e54b0:	d102      	bne.n	d03e54b8 <main+0xad0>
d03e54b2:	2900      	cmp	r1, #0
d03e54b4:	f041 80ea 	bne.w	d03e668c <main+0x1ca4>
d03e54b8:	2700      	movs	r7, #0
d03e54ba:	0899      	lsrs	r1, r3, #2
d03e54bc:	4c83      	ldr	r4, [pc, #524]	; (d03e56cc <main+0xce4>)
d03e54be:	2a5f      	cmp	r2, #95	; 0x5f
d03e54c0:	eb01 1183 	add.w	r1, r1, r3, lsl #6
d03e54c4:	7826      	ldrb	r6, [r4, #0]
d03e54c6:	4c82      	ldr	r4, [pc, #520]	; (d03e56d0 <main+0xce8>)
d03e54c8:	4459      	add	r1, fp
d03e54ca:	445e      	add	r6, fp
d03e54cc:	7825      	ldrb	r5, [r4, #0]
d03e54ce:	4439      	add	r1, r7
d03e54d0:	445d      	add	r5, fp
d03e54d2:	ea83 0301 	eor.w	r3, r3, r1
d03e54d6:	497f      	ldr	r1, [pc, #508]	; (d03e56d4 <main+0xcec>)
d03e54d8:	eb06 1683 	add.w	r6, r6, r3, lsl #6
d03e54dc:	880c      	ldrh	r4, [r1, #0]
d03e54de:	497e      	ldr	r1, [pc, #504]	; (d03e56d8 <main+0xcf0>)
d03e54e0:	eb06 0693 	add.w	r6, r6, r3, lsr #2
d03e54e4:	445c      	add	r4, fp
d03e54e6:	8809      	ldrh	r1, [r1, #0]
d03e54e8:	ea86 0603 	eor.w	r6, r6, r3
d03e54ec:	4459      	add	r1, fp
d03e54ee:	eb05 1386 	add.w	r3, r5, r6, lsl #6
d03e54f2:	4d7a      	ldr	r5, [pc, #488]	; (d03e56dc <main+0xcf4>)
d03e54f4:	eb03 0396 	add.w	r3, r3, r6, lsr #2
d03e54f8:	782d      	ldrb	r5, [r5, #0]
d03e54fa:	ea83 0306 	eor.w	r3, r3, r6
d03e54fe:	445d      	add	r5, fp
d03e5500:	eb04 1483 	add.w	r4, r4, r3, lsl #6
d03e5504:	eb04 0493 	add.w	r4, r4, r3, lsr #2
d03e5508:	ea84 0403 	eor.w	r4, r4, r3
d03e550c:	eb01 1184 	add.w	r1, r1, r4, lsl #6
d03e5510:	eb01 0394 	add.w	r3, r1, r4, lsr #2
d03e5514:	ea83 0104 	eor.w	r1, r3, r4
d03e5518:	eb05 1381 	add.w	r3, r5, r1, lsl #6
d03e551c:	eb03 0391 	add.w	r3, r3, r1, lsr #2
d03e5520:	ea83 0301 	eor.w	r3, r3, r1
d03e5524:	f200 80e0 	bhi.w	d03e56e8 <main+0xd00>
d03e5528:	28ff      	cmp	r0, #255	; 0xff
d03e552a:	f000 80dd 	beq.w	d03e56e8 <main+0xd00>
d03e552e:	4c6c      	ldr	r4, [pc, #432]	; (d03e56e0 <main+0xcf8>)
d03e5530:	1c50      	adds	r0, r2, #1
d03e5532:	f814 1022 	ldrb.w	r1, [r4, r2, lsl #2]
d03e5536:	eb04 0582 	add.w	r5, r4, r2, lsl #2
d03e553a:	b2c0      	uxtb	r0, r0
d03e553c:	4459      	add	r1, fp
d03e553e:	786e      	ldrb	r6, [r5, #1]
d03e5540:	886d      	ldrh	r5, [r5, #2]
d03e5542:	2860      	cmp	r0, #96	; 0x60
d03e5544:	eb01 1183 	add.w	r1, r1, r3, lsl #6
d03e5548:	445e      	add	r6, fp
d03e554a:	445d      	add	r5, fp
d03e554c:	eb01 0193 	add.w	r1, r1, r3, lsr #2
d03e5550:	ea83 0301 	eor.w	r3, r3, r1
d03e5554:	eb06 1183 	add.w	r1, r6, r3, lsl #6
d03e5558:	eb01 0193 	add.w	r1, r1, r3, lsr #2
d03e555c:	ea83 0301 	eor.w	r3, r3, r1
d03e5560:	eb05 1583 	add.w	r5, r5, r3, lsl #6
d03e5564:	eb05 0593 	add.w	r5, r5, r3, lsr #2
d03e5568:	ea83 0305 	eor.w	r3, r3, r5
d03e556c:	f000 80bc 	beq.w	d03e56e8 <main+0xd00>
d03e5570:	f814 6020 	ldrb.w	r6, [r4, r0, lsl #2]
d03e5574:	eb04 0580 	add.w	r5, r4, r0, lsl #2
d03e5578:	1c90      	adds	r0, r2, #2
d03e557a:	445e      	add	r6, fp
d03e557c:	7869      	ldrb	r1, [r5, #1]
d03e557e:	886d      	ldrh	r5, [r5, #2]
d03e5580:	b2c0      	uxtb	r0, r0
d03e5582:	eb06 1683 	add.w	r6, r6, r3, lsl #6
d03e5586:	4459      	add	r1, fp
d03e5588:	445d      	add	r5, fp
d03e558a:	2860      	cmp	r0, #96	; 0x60
d03e558c:	eb06 0693 	add.w	r6, r6, r3, lsr #2
d03e5590:	ea86 0603 	eor.w	r6, r6, r3
d03e5594:	eb01 1386 	add.w	r3, r1, r6, lsl #6
d03e5598:	eb03 0396 	add.w	r3, r3, r6, lsr #2
d03e559c:	ea83 0306 	eor.w	r3, r3, r6
d03e55a0:	eb05 1583 	add.w	r5, r5, r3, lsl #6
d03e55a4:	eb05 0593 	add.w	r5, r5, r3, lsr #2
d03e55a8:	ea83 0305 	eor.w	r3, r3, r5
d03e55ac:	f000 809c 	beq.w	d03e56e8 <main+0xd00>
d03e55b0:	f814 6020 	ldrb.w	r6, [r4, r0, lsl #2]
d03e55b4:	eb04 0080 	add.w	r0, r4, r0, lsl #2
d03e55b8:	1cd5      	adds	r5, r2, #3
d03e55ba:	445e      	add	r6, fp
d03e55bc:	7841      	ldrb	r1, [r0, #1]
d03e55be:	8840      	ldrh	r0, [r0, #2]
d03e55c0:	b2ed      	uxtb	r5, r5
d03e55c2:	eb06 1683 	add.w	r6, r6, r3, lsl #6
d03e55c6:	4459      	add	r1, fp
d03e55c8:	4458      	add	r0, fp
d03e55ca:	2d60      	cmp	r5, #96	; 0x60
d03e55cc:	eb06 0693 	add.w	r6, r6, r3, lsr #2
d03e55d0:	ea86 0603 	eor.w	r6, r6, r3
d03e55d4:	eb01 1386 	add.w	r3, r1, r6, lsl #6
d03e55d8:	eb03 0396 	add.w	r3, r3, r6, lsr #2
d03e55dc:	ea83 0306 	eor.w	r3, r3, r6
d03e55e0:	eb00 1083 	add.w	r0, r0, r3, lsl #6
d03e55e4:	eb00 0093 	add.w	r0, r0, r3, lsr #2
d03e55e8:	ea83 0300 	eor.w	r3, r3, r0
d03e55ec:	d07c      	beq.n	d03e56e8 <main+0xd00>
d03e55ee:	f814 6025 	ldrb.w	r6, [r4, r5, lsl #2]
d03e55f2:	eb04 0585 	add.w	r5, r4, r5, lsl #2
d03e55f6:	1d10      	adds	r0, r2, #4
d03e55f8:	445e      	add	r6, fp
d03e55fa:	7869      	ldrb	r1, [r5, #1]
d03e55fc:	886d      	ldrh	r5, [r5, #2]
d03e55fe:	b2c0      	uxtb	r0, r0
d03e5600:	eb06 1683 	add.w	r6, r6, r3, lsl #6
d03e5604:	4459      	add	r1, fp
d03e5606:	445d      	add	r5, fp
d03e5608:	2860      	cmp	r0, #96	; 0x60
d03e560a:	eb06 0693 	add.w	r6, r6, r3, lsr #2
d03e560e:	ea86 0603 	eor.w	r6, r6, r3
d03e5612:	eb01 1386 	add.w	r3, r1, r6, lsl #6
d03e5616:	eb03 0396 	add.w	r3, r3, r6, lsr #2
d03e561a:	ea83 0306 	eor.w	r3, r3, r6
d03e561e:	eb05 1583 	add.w	r5, r5, r3, lsl #6
d03e5622:	eb05 0593 	add.w	r5, r5, r3, lsr #2
d03e5626:	ea83 0305 	eor.w	r3, r3, r5
d03e562a:	d05d      	beq.n	d03e56e8 <main+0xd00>
d03e562c:	f814 1020 	ldrb.w	r1, [r4, r0, lsl #2]
d03e5630:	eb04 0580 	add.w	r5, r4, r0, lsl #2
d03e5634:	3205      	adds	r2, #5
d03e5636:	eb01 000b 	add.w	r0, r1, fp
d03e563a:	7869      	ldrb	r1, [r5, #1]
d03e563c:	886d      	ldrh	r5, [r5, #2]
d03e563e:	b2d2      	uxtb	r2, r2
d03e5640:	eb00 1083 	add.w	r0, r0, r3, lsl #6
d03e5644:	4459      	add	r1, fp
d03e5646:	445d      	add	r5, fp
d03e5648:	2a60      	cmp	r2, #96	; 0x60
d03e564a:	eb00 0093 	add.w	r0, r0, r3, lsr #2
d03e564e:	ea80 0003 	eor.w	r0, r0, r3
d03e5652:	eb01 1380 	add.w	r3, r1, r0, lsl #6
d03e5656:	eb03 0390 	add.w	r3, r3, r0, lsr #2
d03e565a:	ea83 0300 	eor.w	r3, r3, r0
d03e565e:	eb05 1583 	add.w	r5, r5, r3, lsl #6
d03e5662:	eb05 0593 	add.w	r5, r5, r3, lsr #2
d03e5666:	ea83 0305 	eor.w	r3, r3, r5
d03e566a:	d03d      	beq.n	d03e56e8 <main+0xd00>
d03e566c:	f814 1022 	ldrb.w	r1, [r4, r2, lsl #2]
d03e5670:	eb04 0482 	add.w	r4, r4, r2, lsl #2
d03e5674:	4459      	add	r1, fp
d03e5676:	7862      	ldrb	r2, [r4, #1]
d03e5678:	8860      	ldrh	r0, [r4, #2]
d03e567a:	eb01 1183 	add.w	r1, r1, r3, lsl #6
d03e567e:	445a      	add	r2, fp
d03e5680:	4458      	add	r0, fp
d03e5682:	eb01 0193 	add.w	r1, r1, r3, lsr #2
d03e5686:	4059      	eors	r1, r3
d03e5688:	eb02 1381 	add.w	r3, r2, r1, lsl #6
d03e568c:	eb03 0391 	add.w	r3, r3, r1, lsr #2
d03e5690:	404b      	eors	r3, r1
d03e5692:	eb00 1283 	add.w	r2, r0, r3, lsl #6
d03e5696:	eb02 0293 	add.w	r2, r2, r3, lsr #2
d03e569a:	4053      	eors	r3, r2
d03e569c:	e024      	b.n	d03e56e8 <main+0xd00>
d03e569e:	bf00      	nop
d03e56a0:	d03ea636 	.word	0xd03ea636
d03e56a4:	d03ea803 	.word	0xd03ea803
d03e56a8:	d03ea7f5 	.word	0xd03ea7f5
d03e56ac:	d03ea7fc 	.word	0xd03ea7fc
d03e56b0:	d03ea800 	.word	0xd03ea800
d03e56b4:	d03ea805 	.word	0xd03ea805
d03e56b8:	05a6126a 	.word	0x05a6126a
d03e56bc:	d03ea630 	.word	0xd03ea630
d03e56c0:	d03ea640 	.word	0xd03ea640
d03e56c4:	d03ea7fd 	.word	0xd03ea7fd
d03e56c8:	d03ea7f4 	.word	0xd03ea7f4
d03e56cc:	d03ea631 	.word	0xd03ea631
d03e56d0:	d03ea637 	.word	0xd03ea637
d03e56d4:	d03ea5d2 	.word	0xd03ea5d2
d03e56d8:	d03ea3ca 	.word	0xd03ea3ca
d03e56dc:	d03ea3c8 	.word	0xd03ea3c8
d03e56e0:	d03ea674 	.word	0xd03ea674
d03e56e4:	811c9dc5 	.word	0x811c9dc5
d03e56e8:	48c1      	ldr	r0, [pc, #772]	; (d03e59f0 <main+0x1008>)
d03e56ea:	4dc2      	ldr	r5, [pc, #776]	; (d03e59f4 <main+0x100c>)
d03e56ec:	f100 0610 	add.w	r6, r0, #16
d03e56f0:	4cc1      	ldr	r4, [pc, #772]	; (d03e59f8 <main+0x1010>)
d03e56f2:	f810 2f01 	ldrb.w	r2, [r0, #1]!
d03e56f6:	f815 1f01 	ldrb.w	r1, [r5, #1]!
d03e56fa:	445a      	add	r2, fp
d03e56fc:	f814 7f01 	ldrb.w	r7, [r4, #1]!
d03e5700:	4459      	add	r1, fp
d03e5702:	4286      	cmp	r6, r0
d03e5704:	eb02 1283 	add.w	r2, r2, r3, lsl #6
d03e5708:	445f      	add	r7, fp
d03e570a:	eb02 0293 	add.w	r2, r2, r3, lsr #2
d03e570e:	ea83 0302 	eor.w	r3, r3, r2
d03e5712:	eb01 1183 	add.w	r1, r1, r3, lsl #6
d03e5716:	eb01 0193 	add.w	r1, r1, r3, lsr #2
d03e571a:	ea83 0301 	eor.w	r3, r3, r1
d03e571e:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d03e5722:	eb07 0793 	add.w	r7, r7, r3, lsr #2
d03e5726:	ea83 0307 	eor.w	r3, r3, r7
d03e572a:	d1e2      	bne.n	d03e56f2 <main+0xd0a>
d03e572c:	4ab3      	ldr	r2, [pc, #716]	; (d03e59fc <main+0x1014>)
d03e572e:	7810      	ldrb	r0, [r2, #0]
d03e5730:	4ab3      	ldr	r2, [pc, #716]	; (d03e5a00 <main+0x1018>)
d03e5732:	6811      	ldr	r1, [r2, #0]
d03e5734:	f000 0201 	and.w	r2, r0, #1
d03e5738:	445a      	add	r2, fp
d03e573a:	eb02 1283 	add.w	r2, r2, r3, lsl #6
d03e573e:	eb02 0293 	add.w	r2, r2, r3, lsr #2
d03e5742:	4053      	eors	r3, r2
d03e5744:	4299      	cmp	r1, r3
d03e5746:	d103      	bne.n	d03e5750 <main+0xd68>
d03e5748:	9a09      	ldr	r2, [sp, #36]	; 0x24
d03e574a:	4282      	cmp	r2, r0
d03e574c:	f000 831f 	beq.w	d03e5d8e <main+0x13a6>
d03e5750:	49ab      	ldr	r1, [pc, #684]	; (d03e5a00 <main+0x1018>)
d03e5752:	2201      	movs	r2, #1
d03e5754:	600b      	str	r3, [r1, #0]
d03e5756:	4bab      	ldr	r3, [pc, #684]	; (d03e5a04 <main+0x101c>)
d03e5758:	701a      	strb	r2, [r3, #0]
d03e575a:	f7fd fb69 	bl	d03e2e30 <ui_redraw_backbuffer>
d03e575e:	4ba9      	ldr	r3, [pc, #676]	; (d03e5a04 <main+0x101c>)
d03e5760:	f04f 0200 	mov.w	r2, #0
d03e5764:	701a      	strb	r2, [r3, #0]
d03e5766:	4aa8      	ldr	r2, [pc, #672]	; (d03e5a08 <main+0x1020>)
d03e5768:	f899 100c 	ldrb.w	r1, [r9, #12]
d03e576c:	7813      	ldrb	r3, [r2, #0]
d03e576e:	f899 000d 	ldrb.w	r0, [r9, #13]
d03e5772:	f1c3 0301 	rsb	r3, r3, #1
d03e5776:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d03e577a:	b2db      	uxtb	r3, r3
d03e577c:	7013      	strb	r3, [r2, #0]
d03e577e:	f899 200e 	ldrb.w	r2, [r9, #14]
d03e5782:	2b00      	cmp	r3, #0
d03e5784:	f000 83f6 	beq.w	d03e5f74 <main+0x158c>
d03e5788:	49a0      	ldr	r1, [pc, #640]	; (d03e5a0c <main+0x1024>)
d03e578a:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d03e578e:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e5792:	6809      	ldr	r1, [r1, #0]
d03e5794:	489e      	ldr	r0, [pc, #632]	; (d03e5a10 <main+0x1028>)
d03e5796:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e579a:	6800      	ldr	r0, [r0, #0]
d03e579c:	681b      	ldr	r3, [r3, #0]
d03e579e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d03e57a0:	4798      	blx	r3
d03e57a2:	f899 000c 	ldrb.w	r0, [r9, #12]
d03e57a6:	f899 100d 	ldrb.w	r1, [r9, #13]
d03e57aa:	f899 200e 	ldrb.w	r2, [r9, #14]
d03e57ae:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e57b2:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e57b6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e57ba:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e57be:	685b      	ldr	r3, [r3, #4]
d03e57c0:	681b      	ldr	r3, [r3, #0]
d03e57c2:	4798      	blx	r3
d03e57c4:	f899 300c 	ldrb.w	r3, [r9, #12]
d03e57c8:	f899 100d 	ldrb.w	r1, [r9, #13]
d03e57cc:	2018      	movs	r0, #24
d03e57ce:	f899 200e 	ldrb.w	r2, [r9, #14]
d03e57d2:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03e57d6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e57da:	f899 200f 	ldrb.w	r2, [r9, #15]
d03e57de:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e57e2:	685b      	ldr	r3, [r3, #4]
d03e57e4:	68db      	ldr	r3, [r3, #12]
d03e57e6:	4798      	blx	r3
d03e57e8:	4b8a      	ldr	r3, [pc, #552]	; (d03e5a14 <main+0x102c>)
d03e57ea:	f899 500c 	ldrb.w	r5, [r9, #12]
d03e57ee:	f44f 7192 	mov.w	r1, #292	; 0x124
d03e57f2:	f899 200d 	ldrb.w	r2, [r9, #13]
d03e57f6:	2058      	movs	r0, #88	; 0x58
d03e57f8:	781b      	ldrb	r3, [r3, #0]
d03e57fa:	f899 400e 	ldrb.w	r4, [r9, #14]
d03e57fe:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
d03e5802:	2b00      	cmp	r3, #0
d03e5804:	f000 833f 	beq.w	d03e5e86 <main+0x149e>
d03e5808:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e580c:	ea42 4404 	orr.w	r4, r2, r4, lsl #16
d03e5810:	4a80      	ldr	r2, [pc, #512]	; (d03e5a14 <main+0x102c>)
d03e5812:	ea44 6303 	orr.w	r3, r4, r3, lsl #24
d03e5816:	685b      	ldr	r3, [r3, #4]
d03e5818:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e581a:	4798      	blx	r3
d03e581c:	4b7e      	ldr	r3, [pc, #504]	; (d03e5a18 <main+0x1030>)
d03e581e:	781b      	ldrb	r3, [r3, #0]
d03e5820:	2b01      	cmp	r3, #1
d03e5822:	f000 833f 	beq.w	d03e5ea4 <main+0x14bc>
d03e5826:	2b04      	cmp	r3, #4
d03e5828:	f000 850e 	beq.w	d03e6248 <main+0x1860>
d03e582c:	2b00      	cmp	r3, #0
d03e582e:	f000 858d 	beq.w	d03e634c <main+0x1964>
d03e5832:	f899 400c 	ldrb.w	r4, [r9, #12]
d03e5836:	201a      	movs	r0, #26
d03e5838:	f899 100d 	ldrb.w	r1, [r9, #13]
d03e583c:	f899 200e 	ldrb.w	r2, [r9, #14]
d03e5840:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d03e5844:	4c75      	ldr	r4, [pc, #468]	; (d03e5a1c <main+0x1034>)
d03e5846:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e584a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e584e:	4974      	ldr	r1, [pc, #464]	; (d03e5a20 <main+0x1038>)
d03e5850:	7825      	ldrb	r5, [r4, #0]
d03e5852:	f9b1 4000 	ldrsh.w	r4, [r1]
d03e5856:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e585a:	4972      	ldr	r1, [pc, #456]	; (d03e5a24 <main+0x103c>)
d03e585c:	2d00      	cmp	r5, #0
d03e585e:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d03e5862:	685b      	ldr	r3, [r3, #4]
d03e5864:	f9b1 1000 	ldrsh.w	r1, [r1]
d03e5868:	bf14      	ite	ne
d03e586a:	261e      	movne	r6, #30
d03e586c:	2618      	moveq	r6, #24
d03e586e:	f5b4 7fec 	cmp.w	r4, #472	; 0x1d8
d03e5872:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d03e5876:	68db      	ldr	r3, [r3, #12]
d03e5878:	bfa8      	it	ge
d03e587a:	f44f 74ec 	movge.w	r4, #472	; 0x1d8
d03e587e:	f5b1 7f9b 	cmp.w	r1, #310	; 0x136
d03e5882:	b2a2      	uxth	r2, r4
d03e5884:	bfa8      	it	ge
d03e5886:	f44f 719b 	movge.w	r1, #310	; 0x136
d03e588a:	9203      	str	r2, [sp, #12]
d03e588c:	9104      	str	r1, [sp, #16]
d03e588e:	4798      	blx	r3
d03e5890:	f899 300c 	ldrb.w	r3, [r9, #12]
d03e5894:	4620      	mov	r0, r4
d03e5896:	f899 200d 	ldrb.w	r2, [r9, #13]
d03e589a:	f899 500e 	ldrb.w	r5, [r9, #14]
d03e589e:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
d03e58a2:	f899 700f 	ldrb.w	r7, [r9, #15]
d03e58a6:	9904      	ldr	r1, [sp, #16]
d03e58a8:	230a      	movs	r3, #10
d03e58aa:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d03e58ae:	2202      	movs	r2, #2
d03e58b0:	ea45 6707 	orr.w	r7, r5, r7, lsl #24
d03e58b4:	b28d      	uxth	r5, r1
d03e58b6:	687f      	ldr	r7, [r7, #4]
d03e58b8:	687f      	ldr	r7, [r7, #4]
d03e58ba:	47b8      	blx	r7
d03e58bc:	f899 700c 	ldrb.w	r7, [r9, #12]
d03e58c0:	f899 300d 	ldrb.w	r3, [r9, #13]
d03e58c4:	4620      	mov	r0, r4
d03e58c6:	f899 e00e 	ldrb.w	lr, [r9, #14]
d03e58ca:	2208      	movs	r2, #8
d03e58cc:	ea47 2403 	orr.w	r4, r7, r3, lsl #8
d03e58d0:	f899 c00f 	ldrb.w	ip, [r9, #15]
d03e58d4:	9904      	ldr	r1, [sp, #16]
d03e58d6:	2302      	movs	r3, #2
d03e58d8:	ea44 470e 	orr.w	r7, r4, lr, lsl #16
d03e58dc:	ea47 640c 	orr.w	r4, r7, ip, lsl #24
d03e58e0:	6864      	ldr	r4, [r4, #4]
d03e58e2:	6864      	ldr	r4, [r4, #4]
d03e58e4:	47a0      	blx	r4
d03e58e6:	f899 300c 	ldrb.w	r3, [r9, #12]
d03e58ea:	f899 200d 	ldrb.w	r2, [r9, #13]
d03e58ee:	f105 0108 	add.w	r1, r5, #8
d03e58f2:	f899 700e 	ldrb.w	r7, [r9, #14]
d03e58f6:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
d03e58fa:	f899 400f 	ldrb.w	r4, [r9, #15]
d03e58fe:	9803      	ldr	r0, [sp, #12]
d03e5900:	b209      	sxth	r1, r1
d03e5902:	ea42 4707 	orr.w	r7, r2, r7, lsl #16
d03e5906:	2302      	movs	r3, #2
d03e5908:	3002      	adds	r0, #2
d03e590a:	2204      	movs	r2, #4
d03e590c:	ea47 6404 	orr.w	r4, r7, r4, lsl #24
d03e5910:	b200      	sxth	r0, r0
d03e5912:	6864      	ldr	r4, [r4, #4]
d03e5914:	6864      	ldr	r4, [r4, #4]
d03e5916:	47a0      	blx	r4
d03e5918:	f899 400c 	ldrb.w	r4, [r9, #12]
d03e591c:	f899 100d 	ldrb.w	r1, [r9, #13]
d03e5920:	4630      	mov	r0, r6
d03e5922:	f899 200e 	ldrb.w	r2, [r9, #14]
d03e5926:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d03e592a:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e592e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e5932:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e5936:	685b      	ldr	r3, [r3, #4]
d03e5938:	68db      	ldr	r3, [r3, #12]
d03e593a:	4798      	blx	r3
d03e593c:	f899 300c 	ldrb.w	r3, [r9, #12]
d03e5940:	f899 200d 	ldrb.w	r2, [r9, #13]
d03e5944:	1c69      	adds	r1, r5, #1
d03e5946:	f899 600e 	ldrb.w	r6, [r9, #14]
d03e594a:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
d03e594e:	f899 400f 	ldrb.w	r4, [r9, #15]
d03e5952:	9803      	ldr	r0, [sp, #12]
d03e5954:	b209      	sxth	r1, r1
d03e5956:	ea42 4606 	orr.w	r6, r2, r6, lsl #16
d03e595a:	2308      	movs	r3, #8
d03e595c:	3001      	adds	r0, #1
d03e595e:	2201      	movs	r2, #1
d03e5960:	ea46 6404 	orr.w	r4, r6, r4, lsl #24
d03e5964:	9104      	str	r1, [sp, #16]
d03e5966:	b200      	sxth	r0, r0
d03e5968:	6864      	ldr	r4, [r4, #4]
d03e596a:	9005      	str	r0, [sp, #20]
d03e596c:	6864      	ldr	r4, [r4, #4]
d03e596e:	47a0      	blx	r4
d03e5970:	f899 700c 	ldrb.w	r7, [r9, #12]
d03e5974:	f899 600d 	ldrb.w	r6, [r9, #13]
d03e5978:	2301      	movs	r3, #1
d03e597a:	f899 c00e 	ldrb.w	ip, [r9, #14]
d03e597e:	2206      	movs	r2, #6
d03e5980:	ea47 2706 	orr.w	r7, r7, r6, lsl #8
d03e5984:	f899 400f 	ldrb.w	r4, [r9, #15]
d03e5988:	9904      	ldr	r1, [sp, #16]
d03e598a:	ea47 460c 	orr.w	r6, r7, ip, lsl #16
d03e598e:	9805      	ldr	r0, [sp, #20]
d03e5990:	ea46 6404 	orr.w	r4, r6, r4, lsl #24
d03e5994:	6864      	ldr	r4, [r4, #4]
d03e5996:	6864      	ldr	r4, [r4, #4]
d03e5998:	47a0      	blx	r4
d03e599a:	f899 300c 	ldrb.w	r3, [r9, #12]
d03e599e:	f899 400d 	ldrb.w	r4, [r9, #13]
d03e59a2:	1de9      	adds	r1, r5, #7
d03e59a4:	f899 600e 	ldrb.w	r6, [r9, #14]
d03e59a8:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
d03e59ac:	f899 500f 	ldrb.w	r5, [r9, #15]
d03e59b0:	9803      	ldr	r0, [sp, #12]
d03e59b2:	b209      	sxth	r1, r1
d03e59b4:	ea42 4406 	orr.w	r4, r2, r6, lsl #16
d03e59b8:	2301      	movs	r3, #1
d03e59ba:	3003      	adds	r0, #3
d03e59bc:	2203      	movs	r2, #3
d03e59be:	ea44 6405 	orr.w	r4, r4, r5, lsl #24
d03e59c2:	b200      	sxth	r0, r0
d03e59c4:	6864      	ldr	r4, [r4, #4]
d03e59c6:	6864      	ldr	r4, [r4, #4]
d03e59c8:	47a0      	blx	r4
d03e59ca:	f899 000c 	ldrb.w	r0, [r9, #12]
d03e59ce:	f899 100d 	ldrb.w	r1, [r9, #13]
d03e59d2:	f899 200e 	ldrb.w	r2, [r9, #14]
d03e59d6:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e59da:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e59de:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e59e2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e59e6:	681b      	ldr	r3, [r3, #0]
d03e59e8:	681b      	ldr	r3, [r3, #0]
d03e59ea:	4798      	blx	r3
d03e59ec:	f7ff ba44 	b.w	d03e4e78 <main+0x490>
d03e59f0:	d03ea3a3 	.word	0xd03ea3a3
d03e59f4:	d03ea3b3 	.word	0xd03ea3b3
d03e59f8:	d03ea393 	.word	0xd03ea393
d03e59fc:	d03ea634 	.word	0xd03ea634
d03e5a00:	d03ea62c 	.word	0xd03ea62c
d03e5a04:	d03ea628 	.word	0xd03ea628
d03e5a08:	d03ea369 	.word	0xd03ea369
d03e5a0c:	d03ea370 	.word	0xd03ea370
d03e5a10:	d03ea36c 	.word	0xd03ea36c
d03e5a14:	d03ea648 	.word	0xd03ea648
d03e5a18:	d03ea636 	.word	0xd03ea636
d03e5a1c:	d03ea635 	.word	0xd03ea635
d03e5a20:	d03ea63a 	.word	0xd03ea63a
d03e5a24:	d03ea63c 	.word	0xd03ea63c
d03e5a28:	2301      	movs	r3, #1
d03e5a2a:	4ab0      	ldr	r2, [pc, #704]	; (d03e5cec <main+0x1304>)
d03e5a2c:	7013      	strb	r3, [r2, #0]
d03e5a2e:	9b07      	ldr	r3, [sp, #28]
d03e5a30:	2b03      	cmp	r3, #3
d03e5a32:	f47f ac42 	bne.w	d03e52ba <main+0x8d2>
d03e5a36:	4bad      	ldr	r3, [pc, #692]	; (d03e5cec <main+0x1304>)
d03e5a38:	781b      	ldrb	r3, [r3, #0]
d03e5a3a:	2201      	movs	r2, #1
d03e5a3c:	49ac      	ldr	r1, [pc, #688]	; (d03e5cf0 <main+0x1308>)
d03e5a3e:	700a      	strb	r2, [r1, #0]
d03e5a40:	2b00      	cmp	r3, #0
d03e5a42:	f47f ac3a 	bne.w	d03e52ba <main+0x8d2>
d03e5a46:	4bab      	ldr	r3, [pc, #684]	; (d03e5cf4 <main+0x130c>)
d03e5a48:	9a03      	ldr	r2, [sp, #12]
d03e5a4a:	781b      	ldrb	r3, [r3, #0]
d03e5a4c:	f002 0401 	and.w	r4, r2, #1
d03e5a50:	2b04      	cmp	r3, #4
d03e5a52:	f000 811b 	beq.w	d03e5c8c <main+0x12a4>
d03e5a56:	2c00      	cmp	r4, #0
d03e5a58:	f040 839e 	bne.w	d03e6198 <main+0x17b0>
d03e5a5c:	9b04      	ldr	r3, [sp, #16]
d03e5a5e:	075e      	lsls	r6, r3, #29
d03e5a60:	f100 8623 	bmi.w	d03e66aa <main+0x1cc2>
d03e5a64:	9b04      	ldr	r3, [sp, #16]
d03e5a66:	071d      	lsls	r5, r3, #28
d03e5a68:	f100 864d 	bmi.w	d03e6706 <main+0x1d1e>
d03e5a6c:	9b04      	ldr	r3, [sp, #16]
d03e5a6e:	06d8      	lsls	r0, r3, #27
d03e5a70:	f140 83b3 	bpl.w	d03e61da <main+0x17f2>
d03e5a74:	f64f 73ff 	movw	r3, #65535	; 0xffff
d03e5a78:	4a9e      	ldr	r2, [pc, #632]	; (d03e5cf4 <main+0x130c>)
d03e5a7a:	7812      	ldrb	r2, [r2, #0]
d03e5a7c:	2a04      	cmp	r2, #4
d03e5a7e:	f000 8177 	beq.w	d03e5d70 <main+0x1388>
d03e5a82:	b11c      	cbz	r4, d03e5a8c <main+0x10a4>
d03e5a84:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d03e5a88:	005b      	lsls	r3, r3, #1
d03e5a8a:	b29b      	uxth	r3, r3
d03e5a8c:	4a9a      	ldr	r2, [pc, #616]	; (d03e5cf8 <main+0x1310>)
d03e5a8e:	7811      	ldrb	r1, [r2, #0]
d03e5a90:	2909      	cmp	r1, #9
d03e5a92:	f001 8145 	beq.w	d03e6d20 <main+0x2338>
d03e5a96:	4a99      	ldr	r2, [pc, #612]	; (d03e5cfc <main+0x1314>)
d03e5a98:	290f      	cmp	r1, #15
d03e5a9a:	5c54      	ldrb	r4, [r2, r1]
d03e5a9c:	d805      	bhi.n	d03e5aaa <main+0x10c2>
d03e5a9e:	441c      	add	r4, r3
d03e5aa0:	b224      	sxth	r4, r4
d03e5aa2:	f384 0407 	usat	r4, #7, r4
d03e5aa6:	b2e4      	uxtb	r4, r4
d03e5aa8:	5454      	strb	r4, [r2, r1]
d03e5aaa:	4895      	ldr	r0, [pc, #596]	; (d03e5d00 <main+0x1318>)
d03e5aac:	2201      	movs	r2, #1
d03e5aae:	6803      	ldr	r3, [r0, #0]
d03e5ab0:	408a      	lsls	r2, r1
d03e5ab2:	431a      	orrs	r2, r3
d03e5ab4:	6002      	str	r2, [r0, #0]
d03e5ab6:	0621      	lsls	r1, r4, #24
d03e5ab8:	f100 8665 	bmi.w	d03e6786 <main+0x1d9e>
d03e5abc:	4b91      	ldr	r3, [pc, #580]	; (d03e5d04 <main+0x131c>)
d03e5abe:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
d03e5ac2:	2800      	cmp	r0, #0
d03e5ac4:	f000 8698 	beq.w	d03e67f8 <main+0x1e10>
d03e5ac8:	2300      	movs	r3, #0
d03e5aca:	e002      	b.n	d03e5ad2 <main+0x10ea>
d03e5acc:	2b60      	cmp	r3, #96	; 0x60
d03e5ace:	f000 8646 	beq.w	d03e675e <main+0x1d76>
d03e5ad2:	f810 1023 	ldrb.w	r1, [r0, r3, lsl #2]
d03e5ad6:	b2da      	uxtb	r2, r3
d03e5ad8:	3301      	adds	r3, #1
d03e5ada:	2900      	cmp	r1, #0
d03e5adc:	d1f6      	bne.n	d03e5acc <main+0x10e4>
d03e5ade:	1c53      	adds	r3, r2, #1
d03e5ae0:	b2db      	uxtb	r3, r3
d03e5ae2:	2b06      	cmp	r3, #6
d03e5ae4:	f200 863b 	bhi.w	d03e675e <main+0x1d76>
d03e5ae8:	4a87      	ldr	r2, [pc, #540]	; (d03e5d08 <main+0x1320>)
d03e5aea:	7813      	ldrb	r3, [r2, #0]
d03e5aec:	428b      	cmp	r3, r1
d03e5aee:	bf88      	it	hi
d03e5af0:	7011      	strbhi	r1, [r2, #0]
d03e5af2:	4a86      	ldr	r2, [pc, #536]	; (d03e5d0c <main+0x1324>)
d03e5af4:	4986      	ldr	r1, [pc, #536]	; (d03e5d10 <main+0x1328>)
d03e5af6:	9803      	ldr	r0, [sp, #12]
d03e5af8:	7813      	ldrb	r3, [r2, #0]
d03e5afa:	7008      	strb	r0, [r1, #0]
d03e5afc:	2b00      	cmp	r3, #0
d03e5afe:	f43f abdf 	beq.w	d03e52c0 <main+0x8d8>
d03e5b02:	3b01      	subs	r3, #1
d03e5b04:	b2db      	uxtb	r3, r3
d03e5b06:	7013      	strb	r3, [r2, #0]
d03e5b08:	2b00      	cmp	r3, #0
d03e5b0a:	f47f abd9 	bne.w	d03e52c0 <main+0x8d8>
d03e5b0e:	4a81      	ldr	r2, [pc, #516]	; (d03e5d14 <main+0x132c>)
d03e5b10:	7013      	strb	r3, [r2, #0]
d03e5b12:	4b77      	ldr	r3, [pc, #476]	; (d03e5cf0 <main+0x1308>)
d03e5b14:	781c      	ldrb	r4, [r3, #0]
d03e5b16:	2c00      	cmp	r4, #0
d03e5b18:	f43f abd7 	beq.w	d03e52ca <main+0x8e2>
d03e5b1c:	f899 100c 	ldrb.w	r1, [r9, #12]
d03e5b20:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03e5b24:	f899 400d 	ldrb.w	r4, [r9, #13]
d03e5b28:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03e5b2c:	f899 000e 	ldrb.w	r0, [r9, #14]
d03e5b30:	2602      	movs	r6, #2
d03e5b32:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
d03e5b36:	f899 400f 	ldrb.w	r4, [r9, #15]
d03e5b3a:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d03e5b3e:	4619      	mov	r1, r3
d03e5b40:	ea40 6404 	orr.w	r4, r0, r4, lsl #24
d03e5b44:	4610      	mov	r0, r2
d03e5b46:	6825      	ldr	r5, [r4, #0]
d03e5b48:	2400      	movs	r4, #0
d03e5b4a:	9600      	str	r6, [sp, #0]
d03e5b4c:	696d      	ldr	r5, [r5, #20]
d03e5b4e:	47a8      	blx	r5
d03e5b50:	f899 000c 	ldrb.w	r0, [r9, #12]
d03e5b54:	f899 300d 	ldrb.w	r3, [r9, #13]
d03e5b58:	4621      	mov	r1, r4
d03e5b5a:	f899 200e 	ldrb.w	r2, [r9, #14]
d03e5b5e:	4625      	mov	r5, r4
d03e5b60:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
d03e5b64:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e5b68:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d03e5b6c:	4620      	mov	r0, r4
d03e5b6e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e5b72:	681b      	ldr	r3, [r3, #0]
d03e5b74:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d03e5b76:	4798      	blx	r3
d03e5b78:	f899 1004 	ldrb.w	r1, [r9, #4]
d03e5b7c:	f899 3005 	ldrb.w	r3, [r9, #5]
d03e5b80:	f899 2006 	ldrb.w	r2, [r9, #6]
d03e5b84:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e5b88:	f899 3007 	ldrb.w	r3, [r9, #7]
d03e5b8c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e5b90:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e5b94:	685b      	ldr	r3, [r3, #4]
d03e5b96:	4798      	blx	r3
d03e5b98:	f899 1000 	ldrb.w	r1, [r9]
d03e5b9c:	f899 3001 	ldrb.w	r3, [r9, #1]
d03e5ba0:	f899 2002 	ldrb.w	r2, [r9, #2]
d03e5ba4:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e5ba8:	f899 3003 	ldrb.w	r3, [r9, #3]
d03e5bac:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e5bb0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e5bb4:	685b      	ldr	r3, [r3, #4]
d03e5bb6:	4798      	blx	r3
d03e5bb8:	f899 1020 	ldrb.w	r1, [r9, #32]
d03e5bbc:	f899 3021 	ldrb.w	r3, [r9, #33]	; 0x21
d03e5bc0:	4620      	mov	r0, r4
d03e5bc2:	f899 2022 	ldrb.w	r2, [r9, #34]	; 0x22
d03e5bc6:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e5bca:	f899 3023 	ldrb.w	r3, [r9, #35]	; 0x23
d03e5bce:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e5bd2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e5bd6:	685b      	ldr	r3, [r3, #4]
d03e5bd8:	4798      	blx	r3
d03e5bda:	f899 1020 	ldrb.w	r1, [r9, #32]
d03e5bde:	f899 3021 	ldrb.w	r3, [r9, #33]	; 0x21
d03e5be2:	4620      	mov	r0, r4
d03e5be4:	f899 2022 	ldrb.w	r2, [r9, #34]	; 0x22
d03e5be8:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e5bec:	f899 3023 	ldrb.w	r3, [r9, #35]	; 0x23
d03e5bf0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e5bf4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e5bf8:	681b      	ldr	r3, [r3, #0]
d03e5bfa:	4798      	blx	r3
d03e5bfc:	b2e0      	uxtb	r0, r4
d03e5bfe:	f7fa fe37 	bl	d03e0870 <sid_voice_note_kill>
d03e5c02:	f80a 5034 	strb.w	r5, [sl, r4, lsl #3]
d03e5c06:	eb0a 03c4 	add.w	r3, sl, r4, lsl #3
d03e5c0a:	3401      	adds	r4, #1
d03e5c0c:	2c06      	cmp	r4, #6
d03e5c0e:	80dd      	strh	r5, [r3, #6]
d03e5c10:	d1f4      	bne.n	d03e5bfc <main+0x1214>
d03e5c12:	f899 3014 	ldrb.w	r3, [r9, #20]
d03e5c16:	f899 1015 	ldrb.w	r1, [r9, #21]
d03e5c1a:	f899 2016 	ldrb.w	r2, [r9, #22]
d03e5c1e:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03e5c22:	f899 1017 	ldrb.w	r1, [r9, #23]
d03e5c26:	483c      	ldr	r0, [pc, #240]	; (d03e5d18 <main+0x1330>)
d03e5c28:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e5c2c:	6802      	ldr	r2, [r0, #0]
d03e5c2e:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d03e5c32:	3201      	adds	r2, #1
d03e5c34:	685b      	ldr	r3, [r3, #4]
d03e5c36:	6002      	str	r2, [r0, #0]
d03e5c38:	68db      	ldr	r3, [r3, #12]
d03e5c3a:	4798      	blx	r3
d03e5c3c:	f899 3014 	ldrb.w	r3, [r9, #20]
d03e5c40:	f899 2015 	ldrb.w	r2, [r9, #21]
d03e5c44:	f44f 4080 	mov.w	r0, #16384	; 0x4000
d03e5c48:	f899 1016 	ldrb.w	r1, [r9, #22]
d03e5c4c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e5c50:	f899 2017 	ldrb.w	r2, [r9, #23]
d03e5c54:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e5c58:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e5c5c:	681b      	ldr	r3, [r3, #0]
d03e5c5e:	681b      	ldr	r3, [r3, #0]
d03e5c60:	4798      	blx	r3
d03e5c62:	f899 3014 	ldrb.w	r3, [r9, #20]
d03e5c66:	f899 2015 	ldrb.w	r2, [r9, #21]
d03e5c6a:	2000      	movs	r0, #0
d03e5c6c:	f899 1016 	ldrb.w	r1, [r9, #22]
d03e5c70:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e5c74:	f899 2017 	ldrb.w	r2, [r9, #23]
d03e5c78:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e5c7c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e5c80:	681b      	ldr	r3, [r3, #0]
d03e5c82:	685b      	ldr	r3, [r3, #4]
d03e5c84:	701d      	strb	r5, [r3, #0]
d03e5c86:	b029      	add	sp, #164	; 0xa4
d03e5c88:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e5c8c:	4b23      	ldr	r3, [pc, #140]	; (d03e5d1c <main+0x1334>)
d03e5c8e:	781b      	ldrb	r3, [r3, #0]
d03e5c90:	b13b      	cbz	r3, d03e5ca2 <main+0x12ba>
d03e5c92:	4b19      	ldr	r3, [pc, #100]	; (d03e5cf8 <main+0x1310>)
d03e5c94:	4919      	ldr	r1, [pc, #100]	; (d03e5cfc <main+0x1314>)
d03e5c96:	781a      	ldrb	r2, [r3, #0]
d03e5c98:	4b21      	ldr	r3, [pc, #132]	; (d03e5d20 <main+0x1338>)
d03e5c9a:	5c8a      	ldrb	r2, [r1, r2]
d03e5c9c:	781b      	ldrb	r3, [r3, #0]
d03e5c9e:	429a      	cmp	r2, r3
d03e5ca0:	d040      	beq.n	d03e5d24 <main+0x133c>
d03e5ca2:	2c00      	cmp	r4, #0
d03e5ca4:	f040 8278 	bne.w	d03e6198 <main+0x17b0>
d03e5ca8:	9b04      	ldr	r3, [sp, #16]
d03e5caa:	f013 0f0c 	tst.w	r3, #12
d03e5cae:	f43f aed5 	beq.w	d03e5a5c <main+0x1074>
d03e5cb2:	f013 0204 	ands.w	r2, r3, #4
d03e5cb6:	f041 824b 	bne.w	d03e7150 <main+0x2768>
d03e5cba:	9b04      	ldr	r3, [sp, #16]
d03e5cbc:	0719      	lsls	r1, r3, #28
d03e5cbe:	f101 827f 	bmi.w	d03e71c0 <main+0x27d8>
d03e5cc2:	9b04      	ldr	r3, [sp, #16]
d03e5cc4:	f013 0410 	ands.w	r4, r3, #16
d03e5cc8:	f001 80d9 	beq.w	d03e6e7e <main+0x2496>
d03e5ccc:	4b13      	ldr	r3, [pc, #76]	; (d03e5d1c <main+0x1334>)
d03e5cce:	781b      	ldrb	r3, [r3, #0]
d03e5cd0:	b143      	cbz	r3, d03e5ce4 <main+0x12fc>
d03e5cd2:	4b09      	ldr	r3, [pc, #36]	; (d03e5cf8 <main+0x1310>)
d03e5cd4:	4a12      	ldr	r2, [pc, #72]	; (d03e5d20 <main+0x1338>)
d03e5cd6:	781b      	ldrb	r3, [r3, #0]
d03e5cd8:	4908      	ldr	r1, [pc, #32]	; (d03e5cfc <main+0x1314>)
d03e5cda:	7812      	ldrb	r2, [r2, #0]
d03e5cdc:	5ccb      	ldrb	r3, [r1, r3]
d03e5cde:	429a      	cmp	r2, r3
d03e5ce0:	f43f af07 	beq.w	d03e5af2 <main+0x110a>
d03e5ce4:	f64f 73ff 	movw	r3, #65535	; 0xffff
d03e5ce8:	e6d0      	b.n	d03e5a8c <main+0x10a4>
d03e5cea:	bf00      	nop
d03e5cec:	d03ea631 	.word	0xd03ea631
d03e5cf0:	d03ea632 	.word	0xd03ea632
d03e5cf4:	d03ea636 	.word	0xd03ea636
d03e5cf8:	d03ea645 	.word	0xd03ea645
d03e5cfc:	d03ea3a4 	.word	0xd03ea3a4
d03e5d00:	d03ea624 	.word	0xd03ea624
d03e5d04:	d03e9cbc 	.word	0xd03e9cbc
d03e5d08:	d03ea805 	.word	0xd03ea805
d03e5d0c:	d03ea670 	.word	0xd03ea670
d03e5d10:	d03ea633 	.word	0xd03ea633
d03e5d14:	d03ea648 	.word	0xd03ea648
d03e5d18:	d03ea5e4 	.word	0xd03ea5e4
d03e5d1c:	d03ea7f5 	.word	0xd03ea7f5
d03e5d20:	d03ea7fc 	.word	0xd03ea7fc
d03e5d24:	9b04      	ldr	r3, [sp, #16]
d03e5d26:	f013 0304 	ands.w	r3, r3, #4
d03e5d2a:	f041 8238 	bne.w	d03e719e <main+0x27b6>
d03e5d2e:	9a04      	ldr	r2, [sp, #16]
d03e5d30:	0717      	lsls	r7, r2, #28
d03e5d32:	d50a      	bpl.n	d03e5d4a <main+0x1362>
d03e5d34:	48bf      	ldr	r0, [pc, #764]	; (d03e6034 <main+0x164c>)
d03e5d36:	2101      	movs	r1, #1
d03e5d38:	4dbf      	ldr	r5, [pc, #764]	; (d03e6038 <main+0x1650>)
d03e5d3a:	7802      	ldrb	r2, [r0, #0]
d03e5d3c:	702b      	strb	r3, [r5, #0]
d03e5d3e:	1853      	adds	r3, r2, r1
d03e5d40:	4abe      	ldr	r2, [pc, #760]	; (d03e603c <main+0x1654>)
d03e5d42:	7003      	strb	r3, [r0, #0]
d03e5d44:	7011      	strb	r1, [r2, #0]
d03e5d46:	f7fc ffbd 	bl	d03e2cc4 <ui_vm_editor_clamp_selection>
d03e5d4a:	9b04      	ldr	r3, [sp, #16]
d03e5d4c:	06de      	lsls	r6, r3, #27
d03e5d4e:	f141 80a9 	bpl.w	d03e6ea4 <main+0x24bc>
d03e5d52:	4bbb      	ldr	r3, [pc, #748]	; (d03e6040 <main+0x1658>)
d03e5d54:	781b      	ldrb	r3, [r3, #0]
d03e5d56:	2c00      	cmp	r4, #0
d03e5d58:	f001 8266 	beq.w	d03e7228 <main+0x2840>
d03e5d5c:	2b02      	cmp	r3, #2
d03e5d5e:	bf0c      	ite	eq
d03e5d60:	f06f 000f 	mvneq.w	r0, #15
d03e5d64:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
d03e5d68:	f7fd f810 	bl	d03e2d8c <ui_vm_editor_adjust>
d03e5d6c:	f64f 73ff 	movw	r3, #65535	; 0xffff
d03e5d70:	4ab4      	ldr	r2, [pc, #720]	; (d03e6044 <main+0x165c>)
d03e5d72:	7812      	ldrb	r2, [r2, #0]
d03e5d74:	2a00      	cmp	r2, #0
d03e5d76:	f43f ae84 	beq.w	d03e5a82 <main+0x109a>
d03e5d7a:	4ab3      	ldr	r2, [pc, #716]	; (d03e6048 <main+0x1660>)
d03e5d7c:	48b3      	ldr	r0, [pc, #716]	; (d03e604c <main+0x1664>)
d03e5d7e:	7811      	ldrb	r1, [r2, #0]
d03e5d80:	4ab3      	ldr	r2, [pc, #716]	; (d03e6050 <main+0x1668>)
d03e5d82:	5c41      	ldrb	r1, [r0, r1]
d03e5d84:	7812      	ldrb	r2, [r2, #0]
d03e5d86:	4291      	cmp	r1, r2
d03e5d88:	f47f ae7b 	bne.w	d03e5a82 <main+0x109a>
d03e5d8c:	e6b1      	b.n	d03e5af2 <main+0x110a>
d03e5d8e:	4bb1      	ldr	r3, [pc, #708]	; (d03e6054 <main+0x166c>)
d03e5d90:	781b      	ldrb	r3, [r3, #0]
d03e5d92:	2b00      	cmp	r3, #0
d03e5d94:	f43f ace7 	beq.w	d03e5766 <main+0xd7e>
d03e5d98:	e4df      	b.n	d03e575a <main+0xd72>
d03e5d9a:	2d00      	cmp	r5, #0
d03e5d9c:	f040 8227 	bne.w	d03e61ee <main+0x1806>
d03e5da0:	f899 5000 	ldrb.w	r5, [r9]
d03e5da4:	f10d 0136 	add.w	r1, sp, #54	; 0x36
d03e5da8:	f899 3001 	ldrb.w	r3, [r9, #1]
d03e5dac:	a80d      	add	r0, sp, #52	; 0x34
d03e5dae:	f899 2002 	ldrb.w	r2, [r9, #2]
d03e5db2:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d03e5db6:	f899 3003 	ldrb.w	r3, [r9, #3]
d03e5dba:	ea45 4202 	orr.w	r2, r5, r2, lsl #16
d03e5dbe:	9d03      	ldr	r5, [sp, #12]
d03e5dc0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e5dc4:	f005 0603 	and.w	r6, r5, #3
d03e5dc8:	691b      	ldr	r3, [r3, #16]
d03e5dca:	9607      	str	r6, [sp, #28]
d03e5dcc:	4798      	blx	r3
d03e5dce:	f899 3000 	ldrb.w	r3, [r9]
d03e5dd2:	a90f      	add	r1, sp, #60	; 0x3c
d03e5dd4:	f899 2001 	ldrb.w	r2, [r9, #1]
d03e5dd8:	4605      	mov	r5, r0
d03e5dda:	a80e      	add	r0, sp, #56	; 0x38
d03e5ddc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e5de0:	f899 2002 	ldrb.w	r2, [r9, #2]
d03e5de4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e5de8:	f899 2003 	ldrb.w	r2, [r9, #3]
d03e5dec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e5df0:	699b      	ldr	r3, [r3, #24]
d03e5df2:	4798      	blx	r3
d03e5df4:	f899 0000 	ldrb.w	r0, [r9]
d03e5df8:	f899 2001 	ldrb.w	r2, [r9, #1]
d03e5dfc:	f899 c002 	ldrb.w	ip, [r9, #2]
d03e5e00:	ea40 2102 	orr.w	r1, r0, r2, lsl #8
d03e5e04:	f899 3003 	ldrb.w	r3, [r9, #3]
d03e5e08:	ea41 420c 	orr.w	r2, r1, ip, lsl #16
d03e5e0c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e5e10:	69db      	ldr	r3, [r3, #28]
d03e5e12:	4798      	blx	r3
d03e5e14:	f8bd 0014 	ldrh.w	r0, [sp, #20]
d03e5e18:	ea46 0105 	orr.w	r1, r6, r5
d03e5e1c:	e9dd 230e 	ldrd	r2, r3, [sp, #56]	; 0x38
d03e5e20:	f011 01ff 	ands.w	r1, r1, #255	; 0xff
d03e5e24:	4410      	add	r0, r2
d03e5e26:	f8bd 2018 	ldrh.w	r2, [sp, #24]
d03e5e2a:	4413      	add	r3, r2
d03e5e2c:	b206      	sxth	r6, r0
d03e5e2e:	b21f      	sxth	r7, r3
d03e5e30:	f000 8499 	beq.w	d03e6766 <main+0x1d7e>
d03e5e34:	f240 14df 	movw	r4, #479	; 0x1df
d03e5e38:	4b87      	ldr	r3, [pc, #540]	; (d03e6058 <main+0x1670>)
d03e5e3a:	ea26 72e6 	bic.w	r2, r6, r6, asr #31
d03e5e3e:	f240 103f 	movw	r0, #319	; 0x13f
d03e5e42:	781d      	ldrb	r5, [r3, #0]
d03e5e44:	ea27 73e7 	bic.w	r3, r7, r7, asr #31
d03e5e48:	42a2      	cmp	r2, r4
d03e5e4a:	f001 0c03 	and.w	ip, r1, #3
d03e5e4e:	fab5 f585 	clz	r5, r5
d03e5e52:	bfa8      	it	ge
d03e5e54:	4622      	movge	r2, r4
d03e5e56:	4283      	cmp	r3, r0
d03e5e58:	ea4f 1455 	mov.w	r4, r5, lsr #5
d03e5e5c:	bfa8      	it	ge
d03e5e5e:	4603      	movge	r3, r0
d03e5e60:	f011 0001 	ands.w	r0, r1, #1
d03e5e64:	9405      	str	r4, [sp, #20]
d03e5e66:	469e      	mov	lr, r3
d03e5e68:	9006      	str	r0, [sp, #24]
d03e5e6a:	f001 0302 	and.w	r3, r1, #2
d03e5e6e:	f47f a9ad 	bne.w	d03e51cc <main+0x7e4>
d03e5e72:	900a      	str	r0, [sp, #40]	; 0x28
d03e5e74:	900b      	str	r0, [sp, #44]	; 0x2c
d03e5e76:	9008      	str	r0, [sp, #32]
d03e5e78:	2b00      	cmp	r3, #0
d03e5e7a:	f47f a9b8 	bne.w	d03e51ee <main+0x806>
d03e5e7e:	2401      	movs	r4, #1
d03e5e80:	4618      	mov	r0, r3
d03e5e82:	f7ff b9bc 	b.w	d03e51fe <main+0x816>
d03e5e86:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e5e8a:	ea42 4404 	orr.w	r4, r2, r4, lsl #16
d03e5e8e:	4a73      	ldr	r2, [pc, #460]	; (d03e605c <main+0x1674>)
d03e5e90:	ea44 6303 	orr.w	r3, r4, r3, lsl #24
d03e5e94:	685b      	ldr	r3, [r3, #4]
d03e5e96:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e5e98:	4798      	blx	r3
d03e5e9a:	4b71      	ldr	r3, [pc, #452]	; (d03e6060 <main+0x1678>)
d03e5e9c:	781b      	ldrb	r3, [r3, #0]
d03e5e9e:	2b01      	cmp	r3, #1
d03e5ea0:	f47f acc1 	bne.w	d03e5826 <main+0xe3e>
d03e5ea4:	4b6f      	ldr	r3, [pc, #444]	; (d03e6064 <main+0x167c>)
d03e5ea6:	277c      	movs	r7, #124	; 0x7c
d03e5ea8:	781c      	ldrb	r4, [r3, #0]
d03e5eaa:	230e      	movs	r3, #14
d03e5eac:	00a4      	lsls	r4, r4, #2
d03e5eae:	f8ad 3040 	strh.w	r3, [sp, #64]	; 0x40
d03e5eb2:	b2e4      	uxtb	r4, r4
d03e5eb4:	f89a 3000 	ldrb.w	r3, [sl]
d03e5eb8:	b12b      	cbz	r3, d03e5ec6 <main+0x14de>
d03e5eba:	f89a 3001 	ldrb.w	r3, [sl, #1]
d03e5ebe:	1b1b      	subs	r3, r3, r4
d03e5ec0:	fab3 f383 	clz	r3, r3
d03e5ec4:	095b      	lsrs	r3, r3, #5
d03e5ec6:	f89a 2008 	ldrb.w	r2, [sl, #8]
d03e5eca:	b12a      	cbz	r2, d03e5ed8 <main+0x14f0>
d03e5ecc:	f89a 2009 	ldrb.w	r2, [sl, #9]
d03e5ed0:	42a2      	cmp	r2, r4
d03e5ed2:	d101      	bne.n	d03e5ed8 <main+0x14f0>
d03e5ed4:	3301      	adds	r3, #1
d03e5ed6:	b2db      	uxtb	r3, r3
d03e5ed8:	f89a 2010 	ldrb.w	r2, [sl, #16]
d03e5edc:	b12a      	cbz	r2, d03e5eea <main+0x1502>
d03e5ede:	f89a 2011 	ldrb.w	r2, [sl, #17]
d03e5ee2:	42a2      	cmp	r2, r4
d03e5ee4:	d101      	bne.n	d03e5eea <main+0x1502>
d03e5ee6:	3301      	adds	r3, #1
d03e5ee8:	b2db      	uxtb	r3, r3
d03e5eea:	f89a 2018 	ldrb.w	r2, [sl, #24]
d03e5eee:	b12a      	cbz	r2, d03e5efc <main+0x1514>
d03e5ef0:	f89a 2019 	ldrb.w	r2, [sl, #25]
d03e5ef4:	42a2      	cmp	r2, r4
d03e5ef6:	d101      	bne.n	d03e5efc <main+0x1514>
d03e5ef8:	3301      	adds	r3, #1
d03e5efa:	b2db      	uxtb	r3, r3
d03e5efc:	f89a 2020 	ldrb.w	r2, [sl, #32]
d03e5f00:	b11a      	cbz	r2, d03e5f0a <main+0x1522>
d03e5f02:	f89a 2021 	ldrb.w	r2, [sl, #33]	; 0x21
d03e5f06:	42a2      	cmp	r2, r4
d03e5f08:	d007      	beq.n	d03e5f1a <main+0x1532>
d03e5f0a:	f89a 2028 	ldrb.w	r2, [sl, #40]	; 0x28
d03e5f0e:	b11a      	cbz	r2, d03e5f18 <main+0x1530>
d03e5f10:	f89a 2029 	ldrb.w	r2, [sl, #41]	; 0x29
d03e5f14:	42a2      	cmp	r2, r4
d03e5f16:	d000      	beq.n	d03e5f1a <main+0x1532>
d03e5f18:	b32b      	cbz	r3, d03e5f66 <main+0x157e>
d03e5f1a:	f899 500c 	ldrb.w	r5, [r9, #12]
d03e5f1e:	200e      	movs	r0, #14
d03e5f20:	f899 100d 	ldrb.w	r1, [r9, #13]
d03e5f24:	f899 200e 	ldrb.w	r2, [r9, #14]
d03e5f28:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e5f2c:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e5f30:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e5f34:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e5f38:	685b      	ldr	r3, [r3, #4]
d03e5f3a:	68db      	ldr	r3, [r3, #12]
d03e5f3c:	4798      	blx	r3
d03e5f3e:	f899 600c 	ldrb.w	r6, [r9, #12]
d03e5f42:	f899 000d 	ldrb.w	r0, [r9, #13]
d03e5f46:	aa10      	add	r2, sp, #64	; 0x40
d03e5f48:	f899 500e 	ldrb.w	r5, [r9, #14]
d03e5f4c:	4639      	mov	r1, r7
d03e5f4e:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
d03e5f52:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e5f56:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d03e5f5a:	2020      	movs	r0, #32
d03e5f5c:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e5f60:	685b      	ldr	r3, [r3, #4]
d03e5f62:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e5f64:	4798      	blx	r3
d03e5f66:	3724      	adds	r7, #36	; 0x24
d03e5f68:	3401      	adds	r4, #1
d03e5f6a:	f5b7 7f86 	cmp.w	r7, #268	; 0x10c
d03e5f6e:	b2e4      	uxtb	r4, r4
d03e5f70:	d1a0      	bne.n	d03e5eb4 <main+0x14cc>
d03e5f72:	e45e      	b.n	d03e5832 <main+0xe4a>
d03e5f74:	493c      	ldr	r1, [pc, #240]	; (d03e6068 <main+0x1680>)
d03e5f76:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d03e5f7a:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e5f7e:	6809      	ldr	r1, [r1, #0]
d03e5f80:	483a      	ldr	r0, [pc, #232]	; (d03e606c <main+0x1684>)
d03e5f82:	e408      	b.n	d03e5796 <main+0xdae>
d03e5f84:	4a3a      	ldr	r2, [pc, #232]	; (d03e6070 <main+0x1688>)
d03e5f86:	493b      	ldr	r1, [pc, #236]	; (d03e6074 <main+0x168c>)
d03e5f88:	7812      	ldrb	r2, [r2, #0]
d03e5f8a:	700c      	strb	r4, [r1, #0]
d03e5f8c:	2a00      	cmp	r2, #0
d03e5f8e:	f040 83fd 	bne.w	d03e678c <main+0x1da4>
d03e5f92:	4a33      	ldr	r2, [pc, #204]	; (d03e6060 <main+0x1678>)
d03e5f94:	492b      	ldr	r1, [pc, #172]	; (d03e6044 <main+0x165c>)
d03e5f96:	7815      	ldrb	r5, [r2, #0]
d03e5f98:	4a37      	ldr	r2, [pc, #220]	; (d03e6078 <main+0x1690>)
d03e5f9a:	7809      	ldrb	r1, [r1, #0]
d03e5f9c:	7812      	ldrb	r2, [r2, #0]
d03e5f9e:	f7ff ba1b 	b.w	d03e53d8 <main+0x9f0>
d03e5fa2:	2002      	movs	r0, #2
d03e5fa4:	f7fa fbf6 	bl	d03e0794 <sid_voice_note_off>
d03e5fa8:	f8d8 3000 	ldr.w	r3, [r8]
d03e5fac:	f04f 0200 	mov.w	r2, #0
d03e5fb0:	3301      	adds	r3, #1
d03e5fb2:	f88a 2010 	strb.w	r2, [sl, #16]
d03e5fb6:	f04f 0200 	mov.w	r2, #0
d03e5fba:	f8c8 3000 	str.w	r3, [r8]
d03e5fbe:	f8aa 2016 	strh.w	r2, [sl, #22]
d03e5fc2:	f7ff b84b 	b.w	d03e505c <main+0x674>
d03e5fc6:	2004      	movs	r0, #4
d03e5fc8:	f7fa fbe4 	bl	d03e0794 <sid_voice_note_off>
d03e5fcc:	f8d8 3000 	ldr.w	r3, [r8]
d03e5fd0:	f04f 0200 	mov.w	r2, #0
d03e5fd4:	3301      	adds	r3, #1
d03e5fd6:	f88a 2020 	strb.w	r2, [sl, #32]
d03e5fda:	f04f 0200 	mov.w	r2, #0
d03e5fde:	f8c8 3000 	str.w	r3, [r8]
d03e5fe2:	f8aa 2026 	strh.w	r2, [sl, #38]	; 0x26
d03e5fe6:	f7ff b84b 	b.w	d03e5080 <main+0x698>
d03e5fea:	2000      	movs	r0, #0
d03e5fec:	f7fa fbd2 	bl	d03e0794 <sid_voice_note_off>
d03e5ff0:	f8d8 3000 	ldr.w	r3, [r8]
d03e5ff4:	f04f 0200 	mov.w	r2, #0
d03e5ff8:	3301      	adds	r3, #1
d03e5ffa:	f88a 2000 	strb.w	r2, [sl]
d03e5ffe:	f04f 0200 	mov.w	r2, #0
d03e6002:	f8c8 3000 	str.w	r3, [r8]
d03e6006:	f8aa 2006 	strh.w	r2, [sl, #6]
d03e600a:	f7fe bf52 	b.w	d03e4eb2 <main+0x4ca>
d03e600e:	2000      	movs	r0, #0
d03e6010:	f7fa fbc0 	bl	d03e0794 <sid_voice_note_off>
d03e6014:	f8d8 3000 	ldr.w	r3, [r8]
d03e6018:	f04f 0200 	mov.w	r2, #0
d03e601c:	3301      	adds	r3, #1
d03e601e:	f88a 2000 	strb.w	r2, [sl]
d03e6022:	f04f 0200 	mov.w	r2, #0
d03e6026:	f8c8 3000 	str.w	r3, [r8]
d03e602a:	f8aa 2006 	strh.w	r2, [sl, #6]
d03e602e:	f7ff b803 	b.w	d03e5038 <main+0x650>
d03e6032:	bf00      	nop
d03e6034:	d03ea7fd 	.word	0xd03ea7fd
d03e6038:	d03ea7ff 	.word	0xd03ea7ff
d03e603c:	d03ea7fe 	.word	0xd03ea7fe
d03e6040:	d03ea7f4 	.word	0xd03ea7f4
d03e6044:	d03ea7f5 	.word	0xd03ea7f5
d03e6048:	d03ea645 	.word	0xd03ea645
d03e604c:	d03ea3a4 	.word	0xd03ea3a4
d03e6050:	d03ea7fc 	.word	0xd03ea7fc
d03e6054:	d03ea628 	.word	0xd03ea628
d03e6058:	d03ea635 	.word	0xd03ea635
d03e605c:	d03e961c 	.word	0xd03e961c
d03e6060:	d03ea636 	.word	0xd03ea636
d03e6064:	d03ea630 	.word	0xd03ea630
d03e6068:	d03ea36c 	.word	0xd03ea36c
d03e606c:	d03ea370 	.word	0xd03ea370
d03e6070:	d03ea800 	.word	0xd03ea800
d03e6074:	d03ea803 	.word	0xd03ea803
d03e6078:	d03ea805 	.word	0xd03ea805
d03e607c:	2001      	movs	r0, #1
d03e607e:	f7fa fb89 	bl	d03e0794 <sid_voice_note_off>
d03e6082:	f8d8 3000 	ldr.w	r3, [r8]
d03e6086:	f04f 0200 	mov.w	r2, #0
d03e608a:	3301      	adds	r3, #1
d03e608c:	f88a 2008 	strb.w	r2, [sl, #8]
d03e6090:	f04f 0200 	mov.w	r2, #0
d03e6094:	f8c8 3000 	str.w	r3, [r8]
d03e6098:	f8aa 200e 	strh.w	r2, [sl, #14]
d03e609c:	f7fe bfd5 	b.w	d03e504a <main+0x662>
d03e60a0:	2003      	movs	r0, #3
d03e60a2:	f7fa fb77 	bl	d03e0794 <sid_voice_note_off>
d03e60a6:	f8d8 3000 	ldr.w	r3, [r8]
d03e60aa:	f04f 0200 	mov.w	r2, #0
d03e60ae:	3301      	adds	r3, #1
d03e60b0:	f88a 2018 	strb.w	r2, [sl, #24]
d03e60b4:	f04f 0200 	mov.w	r2, #0
d03e60b8:	f8c8 3000 	str.w	r3, [r8]
d03e60bc:	f8aa 201e 	strh.w	r2, [sl, #30]
d03e60c0:	f7fe bf12 	b.w	d03e4ee8 <main+0x500>
d03e60c4:	2004      	movs	r0, #4
d03e60c6:	f7fa fb65 	bl	d03e0794 <sid_voice_note_off>
d03e60ca:	f8d8 3000 	ldr.w	r3, [r8]
d03e60ce:	f04f 0200 	mov.w	r2, #0
d03e60d2:	3301      	adds	r3, #1
d03e60d4:	f88a 2020 	strb.w	r2, [sl, #32]
d03e60d8:	f04f 0200 	mov.w	r2, #0
d03e60dc:	f8c8 3000 	str.w	r3, [r8]
d03e60e0:	f8aa 2026 	strh.w	r2, [sl, #38]	; 0x26
d03e60e4:	f7fe bf09 	b.w	d03e4efa <main+0x512>
d03e60e8:	2001      	movs	r0, #1
d03e60ea:	f7fa fb53 	bl	d03e0794 <sid_voice_note_off>
d03e60ee:	f8d8 3000 	ldr.w	r3, [r8]
d03e60f2:	f04f 0200 	mov.w	r2, #0
d03e60f6:	3301      	adds	r3, #1
d03e60f8:	f88a 2008 	strb.w	r2, [sl, #8]
d03e60fc:	f04f 0200 	mov.w	r2, #0
d03e6100:	f8c8 3000 	str.w	r3, [r8]
d03e6104:	f8aa 200e 	strh.w	r2, [sl, #14]
d03e6108:	f7fe bedc 	b.w	d03e4ec4 <main+0x4dc>
d03e610c:	2002      	movs	r0, #2
d03e610e:	f7fa fb41 	bl	d03e0794 <sid_voice_note_off>
d03e6112:	f8d8 3000 	ldr.w	r3, [r8]
d03e6116:	f04f 0200 	mov.w	r2, #0
d03e611a:	3301      	adds	r3, #1
d03e611c:	f88a 2010 	strb.w	r2, [sl, #16]
d03e6120:	f04f 0200 	mov.w	r2, #0
d03e6124:	f8c8 3000 	str.w	r3, [r8]
d03e6128:	f8aa 2016 	strh.w	r2, [sl, #22]
d03e612c:	f7fe bed3 	b.w	d03e4ed6 <main+0x4ee>
d03e6130:	2003      	movs	r0, #3
d03e6132:	f7fa fb2f 	bl	d03e0794 <sid_voice_note_off>
d03e6136:	f8d8 3000 	ldr.w	r3, [r8]
d03e613a:	f04f 0200 	mov.w	r2, #0
d03e613e:	3301      	adds	r3, #1
d03e6140:	f88a 2018 	strb.w	r2, [sl, #24]
d03e6144:	f04f 0200 	mov.w	r2, #0
d03e6148:	f8c8 3000 	str.w	r3, [r8]
d03e614c:	f8aa 201e 	strh.w	r2, [sl, #30]
d03e6150:	f7fe bf8d 	b.w	d03e506e <main+0x686>
d03e6154:	230c      	movs	r3, #12
d03e6156:	4a71      	ldr	r2, [pc, #452]	; (d03e631c <main+0x1934>)
d03e6158:	7013      	strb	r3, [r2, #0]
d03e615a:	f7fe bfd9 	b.w	d03e5110 <main+0x728>
d03e615e:	990a      	ldr	r1, [sp, #40]	; 0x28
d03e6160:	7019      	strb	r1, [r3, #0]
d03e6162:	9b08      	ldr	r3, [sp, #32]
d03e6164:	2b00      	cmp	r3, #0
d03e6166:	f000 8251 	beq.w	d03e660c <main+0x1c24>
d03e616a:	4b6d      	ldr	r3, [pc, #436]	; (d03e6320 <main+0x1938>)
d03e616c:	2e09      	cmp	r6, #9
d03e616e:	7018      	strb	r0, [r3, #0]
d03e6170:	f300 836e 	bgt.w	d03e6850 <main+0x1e68>
d03e6174:	f1a6 0308 	sub.w	r3, r6, #8
d03e6178:	b29b      	uxth	r3, r3
d03e617a:	2b45      	cmp	r3, #69	; 0x45
d03e617c:	f241 80c1 	bls.w	d03e7302 <main+0x291a>
d03e6180:	4b68      	ldr	r3, [pc, #416]	; (d03e6324 <main+0x193c>)
d03e6182:	781b      	ldrb	r3, [r3, #0]
d03e6184:	2b04      	cmp	r3, #4
d03e6186:	f63f a88f 	bhi.w	d03e52a8 <main+0x8c0>
d03e618a:	e8df f013 	tbh	[pc, r3, lsl #1]
d03e618e:	05a3      	.short	0x05a3
d03e6190:	04f7055d 	.word	0x04f7055d
d03e6194:	03d7047f 	.word	0x03d7047f
d03e6198:	9b04      	ldr	r3, [sp, #16]
d03e619a:	f013 0f0c 	tst.w	r3, #12
d03e619e:	461a      	mov	r2, r3
d03e61a0:	f000 827e 	beq.w	d03e66a0 <main+0x1cb8>
d03e61a4:	0752      	lsls	r2, r2, #29
d03e61a6:	f100 85cd 	bmi.w	d03e6d44 <main+0x235c>
d03e61aa:	071f      	lsls	r7, r3, #28
d03e61ac:	f140 83a4 	bpl.w	d03e68f8 <main+0x1f10>
d03e61b0:	f06f 0309 	mvn.w	r3, #9
d03e61b4:	495c      	ldr	r1, [pc, #368]	; (d03e6328 <main+0x1940>)
d03e61b6:	2401      	movs	r4, #1
d03e61b8:	880a      	ldrh	r2, [r1, #0]
d03e61ba:	4413      	add	r3, r2
d03e61bc:	b21b      	sxth	r3, r3
d03e61be:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
d03e61c2:	bfa8      	it	ge
d03e61c4:	f44f 7396 	movge.w	r3, #300	; 0x12c
d03e61c8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d03e61cc:	800b      	strh	r3, [r1, #0]
d03e61ce:	f7fb febd 	bl	d03e1f4c <midi_update_all_active_volume>
d03e61d2:	9b04      	ldr	r3, [sp, #16]
d03e61d4:	06d8      	lsls	r0, r3, #27
d03e61d6:	f53f ac4d 	bmi.w	d03e5a74 <main+0x108c>
d03e61da:	069a      	lsls	r2, r3, #26
d03e61dc:	f57f ac89 	bpl.w	d03e5af2 <main+0x110a>
d03e61e0:	2301      	movs	r3, #1
d03e61e2:	e449      	b.n	d03e5a78 <main+0x1090>
d03e61e4:	2300      	movs	r3, #0
d03e61e6:	2401      	movs	r4, #1
d03e61e8:	4618      	mov	r0, r3
d03e61ea:	f7ff b808 	b.w	d03e51fe <main+0x816>
d03e61ee:	f240 10df 	movw	r0, #479	; 0x1df
d03e61f2:	ea26 72e6 	bic.w	r2, r6, r6, asr #31
d03e61f6:	ea27 73e7 	bic.w	r3, r7, r7, asr #31
d03e61fa:	f240 113f 	movw	r1, #319	; 0x13f
d03e61fe:	4282      	cmp	r2, r0
d03e6200:	bfa8      	it	ge
d03e6202:	4602      	movge	r2, r0
d03e6204:	428b      	cmp	r3, r1
d03e6206:	9803      	ldr	r0, [sp, #12]
d03e6208:	bfa8      	it	ge
d03e620a:	460b      	movge	r3, r1
d03e620c:	f000 0003 	and.w	r0, r0, #3
d03e6210:	469e      	mov	lr, r3
d03e6212:	9007      	str	r0, [sp, #28]
d03e6214:	2300      	movs	r3, #0
d03e6216:	469c      	mov	ip, r3
d03e6218:	4619      	mov	r1, r3
d03e621a:	4618      	mov	r0, r3
d03e621c:	930a      	str	r3, [sp, #40]	; 0x28
d03e621e:	9305      	str	r3, [sp, #20]
d03e6220:	9306      	str	r3, [sp, #24]
d03e6222:	930b      	str	r3, [sp, #44]	; 0x2c
d03e6224:	9308      	str	r3, [sp, #32]
d03e6226:	f7fe bfea 	b.w	d03e51fe <main+0x816>
d03e622a:	4a40      	ldr	r2, [pc, #256]	; (d03e632c <main+0x1944>)
d03e622c:	7812      	ldrb	r2, [r2, #0]
d03e622e:	2a00      	cmp	r2, #0
d03e6230:	f040 82c5 	bne.w	d03e67be <main+0x1dd6>
d03e6234:	4a3e      	ldr	r2, [pc, #248]	; (d03e6330 <main+0x1948>)
d03e6236:	493f      	ldr	r1, [pc, #252]	; (d03e6334 <main+0x194c>)
d03e6238:	7812      	ldrb	r2, [r2, #0]
d03e623a:	7809      	ldrb	r1, [r1, #0]
d03e623c:	f7ff b8cc 	b.w	d03e53d8 <main+0x9f0>
d03e6240:	9a04      	ldr	r2, [sp, #16]
d03e6242:	701a      	strb	r2, [r3, #0]
d03e6244:	f7fe bf64 	b.w	d03e5110 <main+0x728>
d03e6248:	4b3b      	ldr	r3, [pc, #236]	; (d03e6338 <main+0x1950>)
d03e624a:	781b      	ldrb	r3, [r3, #0]
d03e624c:	2b00      	cmp	r3, #0
d03e624e:	f43f aaf0 	beq.w	d03e5832 <main+0xe4a>
d03e6252:	4e3a      	ldr	r6, [pc, #232]	; (d03e633c <main+0x1954>)
d03e6254:	4b36      	ldr	r3, [pc, #216]	; (d03e6330 <main+0x1948>)
d03e6256:	7834      	ldrb	r4, [r6, #0]
d03e6258:	781d      	ldrb	r5, [r3, #0]
d03e625a:	42ac      	cmp	r4, r5
d03e625c:	d32c      	bcc.n	d03e62b8 <main+0x18d0>
d03e625e:	1dab      	adds	r3, r5, #6
d03e6260:	b2db      	uxtb	r3, r3
d03e6262:	429c      	cmp	r4, r3
d03e6264:	d228      	bcs.n	d03e62b8 <main+0x18d0>
d03e6266:	f899 300c 	ldrb.w	r3, [r9, #12]
d03e626a:	200e      	movs	r0, #14
d03e626c:	f899 200d 	ldrb.w	r2, [r9, #13]
d03e6270:	1b64      	subs	r4, r4, r5
d03e6272:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6276:	f899 200e 	ldrb.w	r2, [r9, #14]
d03e627a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e627e:	f899 200f 	ldrb.w	r2, [r9, #15]
d03e6282:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6286:	685b      	ldr	r3, [r3, #4]
d03e6288:	68db      	ldr	r3, [r3, #12]
d03e628a:	4798      	blx	r3
d03e628c:	f899 200c 	ldrb.w	r2, [r9, #12]
d03e6290:	f899 100d 	ldrb.w	r1, [r9, #13]
d03e6294:	2014      	movs	r0, #20
d03e6296:	f899 300e 	ldrb.w	r3, [r9, #14]
d03e629a:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d03e629e:	f899 500f 	ldrb.w	r5, [r9, #15]
d03e62a2:	0121      	lsls	r1, r4, #4
d03e62a4:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d03e62a8:	4a25      	ldr	r2, [pc, #148]	; (d03e6340 <main+0x1958>)
d03e62aa:	317c      	adds	r1, #124	; 0x7c
d03e62ac:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d03e62b0:	685b      	ldr	r3, [r3, #4]
d03e62b2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e62b4:	4798      	blx	r3
d03e62b6:	7834      	ldrb	r4, [r6, #0]
d03e62b8:	4b22      	ldr	r3, [pc, #136]	; (d03e6344 <main+0x195c>)
d03e62ba:	a810      	add	r0, sp, #64	; 0x40
d03e62bc:	4a22      	ldr	r2, [pc, #136]	; (d03e6348 <main+0x1960>)
d03e62be:	7819      	ldrb	r1, [r3, #0]
d03e62c0:	4623      	mov	r3, r4
d03e62c2:	9100      	str	r1, [sp, #0]
d03e62c4:	2118      	movs	r1, #24
d03e62c6:	f001 fd65 	bl	d03e7d94 <sniprintf>
d03e62ca:	f899 400c 	ldrb.w	r4, [r9, #12]
d03e62ce:	f899 100d 	ldrb.w	r1, [r9, #13]
d03e62d2:	200e      	movs	r0, #14
d03e62d4:	f899 200e 	ldrb.w	r2, [r9, #14]
d03e62d8:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d03e62dc:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e62e0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e62e4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e62e8:	685b      	ldr	r3, [r3, #4]
d03e62ea:	68db      	ldr	r3, [r3, #12]
d03e62ec:	4798      	blx	r3
d03e62ee:	f899 000c 	ldrb.w	r0, [r9, #12]
d03e62f2:	f899 500d 	ldrb.w	r5, [r9, #13]
d03e62f6:	21fa      	movs	r1, #250	; 0xfa
d03e62f8:	f899 400e 	ldrb.w	r4, [r9, #14]
d03e62fc:	aa10      	add	r2, sp, #64	; 0x40
d03e62fe:	ea40 2505 	orr.w	r5, r0, r5, lsl #8
d03e6302:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e6306:	4608      	mov	r0, r1
d03e6308:	ea45 4404 	orr.w	r4, r5, r4, lsl #16
d03e630c:	ea44 6303 	orr.w	r3, r4, r3, lsl #24
d03e6310:	685b      	ldr	r3, [r3, #4]
d03e6312:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e6314:	4798      	blx	r3
d03e6316:	f7ff ba8c 	b.w	d03e5832 <main+0xe4a>
d03e631a:	bf00      	nop
d03e631c:	d03ea644 	.word	0xd03ea644
d03e6320:	d03ea638 	.word	0xd03ea638
d03e6324:	d03ea636 	.word	0xd03ea636
d03e6328:	d03ea5d2 	.word	0xd03ea5d2
d03e632c:	d03ea800 	.word	0xd03ea800
d03e6330:	d03ea805 	.word	0xd03ea805
d03e6334:	d03ea7f5 	.word	0xd03ea7f5
d03e6338:	d03ea803 	.word	0xd03ea803
d03e633c:	d03ea802 	.word	0xd03ea802
d03e6340:	d03e9694 	.word	0xd03e9694
d03e6344:	d03ea804 	.word	0xd03ea804
d03e6348:	d03e9698 	.word	0xd03e9698
d03e634c:	f89a 3000 	ldrb.w	r3, [sl]
d03e6350:	49b4      	ldr	r1, [pc, #720]	; (d03e6624 <main+0x1c3c>)
d03e6352:	3b00      	subs	r3, #0
d03e6354:	f89a 2008 	ldrb.w	r2, [sl, #8]
d03e6358:	780e      	ldrb	r6, [r1, #0]
d03e635a:	bf18      	it	ne
d03e635c:	2301      	movne	r3, #1
d03e635e:	b102      	cbz	r2, d03e6362 <main+0x197a>
d03e6360:	3301      	adds	r3, #1
d03e6362:	f89a 2010 	ldrb.w	r2, [sl, #16]
d03e6366:	b10a      	cbz	r2, d03e636c <main+0x1984>
d03e6368:	3301      	adds	r3, #1
d03e636a:	b2db      	uxtb	r3, r3
d03e636c:	f89a 2018 	ldrb.w	r2, [sl, #24]
d03e6370:	b10a      	cbz	r2, d03e6376 <main+0x198e>
d03e6372:	3301      	adds	r3, #1
d03e6374:	b2db      	uxtb	r3, r3
d03e6376:	f89a 2020 	ldrb.w	r2, [sl, #32]
d03e637a:	b10a      	cbz	r2, d03e6380 <main+0x1998>
d03e637c:	3301      	adds	r3, #1
d03e637e:	b2db      	uxtb	r3, r3
d03e6380:	f89a 2028 	ldrb.w	r2, [sl, #40]	; 0x28
d03e6384:	b10a      	cbz	r2, d03e638a <main+0x19a2>
d03e6386:	3301      	adds	r3, #1
d03e6388:	b2db      	uxtb	r3, r3
d03e638a:	2106      	movs	r1, #6
d03e638c:	4aa6      	ldr	r2, [pc, #664]	; (d03e6628 <main+0x1c40>)
d03e638e:	a810      	add	r0, sp, #64	; 0x40
d03e6390:	4da6      	ldr	r5, [pc, #664]	; (d03e662c <main+0x1c44>)
d03e6392:	9100      	str	r1, [sp, #0]
d03e6394:	2160      	movs	r1, #96	; 0x60
d03e6396:	f001 fcfd 	bl	d03e7d94 <sniprintf>
d03e639a:	f899 400c 	ldrb.w	r4, [r9, #12]
d03e639e:	f899 100d 	ldrb.w	r1, [r9, #13]
d03e63a2:	201e      	movs	r0, #30
d03e63a4:	f899 200e 	ldrb.w	r2, [r9, #14]
d03e63a8:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d03e63ac:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e63b0:	24c8      	movs	r4, #200	; 0xc8
d03e63b2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e63b6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e63ba:	685b      	ldr	r3, [r3, #4]
d03e63bc:	68db      	ldr	r3, [r3, #12]
d03e63be:	4798      	blx	r3
d03e63c0:	f899 700c 	ldrb.w	r7, [r9, #12]
d03e63c4:	f899 100d 	ldrb.w	r1, [r9, #13]
d03e63c8:	aa10      	add	r2, sp, #64	; 0x40
d03e63ca:	f899 000e 	ldrb.w	r0, [r9, #14]
d03e63ce:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d03e63d2:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e63d6:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d03e63da:	2160      	movs	r1, #96	; 0x60
d03e63dc:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d03e63e0:	2018      	movs	r0, #24
d03e63e2:	685b      	ldr	r3, [r3, #4]
d03e63e4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e63e6:	4798      	blx	r3
d03e63e8:	4b91      	ldr	r3, [pc, #580]	; (d03e6630 <main+0x1c48>)
d03e63ea:	2160      	movs	r1, #96	; 0x60
d03e63ec:	a810      	add	r0, sp, #64	; 0x40
d03e63ee:	681a      	ldr	r2, [r3, #0]
d03e63f0:	4b90      	ldr	r3, [pc, #576]	; (d03e6634 <main+0x1c4c>)
d03e63f2:	681b      	ldr	r3, [r3, #0]
d03e63f4:	9200      	str	r2, [sp, #0]
d03e63f6:	4a90      	ldr	r2, [pc, #576]	; (d03e6638 <main+0x1c50>)
d03e63f8:	f001 fccc 	bl	d03e7d94 <sniprintf>
d03e63fc:	f899 700c 	ldrb.w	r7, [r9, #12]
d03e6400:	f899 100d 	ldrb.w	r1, [r9, #13]
d03e6404:	2018      	movs	r0, #24
d03e6406:	f899 200e 	ldrb.w	r2, [r9, #14]
d03e640a:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d03e640e:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e6412:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e6416:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e641a:	685b      	ldr	r3, [r3, #4]
d03e641c:	68db      	ldr	r3, [r3, #12]
d03e641e:	4798      	blx	r3
d03e6420:	f899 700c 	ldrb.w	r7, [r9, #12]
d03e6424:	f899 100d 	ldrb.w	r1, [r9, #13]
d03e6428:	aa10      	add	r2, sp, #64	; 0x40
d03e642a:	f899 000e 	ldrb.w	r0, [r9, #14]
d03e642e:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d03e6432:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e6436:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d03e643a:	2174      	movs	r1, #116	; 0x74
d03e643c:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d03e6440:	2018      	movs	r0, #24
d03e6442:	685b      	ldr	r3, [r3, #4]
d03e6444:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e6446:	4798      	blx	r3
d03e6448:	4b7c      	ldr	r3, [pc, #496]	; (d03e663c <main+0x1c54>)
d03e644a:	2160      	movs	r1, #96	; 0x60
d03e644c:	a810      	add	r0, sp, #64	; 0x40
d03e644e:	881a      	ldrh	r2, [r3, #0]
d03e6450:	4b7b      	ldr	r3, [pc, #492]	; (d03e6640 <main+0x1c58>)
d03e6452:	881b      	ldrh	r3, [r3, #0]
d03e6454:	9200      	str	r2, [sp, #0]
d03e6456:	4a7b      	ldr	r2, [pc, #492]	; (d03e6644 <main+0x1c5c>)
d03e6458:	f001 fc9c 	bl	d03e7d94 <sniprintf>
d03e645c:	f899 700c 	ldrb.w	r7, [r9, #12]
d03e6460:	f899 100d 	ldrb.w	r1, [r9, #13]
d03e6464:	aa10      	add	r2, sp, #64	; 0x40
d03e6466:	f899 000e 	ldrb.w	r0, [r9, #14]
d03e646a:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d03e646e:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e6472:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d03e6476:	2186      	movs	r1, #134	; 0x86
d03e6478:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d03e647c:	2018      	movs	r0, #24
d03e647e:	685b      	ldr	r3, [r3, #4]
d03e6480:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e6482:	4798      	blx	r3
d03e6484:	4b70      	ldr	r3, [pc, #448]	; (d03e6648 <main+0x1c60>)
d03e6486:	4a71      	ldr	r2, [pc, #452]	; (d03e664c <main+0x1c64>)
d03e6488:	2160      	movs	r1, #96	; 0x60
d03e648a:	f933 3016 	ldrsh.w	r3, [r3, r6, lsl #1]
d03e648e:	a810      	add	r0, sp, #64	; 0x40
d03e6490:	5d92      	ldrb	r2, [r2, r6]
d03e6492:	9301      	str	r3, [sp, #4]
d03e6494:	4b6e      	ldr	r3, [pc, #440]	; (d03e6650 <main+0x1c68>)
d03e6496:	9200      	str	r2, [sp, #0]
d03e6498:	4a6e      	ldr	r2, [pc, #440]	; (d03e6654 <main+0x1c6c>)
d03e649a:	5d9b      	ldrb	r3, [r3, r6]
d03e649c:	f001 fc7a 	bl	d03e7d94 <sniprintf>
d03e64a0:	f899 600c 	ldrb.w	r6, [r9, #12]
d03e64a4:	f899 100d 	ldrb.w	r1, [r9, #13]
d03e64a8:	aa10      	add	r2, sp, #64	; 0x40
d03e64aa:	f899 000e 	ldrb.w	r0, [r9, #14]
d03e64ae:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
d03e64b2:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e64b6:	4e68      	ldr	r6, [pc, #416]	; (d03e6658 <main+0x1c70>)
d03e64b8:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d03e64bc:	2174      	movs	r1, #116	; 0x74
d03e64be:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d03e64c2:	20e6      	movs	r0, #230	; 0xe6
d03e64c4:	685b      	ldr	r3, [r3, #4]
d03e64c6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e64c8:	4798      	blx	r3
d03e64ca:	f89a 3000 	ldrb.w	r3, [sl]
d03e64ce:	f815 2b01 	ldrb.w	r2, [r5], #1
d03e64d2:	b12b      	cbz	r3, d03e64e0 <main+0x1af8>
d03e64d4:	f89a 3001 	ldrb.w	r3, [sl, #1]
d03e64d8:	1a9b      	subs	r3, r3, r2
d03e64da:	fab3 f383 	clz	r3, r3
d03e64de:	095b      	lsrs	r3, r3, #5
d03e64e0:	f89a 1008 	ldrb.w	r1, [sl, #8]
d03e64e4:	b129      	cbz	r1, d03e64f2 <main+0x1b0a>
d03e64e6:	f89a 1009 	ldrb.w	r1, [sl, #9]
d03e64ea:	4291      	cmp	r1, r2
d03e64ec:	d101      	bne.n	d03e64f2 <main+0x1b0a>
d03e64ee:	3301      	adds	r3, #1
d03e64f0:	b2db      	uxtb	r3, r3
d03e64f2:	f89a 1010 	ldrb.w	r1, [sl, #16]
d03e64f6:	b129      	cbz	r1, d03e6504 <main+0x1b1c>
d03e64f8:	f89a 1011 	ldrb.w	r1, [sl, #17]
d03e64fc:	4291      	cmp	r1, r2
d03e64fe:	d101      	bne.n	d03e6504 <main+0x1b1c>
d03e6500:	3301      	adds	r3, #1
d03e6502:	b2db      	uxtb	r3, r3
d03e6504:	f89a 1018 	ldrb.w	r1, [sl, #24]
d03e6508:	b129      	cbz	r1, d03e6516 <main+0x1b2e>
d03e650a:	f89a 1019 	ldrb.w	r1, [sl, #25]
d03e650e:	4291      	cmp	r1, r2
d03e6510:	d101      	bne.n	d03e6516 <main+0x1b2e>
d03e6512:	3301      	adds	r3, #1
d03e6514:	b2db      	uxtb	r3, r3
d03e6516:	f89a 1020 	ldrb.w	r1, [sl, #32]
d03e651a:	b119      	cbz	r1, d03e6524 <main+0x1b3c>
d03e651c:	f89a 1021 	ldrb.w	r1, [sl, #33]	; 0x21
d03e6520:	4291      	cmp	r1, r2
d03e6522:	d00d      	beq.n	d03e6540 <main+0x1b58>
d03e6524:	f89a 1028 	ldrb.w	r1, [sl, #40]	; 0x28
d03e6528:	b119      	cbz	r1, d03e6532 <main+0x1b4a>
d03e652a:	f89a 1029 	ldrb.w	r1, [sl, #41]	; 0x29
d03e652e:	4291      	cmp	r1, r2
d03e6530:	d00f      	beq.n	d03e6552 <main+0x1b6a>
d03e6532:	b983      	cbnz	r3, d03e6556 <main+0x1b6e>
d03e6534:	3410      	adds	r4, #16
d03e6536:	f5b4 7f84 	cmp.w	r4, #264	; 0x108
d03e653a:	d1c6      	bne.n	d03e64ca <main+0x1ae2>
d03e653c:	f7ff b979 	b.w	d03e5832 <main+0xe4a>
d03e6540:	3301      	adds	r3, #1
d03e6542:	f89a 1028 	ldrb.w	r1, [sl, #40]	; 0x28
d03e6546:	b2db      	uxtb	r3, r3
d03e6548:	b129      	cbz	r1, d03e6556 <main+0x1b6e>
d03e654a:	f89a 1029 	ldrb.w	r1, [sl, #41]	; 0x29
d03e654e:	4291      	cmp	r1, r2
d03e6550:	d101      	bne.n	d03e6556 <main+0x1b6e>
d03e6552:	3301      	adds	r3, #1
d03e6554:	b2db      	uxtb	r3, r3
d03e6556:	4632      	mov	r2, r6
d03e6558:	2160      	movs	r1, #96	; 0x60
d03e655a:	a810      	add	r0, sp, #64	; 0x40
d03e655c:	f001 fc1a 	bl	d03e7d94 <sniprintf>
d03e6560:	f899 700c 	ldrb.w	r7, [r9, #12]
d03e6564:	f899 100d 	ldrb.w	r1, [r9, #13]
d03e6568:	200e      	movs	r0, #14
d03e656a:	f899 200e 	ldrb.w	r2, [r9, #14]
d03e656e:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d03e6572:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e6576:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e657a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e657e:	685b      	ldr	r3, [r3, #4]
d03e6580:	68db      	ldr	r3, [r3, #12]
d03e6582:	4798      	blx	r3
d03e6584:	f899 c00c 	ldrb.w	ip, [r9, #12]
d03e6588:	f899 000d 	ldrb.w	r0, [r9, #13]
d03e658c:	aa10      	add	r2, sp, #64	; 0x40
d03e658e:	f899 700e 	ldrb.w	r7, [r9, #14]
d03e6592:	4621      	mov	r1, r4
d03e6594:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d03e6598:	f899 300f 	ldrb.w	r3, [r9, #15]
d03e659c:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d03e65a0:	20cc      	movs	r0, #204	; 0xcc
d03e65a2:	ea47 6303 	orr.w	r3, r7, r3, lsl #24
d03e65a6:	685b      	ldr	r3, [r3, #4]
d03e65a8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e65aa:	4798      	blx	r3
d03e65ac:	e7c2      	b.n	d03e6534 <main+0x1b4c>
d03e65ae:	2301      	movs	r3, #1
d03e65b0:	4a2a      	ldr	r2, [pc, #168]	; (d03e665c <main+0x1c74>)
d03e65b2:	7013      	strb	r3, [r2, #0]
d03e65b4:	f7fe be78 	b.w	d03e52a8 <main+0x8c0>
d03e65b8:	2400      	movs	r4, #0
d03e65ba:	b2e0      	uxtb	r0, r4
d03e65bc:	f7fa f958 	bl	d03e0870 <sid_voice_note_kill>
d03e65c0:	f04f 0300 	mov.w	r3, #0
d03e65c4:	f04f 0200 	mov.w	r2, #0
d03e65c8:	f80a 3034 	strb.w	r3, [sl, r4, lsl #3]
d03e65cc:	eb0a 03c4 	add.w	r3, sl, r4, lsl #3
d03e65d0:	3401      	adds	r4, #1
d03e65d2:	80da      	strh	r2, [r3, #6]
d03e65d4:	2c06      	cmp	r4, #6
d03e65d6:	d1f0      	bne.n	d03e65ba <main+0x1bd2>
d03e65d8:	4a21      	ldr	r2, [pc, #132]	; (d03e6660 <main+0x1c78>)
d03e65da:	f04f 0100 	mov.w	r1, #0
d03e65de:	235a      	movs	r3, #90	; 0x5a
d03e65e0:	4e20      	ldr	r6, [pc, #128]	; (d03e6664 <main+0x1c7c>)
d03e65e2:	7011      	strb	r1, [r2, #0]
d03e65e4:	4a20      	ldr	r2, [pc, #128]	; (d03e6668 <main+0x1c80>)
d03e65e6:	4f13      	ldr	r7, [pc, #76]	; (d03e6634 <main+0x1c4c>)
d03e65e8:	4d20      	ldr	r5, [pc, #128]	; (d03e666c <main+0x1c84>)
d03e65ea:	7013      	strb	r3, [r2, #0]
d03e65ec:	683c      	ldr	r4, [r7, #0]
d03e65ee:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
d03e65f0:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d03e65f2:	9b07      	ldr	r3, [sp, #28]
d03e65f4:	3401      	adds	r4, #1
d03e65f6:	6836      	ldr	r6, [r6, #0]
d03e65f8:	2b03      	cmp	r3, #3
d03e65fa:	603c      	str	r4, [r7, #0]
d03e65fc:	802e      	strh	r6, [r5, #0]
d03e65fe:	f47f aa22 	bne.w	d03e5a46 <main+0x105e>
d03e6602:	2301      	movs	r3, #1
d03e6604:	4a15      	ldr	r2, [pc, #84]	; (d03e665c <main+0x1c74>)
d03e6606:	7013      	strb	r3, [r2, #0]
d03e6608:	f7ff ba1d 	b.w	d03e5a46 <main+0x105e>
d03e660c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d03e660e:	2b00      	cmp	r3, #0
d03e6610:	f000 80ea 	beq.w	d03e67e8 <main+0x1e00>
d03e6614:	4a16      	ldr	r2, [pc, #88]	; (d03e6670 <main+0x1c88>)
d03e6616:	7813      	ldrb	r3, [r2, #0]
d03e6618:	2b0e      	cmp	r3, #14
d03e661a:	d82b      	bhi.n	d03e6674 <main+0x1c8c>
d03e661c:	3301      	adds	r3, #1
d03e661e:	7013      	strb	r3, [r2, #0]
d03e6620:	e0e5      	b.n	d03e67ee <main+0x1e06>
d03e6622:	bf00      	nop
d03e6624:	d03ea645 	.word	0xd03ea645
d03e6628:	d03e963c 	.word	0xd03e963c
d03e662c:	d03ea640 	.word	0xd03ea640
d03e6630:	d03ea5ec 	.word	0xd03ea5ec
d03e6634:	d03ea5e4 	.word	0xd03ea5e4
d03e6638:	d03e964c 	.word	0xd03e964c
d03e663c:	d03ea3ca 	.word	0xd03ea3ca
d03e6640:	d03ea5d2 	.word	0xd03ea5d2
d03e6644:	d03e9660 	.word	0xd03e9660
d03e6648:	d03ea374 	.word	0xd03ea374
d03e664c:	d03ea394 	.word	0xd03ea394
d03e6650:	d03ea3b4 	.word	0xd03ea3b4
d03e6654:	d03e9678 	.word	0xd03e9678
d03e6658:	d03e96a0 	.word	0xd03e96a0
d03e665c:	d03ea632 	.word	0xd03ea632
d03e6660:	d03ea631 	.word	0xd03ea631
d03e6664:	d03e950c 	.word	0xd03e950c
d03e6668:	d03ea670 	.word	0xd03ea670
d03e666c:	d03ea648 	.word	0xd03ea648
d03e6670:	d03ea638 	.word	0xd03ea638
d03e6674:	4ba5      	ldr	r3, [pc, #660]	; (d03e690c <main+0x1f24>)
d03e6676:	781b      	ldrb	r3, [r3, #0]
d03e6678:	2b04      	cmp	r3, #4
d03e667a:	f63e ae15 	bhi.w	d03e52a8 <main+0x8c0>
d03e667e:	e8df f013 	tbh	[pc, r3, lsl #1]
d03e6682:	0329      	.short	0x0329
d03e6684:	027d02ff 	.word	0x027d02ff
d03e6688:	015d0205 	.word	0x015d0205
d03e668c:	49a0      	ldr	r1, [pc, #640]	; (d03e6910 <main+0x1f28>)
d03e668e:	7809      	ldrb	r1, [r1, #0]
d03e6690:	b2cf      	uxtb	r7, r1
d03e6692:	f7fe bf12 	b.w	d03e54ba <main+0xad2>
d03e6696:	3b01      	subs	r3, #1
d03e6698:	4a9e      	ldr	r2, [pc, #632]	; (d03e6914 <main+0x1f2c>)
d03e669a:	7013      	strb	r3, [r2, #0]
d03e669c:	f7fe bd38 	b.w	d03e5110 <main+0x728>
d03e66a0:	9b04      	ldr	r3, [sp, #16]
d03e66a2:	2401      	movs	r4, #1
d03e66a4:	075e      	lsls	r6, r3, #29
d03e66a6:	f57f a9dd 	bpl.w	d03e5a64 <main+0x107c>
d03e66aa:	489b      	ldr	r0, [pc, #620]	; (d03e6918 <main+0x1f30>)
d03e66ac:	4d9b      	ldr	r5, [pc, #620]	; (d03e691c <main+0x1f34>)
d03e66ae:	7803      	ldrb	r3, [r0, #0]
d03e66b0:	330f      	adds	r3, #15
d03e66b2:	f003 030f 	and.w	r3, r3, #15
d03e66b6:	56ea      	ldrsb	r2, [r5, r3]
d03e66b8:	0899      	lsrs	r1, r3, #2
d03e66ba:	7003      	strb	r3, [r0, #0]
d03e66bc:	2a00      	cmp	r2, #0
d03e66be:	4898      	ldr	r0, [pc, #608]	; (d03e6920 <main+0x1f38>)
d03e66c0:	5ceb      	ldrb	r3, [r5, r3]
d03e66c2:	7001      	strb	r1, [r0, #0]
d03e66c4:	f2c0 83c4 	blt.w	d03e6e50 <main+0x2468>
d03e66c8:	4a96      	ldr	r2, [pc, #600]	; (d03e6924 <main+0x1f3c>)
d03e66ca:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
d03e66ce:	2900      	cmp	r1, #0
d03e66d0:	f000 8538 	beq.w	d03e7144 <main+0x275c>
d03e66d4:	2300      	movs	r3, #0
d03e66d6:	e002      	b.n	d03e66de <main+0x1cf6>
d03e66d8:	2b60      	cmp	r3, #96	; 0x60
d03e66da:	f000 8113 	beq.w	d03e6904 <main+0x1f1c>
d03e66de:	f811 0023 	ldrb.w	r0, [r1, r3, lsl #2]
d03e66e2:	b2da      	uxtb	r2, r3
d03e66e4:	3301      	adds	r3, #1
d03e66e6:	2800      	cmp	r0, #0
d03e66e8:	d1f6      	bne.n	d03e66d8 <main+0x1cf0>
d03e66ea:	1c53      	adds	r3, r2, #1
d03e66ec:	b2db      	uxtb	r3, r3
d03e66ee:	2b06      	cmp	r3, #6
d03e66f0:	f200 8108 	bhi.w	d03e6904 <main+0x1f1c>
d03e66f4:	4a8c      	ldr	r2, [pc, #560]	; (d03e6928 <main+0x1f40>)
d03e66f6:	7813      	ldrb	r3, [r2, #0]
d03e66f8:	4283      	cmp	r3, r0
d03e66fa:	9b04      	ldr	r3, [sp, #16]
d03e66fc:	bf88      	it	hi
d03e66fe:	7010      	strbhi	r0, [r2, #0]
d03e6700:	071d      	lsls	r5, r3, #28
d03e6702:	f57f a9b3 	bpl.w	d03e5a6c <main+0x1084>
d03e6706:	4884      	ldr	r0, [pc, #528]	; (d03e6918 <main+0x1f30>)
d03e6708:	4d84      	ldr	r5, [pc, #528]	; (d03e691c <main+0x1f34>)
d03e670a:	7803      	ldrb	r3, [r0, #0]
d03e670c:	3301      	adds	r3, #1
d03e670e:	f003 030f 	and.w	r3, r3, #15
d03e6712:	56ea      	ldrsb	r2, [r5, r3]
d03e6714:	0899      	lsrs	r1, r3, #2
d03e6716:	7003      	strb	r3, [r0, #0]
d03e6718:	2a00      	cmp	r2, #0
d03e671a:	4881      	ldr	r0, [pc, #516]	; (d03e6920 <main+0x1f38>)
d03e671c:	5ceb      	ldrb	r3, [r5, r3]
d03e671e:	7001      	strb	r1, [r0, #0]
d03e6720:	f2c0 8394 	blt.w	d03e6e4c <main+0x2464>
d03e6724:	4a7f      	ldr	r2, [pc, #508]	; (d03e6924 <main+0x1f3c>)
d03e6726:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
d03e672a:	2900      	cmp	r1, #0
d03e672c:	f000 850d 	beq.w	d03e714a <main+0x2762>
d03e6730:	2300      	movs	r3, #0
d03e6732:	e002      	b.n	d03e673a <main+0x1d52>
d03e6734:	2b60      	cmp	r3, #96	; 0x60
d03e6736:	f000 80e2 	beq.w	d03e68fe <main+0x1f16>
d03e673a:	f811 0023 	ldrb.w	r0, [r1, r3, lsl #2]
d03e673e:	b2da      	uxtb	r2, r3
d03e6740:	3301      	adds	r3, #1
d03e6742:	2800      	cmp	r0, #0
d03e6744:	d1f6      	bne.n	d03e6734 <main+0x1d4c>
d03e6746:	1c53      	adds	r3, r2, #1
d03e6748:	b2db      	uxtb	r3, r3
d03e674a:	2b06      	cmp	r3, #6
d03e674c:	f200 80d7 	bhi.w	d03e68fe <main+0x1f16>
d03e6750:	4a75      	ldr	r2, [pc, #468]	; (d03e6928 <main+0x1f40>)
d03e6752:	7813      	ldrb	r3, [r2, #0]
d03e6754:	4283      	cmp	r3, r0
d03e6756:	bf88      	it	hi
d03e6758:	7010      	strbhi	r0, [r2, #0]
d03e675a:	f7ff b987 	b.w	d03e5a6c <main+0x1084>
d03e675e:	3b06      	subs	r3, #6
d03e6760:	b2d9      	uxtb	r1, r3
d03e6762:	f7ff b9c1 	b.w	d03e5ae8 <main+0x1100>
d03e6766:	ea26 72e6 	bic.w	r2, r6, r6, asr #31
d03e676a:	f240 10df 	movw	r0, #479	; 0x1df
d03e676e:	ea27 73e7 	bic.w	r3, r7, r7, asr #31
d03e6772:	f240 113f 	movw	r1, #319	; 0x13f
d03e6776:	4282      	cmp	r2, r0
d03e6778:	bfa8      	it	ge
d03e677a:	4602      	movge	r2, r0
d03e677c:	428b      	cmp	r3, r1
d03e677e:	bfa8      	it	ge
d03e6780:	460b      	movge	r3, r1
d03e6782:	469e      	mov	lr, r3
d03e6784:	e546      	b.n	d03e6214 <main+0x182c>
d03e6786:	2100      	movs	r1, #0
d03e6788:	f7ff b9ae 	b.w	d03e5ae8 <main+0x1100>
d03e678c:	4a67      	ldr	r2, [pc, #412]	; (d03e692c <main+0x1f44>)
d03e678e:	4966      	ldr	r1, [pc, #408]	; (d03e6928 <main+0x1f40>)
d03e6790:	7812      	ldrb	r2, [r2, #0]
d03e6792:	700a      	strb	r2, [r1, #0]
d03e6794:	4294      	cmp	r4, r2
d03e6796:	d202      	bcs.n	d03e679e <main+0x1db6>
d03e6798:	4963      	ldr	r1, [pc, #396]	; (d03e6928 <main+0x1f40>)
d03e679a:	4622      	mov	r2, r4
d03e679c:	700c      	strb	r4, [r1, #0]
d03e679e:	4964      	ldr	r1, [pc, #400]	; (d03e6930 <main+0x1f48>)
d03e67a0:	f04f 0000 	mov.w	r0, #0
d03e67a4:	7008      	strb	r0, [r1, #0]
d03e67a6:	4959      	ldr	r1, [pc, #356]	; (d03e690c <main+0x1f24>)
d03e67a8:	780d      	ldrb	r5, [r1, #0]
d03e67aa:	4962      	ldr	r1, [pc, #392]	; (d03e6934 <main+0x1f4c>)
d03e67ac:	7809      	ldrb	r1, [r1, #0]
d03e67ae:	f7fe be13 	b.w	d03e53d8 <main+0x9f0>
d03e67b2:	2e5f      	cmp	r6, #95	; 0x5f
d03e67b4:	f77e ad6b 	ble.w	d03e528e <main+0x8a6>
d03e67b8:	b2b9      	uxth	r1, r7
d03e67ba:	f7fe bd60 	b.w	d03e527e <main+0x896>
d03e67be:	4a5b      	ldr	r2, [pc, #364]	; (d03e692c <main+0x1f44>)
d03e67c0:	2100      	movs	r1, #0
d03e67c2:	4859      	ldr	r0, [pc, #356]	; (d03e6928 <main+0x1f40>)
d03e67c4:	7812      	ldrb	r2, [r2, #0]
d03e67c6:	7002      	strb	r2, [r0, #0]
d03e67c8:	e001      	b.n	d03e67ce <main+0x1de6>
d03e67ca:	2960      	cmp	r1, #96	; 0x60
d03e67cc:	d009      	beq.n	d03e67e2 <main+0x1dfa>
d03e67ce:	f817 4021 	ldrb.w	r4, [r7, r1, lsl #2]
d03e67d2:	b2c8      	uxtb	r0, r1
d03e67d4:	3101      	adds	r1, #1
d03e67d6:	2c00      	cmp	r4, #0
d03e67d8:	d1f7      	bne.n	d03e67ca <main+0x1de2>
d03e67da:	1c41      	adds	r1, r0, #1
d03e67dc:	b2c9      	uxtb	r1, r1
d03e67de:	2906      	cmp	r1, #6
d03e67e0:	d9d8      	bls.n	d03e6794 <main+0x1dac>
d03e67e2:	3906      	subs	r1, #6
d03e67e4:	b2cc      	uxtb	r4, r1
d03e67e6:	e7d5      	b.n	d03e6794 <main+0x1dac>
d03e67e8:	461a      	mov	r2, r3
d03e67ea:	4b53      	ldr	r3, [pc, #332]	; (d03e6938 <main+0x1f50>)
d03e67ec:	701a      	strb	r2, [r3, #0]
d03e67ee:	9b07      	ldr	r3, [sp, #28]
d03e67f0:	2b03      	cmp	r3, #3
d03e67f2:	f47f a928 	bne.w	d03e5a46 <main+0x105e>
d03e67f6:	e704      	b.n	d03e6602 <main+0x1c1a>
d03e67f8:	4601      	mov	r1, r0
d03e67fa:	f7ff b975 	b.w	d03e5ae8 <main+0x1100>
d03e67fe:	4a4b      	ldr	r2, [pc, #300]	; (d03e692c <main+0x1f44>)
d03e6800:	4846      	ldr	r0, [pc, #280]	; (d03e691c <main+0x1f34>)
d03e6802:	7816      	ldrb	r6, [r2, #0]
d03e6804:	56c2      	ldrsb	r2, [r0, r3]
d03e6806:	4f48      	ldr	r7, [pc, #288]	; (d03e6928 <main+0x1f40>)
d03e6808:	2a00      	cmp	r2, #0
d03e680a:	5cc0      	ldrb	r0, [r0, r3]
d03e680c:	703e      	strb	r6, [r7, #0]
d03e680e:	db13      	blt.n	d03e6838 <main+0x1e50>
d03e6810:	4a44      	ldr	r2, [pc, #272]	; (d03e6924 <main+0x1f3c>)
d03e6812:	f852 7020 	ldr.w	r7, [r2, r0, lsl #2]
d03e6816:	b17f      	cbz	r7, d03e6838 <main+0x1e50>
d03e6818:	2200      	movs	r2, #0
d03e681a:	e002      	b.n	d03e6822 <main+0x1e3a>
d03e681c:	2a60      	cmp	r2, #96	; 0x60
d03e681e:	f000 841a 	beq.w	d03e7056 <main+0x266e>
d03e6822:	f817 4022 	ldrb.w	r4, [r7, r2, lsl #2]
d03e6826:	b2d0      	uxtb	r0, r2
d03e6828:	3201      	adds	r2, #1
d03e682a:	2c00      	cmp	r4, #0
d03e682c:	d1f6      	bne.n	d03e681c <main+0x1e34>
d03e682e:	1c42      	adds	r2, r0, #1
d03e6830:	b2d2      	uxtb	r2, r2
d03e6832:	2a06      	cmp	r2, #6
d03e6834:	f200 840f 	bhi.w	d03e7056 <main+0x266e>
d03e6838:	42a6      	cmp	r6, r4
d03e683a:	d901      	bls.n	d03e6840 <main+0x1e58>
d03e683c:	4a3a      	ldr	r2, [pc, #232]	; (d03e6928 <main+0x1f40>)
d03e683e:	7014      	strb	r4, [r2, #0]
d03e6840:	4a3b      	ldr	r2, [pc, #236]	; (d03e6930 <main+0x1f48>)
d03e6842:	f04f 0000 	mov.w	r0, #0
d03e6846:	7010      	strb	r0, [r2, #0]
d03e6848:	4a37      	ldr	r2, [pc, #220]	; (d03e6928 <main+0x1f40>)
d03e684a:	7812      	ldrb	r2, [r2, #0]
d03e684c:	f7fe bdc4 	b.w	d03e53d8 <main+0x9f0>
d03e6850:	f1a7 0320 	sub.w	r3, r7, #32
d03e6854:	b29b      	uxth	r3, r3
d03e6856:	2b1b      	cmp	r3, #27
d03e6858:	bf8c      	ite	hi
d03e685a:	2300      	movhi	r3, #0
d03e685c:	2301      	movls	r3, #1
d03e685e:	2e5b      	cmp	r6, #91	; 0x5b
d03e6860:	dc02      	bgt.n	d03e6868 <main+0x1e80>
d03e6862:	2b00      	cmp	r3, #0
d03e6864:	f040 8318 	bne.w	d03e6e98 <main+0x24b0>
d03e6868:	2e65      	cmp	r6, #101	; 0x65
d03e686a:	f340 8590 	ble.w	d03e738e <main+0x29a6>
d03e686e:	2eb7      	cmp	r6, #183	; 0xb7
d03e6870:	dc02      	bgt.n	d03e6878 <main+0x1e90>
d03e6872:	2b00      	cmp	r3, #0
d03e6874:	f040 830f 	bne.w	d03e6e96 <main+0x24ae>
d03e6878:	2ec1      	cmp	r6, #193	; 0xc1
d03e687a:	f341 809f 	ble.w	d03e79bc <main+0x2fd4>
d03e687e:	f5b6 7f8a 	cmp.w	r6, #276	; 0x114
d03e6882:	da02      	bge.n	d03e688a <main+0x1ea2>
d03e6884:	2b00      	cmp	r3, #0
d03e6886:	f040 842b 	bne.w	d03e70e0 <main+0x26f8>
d03e688a:	f5b6 7f8f 	cmp.w	r6, #286	; 0x11e
d03e688e:	f2c1 8095 	blt.w	d03e79bc <main+0x2fd4>
d03e6892:	f5b6 7fb8 	cmp.w	r6, #368	; 0x170
d03e6896:	da02      	bge.n	d03e689e <main+0x1eb6>
d03e6898:	2b00      	cmp	r3, #0
d03e689a:	f040 8423 	bne.w	d03e70e4 <main+0x26fc>
d03e689e:	f5b6 7fbd 	cmp.w	r6, #378	; 0x17a
d03e68a2:	f2c1 808b 	blt.w	d03e79bc <main+0x2fd4>
d03e68a6:	f5b6 7fe6 	cmp.w	r6, #460	; 0x1cc
d03e68aa:	da02      	bge.n	d03e68b2 <main+0x1eca>
d03e68ac:	2b00      	cmp	r3, #0
d03e68ae:	f040 841b 	bne.w	d03e70e8 <main+0x2700>
d03e68b2:	f5a7 738e 	sub.w	r3, r7, #284	; 0x11c
d03e68b6:	b29b      	uxth	r3, r3
d03e68b8:	2b17      	cmp	r3, #23
d03e68ba:	bf8c      	ite	hi
d03e68bc:	2300      	movhi	r3, #0
d03e68be:	2301      	movls	r3, #1
d03e68c0:	f5b6 7fc1 	cmp.w	r6, #386	; 0x182
d03e68c4:	da02      	bge.n	d03e68cc <main+0x1ee4>
d03e68c6:	2b00      	cmp	r3, #0
d03e68c8:	f040 84c6 	bne.w	d03e7258 <main+0x2870>
d03e68cc:	f5b6 7fc4 	cmp.w	r6, #392	; 0x188
d03e68d0:	f6ff ac50 	blt.w	d03e6174 <main+0x178c>
d03e68d4:	f5b6 7fdf 	cmp.w	r6, #446	; 0x1be
d03e68d8:	da02      	bge.n	d03e68e0 <main+0x1ef8>
d03e68da:	2b00      	cmp	r3, #0
d03e68dc:	f040 84ca 	bne.w	d03e7274 <main+0x288c>
d03e68e0:	4b0a      	ldr	r3, [pc, #40]	; (d03e690c <main+0x1f24>)
d03e68e2:	781b      	ldrb	r3, [r3, #0]
d03e68e4:	2b04      	cmp	r3, #4
d03e68e6:	f63e acdf 	bhi.w	d03e52a8 <main+0x8c0>
d03e68ea:	e8df f013 	tbh	[pc, r3, lsl #1]
d03e68ee:	03c5      	.short	0x03c5
d03e68f0:	014701ad 	.word	0x014701ad
d03e68f4:	002700cf 	.word	0x002700cf
d03e68f8:	2401      	movs	r4, #1
d03e68fa:	f7ff b8b7 	b.w	d03e5a6c <main+0x1084>
d03e68fe:	3b06      	subs	r3, #6
d03e6900:	b2d8      	uxtb	r0, r3
d03e6902:	e725      	b.n	d03e6750 <main+0x1d68>
d03e6904:	3b06      	subs	r3, #6
d03e6906:	b2d8      	uxtb	r0, r3
d03e6908:	e6f4      	b.n	d03e66f4 <main+0x1d0c>
d03e690a:	bf00      	nop
d03e690c:	d03ea636 	.word	0xd03ea636
d03e6910:	d03ea7fe 	.word	0xd03ea7fe
d03e6914:	d03ea644 	.word	0xd03ea644
d03e6918:	d03ea645 	.word	0xd03ea645
d03e691c:	d03ea3a4 	.word	0xd03ea3a4
d03e6920:	d03ea630 	.word	0xd03ea630
d03e6924:	d03e9cbc 	.word	0xd03e9cbc
d03e6928:	d03ea805 	.word	0xd03ea805
d03e692c:	d03ea801 	.word	0xd03ea801
d03e6930:	d03ea800 	.word	0xd03ea800
d03e6934:	d03ea7f5 	.word	0xd03ea7f5
d03e6938:	d03ea638 	.word	0xd03ea638
d03e693c:	f5b6 7faf 	cmp.w	r6, #350	; 0x15e
d03e6940:	f2c0 82f2 	blt.w	d03e6f28 <main+0x2540>
d03e6944:	b2bb      	uxth	r3, r7
d03e6946:	f1a3 0244 	sub.w	r2, r3, #68	; 0x44
d03e694a:	2a15      	cmp	r2, #21
d03e694c:	bf8c      	ite	hi
d03e694e:	2200      	movhi	r2, #0
d03e6950:	2201      	movls	r2, #1
d03e6952:	f5b6 7fc0 	cmp.w	r6, #384	; 0x180
d03e6956:	da02      	bge.n	d03e695e <main+0x1f76>
d03e6958:	2a00      	cmp	r2, #0
d03e695a:	f040 85ae 	bne.w	d03e74ba <main+0x2ad2>
d03e695e:	f5b6 7fc2 	cmp.w	r6, #388	; 0x184
d03e6962:	f2c0 82e1 	blt.w	d03e6f28 <main+0x2540>
d03e6966:	f5b6 7fd3 	cmp.w	r6, #422	; 0x1a6
d03e696a:	da02      	bge.n	d03e6972 <main+0x1f8a>
d03e696c:	2a00      	cmp	r2, #0
d03e696e:	f040 8671 	bne.w	d03e7654 <main+0x2c6c>
d03e6972:	f5b6 7fd1 	cmp.w	r6, #418	; 0x1a2
d03e6976:	f2c0 82dd 	blt.w	d03e6f34 <main+0x254c>
d03e697a:	f5b6 7fe2 	cmp.w	r6, #452	; 0x1c4
d03e697e:	f1a3 026a 	sub.w	r2, r3, #106	; 0x6a
d03e6982:	bfac      	ite	ge
d03e6984:	2100      	movge	r1, #0
d03e6986:	2101      	movlt	r1, #1
d03e6988:	2a15      	cmp	r2, #21
d03e698a:	d802      	bhi.n	d03e6992 <main+0x1faa>
d03e698c:	2900      	cmp	r1, #0
d03e698e:	f040 86a9 	bne.w	d03e76e4 <main+0x2cfc>
d03e6992:	9a08      	ldr	r2, [sp, #32]
d03e6994:	2a00      	cmp	r2, #0
d03e6996:	f000 83a9 	beq.w	d03e70ec <main+0x2704>
d03e699a:	3b82      	subs	r3, #130	; 0x82
d03e699c:	2b4f      	cmp	r3, #79	; 0x4f
d03e699e:	f200 83a5 	bhi.w	d03e70ec <main+0x2704>
d03e69a2:	2900      	cmp	r1, #0
d03e69a4:	f000 83a2 	beq.w	d03e70ec <main+0x2704>
d03e69a8:	4b93      	ldr	r3, [pc, #588]	; (d03e6bf8 <main+0x2210>)
d03e69aa:	4994      	ldr	r1, [pc, #592]	; (d03e6bfc <main+0x2214>)
d03e69ac:	781a      	ldrb	r2, [r3, #0]
d03e69ae:	4b94      	ldr	r3, [pc, #592]	; (d03e6c00 <main+0x2218>)
d03e69b0:	5c8f      	ldrb	r7, [r1, r2]
d03e69b2:	781b      	ldrb	r3, [r3, #0]
d03e69b4:	b123      	cbz	r3, d03e69c0 <main+0x1fd8>
d03e69b6:	4b93      	ldr	r3, [pc, #588]	; (d03e6c04 <main+0x221c>)
d03e69b8:	781b      	ldrb	r3, [r3, #0]
d03e69ba:	42bb      	cmp	r3, r7
d03e69bc:	f000 87a8 	beq.w	d03e7910 <main+0x2f28>
d03e69c0:	0639      	lsls	r1, r7, #24
d03e69c2:	f100 87cb 	bmi.w	d03e795c <main+0x2f74>
d03e69c6:	4b90      	ldr	r3, [pc, #576]	; (d03e6c08 <main+0x2220>)
d03e69c8:	f853 3027 	ldr.w	r3, [r3, r7, lsl #2]
d03e69cc:	9305      	str	r3, [sp, #20]
d03e69ce:	2b00      	cmp	r3, #0
d03e69d0:	f000 87c2 	beq.w	d03e7958 <main+0x2f70>
d03e69d4:	4b8b      	ldr	r3, [pc, #556]	; (d03e6c04 <main+0x221c>)
d03e69d6:	781b      	ldrb	r3, [r3, #0]
d03e69d8:	429f      	cmp	r7, r3
d03e69da:	d03f      	beq.n	d03e6a5c <main+0x2074>
d03e69dc:	2bff      	cmp	r3, #255	; 0xff
d03e69de:	4c8b      	ldr	r4, [pc, #556]	; (d03e6c0c <main+0x2224>)
d03e69e0:	d005      	beq.n	d03e69ee <main+0x2006>
d03e69e2:	4a89      	ldr	r2, [pc, #548]	; (d03e6c08 <main+0x2220>)
d03e69e4:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
d03e69e8:	42a2      	cmp	r2, r4
d03e69ea:	f000 87a0 	beq.w	d03e792e <main+0x2f46>
d03e69ee:	4b86      	ldr	r3, [pc, #536]	; (d03e6c08 <main+0x2220>)
d03e69f0:	9a05      	ldr	r2, [sp, #20]
d03e69f2:	f853 1027 	ldr.w	r1, [r3, r7, lsl #2]
d03e69f6:	4b86      	ldr	r3, [pc, #536]	; (d03e6c10 <main+0x2228>)
d03e69f8:	601a      	str	r2, [r3, #0]
d03e69fa:	2900      	cmp	r1, #0
d03e69fc:	f000 876b 	beq.w	d03e78d6 <main+0x2eee>
d03e6a00:	2600      	movs	r6, #0
d03e6a02:	e001      	b.n	d03e6a08 <main+0x2020>
d03e6a04:	2e60      	cmp	r6, #96	; 0x60
d03e6a06:	d007      	beq.n	d03e6a18 <main+0x2030>
d03e6a08:	f811 3026 	ldrb.w	r3, [r1, r6, lsl #2]
d03e6a0c:	b2f2      	uxtb	r2, r6
d03e6a0e:	3601      	adds	r6, #1
d03e6a10:	2b00      	cmp	r3, #0
d03e6a12:	d1f7      	bne.n	d03e6a04 <main+0x201c>
d03e6a14:	3201      	adds	r2, #1
d03e6a16:	b2d6      	uxtb	r6, r2
d03e6a18:	2500      	movs	r5, #0
d03e6a1a:	f44f 72c0 	mov.w	r2, #384	; 0x180
d03e6a1e:	487b      	ldr	r0, [pc, #492]	; (d03e6c0c <main+0x2224>)
d03e6a20:	4629      	mov	r1, r5
d03e6a22:	f001 f837 	bl	d03e7a94 <memset>
d03e6a26:	9b05      	ldr	r3, [sp, #20]
d03e6a28:	eb04 0085 	add.w	r0, r4, r5, lsl #2
d03e6a2c:	2204      	movs	r2, #4
d03e6a2e:	eb03 0185 	add.w	r1, r3, r5, lsl #2
d03e6a32:	3501      	adds	r5, #1
d03e6a34:	f001 f820 	bl	d03e7a78 <memcpy>
d03e6a38:	b2eb      	uxtb	r3, r5
d03e6a3a:	429e      	cmp	r6, r3
d03e6a3c:	d8f3      	bhi.n	d03e6a26 <main+0x203e>
d03e6a3e:	4b71      	ldr	r3, [pc, #452]	; (d03e6c04 <main+0x221c>)
d03e6a40:	f04f 0200 	mov.w	r2, #0
d03e6a44:	701f      	strb	r7, [r3, #0]
d03e6a46:	4b70      	ldr	r3, [pc, #448]	; (d03e6c08 <main+0x2220>)
d03e6a48:	f884 217c 	strb.w	r2, [r4, #380]	; 0x17c
d03e6a4c:	f843 4027 	str.w	r4, [r3, r7, lsl #2]
d03e6a50:	4b70      	ldr	r3, [pc, #448]	; (d03e6c14 <main+0x222c>)
d03e6a52:	701a      	strb	r2, [r3, #0]
d03e6a54:	4b70      	ldr	r3, [pc, #448]	; (d03e6c18 <main+0x2230>)
d03e6a56:	701a      	strb	r2, [r3, #0]
d03e6a58:	4b70      	ldr	r3, [pc, #448]	; (d03e6c1c <main+0x2234>)
d03e6a5a:	701a      	strb	r2, [r3, #0]
d03e6a5c:	f04f 0100 	mov.w	r1, #0
d03e6a60:	4a6f      	ldr	r2, [pc, #444]	; (d03e6c20 <main+0x2238>)
d03e6a62:	2301      	movs	r3, #1
d03e6a64:	4d6f      	ldr	r5, [pc, #444]	; (d03e6c24 <main+0x223c>)
d03e6a66:	7011      	strb	r1, [r2, #0]
d03e6a68:	4a65      	ldr	r2, [pc, #404]	; (d03e6c00 <main+0x2218>)
d03e6a6a:	4c6f      	ldr	r4, [pc, #444]	; (d03e6c28 <main+0x2240>)
d03e6a6c:	7013      	strb	r3, [r2, #0]
d03e6a6e:	4a6f      	ldr	r2, [pc, #444]	; (d03e6c2c <main+0x2244>)
d03e6a70:	7013      	strb	r3, [r2, #0]
d03e6a72:	f7fc f927 	bl	d03e2cc4 <ui_vm_editor_clamp_selection>
d03e6a76:	235a      	movs	r3, #90	; 0x5a
d03e6a78:	4a6d      	ldr	r2, [pc, #436]	; (d03e6c30 <main+0x2248>)
d03e6a7a:	7013      	strb	r3, [r2, #0]
d03e6a7c:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d03e6a7e:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d03e6a80:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d03e6a84:	c403      	stmia	r4!, {r0, r1}
d03e6a86:	7022      	strb	r2, [r4, #0]
d03e6a88:	f7fe bc0e 	b.w	d03e52a8 <main+0x8c0>
d03e6a8c:	f5b6 7f9d 	cmp.w	r6, #314	; 0x13a
d03e6a90:	f6ff aead 	blt.w	d03e67ee <main+0x1e06>
d03e6a94:	b2bb      	uxth	r3, r7
d03e6a96:	f1a3 025c 	sub.w	r2, r3, #92	; 0x5c
d03e6a9a:	2a17      	cmp	r2, #23
d03e6a9c:	d803      	bhi.n	d03e6aa6 <main+0x20be>
d03e6a9e:	f5b6 7fc8 	cmp.w	r6, #400	; 0x190
d03e6aa2:	f2c0 84e6 	blt.w	d03e7472 <main+0x2a8a>
d03e6aa6:	f5b6 7f9e 	cmp.w	r6, #316	; 0x13c
d03e6aaa:	f6ff aea0 	blt.w	d03e67ee <main+0x1e06>
d03e6aae:	3b8a      	subs	r3, #138	; 0x8a
d03e6ab0:	2b15      	cmp	r3, #21
d03e6ab2:	bf8c      	ite	hi
d03e6ab4:	2300      	movhi	r3, #0
d03e6ab6:	2301      	movls	r3, #1
d03e6ab8:	f5b6 7faf 	cmp.w	r6, #350	; 0x15e
d03e6abc:	da02      	bge.n	d03e6ac4 <main+0x20dc>
d03e6abe:	2b00      	cmp	r3, #0
d03e6ac0:	f040 8575 	bne.w	d03e75ae <main+0x2bc6>
d03e6ac4:	f5a6 72b3 	sub.w	r2, r6, #358	; 0x166
d03e6ac8:	b292      	uxth	r2, r2
d03e6aca:	2a21      	cmp	r2, #33	; 0x21
d03e6acc:	f63f ae8f 	bhi.w	d03e67ee <main+0x1e06>
d03e6ad0:	2b00      	cmp	r3, #0
d03e6ad2:	f43f ae8c 	beq.w	d03e67ee <main+0x1e06>
d03e6ad6:	4a57      	ldr	r2, [pc, #348]	; (d03e6c34 <main+0x224c>)
d03e6ad8:	2700      	movs	r7, #0
d03e6ada:	4c57      	ldr	r4, [pc, #348]	; (d03e6c38 <main+0x2250>)
d03e6adc:	8813      	ldrh	r3, [r2, #0]
d03e6ade:	330a      	adds	r3, #10
d03e6ae0:	b21b      	sxth	r3, r3
d03e6ae2:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
d03e6ae6:	bfa8      	it	ge
d03e6ae8:	f44f 7396 	movge.w	r3, #300	; 0x12c
d03e6aec:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d03e6af0:	8013      	strh	r3, [r2, #0]
d03e6af2:	e004      	b.n	d03e6afe <main+0x2116>
d03e6af4:	3701      	adds	r7, #1
d03e6af6:	3408      	adds	r4, #8
d03e6af8:	2f06      	cmp	r7, #6
d03e6afa:	f43e abd5 	beq.w	d03e52a8 <main+0x8c0>
d03e6afe:	7823      	ldrb	r3, [r4, #0]
d03e6b00:	b2f8      	uxtb	r0, r7
d03e6b02:	2b00      	cmp	r3, #0
d03e6b04:	d0f6      	beq.n	d03e6af4 <main+0x210c>
d03e6b06:	7863      	ldrb	r3, [r4, #1]
d03e6b08:	2b09      	cmp	r3, #9
d03e6b0a:	d1f3      	bne.n	d03e6af4 <main+0x210c>
d03e6b0c:	4b4b      	ldr	r3, [pc, #300]	; (d03e6c3c <main+0x2254>)
d03e6b0e:	f04f 0e7f 	mov.w	lr, #127	; 0x7f
d03e6b12:	f894 c003 	ldrb.w	ip, [r4, #3]
d03e6b16:	7a5e      	ldrb	r6, [r3, #9]
d03e6b18:	4b49      	ldr	r3, [pc, #292]	; (d03e6c40 <main+0x2258>)
d03e6b1a:	494a      	ldr	r1, [pc, #296]	; (d03e6c44 <main+0x225c>)
d03e6b1c:	7a5a      	ldrb	r2, [r3, #9]
d03e6b1e:	fb1c f306 	smulbb	r3, ip, r6
d03e6b22:	880d      	ldrh	r5, [r1, #0]
d03e6b24:	333f      	adds	r3, #63	; 0x3f
d03e6b26:	4943      	ldr	r1, [pc, #268]	; (d03e6c34 <main+0x224c>)
d03e6b28:	fbb3 f3fe 	udiv	r3, r3, lr
d03e6b2c:	fb02 f303 	mul.w	r3, r2, r3
d03e6b30:	8809      	ldrh	r1, [r1, #0]
d03e6b32:	333f      	adds	r3, #63	; 0x3f
d03e6b34:	fbb3 f3fe 	udiv	r3, r3, lr
d03e6b38:	fb05 f303 	mul.w	r3, r5, r3
d03e6b3c:	f04f 0e64 	mov.w	lr, #100	; 0x64
d03e6b40:	3332      	adds	r3, #50	; 0x32
d03e6b42:	fbb3 f3fe 	udiv	r3, r3, lr
d03e6b46:	fb01 f303 	mul.w	r3, r1, r3
d03e6b4a:	3332      	adds	r3, #50	; 0x32
d03e6b4c:	2b63      	cmp	r3, #99	; 0x63
d03e6b4e:	f200 8621 	bhi.w	d03e7794 <main+0x2dac>
d03e6b52:	3a00      	subs	r2, #0
d03e6b54:	bf18      	it	ne
d03e6b56:	2201      	movne	r2, #1
d03e6b58:	f1bc 0f00 	cmp.w	ip, #0
d03e6b5c:	f000 861a 	beq.w	d03e7794 <main+0x2dac>
d03e6b60:	2e00      	cmp	r6, #0
d03e6b62:	bf14      	ite	ne
d03e6b64:	4613      	movne	r3, r2
d03e6b66:	2300      	moveq	r3, #0
d03e6b68:	2d00      	cmp	r5, #0
d03e6b6a:	bf08      	it	eq
d03e6b6c:	2300      	moveq	r3, #0
d03e6b6e:	2900      	cmp	r1, #0
d03e6b70:	bf08      	it	eq
d03e6b72:	2300      	moveq	r3, #0
d03e6b74:	b2d9      	uxtb	r1, r3
d03e6b76:	f7f9 ff5d 	bl	d03e0a34 <sid_voice_set_velocity>
d03e6b7a:	e7bb      	b.n	d03e6af4 <main+0x210c>
d03e6b7c:	f5b6 7fb2 	cmp.w	r6, #356	; 0x164
d03e6b80:	f6ff ae35 	blt.w	d03e67ee <main+0x1e06>
d03e6b84:	b2bb      	uxth	r3, r7
d03e6b86:	f5b6 7fc3 	cmp.w	r6, #390	; 0x186
d03e6b8a:	f1a3 0258 	sub.w	r2, r3, #88	; 0x58
d03e6b8e:	bfac      	ite	ge
d03e6b90:	2100      	movge	r1, #0
d03e6b92:	2101      	movlt	r1, #1
d03e6b94:	2a15      	cmp	r2, #21
d03e6b96:	bf8c      	ite	hi
d03e6b98:	2200      	movhi	r2, #0
d03e6b9a:	2201      	movls	r2, #1
d03e6b9c:	b111      	cbz	r1, d03e6ba4 <main+0x21bc>
d03e6b9e:	2a00      	cmp	r2, #0
d03e6ba0:	f040 83f1 	bne.w	d03e7386 <main+0x299e>
d03e6ba4:	f5b6 7fc7 	cmp.w	r6, #398	; 0x18e
d03e6ba8:	f2c0 85bf 	blt.w	d03e772a <main+0x2d42>
d03e6bac:	f5b6 7fd8 	cmp.w	r6, #432	; 0x1b0
d03e6bb0:	bfac      	ite	ge
d03e6bb2:	2100      	movge	r1, #0
d03e6bb4:	2101      	movlt	r1, #1
d03e6bb6:	b111      	cbz	r1, d03e6bbe <main+0x21d6>
d03e6bb8:	2a00      	cmp	r2, #0
d03e6bba:	f040 8281 	bne.w	d03e70c0 <main+0x26d8>
d03e6bbe:	3b8b      	subs	r3, #139	; 0x8b
d03e6bc0:	2b15      	cmp	r3, #21
d03e6bc2:	d802      	bhi.n	d03e6bca <main+0x21e2>
d03e6bc4:	2900      	cmp	r1, #0
d03e6bc6:	f040 83cc 	bne.w	d03e7362 <main+0x297a>
d03e6bca:	2fbd      	cmp	r7, #189	; 0xbd
d03e6bcc:	bfcc      	ite	gt
d03e6bce:	2301      	movgt	r3, #1
d03e6bd0:	2300      	movle	r3, #0
d03e6bd2:	2fd3      	cmp	r7, #211	; 0xd3
d03e6bd4:	bfc8      	it	gt
d03e6bd6:	2300      	movgt	r3, #0
d03e6bd8:	2b00      	cmp	r3, #0
d03e6bda:	f43f ae08 	beq.w	d03e67ee <main+0x1e06>
d03e6bde:	f5a6 73c7 	sub.w	r3, r6, #398	; 0x18e
d03e6be2:	b29b      	uxth	r3, r3
d03e6be4:	2b21      	cmp	r3, #33	; 0x21
d03e6be6:	f63f ae02 	bhi.w	d03e67ee <main+0x1e06>
d03e6bea:	4b03      	ldr	r3, [pc, #12]	; (d03e6bf8 <main+0x2210>)
d03e6bec:	7818      	ldrb	r0, [r3, #0]
d03e6bee:	280f      	cmp	r0, #15
d03e6bf0:	f63f adfd 	bhi.w	d03e67ee <main+0x1e06>
d03e6bf4:	4a12      	ldr	r2, [pc, #72]	; (d03e6c40 <main+0x2258>)
d03e6bf6:	e3ba      	b.n	d03e736e <main+0x2986>
d03e6bf8:	d03ea645 	.word	0xd03ea645
d03e6bfc:	d03ea3a4 	.word	0xd03ea3a4
d03e6c00:	d03ea7f5 	.word	0xd03ea7f5
d03e6c04:	d03ea7fc 	.word	0xd03ea7fc
d03e6c08:	d03e9cbc 	.word	0xd03e9cbc
d03e6c0c:	d03ea674 	.word	0xd03ea674
d03e6c10:	d03ea7f8 	.word	0xd03ea7f8
d03e6c14:	d03ea7fd 	.word	0xd03ea7fd
d03e6c18:	d03ea7f4 	.word	0xd03ea7f4
d03e6c1c:	d03ea805 	.word	0xd03ea805
d03e6c20:	d03ea7ff 	.word	0xd03ea7ff
d03e6c24:	d03e9600 	.word	0xd03e9600
d03e6c28:	d03ea648 	.word	0xd03ea648
d03e6c2c:	d03ea7fe 	.word	0xd03ea7fe
d03e6c30:	d03ea670 	.word	0xd03ea670
d03e6c34:	d03ea3ca 	.word	0xd03ea3ca
d03e6c38:	d03ea5f0 	.word	0xd03ea5f0
d03e6c3c:	d03ea3b4 	.word	0xd03ea3b4
d03e6c40:	d03ea394 	.word	0xd03ea394
d03e6c44:	d03ea5d2 	.word	0xd03ea5d2
d03e6c48:	f1a7 0358 	sub.w	r3, r7, #88	; 0x58
d03e6c4c:	211a      	movs	r1, #26
d03e6c4e:	2000      	movs	r0, #0
d03e6c50:	f04f 0c68 	mov.w	ip, #104	; 0x68
d03e6c54:	b29b      	uxth	r3, r3
d03e6c56:	9305      	str	r3, [sp, #20]
d03e6c58:	b20c      	sxth	r4, r1
d03e6c5a:	fb0c f300 	mul.w	r3, ip, r0
d03e6c5e:	3168      	adds	r1, #104	; 0x68
d03e6c60:	b2c5      	uxtb	r5, r0
d03e6c62:	42a2      	cmp	r2, r4
d03e6c64:	f103 037a 	add.w	r3, r3, #122	; 0x7a
d03e6c68:	f100 0001 	add.w	r0, r0, #1
d03e6c6c:	b289      	uxth	r1, r1
d03e6c6e:	db05      	blt.n	d03e6c7c <main+0x2294>
d03e6c70:	429a      	cmp	r2, r3
d03e6c72:	da03      	bge.n	d03e6c7c <main+0x2294>
d03e6c74:	9b05      	ldr	r3, [sp, #20]
d03e6c76:	2b19      	cmp	r3, #25
d03e6c78:	f240 838f 	bls.w	d03e739a <main+0x29b2>
d03e6c7c:	2804      	cmp	r0, #4
d03e6c7e:	d1eb      	bne.n	d03e6c58 <main+0x2270>
d03e6c80:	2e17      	cmp	r6, #23
d03e6c82:	f77f adb4 	ble.w	d03e67ee <main+0x1e06>
d03e6c86:	4b95      	ldr	r3, [pc, #596]	; (d03e6edc <main+0x24f4>)
d03e6c88:	f5b6 7fde 	cmp.w	r6, #444	; 0x1bc
d03e6c8c:	7818      	ldrb	r0, [r3, #0]
d03e6c8e:	bfac      	ite	ge
d03e6c90:	2300      	movge	r3, #0
d03e6c92:	2301      	movlt	r3, #1
d03e6c94:	2f76      	cmp	r7, #118	; 0x76
d03e6c96:	ea4f 0080 	mov.w	r0, r0, lsl #2
d03e6c9a:	b2c0      	uxtb	r0, r0
d03e6c9c:	dd02      	ble.n	d03e6ca4 <main+0x22bc>
d03e6c9e:	2b00      	cmp	r3, #0
d03e6ca0:	f040 82f5 	bne.w	d03e728e <main+0x28a6>
d03e6ca4:	2f9a      	cmp	r7, #154	; 0x9a
d03e6ca6:	dd02      	ble.n	d03e6cae <main+0x22c6>
d03e6ca8:	2b00      	cmp	r3, #0
d03e6caa:	f040 831a 	bne.w	d03e72e2 <main+0x28fa>
d03e6cae:	2fbe      	cmp	r7, #190	; 0xbe
d03e6cb0:	dd02      	ble.n	d03e6cb8 <main+0x22d0>
d03e6cb2:	2b00      	cmp	r3, #0
d03e6cb4:	f040 831d 	bne.w	d03e72f2 <main+0x290a>
d03e6cb8:	2fe2      	cmp	r7, #226	; 0xe2
d03e6cba:	f77f ad98 	ble.w	d03e67ee <main+0x1e06>
d03e6cbe:	2b00      	cmp	r3, #0
d03e6cc0:	f43f ad95 	beq.w	d03e67ee <main+0x1e06>
d03e6cc4:	f5be 7f81 	cmp.w	lr, #258	; 0x102
d03e6cc8:	f73f ad91 	bgt.w	d03e67ee <main+0x1e06>
d03e6ccc:	3003      	adds	r0, #3
d03e6cce:	236c      	movs	r3, #108	; 0x6c
d03e6cd0:	b2c0      	uxtb	r0, r0
d03e6cd2:	e2e1      	b.n	d03e7298 <main+0x28b0>
d03e6cd4:	f5b6 7f96 	cmp.w	r6, #300	; 0x12c
d03e6cd8:	f6ff ad89 	blt.w	d03e67ee <main+0x1e06>
d03e6cdc:	f1a7 0386 	sub.w	r3, r7, #134	; 0x86
d03e6ce0:	b29b      	uxth	r3, r3
d03e6ce2:	2b15      	cmp	r3, #21
d03e6ce4:	bf8c      	ite	hi
d03e6ce6:	2300      	movhi	r3, #0
d03e6ce8:	2301      	movls	r3, #1
d03e6cea:	f5b6 7fa7 	cmp.w	r6, #334	; 0x14e
d03e6cee:	f280 81ca 	bge.w	d03e7086 <main+0x269e>
d03e6cf2:	2b00      	cmp	r3, #0
d03e6cf4:	f000 81c7 	beq.w	d03e7086 <main+0x269e>
d03e6cf8:	4b79      	ldr	r3, [pc, #484]	; (d03e6ee0 <main+0x24f8>)
d03e6cfa:	781a      	ldrb	r2, [r3, #0]
d03e6cfc:	2a09      	cmp	r2, #9
d03e6cfe:	f000 8567 	beq.w	d03e77d0 <main+0x2de8>
d03e6d02:	2a0f      	cmp	r2, #15
d03e6d04:	d805      	bhi.n	d03e6d12 <main+0x232a>
d03e6d06:	4977      	ldr	r1, [pc, #476]	; (d03e6ee4 <main+0x24fc>)
d03e6d08:	5c8b      	ldrb	r3, [r1, r2]
d03e6d0a:	3b01      	subs	r3, #1
d03e6d0c:	f383 0307 	usat	r3, #7, r3
d03e6d10:	548b      	strb	r3, [r1, r2]
d03e6d12:	4875      	ldr	r0, [pc, #468]	; (d03e6ee8 <main+0x2500>)
d03e6d14:	2301      	movs	r3, #1
d03e6d16:	6801      	ldr	r1, [r0, #0]
d03e6d18:	4093      	lsls	r3, r2
d03e6d1a:	430b      	orrs	r3, r1
d03e6d1c:	6003      	str	r3, [r0, #0]
d03e6d1e:	e566      	b.n	d03e67ee <main+0x1e06>
d03e6d20:	2303      	movs	r3, #3
d03e6d22:	4a72      	ldr	r2, [pc, #456]	; (d03e6eec <main+0x2504>)
d03e6d24:	4c72      	ldr	r4, [pc, #456]	; (d03e6ef0 <main+0x2508>)
d03e6d26:	265a      	movs	r6, #90	; 0x5a
d03e6d28:	4d72      	ldr	r5, [pc, #456]	; (d03e6ef4 <main+0x250c>)
d03e6d2a:	7013      	strb	r3, [r2, #0]
d03e6d2c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d03e6d2e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d03e6d30:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d03e6d34:	4c70      	ldr	r4, [pc, #448]	; (d03e6ef8 <main+0x2510>)
d03e6d36:	7026      	strb	r6, [r4, #0]
d03e6d38:	4c6a      	ldr	r4, [pc, #424]	; (d03e6ee4 <main+0x24fc>)
d03e6d3a:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d03e6d3e:	7a64      	ldrb	r4, [r4, #9]
d03e6d40:	f7fe beb9 	b.w	d03e5ab6 <main+0x10ce>
d03e6d44:	230a      	movs	r3, #10
d03e6d46:	f7ff ba35 	b.w	d03e61b4 <main+0x17cc>
d03e6d4a:	f89a 2004 	ldrb.w	r2, [sl, #4]
d03e6d4e:	4282      	cmp	r2, r0
d03e6d50:	f47e ab13 	bne.w	d03e537a <main+0x992>
d03e6d54:	2500      	movs	r5, #0
d03e6d56:	aa10      	add	r2, sp, #64	; 0x40
d03e6d58:	a90f      	add	r1, sp, #60	; 0x3c
d03e6d5a:	4628      	mov	r0, r5
d03e6d5c:	f7f9 fee2 	bl	d03e0b24 <sid_voice_get_vm_debug>
d03e6d60:	2800      	cmp	r0, #0
d03e6d62:	d05c      	beq.n	d03e6e1e <main+0x2436>
d03e6d64:	f89d 3040 	ldrb.w	r3, [sp, #64]	; 0x40
d03e6d68:	2b00      	cmp	r3, #0
d03e6d6a:	d058      	beq.n	d03e6e1e <main+0x2436>
d03e6d6c:	4963      	ldr	r1, [pc, #396]	; (d03e6efc <main+0x2514>)
d03e6d6e:	780b      	ldrb	r3, [r1, #0]
d03e6d70:	b92b      	cbnz	r3, d03e6d7e <main+0x2396>
d03e6d72:	4b63      	ldr	r3, [pc, #396]	; (d03e6f00 <main+0x2518>)
d03e6d74:	4863      	ldr	r0, [pc, #396]	; (d03e6f04 <main+0x251c>)
d03e6d76:	781a      	ldrb	r2, [r3, #0]
d03e6d78:	2301      	movs	r3, #1
d03e6d7a:	7002      	strb	r2, [r0, #0]
d03e6d7c:	700b      	strb	r3, [r1, #0]
d03e6d7e:	f89d 303c 	ldrb.w	r3, [sp, #60]	; 0x3c
d03e6d82:	42b3      	cmp	r3, r6
d03e6d84:	d303      	bcc.n	d03e6d8e <main+0x23a6>
d03e6d86:	3e01      	subs	r6, #1
d03e6d88:	b2f3      	uxtb	r3, r6
d03e6d8a:	f88d 603c 	strb.w	r6, [sp, #60]	; 0x3c
d03e6d8e:	4a5e      	ldr	r2, [pc, #376]	; (d03e6f08 <main+0x2520>)
d03e6d90:	2101      	movs	r1, #1
d03e6d92:	485b      	ldr	r0, [pc, #364]	; (d03e6f00 <main+0x2518>)
d03e6d94:	7013      	strb	r3, [r2, #0]
d03e6d96:	4a5d      	ldr	r2, [pc, #372]	; (d03e6f0c <main+0x2524>)
d03e6d98:	7015      	strb	r5, [r2, #0]
d03e6d9a:	7802      	ldrb	r2, [r0, #0]
d03e6d9c:	4d5c      	ldr	r5, [pc, #368]	; (d03e6f10 <main+0x2528>)
d03e6d9e:	4293      	cmp	r3, r2
d03e6da0:	7029      	strb	r1, [r5, #0]
d03e6da2:	d24b      	bcs.n	d03e6e3c <main+0x2454>
d03e6da4:	7003      	strb	r3, [r0, #0]
d03e6da6:	4b4e      	ldr	r3, [pc, #312]	; (d03e6ee0 <main+0x24f8>)
d03e6da8:	494e      	ldr	r1, [pc, #312]	; (d03e6ee4 <main+0x24fc>)
d03e6daa:	781b      	ldrb	r3, [r3, #0]
d03e6dac:	56ca      	ldrsb	r2, [r1, r3]
d03e6dae:	5cc9      	ldrb	r1, [r1, r3]
d03e6db0:	2a00      	cmp	r2, #0
d03e6db2:	db11      	blt.n	d03e6dd8 <main+0x23f0>
d03e6db4:	4a57      	ldr	r2, [pc, #348]	; (d03e6f14 <main+0x252c>)
d03e6db6:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
d03e6dba:	b168      	cbz	r0, d03e6dd8 <main+0x23f0>
d03e6dbc:	2200      	movs	r2, #0
d03e6dbe:	e001      	b.n	d03e6dc4 <main+0x23dc>
d03e6dc0:	2a60      	cmp	r2, #96	; 0x60
d03e6dc2:	d06c      	beq.n	d03e6e9e <main+0x24b6>
d03e6dc4:	f810 4022 	ldrb.w	r4, [r0, r2, lsl #2]
d03e6dc8:	b2d1      	uxtb	r1, r2
d03e6dca:	3201      	adds	r2, #1
d03e6dcc:	2c00      	cmp	r4, #0
d03e6dce:	d1f7      	bne.n	d03e6dc0 <main+0x23d8>
d03e6dd0:	1c4a      	adds	r2, r1, #1
d03e6dd2:	b2d2      	uxtb	r2, r2
d03e6dd4:	2a06      	cmp	r2, #6
d03e6dd6:	d862      	bhi.n	d03e6e9e <main+0x24b6>
d03e6dd8:	4949      	ldr	r1, [pc, #292]	; (d03e6f00 <main+0x2518>)
d03e6dda:	780a      	ldrb	r2, [r1, #0]
d03e6ddc:	42a2      	cmp	r2, r4
d03e6dde:	f67f a8d8 	bls.w	d03e5f92 <main+0x15aa>
d03e6de2:	700c      	strb	r4, [r1, #0]
d03e6de4:	f7ff b8d5 	b.w	d03e5f92 <main+0x15aa>
d03e6de8:	f89a 200c 	ldrb.w	r2, [sl, #12]
d03e6dec:	4282      	cmp	r2, r0
d03e6dee:	f47e aacc 	bne.w	d03e538a <main+0x9a2>
d03e6df2:	2501      	movs	r5, #1
d03e6df4:	e7af      	b.n	d03e6d56 <main+0x236e>
d03e6df6:	f89a 2014 	ldrb.w	r2, [sl, #20]
d03e6dfa:	4282      	cmp	r2, r0
d03e6dfc:	f47e aacd 	bne.w	d03e539a <main+0x9b2>
d03e6e00:	2502      	movs	r5, #2
d03e6e02:	e7a8      	b.n	d03e6d56 <main+0x236e>
d03e6e04:	f89a 201c 	ldrb.w	r2, [sl, #28]
d03e6e08:	4282      	cmp	r2, r0
d03e6e0a:	f47e aace 	bne.w	d03e53aa <main+0x9c2>
d03e6e0e:	2503      	movs	r5, #3
d03e6e10:	e7a1      	b.n	d03e6d56 <main+0x236e>
d03e6e12:	f89a 2024 	ldrb.w	r2, [sl, #36]	; 0x24
d03e6e16:	4282      	cmp	r2, r0
d03e6e18:	f47e aacf 	bne.w	d03e53ba <main+0x9d2>
d03e6e1c:	e79b      	b.n	d03e6d56 <main+0x236e>
d03e6e1e:	4a33      	ldr	r2, [pc, #204]	; (d03e6eec <main+0x2504>)
d03e6e20:	4b2f      	ldr	r3, [pc, #188]	; (d03e6ee0 <main+0x24f8>)
d03e6e22:	7815      	ldrb	r5, [r2, #0]
d03e6e24:	4a3c      	ldr	r2, [pc, #240]	; (d03e6f18 <main+0x2530>)
d03e6e26:	781b      	ldrb	r3, [r3, #0]
d03e6e28:	7811      	ldrb	r1, [r2, #0]
d03e6e2a:	f7fe bace 	b.w	d03e53ca <main+0x9e2>
d03e6e2e:	f89a 202c 	ldrb.w	r2, [sl, #44]	; 0x2c
d03e6e32:	4282      	cmp	r2, r0
d03e6e34:	f47e aac9 	bne.w	d03e53ca <main+0x9e2>
d03e6e38:	2505      	movs	r5, #5
d03e6e3a:	e78c      	b.n	d03e6d56 <main+0x236e>
d03e6e3c:	3206      	adds	r2, #6
d03e6e3e:	b2d2      	uxtb	r2, r2
d03e6e40:	4293      	cmp	r3, r2
d03e6e42:	d3b0      	bcc.n	d03e6da6 <main+0x23be>
d03e6e44:	3b05      	subs	r3, #5
d03e6e46:	4a2e      	ldr	r2, [pc, #184]	; (d03e6f00 <main+0x2518>)
d03e6e48:	7013      	strb	r3, [r2, #0]
d03e6e4a:	e7ac      	b.n	d03e6da6 <main+0x23be>
d03e6e4c:	2000      	movs	r0, #0
d03e6e4e:	e47f      	b.n	d03e6750 <main+0x1d68>
d03e6e50:	2000      	movs	r0, #0
d03e6e52:	e44f      	b.n	d03e66f4 <main+0x1d0c>
d03e6e54:	4a29      	ldr	r2, [pc, #164]	; (d03e6efc <main+0x2514>)
d03e6e56:	7812      	ldrb	r2, [r2, #0]
d03e6e58:	2a00      	cmp	r2, #0
d03e6e5a:	f43e aabb 	beq.w	d03e53d4 <main+0x9ec>
d03e6e5e:	4a29      	ldr	r2, [pc, #164]	; (d03e6f04 <main+0x251c>)
d03e6e60:	4827      	ldr	r0, [pc, #156]	; (d03e6f00 <main+0x2518>)
d03e6e62:	7816      	ldrb	r6, [r2, #0]
d03e6e64:	2200      	movs	r2, #0
d03e6e66:	7006      	strb	r6, [r0, #0]
d03e6e68:	e002      	b.n	d03e6e70 <main+0x2488>
d03e6e6a:	2a60      	cmp	r2, #96	; 0x60
d03e6e6c:	f000 80f3 	beq.w	d03e7056 <main+0x266e>
d03e6e70:	f817 4022 	ldrb.w	r4, [r7, r2, lsl #2]
d03e6e74:	b2d0      	uxtb	r0, r2
d03e6e76:	3201      	adds	r2, #1
d03e6e78:	2c00      	cmp	r4, #0
d03e6e7a:	d1f6      	bne.n	d03e6e6a <main+0x2482>
d03e6e7c:	e4d7      	b.n	d03e682e <main+0x1e46>
d03e6e7e:	9b04      	ldr	r3, [sp, #16]
d03e6e80:	069b      	lsls	r3, r3, #26
d03e6e82:	f57e ae36 	bpl.w	d03e5af2 <main+0x110a>
d03e6e86:	4b24      	ldr	r3, [pc, #144]	; (d03e6f18 <main+0x2530>)
d03e6e88:	781b      	ldrb	r3, [r3, #0]
d03e6e8a:	2b00      	cmp	r3, #0
d03e6e8c:	f000 81e1 	beq.w	d03e7252 <main+0x286a>
d03e6e90:	2301      	movs	r3, #1
d03e6e92:	f7fe bf72 	b.w	d03e5d7a <main+0x1392>
d03e6e96:	2401      	movs	r4, #1
d03e6e98:	4b14      	ldr	r3, [pc, #80]	; (d03e6eec <main+0x2504>)
d03e6e9a:	701c      	strb	r4, [r3, #0]
d03e6e9c:	e4a7      	b.n	d03e67ee <main+0x1e06>
d03e6e9e:	3a06      	subs	r2, #6
d03e6ea0:	b2d4      	uxtb	r4, r2
d03e6ea2:	e799      	b.n	d03e6dd8 <main+0x23f0>
d03e6ea4:	9b04      	ldr	r3, [sp, #16]
d03e6ea6:	069d      	lsls	r5, r3, #26
d03e6ea8:	f57e ae23 	bpl.w	d03e5af2 <main+0x110a>
d03e6eac:	4b1b      	ldr	r3, [pc, #108]	; (d03e6f1c <main+0x2534>)
d03e6eae:	781b      	ldrb	r3, [r3, #0]
d03e6eb0:	2c00      	cmp	r4, #0
d03e6eb2:	f040 81e1 	bne.w	d03e7278 <main+0x2890>
d03e6eb6:	3301      	adds	r3, #1
d03e6eb8:	b25b      	sxtb	r3, r3
d03e6eba:	2b00      	cmp	r3, #0
d03e6ebc:	f2c0 82d7 	blt.w	d03e746e <main+0x2a86>
d03e6ec0:	2b03      	cmp	r3, #3
d03e6ec2:	bfa8      	it	ge
d03e6ec4:	2300      	movge	r3, #0
d03e6ec6:	4916      	ldr	r1, [pc, #88]	; (d03e6f20 <main+0x2538>)
d03e6ec8:	f04f 0000 	mov.w	r0, #0
d03e6ecc:	2201      	movs	r2, #1
d03e6ece:	7008      	strb	r0, [r1, #0]
d03e6ed0:	4912      	ldr	r1, [pc, #72]	; (d03e6f1c <main+0x2534>)
d03e6ed2:	700b      	strb	r3, [r1, #0]
d03e6ed4:	4b13      	ldr	r3, [pc, #76]	; (d03e6f24 <main+0x253c>)
d03e6ed6:	701a      	strb	r2, [r3, #0]
d03e6ed8:	f7ff b982 	b.w	d03e61e0 <main+0x17f8>
d03e6edc:	d03ea630 	.word	0xd03ea630
d03e6ee0:	d03ea645 	.word	0xd03ea645
d03e6ee4:	d03ea3a4 	.word	0xd03ea3a4
d03e6ee8:	d03ea624 	.word	0xd03ea624
d03e6eec:	d03ea636 	.word	0xd03ea636
d03e6ef0:	d03e90ac 	.word	0xd03e90ac
d03e6ef4:	d03ea648 	.word	0xd03ea648
d03e6ef8:	d03ea670 	.word	0xd03ea670
d03e6efc:	d03ea800 	.word	0xd03ea800
d03e6f00:	d03ea805 	.word	0xd03ea805
d03e6f04:	d03ea801 	.word	0xd03ea801
d03e6f08:	d03ea802 	.word	0xd03ea802
d03e6f0c:	d03ea804 	.word	0xd03ea804
d03e6f10:	d03ea803 	.word	0xd03ea803
d03e6f14:	d03e9cbc 	.word	0xd03e9cbc
d03e6f18:	d03ea7f5 	.word	0xd03ea7f5
d03e6f1c:	d03ea7f4 	.word	0xd03ea7f4
d03e6f20:	d03ea7ff 	.word	0xd03ea7ff
d03e6f24:	d03ea7fe 	.word	0xd03ea7fe
d03e6f28:	9b08      	ldr	r3, [sp, #32]
d03e6f2a:	b91b      	cbnz	r3, d03e6f34 <main+0x254c>
d03e6f2c:	f5b6 7fd1 	cmp.w	r6, #418	; 0x1a2
d03e6f30:	f280 80dc 	bge.w	d03e70ec <main+0x2704>
d03e6f34:	4bb1      	ldr	r3, [pc, #708]	; (d03e71fc <main+0x2814>)
d03e6f36:	781b      	ldrb	r3, [r3, #0]
d03e6f38:	2b00      	cmp	r3, #0
d03e6f3a:	f43f ac58 	beq.w	d03e67ee <main+0x1e06>
d03e6f3e:	4bb0      	ldr	r3, [pc, #704]	; (d03e7200 <main+0x2818>)
d03e6f40:	4ab0      	ldr	r2, [pc, #704]	; (d03e7204 <main+0x281c>)
d03e6f42:	781b      	ldrb	r3, [r3, #0]
d03e6f44:	49b0      	ldr	r1, [pc, #704]	; (d03e7208 <main+0x2820>)
d03e6f46:	7812      	ldrb	r2, [r2, #0]
d03e6f48:	5ccb      	ldrb	r3, [r1, r3]
d03e6f4a:	429a      	cmp	r2, r3
d03e6f4c:	f47f ac4f 	bne.w	d03e67ee <main+0x1e06>
d03e6f50:	9a08      	ldr	r2, [sp, #32]
d03e6f52:	2a00      	cmp	r2, #0
d03e6f54:	f000 8326 	beq.w	d03e75a4 <main+0x2bbc>
d03e6f58:	b2b9      	uxth	r1, r7
d03e6f5a:	f1a1 02e2 	sub.w	r2, r1, #226	; 0xe2
d03e6f5e:	2a13      	cmp	r2, #19
d03e6f60:	d805      	bhi.n	d03e6f6e <main+0x2586>
d03e6f62:	f1a6 0246 	sub.w	r2, r6, #70	; 0x46
d03e6f66:	b292      	uxth	r2, r2
d03e6f68:	2a41      	cmp	r2, #65	; 0x41
d03e6f6a:	f67e ad5d 	bls.w	d03e5a28 <main+0x1040>
d03e6f6e:	2e45      	cmp	r6, #69	; 0x45
d03e6f70:	dd46      	ble.n	d03e7000 <main+0x2618>
d03e6f72:	39f6      	subs	r1, #246	; 0xf6
d03e6f74:	2915      	cmp	r1, #21
d03e6f76:	d802      	bhi.n	d03e6f7e <main+0x2596>
d03e6f78:	2e73      	cmp	r6, #115	; 0x73
d03e6f7a:	f340 84b4 	ble.w	d03e78e6 <main+0x2efe>
d03e6f7e:	2eb7      	cmp	r6, #183	; 0xb7
d03e6f80:	dd3e      	ble.n	d03e7000 <main+0x2618>
d03e6f82:	f1a7 02e2 	sub.w	r2, r7, #226	; 0xe2
d03e6f86:	b292      	uxth	r2, r2
d03e6f88:	2a13      	cmp	r2, #19
d03e6f8a:	bf8c      	ite	hi
d03e6f8c:	2200      	movhi	r2, #0
d03e6f8e:	2201      	movls	r2, #1
d03e6f90:	2ee5      	cmp	r6, #229	; 0xe5
d03e6f92:	dc02      	bgt.n	d03e6f9a <main+0x25b2>
d03e6f94:	2a00      	cmp	r2, #0
d03e6f96:	f040 8462 	bne.w	d03e785e <main+0x2e76>
d03e6f9a:	2ee9      	cmp	r6, #233	; 0xe9
d03e6f9c:	f340 8526 	ble.w	d03e79ec <main+0x3004>
d03e6fa0:	f5b6 7f86 	cmp.w	r6, #268	; 0x10c
d03e6fa4:	da02      	bge.n	d03e6fac <main+0x25c4>
d03e6fa6:	2a00      	cmp	r2, #0
d03e6fa8:	f040 845e 	bne.w	d03e7868 <main+0x2e80>
d03e6fac:	f5b6 7f88 	cmp.w	r6, #272	; 0x110
d03e6fb0:	f2c0 8435 	blt.w	d03e781e <main+0x2e36>
d03e6fb4:	f5b6 7f99 	cmp.w	r6, #306	; 0x132
d03e6fb8:	da02      	bge.n	d03e6fc0 <main+0x25d8>
d03e6fba:	2a00      	cmp	r2, #0
d03e6fbc:	f040 8429 	bne.w	d03e7812 <main+0x2e2a>
d03e6fc0:	f5b6 7f9b 	cmp.w	r6, #310	; 0x136
d03e6fc4:	f2c0 84ba 	blt.w	d03e793c <main+0x2f54>
d03e6fc8:	f5b6 7fb2 	cmp.w	r6, #356	; 0x164
d03e6fcc:	da02      	bge.n	d03e6fd4 <main+0x25ec>
d03e6fce:	2a00      	cmp	r2, #0
d03e6fd0:	f040 843a 	bne.w	d03e7848 <main+0x2e60>
d03e6fd4:	f5b7 7f87 	cmp.w	r7, #270	; 0x10e
d03e6fd8:	bfac      	ite	ge
d03e6fda:	2100      	movge	r1, #0
d03e6fdc:	2101      	movlt	r1, #1
d03e6fde:	2ff9      	cmp	r7, #249	; 0xf9
d03e6fe0:	bfd8      	it	le
d03e6fe2:	2100      	movle	r1, #0
d03e6fe4:	f5b6 7f99 	cmp.w	r6, #306	; 0x132
d03e6fe8:	da02      	bge.n	d03e6ff0 <main+0x2608>
d03e6fea:	2900      	cmp	r1, #0
d03e6fec:	f040 8432 	bne.w	d03e7854 <main+0x2e6c>
d03e6ff0:	f5a6 729b 	sub.w	r2, r6, #310	; 0x136
d03e6ff4:	b292      	uxth	r2, r2
d03e6ff6:	2a2d      	cmp	r2, #45	; 0x2d
d03e6ff8:	d802      	bhi.n	d03e7000 <main+0x2618>
d03e6ffa:	2900      	cmp	r1, #0
d03e6ffc:	f040 846e 	bne.w	d03e78dc <main+0x2ef4>
d03e7000:	f1a6 021e 	sub.w	r2, r6, #30
d03e7004:	9908      	ldr	r1, [sp, #32]
d03e7006:	b292      	uxth	r2, r2
d03e7008:	f5b2 7fbf 	cmp.w	r2, #382	; 0x17e
d03e700c:	bf2c      	ite	cs
d03e700e:	2100      	movcs	r1, #0
d03e7010:	f001 0101 	andcc.w	r1, r1, #1
d03e7014:	2900      	cmp	r1, #0
d03e7016:	f43f abea 	beq.w	d03e67ee <main+0x1e06>
d03e701a:	f1a7 027c 	sub.w	r2, r7, #124	; 0x7c
d03e701e:	b292      	uxth	r2, r2
d03e7020:	2a5f      	cmp	r2, #95	; 0x5f
d03e7022:	f63f abe4 	bhi.w	d03e67ee <main+0x1e06>
d03e7026:	061a      	lsls	r2, r3, #24
d03e7028:	f53f abe1 	bmi.w	d03e67ee <main+0x1e06>
d03e702c:	4a77      	ldr	r2, [pc, #476]	; (d03e720c <main+0x2824>)
d03e702e:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
d03e7032:	2900      	cmp	r1, #0
d03e7034:	f43f abdb 	beq.w	d03e67ee <main+0x1e06>
d03e7038:	2300      	movs	r3, #0
d03e703a:	e002      	b.n	d03e7042 <main+0x265a>
d03e703c:	2b60      	cmp	r3, #96	; 0x60
d03e703e:	f000 849a 	beq.w	d03e7976 <main+0x2f8e>
d03e7042:	f811 0023 	ldrb.w	r0, [r1, r3, lsl #2]
d03e7046:	b2da      	uxtb	r2, r3
d03e7048:	3301      	adds	r3, #1
d03e704a:	2800      	cmp	r0, #0
d03e704c:	d1f6      	bne.n	d03e703c <main+0x2654>
d03e704e:	1c53      	adds	r3, r2, #1
d03e7050:	b2da      	uxtb	r2, r3
d03e7052:	f000 bc91 	b.w	d03e7978 <main+0x2f90>
d03e7056:	3a06      	subs	r2, #6
d03e7058:	b2d4      	uxtb	r4, r2
d03e705a:	f7ff bbed 	b.w	d03e6838 <main+0x1e50>
d03e705e:	2c01      	cmp	r4, #1
d03e7060:	f000 81a6 	beq.w	d03e73b0 <main+0x29c8>
d03e7064:	4b6a      	ldr	r3, [pc, #424]	; (d03e7210 <main+0x2828>)
d03e7066:	f04f 0200 	mov.w	r2, #0
d03e706a:	701a      	strb	r2, [r3, #0]
d03e706c:	9b07      	ldr	r3, [sp, #28]
d03e706e:	2b03      	cmp	r3, #3
d03e7070:	f47e ace9 	bne.w	d03e5a46 <main+0x105e>
d03e7074:	f7ff bac5 	b.w	d03e6602 <main+0x1c1a>
d03e7078:	f1a7 0386 	sub.w	r3, r7, #134	; 0x86
d03e707c:	b29b      	uxth	r3, r3
d03e707e:	2b15      	cmp	r3, #21
d03e7080:	bf8c      	ite	hi
d03e7082:	2300      	movhi	r3, #0
d03e7084:	2301      	movls	r3, #1
d03e7086:	f5b6 7fa9 	cmp.w	r6, #338	; 0x152
d03e708a:	f6ff abb0 	blt.w	d03e67ee <main+0x1e06>
d03e708e:	f5b6 7fba 	cmp.w	r6, #372	; 0x174
d03e7092:	da02      	bge.n	d03e709a <main+0x26b2>
d03e7094:	2b00      	cmp	r3, #0
d03e7096:	f040 8314 	bne.w	d03e76c2 <main+0x2cda>
d03e709a:	f5b6 7fbf 	cmp.w	r6, #382	; 0x17e
d03e709e:	f6ff aba6 	blt.w	d03e67ee <main+0x1e06>
d03e70a2:	f5b6 7fd0 	cmp.w	r6, #416	; 0x1a0
d03e70a6:	da02      	bge.n	d03e70ae <main+0x26c6>
d03e70a8:	2b00      	cmp	r3, #0
d03e70aa:	f040 816c 	bne.w	d03e7386 <main+0x299e>
d03e70ae:	f5a6 72d2 	sub.w	r2, r6, #420	; 0x1a4
d03e70b2:	b292      	uxth	r2, r2
d03e70b4:	2a21      	cmp	r2, #33	; 0x21
d03e70b6:	f63f ab9a 	bhi.w	d03e67ee <main+0x1e06>
d03e70ba:	2b00      	cmp	r3, #0
d03e70bc:	f43f ab97 	beq.w	d03e67ee <main+0x1e06>
d03e70c0:	4a54      	ldr	r2, [pc, #336]	; (d03e7214 <main+0x282c>)
d03e70c2:	8813      	ldrh	r3, [r2, #0]
d03e70c4:	330a      	adds	r3, #10
d03e70c6:	b21b      	sxth	r3, r3
d03e70c8:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
d03e70cc:	bfa8      	it	ge
d03e70ce:	f44f 7396 	movge.w	r3, #300	; 0x12c
d03e70d2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d03e70d6:	8013      	strh	r3, [r2, #0]
d03e70d8:	f7fa ff38 	bl	d03e1f4c <midi_update_all_active_volume>
d03e70dc:	f7fe b8e4 	b.w	d03e52a8 <main+0x8c0>
d03e70e0:	2402      	movs	r4, #2
d03e70e2:	e6d9      	b.n	d03e6e98 <main+0x24b0>
d03e70e4:	2403      	movs	r4, #3
d03e70e6:	e6d7      	b.n	d03e6e98 <main+0x24b0>
d03e70e8:	2404      	movs	r4, #4
d03e70ea:	e6d5      	b.n	d03e6e98 <main+0x24b0>
d03e70ec:	f1a7 03da 	sub.w	r3, r7, #218	; 0xda
d03e70f0:	b29b      	uxth	r3, r3
d03e70f2:	2b15      	cmp	r3, #21
d03e70f4:	f63f af1e 	bhi.w	d03e6f34 <main+0x254c>
d03e70f8:	f5b6 7fe2 	cmp.w	r6, #452	; 0x1c4
d03e70fc:	f6bf af1a 	bge.w	d03e6f34 <main+0x254c>
d03e7100:	4b3f      	ldr	r3, [pc, #252]	; (d03e7200 <main+0x2818>)
d03e7102:	4941      	ldr	r1, [pc, #260]	; (d03e7208 <main+0x2820>)
d03e7104:	781b      	ldrb	r3, [r3, #0]
d03e7106:	56ca      	ldrsb	r2, [r1, r3]
d03e7108:	5ccb      	ldrb	r3, [r1, r3]
d03e710a:	2a00      	cmp	r2, #0
d03e710c:	db15      	blt.n	d03e713a <main+0x2752>
d03e710e:	4a3f      	ldr	r2, [pc, #252]	; (d03e720c <main+0x2824>)
d03e7110:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
d03e7114:	b188      	cbz	r0, d03e713a <main+0x2752>
d03e7116:	4b40      	ldr	r3, [pc, #256]	; (d03e7218 <main+0x2830>)
d03e7118:	7819      	ldrb	r1, [r3, #0]
d03e711a:	2300      	movs	r3, #0
d03e711c:	e002      	b.n	d03e7124 <main+0x273c>
d03e711e:	2b60      	cmp	r3, #96	; 0x60
d03e7120:	f000 8334 	beq.w	d03e778c <main+0x2da4>
d03e7124:	f810 4023 	ldrb.w	r4, [r0, r3, lsl #2]
d03e7128:	b2da      	uxtb	r2, r3
d03e712a:	3301      	adds	r3, #1
d03e712c:	2c00      	cmp	r4, #0
d03e712e:	d1f6      	bne.n	d03e711e <main+0x2736>
d03e7130:	1c53      	adds	r3, r2, #1
d03e7132:	b2db      	uxtb	r3, r3
d03e7134:	2b06      	cmp	r3, #6
d03e7136:	f200 8329 	bhi.w	d03e778c <main+0x2da4>
d03e713a:	b221      	sxth	r1, r4
d03e713c:	4b36      	ldr	r3, [pc, #216]	; (d03e7218 <main+0x2830>)
d03e713e:	7019      	strb	r1, [r3, #0]
d03e7140:	f7ff bb55 	b.w	d03e67ee <main+0x1e06>
d03e7144:	4608      	mov	r0, r1
d03e7146:	f7ff bad5 	b.w	d03e66f4 <main+0x1d0c>
d03e714a:	4608      	mov	r0, r1
d03e714c:	f7ff bb00 	b.w	d03e6750 <main+0x1d68>
d03e7150:	4b31      	ldr	r3, [pc, #196]	; (d03e7218 <main+0x2830>)
d03e7152:	482d      	ldr	r0, [pc, #180]	; (d03e7208 <main+0x2820>)
d03e7154:	7819      	ldrb	r1, [r3, #0]
d03e7156:	4b2a      	ldr	r3, [pc, #168]	; (d03e7200 <main+0x2818>)
d03e7158:	3901      	subs	r1, #1
d03e715a:	781b      	ldrb	r3, [r3, #0]
d03e715c:	b209      	sxth	r1, r1
d03e715e:	56c2      	ldrsb	r2, [r0, r3]
d03e7160:	5cc3      	ldrb	r3, [r0, r3]
d03e7162:	2a00      	cmp	r2, #0
d03e7164:	db12      	blt.n	d03e718c <main+0x27a4>
d03e7166:	4a29      	ldr	r2, [pc, #164]	; (d03e720c <main+0x2824>)
d03e7168:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
d03e716c:	b170      	cbz	r0, d03e718c <main+0x27a4>
d03e716e:	4623      	mov	r3, r4
d03e7170:	e002      	b.n	d03e7178 <main+0x2790>
d03e7172:	2b60      	cmp	r3, #96	; 0x60
d03e7174:	f000 8088 	beq.w	d03e7288 <main+0x28a0>
d03e7178:	f810 4023 	ldrb.w	r4, [r0, r3, lsl #2]
d03e717c:	b2da      	uxtb	r2, r3
d03e717e:	3301      	adds	r3, #1
d03e7180:	2c00      	cmp	r4, #0
d03e7182:	d1f6      	bne.n	d03e7172 <main+0x278a>
d03e7184:	1c53      	adds	r3, r2, #1
d03e7186:	b2db      	uxtb	r3, r3
d03e7188:	2b06      	cmp	r3, #6
d03e718a:	d87d      	bhi.n	d03e7288 <main+0x28a0>
d03e718c:	1c48      	adds	r0, r1, #1
d03e718e:	d05e      	beq.n	d03e724e <main+0x2866>
d03e7190:	42a1      	cmp	r1, r4
d03e7192:	dd00      	ble.n	d03e7196 <main+0x27ae>
d03e7194:	b221      	sxth	r1, r4
d03e7196:	4b20      	ldr	r3, [pc, #128]	; (d03e7218 <main+0x2830>)
d03e7198:	7019      	strb	r1, [r3, #0]
d03e719a:	f7fe bd92 	b.w	d03e5cc2 <main+0x12da>
d03e719e:	491f      	ldr	r1, [pc, #124]	; (d03e721c <main+0x2834>)
d03e71a0:	f04f 0500 	mov.w	r5, #0
d03e71a4:	481e      	ldr	r0, [pc, #120]	; (d03e7220 <main+0x2838>)
d03e71a6:	2201      	movs	r2, #1
d03e71a8:	780b      	ldrb	r3, [r1, #0]
d03e71aa:	7005      	strb	r5, [r0, #0]
d03e71ac:	3b01      	subs	r3, #1
d03e71ae:	481d      	ldr	r0, [pc, #116]	; (d03e7224 <main+0x283c>)
d03e71b0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d03e71b4:	7002      	strb	r2, [r0, #0]
d03e71b6:	700b      	strb	r3, [r1, #0]
d03e71b8:	f7fb fd84 	bl	d03e2cc4 <ui_vm_editor_clamp_selection>
d03e71bc:	f7fe bdc5 	b.w	d03e5d4a <main+0x1362>
d03e71c0:	4b0f      	ldr	r3, [pc, #60]	; (d03e7200 <main+0x2818>)
d03e71c2:	4811      	ldr	r0, [pc, #68]	; (d03e7208 <main+0x2820>)
d03e71c4:	781b      	ldrb	r3, [r3, #0]
d03e71c6:	56c1      	ldrsb	r1, [r0, r3]
d03e71c8:	5cc3      	ldrb	r3, [r0, r3]
d03e71ca:	2900      	cmp	r1, #0
d03e71cc:	db14      	blt.n	d03e71f8 <main+0x2810>
d03e71ce:	490f      	ldr	r1, [pc, #60]	; (d03e720c <main+0x2824>)
d03e71d0:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
d03e71d4:	b180      	cbz	r0, d03e71f8 <main+0x2810>
d03e71d6:	4b10      	ldr	r3, [pc, #64]	; (d03e7218 <main+0x2830>)
d03e71d8:	7819      	ldrb	r1, [r3, #0]
d03e71da:	e002      	b.n	d03e71e2 <main+0x27fa>
d03e71dc:	2c60      	cmp	r4, #96	; 0x60
d03e71de:	f000 80b9 	beq.w	d03e7354 <main+0x296c>
d03e71e2:	f810 2024 	ldrb.w	r2, [r0, r4, lsl #2]
d03e71e6:	b2e3      	uxtb	r3, r4
d03e71e8:	3401      	adds	r4, #1
d03e71ea:	2a00      	cmp	r2, #0
d03e71ec:	d1f6      	bne.n	d03e71dc <main+0x27f4>
d03e71ee:	1c5c      	adds	r4, r3, #1
d03e71f0:	b2e4      	uxtb	r4, r4
d03e71f2:	2c06      	cmp	r4, #6
d03e71f4:	f200 80ae 	bhi.w	d03e7354 <main+0x296c>
d03e71f8:	b211      	sxth	r1, r2
d03e71fa:	e7cc      	b.n	d03e7196 <main+0x27ae>
d03e71fc:	d03ea7f5 	.word	0xd03ea7f5
d03e7200:	d03ea645 	.word	0xd03ea645
d03e7204:	d03ea7fc 	.word	0xd03ea7fc
d03e7208:	d03ea3a4 	.word	0xd03ea3a4
d03e720c:	d03e9cbc 	.word	0xd03e9cbc
d03e7210:	d03ea631 	.word	0xd03ea631
d03e7214:	d03ea5d2 	.word	0xd03ea5d2
d03e7218:	d03ea805 	.word	0xd03ea805
d03e721c:	d03ea7fd 	.word	0xd03ea7fd
d03e7220:	d03ea7ff 	.word	0xd03ea7ff
d03e7224:	d03ea7fe 	.word	0xd03ea7fe
d03e7228:	3b01      	subs	r3, #1
d03e722a:	b25b      	sxtb	r3, r3
d03e722c:	2b00      	cmp	r3, #0
d03e722e:	f2c0 80a8 	blt.w	d03e7382 <main+0x299a>
d03e7232:	2b03      	cmp	r3, #3
d03e7234:	bfa8      	it	ge
d03e7236:	2300      	movge	r3, #0
d03e7238:	49b5      	ldr	r1, [pc, #724]	; (d03e7510 <main+0x2b28>)
d03e723a:	f04f 0000 	mov.w	r0, #0
d03e723e:	2201      	movs	r2, #1
d03e7240:	7008      	strb	r0, [r1, #0]
d03e7242:	49b4      	ldr	r1, [pc, #720]	; (d03e7514 <main+0x2b2c>)
d03e7244:	700b      	strb	r3, [r1, #0]
d03e7246:	4bb4      	ldr	r3, [pc, #720]	; (d03e7518 <main+0x2b30>)
d03e7248:	701a      	strb	r2, [r3, #0]
d03e724a:	f7fe bd8f 	b.w	d03e5d6c <main+0x1384>
d03e724e:	2100      	movs	r1, #0
d03e7250:	e7a1      	b.n	d03e7196 <main+0x27ae>
d03e7252:	2301      	movs	r3, #1
d03e7254:	f7fe bc1a 	b.w	d03e5a8c <main+0x10a4>
d03e7258:	4db0      	ldr	r5, [pc, #704]	; (d03e751c <main+0x2b34>)
d03e725a:	235a      	movs	r3, #90	; 0x5a
d03e725c:	4ab0      	ldr	r2, [pc, #704]	; (d03e7520 <main+0x2b38>)
d03e725e:	4cb1      	ldr	r4, [pc, #708]	; (d03e7524 <main+0x2b3c>)
d03e7260:	7013      	strb	r3, [r2, #0]
d03e7262:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d03e7264:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d03e7266:	e895 0003 	ldmia.w	r5, {r0, r1}
d03e726a:	f844 0b04 	str.w	r0, [r4], #4
d03e726e:	8021      	strh	r1, [r4, #0]
d03e7270:	f7fe b81a 	b.w	d03e52a8 <main+0x8c0>
d03e7274:	4dac      	ldr	r5, [pc, #688]	; (d03e7528 <main+0x2b40>)
d03e7276:	e7f0      	b.n	d03e725a <main+0x2872>
d03e7278:	2b02      	cmp	r3, #2
d03e727a:	bf0c      	ite	eq
d03e727c:	2010      	moveq	r0, #16
d03e727e:	2001      	movne	r0, #1
d03e7280:	f7fb fd84 	bl	d03e2d8c <ui_vm_editor_adjust>
d03e7284:	f7fe bfac 	b.w	d03e61e0 <main+0x17f8>
d03e7288:	3b06      	subs	r3, #6
d03e728a:	b2dc      	uxtb	r4, r3
d03e728c:	e77e      	b.n	d03e718c <main+0x27a4>
d03e728e:	f1be 0f96 	cmp.w	lr, #150	; 0x96
d03e7292:	f73f ad07 	bgt.w	d03e6ca4 <main+0x22bc>
d03e7296:	2300      	movs	r3, #0
d03e7298:	4aa4      	ldr	r2, [pc, #656]	; (d03e752c <main+0x2b44>)
d03e729a:	f5b6 7fab 	cmp.w	r6, #342	; 0x156
d03e729e:	7010      	strb	r0, [r2, #0]
d03e72a0:	f6ff aaa5 	blt.w	d03e67ee <main+0x1e06>
d03e72a4:	f103 0278 	add.w	r2, r3, #120	; 0x78
d03e72a8:	4596      	cmp	lr, r2
d03e72aa:	4613      	mov	r3, r2
d03e72ac:	bfb4      	ite	lt
d03e72ae:	2200      	movlt	r2, #0
d03e72b0:	2201      	movge	r2, #1
d03e72b2:	f5b6 7fc0 	cmp.w	r6, #384	; 0x180
d03e72b6:	da02      	bge.n	d03e72be <main+0x28d6>
d03e72b8:	2a00      	cmp	r2, #0
d03e72ba:	f040 825d 	bne.w	d03e7778 <main+0x2d90>
d03e72be:	f5a6 71c6 	sub.w	r1, r6, #396	; 0x18c
d03e72c2:	b289      	uxth	r1, r1
d03e72c4:	2929      	cmp	r1, #41	; 0x29
d03e72c6:	f63f aa92 	bhi.w	d03e67ee <main+0x1e06>
d03e72ca:	2a00      	cmp	r2, #0
d03e72cc:	f43f aa8f 	beq.w	d03e67ee <main+0x1e06>
d03e72d0:	331e      	adds	r3, #30
d03e72d2:	459e      	cmp	lr, r3
d03e72d4:	f6bf aa8b 	bge.w	d03e67ee <main+0x1e06>
d03e72d8:	2101      	movs	r1, #1
d03e72da:	f7fa f98b 	bl	d03e15f4 <ui_select_program_delta>
d03e72de:	f7fd bfe3 	b.w	d03e52a8 <main+0x8c0>
d03e72e2:	f1be 0fba 	cmp.w	lr, #186	; 0xba
d03e72e6:	f73f ace2 	bgt.w	d03e6cae <main+0x22c6>
d03e72ea:	3001      	adds	r0, #1
d03e72ec:	2324      	movs	r3, #36	; 0x24
d03e72ee:	b2c0      	uxtb	r0, r0
d03e72f0:	e7d2      	b.n	d03e7298 <main+0x28b0>
d03e72f2:	f1be 0fde 	cmp.w	lr, #222	; 0xde
d03e72f6:	f73f acdf 	bgt.w	d03e6cb8 <main+0x22d0>
d03e72fa:	3002      	adds	r0, #2
d03e72fc:	2348      	movs	r3, #72	; 0x48
d03e72fe:	b2c0      	uxtb	r0, r0
d03e7300:	e7ca      	b.n	d03e7298 <main+0x28b0>
d03e7302:	f5a7 738e 	sub.w	r3, r7, #284	; 0x11c
d03e7306:	b29b      	uxth	r3, r3
d03e7308:	2b17      	cmp	r3, #23
d03e730a:	f200 835d 	bhi.w	d03e79c8 <main+0x2fe0>
d03e730e:	4d88      	ldr	r5, [pc, #544]	; (d03e7530 <main+0x2b48>)
d03e7310:	2400      	movs	r4, #0
d03e7312:	b2e0      	uxtb	r0, r4
d03e7314:	3401      	adds	r4, #1
d03e7316:	f7f9 faab 	bl	d03e0870 <sid_voice_note_kill>
d03e731a:	f04f 0300 	mov.w	r3, #0
d03e731e:	2c06      	cmp	r4, #6
d03e7320:	f105 0508 	add.w	r5, r5, #8
d03e7324:	f805 3c08 	strb.w	r3, [r5, #-8]
d03e7328:	f04f 0300 	mov.w	r3, #0
d03e732c:	f825 3c02 	strh.w	r3, [r5, #-2]
d03e7330:	d1ef      	bne.n	d03e7312 <main+0x292a>
d03e7332:	235a      	movs	r3, #90	; 0x5a
d03e7334:	4a7a      	ldr	r2, [pc, #488]	; (d03e7520 <main+0x2b38>)
d03e7336:	4f7f      	ldr	r7, [pc, #508]	; (d03e7534 <main+0x2b4c>)
d03e7338:	4e7f      	ldr	r6, [pc, #508]	; (d03e7538 <main+0x2b50>)
d03e733a:	683c      	ldr	r4, [r7, #0]
d03e733c:	4d79      	ldr	r5, [pc, #484]	; (d03e7524 <main+0x2b3c>)
d03e733e:	7013      	strb	r3, [r2, #0]
d03e7340:	3401      	adds	r4, #1
d03e7342:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
d03e7344:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d03e7346:	e896 0003 	ldmia.w	r6, {r0, r1}
d03e734a:	603c      	str	r4, [r7, #0]
d03e734c:	e885 0003 	stmia.w	r5, {r0, r1}
d03e7350:	f7fd bfaa 	b.w	d03e52a8 <main+0x8c0>
d03e7354:	3c06      	subs	r4, #6
d03e7356:	3101      	adds	r1, #1
d03e7358:	b2e2      	uxtb	r2, r4
d03e735a:	4291      	cmp	r1, r2
d03e735c:	f77f af1b 	ble.w	d03e7196 <main+0x27ae>
d03e7360:	e74a      	b.n	d03e71f8 <main+0x2810>
d03e7362:	4b72      	ldr	r3, [pc, #456]	; (d03e752c <main+0x2b44>)
d03e7364:	7818      	ldrb	r0, [r3, #0]
d03e7366:	280f      	cmp	r0, #15
d03e7368:	f63f aa41 	bhi.w	d03e67ee <main+0x1e06>
d03e736c:	4a73      	ldr	r2, [pc, #460]	; (d03e753c <main+0x2b54>)
d03e736e:	5c13      	ldrb	r3, [r2, r0]
d03e7370:	3308      	adds	r3, #8
d03e7372:	2b7f      	cmp	r3, #127	; 0x7f
d03e7374:	bfa8      	it	ge
d03e7376:	237f      	movge	r3, #127	; 0x7f
d03e7378:	5413      	strb	r3, [r2, r0]
d03e737a:	f7fa f849 	bl	d03e1410 <midi_update_active_channel_volume>
d03e737e:	f7fd bf93 	b.w	d03e52a8 <main+0x8c0>
d03e7382:	2302      	movs	r3, #2
d03e7384:	e758      	b.n	d03e7238 <main+0x2850>
d03e7386:	4a6e      	ldr	r2, [pc, #440]	; (d03e7540 <main+0x2b58>)
d03e7388:	8813      	ldrh	r3, [r2, #0]
d03e738a:	3b0a      	subs	r3, #10
d03e738c:	e69b      	b.n	d03e70c6 <main+0x26de>
d03e738e:	f5b6 7fa6 	cmp.w	r6, #332	; 0x14c
d03e7392:	f6bf aa8e 	bge.w	d03e68b2 <main+0x1eca>
d03e7396:	f7fe beed 	b.w	d03e6174 <main+0x178c>
d03e739a:	4b6a      	ldr	r3, [pc, #424]	; (d03e7544 <main+0x2b5c>)
d03e739c:	701d      	strb	r5, [r3, #0]
d03e739e:	9b07      	ldr	r3, [sp, #28]
d03e73a0:	2b03      	cmp	r3, #3
d03e73a2:	f43f a92e 	beq.w	d03e6602 <main+0x1c1a>
d03e73a6:	9b03      	ldr	r3, [sp, #12]
d03e73a8:	f003 0401 	and.w	r4, r3, #1
d03e73ac:	f7fe bb53 	b.w	d03e5a56 <main+0x106e>
d03e73b0:	4a65      	ldr	r2, [pc, #404]	; (d03e7548 <main+0x2b60>)
d03e73b2:	7813      	ldrb	r3, [r2, #0]
d03e73b4:	4a65      	ldr	r2, [pc, #404]	; (d03e754c <main+0x2b64>)
d03e73b6:	9305      	str	r3, [sp, #20]
d03e73b8:	09db      	lsrs	r3, r3, #7
d03e73ba:	6817      	ldr	r7, [r2, #0]
d03e73bc:	f040 81fc 	bne.w	d03e77b8 <main+0x2dd0>
d03e73c0:	2300      	movs	r3, #0
d03e73c2:	b91f      	cbnz	r7, d03e73cc <main+0x29e4>
d03e73c4:	e1f8      	b.n	d03e77b8 <main+0x2dd0>
d03e73c6:	2b60      	cmp	r3, #96	; 0x60
d03e73c8:	f000 8212 	beq.w	d03e77f0 <main+0x2e08>
d03e73cc:	1c5a      	adds	r2, r3, #1
d03e73ce:	f817 1023 	ldrb.w	r1, [r7, r3, lsl #2]
d03e73d2:	4613      	mov	r3, r2
d03e73d4:	b2d2      	uxtb	r2, r2
d03e73d6:	2900      	cmp	r1, #0
d03e73d8:	d1f5      	bne.n	d03e73c6 <main+0x29de>
d03e73da:	4615      	mov	r5, r2
d03e73dc:	2600      	movs	r6, #0
d03e73de:	4c5c      	ldr	r4, [pc, #368]	; (d03e7550 <main+0x2b68>)
d03e73e0:	f44f 72c0 	mov.w	r2, #384	; 0x180
d03e73e4:	485a      	ldr	r0, [pc, #360]	; (d03e7550 <main+0x2b68>)
d03e73e6:	4631      	mov	r1, r6
d03e73e8:	f000 fb54 	bl	d03e7a94 <memset>
d03e73ec:	eb07 0186 	add.w	r1, r7, r6, lsl #2
d03e73f0:	2204      	movs	r2, #4
d03e73f2:	eb04 0086 	add.w	r0, r4, r6, lsl #2
d03e73f6:	3601      	adds	r6, #1
d03e73f8:	f000 fb3e 	bl	d03e7a78 <memcpy>
d03e73fc:	b2f3      	uxtb	r3, r6
d03e73fe:	429d      	cmp	r5, r3
d03e7400:	d8f4      	bhi.n	d03e73ec <main+0x2a04>
d03e7402:	4a54      	ldr	r2, [pc, #336]	; (d03e7554 <main+0x2b6c>)
d03e7404:	f04f 0000 	mov.w	r0, #0
d03e7408:	9905      	ldr	r1, [sp, #20]
d03e740a:	2301      	movs	r3, #1
d03e740c:	f884 017c 	strb.w	r0, [r4, #380]	; 0x17c
d03e7410:	2500      	movs	r5, #0
d03e7412:	f842 4021 	str.w	r4, [r2, r1, lsl #2]
d03e7416:	4a50      	ldr	r2, [pc, #320]	; (d03e7558 <main+0x2b70>)
d03e7418:	4c45      	ldr	r4, [pc, #276]	; (d03e7530 <main+0x2b48>)
d03e741a:	7010      	strb	r0, [r2, #0]
d03e741c:	4a3d      	ldr	r2, [pc, #244]	; (d03e7514 <main+0x2b2c>)
d03e741e:	7010      	strb	r0, [r2, #0]
d03e7420:	4a4e      	ldr	r2, [pc, #312]	; (d03e755c <main+0x2b74>)
d03e7422:	7010      	strb	r0, [r2, #0]
d03e7424:	4a4e      	ldr	r2, [pc, #312]	; (d03e7560 <main+0x2b78>)
d03e7426:	7013      	strb	r3, [r2, #0]
d03e7428:	b2e8      	uxtb	r0, r5
d03e742a:	3501      	adds	r5, #1
d03e742c:	f7f9 fa20 	bl	d03e0870 <sid_voice_note_kill>
d03e7430:	f04f 0300 	mov.w	r3, #0
d03e7434:	2d06      	cmp	r5, #6
d03e7436:	f104 0408 	add.w	r4, r4, #8
d03e743a:	f804 3c08 	strb.w	r3, [r4, #-8]
d03e743e:	f04f 0300 	mov.w	r3, #0
d03e7442:	f824 3c02 	strh.w	r3, [r4, #-2]
d03e7446:	d1ef      	bne.n	d03e7428 <main+0x2a40>
d03e7448:	235a      	movs	r3, #90	; 0x5a
d03e744a:	4a35      	ldr	r2, [pc, #212]	; (d03e7520 <main+0x2b38>)
d03e744c:	4f39      	ldr	r7, [pc, #228]	; (d03e7534 <main+0x2b4c>)
d03e744e:	7013      	strb	r3, [r2, #0]
d03e7450:	2301      	movs	r3, #1
d03e7452:	683e      	ldr	r6, [r7, #0]
d03e7454:	4a43      	ldr	r2, [pc, #268]	; (d03e7564 <main+0x2b7c>)
d03e7456:	4d44      	ldr	r5, [pc, #272]	; (d03e7568 <main+0x2b80>)
d03e7458:	441e      	add	r6, r3
d03e745a:	4c32      	ldr	r4, [pc, #200]	; (d03e7524 <main+0x2b3c>)
d03e745c:	7013      	strb	r3, [r2, #0]
d03e745e:	603e      	str	r6, [r7, #0]
d03e7460:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d03e7462:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d03e7464:	e895 0003 	ldmia.w	r5, {r0, r1}
d03e7468:	e884 0003 	stmia.w	r4, {r0, r1}
d03e746c:	e5fa      	b.n	d03e7064 <main+0x267c>
d03e746e:	2302      	movs	r3, #2
d03e7470:	e529      	b.n	d03e6ec6 <main+0x24de>
d03e7472:	4a3e      	ldr	r2, [pc, #248]	; (d03e756c <main+0x2b84>)
d03e7474:	2400      	movs	r4, #0
d03e7476:	4d2e      	ldr	r5, [pc, #184]	; (d03e7530 <main+0x2b48>)
d03e7478:	7813      	ldrb	r3, [r2, #0]
d03e747a:	fab3 f383 	clz	r3, r3
d03e747e:	095b      	lsrs	r3, r3, #5
d03e7480:	7013      	strb	r3, [r2, #0]
d03e7482:	e004      	b.n	d03e748e <main+0x2aa6>
d03e7484:	2c06      	cmp	r4, #6
d03e7486:	f105 0508 	add.w	r5, r5, #8
d03e748a:	f43d af0d 	beq.w	d03e52a8 <main+0x8c0>
d03e748e:	782b      	ldrb	r3, [r5, #0]
d03e7490:	b2e0      	uxtb	r0, r4
d03e7492:	3401      	adds	r4, #1
d03e7494:	2b00      	cmp	r3, #0
d03e7496:	d0f5      	beq.n	d03e7484 <main+0x2a9c>
d03e7498:	786b      	ldrb	r3, [r5, #1]
d03e749a:	2b09      	cmp	r3, #9
d03e749c:	d1f2      	bne.n	d03e7484 <main+0x2a9c>
d03e749e:	f7f9 f979 	bl	d03e0794 <sid_voice_note_off>
d03e74a2:	f8d8 3000 	ldr.w	r3, [r8]
d03e74a6:	f04f 0200 	mov.w	r2, #0
d03e74aa:	3301      	adds	r3, #1
d03e74ac:	702a      	strb	r2, [r5, #0]
d03e74ae:	f04f 0200 	mov.w	r2, #0
d03e74b2:	f8c8 3000 	str.w	r3, [r8]
d03e74b6:	80ea      	strh	r2, [r5, #6]
d03e74b8:	e7e4      	b.n	d03e7484 <main+0x2a9c>
d03e74ba:	4b1c      	ldr	r3, [pc, #112]	; (d03e752c <main+0x2b44>)
d03e74bc:	f893 c000 	ldrb.w	ip, [r3]
d03e74c0:	f1bc 0f09 	cmp.w	ip, #9
d03e74c4:	f000 81f8 	beq.w	d03e78b8 <main+0x2ed0>
d03e74c8:	f1bc 0f0f 	cmp.w	ip, #15
d03e74cc:	d807      	bhi.n	d03e74de <main+0x2af6>
d03e74ce:	4a28      	ldr	r2, [pc, #160]	; (d03e7570 <main+0x2b88>)
d03e74d0:	f812 300c 	ldrb.w	r3, [r2, ip]
d03e74d4:	3b01      	subs	r3, #1
d03e74d6:	f383 0307 	usat	r3, #7, r3
d03e74da:	f802 300c 	strb.w	r3, [r2, ip]
d03e74de:	4925      	ldr	r1, [pc, #148]	; (d03e7574 <main+0x2b8c>)
d03e74e0:	2301      	movs	r3, #1
d03e74e2:	680a      	ldr	r2, [r1, #0]
d03e74e4:	fa03 f30c 	lsl.w	r3, r3, ip
d03e74e8:	4313      	orrs	r3, r2
d03e74ea:	600b      	str	r3, [r1, #0]
d03e74ec:	4b20      	ldr	r3, [pc, #128]	; (d03e7570 <main+0x2b88>)
d03e74ee:	f04f 0000 	mov.w	r0, #0
d03e74f2:	491b      	ldr	r1, [pc, #108]	; (d03e7560 <main+0x2b78>)
d03e74f4:	f913 200c 	ldrsb.w	r2, [r3, ip]
d03e74f8:	7008      	strb	r0, [r1, #0]
d03e74fa:	2a00      	cmp	r2, #0
d03e74fc:	f813 300c 	ldrb.w	r3, [r3, ip]
d03e7500:	db48      	blt.n	d03e7594 <main+0x2bac>
d03e7502:	4a14      	ldr	r2, [pc, #80]	; (d03e7554 <main+0x2b6c>)
d03e7504:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
d03e7508:	2900      	cmp	r1, #0
d03e750a:	d043      	beq.n	d03e7594 <main+0x2bac>
d03e750c:	2300      	movs	r3, #0
d03e750e:	e036      	b.n	d03e757e <main+0x2b96>
d03e7510:	d03ea7ff 	.word	0xd03ea7ff
d03e7514:	d03ea7f4 	.word	0xd03ea7f4
d03e7518:	d03ea7fe 	.word	0xd03ea7fe
d03e751c:	d03e9568 	.word	0xd03e9568
d03e7520:	d03ea670 	.word	0xd03ea670
d03e7524:	d03ea648 	.word	0xd03ea648
d03e7528:	d03e9580 	.word	0xd03e9580
d03e752c:	d03ea645 	.word	0xd03ea645
d03e7530:	d03ea5f0 	.word	0xd03ea5f0
d03e7534:	d03ea5e4 	.word	0xd03ea5e4
d03e7538:	d03e9598 	.word	0xd03e9598
d03e753c:	d03ea3b4 	.word	0xd03ea3b4
d03e7540:	d03ea5d2 	.word	0xd03ea5d2
d03e7544:	d03ea630 	.word	0xd03ea630
d03e7548:	d03ea7fc 	.word	0xd03ea7fc
d03e754c:	d03ea7f8 	.word	0xd03ea7f8
d03e7550:	d03ea674 	.word	0xd03ea674
d03e7554:	d03e9cbc 	.word	0xd03e9cbc
d03e7558:	d03ea7fd 	.word	0xd03ea7fd
d03e755c:	d03ea805 	.word	0xd03ea805
d03e7560:	d03ea7f5 	.word	0xd03ea7f5
d03e7564:	d03ea628 	.word	0xd03ea628
d03e7568:	d03e953c 	.word	0xd03e953c
d03e756c:	d03ea3c8 	.word	0xd03ea3c8
d03e7570:	d03ea3a4 	.word	0xd03ea3a4
d03e7574:	d03ea624 	.word	0xd03ea624
d03e7578:	2b60      	cmp	r3, #96	; 0x60
d03e757a:	f000 80f8 	beq.w	d03e776e <main+0x2d86>
d03e757e:	f811 4023 	ldrb.w	r4, [r1, r3, lsl #2]
d03e7582:	b2da      	uxtb	r2, r3
d03e7584:	3301      	adds	r3, #1
d03e7586:	2c00      	cmp	r4, #0
d03e7588:	d1f6      	bne.n	d03e7578 <main+0x2b90>
d03e758a:	1c53      	adds	r3, r2, #1
d03e758c:	b2db      	uxtb	r3, r3
d03e758e:	2b06      	cmp	r3, #6
d03e7590:	f200 80ed 	bhi.w	d03e776e <main+0x2d86>
d03e7594:	4ab7      	ldr	r2, [pc, #732]	; (d03e7874 <main+0x2e8c>)
d03e7596:	7813      	ldrb	r3, [r2, #0]
d03e7598:	42a3      	cmp	r3, r4
d03e759a:	f67d ae85 	bls.w	d03e52a8 <main+0x8c0>
d03e759e:	7014      	strb	r4, [r2, #0]
d03e75a0:	f7fd be82 	b.w	d03e52a8 <main+0x8c0>
d03e75a4:	2eb7      	cmp	r6, #183	; 0xb7
d03e75a6:	f73f acec 	bgt.w	d03e6f82 <main+0x259a>
d03e75aa:	f7ff b920 	b.w	d03e67ee <main+0x1e06>
d03e75ae:	4ab2      	ldr	r2, [pc, #712]	; (d03e7878 <main+0x2e90>)
d03e75b0:	2700      	movs	r7, #0
d03e75b2:	4cb2      	ldr	r4, [pc, #712]	; (d03e787c <main+0x2e94>)
d03e75b4:	8813      	ldrh	r3, [r2, #0]
d03e75b6:	3b0a      	subs	r3, #10
d03e75b8:	b21b      	sxth	r3, r3
d03e75ba:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
d03e75be:	bfa8      	it	ge
d03e75c0:	f44f 7396 	movge.w	r3, #300	; 0x12c
d03e75c4:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d03e75c8:	8013      	strh	r3, [r2, #0]
d03e75ca:	e004      	b.n	d03e75d6 <main+0x2bee>
d03e75cc:	3701      	adds	r7, #1
d03e75ce:	3408      	adds	r4, #8
d03e75d0:	2f06      	cmp	r7, #6
d03e75d2:	f43d ae69 	beq.w	d03e52a8 <main+0x8c0>
d03e75d6:	7823      	ldrb	r3, [r4, #0]
d03e75d8:	b2f8      	uxtb	r0, r7
d03e75da:	2b00      	cmp	r3, #0
d03e75dc:	d0f6      	beq.n	d03e75cc <main+0x2be4>
d03e75de:	7863      	ldrb	r3, [r4, #1]
d03e75e0:	2b09      	cmp	r3, #9
d03e75e2:	d1f3      	bne.n	d03e75cc <main+0x2be4>
d03e75e4:	4ba6      	ldr	r3, [pc, #664]	; (d03e7880 <main+0x2e98>)
d03e75e6:	f04f 0e7f 	mov.w	lr, #127	; 0x7f
d03e75ea:	f894 c003 	ldrb.w	ip, [r4, #3]
d03e75ee:	7a5a      	ldrb	r2, [r3, #9]
d03e75f0:	4ba4      	ldr	r3, [pc, #656]	; (d03e7884 <main+0x2e9c>)
d03e75f2:	49a5      	ldr	r1, [pc, #660]	; (d03e7888 <main+0x2ea0>)
d03e75f4:	7a5e      	ldrb	r6, [r3, #9]
d03e75f6:	fb1c f302 	smulbb	r3, ip, r2
d03e75fa:	880d      	ldrh	r5, [r1, #0]
d03e75fc:	333f      	adds	r3, #63	; 0x3f
d03e75fe:	499e      	ldr	r1, [pc, #632]	; (d03e7878 <main+0x2e90>)
d03e7600:	fbb3 f3fe 	udiv	r3, r3, lr
d03e7604:	fb06 f303 	mul.w	r3, r6, r3
d03e7608:	8809      	ldrh	r1, [r1, #0]
d03e760a:	333f      	adds	r3, #63	; 0x3f
d03e760c:	fbb3 f3fe 	udiv	r3, r3, lr
d03e7610:	fb05 f303 	mul.w	r3, r5, r3
d03e7614:	f04f 0e64 	mov.w	lr, #100	; 0x64
d03e7618:	3332      	adds	r3, #50	; 0x32
d03e761a:	fbb3 f3fe 	udiv	r3, r3, lr
d03e761e:	fb01 f303 	mul.w	r3, r1, r3
d03e7622:	3332      	adds	r3, #50	; 0x32
d03e7624:	2b63      	cmp	r3, #99	; 0x63
d03e7626:	f200 80bd 	bhi.w	d03e77a4 <main+0x2dbc>
d03e762a:	3a00      	subs	r2, #0
d03e762c:	bf18      	it	ne
d03e762e:	2201      	movne	r2, #1
d03e7630:	f1bc 0f00 	cmp.w	ip, #0
d03e7634:	f000 80b6 	beq.w	d03e77a4 <main+0x2dbc>
d03e7638:	2e00      	cmp	r6, #0
d03e763a:	bf14      	ite	ne
d03e763c:	4613      	movne	r3, r2
d03e763e:	2300      	moveq	r3, #0
d03e7640:	2d00      	cmp	r5, #0
d03e7642:	bf08      	it	eq
d03e7644:	2300      	moveq	r3, #0
d03e7646:	2900      	cmp	r1, #0
d03e7648:	bf08      	it	eq
d03e764a:	2300      	moveq	r3, #0
d03e764c:	b2d9      	uxtb	r1, r3
d03e764e:	f7f9 f9f1 	bl	d03e0a34 <sid_voice_set_velocity>
d03e7652:	e7bb      	b.n	d03e75cc <main+0x2be4>
d03e7654:	4b8d      	ldr	r3, [pc, #564]	; (d03e788c <main+0x2ea4>)
d03e7656:	f893 c000 	ldrb.w	ip, [r3]
d03e765a:	f1bc 0f09 	cmp.w	ip, #9
d03e765e:	f000 80c9 	beq.w	d03e77f4 <main+0x2e0c>
d03e7662:	f1bc 0f0f 	cmp.w	ip, #15
d03e7666:	d808      	bhi.n	d03e767a <main+0x2c92>
d03e7668:	4a89      	ldr	r2, [pc, #548]	; (d03e7890 <main+0x2ea8>)
d03e766a:	f812 300c 	ldrb.w	r3, [r2, ip]
d03e766e:	3301      	adds	r3, #1
d03e7670:	2b7f      	cmp	r3, #127	; 0x7f
d03e7672:	bfa8      	it	ge
d03e7674:	237f      	movge	r3, #127	; 0x7f
d03e7676:	f802 300c 	strb.w	r3, [r2, ip]
d03e767a:	4986      	ldr	r1, [pc, #536]	; (d03e7894 <main+0x2eac>)
d03e767c:	2301      	movs	r3, #1
d03e767e:	680a      	ldr	r2, [r1, #0]
d03e7680:	fa03 f30c 	lsl.w	r3, r3, ip
d03e7684:	4313      	orrs	r3, r2
d03e7686:	600b      	str	r3, [r1, #0]
d03e7688:	4b81      	ldr	r3, [pc, #516]	; (d03e7890 <main+0x2ea8>)
d03e768a:	f04f 0000 	mov.w	r0, #0
d03e768e:	4982      	ldr	r1, [pc, #520]	; (d03e7898 <main+0x2eb0>)
d03e7690:	f913 200c 	ldrsb.w	r2, [r3, ip]
d03e7694:	7008      	strb	r0, [r1, #0]
d03e7696:	2a00      	cmp	r2, #0
d03e7698:	f813 300c 	ldrb.w	r3, [r3, ip]
d03e769c:	f6ff af7a 	blt.w	d03e7594 <main+0x2bac>
d03e76a0:	4a7e      	ldr	r2, [pc, #504]	; (d03e789c <main+0x2eb4>)
d03e76a2:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
d03e76a6:	2900      	cmp	r1, #0
d03e76a8:	f43f af74 	beq.w	d03e7594 <main+0x2bac>
d03e76ac:	2300      	movs	r3, #0
d03e76ae:	e001      	b.n	d03e76b4 <main+0x2ccc>
d03e76b0:	2b60      	cmp	r3, #96	; 0x60
d03e76b2:	d05c      	beq.n	d03e776e <main+0x2d86>
d03e76b4:	f811 4023 	ldrb.w	r4, [r1, r3, lsl #2]
d03e76b8:	b2da      	uxtb	r2, r3
d03e76ba:	3301      	adds	r3, #1
d03e76bc:	2c00      	cmp	r4, #0
d03e76be:	d1f7      	bne.n	d03e76b0 <main+0x2cc8>
d03e76c0:	e763      	b.n	d03e758a <main+0x2ba2>
d03e76c2:	4b72      	ldr	r3, [pc, #456]	; (d03e788c <main+0x2ea4>)
d03e76c4:	781a      	ldrb	r2, [r3, #0]
d03e76c6:	2a09      	cmp	r2, #9
d03e76c8:	f000 8082 	beq.w	d03e77d0 <main+0x2de8>
d03e76cc:	2a0f      	cmp	r2, #15
d03e76ce:	f63f ab20 	bhi.w	d03e6d12 <main+0x232a>
d03e76d2:	496f      	ldr	r1, [pc, #444]	; (d03e7890 <main+0x2ea8>)
d03e76d4:	5c8b      	ldrb	r3, [r1, r2]
d03e76d6:	3301      	adds	r3, #1
d03e76d8:	2b7f      	cmp	r3, #127	; 0x7f
d03e76da:	bfa8      	it	ge
d03e76dc:	237f      	movge	r3, #127	; 0x7f
d03e76de:	548b      	strb	r3, [r1, r2]
d03e76e0:	f7ff bb17 	b.w	d03e6d12 <main+0x232a>
d03e76e4:	4b63      	ldr	r3, [pc, #396]	; (d03e7874 <main+0x2e8c>)
d03e76e6:	486a      	ldr	r0, [pc, #424]	; (d03e7890 <main+0x2ea8>)
d03e76e8:	7819      	ldrb	r1, [r3, #0]
d03e76ea:	4b68      	ldr	r3, [pc, #416]	; (d03e788c <main+0x2ea4>)
d03e76ec:	3901      	subs	r1, #1
d03e76ee:	781b      	ldrb	r3, [r3, #0]
d03e76f0:	b209      	sxth	r1, r1
d03e76f2:	56c2      	ldrsb	r2, [r0, r3]
d03e76f4:	5cc3      	ldrb	r3, [r0, r3]
d03e76f6:	2a00      	cmp	r2, #0
d03e76f8:	db11      	blt.n	d03e771e <main+0x2d36>
d03e76fa:	4a68      	ldr	r2, [pc, #416]	; (d03e789c <main+0x2eb4>)
d03e76fc:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
d03e7700:	b168      	cbz	r0, d03e771e <main+0x2d36>
d03e7702:	2300      	movs	r3, #0
d03e7704:	e001      	b.n	d03e770a <main+0x2d22>
d03e7706:	2b60      	cmp	r3, #96	; 0x60
d03e7708:	d053      	beq.n	d03e77b2 <main+0x2dca>
d03e770a:	f810 4023 	ldrb.w	r4, [r0, r3, lsl #2]
d03e770e:	b2da      	uxtb	r2, r3
d03e7710:	3301      	adds	r3, #1
d03e7712:	2c00      	cmp	r4, #0
d03e7714:	d1f7      	bne.n	d03e7706 <main+0x2d1e>
d03e7716:	1c53      	adds	r3, r2, #1
d03e7718:	b2db      	uxtb	r3, r3
d03e771a:	2b06      	cmp	r3, #6
d03e771c:	d849      	bhi.n	d03e77b2 <main+0x2dca>
d03e771e:	1c4d      	adds	r5, r1, #1
d03e7720:	d028      	beq.n	d03e7774 <main+0x2d8c>
d03e7722:	42a1      	cmp	r1, r4
d03e7724:	f77f ad0a 	ble.w	d03e713c <main+0x2754>
d03e7728:	e507      	b.n	d03e713a <main+0x2752>
d03e772a:	f1a3 028b 	sub.w	r2, r3, #139	; 0x8b
d03e772e:	2a15      	cmp	r2, #21
d03e7730:	d80f      	bhi.n	d03e7752 <main+0x2d6a>
d03e7732:	b171      	cbz	r1, d03e7752 <main+0x2d6a>
d03e7734:	4b55      	ldr	r3, [pc, #340]	; (d03e788c <main+0x2ea4>)
d03e7736:	7818      	ldrb	r0, [r3, #0]
d03e7738:	280f      	cmp	r0, #15
d03e773a:	f63f a858 	bhi.w	d03e67ee <main+0x1e06>
d03e773e:	4a50      	ldr	r2, [pc, #320]	; (d03e7880 <main+0x2e98>)
d03e7740:	5c13      	ldrb	r3, [r2, r0]
d03e7742:	3b08      	subs	r3, #8
d03e7744:	f383 0307 	usat	r3, #7, r3
d03e7748:	5413      	strb	r3, [r2, r0]
d03e774a:	f7f9 fe61 	bl	d03e1410 <midi_update_active_channel_volume>
d03e774e:	f7fd bdab 	b.w	d03e52a8 <main+0x8c0>
d03e7752:	3bbe      	subs	r3, #190	; 0xbe
d03e7754:	2b15      	cmp	r3, #21
d03e7756:	f63f a84a 	bhi.w	d03e67ee <main+0x1e06>
d03e775a:	2900      	cmp	r1, #0
d03e775c:	f43f a847 	beq.w	d03e67ee <main+0x1e06>
d03e7760:	4b4a      	ldr	r3, [pc, #296]	; (d03e788c <main+0x2ea4>)
d03e7762:	7818      	ldrb	r0, [r3, #0]
d03e7764:	280f      	cmp	r0, #15
d03e7766:	f63f a842 	bhi.w	d03e67ee <main+0x1e06>
d03e776a:	4a46      	ldr	r2, [pc, #280]	; (d03e7884 <main+0x2e9c>)
d03e776c:	e7e8      	b.n	d03e7740 <main+0x2d58>
d03e776e:	3b06      	subs	r3, #6
d03e7770:	b2dc      	uxtb	r4, r3
d03e7772:	e70f      	b.n	d03e7594 <main+0x2bac>
d03e7774:	2100      	movs	r1, #0
d03e7776:	e4e1      	b.n	d03e713c <main+0x2754>
d03e7778:	331e      	adds	r3, #30
d03e777a:	4573      	cmp	r3, lr
d03e777c:	f77f a837 	ble.w	d03e67ee <main+0x1e06>
d03e7780:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d03e7784:	f7f9 ff36 	bl	d03e15f4 <ui_select_program_delta>
d03e7788:	f7fd bd8e 	b.w	d03e52a8 <main+0x8c0>
d03e778c:	3b06      	subs	r3, #6
d03e778e:	3101      	adds	r1, #1
d03e7790:	b2dc      	uxtb	r4, r3
d03e7792:	e7c6      	b.n	d03e7722 <main+0x2d3a>
d03e7794:	2264      	movs	r2, #100	; 0x64
d03e7796:	fbb3 f3f2 	udiv	r3, r3, r2
d03e779a:	2bff      	cmp	r3, #255	; 0xff
d03e779c:	bf28      	it	cs
d03e779e:	23ff      	movcs	r3, #255	; 0xff
d03e77a0:	f7ff b9e8 	b.w	d03e6b74 <main+0x218c>
d03e77a4:	2264      	movs	r2, #100	; 0x64
d03e77a6:	fbb3 f3f2 	udiv	r3, r3, r2
d03e77aa:	2bff      	cmp	r3, #255	; 0xff
d03e77ac:	bf28      	it	cs
d03e77ae:	23ff      	movcs	r3, #255	; 0xff
d03e77b0:	e74c      	b.n	d03e764c <main+0x2c64>
d03e77b2:	3b06      	subs	r3, #6
d03e77b4:	b2dc      	uxtb	r4, r3
d03e77b6:	e7b2      	b.n	d03e771e <main+0x2d36>
d03e77b8:	235a      	movs	r3, #90	; 0x5a
d03e77ba:	4a39      	ldr	r2, [pc, #228]	; (d03e78a0 <main+0x2eb8>)
d03e77bc:	4d39      	ldr	r5, [pc, #228]	; (d03e78a4 <main+0x2ebc>)
d03e77be:	4c3a      	ldr	r4, [pc, #232]	; (d03e78a8 <main+0x2ec0>)
d03e77c0:	7013      	strb	r3, [r2, #0]
d03e77c2:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d03e77c4:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d03e77c6:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d03e77ca:	c403      	stmia	r4!, {r0, r1}
d03e77cc:	7022      	strb	r2, [r4, #0]
d03e77ce:	e449      	b.n	d03e7064 <main+0x267c>
d03e77d0:	2303      	movs	r3, #3
d03e77d2:	4a36      	ldr	r2, [pc, #216]	; (d03e78ac <main+0x2ec4>)
d03e77d4:	4d36      	ldr	r5, [pc, #216]	; (d03e78b0 <main+0x2ec8>)
d03e77d6:	265a      	movs	r6, #90	; 0x5a
d03e77d8:	4c33      	ldr	r4, [pc, #204]	; (d03e78a8 <main+0x2ec0>)
d03e77da:	7013      	strb	r3, [r2, #0]
d03e77dc:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d03e77de:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d03e77e0:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d03e77e4:	4d2e      	ldr	r5, [pc, #184]	; (d03e78a0 <main+0x2eb8>)
d03e77e6:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d03e77ea:	702e      	strb	r6, [r5, #0]
d03e77ec:	f7fd bd5c 	b.w	d03e52a8 <main+0x8c0>
d03e77f0:	461d      	mov	r5, r3
d03e77f2:	e5f3      	b.n	d03e73dc <main+0x29f4>
d03e77f4:	2303      	movs	r3, #3
d03e77f6:	4a2d      	ldr	r2, [pc, #180]	; (d03e78ac <main+0x2ec4>)
d03e77f8:	4d2d      	ldr	r5, [pc, #180]	; (d03e78b0 <main+0x2ec8>)
d03e77fa:	275a      	movs	r7, #90	; 0x5a
d03e77fc:	4e2a      	ldr	r6, [pc, #168]	; (d03e78a8 <main+0x2ec0>)
d03e77fe:	7013      	strb	r3, [r2, #0]
d03e7800:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d03e7802:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d03e7804:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d03e7808:	4d25      	ldr	r5, [pc, #148]	; (d03e78a0 <main+0x2eb8>)
d03e780a:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
d03e780e:	702f      	strb	r7, [r5, #0]
d03e7810:	e73a      	b.n	d03e7688 <main+0x2ca0>
d03e7812:	f44f 7080 	mov.w	r0, #256	; 0x100
d03e7816:	f7fb fab9 	bl	d03e2d8c <ui_vm_editor_adjust>
d03e781a:	f7fe bfe8 	b.w	d03e67ee <main+0x1e06>
d03e781e:	f5b7 7f87 	cmp.w	r7, #270	; 0x10e
d03e7822:	bfac      	ite	ge
d03e7824:	2100      	movge	r1, #0
d03e7826:	2101      	movlt	r1, #1
d03e7828:	2ff9      	cmp	r7, #249	; 0xf9
d03e782a:	bfd8      	it	le
d03e782c:	2100      	movle	r1, #0
d03e782e:	f5b6 7f86 	cmp.w	r6, #268	; 0x10c
d03e7832:	f280 808b 	bge.w	d03e794c <main+0x2f64>
d03e7836:	2900      	cmp	r1, #0
d03e7838:	f000 8088 	beq.w	d03e794c <main+0x2f64>
d03e783c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e7840:	f7fb faa4 	bl	d03e2d8c <ui_vm_editor_adjust>
d03e7844:	f7fe bfd3 	b.w	d03e67ee <main+0x1e06>
d03e7848:	f44f 5080 	mov.w	r0, #4096	; 0x1000
d03e784c:	f7fb fa9e 	bl	d03e2d8c <ui_vm_editor_adjust>
d03e7850:	f7fe bfcd 	b.w	d03e67ee <main+0x1e06>
d03e7854:	2001      	movs	r0, #1
d03e7856:	f7fb fa99 	bl	d03e2d8c <ui_vm_editor_adjust>
d03e785a:	f7fe bfc8 	b.w	d03e67ee <main+0x1e06>
d03e785e:	4815      	ldr	r0, [pc, #84]	; (d03e78b4 <main+0x2ecc>)
d03e7860:	f7fb fa94 	bl	d03e2d8c <ui_vm_editor_adjust>
d03e7864:	f7fe bfc3 	b.w	d03e67ee <main+0x1e06>
d03e7868:	f06f 00ff 	mvn.w	r0, #255	; 0xff
d03e786c:	f7fb fa8e 	bl	d03e2d8c <ui_vm_editor_adjust>
d03e7870:	f7fe bfbd 	b.w	d03e67ee <main+0x1e06>
d03e7874:	d03ea805 	.word	0xd03ea805
d03e7878:	d03ea3ca 	.word	0xd03ea3ca
d03e787c:	d03ea5f0 	.word	0xd03ea5f0
d03e7880:	d03ea3b4 	.word	0xd03ea3b4
d03e7884:	d03ea394 	.word	0xd03ea394
d03e7888:	d03ea5d2 	.word	0xd03ea5d2
d03e788c:	d03ea645 	.word	0xd03ea645
d03e7890:	d03ea3a4 	.word	0xd03ea3a4
d03e7894:	d03ea624 	.word	0xd03ea624
d03e7898:	d03ea7f5 	.word	0xd03ea7f5
d03e789c:	d03e9cbc 	.word	0xd03e9cbc
d03e78a0:	d03ea670 	.word	0xd03ea670
d03e78a4:	d03e9520 	.word	0xd03e9520
d03e78a8:	d03ea648 	.word	0xd03ea648
d03e78ac:	d03ea636 	.word	0xd03ea636
d03e78b0:	d03e90ac 	.word	0xd03e90ac
d03e78b4:	fffff000 	.word	0xfffff000
d03e78b8:	2303      	movs	r3, #3
d03e78ba:	4a59      	ldr	r2, [pc, #356]	; (d03e7a20 <main+0x3038>)
d03e78bc:	4d59      	ldr	r5, [pc, #356]	; (d03e7a24 <main+0x303c>)
d03e78be:	275a      	movs	r7, #90	; 0x5a
d03e78c0:	4e59      	ldr	r6, [pc, #356]	; (d03e7a28 <main+0x3040>)
d03e78c2:	7013      	strb	r3, [r2, #0]
d03e78c4:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d03e78c6:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d03e78c8:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d03e78cc:	4d57      	ldr	r5, [pc, #348]	; (d03e7a2c <main+0x3044>)
d03e78ce:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
d03e78d2:	702f      	strb	r7, [r5, #0]
d03e78d4:	e60a      	b.n	d03e74ec <main+0x2b04>
d03e78d6:	2660      	movs	r6, #96	; 0x60
d03e78d8:	f7ff b89e 	b.w	d03e6a18 <main+0x2030>
d03e78dc:	2010      	movs	r0, #16
d03e78de:	f7fb fa55 	bl	d03e2d8c <ui_vm_editor_adjust>
d03e78e2:	f7fe bf84 	b.w	d03e67ee <main+0x1e06>
d03e78e6:	4b52      	ldr	r3, [pc, #328]	; (d03e7a30 <main+0x3048>)
d03e78e8:	781b      	ldrb	r3, [r3, #0]
d03e78ea:	3301      	adds	r3, #1
d03e78ec:	b25b      	sxtb	r3, r3
d03e78ee:	2b00      	cmp	r3, #0
d03e78f0:	f2c0 808b 	blt.w	d03e7a0a <main+0x3022>
d03e78f4:	2b03      	cmp	r3, #3
d03e78f6:	bfa8      	it	ge
d03e78f8:	2300      	movge	r3, #0
d03e78fa:	494e      	ldr	r1, [pc, #312]	; (d03e7a34 <main+0x304c>)
d03e78fc:	f04f 0000 	mov.w	r0, #0
d03e7900:	2201      	movs	r2, #1
d03e7902:	7008      	strb	r0, [r1, #0]
d03e7904:	494a      	ldr	r1, [pc, #296]	; (d03e7a30 <main+0x3048>)
d03e7906:	700b      	strb	r3, [r1, #0]
d03e7908:	4b4b      	ldr	r3, [pc, #300]	; (d03e7a38 <main+0x3050>)
d03e790a:	701a      	strb	r2, [r3, #0]
d03e790c:	f7fe bf6f 	b.w	d03e67ee <main+0x1e06>
d03e7910:	4a4a      	ldr	r2, [pc, #296]	; (d03e7a3c <main+0x3054>)
d03e7912:	f04f 0100 	mov.w	r1, #0
d03e7916:	235a      	movs	r3, #90	; 0x5a
d03e7918:	4d49      	ldr	r5, [pc, #292]	; (d03e7a40 <main+0x3058>)
d03e791a:	7011      	strb	r1, [r2, #0]
d03e791c:	4a43      	ldr	r2, [pc, #268]	; (d03e7a2c <main+0x3044>)
d03e791e:	4c42      	ldr	r4, [pc, #264]	; (d03e7a28 <main+0x3040>)
d03e7920:	7013      	strb	r3, [r2, #0]
d03e7922:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d03e7924:	682d      	ldr	r5, [r5, #0]
d03e7926:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d03e7928:	6025      	str	r5, [r4, #0]
d03e792a:	f7fd bcbd 	b.w	d03e52a8 <main+0x8c0>
d03e792e:	4a45      	ldr	r2, [pc, #276]	; (d03e7a44 <main+0x305c>)
d03e7930:	4945      	ldr	r1, [pc, #276]	; (d03e7a48 <main+0x3060>)
d03e7932:	6812      	ldr	r2, [r2, #0]
d03e7934:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
d03e7938:	f7ff b859 	b.w	d03e69ee <main+0x2006>
d03e793c:	f5b7 7f87 	cmp.w	r7, #270	; 0x10e
d03e7940:	bfac      	ite	ge
d03e7942:	2100      	movge	r1, #0
d03e7944:	2101      	movlt	r1, #1
d03e7946:	2ff9      	cmp	r7, #249	; 0xf9
d03e7948:	bfd8      	it	le
d03e794a:	2100      	movle	r1, #0
d03e794c:	f5b6 7f88 	cmp.w	r6, #272	; 0x110
d03e7950:	f6bf ab48 	bge.w	d03e6fe4 <main+0x25fc>
d03e7954:	f7ff bb54 	b.w	d03e7000 <main+0x2618>
d03e7958:	4d3c      	ldr	r5, [pc, #240]	; (d03e7a4c <main+0x3064>)
d03e795a:	e47e      	b.n	d03e725a <main+0x2872>
d03e795c:	235a      	movs	r3, #90	; 0x5a
d03e795e:	4a33      	ldr	r2, [pc, #204]	; (d03e7a2c <main+0x3044>)
d03e7960:	4d3b      	ldr	r5, [pc, #236]	; (d03e7a50 <main+0x3068>)
d03e7962:	4c31      	ldr	r4, [pc, #196]	; (d03e7a28 <main+0x3040>)
d03e7964:	7013      	strb	r3, [r2, #0]
d03e7966:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d03e7968:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d03e796a:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d03e796c:	682d      	ldr	r5, [r5, #0]
d03e796e:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d03e7970:	7025      	strb	r5, [r4, #0]
d03e7972:	f7fd bc99 	b.w	d03e52a8 <main+0x8c0>
d03e7976:	461a      	mov	r2, r3
d03e7978:	4b36      	ldr	r3, [pc, #216]	; (d03e7a54 <main+0x306c>)
d03e797a:	f1ae 017c 	sub.w	r1, lr, #124	; 0x7c
d03e797e:	781b      	ldrb	r3, [r3, #0]
d03e7980:	eb03 1321 	add.w	r3, r3, r1, asr #4
d03e7984:	b2db      	uxtb	r3, r3
d03e7986:	4293      	cmp	r3, r2
d03e7988:	f4be af31 	bcs.w	d03e67ee <main+0x1e06>
d03e798c:	4a29      	ldr	r2, [pc, #164]	; (d03e7a34 <main+0x304c>)
d03e798e:	f04f 0100 	mov.w	r1, #0
d03e7992:	2401      	movs	r4, #1
d03e7994:	7011      	strb	r1, [r2, #0]
d03e7996:	4a30      	ldr	r2, [pc, #192]	; (d03e7a58 <main+0x3070>)
d03e7998:	7013      	strb	r3, [r2, #0]
d03e799a:	4b27      	ldr	r3, [pc, #156]	; (d03e7a38 <main+0x3050>)
d03e799c:	701c      	strb	r4, [r3, #0]
d03e799e:	f7fb f991 	bl	d03e2cc4 <ui_vm_editor_clamp_selection>
d03e79a2:	2e9d      	cmp	r6, #157	; 0x9d
d03e79a4:	dd04      	ble.n	d03e79b0 <main+0x2fc8>
d03e79a6:	2302      	movs	r3, #2
d03e79a8:	4a21      	ldr	r2, [pc, #132]	; (d03e7a30 <main+0x3048>)
d03e79aa:	7013      	strb	r3, [r2, #0]
d03e79ac:	f7fe bf1f 	b.w	d03e67ee <main+0x1e06>
d03e79b0:	2e85      	cmp	r6, #133	; 0x85
d03e79b2:	dd2c      	ble.n	d03e7a0e <main+0x3026>
d03e79b4:	4b1e      	ldr	r3, [pc, #120]	; (d03e7a30 <main+0x3048>)
d03e79b6:	701c      	strb	r4, [r3, #0]
d03e79b8:	f7fe bf19 	b.w	d03e67ee <main+0x1e06>
d03e79bc:	f5b6 7fa6 	cmp.w	r6, #332	; 0x14c
d03e79c0:	f6fe abde 	blt.w	d03e6180 <main+0x1798>
d03e79c4:	f7fe bf75 	b.w	d03e68b2 <main+0x1eca>
d03e79c8:	4b15      	ldr	r3, [pc, #84]	; (d03e7a20 <main+0x3038>)
d03e79ca:	781b      	ldrb	r3, [r3, #0]
d03e79cc:	2b04      	cmp	r3, #4
d03e79ce:	f63d ac6b 	bhi.w	d03e52a8 <main+0x8c0>
d03e79d2:	a101      	add	r1, pc, #4	; (adr r1, d03e79d8 <main+0x2ff0>)
d03e79d4:	f851 f023 	ldr.w	pc, [r1, r3, lsl #2]
d03e79d8:	d03e67ef 	.word	0xd03e67ef
d03e79dc:	d03e6c49 	.word	0xd03e6c49
d03e79e0:	d03e6b7d 	.word	0xd03e6b7d
d03e79e4:	d03e6a8d 	.word	0xd03e6a8d
d03e79e8:	d03e693d 	.word	0xd03e693d
d03e79ec:	f1a7 02fa 	sub.w	r2, r7, #250	; 0xfa
d03e79f0:	b292      	uxth	r2, r2
d03e79f2:	2a13      	cmp	r2, #19
d03e79f4:	f63f ab04 	bhi.w	d03e7000 <main+0x2618>
d03e79f8:	2ee5      	cmp	r6, #229	; 0xe5
d03e79fa:	f73f ab01 	bgt.w	d03e7000 <main+0x2618>
d03e79fe:	f06f 000f 	mvn.w	r0, #15
d03e7a02:	f7fb f9c3 	bl	d03e2d8c <ui_vm_editor_adjust>
d03e7a06:	f7fe bef2 	b.w	d03e67ee <main+0x1e06>
d03e7a0a:	2302      	movs	r3, #2
d03e7a0c:	e775      	b.n	d03e78fa <main+0x2f12>
d03e7a0e:	2e3d      	cmp	r6, #61	; 0x3d
d03e7a10:	f77e aeed 	ble.w	d03e67ee <main+0x1e06>
d03e7a14:	4b06      	ldr	r3, [pc, #24]	; (d03e7a30 <main+0x3048>)
d03e7a16:	f04f 0200 	mov.w	r2, #0
d03e7a1a:	701a      	strb	r2, [r3, #0]
d03e7a1c:	f7fe bee7 	b.w	d03e67ee <main+0x1e06>
d03e7a20:	d03ea636 	.word	0xd03ea636
d03e7a24:	d03e90ac 	.word	0xd03e90ac
d03e7a28:	d03ea648 	.word	0xd03ea648
d03e7a2c:	d03ea670 	.word	0xd03ea670
d03e7a30:	d03ea7f4 	.word	0xd03ea7f4
d03e7a34:	d03ea7ff 	.word	0xd03ea7ff
d03e7a38:	d03ea7fe 	.word	0xd03ea7fe
d03e7a3c:	d03ea7f5 	.word	0xd03ea7f5
d03e7a40:	d03e95b0 	.word	0xd03e95b0
d03e7a44:	d03ea7f8 	.word	0xd03ea7f8
d03e7a48:	d03e9cbc 	.word	0xd03e9cbc
d03e7a4c:	d03e95e8 	.word	0xd03e95e8
d03e7a50:	d03e95c4 	.word	0xd03e95c4
d03e7a54:	d03ea805 	.word	0xd03ea805
d03e7a58:	d03ea7fd 	.word	0xd03ea7fd

d03e7a5c <__errno>:
d03e7a5c:	4b01      	ldr	r3, [pc, #4]	; (d03e7a64 <__errno+0x8>)
d03e7a5e:	6818      	ldr	r0, [r3, #0]
d03e7a60:	4770      	bx	lr
d03e7a62:	bf00      	nop
d03e7a64:	d03ea2bc 	.word	0xd03ea2bc

d03e7a68 <malloc>:
d03e7a68:	4b02      	ldr	r3, [pc, #8]	; (d03e7a74 <malloc+0xc>)
d03e7a6a:	4601      	mov	r1, r0
d03e7a6c:	6818      	ldr	r0, [r3, #0]
d03e7a6e:	f000 b869 	b.w	d03e7b44 <_malloc_r>
d03e7a72:	bf00      	nop
d03e7a74:	d03ea2bc 	.word	0xd03ea2bc

d03e7a78 <memcpy>:
d03e7a78:	440a      	add	r2, r1
d03e7a7a:	4291      	cmp	r1, r2
d03e7a7c:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d03e7a80:	d100      	bne.n	d03e7a84 <memcpy+0xc>
d03e7a82:	4770      	bx	lr
d03e7a84:	b510      	push	{r4, lr}
d03e7a86:	f811 4b01 	ldrb.w	r4, [r1], #1
d03e7a8a:	f803 4f01 	strb.w	r4, [r3, #1]!
d03e7a8e:	4291      	cmp	r1, r2
d03e7a90:	d1f9      	bne.n	d03e7a86 <memcpy+0xe>
d03e7a92:	bd10      	pop	{r4, pc}

d03e7a94 <memset>:
d03e7a94:	4402      	add	r2, r0
d03e7a96:	4603      	mov	r3, r0
d03e7a98:	4293      	cmp	r3, r2
d03e7a9a:	d100      	bne.n	d03e7a9e <memset+0xa>
d03e7a9c:	4770      	bx	lr
d03e7a9e:	f803 1b01 	strb.w	r1, [r3], #1
d03e7aa2:	e7f9      	b.n	d03e7a98 <memset+0x4>

d03e7aa4 <_free_r>:
d03e7aa4:	b537      	push	{r0, r1, r2, r4, r5, lr}
d03e7aa6:	2900      	cmp	r1, #0
d03e7aa8:	d048      	beq.n	d03e7b3c <_free_r+0x98>
d03e7aaa:	f851 3c04 	ldr.w	r3, [r1, #-4]
d03e7aae:	9001      	str	r0, [sp, #4]
d03e7ab0:	2b00      	cmp	r3, #0
d03e7ab2:	f1a1 0404 	sub.w	r4, r1, #4
d03e7ab6:	bfb8      	it	lt
d03e7ab8:	18e4      	addlt	r4, r4, r3
d03e7aba:	f000 fb85 	bl	d03e81c8 <__malloc_lock>
d03e7abe:	4a20      	ldr	r2, [pc, #128]	; (d03e7b40 <_free_r+0x9c>)
d03e7ac0:	9801      	ldr	r0, [sp, #4]
d03e7ac2:	6813      	ldr	r3, [r2, #0]
d03e7ac4:	4615      	mov	r5, r2
d03e7ac6:	b933      	cbnz	r3, d03e7ad6 <_free_r+0x32>
d03e7ac8:	6063      	str	r3, [r4, #4]
d03e7aca:	6014      	str	r4, [r2, #0]
d03e7acc:	b003      	add	sp, #12
d03e7ace:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d03e7ad2:	f000 bb7f 	b.w	d03e81d4 <__malloc_unlock>
d03e7ad6:	42a3      	cmp	r3, r4
d03e7ad8:	d90b      	bls.n	d03e7af2 <_free_r+0x4e>
d03e7ada:	6821      	ldr	r1, [r4, #0]
d03e7adc:	1862      	adds	r2, r4, r1
d03e7ade:	4293      	cmp	r3, r2
d03e7ae0:	bf04      	itt	eq
d03e7ae2:	681a      	ldreq	r2, [r3, #0]
d03e7ae4:	685b      	ldreq	r3, [r3, #4]
d03e7ae6:	6063      	str	r3, [r4, #4]
d03e7ae8:	bf04      	itt	eq
d03e7aea:	1852      	addeq	r2, r2, r1
d03e7aec:	6022      	streq	r2, [r4, #0]
d03e7aee:	602c      	str	r4, [r5, #0]
d03e7af0:	e7ec      	b.n	d03e7acc <_free_r+0x28>
d03e7af2:	461a      	mov	r2, r3
d03e7af4:	685b      	ldr	r3, [r3, #4]
d03e7af6:	b10b      	cbz	r3, d03e7afc <_free_r+0x58>
d03e7af8:	42a3      	cmp	r3, r4
d03e7afa:	d9fa      	bls.n	d03e7af2 <_free_r+0x4e>
d03e7afc:	6811      	ldr	r1, [r2, #0]
d03e7afe:	1855      	adds	r5, r2, r1
d03e7b00:	42a5      	cmp	r5, r4
d03e7b02:	d10b      	bne.n	d03e7b1c <_free_r+0x78>
d03e7b04:	6824      	ldr	r4, [r4, #0]
d03e7b06:	4421      	add	r1, r4
d03e7b08:	1854      	adds	r4, r2, r1
d03e7b0a:	42a3      	cmp	r3, r4
d03e7b0c:	6011      	str	r1, [r2, #0]
d03e7b0e:	d1dd      	bne.n	d03e7acc <_free_r+0x28>
d03e7b10:	681c      	ldr	r4, [r3, #0]
d03e7b12:	685b      	ldr	r3, [r3, #4]
d03e7b14:	6053      	str	r3, [r2, #4]
d03e7b16:	4421      	add	r1, r4
d03e7b18:	6011      	str	r1, [r2, #0]
d03e7b1a:	e7d7      	b.n	d03e7acc <_free_r+0x28>
d03e7b1c:	d902      	bls.n	d03e7b24 <_free_r+0x80>
d03e7b1e:	230c      	movs	r3, #12
d03e7b20:	6003      	str	r3, [r0, #0]
d03e7b22:	e7d3      	b.n	d03e7acc <_free_r+0x28>
d03e7b24:	6825      	ldr	r5, [r4, #0]
d03e7b26:	1961      	adds	r1, r4, r5
d03e7b28:	428b      	cmp	r3, r1
d03e7b2a:	bf04      	itt	eq
d03e7b2c:	6819      	ldreq	r1, [r3, #0]
d03e7b2e:	685b      	ldreq	r3, [r3, #4]
d03e7b30:	6063      	str	r3, [r4, #4]
d03e7b32:	bf04      	itt	eq
d03e7b34:	1949      	addeq	r1, r1, r5
d03e7b36:	6021      	streq	r1, [r4, #0]
d03e7b38:	6054      	str	r4, [r2, #4]
d03e7b3a:	e7c7      	b.n	d03e7acc <_free_r+0x28>
d03e7b3c:	b003      	add	sp, #12
d03e7b3e:	bd30      	pop	{r4, r5, pc}
d03e7b40:	d03ea808 	.word	0xd03ea808

d03e7b44 <_malloc_r>:
d03e7b44:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e7b46:	1ccd      	adds	r5, r1, #3
d03e7b48:	f025 0503 	bic.w	r5, r5, #3
d03e7b4c:	3508      	adds	r5, #8
d03e7b4e:	2d0c      	cmp	r5, #12
d03e7b50:	bf38      	it	cc
d03e7b52:	250c      	movcc	r5, #12
d03e7b54:	2d00      	cmp	r5, #0
d03e7b56:	4606      	mov	r6, r0
d03e7b58:	db01      	blt.n	d03e7b5e <_malloc_r+0x1a>
d03e7b5a:	42a9      	cmp	r1, r5
d03e7b5c:	d903      	bls.n	d03e7b66 <_malloc_r+0x22>
d03e7b5e:	230c      	movs	r3, #12
d03e7b60:	6033      	str	r3, [r6, #0]
d03e7b62:	2000      	movs	r0, #0
d03e7b64:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e7b66:	f000 fb2f 	bl	d03e81c8 <__malloc_lock>
d03e7b6a:	4921      	ldr	r1, [pc, #132]	; (d03e7bf0 <_malloc_r+0xac>)
d03e7b6c:	680a      	ldr	r2, [r1, #0]
d03e7b6e:	4614      	mov	r4, r2
d03e7b70:	b99c      	cbnz	r4, d03e7b9a <_malloc_r+0x56>
d03e7b72:	4f20      	ldr	r7, [pc, #128]	; (d03e7bf4 <_malloc_r+0xb0>)
d03e7b74:	683b      	ldr	r3, [r7, #0]
d03e7b76:	b923      	cbnz	r3, d03e7b82 <_malloc_r+0x3e>
d03e7b78:	4621      	mov	r1, r4
d03e7b7a:	4630      	mov	r0, r6
d03e7b7c:	f7f8 fab0 	bl	d03e00e0 <_sbrk_r>
d03e7b80:	6038      	str	r0, [r7, #0]
d03e7b82:	4629      	mov	r1, r5
d03e7b84:	4630      	mov	r0, r6
d03e7b86:	f7f8 faab 	bl	d03e00e0 <_sbrk_r>
d03e7b8a:	1c43      	adds	r3, r0, #1
d03e7b8c:	d123      	bne.n	d03e7bd6 <_malloc_r+0x92>
d03e7b8e:	230c      	movs	r3, #12
d03e7b90:	6033      	str	r3, [r6, #0]
d03e7b92:	4630      	mov	r0, r6
d03e7b94:	f000 fb1e 	bl	d03e81d4 <__malloc_unlock>
d03e7b98:	e7e3      	b.n	d03e7b62 <_malloc_r+0x1e>
d03e7b9a:	6823      	ldr	r3, [r4, #0]
d03e7b9c:	1b5b      	subs	r3, r3, r5
d03e7b9e:	d417      	bmi.n	d03e7bd0 <_malloc_r+0x8c>
d03e7ba0:	2b0b      	cmp	r3, #11
d03e7ba2:	d903      	bls.n	d03e7bac <_malloc_r+0x68>
d03e7ba4:	6023      	str	r3, [r4, #0]
d03e7ba6:	441c      	add	r4, r3
d03e7ba8:	6025      	str	r5, [r4, #0]
d03e7baa:	e004      	b.n	d03e7bb6 <_malloc_r+0x72>
d03e7bac:	6863      	ldr	r3, [r4, #4]
d03e7bae:	42a2      	cmp	r2, r4
d03e7bb0:	bf0c      	ite	eq
d03e7bb2:	600b      	streq	r3, [r1, #0]
d03e7bb4:	6053      	strne	r3, [r2, #4]
d03e7bb6:	4630      	mov	r0, r6
d03e7bb8:	f000 fb0c 	bl	d03e81d4 <__malloc_unlock>
d03e7bbc:	f104 000b 	add.w	r0, r4, #11
d03e7bc0:	1d23      	adds	r3, r4, #4
d03e7bc2:	f020 0007 	bic.w	r0, r0, #7
d03e7bc6:	1ac2      	subs	r2, r0, r3
d03e7bc8:	d0cc      	beq.n	d03e7b64 <_malloc_r+0x20>
d03e7bca:	1a1b      	subs	r3, r3, r0
d03e7bcc:	50a3      	str	r3, [r4, r2]
d03e7bce:	e7c9      	b.n	d03e7b64 <_malloc_r+0x20>
d03e7bd0:	4622      	mov	r2, r4
d03e7bd2:	6864      	ldr	r4, [r4, #4]
d03e7bd4:	e7cc      	b.n	d03e7b70 <_malloc_r+0x2c>
d03e7bd6:	1cc4      	adds	r4, r0, #3
d03e7bd8:	f024 0403 	bic.w	r4, r4, #3
d03e7bdc:	42a0      	cmp	r0, r4
d03e7bde:	d0e3      	beq.n	d03e7ba8 <_malloc_r+0x64>
d03e7be0:	1a21      	subs	r1, r4, r0
d03e7be2:	4630      	mov	r0, r6
d03e7be4:	f7f8 fa7c 	bl	d03e00e0 <_sbrk_r>
d03e7be8:	3001      	adds	r0, #1
d03e7bea:	d1dd      	bne.n	d03e7ba8 <_malloc_r+0x64>
d03e7bec:	e7cf      	b.n	d03e7b8e <_malloc_r+0x4a>
d03e7bee:	bf00      	nop
d03e7bf0:	d03ea808 	.word	0xd03ea808
d03e7bf4:	d03ea80c 	.word	0xd03ea80c

d03e7bf8 <setbuf>:
d03e7bf8:	2900      	cmp	r1, #0
d03e7bfa:	f44f 6380 	mov.w	r3, #1024	; 0x400
d03e7bfe:	bf0c      	ite	eq
d03e7c00:	2202      	moveq	r2, #2
d03e7c02:	2200      	movne	r2, #0
d03e7c04:	f000 b800 	b.w	d03e7c08 <setvbuf>

d03e7c08 <setvbuf>:
d03e7c08:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d03e7c0c:	461d      	mov	r5, r3
d03e7c0e:	4b5d      	ldr	r3, [pc, #372]	; (d03e7d84 <setvbuf+0x17c>)
d03e7c10:	681f      	ldr	r7, [r3, #0]
d03e7c12:	4604      	mov	r4, r0
d03e7c14:	460e      	mov	r6, r1
d03e7c16:	4690      	mov	r8, r2
d03e7c18:	b127      	cbz	r7, d03e7c24 <setvbuf+0x1c>
d03e7c1a:	69bb      	ldr	r3, [r7, #24]
d03e7c1c:	b913      	cbnz	r3, d03e7c24 <setvbuf+0x1c>
d03e7c1e:	4638      	mov	r0, r7
d03e7c20:	f000 fa0e 	bl	d03e8040 <__sinit>
d03e7c24:	4b58      	ldr	r3, [pc, #352]	; (d03e7d88 <setvbuf+0x180>)
d03e7c26:	429c      	cmp	r4, r3
d03e7c28:	d167      	bne.n	d03e7cfa <setvbuf+0xf2>
d03e7c2a:	687c      	ldr	r4, [r7, #4]
d03e7c2c:	f1b8 0f02 	cmp.w	r8, #2
d03e7c30:	d006      	beq.n	d03e7c40 <setvbuf+0x38>
d03e7c32:	f1b8 0f01 	cmp.w	r8, #1
d03e7c36:	f200 809f 	bhi.w	d03e7d78 <setvbuf+0x170>
d03e7c3a:	2d00      	cmp	r5, #0
d03e7c3c:	f2c0 809c 	blt.w	d03e7d78 <setvbuf+0x170>
d03e7c40:	6e63      	ldr	r3, [r4, #100]	; 0x64
d03e7c42:	07db      	lsls	r3, r3, #31
d03e7c44:	d405      	bmi.n	d03e7c52 <setvbuf+0x4a>
d03e7c46:	89a3      	ldrh	r3, [r4, #12]
d03e7c48:	0598      	lsls	r0, r3, #22
d03e7c4a:	d402      	bmi.n	d03e7c52 <setvbuf+0x4a>
d03e7c4c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e7c4e:	f000 fa95 	bl	d03e817c <__retarget_lock_acquire_recursive>
d03e7c52:	4621      	mov	r1, r4
d03e7c54:	4638      	mov	r0, r7
d03e7c56:	f000 f95f 	bl	d03e7f18 <_fflush_r>
d03e7c5a:	6b61      	ldr	r1, [r4, #52]	; 0x34
d03e7c5c:	b141      	cbz	r1, d03e7c70 <setvbuf+0x68>
d03e7c5e:	f104 0344 	add.w	r3, r4, #68	; 0x44
d03e7c62:	4299      	cmp	r1, r3
d03e7c64:	d002      	beq.n	d03e7c6c <setvbuf+0x64>
d03e7c66:	4638      	mov	r0, r7
d03e7c68:	f7ff ff1c 	bl	d03e7aa4 <_free_r>
d03e7c6c:	2300      	movs	r3, #0
d03e7c6e:	6363      	str	r3, [r4, #52]	; 0x34
d03e7c70:	2300      	movs	r3, #0
d03e7c72:	61a3      	str	r3, [r4, #24]
d03e7c74:	6063      	str	r3, [r4, #4]
d03e7c76:	89a3      	ldrh	r3, [r4, #12]
d03e7c78:	0619      	lsls	r1, r3, #24
d03e7c7a:	d503      	bpl.n	d03e7c84 <setvbuf+0x7c>
d03e7c7c:	6921      	ldr	r1, [r4, #16]
d03e7c7e:	4638      	mov	r0, r7
d03e7c80:	f7ff ff10 	bl	d03e7aa4 <_free_r>
d03e7c84:	89a3      	ldrh	r3, [r4, #12]
d03e7c86:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d03e7c8a:	f023 0303 	bic.w	r3, r3, #3
d03e7c8e:	f1b8 0f02 	cmp.w	r8, #2
d03e7c92:	81a3      	strh	r3, [r4, #12]
d03e7c94:	d06c      	beq.n	d03e7d70 <setvbuf+0x168>
d03e7c96:	ab01      	add	r3, sp, #4
d03e7c98:	466a      	mov	r2, sp
d03e7c9a:	4621      	mov	r1, r4
d03e7c9c:	4638      	mov	r0, r7
d03e7c9e:	f000 fa6f 	bl	d03e8180 <__swhatbuf_r>
d03e7ca2:	89a3      	ldrh	r3, [r4, #12]
d03e7ca4:	4318      	orrs	r0, r3
d03e7ca6:	81a0      	strh	r0, [r4, #12]
d03e7ca8:	2d00      	cmp	r5, #0
d03e7caa:	d130      	bne.n	d03e7d0e <setvbuf+0x106>
d03e7cac:	9d00      	ldr	r5, [sp, #0]
d03e7cae:	4628      	mov	r0, r5
d03e7cb0:	f7ff feda 	bl	d03e7a68 <malloc>
d03e7cb4:	4606      	mov	r6, r0
d03e7cb6:	2800      	cmp	r0, #0
d03e7cb8:	d155      	bne.n	d03e7d66 <setvbuf+0x15e>
d03e7cba:	f8dd 9000 	ldr.w	r9, [sp]
d03e7cbe:	45a9      	cmp	r9, r5
d03e7cc0:	d14a      	bne.n	d03e7d58 <setvbuf+0x150>
d03e7cc2:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d03e7cc6:	2200      	movs	r2, #0
d03e7cc8:	60a2      	str	r2, [r4, #8]
d03e7cca:	f104 0247 	add.w	r2, r4, #71	; 0x47
d03e7cce:	6022      	str	r2, [r4, #0]
d03e7cd0:	6122      	str	r2, [r4, #16]
d03e7cd2:	2201      	movs	r2, #1
d03e7cd4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d03e7cd8:	6162      	str	r2, [r4, #20]
d03e7cda:	6e62      	ldr	r2, [r4, #100]	; 0x64
d03e7cdc:	f043 0302 	orr.w	r3, r3, #2
d03e7ce0:	07d2      	lsls	r2, r2, #31
d03e7ce2:	81a3      	strh	r3, [r4, #12]
d03e7ce4:	d405      	bmi.n	d03e7cf2 <setvbuf+0xea>
d03e7ce6:	f413 7f00 	tst.w	r3, #512	; 0x200
d03e7cea:	d102      	bne.n	d03e7cf2 <setvbuf+0xea>
d03e7cec:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e7cee:	f000 fa46 	bl	d03e817e <__retarget_lock_release_recursive>
d03e7cf2:	4628      	mov	r0, r5
d03e7cf4:	b003      	add	sp, #12
d03e7cf6:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d03e7cfa:	4b24      	ldr	r3, [pc, #144]	; (d03e7d8c <setvbuf+0x184>)
d03e7cfc:	429c      	cmp	r4, r3
d03e7cfe:	d101      	bne.n	d03e7d04 <setvbuf+0xfc>
d03e7d00:	68bc      	ldr	r4, [r7, #8]
d03e7d02:	e793      	b.n	d03e7c2c <setvbuf+0x24>
d03e7d04:	4b22      	ldr	r3, [pc, #136]	; (d03e7d90 <setvbuf+0x188>)
d03e7d06:	429c      	cmp	r4, r3
d03e7d08:	bf08      	it	eq
d03e7d0a:	68fc      	ldreq	r4, [r7, #12]
d03e7d0c:	e78e      	b.n	d03e7c2c <setvbuf+0x24>
d03e7d0e:	2e00      	cmp	r6, #0
d03e7d10:	d0cd      	beq.n	d03e7cae <setvbuf+0xa6>
d03e7d12:	69bb      	ldr	r3, [r7, #24]
d03e7d14:	b913      	cbnz	r3, d03e7d1c <setvbuf+0x114>
d03e7d16:	4638      	mov	r0, r7
d03e7d18:	f000 f992 	bl	d03e8040 <__sinit>
d03e7d1c:	f1b8 0f01 	cmp.w	r8, #1
d03e7d20:	bf08      	it	eq
d03e7d22:	89a3      	ldrheq	r3, [r4, #12]
d03e7d24:	6026      	str	r6, [r4, #0]
d03e7d26:	bf04      	itt	eq
d03e7d28:	f043 0301 	orreq.w	r3, r3, #1
d03e7d2c:	81a3      	strheq	r3, [r4, #12]
d03e7d2e:	89a2      	ldrh	r2, [r4, #12]
d03e7d30:	f012 0308 	ands.w	r3, r2, #8
d03e7d34:	e9c4 6504 	strd	r6, r5, [r4, #16]
d03e7d38:	d01c      	beq.n	d03e7d74 <setvbuf+0x16c>
d03e7d3a:	07d3      	lsls	r3, r2, #31
d03e7d3c:	bf41      	itttt	mi
d03e7d3e:	2300      	movmi	r3, #0
d03e7d40:	426d      	negmi	r5, r5
d03e7d42:	60a3      	strmi	r3, [r4, #8]
d03e7d44:	61a5      	strmi	r5, [r4, #24]
d03e7d46:	bf58      	it	pl
d03e7d48:	60a5      	strpl	r5, [r4, #8]
d03e7d4a:	6e65      	ldr	r5, [r4, #100]	; 0x64
d03e7d4c:	f015 0501 	ands.w	r5, r5, #1
d03e7d50:	d115      	bne.n	d03e7d7e <setvbuf+0x176>
d03e7d52:	f412 7f00 	tst.w	r2, #512	; 0x200
d03e7d56:	e7c8      	b.n	d03e7cea <setvbuf+0xe2>
d03e7d58:	4648      	mov	r0, r9
d03e7d5a:	f7ff fe85 	bl	d03e7a68 <malloc>
d03e7d5e:	4606      	mov	r6, r0
d03e7d60:	2800      	cmp	r0, #0
d03e7d62:	d0ae      	beq.n	d03e7cc2 <setvbuf+0xba>
d03e7d64:	464d      	mov	r5, r9
d03e7d66:	89a3      	ldrh	r3, [r4, #12]
d03e7d68:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d03e7d6c:	81a3      	strh	r3, [r4, #12]
d03e7d6e:	e7d0      	b.n	d03e7d12 <setvbuf+0x10a>
d03e7d70:	2500      	movs	r5, #0
d03e7d72:	e7a8      	b.n	d03e7cc6 <setvbuf+0xbe>
d03e7d74:	60a3      	str	r3, [r4, #8]
d03e7d76:	e7e8      	b.n	d03e7d4a <setvbuf+0x142>
d03e7d78:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d03e7d7c:	e7b9      	b.n	d03e7cf2 <setvbuf+0xea>
d03e7d7e:	2500      	movs	r5, #0
d03e7d80:	e7b7      	b.n	d03e7cf2 <setvbuf+0xea>
d03e7d82:	bf00      	nop
d03e7d84:	d03ea2bc 	.word	0xd03ea2bc
d03e7d88:	d03e9c40 	.word	0xd03e9c40
d03e7d8c:	d03e9c60 	.word	0xd03e9c60
d03e7d90:	d03e9c20 	.word	0xd03e9c20

d03e7d94 <sniprintf>:
d03e7d94:	b40c      	push	{r2, r3}
d03e7d96:	b530      	push	{r4, r5, lr}
d03e7d98:	4b17      	ldr	r3, [pc, #92]	; (d03e7df8 <sniprintf+0x64>)
d03e7d9a:	1e0c      	subs	r4, r1, #0
d03e7d9c:	681d      	ldr	r5, [r3, #0]
d03e7d9e:	b09d      	sub	sp, #116	; 0x74
d03e7da0:	da08      	bge.n	d03e7db4 <sniprintf+0x20>
d03e7da2:	238b      	movs	r3, #139	; 0x8b
d03e7da4:	602b      	str	r3, [r5, #0]
d03e7da6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e7daa:	b01d      	add	sp, #116	; 0x74
d03e7dac:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d03e7db0:	b002      	add	sp, #8
d03e7db2:	4770      	bx	lr
d03e7db4:	f44f 7302 	mov.w	r3, #520	; 0x208
d03e7db8:	f8ad 3014 	strh.w	r3, [sp, #20]
d03e7dbc:	bf14      	ite	ne
d03e7dbe:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d03e7dc2:	4623      	moveq	r3, r4
d03e7dc4:	9304      	str	r3, [sp, #16]
d03e7dc6:	9307      	str	r3, [sp, #28]
d03e7dc8:	f64f 73ff 	movw	r3, #65535	; 0xffff
d03e7dcc:	9002      	str	r0, [sp, #8]
d03e7dce:	9006      	str	r0, [sp, #24]
d03e7dd0:	f8ad 3016 	strh.w	r3, [sp, #22]
d03e7dd4:	9a20      	ldr	r2, [sp, #128]	; 0x80
d03e7dd6:	ab21      	add	r3, sp, #132	; 0x84
d03e7dd8:	a902      	add	r1, sp, #8
d03e7dda:	4628      	mov	r0, r5
d03e7ddc:	9301      	str	r3, [sp, #4]
d03e7dde:	f000 fa5b 	bl	d03e8298 <_svfiprintf_r>
d03e7de2:	1c43      	adds	r3, r0, #1
d03e7de4:	bfbc      	itt	lt
d03e7de6:	238b      	movlt	r3, #139	; 0x8b
d03e7de8:	602b      	strlt	r3, [r5, #0]
d03e7dea:	2c00      	cmp	r4, #0
d03e7dec:	d0dd      	beq.n	d03e7daa <sniprintf+0x16>
d03e7dee:	9b02      	ldr	r3, [sp, #8]
d03e7df0:	2200      	movs	r2, #0
d03e7df2:	701a      	strb	r2, [r3, #0]
d03e7df4:	e7d9      	b.n	d03e7daa <sniprintf+0x16>
d03e7df6:	bf00      	nop
d03e7df8:	d03ea2bc 	.word	0xd03ea2bc

d03e7dfc <strlen>:
d03e7dfc:	4603      	mov	r3, r0
d03e7dfe:	f813 2b01 	ldrb.w	r2, [r3], #1
d03e7e02:	2a00      	cmp	r2, #0
d03e7e04:	d1fb      	bne.n	d03e7dfe <strlen+0x2>
d03e7e06:	1a18      	subs	r0, r3, r0
d03e7e08:	3801      	subs	r0, #1
d03e7e0a:	4770      	bx	lr

d03e7e0c <__sflush_r>:
d03e7e0c:	898a      	ldrh	r2, [r1, #12]
d03e7e0e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e7e12:	4605      	mov	r5, r0
d03e7e14:	0710      	lsls	r0, r2, #28
d03e7e16:	460c      	mov	r4, r1
d03e7e18:	d458      	bmi.n	d03e7ecc <__sflush_r+0xc0>
d03e7e1a:	684b      	ldr	r3, [r1, #4]
d03e7e1c:	2b00      	cmp	r3, #0
d03e7e1e:	dc05      	bgt.n	d03e7e2c <__sflush_r+0x20>
d03e7e20:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d03e7e22:	2b00      	cmp	r3, #0
d03e7e24:	dc02      	bgt.n	d03e7e2c <__sflush_r+0x20>
d03e7e26:	2000      	movs	r0, #0
d03e7e28:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03e7e2c:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d03e7e2e:	2e00      	cmp	r6, #0
d03e7e30:	d0f9      	beq.n	d03e7e26 <__sflush_r+0x1a>
d03e7e32:	2300      	movs	r3, #0
d03e7e34:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d03e7e38:	682f      	ldr	r7, [r5, #0]
d03e7e3a:	602b      	str	r3, [r5, #0]
d03e7e3c:	d032      	beq.n	d03e7ea4 <__sflush_r+0x98>
d03e7e3e:	6d60      	ldr	r0, [r4, #84]	; 0x54
d03e7e40:	89a3      	ldrh	r3, [r4, #12]
d03e7e42:	075a      	lsls	r2, r3, #29
d03e7e44:	d505      	bpl.n	d03e7e52 <__sflush_r+0x46>
d03e7e46:	6863      	ldr	r3, [r4, #4]
d03e7e48:	1ac0      	subs	r0, r0, r3
d03e7e4a:	6b63      	ldr	r3, [r4, #52]	; 0x34
d03e7e4c:	b10b      	cbz	r3, d03e7e52 <__sflush_r+0x46>
d03e7e4e:	6c23      	ldr	r3, [r4, #64]	; 0x40
d03e7e50:	1ac0      	subs	r0, r0, r3
d03e7e52:	2300      	movs	r3, #0
d03e7e54:	4602      	mov	r2, r0
d03e7e56:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d03e7e58:	6a21      	ldr	r1, [r4, #32]
d03e7e5a:	4628      	mov	r0, r5
d03e7e5c:	47b0      	blx	r6
d03e7e5e:	1c43      	adds	r3, r0, #1
d03e7e60:	89a3      	ldrh	r3, [r4, #12]
d03e7e62:	d106      	bne.n	d03e7e72 <__sflush_r+0x66>
d03e7e64:	6829      	ldr	r1, [r5, #0]
d03e7e66:	291d      	cmp	r1, #29
d03e7e68:	d82c      	bhi.n	d03e7ec4 <__sflush_r+0xb8>
d03e7e6a:	4a2a      	ldr	r2, [pc, #168]	; (d03e7f14 <__sflush_r+0x108>)
d03e7e6c:	40ca      	lsrs	r2, r1
d03e7e6e:	07d6      	lsls	r6, r2, #31
d03e7e70:	d528      	bpl.n	d03e7ec4 <__sflush_r+0xb8>
d03e7e72:	2200      	movs	r2, #0
d03e7e74:	6062      	str	r2, [r4, #4]
d03e7e76:	04d9      	lsls	r1, r3, #19
d03e7e78:	6922      	ldr	r2, [r4, #16]
d03e7e7a:	6022      	str	r2, [r4, #0]
d03e7e7c:	d504      	bpl.n	d03e7e88 <__sflush_r+0x7c>
d03e7e7e:	1c42      	adds	r2, r0, #1
d03e7e80:	d101      	bne.n	d03e7e86 <__sflush_r+0x7a>
d03e7e82:	682b      	ldr	r3, [r5, #0]
d03e7e84:	b903      	cbnz	r3, d03e7e88 <__sflush_r+0x7c>
d03e7e86:	6560      	str	r0, [r4, #84]	; 0x54
d03e7e88:	6b61      	ldr	r1, [r4, #52]	; 0x34
d03e7e8a:	602f      	str	r7, [r5, #0]
d03e7e8c:	2900      	cmp	r1, #0
d03e7e8e:	d0ca      	beq.n	d03e7e26 <__sflush_r+0x1a>
d03e7e90:	f104 0344 	add.w	r3, r4, #68	; 0x44
d03e7e94:	4299      	cmp	r1, r3
d03e7e96:	d002      	beq.n	d03e7e9e <__sflush_r+0x92>
d03e7e98:	4628      	mov	r0, r5
d03e7e9a:	f7ff fe03 	bl	d03e7aa4 <_free_r>
d03e7e9e:	2000      	movs	r0, #0
d03e7ea0:	6360      	str	r0, [r4, #52]	; 0x34
d03e7ea2:	e7c1      	b.n	d03e7e28 <__sflush_r+0x1c>
d03e7ea4:	6a21      	ldr	r1, [r4, #32]
d03e7ea6:	2301      	movs	r3, #1
d03e7ea8:	4628      	mov	r0, r5
d03e7eaa:	47b0      	blx	r6
d03e7eac:	1c41      	adds	r1, r0, #1
d03e7eae:	d1c7      	bne.n	d03e7e40 <__sflush_r+0x34>
d03e7eb0:	682b      	ldr	r3, [r5, #0]
d03e7eb2:	2b00      	cmp	r3, #0
d03e7eb4:	d0c4      	beq.n	d03e7e40 <__sflush_r+0x34>
d03e7eb6:	2b1d      	cmp	r3, #29
d03e7eb8:	d001      	beq.n	d03e7ebe <__sflush_r+0xb2>
d03e7eba:	2b16      	cmp	r3, #22
d03e7ebc:	d101      	bne.n	d03e7ec2 <__sflush_r+0xb6>
d03e7ebe:	602f      	str	r7, [r5, #0]
d03e7ec0:	e7b1      	b.n	d03e7e26 <__sflush_r+0x1a>
d03e7ec2:	89a3      	ldrh	r3, [r4, #12]
d03e7ec4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d03e7ec8:	81a3      	strh	r3, [r4, #12]
d03e7eca:	e7ad      	b.n	d03e7e28 <__sflush_r+0x1c>
d03e7ecc:	690f      	ldr	r7, [r1, #16]
d03e7ece:	2f00      	cmp	r7, #0
d03e7ed0:	d0a9      	beq.n	d03e7e26 <__sflush_r+0x1a>
d03e7ed2:	0793      	lsls	r3, r2, #30
d03e7ed4:	680e      	ldr	r6, [r1, #0]
d03e7ed6:	bf08      	it	eq
d03e7ed8:	694b      	ldreq	r3, [r1, #20]
d03e7eda:	600f      	str	r7, [r1, #0]
d03e7edc:	bf18      	it	ne
d03e7ede:	2300      	movne	r3, #0
d03e7ee0:	eba6 0807 	sub.w	r8, r6, r7
d03e7ee4:	608b      	str	r3, [r1, #8]
d03e7ee6:	f1b8 0f00 	cmp.w	r8, #0
d03e7eea:	dd9c      	ble.n	d03e7e26 <__sflush_r+0x1a>
d03e7eec:	6a21      	ldr	r1, [r4, #32]
d03e7eee:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d03e7ef0:	4643      	mov	r3, r8
d03e7ef2:	463a      	mov	r2, r7
d03e7ef4:	4628      	mov	r0, r5
d03e7ef6:	47b0      	blx	r6
d03e7ef8:	2800      	cmp	r0, #0
d03e7efa:	dc06      	bgt.n	d03e7f0a <__sflush_r+0xfe>
d03e7efc:	89a3      	ldrh	r3, [r4, #12]
d03e7efe:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d03e7f02:	81a3      	strh	r3, [r4, #12]
d03e7f04:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e7f08:	e78e      	b.n	d03e7e28 <__sflush_r+0x1c>
d03e7f0a:	4407      	add	r7, r0
d03e7f0c:	eba8 0800 	sub.w	r8, r8, r0
d03e7f10:	e7e9      	b.n	d03e7ee6 <__sflush_r+0xda>
d03e7f12:	bf00      	nop
d03e7f14:	20400001 	.word	0x20400001

d03e7f18 <_fflush_r>:
d03e7f18:	b538      	push	{r3, r4, r5, lr}
d03e7f1a:	690b      	ldr	r3, [r1, #16]
d03e7f1c:	4605      	mov	r5, r0
d03e7f1e:	460c      	mov	r4, r1
d03e7f20:	b913      	cbnz	r3, d03e7f28 <_fflush_r+0x10>
d03e7f22:	2500      	movs	r5, #0
d03e7f24:	4628      	mov	r0, r5
d03e7f26:	bd38      	pop	{r3, r4, r5, pc}
d03e7f28:	b118      	cbz	r0, d03e7f32 <_fflush_r+0x1a>
d03e7f2a:	6983      	ldr	r3, [r0, #24]
d03e7f2c:	b90b      	cbnz	r3, d03e7f32 <_fflush_r+0x1a>
d03e7f2e:	f000 f887 	bl	d03e8040 <__sinit>
d03e7f32:	4b14      	ldr	r3, [pc, #80]	; (d03e7f84 <_fflush_r+0x6c>)
d03e7f34:	429c      	cmp	r4, r3
d03e7f36:	d11b      	bne.n	d03e7f70 <_fflush_r+0x58>
d03e7f38:	686c      	ldr	r4, [r5, #4]
d03e7f3a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d03e7f3e:	2b00      	cmp	r3, #0
d03e7f40:	d0ef      	beq.n	d03e7f22 <_fflush_r+0xa>
d03e7f42:	6e62      	ldr	r2, [r4, #100]	; 0x64
d03e7f44:	07d0      	lsls	r0, r2, #31
d03e7f46:	d404      	bmi.n	d03e7f52 <_fflush_r+0x3a>
d03e7f48:	0599      	lsls	r1, r3, #22
d03e7f4a:	d402      	bmi.n	d03e7f52 <_fflush_r+0x3a>
d03e7f4c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e7f4e:	f000 f915 	bl	d03e817c <__retarget_lock_acquire_recursive>
d03e7f52:	4628      	mov	r0, r5
d03e7f54:	4621      	mov	r1, r4
d03e7f56:	f7ff ff59 	bl	d03e7e0c <__sflush_r>
d03e7f5a:	6e63      	ldr	r3, [r4, #100]	; 0x64
d03e7f5c:	07da      	lsls	r2, r3, #31
d03e7f5e:	4605      	mov	r5, r0
d03e7f60:	d4e0      	bmi.n	d03e7f24 <_fflush_r+0xc>
d03e7f62:	89a3      	ldrh	r3, [r4, #12]
d03e7f64:	059b      	lsls	r3, r3, #22
d03e7f66:	d4dd      	bmi.n	d03e7f24 <_fflush_r+0xc>
d03e7f68:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e7f6a:	f000 f908 	bl	d03e817e <__retarget_lock_release_recursive>
d03e7f6e:	e7d9      	b.n	d03e7f24 <_fflush_r+0xc>
d03e7f70:	4b05      	ldr	r3, [pc, #20]	; (d03e7f88 <_fflush_r+0x70>)
d03e7f72:	429c      	cmp	r4, r3
d03e7f74:	d101      	bne.n	d03e7f7a <_fflush_r+0x62>
d03e7f76:	68ac      	ldr	r4, [r5, #8]
d03e7f78:	e7df      	b.n	d03e7f3a <_fflush_r+0x22>
d03e7f7a:	4b04      	ldr	r3, [pc, #16]	; (d03e7f8c <_fflush_r+0x74>)
d03e7f7c:	429c      	cmp	r4, r3
d03e7f7e:	bf08      	it	eq
d03e7f80:	68ec      	ldreq	r4, [r5, #12]
d03e7f82:	e7da      	b.n	d03e7f3a <_fflush_r+0x22>
d03e7f84:	d03e9c40 	.word	0xd03e9c40
d03e7f88:	d03e9c60 	.word	0xd03e9c60
d03e7f8c:	d03e9c20 	.word	0xd03e9c20

d03e7f90 <std>:
d03e7f90:	2300      	movs	r3, #0
d03e7f92:	b510      	push	{r4, lr}
d03e7f94:	4604      	mov	r4, r0
d03e7f96:	e9c0 3300 	strd	r3, r3, [r0]
d03e7f9a:	e9c0 3304 	strd	r3, r3, [r0, #16]
d03e7f9e:	6083      	str	r3, [r0, #8]
d03e7fa0:	8181      	strh	r1, [r0, #12]
d03e7fa2:	6643      	str	r3, [r0, #100]	; 0x64
d03e7fa4:	81c2      	strh	r2, [r0, #14]
d03e7fa6:	6183      	str	r3, [r0, #24]
d03e7fa8:	4619      	mov	r1, r3
d03e7faa:	2208      	movs	r2, #8
d03e7fac:	305c      	adds	r0, #92	; 0x5c
d03e7fae:	f7ff fd71 	bl	d03e7a94 <memset>
d03e7fb2:	4b05      	ldr	r3, [pc, #20]	; (d03e7fc8 <std+0x38>)
d03e7fb4:	6263      	str	r3, [r4, #36]	; 0x24
d03e7fb6:	4b05      	ldr	r3, [pc, #20]	; (d03e7fcc <std+0x3c>)
d03e7fb8:	62a3      	str	r3, [r4, #40]	; 0x28
d03e7fba:	4b05      	ldr	r3, [pc, #20]	; (d03e7fd0 <std+0x40>)
d03e7fbc:	62e3      	str	r3, [r4, #44]	; 0x2c
d03e7fbe:	4b05      	ldr	r3, [pc, #20]	; (d03e7fd4 <std+0x44>)
d03e7fc0:	6224      	str	r4, [r4, #32]
d03e7fc2:	6323      	str	r3, [r4, #48]	; 0x30
d03e7fc4:	bd10      	pop	{r4, pc}
d03e7fc6:	bf00      	nop
d03e7fc8:	d03e87c1 	.word	0xd03e87c1
d03e7fcc:	d03e87e3 	.word	0xd03e87e3
d03e7fd0:	d03e881b 	.word	0xd03e881b
d03e7fd4:	d03e883f 	.word	0xd03e883f

d03e7fd8 <_cleanup_r>:
d03e7fd8:	4901      	ldr	r1, [pc, #4]	; (d03e7fe0 <_cleanup_r+0x8>)
d03e7fda:	f000 b8af 	b.w	d03e813c <_fwalk_reent>
d03e7fde:	bf00      	nop
d03e7fe0:	d03e7f19 	.word	0xd03e7f19

d03e7fe4 <__sfmoreglue>:
d03e7fe4:	b570      	push	{r4, r5, r6, lr}
d03e7fe6:	1e4a      	subs	r2, r1, #1
d03e7fe8:	2568      	movs	r5, #104	; 0x68
d03e7fea:	4355      	muls	r5, r2
d03e7fec:	460e      	mov	r6, r1
d03e7fee:	f105 0174 	add.w	r1, r5, #116	; 0x74
d03e7ff2:	f7ff fda7 	bl	d03e7b44 <_malloc_r>
d03e7ff6:	4604      	mov	r4, r0
d03e7ff8:	b140      	cbz	r0, d03e800c <__sfmoreglue+0x28>
d03e7ffa:	2100      	movs	r1, #0
d03e7ffc:	e9c0 1600 	strd	r1, r6, [r0]
d03e8000:	300c      	adds	r0, #12
d03e8002:	60a0      	str	r0, [r4, #8]
d03e8004:	f105 0268 	add.w	r2, r5, #104	; 0x68
d03e8008:	f7ff fd44 	bl	d03e7a94 <memset>
d03e800c:	4620      	mov	r0, r4
d03e800e:	bd70      	pop	{r4, r5, r6, pc}

d03e8010 <__sfp_lock_acquire>:
d03e8010:	4801      	ldr	r0, [pc, #4]	; (d03e8018 <__sfp_lock_acquire+0x8>)
d03e8012:	f000 b8b3 	b.w	d03e817c <__retarget_lock_acquire_recursive>
d03e8016:	bf00      	nop
d03e8018:	d03ea9a8 	.word	0xd03ea9a8

d03e801c <__sfp_lock_release>:
d03e801c:	4801      	ldr	r0, [pc, #4]	; (d03e8024 <__sfp_lock_release+0x8>)
d03e801e:	f000 b8ae 	b.w	d03e817e <__retarget_lock_release_recursive>
d03e8022:	bf00      	nop
d03e8024:	d03ea9a8 	.word	0xd03ea9a8

d03e8028 <__sinit_lock_acquire>:
d03e8028:	4801      	ldr	r0, [pc, #4]	; (d03e8030 <__sinit_lock_acquire+0x8>)
d03e802a:	f000 b8a7 	b.w	d03e817c <__retarget_lock_acquire_recursive>
d03e802e:	bf00      	nop
d03e8030:	d03ea9a3 	.word	0xd03ea9a3

d03e8034 <__sinit_lock_release>:
d03e8034:	4801      	ldr	r0, [pc, #4]	; (d03e803c <__sinit_lock_release+0x8>)
d03e8036:	f000 b8a2 	b.w	d03e817e <__retarget_lock_release_recursive>
d03e803a:	bf00      	nop
d03e803c:	d03ea9a3 	.word	0xd03ea9a3

d03e8040 <__sinit>:
d03e8040:	b510      	push	{r4, lr}
d03e8042:	4604      	mov	r4, r0
d03e8044:	f7ff fff0 	bl	d03e8028 <__sinit_lock_acquire>
d03e8048:	69a3      	ldr	r3, [r4, #24]
d03e804a:	b11b      	cbz	r3, d03e8054 <__sinit+0x14>
d03e804c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d03e8050:	f7ff bff0 	b.w	d03e8034 <__sinit_lock_release>
d03e8054:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d03e8058:	6523      	str	r3, [r4, #80]	; 0x50
d03e805a:	4b13      	ldr	r3, [pc, #76]	; (d03e80a8 <__sinit+0x68>)
d03e805c:	4a13      	ldr	r2, [pc, #76]	; (d03e80ac <__sinit+0x6c>)
d03e805e:	681b      	ldr	r3, [r3, #0]
d03e8060:	62a2      	str	r2, [r4, #40]	; 0x28
d03e8062:	42a3      	cmp	r3, r4
d03e8064:	bf04      	itt	eq
d03e8066:	2301      	moveq	r3, #1
d03e8068:	61a3      	streq	r3, [r4, #24]
d03e806a:	4620      	mov	r0, r4
d03e806c:	f000 f820 	bl	d03e80b0 <__sfp>
d03e8070:	6060      	str	r0, [r4, #4]
d03e8072:	4620      	mov	r0, r4
d03e8074:	f000 f81c 	bl	d03e80b0 <__sfp>
d03e8078:	60a0      	str	r0, [r4, #8]
d03e807a:	4620      	mov	r0, r4
d03e807c:	f000 f818 	bl	d03e80b0 <__sfp>
d03e8080:	2200      	movs	r2, #0
d03e8082:	60e0      	str	r0, [r4, #12]
d03e8084:	2104      	movs	r1, #4
d03e8086:	6860      	ldr	r0, [r4, #4]
d03e8088:	f7ff ff82 	bl	d03e7f90 <std>
d03e808c:	68a0      	ldr	r0, [r4, #8]
d03e808e:	2201      	movs	r2, #1
d03e8090:	2109      	movs	r1, #9
d03e8092:	f7ff ff7d 	bl	d03e7f90 <std>
d03e8096:	68e0      	ldr	r0, [r4, #12]
d03e8098:	2202      	movs	r2, #2
d03e809a:	2112      	movs	r1, #18
d03e809c:	f7ff ff78 	bl	d03e7f90 <std>
d03e80a0:	2301      	movs	r3, #1
d03e80a2:	61a3      	str	r3, [r4, #24]
d03e80a4:	e7d2      	b.n	d03e804c <__sinit+0xc>
d03e80a6:	bf00      	nop
d03e80a8:	d03e9c1c 	.word	0xd03e9c1c
d03e80ac:	d03e7fd9 	.word	0xd03e7fd9

d03e80b0 <__sfp>:
d03e80b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e80b2:	4607      	mov	r7, r0
d03e80b4:	f7ff ffac 	bl	d03e8010 <__sfp_lock_acquire>
d03e80b8:	4b1e      	ldr	r3, [pc, #120]	; (d03e8134 <__sfp+0x84>)
d03e80ba:	681e      	ldr	r6, [r3, #0]
d03e80bc:	69b3      	ldr	r3, [r6, #24]
d03e80be:	b913      	cbnz	r3, d03e80c6 <__sfp+0x16>
d03e80c0:	4630      	mov	r0, r6
d03e80c2:	f7ff ffbd 	bl	d03e8040 <__sinit>
d03e80c6:	3648      	adds	r6, #72	; 0x48
d03e80c8:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d03e80cc:	3b01      	subs	r3, #1
d03e80ce:	d503      	bpl.n	d03e80d8 <__sfp+0x28>
d03e80d0:	6833      	ldr	r3, [r6, #0]
d03e80d2:	b30b      	cbz	r3, d03e8118 <__sfp+0x68>
d03e80d4:	6836      	ldr	r6, [r6, #0]
d03e80d6:	e7f7      	b.n	d03e80c8 <__sfp+0x18>
d03e80d8:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d03e80dc:	b9d5      	cbnz	r5, d03e8114 <__sfp+0x64>
d03e80de:	4b16      	ldr	r3, [pc, #88]	; (d03e8138 <__sfp+0x88>)
d03e80e0:	60e3      	str	r3, [r4, #12]
d03e80e2:	f104 0058 	add.w	r0, r4, #88	; 0x58
d03e80e6:	6665      	str	r5, [r4, #100]	; 0x64
d03e80e8:	f000 f847 	bl	d03e817a <__retarget_lock_init_recursive>
d03e80ec:	f7ff ff96 	bl	d03e801c <__sfp_lock_release>
d03e80f0:	e9c4 5501 	strd	r5, r5, [r4, #4]
d03e80f4:	e9c4 5504 	strd	r5, r5, [r4, #16]
d03e80f8:	6025      	str	r5, [r4, #0]
d03e80fa:	61a5      	str	r5, [r4, #24]
d03e80fc:	2208      	movs	r2, #8
d03e80fe:	4629      	mov	r1, r5
d03e8100:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d03e8104:	f7ff fcc6 	bl	d03e7a94 <memset>
d03e8108:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d03e810c:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d03e8110:	4620      	mov	r0, r4
d03e8112:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e8114:	3468      	adds	r4, #104	; 0x68
d03e8116:	e7d9      	b.n	d03e80cc <__sfp+0x1c>
d03e8118:	2104      	movs	r1, #4
d03e811a:	4638      	mov	r0, r7
d03e811c:	f7ff ff62 	bl	d03e7fe4 <__sfmoreglue>
d03e8120:	4604      	mov	r4, r0
d03e8122:	6030      	str	r0, [r6, #0]
d03e8124:	2800      	cmp	r0, #0
d03e8126:	d1d5      	bne.n	d03e80d4 <__sfp+0x24>
d03e8128:	f7ff ff78 	bl	d03e801c <__sfp_lock_release>
d03e812c:	230c      	movs	r3, #12
d03e812e:	603b      	str	r3, [r7, #0]
d03e8130:	e7ee      	b.n	d03e8110 <__sfp+0x60>
d03e8132:	bf00      	nop
d03e8134:	d03e9c1c 	.word	0xd03e9c1c
d03e8138:	ffff0001 	.word	0xffff0001

d03e813c <_fwalk_reent>:
d03e813c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d03e8140:	4606      	mov	r6, r0
d03e8142:	4688      	mov	r8, r1
d03e8144:	f100 0448 	add.w	r4, r0, #72	; 0x48
d03e8148:	2700      	movs	r7, #0
d03e814a:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d03e814e:	f1b9 0901 	subs.w	r9, r9, #1
d03e8152:	d505      	bpl.n	d03e8160 <_fwalk_reent+0x24>
d03e8154:	6824      	ldr	r4, [r4, #0]
d03e8156:	2c00      	cmp	r4, #0
d03e8158:	d1f7      	bne.n	d03e814a <_fwalk_reent+0xe>
d03e815a:	4638      	mov	r0, r7
d03e815c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d03e8160:	89ab      	ldrh	r3, [r5, #12]
d03e8162:	2b01      	cmp	r3, #1
d03e8164:	d907      	bls.n	d03e8176 <_fwalk_reent+0x3a>
d03e8166:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d03e816a:	3301      	adds	r3, #1
d03e816c:	d003      	beq.n	d03e8176 <_fwalk_reent+0x3a>
d03e816e:	4629      	mov	r1, r5
d03e8170:	4630      	mov	r0, r6
d03e8172:	47c0      	blx	r8
d03e8174:	4307      	orrs	r7, r0
d03e8176:	3568      	adds	r5, #104	; 0x68
d03e8178:	e7e9      	b.n	d03e814e <_fwalk_reent+0x12>

d03e817a <__retarget_lock_init_recursive>:
d03e817a:	4770      	bx	lr

d03e817c <__retarget_lock_acquire_recursive>:
d03e817c:	4770      	bx	lr

d03e817e <__retarget_lock_release_recursive>:
d03e817e:	4770      	bx	lr

d03e8180 <__swhatbuf_r>:
d03e8180:	b570      	push	{r4, r5, r6, lr}
d03e8182:	460e      	mov	r6, r1
d03e8184:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e8188:	2900      	cmp	r1, #0
d03e818a:	b096      	sub	sp, #88	; 0x58
d03e818c:	4614      	mov	r4, r2
d03e818e:	461d      	mov	r5, r3
d03e8190:	da07      	bge.n	d03e81a2 <__swhatbuf_r+0x22>
d03e8192:	2300      	movs	r3, #0
d03e8194:	602b      	str	r3, [r5, #0]
d03e8196:	89b3      	ldrh	r3, [r6, #12]
d03e8198:	061a      	lsls	r2, r3, #24
d03e819a:	d410      	bmi.n	d03e81be <__swhatbuf_r+0x3e>
d03e819c:	f44f 6380 	mov.w	r3, #1024	; 0x400
d03e81a0:	e00e      	b.n	d03e81c0 <__swhatbuf_r+0x40>
d03e81a2:	466a      	mov	r2, sp
d03e81a4:	f000 fb60 	bl	d03e8868 <_fstat_r>
d03e81a8:	2800      	cmp	r0, #0
d03e81aa:	dbf2      	blt.n	d03e8192 <__swhatbuf_r+0x12>
d03e81ac:	9a01      	ldr	r2, [sp, #4]
d03e81ae:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d03e81b2:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d03e81b6:	425a      	negs	r2, r3
d03e81b8:	415a      	adcs	r2, r3
d03e81ba:	602a      	str	r2, [r5, #0]
d03e81bc:	e7ee      	b.n	d03e819c <__swhatbuf_r+0x1c>
d03e81be:	2340      	movs	r3, #64	; 0x40
d03e81c0:	2000      	movs	r0, #0
d03e81c2:	6023      	str	r3, [r4, #0]
d03e81c4:	b016      	add	sp, #88	; 0x58
d03e81c6:	bd70      	pop	{r4, r5, r6, pc}

d03e81c8 <__malloc_lock>:
d03e81c8:	4801      	ldr	r0, [pc, #4]	; (d03e81d0 <__malloc_lock+0x8>)
d03e81ca:	f7ff bfd7 	b.w	d03e817c <__retarget_lock_acquire_recursive>
d03e81ce:	bf00      	nop
d03e81d0:	d03ea9a4 	.word	0xd03ea9a4

d03e81d4 <__malloc_unlock>:
d03e81d4:	4801      	ldr	r0, [pc, #4]	; (d03e81dc <__malloc_unlock+0x8>)
d03e81d6:	f7ff bfd2 	b.w	d03e817e <__retarget_lock_release_recursive>
d03e81da:	bf00      	nop
d03e81dc:	d03ea9a4 	.word	0xd03ea9a4

d03e81e0 <__ssputs_r>:
d03e81e0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03e81e4:	688e      	ldr	r6, [r1, #8]
d03e81e6:	429e      	cmp	r6, r3
d03e81e8:	4682      	mov	sl, r0
d03e81ea:	460c      	mov	r4, r1
d03e81ec:	4690      	mov	r8, r2
d03e81ee:	461f      	mov	r7, r3
d03e81f0:	d838      	bhi.n	d03e8264 <__ssputs_r+0x84>
d03e81f2:	898a      	ldrh	r2, [r1, #12]
d03e81f4:	f412 6f90 	tst.w	r2, #1152	; 0x480
d03e81f8:	d032      	beq.n	d03e8260 <__ssputs_r+0x80>
d03e81fa:	6825      	ldr	r5, [r4, #0]
d03e81fc:	6909      	ldr	r1, [r1, #16]
d03e81fe:	eba5 0901 	sub.w	r9, r5, r1
d03e8202:	6965      	ldr	r5, [r4, #20]
d03e8204:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d03e8208:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d03e820c:	3301      	adds	r3, #1
d03e820e:	444b      	add	r3, r9
d03e8210:	106d      	asrs	r5, r5, #1
d03e8212:	429d      	cmp	r5, r3
d03e8214:	bf38      	it	cc
d03e8216:	461d      	movcc	r5, r3
d03e8218:	0553      	lsls	r3, r2, #21
d03e821a:	d531      	bpl.n	d03e8280 <__ssputs_r+0xa0>
d03e821c:	4629      	mov	r1, r5
d03e821e:	f7ff fc91 	bl	d03e7b44 <_malloc_r>
d03e8222:	4606      	mov	r6, r0
d03e8224:	b950      	cbnz	r0, d03e823c <__ssputs_r+0x5c>
d03e8226:	230c      	movs	r3, #12
d03e8228:	f8ca 3000 	str.w	r3, [sl]
d03e822c:	89a3      	ldrh	r3, [r4, #12]
d03e822e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d03e8232:	81a3      	strh	r3, [r4, #12]
d03e8234:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e8238:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03e823c:	6921      	ldr	r1, [r4, #16]
d03e823e:	464a      	mov	r2, r9
d03e8240:	f7ff fc1a 	bl	d03e7a78 <memcpy>
d03e8244:	89a3      	ldrh	r3, [r4, #12]
d03e8246:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d03e824a:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d03e824e:	81a3      	strh	r3, [r4, #12]
d03e8250:	6126      	str	r6, [r4, #16]
d03e8252:	6165      	str	r5, [r4, #20]
d03e8254:	444e      	add	r6, r9
d03e8256:	eba5 0509 	sub.w	r5, r5, r9
d03e825a:	6026      	str	r6, [r4, #0]
d03e825c:	60a5      	str	r5, [r4, #8]
d03e825e:	463e      	mov	r6, r7
d03e8260:	42be      	cmp	r6, r7
d03e8262:	d900      	bls.n	d03e8266 <__ssputs_r+0x86>
d03e8264:	463e      	mov	r6, r7
d03e8266:	4632      	mov	r2, r6
d03e8268:	6820      	ldr	r0, [r4, #0]
d03e826a:	4641      	mov	r1, r8
d03e826c:	f000 fb70 	bl	d03e8950 <memmove>
d03e8270:	68a3      	ldr	r3, [r4, #8]
d03e8272:	6822      	ldr	r2, [r4, #0]
d03e8274:	1b9b      	subs	r3, r3, r6
d03e8276:	4432      	add	r2, r6
d03e8278:	60a3      	str	r3, [r4, #8]
d03e827a:	6022      	str	r2, [r4, #0]
d03e827c:	2000      	movs	r0, #0
d03e827e:	e7db      	b.n	d03e8238 <__ssputs_r+0x58>
d03e8280:	462a      	mov	r2, r5
d03e8282:	f000 fb7f 	bl	d03e8984 <_realloc_r>
d03e8286:	4606      	mov	r6, r0
d03e8288:	2800      	cmp	r0, #0
d03e828a:	d1e1      	bne.n	d03e8250 <__ssputs_r+0x70>
d03e828c:	6921      	ldr	r1, [r4, #16]
d03e828e:	4650      	mov	r0, sl
d03e8290:	f7ff fc08 	bl	d03e7aa4 <_free_r>
d03e8294:	e7c7      	b.n	d03e8226 <__ssputs_r+0x46>
	...

d03e8298 <_svfiprintf_r>:
d03e8298:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e829c:	4698      	mov	r8, r3
d03e829e:	898b      	ldrh	r3, [r1, #12]
d03e82a0:	061b      	lsls	r3, r3, #24
d03e82a2:	b09d      	sub	sp, #116	; 0x74
d03e82a4:	4607      	mov	r7, r0
d03e82a6:	460d      	mov	r5, r1
d03e82a8:	4614      	mov	r4, r2
d03e82aa:	d50e      	bpl.n	d03e82ca <_svfiprintf_r+0x32>
d03e82ac:	690b      	ldr	r3, [r1, #16]
d03e82ae:	b963      	cbnz	r3, d03e82ca <_svfiprintf_r+0x32>
d03e82b0:	2140      	movs	r1, #64	; 0x40
d03e82b2:	f7ff fc47 	bl	d03e7b44 <_malloc_r>
d03e82b6:	6028      	str	r0, [r5, #0]
d03e82b8:	6128      	str	r0, [r5, #16]
d03e82ba:	b920      	cbnz	r0, d03e82c6 <_svfiprintf_r+0x2e>
d03e82bc:	230c      	movs	r3, #12
d03e82be:	603b      	str	r3, [r7, #0]
d03e82c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e82c4:	e0d1      	b.n	d03e846a <_svfiprintf_r+0x1d2>
d03e82c6:	2340      	movs	r3, #64	; 0x40
d03e82c8:	616b      	str	r3, [r5, #20]
d03e82ca:	2300      	movs	r3, #0
d03e82cc:	9309      	str	r3, [sp, #36]	; 0x24
d03e82ce:	2320      	movs	r3, #32
d03e82d0:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d03e82d4:	f8cd 800c 	str.w	r8, [sp, #12]
d03e82d8:	2330      	movs	r3, #48	; 0x30
d03e82da:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d03e8484 <_svfiprintf_r+0x1ec>
d03e82de:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d03e82e2:	f04f 0901 	mov.w	r9, #1
d03e82e6:	4623      	mov	r3, r4
d03e82e8:	469a      	mov	sl, r3
d03e82ea:	f813 2b01 	ldrb.w	r2, [r3], #1
d03e82ee:	b10a      	cbz	r2, d03e82f4 <_svfiprintf_r+0x5c>
d03e82f0:	2a25      	cmp	r2, #37	; 0x25
d03e82f2:	d1f9      	bne.n	d03e82e8 <_svfiprintf_r+0x50>
d03e82f4:	ebba 0b04 	subs.w	fp, sl, r4
d03e82f8:	d00b      	beq.n	d03e8312 <_svfiprintf_r+0x7a>
d03e82fa:	465b      	mov	r3, fp
d03e82fc:	4622      	mov	r2, r4
d03e82fe:	4629      	mov	r1, r5
d03e8300:	4638      	mov	r0, r7
d03e8302:	f7ff ff6d 	bl	d03e81e0 <__ssputs_r>
d03e8306:	3001      	adds	r0, #1
d03e8308:	f000 80aa 	beq.w	d03e8460 <_svfiprintf_r+0x1c8>
d03e830c:	9a09      	ldr	r2, [sp, #36]	; 0x24
d03e830e:	445a      	add	r2, fp
d03e8310:	9209      	str	r2, [sp, #36]	; 0x24
d03e8312:	f89a 3000 	ldrb.w	r3, [sl]
d03e8316:	2b00      	cmp	r3, #0
d03e8318:	f000 80a2 	beq.w	d03e8460 <_svfiprintf_r+0x1c8>
d03e831c:	2300      	movs	r3, #0
d03e831e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d03e8322:	e9cd 2305 	strd	r2, r3, [sp, #20]
d03e8326:	f10a 0a01 	add.w	sl, sl, #1
d03e832a:	9304      	str	r3, [sp, #16]
d03e832c:	9307      	str	r3, [sp, #28]
d03e832e:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d03e8332:	931a      	str	r3, [sp, #104]	; 0x68
d03e8334:	4654      	mov	r4, sl
d03e8336:	2205      	movs	r2, #5
d03e8338:	f814 1b01 	ldrb.w	r1, [r4], #1
d03e833c:	4851      	ldr	r0, [pc, #324]	; (d03e8484 <_svfiprintf_r+0x1ec>)
d03e833e:	f000 fab7 	bl	d03e88b0 <memchr>
d03e8342:	9a04      	ldr	r2, [sp, #16]
d03e8344:	b9d8      	cbnz	r0, d03e837e <_svfiprintf_r+0xe6>
d03e8346:	06d0      	lsls	r0, r2, #27
d03e8348:	bf44      	itt	mi
d03e834a:	2320      	movmi	r3, #32
d03e834c:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d03e8350:	0711      	lsls	r1, r2, #28
d03e8352:	bf44      	itt	mi
d03e8354:	232b      	movmi	r3, #43	; 0x2b
d03e8356:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d03e835a:	f89a 3000 	ldrb.w	r3, [sl]
d03e835e:	2b2a      	cmp	r3, #42	; 0x2a
d03e8360:	d015      	beq.n	d03e838e <_svfiprintf_r+0xf6>
d03e8362:	9a07      	ldr	r2, [sp, #28]
d03e8364:	4654      	mov	r4, sl
d03e8366:	2000      	movs	r0, #0
d03e8368:	f04f 0c0a 	mov.w	ip, #10
d03e836c:	4621      	mov	r1, r4
d03e836e:	f811 3b01 	ldrb.w	r3, [r1], #1
d03e8372:	3b30      	subs	r3, #48	; 0x30
d03e8374:	2b09      	cmp	r3, #9
d03e8376:	d94e      	bls.n	d03e8416 <_svfiprintf_r+0x17e>
d03e8378:	b1b0      	cbz	r0, d03e83a8 <_svfiprintf_r+0x110>
d03e837a:	9207      	str	r2, [sp, #28]
d03e837c:	e014      	b.n	d03e83a8 <_svfiprintf_r+0x110>
d03e837e:	eba0 0308 	sub.w	r3, r0, r8
d03e8382:	fa09 f303 	lsl.w	r3, r9, r3
d03e8386:	4313      	orrs	r3, r2
d03e8388:	9304      	str	r3, [sp, #16]
d03e838a:	46a2      	mov	sl, r4
d03e838c:	e7d2      	b.n	d03e8334 <_svfiprintf_r+0x9c>
d03e838e:	9b03      	ldr	r3, [sp, #12]
d03e8390:	1d19      	adds	r1, r3, #4
d03e8392:	681b      	ldr	r3, [r3, #0]
d03e8394:	9103      	str	r1, [sp, #12]
d03e8396:	2b00      	cmp	r3, #0
d03e8398:	bfbb      	ittet	lt
d03e839a:	425b      	neglt	r3, r3
d03e839c:	f042 0202 	orrlt.w	r2, r2, #2
d03e83a0:	9307      	strge	r3, [sp, #28]
d03e83a2:	9307      	strlt	r3, [sp, #28]
d03e83a4:	bfb8      	it	lt
d03e83a6:	9204      	strlt	r2, [sp, #16]
d03e83a8:	7823      	ldrb	r3, [r4, #0]
d03e83aa:	2b2e      	cmp	r3, #46	; 0x2e
d03e83ac:	d10c      	bne.n	d03e83c8 <_svfiprintf_r+0x130>
d03e83ae:	7863      	ldrb	r3, [r4, #1]
d03e83b0:	2b2a      	cmp	r3, #42	; 0x2a
d03e83b2:	d135      	bne.n	d03e8420 <_svfiprintf_r+0x188>
d03e83b4:	9b03      	ldr	r3, [sp, #12]
d03e83b6:	1d1a      	adds	r2, r3, #4
d03e83b8:	681b      	ldr	r3, [r3, #0]
d03e83ba:	9203      	str	r2, [sp, #12]
d03e83bc:	2b00      	cmp	r3, #0
d03e83be:	bfb8      	it	lt
d03e83c0:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d03e83c4:	3402      	adds	r4, #2
d03e83c6:	9305      	str	r3, [sp, #20]
d03e83c8:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d03e8494 <_svfiprintf_r+0x1fc>
d03e83cc:	7821      	ldrb	r1, [r4, #0]
d03e83ce:	2203      	movs	r2, #3
d03e83d0:	4650      	mov	r0, sl
d03e83d2:	f000 fa6d 	bl	d03e88b0 <memchr>
d03e83d6:	b140      	cbz	r0, d03e83ea <_svfiprintf_r+0x152>
d03e83d8:	2340      	movs	r3, #64	; 0x40
d03e83da:	eba0 000a 	sub.w	r0, r0, sl
d03e83de:	fa03 f000 	lsl.w	r0, r3, r0
d03e83e2:	9b04      	ldr	r3, [sp, #16]
d03e83e4:	4303      	orrs	r3, r0
d03e83e6:	3401      	adds	r4, #1
d03e83e8:	9304      	str	r3, [sp, #16]
d03e83ea:	f814 1b01 	ldrb.w	r1, [r4], #1
d03e83ee:	4826      	ldr	r0, [pc, #152]	; (d03e8488 <_svfiprintf_r+0x1f0>)
d03e83f0:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d03e83f4:	2206      	movs	r2, #6
d03e83f6:	f000 fa5b 	bl	d03e88b0 <memchr>
d03e83fa:	2800      	cmp	r0, #0
d03e83fc:	d038      	beq.n	d03e8470 <_svfiprintf_r+0x1d8>
d03e83fe:	4b23      	ldr	r3, [pc, #140]	; (d03e848c <_svfiprintf_r+0x1f4>)
d03e8400:	bb1b      	cbnz	r3, d03e844a <_svfiprintf_r+0x1b2>
d03e8402:	9b03      	ldr	r3, [sp, #12]
d03e8404:	3307      	adds	r3, #7
d03e8406:	f023 0307 	bic.w	r3, r3, #7
d03e840a:	3308      	adds	r3, #8
d03e840c:	9303      	str	r3, [sp, #12]
d03e840e:	9b09      	ldr	r3, [sp, #36]	; 0x24
d03e8410:	4433      	add	r3, r6
d03e8412:	9309      	str	r3, [sp, #36]	; 0x24
d03e8414:	e767      	b.n	d03e82e6 <_svfiprintf_r+0x4e>
d03e8416:	fb0c 3202 	mla	r2, ip, r2, r3
d03e841a:	460c      	mov	r4, r1
d03e841c:	2001      	movs	r0, #1
d03e841e:	e7a5      	b.n	d03e836c <_svfiprintf_r+0xd4>
d03e8420:	2300      	movs	r3, #0
d03e8422:	3401      	adds	r4, #1
d03e8424:	9305      	str	r3, [sp, #20]
d03e8426:	4619      	mov	r1, r3
d03e8428:	f04f 0c0a 	mov.w	ip, #10
d03e842c:	4620      	mov	r0, r4
d03e842e:	f810 2b01 	ldrb.w	r2, [r0], #1
d03e8432:	3a30      	subs	r2, #48	; 0x30
d03e8434:	2a09      	cmp	r2, #9
d03e8436:	d903      	bls.n	d03e8440 <_svfiprintf_r+0x1a8>
d03e8438:	2b00      	cmp	r3, #0
d03e843a:	d0c5      	beq.n	d03e83c8 <_svfiprintf_r+0x130>
d03e843c:	9105      	str	r1, [sp, #20]
d03e843e:	e7c3      	b.n	d03e83c8 <_svfiprintf_r+0x130>
d03e8440:	fb0c 2101 	mla	r1, ip, r1, r2
d03e8444:	4604      	mov	r4, r0
d03e8446:	2301      	movs	r3, #1
d03e8448:	e7f0      	b.n	d03e842c <_svfiprintf_r+0x194>
d03e844a:	ab03      	add	r3, sp, #12
d03e844c:	9300      	str	r3, [sp, #0]
d03e844e:	462a      	mov	r2, r5
d03e8450:	4b0f      	ldr	r3, [pc, #60]	; (d03e8490 <_svfiprintf_r+0x1f8>)
d03e8452:	a904      	add	r1, sp, #16
d03e8454:	4638      	mov	r0, r7
d03e8456:	f3af 8000 	nop.w
d03e845a:	1c42      	adds	r2, r0, #1
d03e845c:	4606      	mov	r6, r0
d03e845e:	d1d6      	bne.n	d03e840e <_svfiprintf_r+0x176>
d03e8460:	89ab      	ldrh	r3, [r5, #12]
d03e8462:	065b      	lsls	r3, r3, #25
d03e8464:	f53f af2c 	bmi.w	d03e82c0 <_svfiprintf_r+0x28>
d03e8468:	9809      	ldr	r0, [sp, #36]	; 0x24
d03e846a:	b01d      	add	sp, #116	; 0x74
d03e846c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e8470:	ab03      	add	r3, sp, #12
d03e8472:	9300      	str	r3, [sp, #0]
d03e8474:	462a      	mov	r2, r5
d03e8476:	4b06      	ldr	r3, [pc, #24]	; (d03e8490 <_svfiprintf_r+0x1f8>)
d03e8478:	a904      	add	r1, sp, #16
d03e847a:	4638      	mov	r0, r7
d03e847c:	f000 f87a 	bl	d03e8574 <_printf_i>
d03e8480:	e7eb      	b.n	d03e845a <_svfiprintf_r+0x1c2>
d03e8482:	bf00      	nop
d03e8484:	d03e9c80 	.word	0xd03e9c80
d03e8488:	d03e9c8a 	.word	0xd03e9c8a
d03e848c:	00000000 	.word	0x00000000
d03e8490:	d03e81e1 	.word	0xd03e81e1
d03e8494:	d03e9c86 	.word	0xd03e9c86

d03e8498 <_printf_common>:
d03e8498:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03e849c:	4616      	mov	r6, r2
d03e849e:	4699      	mov	r9, r3
d03e84a0:	688a      	ldr	r2, [r1, #8]
d03e84a2:	690b      	ldr	r3, [r1, #16]
d03e84a4:	f8dd 8020 	ldr.w	r8, [sp, #32]
d03e84a8:	4293      	cmp	r3, r2
d03e84aa:	bfb8      	it	lt
d03e84ac:	4613      	movlt	r3, r2
d03e84ae:	6033      	str	r3, [r6, #0]
d03e84b0:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d03e84b4:	4607      	mov	r7, r0
d03e84b6:	460c      	mov	r4, r1
d03e84b8:	b10a      	cbz	r2, d03e84be <_printf_common+0x26>
d03e84ba:	3301      	adds	r3, #1
d03e84bc:	6033      	str	r3, [r6, #0]
d03e84be:	6823      	ldr	r3, [r4, #0]
d03e84c0:	0699      	lsls	r1, r3, #26
d03e84c2:	bf42      	ittt	mi
d03e84c4:	6833      	ldrmi	r3, [r6, #0]
d03e84c6:	3302      	addmi	r3, #2
d03e84c8:	6033      	strmi	r3, [r6, #0]
d03e84ca:	6825      	ldr	r5, [r4, #0]
d03e84cc:	f015 0506 	ands.w	r5, r5, #6
d03e84d0:	d106      	bne.n	d03e84e0 <_printf_common+0x48>
d03e84d2:	f104 0a19 	add.w	sl, r4, #25
d03e84d6:	68e3      	ldr	r3, [r4, #12]
d03e84d8:	6832      	ldr	r2, [r6, #0]
d03e84da:	1a9b      	subs	r3, r3, r2
d03e84dc:	42ab      	cmp	r3, r5
d03e84de:	dc26      	bgt.n	d03e852e <_printf_common+0x96>
d03e84e0:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d03e84e4:	1e13      	subs	r3, r2, #0
d03e84e6:	6822      	ldr	r2, [r4, #0]
d03e84e8:	bf18      	it	ne
d03e84ea:	2301      	movne	r3, #1
d03e84ec:	0692      	lsls	r2, r2, #26
d03e84ee:	d42b      	bmi.n	d03e8548 <_printf_common+0xb0>
d03e84f0:	f104 0243 	add.w	r2, r4, #67	; 0x43
d03e84f4:	4649      	mov	r1, r9
d03e84f6:	4638      	mov	r0, r7
d03e84f8:	47c0      	blx	r8
d03e84fa:	3001      	adds	r0, #1
d03e84fc:	d01e      	beq.n	d03e853c <_printf_common+0xa4>
d03e84fe:	6823      	ldr	r3, [r4, #0]
d03e8500:	68e5      	ldr	r5, [r4, #12]
d03e8502:	6832      	ldr	r2, [r6, #0]
d03e8504:	f003 0306 	and.w	r3, r3, #6
d03e8508:	2b04      	cmp	r3, #4
d03e850a:	bf08      	it	eq
d03e850c:	1aad      	subeq	r5, r5, r2
d03e850e:	68a3      	ldr	r3, [r4, #8]
d03e8510:	6922      	ldr	r2, [r4, #16]
d03e8512:	bf0c      	ite	eq
d03e8514:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d03e8518:	2500      	movne	r5, #0
d03e851a:	4293      	cmp	r3, r2
d03e851c:	bfc4      	itt	gt
d03e851e:	1a9b      	subgt	r3, r3, r2
d03e8520:	18ed      	addgt	r5, r5, r3
d03e8522:	2600      	movs	r6, #0
d03e8524:	341a      	adds	r4, #26
d03e8526:	42b5      	cmp	r5, r6
d03e8528:	d11a      	bne.n	d03e8560 <_printf_common+0xc8>
d03e852a:	2000      	movs	r0, #0
d03e852c:	e008      	b.n	d03e8540 <_printf_common+0xa8>
d03e852e:	2301      	movs	r3, #1
d03e8530:	4652      	mov	r2, sl
d03e8532:	4649      	mov	r1, r9
d03e8534:	4638      	mov	r0, r7
d03e8536:	47c0      	blx	r8
d03e8538:	3001      	adds	r0, #1
d03e853a:	d103      	bne.n	d03e8544 <_printf_common+0xac>
d03e853c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e8540:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03e8544:	3501      	adds	r5, #1
d03e8546:	e7c6      	b.n	d03e84d6 <_printf_common+0x3e>
d03e8548:	18e1      	adds	r1, r4, r3
d03e854a:	1c5a      	adds	r2, r3, #1
d03e854c:	2030      	movs	r0, #48	; 0x30
d03e854e:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d03e8552:	4422      	add	r2, r4
d03e8554:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d03e8558:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d03e855c:	3302      	adds	r3, #2
d03e855e:	e7c7      	b.n	d03e84f0 <_printf_common+0x58>
d03e8560:	2301      	movs	r3, #1
d03e8562:	4622      	mov	r2, r4
d03e8564:	4649      	mov	r1, r9
d03e8566:	4638      	mov	r0, r7
d03e8568:	47c0      	blx	r8
d03e856a:	3001      	adds	r0, #1
d03e856c:	d0e6      	beq.n	d03e853c <_printf_common+0xa4>
d03e856e:	3601      	adds	r6, #1
d03e8570:	e7d9      	b.n	d03e8526 <_printf_common+0x8e>
	...

d03e8574 <_printf_i>:
d03e8574:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d03e8578:	460c      	mov	r4, r1
d03e857a:	4691      	mov	r9, r2
d03e857c:	7e27      	ldrb	r7, [r4, #24]
d03e857e:	990c      	ldr	r1, [sp, #48]	; 0x30
d03e8580:	2f78      	cmp	r7, #120	; 0x78
d03e8582:	4680      	mov	r8, r0
d03e8584:	469a      	mov	sl, r3
d03e8586:	f104 0243 	add.w	r2, r4, #67	; 0x43
d03e858a:	d807      	bhi.n	d03e859c <_printf_i+0x28>
d03e858c:	2f62      	cmp	r7, #98	; 0x62
d03e858e:	d80a      	bhi.n	d03e85a6 <_printf_i+0x32>
d03e8590:	2f00      	cmp	r7, #0
d03e8592:	f000 80d8 	beq.w	d03e8746 <_printf_i+0x1d2>
d03e8596:	2f58      	cmp	r7, #88	; 0x58
d03e8598:	f000 80a3 	beq.w	d03e86e2 <_printf_i+0x16e>
d03e859c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d03e85a0:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d03e85a4:	e03a      	b.n	d03e861c <_printf_i+0xa8>
d03e85a6:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d03e85aa:	2b15      	cmp	r3, #21
d03e85ac:	d8f6      	bhi.n	d03e859c <_printf_i+0x28>
d03e85ae:	a001      	add	r0, pc, #4	; (adr r0, d03e85b4 <_printf_i+0x40>)
d03e85b0:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d03e85b4:	d03e860d 	.word	0xd03e860d
d03e85b8:	d03e8621 	.word	0xd03e8621
d03e85bc:	d03e859d 	.word	0xd03e859d
d03e85c0:	d03e859d 	.word	0xd03e859d
d03e85c4:	d03e859d 	.word	0xd03e859d
d03e85c8:	d03e859d 	.word	0xd03e859d
d03e85cc:	d03e8621 	.word	0xd03e8621
d03e85d0:	d03e859d 	.word	0xd03e859d
d03e85d4:	d03e859d 	.word	0xd03e859d
d03e85d8:	d03e859d 	.word	0xd03e859d
d03e85dc:	d03e859d 	.word	0xd03e859d
d03e85e0:	d03e872d 	.word	0xd03e872d
d03e85e4:	d03e8651 	.word	0xd03e8651
d03e85e8:	d03e870f 	.word	0xd03e870f
d03e85ec:	d03e859d 	.word	0xd03e859d
d03e85f0:	d03e859d 	.word	0xd03e859d
d03e85f4:	d03e874f 	.word	0xd03e874f
d03e85f8:	d03e859d 	.word	0xd03e859d
d03e85fc:	d03e8651 	.word	0xd03e8651
d03e8600:	d03e859d 	.word	0xd03e859d
d03e8604:	d03e859d 	.word	0xd03e859d
d03e8608:	d03e8717 	.word	0xd03e8717
d03e860c:	680b      	ldr	r3, [r1, #0]
d03e860e:	1d1a      	adds	r2, r3, #4
d03e8610:	681b      	ldr	r3, [r3, #0]
d03e8612:	600a      	str	r2, [r1, #0]
d03e8614:	f104 0642 	add.w	r6, r4, #66	; 0x42
d03e8618:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d03e861c:	2301      	movs	r3, #1
d03e861e:	e0a3      	b.n	d03e8768 <_printf_i+0x1f4>
d03e8620:	6825      	ldr	r5, [r4, #0]
d03e8622:	6808      	ldr	r0, [r1, #0]
d03e8624:	062e      	lsls	r6, r5, #24
d03e8626:	f100 0304 	add.w	r3, r0, #4
d03e862a:	d50a      	bpl.n	d03e8642 <_printf_i+0xce>
d03e862c:	6805      	ldr	r5, [r0, #0]
d03e862e:	600b      	str	r3, [r1, #0]
d03e8630:	2d00      	cmp	r5, #0
d03e8632:	da03      	bge.n	d03e863c <_printf_i+0xc8>
d03e8634:	232d      	movs	r3, #45	; 0x2d
d03e8636:	426d      	negs	r5, r5
d03e8638:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d03e863c:	485e      	ldr	r0, [pc, #376]	; (d03e87b8 <_printf_i+0x244>)
d03e863e:	230a      	movs	r3, #10
d03e8640:	e019      	b.n	d03e8676 <_printf_i+0x102>
d03e8642:	f015 0f40 	tst.w	r5, #64	; 0x40
d03e8646:	6805      	ldr	r5, [r0, #0]
d03e8648:	600b      	str	r3, [r1, #0]
d03e864a:	bf18      	it	ne
d03e864c:	b22d      	sxthne	r5, r5
d03e864e:	e7ef      	b.n	d03e8630 <_printf_i+0xbc>
d03e8650:	680b      	ldr	r3, [r1, #0]
d03e8652:	6825      	ldr	r5, [r4, #0]
d03e8654:	1d18      	adds	r0, r3, #4
d03e8656:	6008      	str	r0, [r1, #0]
d03e8658:	0628      	lsls	r0, r5, #24
d03e865a:	d501      	bpl.n	d03e8660 <_printf_i+0xec>
d03e865c:	681d      	ldr	r5, [r3, #0]
d03e865e:	e002      	b.n	d03e8666 <_printf_i+0xf2>
d03e8660:	0669      	lsls	r1, r5, #25
d03e8662:	d5fb      	bpl.n	d03e865c <_printf_i+0xe8>
d03e8664:	881d      	ldrh	r5, [r3, #0]
d03e8666:	4854      	ldr	r0, [pc, #336]	; (d03e87b8 <_printf_i+0x244>)
d03e8668:	2f6f      	cmp	r7, #111	; 0x6f
d03e866a:	bf0c      	ite	eq
d03e866c:	2308      	moveq	r3, #8
d03e866e:	230a      	movne	r3, #10
d03e8670:	2100      	movs	r1, #0
d03e8672:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d03e8676:	6866      	ldr	r6, [r4, #4]
d03e8678:	60a6      	str	r6, [r4, #8]
d03e867a:	2e00      	cmp	r6, #0
d03e867c:	bfa2      	ittt	ge
d03e867e:	6821      	ldrge	r1, [r4, #0]
d03e8680:	f021 0104 	bicge.w	r1, r1, #4
d03e8684:	6021      	strge	r1, [r4, #0]
d03e8686:	b90d      	cbnz	r5, d03e868c <_printf_i+0x118>
d03e8688:	2e00      	cmp	r6, #0
d03e868a:	d04d      	beq.n	d03e8728 <_printf_i+0x1b4>
d03e868c:	4616      	mov	r6, r2
d03e868e:	fbb5 f1f3 	udiv	r1, r5, r3
d03e8692:	fb03 5711 	mls	r7, r3, r1, r5
d03e8696:	5dc7      	ldrb	r7, [r0, r7]
d03e8698:	f806 7d01 	strb.w	r7, [r6, #-1]!
d03e869c:	462f      	mov	r7, r5
d03e869e:	42bb      	cmp	r3, r7
d03e86a0:	460d      	mov	r5, r1
d03e86a2:	d9f4      	bls.n	d03e868e <_printf_i+0x11a>
d03e86a4:	2b08      	cmp	r3, #8
d03e86a6:	d10b      	bne.n	d03e86c0 <_printf_i+0x14c>
d03e86a8:	6823      	ldr	r3, [r4, #0]
d03e86aa:	07df      	lsls	r7, r3, #31
d03e86ac:	d508      	bpl.n	d03e86c0 <_printf_i+0x14c>
d03e86ae:	6923      	ldr	r3, [r4, #16]
d03e86b0:	6861      	ldr	r1, [r4, #4]
d03e86b2:	4299      	cmp	r1, r3
d03e86b4:	bfde      	ittt	le
d03e86b6:	2330      	movle	r3, #48	; 0x30
d03e86b8:	f806 3c01 	strble.w	r3, [r6, #-1]
d03e86bc:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d03e86c0:	1b92      	subs	r2, r2, r6
d03e86c2:	6122      	str	r2, [r4, #16]
d03e86c4:	f8cd a000 	str.w	sl, [sp]
d03e86c8:	464b      	mov	r3, r9
d03e86ca:	aa03      	add	r2, sp, #12
d03e86cc:	4621      	mov	r1, r4
d03e86ce:	4640      	mov	r0, r8
d03e86d0:	f7ff fee2 	bl	d03e8498 <_printf_common>
d03e86d4:	3001      	adds	r0, #1
d03e86d6:	d14c      	bne.n	d03e8772 <_printf_i+0x1fe>
d03e86d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e86dc:	b004      	add	sp, #16
d03e86de:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03e86e2:	4835      	ldr	r0, [pc, #212]	; (d03e87b8 <_printf_i+0x244>)
d03e86e4:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d03e86e8:	6823      	ldr	r3, [r4, #0]
d03e86ea:	680e      	ldr	r6, [r1, #0]
d03e86ec:	061f      	lsls	r7, r3, #24
d03e86ee:	f856 5b04 	ldr.w	r5, [r6], #4
d03e86f2:	600e      	str	r6, [r1, #0]
d03e86f4:	d514      	bpl.n	d03e8720 <_printf_i+0x1ac>
d03e86f6:	07d9      	lsls	r1, r3, #31
d03e86f8:	bf44      	itt	mi
d03e86fa:	f043 0320 	orrmi.w	r3, r3, #32
d03e86fe:	6023      	strmi	r3, [r4, #0]
d03e8700:	b91d      	cbnz	r5, d03e870a <_printf_i+0x196>
d03e8702:	6823      	ldr	r3, [r4, #0]
d03e8704:	f023 0320 	bic.w	r3, r3, #32
d03e8708:	6023      	str	r3, [r4, #0]
d03e870a:	2310      	movs	r3, #16
d03e870c:	e7b0      	b.n	d03e8670 <_printf_i+0xfc>
d03e870e:	6823      	ldr	r3, [r4, #0]
d03e8710:	f043 0320 	orr.w	r3, r3, #32
d03e8714:	6023      	str	r3, [r4, #0]
d03e8716:	2378      	movs	r3, #120	; 0x78
d03e8718:	4828      	ldr	r0, [pc, #160]	; (d03e87bc <_printf_i+0x248>)
d03e871a:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d03e871e:	e7e3      	b.n	d03e86e8 <_printf_i+0x174>
d03e8720:	065e      	lsls	r6, r3, #25
d03e8722:	bf48      	it	mi
d03e8724:	b2ad      	uxthmi	r5, r5
d03e8726:	e7e6      	b.n	d03e86f6 <_printf_i+0x182>
d03e8728:	4616      	mov	r6, r2
d03e872a:	e7bb      	b.n	d03e86a4 <_printf_i+0x130>
d03e872c:	680b      	ldr	r3, [r1, #0]
d03e872e:	6826      	ldr	r6, [r4, #0]
d03e8730:	6960      	ldr	r0, [r4, #20]
d03e8732:	1d1d      	adds	r5, r3, #4
d03e8734:	600d      	str	r5, [r1, #0]
d03e8736:	0635      	lsls	r5, r6, #24
d03e8738:	681b      	ldr	r3, [r3, #0]
d03e873a:	d501      	bpl.n	d03e8740 <_printf_i+0x1cc>
d03e873c:	6018      	str	r0, [r3, #0]
d03e873e:	e002      	b.n	d03e8746 <_printf_i+0x1d2>
d03e8740:	0671      	lsls	r1, r6, #25
d03e8742:	d5fb      	bpl.n	d03e873c <_printf_i+0x1c8>
d03e8744:	8018      	strh	r0, [r3, #0]
d03e8746:	2300      	movs	r3, #0
d03e8748:	6123      	str	r3, [r4, #16]
d03e874a:	4616      	mov	r6, r2
d03e874c:	e7ba      	b.n	d03e86c4 <_printf_i+0x150>
d03e874e:	680b      	ldr	r3, [r1, #0]
d03e8750:	1d1a      	adds	r2, r3, #4
d03e8752:	600a      	str	r2, [r1, #0]
d03e8754:	681e      	ldr	r6, [r3, #0]
d03e8756:	6862      	ldr	r2, [r4, #4]
d03e8758:	2100      	movs	r1, #0
d03e875a:	4630      	mov	r0, r6
d03e875c:	f000 f8a8 	bl	d03e88b0 <memchr>
d03e8760:	b108      	cbz	r0, d03e8766 <_printf_i+0x1f2>
d03e8762:	1b80      	subs	r0, r0, r6
d03e8764:	6060      	str	r0, [r4, #4]
d03e8766:	6863      	ldr	r3, [r4, #4]
d03e8768:	6123      	str	r3, [r4, #16]
d03e876a:	2300      	movs	r3, #0
d03e876c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d03e8770:	e7a8      	b.n	d03e86c4 <_printf_i+0x150>
d03e8772:	6923      	ldr	r3, [r4, #16]
d03e8774:	4632      	mov	r2, r6
d03e8776:	4649      	mov	r1, r9
d03e8778:	4640      	mov	r0, r8
d03e877a:	47d0      	blx	sl
d03e877c:	3001      	adds	r0, #1
d03e877e:	d0ab      	beq.n	d03e86d8 <_printf_i+0x164>
d03e8780:	6823      	ldr	r3, [r4, #0]
d03e8782:	079b      	lsls	r3, r3, #30
d03e8784:	d413      	bmi.n	d03e87ae <_printf_i+0x23a>
d03e8786:	68e0      	ldr	r0, [r4, #12]
d03e8788:	9b03      	ldr	r3, [sp, #12]
d03e878a:	4298      	cmp	r0, r3
d03e878c:	bfb8      	it	lt
d03e878e:	4618      	movlt	r0, r3
d03e8790:	e7a4      	b.n	d03e86dc <_printf_i+0x168>
d03e8792:	2301      	movs	r3, #1
d03e8794:	4632      	mov	r2, r6
d03e8796:	4649      	mov	r1, r9
d03e8798:	4640      	mov	r0, r8
d03e879a:	47d0      	blx	sl
d03e879c:	3001      	adds	r0, #1
d03e879e:	d09b      	beq.n	d03e86d8 <_printf_i+0x164>
d03e87a0:	3501      	adds	r5, #1
d03e87a2:	68e3      	ldr	r3, [r4, #12]
d03e87a4:	9903      	ldr	r1, [sp, #12]
d03e87a6:	1a5b      	subs	r3, r3, r1
d03e87a8:	42ab      	cmp	r3, r5
d03e87aa:	dcf2      	bgt.n	d03e8792 <_printf_i+0x21e>
d03e87ac:	e7eb      	b.n	d03e8786 <_printf_i+0x212>
d03e87ae:	2500      	movs	r5, #0
d03e87b0:	f104 0619 	add.w	r6, r4, #25
d03e87b4:	e7f5      	b.n	d03e87a2 <_printf_i+0x22e>
d03e87b6:	bf00      	nop
d03e87b8:	d03e9c91 	.word	0xd03e9c91
d03e87bc:	d03e9ca2 	.word	0xd03e9ca2

d03e87c0 <__sread>:
d03e87c0:	b510      	push	{r4, lr}
d03e87c2:	460c      	mov	r4, r1
d03e87c4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e87c8:	f000 f902 	bl	d03e89d0 <_read_r>
d03e87cc:	2800      	cmp	r0, #0
d03e87ce:	bfab      	itete	ge
d03e87d0:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d03e87d2:	89a3      	ldrhlt	r3, [r4, #12]
d03e87d4:	181b      	addge	r3, r3, r0
d03e87d6:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d03e87da:	bfac      	ite	ge
d03e87dc:	6563      	strge	r3, [r4, #84]	; 0x54
d03e87de:	81a3      	strhlt	r3, [r4, #12]
d03e87e0:	bd10      	pop	{r4, pc}

d03e87e2 <__swrite>:
d03e87e2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e87e6:	461f      	mov	r7, r3
d03e87e8:	898b      	ldrh	r3, [r1, #12]
d03e87ea:	05db      	lsls	r3, r3, #23
d03e87ec:	4605      	mov	r5, r0
d03e87ee:	460c      	mov	r4, r1
d03e87f0:	4616      	mov	r6, r2
d03e87f2:	d505      	bpl.n	d03e8800 <__swrite+0x1e>
d03e87f4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e87f8:	2302      	movs	r3, #2
d03e87fa:	2200      	movs	r2, #0
d03e87fc:	f000 f846 	bl	d03e888c <_lseek_r>
d03e8800:	89a3      	ldrh	r3, [r4, #12]
d03e8802:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d03e8806:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d03e880a:	81a3      	strh	r3, [r4, #12]
d03e880c:	4632      	mov	r2, r6
d03e880e:	463b      	mov	r3, r7
d03e8810:	4628      	mov	r0, r5
d03e8812:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d03e8816:	f7f7 bc1d 	b.w	d03e0054 <_write_r>

d03e881a <__sseek>:
d03e881a:	b510      	push	{r4, lr}
d03e881c:	460c      	mov	r4, r1
d03e881e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e8822:	f000 f833 	bl	d03e888c <_lseek_r>
d03e8826:	1c43      	adds	r3, r0, #1
d03e8828:	89a3      	ldrh	r3, [r4, #12]
d03e882a:	bf15      	itete	ne
d03e882c:	6560      	strne	r0, [r4, #84]	; 0x54
d03e882e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d03e8832:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d03e8836:	81a3      	strheq	r3, [r4, #12]
d03e8838:	bf18      	it	ne
d03e883a:	81a3      	strhne	r3, [r4, #12]
d03e883c:	bd10      	pop	{r4, pc}

d03e883e <__sclose>:
d03e883e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e8842:	f000 b801 	b.w	d03e8848 <_close_r>
	...

d03e8848 <_close_r>:
d03e8848:	b538      	push	{r3, r4, r5, lr}
d03e884a:	4d06      	ldr	r5, [pc, #24]	; (d03e8864 <_close_r+0x1c>)
d03e884c:	2300      	movs	r3, #0
d03e884e:	4604      	mov	r4, r0
d03e8850:	4608      	mov	r0, r1
d03e8852:	602b      	str	r3, [r5, #0]
d03e8854:	f7f7 fc38 	bl	d03e00c8 <_close>
d03e8858:	1c43      	adds	r3, r0, #1
d03e885a:	d102      	bne.n	d03e8862 <_close_r+0x1a>
d03e885c:	682b      	ldr	r3, [r5, #0]
d03e885e:	b103      	cbz	r3, d03e8862 <_close_r+0x1a>
d03e8860:	6023      	str	r3, [r4, #0]
d03e8862:	bd38      	pop	{r3, r4, r5, pc}
d03e8864:	d03ea9ac 	.word	0xd03ea9ac

d03e8868 <_fstat_r>:
d03e8868:	b538      	push	{r3, r4, r5, lr}
d03e886a:	4d07      	ldr	r5, [pc, #28]	; (d03e8888 <_fstat_r+0x20>)
d03e886c:	2300      	movs	r3, #0
d03e886e:	4604      	mov	r4, r0
d03e8870:	4608      	mov	r0, r1
d03e8872:	4611      	mov	r1, r2
d03e8874:	602b      	str	r3, [r5, #0]
d03e8876:	f7f7 fc2b 	bl	d03e00d0 <_fstat>
d03e887a:	1c43      	adds	r3, r0, #1
d03e887c:	d102      	bne.n	d03e8884 <_fstat_r+0x1c>
d03e887e:	682b      	ldr	r3, [r5, #0]
d03e8880:	b103      	cbz	r3, d03e8884 <_fstat_r+0x1c>
d03e8882:	6023      	str	r3, [r4, #0]
d03e8884:	bd38      	pop	{r3, r4, r5, pc}
d03e8886:	bf00      	nop
d03e8888:	d03ea9ac 	.word	0xd03ea9ac

d03e888c <_lseek_r>:
d03e888c:	b538      	push	{r3, r4, r5, lr}
d03e888e:	4d07      	ldr	r5, [pc, #28]	; (d03e88ac <_lseek_r+0x20>)
d03e8890:	4604      	mov	r4, r0
d03e8892:	4608      	mov	r0, r1
d03e8894:	4611      	mov	r1, r2
d03e8896:	2200      	movs	r2, #0
d03e8898:	602a      	str	r2, [r5, #0]
d03e889a:	461a      	mov	r2, r3
d03e889c:	f7f7 fc1e 	bl	d03e00dc <_lseek>
d03e88a0:	1c43      	adds	r3, r0, #1
d03e88a2:	d102      	bne.n	d03e88aa <_lseek_r+0x1e>
d03e88a4:	682b      	ldr	r3, [r5, #0]
d03e88a6:	b103      	cbz	r3, d03e88aa <_lseek_r+0x1e>
d03e88a8:	6023      	str	r3, [r4, #0]
d03e88aa:	bd38      	pop	{r3, r4, r5, pc}
d03e88ac:	d03ea9ac 	.word	0xd03ea9ac

d03e88b0 <memchr>:
d03e88b0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d03e88b4:	2a10      	cmp	r2, #16
d03e88b6:	db2b      	blt.n	d03e8910 <memchr+0x60>
d03e88b8:	f010 0f07 	tst.w	r0, #7
d03e88bc:	d008      	beq.n	d03e88d0 <memchr+0x20>
d03e88be:	f810 3b01 	ldrb.w	r3, [r0], #1
d03e88c2:	3a01      	subs	r2, #1
d03e88c4:	428b      	cmp	r3, r1
d03e88c6:	d02d      	beq.n	d03e8924 <memchr+0x74>
d03e88c8:	f010 0f07 	tst.w	r0, #7
d03e88cc:	b342      	cbz	r2, d03e8920 <memchr+0x70>
d03e88ce:	d1f6      	bne.n	d03e88be <memchr+0xe>
d03e88d0:	b4f0      	push	{r4, r5, r6, r7}
d03e88d2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d03e88d6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d03e88da:	f022 0407 	bic.w	r4, r2, #7
d03e88de:	f07f 0700 	mvns.w	r7, #0
d03e88e2:	2300      	movs	r3, #0
d03e88e4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d03e88e8:	3c08      	subs	r4, #8
d03e88ea:	ea85 0501 	eor.w	r5, r5, r1
d03e88ee:	ea86 0601 	eor.w	r6, r6, r1
d03e88f2:	fa85 f547 	uadd8	r5, r5, r7
d03e88f6:	faa3 f587 	sel	r5, r3, r7
d03e88fa:	fa86 f647 	uadd8	r6, r6, r7
d03e88fe:	faa5 f687 	sel	r6, r5, r7
d03e8902:	b98e      	cbnz	r6, d03e8928 <memchr+0x78>
d03e8904:	d1ee      	bne.n	d03e88e4 <memchr+0x34>
d03e8906:	bcf0      	pop	{r4, r5, r6, r7}
d03e8908:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d03e890c:	f002 0207 	and.w	r2, r2, #7
d03e8910:	b132      	cbz	r2, d03e8920 <memchr+0x70>
d03e8912:	f810 3b01 	ldrb.w	r3, [r0], #1
d03e8916:	3a01      	subs	r2, #1
d03e8918:	ea83 0301 	eor.w	r3, r3, r1
d03e891c:	b113      	cbz	r3, d03e8924 <memchr+0x74>
d03e891e:	d1f8      	bne.n	d03e8912 <memchr+0x62>
d03e8920:	2000      	movs	r0, #0
d03e8922:	4770      	bx	lr
d03e8924:	3801      	subs	r0, #1
d03e8926:	4770      	bx	lr
d03e8928:	2d00      	cmp	r5, #0
d03e892a:	bf06      	itte	eq
d03e892c:	4635      	moveq	r5, r6
d03e892e:	3803      	subeq	r0, #3
d03e8930:	3807      	subne	r0, #7
d03e8932:	f015 0f01 	tst.w	r5, #1
d03e8936:	d107      	bne.n	d03e8948 <memchr+0x98>
d03e8938:	3001      	adds	r0, #1
d03e893a:	f415 7f80 	tst.w	r5, #256	; 0x100
d03e893e:	bf02      	ittt	eq
d03e8940:	3001      	addeq	r0, #1
d03e8942:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d03e8946:	3001      	addeq	r0, #1
d03e8948:	bcf0      	pop	{r4, r5, r6, r7}
d03e894a:	3801      	subs	r0, #1
d03e894c:	4770      	bx	lr
d03e894e:	bf00      	nop

d03e8950 <memmove>:
d03e8950:	4288      	cmp	r0, r1
d03e8952:	b510      	push	{r4, lr}
d03e8954:	eb01 0402 	add.w	r4, r1, r2
d03e8958:	d902      	bls.n	d03e8960 <memmove+0x10>
d03e895a:	4284      	cmp	r4, r0
d03e895c:	4623      	mov	r3, r4
d03e895e:	d807      	bhi.n	d03e8970 <memmove+0x20>
d03e8960:	1e43      	subs	r3, r0, #1
d03e8962:	42a1      	cmp	r1, r4
d03e8964:	d008      	beq.n	d03e8978 <memmove+0x28>
d03e8966:	f811 2b01 	ldrb.w	r2, [r1], #1
d03e896a:	f803 2f01 	strb.w	r2, [r3, #1]!
d03e896e:	e7f8      	b.n	d03e8962 <memmove+0x12>
d03e8970:	4402      	add	r2, r0
d03e8972:	4601      	mov	r1, r0
d03e8974:	428a      	cmp	r2, r1
d03e8976:	d100      	bne.n	d03e897a <memmove+0x2a>
d03e8978:	bd10      	pop	{r4, pc}
d03e897a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d03e897e:	f802 4d01 	strb.w	r4, [r2, #-1]!
d03e8982:	e7f7      	b.n	d03e8974 <memmove+0x24>

d03e8984 <_realloc_r>:
d03e8984:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e8986:	4607      	mov	r7, r0
d03e8988:	4614      	mov	r4, r2
d03e898a:	460e      	mov	r6, r1
d03e898c:	b921      	cbnz	r1, d03e8998 <_realloc_r+0x14>
d03e898e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d03e8992:	4611      	mov	r1, r2
d03e8994:	f7ff b8d6 	b.w	d03e7b44 <_malloc_r>
d03e8998:	b922      	cbnz	r2, d03e89a4 <_realloc_r+0x20>
d03e899a:	f7ff f883 	bl	d03e7aa4 <_free_r>
d03e899e:	4625      	mov	r5, r4
d03e89a0:	4628      	mov	r0, r5
d03e89a2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e89a4:	f000 f826 	bl	d03e89f4 <_malloc_usable_size_r>
d03e89a8:	42a0      	cmp	r0, r4
d03e89aa:	d20f      	bcs.n	d03e89cc <_realloc_r+0x48>
d03e89ac:	4621      	mov	r1, r4
d03e89ae:	4638      	mov	r0, r7
d03e89b0:	f7ff f8c8 	bl	d03e7b44 <_malloc_r>
d03e89b4:	4605      	mov	r5, r0
d03e89b6:	2800      	cmp	r0, #0
d03e89b8:	d0f2      	beq.n	d03e89a0 <_realloc_r+0x1c>
d03e89ba:	4631      	mov	r1, r6
d03e89bc:	4622      	mov	r2, r4
d03e89be:	f7ff f85b 	bl	d03e7a78 <memcpy>
d03e89c2:	4631      	mov	r1, r6
d03e89c4:	4638      	mov	r0, r7
d03e89c6:	f7ff f86d 	bl	d03e7aa4 <_free_r>
d03e89ca:	e7e9      	b.n	d03e89a0 <_realloc_r+0x1c>
d03e89cc:	4635      	mov	r5, r6
d03e89ce:	e7e7      	b.n	d03e89a0 <_realloc_r+0x1c>

d03e89d0 <_read_r>:
d03e89d0:	b538      	push	{r3, r4, r5, lr}
d03e89d2:	4d07      	ldr	r5, [pc, #28]	; (d03e89f0 <_read_r+0x20>)
d03e89d4:	4604      	mov	r4, r0
d03e89d6:	4608      	mov	r0, r1
d03e89d8:	4611      	mov	r1, r2
d03e89da:	2200      	movs	r2, #0
d03e89dc:	602a      	str	r2, [r5, #0]
d03e89de:	461a      	mov	r2, r3
d03e89e0:	f7f7 fb68 	bl	d03e00b4 <_read>
d03e89e4:	1c43      	adds	r3, r0, #1
d03e89e6:	d102      	bne.n	d03e89ee <_read_r+0x1e>
d03e89e8:	682b      	ldr	r3, [r5, #0]
d03e89ea:	b103      	cbz	r3, d03e89ee <_read_r+0x1e>
d03e89ec:	6023      	str	r3, [r4, #0]
d03e89ee:	bd38      	pop	{r3, r4, r5, pc}
d03e89f0:	d03ea9ac 	.word	0xd03ea9ac

d03e89f4 <_malloc_usable_size_r>:
d03e89f4:	f851 3c04 	ldr.w	r3, [r1, #-4]
d03e89f8:	1f18      	subs	r0, r3, #4
d03e89fa:	2b00      	cmp	r3, #0
d03e89fc:	bfbc      	itt	lt
d03e89fe:	580b      	ldrlt	r3, [r1, r0]
d03e8a00:	18c0      	addlt	r0, r0, r3
d03e8a02:	4770      	bx	lr

d03e8a04 <CSWTCH.7>:
d03e8a04:	8a58 d03e 8a58 d03e 8a44 d03e 8a8c d03e     X.>.X.>.D.>...>.
d03e8a14:	8a44 d03e 8a8c d03e 8abc d03e 8a44 d03e     D.>...>...>.D.>.
d03e8a24:	8abc d03e 8a44 d03e 8abc d03e 8a78 d03e     ..>.D.>...>.x.>.
d03e8a34:	8abc d03e 8abc d03e 8a44 d03e 8abc d03e     ..>...>.D.>...>.

d03e8a44 <drv_closed_hat_patch>:
d03e8a44:	0003 0041 4f0a 0700 0002 0081 0001 0001     ..A..O..........
d03e8a54:	0000 0000                                   ....

d03e8a58 <drv_kick_patch>:
d03e8a58:	0003 00b2 0005 0024 0002 0011 000d f9c0     ......$.........
d03e8a68:	0001 0003 000d 0000 0002 0010 0000 0000     ................

d03e8a78 <drv_open_hat_patch>:
d03e8a78:	0003 00a5 4f0a 0700 0002 0081 0001 0005     .....O..........
d03e8a88:	0000 0000                                   ....

d03e8a8c <drv_snare_patch>:
d03e8a8c:	0003 0092 4f0a 1800 0005 003c 0002 0091     .....O....<.....
d03e8a9c:	0001 0001 0005 0012 4f0a 0a00 0002 0081     .........O......
d03e8aac:	0001 0002 4f0a 0200 0002 0080 0000 0000     .....O..........

d03e8abc <drv_tom_patch>:
d03e8abc:	0003 00a3 0002 0011 000d ff6a 0001 0004     ..........j.....
d03e8acc:	000d 0000 0000 0000                         ........

d03e8ad4 <prg_acoustic_bass>:
d03e8ad4:	0003 0581 0002 0011 0005 000c 0001 0000     ................
d03e8ae4:	0005 0000 000f 0000 0000 0000               ............

d03e8af0 <prg_acoustic_piano>:
d03e8af0:	0003 0342 0004 0900 0002 0041 0001 0001     ..B.......A.....
d03e8b00:	0004 0300 0001 0003 0004 0700 000f 0000     ................
d03e8b10:	0000 0000                                   ....

d03e8b14 <prg_bass_lead>:
d03e8b14:	0003 00e3 0004 0400 0002 0041 0009 000c     ..........A.....
d03e8b24:	000e 1405 000f 0000 0000 0000               ............

d03e8b30 <prg_bright_key>:
d03e8b30:	0003 0242 0004 0a00 0002 0041 0001 0001     ..B.......A.....
d03e8b40:	0004 0280 0001 0002 0004 0600 000f 0000     ................
d03e8b50:	0000 0000                                   ....

d03e8b54 <prg_charang_lead>:
d03e8b54:	0003 00d3 0004 0180 0002 0041 000e 3004     ..........A....0
d03e8b64:	0009 070c 000f 0000 0000 0000               ............

d03e8b70 <prg_chiff_lead>:
d03e8b70:	0003 00e3 0004 0700 0002 0081 0001 0001     ................
d03e8b80:	0002 0041 000e 2005 0010 0105 000f 0000     ..A.... ........
d03e8b90:	0000 0000                                   ....

d03e8b94 <prg_church_organ>:
d03e8b94:	0003 00f5 0002 0031 000e 1807 0010 0209     ......1.........
d03e8ba4:	000f 0000 0000 0000                         ........

d03e8bac <prg_clav_pluck>:
d03e8bac:	0003 0121 0004 0180 0002 0041 0001 0001     ..!.......A.....
d03e8bbc:	0004 0c00 000f 0000 0000 0000               ............

d03e8bc8 <prg_conditional_loop_demo>:
d03e8bc8:	0003 00fc 0004 0200 0002 0041 0011 000a     ..........A.....
d03e8bd8:	0014 0405 0006 0100 0001 0001 0012 ffff     ................
d03e8be8:	0015 0004 0013 000d 0006 0040 0001 0001     ..........@.....
d03e8bf8:	0007 0040 0001 0001 0015 0005 0000 0000     ..@.............

d03e8c08 <prg_crystal_fx>:
d03e8c08:	0003 02e5 0004 0500 0002 0041 0009 0c13     ..........A.....
d03e8c18:	000e 1004 0010 0104 000f 0000 0000 0000     ................

d03e8c28 <prg_distortion_guitar>:
d03e8c28:	0003 0652 0004 0180 0005 000c 0002 0041     ..R...........A.
d03e8c38:	0001 0000 0005 0000 0004 0d00 0009 070c     ................
d03e8c48:	000f 0000 0000 0000                         ........

d03e8c50 <prg_electric_key>:
d03e8c50:	0003 0464 0004 0440 0002 0041 000e 0807     ..d...@...A.....
d03e8c60:	0010 0108 000f 0000 0000 0000               ............

d03e8c6c <prg_gunshot>:
d03e8c6c:	0003 0ef0 0002 0081 0001 0014 0000 0000     ................

d03e8c7c <prg_honkytonk_piano>:
d03e8c7c:	0003 0432 0004 0240 0002 0041 0001 0002     ..2...@...A.....
d03e8c8c:	0004 0500 0001 0004 0004 0340 000f 0000     ..........@.....
d03e8c9c:	0000 0000                                   ....

d03e8ca0 <prg_hubbard_arp_hardware>:
d03e8ca0:	0003 00f3 0004 0480 0002 0041 000e 1806     ..........A.....
d03e8cb0:	0010 0104 0009 0407 000f 0000 0000 0000     ................

d03e8cc0 <prg_hubbard_arp_lead>:
d03e8cc0:	0003 00f3 0004 0600 0002 0041 000e 1806     ..........A.....
d03e8cd0:	0005 0000 0004 0600 0001 0000 0005 0004     ................
d03e8ce0:	0004 0380 0001 0000 0005 0007 0004 0a00     ................
d03e8cf0:	0001 0000 0005 000c 0004 0500 0001 0000     ................
d03e8d00:	000f 000c 0000 0000                         ........

d03e8d08 <prg_hubbard_pwm_lead>:
d03e8d08:	0003 00f4 0004 0180 0002 0041 000e 2005     ..........A.... 
d03e8d18:	0010 0206 0006 0060 0001 0001 200b 0002     ......`...... ..
d03e8d28:	0007 0060 0001 0001 200b 0002 000f 0006     ..`...... ......
d03e8d38:	0000 0000                                   ....

d03e8d3c <prg_lead_square>:
d03e8d3c:	0003 00d3 0004 0600 0002 0041 000e 2404     ..........A....$
d03e8d4c:	0010 0105 0006 0080 0001 0001 080b 0002     ................
d03e8d5c:	0007 0080 0001 0001 080b 0002 000f 0006     ................
d03e8d6c:	0000 0000                                   ....

d03e8d70 <prg_muted_guitar>:
d03e8d70:	0003 0111 0004 0100 0002 0041 0001 0001     ..........A.....
d03e8d80:	0004 0f00 000f 0000 0000 0000               ............

d03e8d8c <prg_percussive_organ>:
d03e8d8c:	0003 02c3 0004 0380 0002 0051 0010 0105     ..........Q.....
d03e8d9c:	000f 0000 0000 0000                         ........

d03e8da4 <prg_pizzicato>:
d03e8da4:	0003 0262 0004 0a00 0002 0041 0001 0001     ..b.......A.....
d03e8db4:	0004 0300 000f 0000 0000 0000               ............

d03e8dc0 <prg_sid_bell>:
d03e8dc0:	0003 04a6 0002 0011 000e 0803 0005 000c     ................
d03e8dd0:	0001 0001 0005 0000 000f 0000 0000 0000     ................

d03e8de0 <prg_sid_brass>:
d03e8de0:	0003 12d4 0004 0700 0002 0061 000e 1006     ..........a.....
d03e8df0:	0010 0106 000f 0000 0000 0000               ............

d03e8dfc <prg_sid_drawbar_organ>:
d03e8dfc:	0003 00e4 0004 0700 0002 0051 000e 1008     ..........Q.....
d03e8e0c:	0010 0207 000f 0000 0000 0000               ............

d03e8e18 <prg_sid_flute>:
d03e8e18:	0003 34b4 0002 0011 000e 2006 0010 0107     ...4....... ....
d03e8e28:	000f 0000 0000 0000                         ........

d03e8e30 <prg_sid_guitar>:
d03e8e30:	0003 0352 0004 0280 0002 0041 0001 0001     ..R.......A.....
d03e8e40:	0004 0900 000f 0000 0000 0000               ............

d03e8e4c <prg_sid_reed>:
d03e8e4c:	0003 01c4 0004 0300 0002 0041 000e 2006     ..........A.... 
d03e8e5c:	0010 0108 000f 0000 0000 0000               ............

d03e8e68 <prg_sid_strings>:
d03e8e68:	0003 45c5 0004 0800 0002 0051 000e 1807     ...E......Q.....
d03e8e78:	0010 0109 000f 0000 0000 0000               ............

d03e8e84 <prg_sitar_sid>:
d03e8e84:	0003 0273 0004 0180 0002 0041 0009 0c13     ..s.......A.....
d03e8e94:	0001 0003 0009 0000 000f 0000 0000 0000     ................

d03e8ea4 <prg_slap_bass>:
d03e8ea4:	0003 0471 0004 0140 0002 0041 0005 000c     ..q...@...A.....
d03e8eb4:	0001 0000 0005 0000 0009 000c 000f 0000     ................
d03e8ec4:	0000 0000                                   ....

d03e8ec8 <prg_sweep_pad>:
d03e8ec8:	0003 45f6 0004 0180 0002 0041 000e 1808     ...E......A.....
d03e8ed8:	0010 0208 0006 0040 0001 0001 280b 0002     ......@......(..
d03e8ee8:	0007 0040 0001 0001 280b 0002 000f 0006     ..@......(......
d03e8ef8:	0000 0000                                   ....

d03e8efc <prg_synth_bass_1>:
d03e8efc:	0003 0671 0004 0280 0005 000c 0002 0041     ..q...........A.
d03e8f0c:	0001 0000 0005 0000 0009 000c 000f 0000     ................
d03e8f1c:	0000 0000                                   ....

d03e8f20 <prg_synth_brass>:
d03e8f20:	0003 01f4 0004 0200 0002 0041 000e 1805     ..........A.....
d03e8f30:	0010 0205 0006 0080 0001 0001 040b 0002     ................
d03e8f40:	0007 0080 0001 0001 040b 0002 000f 0006     ................
d03e8f50:	0000 0000                                   ....

d03e8f54 <prg_synth_drum_program>:
d03e8f54:	0003 00a2 0005 0018 0002 0011 000d fe0c     ................
d03e8f64:	0001 0004 000d 0000 0000 0000               ............

d03e8f70 <prg_warm_pad>:
d03e8f70:	0003 55f6 0004 0800 0002 0051 000e 1809     ...U......Q.....
d03e8f80:	0010 020a 000f 0000 0000 0000               ............

d03e8f8c <sid_note_to_freq>:
d03e8f8c:	0111 0121 0133 0145 0158 016d 0182 019a     ..!.3.E.X.m.....
d03e8f9c:	01b2 01cc 01e7 0204 0223 0243 0266 028a     ........#.C.f...
d03e8fac:	02b1 02da 0305 0333 0364 0398 03cf 0409     ......3.d.......
d03e8fbc:	0446 0487 04cc 0515 0562 05b4 060b 0667     F.......b.....g.
d03e8fcc:	06c9 0730 079d 0811 088c 090e 0998 0a2a     ..0...........*.
d03e8fdc:	0ac5 0b69 0c17 0ccf 0d92 0e61 0f3c 1023     ..i.......a.<.#.
d03e8fec:	1119 121d 1331 1455 158a 16d2 182d 199d     ....1.U.....-...
d03e8ffc:	1b23 1cc0 1e76 2046 2232 243a 2662 28aa     #...v.F 2":$b&.(
d03e900c:	2b15 2da5 305b 333b 3647 3981 3cec 408c     .+.-[0;3G6.9.<.@
d03e901c:	4464 4875 4cc4 5154 562a 5b4a 60b7 6676     dDuH.LTQ*VJ[.`vf
d03e902c:	6c8e 7302 79d9 8118 88c9 90ea 9988 a2a9     .l.s.y..........
d03e903c:	ac55 b694 c16f ccee d91d e605 f3b3 ffff     U...o...........
d03e904c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d03e905c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d03e906c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d03e907c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................

d03e908c <sid_release_ticks_50hz>:
d03e908c:	0001 0002 0003 0004 0006 0009 000b 000d     ................
d03e909c:	0010 0026 004c 0079 0097 01c3 02ef 04b1     ..&.L.y.........
d03e90ac:	4843 3031 7520 6573 2073 6874 2065 6570     CH10 uses the pe
d03e90bc:	6372 7375 6973 6e6f 7220 756f 6574 0072     rcussion router.
d03e90cc:	6146 6c6c 6162 6b63 0000 0000 4550 4652     Fallback....PERF
d03e90dc:	524f 414d 434e 0045 4553 454c 5443 4445     ORMANCE.SELECTED
d03e90ec:	4320 4148 4e4e 4c45 0000 0000 4843 3025      CHANNEL....CH%0
d03e90fc:	7532 5020 3025 7533 2520 312e 7338 0000     2u P%03u %.18s..
d03e910c:	502d 0000 502b 0000 472d 0000 472b 0000     -P..+P..-G..+G..
d03e911c:	4552 4543 544e 5220 554f 4954 474e 0000     RECENT ROUTING..
d03e912c:	4843 3025 7532 5020 3025 7533 2520 312d     CH%02u P%03u %-1
d03e913c:	2e30 3031 0073 0000 5250 4a4f 4345 0054     0.10s...PROJECT.
d03e914c:	6153 6576 6c2f 616f 2064 6f68 6b6f 2073     Save/load hooks 
d03e915c:	6572 6461 2e79 0000 6150 6374 2068 6162     ready...Patch ba
d03e916c:	6b6e 2073 616c 6574 2e72 0000 7542 7474     nks later...Butt
d03e917c:	6e6f 2073 7261 2065 6c63 6369 616b 6c62     ons are clickabl
d03e918c:	2e65 0000 4e45 4241 454c 0044 554d 4554     e...ENABLED.MUTE
d03e919c:	0044 0000 554d 4554 0000 0000 4e45 4241     D...MUTE....ENAB
d03e91ac:	454c 0000 4d56 5220 4d41 4520 4944 4f54     LE..VM RAM EDITO
d03e91bc:	0052 0000 4d56 4320 444f 2045 4956 5745     R...VM CODE VIEW
d03e91cc:	5245 0000 4956 5745 0000 0000 4445 5449     ER..VIEW....EDIT
d03e91dc:	0000 0000 4150 0052 504f 0043 4156 004c     ....PAR.OPC.VAL.
d03e91ec:	4953 4244 584f 4d20 4449 2049 4953 2044     SIDBOX MIDI SID 
d03e91fc:	3056 392e 0000 0000 494c 4556 5320 4e59     V0.9....LIVE SYN
d03e920c:	4854 4320 4e4f 5254 4c4f 0000 4843 4e41     TH CONTROL..CHAN
d03e921c:	454e 204c 5341 4953 4e47 454d 544e 0053     NEL ASSIGNMENTS.
d03e922c:	4843 3120 342d 0000 4843 3520 382d 0000     CH 1-4..CH 5-8..
d03e923c:	4843 3920 312d 0032 4843 3120 2d33 3631     CH 9-12.CH 13-16
d03e924c:	0000 0000 4843 2020 5020 4752 2020 5020     ....CH   PRG   P
d03e925c:	4f52 5247 4d41 4e20 4d41 0045 3025 7532     ROGRAM NAME.%02u
d03e926c:	2020 2520 3330 2075 2020 2d25 3532 322e        %03u   %-25.2
d03e927c:	7335 0000 002d 0000 002b 0000 4c47 424f     5s..-...+...GLOB
d03e928c:	4c41 4f20 5455 5550 2054 4147 4e49 0000     AL OUTPUT GAIN..
d03e929c:	7525 2525 0000 0000 4553 454c 5443 4445     %u%%....SELECTED
d03e92ac:	4320 4148 4e4e 4c45 5620 4c4f 4d55 0045      CHANNEL VOLUME.
d03e92bc:	4843 3025 7532 2020 3025 7533 0000 0000     CH%02u  %03u....
d03e92cc:	4553 454c 5443 4445 4320 4148 4e4e 4c45     SELECTED CHANNEL
d03e92dc:	4520 5058 4552 5353 4f49 004e 5845 2050      EXPRESSION.EXP 
d03e92ec:	3025 7533 0000 0000 494d 4944 4320 3743     %03u....MIDI CC7
d03e92fc:	432f 3143 2031 7473 6c69 206c 7075 6164     /CC11 still upda
d03e930c:	6574 7720 6968 656c 7020 616c 6979 676e     te while playing
d03e931c:	002e 0000 4550 4352 5355 4953 4e4f 5320     ....PERCUSSION S
d03e932c:	5445 4954 474e 0053 4d47 6320 6168 6e6e     ETTINGS.GM chann
d03e933c:	6c65 3120 2030 6f72 7475 6465 7420 206f     el 10 routed to 
d03e934c:	4953 2044 7264 6d75 7020 6f72 7267 6d61     SID drum program
d03e935c:	0073 0000 5453 5441 3a45 2520 0073 0000     s...STATE: %s...
d03e936c:	5244 4d55 4720 4941 204e 7525 2525 0000     DRUM GAIN %u%%..
d03e937c:	614d 7070 6465 203a 696b 6b63 202c 6e73     Mapped: kick, sn
d03e938c:	7261 2c65 6820 7461 2c73 7420 6d6f 2e73     are, hats, toms.
d03e939c:	0000 0000 7546 7574 6572 203a 6570 2d72     ....Future: per-
d03e93ac:	6f6e 6574 6b20 7469 6220 6f72 7377 7265     note kit browser
d03e93bc:	002e 0000 4843 3031 6920 6e67 726f 7365     ....CH10 ignores
d03e93cc:	7020 6f72 7267 6d61 6320 6168 676e 7365      program changes
d03e93dc:	002e 0000 4843 3025 7532 5020 3025 7533     ....CH%02u P%03u
d03e93ec:	2520 322e 7334 0000 4d47 6420 7572 736d      %.24s..GM drums
d03e93fc:	7520 6573 7020 7265 7563 7373 6f69 206e      use percussion 
d03e940c:	6f72 7475 7265 002e 6f4e 5620 204d 7270     router..No VM pr
d03e941c:	676f 6172 206d 7361 6973 6e67 6465 002e     ogram assigned..
d03e942c:	4449 2058 504f 4f43 4544 2020 5020 2020     IDX OPCODE   P  
d03e943c:	4156 554c 0045 0000 5055 0000 4e44 0000     VALUE...UP..DN..
d03e944c:	4f52 2557 3230 2075 7325 0000 4552 5453     ROW%02u %s..REST
d03e945c:	0000 0000 4948 0000 312d 0036 312b 0036     ....HI..-16.+16.
d03e946c:	4c46 0044 4f4c 0000 3025 7532 252f 3230     FLD.LO..%02u/%02
d03e947c:	0075 0000 4150 494e 0043 0000 4153 4556     u...PANIC...SAVE
d03e948c:	0000 0000 4f4c 4441 0000 0000 4f43 464e     ....LOAD....CONF
d03e949c:	5249 204d 4341 4954 4e4f 0000 6552 7473     IRM ACTION..Rest
d03e94ac:	726f 2065 6573 656c 7463 6465 5620 204d     ore selected VM 
d03e94bc:	7270 676f 6172 006d 7266 6d6f 6920 7374     program.from its
d03e94cc:	7020 6572 6573 2074 6564 6166 6c75 3f74      preset default?
d03e94dc:	0000 0000 4552 5453 524f 0045 4143 434e     ....RESTORE.CANC
d03e94ec:	4c45 0000 3025 7532 2020 2d25 7338 2520     EL..%02u  %-8s %
d03e94fc:	3230 2058 3025 5834 0000 0000 3f3f 003f     02X %04X....???.
d03e950c:	6952 6867 2074 6c63 6369 206b 6170 696e     Right click pani
d03e951c:	0063 0000 6f4e 5620 204d 6564 6166 6c75     c...No VM defaul
d03e952c:	2074 6f74 7220 7365 6f74 6572 0000 0000     t to restore....
d03e953c:	4d56 7220 7365 6f74 6572 2064 7266 6d6f     VM restored from
d03e954c:	7020 6572 6573 0074 6552 7473 726f 2065      preset.Restore 
d03e955c:	6163 636e 6c65 656c 0064 0000 6153 6576     cancelled...Save
d03e956c:	6220 6f72 7377 7265 7220 7365 7265 6576      browser reserve
d03e957c:	0064 0000 6f4c 6461 6220 6f72 7377 7265     d...Load browser
d03e958c:	7220 7365 7265 6576 0064 0000 6150 696e      reserved...Pani
d03e959c:	3a63 6120 6c6c 6e20 746f 7365 6b20 6c69     c: all notes kil
d03e95ac:	656c 0064 4d56 6520 6964 2074 6976 7765     led.VM edit view
d03e95bc:	6320 6f6c 6573 0064 6550 6372 7375 6973      closed.Percussi
d03e95cc:	6e6f 7220 756f 6574 2072 6168 2073 6f6e     on router has no
d03e95dc:	5620 204d 6465 7469 0000 0000 6f4e 5620      VM edit....No V
d03e95ec:	204d 7270 676f 6172 206d 6f74 6520 6964     M program to edi
d03e95fc:	0074 0000 4d56 6520 6964 6f74 2072 7375     t...VM editor us
d03e960c:	7365 5220 4d41 7020 7461 6863 0000 0000     es RAM patch....
d03e961c:	6952 6867 2074 6c63 6369 206b 6170 696e     Right click pani
d03e962c:	2063 4c20 522b 6520 6978 7374 0000 0000     c  L+R exits....
d03e963c:	7525 252f 2075 6f76 6369 7365 0000 0000     %u/%u voices....
d03e964c:	6170 696e 2063 6c25 2075 7420 6f6d 2520     panic %lu  tmo %
d03e965c:	756c 0000 6167 6e69 2520 2575 2025 6420     lu..gain %u%%  d
d03e966c:	7572 736d 2520 2575 0025 0000 4f56 204c     rums %u%%...VOL 
d03e967c:	3025 7533 2020 5845 2050 3025 7533 2020     %03u  EXP %03u  
d03e968c:	4542 444e 2520 0064 003e 0000 4350 3025     BEND %d.>...PC%0
d03e969c:	7532 5620 7525 0000 4e45 0044 4157 5449     2u V%u..END.WAIT
d03e96ac:	0000 0000 4157 4556 0000 0000 4441 5253     ....WAVE....ADSR
d03e96bc:	0000 0000 5550 534c 0045 0000 4950 4354     ....PULSE...PITC
d03e96cc:	0048 0000 4441 5044 4d57 0000 4544 5043     H...ADDPWM..DECP
d03e96dc:	4d57 0000 4f50 5452 0041 0000 5241 0050     WM..PORTA...ARP.
d03e96ec:	4946 544c 5245 0000 4f4c 504f 0000 0000     FILTER..LOOP....
d03e96fc:	554a 504d 0000 0000 5753 4545 0050 0000     JUMP....SWEEP...
d03e970c:	4956 0042 4f48 444c 0000 0000 5254 4d45     VIB.HOLD....TREM
d03e971c:	0000 0000 4553 5654 5241 0000 4441 5644     ....SETVAR..ADDV
d03e972c:	5241 0000 4857 4f4e 4554 0000 4857 5447     AR..WHNOTE..WHGT
d03e973c:	0000 0000 4f4c 504f 4b42 0000 4f48 454d     ....LOOPBK..HOME
d03e974c:	0000 0000 4843 4e41 454e 534c 0000 0000     ....CHANNELS....
d03e975c:	494d 4558 0052 0000 4550 4352 0000 0000     MIXER...PERC....
d03e976c:	4d56 0000 6341 756f 7473 6369 5020 6169     VM..Acoustic Pia
d03e977c:	6f6e 0000 7242 6769 7468 4b20 7965 0000     no..Bright Key..
d03e978c:	6f48 6b6e 2d79 6f74 6b6e 0000 6c45 6365     Honky-tonk..Elec
d03e979c:	7274 6369 4b20 7965 0000 0000 6c43 7661     tric Key....Clav
d03e97ac:	5020 756c 6b63 0000 4953 2044 6542 6c6c      Pluck..SID Bell
d03e97bc:	0000 0000 7244 7761 6162 2072 724f 6167     ....Drawbar Orga
d03e97cc:	006e 0000 6843 7275 6863 4f20 6772 6e61     n...Church Organ
d03e97dc:	0000 0000 6552 6465 4f20 6772 6e61 0000     ....Reed Organ..
d03e97ec:	4953 2044 7547 7469 7261 0000 754d 6574     SID Guitar..Mute
d03e97fc:	2064 7547 7469 7261 0000 0000 764f 7265     d Guitar....Over
d03e980c:	7264 7669 2065 7447 0072 0000 6944 7473     drive Gtr...Dist
d03e981c:	4720 6975 6174 0072 754d 6574 2064 6f4e      Guitar.Muted No
d03e982c:	7369 0065 6341 756f 7473 6369 4220 7361     ise.Acoustic Bas
d03e983c:	0073 0000 4953 2044 6142 7373 0000 0000     s...SID Bass....
d03e984c:	7953 746e 2068 6142 7373 3120 0000 0000     Synth Bass 1....
d03e985c:	6c53 7061 4220 7361 0073 0000 4953 2044     Slap Bass...SID 
d03e986c:	7453 6972 676e 0073 6950 7a7a 6369 7461     Strings.Pizzicat
d03e987c:	006f 0000 4953 2044 6e45 6573 626d 656c     o...SID Ensemble
d03e988c:	0000 0000 4953 2044 7242 7361 0073 0000     ....SID Brass...
d03e989c:	7953 746e 2068 7242 7361 0073 4953 2044     Synth Brass.SID 
d03e98ac:	6552 6465 0000 0000 4953 2044 6c46 7475     Reed....SID Flut
d03e98bc:	0065 0000 654c 6461 5320 7571 7261 0065     e...Lead Square.
d03e98cc:	5750 204d 654c 6461 0000 0000 6146 7473     PWM Lead....Fast
d03e98dc:	4120 7072 4c20 6165 0064 0000 5748 4120      Arp Lead...HW A
d03e98ec:	7072 4c20 6165 0064 6843 6669 2066 654c     rp Lead.Chiff Le
d03e98fc:	6461 0000 6843 7261 6e61 2067 654c 6461     ad..Charang Lead
d03e990c:	0000 0000 5750 204d 7753 6565 0070 0000     ....PWM Sweep...
d03e991c:	6142 7373 4c2b 6165 0064 0000 6157 6d72     Bass+Lead...Warm
d03e992c:	5020 6461 0000 0000 7753 6565 2070 6150      Pad....Sweep Pa
d03e993c:	0064 0000 4953 2044 5846 0000 4953 2044     d...SID FX..SID 
d03e994c:	6c50 6375 006b 0000 7953 746e 2068 7244     Pluck...Synth Dr
d03e995c:	6d75 0000 6f4e 7369 2065 5846 0000 0000     um..Noise FX....
d03e996c:	4d56 4c20 6f6f 2070 6544 6f6d 0000 0000     VM Loop Demo....
d03e997c:	7547 736e 6f68 2074 5846 0000 4d47 4420     Gunshot FX..GM D
d03e998c:	7572 736d 0000 0000 2650 5153 1300 521e     rums....P&SQ...R
d03e999c:	8004 2650 5153 7f00                         ..P&SQ..

d03e99a4 <CSWTCH.585>:
d03e99a4:	9770 d03e 9780 d03e 9780 d03e 9780 d03e     p.>...>...>...>.
d03e99b4:	978c d03e 9798 d03e 9798 d03e 97a8 d03e     ..>...>...>...>.
d03e99c4:	97a8 d03e 97b4 d03e 97b4 d03e 97b4 d03e     ..>...>...>...>.
d03e99d4:	97b4 d03e 97b4 d03e 97b4 d03e 97b4 d03e     ..>...>...>...>.
d03e99e4:	97c0 d03e 97c0 d03e 97c0 d03e 97d0 d03e     ..>...>...>...>.
d03e99f4:	97e0 d03e 97e0 d03e 97e0 d03e 97e0 d03e     ..>...>...>...>.
d03e9a04:	97ec d03e 97ec d03e 97ec d03e 97ec d03e     ..>...>...>...>.
d03e9a14:	97f8 d03e 9808 d03e 9818 d03e 9824 d03e     ..>...>...>.$.>.
d03e9a24:	9830 d03e 9840 d03e 9840 d03e 9840 d03e     0.>.@.>.@.>.@.>.
d03e9a34:	9840 d03e 9840 d03e 984c d03e 985c d03e     @.>.@.>.L.>.\.>.
d03e9a44:	9868 d03e 9868 d03e 9868 d03e 9868 d03e     h.>.h.>.h.>.h.>.
d03e9a54:	9868 d03e 9868 d03e 9874 d03e 9880 d03e     h.>.h.>.t.>...>.
d03e9a64:	9880 d03e 9880 d03e 9880 d03e 9880 d03e     ..>...>...>...>.
d03e9a74:	9880 d03e 9880 d03e 9880 d03e 9880 d03e     ..>...>...>...>.
d03e9a84:	9890 d03e 9890 d03e 9890 d03e 9890 d03e     ..>...>...>...>.
d03e9a94:	9890 d03e 9890 d03e 989c d03e 989c d03e     ..>...>...>...>.
d03e9aa4:	98a8 d03e 98a8 d03e 98a8 d03e 98a8 d03e     ..>...>...>...>.
d03e9ab4:	98a8 d03e 98a8 d03e 98a8 d03e 98a8 d03e     ..>...>...>...>.
d03e9ac4:	98b4 d03e 98b4 d03e 98b4 d03e 98b4 d03e     ..>...>...>...>.
d03e9ad4:	98b4 d03e 98b4 d03e 98b4 d03e 98b4 d03e     ..>...>...>...>.
d03e9ae4:	98c0 d03e 98cc d03e 98d8 d03e 98e8 d03e     ..>...>...>...>.
d03e9af4:	98f4 d03e 9900 d03e 9910 d03e 991c d03e     ..>...>...>...>.
d03e9b04:	9928 d03e 9928 d03e 9928 d03e 9928 d03e     (.>.(.>.(.>.(.>.
d03e9b14:	9928 d03e 9928 d03e 9928 d03e 9934 d03e     (.>.(.>.(.>.4.>.
d03e9b24:	9940 d03e 9940 d03e 9940 d03e 9940 d03e     @.>.@.>.@.>.@.>.
d03e9b34:	9940 d03e 9940 d03e 9940 d03e 9940 d03e     @.>.@.>.@.>.@.>.
d03e9b44:	9948 d03e 9948 d03e 9948 d03e 9948 d03e     H.>.H.>.H.>.H.>.
d03e9b54:	9948 d03e 9948 d03e 9948 d03e 9948 d03e     H.>.H.>.H.>.H.>.
d03e9b64:	97b4 d03e 97b4 d03e 97b4 d03e 97b4 d03e     ..>...>...>...>.
d03e9b74:	97b4 d03e 97b4 d03e 9954 d03e 9954 d03e     ..>...>.T.>.T.>.
d03e9b84:	9960 d03e 9960 d03e 9960 d03e 9960 d03e     `.>.`.>.`.>.`.>.
d03e9b94:	9960 d03e 9960 d03e 996c d03e 997c d03e     `.>.`.>.l.>.|.>.
d03e9ba4:	9988 d03e                                   ..>.

d03e9ba8 <CSWTCH.595>:
d03e9ba8:	9748 d03e 9750 d03e 975c d03e 9764 d03e     H.>.P.>.\.>.d.>.
d03e9bb8:	976c d03e                                   l.>.

d03e9bbc <CSWTCH.597>:
d03e9bbc:	96a4 d03e 96a8 d03e 96b0 d03e 96b8 d03e     ..>...>...>...>.
d03e9bcc:	96c0 d03e 96c8 d03e 96d0 d03e 96d8 d03e     ..>...>...>...>.
d03e9bdc:	96e0 d03e 96e8 d03e 96ec d03e 96f4 d03e     ..>...>...>...>.
d03e9bec:	96fc d03e 9704 d03e 970c d03e 9710 d03e     ..>...>...>...>.
d03e9bfc:	9718 d03e 9720 d03e 9728 d03e 9730 d03e     ..>. .>.(.>.0.>.
d03e9c0c:	9738 d03e 9740 d03e                         8.>.@.>.

d03e9c14 <bands.9838>:
d03e9c14:	1110 1312 1314 1112                         ........

d03e9c1c <_global_impure_ptr>:
d03e9c1c:	a2c0 d03e                                   ..>.

d03e9c20 <__sf_fake_stderr>:
	...

d03e9c40 <__sf_fake_stdin>:
	...

d03e9c60 <__sf_fake_stdout>:
	...
d03e9c80:	2d23 2b30 0020 6c68 004c 6665 4567 4746     #-0+ .hlL.efgEFG
d03e9c90:	3000 3231 3433 3635 3837 4139 4342 4544     .0123456789ABCDE
d03e9ca0:	0046 3130 3332 3534 3736 3938 6261 6463     F.0123456789abcd
d03e9cb0:	6665                                         ef.

Disassembly of section .init:

d03e9cb4 <_init>:
d03e9cb4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e9cb6:	bf00      	nop

Disassembly of section .fini:

d03e9cb8 <_fini>:
d03e9cb8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e9cba:	bf00      	nop
