
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
d03e001e:	f006 fb5d 	bl	d03e66dc <setbuf>
d03e0022:	6833      	ldr	r3, [r6, #0]
d03e0024:	2100      	movs	r1, #0
d03e0026:	68d8      	ldr	r0, [r3, #12]
d03e0028:	f006 fb58 	bl	d03e66dc <setbuf>
d03e002c:	4629      	mov	r1, r5
d03e002e:	4620      	mov	r0, r4
d03e0030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d03e0034:	f003 bf0e 	b.w	d03e3e54 <main>
d03e0038:	d03e8c78 	.word	0xd03e8c78

d03e003c <initMalloc>:
d03e003c:	4902      	ldr	r1, [pc, #8]	; (d03e0048 <initMalloc+0xc>)
d03e003e:	4b03      	ldr	r3, [pc, #12]	; (d03e004c <initMalloc+0x10>)
d03e0040:	4a03      	ldr	r2, [pc, #12]	; (d03e0050 <initMalloc+0x14>)
d03e0042:	1a5b      	subs	r3, r3, r1
d03e0044:	6013      	str	r3, [r2, #0]
d03e0046:	4770      	bx	lr
d03e0048:	d03eb1d0 	.word	0xd03eb1d0
d03e004c:	d0600000 	.word	0xd0600000
d03e0050:	d03e9034 	.word	0xd03e9034

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
d03e009c:	f006 fa5e 	bl	d03e655c <__errno>
d03e00a0:	2209      	movs	r2, #9
d03e00a2:	4603      	mov	r3, r0
d03e00a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e00a8:	601a      	str	r2, [r3, #0]
d03e00aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e00ac:	d03e8ce4 	.word	0xd03e8ce4
d03e00b0:	2001f000 	.word	0x2001f000

d03e00b4 <_read>:
d03e00b4:	b508      	push	{r3, lr}
d03e00b6:	f006 fa51 	bl	d03e655c <__errno>
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
d03e0102:	f006 fa2b 	bl	d03e655c <__errno>
d03e0106:	220c      	movs	r2, #12
d03e0108:	4603      	mov	r3, r0
d03e010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e010e:	601a      	str	r2, [r3, #0]
d03e0110:	bd10      	pop	{r4, pc}
d03e0112:	bf00      	nop
d03e0114:	d03e8ce0 	.word	0xd03e8ce0
d03e0118:	d03eb1d0 	.word	0xd03eb1d0
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
d03e0210:	d03e7510 	.word	0xd03e7510
d03e0214:	2001f000 	.word	0x2001f000
d03e0218:	d03e7a98 	.word	0xd03e7a98
d03e021c:	d03e9038 	.word	0xd03e9038
d03e0220:	d03e7550 	.word	0xd03e7550

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
d03e02bc:	d03e8ce8 	.word	0xd03e8ce8
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
d03e0408:	d03e8ce8 	.word	0xd03e8ce8
d03e040c:	d03e7a98 	.word	0xd03e7a98

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
d03e04f0:	d03e8ce8 	.word	0xd03e8ce8

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
d03e0640:	d03e8678 	.word	0xd03e8678
d03e0644:	aaaaaaab 	.word	0xaaaaaaab
d03e0648:	d03e7a98 	.word	0xd03e7a98
d03e064c:	2001f000 	.word	0x2001f000
d03e0650:	d03e9038 	.word	0xd03e9038
d03e0654:	d03e9048 	.word	0xd03e9048
d03e0658:	d03e8ce8 	.word	0xd03e8ce8

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
d03e0784:	d03e9038 	.word	0xd03e9038
d03e0788:	aaaaaaab 	.word	0xaaaaaaab
d03e078c:	2001f000 	.word	0x2001f000
d03e0790:	d03e8ce8 	.word	0xd03e8ce8

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
d03e0860:	d03e9038 	.word	0xd03e9038
d03e0864:	aaaaaaab 	.word	0xaaaaaaab
d03e0868:	2001f000 	.word	0x2001f000
d03e086c:	d03e8ce8 	.word	0xd03e8ce8

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
d03e08c4:	d03e9038 	.word	0xd03e9038

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
d03e0a1c:	d03e9038 	.word	0xd03e9038
d03e0a20:	aaaaaaab 	.word	0xaaaaaaab
d03e0a24:	00080041 	.word	0x00080041
d03e0a28:	d03e7a98 	.word	0xd03e7a98
d03e0a2c:	2001f000 	.word	0x2001f000
d03e0a30:	d03e8ce8 	.word	0xd03e8ce8

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
d03e0b10:	d03e9038 	.word	0xd03e9038
d03e0b14:	aaaaaaab 	.word	0xaaaaaaab
d03e0b18:	2001f000 	.word	0x2001f000
d03e0b1c:	d03e8ce8 	.word	0xd03e8ce8
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
d03e0b70:	d03e9038 	.word	0xd03e9038

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
d03e0bd0:	d03e8ce8 	.word	0xd03e8ce8

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
d03e0ec8:	d03e9038 	.word	0xd03e9038
d03e0ecc:	2001f000 	.word	0x2001f000
d03e0ed0:	d03e8ce8 	.word	0xd03e8ce8
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
d03e11e8:	d03e8ce8 	.word	0xd03e8ce8
d03e11ec:	d03e7b98 	.word	0xd03e7b98
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
d03e1358:	d03e9038 	.word	0xd03e9038

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
d03e13f8:	d03e8d74 	.word	0xd03e8d74
d03e13fc:	02040811 	.word	0x02040811
d03e1400:	d03e8f92 	.word	0xd03e8f92
d03e1404:	d03e8d54 	.word	0xd03e8d54
d03e1408:	51eb851f 	.word	0x51eb851f
d03e140c:	d03e8d8a 	.word	0xd03e8d8a

d03e1410 <the50hzISR>:
d03e1410:	b510      	push	{r4, lr}
d03e1412:	4c3d      	ldr	r4, [pc, #244]	; (d03e1508 <the50hzISR+0xf8>)
d03e1414:	f7ff fbde 	bl	d03e0bd4 <sid_midi_isr>
d03e1418:	7823      	ldrb	r3, [r4, #0]
d03e141a:	b12b      	cbz	r3, d03e1428 <the50hzISR+0x18>
d03e141c:	88e3      	ldrh	r3, [r4, #6]
d03e141e:	f5b3 7f16 	cmp.w	r3, #600	; 0x258
d03e1422:	d265      	bcs.n	d03e14f0 <the50hzISR+0xe0>
d03e1424:	3301      	adds	r3, #1
d03e1426:	80e3      	strh	r3, [r4, #6]
d03e1428:	7a23      	ldrb	r3, [r4, #8]
d03e142a:	b12b      	cbz	r3, d03e1438 <the50hzISR+0x28>
d03e142c:	89e3      	ldrh	r3, [r4, #14]
d03e142e:	f5b3 7f16 	cmp.w	r3, #600	; 0x258
d03e1432:	d252      	bcs.n	d03e14da <the50hzISR+0xca>
d03e1434:	3301      	adds	r3, #1
d03e1436:	81e3      	strh	r3, [r4, #14]
d03e1438:	7c23      	ldrb	r3, [r4, #16]
d03e143a:	b12b      	cbz	r3, d03e1448 <the50hzISR+0x38>
d03e143c:	8ae3      	ldrh	r3, [r4, #22]
d03e143e:	f5b3 7f16 	cmp.w	r3, #600	; 0x258
d03e1442:	d23f      	bcs.n	d03e14c4 <the50hzISR+0xb4>
d03e1444:	3301      	adds	r3, #1
d03e1446:	82e3      	strh	r3, [r4, #22]
d03e1448:	7e23      	ldrb	r3, [r4, #24]
d03e144a:	b12b      	cbz	r3, d03e1458 <the50hzISR+0x48>
d03e144c:	8be3      	ldrh	r3, [r4, #30]
d03e144e:	f5b3 7f16 	cmp.w	r3, #600	; 0x258
d03e1452:	d22c      	bcs.n	d03e14ae <the50hzISR+0x9e>
d03e1454:	3301      	adds	r3, #1
d03e1456:	83e3      	strh	r3, [r4, #30]
d03e1458:	f894 3020 	ldrb.w	r3, [r4, #32]
d03e145c:	b12b      	cbz	r3, d03e146a <the50hzISR+0x5a>
d03e145e:	8ce3      	ldrh	r3, [r4, #38]	; 0x26
d03e1460:	f5b3 7f16 	cmp.w	r3, #600	; 0x258
d03e1464:	d217      	bcs.n	d03e1496 <the50hzISR+0x86>
d03e1466:	3301      	adds	r3, #1
d03e1468:	84e3      	strh	r3, [r4, #38]	; 0x26
d03e146a:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d03e146e:	b12b      	cbz	r3, d03e147c <the50hzISR+0x6c>
d03e1470:	8de3      	ldrh	r3, [r4, #46]	; 0x2e
d03e1472:	f5b3 7f16 	cmp.w	r3, #600	; 0x258
d03e1476:	d202      	bcs.n	d03e147e <the50hzISR+0x6e>
d03e1478:	3301      	adds	r3, #1
d03e147a:	85e3      	strh	r3, [r4, #46]	; 0x2e
d03e147c:	bd10      	pop	{r4, pc}
d03e147e:	2005      	movs	r0, #5
d03e1480:	f7ff f9f6 	bl	d03e0870 <sid_voice_note_kill>
d03e1484:	4a21      	ldr	r2, [pc, #132]	; (d03e150c <the50hzISR+0xfc>)
d03e1486:	2100      	movs	r1, #0
d03e1488:	6813      	ldr	r3, [r2, #0]
d03e148a:	f884 1028 	strb.w	r1, [r4, #40]	; 0x28
d03e148e:	3301      	adds	r3, #1
d03e1490:	85e1      	strh	r1, [r4, #46]	; 0x2e
d03e1492:	6013      	str	r3, [r2, #0]
d03e1494:	bd10      	pop	{r4, pc}
d03e1496:	2004      	movs	r0, #4
d03e1498:	f7ff f9ea 	bl	d03e0870 <sid_voice_note_kill>
d03e149c:	4a1b      	ldr	r2, [pc, #108]	; (d03e150c <the50hzISR+0xfc>)
d03e149e:	2100      	movs	r1, #0
d03e14a0:	6813      	ldr	r3, [r2, #0]
d03e14a2:	f884 1020 	strb.w	r1, [r4, #32]
d03e14a6:	3301      	adds	r3, #1
d03e14a8:	84e1      	strh	r1, [r4, #38]	; 0x26
d03e14aa:	6013      	str	r3, [r2, #0]
d03e14ac:	e7dd      	b.n	d03e146a <the50hzISR+0x5a>
d03e14ae:	2003      	movs	r0, #3
d03e14b0:	f7ff f9de 	bl	d03e0870 <sid_voice_note_kill>
d03e14b4:	4a15      	ldr	r2, [pc, #84]	; (d03e150c <the50hzISR+0xfc>)
d03e14b6:	2100      	movs	r1, #0
d03e14b8:	6813      	ldr	r3, [r2, #0]
d03e14ba:	7621      	strb	r1, [r4, #24]
d03e14bc:	3301      	adds	r3, #1
d03e14be:	83e1      	strh	r1, [r4, #30]
d03e14c0:	6013      	str	r3, [r2, #0]
d03e14c2:	e7c9      	b.n	d03e1458 <the50hzISR+0x48>
d03e14c4:	2002      	movs	r0, #2
d03e14c6:	f7ff f9d3 	bl	d03e0870 <sid_voice_note_kill>
d03e14ca:	4a10      	ldr	r2, [pc, #64]	; (d03e150c <the50hzISR+0xfc>)
d03e14cc:	2100      	movs	r1, #0
d03e14ce:	6813      	ldr	r3, [r2, #0]
d03e14d0:	7421      	strb	r1, [r4, #16]
d03e14d2:	3301      	adds	r3, #1
d03e14d4:	82e1      	strh	r1, [r4, #22]
d03e14d6:	6013      	str	r3, [r2, #0]
d03e14d8:	e7b6      	b.n	d03e1448 <the50hzISR+0x38>
d03e14da:	2001      	movs	r0, #1
d03e14dc:	f7ff f9c8 	bl	d03e0870 <sid_voice_note_kill>
d03e14e0:	4a0a      	ldr	r2, [pc, #40]	; (d03e150c <the50hzISR+0xfc>)
d03e14e2:	2100      	movs	r1, #0
d03e14e4:	6813      	ldr	r3, [r2, #0]
d03e14e6:	7221      	strb	r1, [r4, #8]
d03e14e8:	3301      	adds	r3, #1
d03e14ea:	81e1      	strh	r1, [r4, #14]
d03e14ec:	6013      	str	r3, [r2, #0]
d03e14ee:	e7a3      	b.n	d03e1438 <the50hzISR+0x28>
d03e14f0:	2000      	movs	r0, #0
d03e14f2:	f7ff f9bd 	bl	d03e0870 <sid_voice_note_kill>
d03e14f6:	4a05      	ldr	r2, [pc, #20]	; (d03e150c <the50hzISR+0xfc>)
d03e14f8:	2100      	movs	r1, #0
d03e14fa:	6813      	ldr	r3, [r2, #0]
d03e14fc:	7021      	strb	r1, [r4, #0]
d03e14fe:	3301      	adds	r3, #1
d03e1500:	80e1      	strh	r1, [r4, #6]
d03e1502:	6013      	str	r3, [r2, #0]
d03e1504:	e790      	b.n	d03e1428 <the50hzISR+0x18>
d03e1506:	bf00      	nop
d03e1508:	d03e8fb0 	.word	0xd03e8fb0
d03e150c:	d03e8fac 	.word	0xd03e8fac

d03e1510 <ui_select_program_delta>:
d03e1510:	2809      	cmp	r0, #9
d03e1512:	b4f0      	push	{r4, r5, r6, r7}
d03e1514:	d011      	beq.n	d03e153a <ui_select_program_delta+0x2a>
d03e1516:	280f      	cmp	r0, #15
d03e1518:	d806      	bhi.n	d03e1528 <ui_select_program_delta+0x18>
d03e151a:	4c10      	ldr	r4, [pc, #64]	; (d03e155c <ui_select_program_delta+0x4c>)
d03e151c:	5c22      	ldrb	r2, [r4, r0]
d03e151e:	4411      	add	r1, r2
d03e1520:	b20b      	sxth	r3, r1
d03e1522:	f383 0307 	usat	r3, #7, r3
d03e1526:	5423      	strb	r3, [r4, r0]
d03e1528:	4a0d      	ldr	r2, [pc, #52]	; (d03e1560 <ui_select_program_delta+0x50>)
d03e152a:	2301      	movs	r3, #1
d03e152c:	6811      	ldr	r1, [r2, #0]
d03e152e:	fa03 f000 	lsl.w	r0, r3, r0
d03e1532:	4308      	orrs	r0, r1
d03e1534:	bcf0      	pop	{r4, r5, r6, r7}
d03e1536:	6010      	str	r0, [r2, #0]
d03e1538:	4770      	bx	lr
d03e153a:	4d0a      	ldr	r5, [pc, #40]	; (d03e1564 <ui_select_program_delta+0x54>)
d03e153c:	2703      	movs	r7, #3
d03e153e:	4c0a      	ldr	r4, [pc, #40]	; (d03e1568 <ui_select_program_delta+0x58>)
d03e1540:	4e0a      	ldr	r6, [pc, #40]	; (d03e156c <ui_select_program_delta+0x5c>)
d03e1542:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d03e1544:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d03e1546:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d03e154a:	255a      	movs	r5, #90	; 0x5a
d03e154c:	7037      	strb	r7, [r6, #0]
d03e154e:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d03e1552:	4b07      	ldr	r3, [pc, #28]	; (d03e1570 <ui_select_program_delta+0x60>)
d03e1554:	701d      	strb	r5, [r3, #0]
d03e1556:	bcf0      	pop	{r4, r5, r6, r7}
d03e1558:	4770      	bx	lr
d03e155a:	bf00      	nop
d03e155c:	d03e8d64 	.word	0xd03e8d64
d03e1560:	d03e8fe4 	.word	0xd03e8fe4
d03e1564:	d03e7bb8 	.word	0xd03e7bb8
d03e1568:	d03e8ffc 	.word	0xd03e8ffc
d03e156c:	d03e8ff5 	.word	0xd03e8ff5
d03e1570:	d03e9024 	.word	0xd03e9024

d03e1574 <ui_box.constprop.0>:
d03e1574:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03e1578:	4c29      	ldr	r4, [pc, #164]	; (d03e1620 <ui_box.constprop.0+0xac>)
d03e157a:	4699      	mov	r9, r3
d03e157c:	4606      	mov	r6, r0
d03e157e:	201a      	movs	r0, #26
d03e1580:	7b25      	ldrb	r5, [r4, #12]
d03e1582:	4690      	mov	r8, r2
d03e1584:	7b67      	ldrb	r7, [r4, #13]
d03e1586:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e158a:	ea45 2507 	orr.w	r5, r5, r7, lsl #8
d03e158e:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e1592:	460f      	mov	r7, r1
d03e1594:	f89d a020 	ldrb.w	sl, [sp, #32]
d03e1598:	ea45 450e 	orr.w	r5, r5, lr, lsl #16
d03e159c:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d03e15a0:	686b      	ldr	r3, [r5, #4]
d03e15a2:	68db      	ldr	r3, [r3, #12]
d03e15a4:	4798      	blx	r3
d03e15a6:	7b25      	ldrb	r5, [r4, #12]
d03e15a8:	7b61      	ldrb	r1, [r4, #13]
d03e15aa:	464b      	mov	r3, r9
d03e15ac:	7ba0      	ldrb	r0, [r4, #14]
d03e15ae:	4642      	mov	r2, r8
d03e15b0:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d03e15b4:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e15b8:	4639      	mov	r1, r7
d03e15ba:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d03e15be:	4630      	mov	r0, r6
d03e15c0:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d03e15c4:	686d      	ldr	r5, [r5, #4]
d03e15c6:	686d      	ldr	r5, [r5, #4]
d03e15c8:	47a8      	blx	r5
d03e15ca:	7b25      	ldrb	r5, [r4, #12]
d03e15cc:	7b63      	ldrb	r3, [r4, #13]
d03e15ce:	4650      	mov	r0, sl
d03e15d0:	7ba2      	ldrb	r2, [r4, #14]
d03e15d2:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d03e15d6:	7be3      	ldrb	r3, [r4, #15]
d03e15d8:	ea45 4502 	orr.w	r5, r5, r2, lsl #16
d03e15dc:	ea45 6503 	orr.w	r5, r5, r3, lsl #24
d03e15e0:	686b      	ldr	r3, [r5, #4]
d03e15e2:	68db      	ldr	r3, [r3, #12]
d03e15e4:	4798      	blx	r3
d03e15e6:	7b25      	ldrb	r5, [r4, #12]
d03e15e8:	7b61      	ldrb	r1, [r4, #13]
d03e15ea:	f1a9 0302 	sub.w	r3, r9, #2
d03e15ee:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e15f2:	f1a8 0202 	sub.w	r2, r8, #2
d03e15f6:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d03e15fa:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e15fe:	1c79      	adds	r1, r7, #1
d03e1600:	1c70      	adds	r0, r6, #1
d03e1602:	ea45 440e 	orr.w	r4, r5, lr, lsl #16
d03e1606:	b21b      	sxth	r3, r3
d03e1608:	ea44 640c 	orr.w	r4, r4, ip, lsl #24
d03e160c:	b212      	sxth	r2, r2
d03e160e:	6864      	ldr	r4, [r4, #4]
d03e1610:	b209      	sxth	r1, r1
d03e1612:	b200      	sxth	r0, r0
d03e1614:	6864      	ldr	r4, [r4, #4]
d03e1616:	46a4      	mov	ip, r4
d03e1618:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03e161c:	4760      	bx	ip
d03e161e:	bf00      	nop
d03e1620:	2001f000 	.word	0x2001f000

d03e1624 <ui_button_draw>:
d03e1624:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e1628:	4cb3      	ldr	r4, [pc, #716]	; (d03e18f8 <ui_button_draw+0x2d4>)
d03e162a:	4693      	mov	fp, r2
d03e162c:	469a      	mov	sl, r3
d03e162e:	4606      	mov	r6, r0
d03e1630:	460d      	mov	r5, r1
d03e1632:	ed2d 8b04 	vpush	{d8-d9}
d03e1636:	b089      	sub	sp, #36	; 0x24
d03e1638:	7824      	ldrb	r4, [r4, #0]
d03e163a:	9b16      	ldr	r3, [sp, #88]	; 0x58
d03e163c:	07e2      	lsls	r2, r4, #31
d03e163e:	ee08 3a90 	vmov	s17, r3
d03e1642:	f89d 305c 	ldrb.w	r3, [sp, #92]	; 0x5c
d03e1646:	d537      	bpl.n	d03e16b8 <ui_button_draw+0x94>
d03e1648:	4aac      	ldr	r2, [pc, #688]	; (d03e18fc <ui_button_draw+0x2d8>)
d03e164a:	f9b2 2000 	ldrsh.w	r2, [r2]
d03e164e:	4282      	cmp	r2, r0
d03e1650:	db32      	blt.n	d03e16b8 <ui_button_draw+0x94>
d03e1652:	eb06 010b 	add.w	r1, r6, fp
d03e1656:	48aa      	ldr	r0, [pc, #680]	; (d03e1900 <ui_button_draw+0x2dc>)
d03e1658:	428a      	cmp	r2, r1
d03e165a:	f9b0 0000 	ldrsh.w	r0, [r0]
d03e165e:	da2b      	bge.n	d03e16b8 <ui_button_draw+0x94>
d03e1660:	42a8      	cmp	r0, r5
d03e1662:	db29      	blt.n	d03e16b8 <ui_button_draw+0x94>
d03e1664:	eb05 020a 	add.w	r2, r5, sl
d03e1668:	4290      	cmp	r0, r2
d03e166a:	da25      	bge.n	d03e16b8 <ui_button_draw+0x94>
d03e166c:	2b00      	cmp	r3, #0
d03e166e:	f000 812e 	beq.w	d03e18ce <ui_button_draw+0x2aa>
d03e1672:	ee18 0a90 	vmov	r0, s17
d03e1676:	4ca3      	ldr	r4, [pc, #652]	; (d03e1904 <ui_button_draw+0x2e0>)
d03e1678:	f005 f932 	bl	d03e68e0 <strlen>
d03e167c:	2114      	movs	r1, #20
d03e167e:	00c7      	lsls	r7, r0, #3
d03e1680:	4653      	mov	r3, sl
d03e1682:	465a      	mov	r2, fp
d03e1684:	9100      	str	r1, [sp, #0]
d03e1686:	b23f      	sxth	r7, r7
d03e1688:	4629      	mov	r1, r5
d03e168a:	4630      	mov	r0, r6
d03e168c:	9706      	str	r7, [sp, #24]
d03e168e:	f7ff ff71 	bl	d03e1574 <ui_box.constprop.0>
d03e1692:	7b23      	ldrb	r3, [r4, #12]
d03e1694:	210f      	movs	r1, #15
d03e1696:	7b62      	ldrb	r2, [r4, #13]
d03e1698:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e169c:	ee09 1a10 	vmov	s18, r1
d03e16a0:	7ba1      	ldrb	r1, [r4, #14]
d03e16a2:	2001      	movs	r0, #1
d03e16a4:	7be2      	ldrb	r2, [r4, #15]
d03e16a6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e16aa:	9005      	str	r0, [sp, #20]
d03e16ac:	2010      	movs	r0, #16
d03e16ae:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e16b2:	685b      	ldr	r3, [r3, #4]
d03e16b4:	68db      	ldr	r3, [r3, #12]
d03e16b6:	e023      	b.n	d03e1700 <ui_button_draw+0xdc>
d03e16b8:	2b00      	cmp	r3, #0
d03e16ba:	f040 80db 	bne.w	d03e1874 <ui_button_draw+0x250>
d03e16be:	ee18 0a90 	vmov	r0, s17
d03e16c2:	9305      	str	r3, [sp, #20]
d03e16c4:	f005 f90c 	bl	d03e68e0 <strlen>
d03e16c8:	221b      	movs	r2, #27
d03e16ca:	00c7      	lsls	r7, r0, #3
d03e16cc:	4c8d      	ldr	r4, [pc, #564]	; (d03e1904 <ui_button_draw+0x2e0>)
d03e16ce:	4653      	mov	r3, sl
d03e16d0:	4629      	mov	r1, r5
d03e16d2:	b23f      	sxth	r7, r7
d03e16d4:	4630      	mov	r0, r6
d03e16d6:	9200      	str	r2, [sp, #0]
d03e16d8:	465a      	mov	r2, fp
d03e16da:	9706      	str	r7, [sp, #24]
d03e16dc:	f7ff ff4a 	bl	d03e1574 <ui_box.constprop.0>
d03e16e0:	7b23      	ldrb	r3, [r4, #12]
d03e16e2:	2119      	movs	r1, #25
d03e16e4:	7b62      	ldrb	r2, [r4, #13]
d03e16e6:	2015      	movs	r0, #21
d03e16e8:	ee09 1a10 	vmov	s18, r1
d03e16ec:	7ba1      	ldrb	r1, [r4, #14]
d03e16ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e16f2:	7be2      	ldrb	r2, [r4, #15]
d03e16f4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e16f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e16fc:	685b      	ldr	r3, [r3, #4]
d03e16fe:	68db      	ldr	r3, [r3, #12]
d03e1700:	4798      	blx	r3
d03e1702:	7b22      	ldrb	r2, [r4, #12]
d03e1704:	7b63      	ldrb	r3, [r4, #13]
d03e1706:	b2b6      	uxth	r6, r6
d03e1708:	7ba1      	ldrb	r1, [r4, #14]
d03e170a:	b2ad      	uxth	r5, r5
d03e170c:	ea42 2303 	orr.w	r3, r2, r3, lsl #8
d03e1710:	1c77      	adds	r7, r6, #1
d03e1712:	fa1f f08b 	uxth.w	r0, fp
d03e1716:	7be2      	ldrb	r2, [r4, #15]
d03e1718:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
d03e171c:	9603      	str	r6, [sp, #12]
d03e171e:	b23b      	sxth	r3, r7
d03e1720:	1c6e      	adds	r6, r5, #1
d03e1722:	f1a0 0902 	sub.w	r9, r0, #2
d03e1726:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d03e172a:	ee08 3a10 	vmov	s16, r3
d03e172e:	b236      	sxth	r6, r6
d03e1730:	6852      	ldr	r2, [r2, #4]
d03e1732:	fa0f f989 	sxth.w	r9, r9
d03e1736:	2302      	movs	r3, #2
d03e1738:	4631      	mov	r1, r6
d03e173a:	f8d2 8004 	ldr.w	r8, [r2, #4]
d03e173e:	464a      	mov	r2, r9
d03e1740:	9007      	str	r0, [sp, #28]
d03e1742:	ee18 0a10 	vmov	r0, s16
d03e1746:	9504      	str	r5, [sp, #16]
d03e1748:	47c0      	blx	r8
d03e174a:	7b22      	ldrb	r2, [r4, #12]
d03e174c:	fa1f f58a 	uxth.w	r5, sl
d03e1750:	7b63      	ldrb	r3, [r4, #13]
d03e1752:	4631      	mov	r1, r6
d03e1754:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e1758:	f1a5 0802 	sub.w	r8, r5, #2
d03e175c:	ea42 2303 	orr.w	r3, r2, r3, lsl #8
d03e1760:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e1764:	fa0f f888 	sxth.w	r8, r8
d03e1768:	ee18 0a10 	vmov	r0, s16
d03e176c:	ea43 4e0e 	orr.w	lr, r3, lr, lsl #16
d03e1770:	2202      	movs	r2, #2
d03e1772:	4643      	mov	r3, r8
d03e1774:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d03e1778:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e177c:	f8dc 7004 	ldr.w	r7, [ip, #4]
d03e1780:	47b8      	blx	r7
d03e1782:	7b20      	ldrb	r0, [r4, #12]
d03e1784:	9a05      	ldr	r2, [sp, #20]
d03e1786:	7b61      	ldrb	r1, [r4, #13]
d03e1788:	2a00      	cmp	r2, #0
d03e178a:	7ba2      	ldrb	r2, [r4, #14]
d03e178c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e1790:	7be3      	ldrb	r3, [r4, #15]
d03e1792:	bf14      	ite	ne
d03e1794:	201d      	movne	r0, #29
d03e1796:	2010      	moveq	r0, #16
d03e1798:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e179c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e17a0:	685b      	ldr	r3, [r3, #4]
d03e17a2:	68db      	ldr	r3, [r3, #12]
d03e17a4:	4798      	blx	r3
d03e17a6:	7b20      	ldrb	r0, [r4, #12]
d03e17a8:	7b63      	ldrb	r3, [r4, #13]
d03e17aa:	1ee9      	subs	r1, r5, #3
d03e17ac:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e17b0:	464a      	mov	r2, r9
d03e17b2:	ea40 2303 	orr.w	r3, r0, r3, lsl #8
d03e17b6:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e17ba:	9d04      	ldr	r5, [sp, #16]
d03e17bc:	ee18 0a10 	vmov	r0, s16
d03e17c0:	ea43 470e 	orr.w	r7, r3, lr, lsl #16
d03e17c4:	2302      	movs	r3, #2
d03e17c6:	4429      	add	r1, r5
d03e17c8:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d03e17cc:	b209      	sxth	r1, r1
d03e17ce:	687d      	ldr	r5, [r7, #4]
d03e17d0:	686d      	ldr	r5, [r5, #4]
d03e17d2:	47a8      	blx	r5
d03e17d4:	7b21      	ldrb	r1, [r4, #12]
d03e17d6:	7b62      	ldrb	r2, [r4, #13]
d03e17d8:	7ba5      	ldrb	r5, [r4, #14]
d03e17da:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d03e17de:	9b07      	ldr	r3, [sp, #28]
d03e17e0:	7be7      	ldrb	r7, [r4, #15]
d03e17e2:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d03e17e6:	9903      	ldr	r1, [sp, #12]
d03e17e8:	1ed8      	subs	r0, r3, #3
d03e17ea:	2202      	movs	r2, #2
d03e17ec:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d03e17f0:	4643      	mov	r3, r8
d03e17f2:	4408      	add	r0, r1
d03e17f4:	4631      	mov	r1, r6
d03e17f6:	686d      	ldr	r5, [r5, #4]
d03e17f8:	b200      	sxth	r0, r0
d03e17fa:	686d      	ldr	r5, [r5, #4]
d03e17fc:	47a8      	blx	r5
d03e17fe:	f1ab 0307 	sub.w	r3, fp, #7
d03e1802:	9a06      	ldr	r2, [sp, #24]
d03e1804:	4293      	cmp	r3, r2
d03e1806:	dc58      	bgt.n	d03e18ba <ui_button_draw+0x296>
d03e1808:	9d03      	ldr	r5, [sp, #12]
d03e180a:	3504      	adds	r5, #4
d03e180c:	b2aa      	uxth	r2, r5
d03e180e:	b22d      	sxth	r5, r5
d03e1810:	9b04      	ldr	r3, [sp, #16]
d03e1812:	f1aa 0110 	sub.w	r1, sl, #16
d03e1816:	eb03 0161 	add.w	r1, r3, r1, asr #1
d03e181a:	9b05      	ldr	r3, [sp, #20]
d03e181c:	b289      	uxth	r1, r1
d03e181e:	b113      	cbz	r3, d03e1826 <ui_button_draw+0x202>
d03e1820:	1c55      	adds	r5, r2, #1
d03e1822:	3101      	adds	r1, #1
d03e1824:	b22d      	sxth	r5, r5
d03e1826:	7b23      	ldrb	r3, [r4, #12]
d03e1828:	b209      	sxth	r1, r1
d03e182a:	7b62      	ldrb	r2, [r4, #13]
d03e182c:	ee19 0a10 	vmov	r0, s18
d03e1830:	7ba6      	ldrb	r6, [r4, #14]
d03e1832:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1836:	7be2      	ldrb	r2, [r4, #15]
d03e1838:	9103      	str	r1, [sp, #12]
d03e183a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d03e183e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1842:	685b      	ldr	r3, [r3, #4]
d03e1844:	68db      	ldr	r3, [r3, #12]
d03e1846:	4798      	blx	r3
d03e1848:	7b23      	ldrb	r3, [r4, #12]
d03e184a:	7b60      	ldrb	r0, [r4, #13]
d03e184c:	ee18 2a90 	vmov	r2, s17
d03e1850:	7ba6      	ldrb	r6, [r4, #14]
d03e1852:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03e1856:	7be4      	ldrb	r4, [r4, #15]
d03e1858:	9903      	ldr	r1, [sp, #12]
d03e185a:	4628      	mov	r0, r5
d03e185c:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d03e1860:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03e1864:	685b      	ldr	r3, [r3, #4]
d03e1866:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e1868:	b009      	add	sp, #36	; 0x24
d03e186a:	ecbd 8b04 	vpop	{d8-d9}
d03e186e:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e1872:	4718      	bx	r3
d03e1874:	ee18 0a90 	vmov	r0, s17
d03e1878:	4c22      	ldr	r4, [pc, #136]	; (d03e1904 <ui_button_draw+0x2e0>)
d03e187a:	f005 f831 	bl	d03e68e0 <strlen>
d03e187e:	211c      	movs	r1, #28
d03e1880:	00c7      	lsls	r7, r0, #3
d03e1882:	4653      	mov	r3, sl
d03e1884:	465a      	mov	r2, fp
d03e1886:	4630      	mov	r0, r6
d03e1888:	b23f      	sxth	r7, r7
d03e188a:	9100      	str	r1, [sp, #0]
d03e188c:	4629      	mov	r1, r5
d03e188e:	9706      	str	r7, [sp, #24]
d03e1890:	f7ff fe70 	bl	d03e1574 <ui_box.constprop.0>
d03e1894:	7b23      	ldrb	r3, [r4, #12]
d03e1896:	210f      	movs	r1, #15
d03e1898:	7b62      	ldrb	r2, [r4, #13]
d03e189a:	2000      	movs	r0, #0
d03e189c:	ee09 1a10 	vmov	s18, r1
d03e18a0:	7ba1      	ldrb	r1, [r4, #14]
d03e18a2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e18a6:	7be2      	ldrb	r2, [r4, #15]
d03e18a8:	9005      	str	r0, [sp, #20]
d03e18aa:	201d      	movs	r0, #29
d03e18ac:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e18b0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e18b4:	685b      	ldr	r3, [r3, #4]
d03e18b6:	68db      	ldr	r3, [r3, #12]
d03e18b8:	e722      	b.n	d03e1700 <ui_button_draw+0xdc>
d03e18ba:	ebbb 0502 	subs.w	r5, fp, r2
d03e18be:	9b03      	ldr	r3, [sp, #12]
d03e18c0:	bf48      	it	mi
d03e18c2:	3501      	addmi	r5, #1
d03e18c4:	eb03 0565 	add.w	r5, r3, r5, asr #1
d03e18c8:	b2aa      	uxth	r2, r5
d03e18ca:	b22d      	sxth	r5, r5
d03e18cc:	e7a0      	b.n	d03e1810 <ui_button_draw+0x1ec>
d03e18ce:	ee18 0a90 	vmov	r0, s17
d03e18d2:	4c0c      	ldr	r4, [pc, #48]	; (d03e1904 <ui_button_draw+0x2e0>)
d03e18d4:	f005 f804 	bl	d03e68e0 <strlen>
d03e18d8:	2114      	movs	r1, #20
d03e18da:	00c7      	lsls	r7, r0, #3
d03e18dc:	4653      	mov	r3, sl
d03e18de:	465a      	mov	r2, fp
d03e18e0:	9100      	str	r1, [sp, #0]
d03e18e2:	b23f      	sxth	r7, r7
d03e18e4:	4629      	mov	r1, r5
d03e18e6:	4630      	mov	r0, r6
d03e18e8:	9706      	str	r7, [sp, #24]
d03e18ea:	f7ff fe43 	bl	d03e1574 <ui_box.constprop.0>
d03e18ee:	7b23      	ldrb	r3, [r4, #12]
d03e18f0:	2119      	movs	r1, #25
d03e18f2:	7b62      	ldrb	r2, [r4, #13]
d03e18f4:	e6d0      	b.n	d03e1698 <ui_button_draw+0x74>
d03e18f6:	bf00      	nop
d03e18f8:	d03e8ff3 	.word	0xd03e8ff3
d03e18fc:	d03e8ff6 	.word	0xd03e8ff6
d03e1900:	d03e8ff8 	.word	0xd03e8ff8
d03e1904:	2001f000 	.word	0x2001f000

d03e1908 <ui_panel>:
d03e1908:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e190c:	271f      	movs	r7, #31
d03e190e:	b082      	sub	sp, #8
d03e1910:	4c2a      	ldr	r4, [pc, #168]	; (d03e19bc <ui_panel+0xb4>)
d03e1912:	4690      	mov	r8, r2
d03e1914:	9700      	str	r7, [sp, #0]
d03e1916:	4605      	mov	r5, r0
d03e1918:	460e      	mov	r6, r1
d03e191a:	9f08      	ldr	r7, [sp, #32]
d03e191c:	f7ff fe2a 	bl	d03e1574 <ui_box.constprop.0>
d03e1920:	7b23      	ldrb	r3, [r4, #12]
d03e1922:	7b62      	ldrb	r2, [r4, #13]
d03e1924:	2014      	movs	r0, #20
d03e1926:	7ba1      	ldrb	r1, [r4, #14]
d03e1928:	b2ad      	uxth	r5, r5
d03e192a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e192e:	7be2      	ldrb	r2, [r4, #15]
d03e1930:	b2b6      	uxth	r6, r6
d03e1932:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e1936:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e193a:	685b      	ldr	r3, [r3, #4]
d03e193c:	68db      	ldr	r3, [r3, #12]
d03e193e:	4798      	blx	r3
d03e1940:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e1944:	7b60      	ldrb	r0, [r4, #13]
d03e1946:	f1a8 0202 	sub.w	r2, r8, #2
d03e194a:	7ba3      	ldrb	r3, [r4, #14]
d03e194c:	1c71      	adds	r1, r6, #1
d03e194e:	ea4c 2c00 	orr.w	ip, ip, r0, lsl #8
d03e1952:	f894 e00f 	ldrb.w	lr, [r4, #15]
d03e1956:	1c68      	adds	r0, r5, #1
d03e1958:	b212      	sxth	r2, r2
d03e195a:	ea4c 4c03 	orr.w	ip, ip, r3, lsl #16
d03e195e:	2314      	movs	r3, #20
d03e1960:	b209      	sxth	r1, r1
d03e1962:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d03e1966:	b200      	sxth	r0, r0
d03e1968:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e196c:	f8dc 8004 	ldr.w	r8, [ip, #4]
d03e1970:	47c0      	blx	r8
d03e1972:	7b23      	ldrb	r3, [r4, #12]
d03e1974:	7b62      	ldrb	r2, [r4, #13]
d03e1976:	201e      	movs	r0, #30
d03e1978:	7ba1      	ldrb	r1, [r4, #14]
d03e197a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e197e:	7be2      	ldrb	r2, [r4, #15]
d03e1980:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e1984:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1988:	685b      	ldr	r3, [r3, #4]
d03e198a:	68db      	ldr	r3, [r3, #12]
d03e198c:	4798      	blx	r3
d03e198e:	7b23      	ldrb	r3, [r4, #12]
d03e1990:	7b62      	ldrb	r2, [r4, #13]
d03e1992:	1d31      	adds	r1, r6, #4
d03e1994:	7ba6      	ldrb	r6, [r4, #14]
d03e1996:	f105 0008 	add.w	r0, r5, #8
d03e199a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e199e:	7be4      	ldrb	r4, [r4, #15]
d03e19a0:	b289      	uxth	r1, r1
d03e19a2:	463a      	mov	r2, r7
d03e19a4:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d03e19a8:	b280      	uxth	r0, r0
d03e19aa:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03e19ae:	685b      	ldr	r3, [r3, #4]
d03e19b0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e19b2:	b002      	add	sp, #8
d03e19b4:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d03e19b8:	4718      	bx	r3
d03e19ba:	bf00      	nop
d03e19bc:	2001f000 	.word	0x2001f000

d03e19c0 <midi_update_all_active_volume>:
d03e19c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e19c2:	4c0c      	ldr	r4, [pc, #48]	; (d03e19f4 <midi_update_all_active_volume+0x34>)
d03e19c4:	7823      	ldrb	r3, [r4, #0]
d03e19c6:	b9bb      	cbnz	r3, d03e19f8 <midi_update_all_active_volume+0x38>
d03e19c8:	7a23      	ldrb	r3, [r4, #8]
d03e19ca:	2b00      	cmp	r3, #0
d03e19cc:	d157      	bne.n	d03e1a7e <midi_update_all_active_volume+0xbe>
d03e19ce:	7c23      	ldrb	r3, [r4, #16]
d03e19d0:	2b00      	cmp	r3, #0
d03e19d2:	f040 8098 	bne.w	d03e1b06 <midi_update_all_active_volume+0x146>
d03e19d6:	7e23      	ldrb	r3, [r4, #24]
d03e19d8:	2b00      	cmp	r3, #0
d03e19da:	f040 80d8 	bne.w	d03e1b8e <midi_update_all_active_volume+0x1ce>
d03e19de:	f894 3020 	ldrb.w	r3, [r4, #32]
d03e19e2:	2b00      	cmp	r3, #0
d03e19e4:	f040 8118 	bne.w	d03e1c18 <midi_update_all_active_volume+0x258>
d03e19e8:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d03e19ec:	2b00      	cmp	r3, #0
d03e19ee:	f040 815a 	bne.w	d03e1ca6 <midi_update_all_active_volume+0x2e6>
d03e19f2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e19f4:	d03e8fb0 	.word	0xd03e8fb0
d03e19f8:	7862      	ldrb	r2, [r4, #1]
d03e19fa:	4bce      	ldr	r3, [pc, #824]	; (d03e1d34 <midi_update_all_active_volume+0x374>)
d03e19fc:	78e0      	ldrb	r0, [r4, #3]
d03e19fe:	2a09      	cmp	r2, #9
d03e1a00:	5c9e      	ldrb	r6, [r3, r2]
d03e1a02:	49cd      	ldr	r1, [pc, #820]	; (d03e1d38 <midi_update_all_active_volume+0x378>)
d03e1a04:	fb16 fe00 	smulbb	lr, r6, r0
d03e1a08:	4bcc      	ldr	r3, [pc, #816]	; (d03e1d3c <midi_update_all_active_volume+0x37c>)
d03e1a0a:	f8b1 c000 	ldrh.w	ip, [r1]
d03e1a0e:	f10e 0e3f 	add.w	lr, lr, #63	; 0x3f
d03e1a12:	4dcb      	ldr	r5, [pc, #812]	; (d03e1d40 <midi_update_all_active_volume+0x380>)
d03e1a14:	fba3 710e 	umull	r7, r1, r3, lr
d03e1a18:	5cad      	ldrb	r5, [r5, r2]
d03e1a1a:	4fca      	ldr	r7, [pc, #808]	; (d03e1d44 <midi_update_all_active_volume+0x384>)
d03e1a1c:	ebae 0e01 	sub.w	lr, lr, r1
d03e1a20:	eb01 015e 	add.w	r1, r1, lr, lsr #1
d03e1a24:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e1a28:	fb05 f101 	mul.w	r1, r5, r1
d03e1a2c:	f101 013f 	add.w	r1, r1, #63	; 0x3f
d03e1a30:	fba3 e301 	umull	lr, r3, r3, r1
d03e1a34:	eba1 0103 	sub.w	r1, r1, r3
d03e1a38:	eb03 0151 	add.w	r1, r3, r1, lsr #1
d03e1a3c:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e1a40:	fb0c f101 	mul.w	r1, ip, r1
d03e1a44:	f101 0132 	add.w	r1, r1, #50	; 0x32
d03e1a48:	fba7 3101 	umull	r3, r1, r7, r1
d03e1a4c:	ea4f 1151 	mov.w	r1, r1, lsr #5
d03e1a50:	f000 818e 	beq.w	d03e1d70 <midi_update_all_active_volume+0x3b0>
d03e1a54:	2800      	cmp	r0, #0
d03e1a56:	f000 81ba 	beq.w	d03e1dce <midi_update_all_active_volume+0x40e>
d03e1a5a:	2900      	cmp	r1, #0
d03e1a5c:	f040 81b7 	bne.w	d03e1dce <midi_update_all_active_volume+0x40e>
d03e1a60:	2e00      	cmp	r6, #0
d03e1a62:	bf18      	it	ne
d03e1a64:	2d00      	cmpne	r5, #0
d03e1a66:	d003      	beq.n	d03e1a70 <midi_update_all_active_volume+0xb0>
d03e1a68:	f1bc 0f00 	cmp.w	ip, #0
d03e1a6c:	f040 81c2 	bne.w	d03e1df4 <midi_update_all_active_volume+0x434>
d03e1a70:	2100      	movs	r1, #0
d03e1a72:	2000      	movs	r0, #0
d03e1a74:	f7fe ffde 	bl	d03e0a34 <sid_voice_set_velocity>
d03e1a78:	7a23      	ldrb	r3, [r4, #8]
d03e1a7a:	2b00      	cmp	r3, #0
d03e1a7c:	d0a7      	beq.n	d03e19ce <midi_update_all_active_volume+0xe>
d03e1a7e:	7a62      	ldrb	r2, [r4, #9]
d03e1a80:	4bac      	ldr	r3, [pc, #688]	; (d03e1d34 <midi_update_all_active_volume+0x374>)
d03e1a82:	7ae0      	ldrb	r0, [r4, #11]
d03e1a84:	2a09      	cmp	r2, #9
d03e1a86:	5c9d      	ldrb	r5, [r3, r2]
d03e1a88:	49ab      	ldr	r1, [pc, #684]	; (d03e1d38 <midi_update_all_active_volume+0x378>)
d03e1a8a:	fb10 fe05 	smulbb	lr, r0, r5
d03e1a8e:	4bab      	ldr	r3, [pc, #684]	; (d03e1d3c <midi_update_all_active_volume+0x37c>)
d03e1a90:	f8b1 c000 	ldrh.w	ip, [r1]
d03e1a94:	f10e 0e3f 	add.w	lr, lr, #63	; 0x3f
d03e1a98:	4ea9      	ldr	r6, [pc, #676]	; (d03e1d40 <midi_update_all_active_volume+0x380>)
d03e1a9a:	fba3 710e 	umull	r7, r1, r3, lr
d03e1a9e:	5cb6      	ldrb	r6, [r6, r2]
d03e1aa0:	4fa8      	ldr	r7, [pc, #672]	; (d03e1d44 <midi_update_all_active_volume+0x384>)
d03e1aa2:	ebae 0e01 	sub.w	lr, lr, r1
d03e1aa6:	eb01 015e 	add.w	r1, r1, lr, lsr #1
d03e1aaa:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e1aae:	fb06 f101 	mul.w	r1, r6, r1
d03e1ab2:	f101 013f 	add.w	r1, r1, #63	; 0x3f
d03e1ab6:	fba3 e301 	umull	lr, r3, r3, r1
d03e1aba:	eba1 0103 	sub.w	r1, r1, r3
d03e1abe:	eb03 0151 	add.w	r1, r3, r1, lsr #1
d03e1ac2:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e1ac6:	fb0c f101 	mul.w	r1, ip, r1
d03e1aca:	f101 0132 	add.w	r1, r1, #50	; 0x32
d03e1ace:	fba7 3101 	umull	r3, r1, r7, r1
d03e1ad2:	ea4f 1151 	mov.w	r1, r1, lsr #5
d03e1ad6:	f000 8124 	beq.w	d03e1d22 <midi_update_all_active_volume+0x362>
d03e1ada:	2900      	cmp	r1, #0
d03e1adc:	f040 817c 	bne.w	d03e1dd8 <midi_update_all_active_volume+0x418>
d03e1ae0:	2800      	cmp	r0, #0
d03e1ae2:	f000 8179 	beq.w	d03e1dd8 <midi_update_all_active_volume+0x418>
d03e1ae6:	2e00      	cmp	r6, #0
d03e1ae8:	bf18      	it	ne
d03e1aea:	2d00      	cmpne	r5, #0
d03e1aec:	d003      	beq.n	d03e1af6 <midi_update_all_active_volume+0x136>
d03e1aee:	f1bc 0f00 	cmp.w	ip, #0
d03e1af2:	f040 817b 	bne.w	d03e1dec <midi_update_all_active_volume+0x42c>
d03e1af6:	2100      	movs	r1, #0
d03e1af8:	2001      	movs	r0, #1
d03e1afa:	f7fe ff9b 	bl	d03e0a34 <sid_voice_set_velocity>
d03e1afe:	7c23      	ldrb	r3, [r4, #16]
d03e1b00:	2b00      	cmp	r3, #0
d03e1b02:	f43f af68 	beq.w	d03e19d6 <midi_update_all_active_volume+0x16>
d03e1b06:	7c62      	ldrb	r2, [r4, #17]
d03e1b08:	4b8a      	ldr	r3, [pc, #552]	; (d03e1d34 <midi_update_all_active_volume+0x374>)
d03e1b0a:	7ce0      	ldrb	r0, [r4, #19]
d03e1b0c:	2a09      	cmp	r2, #9
d03e1b0e:	5c9d      	ldrb	r5, [r3, r2]
d03e1b10:	4989      	ldr	r1, [pc, #548]	; (d03e1d38 <midi_update_all_active_volume+0x378>)
d03e1b12:	fb10 fe05 	smulbb	lr, r0, r5
d03e1b16:	4b89      	ldr	r3, [pc, #548]	; (d03e1d3c <midi_update_all_active_volume+0x37c>)
d03e1b18:	f8b1 c000 	ldrh.w	ip, [r1]
d03e1b1c:	f10e 0e3f 	add.w	lr, lr, #63	; 0x3f
d03e1b20:	4e87      	ldr	r6, [pc, #540]	; (d03e1d40 <midi_update_all_active_volume+0x380>)
d03e1b22:	fba3 710e 	umull	r7, r1, r3, lr
d03e1b26:	5cb6      	ldrb	r6, [r6, r2]
d03e1b28:	4f86      	ldr	r7, [pc, #536]	; (d03e1d44 <midi_update_all_active_volume+0x384>)
d03e1b2a:	ebae 0e01 	sub.w	lr, lr, r1
d03e1b2e:	eb01 015e 	add.w	r1, r1, lr, lsr #1
d03e1b32:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e1b36:	fb06 f101 	mul.w	r1, r6, r1
d03e1b3a:	f101 013f 	add.w	r1, r1, #63	; 0x3f
d03e1b3e:	fba3 e301 	umull	lr, r3, r3, r1
d03e1b42:	eba1 0103 	sub.w	r1, r1, r3
d03e1b46:	eb03 0151 	add.w	r1, r3, r1, lsr #1
d03e1b4a:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e1b4e:	fb0c f101 	mul.w	r1, ip, r1
d03e1b52:	f101 0132 	add.w	r1, r1, #50	; 0x32
d03e1b56:	fba7 3101 	umull	r3, r1, r7, r1
d03e1b5a:	ea4f 1151 	mov.w	r1, r1, lsr #5
d03e1b5e:	f000 80f5 	beq.w	d03e1d4c <midi_update_all_active_volume+0x38c>
d03e1b62:	2900      	cmp	r1, #0
d03e1b64:	f040 813d 	bne.w	d03e1de2 <midi_update_all_active_volume+0x422>
d03e1b68:	2800      	cmp	r0, #0
d03e1b6a:	f000 813a 	beq.w	d03e1de2 <midi_update_all_active_volume+0x422>
d03e1b6e:	2e00      	cmp	r6, #0
d03e1b70:	bf18      	it	ne
d03e1b72:	2d00      	cmpne	r5, #0
d03e1b74:	d003      	beq.n	d03e1b7e <midi_update_all_active_volume+0x1be>
d03e1b76:	f1bc 0f00 	cmp.w	ip, #0
d03e1b7a:	f040 814b 	bne.w	d03e1e14 <midi_update_all_active_volume+0x454>
d03e1b7e:	2100      	movs	r1, #0
d03e1b80:	2002      	movs	r0, #2
d03e1b82:	f7fe ff57 	bl	d03e0a34 <sid_voice_set_velocity>
d03e1b86:	7e23      	ldrb	r3, [r4, #24]
d03e1b88:	2b00      	cmp	r3, #0
d03e1b8a:	f43f af28 	beq.w	d03e19de <midi_update_all_active_volume+0x1e>
d03e1b8e:	7e62      	ldrb	r2, [r4, #25]
d03e1b90:	4b68      	ldr	r3, [pc, #416]	; (d03e1d34 <midi_update_all_active_volume+0x374>)
d03e1b92:	7ee0      	ldrb	r0, [r4, #27]
d03e1b94:	2a09      	cmp	r2, #9
d03e1b96:	5c9d      	ldrb	r5, [r3, r2]
d03e1b98:	4967      	ldr	r1, [pc, #412]	; (d03e1d38 <midi_update_all_active_volume+0x378>)
d03e1b9a:	fb10 fe05 	smulbb	lr, r0, r5
d03e1b9e:	4b67      	ldr	r3, [pc, #412]	; (d03e1d3c <midi_update_all_active_volume+0x37c>)
d03e1ba0:	f8b1 c000 	ldrh.w	ip, [r1]
d03e1ba4:	f10e 0e3f 	add.w	lr, lr, #63	; 0x3f
d03e1ba8:	4e65      	ldr	r6, [pc, #404]	; (d03e1d40 <midi_update_all_active_volume+0x380>)
d03e1baa:	fba3 710e 	umull	r7, r1, r3, lr
d03e1bae:	5cb6      	ldrb	r6, [r6, r2]
d03e1bb0:	4f64      	ldr	r7, [pc, #400]	; (d03e1d44 <midi_update_all_active_volume+0x384>)
d03e1bb2:	ebae 0e01 	sub.w	lr, lr, r1
d03e1bb6:	eb01 015e 	add.w	r1, r1, lr, lsr #1
d03e1bba:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e1bbe:	fb06 f101 	mul.w	r1, r6, r1
d03e1bc2:	f101 013f 	add.w	r1, r1, #63	; 0x3f
d03e1bc6:	fba3 e301 	umull	lr, r3, r3, r1
d03e1bca:	eba1 0103 	sub.w	r1, r1, r3
d03e1bce:	eb03 0151 	add.w	r1, r3, r1, lsr #1
d03e1bd2:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e1bd6:	fb0c f101 	mul.w	r1, ip, r1
d03e1bda:	f101 0132 	add.w	r1, r1, #50	; 0x32
d03e1bde:	fba7 3101 	umull	r3, r1, r7, r1
d03e1be2:	ea4f 1151 	mov.w	r1, r1, lsr #5
d03e1be6:	f000 80cc 	beq.w	d03e1d82 <midi_update_all_active_volume+0x3c2>
d03e1bea:	2900      	cmp	r1, #0
d03e1bec:	f040 80db 	bne.w	d03e1da6 <midi_update_all_active_volume+0x3e6>
d03e1bf0:	2800      	cmp	r0, #0
d03e1bf2:	f000 80d8 	beq.w	d03e1da6 <midi_update_all_active_volume+0x3e6>
d03e1bf6:	2e00      	cmp	r6, #0
d03e1bf8:	bf18      	it	ne
d03e1bfa:	2d00      	cmpne	r5, #0
d03e1bfc:	d003      	beq.n	d03e1c06 <midi_update_all_active_volume+0x246>
d03e1bfe:	f1bc 0f00 	cmp.w	ip, #0
d03e1c02:	f040 80ff 	bne.w	d03e1e04 <midi_update_all_active_volume+0x444>
d03e1c06:	2100      	movs	r1, #0
d03e1c08:	2003      	movs	r0, #3
d03e1c0a:	f7fe ff13 	bl	d03e0a34 <sid_voice_set_velocity>
d03e1c0e:	f894 3020 	ldrb.w	r3, [r4, #32]
d03e1c12:	2b00      	cmp	r3, #0
d03e1c14:	f43f aee8 	beq.w	d03e19e8 <midi_update_all_active_volume+0x28>
d03e1c18:	f894 2021 	ldrb.w	r2, [r4, #33]	; 0x21
d03e1c1c:	4b45      	ldr	r3, [pc, #276]	; (d03e1d34 <midi_update_all_active_volume+0x374>)
d03e1c1e:	f894 0023 	ldrb.w	r0, [r4, #35]	; 0x23
d03e1c22:	2a09      	cmp	r2, #9
d03e1c24:	5c9d      	ldrb	r5, [r3, r2]
d03e1c26:	4944      	ldr	r1, [pc, #272]	; (d03e1d38 <midi_update_all_active_volume+0x378>)
d03e1c28:	fb10 fe05 	smulbb	lr, r0, r5
d03e1c2c:	4b43      	ldr	r3, [pc, #268]	; (d03e1d3c <midi_update_all_active_volume+0x37c>)
d03e1c2e:	f8b1 c000 	ldrh.w	ip, [r1]
d03e1c32:	f10e 0e3f 	add.w	lr, lr, #63	; 0x3f
d03e1c36:	4e42      	ldr	r6, [pc, #264]	; (d03e1d40 <midi_update_all_active_volume+0x380>)
d03e1c38:	fba3 710e 	umull	r7, r1, r3, lr
d03e1c3c:	5cb6      	ldrb	r6, [r6, r2]
d03e1c3e:	4f41      	ldr	r7, [pc, #260]	; (d03e1d44 <midi_update_all_active_volume+0x384>)
d03e1c40:	ebae 0e01 	sub.w	lr, lr, r1
d03e1c44:	eb01 015e 	add.w	r1, r1, lr, lsr #1
d03e1c48:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e1c4c:	fb06 f101 	mul.w	r1, r6, r1
d03e1c50:	f101 013f 	add.w	r1, r1, #63	; 0x3f
d03e1c54:	fba3 e301 	umull	lr, r3, r3, r1
d03e1c58:	eba1 0103 	sub.w	r1, r1, r3
d03e1c5c:	eb03 0151 	add.w	r1, r3, r1, lsr #1
d03e1c60:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e1c64:	fb0c f101 	mul.w	r1, ip, r1
d03e1c68:	f101 0132 	add.w	r1, r1, #50	; 0x32
d03e1c6c:	fba7 3101 	umull	r3, r1, r7, r1
d03e1c70:	ea4f 1151 	mov.w	r1, r1, lsr #5
d03e1c74:	f000 808e 	beq.w	d03e1d94 <midi_update_all_active_volume+0x3d4>
d03e1c78:	2900      	cmp	r1, #0
d03e1c7a:	f040 8099 	bne.w	d03e1db0 <midi_update_all_active_volume+0x3f0>
d03e1c7e:	2800      	cmp	r0, #0
d03e1c80:	f000 8096 	beq.w	d03e1db0 <midi_update_all_active_volume+0x3f0>
d03e1c84:	2e00      	cmp	r6, #0
d03e1c86:	bf18      	it	ne
d03e1c88:	2d00      	cmpne	r5, #0
d03e1c8a:	d003      	beq.n	d03e1c94 <midi_update_all_active_volume+0x2d4>
d03e1c8c:	f1bc 0f00 	cmp.w	ip, #0
d03e1c90:	f040 80bc 	bne.w	d03e1e0c <midi_update_all_active_volume+0x44c>
d03e1c94:	2100      	movs	r1, #0
d03e1c96:	2004      	movs	r0, #4
d03e1c98:	f7fe fecc 	bl	d03e0a34 <sid_voice_set_velocity>
d03e1c9c:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d03e1ca0:	2b00      	cmp	r3, #0
d03e1ca2:	f43f aea6 	beq.w	d03e19f2 <midi_update_all_active_volume+0x32>
d03e1ca6:	f894 2029 	ldrb.w	r2, [r4, #41]	; 0x29
d03e1caa:	4b22      	ldr	r3, [pc, #136]	; (d03e1d34 <midi_update_all_active_volume+0x374>)
d03e1cac:	f894 002b 	ldrb.w	r0, [r4, #43]	; 0x2b
d03e1cb0:	2a09      	cmp	r2, #9
d03e1cb2:	5c9d      	ldrb	r5, [r3, r2]
d03e1cb4:	4920      	ldr	r1, [pc, #128]	; (d03e1d38 <midi_update_all_active_volume+0x378>)
d03e1cb6:	fb10 fc05 	smulbb	ip, r0, r5
d03e1cba:	4b20      	ldr	r3, [pc, #128]	; (d03e1d3c <midi_update_all_active_volume+0x37c>)
d03e1cbc:	880e      	ldrh	r6, [r1, #0]
d03e1cbe:	f10c 0c3f 	add.w	ip, ip, #63	; 0x3f
d03e1cc2:	4c1f      	ldr	r4, [pc, #124]	; (d03e1d40 <midi_update_all_active_volume+0x380>)
d03e1cc4:	fba3 710c 	umull	r7, r1, r3, ip
d03e1cc8:	5ca4      	ldrb	r4, [r4, r2]
d03e1cca:	4f1e      	ldr	r7, [pc, #120]	; (d03e1d44 <midi_update_all_active_volume+0x384>)
d03e1ccc:	ebac 0c01 	sub.w	ip, ip, r1
d03e1cd0:	eb01 015c 	add.w	r1, r1, ip, lsr #1
d03e1cd4:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e1cd8:	fb04 f101 	mul.w	r1, r4, r1
d03e1cdc:	f101 013f 	add.w	r1, r1, #63	; 0x3f
d03e1ce0:	fba3 c301 	umull	ip, r3, r3, r1
d03e1ce4:	eba1 0103 	sub.w	r1, r1, r3
d03e1ce8:	eb03 0151 	add.w	r1, r3, r1, lsr #1
d03e1cec:	ea4f 1191 	mov.w	r1, r1, lsr #6
d03e1cf0:	fb06 f101 	mul.w	r1, r6, r1
d03e1cf4:	f101 0132 	add.w	r1, r1, #50	; 0x32
d03e1cf8:	fba7 3101 	umull	r3, r1, r7, r1
d03e1cfc:	ea4f 1151 	mov.w	r1, r1, lsr #5
d03e1d00:	d02d      	beq.n	d03e1d5e <midi_update_all_active_volume+0x39e>
d03e1d02:	2900      	cmp	r1, #0
d03e1d04:	d159      	bne.n	d03e1dba <midi_update_all_active_volume+0x3fa>
d03e1d06:	2800      	cmp	r0, #0
d03e1d08:	d057      	beq.n	d03e1dba <midi_update_all_active_volume+0x3fa>
d03e1d0a:	2d00      	cmp	r5, #0
d03e1d0c:	bf18      	it	ne
d03e1d0e:	2c00      	cmpne	r4, #0
d03e1d10:	d001      	beq.n	d03e1d16 <midi_update_all_active_volume+0x356>
d03e1d12:	2e00      	cmp	r6, #0
d03e1d14:	d172      	bne.n	d03e1dfc <midi_update_all_active_volume+0x43c>
d03e1d16:	2100      	movs	r1, #0
d03e1d18:	2005      	movs	r0, #5
d03e1d1a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d03e1d1e:	f7fe be89 	b.w	d03e0a34 <sid_voice_set_velocity>
d03e1d22:	4b09      	ldr	r3, [pc, #36]	; (d03e1d48 <midi_update_all_active_volume+0x388>)
d03e1d24:	881b      	ldrh	r3, [r3, #0]
d03e1d26:	fb01 f103 	mul.w	r1, r1, r3
d03e1d2a:	3132      	adds	r1, #50	; 0x32
d03e1d2c:	fba7 3101 	umull	r3, r1, r7, r1
d03e1d30:	0949      	lsrs	r1, r1, #5
d03e1d32:	e6d2      	b.n	d03e1ada <midi_update_all_active_volume+0x11a>
d03e1d34:	d03e8d74 	.word	0xd03e8d74
d03e1d38:	d03e8f92 	.word	0xd03e8f92
d03e1d3c:	02040811 	.word	0x02040811
d03e1d40:	d03e8d54 	.word	0xd03e8d54
d03e1d44:	51eb851f 	.word	0x51eb851f
d03e1d48:	d03e8d8a 	.word	0xd03e8d8a
d03e1d4c:	4b45      	ldr	r3, [pc, #276]	; (d03e1e64 <midi_update_all_active_volume+0x4a4>)
d03e1d4e:	881b      	ldrh	r3, [r3, #0]
d03e1d50:	fb01 f103 	mul.w	r1, r1, r3
d03e1d54:	3132      	adds	r1, #50	; 0x32
d03e1d56:	fba7 3101 	umull	r3, r1, r7, r1
d03e1d5a:	0949      	lsrs	r1, r1, #5
d03e1d5c:	e701      	b.n	d03e1b62 <midi_update_all_active_volume+0x1a2>
d03e1d5e:	4b41      	ldr	r3, [pc, #260]	; (d03e1e64 <midi_update_all_active_volume+0x4a4>)
d03e1d60:	881b      	ldrh	r3, [r3, #0]
d03e1d62:	fb01 f103 	mul.w	r1, r1, r3
d03e1d66:	3132      	adds	r1, #50	; 0x32
d03e1d68:	fba7 3101 	umull	r3, r1, r7, r1
d03e1d6c:	0949      	lsrs	r1, r1, #5
d03e1d6e:	e7c8      	b.n	d03e1d02 <midi_update_all_active_volume+0x342>
d03e1d70:	4b3c      	ldr	r3, [pc, #240]	; (d03e1e64 <midi_update_all_active_volume+0x4a4>)
d03e1d72:	881b      	ldrh	r3, [r3, #0]
d03e1d74:	fb01 f103 	mul.w	r1, r1, r3
d03e1d78:	3132      	adds	r1, #50	; 0x32
d03e1d7a:	fba7 3101 	umull	r3, r1, r7, r1
d03e1d7e:	0949      	lsrs	r1, r1, #5
d03e1d80:	e668      	b.n	d03e1a54 <midi_update_all_active_volume+0x94>
d03e1d82:	4b38      	ldr	r3, [pc, #224]	; (d03e1e64 <midi_update_all_active_volume+0x4a4>)
d03e1d84:	881b      	ldrh	r3, [r3, #0]
d03e1d86:	fb01 f103 	mul.w	r1, r1, r3
d03e1d8a:	3132      	adds	r1, #50	; 0x32
d03e1d8c:	fba7 3101 	umull	r3, r1, r7, r1
d03e1d90:	0949      	lsrs	r1, r1, #5
d03e1d92:	e72a      	b.n	d03e1bea <midi_update_all_active_volume+0x22a>
d03e1d94:	4b33      	ldr	r3, [pc, #204]	; (d03e1e64 <midi_update_all_active_volume+0x4a4>)
d03e1d96:	881b      	ldrh	r3, [r3, #0]
d03e1d98:	fb01 f103 	mul.w	r1, r1, r3
d03e1d9c:	3132      	adds	r1, #50	; 0x32
d03e1d9e:	fba7 3101 	umull	r3, r1, r7, r1
d03e1da2:	0949      	lsrs	r1, r1, #5
d03e1da4:	e768      	b.n	d03e1c78 <midi_update_all_active_volume+0x2b8>
d03e1da6:	29ff      	cmp	r1, #255	; 0xff
d03e1da8:	bf28      	it	cs
d03e1daa:	21ff      	movcs	r1, #255	; 0xff
d03e1dac:	b2c9      	uxtb	r1, r1
d03e1dae:	e72b      	b.n	d03e1c08 <midi_update_all_active_volume+0x248>
d03e1db0:	29ff      	cmp	r1, #255	; 0xff
d03e1db2:	bf28      	it	cs
d03e1db4:	21ff      	movcs	r1, #255	; 0xff
d03e1db6:	b2c9      	uxtb	r1, r1
d03e1db8:	e76d      	b.n	d03e1c96 <midi_update_all_active_volume+0x2d6>
d03e1dba:	29ff      	cmp	r1, #255	; 0xff
d03e1dbc:	f04f 0005 	mov.w	r0, #5
d03e1dc0:	bf28      	it	cs
d03e1dc2:	21ff      	movcs	r1, #255	; 0xff
d03e1dc4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d03e1dc8:	b2c9      	uxtb	r1, r1
d03e1dca:	f7fe be33 	b.w	d03e0a34 <sid_voice_set_velocity>
d03e1dce:	29ff      	cmp	r1, #255	; 0xff
d03e1dd0:	bf28      	it	cs
d03e1dd2:	21ff      	movcs	r1, #255	; 0xff
d03e1dd4:	b2c9      	uxtb	r1, r1
d03e1dd6:	e64c      	b.n	d03e1a72 <midi_update_all_active_volume+0xb2>
d03e1dd8:	29ff      	cmp	r1, #255	; 0xff
d03e1dda:	bf28      	it	cs
d03e1ddc:	21ff      	movcs	r1, #255	; 0xff
d03e1dde:	b2c9      	uxtb	r1, r1
d03e1de0:	e68a      	b.n	d03e1af8 <midi_update_all_active_volume+0x138>
d03e1de2:	29ff      	cmp	r1, #255	; 0xff
d03e1de4:	bf28      	it	cs
d03e1de6:	21ff      	movcs	r1, #255	; 0xff
d03e1de8:	b2c9      	uxtb	r1, r1
d03e1dea:	e6c9      	b.n	d03e1b80 <midi_update_all_active_volume+0x1c0>
d03e1dec:	2a09      	cmp	r2, #9
d03e1dee:	d015      	beq.n	d03e1e1c <midi_update_all_active_volume+0x45c>
d03e1df0:	2101      	movs	r1, #1
d03e1df2:	e681      	b.n	d03e1af8 <midi_update_all_active_volume+0x138>
d03e1df4:	2a09      	cmp	r2, #9
d03e1df6:	d01d      	beq.n	d03e1e34 <midi_update_all_active_volume+0x474>
d03e1df8:	2101      	movs	r1, #1
d03e1dfa:	e63a      	b.n	d03e1a72 <midi_update_all_active_volume+0xb2>
d03e1dfc:	2a09      	cmp	r2, #9
d03e1dfe:	d025      	beq.n	d03e1e4c <midi_update_all_active_volume+0x48c>
d03e1e00:	2101      	movs	r1, #1
d03e1e02:	e789      	b.n	d03e1d18 <midi_update_all_active_volume+0x358>
d03e1e04:	2a09      	cmp	r2, #9
d03e1e06:	d01b      	beq.n	d03e1e40 <midi_update_all_active_volume+0x480>
d03e1e08:	2101      	movs	r1, #1
d03e1e0a:	e6fd      	b.n	d03e1c08 <midi_update_all_active_volume+0x248>
d03e1e0c:	2a09      	cmp	r2, #9
d03e1e0e:	d023      	beq.n	d03e1e58 <midi_update_all_active_volume+0x498>
d03e1e10:	2101      	movs	r1, #1
d03e1e12:	e740      	b.n	d03e1c96 <midi_update_all_active_volume+0x2d6>
d03e1e14:	2a09      	cmp	r2, #9
d03e1e16:	d007      	beq.n	d03e1e28 <midi_update_all_active_volume+0x468>
d03e1e18:	2101      	movs	r1, #1
d03e1e1a:	e6b1      	b.n	d03e1b80 <midi_update_all_active_volume+0x1c0>
d03e1e1c:	4b11      	ldr	r3, [pc, #68]	; (d03e1e64 <midi_update_all_active_volume+0x4a4>)
d03e1e1e:	8819      	ldrh	r1, [r3, #0]
d03e1e20:	3900      	subs	r1, #0
d03e1e22:	bf18      	it	ne
d03e1e24:	2101      	movne	r1, #1
d03e1e26:	e667      	b.n	d03e1af8 <midi_update_all_active_volume+0x138>
d03e1e28:	4b0e      	ldr	r3, [pc, #56]	; (d03e1e64 <midi_update_all_active_volume+0x4a4>)
d03e1e2a:	8819      	ldrh	r1, [r3, #0]
d03e1e2c:	3900      	subs	r1, #0
d03e1e2e:	bf18      	it	ne
d03e1e30:	2101      	movne	r1, #1
d03e1e32:	e6a5      	b.n	d03e1b80 <midi_update_all_active_volume+0x1c0>
d03e1e34:	4b0b      	ldr	r3, [pc, #44]	; (d03e1e64 <midi_update_all_active_volume+0x4a4>)
d03e1e36:	8819      	ldrh	r1, [r3, #0]
d03e1e38:	3900      	subs	r1, #0
d03e1e3a:	bf18      	it	ne
d03e1e3c:	2101      	movne	r1, #1
d03e1e3e:	e618      	b.n	d03e1a72 <midi_update_all_active_volume+0xb2>
d03e1e40:	4b08      	ldr	r3, [pc, #32]	; (d03e1e64 <midi_update_all_active_volume+0x4a4>)
d03e1e42:	8819      	ldrh	r1, [r3, #0]
d03e1e44:	3900      	subs	r1, #0
d03e1e46:	bf18      	it	ne
d03e1e48:	2101      	movne	r1, #1
d03e1e4a:	e6dd      	b.n	d03e1c08 <midi_update_all_active_volume+0x248>
d03e1e4c:	4b05      	ldr	r3, [pc, #20]	; (d03e1e64 <midi_update_all_active_volume+0x4a4>)
d03e1e4e:	8819      	ldrh	r1, [r3, #0]
d03e1e50:	3900      	subs	r1, #0
d03e1e52:	bf18      	it	ne
d03e1e54:	2101      	movne	r1, #1
d03e1e56:	e75f      	b.n	d03e1d18 <midi_update_all_active_volume+0x358>
d03e1e58:	4b02      	ldr	r3, [pc, #8]	; (d03e1e64 <midi_update_all_active_volume+0x4a4>)
d03e1e5a:	8819      	ldrh	r1, [r3, #0]
d03e1e5c:	3900      	subs	r1, #0
d03e1e5e:	bf18      	it	ne
d03e1e60:	2101      	movne	r1, #1
d03e1e62:	e718      	b.n	d03e1c96 <midi_update_all_active_volume+0x2d6>
d03e1e64:	d03e8d8a 	.word	0xd03e8d8a

d03e1e68 <ui_button_draw.constprop.0>:
d03e1e68:	4bb5      	ldr	r3, [pc, #724]	; (d03e2140 <ui_button_draw.constprop.0+0x2d8>)
d03e1e6a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e1e6e:	ed2d 8b02 	vpush	{d8}
d03e1e72:	781e      	ldrb	r6, [r3, #0]
d03e1e74:	b083      	sub	sp, #12
d03e1e76:	4683      	mov	fp, r0
d03e1e78:	4688      	mov	r8, r1
d03e1e7a:	f016 0601 	ands.w	r6, r6, #1
d03e1e7e:	4691      	mov	r9, r2
d03e1e80:	d018      	beq.n	d03e1eb4 <ui_button_draw.constprop.0+0x4c>
d03e1e82:	4bb0      	ldr	r3, [pc, #704]	; (d03e2144 <ui_button_draw.constprop.0+0x2dc>)
d03e1e84:	4ab0      	ldr	r2, [pc, #704]	; (d03e2148 <ui_button_draw.constprop.0+0x2e0>)
d03e1e86:	f9b3 3000 	ldrsh.w	r3, [r3]
d03e1e8a:	f9b2 2000 	ldrsh.w	r2, [r2]
d03e1e8e:	4283      	cmp	r3, r0
d03e1e90:	db0f      	blt.n	d03e1eb2 <ui_button_draw.constprop.0+0x4a>
d03e1e92:	3022      	adds	r0, #34	; 0x22
d03e1e94:	4283      	cmp	r3, r0
d03e1e96:	da0c      	bge.n	d03e1eb2 <ui_button_draw.constprop.0+0x4a>
d03e1e98:	428a      	cmp	r2, r1
d03e1e9a:	db0a      	blt.n	d03e1eb2 <ui_button_draw.constprop.0+0x4a>
d03e1e9c:	f101 0316 	add.w	r3, r1, #22
d03e1ea0:	429a      	cmp	r2, r3
d03e1ea2:	bfab      	itete	ge
d03e1ea4:	231b      	movge	r3, #27
d03e1ea6:	2314      	movlt	r3, #20
d03e1ea8:	2600      	movge	r6, #0
d03e1eaa:	2601      	movlt	r6, #1
d03e1eac:	ee08 3a10 	vmov	s16, r3
d03e1eb0:	e002      	b.n	d03e1eb8 <ui_button_draw.constprop.0+0x50>
d03e1eb2:	2600      	movs	r6, #0
d03e1eb4:	ed9f 8aa5 	vldr	s16, [pc, #660]	; d03e214c <ui_button_draw.constprop.0+0x2e4>
d03e1eb8:	4ca5      	ldr	r4, [pc, #660]	; (d03e2150 <ui_button_draw.constprop.0+0x2e8>)
d03e1eba:	4648      	mov	r0, r9
d03e1ebc:	f004 fd10 	bl	d03e68e0 <strlen>
d03e1ec0:	4682      	mov	sl, r0
d03e1ec2:	7b23      	ldrb	r3, [r4, #12]
d03e1ec4:	201a      	movs	r0, #26
d03e1ec6:	7b62      	ldrb	r2, [r4, #13]
d03e1ec8:	ea4f 0aca 	mov.w	sl, sl, lsl #3
d03e1ecc:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e1ed0:	fa1f f588 	uxth.w	r5, r8
d03e1ed4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1ed8:	7be2      	ldrb	r2, [r4, #15]
d03e1eda:	fa0f f18a 	sxth.w	r1, sl
d03e1ede:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d03e1ee2:	9101      	str	r1, [sp, #4]
d03e1ee4:	fa1f fa8b 	uxth.w	sl, fp
d03e1ee8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1eec:	685b      	ldr	r3, [r3, #4]
d03e1eee:	68db      	ldr	r3, [r3, #12]
d03e1ef0:	4798      	blx	r3
d03e1ef2:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e1ef6:	7b62      	ldrb	r2, [r4, #13]
d03e1ef8:	4658      	mov	r0, fp
d03e1efa:	7ba1      	ldrb	r1, [r4, #14]
d03e1efc:	2316      	movs	r3, #22
d03e1efe:	ea4c 2c02 	orr.w	ip, ip, r2, lsl #8
d03e1f02:	f894 e00f 	ldrb.w	lr, [r4, #15]
d03e1f06:	460f      	mov	r7, r1
d03e1f08:	2222      	movs	r2, #34	; 0x22
d03e1f0a:	4641      	mov	r1, r8
d03e1f0c:	ea4c 4c07 	orr.w	ip, ip, r7, lsl #16
d03e1f10:	f10a 0701 	add.w	r7, sl, #1
d03e1f14:	ea4c 6e0e 	orr.w	lr, ip, lr, lsl #24
d03e1f18:	b23f      	sxth	r7, r7
d03e1f1a:	f8de c004 	ldr.w	ip, [lr, #4]
d03e1f1e:	f8dc 8004 	ldr.w	r8, [ip, #4]
d03e1f22:	47c0      	blx	r8
d03e1f24:	7b23      	ldrb	r3, [r4, #12]
d03e1f26:	7b62      	ldrb	r2, [r4, #13]
d03e1f28:	ee18 0a10 	vmov	r0, s16
d03e1f2c:	7ba1      	ldrb	r1, [r4, #14]
d03e1f2e:	f105 0801 	add.w	r8, r5, #1
d03e1f32:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1f36:	7be2      	ldrb	r2, [r4, #15]
d03e1f38:	fa0f f888 	sxth.w	r8, r8
d03e1f3c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e1f40:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1f44:	685b      	ldr	r3, [r3, #4]
d03e1f46:	68db      	ldr	r3, [r3, #12]
d03e1f48:	4798      	blx	r3
d03e1f4a:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e1f4e:	7b63      	ldrb	r3, [r4, #13]
d03e1f50:	4638      	mov	r0, r7
d03e1f52:	7ba2      	ldrb	r2, [r4, #14]
d03e1f54:	ea4c 2c03 	orr.w	ip, ip, r3, lsl #8
d03e1f58:	7be1      	ldrb	r1, [r4, #15]
d03e1f5a:	2314      	movs	r3, #20
d03e1f5c:	ea4c 4c02 	orr.w	ip, ip, r2, lsl #16
d03e1f60:	2220      	movs	r2, #32
d03e1f62:	ea4c 6c01 	orr.w	ip, ip, r1, lsl #24
d03e1f66:	4641      	mov	r1, r8
d03e1f68:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e1f6c:	f8dc b004 	ldr.w	fp, [ip, #4]
d03e1f70:	47d8      	blx	fp
d03e1f72:	7b23      	ldrb	r3, [r4, #12]
d03e1f74:	7b62      	ldrb	r2, [r4, #13]
d03e1f76:	7ba1      	ldrb	r1, [r4, #14]
d03e1f78:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1f7c:	7be2      	ldrb	r2, [r4, #15]
d03e1f7e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e1f82:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1f86:	685b      	ldr	r3, [r3, #4]
d03e1f88:	68db      	ldr	r3, [r3, #12]
d03e1f8a:	2e00      	cmp	r6, #0
d03e1f8c:	f040 80a6 	bne.w	d03e20dc <ui_button_draw.constprop.0+0x274>
d03e1f90:	2015      	movs	r0, #21
d03e1f92:	4798      	blx	r3
d03e1f94:	7b21      	ldrb	r1, [r4, #12]
d03e1f96:	7b60      	ldrb	r0, [r4, #13]
d03e1f98:	2302      	movs	r3, #2
d03e1f9a:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e1f9e:	2220      	movs	r2, #32
d03e1fa0:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d03e1fa4:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e1fa8:	4641      	mov	r1, r8
d03e1faa:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d03e1fae:	4638      	mov	r0, r7
d03e1fb0:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d03e1fb4:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e1fb8:	f8dc b004 	ldr.w	fp, [ip, #4]
d03e1fbc:	47d8      	blx	fp
d03e1fbe:	7b21      	ldrb	r1, [r4, #12]
d03e1fc0:	7b60      	ldrb	r0, [r4, #13]
d03e1fc2:	2314      	movs	r3, #20
d03e1fc4:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e1fc8:	2202      	movs	r2, #2
d03e1fca:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d03e1fce:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e1fd2:	4641      	mov	r1, r8
d03e1fd4:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d03e1fd8:	4638      	mov	r0, r7
d03e1fda:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d03e1fde:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e1fe2:	f8dc b004 	ldr.w	fp, [ip, #4]
d03e1fe6:	47d8      	blx	fp
d03e1fe8:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e1fec:	2010      	movs	r0, #16
d03e1fee:	7b61      	ldrb	r1, [r4, #13]
d03e1ff0:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e1ff4:	7ba2      	ldrb	r2, [r4, #14]
d03e1ff6:	7be3      	ldrb	r3, [r4, #15]
d03e1ff8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e1ffc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e2000:	685b      	ldr	r3, [r3, #4]
d03e2002:	68db      	ldr	r3, [r3, #12]
d03e2004:	4798      	blx	r3
d03e2006:	7b23      	ldrb	r3, [r4, #12]
d03e2008:	7b62      	ldrb	r2, [r4, #13]
d03e200a:	4638      	mov	r0, r7
d03e200c:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e2010:	f105 0113 	add.w	r1, r5, #19
d03e2014:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
d03e2018:	7be7      	ldrb	r7, [r4, #15]
d03e201a:	b209      	sxth	r1, r1
d03e201c:	2302      	movs	r3, #2
d03e201e:	ea42 4c0c 	orr.w	ip, r2, ip, lsl #16
d03e2022:	2220      	movs	r2, #32
d03e2024:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d03e2028:	687f      	ldr	r7, [r7, #4]
d03e202a:	687f      	ldr	r7, [r7, #4]
d03e202c:	47b8      	blx	r7
d03e202e:	7b23      	ldrb	r3, [r4, #12]
d03e2030:	f894 c00d 	ldrb.w	ip, [r4, #13]
d03e2034:	f10a 001f 	add.w	r0, sl, #31
d03e2038:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e203c:	4641      	mov	r1, r8
d03e203e:	ea43 220c 	orr.w	r2, r3, ip, lsl #8
d03e2042:	7be7      	ldrb	r7, [r4, #15]
d03e2044:	2314      	movs	r3, #20
d03e2046:	b200      	sxth	r0, r0
d03e2048:	ea42 4c0e 	orr.w	ip, r2, lr, lsl #16
d03e204c:	2202      	movs	r2, #2
d03e204e:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d03e2052:	687f      	ldr	r7, [r7, #4]
d03e2054:	687f      	ldr	r7, [r7, #4]
d03e2056:	47b8      	blx	r7
d03e2058:	9b01      	ldr	r3, [sp, #4]
d03e205a:	2b1a      	cmp	r3, #26
d03e205c:	dd2d      	ble.n	d03e20ba <ui_button_draw.constprop.0+0x252>
d03e205e:	f10a 0a04 	add.w	sl, sl, #4
d03e2062:	fa1f f38a 	uxth.w	r3, sl
d03e2066:	fa0f fa8a 	sxth.w	sl, sl
d03e206a:	2e00      	cmp	r6, #0
d03e206c:	d12f      	bne.n	d03e20ce <ui_button_draw.constprop.0+0x266>
d03e206e:	3503      	adds	r5, #3
d03e2070:	b229      	sxth	r1, r5
d03e2072:	7b23      	ldrb	r3, [r4, #12]
d03e2074:	2019      	movs	r0, #25
d03e2076:	7b62      	ldrb	r2, [r4, #13]
d03e2078:	9101      	str	r1, [sp, #4]
d03e207a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e207e:	7ba2      	ldrb	r2, [r4, #14]
d03e2080:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2084:	7be2      	ldrb	r2, [r4, #15]
d03e2086:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e208a:	685b      	ldr	r3, [r3, #4]
d03e208c:	68db      	ldr	r3, [r3, #12]
d03e208e:	4798      	blx	r3
d03e2090:	7b23      	ldrb	r3, [r4, #12]
d03e2092:	7b60      	ldrb	r0, [r4, #13]
d03e2094:	464a      	mov	r2, r9
d03e2096:	7ba5      	ldrb	r5, [r4, #14]
d03e2098:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03e209c:	7be4      	ldrb	r4, [r4, #15]
d03e209e:	9901      	ldr	r1, [sp, #4]
d03e20a0:	4650      	mov	r0, sl
d03e20a2:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d03e20a6:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03e20aa:	685b      	ldr	r3, [r3, #4]
d03e20ac:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e20ae:	b003      	add	sp, #12
d03e20b0:	ecbd 8b02 	vpop	{d8}
d03e20b4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e20b8:	4718      	bx	r3
d03e20ba:	f1c3 0322 	rsb	r3, r3, #34	; 0x22
d03e20be:	eb0a 0a63 	add.w	sl, sl, r3, asr #1
d03e20c2:	fa1f f38a 	uxth.w	r3, sl
d03e20c6:	fa0f fa8a 	sxth.w	sl, sl
d03e20ca:	2e00      	cmp	r6, #0
d03e20cc:	d0cf      	beq.n	d03e206e <ui_button_draw.constprop.0+0x206>
d03e20ce:	f103 0a01 	add.w	sl, r3, #1
d03e20d2:	3504      	adds	r5, #4
d03e20d4:	fa0f fa8a 	sxth.w	sl, sl
d03e20d8:	b229      	sxth	r1, r5
d03e20da:	e7ca      	b.n	d03e2072 <ui_button_draw.constprop.0+0x20a>
d03e20dc:	2010      	movs	r0, #16
d03e20de:	4798      	blx	r3
d03e20e0:	7b21      	ldrb	r1, [r4, #12]
d03e20e2:	7b60      	ldrb	r0, [r4, #13]
d03e20e4:	2302      	movs	r3, #2
d03e20e6:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e20ea:	2220      	movs	r2, #32
d03e20ec:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d03e20f0:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e20f4:	4641      	mov	r1, r8
d03e20f6:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d03e20fa:	4638      	mov	r0, r7
d03e20fc:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d03e2100:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e2104:	f8dc b004 	ldr.w	fp, [ip, #4]
d03e2108:	47d8      	blx	fp
d03e210a:	7b21      	ldrb	r1, [r4, #12]
d03e210c:	7b60      	ldrb	r0, [r4, #13]
d03e210e:	2314      	movs	r3, #20
d03e2110:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e2114:	2202      	movs	r2, #2
d03e2116:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d03e211a:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e211e:	4641      	mov	r1, r8
d03e2120:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d03e2124:	4638      	mov	r0, r7
d03e2126:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d03e212a:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e212e:	f8dc b004 	ldr.w	fp, [ip, #4]
d03e2132:	47d8      	blx	fp
d03e2134:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e2138:	201d      	movs	r0, #29
d03e213a:	7b61      	ldrb	r1, [r4, #13]
d03e213c:	e758      	b.n	d03e1ff0 <ui_button_draw.constprop.0+0x188>
d03e213e:	bf00      	nop
d03e2140:	d03e8ff3 	.word	0xd03e8ff3
d03e2144:	d03e8ff6 	.word	0xd03e8ff6
d03e2148:	d03e8ff8 	.word	0xd03e8ff8
d03e214c:	0000001b 	.word	0x0000001b
d03e2150:	2001f000 	.word	0x2001f000

d03e2154 <ui_draw_home>:
d03e2154:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e2158:	4f7b      	ldr	r7, [pc, #492]	; (d03e2348 <ui_draw_home+0x1f4>)
d03e215a:	b09b      	sub	sp, #108	; 0x6c
d03e215c:	4d7b      	ldr	r5, [pc, #492]	; (d03e234c <ui_draw_home+0x1f8>)
d03e215e:	2356      	movs	r3, #86	; 0x56
d03e2160:	783c      	ldrb	r4, [r7, #0]
d03e2162:	2296      	movs	r2, #150	; 0x96
d03e2164:	f8df 8220 	ldr.w	r8, [pc, #544]	; d03e2388 <ui_draw_home+0x234>
d03e2168:	214c      	movs	r1, #76	; 0x4c
d03e216a:	200a      	movs	r0, #10
d03e216c:	9500      	str	r5, [sp, #0]
d03e216e:	f818 5004 	ldrb.w	r5, [r8, r4]
d03e2172:	f7ff fbc9 	bl	d03e1908 <ui_panel>
d03e2176:	4876      	ldr	r0, [pc, #472]	; (d03e2350 <ui_draw_home+0x1fc>)
d03e2178:	2356      	movs	r3, #86	; 0x56
d03e217a:	f44f 7292 	mov.w	r2, #292	; 0x124
d03e217e:	214c      	movs	r1, #76	; 0x4c
d03e2180:	9000      	str	r0, [sp, #0]
d03e2182:	20aa      	movs	r0, #170	; 0xaa
d03e2184:	f7ff fbc0 	bl	d03e1908 <ui_panel>
d03e2188:	2d80      	cmp	r5, #128	; 0x80
d03e218a:	f104 0301 	add.w	r3, r4, #1
d03e218e:	f200 80d8 	bhi.w	d03e2342 <ui_draw_home+0x1ee>
d03e2192:	4a70      	ldr	r2, [pc, #448]	; (d03e2354 <ui_draw_home+0x200>)
d03e2194:	f852 2025 	ldr.w	r2, [r2, r5, lsl #2]
d03e2198:	4c6f      	ldr	r4, [pc, #444]	; (d03e2358 <ui_draw_home+0x204>)
d03e219a:	2160      	movs	r1, #96	; 0x60
d03e219c:	9201      	str	r2, [sp, #4]
d03e219e:	a802      	add	r0, sp, #8
d03e21a0:	4a6e      	ldr	r2, [pc, #440]	; (d03e235c <ui_draw_home+0x208>)
d03e21a2:	2600      	movs	r6, #0
d03e21a4:	9500      	str	r5, [sp, #0]
d03e21a6:	f004 fb67 	bl	d03e6878 <sniprintf>
d03e21aa:	7b23      	ldrb	r3, [r4, #12]
d03e21ac:	7b62      	ldrb	r2, [r4, #13]
d03e21ae:	201e      	movs	r0, #30
d03e21b0:	7ba1      	ldrb	r1, [r4, #14]
d03e21b2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e21b6:	7be2      	ldrb	r2, [r4, #15]
d03e21b8:	f8df a1c8 	ldr.w	sl, [pc, #456]	; d03e2384 <ui_draw_home+0x230>
d03e21bc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e21c0:	f8df b190 	ldr.w	fp, [pc, #400]	; d03e2354 <ui_draw_home+0x200>
d03e21c4:	f8df 91c4 	ldr.w	r9, [pc, #452]	; d03e238c <ui_draw_home+0x238>
d03e21c8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e21cc:	685b      	ldr	r3, [r3, #4]
d03e21ce:	68db      	ldr	r3, [r3, #12]
d03e21d0:	4798      	blx	r3
d03e21d2:	7b23      	ldrb	r3, [r4, #12]
d03e21d4:	7b60      	ldrb	r0, [r4, #13]
d03e21d6:	aa02      	add	r2, sp, #8
d03e21d8:	7ba1      	ldrb	r1, [r4, #14]
d03e21da:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03e21de:	7be0      	ldrb	r0, [r4, #15]
d03e21e0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e21e4:	2160      	movs	r1, #96	; 0x60
d03e21e6:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d03e21ea:	20b8      	movs	r0, #184	; 0xb8
d03e21ec:	685b      	ldr	r3, [r3, #4]
d03e21ee:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e21f0:	4798      	blx	r3
d03e21f2:	4a5b      	ldr	r2, [pc, #364]	; (d03e2360 <ui_draw_home+0x20c>)
d03e21f4:	2186      	movs	r1, #134	; 0x86
d03e21f6:	f44f 7096 	mov.w	r0, #300	; 0x12c
d03e21fa:	f7ff fe35 	bl	d03e1e68 <ui_button_draw.constprop.0>
d03e21fe:	4a59      	ldr	r2, [pc, #356]	; (d03e2364 <ui_draw_home+0x210>)
d03e2200:	2186      	movs	r1, #134	; 0x86
d03e2202:	f44f 70a9 	mov.w	r0, #338	; 0x152
d03e2206:	f7ff fe2f 	bl	d03e1e68 <ui_button_draw.constprop.0>
d03e220a:	4a57      	ldr	r2, [pc, #348]	; (d03e2368 <ui_draw_home+0x214>)
d03e220c:	2186      	movs	r1, #134	; 0x86
d03e220e:	f44f 70bf 	mov.w	r0, #382	; 0x17e
d03e2212:	f7ff fe29 	bl	d03e1e68 <ui_button_draw.constprop.0>
d03e2216:	4a55      	ldr	r2, [pc, #340]	; (d03e236c <ui_draw_home+0x218>)
d03e2218:	2186      	movs	r1, #134	; 0x86
d03e221a:	f44f 70d2 	mov.w	r0, #420	; 0x1a4
d03e221e:	f7ff fe23 	bl	d03e1e68 <ui_button_draw.constprop.0>
d03e2222:	4953      	ldr	r1, [pc, #332]	; (d03e2370 <ui_draw_home+0x21c>)
d03e2224:	235c      	movs	r3, #92	; 0x5c
d03e2226:	22de      	movs	r2, #222	; 0xde
d03e2228:	9100      	str	r1, [sp, #0]
d03e222a:	200a      	movs	r0, #10
d03e222c:	21ac      	movs	r1, #172	; 0xac
d03e222e:	f7ff fb6b 	bl	d03e1908 <ui_panel>
d03e2232:	783d      	ldrb	r5, [r7, #0]
d03e2234:	4651      	mov	r1, sl
d03e2236:	a802      	add	r0, sp, #8
d03e2238:	4435      	add	r5, r6
d03e223a:	f005 050f 	and.w	r5, r5, #15
d03e223e:	f818 2005 	ldrb.w	r2, [r8, r5]
d03e2242:	1c6b      	adds	r3, r5, #1
d03e2244:	2a80      	cmp	r2, #128	; 0x80
d03e2246:	9200      	str	r2, [sp, #0]
d03e2248:	bf98      	it	ls
d03e224a:	f85b 1022 	ldrls.w	r1, [fp, r2, lsl #2]
d03e224e:	464a      	mov	r2, r9
d03e2250:	9101      	str	r1, [sp, #4]
d03e2252:	2160      	movs	r1, #96	; 0x60
d03e2254:	f004 fb10 	bl	d03e6878 <sniprintf>
d03e2258:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e225c:	7b62      	ldrb	r2, [r4, #13]
d03e225e:	2018      	movs	r0, #24
d03e2260:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e2264:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
d03e2268:	7be3      	ldrb	r3, [r4, #15]
d03e226a:	f897 c000 	ldrb.w	ip, [r7]
d03e226e:	ea41 420e 	orr.w	r2, r1, lr, lsl #16
d03e2272:	45ac      	cmp	ip, r5
d03e2274:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e2278:	bf08      	it	eq
d03e227a:	201e      	moveq	r0, #30
d03e227c:	685b      	ldr	r3, [r3, #4]
d03e227e:	68db      	ldr	r3, [r3, #12]
d03e2280:	4798      	blx	r3
d03e2282:	7b22      	ldrb	r2, [r4, #12]
d03e2284:	7b60      	ldrb	r0, [r4, #13]
d03e2286:	0131      	lsls	r1, r6, #4
d03e2288:	7ba5      	ldrb	r5, [r4, #14]
d03e228a:	3601      	adds	r6, #1
d03e228c:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d03e2290:	7be3      	ldrb	r3, [r4, #15]
d03e2292:	31c2      	adds	r1, #194	; 0xc2
d03e2294:	aa02      	add	r2, sp, #8
d03e2296:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d03e229a:	2018      	movs	r0, #24
d03e229c:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e22a0:	685b      	ldr	r3, [r3, #4]
d03e22a2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e22a4:	4798      	blx	r3
d03e22a6:	2e04      	cmp	r6, #4
d03e22a8:	d1c3      	bne.n	d03e2232 <ui_draw_home+0xde>
d03e22aa:	4832      	ldr	r0, [pc, #200]	; (d03e2374 <ui_draw_home+0x220>)
d03e22ac:	235c      	movs	r3, #92	; 0x5c
d03e22ae:	22dc      	movs	r2, #220	; 0xdc
d03e22b0:	21ac      	movs	r1, #172	; 0xac
d03e22b2:	9000      	str	r0, [sp, #0]
d03e22b4:	20f2      	movs	r0, #242	; 0xf2
d03e22b6:	f7ff fb27 	bl	d03e1908 <ui_panel>
d03e22ba:	7b23      	ldrb	r3, [r4, #12]
d03e22bc:	7b62      	ldrb	r2, [r4, #13]
d03e22be:	2018      	movs	r0, #24
d03e22c0:	7ba1      	ldrb	r1, [r4, #14]
d03e22c2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e22c6:	7be2      	ldrb	r2, [r4, #15]
d03e22c8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e22cc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e22d0:	685b      	ldr	r3, [r3, #4]
d03e22d2:	68db      	ldr	r3, [r3, #12]
d03e22d4:	4798      	blx	r3
d03e22d6:	7b23      	ldrb	r3, [r4, #12]
d03e22d8:	7b65      	ldrb	r5, [r4, #13]
d03e22da:	21c2      	movs	r1, #194	; 0xc2
d03e22dc:	7ba2      	ldrb	r2, [r4, #14]
d03e22de:	f44f 7080 	mov.w	r0, #256	; 0x100
d03e22e2:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d03e22e6:	7be5      	ldrb	r5, [r4, #15]
d03e22e8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e22ec:	4a22      	ldr	r2, [pc, #136]	; (d03e2378 <ui_draw_home+0x224>)
d03e22ee:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d03e22f2:	685b      	ldr	r3, [r3, #4]
d03e22f4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e22f6:	4798      	blx	r3
d03e22f8:	7b23      	ldrb	r3, [r4, #12]
d03e22fa:	7b65      	ldrb	r5, [r4, #13]
d03e22fc:	21d2      	movs	r1, #210	; 0xd2
d03e22fe:	7ba2      	ldrb	r2, [r4, #14]
d03e2300:	f44f 7080 	mov.w	r0, #256	; 0x100
d03e2304:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d03e2308:	7be5      	ldrb	r5, [r4, #15]
d03e230a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e230e:	4a1b      	ldr	r2, [pc, #108]	; (d03e237c <ui_draw_home+0x228>)
d03e2310:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d03e2314:	685b      	ldr	r3, [r3, #4]
d03e2316:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e2318:	4798      	blx	r3
d03e231a:	7b23      	ldrb	r3, [r4, #12]
d03e231c:	7b62      	ldrb	r2, [r4, #13]
d03e231e:	21e8      	movs	r1, #232	; 0xe8
d03e2320:	7ba5      	ldrb	r5, [r4, #14]
d03e2322:	f44f 7080 	mov.w	r0, #256	; 0x100
d03e2326:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e232a:	7be4      	ldrb	r4, [r4, #15]
d03e232c:	4a14      	ldr	r2, [pc, #80]	; (d03e2380 <ui_draw_home+0x22c>)
d03e232e:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d03e2332:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03e2336:	685b      	ldr	r3, [r3, #4]
d03e2338:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e233a:	4798      	blx	r3
d03e233c:	b01b      	add	sp, #108	; 0x6c
d03e233e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e2342:	4a10      	ldr	r2, [pc, #64]	; (d03e2384 <ui_draw_home+0x230>)
d03e2344:	e728      	b.n	d03e2198 <ui_draw_home+0x44>
d03e2346:	bf00      	nop
d03e2348:	d03e8ffb 	.word	0xd03e8ffb
d03e234c:	d03e7be4 	.word	0xd03e7be4
d03e2350:	d03e7bf0 	.word	0xd03e7bf0
d03e2354:	d03e8360 	.word	0xd03e8360
d03e2358:	2001f000 	.word	0x2001f000
d03e235c:	d03e7c04 	.word	0xd03e7c04
d03e2360:	d03e7c18 	.word	0xd03e7c18
d03e2364:	d03e7c1c 	.word	0xd03e7c1c
d03e2368:	d03e7c20 	.word	0xd03e7c20
d03e236c:	d03e7c24 	.word	0xd03e7c24
d03e2370:	d03e7c28 	.word	0xd03e7c28
d03e2374:	d03e7c48 	.word	0xd03e7c48
d03e2378:	d03e7c50 	.word	0xd03e7c50
d03e237c:	d03e7c68 	.word	0xd03e7c68
d03e2380:	d03e7c7c 	.word	0xd03e7c7c
d03e2384:	d03e7bd8 	.word	0xd03e7bd8
d03e2388:	d03e8d64 	.word	0xd03e8d64
d03e238c:	d03e7c30 	.word	0xd03e7c30

d03e2390 <midi_process_events>:
d03e2390:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e2394:	4b5c      	ldr	r3, [pc, #368]	; (d03e2508 <midi_process_events+0x178>)
d03e2396:	b083      	sub	sp, #12
d03e2398:	4c5c      	ldr	r4, [pc, #368]	; (d03e250c <midi_process_events+0x17c>)
d03e239a:	7822      	ldrb	r2, [r4, #0]
d03e239c:	781b      	ldrb	r3, [r3, #0]
d03e239e:	429a      	cmp	r2, r3
d03e23a0:	d039      	beq.n	d03e2416 <midi_process_events+0x86>
d03e23a2:	f8df a178 	ldr.w	sl, [pc, #376]	; d03e251c <midi_process_events+0x18c>
d03e23a6:	4d5a      	ldr	r5, [pc, #360]	; (d03e2510 <midi_process_events+0x180>)
d03e23a8:	7823      	ldrb	r3, [r4, #0]
d03e23aa:	b2db      	uxtb	r3, r3
d03e23ac:	f81a 7023 	ldrb.w	r7, [sl, r3, lsl #2]
d03e23b0:	7823      	ldrb	r3, [r4, #0]
d03e23b2:	b2ff      	uxtb	r7, r7
d03e23b4:	eb0a 0383 	add.w	r3, sl, r3, lsl #2
d03e23b8:	785e      	ldrb	r6, [r3, #1]
d03e23ba:	7823      	ldrb	r3, [r4, #0]
d03e23bc:	b2f6      	uxtb	r6, r6
d03e23be:	eb0a 0383 	add.w	r3, sl, r3, lsl #2
d03e23c2:	f893 8002 	ldrb.w	r8, [r3, #2]
d03e23c6:	7823      	ldrb	r3, [r4, #0]
d03e23c8:	fa5f f888 	uxtb.w	r8, r8
d03e23cc:	eb0a 0383 	add.w	r3, sl, r3, lsl #2
d03e23d0:	78d9      	ldrb	r1, [r3, #3]
d03e23d2:	7823      	ldrb	r3, [r4, #0]
d03e23d4:	fa5f f981 	uxtb.w	r9, r1
d03e23d8:	3301      	adds	r3, #1
d03e23da:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d03e23de:	7023      	strb	r3, [r4, #0]
d03e23e0:	2f05      	cmp	r7, #5
d03e23e2:	d813      	bhi.n	d03e240c <midi_process_events+0x7c>
d03e23e4:	e8df f017 	tbh	[pc, r7, lsl #1]
d03e23e8:	009c005f 	.word	0x009c005f
d03e23ec:	001a0057 	.word	0x001a0057
d03e23f0:	016a0006 	.word	0x016a0006
d03e23f4:	f1b8 0f0b 	cmp.w	r8, #11
d03e23f8:	f000 8196 	beq.w	d03e2728 <midi_process_events+0x398>
d03e23fc:	f1b8 0f79 	cmp.w	r8, #121	; 0x79
d03e2400:	f000 81ec 	beq.w	d03e27dc <midi_process_events+0x44c>
d03e2404:	f1b8 0f07 	cmp.w	r8, #7
d03e2408:	f000 81c2 	beq.w	d03e2790 <midi_process_events+0x400>
d03e240c:	4b3e      	ldr	r3, [pc, #248]	; (d03e2508 <midi_process_events+0x178>)
d03e240e:	7822      	ldrb	r2, [r4, #0]
d03e2410:	781b      	ldrb	r3, [r3, #0]
d03e2412:	429a      	cmp	r2, r3
d03e2414:	d1c8      	bne.n	d03e23a8 <midi_process_events+0x18>
d03e2416:	b003      	add	sp, #12
d03e2418:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e241c:	ea4f 11c9 	mov.w	r1, r9, lsl #7
d03e2420:	f008 077f 	and.w	r7, r8, #127	; 0x7f
d03e2424:	4b3b      	ldr	r3, [pc, #236]	; (d03e2514 <midi_process_events+0x184>)
d03e2426:	2e09      	cmp	r6, #9
d03e2428:	f401 517e 	and.w	r1, r1, #16256	; 0x3f80
d03e242c:	ea47 0701 	orr.w	r7, r7, r1
d03e2430:	f5a7 5700 	sub.w	r7, r7, #8192	; 0x2000
d03e2434:	b23f      	sxth	r7, r7
d03e2436:	f823 7016 	strh.w	r7, [r3, r6, lsl #1]
d03e243a:	d0e7      	beq.n	d03e240c <midi_process_events+0x7c>
d03e243c:	782b      	ldrb	r3, [r5, #0]
d03e243e:	b11b      	cbz	r3, d03e2448 <midi_process_events+0xb8>
d03e2440:	786b      	ldrb	r3, [r5, #1]
d03e2442:	42b3      	cmp	r3, r6
d03e2444:	f000 82f3 	beq.w	d03e2a2e <midi_process_events+0x69e>
d03e2448:	7a2b      	ldrb	r3, [r5, #8]
d03e244a:	b11b      	cbz	r3, d03e2454 <midi_process_events+0xc4>
d03e244c:	7a6b      	ldrb	r3, [r5, #9]
d03e244e:	42b3      	cmp	r3, r6
d03e2450:	f000 82d9 	beq.w	d03e2a06 <midi_process_events+0x676>
d03e2454:	7c2b      	ldrb	r3, [r5, #16]
d03e2456:	b11b      	cbz	r3, d03e2460 <midi_process_events+0xd0>
d03e2458:	7c6b      	ldrb	r3, [r5, #17]
d03e245a:	42b3      	cmp	r3, r6
d03e245c:	f000 82d8 	beq.w	d03e2a10 <midi_process_events+0x680>
d03e2460:	7e2b      	ldrb	r3, [r5, #24]
d03e2462:	b11b      	cbz	r3, d03e246c <midi_process_events+0xdc>
d03e2464:	7e6b      	ldrb	r3, [r5, #25]
d03e2466:	42b3      	cmp	r3, r6
d03e2468:	f000 82d7 	beq.w	d03e2a1a <midi_process_events+0x68a>
d03e246c:	f895 3020 	ldrb.w	r3, [r5, #32]
d03e2470:	b123      	cbz	r3, d03e247c <midi_process_events+0xec>
d03e2472:	f895 3021 	ldrb.w	r3, [r5, #33]	; 0x21
d03e2476:	42b3      	cmp	r3, r6
d03e2478:	f000 82d4 	beq.w	d03e2a24 <midi_process_events+0x694>
d03e247c:	f895 3028 	ldrb.w	r3, [r5, #40]	; 0x28
d03e2480:	2b00      	cmp	r3, #0
d03e2482:	d0c3      	beq.n	d03e240c <midi_process_events+0x7c>
d03e2484:	f895 3029 	ldrb.w	r3, [r5, #41]	; 0x29
d03e2488:	42b3      	cmp	r3, r6
d03e248a:	d1bf      	bne.n	d03e240c <midi_process_events+0x7c>
d03e248c:	4639      	mov	r1, r7
d03e248e:	2005      	movs	r0, #5
d03e2490:	f7fe fa1a 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2494:	e7ba      	b.n	d03e240c <midi_process_events+0x7c>
d03e2496:	2e09      	cmp	r6, #9
d03e2498:	d0b8      	beq.n	d03e240c <midi_process_events+0x7c>
d03e249a:	f008 087f 	and.w	r8, r8, #127	; 0x7f
d03e249e:	4b1e      	ldr	r3, [pc, #120]	; (d03e2518 <midi_process_events+0x188>)
d03e24a0:	f803 8006 	strb.w	r8, [r3, r6]
d03e24a4:	e7b2      	b.n	d03e240c <midi_process_events+0x7c>
d03e24a6:	782b      	ldrb	r3, [r5, #0]
d03e24a8:	b11b      	cbz	r3, d03e24b2 <midi_process_events+0x122>
d03e24aa:	786b      	ldrb	r3, [r5, #1]
d03e24ac:	42b3      	cmp	r3, r6
d03e24ae:	f000 8200 	beq.w	d03e28b2 <midi_process_events+0x522>
d03e24b2:	7a2b      	ldrb	r3, [r5, #8]
d03e24b4:	b11b      	cbz	r3, d03e24be <midi_process_events+0x12e>
d03e24b6:	7a6b      	ldrb	r3, [r5, #9]
d03e24b8:	42b3      	cmp	r3, r6
d03e24ba:	f000 8201 	beq.w	d03e28c0 <midi_process_events+0x530>
d03e24be:	7c2b      	ldrb	r3, [r5, #16]
d03e24c0:	b11b      	cbz	r3, d03e24ca <midi_process_events+0x13a>
d03e24c2:	7c6b      	ldrb	r3, [r5, #17]
d03e24c4:	42b3      	cmp	r3, r6
d03e24c6:	f000 8210 	beq.w	d03e28ea <midi_process_events+0x55a>
d03e24ca:	7e2b      	ldrb	r3, [r5, #24]
d03e24cc:	b11b      	cbz	r3, d03e24d6 <midi_process_events+0x146>
d03e24ce:	7e6b      	ldrb	r3, [r5, #25]
d03e24d0:	42b3      	cmp	r3, r6
d03e24d2:	f000 8212 	beq.w	d03e28fa <midi_process_events+0x56a>
d03e24d6:	f895 3020 	ldrb.w	r3, [r5, #32]
d03e24da:	b123      	cbz	r3, d03e24e6 <midi_process_events+0x156>
d03e24dc:	f895 3021 	ldrb.w	r3, [r5, #33]	; 0x21
d03e24e0:	42b3      	cmp	r3, r6
d03e24e2:	f000 8229 	beq.w	d03e2938 <midi_process_events+0x5a8>
d03e24e6:	f895 3028 	ldrb.w	r3, [r5, #40]	; 0x28
d03e24ea:	2b00      	cmp	r3, #0
d03e24ec:	d08e      	beq.n	d03e240c <midi_process_events+0x7c>
d03e24ee:	f895 3029 	ldrb.w	r3, [r5, #41]	; 0x29
d03e24f2:	42b3      	cmp	r3, r6
d03e24f4:	d18a      	bne.n	d03e240c <midi_process_events+0x7c>
d03e24f6:	f895 302a 	ldrb.w	r3, [r5, #42]	; 0x2a
d03e24fa:	4543      	cmp	r3, r8
d03e24fc:	d186      	bne.n	d03e240c <midi_process_events+0x7c>
d03e24fe:	f04f 0805 	mov.w	r8, #5
d03e2502:	4647      	mov	r7, r8
d03e2504:	e220      	b.n	d03e2948 <midi_process_events+0x5b8>
d03e2506:	bf00      	nop
d03e2508:	d03e8d8c 	.word	0xd03e8d8c
d03e250c:	d03e8f90 	.word	0xd03e8f90
d03e2510:	d03e8fb0 	.word	0xd03e8fb0
d03e2514:	d03e8d34 	.word	0xd03e8d34
d03e2518:	d03e8d64 	.word	0xd03e8d64
d03e251c:	d03e8d90 	.word	0xd03e8d90
d03e2520:	782b      	ldrb	r3, [r5, #0]
d03e2522:	b11b      	cbz	r3, d03e252c <midi_process_events+0x19c>
d03e2524:	786b      	ldrb	r3, [r5, #1]
d03e2526:	42b3      	cmp	r3, r6
d03e2528:	f000 81bc 	beq.w	d03e28a4 <midi_process_events+0x514>
d03e252c:	7a2b      	ldrb	r3, [r5, #8]
d03e252e:	b11b      	cbz	r3, d03e2538 <midi_process_events+0x1a8>
d03e2530:	7a6b      	ldrb	r3, [r5, #9]
d03e2532:	42b3      	cmp	r3, r6
d03e2534:	f000 81cc 	beq.w	d03e28d0 <midi_process_events+0x540>
d03e2538:	7c2b      	ldrb	r3, [r5, #16]
d03e253a:	b11b      	cbz	r3, d03e2544 <midi_process_events+0x1b4>
d03e253c:	7c6b      	ldrb	r3, [r5, #17]
d03e253e:	42b3      	cmp	r3, r6
d03e2540:	f000 81cc 	beq.w	d03e28dc <midi_process_events+0x54c>
d03e2544:	7e2b      	ldrb	r3, [r5, #24]
d03e2546:	b11b      	cbz	r3, d03e2550 <midi_process_events+0x1c0>
d03e2548:	7e6b      	ldrb	r3, [r5, #25]
d03e254a:	42b3      	cmp	r3, r6
d03e254c:	f000 81dd 	beq.w	d03e290a <midi_process_events+0x57a>
d03e2550:	f895 3020 	ldrb.w	r3, [r5, #32]
d03e2554:	b123      	cbz	r3, d03e2560 <midi_process_events+0x1d0>
d03e2556:	f895 3021 	ldrb.w	r3, [r5, #33]	; 0x21
d03e255a:	42b3      	cmp	r3, r6
d03e255c:	f000 81dc 	beq.w	d03e2918 <midi_process_events+0x588>
d03e2560:	f895 3028 	ldrb.w	r3, [r5, #40]	; 0x28
d03e2564:	b123      	cbz	r3, d03e2570 <midi_process_events+0x1e0>
d03e2566:	f895 3029 	ldrb.w	r3, [r5, #41]	; 0x29
d03e256a:	42b3      	cmp	r3, r6
d03e256c:	f000 81fc 	beq.w	d03e2968 <midi_process_events+0x5d8>
d03e2570:	2e09      	cmp	r6, #9
d03e2572:	d104      	bne.n	d03e257e <midi_process_events+0x1ee>
d03e2574:	4b90      	ldr	r3, [pc, #576]	; (d03e27b8 <midi_process_events+0x428>)
d03e2576:	781b      	ldrb	r3, [r3, #0]
d03e2578:	2b00      	cmp	r3, #0
d03e257a:	f43f af47 	beq.w	d03e240c <midi_process_events+0x7c>
d03e257e:	f8df c258 	ldr.w	ip, [pc, #600]	; d03e27d8 <midi_process_events+0x448>
d03e2582:	4b8e      	ldr	r3, [pc, #568]	; (d03e27bc <midi_process_events+0x42c>)
d03e2584:	f89c 7000 	ldrb.w	r7, [ip]
d03e2588:	fba3 2107 	umull	r2, r1, r3, r7
d03e258c:	0889      	lsrs	r1, r1, #2
d03e258e:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d03e2592:	eba7 0141 	sub.w	r1, r7, r1, lsl #1
d03e2596:	f815 0031 	ldrb.w	r0, [r5, r1, lsl #3]
d03e259a:	2800      	cmp	r0, #0
d03e259c:	f000 82d1 	beq.w	d03e2b42 <midi_process_events+0x7b2>
d03e25a0:	1c79      	adds	r1, r7, #1
d03e25a2:	fba3 0e01 	umull	r0, lr, r3, r1
d03e25a6:	ea4f 0e9e 	mov.w	lr, lr, lsr #2
d03e25aa:	eb0e 0b4e 	add.w	fp, lr, lr, lsl #1
d03e25ae:	f8cd e000 	str.w	lr, [sp]
d03e25b2:	eba1 0e4b 	sub.w	lr, r1, fp, lsl #1
d03e25b6:	f815 b03e 	ldrb.w	fp, [r5, lr, lsl #3]
d03e25ba:	f1bb 0f00 	cmp.w	fp, #0
d03e25be:	f000 823b 	beq.w	d03e2a38 <midi_process_events+0x6a8>
d03e25c2:	f107 0b02 	add.w	fp, r7, #2
d03e25c6:	fba3 0e0b 	umull	r0, lr, r3, fp
d03e25ca:	ea4f 0e9e 	mov.w	lr, lr, lsr #2
d03e25ce:	eb0e 0e4e 	add.w	lr, lr, lr, lsl #1
d03e25d2:	ebab 0e4e 	sub.w	lr, fp, lr, lsl #1
d03e25d6:	f815 b03e 	ldrb.w	fp, [r5, lr, lsl #3]
d03e25da:	f1bb 0f00 	cmp.w	fp, #0
d03e25de:	f000 822b 	beq.w	d03e2a38 <midi_process_events+0x6a8>
d03e25e2:	f107 0b03 	add.w	fp, r7, #3
d03e25e6:	fba3 0e0b 	umull	r0, lr, r3, fp
d03e25ea:	ea4f 0e9e 	mov.w	lr, lr, lsr #2
d03e25ee:	eb0e 0e4e 	add.w	lr, lr, lr, lsl #1
d03e25f2:	ebab 0e4e 	sub.w	lr, fp, lr, lsl #1
d03e25f6:	f815 b03e 	ldrb.w	fp, [r5, lr, lsl #3]
d03e25fa:	f1bb 0f00 	cmp.w	fp, #0
d03e25fe:	f000 821b 	beq.w	d03e2a38 <midi_process_events+0x6a8>
d03e2602:	f107 0b04 	add.w	fp, r7, #4
d03e2606:	fba3 0e0b 	umull	r0, lr, r3, fp
d03e260a:	ea4f 0e9e 	mov.w	lr, lr, lsr #2
d03e260e:	eb0e 0e4e 	add.w	lr, lr, lr, lsl #1
d03e2612:	ebab 0e4e 	sub.w	lr, fp, lr, lsl #1
d03e2616:	f815 b03e 	ldrb.w	fp, [r5, lr, lsl #3]
d03e261a:	f1bb 0f00 	cmp.w	fp, #0
d03e261e:	f000 820b 	beq.w	d03e2a38 <midi_process_events+0x6a8>
d03e2622:	f107 0e05 	add.w	lr, r7, #5
d03e2626:	fba3 030e 	umull	r0, r3, r3, lr
d03e262a:	089b      	lsrs	r3, r3, #2
d03e262c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d03e2630:	ebae 0343 	sub.w	r3, lr, r3, lsl #1
d03e2634:	f815 e033 	ldrb.w	lr, [r5, r3, lsl #3]
d03e2638:	f1be 0f00 	cmp.w	lr, #0
d03e263c:	f000 8284 	beq.w	d03e2b48 <midi_process_events+0x7b8>
d03e2640:	9b00      	ldr	r3, [sp, #0]
d03e2642:	4638      	mov	r0, r7
d03e2644:	9701      	str	r7, [sp, #4]
d03e2646:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d03e264a:	eba1 0143 	sub.w	r1, r1, r3, lsl #1
d03e264e:	f88c 1000 	strb.w	r1, [ip]
d03e2652:	f7fe f90d 	bl	d03e0870 <sid_voice_note_kill>
d03e2656:	2300      	movs	r3, #0
d03e2658:	9a01      	ldr	r2, [sp, #4]
d03e265a:	f805 3037 	strb.w	r3, [r5, r7, lsl #3]
d03e265e:	4958      	ldr	r1, [pc, #352]	; (d03e27c0 <midi_process_events+0x430>)
d03e2660:	eb05 03c2 	add.w	r3, r5, r2, lsl #3
d03e2664:	f04f 0e00 	mov.w	lr, #0
d03e2668:	f04f 0c01 	mov.w	ip, #1
d03e266c:	f811 b006 	ldrb.w	fp, [r1, r6]
d03e2670:	4630      	mov	r0, r6
d03e2672:	f8a3 e006 	strh.w	lr, [r3, #6]
d03e2676:	4649      	mov	r1, r9
d03e2678:	705e      	strb	r6, [r3, #1]
d03e267a:	f883 b004 	strb.w	fp, [r3, #4]
d03e267e:	f883 8002 	strb.w	r8, [r3, #2]
d03e2682:	f883 9003 	strb.w	r9, [r3, #3]
d03e2686:	f805 c032 	strb.w	ip, [r5, r2, lsl #3]
d03e268a:	f7fe fe67 	bl	d03e135c <midi_effective_velocity>
d03e268e:	4642      	mov	r2, r8
d03e2690:	4603      	mov	r3, r0
d03e2692:	4659      	mov	r1, fp
d03e2694:	4638      	mov	r0, r7
d03e2696:	f7fd fff3 	bl	d03e0680 <sid_voice_note_on>
d03e269a:	f1bb 0f80 	cmp.w	fp, #128	; 0x80
d03e269e:	d008      	beq.n	d03e26b2 <midi_process_events+0x322>
d03e26a0:	f1bb 0f09 	cmp.w	fp, #9
d03e26a4:	d005      	beq.n	d03e26b2 <midi_process_events+0x322>
d03e26a6:	4b47      	ldr	r3, [pc, #284]	; (d03e27c4 <midi_process_events+0x434>)
d03e26a8:	4638      	mov	r0, r7
d03e26aa:	f933 1016 	ldrsh.w	r1, [r3, r6, lsl #1]
d03e26ae:	f7fe f90b 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e26b2:	4a45      	ldr	r2, [pc, #276]	; (d03e27c8 <midi_process_events+0x438>)
d03e26b4:	6813      	ldr	r3, [r2, #0]
d03e26b6:	3301      	adds	r3, #1
d03e26b8:	6013      	str	r3, [r2, #0]
d03e26ba:	e6a7      	b.n	d03e240c <midi_process_events+0x7c>
d03e26bc:	782b      	ldrb	r3, [r5, #0]
d03e26be:	b11b      	cbz	r3, d03e26c8 <midi_process_events+0x338>
d03e26c0:	786b      	ldrb	r3, [r5, #1]
d03e26c2:	42b3      	cmp	r3, r6
d03e26c4:	f000 817d 	beq.w	d03e29c2 <midi_process_events+0x632>
d03e26c8:	7a2b      	ldrb	r3, [r5, #8]
d03e26ca:	b11b      	cbz	r3, d03e26d4 <midi_process_events+0x344>
d03e26cc:	7a6b      	ldrb	r3, [r5, #9]
d03e26ce:	42b3      	cmp	r3, r6
d03e26d0:	f000 8161 	beq.w	d03e2996 <midi_process_events+0x606>
d03e26d4:	7c2b      	ldrb	r3, [r5, #16]
d03e26d6:	b11b      	cbz	r3, d03e26e0 <midi_process_events+0x350>
d03e26d8:	7c6b      	ldrb	r3, [r5, #17]
d03e26da:	42b3      	cmp	r3, r6
d03e26dc:	f000 8166 	beq.w	d03e29ac <midi_process_events+0x61c>
d03e26e0:	7e2b      	ldrb	r3, [r5, #24]
d03e26e2:	b11b      	cbz	r3, d03e26ec <midi_process_events+0x35c>
d03e26e4:	7e6b      	ldrb	r3, [r5, #25]
d03e26e6:	42b3      	cmp	r3, r6
d03e26e8:	f000 8176 	beq.w	d03e29d8 <midi_process_events+0x648>
d03e26ec:	f895 3020 	ldrb.w	r3, [r5, #32]
d03e26f0:	b123      	cbz	r3, d03e26fc <midi_process_events+0x36c>
d03e26f2:	f895 3021 	ldrb.w	r3, [r5, #33]	; 0x21
d03e26f6:	42b3      	cmp	r3, r6
d03e26f8:	f000 8179 	beq.w	d03e29ee <midi_process_events+0x65e>
d03e26fc:	f895 3028 	ldrb.w	r3, [r5, #40]	; 0x28
d03e2700:	2b00      	cmp	r3, #0
d03e2702:	f43f ae83 	beq.w	d03e240c <midi_process_events+0x7c>
d03e2706:	f895 3029 	ldrb.w	r3, [r5, #41]	; 0x29
d03e270a:	42b3      	cmp	r3, r6
d03e270c:	f47f ae7e 	bne.w	d03e240c <midi_process_events+0x7c>
d03e2710:	2005      	movs	r0, #5
d03e2712:	f7fe f83f 	bl	d03e0794 <sid_voice_note_off>
d03e2716:	4a2d      	ldr	r2, [pc, #180]	; (d03e27cc <midi_process_events+0x43c>)
d03e2718:	2100      	movs	r1, #0
d03e271a:	6813      	ldr	r3, [r2, #0]
d03e271c:	f885 1028 	strb.w	r1, [r5, #40]	; 0x28
d03e2720:	3301      	adds	r3, #1
d03e2722:	85e9      	strh	r1, [r5, #46]	; 0x2e
d03e2724:	6013      	str	r3, [r2, #0]
d03e2726:	e671      	b.n	d03e240c <midi_process_events+0x7c>
d03e2728:	f009 017f 	and.w	r1, r9, #127	; 0x7f
d03e272c:	782b      	ldrb	r3, [r5, #0]
d03e272e:	4a28      	ldr	r2, [pc, #160]	; (d03e27d0 <midi_process_events+0x440>)
d03e2730:	5591      	strb	r1, [r2, r6]
d03e2732:	bba3      	cbnz	r3, d03e279e <midi_process_events+0x40e>
d03e2734:	7a2b      	ldrb	r3, [r5, #8]
d03e2736:	b11b      	cbz	r3, d03e2740 <midi_process_events+0x3b0>
d03e2738:	7a6b      	ldrb	r3, [r5, #9]
d03e273a:	42b3      	cmp	r3, r6
d03e273c:	f000 81a7 	beq.w	d03e2a8e <midi_process_events+0x6fe>
d03e2740:	7c2b      	ldrb	r3, [r5, #16]
d03e2742:	b11b      	cbz	r3, d03e274c <midi_process_events+0x3bc>
d03e2744:	7c6b      	ldrb	r3, [r5, #17]
d03e2746:	42b3      	cmp	r3, r6
d03e2748:	f000 818e 	beq.w	d03e2a68 <midi_process_events+0x6d8>
d03e274c:	7e2b      	ldrb	r3, [r5, #24]
d03e274e:	b11b      	cbz	r3, d03e2758 <midi_process_events+0x3c8>
d03e2750:	7e6b      	ldrb	r3, [r5, #25]
d03e2752:	42b3      	cmp	r3, r6
d03e2754:	f000 817f 	beq.w	d03e2a56 <midi_process_events+0x6c6>
d03e2758:	f895 3020 	ldrb.w	r3, [r5, #32]
d03e275c:	b123      	cbz	r3, d03e2768 <midi_process_events+0x3d8>
d03e275e:	f895 3021 	ldrb.w	r3, [r5, #33]	; 0x21
d03e2762:	42b3      	cmp	r3, r6
d03e2764:	f000 8189 	beq.w	d03e2a7a <midi_process_events+0x6ea>
d03e2768:	f895 3028 	ldrb.w	r3, [r5, #40]	; 0x28
d03e276c:	2b00      	cmp	r3, #0
d03e276e:	f43f ae4d 	beq.w	d03e240c <midi_process_events+0x7c>
d03e2772:	f895 3029 	ldrb.w	r3, [r5, #41]	; 0x29
d03e2776:	42b3      	cmp	r3, r6
d03e2778:	f47f ae48 	bne.w	d03e240c <midi_process_events+0x7c>
d03e277c:	f895 102b 	ldrb.w	r1, [r5, #43]	; 0x2b
d03e2780:	4630      	mov	r0, r6
d03e2782:	f7fe fdeb 	bl	d03e135c <midi_effective_velocity>
d03e2786:	4601      	mov	r1, r0
d03e2788:	2005      	movs	r0, #5
d03e278a:	f7fe f953 	bl	d03e0a34 <sid_voice_set_velocity>
d03e278e:	e63d      	b.n	d03e240c <midi_process_events+0x7c>
d03e2790:	f009 017f 	and.w	r1, r9, #127	; 0x7f
d03e2794:	782b      	ldrb	r3, [r5, #0]
d03e2796:	4a0f      	ldr	r2, [pc, #60]	; (d03e27d4 <midi_process_events+0x444>)
d03e2798:	5591      	strb	r1, [r2, r6]
d03e279a:	2b00      	cmp	r3, #0
d03e279c:	d0ca      	beq.n	d03e2734 <midi_process_events+0x3a4>
d03e279e:	786b      	ldrb	r3, [r5, #1]
d03e27a0:	42b3      	cmp	r3, r6
d03e27a2:	d1c7      	bne.n	d03e2734 <midi_process_events+0x3a4>
d03e27a4:	78e9      	ldrb	r1, [r5, #3]
d03e27a6:	4630      	mov	r0, r6
d03e27a8:	f7fe fdd8 	bl	d03e135c <midi_effective_velocity>
d03e27ac:	4601      	mov	r1, r0
d03e27ae:	2000      	movs	r0, #0
d03e27b0:	f7fe f940 	bl	d03e0a34 <sid_voice_set_velocity>
d03e27b4:	e7be      	b.n	d03e2734 <midi_process_events+0x3a4>
d03e27b6:	bf00      	nop
d03e27b8:	d03e8d88 	.word	0xd03e8d88
d03e27bc:	aaaaaaab 	.word	0xaaaaaaab
d03e27c0:	d03e8d64 	.word	0xd03e8d64
d03e27c4:	d03e8d34 	.word	0xd03e8d34
d03e27c8:	d03e8fa0 	.word	0xd03e8fa0
d03e27cc:	d03e8f9c 	.word	0xd03e8f9c
d03e27d0:	d03e8d54 	.word	0xd03e8d54
d03e27d4:	d03e8d74 	.word	0xd03e8d74
d03e27d8:	d03e8fe0 	.word	0xd03e8fe0
d03e27dc:	237f      	movs	r3, #127	; 0x7f
d03e27de:	49be      	ldr	r1, [pc, #760]	; (d03e2ad8 <midi_process_events+0x748>)
d03e27e0:	4fbe      	ldr	r7, [pc, #760]	; (d03e2adc <midi_process_events+0x74c>)
d03e27e2:	f04f 0800 	mov.w	r8, #0
d03e27e6:	558b      	strb	r3, [r1, r6]
d03e27e8:	782a      	ldrb	r2, [r5, #0]
d03e27ea:	49bd      	ldr	r1, [pc, #756]	; (d03e2ae0 <midi_process_events+0x750>)
d03e27ec:	f827 8016 	strh.w	r8, [r7, r6, lsl #1]
d03e27f0:	558b      	strb	r3, [r1, r6]
d03e27f2:	b11a      	cbz	r2, d03e27fc <midi_process_events+0x46c>
d03e27f4:	786b      	ldrb	r3, [r5, #1]
d03e27f6:	42b3      	cmp	r3, r6
d03e27f8:	f000 8152 	beq.w	d03e2aa0 <midi_process_events+0x710>
d03e27fc:	7a2b      	ldrb	r3, [r5, #8]
d03e27fe:	b11b      	cbz	r3, d03e2808 <midi_process_events+0x478>
d03e2800:	7a6b      	ldrb	r3, [r5, #9]
d03e2802:	42b3      	cmp	r3, r6
d03e2804:	f000 8155 	beq.w	d03e2ab2 <midi_process_events+0x722>
d03e2808:	7c2b      	ldrb	r3, [r5, #16]
d03e280a:	b11b      	cbz	r3, d03e2814 <midi_process_events+0x484>
d03e280c:	7c6b      	ldrb	r3, [r5, #17]
d03e280e:	42b3      	cmp	r3, r6
d03e2810:	f000 8158 	beq.w	d03e2ac4 <midi_process_events+0x734>
d03e2814:	7e2b      	ldrb	r3, [r5, #24]
d03e2816:	b11b      	cbz	r3, d03e2820 <midi_process_events+0x490>
d03e2818:	7e6b      	ldrb	r3, [r5, #25]
d03e281a:	42b3      	cmp	r3, r6
d03e281c:	f000 8166 	beq.w	d03e2aec <midi_process_events+0x75c>
d03e2820:	f895 3020 	ldrb.w	r3, [r5, #32]
d03e2824:	b123      	cbz	r3, d03e2830 <midi_process_events+0x4a0>
d03e2826:	f895 3021 	ldrb.w	r3, [r5, #33]	; 0x21
d03e282a:	42b3      	cmp	r3, r6
d03e282c:	f000 8167 	beq.w	d03e2afe <midi_process_events+0x76e>
d03e2830:	f895 3028 	ldrb.w	r3, [r5, #40]	; 0x28
d03e2834:	2b00      	cmp	r3, #0
d03e2836:	f040 809f 	bne.w	d03e2978 <midi_process_events+0x5e8>
d03e283a:	2100      	movs	r1, #0
d03e283c:	2e09      	cmp	r6, #9
d03e283e:	f827 1016 	strh.w	r1, [r7, r6, lsl #1]
d03e2842:	f43f ade3 	beq.w	d03e240c <midi_process_events+0x7c>
d03e2846:	782b      	ldrb	r3, [r5, #0]
d03e2848:	b11b      	cbz	r3, d03e2852 <midi_process_events+0x4c2>
d03e284a:	786b      	ldrb	r3, [r5, #1]
d03e284c:	42b3      	cmp	r3, r6
d03e284e:	f000 8174 	beq.w	d03e2b3a <midi_process_events+0x7aa>
d03e2852:	7a2b      	ldrb	r3, [r5, #8]
d03e2854:	b11b      	cbz	r3, d03e285e <midi_process_events+0x4ce>
d03e2856:	7a6b      	ldrb	r3, [r5, #9]
d03e2858:	42b3      	cmp	r3, r6
d03e285a:	f000 8164 	beq.w	d03e2b26 <midi_process_events+0x796>
d03e285e:	7c2b      	ldrb	r3, [r5, #16]
d03e2860:	b11b      	cbz	r3, d03e286a <midi_process_events+0x4da>
d03e2862:	7c6b      	ldrb	r3, [r5, #17]
d03e2864:	42b3      	cmp	r3, r6
d03e2866:	f000 8163 	beq.w	d03e2b30 <midi_process_events+0x7a0>
d03e286a:	7e2b      	ldrb	r3, [r5, #24]
d03e286c:	b11b      	cbz	r3, d03e2876 <midi_process_events+0x4e6>
d03e286e:	7e6b      	ldrb	r3, [r5, #25]
d03e2870:	42b3      	cmp	r3, r6
d03e2872:	f000 814e 	beq.w	d03e2b12 <midi_process_events+0x782>
d03e2876:	f895 3020 	ldrb.w	r3, [r5, #32]
d03e287a:	b123      	cbz	r3, d03e2886 <midi_process_events+0x4f6>
d03e287c:	f895 3021 	ldrb.w	r3, [r5, #33]	; 0x21
d03e2880:	42b3      	cmp	r3, r6
d03e2882:	f000 814b 	beq.w	d03e2b1c <midi_process_events+0x78c>
d03e2886:	f895 3028 	ldrb.w	r3, [r5, #40]	; 0x28
d03e288a:	2b00      	cmp	r3, #0
d03e288c:	f43f adbe 	beq.w	d03e240c <midi_process_events+0x7c>
d03e2890:	f895 3029 	ldrb.w	r3, [r5, #41]	; 0x29
d03e2894:	42b3      	cmp	r3, r6
d03e2896:	f47f adb9 	bne.w	d03e240c <midi_process_events+0x7c>
d03e289a:	2100      	movs	r1, #0
d03e289c:	2005      	movs	r0, #5
d03e289e:	f7fe f813 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e28a2:	e5b3      	b.n	d03e240c <midi_process_events+0x7c>
d03e28a4:	78ab      	ldrb	r3, [r5, #2]
d03e28a6:	4543      	cmp	r3, r8
d03e28a8:	f47f ae40 	bne.w	d03e252c <midi_process_events+0x19c>
d03e28ac:	2700      	movs	r7, #0
d03e28ae:	463a      	mov	r2, r7
d03e28b0:	e039      	b.n	d03e2926 <midi_process_events+0x596>
d03e28b2:	78ab      	ldrb	r3, [r5, #2]
d03e28b4:	4543      	cmp	r3, r8
d03e28b6:	f47f adfc 	bne.w	d03e24b2 <midi_process_events+0x122>
d03e28ba:	f04f 0800 	mov.w	r8, #0
d03e28be:	e043      	b.n	d03e2948 <midi_process_events+0x5b8>
d03e28c0:	7aab      	ldrb	r3, [r5, #10]
d03e28c2:	4543      	cmp	r3, r8
d03e28c4:	f47f adfb 	bne.w	d03e24be <midi_process_events+0x12e>
d03e28c8:	f04f 0801 	mov.w	r8, #1
d03e28cc:	4647      	mov	r7, r8
d03e28ce:	e03b      	b.n	d03e2948 <midi_process_events+0x5b8>
d03e28d0:	7aab      	ldrb	r3, [r5, #10]
d03e28d2:	4543      	cmp	r3, r8
d03e28d4:	f47f ae30 	bne.w	d03e2538 <midi_process_events+0x1a8>
d03e28d8:	2201      	movs	r2, #1
d03e28da:	e024      	b.n	d03e2926 <midi_process_events+0x596>
d03e28dc:	7cab      	ldrb	r3, [r5, #18]
d03e28de:	4543      	cmp	r3, r8
d03e28e0:	f47f ae30 	bne.w	d03e2544 <midi_process_events+0x1b4>
d03e28e4:	2202      	movs	r2, #2
d03e28e6:	4617      	mov	r7, r2
d03e28e8:	e01d      	b.n	d03e2926 <midi_process_events+0x596>
d03e28ea:	7cab      	ldrb	r3, [r5, #18]
d03e28ec:	4543      	cmp	r3, r8
d03e28ee:	f47f adec 	bne.w	d03e24ca <midi_process_events+0x13a>
d03e28f2:	f04f 0802 	mov.w	r8, #2
d03e28f6:	4647      	mov	r7, r8
d03e28f8:	e026      	b.n	d03e2948 <midi_process_events+0x5b8>
d03e28fa:	7eab      	ldrb	r3, [r5, #26]
d03e28fc:	4543      	cmp	r3, r8
d03e28fe:	f47f adea 	bne.w	d03e24d6 <midi_process_events+0x146>
d03e2902:	f04f 0803 	mov.w	r8, #3
d03e2906:	4647      	mov	r7, r8
d03e2908:	e01e      	b.n	d03e2948 <midi_process_events+0x5b8>
d03e290a:	7eab      	ldrb	r3, [r5, #26]
d03e290c:	4543      	cmp	r3, r8
d03e290e:	f47f ae1f 	bne.w	d03e2550 <midi_process_events+0x1c0>
d03e2912:	2203      	movs	r2, #3
d03e2914:	4617      	mov	r7, r2
d03e2916:	e006      	b.n	d03e2926 <midi_process_events+0x596>
d03e2918:	f895 3022 	ldrb.w	r3, [r5, #34]	; 0x22
d03e291c:	4543      	cmp	r3, r8
d03e291e:	f47f ae1f 	bne.w	d03e2560 <midi_process_events+0x1d0>
d03e2922:	2204      	movs	r2, #4
d03e2924:	4617      	mov	r7, r2
d03e2926:	2e09      	cmp	r6, #9
d03e2928:	f000 8111 	beq.w	d03e2b4e <midi_process_events+0x7be>
d03e292c:	4638      	mov	r0, r7
d03e292e:	9200      	str	r2, [sp, #0]
d03e2930:	f7fd ff30 	bl	d03e0794 <sid_voice_note_off>
d03e2934:	9a00      	ldr	r2, [sp, #0]
d03e2936:	e692      	b.n	d03e265e <midi_process_events+0x2ce>
d03e2938:	f895 3022 	ldrb.w	r3, [r5, #34]	; 0x22
d03e293c:	4543      	cmp	r3, r8
d03e293e:	f47f add2 	bne.w	d03e24e6 <midi_process_events+0x156>
d03e2942:	f04f 0804 	mov.w	r8, #4
d03e2946:	4647      	mov	r7, r8
d03e2948:	2e09      	cmp	r6, #9
d03e294a:	d002      	beq.n	d03e2952 <midi_process_events+0x5c2>
d03e294c:	4638      	mov	r0, r7
d03e294e:	f7fd ff21 	bl	d03e0794 <sid_voice_note_off>
d03e2952:	4a64      	ldr	r2, [pc, #400]	; (d03e2ae4 <midi_process_events+0x754>)
d03e2954:	2100      	movs	r1, #0
d03e2956:	eb05 00c8 	add.w	r0, r5, r8, lsl #3
d03e295a:	6813      	ldr	r3, [r2, #0]
d03e295c:	f805 1038 	strb.w	r1, [r5, r8, lsl #3]
d03e2960:	3301      	adds	r3, #1
d03e2962:	80c1      	strh	r1, [r0, #6]
d03e2964:	6013      	str	r3, [r2, #0]
d03e2966:	e551      	b.n	d03e240c <midi_process_events+0x7c>
d03e2968:	f895 302a 	ldrb.w	r3, [r5, #42]	; 0x2a
d03e296c:	4543      	cmp	r3, r8
d03e296e:	f47f adff 	bne.w	d03e2570 <midi_process_events+0x1e0>
d03e2972:	2205      	movs	r2, #5
d03e2974:	4617      	mov	r7, r2
d03e2976:	e7d6      	b.n	d03e2926 <midi_process_events+0x596>
d03e2978:	f895 3029 	ldrb.w	r3, [r5, #41]	; 0x29
d03e297c:	42b3      	cmp	r3, r6
d03e297e:	f47f af5c 	bne.w	d03e283a <midi_process_events+0x4aa>
d03e2982:	f895 102b 	ldrb.w	r1, [r5, #43]	; 0x2b
d03e2986:	4630      	mov	r0, r6
d03e2988:	f7fe fce8 	bl	d03e135c <midi_effective_velocity>
d03e298c:	4601      	mov	r1, r0
d03e298e:	2005      	movs	r0, #5
d03e2990:	f7fe f850 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2994:	e751      	b.n	d03e283a <midi_process_events+0x4aa>
d03e2996:	2001      	movs	r0, #1
d03e2998:	f7fd fefc 	bl	d03e0794 <sid_voice_note_off>
d03e299c:	4a51      	ldr	r2, [pc, #324]	; (d03e2ae4 <midi_process_events+0x754>)
d03e299e:	2100      	movs	r1, #0
d03e29a0:	6813      	ldr	r3, [r2, #0]
d03e29a2:	7229      	strb	r1, [r5, #8]
d03e29a4:	3301      	adds	r3, #1
d03e29a6:	81e9      	strh	r1, [r5, #14]
d03e29a8:	6013      	str	r3, [r2, #0]
d03e29aa:	e693      	b.n	d03e26d4 <midi_process_events+0x344>
d03e29ac:	2002      	movs	r0, #2
d03e29ae:	f7fd fef1 	bl	d03e0794 <sid_voice_note_off>
d03e29b2:	4a4c      	ldr	r2, [pc, #304]	; (d03e2ae4 <midi_process_events+0x754>)
d03e29b4:	2100      	movs	r1, #0
d03e29b6:	6813      	ldr	r3, [r2, #0]
d03e29b8:	7429      	strb	r1, [r5, #16]
d03e29ba:	3301      	adds	r3, #1
d03e29bc:	82e9      	strh	r1, [r5, #22]
d03e29be:	6013      	str	r3, [r2, #0]
d03e29c0:	e68e      	b.n	d03e26e0 <midi_process_events+0x350>
d03e29c2:	2000      	movs	r0, #0
d03e29c4:	f7fd fee6 	bl	d03e0794 <sid_voice_note_off>
d03e29c8:	4a46      	ldr	r2, [pc, #280]	; (d03e2ae4 <midi_process_events+0x754>)
d03e29ca:	2100      	movs	r1, #0
d03e29cc:	6813      	ldr	r3, [r2, #0]
d03e29ce:	7029      	strb	r1, [r5, #0]
d03e29d0:	3301      	adds	r3, #1
d03e29d2:	80e9      	strh	r1, [r5, #6]
d03e29d4:	6013      	str	r3, [r2, #0]
d03e29d6:	e677      	b.n	d03e26c8 <midi_process_events+0x338>
d03e29d8:	2003      	movs	r0, #3
d03e29da:	f7fd fedb 	bl	d03e0794 <sid_voice_note_off>
d03e29de:	4a41      	ldr	r2, [pc, #260]	; (d03e2ae4 <midi_process_events+0x754>)
d03e29e0:	2100      	movs	r1, #0
d03e29e2:	6813      	ldr	r3, [r2, #0]
d03e29e4:	7629      	strb	r1, [r5, #24]
d03e29e6:	3301      	adds	r3, #1
d03e29e8:	83e9      	strh	r1, [r5, #30]
d03e29ea:	6013      	str	r3, [r2, #0]
d03e29ec:	e67e      	b.n	d03e26ec <midi_process_events+0x35c>
d03e29ee:	2004      	movs	r0, #4
d03e29f0:	f7fd fed0 	bl	d03e0794 <sid_voice_note_off>
d03e29f4:	4a3b      	ldr	r2, [pc, #236]	; (d03e2ae4 <midi_process_events+0x754>)
d03e29f6:	2100      	movs	r1, #0
d03e29f8:	6813      	ldr	r3, [r2, #0]
d03e29fa:	f885 1020 	strb.w	r1, [r5, #32]
d03e29fe:	3301      	adds	r3, #1
d03e2a00:	84e9      	strh	r1, [r5, #38]	; 0x26
d03e2a02:	6013      	str	r3, [r2, #0]
d03e2a04:	e67a      	b.n	d03e26fc <midi_process_events+0x36c>
d03e2a06:	4639      	mov	r1, r7
d03e2a08:	2001      	movs	r0, #1
d03e2a0a:	f7fd ff5d 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2a0e:	e521      	b.n	d03e2454 <midi_process_events+0xc4>
d03e2a10:	4639      	mov	r1, r7
d03e2a12:	2002      	movs	r0, #2
d03e2a14:	f7fd ff58 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2a18:	e522      	b.n	d03e2460 <midi_process_events+0xd0>
d03e2a1a:	4639      	mov	r1, r7
d03e2a1c:	2003      	movs	r0, #3
d03e2a1e:	f7fd ff53 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2a22:	e523      	b.n	d03e246c <midi_process_events+0xdc>
d03e2a24:	4639      	mov	r1, r7
d03e2a26:	2004      	movs	r0, #4
d03e2a28:	f7fd ff4e 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2a2c:	e526      	b.n	d03e247c <midi_process_events+0xec>
d03e2a2e:	4639      	mov	r1, r7
d03e2a30:	2000      	movs	r0, #0
d03e2a32:	f7fd ff49 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2a36:	e507      	b.n	d03e2448 <midi_process_events+0xb8>
d03e2a38:	fa5f f78e 	uxtb.w	r7, lr
d03e2a3c:	4672      	mov	r2, lr
d03e2a3e:	1c51      	adds	r1, r2, #1
d03e2a40:	4b29      	ldr	r3, [pc, #164]	; (d03e2ae8 <midi_process_events+0x758>)
d03e2a42:	fba3 0301 	umull	r0, r3, r3, r1
d03e2a46:	089b      	lsrs	r3, r3, #2
d03e2a48:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d03e2a4c:	eba1 0343 	sub.w	r3, r1, r3, lsl #1
d03e2a50:	f88c 3000 	strb.w	r3, [ip]
d03e2a54:	e603      	b.n	d03e265e <midi_process_events+0x2ce>
d03e2a56:	7ee9      	ldrb	r1, [r5, #27]
d03e2a58:	4630      	mov	r0, r6
d03e2a5a:	f7fe fc7f 	bl	d03e135c <midi_effective_velocity>
d03e2a5e:	4601      	mov	r1, r0
d03e2a60:	2003      	movs	r0, #3
d03e2a62:	f7fd ffe7 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2a66:	e677      	b.n	d03e2758 <midi_process_events+0x3c8>
d03e2a68:	7ce9      	ldrb	r1, [r5, #19]
d03e2a6a:	4630      	mov	r0, r6
d03e2a6c:	f7fe fc76 	bl	d03e135c <midi_effective_velocity>
d03e2a70:	4601      	mov	r1, r0
d03e2a72:	2002      	movs	r0, #2
d03e2a74:	f7fd ffde 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2a78:	e668      	b.n	d03e274c <midi_process_events+0x3bc>
d03e2a7a:	f895 1023 	ldrb.w	r1, [r5, #35]	; 0x23
d03e2a7e:	4630      	mov	r0, r6
d03e2a80:	f7fe fc6c 	bl	d03e135c <midi_effective_velocity>
d03e2a84:	4601      	mov	r1, r0
d03e2a86:	2004      	movs	r0, #4
d03e2a88:	f7fd ffd4 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2a8c:	e66c      	b.n	d03e2768 <midi_process_events+0x3d8>
d03e2a8e:	7ae9      	ldrb	r1, [r5, #11]
d03e2a90:	4630      	mov	r0, r6
d03e2a92:	f7fe fc63 	bl	d03e135c <midi_effective_velocity>
d03e2a96:	4601      	mov	r1, r0
d03e2a98:	2001      	movs	r0, #1
d03e2a9a:	f7fd ffcb 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2a9e:	e64f      	b.n	d03e2740 <midi_process_events+0x3b0>
d03e2aa0:	78e9      	ldrb	r1, [r5, #3]
d03e2aa2:	4630      	mov	r0, r6
d03e2aa4:	f7fe fc5a 	bl	d03e135c <midi_effective_velocity>
d03e2aa8:	4601      	mov	r1, r0
d03e2aaa:	4640      	mov	r0, r8
d03e2aac:	f7fd ffc2 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2ab0:	e6a4      	b.n	d03e27fc <midi_process_events+0x46c>
d03e2ab2:	7ae9      	ldrb	r1, [r5, #11]
d03e2ab4:	4630      	mov	r0, r6
d03e2ab6:	f7fe fc51 	bl	d03e135c <midi_effective_velocity>
d03e2aba:	4601      	mov	r1, r0
d03e2abc:	2001      	movs	r0, #1
d03e2abe:	f7fd ffb9 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2ac2:	e6a1      	b.n	d03e2808 <midi_process_events+0x478>
d03e2ac4:	7ce9      	ldrb	r1, [r5, #19]
d03e2ac6:	4630      	mov	r0, r6
d03e2ac8:	f7fe fc48 	bl	d03e135c <midi_effective_velocity>
d03e2acc:	4601      	mov	r1, r0
d03e2ace:	2002      	movs	r0, #2
d03e2ad0:	f7fd ffb0 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2ad4:	e69e      	b.n	d03e2814 <midi_process_events+0x484>
d03e2ad6:	bf00      	nop
d03e2ad8:	d03e8d74 	.word	0xd03e8d74
d03e2adc:	d03e8d34 	.word	0xd03e8d34
d03e2ae0:	d03e8d54 	.word	0xd03e8d54
d03e2ae4:	d03e8f9c 	.word	0xd03e8f9c
d03e2ae8:	aaaaaaab 	.word	0xaaaaaaab
d03e2aec:	7ee9      	ldrb	r1, [r5, #27]
d03e2aee:	4630      	mov	r0, r6
d03e2af0:	f7fe fc34 	bl	d03e135c <midi_effective_velocity>
d03e2af4:	4601      	mov	r1, r0
d03e2af6:	2003      	movs	r0, #3
d03e2af8:	f7fd ff9c 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2afc:	e690      	b.n	d03e2820 <midi_process_events+0x490>
d03e2afe:	f895 1023 	ldrb.w	r1, [r5, #35]	; 0x23
d03e2b02:	4630      	mov	r0, r6
d03e2b04:	f7fe fc2a 	bl	d03e135c <midi_effective_velocity>
d03e2b08:	4601      	mov	r1, r0
d03e2b0a:	2004      	movs	r0, #4
d03e2b0c:	f7fd ff92 	bl	d03e0a34 <sid_voice_set_velocity>
d03e2b10:	e68e      	b.n	d03e2830 <midi_process_events+0x4a0>
d03e2b12:	2100      	movs	r1, #0
d03e2b14:	2003      	movs	r0, #3
d03e2b16:	f7fd fed7 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2b1a:	e6ac      	b.n	d03e2876 <midi_process_events+0x4e6>
d03e2b1c:	2100      	movs	r1, #0
d03e2b1e:	2004      	movs	r0, #4
d03e2b20:	f7fd fed2 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2b24:	e6af      	b.n	d03e2886 <midi_process_events+0x4f6>
d03e2b26:	2100      	movs	r1, #0
d03e2b28:	2001      	movs	r0, #1
d03e2b2a:	f7fd fecd 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2b2e:	e696      	b.n	d03e285e <midi_process_events+0x4ce>
d03e2b30:	2100      	movs	r1, #0
d03e2b32:	2002      	movs	r0, #2
d03e2b34:	f7fd fec8 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2b38:	e697      	b.n	d03e286a <midi_process_events+0x4da>
d03e2b3a:	4608      	mov	r0, r1
d03e2b3c:	f7fd fec4 	bl	d03e08c8 <sid_voice_pitch_bend>
d03e2b40:	e687      	b.n	d03e2852 <midi_process_events+0x4c2>
d03e2b42:	b2cf      	uxtb	r7, r1
d03e2b44:	460a      	mov	r2, r1
d03e2b46:	e77a      	b.n	d03e2a3e <midi_process_events+0x6ae>
d03e2b48:	b2df      	uxtb	r7, r3
d03e2b4a:	461a      	mov	r2, r3
d03e2b4c:	e777      	b.n	d03e2a3e <midi_process_events+0x6ae>
d03e2b4e:	4b03      	ldr	r3, [pc, #12]	; (d03e2b5c <midi_process_events+0x7cc>)
d03e2b50:	781b      	ldrb	r3, [r3, #0]
d03e2b52:	2b00      	cmp	r3, #0
d03e2b54:	f47f aeea 	bne.w	d03e292c <midi_process_events+0x59c>
d03e2b58:	e458      	b.n	d03e240c <midi_process_events+0x7c>
d03e2b5a:	bf00      	nop
d03e2b5c:	d03e8d88 	.word	0xd03e8d88

d03e2b60 <ui_redraw_backbuffer>:
d03e2b60:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e2b64:	4c87      	ldr	r4, [pc, #540]	; (d03e2d84 <ui_redraw_backbuffer+0x224>)
d03e2b66:	2700      	movs	r7, #0
d03e2b68:	f8df 822c 	ldr.w	r8, [pc, #556]	; d03e2d98 <ui_redraw_backbuffer+0x238>
d03e2b6c:	7b23      	ldrb	r3, [r4, #12]
d03e2b6e:	7b62      	ldrb	r2, [r4, #13]
d03e2b70:	7ba1      	ldrb	r1, [r4, #14]
d03e2b72:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2b76:	7be2      	ldrb	r2, [r4, #15]
d03e2b78:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e2b7c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2b80:	681b      	ldr	r3, [r3, #0]
d03e2b82:	ed2d 8b02 	vpush	{d8}
d03e2b86:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d03e2b88:	b09f      	sub	sp, #124	; 0x7c
d03e2b8a:	4798      	blx	r3
d03e2b8c:	7b23      	ldrb	r3, [r4, #12]
d03e2b8e:	7b62      	ldrb	r2, [r4, #13]
d03e2b90:	ee08 0a10 	vmov	s16, r0
d03e2b94:	487c      	ldr	r0, [pc, #496]	; (d03e2d88 <ui_redraw_backbuffer+0x228>)
d03e2b96:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2b9a:	7ba2      	ldrb	r2, [r4, #14]
d03e2b9c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2ba0:	7be2      	ldrb	r2, [r4, #15]
d03e2ba2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2ba6:	681b      	ldr	r3, [r3, #0]
d03e2ba8:	6a1b      	ldr	r3, [r3, #32]
d03e2baa:	4798      	blx	r3
d03e2bac:	7b23      	ldrb	r3, [r4, #12]
d03e2bae:	7b62      	ldrb	r2, [r4, #13]
d03e2bb0:	4875      	ldr	r0, [pc, #468]	; (d03e2d88 <ui_redraw_backbuffer+0x228>)
d03e2bb2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2bb6:	7ba2      	ldrb	r2, [r4, #14]
d03e2bb8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2bbc:	7be2      	ldrb	r2, [r4, #15]
d03e2bbe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2bc2:	681b      	ldr	r3, [r3, #0]
d03e2bc4:	699b      	ldr	r3, [r3, #24]
d03e2bc6:	4798      	blx	r3
d03e2bc8:	7b23      	ldrb	r3, [r4, #12]
d03e2bca:	7b62      	ldrb	r2, [r4, #13]
d03e2bcc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2bd0:	7ba2      	ldrb	r2, [r4, #14]
d03e2bd2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2bd6:	7be2      	ldrb	r2, [r4, #15]
d03e2bd8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2bdc:	685b      	ldr	r3, [r3, #4]
d03e2bde:	681b      	ldr	r3, [r3, #0]
d03e2be0:	4798      	blx	r3
d03e2be2:	7b20      	ldrb	r0, [r4, #12]
d03e2be4:	7b61      	ldrb	r1, [r4, #13]
d03e2be6:	7ba2      	ldrb	r2, [r4, #14]
d03e2be8:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e2bec:	7be3      	ldrb	r3, [r4, #15]
d03e2bee:	f818 0f01 	ldrb.w	r0, [r8, #1]!
d03e2bf2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e2bf6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e2bfa:	685b      	ldr	r3, [r3, #4]
d03e2bfc:	68db      	ldr	r3, [r3, #12]
d03e2bfe:	4798      	blx	r3
d03e2c00:	7b21      	ldrb	r1, [r4, #12]
d03e2c02:	7b60      	ldrb	r0, [r4, #13]
d03e2c04:	2328      	movs	r3, #40	; 0x28
d03e2c06:	7ba6      	ldrb	r6, [r4, #14]
d03e2c08:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03e2c0c:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d03e2c10:	7be5      	ldrb	r5, [r4, #15]
d03e2c12:	b239      	sxth	r1, r7
d03e2c14:	3728      	adds	r7, #40	; 0x28
d03e2c16:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d03e2c1a:	2000      	movs	r0, #0
d03e2c1c:	b2bf      	uxth	r7, r7
d03e2c1e:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d03e2c22:	686d      	ldr	r5, [r5, #4]
d03e2c24:	686d      	ldr	r5, [r5, #4]
d03e2c26:	47a8      	blx	r5
d03e2c28:	f5b7 7fa0 	cmp.w	r7, #320	; 0x140
d03e2c2c:	d1d9      	bne.n	d03e2be2 <ui_redraw_backbuffer+0x82>
d03e2c2e:	7b26      	ldrb	r6, [r4, #12]
d03e2c30:	2015      	movs	r0, #21
d03e2c32:	7b61      	ldrb	r1, [r4, #13]
d03e2c34:	250a      	movs	r5, #10
d03e2c36:	7ba2      	ldrb	r2, [r4, #14]
d03e2c38:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
d03e2c3c:	7be3      	ldrb	r3, [r4, #15]
d03e2c3e:	4f53      	ldr	r7, [pc, #332]	; (d03e2d8c <ui_redraw_backbuffer+0x22c>)
d03e2c40:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e2c44:	f8df 8154 	ldr.w	r8, [pc, #340]	; d03e2d9c <ui_redraw_backbuffer+0x23c>
d03e2c48:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e2c4c:	685b      	ldr	r3, [r3, #4]
d03e2c4e:	68db      	ldr	r3, [r3, #12]
d03e2c50:	4798      	blx	r3
d03e2c52:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e2c56:	7b60      	ldrb	r0, [r4, #13]
d03e2c58:	2100      	movs	r1, #0
d03e2c5a:	7ba2      	ldrb	r2, [r4, #14]
d03e2c5c:	2302      	movs	r3, #2
d03e2c5e:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d03e2c62:	7be6      	ldrb	r6, [r4, #15]
d03e2c64:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d03e2c68:	4608      	mov	r0, r1
d03e2c6a:	ea42 6606 	orr.w	r6, r2, r6, lsl #24
d03e2c6e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03e2c72:	6876      	ldr	r6, [r6, #4]
d03e2c74:	6876      	ldr	r6, [r6, #4]
d03e2c76:	47b0      	blx	r6
d03e2c78:	7b26      	ldrb	r6, [r4, #12]
d03e2c7a:	7b61      	ldrb	r1, [r4, #13]
d03e2c7c:	201a      	movs	r0, #26
d03e2c7e:	7ba2      	ldrb	r2, [r4, #14]
d03e2c80:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
d03e2c84:	7be3      	ldrb	r3, [r4, #15]
d03e2c86:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e2c8a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e2c8e:	685b      	ldr	r3, [r3, #4]
d03e2c90:	68db      	ldr	r3, [r3, #12]
d03e2c92:	4798      	blx	r3
d03e2c94:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e2c98:	7b61      	ldrb	r1, [r4, #13]
d03e2c9a:	2301      	movs	r3, #1
d03e2c9c:	7ba0      	ldrb	r0, [r4, #14]
d03e2c9e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03e2ca2:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e2ca6:	7be6      	ldrb	r6, [r4, #15]
d03e2ca8:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d03e2cac:	2127      	movs	r1, #39	; 0x27
d03e2cae:	ea40 6606 	orr.w	r6, r0, r6, lsl #24
d03e2cb2:	2000      	movs	r0, #0
d03e2cb4:	6876      	ldr	r6, [r6, #4]
d03e2cb6:	6876      	ldr	r6, [r6, #4]
d03e2cb8:	47b0      	blx	r6
d03e2cba:	7b26      	ldrb	r6, [r4, #12]
d03e2cbc:	7b61      	ldrb	r1, [r4, #13]
d03e2cbe:	201e      	movs	r0, #30
d03e2cc0:	7ba2      	ldrb	r2, [r4, #14]
d03e2cc2:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
d03e2cc6:	7be3      	ldrb	r3, [r4, #15]
d03e2cc8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e2ccc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e2cd0:	685b      	ldr	r3, [r3, #4]
d03e2cd2:	68db      	ldr	r3, [r3, #12]
d03e2cd4:	4798      	blx	r3
d03e2cd6:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e2cda:	7b66      	ldrb	r6, [r4, #13]
d03e2cdc:	2302      	movs	r3, #2
d03e2cde:	7ba2      	ldrb	r2, [r4, #14]
d03e2ce0:	2108      	movs	r1, #8
d03e2ce2:	ea4c 2606 	orr.w	r6, ip, r6, lsl #8
d03e2ce6:	7be0      	ldrb	r0, [r4, #15]
d03e2ce8:	ea46 4202 	orr.w	r2, r6, r2, lsl #16
d03e2cec:	ea42 6000 	orr.w	r0, r2, r0, lsl #24
d03e2cf0:	4a27      	ldr	r2, [pc, #156]	; (d03e2d90 <ui_redraw_backbuffer+0x230>)
d03e2cf2:	6846      	ldr	r6, [r0, #4]
d03e2cf4:	200c      	movs	r0, #12
d03e2cf6:	9300      	str	r3, [sp, #0]
d03e2cf8:	6b36      	ldr	r6, [r6, #48]	; 0x30
d03e2cfa:	47b0      	blx	r6
d03e2cfc:	7b26      	ldrb	r6, [r4, #12]
d03e2cfe:	7b61      	ldrb	r1, [r4, #13]
d03e2d00:	2018      	movs	r0, #24
d03e2d02:	7ba2      	ldrb	r2, [r4, #14]
d03e2d04:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
d03e2d08:	7be3      	ldrb	r3, [r4, #15]
d03e2d0a:	2600      	movs	r6, #0
d03e2d0c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e2d10:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e2d14:	685b      	ldr	r3, [r3, #4]
d03e2d16:	68db      	ldr	r3, [r3, #12]
d03e2d18:	4798      	blx	r3
d03e2d1a:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e2d1e:	7b62      	ldrb	r2, [r4, #13]
d03e2d20:	2108      	movs	r1, #8
d03e2d22:	7ba0      	ldrb	r0, [r4, #14]
d03e2d24:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d03e2d28:	7be3      	ldrb	r3, [r4, #15]
d03e2d2a:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d03e2d2e:	4a19      	ldr	r2, [pc, #100]	; (d03e2d94 <ui_redraw_backbuffer+0x234>)
d03e2d30:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d03e2d34:	f44f 7087 	mov.w	r0, #270	; 0x10e
d03e2d38:	685b      	ldr	r3, [r3, #4]
d03e2d3a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e2d3c:	4798      	blx	r3
d03e2d3e:	f898 0000 	ldrb.w	r0, [r8]
d03e2d42:	b2f2      	uxtb	r2, r6
d03e2d44:	f857 1b04 	ldr.w	r1, [r7], #4
d03e2d48:	3601      	adds	r6, #1
d03e2d4a:	1a80      	subs	r0, r0, r2
d03e2d4c:	2318      	movs	r3, #24
d03e2d4e:	9100      	str	r1, [sp, #0]
d03e2d50:	2252      	movs	r2, #82	; 0x52
d03e2d52:	fab0 f080 	clz	r0, r0
d03e2d56:	212b      	movs	r1, #43	; 0x2b
d03e2d58:	0940      	lsrs	r0, r0, #5
d03e2d5a:	9001      	str	r0, [sp, #4]
d03e2d5c:	b228      	sxth	r0, r5
d03e2d5e:	f7fe fc61 	bl	d03e1624 <ui_button_draw>
d03e2d62:	355c      	adds	r5, #92	; 0x5c
d03e2d64:	2e05      	cmp	r6, #5
d03e2d66:	b2ad      	uxth	r5, r5
d03e2d68:	d1e9      	bne.n	d03e2d3e <ui_redraw_backbuffer+0x1de>
d03e2d6a:	f898 3000 	ldrb.w	r3, [r8]
d03e2d6e:	2b04      	cmp	r3, #4
d03e2d70:	f200 813a 	bhi.w	d03e2fe8 <ui_redraw_backbuffer+0x488>
d03e2d74:	e8df f013 	tbh	[pc, r3, lsl #1]
d03e2d78:	0540013b 	.word	0x0540013b
d03e2d7c:	03e40198 	.word	0x03e40198
d03e2d80:	0014      	.short	0x0014
d03e2d82:	bf00      	nop
d03e2d84:	2001f000 	.word	0x2001f000
d03e2d88:	d03e91a0 	.word	0xd03e91a0
d03e2d8c:	d03e8564 	.word	0xd03e8564
d03e2d90:	d03e7cb8 	.word	0xd03e7cb8
d03e2d94:	d03e7cc8 	.word	0xd03e7cc8
d03e2d98:	d03e85cf 	.word	0xd03e85cf
d03e2d9c:	d03e8ff5 	.word	0xd03e8ff5
d03e2da0:	4aae      	ldr	r2, [pc, #696]	; (d03e305c <ui_redraw_backbuffer+0x4fc>)
d03e2da2:	23c4      	movs	r3, #196	; 0xc4
d03e2da4:	f8df b2f4 	ldr.w	fp, [pc, #756]	; d03e309c <ui_redraw_backbuffer+0x53c>
d03e2da8:	214c      	movs	r1, #76	; 0x4c
d03e2daa:	4617      	mov	r7, r2
d03e2dac:	4eac      	ldr	r6, [pc, #688]	; (d03e3060 <ui_redraw_backbuffer+0x500>)
d03e2dae:	f89b 5000 	ldrb.w	r5, [fp]
d03e2db2:	2010      	movs	r0, #16
d03e2db4:	9205      	str	r2, [sp, #20]
d03e2db6:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03e2dba:	5d7f      	ldrb	r7, [r7, r5]
d03e2dbc:	9600      	str	r6, [sp, #0]
d03e2dbe:	f7fe fda3 	bl	d03e1908 <ui_panel>
d03e2dc2:	2f80      	cmp	r7, #128	; 0x80
d03e2dc4:	f105 0301 	add.w	r3, r5, #1
d03e2dc8:	f200 861d 	bhi.w	d03e3a06 <ui_redraw_backbuffer+0xea6>
d03e2dcc:	4aa5      	ldr	r2, [pc, #660]	; (d03e3064 <ui_redraw_backbuffer+0x504>)
d03e2dce:	f852 2027 	ldr.w	r2, [r2, r7, lsl #2]
d03e2dd2:	ae06      	add	r6, sp, #24
d03e2dd4:	2160      	movs	r1, #96	; 0x60
d03e2dd6:	9201      	str	r2, [sp, #4]
d03e2dd8:	4630      	mov	r0, r6
d03e2dda:	4aa3      	ldr	r2, [pc, #652]	; (d03e3068 <ui_redraw_backbuffer+0x508>)
d03e2ddc:	9700      	str	r7, [sp, #0]
d03e2dde:	f003 fd4b 	bl	d03e6878 <sniprintf>
d03e2de2:	7b25      	ldrb	r5, [r4, #12]
d03e2de4:	7b61      	ldrb	r1, [r4, #13]
d03e2de6:	201e      	movs	r0, #30
d03e2de8:	7ba2      	ldrb	r2, [r4, #14]
d03e2dea:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e2dee:	7be3      	ldrb	r3, [r4, #15]
d03e2df0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e2df4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e2df8:	685b      	ldr	r3, [r3, #4]
d03e2dfa:	68db      	ldr	r3, [r3, #12]
d03e2dfc:	4798      	blx	r3
d03e2dfe:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e2e02:	7b60      	ldrb	r0, [r4, #13]
d03e2e04:	4632      	mov	r2, r6
d03e2e06:	7ba5      	ldrb	r5, [r4, #14]
d03e2e08:	2160      	movs	r1, #96	; 0x60
d03e2e0a:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d03e2e0e:	7be3      	ldrb	r3, [r4, #15]
d03e2e10:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d03e2e14:	201e      	movs	r0, #30
d03e2e16:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e2e1a:	685b      	ldr	r3, [r3, #4]
d03e2e1c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e2e1e:	4798      	blx	r3
d03e2e20:	4a92      	ldr	r2, [pc, #584]	; (d03e306c <ui_redraw_backbuffer+0x50c>)
d03e2e22:	214e      	movs	r1, #78	; 0x4e
d03e2e24:	f44f 70af 	mov.w	r0, #350	; 0x15e
d03e2e28:	f7ff f81e 	bl	d03e1e68 <ui_button_draw.constprop.0>
d03e2e2c:	4a90      	ldr	r2, [pc, #576]	; (d03e3070 <ui_redraw_backbuffer+0x510>)
d03e2e2e:	214e      	movs	r1, #78	; 0x4e
d03e2e30:	f44f 70c2 	mov.w	r0, #388	; 0x184
d03e2e34:	f7ff f818 	bl	d03e1e68 <ui_button_draw.constprop.0>
d03e2e38:	063b      	lsls	r3, r7, #24
d03e2e3a:	f100 85e7 	bmi.w	d03e3a0c <ui_redraw_backbuffer+0xeac>
d03e2e3e:	4b8d      	ldr	r3, [pc, #564]	; (d03e3074 <ui_redraw_backbuffer+0x514>)
d03e2e40:	f853 7027 	ldr.w	r7, [r3, r7, lsl #2]
d03e2e44:	2f00      	cmp	r7, #0
d03e2e46:	f000 8601 	beq.w	d03e3a4c <ui_redraw_backbuffer+0xeec>
d03e2e4a:	f89b 2000 	ldrb.w	r2, [fp]
d03e2e4e:	9805      	ldr	r0, [sp, #20]
d03e2e50:	5681      	ldrsb	r1, [r0, r2]
d03e2e52:	5c82      	ldrb	r2, [r0, r2]
d03e2e54:	2900      	cmp	r1, #0
d03e2e56:	f2c0 8619 	blt.w	d03e3a8c <ui_redraw_backbuffer+0xf2c>
d03e2e5a:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
d03e2e5e:	2900      	cmp	r1, #0
d03e2e60:	f000 8617 	beq.w	d03e3a92 <ui_redraw_backbuffer+0xf32>
d03e2e64:	2300      	movs	r3, #0
d03e2e66:	e002      	b.n	d03e2e6e <ui_redraw_backbuffer+0x30e>
d03e2e68:	2b60      	cmp	r3, #96	; 0x60
d03e2e6a:	f000 8615 	beq.w	d03e3a98 <ui_redraw_backbuffer+0xf38>
d03e2e6e:	f811 2023 	ldrb.w	r2, [r1, r3, lsl #2]
d03e2e72:	b2d8      	uxtb	r0, r3
d03e2e74:	3301      	adds	r3, #1
d03e2e76:	2a00      	cmp	r2, #0
d03e2e78:	d1f6      	bne.n	d03e2e68 <ui_redraw_backbuffer+0x308>
d03e2e7a:	1c43      	adds	r3, r0, #1
d03e2e7c:	b2db      	uxtb	r3, r3
d03e2e7e:	2b07      	cmp	r3, #7
d03e2e80:	d901      	bls.n	d03e2e86 <ui_redraw_backbuffer+0x326>
d03e2e82:	1f82      	subs	r2, r0, #6
d03e2e84:	b2d2      	uxtb	r2, r2
d03e2e86:	f8df b218 	ldr.w	fp, [pc, #536]	; d03e30a0 <ui_redraw_backbuffer+0x540>
d03e2e8a:	2500      	movs	r5, #0
d03e2e8c:	f89b 3000 	ldrb.w	r3, [fp]
d03e2e90:	4293      	cmp	r3, r2
d03e2e92:	bf88      	it	hi
d03e2e94:	f88b 2000 	strbhi.w	r2, [fp]
d03e2e98:	e001      	b.n	d03e2e9e <ui_redraw_backbuffer+0x33e>
d03e2e9a:	2d60      	cmp	r5, #96	; 0x60
d03e2e9c:	d007      	beq.n	d03e2eae <ui_redraw_backbuffer+0x34e>
d03e2e9e:	f817 3025 	ldrb.w	r3, [r7, r5, lsl #2]
d03e2ea2:	b2ea      	uxtb	r2, r5
d03e2ea4:	3501      	adds	r5, #1
d03e2ea6:	2b00      	cmp	r3, #0
d03e2ea8:	d1f7      	bne.n	d03e2e9a <ui_redraw_backbuffer+0x33a>
d03e2eaa:	1c55      	adds	r5, r2, #1
d03e2eac:	b2ed      	uxtb	r5, r5
d03e2eae:	7b21      	ldrb	r1, [r4, #12]
d03e2eb0:	201d      	movs	r0, #29
d03e2eb2:	7b63      	ldrb	r3, [r4, #13]
d03e2eb4:	f04f 0800 	mov.w	r8, #0
d03e2eb8:	7ba2      	ldrb	r2, [r4, #14]
d03e2eba:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e2ebe:	7be3      	ldrb	r3, [r4, #15]
d03e2ec0:	f8df a1e0 	ldr.w	sl, [pc, #480]	; d03e30a4 <ui_redraw_backbuffer+0x544>
d03e2ec4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e2ec8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e2ecc:	685b      	ldr	r3, [r3, #4]
d03e2ece:	68db      	ldr	r3, [r3, #12]
d03e2ed0:	4798      	blx	r3
d03e2ed2:	7b22      	ldrb	r2, [r4, #12]
d03e2ed4:	7b63      	ldrb	r3, [r4, #13]
d03e2ed6:	2174      	movs	r1, #116	; 0x74
d03e2ed8:	7ba0      	ldrb	r0, [r4, #14]
d03e2eda:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03e2ede:	7be3      	ldrb	r3, [r4, #15]
d03e2ee0:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d03e2ee4:	4a64      	ldr	r2, [pc, #400]	; (d03e3078 <ui_redraw_backbuffer+0x518>)
d03e2ee6:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d03e2eea:	201e      	movs	r0, #30
d03e2eec:	685b      	ldr	r3, [r3, #4]
d03e2eee:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e2ef0:	4798      	blx	r3
d03e2ef2:	f89b 3000 	ldrb.w	r3, [fp]
d03e2ef6:	4861      	ldr	r0, [pc, #388]	; (d03e307c <ui_redraw_backbuffer+0x51c>)
d03e2ef8:	4443      	add	r3, r8
d03e2efa:	b2db      	uxtb	r3, r3
d03e2efc:	42ab      	cmp	r3, r5
d03e2efe:	fa0f f983 	sxth.w	r9, r3
d03e2f02:	eb07 0c83 	add.w	ip, r7, r3, lsl #2
d03e2f06:	d242      	bcs.n	d03e2f8e <ui_redraw_backbuffer+0x42e>
d03e2f08:	f817 2023 	ldrb.w	r2, [r7, r3, lsl #2]
d03e2f0c:	2a15      	cmp	r2, #21
d03e2f0e:	d802      	bhi.n	d03e2f16 <ui_redraw_backbuffer+0x3b6>
d03e2f10:	495b      	ldr	r1, [pc, #364]	; (d03e3080 <ui_redraw_backbuffer+0x520>)
d03e2f12:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
d03e2f16:	f8bc 1002 	ldrh.w	r1, [ip, #2]
d03e2f1a:	4652      	mov	r2, sl
d03e2f1c:	9102      	str	r1, [sp, #8]
d03e2f1e:	2160      	movs	r1, #96	; 0x60
d03e2f20:	f89c c001 	ldrb.w	ip, [ip, #1]
d03e2f24:	9000      	str	r0, [sp, #0]
d03e2f26:	4630      	mov	r0, r6
d03e2f28:	f8cd c004 	str.w	ip, [sp, #4]
d03e2f2c:	f003 fca4 	bl	d03e6878 <sniprintf>
d03e2f30:	7b20      	ldrb	r0, [r4, #12]
d03e2f32:	7b61      	ldrb	r1, [r4, #13]
d03e2f34:	7ba2      	ldrb	r2, [r4, #14]
d03e2f36:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e2f3a:	7be3      	ldrb	r3, [r4, #15]
d03e2f3c:	f817 0029 	ldrb.w	r0, [r7, r9, lsl #2]
d03e2f40:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e2f44:	2800      	cmp	r0, #0
d03e2f46:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e2f4a:	bf0c      	ite	eq
d03e2f4c:	200e      	moveq	r0, #14
d03e2f4e:	2019      	movne	r0, #25
d03e2f50:	685b      	ldr	r3, [r3, #4]
d03e2f52:	68db      	ldr	r3, [r3, #12]
d03e2f54:	4798      	blx	r3
d03e2f56:	7b22      	ldrb	r2, [r4, #12]
d03e2f58:	f894 c00d 	ldrb.w	ip, [r4, #13]
d03e2f5c:	ea4f 1108 	mov.w	r1, r8, lsl #4
d03e2f60:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e2f64:	f108 0801 	add.w	r8, r8, #1
d03e2f68:	ea42 200c 	orr.w	r0, r2, ip, lsl #8
d03e2f6c:	7be3      	ldrb	r3, [r4, #15]
d03e2f6e:	3186      	adds	r1, #134	; 0x86
d03e2f70:	4632      	mov	r2, r6
d03e2f72:	ea40 4c0e 	orr.w	ip, r0, lr, lsl #16
d03e2f76:	201e      	movs	r0, #30
d03e2f78:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d03e2f7c:	685b      	ldr	r3, [r3, #4]
d03e2f7e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e2f80:	4798      	blx	r3
d03e2f82:	f817 3029 	ldrb.w	r3, [r7, r9, lsl #2]
d03e2f86:	b113      	cbz	r3, d03e2f8e <ui_redraw_backbuffer+0x42e>
d03e2f88:	f1b8 0f07 	cmp.w	r8, #7
d03e2f8c:	d1b1      	bne.n	d03e2ef2 <ui_redraw_backbuffer+0x392>
d03e2f8e:	4a3d      	ldr	r2, [pc, #244]	; (d03e3084 <ui_redraw_backbuffer+0x524>)
d03e2f90:	217c      	movs	r1, #124	; 0x7c
d03e2f92:	f44f 70d1 	mov.w	r0, #418	; 0x1a2
d03e2f96:	f7fe ff67 	bl	d03e1e68 <ui_button_draw.constprop.0>
d03e2f9a:	4a3b      	ldr	r2, [pc, #236]	; (d03e3088 <ui_redraw_backbuffer+0x528>)
d03e2f9c:	21e0      	movs	r1, #224	; 0xe0
d03e2f9e:	f44f 70d1 	mov.w	r0, #418	; 0x1a2
d03e2fa2:	f7fe ff61 	bl	d03e1e68 <ui_button_draw.constprop.0>
d03e2fa6:	9500      	str	r5, [sp, #0]
d03e2fa8:	2160      	movs	r1, #96	; 0x60
d03e2faa:	f89b 3000 	ldrb.w	r3, [fp]
d03e2fae:	4a37      	ldr	r2, [pc, #220]	; (d03e308c <ui_redraw_backbuffer+0x52c>)
d03e2fb0:	4630      	mov	r0, r6
d03e2fb2:	f003 fc61 	bl	d03e6878 <sniprintf>
d03e2fb6:	7b21      	ldrb	r1, [r4, #12]
d03e2fb8:	7b63      	ldrb	r3, [r4, #13]
d03e2fba:	2018      	movs	r0, #24
d03e2fbc:	7ba2      	ldrb	r2, [r4, #14]
d03e2fbe:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e2fc2:	7be3      	ldrb	r3, [r4, #15]
d03e2fc4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e2fc8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e2fcc:	685b      	ldr	r3, [r3, #4]
d03e2fce:	68db      	ldr	r3, [r3, #12]
d03e2fd0:	4798      	blx	r3
d03e2fd2:	7b20      	ldrb	r0, [r4, #12]
d03e2fd4:	7b63      	ldrb	r3, [r4, #13]
d03e2fd6:	4632      	mov	r2, r6
d03e2fd8:	7ba5      	ldrb	r5, [r4, #14]
d03e2fda:	21fa      	movs	r1, #250	; 0xfa
d03e2fdc:	ea40 2603 	orr.w	r6, r0, r3, lsl #8
d03e2fe0:	7be3      	ldrb	r3, [r4, #15]
d03e2fe2:	f44f 70b4 	mov.w	r0, #360	; 0x168
d03e2fe6:	e29d      	b.n	d03e3524 <ui_redraw_backbuffer+0x9c4>
d03e2fe8:	2300      	movs	r3, #0
d03e2fea:	f888 3000 	strb.w	r3, [r8]
d03e2fee:	f7ff f8b1 	bl	d03e2154 <ui_draw_home>
d03e2ff2:	2500      	movs	r5, #0
d03e2ff4:	4826      	ldr	r0, [pc, #152]	; (d03e3090 <ui_redraw_backbuffer+0x530>)
d03e2ff6:	2318      	movs	r3, #24
d03e2ff8:	2246      	movs	r2, #70	; 0x46
d03e2ffa:	9000      	str	r0, [sp, #0]
d03e2ffc:	f44f 718e 	mov.w	r1, #284	; 0x11c
d03e3000:	2008      	movs	r0, #8
d03e3002:	9501      	str	r5, [sp, #4]
d03e3004:	f7fe fb0e 	bl	d03e1624 <ui_button_draw>
d03e3008:	4a22      	ldr	r2, [pc, #136]	; (d03e3094 <ui_redraw_backbuffer+0x534>)
d03e300a:	2318      	movs	r3, #24
d03e300c:	f44f 718e 	mov.w	r1, #284	; 0x11c
d03e3010:	9200      	str	r2, [sp, #0]
d03e3012:	f44f 70a6 	mov.w	r0, #332	; 0x14c
d03e3016:	2236      	movs	r2, #54	; 0x36
d03e3018:	9501      	str	r5, [sp, #4]
d03e301a:	f7fe fb03 	bl	d03e1624 <ui_button_draw>
d03e301e:	4a1e      	ldr	r2, [pc, #120]	; (d03e3098 <ui_redraw_backbuffer+0x538>)
d03e3020:	2318      	movs	r3, #24
d03e3022:	f44f 718e 	mov.w	r1, #284	; 0x11c
d03e3026:	9200      	str	r2, [sp, #0]
d03e3028:	f44f 70c4 	mov.w	r0, #392	; 0x188
d03e302c:	2236      	movs	r2, #54	; 0x36
d03e302e:	9501      	str	r5, [sp, #4]
d03e3030:	f7fe faf8 	bl	d03e1624 <ui_button_draw>
d03e3034:	7b23      	ldrb	r3, [r4, #12]
d03e3036:	7b62      	ldrb	r2, [r4, #13]
d03e3038:	ee18 0a10 	vmov	r0, s16
d03e303c:	7ba1      	ldrb	r1, [r4, #14]
d03e303e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3042:	7be2      	ldrb	r2, [r4, #15]
d03e3044:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e3048:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e304c:	681b      	ldr	r3, [r3, #0]
d03e304e:	699b      	ldr	r3, [r3, #24]
d03e3050:	4798      	blx	r3
d03e3052:	b01f      	add	sp, #124	; 0x7c
d03e3054:	ecbd 8b02 	vpop	{d8}
d03e3058:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e305c:	d03e8d64 	.word	0xd03e8d64
d03e3060:	d03e7ea4 	.word	0xd03e7ea4
d03e3064:	d03e8360 	.word	0xd03e8360
d03e3068:	d03e7eb4 	.word	0xd03e7eb4
d03e306c:	d03e7c18 	.word	0xd03e7c18
d03e3070:	d03e7c1c 	.word	0xd03e7c1c
d03e3074:	d03e8678 	.word	0xd03e8678
d03e3078:	d03e7f00 	.word	0xd03e7f00
d03e307c:	d03e7cb4 	.word	0xd03e7cb4
d03e3080:	d03e8578 	.word	0xd03e8578
d03e3084:	d03e7f18 	.word	0xd03e7f18
d03e3088:	d03e7f1c 	.word	0xd03e7f1c
d03e308c:	d03e7f20 	.word	0xd03e7f20
d03e3090:	d03e7f44 	.word	0xd03e7f44
d03e3094:	d03e7f4c 	.word	0xd03e7f4c
d03e3098:	d03e7f54 	.word	0xd03e7f54
d03e309c:	d03e8ffb 	.word	0xd03e8ffb
d03e30a0:	d03e902a 	.word	0xd03e902a
d03e30a4:	d03e7f2c 	.word	0xd03e7f2c
d03e30a8:	49c0      	ldr	r1, [pc, #768]	; (d03e33ac <ui_redraw_backbuffer+0x84c>)
d03e30aa:	2334      	movs	r3, #52	; 0x34
d03e30ac:	4dc0      	ldr	r5, [pc, #768]	; (d03e33b0 <ui_redraw_backbuffer+0x850>)
d03e30ae:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03e30b2:	4ec0      	ldr	r6, [pc, #768]	; (d03e33b4 <ui_redraw_backbuffer+0x854>)
d03e30b4:	2010      	movs	r0, #16
d03e30b6:	9100      	str	r1, [sp, #0]
d03e30b8:	214e      	movs	r1, #78	; 0x4e
d03e30ba:	782f      	ldrb	r7, [r5, #0]
d03e30bc:	f7fe fc24 	bl	d03e1908 <ui_panel>
d03e30c0:	8833      	ldrh	r3, [r6, #0]
d03e30c2:	2160      	movs	r1, #96	; 0x60
d03e30c4:	4abc      	ldr	r2, [pc, #752]	; (d03e33b8 <ui_redraw_backbuffer+0x858>)
d03e30c6:	a806      	add	r0, sp, #24
d03e30c8:	f003 fbd6 	bl	d03e6878 <sniprintf>
d03e30cc:	7b25      	ldrb	r5, [r4, #12]
d03e30ce:	7b61      	ldrb	r1, [r4, #13]
d03e30d0:	201e      	movs	r0, #30
d03e30d2:	7ba2      	ldrb	r2, [r4, #14]
d03e30d4:	f04f 0bee 	mov.w	fp, #238	; 0xee
d03e30d8:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e30dc:	7be3      	ldrb	r3, [r4, #15]
d03e30de:	f8df a2fc 	ldr.w	sl, [pc, #764]	; d03e33dc <ui_redraw_backbuffer+0x87c>
d03e30e2:	f04f 08ca 	mov.w	r8, #202	; 0xca
d03e30e6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e30ea:	4db4      	ldr	r5, [pc, #720]	; (d03e33bc <ui_redraw_backbuffer+0x85c>)
d03e30ec:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e30f0:	685b      	ldr	r3, [r3, #4]
d03e30f2:	68db      	ldr	r3, [r3, #12]
d03e30f4:	4798      	blx	r3
d03e30f6:	f894 e00c 	ldrb.w	lr, [r4, #12]
d03e30fa:	f894 c00d 	ldrb.w	ip, [r4, #13]
d03e30fe:	aa06      	add	r2, sp, #24
d03e3100:	7ba3      	ldrb	r3, [r4, #14]
d03e3102:	2160      	movs	r1, #96	; 0x60
d03e3104:	ea4e 200c 	orr.w	r0, lr, ip, lsl #8
d03e3108:	f894 e00f 	ldrb.w	lr, [r4, #15]
d03e310c:	ea40 4c03 	orr.w	ip, r0, r3, lsl #16
d03e3110:	2020      	movs	r0, #32
d03e3112:	ea4c 630e 	orr.w	r3, ip, lr, lsl #24
d03e3116:	685b      	ldr	r3, [r3, #4]
d03e3118:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e311a:	4798      	blx	r3
d03e311c:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e3120:	7b62      	ldrb	r2, [r4, #13]
d03e3122:	201a      	movs	r0, #26
d03e3124:	7ba3      	ldrb	r3, [r4, #14]
d03e3126:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
d03e312a:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e312e:	8836      	ldrh	r6, [r6, #0]
d03e3130:	ea41 4203 	orr.w	r2, r1, r3, lsl #16
d03e3134:	49a2      	ldr	r1, [pc, #648]	; (d03e33c0 <ui_redraw_backbuffer+0x860>)
d03e3136:	fb0b f606 	mul.w	r6, fp, r6
d03e313a:	ea42 630c 	orr.w	r3, r2, ip, lsl #24
d03e313e:	fba1 2606 	umull	r2, r6, r1, r6
d03e3142:	685b      	ldr	r3, [r3, #4]
d03e3144:	0976      	lsrs	r6, r6, #5
d03e3146:	68db      	ldr	r3, [r3, #12]
d03e3148:	4798      	blx	r3
d03e314a:	f894 e00c 	ldrb.w	lr, [r4, #12]
d03e314e:	7b60      	ldrb	r0, [r4, #13]
d03e3150:	230a      	movs	r3, #10
d03e3152:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e3156:	22f0      	movs	r2, #240	; 0xf0
d03e3158:	ea4e 2100 	orr.w	r1, lr, r0, lsl #8
d03e315c:	f894 e00f 	ldrb.w	lr, [r4, #15]
d03e3160:	ea41 400c 	orr.w	r0, r1, ip, lsl #16
d03e3164:	2162      	movs	r1, #98	; 0x62
d03e3166:	ea40 6c0e 	orr.w	ip, r0, lr, lsl #24
d03e316a:	205c      	movs	r0, #92	; 0x5c
d03e316c:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e3170:	f8dc 9004 	ldr.w	r9, [ip, #4]
d03e3174:	47c8      	blx	r9
d03e3176:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e317a:	7b61      	ldrb	r1, [r4, #13]
d03e317c:	2011      	movs	r0, #17
d03e317e:	7ba2      	ldrb	r2, [r4, #14]
d03e3180:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e3184:	7be3      	ldrb	r3, [r4, #15]
d03e3186:	f8df 9258 	ldr.w	r9, [pc, #600]	; d03e33e0 <ui_redraw_backbuffer+0x880>
d03e318a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e318e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3192:	685b      	ldr	r3, [r3, #4]
d03e3194:	68db      	ldr	r3, [r3, #12]
d03e3196:	4798      	blx	r3
d03e3198:	f894 e00c 	ldrb.w	lr, [r4, #12]
d03e319c:	7b60      	ldrb	r0, [r4, #13]
d03e319e:	465a      	mov	r2, fp
d03e31a0:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e31a4:	2308      	movs	r3, #8
d03e31a6:	ea4e 2100 	orr.w	r1, lr, r0, lsl #8
d03e31aa:	f894 e00f 	ldrb.w	lr, [r4, #15]
d03e31ae:	ea41 400c 	orr.w	r0, r1, ip, lsl #16
d03e31b2:	2163      	movs	r1, #99	; 0x63
d03e31b4:	ea40 6c0e 	orr.w	ip, r0, lr, lsl #24
d03e31b8:	205d      	movs	r0, #93	; 0x5d
d03e31ba:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e31be:	f8dc b004 	ldr.w	fp, [ip, #4]
d03e31c2:	47d8      	blx	fp
d03e31c4:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e31c8:	7b61      	ldrb	r1, [r4, #13]
d03e31ca:	201d      	movs	r0, #29
d03e31cc:	7ba2      	ldrb	r2, [r4, #14]
d03e31ce:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e31d2:	7be3      	ldrb	r3, [r4, #15]
d03e31d4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e31d8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e31dc:	685b      	ldr	r3, [r3, #4]
d03e31de:	68db      	ldr	r3, [r3, #12]
d03e31e0:	4798      	blx	r3
d03e31e2:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e31e6:	7b61      	ldrb	r1, [r4, #13]
d03e31e8:	b232      	sxth	r2, r6
d03e31ea:	7ba0      	ldrb	r0, [r4, #14]
d03e31ec:	2308      	movs	r3, #8
d03e31ee:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e31f2:	7be6      	ldrb	r6, [r4, #15]
d03e31f4:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d03e31f8:	2163      	movs	r1, #99	; 0x63
d03e31fa:	ea40 6606 	orr.w	r6, r0, r6, lsl #24
d03e31fe:	205d      	movs	r0, #93	; 0x5d
d03e3200:	6876      	ldr	r6, [r6, #4]
d03e3202:	6876      	ldr	r6, [r6, #4]
d03e3204:	47b0      	blx	r6
d03e3206:	4a6f      	ldr	r2, [pc, #444]	; (d03e33c4 <ui_redraw_backbuffer+0x864>)
d03e3208:	2158      	movs	r1, #88	; 0x58
d03e320a:	f44f 70b2 	mov.w	r0, #356	; 0x164
d03e320e:	f7fe fe2b 	bl	d03e1e68 <ui_button_draw.constprop.0>
d03e3212:	4a6d      	ldr	r2, [pc, #436]	; (d03e33c8 <ui_redraw_backbuffer+0x868>)
d03e3214:	2158      	movs	r1, #88	; 0x58
d03e3216:	f44f 70c7 	mov.w	r0, #398	; 0x18e
d03e321a:	f7fe fe25 	bl	d03e1e68 <ui_button_draw.constprop.0>
d03e321e:	496b      	ldr	r1, [pc, #428]	; (d03e33cc <ui_redraw_backbuffer+0x86c>)
d03e3220:	2334      	movs	r3, #52	; 0x34
d03e3222:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03e3226:	2010      	movs	r0, #16
d03e3228:	9100      	str	r1, [sp, #0]
d03e322a:	2184      	movs	r1, #132	; 0x84
d03e322c:	f7fe fb6c 	bl	d03e1908 <ui_panel>
d03e3230:	f81a 2007 	ldrb.w	r2, [sl, r7]
d03e3234:	1c7b      	adds	r3, r7, #1
d03e3236:	2160      	movs	r1, #96	; 0x60
d03e3238:	9200      	str	r2, [sp, #0]
d03e323a:	a806      	add	r0, sp, #24
d03e323c:	4a64      	ldr	r2, [pc, #400]	; (d03e33d0 <ui_redraw_backbuffer+0x870>)
d03e323e:	f003 fb1b 	bl	d03e6878 <sniprintf>
d03e3242:	7b26      	ldrb	r6, [r4, #12]
d03e3244:	7b61      	ldrb	r1, [r4, #13]
d03e3246:	201e      	movs	r0, #30
d03e3248:	7ba2      	ldrb	r2, [r4, #14]
d03e324a:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
d03e324e:	7be3      	ldrb	r3, [r4, #15]
d03e3250:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3254:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3258:	685b      	ldr	r3, [r3, #4]
d03e325a:	68db      	ldr	r3, [r3, #12]
d03e325c:	4798      	blx	r3
d03e325e:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e3262:	7b60      	ldrb	r0, [r4, #13]
d03e3264:	aa06      	add	r2, sp, #24
d03e3266:	7ba6      	ldrb	r6, [r4, #14]
d03e3268:	2196      	movs	r1, #150	; 0x96
d03e326a:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d03e326e:	7be3      	ldrb	r3, [r4, #15]
d03e3270:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d03e3274:	2020      	movs	r0, #32
d03e3276:	ea46 6303 	orr.w	r3, r6, r3, lsl #24
d03e327a:	685b      	ldr	r3, [r3, #4]
d03e327c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e327e:	4798      	blx	r3
d03e3280:	7b26      	ldrb	r6, [r4, #12]
d03e3282:	7b62      	ldrb	r2, [r4, #13]
d03e3284:	201a      	movs	r0, #26
d03e3286:	f81a a007 	ldrb.w	sl, [sl, r7]
d03e328a:	ea46 2102 	orr.w	r1, r6, r2, lsl #8
d03e328e:	7ba2      	ldrb	r2, [r4, #14]
d03e3290:	7be3      	ldrb	r3, [r4, #15]
d03e3292:	fb1a f608 	smulbb	r6, sl, r8
d03e3296:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e329a:	fba5 1a06 	umull	r1, sl, r5, r6
d03e329e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e32a2:	eba6 060a 	sub.w	r6, r6, sl
d03e32a6:	685b      	ldr	r3, [r3, #4]
d03e32a8:	eb0a 0a56 	add.w	sl, sl, r6, lsr #1
d03e32ac:	68db      	ldr	r3, [r3, #12]
d03e32ae:	4798      	blx	r3
d03e32b0:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e32b4:	7b61      	ldrb	r1, [r4, #13]
d03e32b6:	230a      	movs	r3, #10
d03e32b8:	7ba0      	ldrb	r0, [r4, #14]
d03e32ba:	22cc      	movs	r2, #204	; 0xcc
d03e32bc:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e32c0:	7be6      	ldrb	r6, [r4, #15]
d03e32c2:	ea4f 1a9a 	mov.w	sl, sl, lsr #6
d03e32c6:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d03e32ca:	2198      	movs	r1, #152	; 0x98
d03e32cc:	ea40 6606 	orr.w	r6, r0, r6, lsl #24
d03e32d0:	2080      	movs	r0, #128	; 0x80
d03e32d2:	6876      	ldr	r6, [r6, #4]
d03e32d4:	6876      	ldr	r6, [r6, #4]
d03e32d6:	47b0      	blx	r6
d03e32d8:	7b26      	ldrb	r6, [r4, #12]
d03e32da:	7b61      	ldrb	r1, [r4, #13]
d03e32dc:	2011      	movs	r0, #17
d03e32de:	7ba2      	ldrb	r2, [r4, #14]
d03e32e0:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
d03e32e4:	7be3      	ldrb	r3, [r4, #15]
d03e32e6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e32ea:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e32ee:	685b      	ldr	r3, [r3, #4]
d03e32f0:	68db      	ldr	r3, [r3, #12]
d03e32f2:	4798      	blx	r3
d03e32f4:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e32f8:	7b61      	ldrb	r1, [r4, #13]
d03e32fa:	4642      	mov	r2, r8
d03e32fc:	7ba0      	ldrb	r0, [r4, #14]
d03e32fe:	2308      	movs	r3, #8
d03e3300:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e3304:	7be6      	ldrb	r6, [r4, #15]
d03e3306:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d03e330a:	2199      	movs	r1, #153	; 0x99
d03e330c:	ea40 6606 	orr.w	r6, r0, r6, lsl #24
d03e3310:	2081      	movs	r0, #129	; 0x81
d03e3312:	6876      	ldr	r6, [r6, #4]
d03e3314:	6876      	ldr	r6, [r6, #4]
d03e3316:	47b0      	blx	r6
d03e3318:	7b26      	ldrb	r6, [r4, #12]
d03e331a:	7b61      	ldrb	r1, [r4, #13]
d03e331c:	201d      	movs	r0, #29
d03e331e:	7ba2      	ldrb	r2, [r4, #14]
d03e3320:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
d03e3324:	7be3      	ldrb	r3, [r4, #15]
d03e3326:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e332a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e332e:	685b      	ldr	r3, [r3, #4]
d03e3330:	68db      	ldr	r3, [r3, #12]
d03e3332:	4798      	blx	r3
d03e3334:	7b21      	ldrb	r1, [r4, #12]
d03e3336:	7b60      	ldrb	r0, [r4, #13]
d03e3338:	2308      	movs	r3, #8
d03e333a:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e333e:	fa0f f28a 	sxth.w	r2, sl
d03e3342:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d03e3346:	7be6      	ldrb	r6, [r4, #15]
d03e3348:	2199      	movs	r1, #153	; 0x99
d03e334a:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d03e334e:	2081      	movs	r0, #129	; 0x81
d03e3350:	ea4c 6606 	orr.w	r6, ip, r6, lsl #24
d03e3354:	6876      	ldr	r6, [r6, #4]
d03e3356:	6876      	ldr	r6, [r6, #4]
d03e3358:	47b0      	blx	r6
d03e335a:	4a1a      	ldr	r2, [pc, #104]	; (d03e33c4 <ui_redraw_backbuffer+0x864>)
d03e335c:	218b      	movs	r1, #139	; 0x8b
d03e335e:	f44f 70b2 	mov.w	r0, #356	; 0x164
d03e3362:	f7fe fd81 	bl	d03e1e68 <ui_button_draw.constprop.0>
d03e3366:	4a18      	ldr	r2, [pc, #96]	; (d03e33c8 <ui_redraw_backbuffer+0x868>)
d03e3368:	218b      	movs	r1, #139	; 0x8b
d03e336a:	f44f 70c7 	mov.w	r0, #398	; 0x18e
d03e336e:	f7fe fd7b 	bl	d03e1e68 <ui_button_draw.constprop.0>
d03e3372:	4918      	ldr	r1, [pc, #96]	; (d03e33d4 <ui_redraw_backbuffer+0x874>)
d03e3374:	2334      	movs	r3, #52	; 0x34
d03e3376:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03e337a:	2010      	movs	r0, #16
d03e337c:	9100      	str	r1, [sp, #0]
d03e337e:	21ba      	movs	r1, #186	; 0xba
d03e3380:	f7fe fac2 	bl	d03e1908 <ui_panel>
d03e3384:	f819 3007 	ldrb.w	r3, [r9, r7]
d03e3388:	4a13      	ldr	r2, [pc, #76]	; (d03e33d8 <ui_redraw_backbuffer+0x878>)
d03e338a:	2160      	movs	r1, #96	; 0x60
d03e338c:	a806      	add	r0, sp, #24
d03e338e:	f003 fa73 	bl	d03e6878 <sniprintf>
d03e3392:	7b26      	ldrb	r6, [r4, #12]
d03e3394:	7b61      	ldrb	r1, [r4, #13]
d03e3396:	201e      	movs	r0, #30
d03e3398:	7ba2      	ldrb	r2, [r4, #14]
d03e339a:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
d03e339e:	7be3      	ldrb	r3, [r4, #15]
d03e33a0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e33a4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e33a8:	685b      	ldr	r3, [r3, #4]
d03e33aa:	e01b      	b.n	d03e33e4 <ui_redraw_backbuffer+0x884>
d03e33ac:	d03e7d4c 	.word	0xd03e7d4c
d03e33b0:	d03e8ffb 	.word	0xd03e8ffb
d03e33b4:	d03e8f92 	.word	0xd03e8f92
d03e33b8:	d03e7d60 	.word	0xd03e7d60
d03e33bc:	02040811 	.word	0x02040811
d03e33c0:	1b4e81b5 	.word	0x1b4e81b5
d03e33c4:	d03e7d44 	.word	0xd03e7d44
d03e33c8:	d03e7d48 	.word	0xd03e7d48
d03e33cc:	d03e7d68 	.word	0xd03e7d68
d03e33d0:	d03e7d80 	.word	0xd03e7d80
d03e33d4:	d03e7d90 	.word	0xd03e7d90
d03e33d8:	d03e7dac 	.word	0xd03e7dac
d03e33dc:	d03e8d74 	.word	0xd03e8d74
d03e33e0:	d03e8d54 	.word	0xd03e8d54
d03e33e4:	68db      	ldr	r3, [r3, #12]
d03e33e6:	4798      	blx	r3
d03e33e8:	7b20      	ldrb	r0, [r4, #12]
d03e33ea:	f894 c00d 	ldrb.w	ip, [r4, #13]
d03e33ee:	aa06      	add	r2, sp, #24
d03e33f0:	7ba6      	ldrb	r6, [r4, #14]
d03e33f2:	21cc      	movs	r1, #204	; 0xcc
d03e33f4:	ea40 2c0c 	orr.w	ip, r0, ip, lsl #8
d03e33f8:	7be3      	ldrb	r3, [r4, #15]
d03e33fa:	2020      	movs	r0, #32
d03e33fc:	ea4c 4606 	orr.w	r6, ip, r6, lsl #16
d03e3400:	ea46 6303 	orr.w	r3, r6, r3, lsl #24
d03e3404:	685b      	ldr	r3, [r3, #4]
d03e3406:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3408:	4798      	blx	r3
d03e340a:	7b26      	ldrb	r6, [r4, #12]
d03e340c:	7b62      	ldrb	r2, [r4, #13]
d03e340e:	201a      	movs	r0, #26
d03e3410:	f819 9007 	ldrb.w	r9, [r9, r7]
d03e3414:	ea46 2102 	orr.w	r1, r6, r2, lsl #8
d03e3418:	7ba2      	ldrb	r2, [r4, #14]
d03e341a:	7be3      	ldrb	r3, [r4, #15]
d03e341c:	fb19 f908 	smulbb	r9, r9, r8
d03e3420:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3424:	fba5 1509 	umull	r1, r5, r5, r9
d03e3428:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e342c:	eba9 0905 	sub.w	r9, r9, r5
d03e3430:	685b      	ldr	r3, [r3, #4]
d03e3432:	eb05 0559 	add.w	r5, r5, r9, lsr #1
d03e3436:	68db      	ldr	r3, [r3, #12]
d03e3438:	4798      	blx	r3
d03e343a:	7b21      	ldrb	r1, [r4, #12]
d03e343c:	7b67      	ldrb	r7, [r4, #13]
d03e343e:	ea4f 1995 	mov.w	r9, r5, lsr #6
d03e3442:	7ba6      	ldrb	r6, [r4, #14]
d03e3444:	230a      	movs	r3, #10
d03e3446:	ea41 2707 	orr.w	r7, r1, r7, lsl #8
d03e344a:	7be5      	ldrb	r5, [r4, #15]
d03e344c:	22cc      	movs	r2, #204	; 0xcc
d03e344e:	21ce      	movs	r1, #206	; 0xce
d03e3450:	ea47 4606 	orr.w	r6, r7, r6, lsl #16
d03e3454:	2080      	movs	r0, #128	; 0x80
d03e3456:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d03e345a:	686d      	ldr	r5, [r5, #4]
d03e345c:	686d      	ldr	r5, [r5, #4]
d03e345e:	47a8      	blx	r5
d03e3460:	7b25      	ldrb	r5, [r4, #12]
d03e3462:	7b61      	ldrb	r1, [r4, #13]
d03e3464:	2011      	movs	r0, #17
d03e3466:	7ba2      	ldrb	r2, [r4, #14]
d03e3468:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e346c:	7be3      	ldrb	r3, [r4, #15]
d03e346e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3472:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3476:	685b      	ldr	r3, [r3, #4]
d03e3478:	68db      	ldr	r3, [r3, #12]
d03e347a:	4798      	blx	r3
d03e347c:	7b21      	ldrb	r1, [r4, #12]
d03e347e:	7b67      	ldrb	r7, [r4, #13]
d03e3480:	4642      	mov	r2, r8
d03e3482:	7ba6      	ldrb	r6, [r4, #14]
d03e3484:	2308      	movs	r3, #8
d03e3486:	ea41 2707 	orr.w	r7, r1, r7, lsl #8
d03e348a:	7be5      	ldrb	r5, [r4, #15]
d03e348c:	21cf      	movs	r1, #207	; 0xcf
d03e348e:	2081      	movs	r0, #129	; 0x81
d03e3490:	ea47 4606 	orr.w	r6, r7, r6, lsl #16
d03e3494:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d03e3498:	686d      	ldr	r5, [r5, #4]
d03e349a:	686d      	ldr	r5, [r5, #4]
d03e349c:	47a8      	blx	r5
d03e349e:	7b25      	ldrb	r5, [r4, #12]
d03e34a0:	7b61      	ldrb	r1, [r4, #13]
d03e34a2:	201d      	movs	r0, #29
d03e34a4:	7ba2      	ldrb	r2, [r4, #14]
d03e34a6:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e34aa:	7be3      	ldrb	r3, [r4, #15]
d03e34ac:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e34b0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e34b4:	685b      	ldr	r3, [r3, #4]
d03e34b6:	68db      	ldr	r3, [r3, #12]
d03e34b8:	4798      	blx	r3
d03e34ba:	7b21      	ldrb	r1, [r4, #12]
d03e34bc:	7b67      	ldrb	r7, [r4, #13]
d03e34be:	2308      	movs	r3, #8
d03e34c0:	7ba6      	ldrb	r6, [r4, #14]
d03e34c2:	fa0f f289 	sxth.w	r2, r9
d03e34c6:	ea41 2707 	orr.w	r7, r1, r7, lsl #8
d03e34ca:	7be5      	ldrb	r5, [r4, #15]
d03e34cc:	21cf      	movs	r1, #207	; 0xcf
d03e34ce:	2081      	movs	r0, #129	; 0x81
d03e34d0:	ea47 4606 	orr.w	r6, r7, r6, lsl #16
d03e34d4:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d03e34d8:	686d      	ldr	r5, [r5, #4]
d03e34da:	686d      	ldr	r5, [r5, #4]
d03e34dc:	47a8      	blx	r5
d03e34de:	4a15      	ldr	r2, [pc, #84]	; (d03e3534 <ui_redraw_backbuffer+0x9d4>)
d03e34e0:	21be      	movs	r1, #190	; 0xbe
d03e34e2:	f44f 70b2 	mov.w	r0, #356	; 0x164
d03e34e6:	f7fe fcbf 	bl	d03e1e68 <ui_button_draw.constprop.0>
d03e34ea:	4a13      	ldr	r2, [pc, #76]	; (d03e3538 <ui_redraw_backbuffer+0x9d8>)
d03e34ec:	21be      	movs	r1, #190	; 0xbe
d03e34ee:	f44f 70c7 	mov.w	r0, #398	; 0x18e
d03e34f2:	f7fe fcb9 	bl	d03e1e68 <ui_button_draw.constprop.0>
d03e34f6:	7b25      	ldrb	r5, [r4, #12]
d03e34f8:	7b61      	ldrb	r1, [r4, #13]
d03e34fa:	2018      	movs	r0, #24
d03e34fc:	7ba2      	ldrb	r2, [r4, #14]
d03e34fe:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e3502:	7be3      	ldrb	r3, [r4, #15]
d03e3504:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3508:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e350c:	685b      	ldr	r3, [r3, #4]
d03e350e:	68db      	ldr	r3, [r3, #12]
d03e3510:	4798      	blx	r3
d03e3512:	7b22      	ldrb	r2, [r4, #12]
d03e3514:	7b66      	ldrb	r6, [r4, #13]
d03e3516:	21fc      	movs	r1, #252	; 0xfc
d03e3518:	7ba5      	ldrb	r5, [r4, #14]
d03e351a:	201a      	movs	r0, #26
d03e351c:	ea42 2606 	orr.w	r6, r2, r6, lsl #8
d03e3520:	7be3      	ldrb	r3, [r4, #15]
d03e3522:	4a06      	ldr	r2, [pc, #24]	; (d03e353c <ui_redraw_backbuffer+0x9dc>)
d03e3524:	ea46 4505 	orr.w	r5, r6, r5, lsl #16
d03e3528:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e352c:	685b      	ldr	r3, [r3, #4]
d03e352e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3530:	4798      	blx	r3
d03e3532:	e55e      	b.n	d03e2ff2 <ui_redraw_backbuffer+0x492>
d03e3534:	d03e7d44 	.word	0xd03e7d44
d03e3538:	d03e7d48 	.word	0xd03e7d48
d03e353c:	d03e7db8 	.word	0xd03e7db8
d03e3540:	489d      	ldr	r0, [pc, #628]	; (d03e37b8 <ui_redraw_backbuffer+0xc58>)
d03e3542:	23ba      	movs	r3, #186	; 0xba
d03e3544:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03e3548:	214e      	movs	r1, #78	; 0x4e
d03e354a:	9000      	str	r0, [sp, #0]
d03e354c:	2010      	movs	r0, #16
d03e354e:	f7fe f9db 	bl	d03e1908 <ui_panel>
d03e3552:	7b25      	ldrb	r5, [r4, #12]
d03e3554:	7b61      	ldrb	r1, [r4, #13]
d03e3556:	201e      	movs	r0, #30
d03e3558:	7ba2      	ldrb	r2, [r4, #14]
d03e355a:	ae06      	add	r6, sp, #24
d03e355c:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e3560:	7be3      	ldrb	r3, [r4, #15]
d03e3562:	4d96      	ldr	r5, [pc, #600]	; (d03e37bc <ui_redraw_backbuffer+0xc5c>)
d03e3564:	f04f 0994 	mov.w	r9, #148	; 0x94
d03e3568:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e356c:	4f94      	ldr	r7, [pc, #592]	; (d03e37c0 <ui_redraw_backbuffer+0xc60>)
d03e356e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3572:	685b      	ldr	r3, [r3, #4]
d03e3574:	68db      	ldr	r3, [r3, #12]
d03e3576:	4798      	blx	r3
d03e3578:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e357c:	7b62      	ldrb	r2, [r4, #13]
d03e357e:	2164      	movs	r1, #100	; 0x64
d03e3580:	7ba0      	ldrb	r0, [r4, #14]
d03e3582:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d03e3586:	7be3      	ldrb	r3, [r4, #15]
d03e3588:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d03e358c:	4a8d      	ldr	r2, [pc, #564]	; (d03e37c4 <ui_redraw_backbuffer+0xc64>)
d03e358e:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d03e3592:	2020      	movs	r0, #32
d03e3594:	685b      	ldr	r3, [r3, #4]
d03e3596:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3598:	4798      	blx	r3
d03e359a:	f895 c000 	ldrb.w	ip, [r5]
d03e359e:	4a8a      	ldr	r2, [pc, #552]	; (d03e37c8 <ui_redraw_backbuffer+0xc68>)
d03e35a0:	4630      	mov	r0, r6
d03e35a2:	4b8a      	ldr	r3, [pc, #552]	; (d03e37cc <ui_redraw_backbuffer+0xc6c>)
d03e35a4:	2160      	movs	r1, #96	; 0x60
d03e35a6:	f1bc 0f00 	cmp.w	ip, #0
d03e35aa:	bf08      	it	eq
d03e35ac:	4613      	moveq	r3, r2
d03e35ae:	4a88      	ldr	r2, [pc, #544]	; (d03e37d0 <ui_redraw_backbuffer+0xc70>)
d03e35b0:	f003 f962 	bl	d03e6878 <sniprintf>
d03e35b4:	7b20      	ldrb	r0, [r4, #12]
d03e35b6:	7b61      	ldrb	r1, [r4, #13]
d03e35b8:	7ba2      	ldrb	r2, [r4, #14]
d03e35ba:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e35be:	7be3      	ldrb	r3, [r4, #15]
d03e35c0:	7828      	ldrb	r0, [r5, #0]
d03e35c2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e35c6:	2800      	cmp	r0, #0
d03e35c8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e35cc:	bf14      	ite	ne
d03e35ce:	2009      	movne	r0, #9
d03e35d0:	200d      	moveq	r0, #13
d03e35d2:	685b      	ldr	r3, [r3, #4]
d03e35d4:	68db      	ldr	r3, [r3, #12]
d03e35d6:	4798      	blx	r3
d03e35d8:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e35dc:	7b61      	ldrb	r1, [r4, #13]
d03e35de:	4632      	mov	r2, r6
d03e35e0:	7ba0      	ldrb	r0, [r4, #14]
d03e35e2:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e35e6:	7be3      	ldrb	r3, [r4, #15]
d03e35e8:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d03e35ec:	217a      	movs	r1, #122	; 0x7a
d03e35ee:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d03e35f2:	2020      	movs	r0, #32
d03e35f4:	685b      	ldr	r3, [r3, #4]
d03e35f6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e35f8:	4798      	blx	r3
d03e35fa:	7829      	ldrb	r1, [r5, #0]
d03e35fc:	4875      	ldr	r0, [pc, #468]	; (d03e37d4 <ui_redraw_backbuffer+0xc74>)
d03e35fe:	2318      	movs	r3, #24
d03e3600:	4d75      	ldr	r5, [pc, #468]	; (d03e37d8 <ui_redraw_backbuffer+0xc78>)
d03e3602:	2256      	movs	r2, #86	; 0x56
d03e3604:	9101      	str	r1, [sp, #4]
d03e3606:	2900      	cmp	r1, #0
d03e3608:	bf08      	it	eq
d03e360a:	4605      	moveq	r5, r0
d03e360c:	215c      	movs	r1, #92	; 0x5c
d03e360e:	f44f 709d 	mov.w	r0, #314	; 0x13a
d03e3612:	9500      	str	r5, [sp, #0]
d03e3614:	f7fe f806 	bl	d03e1624 <ui_button_draw>
d03e3618:	883b      	ldrh	r3, [r7, #0]
d03e361a:	4630      	mov	r0, r6
d03e361c:	2160      	movs	r1, #96	; 0x60
d03e361e:	4a6f      	ldr	r2, [pc, #444]	; (d03e37dc <ui_redraw_backbuffer+0xc7c>)
d03e3620:	f003 f92a 	bl	d03e6878 <sniprintf>
d03e3624:	7b25      	ldrb	r5, [r4, #12]
d03e3626:	7b61      	ldrb	r1, [r4, #13]
d03e3628:	201e      	movs	r0, #30
d03e362a:	7ba2      	ldrb	r2, [r4, #14]
d03e362c:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e3630:	7be3      	ldrb	r3, [r4, #15]
d03e3632:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3636:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e363a:	685b      	ldr	r3, [r3, #4]
d03e363c:	68db      	ldr	r3, [r3, #12]
d03e363e:	4798      	blx	r3
d03e3640:	7b20      	ldrb	r0, [r4, #12]
d03e3642:	7b63      	ldrb	r3, [r4, #13]
d03e3644:	4632      	mov	r2, r6
d03e3646:	7ba5      	ldrb	r5, [r4, #14]
d03e3648:	4649      	mov	r1, r9
d03e364a:	ea40 2603 	orr.w	r6, r0, r3, lsl #8
d03e364e:	7be3      	ldrb	r3, [r4, #15]
d03e3650:	2020      	movs	r0, #32
d03e3652:	ea46 4505 	orr.w	r5, r6, r5, lsl #16
d03e3656:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e365a:	685b      	ldr	r3, [r3, #4]
d03e365c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e365e:	4798      	blx	r3
d03e3660:	7b25      	ldrb	r5, [r4, #12]
d03e3662:	7b61      	ldrb	r1, [r4, #13]
d03e3664:	201a      	movs	r0, #26
d03e3666:	7ba2      	ldrb	r2, [r4, #14]
d03e3668:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e366c:	7be3      	ldrb	r3, [r4, #15]
d03e366e:	f8b7 8000 	ldrh.w	r8, [r7]
d03e3672:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3676:	495a      	ldr	r1, [pc, #360]	; (d03e37e0 <ui_redraw_backbuffer+0xc80>)
d03e3678:	fb09 f808 	mul.w	r8, r9, r8
d03e367c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3680:	fba1 2808 	umull	r2, r8, r1, r8
d03e3684:	685b      	ldr	r3, [r3, #4]
d03e3686:	ea4f 1858 	mov.w	r8, r8, lsr #5
d03e368a:	68db      	ldr	r3, [r3, #12]
d03e368c:	4798      	blx	r3
d03e368e:	7b21      	ldrb	r1, [r4, #12]
d03e3690:	7b60      	ldrb	r0, [r4, #13]
d03e3692:	2296      	movs	r2, #150	; 0x96
d03e3694:	7ba6      	ldrb	r6, [r4, #14]
d03e3696:	230a      	movs	r3, #10
d03e3698:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d03e369c:	7be5      	ldrb	r5, [r4, #15]
d03e369e:	4611      	mov	r1, r2
d03e36a0:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d03e36a4:	208c      	movs	r0, #140	; 0x8c
d03e36a6:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d03e36aa:	686d      	ldr	r5, [r5, #4]
d03e36ac:	686d      	ldr	r5, [r5, #4]
d03e36ae:	47a8      	blx	r5
d03e36b0:	7b25      	ldrb	r5, [r4, #12]
d03e36b2:	7b61      	ldrb	r1, [r4, #13]
d03e36b4:	2011      	movs	r0, #17
d03e36b6:	7ba2      	ldrb	r2, [r4, #14]
d03e36b8:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e36bc:	7be3      	ldrb	r3, [r4, #15]
d03e36be:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e36c2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e36c6:	685b      	ldr	r3, [r3, #4]
d03e36c8:	68db      	ldr	r3, [r3, #12]
d03e36ca:	4798      	blx	r3
d03e36cc:	7b21      	ldrb	r1, [r4, #12]
d03e36ce:	7b67      	ldrb	r7, [r4, #13]
d03e36d0:	464a      	mov	r2, r9
d03e36d2:	7ba6      	ldrb	r6, [r4, #14]
d03e36d4:	2308      	movs	r3, #8
d03e36d6:	ea41 2707 	orr.w	r7, r1, r7, lsl #8
d03e36da:	7be5      	ldrb	r5, [r4, #15]
d03e36dc:	2197      	movs	r1, #151	; 0x97
d03e36de:	208d      	movs	r0, #141	; 0x8d
d03e36e0:	ea47 4606 	orr.w	r6, r7, r6, lsl #16
d03e36e4:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d03e36e8:	686d      	ldr	r5, [r5, #4]
d03e36ea:	686d      	ldr	r5, [r5, #4]
d03e36ec:	47a8      	blx	r5
d03e36ee:	7b25      	ldrb	r5, [r4, #12]
d03e36f0:	7b61      	ldrb	r1, [r4, #13]
d03e36f2:	201d      	movs	r0, #29
d03e36f4:	7ba2      	ldrb	r2, [r4, #14]
d03e36f6:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e36fa:	7be3      	ldrb	r3, [r4, #15]
d03e36fc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3700:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3704:	685b      	ldr	r3, [r3, #4]
d03e3706:	68db      	ldr	r3, [r3, #12]
d03e3708:	4798      	blx	r3
d03e370a:	7b21      	ldrb	r1, [r4, #12]
d03e370c:	7b67      	ldrb	r7, [r4, #13]
d03e370e:	2308      	movs	r3, #8
d03e3710:	7ba6      	ldrb	r6, [r4, #14]
d03e3712:	fa0f f288 	sxth.w	r2, r8
d03e3716:	ea41 2707 	orr.w	r7, r1, r7, lsl #8
d03e371a:	7be5      	ldrb	r5, [r4, #15]
d03e371c:	2197      	movs	r1, #151	; 0x97
d03e371e:	208d      	movs	r0, #141	; 0x8d
d03e3720:	ea47 4606 	orr.w	r6, r7, r6, lsl #16
d03e3724:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d03e3728:	686d      	ldr	r5, [r5, #4]
d03e372a:	686d      	ldr	r5, [r5, #4]
d03e372c:	47a8      	blx	r5
d03e372e:	4a2d      	ldr	r2, [pc, #180]	; (d03e37e4 <ui_redraw_backbuffer+0xc84>)
d03e3730:	218a      	movs	r1, #138	; 0x8a
d03e3732:	f44f 709e 	mov.w	r0, #316	; 0x13c
d03e3736:	f7fe fb97 	bl	d03e1e68 <ui_button_draw.constprop.0>
d03e373a:	4a2b      	ldr	r2, [pc, #172]	; (d03e37e8 <ui_redraw_backbuffer+0xc88>)
d03e373c:	218a      	movs	r1, #138	; 0x8a
d03e373e:	f44f 70b3 	mov.w	r0, #358	; 0x166
d03e3742:	f7fe fb91 	bl	d03e1e68 <ui_button_draw.constprop.0>
d03e3746:	7b25      	ldrb	r5, [r4, #12]
d03e3748:	7b61      	ldrb	r1, [r4, #13]
d03e374a:	2018      	movs	r0, #24
d03e374c:	7ba2      	ldrb	r2, [r4, #14]
d03e374e:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e3752:	7be3      	ldrb	r3, [r4, #15]
d03e3754:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3758:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e375c:	685b      	ldr	r3, [r3, #4]
d03e375e:	68db      	ldr	r3, [r3, #12]
d03e3760:	4798      	blx	r3
d03e3762:	7b22      	ldrb	r2, [r4, #12]
d03e3764:	7b66      	ldrb	r6, [r4, #13]
d03e3766:	21b8      	movs	r1, #184	; 0xb8
d03e3768:	7ba5      	ldrb	r5, [r4, #14]
d03e376a:	2020      	movs	r0, #32
d03e376c:	ea42 2606 	orr.w	r6, r2, r6, lsl #8
d03e3770:	7be3      	ldrb	r3, [r4, #15]
d03e3772:	4a1e      	ldr	r2, [pc, #120]	; (d03e37ec <ui_redraw_backbuffer+0xc8c>)
d03e3774:	ea46 4505 	orr.w	r5, r6, r5, lsl #16
d03e3778:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e377c:	685b      	ldr	r3, [r3, #4]
d03e377e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3780:	4798      	blx	r3
d03e3782:	7b22      	ldrb	r2, [r4, #12]
d03e3784:	7b66      	ldrb	r6, [r4, #13]
d03e3786:	21ca      	movs	r1, #202	; 0xca
d03e3788:	7ba5      	ldrb	r5, [r4, #14]
d03e378a:	2020      	movs	r0, #32
d03e378c:	ea42 2606 	orr.w	r6, r2, r6, lsl #8
d03e3790:	7be3      	ldrb	r3, [r4, #15]
d03e3792:	4a17      	ldr	r2, [pc, #92]	; (d03e37f0 <ui_redraw_backbuffer+0xc90>)
d03e3794:	ea46 4505 	orr.w	r5, r6, r5, lsl #16
d03e3798:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e379c:	685b      	ldr	r3, [r3, #4]
d03e379e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e37a0:	4798      	blx	r3
d03e37a2:	7b22      	ldrb	r2, [r4, #12]
d03e37a4:	7b66      	ldrb	r6, [r4, #13]
d03e37a6:	21e2      	movs	r1, #226	; 0xe2
d03e37a8:	7ba5      	ldrb	r5, [r4, #14]
d03e37aa:	2020      	movs	r0, #32
d03e37ac:	ea42 2606 	orr.w	r6, r2, r6, lsl #8
d03e37b0:	7be3      	ldrb	r3, [r4, #15]
d03e37b2:	4a10      	ldr	r2, [pc, #64]	; (d03e37f4 <ui_redraw_backbuffer+0xc94>)
d03e37b4:	e6b6      	b.n	d03e3524 <ui_redraw_backbuffer+0x9c4>
d03e37b6:	bf00      	nop
d03e37b8:	d03e7de4 	.word	0xd03e7de4
d03e37bc:	d03e8d88 	.word	0xd03e8d88
d03e37c0:	d03e8d8a 	.word	0xd03e8d8a
d03e37c4:	d03e7df8 	.word	0xd03e7df8
d03e37c8:	d03e7c9c 	.word	0xd03e7c9c
d03e37cc:	d03e7c94 	.word	0xd03e7c94
d03e37d0:	d03e7e24 	.word	0xd03e7e24
d03e37d4:	d03e7cac 	.word	0xd03e7cac
d03e37d8:	d03e7ca4 	.word	0xd03e7ca4
d03e37dc:	d03e7e30 	.word	0xd03e7e30
d03e37e0:	1b4e81b5 	.word	0x1b4e81b5
d03e37e4:	d03e7d44 	.word	0xd03e7d44
d03e37e8:	d03e7d48 	.word	0xd03e7d48
d03e37ec:	d03e7e40 	.word	0xd03e7e40
d03e37f0:	d03e7e64 	.word	0xd03e7e64
d03e37f4:	d03e7e84 	.word	0xd03e7e84
d03e37f8:	f8df 82d8 	ldr.w	r8, [pc, #728]	; d03e3ad4 <ui_redraw_backbuffer+0xf74>
d03e37fc:	23c4      	movs	r3, #196	; 0xc4
d03e37fe:	48a8      	ldr	r0, [pc, #672]	; (d03e3aa0 <ui_redraw_backbuffer+0xf40>)
d03e3800:	f44f 72e2 	mov.w	r2, #452	; 0x1c4
d03e3804:	4ea7      	ldr	r6, [pc, #668]	; (d03e3aa4 <ui_redraw_backbuffer+0xf44>)
d03e3806:	214c      	movs	r1, #76	; 0x4c
d03e3808:	f898 5000 	ldrb.w	r5, [r8]
d03e380c:	277c      	movs	r7, #124	; 0x7c
d03e380e:	9000      	str	r0, [sp, #0]
d03e3810:	200a      	movs	r0, #10
d03e3812:	9605      	str	r6, [sp, #20]
d03e3814:	f7fe f878 	bl	d03e1908 <ui_panel>
d03e3818:	f898 c000 	ldrb.w	ip, [r8]
d03e381c:	231a      	movs	r3, #26
d03e381e:	49a2      	ldr	r1, [pc, #648]	; (d03e3aa8 <ui_redraw_backbuffer+0xf48>)
d03e3820:	2260      	movs	r2, #96	; 0x60
d03e3822:	fabc fc8c 	clz	ip, ip
d03e3826:	4618      	mov	r0, r3
d03e3828:	9100      	str	r1, [sp, #0]
d03e382a:	2158      	movs	r1, #88	; 0x58
d03e382c:	ea4f 1c5c 	mov.w	ip, ip, lsr #5
d03e3830:	ae06      	add	r6, sp, #24
d03e3832:	00ad      	lsls	r5, r5, #2
d03e3834:	f8df b2a0 	ldr.w	fp, [pc, #672]	; d03e3ad8 <ui_redraw_backbuffer+0xf78>
d03e3838:	f8cd c004 	str.w	ip, [sp, #4]
d03e383c:	ee08 6a90 	vmov	s17, r6
d03e3840:	f7fd fef0 	bl	d03e1624 <ui_button_draw>
d03e3844:	f898 0000 	ldrb.w	r0, [r8]
d03e3848:	4998      	ldr	r1, [pc, #608]	; (d03e3aac <ui_redraw_backbuffer+0xf4c>)
d03e384a:	231a      	movs	r3, #26
d03e384c:	f1a0 0001 	sub.w	r0, r0, #1
d03e3850:	2260      	movs	r2, #96	; 0x60
d03e3852:	9100      	str	r1, [sp, #0]
d03e3854:	2158      	movs	r1, #88	; 0x58
d03e3856:	fab0 f080 	clz	r0, r0
d03e385a:	b2ed      	uxtb	r5, r5
d03e385c:	f8df a27c 	ldr.w	sl, [pc, #636]	; d03e3adc <ui_redraw_backbuffer+0xf7c>
d03e3860:	0940      	lsrs	r0, r0, #5
d03e3862:	9001      	str	r0, [sp, #4]
d03e3864:	2082      	movs	r0, #130	; 0x82
d03e3866:	f7fd fedd 	bl	d03e1624 <ui_button_draw>
d03e386a:	f898 0000 	ldrb.w	r0, [r8]
d03e386e:	4990      	ldr	r1, [pc, #576]	; (d03e3ab0 <ui_redraw_backbuffer+0xf50>)
d03e3870:	231a      	movs	r3, #26
d03e3872:	f1a0 0002 	sub.w	r0, r0, #2
d03e3876:	2260      	movs	r2, #96	; 0x60
d03e3878:	9100      	str	r1, [sp, #0]
d03e387a:	2158      	movs	r1, #88	; 0x58
d03e387c:	fab0 f080 	clz	r0, r0
d03e3880:	0940      	lsrs	r0, r0, #5
d03e3882:	9001      	str	r0, [sp, #4]
d03e3884:	20ea      	movs	r0, #234	; 0xea
d03e3886:	f7fd fecd 	bl	d03e1624 <ui_button_draw>
d03e388a:	f898 0000 	ldrb.w	r0, [r8]
d03e388e:	4989      	ldr	r1, [pc, #548]	; (d03e3ab4 <ui_redraw_backbuffer+0xf54>)
d03e3890:	231a      	movs	r3, #26
d03e3892:	f1a0 0003 	sub.w	r0, r0, #3
d03e3896:	2260      	movs	r2, #96	; 0x60
d03e3898:	9100      	str	r1, [sp, #0]
d03e389a:	2158      	movs	r1, #88	; 0x58
d03e389c:	fab0 f080 	clz	r0, r0
d03e38a0:	0940      	lsrs	r0, r0, #5
d03e38a2:	9001      	str	r0, [sp, #4]
d03e38a4:	f44f 70a9 	mov.w	r0, #338	; 0x152
d03e38a8:	f7fd febc 	bl	d03e1624 <ui_button_draw>
d03e38ac:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e38b0:	7b61      	ldrb	r1, [r4, #13]
d03e38b2:	201d      	movs	r0, #29
d03e38b4:	7ba2      	ldrb	r2, [r4, #14]
d03e38b6:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e38ba:	7be3      	ldrb	r3, [r4, #15]
d03e38bc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e38c0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e38c4:	685b      	ldr	r3, [r3, #4]
d03e38c6:	68db      	ldr	r3, [r3, #12]
d03e38c8:	4798      	blx	r3
d03e38ca:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e38ce:	7b62      	ldrb	r2, [r4, #13]
d03e38d0:	2174      	movs	r1, #116	; 0x74
d03e38d2:	7ba0      	ldrb	r0, [r4, #14]
d03e38d4:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d03e38d8:	7be3      	ldrb	r3, [r4, #15]
d03e38da:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d03e38de:	4a76      	ldr	r2, [pc, #472]	; (d03e3ab8 <ui_redraw_backbuffer+0xf58>)
d03e38e0:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d03e38e4:	2036      	movs	r0, #54	; 0x36
d03e38e6:	685b      	ldr	r3, [r3, #4]
d03e38e8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e38ea:	4798      	blx	r3
d03e38ec:	f89b 3000 	ldrb.w	r3, [fp]
d03e38f0:	f105 0901 	add.w	r9, r5, #1
d03e38f4:	9a05      	ldr	r2, [sp, #20]
d03e38f6:	42ab      	cmp	r3, r5
d03e38f8:	f812 8005 	ldrb.w	r8, [r2, r5]
d03e38fc:	d125      	bne.n	d03e394a <ui_redraw_backbuffer+0xdea>
d03e38fe:	f894 c00c 	ldrb.w	ip, [r4, #12]
d03e3902:	201c      	movs	r0, #28
d03e3904:	7b61      	ldrb	r1, [r4, #13]
d03e3906:	7ba2      	ldrb	r2, [r4, #14]
d03e3908:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e390c:	7be3      	ldrb	r3, [r4, #15]
d03e390e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3912:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3916:	685b      	ldr	r3, [r3, #4]
d03e3918:	68db      	ldr	r3, [r3, #12]
d03e391a:	4798      	blx	r3
d03e391c:	7b22      	ldrb	r2, [r4, #12]
d03e391e:	7b60      	ldrb	r0, [r4, #13]
d03e3920:	1f79      	subs	r1, r7, #5
d03e3922:	f894 e00e 	ldrb.w	lr, [r4, #14]
d03e3926:	2320      	movs	r3, #32
d03e3928:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d03e392c:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03e3930:	b209      	sxth	r1, r1
d03e3932:	f44f 72d2 	mov.w	r2, #420	; 0x1a4
d03e3936:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d03e393a:	2018      	movs	r0, #24
d03e393c:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d03e3940:	f8dc c004 	ldr.w	ip, [ip, #4]
d03e3944:	f8dc 6004 	ldr.w	r6, [ip, #4]
d03e3948:	47b0      	blx	r6
d03e394a:	f1b8 0f80 	cmp.w	r8, #128	; 0x80
d03e394e:	4b5b      	ldr	r3, [pc, #364]	; (d03e3abc <ui_redraw_backbuffer+0xf5c>)
d03e3950:	d802      	bhi.n	d03e3958 <ui_redraw_backbuffer+0xdf8>
d03e3952:	4b5b      	ldr	r3, [pc, #364]	; (d03e3ac0 <ui_redraw_backbuffer+0xf60>)
d03e3954:	f853 3028 	ldr.w	r3, [r3, r8, lsl #2]
d03e3958:	4652      	mov	r2, sl
d03e395a:	2160      	movs	r1, #96	; 0x60
d03e395c:	9301      	str	r3, [sp, #4]
d03e395e:	ee18 0a90 	vmov	r0, s17
d03e3962:	464b      	mov	r3, r9
d03e3964:	f8cd 8000 	str.w	r8, [sp]
d03e3968:	f002 ff86 	bl	d03e6878 <sniprintf>
d03e396c:	7b20      	ldrb	r0, [r4, #12]
d03e396e:	7b61      	ldrb	r1, [r4, #13]
d03e3970:	2d09      	cmp	r5, #9
d03e3972:	7ba2      	ldrb	r2, [r4, #14]
d03e3974:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e3978:	7be3      	ldrb	r3, [r4, #15]
d03e397a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e397e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3982:	685b      	ldr	r3, [r3, #4]
d03e3984:	68db      	ldr	r3, [r3, #12]
d03e3986:	d03c      	beq.n	d03e3a02 <ui_redraw_backbuffer+0xea2>
d03e3988:	f89b 0000 	ldrb.w	r0, [fp]
d03e398c:	42a8      	cmp	r0, r5
d03e398e:	bf0c      	ite	eq
d03e3990:	200f      	moveq	r0, #15
d03e3992:	2019      	movne	r0, #25
d03e3994:	4798      	blx	r3
d03e3996:	7b20      	ldrb	r0, [r4, #12]
d03e3998:	f894 e00d 	ldrb.w	lr, [r4, #13]
d03e399c:	4639      	mov	r1, r7
d03e399e:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03e39a2:	ee18 2a90 	vmov	r2, s17
d03e39a6:	ea40 2e0e 	orr.w	lr, r0, lr, lsl #8
d03e39aa:	7be3      	ldrb	r3, [r4, #15]
d03e39ac:	2034      	movs	r0, #52	; 0x34
d03e39ae:	f04f 0800 	mov.w	r8, #0
d03e39b2:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d03e39b6:	fa5f f589 	uxtb.w	r5, r9
d03e39ba:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d03e39be:	685b      	ldr	r3, [r3, #4]
d03e39c0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e39c2:	4798      	blx	r3
d03e39c4:	1f39      	subs	r1, r7, #4
d03e39c6:	4b3f      	ldr	r3, [pc, #252]	; (d03e3ac4 <ui_redraw_backbuffer+0xf64>)
d03e39c8:	222a      	movs	r2, #42	; 0x2a
d03e39ca:	b209      	sxth	r1, r1
d03e39cc:	f44f 70ab 	mov.w	r0, #342	; 0x156
d03e39d0:	9300      	str	r3, [sp, #0]
d03e39d2:	231e      	movs	r3, #30
d03e39d4:	f8cd 8004 	str.w	r8, [sp, #4]
d03e39d8:	3724      	adds	r7, #36	; 0x24
d03e39da:	9104      	str	r1, [sp, #16]
d03e39dc:	f7fd fe22 	bl	d03e1624 <ui_button_draw>
d03e39e0:	4a39      	ldr	r2, [pc, #228]	; (d03e3ac8 <ui_redraw_backbuffer+0xf68>)
d03e39e2:	231e      	movs	r3, #30
d03e39e4:	9904      	ldr	r1, [sp, #16]
d03e39e6:	f44f 70c6 	mov.w	r0, #396	; 0x18c
d03e39ea:	9200      	str	r2, [sp, #0]
d03e39ec:	222a      	movs	r2, #42	; 0x2a
d03e39ee:	f8cd 8004 	str.w	r8, [sp, #4]
d03e39f2:	f7fd fe17 	bl	d03e1624 <ui_button_draw>
d03e39f6:	f5b7 7f86 	cmp.w	r7, #268	; 0x10c
d03e39fa:	f47f af77 	bne.w	d03e38ec <ui_redraw_backbuffer+0xd8c>
d03e39fe:	f7ff baf8 	b.w	d03e2ff2 <ui_redraw_backbuffer+0x492>
d03e3a02:	200e      	movs	r0, #14
d03e3a04:	e7c6      	b.n	d03e3994 <ui_redraw_backbuffer+0xe34>
d03e3a06:	4a2d      	ldr	r2, [pc, #180]	; (d03e3abc <ui_redraw_backbuffer+0xf5c>)
d03e3a08:	f7ff b9e3 	b.w	d03e2dd2 <ui_redraw_backbuffer+0x272>
d03e3a0c:	7b21      	ldrb	r1, [r4, #12]
d03e3a0e:	2018      	movs	r0, #24
d03e3a10:	7b63      	ldrb	r3, [r4, #13]
d03e3a12:	7ba2      	ldrb	r2, [r4, #14]
d03e3a14:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e3a18:	7be3      	ldrb	r3, [r4, #15]
d03e3a1a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3a1e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3a22:	685b      	ldr	r3, [r3, #4]
d03e3a24:	68db      	ldr	r3, [r3, #12]
d03e3a26:	4798      	blx	r3
d03e3a28:	7b22      	ldrb	r2, [r4, #12]
d03e3a2a:	7b63      	ldrb	r3, [r4, #13]
d03e3a2c:	217e      	movs	r1, #126	; 0x7e
d03e3a2e:	7ba5      	ldrb	r5, [r4, #14]
d03e3a30:	201e      	movs	r0, #30
d03e3a32:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03e3a36:	7be3      	ldrb	r3, [r4, #15]
d03e3a38:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d03e3a3c:	4a23      	ldr	r2, [pc, #140]	; (d03e3acc <ui_redraw_backbuffer+0xf6c>)
d03e3a3e:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e3a42:	685b      	ldr	r3, [r3, #4]
d03e3a44:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3a46:	4798      	blx	r3
d03e3a48:	f7ff bad3 	b.w	d03e2ff2 <ui_redraw_backbuffer+0x492>
d03e3a4c:	7b21      	ldrb	r1, [r4, #12]
d03e3a4e:	200d      	movs	r0, #13
d03e3a50:	7b63      	ldrb	r3, [r4, #13]
d03e3a52:	7ba2      	ldrb	r2, [r4, #14]
d03e3a54:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e3a58:	7be3      	ldrb	r3, [r4, #15]
d03e3a5a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e3a5e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e3a62:	685b      	ldr	r3, [r3, #4]
d03e3a64:	68db      	ldr	r3, [r3, #12]
d03e3a66:	4798      	blx	r3
d03e3a68:	7b22      	ldrb	r2, [r4, #12]
d03e3a6a:	7b63      	ldrb	r3, [r4, #13]
d03e3a6c:	217e      	movs	r1, #126	; 0x7e
d03e3a6e:	7ba5      	ldrb	r5, [r4, #14]
d03e3a70:	201e      	movs	r0, #30
d03e3a72:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03e3a76:	7be3      	ldrb	r3, [r4, #15]
d03e3a78:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d03e3a7c:	4a14      	ldr	r2, [pc, #80]	; (d03e3ad0 <ui_redraw_backbuffer+0xf70>)
d03e3a7e:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e3a82:	685b      	ldr	r3, [r3, #4]
d03e3a84:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3a86:	4798      	blx	r3
d03e3a88:	f7ff bab3 	b.w	d03e2ff2 <ui_redraw_backbuffer+0x492>
d03e3a8c:	2200      	movs	r2, #0
d03e3a8e:	f7ff b9fa 	b.w	d03e2e86 <ui_redraw_backbuffer+0x326>
d03e3a92:	460a      	mov	r2, r1
d03e3a94:	f7ff b9f7 	b.w	d03e2e86 <ui_redraw_backbuffer+0x326>
d03e3a98:	2259      	movs	r2, #89	; 0x59
d03e3a9a:	f7ff b9f4 	b.w	d03e2e86 <ui_redraw_backbuffer+0x326>
d03e3a9e:	bf00      	nop
d03e3aa0:	d03e7cdc 	.word	0xd03e7cdc
d03e3aa4:	d03e8d64 	.word	0xd03e8d64
d03e3aa8:	d03e7cf0 	.word	0xd03e7cf0
d03e3aac:	d03e7cf8 	.word	0xd03e7cf8
d03e3ab0:	d03e7d00 	.word	0xd03e7d00
d03e3ab4:	d03e7d08 	.word	0xd03e7d08
d03e3ab8:	d03e7d14 	.word	0xd03e7d14
d03e3abc:	d03e7bd8 	.word	0xd03e7bd8
d03e3ac0:	d03e8360 	.word	0xd03e8360
d03e3ac4:	d03e7d44 	.word	0xd03e7d44
d03e3ac8:	d03e7d48 	.word	0xd03e7d48
d03e3acc:	d03e7ec8 	.word	0xd03e7ec8
d03e3ad0:	d03e7ee8 	.word	0xd03e7ee8
d03e3ad4:	d03e8ff0 	.word	0xd03e8ff0
d03e3ad8:	d03e8ffb 	.word	0xd03e8ffb
d03e3adc:	d03e7d2c 	.word	0xd03e7d2c

d03e3ae0 <midi_rx_byte>:
d03e3ae0:	0603      	lsls	r3, r0, #24
d03e3ae2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e3ae6:	d447      	bmi.n	d03e3b78 <midi_rx_byte+0x98>
d03e3ae8:	4ba8      	ldr	r3, [pc, #672]	; (d03e3d8c <midi_rx_byte+0x2ac>)
d03e3aea:	781b      	ldrb	r3, [r3, #0]
d03e3aec:	2b00      	cmp	r3, #0
d03e3aee:	d141      	bne.n	d03e3b74 <midi_rx_byte+0x94>
d03e3af0:	49a7      	ldr	r1, [pc, #668]	; (d03e3d90 <midi_rx_byte+0x2b0>)
d03e3af2:	780b      	ldrb	r3, [r1, #0]
d03e3af4:	2b00      	cmp	r3, #0
d03e3af6:	d059      	beq.n	d03e3bac <midi_rx_byte+0xcc>
d03e3af8:	4da6      	ldr	r5, [pc, #664]	; (d03e3d94 <midi_rx_byte+0x2b4>)
d03e3afa:	782a      	ldrb	r2, [r5, #0]
d03e3afc:	2a01      	cmp	r2, #1
d03e3afe:	f240 80d8 	bls.w	d03e3cb2 <midi_rx_byte+0x1d2>
d03e3b02:	48a5      	ldr	r0, [pc, #660]	; (d03e3d98 <midi_rx_byte+0x2b8>)
d03e3b04:	7804      	ldrb	r4, [r0, #0]
d03e3b06:	4294      	cmp	r4, r2
d03e3b08:	d834      	bhi.n	d03e3b74 <midi_rx_byte+0x94>
d03e3b0a:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
d03e3b0e:	f003 030f 	and.w	r3, r3, #15
d03e3b12:	2ab0      	cmp	r2, #176	; 0xb0
d03e3b14:	f000 80d1 	beq.w	d03e3cba <midi_rx_byte+0x1da>
d03e3b18:	d964      	bls.n	d03e3be4 <midi_rx_byte+0x104>
d03e3b1a:	2ac0      	cmp	r2, #192	; 0xc0
d03e3b1c:	f000 8112 	beq.w	d03e3d44 <midi_rx_byte+0x264>
d03e3b20:	2ae0      	cmp	r2, #224	; 0xe0
d03e3b22:	d122      	bne.n	d03e3b6a <midi_rx_byte+0x8a>
d03e3b24:	4c9d      	ldr	r4, [pc, #628]	; (d03e3d9c <midi_rx_byte+0x2bc>)
d03e3b26:	4e9e      	ldr	r6, [pc, #632]	; (d03e3da0 <midi_rx_byte+0x2c0>)
d03e3b28:	7822      	ldrb	r2, [r4, #0]
d03e3b2a:	7836      	ldrb	r6, [r6, #0]
d03e3b2c:	3201      	adds	r2, #1
d03e3b2e:	489d      	ldr	r0, [pc, #628]	; (d03e3da4 <midi_rx_byte+0x2c4>)
d03e3b30:	f002 027f 	and.w	r2, r2, #127	; 0x7f
d03e3b34:	f890 c000 	ldrb.w	ip, [r0]
d03e3b38:	7847      	ldrb	r7, [r0, #1]
d03e3b3a:	42b2      	cmp	r2, r6
d03e3b3c:	f000 80b4 	beq.w	d03e3ca8 <midi_rx_byte+0x1c8>
d03e3b40:	7826      	ldrb	r6, [r4, #0]
d03e3b42:	f04f 0e03 	mov.w	lr, #3
d03e3b46:	4898      	ldr	r0, [pc, #608]	; (d03e3da8 <midi_rx_byte+0x2c8>)
d03e3b48:	b2f6      	uxtb	r6, r6
d03e3b4a:	f800 e026 	strb.w	lr, [r0, r6, lsl #2]
d03e3b4e:	7826      	ldrb	r6, [r4, #0]
d03e3b50:	eb00 0686 	add.w	r6, r0, r6, lsl #2
d03e3b54:	7073      	strb	r3, [r6, #1]
d03e3b56:	7823      	ldrb	r3, [r4, #0]
d03e3b58:	eb00 0383 	add.w	r3, r0, r3, lsl #2
d03e3b5c:	f883 c002 	strb.w	ip, [r3, #2]
d03e3b60:	7823      	ldrb	r3, [r4, #0]
d03e3b62:	eb00 0083 	add.w	r0, r0, r3, lsl #2
d03e3b66:	70c7      	strb	r7, [r0, #3]
d03e3b68:	7022      	strb	r2, [r4, #0]
d03e3b6a:	4b90      	ldr	r3, [pc, #576]	; (d03e3dac <midi_rx_byte+0x2cc>)
d03e3b6c:	2200      	movs	r2, #0
d03e3b6e:	781b      	ldrb	r3, [r3, #0]
d03e3b70:	702a      	strb	r2, [r5, #0]
d03e3b72:	700b      	strb	r3, [r1, #0]
d03e3b74:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03e3b78:	28f7      	cmp	r0, #247	; 0xf7
d03e3b7a:	d8fb      	bhi.n	d03e3b74 <midi_rx_byte+0x94>
d03e3b7c:	28f0      	cmp	r0, #240	; 0xf0
d03e3b7e:	d067      	beq.n	d03e3c50 <midi_rx_byte+0x170>
d03e3b80:	28f7      	cmp	r0, #247	; 0xf7
d03e3b82:	d026      	beq.n	d03e3bd2 <midi_rx_byte+0xf2>
d03e3b84:	4a81      	ldr	r2, [pc, #516]	; (d03e3d8c <midi_rx_byte+0x2ac>)
d03e3b86:	2300      	movs	r3, #0
d03e3b88:	28ef      	cmp	r0, #239	; 0xef
d03e3b8a:	7013      	strb	r3, [r2, #0]
d03e3b8c:	d85e      	bhi.n	d03e3c4c <midi_rx_byte+0x16c>
d03e3b8e:	f000 04e0 	and.w	r4, r0, #224	; 0xe0
d03e3b92:	4a86      	ldr	r2, [pc, #536]	; (d03e3dac <midi_rx_byte+0x2cc>)
d03e3b94:	4980      	ldr	r1, [pc, #512]	; (d03e3d98 <midi_rx_byte+0x2b8>)
d03e3b96:	2cc0      	cmp	r4, #192	; 0xc0
d03e3b98:	7010      	strb	r0, [r2, #0]
d03e3b9a:	4d7d      	ldr	r5, [pc, #500]	; (d03e3d90 <midi_rx_byte+0x2b0>)
d03e3b9c:	bf0c      	ite	eq
d03e3b9e:	2401      	moveq	r4, #1
d03e3ba0:	2402      	movne	r4, #2
d03e3ba2:	4a7c      	ldr	r2, [pc, #496]	; (d03e3d94 <midi_rx_byte+0x2b4>)
d03e3ba4:	7028      	strb	r0, [r5, #0]
d03e3ba6:	700c      	strb	r4, [r1, #0]
d03e3ba8:	7013      	strb	r3, [r2, #0]
d03e3baa:	e7e3      	b.n	d03e3b74 <midi_rx_byte+0x94>
d03e3bac:	4a7f      	ldr	r2, [pc, #508]	; (d03e3dac <midi_rx_byte+0x2cc>)
d03e3bae:	7812      	ldrb	r2, [r2, #0]
d03e3bb0:	f002 04e0 	and.w	r4, r2, #224	; 0xe0
d03e3bb4:	700a      	strb	r2, [r1, #0]
d03e3bb6:	2cc0      	cmp	r4, #192	; 0xc0
d03e3bb8:	d13e      	bne.n	d03e3c38 <midi_rx_byte+0x158>
d03e3bba:	4d77      	ldr	r5, [pc, #476]	; (d03e3d98 <midi_rx_byte+0x2b8>)
d03e3bbc:	2401      	movs	r4, #1
d03e3bbe:	461e      	mov	r6, r3
d03e3bc0:	4613      	mov	r3, r2
d03e3bc2:	702c      	strb	r4, [r5, #0]
d03e3bc4:	4d73      	ldr	r5, [pc, #460]	; (d03e3d94 <midi_rx_byte+0x2b4>)
d03e3bc6:	1c72      	adds	r2, r6, #1
d03e3bc8:	4f76      	ldr	r7, [pc, #472]	; (d03e3da4 <midi_rx_byte+0x2c4>)
d03e3bca:	b2d2      	uxtb	r2, r2
d03e3bcc:	55b8      	strb	r0, [r7, r6]
d03e3bce:	702a      	strb	r2, [r5, #0]
d03e3bd0:	e799      	b.n	d03e3b06 <midi_rx_byte+0x26>
d03e3bd2:	486e      	ldr	r0, [pc, #440]	; (d03e3d8c <midi_rx_byte+0x2ac>)
d03e3bd4:	2300      	movs	r3, #0
d03e3bd6:	496e      	ldr	r1, [pc, #440]	; (d03e3d90 <midi_rx_byte+0x2b0>)
d03e3bd8:	4a6e      	ldr	r2, [pc, #440]	; (d03e3d94 <midi_rx_byte+0x2b4>)
d03e3bda:	7003      	strb	r3, [r0, #0]
d03e3bdc:	700b      	strb	r3, [r1, #0]
d03e3bde:	7013      	strb	r3, [r2, #0]
d03e3be0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03e3be4:	2a80      	cmp	r2, #128	; 0x80
d03e3be6:	f000 8096 	beq.w	d03e3d16 <midi_rx_byte+0x236>
d03e3bea:	2a90      	cmp	r2, #144	; 0x90
d03e3bec:	d1bd      	bne.n	d03e3b6a <midi_rx_byte+0x8a>
d03e3bee:	4c6d      	ldr	r4, [pc, #436]	; (d03e3da4 <midi_rx_byte+0x2c4>)
d03e3bf0:	7867      	ldrb	r7, [r4, #1]
d03e3bf2:	2f00      	cmp	r7, #0
d03e3bf4:	d137      	bne.n	d03e3c66 <midi_rx_byte+0x186>
d03e3bf6:	4a69      	ldr	r2, [pc, #420]	; (d03e3d9c <midi_rx_byte+0x2bc>)
d03e3bf8:	4e69      	ldr	r6, [pc, #420]	; (d03e3da0 <midi_rx_byte+0x2c0>)
d03e3bfa:	7810      	ldrb	r0, [r2, #0]
d03e3bfc:	7837      	ldrb	r7, [r6, #0]
d03e3bfe:	3001      	adds	r0, #1
d03e3c00:	f894 c000 	ldrb.w	ip, [r4]
d03e3c04:	f000 007f 	and.w	r0, r0, #127	; 0x7f
d03e3c08:	42b8      	cmp	r0, r7
d03e3c0a:	f000 8101 	beq.w	d03e3e10 <midi_rx_byte+0x330>
d03e3c0e:	7816      	ldrb	r6, [r2, #0]
d03e3c10:	2700      	movs	r7, #0
d03e3c12:	4c65      	ldr	r4, [pc, #404]	; (d03e3da8 <midi_rx_byte+0x2c8>)
d03e3c14:	b2f6      	uxtb	r6, r6
d03e3c16:	f804 7026 	strb.w	r7, [r4, r6, lsl #2]
d03e3c1a:	7816      	ldrb	r6, [r2, #0]
d03e3c1c:	eb04 0686 	add.w	r6, r4, r6, lsl #2
d03e3c20:	7073      	strb	r3, [r6, #1]
d03e3c22:	7813      	ldrb	r3, [r2, #0]
d03e3c24:	eb04 0383 	add.w	r3, r4, r3, lsl #2
d03e3c28:	f883 c002 	strb.w	ip, [r3, #2]
d03e3c2c:	7813      	ldrb	r3, [r2, #0]
d03e3c2e:	eb04 0483 	add.w	r4, r4, r3, lsl #2
d03e3c32:	70e7      	strb	r7, [r4, #3]
d03e3c34:	7010      	strb	r0, [r2, #0]
d03e3c36:	e798      	b.n	d03e3b6a <midi_rx_byte+0x8a>
d03e3c38:	4e57      	ldr	r6, [pc, #348]	; (d03e3d98 <midi_rx_byte+0x2b8>)
d03e3c3a:	2402      	movs	r4, #2
d03e3c3c:	4d55      	ldr	r5, [pc, #340]	; (d03e3d94 <midi_rx_byte+0x2b4>)
d03e3c3e:	7034      	strb	r4, [r6, #0]
d03e3c40:	702b      	strb	r3, [r5, #0]
d03e3c42:	2a00      	cmp	r2, #0
d03e3c44:	d096      	beq.n	d03e3b74 <midi_rx_byte+0x94>
d03e3c46:	461e      	mov	r6, r3
d03e3c48:	4613      	mov	r3, r2
d03e3c4a:	e7bc      	b.n	d03e3bc6 <midi_rx_byte+0xe6>
d03e3c4c:	4857      	ldr	r0, [pc, #348]	; (d03e3dac <midi_rx_byte+0x2cc>)
d03e3c4e:	e7c2      	b.n	d03e3bd6 <midi_rx_byte+0xf6>
d03e3c50:	2300      	movs	r3, #0
d03e3c52:	4c4e      	ldr	r4, [pc, #312]	; (d03e3d8c <midi_rx_byte+0x2ac>)
d03e3c54:	2501      	movs	r5, #1
d03e3c56:	4855      	ldr	r0, [pc, #340]	; (d03e3dac <midi_rx_byte+0x2cc>)
d03e3c58:	494d      	ldr	r1, [pc, #308]	; (d03e3d90 <midi_rx_byte+0x2b0>)
d03e3c5a:	4a4e      	ldr	r2, [pc, #312]	; (d03e3d94 <midi_rx_byte+0x2b4>)
d03e3c5c:	7025      	strb	r5, [r4, #0]
d03e3c5e:	7003      	strb	r3, [r0, #0]
d03e3c60:	700b      	strb	r3, [r1, #0]
d03e3c62:	7013      	strb	r3, [r2, #0]
d03e3c64:	e786      	b.n	d03e3b74 <midi_rx_byte+0x94>
d03e3c66:	4e4d      	ldr	r6, [pc, #308]	; (d03e3d9c <midi_rx_byte+0x2bc>)
d03e3c68:	484d      	ldr	r0, [pc, #308]	; (d03e3da0 <midi_rx_byte+0x2c0>)
d03e3c6a:	7832      	ldrb	r2, [r6, #0]
d03e3c6c:	7800      	ldrb	r0, [r0, #0]
d03e3c6e:	3201      	adds	r2, #1
d03e3c70:	f894 c000 	ldrb.w	ip, [r4]
d03e3c74:	f002 027f 	and.w	r2, r2, #127	; 0x7f
d03e3c78:	4282      	cmp	r2, r0
d03e3c7a:	d015      	beq.n	d03e3ca8 <midi_rx_byte+0x1c8>
d03e3c7c:	7834      	ldrb	r4, [r6, #0]
d03e3c7e:	f04f 0e01 	mov.w	lr, #1
d03e3c82:	4849      	ldr	r0, [pc, #292]	; (d03e3da8 <midi_rx_byte+0x2c8>)
d03e3c84:	b2e4      	uxtb	r4, r4
d03e3c86:	f800 e024 	strb.w	lr, [r0, r4, lsl #2]
d03e3c8a:	7834      	ldrb	r4, [r6, #0]
d03e3c8c:	eb00 0484 	add.w	r4, r0, r4, lsl #2
d03e3c90:	7063      	strb	r3, [r4, #1]
d03e3c92:	7833      	ldrb	r3, [r6, #0]
d03e3c94:	eb00 0383 	add.w	r3, r0, r3, lsl #2
d03e3c98:	f883 c002 	strb.w	ip, [r3, #2]
d03e3c9c:	7833      	ldrb	r3, [r6, #0]
d03e3c9e:	eb00 0083 	add.w	r0, r0, r3, lsl #2
d03e3ca2:	70c7      	strb	r7, [r0, #3]
d03e3ca4:	7032      	strb	r2, [r6, #0]
d03e3ca6:	e760      	b.n	d03e3b6a <midi_rx_byte+0x8a>
d03e3ca8:	4a41      	ldr	r2, [pc, #260]	; (d03e3db0 <midi_rx_byte+0x2d0>)
d03e3caa:	6813      	ldr	r3, [r2, #0]
d03e3cac:	3301      	adds	r3, #1
d03e3cae:	6013      	str	r3, [r2, #0]
d03e3cb0:	e75b      	b.n	d03e3b6a <midi_rx_byte+0x8a>
d03e3cb2:	4c39      	ldr	r4, [pc, #228]	; (d03e3d98 <midi_rx_byte+0x2b8>)
d03e3cb4:	4616      	mov	r6, r2
d03e3cb6:	7824      	ldrb	r4, [r4, #0]
d03e3cb8:	e785      	b.n	d03e3bc6 <midi_rx_byte+0xe6>
d03e3cba:	4c3a      	ldr	r4, [pc, #232]	; (d03e3da4 <midi_rx_byte+0x2c4>)
d03e3cbc:	7822      	ldrb	r2, [r4, #0]
d03e3cbe:	2a78      	cmp	r2, #120	; 0x78
d03e3cc0:	d078      	beq.n	d03e3db4 <midi_rx_byte+0x2d4>
d03e3cc2:	2a7b      	cmp	r2, #123	; 0x7b
d03e3cc4:	d076      	beq.n	d03e3db4 <midi_rx_byte+0x2d4>
d03e3cc6:	2a0b      	cmp	r2, #11
d03e3cc8:	bf18      	it	ne
d03e3cca:	2a07      	cmpne	r2, #7
d03e3ccc:	d002      	beq.n	d03e3cd4 <midi_rx_byte+0x1f4>
d03e3cce:	2a79      	cmp	r2, #121	; 0x79
d03e3cd0:	f47f af4b 	bne.w	d03e3b6a <midi_rx_byte+0x8a>
d03e3cd4:	4e31      	ldr	r6, [pc, #196]	; (d03e3d9c <midi_rx_byte+0x2bc>)
d03e3cd6:	4f32      	ldr	r7, [pc, #200]	; (d03e3da0 <midi_rx_byte+0x2c0>)
d03e3cd8:	7830      	ldrb	r0, [r6, #0]
d03e3cda:	783f      	ldrb	r7, [r7, #0]
d03e3cdc:	3001      	adds	r0, #1
d03e3cde:	f894 c001 	ldrb.w	ip, [r4, #1]
d03e3ce2:	f000 007f 	and.w	r0, r0, #127	; 0x7f
d03e3ce6:	42b8      	cmp	r0, r7
d03e3ce8:	d0de      	beq.n	d03e3ca8 <midi_rx_byte+0x1c8>
d03e3cea:	7837      	ldrb	r7, [r6, #0]
d03e3cec:	f04f 0e04 	mov.w	lr, #4
d03e3cf0:	4c2d      	ldr	r4, [pc, #180]	; (d03e3da8 <midi_rx_byte+0x2c8>)
d03e3cf2:	b2ff      	uxtb	r7, r7
d03e3cf4:	f804 e027 	strb.w	lr, [r4, r7, lsl #2]
d03e3cf8:	7837      	ldrb	r7, [r6, #0]
d03e3cfa:	eb04 0787 	add.w	r7, r4, r7, lsl #2
d03e3cfe:	707b      	strb	r3, [r7, #1]
d03e3d00:	7833      	ldrb	r3, [r6, #0]
d03e3d02:	eb04 0383 	add.w	r3, r4, r3, lsl #2
d03e3d06:	709a      	strb	r2, [r3, #2]
d03e3d08:	7833      	ldrb	r3, [r6, #0]
d03e3d0a:	eb04 0483 	add.w	r4, r4, r3, lsl #2
d03e3d0e:	f884 c003 	strb.w	ip, [r4, #3]
d03e3d12:	7030      	strb	r0, [r6, #0]
d03e3d14:	e729      	b.n	d03e3b6a <midi_rx_byte+0x8a>
d03e3d16:	4a21      	ldr	r2, [pc, #132]	; (d03e3d9c <midi_rx_byte+0x2bc>)
d03e3d18:	f8df e084 	ldr.w	lr, [pc, #132]	; d03e3da0 <midi_rx_byte+0x2c0>
d03e3d1c:	7810      	ldrb	r0, [r2, #0]
d03e3d1e:	f89e 6000 	ldrb.w	r6, [lr]
d03e3d22:	3001      	adds	r0, #1
d03e3d24:	4c1f      	ldr	r4, [pc, #124]	; (d03e3da4 <midi_rx_byte+0x2c4>)
d03e3d26:	f000 007f 	and.w	r0, r0, #127	; 0x7f
d03e3d2a:	f894 c000 	ldrb.w	ip, [r4]
d03e3d2e:	7867      	ldrb	r7, [r4, #1]
d03e3d30:	42b0      	cmp	r0, r6
d03e3d32:	d05e      	beq.n	d03e3df2 <midi_rx_byte+0x312>
d03e3d34:	7816      	ldrb	r6, [r2, #0]
d03e3d36:	f04f 0e00 	mov.w	lr, #0
d03e3d3a:	4c1b      	ldr	r4, [pc, #108]	; (d03e3da8 <midi_rx_byte+0x2c8>)
d03e3d3c:	b2f6      	uxtb	r6, r6
d03e3d3e:	f804 e026 	strb.w	lr, [r4, r6, lsl #2]
d03e3d42:	e76a      	b.n	d03e3c1a <midi_rx_byte+0x13a>
d03e3d44:	4c15      	ldr	r4, [pc, #84]	; (d03e3d9c <midi_rx_byte+0x2bc>)
d03e3d46:	4816      	ldr	r0, [pc, #88]	; (d03e3da0 <midi_rx_byte+0x2c0>)
d03e3d48:	7822      	ldrb	r2, [r4, #0]
d03e3d4a:	7800      	ldrb	r0, [r0, #0]
d03e3d4c:	3201      	adds	r2, #1
d03e3d4e:	4e15      	ldr	r6, [pc, #84]	; (d03e3da4 <midi_rx_byte+0x2c4>)
d03e3d50:	f002 027f 	and.w	r2, r2, #127	; 0x7f
d03e3d54:	7837      	ldrb	r7, [r6, #0]
d03e3d56:	4282      	cmp	r2, r0
d03e3d58:	d0a6      	beq.n	d03e3ca8 <midi_rx_byte+0x1c8>
d03e3d5a:	7826      	ldrb	r6, [r4, #0]
d03e3d5c:	f04f 0e02 	mov.w	lr, #2
d03e3d60:	4811      	ldr	r0, [pc, #68]	; (d03e3da8 <midi_rx_byte+0x2c8>)
d03e3d62:	f04f 0c00 	mov.w	ip, #0
d03e3d66:	b2f6      	uxtb	r6, r6
d03e3d68:	f800 e026 	strb.w	lr, [r0, r6, lsl #2]
d03e3d6c:	7826      	ldrb	r6, [r4, #0]
d03e3d6e:	eb00 0686 	add.w	r6, r0, r6, lsl #2
d03e3d72:	7073      	strb	r3, [r6, #1]
d03e3d74:	7823      	ldrb	r3, [r4, #0]
d03e3d76:	eb00 0383 	add.w	r3, r0, r3, lsl #2
d03e3d7a:	709f      	strb	r7, [r3, #2]
d03e3d7c:	7823      	ldrb	r3, [r4, #0]
d03e3d7e:	eb00 0083 	add.w	r0, r0, r3, lsl #2
d03e3d82:	f880 c003 	strb.w	ip, [r0, #3]
d03e3d86:	7022      	strb	r2, [r4, #0]
d03e3d88:	e6ef      	b.n	d03e3b6a <midi_rx_byte+0x8a>
d03e3d8a:	bf00      	nop
d03e3d8c:	d03e8f94 	.word	0xd03e8f94
d03e3d90:	d03e8f9b 	.word	0xd03e8f9b
d03e3d94:	d03e8f95 	.word	0xd03e8f95
d03e3d98:	d03e8f9a 	.word	0xd03e8f9a
d03e3d9c:	d03e8d8c 	.word	0xd03e8d8c
d03e3da0:	d03e8f90 	.word	0xd03e8f90
d03e3da4:	d03e8f98 	.word	0xd03e8f98
d03e3da8:	d03e8d90 	.word	0xd03e8d90
d03e3dac:	d03e8fa8 	.word	0xd03e8fa8
d03e3db0:	d03e8d84 	.word	0xd03e8d84
d03e3db4:	4a23      	ldr	r2, [pc, #140]	; (d03e3e44 <midi_rx_byte+0x364>)
d03e3db6:	4c24      	ldr	r4, [pc, #144]	; (d03e3e48 <midi_rx_byte+0x368>)
d03e3db8:	7810      	ldrb	r0, [r2, #0]
d03e3dba:	7826      	ldrb	r6, [r4, #0]
d03e3dbc:	3001      	adds	r0, #1
d03e3dbe:	f000 007f 	and.w	r0, r0, #127	; 0x7f
d03e3dc2:	42b0      	cmp	r0, r6
d03e3dc4:	d031      	beq.n	d03e3e2a <midi_rx_byte+0x34a>
d03e3dc6:	7816      	ldrb	r6, [r2, #0]
d03e3dc8:	f04f 0c05 	mov.w	ip, #5
d03e3dcc:	4c1f      	ldr	r4, [pc, #124]	; (d03e3e4c <midi_rx_byte+0x36c>)
d03e3dce:	2700      	movs	r7, #0
d03e3dd0:	b2f6      	uxtb	r6, r6
d03e3dd2:	f804 c026 	strb.w	ip, [r4, r6, lsl #2]
d03e3dd6:	7816      	ldrb	r6, [r2, #0]
d03e3dd8:	eb04 0686 	add.w	r6, r4, r6, lsl #2
d03e3ddc:	7073      	strb	r3, [r6, #1]
d03e3dde:	7813      	ldrb	r3, [r2, #0]
d03e3de0:	eb04 0383 	add.w	r3, r4, r3, lsl #2
d03e3de4:	709f      	strb	r7, [r3, #2]
d03e3de6:	7813      	ldrb	r3, [r2, #0]
d03e3de8:	eb04 0483 	add.w	r4, r4, r3, lsl #2
d03e3dec:	70e7      	strb	r7, [r4, #3]
d03e3dee:	7010      	strb	r0, [r2, #0]
d03e3df0:	e6bb      	b.n	d03e3b6a <midi_rx_byte+0x8a>
d03e3df2:	f89e 6000 	ldrb.w	r6, [lr]
d03e3df6:	f8df 8058 	ldr.w	r8, [pc, #88]	; d03e3e50 <midi_rx_byte+0x370>
d03e3dfa:	3601      	adds	r6, #1
d03e3dfc:	f8d8 4000 	ldr.w	r4, [r8]
d03e3e00:	f006 067f 	and.w	r6, r6, #127	; 0x7f
d03e3e04:	3401      	adds	r4, #1
d03e3e06:	f88e 6000 	strb.w	r6, [lr]
d03e3e0a:	f8c8 4000 	str.w	r4, [r8]
d03e3e0e:	e791      	b.n	d03e3d34 <midi_rx_byte+0x254>
d03e3e10:	7837      	ldrb	r7, [r6, #0]
d03e3e12:	f8df e03c 	ldr.w	lr, [pc, #60]	; d03e3e50 <midi_rx_byte+0x370>
d03e3e16:	3701      	adds	r7, #1
d03e3e18:	f8de 4000 	ldr.w	r4, [lr]
d03e3e1c:	f007 077f 	and.w	r7, r7, #127	; 0x7f
d03e3e20:	3401      	adds	r4, #1
d03e3e22:	7037      	strb	r7, [r6, #0]
d03e3e24:	f8ce 4000 	str.w	r4, [lr]
d03e3e28:	e6f1      	b.n	d03e3c0e <midi_rx_byte+0x12e>
d03e3e2a:	7826      	ldrb	r6, [r4, #0]
d03e3e2c:	f8df c020 	ldr.w	ip, [pc, #32]	; d03e3e50 <midi_rx_byte+0x370>
d03e3e30:	3601      	adds	r6, #1
d03e3e32:	f8dc 7000 	ldr.w	r7, [ip]
d03e3e36:	f006 067f 	and.w	r6, r6, #127	; 0x7f
d03e3e3a:	3701      	adds	r7, #1
d03e3e3c:	7026      	strb	r6, [r4, #0]
d03e3e3e:	f8cc 7000 	str.w	r7, [ip]
d03e3e42:	e7c0      	b.n	d03e3dc6 <midi_rx_byte+0x2e6>
d03e3e44:	d03e8d8c 	.word	0xd03e8d8c
d03e3e48:	d03e8f90 	.word	0xd03e8f90
d03e3e4c:	d03e8d90 	.word	0xd03e8d90
d03e3e50:	d03e8d84 	.word	0xd03e8d84

d03e3e54 <main>:
d03e3e54:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e3e58:	4bce      	ldr	r3, [pc, #824]	; (d03e4194 <main+0x340>)
d03e3e5a:	2501      	movs	r5, #1
d03e3e5c:	f8df a39c 	ldr.w	sl, [pc, #924]	; d03e41fc <main+0x3a8>
d03e3e60:	b0c1      	sub	sp, #260	; 0x104
d03e3e62:	701d      	strb	r5, [r3, #0]
d03e3e64:	f7fc f8ea 	bl	d03e003c <initMalloc>
d03e3e68:	f89a 3000 	ldrb.w	r3, [sl]
d03e3e6c:	2400      	movs	r4, #0
d03e3e6e:	f89a 2001 	ldrb.w	r2, [sl, #1]
d03e3e72:	f89a 1002 	ldrb.w	r1, [sl, #2]
d03e3e76:	4620      	mov	r0, r4
d03e3e78:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3e7c:	f89a 2003 	ldrb.w	r2, [sl, #3]
d03e3e80:	4ec5      	ldr	r6, [pc, #788]	; (d03e4198 <main+0x344>)
d03e3e82:	46a1      	mov	r9, r4
d03e3e84:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e3e88:	f8df b374 	ldr.w	fp, [pc, #884]	; d03e4200 <main+0x3ac>
d03e3e8c:	f8df 8374 	ldr.w	r8, [pc, #884]	; d03e4204 <main+0x3b0>
d03e3e90:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3e94:	681b      	ldr	r3, [r3, #0]
d03e3e96:	4798      	blx	r3
d03e3e98:	f89a 3004 	ldrb.w	r3, [sl, #4]
d03e3e9c:	f89a 2005 	ldrb.w	r2, [sl, #5]
d03e3ea0:	f89a 1006 	ldrb.w	r1, [sl, #6]
d03e3ea4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3ea8:	f89a 2007 	ldrb.w	r2, [sl, #7]
d03e3eac:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e3eb0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3eb4:	689b      	ldr	r3, [r3, #8]
d03e3eb6:	4798      	blx	r3
d03e3eb8:	f89a 3014 	ldrb.w	r3, [sl, #20]
d03e3ebc:	f89a 2015 	ldrb.w	r2, [sl, #21]
d03e3ec0:	2080      	movs	r0, #128	; 0x80
d03e3ec2:	f89a 1016 	ldrb.w	r1, [sl, #22]
d03e3ec6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3eca:	f89a 2017 	ldrb.w	r2, [sl, #23]
d03e3ece:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e3ed2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3ed6:	681b      	ldr	r3, [r3, #0]
d03e3ed8:	681b      	ldr	r3, [r3, #0]
d03e3eda:	4798      	blx	r3
d03e3edc:	f89a 2014 	ldrb.w	r2, [sl, #20]
d03e3ee0:	f89a 3015 	ldrb.w	r3, [sl, #21]
d03e3ee4:	f89a 0016 	ldrb.w	r0, [sl, #22]
d03e3ee8:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03e3eec:	f89a 1017 	ldrb.w	r1, [sl, #23]
d03e3ef0:	f89a 3014 	ldrb.w	r3, [sl, #20]
d03e3ef4:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
d03e3ef8:	f89a 7015 	ldrb.w	r7, [sl, #21]
d03e3efc:	f89a 0016 	ldrb.w	r0, [sl, #22]
d03e3f00:	ea42 6201 	orr.w	r2, r2, r1, lsl #24
d03e3f04:	f89a 1017 	ldrb.w	r1, [sl, #23]
d03e3f08:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d03e3f0c:	6812      	ldr	r2, [r2, #0]
d03e3f0e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e3f12:	6852      	ldr	r2, [r2, #4]
d03e3f14:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d03e3f18:	7015      	strb	r5, [r2, #0]
d03e3f1a:	681b      	ldr	r3, [r3, #0]
d03e3f1c:	699b      	ldr	r3, [r3, #24]
d03e3f1e:	4798      	blx	r3
d03e3f20:	f89a 300c 	ldrb.w	r3, [sl, #12]
d03e3f24:	f89a 200d 	ldrb.w	r2, [sl, #13]
d03e3f28:	2190      	movs	r1, #144	; 0x90
d03e3f2a:	f89a 700e 	ldrb.w	r7, [sl, #14]
d03e3f2e:	20dc      	movs	r0, #220	; 0xdc
d03e3f30:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3f34:	f89a 200f 	ldrb.w	r2, [sl, #15]
d03e3f38:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d03e3f3c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3f40:	681b      	ldr	r3, [r3, #0]
d03e3f42:	691b      	ldr	r3, [r3, #16]
d03e3f44:	4798      	blx	r3
d03e3f46:	f89a 700c 	ldrb.w	r7, [sl, #12]
d03e3f4a:	f89a 200d 	ldrb.w	r2, [sl, #13]
d03e3f4e:	f04f 0c02 	mov.w	ip, #2
d03e3f52:	f89a 000e 	ldrb.w	r0, [sl, #14]
d03e3f56:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03e3f5a:	ea47 2702 	orr.w	r7, r7, r2, lsl #8
d03e3f5e:	f89a e00f 	ldrb.w	lr, [sl, #15]
d03e3f62:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03e3f66:	4619      	mov	r1, r3
d03e3f68:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d03e3f6c:	4610      	mov	r0, r2
d03e3f6e:	ea47 670e 	orr.w	r7, r7, lr, lsl #24
d03e3f72:	683f      	ldr	r7, [r7, #0]
d03e3f74:	f8cd c000 	str.w	ip, [sp]
d03e3f78:	697f      	ldr	r7, [r7, #20]
d03e3f7a:	47b8      	blx	r7
d03e3f7c:	f89a 300c 	ldrb.w	r3, [sl, #12]
d03e3f80:	f89a 200d 	ldrb.w	r2, [sl, #13]
d03e3f84:	f89a 100e 	ldrb.w	r1, [sl, #14]
d03e3f88:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3f8c:	f89a 200f 	ldrb.w	r2, [sl, #15]
d03e3f90:	4882      	ldr	r0, [pc, #520]	; (d03e419c <main+0x348>)
d03e3f92:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e3f96:	4f82      	ldr	r7, [pc, #520]	; (d03e41a0 <main+0x34c>)
d03e3f98:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3f9c:	681b      	ldr	r3, [r3, #0]
d03e3f9e:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d03e3fa0:	4798      	blx	r3
d03e3fa2:	f89a 300c 	ldrb.w	r3, [sl, #12]
d03e3fa6:	f89a 200d 	ldrb.w	r2, [sl, #13]
d03e3faa:	f89a 100e 	ldrb.w	r1, [sl, #14]
d03e3fae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3fb2:	f89a 200f 	ldrb.w	r2, [sl, #15]
d03e3fb6:	4879      	ldr	r0, [pc, #484]	; (d03e419c <main+0x348>)
d03e3fb8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e3fbc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3fc0:	681b      	ldr	r3, [r3, #0]
d03e3fc2:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d03e3fc4:	4798      	blx	r3
d03e3fc6:	f89a 300c 	ldrb.w	r3, [sl, #12]
d03e3fca:	f89a 200d 	ldrb.w	r2, [sl, #13]
d03e3fce:	f89a 100e 	ldrb.w	r1, [sl, #14]
d03e3fd2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3fd6:	f89a 200f 	ldrb.w	r2, [sl, #15]
d03e3fda:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e3fde:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3fe2:	681b      	ldr	r3, [r3, #0]
d03e3fe4:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d03e3fe6:	4798      	blx	r3
d03e3fe8:	f89a 300c 	ldrb.w	r3, [sl, #12]
d03e3fec:	f89a 200d 	ldrb.w	r2, [sl, #13]
d03e3ff0:	f89a 100e 	ldrb.w	r1, [sl, #14]
d03e3ff4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3ff8:	f89a 200f 	ldrb.w	r2, [sl, #15]
d03e3ffc:	6038      	str	r0, [r7, #0]
d03e3ffe:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e4002:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4006:	681b      	ldr	r3, [r3, #0]
d03e4008:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d03e400a:	4798      	blx	r3
d03e400c:	4a65      	ldr	r2, [pc, #404]	; (d03e41a4 <main+0x350>)
d03e400e:	f44f 3316 	mov.w	r3, #153600	; 0x25800
d03e4012:	4965      	ldr	r1, [pc, #404]	; (d03e41a8 <main+0x354>)
d03e4014:	6010      	str	r0, [r2, #0]
d03e4016:	f44f 72a0 	mov.w	r2, #320	; 0x140
d03e401a:	60f3      	str	r3, [r6, #12]
d03e401c:	4618      	mov	r0, r3
d03e401e:	6071      	str	r1, [r6, #4]
d03e4020:	8132      	strh	r2, [r6, #8]
d03e4022:	f002 faa1 	bl	d03e6568 <malloc>
d03e4026:	4603      	mov	r3, r0
d03e4028:	4630      	mov	r0, r6
d03e402a:	6033      	str	r3, [r6, #0]
d03e402c:	f89a 300c 	ldrb.w	r3, [sl, #12]
d03e4030:	f89a 200d 	ldrb.w	r2, [sl, #13]
d03e4034:	f89a 100e 	ldrb.w	r1, [sl, #14]
d03e4038:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e403c:	f89a 200f 	ldrb.w	r2, [sl, #15]
d03e4040:	4e5a      	ldr	r6, [pc, #360]	; (d03e41ac <main+0x358>)
d03e4042:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e4046:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e404a:	681b      	ldr	r3, [r3, #0]
d03e404c:	6a1b      	ldr	r3, [r3, #32]
d03e404e:	4798      	blx	r3
d03e4050:	f89a 300c 	ldrb.w	r3, [sl, #12]
d03e4054:	f89a 200d 	ldrb.w	r2, [sl, #13]
d03e4058:	f89a 100e 	ldrb.w	r1, [sl, #14]
d03e405c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4060:	f89a 200f 	ldrb.w	r2, [sl, #15]
d03e4064:	6838      	ldr	r0, [r7, #0]
d03e4066:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e406a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e406e:	681b      	ldr	r3, [r3, #0]
d03e4070:	69db      	ldr	r3, [r3, #28]
d03e4072:	4798      	blx	r3
d03e4074:	f89a 300c 	ldrb.w	r3, [sl, #12]
d03e4078:	f89a 200d 	ldrb.w	r2, [sl, #13]
d03e407c:	f89a 100e 	ldrb.w	r1, [sl, #14]
d03e4080:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4084:	f89a 200f 	ldrb.w	r2, [sl, #15]
d03e4088:	4846      	ldr	r0, [pc, #280]	; (d03e41a4 <main+0x350>)
d03e408a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e408e:	6800      	ldr	r0, [r0, #0]
d03e4090:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4094:	681b      	ldr	r3, [r3, #0]
d03e4096:	699b      	ldr	r3, [r3, #24]
d03e4098:	4798      	blx	r3
d03e409a:	f89a 3018 	ldrb.w	r3, [sl, #24]
d03e409e:	f89a 2019 	ldrb.w	r2, [sl, #25]
d03e40a2:	f89a 101a 	ldrb.w	r1, [sl, #26]
d03e40a6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e40aa:	f89a 201b 	ldrb.w	r2, [sl, #27]
d03e40ae:	4840      	ldr	r0, [pc, #256]	; (d03e41b0 <main+0x35c>)
d03e40b0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e40b4:	7004      	strb	r4, [r0, #0]
d03e40b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e40ba:	681b      	ldr	r3, [r3, #0]
d03e40bc:	4798      	blx	r3
d03e40be:	f89a 3014 	ldrb.w	r3, [sl, #20]
d03e40c2:	f89a 1015 	ldrb.w	r1, [sl, #21]
d03e40c6:	4620      	mov	r0, r4
d03e40c8:	f89a 2016 	ldrb.w	r2, [sl, #22]
d03e40cc:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03e40d0:	f89a 1017 	ldrb.w	r1, [sl, #23]
d03e40d4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e40d8:	220f      	movs	r2, #15
d03e40da:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d03e40de:	2118      	movs	r1, #24
d03e40e0:	681b      	ldr	r3, [r3, #0]
d03e40e2:	69db      	ldr	r3, [r3, #28]
d03e40e4:	4798      	blx	r3
d03e40e6:	f89a 3014 	ldrb.w	r3, [sl, #20]
d03e40ea:	f89a 1015 	ldrb.w	r1, [sl, #21]
d03e40ee:	4628      	mov	r0, r5
d03e40f0:	f89a 2016 	ldrb.w	r2, [sl, #22]
d03e40f4:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03e40f8:	f89a 1017 	ldrb.w	r1, [sl, #23]
d03e40fc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4100:	220f      	movs	r2, #15
d03e4102:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d03e4106:	2118      	movs	r1, #24
d03e4108:	681b      	ldr	r3, [r3, #0]
d03e410a:	69db      	ldr	r3, [r3, #28]
d03e410c:	4798      	blx	r3
d03e410e:	f7fc fd31 	bl	d03e0b74 <sid_soundfont_init>
d03e4112:	4621      	mov	r1, r4
d03e4114:	f44f 7200 	mov.w	r2, #512	; 0x200
d03e4118:	4826      	ldr	r0, [pc, #152]	; (d03e41b4 <main+0x360>)
d03e411a:	f002 fa2d 	bl	d03e6578 <memset>
d03e411e:	4621      	mov	r1, r4
d03e4120:	2230      	movs	r2, #48	; 0x30
d03e4122:	4658      	mov	r0, fp
d03e4124:	f002 fa28 	bl	d03e6578 <memset>
d03e4128:	4a23      	ldr	r2, [pc, #140]	; (d03e41b8 <main+0x364>)
d03e412a:	4b24      	ldr	r3, [pc, #144]	; (d03e41bc <main+0x368>)
d03e412c:	7015      	strb	r5, [r2, #0]
d03e412e:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
d03e4130:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
d03e4134:	f04f 337f 	mov.w	r3, #2139062143	; 0x7f7f7f7f
d03e4138:	4a21      	ldr	r2, [pc, #132]	; (d03e41c0 <main+0x36c>)
d03e413a:	26c8      	movs	r6, #200	; 0xc8
d03e413c:	20b4      	movs	r0, #180	; 0xb4
d03e413e:	6013      	str	r3, [r2, #0]
d03e4140:	4621      	mov	r1, r4
d03e4142:	6053      	str	r3, [r2, #4]
d03e4144:	6093      	str	r3, [r2, #8]
d03e4146:	60d3      	str	r3, [r2, #12]
d03e4148:	4a1e      	ldr	r2, [pc, #120]	; (d03e41c4 <main+0x370>)
d03e414a:	6013      	str	r3, [r2, #0]
d03e414c:	6053      	str	r3, [r2, #4]
d03e414e:	6093      	str	r3, [r2, #8]
d03e4150:	60d3      	str	r3, [r2, #12]
d03e4152:	2220      	movs	r2, #32
d03e4154:	4b1c      	ldr	r3, [pc, #112]	; (d03e41c8 <main+0x374>)
d03e4156:	801e      	strh	r6, [r3, #0]
d03e4158:	4b1c      	ldr	r3, [pc, #112]	; (d03e41cc <main+0x378>)
d03e415a:	4e1d      	ldr	r6, [pc, #116]	; (d03e41d0 <main+0x37c>)
d03e415c:	8018      	strh	r0, [r3, #0]
d03e415e:	481d      	ldr	r0, [pc, #116]	; (d03e41d4 <main+0x380>)
d03e4160:	f002 fa0a 	bl	d03e6578 <memset>
d03e4164:	481c      	ldr	r0, [pc, #112]	; (d03e41d8 <main+0x384>)
d03e4166:	4a1d      	ldr	r2, [pc, #116]	; (d03e41dc <main+0x388>)
d03e4168:	21f0      	movs	r1, #240	; 0xf0
d03e416a:	7004      	strb	r4, [r0, #0]
d03e416c:	481c      	ldr	r0, [pc, #112]	; (d03e41e0 <main+0x38c>)
d03e416e:	4b1d      	ldr	r3, [pc, #116]	; (d03e41e4 <main+0x390>)
d03e4170:	7004      	strb	r4, [r0, #0]
d03e4172:	481d      	ldr	r0, [pc, #116]	; (d03e41e8 <main+0x394>)
d03e4174:	7035      	strb	r5, [r6, #0]
d03e4176:	7004      	strb	r4, [r0, #0]
d03e4178:	481c      	ldr	r0, [pc, #112]	; (d03e41ec <main+0x398>)
d03e417a:	4d1d      	ldr	r5, [pc, #116]	; (d03e41f0 <main+0x39c>)
d03e417c:	7004      	strb	r4, [r0, #0]
d03e417e:	481d      	ldr	r0, [pc, #116]	; (d03e41f4 <main+0x3a0>)
d03e4180:	7014      	strb	r4, [r2, #0]
d03e4182:	22a0      	movs	r2, #160	; 0xa0
d03e4184:	7004      	strb	r4, [r0, #0]
d03e4186:	481c      	ldr	r0, [pc, #112]	; (d03e41f8 <main+0x3a4>)
d03e4188:	701c      	strb	r4, [r3, #0]
d03e418a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d03e418e:	7004      	strb	r4, [r0, #0]
d03e4190:	e03a      	b.n	d03e4208 <main+0x3b4>
d03e4192:	bf00      	nop
d03e4194:	d03e8d28 	.word	0xd03e8d28
d03e4198:	d03e91a0 	.word	0xd03e91a0
d03e419c:	d03e8878 	.word	0xd03e8878
d03e41a0:	d03e8d2c 	.word	0xd03e8d2c
d03e41a4:	d03e8d30 	.word	0xd03e8d30
d03e41a8:	014001e0 	.word	0x014001e0
d03e41ac:	d03e8d64 	.word	0xd03e8d64
d03e41b0:	d03e8d29 	.word	0xd03e8d29
d03e41b4:	d03e8d90 	.word	0xd03e8d90
d03e41b8:	d03e8d88 	.word	0xd03e8d88
d03e41bc:	d03e8350 	.word	0xd03e8350
d03e41c0:	d03e8d74 	.word	0xd03e8d74
d03e41c4:	d03e8d54 	.word	0xd03e8d54
d03e41c8:	d03e8f92 	.word	0xd03e8f92
d03e41cc:	d03e8d8a 	.word	0xd03e8d8a
d03e41d0:	d03e8fe8 	.word	0xd03e8fe8
d03e41d4:	d03e8d34 	.word	0xd03e8d34
d03e41d8:	d03e8fe0 	.word	0xd03e8fe0
d03e41dc:	d03e8d8c 	.word	0xd03e8d8c
d03e41e0:	d03e8fa8 	.word	0xd03e8fa8
d03e41e4:	d03e8f90 	.word	0xd03e8f90
d03e41e8:	d03e8f9b 	.word	0xd03e8f9b
d03e41ec:	d03e8f95 	.word	0xd03e8f95
d03e41f0:	d03e8fe4 	.word	0xd03e8fe4
d03e41f4:	d03e8f9a 	.word	0xd03e8f9a
d03e41f8:	d03e8f94 	.word	0xd03e8f94
d03e41fc:	2001f000 	.word	0x2001f000
d03e4200:	d03e8fb0 	.word	0xd03e8fb0
d03e4204:	d03e8f9c 	.word	0xd03e8f9c
d03e4208:	4866      	ldr	r0, [pc, #408]	; (d03e43a4 <main+0x550>)
d03e420a:	602c      	str	r4, [r5, #0]
d03e420c:	7004      	strb	r4, [r0, #0]
d03e420e:	4866      	ldr	r0, [pc, #408]	; (d03e43a8 <main+0x554>)
d03e4210:	4d66      	ldr	r5, [pc, #408]	; (d03e43ac <main+0x558>)
d03e4212:	7004      	strb	r4, [r0, #0]
d03e4214:	4866      	ldr	r0, [pc, #408]	; (d03e43b0 <main+0x55c>)
d03e4216:	702c      	strb	r4, [r5, #0]
d03e4218:	7004      	strb	r4, [r0, #0]
d03e421a:	4866      	ldr	r0, [pc, #408]	; (d03e43b4 <main+0x560>)
d03e421c:	4d66      	ldr	r5, [pc, #408]	; (d03e43b8 <main+0x564>)
d03e421e:	7004      	strb	r4, [r0, #0]
d03e4220:	4866      	ldr	r0, [pc, #408]	; (d03e43bc <main+0x568>)
d03e4222:	702c      	strb	r4, [r5, #0]
d03e4224:	7004      	strb	r4, [r0, #0]
d03e4226:	4866      	ldr	r0, [pc, #408]	; (d03e43c0 <main+0x56c>)
d03e4228:	4d66      	ldr	r5, [pc, #408]	; (d03e43c4 <main+0x570>)
d03e422a:	7004      	strb	r4, [r0, #0]
d03e422c:	4866      	ldr	r0, [pc, #408]	; (d03e43c8 <main+0x574>)
d03e422e:	702c      	strb	r4, [r5, #0]
d03e4230:	7004      	strb	r4, [r0, #0]
d03e4232:	4866      	ldr	r0, [pc, #408]	; (d03e43cc <main+0x578>)
d03e4234:	4d66      	ldr	r5, [pc, #408]	; (d03e43d0 <main+0x57c>)
d03e4236:	7004      	strb	r4, [r0, #0]
d03e4238:	4866      	ldr	r0, [pc, #408]	; (d03e43d4 <main+0x580>)
d03e423a:	702c      	strb	r4, [r5, #0]
d03e423c:	7004      	strb	r4, [r0, #0]
d03e423e:	4866      	ldr	r0, [pc, #408]	; (d03e43d8 <main+0x584>)
d03e4240:	f8c8 4000 	str.w	r4, [r8]
d03e4244:	7004      	strb	r4, [r0, #0]
d03e4246:	4865      	ldr	r0, [pc, #404]	; (d03e43dc <main+0x588>)
d03e4248:	7004      	strb	r4, [r0, #0]
d03e424a:	4865      	ldr	r0, [pc, #404]	; (d03e43e0 <main+0x58c>)
d03e424c:	7004      	strb	r4, [r0, #0]
d03e424e:	4865      	ldr	r0, [pc, #404]	; (d03e43e4 <main+0x590>)
d03e4250:	6004      	str	r4, [r0, #0]
d03e4252:	4865      	ldr	r0, [pc, #404]	; (d03e43e8 <main+0x594>)
d03e4254:	6004      	str	r4, [r0, #0]
d03e4256:	4865      	ldr	r0, [pc, #404]	; (d03e43ec <main+0x598>)
d03e4258:	8001      	strh	r1, [r0, #0]
d03e425a:	4965      	ldr	r1, [pc, #404]	; (d03e43f0 <main+0x59c>)
d03e425c:	4865      	ldr	r0, [pc, #404]	; (d03e43f4 <main+0x5a0>)
d03e425e:	800a      	strh	r2, [r1, #0]
d03e4260:	4a65      	ldr	r2, [pc, #404]	; (d03e43f8 <main+0x5a4>)
d03e4262:	6013      	str	r3, [r2, #0]
d03e4264:	4b65      	ldr	r3, [pc, #404]	; (d03e43fc <main+0x5a8>)
d03e4266:	601c      	str	r4, [r3, #0]
d03e4268:	f89a 3020 	ldrb.w	r3, [sl, #32]
d03e426c:	f89a 2021 	ldrb.w	r2, [sl, #33]	; 0x21
d03e4270:	f89a 1022 	ldrb.w	r1, [sl, #34]	; 0x22
d03e4274:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4278:	f89a 2023 	ldrb.w	r2, [sl, #35]	; 0x23
d03e427c:	6004      	str	r4, [r0, #0]
d03e427e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e4282:	485f      	ldr	r0, [pc, #380]	; (d03e4400 <main+0x5ac>)
d03e4284:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4288:	681b      	ldr	r3, [r3, #0]
d03e428a:	4798      	blx	r3
d03e428c:	f89a 3020 	ldrb.w	r3, [sl, #32]
d03e4290:	f89a 2021 	ldrb.w	r2, [sl, #33]	; 0x21
d03e4294:	485b      	ldr	r0, [pc, #364]	; (d03e4404 <main+0x5b0>)
d03e4296:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e429a:	f89a 2022 	ldrb.w	r2, [sl, #34]	; 0x22
d03e429e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e42a2:	f89a 2023 	ldrb.w	r2, [sl, #35]	; 0x23
d03e42a6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e42aa:	685b      	ldr	r3, [r3, #4]
d03e42ac:	4798      	blx	r3
d03e42ae:	f7fe fc57 	bl	d03e2b60 <ui_redraw_backbuffer>
d03e42b2:	f7fe f86d 	bl	d03e2390 <midi_process_events>
d03e42b6:	4b54      	ldr	r3, [pc, #336]	; (d03e4408 <main+0x5b4>)
d03e42b8:	681d      	ldr	r5, [r3, #0]
d03e42ba:	2d00      	cmp	r5, #0
d03e42bc:	d053      	beq.n	d03e4366 <main+0x512>
d03e42be:	4a52      	ldr	r2, [pc, #328]	; (d03e4408 <main+0x5b4>)
d03e42c0:	2400      	movs	r4, #0
d03e42c2:	6813      	ldr	r3, [r2, #0]
d03e42c4:	ea23 0305 	bic.w	r3, r3, r5
d03e42c8:	6013      	str	r3, [r2, #0]
d03e42ca:	e002      	b.n	d03e42d2 <main+0x47e>
d03e42cc:	3401      	adds	r4, #1
d03e42ce:	2c10      	cmp	r4, #16
d03e42d0:	d049      	beq.n	d03e4366 <main+0x512>
d03e42d2:	fa25 f304 	lsr.w	r3, r5, r4
d03e42d6:	07df      	lsls	r7, r3, #31
d03e42d8:	d5f8      	bpl.n	d03e42cc <main+0x478>
d03e42da:	f89b 3000 	ldrb.w	r3, [fp]
d03e42de:	b12b      	cbz	r3, d03e42ec <main+0x498>
d03e42e0:	f89b 2001 	ldrb.w	r2, [fp, #1]
d03e42e4:	b2e3      	uxtb	r3, r4
d03e42e6:	429a      	cmp	r2, r3
d03e42e8:	f000 86aa 	beq.w	d03e5040 <main+0x11ec>
d03e42ec:	f89b 3008 	ldrb.w	r3, [fp, #8]
d03e42f0:	b12b      	cbz	r3, d03e42fe <main+0x4aa>
d03e42f2:	f89b 2009 	ldrb.w	r2, [fp, #9]
d03e42f6:	b2e3      	uxtb	r3, r4
d03e42f8:	429a      	cmp	r2, r3
d03e42fa:	f000 86e7 	beq.w	d03e50cc <main+0x1278>
d03e42fe:	f89b 3010 	ldrb.w	r3, [fp, #16]
d03e4302:	b12b      	cbz	r3, d03e4310 <main+0x4bc>
d03e4304:	f89b 2011 	ldrb.w	r2, [fp, #17]
d03e4308:	b2e3      	uxtb	r3, r4
d03e430a:	429a      	cmp	r2, r3
d03e430c:	f000 86ec 	beq.w	d03e50e8 <main+0x1294>
d03e4310:	f89b 3018 	ldrb.w	r3, [fp, #24]
d03e4314:	b12b      	cbz	r3, d03e4322 <main+0x4ce>
d03e4316:	f89b 2019 	ldrb.w	r2, [fp, #25]
d03e431a:	b2e3      	uxtb	r3, r4
d03e431c:	429a      	cmp	r2, r3
d03e431e:	f000 86b9 	beq.w	d03e5094 <main+0x1240>
d03e4322:	f89b 3020 	ldrb.w	r3, [fp, #32]
d03e4326:	b12b      	cbz	r3, d03e4334 <main+0x4e0>
d03e4328:	f89b 2021 	ldrb.w	r2, [fp, #33]	; 0x21
d03e432c:	b2e3      	uxtb	r3, r4
d03e432e:	429a      	cmp	r2, r3
d03e4330:	f000 86be 	beq.w	d03e50b0 <main+0x125c>
d03e4334:	f89b 3028 	ldrb.w	r3, [fp, #40]	; 0x28
d03e4338:	2b00      	cmp	r3, #0
d03e433a:	d0c7      	beq.n	d03e42cc <main+0x478>
d03e433c:	f89b 2029 	ldrb.w	r2, [fp, #41]	; 0x29
d03e4340:	b2e3      	uxtb	r3, r4
d03e4342:	429a      	cmp	r2, r3
d03e4344:	d1c2      	bne.n	d03e42cc <main+0x478>
d03e4346:	2005      	movs	r0, #5
d03e4348:	3401      	adds	r4, #1
d03e434a:	f7fc fa23 	bl	d03e0794 <sid_voice_note_off>
d03e434e:	f8d8 3000 	ldr.w	r3, [r8]
d03e4352:	2c10      	cmp	r4, #16
d03e4354:	f88b 9028 	strb.w	r9, [fp, #40]	; 0x28
d03e4358:	f103 0301 	add.w	r3, r3, #1
d03e435c:	f8ab 902e 	strh.w	r9, [fp, #46]	; 0x2e
d03e4360:	f8c8 3000 	str.w	r3, [r8]
d03e4364:	d1b5      	bne.n	d03e42d2 <main+0x47e>
d03e4366:	f89a 000c 	ldrb.w	r0, [sl, #12]
d03e436a:	f89a 100d 	ldrb.w	r1, [sl, #13]
d03e436e:	f89a 200e 	ldrb.w	r2, [sl, #14]
d03e4372:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e4376:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e437a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e437e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e4382:	681b      	ldr	r3, [r3, #0]
d03e4384:	68db      	ldr	r3, [r3, #12]
d03e4386:	4798      	blx	r3
d03e4388:	f7fe f802 	bl	d03e2390 <midi_process_events>
d03e438c:	4b1e      	ldr	r3, [pc, #120]	; (d03e4408 <main+0x5b4>)
d03e438e:	681d      	ldr	r5, [r3, #0]
d03e4390:	2d00      	cmp	r5, #0
d03e4392:	f000 8088 	beq.w	d03e44a6 <main+0x652>
d03e4396:	4a1c      	ldr	r2, [pc, #112]	; (d03e4408 <main+0x5b4>)
d03e4398:	2400      	movs	r4, #0
d03e439a:	6813      	ldr	r3, [r2, #0]
d03e439c:	ea23 0305 	bic.w	r3, r3, r5
d03e43a0:	6013      	str	r3, [r2, #0]
d03e43a2:	e036      	b.n	d03e4412 <main+0x5be>
d03e43a4:	d03e8ff1 	.word	0xd03e8ff1
d03e43a8:	d03e8ff2 	.word	0xd03e8ff2
d03e43ac:	d03e8ffb 	.word	0xd03e8ffb
d03e43b0:	d03e8ffa 	.word	0xd03e8ffa
d03e43b4:	d03e8ff4 	.word	0xd03e8ff4
d03e43b8:	d03e8ff5 	.word	0xd03e8ff5
d03e43bc:	d03e8ff3 	.word	0xd03e8ff3
d03e43c0:	d03e8ffc 	.word	0xd03e8ffc
d03e43c4:	d03e8ff0 	.word	0xd03e8ff0
d03e43c8:	d03e9024 	.word	0xd03e9024
d03e43cc:	d03e9025 	.word	0xd03e9025
d03e43d0:	d03e902a 	.word	0xd03e902a
d03e43d4:	d03e9026 	.word	0xd03e9026
d03e43d8:	d03e9028 	.word	0xd03e9028
d03e43dc:	d03e9027 	.word	0xd03e9027
d03e43e0:	d03e9029 	.word	0xd03e9029
d03e43e4:	d03e8fa0 	.word	0xd03e8fa0
d03e43e8:	d03e8d84 	.word	0xd03e8d84
d03e43ec:	d03e8ff6 	.word	0xd03e8ff6
d03e43f0:	d03e8ff8 	.word	0xd03e8ff8
d03e43f4:	d03e8fac 	.word	0xd03e8fac
d03e43f8:	d03e8fec 	.word	0xd03e8fec
d03e43fc:	d03e8fa4 	.word	0xd03e8fa4
d03e4400:	d03e1411 	.word	0xd03e1411
d03e4404:	d03e3ae1 	.word	0xd03e3ae1
d03e4408:	d03e8fe4 	.word	0xd03e8fe4
d03e440c:	3401      	adds	r4, #1
d03e440e:	2c10      	cmp	r4, #16
d03e4410:	d049      	beq.n	d03e44a6 <main+0x652>
d03e4412:	fa25 f304 	lsr.w	r3, r5, r4
d03e4416:	07de      	lsls	r6, r3, #31
d03e4418:	d5f8      	bpl.n	d03e440c <main+0x5b8>
d03e441a:	f89b 3000 	ldrb.w	r3, [fp]
d03e441e:	b12b      	cbz	r3, d03e442c <main+0x5d8>
d03e4420:	f89b 2001 	ldrb.w	r2, [fp, #1]
d03e4424:	b2e3      	uxtb	r3, r4
d03e4426:	429a      	cmp	r2, r3
d03e4428:	f000 8618 	beq.w	d03e505c <main+0x1208>
d03e442c:	f89b 3008 	ldrb.w	r3, [fp, #8]
d03e4430:	b12b      	cbz	r3, d03e443e <main+0x5ea>
d03e4432:	f89b 2009 	ldrb.w	r2, [fp, #9]
d03e4436:	b2e3      	uxtb	r3, r4
d03e4438:	429a      	cmp	r2, r3
d03e443a:	f000 861d 	beq.w	d03e5078 <main+0x1224>
d03e443e:	f89b 3010 	ldrb.w	r3, [fp, #16]
d03e4442:	b12b      	cbz	r3, d03e4450 <main+0x5fc>
d03e4444:	f89b 2011 	ldrb.w	r2, [fp, #17]
d03e4448:	b2e3      	uxtb	r3, r4
d03e444a:	429a      	cmp	r2, r3
d03e444c:	f000 85ce 	beq.w	d03e4fec <main+0x1198>
d03e4450:	f89b 3018 	ldrb.w	r3, [fp, #24]
d03e4454:	b12b      	cbz	r3, d03e4462 <main+0x60e>
d03e4456:	f89b 2019 	ldrb.w	r2, [fp, #25]
d03e445a:	b2e3      	uxtb	r3, r4
d03e445c:	429a      	cmp	r2, r3
d03e445e:	f000 85d3 	beq.w	d03e5008 <main+0x11b4>
d03e4462:	f89b 3020 	ldrb.w	r3, [fp, #32]
d03e4466:	b12b      	cbz	r3, d03e4474 <main+0x620>
d03e4468:	f89b 2021 	ldrb.w	r2, [fp, #33]	; 0x21
d03e446c:	b2e3      	uxtb	r3, r4
d03e446e:	429a      	cmp	r2, r3
d03e4470:	f000 85d8 	beq.w	d03e5024 <main+0x11d0>
d03e4474:	f89b 3028 	ldrb.w	r3, [fp, #40]	; 0x28
d03e4478:	2b00      	cmp	r3, #0
d03e447a:	d0c7      	beq.n	d03e440c <main+0x5b8>
d03e447c:	f89b 2029 	ldrb.w	r2, [fp, #41]	; 0x29
d03e4480:	b2e3      	uxtb	r3, r4
d03e4482:	429a      	cmp	r2, r3
d03e4484:	d1c2      	bne.n	d03e440c <main+0x5b8>
d03e4486:	2005      	movs	r0, #5
d03e4488:	3401      	adds	r4, #1
d03e448a:	f7fc f983 	bl	d03e0794 <sid_voice_note_off>
d03e448e:	f8d8 3000 	ldr.w	r3, [r8]
d03e4492:	2c10      	cmp	r4, #16
d03e4494:	f88b 9028 	strb.w	r9, [fp, #40]	; 0x28
d03e4498:	f103 0301 	add.w	r3, r3, #1
d03e449c:	f8ab 902e 	strh.w	r9, [fp, #46]	; 0x2e
d03e44a0:	f8c8 3000 	str.w	r3, [r8]
d03e44a4:	d1b5      	bne.n	d03e4412 <main+0x5be>
d03e44a6:	f89a 0000 	ldrb.w	r0, [sl]
d03e44aa:	f89a 1001 	ldrb.w	r1, [sl, #1]
d03e44ae:	f89a 2002 	ldrb.w	r2, [sl, #2]
d03e44b2:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e44b6:	f89a 3003 	ldrb.w	r3, [sl, #3]
d03e44ba:	489d      	ldr	r0, [pc, #628]	; (d03e4730 <main+0x8dc>)
d03e44bc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e44c0:	7800      	ldrb	r0, [r0, #0]
d03e44c2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e44c6:	900b      	str	r0, [sp, #44]	; 0x2c
d03e44c8:	6a1b      	ldr	r3, [r3, #32]
d03e44ca:	4798      	blx	r3
d03e44cc:	4b99      	ldr	r3, [pc, #612]	; (d03e4734 <main+0x8e0>)
d03e44ce:	4607      	mov	r7, r0
d03e44d0:	781b      	ldrb	r3, [r3, #0]
d03e44d2:	ea20 0303 	bic.w	r3, r0, r3
d03e44d6:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
d03e44da:	9304      	str	r3, [sp, #16]
d03e44dc:	f040 866d 	bne.w	d03e51ba <main+0x1366>
d03e44e0:	f010 033c 	ands.w	r3, r0, #60	; 0x3c
d03e44e4:	9306      	str	r3, [sp, #24]
d03e44e6:	f000 8723 	beq.w	d03e5330 <main+0x14dc>
d03e44ea:	4b93      	ldr	r3, [pc, #588]	; (d03e4738 <main+0x8e4>)
d03e44ec:	781b      	ldrb	r3, [r3, #0]
d03e44ee:	2b00      	cmp	r3, #0
d03e44f0:	f041 8173 	bne.w	d03e57da <main+0x1986>
d03e44f4:	f000 0204 	and.w	r2, r0, #4
d03e44f8:	2303      	movs	r3, #3
d03e44fa:	9004      	str	r0, [sp, #16]
d03e44fc:	9206      	str	r2, [sp, #24]
d03e44fe:	f000 0210 	and.w	r2, r0, #16
d03e4502:	9209      	str	r2, [sp, #36]	; 0x24
d03e4504:	4a8c      	ldr	r2, [pc, #560]	; (d03e4738 <main+0x8e4>)
d03e4506:	7013      	strb	r3, [r2, #0]
d03e4508:	f007 0301 	and.w	r3, r7, #1
d03e450c:	f89a 1018 	ldrb.w	r1, [sl, #24]
d03e4510:	2200      	movs	r2, #0
d03e4512:	9307      	str	r3, [sp, #28]
d03e4514:	f89a 3019 	ldrb.w	r3, [sl, #25]
d03e4518:	920f      	str	r2, [sp, #60]	; 0x3c
d03e451a:	ea41 2203 	orr.w	r2, r1, r3, lsl #8
d03e451e:	f89a 301a 	ldrb.w	r3, [sl, #26]
d03e4522:	2100      	movs	r1, #0
d03e4524:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d03e4528:	f89a 201b 	ldrb.w	r2, [sl, #27]
d03e452c:	9110      	str	r1, [sp, #64]	; 0x40
d03e452e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4532:	4a82      	ldr	r2, [pc, #520]	; (d03e473c <main+0x8e8>)
d03e4534:	f9b2 1000 	ldrsh.w	r1, [r2]
d03e4538:	4a81      	ldr	r2, [pc, #516]	; (d03e4740 <main+0x8ec>)
d03e453a:	685b      	ldr	r3, [r3, #4]
d03e453c:	f9b2 2000 	ldrsh.w	r2, [r2]
d03e4540:	f8ad 1034 	strh.w	r1, [sp, #52]	; 0x34
d03e4544:	f8ad 1038 	strh.w	r1, [sp, #56]	; 0x38
d03e4548:	f8ad 2036 	strh.w	r2, [sp, #54]	; 0x36
d03e454c:	f8ad 203a 	strh.w	r2, [sp, #58]	; 0x3a
d03e4550:	4798      	blx	r3
d03e4552:	2800      	cmp	r0, #0
d03e4554:	f000 808c 	beq.w	d03e4670 <main+0x81c>
d03e4558:	f89a 3018 	ldrb.w	r3, [sl, #24]
d03e455c:	f10d 0136 	add.w	r1, sp, #54	; 0x36
d03e4560:	f89a 4019 	ldrb.w	r4, [sl, #25]
d03e4564:	a80d      	add	r0, sp, #52	; 0x34
d03e4566:	f89a 201a 	ldrb.w	r2, [sl, #26]
d03e456a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d03e456e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4572:	f89a 201b 	ldrb.w	r2, [sl, #27]
d03e4576:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e457a:	689b      	ldr	r3, [r3, #8]
d03e457c:	4798      	blx	r3
d03e457e:	2800      	cmp	r0, #0
d03e4580:	d076      	beq.n	d03e4670 <main+0x81c>
d03e4582:	f9bd 3034 	ldrsh.w	r3, [sp, #52]	; 0x34
d03e4586:	2101      	movs	r1, #1
d03e4588:	f007 0603 	and.w	r6, r7, #3
d03e458c:	f9bd 2036 	ldrsh.w	r2, [sp, #54]	; 0x36
d03e4590:	2b00      	cmp	r3, #0
d03e4592:	f04f 0400 	mov.w	r4, #0
d03e4596:	468e      	mov	lr, r1
d03e4598:	4608      	mov	r0, r1
d03e459a:	460d      	mov	r5, r1
d03e459c:	9605      	str	r6, [sp, #20]
d03e459e:	f2c0 80c0 	blt.w	d03e4722 <main+0x8ce>
d03e45a2:	2a00      	cmp	r2, #0
d03e45a4:	f240 16df 	movw	r6, #479	; 0x1df
d03e45a8:	f2c0 8642 	blt.w	d03e5230 <main+0x13dc>
d03e45ac:	42b3      	cmp	r3, r6
d03e45ae:	bfa8      	it	ge
d03e45b0:	4633      	movge	r3, r6
d03e45b2:	f240 163f 	movw	r6, #319	; 0x13f
d03e45b6:	42b2      	cmp	r2, r6
d03e45b8:	bfa8      	it	ge
d03e45ba:	4632      	movge	r2, r6
d03e45bc:	2d00      	cmp	r5, #0
d03e45be:	f000 8433 	beq.w	d03e4e28 <main+0xfd4>
d03e45c2:	4e60      	ldr	r6, [pc, #384]	; (d03e4744 <main+0x8f0>)
d03e45c4:	7836      	ldrb	r6, [r6, #0]
d03e45c6:	fab6 f686 	clz	r6, r6
d03e45ca:	0976      	lsrs	r6, r6, #5
d03e45cc:	9608      	str	r6, [sp, #32]
d03e45ce:	2900      	cmp	r1, #0
d03e45d0:	d049      	beq.n	d03e4666 <main+0x812>
d03e45d2:	4e57      	ldr	r6, [pc, #348]	; (d03e4730 <main+0x8dc>)
d03e45d4:	f896 c000 	ldrb.w	ip, [r6]
d03e45d8:	f01c 0f01 	tst.w	ip, #1
d03e45dc:	d142      	bne.n	d03e4664 <main+0x810>
d03e45de:	2601      	movs	r6, #1
d03e45e0:	960a      	str	r6, [sp, #40]	; 0x28
d03e45e2:	2c00      	cmp	r4, #0
d03e45e4:	d042      	beq.n	d03e466c <main+0x818>
d03e45e6:	4c52      	ldr	r4, [pc, #328]	; (d03e4730 <main+0x8dc>)
d03e45e8:	7824      	ldrb	r4, [r4, #0]
d03e45ea:	07a4      	lsls	r4, r4, #30
d03e45ec:	f100 85fe 	bmi.w	d03e51ec <main+0x1398>
d03e45f0:	2401      	movs	r4, #1
d03e45f2:	46a4      	mov	ip, r4
d03e45f4:	4e53      	ldr	r6, [pc, #332]	; (d03e4744 <main+0x8f0>)
d03e45f6:	f1be 0f03 	cmp.w	lr, #3
d03e45fa:	f88d 50a4 	strb.w	r5, [sp, #164]	; 0xa4
d03e45fe:	7035      	strb	r5, [r6, #0]
d03e4600:	4e4b      	ldr	r6, [pc, #300]	; (d03e4730 <main+0x8dc>)
d03e4602:	9d08      	ldr	r5, [sp, #32]
d03e4604:	7030      	strb	r0, [r6, #0]
d03e4606:	4e4d      	ldr	r6, [pc, #308]	; (d03e473c <main+0x8e8>)
d03e4608:	f8ad 30a0 	strh.w	r3, [sp, #160]	; 0xa0
d03e460c:	8033      	strh	r3, [r6, #0]
d03e460e:	4e4c      	ldr	r6, [pc, #304]	; (d03e4740 <main+0x8ec>)
d03e4610:	f8ad 20a2 	strh.w	r2, [sp, #162]	; 0xa2
d03e4614:	8032      	strh	r2, [r6, #0]
d03e4616:	f88d 50a5 	strb.w	r5, [sp, #165]	; 0xa5
d03e461a:	f88d 00a6 	strb.w	r0, [sp, #166]	; 0xa6
d03e461e:	f88d 10a7 	strb.w	r1, [sp, #167]	; 0xa7
d03e4622:	f88d 40a8 	strb.w	r4, [sp, #168]	; 0xa8
d03e4626:	f001 8054 	beq.w	d03e56d2 <main+0x187e>
d03e462a:	f1bc 0f00 	cmp.w	ip, #0
d03e462e:	f041 80b5 	bne.w	d03e579c <main+0x1948>
d03e4632:	990a      	ldr	r1, [sp, #40]	; 0x28
d03e4634:	2900      	cmp	r1, #0
d03e4636:	f000 8677 	beq.w	d03e5328 <main+0x14d4>
d03e463a:	2b09      	cmp	r3, #9
d03e463c:	f301 8050 	bgt.w	d03e56e0 <main+0x188c>
d03e4640:	f1a3 0108 	sub.w	r1, r3, #8
d03e4644:	b289      	uxth	r1, r1
d03e4646:	2945      	cmp	r1, #69	; 0x45
d03e4648:	f241 840d 	bls.w	d03e5e66 <main+0x2012>
d03e464c:	493e      	ldr	r1, [pc, #248]	; (d03e4748 <main+0x8f4>)
d03e464e:	780c      	ldrb	r4, [r1, #0]
d03e4650:	2c04      	cmp	r4, #4
d03e4652:	f200 80a1 	bhi.w	d03e4798 <main+0x944>
d03e4656:	e8df f014 	tbh	[pc, r4, lsl #1]
d03e465a:	05bc      	.short	0x05bc
d03e465c:	0b620b9a 	.word	0x0b620b9a
d03e4660:	05600af1 	.word	0x05600af1
d03e4664:	2100      	movs	r1, #0
d03e4666:	910a      	str	r1, [sp, #40]	; 0x28
d03e4668:	2c00      	cmp	r4, #0
d03e466a:	d1bc      	bne.n	d03e45e6 <main+0x792>
d03e466c:	46a4      	mov	ip, r4
d03e466e:	e7c1      	b.n	d03e45f4 <main+0x7a0>
d03e4670:	f89a 5000 	ldrb.w	r5, [sl]
d03e4674:	f007 0303 	and.w	r3, r7, #3
d03e4678:	f89a 2001 	ldrb.w	r2, [sl, #1]
d03e467c:	f10d 013a 	add.w	r1, sp, #58	; 0x3a
d03e4680:	f89a 6002 	ldrb.w	r6, [sl, #2]
d03e4684:	a80e      	add	r0, sp, #56	; 0x38
d03e4686:	ea45 2402 	orr.w	r4, r5, r2, lsl #8
d03e468a:	9305      	str	r3, [sp, #20]
d03e468c:	f89a 3003 	ldrb.w	r3, [sl, #3]
d03e4690:	ea44 4206 	orr.w	r2, r4, r6, lsl #16
d03e4694:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e4698:	691b      	ldr	r3, [r3, #16]
d03e469a:	4798      	blx	r3
d03e469c:	f89a 6000 	ldrb.w	r6, [sl]
d03e46a0:	f89a 5001 	ldrb.w	r5, [sl, #1]
d03e46a4:	4604      	mov	r4, r0
d03e46a6:	f89a 2002 	ldrb.w	r2, [sl, #2]
d03e46aa:	a910      	add	r1, sp, #64	; 0x40
d03e46ac:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
d03e46b0:	f89a 3003 	ldrb.w	r3, [sl, #3]
d03e46b4:	a80f      	add	r0, sp, #60	; 0x3c
d03e46b6:	ea45 4202 	orr.w	r2, r5, r2, lsl #16
d03e46ba:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e46be:	699b      	ldr	r3, [r3, #24]
d03e46c0:	4798      	blx	r3
d03e46c2:	f89a 0000 	ldrb.w	r0, [sl]
d03e46c6:	f89a 1001 	ldrb.w	r1, [sl, #1]
d03e46ca:	f89a 2002 	ldrb.w	r2, [sl, #2]
d03e46ce:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e46d2:	f89a 3003 	ldrb.w	r3, [sl, #3]
d03e46d6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e46da:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e46de:	69db      	ldr	r3, [r3, #28]
d03e46e0:	4798      	blx	r3
d03e46e2:	9b05      	ldr	r3, [sp, #20]
d03e46e4:	f8bd 1036 	ldrh.w	r1, [sp, #54]	; 0x36
d03e46e8:	ea43 0004 	orr.w	r0, r3, r4
d03e46ec:	f8bd 4034 	ldrh.w	r4, [sp, #52]	; 0x34
d03e46f0:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d03e46f2:	9a10      	ldr	r2, [sp, #64]	; 0x40
d03e46f4:	f010 00ff 	ands.w	r0, r0, #255	; 0xff
d03e46f8:	4423      	add	r3, r4
d03e46fa:	440a      	add	r2, r1
d03e46fc:	bf18      	it	ne
d03e46fe:	2501      	movne	r5, #1
d03e4700:	b21b      	sxth	r3, r3
d03e4702:	bf08      	it	eq
d03e4704:	2500      	moveq	r5, #0
d03e4706:	b212      	sxth	r2, r2
d03e4708:	f000 0e03 	and.w	lr, r0, #3
d03e470c:	2b00      	cmp	r3, #0
d03e470e:	f000 0101 	and.w	r1, r0, #1
d03e4712:	f000 0402 	and.w	r4, r0, #2
d03e4716:	f8ad 3034 	strh.w	r3, [sp, #52]	; 0x34
d03e471a:	f8ad 2036 	strh.w	r2, [sp, #54]	; 0x36
d03e471e:	f6bf af40 	bge.w	d03e45a2 <main+0x74e>
d03e4722:	2a00      	cmp	r2, #0
d03e4724:	f8ad 9034 	strh.w	r9, [sp, #52]	; 0x34
d03e4728:	f2c1 8034 	blt.w	d03e5794 <main+0x1940>
d03e472c:	2300      	movs	r3, #0
d03e472e:	e740      	b.n	d03e45b2 <main+0x75e>
d03e4730:	d03e8ff3 	.word	0xd03e8ff3
d03e4734:	d03e8ff2 	.word	0xd03e8ff2
d03e4738:	d03e8ffa 	.word	0xd03e8ffa
d03e473c:	d03e8ff6 	.word	0xd03e8ff6
d03e4740:	d03e8ff8 	.word	0xd03e8ff8
d03e4744:	d03e8ff4 	.word	0xd03e8ff4
d03e4748:	d03e8ff5 	.word	0xd03e8ff5
d03e474c:	2100      	movs	r1, #0
d03e474e:	4c4e      	ldr	r4, [pc, #312]	; (d03e4888 <main+0xa34>)
d03e4750:	f5b3 7fab 	cmp.w	r3, #342	; 0x156
d03e4754:	7020      	strb	r0, [r4, #0]
d03e4756:	f2c1 82df 	blt.w	d03e5d18 <main+0x1ec4>
d03e475a:	f101 0478 	add.w	r4, r1, #120	; 0x78
d03e475e:	4294      	cmp	r4, r2
d03e4760:	4621      	mov	r1, r4
d03e4762:	bfcc      	ite	gt
d03e4764:	2400      	movgt	r4, #0
d03e4766:	2401      	movle	r4, #1
d03e4768:	f5b3 7fc0 	cmp.w	r3, #384	; 0x180
d03e476c:	da02      	bge.n	d03e4774 <main+0x920>
d03e476e:	2c00      	cmp	r4, #0
d03e4770:	f041 8640 	bne.w	d03e63f4 <main+0x25a0>
d03e4774:	f5a3 73c6 	sub.w	r3, r3, #396	; 0x18c
d03e4778:	b29b      	uxth	r3, r3
d03e477a:	2b29      	cmp	r3, #41	; 0x29
d03e477c:	f201 82cc 	bhi.w	d03e5d18 <main+0x1ec4>
d03e4780:	2c00      	cmp	r4, #0
d03e4782:	f001 82c9 	beq.w	d03e5d18 <main+0x1ec4>
d03e4786:	311e      	adds	r1, #30
d03e4788:	428a      	cmp	r2, r1
d03e478a:	f281 82c5 	bge.w	d03e5d18 <main+0x1ec4>
d03e478e:	2101      	movs	r1, #1
d03e4790:	f7fc febe 	bl	d03e1510 <ui_select_program_delta>
d03e4794:	4b3d      	ldr	r3, [pc, #244]	; (d03e488c <main+0xa38>)
d03e4796:	781c      	ldrb	r4, [r3, #0]
d03e4798:	9b05      	ldr	r3, [sp, #20]
d03e479a:	2b03      	cmp	r3, #3
d03e479c:	f000 8521 	beq.w	d03e51e2 <main+0x138e>
d03e47a0:	2c04      	cmp	r4, #4
d03e47a2:	f000 84ee 	beq.w	d03e5182 <main+0x132e>
d03e47a6:	9b07      	ldr	r3, [sp, #28]
d03e47a8:	2b00      	cmp	r3, #0
d03e47aa:	f040 8340 	bne.w	d03e4e2e <main+0xfda>
d03e47ae:	9b06      	ldr	r3, [sp, #24]
d03e47b0:	2b00      	cmp	r3, #0
d03e47b2:	f040 8570 	bne.w	d03e5296 <main+0x1442>
d03e47b6:	9b04      	ldr	r3, [sp, #16]
d03e47b8:	071c      	lsls	r4, r3, #28
d03e47ba:	f100 8540 	bmi.w	d03e523e <main+0x13ea>
d03e47be:	9b09      	ldr	r3, [sp, #36]	; 0x24
d03e47c0:	2b00      	cmp	r3, #0
d03e47c2:	f040 849f 	bne.w	d03e5104 <main+0x12b0>
d03e47c6:	9b04      	ldr	r3, [sp, #16]
d03e47c8:	0698      	lsls	r0, r3, #26
d03e47ca:	d538      	bpl.n	d03e483e <main+0x9ea>
d03e47cc:	9907      	ldr	r1, [sp, #28]
d03e47ce:	220a      	movs	r2, #10
d03e47d0:	2301      	movs	r3, #1
d03e47d2:	2900      	cmp	r1, #0
d03e47d4:	f040 849e 	bne.w	d03e5114 <main+0x12c0>
d03e47d8:	4a2b      	ldr	r2, [pc, #172]	; (d03e4888 <main+0xa34>)
d03e47da:	7812      	ldrb	r2, [r2, #0]
d03e47dc:	2a09      	cmp	r2, #9
d03e47de:	f000 834d 	beq.w	d03e4e7c <main+0x1028>
d03e47e2:	492b      	ldr	r1, [pc, #172]	; (d03e4890 <main+0xa3c>)
d03e47e4:	2a0f      	cmp	r2, #15
d03e47e6:	5c8c      	ldrb	r4, [r1, r2]
d03e47e8:	d805      	bhi.n	d03e47f6 <main+0x9a2>
d03e47ea:	4423      	add	r3, r4
d03e47ec:	b21b      	sxth	r3, r3
d03e47ee:	f383 0307 	usat	r3, #7, r3
d03e47f2:	b2dc      	uxtb	r4, r3
d03e47f4:	548c      	strb	r4, [r1, r2]
d03e47f6:	4827      	ldr	r0, [pc, #156]	; (d03e4894 <main+0xa40>)
d03e47f8:	2301      	movs	r3, #1
d03e47fa:	6801      	ldr	r1, [r0, #0]
d03e47fc:	4093      	lsls	r3, r2
d03e47fe:	430b      	orrs	r3, r1
d03e4800:	0621      	lsls	r1, r4, #24
d03e4802:	6003      	str	r3, [r0, #0]
d03e4804:	f100 834d 	bmi.w	d03e4ea2 <main+0x104e>
d03e4808:	4b23      	ldr	r3, [pc, #140]	; (d03e4898 <main+0xa44>)
d03e480a:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
d03e480e:	2800      	cmp	r0, #0
d03e4810:	f001 80da 	beq.w	d03e59c8 <main+0x1b74>
d03e4814:	2300      	movs	r3, #0
d03e4816:	e002      	b.n	d03e481e <main+0x9ca>
d03e4818:	2b60      	cmp	r3, #96	; 0x60
d03e481a:	f000 8568 	beq.w	d03e52ee <main+0x149a>
d03e481e:	f810 1023 	ldrb.w	r1, [r0, r3, lsl #2]
d03e4822:	b2da      	uxtb	r2, r3
d03e4824:	3301      	adds	r3, #1
d03e4826:	2900      	cmp	r1, #0
d03e4828:	d1f6      	bne.n	d03e4818 <main+0x9c4>
d03e482a:	1c53      	adds	r3, r2, #1
d03e482c:	b2db      	uxtb	r3, r3
d03e482e:	2b07      	cmp	r3, #7
d03e4830:	f200 855d 	bhi.w	d03e52ee <main+0x149a>
d03e4834:	4a19      	ldr	r2, [pc, #100]	; (d03e489c <main+0xa48>)
d03e4836:	7813      	ldrb	r3, [r2, #0]
d03e4838:	428b      	cmp	r3, r1
d03e483a:	bf88      	it	hi
d03e483c:	7011      	strbhi	r1, [r2, #0]
d03e483e:	4a18      	ldr	r2, [pc, #96]	; (d03e48a0 <main+0xa4c>)
d03e4840:	4918      	ldr	r1, [pc, #96]	; (d03e48a4 <main+0xa50>)
d03e4842:	7813      	ldrb	r3, [r2, #0]
d03e4844:	700f      	strb	r7, [r1, #0]
d03e4846:	b12b      	cbz	r3, d03e4854 <main+0xa00>
d03e4848:	3b01      	subs	r3, #1
d03e484a:	b2db      	uxtb	r3, r3
d03e484c:	7013      	strb	r3, [r2, #0]
d03e484e:	b90b      	cbnz	r3, d03e4854 <main+0xa00>
d03e4850:	4a15      	ldr	r2, [pc, #84]	; (d03e48a8 <main+0xa54>)
d03e4852:	7013      	strb	r3, [r2, #0]
d03e4854:	4b15      	ldr	r3, [pc, #84]	; (d03e48ac <main+0xa58>)
d03e4856:	781d      	ldrb	r5, [r3, #0]
d03e4858:	2d00      	cmp	r5, #0
d03e485a:	f040 87fd 	bne.w	d03e5858 <main+0x1a04>
d03e485e:	4b0a      	ldr	r3, [pc, #40]	; (d03e4888 <main+0xa34>)
d03e4860:	490b      	ldr	r1, [pc, #44]	; (d03e4890 <main+0xa3c>)
d03e4862:	781b      	ldrb	r3, [r3, #0]
d03e4864:	f88d 5040 	strb.w	r5, [sp, #64]	; 0x40
d03e4868:	56ca      	ldrsb	r2, [r1, r3]
d03e486a:	f88d 50a0 	strb.w	r5, [sp, #160]	; 0xa0
d03e486e:	2a00      	cmp	r2, #0
d03e4870:	5cc9      	ldrb	r1, [r1, r3]
d03e4872:	f2c0 83ae 	blt.w	d03e4fd2 <main+0x117e>
d03e4876:	4a08      	ldr	r2, [pc, #32]	; (d03e4898 <main+0xa44>)
d03e4878:	f852 4021 	ldr.w	r4, [r2, r1, lsl #2]
d03e487c:	2c00      	cmp	r4, #0
d03e487e:	f000 83a8 	beq.w	d03e4fd2 <main+0x117e>
d03e4882:	462e      	mov	r6, r5
d03e4884:	e016      	b.n	d03e48b4 <main+0xa60>
d03e4886:	bf00      	nop
d03e4888:	d03e8ffb 	.word	0xd03e8ffb
d03e488c:	d03e8ff5 	.word	0xd03e8ff5
d03e4890:	d03e8d64 	.word	0xd03e8d64
d03e4894:	d03e8fe4 	.word	0xd03e8fe4
d03e4898:	d03e8678 	.word	0xd03e8678
d03e489c:	d03e902a 	.word	0xd03e902a
d03e48a0:	d03e9024 	.word	0xd03e9024
d03e48a4:	d03e8ff2 	.word	0xd03e8ff2
d03e48a8:	d03e8ffc 	.word	0xd03e8ffc
d03e48ac:	d03e8ff1 	.word	0xd03e8ff1
d03e48b0:	2e60      	cmp	r6, #96	; 0x60
d03e48b2:	d007      	beq.n	d03e48c4 <main+0xa70>
d03e48b4:	f814 0026 	ldrb.w	r0, [r4, r6, lsl #2]
d03e48b8:	b2f2      	uxtb	r2, r6
d03e48ba:	3601      	adds	r6, #1
d03e48bc:	2800      	cmp	r0, #0
d03e48be:	d1f7      	bne.n	d03e48b0 <main+0xa5c>
d03e48c0:	1c56      	adds	r6, r2, #1
d03e48c2:	b2f6      	uxtb	r6, r6
d03e48c4:	4ac8      	ldr	r2, [pc, #800]	; (d03e4be8 <main+0xd94>)
d03e48c6:	7817      	ldrb	r7, [r2, #0]
d03e48c8:	4ac8      	ldr	r2, [pc, #800]	; (d03e4bec <main+0xd98>)
d03e48ca:	2f04      	cmp	r7, #4
d03e48cc:	f882 9000 	strb.w	r9, [r2]
d03e48d0:	f040 84a4 	bne.w	d03e521c <main+0x13c8>
d03e48d4:	f89b 2000 	ldrb.w	r2, [fp]
d03e48d8:	b122      	cbz	r2, d03e48e4 <main+0xa90>
d03e48da:	f89b 2001 	ldrb.w	r2, [fp, #1]
d03e48de:	429a      	cmp	r2, r3
d03e48e0:	f001 80c4 	beq.w	d03e5a6c <main+0x1c18>
d03e48e4:	f89b 2008 	ldrb.w	r2, [fp, #8]
d03e48e8:	b122      	cbz	r2, d03e48f4 <main+0xaa0>
d03e48ea:	f89b 2009 	ldrb.w	r2, [fp, #9]
d03e48ee:	429a      	cmp	r2, r3
d03e48f0:	f001 8110 	beq.w	d03e5b14 <main+0x1cc0>
d03e48f4:	f89b 2010 	ldrb.w	r2, [fp, #16]
d03e48f8:	b122      	cbz	r2, d03e4904 <main+0xab0>
d03e48fa:	f89b 2011 	ldrb.w	r2, [fp, #17]
d03e48fe:	429a      	cmp	r2, r3
d03e4900:	f001 810f 	beq.w	d03e5b22 <main+0x1cce>
d03e4904:	f89b 2018 	ldrb.w	r2, [fp, #24]
d03e4908:	b122      	cbz	r2, d03e4914 <main+0xac0>
d03e490a:	f89b 2019 	ldrb.w	r2, [fp, #25]
d03e490e:	429a      	cmp	r2, r3
d03e4910:	f001 810e 	beq.w	d03e5b30 <main+0x1cdc>
d03e4914:	f89b 2020 	ldrb.w	r2, [fp, #32]
d03e4918:	b122      	cbz	r2, d03e4924 <main+0xad0>
d03e491a:	f89b 2021 	ldrb.w	r2, [fp, #33]	; 0x21
d03e491e:	429a      	cmp	r2, r3
d03e4920:	f001 810d 	beq.w	d03e5b3e <main+0x1cea>
d03e4924:	f89b 2028 	ldrb.w	r2, [fp, #40]	; 0x28
d03e4928:	b122      	cbz	r2, d03e4934 <main+0xae0>
d03e492a:	f89b 2029 	ldrb.w	r2, [fp, #41]	; 0x29
d03e492e:	429a      	cmp	r2, r3
d03e4930:	f001 8111 	beq.w	d03e5b56 <main+0x1d02>
d03e4934:	ac10      	add	r4, sp, #64	; 0x40
d03e4936:	4aae      	ldr	r2, [pc, #696]	; (d03e4bf0 <main+0xd9c>)
d03e4938:	7812      	ldrb	r2, [r2, #0]
d03e493a:	2a00      	cmp	r2, #0
d03e493c:	f041 8060 	bne.w	d03e5a00 <main+0x1bac>
d03e4940:	4aac      	ldr	r2, [pc, #688]	; (d03e4bf4 <main+0xda0>)
d03e4942:	7812      	ldrb	r2, [r2, #0]
d03e4944:	48ac      	ldr	r0, [pc, #688]	; (d03e4bf8 <main+0xda4>)
d03e4946:	4ead      	ldr	r6, [pc, #692]	; (d03e4bfc <main+0xda8>)
d03e4948:	1838      	adds	r0, r7, r0
d03e494a:	f8df c2b0 	ldr.w	ip, [pc, #688]	; d03e4bfc <main+0xda8>
d03e494e:	199e      	adds	r6, r3, r6
d03e4950:	4bab      	ldr	r3, [pc, #684]	; (d03e4c00 <main+0xdac>)
d03e4952:	f080 4001 	eor.w	r0, r0, #2164260864	; 0x81000000
d03e4956:	4494      	add	ip, r2
d03e4958:	781f      	ldrb	r7, [r3, #0]
d03e495a:	f480 10e4 	eor.w	r0, r0, #1867776	; 0x1c8000
d03e495e:	4ba9      	ldr	r3, [pc, #676]	; (d03e4c04 <main+0xdb0>)
d03e4960:	f1a7 47c3 	sub.w	r7, r7, #1635778560	; 0x61800000
d03e4964:	4aa8      	ldr	r2, [pc, #672]	; (d03e4c08 <main+0xdb4>)
d03e4966:	f480 50ee 	eor.w	r0, r0, #7616	; 0x1dc0
d03e496a:	f8b3 e000 	ldrh.w	lr, [r3]
d03e496e:	f5a7 0791 	sub.w	r7, r7, #4751360	; 0x488000
d03e4972:	4ba6      	ldr	r3, [pc, #664]	; (d03e4c0c <main+0xdb8>)
d03e4974:	f080 0005 	eor.w	r0, r0, #5
d03e4978:	f1ae 4ec3 	sub.w	lr, lr, #1635778560	; 0x61800000
d03e497c:	f2a7 6747 	subw	r7, r7, #1607	; 0x647
d03e4980:	881b      	ldrh	r3, [r3, #0]
d03e4982:	eb06 1680 	add.w	r6, r6, r0, lsl #6
d03e4986:	f5ae 0e91 	sub.w	lr, lr, #4751360	; 0x488000
d03e498a:	7811      	ldrb	r1, [r2, #0]
d03e498c:	f1a3 43c3 	sub.w	r3, r3, #1635778560	; 0x61800000
d03e4990:	eb06 0690 	add.w	r6, r6, r0, lsr #2
d03e4994:	f2ae 6e47 	subw	lr, lr, #1607	; 0x647
d03e4998:	f5a3 0391 	sub.w	r3, r3, #4751360	; 0x488000
d03e499c:	f1a1 41c3 	sub.w	r1, r1, #1635778560	; 0x61800000
d03e49a0:	4046      	eors	r6, r0
d03e49a2:	489b      	ldr	r0, [pc, #620]	; (d03e4c10 <main+0xdbc>)
d03e49a4:	f2a3 6347 	subw	r3, r3, #1607	; 0x647
d03e49a8:	f5a1 0191 	sub.w	r1, r1, #4751360	; 0x488000
d03e49ac:	eb07 1786 	add.w	r7, r7, r6, lsl #6
d03e49b0:	f2a1 6147 	subw	r1, r1, #1607	; 0x647
d03e49b4:	eb07 0796 	add.w	r7, r7, r6, lsr #2
d03e49b8:	4077      	eors	r7, r6
d03e49ba:	f100 0610 	add.w	r6, r0, #16
d03e49be:	eb0c 1c87 	add.w	ip, ip, r7, lsl #6
d03e49c2:	eb0c 0c97 	add.w	ip, ip, r7, lsr #2
d03e49c6:	ea8c 0507 	eor.w	r5, ip, r7
d03e49ca:	4f92      	ldr	r7, [pc, #584]	; (d03e4c14 <main+0xdc0>)
d03e49cc:	eb0e 1285 	add.w	r2, lr, r5, lsl #6
d03e49d0:	eb02 0295 	add.w	r2, r2, r5, lsr #2
d03e49d4:	ea82 0c05 	eor.w	ip, r2, r5
d03e49d8:	4d8f      	ldr	r5, [pc, #572]	; (d03e4c18 <main+0xdc4>)
d03e49da:	eb03 128c 	add.w	r2, r3, ip, lsl #6
d03e49de:	eb02 039c 	add.w	r3, r2, ip, lsr #2
d03e49e2:	ea83 020c 	eor.w	r2, r3, ip
d03e49e6:	eb01 1382 	add.w	r3, r1, r2, lsl #6
d03e49ea:	eb03 0392 	add.w	r3, r3, r2, lsr #2
d03e49ee:	4053      	eors	r3, r2
d03e49f0:	f810 2f01 	ldrb.w	r2, [r0, #1]!
d03e49f4:	f817 1f01 	ldrb.w	r1, [r7, #1]!
d03e49f8:	f1a2 42c3 	sub.w	r2, r2, #1635778560	; 0x61800000
d03e49fc:	f815 cf01 	ldrb.w	ip, [r5, #1]!
d03e4a00:	f1a1 41c3 	sub.w	r1, r1, #1635778560	; 0x61800000
d03e4a04:	4286      	cmp	r6, r0
d03e4a06:	f5a2 0291 	sub.w	r2, r2, #4751360	; 0x488000
d03e4a0a:	f1ac 4cc3 	sub.w	ip, ip, #1635778560	; 0x61800000
d03e4a0e:	f5a1 0191 	sub.w	r1, r1, #4751360	; 0x488000
d03e4a12:	f2a2 6247 	subw	r2, r2, #1607	; 0x647
d03e4a16:	f5ac 0c91 	sub.w	ip, ip, #4751360	; 0x488000
d03e4a1a:	f2a1 6147 	subw	r1, r1, #1607	; 0x647
d03e4a1e:	eb02 1283 	add.w	r2, r2, r3, lsl #6
d03e4a22:	f2ac 6c47 	subw	ip, ip, #1607	; 0x647
d03e4a26:	eb02 0293 	add.w	r2, r2, r3, lsr #2
d03e4a2a:	ea83 0302 	eor.w	r3, r3, r2
d03e4a2e:	eb01 1183 	add.w	r1, r1, r3, lsl #6
d03e4a32:	eb01 0193 	add.w	r1, r1, r3, lsr #2
d03e4a36:	ea83 0301 	eor.w	r3, r3, r1
d03e4a3a:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d03e4a3e:	eb0c 0c93 	add.w	ip, ip, r3, lsr #2
d03e4a42:	ea8c 0303 	eor.w	r3, ip, r3
d03e4a46:	d1d3      	bne.n	d03e49f0 <main+0xb9c>
d03e4a48:	4a74      	ldr	r2, [pc, #464]	; (d03e4c1c <main+0xdc8>)
d03e4a4a:	7810      	ldrb	r0, [r2, #0]
d03e4a4c:	4a74      	ldr	r2, [pc, #464]	; (d03e4c20 <main+0xdcc>)
d03e4a4e:	6811      	ldr	r1, [r2, #0]
d03e4a50:	f000 0201 	and.w	r2, r0, #1
d03e4a54:	f1a2 42c3 	sub.w	r2, r2, #1635778560	; 0x61800000
d03e4a58:	f5a2 0291 	sub.w	r2, r2, #4751360	; 0x488000
d03e4a5c:	f2a2 6247 	subw	r2, r2, #1607	; 0x647
d03e4a60:	eb02 1283 	add.w	r2, r2, r3, lsl #6
d03e4a64:	eb02 0293 	add.w	r2, r2, r3, lsr #2
d03e4a68:	4053      	eors	r3, r2
d03e4a6a:	4299      	cmp	r1, r3
d03e4a6c:	d103      	bne.n	d03e4a76 <main+0xc22>
d03e4a6e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d03e4a70:	4282      	cmp	r2, r0
d03e4a72:	f000 81d3 	beq.w	d03e4e1c <main+0xfc8>
d03e4a76:	496a      	ldr	r1, [pc, #424]	; (d03e4c20 <main+0xdcc>)
d03e4a78:	2201      	movs	r2, #1
d03e4a7a:	600b      	str	r3, [r1, #0]
d03e4a7c:	4b69      	ldr	r3, [pc, #420]	; (d03e4c24 <main+0xdd0>)
d03e4a7e:	701a      	strb	r2, [r3, #0]
d03e4a80:	f7fe f86e 	bl	d03e2b60 <ui_redraw_backbuffer>
d03e4a84:	4b67      	ldr	r3, [pc, #412]	; (d03e4c24 <main+0xdd0>)
d03e4a86:	f883 9000 	strb.w	r9, [r3]
d03e4a8a:	4a67      	ldr	r2, [pc, #412]	; (d03e4c28 <main+0xdd4>)
d03e4a8c:	f89a 100c 	ldrb.w	r1, [sl, #12]
d03e4a90:	7813      	ldrb	r3, [r2, #0]
d03e4a92:	f89a 000d 	ldrb.w	r0, [sl, #13]
d03e4a96:	f1c3 0301 	rsb	r3, r3, #1
d03e4a9a:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d03e4a9e:	b2db      	uxtb	r3, r3
d03e4aa0:	7013      	strb	r3, [r2, #0]
d03e4aa2:	f89a 200e 	ldrb.w	r2, [sl, #14]
d03e4aa6:	2b00      	cmp	r3, #0
d03e4aa8:	f000 828b 	beq.w	d03e4fc2 <main+0x116e>
d03e4aac:	495f      	ldr	r1, [pc, #380]	; (d03e4c2c <main+0xdd8>)
d03e4aae:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d03e4ab2:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e4ab6:	6809      	ldr	r1, [r1, #0]
d03e4ab8:	485d      	ldr	r0, [pc, #372]	; (d03e4c30 <main+0xddc>)
d03e4aba:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e4abe:	6800      	ldr	r0, [r0, #0]
d03e4ac0:	681b      	ldr	r3, [r3, #0]
d03e4ac2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d03e4ac4:	4798      	blx	r3
d03e4ac6:	f89a 000c 	ldrb.w	r0, [sl, #12]
d03e4aca:	f89a 100d 	ldrb.w	r1, [sl, #13]
d03e4ace:	f89a 200e 	ldrb.w	r2, [sl, #14]
d03e4ad2:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e4ad6:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e4ada:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e4ade:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e4ae2:	685b      	ldr	r3, [r3, #4]
d03e4ae4:	681b      	ldr	r3, [r3, #0]
d03e4ae6:	4798      	blx	r3
d03e4ae8:	f89b 3000 	ldrb.w	r3, [fp]
d03e4aec:	f89b 2008 	ldrb.w	r2, [fp, #8]
d03e4af0:	3b00      	subs	r3, #0
d03e4af2:	bf18      	it	ne
d03e4af4:	2301      	movne	r3, #1
d03e4af6:	b102      	cbz	r2, d03e4afa <main+0xca6>
d03e4af8:	3301      	adds	r3, #1
d03e4afa:	f89b 2010 	ldrb.w	r2, [fp, #16]
d03e4afe:	b10a      	cbz	r2, d03e4b04 <main+0xcb0>
d03e4b00:	3301      	adds	r3, #1
d03e4b02:	b2db      	uxtb	r3, r3
d03e4b04:	f89b 2018 	ldrb.w	r2, [fp, #24]
d03e4b08:	b10a      	cbz	r2, d03e4b0e <main+0xcba>
d03e4b0a:	3301      	adds	r3, #1
d03e4b0c:	b2db      	uxtb	r3, r3
d03e4b0e:	f89b 2020 	ldrb.w	r2, [fp, #32]
d03e4b12:	b10a      	cbz	r2, d03e4b18 <main+0xcc4>
d03e4b14:	3301      	adds	r3, #1
d03e4b16:	b2db      	uxtb	r3, r3
d03e4b18:	f89b 2028 	ldrb.w	r2, [fp, #40]	; 0x28
d03e4b1c:	b10a      	cbz	r2, d03e4b22 <main+0xcce>
d03e4b1e:	3301      	adds	r3, #1
d03e4b20:	b2db      	uxtb	r3, r3
d03e4b22:	4a44      	ldr	r2, [pc, #272]	; (d03e4c34 <main+0xde0>)
d03e4b24:	4d44      	ldr	r5, [pc, #272]	; (d03e4c38 <main+0xde4>)
d03e4b26:	6811      	ldr	r1, [r2, #0]
d03e4b28:	2206      	movs	r2, #6
d03e4b2a:	682d      	ldr	r5, [r5, #0]
d03e4b2c:	f8d8 0000 	ldr.w	r0, [r8]
d03e4b30:	9103      	str	r1, [sp, #12]
d03e4b32:	2160      	movs	r1, #96	; 0x60
d03e4b34:	9002      	str	r0, [sp, #8]
d03e4b36:	4620      	mov	r0, r4
d03e4b38:	e9cd 2500 	strd	r2, r5, [sp]
d03e4b3c:	4a3f      	ldr	r2, [pc, #252]	; (d03e4c3c <main+0xde8>)
d03e4b3e:	f001 fe9b 	bl	d03e6878 <sniprintf>
d03e4b42:	f89a 500c 	ldrb.w	r5, [sl, #12]
d03e4b46:	f89a 100d 	ldrb.w	r1, [sl, #13]
d03e4b4a:	2019      	movs	r0, #25
d03e4b4c:	f89a 200e 	ldrb.w	r2, [sl, #14]
d03e4b50:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e4b54:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e4b58:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e4b5c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e4b60:	685b      	ldr	r3, [r3, #4]
d03e4b62:	68db      	ldr	r3, [r3, #12]
d03e4b64:	4798      	blx	r3
d03e4b66:	f89a 000c 	ldrb.w	r0, [sl, #12]
d03e4b6a:	f89a 500d 	ldrb.w	r5, [sl, #13]
d03e4b6e:	4622      	mov	r2, r4
d03e4b70:	f89a 400e 	ldrb.w	r4, [sl, #14]
d03e4b74:	2118      	movs	r1, #24
d03e4b76:	ea40 2505 	orr.w	r5, r0, r5, lsl #8
d03e4b7a:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e4b7e:	f44f 7087 	mov.w	r0, #270	; 0x10e
d03e4b82:	ea45 4404 	orr.w	r4, r5, r4, lsl #16
d03e4b86:	ea44 6303 	orr.w	r3, r4, r3, lsl #24
d03e4b8a:	685b      	ldr	r3, [r3, #4]
d03e4b8c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e4b8e:	4798      	blx	r3
d03e4b90:	f89a 400c 	ldrb.w	r4, [sl, #12]
d03e4b94:	f89a 100d 	ldrb.w	r1, [sl, #13]
d03e4b98:	2018      	movs	r0, #24
d03e4b9a:	f89a 200e 	ldrb.w	r2, [sl, #14]
d03e4b9e:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d03e4ba2:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e4ba6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e4baa:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e4bae:	685b      	ldr	r3, [r3, #4]
d03e4bb0:	68db      	ldr	r3, [r3, #12]
d03e4bb2:	4798      	blx	r3
d03e4bb4:	4b22      	ldr	r3, [pc, #136]	; (d03e4c40 <main+0xdec>)
d03e4bb6:	f89a 500c 	ldrb.w	r5, [sl, #12]
d03e4bba:	f44f 7192 	mov.w	r1, #292	; 0x124
d03e4bbe:	f89a 200d 	ldrb.w	r2, [sl, #13]
d03e4bc2:	2058      	movs	r0, #88	; 0x58
d03e4bc4:	781b      	ldrb	r3, [r3, #0]
d03e4bc6:	f89a 400e 	ldrb.w	r4, [sl, #14]
d03e4bca:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
d03e4bce:	2b00      	cmp	r3, #0
d03e4bd0:	f000 8180 	beq.w	d03e4ed4 <main+0x1080>
d03e4bd4:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e4bd8:	ea42 4404 	orr.w	r4, r2, r4, lsl #16
d03e4bdc:	4a18      	ldr	r2, [pc, #96]	; (d03e4c40 <main+0xdec>)
d03e4bde:	ea44 6303 	orr.w	r3, r4, r3, lsl #24
d03e4be2:	685b      	ldr	r3, [r3, #4]
d03e4be4:	e02e      	b.n	d03e4c44 <main+0xdf0>
d03e4be6:	bf00      	nop
d03e4be8:	d03e8ff5 	.word	0xd03e8ff5
d03e4bec:	d03e9028 	.word	0xd03e9028
d03e4bf0:	d03e9025 	.word	0xd03e9025
d03e4bf4:	d03e902a 	.word	0xd03e902a
d03e4bf8:	05a6126a 	.word	0x05a6126a
d03e4bfc:	9e3779b9 	.word	0x9e3779b9
d03e4c00:	d03e8ff0 	.word	0xd03e8ff0
d03e4c04:	d03e8f92 	.word	0xd03e8f92
d03e4c08:	d03e8d88 	.word	0xd03e8d88
d03e4c0c:	d03e8d8a 	.word	0xd03e8d8a
d03e4c10:	d03e8d63 	.word	0xd03e8d63
d03e4c14:	d03e8d73 	.word	0xd03e8d73
d03e4c18:	d03e8d53 	.word	0xd03e8d53
d03e4c1c:	d03e8ff3 	.word	0xd03e8ff3
d03e4c20:	d03e8fec 	.word	0xd03e8fec
d03e4c24:	d03e8fe8 	.word	0xd03e8fe8
d03e4c28:	d03e8d29 	.word	0xd03e8d29
d03e4c2c:	d03e8d30 	.word	0xd03e8d30
d03e4c30:	d03e8d2c 	.word	0xd03e8d2c
d03e4c34:	d03e8d84 	.word	0xd03e8d84
d03e4c38:	d03e8fa0 	.word	0xd03e8fa0
d03e4c3c:	d03e7fb8 	.word	0xd03e7fb8
d03e4c40:	d03e8ffc 	.word	0xd03e8ffc
d03e4c44:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e4c46:	4798      	blx	r3
d03e4c48:	4b97      	ldr	r3, [pc, #604]	; (d03e4ea8 <main+0x1054>)
d03e4c4a:	781b      	ldrb	r3, [r3, #0]
d03e4c4c:	2b01      	cmp	r3, #1
d03e4c4e:	f000 8150 	beq.w	d03e4ef2 <main+0x109e>
d03e4c52:	2b04      	cmp	r3, #4
d03e4c54:	f000 84d4 	beq.w	d03e5600 <main+0x17ac>
d03e4c58:	2b00      	cmp	r3, #0
d03e4c5a:	f000 8383 	beq.w	d03e5364 <main+0x1510>
d03e4c5e:	f89a 400c 	ldrb.w	r4, [sl, #12]
d03e4c62:	201a      	movs	r0, #26
d03e4c64:	f89a 100d 	ldrb.w	r1, [sl, #13]
d03e4c68:	f89a 200e 	ldrb.w	r2, [sl, #14]
d03e4c6c:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d03e4c70:	4c8e      	ldr	r4, [pc, #568]	; (d03e4eac <main+0x1058>)
d03e4c72:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e4c76:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e4c7a:	498d      	ldr	r1, [pc, #564]	; (d03e4eb0 <main+0x105c>)
d03e4c7c:	7825      	ldrb	r5, [r4, #0]
d03e4c7e:	f9b1 4000 	ldrsh.w	r4, [r1]
d03e4c82:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e4c86:	498b      	ldr	r1, [pc, #556]	; (d03e4eb4 <main+0x1060>)
d03e4c88:	2d00      	cmp	r5, #0
d03e4c8a:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d03e4c8e:	685b      	ldr	r3, [r3, #4]
d03e4c90:	f9b1 1000 	ldrsh.w	r1, [r1]
d03e4c94:	bf14      	ite	ne
d03e4c96:	261e      	movne	r6, #30
d03e4c98:	2618      	moveq	r6, #24
d03e4c9a:	f5b4 7fec 	cmp.w	r4, #472	; 0x1d8
d03e4c9e:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d03e4ca2:	68db      	ldr	r3, [r3, #12]
d03e4ca4:	bfa8      	it	ge
d03e4ca6:	f44f 74ec 	movge.w	r4, #472	; 0x1d8
d03e4caa:	f5b1 7f9b 	cmp.w	r1, #310	; 0x136
d03e4cae:	b2a2      	uxth	r2, r4
d03e4cb0:	bfa8      	it	ge
d03e4cb2:	f44f 719b 	movge.w	r1, #310	; 0x136
d03e4cb6:	9204      	str	r2, [sp, #16]
d03e4cb8:	9105      	str	r1, [sp, #20]
d03e4cba:	4798      	blx	r3
d03e4cbc:	f89a 300c 	ldrb.w	r3, [sl, #12]
d03e4cc0:	4620      	mov	r0, r4
d03e4cc2:	f89a 700d 	ldrb.w	r7, [sl, #13]
d03e4cc6:	f89a 500e 	ldrb.w	r5, [sl, #14]
d03e4cca:	ea43 2207 	orr.w	r2, r3, r7, lsl #8
d03e4cce:	f89a 700f 	ldrb.w	r7, [sl, #15]
d03e4cd2:	9905      	ldr	r1, [sp, #20]
d03e4cd4:	230a      	movs	r3, #10
d03e4cd6:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d03e4cda:	2202      	movs	r2, #2
d03e4cdc:	ea45 6707 	orr.w	r7, r5, r7, lsl #24
d03e4ce0:	b28d      	uxth	r5, r1
d03e4ce2:	687f      	ldr	r7, [r7, #4]
d03e4ce4:	687f      	ldr	r7, [r7, #4]
d03e4ce6:	47b8      	blx	r7
d03e4ce8:	f89a 700c 	ldrb.w	r7, [sl, #12]
d03e4cec:	f89a 300d 	ldrb.w	r3, [sl, #13]
d03e4cf0:	4620      	mov	r0, r4
d03e4cf2:	f89a e00e 	ldrb.w	lr, [sl, #14]
d03e4cf6:	2208      	movs	r2, #8
d03e4cf8:	ea47 2403 	orr.w	r4, r7, r3, lsl #8
d03e4cfc:	f89a c00f 	ldrb.w	ip, [sl, #15]
d03e4d00:	9905      	ldr	r1, [sp, #20]
d03e4d02:	2302      	movs	r3, #2
d03e4d04:	ea44 470e 	orr.w	r7, r4, lr, lsl #16
d03e4d08:	ea47 640c 	orr.w	r4, r7, ip, lsl #24
d03e4d0c:	6864      	ldr	r4, [r4, #4]
d03e4d0e:	6864      	ldr	r4, [r4, #4]
d03e4d10:	47a0      	blx	r4
d03e4d12:	f89a 300c 	ldrb.w	r3, [sl, #12]
d03e4d16:	f89a 200d 	ldrb.w	r2, [sl, #13]
d03e4d1a:	f105 0108 	add.w	r1, r5, #8
d03e4d1e:	f89a 700e 	ldrb.w	r7, [sl, #14]
d03e4d22:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
d03e4d26:	f89a 400f 	ldrb.w	r4, [sl, #15]
d03e4d2a:	9804      	ldr	r0, [sp, #16]
d03e4d2c:	b209      	sxth	r1, r1
d03e4d2e:	ea42 4707 	orr.w	r7, r2, r7, lsl #16
d03e4d32:	2302      	movs	r3, #2
d03e4d34:	3002      	adds	r0, #2
d03e4d36:	2204      	movs	r2, #4
d03e4d38:	ea47 6404 	orr.w	r4, r7, r4, lsl #24
d03e4d3c:	b200      	sxth	r0, r0
d03e4d3e:	6864      	ldr	r4, [r4, #4]
d03e4d40:	6864      	ldr	r4, [r4, #4]
d03e4d42:	47a0      	blx	r4
d03e4d44:	f89a 400c 	ldrb.w	r4, [sl, #12]
d03e4d48:	f89a 100d 	ldrb.w	r1, [sl, #13]
d03e4d4c:	4630      	mov	r0, r6
d03e4d4e:	f89a 200e 	ldrb.w	r2, [sl, #14]
d03e4d52:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d03e4d56:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e4d5a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e4d5e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e4d62:	685b      	ldr	r3, [r3, #4]
d03e4d64:	68db      	ldr	r3, [r3, #12]
d03e4d66:	4798      	blx	r3
d03e4d68:	f89a 300c 	ldrb.w	r3, [sl, #12]
d03e4d6c:	f89a 200d 	ldrb.w	r2, [sl, #13]
d03e4d70:	1c69      	adds	r1, r5, #1
d03e4d72:	f89a 600e 	ldrb.w	r6, [sl, #14]
d03e4d76:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
d03e4d7a:	f89a 400f 	ldrb.w	r4, [sl, #15]
d03e4d7e:	9804      	ldr	r0, [sp, #16]
d03e4d80:	b209      	sxth	r1, r1
d03e4d82:	ea42 4606 	orr.w	r6, r2, r6, lsl #16
d03e4d86:	2308      	movs	r3, #8
d03e4d88:	3001      	adds	r0, #1
d03e4d8a:	2201      	movs	r2, #1
d03e4d8c:	ea46 6404 	orr.w	r4, r6, r4, lsl #24
d03e4d90:	9105      	str	r1, [sp, #20]
d03e4d92:	b200      	sxth	r0, r0
d03e4d94:	6864      	ldr	r4, [r4, #4]
d03e4d96:	9006      	str	r0, [sp, #24]
d03e4d98:	6864      	ldr	r4, [r4, #4]
d03e4d9a:	47a0      	blx	r4
d03e4d9c:	f89a 700c 	ldrb.w	r7, [sl, #12]
d03e4da0:	f89a 600d 	ldrb.w	r6, [sl, #13]
d03e4da4:	2301      	movs	r3, #1
d03e4da6:	f89a c00e 	ldrb.w	ip, [sl, #14]
d03e4daa:	2206      	movs	r2, #6
d03e4dac:	ea47 2706 	orr.w	r7, r7, r6, lsl #8
d03e4db0:	f89a 400f 	ldrb.w	r4, [sl, #15]
d03e4db4:	9905      	ldr	r1, [sp, #20]
d03e4db6:	ea47 460c 	orr.w	r6, r7, ip, lsl #16
d03e4dba:	9806      	ldr	r0, [sp, #24]
d03e4dbc:	ea46 6404 	orr.w	r4, r6, r4, lsl #24
d03e4dc0:	6864      	ldr	r4, [r4, #4]
d03e4dc2:	6864      	ldr	r4, [r4, #4]
d03e4dc4:	47a0      	blx	r4
d03e4dc6:	f89a 300c 	ldrb.w	r3, [sl, #12]
d03e4dca:	f89a 400d 	ldrb.w	r4, [sl, #13]
d03e4dce:	1de9      	adds	r1, r5, #7
d03e4dd0:	f89a 600e 	ldrb.w	r6, [sl, #14]
d03e4dd4:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
d03e4dd8:	f89a 500f 	ldrb.w	r5, [sl, #15]
d03e4ddc:	9804      	ldr	r0, [sp, #16]
d03e4dde:	b209      	sxth	r1, r1
d03e4de0:	ea42 4406 	orr.w	r4, r2, r6, lsl #16
d03e4de4:	2301      	movs	r3, #1
d03e4de6:	3003      	adds	r0, #3
d03e4de8:	2203      	movs	r2, #3
d03e4dea:	ea44 6405 	orr.w	r4, r4, r5, lsl #24
d03e4dee:	b200      	sxth	r0, r0
d03e4df0:	6864      	ldr	r4, [r4, #4]
d03e4df2:	6864      	ldr	r4, [r4, #4]
d03e4df4:	47a0      	blx	r4
d03e4df6:	f89a 000c 	ldrb.w	r0, [sl, #12]
d03e4dfa:	f89a 100d 	ldrb.w	r1, [sl, #13]
d03e4dfe:	f89a 200e 	ldrb.w	r2, [sl, #14]
d03e4e02:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e4e06:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e4e0a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e4e0e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e4e12:	681b      	ldr	r3, [r3, #0]
d03e4e14:	681b      	ldr	r3, [r3, #0]
d03e4e16:	4798      	blx	r3
d03e4e18:	f7ff ba4b 	b.w	d03e42b2 <main+0x45e>
d03e4e1c:	4b26      	ldr	r3, [pc, #152]	; (d03e4eb8 <main+0x1064>)
d03e4e1e:	781b      	ldrb	r3, [r3, #0]
d03e4e20:	2b00      	cmp	r3, #0
d03e4e22:	f43f ae32 	beq.w	d03e4a8a <main+0xc36>
d03e4e26:	e62b      	b.n	d03e4a80 <main+0xc2c>
d03e4e28:	9508      	str	r5, [sp, #32]
d03e4e2a:	f7ff bbd0 	b.w	d03e45ce <main+0x77a>
d03e4e2e:	9b04      	ldr	r3, [sp, #16]
d03e4e30:	f013 0f0c 	tst.w	r3, #12
d03e4e34:	f43f acbb 	beq.w	d03e47ae <main+0x95a>
d03e4e38:	9b06      	ldr	r3, [sp, #24]
d03e4e3a:	2b00      	cmp	r3, #0
d03e4e3c:	f040 85dd 	bne.w	d03e59fa <main+0x1ba6>
d03e4e40:	9b04      	ldr	r3, [sp, #16]
d03e4e42:	071d      	lsls	r5, r3, #28
d03e4e44:	d50f      	bpl.n	d03e4e66 <main+0x1012>
d03e4e46:	f64f 73f6 	movw	r3, #65526	; 0xfff6
d03e4e4a:	491c      	ldr	r1, [pc, #112]	; (d03e4ebc <main+0x1068>)
d03e4e4c:	880a      	ldrh	r2, [r1, #0]
d03e4e4e:	4413      	add	r3, r2
d03e4e50:	b21b      	sxth	r3, r3
d03e4e52:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
d03e4e56:	bfa8      	it	ge
d03e4e58:	f44f 7396 	movge.w	r3, #300	; 0x12c
d03e4e5c:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d03e4e60:	800b      	strh	r3, [r1, #0]
d03e4e62:	f7fc fdad 	bl	d03e19c0 <midi_update_all_active_volume>
d03e4e66:	9b09      	ldr	r3, [sp, #36]	; 0x24
d03e4e68:	2b00      	cmp	r3, #0
d03e4e6a:	f000 84cf 	beq.w	d03e580c <main+0x19b8>
d03e4e6e:	4a14      	ldr	r2, [pc, #80]	; (d03e4ec0 <main+0x106c>)
d03e4e70:	f64f 73f6 	movw	r3, #65526	; 0xfff6
d03e4e74:	7812      	ldrb	r2, [r2, #0]
d03e4e76:	2a09      	cmp	r2, #9
d03e4e78:	f47f acb3 	bne.w	d03e47e2 <main+0x98e>
d03e4e7c:	2303      	movs	r3, #3
d03e4e7e:	4a0a      	ldr	r2, [pc, #40]	; (d03e4ea8 <main+0x1054>)
d03e4e80:	4c10      	ldr	r4, [pc, #64]	; (d03e4ec4 <main+0x1070>)
d03e4e82:	265a      	movs	r6, #90	; 0x5a
d03e4e84:	4d10      	ldr	r5, [pc, #64]	; (d03e4ec8 <main+0x1074>)
d03e4e86:	7013      	strb	r3, [r2, #0]
d03e4e88:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d03e4e8a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d03e4e8c:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d03e4e90:	4c0e      	ldr	r4, [pc, #56]	; (d03e4ecc <main+0x1078>)
d03e4e92:	7026      	strb	r6, [r4, #0]
d03e4e94:	4c0e      	ldr	r4, [pc, #56]	; (d03e4ed0 <main+0x107c>)
d03e4e96:	7a64      	ldrb	r4, [r4, #9]
d03e4e98:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d03e4e9c:	0621      	lsls	r1, r4, #24
d03e4e9e:	f57f acb3 	bpl.w	d03e4808 <main+0x9b4>
d03e4ea2:	2100      	movs	r1, #0
d03e4ea4:	e4c6      	b.n	d03e4834 <main+0x9e0>
d03e4ea6:	bf00      	nop
d03e4ea8:	d03e8ff5 	.word	0xd03e8ff5
d03e4eac:	d03e8ff4 	.word	0xd03e8ff4
d03e4eb0:	d03e8ff6 	.word	0xd03e8ff6
d03e4eb4:	d03e8ff8 	.word	0xd03e8ff8
d03e4eb8:	d03e8fe8 	.word	0xd03e8fe8
d03e4ebc:	d03e8f92 	.word	0xd03e8f92
d03e4ec0:	d03e8ffb 	.word	0xd03e8ffb
d03e4ec4:	d03e7bb8 	.word	0xd03e7bb8
d03e4ec8:	d03e8ffc 	.word	0xd03e8ffc
d03e4ecc:	d03e9024 	.word	0xd03e9024
d03e4ed0:	d03e8d64 	.word	0xd03e8d64
d03e4ed4:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e4ed8:	ea42 4404 	orr.w	r4, r2, r4, lsl #16
d03e4edc:	4ac5      	ldr	r2, [pc, #788]	; (d03e51f4 <main+0x13a0>)
d03e4ede:	ea44 6303 	orr.w	r3, r4, r3, lsl #24
d03e4ee2:	685b      	ldr	r3, [r3, #4]
d03e4ee4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e4ee6:	4798      	blx	r3
d03e4ee8:	4bc3      	ldr	r3, [pc, #780]	; (d03e51f8 <main+0x13a4>)
d03e4eea:	781b      	ldrb	r3, [r3, #0]
d03e4eec:	2b01      	cmp	r3, #1
d03e4eee:	f47f aeb0 	bne.w	d03e4c52 <main+0xdfe>
d03e4ef2:	4bc2      	ldr	r3, [pc, #776]	; (d03e51fc <main+0x13a8>)
d03e4ef4:	277c      	movs	r7, #124	; 0x7c
d03e4ef6:	781c      	ldrb	r4, [r3, #0]
d03e4ef8:	230e      	movs	r3, #14
d03e4efa:	00a4      	lsls	r4, r4, #2
d03e4efc:	f8ad 30a0 	strh.w	r3, [sp, #160]	; 0xa0
d03e4f00:	b2e4      	uxtb	r4, r4
d03e4f02:	f89b 3000 	ldrb.w	r3, [fp]
d03e4f06:	b12b      	cbz	r3, d03e4f14 <main+0x10c0>
d03e4f08:	f89b 3001 	ldrb.w	r3, [fp, #1]
d03e4f0c:	1b1b      	subs	r3, r3, r4
d03e4f0e:	fab3 f383 	clz	r3, r3
d03e4f12:	095b      	lsrs	r3, r3, #5
d03e4f14:	f89b 2008 	ldrb.w	r2, [fp, #8]
d03e4f18:	b12a      	cbz	r2, d03e4f26 <main+0x10d2>
d03e4f1a:	f89b 2009 	ldrb.w	r2, [fp, #9]
d03e4f1e:	42a2      	cmp	r2, r4
d03e4f20:	d101      	bne.n	d03e4f26 <main+0x10d2>
d03e4f22:	3301      	adds	r3, #1
d03e4f24:	b2db      	uxtb	r3, r3
d03e4f26:	f89b 2010 	ldrb.w	r2, [fp, #16]
d03e4f2a:	b12a      	cbz	r2, d03e4f38 <main+0x10e4>
d03e4f2c:	f89b 2011 	ldrb.w	r2, [fp, #17]
d03e4f30:	42a2      	cmp	r2, r4
d03e4f32:	d101      	bne.n	d03e4f38 <main+0x10e4>
d03e4f34:	3301      	adds	r3, #1
d03e4f36:	b2db      	uxtb	r3, r3
d03e4f38:	f89b 2018 	ldrb.w	r2, [fp, #24]
d03e4f3c:	b12a      	cbz	r2, d03e4f4a <main+0x10f6>
d03e4f3e:	f89b 2019 	ldrb.w	r2, [fp, #25]
d03e4f42:	42a2      	cmp	r2, r4
d03e4f44:	d101      	bne.n	d03e4f4a <main+0x10f6>
d03e4f46:	3301      	adds	r3, #1
d03e4f48:	b2db      	uxtb	r3, r3
d03e4f4a:	f89b 2020 	ldrb.w	r2, [fp, #32]
d03e4f4e:	b11a      	cbz	r2, d03e4f58 <main+0x1104>
d03e4f50:	f89b 2021 	ldrb.w	r2, [fp, #33]	; 0x21
d03e4f54:	42a2      	cmp	r2, r4
d03e4f56:	d007      	beq.n	d03e4f68 <main+0x1114>
d03e4f58:	f89b 2028 	ldrb.w	r2, [fp, #40]	; 0x28
d03e4f5c:	b11a      	cbz	r2, d03e4f66 <main+0x1112>
d03e4f5e:	f89b 2029 	ldrb.w	r2, [fp, #41]	; 0x29
d03e4f62:	42a2      	cmp	r2, r4
d03e4f64:	d000      	beq.n	d03e4f68 <main+0x1114>
d03e4f66:	b32b      	cbz	r3, d03e4fb4 <main+0x1160>
d03e4f68:	f89a 500c 	ldrb.w	r5, [sl, #12]
d03e4f6c:	200e      	movs	r0, #14
d03e4f6e:	f89a 100d 	ldrb.w	r1, [sl, #13]
d03e4f72:	f89a 200e 	ldrb.w	r2, [sl, #14]
d03e4f76:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e4f7a:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e4f7e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e4f82:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e4f86:	685b      	ldr	r3, [r3, #4]
d03e4f88:	68db      	ldr	r3, [r3, #12]
d03e4f8a:	4798      	blx	r3
d03e4f8c:	f89a 600c 	ldrb.w	r6, [sl, #12]
d03e4f90:	f89a 000d 	ldrb.w	r0, [sl, #13]
d03e4f94:	aa28      	add	r2, sp, #160	; 0xa0
d03e4f96:	f89a 500e 	ldrb.w	r5, [sl, #14]
d03e4f9a:	4639      	mov	r1, r7
d03e4f9c:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
d03e4fa0:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e4fa4:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d03e4fa8:	2020      	movs	r0, #32
d03e4faa:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d03e4fae:	685b      	ldr	r3, [r3, #4]
d03e4fb0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e4fb2:	4798      	blx	r3
d03e4fb4:	3724      	adds	r7, #36	; 0x24
d03e4fb6:	3401      	adds	r4, #1
d03e4fb8:	f5b7 7f86 	cmp.w	r7, #268	; 0x10c
d03e4fbc:	b2e4      	uxtb	r4, r4
d03e4fbe:	d1a0      	bne.n	d03e4f02 <main+0x10ae>
d03e4fc0:	e64d      	b.n	d03e4c5e <main+0xe0a>
d03e4fc2:	498f      	ldr	r1, [pc, #572]	; (d03e5200 <main+0x13ac>)
d03e4fc4:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d03e4fc8:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e4fcc:	6809      	ldr	r1, [r1, #0]
d03e4fce:	488d      	ldr	r0, [pc, #564]	; (d03e5204 <main+0x13b0>)
d03e4fd0:	e573      	b.n	d03e4aba <main+0xc66>
d03e4fd2:	4a8d      	ldr	r2, [pc, #564]	; (d03e5208 <main+0x13b4>)
d03e4fd4:	498d      	ldr	r1, [pc, #564]	; (d03e520c <main+0x13b8>)
d03e4fd6:	7812      	ldrb	r2, [r2, #0]
d03e4fd8:	700d      	strb	r5, [r1, #0]
d03e4fda:	2a00      	cmp	r2, #0
d03e4fdc:	f040 8405 	bne.w	d03e57ea <main+0x1996>
d03e4fe0:	4a85      	ldr	r2, [pc, #532]	; (d03e51f8 <main+0x13a4>)
d03e4fe2:	ac10      	add	r4, sp, #64	; 0x40
d03e4fe4:	7817      	ldrb	r7, [r2, #0]
d03e4fe6:	4a8a      	ldr	r2, [pc, #552]	; (d03e5210 <main+0x13bc>)
d03e4fe8:	7812      	ldrb	r2, [r2, #0]
d03e4fea:	e4ab      	b.n	d03e4944 <main+0xaf0>
d03e4fec:	2002      	movs	r0, #2
d03e4fee:	f7fb fbd1 	bl	d03e0794 <sid_voice_note_off>
d03e4ff2:	f8d8 3000 	ldr.w	r3, [r8]
d03e4ff6:	f88b 9010 	strb.w	r9, [fp, #16]
d03e4ffa:	3301      	adds	r3, #1
d03e4ffc:	f8ab 9016 	strh.w	r9, [fp, #22]
d03e5000:	f8c8 3000 	str.w	r3, [r8]
d03e5004:	f7ff ba24 	b.w	d03e4450 <main+0x5fc>
d03e5008:	2003      	movs	r0, #3
d03e500a:	f7fb fbc3 	bl	d03e0794 <sid_voice_note_off>
d03e500e:	f8d8 3000 	ldr.w	r3, [r8]
d03e5012:	f88b 9018 	strb.w	r9, [fp, #24]
d03e5016:	3301      	adds	r3, #1
d03e5018:	f8ab 901e 	strh.w	r9, [fp, #30]
d03e501c:	f8c8 3000 	str.w	r3, [r8]
d03e5020:	f7ff ba1f 	b.w	d03e4462 <main+0x60e>
d03e5024:	2004      	movs	r0, #4
d03e5026:	f7fb fbb5 	bl	d03e0794 <sid_voice_note_off>
d03e502a:	f8d8 3000 	ldr.w	r3, [r8]
d03e502e:	f88b 9020 	strb.w	r9, [fp, #32]
d03e5032:	3301      	adds	r3, #1
d03e5034:	f8ab 9026 	strh.w	r9, [fp, #38]	; 0x26
d03e5038:	f8c8 3000 	str.w	r3, [r8]
d03e503c:	f7ff ba1a 	b.w	d03e4474 <main+0x620>
d03e5040:	2000      	movs	r0, #0
d03e5042:	f7fb fba7 	bl	d03e0794 <sid_voice_note_off>
d03e5046:	f8d8 3000 	ldr.w	r3, [r8]
d03e504a:	f88b 9000 	strb.w	r9, [fp]
d03e504e:	3301      	adds	r3, #1
d03e5050:	f8ab 9006 	strh.w	r9, [fp, #6]
d03e5054:	f8c8 3000 	str.w	r3, [r8]
d03e5058:	f7ff b948 	b.w	d03e42ec <main+0x498>
d03e505c:	2000      	movs	r0, #0
d03e505e:	f7fb fb99 	bl	d03e0794 <sid_voice_note_off>
d03e5062:	f8d8 3000 	ldr.w	r3, [r8]
d03e5066:	f88b 9000 	strb.w	r9, [fp]
d03e506a:	3301      	adds	r3, #1
d03e506c:	f8ab 9006 	strh.w	r9, [fp, #6]
d03e5070:	f8c8 3000 	str.w	r3, [r8]
d03e5074:	f7ff b9da 	b.w	d03e442c <main+0x5d8>
d03e5078:	2001      	movs	r0, #1
d03e507a:	f7fb fb8b 	bl	d03e0794 <sid_voice_note_off>
d03e507e:	f8d8 3000 	ldr.w	r3, [r8]
d03e5082:	f88b 9008 	strb.w	r9, [fp, #8]
d03e5086:	3301      	adds	r3, #1
d03e5088:	f8ab 900e 	strh.w	r9, [fp, #14]
d03e508c:	f8c8 3000 	str.w	r3, [r8]
d03e5090:	f7ff b9d5 	b.w	d03e443e <main+0x5ea>
d03e5094:	2003      	movs	r0, #3
d03e5096:	f7fb fb7d 	bl	d03e0794 <sid_voice_note_off>
d03e509a:	f8d8 3000 	ldr.w	r3, [r8]
d03e509e:	f88b 9018 	strb.w	r9, [fp, #24]
d03e50a2:	3301      	adds	r3, #1
d03e50a4:	f8ab 901e 	strh.w	r9, [fp, #30]
d03e50a8:	f8c8 3000 	str.w	r3, [r8]
d03e50ac:	f7ff b939 	b.w	d03e4322 <main+0x4ce>
d03e50b0:	2004      	movs	r0, #4
d03e50b2:	f7fb fb6f 	bl	d03e0794 <sid_voice_note_off>
d03e50b6:	f8d8 3000 	ldr.w	r3, [r8]
d03e50ba:	f88b 9020 	strb.w	r9, [fp, #32]
d03e50be:	3301      	adds	r3, #1
d03e50c0:	f8ab 9026 	strh.w	r9, [fp, #38]	; 0x26
d03e50c4:	f8c8 3000 	str.w	r3, [r8]
d03e50c8:	f7ff b934 	b.w	d03e4334 <main+0x4e0>
d03e50cc:	2001      	movs	r0, #1
d03e50ce:	f7fb fb61 	bl	d03e0794 <sid_voice_note_off>
d03e50d2:	f8d8 3000 	ldr.w	r3, [r8]
d03e50d6:	f88b 9008 	strb.w	r9, [fp, #8]
d03e50da:	3301      	adds	r3, #1
d03e50dc:	f8ab 900e 	strh.w	r9, [fp, #14]
d03e50e0:	f8c8 3000 	str.w	r3, [r8]
d03e50e4:	f7ff b90b 	b.w	d03e42fe <main+0x4aa>
d03e50e8:	2002      	movs	r0, #2
d03e50ea:	f7fb fb53 	bl	d03e0794 <sid_voice_note_off>
d03e50ee:	f8d8 3000 	ldr.w	r3, [r8]
d03e50f2:	f88b 9010 	strb.w	r9, [fp, #16]
d03e50f6:	3301      	adds	r3, #1
d03e50f8:	f8ab 9016 	strh.w	r9, [fp, #22]
d03e50fc:	f8c8 3000 	str.w	r3, [r8]
d03e5100:	f7ff b906 	b.w	d03e4310 <main+0x4bc>
d03e5104:	9907      	ldr	r1, [sp, #28]
d03e5106:	f64f 72f6 	movw	r2, #65526	; 0xfff6
d03e510a:	f64f 73ff 	movw	r3, #65535	; 0xffff
d03e510e:	2900      	cmp	r1, #0
d03e5110:	f43f ab62 	beq.w	d03e47d8 <main+0x984>
d03e5114:	4613      	mov	r3, r2
d03e5116:	f7ff bb5f 	b.w	d03e47d8 <main+0x984>
d03e511a:	f5b3 7faf 	cmp.w	r3, #350	; 0x15e
d03e511e:	db2a      	blt.n	d03e5176 <main+0x1322>
d03e5120:	b290      	uxth	r0, r2
d03e5122:	f1a0 024e 	sub.w	r2, r0, #78	; 0x4e
d03e5126:	2a15      	cmp	r2, #21
d03e5128:	bf8c      	ite	hi
d03e512a:	2200      	movhi	r2, #0
d03e512c:	2201      	movls	r2, #1
d03e512e:	f5b3 7fc0 	cmp.w	r3, #384	; 0x180
d03e5132:	da02      	bge.n	d03e513a <main+0x12e6>
d03e5134:	2a00      	cmp	r2, #0
d03e5136:	f040 86f0 	bne.w	d03e5f1a <main+0x20c6>
d03e513a:	f5b3 7fc2 	cmp.w	r3, #388	; 0x184
d03e513e:	db1a      	blt.n	d03e5176 <main+0x1322>
d03e5140:	f5b3 7fd3 	cmp.w	r3, #422	; 0x1a6
d03e5144:	da02      	bge.n	d03e514c <main+0x12f8>
d03e5146:	2a00      	cmp	r2, #0
d03e5148:	f040 8776 	bne.w	d03e6038 <main+0x21e4>
d03e514c:	f5b3 7fd1 	cmp.w	r3, #418	; 0x1a2
d03e5150:	db11      	blt.n	d03e5176 <main+0x1322>
d03e5152:	f5b3 7fe2 	cmp.w	r3, #452	; 0x1c4
d03e5156:	f1a0 027c 	sub.w	r2, r0, #124	; 0x7c
d03e515a:	bfac      	ite	ge
d03e515c:	2300      	movge	r3, #0
d03e515e:	2301      	movlt	r3, #1
d03e5160:	2a15      	cmp	r2, #21
d03e5162:	d802      	bhi.n	d03e516a <main+0x1316>
d03e5164:	2b00      	cmp	r3, #0
d03e5166:	f040 87ae 	bne.w	d03e60c6 <main+0x2272>
d03e516a:	38e0      	subs	r0, #224	; 0xe0
d03e516c:	2815      	cmp	r0, #21
d03e516e:	d802      	bhi.n	d03e5176 <main+0x1322>
d03e5170:	2b00      	cmp	r3, #0
d03e5172:	f041 8034 	bne.w	d03e61de <main+0x238a>
d03e5176:	9b05      	ldr	r3, [sp, #20]
d03e5178:	2b03      	cmp	r3, #3
d03e517a:	d102      	bne.n	d03e5182 <main+0x132e>
d03e517c:	2301      	movs	r3, #1
d03e517e:	4a25      	ldr	r2, [pc, #148]	; (d03e5214 <main+0x13c0>)
d03e5180:	7013      	strb	r3, [r2, #0]
d03e5182:	9b07      	ldr	r3, [sp, #28]
d03e5184:	2b00      	cmp	r3, #0
d03e5186:	f47f ae52 	bne.w	d03e4e2e <main+0xfda>
d03e518a:	9b04      	ldr	r3, [sp, #16]
d03e518c:	f013 0f0c 	tst.w	r3, #12
d03e5190:	f43f ab0d 	beq.w	d03e47ae <main+0x95a>
d03e5194:	9b06      	ldr	r3, [sp, #24]
d03e5196:	2b00      	cmp	r3, #0
d03e5198:	f040 84f2 	bne.w	d03e5b80 <main+0x1d2c>
d03e519c:	9b04      	ldr	r3, [sp, #16]
d03e519e:	071e      	lsls	r6, r3, #28
d03e51a0:	f100 8622 	bmi.w	d03e5de8 <main+0x1f94>
d03e51a4:	9b09      	ldr	r3, [sp, #36]	; 0x24
d03e51a6:	2b00      	cmp	r3, #0
d03e51a8:	f040 845c 	bne.w	d03e5a64 <main+0x1c10>
d03e51ac:	9b04      	ldr	r3, [sp, #16]
d03e51ae:	069a      	lsls	r2, r3, #26
d03e51b0:	f57f ab45 	bpl.w	d03e483e <main+0x9ea>
d03e51b4:	2301      	movs	r3, #1
d03e51b6:	f7ff bb0f 	b.w	d03e47d8 <main+0x984>
d03e51ba:	461a      	mov	r2, r3
d03e51bc:	230c      	movs	r3, #12
d03e51be:	f002 0104 	and.w	r1, r2, #4
d03e51c2:	f002 0210 	and.w	r2, r2, #16
d03e51c6:	9209      	str	r2, [sp, #36]	; 0x24
d03e51c8:	4a13      	ldr	r2, [pc, #76]	; (d03e5218 <main+0x13c4>)
d03e51ca:	9106      	str	r1, [sp, #24]
d03e51cc:	7013      	strb	r3, [r2, #0]
d03e51ce:	f7ff b99b 	b.w	d03e4508 <main+0x6b4>
d03e51d2:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
d03e51d6:	f280 870d 	bge.w	d03e5ff4 <main+0x21a0>
d03e51da:	9b05      	ldr	r3, [sp, #20]
d03e51dc:	2b03      	cmp	r3, #3
d03e51de:	f47f aae2 	bne.w	d03e47a6 <main+0x952>
d03e51e2:	2301      	movs	r3, #1
d03e51e4:	4a0b      	ldr	r2, [pc, #44]	; (d03e5214 <main+0x13c0>)
d03e51e6:	7013      	strb	r3, [r2, #0]
d03e51e8:	f7ff bada 	b.w	d03e47a0 <main+0x94c>
d03e51ec:	2400      	movs	r4, #0
d03e51ee:	46a4      	mov	ip, r4
d03e51f0:	f7ff ba00 	b.w	d03e45f4 <main+0x7a0>
d03e51f4:	d03e7fd4 	.word	0xd03e7fd4
d03e51f8:	d03e8ff5 	.word	0xd03e8ff5
d03e51fc:	d03e8ff0 	.word	0xd03e8ff0
d03e5200:	d03e8d2c 	.word	0xd03e8d2c
d03e5204:	d03e8d30 	.word	0xd03e8d30
d03e5208:	d03e9025 	.word	0xd03e9025
d03e520c:	d03e9028 	.word	0xd03e9028
d03e5210:	d03e902a 	.word	0xd03e902a
d03e5214:	d03e8ff1 	.word	0xd03e8ff1
d03e5218:	d03e8ffa 	.word	0xd03e8ffa
d03e521c:	4a47      	ldr	r2, [pc, #284]	; (d03e533c <main+0x14e8>)
d03e521e:	7812      	ldrb	r2, [r2, #0]
d03e5220:	2a00      	cmp	r2, #0
d03e5222:	f040 83d4 	bne.w	d03e59ce <main+0x1b7a>
d03e5226:	4a46      	ldr	r2, [pc, #280]	; (d03e5340 <main+0x14ec>)
d03e5228:	ac10      	add	r4, sp, #64	; 0x40
d03e522a:	7812      	ldrb	r2, [r2, #0]
d03e522c:	f7ff bb8a 	b.w	d03e4944 <main+0xaf0>
d03e5230:	42b3      	cmp	r3, r6
d03e5232:	f04f 0200 	mov.w	r2, #0
d03e5236:	bfa8      	it	ge
d03e5238:	4633      	movge	r3, r6
d03e523a:	f7ff b9bf 	b.w	d03e45bc <main+0x768>
d03e523e:	4841      	ldr	r0, [pc, #260]	; (d03e5344 <main+0x14f0>)
d03e5240:	4c41      	ldr	r4, [pc, #260]	; (d03e5348 <main+0x14f4>)
d03e5242:	7803      	ldrb	r3, [r0, #0]
d03e5244:	3301      	adds	r3, #1
d03e5246:	f003 030f 	and.w	r3, r3, #15
d03e524a:	56e2      	ldrsb	r2, [r4, r3]
d03e524c:	0899      	lsrs	r1, r3, #2
d03e524e:	7003      	strb	r3, [r0, #0]
d03e5250:	2a00      	cmp	r2, #0
d03e5252:	483e      	ldr	r0, [pc, #248]	; (d03e534c <main+0x14f8>)
d03e5254:	5ce3      	ldrb	r3, [r4, r3]
d03e5256:	7001      	strb	r1, [r0, #0]
d03e5258:	f2c0 8402 	blt.w	d03e5a60 <main+0x1c0c>
d03e525c:	4a3c      	ldr	r2, [pc, #240]	; (d03e5350 <main+0x14fc>)
d03e525e:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
d03e5262:	2800      	cmp	r0, #0
d03e5264:	f000 8489 	beq.w	d03e5b7a <main+0x1d26>
d03e5268:	2300      	movs	r3, #0
d03e526a:	e002      	b.n	d03e5272 <main+0x141e>
d03e526c:	2b60      	cmp	r3, #96	; 0x60
d03e526e:	f000 83f2 	beq.w	d03e5a56 <main+0x1c02>
d03e5272:	f810 1023 	ldrb.w	r1, [r0, r3, lsl #2]
d03e5276:	b2da      	uxtb	r2, r3
d03e5278:	3301      	adds	r3, #1
d03e527a:	2900      	cmp	r1, #0
d03e527c:	d1f6      	bne.n	d03e526c <main+0x1418>
d03e527e:	1c53      	adds	r3, r2, #1
d03e5280:	b2db      	uxtb	r3, r3
d03e5282:	2b07      	cmp	r3, #7
d03e5284:	f200 83e7 	bhi.w	d03e5a56 <main+0x1c02>
d03e5288:	4a2d      	ldr	r2, [pc, #180]	; (d03e5340 <main+0x14ec>)
d03e528a:	7813      	ldrb	r3, [r2, #0]
d03e528c:	428b      	cmp	r3, r1
d03e528e:	bf88      	it	hi
d03e5290:	7011      	strbhi	r1, [r2, #0]
d03e5292:	f7ff ba94 	b.w	d03e47be <main+0x96a>
d03e5296:	482b      	ldr	r0, [pc, #172]	; (d03e5344 <main+0x14f0>)
d03e5298:	4c2b      	ldr	r4, [pc, #172]	; (d03e5348 <main+0x14f4>)
d03e529a:	7803      	ldrb	r3, [r0, #0]
d03e529c:	330f      	adds	r3, #15
d03e529e:	f003 030f 	and.w	r3, r3, #15
d03e52a2:	56e2      	ldrsb	r2, [r4, r3]
d03e52a4:	0899      	lsrs	r1, r3, #2
d03e52a6:	7003      	strb	r3, [r0, #0]
d03e52a8:	2a00      	cmp	r2, #0
d03e52aa:	4828      	ldr	r0, [pc, #160]	; (d03e534c <main+0x14f8>)
d03e52ac:	5ce3      	ldrb	r3, [r4, r3]
d03e52ae:	7001      	strb	r1, [r0, #0]
d03e52b0:	f2c0 83d4 	blt.w	d03e5a5c <main+0x1c08>
d03e52b4:	4a26      	ldr	r2, [pc, #152]	; (d03e5350 <main+0x14fc>)
d03e52b6:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
d03e52ba:	2800      	cmp	r0, #0
d03e52bc:	f000 845a 	beq.w	d03e5b74 <main+0x1d20>
d03e52c0:	2300      	movs	r3, #0
d03e52c2:	e002      	b.n	d03e52ca <main+0x1476>
d03e52c4:	2b60      	cmp	r3, #96	; 0x60
d03e52c6:	f000 83c3 	beq.w	d03e5a50 <main+0x1bfc>
d03e52ca:	f810 1023 	ldrb.w	r1, [r0, r3, lsl #2]
d03e52ce:	b2da      	uxtb	r2, r3
d03e52d0:	3301      	adds	r3, #1
d03e52d2:	2900      	cmp	r1, #0
d03e52d4:	d1f6      	bne.n	d03e52c4 <main+0x1470>
d03e52d6:	1c53      	adds	r3, r2, #1
d03e52d8:	b2db      	uxtb	r3, r3
d03e52da:	2b07      	cmp	r3, #7
d03e52dc:	f200 83b8 	bhi.w	d03e5a50 <main+0x1bfc>
d03e52e0:	4a17      	ldr	r2, [pc, #92]	; (d03e5340 <main+0x14ec>)
d03e52e2:	7813      	ldrb	r3, [r2, #0]
d03e52e4:	428b      	cmp	r3, r1
d03e52e6:	bf88      	it	hi
d03e52e8:	7011      	strbhi	r1, [r2, #0]
d03e52ea:	f7ff ba64 	b.w	d03e47b6 <main+0x962>
d03e52ee:	3b07      	subs	r3, #7
d03e52f0:	b2d9      	uxtb	r1, r3
d03e52f2:	f7ff ba9f 	b.w	d03e4834 <main+0x9e0>
d03e52f6:	4a17      	ldr	r2, [pc, #92]	; (d03e5354 <main+0x1500>)
d03e52f8:	2400      	movs	r4, #0
d03e52fa:	4e17      	ldr	r6, [pc, #92]	; (d03e5358 <main+0x1504>)
d03e52fc:	8813      	ldrh	r3, [r2, #0]
d03e52fe:	3b0a      	subs	r3, #10
d03e5300:	b21b      	sxth	r3, r3
d03e5302:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
d03e5306:	bfa8      	it	ge
d03e5308:	f44f 7396 	movge.w	r3, #300	; 0x12c
d03e530c:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d03e5310:	8013      	strh	r3, [r2, #0]
d03e5312:	7833      	ldrb	r3, [r6, #0]
d03e5314:	b2e0      	uxtb	r0, r4
d03e5316:	b11b      	cbz	r3, d03e5320 <main+0x14cc>
d03e5318:	7873      	ldrb	r3, [r6, #1]
d03e531a:	2b09      	cmp	r3, #9
d03e531c:	f000 87f5 	beq.w	d03e630a <main+0x24b6>
d03e5320:	3401      	adds	r4, #1
d03e5322:	3608      	adds	r6, #8
d03e5324:	2c06      	cmp	r4, #6
d03e5326:	d1f4      	bne.n	d03e5312 <main+0x14be>
d03e5328:	4b0c      	ldr	r3, [pc, #48]	; (d03e535c <main+0x1508>)
d03e532a:	781c      	ldrb	r4, [r3, #0]
d03e532c:	f7ff ba34 	b.w	d03e4798 <main+0x944>
d03e5330:	4a0b      	ldr	r2, [pc, #44]	; (d03e5360 <main+0x150c>)
d03e5332:	9309      	str	r3, [sp, #36]	; 0x24
d03e5334:	7013      	strb	r3, [r2, #0]
d03e5336:	9304      	str	r3, [sp, #16]
d03e5338:	f7ff b8e6 	b.w	d03e4508 <main+0x6b4>
d03e533c:	d03e9025 	.word	0xd03e9025
d03e5340:	d03e902a 	.word	0xd03e902a
d03e5344:	d03e8ffb 	.word	0xd03e8ffb
d03e5348:	d03e8d64 	.word	0xd03e8d64
d03e534c:	d03e8ff0 	.word	0xd03e8ff0
d03e5350:	d03e8678 	.word	0xd03e8678
d03e5354:	d03e8d8a 	.word	0xd03e8d8a
d03e5358:	d03e8fb0 	.word	0xd03e8fb0
d03e535c:	d03e8ff5 	.word	0xd03e8ff5
d03e5360:	d03e8ffa 	.word	0xd03e8ffa
d03e5364:	f89b 3000 	ldrb.w	r3, [fp]
d03e5368:	4998      	ldr	r1, [pc, #608]	; (d03e55cc <main+0x1778>)
d03e536a:	3b00      	subs	r3, #0
d03e536c:	f89b 2008 	ldrb.w	r2, [fp, #8]
d03e5370:	780e      	ldrb	r6, [r1, #0]
d03e5372:	bf18      	it	ne
d03e5374:	2301      	movne	r3, #1
d03e5376:	b102      	cbz	r2, d03e537a <main+0x1526>
d03e5378:	3301      	adds	r3, #1
d03e537a:	f89b 2010 	ldrb.w	r2, [fp, #16]
d03e537e:	b10a      	cbz	r2, d03e5384 <main+0x1530>
d03e5380:	3301      	adds	r3, #1
d03e5382:	b2db      	uxtb	r3, r3
d03e5384:	f89b 2018 	ldrb.w	r2, [fp, #24]
d03e5388:	b10a      	cbz	r2, d03e538e <main+0x153a>
d03e538a:	3301      	adds	r3, #1
d03e538c:	b2db      	uxtb	r3, r3
d03e538e:	f89b 2020 	ldrb.w	r2, [fp, #32]
d03e5392:	b10a      	cbz	r2, d03e5398 <main+0x1544>
d03e5394:	3301      	adds	r3, #1
d03e5396:	b2db      	uxtb	r3, r3
d03e5398:	f89b 2028 	ldrb.w	r2, [fp, #40]	; 0x28
d03e539c:	b10a      	cbz	r2, d03e53a2 <main+0x154e>
d03e539e:	3301      	adds	r3, #1
d03e53a0:	b2db      	uxtb	r3, r3
d03e53a2:	2106      	movs	r1, #6
d03e53a4:	4a8a      	ldr	r2, [pc, #552]	; (d03e55d0 <main+0x177c>)
d03e53a6:	a828      	add	r0, sp, #160	; 0xa0
d03e53a8:	2400      	movs	r4, #0
d03e53aa:	9100      	str	r1, [sp, #0]
d03e53ac:	2160      	movs	r1, #96	; 0x60
d03e53ae:	f001 fa63 	bl	d03e6878 <sniprintf>
d03e53b2:	f89a 500c 	ldrb.w	r5, [sl, #12]
d03e53b6:	f89a 100d 	ldrb.w	r1, [sl, #13]
d03e53ba:	201e      	movs	r0, #30
d03e53bc:	f89a 200e 	ldrb.w	r2, [sl, #14]
d03e53c0:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d03e53c4:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e53c8:	4d82      	ldr	r5, [pc, #520]	; (d03e55d4 <main+0x1780>)
d03e53ca:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e53ce:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e53d2:	685b      	ldr	r3, [r3, #4]
d03e53d4:	68db      	ldr	r3, [r3, #12]
d03e53d6:	4798      	blx	r3
d03e53d8:	f89a 700c 	ldrb.w	r7, [sl, #12]
d03e53dc:	f89a 100d 	ldrb.w	r1, [sl, #13]
d03e53e0:	aa28      	add	r2, sp, #160	; 0xa0
d03e53e2:	f89a 000e 	ldrb.w	r0, [sl, #14]
d03e53e6:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d03e53ea:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e53ee:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d03e53f2:	2164      	movs	r1, #100	; 0x64
d03e53f4:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d03e53f8:	2018      	movs	r0, #24
d03e53fa:	685b      	ldr	r3, [r3, #4]
d03e53fc:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e53fe:	4798      	blx	r3
d03e5400:	4b75      	ldr	r3, [pc, #468]	; (d03e55d8 <main+0x1784>)
d03e5402:	2160      	movs	r1, #96	; 0x60
d03e5404:	a828      	add	r0, sp, #160	; 0xa0
d03e5406:	681a      	ldr	r2, [r3, #0]
d03e5408:	4b74      	ldr	r3, [pc, #464]	; (d03e55dc <main+0x1788>)
d03e540a:	681b      	ldr	r3, [r3, #0]
d03e540c:	9200      	str	r2, [sp, #0]
d03e540e:	4a74      	ldr	r2, [pc, #464]	; (d03e55e0 <main+0x178c>)
d03e5410:	f001 fa32 	bl	d03e6878 <sniprintf>
d03e5414:	f89a 700c 	ldrb.w	r7, [sl, #12]
d03e5418:	f89a 100d 	ldrb.w	r1, [sl, #13]
d03e541c:	2018      	movs	r0, #24
d03e541e:	f89a 200e 	ldrb.w	r2, [sl, #14]
d03e5422:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d03e5426:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e542a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e542e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e5432:	685b      	ldr	r3, [r3, #4]
d03e5434:	68db      	ldr	r3, [r3, #12]
d03e5436:	4798      	blx	r3
d03e5438:	f89a 700c 	ldrb.w	r7, [sl, #12]
d03e543c:	f89a 100d 	ldrb.w	r1, [sl, #13]
d03e5440:	aa28      	add	r2, sp, #160	; 0xa0
d03e5442:	f89a 000e 	ldrb.w	r0, [sl, #14]
d03e5446:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d03e544a:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e544e:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d03e5452:	2176      	movs	r1, #118	; 0x76
d03e5454:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d03e5458:	2018      	movs	r0, #24
d03e545a:	685b      	ldr	r3, [r3, #4]
d03e545c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e545e:	4798      	blx	r3
d03e5460:	4b60      	ldr	r3, [pc, #384]	; (d03e55e4 <main+0x1790>)
d03e5462:	2160      	movs	r1, #96	; 0x60
d03e5464:	a828      	add	r0, sp, #160	; 0xa0
d03e5466:	881a      	ldrh	r2, [r3, #0]
d03e5468:	4b5f      	ldr	r3, [pc, #380]	; (d03e55e8 <main+0x1794>)
d03e546a:	881b      	ldrh	r3, [r3, #0]
d03e546c:	9200      	str	r2, [sp, #0]
d03e546e:	4a5f      	ldr	r2, [pc, #380]	; (d03e55ec <main+0x1798>)
d03e5470:	f001 fa02 	bl	d03e6878 <sniprintf>
d03e5474:	f89a 700c 	ldrb.w	r7, [sl, #12]
d03e5478:	f89a 100d 	ldrb.w	r1, [sl, #13]
d03e547c:	aa28      	add	r2, sp, #160	; 0xa0
d03e547e:	f89a 000e 	ldrb.w	r0, [sl, #14]
d03e5482:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d03e5486:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e548a:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d03e548e:	2188      	movs	r1, #136	; 0x88
d03e5490:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d03e5494:	2018      	movs	r0, #24
d03e5496:	685b      	ldr	r3, [r3, #4]
d03e5498:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e549a:	4798      	blx	r3
d03e549c:	4b54      	ldr	r3, [pc, #336]	; (d03e55f0 <main+0x179c>)
d03e549e:	4a55      	ldr	r2, [pc, #340]	; (d03e55f4 <main+0x17a0>)
d03e54a0:	2160      	movs	r1, #96	; 0x60
d03e54a2:	f933 3016 	ldrsh.w	r3, [r3, r6, lsl #1]
d03e54a6:	a828      	add	r0, sp, #160	; 0xa0
d03e54a8:	5d92      	ldrb	r2, [r2, r6]
d03e54aa:	9301      	str	r3, [sp, #4]
d03e54ac:	4b52      	ldr	r3, [pc, #328]	; (d03e55f8 <main+0x17a4>)
d03e54ae:	9200      	str	r2, [sp, #0]
d03e54b0:	4a52      	ldr	r2, [pc, #328]	; (d03e55fc <main+0x17a8>)
d03e54b2:	5d9b      	ldrb	r3, [r3, r6]
d03e54b4:	f001 f9e0 	bl	d03e6878 <sniprintf>
d03e54b8:	f89a 600c 	ldrb.w	r6, [sl, #12]
d03e54bc:	f89a 100d 	ldrb.w	r1, [sl, #13]
d03e54c0:	aa28      	add	r2, sp, #160	; 0xa0
d03e54c2:	f89a 000e 	ldrb.w	r0, [sl, #14]
d03e54c6:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
d03e54ca:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e54ce:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d03e54d2:	2174      	movs	r1, #116	; 0x74
d03e54d4:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d03e54d8:	20b8      	movs	r0, #184	; 0xb8
d03e54da:	685b      	ldr	r3, [r3, #4]
d03e54dc:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e54de:	4798      	blx	r3
d03e54e0:	4b3a      	ldr	r3, [pc, #232]	; (d03e55cc <main+0x1778>)
d03e54e2:	781a      	ldrb	r2, [r3, #0]
d03e54e4:	f89b 3000 	ldrb.w	r3, [fp]
d03e54e8:	4422      	add	r2, r4
d03e54ea:	f002 020f 	and.w	r2, r2, #15
d03e54ee:	b12b      	cbz	r3, d03e54fc <main+0x16a8>
d03e54f0:	f89b 3001 	ldrb.w	r3, [fp, #1]
d03e54f4:	1a9b      	subs	r3, r3, r2
d03e54f6:	fab3 f383 	clz	r3, r3
d03e54fa:	095b      	lsrs	r3, r3, #5
d03e54fc:	f89b 1008 	ldrb.w	r1, [fp, #8]
d03e5500:	b129      	cbz	r1, d03e550e <main+0x16ba>
d03e5502:	f89b 1009 	ldrb.w	r1, [fp, #9]
d03e5506:	4291      	cmp	r1, r2
d03e5508:	d101      	bne.n	d03e550e <main+0x16ba>
d03e550a:	3301      	adds	r3, #1
d03e550c:	b2db      	uxtb	r3, r3
d03e550e:	f89b 1010 	ldrb.w	r1, [fp, #16]
d03e5512:	b129      	cbz	r1, d03e5520 <main+0x16cc>
d03e5514:	f89b 1011 	ldrb.w	r1, [fp, #17]
d03e5518:	4291      	cmp	r1, r2
d03e551a:	d101      	bne.n	d03e5520 <main+0x16cc>
d03e551c:	3301      	adds	r3, #1
d03e551e:	b2db      	uxtb	r3, r3
d03e5520:	f89b 1018 	ldrb.w	r1, [fp, #24]
d03e5524:	b129      	cbz	r1, d03e5532 <main+0x16de>
d03e5526:	f89b 1019 	ldrb.w	r1, [fp, #25]
d03e552a:	4291      	cmp	r1, r2
d03e552c:	d101      	bne.n	d03e5532 <main+0x16de>
d03e552e:	3301      	adds	r3, #1
d03e5530:	b2db      	uxtb	r3, r3
d03e5532:	f89b 1020 	ldrb.w	r1, [fp, #32]
d03e5536:	b119      	cbz	r1, d03e5540 <main+0x16ec>
d03e5538:	f89b 1021 	ldrb.w	r1, [fp, #33]	; 0x21
d03e553c:	4291      	cmp	r1, r2
d03e553e:	d00c      	beq.n	d03e555a <main+0x1706>
d03e5540:	f89b 1028 	ldrb.w	r1, [fp, #40]	; 0x28
d03e5544:	b119      	cbz	r1, d03e554e <main+0x16fa>
d03e5546:	f89b 1029 	ldrb.w	r1, [fp, #41]	; 0x29
d03e554a:	4291      	cmp	r1, r2
d03e554c:	d00e      	beq.n	d03e556c <main+0x1718>
d03e554e:	b97b      	cbnz	r3, d03e5570 <main+0x171c>
d03e5550:	3401      	adds	r4, #1
d03e5552:	2c04      	cmp	r4, #4
d03e5554:	d1c4      	bne.n	d03e54e0 <main+0x168c>
d03e5556:	f7ff bb82 	b.w	d03e4c5e <main+0xe0a>
d03e555a:	3301      	adds	r3, #1
d03e555c:	f89b 1028 	ldrb.w	r1, [fp, #40]	; 0x28
d03e5560:	b2db      	uxtb	r3, r3
d03e5562:	b129      	cbz	r1, d03e5570 <main+0x171c>
d03e5564:	f89b 1029 	ldrb.w	r1, [fp, #41]	; 0x29
d03e5568:	4291      	cmp	r1, r2
d03e556a:	d101      	bne.n	d03e5570 <main+0x171c>
d03e556c:	3301      	adds	r3, #1
d03e556e:	b2db      	uxtb	r3, r3
d03e5570:	462a      	mov	r2, r5
d03e5572:	2160      	movs	r1, #96	; 0x60
d03e5574:	a828      	add	r0, sp, #160	; 0xa0
d03e5576:	f001 f97f 	bl	d03e6878 <sniprintf>
d03e557a:	f89a 600c 	ldrb.w	r6, [sl, #12]
d03e557e:	f89a 100d 	ldrb.w	r1, [sl, #13]
d03e5582:	200e      	movs	r0, #14
d03e5584:	f89a 200e 	ldrb.w	r2, [sl, #14]
d03e5588:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
d03e558c:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e5590:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e5594:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e5598:	685b      	ldr	r3, [r3, #4]
d03e559a:	68db      	ldr	r3, [r3, #12]
d03e559c:	4798      	blx	r3
d03e559e:	f89a 700c 	ldrb.w	r7, [sl, #12]
d03e55a2:	f89a 600d 	ldrb.w	r6, [sl, #13]
d03e55a6:	0121      	lsls	r1, r4, #4
d03e55a8:	f89a c00e 	ldrb.w	ip, [sl, #14]
d03e55ac:	aa28      	add	r2, sp, #160	; 0xa0
d03e55ae:	ea47 2006 	orr.w	r0, r7, r6, lsl #8
d03e55b2:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e55b6:	31c2      	adds	r1, #194	; 0xc2
d03e55b8:	ea40 460c 	orr.w	r6, r0, ip, lsl #16
d03e55bc:	20cc      	movs	r0, #204	; 0xcc
d03e55be:	ea46 6303 	orr.w	r3, r6, r3, lsl #24
d03e55c2:	685b      	ldr	r3, [r3, #4]
d03e55c4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e55c6:	4798      	blx	r3
d03e55c8:	e7c2      	b.n	d03e5550 <main+0x16fc>
d03e55ca:	bf00      	nop
d03e55cc:	d03e8ffb 	.word	0xd03e8ffb
d03e55d0:	d03e7ff4 	.word	0xd03e7ff4
d03e55d4:	d03e805c 	.word	0xd03e805c
d03e55d8:	d03e8fac 	.word	0xd03e8fac
d03e55dc:	d03e8fa4 	.word	0xd03e8fa4
d03e55e0:	d03e8004 	.word	0xd03e8004
d03e55e4:	d03e8d8a 	.word	0xd03e8d8a
d03e55e8:	d03e8f92 	.word	0xd03e8f92
d03e55ec:	d03e8018 	.word	0xd03e8018
d03e55f0:	d03e8d34 	.word	0xd03e8d34
d03e55f4:	d03e8d54 	.word	0xd03e8d54
d03e55f8:	d03e8d74 	.word	0xd03e8d74
d03e55fc:	d03e8030 	.word	0xd03e8030
d03e5600:	4b86      	ldr	r3, [pc, #536]	; (d03e581c <main+0x19c8>)
d03e5602:	781b      	ldrb	r3, [r3, #0]
d03e5604:	2b00      	cmp	r3, #0
d03e5606:	f43f ab2a 	beq.w	d03e4c5e <main+0xe0a>
d03e560a:	4e85      	ldr	r6, [pc, #532]	; (d03e5820 <main+0x19cc>)
d03e560c:	4b85      	ldr	r3, [pc, #532]	; (d03e5824 <main+0x19d0>)
d03e560e:	7834      	ldrb	r4, [r6, #0]
d03e5610:	781d      	ldrb	r5, [r3, #0]
d03e5612:	42ac      	cmp	r4, r5
d03e5614:	d32c      	bcc.n	d03e5670 <main+0x181c>
d03e5616:	1deb      	adds	r3, r5, #7
d03e5618:	b2db      	uxtb	r3, r3
d03e561a:	429c      	cmp	r4, r3
d03e561c:	d228      	bcs.n	d03e5670 <main+0x181c>
d03e561e:	f89a 300c 	ldrb.w	r3, [sl, #12]
d03e5622:	200e      	movs	r0, #14
d03e5624:	f89a 200d 	ldrb.w	r2, [sl, #13]
d03e5628:	1b64      	subs	r4, r4, r5
d03e562a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e562e:	f89a 200e 	ldrb.w	r2, [sl, #14]
d03e5632:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e5636:	f89a 200f 	ldrb.w	r2, [sl, #15]
d03e563a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e563e:	685b      	ldr	r3, [r3, #4]
d03e5640:	68db      	ldr	r3, [r3, #12]
d03e5642:	4798      	blx	r3
d03e5644:	f89a 200c 	ldrb.w	r2, [sl, #12]
d03e5648:	f89a 100d 	ldrb.w	r1, [sl, #13]
d03e564c:	2014      	movs	r0, #20
d03e564e:	f89a 300e 	ldrb.w	r3, [sl, #14]
d03e5652:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d03e5656:	f89a 500f 	ldrb.w	r5, [sl, #15]
d03e565a:	0121      	lsls	r1, r4, #4
d03e565c:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d03e5660:	4a71      	ldr	r2, [pc, #452]	; (d03e5828 <main+0x19d4>)
d03e5662:	3186      	adds	r1, #134	; 0x86
d03e5664:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d03e5668:	685b      	ldr	r3, [r3, #4]
d03e566a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e566c:	4798      	blx	r3
d03e566e:	7834      	ldrb	r4, [r6, #0]
d03e5670:	4b6e      	ldr	r3, [pc, #440]	; (d03e582c <main+0x19d8>)
d03e5672:	a828      	add	r0, sp, #160	; 0xa0
d03e5674:	4a6e      	ldr	r2, [pc, #440]	; (d03e5830 <main+0x19dc>)
d03e5676:	7819      	ldrb	r1, [r3, #0]
d03e5678:	4623      	mov	r3, r4
d03e567a:	9100      	str	r1, [sp, #0]
d03e567c:	2118      	movs	r1, #24
d03e567e:	f001 f8fb 	bl	d03e6878 <sniprintf>
d03e5682:	f89a 400c 	ldrb.w	r4, [sl, #12]
d03e5686:	f89a 100d 	ldrb.w	r1, [sl, #13]
d03e568a:	200e      	movs	r0, #14
d03e568c:	f89a 200e 	ldrb.w	r2, [sl, #14]
d03e5690:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d03e5694:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e5698:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e569c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e56a0:	685b      	ldr	r3, [r3, #4]
d03e56a2:	68db      	ldr	r3, [r3, #12]
d03e56a4:	4798      	blx	r3
d03e56a6:	f89a 000c 	ldrb.w	r0, [sl, #12]
d03e56aa:	f89a 500d 	ldrb.w	r5, [sl, #13]
d03e56ae:	21fa      	movs	r1, #250	; 0xfa
d03e56b0:	f89a 400e 	ldrb.w	r4, [sl, #14]
d03e56b4:	aa28      	add	r2, sp, #160	; 0xa0
d03e56b6:	ea40 2505 	orr.w	r5, r0, r5, lsl #8
d03e56ba:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e56be:	4608      	mov	r0, r1
d03e56c0:	ea45 4404 	orr.w	r4, r5, r4, lsl #16
d03e56c4:	ea44 6303 	orr.w	r3, r4, r3, lsl #24
d03e56c8:	685b      	ldr	r3, [r3, #4]
d03e56ca:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e56cc:	4798      	blx	r3
d03e56ce:	f7ff bac6 	b.w	d03e4c5e <main+0xe0a>
d03e56d2:	4a58      	ldr	r2, [pc, #352]	; (d03e5834 <main+0x19e0>)
d03e56d4:	2301      	movs	r3, #1
d03e56d6:	7814      	ldrb	r4, [r2, #0]
d03e56d8:	4a57      	ldr	r2, [pc, #348]	; (d03e5838 <main+0x19e4>)
d03e56da:	7013      	strb	r3, [r2, #0]
d03e56dc:	f7ff b85c 	b.w	d03e4798 <main+0x944>
d03e56e0:	b290      	uxth	r0, r2
d03e56e2:	f1a0 012b 	sub.w	r1, r0, #43	; 0x2b
d03e56e6:	2917      	cmp	r1, #23
d03e56e8:	bf8c      	ite	hi
d03e56ea:	2100      	movhi	r1, #0
d03e56ec:	2101      	movls	r1, #1
d03e56ee:	2b5b      	cmp	r3, #91	; 0x5b
d03e56f0:	dc02      	bgt.n	d03e56f8 <main+0x18a4>
d03e56f2:	2900      	cmp	r1, #0
d03e56f4:	f040 8270 	bne.w	d03e5bd8 <main+0x1d84>
d03e56f8:	2b65      	cmp	r3, #101	; 0x65
d03e56fa:	f340 83dc 	ble.w	d03e5eb6 <main+0x2062>
d03e56fe:	2bb7      	cmp	r3, #183	; 0xb7
d03e5700:	dc02      	bgt.n	d03e5708 <main+0x18b4>
d03e5702:	2900      	cmp	r1, #0
d03e5704:	f040 83dd 	bne.w	d03e5ec2 <main+0x206e>
d03e5708:	2bc1      	cmp	r3, #193	; 0xc1
d03e570a:	f340 86fa 	ble.w	d03e6502 <main+0x26ae>
d03e570e:	f5b3 7f8a 	cmp.w	r3, #276	; 0x114
d03e5712:	da02      	bge.n	d03e571a <main+0x18c6>
d03e5714:	2900      	cmp	r1, #0
d03e5716:	f040 826e 	bne.w	d03e5bf6 <main+0x1da2>
d03e571a:	f5b3 7f8f 	cmp.w	r3, #286	; 0x11e
d03e571e:	f2c0 86f0 	blt.w	d03e6502 <main+0x26ae>
d03e5722:	f5b3 7fb8 	cmp.w	r3, #368	; 0x170
d03e5726:	da02      	bge.n	d03e572e <main+0x18da>
d03e5728:	2900      	cmp	r1, #0
d03e572a:	f040 826c 	bne.w	d03e5c06 <main+0x1db2>
d03e572e:	f5b3 7fbd 	cmp.w	r3, #378	; 0x17a
d03e5732:	f2c0 86e6 	blt.w	d03e6502 <main+0x26ae>
d03e5736:	f5b3 7fe6 	cmp.w	r3, #460	; 0x1cc
d03e573a:	da02      	bge.n	d03e5742 <main+0x18ee>
d03e573c:	2900      	cmp	r1, #0
d03e573e:	f040 8377 	bne.w	d03e5e30 <main+0x1fdc>
d03e5742:	f5a0 718e 	sub.w	r1, r0, #284	; 0x11c
d03e5746:	2917      	cmp	r1, #23
d03e5748:	bf8c      	ite	hi
d03e574a:	2100      	movhi	r1, #0
d03e574c:	2101      	movls	r1, #1
d03e574e:	f5b3 7fc1 	cmp.w	r3, #386	; 0x182
d03e5752:	da02      	bge.n	d03e575a <main+0x1906>
d03e5754:	2900      	cmp	r1, #0
d03e5756:	f040 8374 	bne.w	d03e5e42 <main+0x1fee>
d03e575a:	f5b3 7fc4 	cmp.w	r3, #392	; 0x188
d03e575e:	f6fe af6f 	blt.w	d03e4640 <main+0x7ec>
d03e5762:	f5b3 7fdf 	cmp.w	r3, #446	; 0x1be
d03e5766:	da02      	bge.n	d03e576e <main+0x191a>
d03e5768:	2900      	cmp	r1, #0
d03e576a:	f040 837a 	bne.w	d03e5e62 <main+0x200e>
d03e576e:	4931      	ldr	r1, [pc, #196]	; (d03e5834 <main+0x19e0>)
d03e5770:	780c      	ldrb	r4, [r1, #0]
d03e5772:	2c04      	cmp	r4, #4
d03e5774:	f63f a810 	bhi.w	d03e4798 <main+0x944>
d03e5778:	a101      	add	r1, pc, #4	; (adr r1, d03e5780 <main+0x192c>)
d03e577a:	f851 f024 	ldr.w	pc, [r1, r4, lsl #2]
d03e577e:	bf00      	nop
d03e5780:	d03e5da3 	.word	0xd03e5da3
d03e5784:	d03e5c89 	.word	0xd03e5c89
d03e5788:	d03e5d29 	.word	0xd03e5d29
d03e578c:	d03e5c47 	.word	0xd03e5c47
d03e5790:	d03e5123 	.word	0xd03e5123
d03e5794:	2200      	movs	r2, #0
d03e5796:	4613      	mov	r3, r2
d03e5798:	f7fe bf10 	b.w	d03e45bc <main+0x768>
d03e579c:	2400      	movs	r4, #0
d03e579e:	b2e0      	uxtb	r0, r4
d03e57a0:	f7fb f866 	bl	d03e0870 <sid_voice_note_kill>
d03e57a4:	f80b 9034 	strb.w	r9, [fp, r4, lsl #3]
d03e57a8:	eb0b 03c4 	add.w	r3, fp, r4, lsl #3
d03e57ac:	3401      	adds	r4, #1
d03e57ae:	2c06      	cmp	r4, #6
d03e57b0:	f8a3 9006 	strh.w	r9, [r3, #6]
d03e57b4:	d1f3      	bne.n	d03e579e <main+0x194a>
d03e57b6:	235a      	movs	r3, #90	; 0x5a
d03e57b8:	4a20      	ldr	r2, [pc, #128]	; (d03e583c <main+0x19e8>)
d03e57ba:	4e21      	ldr	r6, [pc, #132]	; (d03e5840 <main+0x19ec>)
d03e57bc:	7013      	strb	r3, [r2, #0]
d03e57be:	4b21      	ldr	r3, [pc, #132]	; (d03e5844 <main+0x19f0>)
d03e57c0:	4d21      	ldr	r5, [pc, #132]	; (d03e5848 <main+0x19f4>)
d03e57c2:	681c      	ldr	r4, [r3, #0]
d03e57c4:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
d03e57c6:	3401      	adds	r4, #1
d03e57c8:	6836      	ldr	r6, [r6, #0]
d03e57ca:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d03e57cc:	4b1d      	ldr	r3, [pc, #116]	; (d03e5844 <main+0x19f0>)
d03e57ce:	802e      	strh	r6, [r5, #0]
d03e57d0:	601c      	str	r4, [r3, #0]
d03e57d2:	4b18      	ldr	r3, [pc, #96]	; (d03e5834 <main+0x19e0>)
d03e57d4:	781c      	ldrb	r4, [r3, #0]
d03e57d6:	f7fe bfdf 	b.w	d03e4798 <main+0x944>
d03e57da:	9a04      	ldr	r2, [sp, #16]
d03e57dc:	3b01      	subs	r3, #1
d03e57de:	9209      	str	r2, [sp, #36]	; 0x24
d03e57e0:	9206      	str	r2, [sp, #24]
d03e57e2:	4a1a      	ldr	r2, [pc, #104]	; (d03e584c <main+0x19f8>)
d03e57e4:	7013      	strb	r3, [r2, #0]
d03e57e6:	f7fe be8f 	b.w	d03e4508 <main+0x6b4>
d03e57ea:	4a19      	ldr	r2, [pc, #100]	; (d03e5850 <main+0x19fc>)
d03e57ec:	490d      	ldr	r1, [pc, #52]	; (d03e5824 <main+0x19d0>)
d03e57ee:	7812      	ldrb	r2, [r2, #0]
d03e57f0:	700a      	strb	r2, [r1, #0]
d03e57f2:	4295      	cmp	r5, r2
d03e57f4:	d202      	bcs.n	d03e57fc <main+0x19a8>
d03e57f6:	490b      	ldr	r1, [pc, #44]	; (d03e5824 <main+0x19d0>)
d03e57f8:	462a      	mov	r2, r5
d03e57fa:	700d      	strb	r5, [r1, #0]
d03e57fc:	4915      	ldr	r1, [pc, #84]	; (d03e5854 <main+0x1a00>)
d03e57fe:	ac10      	add	r4, sp, #64	; 0x40
d03e5800:	f881 9000 	strb.w	r9, [r1]
d03e5804:	490b      	ldr	r1, [pc, #44]	; (d03e5834 <main+0x19e0>)
d03e5806:	780f      	ldrb	r7, [r1, #0]
d03e5808:	f7ff b89c 	b.w	d03e4944 <main+0xaf0>
d03e580c:	9b04      	ldr	r3, [sp, #16]
d03e580e:	069b      	lsls	r3, r3, #26
d03e5810:	f57f a815 	bpl.w	d03e483e <main+0x9ea>
d03e5814:	220a      	movs	r2, #10
d03e5816:	4613      	mov	r3, r2
d03e5818:	f7fe bfde 	b.w	d03e47d8 <main+0x984>
d03e581c:	d03e9028 	.word	0xd03e9028
d03e5820:	d03e9027 	.word	0xd03e9027
d03e5824:	d03e902a 	.word	0xd03e902a
d03e5828:	d03e8050 	.word	0xd03e8050
d03e582c:	d03e9029 	.word	0xd03e9029
d03e5830:	d03e8054 	.word	0xd03e8054
d03e5834:	d03e8ff5 	.word	0xd03e8ff5
d03e5838:	d03e8ff1 	.word	0xd03e8ff1
d03e583c:	d03e9024 	.word	0xd03e9024
d03e5840:	d03e7f5c 	.word	0xd03e7f5c
d03e5844:	d03e8fa4 	.word	0xd03e8fa4
d03e5848:	d03e8ffc 	.word	0xd03e8ffc
d03e584c:	d03e8ffa 	.word	0xd03e8ffa
d03e5850:	d03e9026 	.word	0xd03e9026
d03e5854:	d03e9025 	.word	0xd03e9025
d03e5858:	f89a 100c 	ldrb.w	r1, [sl, #12]
d03e585c:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03e5860:	f89a 400d 	ldrb.w	r4, [sl, #13]
d03e5864:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03e5868:	f89a 000e 	ldrb.w	r0, [sl, #14]
d03e586c:	2602      	movs	r6, #2
d03e586e:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
d03e5872:	f89a 400f 	ldrb.w	r4, [sl, #15]
d03e5876:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d03e587a:	4619      	mov	r1, r3
d03e587c:	ea40 6404 	orr.w	r4, r0, r4, lsl #24
d03e5880:	4610      	mov	r0, r2
d03e5882:	6825      	ldr	r5, [r4, #0]
d03e5884:	2400      	movs	r4, #0
d03e5886:	9600      	str	r6, [sp, #0]
d03e5888:	696d      	ldr	r5, [r5, #20]
d03e588a:	47a8      	blx	r5
d03e588c:	f89a 000c 	ldrb.w	r0, [sl, #12]
d03e5890:	f89a 300d 	ldrb.w	r3, [sl, #13]
d03e5894:	4621      	mov	r1, r4
d03e5896:	f89a 200e 	ldrb.w	r2, [sl, #14]
d03e589a:	4625      	mov	r5, r4
d03e589c:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
d03e58a0:	f89a 300f 	ldrb.w	r3, [sl, #15]
d03e58a4:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d03e58a8:	4620      	mov	r0, r4
d03e58aa:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e58ae:	681b      	ldr	r3, [r3, #0]
d03e58b0:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d03e58b2:	4798      	blx	r3
d03e58b4:	f89a 1004 	ldrb.w	r1, [sl, #4]
d03e58b8:	f89a 3005 	ldrb.w	r3, [sl, #5]
d03e58bc:	f89a 2006 	ldrb.w	r2, [sl, #6]
d03e58c0:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e58c4:	f89a 3007 	ldrb.w	r3, [sl, #7]
d03e58c8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e58cc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e58d0:	685b      	ldr	r3, [r3, #4]
d03e58d2:	4798      	blx	r3
d03e58d4:	f89a 1000 	ldrb.w	r1, [sl]
d03e58d8:	f89a 3001 	ldrb.w	r3, [sl, #1]
d03e58dc:	f89a 2002 	ldrb.w	r2, [sl, #2]
d03e58e0:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e58e4:	f89a 3003 	ldrb.w	r3, [sl, #3]
d03e58e8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e58ec:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e58f0:	685b      	ldr	r3, [r3, #4]
d03e58f2:	4798      	blx	r3
d03e58f4:	f89a 1020 	ldrb.w	r1, [sl, #32]
d03e58f8:	f89a 3021 	ldrb.w	r3, [sl, #33]	; 0x21
d03e58fc:	4620      	mov	r0, r4
d03e58fe:	f89a 2022 	ldrb.w	r2, [sl, #34]	; 0x22
d03e5902:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e5906:	f89a 3023 	ldrb.w	r3, [sl, #35]	; 0x23
d03e590a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e590e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e5912:	685b      	ldr	r3, [r3, #4]
d03e5914:	4798      	blx	r3
d03e5916:	f89a 1020 	ldrb.w	r1, [sl, #32]
d03e591a:	f89a 3021 	ldrb.w	r3, [sl, #33]	; 0x21
d03e591e:	4620      	mov	r0, r4
d03e5920:	f89a 2022 	ldrb.w	r2, [sl, #34]	; 0x22
d03e5924:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03e5928:	f89a 3023 	ldrb.w	r3, [sl, #35]	; 0x23
d03e592c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e5930:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e5934:	681b      	ldr	r3, [r3, #0]
d03e5936:	4798      	blx	r3
d03e5938:	b2e0      	uxtb	r0, r4
d03e593a:	f7fa ff99 	bl	d03e0870 <sid_voice_note_kill>
d03e593e:	f80b 5034 	strb.w	r5, [fp, r4, lsl #3]
d03e5942:	eb0b 03c4 	add.w	r3, fp, r4, lsl #3
d03e5946:	3401      	adds	r4, #1
d03e5948:	2c06      	cmp	r4, #6
d03e594a:	80dd      	strh	r5, [r3, #6]
d03e594c:	d1f4      	bne.n	d03e5938 <main+0x1ae4>
d03e594e:	f89a 3014 	ldrb.w	r3, [sl, #20]
d03e5952:	f89a 2015 	ldrb.w	r2, [sl, #21]
d03e5956:	f89a 0016 	ldrb.w	r0, [sl, #22]
d03e595a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e595e:	f89a 1017 	ldrb.w	r1, [sl, #23]
d03e5962:	4caa      	ldr	r4, [pc, #680]	; (d03e5c0c <main+0x1db8>)
d03e5964:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e5968:	6822      	ldr	r2, [r4, #0]
d03e596a:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d03e596e:	3201      	adds	r2, #1
d03e5970:	685b      	ldr	r3, [r3, #4]
d03e5972:	6022      	str	r2, [r4, #0]
d03e5974:	68db      	ldr	r3, [r3, #12]
d03e5976:	4798      	blx	r3
d03e5978:	f89a 3014 	ldrb.w	r3, [sl, #20]
d03e597c:	f89a 2015 	ldrb.w	r2, [sl, #21]
d03e5980:	f44f 4080 	mov.w	r0, #16384	; 0x4000
d03e5984:	f89a 1016 	ldrb.w	r1, [sl, #22]
d03e5988:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e598c:	f89a 2017 	ldrb.w	r2, [sl, #23]
d03e5990:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e5994:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e5998:	681b      	ldr	r3, [r3, #0]
d03e599a:	681b      	ldr	r3, [r3, #0]
d03e599c:	4798      	blx	r3
d03e599e:	f89a 3014 	ldrb.w	r3, [sl, #20]
d03e59a2:	f89a 2015 	ldrb.w	r2, [sl, #21]
d03e59a6:	2000      	movs	r0, #0
d03e59a8:	f89a 1016 	ldrb.w	r1, [sl, #22]
d03e59ac:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e59b0:	f89a 2017 	ldrb.w	r2, [sl, #23]
d03e59b4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e59b8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e59bc:	681b      	ldr	r3, [r3, #0]
d03e59be:	685b      	ldr	r3, [r3, #4]
d03e59c0:	701d      	strb	r5, [r3, #0]
d03e59c2:	b041      	add	sp, #260	; 0x104
d03e59c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e59c8:	4601      	mov	r1, r0
d03e59ca:	f7fe bf33 	b.w	d03e4834 <main+0x9e0>
d03e59ce:	4a90      	ldr	r2, [pc, #576]	; (d03e5c10 <main+0x1dbc>)
d03e59d0:	2100      	movs	r1, #0
d03e59d2:	4890      	ldr	r0, [pc, #576]	; (d03e5c14 <main+0x1dc0>)
d03e59d4:	7812      	ldrb	r2, [r2, #0]
d03e59d6:	7002      	strb	r2, [r0, #0]
d03e59d8:	e001      	b.n	d03e59de <main+0x1b8a>
d03e59da:	2960      	cmp	r1, #96	; 0x60
d03e59dc:	d00a      	beq.n	d03e59f4 <main+0x1ba0>
d03e59de:	f814 5021 	ldrb.w	r5, [r4, r1, lsl #2]
d03e59e2:	b2c8      	uxtb	r0, r1
d03e59e4:	3101      	adds	r1, #1
d03e59e6:	2d00      	cmp	r5, #0
d03e59e8:	d1f7      	bne.n	d03e59da <main+0x1b86>
d03e59ea:	1c41      	adds	r1, r0, #1
d03e59ec:	b2c9      	uxtb	r1, r1
d03e59ee:	2907      	cmp	r1, #7
d03e59f0:	f67f aeff 	bls.w	d03e57f2 <main+0x199e>
d03e59f4:	3907      	subs	r1, #7
d03e59f6:	b2cd      	uxtb	r5, r1
d03e59f8:	e6fb      	b.n	d03e57f2 <main+0x199e>
d03e59fa:	230a      	movs	r3, #10
d03e59fc:	f7ff ba25 	b.w	d03e4e4a <main+0xff6>
d03e5a00:	4a83      	ldr	r2, [pc, #524]	; (d03e5c10 <main+0x1dbc>)
d03e5a02:	4985      	ldr	r1, [pc, #532]	; (d03e5c18 <main+0x1dc4>)
d03e5a04:	7810      	ldrb	r0, [r2, #0]
d03e5a06:	56ca      	ldrsb	r2, [r1, r3]
d03e5a08:	4e82      	ldr	r6, [pc, #520]	; (d03e5c14 <main+0x1dc0>)
d03e5a0a:	2a00      	cmp	r2, #0
d03e5a0c:	5cc9      	ldrb	r1, [r1, r3]
d03e5a0e:	7030      	strb	r0, [r6, #0]
d03e5a10:	db13      	blt.n	d03e5a3a <main+0x1be6>
d03e5a12:	4a82      	ldr	r2, [pc, #520]	; (d03e5c1c <main+0x1dc8>)
d03e5a14:	f852 6021 	ldr.w	r6, [r2, r1, lsl #2]
d03e5a18:	b17e      	cbz	r6, d03e5a3a <main+0x1be6>
d03e5a1a:	2200      	movs	r2, #0
d03e5a1c:	e002      	b.n	d03e5a24 <main+0x1bd0>
d03e5a1e:	2a60      	cmp	r2, #96	; 0x60
d03e5a20:	f000 8201 	beq.w	d03e5e26 <main+0x1fd2>
d03e5a24:	f816 5022 	ldrb.w	r5, [r6, r2, lsl #2]
d03e5a28:	b2d1      	uxtb	r1, r2
d03e5a2a:	3201      	adds	r2, #1
d03e5a2c:	2d00      	cmp	r5, #0
d03e5a2e:	d1f6      	bne.n	d03e5a1e <main+0x1bca>
d03e5a30:	1c4a      	adds	r2, r1, #1
d03e5a32:	b2d2      	uxtb	r2, r2
d03e5a34:	2a07      	cmp	r2, #7
d03e5a36:	f200 81f6 	bhi.w	d03e5e26 <main+0x1fd2>
d03e5a3a:	42a8      	cmp	r0, r5
d03e5a3c:	d901      	bls.n	d03e5a42 <main+0x1bee>
d03e5a3e:	4a75      	ldr	r2, [pc, #468]	; (d03e5c14 <main+0x1dc0>)
d03e5a40:	7015      	strb	r5, [r2, #0]
d03e5a42:	4a77      	ldr	r2, [pc, #476]	; (d03e5c20 <main+0x1dcc>)
d03e5a44:	f882 9000 	strb.w	r9, [r2]
d03e5a48:	4a72      	ldr	r2, [pc, #456]	; (d03e5c14 <main+0x1dc0>)
d03e5a4a:	7812      	ldrb	r2, [r2, #0]
d03e5a4c:	f7fe bf7a 	b.w	d03e4944 <main+0xaf0>
d03e5a50:	3b07      	subs	r3, #7
d03e5a52:	b2d9      	uxtb	r1, r3
d03e5a54:	e444      	b.n	d03e52e0 <main+0x148c>
d03e5a56:	3b07      	subs	r3, #7
d03e5a58:	b2d9      	uxtb	r1, r3
d03e5a5a:	e415      	b.n	d03e5288 <main+0x1434>
d03e5a5c:	2100      	movs	r1, #0
d03e5a5e:	e43f      	b.n	d03e52e0 <main+0x148c>
d03e5a60:	2100      	movs	r1, #0
d03e5a62:	e411      	b.n	d03e5288 <main+0x1434>
d03e5a64:	f64f 73ff 	movw	r3, #65535	; 0xffff
d03e5a68:	f7fe beb6 	b.w	d03e47d8 <main+0x984>
d03e5a6c:	f89b 2004 	ldrb.w	r2, [fp, #4]
d03e5a70:	428a      	cmp	r2, r1
d03e5a72:	f47e af37 	bne.w	d03e48e4 <main+0xa90>
d03e5a76:	2700      	movs	r7, #0
d03e5a78:	ac10      	add	r4, sp, #64	; 0x40
d03e5a7a:	aa28      	add	r2, sp, #160	; 0xa0
d03e5a7c:	4638      	mov	r0, r7
d03e5a7e:	4621      	mov	r1, r4
d03e5a80:	f7fb f850 	bl	d03e0b24 <sid_voice_get_vm_debug>
d03e5a84:	2800      	cmp	r0, #0
d03e5a86:	d060      	beq.n	d03e5b4a <main+0x1cf6>
d03e5a88:	f89d 30a0 	ldrb.w	r3, [sp, #160]	; 0xa0
d03e5a8c:	2b00      	cmp	r3, #0
d03e5a8e:	d05c      	beq.n	d03e5b4a <main+0x1cf6>
d03e5a90:	4963      	ldr	r1, [pc, #396]	; (d03e5c20 <main+0x1dcc>)
d03e5a92:	780b      	ldrb	r3, [r1, #0]
d03e5a94:	b92b      	cbnz	r3, d03e5aa2 <main+0x1c4e>
d03e5a96:	4b5f      	ldr	r3, [pc, #380]	; (d03e5c14 <main+0x1dc0>)
d03e5a98:	485d      	ldr	r0, [pc, #372]	; (d03e5c10 <main+0x1dbc>)
d03e5a9a:	781a      	ldrb	r2, [r3, #0]
d03e5a9c:	2301      	movs	r3, #1
d03e5a9e:	7002      	strb	r2, [r0, #0]
d03e5aa0:	700b      	strb	r3, [r1, #0]
d03e5aa2:	f89d 3040 	ldrb.w	r3, [sp, #64]	; 0x40
d03e5aa6:	42b3      	cmp	r3, r6
d03e5aa8:	d303      	bcc.n	d03e5ab2 <main+0x1c5e>
d03e5aaa:	3e01      	subs	r6, #1
d03e5aac:	b2f3      	uxtb	r3, r6
d03e5aae:	f88d 6040 	strb.w	r6, [sp, #64]	; 0x40
d03e5ab2:	4a5c      	ldr	r2, [pc, #368]	; (d03e5c24 <main+0x1dd0>)
d03e5ab4:	2101      	movs	r1, #1
d03e5ab6:	4857      	ldr	r0, [pc, #348]	; (d03e5c14 <main+0x1dc0>)
d03e5ab8:	7013      	strb	r3, [r2, #0]
d03e5aba:	4a5b      	ldr	r2, [pc, #364]	; (d03e5c28 <main+0x1dd4>)
d03e5abc:	4e5b      	ldr	r6, [pc, #364]	; (d03e5c2c <main+0x1dd8>)
d03e5abe:	7017      	strb	r7, [r2, #0]
d03e5ac0:	7802      	ldrb	r2, [r0, #0]
d03e5ac2:	7031      	strb	r1, [r6, #0]
d03e5ac4:	4293      	cmp	r3, r2
d03e5ac6:	d24d      	bcs.n	d03e5b64 <main+0x1d10>
d03e5ac8:	7003      	strb	r3, [r0, #0]
d03e5aca:	4b59      	ldr	r3, [pc, #356]	; (d03e5c30 <main+0x1ddc>)
d03e5acc:	4952      	ldr	r1, [pc, #328]	; (d03e5c18 <main+0x1dc4>)
d03e5ace:	781b      	ldrb	r3, [r3, #0]
d03e5ad0:	56ca      	ldrsb	r2, [r1, r3]
d03e5ad2:	5cc9      	ldrb	r1, [r1, r3]
d03e5ad4:	2a00      	cmp	r2, #0
d03e5ad6:	db12      	blt.n	d03e5afe <main+0x1caa>
d03e5ad8:	4a50      	ldr	r2, [pc, #320]	; (d03e5c1c <main+0x1dc8>)
d03e5ada:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
d03e5ade:	b170      	cbz	r0, d03e5afe <main+0x1caa>
d03e5ae0:	2200      	movs	r2, #0
d03e5ae2:	e002      	b.n	d03e5aea <main+0x1c96>
d03e5ae4:	2a60      	cmp	r2, #96	; 0x60
d03e5ae6:	f000 8083 	beq.w	d03e5bf0 <main+0x1d9c>
d03e5aea:	f810 5022 	ldrb.w	r5, [r0, r2, lsl #2]
d03e5aee:	b2d1      	uxtb	r1, r2
d03e5af0:	3201      	adds	r2, #1
d03e5af2:	2d00      	cmp	r5, #0
d03e5af4:	d1f6      	bne.n	d03e5ae4 <main+0x1c90>
d03e5af6:	1c4a      	adds	r2, r1, #1
d03e5af8:	b2d2      	uxtb	r2, r2
d03e5afa:	2a07      	cmp	r2, #7
d03e5afc:	d878      	bhi.n	d03e5bf0 <main+0x1d9c>
d03e5afe:	4945      	ldr	r1, [pc, #276]	; (d03e5c14 <main+0x1dc0>)
d03e5b00:	780a      	ldrb	r2, [r1, #0]
d03e5b02:	42aa      	cmp	r2, r5
d03e5b04:	4a4b      	ldr	r2, [pc, #300]	; (d03e5c34 <main+0x1de0>)
d03e5b06:	7817      	ldrb	r7, [r2, #0]
d03e5b08:	4a42      	ldr	r2, [pc, #264]	; (d03e5c14 <main+0x1dc0>)
d03e5b0a:	bf88      	it	hi
d03e5b0c:	700d      	strbhi	r5, [r1, #0]
d03e5b0e:	7812      	ldrb	r2, [r2, #0]
d03e5b10:	f7fe bf18 	b.w	d03e4944 <main+0xaf0>
d03e5b14:	f89b 200c 	ldrb.w	r2, [fp, #12]
d03e5b18:	428a      	cmp	r2, r1
d03e5b1a:	f47e aeeb 	bne.w	d03e48f4 <main+0xaa0>
d03e5b1e:	2701      	movs	r7, #1
d03e5b20:	e7aa      	b.n	d03e5a78 <main+0x1c24>
d03e5b22:	f89b 2014 	ldrb.w	r2, [fp, #20]
d03e5b26:	428a      	cmp	r2, r1
d03e5b28:	f47e aeec 	bne.w	d03e4904 <main+0xab0>
d03e5b2c:	2702      	movs	r7, #2
d03e5b2e:	e7a3      	b.n	d03e5a78 <main+0x1c24>
d03e5b30:	f89b 201c 	ldrb.w	r2, [fp, #28]
d03e5b34:	428a      	cmp	r2, r1
d03e5b36:	f47e aeed 	bne.w	d03e4914 <main+0xac0>
d03e5b3a:	2703      	movs	r7, #3
d03e5b3c:	e79c      	b.n	d03e5a78 <main+0x1c24>
d03e5b3e:	f89b 2024 	ldrb.w	r2, [fp, #36]	; 0x24
d03e5b42:	428a      	cmp	r2, r1
d03e5b44:	f47e aeee 	bne.w	d03e4924 <main+0xad0>
d03e5b48:	e796      	b.n	d03e5a78 <main+0x1c24>
d03e5b4a:	4b39      	ldr	r3, [pc, #228]	; (d03e5c30 <main+0x1ddc>)
d03e5b4c:	4a39      	ldr	r2, [pc, #228]	; (d03e5c34 <main+0x1de0>)
d03e5b4e:	781b      	ldrb	r3, [r3, #0]
d03e5b50:	7817      	ldrb	r7, [r2, #0]
d03e5b52:	f7fe bef0 	b.w	d03e4936 <main+0xae2>
d03e5b56:	f89b 202c 	ldrb.w	r2, [fp, #44]	; 0x2c
d03e5b5a:	428a      	cmp	r2, r1
d03e5b5c:	f47e aeea 	bne.w	d03e4934 <main+0xae0>
d03e5b60:	2705      	movs	r7, #5
d03e5b62:	e789      	b.n	d03e5a78 <main+0x1c24>
d03e5b64:	3207      	adds	r2, #7
d03e5b66:	b2d2      	uxtb	r2, r2
d03e5b68:	4293      	cmp	r3, r2
d03e5b6a:	d3ae      	bcc.n	d03e5aca <main+0x1c76>
d03e5b6c:	3b06      	subs	r3, #6
d03e5b6e:	4a29      	ldr	r2, [pc, #164]	; (d03e5c14 <main+0x1dc0>)
d03e5b70:	7013      	strb	r3, [r2, #0]
d03e5b72:	e7aa      	b.n	d03e5aca <main+0x1c76>
d03e5b74:	4601      	mov	r1, r0
d03e5b76:	f7ff bbb3 	b.w	d03e52e0 <main+0x148c>
d03e5b7a:	4601      	mov	r1, r0
d03e5b7c:	f7ff bb84 	b.w	d03e5288 <main+0x1434>
d03e5b80:	4b24      	ldr	r3, [pc, #144]	; (d03e5c14 <main+0x1dc0>)
d03e5b82:	4825      	ldr	r0, [pc, #148]	; (d03e5c18 <main+0x1dc4>)
d03e5b84:	7819      	ldrb	r1, [r3, #0]
d03e5b86:	4b2a      	ldr	r3, [pc, #168]	; (d03e5c30 <main+0x1ddc>)
d03e5b88:	3901      	subs	r1, #1
d03e5b8a:	781b      	ldrb	r3, [r3, #0]
d03e5b8c:	b209      	sxth	r1, r1
d03e5b8e:	56c2      	ldrsb	r2, [r0, r3]
d03e5b90:	5cc3      	ldrb	r3, [r0, r3]
d03e5b92:	2a00      	cmp	r2, #0
d03e5b94:	db15      	blt.n	d03e5bc2 <main+0x1d6e>
d03e5b96:	4a21      	ldr	r2, [pc, #132]	; (d03e5c1c <main+0x1dc8>)
d03e5b98:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
d03e5b9c:	b188      	cbz	r0, d03e5bc2 <main+0x1d6e>
d03e5b9e:	9b07      	ldr	r3, [sp, #28]
d03e5ba0:	e001      	b.n	d03e5ba6 <main+0x1d52>
d03e5ba2:	2b60      	cmp	r3, #96	; 0x60
d03e5ba4:	d00a      	beq.n	d03e5bbc <main+0x1d68>
d03e5ba6:	f810 4023 	ldrb.w	r4, [r0, r3, lsl #2]
d03e5baa:	b2da      	uxtb	r2, r3
d03e5bac:	3301      	adds	r3, #1
d03e5bae:	2c00      	cmp	r4, #0
d03e5bb0:	d1f7      	bne.n	d03e5ba2 <main+0x1d4e>
d03e5bb2:	1c53      	adds	r3, r2, #1
d03e5bb4:	9407      	str	r4, [sp, #28]
d03e5bb6:	b2db      	uxtb	r3, r3
d03e5bb8:	2b07      	cmp	r3, #7
d03e5bba:	d902      	bls.n	d03e5bc2 <main+0x1d6e>
d03e5bbc:	3b07      	subs	r3, #7
d03e5bbe:	b2db      	uxtb	r3, r3
d03e5bc0:	9307      	str	r3, [sp, #28]
d03e5bc2:	1c4b      	adds	r3, r1, #1
d03e5bc4:	f000 8132 	beq.w	d03e5e2c <main+0x1fd8>
d03e5bc8:	9b07      	ldr	r3, [sp, #28]
d03e5bca:	4299      	cmp	r1, r3
d03e5bcc:	dd00      	ble.n	d03e5bd0 <main+0x1d7c>
d03e5bce:	b219      	sxth	r1, r3
d03e5bd0:	4b10      	ldr	r3, [pc, #64]	; (d03e5c14 <main+0x1dc0>)
d03e5bd2:	7019      	strb	r1, [r3, #0]
d03e5bd4:	f7ff bae6 	b.w	d03e51a4 <main+0x1350>
d03e5bd8:	4b16      	ldr	r3, [pc, #88]	; (d03e5c34 <main+0x1de0>)
d03e5bda:	f883 c000 	strb.w	ip, [r3]
d03e5bde:	9b05      	ldr	r3, [sp, #20]
d03e5be0:	2b03      	cmp	r3, #3
d03e5be2:	f47e ade0 	bne.w	d03e47a6 <main+0x952>
d03e5be6:	2301      	movs	r3, #1
d03e5be8:	4a13      	ldr	r2, [pc, #76]	; (d03e5c38 <main+0x1de4>)
d03e5bea:	7013      	strb	r3, [r2, #0]
d03e5bec:	f7fe bddb 	b.w	d03e47a6 <main+0x952>
d03e5bf0:	3a07      	subs	r2, #7
d03e5bf2:	b2d5      	uxtb	r5, r2
d03e5bf4:	e783      	b.n	d03e5afe <main+0x1caa>
d03e5bf6:	2302      	movs	r3, #2
d03e5bf8:	4a0e      	ldr	r2, [pc, #56]	; (d03e5c34 <main+0x1de0>)
d03e5bfa:	7013      	strb	r3, [r2, #0]
d03e5bfc:	9b05      	ldr	r3, [sp, #20]
d03e5bfe:	2b03      	cmp	r3, #3
d03e5c00:	f47e add1 	bne.w	d03e47a6 <main+0x952>
d03e5c04:	e7ef      	b.n	d03e5be6 <main+0x1d92>
d03e5c06:	2303      	movs	r3, #3
d03e5c08:	e7f6      	b.n	d03e5bf8 <main+0x1da4>
d03e5c0a:	bf00      	nop
d03e5c0c:	d03e8fa4 	.word	0xd03e8fa4
d03e5c10:	d03e9026 	.word	0xd03e9026
d03e5c14:	d03e902a 	.word	0xd03e902a
d03e5c18:	d03e8d64 	.word	0xd03e8d64
d03e5c1c:	d03e8678 	.word	0xd03e8678
d03e5c20:	d03e9025 	.word	0xd03e9025
d03e5c24:	d03e9027 	.word	0xd03e9027
d03e5c28:	d03e9029 	.word	0xd03e9029
d03e5c2c:	d03e9028 	.word	0xd03e9028
d03e5c30:	d03e8ffb 	.word	0xd03e8ffb
d03e5c34:	d03e8ff5 	.word	0xd03e8ff5
d03e5c38:	d03e8ff1 	.word	0xd03e8ff1
d03e5c3c:	f5b3 7f9d 	cmp.w	r3, #314	; 0x13a
d03e5c40:	f6ff aacb 	blt.w	d03e51da <main+0x1386>
d03e5c44:	b290      	uxth	r0, r2
d03e5c46:	f1a0 025c 	sub.w	r2, r0, #92	; 0x5c
d03e5c4a:	2a17      	cmp	r2, #23
d03e5c4c:	d803      	bhi.n	d03e5c56 <main+0x1e02>
d03e5c4e:	f5b3 7fc8 	cmp.w	r3, #400	; 0x190
d03e5c52:	f2c0 81b9 	blt.w	d03e5fc8 <main+0x2174>
d03e5c56:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d03e5c5a:	db12      	blt.n	d03e5c82 <main+0x1e2e>
d03e5c5c:	388a      	subs	r0, #138	; 0x8a
d03e5c5e:	2815      	cmp	r0, #21
d03e5c60:	bf8c      	ite	hi
d03e5c62:	2000      	movhi	r0, #0
d03e5c64:	2001      	movls	r0, #1
d03e5c66:	f5b3 7faf 	cmp.w	r3, #350	; 0x15e
d03e5c6a:	da02      	bge.n	d03e5c72 <main+0x1e1e>
d03e5c6c:	2800      	cmp	r0, #0
d03e5c6e:	f47f ab42 	bne.w	d03e52f6 <main+0x14a2>
d03e5c72:	f5a3 73b3 	sub.w	r3, r3, #358	; 0x166
d03e5c76:	b29b      	uxth	r3, r3
d03e5c78:	2b21      	cmp	r3, #33	; 0x21
d03e5c7a:	d802      	bhi.n	d03e5c82 <main+0x1e2e>
d03e5c7c:	2800      	cmp	r0, #0
d03e5c7e:	f040 824e 	bne.w	d03e611e <main+0x22ca>
d03e5c82:	2403      	movs	r4, #3
d03e5c84:	f7ff baa9 	b.w	d03e51da <main+0x1386>
d03e5c88:	f1a2 0158 	sub.w	r1, r2, #88	; 0x58
d03e5c8c:	b289      	uxth	r1, r1
d03e5c8e:	2919      	cmp	r1, #25
d03e5c90:	bf8c      	ite	hi
d03e5c92:	2000      	movhi	r0, #0
d03e5c94:	2001      	movls	r0, #1
d03e5c96:	2b79      	cmp	r3, #121	; 0x79
d03e5c98:	dc02      	bgt.n	d03e5ca0 <main+0x1e4c>
d03e5c9a:	2800      	cmp	r0, #0
d03e5c9c:	f040 8137 	bne.w	d03e5f0e <main+0x20ba>
d03e5ca0:	2b81      	cmp	r3, #129	; 0x81
d03e5ca2:	dd14      	ble.n	d03e5cce <main+0x1e7a>
d03e5ca4:	2be1      	cmp	r3, #225	; 0xe1
d03e5ca6:	dc02      	bgt.n	d03e5cae <main+0x1e5a>
d03e5ca8:	2800      	cmp	r0, #0
d03e5caa:	f040 81f1 	bne.w	d03e6090 <main+0x223c>
d03e5cae:	2be9      	cmp	r3, #233	; 0xe9
d03e5cb0:	dd0d      	ble.n	d03e5cce <main+0x1e7a>
d03e5cb2:	f5b3 7fa5 	cmp.w	r3, #330	; 0x14a
d03e5cb6:	da02      	bge.n	d03e5cbe <main+0x1e6a>
d03e5cb8:	2800      	cmp	r0, #0
d03e5cba:	f040 8202 	bne.w	d03e60c2 <main+0x226e>
d03e5cbe:	f5a3 70a9 	sub.w	r0, r3, #338	; 0x152
d03e5cc2:	b280      	uxth	r0, r0
d03e5cc4:	285f      	cmp	r0, #95	; 0x5f
d03e5cc6:	d802      	bhi.n	d03e5cce <main+0x1e7a>
d03e5cc8:	2919      	cmp	r1, #25
d03e5cca:	f240 8269 	bls.w	d03e61a0 <main+0x234c>
d03e5cce:	49b0      	ldr	r1, [pc, #704]	; (d03e5f90 <main+0x213c>)
d03e5cd0:	7808      	ldrb	r0, [r1, #0]
d03e5cd2:	0080      	lsls	r0, r0, #2
d03e5cd4:	b2c0      	uxtb	r0, r0
d03e5cd6:	b291      	uxth	r1, r2
d03e5cd8:	f5b3 7fde 	cmp.w	r3, #444	; 0x1bc
d03e5cdc:	f1a1 0577 	sub.w	r5, r1, #119	; 0x77
d03e5ce0:	bfac      	ite	ge
d03e5ce2:	2400      	movge	r4, #0
d03e5ce4:	2401      	movlt	r4, #1
d03e5ce6:	2d1f      	cmp	r5, #31
d03e5ce8:	d802      	bhi.n	d03e5cf0 <main+0x1e9c>
d03e5cea:	2c00      	cmp	r4, #0
d03e5cec:	f47e ad2e 	bne.w	d03e474c <main+0x8f8>
d03e5cf0:	f1a1 059b 	sub.w	r5, r1, #155	; 0x9b
d03e5cf4:	2d1f      	cmp	r5, #31
d03e5cf6:	d802      	bhi.n	d03e5cfe <main+0x1eaa>
d03e5cf8:	2c00      	cmp	r4, #0
d03e5cfa:	f040 82b5 	bne.w	d03e6268 <main+0x2414>
d03e5cfe:	f1a1 05bf 	sub.w	r5, r1, #191	; 0xbf
d03e5d02:	2d1f      	cmp	r5, #31
d03e5d04:	d802      	bhi.n	d03e5d0c <main+0x1eb8>
d03e5d06:	2c00      	cmp	r4, #0
d03e5d08:	f040 82b3 	bne.w	d03e6272 <main+0x241e>
d03e5d0c:	39e3      	subs	r1, #227	; 0xe3
d03e5d0e:	291f      	cmp	r1, #31
d03e5d10:	d802      	bhi.n	d03e5d18 <main+0x1ec4>
d03e5d12:	2c00      	cmp	r4, #0
d03e5d14:	f040 82e5 	bne.w	d03e62e2 <main+0x248e>
d03e5d18:	2401      	movs	r4, #1
d03e5d1a:	f7ff ba5e 	b.w	d03e51da <main+0x1386>
d03e5d1e:	f5b3 7fb2 	cmp.w	r3, #356	; 0x164
d03e5d22:	f6ff aa5a 	blt.w	d03e51da <main+0x1386>
d03e5d26:	b290      	uxth	r0, r2
d03e5d28:	f1a0 0158 	sub.w	r1, r0, #88	; 0x58
d03e5d2c:	f5b3 7fc3 	cmp.w	r3, #390	; 0x186
d03e5d30:	bfac      	ite	ge
d03e5d32:	2400      	movge	r4, #0
d03e5d34:	2401      	movlt	r4, #1
d03e5d36:	2915      	cmp	r1, #21
d03e5d38:	bf8c      	ite	hi
d03e5d3a:	2100      	movhi	r1, #0
d03e5d3c:	2101      	movls	r1, #1
d03e5d3e:	b114      	cbz	r4, d03e5d46 <main+0x1ef2>
d03e5d40:	2900      	cmp	r1, #0
d03e5d42:	f040 80ce 	bne.w	d03e5ee2 <main+0x208e>
d03e5d46:	f5b3 7fc7 	cmp.w	r3, #398	; 0x18e
d03e5d4a:	f2c0 8203 	blt.w	d03e6154 <main+0x2300>
d03e5d4e:	f5b3 7fd8 	cmp.w	r3, #432	; 0x1b0
d03e5d52:	bfac      	ite	ge
d03e5d54:	2400      	movge	r4, #0
d03e5d56:	2401      	movlt	r4, #1
d03e5d58:	b114      	cbz	r4, d03e5d60 <main+0x1f0c>
d03e5d5a:	2900      	cmp	r1, #0
d03e5d5c:	f040 80d3 	bne.w	d03e5f06 <main+0x20b2>
d03e5d60:	388b      	subs	r0, #139	; 0x8b
d03e5d62:	2815      	cmp	r0, #21
d03e5d64:	d802      	bhi.n	d03e5d6c <main+0x1f18>
d03e5d66:	2c00      	cmp	r4, #0
d03e5d68:	f040 821c 	bne.w	d03e61a4 <main+0x2350>
d03e5d6c:	2ad3      	cmp	r2, #211	; 0xd3
d03e5d6e:	bfd4      	ite	le
d03e5d70:	2101      	movle	r1, #1
d03e5d72:	2100      	movgt	r1, #0
d03e5d74:	2abd      	cmp	r2, #189	; 0xbd
d03e5d76:	bfd8      	it	le
d03e5d78:	2100      	movle	r1, #0
d03e5d7a:	b129      	cbz	r1, d03e5d88 <main+0x1f34>
d03e5d7c:	f5a3 73c7 	sub.w	r3, r3, #398	; 0x18e
d03e5d80:	b29b      	uxth	r3, r3
d03e5d82:	2b21      	cmp	r3, #33	; 0x21
d03e5d84:	f240 8290 	bls.w	d03e62a8 <main+0x2454>
d03e5d88:	2402      	movs	r4, #2
d03e5d8a:	f7ff ba26 	b.w	d03e51da <main+0x1386>
d03e5d8e:	2b19      	cmp	r3, #25
d03e5d90:	f73f af7a 	bgt.w	d03e5c88 <main+0x1e34>
d03e5d94:	497e      	ldr	r1, [pc, #504]	; (d03e5f90 <main+0x213c>)
d03e5d96:	2b17      	cmp	r3, #23
d03e5d98:	7809      	ldrb	r1, [r1, #0]
d03e5d9a:	ddbd      	ble.n	d03e5d18 <main+0x1ec4>
d03e5d9c:	0089      	lsls	r1, r1, #2
d03e5d9e:	b2c8      	uxtb	r0, r1
d03e5da0:	e799      	b.n	d03e5cd6 <main+0x1e82>
d03e5da2:	3a86      	subs	r2, #134	; 0x86
d03e5da4:	b292      	uxth	r2, r2
d03e5da6:	2a15      	cmp	r2, #21
d03e5da8:	bf8c      	ite	hi
d03e5daa:	2200      	movhi	r2, #0
d03e5dac:	2201      	movls	r2, #1
d03e5dae:	f5b3 7fa9 	cmp.w	r3, #338	; 0x152
d03e5db2:	db16      	blt.n	d03e5de2 <main+0x1f8e>
d03e5db4:	f5b3 7fba 	cmp.w	r3, #372	; 0x174
d03e5db8:	da02      	bge.n	d03e5dc0 <main+0x1f6c>
d03e5dba:	2a00      	cmp	r2, #0
d03e5dbc:	f040 816a 	bne.w	d03e6094 <main+0x2240>
d03e5dc0:	f5b3 7fbf 	cmp.w	r3, #382	; 0x17e
d03e5dc4:	db0d      	blt.n	d03e5de2 <main+0x1f8e>
d03e5dc6:	f5b3 7fd0 	cmp.w	r3, #416	; 0x1a0
d03e5dca:	da02      	bge.n	d03e5dd2 <main+0x1f7e>
d03e5dcc:	2a00      	cmp	r2, #0
d03e5dce:	f040 8088 	bne.w	d03e5ee2 <main+0x208e>
d03e5dd2:	f5a3 73d2 	sub.w	r3, r3, #420	; 0x1a4
d03e5dd6:	b29b      	uxth	r3, r3
d03e5dd8:	2b21      	cmp	r3, #33	; 0x21
d03e5dda:	d802      	bhi.n	d03e5de2 <main+0x1f8e>
d03e5ddc:	2a00      	cmp	r2, #0
d03e5dde:	f040 8092 	bne.w	d03e5f06 <main+0x20b2>
d03e5de2:	2400      	movs	r4, #0
d03e5de4:	f7ff b9f9 	b.w	d03e51da <main+0x1386>
d03e5de8:	4b6a      	ldr	r3, [pc, #424]	; (d03e5f94 <main+0x2140>)
d03e5dea:	496b      	ldr	r1, [pc, #428]	; (d03e5f98 <main+0x2144>)
d03e5dec:	781b      	ldrb	r3, [r3, #0]
d03e5dee:	56ca      	ldrsb	r2, [r1, r3]
d03e5df0:	5ccb      	ldrb	r3, [r1, r3]
d03e5df2:	2a00      	cmp	r2, #0
d03e5df4:	db14      	blt.n	d03e5e20 <main+0x1fcc>
d03e5df6:	4a69      	ldr	r2, [pc, #420]	; (d03e5f9c <main+0x2148>)
d03e5df8:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
d03e5dfc:	b180      	cbz	r0, d03e5e20 <main+0x1fcc>
d03e5dfe:	4a68      	ldr	r2, [pc, #416]	; (d03e5fa0 <main+0x214c>)
d03e5e00:	9b06      	ldr	r3, [sp, #24]
d03e5e02:	7811      	ldrb	r1, [r2, #0]
d03e5e04:	e001      	b.n	d03e5e0a <main+0x1fb6>
d03e5e06:	2b60      	cmp	r3, #96	; 0x60
d03e5e08:	d063      	beq.n	d03e5ed2 <main+0x207e>
d03e5e0a:	f810 4023 	ldrb.w	r4, [r0, r3, lsl #2]
d03e5e0e:	b2da      	uxtb	r2, r3
d03e5e10:	3301      	adds	r3, #1
d03e5e12:	2c00      	cmp	r4, #0
d03e5e14:	d1f7      	bne.n	d03e5e06 <main+0x1fb2>
d03e5e16:	1c53      	adds	r3, r2, #1
d03e5e18:	9406      	str	r4, [sp, #24]
d03e5e1a:	b2db      	uxtb	r3, r3
d03e5e1c:	2b07      	cmp	r3, #7
d03e5e1e:	d858      	bhi.n	d03e5ed2 <main+0x207e>
d03e5e20:	f9bd 1018 	ldrsh.w	r1, [sp, #24]
d03e5e24:	e6d4      	b.n	d03e5bd0 <main+0x1d7c>
d03e5e26:	3a07      	subs	r2, #7
d03e5e28:	b2d5      	uxtb	r5, r2
d03e5e2a:	e606      	b.n	d03e5a3a <main+0x1be6>
d03e5e2c:	2100      	movs	r1, #0
d03e5e2e:	e6cf      	b.n	d03e5bd0 <main+0x1d7c>
d03e5e30:	2304      	movs	r3, #4
d03e5e32:	4a5c      	ldr	r2, [pc, #368]	; (d03e5fa4 <main+0x2150>)
d03e5e34:	7013      	strb	r3, [r2, #0]
d03e5e36:	9b05      	ldr	r3, [sp, #20]
d03e5e38:	2b03      	cmp	r3, #3
d03e5e3a:	f47f a9a2 	bne.w	d03e5182 <main+0x132e>
d03e5e3e:	f7ff b99d 	b.w	d03e517c <main+0x1328>
d03e5e42:	4e59      	ldr	r6, [pc, #356]	; (d03e5fa8 <main+0x2154>)
d03e5e44:	235a      	movs	r3, #90	; 0x5a
d03e5e46:	4a59      	ldr	r2, [pc, #356]	; (d03e5fac <main+0x2158>)
d03e5e48:	4d59      	ldr	r5, [pc, #356]	; (d03e5fb0 <main+0x215c>)
d03e5e4a:	7013      	strb	r3, [r2, #0]
d03e5e4c:	4b55      	ldr	r3, [pc, #340]	; (d03e5fa4 <main+0x2150>)
d03e5e4e:	781c      	ldrb	r4, [r3, #0]
d03e5e50:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
d03e5e52:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d03e5e54:	e896 0003 	ldmia.w	r6, {r0, r1}
d03e5e58:	f845 0b04 	str.w	r0, [r5], #4
d03e5e5c:	8029      	strh	r1, [r5, #0]
d03e5e5e:	f7fe bc9b 	b.w	d03e4798 <main+0x944>
d03e5e62:	4e54      	ldr	r6, [pc, #336]	; (d03e5fb4 <main+0x2160>)
d03e5e64:	e7ee      	b.n	d03e5e44 <main+0x1ff0>
d03e5e66:	f5a2 718e 	sub.w	r1, r2, #284	; 0x11c
d03e5e6a:	b289      	uxth	r1, r1
d03e5e6c:	2917      	cmp	r1, #23
d03e5e6e:	bf98      	it	ls
d03e5e70:	2400      	movls	r4, #0
d03e5e72:	f200 834c 	bhi.w	d03e650e <main+0x26ba>
d03e5e76:	b2e0      	uxtb	r0, r4
d03e5e78:	f7fa fcfa 	bl	d03e0870 <sid_voice_note_kill>
d03e5e7c:	f80b 9034 	strb.w	r9, [fp, r4, lsl #3]
d03e5e80:	eb0b 03c4 	add.w	r3, fp, r4, lsl #3
d03e5e84:	3401      	adds	r4, #1
d03e5e86:	2c06      	cmp	r4, #6
d03e5e88:	f8a3 9006 	strh.w	r9, [r3, #6]
d03e5e8c:	d1f3      	bne.n	d03e5e76 <main+0x2022>
d03e5e8e:	235a      	movs	r3, #90	; 0x5a
d03e5e90:	4a46      	ldr	r2, [pc, #280]	; (d03e5fac <main+0x2158>)
d03e5e92:	4e49      	ldr	r6, [pc, #292]	; (d03e5fb8 <main+0x2164>)
d03e5e94:	7013      	strb	r3, [r2, #0]
d03e5e96:	4b49      	ldr	r3, [pc, #292]	; (d03e5fbc <main+0x2168>)
d03e5e98:	4d45      	ldr	r5, [pc, #276]	; (d03e5fb0 <main+0x215c>)
d03e5e9a:	681c      	ldr	r4, [r3, #0]
d03e5e9c:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
d03e5e9e:	3401      	adds	r4, #1
d03e5ea0:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d03e5ea2:	4b46      	ldr	r3, [pc, #280]	; (d03e5fbc <main+0x2168>)
d03e5ea4:	e896 0003 	ldmia.w	r6, {r0, r1}
d03e5ea8:	601c      	str	r4, [r3, #0]
d03e5eaa:	4b3e      	ldr	r3, [pc, #248]	; (d03e5fa4 <main+0x2150>)
d03e5eac:	e885 0003 	stmia.w	r5, {r0, r1}
d03e5eb0:	781c      	ldrb	r4, [r3, #0]
d03e5eb2:	f7fe bc71 	b.w	d03e4798 <main+0x944>
d03e5eb6:	f5b3 7fa6 	cmp.w	r3, #332	; 0x14c
d03e5eba:	f6bf ac42 	bge.w	d03e5742 <main+0x18ee>
d03e5ebe:	f7fe bbbf 	b.w	d03e4640 <main+0x7ec>
d03e5ec2:	4a38      	ldr	r2, [pc, #224]	; (d03e5fa4 <main+0x2150>)
d03e5ec4:	2301      	movs	r3, #1
d03e5ec6:	7013      	strb	r3, [r2, #0]
d03e5ec8:	9a05      	ldr	r2, [sp, #20]
d03e5eca:	2a03      	cmp	r2, #3
d03e5ecc:	f47e ac6b 	bne.w	d03e47a6 <main+0x952>
d03e5ed0:	e68a      	b.n	d03e5be8 <main+0x1d94>
d03e5ed2:	3b07      	subs	r3, #7
d03e5ed4:	3101      	adds	r1, #1
d03e5ed6:	b2db      	uxtb	r3, r3
d03e5ed8:	4299      	cmp	r1, r3
d03e5eda:	9306      	str	r3, [sp, #24]
d03e5edc:	f77f ae78 	ble.w	d03e5bd0 <main+0x1d7c>
d03e5ee0:	e79e      	b.n	d03e5e20 <main+0x1fcc>
d03e5ee2:	4a37      	ldr	r2, [pc, #220]	; (d03e5fc0 <main+0x216c>)
d03e5ee4:	8813      	ldrh	r3, [r2, #0]
d03e5ee6:	3b0a      	subs	r3, #10
d03e5ee8:	b21b      	sxth	r3, r3
d03e5eea:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
d03e5eee:	bfa8      	it	ge
d03e5ef0:	f44f 7396 	movge.w	r3, #300	; 0x12c
d03e5ef4:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d03e5ef8:	8013      	strh	r3, [r2, #0]
d03e5efa:	f7fb fd61 	bl	d03e19c0 <midi_update_all_active_volume>
d03e5efe:	4b29      	ldr	r3, [pc, #164]	; (d03e5fa4 <main+0x2150>)
d03e5f00:	781c      	ldrb	r4, [r3, #0]
d03e5f02:	f7fe bc49 	b.w	d03e4798 <main+0x944>
d03e5f06:	4a2e      	ldr	r2, [pc, #184]	; (d03e5fc0 <main+0x216c>)
d03e5f08:	8813      	ldrh	r3, [r2, #0]
d03e5f0a:	330a      	adds	r3, #10
d03e5f0c:	e7ec      	b.n	d03e5ee8 <main+0x2094>
d03e5f0e:	2300      	movs	r3, #0
d03e5f10:	4a1f      	ldr	r2, [pc, #124]	; (d03e5f90 <main+0x213c>)
d03e5f12:	2401      	movs	r4, #1
d03e5f14:	7013      	strb	r3, [r2, #0]
d03e5f16:	f7ff b960 	b.w	d03e51da <main+0x1386>
d03e5f1a:	4b1e      	ldr	r3, [pc, #120]	; (d03e5f94 <main+0x2140>)
d03e5f1c:	781c      	ldrb	r4, [r3, #0]
d03e5f1e:	2c09      	cmp	r4, #9
d03e5f20:	f000 82cd 	beq.w	d03e64be <main+0x266a>
d03e5f24:	2c0f      	cmp	r4, #15
d03e5f26:	d805      	bhi.n	d03e5f34 <main+0x20e0>
d03e5f28:	4a1b      	ldr	r2, [pc, #108]	; (d03e5f98 <main+0x2144>)
d03e5f2a:	5d13      	ldrb	r3, [r2, r4]
d03e5f2c:	3b01      	subs	r3, #1
d03e5f2e:	f383 0307 	usat	r3, #7, r3
d03e5f32:	5513      	strb	r3, [r2, r4]
d03e5f34:	4923      	ldr	r1, [pc, #140]	; (d03e5fc4 <main+0x2170>)
d03e5f36:	2301      	movs	r3, #1
d03e5f38:	680a      	ldr	r2, [r1, #0]
d03e5f3a:	40a3      	lsls	r3, r4
d03e5f3c:	4313      	orrs	r3, r2
d03e5f3e:	600b      	str	r3, [r1, #0]
d03e5f40:	4b15      	ldr	r3, [pc, #84]	; (d03e5f98 <main+0x2144>)
d03e5f42:	571a      	ldrsb	r2, [r3, r4]
d03e5f44:	5d1b      	ldrb	r3, [r3, r4]
d03e5f46:	2a00      	cmp	r2, #0
d03e5f48:	f2c0 8250 	blt.w	d03e63ec <main+0x2598>
d03e5f4c:	4a13      	ldr	r2, [pc, #76]	; (d03e5f9c <main+0x2148>)
d03e5f4e:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
d03e5f52:	2800      	cmp	r0, #0
d03e5f54:	f000 827b 	beq.w	d03e644e <main+0x25fa>
d03e5f58:	2300      	movs	r3, #0
d03e5f5a:	e002      	b.n	d03e5f62 <main+0x210e>
d03e5f5c:	2b60      	cmp	r3, #96	; 0x60
d03e5f5e:	f000 81d1 	beq.w	d03e6304 <main+0x24b0>
d03e5f62:	f810 1023 	ldrb.w	r1, [r0, r3, lsl #2]
d03e5f66:	b2da      	uxtb	r2, r3
d03e5f68:	3301      	adds	r3, #1
d03e5f6a:	2900      	cmp	r1, #0
d03e5f6c:	d1f6      	bne.n	d03e5f5c <main+0x2108>
d03e5f6e:	1c53      	adds	r3, r2, #1
d03e5f70:	b2db      	uxtb	r3, r3
d03e5f72:	2b07      	cmp	r3, #7
d03e5f74:	f200 81c6 	bhi.w	d03e6304 <main+0x24b0>
d03e5f78:	4b09      	ldr	r3, [pc, #36]	; (d03e5fa0 <main+0x214c>)
d03e5f7a:	781b      	ldrb	r3, [r3, #0]
d03e5f7c:	428b      	cmp	r3, r1
d03e5f7e:	f67f a9d3 	bls.w	d03e5328 <main+0x14d4>
d03e5f82:	4b07      	ldr	r3, [pc, #28]	; (d03e5fa0 <main+0x214c>)
d03e5f84:	7019      	strb	r1, [r3, #0]
d03e5f86:	4b07      	ldr	r3, [pc, #28]	; (d03e5fa4 <main+0x2150>)
d03e5f88:	781c      	ldrb	r4, [r3, #0]
d03e5f8a:	f7fe bc05 	b.w	d03e4798 <main+0x944>
d03e5f8e:	bf00      	nop
d03e5f90:	d03e8ff0 	.word	0xd03e8ff0
d03e5f94:	d03e8ffb 	.word	0xd03e8ffb
d03e5f98:	d03e8d64 	.word	0xd03e8d64
d03e5f9c:	d03e8678 	.word	0xd03e8678
d03e5fa0:	d03e902a 	.word	0xd03e902a
d03e5fa4:	d03e8ff5 	.word	0xd03e8ff5
d03e5fa8:	d03e7f70 	.word	0xd03e7f70
d03e5fac:	d03e9024 	.word	0xd03e9024
d03e5fb0:	d03e8ffc 	.word	0xd03e8ffc
d03e5fb4:	d03e7f88 	.word	0xd03e7f88
d03e5fb8:	d03e7fa0 	.word	0xd03e7fa0
d03e5fbc:	d03e8fa4 	.word	0xd03e8fa4
d03e5fc0:	d03e8f92 	.word	0xd03e8f92
d03e5fc4:	d03e8fe4 	.word	0xd03e8fe4
d03e5fc8:	4aac      	ldr	r2, [pc, #688]	; (d03e627c <main+0x2428>)
d03e5fca:	2400      	movs	r4, #0
d03e5fcc:	4dac      	ldr	r5, [pc, #688]	; (d03e6280 <main+0x242c>)
d03e5fce:	7813      	ldrb	r3, [r2, #0]
d03e5fd0:	fab3 f383 	clz	r3, r3
d03e5fd4:	095b      	lsrs	r3, r3, #5
d03e5fd6:	7013      	strb	r3, [r2, #0]
d03e5fd8:	782b      	ldrb	r3, [r5, #0]
d03e5fda:	b2e0      	uxtb	r0, r4
d03e5fdc:	3401      	adds	r4, #1
d03e5fde:	b11b      	cbz	r3, d03e5fe8 <main+0x2194>
d03e5fe0:	786b      	ldrb	r3, [r5, #1]
d03e5fe2:	2b09      	cmp	r3, #9
d03e5fe4:	f000 8182 	beq.w	d03e62ec <main+0x2498>
d03e5fe8:	2c06      	cmp	r4, #6
d03e5fea:	f105 0508 	add.w	r5, r5, #8
d03e5fee:	d1f3      	bne.n	d03e5fd8 <main+0x2184>
d03e5ff0:	f7ff b99a 	b.w	d03e5328 <main+0x14d4>
d03e5ff4:	3a86      	subs	r2, #134	; 0x86
d03e5ff6:	b292      	uxth	r2, r2
d03e5ff8:	2a15      	cmp	r2, #21
d03e5ffa:	bf8c      	ite	hi
d03e5ffc:	2200      	movhi	r2, #0
d03e5ffe:	2201      	movls	r2, #1
d03e6000:	f5b3 7fa7 	cmp.w	r3, #334	; 0x14e
d03e6004:	f6bf aed3 	bge.w	d03e5dae <main+0x1f5a>
d03e6008:	2a00      	cmp	r2, #0
d03e600a:	f43f aed0 	beq.w	d03e5dae <main+0x1f5a>
d03e600e:	4b9d      	ldr	r3, [pc, #628]	; (d03e6284 <main+0x2430>)
d03e6010:	781a      	ldrb	r2, [r3, #0]
d03e6012:	2a09      	cmp	r2, #9
d03e6014:	f000 8230 	beq.w	d03e6478 <main+0x2624>
d03e6018:	2a0f      	cmp	r2, #15
d03e601a:	d805      	bhi.n	d03e6028 <main+0x21d4>
d03e601c:	499a      	ldr	r1, [pc, #616]	; (d03e6288 <main+0x2434>)
d03e601e:	5c8b      	ldrb	r3, [r1, r2]
d03e6020:	3b01      	subs	r3, #1
d03e6022:	f383 0307 	usat	r3, #7, r3
d03e6026:	548b      	strb	r3, [r1, r2]
d03e6028:	4898      	ldr	r0, [pc, #608]	; (d03e628c <main+0x2438>)
d03e602a:	2301      	movs	r3, #1
d03e602c:	6801      	ldr	r1, [r0, #0]
d03e602e:	4093      	lsls	r3, r2
d03e6030:	430b      	orrs	r3, r1
d03e6032:	6003      	str	r3, [r0, #0]
d03e6034:	f7ff b8d1 	b.w	d03e51da <main+0x1386>
d03e6038:	4b92      	ldr	r3, [pc, #584]	; (d03e6284 <main+0x2430>)
d03e603a:	781c      	ldrb	r4, [r3, #0]
d03e603c:	2c09      	cmp	r4, #9
d03e603e:	f000 824f 	beq.w	d03e64e0 <main+0x268c>
d03e6042:	2c0f      	cmp	r4, #15
d03e6044:	d806      	bhi.n	d03e6054 <main+0x2200>
d03e6046:	4a90      	ldr	r2, [pc, #576]	; (d03e6288 <main+0x2434>)
d03e6048:	5d13      	ldrb	r3, [r2, r4]
d03e604a:	3301      	adds	r3, #1
d03e604c:	2b7f      	cmp	r3, #127	; 0x7f
d03e604e:	bfa8      	it	ge
d03e6050:	237f      	movge	r3, #127	; 0x7f
d03e6052:	5513      	strb	r3, [r2, r4]
d03e6054:	498d      	ldr	r1, [pc, #564]	; (d03e628c <main+0x2438>)
d03e6056:	2301      	movs	r3, #1
d03e6058:	680a      	ldr	r2, [r1, #0]
d03e605a:	40a3      	lsls	r3, r4
d03e605c:	4313      	orrs	r3, r2
d03e605e:	600b      	str	r3, [r1, #0]
d03e6060:	4a89      	ldr	r2, [pc, #548]	; (d03e6288 <main+0x2434>)
d03e6062:	5713      	ldrsb	r3, [r2, r4]
d03e6064:	5d12      	ldrb	r2, [r2, r4]
d03e6066:	2b00      	cmp	r3, #0
d03e6068:	f2c0 81c0 	blt.w	d03e63ec <main+0x2598>
d03e606c:	4b88      	ldr	r3, [pc, #544]	; (d03e6290 <main+0x243c>)
d03e606e:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
d03e6072:	2800      	cmp	r0, #0
d03e6074:	f000 81eb 	beq.w	d03e644e <main+0x25fa>
d03e6078:	2300      	movs	r3, #0
d03e607a:	e002      	b.n	d03e6082 <main+0x222e>
d03e607c:	2b60      	cmp	r3, #96	; 0x60
d03e607e:	f000 8141 	beq.w	d03e6304 <main+0x24b0>
d03e6082:	f810 1023 	ldrb.w	r1, [r0, r3, lsl #2]
d03e6086:	b2da      	uxtb	r2, r3
d03e6088:	3301      	adds	r3, #1
d03e608a:	2900      	cmp	r1, #0
d03e608c:	d1f6      	bne.n	d03e607c <main+0x2228>
d03e608e:	e76e      	b.n	d03e5f6e <main+0x211a>
d03e6090:	2301      	movs	r3, #1
d03e6092:	e73d      	b.n	d03e5f10 <main+0x20bc>
d03e6094:	4b7b      	ldr	r3, [pc, #492]	; (d03e6284 <main+0x2430>)
d03e6096:	781a      	ldrb	r2, [r3, #0]
d03e6098:	2a09      	cmp	r2, #9
d03e609a:	f000 81ed 	beq.w	d03e6478 <main+0x2624>
d03e609e:	2a0f      	cmp	r2, #15
d03e60a0:	d806      	bhi.n	d03e60b0 <main+0x225c>
d03e60a2:	4979      	ldr	r1, [pc, #484]	; (d03e6288 <main+0x2434>)
d03e60a4:	5c8b      	ldrb	r3, [r1, r2]
d03e60a6:	3301      	adds	r3, #1
d03e60a8:	2b7f      	cmp	r3, #127	; 0x7f
d03e60aa:	bfa8      	it	ge
d03e60ac:	237f      	movge	r3, #127	; 0x7f
d03e60ae:	548b      	strb	r3, [r1, r2]
d03e60b0:	4876      	ldr	r0, [pc, #472]	; (d03e628c <main+0x2438>)
d03e60b2:	2301      	movs	r3, #1
d03e60b4:	2400      	movs	r4, #0
d03e60b6:	6801      	ldr	r1, [r0, #0]
d03e60b8:	4093      	lsls	r3, r2
d03e60ba:	430b      	orrs	r3, r1
d03e60bc:	6003      	str	r3, [r0, #0]
d03e60be:	f7ff b88c 	b.w	d03e51da <main+0x1386>
d03e60c2:	2302      	movs	r3, #2
d03e60c4:	e724      	b.n	d03e5f10 <main+0x20bc>
d03e60c6:	4b73      	ldr	r3, [pc, #460]	; (d03e6294 <main+0x2440>)
d03e60c8:	486f      	ldr	r0, [pc, #444]	; (d03e6288 <main+0x2434>)
d03e60ca:	7819      	ldrb	r1, [r3, #0]
d03e60cc:	4b6d      	ldr	r3, [pc, #436]	; (d03e6284 <main+0x2430>)
d03e60ce:	3901      	subs	r1, #1
d03e60d0:	781b      	ldrb	r3, [r3, #0]
d03e60d2:	b209      	sxth	r1, r1
d03e60d4:	56c2      	ldrsb	r2, [r0, r3]
d03e60d6:	5cc3      	ldrb	r3, [r0, r3]
d03e60d8:	2a00      	cmp	r2, #0
d03e60da:	f2c0 81ea 	blt.w	d03e64b2 <main+0x265e>
d03e60de:	4a6c      	ldr	r2, [pc, #432]	; (d03e6290 <main+0x243c>)
d03e60e0:	f852 4023 	ldr.w	r4, [r2, r3, lsl #2]
d03e60e4:	2c00      	cmp	r4, #0
d03e60e6:	f000 81e6 	beq.w	d03e64b6 <main+0x2662>
d03e60ea:	2300      	movs	r3, #0
d03e60ec:	e002      	b.n	d03e60f4 <main+0x22a0>
d03e60ee:	2b60      	cmp	r3, #96	; 0x60
d03e60f0:	f000 8194 	beq.w	d03e641c <main+0x25c8>
d03e60f4:	f814 0023 	ldrb.w	r0, [r4, r3, lsl #2]
d03e60f8:	b2da      	uxtb	r2, r3
d03e60fa:	3301      	adds	r3, #1
d03e60fc:	2800      	cmp	r0, #0
d03e60fe:	d1f6      	bne.n	d03e60ee <main+0x229a>
d03e6100:	1c53      	adds	r3, r2, #1
d03e6102:	b2db      	uxtb	r3, r3
d03e6104:	2b07      	cmp	r3, #7
d03e6106:	f200 8189 	bhi.w	d03e641c <main+0x25c8>
d03e610a:	1c4a      	adds	r2, r1, #1
d03e610c:	f000 8170 	beq.w	d03e63f0 <main+0x259c>
d03e6110:	4281      	cmp	r1, r0
d03e6112:	f300 8084 	bgt.w	d03e621e <main+0x23ca>
d03e6116:	4b5f      	ldr	r3, [pc, #380]	; (d03e6294 <main+0x2440>)
d03e6118:	7019      	strb	r1, [r3, #0]
d03e611a:	f7ff b82c 	b.w	d03e5176 <main+0x1322>
d03e611e:	4a5e      	ldr	r2, [pc, #376]	; (d03e6298 <main+0x2444>)
d03e6120:	2400      	movs	r4, #0
d03e6122:	4e57      	ldr	r6, [pc, #348]	; (d03e6280 <main+0x242c>)
d03e6124:	8813      	ldrh	r3, [r2, #0]
d03e6126:	330a      	adds	r3, #10
d03e6128:	b21b      	sxth	r3, r3
d03e612a:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
d03e612e:	bfa8      	it	ge
d03e6130:	f44f 7396 	movge.w	r3, #300	; 0x12c
d03e6134:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d03e6138:	8013      	strh	r3, [r2, #0]
d03e613a:	7833      	ldrb	r3, [r6, #0]
d03e613c:	b2e0      	uxtb	r0, r4
d03e613e:	b11b      	cbz	r3, d03e6148 <main+0x22f4>
d03e6140:	7873      	ldrb	r3, [r6, #1]
d03e6142:	2b09      	cmp	r3, #9
d03e6144:	f000 811a 	beq.w	d03e637c <main+0x2528>
d03e6148:	3401      	adds	r4, #1
d03e614a:	3608      	adds	r6, #8
d03e614c:	2c06      	cmp	r4, #6
d03e614e:	d1f4      	bne.n	d03e613a <main+0x22e6>
d03e6150:	f7ff b8ea 	b.w	d03e5328 <main+0x14d4>
d03e6154:	f1a0 038b 	sub.w	r3, r0, #139	; 0x8b
d03e6158:	2b15      	cmp	r3, #21
d03e615a:	d862      	bhi.n	d03e6222 <main+0x23ce>
d03e615c:	2c00      	cmp	r4, #0
d03e615e:	d060      	beq.n	d03e6222 <main+0x23ce>
d03e6160:	4b48      	ldr	r3, [pc, #288]	; (d03e6284 <main+0x2430>)
d03e6162:	781a      	ldrb	r2, [r3, #0]
d03e6164:	2a0f      	cmp	r2, #15
d03e6166:	f63f ae0f 	bhi.w	d03e5d88 <main+0x1f34>
d03e616a:	494c      	ldr	r1, [pc, #304]	; (d03e629c <main+0x2448>)
d03e616c:	2400      	movs	r4, #0
d03e616e:	9708      	str	r7, [sp, #32]
d03e6170:	4617      	mov	r7, r2
d03e6172:	5c8b      	ldrb	r3, [r1, r2]
d03e6174:	4e42      	ldr	r6, [pc, #264]	; (d03e6280 <main+0x242c>)
d03e6176:	3b08      	subs	r3, #8
d03e6178:	f383 0307 	usat	r3, #7, r3
d03e617c:	548b      	strb	r3, [r1, r2]
d03e617e:	7833      	ldrb	r3, [r6, #0]
d03e6180:	b2e5      	uxtb	r5, r4
d03e6182:	3401      	adds	r4, #1
d03e6184:	b11b      	cbz	r3, d03e618e <main+0x233a>
d03e6186:	7873      	ldrb	r3, [r6, #1]
d03e6188:	42bb      	cmp	r3, r7
d03e618a:	f000 8157 	beq.w	d03e643c <main+0x25e8>
d03e618e:	2c06      	cmp	r4, #6
d03e6190:	f106 0608 	add.w	r6, r6, #8
d03e6194:	d1f3      	bne.n	d03e617e <main+0x232a>
d03e6196:	4b42      	ldr	r3, [pc, #264]	; (d03e62a0 <main+0x244c>)
d03e6198:	9f08      	ldr	r7, [sp, #32]
d03e619a:	781c      	ldrb	r4, [r3, #0]
d03e619c:	f7fe bafc 	b.w	d03e4798 <main+0x944>
d03e61a0:	2303      	movs	r3, #3
d03e61a2:	e6b5      	b.n	d03e5f10 <main+0x20bc>
d03e61a4:	4b37      	ldr	r3, [pc, #220]	; (d03e6284 <main+0x2430>)
d03e61a6:	781a      	ldrb	r2, [r3, #0]
d03e61a8:	2a0f      	cmp	r2, #15
d03e61aa:	f63f aded 	bhi.w	d03e5d88 <main+0x1f34>
d03e61ae:	493b      	ldr	r1, [pc, #236]	; (d03e629c <main+0x2448>)
d03e61b0:	2400      	movs	r4, #0
d03e61b2:	9708      	str	r7, [sp, #32]
d03e61b4:	4617      	mov	r7, r2
d03e61b6:	5c8b      	ldrb	r3, [r1, r2]
d03e61b8:	4e31      	ldr	r6, [pc, #196]	; (d03e6280 <main+0x242c>)
d03e61ba:	3308      	adds	r3, #8
d03e61bc:	2b7f      	cmp	r3, #127	; 0x7f
d03e61be:	bfa8      	it	ge
d03e61c0:	237f      	movge	r3, #127	; 0x7f
d03e61c2:	548b      	strb	r3, [r1, r2]
d03e61c4:	7833      	ldrb	r3, [r6, #0]
d03e61c6:	b2e5      	uxtb	r5, r4
d03e61c8:	3401      	adds	r4, #1
d03e61ca:	b11b      	cbz	r3, d03e61d4 <main+0x2380>
d03e61cc:	7873      	ldrb	r3, [r6, #1]
d03e61ce:	42bb      	cmp	r3, r7
d03e61d0:	f000 812b 	beq.w	d03e642a <main+0x25d6>
d03e61d4:	2c06      	cmp	r4, #6
d03e61d6:	f106 0608 	add.w	r6, r6, #8
d03e61da:	d1f3      	bne.n	d03e61c4 <main+0x2370>
d03e61dc:	e7db      	b.n	d03e6196 <main+0x2342>
d03e61de:	4b29      	ldr	r3, [pc, #164]	; (d03e6284 <main+0x2430>)
d03e61e0:	4929      	ldr	r1, [pc, #164]	; (d03e6288 <main+0x2434>)
d03e61e2:	781b      	ldrb	r3, [r3, #0]
d03e61e4:	56ca      	ldrsb	r2, [r1, r3]
d03e61e6:	5ccb      	ldrb	r3, [r1, r3]
d03e61e8:	2a00      	cmp	r2, #0
d03e61ea:	f2c0 8143 	blt.w	d03e6474 <main+0x2620>
d03e61ee:	4a28      	ldr	r2, [pc, #160]	; (d03e6290 <main+0x243c>)
d03e61f0:	f852 4023 	ldr.w	r4, [r2, r3, lsl #2]
d03e61f4:	2c00      	cmp	r4, #0
d03e61f6:	f000 8160 	beq.w	d03e64ba <main+0x2666>
d03e61fa:	4b26      	ldr	r3, [pc, #152]	; (d03e6294 <main+0x2440>)
d03e61fc:	7819      	ldrb	r1, [r3, #0]
d03e61fe:	2300      	movs	r3, #0
d03e6200:	e002      	b.n	d03e6208 <main+0x23b4>
d03e6202:	2b60      	cmp	r3, #96	; 0x60
d03e6204:	f000 810d 	beq.w	d03e6422 <main+0x25ce>
d03e6208:	f814 0023 	ldrb.w	r0, [r4, r3, lsl #2]
d03e620c:	b2da      	uxtb	r2, r3
d03e620e:	3301      	adds	r3, #1
d03e6210:	2800      	cmp	r0, #0
d03e6212:	d1f6      	bne.n	d03e6202 <main+0x23ae>
d03e6214:	1c53      	adds	r3, r2, #1
d03e6216:	b2db      	uxtb	r3, r3
d03e6218:	2b07      	cmp	r3, #7
d03e621a:	f200 8102 	bhi.w	d03e6422 <main+0x25ce>
d03e621e:	b201      	sxth	r1, r0
d03e6220:	e779      	b.n	d03e6116 <main+0x22c2>
d03e6222:	38be      	subs	r0, #190	; 0xbe
d03e6224:	2815      	cmp	r0, #21
d03e6226:	f63f adaf 	bhi.w	d03e5d88 <main+0x1f34>
d03e622a:	2c00      	cmp	r4, #0
d03e622c:	f43f adac 	beq.w	d03e5d88 <main+0x1f34>
d03e6230:	4b14      	ldr	r3, [pc, #80]	; (d03e6284 <main+0x2430>)
d03e6232:	781a      	ldrb	r2, [r3, #0]
d03e6234:	2a0f      	cmp	r2, #15
d03e6236:	f63f ada7 	bhi.w	d03e5d88 <main+0x1f34>
d03e623a:	491a      	ldr	r1, [pc, #104]	; (d03e62a4 <main+0x2450>)
d03e623c:	2400      	movs	r4, #0
d03e623e:	9708      	str	r7, [sp, #32]
d03e6240:	4617      	mov	r7, r2
d03e6242:	5c8b      	ldrb	r3, [r1, r2]
d03e6244:	4e0e      	ldr	r6, [pc, #56]	; (d03e6280 <main+0x242c>)
d03e6246:	3b08      	subs	r3, #8
d03e6248:	f383 0307 	usat	r3, #7, r3
d03e624c:	548b      	strb	r3, [r1, r2]
d03e624e:	7833      	ldrb	r3, [r6, #0]
d03e6250:	b2e5      	uxtb	r5, r4
d03e6252:	3401      	adds	r4, #1
d03e6254:	b11b      	cbz	r3, d03e625e <main+0x240a>
d03e6256:	7873      	ldrb	r3, [r6, #1]
d03e6258:	42bb      	cmp	r3, r7
d03e625a:	f000 8121 	beq.w	d03e64a0 <main+0x264c>
d03e625e:	2c06      	cmp	r4, #6
d03e6260:	f106 0608 	add.w	r6, r6, #8
d03e6264:	d1f3      	bne.n	d03e624e <main+0x23fa>
d03e6266:	e796      	b.n	d03e6196 <main+0x2342>
d03e6268:	3001      	adds	r0, #1
d03e626a:	2124      	movs	r1, #36	; 0x24
d03e626c:	b2c0      	uxtb	r0, r0
d03e626e:	f7fe ba6e 	b.w	d03e474e <main+0x8fa>
d03e6272:	3002      	adds	r0, #2
d03e6274:	2148      	movs	r1, #72	; 0x48
d03e6276:	b2c0      	uxtb	r0, r0
d03e6278:	f7fe ba69 	b.w	d03e474e <main+0x8fa>
d03e627c:	d03e8d88 	.word	0xd03e8d88
d03e6280:	d03e8fb0 	.word	0xd03e8fb0
d03e6284:	d03e8ffb 	.word	0xd03e8ffb
d03e6288:	d03e8d64 	.word	0xd03e8d64
d03e628c:	d03e8fe4 	.word	0xd03e8fe4
d03e6290:	d03e8678 	.word	0xd03e8678
d03e6294:	d03e902a 	.word	0xd03e902a
d03e6298:	d03e8d8a 	.word	0xd03e8d8a
d03e629c:	d03e8d74 	.word	0xd03e8d74
d03e62a0:	d03e8ff5 	.word	0xd03e8ff5
d03e62a4:	d03e8d54 	.word	0xd03e8d54
d03e62a8:	4ba2      	ldr	r3, [pc, #648]	; (d03e6534 <main+0x26e0>)
d03e62aa:	781a      	ldrb	r2, [r3, #0]
d03e62ac:	2a0f      	cmp	r2, #15
d03e62ae:	f63f ad6b 	bhi.w	d03e5d88 <main+0x1f34>
d03e62b2:	49a1      	ldr	r1, [pc, #644]	; (d03e6538 <main+0x26e4>)
d03e62b4:	2400      	movs	r4, #0
d03e62b6:	9708      	str	r7, [sp, #32]
d03e62b8:	4617      	mov	r7, r2
d03e62ba:	5c8b      	ldrb	r3, [r1, r2]
d03e62bc:	4e9f      	ldr	r6, [pc, #636]	; (d03e653c <main+0x26e8>)
d03e62be:	3308      	adds	r3, #8
d03e62c0:	2b7f      	cmp	r3, #127	; 0x7f
d03e62c2:	bfa8      	it	ge
d03e62c4:	237f      	movge	r3, #127	; 0x7f
d03e62c6:	548b      	strb	r3, [r1, r2]
d03e62c8:	7833      	ldrb	r3, [r6, #0]
d03e62ca:	b2e5      	uxtb	r5, r4
d03e62cc:	3401      	adds	r4, #1
d03e62ce:	b11b      	cbz	r3, d03e62d8 <main+0x2484>
d03e62d0:	7873      	ldrb	r3, [r6, #1]
d03e62d2:	42bb      	cmp	r3, r7
d03e62d4:	f000 80c5 	beq.w	d03e6462 <main+0x260e>
d03e62d8:	2c06      	cmp	r4, #6
d03e62da:	f106 0608 	add.w	r6, r6, #8
d03e62de:	d1f3      	bne.n	d03e62c8 <main+0x2474>
d03e62e0:	e759      	b.n	d03e6196 <main+0x2342>
d03e62e2:	3003      	adds	r0, #3
d03e62e4:	216c      	movs	r1, #108	; 0x6c
d03e62e6:	b2c0      	uxtb	r0, r0
d03e62e8:	f7fe ba31 	b.w	d03e474e <main+0x8fa>
d03e62ec:	f7fa fa52 	bl	d03e0794 <sid_voice_note_off>
d03e62f0:	f8d8 3000 	ldr.w	r3, [r8]
d03e62f4:	f885 9000 	strb.w	r9, [r5]
d03e62f8:	3301      	adds	r3, #1
d03e62fa:	f8a5 9006 	strh.w	r9, [r5, #6]
d03e62fe:	f8c8 3000 	str.w	r3, [r8]
d03e6302:	e671      	b.n	d03e5fe8 <main+0x2194>
d03e6304:	3b07      	subs	r3, #7
d03e6306:	b2d9      	uxtb	r1, r3
d03e6308:	e636      	b.n	d03e5f78 <main+0x2124>
d03e630a:	4a8d      	ldr	r2, [pc, #564]	; (d03e6540 <main+0x26ec>)
d03e630c:	78f3      	ldrb	r3, [r6, #3]
d03e630e:	f892 c009 	ldrb.w	ip, [r2, #9]
d03e6312:	4d8c      	ldr	r5, [pc, #560]	; (d03e6544 <main+0x26f0>)
d03e6314:	9308      	str	r3, [sp, #32]
d03e6316:	fb13 f30c 	smulbb	r3, r3, ip
d03e631a:	f8b5 e000 	ldrh.w	lr, [r5]
d03e631e:	257f      	movs	r5, #127	; 0x7f
d03e6320:	333f      	adds	r3, #63	; 0x3f
d03e6322:	4a85      	ldr	r2, [pc, #532]	; (d03e6538 <main+0x26e4>)
d03e6324:	4988      	ldr	r1, [pc, #544]	; (d03e6548 <main+0x26f4>)
d03e6326:	7a52      	ldrb	r2, [r2, #9]
d03e6328:	8809      	ldrh	r1, [r1, #0]
d03e632a:	fbb3 f3f5 	udiv	r3, r3, r5
d03e632e:	fb02 f303 	mul.w	r3, r2, r3
d03e6332:	333f      	adds	r3, #63	; 0x3f
d03e6334:	fbb3 f3f5 	udiv	r3, r3, r5
d03e6338:	fb01 f303 	mul.w	r3, r1, r3
d03e633c:	2564      	movs	r5, #100	; 0x64
d03e633e:	3332      	adds	r3, #50	; 0x32
d03e6340:	fbb3 f3f5 	udiv	r3, r3, r5
d03e6344:	fb0e f303 	mul.w	r3, lr, r3
d03e6348:	3332      	adds	r3, #50	; 0x32
d03e634a:	2b63      	cmp	r3, #99	; 0x63
d03e634c:	d85e      	bhi.n	d03e640c <main+0x25b8>
d03e634e:	3a00      	subs	r2, #0
d03e6350:	9d08      	ldr	r5, [sp, #32]
d03e6352:	bf18      	it	ne
d03e6354:	2201      	movne	r2, #1
d03e6356:	2d00      	cmp	r5, #0
d03e6358:	d058      	beq.n	d03e640c <main+0x25b8>
d03e635a:	f1bc 0f00 	cmp.w	ip, #0
d03e635e:	bf08      	it	eq
d03e6360:	2200      	moveq	r2, #0
d03e6362:	2900      	cmp	r1, #0
d03e6364:	bf14      	ite	ne
d03e6366:	4611      	movne	r1, r2
d03e6368:	2100      	moveq	r1, #0
d03e636a:	f1be 0f00 	cmp.w	lr, #0
d03e636e:	bf08      	it	eq
d03e6370:	2100      	moveq	r1, #0
d03e6372:	b2c9      	uxtb	r1, r1
d03e6374:	f7fa fb5e 	bl	d03e0a34 <sid_voice_set_velocity>
d03e6378:	f7fe bfd2 	b.w	d03e5320 <main+0x14cc>
d03e637c:	4a70      	ldr	r2, [pc, #448]	; (d03e6540 <main+0x26ec>)
d03e637e:	78f3      	ldrb	r3, [r6, #3]
d03e6380:	7a52      	ldrb	r2, [r2, #9]
d03e6382:	4d70      	ldr	r5, [pc, #448]	; (d03e6544 <main+0x26f0>)
d03e6384:	9308      	str	r3, [sp, #32]
d03e6386:	fb13 f302 	smulbb	r3, r3, r2
d03e638a:	f8b5 e000 	ldrh.w	lr, [r5]
d03e638e:	257f      	movs	r5, #127	; 0x7f
d03e6390:	333f      	adds	r3, #63	; 0x3f
d03e6392:	4969      	ldr	r1, [pc, #420]	; (d03e6538 <main+0x26e4>)
d03e6394:	fbb3 f3f5 	udiv	r3, r3, r5
d03e6398:	f891 c009 	ldrb.w	ip, [r1, #9]
d03e639c:	496a      	ldr	r1, [pc, #424]	; (d03e6548 <main+0x26f4>)
d03e639e:	fb0c f303 	mul.w	r3, ip, r3
d03e63a2:	8809      	ldrh	r1, [r1, #0]
d03e63a4:	333f      	adds	r3, #63	; 0x3f
d03e63a6:	fbb3 f3f5 	udiv	r3, r3, r5
d03e63aa:	fb01 f303 	mul.w	r3, r1, r3
d03e63ae:	2564      	movs	r5, #100	; 0x64
d03e63b0:	3332      	adds	r3, #50	; 0x32
d03e63b2:	fbb3 f3f5 	udiv	r3, r3, r5
d03e63b6:	fb0e f303 	mul.w	r3, lr, r3
d03e63ba:	3332      	adds	r3, #50	; 0x32
d03e63bc:	2b63      	cmp	r3, #99	; 0x63
d03e63be:	d848      	bhi.n	d03e6452 <main+0x25fe>
d03e63c0:	3a00      	subs	r2, #0
d03e63c2:	9d08      	ldr	r5, [sp, #32]
d03e63c4:	bf18      	it	ne
d03e63c6:	2201      	movne	r2, #1
d03e63c8:	2d00      	cmp	r5, #0
d03e63ca:	d042      	beq.n	d03e6452 <main+0x25fe>
d03e63cc:	f1bc 0f00 	cmp.w	ip, #0
d03e63d0:	bf08      	it	eq
d03e63d2:	2200      	moveq	r2, #0
d03e63d4:	2900      	cmp	r1, #0
d03e63d6:	bf14      	ite	ne
d03e63d8:	4611      	movne	r1, r2
d03e63da:	2100      	moveq	r1, #0
d03e63dc:	f1be 0f00 	cmp.w	lr, #0
d03e63e0:	bf08      	it	eq
d03e63e2:	2100      	moveq	r1, #0
d03e63e4:	b2c9      	uxtb	r1, r1
d03e63e6:	f7fa fb25 	bl	d03e0a34 <sid_voice_set_velocity>
d03e63ea:	e6ad      	b.n	d03e6148 <main+0x22f4>
d03e63ec:	2100      	movs	r1, #0
d03e63ee:	e5c3      	b.n	d03e5f78 <main+0x2124>
d03e63f0:	2100      	movs	r1, #0
d03e63f2:	e690      	b.n	d03e6116 <main+0x22c2>
d03e63f4:	311e      	adds	r1, #30
d03e63f6:	4291      	cmp	r1, r2
d03e63f8:	f77f ac8e 	ble.w	d03e5d18 <main+0x1ec4>
d03e63fc:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d03e6400:	f7fb f886 	bl	d03e1510 <ui_select_program_delta>
d03e6404:	4b51      	ldr	r3, [pc, #324]	; (d03e654c <main+0x26f8>)
d03e6406:	781c      	ldrb	r4, [r3, #0]
d03e6408:	f7fe b9c6 	b.w	d03e4798 <main+0x944>
d03e640c:	2264      	movs	r2, #100	; 0x64
d03e640e:	fbb3 f3f2 	udiv	r3, r3, r2
d03e6412:	2bff      	cmp	r3, #255	; 0xff
d03e6414:	bf28      	it	cs
d03e6416:	23ff      	movcs	r3, #255	; 0xff
d03e6418:	4619      	mov	r1, r3
d03e641a:	e7aa      	b.n	d03e6372 <main+0x251e>
d03e641c:	3b07      	subs	r3, #7
d03e641e:	b2d8      	uxtb	r0, r3
d03e6420:	e673      	b.n	d03e610a <main+0x22b6>
d03e6422:	3b07      	subs	r3, #7
d03e6424:	3101      	adds	r1, #1
d03e6426:	b2d8      	uxtb	r0, r3
d03e6428:	e672      	b.n	d03e6110 <main+0x22bc>
d03e642a:	78f1      	ldrb	r1, [r6, #3]
d03e642c:	4638      	mov	r0, r7
d03e642e:	f7fa ff95 	bl	d03e135c <midi_effective_velocity>
d03e6432:	4601      	mov	r1, r0
d03e6434:	4628      	mov	r0, r5
d03e6436:	f7fa fafd 	bl	d03e0a34 <sid_voice_set_velocity>
d03e643a:	e6cb      	b.n	d03e61d4 <main+0x2380>
d03e643c:	78f1      	ldrb	r1, [r6, #3]
d03e643e:	4638      	mov	r0, r7
d03e6440:	f7fa ff8c 	bl	d03e135c <midi_effective_velocity>
d03e6444:	4601      	mov	r1, r0
d03e6446:	4628      	mov	r0, r5
d03e6448:	f7fa faf4 	bl	d03e0a34 <sid_voice_set_velocity>
d03e644c:	e69f      	b.n	d03e618e <main+0x233a>
d03e644e:	4601      	mov	r1, r0
d03e6450:	e592      	b.n	d03e5f78 <main+0x2124>
d03e6452:	2264      	movs	r2, #100	; 0x64
d03e6454:	fbb3 f3f2 	udiv	r3, r3, r2
d03e6458:	2bff      	cmp	r3, #255	; 0xff
d03e645a:	bf28      	it	cs
d03e645c:	23ff      	movcs	r3, #255	; 0xff
d03e645e:	4619      	mov	r1, r3
d03e6460:	e7c0      	b.n	d03e63e4 <main+0x2590>
d03e6462:	78f1      	ldrb	r1, [r6, #3]
d03e6464:	4638      	mov	r0, r7
d03e6466:	f7fa ff79 	bl	d03e135c <midi_effective_velocity>
d03e646a:	4601      	mov	r1, r0
d03e646c:	4628      	mov	r0, r5
d03e646e:	f7fa fae1 	bl	d03e0a34 <sid_voice_set_velocity>
d03e6472:	e731      	b.n	d03e62d8 <main+0x2484>
d03e6474:	2000      	movs	r0, #0
d03e6476:	e6d2      	b.n	d03e621e <main+0x23ca>
d03e6478:	2303      	movs	r3, #3
d03e647a:	4a34      	ldr	r2, [pc, #208]	; (d03e654c <main+0x26f8>)
d03e647c:	4d34      	ldr	r5, [pc, #208]	; (d03e6550 <main+0x26fc>)
d03e647e:	265a      	movs	r6, #90	; 0x5a
d03e6480:	4c34      	ldr	r4, [pc, #208]	; (d03e6554 <main+0x2700>)
d03e6482:	7013      	strb	r3, [r2, #0]
d03e6484:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d03e6486:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d03e6488:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d03e648c:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d03e6490:	9b05      	ldr	r3, [sp, #20]
d03e6492:	4d31      	ldr	r5, [pc, #196]	; (d03e6558 <main+0x2704>)
d03e6494:	2b03      	cmp	r3, #3
d03e6496:	702e      	strb	r6, [r5, #0]
d03e6498:	f47e a985 	bne.w	d03e47a6 <main+0x952>
d03e649c:	f7ff bba3 	b.w	d03e5be6 <main+0x1d92>
d03e64a0:	78f1      	ldrb	r1, [r6, #3]
d03e64a2:	4638      	mov	r0, r7
d03e64a4:	f7fa ff5a 	bl	d03e135c <midi_effective_velocity>
d03e64a8:	4601      	mov	r1, r0
d03e64aa:	4628      	mov	r0, r5
d03e64ac:	f7fa fac2 	bl	d03e0a34 <sid_voice_set_velocity>
d03e64b0:	e6d5      	b.n	d03e625e <main+0x240a>
d03e64b2:	2000      	movs	r0, #0
d03e64b4:	e629      	b.n	d03e610a <main+0x22b6>
d03e64b6:	4620      	mov	r0, r4
d03e64b8:	e627      	b.n	d03e610a <main+0x22b6>
d03e64ba:	4620      	mov	r0, r4
d03e64bc:	e6af      	b.n	d03e621e <main+0x23ca>
d03e64be:	2303      	movs	r3, #3
d03e64c0:	4a22      	ldr	r2, [pc, #136]	; (d03e654c <main+0x26f8>)
d03e64c2:	4d23      	ldr	r5, [pc, #140]	; (d03e6550 <main+0x26fc>)
d03e64c4:	f04f 0c5a 	mov.w	ip, #90	; 0x5a
d03e64c8:	4e22      	ldr	r6, [pc, #136]	; (d03e6554 <main+0x2700>)
d03e64ca:	7013      	strb	r3, [r2, #0]
d03e64cc:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d03e64ce:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d03e64d0:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d03e64d4:	4d20      	ldr	r5, [pc, #128]	; (d03e6558 <main+0x2704>)
d03e64d6:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
d03e64da:	f885 c000 	strb.w	ip, [r5]
d03e64de:	e52f      	b.n	d03e5f40 <main+0x20ec>
d03e64e0:	2303      	movs	r3, #3
d03e64e2:	4a1a      	ldr	r2, [pc, #104]	; (d03e654c <main+0x26f8>)
d03e64e4:	4d1a      	ldr	r5, [pc, #104]	; (d03e6550 <main+0x26fc>)
d03e64e6:	f04f 0c5a 	mov.w	ip, #90	; 0x5a
d03e64ea:	4e1a      	ldr	r6, [pc, #104]	; (d03e6554 <main+0x2700>)
d03e64ec:	7013      	strb	r3, [r2, #0]
d03e64ee:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d03e64f0:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d03e64f2:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d03e64f6:	4d18      	ldr	r5, [pc, #96]	; (d03e6558 <main+0x2704>)
d03e64f8:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
d03e64fc:	f885 c000 	strb.w	ip, [r5]
d03e6500:	e5ae      	b.n	d03e6060 <main+0x220c>
d03e6502:	f5b3 7fa6 	cmp.w	r3, #332	; 0x14c
d03e6506:	f6fe a8a1 	blt.w	d03e464c <main+0x7f8>
d03e650a:	f7ff b91a 	b.w	d03e5742 <main+0x18ee>
d03e650e:	490f      	ldr	r1, [pc, #60]	; (d03e654c <main+0x26f8>)
d03e6510:	780c      	ldrb	r4, [r1, #0]
d03e6512:	2c04      	cmp	r4, #4
d03e6514:	f63e a940 	bhi.w	d03e4798 <main+0x944>
d03e6518:	a101      	add	r1, pc, #4	; (adr r1, d03e6520 <main+0x26cc>)
d03e651a:	f851 f024 	ldr.w	pc, [r1, r4, lsl #2]
d03e651e:	bf00      	nop
d03e6520:	d03e51db 	.word	0xd03e51db
d03e6524:	d03e5d8f 	.word	0xd03e5d8f
d03e6528:	d03e51db 	.word	0xd03e51db
d03e652c:	d03e51db 	.word	0xd03e51db
d03e6530:	d03e5177 	.word	0xd03e5177
d03e6534:	d03e8ffb 	.word	0xd03e8ffb
d03e6538:	d03e8d54 	.word	0xd03e8d54
d03e653c:	d03e8fb0 	.word	0xd03e8fb0
d03e6540:	d03e8d74 	.word	0xd03e8d74
d03e6544:	d03e8d8a 	.word	0xd03e8d8a
d03e6548:	d03e8f92 	.word	0xd03e8f92
d03e654c:	d03e8ff5 	.word	0xd03e8ff5
d03e6550:	d03e7bb8 	.word	0xd03e7bb8
d03e6554:	d03e8ffc 	.word	0xd03e8ffc
d03e6558:	d03e9024 	.word	0xd03e9024

d03e655c <__errno>:
d03e655c:	4b01      	ldr	r3, [pc, #4]	; (d03e6564 <__errno+0x8>)
d03e655e:	6818      	ldr	r0, [r3, #0]
d03e6560:	4770      	bx	lr
d03e6562:	bf00      	nop
d03e6564:	d03e8c78 	.word	0xd03e8c78

d03e6568 <malloc>:
d03e6568:	4b02      	ldr	r3, [pc, #8]	; (d03e6574 <malloc+0xc>)
d03e656a:	4601      	mov	r1, r0
d03e656c:	6818      	ldr	r0, [r3, #0]
d03e656e:	f000 b85b 	b.w	d03e6628 <_malloc_r>
d03e6572:	bf00      	nop
d03e6574:	d03e8c78 	.word	0xd03e8c78

d03e6578 <memset>:
d03e6578:	4402      	add	r2, r0
d03e657a:	4603      	mov	r3, r0
d03e657c:	4293      	cmp	r3, r2
d03e657e:	d100      	bne.n	d03e6582 <memset+0xa>
d03e6580:	4770      	bx	lr
d03e6582:	f803 1b01 	strb.w	r1, [r3], #1
d03e6586:	e7f9      	b.n	d03e657c <memset+0x4>

d03e6588 <_free_r>:
d03e6588:	b537      	push	{r0, r1, r2, r4, r5, lr}
d03e658a:	2900      	cmp	r1, #0
d03e658c:	d048      	beq.n	d03e6620 <_free_r+0x98>
d03e658e:	f851 3c04 	ldr.w	r3, [r1, #-4]
d03e6592:	9001      	str	r0, [sp, #4]
d03e6594:	2b00      	cmp	r3, #0
d03e6596:	f1a1 0404 	sub.w	r4, r1, #4
d03e659a:	bfb8      	it	lt
d03e659c:	18e4      	addlt	r4, r4, r3
d03e659e:	f000 fb85 	bl	d03e6cac <__malloc_lock>
d03e65a2:	4a20      	ldr	r2, [pc, #128]	; (d03e6624 <_free_r+0x9c>)
d03e65a4:	9801      	ldr	r0, [sp, #4]
d03e65a6:	6813      	ldr	r3, [r2, #0]
d03e65a8:	4615      	mov	r5, r2
d03e65aa:	b933      	cbnz	r3, d03e65ba <_free_r+0x32>
d03e65ac:	6063      	str	r3, [r4, #4]
d03e65ae:	6014      	str	r4, [r2, #0]
d03e65b0:	b003      	add	sp, #12
d03e65b2:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d03e65b6:	f000 bb7f 	b.w	d03e6cb8 <__malloc_unlock>
d03e65ba:	42a3      	cmp	r3, r4
d03e65bc:	d90b      	bls.n	d03e65d6 <_free_r+0x4e>
d03e65be:	6821      	ldr	r1, [r4, #0]
d03e65c0:	1862      	adds	r2, r4, r1
d03e65c2:	4293      	cmp	r3, r2
d03e65c4:	bf04      	itt	eq
d03e65c6:	681a      	ldreq	r2, [r3, #0]
d03e65c8:	685b      	ldreq	r3, [r3, #4]
d03e65ca:	6063      	str	r3, [r4, #4]
d03e65cc:	bf04      	itt	eq
d03e65ce:	1852      	addeq	r2, r2, r1
d03e65d0:	6022      	streq	r2, [r4, #0]
d03e65d2:	602c      	str	r4, [r5, #0]
d03e65d4:	e7ec      	b.n	d03e65b0 <_free_r+0x28>
d03e65d6:	461a      	mov	r2, r3
d03e65d8:	685b      	ldr	r3, [r3, #4]
d03e65da:	b10b      	cbz	r3, d03e65e0 <_free_r+0x58>
d03e65dc:	42a3      	cmp	r3, r4
d03e65de:	d9fa      	bls.n	d03e65d6 <_free_r+0x4e>
d03e65e0:	6811      	ldr	r1, [r2, #0]
d03e65e2:	1855      	adds	r5, r2, r1
d03e65e4:	42a5      	cmp	r5, r4
d03e65e6:	d10b      	bne.n	d03e6600 <_free_r+0x78>
d03e65e8:	6824      	ldr	r4, [r4, #0]
d03e65ea:	4421      	add	r1, r4
d03e65ec:	1854      	adds	r4, r2, r1
d03e65ee:	42a3      	cmp	r3, r4
d03e65f0:	6011      	str	r1, [r2, #0]
d03e65f2:	d1dd      	bne.n	d03e65b0 <_free_r+0x28>
d03e65f4:	681c      	ldr	r4, [r3, #0]
d03e65f6:	685b      	ldr	r3, [r3, #4]
d03e65f8:	6053      	str	r3, [r2, #4]
d03e65fa:	4421      	add	r1, r4
d03e65fc:	6011      	str	r1, [r2, #0]
d03e65fe:	e7d7      	b.n	d03e65b0 <_free_r+0x28>
d03e6600:	d902      	bls.n	d03e6608 <_free_r+0x80>
d03e6602:	230c      	movs	r3, #12
d03e6604:	6003      	str	r3, [r0, #0]
d03e6606:	e7d3      	b.n	d03e65b0 <_free_r+0x28>
d03e6608:	6825      	ldr	r5, [r4, #0]
d03e660a:	1961      	adds	r1, r4, r5
d03e660c:	428b      	cmp	r3, r1
d03e660e:	bf04      	itt	eq
d03e6610:	6819      	ldreq	r1, [r3, #0]
d03e6612:	685b      	ldreq	r3, [r3, #4]
d03e6614:	6063      	str	r3, [r4, #4]
d03e6616:	bf04      	itt	eq
d03e6618:	1949      	addeq	r1, r1, r5
d03e661a:	6021      	streq	r1, [r4, #0]
d03e661c:	6054      	str	r4, [r2, #4]
d03e661e:	e7c7      	b.n	d03e65b0 <_free_r+0x28>
d03e6620:	b003      	add	sp, #12
d03e6622:	bd30      	pop	{r4, r5, pc}
d03e6624:	d03e902c 	.word	0xd03e902c

d03e6628 <_malloc_r>:
d03e6628:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e662a:	1ccd      	adds	r5, r1, #3
d03e662c:	f025 0503 	bic.w	r5, r5, #3
d03e6630:	3508      	adds	r5, #8
d03e6632:	2d0c      	cmp	r5, #12
d03e6634:	bf38      	it	cc
d03e6636:	250c      	movcc	r5, #12
d03e6638:	2d00      	cmp	r5, #0
d03e663a:	4606      	mov	r6, r0
d03e663c:	db01      	blt.n	d03e6642 <_malloc_r+0x1a>
d03e663e:	42a9      	cmp	r1, r5
d03e6640:	d903      	bls.n	d03e664a <_malloc_r+0x22>
d03e6642:	230c      	movs	r3, #12
d03e6644:	6033      	str	r3, [r6, #0]
d03e6646:	2000      	movs	r0, #0
d03e6648:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e664a:	f000 fb2f 	bl	d03e6cac <__malloc_lock>
d03e664e:	4921      	ldr	r1, [pc, #132]	; (d03e66d4 <_malloc_r+0xac>)
d03e6650:	680a      	ldr	r2, [r1, #0]
d03e6652:	4614      	mov	r4, r2
d03e6654:	b99c      	cbnz	r4, d03e667e <_malloc_r+0x56>
d03e6656:	4f20      	ldr	r7, [pc, #128]	; (d03e66d8 <_malloc_r+0xb0>)
d03e6658:	683b      	ldr	r3, [r7, #0]
d03e665a:	b923      	cbnz	r3, d03e6666 <_malloc_r+0x3e>
d03e665c:	4621      	mov	r1, r4
d03e665e:	4630      	mov	r0, r6
d03e6660:	f7f9 fd3e 	bl	d03e00e0 <_sbrk_r>
d03e6664:	6038      	str	r0, [r7, #0]
d03e6666:	4629      	mov	r1, r5
d03e6668:	4630      	mov	r0, r6
d03e666a:	f7f9 fd39 	bl	d03e00e0 <_sbrk_r>
d03e666e:	1c43      	adds	r3, r0, #1
d03e6670:	d123      	bne.n	d03e66ba <_malloc_r+0x92>
d03e6672:	230c      	movs	r3, #12
d03e6674:	6033      	str	r3, [r6, #0]
d03e6676:	4630      	mov	r0, r6
d03e6678:	f000 fb1e 	bl	d03e6cb8 <__malloc_unlock>
d03e667c:	e7e3      	b.n	d03e6646 <_malloc_r+0x1e>
d03e667e:	6823      	ldr	r3, [r4, #0]
d03e6680:	1b5b      	subs	r3, r3, r5
d03e6682:	d417      	bmi.n	d03e66b4 <_malloc_r+0x8c>
d03e6684:	2b0b      	cmp	r3, #11
d03e6686:	d903      	bls.n	d03e6690 <_malloc_r+0x68>
d03e6688:	6023      	str	r3, [r4, #0]
d03e668a:	441c      	add	r4, r3
d03e668c:	6025      	str	r5, [r4, #0]
d03e668e:	e004      	b.n	d03e669a <_malloc_r+0x72>
d03e6690:	6863      	ldr	r3, [r4, #4]
d03e6692:	42a2      	cmp	r2, r4
d03e6694:	bf0c      	ite	eq
d03e6696:	600b      	streq	r3, [r1, #0]
d03e6698:	6053      	strne	r3, [r2, #4]
d03e669a:	4630      	mov	r0, r6
d03e669c:	f000 fb0c 	bl	d03e6cb8 <__malloc_unlock>
d03e66a0:	f104 000b 	add.w	r0, r4, #11
d03e66a4:	1d23      	adds	r3, r4, #4
d03e66a6:	f020 0007 	bic.w	r0, r0, #7
d03e66aa:	1ac2      	subs	r2, r0, r3
d03e66ac:	d0cc      	beq.n	d03e6648 <_malloc_r+0x20>
d03e66ae:	1a1b      	subs	r3, r3, r0
d03e66b0:	50a3      	str	r3, [r4, r2]
d03e66b2:	e7c9      	b.n	d03e6648 <_malloc_r+0x20>
d03e66b4:	4622      	mov	r2, r4
d03e66b6:	6864      	ldr	r4, [r4, #4]
d03e66b8:	e7cc      	b.n	d03e6654 <_malloc_r+0x2c>
d03e66ba:	1cc4      	adds	r4, r0, #3
d03e66bc:	f024 0403 	bic.w	r4, r4, #3
d03e66c0:	42a0      	cmp	r0, r4
d03e66c2:	d0e3      	beq.n	d03e668c <_malloc_r+0x64>
d03e66c4:	1a21      	subs	r1, r4, r0
d03e66c6:	4630      	mov	r0, r6
d03e66c8:	f7f9 fd0a 	bl	d03e00e0 <_sbrk_r>
d03e66cc:	3001      	adds	r0, #1
d03e66ce:	d1dd      	bne.n	d03e668c <_malloc_r+0x64>
d03e66d0:	e7cf      	b.n	d03e6672 <_malloc_r+0x4a>
d03e66d2:	bf00      	nop
d03e66d4:	d03e902c 	.word	0xd03e902c
d03e66d8:	d03e9030 	.word	0xd03e9030

d03e66dc <setbuf>:
d03e66dc:	2900      	cmp	r1, #0
d03e66de:	f44f 6380 	mov.w	r3, #1024	; 0x400
d03e66e2:	bf0c      	ite	eq
d03e66e4:	2202      	moveq	r2, #2
d03e66e6:	2200      	movne	r2, #0
d03e66e8:	f000 b800 	b.w	d03e66ec <setvbuf>

d03e66ec <setvbuf>:
d03e66ec:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d03e66f0:	461d      	mov	r5, r3
d03e66f2:	4b5d      	ldr	r3, [pc, #372]	; (d03e6868 <setvbuf+0x17c>)
d03e66f4:	681f      	ldr	r7, [r3, #0]
d03e66f6:	4604      	mov	r4, r0
d03e66f8:	460e      	mov	r6, r1
d03e66fa:	4690      	mov	r8, r2
d03e66fc:	b127      	cbz	r7, d03e6708 <setvbuf+0x1c>
d03e66fe:	69bb      	ldr	r3, [r7, #24]
d03e6700:	b913      	cbnz	r3, d03e6708 <setvbuf+0x1c>
d03e6702:	4638      	mov	r0, r7
d03e6704:	f000 fa0e 	bl	d03e6b24 <__sinit>
d03e6708:	4b58      	ldr	r3, [pc, #352]	; (d03e686c <setvbuf+0x180>)
d03e670a:	429c      	cmp	r4, r3
d03e670c:	d167      	bne.n	d03e67de <setvbuf+0xf2>
d03e670e:	687c      	ldr	r4, [r7, #4]
d03e6710:	f1b8 0f02 	cmp.w	r8, #2
d03e6714:	d006      	beq.n	d03e6724 <setvbuf+0x38>
d03e6716:	f1b8 0f01 	cmp.w	r8, #1
d03e671a:	f200 809f 	bhi.w	d03e685c <setvbuf+0x170>
d03e671e:	2d00      	cmp	r5, #0
d03e6720:	f2c0 809c 	blt.w	d03e685c <setvbuf+0x170>
d03e6724:	6e63      	ldr	r3, [r4, #100]	; 0x64
d03e6726:	07db      	lsls	r3, r3, #31
d03e6728:	d405      	bmi.n	d03e6736 <setvbuf+0x4a>
d03e672a:	89a3      	ldrh	r3, [r4, #12]
d03e672c:	0598      	lsls	r0, r3, #22
d03e672e:	d402      	bmi.n	d03e6736 <setvbuf+0x4a>
d03e6730:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e6732:	f000 fa95 	bl	d03e6c60 <__retarget_lock_acquire_recursive>
d03e6736:	4621      	mov	r1, r4
d03e6738:	4638      	mov	r0, r7
d03e673a:	f000 f95f 	bl	d03e69fc <_fflush_r>
d03e673e:	6b61      	ldr	r1, [r4, #52]	; 0x34
d03e6740:	b141      	cbz	r1, d03e6754 <setvbuf+0x68>
d03e6742:	f104 0344 	add.w	r3, r4, #68	; 0x44
d03e6746:	4299      	cmp	r1, r3
d03e6748:	d002      	beq.n	d03e6750 <setvbuf+0x64>
d03e674a:	4638      	mov	r0, r7
d03e674c:	f7ff ff1c 	bl	d03e6588 <_free_r>
d03e6750:	2300      	movs	r3, #0
d03e6752:	6363      	str	r3, [r4, #52]	; 0x34
d03e6754:	2300      	movs	r3, #0
d03e6756:	61a3      	str	r3, [r4, #24]
d03e6758:	6063      	str	r3, [r4, #4]
d03e675a:	89a3      	ldrh	r3, [r4, #12]
d03e675c:	0619      	lsls	r1, r3, #24
d03e675e:	d503      	bpl.n	d03e6768 <setvbuf+0x7c>
d03e6760:	6921      	ldr	r1, [r4, #16]
d03e6762:	4638      	mov	r0, r7
d03e6764:	f7ff ff10 	bl	d03e6588 <_free_r>
d03e6768:	89a3      	ldrh	r3, [r4, #12]
d03e676a:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d03e676e:	f023 0303 	bic.w	r3, r3, #3
d03e6772:	f1b8 0f02 	cmp.w	r8, #2
d03e6776:	81a3      	strh	r3, [r4, #12]
d03e6778:	d06c      	beq.n	d03e6854 <setvbuf+0x168>
d03e677a:	ab01      	add	r3, sp, #4
d03e677c:	466a      	mov	r2, sp
d03e677e:	4621      	mov	r1, r4
d03e6780:	4638      	mov	r0, r7
d03e6782:	f000 fa6f 	bl	d03e6c64 <__swhatbuf_r>
d03e6786:	89a3      	ldrh	r3, [r4, #12]
d03e6788:	4318      	orrs	r0, r3
d03e678a:	81a0      	strh	r0, [r4, #12]
d03e678c:	2d00      	cmp	r5, #0
d03e678e:	d130      	bne.n	d03e67f2 <setvbuf+0x106>
d03e6790:	9d00      	ldr	r5, [sp, #0]
d03e6792:	4628      	mov	r0, r5
d03e6794:	f7ff fee8 	bl	d03e6568 <malloc>
d03e6798:	4606      	mov	r6, r0
d03e679a:	2800      	cmp	r0, #0
d03e679c:	d155      	bne.n	d03e684a <setvbuf+0x15e>
d03e679e:	f8dd 9000 	ldr.w	r9, [sp]
d03e67a2:	45a9      	cmp	r9, r5
d03e67a4:	d14a      	bne.n	d03e683c <setvbuf+0x150>
d03e67a6:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d03e67aa:	2200      	movs	r2, #0
d03e67ac:	60a2      	str	r2, [r4, #8]
d03e67ae:	f104 0247 	add.w	r2, r4, #71	; 0x47
d03e67b2:	6022      	str	r2, [r4, #0]
d03e67b4:	6122      	str	r2, [r4, #16]
d03e67b6:	2201      	movs	r2, #1
d03e67b8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d03e67bc:	6162      	str	r2, [r4, #20]
d03e67be:	6e62      	ldr	r2, [r4, #100]	; 0x64
d03e67c0:	f043 0302 	orr.w	r3, r3, #2
d03e67c4:	07d2      	lsls	r2, r2, #31
d03e67c6:	81a3      	strh	r3, [r4, #12]
d03e67c8:	d405      	bmi.n	d03e67d6 <setvbuf+0xea>
d03e67ca:	f413 7f00 	tst.w	r3, #512	; 0x200
d03e67ce:	d102      	bne.n	d03e67d6 <setvbuf+0xea>
d03e67d0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e67d2:	f000 fa46 	bl	d03e6c62 <__retarget_lock_release_recursive>
d03e67d6:	4628      	mov	r0, r5
d03e67d8:	b003      	add	sp, #12
d03e67da:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d03e67de:	4b24      	ldr	r3, [pc, #144]	; (d03e6870 <setvbuf+0x184>)
d03e67e0:	429c      	cmp	r4, r3
d03e67e2:	d101      	bne.n	d03e67e8 <setvbuf+0xfc>
d03e67e4:	68bc      	ldr	r4, [r7, #8]
d03e67e6:	e793      	b.n	d03e6710 <setvbuf+0x24>
d03e67e8:	4b22      	ldr	r3, [pc, #136]	; (d03e6874 <setvbuf+0x188>)
d03e67ea:	429c      	cmp	r4, r3
d03e67ec:	bf08      	it	eq
d03e67ee:	68fc      	ldreq	r4, [r7, #12]
d03e67f0:	e78e      	b.n	d03e6710 <setvbuf+0x24>
d03e67f2:	2e00      	cmp	r6, #0
d03e67f4:	d0cd      	beq.n	d03e6792 <setvbuf+0xa6>
d03e67f6:	69bb      	ldr	r3, [r7, #24]
d03e67f8:	b913      	cbnz	r3, d03e6800 <setvbuf+0x114>
d03e67fa:	4638      	mov	r0, r7
d03e67fc:	f000 f992 	bl	d03e6b24 <__sinit>
d03e6800:	f1b8 0f01 	cmp.w	r8, #1
d03e6804:	bf08      	it	eq
d03e6806:	89a3      	ldrheq	r3, [r4, #12]
d03e6808:	6026      	str	r6, [r4, #0]
d03e680a:	bf04      	itt	eq
d03e680c:	f043 0301 	orreq.w	r3, r3, #1
d03e6810:	81a3      	strheq	r3, [r4, #12]
d03e6812:	89a2      	ldrh	r2, [r4, #12]
d03e6814:	f012 0308 	ands.w	r3, r2, #8
d03e6818:	e9c4 6504 	strd	r6, r5, [r4, #16]
d03e681c:	d01c      	beq.n	d03e6858 <setvbuf+0x16c>
d03e681e:	07d3      	lsls	r3, r2, #31
d03e6820:	bf41      	itttt	mi
d03e6822:	2300      	movmi	r3, #0
d03e6824:	426d      	negmi	r5, r5
d03e6826:	60a3      	strmi	r3, [r4, #8]
d03e6828:	61a5      	strmi	r5, [r4, #24]
d03e682a:	bf58      	it	pl
d03e682c:	60a5      	strpl	r5, [r4, #8]
d03e682e:	6e65      	ldr	r5, [r4, #100]	; 0x64
d03e6830:	f015 0501 	ands.w	r5, r5, #1
d03e6834:	d115      	bne.n	d03e6862 <setvbuf+0x176>
d03e6836:	f412 7f00 	tst.w	r2, #512	; 0x200
d03e683a:	e7c8      	b.n	d03e67ce <setvbuf+0xe2>
d03e683c:	4648      	mov	r0, r9
d03e683e:	f7ff fe93 	bl	d03e6568 <malloc>
d03e6842:	4606      	mov	r6, r0
d03e6844:	2800      	cmp	r0, #0
d03e6846:	d0ae      	beq.n	d03e67a6 <setvbuf+0xba>
d03e6848:	464d      	mov	r5, r9
d03e684a:	89a3      	ldrh	r3, [r4, #12]
d03e684c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d03e6850:	81a3      	strh	r3, [r4, #12]
d03e6852:	e7d0      	b.n	d03e67f6 <setvbuf+0x10a>
d03e6854:	2500      	movs	r5, #0
d03e6856:	e7a8      	b.n	d03e67aa <setvbuf+0xbe>
d03e6858:	60a3      	str	r3, [r4, #8]
d03e685a:	e7e8      	b.n	d03e682e <setvbuf+0x142>
d03e685c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d03e6860:	e7b9      	b.n	d03e67d6 <setvbuf+0xea>
d03e6862:	2500      	movs	r5, #0
d03e6864:	e7b7      	b.n	d03e67d6 <setvbuf+0xea>
d03e6866:	bf00      	nop
d03e6868:	d03e8c78 	.word	0xd03e8c78
d03e686c:	d03e85fc 	.word	0xd03e85fc
d03e6870:	d03e861c 	.word	0xd03e861c
d03e6874:	d03e85dc 	.word	0xd03e85dc

d03e6878 <sniprintf>:
d03e6878:	b40c      	push	{r2, r3}
d03e687a:	b530      	push	{r4, r5, lr}
d03e687c:	4b17      	ldr	r3, [pc, #92]	; (d03e68dc <sniprintf+0x64>)
d03e687e:	1e0c      	subs	r4, r1, #0
d03e6880:	681d      	ldr	r5, [r3, #0]
d03e6882:	b09d      	sub	sp, #116	; 0x74
d03e6884:	da08      	bge.n	d03e6898 <sniprintf+0x20>
d03e6886:	238b      	movs	r3, #139	; 0x8b
d03e6888:	602b      	str	r3, [r5, #0]
d03e688a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e688e:	b01d      	add	sp, #116	; 0x74
d03e6890:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d03e6894:	b002      	add	sp, #8
d03e6896:	4770      	bx	lr
d03e6898:	f44f 7302 	mov.w	r3, #520	; 0x208
d03e689c:	f8ad 3014 	strh.w	r3, [sp, #20]
d03e68a0:	bf14      	ite	ne
d03e68a2:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d03e68a6:	4623      	moveq	r3, r4
d03e68a8:	9304      	str	r3, [sp, #16]
d03e68aa:	9307      	str	r3, [sp, #28]
d03e68ac:	f64f 73ff 	movw	r3, #65535	; 0xffff
d03e68b0:	9002      	str	r0, [sp, #8]
d03e68b2:	9006      	str	r0, [sp, #24]
d03e68b4:	f8ad 3016 	strh.w	r3, [sp, #22]
d03e68b8:	9a20      	ldr	r2, [sp, #128]	; 0x80
d03e68ba:	ab21      	add	r3, sp, #132	; 0x84
d03e68bc:	a902      	add	r1, sp, #8
d03e68be:	4628      	mov	r0, r5
d03e68c0:	9301      	str	r3, [sp, #4]
d03e68c2:	f000 fa5b 	bl	d03e6d7c <_svfiprintf_r>
d03e68c6:	1c43      	adds	r3, r0, #1
d03e68c8:	bfbc      	itt	lt
d03e68ca:	238b      	movlt	r3, #139	; 0x8b
d03e68cc:	602b      	strlt	r3, [r5, #0]
d03e68ce:	2c00      	cmp	r4, #0
d03e68d0:	d0dd      	beq.n	d03e688e <sniprintf+0x16>
d03e68d2:	9b02      	ldr	r3, [sp, #8]
d03e68d4:	2200      	movs	r2, #0
d03e68d6:	701a      	strb	r2, [r3, #0]
d03e68d8:	e7d9      	b.n	d03e688e <sniprintf+0x16>
d03e68da:	bf00      	nop
d03e68dc:	d03e8c78 	.word	0xd03e8c78

d03e68e0 <strlen>:
d03e68e0:	4603      	mov	r3, r0
d03e68e2:	f813 2b01 	ldrb.w	r2, [r3], #1
d03e68e6:	2a00      	cmp	r2, #0
d03e68e8:	d1fb      	bne.n	d03e68e2 <strlen+0x2>
d03e68ea:	1a18      	subs	r0, r3, r0
d03e68ec:	3801      	subs	r0, #1
d03e68ee:	4770      	bx	lr

d03e68f0 <__sflush_r>:
d03e68f0:	898a      	ldrh	r2, [r1, #12]
d03e68f2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e68f6:	4605      	mov	r5, r0
d03e68f8:	0710      	lsls	r0, r2, #28
d03e68fa:	460c      	mov	r4, r1
d03e68fc:	d458      	bmi.n	d03e69b0 <__sflush_r+0xc0>
d03e68fe:	684b      	ldr	r3, [r1, #4]
d03e6900:	2b00      	cmp	r3, #0
d03e6902:	dc05      	bgt.n	d03e6910 <__sflush_r+0x20>
d03e6904:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d03e6906:	2b00      	cmp	r3, #0
d03e6908:	dc02      	bgt.n	d03e6910 <__sflush_r+0x20>
d03e690a:	2000      	movs	r0, #0
d03e690c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03e6910:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d03e6912:	2e00      	cmp	r6, #0
d03e6914:	d0f9      	beq.n	d03e690a <__sflush_r+0x1a>
d03e6916:	2300      	movs	r3, #0
d03e6918:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d03e691c:	682f      	ldr	r7, [r5, #0]
d03e691e:	602b      	str	r3, [r5, #0]
d03e6920:	d032      	beq.n	d03e6988 <__sflush_r+0x98>
d03e6922:	6d60      	ldr	r0, [r4, #84]	; 0x54
d03e6924:	89a3      	ldrh	r3, [r4, #12]
d03e6926:	075a      	lsls	r2, r3, #29
d03e6928:	d505      	bpl.n	d03e6936 <__sflush_r+0x46>
d03e692a:	6863      	ldr	r3, [r4, #4]
d03e692c:	1ac0      	subs	r0, r0, r3
d03e692e:	6b63      	ldr	r3, [r4, #52]	; 0x34
d03e6930:	b10b      	cbz	r3, d03e6936 <__sflush_r+0x46>
d03e6932:	6c23      	ldr	r3, [r4, #64]	; 0x40
d03e6934:	1ac0      	subs	r0, r0, r3
d03e6936:	2300      	movs	r3, #0
d03e6938:	4602      	mov	r2, r0
d03e693a:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d03e693c:	6a21      	ldr	r1, [r4, #32]
d03e693e:	4628      	mov	r0, r5
d03e6940:	47b0      	blx	r6
d03e6942:	1c43      	adds	r3, r0, #1
d03e6944:	89a3      	ldrh	r3, [r4, #12]
d03e6946:	d106      	bne.n	d03e6956 <__sflush_r+0x66>
d03e6948:	6829      	ldr	r1, [r5, #0]
d03e694a:	291d      	cmp	r1, #29
d03e694c:	d82c      	bhi.n	d03e69a8 <__sflush_r+0xb8>
d03e694e:	4a2a      	ldr	r2, [pc, #168]	; (d03e69f8 <__sflush_r+0x108>)
d03e6950:	40ca      	lsrs	r2, r1
d03e6952:	07d6      	lsls	r6, r2, #31
d03e6954:	d528      	bpl.n	d03e69a8 <__sflush_r+0xb8>
d03e6956:	2200      	movs	r2, #0
d03e6958:	6062      	str	r2, [r4, #4]
d03e695a:	04d9      	lsls	r1, r3, #19
d03e695c:	6922      	ldr	r2, [r4, #16]
d03e695e:	6022      	str	r2, [r4, #0]
d03e6960:	d504      	bpl.n	d03e696c <__sflush_r+0x7c>
d03e6962:	1c42      	adds	r2, r0, #1
d03e6964:	d101      	bne.n	d03e696a <__sflush_r+0x7a>
d03e6966:	682b      	ldr	r3, [r5, #0]
d03e6968:	b903      	cbnz	r3, d03e696c <__sflush_r+0x7c>
d03e696a:	6560      	str	r0, [r4, #84]	; 0x54
d03e696c:	6b61      	ldr	r1, [r4, #52]	; 0x34
d03e696e:	602f      	str	r7, [r5, #0]
d03e6970:	2900      	cmp	r1, #0
d03e6972:	d0ca      	beq.n	d03e690a <__sflush_r+0x1a>
d03e6974:	f104 0344 	add.w	r3, r4, #68	; 0x44
d03e6978:	4299      	cmp	r1, r3
d03e697a:	d002      	beq.n	d03e6982 <__sflush_r+0x92>
d03e697c:	4628      	mov	r0, r5
d03e697e:	f7ff fe03 	bl	d03e6588 <_free_r>
d03e6982:	2000      	movs	r0, #0
d03e6984:	6360      	str	r0, [r4, #52]	; 0x34
d03e6986:	e7c1      	b.n	d03e690c <__sflush_r+0x1c>
d03e6988:	6a21      	ldr	r1, [r4, #32]
d03e698a:	2301      	movs	r3, #1
d03e698c:	4628      	mov	r0, r5
d03e698e:	47b0      	blx	r6
d03e6990:	1c41      	adds	r1, r0, #1
d03e6992:	d1c7      	bne.n	d03e6924 <__sflush_r+0x34>
d03e6994:	682b      	ldr	r3, [r5, #0]
d03e6996:	2b00      	cmp	r3, #0
d03e6998:	d0c4      	beq.n	d03e6924 <__sflush_r+0x34>
d03e699a:	2b1d      	cmp	r3, #29
d03e699c:	d001      	beq.n	d03e69a2 <__sflush_r+0xb2>
d03e699e:	2b16      	cmp	r3, #22
d03e69a0:	d101      	bne.n	d03e69a6 <__sflush_r+0xb6>
d03e69a2:	602f      	str	r7, [r5, #0]
d03e69a4:	e7b1      	b.n	d03e690a <__sflush_r+0x1a>
d03e69a6:	89a3      	ldrh	r3, [r4, #12]
d03e69a8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d03e69ac:	81a3      	strh	r3, [r4, #12]
d03e69ae:	e7ad      	b.n	d03e690c <__sflush_r+0x1c>
d03e69b0:	690f      	ldr	r7, [r1, #16]
d03e69b2:	2f00      	cmp	r7, #0
d03e69b4:	d0a9      	beq.n	d03e690a <__sflush_r+0x1a>
d03e69b6:	0793      	lsls	r3, r2, #30
d03e69b8:	680e      	ldr	r6, [r1, #0]
d03e69ba:	bf08      	it	eq
d03e69bc:	694b      	ldreq	r3, [r1, #20]
d03e69be:	600f      	str	r7, [r1, #0]
d03e69c0:	bf18      	it	ne
d03e69c2:	2300      	movne	r3, #0
d03e69c4:	eba6 0807 	sub.w	r8, r6, r7
d03e69c8:	608b      	str	r3, [r1, #8]
d03e69ca:	f1b8 0f00 	cmp.w	r8, #0
d03e69ce:	dd9c      	ble.n	d03e690a <__sflush_r+0x1a>
d03e69d0:	6a21      	ldr	r1, [r4, #32]
d03e69d2:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d03e69d4:	4643      	mov	r3, r8
d03e69d6:	463a      	mov	r2, r7
d03e69d8:	4628      	mov	r0, r5
d03e69da:	47b0      	blx	r6
d03e69dc:	2800      	cmp	r0, #0
d03e69de:	dc06      	bgt.n	d03e69ee <__sflush_r+0xfe>
d03e69e0:	89a3      	ldrh	r3, [r4, #12]
d03e69e2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d03e69e6:	81a3      	strh	r3, [r4, #12]
d03e69e8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e69ec:	e78e      	b.n	d03e690c <__sflush_r+0x1c>
d03e69ee:	4407      	add	r7, r0
d03e69f0:	eba8 0800 	sub.w	r8, r8, r0
d03e69f4:	e7e9      	b.n	d03e69ca <__sflush_r+0xda>
d03e69f6:	bf00      	nop
d03e69f8:	20400001 	.word	0x20400001

d03e69fc <_fflush_r>:
d03e69fc:	b538      	push	{r3, r4, r5, lr}
d03e69fe:	690b      	ldr	r3, [r1, #16]
d03e6a00:	4605      	mov	r5, r0
d03e6a02:	460c      	mov	r4, r1
d03e6a04:	b913      	cbnz	r3, d03e6a0c <_fflush_r+0x10>
d03e6a06:	2500      	movs	r5, #0
d03e6a08:	4628      	mov	r0, r5
d03e6a0a:	bd38      	pop	{r3, r4, r5, pc}
d03e6a0c:	b118      	cbz	r0, d03e6a16 <_fflush_r+0x1a>
d03e6a0e:	6983      	ldr	r3, [r0, #24]
d03e6a10:	b90b      	cbnz	r3, d03e6a16 <_fflush_r+0x1a>
d03e6a12:	f000 f887 	bl	d03e6b24 <__sinit>
d03e6a16:	4b14      	ldr	r3, [pc, #80]	; (d03e6a68 <_fflush_r+0x6c>)
d03e6a18:	429c      	cmp	r4, r3
d03e6a1a:	d11b      	bne.n	d03e6a54 <_fflush_r+0x58>
d03e6a1c:	686c      	ldr	r4, [r5, #4]
d03e6a1e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d03e6a22:	2b00      	cmp	r3, #0
d03e6a24:	d0ef      	beq.n	d03e6a06 <_fflush_r+0xa>
d03e6a26:	6e62      	ldr	r2, [r4, #100]	; 0x64
d03e6a28:	07d0      	lsls	r0, r2, #31
d03e6a2a:	d404      	bmi.n	d03e6a36 <_fflush_r+0x3a>
d03e6a2c:	0599      	lsls	r1, r3, #22
d03e6a2e:	d402      	bmi.n	d03e6a36 <_fflush_r+0x3a>
d03e6a30:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e6a32:	f000 f915 	bl	d03e6c60 <__retarget_lock_acquire_recursive>
d03e6a36:	4628      	mov	r0, r5
d03e6a38:	4621      	mov	r1, r4
d03e6a3a:	f7ff ff59 	bl	d03e68f0 <__sflush_r>
d03e6a3e:	6e63      	ldr	r3, [r4, #100]	; 0x64
d03e6a40:	07da      	lsls	r2, r3, #31
d03e6a42:	4605      	mov	r5, r0
d03e6a44:	d4e0      	bmi.n	d03e6a08 <_fflush_r+0xc>
d03e6a46:	89a3      	ldrh	r3, [r4, #12]
d03e6a48:	059b      	lsls	r3, r3, #22
d03e6a4a:	d4dd      	bmi.n	d03e6a08 <_fflush_r+0xc>
d03e6a4c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e6a4e:	f000 f908 	bl	d03e6c62 <__retarget_lock_release_recursive>
d03e6a52:	e7d9      	b.n	d03e6a08 <_fflush_r+0xc>
d03e6a54:	4b05      	ldr	r3, [pc, #20]	; (d03e6a6c <_fflush_r+0x70>)
d03e6a56:	429c      	cmp	r4, r3
d03e6a58:	d101      	bne.n	d03e6a5e <_fflush_r+0x62>
d03e6a5a:	68ac      	ldr	r4, [r5, #8]
d03e6a5c:	e7df      	b.n	d03e6a1e <_fflush_r+0x22>
d03e6a5e:	4b04      	ldr	r3, [pc, #16]	; (d03e6a70 <_fflush_r+0x74>)
d03e6a60:	429c      	cmp	r4, r3
d03e6a62:	bf08      	it	eq
d03e6a64:	68ec      	ldreq	r4, [r5, #12]
d03e6a66:	e7da      	b.n	d03e6a1e <_fflush_r+0x22>
d03e6a68:	d03e85fc 	.word	0xd03e85fc
d03e6a6c:	d03e861c 	.word	0xd03e861c
d03e6a70:	d03e85dc 	.word	0xd03e85dc

d03e6a74 <std>:
d03e6a74:	2300      	movs	r3, #0
d03e6a76:	b510      	push	{r4, lr}
d03e6a78:	4604      	mov	r4, r0
d03e6a7a:	e9c0 3300 	strd	r3, r3, [r0]
d03e6a7e:	e9c0 3304 	strd	r3, r3, [r0, #16]
d03e6a82:	6083      	str	r3, [r0, #8]
d03e6a84:	8181      	strh	r1, [r0, #12]
d03e6a86:	6643      	str	r3, [r0, #100]	; 0x64
d03e6a88:	81c2      	strh	r2, [r0, #14]
d03e6a8a:	6183      	str	r3, [r0, #24]
d03e6a8c:	4619      	mov	r1, r3
d03e6a8e:	2208      	movs	r2, #8
d03e6a90:	305c      	adds	r0, #92	; 0x5c
d03e6a92:	f7ff fd71 	bl	d03e6578 <memset>
d03e6a96:	4b05      	ldr	r3, [pc, #20]	; (d03e6aac <std+0x38>)
d03e6a98:	6263      	str	r3, [r4, #36]	; 0x24
d03e6a9a:	4b05      	ldr	r3, [pc, #20]	; (d03e6ab0 <std+0x3c>)
d03e6a9c:	62a3      	str	r3, [r4, #40]	; 0x28
d03e6a9e:	4b05      	ldr	r3, [pc, #20]	; (d03e6ab4 <std+0x40>)
d03e6aa0:	62e3      	str	r3, [r4, #44]	; 0x2c
d03e6aa2:	4b05      	ldr	r3, [pc, #20]	; (d03e6ab8 <std+0x44>)
d03e6aa4:	6224      	str	r4, [r4, #32]
d03e6aa6:	6323      	str	r3, [r4, #48]	; 0x30
d03e6aa8:	bd10      	pop	{r4, pc}
d03e6aaa:	bf00      	nop
d03e6aac:	d03e72a5 	.word	0xd03e72a5
d03e6ab0:	d03e72c7 	.word	0xd03e72c7
d03e6ab4:	d03e72ff 	.word	0xd03e72ff
d03e6ab8:	d03e7323 	.word	0xd03e7323

d03e6abc <_cleanup_r>:
d03e6abc:	4901      	ldr	r1, [pc, #4]	; (d03e6ac4 <_cleanup_r+0x8>)
d03e6abe:	f000 b8af 	b.w	d03e6c20 <_fwalk_reent>
d03e6ac2:	bf00      	nop
d03e6ac4:	d03e69fd 	.word	0xd03e69fd

d03e6ac8 <__sfmoreglue>:
d03e6ac8:	b570      	push	{r4, r5, r6, lr}
d03e6aca:	1e4a      	subs	r2, r1, #1
d03e6acc:	2568      	movs	r5, #104	; 0x68
d03e6ace:	4355      	muls	r5, r2
d03e6ad0:	460e      	mov	r6, r1
d03e6ad2:	f105 0174 	add.w	r1, r5, #116	; 0x74
d03e6ad6:	f7ff fda7 	bl	d03e6628 <_malloc_r>
d03e6ada:	4604      	mov	r4, r0
d03e6adc:	b140      	cbz	r0, d03e6af0 <__sfmoreglue+0x28>
d03e6ade:	2100      	movs	r1, #0
d03e6ae0:	e9c0 1600 	strd	r1, r6, [r0]
d03e6ae4:	300c      	adds	r0, #12
d03e6ae6:	60a0      	str	r0, [r4, #8]
d03e6ae8:	f105 0268 	add.w	r2, r5, #104	; 0x68
d03e6aec:	f7ff fd44 	bl	d03e6578 <memset>
d03e6af0:	4620      	mov	r0, r4
d03e6af2:	bd70      	pop	{r4, r5, r6, pc}

d03e6af4 <__sfp_lock_acquire>:
d03e6af4:	4801      	ldr	r0, [pc, #4]	; (d03e6afc <__sfp_lock_acquire+0x8>)
d03e6af6:	f000 b8b3 	b.w	d03e6c60 <__retarget_lock_acquire_recursive>
d03e6afa:	bf00      	nop
d03e6afc:	d03e91c8 	.word	0xd03e91c8

d03e6b00 <__sfp_lock_release>:
d03e6b00:	4801      	ldr	r0, [pc, #4]	; (d03e6b08 <__sfp_lock_release+0x8>)
d03e6b02:	f000 b8ae 	b.w	d03e6c62 <__retarget_lock_release_recursive>
d03e6b06:	bf00      	nop
d03e6b08:	d03e91c8 	.word	0xd03e91c8

d03e6b0c <__sinit_lock_acquire>:
d03e6b0c:	4801      	ldr	r0, [pc, #4]	; (d03e6b14 <__sinit_lock_acquire+0x8>)
d03e6b0e:	f000 b8a7 	b.w	d03e6c60 <__retarget_lock_acquire_recursive>
d03e6b12:	bf00      	nop
d03e6b14:	d03e91c3 	.word	0xd03e91c3

d03e6b18 <__sinit_lock_release>:
d03e6b18:	4801      	ldr	r0, [pc, #4]	; (d03e6b20 <__sinit_lock_release+0x8>)
d03e6b1a:	f000 b8a2 	b.w	d03e6c62 <__retarget_lock_release_recursive>
d03e6b1e:	bf00      	nop
d03e6b20:	d03e91c3 	.word	0xd03e91c3

d03e6b24 <__sinit>:
d03e6b24:	b510      	push	{r4, lr}
d03e6b26:	4604      	mov	r4, r0
d03e6b28:	f7ff fff0 	bl	d03e6b0c <__sinit_lock_acquire>
d03e6b2c:	69a3      	ldr	r3, [r4, #24]
d03e6b2e:	b11b      	cbz	r3, d03e6b38 <__sinit+0x14>
d03e6b30:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d03e6b34:	f7ff bff0 	b.w	d03e6b18 <__sinit_lock_release>
d03e6b38:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d03e6b3c:	6523      	str	r3, [r4, #80]	; 0x50
d03e6b3e:	4b13      	ldr	r3, [pc, #76]	; (d03e6b8c <__sinit+0x68>)
d03e6b40:	4a13      	ldr	r2, [pc, #76]	; (d03e6b90 <__sinit+0x6c>)
d03e6b42:	681b      	ldr	r3, [r3, #0]
d03e6b44:	62a2      	str	r2, [r4, #40]	; 0x28
d03e6b46:	42a3      	cmp	r3, r4
d03e6b48:	bf04      	itt	eq
d03e6b4a:	2301      	moveq	r3, #1
d03e6b4c:	61a3      	streq	r3, [r4, #24]
d03e6b4e:	4620      	mov	r0, r4
d03e6b50:	f000 f820 	bl	d03e6b94 <__sfp>
d03e6b54:	6060      	str	r0, [r4, #4]
d03e6b56:	4620      	mov	r0, r4
d03e6b58:	f000 f81c 	bl	d03e6b94 <__sfp>
d03e6b5c:	60a0      	str	r0, [r4, #8]
d03e6b5e:	4620      	mov	r0, r4
d03e6b60:	f000 f818 	bl	d03e6b94 <__sfp>
d03e6b64:	2200      	movs	r2, #0
d03e6b66:	60e0      	str	r0, [r4, #12]
d03e6b68:	2104      	movs	r1, #4
d03e6b6a:	6860      	ldr	r0, [r4, #4]
d03e6b6c:	f7ff ff82 	bl	d03e6a74 <std>
d03e6b70:	68a0      	ldr	r0, [r4, #8]
d03e6b72:	2201      	movs	r2, #1
d03e6b74:	2109      	movs	r1, #9
d03e6b76:	f7ff ff7d 	bl	d03e6a74 <std>
d03e6b7a:	68e0      	ldr	r0, [r4, #12]
d03e6b7c:	2202      	movs	r2, #2
d03e6b7e:	2112      	movs	r1, #18
d03e6b80:	f7ff ff78 	bl	d03e6a74 <std>
d03e6b84:	2301      	movs	r3, #1
d03e6b86:	61a3      	str	r3, [r4, #24]
d03e6b88:	e7d2      	b.n	d03e6b30 <__sinit+0xc>
d03e6b8a:	bf00      	nop
d03e6b8c:	d03e85d8 	.word	0xd03e85d8
d03e6b90:	d03e6abd 	.word	0xd03e6abd

d03e6b94 <__sfp>:
d03e6b94:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e6b96:	4607      	mov	r7, r0
d03e6b98:	f7ff ffac 	bl	d03e6af4 <__sfp_lock_acquire>
d03e6b9c:	4b1e      	ldr	r3, [pc, #120]	; (d03e6c18 <__sfp+0x84>)
d03e6b9e:	681e      	ldr	r6, [r3, #0]
d03e6ba0:	69b3      	ldr	r3, [r6, #24]
d03e6ba2:	b913      	cbnz	r3, d03e6baa <__sfp+0x16>
d03e6ba4:	4630      	mov	r0, r6
d03e6ba6:	f7ff ffbd 	bl	d03e6b24 <__sinit>
d03e6baa:	3648      	adds	r6, #72	; 0x48
d03e6bac:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d03e6bb0:	3b01      	subs	r3, #1
d03e6bb2:	d503      	bpl.n	d03e6bbc <__sfp+0x28>
d03e6bb4:	6833      	ldr	r3, [r6, #0]
d03e6bb6:	b30b      	cbz	r3, d03e6bfc <__sfp+0x68>
d03e6bb8:	6836      	ldr	r6, [r6, #0]
d03e6bba:	e7f7      	b.n	d03e6bac <__sfp+0x18>
d03e6bbc:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d03e6bc0:	b9d5      	cbnz	r5, d03e6bf8 <__sfp+0x64>
d03e6bc2:	4b16      	ldr	r3, [pc, #88]	; (d03e6c1c <__sfp+0x88>)
d03e6bc4:	60e3      	str	r3, [r4, #12]
d03e6bc6:	f104 0058 	add.w	r0, r4, #88	; 0x58
d03e6bca:	6665      	str	r5, [r4, #100]	; 0x64
d03e6bcc:	f000 f847 	bl	d03e6c5e <__retarget_lock_init_recursive>
d03e6bd0:	f7ff ff96 	bl	d03e6b00 <__sfp_lock_release>
d03e6bd4:	e9c4 5501 	strd	r5, r5, [r4, #4]
d03e6bd8:	e9c4 5504 	strd	r5, r5, [r4, #16]
d03e6bdc:	6025      	str	r5, [r4, #0]
d03e6bde:	61a5      	str	r5, [r4, #24]
d03e6be0:	2208      	movs	r2, #8
d03e6be2:	4629      	mov	r1, r5
d03e6be4:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d03e6be8:	f7ff fcc6 	bl	d03e6578 <memset>
d03e6bec:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d03e6bf0:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d03e6bf4:	4620      	mov	r0, r4
d03e6bf6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e6bf8:	3468      	adds	r4, #104	; 0x68
d03e6bfa:	e7d9      	b.n	d03e6bb0 <__sfp+0x1c>
d03e6bfc:	2104      	movs	r1, #4
d03e6bfe:	4638      	mov	r0, r7
d03e6c00:	f7ff ff62 	bl	d03e6ac8 <__sfmoreglue>
d03e6c04:	4604      	mov	r4, r0
d03e6c06:	6030      	str	r0, [r6, #0]
d03e6c08:	2800      	cmp	r0, #0
d03e6c0a:	d1d5      	bne.n	d03e6bb8 <__sfp+0x24>
d03e6c0c:	f7ff ff78 	bl	d03e6b00 <__sfp_lock_release>
d03e6c10:	230c      	movs	r3, #12
d03e6c12:	603b      	str	r3, [r7, #0]
d03e6c14:	e7ee      	b.n	d03e6bf4 <__sfp+0x60>
d03e6c16:	bf00      	nop
d03e6c18:	d03e85d8 	.word	0xd03e85d8
d03e6c1c:	ffff0001 	.word	0xffff0001

d03e6c20 <_fwalk_reent>:
d03e6c20:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d03e6c24:	4606      	mov	r6, r0
d03e6c26:	4688      	mov	r8, r1
d03e6c28:	f100 0448 	add.w	r4, r0, #72	; 0x48
d03e6c2c:	2700      	movs	r7, #0
d03e6c2e:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d03e6c32:	f1b9 0901 	subs.w	r9, r9, #1
d03e6c36:	d505      	bpl.n	d03e6c44 <_fwalk_reent+0x24>
d03e6c38:	6824      	ldr	r4, [r4, #0]
d03e6c3a:	2c00      	cmp	r4, #0
d03e6c3c:	d1f7      	bne.n	d03e6c2e <_fwalk_reent+0xe>
d03e6c3e:	4638      	mov	r0, r7
d03e6c40:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d03e6c44:	89ab      	ldrh	r3, [r5, #12]
d03e6c46:	2b01      	cmp	r3, #1
d03e6c48:	d907      	bls.n	d03e6c5a <_fwalk_reent+0x3a>
d03e6c4a:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d03e6c4e:	3301      	adds	r3, #1
d03e6c50:	d003      	beq.n	d03e6c5a <_fwalk_reent+0x3a>
d03e6c52:	4629      	mov	r1, r5
d03e6c54:	4630      	mov	r0, r6
d03e6c56:	47c0      	blx	r8
d03e6c58:	4307      	orrs	r7, r0
d03e6c5a:	3568      	adds	r5, #104	; 0x68
d03e6c5c:	e7e9      	b.n	d03e6c32 <_fwalk_reent+0x12>

d03e6c5e <__retarget_lock_init_recursive>:
d03e6c5e:	4770      	bx	lr

d03e6c60 <__retarget_lock_acquire_recursive>:
d03e6c60:	4770      	bx	lr

d03e6c62 <__retarget_lock_release_recursive>:
d03e6c62:	4770      	bx	lr

d03e6c64 <__swhatbuf_r>:
d03e6c64:	b570      	push	{r4, r5, r6, lr}
d03e6c66:	460e      	mov	r6, r1
d03e6c68:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e6c6c:	2900      	cmp	r1, #0
d03e6c6e:	b096      	sub	sp, #88	; 0x58
d03e6c70:	4614      	mov	r4, r2
d03e6c72:	461d      	mov	r5, r3
d03e6c74:	da07      	bge.n	d03e6c86 <__swhatbuf_r+0x22>
d03e6c76:	2300      	movs	r3, #0
d03e6c78:	602b      	str	r3, [r5, #0]
d03e6c7a:	89b3      	ldrh	r3, [r6, #12]
d03e6c7c:	061a      	lsls	r2, r3, #24
d03e6c7e:	d410      	bmi.n	d03e6ca2 <__swhatbuf_r+0x3e>
d03e6c80:	f44f 6380 	mov.w	r3, #1024	; 0x400
d03e6c84:	e00e      	b.n	d03e6ca4 <__swhatbuf_r+0x40>
d03e6c86:	466a      	mov	r2, sp
d03e6c88:	f000 fb60 	bl	d03e734c <_fstat_r>
d03e6c8c:	2800      	cmp	r0, #0
d03e6c8e:	dbf2      	blt.n	d03e6c76 <__swhatbuf_r+0x12>
d03e6c90:	9a01      	ldr	r2, [sp, #4]
d03e6c92:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d03e6c96:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d03e6c9a:	425a      	negs	r2, r3
d03e6c9c:	415a      	adcs	r2, r3
d03e6c9e:	602a      	str	r2, [r5, #0]
d03e6ca0:	e7ee      	b.n	d03e6c80 <__swhatbuf_r+0x1c>
d03e6ca2:	2340      	movs	r3, #64	; 0x40
d03e6ca4:	2000      	movs	r0, #0
d03e6ca6:	6023      	str	r3, [r4, #0]
d03e6ca8:	b016      	add	sp, #88	; 0x58
d03e6caa:	bd70      	pop	{r4, r5, r6, pc}

d03e6cac <__malloc_lock>:
d03e6cac:	4801      	ldr	r0, [pc, #4]	; (d03e6cb4 <__malloc_lock+0x8>)
d03e6cae:	f7ff bfd7 	b.w	d03e6c60 <__retarget_lock_acquire_recursive>
d03e6cb2:	bf00      	nop
d03e6cb4:	d03e91c4 	.word	0xd03e91c4

d03e6cb8 <__malloc_unlock>:
d03e6cb8:	4801      	ldr	r0, [pc, #4]	; (d03e6cc0 <__malloc_unlock+0x8>)
d03e6cba:	f7ff bfd2 	b.w	d03e6c62 <__retarget_lock_release_recursive>
d03e6cbe:	bf00      	nop
d03e6cc0:	d03e91c4 	.word	0xd03e91c4

d03e6cc4 <__ssputs_r>:
d03e6cc4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03e6cc8:	688e      	ldr	r6, [r1, #8]
d03e6cca:	429e      	cmp	r6, r3
d03e6ccc:	4682      	mov	sl, r0
d03e6cce:	460c      	mov	r4, r1
d03e6cd0:	4690      	mov	r8, r2
d03e6cd2:	461f      	mov	r7, r3
d03e6cd4:	d838      	bhi.n	d03e6d48 <__ssputs_r+0x84>
d03e6cd6:	898a      	ldrh	r2, [r1, #12]
d03e6cd8:	f412 6f90 	tst.w	r2, #1152	; 0x480
d03e6cdc:	d032      	beq.n	d03e6d44 <__ssputs_r+0x80>
d03e6cde:	6825      	ldr	r5, [r4, #0]
d03e6ce0:	6909      	ldr	r1, [r1, #16]
d03e6ce2:	eba5 0901 	sub.w	r9, r5, r1
d03e6ce6:	6965      	ldr	r5, [r4, #20]
d03e6ce8:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d03e6cec:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d03e6cf0:	3301      	adds	r3, #1
d03e6cf2:	444b      	add	r3, r9
d03e6cf4:	106d      	asrs	r5, r5, #1
d03e6cf6:	429d      	cmp	r5, r3
d03e6cf8:	bf38      	it	cc
d03e6cfa:	461d      	movcc	r5, r3
d03e6cfc:	0553      	lsls	r3, r2, #21
d03e6cfe:	d531      	bpl.n	d03e6d64 <__ssputs_r+0xa0>
d03e6d00:	4629      	mov	r1, r5
d03e6d02:	f7ff fc91 	bl	d03e6628 <_malloc_r>
d03e6d06:	4606      	mov	r6, r0
d03e6d08:	b950      	cbnz	r0, d03e6d20 <__ssputs_r+0x5c>
d03e6d0a:	230c      	movs	r3, #12
d03e6d0c:	f8ca 3000 	str.w	r3, [sl]
d03e6d10:	89a3      	ldrh	r3, [r4, #12]
d03e6d12:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d03e6d16:	81a3      	strh	r3, [r4, #12]
d03e6d18:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e6d1c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03e6d20:	6921      	ldr	r1, [r4, #16]
d03e6d22:	464a      	mov	r2, r9
d03e6d24:	f000 fb8c 	bl	d03e7440 <memcpy>
d03e6d28:	89a3      	ldrh	r3, [r4, #12]
d03e6d2a:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d03e6d2e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d03e6d32:	81a3      	strh	r3, [r4, #12]
d03e6d34:	6126      	str	r6, [r4, #16]
d03e6d36:	6165      	str	r5, [r4, #20]
d03e6d38:	444e      	add	r6, r9
d03e6d3a:	eba5 0509 	sub.w	r5, r5, r9
d03e6d3e:	6026      	str	r6, [r4, #0]
d03e6d40:	60a5      	str	r5, [r4, #8]
d03e6d42:	463e      	mov	r6, r7
d03e6d44:	42be      	cmp	r6, r7
d03e6d46:	d900      	bls.n	d03e6d4a <__ssputs_r+0x86>
d03e6d48:	463e      	mov	r6, r7
d03e6d4a:	4632      	mov	r2, r6
d03e6d4c:	6820      	ldr	r0, [r4, #0]
d03e6d4e:	4641      	mov	r1, r8
d03e6d50:	f000 fb84 	bl	d03e745c <memmove>
d03e6d54:	68a3      	ldr	r3, [r4, #8]
d03e6d56:	6822      	ldr	r2, [r4, #0]
d03e6d58:	1b9b      	subs	r3, r3, r6
d03e6d5a:	4432      	add	r2, r6
d03e6d5c:	60a3      	str	r3, [r4, #8]
d03e6d5e:	6022      	str	r2, [r4, #0]
d03e6d60:	2000      	movs	r0, #0
d03e6d62:	e7db      	b.n	d03e6d1c <__ssputs_r+0x58>
d03e6d64:	462a      	mov	r2, r5
d03e6d66:	f000 fb93 	bl	d03e7490 <_realloc_r>
d03e6d6a:	4606      	mov	r6, r0
d03e6d6c:	2800      	cmp	r0, #0
d03e6d6e:	d1e1      	bne.n	d03e6d34 <__ssputs_r+0x70>
d03e6d70:	6921      	ldr	r1, [r4, #16]
d03e6d72:	4650      	mov	r0, sl
d03e6d74:	f7ff fc08 	bl	d03e6588 <_free_r>
d03e6d78:	e7c7      	b.n	d03e6d0a <__ssputs_r+0x46>
	...

d03e6d7c <_svfiprintf_r>:
d03e6d7c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e6d80:	4698      	mov	r8, r3
d03e6d82:	898b      	ldrh	r3, [r1, #12]
d03e6d84:	061b      	lsls	r3, r3, #24
d03e6d86:	b09d      	sub	sp, #116	; 0x74
d03e6d88:	4607      	mov	r7, r0
d03e6d8a:	460d      	mov	r5, r1
d03e6d8c:	4614      	mov	r4, r2
d03e6d8e:	d50e      	bpl.n	d03e6dae <_svfiprintf_r+0x32>
d03e6d90:	690b      	ldr	r3, [r1, #16]
d03e6d92:	b963      	cbnz	r3, d03e6dae <_svfiprintf_r+0x32>
d03e6d94:	2140      	movs	r1, #64	; 0x40
d03e6d96:	f7ff fc47 	bl	d03e6628 <_malloc_r>
d03e6d9a:	6028      	str	r0, [r5, #0]
d03e6d9c:	6128      	str	r0, [r5, #16]
d03e6d9e:	b920      	cbnz	r0, d03e6daa <_svfiprintf_r+0x2e>
d03e6da0:	230c      	movs	r3, #12
d03e6da2:	603b      	str	r3, [r7, #0]
d03e6da4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e6da8:	e0d1      	b.n	d03e6f4e <_svfiprintf_r+0x1d2>
d03e6daa:	2340      	movs	r3, #64	; 0x40
d03e6dac:	616b      	str	r3, [r5, #20]
d03e6dae:	2300      	movs	r3, #0
d03e6db0:	9309      	str	r3, [sp, #36]	; 0x24
d03e6db2:	2320      	movs	r3, #32
d03e6db4:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d03e6db8:	f8cd 800c 	str.w	r8, [sp, #12]
d03e6dbc:	2330      	movs	r3, #48	; 0x30
d03e6dbe:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d03e6f68 <_svfiprintf_r+0x1ec>
d03e6dc2:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d03e6dc6:	f04f 0901 	mov.w	r9, #1
d03e6dca:	4623      	mov	r3, r4
d03e6dcc:	469a      	mov	sl, r3
d03e6dce:	f813 2b01 	ldrb.w	r2, [r3], #1
d03e6dd2:	b10a      	cbz	r2, d03e6dd8 <_svfiprintf_r+0x5c>
d03e6dd4:	2a25      	cmp	r2, #37	; 0x25
d03e6dd6:	d1f9      	bne.n	d03e6dcc <_svfiprintf_r+0x50>
d03e6dd8:	ebba 0b04 	subs.w	fp, sl, r4
d03e6ddc:	d00b      	beq.n	d03e6df6 <_svfiprintf_r+0x7a>
d03e6dde:	465b      	mov	r3, fp
d03e6de0:	4622      	mov	r2, r4
d03e6de2:	4629      	mov	r1, r5
d03e6de4:	4638      	mov	r0, r7
d03e6de6:	f7ff ff6d 	bl	d03e6cc4 <__ssputs_r>
d03e6dea:	3001      	adds	r0, #1
d03e6dec:	f000 80aa 	beq.w	d03e6f44 <_svfiprintf_r+0x1c8>
d03e6df0:	9a09      	ldr	r2, [sp, #36]	; 0x24
d03e6df2:	445a      	add	r2, fp
d03e6df4:	9209      	str	r2, [sp, #36]	; 0x24
d03e6df6:	f89a 3000 	ldrb.w	r3, [sl]
d03e6dfa:	2b00      	cmp	r3, #0
d03e6dfc:	f000 80a2 	beq.w	d03e6f44 <_svfiprintf_r+0x1c8>
d03e6e00:	2300      	movs	r3, #0
d03e6e02:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d03e6e06:	e9cd 2305 	strd	r2, r3, [sp, #20]
d03e6e0a:	f10a 0a01 	add.w	sl, sl, #1
d03e6e0e:	9304      	str	r3, [sp, #16]
d03e6e10:	9307      	str	r3, [sp, #28]
d03e6e12:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d03e6e16:	931a      	str	r3, [sp, #104]	; 0x68
d03e6e18:	4654      	mov	r4, sl
d03e6e1a:	2205      	movs	r2, #5
d03e6e1c:	f814 1b01 	ldrb.w	r1, [r4], #1
d03e6e20:	4851      	ldr	r0, [pc, #324]	; (d03e6f68 <_svfiprintf_r+0x1ec>)
d03e6e22:	f000 fabd 	bl	d03e73a0 <memchr>
d03e6e26:	9a04      	ldr	r2, [sp, #16]
d03e6e28:	b9d8      	cbnz	r0, d03e6e62 <_svfiprintf_r+0xe6>
d03e6e2a:	06d0      	lsls	r0, r2, #27
d03e6e2c:	bf44      	itt	mi
d03e6e2e:	2320      	movmi	r3, #32
d03e6e30:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d03e6e34:	0711      	lsls	r1, r2, #28
d03e6e36:	bf44      	itt	mi
d03e6e38:	232b      	movmi	r3, #43	; 0x2b
d03e6e3a:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d03e6e3e:	f89a 3000 	ldrb.w	r3, [sl]
d03e6e42:	2b2a      	cmp	r3, #42	; 0x2a
d03e6e44:	d015      	beq.n	d03e6e72 <_svfiprintf_r+0xf6>
d03e6e46:	9a07      	ldr	r2, [sp, #28]
d03e6e48:	4654      	mov	r4, sl
d03e6e4a:	2000      	movs	r0, #0
d03e6e4c:	f04f 0c0a 	mov.w	ip, #10
d03e6e50:	4621      	mov	r1, r4
d03e6e52:	f811 3b01 	ldrb.w	r3, [r1], #1
d03e6e56:	3b30      	subs	r3, #48	; 0x30
d03e6e58:	2b09      	cmp	r3, #9
d03e6e5a:	d94e      	bls.n	d03e6efa <_svfiprintf_r+0x17e>
d03e6e5c:	b1b0      	cbz	r0, d03e6e8c <_svfiprintf_r+0x110>
d03e6e5e:	9207      	str	r2, [sp, #28]
d03e6e60:	e014      	b.n	d03e6e8c <_svfiprintf_r+0x110>
d03e6e62:	eba0 0308 	sub.w	r3, r0, r8
d03e6e66:	fa09 f303 	lsl.w	r3, r9, r3
d03e6e6a:	4313      	orrs	r3, r2
d03e6e6c:	9304      	str	r3, [sp, #16]
d03e6e6e:	46a2      	mov	sl, r4
d03e6e70:	e7d2      	b.n	d03e6e18 <_svfiprintf_r+0x9c>
d03e6e72:	9b03      	ldr	r3, [sp, #12]
d03e6e74:	1d19      	adds	r1, r3, #4
d03e6e76:	681b      	ldr	r3, [r3, #0]
d03e6e78:	9103      	str	r1, [sp, #12]
d03e6e7a:	2b00      	cmp	r3, #0
d03e6e7c:	bfbb      	ittet	lt
d03e6e7e:	425b      	neglt	r3, r3
d03e6e80:	f042 0202 	orrlt.w	r2, r2, #2
d03e6e84:	9307      	strge	r3, [sp, #28]
d03e6e86:	9307      	strlt	r3, [sp, #28]
d03e6e88:	bfb8      	it	lt
d03e6e8a:	9204      	strlt	r2, [sp, #16]
d03e6e8c:	7823      	ldrb	r3, [r4, #0]
d03e6e8e:	2b2e      	cmp	r3, #46	; 0x2e
d03e6e90:	d10c      	bne.n	d03e6eac <_svfiprintf_r+0x130>
d03e6e92:	7863      	ldrb	r3, [r4, #1]
d03e6e94:	2b2a      	cmp	r3, #42	; 0x2a
d03e6e96:	d135      	bne.n	d03e6f04 <_svfiprintf_r+0x188>
d03e6e98:	9b03      	ldr	r3, [sp, #12]
d03e6e9a:	1d1a      	adds	r2, r3, #4
d03e6e9c:	681b      	ldr	r3, [r3, #0]
d03e6e9e:	9203      	str	r2, [sp, #12]
d03e6ea0:	2b00      	cmp	r3, #0
d03e6ea2:	bfb8      	it	lt
d03e6ea4:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d03e6ea8:	3402      	adds	r4, #2
d03e6eaa:	9305      	str	r3, [sp, #20]
d03e6eac:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d03e6f78 <_svfiprintf_r+0x1fc>
d03e6eb0:	7821      	ldrb	r1, [r4, #0]
d03e6eb2:	2203      	movs	r2, #3
d03e6eb4:	4650      	mov	r0, sl
d03e6eb6:	f000 fa73 	bl	d03e73a0 <memchr>
d03e6eba:	b140      	cbz	r0, d03e6ece <_svfiprintf_r+0x152>
d03e6ebc:	2340      	movs	r3, #64	; 0x40
d03e6ebe:	eba0 000a 	sub.w	r0, r0, sl
d03e6ec2:	fa03 f000 	lsl.w	r0, r3, r0
d03e6ec6:	9b04      	ldr	r3, [sp, #16]
d03e6ec8:	4303      	orrs	r3, r0
d03e6eca:	3401      	adds	r4, #1
d03e6ecc:	9304      	str	r3, [sp, #16]
d03e6ece:	f814 1b01 	ldrb.w	r1, [r4], #1
d03e6ed2:	4826      	ldr	r0, [pc, #152]	; (d03e6f6c <_svfiprintf_r+0x1f0>)
d03e6ed4:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d03e6ed8:	2206      	movs	r2, #6
d03e6eda:	f000 fa61 	bl	d03e73a0 <memchr>
d03e6ede:	2800      	cmp	r0, #0
d03e6ee0:	d038      	beq.n	d03e6f54 <_svfiprintf_r+0x1d8>
d03e6ee2:	4b23      	ldr	r3, [pc, #140]	; (d03e6f70 <_svfiprintf_r+0x1f4>)
d03e6ee4:	bb1b      	cbnz	r3, d03e6f2e <_svfiprintf_r+0x1b2>
d03e6ee6:	9b03      	ldr	r3, [sp, #12]
d03e6ee8:	3307      	adds	r3, #7
d03e6eea:	f023 0307 	bic.w	r3, r3, #7
d03e6eee:	3308      	adds	r3, #8
d03e6ef0:	9303      	str	r3, [sp, #12]
d03e6ef2:	9b09      	ldr	r3, [sp, #36]	; 0x24
d03e6ef4:	4433      	add	r3, r6
d03e6ef6:	9309      	str	r3, [sp, #36]	; 0x24
d03e6ef8:	e767      	b.n	d03e6dca <_svfiprintf_r+0x4e>
d03e6efa:	fb0c 3202 	mla	r2, ip, r2, r3
d03e6efe:	460c      	mov	r4, r1
d03e6f00:	2001      	movs	r0, #1
d03e6f02:	e7a5      	b.n	d03e6e50 <_svfiprintf_r+0xd4>
d03e6f04:	2300      	movs	r3, #0
d03e6f06:	3401      	adds	r4, #1
d03e6f08:	9305      	str	r3, [sp, #20]
d03e6f0a:	4619      	mov	r1, r3
d03e6f0c:	f04f 0c0a 	mov.w	ip, #10
d03e6f10:	4620      	mov	r0, r4
d03e6f12:	f810 2b01 	ldrb.w	r2, [r0], #1
d03e6f16:	3a30      	subs	r2, #48	; 0x30
d03e6f18:	2a09      	cmp	r2, #9
d03e6f1a:	d903      	bls.n	d03e6f24 <_svfiprintf_r+0x1a8>
d03e6f1c:	2b00      	cmp	r3, #0
d03e6f1e:	d0c5      	beq.n	d03e6eac <_svfiprintf_r+0x130>
d03e6f20:	9105      	str	r1, [sp, #20]
d03e6f22:	e7c3      	b.n	d03e6eac <_svfiprintf_r+0x130>
d03e6f24:	fb0c 2101 	mla	r1, ip, r1, r2
d03e6f28:	4604      	mov	r4, r0
d03e6f2a:	2301      	movs	r3, #1
d03e6f2c:	e7f0      	b.n	d03e6f10 <_svfiprintf_r+0x194>
d03e6f2e:	ab03      	add	r3, sp, #12
d03e6f30:	9300      	str	r3, [sp, #0]
d03e6f32:	462a      	mov	r2, r5
d03e6f34:	4b0f      	ldr	r3, [pc, #60]	; (d03e6f74 <_svfiprintf_r+0x1f8>)
d03e6f36:	a904      	add	r1, sp, #16
d03e6f38:	4638      	mov	r0, r7
d03e6f3a:	f3af 8000 	nop.w
d03e6f3e:	1c42      	adds	r2, r0, #1
d03e6f40:	4606      	mov	r6, r0
d03e6f42:	d1d6      	bne.n	d03e6ef2 <_svfiprintf_r+0x176>
d03e6f44:	89ab      	ldrh	r3, [r5, #12]
d03e6f46:	065b      	lsls	r3, r3, #25
d03e6f48:	f53f af2c 	bmi.w	d03e6da4 <_svfiprintf_r+0x28>
d03e6f4c:	9809      	ldr	r0, [sp, #36]	; 0x24
d03e6f4e:	b01d      	add	sp, #116	; 0x74
d03e6f50:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e6f54:	ab03      	add	r3, sp, #12
d03e6f56:	9300      	str	r3, [sp, #0]
d03e6f58:	462a      	mov	r2, r5
d03e6f5a:	4b06      	ldr	r3, [pc, #24]	; (d03e6f74 <_svfiprintf_r+0x1f8>)
d03e6f5c:	a904      	add	r1, sp, #16
d03e6f5e:	4638      	mov	r0, r7
d03e6f60:	f000 f87a 	bl	d03e7058 <_printf_i>
d03e6f64:	e7eb      	b.n	d03e6f3e <_svfiprintf_r+0x1c2>
d03e6f66:	bf00      	nop
d03e6f68:	d03e863c 	.word	0xd03e863c
d03e6f6c:	d03e8646 	.word	0xd03e8646
d03e6f70:	00000000 	.word	0x00000000
d03e6f74:	d03e6cc5 	.word	0xd03e6cc5
d03e6f78:	d03e8642 	.word	0xd03e8642

d03e6f7c <_printf_common>:
d03e6f7c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03e6f80:	4616      	mov	r6, r2
d03e6f82:	4699      	mov	r9, r3
d03e6f84:	688a      	ldr	r2, [r1, #8]
d03e6f86:	690b      	ldr	r3, [r1, #16]
d03e6f88:	f8dd 8020 	ldr.w	r8, [sp, #32]
d03e6f8c:	4293      	cmp	r3, r2
d03e6f8e:	bfb8      	it	lt
d03e6f90:	4613      	movlt	r3, r2
d03e6f92:	6033      	str	r3, [r6, #0]
d03e6f94:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d03e6f98:	4607      	mov	r7, r0
d03e6f9a:	460c      	mov	r4, r1
d03e6f9c:	b10a      	cbz	r2, d03e6fa2 <_printf_common+0x26>
d03e6f9e:	3301      	adds	r3, #1
d03e6fa0:	6033      	str	r3, [r6, #0]
d03e6fa2:	6823      	ldr	r3, [r4, #0]
d03e6fa4:	0699      	lsls	r1, r3, #26
d03e6fa6:	bf42      	ittt	mi
d03e6fa8:	6833      	ldrmi	r3, [r6, #0]
d03e6faa:	3302      	addmi	r3, #2
d03e6fac:	6033      	strmi	r3, [r6, #0]
d03e6fae:	6825      	ldr	r5, [r4, #0]
d03e6fb0:	f015 0506 	ands.w	r5, r5, #6
d03e6fb4:	d106      	bne.n	d03e6fc4 <_printf_common+0x48>
d03e6fb6:	f104 0a19 	add.w	sl, r4, #25
d03e6fba:	68e3      	ldr	r3, [r4, #12]
d03e6fbc:	6832      	ldr	r2, [r6, #0]
d03e6fbe:	1a9b      	subs	r3, r3, r2
d03e6fc0:	42ab      	cmp	r3, r5
d03e6fc2:	dc26      	bgt.n	d03e7012 <_printf_common+0x96>
d03e6fc4:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d03e6fc8:	1e13      	subs	r3, r2, #0
d03e6fca:	6822      	ldr	r2, [r4, #0]
d03e6fcc:	bf18      	it	ne
d03e6fce:	2301      	movne	r3, #1
d03e6fd0:	0692      	lsls	r2, r2, #26
d03e6fd2:	d42b      	bmi.n	d03e702c <_printf_common+0xb0>
d03e6fd4:	f104 0243 	add.w	r2, r4, #67	; 0x43
d03e6fd8:	4649      	mov	r1, r9
d03e6fda:	4638      	mov	r0, r7
d03e6fdc:	47c0      	blx	r8
d03e6fde:	3001      	adds	r0, #1
d03e6fe0:	d01e      	beq.n	d03e7020 <_printf_common+0xa4>
d03e6fe2:	6823      	ldr	r3, [r4, #0]
d03e6fe4:	68e5      	ldr	r5, [r4, #12]
d03e6fe6:	6832      	ldr	r2, [r6, #0]
d03e6fe8:	f003 0306 	and.w	r3, r3, #6
d03e6fec:	2b04      	cmp	r3, #4
d03e6fee:	bf08      	it	eq
d03e6ff0:	1aad      	subeq	r5, r5, r2
d03e6ff2:	68a3      	ldr	r3, [r4, #8]
d03e6ff4:	6922      	ldr	r2, [r4, #16]
d03e6ff6:	bf0c      	ite	eq
d03e6ff8:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d03e6ffc:	2500      	movne	r5, #0
d03e6ffe:	4293      	cmp	r3, r2
d03e7000:	bfc4      	itt	gt
d03e7002:	1a9b      	subgt	r3, r3, r2
d03e7004:	18ed      	addgt	r5, r5, r3
d03e7006:	2600      	movs	r6, #0
d03e7008:	341a      	adds	r4, #26
d03e700a:	42b5      	cmp	r5, r6
d03e700c:	d11a      	bne.n	d03e7044 <_printf_common+0xc8>
d03e700e:	2000      	movs	r0, #0
d03e7010:	e008      	b.n	d03e7024 <_printf_common+0xa8>
d03e7012:	2301      	movs	r3, #1
d03e7014:	4652      	mov	r2, sl
d03e7016:	4649      	mov	r1, r9
d03e7018:	4638      	mov	r0, r7
d03e701a:	47c0      	blx	r8
d03e701c:	3001      	adds	r0, #1
d03e701e:	d103      	bne.n	d03e7028 <_printf_common+0xac>
d03e7020:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e7024:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03e7028:	3501      	adds	r5, #1
d03e702a:	e7c6      	b.n	d03e6fba <_printf_common+0x3e>
d03e702c:	18e1      	adds	r1, r4, r3
d03e702e:	1c5a      	adds	r2, r3, #1
d03e7030:	2030      	movs	r0, #48	; 0x30
d03e7032:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d03e7036:	4422      	add	r2, r4
d03e7038:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d03e703c:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d03e7040:	3302      	adds	r3, #2
d03e7042:	e7c7      	b.n	d03e6fd4 <_printf_common+0x58>
d03e7044:	2301      	movs	r3, #1
d03e7046:	4622      	mov	r2, r4
d03e7048:	4649      	mov	r1, r9
d03e704a:	4638      	mov	r0, r7
d03e704c:	47c0      	blx	r8
d03e704e:	3001      	adds	r0, #1
d03e7050:	d0e6      	beq.n	d03e7020 <_printf_common+0xa4>
d03e7052:	3601      	adds	r6, #1
d03e7054:	e7d9      	b.n	d03e700a <_printf_common+0x8e>
	...

d03e7058 <_printf_i>:
d03e7058:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d03e705c:	460c      	mov	r4, r1
d03e705e:	4691      	mov	r9, r2
d03e7060:	7e27      	ldrb	r7, [r4, #24]
d03e7062:	990c      	ldr	r1, [sp, #48]	; 0x30
d03e7064:	2f78      	cmp	r7, #120	; 0x78
d03e7066:	4680      	mov	r8, r0
d03e7068:	469a      	mov	sl, r3
d03e706a:	f104 0243 	add.w	r2, r4, #67	; 0x43
d03e706e:	d807      	bhi.n	d03e7080 <_printf_i+0x28>
d03e7070:	2f62      	cmp	r7, #98	; 0x62
d03e7072:	d80a      	bhi.n	d03e708a <_printf_i+0x32>
d03e7074:	2f00      	cmp	r7, #0
d03e7076:	f000 80d8 	beq.w	d03e722a <_printf_i+0x1d2>
d03e707a:	2f58      	cmp	r7, #88	; 0x58
d03e707c:	f000 80a3 	beq.w	d03e71c6 <_printf_i+0x16e>
d03e7080:	f104 0642 	add.w	r6, r4, #66	; 0x42
d03e7084:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d03e7088:	e03a      	b.n	d03e7100 <_printf_i+0xa8>
d03e708a:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d03e708e:	2b15      	cmp	r3, #21
d03e7090:	d8f6      	bhi.n	d03e7080 <_printf_i+0x28>
d03e7092:	a001      	add	r0, pc, #4	; (adr r0, d03e7098 <_printf_i+0x40>)
d03e7094:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d03e7098:	d03e70f1 	.word	0xd03e70f1
d03e709c:	d03e7105 	.word	0xd03e7105
d03e70a0:	d03e7081 	.word	0xd03e7081
d03e70a4:	d03e7081 	.word	0xd03e7081
d03e70a8:	d03e7081 	.word	0xd03e7081
d03e70ac:	d03e7081 	.word	0xd03e7081
d03e70b0:	d03e7105 	.word	0xd03e7105
d03e70b4:	d03e7081 	.word	0xd03e7081
d03e70b8:	d03e7081 	.word	0xd03e7081
d03e70bc:	d03e7081 	.word	0xd03e7081
d03e70c0:	d03e7081 	.word	0xd03e7081
d03e70c4:	d03e7211 	.word	0xd03e7211
d03e70c8:	d03e7135 	.word	0xd03e7135
d03e70cc:	d03e71f3 	.word	0xd03e71f3
d03e70d0:	d03e7081 	.word	0xd03e7081
d03e70d4:	d03e7081 	.word	0xd03e7081
d03e70d8:	d03e7233 	.word	0xd03e7233
d03e70dc:	d03e7081 	.word	0xd03e7081
d03e70e0:	d03e7135 	.word	0xd03e7135
d03e70e4:	d03e7081 	.word	0xd03e7081
d03e70e8:	d03e7081 	.word	0xd03e7081
d03e70ec:	d03e71fb 	.word	0xd03e71fb
d03e70f0:	680b      	ldr	r3, [r1, #0]
d03e70f2:	1d1a      	adds	r2, r3, #4
d03e70f4:	681b      	ldr	r3, [r3, #0]
d03e70f6:	600a      	str	r2, [r1, #0]
d03e70f8:	f104 0642 	add.w	r6, r4, #66	; 0x42
d03e70fc:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d03e7100:	2301      	movs	r3, #1
d03e7102:	e0a3      	b.n	d03e724c <_printf_i+0x1f4>
d03e7104:	6825      	ldr	r5, [r4, #0]
d03e7106:	6808      	ldr	r0, [r1, #0]
d03e7108:	062e      	lsls	r6, r5, #24
d03e710a:	f100 0304 	add.w	r3, r0, #4
d03e710e:	d50a      	bpl.n	d03e7126 <_printf_i+0xce>
d03e7110:	6805      	ldr	r5, [r0, #0]
d03e7112:	600b      	str	r3, [r1, #0]
d03e7114:	2d00      	cmp	r5, #0
d03e7116:	da03      	bge.n	d03e7120 <_printf_i+0xc8>
d03e7118:	232d      	movs	r3, #45	; 0x2d
d03e711a:	426d      	negs	r5, r5
d03e711c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d03e7120:	485e      	ldr	r0, [pc, #376]	; (d03e729c <_printf_i+0x244>)
d03e7122:	230a      	movs	r3, #10
d03e7124:	e019      	b.n	d03e715a <_printf_i+0x102>
d03e7126:	f015 0f40 	tst.w	r5, #64	; 0x40
d03e712a:	6805      	ldr	r5, [r0, #0]
d03e712c:	600b      	str	r3, [r1, #0]
d03e712e:	bf18      	it	ne
d03e7130:	b22d      	sxthne	r5, r5
d03e7132:	e7ef      	b.n	d03e7114 <_printf_i+0xbc>
d03e7134:	680b      	ldr	r3, [r1, #0]
d03e7136:	6825      	ldr	r5, [r4, #0]
d03e7138:	1d18      	adds	r0, r3, #4
d03e713a:	6008      	str	r0, [r1, #0]
d03e713c:	0628      	lsls	r0, r5, #24
d03e713e:	d501      	bpl.n	d03e7144 <_printf_i+0xec>
d03e7140:	681d      	ldr	r5, [r3, #0]
d03e7142:	e002      	b.n	d03e714a <_printf_i+0xf2>
d03e7144:	0669      	lsls	r1, r5, #25
d03e7146:	d5fb      	bpl.n	d03e7140 <_printf_i+0xe8>
d03e7148:	881d      	ldrh	r5, [r3, #0]
d03e714a:	4854      	ldr	r0, [pc, #336]	; (d03e729c <_printf_i+0x244>)
d03e714c:	2f6f      	cmp	r7, #111	; 0x6f
d03e714e:	bf0c      	ite	eq
d03e7150:	2308      	moveq	r3, #8
d03e7152:	230a      	movne	r3, #10
d03e7154:	2100      	movs	r1, #0
d03e7156:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d03e715a:	6866      	ldr	r6, [r4, #4]
d03e715c:	60a6      	str	r6, [r4, #8]
d03e715e:	2e00      	cmp	r6, #0
d03e7160:	bfa2      	ittt	ge
d03e7162:	6821      	ldrge	r1, [r4, #0]
d03e7164:	f021 0104 	bicge.w	r1, r1, #4
d03e7168:	6021      	strge	r1, [r4, #0]
d03e716a:	b90d      	cbnz	r5, d03e7170 <_printf_i+0x118>
d03e716c:	2e00      	cmp	r6, #0
d03e716e:	d04d      	beq.n	d03e720c <_printf_i+0x1b4>
d03e7170:	4616      	mov	r6, r2
d03e7172:	fbb5 f1f3 	udiv	r1, r5, r3
d03e7176:	fb03 5711 	mls	r7, r3, r1, r5
d03e717a:	5dc7      	ldrb	r7, [r0, r7]
d03e717c:	f806 7d01 	strb.w	r7, [r6, #-1]!
d03e7180:	462f      	mov	r7, r5
d03e7182:	42bb      	cmp	r3, r7
d03e7184:	460d      	mov	r5, r1
d03e7186:	d9f4      	bls.n	d03e7172 <_printf_i+0x11a>
d03e7188:	2b08      	cmp	r3, #8
d03e718a:	d10b      	bne.n	d03e71a4 <_printf_i+0x14c>
d03e718c:	6823      	ldr	r3, [r4, #0]
d03e718e:	07df      	lsls	r7, r3, #31
d03e7190:	d508      	bpl.n	d03e71a4 <_printf_i+0x14c>
d03e7192:	6923      	ldr	r3, [r4, #16]
d03e7194:	6861      	ldr	r1, [r4, #4]
d03e7196:	4299      	cmp	r1, r3
d03e7198:	bfde      	ittt	le
d03e719a:	2330      	movle	r3, #48	; 0x30
d03e719c:	f806 3c01 	strble.w	r3, [r6, #-1]
d03e71a0:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d03e71a4:	1b92      	subs	r2, r2, r6
d03e71a6:	6122      	str	r2, [r4, #16]
d03e71a8:	f8cd a000 	str.w	sl, [sp]
d03e71ac:	464b      	mov	r3, r9
d03e71ae:	aa03      	add	r2, sp, #12
d03e71b0:	4621      	mov	r1, r4
d03e71b2:	4640      	mov	r0, r8
d03e71b4:	f7ff fee2 	bl	d03e6f7c <_printf_common>
d03e71b8:	3001      	adds	r0, #1
d03e71ba:	d14c      	bne.n	d03e7256 <_printf_i+0x1fe>
d03e71bc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e71c0:	b004      	add	sp, #16
d03e71c2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03e71c6:	4835      	ldr	r0, [pc, #212]	; (d03e729c <_printf_i+0x244>)
d03e71c8:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d03e71cc:	6823      	ldr	r3, [r4, #0]
d03e71ce:	680e      	ldr	r6, [r1, #0]
d03e71d0:	061f      	lsls	r7, r3, #24
d03e71d2:	f856 5b04 	ldr.w	r5, [r6], #4
d03e71d6:	600e      	str	r6, [r1, #0]
d03e71d8:	d514      	bpl.n	d03e7204 <_printf_i+0x1ac>
d03e71da:	07d9      	lsls	r1, r3, #31
d03e71dc:	bf44      	itt	mi
d03e71de:	f043 0320 	orrmi.w	r3, r3, #32
d03e71e2:	6023      	strmi	r3, [r4, #0]
d03e71e4:	b91d      	cbnz	r5, d03e71ee <_printf_i+0x196>
d03e71e6:	6823      	ldr	r3, [r4, #0]
d03e71e8:	f023 0320 	bic.w	r3, r3, #32
d03e71ec:	6023      	str	r3, [r4, #0]
d03e71ee:	2310      	movs	r3, #16
d03e71f0:	e7b0      	b.n	d03e7154 <_printf_i+0xfc>
d03e71f2:	6823      	ldr	r3, [r4, #0]
d03e71f4:	f043 0320 	orr.w	r3, r3, #32
d03e71f8:	6023      	str	r3, [r4, #0]
d03e71fa:	2378      	movs	r3, #120	; 0x78
d03e71fc:	4828      	ldr	r0, [pc, #160]	; (d03e72a0 <_printf_i+0x248>)
d03e71fe:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d03e7202:	e7e3      	b.n	d03e71cc <_printf_i+0x174>
d03e7204:	065e      	lsls	r6, r3, #25
d03e7206:	bf48      	it	mi
d03e7208:	b2ad      	uxthmi	r5, r5
d03e720a:	e7e6      	b.n	d03e71da <_printf_i+0x182>
d03e720c:	4616      	mov	r6, r2
d03e720e:	e7bb      	b.n	d03e7188 <_printf_i+0x130>
d03e7210:	680b      	ldr	r3, [r1, #0]
d03e7212:	6826      	ldr	r6, [r4, #0]
d03e7214:	6960      	ldr	r0, [r4, #20]
d03e7216:	1d1d      	adds	r5, r3, #4
d03e7218:	600d      	str	r5, [r1, #0]
d03e721a:	0635      	lsls	r5, r6, #24
d03e721c:	681b      	ldr	r3, [r3, #0]
d03e721e:	d501      	bpl.n	d03e7224 <_printf_i+0x1cc>
d03e7220:	6018      	str	r0, [r3, #0]
d03e7222:	e002      	b.n	d03e722a <_printf_i+0x1d2>
d03e7224:	0671      	lsls	r1, r6, #25
d03e7226:	d5fb      	bpl.n	d03e7220 <_printf_i+0x1c8>
d03e7228:	8018      	strh	r0, [r3, #0]
d03e722a:	2300      	movs	r3, #0
d03e722c:	6123      	str	r3, [r4, #16]
d03e722e:	4616      	mov	r6, r2
d03e7230:	e7ba      	b.n	d03e71a8 <_printf_i+0x150>
d03e7232:	680b      	ldr	r3, [r1, #0]
d03e7234:	1d1a      	adds	r2, r3, #4
d03e7236:	600a      	str	r2, [r1, #0]
d03e7238:	681e      	ldr	r6, [r3, #0]
d03e723a:	6862      	ldr	r2, [r4, #4]
d03e723c:	2100      	movs	r1, #0
d03e723e:	4630      	mov	r0, r6
d03e7240:	f000 f8ae 	bl	d03e73a0 <memchr>
d03e7244:	b108      	cbz	r0, d03e724a <_printf_i+0x1f2>
d03e7246:	1b80      	subs	r0, r0, r6
d03e7248:	6060      	str	r0, [r4, #4]
d03e724a:	6863      	ldr	r3, [r4, #4]
d03e724c:	6123      	str	r3, [r4, #16]
d03e724e:	2300      	movs	r3, #0
d03e7250:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d03e7254:	e7a8      	b.n	d03e71a8 <_printf_i+0x150>
d03e7256:	6923      	ldr	r3, [r4, #16]
d03e7258:	4632      	mov	r2, r6
d03e725a:	4649      	mov	r1, r9
d03e725c:	4640      	mov	r0, r8
d03e725e:	47d0      	blx	sl
d03e7260:	3001      	adds	r0, #1
d03e7262:	d0ab      	beq.n	d03e71bc <_printf_i+0x164>
d03e7264:	6823      	ldr	r3, [r4, #0]
d03e7266:	079b      	lsls	r3, r3, #30
d03e7268:	d413      	bmi.n	d03e7292 <_printf_i+0x23a>
d03e726a:	68e0      	ldr	r0, [r4, #12]
d03e726c:	9b03      	ldr	r3, [sp, #12]
d03e726e:	4298      	cmp	r0, r3
d03e7270:	bfb8      	it	lt
d03e7272:	4618      	movlt	r0, r3
d03e7274:	e7a4      	b.n	d03e71c0 <_printf_i+0x168>
d03e7276:	2301      	movs	r3, #1
d03e7278:	4632      	mov	r2, r6
d03e727a:	4649      	mov	r1, r9
d03e727c:	4640      	mov	r0, r8
d03e727e:	47d0      	blx	sl
d03e7280:	3001      	adds	r0, #1
d03e7282:	d09b      	beq.n	d03e71bc <_printf_i+0x164>
d03e7284:	3501      	adds	r5, #1
d03e7286:	68e3      	ldr	r3, [r4, #12]
d03e7288:	9903      	ldr	r1, [sp, #12]
d03e728a:	1a5b      	subs	r3, r3, r1
d03e728c:	42ab      	cmp	r3, r5
d03e728e:	dcf2      	bgt.n	d03e7276 <_printf_i+0x21e>
d03e7290:	e7eb      	b.n	d03e726a <_printf_i+0x212>
d03e7292:	2500      	movs	r5, #0
d03e7294:	f104 0619 	add.w	r6, r4, #25
d03e7298:	e7f5      	b.n	d03e7286 <_printf_i+0x22e>
d03e729a:	bf00      	nop
d03e729c:	d03e864d 	.word	0xd03e864d
d03e72a0:	d03e865e 	.word	0xd03e865e

d03e72a4 <__sread>:
d03e72a4:	b510      	push	{r4, lr}
d03e72a6:	460c      	mov	r4, r1
d03e72a8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e72ac:	f000 f916 	bl	d03e74dc <_read_r>
d03e72b0:	2800      	cmp	r0, #0
d03e72b2:	bfab      	itete	ge
d03e72b4:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d03e72b6:	89a3      	ldrhlt	r3, [r4, #12]
d03e72b8:	181b      	addge	r3, r3, r0
d03e72ba:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d03e72be:	bfac      	ite	ge
d03e72c0:	6563      	strge	r3, [r4, #84]	; 0x54
d03e72c2:	81a3      	strhlt	r3, [r4, #12]
d03e72c4:	bd10      	pop	{r4, pc}

d03e72c6 <__swrite>:
d03e72c6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e72ca:	461f      	mov	r7, r3
d03e72cc:	898b      	ldrh	r3, [r1, #12]
d03e72ce:	05db      	lsls	r3, r3, #23
d03e72d0:	4605      	mov	r5, r0
d03e72d2:	460c      	mov	r4, r1
d03e72d4:	4616      	mov	r6, r2
d03e72d6:	d505      	bpl.n	d03e72e4 <__swrite+0x1e>
d03e72d8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e72dc:	2302      	movs	r3, #2
d03e72de:	2200      	movs	r2, #0
d03e72e0:	f000 f846 	bl	d03e7370 <_lseek_r>
d03e72e4:	89a3      	ldrh	r3, [r4, #12]
d03e72e6:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d03e72ea:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d03e72ee:	81a3      	strh	r3, [r4, #12]
d03e72f0:	4632      	mov	r2, r6
d03e72f2:	463b      	mov	r3, r7
d03e72f4:	4628      	mov	r0, r5
d03e72f6:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d03e72fa:	f7f8 beab 	b.w	d03e0054 <_write_r>

d03e72fe <__sseek>:
d03e72fe:	b510      	push	{r4, lr}
d03e7300:	460c      	mov	r4, r1
d03e7302:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e7306:	f000 f833 	bl	d03e7370 <_lseek_r>
d03e730a:	1c43      	adds	r3, r0, #1
d03e730c:	89a3      	ldrh	r3, [r4, #12]
d03e730e:	bf15      	itete	ne
d03e7310:	6560      	strne	r0, [r4, #84]	; 0x54
d03e7312:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d03e7316:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d03e731a:	81a3      	strheq	r3, [r4, #12]
d03e731c:	bf18      	it	ne
d03e731e:	81a3      	strhne	r3, [r4, #12]
d03e7320:	bd10      	pop	{r4, pc}

d03e7322 <__sclose>:
d03e7322:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e7326:	f000 b801 	b.w	d03e732c <_close_r>
	...

d03e732c <_close_r>:
d03e732c:	b538      	push	{r3, r4, r5, lr}
d03e732e:	4d06      	ldr	r5, [pc, #24]	; (d03e7348 <_close_r+0x1c>)
d03e7330:	2300      	movs	r3, #0
d03e7332:	4604      	mov	r4, r0
d03e7334:	4608      	mov	r0, r1
d03e7336:	602b      	str	r3, [r5, #0]
d03e7338:	f7f8 fec6 	bl	d03e00c8 <_close>
d03e733c:	1c43      	adds	r3, r0, #1
d03e733e:	d102      	bne.n	d03e7346 <_close_r+0x1a>
d03e7340:	682b      	ldr	r3, [r5, #0]
d03e7342:	b103      	cbz	r3, d03e7346 <_close_r+0x1a>
d03e7344:	6023      	str	r3, [r4, #0]
d03e7346:	bd38      	pop	{r3, r4, r5, pc}
d03e7348:	d03e91cc 	.word	0xd03e91cc

d03e734c <_fstat_r>:
d03e734c:	b538      	push	{r3, r4, r5, lr}
d03e734e:	4d07      	ldr	r5, [pc, #28]	; (d03e736c <_fstat_r+0x20>)
d03e7350:	2300      	movs	r3, #0
d03e7352:	4604      	mov	r4, r0
d03e7354:	4608      	mov	r0, r1
d03e7356:	4611      	mov	r1, r2
d03e7358:	602b      	str	r3, [r5, #0]
d03e735a:	f7f8 feb9 	bl	d03e00d0 <_fstat>
d03e735e:	1c43      	adds	r3, r0, #1
d03e7360:	d102      	bne.n	d03e7368 <_fstat_r+0x1c>
d03e7362:	682b      	ldr	r3, [r5, #0]
d03e7364:	b103      	cbz	r3, d03e7368 <_fstat_r+0x1c>
d03e7366:	6023      	str	r3, [r4, #0]
d03e7368:	bd38      	pop	{r3, r4, r5, pc}
d03e736a:	bf00      	nop
d03e736c:	d03e91cc 	.word	0xd03e91cc

d03e7370 <_lseek_r>:
d03e7370:	b538      	push	{r3, r4, r5, lr}
d03e7372:	4d07      	ldr	r5, [pc, #28]	; (d03e7390 <_lseek_r+0x20>)
d03e7374:	4604      	mov	r4, r0
d03e7376:	4608      	mov	r0, r1
d03e7378:	4611      	mov	r1, r2
d03e737a:	2200      	movs	r2, #0
d03e737c:	602a      	str	r2, [r5, #0]
d03e737e:	461a      	mov	r2, r3
d03e7380:	f7f8 feac 	bl	d03e00dc <_lseek>
d03e7384:	1c43      	adds	r3, r0, #1
d03e7386:	d102      	bne.n	d03e738e <_lseek_r+0x1e>
d03e7388:	682b      	ldr	r3, [r5, #0]
d03e738a:	b103      	cbz	r3, d03e738e <_lseek_r+0x1e>
d03e738c:	6023      	str	r3, [r4, #0]
d03e738e:	bd38      	pop	{r3, r4, r5, pc}
d03e7390:	d03e91cc 	.word	0xd03e91cc
	...

d03e73a0 <memchr>:
d03e73a0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d03e73a4:	2a10      	cmp	r2, #16
d03e73a6:	db2b      	blt.n	d03e7400 <memchr+0x60>
d03e73a8:	f010 0f07 	tst.w	r0, #7
d03e73ac:	d008      	beq.n	d03e73c0 <memchr+0x20>
d03e73ae:	f810 3b01 	ldrb.w	r3, [r0], #1
d03e73b2:	3a01      	subs	r2, #1
d03e73b4:	428b      	cmp	r3, r1
d03e73b6:	d02d      	beq.n	d03e7414 <memchr+0x74>
d03e73b8:	f010 0f07 	tst.w	r0, #7
d03e73bc:	b342      	cbz	r2, d03e7410 <memchr+0x70>
d03e73be:	d1f6      	bne.n	d03e73ae <memchr+0xe>
d03e73c0:	b4f0      	push	{r4, r5, r6, r7}
d03e73c2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d03e73c6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d03e73ca:	f022 0407 	bic.w	r4, r2, #7
d03e73ce:	f07f 0700 	mvns.w	r7, #0
d03e73d2:	2300      	movs	r3, #0
d03e73d4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d03e73d8:	3c08      	subs	r4, #8
d03e73da:	ea85 0501 	eor.w	r5, r5, r1
d03e73de:	ea86 0601 	eor.w	r6, r6, r1
d03e73e2:	fa85 f547 	uadd8	r5, r5, r7
d03e73e6:	faa3 f587 	sel	r5, r3, r7
d03e73ea:	fa86 f647 	uadd8	r6, r6, r7
d03e73ee:	faa5 f687 	sel	r6, r5, r7
d03e73f2:	b98e      	cbnz	r6, d03e7418 <memchr+0x78>
d03e73f4:	d1ee      	bne.n	d03e73d4 <memchr+0x34>
d03e73f6:	bcf0      	pop	{r4, r5, r6, r7}
d03e73f8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d03e73fc:	f002 0207 	and.w	r2, r2, #7
d03e7400:	b132      	cbz	r2, d03e7410 <memchr+0x70>
d03e7402:	f810 3b01 	ldrb.w	r3, [r0], #1
d03e7406:	3a01      	subs	r2, #1
d03e7408:	ea83 0301 	eor.w	r3, r3, r1
d03e740c:	b113      	cbz	r3, d03e7414 <memchr+0x74>
d03e740e:	d1f8      	bne.n	d03e7402 <memchr+0x62>
d03e7410:	2000      	movs	r0, #0
d03e7412:	4770      	bx	lr
d03e7414:	3801      	subs	r0, #1
d03e7416:	4770      	bx	lr
d03e7418:	2d00      	cmp	r5, #0
d03e741a:	bf06      	itte	eq
d03e741c:	4635      	moveq	r5, r6
d03e741e:	3803      	subeq	r0, #3
d03e7420:	3807      	subne	r0, #7
d03e7422:	f015 0f01 	tst.w	r5, #1
d03e7426:	d107      	bne.n	d03e7438 <memchr+0x98>
d03e7428:	3001      	adds	r0, #1
d03e742a:	f415 7f80 	tst.w	r5, #256	; 0x100
d03e742e:	bf02      	ittt	eq
d03e7430:	3001      	addeq	r0, #1
d03e7432:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d03e7436:	3001      	addeq	r0, #1
d03e7438:	bcf0      	pop	{r4, r5, r6, r7}
d03e743a:	3801      	subs	r0, #1
d03e743c:	4770      	bx	lr
d03e743e:	bf00      	nop

d03e7440 <memcpy>:
d03e7440:	440a      	add	r2, r1
d03e7442:	4291      	cmp	r1, r2
d03e7444:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d03e7448:	d100      	bne.n	d03e744c <memcpy+0xc>
d03e744a:	4770      	bx	lr
d03e744c:	b510      	push	{r4, lr}
d03e744e:	f811 4b01 	ldrb.w	r4, [r1], #1
d03e7452:	f803 4f01 	strb.w	r4, [r3, #1]!
d03e7456:	4291      	cmp	r1, r2
d03e7458:	d1f9      	bne.n	d03e744e <memcpy+0xe>
d03e745a:	bd10      	pop	{r4, pc}

d03e745c <memmove>:
d03e745c:	4288      	cmp	r0, r1
d03e745e:	b510      	push	{r4, lr}
d03e7460:	eb01 0402 	add.w	r4, r1, r2
d03e7464:	d902      	bls.n	d03e746c <memmove+0x10>
d03e7466:	4284      	cmp	r4, r0
d03e7468:	4623      	mov	r3, r4
d03e746a:	d807      	bhi.n	d03e747c <memmove+0x20>
d03e746c:	1e43      	subs	r3, r0, #1
d03e746e:	42a1      	cmp	r1, r4
d03e7470:	d008      	beq.n	d03e7484 <memmove+0x28>
d03e7472:	f811 2b01 	ldrb.w	r2, [r1], #1
d03e7476:	f803 2f01 	strb.w	r2, [r3, #1]!
d03e747a:	e7f8      	b.n	d03e746e <memmove+0x12>
d03e747c:	4402      	add	r2, r0
d03e747e:	4601      	mov	r1, r0
d03e7480:	428a      	cmp	r2, r1
d03e7482:	d100      	bne.n	d03e7486 <memmove+0x2a>
d03e7484:	bd10      	pop	{r4, pc}
d03e7486:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d03e748a:	f802 4d01 	strb.w	r4, [r2, #-1]!
d03e748e:	e7f7      	b.n	d03e7480 <memmove+0x24>

d03e7490 <_realloc_r>:
d03e7490:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e7492:	4607      	mov	r7, r0
d03e7494:	4614      	mov	r4, r2
d03e7496:	460e      	mov	r6, r1
d03e7498:	b921      	cbnz	r1, d03e74a4 <_realloc_r+0x14>
d03e749a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d03e749e:	4611      	mov	r1, r2
d03e74a0:	f7ff b8c2 	b.w	d03e6628 <_malloc_r>
d03e74a4:	b922      	cbnz	r2, d03e74b0 <_realloc_r+0x20>
d03e74a6:	f7ff f86f 	bl	d03e6588 <_free_r>
d03e74aa:	4625      	mov	r5, r4
d03e74ac:	4628      	mov	r0, r5
d03e74ae:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e74b0:	f000 f826 	bl	d03e7500 <_malloc_usable_size_r>
d03e74b4:	42a0      	cmp	r0, r4
d03e74b6:	d20f      	bcs.n	d03e74d8 <_realloc_r+0x48>
d03e74b8:	4621      	mov	r1, r4
d03e74ba:	4638      	mov	r0, r7
d03e74bc:	f7ff f8b4 	bl	d03e6628 <_malloc_r>
d03e74c0:	4605      	mov	r5, r0
d03e74c2:	2800      	cmp	r0, #0
d03e74c4:	d0f2      	beq.n	d03e74ac <_realloc_r+0x1c>
d03e74c6:	4631      	mov	r1, r6
d03e74c8:	4622      	mov	r2, r4
d03e74ca:	f7ff ffb9 	bl	d03e7440 <memcpy>
d03e74ce:	4631      	mov	r1, r6
d03e74d0:	4638      	mov	r0, r7
d03e74d2:	f7ff f859 	bl	d03e6588 <_free_r>
d03e74d6:	e7e9      	b.n	d03e74ac <_realloc_r+0x1c>
d03e74d8:	4635      	mov	r5, r6
d03e74da:	e7e7      	b.n	d03e74ac <_realloc_r+0x1c>

d03e74dc <_read_r>:
d03e74dc:	b538      	push	{r3, r4, r5, lr}
d03e74de:	4d07      	ldr	r5, [pc, #28]	; (d03e74fc <_read_r+0x20>)
d03e74e0:	4604      	mov	r4, r0
d03e74e2:	4608      	mov	r0, r1
d03e74e4:	4611      	mov	r1, r2
d03e74e6:	2200      	movs	r2, #0
d03e74e8:	602a      	str	r2, [r5, #0]
d03e74ea:	461a      	mov	r2, r3
d03e74ec:	f7f8 fde2 	bl	d03e00b4 <_read>
d03e74f0:	1c43      	adds	r3, r0, #1
d03e74f2:	d102      	bne.n	d03e74fa <_read_r+0x1e>
d03e74f4:	682b      	ldr	r3, [r5, #0]
d03e74f6:	b103      	cbz	r3, d03e74fa <_read_r+0x1e>
d03e74f8:	6023      	str	r3, [r4, #0]
d03e74fa:	bd38      	pop	{r3, r4, r5, pc}
d03e74fc:	d03e91cc 	.word	0xd03e91cc

d03e7500 <_malloc_usable_size_r>:
d03e7500:	f851 3c04 	ldr.w	r3, [r1, #-4]
d03e7504:	1f18      	subs	r0, r3, #4
d03e7506:	2b00      	cmp	r3, #0
d03e7508:	bfbc      	itt	lt
d03e750a:	580b      	ldrlt	r3, [r1, r0]
d03e750c:	18c0      	addlt	r0, r0, r3
d03e750e:	4770      	bx	lr

d03e7510 <CSWTCH.7>:
d03e7510:	7564 d03e 7564 d03e 7550 d03e 7598 d03e     du>.du>.Pu>..u>.
d03e7520:	7550 d03e 7598 d03e 75c8 d03e 7550 d03e     Pu>..u>..u>.Pu>.
d03e7530:	75c8 d03e 7550 d03e 75c8 d03e 7584 d03e     .u>.Pu>..u>..u>.
d03e7540:	75c8 d03e 75c8 d03e 7550 d03e 75c8 d03e     .u>..u>.Pu>..u>.

d03e7550 <drv_closed_hat_patch>:
d03e7550:	0003 0041 4f0a 0700 0002 0081 0001 0001     ..A..O..........
d03e7560:	0000 0000                                   ....

d03e7564 <drv_kick_patch>:
d03e7564:	0003 00b2 0005 0024 0002 0011 000d f9c0     ......$.........
d03e7574:	0001 0003 000d 0000 0002 0010 0000 0000     ................

d03e7584 <drv_open_hat_patch>:
d03e7584:	0003 00a5 4f0a 0700 0002 0081 0001 0005     .....O..........
d03e7594:	0000 0000                                   ....

d03e7598 <drv_snare_patch>:
d03e7598:	0003 0092 4f0a 1800 0005 003c 0002 0091     .....O....<.....
d03e75a8:	0001 0001 0005 0012 4f0a 0a00 0002 0081     .........O......
d03e75b8:	0001 0002 4f0a 0200 0002 0080 0000 0000     .....O..........

d03e75c8 <drv_tom_patch>:
d03e75c8:	0003 00a3 0002 0011 000d ff6a 0001 0004     ..........j.....
d03e75d8:	000d 0000 0000 0000                         ........

d03e75e0 <prg_acoustic_bass>:
d03e75e0:	0003 0581 0002 0011 0005 000c 0001 0000     ................
d03e75f0:	0005 0000 000f 0000 0000 0000               ............

d03e75fc <prg_acoustic_piano>:
d03e75fc:	0003 0342 0004 0900 0002 0041 0001 0001     ..B.......A.....
d03e760c:	0004 0300 0001 0003 0004 0700 000f 0000     ................
d03e761c:	0000 0000                                   ....

d03e7620 <prg_bass_lead>:
d03e7620:	0003 00e3 0004 0400 0002 0041 0009 000c     ..........A.....
d03e7630:	000e 1405 000f 0000 0000 0000               ............

d03e763c <prg_bright_key>:
d03e763c:	0003 0242 0004 0a00 0002 0041 0001 0001     ..B.......A.....
d03e764c:	0004 0280 0001 0002 0004 0600 000f 0000     ................
d03e765c:	0000 0000                                   ....

d03e7660 <prg_charang_lead>:
d03e7660:	0003 00d3 0004 0180 0002 0041 000e 3004     ..........A....0
d03e7670:	0009 070c 000f 0000 0000 0000               ............

d03e767c <prg_chiff_lead>:
d03e767c:	0003 00e3 0004 0700 0002 0081 0001 0001     ................
d03e768c:	0002 0041 000e 2005 0010 0105 000f 0000     ..A.... ........
d03e769c:	0000 0000                                   ....

d03e76a0 <prg_church_organ>:
d03e76a0:	0003 00f5 0002 0031 000e 1807 0010 0209     ......1.........
d03e76b0:	000f 0000 0000 0000                         ........

d03e76b8 <prg_clav_pluck>:
d03e76b8:	0003 0121 0004 0180 0002 0041 0001 0001     ..!.......A.....
d03e76c8:	0004 0c00 000f 0000 0000 0000               ............

d03e76d4 <prg_conditional_loop_demo>:
d03e76d4:	0003 00ff 0004 0200 0002 0041 0011 000a     ..........A.....
d03e76e4:	0014 0405 0006 0100 0001 0001 0012 ffff     ................
d03e76f4:	0015 0004 0013 000d 0006 0040 0001 0001     ..........@.....
d03e7704:	0007 0040 0001 0001 0015 0005 0000 0000     ..@.............

d03e7714 <prg_crystal_fx>:
d03e7714:	0003 02e5 0004 0500 0002 0041 0009 0c13     ..........A.....
d03e7724:	000e 1004 0010 0104 000f 0000 0000 0000     ................

d03e7734 <prg_distortion_guitar>:
d03e7734:	0003 0652 0004 0180 0005 000c 0002 0041     ..R...........A.
d03e7744:	0001 0000 0005 0000 0004 0d00 0009 070c     ................
d03e7754:	000f 0000 0000 0000                         ........

d03e775c <prg_electric_key>:
d03e775c:	0003 0464 0004 0440 0002 0041 000e 0807     ..d...@...A.....
d03e776c:	0010 0108 000f 0000 0000 0000               ............

d03e7778 <prg_gunshot>:
d03e7778:	0003 0ef0 0002 0081 0001 0014 0000 0000     ................

d03e7788 <prg_honkytonk_piano>:
d03e7788:	0003 0432 0004 0240 0002 0041 0001 0002     ..2...@...A.....
d03e7798:	0004 0500 0001 0004 0004 0340 000f 0000     ..........@.....
d03e77a8:	0000 0000                                   ....

d03e77ac <prg_hubbard_arp_hardware>:
d03e77ac:	0003 00f3 0004 0480 0002 0041 000e 1806     ..........A.....
d03e77bc:	0010 0104 0009 0407 000f 0000 0000 0000     ................

d03e77cc <prg_hubbard_arp_lead>:
d03e77cc:	0003 00f3 0004 0600 0002 0041 000e 1806     ..........A.....
d03e77dc:	0005 0000 0004 0600 0001 0000 0005 0004     ................
d03e77ec:	0004 0380 0001 0000 0005 0007 0004 0a00     ................
d03e77fc:	0001 0000 0005 000c 0004 0500 0001 0000     ................
d03e780c:	000f 000c 0000 0000                         ........

d03e7814 <prg_hubbard_pwm_lead>:
d03e7814:	0003 00f4 0004 0180 0002 0041 000e 2005     ..........A.... 
d03e7824:	0010 0206 0006 0060 0001 0001 200b 0002     ......`...... ..
d03e7834:	0007 0060 0001 0001 200b 0002 000f 0006     ..`...... ......
d03e7844:	0000 0000                                   ....

d03e7848 <prg_lead_square>:
d03e7848:	0003 00d3 0004 0600 0002 0041 000e 2404     ..........A....$
d03e7858:	0010 0105 0006 0080 0001 0001 080b 0002     ................
d03e7868:	0007 0080 0001 0001 080b 0002 000f 0006     ................
d03e7878:	0000 0000                                   ....

d03e787c <prg_muted_guitar>:
d03e787c:	0003 0111 0004 0100 0002 0041 0001 0001     ..........A.....
d03e788c:	0004 0f00 000f 0000 0000 0000               ............

d03e7898 <prg_percussive_organ>:
d03e7898:	0003 02c3 0004 0380 0002 0051 0010 0105     ..........Q.....
d03e78a8:	000f 0000 0000 0000                         ........

d03e78b0 <prg_pizzicato>:
d03e78b0:	0003 0262 0004 0a00 0002 0041 0001 0001     ..b.......A.....
d03e78c0:	0004 0300 000f 0000 0000 0000               ............

d03e78cc <prg_sid_bell>:
d03e78cc:	0003 04a6 0002 0011 000e 0803 0005 000c     ................
d03e78dc:	0001 0001 0005 0000 000f 0000 0000 0000     ................

d03e78ec <prg_sid_brass>:
d03e78ec:	0003 12d4 0004 0700 0002 0061 000e 1006     ..........a.....
d03e78fc:	0010 0106 000f 0000 0000 0000               ............

d03e7908 <prg_sid_drawbar_organ>:
d03e7908:	0003 00e4 0004 0700 0002 0051 000e 1008     ..........Q.....
d03e7918:	0010 0207 000f 0000 0000 0000               ............

d03e7924 <prg_sid_flute>:
d03e7924:	0003 34b4 0002 0011 000e 2006 0010 0107     ...4....... ....
d03e7934:	000f 0000 0000 0000                         ........

d03e793c <prg_sid_guitar>:
d03e793c:	0003 0352 0004 0280 0002 0041 0001 0001     ..R.......A.....
d03e794c:	0004 0900 000f 0000 0000 0000               ............

d03e7958 <prg_sid_reed>:
d03e7958:	0003 01c4 0004 0300 0002 0041 000e 2006     ..........A.... 
d03e7968:	0010 0108 000f 0000 0000 0000               ............

d03e7974 <prg_sid_strings>:
d03e7974:	0003 45c5 0004 0800 0002 0051 000e 1807     ...E......Q.....
d03e7984:	0010 0109 000f 0000 0000 0000               ............

d03e7990 <prg_sitar_sid>:
d03e7990:	0003 0273 0004 0180 0002 0041 0009 0c13     ..s.......A.....
d03e79a0:	0001 0003 0009 0000 000f 0000 0000 0000     ................

d03e79b0 <prg_slap_bass>:
d03e79b0:	0003 0471 0004 0140 0002 0041 0005 000c     ..q...@...A.....
d03e79c0:	0001 0000 0005 0000 0009 000c 000f 0000     ................
d03e79d0:	0000 0000                                   ....

d03e79d4 <prg_sweep_pad>:
d03e79d4:	0003 45f6 0004 0180 0002 0041 000e 1808     ...E......A.....
d03e79e4:	0010 0208 0006 0040 0001 0001 280b 0002     ......@......(..
d03e79f4:	0007 0040 0001 0001 280b 0002 000f 0006     ..@......(......
d03e7a04:	0000 0000                                   ....

d03e7a08 <prg_synth_bass_1>:
d03e7a08:	0003 0671 0004 0280 0005 000c 0002 0041     ..q...........A.
d03e7a18:	0001 0000 0005 0000 0009 000c 000f 0000     ................
d03e7a28:	0000 0000                                   ....

d03e7a2c <prg_synth_brass>:
d03e7a2c:	0003 01f4 0004 0200 0002 0041 000e 1805     ..........A.....
d03e7a3c:	0010 0205 0006 0080 0001 0001 040b 0002     ................
d03e7a4c:	0007 0080 0001 0001 040b 0002 000f 0006     ................
d03e7a5c:	0000 0000                                   ....

d03e7a60 <prg_synth_drum_program>:
d03e7a60:	0003 00a2 0005 0018 0002 0011 000d fe0c     ................
d03e7a70:	0001 0004 000d 0000 0000 0000               ............

d03e7a7c <prg_warm_pad>:
d03e7a7c:	0003 55f6 0004 0800 0002 0051 000e 1809     ...U......Q.....
d03e7a8c:	0010 020a 000f 0000 0000 0000               ............

d03e7a98 <sid_note_to_freq>:
d03e7a98:	0111 0121 0133 0145 0158 016d 0182 019a     ..!.3.E.X.m.....
d03e7aa8:	01b2 01cc 01e7 0204 0223 0243 0266 028a     ........#.C.f...
d03e7ab8:	02b1 02da 0305 0333 0364 0398 03cf 0409     ......3.d.......
d03e7ac8:	0446 0487 04cc 0515 0562 05b4 060b 0667     F.......b.....g.
d03e7ad8:	06c9 0730 079d 0811 088c 090e 0998 0a2a     ..0...........*.
d03e7ae8:	0ac5 0b69 0c17 0ccf 0d92 0e61 0f3c 1023     ..i.......a.<.#.
d03e7af8:	1119 121d 1331 1455 158a 16d2 182d 199d     ....1.U.....-...
d03e7b08:	1b23 1cc0 1e76 2046 2232 243a 2662 28aa     #...v.F 2":$b&.(
d03e7b18:	2b15 2da5 305b 333b 3647 3981 3cec 408c     .+.-[0;3G6.9.<.@
d03e7b28:	4464 4875 4cc4 5154 562a 5b4a 60b7 6676     dDuH.LTQ*VJ[.`vf
d03e7b38:	6c8e 7302 79d9 8118 88c9 90ea 9988 a2a9     .l.s.y..........
d03e7b48:	ac55 b694 c16f ccee d91d e605 f3b3 ffff     U...o...........
d03e7b58:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d03e7b68:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d03e7b78:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d03e7b88:	ffff ffff ffff ffff ffff ffff ffff ffff     ................

d03e7b98 <sid_release_ticks_50hz>:
d03e7b98:	0001 0002 0003 0004 0006 0009 000b 000d     ................
d03e7ba8:	0010 0026 004c 0079 0097 01c3 02ef 04b1     ..&.L.y.........
d03e7bb8:	4843 3031 7520 6573 2073 6874 2065 6570     CH10 uses the pe
d03e7bc8:	6372 7375 6973 6e6f 7220 756f 6574 0072     rcussion router.
d03e7bd8:	6146 6c6c 6162 6b63 0000 0000 4550 4652     Fallback....PERF
d03e7be8:	524f 414d 434e 0045 4553 454c 5443 4445     ORMANCE.SELECTED
d03e7bf8:	4320 4148 4e4e 4c45 0000 0000 4843 3025      CHANNEL....CH%0
d03e7c08:	7532 5020 3025 7533 2520 312e 7338 0000     2u P%03u %.18s..
d03e7c18:	502d 0000 502b 0000 472d 0000 472b 0000     -P..+P..-G..+G..
d03e7c28:	4f52 5455 4e49 0047 4843 3025 7532 5020     ROUTING.CH%02u P
d03e7c38:	3025 7533 2520 312d 2e30 3031 0073 0000     %03u %-10.10s...
d03e7c48:	5250 4a4f 4345 0054 6153 6576 6c2f 616f     PROJECT.Save/loa
d03e7c58:	2064 6f68 6b6f 2073 6572 6461 2e79 0000     d hooks ready...
d03e7c68:	6150 6374 2068 6162 6b6e 2073 616c 6574     Patch banks late
d03e7c78:	2e72 0000 7542 7474 6e6f 2073 7261 2065     r...Buttons are 
d03e7c88:	6c63 6369 616b 6c62 2e65 0000 4e45 4241     clickable...ENAB
d03e7c98:	454c 0044 554d 4554 0044 0000 554d 4554     LED.MUTED...MUTE
d03e7ca8:	0000 0000 4e45 4241 454c 0000 3f3f 003f     ....ENABLE..???.
d03e7cb8:	4953 4244 584f 4d20 4449 2049 4953 0044     SIDBOX MIDI SID.
d03e7cc8:	494c 4556 5320 4e59 4854 4320 4e4f 5254     LIVE SYNTH CONTR
d03e7cd8:	4c4f 0000 4843 4e41 454e 204c 5341 4953     OL..CHANNEL ASSI
d03e7ce8:	4e47 454d 544e 0053 4843 3120 342d 0000     GNMENTS.CH 1-4..
d03e7cf8:	4843 3520 382d 0000 4843 3920 312d 0032     CH 5-8..CH 9-12.
d03e7d08:	4843 3120 2d33 3631 0000 0000 4843 2020     CH 13-16....CH  
d03e7d18:	5020 4752 2020 5020 4f52 5247 4d41 4e20      PRG   PROGRAM N
d03e7d28:	4d41 0045 3025 7532 2020 2520 3330 2075     AME.%02u   %03u 
d03e7d38:	2020 2d25 3532 322e 7335 0000 002d 0000       %-25.25s..-...
d03e7d48:	002b 0000 4c47 424f 4c41 4f20 5455 5550     +...GLOBAL OUTPU
d03e7d58:	2054 4147 4e49 0000 7525 2525 0000 0000     T GAIN..%u%%....
d03e7d68:	4553 454c 5443 4445 4320 4148 4e4e 4c45     SELECTED CHANNEL
d03e7d78:	5620 4c4f 4d55 0045 4843 3025 7532 2020      VOLUME.CH%02u  
d03e7d88:	3025 7533 0000 0000 4553 454c 5443 4445     %03u....SELECTED
d03e7d98:	4320 4148 4e4e 4c45 4520 5058 4552 5353      CHANNEL EXPRESS
d03e7da8:	4f49 004e 5845 2050 3025 7533 0000 0000     ION.EXP %03u....
d03e7db8:	494d 4944 4320 3743 432f 3143 2031 7473     MIDI CC7/CC11 st
d03e7dc8:	6c69 206c 7075 6164 6574 7720 6968 656c     ill update while
d03e7dd8:	7020 616c 6979 676e 002e 0000 4550 4352      playing....PERC
d03e7de8:	5355 4953 4e4f 5320 5445 4954 474e 0053     USSION SETTINGS.
d03e7df8:	4d47 6320 6168 6e6e 6c65 3120 2030 6f72     GM channel 10 ro
d03e7e08:	7475 6465 7420 206f 4953 2044 7264 6d75     uted to SID drum
d03e7e18:	7020 6f72 7267 6d61 0073 0000 5453 5441      programs...STAT
d03e7e28:	3a45 2520 0073 0000 5244 4d55 4720 4941     E: %s...DRUM GAI
d03e7e38:	204e 7525 2525 0000 614d 7070 6465 203a     N %u%%..Mapped: 
d03e7e48:	696b 6b63 202c 6e73 7261 2c65 6820 7461     kick, snare, hat
d03e7e58:	2c73 7420 6d6f 2e73 0000 0000 7546 7574     s, toms.....Futu
d03e7e68:	6572 203a 6570 2d72 6f6e 6574 6b20 7469     re: per-note kit
d03e7e78:	6220 6f72 7377 7265 002e 0000 4843 3031      browser....CH10
d03e7e88:	6920 6e67 726f 7365 7020 6f72 7267 6d61      ignores program
d03e7e98:	6320 6168 676e 7365 002e 0000 4d56 4320      changes....VM C
d03e7ea8:	444f 2045 4956 5745 5245 0000 4843 3025     ODE VIEWER..CH%0
d03e7eb8:	7532 5020 3025 7533 2520 322e 7334 0000     2u P%03u %.24s..
d03e7ec8:	4d47 6420 7572 736d 7520 6573 7020 7265     GM drums use per
d03e7ed8:	7563 7373 6f69 206e 6f72 7475 7265 002e     cussion router..
d03e7ee8:	6f4e 5620 204d 7270 676f 6172 206d 7361     No VM program as
d03e7ef8:	6973 6e67 6465 002e 4449 2058 504f 4f43     signed..IDX OPCO
d03e7f08:	4544 2020 5020 2020 4156 554c 0045 0000     DE   P  VALUE...
d03e7f18:	5055 0000 4e44 0000 3025 7532 252f 3230     UP..DN..%02u/%02
d03e7f28:	0075 0000 3025 7532 2020 2d25 7338 2520     u...%02u  %-8s %
d03e7f38:	3230 2058 3025 5834 0000 0000 4150 494e     02X %04X....PANI
d03e7f48:	0043 0000 4153 4556 0000 0000 4f4c 4441     C...SAVE....LOAD
d03e7f58:	0000 0000 6952 6867 2074 6c63 6369 206b     ....Right click 
d03e7f68:	6170 696e 0063 0000 6153 6576 6220 6f72     panic...Save bro
d03e7f78:	7377 7265 7220 7365 7265 6576 0064 0000     wser reserved...
d03e7f88:	6f4c 6461 6220 6f72 7377 7265 7220 7365     Load browser res
d03e7f98:	7265 6576 0064 0000 6150 696e 3a63 6120     erved...Panic: a
d03e7fa8:	6c6c 6e20 746f 7365 6b20 6c69 656c 0064     ll notes killed.
d03e7fb8:	2556 2f75 7525 4f20 254e 756c 4f20 4646     V%u/%u ON%lu OFF
d03e7fc8:	6c25 2075 2544 756c 0000 0000 6952 6867     %lu D%lu....Righ
d03e7fd8:	2074 6c63 6369 206b 6170 696e 2063 4c20     t click panic  L
d03e7fe8:	522b 6520 6978 7374 0000 0000 7525 252f     +R exits....%u/%
d03e7ff8:	2075 6f76 6369 7365 0000 0000 6170 696e     u voices....pani
d03e8008:	2063 6c25 2075 7420 6f6d 2520 756c 0000     c %lu  tmo %lu..
d03e8018:	6167 6e69 2520 2575 2025 6420 7572 736d     gain %u%%  drums
d03e8028:	2520 2575 0025 0000 4f56 204c 3025 7533      %u%%...VOL %03u
d03e8038:	2020 4520 5058 2520 3330 2075 2020 4542        EXP %03u   BE
d03e8048:	444e 2520 0064 0000 003e 0000 4350 3025     ND %d...>...PC%0
d03e8058:	7532 5620 7525 0000 4e45 0044 4157 5449     2u V%u..END.WAIT
d03e8068:	0000 0000 4157 4556 0000 0000 4441 5253     ....WAVE....ADSR
d03e8078:	0000 0000 5550 534c 0045 0000 4950 4354     ....PULSE...PITC
d03e8088:	0048 0000 4441 5044 4d57 0000 4544 5043     H...ADDPWM..DECP
d03e8098:	4d57 0000 4f50 5452 0041 0000 5241 0050     WM..PORTA...ARP.
d03e80a8:	4946 544c 5245 0000 4f4c 504f 0000 0000     FILTER..LOOP....
d03e80b8:	554a 504d 0000 0000 5753 4545 0050 0000     JUMP....SWEEP...
d03e80c8:	4956 0042 4f48 444c 0000 0000 5254 4d45     VIB.HOLD....TREM
d03e80d8:	0000 0000 4553 5654 5241 0000 4441 5644     ....SETVAR..ADDV
d03e80e8:	5241 0000 4857 4f4e 4554 0000 4857 5447     AR..WHNOTE..WHGT
d03e80f8:	0000 0000 4e45 5744 0048 0000 4f48 454d     ....ENDWH...HOME
d03e8108:	0000 0000 4843 4e41 454e 534c 0000 0000     ....CHANNELS....
d03e8118:	494d 4558 0052 0000 4550 4352 0000 0000     MIXER...PERC....
d03e8128:	4d56 0000 6341 756f 7473 6369 5020 6169     VM..Acoustic Pia
d03e8138:	6f6e 0000 7242 6769 7468 4b20 7965 0000     no..Bright Key..
d03e8148:	6f48 6b6e 2d79 6f74 6b6e 0000 6c45 6365     Honky-tonk..Elec
d03e8158:	7274 6369 4b20 7965 0000 0000 6c43 7661     tric Key....Clav
d03e8168:	5020 756c 6b63 0000 4953 2044 6542 6c6c      Pluck..SID Bell
d03e8178:	0000 0000 7244 7761 6162 2072 724f 6167     ....Drawbar Orga
d03e8188:	006e 0000 6843 7275 6863 4f20 6772 6e61     n...Church Organ
d03e8198:	0000 0000 6552 6465 4f20 6772 6e61 0000     ....Reed Organ..
d03e81a8:	4953 2044 7547 7469 7261 0000 754d 6574     SID Guitar..Mute
d03e81b8:	2064 7547 7469 7261 0000 0000 764f 7265     d Guitar....Over
d03e81c8:	7264 7669 2065 7447 0072 0000 6944 7473     drive Gtr...Dist
d03e81d8:	4720 6975 6174 0072 754d 6574 2064 6f4e      Guitar.Muted No
d03e81e8:	7369 0065 6341 756f 7473 6369 4220 7361     ise.Acoustic Bas
d03e81f8:	0073 0000 4953 2044 6142 7373 0000 0000     s...SID Bass....
d03e8208:	7953 746e 2068 6142 7373 3120 0000 0000     Synth Bass 1....
d03e8218:	6c53 7061 4220 7361 0073 0000 4953 2044     Slap Bass...SID 
d03e8228:	7453 6972 676e 0073 6950 7a7a 6369 7461     Strings.Pizzicat
d03e8238:	006f 0000 4953 2044 6e45 6573 626d 656c     o...SID Ensemble
d03e8248:	0000 0000 4953 2044 7242 7361 0073 0000     ....SID Brass...
d03e8258:	7953 746e 2068 7242 7361 0073 4953 2044     Synth Brass.SID 
d03e8268:	6552 6465 0000 0000 4953 2044 6c46 7475     Reed....SID Flut
d03e8278:	0065 0000 654c 6461 5320 7571 7261 0065     e...Lead Square.
d03e8288:	5750 204d 654c 6461 0000 0000 6146 7473     PWM Lead....Fast
d03e8298:	4120 7072 4c20 6165 0064 0000 5748 4120      Arp Lead...HW A
d03e82a8:	7072 4c20 6165 0064 6843 6669 2066 654c     rp Lead.Chiff Le
d03e82b8:	6461 0000 6843 7261 6e61 2067 654c 6461     ad..Charang Lead
d03e82c8:	0000 0000 5750 204d 7753 6565 0070 0000     ....PWM Sweep...
d03e82d8:	6142 7373 4c2b 6165 0064 0000 6157 6d72     Bass+Lead...Warm
d03e82e8:	5020 6461 0000 0000 7753 6565 2070 6150      Pad....Sweep Pa
d03e82f8:	0064 0000 4953 2044 5846 0000 4953 2044     d...SID FX..SID 
d03e8308:	6c50 6375 006b 0000 7953 746e 2068 7244     Pluck...Synth Dr
d03e8318:	6d75 0000 6f4e 7369 2065 5846 0000 0000     um..Noise FX....
d03e8328:	4d56 4c20 6f6f 2070 6544 6f6d 0000 0000     VM Loop Demo....
d03e8338:	7547 736e 6f68 2074 5846 0000 4d47 4420     Gunshot FX..GM D
d03e8348:	7572 736d 0000 0000 2650 5153 1300 521e     rums....P&SQ...R
d03e8358:	8004 2650 5153 7f00                         ..P&SQ..

d03e8360 <CSWTCH.447>:
d03e8360:	812c d03e 813c d03e 813c d03e 813c d03e     ,.>.<.>.<.>.<.>.
d03e8370:	8148 d03e 8154 d03e 8154 d03e 8164 d03e     H.>.T.>.T.>.d.>.
d03e8380:	8164 d03e 8170 d03e 8170 d03e 8170 d03e     d.>.p.>.p.>.p.>.
d03e8390:	8170 d03e 8170 d03e 8170 d03e 8170 d03e     p.>.p.>.p.>.p.>.
d03e83a0:	817c d03e 817c d03e 817c d03e 818c d03e     |.>.|.>.|.>...>.
d03e83b0:	819c d03e 819c d03e 819c d03e 819c d03e     ..>...>...>...>.
d03e83c0:	81a8 d03e 81a8 d03e 81a8 d03e 81a8 d03e     ..>...>...>...>.
d03e83d0:	81b4 d03e 81c4 d03e 81d4 d03e 81e0 d03e     ..>...>...>...>.
d03e83e0:	81ec d03e 81fc d03e 81fc d03e 81fc d03e     ..>...>...>...>.
d03e83f0:	81fc d03e 81fc d03e 8208 d03e 8218 d03e     ..>...>...>...>.
d03e8400:	8224 d03e 8224 d03e 8224 d03e 8224 d03e     $.>.$.>.$.>.$.>.
d03e8410:	8224 d03e 8224 d03e 8230 d03e 823c d03e     $.>.$.>.0.>.<.>.
d03e8420:	823c d03e 823c d03e 823c d03e 823c d03e     <.>.<.>.<.>.<.>.
d03e8430:	823c d03e 823c d03e 823c d03e 823c d03e     <.>.<.>.<.>.<.>.
d03e8440:	824c d03e 824c d03e 824c d03e 824c d03e     L.>.L.>.L.>.L.>.
d03e8450:	824c d03e 824c d03e 8258 d03e 8258 d03e     L.>.L.>.X.>.X.>.
d03e8460:	8264 d03e 8264 d03e 8264 d03e 8264 d03e     d.>.d.>.d.>.d.>.
d03e8470:	8264 d03e 8264 d03e 8264 d03e 8264 d03e     d.>.d.>.d.>.d.>.
d03e8480:	8270 d03e 8270 d03e 8270 d03e 8270 d03e     p.>.p.>.p.>.p.>.
d03e8490:	8270 d03e 8270 d03e 8270 d03e 8270 d03e     p.>.p.>.p.>.p.>.
d03e84a0:	827c d03e 8288 d03e 8294 d03e 82a4 d03e     |.>...>...>...>.
d03e84b0:	82b0 d03e 82bc d03e 82cc d03e 82d8 d03e     ..>...>...>...>.
d03e84c0:	82e4 d03e 82e4 d03e 82e4 d03e 82e4 d03e     ..>...>...>...>.
d03e84d0:	82e4 d03e 82e4 d03e 82e4 d03e 82f0 d03e     ..>...>...>...>.
d03e84e0:	82fc d03e 82fc d03e 82fc d03e 82fc d03e     ..>...>...>...>.
d03e84f0:	82fc d03e 82fc d03e 82fc d03e 82fc d03e     ..>...>...>...>.
d03e8500:	8304 d03e 8304 d03e 8304 d03e 8304 d03e     ..>...>...>...>.
d03e8510:	8304 d03e 8304 d03e 8304 d03e 8304 d03e     ..>...>...>...>.
d03e8520:	8170 d03e 8170 d03e 8170 d03e 8170 d03e     p.>.p.>.p.>.p.>.
d03e8530:	8170 d03e 8170 d03e 8310 d03e 8310 d03e     p.>.p.>...>...>.
d03e8540:	831c d03e 831c d03e 831c d03e 831c d03e     ..>...>...>...>.
d03e8550:	831c d03e 831c d03e 8328 d03e 8338 d03e     ..>...>.(.>.8.>.
d03e8560:	8344 d03e                                   D.>.

d03e8564 <CSWTCH.457>:
d03e8564:	8104 d03e 810c d03e 8118 d03e 8120 d03e     ..>...>...>. .>.
d03e8574:	8128 d03e                                   (.>.

d03e8578 <CSWTCH.459>:
d03e8578:	8060 d03e 8064 d03e 806c d03e 8074 d03e     `.>.d.>.l.>.t.>.
d03e8588:	807c d03e 8084 d03e 808c d03e 8094 d03e     |.>...>...>...>.
d03e8598:	809c d03e 80a4 d03e 80a8 d03e 80b0 d03e     ..>...>...>...>.
d03e85a8:	80b8 d03e 80c0 d03e 80c8 d03e 80cc d03e     ..>...>...>...>.
d03e85b8:	80d4 d03e 80dc d03e 80e4 d03e 80ec d03e     ..>...>...>...>.
d03e85c8:	80f4 d03e 80fc d03e                         ..>...>.

d03e85d0 <bands.9791>:
d03e85d0:	1110 1312 1314 1112                         ........

d03e85d8 <_global_impure_ptr>:
d03e85d8:	8c7c d03e                                   |.>.

d03e85dc <__sf_fake_stderr>:
	...

d03e85fc <__sf_fake_stdin>:
	...

d03e861c <__sf_fake_stdout>:
	...
d03e863c:	2d23 2b30 0020 6c68 004c 6665 4567 4746     #-0+ .hlL.efgEFG
d03e864c:	3000 3231 3433 3635 3837 4139 4342 4544     .0123456789ABCDE
d03e865c:	0046 3130 3332 3534 3736 3938 6261 6463     F.0123456789abcd
d03e866c:	6665                                         ef.

Disassembly of section .init:

d03e8670 <_init>:
d03e8670:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e8672:	bf00      	nop

Disassembly of section .fini:

d03e8674 <_fini>:
d03e8674:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e8676:	bf00      	nop
