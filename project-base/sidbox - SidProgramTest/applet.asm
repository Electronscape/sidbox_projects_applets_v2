
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d03c0010 <applet_entry>:
d03c0010:	b570      	push	{r4, r5, r6, lr}
d03c0012:	4e09      	ldr	r6, [pc, #36]	; (d03c0038 <applet_entry+0x28>)
d03c0014:	460d      	mov	r5, r1
d03c0016:	4604      	mov	r4, r0
d03c0018:	2100      	movs	r1, #0
d03c001a:	6833      	ldr	r3, [r6, #0]
d03c001c:	6898      	ldr	r0, [r3, #8]
d03c001e:	f009 fed7 	bl	d03c9dd0 <setbuf>
d03c0022:	6833      	ldr	r3, [r6, #0]
d03c0024:	2100      	movs	r1, #0
d03c0026:	68d8      	ldr	r0, [r3, #12]
d03c0028:	f009 fed2 	bl	d03c9dd0 <setbuf>
d03c002c:	4629      	mov	r1, r5
d03c002e:	4620      	mov	r0, r4
d03c0030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d03c0034:	f006 bf7a 	b.w	d03c6f2c <main>
d03c0038:	d03ccc08 	.word	0xd03ccc08

d03c003c <initMalloc>:
d03c003c:	4902      	ldr	r1, [pc, #8]	; (d03c0048 <initMalloc+0xc>)
d03c003e:	4b03      	ldr	r3, [pc, #12]	; (d03c004c <initMalloc+0x10>)
d03c0040:	4a03      	ldr	r2, [pc, #12]	; (d03c0050 <initMalloc+0x14>)
d03c0042:	1a5b      	subs	r3, r3, r1
d03c0044:	6013      	str	r3, [r2, #0]
d03c0046:	4770      	bx	lr
d03c0048:	d03d16d0 	.word	0xd03d16d0
d03c004c:	d0600000 	.word	0xd0600000
d03c0050:	d03cf53c 	.word	0xd03cf53c

d03c0054 <_write_r>:
d03c0054:	3901      	subs	r1, #1
d03c0056:	2901      	cmp	r1, #1
d03c0058:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03c005a:	d81f      	bhi.n	d03c009c <_write_r+0x48>
d03c005c:	b1e2      	cbz	r2, d03c0098 <_write_r+0x44>
d03c005e:	461c      	mov	r4, r3
d03c0060:	b1d3      	cbz	r3, d03c0098 <_write_r+0x44>
d03c0062:	4d12      	ldr	r5, [pc, #72]	; (d03c00ac <_write_r+0x58>)
d03c0064:	682e      	ldr	r6, [r5, #0]
d03c0066:	b9ae      	cbnz	r6, d03c0094 <_write_r+0x40>
d03c0068:	4f11      	ldr	r7, [pc, #68]	; (d03c00b0 <_write_r+0x5c>)
d03c006a:	2301      	movs	r3, #1
d03c006c:	4611      	mov	r1, r2
d03c006e:	4630      	mov	r0, r6
d03c0070:	602b      	str	r3, [r5, #0]
d03c0072:	4622      	mov	r2, r4
d03c0074:	7a3b      	ldrb	r3, [r7, #8]
d03c0076:	f897 c009 	ldrb.w	ip, [r7, #9]
d03c007a:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d03c007e:	f897 c00a 	ldrb.w	ip, [r7, #10]
d03c0082:	7aff      	ldrb	r7, [r7, #11]
d03c0084:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d03c0088:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d03c008c:	681b      	ldr	r3, [r3, #0]
d03c008e:	685b      	ldr	r3, [r3, #4]
d03c0090:	4798      	blx	r3
d03c0092:	602e      	str	r6, [r5, #0]
d03c0094:	4620      	mov	r0, r4
d03c0096:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c0098:	2000      	movs	r0, #0
d03c009a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c009c:	f009 fc2a 	bl	d03c98f4 <__errno>
d03c00a0:	2209      	movs	r2, #9
d03c00a2:	4603      	mov	r3, r0
d03c00a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c00a8:	601a      	str	r2, [r3, #0]
d03c00aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c00ac:	d03ccc84 	.word	0xd03ccc84
d03c00b0:	2001f000 	.word	0x2001f000

d03c00b4 <_read>:
d03c00b4:	b508      	push	{r3, lr}
d03c00b6:	f009 fc1d 	bl	d03c98f4 <__errno>
d03c00ba:	2258      	movs	r2, #88	; 0x58
d03c00bc:	4603      	mov	r3, r0
d03c00be:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c00c2:	601a      	str	r2, [r3, #0]
d03c00c4:	bd08      	pop	{r3, pc}
d03c00c6:	bf00      	nop

d03c00c8 <_close>:
d03c00c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c00cc:	4770      	bx	lr
d03c00ce:	bf00      	nop

d03c00d0 <_fstat>:
d03c00d0:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d03c00d4:	2000      	movs	r0, #0
d03c00d6:	604b      	str	r3, [r1, #4]
d03c00d8:	4770      	bx	lr
d03c00da:	bf00      	nop

d03c00dc <_lseek>:
d03c00dc:	2000      	movs	r0, #0
d03c00de:	4770      	bx	lr

d03c00e0 <_sbrk_r>:
d03c00e0:	4b0c      	ldr	r3, [pc, #48]	; (d03c0114 <_sbrk_r+0x34>)
d03c00e2:	4a0d      	ldr	r2, [pc, #52]	; (d03c0118 <_sbrk_r+0x38>)
d03c00e4:	6818      	ldr	r0, [r3, #0]
d03c00e6:	b510      	push	{r4, lr}
d03c00e8:	b918      	cbnz	r0, d03c00f2 <_sbrk_r+0x12>
d03c00ea:	1dd0      	adds	r0, r2, #7
d03c00ec:	f020 0007 	bic.w	r0, r0, #7
d03c00f0:	6018      	str	r0, [r3, #0]
d03c00f2:	4401      	add	r1, r0
d03c00f4:	4c09      	ldr	r4, [pc, #36]	; (d03c011c <_sbrk_r+0x3c>)
d03c00f6:	42a1      	cmp	r1, r4
d03c00f8:	d803      	bhi.n	d03c0102 <_sbrk_r+0x22>
d03c00fa:	4291      	cmp	r1, r2
d03c00fc:	d301      	bcc.n	d03c0102 <_sbrk_r+0x22>
d03c00fe:	6019      	str	r1, [r3, #0]
d03c0100:	bd10      	pop	{r4, pc}
d03c0102:	f009 fbf7 	bl	d03c98f4 <__errno>
d03c0106:	220c      	movs	r2, #12
d03c0108:	4603      	mov	r3, r0
d03c010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c010e:	601a      	str	r2, [r3, #0]
d03c0110:	bd10      	pop	{r4, pc}
d03c0112:	bf00      	nop
d03c0114:	d03ccc80 	.word	0xd03ccc80
d03c0118:	d03d16d0 	.word	0xd03d16d0
d03c011c:	d0600000 	.word	0xd0600000

d03c0120 <sid_midi_trigger_percussion>:
d03c0120:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
d03c0124:	4606      	mov	r6, r0
d03c0126:	460c      	mov	r4, r1
d03c0128:	4615      	mov	r5, r2
d03c012a:	2a00      	cmp	r2, #0
d03c012c:	d05f      	beq.n	d03c01ee <sid_midi_trigger_percussion+0xce>
d03c012e:	f10d 0207 	add.w	r2, sp, #7
d03c0132:	f10d 0106 	add.w	r1, sp, #6
d03c0136:	f000 f92f 	bl	d03c0398 <get_voice_target>
d03c013a:	f1a4 0123 	sub.w	r1, r4, #35	; 0x23
d03c013e:	4c2d      	ldr	r4, [pc, #180]	; (d03c01f4 <sid_midi_trigger_percussion+0xd4>)
d03c0140:	b2c9      	uxtb	r1, r1
d03c0142:	4a2d      	ldr	r2, [pc, #180]	; (d03c01f8 <sid_midi_trigger_percussion+0xd8>)
d03c0144:	f89d 0006 	ldrb.w	r0, [sp, #6]
d03c0148:	290f      	cmp	r1, #15
d03c014a:	f8b2 801c 	ldrh.w	r8, [r2, #28]
d03c014e:	7f12      	ldrb	r2, [r2, #28]
d03c0150:	bf96      	itet	ls
d03c0152:	4b2a      	ldrls	r3, [pc, #168]	; (d03c01fc <sid_midi_trigger_percussion+0xdc>)
d03c0154:	4f2a      	ldrhi	r7, [pc, #168]	; (d03c0200 <sid_midi_trigger_percussion+0xe0>)
d03c0156:	f853 7021 	ldrls.w	r7, [r3, r1, lsl #2]
d03c015a:	7d23      	ldrb	r3, [r4, #20]
d03c015c:	7d61      	ldrb	r1, [r4, #21]
d03c015e:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c0162:	7da1      	ldrb	r1, [r4, #22]
d03c0164:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c0168:	7de1      	ldrb	r1, [r4, #23]
d03c016a:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d03c016e:	f89d 1007 	ldrb.w	r1, [sp, #7]
d03c0172:	681b      	ldr	r3, [r3, #0]
d03c0174:	69db      	ldr	r3, [r3, #28]
d03c0176:	4798      	blx	r3
d03c0178:	7d23      	ldrb	r3, [r4, #20]
d03c017a:	7d62      	ldrb	r2, [r4, #21]
d03c017c:	f89d 1007 	ldrb.w	r1, [sp, #7]
d03c0180:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0184:	7da2      	ldrb	r2, [r4, #22]
d03c0186:	3101      	adds	r1, #1
d03c0188:	f89d 0006 	ldrb.w	r0, [sp, #6]
d03c018c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0190:	7de2      	ldrb	r2, [r4, #23]
d03c0192:	b2c9      	uxtb	r1, r1
d03c0194:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0198:	ea4f 2218 	mov.w	r2, r8, lsr #8
d03c019c:	681b      	ldr	r3, [r3, #0]
d03c019e:	69db      	ldr	r3, [r3, #28]
d03c01a0:	4798      	blx	r3
d03c01a2:	2338      	movs	r3, #56	; 0x38
d03c01a4:	4a17      	ldr	r2, [pc, #92]	; (d03c0204 <sid_midi_trigger_percussion+0xe4>)
d03c01a6:	fb03 f006 	mul.w	r0, r3, r6
d03c01aa:	2300      	movs	r3, #0
d03c01ac:	f102 0408 	add.w	r4, r2, #8
d03c01b0:	f04f 7680 	mov.w	r6, #16777216	; 0x1000000
d03c01b4:	1811      	adds	r1, r2, r0
d03c01b6:	5017      	str	r7, [r2, r0]
d03c01b8:	730d      	strb	r5, [r1, #12]
d03c01ba:	1905      	adds	r5, r0, r4
d03c01bc:	734b      	strb	r3, [r1, #13]
d03c01be:	604f      	str	r7, [r1, #4]
d03c01c0:	80eb      	strh	r3, [r5, #6]
d03c01c2:	2501      	movs	r5, #1
d03c01c4:	740b      	strb	r3, [r1, #16]
d03c01c6:	824d      	strh	r5, [r1, #18]
d03c01c8:	f102 0520 	add.w	r5, r2, #32
d03c01cc:	85cb      	strh	r3, [r1, #46]	; 0x2e
d03c01ce:	5143      	str	r3, [r0, r5]
d03c01d0:	848b      	strh	r3, [r1, #36]	; 0x24
d03c01d2:	f881 3028 	strb.w	r3, [r1, #40]	; 0x28
d03c01d6:	750b      	strb	r3, [r1, #20]
d03c01d8:	82cb      	strh	r3, [r1, #22]
d03c01da:	830b      	strh	r3, [r1, #24]
d03c01dc:	834b      	strh	r3, [r1, #26]
d03c01de:	838b      	strh	r3, [r1, #28]
d03c01e0:	f100 0130 	add.w	r1, r0, #48	; 0x30
d03c01e4:	188d      	adds	r5, r1, r2
d03c01e6:	508e      	str	r6, [r1, r2]
d03c01e8:	606b      	str	r3, [r5, #4]
d03c01ea:	4b07      	ldr	r3, [pc, #28]	; (d03c0208 <sid_midi_trigger_percussion+0xe8>)
d03c01ec:	5103      	str	r3, [r0, r4]
d03c01ee:	b002      	add	sp, #8
d03c01f0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03c01f4:	2001f000 	.word	0x2001f000
d03c01f8:	d03cb1cc 	.word	0xd03cb1cc
d03c01fc:	d03cac44 	.word	0xd03cac44
d03c0200:	d03cac84 	.word	0xd03cac84
d03c0204:	d03cf540 	.word	0xd03cf540
d03c0208:	0e010000 	.word	0x0e010000

d03c020c <sid_write>:
d03c020c:	2801      	cmp	r0, #1
d03c020e:	b430      	push	{r4, r5}
d03c0210:	d805      	bhi.n	d03c021e <sid_write+0x12>
d03c0212:	291f      	cmp	r1, #31
d03c0214:	bf9e      	ittt	ls
d03c0216:	4b09      	ldrls	r3, [pc, #36]	; (d03c023c <sid_write+0x30>)
d03c0218:	eb03 1340 	addls.w	r3, r3, r0, lsl #5
d03c021c:	545a      	strbls	r2, [r3, r1]
d03c021e:	4c08      	ldr	r4, [pc, #32]	; (d03c0240 <sid_write+0x34>)
d03c0220:	7d23      	ldrb	r3, [r4, #20]
d03c0222:	7d65      	ldrb	r5, [r4, #21]
d03c0224:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d03c0228:	7da5      	ldrb	r5, [r4, #22]
d03c022a:	7de4      	ldrb	r4, [r4, #23]
d03c022c:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d03c0230:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03c0234:	681b      	ldr	r3, [r3, #0]
d03c0236:	bc30      	pop	{r4, r5}
d03c0238:	69db      	ldr	r3, [r3, #28]
d03c023a:	4718      	bx	r3
d03c023c:	d03ccc88 	.word	0xd03ccc88
d03c0240:	2001f000 	.word	0x2001f000

d03c0244 <sid_voice_write_scaled_sr>:
d03c0244:	b470      	push	{r4, r5, r6}
d03c0246:	4605      	mov	r5, r0
d03c0248:	4608      	mov	r0, r1
d03c024a:	7b6c      	ldrb	r4, [r5, #13]
d03c024c:	7b2e      	ldrb	r6, [r5, #12]
d03c024e:	f004 010f 	and.w	r1, r4, #15
d03c0252:	0924      	lsrs	r4, r4, #4
d03c0254:	fb14 f406 	smulbb	r4, r4, r6
d03c0258:	343f      	adds	r4, #63	; 0x3f
d03c025a:	f5b4 6ffe 	cmp.w	r4, #2032	; 0x7f0
d03c025e:	d21d      	bcs.n	d03c029c <sid_voice_write_scaled_sr+0x58>
d03c0260:	237f      	movs	r3, #127	; 0x7f
d03c0262:	2c7e      	cmp	r4, #126	; 0x7e
d03c0264:	fbb4 f3f3 	udiv	r3, r4, r3
d03c0268:	b2db      	uxtb	r3, r3
d03c026a:	d802      	bhi.n	d03c0272 <sid_voice_write_scaled_sr+0x2e>
d03c026c:	1e33      	subs	r3, r6, #0
d03c026e:	bf18      	it	ne
d03c0270:	2301      	movne	r3, #1
d03c0272:	f895 4034 	ldrb.w	r4, [r5, #52]	; 0x34
d03c0276:	f003 030f 	and.w	r3, r3, #15
d03c027a:	f895 5037 	ldrb.w	r5, [r5, #55]	; 0x37
d03c027e:	b12d      	cbz	r5, d03c028c <sid_voice_write_scaled_sr+0x48>
d03c0280:	b124      	cbz	r4, d03c028c <sid_voice_write_scaled_sr+0x48>
d03c0282:	429c      	cmp	r4, r3
d03c0284:	bf36      	itet	cc
d03c0286:	1b1b      	subcc	r3, r3, r4
d03c0288:	2300      	movcs	r3, #0
d03c028a:	b2db      	uxtbcc	r3, r3
d03c028c:	ea41 1303 	orr.w	r3, r1, r3, lsl #4
d03c0290:	1d91      	adds	r1, r2, #6
d03c0292:	bc70      	pop	{r4, r5, r6}
d03c0294:	b2da      	uxtb	r2, r3
d03c0296:	b2c9      	uxtb	r1, r1
d03c0298:	f7ff bfb8 	b.w	d03c020c <sid_write>
d03c029c:	230f      	movs	r3, #15
d03c029e:	e7e8      	b.n	d03c0272 <sid_voice_write_scaled_sr+0x2e>

d03c02a0 <sid_voice_apply_note_offset>:
d03c02a0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d03c02a2:	4606      	mov	r6, r0
d03c02a4:	4608      	mov	r0, r1
d03c02a6:	4615      	mov	r5, r2
d03c02a8:	f9b6 4020 	ldrsh.w	r4, [r6, #32]
d03c02ac:	7af2      	ldrb	r2, [r6, #11]
d03c02ae:	2c00      	cmp	r4, #0
d03c02b0:	f886 3022 	strb.w	r3, [r6, #34]	; 0x22
d03c02b4:	4413      	add	r3, r2
d03c02b6:	bfa9      	itett	ge
d03c02b8:	f44f 31c0 	movge.w	r1, #98304	; 0x18000
d03c02bc:	eb04 0444 	addlt.w	r4, r4, r4, lsl #1
d03c02c0:	4361      	mulge	r1, r4
d03c02c2:	f641 74ff 	movwge	r4, #8191	; 0x1fff
d03c02c6:	bfb4      	ite	lt
d03c02c8:	00a4      	lsllt	r4, r4, #2
d03c02ca:	fbb1 f4f4 	udivge	r4, r1, r4
d03c02ce:	2c00      	cmp	r4, #0
d03c02d0:	4621      	mov	r1, r4
d03c02d2:	bfbc      	itt	lt
d03c02d4:	f504 51ff 	addlt.w	r1, r4, #8160	; 0x1fe0
d03c02d8:	311f      	addlt	r1, #31
d03c02da:	4267      	negs	r7, r4
d03c02dc:	f3c4 040c 	ubfx	r4, r4, #0, #13
d03c02e0:	f3c7 070c 	ubfx	r7, r7, #0, #13
d03c02e4:	ea4f 3161 	mov.w	r1, r1, asr #13
d03c02e8:	bf58      	it	pl
d03c02ea:	427c      	negpl	r4, r7
d03c02ec:	2c00      	cmp	r4, #0
d03c02ee:	bfbc      	itt	lt
d03c02f0:	f101 31ff 	addlt.w	r1, r1, #4294967295	; 0xffffffff
d03c02f4:	f504 5400 	addlt.w	r4, r4, #8192	; 0x2000
d03c02f8:	185b      	adds	r3, r3, r1
d03c02fa:	d423      	bmi.n	d03c0344 <sid_voice_apply_note_offset+0xa4>
d03c02fc:	2b7e      	cmp	r3, #126	; 0x7e
d03c02fe:	dd01      	ble.n	d03c0304 <sid_voice_apply_note_offset+0x64>
d03c0300:	237f      	movs	r3, #127	; 0x7f
d03c0302:	2400      	movs	r4, #0
d03c0304:	4911      	ldr	r1, [pc, #68]	; (d03c034c <sid_voice_apply_note_offset+0xac>)
d03c0306:	2b7f      	cmp	r3, #127	; 0x7f
d03c0308:	9001      	str	r0, [sp, #4]
d03c030a:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
d03c030e:	bf18      	it	ne
d03c0310:	3301      	addne	r3, #1
d03c0312:	f831 3013 	ldrh.w	r3, [r1, r3, lsl #1]
d03c0316:	4629      	mov	r1, r5
d03c0318:	1a9b      	subs	r3, r3, r2
d03c031a:	435c      	muls	r4, r3
d03c031c:	bf44      	itt	mi
d03c031e:	f504 54ff 	addmi.w	r4, r4, #8160	; 0x1fe0
d03c0322:	341f      	addmi	r4, #31
d03c0324:	eb02 3464 	add.w	r4, r2, r4, asr #13
d03c0328:	b2a4      	uxth	r4, r4
d03c032a:	b2e2      	uxtb	r2, r4
d03c032c:	83f4      	strh	r4, [r6, #30]
d03c032e:	f7ff ff6d 	bl	d03c020c <sid_write>
d03c0332:	1c69      	adds	r1, r5, #1
d03c0334:	0a22      	lsrs	r2, r4, #8
d03c0336:	9801      	ldr	r0, [sp, #4]
d03c0338:	b2c9      	uxtb	r1, r1
d03c033a:	b003      	add	sp, #12
d03c033c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d03c0340:	f7ff bf64 	b.w	d03c020c <sid_write>
d03c0344:	2400      	movs	r4, #0
d03c0346:	4623      	mov	r3, r4
d03c0348:	e7dc      	b.n	d03c0304 <sid_voice_apply_note_offset+0x64>
d03c034a:	bf00      	nop
d03c034c:	d03cb1cc 	.word	0xd03cb1cc

d03c0350 <sid_voice_clear_gate>:
d03c0350:	4b05      	ldr	r3, [pc, #20]	; (d03c0368 <sid_voice_clear_gate+0x18>)
d03c0352:	eb03 1340 	add.w	r3, r3, r0, lsl #5
d03c0356:	440b      	add	r3, r1
d03c0358:	3104      	adds	r1, #4
d03c035a:	791a      	ldrb	r2, [r3, #4]
d03c035c:	b2c9      	uxtb	r1, r1
d03c035e:	f002 02fe 	and.w	r2, r2, #254	; 0xfe
d03c0362:	f7ff bf53 	b.w	d03c020c <sid_write>
d03c0366:	bf00      	nop
d03c0368:	d03ccc88 	.word	0xd03ccc88

d03c036c <sid_voice_hard_silence>:
d03c036c:	b538      	push	{r3, r4, r5, lr}
d03c036e:	460c      	mov	r4, r1
d03c0370:	3104      	adds	r1, #4
d03c0372:	2208      	movs	r2, #8
d03c0374:	4605      	mov	r5, r0
d03c0376:	b2c9      	uxtb	r1, r1
d03c0378:	f7ff ff48 	bl	d03c020c <sid_write>
d03c037c:	1d61      	adds	r1, r4, #5
d03c037e:	4628      	mov	r0, r5
d03c0380:	2200      	movs	r2, #0
d03c0382:	b2c9      	uxtb	r1, r1
d03c0384:	f7ff ff42 	bl	d03c020c <sid_write>
d03c0388:	1da1      	adds	r1, r4, #6
d03c038a:	4628      	mov	r0, r5
d03c038c:	2200      	movs	r2, #0
d03c038e:	b2c9      	uxtb	r1, r1
d03c0390:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d03c0394:	f7ff bf3a 	b.w	d03c020c <sid_write>

d03c0398 <get_voice_target>:
d03c0398:	2303      	movs	r3, #3
d03c039a:	fbb0 f3f3 	udiv	r3, r0, r3
d03c039e:	700b      	strb	r3, [r1, #0]
d03c03a0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d03c03a4:	1ac0      	subs	r0, r0, r3
d03c03a6:	ebc0 00c0 	rsb	r0, r0, r0, lsl #3
d03c03aa:	7010      	strb	r0, [r2, #0]
d03c03ac:	4770      	bx	lr
	...

d03c03b0 <sid_voice_set_program>:
d03c03b0:	2805      	cmp	r0, #5
d03c03b2:	4603      	mov	r3, r0
d03c03b4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d03c03b6:	d856      	bhi.n	d03c0466 <sid_voice_set_program+0xb6>
d03c03b8:	0608      	lsls	r0, r1, #24
d03c03ba:	d454      	bmi.n	d03c0466 <sid_voice_set_program+0xb6>
d03c03bc:	482c      	ldr	r0, [pc, #176]	; (d03c0470 <sid_voice_set_program+0xc0>)
d03c03be:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
d03c03c2:	2800      	cmp	r0, #0
d03c03c4:	d04f      	beq.n	d03c0466 <sid_voice_set_program+0xb6>
d03c03c6:	2138      	movs	r1, #56	; 0x38
d03c03c8:	4c2a      	ldr	r4, [pc, #168]	; (d03c0474 <sid_voice_set_program+0xc4>)
d03c03ca:	4359      	muls	r1, r3
d03c03cc:	1865      	adds	r5, r4, r1
d03c03ce:	5060      	str	r0, [r4, r1]
d03c03d0:	2100      	movs	r1, #0
d03c03d2:	6068      	str	r0, [r5, #4]
d03c03d4:	72ea      	strb	r2, [r5, #11]
d03c03d6:	7369      	strb	r1, [r5, #13]
d03c03d8:	73a9      	strb	r1, [r5, #14]
d03c03da:	f810 6021 	ldrb.w	r6, [r0, r1, lsl #2]
d03c03de:	2e0f      	cmp	r6, #15
d03c03e0:	d043      	beq.n	d03c046a <sid_voice_set_program+0xba>
d03c03e2:	2e13      	cmp	r6, #19
d03c03e4:	d041      	beq.n	d03c046a <sid_voice_set_program+0xba>
d03c03e6:	b11e      	cbz	r6, d03c03f0 <sid_voice_set_program+0x40>
d03c03e8:	3101      	adds	r1, #1
d03c03ea:	2960      	cmp	r1, #96	; 0x60
d03c03ec:	d1f5      	bne.n	d03c03da <sid_voice_set_program+0x2a>
d03c03ee:	2600      	movs	r6, #0
d03c03f0:	2038      	movs	r0, #56	; 0x38
d03c03f2:	2100      	movs	r1, #0
d03c03f4:	f44f 3780 	mov.w	r7, #65536	; 0x10000
d03c03f8:	f012 0f80 	tst.w	r2, #128	; 0x80
d03c03fc:	fb00 f003 	mul.w	r0, r0, r3
d03c0400:	bf18      	it	ne
d03c0402:	227f      	movne	r2, #127	; 0x7f
d03c0404:	1825      	adds	r5, r4, r0
d03c0406:	73ee      	strb	r6, [r5, #15]
d03c0408:	4e1b      	ldr	r6, [pc, #108]	; (d03c0478 <sid_voice_set_program+0xc8>)
d03c040a:	8129      	strh	r1, [r5, #8]
d03c040c:	5187      	str	r7, [r0, r6]
d03c040e:	3610      	adds	r6, #16
d03c0410:	7529      	strb	r1, [r5, #20]
d03c0412:	f04f 7780 	mov.w	r7, #16777216	; 0x1000000
d03c0416:	82e9      	strh	r1, [r5, #22]
d03c0418:	8329      	strh	r1, [r5, #24]
d03c041a:	8369      	strh	r1, [r5, #26]
d03c041c:	83a9      	strh	r1, [r5, #28]
d03c041e:	5181      	str	r1, [r0, r6]
d03c0420:	3030      	adds	r0, #48	; 0x30
d03c0422:	84a9      	strh	r1, [r5, #36]	; 0x24
d03c0424:	1826      	adds	r6, r4, r0
d03c0426:	85e9      	strh	r1, [r5, #46]	; 0x2e
d03c0428:	f885 1028 	strb.w	r1, [r5, #40]	; 0x28
d03c042c:	5027      	str	r7, [r4, r0]
d03c042e:	2403      	movs	r4, #3
d03c0430:	6071      	str	r1, [r6, #4]
d03c0432:	fbb3 f4f4 	udiv	r4, r3, r4
d03c0436:	b2e0      	uxtb	r0, r4
d03c0438:	eb04 0444 	add.w	r4, r4, r4, lsl #1
d03c043c:	9001      	str	r0, [sp, #4]
d03c043e:	1b1b      	subs	r3, r3, r4
d03c0440:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
d03c0444:	b2dc      	uxtb	r4, r3
d03c0446:	4b0d      	ldr	r3, [pc, #52]	; (d03c047c <sid_voice_set_program+0xcc>)
d03c0448:	f833 6012 	ldrh.w	r6, [r3, r2, lsl #1]
d03c044c:	4621      	mov	r1, r4
d03c044e:	b2f2      	uxtb	r2, r6
d03c0450:	83ee      	strh	r6, [r5, #30]
d03c0452:	f7ff fedb 	bl	d03c020c <sid_write>
d03c0456:	1c61      	adds	r1, r4, #1
d03c0458:	0a32      	lsrs	r2, r6, #8
d03c045a:	9801      	ldr	r0, [sp, #4]
d03c045c:	b2c9      	uxtb	r1, r1
d03c045e:	f7ff fed5 	bl	d03c020c <sid_write>
d03c0462:	2301      	movs	r3, #1
d03c0464:	72ab      	strb	r3, [r5, #10]
d03c0466:	b003      	add	sp, #12
d03c0468:	bdf0      	pop	{r4, r5, r6, r7, pc}
d03c046a:	2601      	movs	r6, #1
d03c046c:	e7c0      	b.n	d03c03f0 <sid_voice_set_program+0x40>
d03c046e:	bf00      	nop
d03c0470:	d03cc608 	.word	0xd03cc608
d03c0474:	d03cf540 	.word	0xd03cf540
d03c0478:	d03cf550 	.word	0xd03cf550
d03c047c:	d03cb1cc 	.word	0xd03cb1cc

d03c0480 <sid_voice_note_off>:
d03c0480:	2805      	cmp	r0, #5
d03c0482:	4601      	mov	r1, r0
d03c0484:	b570      	push	{r4, r5, r6, lr}
d03c0486:	d81f      	bhi.n	d03c04c8 <sid_voice_note_off+0x48>
d03c0488:	4b17      	ldr	r3, [pc, #92]	; (d03c04e8 <sid_voice_note_off+0x68>)
d03c048a:	2438      	movs	r4, #56	; 0x38
d03c048c:	fb04 3400 	mla	r4, r4, r0, r3
d03c0490:	7aa3      	ldrb	r3, [r4, #10]
d03c0492:	b1cb      	cbz	r3, d03c04c8 <sid_voice_note_off+0x48>
d03c0494:	2303      	movs	r3, #3
d03c0496:	7be5      	ldrb	r5, [r4, #15]
d03c0498:	2601      	movs	r6, #1
d03c049a:	fbb0 f3f3 	udiv	r3, r0, r3
d03c049e:	b2d8      	uxtb	r0, r3
d03c04a0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d03c04a4:	1ac9      	subs	r1, r1, r3
d03c04a6:	ebc1 01c1 	rsb	r1, r1, r1, lsl #3
d03c04aa:	b2c9      	uxtb	r1, r1
d03c04ac:	b16d      	cbz	r5, d03c04ca <sid_voice_note_off+0x4a>
d03c04ae:	f7ff ff4f 	bl	d03c0350 <sid_voice_clear_gate>
d03c04b2:	2300      	movs	r3, #0
d03c04b4:	73a6      	strb	r6, [r4, #14]
d03c04b6:	8123      	strh	r3, [r4, #8]
d03c04b8:	85e3      	strh	r3, [r4, #46]	; 0x2e
d03c04ba:	84a3      	strh	r3, [r4, #36]	; 0x24
d03c04bc:	f884 3028 	strb.w	r3, [r4, #40]	; 0x28
d03c04c0:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
d03c04c4:	f884 3034 	strb.w	r3, [r4, #52]	; 0x34
d03c04c8:	bd70      	pop	{r4, r5, r6, pc}
d03c04ca:	f7ff ff41 	bl	d03c0350 <sid_voice_clear_gate>
d03c04ce:	8a63      	ldrh	r3, [r4, #18]
d03c04d0:	73a6      	strb	r6, [r4, #14]
d03c04d2:	7426      	strb	r6, [r4, #16]
d03c04d4:	8123      	strh	r3, [r4, #8]
d03c04d6:	85e5      	strh	r5, [r4, #46]	; 0x2e
d03c04d8:	84a5      	strh	r5, [r4, #36]	; 0x24
d03c04da:	f884 5028 	strb.w	r5, [r4, #40]	; 0x28
d03c04de:	f884 5030 	strb.w	r5, [r4, #48]	; 0x30
d03c04e2:	f884 5034 	strb.w	r5, [r4, #52]	; 0x34
d03c04e6:	e7ef      	b.n	d03c04c8 <sid_voice_note_off+0x48>
d03c04e8:	d03cf540 	.word	0xd03cf540

d03c04ec <sid_voice_note_on>:
d03c04ec:	2805      	cmp	r0, #5
d03c04ee:	b4f0      	push	{r4, r5, r6, r7}
d03c04f0:	4604      	mov	r4, r0
d03c04f2:	4616      	mov	r6, r2
d03c04f4:	d804      	bhi.n	d03c0500 <sid_voice_note_on+0x14>
d03c04f6:	b93b      	cbnz	r3, d03c0508 <sid_voice_note_on+0x1c>
d03c04f8:	4620      	mov	r0, r4
d03c04fa:	bcf0      	pop	{r4, r5, r6, r7}
d03c04fc:	f7ff bfc0 	b.w	d03c0480 <sid_voice_note_off>
d03c0500:	2b00      	cmp	r3, #0
d03c0502:	d0f9      	beq.n	d03c04f8 <sid_voice_note_on+0xc>
d03c0504:	bcf0      	pop	{r4, r5, r6, r7}
d03c0506:	4770      	bx	lr
d03c0508:	f8df c024 	ldr.w	ip, [pc, #36]	; d03c0530 <sid_voice_note_on+0x44>
d03c050c:	2738      	movs	r7, #56	; 0x38
d03c050e:	2980      	cmp	r1, #128	; 0x80
d03c0510:	fb07 c700 	mla	r7, r7, r0, ip
d03c0514:	733b      	strb	r3, [r7, #12]
d03c0516:	d001      	beq.n	d03c051c <sid_voice_note_on+0x30>
d03c0518:	2909      	cmp	r1, #9
d03c051a:	d105      	bne.n	d03c0528 <sid_voice_note_on+0x3c>
d03c051c:	4631      	mov	r1, r6
d03c051e:	4620      	mov	r0, r4
d03c0520:	461a      	mov	r2, r3
d03c0522:	bcf0      	pop	{r4, r5, r6, r7}
d03c0524:	f7ff bdfc 	b.w	d03c0120 <sid_midi_trigger_percussion>
d03c0528:	bcf0      	pop	{r4, r5, r6, r7}
d03c052a:	f7ff bf41 	b.w	d03c03b0 <sid_voice_set_program>
d03c052e:	bf00      	nop
d03c0530:	d03cf540 	.word	0xd03cf540

d03c0534 <sid_voice_note_kill>:
d03c0534:	2805      	cmp	r0, #5
d03c0536:	b510      	push	{r4, lr}
d03c0538:	4604      	mov	r4, r0
d03c053a:	d81c      	bhi.n	d03c0576 <sid_voice_note_kill+0x42>
d03c053c:	2003      	movs	r0, #3
d03c053e:	fbb4 f0f0 	udiv	r0, r4, r0
d03c0542:	eb00 0140 	add.w	r1, r0, r0, lsl #1
d03c0546:	1a61      	subs	r1, r4, r1
d03c0548:	ebc1 01c1 	rsb	r1, r1, r1, lsl #3
d03c054c:	b2c9      	uxtb	r1, r1
d03c054e:	f7ff ff0d 	bl	d03c036c <sid_voice_hard_silence>
d03c0552:	2338      	movs	r3, #56	; 0x38
d03c0554:	4808      	ldr	r0, [pc, #32]	; (d03c0578 <sid_voice_note_kill+0x44>)
d03c0556:	2201      	movs	r2, #1
d03c0558:	fb03 0004 	mla	r0, r3, r4, r0
d03c055c:	2300      	movs	r3, #0
d03c055e:	7382      	strb	r2, [r0, #14]
d03c0560:	7283      	strb	r3, [r0, #10]
d03c0562:	7403      	strb	r3, [r0, #16]
d03c0564:	8103      	strh	r3, [r0, #8]
d03c0566:	85c3      	strh	r3, [r0, #46]	; 0x2e
d03c0568:	8483      	strh	r3, [r0, #36]	; 0x24
d03c056a:	f880 3028 	strb.w	r3, [r0, #40]	; 0x28
d03c056e:	f880 3030 	strb.w	r3, [r0, #48]	; 0x30
d03c0572:	f880 3034 	strb.w	r3, [r0, #52]	; 0x34
d03c0576:	bd10      	pop	{r4, pc}
d03c0578:	d03cf540 	.word	0xd03cf540

d03c057c <sid_voice_pitch_bend>:
d03c057c:	2805      	cmp	r0, #5
d03c057e:	b410      	push	{r4}
d03c0580:	d819      	bhi.n	d03c05b6 <sid_voice_pitch_bend+0x3a>
d03c0582:	4c0e      	ldr	r4, [pc, #56]	; (d03c05bc <sid_voice_pitch_bend+0x40>)
d03c0584:	2338      	movs	r3, #56	; 0x38
d03c0586:	fb03 4300 	mla	r3, r3, r0, r4
d03c058a:	7a9a      	ldrb	r2, [r3, #10]
d03c058c:	b19a      	cbz	r2, d03c05b6 <sid_voice_pitch_bend+0x3a>
d03c058e:	8419      	strh	r1, [r3, #32]
d03c0590:	2103      	movs	r1, #3
d03c0592:	f993 3022 	ldrsb.w	r3, [r3, #34]	; 0x22
d03c0596:	fbb0 f1f1 	udiv	r1, r0, r1
d03c059a:	eb01 0241 	add.w	r2, r1, r1, lsl #1
d03c059e:	1a82      	subs	r2, r0, r2
d03c05a0:	ebc0 00c0 	rsb	r0, r0, r0, lsl #3
d03c05a4:	ebc2 02c2 	rsb	r2, r2, r2, lsl #3
d03c05a8:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
d03c05ac:	f85d 4b04 	ldr.w	r4, [sp], #4
d03c05b0:	b2d2      	uxtb	r2, r2
d03c05b2:	f7ff be75 	b.w	d03c02a0 <sid_voice_apply_note_offset>
d03c05b6:	f85d 4b04 	ldr.w	r4, [sp], #4
d03c05ba:	4770      	bx	lr
d03c05bc:	d03cf540 	.word	0xd03cf540

d03c05c0 <sid_voice_set_velocity>:
d03c05c0:	2805      	cmp	r0, #5
d03c05c2:	b410      	push	{r4}
d03c05c4:	d819      	bhi.n	d03c05fa <sid_voice_set_velocity+0x3a>
d03c05c6:	4c0e      	ldr	r4, [pc, #56]	; (d03c0600 <sid_voice_set_velocity+0x40>)
d03c05c8:	2338      	movs	r3, #56	; 0x38
d03c05ca:	fb03 4300 	mla	r3, r3, r0, r4
d03c05ce:	7a9a      	ldrb	r2, [r3, #10]
d03c05d0:	b19a      	cbz	r2, d03c05fa <sid_voice_set_velocity+0x3a>
d03c05d2:	7b5a      	ldrb	r2, [r3, #13]
d03c05d4:	b18a      	cbz	r2, d03c05fa <sid_voice_set_velocity+0x3a>
d03c05d6:	7319      	strb	r1, [r3, #12]
d03c05d8:	2103      	movs	r1, #3
d03c05da:	fbb0 f1f1 	udiv	r1, r0, r1
d03c05de:	eb01 0241 	add.w	r2, r1, r1, lsl #1
d03c05e2:	1a82      	subs	r2, r0, r2
d03c05e4:	ebc0 00c0 	rsb	r0, r0, r0, lsl #3
d03c05e8:	ebc2 02c2 	rsb	r2, r2, r2, lsl #3
d03c05ec:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
d03c05f0:	f85d 4b04 	ldr.w	r4, [sp], #4
d03c05f4:	b2d2      	uxtb	r2, r2
d03c05f6:	f7ff be25 	b.w	d03c0244 <sid_voice_write_scaled_sr>
d03c05fa:	f85d 4b04 	ldr.w	r4, [sp], #4
d03c05fe:	4770      	bx	lr
d03c0600:	d03cf540 	.word	0xd03cf540

d03c0604 <sid_voice_get_vm_debug>:
d03c0604:	2805      	cmp	r0, #5
d03c0606:	b510      	push	{r4, lr}
d03c0608:	d81b      	bhi.n	d03c0642 <sid_voice_get_vm_debug+0x3e>
d03c060a:	4c0f      	ldr	r4, [pc, #60]	; (d03c0648 <sid_voice_get_vm_debug+0x44>)
d03c060c:	b121      	cbz	r1, d03c0618 <sid_voice_get_vm_debug+0x14>
d03c060e:	2338      	movs	r3, #56	; 0x38
d03c0610:	fb03 4300 	mla	r3, r3, r0, r4
d03c0614:	7c5b      	ldrb	r3, [r3, #17]
d03c0616:	700b      	strb	r3, [r1, #0]
d03c0618:	b14a      	cbz	r2, d03c062e <sid_voice_get_vm_debug+0x2a>
d03c061a:	2338      	movs	r3, #56	; 0x38
d03c061c:	fb03 4300 	mla	r3, r3, r0, r4
d03c0620:	7a99      	ldrb	r1, [r3, #10]
d03c0622:	b961      	cbnz	r1, d03c063e <sid_voice_get_vm_debug+0x3a>
d03c0624:	7c1b      	ldrb	r3, [r3, #16]
d03c0626:	3b00      	subs	r3, #0
d03c0628:	bf18      	it	ne
d03c062a:	2301      	movne	r3, #1
d03c062c:	7013      	strb	r3, [r2, #0]
d03c062e:	2338      	movs	r3, #56	; 0x38
d03c0630:	fb03 4000 	mla	r0, r3, r0, r4
d03c0634:	6840      	ldr	r0, [r0, #4]
d03c0636:	3800      	subs	r0, #0
d03c0638:	bf18      	it	ne
d03c063a:	2001      	movne	r0, #1
d03c063c:	bd10      	pop	{r4, pc}
d03c063e:	2301      	movs	r3, #1
d03c0640:	e7f4      	b.n	d03c062c <sid_voice_get_vm_debug+0x28>
d03c0642:	2000      	movs	r0, #0
d03c0644:	e7fa      	b.n	d03c063c <sid_voice_get_vm_debug+0x38>
d03c0646:	bf00      	nop
d03c0648:	d03cf540 	.word	0xd03cf540

d03c064c <sid_soundfont_init>:
d03c064c:	b508      	push	{r3, lr}
d03c064e:	220f      	movs	r2, #15
d03c0650:	2118      	movs	r1, #24
d03c0652:	2000      	movs	r0, #0
d03c0654:	f7ff fdda 	bl	d03c020c <sid_write>
d03c0658:	220f      	movs	r2, #15
d03c065a:	2118      	movs	r1, #24
d03c065c:	2001      	movs	r0, #1
d03c065e:	f7ff fdd5 	bl	d03c020c <sid_write>
d03c0662:	4b03      	ldr	r3, [pc, #12]	; (d03c0670 <sid_soundfont_init+0x24>)
d03c0664:	220f      	movs	r2, #15
d03c0666:	761a      	strb	r2, [r3, #24]
d03c0668:	f883 2038 	strb.w	r2, [r3, #56]	; 0x38
d03c066c:	bd08      	pop	{r3, pc}
d03c066e:	bf00      	nop
d03c0670:	d03ccc88 	.word	0xd03ccc88

d03c0674 <sid_midi_isr>:
d03c0674:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c0678:	4caf      	ldr	r4, [pc, #700]	; (d03c0938 <sid_midi_isr+0x2c4>)
d03c067a:	f04f 0800 	mov.w	r8, #0
d03c067e:	46a3      	mov	fp, r4
d03c0680:	7aa3      	ldrb	r3, [r4, #10]
d03c0682:	fa5f f688 	uxtb.w	r6, r8
d03c0686:	b17b      	cbz	r3, d03c06a8 <sid_midi_isr+0x34>
d03c0688:	2303      	movs	r3, #3
d03c068a:	fbb6 f3f3 	udiv	r3, r6, r3
d03c068e:	b2df      	uxtb	r7, r3
d03c0690:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d03c0694:	1af6      	subs	r6, r6, r3
d03c0696:	7c23      	ldrb	r3, [r4, #16]
d03c0698:	ebc6 06c6 	rsb	r6, r6, r6, lsl #3
d03c069c:	b2f6      	uxtb	r6, r6
d03c069e:	b19b      	cbz	r3, d03c06c8 <sid_midi_isr+0x54>
d03c06a0:	8925      	ldrh	r5, [r4, #8]
d03c06a2:	b155      	cbz	r5, d03c06ba <sid_midi_isr+0x46>
d03c06a4:	3d01      	subs	r5, #1
d03c06a6:	8125      	strh	r5, [r4, #8]
d03c06a8:	f108 0801 	add.w	r8, r8, #1
d03c06ac:	3438      	adds	r4, #56	; 0x38
d03c06ae:	f1b8 0f06 	cmp.w	r8, #6
d03c06b2:	d1e5      	bne.n	d03c0680 <sid_midi_isr+0xc>
d03c06b4:	b003      	add	sp, #12
d03c06b6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c06ba:	4631      	mov	r1, r6
d03c06bc:	4638      	mov	r0, r7
d03c06be:	f7ff fe55 	bl	d03c036c <sid_voice_hard_silence>
d03c06c2:	7425      	strb	r5, [r4, #16]
d03c06c4:	72a5      	strb	r5, [r4, #10]
d03c06c6:	e7ef      	b.n	d03c06a8 <sid_midi_isr+0x34>
d03c06c8:	f9b4 302e 	ldrsh.w	r3, [r4, #46]	; 0x2e
d03c06cc:	b183      	cbz	r3, d03c06f0 <sid_midi_isr+0x7c>
d03c06ce:	8be2      	ldrh	r2, [r4, #30]
d03c06d0:	4631      	mov	r1, r6
d03c06d2:	4638      	mov	r0, r7
d03c06d4:	441a      	add	r2, r3
d03c06d6:	f382 0210 	usat	r2, #16, r2
d03c06da:	83e2      	strh	r2, [r4, #30]
d03c06dc:	b2d2      	uxtb	r2, r2
d03c06de:	f7ff fd95 	bl	d03c020c <sid_write>
d03c06e2:	8be2      	ldrh	r2, [r4, #30]
d03c06e4:	1c71      	adds	r1, r6, #1
d03c06e6:	4638      	mov	r0, r7
d03c06e8:	0a12      	lsrs	r2, r2, #8
d03c06ea:	b2c9      	uxtb	r1, r1
d03c06ec:	f7ff fd8e 	bl	d03c020c <sid_write>
d03c06f0:	f9b4 3024 	ldrsh.w	r3, [r4, #36]	; 0x24
d03c06f4:	b183      	cbz	r3, d03c0718 <sid_midi_isr+0xa4>
d03c06f6:	8be2      	ldrh	r2, [r4, #30]
d03c06f8:	4631      	mov	r1, r6
d03c06fa:	4638      	mov	r0, r7
d03c06fc:	441a      	add	r2, r3
d03c06fe:	f382 0210 	usat	r2, #16, r2
d03c0702:	83e2      	strh	r2, [r4, #30]
d03c0704:	b2d2      	uxtb	r2, r2
d03c0706:	f7ff fd81 	bl	d03c020c <sid_write>
d03c070a:	8be2      	ldrh	r2, [r4, #30]
d03c070c:	1c71      	adds	r1, r6, #1
d03c070e:	4638      	mov	r0, r7
d03c0710:	0a12      	lsrs	r2, r2, #8
d03c0712:	b2c9      	uxtb	r1, r1
d03c0714:	f7ff fd7a 	bl	d03c020c <sid_write>
d03c0718:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d03c071c:	b1ab      	cbz	r3, d03c074a <sid_midi_isr+0xd6>
d03c071e:	f894 3029 	ldrb.w	r3, [r4, #41]	; 0x29
d03c0722:	2203      	movs	r2, #3
d03c0724:	4639      	mov	r1, r7
d03c0726:	4620      	mov	r0, r4
d03c0728:	3301      	adds	r3, #1
d03c072a:	fbb3 f2f2 	udiv	r2, r3, r2
d03c072e:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d03c0732:	1a9b      	subs	r3, r3, r2
d03c0734:	2238      	movs	r2, #56	; 0x38
d03c0736:	fb02 b208 	mla	r2, r2, r8, fp
d03c073a:	f884 3029 	strb.w	r3, [r4, #41]	; 0x29
d03c073e:	4413      	add	r3, r2
d03c0740:	4632      	mov	r2, r6
d03c0742:	f993 302a 	ldrsb.w	r3, [r3, #42]	; 0x2a
d03c0746:	f7ff fdab 	bl	d03c02a0 <sid_voice_apply_note_offset>
d03c074a:	f894 5030 	ldrb.w	r5, [r4, #48]	; 0x30
d03c074e:	b335      	cbz	r5, d03c079e <sid_midi_isr+0x12a>
d03c0750:	f894 2031 	ldrb.w	r2, [r4, #49]	; 0x31
d03c0754:	b31a      	cbz	r2, d03c079e <sid_midi_isr+0x12a>
d03c0756:	f894 3032 	ldrb.w	r3, [r4, #50]	; 0x32
d03c075a:	4631      	mov	r1, r6
d03c075c:	4638      	mov	r0, r7
d03c075e:	3301      	adds	r3, #1
d03c0760:	b2db      	uxtb	r3, r3
d03c0762:	429a      	cmp	r2, r3
d03c0764:	bf97      	itett	ls
d03c0766:	2300      	movls	r3, #0
d03c0768:	f884 3032 	strbhi.w	r3, [r4, #50]	; 0x32
d03c076c:	f884 3032 	strbls.w	r3, [r4, #50]	; 0x32
d03c0770:	f894 3033 	ldrbls.w	r3, [r4, #51]	; 0x33
d03c0774:	bf9c      	itt	ls
d03c0776:	425b      	negls	r3, r3
d03c0778:	f884 3033 	strbls.w	r3, [r4, #51]	; 0x33
d03c077c:	8be3      	ldrh	r3, [r4, #30]
d03c077e:	f994 2033 	ldrsb.w	r2, [r4, #51]	; 0x33
d03c0782:	fb15 3502 	smlabb	r5, r5, r2, r3
d03c0786:	f385 0510 	usat	r5, #16, r5
d03c078a:	b2ea      	uxtb	r2, r5
d03c078c:	f7ff fd3e 	bl	d03c020c <sid_write>
d03c0790:	1c71      	adds	r1, r6, #1
d03c0792:	f3c5 2207 	ubfx	r2, r5, #8, #8
d03c0796:	4638      	mov	r0, r7
d03c0798:	b2c9      	uxtb	r1, r1
d03c079a:	f7ff fd37 	bl	d03c020c <sid_write>
d03c079e:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d03c07a2:	b163      	cbz	r3, d03c07be <sid_midi_isr+0x14a>
d03c07a4:	f894 2035 	ldrb.w	r2, [r4, #53]	; 0x35
d03c07a8:	b14a      	cbz	r2, d03c07be <sid_midi_isr+0x14a>
d03c07aa:	7b63      	ldrb	r3, [r4, #13]
d03c07ac:	b13b      	cbz	r3, d03c07be <sid_midi_isr+0x14a>
d03c07ae:	f894 3036 	ldrb.w	r3, [r4, #54]	; 0x36
d03c07b2:	3301      	adds	r3, #1
d03c07b4:	b2db      	uxtb	r3, r3
d03c07b6:	429a      	cmp	r2, r3
d03c07b8:	d908      	bls.n	d03c07cc <sid_midi_isr+0x158>
d03c07ba:	f884 3036 	strb.w	r3, [r4, #54]	; 0x36
d03c07be:	8923      	ldrh	r3, [r4, #8]
d03c07c0:	2b00      	cmp	r3, #0
d03c07c2:	f000 8156 	beq.w	d03c0a72 <sid_midi_isr+0x3fe>
d03c07c6:	3b01      	subs	r3, #1
d03c07c8:	8123      	strh	r3, [r4, #8]
d03c07ca:	e76d      	b.n	d03c06a8 <sid_midi_isr+0x34>
d03c07cc:	2300      	movs	r3, #0
d03c07ce:	4632      	mov	r2, r6
d03c07d0:	4639      	mov	r1, r7
d03c07d2:	4620      	mov	r0, r4
d03c07d4:	f884 3036 	strb.w	r3, [r4, #54]	; 0x36
d03c07d8:	f894 3037 	ldrb.w	r3, [r4, #55]	; 0x37
d03c07dc:	fab3 f383 	clz	r3, r3
d03c07e0:	095b      	lsrs	r3, r3, #5
d03c07e2:	f884 3037 	strb.w	r3, [r4, #55]	; 0x37
d03c07e6:	f7ff fd2d 	bl	d03c0244 <sid_voice_write_scaled_sr>
d03c07ea:	e7e8      	b.n	d03c07be <sid_midi_isr+0x14a>
d03c07ec:	6822      	ldr	r2, [r4, #0]
d03c07ee:	6861      	ldr	r1, [r4, #4]
d03c07f0:	f892 c000 	ldrb.w	ip, [r2]
d03c07f4:	eba2 0e01 	sub.w	lr, r2, r1
d03c07f8:	7853      	ldrb	r3, [r2, #1]
d03c07fa:	8855      	ldrh	r5, [r2, #2]
d03c07fc:	ea4f 00ae 	mov.w	r0, lr, asr #2
d03c0800:	f5be 7fc0 	cmp.w	lr, #384	; 0x180
d03c0804:	bf38      	it	cc
d03c0806:	7460      	strbcc	r0, [r4, #17]
d03c0808:	f1bc 0f15 	cmp.w	ip, #21
d03c080c:	f200 812e 	bhi.w	d03c0a6c <sid_midi_isr+0x3f8>
d03c0810:	e8df f01c 	tbh	[pc, ip, lsl #1]
d03c0814:	002e0016 	.word	0x002e0016
d03c0818:	00390032 	.word	0x00390032
d03c081c:	00850062 	.word	0x00850062
d03c0820:	007e0068 	.word	0x007e0068
d03c0824:	0096008e 	.word	0x0096008e
d03c0828:	01160105 	.word	0x01160105
d03c082c:	00a60126 	.word	0x00a60126
d03c0830:	00c700a8 	.word	0x00c700a8
d03c0834:	00d000b4 	.word	0x00d000b4
d03c0838:	00e100d7 	.word	0x00e100d7
d03c083c:	00ff00eb 	.word	0x00ff00eb
d03c0840:	7ba5      	ldrb	r5, [r4, #14]
d03c0842:	4631      	mov	r1, r6
d03c0844:	4638      	mov	r0, r7
d03c0846:	b185      	cbz	r5, d03c086a <sid_midi_isr+0x1f6>
d03c0848:	f7ff fd82 	bl	d03c0350 <sid_voice_clear_gate>
d03c084c:	2301      	movs	r3, #1
d03c084e:	73a3      	strb	r3, [r4, #14]
d03c0850:	7423      	strb	r3, [r4, #16]
d03c0852:	8a63      	ldrh	r3, [r4, #18]
d03c0854:	8123      	strh	r3, [r4, #8]
d03c0856:	2300      	movs	r3, #0
d03c0858:	85e3      	strh	r3, [r4, #46]	; 0x2e
d03c085a:	84a3      	strh	r3, [r4, #36]	; 0x24
d03c085c:	f884 3028 	strb.w	r3, [r4, #40]	; 0x28
d03c0860:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
d03c0864:	f884 3034 	strb.w	r3, [r4, #52]	; 0x34
d03c0868:	e71e      	b.n	d03c06a8 <sid_midi_isr+0x34>
d03c086a:	f7ff fd71 	bl	d03c0350 <sid_voice_clear_gate>
d03c086e:	e729      	b.n	d03c06c4 <sid_midi_isr+0x50>
d03c0870:	3204      	adds	r2, #4
d03c0872:	8125      	strh	r5, [r4, #8]
d03c0874:	6022      	str	r2, [r4, #0]
d03c0876:	e717      	b.n	d03c06a8 <sid_midi_isr+0x34>
d03c0878:	1d31      	adds	r1, r6, #4
d03c087a:	b2ea      	uxtb	r2, r5
d03c087c:	b2c9      	uxtb	r1, r1
d03c087e:	4638      	mov	r0, r7
d03c0880:	f7ff fcc4 	bl	d03c020c <sid_write>
d03c0884:	e01a      	b.n	d03c08bc <sid_midi_isr+0x248>
d03c0886:	1d71      	adds	r1, r6, #5
d03c0888:	b2eb      	uxtb	r3, r5
d03c088a:	0a2a      	lsrs	r2, r5, #8
d03c088c:	4638      	mov	r0, r7
d03c088e:	b2c9      	uxtb	r1, r1
d03c0890:	7363      	strb	r3, [r4, #13]
d03c0892:	9301      	str	r3, [sp, #4]
d03c0894:	f7ff fcba 	bl	d03c020c <sid_write>
d03c0898:	9b01      	ldr	r3, [sp, #4]
d03c089a:	1db1      	adds	r1, r6, #6
d03c089c:	4638      	mov	r0, r7
d03c089e:	f005 050f 	and.w	r5, r5, #15
d03c08a2:	461a      	mov	r2, r3
d03c08a4:	b2c9      	uxtb	r1, r1
d03c08a6:	f7ff fcb1 	bl	d03c020c <sid_write>
d03c08aa:	4632      	mov	r2, r6
d03c08ac:	4639      	mov	r1, r7
d03c08ae:	4620      	mov	r0, r4
d03c08b0:	f7ff fcc8 	bl	d03c0244 <sid_voice_write_scaled_sr>
d03c08b4:	4b21      	ldr	r3, [pc, #132]	; (d03c093c <sid_midi_isr+0x2c8>)
d03c08b6:	f833 3015 	ldrh.w	r3, [r3, r5, lsl #1]
d03c08ba:	8263      	strh	r3, [r4, #18]
d03c08bc:	6823      	ldr	r3, [r4, #0]
d03c08be:	3304      	adds	r3, #4
d03c08c0:	6023      	str	r3, [r4, #0]
d03c08c2:	7aa3      	ldrb	r3, [r4, #10]
d03c08c4:	2b00      	cmp	r3, #0
d03c08c6:	f43f aeef 	beq.w	d03c06a8 <sid_midi_isr+0x34>
d03c08ca:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
d03c08ce:	f019 09ff 	ands.w	r9, r9, #255	; 0xff
d03c08d2:	d18b      	bne.n	d03c07ec <sid_midi_isr+0x178>
d03c08d4:	2301      	movs	r3, #1
d03c08d6:	e777      	b.n	d03c07c8 <sid_midi_isr+0x154>
d03c08d8:	f3c5 020b 	ubfx	r2, r5, #0, #12
d03c08dc:	84e2      	strh	r2, [r4, #38]	; 0x26
d03c08de:	1cb1      	adds	r1, r6, #2
d03c08e0:	b2d2      	uxtb	r2, r2
d03c08e2:	e00c      	b.n	d03c08fe <sid_midi_isr+0x28a>
d03c08e4:	8ce2      	ldrh	r2, [r4, #38]	; 0x26
d03c08e6:	1cb1      	adds	r1, r6, #2
d03c08e8:	4415      	add	r5, r2
d03c08ea:	b2ad      	uxth	r5, r5
d03c08ec:	f5b5 5f80 	cmp.w	r5, #4096	; 0x1000
d03c08f0:	bf2a      	itet	cs
d03c08f2:	f640 73ff 	movwcs	r3, #4095	; 0xfff
d03c08f6:	84e5      	strhcc	r5, [r4, #38]	; 0x26
d03c08f8:	84e3      	strhcs	r3, [r4, #38]	; 0x26
d03c08fa:	f894 2026 	ldrb.w	r2, [r4, #38]	; 0x26
d03c08fe:	b2c9      	uxtb	r1, r1
d03c0900:	4638      	mov	r0, r7
d03c0902:	f7ff fc83 	bl	d03c020c <sid_write>
d03c0906:	8ce2      	ldrh	r2, [r4, #38]	; 0x26
d03c0908:	1cf1      	adds	r1, r6, #3
d03c090a:	f3c2 2203 	ubfx	r2, r2, #8, #4
d03c090e:	e7b5      	b.n	d03c087c <sid_midi_isr+0x208>
d03c0910:	8ce2      	ldrh	r2, [r4, #38]	; 0x26
d03c0912:	4295      	cmp	r5, r2
d03c0914:	bf96      	itet	ls
d03c0916:	1b52      	subls	r2, r2, r5
d03c0918:	2200      	movhi	r2, #0
d03c091a:	b292      	uxthls	r2, r2
d03c091c:	e7de      	b.n	d03c08dc <sid_midi_isr+0x268>
d03c091e:	b26b      	sxtb	r3, r5
d03c0920:	4632      	mov	r2, r6
d03c0922:	4639      	mov	r1, r7
d03c0924:	4620      	mov	r0, r4
d03c0926:	f884 3023 	strb.w	r3, [r4, #35]	; 0x23
d03c092a:	f7ff fcb9 	bl	d03c02a0 <sid_voice_apply_note_offset>
d03c092e:	e7c5      	b.n	d03c08bc <sid_midi_isr+0x248>
d03c0930:	84a5      	strh	r5, [r4, #36]	; 0x24
d03c0932:	3204      	adds	r2, #4
d03c0934:	e057      	b.n	d03c09e6 <sid_midi_isr+0x372>
d03c0936:	bf00      	nop
d03c0938:	d03cf540 	.word	0xd03cf540
d03c093c:	d03cb2cc 	.word	0xd03cb2cc
d03c0940:	b915      	cbnz	r5, d03c0948 <sid_midi_isr+0x2d4>
d03c0942:	f884 5028 	strb.w	r5, [r4, #40]	; 0x28
d03c0946:	e7f4      	b.n	d03c0932 <sid_midi_isr+0x2be>
d03c0948:	2301      	movs	r3, #1
d03c094a:	f884 502c 	strb.w	r5, [r4, #44]	; 0x2c
d03c094e:	f884 3028 	strb.w	r3, [r4, #40]	; 0x28
d03c0952:	2300      	movs	r3, #0
d03c0954:	f884 302a 	strb.w	r3, [r4, #42]	; 0x2a
d03c0958:	0a2b      	lsrs	r3, r5, #8
d03c095a:	f884 302b 	strb.w	r3, [r4, #43]	; 0x2b
d03c095e:	e7e8      	b.n	d03c0932 <sid_midi_isr+0x2be>
d03c0960:	85e5      	strh	r5, [r4, #46]	; 0x2e
d03c0962:	e7e6      	b.n	d03c0932 <sid_midi_isr+0x2be>
d03c0964:	0a2b      	lsrs	r3, r5, #8
d03c0966:	f884 5031 	strb.w	r5, [r4, #49]	; 0x31
d03c096a:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
d03c096e:	2300      	movs	r3, #0
d03c0970:	f884 3032 	strb.w	r3, [r4, #50]	; 0x32
d03c0974:	2301      	movs	r3, #1
d03c0976:	f884 3033 	strb.w	r3, [r4, #51]	; 0x33
d03c097a:	e7da      	b.n	d03c0932 <sid_midi_isr+0x2be>
d03c097c:	0a2b      	lsrs	r3, r5, #8
d03c097e:	f884 5035 	strb.w	r5, [r4, #53]	; 0x35
d03c0982:	f884 3034 	strb.w	r3, [r4, #52]	; 0x34
d03c0986:	2300      	movs	r3, #0
d03c0988:	f884 3036 	strb.w	r3, [r4, #54]	; 0x36
d03c098c:	f884 3037 	strb.w	r3, [r4, #55]	; 0x37
d03c0990:	7b63      	ldrb	r3, [r4, #13]
d03c0992:	2b00      	cmp	r3, #0
d03c0994:	d092      	beq.n	d03c08bc <sid_midi_isr+0x248>
d03c0996:	4632      	mov	r2, r6
d03c0998:	4639      	mov	r1, r7
d03c099a:	4620      	mov	r0, r4
d03c099c:	f7ff fc52 	bl	d03c0244 <sid_voice_write_scaled_sr>
d03c09a0:	e78c      	b.n	d03c08bc <sid_midi_isr+0x248>
d03c09a2:	7ba3      	ldrb	r3, [r4, #14]
d03c09a4:	2b00      	cmp	r3, #0
d03c09a6:	d1c4      	bne.n	d03c0932 <sid_midi_isr+0x2be>
d03c09a8:	2d00      	cmp	r5, #0
d03c09aa:	d093      	beq.n	d03c08d4 <sid_midi_isr+0x260>
d03c09ac:	eba2 0585 	sub.w	r5, r2, r5, lsl #2
d03c09b0:	6025      	str	r5, [r4, #0]
d03c09b2:	e786      	b.n	d03c08c2 <sid_midi_isr+0x24e>
d03c09b4:	f003 0303 	and.w	r3, r3, #3
d03c09b8:	4453      	add	r3, sl
d03c09ba:	eb0b 0343 	add.w	r3, fp, r3, lsl #1
d03c09be:	82dd      	strh	r5, [r3, #22]
d03c09c0:	e7b7      	b.n	d03c0932 <sid_midi_isr+0x2be>
d03c09c2:	f003 0103 	and.w	r1, r3, #3
d03c09c6:	4451      	add	r1, sl
d03c09c8:	3108      	adds	r1, #8
d03c09ca:	eb0b 0141 	add.w	r1, fp, r1, lsl #1
d03c09ce:	88cb      	ldrh	r3, [r1, #6]
d03c09d0:	441d      	add	r5, r3
d03c09d2:	80cd      	strh	r5, [r1, #6]
d03c09d4:	e7ad      	b.n	d03c0932 <sid_midi_isr+0x2be>
d03c09d6:	7ba3      	ldrb	r3, [r4, #14]
d03c09d8:	2b00      	cmp	r3, #0
d03c09da:	d0aa      	beq.n	d03c0932 <sid_midi_isr+0x2be>
d03c09dc:	6822      	ldr	r2, [r4, #0]
d03c09de:	2d00      	cmp	r5, #0
d03c09e0:	d0a7      	beq.n	d03c0932 <sid_midi_isr+0x2be>
d03c09e2:	eb02 0285 	add.w	r2, r2, r5, lsl #2
d03c09e6:	6022      	str	r2, [r4, #0]
d03c09e8:	e76b      	b.n	d03c08c2 <sid_midi_isr+0x24e>
d03c09ea:	f003 0303 	and.w	r3, r3, #3
d03c09ee:	4453      	add	r3, sl
d03c09f0:	eb0b 0343 	add.w	r3, fp, r3, lsl #1
d03c09f4:	f9b3 1016 	ldrsh.w	r1, [r3, #22]
d03c09f8:	f345 2307 	sbfx	r3, r5, #8, #8
d03c09fc:	4299      	cmp	r1, r3
d03c09fe:	dc98      	bgt.n	d03c0932 <sid_midi_isr+0x2be>
d03c0a00:	6821      	ldr	r1, [r4, #0]
d03c0a02:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
d03c0a06:	bf0c      	ite	eq
d03c0a08:	3104      	addeq	r1, #4
d03c0a0a:	eb01 0185 	addne.w	r1, r1, r5, lsl #2
d03c0a0e:	6021      	str	r1, [r4, #0]
d03c0a10:	e757      	b.n	d03c08c2 <sid_midi_isr+0x24e>
d03c0a12:	6822      	ldr	r2, [r4, #0]
d03c0a14:	2d00      	cmp	r5, #0
d03c0a16:	d08c      	beq.n	d03c0932 <sid_midi_isr+0x2be>
d03c0a18:	eba2 0285 	sub.w	r2, r2, r5, lsl #2
d03c0a1c:	e7e3      	b.n	d03c09e6 <sid_midi_isr+0x372>
d03c0a1e:	f005 0207 	and.w	r2, r5, #7
d03c0a22:	2115      	movs	r1, #21
d03c0a24:	4638      	mov	r0, r7
d03c0a26:	9301      	str	r3, [sp, #4]
d03c0a28:	f7ff fbf0 	bl	d03c020c <sid_write>
d03c0a2c:	f3c5 02c7 	ubfx	r2, r5, #3, #8
d03c0a30:	2116      	movs	r1, #22
d03c0a32:	4638      	mov	r0, r7
d03c0a34:	f7ff fbea 	bl	d03c020c <sid_write>
d03c0a38:	9b01      	ldr	r3, [sp, #4]
d03c0a3a:	2118      	movs	r1, #24
d03c0a3c:	461a      	mov	r2, r3
d03c0a3e:	e71e      	b.n	d03c087e <sid_midi_isr+0x20a>
d03c0a40:	2d00      	cmp	r5, #0
d03c0a42:	f43f af47 	beq.w	d03c08d4 <sid_midi_isr+0x260>
d03c0a46:	2b00      	cmp	r3, #0
d03c0a48:	d0b0      	beq.n	d03c09ac <sid_midi_isr+0x338>
d03c0a4a:	7d21      	ldrb	r1, [r4, #20]
d03c0a4c:	b901      	cbnz	r1, d03c0a50 <sid_midi_isr+0x3dc>
d03c0a4e:	7523      	strb	r3, [r4, #20]
d03c0a50:	7d23      	ldrb	r3, [r4, #20]
d03c0a52:	3b01      	subs	r3, #1
d03c0a54:	b2db      	uxtb	r3, r3
d03c0a56:	7523      	strb	r3, [r4, #20]
d03c0a58:	2b00      	cmp	r3, #0
d03c0a5a:	f43f af6a 	beq.w	d03c0932 <sid_midi_isr+0x2be>
d03c0a5e:	e7a5      	b.n	d03c09ac <sid_midi_isr+0x338>
d03c0a60:	42a8      	cmp	r0, r5
d03c0a62:	f43f af66 	beq.w	d03c0932 <sid_midi_isr+0x2be>
d03c0a66:	eb01 0585 	add.w	r5, r1, r5, lsl #2
d03c0a6a:	e7a1      	b.n	d03c09b0 <sid_midi_isr+0x33c>
d03c0a6c:	2300      	movs	r3, #0
d03c0a6e:	72a3      	strb	r3, [r4, #10]
d03c0a70:	e61a      	b.n	d03c06a8 <sid_midi_isr+0x34>
d03c0a72:	f04f 0a1c 	mov.w	sl, #28
d03c0a76:	f04f 0961 	mov.w	r9, #97	; 0x61
d03c0a7a:	fb0a fa08 	mul.w	sl, sl, r8
d03c0a7e:	e720      	b.n	d03c08c2 <sid_midi_isr+0x24e>

d03c0a80 <midi_out_packet3>:
d03c0a80:	b507      	push	{r0, r1, r2, lr}
d03c0a82:	f002 027f 	and.w	r2, r2, #127	; 0x7f
d03c0a86:	f001 017f 	and.w	r1, r1, #127	; 0x7f
d03c0a8a:	f88d 0004 	strb.w	r0, [sp, #4]
d03c0a8e:	a801      	add	r0, sp, #4
d03c0a90:	f88d 2006 	strb.w	r2, [sp, #6]
d03c0a94:	4a09      	ldr	r2, [pc, #36]	; (d03c0abc <midi_out_packet3+0x3c>)
d03c0a96:	f88d 1005 	strb.w	r1, [sp, #5]
d03c0a9a:	7d13      	ldrb	r3, [r2, #20]
d03c0a9c:	7d51      	ldrb	r1, [r2, #21]
d03c0a9e:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c0aa2:	7d91      	ldrb	r1, [r2, #22]
d03c0aa4:	7dd2      	ldrb	r2, [r2, #23]
d03c0aa6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c0aaa:	2103      	movs	r1, #3
d03c0aac:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0ab0:	681b      	ldr	r3, [r3, #0]
d03c0ab2:	695b      	ldr	r3, [r3, #20]
d03c0ab4:	4798      	blx	r3
d03c0ab6:	b003      	add	sp, #12
d03c0ab8:	f85d fb04 	ldr.w	pc, [sp], #4
d03c0abc:	2001f000 	.word	0x2001f000

d03c0ac0 <seq_midi_out_note_on>:
d03c0ac0:	4b04      	ldr	r3, [pc, #16]	; (d03c0ad4 <seq_midi_out_note_on+0x14>)
d03c0ac2:	781b      	ldrb	r3, [r3, #0]
d03c0ac4:	b12b      	cbz	r3, d03c0ad2 <seq_midi_out_note_on+0x12>
d03c0ac6:	280f      	cmp	r0, #15
d03c0ac8:	d803      	bhi.n	d03c0ad2 <seq_midi_out_note_on+0x12>
d03c0aca:	f040 0090 	orr.w	r0, r0, #144	; 0x90
d03c0ace:	f7ff bfd7 	b.w	d03c0a80 <midi_out_packet3>
d03c0ad2:	4770      	bx	lr
d03c0ad4:	d03ccf6a 	.word	0xd03ccf6a

d03c0ad8 <sid_find_voice_source>:
d03c0ad8:	b570      	push	{r4, r5, r6, lr}
d03c0ada:	4b0a      	ldr	r3, [pc, #40]	; (d03c0b04 <sid_find_voice_source+0x2c>)
d03c0adc:	2400      	movs	r4, #0
d03c0ade:	781e      	ldrb	r6, [r3, #0]
d03c0ae0:	b2e5      	uxtb	r5, r4
d03c0ae2:	b146      	cbz	r6, d03c0af6 <sid_find_voice_source+0x1e>
d03c0ae4:	785e      	ldrb	r6, [r3, #1]
d03c0ae6:	4286      	cmp	r6, r0
d03c0ae8:	d105      	bne.n	d03c0af6 <sid_find_voice_source+0x1e>
d03c0aea:	789e      	ldrb	r6, [r3, #2]
d03c0aec:	428e      	cmp	r6, r1
d03c0aee:	d102      	bne.n	d03c0af6 <sid_find_voice_source+0x1e>
d03c0af0:	795e      	ldrb	r6, [r3, #5]
d03c0af2:	4296      	cmp	r6, r2
d03c0af4:	d004      	beq.n	d03c0b00 <sid_find_voice_source+0x28>
d03c0af6:	3401      	adds	r4, #1
d03c0af8:	3308      	adds	r3, #8
d03c0afa:	2c06      	cmp	r4, #6
d03c0afc:	d1ef      	bne.n	d03c0ade <sid_find_voice_source+0x6>
d03c0afe:	25ff      	movs	r5, #255	; 0xff
d03c0b00:	4628      	mov	r0, r5
d03c0b02:	bd70      	pop	{r4, r5, r6, pc}
d03c0b04:	d03cd0a8 	.word	0xd03cd0a8

d03c0b08 <midi_effective_velocity>:
d03c0b08:	4b1c      	ldr	r3, [pc, #112]	; (d03c0b7c <midi_effective_velocity+0x74>)
d03c0b0a:	2809      	cmp	r0, #9
d03c0b0c:	b5f0      	push	{r4, r5, r6, r7, lr}
d03c0b0e:	5c1c      	ldrb	r4, [r3, r0]
d03c0b10:	f04f 067f 	mov.w	r6, #127	; 0x7f
d03c0b14:	4b1a      	ldr	r3, [pc, #104]	; (d03c0b80 <midi_effective_velocity+0x78>)
d03c0b16:	4d1b      	ldr	r5, [pc, #108]	; (d03c0b84 <midi_effective_velocity+0x7c>)
d03c0b18:	5c1a      	ldrb	r2, [r3, r0]
d03c0b1a:	fb14 f301 	smulbb	r3, r4, r1
d03c0b1e:	882d      	ldrh	r5, [r5, #0]
d03c0b20:	f103 033f 	add.w	r3, r3, #63	; 0x3f
d03c0b24:	fbb3 f3f6 	udiv	r3, r3, r6
d03c0b28:	fb02 f303 	mul.w	r3, r2, r3
d03c0b2c:	f103 033f 	add.w	r3, r3, #63	; 0x3f
d03c0b30:	fbb3 f3f6 	udiv	r3, r3, r6
d03c0b34:	fb05 f303 	mul.w	r3, r5, r3
d03c0b38:	f04f 0664 	mov.w	r6, #100	; 0x64
d03c0b3c:	f103 0332 	add.w	r3, r3, #50	; 0x32
d03c0b40:	fbb3 f3f6 	udiv	r3, r3, r6
d03c0b44:	d105      	bne.n	d03c0b52 <midi_effective_velocity+0x4a>
d03c0b46:	4f10      	ldr	r7, [pc, #64]	; (d03c0b88 <midi_effective_velocity+0x80>)
d03c0b48:	883f      	ldrh	r7, [r7, #0]
d03c0b4a:	437b      	muls	r3, r7
d03c0b4c:	3332      	adds	r3, #50	; 0x32
d03c0b4e:	fbb3 f3f6 	udiv	r3, r3, r6
d03c0b52:	2bff      	cmp	r3, #255	; 0xff
d03c0b54:	d80d      	bhi.n	d03c0b72 <midi_effective_velocity+0x6a>
d03c0b56:	b953      	cbnz	r3, d03c0b6e <midi_effective_velocity+0x66>
d03c0b58:	b149      	cbz	r1, d03c0b6e <midi_effective_velocity+0x66>
d03c0b5a:	b144      	cbz	r4, d03c0b6e <midi_effective_velocity+0x66>
d03c0b5c:	b13a      	cbz	r2, d03c0b6e <midi_effective_velocity+0x66>
d03c0b5e:	b135      	cbz	r5, d03c0b6e <midi_effective_velocity+0x66>
d03c0b60:	2809      	cmp	r0, #9
d03c0b62:	d108      	bne.n	d03c0b76 <midi_effective_velocity+0x6e>
d03c0b64:	4b08      	ldr	r3, [pc, #32]	; (d03c0b88 <midi_effective_velocity+0x80>)
d03c0b66:	881b      	ldrh	r3, [r3, #0]
d03c0b68:	3b00      	subs	r3, #0
d03c0b6a:	bf18      	it	ne
d03c0b6c:	2301      	movne	r3, #1
d03c0b6e:	b2d8      	uxtb	r0, r3
d03c0b70:	bdf0      	pop	{r4, r5, r6, r7, pc}
d03c0b72:	23ff      	movs	r3, #255	; 0xff
d03c0b74:	e7fb      	b.n	d03c0b6e <midi_effective_velocity+0x66>
d03c0b76:	2301      	movs	r3, #1
d03c0b78:	e7f9      	b.n	d03c0b6e <midi_effective_velocity+0x66>
d03c0b7a:	bf00      	nop
d03c0b7c:	d03ccd14 	.word	0xd03ccd14
d03c0b80:	d03cccf4 	.word	0xd03cccf4
d03c0b84:	d03ccf2e 	.word	0xd03ccf2e
d03c0b88:	d03ccd2a 	.word	0xd03ccd2a

d03c0b8c <seq_beat_ticks>:
d03c0b8c:	4b05      	ldr	r3, [pc, #20]	; (d03c0ba4 <seq_beat_ticks+0x18>)
d03c0b8e:	881b      	ldrh	r3, [r3, #0]
d03c0b90:	0858      	lsrs	r0, r3, #1
d03c0b92:	f600 30b8 	addw	r0, r0, #3000	; 0xbb8
d03c0b96:	4298      	cmp	r0, r3
d03c0b98:	bf2c      	ite	cs
d03c0b9a:	fbb0 f0f3 	udivcs	r0, r0, r3
d03c0b9e:	2001      	movcc	r0, #1
d03c0ba0:	4770      	bx	lr
d03c0ba2:	bf00      	nop
d03c0ba4:	d03ccf4c 	.word	0xd03ccf4c

d03c0ba8 <seq_note_end_tick>:
d03c0ba8:	4b04      	ldr	r3, [pc, #16]	; (d03c0bbc <seq_note_end_tick+0x14>)
d03c0baa:	0102      	lsls	r2, r0, #4
d03c0bac:	681b      	ldr	r3, [r3, #0]
d03c0bae:	eb03 1000 	add.w	r0, r3, r0, lsl #4
d03c0bb2:	589a      	ldr	r2, [r3, r2]
d03c0bb4:	6840      	ldr	r0, [r0, #4]
d03c0bb6:	4410      	add	r0, r2
d03c0bb8:	4770      	bx	lr
d03c0bba:	bf00      	nop
d03c0bbc:	d03ccf78 	.word	0xd03ccf78

d03c0bc0 <seq_order_compare_start>:
d03c0bc0:	880b      	ldrh	r3, [r1, #0]
d03c0bc2:	8802      	ldrh	r2, [r0, #0]
d03c0bc4:	490a      	ldr	r1, [pc, #40]	; (d03c0bf0 <seq_order_compare_start+0x30>)
d03c0bc6:	0110      	lsls	r0, r2, #4
d03c0bc8:	6809      	ldr	r1, [r1, #0]
d03c0bca:	b510      	push	{r4, lr}
d03c0bcc:	011c      	lsls	r4, r3, #4
d03c0bce:	5808      	ldr	r0, [r1, r0]
d03c0bd0:	5909      	ldr	r1, [r1, r4]
d03c0bd2:	4288      	cmp	r0, r1
d03c0bd4:	d308      	bcc.n	d03c0be8 <seq_order_compare_start+0x28>
d03c0bd6:	d805      	bhi.n	d03c0be4 <seq_order_compare_start+0x24>
d03c0bd8:	429a      	cmp	r2, r3
d03c0bda:	d305      	bcc.n	d03c0be8 <seq_order_compare_start+0x28>
d03c0bdc:	bf8c      	ite	hi
d03c0bde:	2001      	movhi	r0, #1
d03c0be0:	2000      	movls	r0, #0
d03c0be2:	bd10      	pop	{r4, pc}
d03c0be4:	2001      	movs	r0, #1
d03c0be6:	e7fc      	b.n	d03c0be2 <seq_order_compare_start+0x22>
d03c0be8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c0bec:	e7f9      	b.n	d03c0be2 <seq_order_compare_start+0x22>
d03c0bee:	bf00      	nop
d03c0bf0:	d03ccf78 	.word	0xd03ccf78

d03c0bf4 <seq_order_compare_end>:
d03c0bf4:	b538      	push	{r3, r4, r5, lr}
d03c0bf6:	8805      	ldrh	r5, [r0, #0]
d03c0bf8:	880c      	ldrh	r4, [r1, #0]
d03c0bfa:	4628      	mov	r0, r5
d03c0bfc:	f7ff ffd4 	bl	d03c0ba8 <seq_note_end_tick>
d03c0c00:	4601      	mov	r1, r0
d03c0c02:	4620      	mov	r0, r4
d03c0c04:	f7ff ffd0 	bl	d03c0ba8 <seq_note_end_tick>
d03c0c08:	4281      	cmp	r1, r0
d03c0c0a:	d308      	bcc.n	d03c0c1e <seq_order_compare_end+0x2a>
d03c0c0c:	d805      	bhi.n	d03c0c1a <seq_order_compare_end+0x26>
d03c0c0e:	42a5      	cmp	r5, r4
d03c0c10:	d305      	bcc.n	d03c0c1e <seq_order_compare_end+0x2a>
d03c0c12:	bf8c      	ite	hi
d03c0c14:	2001      	movhi	r0, #1
d03c0c16:	2000      	movls	r0, #0
d03c0c18:	bd38      	pop	{r3, r4, r5, pc}
d03c0c1a:	2001      	movs	r0, #1
d03c0c1c:	e7fc      	b.n	d03c0c18 <seq_order_compare_end+0x24>
d03c0c1e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c0c22:	e7f9      	b.n	d03c0c18 <seq_order_compare_end+0x24>

d03c0c24 <seq_playback_mark_dirty>:
d03c0c24:	4b03      	ldr	r3, [pc, #12]	; (d03c0c34 <seq_playback_mark_dirty+0x10>)
d03c0c26:	2201      	movs	r2, #1
d03c0c28:	701a      	strb	r2, [r3, #0]
d03c0c2a:	2200      	movs	r2, #0
d03c0c2c:	4b02      	ldr	r3, [pc, #8]	; (d03c0c38 <seq_playback_mark_dirty+0x14>)
d03c0c2e:	701a      	strb	r2, [r3, #0]
d03c0c30:	4770      	bx	lr
d03c0c32:	bf00      	nop
d03c0c34:	d03ccf80 	.word	0xd03ccf80
d03c0c38:	d03cd08c 	.word	0xd03cd08c

d03c0c3c <seq_set_bpm>:
d03c0c3c:	28f0      	cmp	r0, #240	; 0xf0
d03c0c3e:	4b06      	ldr	r3, [pc, #24]	; (d03c0c58 <seq_set_bpm+0x1c>)
d03c0c40:	f04f 0201 	mov.w	r2, #1
d03c0c44:	bfa8      	it	ge
d03c0c46:	20f0      	movge	r0, #240	; 0xf0
d03c0c48:	2828      	cmp	r0, #40	; 0x28
d03c0c4a:	bfb8      	it	lt
d03c0c4c:	2028      	movlt	r0, #40	; 0x28
d03c0c4e:	8018      	strh	r0, [r3, #0]
d03c0c50:	4b02      	ldr	r3, [pc, #8]	; (d03c0c5c <seq_set_bpm+0x20>)
d03c0c52:	701a      	strb	r2, [r3, #0]
d03c0c54:	4770      	bx	lr
d03c0c56:	bf00      	nop
d03c0c58:	d03ccf4c 	.word	0xd03ccf4c
d03c0c5c:	d03cf36b 	.word	0xd03cf36b

d03c0c60 <midi_channel_active_count>:
d03c0c60:	2200      	movs	r2, #0
d03c0c62:	4908      	ldr	r1, [pc, #32]	; (d03c0c84 <midi_channel_active_count+0x24>)
d03c0c64:	b510      	push	{r4, lr}
d03c0c66:	4604      	mov	r4, r0
d03c0c68:	4610      	mov	r0, r2
d03c0c6a:	780b      	ldrb	r3, [r1, #0]
d03c0c6c:	b123      	cbz	r3, d03c0c78 <midi_channel_active_count+0x18>
d03c0c6e:	784b      	ldrb	r3, [r1, #1]
d03c0c70:	42a3      	cmp	r3, r4
d03c0c72:	bf04      	itt	eq
d03c0c74:	1c43      	addeq	r3, r0, #1
d03c0c76:	b2d8      	uxtbeq	r0, r3
d03c0c78:	3201      	adds	r2, #1
d03c0c7a:	3108      	adds	r1, #8
d03c0c7c:	2a06      	cmp	r2, #6
d03c0c7e:	d1f4      	bne.n	d03c0c6a <midi_channel_active_count+0xa>
d03c0c80:	bd10      	pop	{r4, pc}
d03c0c82:	bf00      	nop
d03c0c84:	d03cd0a8 	.word	0xd03cd0a8

d03c0c88 <ui_box>:
d03c0c88:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03c0c8c:	4c27      	ldr	r4, [pc, #156]	; (d03c0d2c <ui_box+0xa4>)
d03c0c8e:	4690      	mov	r8, r2
d03c0c90:	4699      	mov	r9, r3
d03c0c92:	4606      	mov	r6, r0
d03c0c94:	7b23      	ldrb	r3, [r4, #12]
d03c0c96:	460f      	mov	r7, r1
d03c0c98:	7b62      	ldrb	r2, [r4, #13]
d03c0c9a:	f89d 0020 	ldrb.w	r0, [sp, #32]
d03c0c9e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0ca2:	7ba2      	ldrb	r2, [r4, #14]
d03c0ca4:	f89d 5024 	ldrb.w	r5, [sp, #36]	; 0x24
d03c0ca8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0cac:	7be2      	ldrb	r2, [r4, #15]
d03c0cae:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0cb2:	685b      	ldr	r3, [r3, #4]
d03c0cb4:	68db      	ldr	r3, [r3, #12]
d03c0cb6:	4798      	blx	r3
d03c0cb8:	7b23      	ldrb	r3, [r4, #12]
d03c0cba:	7b62      	ldrb	r2, [r4, #13]
d03c0cbc:	4639      	mov	r1, r7
d03c0cbe:	4630      	mov	r0, r6
d03c0cc0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0cc4:	7ba2      	ldrb	r2, [r4, #14]
d03c0cc6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0cca:	7be2      	ldrb	r2, [r4, #15]
d03c0ccc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0cd0:	4642      	mov	r2, r8
d03c0cd2:	685b      	ldr	r3, [r3, #4]
d03c0cd4:	f8d3 a004 	ldr.w	sl, [r3, #4]
d03c0cd8:	464b      	mov	r3, r9
d03c0cda:	47d0      	blx	sl
d03c0cdc:	7b23      	ldrb	r3, [r4, #12]
d03c0cde:	7b62      	ldrb	r2, [r4, #13]
d03c0ce0:	4628      	mov	r0, r5
d03c0ce2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0ce6:	7ba2      	ldrb	r2, [r4, #14]
d03c0ce8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0cec:	7be2      	ldrb	r2, [r4, #15]
d03c0cee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0cf2:	685b      	ldr	r3, [r3, #4]
d03c0cf4:	68db      	ldr	r3, [r3, #12]
d03c0cf6:	4798      	blx	r3
d03c0cf8:	7b25      	ldrb	r5, [r4, #12]
d03c0cfa:	7b63      	ldrb	r3, [r4, #13]
d03c0cfc:	f1a8 0202 	sub.w	r2, r8, #2
d03c0d00:	1c79      	adds	r1, r7, #1
d03c0d02:	1c70      	adds	r0, r6, #1
d03c0d04:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d03c0d08:	7ba3      	ldrb	r3, [r4, #14]
d03c0d0a:	7be4      	ldrb	r4, [r4, #15]
d03c0d0c:	b212      	sxth	r2, r2
d03c0d0e:	ea45 4503 	orr.w	r5, r5, r3, lsl #16
d03c0d12:	f1a9 0302 	sub.w	r3, r9, #2
d03c0d16:	b209      	sxth	r1, r1
d03c0d18:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d03c0d1c:	b21b      	sxth	r3, r3
d03c0d1e:	6864      	ldr	r4, [r4, #4]
d03c0d20:	b200      	sxth	r0, r0
d03c0d22:	6864      	ldr	r4, [r4, #4]
d03c0d24:	46a4      	mov	ip, r4
d03c0d26:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03c0d2a:	4760      	bx	ip
d03c0d2c:	2001f000 	.word	0x2001f000

d03c0d30 <ui_button_register>:
d03c0d30:	b570      	push	{r4, r5, r6, lr}
d03c0d32:	4d0a      	ldr	r5, [pc, #40]	; (d03c0d5c <ui_button_register+0x2c>)
d03c0d34:	782c      	ldrb	r4, [r5, #0]
d03c0d36:	2cbd      	cmp	r4, #189	; 0xbd
d03c0d38:	d80f      	bhi.n	d03c0d5a <ui_button_register+0x2a>
d03c0d3a:	1c66      	adds	r6, r4, #1
d03c0d3c:	702e      	strb	r6, [r5, #0]
d03c0d3e:	250c      	movs	r5, #12
d03c0d40:	4e07      	ldr	r6, [pc, #28]	; (d03c0d60 <ui_button_register+0x30>)
d03c0d42:	4365      	muls	r5, r4
d03c0d44:	1974      	adds	r4, r6, r5
d03c0d46:	5370      	strh	r0, [r6, r5]
d03c0d48:	80e3      	strh	r3, [r4, #6]
d03c0d4a:	f9bd 3010 	ldrsh.w	r3, [sp, #16]
d03c0d4e:	8061      	strh	r1, [r4, #2]
d03c0d50:	8123      	strh	r3, [r4, #8]
d03c0d52:	f89d 3014 	ldrb.w	r3, [sp, #20]
d03c0d56:	80a2      	strh	r2, [r4, #4]
d03c0d58:	72a3      	strb	r3, [r4, #10]
d03c0d5a:	bd70      	pop	{r4, r5, r6, pc}
d03c0d5c:	d03cd0e8 	.word	0xd03cd0e8
d03c0d60:	d03cd0ea 	.word	0xd03cd0ea

d03c0d64 <ui_panel>:
d03c0d64:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
d03c0d68:	f04f 0ee2 	mov.w	lr, #226	; 0xe2
d03c0d6c:	24e1      	movs	r4, #225	; 0xe1
d03c0d6e:	460e      	mov	r6, r1
d03c0d70:	4690      	mov	r8, r2
d03c0d72:	4605      	mov	r5, r0
d03c0d74:	9f08      	ldr	r7, [sp, #32]
d03c0d76:	b2b6      	uxth	r6, r6
d03c0d78:	b2ad      	uxth	r5, r5
d03c0d7a:	e9cd 4e00 	strd	r4, lr, [sp]
d03c0d7e:	4c25      	ldr	r4, [pc, #148]	; (d03c0e14 <ui_panel+0xb0>)
d03c0d80:	f7ff ff82 	bl	d03c0c88 <ui_box>
d03c0d84:	20e3      	movs	r0, #227	; 0xe3
d03c0d86:	7b23      	ldrb	r3, [r4, #12]
d03c0d88:	7b62      	ldrb	r2, [r4, #13]
d03c0d8a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0d8e:	7ba2      	ldrb	r2, [r4, #14]
d03c0d90:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0d94:	7be2      	ldrb	r2, [r4, #15]
d03c0d96:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0d9a:	685b      	ldr	r3, [r3, #4]
d03c0d9c:	68db      	ldr	r3, [r3, #12]
d03c0d9e:	4798      	blx	r3
d03c0da0:	7b23      	ldrb	r3, [r4, #12]
d03c0da2:	7b62      	ldrb	r2, [r4, #13]
d03c0da4:	1c71      	adds	r1, r6, #1
d03c0da6:	1c68      	adds	r0, r5, #1
d03c0da8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0dac:	7ba2      	ldrb	r2, [r4, #14]
d03c0dae:	b209      	sxth	r1, r1
d03c0db0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0db4:	7be2      	ldrb	r2, [r4, #15]
d03c0db6:	b200      	sxth	r0, r0
d03c0db8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0dbc:	f1a8 0202 	sub.w	r2, r8, #2
d03c0dc0:	685b      	ldr	r3, [r3, #4]
d03c0dc2:	b212      	sxth	r2, r2
d03c0dc4:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c0dc8:	2314      	movs	r3, #20
d03c0dca:	47c0      	blx	r8
d03c0dcc:	7b23      	ldrb	r3, [r4, #12]
d03c0dce:	7b62      	ldrb	r2, [r4, #13]
d03c0dd0:	20e7      	movs	r0, #231	; 0xe7
d03c0dd2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0dd6:	7ba2      	ldrb	r2, [r4, #14]
d03c0dd8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0ddc:	7be2      	ldrb	r2, [r4, #15]
d03c0dde:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0de2:	685b      	ldr	r3, [r3, #4]
d03c0de4:	68db      	ldr	r3, [r3, #12]
d03c0de6:	4798      	blx	r3
d03c0de8:	7b23      	ldrb	r3, [r4, #12]
d03c0dea:	7b62      	ldrb	r2, [r4, #13]
d03c0dec:	1d31      	adds	r1, r6, #4
d03c0dee:	f105 0008 	add.w	r0, r5, #8
d03c0df2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0df6:	7ba2      	ldrb	r2, [r4, #14]
d03c0df8:	b289      	uxth	r1, r1
d03c0dfa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0dfe:	7be2      	ldrb	r2, [r4, #15]
d03c0e00:	b280      	uxth	r0, r0
d03c0e02:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0e06:	463a      	mov	r2, r7
d03c0e08:	685b      	ldr	r3, [r3, #4]
d03c0e0a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c0e0c:	b002      	add	sp, #8
d03c0e0e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d03c0e12:	4718      	bx	r3
d03c0e14:	2001f000 	.word	0x2001f000

d03c0e18 <ui_value_bar>:
d03c0e18:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d03c0e1a:	1e97      	subs	r7, r2, #2
d03c0e1c:	f8bd 4020 	ldrh.w	r4, [sp, #32]
d03c0e20:	f04f 0ce1 	mov.w	ip, #225	; 0xe1
d03c0e24:	4605      	mov	r5, r0
d03c0e26:	437b      	muls	r3, r7
d03c0e28:	460e      	mov	r6, r1
d03c0e2a:	fbb3 f7f4 	udiv	r7, r3, r4
d03c0e2e:	23f0      	movs	r3, #240	; 0xf0
d03c0e30:	4c15      	ldr	r4, [pc, #84]	; (d03c0e88 <ui_value_bar+0x70>)
d03c0e32:	e9cd 3c00 	strd	r3, ip, [sp]
d03c0e36:	230a      	movs	r3, #10
d03c0e38:	f7ff ff26 	bl	d03c0c88 <ui_box>
d03c0e3c:	7b23      	ldrb	r3, [r4, #12]
d03c0e3e:	7b62      	ldrb	r2, [r4, #13]
d03c0e40:	20e7      	movs	r0, #231	; 0xe7
d03c0e42:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0e46:	7ba2      	ldrb	r2, [r4, #14]
d03c0e48:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0e4c:	7be2      	ldrb	r2, [r4, #15]
d03c0e4e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0e52:	685b      	ldr	r3, [r3, #4]
d03c0e54:	68db      	ldr	r3, [r3, #12]
d03c0e56:	4798      	blx	r3
d03c0e58:	7b23      	ldrb	r3, [r4, #12]
d03c0e5a:	7b62      	ldrb	r2, [r4, #13]
d03c0e5c:	1c71      	adds	r1, r6, #1
d03c0e5e:	1c68      	adds	r0, r5, #1
d03c0e60:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0e64:	7ba2      	ldrb	r2, [r4, #14]
d03c0e66:	b209      	sxth	r1, r1
d03c0e68:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0e6c:	7be2      	ldrb	r2, [r4, #15]
d03c0e6e:	b200      	sxth	r0, r0
d03c0e70:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0e74:	b23a      	sxth	r2, r7
d03c0e76:	685b      	ldr	r3, [r3, #4]
d03c0e78:	685c      	ldr	r4, [r3, #4]
d03c0e7a:	2308      	movs	r3, #8
d03c0e7c:	46a4      	mov	ip, r4
d03c0e7e:	b003      	add	sp, #12
d03c0e80:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d03c0e84:	4760      	bx	ip
d03c0e86:	bf00      	nop
d03c0e88:	2001f000 	.word	0x2001f000

d03c0e8c <vm_program_length>:
d03c0e8c:	0603      	lsls	r3, r0, #24
d03c0e8e:	d40e      	bmi.n	d03c0eae <vm_program_length+0x22>
d03c0e90:	4b08      	ldr	r3, [pc, #32]	; (d03c0eb4 <vm_program_length+0x28>)
d03c0e92:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
d03c0e96:	b158      	cbz	r0, d03c0eb0 <vm_program_length+0x24>
d03c0e98:	2301      	movs	r3, #1
d03c0e9a:	1f02      	subs	r2, r0, #4
d03c0e9c:	f812 1023 	ldrb.w	r1, [r2, r3, lsl #2]
d03c0ea0:	b2d8      	uxtb	r0, r3
d03c0ea2:	b129      	cbz	r1, d03c0eb0 <vm_program_length+0x24>
d03c0ea4:	3301      	adds	r3, #1
d03c0ea6:	2b61      	cmp	r3, #97	; 0x61
d03c0ea8:	d1f8      	bne.n	d03c0e9c <vm_program_length+0x10>
d03c0eaa:	2060      	movs	r0, #96	; 0x60
d03c0eac:	4770      	bx	lr
d03c0eae:	2000      	movs	r0, #0
d03c0eb0:	4770      	bx	lr
d03c0eb2:	bf00      	nop
d03c0eb4:	d03cc608 	.word	0xd03cc608

d03c0eb8 <ui_clamp_vm_scroll>:
d03c0eb8:	b508      	push	{r3, lr}
d03c0eba:	4b09      	ldr	r3, [pc, #36]	; (d03c0ee0 <ui_clamp_vm_scroll+0x28>)
d03c0ebc:	4a09      	ldr	r2, [pc, #36]	; (d03c0ee4 <ui_clamp_vm_scroll+0x2c>)
d03c0ebe:	781b      	ldrb	r3, [r3, #0]
d03c0ec0:	5cd0      	ldrb	r0, [r2, r3]
d03c0ec2:	f7ff ffe3 	bl	d03c0e8c <vm_program_length>
d03c0ec6:	2808      	cmp	r0, #8
d03c0ec8:	4b07      	ldr	r3, [pc, #28]	; (d03c0ee8 <ui_clamp_vm_scroll+0x30>)
d03c0eca:	bf8c      	ite	hi
d03c0ecc:	3808      	subhi	r0, #8
d03c0ece:	2000      	movls	r0, #0
d03c0ed0:	781a      	ldrb	r2, [r3, #0]
d03c0ed2:	bf88      	it	hi
d03c0ed4:	b2c0      	uxtbhi	r0, r0
d03c0ed6:	4282      	cmp	r2, r0
d03c0ed8:	bf88      	it	hi
d03c0eda:	7018      	strbhi	r0, [r3, #0]
d03c0edc:	bd08      	pop	{r3, pc}
d03c0ede:	bf00      	nop
d03c0ee0:	d03cf36a 	.word	0xd03cf36a
d03c0ee4:	d03ccd04 	.word	0xd03ccd04
d03c0ee8:	d03cf531 	.word	0xd03cf531

d03c0eec <ui_scroll_vm>:
d03c0eec:	b538      	push	{r3, r4, r5, lr}
d03c0eee:	4d0c      	ldr	r5, [pc, #48]	; (d03c0f20 <ui_scroll_vm+0x34>)
d03c0ef0:	4a0c      	ldr	r2, [pc, #48]	; (d03c0f24 <ui_scroll_vm+0x38>)
d03c0ef2:	782b      	ldrb	r3, [r5, #0]
d03c0ef4:	181c      	adds	r4, r3, r0
d03c0ef6:	4b0c      	ldr	r3, [pc, #48]	; (d03c0f28 <ui_scroll_vm+0x3c>)
d03c0ef8:	781b      	ldrb	r3, [r3, #0]
d03c0efa:	5cd0      	ldrb	r0, [r2, r3]
d03c0efc:	f7ff ffc6 	bl	d03c0e8c <vm_program_length>
d03c0f00:	2808      	cmp	r0, #8
d03c0f02:	bf8a      	itet	hi
d03c0f04:	f1a0 0308 	subhi.w	r3, r0, #8
d03c0f08:	2300      	movls	r3, #0
d03c0f0a:	b2db      	uxtbhi	r3, r3
d03c0f0c:	1c62      	adds	r2, r4, #1
d03c0f0e:	d004      	beq.n	d03c0f1a <ui_scroll_vm+0x2e>
d03c0f10:	429c      	cmp	r4, r3
d03c0f12:	dd00      	ble.n	d03c0f16 <ui_scroll_vm+0x2a>
d03c0f14:	b21c      	sxth	r4, r3
d03c0f16:	702c      	strb	r4, [r5, #0]
d03c0f18:	bd38      	pop	{r3, r4, r5, pc}
d03c0f1a:	2400      	movs	r4, #0
d03c0f1c:	e7fb      	b.n	d03c0f16 <ui_scroll_vm+0x2a>
d03c0f1e:	bf00      	nop
d03c0f20:	d03cf531 	.word	0xd03cf531
d03c0f24:	d03ccd04 	.word	0xd03ccd04
d03c0f28:	d03cf36a 	.word	0xd03cf36a

d03c0f2c <ui_seq_tick_to_midi_tick>:
d03c0f2c:	b538      	push	{r3, r4, r5, lr}
d03c0f2e:	4601      	mov	r1, r0
d03c0f30:	2500      	movs	r5, #0
d03c0f32:	f7ff fe2b 	bl	d03c0b8c <seq_beat_ticks>
d03c0f36:	2300      	movs	r3, #0
d03c0f38:	0844      	lsrs	r4, r0, #1
d03c0f3a:	b282      	uxth	r2, r0
d03c0f3c:	f44f 70f0 	mov.w	r0, #480	; 0x1e0
d03c0f40:	fbe0 4501 	umlal	r4, r5, r0, r1
d03c0f44:	4620      	mov	r0, r4
d03c0f46:	4629      	mov	r1, r5
d03c0f48:	f008 fb58 	bl	d03c95fc <__aeabi_uldivmod>
d03c0f4c:	bd38      	pop	{r3, r4, r5, pc}

d03c0f4e <ui_seq_note_end_midi_tick>:
d03c0f4e:	b570      	push	{r4, r5, r6, lr}
d03c0f50:	6806      	ldr	r6, [r0, #0]
d03c0f52:	4605      	mov	r5, r0
d03c0f54:	4630      	mov	r0, r6
d03c0f56:	f7ff ffe9 	bl	d03c0f2c <ui_seq_tick_to_midi_tick>
d03c0f5a:	4604      	mov	r4, r0
d03c0f5c:	6868      	ldr	r0, [r5, #4]
d03c0f5e:	4430      	add	r0, r6
d03c0f60:	f7ff ffe4 	bl	d03c0f2c <ui_seq_tick_to_midi_tick>
d03c0f64:	4284      	cmp	r4, r0
d03c0f66:	bf28      	it	cs
d03c0f68:	1c60      	addcs	r0, r4, #1
d03c0f6a:	bd70      	pop	{r4, r5, r6, pc}

d03c0f6c <ui_midi_find_next_time>:
d03c0f6c:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c0f70:	4b23      	ldr	r3, [pc, #140]	; (d03c1000 <ui_midi_find_next_time+0x94>)
d03c0f72:	4693      	mov	fp, r2
d03c0f74:	f04f 0900 	mov.w	r9, #0
d03c0f78:	4a22      	ldr	r2, [pc, #136]	; (d03c1004 <ui_midi_find_next_time+0x98>)
d03c0f7a:	4606      	mov	r6, r0
d03c0f7c:	468a      	mov	sl, r1
d03c0f7e:	681b      	ldr	r3, [r3, #0]
d03c0f80:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d03c0f84:	f8d2 8000 	ldr.w	r8, [r2]
d03c0f88:	464f      	mov	r7, r9
d03c0f8a:	454b      	cmp	r3, r9
d03c0f8c:	d106      	bne.n	d03c0f9c <ui_midi_find_next_time+0x30>
d03c0f8e:	b10f      	cbz	r7, d03c0f94 <ui_midi_find_next_time+0x28>
d03c0f90:	f8cb 5000 	str.w	r5, [fp]
d03c0f94:	4638      	mov	r0, r7
d03c0f96:	b003      	add	sp, #12
d03c0f98:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c0f9c:	f898 200d 	ldrb.w	r2, [r8, #13]
d03c0fa0:	b1ba      	cbz	r2, d03c0fd2 <ui_midi_find_next_time+0x66>
d03c0fa2:	f8d8 0000 	ldr.w	r0, [r8]
d03c0fa6:	9301      	str	r3, [sp, #4]
d03c0fa8:	f7ff ffc0 	bl	d03c0f2c <ui_seq_tick_to_midi_tick>
d03c0fac:	4604      	mov	r4, r0
d03c0fae:	4640      	mov	r0, r8
d03c0fb0:	f7ff ffcd 	bl	d03c0f4e <ui_seq_note_end_midi_tick>
d03c0fb4:	9b01      	ldr	r3, [sp, #4]
d03c0fb6:	f1ba 0f00 	cmp.w	sl, #0
d03c0fba:	d00f      	beq.n	d03c0fdc <ui_midi_find_next_time+0x70>
d03c0fbc:	42b4      	cmp	r4, r6
d03c0fbe:	d214      	bcs.n	d03c0fea <ui_midi_find_next_time+0x7e>
d03c0fc0:	42b0      	cmp	r0, r6
d03c0fc2:	bf34      	ite	cc
d03c0fc4:	2200      	movcc	r2, #0
d03c0fc6:	2201      	movcs	r2, #1
d03c0fc8:	b11a      	cbz	r2, d03c0fd2 <ui_midi_find_next_time+0x66>
d03c0fca:	42a8      	cmp	r0, r5
d03c0fcc:	bf3c      	itt	cc
d03c0fce:	4605      	movcc	r5, r0
d03c0fd0:	2701      	movcc	r7, #1
d03c0fd2:	f109 0901 	add.w	r9, r9, #1
d03c0fd6:	f108 0810 	add.w	r8, r8, #16
d03c0fda:	e7d6      	b.n	d03c0f8a <ui_midi_find_next_time+0x1e>
d03c0fdc:	42b4      	cmp	r4, r6
d03c0fde:	d809      	bhi.n	d03c0ff4 <ui_midi_find_next_time+0x88>
d03c0fe0:	42b0      	cmp	r0, r6
d03c0fe2:	bf94      	ite	ls
d03c0fe4:	2200      	movls	r2, #0
d03c0fe6:	2201      	movhi	r2, #1
d03c0fe8:	e7ee      	b.n	d03c0fc8 <ui_midi_find_next_time+0x5c>
d03c0fea:	42a5      	cmp	r5, r4
d03c0fec:	d9e8      	bls.n	d03c0fc0 <ui_midi_find_next_time+0x54>
d03c0fee:	4625      	mov	r5, r4
d03c0ff0:	4657      	mov	r7, sl
d03c0ff2:	e7e5      	b.n	d03c0fc0 <ui_midi_find_next_time+0x54>
d03c0ff4:	42a5      	cmp	r5, r4
d03c0ff6:	d9f3      	bls.n	d03c0fe0 <ui_midi_find_next_time+0x74>
d03c0ff8:	4625      	mov	r5, r4
d03c0ffa:	2701      	movs	r7, #1
d03c0ffc:	e7f0      	b.n	d03c0fe0 <ui_midi_find_next_time+0x74>
d03c0ffe:	bf00      	nop
d03c1000:	d03ccf74 	.word	0xd03ccf74
d03c1004:	d03ccf78 	.word	0xd03ccf78

d03c1008 <ui_midi_import_tick_to_seq>:
d03c1008:	b570      	push	{r4, r5, r6, lr}
d03c100a:	4606      	mov	r6, r0
d03c100c:	f7ff fdbe 	bl	d03c0b8c <seq_beat_ticks>
d03c1010:	b20b      	sxth	r3, r1
d03c1012:	2500      	movs	r5, #0
d03c1014:	2b00      	cmp	r3, #0
d03c1016:	f04f 0300 	mov.w	r3, #0
d03c101a:	bfd8      	it	le
d03c101c:	f44f 71f0 	movle.w	r1, #480	; 0x1e0
d03c1020:	084c      	lsrs	r4, r1, #1
d03c1022:	460a      	mov	r2, r1
d03c1024:	b2a4      	uxth	r4, r4
d03c1026:	fbe0 4506 	umlal	r4, r5, r0, r6
d03c102a:	4620      	mov	r0, r4
d03c102c:	4629      	mov	r1, r5
d03c102e:	f008 fae5 	bl	d03c95fc <__aeabi_uldivmod>
d03c1032:	bd70      	pop	{r4, r5, r6, pc}

d03c1034 <ui_midi_import_close_open_notes>:
d03c1034:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03c1038:	eb00 0091 	add.w	r0, r0, r1, lsr #2
d03c103c:	4e17      	ldr	r6, [pc, #92]	; (d03c109c <ui_midi_import_close_open_notes+0x68>)
d03c103e:	f7ff ffe3 	bl	d03c1008 <ui_midi_import_tick_to_seq>
d03c1042:	4b17      	ldr	r3, [pc, #92]	; (d03c10a0 <ui_midi_import_close_open_notes+0x6c>)
d03c1044:	2110      	movs	r1, #16
d03c1046:	f64f 7cff 	movw	ip, #65535	; 0xffff
d03c104a:	f8d3 e000 	ldr.w	lr, [r3]
d03c104e:	4b15      	ldr	r3, [pc, #84]	; (d03c10a4 <ui_midi_import_close_open_notes+0x70>)
d03c1050:	681f      	ldr	r7, [r3, #0]
d03c1052:	4635      	mov	r5, r6
d03c1054:	2200      	movs	r2, #0
d03c1056:	f835 3b02 	ldrh.w	r3, [r5], #2
d03c105a:	4563      	cmp	r3, ip
d03c105c:	d011      	beq.n	d03c1082 <ui_midi_import_close_open_notes+0x4e>
d03c105e:	4573      	cmp	r3, lr
d03c1060:	d20f      	bcs.n	d03c1082 <ui_midi_import_close_open_notes+0x4e>
d03c1062:	011c      	lsls	r4, r3, #4
d03c1064:	eb07 1303 	add.w	r3, r7, r3, lsl #4
d03c1068:	f893 800d 	ldrb.w	r8, [r3, #13]
d03c106c:	f1b8 0f00 	cmp.w	r8, #0
d03c1070:	d007      	beq.n	d03c1082 <ui_midi_import_close_open_notes+0x4e>
d03c1072:	593c      	ldr	r4, [r7, r4]
d03c1074:	4284      	cmp	r4, r0
d03c1076:	bf34      	ite	cc
d03c1078:	1b04      	subcc	r4, r0, r4
d03c107a:	2401      	movcs	r4, #1
d03c107c:	605c      	str	r4, [r3, #4]
d03c107e:	f825 cc02 	strh.w	ip, [r5, #-2]
d03c1082:	3201      	adds	r2, #1
d03c1084:	b2d2      	uxtb	r2, r2
d03c1086:	2a80      	cmp	r2, #128	; 0x80
d03c1088:	d1e5      	bne.n	d03c1056 <ui_midi_import_close_open_notes+0x22>
d03c108a:	3901      	subs	r1, #1
d03c108c:	f506 7680 	add.w	r6, r6, #256	; 0x100
d03c1090:	f011 01ff 	ands.w	r1, r1, #255	; 0xff
d03c1094:	d1dd      	bne.n	d03c1052 <ui_midi_import_close_open_notes+0x1e>
d03c1096:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03c109a:	bf00      	nop
d03c109c:	d03ce2be 	.word	0xd03ce2be
d03c10a0:	d03ccf74 	.word	0xd03ccf74
d03c10a4:	d03ccf78 	.word	0xd03ccf78

d03c10a8 <ui_draw_cursor>:
d03c10a8:	4b6b      	ldr	r3, [pc, #428]	; (d03c1258 <ui_draw_cursor+0x1b0>)
d03c10aa:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c10ae:	f9b3 8000 	ldrsh.w	r8, [r3]
d03c10b2:	4b6a      	ldr	r3, [pc, #424]	; (d03c125c <ui_draw_cursor+0x1b4>)
d03c10b4:	4c6a      	ldr	r4, [pc, #424]	; (d03c1260 <ui_draw_cursor+0x1b8>)
d03c10b6:	ea28 78e8 	bic.w	r8, r8, r8, asr #31
d03c10ba:	f9b3 6000 	ldrsh.w	r6, [r3]
d03c10be:	4b69      	ldr	r3, [pc, #420]	; (d03c1264 <ui_draw_cursor+0x1bc>)
d03c10c0:	ea26 76e6 	bic.w	r6, r6, r6, asr #31
d03c10c4:	781b      	ldrb	r3, [r3, #0]
d03c10c6:	2b00      	cmp	r3, #0
d03c10c8:	7b23      	ldrb	r3, [r4, #12]
d03c10ca:	7b62      	ldrb	r2, [r4, #13]
d03c10cc:	bf14      	ite	ne
d03c10ce:	20f2      	movne	r0, #242	; 0xf2
d03c10d0:	20f1      	moveq	r0, #241	; 0xf1
d03c10d2:	f5b8 7fec 	cmp.w	r8, #472	; 0x1d8
d03c10d6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c10da:	7ba2      	ldrb	r2, [r4, #14]
d03c10dc:	bfa8      	it	ge
d03c10de:	f44f 78ec 	movge.w	r8, #472	; 0x1d8
d03c10e2:	f5b6 7f9b 	cmp.w	r6, #310	; 0x136
d03c10e6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c10ea:	7be2      	ldrb	r2, [r4, #15]
d03c10ec:	bfa8      	it	ge
d03c10ee:	f44f 769b 	movge.w	r6, #310	; 0x136
d03c10f2:	fa1f fa88 	uxth.w	sl, r8
d03c10f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c10fa:	b2b7      	uxth	r7, r6
d03c10fc:	f10a 0514 	add.w	r5, sl, #20
d03c1100:	685b      	ldr	r3, [r3, #4]
d03c1102:	b2ad      	uxth	r5, r5
d03c1104:	46b9      	mov	r9, r7
d03c1106:	68db      	ldr	r3, [r3, #12]
d03c1108:	4798      	blx	r3
d03c110a:	7b22      	ldrb	r2, [r4, #12]
d03c110c:	4640      	mov	r0, r8
d03c110e:	7b63      	ldrb	r3, [r4, #13]
d03c1110:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03c1114:	7ba3      	ldrb	r3, [r4, #14]
d03c1116:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d03c111a:	7be3      	ldrb	r3, [r4, #15]
d03c111c:	ea42 6203 	orr.w	r2, r2, r3, lsl #24
d03c1120:	fa0f f389 	sxth.w	r3, r9
d03c1124:	f109 0901 	add.w	r9, r9, #1
d03c1128:	6852      	ldr	r2, [r2, #4]
d03c112a:	4619      	mov	r1, r3
d03c112c:	fa1f f989 	uxth.w	r9, r9
d03c1130:	f8d2 b040 	ldr.w	fp, [r2, #64]	; 0x40
d03c1134:	b22a      	sxth	r2, r5
d03c1136:	3d01      	subs	r5, #1
d03c1138:	47d8      	blx	fp
d03c113a:	b2ad      	uxth	r5, r5
d03c113c:	4555      	cmp	r5, sl
d03c113e:	d1e4      	bne.n	d03c110a <ui_draw_cursor+0x62>
d03c1140:	7b23      	ldrb	r3, [r4, #12]
d03c1142:	20f0      	movs	r0, #240	; 0xf0
d03c1144:	7b62      	ldrb	r2, [r4, #13]
d03c1146:	f105 0916 	add.w	r9, r5, #22
d03c114a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c114e:	7ba2      	ldrb	r2, [r4, #14]
d03c1150:	fa0f f989 	sxth.w	r9, r9
d03c1154:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c1158:	7be2      	ldrb	r2, [r4, #15]
d03c115a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c115e:	685b      	ldr	r3, [r3, #4]
d03c1160:	68db      	ldr	r3, [r3, #12]
d03c1162:	4798      	blx	r3
d03c1164:	7b23      	ldrb	r3, [r4, #12]
d03c1166:	7b62      	ldrb	r2, [r4, #13]
d03c1168:	4631      	mov	r1, r6
d03c116a:	4640      	mov	r0, r8
d03c116c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c1170:	7ba2      	ldrb	r2, [r4, #14]
d03c1172:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c1176:	7be2      	ldrb	r2, [r4, #15]
d03c1178:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c117c:	464a      	mov	r2, r9
d03c117e:	685b      	ldr	r3, [r3, #4]
d03c1180:	f8d3 a040 	ldr.w	sl, [r3, #64]	; 0x40
d03c1184:	4633      	mov	r3, r6
d03c1186:	47d0      	blx	sl
d03c1188:	7b22      	ldrb	r2, [r4, #12]
d03c118a:	7b63      	ldrb	r3, [r4, #13]
d03c118c:	4640      	mov	r0, r8
d03c118e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03c1192:	7ba3      	ldrb	r3, [r4, #14]
d03c1194:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d03c1198:	7be3      	ldrb	r3, [r4, #15]
d03c119a:	ea42 6203 	orr.w	r2, r2, r3, lsl #24
d03c119e:	1c7b      	adds	r3, r7, #1
d03c11a0:	6852      	ldr	r2, [r2, #4]
d03c11a2:	b21b      	sxth	r3, r3
d03c11a4:	f8d2 a040 	ldr.w	sl, [r2, #64]	; 0x40
d03c11a8:	4619      	mov	r1, r3
d03c11aa:	464a      	mov	r2, r9
d03c11ac:	47d0      	blx	sl
d03c11ae:	7b22      	ldrb	r2, [r4, #12]
d03c11b0:	7b63      	ldrb	r3, [r4, #13]
d03c11b2:	4631      	mov	r1, r6
d03c11b4:	4640      	mov	r0, r8
d03c11b6:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03c11ba:	7ba3      	ldrb	r3, [r4, #14]
d03c11bc:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d03c11c0:	7be3      	ldrb	r3, [r4, #15]
d03c11c2:	ea42 6203 	orr.w	r2, r2, r3, lsl #24
d03c11c6:	f107 0316 	add.w	r3, r7, #22
d03c11ca:	6852      	ldr	r2, [r2, #4]
d03c11cc:	b21b      	sxth	r3, r3
d03c11ce:	f8d2 a040 	ldr.w	sl, [r2, #64]	; 0x40
d03c11d2:	4642      	mov	r2, r8
d03c11d4:	9300      	str	r3, [sp, #0]
d03c11d6:	47d0      	blx	sl
d03c11d8:	7b21      	ldrb	r1, [r4, #12]
d03c11da:	7b62      	ldrb	r2, [r4, #13]
d03c11dc:	9b00      	ldr	r3, [sp, #0]
d03c11de:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d03c11e2:	7ba2      	ldrb	r2, [r4, #14]
d03c11e4:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
d03c11e8:	7be2      	ldrb	r2, [r4, #15]
d03c11ea:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
d03c11ee:	1c6a      	adds	r2, r5, #1
d03c11f0:	6849      	ldr	r1, [r1, #4]
d03c11f2:	b212      	sxth	r2, r2
d03c11f4:	f8d1 8040 	ldr.w	r8, [r1, #64]	; 0x40
d03c11f8:	4610      	mov	r0, r2
d03c11fa:	4631      	mov	r1, r6
d03c11fc:	9201      	str	r2, [sp, #4]
d03c11fe:	47c0      	blx	r8
d03c1200:	7b21      	ldrb	r1, [r4, #12]
d03c1202:	7b63      	ldrb	r3, [r4, #13]
d03c1204:	f105 0015 	add.w	r0, r5, #21
d03c1208:	9a01      	ldr	r2, [sp, #4]
d03c120a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03c120e:	7ba3      	ldrb	r3, [r4, #14]
d03c1210:	b200      	sxth	r0, r0
d03c1212:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d03c1216:	7be3      	ldrb	r3, [r4, #15]
d03c1218:	ea41 6103 	orr.w	r1, r1, r3, lsl #24
d03c121c:	f107 0314 	add.w	r3, r7, #20
d03c1220:	6849      	ldr	r1, [r1, #4]
d03c1222:	b21b      	sxth	r3, r3
d03c1224:	6c0f      	ldr	r7, [r1, #64]	; 0x40
d03c1226:	4631      	mov	r1, r6
d03c1228:	9300      	str	r3, [sp, #0]
d03c122a:	47b8      	blx	r7
d03c122c:	7b21      	ldrb	r1, [r4, #12]
d03c122e:	4648      	mov	r0, r9
d03c1230:	7b62      	ldrb	r2, [r4, #13]
d03c1232:	9b00      	ldr	r3, [sp, #0]
d03c1234:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d03c1238:	7ba2      	ldrb	r2, [r4, #14]
d03c123a:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
d03c123e:	7be2      	ldrb	r2, [r4, #15]
d03c1240:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
d03c1244:	1caa      	adds	r2, r5, #2
d03c1246:	6849      	ldr	r1, [r1, #4]
d03c1248:	b212      	sxth	r2, r2
d03c124a:	6c0c      	ldr	r4, [r1, #64]	; 0x40
d03c124c:	4631      	mov	r1, r6
d03c124e:	46a4      	mov	ip, r4
d03c1250:	b003      	add	sp, #12
d03c1252:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c1256:	4760      	bx	ip
d03c1258:	d03cf334 	.word	0xd03cf334
d03c125c:	d03cf336 	.word	0xd03cf336
d03c1260:	2001f000 	.word	0x2001f000
d03c1264:	d03ce2bc 	.word	0xd03ce2bc

d03c1268 <ui_hash_step>:
d03c1268:	4b03      	ldr	r3, [pc, #12]	; (d03c1278 <ui_hash_step+0x10>)
d03c126a:	440b      	add	r3, r1
d03c126c:	eb03 1380 	add.w	r3, r3, r0, lsl #6
d03c1270:	eb03 0390 	add.w	r3, r3, r0, lsr #2
d03c1274:	4058      	eors	r0, r3
d03c1276:	4770      	bx	lr
d03c1278:	9e3779b9 	.word	0x9e3779b9

d03c127c <seq_clear_note_storage>:
d03c127c:	b508      	push	{r3, lr}
d03c127e:	4b09      	ldr	r3, [pc, #36]	; (d03c12a4 <seq_clear_note_storage+0x28>)
d03c1280:	6818      	ldr	r0, [r3, #0]
d03c1282:	b130      	cbz	r0, d03c1292 <seq_clear_note_storage+0x16>
d03c1284:	4b08      	ldr	r3, [pc, #32]	; (d03c12a8 <seq_clear_note_storage+0x2c>)
d03c1286:	681a      	ldr	r2, [r3, #0]
d03c1288:	b11a      	cbz	r2, d03c1292 <seq_clear_note_storage+0x16>
d03c128a:	0112      	lsls	r2, r2, #4
d03c128c:	2100      	movs	r1, #0
d03c128e:	f008 fb63 	bl	d03c9958 <memset>
d03c1292:	4b06      	ldr	r3, [pc, #24]	; (d03c12ac <seq_clear_note_storage+0x30>)
d03c1294:	2200      	movs	r2, #0
d03c1296:	601a      	str	r2, [r3, #0]
d03c1298:	f7ff fcc4 	bl	d03c0c24 <seq_playback_mark_dirty>
d03c129c:	4b04      	ldr	r3, [pc, #16]	; (d03c12b0 <seq_clear_note_storage+0x34>)
d03c129e:	2201      	movs	r2, #1
d03c12a0:	701a      	strb	r2, [r3, #0]
d03c12a2:	bd08      	pop	{r3, pc}
d03c12a4:	d03ccf78 	.word	0xd03ccf78
d03c12a8:	d03ccf70 	.word	0xd03ccf70
d03c12ac:	d03ccf7c 	.word	0xd03ccf7c
d03c12b0:	d03cf36b 	.word	0xd03cf36b

d03c12b4 <ui_vm_editor_clear_ram_patch>:
d03c12b4:	4b0f      	ldr	r3, [pc, #60]	; (d03c12f4 <ui_vm_editor_clear_ram_patch+0x40>)
d03c12b6:	4810      	ldr	r0, [pc, #64]	; (d03c12f8 <ui_vm_editor_clear_ram_patch+0x44>)
d03c12b8:	b430      	push	{r4, r5}
d03c12ba:	781a      	ldrb	r2, [r3, #0]
d03c12bc:	2aff      	cmp	r2, #255	; 0xff
d03c12be:	d008      	beq.n	d03c12d2 <ui_vm_editor_clear_ram_patch+0x1e>
d03c12c0:	490e      	ldr	r1, [pc, #56]	; (d03c12fc <ui_vm_editor_clear_ram_patch+0x48>)
d03c12c2:	4c0f      	ldr	r4, [pc, #60]	; (d03c1300 <ui_vm_editor_clear_ram_patch+0x4c>)
d03c12c4:	f851 5022 	ldr.w	r5, [r1, r2, lsl #2]
d03c12c8:	42a5      	cmp	r5, r4
d03c12ca:	bf04      	itt	eq
d03c12cc:	6804      	ldreq	r4, [r0, #0]
d03c12ce:	f841 4022 	streq.w	r4, [r1, r2, lsl #2]
d03c12d2:	2100      	movs	r1, #0
d03c12d4:	4a0b      	ldr	r2, [pc, #44]	; (d03c1304 <ui_vm_editor_clear_ram_patch+0x50>)
d03c12d6:	7011      	strb	r1, [r2, #0]
d03c12d8:	22ff      	movs	r2, #255	; 0xff
d03c12da:	6001      	str	r1, [r0, #0]
d03c12dc:	701a      	strb	r2, [r3, #0]
d03c12de:	f44f 72c0 	mov.w	r2, #384	; 0x180
d03c12e2:	4b09      	ldr	r3, [pc, #36]	; (d03c1308 <ui_vm_editor_clear_ram_patch+0x54>)
d03c12e4:	4806      	ldr	r0, [pc, #24]	; (d03c1300 <ui_vm_editor_clear_ram_patch+0x4c>)
d03c12e6:	7019      	strb	r1, [r3, #0]
d03c12e8:	4b08      	ldr	r3, [pc, #32]	; (d03c130c <ui_vm_editor_clear_ram_patch+0x58>)
d03c12ea:	7019      	strb	r1, [r3, #0]
d03c12ec:	bc30      	pop	{r4, r5}
d03c12ee:	f008 bb33 	b.w	d03c9958 <memset>
d03c12f2:	bf00      	nop
d03c12f4:	d03cf528 	.word	0xd03cf528
d03c12f8:	d03cf524 	.word	0xd03cf524
d03c12fc:	d03cc608 	.word	0xd03cc608
d03c1300:	d03cf3a2 	.word	0xd03cf3a2
d03c1304:	d03cf523 	.word	0xd03cf523
d03c1308:	d03cf529 	.word	0xd03cf529
d03c130c:	d03cf522 	.word	0xd03cf522

d03c1310 <seq_reserve_notes>:
d03c1310:	4b31      	ldr	r3, [pc, #196]	; (d03c13d8 <seq_reserve_notes+0xc8>)
d03c1312:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c1316:	681c      	ldr	r4, [r3, #0]
d03c1318:	4698      	mov	r8, r3
d03c131a:	4284      	cmp	r4, r0
d03c131c:	d25a      	bcs.n	d03c13d4 <seq_reserve_notes+0xc4>
d03c131e:	2c00      	cmp	r4, #0
d03c1320:	bf08      	it	eq
d03c1322:	f44f 7400 	moveq.w	r4, #512	; 0x200
d03c1326:	4284      	cmp	r4, r0
d03c1328:	d20e      	bcs.n	d03c1348 <seq_reserve_notes+0x38>
d03c132a:	f5b4 5f00 	cmp.w	r4, #8192	; 0x2000
d03c132e:	d303      	bcc.n	d03c1338 <seq_reserve_notes+0x28>
d03c1330:	2000      	movs	r0, #0
d03c1332:	b003      	add	sp, #12
d03c1334:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c1338:	f504 7400 	add.w	r4, r4, #512	; 0x200
d03c133c:	f5b4 5f00 	cmp.w	r4, #8192	; 0x2000
d03c1340:	bf28      	it	cs
d03c1342:	f44f 5400 	movcs.w	r4, #8192	; 0x2000
d03c1346:	e7ee      	b.n	d03c1326 <seq_reserve_notes+0x16>
d03c1348:	ea4f 1904 	mov.w	r9, r4, lsl #4
d03c134c:	4648      	mov	r0, r9
d03c134e:	f008 fad7 	bl	d03c9900 <malloc>
d03c1352:	4606      	mov	r6, r0
d03c1354:	2800      	cmp	r0, #0
d03c1356:	d0eb      	beq.n	d03c1330 <seq_reserve_notes+0x20>
d03c1358:	0065      	lsls	r5, r4, #1
d03c135a:	4628      	mov	r0, r5
d03c135c:	f008 fad0 	bl	d03c9900 <malloc>
d03c1360:	4607      	mov	r7, r0
d03c1362:	b918      	cbnz	r0, d03c136c <seq_reserve_notes+0x5c>
d03c1364:	4630      	mov	r0, r6
d03c1366:	f008 fad3 	bl	d03c9910 <free>
d03c136a:	e7e1      	b.n	d03c1330 <seq_reserve_notes+0x20>
d03c136c:	4628      	mov	r0, r5
d03c136e:	f008 fac7 	bl	d03c9900 <malloc>
d03c1372:	4605      	mov	r5, r0
d03c1374:	b918      	cbnz	r0, d03c137e <seq_reserve_notes+0x6e>
d03c1376:	4638      	mov	r0, r7
d03c1378:	f008 faca 	bl	d03c9910 <free>
d03c137c:	e7f2      	b.n	d03c1364 <seq_reserve_notes+0x54>
d03c137e:	2100      	movs	r1, #0
d03c1380:	464a      	mov	r2, r9
d03c1382:	4630      	mov	r0, r6
d03c1384:	f008 fae8 	bl	d03c9958 <memset>
d03c1388:	4b14      	ldr	r3, [pc, #80]	; (d03c13dc <seq_reserve_notes+0xcc>)
d03c138a:	6819      	ldr	r1, [r3, #0]
d03c138c:	469a      	mov	sl, r3
d03c138e:	b159      	cbz	r1, d03c13a8 <seq_reserve_notes+0x98>
d03c1390:	4b13      	ldr	r3, [pc, #76]	; (d03c13e0 <seq_reserve_notes+0xd0>)
d03c1392:	681a      	ldr	r2, [r3, #0]
d03c1394:	b142      	cbz	r2, d03c13a8 <seq_reserve_notes+0x98>
d03c1396:	0112      	lsls	r2, r2, #4
d03c1398:	4630      	mov	r0, r6
d03c139a:	9101      	str	r1, [sp, #4]
d03c139c:	f008 face 	bl	d03c993c <memcpy>
d03c13a0:	9901      	ldr	r1, [sp, #4]
d03c13a2:	4608      	mov	r0, r1
d03c13a4:	f008 fab4 	bl	d03c9910 <free>
d03c13a8:	4b0e      	ldr	r3, [pc, #56]	; (d03c13e4 <seq_reserve_notes+0xd4>)
d03c13aa:	6818      	ldr	r0, [r3, #0]
d03c13ac:	4699      	mov	r9, r3
d03c13ae:	b108      	cbz	r0, d03c13b4 <seq_reserve_notes+0xa4>
d03c13b0:	f008 faae 	bl	d03c9910 <free>
d03c13b4:	4b0c      	ldr	r3, [pc, #48]	; (d03c13e8 <seq_reserve_notes+0xd8>)
d03c13b6:	6818      	ldr	r0, [r3, #0]
d03c13b8:	469b      	mov	fp, r3
d03c13ba:	b108      	cbz	r0, d03c13c0 <seq_reserve_notes+0xb0>
d03c13bc:	f008 faa8 	bl	d03c9910 <free>
d03c13c0:	f8ca 6000 	str.w	r6, [sl]
d03c13c4:	f8c9 7000 	str.w	r7, [r9]
d03c13c8:	f8cb 5000 	str.w	r5, [fp]
d03c13cc:	f8c8 4000 	str.w	r4, [r8]
d03c13d0:	f7ff fc28 	bl	d03c0c24 <seq_playback_mark_dirty>
d03c13d4:	2001      	movs	r0, #1
d03c13d6:	e7ac      	b.n	d03c1332 <seq_reserve_notes+0x22>
d03c13d8:	d03ccf70 	.word	0xd03ccf70
d03c13dc:	d03ccf78 	.word	0xd03ccf78
d03c13e0:	d03ccf74 	.word	0xd03ccf74
d03c13e4:	d03ccf88 	.word	0xd03ccf88
d03c13e8:	d03ccf84 	.word	0xd03ccf84

d03c13ec <ui_set_status>:
d03c13ec:	4a05      	ldr	r2, [pc, #20]	; (d03c1404 <ui_set_status+0x18>)
d03c13ee:	2128      	movs	r1, #40	; 0x28
d03c13f0:	b508      	push	{r3, lr}
d03c13f2:	4603      	mov	r3, r0
d03c13f4:	4804      	ldr	r0, [pc, #16]	; (d03c1408 <ui_set_status+0x1c>)
d03c13f6:	f008 fdb9 	bl	d03c9f6c <sniprintf>
d03c13fa:	4b04      	ldr	r3, [pc, #16]	; (d03c140c <ui_set_status+0x20>)
d03c13fc:	225a      	movs	r2, #90	; 0x5a
d03c13fe:	701a      	strb	r2, [r3, #0]
d03c1400:	bd08      	pop	{r3, pc}
d03c1402:	bf00      	nop
d03c1404:	d03cb944 	.word	0xd03cb944
d03c1408:	d03cf378 	.word	0xd03cf378
d03c140c:	d03cf3a0 	.word	0xd03cf3a0

d03c1410 <ui_file_add_entry>:
d03c1410:	b570      	push	{r4, r5, r6, lr}
d03c1412:	4c0a      	ldr	r4, [pc, #40]	; (d03c143c <ui_file_add_entry+0x2c>)
d03c1414:	4603      	mov	r3, r0
d03c1416:	460d      	mov	r5, r1
d03c1418:	7820      	ldrb	r0, [r4, #0]
d03c141a:	283f      	cmp	r0, #63	; 0x3f
d03c141c:	d80d      	bhi.n	d03c143a <ui_file_add_entry+0x2a>
d03c141e:	781a      	ldrb	r2, [r3, #0]
d03c1420:	b15a      	cbz	r2, d03c143a <ui_file_add_entry+0x2a>
d03c1422:	4e07      	ldr	r6, [pc, #28]	; (d03c1440 <ui_file_add_entry+0x30>)
d03c1424:	2120      	movs	r1, #32
d03c1426:	4a07      	ldr	r2, [pc, #28]	; (d03c1444 <ui_file_add_entry+0x34>)
d03c1428:	eb06 1040 	add.w	r0, r6, r0, lsl #5
d03c142c:	f008 fd9e 	bl	d03c9f6c <sniprintf>
d03c1430:	7823      	ldrb	r3, [r4, #0]
d03c1432:	4a05      	ldr	r2, [pc, #20]	; (d03c1448 <ui_file_add_entry+0x38>)
d03c1434:	54d5      	strb	r5, [r2, r3]
d03c1436:	3301      	adds	r3, #1
d03c1438:	7023      	strb	r3, [r4, #0]
d03c143a:	bd70      	pop	{r4, r5, r6, pc}
d03c143c:	d03cda18 	.word	0xd03cda18
d03c1440:	d03cdab9 	.word	0xd03cdab9
d03c1444:	d03cb944 	.word	0xd03cb944
d03c1448:	d03cda79 	.word	0xd03cda79

d03c144c <ui_draw_seq_overlay>:
d03c144c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c1450:	f04f 0800 	mov.w	r8, #0
d03c1454:	b091      	sub	sp, #68	; 0x44
d03c1456:	4e98      	ldr	r6, [pc, #608]	; (d03c16b8 <ui_draw_seq_overlay+0x26c>)
d03c1458:	f04f 0bb0 	mov.w	fp, #176	; 0xb0
d03c145c:	4647      	mov	r7, r8
d03c145e:	4c97      	ldr	r4, [pc, #604]	; (d03c16bc <ui_draw_seq_overlay+0x270>)
d03c1460:	f8df a270 	ldr.w	sl, [pc, #624]	; d03c16d4 <ui_draw_seq_overlay+0x288>
d03c1464:	7833      	ldrb	r3, [r6, #0]
d03c1466:	2b00      	cmp	r3, #0
d03c1468:	f000 8088 	beq.w	d03c157c <ui_draw_seq_overlay+0x130>
d03c146c:	7973      	ldrb	r3, [r6, #5]
d03c146e:	2b01      	cmp	r3, #1
d03c1470:	f040 8084 	bne.w	d03c157c <ui_draw_seq_overlay+0x130>
d03c1474:	78b5      	ldrb	r5, [r6, #2]
d03c1476:	f04f 0930 	mov.w	r9, #48	; 0x30
d03c147a:	200f      	movs	r0, #15
d03c147c:	2d54      	cmp	r5, #84	; 0x54
d03c147e:	bf28      	it	cs
d03c1480:	2554      	movcs	r5, #84	; 0x54
d03c1482:	2d24      	cmp	r5, #36	; 0x24
d03c1484:	bf38      	it	cc
d03c1486:	2524      	movcc	r5, #36	; 0x24
d03c1488:	3d24      	subs	r5, #36	; 0x24
d03c148a:	b2ad      	uxth	r5, r5
d03c148c:	fb0b f505 	mul.w	r5, fp, r5
d03c1490:	fbb5 f5f9 	udiv	r5, r5, r9
d03c1494:	b2ab      	uxth	r3, r5
d03c1496:	9303      	str	r3, [sp, #12]
d03c1498:	7b23      	ldrb	r3, [r4, #12]
d03c149a:	7b62      	ldrb	r2, [r4, #13]
d03c149c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c14a0:	7ba2      	ldrb	r2, [r4, #14]
d03c14a2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c14a6:	7be2      	ldrb	r2, [r4, #15]
d03c14a8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c14ac:	685b      	ldr	r3, [r3, #4]
d03c14ae:	68db      	ldr	r3, [r3, #12]
d03c14b0:	4798      	blx	r3
d03c14b2:	7b23      	ldrb	r3, [r4, #12]
d03c14b4:	7b62      	ldrb	r2, [r4, #13]
d03c14b6:	20e8      	movs	r0, #232	; 0xe8
d03c14b8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c14bc:	7ba2      	ldrb	r2, [r4, #14]
d03c14be:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c14c2:	7be2      	ldrb	r2, [r4, #15]
d03c14c4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c14c8:	9a03      	ldr	r2, [sp, #12]
d03c14ca:	685b      	ldr	r3, [r3, #4]
d03c14cc:	f1c2 01f2 	rsb	r1, r2, #242	; 0xf2
d03c14d0:	685b      	ldr	r3, [r3, #4]
d03c14d2:	b209      	sxth	r1, r1
d03c14d4:	461d      	mov	r5, r3
d03c14d6:	230a      	movs	r3, #10
d03c14d8:	461a      	mov	r2, r3
d03c14da:	47a8      	blx	r5
d03c14dc:	7b23      	ldrb	r3, [r4, #12]
d03c14de:	7b62      	ldrb	r2, [r4, #13]
d03c14e0:	7870      	ldrb	r0, [r6, #1]
d03c14e2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c14e6:	7ba2      	ldrb	r2, [r4, #14]
d03c14e8:	f000 0007 	and.w	r0, r0, #7
d03c14ec:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c14f0:	7be2      	ldrb	r2, [r4, #15]
d03c14f2:	3020      	adds	r0, #32
d03c14f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c14f8:	685b      	ldr	r3, [r3, #4]
d03c14fa:	68db      	ldr	r3, [r3, #12]
d03c14fc:	4798      	blx	r3
d03c14fe:	7b23      	ldrb	r3, [r4, #12]
d03c1500:	7b62      	ldrb	r2, [r4, #13]
d03c1502:	20e9      	movs	r0, #233	; 0xe9
d03c1504:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c1508:	7ba2      	ldrb	r2, [r4, #14]
d03c150a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c150e:	7be2      	ldrb	r2, [r4, #15]
d03c1510:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c1514:	9a03      	ldr	r2, [sp, #12]
d03c1516:	685b      	ldr	r3, [r3, #4]
d03c1518:	f1c2 01f3 	rsb	r1, r2, #243	; 0xf3
d03c151c:	685d      	ldr	r5, [r3, #4]
d03c151e:	2308      	movs	r3, #8
d03c1520:	b209      	sxth	r1, r1
d03c1522:	461a      	mov	r2, r3
d03c1524:	47a8      	blx	r5
d03c1526:	7873      	ldrb	r3, [r6, #1]
d03c1528:	4649      	mov	r1, r9
d03c152a:	4652      	mov	r2, sl
d03c152c:	3301      	adds	r3, #1
d03c152e:	a804      	add	r0, sp, #16
d03c1530:	9300      	str	r3, [sp, #0]
d03c1532:	78b3      	ldrb	r3, [r6, #2]
d03c1534:	f008 fd1a 	bl	d03c9f6c <sniprintf>
d03c1538:	7b23      	ldrb	r3, [r4, #12]
d03c153a:	7b62      	ldrb	r2, [r4, #13]
d03c153c:	20e8      	movs	r0, #232	; 0xe8
d03c153e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c1542:	7ba2      	ldrb	r2, [r4, #14]
d03c1544:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c1548:	7be2      	ldrb	r2, [r4, #15]
d03c154a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c154e:	685b      	ldr	r3, [r3, #4]
d03c1550:	68db      	ldr	r3, [r3, #12]
d03c1552:	4798      	blx	r3
d03c1554:	7b23      	ldrb	r3, [r4, #12]
d03c1556:	7b62      	ldrb	r2, [r4, #13]
d03c1558:	f107 0148 	add.w	r1, r7, #72	; 0x48
d03c155c:	3710      	adds	r7, #16
d03c155e:	f44f 70be 	mov.w	r0, #380	; 0x17c
d03c1562:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c1566:	7ba2      	ldrb	r2, [r4, #14]
d03c1568:	b2ff      	uxtb	r7, r7
d03c156a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c156e:	7be2      	ldrb	r2, [r4, #15]
d03c1570:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c1574:	aa04      	add	r2, sp, #16
d03c1576:	685b      	ldr	r3, [r3, #4]
d03c1578:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c157a:	4798      	blx	r3
d03c157c:	f108 0801 	add.w	r8, r8, #1
d03c1580:	3608      	adds	r6, #8
d03c1582:	f1b8 0f06 	cmp.w	r8, #6
d03c1586:	f47f af6d 	bne.w	d03c1464 <ui_draw_seq_overlay+0x18>
d03c158a:	4c4c      	ldr	r4, [pc, #304]	; (d03c16bc <ui_draw_seq_overlay+0x270>)
d03c158c:	20f2      	movs	r0, #242	; 0xf2
d03c158e:	7b23      	ldrb	r3, [r4, #12]
d03c1590:	7b62      	ldrb	r2, [r4, #13]
d03c1592:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c1596:	7ba2      	ldrb	r2, [r4, #14]
d03c1598:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c159c:	7be2      	ldrb	r2, [r4, #15]
d03c159e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c15a2:	685b      	ldr	r3, [r3, #4]
d03c15a4:	68db      	ldr	r3, [r3, #12]
d03c15a6:	4798      	blx	r3
d03c15a8:	7b23      	ldrb	r3, [r4, #12]
d03c15aa:	7b62      	ldrb	r2, [r4, #13]
d03c15ac:	2140      	movs	r1, #64	; 0x40
d03c15ae:	20ec      	movs	r0, #236	; 0xec
d03c15b0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c15b4:	7ba2      	ldrb	r2, [r4, #14]
d03c15b6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c15ba:	7be2      	ldrb	r2, [r4, #15]
d03c15bc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c15c0:	2202      	movs	r2, #2
d03c15c2:	685b      	ldr	r3, [r3, #4]
d03c15c4:	685d      	ldr	r5, [r3, #4]
d03c15c6:	23bc      	movs	r3, #188	; 0xbc
d03c15c8:	47a8      	blx	r5
d03c15ca:	7b23      	ldrb	r3, [r4, #12]
d03c15cc:	7b62      	ldrb	r2, [r4, #13]
d03c15ce:	20e8      	movs	r0, #232	; 0xe8
d03c15d0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c15d4:	7ba2      	ldrb	r2, [r4, #14]
d03c15d6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c15da:	7be2      	ldrb	r2, [r4, #15]
d03c15dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c15e0:	685b      	ldr	r3, [r3, #4]
d03c15e2:	68db      	ldr	r3, [r3, #12]
d03c15e4:	4798      	blx	r3
d03c15e6:	4b36      	ldr	r3, [pc, #216]	; (d03c16c0 <ui_draw_seq_overlay+0x274>)
d03c15e8:	2232      	movs	r2, #50	; 0x32
d03c15ea:	a804      	add	r0, sp, #16
d03c15ec:	6819      	ldr	r1, [r3, #0]
d03c15ee:	fbb1 f3f2 	udiv	r3, r1, r2
d03c15f2:	fb02 1213 	mls	r2, r2, r3, r1
d03c15f6:	2130      	movs	r1, #48	; 0x30
d03c15f8:	0052      	lsls	r2, r2, #1
d03c15fa:	9200      	str	r2, [sp, #0]
d03c15fc:	4a31      	ldr	r2, [pc, #196]	; (d03c16c4 <ui_draw_seq_overlay+0x278>)
d03c15fe:	f008 fcb5 	bl	d03c9f6c <sniprintf>
d03c1602:	7b23      	ldrb	r3, [r4, #12]
d03c1604:	7b62      	ldrb	r2, [r4, #13]
d03c1606:	212e      	movs	r1, #46	; 0x2e
d03c1608:	20da      	movs	r0, #218	; 0xda
d03c160a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c160e:	7ba2      	ldrb	r2, [r4, #14]
d03c1610:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c1614:	7be2      	ldrb	r2, [r4, #15]
d03c1616:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c161a:	aa04      	add	r2, sp, #16
d03c161c:	685b      	ldr	r3, [r3, #4]
d03c161e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c1620:	4798      	blx	r3
d03c1622:	4b29      	ldr	r3, [pc, #164]	; (d03c16c8 <ui_draw_seq_overlay+0x27c>)
d03c1624:	781b      	ldrb	r3, [r3, #0]
d03c1626:	2b00      	cmp	r3, #0
d03c1628:	d043      	beq.n	d03c16b2 <ui_draw_seq_overlay+0x266>
d03c162a:	4b28      	ldr	r3, [pc, #160]	; (d03c16cc <ui_draw_seq_overlay+0x280>)
d03c162c:	2130      	movs	r1, #48	; 0x30
d03c162e:	4a28      	ldr	r2, [pc, #160]	; (d03c16d0 <ui_draw_seq_overlay+0x284>)
d03c1630:	a804      	add	r0, sp, #16
d03c1632:	781b      	ldrb	r3, [r3, #0]
d03c1634:	f008 fc9a 	bl	d03c9f6c <sniprintf>
d03c1638:	7b23      	ldrb	r3, [r4, #12]
d03c163a:	7b62      	ldrb	r2, [r4, #13]
d03c163c:	200d      	movs	r0, #13
d03c163e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c1642:	7ba2      	ldrb	r2, [r4, #14]
d03c1644:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c1648:	7be2      	ldrb	r2, [r4, #15]
d03c164a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c164e:	685b      	ldr	r3, [r3, #4]
d03c1650:	68db      	ldr	r3, [r3, #12]
d03c1652:	4798      	blx	r3
d03c1654:	7b23      	ldrb	r3, [r4, #12]
d03c1656:	7b62      	ldrb	r2, [r4, #13]
d03c1658:	2186      	movs	r1, #134	; 0x86
d03c165a:	20ca      	movs	r0, #202	; 0xca
d03c165c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c1660:	7ba2      	ldrb	r2, [r4, #14]
d03c1662:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c1666:	7be2      	ldrb	r2, [r4, #15]
d03c1668:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c166c:	2248      	movs	r2, #72	; 0x48
d03c166e:	685b      	ldr	r3, [r3, #4]
d03c1670:	685d      	ldr	r5, [r3, #4]
d03c1672:	2318      	movs	r3, #24
d03c1674:	47a8      	blx	r5
d03c1676:	7b23      	ldrb	r3, [r4, #12]
d03c1678:	7b62      	ldrb	r2, [r4, #13]
d03c167a:	200f      	movs	r0, #15
d03c167c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c1680:	7ba2      	ldrb	r2, [r4, #14]
d03c1682:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c1686:	7be2      	ldrb	r2, [r4, #15]
d03c1688:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c168c:	685b      	ldr	r3, [r3, #4]
d03c168e:	68db      	ldr	r3, [r3, #12]
d03c1690:	4798      	blx	r3
d03c1692:	7b23      	ldrb	r3, [r4, #12]
d03c1694:	7b62      	ldrb	r2, [r4, #13]
d03c1696:	218a      	movs	r1, #138	; 0x8a
d03c1698:	20d0      	movs	r0, #208	; 0xd0
d03c169a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c169e:	7ba2      	ldrb	r2, [r4, #14]
d03c16a0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c16a4:	7be2      	ldrb	r2, [r4, #15]
d03c16a6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c16aa:	aa04      	add	r2, sp, #16
d03c16ac:	685b      	ldr	r3, [r3, #4]
d03c16ae:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c16b0:	4798      	blx	r3
d03c16b2:	b011      	add	sp, #68	; 0x44
d03c16b4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c16b8:	d03cd0a8 	.word	0xd03cd0a8
d03c16bc:	2001f000 	.word	0x2001f000
d03c16c0:	d03cd0a0 	.word	0xd03cd0a0
d03c16c4:	d03cb2f9 	.word	0xd03cb2f9
d03c16c8:	d03ccf54 	.word	0xd03ccf54
d03c16cc:	d03ccf58 	.word	0xd03ccf58
d03c16d0:	d03cb303 	.word	0xd03cb303
d03c16d4:	d03cb2ec 	.word	0xd03cb2ec

d03c16d8 <sid_midi_all_notes_off_event>:
d03c16d8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03c16dc:	2500      	movs	r5, #0
d03c16de:	4606      	mov	r6, r0
d03c16e0:	4c0c      	ldr	r4, [pc, #48]	; (d03c1714 <sid_midi_all_notes_off_event+0x3c>)
d03c16e2:	462f      	mov	r7, r5
d03c16e4:	f8df 8030 	ldr.w	r8, [pc, #48]	; d03c1718 <sid_midi_all_notes_off_event+0x40>
d03c16e8:	7823      	ldrb	r3, [r4, #0]
d03c16ea:	b2e8      	uxtb	r0, r5
d03c16ec:	b163      	cbz	r3, d03c1708 <sid_midi_all_notes_off_event+0x30>
d03c16ee:	7863      	ldrb	r3, [r4, #1]
d03c16f0:	42b3      	cmp	r3, r6
d03c16f2:	d109      	bne.n	d03c1708 <sid_midi_all_notes_off_event+0x30>
d03c16f4:	f7fe fec4 	bl	d03c0480 <sid_voice_note_off>
d03c16f8:	f8d8 3000 	ldr.w	r3, [r8]
d03c16fc:	7027      	strb	r7, [r4, #0]
d03c16fe:	3301      	adds	r3, #1
d03c1700:	7167      	strb	r7, [r4, #5]
d03c1702:	80e7      	strh	r7, [r4, #6]
d03c1704:	f8c8 3000 	str.w	r3, [r8]
d03c1708:	3501      	adds	r5, #1
d03c170a:	3408      	adds	r4, #8
d03c170c:	2d06      	cmp	r5, #6
d03c170e:	d1eb      	bne.n	d03c16e8 <sid_midi_all_notes_off_event+0x10>
d03c1710:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03c1714:	d03cd0a8 	.word	0xd03cd0a8
d03c1718:	d03ccf38 	.word	0xd03ccf38

d03c171c <midi_process_ui_requests>:
d03c171c:	b538      	push	{r3, r4, r5, lr}
d03c171e:	4b09      	ldr	r3, [pc, #36]	; (d03c1744 <midi_process_ui_requests+0x28>)
d03c1720:	681d      	ldr	r5, [r3, #0]
d03c1722:	b175      	cbz	r5, d03c1742 <midi_process_ui_requests+0x26>
d03c1724:	681a      	ldr	r2, [r3, #0]
d03c1726:	2400      	movs	r4, #0
d03c1728:	ea22 0205 	bic.w	r2, r2, r5
d03c172c:	601a      	str	r2, [r3, #0]
d03c172e:	fa25 f304 	lsr.w	r3, r5, r4
d03c1732:	b2e0      	uxtb	r0, r4
d03c1734:	07db      	lsls	r3, r3, #31
d03c1736:	d501      	bpl.n	d03c173c <midi_process_ui_requests+0x20>
d03c1738:	f7ff ffce 	bl	d03c16d8 <sid_midi_all_notes_off_event>
d03c173c:	3401      	adds	r4, #1
d03c173e:	2c10      	cmp	r4, #16
d03c1740:	d1f5      	bne.n	d03c172e <midi_process_ui_requests+0x12>
d03c1742:	bd38      	pop	{r3, r4, r5, pc}
d03c1744:	d03cd0dc 	.word	0xd03cd0dc

d03c1748 <sid_midi_all_notes_off_source>:
d03c1748:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03c174c:	2500      	movs	r5, #0
d03c174e:	4606      	mov	r6, r0
d03c1750:	4c0e      	ldr	r4, [pc, #56]	; (d03c178c <sid_midi_all_notes_off_source+0x44>)
d03c1752:	462f      	mov	r7, r5
d03c1754:	f8df 8038 	ldr.w	r8, [pc, #56]	; d03c1790 <sid_midi_all_notes_off_source+0x48>
d03c1758:	7823      	ldrb	r3, [r4, #0]
d03c175a:	b2e8      	uxtb	r0, r5
d03c175c:	b183      	cbz	r3, d03c1780 <sid_midi_all_notes_off_source+0x38>
d03c175e:	7963      	ldrb	r3, [r4, #5]
d03c1760:	42b3      	cmp	r3, r6
d03c1762:	d10d      	bne.n	d03c1780 <sid_midi_all_notes_off_source+0x38>
d03c1764:	f7fe fe8c 	bl	d03c0480 <sid_voice_note_off>
d03c1768:	2e02      	cmp	r6, #2
d03c176a:	7027      	strb	r7, [r4, #0]
d03c176c:	bf18      	it	ne
d03c176e:	f8d8 3000 	ldrne.w	r3, [r8]
d03c1772:	7167      	strb	r7, [r4, #5]
d03c1774:	bf18      	it	ne
d03c1776:	3301      	addne	r3, #1
d03c1778:	80e7      	strh	r7, [r4, #6]
d03c177a:	bf18      	it	ne
d03c177c:	f8c8 3000 	strne.w	r3, [r8]
d03c1780:	3501      	adds	r5, #1
d03c1782:	3408      	adds	r4, #8
d03c1784:	2d06      	cmp	r5, #6
d03c1786:	d1e7      	bne.n	d03c1758 <sid_midi_all_notes_off_source+0x10>
d03c1788:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03c178c:	d03cd0a8 	.word	0xd03cd0a8
d03c1790:	d03ccf38 	.word	0xd03ccf38

d03c1794 <midi_update_active_channel_volume>:
d03c1794:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03c1796:	4606      	mov	r6, r0
d03c1798:	4c0a      	ldr	r4, [pc, #40]	; (d03c17c4 <midi_update_active_channel_volume+0x30>)
d03c179a:	2500      	movs	r5, #0
d03c179c:	7823      	ldrb	r3, [r4, #0]
d03c179e:	b2ef      	uxtb	r7, r5
d03c17a0:	b153      	cbz	r3, d03c17b8 <midi_update_active_channel_volume+0x24>
d03c17a2:	7863      	ldrb	r3, [r4, #1]
d03c17a4:	42b3      	cmp	r3, r6
d03c17a6:	d107      	bne.n	d03c17b8 <midi_update_active_channel_volume+0x24>
d03c17a8:	78e1      	ldrb	r1, [r4, #3]
d03c17aa:	4630      	mov	r0, r6
d03c17ac:	f7ff f9ac 	bl	d03c0b08 <midi_effective_velocity>
d03c17b0:	4601      	mov	r1, r0
d03c17b2:	4638      	mov	r0, r7
d03c17b4:	f7fe ff04 	bl	d03c05c0 <sid_voice_set_velocity>
d03c17b8:	3501      	adds	r5, #1
d03c17ba:	3408      	adds	r4, #8
d03c17bc:	2d06      	cmp	r5, #6
d03c17be:	d1ed      	bne.n	d03c179c <midi_update_active_channel_volume+0x8>
d03c17c0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c17c2:	bf00      	nop
d03c17c4:	d03cd0a8 	.word	0xd03cd0a8

d03c17c8 <midi_update_all_active_volume>:
d03c17c8:	b570      	push	{r4, r5, r6, lr}
d03c17ca:	4c09      	ldr	r4, [pc, #36]	; (d03c17f0 <midi_update_all_active_volume+0x28>)
d03c17cc:	2500      	movs	r5, #0
d03c17ce:	7823      	ldrb	r3, [r4, #0]
d03c17d0:	b2ee      	uxtb	r6, r5
d03c17d2:	b13b      	cbz	r3, d03c17e4 <midi_update_all_active_volume+0x1c>
d03c17d4:	78e1      	ldrb	r1, [r4, #3]
d03c17d6:	7860      	ldrb	r0, [r4, #1]
d03c17d8:	f7ff f996 	bl	d03c0b08 <midi_effective_velocity>
d03c17dc:	4601      	mov	r1, r0
d03c17de:	4630      	mov	r0, r6
d03c17e0:	f7fe feee 	bl	d03c05c0 <sid_voice_set_velocity>
d03c17e4:	3501      	adds	r5, #1
d03c17e6:	3408      	adds	r4, #8
d03c17e8:	2d06      	cmp	r5, #6
d03c17ea:	d1f0      	bne.n	d03c17ce <midi_update_all_active_volume+0x6>
d03c17ec:	bd70      	pop	{r4, r5, r6, pc}
d03c17ee:	bf00      	nop
d03c17f0:	d03cd0a8 	.word	0xd03cd0a8

d03c17f4 <midi_set_global_gain>:
d03c17f4:	f5b0 7f96 	cmp.w	r0, #300	; 0x12c
d03c17f8:	4b04      	ldr	r3, [pc, #16]	; (d03c180c <midi_set_global_gain+0x18>)
d03c17fa:	bfa8      	it	ge
d03c17fc:	f44f 7096 	movge.w	r0, #300	; 0x12c
d03c1800:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d03c1804:	8018      	strh	r0, [r3, #0]
d03c1806:	f7ff bfdf 	b.w	d03c17c8 <midi_update_all_active_volume>
d03c180a:	bf00      	nop
d03c180c:	d03ccf2e 	.word	0xd03ccf2e

d03c1810 <seq_playback_sync>:
d03c1810:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03c1812:	4e3e      	ldr	r6, [pc, #248]	; (d03c190c <seq_playback_sync+0xfc>)
d03c1814:	4605      	mov	r5, r0
d03c1816:	7833      	ldrb	r3, [r6, #0]
d03c1818:	2b00      	cmp	r3, #0
d03c181a:	d04d      	beq.n	d03c18b8 <seq_playback_sync+0xa8>
d03c181c:	4b3c      	ldr	r3, [pc, #240]	; (d03c1910 <seq_playback_sync+0x100>)
d03c181e:	6819      	ldr	r1, [r3, #0]
d03c1820:	4b3c      	ldr	r3, [pc, #240]	; (d03c1914 <seq_playback_sync+0x104>)
d03c1822:	6818      	ldr	r0, [r3, #0]
d03c1824:	2900      	cmp	r1, #0
d03c1826:	d03e      	beq.n	d03c18a6 <seq_playback_sync+0x96>
d03c1828:	b118      	cbz	r0, d03c1832 <seq_playback_sync+0x22>
d03c182a:	4b3b      	ldr	r3, [pc, #236]	; (d03c1918 <seq_playback_sync+0x108>)
d03c182c:	681b      	ldr	r3, [r3, #0]
d03c182e:	2b00      	cmp	r3, #0
d03c1830:	d139      	bne.n	d03c18a6 <seq_playback_sync+0x96>
d03c1832:	f7ff f9f7 	bl	d03c0c24 <seq_playback_mark_dirty>
d03c1836:	2000      	movs	r0, #0
d03c1838:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c183a:	ea4f 1c03 	mov.w	ip, r3, lsl #4
d03c183e:	f812 c00c 	ldrb.w	ip, [r2, ip]
d03c1842:	f1bc 0f00 	cmp.w	ip, #0
d03c1846:	d006      	beq.n	d03c1856 <seq_playback_sync+0x46>
d03c1848:	fa1f fc83 	uxth.w	ip, r3
d03c184c:	f820 c014 	strh.w	ip, [r0, r4, lsl #1]
d03c1850:	f82e c014 	strh.w	ip, [lr, r4, lsl #1]
d03c1854:	3401      	adds	r4, #1
d03c1856:	3301      	adds	r3, #1
d03c1858:	4299      	cmp	r1, r3
d03c185a:	d1ee      	bne.n	d03c183a <seq_playback_sync+0x2a>
d03c185c:	2c01      	cmp	r4, #1
d03c185e:	d90a      	bls.n	d03c1876 <seq_playback_sync+0x66>
d03c1860:	4b2e      	ldr	r3, [pc, #184]	; (d03c191c <seq_playback_sync+0x10c>)
d03c1862:	2202      	movs	r2, #2
d03c1864:	4621      	mov	r1, r4
d03c1866:	f008 f962 	bl	d03c9b2e <qsort>
d03c186a:	4b2d      	ldr	r3, [pc, #180]	; (d03c1920 <seq_playback_sync+0x110>)
d03c186c:	2202      	movs	r2, #2
d03c186e:	4621      	mov	r1, r4
d03c1870:	6838      	ldr	r0, [r7, #0]
d03c1872:	f008 f95c 	bl	d03c9b2e <qsort>
d03c1876:	4b2b      	ldr	r3, [pc, #172]	; (d03c1924 <seq_playback_sync+0x114>)
d03c1878:	601c      	str	r4, [r3, #0]
d03c187a:	2300      	movs	r3, #0
d03c187c:	7033      	strb	r3, [r6, #0]
d03c187e:	4b29      	ldr	r3, [pc, #164]	; (d03c1924 <seq_playback_sync+0x114>)
d03c1880:	681e      	ldr	r6, [r3, #0]
d03c1882:	4b29      	ldr	r3, [pc, #164]	; (d03c1928 <seq_playback_sync+0x118>)
d03c1884:	4631      	mov	r1, r6
d03c1886:	681c      	ldr	r4, [r3, #0]
d03c1888:	4b22      	ldr	r3, [pc, #136]	; (d03c1914 <seq_playback_sync+0x104>)
d03c188a:	681f      	ldr	r7, [r3, #0]
d03c188c:	2300      	movs	r3, #0
d03c188e:	4299      	cmp	r1, r3
d03c1890:	d823      	bhi.n	d03c18da <seq_playback_sync+0xca>
d03c1892:	4a26      	ldr	r2, [pc, #152]	; (d03c192c <seq_playback_sync+0x11c>)
d03c1894:	2100      	movs	r1, #0
d03c1896:	6013      	str	r3, [r2, #0]
d03c1898:	4b1f      	ldr	r3, [pc, #124]	; (d03c1918 <seq_playback_sync+0x108>)
d03c189a:	681f      	ldr	r7, [r3, #0]
d03c189c:	428e      	cmp	r6, r1
d03c189e:	d828      	bhi.n	d03c18f2 <seq_playback_sync+0xe2>
d03c18a0:	4b23      	ldr	r3, [pc, #140]	; (d03c1930 <seq_playback_sync+0x120>)
d03c18a2:	6019      	str	r1, [r3, #0]
d03c18a4:	e013      	b.n	d03c18ce <seq_playback_sync+0xbe>
d03c18a6:	4b20      	ldr	r3, [pc, #128]	; (d03c1928 <seq_playback_sync+0x118>)
d03c18a8:	4f1b      	ldr	r7, [pc, #108]	; (d03c1918 <seq_playback_sync+0x108>)
d03c18aa:	681a      	ldr	r2, [r3, #0]
d03c18ac:	2300      	movs	r3, #0
d03c18ae:	f8d7 e000 	ldr.w	lr, [r7]
d03c18b2:	461c      	mov	r4, r3
d03c18b4:	320d      	adds	r2, #13
d03c18b6:	e7cf      	b.n	d03c1858 <seq_playback_sync+0x48>
d03c18b8:	4b1e      	ldr	r3, [pc, #120]	; (d03c1934 <seq_playback_sync+0x124>)
d03c18ba:	781b      	ldrb	r3, [r3, #0]
d03c18bc:	2b00      	cmp	r3, #0
d03c18be:	d0de      	beq.n	d03c187e <seq_playback_sync+0x6e>
d03c18c0:	4b1d      	ldr	r3, [pc, #116]	; (d03c1938 <seq_playback_sync+0x128>)
d03c18c2:	681b      	ldr	r3, [r3, #0]
d03c18c4:	4283      	cmp	r3, r0
d03c18c6:	d8da      	bhi.n	d03c187e <seq_playback_sync+0x6e>
d03c18c8:	3301      	adds	r3, #1
d03c18ca:	4283      	cmp	r3, r0
d03c18cc:	d3d7      	bcc.n	d03c187e <seq_playback_sync+0x6e>
d03c18ce:	4b1a      	ldr	r3, [pc, #104]	; (d03c1938 <seq_playback_sync+0x128>)
d03c18d0:	2001      	movs	r0, #1
d03c18d2:	601d      	str	r5, [r3, #0]
d03c18d4:	4b17      	ldr	r3, [pc, #92]	; (d03c1934 <seq_playback_sync+0x124>)
d03c18d6:	7018      	strb	r0, [r3, #0]
d03c18d8:	e7ae      	b.n	d03c1838 <seq_playback_sync+0x28>
d03c18da:	1aca      	subs	r2, r1, r3
d03c18dc:	eb03 0252 	add.w	r2, r3, r2, lsr #1
d03c18e0:	f837 0012 	ldrh.w	r0, [r7, r2, lsl #1]
d03c18e4:	0100      	lsls	r0, r0, #4
d03c18e6:	5820      	ldr	r0, [r4, r0]
d03c18e8:	4285      	cmp	r5, r0
d03c18ea:	bf8c      	ite	hi
d03c18ec:	1c53      	addhi	r3, r2, #1
d03c18ee:	4611      	movls	r1, r2
d03c18f0:	e7cd      	b.n	d03c188e <seq_playback_sync+0x7e>
d03c18f2:	1a74      	subs	r4, r6, r1
d03c18f4:	eb01 0454 	add.w	r4, r1, r4, lsr #1
d03c18f8:	f837 0014 	ldrh.w	r0, [r7, r4, lsl #1]
d03c18fc:	f7ff f954 	bl	d03c0ba8 <seq_note_end_tick>
d03c1900:	4285      	cmp	r5, r0
d03c1902:	bf8c      	ite	hi
d03c1904:	1c61      	addhi	r1, r4, #1
d03c1906:	4626      	movls	r6, r4
d03c1908:	e7c8      	b.n	d03c189c <seq_playback_sync+0x8c>
d03c190a:	bf00      	nop
d03c190c:	d03ccf80 	.word	0xd03ccf80
d03c1910:	d03ccf74 	.word	0xd03ccf74
d03c1914:	d03ccf88 	.word	0xd03ccf88
d03c1918:	d03ccf84 	.word	0xd03ccf84
d03c191c:	d03c0bc1 	.word	0xd03c0bc1
d03c1920:	d03c0bf5 	.word	0xd03c0bf5
d03c1924:	d03ccf7c 	.word	0xd03ccf7c
d03c1928:	d03ccf78 	.word	0xd03ccf78
d03c192c:	d03cd098 	.word	0xd03cd098
d03c1930:	d03cd094 	.word	0xd03cd094
d03c1934:	d03cd08c 	.word	0xd03cd08c
d03c1938:	d03cd090 	.word	0xd03cd090

d03c193c <ui_name_has_ext>:
d03c193c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03c193e:	460c      	mov	r4, r1
d03c1940:	4606      	mov	r6, r0
d03c1942:	f008 fb59 	bl	d03c9ff8 <strlen>
d03c1946:	4605      	mov	r5, r0
d03c1948:	4620      	mov	r0, r4
d03c194a:	f008 fb55 	bl	d03c9ff8 <strlen>
d03c194e:	b2ea      	uxtb	r2, r5
d03c1950:	b2c3      	uxtb	r3, r0
d03c1952:	429a      	cmp	r2, r3
d03c1954:	d319      	bcc.n	d03c198a <ui_name_has_ext+0x4e>
d03c1956:	1ad3      	subs	r3, r2, r3
d03c1958:	3c01      	subs	r4, #1
d03c195a:	4432      	add	r2, r6
d03c195c:	4433      	add	r3, r6
d03c195e:	4293      	cmp	r3, r2
d03c1960:	d101      	bne.n	d03c1966 <ui_name_has_ext+0x2a>
d03c1962:	2001      	movs	r0, #1
d03c1964:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c1966:	f813 7b01 	ldrb.w	r7, [r3], #1
d03c196a:	f814 5f01 	ldrb.w	r5, [r4, #1]!
d03c196e:	f1a7 0141 	sub.w	r1, r7, #65	; 0x41
d03c1972:	2919      	cmp	r1, #25
d03c1974:	f1a5 0141 	sub.w	r1, r5, #65	; 0x41
d03c1978:	bf9c      	itt	ls
d03c197a:	3720      	addls	r7, #32
d03c197c:	b2ff      	uxtbls	r7, r7
d03c197e:	2919      	cmp	r1, #25
d03c1980:	bf9c      	itt	ls
d03c1982:	3520      	addls	r5, #32
d03c1984:	b2ed      	uxtbls	r5, r5
d03c1986:	42af      	cmp	r7, r5
d03c1988:	d0e9      	beq.n	d03c195e <ui_name_has_ext+0x22>
d03c198a:	2000      	movs	r0, #0
d03c198c:	e7ea      	b.n	d03c1964 <ui_name_has_ext+0x28>
	...

d03c1990 <ui_keyboard_move_caret>:
d03c1990:	b538      	push	{r3, r4, r5, lr}
d03c1992:	4d0a      	ldr	r5, [pc, #40]	; (d03c19bc <ui_keyboard_move_caret+0x2c>)
d03c1994:	782b      	ldrb	r3, [r5, #0]
d03c1996:	181c      	adds	r4, r3, r0
d03c1998:	4809      	ldr	r0, [pc, #36]	; (d03c19c0 <ui_keyboard_move_caret+0x30>)
d03c199a:	f008 fb2d 	bl	d03c9ff8 <strlen>
d03c199e:	1c63      	adds	r3, r4, #1
d03c19a0:	d00a      	beq.n	d03c19b8 <ui_keyboard_move_caret+0x28>
d03c19a2:	4284      	cmp	r4, r0
d03c19a4:	dd00      	ble.n	d03c19a8 <ui_keyboard_move_caret+0x18>
d03c19a6:	b204      	sxth	r4, r0
d03c19a8:	4b06      	ldr	r3, [pc, #24]	; (d03c19c4 <ui_keyboard_move_caret+0x34>)
d03c19aa:	2200      	movs	r2, #0
d03c19ac:	702c      	strb	r4, [r5, #0]
d03c19ae:	701a      	strb	r2, [r3, #0]
d03c19b0:	2201      	movs	r2, #1
d03c19b2:	4b05      	ldr	r3, [pc, #20]	; (d03c19c8 <ui_keyboard_move_caret+0x38>)
d03c19b4:	701a      	strb	r2, [r3, #0]
d03c19b6:	bd38      	pop	{r3, r4, r5, pc}
d03c19b8:	2400      	movs	r4, #0
d03c19ba:	e7f5      	b.n	d03c19a8 <ui_keyboard_move_caret+0x18>
d03c19bc:	d03cf348 	.word	0xd03cf348
d03c19c0:	d03cf34a 	.word	0xd03cf34a
d03c19c4:	d03cf52b 	.word	0xd03cf52b
d03c19c8:	d03cf52a 	.word	0xd03cf52a

d03c19cc <seq_midi_out_program>:
d03c19cc:	4b10      	ldr	r3, [pc, #64]	; (d03c1a10 <seq_midi_out_program+0x44>)
d03c19ce:	b507      	push	{r0, r1, r2, lr}
d03c19d0:	781b      	ldrb	r3, [r3, #0]
d03c19d2:	b1cb      	cbz	r3, d03c1a08 <seq_midi_out_program+0x3c>
d03c19d4:	280f      	cmp	r0, #15
d03c19d6:	d817      	bhi.n	d03c1a08 <seq_midi_out_program+0x3c>
d03c19d8:	060b      	lsls	r3, r1, #24
d03c19da:	d415      	bmi.n	d03c1a08 <seq_midi_out_program+0x3c>
d03c19dc:	4a0d      	ldr	r2, [pc, #52]	; (d03c1a14 <seq_midi_out_program+0x48>)
d03c19de:	f060 003f 	orn	r0, r0, #63	; 0x3f
d03c19e2:	f88d 1005 	strb.w	r1, [sp, #5]
d03c19e6:	7d13      	ldrb	r3, [r2, #20]
d03c19e8:	7d51      	ldrb	r1, [r2, #21]
d03c19ea:	f88d 0004 	strb.w	r0, [sp, #4]
d03c19ee:	a801      	add	r0, sp, #4
d03c19f0:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c19f4:	7d91      	ldrb	r1, [r2, #22]
d03c19f6:	7dd2      	ldrb	r2, [r2, #23]
d03c19f8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c19fc:	2102      	movs	r1, #2
d03c19fe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c1a02:	681b      	ldr	r3, [r3, #0]
d03c1a04:	695b      	ldr	r3, [r3, #20]
d03c1a06:	4798      	blx	r3
d03c1a08:	b003      	add	sp, #12
d03c1a0a:	f85d fb04 	ldr.w	pc, [sp], #4
d03c1a0e:	bf00      	nop
d03c1a10:	d03ccf6a 	.word	0xd03ccf6a
d03c1a14:	2001f000 	.word	0x2001f000

d03c1a18 <seq_midi_out_note_off>:
d03c1a18:	4b05      	ldr	r3, [pc, #20]	; (d03c1a30 <seq_midi_out_note_off+0x18>)
d03c1a1a:	781b      	ldrb	r3, [r3, #0]
d03c1a1c:	b133      	cbz	r3, d03c1a2c <seq_midi_out_note_off+0x14>
d03c1a1e:	280f      	cmp	r0, #15
d03c1a20:	d804      	bhi.n	d03c1a2c <seq_midi_out_note_off+0x14>
d03c1a22:	2200      	movs	r2, #0
d03c1a24:	f040 0080 	orr.w	r0, r0, #128	; 0x80
d03c1a28:	f7ff b82a 	b.w	d03c0a80 <midi_out_packet3>
d03c1a2c:	4770      	bx	lr
d03c1a2e:	bf00      	nop
d03c1a30:	d03ccf6a 	.word	0xd03ccf6a

d03c1a34 <seq_midi_out_all_notes_off>:
d03c1a34:	4b07      	ldr	r3, [pc, #28]	; (d03c1a54 <seq_midi_out_all_notes_off+0x20>)
d03c1a36:	b510      	push	{r4, lr}
d03c1a38:	781b      	ldrb	r3, [r3, #0]
d03c1a3a:	b153      	cbz	r3, d03c1a52 <seq_midi_out_all_notes_off+0x1e>
d03c1a3c:	2400      	movs	r4, #0
d03c1a3e:	f064 004f 	orn	r0, r4, #79	; 0x4f
d03c1a42:	3401      	adds	r4, #1
d03c1a44:	2200      	movs	r2, #0
d03c1a46:	217b      	movs	r1, #123	; 0x7b
d03c1a48:	b2c0      	uxtb	r0, r0
d03c1a4a:	f7ff f819 	bl	d03c0a80 <midi_out_packet3>
d03c1a4e:	2c10      	cmp	r4, #16
d03c1a50:	d1f5      	bne.n	d03c1a3e <seq_midi_out_all_notes_off+0xa>
d03c1a52:	bd10      	pop	{r4, pc}
d03c1a54:	d03ccf6a 	.word	0xd03ccf6a

d03c1a58 <sid_midi_all_notes_off>:
d03c1a58:	b570      	push	{r4, r5, r6, lr}
d03c1a5a:	2400      	movs	r4, #0
d03c1a5c:	4d0a      	ldr	r5, [pc, #40]	; (d03c1a88 <sid_midi_all_notes_off+0x30>)
d03c1a5e:	4626      	mov	r6, r4
d03c1a60:	b2e0      	uxtb	r0, r4
d03c1a62:	3401      	adds	r4, #1
d03c1a64:	f7fe fd66 	bl	d03c0534 <sid_voice_note_kill>
d03c1a68:	3508      	adds	r5, #8
d03c1a6a:	2c06      	cmp	r4, #6
d03c1a6c:	f805 6c08 	strb.w	r6, [r5, #-8]
d03c1a70:	f805 6c03 	strb.w	r6, [r5, #-3]
d03c1a74:	f825 6c02 	strh.w	r6, [r5, #-2]
d03c1a78:	d1f2      	bne.n	d03c1a60 <sid_midi_all_notes_off+0x8>
d03c1a7a:	f7ff ffdb 	bl	d03c1a34 <seq_midi_out_all_notes_off>
d03c1a7e:	4a03      	ldr	r2, [pc, #12]	; (d03c1a8c <sid_midi_all_notes_off+0x34>)
d03c1a80:	6813      	ldr	r3, [r2, #0]
d03c1a82:	3301      	adds	r3, #1
d03c1a84:	6013      	str	r3, [r2, #0]
d03c1a86:	bd70      	pop	{r4, r5, r6, pc}
d03c1a88:	d03cd0a8 	.word	0xd03cd0a8
d03c1a8c:	d03ccf40 	.word	0xd03ccf40

d03c1a90 <seq_stop_playback_notes>:
d03c1a90:	b508      	push	{r3, lr}
d03c1a92:	2001      	movs	r0, #1
d03c1a94:	f7ff fe58 	bl	d03c1748 <sid_midi_all_notes_off_source>
d03c1a98:	2002      	movs	r0, #2
d03c1a9a:	f7ff fe55 	bl	d03c1748 <sid_midi_all_notes_off_source>
d03c1a9e:	f7ff ffc9 	bl	d03c1a34 <seq_midi_out_all_notes_off>
d03c1aa2:	2300      	movs	r3, #0
d03c1aa4:	4a02      	ldr	r2, [pc, #8]	; (d03c1ab0 <seq_stop_playback_notes+0x20>)
d03c1aa6:	7013      	strb	r3, [r2, #0]
d03c1aa8:	4a02      	ldr	r2, [pc, #8]	; (d03c1ab4 <seq_stop_playback_notes+0x24>)
d03c1aaa:	7013      	strb	r3, [r2, #0]
d03c1aac:	bd08      	pop	{r3, pc}
d03c1aae:	bf00      	nop
d03c1ab0:	d03ccf69 	.word	0xd03ccf69
d03c1ab4:	d03ccf68 	.word	0xd03ccf68

d03c1ab8 <seq_stop_transport>:
d03c1ab8:	b538      	push	{r3, r4, r5, lr}
d03c1aba:	2400      	movs	r4, #0
d03c1abc:	4605      	mov	r5, r0
d03c1abe:	f7ff ffe7 	bl	d03c1a90 <seq_stop_playback_notes>
d03c1ac2:	4b0e      	ldr	r3, [pc, #56]	; (d03c1afc <seq_stop_transport+0x44>)
d03c1ac4:	701c      	strb	r4, [r3, #0]
d03c1ac6:	4b0e      	ldr	r3, [pc, #56]	; (d03c1b00 <seq_stop_transport+0x48>)
d03c1ac8:	701c      	strb	r4, [r3, #0]
d03c1aca:	4b0e      	ldr	r3, [pc, #56]	; (d03c1b04 <seq_stop_transport+0x4c>)
d03c1acc:	701c      	strb	r4, [r3, #0]
d03c1ace:	4b0e      	ldr	r3, [pc, #56]	; (d03c1b08 <seq_stop_transport+0x50>)
d03c1ad0:	701c      	strb	r4, [r3, #0]
d03c1ad2:	4b0e      	ldr	r3, [pc, #56]	; (d03c1b0c <seq_stop_transport+0x54>)
d03c1ad4:	801c      	strh	r4, [r3, #0]
d03c1ad6:	4b0e      	ldr	r3, [pc, #56]	; (d03c1b10 <seq_stop_transport+0x58>)
d03c1ad8:	681a      	ldr	r2, [r3, #0]
d03c1ada:	4b0e      	ldr	r3, [pc, #56]	; (d03c1b14 <seq_stop_transport+0x5c>)
d03c1adc:	601a      	str	r2, [r3, #0]
d03c1ade:	4b0e      	ldr	r3, [pc, #56]	; (d03c1b18 <seq_stop_transport+0x60>)
d03c1ae0:	6818      	ldr	r0, [r3, #0]
d03c1ae2:	f7ff fe95 	bl	d03c1810 <seq_playback_sync>
d03c1ae6:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c1aea:	4621      	mov	r1, r4
d03c1aec:	480b      	ldr	r0, [pc, #44]	; (d03c1b1c <seq_stop_transport+0x64>)
d03c1aee:	f007 ff33 	bl	d03c9958 <memset>
d03c1af2:	b10d      	cbz	r5, d03c1af8 <seq_stop_transport+0x40>
d03c1af4:	4b0a      	ldr	r3, [pc, #40]	; (d03c1b20 <seq_stop_transport+0x68>)
d03c1af6:	701c      	strb	r4, [r3, #0]
d03c1af8:	bd38      	pop	{r3, r4, r5, pc}
d03c1afa:	bf00      	nop
d03c1afc:	d03cd09c 	.word	0xd03cd09c
d03c1b00:	d03cd0a5 	.word	0xd03cd0a5
d03c1b04:	d03ccf54 	.word	0xd03ccf54
d03c1b08:	d03ccf58 	.word	0xd03ccf58
d03c1b0c:	d03ccf56 	.word	0xd03ccf56
d03c1b10:	d03ccf50 	.word	0xd03ccf50
d03c1b14:	d03ccf64 	.word	0xd03ccf64
d03c1b18:	d03cd0a0 	.word	0xd03cd0a0
d03c1b1c:	d03ccf8c 	.word	0xd03ccf8c
d03c1b20:	d03cd0a4 	.word	0xd03cd0a4

d03c1b24 <midi_queue_event>:
d03c1b24:	b5f0      	push	{r4, r5, r6, r7, lr}
d03c1b26:	4c17      	ldr	r4, [pc, #92]	; (d03c1b84 <midi_queue_event+0x60>)
d03c1b28:	469c      	mov	ip, r3
d03c1b2a:	4e17      	ldr	r6, [pc, #92]	; (d03c1b88 <midi_queue_event+0x64>)
d03c1b2c:	7825      	ldrb	r5, [r4, #0]
d03c1b2e:	7833      	ldrb	r3, [r6, #0]
d03c1b30:	3501      	adds	r5, #1
d03c1b32:	f005 057f 	and.w	r5, r5, #127	; 0x7f
d03c1b36:	42ab      	cmp	r3, r5
d03c1b38:	d10d      	bne.n	d03c1b56 <midi_queue_event+0x32>
d03c1b3a:	4f14      	ldr	r7, [pc, #80]	; (d03c1b8c <midi_queue_event+0x68>)
d03c1b3c:	683b      	ldr	r3, [r7, #0]
d03c1b3e:	46be      	mov	lr, r7
d03c1b40:	3301      	adds	r3, #1
d03c1b42:	b108      	cbz	r0, d03c1b48 <midi_queue_event+0x24>
d03c1b44:	2805      	cmp	r0, #5
d03c1b46:	d11a      	bne.n	d03c1b7e <midi_queue_event+0x5a>
d03c1b48:	7837      	ldrb	r7, [r6, #0]
d03c1b4a:	f8ce 3000 	str.w	r3, [lr]
d03c1b4e:	3701      	adds	r7, #1
d03c1b50:	f007 077f 	and.w	r7, r7, #127	; 0x7f
d03c1b54:	7037      	strb	r7, [r6, #0]
d03c1b56:	7823      	ldrb	r3, [r4, #0]
d03c1b58:	4e0d      	ldr	r6, [pc, #52]	; (d03c1b90 <midi_queue_event+0x6c>)
d03c1b5a:	b2db      	uxtb	r3, r3
d03c1b5c:	f806 0023 	strb.w	r0, [r6, r3, lsl #2]
d03c1b60:	7823      	ldrb	r3, [r4, #0]
d03c1b62:	eb06 0383 	add.w	r3, r6, r3, lsl #2
d03c1b66:	7059      	strb	r1, [r3, #1]
d03c1b68:	7823      	ldrb	r3, [r4, #0]
d03c1b6a:	eb06 0383 	add.w	r3, r6, r3, lsl #2
d03c1b6e:	709a      	strb	r2, [r3, #2]
d03c1b70:	7823      	ldrb	r3, [r4, #0]
d03c1b72:	eb06 0683 	add.w	r6, r6, r3, lsl #2
d03c1b76:	f886 c003 	strb.w	ip, [r6, #3]
d03c1b7a:	7025      	strb	r5, [r4, #0]
d03c1b7c:	e000      	b.n	d03c1b80 <midi_queue_event+0x5c>
d03c1b7e:	603b      	str	r3, [r7, #0]
d03c1b80:	bdf0      	pop	{r4, r5, r6, r7, pc}
d03c1b82:	bf00      	nop
d03c1b84:	d03ccd2c 	.word	0xd03ccd2c
d03c1b88:	d03ccf2d 	.word	0xd03ccf2d
d03c1b8c:	d03ccd24 	.word	0xd03ccd24
d03c1b90:	d03ccd2d 	.word	0xd03ccd2d

d03c1b94 <ui_note_channel_used>:
d03c1b94:	280f      	cmp	r0, #15
d03c1b96:	b510      	push	{r4, lr}
d03c1b98:	d811      	bhi.n	d03c1bbe <ui_note_channel_used+0x2a>
d03c1b9a:	4909      	ldr	r1, [pc, #36]	; (d03c1bc0 <ui_note_channel_used+0x2c>)
d03c1b9c:	2204      	movs	r2, #4
d03c1b9e:	460b      	mov	r3, r1
d03c1ba0:	f811 4b01 	ldrb.w	r4, [r1], #1
d03c1ba4:	4284      	cmp	r4, r0
d03c1ba6:	d00a      	beq.n	d03c1bbe <ui_note_channel_used+0x2a>
d03c1ba8:	3a01      	subs	r2, #1
d03c1baa:	f012 02ff 	ands.w	r2, r2, #255	; 0xff
d03c1bae:	d1f7      	bne.n	d03c1ba0 <ui_note_channel_used+0xc>
d03c1bb0:	789a      	ldrb	r2, [r3, #2]
d03c1bb2:	70da      	strb	r2, [r3, #3]
d03c1bb4:	785a      	ldrb	r2, [r3, #1]
d03c1bb6:	709a      	strb	r2, [r3, #2]
d03c1bb8:	781a      	ldrb	r2, [r3, #0]
d03c1bba:	7018      	strb	r0, [r3, #0]
d03c1bbc:	705a      	strb	r2, [r3, #1]
d03c1bbe:	bd10      	pop	{r4, pc}
d03c1bc0:	d03cf344 	.word	0xd03cf344

d03c1bc4 <sid_midi_note_on_program_source>:
d03c1bc4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03c1bc8:	f89d 9020 	ldrb.w	r9, [sp, #32]
d03c1bcc:	4616      	mov	r6, r2
d03c1bce:	4607      	mov	r7, r0
d03c1bd0:	468a      	mov	sl, r1
d03c1bd2:	464a      	mov	r2, r9
d03c1bd4:	4698      	mov	r8, r3
d03c1bd6:	f7fe ff7f 	bl	d03c0ad8 <sid_find_voice_source>
d03c1bda:	f1b9 0f02 	cmp.w	r9, #2
d03c1bde:	4604      	mov	r4, r0
d03c1be0:	d008      	beq.n	d03c1bf4 <sid_midi_note_on_program_source+0x30>
d03c1be2:	2f09      	cmp	r7, #9
d03c1be4:	d103      	bne.n	d03c1bee <sid_midi_note_on_program_source+0x2a>
d03c1be6:	4b35      	ldr	r3, [pc, #212]	; (d03c1cbc <sid_midi_note_on_program_source+0xf8>)
d03c1be8:	781b      	ldrb	r3, [r3, #0]
d03c1bea:	2b00      	cmp	r3, #0
d03c1bec:	d04c      	beq.n	d03c1c88 <sid_midi_note_on_program_source+0xc4>
d03c1bee:	4638      	mov	r0, r7
d03c1bf0:	f7ff ffd0 	bl	d03c1b94 <ui_note_channel_used>
d03c1bf4:	2cff      	cmp	r4, #255	; 0xff
d03c1bf6:	4d32      	ldr	r5, [pc, #200]	; (d03c1cc0 <sid_midi_note_on_program_source+0xfc>)
d03c1bf8:	d15b      	bne.n	d03c1cb2 <sid_midi_note_on_program_source+0xee>
d03c1bfa:	4932      	ldr	r1, [pc, #200]	; (d03c1cc4 <sid_midi_note_on_program_source+0x100>)
d03c1bfc:	2200      	movs	r2, #0
d03c1bfe:	2006      	movs	r0, #6
d03c1c00:	780c      	ldrb	r4, [r1, #0]
d03c1c02:	eb02 0c04 	add.w	ip, r2, r4
d03c1c06:	fbbc f3f0 	udiv	r3, ip, r0
d03c1c0a:	fb00 c313 	mls	r3, r0, r3, ip
d03c1c0e:	f815 c033 	ldrb.w	ip, [r5, r3, lsl #3]
d03c1c12:	f1bc 0f00 	cmp.w	ip, #0
d03c1c16:	d139      	bne.n	d03c1c8c <sid_midi_note_on_program_source+0xc8>
d03c1c18:	b2dc      	uxtb	r4, r3
d03c1c1a:	3301      	adds	r3, #1
d03c1c1c:	fbb3 f2f0 	udiv	r2, r3, r0
d03c1c20:	fb00 3312 	mls	r3, r0, r2, r3
d03c1c24:	700b      	strb	r3, [r1, #0]
d03c1c26:	2301      	movs	r3, #1
d03c1c28:	f1b9 0f02 	cmp.w	r9, #2
d03c1c2c:	f805 3034 	strb.w	r3, [r5, r4, lsl #3]
d03c1c30:	eb05 05c4 	add.w	r5, r5, r4, lsl #3
d03c1c34:	f04f 0300 	mov.w	r3, #0
d03c1c38:	706f      	strb	r7, [r5, #1]
d03c1c3a:	f885 a002 	strb.w	sl, [r5, #2]
d03c1c3e:	70ee      	strb	r6, [r5, #3]
d03c1c40:	f885 8004 	strb.w	r8, [r5, #4]
d03c1c44:	f885 9005 	strb.w	r9, [r5, #5]
d03c1c48:	80eb      	strh	r3, [r5, #6]
d03c1c4a:	d004      	beq.n	d03c1c56 <sid_midi_note_on_program_source+0x92>
d03c1c4c:	4631      	mov	r1, r6
d03c1c4e:	4638      	mov	r0, r7
d03c1c50:	f7fe ff5a 	bl	d03c0b08 <midi_effective_velocity>
d03c1c54:	4606      	mov	r6, r0
d03c1c56:	4633      	mov	r3, r6
d03c1c58:	4652      	mov	r2, sl
d03c1c5a:	4641      	mov	r1, r8
d03c1c5c:	4620      	mov	r0, r4
d03c1c5e:	f7fe fc45 	bl	d03c04ec <sid_voice_note_on>
d03c1c62:	f1b8 0f80 	cmp.w	r8, #128	; 0x80
d03c1c66:	d008      	beq.n	d03c1c7a <sid_midi_note_on_program_source+0xb6>
d03c1c68:	f1b8 0f09 	cmp.w	r8, #9
d03c1c6c:	d005      	beq.n	d03c1c7a <sid_midi_note_on_program_source+0xb6>
d03c1c6e:	4b16      	ldr	r3, [pc, #88]	; (d03c1cc8 <sid_midi_note_on_program_source+0x104>)
d03c1c70:	4620      	mov	r0, r4
d03c1c72:	f933 1017 	ldrsh.w	r1, [r3, r7, lsl #1]
d03c1c76:	f7fe fc81 	bl	d03c057c <sid_voice_pitch_bend>
d03c1c7a:	f1b9 0f02 	cmp.w	r9, #2
d03c1c7e:	bf1f      	itttt	ne
d03c1c80:	4a12      	ldrne	r2, [pc, #72]	; (d03c1ccc <sid_midi_note_on_program_source+0x108>)
d03c1c82:	6813      	ldrne	r3, [r2, #0]
d03c1c84:	3301      	addne	r3, #1
d03c1c86:	6013      	strne	r3, [r2, #0]
d03c1c88:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03c1c8c:	3201      	adds	r2, #1
d03c1c8e:	2a06      	cmp	r2, #6
d03c1c90:	d1b7      	bne.n	d03c1c02 <sid_midi_note_on_program_source+0x3e>
d03c1c92:	1c60      	adds	r0, r4, #1
d03c1c94:	fbb0 f3f2 	udiv	r3, r0, r2
d03c1c98:	fb02 0213 	mls	r2, r2, r3, r0
d03c1c9c:	4620      	mov	r0, r4
d03c1c9e:	700a      	strb	r2, [r1, #0]
d03c1ca0:	f7fe fc48 	bl	d03c0534 <sid_voice_note_kill>
d03c1ca4:	2300      	movs	r3, #0
d03c1ca6:	eb05 02c4 	add.w	r2, r5, r4, lsl #3
d03c1caa:	f805 3034 	strb.w	r3, [r5, r4, lsl #3]
d03c1cae:	7153      	strb	r3, [r2, #5]
d03c1cb0:	e7b9      	b.n	d03c1c26 <sid_midi_note_on_program_source+0x62>
d03c1cb2:	4620      	mov	r0, r4
d03c1cb4:	f7fe fbe4 	bl	d03c0480 <sid_voice_note_off>
d03c1cb8:	e7b5      	b.n	d03c1c26 <sid_midi_note_on_program_source+0x62>
d03c1cba:	bf00      	nop
d03c1cbc:	d03ccd28 	.word	0xd03ccd28
d03c1cc0:	d03cd0a8 	.word	0xd03cd0a8
d03c1cc4:	d03cd0d8 	.word	0xd03cd0d8
d03c1cc8:	d03cccd4 	.word	0xd03cccd4
d03c1ccc:	d03ccf3c 	.word	0xd03ccf3c

d03c1cd0 <seq_metronome_click>:
d03c1cd0:	b537      	push	{r0, r1, r2, r4, r5, lr}
d03c1cd2:	2804      	cmp	r0, #4
d03c1cd4:	4c11      	ldr	r4, [pc, #68]	; (d03c1d1c <seq_metronome_click+0x4c>)
d03c1cd6:	f04f 0002 	mov.w	r0, #2
d03c1cda:	bf0c      	ite	eq
d03c1cdc:	2558      	moveq	r5, #88	; 0x58
d03c1cde:	254c      	movne	r5, #76	; 0x4c
d03c1ce0:	f7ff fd32 	bl	d03c1748 <sid_midi_all_notes_off_source>
d03c1ce4:	7821      	ldrb	r1, [r4, #0]
d03c1ce6:	b111      	cbz	r1, d03c1cee <seq_metronome_click+0x1e>
d03c1ce8:	200f      	movs	r0, #15
d03c1cea:	f7ff fe95 	bl	d03c1a18 <seq_midi_out_note_off>
d03c1cee:	2302      	movs	r3, #2
d03c1cf0:	227f      	movs	r2, #127	; 0x7f
d03c1cf2:	4629      	mov	r1, r5
d03c1cf4:	200f      	movs	r0, #15
d03c1cf6:	9300      	str	r3, [sp, #0]
d03c1cf8:	2376      	movs	r3, #118	; 0x76
d03c1cfa:	f7ff ff63 	bl	d03c1bc4 <sid_midi_note_on_program_source>
d03c1cfe:	2176      	movs	r1, #118	; 0x76
d03c1d00:	200f      	movs	r0, #15
d03c1d02:	f7ff fe63 	bl	d03c19cc <seq_midi_out_program>
d03c1d06:	227f      	movs	r2, #127	; 0x7f
d03c1d08:	4629      	mov	r1, r5
d03c1d0a:	200f      	movs	r0, #15
d03c1d0c:	f7fe fed8 	bl	d03c0ac0 <seq_midi_out_note_on>
d03c1d10:	4b03      	ldr	r3, [pc, #12]	; (d03c1d20 <seq_metronome_click+0x50>)
d03c1d12:	2204      	movs	r2, #4
d03c1d14:	7025      	strb	r5, [r4, #0]
d03c1d16:	701a      	strb	r2, [r3, #0]
d03c1d18:	b003      	add	sp, #12
d03c1d1a:	bd30      	pop	{r4, r5, pc}
d03c1d1c:	d03ccf68 	.word	0xd03ccf68
d03c1d20:	d03ccf69 	.word	0xd03ccf69

d03c1d24 <seq_begin_count_in>:
d03c1d24:	b538      	push	{r3, r4, r5, lr}
d03c1d26:	f7ff feb3 	bl	d03c1a90 <seq_stop_playback_notes>
d03c1d2a:	2400      	movs	r4, #0
d03c1d2c:	4b11      	ldr	r3, [pc, #68]	; (d03c1d74 <seq_begin_count_in+0x50>)
d03c1d2e:	2201      	movs	r2, #1
d03c1d30:	4d11      	ldr	r5, [pc, #68]	; (d03c1d78 <seq_begin_count_in+0x54>)
d03c1d32:	701c      	strb	r4, [r3, #0]
d03c1d34:	4b11      	ldr	r3, [pc, #68]	; (d03c1d7c <seq_begin_count_in+0x58>)
d03c1d36:	701c      	strb	r4, [r3, #0]
d03c1d38:	4b11      	ldr	r3, [pc, #68]	; (d03c1d80 <seq_begin_count_in+0x5c>)
d03c1d3a:	701a      	strb	r2, [r3, #0]
d03c1d3c:	2304      	movs	r3, #4
d03c1d3e:	702b      	strb	r3, [r5, #0]
d03c1d40:	f7fe ff24 	bl	d03c0b8c <seq_beat_ticks>
d03c1d44:	4b0f      	ldr	r3, [pc, #60]	; (d03c1d84 <seq_begin_count_in+0x60>)
d03c1d46:	8018      	strh	r0, [r3, #0]
d03c1d48:	4b0f      	ldr	r3, [pc, #60]	; (d03c1d88 <seq_begin_count_in+0x64>)
d03c1d4a:	681a      	ldr	r2, [r3, #0]
d03c1d4c:	4b0f      	ldr	r3, [pc, #60]	; (d03c1d8c <seq_begin_count_in+0x68>)
d03c1d4e:	601a      	str	r2, [r3, #0]
d03c1d50:	4b0f      	ldr	r3, [pc, #60]	; (d03c1d90 <seq_begin_count_in+0x6c>)
d03c1d52:	6818      	ldr	r0, [r3, #0]
d03c1d54:	f7ff fd5c 	bl	d03c1810 <seq_playback_sync>
d03c1d58:	4621      	mov	r1, r4
d03c1d5a:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c1d5e:	480d      	ldr	r0, [pc, #52]	; (d03c1d94 <seq_begin_count_in+0x70>)
d03c1d60:	f007 fdfa 	bl	d03c9958 <memset>
d03c1d64:	7828      	ldrb	r0, [r5, #0]
d03c1d66:	f7ff ffb3 	bl	d03c1cd0 <seq_metronome_click>
d03c1d6a:	480b      	ldr	r0, [pc, #44]	; (d03c1d98 <seq_begin_count_in+0x74>)
d03c1d6c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d03c1d70:	f7ff bb3c 	b.w	d03c13ec <ui_set_status>
d03c1d74:	d03cd09c 	.word	0xd03cd09c
d03c1d78:	d03ccf58 	.word	0xd03ccf58
d03c1d7c:	d03cd0a5 	.word	0xd03cd0a5
d03c1d80:	d03ccf54 	.word	0xd03ccf54
d03c1d84:	d03ccf56 	.word	0xd03ccf56
d03c1d88:	d03ccf50 	.word	0xd03ccf50
d03c1d8c:	d03ccf64 	.word	0xd03ccf64
d03c1d90:	d03cd0a0 	.word	0xd03cd0a0
d03c1d94:	d03ccf8c 	.word	0xd03ccf8c
d03c1d98:	d03cb30c 	.word	0xd03cb30c

d03c1d9c <sid_midi_pitch_bend_event>:
d03c1d9c:	01d2      	lsls	r2, r2, #7
d03c1d9e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03c1da0:	f402 527e 	and.w	r2, r2, #16256	; 0x3f80
d03c1da4:	f001 047f 	and.w	r4, r1, #127	; 0x7f
d03c1da8:	4605      	mov	r5, r0
d03c1daa:	4314      	orrs	r4, r2
d03c1dac:	f7ff fef2 	bl	d03c1b94 <ui_note_channel_used>
d03c1db0:	4b0b      	ldr	r3, [pc, #44]	; (d03c1de0 <sid_midi_pitch_bend_event+0x44>)
d03c1db2:	2809      	cmp	r0, #9
d03c1db4:	f5a4 5400 	sub.w	r4, r4, #8192	; 0x2000
d03c1db8:	b224      	sxth	r4, r4
d03c1dba:	f823 4010 	strh.w	r4, [r3, r0, lsl #1]
d03c1dbe:	d00e      	beq.n	d03c1dde <sid_midi_pitch_bend_event+0x42>
d03c1dc0:	4f08      	ldr	r7, [pc, #32]	; (d03c1de4 <sid_midi_pitch_bend_event+0x48>)
d03c1dc2:	2600      	movs	r6, #0
d03c1dc4:	783b      	ldrb	r3, [r7, #0]
d03c1dc6:	b2f0      	uxtb	r0, r6
d03c1dc8:	b12b      	cbz	r3, d03c1dd6 <sid_midi_pitch_bend_event+0x3a>
d03c1dca:	787b      	ldrb	r3, [r7, #1]
d03c1dcc:	42ab      	cmp	r3, r5
d03c1dce:	d102      	bne.n	d03c1dd6 <sid_midi_pitch_bend_event+0x3a>
d03c1dd0:	4621      	mov	r1, r4
d03c1dd2:	f7fe fbd3 	bl	d03c057c <sid_voice_pitch_bend>
d03c1dd6:	3601      	adds	r6, #1
d03c1dd8:	3708      	adds	r7, #8
d03c1dda:	2e06      	cmp	r6, #6
d03c1ddc:	d1f2      	bne.n	d03c1dc4 <sid_midi_pitch_bend_event+0x28>
d03c1dde:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c1de0:	d03cccd4 	.word	0xd03cccd4
d03c1de4:	d03cd0a8 	.word	0xd03cd0a8

d03c1de8 <ui_vm_editor_clamp_selection>:
d03c1de8:	b508      	push	{r3, lr}
d03c1dea:	4b13      	ldr	r3, [pc, #76]	; (d03c1e38 <ui_vm_editor_clamp_selection+0x50>)
d03c1dec:	4a13      	ldr	r2, [pc, #76]	; (d03c1e3c <ui_vm_editor_clamp_selection+0x54>)
d03c1dee:	781b      	ldrb	r3, [r3, #0]
d03c1df0:	5cd0      	ldrb	r0, [r2, r3]
d03c1df2:	f7ff f84b 	bl	d03c0e8c <vm_program_length>
d03c1df6:	4b12      	ldr	r3, [pc, #72]	; (d03c1e40 <ui_vm_editor_clamp_selection+0x58>)
d03c1df8:	4912      	ldr	r1, [pc, #72]	; (d03c1e44 <ui_vm_editor_clamp_selection+0x5c>)
d03c1dfa:	b910      	cbnz	r0, d03c1e02 <ui_vm_editor_clamp_selection+0x1a>
d03c1dfc:	7018      	strb	r0, [r3, #0]
d03c1dfe:	7008      	strb	r0, [r1, #0]
d03c1e00:	bd08      	pop	{r3, pc}
d03c1e02:	781a      	ldrb	r2, [r3, #0]
d03c1e04:	4282      	cmp	r2, r0
d03c1e06:	4a10      	ldr	r2, [pc, #64]	; (d03c1e48 <ui_vm_editor_clamp_selection+0x60>)
d03c1e08:	bf24      	itt	cs
d03c1e0a:	f100 30ff 	addcs.w	r0, r0, #4294967295	; 0xffffffff
d03c1e0e:	7018      	strbcs	r0, [r3, #0]
d03c1e10:	7810      	ldrb	r0, [r2, #0]
d03c1e12:	781b      	ldrb	r3, [r3, #0]
d03c1e14:	2802      	cmp	r0, #2
d03c1e16:	bf84      	itt	hi
d03c1e18:	2000      	movhi	r0, #0
d03c1e1a:	7010      	strbhi	r0, [r2, #0]
d03c1e1c:	780a      	ldrb	r2, [r1, #0]
d03c1e1e:	4293      	cmp	r3, r2
d03c1e20:	d204      	bcs.n	d03c1e2c <ui_vm_editor_clamp_selection+0x44>
d03c1e22:	700b      	strb	r3, [r1, #0]
d03c1e24:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d03c1e28:	f7ff b846 	b.w	d03c0eb8 <ui_clamp_vm_scroll>
d03c1e2c:	3208      	adds	r2, #8
d03c1e2e:	b2d2      	uxtb	r2, r2
d03c1e30:	4293      	cmp	r3, r2
d03c1e32:	d3f7      	bcc.n	d03c1e24 <ui_vm_editor_clamp_selection+0x3c>
d03c1e34:	3b07      	subs	r3, #7
d03c1e36:	e7f4      	b.n	d03c1e22 <ui_vm_editor_clamp_selection+0x3a>
d03c1e38:	d03cf36a 	.word	0xd03cf36a
d03c1e3c:	d03ccd04 	.word	0xd03ccd04
d03c1e40:	d03cf529 	.word	0xd03cf529
d03c1e44:	d03cf531 	.word	0xd03cf531
d03c1e48:	d03cf522 	.word	0xd03cf522

d03c1e4c <ui_vm_editor_adjust>:
d03c1e4c:	4b1d      	ldr	r3, [pc, #116]	; (d03c1ec4 <ui_vm_editor_adjust+0x78>)
d03c1e4e:	b510      	push	{r4, lr}
d03c1e50:	781b      	ldrb	r3, [r3, #0]
d03c1e52:	4604      	mov	r4, r0
d03c1e54:	b32b      	cbz	r3, d03c1ea2 <ui_vm_editor_adjust+0x56>
d03c1e56:	4b1c      	ldr	r3, [pc, #112]	; (d03c1ec8 <ui_vm_editor_adjust+0x7c>)
d03c1e58:	781b      	ldrb	r3, [r3, #0]
d03c1e5a:	2bff      	cmp	r3, #255	; 0xff
d03c1e5c:	d021      	beq.n	d03c1ea2 <ui_vm_editor_adjust+0x56>
d03c1e5e:	4a1b      	ldr	r2, [pc, #108]	; (d03c1ecc <ui_vm_editor_adjust+0x80>)
d03c1e60:	491b      	ldr	r1, [pc, #108]	; (d03c1ed0 <ui_vm_editor_adjust+0x84>)
d03c1e62:	7812      	ldrb	r2, [r2, #0]
d03c1e64:	5c8a      	ldrb	r2, [r1, r2]
d03c1e66:	429a      	cmp	r2, r3
d03c1e68:	d11b      	bne.n	d03c1ea2 <ui_vm_editor_adjust+0x56>
d03c1e6a:	f7ff ffbd 	bl	d03c1de8 <ui_vm_editor_clamp_selection>
d03c1e6e:	4a19      	ldr	r2, [pc, #100]	; (d03c1ed4 <ui_vm_editor_adjust+0x88>)
d03c1e70:	4b19      	ldr	r3, [pc, #100]	; (d03c1ed8 <ui_vm_editor_adjust+0x8c>)
d03c1e72:	7812      	ldrb	r2, [r2, #0]
d03c1e74:	781b      	ldrb	r3, [r3, #0]
d03c1e76:	2a01      	cmp	r2, #1
d03c1e78:	4918      	ldr	r1, [pc, #96]	; (d03c1edc <ui_vm_editor_adjust+0x90>)
d03c1e7a:	d013      	beq.n	d03c1ea4 <ui_vm_editor_adjust+0x58>
d03c1e7c:	2a02      	cmp	r2, #2
d03c1e7e:	d019      	beq.n	d03c1eb4 <ui_vm_editor_adjust+0x68>
d03c1e80:	b94a      	cbnz	r2, d03c1e96 <ui_vm_editor_adjust+0x4a>
d03c1e82:	f811 2023 	ldrb.w	r2, [r1, r3, lsl #2]
d03c1e86:	1910      	adds	r0, r2, r4
d03c1e88:	2815      	cmp	r0, #21
d03c1e8a:	bfa8      	it	ge
d03c1e8c:	2015      	movge	r0, #21
d03c1e8e:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d03c1e92:	f801 0023 	strb.w	r0, [r1, r3, lsl #2]
d03c1e96:	2300      	movs	r3, #0
d03c1e98:	2201      	movs	r2, #1
d03c1e9a:	f881 317c 	strb.w	r3, [r1, #380]	; 0x17c
d03c1e9e:	4b10      	ldr	r3, [pc, #64]	; (d03c1ee0 <ui_vm_editor_adjust+0x94>)
d03c1ea0:	701a      	strb	r2, [r3, #0]
d03c1ea2:	bd10      	pop	{r4, pc}
d03c1ea4:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d03c1ea8:	7858      	ldrb	r0, [r3, #1]
d03c1eaa:	4420      	add	r0, r4
d03c1eac:	f380 0008 	usat	r0, #8, r0
d03c1eb0:	7058      	strb	r0, [r3, #1]
d03c1eb2:	e7f0      	b.n	d03c1e96 <ui_vm_editor_adjust+0x4a>
d03c1eb4:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d03c1eb8:	885a      	ldrh	r2, [r3, #2]
d03c1eba:	1910      	adds	r0, r2, r4
d03c1ebc:	f380 0010 	usat	r0, #16, r0
d03c1ec0:	8058      	strh	r0, [r3, #2]
d03c1ec2:	e7e8      	b.n	d03c1e96 <ui_vm_editor_adjust+0x4a>
d03c1ec4:	d03cf523 	.word	0xd03cf523
d03c1ec8:	d03cf528 	.word	0xd03cf528
d03c1ecc:	d03cf36a 	.word	0xd03cf36a
d03c1ed0:	d03ccd04 	.word	0xd03ccd04
d03c1ed4:	d03cf522 	.word	0xd03cf522
d03c1ed8:	d03cf529 	.word	0xd03cf529
d03c1edc:	d03cf3a2 	.word	0xd03cf3a2
d03c1ee0:	d03cd0e0 	.word	0xd03cd0e0

d03c1ee4 <ui_midi_import_note_off.part.0>:
d03c1ee4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d03c1ee8:	4604      	mov	r4, r0
d03c1eea:	460e      	mov	r6, r1
d03c1eec:	4d14      	ldr	r5, [pc, #80]	; (d03c1f40 <ui_midi_import_note_off.part.0+0x5c>)
d03c1eee:	4619      	mov	r1, r3
d03c1ef0:	01e7      	lsls	r7, r4, #7
d03c1ef2:	f64f 73ff 	movw	r3, #65535	; 0xffff
d03c1ef6:	eb06 14c4 	add.w	r4, r6, r4, lsl #7
d03c1efa:	4610      	mov	r0, r2
d03c1efc:	f835 4014 	ldrh.w	r4, [r5, r4, lsl #1]
d03c1f00:	429c      	cmp	r4, r3
d03c1f02:	d01a      	beq.n	d03c1f3a <ui_midi_import_note_off.part.0+0x56>
d03c1f04:	4b0f      	ldr	r3, [pc, #60]	; (d03c1f44 <ui_midi_import_note_off.part.0+0x60>)
d03c1f06:	681b      	ldr	r3, [r3, #0]
d03c1f08:	429c      	cmp	r4, r3
d03c1f0a:	d216      	bcs.n	d03c1f3a <ui_midi_import_note_off.part.0+0x56>
d03c1f0c:	4b0e      	ldr	r3, [pc, #56]	; (d03c1f48 <ui_midi_import_note_off.part.0+0x64>)
d03c1f0e:	ea4f 1904 	mov.w	r9, r4, lsl #4
d03c1f12:	f8d3 8000 	ldr.w	r8, [r3]
d03c1f16:	eb08 1404 	add.w	r4, r8, r4, lsl #4
d03c1f1a:	7b63      	ldrb	r3, [r4, #13]
d03c1f1c:	b16b      	cbz	r3, d03c1f3a <ui_midi_import_note_off.part.0+0x56>
d03c1f1e:	f7ff f873 	bl	d03c1008 <ui_midi_import_tick_to_seq>
d03c1f22:	f858 3009 	ldr.w	r3, [r8, r9]
d03c1f26:	443e      	add	r6, r7
d03c1f28:	4298      	cmp	r0, r3
d03c1f2a:	bf98      	it	ls
d03c1f2c:	1c58      	addls	r0, r3, #1
d03c1f2e:	1ac0      	subs	r0, r0, r3
d03c1f30:	f64f 73ff 	movw	r3, #65535	; 0xffff
d03c1f34:	6060      	str	r0, [r4, #4]
d03c1f36:	f825 3016 	strh.w	r3, [r5, r6, lsl #1]
d03c1f3a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d03c1f3e:	bf00      	nop
d03c1f40:	d03ce2be 	.word	0xd03ce2be
d03c1f44:	d03ccf74 	.word	0xd03ccf74
d03c1f48:	d03ccf78 	.word	0xd03ccf78

d03c1f4c <flip_front_buffer>:
d03c1f4c:	4b15      	ldr	r3, [pc, #84]	; (d03c1fa4 <flip_front_buffer+0x58>)
d03c1f4e:	b410      	push	{r4}
d03c1f50:	781a      	ldrb	r2, [r3, #0]
d03c1f52:	f1c2 0201 	rsb	r2, r2, #1
d03c1f56:	b2d2      	uxtb	r2, r2
d03c1f58:	701a      	strb	r2, [r3, #0]
d03c1f5a:	4b13      	ldr	r3, [pc, #76]	; (d03c1fa8 <flip_front_buffer+0x5c>)
d03c1f5c:	6818      	ldr	r0, [r3, #0]
d03c1f5e:	4b13      	ldr	r3, [pc, #76]	; (d03c1fac <flip_front_buffer+0x60>)
d03c1f60:	681c      	ldr	r4, [r3, #0]
d03c1f62:	4b13      	ldr	r3, [pc, #76]	; (d03c1fb0 <flip_front_buffer+0x64>)
d03c1f64:	b182      	cbz	r2, d03c1f88 <flip_front_buffer+0x3c>
d03c1f66:	7b1a      	ldrb	r2, [r3, #12]
d03c1f68:	7b59      	ldrb	r1, [r3, #13]
d03c1f6a:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d03c1f6e:	7b99      	ldrb	r1, [r3, #14]
d03c1f70:	7bdb      	ldrb	r3, [r3, #15]
d03c1f72:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d03c1f76:	4601      	mov	r1, r0
d03c1f78:	4620      	mov	r0, r4
d03c1f7a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03c1f7e:	681b      	ldr	r3, [r3, #0]
d03c1f80:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d03c1f82:	f85d 4b04 	ldr.w	r4, [sp], #4
d03c1f86:	4718      	bx	r3
d03c1f88:	7b1a      	ldrb	r2, [r3, #12]
d03c1f8a:	7b59      	ldrb	r1, [r3, #13]
d03c1f8c:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d03c1f90:	7b99      	ldrb	r1, [r3, #14]
d03c1f92:	7bdb      	ldrb	r3, [r3, #15]
d03c1f94:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d03c1f98:	4621      	mov	r1, r4
d03c1f9a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03c1f9e:	681b      	ldr	r3, [r3, #0]
d03c1fa0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d03c1fa2:	e7ee      	b.n	d03c1f82 <flip_front_buffer+0x36>
d03c1fa4:	d03cccc9 	.word	0xd03cccc9
d03c1fa8:	d03cccd0 	.word	0xd03cccd0
d03c1fac:	d03ccccc 	.word	0xd03ccccc
d03c1fb0:	2001f000 	.word	0x2001f000

d03c1fb4 <ui_midi_import_progress_add>:
d03c1fb4:	4b9f      	ldr	r3, [pc, #636]	; (d03c2234 <ui_midi_import_progress_add+0x280>)
d03c1fb6:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c1fba:	781b      	ldrb	r3, [r3, #0]
d03c1fbc:	b08f      	sub	sp, #60	; 0x3c
d03c1fbe:	460c      	mov	r4, r1
d03c1fc0:	2b00      	cmp	r3, #0
d03c1fc2:	f000 8131 	beq.w	d03c2228 <ui_midi_import_progress_add+0x274>
d03c1fc6:	4b9c      	ldr	r3, [pc, #624]	; (d03c2238 <ui_midi_import_progress_add+0x284>)
d03c1fc8:	681a      	ldr	r2, [r3, #0]
d03c1fca:	2a00      	cmp	r2, #0
d03c1fcc:	f000 812c 	beq.w	d03c2228 <ui_midi_import_progress_add+0x274>
d03c1fd0:	4b9a      	ldr	r3, [pc, #616]	; (d03c223c <ui_midi_import_progress_add+0x288>)
d03c1fd2:	b138      	cbz	r0, d03c1fe4 <ui_midi_import_progress_add+0x30>
d03c1fd4:	6819      	ldr	r1, [r3, #0]
d03c1fd6:	1840      	adds	r0, r0, r1
d03c1fd8:	f080 8129 	bcs.w	d03c222e <ui_midi_import_progress_add+0x27a>
d03c1fdc:	4290      	cmp	r0, r2
d03c1fde:	bf28      	it	cs
d03c1fe0:	4610      	movcs	r0, r2
d03c1fe2:	6018      	str	r0, [r3, #0]
d03c1fe4:	6818      	ldr	r0, [r3, #0]
d03c1fe6:	2164      	movs	r1, #100	; 0x64
d03c1fe8:	2300      	movs	r3, #0
d03c1fea:	fba0 0101 	umull	r0, r1, r0, r1
d03c1fee:	f007 fb05 	bl	d03c95fc <__aeabi_uldivmod>
d03c1ff2:	4b93      	ldr	r3, [pc, #588]	; (d03c2240 <ui_midi_import_progress_add+0x28c>)
d03c1ff4:	b2c2      	uxtb	r2, r0
d03c1ff6:	b91c      	cbnz	r4, d03c2000 <ui_midi_import_progress_add+0x4c>
d03c1ff8:	7819      	ldrb	r1, [r3, #0]
d03c1ffa:	4291      	cmp	r1, r2
d03c1ffc:	f000 8114 	beq.w	d03c2228 <ui_midi_import_progress_add+0x274>
d03c2000:	701a      	strb	r2, [r3, #0]
d03c2002:	2864      	cmp	r0, #100	; 0x64
d03c2004:	4b8f      	ldr	r3, [pc, #572]	; (d03c2244 <ui_midi_import_progress_add+0x290>)
d03c2006:	f44f 768a 	mov.w	r6, #276	; 0x114
d03c200a:	4c8f      	ldr	r4, [pc, #572]	; (d03c2248 <ui_midi_import_progress_add+0x294>)
d03c200c:	bf28      	it	cs
d03c200e:	2064      	movcs	r0, #100	; 0x64
d03c2010:	f8b3 9000 	ldrh.w	r9, [r3]
d03c2014:	271a      	movs	r7, #26
d03c2016:	4b8d      	ldr	r3, [pc, #564]	; (d03c224c <ui_midi_import_progress_add+0x298>)
d03c2018:	4346      	muls	r6, r0
d03c201a:	4605      	mov	r5, r0
d03c201c:	f8b3 a000 	ldrh.w	sl, [r3]
d03c2020:	4b8b      	ldr	r3, [pc, #556]	; (d03c2250 <ui_midi_import_progress_add+0x29c>)
d03c2022:	f8d3 8000 	ldr.w	r8, [r3]
d03c2026:	7b23      	ldrb	r3, [r4, #12]
d03c2028:	7b62      	ldrb	r2, [r4, #13]
d03c202a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c202e:	7ba2      	ldrb	r2, [r4, #14]
d03c2030:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2034:	7be2      	ldrb	r2, [r4, #15]
d03c2036:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c203a:	681b      	ldr	r3, [r3, #0]
d03c203c:	68db      	ldr	r3, [r3, #12]
d03c203e:	4798      	blx	r3
d03c2040:	f7ff ff84 	bl	d03c1f4c <flip_front_buffer>
d03c2044:	7b23      	ldrb	r3, [r4, #12]
d03c2046:	7b62      	ldrb	r2, [r4, #13]
d03c2048:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c204c:	7ba2      	ldrb	r2, [r4, #14]
d03c204e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2052:	7be2      	ldrb	r2, [r4, #15]
d03c2054:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2058:	685b      	ldr	r3, [r3, #4]
d03c205a:	681b      	ldr	r3, [r3, #0]
d03c205c:	4798      	blx	r3
d03c205e:	231f      	movs	r3, #31
d03c2060:	216a      	movs	r1, #106	; 0x6a
d03c2062:	f44f 72a4 	mov.w	r2, #328	; 0x148
d03c2066:	204c      	movs	r0, #76	; 0x4c
d03c2068:	9301      	str	r3, [sp, #4]
d03c206a:	9700      	str	r7, [sp, #0]
d03c206c:	2370      	movs	r3, #112	; 0x70
d03c206e:	f7fe fe0b 	bl	d03c0c88 <ui_box>
d03c2072:	7b23      	ldrb	r3, [r4, #12]
d03c2074:	7b62      	ldrb	r2, [r4, #13]
d03c2076:	2014      	movs	r0, #20
d03c2078:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c207c:	7ba2      	ldrb	r2, [r4, #14]
d03c207e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2082:	7be2      	ldrb	r2, [r4, #15]
d03c2084:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2088:	685b      	ldr	r3, [r3, #4]
d03c208a:	68db      	ldr	r3, [r3, #12]
d03c208c:	4798      	blx	r3
d03c208e:	7b23      	ldrb	r3, [r4, #12]
d03c2090:	7b62      	ldrb	r2, [r4, #13]
d03c2092:	216b      	movs	r1, #107	; 0x6b
d03c2094:	204d      	movs	r0, #77	; 0x4d
d03c2096:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c209a:	7ba2      	ldrb	r2, [r4, #14]
d03c209c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c20a0:	7be2      	ldrb	r2, [r4, #15]
d03c20a2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c20a6:	f44f 72a3 	mov.w	r2, #326	; 0x146
d03c20aa:	685b      	ldr	r3, [r3, #4]
d03c20ac:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03c20b0:	2318      	movs	r3, #24
d03c20b2:	47d8      	blx	fp
d03c20b4:	7b23      	ldrb	r3, [r4, #12]
d03c20b6:	7b62      	ldrb	r2, [r4, #13]
d03c20b8:	201e      	movs	r0, #30
d03c20ba:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c20be:	7ba2      	ldrb	r2, [r4, #14]
d03c20c0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c20c4:	7be2      	ldrb	r2, [r4, #15]
d03c20c6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c20ca:	685b      	ldr	r3, [r3, #4]
d03c20cc:	68db      	ldr	r3, [r3, #12]
d03c20ce:	4798      	blx	r3
d03c20d0:	7b23      	ldrb	r3, [r4, #12]
d03c20d2:	7b62      	ldrb	r2, [r4, #13]
d03c20d4:	216f      	movs	r1, #111	; 0x6f
d03c20d6:	2060      	movs	r0, #96	; 0x60
d03c20d8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c20dc:	7ba2      	ldrb	r2, [r4, #14]
d03c20de:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c20e2:	7be2      	ldrb	r2, [r4, #15]
d03c20e4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c20e8:	4a5a      	ldr	r2, [pc, #360]	; (d03c2254 <ui_midi_import_progress_add+0x2a0>)
d03c20ea:	685b      	ldr	r3, [r3, #4]
d03c20ec:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c20ee:	4798      	blx	r3
d03c20f0:	2130      	movs	r1, #48	; 0x30
d03c20f2:	464b      	mov	r3, r9
d03c20f4:	4a58      	ldr	r2, [pc, #352]	; (d03c2258 <ui_midi_import_progress_add+0x2a4>)
d03c20f6:	a802      	add	r0, sp, #8
d03c20f8:	f8cd a000 	str.w	sl, [sp]
d03c20fc:	f007 ff36 	bl	d03c9f6c <sniprintf>
d03c2100:	7b23      	ldrb	r3, [r4, #12]
d03c2102:	7b62      	ldrb	r2, [r4, #13]
d03c2104:	2019      	movs	r0, #25
d03c2106:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c210a:	7ba2      	ldrb	r2, [r4, #14]
d03c210c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2110:	7be2      	ldrb	r2, [r4, #15]
d03c2112:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2116:	685b      	ldr	r3, [r3, #4]
d03c2118:	68db      	ldr	r3, [r3, #12]
d03c211a:	4798      	blx	r3
d03c211c:	7b23      	ldrb	r3, [r4, #12]
d03c211e:	7b62      	ldrb	r2, [r4, #13]
d03c2120:	2190      	movs	r1, #144	; 0x90
d03c2122:	2068      	movs	r0, #104	; 0x68
d03c2124:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2128:	7ba2      	ldrb	r2, [r4, #14]
d03c212a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c212e:	7be2      	ldrb	r2, [r4, #15]
d03c2130:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2134:	aa02      	add	r2, sp, #8
d03c2136:	685b      	ldr	r3, [r3, #4]
d03c2138:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c213a:	4798      	blx	r3
d03c213c:	4643      	mov	r3, r8
d03c213e:	4a47      	ldr	r2, [pc, #284]	; (d03c225c <ui_midi_import_progress_add+0x2a8>)
d03c2140:	2130      	movs	r1, #48	; 0x30
d03c2142:	a802      	add	r0, sp, #8
d03c2144:	f007 ff12 	bl	d03c9f6c <sniprintf>
d03c2148:	7b23      	ldrb	r3, [r4, #12]
d03c214a:	7b62      	ldrb	r2, [r4, #13]
d03c214c:	2190      	movs	r1, #144	; 0x90
d03c214e:	f44f 7082 	mov.w	r0, #260	; 0x104
d03c2152:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2156:	7ba2      	ldrb	r2, [r4, #14]
d03c2158:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c215c:	7be2      	ldrb	r2, [r4, #15]
d03c215e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2162:	aa02      	add	r2, sp, #8
d03c2164:	685b      	ldr	r3, [r3, #4]
d03c2166:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c2168:	4798      	blx	r3
d03c216a:	2311      	movs	r3, #17
d03c216c:	f44f 728c 	mov.w	r2, #280	; 0x118
d03c2170:	21a8      	movs	r1, #168	; 0xa8
d03c2172:	9301      	str	r3, [sp, #4]
d03c2174:	2064      	movs	r0, #100	; 0x64
d03c2176:	2312      	movs	r3, #18
d03c2178:	9700      	str	r7, [sp, #0]
d03c217a:	f7fe fd85 	bl	d03c0c88 <ui_box>
d03c217e:	2e63      	cmp	r6, #99	; 0x63
d03c2180:	d921      	bls.n	d03c21c6 <ui_midi_import_progress_add+0x212>
d03c2182:	7b23      	ldrb	r3, [r4, #12]
d03c2184:	200e      	movs	r0, #14
d03c2186:	7b62      	ldrb	r2, [r4, #13]
d03c2188:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c218c:	7ba2      	ldrb	r2, [r4, #14]
d03c218e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2192:	7be2      	ldrb	r2, [r4, #15]
d03c2194:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2198:	685b      	ldr	r3, [r3, #4]
d03c219a:	68db      	ldr	r3, [r3, #12]
d03c219c:	4798      	blx	r3
d03c219e:	7b23      	ldrb	r3, [r4, #12]
d03c21a0:	7b62      	ldrb	r2, [r4, #13]
d03c21a2:	21aa      	movs	r1, #170	; 0xaa
d03c21a4:	2066      	movs	r0, #102	; 0x66
d03c21a6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c21aa:	7ba2      	ldrb	r2, [r4, #14]
d03c21ac:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c21b0:	7be2      	ldrb	r2, [r4, #15]
d03c21b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c21b6:	2264      	movs	r2, #100	; 0x64
d03c21b8:	fbb6 f2f2 	udiv	r2, r6, r2
d03c21bc:	685b      	ldr	r3, [r3, #4]
d03c21be:	b212      	sxth	r2, r2
d03c21c0:	685e      	ldr	r6, [r3, #4]
d03c21c2:	230e      	movs	r3, #14
d03c21c4:	47b0      	blx	r6
d03c21c6:	2130      	movs	r1, #48	; 0x30
d03c21c8:	462b      	mov	r3, r5
d03c21ca:	4a25      	ldr	r2, [pc, #148]	; (d03c2260 <ui_midi_import_progress_add+0x2ac>)
d03c21cc:	a802      	add	r0, sp, #8
d03c21ce:	f007 fecd 	bl	d03c9f6c <sniprintf>
d03c21d2:	7b23      	ldrb	r3, [r4, #12]
d03c21d4:	7b62      	ldrb	r2, [r4, #13]
d03c21d6:	201e      	movs	r0, #30
d03c21d8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c21dc:	7ba2      	ldrb	r2, [r4, #14]
d03c21de:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c21e2:	7be2      	ldrb	r2, [r4, #15]
d03c21e4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c21e8:	685b      	ldr	r3, [r3, #4]
d03c21ea:	68db      	ldr	r3, [r3, #12]
d03c21ec:	4798      	blx	r3
d03c21ee:	7b23      	ldrb	r3, [r4, #12]
d03c21f0:	7b62      	ldrb	r2, [r4, #13]
d03c21f2:	21c0      	movs	r1, #192	; 0xc0
d03c21f4:	20dc      	movs	r0, #220	; 0xdc
d03c21f6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c21fa:	7ba2      	ldrb	r2, [r4, #14]
d03c21fc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2200:	7be2      	ldrb	r2, [r4, #15]
d03c2202:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2206:	aa02      	add	r2, sp, #8
d03c2208:	685b      	ldr	r3, [r3, #4]
d03c220a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c220c:	4798      	blx	r3
d03c220e:	7b23      	ldrb	r3, [r4, #12]
d03c2210:	7b62      	ldrb	r2, [r4, #13]
d03c2212:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2216:	7ba2      	ldrb	r2, [r4, #14]
d03c2218:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c221c:	7be2      	ldrb	r2, [r4, #15]
d03c221e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2222:	681b      	ldr	r3, [r3, #0]
d03c2224:	681b      	ldr	r3, [r3, #0]
d03c2226:	4798      	blx	r3
d03c2228:	b00f      	add	sp, #60	; 0x3c
d03c222a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c222e:	4610      	mov	r0, r2
d03c2230:	e6d7      	b.n	d03c1fe2 <ui_midi_import_progress_add+0x2e>
d03c2232:	bf00      	nop
d03c2234:	d03cf2be 	.word	0xd03cf2be
d03c2238:	d03cf2c8 	.word	0xd03cf2c8
d03c223c:	d03cf2c0 	.word	0xd03cf2c0
d03c2240:	d03cf2c4 	.word	0xd03cf2c4
d03c2244:	d03cf2cc 	.word	0xd03cf2cc
d03c2248:	2001f000 	.word	0x2001f000
d03c224c:	d03cf2ce 	.word	0xd03cf2ce
d03c2250:	d03ccf74 	.word	0xd03ccf74
d03c2254:	d03cb317 	.word	0xd03cb317
d03c2258:	d03cb326 	.word	0xd03cb326
d03c225c:	d03cb792 	.word	0xd03cb792
d03c2260:	d03cb332 	.word	0xd03cb332

d03c2264 <the50hzISR>:
d03c2264:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03c2266:	2500      	movs	r5, #0
d03c2268:	4c17      	ldr	r4, [pc, #92]	; (d03c22c8 <the50hzISR+0x64>)
d03c226a:	4f18      	ldr	r7, [pc, #96]	; (d03c22cc <the50hzISR+0x68>)
d03c226c:	f7fe fa02 	bl	d03c0674 <sid_midi_isr>
d03c2270:	462e      	mov	r6, r5
d03c2272:	7823      	ldrb	r3, [r4, #0]
d03c2274:	b2e8      	uxtb	r0, r5
d03c2276:	b12b      	cbz	r3, d03c2284 <the50hzISR+0x20>
d03c2278:	88e3      	ldrh	r3, [r4, #6]
d03c227a:	f5b3 7f16 	cmp.w	r3, #600	; 0x258
d03c227e:	d219      	bcs.n	d03c22b4 <the50hzISR+0x50>
d03c2280:	3301      	adds	r3, #1
d03c2282:	80e3      	strh	r3, [r4, #6]
d03c2284:	3501      	adds	r5, #1
d03c2286:	3408      	adds	r4, #8
d03c2288:	2d06      	cmp	r5, #6
d03c228a:	d1f2      	bne.n	d03c2272 <the50hzISR+0xe>
d03c228c:	4a10      	ldr	r2, [pc, #64]	; (d03c22d0 <the50hzISR+0x6c>)
d03c228e:	6813      	ldr	r3, [r2, #0]
d03c2290:	3301      	adds	r3, #1
d03c2292:	6013      	str	r3, [r2, #0]
d03c2294:	4a0f      	ldr	r2, [pc, #60]	; (d03c22d4 <the50hzISR+0x70>)
d03c2296:	7813      	ldrb	r3, [r2, #0]
d03c2298:	3301      	adds	r3, #1
d03c229a:	b2db      	uxtb	r3, r3
d03c229c:	2b0e      	cmp	r3, #14
d03c229e:	7013      	strb	r3, [r2, #0]
d03c22a0:	d907      	bls.n	d03c22b2 <the50hzISR+0x4e>
d03c22a2:	2300      	movs	r3, #0
d03c22a4:	7013      	strb	r3, [r2, #0]
d03c22a6:	4a0c      	ldr	r2, [pc, #48]	; (d03c22d8 <the50hzISR+0x74>)
d03c22a8:	7813      	ldrb	r3, [r2, #0]
d03c22aa:	fab3 f383 	clz	r3, r3
d03c22ae:	095b      	lsrs	r3, r3, #5
d03c22b0:	7013      	strb	r3, [r2, #0]
d03c22b2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c22b4:	f7fe f93e 	bl	d03c0534 <sid_voice_note_kill>
d03c22b8:	683b      	ldr	r3, [r7, #0]
d03c22ba:	7026      	strb	r6, [r4, #0]
d03c22bc:	3301      	adds	r3, #1
d03c22be:	7166      	strb	r6, [r4, #5]
d03c22c0:	80e6      	strh	r6, [r4, #6]
d03c22c2:	603b      	str	r3, [r7, #0]
d03c22c4:	e7de      	b.n	d03c2284 <the50hzISR+0x20>
d03c22c6:	bf00      	nop
d03c22c8:	d03cd0a8 	.word	0xd03cd0a8
d03c22cc:	d03ccf48 	.word	0xd03ccf48
d03c22d0:	d03ccf50 	.word	0xd03ccf50
d03c22d4:	d03cf52b 	.word	0xd03cf52b
d03c22d8:	d03cf52a 	.word	0xd03cf52a

d03c22dc <ui_project_ensure_dir>:
d03c22dc:	b537      	push	{r0, r1, r2, r4, r5, lr}
d03c22de:	4d19      	ldr	r5, [pc, #100]	; (d03c2344 <ui_project_ensure_dir+0x68>)
d03c22e0:	2400      	movs	r4, #0
d03c22e2:	4669      	mov	r1, sp
d03c22e4:	4818      	ldr	r0, [pc, #96]	; (d03c2348 <ui_project_ensure_dir+0x6c>)
d03c22e6:	792b      	ldrb	r3, [r5, #4]
d03c22e8:	796a      	ldrb	r2, [r5, #5]
d03c22ea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c22ee:	79aa      	ldrb	r2, [r5, #6]
d03c22f0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c22f4:	79ea      	ldrb	r2, [r5, #7]
d03c22f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c22fa:	aa01      	add	r2, sp, #4
d03c22fc:	681b      	ldr	r3, [r3, #0]
d03c22fe:	e9cd 4400 	strd	r4, r4, [sp]
d03c2302:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d03c2304:	4798      	blx	r3
d03c2306:	b920      	cbnz	r0, d03c2312 <ui_project_ensure_dir+0x36>
d03c2308:	9800      	ldr	r0, [sp, #0]
d03c230a:	f000 0001 	and.w	r0, r0, #1
d03c230e:	b003      	add	sp, #12
d03c2310:	bd30      	pop	{r4, r5, pc}
d03c2312:	792b      	ldrb	r3, [r5, #4]
d03c2314:	796a      	ldrb	r2, [r5, #5]
d03c2316:	480c      	ldr	r0, [pc, #48]	; (d03c2348 <ui_project_ensure_dir+0x6c>)
d03c2318:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c231c:	79aa      	ldrb	r2, [r5, #6]
d03c231e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2322:	79ea      	ldrb	r2, [r5, #7]
d03c2324:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2328:	681b      	ldr	r3, [r3, #0]
d03c232a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d03c232c:	4798      	blx	r3
d03c232e:	f010 0ff7 	tst.w	r0, #247	; 0xf7
d03c2332:	d004      	beq.n	d03c233e <ui_project_ensure_dir+0x62>
d03c2334:	4805      	ldr	r0, [pc, #20]	; (d03c234c <ui_project_ensure_dir+0x70>)
d03c2336:	f7ff f859 	bl	d03c13ec <ui_set_status>
d03c233a:	4620      	mov	r0, r4
d03c233c:	e7e7      	b.n	d03c230e <ui_project_ensure_dir+0x32>
d03c233e:	2001      	movs	r0, #1
d03c2340:	e7e5      	b.n	d03c230e <ui_project_ensure_dir+0x32>
d03c2342:	bf00      	nop
d03c2344:	2001f000 	.word	0x2001f000
d03c2348:	d03cb338 	.word	0xd03cb338
d03c234c:	d03cb34b 	.word	0xd03cb34b

d03c2350 <ui_select_program_delta>:
d03c2350:	2809      	cmp	r0, #9
d03c2352:	b410      	push	{r4}
d03c2354:	d107      	bne.n	d03c2366 <ui_select_program_delta+0x16>
d03c2356:	4b0d      	ldr	r3, [pc, #52]	; (d03c238c <ui_select_program_delta+0x3c>)
d03c2358:	2203      	movs	r2, #3
d03c235a:	480d      	ldr	r0, [pc, #52]	; (d03c2390 <ui_select_program_delta+0x40>)
d03c235c:	701a      	strb	r2, [r3, #0]
d03c235e:	f85d 4b04 	ldr.w	r4, [sp], #4
d03c2362:	f7ff b843 	b.w	d03c13ec <ui_set_status>
d03c2366:	280f      	cmp	r0, #15
d03c2368:	d806      	bhi.n	d03c2378 <ui_select_program_delta+0x28>
d03c236a:	4c0a      	ldr	r4, [pc, #40]	; (d03c2394 <ui_select_program_delta+0x44>)
d03c236c:	5c22      	ldrb	r2, [r4, r0]
d03c236e:	4411      	add	r1, r2
d03c2370:	b20b      	sxth	r3, r1
d03c2372:	f383 0307 	usat	r3, #7, r3
d03c2376:	5423      	strb	r3, [r4, r0]
d03c2378:	4a07      	ldr	r2, [pc, #28]	; (d03c2398 <ui_select_program_delta+0x48>)
d03c237a:	2301      	movs	r3, #1
d03c237c:	f85d 4b04 	ldr.w	r4, [sp], #4
d03c2380:	6811      	ldr	r1, [r2, #0]
d03c2382:	fa03 f000 	lsl.w	r0, r3, r0
d03c2386:	4308      	orrs	r0, r1
d03c2388:	6010      	str	r0, [r2, #0]
d03c238a:	4770      	bx	lr
d03c238c:	d03cf2d0 	.word	0xd03cf2d0
d03c2390:	d03cb36b 	.word	0xd03cb36b
d03c2394:	d03ccd04 	.word	0xd03ccd04
d03c2398:	d03cd0dc 	.word	0xd03cd0dc

d03c239c <sid_midi_note_off_source>:
d03c239c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03c23a0:	4604      	mov	r4, r0
d03c23a2:	f7fe fb99 	bl	d03c0ad8 <sid_find_voice_source>
d03c23a6:	28ff      	cmp	r0, #255	; 0xff
d03c23a8:	4606      	mov	r6, r0
d03c23aa:	d00f      	beq.n	d03c23cc <sid_midi_note_off_source+0x30>
d03c23ac:	2c09      	cmp	r4, #9
d03c23ae:	f04f 0500 	mov.w	r5, #0
d03c23b2:	4c09      	ldr	r4, [pc, #36]	; (d03c23d8 <sid_midi_note_off_source+0x3c>)
d03c23b4:	ea4f 08c0 	mov.w	r8, r0, lsl #3
d03c23b8:	4f08      	ldr	r7, [pc, #32]	; (d03c23dc <sid_midi_note_off_source+0x40>)
d03c23ba:	d109      	bne.n	d03c23d0 <sid_midi_note_off_source+0x34>
d03c23bc:	683b      	ldr	r3, [r7, #0]
d03c23be:	f804 5036 	strb.w	r5, [r4, r6, lsl #3]
d03c23c2:	4444      	add	r4, r8
d03c23c4:	3301      	adds	r3, #1
d03c23c6:	7165      	strb	r5, [r4, #5]
d03c23c8:	80e5      	strh	r5, [r4, #6]
d03c23ca:	603b      	str	r3, [r7, #0]
d03c23cc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03c23d0:	f7fe f856 	bl	d03c0480 <sid_voice_note_off>
d03c23d4:	e7f2      	b.n	d03c23bc <sid_midi_note_off_source+0x20>
d03c23d6:	bf00      	nop
d03c23d8:	d03cd0a8 	.word	0xd03cd0a8
d03c23dc:	d03ccf38 	.word	0xd03ccf38

d03c23e0 <seq_update_transport>:
d03c23e0:	4b94      	ldr	r3, [pc, #592]	; (d03c2634 <seq_update_transport+0x254>)
d03c23e2:	4895      	ldr	r0, [pc, #596]	; (d03c2638 <seq_update_transport+0x258>)
d03c23e4:	6819      	ldr	r1, [r3, #0]
d03c23e6:	4b95      	ldr	r3, [pc, #596]	; (d03c263c <seq_update_transport+0x25c>)
d03c23e8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c23ec:	4c94      	ldr	r4, [pc, #592]	; (d03c2640 <seq_update_transport+0x260>)
d03c23ee:	b089      	sub	sp, #36	; 0x24
d03c23f0:	4e94      	ldr	r6, [pc, #592]	; (d03c2644 <seq_update_transport+0x264>)
d03c23f2:	681d      	ldr	r5, [r3, #0]
d03c23f4:	7822      	ldrb	r2, [r4, #0]
d03c23f6:	6019      	str	r1, [r3, #0]
d03c23f8:	7833      	ldrb	r3, [r6, #0]
d03c23fa:	9404      	str	r4, [sp, #16]
d03c23fc:	4313      	orrs	r3, r2
d03c23fe:	7802      	ldrb	r2, [r0, #0]
d03c2400:	9005      	str	r0, [sp, #20]
d03c2402:	4313      	orrs	r3, r2
d03c2404:	4a90      	ldr	r2, [pc, #576]	; (d03c2648 <seq_update_transport+0x268>)
d03c2406:	7817      	ldrb	r7, [r2, #0]
d03c2408:	433b      	orrs	r3, r7
d03c240a:	d008      	beq.n	d03c241e <seq_update_transport+0x3e>
d03c240c:	1b4b      	subs	r3, r1, r5
d03c240e:	4d8f      	ldr	r5, [pc, #572]	; (d03c264c <seq_update_transport+0x26c>)
d03c2410:	9206      	str	r2, [sp, #24]
d03c2412:	9303      	str	r3, [sp, #12]
d03c2414:	9b03      	ldr	r3, [sp, #12]
d03c2416:	3b01      	subs	r3, #1
d03c2418:	9303      	str	r3, [sp, #12]
d03c241a:	3301      	adds	r3, #1
d03c241c:	d102      	bne.n	d03c2424 <seq_update_transport+0x44>
d03c241e:	b009      	add	sp, #36	; 0x24
d03c2420:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c2424:	9b06      	ldr	r3, [sp, #24]
d03c2426:	781c      	ldrb	r4, [r3, #0]
d03c2428:	b16c      	cbz	r4, d03c2446 <seq_update_transport+0x66>
d03c242a:	3c01      	subs	r4, #1
d03c242c:	b2e4      	uxtb	r4, r4
d03c242e:	701c      	strb	r4, [r3, #0]
d03c2430:	b94c      	cbnz	r4, d03c2446 <seq_update_transport+0x66>
d03c2432:	4f87      	ldr	r7, [pc, #540]	; (d03c2650 <seq_update_transport+0x270>)
d03c2434:	2002      	movs	r0, #2
d03c2436:	f7ff f987 	bl	d03c1748 <sid_midi_all_notes_off_source>
d03c243a:	7839      	ldrb	r1, [r7, #0]
d03c243c:	b119      	cbz	r1, d03c2446 <seq_update_transport+0x66>
d03c243e:	200f      	movs	r0, #15
d03c2440:	f7ff faea 	bl	d03c1a18 <seq_midi_out_note_off>
d03c2444:	703c      	strb	r4, [r7, #0]
d03c2446:	9b05      	ldr	r3, [sp, #20]
d03c2448:	781b      	ldrb	r3, [r3, #0]
d03c244a:	b373      	cbz	r3, d03c24aa <seq_update_transport+0xca>
d03c244c:	4981      	ldr	r1, [pc, #516]	; (d03c2654 <seq_update_transport+0x274>)
d03c244e:	880b      	ldrh	r3, [r1, #0]
d03c2450:	b9db      	cbnz	r3, d03c248a <seq_update_transport+0xaa>
d03c2452:	4b81      	ldr	r3, [pc, #516]	; (d03c2658 <seq_update_transport+0x278>)
d03c2454:	781a      	ldrb	r2, [r3, #0]
d03c2456:	2a01      	cmp	r2, #1
d03c2458:	d81d      	bhi.n	d03c2496 <seq_update_transport+0xb6>
d03c245a:	2400      	movs	r4, #0
d03c245c:	9a05      	ldr	r2, [sp, #20]
d03c245e:	701c      	strb	r4, [r3, #0]
d03c2460:	2301      	movs	r3, #1
d03c2462:	7014      	strb	r4, [r2, #0]
d03c2464:	9a04      	ldr	r2, [sp, #16]
d03c2466:	7033      	strb	r3, [r6, #0]
d03c2468:	7013      	strb	r3, [r2, #0]
d03c246a:	4a7c      	ldr	r2, [pc, #496]	; (d03c265c <seq_update_transport+0x27c>)
d03c246c:	7013      	strb	r3, [r2, #0]
d03c246e:	4b7c      	ldr	r3, [pc, #496]	; (d03c2660 <seq_update_transport+0x280>)
d03c2470:	6818      	ldr	r0, [r3, #0]
d03c2472:	f7ff f9cd 	bl	d03c1810 <seq_playback_sync>
d03c2476:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c247a:	4621      	mov	r1, r4
d03c247c:	4879      	ldr	r0, [pc, #484]	; (d03c2664 <seq_update_transport+0x284>)
d03c247e:	f007 fa6b 	bl	d03c9958 <memset>
d03c2482:	4879      	ldr	r0, [pc, #484]	; (d03c2668 <seq_update_transport+0x288>)
d03c2484:	f7fe ffb2 	bl	d03c13ec <ui_set_status>
d03c2488:	e7c4      	b.n	d03c2414 <seq_update_transport+0x34>
d03c248a:	3b01      	subs	r3, #1
d03c248c:	b29b      	uxth	r3, r3
d03c248e:	800b      	strh	r3, [r1, #0]
d03c2490:	2b00      	cmp	r3, #0
d03c2492:	d1bf      	bne.n	d03c2414 <seq_update_transport+0x34>
d03c2494:	e7dd      	b.n	d03c2452 <seq_update_transport+0x72>
d03c2496:	3a01      	subs	r2, #1
d03c2498:	b2d2      	uxtb	r2, r2
d03c249a:	701a      	strb	r2, [r3, #0]
d03c249c:	f7fe fb76 	bl	d03c0b8c <seq_beat_ticks>
d03c24a0:	8008      	strh	r0, [r1, #0]
d03c24a2:	4610      	mov	r0, r2
d03c24a4:	f7ff fc14 	bl	d03c1cd0 <seq_metronome_click>
d03c24a8:	e7b4      	b.n	d03c2414 <seq_update_transport+0x34>
d03c24aa:	7833      	ldrb	r3, [r6, #0]
d03c24ac:	b943      	cbnz	r3, d03c24c0 <seq_update_transport+0xe0>
d03c24ae:	9b04      	ldr	r3, [sp, #16]
d03c24b0:	781b      	ldrb	r3, [r3, #0]
d03c24b2:	2b00      	cmp	r3, #0
d03c24b4:	d0ae      	beq.n	d03c2414 <seq_update_transport+0x34>
d03c24b6:	4a6a      	ldr	r2, [pc, #424]	; (d03c2660 <seq_update_transport+0x280>)
d03c24b8:	6813      	ldr	r3, [r2, #0]
d03c24ba:	3301      	adds	r3, #1
d03c24bc:	6013      	str	r3, [r2, #0]
d03c24be:	e7a9      	b.n	d03c2414 <seq_update_transport+0x34>
d03c24c0:	4b67      	ldr	r3, [pc, #412]	; (d03c2660 <seq_update_transport+0x280>)
d03c24c2:	681f      	ldr	r7, [r3, #0]
d03c24c4:	4638      	mov	r0, r7
d03c24c6:	f7ff f9a3 	bl	d03c1810 <seq_playback_sync>
d03c24ca:	2800      	cmp	r0, #0
d03c24cc:	d05c      	beq.n	d03c2588 <seq_update_transport+0x1a8>
d03c24ce:	f8df 81ac 	ldr.w	r8, [pc, #428]	; d03c267c <seq_update_transport+0x29c>
d03c24d2:	4a66      	ldr	r2, [pc, #408]	; (d03c266c <seq_update_transport+0x28c>)
d03c24d4:	f8d8 3000 	ldr.w	r3, [r8]
d03c24d8:	f8d2 9000 	ldr.w	r9, [r2]
d03c24dc:	f8d5 b000 	ldr.w	fp, [r5]
d03c24e0:	4c63      	ldr	r4, [pc, #396]	; (d03c2670 <seq_update_transport+0x290>)
d03c24e2:	f8d4 a000 	ldr.w	sl, [r4]
d03c24e6:	9307      	str	r3, [sp, #28]
d03c24e8:	459a      	cmp	sl, r3
d03c24ea:	d207      	bcs.n	d03c24fc <seq_update_transport+0x11c>
d03c24ec:	f839 101a 	ldrh.w	r1, [r9, sl, lsl #1]
d03c24f0:	4608      	mov	r0, r1
d03c24f2:	f7fe fb59 	bl	d03c0ba8 <seq_note_end_tick>
d03c24f6:	4287      	cmp	r7, r0
d03c24f8:	9b07      	ldr	r3, [sp, #28]
d03c24fa:	d04b      	beq.n	d03c2594 <seq_update_transport+0x1b4>
d03c24fc:	f8df 9178 	ldr.w	r9, [pc, #376]	; d03c2678 <seq_update_transport+0x298>
d03c2500:	46cb      	mov	fp, r9
d03c2502:	e085      	b.n	d03c2610 <seq_update_transport+0x230>
d03c2504:	682b      	ldr	r3, [r5, #0]
d03c2506:	ea4f 1804 	mov.w	r8, r4, lsl #4
d03c250a:	eb03 1104 	add.w	r1, r3, r4, lsl #4
d03c250e:	9307      	str	r3, [sp, #28]
d03c2510:	7b4a      	ldrb	r2, [r1, #13]
d03c2512:	b382      	cbz	r2, d03c2576 <seq_update_transport+0x196>
d03c2514:	4620      	mov	r0, r4
d03c2516:	f7fe fb47 	bl	d03c0ba8 <seq_note_end_tick>
d03c251a:	9b07      	ldr	r3, [sp, #28]
d03c251c:	4681      	mov	r9, r0
d03c251e:	f853 3008 	ldr.w	r3, [r3, r8]
d03c2522:	429f      	cmp	r7, r3
d03c2524:	d116      	bne.n	d03c2554 <seq_update_transport+0x174>
d03c2526:	f891 c008 	ldrb.w	ip, [r1, #8]
d03c252a:	7aca      	ldrb	r2, [r1, #11]
d03c252c:	7a8b      	ldrb	r3, [r1, #10]
d03c252e:	7a48      	ldrb	r0, [r1, #9]
d03c2530:	4661      	mov	r1, ip
d03c2532:	f8cd b000 	str.w	fp, [sp]
d03c2536:	f7ff fb45 	bl	d03c1bc4 <sid_midi_note_on_program_source>
d03c253a:	682b      	ldr	r3, [r5, #0]
d03c253c:	4443      	add	r3, r8
d03c253e:	7a99      	ldrb	r1, [r3, #10]
d03c2540:	7a58      	ldrb	r0, [r3, #9]
d03c2542:	f7ff fa43 	bl	d03c19cc <seq_midi_out_program>
d03c2546:	682b      	ldr	r3, [r5, #0]
d03c2548:	4443      	add	r3, r8
d03c254a:	7ada      	ldrb	r2, [r3, #11]
d03c254c:	7a19      	ldrb	r1, [r3, #8]
d03c254e:	7a58      	ldrb	r0, [r3, #9]
d03c2550:	f7fe fab6 	bl	d03c0ac0 <seq_midi_out_note_on>
d03c2554:	454f      	cmp	r7, r9
d03c2556:	d10e      	bne.n	d03c2576 <seq_update_transport+0x196>
d03c2558:	682b      	ldr	r3, [r5, #0]
d03c255a:	2201      	movs	r2, #1
d03c255c:	4443      	add	r3, r8
d03c255e:	7a19      	ldrb	r1, [r3, #8]
d03c2560:	7a58      	ldrb	r0, [r3, #9]
d03c2562:	f7ff ff1b 	bl	d03c239c <sid_midi_note_off_source>
d03c2566:	682b      	ldr	r3, [r5, #0]
d03c2568:	4498      	add	r8, r3
d03c256a:	f898 1008 	ldrb.w	r1, [r8, #8]
d03c256e:	f898 0009 	ldrb.w	r0, [r8, #9]
d03c2572:	f7ff fa51 	bl	d03c1a18 <seq_midi_out_note_off>
d03c2576:	3401      	adds	r4, #1
d03c2578:	f8da 3000 	ldr.w	r3, [sl]
d03c257c:	429c      	cmp	r4, r3
d03c257e:	d3c1      	bcc.n	d03c2504 <seq_update_transport+0x124>
d03c2580:	7833      	ldrb	r3, [r6, #0]
d03c2582:	2b00      	cmp	r3, #0
d03c2584:	d197      	bne.n	d03c24b6 <seq_update_transport+0xd6>
d03c2586:	e792      	b.n	d03c24ae <seq_update_transport+0xce>
d03c2588:	4604      	mov	r4, r0
d03c258a:	f8df a0f4 	ldr.w	sl, [pc, #244]	; d03c2680 <seq_update_transport+0x2a0>
d03c258e:	f04f 0b01 	mov.w	fp, #1
d03c2592:	e7f1      	b.n	d03c2578 <seq_update_transport+0x198>
d03c2594:	f10a 0201 	add.w	r2, sl, #1
d03c2598:	eb0b 1001 	add.w	r0, fp, r1, lsl #4
d03c259c:	ea4f 1a01 	mov.w	sl, r1, lsl #4
d03c25a0:	6022      	str	r2, [r4, #0]
d03c25a2:	7b42      	ldrb	r2, [r0, #13]
d03c25a4:	2a00      	cmp	r2, #0
d03c25a6:	d09c      	beq.n	d03c24e2 <seq_update_transport+0x102>
d03c25a8:	7a01      	ldrb	r1, [r0, #8]
d03c25aa:	2201      	movs	r2, #1
d03c25ac:	7a40      	ldrb	r0, [r0, #9]
d03c25ae:	f7ff fef5 	bl	d03c239c <sid_midi_note_off_source>
d03c25b2:	682b      	ldr	r3, [r5, #0]
d03c25b4:	449a      	add	sl, r3
d03c25b6:	f89a 1008 	ldrb.w	r1, [sl, #8]
d03c25ba:	f89a 0009 	ldrb.w	r0, [sl, #9]
d03c25be:	f7ff fa2b 	bl	d03c1a18 <seq_midi_out_note_off>
d03c25c2:	e786      	b.n	d03c24d2 <seq_update_transport+0xf2>
d03c25c4:	f83e 0013 	ldrh.w	r0, [lr, r3, lsl #1]
d03c25c8:	0104      	lsls	r4, r0, #4
d03c25ca:	eb0c 1000 	add.w	r0, ip, r0, lsl #4
d03c25ce:	f85c 1004 	ldr.w	r1, [ip, r4]
d03c25d2:	428f      	cmp	r7, r1
d03c25d4:	d128      	bne.n	d03c2628 <seq_update_transport+0x248>
d03c25d6:	7b41      	ldrb	r1, [r0, #13]
d03c25d8:	3301      	adds	r3, #1
d03c25da:	2201      	movs	r2, #1
d03c25dc:	b311      	cbz	r1, d03c2624 <seq_update_transport+0x244>
d03c25de:	f04f 0c01 	mov.w	ip, #1
d03c25e2:	7ac2      	ldrb	r2, [r0, #11]
d03c25e4:	7a01      	ldrb	r1, [r0, #8]
d03c25e6:	f8cb 3000 	str.w	r3, [fp]
d03c25ea:	7a83      	ldrb	r3, [r0, #10]
d03c25ec:	7a40      	ldrb	r0, [r0, #9]
d03c25ee:	f8cd c000 	str.w	ip, [sp]
d03c25f2:	f7ff fae7 	bl	d03c1bc4 <sid_midi_note_on_program_source>
d03c25f6:	682b      	ldr	r3, [r5, #0]
d03c25f8:	4423      	add	r3, r4
d03c25fa:	7a99      	ldrb	r1, [r3, #10]
d03c25fc:	7a58      	ldrb	r0, [r3, #9]
d03c25fe:	f7ff f9e5 	bl	d03c19cc <seq_midi_out_program>
d03c2602:	682b      	ldr	r3, [r5, #0]
d03c2604:	441c      	add	r4, r3
d03c2606:	7ae2      	ldrb	r2, [r4, #11]
d03c2608:	7a21      	ldrb	r1, [r4, #8]
d03c260a:	7a60      	ldrb	r0, [r4, #9]
d03c260c:	f7fe fa58 	bl	d03c0ac0 <seq_midi_out_note_on>
d03c2610:	4b18      	ldr	r3, [pc, #96]	; (d03c2674 <seq_update_transport+0x294>)
d03c2612:	2200      	movs	r2, #0
d03c2614:	f8d8 a000 	ldr.w	sl, [r8]
d03c2618:	f8d3 e000 	ldr.w	lr, [r3]
d03c261c:	f8d5 c000 	ldr.w	ip, [r5]
d03c2620:	f8d9 3000 	ldr.w	r3, [r9]
d03c2624:	4553      	cmp	r3, sl
d03c2626:	d3cd      	bcc.n	d03c25c4 <seq_update_transport+0x1e4>
d03c2628:	2a00      	cmp	r2, #0
d03c262a:	d0a9      	beq.n	d03c2580 <seq_update_transport+0x1a0>
d03c262c:	4a12      	ldr	r2, [pc, #72]	; (d03c2678 <seq_update_transport+0x298>)
d03c262e:	6013      	str	r3, [r2, #0]
d03c2630:	e7a6      	b.n	d03c2580 <seq_update_transport+0x1a0>
d03c2632:	bf00      	nop
d03c2634:	d03ccf50 	.word	0xd03ccf50
d03c2638:	d03ccf54 	.word	0xd03ccf54
d03c263c:	d03ccf64 	.word	0xd03ccf64
d03c2640:	d03cd0a5 	.word	0xd03cd0a5
d03c2644:	d03cd09c 	.word	0xd03cd09c
d03c2648:	d03ccf69 	.word	0xd03ccf69
d03c264c:	d03ccf78 	.word	0xd03ccf78
d03c2650:	d03ccf68 	.word	0xd03ccf68
d03c2654:	d03ccf56 	.word	0xd03ccf56
d03c2658:	d03ccf58 	.word	0xd03ccf58
d03c265c:	d03cd0a4 	.word	0xd03cd0a4
d03c2660:	d03cd0a0 	.word	0xd03cd0a0
d03c2664:	d03ccf8c 	.word	0xd03ccf8c
d03c2668:	d03cb38b 	.word	0xd03cb38b
d03c266c:	d03ccf84 	.word	0xd03ccf84
d03c2670:	d03cd094 	.word	0xd03cd094
d03c2674:	d03ccf88 	.word	0xd03ccf88
d03c2678:	d03cd098 	.word	0xd03cd098
d03c267c:	d03ccf7c 	.word	0xd03ccf7c
d03c2680:	d03ccf74 	.word	0xd03ccf74

d03c2684 <ui_file_read_exact.constprop.0>:
d03c2684:	2300      	movs	r3, #0
d03c2686:	b573      	push	{r0, r1, r4, r5, r6, lr}
d03c2688:	460c      	mov	r4, r1
d03c268a:	4615      	mov	r5, r2
d03c268c:	9301      	str	r3, [sp, #4]
d03c268e:	b12a      	cbz	r2, d03c269c <ui_file_read_exact.constprop.0+0x18>
d03c2690:	6813      	ldr	r3, [r2, #0]
d03c2692:	428b      	cmp	r3, r1
d03c2694:	d202      	bcs.n	d03c269c <ui_file_read_exact.constprop.0+0x18>
d03c2696:	2000      	movs	r0, #0
d03c2698:	b002      	add	sp, #8
d03c269a:	bd70      	pop	{r4, r5, r6, pc}
d03c269c:	4a10      	ldr	r2, [pc, #64]	; (d03c26e0 <ui_file_read_exact.constprop.0+0x5c>)
d03c269e:	7913      	ldrb	r3, [r2, #4]
d03c26a0:	7951      	ldrb	r1, [r2, #5]
d03c26a2:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c26a6:	7991      	ldrb	r1, [r2, #6]
d03c26a8:	79d2      	ldrb	r2, [r2, #7]
d03c26aa:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c26ae:	4601      	mov	r1, r0
d03c26b0:	2001      	movs	r0, #1
d03c26b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c26b6:	4622      	mov	r2, r4
d03c26b8:	681b      	ldr	r3, [r3, #0]
d03c26ba:	689e      	ldr	r6, [r3, #8]
d03c26bc:	ab01      	add	r3, sp, #4
d03c26be:	47b0      	blx	r6
d03c26c0:	2800      	cmp	r0, #0
d03c26c2:	d1e8      	bne.n	d03c2696 <ui_file_read_exact.constprop.0+0x12>
d03c26c4:	9b01      	ldr	r3, [sp, #4]
d03c26c6:	429c      	cmp	r4, r3
d03c26c8:	d1e5      	bne.n	d03c2696 <ui_file_read_exact.constprop.0+0x12>
d03c26ca:	b115      	cbz	r5, d03c26d2 <ui_file_read_exact.constprop.0+0x4e>
d03c26cc:	682b      	ldr	r3, [r5, #0]
d03c26ce:	1b1b      	subs	r3, r3, r4
d03c26d0:	602b      	str	r3, [r5, #0]
d03c26d2:	4620      	mov	r0, r4
d03c26d4:	2100      	movs	r1, #0
d03c26d6:	f7ff fc6d 	bl	d03c1fb4 <ui_midi_import_progress_add>
d03c26da:	2001      	movs	r0, #1
d03c26dc:	e7dc      	b.n	d03c2698 <ui_file_read_exact.constprop.0+0x14>
d03c26de:	bf00      	nop
d03c26e0:	2001f000 	.word	0x2001f000

d03c26e4 <ui_file_read_be16.constprop.0>:
d03c26e4:	b513      	push	{r0, r1, r4, lr}
d03c26e6:	2200      	movs	r2, #0
d03c26e8:	4604      	mov	r4, r0
d03c26ea:	2102      	movs	r1, #2
d03c26ec:	a801      	add	r0, sp, #4
d03c26ee:	f7ff ffc9 	bl	d03c2684 <ui_file_read_exact.constprop.0>
d03c26f2:	b138      	cbz	r0, d03c2704 <ui_file_read_be16.constprop.0+0x20>
d03c26f4:	f89d 2004 	ldrb.w	r2, [sp, #4]
d03c26f8:	2001      	movs	r0, #1
d03c26fa:	f89d 3005 	ldrb.w	r3, [sp, #5]
d03c26fe:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2702:	8023      	strh	r3, [r4, #0]
d03c2704:	b002      	add	sp, #8
d03c2706:	bd10      	pop	{r4, pc}

d03c2708 <ui_file_read_be32.constprop.0>:
d03c2708:	b513      	push	{r0, r1, r4, lr}
d03c270a:	2104      	movs	r1, #4
d03c270c:	4604      	mov	r4, r0
d03c270e:	2200      	movs	r2, #0
d03c2710:	eb0d 0001 	add.w	r0, sp, r1
d03c2714:	f7ff ffb6 	bl	d03c2684 <ui_file_read_exact.constprop.0>
d03c2718:	b118      	cbz	r0, d03c2722 <ui_file_read_be32.constprop.0+0x1a>
d03c271a:	9b01      	ldr	r3, [sp, #4]
d03c271c:	2001      	movs	r0, #1
d03c271e:	ba1b      	rev	r3, r3
d03c2720:	6023      	str	r3, [r4, #0]
d03c2722:	b002      	add	sp, #8
d03c2724:	bd10      	pop	{r4, pc}

d03c2726 <ui_file_skip.constprop.0>:
d03c2726:	b570      	push	{r4, r5, r6, lr}
d03c2728:	4604      	mov	r4, r0
d03c272a:	b088      	sub	sp, #32
d03c272c:	460d      	mov	r5, r1
d03c272e:	b914      	cbnz	r4, d03c2736 <ui_file_skip.constprop.0+0x10>
d03c2730:	2001      	movs	r0, #1
d03c2732:	b008      	add	sp, #32
d03c2734:	bd70      	pop	{r4, r5, r6, pc}
d03c2736:	2c20      	cmp	r4, #32
d03c2738:	4626      	mov	r6, r4
d03c273a:	462a      	mov	r2, r5
d03c273c:	4668      	mov	r0, sp
d03c273e:	bf28      	it	cs
d03c2740:	2620      	movcs	r6, #32
d03c2742:	4631      	mov	r1, r6
d03c2744:	f7ff ff9e 	bl	d03c2684 <ui_file_read_exact.constprop.0>
d03c2748:	2800      	cmp	r0, #0
d03c274a:	d0f2      	beq.n	d03c2732 <ui_file_skip.constprop.0+0xc>
d03c274c:	1ba4      	subs	r4, r4, r6
d03c274e:	e7ee      	b.n	d03c272e <ui_file_skip.constprop.0+0x8>

d03c2750 <ui_file_write_exact.constprop.0>:
d03c2750:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d03c2752:	4614      	mov	r4, r2
d03c2754:	4a10      	ldr	r2, [pc, #64]	; (d03c2798 <ui_file_write_exact.constprop.0+0x48>)
d03c2756:	460d      	mov	r5, r1
d03c2758:	2600      	movs	r6, #0
d03c275a:	7913      	ldrb	r3, [r2, #4]
d03c275c:	7951      	ldrb	r1, [r2, #5]
d03c275e:	9601      	str	r6, [sp, #4]
d03c2760:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c2764:	7991      	ldrb	r1, [r2, #6]
d03c2766:	79d2      	ldrb	r2, [r2, #7]
d03c2768:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c276c:	4601      	mov	r1, r0
d03c276e:	2001      	movs	r0, #1
d03c2770:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2774:	462a      	mov	r2, r5
d03c2776:	681b      	ldr	r3, [r3, #0]
d03c2778:	691f      	ldr	r7, [r3, #16]
d03c277a:	ab01      	add	r3, sp, #4
d03c277c:	47b8      	blx	r7
d03c277e:	b940      	cbnz	r0, d03c2792 <ui_file_write_exact.constprop.0+0x42>
d03c2780:	9b01      	ldr	r3, [sp, #4]
d03c2782:	429d      	cmp	r5, r3
d03c2784:	d106      	bne.n	d03c2794 <ui_file_write_exact.constprop.0+0x44>
d03c2786:	b114      	cbz	r4, d03c278e <ui_file_write_exact.constprop.0+0x3e>
d03c2788:	6821      	ldr	r1, [r4, #0]
d03c278a:	4429      	add	r1, r5
d03c278c:	6021      	str	r1, [r4, #0]
d03c278e:	2001      	movs	r0, #1
d03c2790:	e000      	b.n	d03c2794 <ui_file_write_exact.constprop.0+0x44>
d03c2792:	4630      	mov	r0, r6
d03c2794:	b003      	add	sp, #12
d03c2796:	bdf0      	pop	{r4, r5, r6, r7, pc}
d03c2798:	2001f000 	.word	0x2001f000

d03c279c <ui_file_write_u8.constprop.0>:
d03c279c:	b507      	push	{r0, r1, r2, lr}
d03c279e:	460a      	mov	r2, r1
d03c27a0:	2101      	movs	r1, #1
d03c27a2:	f88d 0007 	strb.w	r0, [sp, #7]
d03c27a6:	f10d 0007 	add.w	r0, sp, #7
d03c27aa:	f7ff ffd1 	bl	d03c2750 <ui_file_write_exact.constprop.0>
d03c27ae:	b003      	add	sp, #12
d03c27b0:	f85d fb04 	ldr.w	pc, [sp], #4

d03c27b4 <ui_midi_write_varlen.constprop.0>:
d03c27b4:	f000 037f 	and.w	r3, r0, #127	; 0x7f
d03c27b8:	b573      	push	{r0, r1, r4, r5, r6, lr}
d03c27ba:	460e      	mov	r6, r1
d03c27bc:	f88d 3000 	strb.w	r3, [sp]
d03c27c0:	2301      	movs	r3, #1
d03c27c2:	09c0      	lsrs	r0, r0, #7
d03c27c4:	b2dc      	uxtb	r4, r3
d03c27c6:	d002      	beq.n	d03c27ce <ui_midi_write_varlen.constprop.0+0x1a>
d03c27c8:	2b05      	cmp	r3, #5
d03c27ca:	d10f      	bne.n	d03c27ec <ui_midi_write_varlen.constprop.0+0x38>
d03c27cc:	461c      	mov	r4, r3
d03c27ce:	1e65      	subs	r5, r4, #1
d03c27d0:	446d      	add	r5, sp
d03c27d2:	3c01      	subs	r4, #1
d03c27d4:	4631      	mov	r1, r6
d03c27d6:	f815 0901 	ldrb.w	r0, [r5], #-1
d03c27da:	b2e4      	uxtb	r4, r4
d03c27dc:	f7ff ffde 	bl	d03c279c <ui_file_write_u8.constprop.0>
d03c27e0:	b110      	cbz	r0, d03c27e8 <ui_midi_write_varlen.constprop.0+0x34>
d03c27e2:	2c00      	cmp	r4, #0
d03c27e4:	d1f5      	bne.n	d03c27d2 <ui_midi_write_varlen.constprop.0+0x1e>
d03c27e6:	2001      	movs	r0, #1
d03c27e8:	b002      	add	sp, #8
d03c27ea:	bd70      	pop	{r4, r5, r6, pc}
d03c27ec:	f060 027f 	orn	r2, r0, #127	; 0x7f
d03c27f0:	f80d 2003 	strb.w	r2, [sp, r3]
d03c27f4:	3301      	adds	r3, #1
d03c27f6:	e7e4      	b.n	d03c27c2 <ui_midi_write_varlen.constprop.0+0xe>

d03c27f8 <ui_midi_write_channel_event.constprop.0>:
d03c27f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03c27fa:	9c06      	ldr	r4, [sp, #24]
d03c27fc:	460f      	mov	r7, r1
d03c27fe:	4616      	mov	r6, r2
d03c2800:	461d      	mov	r5, r3
d03c2802:	4621      	mov	r1, r4
d03c2804:	f7ff ffd6 	bl	d03c27b4 <ui_midi_write_varlen.constprop.0>
d03c2808:	b908      	cbnz	r0, d03c280e <ui_midi_write_channel_event.constprop.0+0x16>
d03c280a:	2000      	movs	r0, #0
d03c280c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c280e:	4621      	mov	r1, r4
d03c2810:	4638      	mov	r0, r7
d03c2812:	f7ff ffc3 	bl	d03c279c <ui_file_write_u8.constprop.0>
d03c2816:	2800      	cmp	r0, #0
d03c2818:	d0f7      	beq.n	d03c280a <ui_midi_write_channel_event.constprop.0+0x12>
d03c281a:	4621      	mov	r1, r4
d03c281c:	f006 007f 	and.w	r0, r6, #127	; 0x7f
d03c2820:	f7ff ffbc 	bl	d03c279c <ui_file_write_u8.constprop.0>
d03c2824:	2800      	cmp	r0, #0
d03c2826:	d0f0      	beq.n	d03c280a <ui_midi_write_channel_event.constprop.0+0x12>
d03c2828:	4621      	mov	r1, r4
d03c282a:	f005 007f 	and.w	r0, r5, #127	; 0x7f
d03c282e:	f7ff ffb5 	bl	d03c279c <ui_file_write_u8.constprop.0>
d03c2832:	3800      	subs	r0, #0
d03c2834:	bf18      	it	ne
d03c2836:	2001      	movne	r0, #1
d03c2838:	e7e8      	b.n	d03c280c <ui_midi_write_channel_event.constprop.0+0x14>

d03c283a <ui_file_write_be32.constprop.0>:
d03c283a:	b507      	push	{r0, r1, r2, lr}
d03c283c:	460a      	mov	r2, r1
d03c283e:	ba00      	rev	r0, r0
d03c2840:	2104      	movs	r1, #4
d03c2842:	9001      	str	r0, [sp, #4]
d03c2844:	eb0d 0001 	add.w	r0, sp, r1
d03c2848:	f7ff ff82 	bl	d03c2750 <ui_file_write_exact.constprop.0>
d03c284c:	b003      	add	sp, #12
d03c284e:	f85d fb04 	ldr.w	pc, [sp], #4
	...

d03c2854 <ui_song_save_path.constprop.0>:
d03c2854:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d03c2858:	f8df 8164 	ldr.w	r8, [pc, #356]	; d03c29c0 <ui_song_save_path.constprop.0+0x16c>
d03c285c:	f04f 0900 	mov.w	r9, #0
d03c2860:	f8d8 5000 	ldr.w	r5, [r8]
d03c2864:	f8cd 9000 	str.w	r9, [sp]
d03c2868:	b91d      	cbnz	r5, d03c2872 <ui_song_save_path.constprop.0+0x1e>
d03c286a:	4847      	ldr	r0, [pc, #284]	; (d03c2988 <ui_song_save_path.constprop.0+0x134>)
d03c286c:	f7fe fdbe 	bl	d03c13ec <ui_set_status>
d03c2870:	e031      	b.n	d03c28d6 <ui_song_save_path.constprop.0+0x82>
d03c2872:	2220      	movs	r2, #32
d03c2874:	4649      	mov	r1, r9
d03c2876:	1d28      	adds	r0, r5, #4
d03c2878:	4f44      	ldr	r7, [pc, #272]	; (d03c298c <ui_song_save_path.constprop.0+0x138>)
d03c287a:	f007 f86d 	bl	d03c9958 <memset>
d03c287e:	2207      	movs	r2, #7
d03c2880:	4943      	ldr	r1, [pc, #268]	; (d03c2990 <ui_song_save_path.constprop.0+0x13c>)
d03c2882:	4628      	mov	r0, r5
d03c2884:	f007 f85a 	bl	d03c993c <memcpy>
d03c2888:	4b42      	ldr	r3, [pc, #264]	; (d03c2994 <ui_song_save_path.constprop.0+0x140>)
d03c288a:	4e43      	ldr	r6, [pc, #268]	; (d03c2998 <ui_song_save_path.constprop.0+0x144>)
d03c288c:	2001      	movs	r0, #1
d03c288e:	60ab      	str	r3, [r5, #8]
d03c2890:	4b42      	ldr	r3, [pc, #264]	; (d03c299c <ui_song_save_path.constprop.0+0x148>)
d03c2892:	4943      	ldr	r1, [pc, #268]	; (d03c29a0 <ui_song_save_path.constprop.0+0x14c>)
d03c2894:	881b      	ldrh	r3, [r3, #0]
d03c2896:	81ab      	strh	r3, [r5, #12]
d03c2898:	683b      	ldr	r3, [r7, #0]
d03c289a:	612b      	str	r3, [r5, #16]
d03c289c:	4b41      	ldr	r3, [pc, #260]	; (d03c29a4 <ui_song_save_path.constprop.0+0x150>)
d03c289e:	681b      	ldr	r3, [r3, #0]
d03c28a0:	616b      	str	r3, [r5, #20]
d03c28a2:	4b41      	ldr	r3, [pc, #260]	; (d03c29a8 <ui_song_save_path.constprop.0+0x154>)
d03c28a4:	781b      	ldrb	r3, [r3, #0]
d03c28a6:	762b      	strb	r3, [r5, #24]
d03c28a8:	4b40      	ldr	r3, [pc, #256]	; (d03c29ac <ui_song_save_path.constprop.0+0x158>)
d03c28aa:	781b      	ldrb	r3, [r3, #0]
d03c28ac:	766b      	strb	r3, [r5, #25]
d03c28ae:	7933      	ldrb	r3, [r6, #4]
d03c28b0:	7972      	ldrb	r2, [r6, #5]
d03c28b2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c28b6:	79b2      	ldrb	r2, [r6, #6]
d03c28b8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c28bc:	79f2      	ldrb	r2, [r6, #7]
d03c28be:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c28c2:	220a      	movs	r2, #10
d03c28c4:	681b      	ldr	r3, [r3, #0]
d03c28c6:	681b      	ldr	r3, [r3, #0]
d03c28c8:	4798      	blx	r3
d03c28ca:	4605      	mov	r5, r0
d03c28cc:	b138      	cbz	r0, d03c28de <ui_song_save_path.constprop.0+0x8a>
d03c28ce:	464d      	mov	r5, r9
d03c28d0:	4837      	ldr	r0, [pc, #220]	; (d03c29b0 <ui_song_save_path.constprop.0+0x15c>)
d03c28d2:	f7fe fd8b 	bl	d03c13ec <ui_set_status>
d03c28d6:	4628      	mov	r0, r5
d03c28d8:	b003      	add	sp, #12
d03c28da:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d03c28de:	7933      	ldrb	r3, [r6, #4]
d03c28e0:	2001      	movs	r0, #1
d03c28e2:	7972      	ldrb	r2, [r6, #5]
d03c28e4:	f8d8 1000 	ldr.w	r1, [r8]
d03c28e8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c28ec:	79b2      	ldrb	r2, [r6, #6]
d03c28ee:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c28f2:	79f2      	ldrb	r2, [r6, #7]
d03c28f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c28f8:	2224      	movs	r2, #36	; 0x24
d03c28fa:	681b      	ldr	r3, [r3, #0]
d03c28fc:	691c      	ldr	r4, [r3, #16]
d03c28fe:	466b      	mov	r3, sp
d03c2900:	47a0      	blx	r4
d03c2902:	4604      	mov	r4, r0
d03c2904:	bb18      	cbnz	r0, d03c294e <ui_song_save_path.constprop.0+0xfa>
d03c2906:	9b00      	ldr	r3, [sp, #0]
d03c2908:	2b24      	cmp	r3, #36	; 0x24
d03c290a:	d120      	bne.n	d03c294e <ui_song_save_path.constprop.0+0xfa>
d03c290c:	683a      	ldr	r2, [r7, #0]
d03c290e:	b1f2      	cbz	r2, d03c294e <ui_song_save_path.constprop.0+0xfa>
d03c2910:	7933      	ldrb	r3, [r6, #4]
d03c2912:	0112      	lsls	r2, r2, #4
d03c2914:	7971      	ldrb	r1, [r6, #5]
d03c2916:	9001      	str	r0, [sp, #4]
d03c2918:	2001      	movs	r0, #1
d03c291a:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c291e:	79b1      	ldrb	r1, [r6, #6]
d03c2920:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c2924:	79f1      	ldrb	r1, [r6, #7]
d03c2926:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d03c292a:	4922      	ldr	r1, [pc, #136]	; (d03c29b4 <ui_song_save_path.constprop.0+0x160>)
d03c292c:	681b      	ldr	r3, [r3, #0]
d03c292e:	6809      	ldr	r1, [r1, #0]
d03c2930:	691c      	ldr	r4, [r3, #16]
d03c2932:	ab01      	add	r3, sp, #4
d03c2934:	47a0      	blx	r4
d03c2936:	4604      	mov	r4, r0
d03c2938:	e9dd 3200 	ldrd	r3, r2, [sp]
d03c293c:	4413      	add	r3, r2
d03c293e:	9300      	str	r3, [sp, #0]
d03c2940:	b928      	cbnz	r0, d03c294e <ui_song_save_path.constprop.0+0xfa>
d03c2942:	683b      	ldr	r3, [r7, #0]
d03c2944:	ebb2 1f03 	cmp.w	r2, r3, lsl #4
d03c2948:	bf14      	ite	ne
d03c294a:	2401      	movne	r4, #1
d03c294c:	2400      	moveq	r4, #0
d03c294e:	7933      	ldrb	r3, [r6, #4]
d03c2950:	2001      	movs	r0, #1
d03c2952:	7972      	ldrb	r2, [r6, #5]
d03c2954:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2958:	79b2      	ldrb	r2, [r6, #6]
d03c295a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c295e:	79f2      	ldrb	r2, [r6, #7]
d03c2960:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2964:	681b      	ldr	r3, [r3, #0]
d03c2966:	68db      	ldr	r3, [r3, #12]
d03c2968:	4798      	blx	r3
d03c296a:	b92c      	cbnz	r4, d03c2978 <ui_song_save_path.constprop.0+0x124>
d03c296c:	683b      	ldr	r3, [r7, #0]
d03c296e:	9a00      	ldr	r2, [sp, #0]
d03c2970:	011b      	lsls	r3, r3, #4
d03c2972:	3324      	adds	r3, #36	; 0x24
d03c2974:	4293      	cmp	r3, r2
d03c2976:	d001      	beq.n	d03c297c <ui_song_save_path.constprop.0+0x128>
d03c2978:	480f      	ldr	r0, [pc, #60]	; (d03c29b8 <ui_song_save_path.constprop.0+0x164>)
d03c297a:	e777      	b.n	d03c286c <ui_song_save_path.constprop.0+0x18>
d03c297c:	480f      	ldr	r0, [pc, #60]	; (d03c29bc <ui_song_save_path.constprop.0+0x168>)
d03c297e:	2501      	movs	r5, #1
d03c2980:	f7fe fd34 	bl	d03c13ec <ui_set_status>
d03c2984:	e7a7      	b.n	d03c28d6 <ui_song_save_path.constprop.0+0x82>
d03c2986:	bf00      	nop
d03c2988:	d03cb395 	.word	0xd03cb395
d03c298c:	d03ccf74 	.word	0xd03ccf74
d03c2990:	d03cb3ae 	.word	0xd03cb3ae
d03c2994:	00240001 	.word	0x00240001
d03c2998:	2001f000 	.word	0x2001f000
d03c299c:	d03ccf4c 	.word	0xd03ccf4c
d03c29a0:	d03cf2d1 	.word	0xd03cf2d1
d03c29a4:	d03cd0a0 	.word	0xd03cd0a0
d03c29a8:	d03cd0a6 	.word	0xd03cd0a6
d03c29ac:	d03cd0a7 	.word	0xd03cd0a7
d03c29b0:	d03cb3b6 	.word	0xd03cb3b6
d03c29b4:	d03ccf78 	.word	0xd03ccf78
d03c29b8:	d03cb3cc 	.word	0xd03cb3cc
d03c29bc:	d03cb3e3 	.word	0xd03cb3e3
d03c29c0:	d03cf374 	.word	0xd03cf374

d03c29c4 <ui_project_save_path.constprop.0>:
d03c29c4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c29c8:	4e59      	ldr	r6, [pc, #356]	; (d03c2b30 <ui_project_save_path.constprop.0+0x16c>)
d03c29ca:	b085      	sub	sp, #20
d03c29cc:	2700      	movs	r7, #0
d03c29ce:	6834      	ldr	r4, [r6, #0]
d03c29d0:	9703      	str	r7, [sp, #12]
d03c29d2:	b91c      	cbnz	r4, d03c29dc <ui_project_save_path.constprop.0+0x18>
d03c29d4:	4857      	ldr	r0, [pc, #348]	; (d03c2b34 <ui_project_save_path.constprop.0+0x170>)
d03c29d6:	f7fe fd09 	bl	d03c13ec <ui_set_status>
d03c29da:	e075      	b.n	d03c2ac8 <ui_project_save_path.constprop.0+0x104>
d03c29dc:	f24c 05c2 	movw	r5, #49346	; 0xc0c2
d03c29e0:	4639      	mov	r1, r7
d03c29e2:	4620      	mov	r0, r4
d03c29e4:	f104 0942 	add.w	r9, r4, #66	; 0x42
d03c29e8:	462a      	mov	r2, r5
d03c29ea:	f8df 8180 	ldr.w	r8, [pc, #384]	; d03c2b6c <ui_project_save_path.constprop.0+0x1a8>
d03c29ee:	f006 ffb3 	bl	d03c9958 <memset>
d03c29f2:	2207      	movs	r2, #7
d03c29f4:	4950      	ldr	r1, [pc, #320]	; (d03c2b38 <ui_project_save_path.constprop.0+0x174>)
d03c29f6:	4620      	mov	r0, r4
d03c29f8:	f006 ffa0 	bl	d03c993c <memcpy>
d03c29fc:	2301      	movs	r3, #1
d03c29fe:	2210      	movs	r2, #16
d03c2a00:	494e      	ldr	r1, [pc, #312]	; (d03c2b3c <ui_project_save_path.constprop.0+0x178>)
d03c2a02:	8123      	strh	r3, [r4, #8]
d03c2a04:	f104 000c 	add.w	r0, r4, #12
d03c2a08:	8165      	strh	r5, [r4, #10]
d03c2a0a:	46ba      	mov	sl, r7
d03c2a0c:	f006 ff96 	bl	d03c993c <memcpy>
d03c2a10:	2210      	movs	r2, #16
d03c2a12:	494b      	ldr	r1, [pc, #300]	; (d03c2b40 <ui_project_save_path.constprop.0+0x17c>)
d03c2a14:	f104 001c 	add.w	r0, r4, #28
d03c2a18:	f006 ff90 	bl	d03c993c <memcpy>
d03c2a1c:	f104 002c 	add.w	r0, r4, #44	; 0x2c
d03c2a20:	2210      	movs	r2, #16
d03c2a22:	4948      	ldr	r1, [pc, #288]	; (d03c2b44 <ui_project_save_path.constprop.0+0x180>)
d03c2a24:	f006 ff8a 	bl	d03c993c <memcpy>
d03c2a28:	4b47      	ldr	r3, [pc, #284]	; (d03c2b48 <ui_project_save_path.constprop.0+0x184>)
d03c2a2a:	34c2      	adds	r4, #194	; 0xc2
d03c2a2c:	881b      	ldrh	r3, [r3, #0]
d03c2a2e:	f824 3c86 	strh.w	r3, [r4, #-134]
d03c2a32:	4b46      	ldr	r3, [pc, #280]	; (d03c2b4c <ui_project_save_path.constprop.0+0x188>)
d03c2a34:	881b      	ldrh	r3, [r3, #0]
d03c2a36:	f824 3c84 	strh.w	r3, [r4, #-132]
d03c2a3a:	4b45      	ldr	r3, [pc, #276]	; (d03c2b50 <ui_project_save_path.constprop.0+0x18c>)
d03c2a3c:	781b      	ldrb	r3, [r3, #0]
d03c2a3e:	f804 3c82 	strb.w	r3, [r4, #-130]
d03c2a42:	4b44      	ldr	r3, [pc, #272]	; (d03c2b54 <ui_project_save_path.constprop.0+0x190>)
d03c2a44:	781b      	ldrb	r3, [r3, #0]
d03c2a46:	f804 3c81 	strb.w	r3, [r4, #-129]
d03c2a4a:	f858 bb04 	ldr.w	fp, [r8], #4
d03c2a4e:	b2f8      	uxtb	r0, r7
d03c2a50:	f7fe fa1c 	bl	d03c0e8c <vm_program_length>
d03c2a54:	f1bb 0f00 	cmp.w	fp, #0
d03c2a58:	d03a      	beq.n	d03c2ad0 <ui_project_save_path.constprop.0+0x10c>
d03c2a5a:	2800      	cmp	r0, #0
d03c2a5c:	d038      	beq.n	d03c2ad0 <ui_project_save_path.constprop.0+0x10c>
d03c2a5e:	2860      	cmp	r0, #96	; 0x60
d03c2a60:	bf28      	it	cs
d03c2a62:	2060      	movcs	r0, #96	; 0x60
d03c2a64:	b2c5      	uxtb	r5, r0
d03c2a66:	f809 5b01 	strb.w	r5, [r9], #1
d03c2a6a:	f1bb 0f00 	cmp.w	fp, #0
d03c2a6e:	d00d      	beq.n	d03c2a8c <ui_project_save_path.constprop.0+0xc8>
d03c2a70:	2300      	movs	r3, #0
d03c2a72:	2204      	movs	r2, #4
d03c2a74:	eb0b 0183 	add.w	r1, fp, r3, lsl #2
d03c2a78:	eb04 0083 	add.w	r0, r4, r3, lsl #2
d03c2a7c:	9301      	str	r3, [sp, #4]
d03c2a7e:	f006 ff5d 	bl	d03c993c <memcpy>
d03c2a82:	9b01      	ldr	r3, [sp, #4]
d03c2a84:	3301      	adds	r3, #1
d03c2a86:	b2da      	uxtb	r2, r3
d03c2a88:	4295      	cmp	r5, r2
d03c2a8a:	d8f2      	bhi.n	d03c2a72 <ui_project_save_path.constprop.0+0xae>
d03c2a8c:	3701      	adds	r7, #1
d03c2a8e:	f884 a17c 	strb.w	sl, [r4, #380]	; 0x17c
d03c2a92:	f504 74c0 	add.w	r4, r4, #384	; 0x180
d03c2a96:	2f80      	cmp	r7, #128	; 0x80
d03c2a98:	d1d7      	bne.n	d03c2a4a <ui_project_save_path.constprop.0+0x86>
d03c2a9a:	4d2f      	ldr	r5, [pc, #188]	; (d03c2b58 <ui_project_save_path.constprop.0+0x194>)
d03c2a9c:	2001      	movs	r0, #1
d03c2a9e:	492f      	ldr	r1, [pc, #188]	; (d03c2b5c <ui_project_save_path.constprop.0+0x198>)
d03c2aa0:	792b      	ldrb	r3, [r5, #4]
d03c2aa2:	796a      	ldrb	r2, [r5, #5]
d03c2aa4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2aa8:	79aa      	ldrb	r2, [r5, #6]
d03c2aaa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2aae:	79ea      	ldrb	r2, [r5, #7]
d03c2ab0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2ab4:	220a      	movs	r2, #10
d03c2ab6:	681b      	ldr	r3, [r3, #0]
d03c2ab8:	681b      	ldr	r3, [r3, #0]
d03c2aba:	4798      	blx	r3
d03c2abc:	4604      	mov	r4, r0
d03c2abe:	b148      	cbz	r0, d03c2ad4 <ui_project_save_path.constprop.0+0x110>
d03c2ac0:	2400      	movs	r4, #0
d03c2ac2:	4827      	ldr	r0, [pc, #156]	; (d03c2b60 <ui_project_save_path.constprop.0+0x19c>)
d03c2ac4:	f7fe fc92 	bl	d03c13ec <ui_set_status>
d03c2ac8:	4620      	mov	r0, r4
d03c2aca:	b005      	add	sp, #20
d03c2acc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c2ad0:	2560      	movs	r5, #96	; 0x60
d03c2ad2:	e7c8      	b.n	d03c2a66 <ui_project_save_path.constprop.0+0xa2>
d03c2ad4:	792b      	ldrb	r3, [r5, #4]
d03c2ad6:	2001      	movs	r0, #1
d03c2ad8:	796a      	ldrb	r2, [r5, #5]
d03c2ada:	6831      	ldr	r1, [r6, #0]
d03c2adc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2ae0:	79aa      	ldrb	r2, [r5, #6]
d03c2ae2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2ae6:	79ea      	ldrb	r2, [r5, #7]
d03c2ae8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2aec:	f24c 02c2 	movw	r2, #49346	; 0xc0c2
d03c2af0:	681b      	ldr	r3, [r3, #0]
d03c2af2:	691f      	ldr	r7, [r3, #16]
d03c2af4:	ab03      	add	r3, sp, #12
d03c2af6:	47b8      	blx	r7
d03c2af8:	792b      	ldrb	r3, [r5, #4]
d03c2afa:	796a      	ldrb	r2, [r5, #5]
d03c2afc:	4606      	mov	r6, r0
d03c2afe:	2001      	movs	r0, #1
d03c2b00:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2b04:	79aa      	ldrb	r2, [r5, #6]
d03c2b06:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2b0a:	79ea      	ldrb	r2, [r5, #7]
d03c2b0c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2b10:	681b      	ldr	r3, [r3, #0]
d03c2b12:	68db      	ldr	r3, [r3, #12]
d03c2b14:	4798      	blx	r3
d03c2b16:	b926      	cbnz	r6, d03c2b22 <ui_project_save_path.constprop.0+0x15e>
d03c2b18:	9a03      	ldr	r2, [sp, #12]
d03c2b1a:	f24c 03c2 	movw	r3, #49346	; 0xc0c2
d03c2b1e:	429a      	cmp	r2, r3
d03c2b20:	d001      	beq.n	d03c2b26 <ui_project_save_path.constprop.0+0x162>
d03c2b22:	4810      	ldr	r0, [pc, #64]	; (d03c2b64 <ui_project_save_path.constprop.0+0x1a0>)
d03c2b24:	e757      	b.n	d03c29d6 <ui_project_save_path.constprop.0+0x12>
d03c2b26:	4810      	ldr	r0, [pc, #64]	; (d03c2b68 <ui_project_save_path.constprop.0+0x1a4>)
d03c2b28:	2401      	movs	r4, #1
d03c2b2a:	f7fe fc5f 	bl	d03c13ec <ui_set_status>
d03c2b2e:	e7cb      	b.n	d03c2ac8 <ui_project_save_path.constprop.0+0x104>
d03c2b30:	d03cf340 	.word	0xd03cf340
d03c2b34:	d03cb3ee 	.word	0xd03cb3ee
d03c2b38:	d03cb40a 	.word	0xd03cb40a
d03c2b3c:	d03ccd04 	.word	0xd03ccd04
d03c2b40:	d03ccd14 	.word	0xd03ccd14
d03c2b44:	d03cccf4 	.word	0xd03cccf4
d03c2b48:	d03ccf2e 	.word	0xd03ccf2e
d03c2b4c:	d03ccd2a 	.word	0xd03ccd2a
d03c2b50:	d03ccd28 	.word	0xd03ccd28
d03c2b54:	d03cf36a 	.word	0xd03cf36a
d03c2b58:	2001f000 	.word	0x2001f000
d03c2b5c:	d03cf2d1 	.word	0xd03cf2d1
d03c2b60:	d03cb412 	.word	0xd03cb412
d03c2b64:	d03cb42b 	.word	0xd03cb42b
d03c2b68:	d03cb445 	.word	0xd03cb445
d03c2b6c:	d03cc608 	.word	0xd03cc608

d03c2b70 <ui_program_save_path.constprop.0>:
d03c2b70:	4b4d      	ldr	r3, [pc, #308]	; (d03c2ca8 <ui_program_save_path.constprop.0+0x138>)
d03c2b72:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d03c2b76:	4a4d      	ldr	r2, [pc, #308]	; (d03c2cac <ui_program_save_path.constprop.0+0x13c>)
d03c2b78:	781b      	ldrb	r3, [r3, #0]
d03c2b7a:	5cd4      	ldrb	r4, [r2, r3]
d03c2b7c:	2300      	movs	r3, #0
d03c2b7e:	9301      	str	r3, [sp, #4]
d03c2b80:	4b4b      	ldr	r3, [pc, #300]	; (d03c2cb0 <ui_program_save_path.constprop.0+0x140>)
d03c2b82:	781b      	ldrb	r3, [r3, #0]
d03c2b84:	2bff      	cmp	r3, #255	; 0xff
d03c2b86:	d006      	beq.n	d03c2b96 <ui_program_save_path.constprop.0+0x26>
d03c2b88:	4a4a      	ldr	r2, [pc, #296]	; (d03c2cb4 <ui_program_save_path.constprop.0+0x144>)
d03c2b8a:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
d03c2b8e:	4a4a      	ldr	r2, [pc, #296]	; (d03c2cb8 <ui_program_save_path.constprop.0+0x148>)
d03c2b90:	4291      	cmp	r1, r2
d03c2b92:	bf08      	it	eq
d03c2b94:	461c      	moveq	r4, r3
d03c2b96:	0623      	lsls	r3, r4, #24
d03c2b98:	d507      	bpl.n	d03c2baa <ui_program_save_path.constprop.0+0x3a>
d03c2b9a:	4848      	ldr	r0, [pc, #288]	; (d03c2cbc <ui_program_save_path.constprop.0+0x14c>)
d03c2b9c:	2500      	movs	r5, #0
d03c2b9e:	f7fe fc25 	bl	d03c13ec <ui_set_status>
d03c2ba2:	4628      	mov	r0, r5
d03c2ba4:	b003      	add	sp, #12
d03c2ba6:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d03c2baa:	4e45      	ldr	r6, [pc, #276]	; (d03c2cc0 <ui_program_save_path.constprop.0+0x150>)
d03c2bac:	6835      	ldr	r5, [r6, #0]
d03c2bae:	b91d      	cbnz	r5, d03c2bb8 <ui_program_save_path.constprop.0+0x48>
d03c2bb0:	4844      	ldr	r0, [pc, #272]	; (d03c2cc4 <ui_program_save_path.constprop.0+0x154>)
d03c2bb2:	f7fe fc1b 	bl	d03c13ec <ui_set_status>
d03c2bb6:	e7f4      	b.n	d03c2ba2 <ui_program_save_path.constprop.0+0x32>
d03c2bb8:	f44f 77c7 	mov.w	r7, #398	; 0x18e
d03c2bbc:	2100      	movs	r1, #0
d03c2bbe:	4628      	mov	r0, r5
d03c2bc0:	463a      	mov	r2, r7
d03c2bc2:	f006 fec9 	bl	d03c9958 <memset>
d03c2bc6:	2207      	movs	r2, #7
d03c2bc8:	493f      	ldr	r1, [pc, #252]	; (d03c2cc8 <ui_program_save_path.constprop.0+0x158>)
d03c2bca:	4628      	mov	r0, r5
d03c2bcc:	f006 feb6 	bl	d03c993c <memcpy>
d03c2bd0:	2301      	movs	r3, #1
d03c2bd2:	732c      	strb	r4, [r5, #12]
d03c2bd4:	4620      	mov	r0, r4
d03c2bd6:	812b      	strh	r3, [r5, #8]
d03c2bd8:	4b36      	ldr	r3, [pc, #216]	; (d03c2cb4 <ui_program_save_path.constprop.0+0x144>)
d03c2bda:	816f      	strh	r7, [r5, #10]
d03c2bdc:	f853 8024 	ldr.w	r8, [r3, r4, lsl #2]
d03c2be0:	f7fe f954 	bl	d03c0e8c <vm_program_length>
d03c2be4:	f1b8 0f00 	cmp.w	r8, #0
d03c2be8:	d02e      	beq.n	d03c2c48 <ui_program_save_path.constprop.0+0xd8>
d03c2bea:	b368      	cbz	r0, d03c2c48 <ui_program_save_path.constprop.0+0xd8>
d03c2bec:	2860      	cmp	r0, #96	; 0x60
d03c2bee:	bf28      	it	cs
d03c2bf0:	2060      	movcs	r0, #96	; 0x60
d03c2bf2:	b2c4      	uxtb	r4, r0
d03c2bf4:	736c      	strb	r4, [r5, #13]
d03c2bf6:	f1b8 0f00 	cmp.w	r8, #0
d03c2bfa:	d00d      	beq.n	d03c2c18 <ui_program_save_path.constprop.0+0xa8>
d03c2bfc:	2700      	movs	r7, #0
d03c2bfe:	f105 090e 	add.w	r9, r5, #14
d03c2c02:	eb08 0187 	add.w	r1, r8, r7, lsl #2
d03c2c06:	2204      	movs	r2, #4
d03c2c08:	eb09 0087 	add.w	r0, r9, r7, lsl #2
d03c2c0c:	3701      	adds	r7, #1
d03c2c0e:	f006 fe95 	bl	d03c993c <memcpy>
d03c2c12:	b2fb      	uxtb	r3, r7
d03c2c14:	429c      	cmp	r4, r3
d03c2c16:	d8f4      	bhi.n	d03c2c02 <ui_program_save_path.constprop.0+0x92>
d03c2c18:	4c2c      	ldr	r4, [pc, #176]	; (d03c2ccc <ui_program_save_path.constprop.0+0x15c>)
d03c2c1a:	2700      	movs	r7, #0
d03c2c1c:	492c      	ldr	r1, [pc, #176]	; (d03c2cd0 <ui_program_save_path.constprop.0+0x160>)
d03c2c1e:	2001      	movs	r0, #1
d03c2c20:	7923      	ldrb	r3, [r4, #4]
d03c2c22:	7962      	ldrb	r2, [r4, #5]
d03c2c24:	f885 718a 	strb.w	r7, [r5, #394]	; 0x18a
d03c2c28:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2c2c:	79a2      	ldrb	r2, [r4, #6]
d03c2c2e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2c32:	79e2      	ldrb	r2, [r4, #7]
d03c2c34:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2c38:	220a      	movs	r2, #10
d03c2c3a:	681b      	ldr	r3, [r3, #0]
d03c2c3c:	681b      	ldr	r3, [r3, #0]
d03c2c3e:	4798      	blx	r3
d03c2c40:	4605      	mov	r5, r0
d03c2c42:	b118      	cbz	r0, d03c2c4c <ui_program_save_path.constprop.0+0xdc>
d03c2c44:	4823      	ldr	r0, [pc, #140]	; (d03c2cd4 <ui_program_save_path.constprop.0+0x164>)
d03c2c46:	e7a9      	b.n	d03c2b9c <ui_program_save_path.constprop.0+0x2c>
d03c2c48:	2460      	movs	r4, #96	; 0x60
d03c2c4a:	e7d3      	b.n	d03c2bf4 <ui_program_save_path.constprop.0+0x84>
d03c2c4c:	7923      	ldrb	r3, [r4, #4]
d03c2c4e:	2001      	movs	r0, #1
d03c2c50:	7962      	ldrb	r2, [r4, #5]
d03c2c52:	6831      	ldr	r1, [r6, #0]
d03c2c54:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2c58:	79a2      	ldrb	r2, [r4, #6]
d03c2c5a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2c5e:	79e2      	ldrb	r2, [r4, #7]
d03c2c60:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2c64:	f44f 72c7 	mov.w	r2, #398	; 0x18e
d03c2c68:	681b      	ldr	r3, [r3, #0]
d03c2c6a:	691f      	ldr	r7, [r3, #16]
d03c2c6c:	ab01      	add	r3, sp, #4
d03c2c6e:	47b8      	blx	r7
d03c2c70:	7923      	ldrb	r3, [r4, #4]
d03c2c72:	7962      	ldrb	r2, [r4, #5]
d03c2c74:	4606      	mov	r6, r0
d03c2c76:	2001      	movs	r0, #1
d03c2c78:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2c7c:	79a2      	ldrb	r2, [r4, #6]
d03c2c7e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2c82:	79e2      	ldrb	r2, [r4, #7]
d03c2c84:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2c88:	681b      	ldr	r3, [r3, #0]
d03c2c8a:	68db      	ldr	r3, [r3, #12]
d03c2c8c:	4798      	blx	r3
d03c2c8e:	b91e      	cbnz	r6, d03c2c98 <ui_program_save_path.constprop.0+0x128>
d03c2c90:	9b01      	ldr	r3, [sp, #4]
d03c2c92:	f5b3 7fc7 	cmp.w	r3, #398	; 0x18e
d03c2c96:	d001      	beq.n	d03c2c9c <ui_program_save_path.constprop.0+0x12c>
d03c2c98:	480f      	ldr	r0, [pc, #60]	; (d03c2cd8 <ui_program_save_path.constprop.0+0x168>)
d03c2c9a:	e78a      	b.n	d03c2bb2 <ui_program_save_path.constprop.0+0x42>
d03c2c9c:	480f      	ldr	r0, [pc, #60]	; (d03c2cdc <ui_program_save_path.constprop.0+0x16c>)
d03c2c9e:	2501      	movs	r5, #1
d03c2ca0:	f7fe fba4 	bl	d03c13ec <ui_set_status>
d03c2ca4:	e77d      	b.n	d03c2ba2 <ui_program_save_path.constprop.0+0x32>
d03c2ca6:	bf00      	nop
d03c2ca8:	d03cf36a 	.word	0xd03cf36a
d03c2cac:	d03ccd04 	.word	0xd03ccd04
d03c2cb0:	d03cf528 	.word	0xd03cf528
d03c2cb4:	d03cc608 	.word	0xd03cc608
d03c2cb8:	d03cf3a2 	.word	0xd03cf3a2
d03c2cbc:	d03cb453 	.word	0xd03cb453
d03c2cc0:	d03cf33c 	.word	0xd03cf33c
d03c2cc4:	d03cb469 	.word	0xd03cb469
d03c2cc8:	d03cb485 	.word	0xd03cb485
d03c2ccc:	2001f000 	.word	0x2001f000
d03c2cd0:	d03cf2d1 	.word	0xd03cf2d1
d03c2cd4:	d03cb48d 	.word	0xd03cb48d
d03c2cd8:	d03cb4a6 	.word	0xd03cb4a6
d03c2cdc:	d03cb4c0 	.word	0xd03cb4c0

d03c2ce0 <ui_event_push.constprop.0>:
d03c2ce0:	b530      	push	{r4, r5, lr}
d03c2ce2:	4c09      	ldr	r4, [pc, #36]	; (d03c2d08 <ui_event_push.constprop.0+0x28>)
d03c2ce4:	4a09      	ldr	r2, [pc, #36]	; (d03c2d0c <ui_event_push.constprop.0+0x2c>)
d03c2ce6:	7821      	ldrb	r1, [r4, #0]
d03c2ce8:	7812      	ldrb	r2, [r2, #0]
d03c2cea:	1c4b      	adds	r3, r1, #1
d03c2cec:	f003 030f 	and.w	r3, r3, #15
d03c2cf0:	429a      	cmp	r2, r3
d03c2cf2:	d007      	beq.n	d03c2d04 <ui_event_push.constprop.0+0x24>
d03c2cf4:	4a06      	ldr	r2, [pc, #24]	; (d03c2d10 <ui_event_push.constprop.0+0x30>)
d03c2cf6:	2501      	movs	r5, #1
d03c2cf8:	7023      	strb	r3, [r4, #0]
d03c2cfa:	f802 5021 	strb.w	r5, [r2, r1, lsl #2]
d03c2cfe:	eb02 0281 	add.w	r2, r2, r1, lsl #2
d03c2d02:	8050      	strh	r0, [r2, #2]
d03c2d04:	bd30      	pop	{r4, r5, pc}
d03c2d06:	bf00      	nop
d03c2d08:	d03cd9d5 	.word	0xd03cd9d5
d03c2d0c:	d03cda16 	.word	0xd03cda16
d03c2d10:	d03cd9d6 	.word	0xd03cd9d6

d03c2d14 <midi_rx_byte>:
d03c2d14:	b538      	push	{r3, r4, r5, lr}
d03c2d16:	0603      	lsls	r3, r0, #24
d03c2d18:	d522      	bpl.n	d03c2d60 <midi_rx_byte+0x4c>
d03c2d1a:	28f7      	cmp	r0, #247	; 0xf7
d03c2d1c:	d81d      	bhi.n	d03c2d5a <midi_rx_byte+0x46>
d03c2d1e:	28f0      	cmp	r0, #240	; 0xf0
d03c2d20:	4c41      	ldr	r4, [pc, #260]	; (d03c2e28 <midi_rx_byte+0x114>)
d03c2d22:	4942      	ldr	r1, [pc, #264]	; (d03c2e2c <midi_rx_byte+0x118>)
d03c2d24:	4a42      	ldr	r2, [pc, #264]	; (d03c2e30 <midi_rx_byte+0x11c>)
d03c2d26:	d106      	bne.n	d03c2d36 <midi_rx_byte+0x22>
d03c2d28:	2301      	movs	r3, #1
d03c2d2a:	4842      	ldr	r0, [pc, #264]	; (d03c2e34 <midi_rx_byte+0x120>)
d03c2d2c:	7023      	strb	r3, [r4, #0]
d03c2d2e:	2300      	movs	r3, #0
d03c2d30:	7003      	strb	r3, [r0, #0]
d03c2d32:	700b      	strb	r3, [r1, #0]
d03c2d34:	e010      	b.n	d03c2d58 <midi_rx_byte+0x44>
d03c2d36:	2300      	movs	r3, #0
d03c2d38:	28f7      	cmp	r0, #247	; 0xf7
d03c2d3a:	7023      	strb	r3, [r4, #0]
d03c2d3c:	d0f9      	beq.n	d03c2d32 <midi_rx_byte+0x1e>
d03c2d3e:	28ef      	cmp	r0, #239	; 0xef
d03c2d40:	4c3c      	ldr	r4, [pc, #240]	; (d03c2e34 <midi_rx_byte+0x120>)
d03c2d42:	d80b      	bhi.n	d03c2d5c <midi_rx_byte+0x48>
d03c2d44:	7008      	strb	r0, [r1, #0]
d03c2d46:	7020      	strb	r0, [r4, #0]
d03c2d48:	f000 00e0 	and.w	r0, r0, #224	; 0xe0
d03c2d4c:	493a      	ldr	r1, [pc, #232]	; (d03c2e38 <midi_rx_byte+0x124>)
d03c2d4e:	28c0      	cmp	r0, #192	; 0xc0
d03c2d50:	bf0c      	ite	eq
d03c2d52:	2001      	moveq	r0, #1
d03c2d54:	2002      	movne	r0, #2
d03c2d56:	7008      	strb	r0, [r1, #0]
d03c2d58:	7013      	strb	r3, [r2, #0]
d03c2d5a:	bd38      	pop	{r3, r4, r5, pc}
d03c2d5c:	7023      	strb	r3, [r4, #0]
d03c2d5e:	e7e8      	b.n	d03c2d32 <midi_rx_byte+0x1e>
d03c2d60:	4b31      	ldr	r3, [pc, #196]	; (d03c2e28 <midi_rx_byte+0x114>)
d03c2d62:	781b      	ldrb	r3, [r3, #0]
d03c2d64:	2b00      	cmp	r3, #0
d03c2d66:	d1f8      	bne.n	d03c2d5a <midi_rx_byte+0x46>
d03c2d68:	4c30      	ldr	r4, [pc, #192]	; (d03c2e2c <midi_rx_byte+0x118>)
d03c2d6a:	7822      	ldrb	r2, [r4, #0]
d03c2d6c:	b962      	cbnz	r2, d03c2d88 <midi_rx_byte+0x74>
d03c2d6e:	4b31      	ldr	r3, [pc, #196]	; (d03c2e34 <midi_rx_byte+0x120>)
d03c2d70:	781b      	ldrb	r3, [r3, #0]
d03c2d72:	7023      	strb	r3, [r4, #0]
d03c2d74:	f003 03e0 	and.w	r3, r3, #224	; 0xe0
d03c2d78:	2bc0      	cmp	r3, #192	; 0xc0
d03c2d7a:	4b2f      	ldr	r3, [pc, #188]	; (d03c2e38 <midi_rx_byte+0x124>)
d03c2d7c:	bf0c      	ite	eq
d03c2d7e:	2101      	moveq	r1, #1
d03c2d80:	2102      	movne	r1, #2
d03c2d82:	7019      	strb	r1, [r3, #0]
d03c2d84:	4b2a      	ldr	r3, [pc, #168]	; (d03c2e30 <midi_rx_byte+0x11c>)
d03c2d86:	701a      	strb	r2, [r3, #0]
d03c2d88:	7821      	ldrb	r1, [r4, #0]
d03c2d8a:	2900      	cmp	r1, #0
d03c2d8c:	d0e5      	beq.n	d03c2d5a <midi_rx_byte+0x46>
d03c2d8e:	4d28      	ldr	r5, [pc, #160]	; (d03c2e30 <midi_rx_byte+0x11c>)
d03c2d90:	782b      	ldrb	r3, [r5, #0]
d03c2d92:	2b01      	cmp	r3, #1
d03c2d94:	bf9f      	itttt	ls
d03c2d96:	1c5a      	addls	r2, r3, #1
d03c2d98:	702a      	strbls	r2, [r5, #0]
d03c2d9a:	4a28      	ldrls	r2, [pc, #160]	; (d03c2e3c <midi_rx_byte+0x128>)
d03c2d9c:	54d0      	strbls	r0, [r2, r3]
d03c2d9e:	4b26      	ldr	r3, [pc, #152]	; (d03c2e38 <midi_rx_byte+0x124>)
d03c2da0:	782a      	ldrb	r2, [r5, #0]
d03c2da2:	781b      	ldrb	r3, [r3, #0]
d03c2da4:	429a      	cmp	r2, r3
d03c2da6:	d3d8      	bcc.n	d03c2d5a <midi_rx_byte+0x46>
d03c2da8:	f001 03f0 	and.w	r3, r1, #240	; 0xf0
d03c2dac:	f001 010f 	and.w	r1, r1, #15
d03c2db0:	2bb0      	cmp	r3, #176	; 0xb0
d03c2db2:	d021      	beq.n	d03c2df8 <midi_rx_byte+0xe4>
d03c2db4:	d809      	bhi.n	d03c2dca <midi_rx_byte+0xb6>
d03c2db6:	2b80      	cmp	r3, #128	; 0x80
d03c2db8:	d010      	beq.n	d03c2ddc <midi_rx_byte+0xc8>
d03c2dba:	2b90      	cmp	r3, #144	; 0x90
d03c2dbc:	d015      	beq.n	d03c2dea <midi_rx_byte+0xd6>
d03c2dbe:	2300      	movs	r3, #0
d03c2dc0:	702b      	strb	r3, [r5, #0]
d03c2dc2:	4b1c      	ldr	r3, [pc, #112]	; (d03c2e34 <midi_rx_byte+0x120>)
d03c2dc4:	781b      	ldrb	r3, [r3, #0]
d03c2dc6:	7023      	strb	r3, [r4, #0]
d03c2dc8:	e7c7      	b.n	d03c2d5a <midi_rx_byte+0x46>
d03c2dca:	2bc0      	cmp	r3, #192	; 0xc0
d03c2dcc:	d027      	beq.n	d03c2e1e <midi_rx_byte+0x10a>
d03c2dce:	2be0      	cmp	r3, #224	; 0xe0
d03c2dd0:	d1f5      	bne.n	d03c2dbe <midi_rx_byte+0xaa>
d03c2dd2:	4a1a      	ldr	r2, [pc, #104]	; (d03c2e3c <midi_rx_byte+0x128>)
d03c2dd4:	2003      	movs	r0, #3
d03c2dd6:	7853      	ldrb	r3, [r2, #1]
d03c2dd8:	7812      	ldrb	r2, [r2, #0]
d03c2dda:	e003      	b.n	d03c2de4 <midi_rx_byte+0xd0>
d03c2ddc:	4a17      	ldr	r2, [pc, #92]	; (d03c2e3c <midi_rx_byte+0x128>)
d03c2dde:	7853      	ldrb	r3, [r2, #1]
d03c2de0:	7812      	ldrb	r2, [r2, #0]
d03c2de2:	2000      	movs	r0, #0
d03c2de4:	f7fe fe9e 	bl	d03c1b24 <midi_queue_event>
d03c2de8:	e7e9      	b.n	d03c2dbe <midi_rx_byte+0xaa>
d03c2dea:	4a14      	ldr	r2, [pc, #80]	; (d03c2e3c <midi_rx_byte+0x128>)
d03c2dec:	7853      	ldrb	r3, [r2, #1]
d03c2dee:	7812      	ldrb	r2, [r2, #0]
d03c2df0:	2b00      	cmp	r3, #0
d03c2df2:	d0f6      	beq.n	d03c2de2 <midi_rx_byte+0xce>
d03c2df4:	2001      	movs	r0, #1
d03c2df6:	e7f5      	b.n	d03c2de4 <midi_rx_byte+0xd0>
d03c2df8:	4b10      	ldr	r3, [pc, #64]	; (d03c2e3c <midi_rx_byte+0x128>)
d03c2dfa:	781a      	ldrb	r2, [r3, #0]
d03c2dfc:	2a78      	cmp	r2, #120	; 0x78
d03c2dfe:	d001      	beq.n	d03c2e04 <midi_rx_byte+0xf0>
d03c2e00:	2a7b      	cmp	r2, #123	; 0x7b
d03c2e02:	d103      	bne.n	d03c2e0c <midi_rx_byte+0xf8>
d03c2e04:	2300      	movs	r3, #0
d03c2e06:	2005      	movs	r0, #5
d03c2e08:	461a      	mov	r2, r3
d03c2e0a:	e7eb      	b.n	d03c2de4 <midi_rx_byte+0xd0>
d03c2e0c:	2a07      	cmp	r2, #7
d03c2e0e:	d003      	beq.n	d03c2e18 <midi_rx_byte+0x104>
d03c2e10:	2a0b      	cmp	r2, #11
d03c2e12:	d001      	beq.n	d03c2e18 <midi_rx_byte+0x104>
d03c2e14:	2a79      	cmp	r2, #121	; 0x79
d03c2e16:	d1d2      	bne.n	d03c2dbe <midi_rx_byte+0xaa>
d03c2e18:	785b      	ldrb	r3, [r3, #1]
d03c2e1a:	2004      	movs	r0, #4
d03c2e1c:	e7e2      	b.n	d03c2de4 <midi_rx_byte+0xd0>
d03c2e1e:	4a07      	ldr	r2, [pc, #28]	; (d03c2e3c <midi_rx_byte+0x128>)
d03c2e20:	2300      	movs	r3, #0
d03c2e22:	2002      	movs	r0, #2
d03c2e24:	7812      	ldrb	r2, [r2, #0]
d03c2e26:	e7dd      	b.n	d03c2de4 <midi_rx_byte+0xd0>
d03c2e28:	d03ccf30 	.word	0xd03ccf30
d03c2e2c:	d03ccf35 	.word	0xd03ccf35
d03c2e30:	d03ccf31 	.word	0xd03ccf31
d03c2e34:	d03ccf44 	.word	0xd03ccf44
d03c2e38:	d03ccf34 	.word	0xd03ccf34
d03c2e3c:	d03ccf32 	.word	0xd03ccf32

d03c2e40 <ui_button_hit>:
d03c2e40:	4b13      	ldr	r3, [pc, #76]	; (d03c2e90 <ui_button_hit+0x50>)
d03c2e42:	b5f0      	push	{r4, r5, r6, r7, lr}
d03c2e44:	781b      	ldrb	r3, [r3, #0]
d03c2e46:	4c13      	ldr	r4, [pc, #76]	; (d03c2e94 <ui_button_hit+0x54>)
d03c2e48:	3b01      	subs	r3, #1
d03c2e4a:	b21a      	sxth	r2, r3
d03c2e4c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d03c2e50:	eb04 0383 	add.w	r3, r4, r3, lsl #2
d03c2e54:	b215      	sxth	r5, r2
d03c2e56:	3501      	adds	r5, #1
d03c2e58:	d101      	bne.n	d03c2e5e <ui_button_hit+0x1e>
d03c2e5a:	2000      	movs	r0, #0
d03c2e5c:	e014      	b.n	d03c2e88 <ui_button_hit+0x48>
d03c2e5e:	f9b3 6002 	ldrsh.w	r6, [r3, #2]
d03c2e62:	f9b3 5004 	ldrsh.w	r5, [r3, #4]
d03c2e66:	4286      	cmp	r6, r0
d03c2e68:	f9b3 c006 	ldrsh.w	ip, [r3, #6]
d03c2e6c:	f9b3 7008 	ldrsh.w	r7, [r3, #8]
d03c2e70:	dc0b      	bgt.n	d03c2e8a <ui_button_hit+0x4a>
d03c2e72:	4466      	add	r6, ip
d03c2e74:	42b0      	cmp	r0, r6
d03c2e76:	da08      	bge.n	d03c2e8a <ui_button_hit+0x4a>
d03c2e78:	428d      	cmp	r5, r1
d03c2e7a:	dc06      	bgt.n	d03c2e8a <ui_button_hit+0x4a>
d03c2e7c:	443d      	add	r5, r7
d03c2e7e:	42a9      	cmp	r1, r5
d03c2e80:	da03      	bge.n	d03c2e8a <ui_button_hit+0x4a>
d03c2e82:	200c      	movs	r0, #12
d03c2e84:	fb00 4002 	mla	r0, r0, r2, r4
d03c2e88:	bdf0      	pop	{r4, r5, r6, r7, pc}
d03c2e8a:	3a01      	subs	r2, #1
d03c2e8c:	3b0c      	subs	r3, #12
d03c2e8e:	e7e1      	b.n	d03c2e54 <ui_button_hit+0x14>
d03c2e90:	d03cd0e8 	.word	0xd03cd0e8
d03c2e94:	d03cd0ea 	.word	0xd03cd0ea

d03c2e98 <ui_midi_read_varlen.constprop.0>:
d03c2e98:	b573      	push	{r0, r1, r4, r5, r6, lr}
d03c2e9a:	2300      	movs	r3, #0
d03c2e9c:	4604      	mov	r4, r0
d03c2e9e:	460e      	mov	r6, r1
d03c2ea0:	2505      	movs	r5, #5
d03c2ea2:	f88d 3007 	strb.w	r3, [sp, #7]
d03c2ea6:	6003      	str	r3, [r0, #0]
d03c2ea8:	3d01      	subs	r5, #1
d03c2eaa:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
d03c2eae:	d013      	beq.n	d03c2ed8 <ui_midi_read_varlen.constprop.0+0x40>
d03c2eb0:	4632      	mov	r2, r6
d03c2eb2:	2101      	movs	r1, #1
d03c2eb4:	f10d 0007 	add.w	r0, sp, #7
d03c2eb8:	f7ff fbe4 	bl	d03c2684 <ui_file_read_exact.constprop.0>
d03c2ebc:	b160      	cbz	r0, d03c2ed8 <ui_midi_read_varlen.constprop.0+0x40>
d03c2ebe:	f89d 2007 	ldrb.w	r2, [sp, #7]
d03c2ec2:	6821      	ldr	r1, [r4, #0]
d03c2ec4:	f002 037f 	and.w	r3, r2, #127	; 0x7f
d03c2ec8:	ea43 13c1 	orr.w	r3, r3, r1, lsl #7
d03c2ecc:	6023      	str	r3, [r4, #0]
d03c2ece:	0613      	lsls	r3, r2, #24
d03c2ed0:	d4ea      	bmi.n	d03c2ea8 <ui_midi_read_varlen.constprop.0+0x10>
d03c2ed2:	2001      	movs	r0, #1
d03c2ed4:	b002      	add	sp, #8
d03c2ed6:	bd70      	pop	{r4, r5, r6, pc}
d03c2ed8:	2000      	movs	r0, #0
d03c2eda:	e7fb      	b.n	d03c2ed4 <ui_midi_read_varlen.constprop.0+0x3c>

d03c2edc <seq_grid_ticks>:
d03c2edc:	b508      	push	{r3, lr}
d03c2ede:	f7fd fe55 	bl	d03c0b8c <seq_beat_ticks>
d03c2ee2:	4a07      	ldr	r2, [pc, #28]	; (d03c2f00 <seq_grid_ticks+0x24>)
d03c2ee4:	4907      	ldr	r1, [pc, #28]	; (d03c2f04 <seq_grid_ticks+0x28>)
d03c2ee6:	0083      	lsls	r3, r0, #2
d03c2ee8:	7812      	ldrb	r2, [r2, #0]
d03c2eea:	f002 0203 	and.w	r2, r2, #3
d03c2eee:	5c8a      	ldrb	r2, [r1, r2]
d03c2ef0:	ebb2 0f80 	cmp.w	r2, r0, lsl #2
d03c2ef4:	bf94      	ite	ls
d03c2ef6:	fbb3 f0f2 	udivls	r0, r3, r2
d03c2efa:	2001      	movhi	r0, #1
d03c2efc:	b280      	uxth	r0, r0
d03c2efe:	bd08      	pop	{r3, pc}
d03c2f00:	d03cd0a7 	.word	0xd03cd0a7
d03c2f04:	d03cc55c 	.word	0xd03cc55c

d03c2f08 <seq_quantize_tick>:
d03c2f08:	b510      	push	{r4, lr}
d03c2f0a:	4604      	mov	r4, r0
d03c2f0c:	f7ff ffe6 	bl	d03c2edc <seq_grid_ticks>
d03c2f10:	4b05      	ldr	r3, [pc, #20]	; (d03c2f28 <seq_quantize_tick+0x20>)
d03c2f12:	781b      	ldrb	r3, [r3, #0]
d03c2f14:	b12b      	cbz	r3, d03c2f22 <seq_quantize_tick+0x1a>
d03c2f16:	f3c0 034f 	ubfx	r3, r0, #1, #16
d03c2f1a:	441c      	add	r4, r3
d03c2f1c:	fbb4 f4f0 	udiv	r4, r4, r0
d03c2f20:	4344      	muls	r4, r0
d03c2f22:	4620      	mov	r0, r4
d03c2f24:	bd10      	pop	{r4, pc}
d03c2f26:	bf00      	nop
d03c2f28:	d03cd0a6 	.word	0xd03cd0a6

d03c2f2c <midi_process_events>:
d03c2f2c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c2f30:	f8df 82a4 	ldr.w	r8, [pc, #676]	; d03c31d8 <midi_process_events+0x2ac>
d03c2f34:	b085      	sub	sp, #20
d03c2f36:	f8df 92a4 	ldr.w	r9, [pc, #676]	; d03c31dc <midi_process_events+0x2b0>
d03c2f3a:	4b9a      	ldr	r3, [pc, #616]	; (d03c31a4 <midi_process_events+0x278>)
d03c2f3c:	f898 2000 	ldrb.w	r2, [r8]
d03c2f40:	781b      	ldrb	r3, [r3, #0]
d03c2f42:	429a      	cmp	r2, r3
d03c2f44:	d102      	bne.n	d03c2f4c <midi_process_events+0x20>
d03c2f46:	b005      	add	sp, #20
d03c2f48:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c2f4c:	f898 2000 	ldrb.w	r2, [r8]
d03c2f50:	4b95      	ldr	r3, [pc, #596]	; (d03c31a8 <midi_process_events+0x27c>)
d03c2f52:	b2d2      	uxtb	r2, r2
d03c2f54:	f813 1022 	ldrb.w	r1, [r3, r2, lsl #2]
d03c2f58:	f898 2000 	ldrb.w	r2, [r8]
d03c2f5c:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d03c2f60:	7854      	ldrb	r4, [r2, #1]
d03c2f62:	f898 2000 	ldrb.w	r2, [r8]
d03c2f66:	b2e4      	uxtb	r4, r4
d03c2f68:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d03c2f6c:	7895      	ldrb	r5, [r2, #2]
d03c2f6e:	f898 2000 	ldrb.w	r2, [r8]
d03c2f72:	b2ed      	uxtb	r5, r5
d03c2f74:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d03c2f78:	78de      	ldrb	r6, [r3, #3]
d03c2f7a:	f898 3000 	ldrb.w	r3, [r8]
d03c2f7e:	b2f6      	uxtb	r6, r6
d03c2f80:	3301      	adds	r3, #1
d03c2f82:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d03c2f86:	f888 3000 	strb.w	r3, [r8]
d03c2f8a:	2905      	cmp	r1, #5
d03c2f8c:	d8d5      	bhi.n	d03c2f3a <midi_process_events+0xe>
d03c2f8e:	e8df f011 	tbh	[pc, r1, lsl #1]
d03c2f92:	0091      	.short	0x0091
d03c2f94:	00d10006 	.word	0x00d10006
d03c2f98:	00e200dc 	.word	0x00e200dc
d03c2f9c:	0105      	.short	0x0105
d03c2f9e:	4b83      	ldr	r3, [pc, #524]	; (d03c31ac <midi_process_events+0x280>)
d03c2fa0:	781b      	ldrb	r3, [r3, #0]
d03c2fa2:	2b00      	cmp	r3, #0
d03c2fa4:	d063      	beq.n	d03c306e <midi_process_events+0x142>
d03c2fa6:	4b82      	ldr	r3, [pc, #520]	; (d03c31b0 <midi_process_events+0x284>)
d03c2fa8:	2200      	movs	r2, #0
d03c2faa:	469a      	mov	sl, r3
d03c2fac:	7819      	ldrb	r1, [r3, #0]
d03c2fae:	b129      	cbz	r1, d03c2fbc <midi_process_events+0x90>
d03c2fb0:	7899      	ldrb	r1, [r3, #2]
d03c2fb2:	42a1      	cmp	r1, r4
d03c2fb4:	d102      	bne.n	d03c2fbc <midi_process_events+0x90>
d03c2fb6:	7859      	ldrb	r1, [r3, #1]
d03c2fb8:	42a9      	cmp	r1, r5
d03c2fba:	d058      	beq.n	d03c306e <midi_process_events+0x142>
d03c2fbc:	3201      	adds	r2, #1
d03c2fbe:	3308      	adds	r3, #8
d03c2fc0:	2a20      	cmp	r2, #32
d03c2fc2:	d1f3      	bne.n	d03c2fac <midi_process_events+0x80>
d03c2fc4:	f8df b218 	ldr.w	fp, [pc, #536]	; d03c31e0 <midi_process_events+0x2b4>
d03c2fc8:	f8d9 7000 	ldr.w	r7, [r9]
d03c2fcc:	f8db 2000 	ldr.w	r2, [fp]
d03c2fd0:	1c7b      	adds	r3, r7, #1
d03c2fd2:	4297      	cmp	r7, r2
d03c2fd4:	d23e      	bcs.n	d03c3054 <midi_process_events+0x128>
d03c2fd6:	f8c9 3000 	str.w	r3, [r9]
d03c2fda:	4b76      	ldr	r3, [pc, #472]	; (d03c31b4 <midi_process_events+0x288>)
d03c2fdc:	2100      	movs	r1, #0
d03c2fde:	2210      	movs	r2, #16
d03c2fe0:	681b      	ldr	r3, [r3, #0]
d03c2fe2:	eb03 1b07 	add.w	fp, r3, r7, lsl #4
d03c2fe6:	9303      	str	r3, [sp, #12]
d03c2fe8:	4658      	mov	r0, fp
d03c2fea:	f006 fcb5 	bl	d03c9958 <memset>
d03c2fee:	2201      	movs	r2, #1
d03c2ff0:	f88b 200d 	strb.w	r2, [fp, #13]
d03c2ff4:	f7fd fe16 	bl	d03c0c24 <seq_playback_mark_dirty>
d03c2ff8:	496f      	ldr	r1, [pc, #444]	; (d03c31b8 <midi_process_events+0x28c>)
d03c2ffa:	2201      	movs	r2, #1
d03c2ffc:	1c7b      	adds	r3, r7, #1
d03c2ffe:	700a      	strb	r2, [r1, #0]
d03c3000:	d032      	beq.n	d03c3068 <midi_process_events+0x13c>
d03c3002:	496e      	ldr	r1, [pc, #440]	; (d03c31bc <midi_process_events+0x290>)
d03c3004:	6808      	ldr	r0, [r1, #0]
d03c3006:	f7ff ff7f 	bl	d03c2f08 <seq_quantize_tick>
d03c300a:	9b03      	ldr	r3, [sp, #12]
d03c300c:	013a      	lsls	r2, r7, #4
d03c300e:	5098      	str	r0, [r3, r2]
d03c3010:	2201      	movs	r2, #1
d03c3012:	f88b 5008 	strb.w	r5, [fp, #8]
d03c3016:	f8cb 2004 	str.w	r2, [fp, #4]
d03c301a:	4a69      	ldr	r2, [pc, #420]	; (d03c31c0 <midi_process_events+0x294>)
d03c301c:	f88b 4009 	strb.w	r4, [fp, #9]
d03c3020:	5d12      	ldrb	r2, [r2, r4]
d03c3022:	f88b 600b 	strb.w	r6, [fp, #11]
d03c3026:	f88b 200a 	strb.w	r2, [fp, #10]
d03c302a:	f004 0207 	and.w	r2, r4, #7
d03c302e:	3220      	adds	r2, #32
d03c3030:	f88b 200c 	strb.w	r2, [fp, #12]
d03c3034:	2200      	movs	r2, #0
d03c3036:	f81a 1032 	ldrb.w	r1, [sl, r2, lsl #3]
d03c303a:	bb59      	cbnz	r1, d03c3094 <midi_process_events+0x168>
d03c303c:	2301      	movs	r3, #1
d03c303e:	f80a 3032 	strb.w	r3, [sl, r2, lsl #3]
d03c3042:	eb0a 0ac2 	add.w	sl, sl, r2, lsl #3
d03c3046:	f88a 5001 	strb.w	r5, [sl, #1]
d03c304a:	f88a 4002 	strb.w	r4, [sl, #2]
d03c304e:	f8ca 7004 	str.w	r7, [sl, #4]
d03c3052:	e00c      	b.n	d03c306e <midi_process_events+0x142>
d03c3054:	4618      	mov	r0, r3
d03c3056:	9303      	str	r3, [sp, #12]
d03c3058:	f7fe f95a 	bl	d03c1310 <seq_reserve_notes>
d03c305c:	9b03      	ldr	r3, [sp, #12]
d03c305e:	2800      	cmp	r0, #0
d03c3060:	d1b9      	bne.n	d03c2fd6 <midi_process_events+0xaa>
d03c3062:	f8db 2000 	ldr.w	r2, [fp]
d03c3066:	b962      	cbnz	r2, d03c3082 <midi_process_events+0x156>
d03c3068:	4856      	ldr	r0, [pc, #344]	; (d03c31c4 <midi_process_events+0x298>)
d03c306a:	f7fe f9bf 	bl	d03c13ec <ui_set_status>
d03c306e:	2300      	movs	r3, #0
d03c3070:	4632      	mov	r2, r6
d03c3072:	4629      	mov	r1, r5
d03c3074:	4620      	mov	r0, r4
d03c3076:	9300      	str	r3, [sp, #0]
d03c3078:	4b51      	ldr	r3, [pc, #324]	; (d03c31c0 <midi_process_events+0x294>)
d03c307a:	5d1b      	ldrb	r3, [r3, r4]
d03c307c:	f7fe fda2 	bl	d03c1bc4 <sid_midi_note_on_program_source>
d03c3080:	e75b      	b.n	d03c2f3a <midi_process_events+0xe>
d03c3082:	4951      	ldr	r1, [pc, #324]	; (d03c31c8 <midi_process_events+0x29c>)
d03c3084:	680f      	ldr	r7, [r1, #0]
d03c3086:	1c78      	adds	r0, r7, #1
d03c3088:	fbb0 f3f2 	udiv	r3, r0, r2
d03c308c:	fb02 0313 	mls	r3, r2, r3, r0
d03c3090:	600b      	str	r3, [r1, #0]
d03c3092:	e7a2      	b.n	d03c2fda <midi_process_events+0xae>
d03c3094:	3201      	adds	r2, #1
d03c3096:	2a20      	cmp	r2, #32
d03c3098:	d1cd      	bne.n	d03c3036 <midi_process_events+0x10a>
d03c309a:	2200      	movs	r2, #0
d03c309c:	f8d9 3000 	ldr.w	r3, [r9]
d03c30a0:	f88b 200d 	strb.w	r2, [fp, #13]
d03c30a4:	1c7a      	adds	r2, r7, #1
d03c30a6:	429a      	cmp	r2, r3
d03c30a8:	bf08      	it	eq
d03c30aa:	f8c9 7000 	streq.w	r7, [r9]
d03c30ae:	f7fd fdb9 	bl	d03c0c24 <seq_playback_mark_dirty>
d03c30b2:	e7dc      	b.n	d03c306e <midi_process_events+0x142>
d03c30b4:	4b3d      	ldr	r3, [pc, #244]	; (d03c31ac <midi_process_events+0x280>)
d03c30b6:	781b      	ldrb	r3, [r3, #0]
d03c30b8:	b37b      	cbz	r3, d03c311a <midi_process_events+0x1ee>
d03c30ba:	4b3d      	ldr	r3, [pc, #244]	; (d03c31b0 <midi_process_events+0x284>)
d03c30bc:	f04f 0a00 	mov.w	sl, #0
d03c30c0:	461e      	mov	r6, r3
d03c30c2:	781a      	ldrb	r2, [r3, #0]
d03c30c4:	b37a      	cbz	r2, d03c3126 <midi_process_events+0x1fa>
d03c30c6:	789a      	ldrb	r2, [r3, #2]
d03c30c8:	42a2      	cmp	r2, r4
d03c30ca:	d12c      	bne.n	d03c3126 <midi_process_events+0x1fa>
d03c30cc:	785a      	ldrb	r2, [r3, #1]
d03c30ce:	42aa      	cmp	r2, r5
d03c30d0:	d129      	bne.n	d03c3126 <midi_process_events+0x1fa>
d03c30d2:	eb06 03ca 	add.w	r3, r6, sl, lsl #3
d03c30d6:	685f      	ldr	r7, [r3, #4]
d03c30d8:	f8d9 3000 	ldr.w	r3, [r9]
d03c30dc:	429f      	cmp	r7, r3
d03c30de:	d219      	bcs.n	d03c3114 <midi_process_events+0x1e8>
d03c30e0:	4a34      	ldr	r2, [pc, #208]	; (d03c31b4 <midi_process_events+0x288>)
d03c30e2:	013b      	lsls	r3, r7, #4
d03c30e4:	f8d2 b000 	ldr.w	fp, [r2]
d03c30e8:	9303      	str	r3, [sp, #12]
d03c30ea:	eb0b 1707 	add.w	r7, fp, r7, lsl #4
d03c30ee:	7b7a      	ldrb	r2, [r7, #13]
d03c30f0:	b182      	cbz	r2, d03c3114 <midi_process_events+0x1e8>
d03c30f2:	4a32      	ldr	r2, [pc, #200]	; (d03c31bc <midi_process_events+0x290>)
d03c30f4:	6810      	ldr	r0, [r2, #0]
d03c30f6:	f7ff ff07 	bl	d03c2f08 <seq_quantize_tick>
d03c30fa:	9b03      	ldr	r3, [sp, #12]
d03c30fc:	f85b 3003 	ldr.w	r3, [fp, r3]
d03c3100:	4298      	cmp	r0, r3
d03c3102:	bf98      	it	ls
d03c3104:	1c58      	addls	r0, r3, #1
d03c3106:	1ac0      	subs	r0, r0, r3
d03c3108:	6078      	str	r0, [r7, #4]
d03c310a:	f7fd fd8b 	bl	d03c0c24 <seq_playback_mark_dirty>
d03c310e:	4b2a      	ldr	r3, [pc, #168]	; (d03c31b8 <midi_process_events+0x28c>)
d03c3110:	2201      	movs	r2, #1
d03c3112:	701a      	strb	r2, [r3, #0]
d03c3114:	2300      	movs	r3, #0
d03c3116:	f806 303a 	strb.w	r3, [r6, sl, lsl #3]
d03c311a:	2200      	movs	r2, #0
d03c311c:	4629      	mov	r1, r5
d03c311e:	4620      	mov	r0, r4
d03c3120:	f7ff f93c 	bl	d03c239c <sid_midi_note_off_source>
d03c3124:	e709      	b.n	d03c2f3a <midi_process_events+0xe>
d03c3126:	f10a 0a01 	add.w	sl, sl, #1
d03c312a:	3308      	adds	r3, #8
d03c312c:	f1ba 0f20 	cmp.w	sl, #32
d03c3130:	d1c7      	bne.n	d03c30c2 <midi_process_events+0x196>
d03c3132:	e7f2      	b.n	d03c311a <midi_process_events+0x1ee>
d03c3134:	2c09      	cmp	r4, #9
d03c3136:	f43f af00 	beq.w	d03c2f3a <midi_process_events+0xe>
d03c313a:	4620      	mov	r0, r4
d03c313c:	f005 057f 	and.w	r5, r5, #127	; 0x7f
d03c3140:	f7fe fd28 	bl	d03c1b94 <ui_note_channel_used>
d03c3144:	4b1e      	ldr	r3, [pc, #120]	; (d03c31c0 <midi_process_events+0x294>)
d03c3146:	551d      	strb	r5, [r3, r4]
d03c3148:	e6f7      	b.n	d03c2f3a <midi_process_events+0xe>
d03c314a:	4632      	mov	r2, r6
d03c314c:	4629      	mov	r1, r5
d03c314e:	4620      	mov	r0, r4
d03c3150:	f7fe fe24 	bl	d03c1d9c <sid_midi_pitch_bend_event>
d03c3154:	e6f1      	b.n	d03c2f3a <midi_process_events+0xe>
d03c3156:	4620      	mov	r0, r4
d03c3158:	f7fe fd1c 	bl	d03c1b94 <ui_note_channel_used>
d03c315c:	2d0b      	cmp	r5, #11
d03c315e:	d00c      	beq.n	d03c317a <midi_process_events+0x24e>
d03c3160:	2d79      	cmp	r5, #121	; 0x79
d03c3162:	d00e      	beq.n	d03c3182 <midi_process_events+0x256>
d03c3164:	2d07      	cmp	r5, #7
d03c3166:	f47f aee8 	bne.w	d03c2f3a <midi_process_events+0xe>
d03c316a:	f006 067f 	and.w	r6, r6, #127	; 0x7f
d03c316e:	4b17      	ldr	r3, [pc, #92]	; (d03c31cc <midi_process_events+0x2a0>)
d03c3170:	4620      	mov	r0, r4
d03c3172:	551e      	strb	r6, [r3, r4]
d03c3174:	f7fe fb0e 	bl	d03c1794 <midi_update_active_channel_volume>
d03c3178:	e6df      	b.n	d03c2f3a <midi_process_events+0xe>
d03c317a:	f006 067f 	and.w	r6, r6, #127	; 0x7f
d03c317e:	4b14      	ldr	r3, [pc, #80]	; (d03c31d0 <midi_process_events+0x2a4>)
d03c3180:	e7f6      	b.n	d03c3170 <midi_process_events+0x244>
d03c3182:	237f      	movs	r3, #127	; 0x7f
d03c3184:	4a11      	ldr	r2, [pc, #68]	; (d03c31cc <midi_process_events+0x2a0>)
d03c3186:	2500      	movs	r5, #0
d03c3188:	5513      	strb	r3, [r2, r4]
d03c318a:	4a11      	ldr	r2, [pc, #68]	; (d03c31d0 <midi_process_events+0x2a4>)
d03c318c:	5513      	strb	r3, [r2, r4]
d03c318e:	4b11      	ldr	r3, [pc, #68]	; (d03c31d4 <midi_process_events+0x2a8>)
d03c3190:	f823 5014 	strh.w	r5, [r3, r4, lsl #1]
d03c3194:	f7fe fafe 	bl	d03c1794 <midi_update_active_channel_volume>
d03c3198:	2240      	movs	r2, #64	; 0x40
d03c319a:	e7d7      	b.n	d03c314c <midi_process_events+0x220>
d03c319c:	4620      	mov	r0, r4
d03c319e:	f7fe fa9b 	bl	d03c16d8 <sid_midi_all_notes_off_event>
d03c31a2:	e6ca      	b.n	d03c2f3a <midi_process_events+0xe>
d03c31a4:	d03ccd2c 	.word	0xd03ccd2c
d03c31a8:	d03ccd2d 	.word	0xd03ccd2d
d03c31ac:	d03cd0a5 	.word	0xd03cd0a5
d03c31b0:	d03ccf8c 	.word	0xd03ccf8c
d03c31b4:	d03ccf78 	.word	0xd03ccf78
d03c31b8:	d03cf36b 	.word	0xd03cf36b
d03c31bc:	d03cd0a0 	.word	0xd03cd0a0
d03c31c0:	d03ccd04 	.word	0xd03ccd04
d03c31c4:	d03cb4ce 	.word	0xd03cb4ce
d03c31c8:	d03ccf6c 	.word	0xd03ccf6c
d03c31cc:	d03ccd14 	.word	0xd03ccd14
d03c31d0:	d03cccf4 	.word	0xd03cccf4
d03c31d4:	d03cccd4 	.word	0xd03cccd4
d03c31d8:	d03ccf2d 	.word	0xd03ccf2d
d03c31dc:	d03ccf74 	.word	0xd03ccf74
d03c31e0:	d03ccf70 	.word	0xd03ccf70

d03c31e4 <seq_set_position_from_drag>:
d03c31e4:	b508      	push	{r3, lr}
d03c31e6:	4b10      	ldr	r3, [pc, #64]	; (d03c3228 <seq_set_position_from_drag+0x44>)
d03c31e8:	4a10      	ldr	r2, [pc, #64]	; (d03c322c <seq_set_position_from_drag+0x48>)
d03c31ea:	f9b3 3000 	ldrsh.w	r3, [r3]
d03c31ee:	6812      	ldr	r2, [r2, #0]
d03c31f0:	1ac0      	subs	r0, r0, r3
d03c31f2:	ea80 73e0 	eor.w	r3, r0, r0, asr #31
d03c31f6:	2800      	cmp	r0, #0
d03c31f8:	eba3 73e0 	sub.w	r3, r3, r0, asr #31
d03c31fc:	ea4f 0343 	mov.w	r3, r3, lsl #1
d03c3200:	db0e      	blt.n	d03c3220 <seq_set_position_from_drag+0x3c>
d03c3202:	4293      	cmp	r3, r2
d03c3204:	d80e      	bhi.n	d03c3224 <seq_set_position_from_drag+0x40>
d03c3206:	1ad0      	subs	r0, r2, r3
d03c3208:	f7ff fe7e 	bl	d03c2f08 <seq_quantize_tick>
d03c320c:	4b08      	ldr	r3, [pc, #32]	; (d03c3230 <seq_set_position_from_drag+0x4c>)
d03c320e:	6018      	str	r0, [r3, #0]
d03c3210:	4b08      	ldr	r3, [pc, #32]	; (d03c3234 <seq_set_position_from_drag+0x50>)
d03c3212:	681a      	ldr	r2, [r3, #0]
d03c3214:	4b08      	ldr	r3, [pc, #32]	; (d03c3238 <seq_set_position_from_drag+0x54>)
d03c3216:	601a      	str	r2, [r3, #0]
d03c3218:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d03c321c:	f7fe baf8 	b.w	d03c1810 <seq_playback_sync>
d03c3220:	1898      	adds	r0, r3, r2
d03c3222:	e7f1      	b.n	d03c3208 <seq_set_position_from_drag+0x24>
d03c3224:	2000      	movs	r0, #0
d03c3226:	e7ef      	b.n	d03c3208 <seq_set_position_from_drag+0x24>
d03c3228:	d03ccf60 	.word	0xd03ccf60
d03c322c:	d03ccf5c 	.word	0xd03ccf5c
d03c3230:	d03cd0a0 	.word	0xd03cd0a0
d03c3234:	d03ccf50 	.word	0xd03ccf50
d03c3238:	d03ccf64 	.word	0xd03ccf64

d03c323c <ui_file_make_path.constprop.0>:
d03c323c:	4b16      	ldr	r3, [pc, #88]	; (d03c3298 <ui_file_make_path.constprop.0+0x5c>)
d03c323e:	4a17      	ldr	r2, [pc, #92]	; (d03c329c <ui_file_make_path.constprop.0+0x60>)
d03c3240:	b530      	push	{r4, r5, lr}
d03c3242:	4605      	mov	r5, r0
d03c3244:	7818      	ldrb	r0, [r3, #0]
d03c3246:	b085      	sub	sp, #20
d03c3248:	2800      	cmp	r0, #0
d03c324a:	bf08      	it	eq
d03c324c:	4613      	moveq	r3, r2
d03c324e:	2902      	cmp	r1, #2
d03c3250:	d015      	beq.n	d03c327e <ui_file_make_path.constprop.0+0x42>
d03c3252:	2903      	cmp	r1, #3
d03c3254:	d015      	beq.n	d03c3282 <ui_file_make_path.constprop.0+0x46>
d03c3256:	4a12      	ldr	r2, [pc, #72]	; (d03c32a0 <ui_file_make_path.constprop.0+0x64>)
d03c3258:	4c12      	ldr	r4, [pc, #72]	; (d03c32a4 <ui_file_make_path.constprop.0+0x68>)
d03c325a:	2904      	cmp	r1, #4
d03c325c:	bf18      	it	ne
d03c325e:	4614      	movne	r4, r2
d03c3260:	4621      	mov	r1, r4
d03c3262:	4628      	mov	r0, r5
d03c3264:	9303      	str	r3, [sp, #12]
d03c3266:	f7fe fb69 	bl	d03c193c <ui_name_has_ext>
d03c326a:	9b03      	ldr	r3, [sp, #12]
d03c326c:	b158      	cbz	r0, d03c3286 <ui_file_make_path.constprop.0+0x4a>
d03c326e:	4a0e      	ldr	r2, [pc, #56]	; (d03c32a8 <ui_file_make_path.constprop.0+0x6c>)
d03c3270:	2160      	movs	r1, #96	; 0x60
d03c3272:	480e      	ldr	r0, [pc, #56]	; (d03c32ac <ui_file_make_path.constprop.0+0x70>)
d03c3274:	9500      	str	r5, [sp, #0]
d03c3276:	f006 fe79 	bl	d03c9f6c <sniprintf>
d03c327a:	b005      	add	sp, #20
d03c327c:	bd30      	pop	{r4, r5, pc}
d03c327e:	4c0c      	ldr	r4, [pc, #48]	; (d03c32b0 <ui_file_make_path.constprop.0+0x74>)
d03c3280:	e7ee      	b.n	d03c3260 <ui_file_make_path.constprop.0+0x24>
d03c3282:	4c0c      	ldr	r4, [pc, #48]	; (d03c32b4 <ui_file_make_path.constprop.0+0x78>)
d03c3284:	e7ec      	b.n	d03c3260 <ui_file_make_path.constprop.0+0x24>
d03c3286:	4a0c      	ldr	r2, [pc, #48]	; (d03c32b8 <ui_file_make_path.constprop.0+0x7c>)
d03c3288:	2160      	movs	r1, #96	; 0x60
d03c328a:	9401      	str	r4, [sp, #4]
d03c328c:	9500      	str	r5, [sp, #0]
d03c328e:	4807      	ldr	r0, [pc, #28]	; (d03c32ac <ui_file_make_path.constprop.0+0x70>)
d03c3290:	f006 fe6c 	bl	d03c9f6c <sniprintf>
d03c3294:	e7f1      	b.n	d03c327a <ui_file_make_path.constprop.0+0x3e>
d03c3296:	bf00      	nop
d03c3298:	d03cda19 	.word	0xd03cda19
d03c329c:	d03cb338 	.word	0xd03cb338
d03c32a0:	d03cb4ee 	.word	0xd03cb4ee
d03c32a4:	d03cb4f8 	.word	0xd03cb4f8
d03c32a8:	d03cb4fd 	.word	0xd03cb4fd
d03c32ac:	d03cf2d1 	.word	0xd03cf2d1
d03c32b0:	d03cb4f3 	.word	0xd03cb4f3
d03c32b4:	d03cb4e9 	.word	0xd03cb4e9
d03c32b8:	d03cb503 	.word	0xd03cb503

d03c32bc <ui_file_refresh>:
d03c32bc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c32c0:	4d78      	ldr	r5, [pc, #480]	; (d03c34a4 <ui_file_refresh+0x1e8>)
d03c32c2:	2400      	movs	r4, #0
d03c32c4:	4b78      	ldr	r3, [pc, #480]	; (d03c34a8 <ui_file_refresh+0x1ec>)
d03c32c6:	b099      	sub	sp, #100	; 0x64
d03c32c8:	782a      	ldrb	r2, [r5, #0]
d03c32ca:	4621      	mov	r1, r4
d03c32cc:	4e77      	ldr	r6, [pc, #476]	; (d03c34ac <ui_file_refresh+0x1f0>)
d03c32ce:	42a2      	cmp	r2, r4
d03c32d0:	bf08      	it	eq
d03c32d2:	461d      	moveq	r5, r3
d03c32d4:	4b76      	ldr	r3, [pc, #472]	; (d03c34b0 <ui_file_refresh+0x1f4>)
d03c32d6:	f44f 6200 	mov.w	r2, #2048	; 0x800
d03c32da:	4876      	ldr	r0, [pc, #472]	; (d03c34b4 <ui_file_refresh+0x1f8>)
d03c32dc:	701c      	strb	r4, [r3, #0]
d03c32de:	4b76      	ldr	r3, [pc, #472]	; (d03c34b8 <ui_file_refresh+0x1fc>)
d03c32e0:	7034      	strb	r4, [r6, #0]
d03c32e2:	701c      	strb	r4, [r3, #0]
d03c32e4:	e9cd 4406 	strd	r4, r4, [sp, #24]
d03c32e8:	f006 fb36 	bl	d03c9958 <memset>
d03c32ec:	2240      	movs	r2, #64	; 0x40
d03c32ee:	4621      	mov	r1, r4
d03c32f0:	4872      	ldr	r0, [pc, #456]	; (d03c34bc <ui_file_refresh+0x200>)
d03c32f2:	f006 fb31 	bl	d03c9958 <memset>
d03c32f6:	4972      	ldr	r1, [pc, #456]	; (d03c34c0 <ui_file_refresh+0x204>)
d03c32f8:	4628      	mov	r0, r5
d03c32fa:	f006 fe6b 	bl	d03c9fd4 <strcmp>
d03c32fe:	9604      	str	r6, [sp, #16]
d03c3300:	b118      	cbz	r0, d03c330a <ui_file_refresh+0x4e>
d03c3302:	2105      	movs	r1, #5
d03c3304:	486f      	ldr	r0, [pc, #444]	; (d03c34c4 <ui_file_refresh+0x208>)
d03c3306:	f7fe f883 	bl	d03c1410 <ui_file_add_entry>
d03c330a:	4c6f      	ldr	r4, [pc, #444]	; (d03c34c8 <ui_file_refresh+0x20c>)
d03c330c:	4628      	mov	r0, r5
d03c330e:	7923      	ldrb	r3, [r4, #4]
d03c3310:	7962      	ldrb	r2, [r4, #5]
d03c3312:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3316:	79a2      	ldrb	r2, [r4, #6]
d03c3318:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c331c:	79e2      	ldrb	r2, [r4, #7]
d03c331e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3322:	681b      	ldr	r3, [r3, #0]
d03c3324:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c3326:	4798      	blx	r3
d03c3328:	4605      	mov	r5, r0
d03c332a:	2800      	cmp	r0, #0
d03c332c:	d049      	beq.n	d03c33c2 <ui_file_refresh+0x106>
d03c332e:	4e67      	ldr	r6, [pc, #412]	; (d03c34cc <ui_file_refresh+0x210>)
d03c3330:	4f64      	ldr	r7, [pc, #400]	; (d03c34c4 <ui_file_refresh+0x208>)
d03c3332:	f8df 81ac 	ldr.w	r8, [pc, #428]	; d03c34e0 <ui_file_refresh+0x224>
d03c3336:	9b04      	ldr	r3, [sp, #16]
d03c3338:	781b      	ldrb	r3, [r3, #0]
d03c333a:	2b3f      	cmp	r3, #63	; 0x3f
d03c333c:	d816      	bhi.n	d03c336c <ui_file_refresh+0xb0>
d03c333e:	7923      	ldrb	r3, [r4, #4]
d03c3340:	4628      	mov	r0, r5
d03c3342:	7962      	ldrb	r2, [r4, #5]
d03c3344:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3348:	79a2      	ldrb	r2, [r4, #6]
d03c334a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c334e:	79e2      	ldrb	r2, [r4, #7]
d03c3350:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3354:	aa07      	add	r2, sp, #28
d03c3356:	681b      	ldr	r3, [r3, #0]
d03c3358:	9200      	str	r2, [sp, #0]
d03c335a:	2220      	movs	r2, #32
d03c335c:	f8d3 9030 	ldr.w	r9, [r3, #48]	; 0x30
d03c3360:	ab06      	add	r3, sp, #24
d03c3362:	eb0d 0102 	add.w	r1, sp, r2
d03c3366:	47c8      	blx	r9
d03c3368:	2800      	cmp	r0, #0
d03c336a:	dc30      	bgt.n	d03c33ce <ui_file_refresh+0x112>
d03c336c:	7923      	ldrb	r3, [r4, #4]
d03c336e:	2600      	movs	r6, #0
d03c3370:	7962      	ldrb	r2, [r4, #5]
d03c3372:	4628      	mov	r0, r5
d03c3374:	f8df 9144 	ldr.w	r9, [pc, #324]	; d03c34bc <ui_file_refresh+0x200>
d03c3378:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c337c:	79a2      	ldrb	r2, [r4, #6]
d03c337e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3382:	79e2      	ldrb	r2, [r4, #7]
d03c3384:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3388:	681b      	ldr	r3, [r3, #0]
d03c338a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d03c338c:	4798      	blx	r3
d03c338e:	9b04      	ldr	r3, [sp, #16]
d03c3390:	781b      	ldrb	r3, [r3, #0]
d03c3392:	42b3      	cmp	r3, r6
d03c3394:	9302      	str	r3, [sp, #8]
d03c3396:	d917      	bls.n	d03c33c8 <ui_file_refresh+0x10c>
d03c3398:	1c74      	adds	r4, r6, #1
d03c339a:	f8df b128 	ldr.w	fp, [pc, #296]	; d03c34c4 <ui_file_refresh+0x208>
d03c339e:	b2e3      	uxtb	r3, r4
d03c33a0:	b2e5      	uxtb	r5, r4
d03c33a2:	fa59 f484 	uxtab	r4, r9, r4
d03c33a6:	9303      	str	r3, [sp, #12]
d03c33a8:	4b42      	ldr	r3, [pc, #264]	; (d03c34b4 <ui_file_refresh+0x1f8>)
d03c33aa:	9f03      	ldr	r7, [sp, #12]
d03c33ac:	eb03 1a46 	add.w	sl, r3, r6, lsl #5
d03c33b0:	eb03 1545 	add.w	r5, r3, r5, lsl #5
d03c33b4:	0173      	lsls	r3, r6, #5
d03c33b6:	9305      	str	r3, [sp, #20]
d03c33b8:	9b02      	ldr	r3, [sp, #8]
d03c33ba:	42bb      	cmp	r3, r7
d03c33bc:	d13c      	bne.n	d03c3438 <ui_file_refresh+0x17c>
d03c33be:	9e03      	ldr	r6, [sp, #12]
d03c33c0:	e7e5      	b.n	d03c338e <ui_file_refresh+0xd2>
d03c33c2:	4843      	ldr	r0, [pc, #268]	; (d03c34d0 <ui_file_refresh+0x214>)
d03c33c4:	f7fe f812 	bl	d03c13ec <ui_set_status>
d03c33c8:	b019      	add	sp, #100	; 0x64
d03c33ca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c33ce:	f89d 3020 	ldrb.w	r3, [sp, #32]
d03c33d2:	2b00      	cmp	r3, #0
d03c33d4:	d0af      	beq.n	d03c3336 <ui_file_refresh+0x7a>
d03c33d6:	4631      	mov	r1, r6
d03c33d8:	a808      	add	r0, sp, #32
d03c33da:	f006 fdfb 	bl	d03c9fd4 <strcmp>
d03c33de:	2800      	cmp	r0, #0
d03c33e0:	d0a9      	beq.n	d03c3336 <ui_file_refresh+0x7a>
d03c33e2:	4639      	mov	r1, r7
d03c33e4:	a808      	add	r0, sp, #32
d03c33e6:	f006 fdf5 	bl	d03c9fd4 <strcmp>
d03c33ea:	2800      	cmp	r0, #0
d03c33ec:	d0a3      	beq.n	d03c3336 <ui_file_refresh+0x7a>
d03c33ee:	9b06      	ldr	r3, [sp, #24]
d03c33f0:	07db      	lsls	r3, r3, #31
d03c33f2:	d504      	bpl.n	d03c33fe <ui_file_refresh+0x142>
d03c33f4:	2105      	movs	r1, #5
d03c33f6:	a808      	add	r0, sp, #32
d03c33f8:	f7fe f80a 	bl	d03c1410 <ui_file_add_entry>
d03c33fc:	e79b      	b.n	d03c3336 <ui_file_refresh+0x7a>
d03c33fe:	4641      	mov	r1, r8
d03c3400:	a808      	add	r0, sp, #32
d03c3402:	f7fe fa9b 	bl	d03c193c <ui_name_has_ext>
d03c3406:	b988      	cbnz	r0, d03c342c <ui_file_refresh+0x170>
d03c3408:	4932      	ldr	r1, [pc, #200]	; (d03c34d4 <ui_file_refresh+0x218>)
d03c340a:	a808      	add	r0, sp, #32
d03c340c:	f7fe fa96 	bl	d03c193c <ui_name_has_ext>
d03c3410:	b970      	cbnz	r0, d03c3430 <ui_file_refresh+0x174>
d03c3412:	4931      	ldr	r1, [pc, #196]	; (d03c34d8 <ui_file_refresh+0x21c>)
d03c3414:	a808      	add	r0, sp, #32
d03c3416:	f7fe fa91 	bl	d03c193c <ui_name_has_ext>
d03c341a:	b958      	cbnz	r0, d03c3434 <ui_file_refresh+0x178>
d03c341c:	492f      	ldr	r1, [pc, #188]	; (d03c34dc <ui_file_refresh+0x220>)
d03c341e:	a808      	add	r0, sp, #32
d03c3420:	f7fe fa8c 	bl	d03c193c <ui_name_has_ext>
d03c3424:	2800      	cmp	r0, #0
d03c3426:	d086      	beq.n	d03c3336 <ui_file_refresh+0x7a>
d03c3428:	2104      	movs	r1, #4
d03c342a:	e7e4      	b.n	d03c33f6 <ui_file_refresh+0x13a>
d03c342c:	2102      	movs	r1, #2
d03c342e:	e7e2      	b.n	d03c33f6 <ui_file_refresh+0x13a>
d03c3430:	2101      	movs	r1, #1
d03c3432:	e7e0      	b.n	d03c33f6 <ui_file_refresh+0x13a>
d03c3434:	2103      	movs	r1, #3
d03c3436:	e7de      	b.n	d03c33f6 <ui_file_refresh+0x13a>
d03c3438:	4659      	mov	r1, fp
d03c343a:	4650      	mov	r0, sl
d03c343c:	f006 fdca 	bl	d03c9fd4 <strcmp>
d03c3440:	b358      	cbz	r0, d03c349a <ui_file_refresh+0x1de>
d03c3442:	4659      	mov	r1, fp
d03c3444:	4628      	mov	r0, r5
d03c3446:	f006 fdc5 	bl	d03c9fd4 <strcmp>
d03c344a:	f819 8006 	ldrb.w	r8, [r9, r6]
d03c344e:	b158      	cbz	r0, d03c3468 <ui_file_refresh+0x1ac>
d03c3450:	7822      	ldrb	r2, [r4, #0]
d03c3452:	2a05      	cmp	r2, #5
d03c3454:	d11f      	bne.n	d03c3496 <ui_file_refresh+0x1da>
d03c3456:	f1b8 0f05 	cmp.w	r8, #5
d03c345a:	d105      	bne.n	d03c3468 <ui_file_refresh+0x1ac>
d03c345c:	4651      	mov	r1, sl
d03c345e:	4628      	mov	r0, r5
d03c3460:	f006 fdb8 	bl	d03c9fd4 <strcmp>
d03c3464:	2800      	cmp	r0, #0
d03c3466:	da18      	bge.n	d03c349a <ui_file_refresh+0x1de>
d03c3468:	4b12      	ldr	r3, [pc, #72]	; (d03c34b4 <ui_file_refresh+0x1f8>)
d03c346a:	2220      	movs	r2, #32
d03c346c:	9905      	ldr	r1, [sp, #20]
d03c346e:	a810      	add	r0, sp, #64	; 0x40
d03c3470:	1859      	adds	r1, r3, r1
d03c3472:	f006 fa63 	bl	d03c993c <memcpy>
d03c3476:	2220      	movs	r2, #32
d03c3478:	4629      	mov	r1, r5
d03c347a:	4650      	mov	r0, sl
d03c347c:	f006 fa5e 	bl	d03c993c <memcpy>
d03c3480:	7822      	ldrb	r2, [r4, #0]
d03c3482:	a910      	add	r1, sp, #64	; 0x40
d03c3484:	4628      	mov	r0, r5
d03c3486:	f809 2006 	strb.w	r2, [r9, r6]
d03c348a:	2220      	movs	r2, #32
d03c348c:	f006 fa56 	bl	d03c993c <memcpy>
d03c3490:	f884 8000 	strb.w	r8, [r4]
d03c3494:	e001      	b.n	d03c349a <ui_file_refresh+0x1de>
d03c3496:	4542      	cmp	r2, r8
d03c3498:	d0e0      	beq.n	d03c345c <ui_file_refresh+0x1a0>
d03c349a:	3701      	adds	r7, #1
d03c349c:	3520      	adds	r5, #32
d03c349e:	3401      	adds	r4, #1
d03c34a0:	b2ff      	uxtb	r7, r7
d03c34a2:	e789      	b.n	d03c33b8 <ui_file_refresh+0xfc>
d03c34a4:	d03cda19 	.word	0xd03cda19
d03c34a8:	d03cb338 	.word	0xd03cb338
d03c34ac:	d03cda18 	.word	0xd03cda18
d03c34b0:	d03ce2b9 	.word	0xd03ce2b9
d03c34b4:	d03cdab9 	.word	0xd03cdab9
d03c34b8:	d03ce2ba 	.word	0xd03ce2ba
d03c34bc:	d03cda79 	.word	0xd03cda79
d03c34c0:	d03cb50b 	.word	0xd03cb50b
d03c34c4:	d03cb513 	.word	0xd03cb513
d03c34c8:	2001f000 	.word	0x2001f000
d03c34cc:	d03cb514 	.word	0xd03cb514
d03c34d0:	d03cb516 	.word	0xd03cb516
d03c34d4:	d03cb4ee 	.word	0xd03cb4ee
d03c34d8:	d03cb4e9 	.word	0xd03cb4e9
d03c34dc:	d03cb4f8 	.word	0xd03cb4f8
d03c34e0:	d03cb4f3 	.word	0xd03cb4f3

d03c34e4 <ui_create_button>:
d03c34e4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c34e8:	ed2d 8b02 	vpush	{d8}
d03c34ec:	b089      	sub	sp, #36	; 0x24
d03c34ee:	461d      	mov	r5, r3
d03c34f0:	468b      	mov	fp, r1
d03c34f2:	4616      	mov	r6, r2
d03c34f4:	9c15      	ldr	r4, [sp, #84]	; 0x54
d03c34f6:	f9bd a050 	ldrsh.w	sl, [sp, #80]	; 0x50
d03c34fa:	ee08 4a90 	vmov	s17, r4
d03c34fe:	f89d 405c 	ldrb.w	r4, [sp, #92]	; 0x5c
d03c3502:	f8cd a000 	str.w	sl, [sp]
d03c3506:	9401      	str	r4, [sp, #4]
d03c3508:	f89d 9058 	ldrb.w	r9, [sp, #88]	; 0x58
d03c350c:	f7fd fc10 	bl	d03c0d30 <ui_button_register>
d03c3510:	4b87      	ldr	r3, [pc, #540]	; (d03c3730 <ui_create_button+0x24c>)
d03c3512:	781b      	ldrb	r3, [r3, #0]
d03c3514:	07db      	lsls	r3, r3, #31
d03c3516:	f140 80fe 	bpl.w	d03c3716 <ui_create_button+0x232>
d03c351a:	4b86      	ldr	r3, [pc, #536]	; (d03c3734 <ui_create_button+0x250>)
d03c351c:	f9b3 2000 	ldrsh.w	r2, [r3]
d03c3520:	4b85      	ldr	r3, [pc, #532]	; (d03c3738 <ui_create_button+0x254>)
d03c3522:	4291      	cmp	r1, r2
d03c3524:	f9b3 3000 	ldrsh.w	r3, [r3]
d03c3528:	f300 80f5 	bgt.w	d03c3716 <ui_create_button+0x232>
d03c352c:	4429      	add	r1, r5
d03c352e:	428a      	cmp	r2, r1
d03c3530:	f280 80f1 	bge.w	d03c3716 <ui_create_button+0x232>
d03c3534:	429e      	cmp	r6, r3
d03c3536:	f300 80ee 	bgt.w	d03c3716 <ui_create_button+0x232>
d03c353a:	eb06 020a 	add.w	r2, r6, sl
d03c353e:	4293      	cmp	r3, r2
d03c3540:	f280 80e9 	bge.w	d03c3716 <ui_create_button+0x232>
d03c3544:	2301      	movs	r3, #1
d03c3546:	24e4      	movs	r4, #228	; 0xe4
d03c3548:	f1b9 0f00 	cmp.w	r9, #0
d03c354c:	9302      	str	r3, [sp, #8]
d03c354e:	bf14      	ite	ne
d03c3550:	23e8      	movne	r3, #232	; 0xe8
d03c3552:	23e7      	moveq	r3, #231	; 0xe7
d03c3554:	ee18 0a90 	vmov	r0, s17
d03c3558:	27e1      	movs	r7, #225	; 0xe1
d03c355a:	9307      	str	r3, [sp, #28]
d03c355c:	f006 fd4c 	bl	d03c9ff8 <strlen>
d03c3560:	00c0      	lsls	r0, r0, #3
d03c3562:	9401      	str	r4, [sp, #4]
d03c3564:	4c75      	ldr	r4, [pc, #468]	; (d03c373c <ui_create_button+0x258>)
d03c3566:	462a      	mov	r2, r5
d03c3568:	b203      	sxth	r3, r0
d03c356a:	4631      	mov	r1, r6
d03c356c:	4658      	mov	r0, fp
d03c356e:	9700      	str	r7, [sp, #0]
d03c3570:	9304      	str	r3, [sp, #16]
d03c3572:	4653      	mov	r3, sl
d03c3574:	f7fd fb88 	bl	d03c0c88 <ui_box>
d03c3578:	7b23      	ldrb	r3, [r4, #12]
d03c357a:	7b62      	ldrb	r2, [r4, #13]
d03c357c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3580:	7ba2      	ldrb	r2, [r4, #14]
d03c3582:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3586:	7be2      	ldrb	r2, [r4, #15]
d03c3588:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c358c:	9a02      	ldr	r2, [sp, #8]
d03c358e:	685b      	ldr	r3, [r3, #4]
d03c3590:	68db      	ldr	r3, [r3, #12]
d03c3592:	2a00      	cmp	r2, #0
d03c3594:	f040 80c6 	bne.w	d03c3724 <ui_create_button+0x240>
d03c3598:	f1b9 0f00 	cmp.w	r9, #0
d03c359c:	bf14      	ite	ne
d03c359e:	20e6      	movne	r0, #230	; 0xe6
d03c35a0:	20e7      	moveq	r0, #231	; 0xe7
d03c35a2:	4798      	blx	r3
d03c35a4:	7b23      	ldrb	r3, [r4, #12]
d03c35a6:	7b62      	ldrb	r2, [r4, #13]
d03c35a8:	fa1f fb8b 	uxth.w	fp, fp
d03c35ac:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c35b0:	7ba2      	ldrb	r2, [r4, #14]
d03c35b2:	f10b 0701 	add.w	r7, fp, #1
d03c35b6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c35ba:	7be2      	ldrb	r2, [r4, #15]
d03c35bc:	b23f      	sxth	r7, r7
d03c35be:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c35c2:	b2b2      	uxth	r2, r6
d03c35c4:	4638      	mov	r0, r7
d03c35c6:	685b      	ldr	r3, [r3, #4]
d03c35c8:	1c56      	adds	r6, r2, #1
d03c35ca:	9203      	str	r2, [sp, #12]
d03c35cc:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c35d0:	2302      	movs	r3, #2
d03c35d2:	b232      	sxth	r2, r6
d03c35d4:	ee08 2a10 	vmov	s16, r2
d03c35d8:	b2aa      	uxth	r2, r5
d03c35da:	f1a2 0902 	sub.w	r9, r2, #2
d03c35de:	ee18 1a10 	vmov	r1, s16
d03c35e2:	9205      	str	r2, [sp, #20]
d03c35e4:	fa0f f989 	sxth.w	r9, r9
d03c35e8:	464a      	mov	r2, r9
d03c35ea:	47c0      	blx	r8
d03c35ec:	7b23      	ldrb	r3, [r4, #12]
d03c35ee:	7b62      	ldrb	r2, [r4, #13]
d03c35f0:	4638      	mov	r0, r7
d03c35f2:	ee18 1a10 	vmov	r1, s16
d03c35f6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c35fa:	7ba2      	ldrb	r2, [r4, #14]
d03c35fc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3600:	7be2      	ldrb	r2, [r4, #15]
d03c3602:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3606:	fa1f f28a 	uxth.w	r2, sl
d03c360a:	685b      	ldr	r3, [r3, #4]
d03c360c:	f1a2 0802 	sub.w	r8, r2, #2
d03c3610:	9206      	str	r2, [sp, #24]
d03c3612:	685b      	ldr	r3, [r3, #4]
d03c3614:	2202      	movs	r2, #2
d03c3616:	fa0f f888 	sxth.w	r8, r8
d03c361a:	461e      	mov	r6, r3
d03c361c:	4643      	mov	r3, r8
d03c361e:	47b0      	blx	r6
d03c3620:	7b23      	ldrb	r3, [r4, #12]
d03c3622:	7b62      	ldrb	r2, [r4, #13]
d03c3624:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3628:	7ba2      	ldrb	r2, [r4, #14]
d03c362a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c362e:	7be2      	ldrb	r2, [r4, #15]
d03c3630:	4c42      	ldr	r4, [pc, #264]	; (d03c373c <ui_create_button+0x258>)
d03c3632:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3636:	9a02      	ldr	r2, [sp, #8]
d03c3638:	685b      	ldr	r3, [r3, #4]
d03c363a:	2a00      	cmp	r2, #0
d03c363c:	68db      	ldr	r3, [r3, #12]
d03c363e:	bf14      	ite	ne
d03c3640:	20e7      	movne	r0, #231	; 0xe7
d03c3642:	20e1      	moveq	r0, #225	; 0xe1
d03c3644:	4798      	blx	r3
d03c3646:	7b23      	ldrb	r3, [r4, #12]
d03c3648:	7b62      	ldrb	r2, [r4, #13]
d03c364a:	4638      	mov	r0, r7
d03c364c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3650:	7ba2      	ldrb	r2, [r4, #14]
d03c3652:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3656:	7be2      	ldrb	r2, [r4, #15]
d03c3658:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c365c:	9a06      	ldr	r2, [sp, #24]
d03c365e:	685b      	ldr	r3, [r3, #4]
d03c3660:	1ed1      	subs	r1, r2, #3
d03c3662:	9a03      	ldr	r2, [sp, #12]
d03c3664:	685b      	ldr	r3, [r3, #4]
d03c3666:	4411      	add	r1, r2
d03c3668:	464a      	mov	r2, r9
d03c366a:	461e      	mov	r6, r3
d03c366c:	2302      	movs	r3, #2
d03c366e:	b209      	sxth	r1, r1
d03c3670:	47b0      	blx	r6
d03c3672:	7b23      	ldrb	r3, [r4, #12]
d03c3674:	7b62      	ldrb	r2, [r4, #13]
d03c3676:	ee18 1a10 	vmov	r1, s16
d03c367a:	f1aa 0610 	sub.w	r6, sl, #16
d03c367e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3682:	7ba2      	ldrb	r2, [r4, #14]
d03c3684:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3688:	7be2      	ldrb	r2, [r4, #15]
d03c368a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c368e:	9a05      	ldr	r2, [sp, #20]
d03c3690:	1ed0      	subs	r0, r2, #3
d03c3692:	685b      	ldr	r3, [r3, #4]
d03c3694:	2202      	movs	r2, #2
d03c3696:	4458      	add	r0, fp
d03c3698:	685f      	ldr	r7, [r3, #4]
d03c369a:	4643      	mov	r3, r8
d03c369c:	b200      	sxth	r0, r0
d03c369e:	47b8      	blx	r7
d03c36a0:	1feb      	subs	r3, r5, #7
d03c36a2:	9a04      	ldr	r2, [sp, #16]
d03c36a4:	4293      	cmp	r3, r2
d03c36a6:	bfca      	itet	gt
d03c36a8:	9b04      	ldrgt	r3, [sp, #16]
d03c36aa:	f10b 0504 	addle.w	r5, fp, #4
d03c36ae:	1aed      	subgt	r5, r5, r3
d03c36b0:	9b03      	ldr	r3, [sp, #12]
d03c36b2:	bfc8      	it	gt
d03c36b4:	eb05 75d5 	addgt.w	r5, r5, r5, lsr #31
d03c36b8:	eb03 0666 	add.w	r6, r3, r6, asr #1
d03c36bc:	9b02      	ldr	r3, [sp, #8]
d03c36be:	bfc8      	it	gt
d03c36c0:	eb0b 0565 	addgt.w	r5, fp, r5, asr #1
d03c36c4:	b2b6      	uxth	r6, r6
d03c36c6:	b22d      	sxth	r5, r5
d03c36c8:	2b00      	cmp	r3, #0
d03c36ca:	d12d      	bne.n	d03c3728 <ui_create_button+0x244>
d03c36cc:	7b23      	ldrb	r3, [r4, #12]
d03c36ce:	b236      	sxth	r6, r6
d03c36d0:	7b62      	ldrb	r2, [r4, #13]
d03c36d2:	9807      	ldr	r0, [sp, #28]
d03c36d4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c36d8:	7ba2      	ldrb	r2, [r4, #14]
d03c36da:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c36de:	7be2      	ldrb	r2, [r4, #15]
d03c36e0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c36e4:	685b      	ldr	r3, [r3, #4]
d03c36e6:	68db      	ldr	r3, [r3, #12]
d03c36e8:	4798      	blx	r3
d03c36ea:	7b23      	ldrb	r3, [r4, #12]
d03c36ec:	7b62      	ldrb	r2, [r4, #13]
d03c36ee:	4631      	mov	r1, r6
d03c36f0:	4628      	mov	r0, r5
d03c36f2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c36f6:	7ba2      	ldrb	r2, [r4, #14]
d03c36f8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c36fc:	7be2      	ldrb	r2, [r4, #15]
d03c36fe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3702:	ee18 2a90 	vmov	r2, s17
d03c3706:	685b      	ldr	r3, [r3, #4]
d03c3708:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c370a:	b009      	add	sp, #36	; 0x24
d03c370c:	ecbd 8b02 	vpop	{d8}
d03c3710:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c3714:	4718      	bx	r3
d03c3716:	2300      	movs	r3, #0
d03c3718:	4599      	cmp	r9, r3
d03c371a:	9302      	str	r3, [sp, #8]
d03c371c:	bf14      	ite	ne
d03c371e:	24e5      	movne	r4, #229	; 0xe5
d03c3720:	24e3      	moveq	r4, #227	; 0xe3
d03c3722:	e714      	b.n	d03c354e <ui_create_button+0x6a>
d03c3724:	4638      	mov	r0, r7
d03c3726:	e73c      	b.n	d03c35a2 <ui_create_button+0xbe>
d03c3728:	3501      	adds	r5, #1
d03c372a:	3601      	adds	r6, #1
d03c372c:	b22d      	sxth	r5, r5
d03c372e:	e7cd      	b.n	d03c36cc <ui_create_button+0x1e8>
d03c3730:	d03ce2bb 	.word	0xd03ce2bb
d03c3734:	d03cf334 	.word	0xd03cf334
d03c3738:	d03cf336 	.word	0xd03cf336
d03c373c:	2001f000 	.word	0x2001f000

d03c3740 <ui_draw_home>:
d03c3740:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c3744:	4f88      	ldr	r7, [pc, #544]	; (d03c3968 <ui_draw_home+0x228>)
d03c3746:	b09d      	sub	sp, #116	; 0x74
d03c3748:	4b88      	ldr	r3, [pc, #544]	; (d03c396c <ui_draw_home+0x22c>)
d03c374a:	22c8      	movs	r2, #200	; 0xc8
d03c374c:	783c      	ldrb	r4, [r7, #0]
d03c374e:	2142      	movs	r1, #66	; 0x42
d03c3750:	4e87      	ldr	r6, [pc, #540]	; (d03c3970 <ui_draw_home+0x230>)
d03c3752:	200a      	movs	r0, #10
d03c3754:	9300      	str	r3, [sp, #0]
d03c3756:	2360      	movs	r3, #96	; 0x60
d03c3758:	5d35      	ldrb	r5, [r6, r4]
d03c375a:	f7fd fb03 	bl	d03c0d64 <ui_panel>
d03c375e:	4b85      	ldr	r3, [pc, #532]	; (d03c3974 <ui_draw_home+0x234>)
d03c3760:	22fa      	movs	r2, #250	; 0xfa
d03c3762:	2142      	movs	r1, #66	; 0x42
d03c3764:	20dc      	movs	r0, #220	; 0xdc
d03c3766:	9300      	str	r3, [sp, #0]
d03c3768:	2360      	movs	r3, #96	; 0x60
d03c376a:	f7fd fafb 	bl	d03c0d64 <ui_panel>
d03c376e:	2d80      	cmp	r5, #128	; 0x80
d03c3770:	f104 0301 	add.w	r3, r4, #1
d03c3774:	4c80      	ldr	r4, [pc, #512]	; (d03c3978 <ui_draw_home+0x238>)
d03c3776:	bf98      	it	ls
d03c3778:	4a80      	ldrls	r2, [pc, #512]	; (d03c397c <ui_draw_home+0x23c>)
d03c377a:	f04f 0160 	mov.w	r1, #96	; 0x60
d03c377e:	bf88      	it	hi
d03c3780:	4a7f      	ldrhi	r2, [pc, #508]	; (d03c3980 <ui_draw_home+0x240>)
d03c3782:	a804      	add	r0, sp, #16
d03c3784:	bf98      	it	ls
d03c3786:	f852 2025 	ldrls.w	r2, [r2, r5, lsl #2]
d03c378a:	f04f 0801 	mov.w	r8, #1
d03c378e:	9500      	str	r5, [sp, #0]
d03c3790:	46ba      	mov	sl, r7
d03c3792:	9201      	str	r2, [sp, #4]
d03c3794:	2520      	movs	r5, #32
d03c3796:	4a7b      	ldr	r2, [pc, #492]	; (d03c3984 <ui_draw_home+0x244>)
d03c3798:	2700      	movs	r7, #0
d03c379a:	f006 fbe7 	bl	d03c9f6c <sniprintf>
d03c379e:	7b23      	ldrb	r3, [r4, #12]
d03c37a0:	7b62      	ldrb	r2, [r4, #13]
d03c37a2:	20e8      	movs	r0, #232	; 0xe8
d03c37a4:	f8df b1d4 	ldr.w	fp, [pc, #468]	; d03c397c <ui_draw_home+0x23c>
d03c37a8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c37ac:	7ba2      	ldrb	r2, [r4, #14]
d03c37ae:	f8df 91fc 	ldr.w	r9, [pc, #508]	; d03c39ac <ui_draw_home+0x26c>
d03c37b2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c37b6:	7be2      	ldrb	r2, [r4, #15]
d03c37b8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c37bc:	685b      	ldr	r3, [r3, #4]
d03c37be:	68db      	ldr	r3, [r3, #12]
d03c37c0:	4798      	blx	r3
d03c37c2:	7b23      	ldrb	r3, [r4, #12]
d03c37c4:	7b62      	ldrb	r2, [r4, #13]
d03c37c6:	215c      	movs	r1, #92	; 0x5c
d03c37c8:	20e6      	movs	r0, #230	; 0xe6
d03c37ca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c37ce:	7ba2      	ldrb	r2, [r4, #14]
d03c37d0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c37d4:	7be2      	ldrb	r2, [r4, #15]
d03c37d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c37da:	aa04      	add	r2, sp, #16
d03c37dc:	685b      	ldr	r3, [r3, #4]
d03c37de:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c37e0:	4798      	blx	r3
d03c37e2:	4b69      	ldr	r3, [pc, #420]	; (d03c3988 <ui_draw_home+0x248>)
d03c37e4:	2282      	movs	r2, #130	; 0x82
d03c37e6:	21e6      	movs	r1, #230	; 0xe6
d03c37e8:	200a      	movs	r0, #10
d03c37ea:	f8cd 800c 	str.w	r8, [sp, #12]
d03c37ee:	9301      	str	r3, [sp, #4]
d03c37f0:	2330      	movs	r3, #48	; 0x30
d03c37f2:	9500      	str	r5, [sp, #0]
d03c37f4:	9702      	str	r7, [sp, #8]
d03c37f6:	f7ff fe75 	bl	d03c34e4 <ui_create_button>
d03c37fa:	4b64      	ldr	r3, [pc, #400]	; (d03c398c <ui_draw_home+0x24c>)
d03c37fc:	2282      	movs	r2, #130	; 0x82
d03c37fe:	f44f 718d 	mov.w	r1, #282	; 0x11a
d03c3802:	200b      	movs	r0, #11
d03c3804:	f8cd 800c 	str.w	r8, [sp, #12]
d03c3808:	9301      	str	r3, [sp, #4]
d03c380a:	2330      	movs	r3, #48	; 0x30
d03c380c:	9500      	str	r5, [sp, #0]
d03c380e:	9702      	str	r7, [sp, #8]
d03c3810:	f7ff fe68 	bl	d03c34e4 <ui_create_button>
d03c3814:	4b5e      	ldr	r3, [pc, #376]	; (d03c3990 <ui_draw_home+0x250>)
d03c3816:	2282      	movs	r2, #130	; 0x82
d03c3818:	f44f 71ab 	mov.w	r1, #342	; 0x156
d03c381c:	200c      	movs	r0, #12
d03c381e:	f8cd 800c 	str.w	r8, [sp, #12]
d03c3822:	9301      	str	r3, [sp, #4]
d03c3824:	2330      	movs	r3, #48	; 0x30
d03c3826:	9500      	str	r5, [sp, #0]
d03c3828:	9702      	str	r7, [sp, #8]
d03c382a:	f7ff fe5b 	bl	d03c34e4 <ui_create_button>
d03c382e:	4b59      	ldr	r3, [pc, #356]	; (d03c3994 <ui_draw_home+0x254>)
d03c3830:	2282      	movs	r2, #130	; 0x82
d03c3832:	f44f 71c5 	mov.w	r1, #394	; 0x18a
d03c3836:	200d      	movs	r0, #13
d03c3838:	f8cd 800c 	str.w	r8, [sp, #12]
d03c383c:	9301      	str	r3, [sp, #4]
d03c383e:	2330      	movs	r3, #48	; 0x30
d03c3840:	9500      	str	r5, [sp, #0]
d03c3842:	25c8      	movs	r5, #200	; 0xc8
d03c3844:	9702      	str	r7, [sp, #8]
d03c3846:	f7ff fe4d 	bl	d03c34e4 <ui_create_button>
d03c384a:	4b53      	ldr	r3, [pc, #332]	; (d03c3998 <ui_draw_home+0x258>)
d03c384c:	f8df 8160 	ldr.w	r8, [pc, #352]	; d03c39b0 <ui_draw_home+0x270>
d03c3850:	22de      	movs	r2, #222	; 0xde
d03c3852:	9300      	str	r3, [sp, #0]
d03c3854:	21ac      	movs	r1, #172	; 0xac
d03c3856:	2362      	movs	r3, #98	; 0x62
d03c3858:	200a      	movs	r0, #10
d03c385a:	f7fd fa83 	bl	d03c0d64 <ui_panel>
d03c385e:	f818 7b01 	ldrb.w	r7, [r8], #1
d03c3862:	a804      	add	r0, sp, #16
d03c3864:	5df2      	ldrb	r2, [r6, r7]
d03c3866:	1c7b      	adds	r3, r7, #1
d03c3868:	2a80      	cmp	r2, #128	; 0x80
d03c386a:	9200      	str	r2, [sp, #0]
d03c386c:	bf98      	it	ls
d03c386e:	f85b 1022 	ldrls.w	r1, [fp, r2, lsl #2]
d03c3872:	464a      	mov	r2, r9
d03c3874:	bf88      	it	hi
d03c3876:	4942      	ldrhi	r1, [pc, #264]	; (d03c3980 <ui_draw_home+0x240>)
d03c3878:	9101      	str	r1, [sp, #4]
d03c387a:	2160      	movs	r1, #96	; 0x60
d03c387c:	f006 fb76 	bl	d03c9f6c <sniprintf>
d03c3880:	7b23      	ldrb	r3, [r4, #12]
d03c3882:	7b62      	ldrb	r2, [r4, #13]
d03c3884:	f89a 0000 	ldrb.w	r0, [sl]
d03c3888:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c388c:	7ba2      	ldrb	r2, [r4, #14]
d03c388e:	42b8      	cmp	r0, r7
d03c3890:	bf0c      	ite	eq
d03c3892:	20e8      	moveq	r0, #232	; 0xe8
d03c3894:	20e7      	movne	r0, #231	; 0xe7
d03c3896:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c389a:	7be2      	ldrb	r2, [r4, #15]
d03c389c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c38a0:	685b      	ldr	r3, [r3, #4]
d03c38a2:	68db      	ldr	r3, [r3, #12]
d03c38a4:	4798      	blx	r3
d03c38a6:	7b23      	ldrb	r3, [r4, #12]
d03c38a8:	7b62      	ldrb	r2, [r4, #13]
d03c38aa:	4629      	mov	r1, r5
d03c38ac:	3510      	adds	r5, #16
d03c38ae:	2018      	movs	r0, #24
d03c38b0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c38b4:	7ba2      	ldrb	r2, [r4, #14]
d03c38b6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c38ba:	7be2      	ldrb	r2, [r4, #15]
d03c38bc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c38c0:	aa04      	add	r2, sp, #16
d03c38c2:	685b      	ldr	r3, [r3, #4]
d03c38c4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c38c6:	4798      	blx	r3
d03c38c8:	f5b5 7f84 	cmp.w	r5, #264	; 0x108
d03c38cc:	d1c7      	bne.n	d03c385e <ui_draw_home+0x11e>
d03c38ce:	4b33      	ldr	r3, [pc, #204]	; (d03c399c <ui_draw_home+0x25c>)
d03c38d0:	21ac      	movs	r1, #172	; 0xac
d03c38d2:	22e4      	movs	r2, #228	; 0xe4
d03c38d4:	20f2      	movs	r0, #242	; 0xf2
d03c38d6:	9300      	str	r3, [sp, #0]
d03c38d8:	2362      	movs	r3, #98	; 0x62
d03c38da:	f7fd fa43 	bl	d03c0d64 <ui_panel>
d03c38de:	7b23      	ldrb	r3, [r4, #12]
d03c38e0:	7b62      	ldrb	r2, [r4, #13]
d03c38e2:	20e7      	movs	r0, #231	; 0xe7
d03c38e4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c38e8:	7ba2      	ldrb	r2, [r4, #14]
d03c38ea:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c38ee:	7be2      	ldrb	r2, [r4, #15]
d03c38f0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c38f4:	685b      	ldr	r3, [r3, #4]
d03c38f6:	68db      	ldr	r3, [r3, #12]
d03c38f8:	4798      	blx	r3
d03c38fa:	7b23      	ldrb	r3, [r4, #12]
d03c38fc:	7b62      	ldrb	r2, [r4, #13]
d03c38fe:	21c8      	movs	r1, #200	; 0xc8
d03c3900:	f44f 7080 	mov.w	r0, #256	; 0x100
d03c3904:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3908:	7ba2      	ldrb	r2, [r4, #14]
d03c390a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c390e:	7be2      	ldrb	r2, [r4, #15]
d03c3910:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3914:	4a22      	ldr	r2, [pc, #136]	; (d03c39a0 <ui_draw_home+0x260>)
d03c3916:	685b      	ldr	r3, [r3, #4]
d03c3918:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c391a:	4798      	blx	r3
d03c391c:	7b23      	ldrb	r3, [r4, #12]
d03c391e:	7b62      	ldrb	r2, [r4, #13]
d03c3920:	21d8      	movs	r1, #216	; 0xd8
d03c3922:	f44f 7080 	mov.w	r0, #256	; 0x100
d03c3926:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c392a:	7ba2      	ldrb	r2, [r4, #14]
d03c392c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3930:	7be2      	ldrb	r2, [r4, #15]
d03c3932:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3936:	4a1b      	ldr	r2, [pc, #108]	; (d03c39a4 <ui_draw_home+0x264>)
d03c3938:	685b      	ldr	r3, [r3, #4]
d03c393a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c393c:	4798      	blx	r3
d03c393e:	7b23      	ldrb	r3, [r4, #12]
d03c3940:	7b62      	ldrb	r2, [r4, #13]
d03c3942:	21ec      	movs	r1, #236	; 0xec
d03c3944:	f44f 7080 	mov.w	r0, #256	; 0x100
d03c3948:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c394c:	7ba2      	ldrb	r2, [r4, #14]
d03c394e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3952:	7be2      	ldrb	r2, [r4, #15]
d03c3954:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3958:	4a13      	ldr	r2, [pc, #76]	; (d03c39a8 <ui_draw_home+0x268>)
d03c395a:	685b      	ldr	r3, [r3, #4]
d03c395c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c395e:	4798      	blx	r3
d03c3960:	b01d      	add	sp, #116	; 0x74
d03c3962:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c3966:	bf00      	nop
d03c3968:	d03cf36a 	.word	0xd03cf36a
d03c396c:	d03cb532 	.word	0xd03cb532
d03c3970:	d03ccd04 	.word	0xd03ccd04
d03c3974:	d03cb53e 	.word	0xd03cb53e
d03c3978:	2001f000 	.word	0x2001f000
d03c397c:	d03cc27c 	.word	0xd03cc27c
d03c3980:	d03cb529 	.word	0xd03cb529
d03c3984:	d03cb54f 	.word	0xd03cb54f
d03c3988:	d03cb562 	.word	0xd03cb562
d03c398c:	d03cb565 	.word	0xd03cb565
d03c3990:	d03cb568 	.word	0xd03cb568
d03c3994:	d03cb56b 	.word	0xd03cb56b
d03c3998:	d03cb56e 	.word	0xd03cb56e
d03c399c:	d03cb593 	.word	0xd03cb593
d03c39a0:	d03cb59b 	.word	0xd03cb59b
d03c39a4:	d03cb5b2 	.word	0xd03cb5b2
d03c39a8:	d03cb5c5 	.word	0xd03cb5c5
d03c39ac:	d03cb57d 	.word	0xd03cb57d
d03c39b0:	d03cf344 	.word	0xd03cf344

d03c39b4 <ui_draw_confirm_modal.part.0>:
d03c39b4:	b530      	push	{r4, r5, lr}
d03c39b6:	211a      	movs	r1, #26
d03c39b8:	b085      	sub	sp, #20
d03c39ba:	231f      	movs	r3, #31
d03c39bc:	4c5c      	ldr	r4, [pc, #368]	; (d03c3b30 <ui_draw_confirm_modal.part.0+0x17c>)
d03c39be:	f44f 7290 	mov.w	r2, #288	; 0x120
d03c39c2:	2060      	movs	r0, #96	; 0x60
d03c39c4:	e9cd 1300 	strd	r1, r3, [sp]
d03c39c8:	2170      	movs	r1, #112	; 0x70
d03c39ca:	236c      	movs	r3, #108	; 0x6c
d03c39cc:	f7fd f95c 	bl	d03c0c88 <ui_box>
d03c39d0:	7b23      	ldrb	r3, [r4, #12]
d03c39d2:	7b62      	ldrb	r2, [r4, #13]
d03c39d4:	2014      	movs	r0, #20
d03c39d6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c39da:	7ba2      	ldrb	r2, [r4, #14]
d03c39dc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c39e0:	7be2      	ldrb	r2, [r4, #15]
d03c39e2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c39e6:	685b      	ldr	r3, [r3, #4]
d03c39e8:	68db      	ldr	r3, [r3, #12]
d03c39ea:	4798      	blx	r3
d03c39ec:	7b23      	ldrb	r3, [r4, #12]
d03c39ee:	7b62      	ldrb	r2, [r4, #13]
d03c39f0:	2171      	movs	r1, #113	; 0x71
d03c39f2:	2061      	movs	r0, #97	; 0x61
d03c39f4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c39f8:	7ba2      	ldrb	r2, [r4, #14]
d03c39fa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c39fe:	7be2      	ldrb	r2, [r4, #15]
d03c3a00:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3a04:	f44f 728f 	mov.w	r2, #286	; 0x11e
d03c3a08:	685b      	ldr	r3, [r3, #4]
d03c3a0a:	685d      	ldr	r5, [r3, #4]
d03c3a0c:	2314      	movs	r3, #20
d03c3a0e:	47a8      	blx	r5
d03c3a10:	7b23      	ldrb	r3, [r4, #12]
d03c3a12:	7b62      	ldrb	r2, [r4, #13]
d03c3a14:	201e      	movs	r0, #30
d03c3a16:	4d47      	ldr	r5, [pc, #284]	; (d03c3b34 <ui_draw_confirm_modal.part.0+0x180>)
d03c3a18:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3a1c:	7ba2      	ldrb	r2, [r4, #14]
d03c3a1e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3a22:	7be2      	ldrb	r2, [r4, #15]
d03c3a24:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3a28:	685b      	ldr	r3, [r3, #4]
d03c3a2a:	68db      	ldr	r3, [r3, #12]
d03c3a2c:	4798      	blx	r3
d03c3a2e:	7b23      	ldrb	r3, [r4, #12]
d03c3a30:	7b62      	ldrb	r2, [r4, #13]
d03c3a32:	2175      	movs	r1, #117	; 0x75
d03c3a34:	206e      	movs	r0, #110	; 0x6e
d03c3a36:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3a3a:	7ba2      	ldrb	r2, [r4, #14]
d03c3a3c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3a40:	7be2      	ldrb	r2, [r4, #15]
d03c3a42:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3a46:	4a3c      	ldr	r2, [pc, #240]	; (d03c3b38 <ui_draw_confirm_modal.part.0+0x184>)
d03c3a48:	685b      	ldr	r3, [r3, #4]
d03c3a4a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c3a4c:	4798      	blx	r3
d03c3a4e:	7b23      	ldrb	r3, [r4, #12]
d03c3a50:	7b62      	ldrb	r2, [r4, #13]
d03c3a52:	2019      	movs	r0, #25
d03c3a54:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3a58:	7ba2      	ldrb	r2, [r4, #14]
d03c3a5a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3a5e:	7be2      	ldrb	r2, [r4, #15]
d03c3a60:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3a64:	685b      	ldr	r3, [r3, #4]
d03c3a66:	68db      	ldr	r3, [r3, #12]
d03c3a68:	4798      	blx	r3
d03c3a6a:	782b      	ldrb	r3, [r5, #0]
d03c3a6c:	2b01      	cmp	r3, #1
d03c3a6e:	d13d      	bne.n	d03c3aec <ui_draw_confirm_modal.part.0+0x138>
d03c3a70:	7b23      	ldrb	r3, [r4, #12]
d03c3a72:	2192      	movs	r1, #146	; 0x92
d03c3a74:	7b62      	ldrb	r2, [r4, #13]
d03c3a76:	2074      	movs	r0, #116	; 0x74
d03c3a78:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3a7c:	7ba2      	ldrb	r2, [r4, #14]
d03c3a7e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3a82:	7be2      	ldrb	r2, [r4, #15]
d03c3a84:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3a88:	4a2c      	ldr	r2, [pc, #176]	; (d03c3b3c <ui_draw_confirm_modal.part.0+0x188>)
d03c3a8a:	685b      	ldr	r3, [r3, #4]
d03c3a8c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c3a8e:	4798      	blx	r3
d03c3a90:	7b23      	ldrb	r3, [r4, #12]
d03c3a92:	7b62      	ldrb	r2, [r4, #13]
d03c3a94:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3a98:	7ba2      	ldrb	r2, [r4, #14]
d03c3a9a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3a9e:	7be2      	ldrb	r2, [r4, #15]
d03c3aa0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3aa4:	4a26      	ldr	r2, [pc, #152]	; (d03c3b40 <ui_draw_confirm_modal.part.0+0x18c>)
d03c3aa6:	685b      	ldr	r3, [r3, #4]
d03c3aa8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c3aaa:	21a2      	movs	r1, #162	; 0xa2
d03c3aac:	2074      	movs	r0, #116	; 0x74
d03c3aae:	4798      	blx	r3
d03c3ab0:	782b      	ldrb	r3, [r5, #0]
d03c3ab2:	2b02      	cmp	r3, #2
d03c3ab4:	d03a      	beq.n	d03c3b2c <ui_draw_confirm_modal.part.0+0x178>
d03c3ab6:	4b23      	ldr	r3, [pc, #140]	; (d03c3b44 <ui_draw_confirm_modal.part.0+0x190>)
d03c3ab8:	2400      	movs	r4, #0
d03c3aba:	251c      	movs	r5, #28
d03c3abc:	9301      	str	r3, [sp, #4]
d03c3abe:	22b2      	movs	r2, #178	; 0xb2
d03c3ac0:	235c      	movs	r3, #92	; 0x5c
d03c3ac2:	2184      	movs	r1, #132	; 0x84
d03c3ac4:	2026      	movs	r0, #38	; 0x26
d03c3ac6:	9403      	str	r4, [sp, #12]
d03c3ac8:	9402      	str	r4, [sp, #8]
d03c3aca:	9500      	str	r5, [sp, #0]
d03c3acc:	f7ff fd0a 	bl	d03c34e4 <ui_create_button>
d03c3ad0:	4b1d      	ldr	r3, [pc, #116]	; (d03c3b48 <ui_draw_confirm_modal.part.0+0x194>)
d03c3ad2:	22b2      	movs	r2, #178	; 0xb2
d03c3ad4:	f44f 7180 	mov.w	r1, #256	; 0x100
d03c3ad8:	9301      	str	r3, [sp, #4]
d03c3ada:	2027      	movs	r0, #39	; 0x27
d03c3adc:	235c      	movs	r3, #92	; 0x5c
d03c3ade:	9403      	str	r4, [sp, #12]
d03c3ae0:	9402      	str	r4, [sp, #8]
d03c3ae2:	9500      	str	r5, [sp, #0]
d03c3ae4:	f7ff fcfe 	bl	d03c34e4 <ui_create_button>
d03c3ae8:	b005      	add	sp, #20
d03c3aea:	bd30      	pop	{r4, r5, pc}
d03c3aec:	2b02      	cmp	r3, #2
d03c3aee:	d1e2      	bne.n	d03c3ab6 <ui_draw_confirm_modal.part.0+0x102>
d03c3af0:	7b23      	ldrb	r3, [r4, #12]
d03c3af2:	2192      	movs	r1, #146	; 0x92
d03c3af4:	7b62      	ldrb	r2, [r4, #13]
d03c3af6:	2074      	movs	r0, #116	; 0x74
d03c3af8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3afc:	7ba2      	ldrb	r2, [r4, #14]
d03c3afe:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3b02:	7be2      	ldrb	r2, [r4, #15]
d03c3b04:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3b08:	4a10      	ldr	r2, [pc, #64]	; (d03c3b4c <ui_draw_confirm_modal.part.0+0x198>)
d03c3b0a:	685b      	ldr	r3, [r3, #4]
d03c3b0c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c3b0e:	4798      	blx	r3
d03c3b10:	7b23      	ldrb	r3, [r4, #12]
d03c3b12:	7b62      	ldrb	r2, [r4, #13]
d03c3b14:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3b18:	7ba2      	ldrb	r2, [r4, #14]
d03c3b1a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3b1e:	7be2      	ldrb	r2, [r4, #15]
d03c3b20:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3b24:	4a0a      	ldr	r2, [pc, #40]	; (d03c3b50 <ui_draw_confirm_modal.part.0+0x19c>)
d03c3b26:	685b      	ldr	r3, [r3, #4]
d03c3b28:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c3b2a:	e7be      	b.n	d03c3aaa <ui_draw_confirm_modal.part.0+0xf6>
d03c3b2c:	4b09      	ldr	r3, [pc, #36]	; (d03c3b54 <ui_draw_confirm_modal.part.0+0x1a0>)
d03c3b2e:	e7c3      	b.n	d03c3ab8 <ui_draw_confirm_modal.part.0+0x104>
d03c3b30:	2001f000 	.word	0x2001f000
d03c3b34:	d03cd9d3 	.word	0xd03cd9d3
d03c3b38:	d03cb5ea 	.word	0xd03cb5ea
d03c3b3c:	d03cb5f9 	.word	0xd03cb5f9
d03c3b40:	d03cb615 	.word	0xd03cb615
d03c3b44:	d03cb5dc 	.word	0xd03cb5dc
d03c3b48:	d03cb661 	.word	0xd03cb661
d03c3b4c:	d03cb62e 	.word	0xd03cb62e
d03c3b50:	d03cb648 	.word	0xd03cb648
d03c3b54:	d03cb5e4 	.word	0xd03cb5e4

d03c3b58 <ui_draw_dialog>:
d03c3b58:	4baa      	ldr	r3, [pc, #680]	; (d03c3e04 <ui_draw_dialog+0x2ac>)
d03c3b5a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c3b5e:	781e      	ldrb	r6, [r3, #0]
d03c3b60:	b093      	sub	sp, #76	; 0x4c
d03c3b62:	2e02      	cmp	r6, #2
d03c3b64:	f000 82b8 	beq.w	d03c40d8 <ui_draw_dialog+0x580>
d03c3b68:	2e03      	cmp	r6, #3
d03c3b6a:	f000 845c 	beq.w	d03c4426 <ui_draw_dialog+0x8ce>
d03c3b6e:	2e01      	cmp	r6, #1
d03c3b70:	f040 8144 	bne.w	d03c3dfc <ui_draw_dialog+0x2a4>
d03c3b74:	4ba4      	ldr	r3, [pc, #656]	; (d03c3e08 <ui_draw_dialog+0x2b0>)
d03c3b76:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c3b7a:	4ca4      	ldr	r4, [pc, #656]	; (d03c3e0c <ui_draw_dialog+0x2b4>)
d03c3b7c:	7819      	ldrb	r1, [r3, #0]
d03c3b7e:	469b      	mov	fp, r3
d03c3b80:	2907      	cmp	r1, #7
d03c3b82:	bf8a      	itet	hi
d03c3b84:	3907      	subhi	r1, #7
d03c3b86:	2300      	movls	r3, #0
d03c3b88:	b2cb      	uxtbhi	r3, r1
d03c3b8a:	211a      	movs	r1, #26
d03c3b8c:	9306      	str	r3, [sp, #24]
d03c3b8e:	231f      	movs	r3, #31
d03c3b90:	e9cd 1300 	strd	r1, r3, [sp]
d03c3b94:	2100      	movs	r1, #0
d03c3b96:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03c3b9a:	4608      	mov	r0, r1
d03c3b9c:	f7fd f874 	bl	d03c0c88 <ui_box>
d03c3ba0:	7b23      	ldrb	r3, [r4, #12]
d03c3ba2:	7b62      	ldrb	r2, [r4, #13]
d03c3ba4:	2014      	movs	r0, #20
d03c3ba6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3baa:	7ba2      	ldrb	r2, [r4, #14]
d03c3bac:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3bb0:	7be2      	ldrb	r2, [r4, #15]
d03c3bb2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3bb6:	685b      	ldr	r3, [r3, #4]
d03c3bb8:	68db      	ldr	r3, [r3, #12]
d03c3bba:	4798      	blx	r3
d03c3bbc:	7b23      	ldrb	r3, [r4, #12]
d03c3bbe:	7b62      	ldrb	r2, [r4, #13]
d03c3bc0:	2101      	movs	r1, #1
d03c3bc2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3bc6:	7ba2      	ldrb	r2, [r4, #14]
d03c3bc8:	4608      	mov	r0, r1
d03c3bca:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3bce:	7be2      	ldrb	r2, [r4, #15]
d03c3bd0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3bd4:	f44f 72ef 	mov.w	r2, #478	; 0x1de
d03c3bd8:	685b      	ldr	r3, [r3, #4]
d03c3bda:	685d      	ldr	r5, [r3, #4]
d03c3bdc:	231c      	movs	r3, #28
d03c3bde:	47a8      	blx	r5
d03c3be0:	7b23      	ldrb	r3, [r4, #12]
d03c3be2:	7b62      	ldrb	r2, [r4, #13]
d03c3be4:	201e      	movs	r0, #30
d03c3be6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3bea:	7ba2      	ldrb	r2, [r4, #14]
d03c3bec:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3bf0:	7be2      	ldrb	r2, [r4, #15]
d03c3bf2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3bf6:	685b      	ldr	r3, [r3, #4]
d03c3bf8:	68db      	ldr	r3, [r3, #12]
d03c3bfa:	4798      	blx	r3
d03c3bfc:	7b23      	ldrb	r3, [r4, #12]
d03c3bfe:	7b62      	ldrb	r2, [r4, #13]
d03c3c00:	2107      	movs	r1, #7
d03c3c02:	2010      	movs	r0, #16
d03c3c04:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3c08:	7ba2      	ldrb	r2, [r4, #14]
d03c3c0a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3c0e:	7be2      	ldrb	r2, [r4, #15]
d03c3c10:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3c14:	4a7e      	ldr	r2, [pc, #504]	; (d03c3e10 <ui_draw_dialog+0x2b8>)
d03c3c16:	685b      	ldr	r3, [r3, #4]
d03c3c18:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c3c1a:	4798      	blx	r3
d03c3c1c:	7b23      	ldrb	r3, [r4, #12]
d03c3c1e:	7b62      	ldrb	r2, [r4, #13]
d03c3c20:	2018      	movs	r0, #24
d03c3c22:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3c26:	7ba2      	ldrb	r2, [r4, #14]
d03c3c28:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3c2c:	7be2      	ldrb	r2, [r4, #15]
d03c3c2e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3c32:	685b      	ldr	r3, [r3, #4]
d03c3c34:	68db      	ldr	r3, [r3, #12]
d03c3c36:	4798      	blx	r3
d03c3c38:	7b23      	ldrb	r3, [r4, #12]
d03c3c3a:	7b62      	ldrb	r2, [r4, #13]
d03c3c3c:	2078      	movs	r0, #120	; 0x78
d03c3c3e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3c42:	7ba2      	ldrb	r2, [r4, #14]
d03c3c44:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3c48:	7be2      	ldrb	r2, [r4, #15]
d03c3c4a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3c4e:	4a71      	ldr	r2, [pc, #452]	; (d03c3e14 <ui_draw_dialog+0x2bc>)
d03c3c50:	685b      	ldr	r3, [r3, #4]
d03c3c52:	6add      	ldr	r5, [r3, #44]	; 0x2c
d03c3c54:	4b70      	ldr	r3, [pc, #448]	; (d03c3e18 <ui_draw_dialog+0x2c0>)
d03c3c56:	7819      	ldrb	r1, [r3, #0]
d03c3c58:	2900      	cmp	r1, #0
d03c3c5a:	bf18      	it	ne
d03c3c5c:	461a      	movne	r2, r3
d03c3c5e:	2107      	movs	r1, #7
d03c3c60:	47a8      	blx	r5
d03c3c62:	f89b 3000 	ldrb.w	r3, [fp]
d03c3c66:	2b00      	cmp	r3, #0
d03c3c68:	f040 80ea 	bne.w	d03c3e40 <ui_draw_dialog+0x2e8>
d03c3c6c:	7b23      	ldrb	r3, [r4, #12]
d03c3c6e:	2019      	movs	r0, #25
d03c3c70:	7b62      	ldrb	r2, [r4, #13]
d03c3c72:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3c76:	7ba2      	ldrb	r2, [r4, #14]
d03c3c78:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3c7c:	7be2      	ldrb	r2, [r4, #15]
d03c3c7e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3c82:	685b      	ldr	r3, [r3, #4]
d03c3c84:	68db      	ldr	r3, [r3, #12]
d03c3c86:	4798      	blx	r3
d03c3c88:	7b23      	ldrb	r3, [r4, #12]
d03c3c8a:	7b62      	ldrb	r2, [r4, #13]
d03c3c8c:	2188      	movs	r1, #136	; 0x88
d03c3c8e:	2038      	movs	r0, #56	; 0x38
d03c3c90:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3c94:	7ba2      	ldrb	r2, [r4, #14]
d03c3c96:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3c9a:	7be2      	ldrb	r2, [r4, #15]
d03c3c9c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3ca0:	4a5e      	ldr	r2, [pc, #376]	; (d03c3e1c <ui_draw_dialog+0x2c4>)
d03c3ca2:	685b      	ldr	r3, [r3, #4]
d03c3ca4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c3ca6:	4798      	blx	r3
d03c3ca8:	7b23      	ldrb	r3, [r4, #12]
d03c3caa:	2014      	movs	r0, #20
d03c3cac:	7b62      	ldrb	r2, [r4, #13]
d03c3cae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3cb2:	7ba2      	ldrb	r2, [r4, #14]
d03c3cb4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3cb8:	7be2      	ldrb	r2, [r4, #15]
d03c3cba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3cbe:	685b      	ldr	r3, [r3, #4]
d03c3cc0:	68db      	ldr	r3, [r3, #12]
d03c3cc2:	4798      	blx	r3
d03c3cc4:	7b23      	ldrb	r3, [r4, #12]
d03c3cc6:	7b62      	ldrb	r2, [r4, #13]
d03c3cc8:	212e      	movs	r1, #46	; 0x2e
d03c3cca:	f44f 70d2 	mov.w	r0, #420	; 0x1a4
d03c3cce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3cd2:	7ba2      	ldrb	r2, [r4, #14]
d03c3cd4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3cd8:	7be2      	ldrb	r2, [r4, #15]
d03c3cda:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3cde:	220c      	movs	r2, #12
d03c3ce0:	685b      	ldr	r3, [r3, #4]
d03c3ce2:	685d      	ldr	r5, [r3, #4]
d03c3ce4:	23e0      	movs	r3, #224	; 0xe0
d03c3ce6:	47a8      	blx	r5
d03c3ce8:	7b23      	ldrb	r3, [r4, #12]
d03c3cea:	7b62      	ldrb	r2, [r4, #13]
d03c3cec:	201c      	movs	r0, #28
d03c3cee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3cf2:	7ba2      	ldrb	r2, [r4, #14]
d03c3cf4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3cf8:	7be2      	ldrb	r2, [r4, #15]
d03c3cfa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3cfe:	685b      	ldr	r3, [r3, #4]
d03c3d00:	68db      	ldr	r3, [r3, #12]
d03c3d02:	4798      	blx	r3
d03c3d04:	9b06      	ldr	r3, [sp, #24]
d03c3d06:	2b00      	cmp	r3, #0
d03c3d08:	f040 81af 	bne.w	d03c406a <ui_draw_dialog+0x512>
d03c3d0c:	7b23      	ldrb	r3, [r4, #12]
d03c3d0e:	212e      	movs	r1, #46	; 0x2e
d03c3d10:	7b62      	ldrb	r2, [r4, #13]
d03c3d12:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3d16:	7ba2      	ldrb	r2, [r4, #14]
d03c3d18:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3d1c:	7be2      	ldrb	r2, [r4, #15]
d03c3d1e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3d22:	2208      	movs	r2, #8
d03c3d24:	685b      	ldr	r3, [r3, #4]
d03c3d26:	685c      	ldr	r4, [r3, #4]
d03c3d28:	23e0      	movs	r3, #224	; 0xe0
d03c3d2a:	f44f 70d3 	mov.w	r0, #422	; 0x1a6
d03c3d2e:	2520      	movs	r5, #32
d03c3d30:	47a0      	blx	r4
d03c3d32:	2601      	movs	r6, #1
d03c3d34:	2400      	movs	r4, #0
d03c3d36:	4b3a      	ldr	r3, [pc, #232]	; (d03c3e20 <ui_draw_dialog+0x2c8>)
d03c3d38:	223a      	movs	r2, #58	; 0x3a
d03c3d3a:	f44f 71db 	mov.w	r1, #438	; 0x1b6
d03c3d3e:	2028      	movs	r0, #40	; 0x28
d03c3d40:	9301      	str	r3, [sp, #4]
d03c3d42:	9500      	str	r5, [sp, #0]
d03c3d44:	462b      	mov	r3, r5
d03c3d46:	9603      	str	r6, [sp, #12]
d03c3d48:	9402      	str	r4, [sp, #8]
d03c3d4a:	f7ff fbcb 	bl	d03c34e4 <ui_create_button>
d03c3d4e:	4b35      	ldr	r3, [pc, #212]	; (d03c3e24 <ui_draw_dialog+0x2cc>)
d03c3d50:	2260      	movs	r2, #96	; 0x60
d03c3d52:	f44f 71db 	mov.w	r1, #438	; 0x1b6
d03c3d56:	2029      	movs	r0, #41	; 0x29
d03c3d58:	9301      	str	r3, [sp, #4]
d03c3d5a:	9500      	str	r5, [sp, #0]
d03c3d5c:	462b      	mov	r3, r5
d03c3d5e:	9603      	str	r6, [sp, #12]
d03c3d60:	251e      	movs	r5, #30
d03c3d62:	9402      	str	r4, [sp, #8]
d03c3d64:	f7ff fbbe 	bl	d03c34e4 <ui_create_button>
d03c3d68:	4b2f      	ldr	r3, [pc, #188]	; (d03c3e28 <ui_draw_dialog+0x2d0>)
d03c3d6a:	f44f 728d 	mov.w	r2, #282	; 0x11a
d03c3d6e:	210a      	movs	r1, #10
d03c3d70:	202a      	movs	r0, #42	; 0x2a
d03c3d72:	9301      	str	r3, [sp, #4]
d03c3d74:	9403      	str	r4, [sp, #12]
d03c3d76:	2332      	movs	r3, #50	; 0x32
d03c3d78:	9402      	str	r4, [sp, #8]
d03c3d7a:	9500      	str	r5, [sp, #0]
d03c3d7c:	f7ff fbb2 	bl	d03c34e4 <ui_create_button>
d03c3d80:	4b2a      	ldr	r3, [pc, #168]	; (d03c3e2c <ui_draw_dialog+0x2d4>)
d03c3d82:	f44f 728d 	mov.w	r2, #282	; 0x11a
d03c3d86:	2142      	movs	r1, #66	; 0x42
d03c3d88:	202b      	movs	r0, #43	; 0x2b
d03c3d8a:	9301      	str	r3, [sp, #4]
d03c3d8c:	9403      	str	r4, [sp, #12]
d03c3d8e:	2348      	movs	r3, #72	; 0x48
d03c3d90:	9402      	str	r4, [sp, #8]
d03c3d92:	9500      	str	r5, [sp, #0]
d03c3d94:	f7ff fba6 	bl	d03c34e4 <ui_create_button>
d03c3d98:	4b25      	ldr	r3, [pc, #148]	; (d03c3e30 <ui_draw_dialog+0x2d8>)
d03c3d9a:	f44f 728d 	mov.w	r2, #282	; 0x11a
d03c3d9e:	2190      	movs	r1, #144	; 0x90
d03c3da0:	202c      	movs	r0, #44	; 0x2c
d03c3da2:	9301      	str	r3, [sp, #4]
d03c3da4:	9403      	str	r4, [sp, #12]
d03c3da6:	233e      	movs	r3, #62	; 0x3e
d03c3da8:	9402      	str	r4, [sp, #8]
d03c3daa:	9500      	str	r5, [sp, #0]
d03c3dac:	f7ff fb9a 	bl	d03c34e4 <ui_create_button>
d03c3db0:	4b20      	ldr	r3, [pc, #128]	; (d03c3e34 <ui_draw_dialog+0x2dc>)
d03c3db2:	f44f 728d 	mov.w	r2, #282	; 0x11a
d03c3db6:	21d4      	movs	r1, #212	; 0xd4
d03c3db8:	202d      	movs	r0, #45	; 0x2d
d03c3dba:	9301      	str	r3, [sp, #4]
d03c3dbc:	9403      	str	r4, [sp, #12]
d03c3dbe:	2346      	movs	r3, #70	; 0x46
d03c3dc0:	9402      	str	r4, [sp, #8]
d03c3dc2:	9500      	str	r5, [sp, #0]
d03c3dc4:	f7ff fb8e 	bl	d03c34e4 <ui_create_button>
d03c3dc8:	4b1b      	ldr	r3, [pc, #108]	; (d03c3e38 <ui_draw_dialog+0x2e0>)
d03c3dca:	f44f 728d 	mov.w	r2, #282	; 0x11a
d03c3dce:	f44f 7190 	mov.w	r1, #288	; 0x120
d03c3dd2:	202e      	movs	r0, #46	; 0x2e
d03c3dd4:	9301      	str	r3, [sp, #4]
d03c3dd6:	9403      	str	r4, [sp, #12]
d03c3dd8:	233e      	movs	r3, #62	; 0x3e
d03c3dda:	9402      	str	r4, [sp, #8]
d03c3ddc:	9500      	str	r5, [sp, #0]
d03c3dde:	f7ff fb81 	bl	d03c34e4 <ui_create_button>
d03c3de2:	4b16      	ldr	r3, [pc, #88]	; (d03c3e3c <ui_draw_dialog+0x2e4>)
d03c3de4:	f44f 728d 	mov.w	r2, #282	; 0x11a
d03c3de8:	f44f 71c0 	mov.w	r1, #384	; 0x180
d03c3dec:	9301      	str	r3, [sp, #4]
d03c3dee:	202f      	movs	r0, #47	; 0x2f
d03c3df0:	2354      	movs	r3, #84	; 0x54
d03c3df2:	9403      	str	r4, [sp, #12]
d03c3df4:	9402      	str	r4, [sp, #8]
d03c3df6:	9500      	str	r5, [sp, #0]
d03c3df8:	f7ff fb74 	bl	d03c34e4 <ui_create_button>
d03c3dfc:	b013      	add	sp, #76	; 0x4c
d03c3dfe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c3e02:	bf00      	nop
d03c3e04:	d03cd9d4 	.word	0xd03cd9d4
d03c3e08:	d03cda18 	.word	0xd03cda18
d03c3e0c:	2001f000 	.word	0x2001f000
d03c3e10:	d03cb66a 	.word	0xd03cb66a
d03c3e14:	d03cb338 	.word	0xd03cb338
d03c3e18:	d03cda19 	.word	0xd03cda19
d03c3e1c:	d03cb676 	.word	0xd03cb676
d03c3e20:	d03cb6a1 	.word	0xd03cb6a1
d03c3e24:	d03cb6a4 	.word	0xd03cb6a4
d03c3e28:	d03cb6a7 	.word	0xd03cb6a7
d03c3e2c:	d03cb6aa 	.word	0xd03cb6aa
d03c3e30:	d03cb6d8 	.word	0xd03cb6d8
d03c3e34:	d03cb6e1 	.word	0xd03cb6e1
d03c3e38:	d03cb6af 	.word	0xd03cb6af
d03c3e3c:	d03cb661 	.word	0xd03cb661
d03c3e40:	264b      	movs	r6, #75	; 0x4b
d03c3e42:	2700      	movs	r7, #0
d03c3e44:	4b99      	ldr	r3, [pc, #612]	; (d03c40ac <ui_draw_dialog+0x554>)
d03c3e46:	781d      	ldrb	r5, [r3, #0]
d03c3e48:	f89b 3000 	ldrb.w	r3, [fp]
d03c3e4c:	443d      	add	r5, r7
d03c3e4e:	b2ed      	uxtb	r5, r5
d03c3e50:	42ab      	cmp	r3, r5
d03c3e52:	f67f af29 	bls.w	d03c3ca8 <ui_draw_dialog+0x150>
d03c3e56:	4b96      	ldr	r3, [pc, #600]	; (d03c40b0 <ui_draw_dialog+0x558>)
d03c3e58:	5d5a      	ldrb	r2, [r3, r5]
d03c3e5a:	4b96      	ldr	r3, [pc, #600]	; (d03c40b4 <ui_draw_dialog+0x55c>)
d03c3e5c:	2a05      	cmp	r2, #5
d03c3e5e:	eb03 1345 	add.w	r3, r3, r5, lsl #5
d03c3e62:	f040 80ec 	bne.w	d03c403e <ui_draw_dialog+0x4e6>
d03c3e66:	4a94      	ldr	r2, [pc, #592]	; (d03c40b8 <ui_draw_dialog+0x560>)
d03c3e68:	2128      	movs	r1, #40	; 0x28
d03c3e6a:	a808      	add	r0, sp, #32
d03c3e6c:	f006 f87e 	bl	d03c9f6c <sniprintf>
d03c3e70:	4b92      	ldr	r3, [pc, #584]	; (d03c40bc <ui_draw_dialog+0x564>)
d03c3e72:	f107 00b4 	add.w	r0, r7, #180	; 0xb4
d03c3e76:	f1a6 0a1d 	sub.w	sl, r6, #29
d03c3e7a:	781b      	ldrb	r3, [r3, #0]
d03c3e7c:	b280      	uxth	r0, r0
d03c3e7e:	9305      	str	r3, [sp, #20]
d03c3e80:	fa0f fa8a 	sxth.w	sl, sl
d03c3e84:	4b8e      	ldr	r3, [pc, #568]	; (d03c40c0 <ui_draw_dialog+0x568>)
d03c3e86:	781b      	ldrb	r3, [r3, #0]
d03c3e88:	07db      	lsls	r3, r3, #31
d03c3e8a:	f140 80dd 	bpl.w	d03c4048 <ui_draw_dialog+0x4f0>
d03c3e8e:	4b8d      	ldr	r3, [pc, #564]	; (d03c40c4 <ui_draw_dialog+0x56c>)
d03c3e90:	f9b3 2000 	ldrsh.w	r2, [r3]
d03c3e94:	4b8c      	ldr	r3, [pc, #560]	; (d03c40c8 <ui_draw_dialog+0x570>)
d03c3e96:	881b      	ldrh	r3, [r3, #0]
d03c3e98:	3b0e      	subs	r3, #14
d03c3e9a:	b29b      	uxth	r3, r3
d03c3e9c:	f5b3 7fc8 	cmp.w	r3, #400	; 0x190
d03c3ea0:	f080 80d2 	bcs.w	d03c4048 <ui_draw_dialog+0x4f0>
d03c3ea4:	4592      	cmp	sl, r2
d03c3ea6:	f300 80cf 	bgt.w	d03c4048 <ui_draw_dialog+0x4f0>
d03c3eaa:	017b      	lsls	r3, r7, #5
d03c3eac:	334e      	adds	r3, #78	; 0x4e
d03c3eae:	429a      	cmp	r2, r3
d03c3eb0:	f280 80ca 	bge.w	d03c4048 <ui_draw_dialog+0x4f0>
d03c3eb4:	9b05      	ldr	r3, [sp, #20]
d03c3eb6:	f04f 0801 	mov.w	r8, #1
d03c3eba:	f04f 09e4 	mov.w	r9, #228	; 0xe4
d03c3ebe:	429d      	cmp	r5, r3
d03c3ec0:	bf0c      	ite	eq
d03c3ec2:	23e8      	moveq	r3, #232	; 0xe8
d03c3ec4:	23e7      	movne	r3, #231	; 0xe7
d03c3ec6:	f04f 0e00 	mov.w	lr, #0
d03c3eca:	9307      	str	r3, [sp, #28]
d03c3ecc:	2320      	movs	r3, #32
d03c3ece:	4652      	mov	r2, sl
d03c3ed0:	210e      	movs	r1, #14
d03c3ed2:	e9cd 3e00 	strd	r3, lr, [sp]
d03c3ed6:	f44f 73c8 	mov.w	r3, #400	; 0x190
d03c3eda:	f7fc ff29 	bl	d03c0d30 <ui_button_register>
d03c3ede:	f8cd 9004 	str.w	r9, [sp, #4]
d03c3ee2:	f04f 09e1 	mov.w	r9, #225	; 0xe1
d03c3ee6:	2320      	movs	r3, #32
d03c3ee8:	f44f 72c8 	mov.w	r2, #400	; 0x190
d03c3eec:	4651      	mov	r1, sl
d03c3eee:	200e      	movs	r0, #14
d03c3ef0:	f8cd 9000 	str.w	r9, [sp]
d03c3ef4:	f7fc fec8 	bl	d03c0c88 <ui_box>
d03c3ef8:	4a74      	ldr	r2, [pc, #464]	; (d03c40cc <ui_draw_dialog+0x574>)
d03c3efa:	7b13      	ldrb	r3, [r2, #12]
d03c3efc:	7b51      	ldrb	r1, [r2, #13]
d03c3efe:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c3f02:	7b91      	ldrb	r1, [r2, #14]
d03c3f04:	7bd2      	ldrb	r2, [r2, #15]
d03c3f06:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c3f0a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3f0e:	685b      	ldr	r3, [r3, #4]
d03c3f10:	68db      	ldr	r3, [r3, #12]
d03c3f12:	f1b8 0f00 	cmp.w	r8, #0
d03c3f16:	f040 80a3 	bne.w	d03c4060 <ui_draw_dialog+0x508>
d03c3f1a:	9a05      	ldr	r2, [sp, #20]
d03c3f1c:	4295      	cmp	r5, r2
d03c3f1e:	bf0c      	ite	eq
d03c3f20:	20e6      	moveq	r0, #230	; 0xe6
d03c3f22:	20e7      	movne	r0, #231	; 0xe7
d03c3f24:	4798      	blx	r3
d03c3f26:	7b23      	ldrb	r3, [r4, #12]
d03c3f28:	7b62      	ldrb	r2, [r4, #13]
d03c3f2a:	f1a6 051c 	sub.w	r5, r6, #28
d03c3f2e:	200f      	movs	r0, #15
d03c3f30:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3f34:	7ba2      	ldrb	r2, [r4, #14]
d03c3f36:	b22d      	sxth	r5, r5
d03c3f38:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3f3c:	7be2      	ldrb	r2, [r4, #15]
d03c3f3e:	4629      	mov	r1, r5
d03c3f40:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3f44:	f44f 72c7 	mov.w	r2, #398	; 0x18e
d03c3f48:	685b      	ldr	r3, [r3, #4]
d03c3f4a:	f8d3 9004 	ldr.w	r9, [r3, #4]
d03c3f4e:	2302      	movs	r3, #2
d03c3f50:	47c8      	blx	r9
d03c3f52:	7b23      	ldrb	r3, [r4, #12]
d03c3f54:	7b62      	ldrb	r2, [r4, #13]
d03c3f56:	200f      	movs	r0, #15
d03c3f58:	4629      	mov	r1, r5
d03c3f5a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3f5e:	7ba2      	ldrb	r2, [r4, #14]
d03c3f60:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3f64:	7be2      	ldrb	r2, [r4, #15]
d03c3f66:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3f6a:	2202      	movs	r2, #2
d03c3f6c:	685b      	ldr	r3, [r3, #4]
d03c3f6e:	f8d3 9004 	ldr.w	r9, [r3, #4]
d03c3f72:	231e      	movs	r3, #30
d03c3f74:	47c8      	blx	r9
d03c3f76:	7b23      	ldrb	r3, [r4, #12]
d03c3f78:	7b62      	ldrb	r2, [r4, #13]
d03c3f7a:	f1b8 0f00 	cmp.w	r8, #0
d03c3f7e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3f82:	7ba2      	ldrb	r2, [r4, #14]
d03c3f84:	bf14      	ite	ne
d03c3f86:	20e7      	movne	r0, #231	; 0xe7
d03c3f88:	20e1      	moveq	r0, #225	; 0xe1
d03c3f8a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3f8e:	7be2      	ldrb	r2, [r4, #15]
d03c3f90:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3f94:	685b      	ldr	r3, [r3, #4]
d03c3f96:	68db      	ldr	r3, [r3, #12]
d03c3f98:	4798      	blx	r3
d03c3f9a:	7b23      	ldrb	r3, [r4, #12]
d03c3f9c:	7b62      	ldrb	r2, [r4, #13]
d03c3f9e:	b231      	sxth	r1, r6
d03c3fa0:	200f      	movs	r0, #15
d03c3fa2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3fa6:	7ba2      	ldrb	r2, [r4, #14]
d03c3fa8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3fac:	7be2      	ldrb	r2, [r4, #15]
d03c3fae:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3fb2:	f44f 72c7 	mov.w	r2, #398	; 0x18e
d03c3fb6:	685b      	ldr	r3, [r3, #4]
d03c3fb8:	f8d3 9004 	ldr.w	r9, [r3, #4]
d03c3fbc:	2302      	movs	r3, #2
d03c3fbe:	47c8      	blx	r9
d03c3fc0:	7b23      	ldrb	r3, [r4, #12]
d03c3fc2:	7b62      	ldrb	r2, [r4, #13]
d03c3fc4:	4629      	mov	r1, r5
d03c3fc6:	f240 109b 	movw	r0, #411	; 0x19b
d03c3fca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3fce:	7ba2      	ldrb	r2, [r4, #14]
d03c3fd0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3fd4:	7be2      	ldrb	r2, [r4, #15]
d03c3fd6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3fda:	2202      	movs	r2, #2
d03c3fdc:	685b      	ldr	r3, [r3, #4]
d03c3fde:	f8d3 9004 	ldr.w	r9, [r3, #4]
d03c3fe2:	231e      	movs	r3, #30
d03c3fe4:	47c8      	blx	r9
d03c3fe6:	f1b8 0f00 	cmp.w	r8, #0
d03c3fea:	d13b      	bne.n	d03c4064 <ui_draw_dialog+0x50c>
d03c3fec:	f1a6 0515 	sub.w	r5, r6, #21
d03c3ff0:	7b23      	ldrb	r3, [r4, #12]
d03c3ff2:	b2ad      	uxth	r5, r5
d03c3ff4:	7b62      	ldrb	r2, [r4, #13]
d03c3ff6:	3701      	adds	r7, #1
d03c3ff8:	9807      	ldr	r0, [sp, #28]
d03c3ffa:	3620      	adds	r6, #32
d03c3ffc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4000:	7ba2      	ldrb	r2, [r4, #14]
d03c4002:	b2b6      	uxth	r6, r6
d03c4004:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4008:	7be2      	ldrb	r2, [r4, #15]
d03c400a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c400e:	685b      	ldr	r3, [r3, #4]
d03c4010:	68db      	ldr	r3, [r3, #12]
d03c4012:	4798      	blx	r3
d03c4014:	7b23      	ldrb	r3, [r4, #12]
d03c4016:	7b62      	ldrb	r2, [r4, #13]
d03c4018:	4629      	mov	r1, r5
d03c401a:	f108 0016 	add.w	r0, r8, #22
d03c401e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4022:	7ba2      	ldrb	r2, [r4, #14]
d03c4024:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4028:	7be2      	ldrb	r2, [r4, #15]
d03c402a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c402e:	aa08      	add	r2, sp, #32
d03c4030:	685b      	ldr	r3, [r3, #4]
d03c4032:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c4034:	4798      	blx	r3
d03c4036:	2f07      	cmp	r7, #7
d03c4038:	f47f af04 	bne.w	d03c3e44 <ui_draw_dialog+0x2ec>
d03c403c:	e634      	b.n	d03c3ca8 <ui_draw_dialog+0x150>
d03c403e:	2a04      	cmp	r2, #4
d03c4040:	bf0c      	ite	eq
d03c4042:	4a23      	ldreq	r2, [pc, #140]	; (d03c40d0 <ui_draw_dialog+0x578>)
d03c4044:	4a23      	ldrne	r2, [pc, #140]	; (d03c40d4 <ui_draw_dialog+0x57c>)
d03c4046:	e70f      	b.n	d03c3e68 <ui_draw_dialog+0x310>
d03c4048:	9b05      	ldr	r3, [sp, #20]
d03c404a:	f04f 0800 	mov.w	r8, #0
d03c404e:	429d      	cmp	r5, r3
d03c4050:	bf15      	itete	ne
d03c4052:	f04f 09e3 	movne.w	r9, #227	; 0xe3
d03c4056:	f04f 09e5 	moveq.w	r9, #229	; 0xe5
d03c405a:	23e7      	movne	r3, #231	; 0xe7
d03c405c:	23e8      	moveq	r3, #232	; 0xe8
d03c405e:	e732      	b.n	d03c3ec6 <ui_draw_dialog+0x36e>
d03c4060:	4648      	mov	r0, r9
d03c4062:	e75f      	b.n	d03c3f24 <ui_draw_dialog+0x3cc>
d03c4064:	f1a6 0514 	sub.w	r5, r6, #20
d03c4068:	e7c2      	b.n	d03c3ff0 <ui_draw_dialog+0x498>
d03c406a:	f89b 2000 	ldrb.w	r2, [fp]
d03c406e:	f44f 63c4 	mov.w	r3, #1568	; 0x620
d03c4072:	fbb3 f3f2 	udiv	r3, r3, r2
d03c4076:	7b22      	ldrb	r2, [r4, #12]
d03c4078:	2b10      	cmp	r3, #16
d03c407a:	7b61      	ldrb	r1, [r4, #13]
d03c407c:	bfb8      	it	lt
d03c407e:	2310      	movlt	r3, #16
d03c4080:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d03c4084:	7ba1      	ldrb	r1, [r4, #14]
d03c4086:	f1c3 00e0 	rsb	r0, r3, #224	; 0xe0
d03c408a:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d03c408e:	7be1      	ldrb	r1, [r4, #15]
d03c4090:	ea42 6201 	orr.w	r2, r2, r1, lsl #24
d03c4094:	4905      	ldr	r1, [pc, #20]	; (d03c40ac <ui_draw_dialog+0x554>)
d03c4096:	7809      	ldrb	r1, [r1, #0]
d03c4098:	6852      	ldr	r2, [r2, #4]
d03c409a:	4341      	muls	r1, r0
d03c409c:	9806      	ldr	r0, [sp, #24]
d03c409e:	6854      	ldr	r4, [r2, #4]
d03c40a0:	2208      	movs	r2, #8
d03c40a2:	fb91 f1f0 	sdiv	r1, r1, r0
d03c40a6:	312e      	adds	r1, #46	; 0x2e
d03c40a8:	b209      	sxth	r1, r1
d03c40aa:	e63e      	b.n	d03c3d2a <ui_draw_dialog+0x1d2>
d03c40ac:	d03ce2b9 	.word	0xd03ce2b9
d03c40b0:	d03cda79 	.word	0xd03cda79
d03c40b4:	d03cdab9 	.word	0xd03cdab9
d03c40b8:	d03cb68f 	.word	0xd03cb68f
d03c40bc:	d03ce2ba 	.word	0xd03ce2ba
d03c40c0:	d03ce2bb 	.word	0xd03ce2bb
d03c40c4:	d03cf336 	.word	0xd03cf336
d03c40c8:	d03cf334 	.word	0xd03cf334
d03c40cc:	2001f000 	.word	0x2001f000
d03c40d0:	d03cb698 	.word	0xd03cb698
d03c40d4:	d03cb944 	.word	0xd03cb944
d03c40d8:	2500      	movs	r5, #0
d03c40da:	231f      	movs	r3, #31
d03c40dc:	271a      	movs	r7, #26
d03c40de:	4cb5      	ldr	r4, [pc, #724]	; (d03c43b4 <ui_draw_dialog+0x85c>)
d03c40e0:	4629      	mov	r1, r5
d03c40e2:	4628      	mov	r0, r5
d03c40e4:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c40e8:	9301      	str	r3, [sp, #4]
d03c40ea:	9700      	str	r7, [sp, #0]
d03c40ec:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03c40f0:	f8ad 5020 	strh.w	r5, [sp, #32]
d03c40f4:	f7fc fdc8 	bl	d03c0c88 <ui_box>
d03c40f8:	7b23      	ldrb	r3, [r4, #12]
d03c40fa:	2014      	movs	r0, #20
d03c40fc:	7b62      	ldrb	r2, [r4, #13]
d03c40fe:	f04f 0901 	mov.w	r9, #1
d03c4102:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4106:	7ba2      	ldrb	r2, [r4, #14]
d03c4108:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c410c:	7be2      	ldrb	r2, [r4, #15]
d03c410e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4112:	685b      	ldr	r3, [r3, #4]
d03c4114:	68db      	ldr	r3, [r3, #12]
d03c4116:	4798      	blx	r3
d03c4118:	7b23      	ldrb	r3, [r4, #12]
d03c411a:	7b62      	ldrb	r2, [r4, #13]
d03c411c:	2101      	movs	r1, #1
d03c411e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4122:	7ba2      	ldrb	r2, [r4, #14]
d03c4124:	4608      	mov	r0, r1
d03c4126:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c412a:	7be2      	ldrb	r2, [r4, #15]
d03c412c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4130:	f44f 72ef 	mov.w	r2, #478	; 0x1de
d03c4134:	685b      	ldr	r3, [r3, #4]
d03c4136:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c413a:	231c      	movs	r3, #28
d03c413c:	47c0      	blx	r8
d03c413e:	7b23      	ldrb	r3, [r4, #12]
d03c4140:	7b62      	ldrb	r2, [r4, #13]
d03c4142:	201e      	movs	r0, #30
d03c4144:	f04f 0822 	mov.w	r8, #34	; 0x22
d03c4148:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c414c:	7ba2      	ldrb	r2, [r4, #14]
d03c414e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4152:	7be2      	ldrb	r2, [r4, #15]
d03c4154:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4158:	685b      	ldr	r3, [r3, #4]
d03c415a:	68db      	ldr	r3, [r3, #12]
d03c415c:	4798      	blx	r3
d03c415e:	7b23      	ldrb	r3, [r4, #12]
d03c4160:	7b62      	ldrb	r2, [r4, #13]
d03c4162:	2107      	movs	r1, #7
d03c4164:	2010      	movs	r0, #16
d03c4166:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c416a:	7ba2      	ldrb	r2, [r4, #14]
d03c416c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4170:	7be2      	ldrb	r2, [r4, #15]
d03c4172:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4176:	4a90      	ldr	r2, [pc, #576]	; (d03c43b8 <ui_draw_dialog+0x860>)
d03c4178:	685b      	ldr	r3, [r3, #4]
d03c417a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c417c:	4798      	blx	r3
d03c417e:	4b8f      	ldr	r3, [pc, #572]	; (d03c43bc <ui_draw_dialog+0x864>)
d03c4180:	2224      	movs	r2, #36	; 0x24
d03c4182:	2114      	movs	r1, #20
d03c4184:	2031      	movs	r0, #49	; 0x31
d03c4186:	9502      	str	r5, [sp, #8]
d03c4188:	9301      	str	r3, [sp, #4]
d03c418a:	2330      	movs	r3, #48	; 0x30
d03c418c:	f8cd 900c 	str.w	r9, [sp, #12]
d03c4190:	f8cd 8000 	str.w	r8, [sp]
d03c4194:	f7ff f9a6 	bl	d03c34e4 <ui_create_button>
d03c4198:	2311      	movs	r3, #17
d03c419a:	f44f 72a6 	mov.w	r2, #332	; 0x14c
d03c419e:	2124      	movs	r1, #36	; 0x24
d03c41a0:	204a      	movs	r0, #74	; 0x4a
d03c41a2:	9301      	str	r3, [sp, #4]
d03c41a4:	9700      	str	r7, [sp, #0]
d03c41a6:	4643      	mov	r3, r8
d03c41a8:	f7fc fd6e 	bl	d03c0c88 <ui_box>
d03c41ac:	4b84      	ldr	r3, [pc, #528]	; (d03c43c0 <ui_draw_dialog+0x868>)
d03c41ae:	f44f 71ce 	mov.w	r1, #412	; 0x19c
d03c41b2:	2224      	movs	r2, #36	; 0x24
d03c41b4:	2032      	movs	r0, #50	; 0x32
d03c41b6:	9502      	str	r5, [sp, #8]
d03c41b8:	9301      	str	r3, [sp, #4]
d03c41ba:	2330      	movs	r3, #48	; 0x30
d03c41bc:	f8cd 900c 	str.w	r9, [sp, #12]
d03c41c0:	f8cd 8000 	str.w	r8, [sp]
d03c41c4:	f7ff f98e 	bl	d03c34e4 <ui_create_button>
d03c41c8:	7b23      	ldrb	r3, [r4, #12]
d03c41ca:	7b62      	ldrb	r2, [r4, #13]
d03c41cc:	201e      	movs	r0, #30
d03c41ce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c41d2:	7ba2      	ldrb	r2, [r4, #14]
d03c41d4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c41d8:	7be2      	ldrb	r2, [r4, #15]
d03c41da:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c41de:	685b      	ldr	r3, [r3, #4]
d03c41e0:	68db      	ldr	r3, [r3, #12]
d03c41e2:	4798      	blx	r3
d03c41e4:	7b23      	ldrb	r3, [r4, #12]
d03c41e6:	7b62      	ldrb	r2, [r4, #13]
d03c41e8:	2054      	movs	r0, #84	; 0x54
d03c41ea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c41ee:	7ba2      	ldrb	r2, [r4, #14]
d03c41f0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c41f4:	7be2      	ldrb	r2, [r4, #15]
d03c41f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c41fa:	4a72      	ldr	r2, [pc, #456]	; (d03c43c4 <ui_draw_dialog+0x86c>)
d03c41fc:	685b      	ldr	r3, [r3, #4]
d03c41fe:	6add      	ldr	r5, [r3, #44]	; 0x2c
d03c4200:	4b71      	ldr	r3, [pc, #452]	; (d03c43c8 <ui_draw_dialog+0x870>)
d03c4202:	7819      	ldrb	r1, [r3, #0]
d03c4204:	2900      	cmp	r1, #0
d03c4206:	bf18      	it	ne
d03c4208:	461a      	movne	r2, r3
d03c420a:	212d      	movs	r1, #45	; 0x2d
d03c420c:	47a8      	blx	r5
d03c420e:	4b6f      	ldr	r3, [pc, #444]	; (d03c43cc <ui_draw_dialog+0x874>)
d03c4210:	781b      	ldrb	r3, [r3, #0]
d03c4212:	2b00      	cmp	r3, #0
d03c4214:	d05d      	beq.n	d03c42d2 <ui_draw_dialog+0x77a>
d03c4216:	4b6e      	ldr	r3, [pc, #440]	; (d03c43d0 <ui_draw_dialog+0x878>)
d03c4218:	200d      	movs	r0, #13
d03c421a:	781d      	ldrb	r5, [r3, #0]
d03c421c:	7b23      	ldrb	r3, [r4, #12]
d03c421e:	7b62      	ldrb	r2, [r4, #13]
d03c4220:	00ed      	lsls	r5, r5, #3
d03c4222:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4226:	7ba2      	ldrb	r2, [r4, #14]
d03c4228:	3554      	adds	r5, #84	; 0x54
d03c422a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c422e:	7be2      	ldrb	r2, [r4, #15]
d03c4230:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4234:	685b      	ldr	r3, [r3, #4]
d03c4236:	68db      	ldr	r3, [r3, #12]
d03c4238:	4798      	blx	r3
d03c423a:	7b23      	ldrb	r3, [r4, #12]
d03c423c:	7b62      	ldrb	r2, [r4, #13]
d03c423e:	f5b5 7fc4 	cmp.w	r5, #392	; 0x188
d03c4242:	f04f 012b 	mov.w	r1, #43	; 0x2b
d03c4246:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c424a:	7ba2      	ldrb	r2, [r4, #14]
d03c424c:	bfa8      	it	ge
d03c424e:	f44f 75c4 	movge.w	r5, #392	; 0x188
d03c4252:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4256:	7be2      	ldrb	r2, [r4, #15]
d03c4258:	1e68      	subs	r0, r5, #1
d03c425a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c425e:	220a      	movs	r2, #10
d03c4260:	b200      	sxth	r0, r0
d03c4262:	685b      	ldr	r3, [r3, #4]
d03c4264:	9005      	str	r0, [sp, #20]
d03c4266:	685f      	ldr	r7, [r3, #4]
d03c4268:	4633      	mov	r3, r6
d03c426a:	47b8      	blx	r7
d03c426c:	7b23      	ldrb	r3, [r4, #12]
d03c426e:	7b62      	ldrb	r2, [r4, #13]
d03c4270:	213b      	movs	r1, #59	; 0x3b
d03c4272:	9805      	ldr	r0, [sp, #20]
d03c4274:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4278:	7ba2      	ldrb	r2, [r4, #14]
d03c427a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c427e:	7be2      	ldrb	r2, [r4, #15]
d03c4280:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4284:	220a      	movs	r2, #10
d03c4286:	685b      	ldr	r3, [r3, #4]
d03c4288:	685f      	ldr	r7, [r3, #4]
d03c428a:	4633      	mov	r3, r6
d03c428c:	47b8      	blx	r7
d03c428e:	7b23      	ldrb	r3, [r4, #12]
d03c4290:	7b62      	ldrb	r2, [r4, #13]
d03c4292:	212b      	movs	r1, #43	; 0x2b
d03c4294:	9805      	ldr	r0, [sp, #20]
d03c4296:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c429a:	7ba2      	ldrb	r2, [r4, #14]
d03c429c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c42a0:	7be2      	ldrb	r2, [r4, #15]
d03c42a2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c42a6:	4632      	mov	r2, r6
d03c42a8:	685b      	ldr	r3, [r3, #4]
d03c42aa:	685f      	ldr	r7, [r3, #4]
d03c42ac:	2312      	movs	r3, #18
d03c42ae:	47b8      	blx	r7
d03c42b0:	7b23      	ldrb	r3, [r4, #12]
d03c42b2:	7b62      	ldrb	r2, [r4, #13]
d03c42b4:	212b      	movs	r1, #43	; 0x2b
d03c42b6:	1de8      	adds	r0, r5, #7
d03c42b8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c42bc:	7ba2      	ldrb	r2, [r4, #14]
d03c42be:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c42c2:	7be2      	ldrb	r2, [r4, #15]
d03c42c4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c42c8:	4632      	mov	r2, r6
d03c42ca:	685b      	ldr	r3, [r3, #4]
d03c42cc:	685c      	ldr	r4, [r3, #4]
d03c42ce:	2312      	movs	r3, #18
d03c42d0:	47a0      	blx	r4
d03c42d2:	f04f 0800 	mov.w	r8, #0
d03c42d6:	4f3f      	ldr	r7, [pc, #252]	; (d03c43d4 <ui_draw_dialog+0x87c>)
d03c42d8:	2454      	movs	r4, #84	; 0x54
d03c42da:	46c1      	mov	r9, r8
d03c42dc:	4638      	mov	r0, r7
d03c42de:	46ba      	mov	sl, r7
d03c42e0:	f005 fe8a 	bl	d03c9ff8 <strlen>
d03c42e4:	2600      	movs	r6, #0
d03c42e6:	b2c5      	uxtb	r5, r0
d03c42e8:	f04f 0b20 	mov.w	fp, #32
d03c42ec:	b222      	sxth	r2, r4
d03c42ee:	b2f3      	uxtb	r3, r6
d03c42f0:	fa58 f086 	uxtab	r0, r8, r6
d03c42f4:	42ab      	cmp	r3, r5
d03c42f6:	b2c0      	uxtb	r0, r0
d03c42f8:	d37d      	bcc.n	d03c43f6 <ui_draw_dialog+0x89e>
d03c42fa:	3424      	adds	r4, #36	; 0x24
d03c42fc:	44a8      	add	r8, r5
d03c42fe:	370b      	adds	r7, #11
d03c4300:	b2a4      	uxth	r4, r4
d03c4302:	fa5f f888 	uxtb.w	r8, r8
d03c4306:	2ce4      	cmp	r4, #228	; 0xe4
d03c4308:	d1e8      	bne.n	d03c42dc <ui_draw_dialog+0x784>
d03c430a:	2301      	movs	r3, #1
d03c430c:	2400      	movs	r4, #0
d03c430e:	2520      	movs	r5, #32
d03c4310:	22c0      	movs	r2, #192	; 0xc0
d03c4312:	9303      	str	r3, [sp, #12]
d03c4314:	f44f 71d8 	mov.w	r1, #432	; 0x1b0
d03c4318:	4b2f      	ldr	r3, [pc, #188]	; (d03c43d8 <ui_draw_dialog+0x880>)
d03c431a:	9402      	str	r4, [sp, #8]
d03c431c:	9301      	str	r3, [sp, #4]
d03c431e:	2330      	movs	r3, #48	; 0x30
d03c4320:	9500      	str	r5, [sp, #0]
d03c4322:	4618      	mov	r0, r3
d03c4324:	f7ff f8de 	bl	d03c34e4 <ui_create_button>
d03c4328:	4b2c      	ldr	r3, [pc, #176]	; (d03c43dc <ui_draw_dialog+0x884>)
d03c432a:	22e8      	movs	r2, #232	; 0xe8
d03c432c:	210c      	movs	r1, #12
d03c432e:	2034      	movs	r0, #52	; 0x34
d03c4330:	9301      	str	r3, [sp, #4]
d03c4332:	9403      	str	r4, [sp, #12]
d03c4334:	236a      	movs	r3, #106	; 0x6a
d03c4336:	9402      	str	r4, [sp, #8]
d03c4338:	9500      	str	r5, [sp, #0]
d03c433a:	f7ff f8d3 	bl	d03c34e4 <ui_create_button>
d03c433e:	4b28      	ldr	r3, [pc, #160]	; (d03c43e0 <ui_draw_dialog+0x888>)
d03c4340:	22e8      	movs	r2, #232	; 0xe8
d03c4342:	2180      	movs	r1, #128	; 0x80
d03c4344:	2035      	movs	r0, #53	; 0x35
d03c4346:	9301      	str	r3, [sp, #4]
d03c4348:	9403      	str	r4, [sp, #12]
d03c434a:	236a      	movs	r3, #106	; 0x6a
d03c434c:	9402      	str	r4, [sp, #8]
d03c434e:	9500      	str	r5, [sp, #0]
d03c4350:	f7ff f8c8 	bl	d03c34e4 <ui_create_button>
d03c4354:	4b23      	ldr	r3, [pc, #140]	; (d03c43e4 <ui_draw_dialog+0x88c>)
d03c4356:	22e8      	movs	r2, #232	; 0xe8
d03c4358:	21f4      	movs	r1, #244	; 0xf4
d03c435a:	2036      	movs	r0, #54	; 0x36
d03c435c:	9301      	str	r3, [sp, #4]
d03c435e:	9403      	str	r4, [sp, #12]
d03c4360:	2370      	movs	r3, #112	; 0x70
d03c4362:	9402      	str	r4, [sp, #8]
d03c4364:	9500      	str	r5, [sp, #0]
d03c4366:	f7ff f8bd 	bl	d03c34e4 <ui_create_button>
d03c436a:	4b1f      	ldr	r3, [pc, #124]	; (d03c43e8 <ui_draw_dialog+0x890>)
d03c436c:	22e8      	movs	r2, #232	; 0xe8
d03c436e:	f44f 71b7 	mov.w	r1, #366	; 0x16e
d03c4372:	2037      	movs	r0, #55	; 0x37
d03c4374:	9301      	str	r3, [sp, #4]
d03c4376:	9403      	str	r4, [sp, #12]
d03c4378:	235e      	movs	r3, #94	; 0x5e
d03c437a:	9402      	str	r4, [sp, #8]
d03c437c:	9500      	str	r5, [sp, #0]
d03c437e:	f7ff f8b1 	bl	d03c34e4 <ui_create_button>
d03c4382:	4b1a      	ldr	r3, [pc, #104]	; (d03c43ec <ui_draw_dialog+0x894>)
d03c4384:	f44f 728b 	mov.w	r2, #278	; 0x116
d03c4388:	210c      	movs	r1, #12
d03c438a:	2033      	movs	r0, #51	; 0x33
d03c438c:	9301      	str	r3, [sp, #4]
d03c438e:	9403      	str	r4, [sp, #12]
d03c4390:	234e      	movs	r3, #78	; 0x4e
d03c4392:	9402      	str	r4, [sp, #8]
d03c4394:	9500      	str	r5, [sp, #0]
d03c4396:	f7ff f8a5 	bl	d03c34e4 <ui_create_button>
d03c439a:	4b15      	ldr	r3, [pc, #84]	; (d03c43f0 <ui_draw_dialog+0x898>)
d03c439c:	f44f 728b 	mov.w	r2, #278	; 0x116
d03c43a0:	f44f 71b2 	mov.w	r1, #356	; 0x164
d03c43a4:	9301      	str	r3, [sp, #4]
d03c43a6:	2038      	movs	r0, #56	; 0x38
d03c43a8:	2364      	movs	r3, #100	; 0x64
d03c43aa:	9403      	str	r4, [sp, #12]
d03c43ac:	9402      	str	r4, [sp, #8]
d03c43ae:	9500      	str	r5, [sp, #0]
d03c43b0:	e020      	b.n	d03c43f4 <ui_draw_dialog+0x89c>
d03c43b2:	bf00      	nop
d03c43b4:	2001f000 	.word	0x2001f000
d03c43b8:	d03cb6b3 	.word	0xd03cb6b3
d03c43bc:	d03cb6c6 	.word	0xd03cb6c6
d03c43c0:	d03cb6c8 	.word	0xd03cb6c8
d03c43c4:	d03cb668 	.word	0xd03cb668
d03c43c8:	d03cf34a 	.word	0xd03cf34a
d03c43cc:	d03cf52a 	.word	0xd03cf52a
d03c43d0:	d03cf348 	.word	0xd03cf348
d03c43d4:	d03cc530 	.word	0xd03cc530
d03c43d8:	d03cc076 	.word	0xd03cc076
d03c43dc:	d03cb6ca 	.word	0xd03cb6ca
d03c43e0:	d03cb6d3 	.word	0xd03cb6d3
d03c43e4:	d03cb6dc 	.word	0xd03cb6dc
d03c43e8:	d03cb6af 	.word	0xd03cb6af
d03c43ec:	d03cb5e4 	.word	0xd03cb5e4
d03c43f0:	d03cb661 	.word	0xd03cb661
d03c43f4:	e500      	b.n	d03c3df8 <ui_draw_dialog+0x2a0>
d03c43f6:	f81a 3b01 	ldrb.w	r3, [sl], #1
d03c43fa:	eb06 0146 	add.w	r1, r6, r6, lsl #1
d03c43fe:	30dc      	adds	r0, #220	; 0xdc
d03c4400:	f8cd 900c 	str.w	r9, [sp, #12]
d03c4404:	f88d 3020 	strb.w	r3, [sp, #32]
d03c4408:	0109      	lsls	r1, r1, #4
d03c440a:	ab08      	add	r3, sp, #32
d03c440c:	f8cd 9008 	str.w	r9, [sp, #8]
d03c4410:	b209      	sxth	r1, r1
d03c4412:	f8cd b000 	str.w	fp, [sp]
d03c4416:	9301      	str	r3, [sp, #4]
d03c4418:	2330      	movs	r3, #48	; 0x30
d03c441a:	9205      	str	r2, [sp, #20]
d03c441c:	3601      	adds	r6, #1
d03c441e:	f7ff f861 	bl	d03c34e4 <ui_create_button>
d03c4422:	9a05      	ldr	r2, [sp, #20]
d03c4424:	e763      	b.n	d03c42ee <ui_draw_dialog+0x796>
d03c4426:	212f      	movs	r1, #47	; 0x2f
d03c4428:	4853      	ldr	r0, [pc, #332]	; (d03c4578 <ui_draw_dialog+0xa20>)
d03c442a:	f005 fded 	bl	d03ca008 <strrchr>
d03c442e:	2800      	cmp	r0, #0
d03c4430:	f000 809f 	beq.w	d03c4572 <ui_draw_dialog+0xa1a>
d03c4434:	1c45      	adds	r5, r0, #1
d03c4436:	211a      	movs	r1, #26
d03c4438:	231f      	movs	r3, #31
d03c443a:	4c50      	ldr	r4, [pc, #320]	; (d03c457c <ui_draw_dialog+0xa24>)
d03c443c:	f44f 72a8 	mov.w	r2, #336	; 0x150
d03c4440:	2048      	movs	r0, #72	; 0x48
d03c4442:	e9cd 1300 	strd	r1, r3, [sp]
d03c4446:	2162      	movs	r1, #98	; 0x62
d03c4448:	2382      	movs	r3, #130	; 0x82
d03c444a:	f7fc fc1d 	bl	d03c0c88 <ui_box>
d03c444e:	7b23      	ldrb	r3, [r4, #12]
d03c4450:	7b62      	ldrb	r2, [r4, #13]
d03c4452:	2014      	movs	r0, #20
d03c4454:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4458:	7ba2      	ldrb	r2, [r4, #14]
d03c445a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c445e:	7be2      	ldrb	r2, [r4, #15]
d03c4460:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4464:	685b      	ldr	r3, [r3, #4]
d03c4466:	68db      	ldr	r3, [r3, #12]
d03c4468:	4798      	blx	r3
d03c446a:	7b23      	ldrb	r3, [r4, #12]
d03c446c:	7b62      	ldrb	r2, [r4, #13]
d03c446e:	2163      	movs	r1, #99	; 0x63
d03c4470:	2049      	movs	r0, #73	; 0x49
d03c4472:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4476:	7ba2      	ldrb	r2, [r4, #14]
d03c4478:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c447c:	7be2      	ldrb	r2, [r4, #15]
d03c447e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4482:	f44f 72a7 	mov.w	r2, #334	; 0x14e
d03c4486:	685b      	ldr	r3, [r3, #4]
d03c4488:	685e      	ldr	r6, [r3, #4]
d03c448a:	2318      	movs	r3, #24
d03c448c:	47b0      	blx	r6
d03c448e:	7b23      	ldrb	r3, [r4, #12]
d03c4490:	7b62      	ldrb	r2, [r4, #13]
d03c4492:	201e      	movs	r0, #30
d03c4494:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4498:	7ba2      	ldrb	r2, [r4, #14]
d03c449a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c449e:	7be2      	ldrb	r2, [r4, #15]
d03c44a0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c44a4:	685b      	ldr	r3, [r3, #4]
d03c44a6:	68db      	ldr	r3, [r3, #12]
d03c44a8:	4798      	blx	r3
d03c44aa:	7b23      	ldrb	r3, [r4, #12]
d03c44ac:	7b62      	ldrb	r2, [r4, #13]
d03c44ae:	2167      	movs	r1, #103	; 0x67
d03c44b0:	2058      	movs	r0, #88	; 0x58
d03c44b2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c44b6:	7ba2      	ldrb	r2, [r4, #14]
d03c44b8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c44bc:	7be2      	ldrb	r2, [r4, #15]
d03c44be:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c44c2:	4a2f      	ldr	r2, [pc, #188]	; (d03c4580 <ui_draw_dialog+0xa28>)
d03c44c4:	685b      	ldr	r3, [r3, #4]
d03c44c6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c44c8:	4798      	blx	r3
d03c44ca:	7b23      	ldrb	r3, [r4, #12]
d03c44cc:	7b62      	ldrb	r2, [r4, #13]
d03c44ce:	2019      	movs	r0, #25
d03c44d0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c44d4:	7ba2      	ldrb	r2, [r4, #14]
d03c44d6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c44da:	7be2      	ldrb	r2, [r4, #15]
d03c44dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c44e0:	685b      	ldr	r3, [r3, #4]
d03c44e2:	68db      	ldr	r3, [r3, #12]
d03c44e4:	4798      	blx	r3
d03c44e6:	7b23      	ldrb	r3, [r4, #12]
d03c44e8:	7b62      	ldrb	r2, [r4, #13]
d03c44ea:	2188      	movs	r1, #136	; 0x88
d03c44ec:	205c      	movs	r0, #92	; 0x5c
d03c44ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c44f2:	7ba2      	ldrb	r2, [r4, #14]
d03c44f4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c44f8:	7be2      	ldrb	r2, [r4, #15]
d03c44fa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c44fe:	4a21      	ldr	r2, [pc, #132]	; (d03c4584 <ui_draw_dialog+0xa2c>)
d03c4500:	685b      	ldr	r3, [r3, #4]
d03c4502:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c4504:	4798      	blx	r3
d03c4506:	7b23      	ldrb	r3, [r4, #12]
d03c4508:	7b62      	ldrb	r2, [r4, #13]
d03c450a:	201e      	movs	r0, #30
d03c450c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4510:	7ba2      	ldrb	r2, [r4, #14]
d03c4512:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4516:	7be2      	ldrb	r2, [r4, #15]
d03c4518:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c451c:	685b      	ldr	r3, [r3, #4]
d03c451e:	68db      	ldr	r3, [r3, #12]
d03c4520:	4798      	blx	r3
d03c4522:	7b23      	ldrb	r3, [r4, #12]
d03c4524:	7b62      	ldrb	r2, [r4, #13]
d03c4526:	219a      	movs	r1, #154	; 0x9a
d03c4528:	205c      	movs	r0, #92	; 0x5c
d03c452a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c452e:	7ba2      	ldrb	r2, [r4, #14]
d03c4530:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4534:	7be2      	ldrb	r2, [r4, #15]
d03c4536:	2400      	movs	r4, #0
d03c4538:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c453c:	462a      	mov	r2, r5
d03c453e:	2520      	movs	r5, #32
d03c4540:	685b      	ldr	r3, [r3, #4]
d03c4542:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c4544:	4798      	blx	r3
d03c4546:	4b10      	ldr	r3, [pc, #64]	; (d03c4588 <ui_draw_dialog+0xa30>)
d03c4548:	22b8      	movs	r2, #184	; 0xb8
d03c454a:	2178      	movs	r1, #120	; 0x78
d03c454c:	2039      	movs	r0, #57	; 0x39
d03c454e:	9301      	str	r3, [sp, #4]
d03c4550:	9403      	str	r4, [sp, #12]
d03c4552:	235c      	movs	r3, #92	; 0x5c
d03c4554:	9402      	str	r4, [sp, #8]
d03c4556:	9500      	str	r5, [sp, #0]
d03c4558:	f7fe ffc4 	bl	d03c34e4 <ui_create_button>
d03c455c:	4b0b      	ldr	r3, [pc, #44]	; (d03c458c <ui_draw_dialog+0xa34>)
d03c455e:	22b8      	movs	r2, #184	; 0xb8
d03c4560:	f44f 7186 	mov.w	r1, #268	; 0x10c
d03c4564:	9301      	str	r3, [sp, #4]
d03c4566:	203a      	movs	r0, #58	; 0x3a
d03c4568:	235c      	movs	r3, #92	; 0x5c
d03c456a:	9403      	str	r4, [sp, #12]
d03c456c:	9402      	str	r4, [sp, #8]
d03c456e:	9500      	str	r5, [sp, #0]
d03c4570:	e442      	b.n	d03c3df8 <ui_draw_dialog+0x2a0>
d03c4572:	4d01      	ldr	r5, [pc, #4]	; (d03c4578 <ui_draw_dialog+0xa20>)
d03c4574:	e75f      	b.n	d03c4436 <ui_draw_dialog+0x8de>
d03c4576:	bf00      	nop
d03c4578:	d03cf2d1 	.word	0xd03cf2d1
d03c457c:	2001f000 	.word	0x2001f000
d03c4580:	d03cb6e6 	.word	0xd03cb6e6
d03c4584:	d03cb6f6 	.word	0xd03cb6f6
d03c4588:	d03cb710 	.word	0xd03cb710
d03c458c:	d03cb714 	.word	0xd03cb714

d03c4590 <ui_draw_seq>:
d03c4590:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c4594:	4fb5      	ldr	r7, [pc, #724]	; (d03c486c <ui_draw_seq+0x2dc>)
d03c4596:	b0a1      	sub	sp, #132	; 0x84
d03c4598:	f8df a30c 	ldr.w	sl, [pc, #780]	; d03c48a8 <ui_draw_seq+0x318>
d03c459c:	783b      	ldrb	r3, [r7, #0]
d03c459e:	4db4      	ldr	r5, [pc, #720]	; (d03c4870 <ui_draw_seq+0x2e0>)
d03c45a0:	2b00      	cmp	r3, #0
d03c45a2:	f040 82b5 	bne.w	d03c4b10 <ui_draw_seq+0x580>
d03c45a6:	f89a 3000 	ldrb.w	r3, [sl]
d03c45aa:	2b00      	cmp	r3, #0
d03c45ac:	f040 82b2 	bne.w	d03c4b14 <ui_draw_seq+0x584>
d03c45b0:	782b      	ldrb	r3, [r5, #0]
d03c45b2:	2b00      	cmp	r3, #0
d03c45b4:	f040 82b0 	bne.w	d03c4b18 <ui_draw_seq+0x588>
d03c45b8:	4bae      	ldr	r3, [pc, #696]	; (d03c4874 <ui_draw_seq+0x2e4>)
d03c45ba:	4eaf      	ldr	r6, [pc, #700]	; (d03c4878 <ui_draw_seq+0x2e8>)
d03c45bc:	781a      	ldrb	r2, [r3, #0]
d03c45be:	4baf      	ldr	r3, [pc, #700]	; (d03c487c <ui_draw_seq+0x2ec>)
d03c45c0:	2a00      	cmp	r2, #0
d03c45c2:	bf18      	it	ne
d03c45c4:	461e      	movne	r6, r3
d03c45c6:	4cae      	ldr	r4, [pc, #696]	; (d03c4880 <ui_draw_seq+0x2f0>)
d03c45c8:	201a      	movs	r0, #26
d03c45ca:	f8df 92e0 	ldr.w	r9, [pc, #736]	; d03c48ac <ui_draw_seq+0x31c>
d03c45ce:	7b23      	ldrb	r3, [r4, #12]
d03c45d0:	7b62      	ldrb	r2, [r4, #13]
d03c45d2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c45d6:	7ba2      	ldrb	r2, [r4, #14]
d03c45d8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c45dc:	7be2      	ldrb	r2, [r4, #15]
d03c45de:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c45e2:	685b      	ldr	r3, [r3, #4]
d03c45e4:	68db      	ldr	r3, [r3, #12]
d03c45e6:	4798      	blx	r3
d03c45e8:	7b23      	ldrb	r3, [r4, #12]
d03c45ea:	7b62      	ldrb	r2, [r4, #13]
d03c45ec:	2140      	movs	r1, #64	; 0x40
d03c45ee:	200a      	movs	r0, #10
d03c45f0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c45f4:	7ba2      	ldrb	r2, [r4, #14]
d03c45f6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c45fa:	7be2      	ldrb	r2, [r4, #15]
d03c45fc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4600:	f44f 72e6 	mov.w	r2, #460	; 0x1cc
d03c4604:	685b      	ldr	r3, [r3, #4]
d03c4606:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c460a:	2301      	movs	r3, #1
d03c460c:	47c0      	blx	r8
d03c460e:	7b23      	ldrb	r3, [r4, #12]
d03c4610:	7b62      	ldrb	r2, [r4, #13]
d03c4612:	21fb      	movs	r1, #251	; 0xfb
d03c4614:	200a      	movs	r0, #10
d03c4616:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c461a:	7ba2      	ldrb	r2, [r4, #14]
d03c461c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4620:	7be2      	ldrb	r2, [r4, #15]
d03c4622:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4626:	f44f 72e6 	mov.w	r2, #460	; 0x1cc
d03c462a:	685b      	ldr	r3, [r3, #4]
d03c462c:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c4630:	2301      	movs	r3, #1
d03c4632:	47c0      	blx	r8
d03c4634:	7b23      	ldrb	r3, [r4, #12]
d03c4636:	7b62      	ldrb	r2, [r4, #13]
d03c4638:	2140      	movs	r1, #64	; 0x40
d03c463a:	200a      	movs	r0, #10
d03c463c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4640:	7ba2      	ldrb	r2, [r4, #14]
d03c4642:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4646:	7be2      	ldrb	r2, [r4, #15]
d03c4648:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c464c:	2201      	movs	r2, #1
d03c464e:	685b      	ldr	r3, [r3, #4]
d03c4650:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c4654:	23bc      	movs	r3, #188	; 0xbc
d03c4656:	47c0      	blx	r8
d03c4658:	7b23      	ldrb	r3, [r4, #12]
d03c465a:	7b62      	ldrb	r2, [r4, #13]
d03c465c:	2140      	movs	r1, #64	; 0x40
d03c465e:	f240 10d5 	movw	r0, #469	; 0x1d5
d03c4662:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4666:	7ba2      	ldrb	r2, [r4, #14]
d03c4668:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c466c:	7be2      	ldrb	r2, [r4, #15]
d03c466e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4672:	2201      	movs	r2, #1
d03c4674:	685b      	ldr	r3, [r3, #4]
d03c4676:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c467a:	23bc      	movs	r3, #188	; 0xbc
d03c467c:	47c0      	blx	r8
d03c467e:	783b      	ldrb	r3, [r7, #0]
d03c4680:	f8df e22c 	ldr.w	lr, [pc, #556]	; d03c48b0 <ui_draw_seq+0x320>
d03c4684:	497f      	ldr	r1, [pc, #508]	; (d03c4884 <ui_draw_seq+0x2f4>)
d03c4686:	f8df c22c 	ldr.w	ip, [pc, #556]	; d03c48b4 <ui_draw_seq+0x324>
d03c468a:	2b00      	cmp	r3, #0
d03c468c:	f000 8246 	beq.w	d03c4b1c <ui_draw_seq+0x58c>
d03c4690:	4b7d      	ldr	r3, [pc, #500]	; (d03c4888 <ui_draw_seq+0x2f8>)
d03c4692:	f89c c000 	ldrb.w	ip, [ip]
d03c4696:	f893 b000 	ldrb.w	fp, [r3]
d03c469a:	7809      	ldrb	r1, [r1, #0]
d03c469c:	4b7b      	ldr	r3, [pc, #492]	; (d03c488c <ui_draw_seq+0x2fc>)
d03c469e:	f8df 8218 	ldr.w	r8, [pc, #536]	; d03c48b8 <ui_draw_seq+0x328>
d03c46a2:	f001 0103 	and.w	r1, r1, #3
d03c46a6:	f899 2000 	ldrb.w	r2, [r9]
d03c46aa:	f81e 1001 	ldrb.w	r1, [lr, r1]
d03c46ae:	2a00      	cmp	r2, #0
d03c46b0:	bf14      	ite	ne
d03c46b2:	461a      	movne	r2, r3
d03c46b4:	4642      	moveq	r2, r8
d03c46b6:	f1bc 0f00 	cmp.w	ip, #0
d03c46ba:	bf08      	it	eq
d03c46bc:	4643      	moveq	r3, r8
d03c46be:	f8df c1fc 	ldr.w	ip, [pc, #508]	; d03c48bc <ui_draw_seq+0x32c>
d03c46c2:	f8dc 0000 	ldr.w	r0, [ip]
d03c46c6:	9304      	str	r3, [sp, #16]
d03c46c8:	4b71      	ldr	r3, [pc, #452]	; (d03c4890 <ui_draw_seq+0x300>)
d03c46ca:	9005      	str	r0, [sp, #20]
d03c46cc:	a808      	add	r0, sp, #32
d03c46ce:	9103      	str	r1, [sp, #12]
d03c46d0:	2160      	movs	r1, #96	; 0x60
d03c46d2:	9202      	str	r2, [sp, #8]
d03c46d4:	4a6f      	ldr	r2, [pc, #444]	; (d03c4894 <ui_draw_seq+0x304>)
d03c46d6:	e9cd 6b00 	strd	r6, fp, [sp]
d03c46da:	881b      	ldrh	r3, [r3, #0]
d03c46dc:	f005 fc46 	bl	d03c9f6c <sniprintf>
d03c46e0:	7b23      	ldrb	r3, [r4, #12]
d03c46e2:	20e8      	movs	r0, #232	; 0xe8
d03c46e4:	7b62      	ldrb	r2, [r4, #13]
d03c46e6:	2600      	movs	r6, #0
d03c46e8:	f04f 0820 	mov.w	r8, #32
d03c46ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c46f0:	7ba2      	ldrb	r2, [r4, #14]
d03c46f2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c46f6:	7be2      	ldrb	r2, [r4, #15]
d03c46f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c46fc:	685b      	ldr	r3, [r3, #4]
d03c46fe:	68db      	ldr	r3, [r3, #12]
d03c4700:	4798      	blx	r3
d03c4702:	7b23      	ldrb	r3, [r4, #12]
d03c4704:	7b62      	ldrb	r2, [r4, #13]
d03c4706:	f44f 7183 	mov.w	r1, #262	; 0x106
d03c470a:	200e      	movs	r0, #14
d03c470c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4710:	7ba2      	ldrb	r2, [r4, #14]
d03c4712:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4716:	7be2      	ldrb	r2, [r4, #15]
d03c4718:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c471c:	aa08      	add	r2, sp, #32
d03c471e:	685b      	ldr	r3, [r3, #4]
d03c4720:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c4722:	4798      	blx	r3
d03c4724:	4b5c      	ldr	r3, [pc, #368]	; (d03c4898 <ui_draw_seq+0x308>)
d03c4726:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c472a:	2106      	movs	r1, #6
d03c472c:	203b      	movs	r0, #59	; 0x3b
d03c472e:	9301      	str	r3, [sp, #4]
d03c4730:	9603      	str	r6, [sp, #12]
d03c4732:	2324      	movs	r3, #36	; 0x24
d03c4734:	9602      	str	r6, [sp, #8]
d03c4736:	f8cd 8000 	str.w	r8, [sp]
d03c473a:	f7fe fed3 	bl	d03c34e4 <ui_create_button>
d03c473e:	782d      	ldrb	r5, [r5, #0]
d03c4740:	f89a 3000 	ldrb.w	r3, [sl]
d03c4744:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c4748:	212e      	movs	r1, #46	; 0x2e
d03c474a:	203c      	movs	r0, #60	; 0x3c
d03c474c:	431d      	orrs	r5, r3
d03c474e:	783b      	ldrb	r3, [r7, #0]
d03c4750:	9601      	str	r6, [sp, #4]
d03c4752:	431d      	orrs	r5, r3
d03c4754:	f8cd 8000 	str.w	r8, [sp]
d03c4758:	2330      	movs	r3, #48	; 0x30
d03c475a:	f7fc fae9 	bl	d03c0d30 <ui_button_register>
d03c475e:	4b4f      	ldr	r3, [pc, #316]	; (d03c489c <ui_draw_seq+0x30c>)
d03c4760:	781b      	ldrb	r3, [r3, #0]
d03c4762:	07db      	lsls	r3, r3, #31
d03c4764:	f140 81ff 	bpl.w	d03c4b66 <ui_draw_seq+0x5d6>
d03c4768:	4a4d      	ldr	r2, [pc, #308]	; (d03c48a0 <ui_draw_seq+0x310>)
d03c476a:	4b4e      	ldr	r3, [pc, #312]	; (d03c48a4 <ui_draw_seq+0x314>)
d03c476c:	8812      	ldrh	r2, [r2, #0]
d03c476e:	f9b3 3000 	ldrsh.w	r3, [r3]
d03c4772:	3a2e      	subs	r2, #46	; 0x2e
d03c4774:	b292      	uxth	r2, r2
d03c4776:	2a2f      	cmp	r2, #47	; 0x2f
d03c4778:	f200 81f5 	bhi.w	d03c4b66 <ui_draw_seq+0x5d6>
d03c477c:	f5a3 738e 	sub.w	r3, r3, #284	; 0x11c
d03c4780:	b29b      	uxth	r3, r3
d03c4782:	2b1f      	cmp	r3, #31
d03c4784:	f200 81ef 	bhi.w	d03c4b66 <ui_draw_seq+0x5d6>
d03c4788:	2601      	movs	r6, #1
d03c478a:	2d00      	cmp	r5, #0
d03c478c:	f040 81f1 	bne.w	d03c4b72 <ui_draw_seq+0x5e2>
d03c4790:	f04f 0815 	mov.w	r8, #21
d03c4794:	2214      	movs	r2, #20
d03c4796:	231a      	movs	r3, #26
d03c4798:	9201      	str	r2, [sp, #4]
d03c479a:	f44f 718e 	mov.w	r1, #284	; 0x11c
d03c479e:	9300      	str	r3, [sp, #0]
d03c47a0:	2230      	movs	r2, #48	; 0x30
d03c47a2:	2320      	movs	r3, #32
d03c47a4:	202e      	movs	r0, #46	; 0x2e
d03c47a6:	f7fc fa6f 	bl	d03c0c88 <ui_box>
d03c47aa:	2d00      	cmp	r5, #0
d03c47ac:	f000 8088 	beq.w	d03c48c0 <ui_draw_seq+0x330>
d03c47b0:	2e00      	cmp	r6, #0
d03c47b2:	f040 8085 	bne.w	d03c48c0 <ui_draw_seq+0x330>
d03c47b6:	7b23      	ldrb	r3, [r4, #12]
d03c47b8:	2020      	movs	r0, #32
d03c47ba:	7b62      	ldrb	r2, [r4, #13]
d03c47bc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c47c0:	7ba2      	ldrb	r2, [r4, #14]
d03c47c2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c47c6:	7be2      	ldrb	r2, [r4, #15]
d03c47c8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c47cc:	685b      	ldr	r3, [r3, #4]
d03c47ce:	68db      	ldr	r3, [r3, #12]
d03c47d0:	4798      	blx	r3
d03c47d2:	7b23      	ldrb	r3, [r4, #12]
d03c47d4:	7b62      	ldrb	r2, [r4, #13]
d03c47d6:	f240 111b 	movw	r1, #283	; 0x11b
d03c47da:	202d      	movs	r0, #45	; 0x2d
d03c47dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c47e0:	7ba2      	ldrb	r2, [r4, #14]
d03c47e2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c47e6:	7be2      	ldrb	r2, [r4, #15]
d03c47e8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c47ec:	2232      	movs	r2, #50	; 0x32
d03c47ee:	685b      	ldr	r3, [r3, #4]
d03c47f0:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03c47f4:	2301      	movs	r3, #1
d03c47f6:	47d8      	blx	fp
d03c47f8:	7b23      	ldrb	r3, [r4, #12]
d03c47fa:	7b62      	ldrb	r2, [r4, #13]
d03c47fc:	f44f 719e 	mov.w	r1, #316	; 0x13c
d03c4800:	202d      	movs	r0, #45	; 0x2d
d03c4802:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4806:	7ba2      	ldrb	r2, [r4, #14]
d03c4808:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c480c:	7be2      	ldrb	r2, [r4, #15]
d03c480e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4812:	2232      	movs	r2, #50	; 0x32
d03c4814:	685b      	ldr	r3, [r3, #4]
d03c4816:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03c481a:	2301      	movs	r3, #1
d03c481c:	47d8      	blx	fp
d03c481e:	7b23      	ldrb	r3, [r4, #12]
d03c4820:	7b62      	ldrb	r2, [r4, #13]
d03c4822:	f240 111b 	movw	r1, #283	; 0x11b
d03c4826:	202d      	movs	r0, #45	; 0x2d
d03c4828:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c482c:	7ba2      	ldrb	r2, [r4, #14]
d03c482e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4832:	7be2      	ldrb	r2, [r4, #15]
d03c4834:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4838:	2201      	movs	r2, #1
d03c483a:	685b      	ldr	r3, [r3, #4]
d03c483c:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03c4840:	2322      	movs	r3, #34	; 0x22
d03c4842:	47d8      	blx	fp
d03c4844:	7b23      	ldrb	r3, [r4, #12]
d03c4846:	7b62      	ldrb	r2, [r4, #13]
d03c4848:	f240 111b 	movw	r1, #283	; 0x11b
d03c484c:	205e      	movs	r0, #94	; 0x5e
d03c484e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4852:	7ba2      	ldrb	r2, [r4, #14]
d03c4854:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4858:	7be2      	ldrb	r2, [r4, #15]
d03c485a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c485e:	2201      	movs	r2, #1
d03c4860:	685b      	ldr	r3, [r3, #4]
d03c4862:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03c4866:	2322      	movs	r3, #34	; 0x22
d03c4868:	47d8      	blx	fp
d03c486a:	e029      	b.n	d03c48c0 <ui_draw_seq+0x330>
d03c486c:	d03ccf54 	.word	0xd03ccf54
d03c4870:	d03cd0a4 	.word	0xd03cd0a4
d03c4874:	d03cd09c 	.word	0xd03cd09c
d03c4878:	d03cb725 	.word	0xd03cb725
d03c487c:	d03cb72a 	.word	0xd03cb72a
d03c4880:	2001f000 	.word	0x2001f000
d03c4884:	d03cd0a7 	.word	0xd03cd0a7
d03c4888:	d03ccf58 	.word	0xd03ccf58
d03c488c:	d03cb8c9 	.word	0xd03cb8c9
d03c4890:	d03ccf4c 	.word	0xd03ccf4c
d03c4894:	d03cb73d 	.word	0xd03cb73d
d03c4898:	d03cb79c 	.word	0xd03cb79c
d03c489c:	d03ce2bb 	.word	0xd03ce2bb
d03c48a0:	d03cf334 	.word	0xd03cf334
d03c48a4:	d03cf336 	.word	0xd03cf336
d03c48a8:	d03cd0a5 	.word	0xd03cd0a5
d03c48ac:	d03cd0a6 	.word	0xd03cd0a6
d03c48b0:	d03cc55c 	.word	0xd03cc55c
d03c48b4:	d03ccf6a 	.word	0xd03ccf6a
d03c48b8:	d03cb72f 	.word	0xd03cb72f
d03c48bc:	d03ccf74 	.word	0xd03ccf74
d03c48c0:	7b23      	ldrb	r3, [r4, #12]
d03c48c2:	2e00      	cmp	r6, #0
d03c48c4:	7b62      	ldrb	r2, [r4, #13]
d03c48c6:	bf0c      	ite	eq
d03c48c8:	4640      	moveq	r0, r8
d03c48ca:	2010      	movne	r0, #16
d03c48cc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c48d0:	7ba2      	ldrb	r2, [r4, #14]
d03c48d2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c48d6:	7be2      	ldrb	r2, [r4, #15]
d03c48d8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c48dc:	685b      	ldr	r3, [r3, #4]
d03c48de:	68db      	ldr	r3, [r3, #12]
d03c48e0:	4798      	blx	r3
d03c48e2:	7b23      	ldrb	r3, [r4, #12]
d03c48e4:	7b62      	ldrb	r2, [r4, #13]
d03c48e6:	f240 111d 	movw	r1, #285	; 0x11d
d03c48ea:	202f      	movs	r0, #47	; 0x2f
d03c48ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c48f0:	7ba2      	ldrb	r2, [r4, #14]
d03c48f2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c48f6:	7be2      	ldrb	r2, [r4, #15]
d03c48f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c48fc:	222e      	movs	r2, #46	; 0x2e
d03c48fe:	685b      	ldr	r3, [r3, #4]
d03c4900:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c4904:	2302      	movs	r3, #2
d03c4906:	47c0      	blx	r8
d03c4908:	7b23      	ldrb	r3, [r4, #12]
d03c490a:	7b62      	ldrb	r2, [r4, #13]
d03c490c:	202f      	movs	r0, #47	; 0x2f
d03c490e:	f240 111d 	movw	r1, #285	; 0x11d
d03c4912:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4916:	7ba2      	ldrb	r2, [r4, #14]
d03c4918:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c491c:	7be2      	ldrb	r2, [r4, #15]
d03c491e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4922:	2202      	movs	r2, #2
d03c4924:	685b      	ldr	r3, [r3, #4]
d03c4926:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c492a:	231e      	movs	r3, #30
d03c492c:	47c0      	blx	r8
d03c492e:	7b23      	ldrb	r3, [r4, #12]
d03c4930:	7b62      	ldrb	r2, [r4, #13]
d03c4932:	2e00      	cmp	r6, #0
d03c4934:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4938:	7ba2      	ldrb	r2, [r4, #14]
d03c493a:	bf14      	ite	ne
d03c493c:	200d      	movne	r0, #13
d03c493e:	2010      	moveq	r0, #16
d03c4940:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4944:	7be2      	ldrb	r2, [r4, #15]
d03c4946:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c494a:	685b      	ldr	r3, [r3, #4]
d03c494c:	68db      	ldr	r3, [r3, #12]
d03c494e:	4798      	blx	r3
d03c4950:	7b23      	ldrb	r3, [r4, #12]
d03c4952:	7b62      	ldrb	r2, [r4, #13]
d03c4954:	f240 1139 	movw	r1, #313	; 0x139
d03c4958:	202f      	movs	r0, #47	; 0x2f
d03c495a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c495e:	7ba2      	ldrb	r2, [r4, #14]
d03c4960:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4964:	7be2      	ldrb	r2, [r4, #15]
d03c4966:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c496a:	222e      	movs	r2, #46	; 0x2e
d03c496c:	685b      	ldr	r3, [r3, #4]
d03c496e:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c4972:	2302      	movs	r3, #2
d03c4974:	47c0      	blx	r8
d03c4976:	7b23      	ldrb	r3, [r4, #12]
d03c4978:	7b62      	ldrb	r2, [r4, #13]
d03c497a:	205b      	movs	r0, #91	; 0x5b
d03c497c:	f240 111d 	movw	r1, #285	; 0x11d
d03c4980:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4984:	7ba2      	ldrb	r2, [r4, #14]
d03c4986:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c498a:	7be2      	ldrb	r2, [r4, #15]
d03c498c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4990:	2202      	movs	r2, #2
d03c4992:	685b      	ldr	r3, [r3, #4]
d03c4994:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c4998:	231e      	movs	r3, #30
d03c499a:	47c0      	blx	r8
d03c499c:	7b23      	ldrb	r3, [r4, #12]
d03c499e:	7b62      	ldrb	r2, [r4, #13]
d03c49a0:	2e00      	cmp	r6, #0
d03c49a2:	f240 1125 	movw	r1, #293	; 0x125
d03c49a6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c49aa:	7ba2      	ldrb	r2, [r4, #14]
d03c49ac:	bf04      	itt	eq
d03c49ae:	f44f 7192 	moveq.w	r1, #292	; 0x124
d03c49b2:	263a      	moveq	r6, #58	; 0x3a
d03c49b4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c49b8:	7be2      	ldrb	r2, [r4, #15]
d03c49ba:	bf18      	it	ne
d03c49bc:	263b      	movne	r6, #59	; 0x3b
d03c49be:	2d00      	cmp	r5, #0
d03c49c0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c49c4:	9107      	str	r1, [sp, #28]
d03c49c6:	bf14      	ite	ne
d03c49c8:	200f      	movne	r0, #15
d03c49ca:	2019      	moveq	r0, #25
d03c49cc:	685b      	ldr	r3, [r3, #4]
d03c49ce:	68db      	ldr	r3, [r3, #12]
d03c49d0:	4798      	blx	r3
d03c49d2:	7b23      	ldrb	r3, [r4, #12]
d03c49d4:	7b62      	ldrb	r2, [r4, #13]
d03c49d6:	4630      	mov	r0, r6
d03c49d8:	9907      	ldr	r1, [sp, #28]
d03c49da:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c49de:	7ba2      	ldrb	r2, [r4, #14]
d03c49e0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c49e4:	7be2      	ldrb	r2, [r4, #15]
d03c49e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c49ea:	4a68      	ldr	r2, [pc, #416]	; (d03c4b8c <ui_draw_seq+0x5fc>)
d03c49ec:	685b      	ldr	r3, [r3, #4]
d03c49ee:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c49f0:	4798      	blx	r3
d03c49f2:	4b67      	ldr	r3, [pc, #412]	; (d03c4b90 <ui_draw_seq+0x600>)
d03c49f4:	781b      	ldrb	r3, [r3, #0]
d03c49f6:	2b00      	cmp	r3, #0
d03c49f8:	f040 80c5 	bne.w	d03c4b86 <ui_draw_seq+0x5f6>
d03c49fc:	783a      	ldrb	r2, [r7, #0]
d03c49fe:	f89a 3000 	ldrb.w	r3, [sl]
d03c4a02:	4313      	orrs	r3, r2
d03c4a04:	4a63      	ldr	r2, [pc, #396]	; (d03c4b94 <ui_draw_seq+0x604>)
d03c4a06:	2b00      	cmp	r3, #0
d03c4a08:	4b63      	ldr	r3, [pc, #396]	; (d03c4b98 <ui_draw_seq+0x608>)
d03c4a0a:	bf12      	itee	ne
d03c4a0c:	2201      	movne	r2, #1
d03c4a0e:	4613      	moveq	r3, r2
d03c4a10:	2200      	moveq	r2, #0
d03c4a12:	2400      	movs	r4, #0
d03c4a14:	2520      	movs	r5, #32
d03c4a16:	9202      	str	r2, [sp, #8]
d03c4a18:	2162      	movs	r1, #98	; 0x62
d03c4a1a:	9301      	str	r3, [sp, #4]
d03c4a1c:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c4a20:	2334      	movs	r3, #52	; 0x34
d03c4a22:	203d      	movs	r0, #61	; 0x3d
d03c4a24:	9403      	str	r4, [sp, #12]
d03c4a26:	2601      	movs	r6, #1
d03c4a28:	9500      	str	r5, [sp, #0]
d03c4a2a:	f7fe fd5b 	bl	d03c34e4 <ui_create_button>
d03c4a2e:	4b5b      	ldr	r3, [pc, #364]	; (d03c4b9c <ui_draw_seq+0x60c>)
d03c4a30:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c4a34:	219a      	movs	r1, #154	; 0x9a
d03c4a36:	9301      	str	r3, [sp, #4]
d03c4a38:	203e      	movs	r0, #62	; 0x3e
d03c4a3a:	2330      	movs	r3, #48	; 0x30
d03c4a3c:	9403      	str	r4, [sp, #12]
d03c4a3e:	9402      	str	r4, [sp, #8]
d03c4a40:	9500      	str	r5, [sp, #0]
d03c4a42:	f7fe fd4f 	bl	d03c34e4 <ui_create_button>
d03c4a46:	4b56      	ldr	r3, [pc, #344]	; (d03c4ba0 <ui_draw_seq+0x610>)
d03c4a48:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c4a4c:	21ce      	movs	r1, #206	; 0xce
d03c4a4e:	9301      	str	r3, [sp, #4]
d03c4a50:	2044      	movs	r0, #68	; 0x44
d03c4a52:	2332      	movs	r3, #50	; 0x32
d03c4a54:	9403      	str	r4, [sp, #12]
d03c4a56:	9402      	str	r4, [sp, #8]
d03c4a58:	9500      	str	r5, [sp, #0]
d03c4a5a:	f7fe fd43 	bl	d03c34e4 <ui_create_button>
d03c4a5e:	4b51      	ldr	r3, [pc, #324]	; (d03c4ba4 <ui_draw_seq+0x614>)
d03c4a60:	9403      	str	r4, [sp, #12]
d03c4a62:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c4a66:	781b      	ldrb	r3, [r3, #0]
d03c4a68:	f44f 7182 	mov.w	r1, #260	; 0x104
d03c4a6c:	2045      	movs	r0, #69	; 0x45
d03c4a6e:	9500      	str	r5, [sp, #0]
d03c4a70:	9302      	str	r3, [sp, #8]
d03c4a72:	4b4d      	ldr	r3, [pc, #308]	; (d03c4ba8 <ui_draw_seq+0x618>)
d03c4a74:	9301      	str	r3, [sp, #4]
d03c4a76:	2332      	movs	r3, #50	; 0x32
d03c4a78:	f7fe fd34 	bl	d03c34e4 <ui_create_button>
d03c4a7c:	4b4b      	ldr	r3, [pc, #300]	; (d03c4bac <ui_draw_seq+0x61c>)
d03c4a7e:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c4a82:	f44f 719d 	mov.w	r1, #314	; 0x13a
d03c4a86:	9301      	str	r3, [sp, #4]
d03c4a88:	203f      	movs	r0, #63	; 0x3f
d03c4a8a:	231a      	movs	r3, #26
d03c4a8c:	9603      	str	r6, [sp, #12]
d03c4a8e:	9402      	str	r4, [sp, #8]
d03c4a90:	9500      	str	r5, [sp, #0]
d03c4a92:	f7fe fd27 	bl	d03c34e4 <ui_create_button>
d03c4a96:	4b46      	ldr	r3, [pc, #280]	; (d03c4bb0 <ui_draw_seq+0x620>)
d03c4a98:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c4a9c:	f44f 71ac 	mov.w	r1, #344	; 0x158
d03c4aa0:	9301      	str	r3, [sp, #4]
d03c4aa2:	2040      	movs	r0, #64	; 0x40
d03c4aa4:	231a      	movs	r3, #26
d03c4aa6:	9603      	str	r6, [sp, #12]
d03c4aa8:	9402      	str	r4, [sp, #8]
d03c4aaa:	9500      	str	r5, [sp, #0]
d03c4aac:	f7fe fd1a 	bl	d03c34e4 <ui_create_button>
d03c4ab0:	f899 2000 	ldrb.w	r2, [r9]
d03c4ab4:	493f      	ldr	r1, [pc, #252]	; (d03c4bb4 <ui_draw_seq+0x624>)
d03c4ab6:	2041      	movs	r0, #65	; 0x41
d03c4ab8:	4b3f      	ldr	r3, [pc, #252]	; (d03c4bb8 <ui_draw_seq+0x628>)
d03c4aba:	9202      	str	r2, [sp, #8]
d03c4abc:	42a2      	cmp	r2, r4
d03c4abe:	bf08      	it	eq
d03c4ac0:	460b      	moveq	r3, r1
d03c4ac2:	9403      	str	r4, [sp, #12]
d03c4ac4:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c4ac8:	f44f 71bb 	mov.w	r1, #374	; 0x176
d03c4acc:	9301      	str	r3, [sp, #4]
d03c4ace:	2332      	movs	r3, #50	; 0x32
d03c4ad0:	9500      	str	r5, [sp, #0]
d03c4ad2:	f7fe fd07 	bl	d03c34e4 <ui_create_button>
d03c4ad6:	4b39      	ldr	r3, [pc, #228]	; (d03c4bbc <ui_draw_seq+0x62c>)
d03c4ad8:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c4adc:	f44f 71d6 	mov.w	r1, #428	; 0x1ac
d03c4ae0:	9301      	str	r3, [sp, #4]
d03c4ae2:	2042      	movs	r0, #66	; 0x42
d03c4ae4:	2316      	movs	r3, #22
d03c4ae6:	9403      	str	r4, [sp, #12]
d03c4ae8:	9402      	str	r4, [sp, #8]
d03c4aea:	9500      	str	r5, [sp, #0]
d03c4aec:	f7fe fcfa 	bl	d03c34e4 <ui_create_button>
d03c4af0:	4b33      	ldr	r3, [pc, #204]	; (d03c4bc0 <ui_draw_seq+0x630>)
d03c4af2:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c4af6:	f44f 71e3 	mov.w	r1, #454	; 0x1c6
d03c4afa:	9301      	str	r3, [sp, #4]
d03c4afc:	2043      	movs	r0, #67	; 0x43
d03c4afe:	2316      	movs	r3, #22
d03c4b00:	9403      	str	r4, [sp, #12]
d03c4b02:	9402      	str	r4, [sp, #8]
d03c4b04:	9500      	str	r5, [sp, #0]
d03c4b06:	f7fe fced 	bl	d03c34e4 <ui_create_button>
d03c4b0a:	b021      	add	sp, #132	; 0x84
d03c4b0c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c4b10:	4e2c      	ldr	r6, [pc, #176]	; (d03c4bc4 <ui_draw_seq+0x634>)
d03c4b12:	e558      	b.n	d03c45c6 <ui_draw_seq+0x36>
d03c4b14:	4e1d      	ldr	r6, [pc, #116]	; (d03c4b8c <ui_draw_seq+0x5fc>)
d03c4b16:	e556      	b.n	d03c45c6 <ui_draw_seq+0x36>
d03c4b18:	4e2b      	ldr	r6, [pc, #172]	; (d03c4bc8 <ui_draw_seq+0x638>)
d03c4b1a:	e554      	b.n	d03c45c6 <ui_draw_seq+0x36>
d03c4b1c:	f89c c000 	ldrb.w	ip, [ip]
d03c4b20:	7809      	ldrb	r1, [r1, #0]
d03c4b22:	f8df 80b4 	ldr.w	r8, [pc, #180]	; d03c4bd8 <ui_draw_seq+0x648>
d03c4b26:	f899 2000 	ldrb.w	r2, [r9]
d03c4b2a:	f001 0103 	and.w	r1, r1, #3
d03c4b2e:	4b27      	ldr	r3, [pc, #156]	; (d03c4bcc <ui_draw_seq+0x63c>)
d03c4b30:	f81e 1001 	ldrb.w	r1, [lr, r1]
d03c4b34:	2a00      	cmp	r2, #0
d03c4b36:	bf14      	ite	ne
d03c4b38:	461a      	movne	r2, r3
d03c4b3a:	4642      	moveq	r2, r8
d03c4b3c:	f1bc 0f00 	cmp.w	ip, #0
d03c4b40:	bf08      	it	eq
d03c4b42:	4643      	moveq	r3, r8
d03c4b44:	f8df c094 	ldr.w	ip, [pc, #148]	; d03c4bdc <ui_draw_seq+0x64c>
d03c4b48:	f8dc 0000 	ldr.w	r0, [ip]
d03c4b4c:	9303      	str	r3, [sp, #12]
d03c4b4e:	4b20      	ldr	r3, [pc, #128]	; (d03c4bd0 <ui_draw_seq+0x640>)
d03c4b50:	9004      	str	r0, [sp, #16]
d03c4b52:	a808      	add	r0, sp, #32
d03c4b54:	9102      	str	r1, [sp, #8]
d03c4b56:	2160      	movs	r1, #96	; 0x60
d03c4b58:	9201      	str	r2, [sp, #4]
d03c4b5a:	9600      	str	r6, [sp, #0]
d03c4b5c:	4a1d      	ldr	r2, [pc, #116]	; (d03c4bd4 <ui_draw_seq+0x644>)
d03c4b5e:	881b      	ldrh	r3, [r3, #0]
d03c4b60:	f005 fa04 	bl	d03c9f6c <sniprintf>
d03c4b64:	e5bc      	b.n	d03c46e0 <ui_draw_seq+0x150>
d03c4b66:	b94d      	cbnz	r5, d03c4b7c <ui_draw_seq+0x5ec>
d03c4b68:	462e      	mov	r6, r5
d03c4b6a:	f04f 0815 	mov.w	r8, #21
d03c4b6e:	221b      	movs	r2, #27
d03c4b70:	e611      	b.n	d03c4796 <ui_draw_seq+0x206>
d03c4b72:	f04f 080d 	mov.w	r8, #13
d03c4b76:	2214      	movs	r2, #20
d03c4b78:	4643      	mov	r3, r8
d03c4b7a:	e60d      	b.n	d03c4798 <ui_draw_seq+0x208>
d03c4b7c:	2600      	movs	r6, #0
d03c4b7e:	f04f 080d 	mov.w	r8, #13
d03c4b82:	220c      	movs	r2, #12
d03c4b84:	e7f8      	b.n	d03c4b78 <ui_draw_seq+0x5e8>
d03c4b86:	4b04      	ldr	r3, [pc, #16]	; (d03c4b98 <ui_draw_seq+0x608>)
d03c4b88:	2201      	movs	r2, #1
d03c4b8a:	e742      	b.n	d03c4a12 <ui_draw_seq+0x482>
d03c4b8c:	d03cb71d 	.word	0xd03cb71d
d03c4b90:	d03cd09c 	.word	0xd03cd09c
d03c4b94:	d03cb72a 	.word	0xd03cb72a
d03c4b98:	d03cb725 	.word	0xd03cb725
d03c4b9c:	d03cb79f 	.word	0xd03cb79f
d03c4ba0:	d03cb7a4 	.word	0xd03cb7a4
d03c4ba4:	d03ccf6a 	.word	0xd03ccf6a
d03c4ba8:	d03cb321 	.word	0xd03cb321
d03c4bac:	d03cb7a8 	.word	0xd03cb7a8
d03c4bb0:	d03cb7aa 	.word	0xd03cb7aa
d03c4bb4:	d03cb738 	.word	0xd03cb738
d03c4bb8:	d03cb733 	.word	0xd03cb733
d03c4bbc:	d03cb6c6 	.word	0xd03cb6c6
d03c4bc0:	d03cb6c8 	.word	0xd03cb6c8
d03c4bc4:	d03cb717 	.word	0xd03cb717
d03c4bc8:	d03cb721 	.word	0xd03cb721
d03c4bcc:	d03cb8c9 	.word	0xd03cb8c9
d03c4bd0:	d03ccf4c 	.word	0xd03ccf4c
d03c4bd4:	d03cb76e 	.word	0xd03cb76e
d03c4bd8:	d03cb72f 	.word	0xd03cb72f
d03c4bdc:	d03ccf74 	.word	0xd03ccf74

d03c4be0 <ui_redraw_backbuffer>:
d03c4be0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c4be4:	4c90      	ldr	r4, [pc, #576]	; (d03c4e28 <ui_redraw_backbuffer+0x248>)
d03c4be6:	2500      	movs	r5, #0
d03c4be8:	4e90      	ldr	r6, [pc, #576]	; (d03c4e2c <ui_redraw_backbuffer+0x24c>)
d03c4bea:	7b23      	ldrb	r3, [r4, #12]
d03c4bec:	7b62      	ldrb	r2, [r4, #13]
d03c4bee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4bf2:	7ba2      	ldrb	r2, [r4, #14]
d03c4bf4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4bf8:	7be2      	ldrb	r2, [r4, #15]
d03c4bfa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4bfe:	681b      	ldr	r3, [r3, #0]
d03c4c00:	ed2d 8b02 	vpush	{d8}
d03c4c04:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d03c4c06:	b0a1      	sub	sp, #132	; 0x84
d03c4c08:	4798      	blx	r3
d03c4c0a:	7b23      	ldrb	r3, [r4, #12]
d03c4c0c:	7b62      	ldrb	r2, [r4, #13]
d03c4c0e:	ee08 0a10 	vmov	s16, r0
d03c4c12:	4887      	ldr	r0, [pc, #540]	; (d03c4e30 <ui_redraw_backbuffer+0x250>)
d03c4c14:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4c18:	7ba2      	ldrb	r2, [r4, #14]
d03c4c1a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4c1e:	7be2      	ldrb	r2, [r4, #15]
d03c4c20:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4c24:	681b      	ldr	r3, [r3, #0]
d03c4c26:	6a1b      	ldr	r3, [r3, #32]
d03c4c28:	4798      	blx	r3
d03c4c2a:	7b23      	ldrb	r3, [r4, #12]
d03c4c2c:	7b62      	ldrb	r2, [r4, #13]
d03c4c2e:	2100      	movs	r1, #0
d03c4c30:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4c34:	7ba2      	ldrb	r2, [r4, #14]
d03c4c36:	4608      	mov	r0, r1
d03c4c38:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4c3c:	7be2      	ldrb	r2, [r4, #15]
d03c4c3e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4c42:	681b      	ldr	r3, [r3, #0]
d03c4c44:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d03c4c46:	4798      	blx	r3
d03c4c48:	7b23      	ldrb	r3, [r4, #12]
d03c4c4a:	7b62      	ldrb	r2, [r4, #13]
d03c4c4c:	4878      	ldr	r0, [pc, #480]	; (d03c4e30 <ui_redraw_backbuffer+0x250>)
d03c4c4e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4c52:	7ba2      	ldrb	r2, [r4, #14]
d03c4c54:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4c58:	7be2      	ldrb	r2, [r4, #15]
d03c4c5a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4c5e:	681b      	ldr	r3, [r3, #0]
d03c4c60:	699b      	ldr	r3, [r3, #24]
d03c4c62:	4798      	blx	r3
d03c4c64:	4b73      	ldr	r3, [pc, #460]	; (d03c4e34 <ui_redraw_backbuffer+0x254>)
d03c4c66:	701d      	strb	r5, [r3, #0]
d03c4c68:	7b23      	ldrb	r3, [r4, #12]
d03c4c6a:	7b62      	ldrb	r2, [r4, #13]
d03c4c6c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4c70:	7ba2      	ldrb	r2, [r4, #14]
d03c4c72:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4c76:	7be2      	ldrb	r2, [r4, #15]
d03c4c78:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4c7c:	685b      	ldr	r3, [r3, #4]
d03c4c7e:	681b      	ldr	r3, [r3, #0]
d03c4c80:	4798      	blx	r3
d03c4c82:	7b23      	ldrb	r3, [r4, #12]
d03c4c84:	7b62      	ldrb	r2, [r4, #13]
d03c4c86:	f816 0b01 	ldrb.w	r0, [r6], #1
d03c4c8a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4c8e:	7ba2      	ldrb	r2, [r4, #14]
d03c4c90:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4c94:	7be2      	ldrb	r2, [r4, #15]
d03c4c96:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4c9a:	685b      	ldr	r3, [r3, #4]
d03c4c9c:	68db      	ldr	r3, [r3, #12]
d03c4c9e:	4798      	blx	r3
d03c4ca0:	7b23      	ldrb	r3, [r4, #12]
d03c4ca2:	7b62      	ldrb	r2, [r4, #13]
d03c4ca4:	b229      	sxth	r1, r5
d03c4ca6:	3528      	adds	r5, #40	; 0x28
d03c4ca8:	2000      	movs	r0, #0
d03c4caa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4cae:	7ba2      	ldrb	r2, [r4, #14]
d03c4cb0:	b2ad      	uxth	r5, r5
d03c4cb2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4cb6:	7be2      	ldrb	r2, [r4, #15]
d03c4cb8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4cbc:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c4cc0:	685b      	ldr	r3, [r3, #4]
d03c4cc2:	685f      	ldr	r7, [r3, #4]
d03c4cc4:	2328      	movs	r3, #40	; 0x28
d03c4cc6:	47b8      	blx	r7
d03c4cc8:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d03c4ccc:	d1d9      	bne.n	d03c4c82 <ui_redraw_backbuffer+0xa2>
d03c4cce:	7b23      	ldrb	r3, [r4, #12]
d03c4cd0:	2015      	movs	r0, #21
d03c4cd2:	7b62      	ldrb	r2, [r4, #13]
d03c4cd4:	4e58      	ldr	r6, [pc, #352]	; (d03c4e38 <ui_redraw_backbuffer+0x258>)
d03c4cd6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4cda:	7ba2      	ldrb	r2, [r4, #14]
d03c4cdc:	f8df 9164 	ldr.w	r9, [pc, #356]	; d03c4e44 <ui_redraw_backbuffer+0x264>
d03c4ce0:	46b2      	mov	sl, r6
d03c4ce2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4ce6:	7be2      	ldrb	r2, [r4, #15]
d03c4ce8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4cec:	685b      	ldr	r3, [r3, #4]
d03c4cee:	68db      	ldr	r3, [r3, #12]
d03c4cf0:	4798      	blx	r3
d03c4cf2:	7b23      	ldrb	r3, [r4, #12]
d03c4cf4:	7b62      	ldrb	r2, [r4, #13]
d03c4cf6:	2100      	movs	r1, #0
d03c4cf8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4cfc:	7ba2      	ldrb	r2, [r4, #14]
d03c4cfe:	4608      	mov	r0, r1
d03c4d00:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4d04:	7be2      	ldrb	r2, [r4, #15]
d03c4d06:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4d0a:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c4d0e:	685b      	ldr	r3, [r3, #4]
d03c4d10:	685d      	ldr	r5, [r3, #4]
d03c4d12:	2302      	movs	r3, #2
d03c4d14:	47a8      	blx	r5
d03c4d16:	7b23      	ldrb	r3, [r4, #12]
d03c4d18:	7b62      	ldrb	r2, [r4, #13]
d03c4d1a:	201a      	movs	r0, #26
d03c4d1c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4d20:	7ba2      	ldrb	r2, [r4, #14]
d03c4d22:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4d26:	7be2      	ldrb	r2, [r4, #15]
d03c4d28:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4d2c:	685b      	ldr	r3, [r3, #4]
d03c4d2e:	68db      	ldr	r3, [r3, #12]
d03c4d30:	4798      	blx	r3
d03c4d32:	7b23      	ldrb	r3, [r4, #12]
d03c4d34:	7b62      	ldrb	r2, [r4, #13]
d03c4d36:	213f      	movs	r1, #63	; 0x3f
d03c4d38:	2000      	movs	r0, #0
d03c4d3a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4d3e:	7ba2      	ldrb	r2, [r4, #14]
d03c4d40:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4d44:	7be2      	ldrb	r2, [r4, #15]
d03c4d46:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4d4a:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c4d4e:	685b      	ldr	r3, [r3, #4]
d03c4d50:	685d      	ldr	r5, [r3, #4]
d03c4d52:	2301      	movs	r3, #1
d03c4d54:	47a8      	blx	r5
d03c4d56:	7b23      	ldrb	r3, [r4, #12]
d03c4d58:	7b62      	ldrb	r2, [r4, #13]
d03c4d5a:	20e8      	movs	r0, #232	; 0xe8
d03c4d5c:	2508      	movs	r5, #8
d03c4d5e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4d62:	7ba2      	ldrb	r2, [r4, #14]
d03c4d64:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4d68:	7be2      	ldrb	r2, [r4, #15]
d03c4d6a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4d6e:	685b      	ldr	r3, [r3, #4]
d03c4d70:	68db      	ldr	r3, [r3, #12]
d03c4d72:	4798      	blx	r3
d03c4d74:	7b23      	ldrb	r3, [r4, #12]
d03c4d76:	7b62      	ldrb	r2, [r4, #13]
d03c4d78:	2108      	movs	r1, #8
d03c4d7a:	200c      	movs	r0, #12
d03c4d7c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4d80:	7ba2      	ldrb	r2, [r4, #14]
d03c4d82:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4d86:	7be2      	ldrb	r2, [r4, #15]
d03c4d88:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4d8c:	4a2b      	ldr	r2, [pc, #172]	; (d03c4e3c <ui_redraw_backbuffer+0x25c>)
d03c4d8e:	685b      	ldr	r3, [r3, #4]
d03c4d90:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c4d92:	4798      	blx	r3
d03c4d94:	7b23      	ldrb	r3, [r4, #12]
d03c4d96:	7b62      	ldrb	r2, [r4, #13]
d03c4d98:	20e7      	movs	r0, #231	; 0xe7
d03c4d9a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4d9e:	7ba2      	ldrb	r2, [r4, #14]
d03c4da0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4da4:	7be2      	ldrb	r2, [r4, #15]
d03c4da6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4daa:	685b      	ldr	r3, [r3, #4]
d03c4dac:	68db      	ldr	r3, [r3, #12]
d03c4dae:	4798      	blx	r3
d03c4db0:	7b23      	ldrb	r3, [r4, #12]
d03c4db2:	7b62      	ldrb	r2, [r4, #13]
d03c4db4:	2108      	movs	r1, #8
d03c4db6:	f44f 7087 	mov.w	r0, #270	; 0x10e
d03c4dba:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4dbe:	7ba2      	ldrb	r2, [r4, #14]
d03c4dc0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4dc4:	7be2      	ldrb	r2, [r4, #15]
d03c4dc6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4dca:	4a1d      	ldr	r2, [pc, #116]	; (d03c4e40 <ui_redraw_backbuffer+0x260>)
d03c4dcc:	685b      	ldr	r3, [r3, #4]
d03c4dce:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c4dd0:	4798      	blx	r3
d03c4dd2:	2300      	movs	r3, #0
d03c4dd4:	461f      	mov	r7, r3
d03c4dd6:	f859 1b04 	ldr.w	r1, [r9], #4
d03c4dda:	f103 0801 	add.w	r8, r3, #1
d03c4dde:	9703      	str	r7, [sp, #12]
d03c4de0:	b2db      	uxtb	r3, r3
d03c4de2:	7832      	ldrb	r2, [r6, #0]
d03c4de4:	fa1f f088 	uxth.w	r0, r8
d03c4de8:	9101      	str	r1, [sp, #4]
d03c4dea:	b229      	sxth	r1, r5
d03c4dec:	eba2 0b03 	sub.w	fp, r2, r3
d03c4df0:	2220      	movs	r2, #32
d03c4df2:	354c      	adds	r5, #76	; 0x4c
d03c4df4:	f1db 0300 	rsbs	r3, fp, #0
d03c4df8:	b2ad      	uxth	r5, r5
d03c4dfa:	eb43 030b 	adc.w	r3, r3, fp
d03c4dfe:	9302      	str	r3, [sp, #8]
d03c4e00:	231c      	movs	r3, #28
d03c4e02:	9300      	str	r3, [sp, #0]
d03c4e04:	2344      	movs	r3, #68	; 0x44
d03c4e06:	f7fe fb6d 	bl	d03c34e4 <ui_create_button>
d03c4e0a:	4643      	mov	r3, r8
d03c4e0c:	2b06      	cmp	r3, #6
d03c4e0e:	d1e2      	bne.n	d03c4dd6 <ui_redraw_backbuffer+0x1f6>
d03c4e10:	7833      	ldrb	r3, [r6, #0]
d03c4e12:	2b05      	cmp	r3, #5
d03c4e14:	f200 87f0 	bhi.w	d03c5df8 <ui_redraw_backbuffer+0x1218>
d03c4e18:	e8df f013 	tbh	[pc, r3, lsl #1]
d03c4e1c:	001607f0 	.word	0x001607f0
d03c4e20:	02d20198 	.word	0x02d20198
d03c4e24:	07ea03e0 	.word	0x07ea03e0
d03c4e28:	2001f000 	.word	0x2001f000
d03c4e2c:	d03cc4f0 	.word	0xd03cc4f0
d03c4e30:	d03cf6a0 	.word	0xd03cf6a0
d03c4e34:	d03cd0e8 	.word	0xd03cd0e8
d03c4e38:	d03cf2d0 	.word	0xd03cf2d0
d03c4e3c:	d03cb7fd 	.word	0xd03cb7fd
d03c4e40:	d03cb812 	.word	0xd03cb812
d03c4e44:	d03cc480 	.word	0xd03cc480
d03c4e48:	4dac      	ldr	r5, [pc, #688]	; (d03c50fc <ui_redraw_backbuffer+0x51c>)
d03c4e4a:	2700      	movs	r7, #0
d03c4e4c:	4bac      	ldr	r3, [pc, #688]	; (d03c5100 <ui_redraw_backbuffer+0x520>)
d03c4e4e:	f44f 72e6 	mov.w	r2, #460	; 0x1cc
d03c4e52:	f895 8000 	ldrb.w	r8, [r5]
d03c4e56:	2142      	movs	r1, #66	; 0x42
d03c4e58:	200a      	movs	r0, #10
d03c4e5a:	9300      	str	r3, [sp, #0]
d03c4e5c:	23cc      	movs	r3, #204	; 0xcc
d03c4e5e:	2620      	movs	r6, #32
d03c4e60:	f7fb ff80 	bl	d03c0d64 <ui_panel>
d03c4e64:	9703      	str	r7, [sp, #12]
d03c4e66:	782b      	ldrb	r3, [r5, #0]
d03c4e68:	2246      	movs	r2, #70	; 0x46
d03c4e6a:	21f4      	movs	r1, #244	; 0xf4
d03c4e6c:	2064      	movs	r0, #100	; 0x64
d03c4e6e:	fab3 f383 	clz	r3, r3
d03c4e72:	9600      	str	r6, [sp, #0]
d03c4e74:	ea4f 0888 	mov.w	r8, r8, lsl #2
d03c4e78:	f8df b2ac 	ldr.w	fp, [pc, #684]	; d03c5128 <ui_redraw_backbuffer+0x548>
d03c4e7c:	095b      	lsrs	r3, r3, #5
d03c4e7e:	fa5f f888 	uxtb.w	r8, r8
d03c4e82:	9302      	str	r3, [sp, #8]
d03c4e84:	4b9f      	ldr	r3, [pc, #636]	; (d03c5104 <ui_redraw_backbuffer+0x524>)
d03c4e86:	9301      	str	r3, [sp, #4]
d03c4e88:	2334      	movs	r3, #52	; 0x34
d03c4e8a:	f7fe fb2b 	bl	d03c34e4 <ui_create_button>
d03c4e8e:	9703      	str	r7, [sp, #12]
d03c4e90:	782b      	ldrb	r3, [r5, #0]
d03c4e92:	2246      	movs	r2, #70	; 0x46
d03c4e94:	f44f 7194 	mov.w	r1, #296	; 0x128
d03c4e98:	2065      	movs	r0, #101	; 0x65
d03c4e9a:	f103 3cff 	add.w	ip, r3, #4294967295	; 0xffffffff
d03c4e9e:	9600      	str	r6, [sp, #0]
d03c4ea0:	f1dc 0300 	rsbs	r3, ip, #0
d03c4ea4:	eb43 030c 	adc.w	r3, r3, ip
d03c4ea8:	9302      	str	r3, [sp, #8]
d03c4eaa:	4b97      	ldr	r3, [pc, #604]	; (d03c5108 <ui_redraw_backbuffer+0x528>)
d03c4eac:	9301      	str	r3, [sp, #4]
d03c4eae:	2334      	movs	r3, #52	; 0x34
d03c4eb0:	f7fe fb18 	bl	d03c34e4 <ui_create_button>
d03c4eb4:	9703      	str	r7, [sp, #12]
d03c4eb6:	782b      	ldrb	r3, [r5, #0]
d03c4eb8:	2246      	movs	r2, #70	; 0x46
d03c4eba:	f44f 71ae 	mov.w	r1, #348	; 0x15c
d03c4ebe:	2066      	movs	r0, #102	; 0x66
d03c4ec0:	f1a3 0e02 	sub.w	lr, r3, #2
d03c4ec4:	9600      	str	r6, [sp, #0]
d03c4ec6:	f1de 0300 	rsbs	r3, lr, #0
d03c4eca:	eb43 030e 	adc.w	r3, r3, lr
d03c4ece:	9302      	str	r3, [sp, #8]
d03c4ed0:	4b8e      	ldr	r3, [pc, #568]	; (d03c510c <ui_redraw_backbuffer+0x52c>)
d03c4ed2:	9301      	str	r3, [sp, #4]
d03c4ed4:	2334      	movs	r3, #52	; 0x34
d03c4ed6:	f7fe fb05 	bl	d03c34e4 <ui_create_button>
d03c4eda:	9703      	str	r7, [sp, #12]
d03c4edc:	782b      	ldrb	r3, [r5, #0]
d03c4ede:	f44f 71c8 	mov.w	r1, #400	; 0x190
d03c4ee2:	2246      	movs	r2, #70	; 0x46
d03c4ee4:	2067      	movs	r0, #103	; 0x67
d03c4ee6:	f1a3 0903 	sub.w	r9, r3, #3
d03c4eea:	9600      	str	r6, [sp, #0]
d03c4eec:	2578      	movs	r5, #120	; 0x78
d03c4eee:	267c      	movs	r6, #124	; 0x7c
d03c4ef0:	f1d9 0300 	rsbs	r3, r9, #0
d03c4ef4:	eb43 0309 	adc.w	r3, r3, r9
d03c4ef8:	9302      	str	r3, [sp, #8]
d03c4efa:	4b85      	ldr	r3, [pc, #532]	; (d03c5110 <ui_redraw_backbuffer+0x530>)
d03c4efc:	9301      	str	r3, [sp, #4]
d03c4efe:	2334      	movs	r3, #52	; 0x34
d03c4f00:	f7fe faf0 	bl	d03c34e4 <ui_create_button>
d03c4f04:	7b23      	ldrb	r3, [r4, #12]
d03c4f06:	7b62      	ldrb	r2, [r4, #13]
d03c4f08:	20eb      	movs	r0, #235	; 0xeb
d03c4f0a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4f0e:	7ba2      	ldrb	r2, [r4, #14]
d03c4f10:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4f14:	7be2      	ldrb	r2, [r4, #15]
d03c4f16:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4f1a:	685b      	ldr	r3, [r3, #4]
d03c4f1c:	68db      	ldr	r3, [r3, #12]
d03c4f1e:	4798      	blx	r3
d03c4f20:	7b23      	ldrb	r3, [r4, #12]
d03c4f22:	7b62      	ldrb	r2, [r4, #13]
d03c4f24:	2160      	movs	r1, #96	; 0x60
d03c4f26:	2036      	movs	r0, #54	; 0x36
d03c4f28:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4f2c:	7ba2      	ldrb	r2, [r4, #14]
d03c4f2e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4f32:	7be2      	ldrb	r2, [r4, #15]
d03c4f34:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4f38:	4a76      	ldr	r2, [pc, #472]	; (d03c5114 <ui_redraw_backbuffer+0x534>)
d03c4f3a:	685b      	ldr	r3, [r3, #4]
d03c4f3c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c4f3e:	4798      	blx	r3
d03c4f40:	4b75      	ldr	r3, [pc, #468]	; (d03c5118 <ui_redraw_backbuffer+0x538>)
d03c4f42:	f813 9008 	ldrb.w	r9, [r3, r8]
d03c4f46:	f89b 3000 	ldrb.w	r3, [fp]
d03c4f4a:	4543      	cmp	r3, r8
d03c4f4c:	d120      	bne.n	d03c4f90 <ui_redraw_backbuffer+0x3b0>
d03c4f4e:	7b23      	ldrb	r3, [r4, #12]
d03c4f50:	20e5      	movs	r0, #229	; 0xe5
d03c4f52:	7b62      	ldrb	r2, [r4, #13]
d03c4f54:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4f58:	7ba2      	ldrb	r2, [r4, #14]
d03c4f5a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4f5e:	7be2      	ldrb	r2, [r4, #15]
d03c4f60:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4f64:	685b      	ldr	r3, [r3, #4]
d03c4f66:	68db      	ldr	r3, [r3, #12]
d03c4f68:	4798      	blx	r3
d03c4f6a:	7b23      	ldrb	r3, [r4, #12]
d03c4f6c:	7b62      	ldrb	r2, [r4, #13]
d03c4f6e:	1f71      	subs	r1, r6, #5
d03c4f70:	2018      	movs	r0, #24
d03c4f72:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4f76:	7ba2      	ldrb	r2, [r4, #14]
d03c4f78:	b209      	sxth	r1, r1
d03c4f7a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4f7e:	7be2      	ldrb	r2, [r4, #15]
d03c4f80:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4f84:	f44f 72d2 	mov.w	r2, #420	; 0x1a4
d03c4f88:	685b      	ldr	r3, [r3, #4]
d03c4f8a:	685f      	ldr	r7, [r3, #4]
d03c4f8c:	2320      	movs	r3, #32
d03c4f8e:	47b8      	blx	r7
d03c4f90:	f1b9 0f80 	cmp.w	r9, #128	; 0x80
d03c4f94:	f108 0701 	add.w	r7, r8, #1
d03c4f98:	4a60      	ldr	r2, [pc, #384]	; (d03c511c <ui_redraw_backbuffer+0x53c>)
d03c4f9a:	f04f 0160 	mov.w	r1, #96	; 0x60
d03c4f9e:	bf98      	it	ls
d03c4fa0:	4b5f      	ldrls	r3, [pc, #380]	; (d03c5120 <ui_redraw_backbuffer+0x540>)
d03c4fa2:	a808      	add	r0, sp, #32
d03c4fa4:	bf8c      	ite	hi
d03c4fa6:	4b5f      	ldrhi	r3, [pc, #380]	; (d03c5124 <ui_redraw_backbuffer+0x544>)
d03c4fa8:	f853 3029 	ldrls.w	r3, [r3, r9, lsl #2]
d03c4fac:	f8cd 9000 	str.w	r9, [sp]
d03c4fb0:	9301      	str	r3, [sp, #4]
d03c4fb2:	463b      	mov	r3, r7
d03c4fb4:	f004 ffda 	bl	d03c9f6c <sniprintf>
d03c4fb8:	7b23      	ldrb	r3, [r4, #12]
d03c4fba:	7b62      	ldrb	r2, [r4, #13]
d03c4fbc:	f1b8 0f09 	cmp.w	r8, #9
d03c4fc0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4fc4:	7ba2      	ldrb	r2, [r4, #14]
d03c4fc6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4fca:	7be2      	ldrb	r2, [r4, #15]
d03c4fcc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4fd0:	685b      	ldr	r3, [r3, #4]
d03c4fd2:	68db      	ldr	r3, [r3, #12]
d03c4fd4:	f000 808f 	beq.w	d03c50f6 <ui_redraw_backbuffer+0x516>
d03c4fd8:	4a53      	ldr	r2, [pc, #332]	; (d03c5128 <ui_redraw_backbuffer+0x548>)
d03c4fda:	7810      	ldrb	r0, [r2, #0]
d03c4fdc:	4540      	cmp	r0, r8
d03c4fde:	bf14      	ite	ne
d03c4fe0:	20e7      	movne	r0, #231	; 0xe7
d03c4fe2:	20e8      	moveq	r0, #232	; 0xe8
d03c4fe4:	4798      	blx	r3
d03c4fe6:	7b23      	ldrb	r3, [r4, #12]
d03c4fe8:	7b62      	ldrb	r2, [r4, #13]
d03c4fea:	4631      	mov	r1, r6
d03c4fec:	2034      	movs	r0, #52	; 0x34
d03c4fee:	f04f 0a01 	mov.w	sl, #1
d03c4ff2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4ff6:	7ba2      	ldrb	r2, [r4, #14]
d03c4ff8:	f04f 081e 	mov.w	r8, #30
d03c4ffc:	f04f 0900 	mov.w	r9, #0
d03c5000:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5004:	7be2      	ldrb	r2, [r4, #15]
d03c5006:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c500a:	aa08      	add	r2, sp, #32
d03c500c:	685b      	ldr	r3, [r3, #4]
d03c500e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5010:	4798      	blx	r3
d03c5012:	1f32      	subs	r2, r6, #4
d03c5014:	4b45      	ldr	r3, [pc, #276]	; (d03c512c <ui_redraw_backbuffer+0x54c>)
d03c5016:	4628      	mov	r0, r5
d03c5018:	b212      	sxth	r2, r2
d03c501a:	f44f 71ab 	mov.w	r1, #342	; 0x156
d03c501e:	9301      	str	r3, [sp, #4]
d03c5020:	232a      	movs	r3, #42	; 0x2a
d03c5022:	f8cd 8000 	str.w	r8, [sp]
d03c5026:	3624      	adds	r6, #36	; 0x24
d03c5028:	f8cd a00c 	str.w	sl, [sp, #12]
d03c502c:	f8cd 9008 	str.w	r9, [sp, #8]
d03c5030:	9205      	str	r2, [sp, #20]
d03c5032:	f7fe fa57 	bl	d03c34e4 <ui_create_button>
d03c5036:	f105 0014 	add.w	r0, r5, #20
d03c503a:	4455      	add	r5, sl
d03c503c:	4b3c      	ldr	r3, [pc, #240]	; (d03c5130 <ui_redraw_backbuffer+0x550>)
d03c503e:	f44f 71c6 	mov.w	r1, #396	; 0x18c
d03c5042:	b2ad      	uxth	r5, r5
d03c5044:	f8cd 8000 	str.w	r8, [sp]
d03c5048:	9301      	str	r3, [sp, #4]
d03c504a:	b280      	uxth	r0, r0
d03c504c:	232a      	movs	r3, #42	; 0x2a
d03c504e:	9a05      	ldr	r2, [sp, #20]
d03c5050:	f8cd a00c 	str.w	sl, [sp, #12]
d03c5054:	fa5f f887 	uxtb.w	r8, r7
d03c5058:	f8cd 9008 	str.w	r9, [sp, #8]
d03c505c:	f7fe fa42 	bl	d03c34e4 <ui_create_button>
d03c5060:	2d7c      	cmp	r5, #124	; 0x7c
d03c5062:	f47f af6d 	bne.w	d03c4f40 <ui_redraw_backbuffer+0x360>
d03c5066:	4b33      	ldr	r3, [pc, #204]	; (d03c5134 <ui_redraw_backbuffer+0x554>)
d03c5068:	781b      	ldrb	r3, [r3, #0]
d03c506a:	2b05      	cmp	r3, #5
d03c506c:	d027      	beq.n	d03c50be <ui_redraw_backbuffer+0x4de>
d03c506e:	2400      	movs	r4, #0
d03c5070:	2520      	movs	r5, #32
d03c5072:	4b31      	ldr	r3, [pc, #196]	; (d03c5138 <ui_redraw_backbuffer+0x558>)
d03c5074:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c5078:	2108      	movs	r1, #8
d03c507a:	2007      	movs	r0, #7
d03c507c:	9301      	str	r3, [sp, #4]
d03c507e:	2346      	movs	r3, #70	; 0x46
d03c5080:	9403      	str	r4, [sp, #12]
d03c5082:	9402      	str	r4, [sp, #8]
d03c5084:	9500      	str	r5, [sp, #0]
d03c5086:	f7fe fa2d 	bl	d03c34e4 <ui_create_button>
d03c508a:	4b2c      	ldr	r3, [pc, #176]	; (d03c513c <ui_redraw_backbuffer+0x55c>)
d03c508c:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c5090:	f44f 71b0 	mov.w	r1, #352	; 0x160
d03c5094:	2008      	movs	r0, #8
d03c5096:	9301      	str	r3, [sp, #4]
d03c5098:	9403      	str	r4, [sp, #12]
d03c509a:	2336      	movs	r3, #54	; 0x36
d03c509c:	9402      	str	r4, [sp, #8]
d03c509e:	9500      	str	r5, [sp, #0]
d03c50a0:	f7fe fa20 	bl	d03c34e4 <ui_create_button>
d03c50a4:	4b26      	ldr	r3, [pc, #152]	; (d03c5140 <ui_redraw_backbuffer+0x560>)
d03c50a6:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c50aa:	f44f 71ce 	mov.w	r1, #412	; 0x19c
d03c50ae:	9301      	str	r3, [sp, #4]
d03c50b0:	2009      	movs	r0, #9
d03c50b2:	2336      	movs	r3, #54	; 0x36
d03c50b4:	9403      	str	r4, [sp, #12]
d03c50b6:	9402      	str	r4, [sp, #8]
d03c50b8:	9500      	str	r5, [sp, #0]
d03c50ba:	f7fe fa13 	bl	d03c34e4 <ui_create_button>
d03c50be:	4b21      	ldr	r3, [pc, #132]	; (d03c5144 <ui_redraw_backbuffer+0x564>)
d03c50c0:	781b      	ldrb	r3, [r3, #0]
d03c50c2:	b10b      	cbz	r3, d03c50c8 <ui_redraw_backbuffer+0x4e8>
d03c50c4:	f7fe fc76 	bl	d03c39b4 <ui_draw_confirm_modal.part.0>
d03c50c8:	f7fe fd46 	bl	d03c3b58 <ui_draw_dialog>
d03c50cc:	4a1e      	ldr	r2, [pc, #120]	; (d03c5148 <ui_redraw_backbuffer+0x568>)
d03c50ce:	ee18 0a10 	vmov	r0, s16
d03c50d2:	7b13      	ldrb	r3, [r2, #12]
d03c50d4:	7b51      	ldrb	r1, [r2, #13]
d03c50d6:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c50da:	7b91      	ldrb	r1, [r2, #14]
d03c50dc:	7bd2      	ldrb	r2, [r2, #15]
d03c50de:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c50e2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c50e6:	681b      	ldr	r3, [r3, #0]
d03c50e8:	699b      	ldr	r3, [r3, #24]
d03c50ea:	4798      	blx	r3
d03c50ec:	b021      	add	sp, #132	; 0x84
d03c50ee:	ecbd 8b02 	vpop	{d8}
d03c50f2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c50f6:	20f7      	movs	r0, #247	; 0xf7
d03c50f8:	e774      	b.n	d03c4fe4 <ui_redraw_backbuffer+0x404>
d03c50fa:	bf00      	nop
d03c50fc:	d03cd9d2 	.word	0xd03cd9d2
d03c5100:	d03cb825 	.word	0xd03cb825
d03c5104:	d03cb839 	.word	0xd03cb839
d03c5108:	d03cb83d 	.word	0xd03cb83d
d03c510c:	d03cb841 	.word	0xd03cb841
d03c5110:	d03cb846 	.word	0xd03cb846
d03c5114:	d03cb84c 	.word	0xd03cb84c
d03c5118:	d03ccd04 	.word	0xd03ccd04
d03c511c:	d03cb861 	.word	0xd03cb861
d03c5120:	d03cc27c 	.word	0xd03cc27c
d03c5124:	d03cb529 	.word	0xd03cb529
d03c5128:	d03cf36a 	.word	0xd03cf36a
d03c512c:	d03cb7a8 	.word	0xd03cb7a8
d03c5130:	d03cb7aa 	.word	0xd03cb7aa
d03c5134:	d03cf2d0 	.word	0xd03cf2d0
d03c5138:	d03cba4f 	.word	0xd03cba4f
d03c513c:	d03cba55 	.word	0xd03cba55
d03c5140:	d03cba5a 	.word	0xd03cba5a
d03c5144:	d03cd9d3 	.word	0xd03cd9d3
d03c5148:	2001f000 	.word	0x2001f000
d03c514c:	4b8e      	ldr	r3, [pc, #568]	; (d03c5388 <ui_redraw_backbuffer+0x7a8>)
d03c514e:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03c5152:	4d8e      	ldr	r5, [pc, #568]	; (d03c538c <ui_redraw_backbuffer+0x7ac>)
d03c5154:	214e      	movs	r1, #78	; 0x4e
d03c5156:	f893 8000 	ldrb.w	r8, [r3]
d03c515a:	2010      	movs	r0, #16
d03c515c:	4b8c      	ldr	r3, [pc, #560]	; (d03c5390 <ui_redraw_backbuffer+0x7b0>)
d03c515e:	2701      	movs	r7, #1
d03c5160:	4c8c      	ldr	r4, [pc, #560]	; (d03c5394 <ui_redraw_backbuffer+0x7b4>)
d03c5162:	2600      	movs	r6, #0
d03c5164:	9300      	str	r3, [sp, #0]
d03c5166:	2334      	movs	r3, #52	; 0x34
d03c5168:	f7fb fdfc 	bl	d03c0d64 <ui_panel>
d03c516c:	882b      	ldrh	r3, [r5, #0]
d03c516e:	2160      	movs	r1, #96	; 0x60
d03c5170:	4a89      	ldr	r2, [pc, #548]	; (d03c5398 <ui_redraw_backbuffer+0x7b8>)
d03c5172:	a808      	add	r0, sp, #32
d03c5174:	f8df a238 	ldr.w	sl, [pc, #568]	; d03c53b0 <ui_redraw_backbuffer+0x7d0>
d03c5178:	f004 fef8 	bl	d03c9f6c <sniprintf>
d03c517c:	7b23      	ldrb	r3, [r4, #12]
d03c517e:	7b62      	ldrb	r2, [r4, #13]
d03c5180:	20e7      	movs	r0, #231	; 0xe7
d03c5182:	f8df 9230 	ldr.w	r9, [pc, #560]	; d03c53b4 <ui_redraw_backbuffer+0x7d4>
d03c5186:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c518a:	7ba2      	ldrb	r2, [r4, #14]
d03c518c:	f8df b228 	ldr.w	fp, [pc, #552]	; d03c53b8 <ui_redraw_backbuffer+0x7d8>
d03c5190:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5194:	7be2      	ldrb	r2, [r4, #15]
d03c5196:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c519a:	685b      	ldr	r3, [r3, #4]
d03c519c:	68db      	ldr	r3, [r3, #12]
d03c519e:	4798      	blx	r3
d03c51a0:	7b23      	ldrb	r3, [r4, #12]
d03c51a2:	7b62      	ldrb	r2, [r4, #13]
d03c51a4:	216a      	movs	r1, #106	; 0x6a
d03c51a6:	2020      	movs	r0, #32
d03c51a8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c51ac:	7ba2      	ldrb	r2, [r4, #14]
d03c51ae:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c51b2:	7be2      	ldrb	r2, [r4, #15]
d03c51b4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c51b8:	aa08      	add	r2, sp, #32
d03c51ba:	685b      	ldr	r3, [r3, #4]
d03c51bc:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c51be:	4798      	blx	r3
d03c51c0:	f44f 7396 	mov.w	r3, #300	; 0x12c
d03c51c4:	22f0      	movs	r2, #240	; 0xf0
d03c51c6:	216c      	movs	r1, #108	; 0x6c
d03c51c8:	9300      	str	r3, [sp, #0]
d03c51ca:	205c      	movs	r0, #92	; 0x5c
d03c51cc:	882b      	ldrh	r3, [r5, #0]
d03c51ce:	2520      	movs	r5, #32
d03c51d0:	f7fb fe22 	bl	d03c0e18 <ui_value_bar>
d03c51d4:	2322      	movs	r3, #34	; 0x22
d03c51d6:	2258      	movs	r2, #88	; 0x58
d03c51d8:	f44f 71b2 	mov.w	r1, #356	; 0x164
d03c51dc:	200e      	movs	r0, #14
d03c51de:	9703      	str	r7, [sp, #12]
d03c51e0:	9602      	str	r6, [sp, #8]
d03c51e2:	f8cd a004 	str.w	sl, [sp, #4]
d03c51e6:	9500      	str	r5, [sp, #0]
d03c51e8:	f7fe f97c 	bl	d03c34e4 <ui_create_button>
d03c51ec:	2322      	movs	r3, #34	; 0x22
d03c51ee:	2258      	movs	r2, #88	; 0x58
d03c51f0:	f44f 71c7 	mov.w	r1, #398	; 0x18e
d03c51f4:	200f      	movs	r0, #15
d03c51f6:	9703      	str	r7, [sp, #12]
d03c51f8:	9602      	str	r6, [sp, #8]
d03c51fa:	e9cd 5900 	strd	r5, r9, [sp]
d03c51fe:	f7fe f971 	bl	d03c34e4 <ui_create_button>
d03c5202:	4b66      	ldr	r3, [pc, #408]	; (d03c539c <ui_redraw_backbuffer+0x7bc>)
d03c5204:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03c5208:	2184      	movs	r1, #132	; 0x84
d03c520a:	2010      	movs	r0, #16
d03c520c:	9300      	str	r3, [sp, #0]
d03c520e:	2334      	movs	r3, #52	; 0x34
d03c5210:	f7fb fda8 	bl	d03c0d64 <ui_panel>
d03c5214:	f81b 3008 	ldrb.w	r3, [fp, r8]
d03c5218:	2160      	movs	r1, #96	; 0x60
d03c521a:	4a61      	ldr	r2, [pc, #388]	; (d03c53a0 <ui_redraw_backbuffer+0x7c0>)
d03c521c:	9300      	str	r3, [sp, #0]
d03c521e:	eb0d 0005 	add.w	r0, sp, r5
d03c5222:	eb08 0307 	add.w	r3, r8, r7
d03c5226:	f004 fea1 	bl	d03c9f6c <sniprintf>
d03c522a:	7b23      	ldrb	r3, [r4, #12]
d03c522c:	7b62      	ldrb	r2, [r4, #13]
d03c522e:	20e7      	movs	r0, #231	; 0xe7
d03c5230:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5234:	7ba2      	ldrb	r2, [r4, #14]
d03c5236:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c523a:	7be2      	ldrb	r2, [r4, #15]
d03c523c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5240:	685b      	ldr	r3, [r3, #4]
d03c5242:	68db      	ldr	r3, [r3, #12]
d03c5244:	4798      	blx	r3
d03c5246:	7b23      	ldrb	r3, [r4, #12]
d03c5248:	7b62      	ldrb	r2, [r4, #13]
d03c524a:	21a0      	movs	r1, #160	; 0xa0
d03c524c:	4628      	mov	r0, r5
d03c524e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5252:	7ba2      	ldrb	r2, [r4, #14]
d03c5254:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5258:	7be2      	ldrb	r2, [r4, #15]
d03c525a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c525e:	eb0d 0205 	add.w	r2, sp, r5
d03c5262:	685b      	ldr	r3, [r3, #4]
d03c5264:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5266:	4798      	blx	r3
d03c5268:	237f      	movs	r3, #127	; 0x7f
d03c526a:	22cc      	movs	r2, #204	; 0xcc
d03c526c:	21a2      	movs	r1, #162	; 0xa2
d03c526e:	2080      	movs	r0, #128	; 0x80
d03c5270:	9300      	str	r3, [sp, #0]
d03c5272:	f81b 3008 	ldrb.w	r3, [fp, r8]
d03c5276:	f7fb fdcf 	bl	d03c0e18 <ui_value_bar>
d03c527a:	2322      	movs	r3, #34	; 0x22
d03c527c:	228e      	movs	r2, #142	; 0x8e
d03c527e:	f44f 71b2 	mov.w	r1, #356	; 0x164
d03c5282:	2010      	movs	r0, #16
d03c5284:	9703      	str	r7, [sp, #12]
d03c5286:	9602      	str	r6, [sp, #8]
d03c5288:	f8df b130 	ldr.w	fp, [pc, #304]	; d03c53bc <ui_redraw_backbuffer+0x7dc>
d03c528c:	e9cd 5a00 	strd	r5, sl, [sp]
d03c5290:	f7fe f928 	bl	d03c34e4 <ui_create_button>
d03c5294:	2322      	movs	r3, #34	; 0x22
d03c5296:	228e      	movs	r2, #142	; 0x8e
d03c5298:	f44f 71c7 	mov.w	r1, #398	; 0x18e
d03c529c:	2011      	movs	r0, #17
d03c529e:	9703      	str	r7, [sp, #12]
d03c52a0:	9602      	str	r6, [sp, #8]
d03c52a2:	e9cd 5900 	strd	r5, r9, [sp]
d03c52a6:	f7fe f91d 	bl	d03c34e4 <ui_create_button>
d03c52aa:	4b3e      	ldr	r3, [pc, #248]	; (d03c53a4 <ui_redraw_backbuffer+0x7c4>)
d03c52ac:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03c52b0:	21ba      	movs	r1, #186	; 0xba
d03c52b2:	2010      	movs	r0, #16
d03c52b4:	9300      	str	r3, [sp, #0]
d03c52b6:	2334      	movs	r3, #52	; 0x34
d03c52b8:	f7fb fd54 	bl	d03c0d64 <ui_panel>
d03c52bc:	2160      	movs	r1, #96	; 0x60
d03c52be:	f81b 3008 	ldrb.w	r3, [fp, r8]
d03c52c2:	eb0d 0005 	add.w	r0, sp, r5
d03c52c6:	4a38      	ldr	r2, [pc, #224]	; (d03c53a8 <ui_redraw_backbuffer+0x7c8>)
d03c52c8:	f004 fe50 	bl	d03c9f6c <sniprintf>
d03c52cc:	7b23      	ldrb	r3, [r4, #12]
d03c52ce:	7b62      	ldrb	r2, [r4, #13]
d03c52d0:	20e7      	movs	r0, #231	; 0xe7
d03c52d2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c52d6:	7ba2      	ldrb	r2, [r4, #14]
d03c52d8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c52dc:	7be2      	ldrb	r2, [r4, #15]
d03c52de:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c52e2:	685b      	ldr	r3, [r3, #4]
d03c52e4:	68db      	ldr	r3, [r3, #12]
d03c52e6:	4798      	blx	r3
d03c52e8:	7b23      	ldrb	r3, [r4, #12]
d03c52ea:	7b62      	ldrb	r2, [r4, #13]
d03c52ec:	21d6      	movs	r1, #214	; 0xd6
d03c52ee:	4628      	mov	r0, r5
d03c52f0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c52f4:	7ba2      	ldrb	r2, [r4, #14]
d03c52f6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c52fa:	7be2      	ldrb	r2, [r4, #15]
d03c52fc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5300:	eb0d 0205 	add.w	r2, sp, r5
d03c5304:	685b      	ldr	r3, [r3, #4]
d03c5306:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5308:	4798      	blx	r3
d03c530a:	237f      	movs	r3, #127	; 0x7f
d03c530c:	22cc      	movs	r2, #204	; 0xcc
d03c530e:	21d8      	movs	r1, #216	; 0xd8
d03c5310:	2080      	movs	r0, #128	; 0x80
d03c5312:	9300      	str	r3, [sp, #0]
d03c5314:	f81b 3008 	ldrb.w	r3, [fp, r8]
d03c5318:	f7fb fd7e 	bl	d03c0e18 <ui_value_bar>
d03c531c:	2322      	movs	r3, #34	; 0x22
d03c531e:	22c4      	movs	r2, #196	; 0xc4
d03c5320:	f44f 71b2 	mov.w	r1, #356	; 0x164
d03c5324:	2012      	movs	r0, #18
d03c5326:	9703      	str	r7, [sp, #12]
d03c5328:	9602      	str	r6, [sp, #8]
d03c532a:	e9cd 5a00 	strd	r5, sl, [sp]
d03c532e:	f7fe f8d9 	bl	d03c34e4 <ui_create_button>
d03c5332:	f44f 71c7 	mov.w	r1, #398	; 0x18e
d03c5336:	2322      	movs	r3, #34	; 0x22
d03c5338:	22c4      	movs	r2, #196	; 0xc4
d03c533a:	2013      	movs	r0, #19
d03c533c:	9703      	str	r7, [sp, #12]
d03c533e:	9602      	str	r6, [sp, #8]
d03c5340:	e9cd 5900 	strd	r5, r9, [sp]
d03c5344:	f7fe f8ce 	bl	d03c34e4 <ui_create_button>
d03c5348:	7b23      	ldrb	r3, [r4, #12]
d03c534a:	7b62      	ldrb	r2, [r4, #13]
d03c534c:	20e5      	movs	r0, #229	; 0xe5
d03c534e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5352:	7ba2      	ldrb	r2, [r4, #14]
d03c5354:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5358:	7be2      	ldrb	r2, [r4, #15]
d03c535a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c535e:	685b      	ldr	r3, [r3, #4]
d03c5360:	68db      	ldr	r3, [r3, #12]
d03c5362:	4798      	blx	r3
d03c5364:	7b23      	ldrb	r3, [r4, #12]
d03c5366:	7b62      	ldrb	r2, [r4, #13]
d03c5368:	21fc      	movs	r1, #252	; 0xfc
d03c536a:	201a      	movs	r0, #26
d03c536c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5370:	7ba2      	ldrb	r2, [r4, #14]
d03c5372:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5376:	7be2      	ldrb	r2, [r4, #15]
d03c5378:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c537c:	4a0b      	ldr	r2, [pc, #44]	; (d03c53ac <ui_redraw_backbuffer+0x7cc>)
d03c537e:	685b      	ldr	r3, [r3, #4]
d03c5380:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5382:	4798      	blx	r3
d03c5384:	e66f      	b.n	d03c5066 <ui_redraw_backbuffer+0x486>
d03c5386:	bf00      	nop
d03c5388:	d03cf36a 	.word	0xd03cf36a
d03c538c:	d03ccf2e 	.word	0xd03ccf2e
d03c5390:	d03cb878 	.word	0xd03cb878
d03c5394:	2001f000 	.word	0x2001f000
d03c5398:	d03cb951 	.word	0xd03cb951
d03c539c:	d03cb88b 	.word	0xd03cb88b
d03c53a0:	d03cb8a3 	.word	0xd03cb8a3
d03c53a4:	d03cb8b0 	.word	0xd03cb8b0
d03c53a8:	d03cb8cc 	.word	0xd03cb8cc
d03c53ac:	d03cb8d5 	.word	0xd03cb8d5
d03c53b0:	d03cb7a8 	.word	0xd03cb7a8
d03c53b4:	d03cb7aa 	.word	0xd03cb7aa
d03c53b8:	d03ccd14 	.word	0xd03ccd14
d03c53bc:	d03cccf4 	.word	0xd03cccf4
d03c53c0:	4b77      	ldr	r3, [pc, #476]	; (d03c55a0 <ui_redraw_backbuffer+0x9c0>)
d03c53c2:	2142      	movs	r1, #66	; 0x42
d03c53c4:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03c53c8:	2010      	movs	r0, #16
d03c53ca:	9300      	str	r3, [sp, #0]
d03c53cc:	23ce      	movs	r3, #206	; 0xce
d03c53ce:	f7fb fcc9 	bl	d03c0d64 <ui_panel>
d03c53d2:	7b23      	ldrb	r3, [r4, #12]
d03c53d4:	7b62      	ldrb	r2, [r4, #13]
d03c53d6:	20e7      	movs	r0, #231	; 0xe7
d03c53d8:	4d72      	ldr	r5, [pc, #456]	; (d03c55a4 <ui_redraw_backbuffer+0x9c4>)
d03c53da:	2600      	movs	r6, #0
d03c53dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c53e0:	7ba2      	ldrb	r2, [r4, #14]
d03c53e2:	4f71      	ldr	r7, [pc, #452]	; (d03c55a8 <ui_redraw_backbuffer+0x9c8>)
d03c53e4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c53e8:	7be2      	ldrb	r2, [r4, #15]
d03c53ea:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c53ee:	685b      	ldr	r3, [r3, #4]
d03c53f0:	68db      	ldr	r3, [r3, #12]
d03c53f2:	4798      	blx	r3
d03c53f4:	7b23      	ldrb	r3, [r4, #12]
d03c53f6:	7b62      	ldrb	r2, [r4, #13]
d03c53f8:	2164      	movs	r1, #100	; 0x64
d03c53fa:	2020      	movs	r0, #32
d03c53fc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5400:	7ba2      	ldrb	r2, [r4, #14]
d03c5402:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5406:	7be2      	ldrb	r2, [r4, #15]
d03c5408:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c540c:	4a67      	ldr	r2, [pc, #412]	; (d03c55ac <ui_redraw_backbuffer+0x9cc>)
d03c540e:	685b      	ldr	r3, [r3, #4]
d03c5410:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5412:	4798      	blx	r3
d03c5414:	7829      	ldrb	r1, [r5, #0]
d03c5416:	4a66      	ldr	r2, [pc, #408]	; (d03c55b0 <ui_redraw_backbuffer+0x9d0>)
d03c5418:	a808      	add	r0, sp, #32
d03c541a:	4b66      	ldr	r3, [pc, #408]	; (d03c55b4 <ui_redraw_backbuffer+0x9d4>)
d03c541c:	2900      	cmp	r1, #0
d03c541e:	bf08      	it	eq
d03c5420:	4613      	moveq	r3, r2
d03c5422:	2160      	movs	r1, #96	; 0x60
d03c5424:	4a64      	ldr	r2, [pc, #400]	; (d03c55b8 <ui_redraw_backbuffer+0x9d8>)
d03c5426:	f004 fda1 	bl	d03c9f6c <sniprintf>
d03c542a:	7b23      	ldrb	r3, [r4, #12]
d03c542c:	7b62      	ldrb	r2, [r4, #13]
d03c542e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5432:	7ba2      	ldrb	r2, [r4, #14]
d03c5434:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5438:	7be2      	ldrb	r2, [r4, #15]
d03c543a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c543e:	782a      	ldrb	r2, [r5, #0]
d03c5440:	685b      	ldr	r3, [r3, #4]
d03c5442:	2a00      	cmp	r2, #0
d03c5444:	68db      	ldr	r3, [r3, #12]
d03c5446:	bf14      	ite	ne
d03c5448:	20f4      	movne	r0, #244	; 0xf4
d03c544a:	20f2      	moveq	r0, #242	; 0xf2
d03c544c:	4798      	blx	r3
d03c544e:	7b23      	ldrb	r3, [r4, #12]
d03c5450:	7b62      	ldrb	r2, [r4, #13]
d03c5452:	218e      	movs	r1, #142	; 0x8e
d03c5454:	2020      	movs	r0, #32
d03c5456:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c545a:	7ba2      	ldrb	r2, [r4, #14]
d03c545c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5460:	7be2      	ldrb	r2, [r4, #15]
d03c5462:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5466:	aa08      	add	r2, sp, #32
d03c5468:	685b      	ldr	r3, [r3, #4]
d03c546a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c546c:	4798      	blx	r3
d03c546e:	782a      	ldrb	r2, [r5, #0]
d03c5470:	4952      	ldr	r1, [pc, #328]	; (d03c55bc <ui_redraw_backbuffer+0x9dc>)
d03c5472:	2520      	movs	r5, #32
d03c5474:	4b52      	ldr	r3, [pc, #328]	; (d03c55c0 <ui_redraw_backbuffer+0x9e0>)
d03c5476:	2014      	movs	r0, #20
d03c5478:	9202      	str	r2, [sp, #8]
d03c547a:	2a00      	cmp	r2, #0
d03c547c:	bf08      	it	eq
d03c547e:	460b      	moveq	r3, r1
d03c5480:	9603      	str	r6, [sp, #12]
d03c5482:	2284      	movs	r2, #132	; 0x84
d03c5484:	f44f 71a6 	mov.w	r1, #332	; 0x14c
d03c5488:	9301      	str	r3, [sp, #4]
d03c548a:	2358      	movs	r3, #88	; 0x58
d03c548c:	9500      	str	r5, [sp, #0]
d03c548e:	f7fe f829 	bl	d03c34e4 <ui_create_button>
d03c5492:	883b      	ldrh	r3, [r7, #0]
d03c5494:	2160      	movs	r1, #96	; 0x60
d03c5496:	4a4b      	ldr	r2, [pc, #300]	; (d03c55c4 <ui_redraw_backbuffer+0x9e4>)
d03c5498:	eb0d 0005 	add.w	r0, sp, r5
d03c549c:	f004 fd66 	bl	d03c9f6c <sniprintf>
d03c54a0:	7b23      	ldrb	r3, [r4, #12]
d03c54a2:	7b62      	ldrb	r2, [r4, #13]
d03c54a4:	20e7      	movs	r0, #231	; 0xe7
d03c54a6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c54aa:	7ba2      	ldrb	r2, [r4, #14]
d03c54ac:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c54b0:	7be2      	ldrb	r2, [r4, #15]
d03c54b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c54b6:	685b      	ldr	r3, [r3, #4]
d03c54b8:	68db      	ldr	r3, [r3, #12]
d03c54ba:	4798      	blx	r3
d03c54bc:	7b23      	ldrb	r3, [r4, #12]
d03c54be:	7b62      	ldrb	r2, [r4, #13]
d03c54c0:	21b2      	movs	r1, #178	; 0xb2
d03c54c2:	4628      	mov	r0, r5
d03c54c4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c54c8:	7ba2      	ldrb	r2, [r4, #14]
d03c54ca:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c54ce:	7be2      	ldrb	r2, [r4, #15]
d03c54d0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c54d4:	eb0d 0205 	add.w	r2, sp, r5
d03c54d8:	685b      	ldr	r3, [r3, #4]
d03c54da:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c54dc:	4798      	blx	r3
d03c54de:	f44f 7396 	mov.w	r3, #300	; 0x12c
d03c54e2:	2296      	movs	r2, #150	; 0x96
d03c54e4:	21b4      	movs	r1, #180	; 0xb4
d03c54e6:	20a0      	movs	r0, #160	; 0xa0
d03c54e8:	9300      	str	r3, [sp, #0]
d03c54ea:	883b      	ldrh	r3, [r7, #0]
d03c54ec:	2701      	movs	r7, #1
d03c54ee:	f7fb fc93 	bl	d03c0e18 <ui_value_bar>
d03c54f2:	4b35      	ldr	r3, [pc, #212]	; (d03c55c8 <ui_redraw_backbuffer+0x9e8>)
d03c54f4:	22a8      	movs	r2, #168	; 0xa8
d03c54f6:	f44f 71a8 	mov.w	r1, #336	; 0x150
d03c54fa:	2015      	movs	r0, #21
d03c54fc:	9301      	str	r3, [sp, #4]
d03c54fe:	9703      	str	r7, [sp, #12]
d03c5500:	2322      	movs	r3, #34	; 0x22
d03c5502:	9602      	str	r6, [sp, #8]
d03c5504:	9500      	str	r5, [sp, #0]
d03c5506:	f7fd ffed 	bl	d03c34e4 <ui_create_button>
d03c550a:	4b30      	ldr	r3, [pc, #192]	; (d03c55cc <ui_redraw_backbuffer+0x9ec>)
d03c550c:	f44f 71bd 	mov.w	r1, #378	; 0x17a
d03c5510:	22a8      	movs	r2, #168	; 0xa8
d03c5512:	2016      	movs	r0, #22
d03c5514:	9301      	str	r3, [sp, #4]
d03c5516:	9703      	str	r7, [sp, #12]
d03c5518:	2322      	movs	r3, #34	; 0x22
d03c551a:	9602      	str	r6, [sp, #8]
d03c551c:	9500      	str	r5, [sp, #0]
d03c551e:	f7fd ffe1 	bl	d03c34e4 <ui_create_button>
d03c5522:	7b23      	ldrb	r3, [r4, #12]
d03c5524:	7b62      	ldrb	r2, [r4, #13]
d03c5526:	20e5      	movs	r0, #229	; 0xe5
d03c5528:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c552c:	7ba2      	ldrb	r2, [r4, #14]
d03c552e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5532:	7be2      	ldrb	r2, [r4, #15]
d03c5534:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5538:	685b      	ldr	r3, [r3, #4]
d03c553a:	68db      	ldr	r3, [r3, #12]
d03c553c:	4798      	blx	r3
d03c553e:	7b23      	ldrb	r3, [r4, #12]
d03c5540:	7b62      	ldrb	r2, [r4, #13]
d03c5542:	21d4      	movs	r1, #212	; 0xd4
d03c5544:	4628      	mov	r0, r5
d03c5546:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c554a:	7ba2      	ldrb	r2, [r4, #14]
d03c554c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5550:	7be2      	ldrb	r2, [r4, #15]
d03c5552:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5556:	4a1e      	ldr	r2, [pc, #120]	; (d03c55d0 <ui_redraw_backbuffer+0x9f0>)
d03c5558:	685b      	ldr	r3, [r3, #4]
d03c555a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c555c:	4798      	blx	r3
d03c555e:	7b23      	ldrb	r3, [r4, #12]
d03c5560:	7b62      	ldrb	r2, [r4, #13]
d03c5562:	21e4      	movs	r1, #228	; 0xe4
d03c5564:	4628      	mov	r0, r5
d03c5566:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c556a:	7ba2      	ldrb	r2, [r4, #14]
d03c556c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5570:	7be2      	ldrb	r2, [r4, #15]
d03c5572:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5576:	4a17      	ldr	r2, [pc, #92]	; (d03c55d4 <ui_redraw_backbuffer+0x9f4>)
d03c5578:	685b      	ldr	r3, [r3, #4]
d03c557a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c557c:	4798      	blx	r3
d03c557e:	7b23      	ldrb	r3, [r4, #12]
d03c5580:	7b62      	ldrb	r2, [r4, #13]
d03c5582:	21f4      	movs	r1, #244	; 0xf4
d03c5584:	4628      	mov	r0, r5
d03c5586:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c558a:	7ba2      	ldrb	r2, [r4, #14]
d03c558c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5590:	7be2      	ldrb	r2, [r4, #15]
d03c5592:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5596:	4a10      	ldr	r2, [pc, #64]	; (d03c55d8 <ui_redraw_backbuffer+0x9f8>)
d03c5598:	685b      	ldr	r3, [r3, #4]
d03c559a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c559c:	e6f1      	b.n	d03c5382 <ui_redraw_backbuffer+0x7a2>
d03c559e:	bf00      	nop
d03c55a0:	d03cb8ff 	.word	0xd03cb8ff
d03c55a4:	d03ccd28 	.word	0xd03ccd28
d03c55a8:	d03ccd2a 	.word	0xd03ccd2a
d03c55ac:	d03cb913 	.word	0xd03cb913
d03c55b0:	d03cb7b4 	.word	0xd03cb7b4
d03c55b4:	d03cb7ac 	.word	0xd03cb7ac
d03c55b8:	d03cb93d 	.word	0xd03cb93d
d03c55bc:	d03cb7bf 	.word	0xd03cb7bf
d03c55c0:	d03cb7ba 	.word	0xd03cb7ba
d03c55c4:	d03cb947 	.word	0xd03cb947
d03c55c8:	d03cb7a8 	.word	0xd03cb7a8
d03c55cc:	d03cb7aa 	.word	0xd03cb7aa
d03c55d0:	d03cb956 	.word	0xd03cb956
d03c55d4:	d03cb977 	.word	0xd03cb977
d03c55d8:	d03cb995 	.word	0xd03cb995
d03c55dc:	4b68      	ldr	r3, [pc, #416]	; (d03c5780 <ui_redraw_backbuffer+0xba0>)
d03c55de:	781f      	ldrb	r7, [r3, #0]
d03c55e0:	4b68      	ldr	r3, [pc, #416]	; (d03c5784 <ui_redraw_backbuffer+0xba4>)
d03c55e2:	5dde      	ldrb	r6, [r3, r7]
d03c55e4:	4b68      	ldr	r3, [pc, #416]	; (d03c5788 <ui_redraw_backbuffer+0xba8>)
d03c55e6:	781d      	ldrb	r5, [r3, #0]
d03c55e8:	2d00      	cmp	r5, #0
d03c55ea:	f000 80a4 	beq.w	d03c5736 <ui_redraw_backbuffer+0xb56>
d03c55ee:	4b67      	ldr	r3, [pc, #412]	; (d03c578c <ui_redraw_backbuffer+0xbac>)
d03c55f0:	4a67      	ldr	r2, [pc, #412]	; (d03c5790 <ui_redraw_backbuffer+0xbb0>)
d03c55f2:	781b      	ldrb	r3, [r3, #0]
d03c55f4:	42b3      	cmp	r3, r6
d03c55f6:	4b67      	ldr	r3, [pc, #412]	; (d03c5794 <ui_redraw_backbuffer+0xbb4>)
d03c55f8:	bf0e      	itee	eq
d03c55fa:	2501      	moveq	r5, #1
d03c55fc:	2500      	movne	r5, #0
d03c55fe:	4613      	movne	r3, r2
d03c5600:	9300      	str	r3, [sp, #0]
d03c5602:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03c5606:	23ce      	movs	r3, #206	; 0xce
d03c5608:	2142      	movs	r1, #66	; 0x42
d03c560a:	2010      	movs	r0, #16
d03c560c:	f7fb fbaa 	bl	d03c0d64 <ui_panel>
d03c5610:	b1fd      	cbz	r5, d03c5652 <ui_redraw_backbuffer+0xa72>
d03c5612:	7b23      	ldrb	r3, [r4, #12]
d03c5614:	20f0      	movs	r0, #240	; 0xf0
d03c5616:	7b62      	ldrb	r2, [r4, #13]
d03c5618:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c561c:	7ba2      	ldrb	r2, [r4, #14]
d03c561e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5622:	7be2      	ldrb	r2, [r4, #15]
d03c5624:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5628:	685b      	ldr	r3, [r3, #4]
d03c562a:	68db      	ldr	r3, [r3, #12]
d03c562c:	4798      	blx	r3
d03c562e:	7b22      	ldrb	r2, [r4, #12]
d03c5630:	7b63      	ldrb	r3, [r4, #13]
d03c5632:	2183      	movs	r1, #131	; 0x83
d03c5634:	201a      	movs	r0, #26
d03c5636:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03c563a:	7ba3      	ldrb	r3, [r4, #14]
d03c563c:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d03c5640:	7be3      	ldrb	r3, [r4, #15]
d03c5642:	ea42 6203 	orr.w	r2, r2, r3, lsl #24
d03c5646:	6853      	ldr	r3, [r2, #4]
d03c5648:	22b8      	movs	r2, #184	; 0xb8
d03c564a:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c564e:	2384      	movs	r3, #132	; 0x84
d03c5650:	47c0      	blx	r8
d03c5652:	2e80      	cmp	r6, #128	; 0x80
d03c5654:	f107 0301 	add.w	r3, r7, #1
d03c5658:	f04f 0160 	mov.w	r1, #96	; 0x60
d03c565c:	a808      	add	r0, sp, #32
d03c565e:	bf98      	it	ls
d03c5660:	4a4d      	ldrls	r2, [pc, #308]	; (d03c5798 <ui_redraw_backbuffer+0xbb8>)
d03c5662:	f04f 0901 	mov.w	r9, #1
d03c5666:	bf88      	it	hi
d03c5668:	4a4c      	ldrhi	r2, [pc, #304]	; (d03c579c <ui_redraw_backbuffer+0xbbc>)
d03c566a:	f04f 0700 	mov.w	r7, #0
d03c566e:	bf98      	it	ls
d03c5670:	f852 2026 	ldrls.w	r2, [r2, r6, lsl #2]
d03c5674:	f04f 0820 	mov.w	r8, #32
d03c5678:	9600      	str	r6, [sp, #0]
d03c567a:	9201      	str	r2, [sp, #4]
d03c567c:	4a48      	ldr	r2, [pc, #288]	; (d03c57a0 <ui_redraw_backbuffer+0xbc0>)
d03c567e:	f004 fc75 	bl	d03c9f6c <sniprintf>
d03c5682:	7b23      	ldrb	r3, [r4, #12]
d03c5684:	7b62      	ldrb	r2, [r4, #13]
d03c5686:	20e7      	movs	r0, #231	; 0xe7
d03c5688:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c568c:	7ba2      	ldrb	r2, [r4, #14]
d03c568e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5692:	7be2      	ldrb	r2, [r4, #15]
d03c5694:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5698:	685b      	ldr	r3, [r3, #4]
d03c569a:	68db      	ldr	r3, [r3, #12]
d03c569c:	4798      	blx	r3
d03c569e:	7b23      	ldrb	r3, [r4, #12]
d03c56a0:	7b62      	ldrb	r2, [r4, #13]
d03c56a2:	215c      	movs	r1, #92	; 0x5c
d03c56a4:	201e      	movs	r0, #30
d03c56a6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c56aa:	7ba2      	ldrb	r2, [r4, #14]
d03c56ac:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c56b0:	7be2      	ldrb	r2, [r4, #15]
d03c56b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c56b6:	aa08      	add	r2, sp, #32
d03c56b8:	685b      	ldr	r3, [r3, #4]
d03c56ba:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c56bc:	4798      	blx	r3
d03c56be:	4b39      	ldr	r3, [pc, #228]	; (d03c57a4 <ui_redraw_backbuffer+0xbc4>)
d03c56c0:	225e      	movs	r2, #94	; 0x5e
d03c56c2:	f44f 7182 	mov.w	r1, #260	; 0x104
d03c56c6:	2017      	movs	r0, #23
d03c56c8:	9301      	str	r3, [sp, #4]
d03c56ca:	f8cd 900c 	str.w	r9, [sp, #12]
d03c56ce:	2348      	movs	r3, #72	; 0x48
d03c56d0:	9702      	str	r7, [sp, #8]
d03c56d2:	f8cd 8000 	str.w	r8, [sp]
d03c56d6:	f7fd ff05 	bl	d03c34e4 <ui_create_button>
d03c56da:	4b33      	ldr	r3, [pc, #204]	; (d03c57a8 <ui_redraw_backbuffer+0xbc8>)
d03c56dc:	2018      	movs	r0, #24
d03c56de:	225e      	movs	r2, #94	; 0x5e
d03c56e0:	9301      	str	r3, [sp, #4]
d03c56e2:	f44f 71a9 	mov.w	r1, #338	; 0x152
d03c56e6:	2348      	movs	r3, #72	; 0x48
d03c56e8:	f8cd 900c 	str.w	r9, [sp, #12]
d03c56ec:	9702      	str	r7, [sp, #8]
d03c56ee:	f8cd 8000 	str.w	r8, [sp]
d03c56f2:	f7fd fef7 	bl	d03c34e4 <ui_create_button>
d03c56f6:	0630      	lsls	r0, r6, #24
d03c56f8:	d51f      	bpl.n	d03c573a <ui_redraw_backbuffer+0xb5a>
d03c56fa:	7b23      	ldrb	r3, [r4, #12]
d03c56fc:	2018      	movs	r0, #24
d03c56fe:	7b62      	ldrb	r2, [r4, #13]
d03c5700:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5704:	7ba2      	ldrb	r2, [r4, #14]
d03c5706:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c570a:	7be2      	ldrb	r2, [r4, #15]
d03c570c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5710:	685b      	ldr	r3, [r3, #4]
d03c5712:	68db      	ldr	r3, [r3, #12]
d03c5714:	4798      	blx	r3
d03c5716:	7b23      	ldrb	r3, [r4, #12]
d03c5718:	7b62      	ldrb	r2, [r4, #13]
d03c571a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c571e:	7ba2      	ldrb	r2, [r4, #14]
d03c5720:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5724:	7be2      	ldrb	r2, [r4, #15]
d03c5726:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c572a:	4a20      	ldr	r2, [pc, #128]	; (d03c57ac <ui_redraw_backbuffer+0xbcc>)
d03c572c:	685b      	ldr	r3, [r3, #4]
d03c572e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5730:	2186      	movs	r1, #134	; 0x86
d03c5732:	201e      	movs	r0, #30
d03c5734:	e625      	b.n	d03c5382 <ui_redraw_backbuffer+0x7a2>
d03c5736:	4b16      	ldr	r3, [pc, #88]	; (d03c5790 <ui_redraw_backbuffer+0xbb0>)
d03c5738:	e762      	b.n	d03c5600 <ui_redraw_backbuffer+0xa20>
d03c573a:	4b1d      	ldr	r3, [pc, #116]	; (d03c57b0 <ui_redraw_backbuffer+0xbd0>)
d03c573c:	f853 9026 	ldr.w	r9, [r3, r6, lsl #2]
d03c5740:	f1b9 0f00 	cmp.w	r9, #0
d03c5744:	d138      	bne.n	d03c57b8 <ui_redraw_backbuffer+0xbd8>
d03c5746:	7b23      	ldrb	r3, [r4, #12]
d03c5748:	20f2      	movs	r0, #242	; 0xf2
d03c574a:	7b62      	ldrb	r2, [r4, #13]
d03c574c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5750:	7ba2      	ldrb	r2, [r4, #14]
d03c5752:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5756:	7be2      	ldrb	r2, [r4, #15]
d03c5758:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c575c:	685b      	ldr	r3, [r3, #4]
d03c575e:	68db      	ldr	r3, [r3, #12]
d03c5760:	4798      	blx	r3
d03c5762:	7b23      	ldrb	r3, [r4, #12]
d03c5764:	7b62      	ldrb	r2, [r4, #13]
d03c5766:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c576a:	7ba2      	ldrb	r2, [r4, #14]
d03c576c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5770:	7be2      	ldrb	r2, [r4, #15]
d03c5772:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5776:	4a0f      	ldr	r2, [pc, #60]	; (d03c57b4 <ui_redraw_backbuffer+0xbd4>)
d03c5778:	685b      	ldr	r3, [r3, #4]
d03c577a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c577c:	e7d8      	b.n	d03c5730 <ui_redraw_backbuffer+0xb50>
d03c577e:	bf00      	nop
d03c5780:	d03cf36a 	.word	0xd03cf36a
d03c5784:	d03ccd04 	.word	0xd03ccd04
d03c5788:	d03cf523 	.word	0xd03cf523
d03c578c:	d03cf528 	.word	0xd03cf528
d03c5790:	d03cb7d4 	.word	0xd03cb7d4
d03c5794:	d03cb7c6 	.word	0xd03cb7c6
d03c5798:	d03cc27c 	.word	0xd03cc27c
d03c579c:	d03cb529 	.word	0xd03cb529
d03c57a0:	d03cb9b3 	.word	0xd03cb9b3
d03c57a4:	d03cb562 	.word	0xd03cb562
d03c57a8:	d03cb565 	.word	0xd03cb565
d03c57ac:	d03cb9c6 	.word	0xd03cb9c6
d03c57b0:	d03cc608 	.word	0xd03cc608
d03c57b4:	d03cb9e6 	.word	0xd03cb9e6
d03c57b8:	f7fb fb7e 	bl	d03c0eb8 <ui_clamp_vm_scroll>
d03c57bc:	4630      	mov	r0, r6
d03c57be:	f7fb fb65 	bl	d03c0e8c <vm_program_length>
d03c57c2:	7b23      	ldrb	r3, [r4, #12]
d03c57c4:	7b62      	ldrb	r2, [r4, #13]
d03c57c6:	9005      	str	r0, [sp, #20]
d03c57c8:	20eb      	movs	r0, #235	; 0xeb
d03c57ca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c57ce:	7ba2      	ldrb	r2, [r4, #14]
d03c57d0:	f8df a338 	ldr.w	sl, [pc, #824]	; d03c5b0c <ui_redraw_backbuffer+0xf2c>
d03c57d4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c57d8:	7be2      	ldrb	r2, [r4, #15]
d03c57da:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c57de:	685b      	ldr	r3, [r3, #4]
d03c57e0:	68db      	ldr	r3, [r3, #12]
d03c57e2:	4798      	blx	r3
d03c57e4:	7b23      	ldrb	r3, [r4, #12]
d03c57e6:	7b62      	ldrb	r2, [r4, #13]
d03c57e8:	2172      	movs	r1, #114	; 0x72
d03c57ea:	201e      	movs	r0, #30
d03c57ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c57f0:	7ba2      	ldrb	r2, [r4, #14]
d03c57f2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c57f6:	7be2      	ldrb	r2, [r4, #15]
d03c57f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c57fc:	4ab5      	ldr	r2, [pc, #724]	; (d03c5ad4 <ui_redraw_backbuffer+0xef4>)
d03c57fe:	685b      	ldr	r3, [r3, #4]
d03c5800:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5802:	4798      	blx	r3
d03c5804:	4bb4      	ldr	r3, [pc, #720]	; (d03c5ad8 <ui_redraw_backbuffer+0xef8>)
d03c5806:	781e      	ldrb	r6, [r3, #0]
d03c5808:	9b05      	ldr	r3, [sp, #20]
d03c580a:	443e      	add	r6, r7
d03c580c:	b2f6      	uxtb	r6, r6
d03c580e:	42b3      	cmp	r3, r6
d03c5810:	f200 8200 	bhi.w	d03c5c14 <ui_redraw_backbuffer+0x1034>
d03c5814:	4bb1      	ldr	r3, [pc, #708]	; (d03c5adc <ui_redraw_backbuffer+0xefc>)
d03c5816:	2700      	movs	r7, #0
d03c5818:	2601      	movs	r6, #1
d03c581a:	225e      	movs	r2, #94	; 0x5e
d03c581c:	9301      	str	r3, [sp, #4]
d03c581e:	2320      	movs	r3, #32
d03c5820:	f44f 71d1 	mov.w	r1, #418	; 0x1a2
d03c5824:	2019      	movs	r0, #25
d03c5826:	9300      	str	r3, [sp, #0]
d03c5828:	2322      	movs	r3, #34	; 0x22
d03c582a:	9603      	str	r6, [sp, #12]
d03c582c:	9702      	str	r7, [sp, #8]
d03c582e:	f7fd fe59 	bl	d03c34e4 <ui_create_button>
d03c5832:	4aab      	ldr	r2, [pc, #684]	; (d03c5ae0 <ui_redraw_backbuffer+0xf00>)
d03c5834:	4bab      	ldr	r3, [pc, #684]	; (d03c5ae4 <ui_redraw_backbuffer+0xf04>)
d03c5836:	f44f 71d1 	mov.w	r1, #418	; 0x1a2
d03c583a:	201a      	movs	r0, #26
d03c583c:	9701      	str	r7, [sp, #4]
d03c583e:	42bd      	cmp	r5, r7
d03c5840:	bf14      	ite	ne
d03c5842:	4691      	movne	r9, r2
d03c5844:	4699      	moveq	r9, r3
d03c5846:	236c      	movs	r3, #108	; 0x6c
d03c5848:	227c      	movs	r2, #124	; 0x7c
d03c584a:	9300      	str	r3, [sp, #0]
d03c584c:	2322      	movs	r3, #34	; 0x22
d03c584e:	f7fb fa6f 	bl	d03c0d30 <ui_button_register>
d03c5852:	4ba5      	ldr	r3, [pc, #660]	; (d03c5ae8 <ui_redraw_backbuffer+0xf08>)
d03c5854:	781b      	ldrb	r3, [r3, #0]
d03c5856:	07d9      	lsls	r1, r3, #31
d03c5858:	f140 8293 	bpl.w	d03c5d82 <ui_redraw_backbuffer+0x11a2>
d03c585c:	4aa3      	ldr	r2, [pc, #652]	; (d03c5aec <ui_redraw_backbuffer+0xf0c>)
d03c585e:	4ba4      	ldr	r3, [pc, #656]	; (d03c5af0 <ui_redraw_backbuffer+0xf10>)
d03c5860:	8812      	ldrh	r2, [r2, #0]
d03c5862:	f9b3 3000 	ldrsh.w	r3, [r3]
d03c5866:	f5a2 72d1 	sub.w	r2, r2, #418	; 0x1a2
d03c586a:	b292      	uxth	r2, r2
d03c586c:	2a21      	cmp	r2, #33	; 0x21
d03c586e:	f200 8288 	bhi.w	d03c5d82 <ui_redraw_backbuffer+0x11a2>
d03c5872:	3b7c      	subs	r3, #124	; 0x7c
d03c5874:	b29b      	uxth	r3, r3
d03c5876:	2b6b      	cmp	r3, #107	; 0x6b
d03c5878:	f200 8283 	bhi.w	d03c5d82 <ui_redraw_backbuffer+0x11a2>
d03c587c:	f105 08e7 	add.w	r8, r5, #231	; 0xe7
d03c5880:	23e4      	movs	r3, #228	; 0xe4
d03c5882:	fa5f f888 	uxtb.w	r8, r8
d03c5886:	2200      	movs	r2, #0
d03c5888:	27e1      	movs	r7, #225	; 0xe1
d03c588a:	9301      	str	r3, [sp, #4]
d03c588c:	217c      	movs	r1, #124	; 0x7c
d03c588e:	236c      	movs	r3, #108	; 0x6c
d03c5890:	f8ad 201c 	strh.w	r2, [sp, #28]
d03c5894:	f44f 70d1 	mov.w	r0, #418	; 0x1a2
d03c5898:	2222      	movs	r2, #34	; 0x22
d03c589a:	9700      	str	r7, [sp, #0]
d03c589c:	f7fb f9f4 	bl	d03c0c88 <ui_box>
d03c58a0:	7b23      	ldrb	r3, [r4, #12]
d03c58a2:	7b62      	ldrb	r2, [r4, #13]
d03c58a4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c58a8:	7ba2      	ldrb	r2, [r4, #14]
d03c58aa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c58ae:	7be2      	ldrb	r2, [r4, #15]
d03c58b0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c58b4:	685b      	ldr	r3, [r3, #4]
d03c58b6:	68db      	ldr	r3, [r3, #12]
d03c58b8:	2e00      	cmp	r6, #0
d03c58ba:	f040 826c 	bne.w	d03c5d96 <ui_redraw_backbuffer+0x11b6>
d03c58be:	f1c5 00e7 	rsb	r0, r5, #231	; 0xe7
d03c58c2:	b2c0      	uxtb	r0, r0
d03c58c4:	4798      	blx	r3
d03c58c6:	7b23      	ldrb	r3, [r4, #12]
d03c58c8:	7b62      	ldrb	r2, [r4, #13]
d03c58ca:	217d      	movs	r1, #125	; 0x7d
d03c58cc:	f240 10a3 	movw	r0, #419	; 0x1a3
d03c58d0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c58d4:	7ba2      	ldrb	r2, [r4, #14]
d03c58d6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c58da:	7be2      	ldrb	r2, [r4, #15]
d03c58dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c58e0:	2220      	movs	r2, #32
d03c58e2:	685b      	ldr	r3, [r3, #4]
d03c58e4:	685f      	ldr	r7, [r3, #4]
d03c58e6:	2302      	movs	r3, #2
d03c58e8:	47b8      	blx	r7
d03c58ea:	7b23      	ldrb	r3, [r4, #12]
d03c58ec:	7b62      	ldrb	r2, [r4, #13]
d03c58ee:	f240 10a3 	movw	r0, #419	; 0x1a3
d03c58f2:	217d      	movs	r1, #125	; 0x7d
d03c58f4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c58f8:	7ba2      	ldrb	r2, [r4, #14]
d03c58fa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c58fe:	7be2      	ldrb	r2, [r4, #15]
d03c5900:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5904:	2202      	movs	r2, #2
d03c5906:	685b      	ldr	r3, [r3, #4]
d03c5908:	685f      	ldr	r7, [r3, #4]
d03c590a:	236a      	movs	r3, #106	; 0x6a
d03c590c:	47b8      	blx	r7
d03c590e:	7b23      	ldrb	r3, [r4, #12]
d03c5910:	7b62      	ldrb	r2, [r4, #13]
d03c5912:	2e00      	cmp	r6, #0
d03c5914:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5918:	7ba2      	ldrb	r2, [r4, #14]
d03c591a:	bf14      	ite	ne
d03c591c:	20e7      	movne	r0, #231	; 0xe7
d03c591e:	20e1      	moveq	r0, #225	; 0xe1
d03c5920:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5924:	7be2      	ldrb	r2, [r4, #15]
d03c5926:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c592a:	685b      	ldr	r3, [r3, #4]
d03c592c:	68db      	ldr	r3, [r3, #12]
d03c592e:	4798      	blx	r3
d03c5930:	7b23      	ldrb	r3, [r4, #12]
d03c5932:	7b62      	ldrb	r2, [r4, #13]
d03c5934:	21e5      	movs	r1, #229	; 0xe5
d03c5936:	f240 10a3 	movw	r0, #419	; 0x1a3
d03c593a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c593e:	7ba2      	ldrb	r2, [r4, #14]
d03c5940:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5944:	7be2      	ldrb	r2, [r4, #15]
d03c5946:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c594a:	2220      	movs	r2, #32
d03c594c:	685b      	ldr	r3, [r3, #4]
d03c594e:	685f      	ldr	r7, [r3, #4]
d03c5950:	2302      	movs	r3, #2
d03c5952:	47b8      	blx	r7
d03c5954:	7b23      	ldrb	r3, [r4, #12]
d03c5956:	7b62      	ldrb	r2, [r4, #13]
d03c5958:	217d      	movs	r1, #125	; 0x7d
d03c595a:	f240 10c1 	movw	r0, #449	; 0x1c1
d03c595e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5962:	7ba2      	ldrb	r2, [r4, #14]
d03c5964:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5968:	7be2      	ldrb	r2, [r4, #15]
d03c596a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c596e:	2202      	movs	r2, #2
d03c5970:	685b      	ldr	r3, [r3, #4]
d03c5972:	685f      	ldr	r7, [r3, #4]
d03c5974:	236a      	movs	r3, #106	; 0x6a
d03c5976:	47b8      	blx	r7
d03c5978:	7b23      	ldrb	r3, [r4, #12]
d03c597a:	7b62      	ldrb	r2, [r4, #13]
d03c597c:	2e00      	cmp	r6, #0
d03c597e:	4640      	mov	r0, r8
d03c5980:	f04f 0800 	mov.w	r8, #0
d03c5984:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5988:	7ba2      	ldrb	r2, [r4, #14]
d03c598a:	bf0c      	ite	eq
d03c598c:	2792      	moveq	r7, #146	; 0x92
d03c598e:	2793      	movne	r7, #147	; 0x93
d03c5990:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5994:	7be2      	ldrb	r2, [r4, #15]
d03c5996:	f240 16af 	movw	r6, #431	; 0x1af
d03c599a:	bf18      	it	ne
d03c599c:	f44f 76d8 	movne.w	r6, #432	; 0x1b0
d03c59a0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c59a4:	685b      	ldr	r3, [r3, #4]
d03c59a6:	68db      	ldr	r3, [r3, #12]
d03c59a8:	4798      	blx	r3
d03c59aa:	f819 3008 	ldrb.w	r3, [r9, r8]
d03c59ae:	eb07 1108 	add.w	r1, r7, r8, lsl #4
d03c59b2:	f108 0801 	add.w	r8, r8, #1
d03c59b6:	4630      	mov	r0, r6
d03c59b8:	f88d 301c 	strb.w	r3, [sp, #28]
d03c59bc:	7b23      	ldrb	r3, [r4, #12]
d03c59be:	7b62      	ldrb	r2, [r4, #13]
d03c59c0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c59c4:	7ba2      	ldrb	r2, [r4, #14]
d03c59c6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c59ca:	7be2      	ldrb	r2, [r4, #15]
d03c59cc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c59d0:	aa07      	add	r2, sp, #28
d03c59d2:	685b      	ldr	r3, [r3, #4]
d03c59d4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c59d6:	4798      	blx	r3
d03c59d8:	f1b8 0f04 	cmp.w	r8, #4
d03c59dc:	d1e5      	bne.n	d03c59aa <ui_redraw_backbuffer+0xdca>
d03c59de:	2301      	movs	r3, #1
d03c59e0:	22e6      	movs	r2, #230	; 0xe6
d03c59e2:	f44f 71d1 	mov.w	r1, #418	; 0x1a2
d03c59e6:	201b      	movs	r0, #27
d03c59e8:	9303      	str	r3, [sp, #12]
d03c59ea:	2300      	movs	r3, #0
d03c59ec:	9302      	str	r3, [sp, #8]
d03c59ee:	4b41      	ldr	r3, [pc, #260]	; (d03c5af4 <ui_redraw_backbuffer+0xf14>)
d03c59f0:	9301      	str	r3, [sp, #4]
d03c59f2:	2320      	movs	r3, #32
d03c59f4:	9300      	str	r3, [sp, #0]
d03c59f6:	2322      	movs	r3, #34	; 0x22
d03c59f8:	f7fd fd74 	bl	d03c34e4 <ui_create_button>
d03c59fc:	2d00      	cmp	r5, #0
d03c59fe:	f000 81ce 	beq.w	d03c5d9e <ui_redraw_backbuffer+0x11be>
d03c5a02:	4b3d      	ldr	r3, [pc, #244]	; (d03c5af8 <ui_redraw_backbuffer+0xf18>)
d03c5a04:	781b      	ldrb	r3, [r3, #0]
d03c5a06:	2b01      	cmp	r3, #1
d03c5a08:	f000 81c7 	beq.w	d03c5d9a <ui_redraw_backbuffer+0x11ba>
d03c5a0c:	4e3b      	ldr	r6, [pc, #236]	; (d03c5afc <ui_redraw_backbuffer+0xf1c>)
d03c5a0e:	4a3c      	ldr	r2, [pc, #240]	; (d03c5b00 <ui_redraw_backbuffer+0xf20>)
d03c5a10:	2b02      	cmp	r3, #2
d03c5a12:	bf08      	it	eq
d03c5a14:	4616      	moveq	r6, r2
d03c5a16:	2500      	movs	r5, #0
d03c5a18:	f04f 081e 	mov.w	r8, #30
d03c5a1c:	4b39      	ldr	r3, [pc, #228]	; (d03c5b04 <ui_redraw_backbuffer+0xf24>)
d03c5a1e:	2242      	movs	r2, #66	; 0x42
d03c5a20:	f8cd 8000 	str.w	r8, [sp]
d03c5a24:	f44f 7182 	mov.w	r1, #260	; 0x104
d03c5a28:	9301      	str	r3, [sp, #4]
d03c5a2a:	201c      	movs	r0, #28
d03c5a2c:	2348      	movs	r3, #72	; 0x48
d03c5a2e:	9503      	str	r5, [sp, #12]
d03c5a30:	9502      	str	r5, [sp, #8]
d03c5a32:	2701      	movs	r7, #1
d03c5a34:	f7fd fd56 	bl	d03c34e4 <ui_create_button>
d03c5a38:	4b33      	ldr	r3, [pc, #204]	; (d03c5b08 <ui_redraw_backbuffer+0xf28>)
d03c5a3a:	f8cd 8000 	str.w	r8, [sp]
d03c5a3e:	2242      	movs	r2, #66	; 0x42
d03c5a40:	9301      	str	r3, [sp, #4]
d03c5a42:	f44f 71a9 	mov.w	r1, #338	; 0x152
d03c5a46:	2348      	movs	r3, #72	; 0x48
d03c5a48:	201d      	movs	r0, #29
d03c5a4a:	9503      	str	r5, [sp, #12]
d03c5a4c:	9502      	str	r5, [sp, #8]
d03c5a4e:	f7fd fd49 	bl	d03c34e4 <ui_create_button>
d03c5a52:	4b2e      	ldr	r3, [pc, #184]	; (d03c5b0c <ui_redraw_backbuffer+0xf2c>)
d03c5a54:	9600      	str	r6, [sp, #0]
d03c5a56:	2160      	movs	r1, #96	; 0x60
d03c5a58:	781b      	ldrb	r3, [r3, #0]
d03c5a5a:	a808      	add	r0, sp, #32
d03c5a5c:	4a2c      	ldr	r2, [pc, #176]	; (d03c5b10 <ui_redraw_backbuffer+0xf30>)
d03c5a5e:	2620      	movs	r6, #32
d03c5a60:	f004 fa84 	bl	d03c9f6c <sniprintf>
d03c5a64:	7b23      	ldrb	r3, [r4, #12]
d03c5a66:	7b62      	ldrb	r2, [r4, #13]
d03c5a68:	2018      	movs	r0, #24
d03c5a6a:	f8df b0ac 	ldr.w	fp, [pc, #172]	; d03c5b18 <ui_redraw_backbuffer+0xf38>
d03c5a6e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5a72:	7ba2      	ldrb	r2, [r4, #14]
d03c5a74:	f8df a0a4 	ldr.w	sl, [pc, #164]	; d03c5b1c <ui_redraw_backbuffer+0xf3c>
d03c5a78:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5a7c:	7be2      	ldrb	r2, [r4, #15]
d03c5a7e:	f8df 90a0 	ldr.w	r9, [pc, #160]	; d03c5b20 <ui_redraw_backbuffer+0xf40>
d03c5a82:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5a86:	685b      	ldr	r3, [r3, #4]
d03c5a88:	68db      	ldr	r3, [r3, #12]
d03c5a8a:	4798      	blx	r3
d03c5a8c:	7b23      	ldrb	r3, [r4, #12]
d03c5a8e:	7b62      	ldrb	r2, [r4, #13]
d03c5a90:	2146      	movs	r1, #70	; 0x46
d03c5a92:	20a0      	movs	r0, #160	; 0xa0
d03c5a94:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5a98:	7ba2      	ldrb	r2, [r4, #14]
d03c5a9a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5a9e:	7be2      	ldrb	r2, [r4, #15]
d03c5aa0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5aa4:	aa08      	add	r2, sp, #32
d03c5aa6:	685b      	ldr	r3, [r3, #4]
d03c5aa8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5aaa:	4798      	blx	r3
d03c5aac:	7b23      	ldrb	r3, [r4, #12]
d03c5aae:	7b62      	ldrb	r2, [r4, #13]
d03c5ab0:	218a      	movs	r1, #138	; 0x8a
d03c5ab2:	20f0      	movs	r0, #240	; 0xf0
d03c5ab4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5ab8:	7ba2      	ldrb	r2, [r4, #14]
d03c5aba:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5abe:	7be2      	ldrb	r2, [r4, #15]
d03c5ac0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5ac4:	4a13      	ldr	r2, [pc, #76]	; (d03c5b14 <ui_redraw_backbuffer+0xf34>)
d03c5ac6:	685b      	ldr	r3, [r3, #4]
d03c5ac8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5aca:	4798      	blx	r3
d03c5acc:	4640      	mov	r0, r8
d03c5ace:	2348      	movs	r3, #72	; 0x48
d03c5ad0:	2288      	movs	r2, #136	; 0x88
d03c5ad2:	e027      	b.n	d03c5b24 <ui_redraw_backbuffer+0xf44>
d03c5ad4:	d03cb9fe 	.word	0xd03cb9fe
d03c5ad8:	d03cf531 	.word	0xd03cf531
d03c5adc:	d03cb6a1 	.word	0xd03cb6a1
d03c5ae0:	d03cb7e7 	.word	0xd03cb7e7
d03c5ae4:	d03cb7ec 	.word	0xd03cb7ec
d03c5ae8:	d03ce2bb 	.word	0xd03ce2bb
d03c5aec:	d03cf334 	.word	0xd03cf334
d03c5af0:	d03cf336 	.word	0xd03cf336
d03c5af4:	d03cb6a4 	.word	0xd03cb6a4
d03c5af8:	d03cf522 	.word	0xd03cf522
d03c5afc:	d03cb7f5 	.word	0xd03cb7f5
d03c5b00:	d03cb7f9 	.word	0xd03cb7f9
d03c5b04:	d03cb5dc 	.word	0xd03cb5dc
d03c5b08:	d03cba2a 	.word	0xd03cba2a
d03c5b0c:	d03cf529 	.word	0xd03cf529
d03c5b10:	d03cba30 	.word	0xd03cba30
d03c5b14:	d03cba3b 	.word	0xd03cba3b
d03c5b18:	d03cb848 	.word	0xd03cb848
d03c5b1c:	d03cba3e 	.word	0xd03cba3e
d03c5b20:	d03cb7a8 	.word	0xd03cb7a8
d03c5b24:	f44f 7182 	mov.w	r1, #260	; 0x104
d03c5b28:	9703      	str	r7, [sp, #12]
d03c5b2a:	9502      	str	r5, [sp, #8]
d03c5b2c:	f8cd b004 	str.w	fp, [sp, #4]
d03c5b30:	9600      	str	r6, [sp, #0]
d03c5b32:	f7fd fcd7 	bl	d03c34e4 <ui_create_button>
d03c5b36:	f8df 82f0 	ldr.w	r8, [pc, #752]	; d03c5e28 <ui_redraw_backbuffer+0x1248>
d03c5b3a:	2348      	movs	r3, #72	; 0x48
d03c5b3c:	2288      	movs	r2, #136	; 0x88
d03c5b3e:	f44f 71a9 	mov.w	r1, #338	; 0x152
d03c5b42:	2021      	movs	r0, #33	; 0x21
d03c5b44:	9703      	str	r7, [sp, #12]
d03c5b46:	9502      	str	r5, [sp, #8]
d03c5b48:	e9cd 6a00 	strd	r6, sl, [sp]
d03c5b4c:	f7fd fcca 	bl	d03c34e4 <ui_create_button>
d03c5b50:	2348      	movs	r3, #72	; 0x48
d03c5b52:	22a6      	movs	r2, #166	; 0xa6
d03c5b54:	f44f 7182 	mov.w	r1, #260	; 0x104
d03c5b58:	201f      	movs	r0, #31
d03c5b5a:	9703      	str	r7, [sp, #12]
d03c5b5c:	9502      	str	r5, [sp, #8]
d03c5b5e:	e9cd 6900 	strd	r6, r9, [sp]
d03c5b62:	f7fd fcbf 	bl	d03c34e4 <ui_create_button>
d03c5b66:	f44f 71a9 	mov.w	r1, #338	; 0x152
d03c5b6a:	4630      	mov	r0, r6
d03c5b6c:	2348      	movs	r3, #72	; 0x48
d03c5b6e:	22a6      	movs	r2, #166	; 0xa6
d03c5b70:	9703      	str	r7, [sp, #12]
d03c5b72:	9502      	str	r5, [sp, #8]
d03c5b74:	e9cd 6800 	strd	r6, r8, [sp]
d03c5b78:	f7fd fcb4 	bl	d03c34e4 <ui_create_button>
d03c5b7c:	7b23      	ldrb	r3, [r4, #12]
d03c5b7e:	7b62      	ldrb	r2, [r4, #13]
d03c5b80:	2018      	movs	r0, #24
d03c5b82:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5b86:	7ba2      	ldrb	r2, [r4, #14]
d03c5b88:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5b8c:	7be2      	ldrb	r2, [r4, #15]
d03c5b8e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5b92:	685b      	ldr	r3, [r3, #4]
d03c5b94:	68db      	ldr	r3, [r3, #12]
d03c5b96:	4798      	blx	r3
d03c5b98:	7b23      	ldrb	r3, [r4, #12]
d03c5b9a:	7b62      	ldrb	r2, [r4, #13]
d03c5b9c:	21ca      	movs	r1, #202	; 0xca
d03c5b9e:	20f0      	movs	r0, #240	; 0xf0
d03c5ba0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5ba4:	7ba2      	ldrb	r2, [r4, #14]
d03c5ba6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5baa:	7be2      	ldrb	r2, [r4, #15]
d03c5bac:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5bb0:	4a94      	ldr	r2, [pc, #592]	; (d03c5e04 <ui_redraw_backbuffer+0x1224>)
d03c5bb2:	685b      	ldr	r3, [r3, #4]
d03c5bb4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5bb6:	4798      	blx	r3
d03c5bb8:	2348      	movs	r3, #72	; 0x48
d03c5bba:	22c8      	movs	r2, #200	; 0xc8
d03c5bbc:	f44f 7182 	mov.w	r1, #260	; 0x104
d03c5bc0:	2022      	movs	r0, #34	; 0x22
d03c5bc2:	9703      	str	r7, [sp, #12]
d03c5bc4:	9502      	str	r5, [sp, #8]
d03c5bc6:	e9cd 6b00 	strd	r6, fp, [sp]
d03c5bca:	f7fd fc8b 	bl	d03c34e4 <ui_create_button>
d03c5bce:	2348      	movs	r3, #72	; 0x48
d03c5bd0:	22c8      	movs	r2, #200	; 0xc8
d03c5bd2:	f44f 71a9 	mov.w	r1, #338	; 0x152
d03c5bd6:	2025      	movs	r0, #37	; 0x25
d03c5bd8:	9703      	str	r7, [sp, #12]
d03c5bda:	9502      	str	r5, [sp, #8]
d03c5bdc:	e9cd 6a00 	strd	r6, sl, [sp]
d03c5be0:	f7fd fc80 	bl	d03c34e4 <ui_create_button>
d03c5be4:	2348      	movs	r3, #72	; 0x48
d03c5be6:	22e6      	movs	r2, #230	; 0xe6
d03c5be8:	f44f 7182 	mov.w	r1, #260	; 0x104
d03c5bec:	2023      	movs	r0, #35	; 0x23
d03c5bee:	9703      	str	r7, [sp, #12]
d03c5bf0:	9502      	str	r5, [sp, #8]
d03c5bf2:	e9cd 6900 	strd	r6, r9, [sp]
d03c5bf6:	f7fd fc75 	bl	d03c34e4 <ui_create_button>
d03c5bfa:	2348      	movs	r3, #72	; 0x48
d03c5bfc:	22e6      	movs	r2, #230	; 0xe6
d03c5bfe:	f44f 71a9 	mov.w	r1, #338	; 0x152
d03c5c02:	2024      	movs	r0, #36	; 0x24
d03c5c04:	9703      	str	r7, [sp, #12]
d03c5c06:	9502      	str	r5, [sp, #8]
d03c5c08:	e9cd 6800 	strd	r6, r8, [sp]
d03c5c0c:	f7fd fc6a 	bl	d03c34e4 <ui_create_button>
d03c5c10:	f7ff ba29 	b.w	d03c5066 <ui_redraw_backbuffer+0x486>
d03c5c14:	2d00      	cmp	r5, #0
d03c5c16:	d052      	beq.n	d03c5cbe <ui_redraw_backbuffer+0x10de>
d03c5c18:	f89a 3000 	ldrb.w	r3, [sl]
d03c5c1c:	42b3      	cmp	r3, r6
d03c5c1e:	d14e      	bne.n	d03c5cbe <ui_redraw_backbuffer+0x10de>
d03c5c20:	7b23      	ldrb	r3, [r4, #12]
d03c5c22:	20e5      	movs	r0, #229	; 0xe5
d03c5c24:	7b62      	ldrb	r2, [r4, #13]
d03c5c26:	ea4f 1807 	mov.w	r8, r7, lsl #4
d03c5c2a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5c2e:	7ba2      	ldrb	r2, [r4, #14]
d03c5c30:	fa1f f888 	uxth.w	r8, r8
d03c5c34:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5c38:	7be2      	ldrb	r2, [r4, #15]
d03c5c3a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5c3e:	685b      	ldr	r3, [r3, #4]
d03c5c40:	68db      	ldr	r3, [r3, #12]
d03c5c42:	4798      	blx	r3
d03c5c44:	7b23      	ldrb	r3, [r4, #12]
d03c5c46:	7b62      	ldrb	r2, [r4, #13]
d03c5c48:	f108 0185 	add.w	r1, r8, #133	; 0x85
d03c5c4c:	201c      	movs	r0, #28
d03c5c4e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5c52:	7ba2      	ldrb	r2, [r4, #14]
d03c5c54:	b209      	sxth	r1, r1
d03c5c56:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5c5a:	7be2      	ldrb	r2, [r4, #15]
d03c5c5c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5c60:	22b2      	movs	r2, #178	; 0xb2
d03c5c62:	685b      	ldr	r3, [r3, #4]
d03c5c64:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03c5c68:	2310      	movs	r3, #16
d03c5c6a:	47d8      	blx	fp
d03c5c6c:	4b66      	ldr	r3, [pc, #408]	; (d03c5e08 <ui_redraw_backbuffer+0x1228>)
d03c5c6e:	781b      	ldrb	r3, [r3, #0]
d03c5c70:	b32b      	cbz	r3, d03c5cbe <ui_redraw_backbuffer+0x10de>
d03c5c72:	7b23      	ldrb	r3, [r4, #12]
d03c5c74:	20f7      	movs	r0, #247	; 0xf7
d03c5c76:	7b62      	ldrb	r2, [r4, #13]
d03c5c78:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5c7c:	7ba2      	ldrb	r2, [r4, #14]
d03c5c7e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5c82:	7be2      	ldrb	r2, [r4, #15]
d03c5c84:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5c88:	685b      	ldr	r3, [r3, #4]
d03c5c8a:	68db      	ldr	r3, [r3, #12]
d03c5c8c:	4798      	blx	r3
d03c5c8e:	4b5f      	ldr	r3, [pc, #380]	; (d03c5e0c <ui_redraw_backbuffer+0x122c>)
d03c5c90:	f108 0184 	add.w	r1, r8, #132	; 0x84
d03c5c94:	781b      	ldrb	r3, [r3, #0]
d03c5c96:	b209      	sxth	r1, r1
d03c5c98:	2b00      	cmp	r3, #0
d03c5c9a:	d15a      	bne.n	d03c5d52 <ui_redraw_backbuffer+0x1172>
d03c5c9c:	7b23      	ldrb	r3, [r4, #12]
d03c5c9e:	203a      	movs	r0, #58	; 0x3a
d03c5ca0:	7b62      	ldrb	r2, [r4, #13]
d03c5ca2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5ca6:	7ba2      	ldrb	r2, [r4, #14]
d03c5ca8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5cac:	7be2      	ldrb	r2, [r4, #15]
d03c5cae:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5cb2:	2244      	movs	r2, #68	; 0x44
d03c5cb4:	685b      	ldr	r3, [r3, #4]
d03c5cb6:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03c5cba:	2312      	movs	r3, #18
d03c5cbc:	47d8      	blx	fp
d03c5cbe:	f819 3026 	ldrb.w	r3, [r9, r6, lsl #2]
d03c5cc2:	eb09 0286 	add.w	r2, r9, r6, lsl #2
d03c5cc6:	a808      	add	r0, sp, #32
d03c5cc8:	fa0f f886 	sxth.w	r8, r6
d03c5ccc:	2b15      	cmp	r3, #21
d03c5cce:	bf96      	itet	ls
d03c5cd0:	494f      	ldrls	r1, [pc, #316]	; (d03c5e10 <ui_redraw_backbuffer+0x1230>)
d03c5cd2:	4b50      	ldrhi	r3, [pc, #320]	; (d03c5e14 <ui_redraw_backbuffer+0x1234>)
d03c5cd4:	f851 3023 	ldrls.w	r3, [r1, r3, lsl #2]
d03c5cd8:	8851      	ldrh	r1, [r2, #2]
d03c5cda:	9102      	str	r1, [sp, #8]
d03c5cdc:	2160      	movs	r1, #96	; 0x60
d03c5cde:	7852      	ldrb	r2, [r2, #1]
d03c5ce0:	9300      	str	r3, [sp, #0]
d03c5ce2:	4633      	mov	r3, r6
d03c5ce4:	9201      	str	r2, [sp, #4]
d03c5ce6:	4a4c      	ldr	r2, [pc, #304]	; (d03c5e18 <ui_redraw_backbuffer+0x1238>)
d03c5ce8:	f004 f940 	bl	d03c9f6c <sniprintf>
d03c5cec:	7b23      	ldrb	r3, [r4, #12]
d03c5cee:	7b62      	ldrb	r2, [r4, #13]
d03c5cf0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5cf4:	7ba2      	ldrb	r2, [r4, #14]
d03c5cf6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5cfa:	7be2      	ldrb	r2, [r4, #15]
d03c5cfc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5d00:	685b      	ldr	r3, [r3, #4]
d03c5d02:	68db      	ldr	r3, [r3, #12]
d03c5d04:	b11d      	cbz	r5, d03c5d0e <ui_redraw_backbuffer+0x112e>
d03c5d06:	f89a 2000 	ldrb.w	r2, [sl]
d03c5d0a:	42b2      	cmp	r2, r6
d03c5d0c:	d037      	beq.n	d03c5d7e <ui_redraw_backbuffer+0x119e>
d03c5d0e:	f819 2028 	ldrb.w	r2, [r9, r8, lsl #2]
d03c5d12:	2a00      	cmp	r2, #0
d03c5d14:	bf0c      	ite	eq
d03c5d16:	20f7      	moveq	r0, #247	; 0xf7
d03c5d18:	20ec      	movne	r0, #236	; 0xec
d03c5d1a:	4798      	blx	r3
d03c5d1c:	7b23      	ldrb	r3, [r4, #12]
d03c5d1e:	7b62      	ldrb	r2, [r4, #13]
d03c5d20:	0139      	lsls	r1, r7, #4
d03c5d22:	201e      	movs	r0, #30
d03c5d24:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5d28:	7ba2      	ldrb	r2, [r4, #14]
d03c5d2a:	3186      	adds	r1, #134	; 0x86
d03c5d2c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5d30:	7be2      	ldrb	r2, [r4, #15]
d03c5d32:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5d36:	aa08      	add	r2, sp, #32
d03c5d38:	685b      	ldr	r3, [r3, #4]
d03c5d3a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5d3c:	4798      	blx	r3
d03c5d3e:	f819 3028 	ldrb.w	r3, [r9, r8, lsl #2]
d03c5d42:	2b00      	cmp	r3, #0
d03c5d44:	f43f ad66 	beq.w	d03c5814 <ui_redraw_backbuffer+0xc34>
d03c5d48:	3701      	adds	r7, #1
d03c5d4a:	2f08      	cmp	r7, #8
d03c5d4c:	f47f ad5a 	bne.w	d03c5804 <ui_redraw_backbuffer+0xc24>
d03c5d50:	e560      	b.n	d03c5814 <ui_redraw_backbuffer+0xc34>
d03c5d52:	2b01      	cmp	r3, #1
d03c5d54:	7b23      	ldrb	r3, [r4, #12]
d03c5d56:	7b62      	ldrb	r2, [r4, #13]
d03c5d58:	bf0c      	ite	eq
d03c5d5a:	2082      	moveq	r0, #130	; 0x82
d03c5d5c:	20a0      	movne	r0, #160	; 0xa0
d03c5d5e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5d62:	7ba2      	ldrb	r2, [r4, #14]
d03c5d64:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5d68:	7be2      	ldrb	r2, [r4, #15]
d03c5d6a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5d6e:	bf0c      	ite	eq
d03c5d70:	2218      	moveq	r2, #24
d03c5d72:	222a      	movne	r2, #42	; 0x2a
d03c5d74:	685b      	ldr	r3, [r3, #4]
d03c5d76:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03c5d7a:	2312      	movs	r3, #18
d03c5d7c:	e79e      	b.n	d03c5cbc <ui_redraw_backbuffer+0x10dc>
d03c5d7e:	20f0      	movs	r0, #240	; 0xf0
d03c5d80:	e7cb      	b.n	d03c5d1a <ui_redraw_backbuffer+0x113a>
d03c5d82:	2600      	movs	r6, #0
d03c5d84:	42b5      	cmp	r5, r6
d03c5d86:	bf15      	itete	ne
d03c5d88:	23e5      	movne	r3, #229	; 0xe5
d03c5d8a:	23e3      	moveq	r3, #227	; 0xe3
d03c5d8c:	f04f 08e8 	movne.w	r8, #232	; 0xe8
d03c5d90:	f04f 08e7 	moveq.w	r8, #231	; 0xe7
d03c5d94:	e577      	b.n	d03c5886 <ui_redraw_backbuffer+0xca6>
d03c5d96:	4638      	mov	r0, r7
d03c5d98:	e594      	b.n	d03c58c4 <ui_redraw_backbuffer+0xce4>
d03c5d9a:	4e20      	ldr	r6, [pc, #128]	; (d03c5e1c <ui_redraw_backbuffer+0x123c>)
d03c5d9c:	e63b      	b.n	d03c5a16 <ui_redraw_backbuffer+0xe36>
d03c5d9e:	9b05      	ldr	r3, [sp, #20]
d03c5da0:	2160      	movs	r1, #96	; 0x60
d03c5da2:	4a1f      	ldr	r2, [pc, #124]	; (d03c5e20 <ui_redraw_backbuffer+0x1240>)
d03c5da4:	a808      	add	r0, sp, #32
d03c5da6:	9300      	str	r3, [sp, #0]
d03c5da8:	4b1e      	ldr	r3, [pc, #120]	; (d03c5e24 <ui_redraw_backbuffer+0x1244>)
d03c5daa:	781b      	ldrb	r3, [r3, #0]
d03c5dac:	f004 f8de 	bl	d03c9f6c <sniprintf>
d03c5db0:	7b23      	ldrb	r3, [r4, #12]
d03c5db2:	7b62      	ldrb	r2, [r4, #13]
d03c5db4:	2018      	movs	r0, #24
d03c5db6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5dba:	7ba2      	ldrb	r2, [r4, #14]
d03c5dbc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5dc0:	7be2      	ldrb	r2, [r4, #15]
d03c5dc2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5dc6:	685b      	ldr	r3, [r3, #4]
d03c5dc8:	68db      	ldr	r3, [r3, #12]
d03c5dca:	4798      	blx	r3
d03c5dcc:	7b23      	ldrb	r3, [r4, #12]
d03c5dce:	7b62      	ldrb	r2, [r4, #13]
d03c5dd0:	21fa      	movs	r1, #250	; 0xfa
d03c5dd2:	f44f 70b4 	mov.w	r0, #360	; 0x168
d03c5dd6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5dda:	7ba2      	ldrb	r2, [r4, #14]
d03c5ddc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5de0:	7be2      	ldrb	r2, [r4, #15]
d03c5de2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5de6:	aa08      	add	r2, sp, #32
d03c5de8:	685b      	ldr	r3, [r3, #4]
d03c5dea:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5dec:	f7ff bac9 	b.w	d03c5382 <ui_redraw_backbuffer+0x7a2>
d03c5df0:	f7fe fbce 	bl	d03c4590 <ui_draw_seq>
d03c5df4:	f7ff b937 	b.w	d03c5066 <ui_redraw_backbuffer+0x486>
d03c5df8:	f88a 7000 	strb.w	r7, [sl]
d03c5dfc:	f7fd fca0 	bl	d03c3740 <ui_draw_home>
d03c5e00:	f7ff b931 	b.w	d03c5066 <ui_redraw_backbuffer+0x486>
d03c5e04:	d03cba42 	.word	0xd03cba42
d03c5e08:	d03cf52a 	.word	0xd03cf52a
d03c5e0c:	d03cf522 	.word	0xd03cf522
d03c5e10:	d03cc498 	.word	0xd03cc498
d03c5e14:	d03cb7e3 	.word	0xd03cb7e3
d03c5e18:	d03cba14 	.word	0xd03cba14
d03c5e1c:	d03cb7f1 	.word	0xd03cb7f1
d03c5e20:	d03cba45 	.word	0xd03cba45
d03c5e24:	d03cf531 	.word	0xd03cf531
d03c5e28:	d03cb7aa 	.word	0xd03cb7aa

d03c5e2c <ui_load_selected_file>:
d03c5e2c:	4ba6      	ldr	r3, [pc, #664]	; (d03c60c8 <ui_load_selected_file+0x29c>)
d03c5e2e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c5e32:	781a      	ldrb	r2, [r3, #0]
d03c5e34:	b0a3      	sub	sp, #140	; 0x8c
d03c5e36:	b11a      	cbz	r2, d03c5e40 <ui_load_selected_file+0x14>
d03c5e38:	4ba4      	ldr	r3, [pc, #656]	; (d03c60cc <ui_load_selected_file+0x2a0>)
d03c5e3a:	781b      	ldrb	r3, [r3, #0]
d03c5e3c:	429a      	cmp	r2, r3
d03c5e3e:	d805      	bhi.n	d03c5e4c <ui_load_selected_file+0x20>
d03c5e40:	48a3      	ldr	r0, [pc, #652]	; (d03c60d0 <ui_load_selected_file+0x2a4>)
d03c5e42:	f7fb fad3 	bl	d03c13ec <ui_set_status>
d03c5e46:	b023      	add	sp, #140	; 0x8c
d03c5e48:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c5e4c:	4aa1      	ldr	r2, [pc, #644]	; (d03c60d4 <ui_load_selected_file+0x2a8>)
d03c5e4e:	5cd5      	ldrb	r5, [r2, r3]
d03c5e50:	2d05      	cmp	r5, #5
d03c5e52:	d101      	bne.n	d03c5e58 <ui_load_selected_file+0x2c>
d03c5e54:	48a0      	ldr	r0, [pc, #640]	; (d03c60d8 <ui_load_selected_file+0x2ac>)
d03c5e56:	e7f4      	b.n	d03c5e42 <ui_load_selected_file+0x16>
d03c5e58:	4285      	cmp	r5, r0
d03c5e5a:	d00c      	beq.n	d03c5e76 <ui_load_selected_file+0x4a>
d03c5e5c:	2802      	cmp	r0, #2
d03c5e5e:	d101      	bne.n	d03c5e64 <ui_load_selected_file+0x38>
d03c5e60:	489e      	ldr	r0, [pc, #632]	; (d03c60dc <ui_load_selected_file+0x2b0>)
d03c5e62:	e7ee      	b.n	d03c5e42 <ui_load_selected_file+0x16>
d03c5e64:	2801      	cmp	r0, #1
d03c5e66:	d101      	bne.n	d03c5e6c <ui_load_selected_file+0x40>
d03c5e68:	489d      	ldr	r0, [pc, #628]	; (d03c60e0 <ui_load_selected_file+0x2b4>)
d03c5e6a:	e7ea      	b.n	d03c5e42 <ui_load_selected_file+0x16>
d03c5e6c:	2803      	cmp	r0, #3
d03c5e6e:	bf0c      	ite	eq
d03c5e70:	489c      	ldreq	r0, [pc, #624]	; (d03c60e4 <ui_load_selected_file+0x2b8>)
d03c5e72:	489d      	ldrne	r0, [pc, #628]	; (d03c60e8 <ui_load_selected_file+0x2bc>)
d03c5e74:	e7e5      	b.n	d03c5e42 <ui_load_selected_file+0x16>
d03c5e76:	489d      	ldr	r0, [pc, #628]	; (d03c60ec <ui_load_selected_file+0x2c0>)
d03c5e78:	4629      	mov	r1, r5
d03c5e7a:	eb00 1043 	add.w	r0, r0, r3, lsl #5
d03c5e7e:	f7fd f9dd 	bl	d03c323c <ui_file_make_path.constprop.0>
d03c5e82:	2d02      	cmp	r5, #2
d03c5e84:	f040 80ba 	bne.w	d03c5ffc <ui_load_selected_file+0x1d0>
d03c5e88:	4e99      	ldr	r6, [pc, #612]	; (d03c60f0 <ui_load_selected_file+0x2c4>)
d03c5e8a:	2100      	movs	r1, #0
d03c5e8c:	6830      	ldr	r0, [r6, #0]
d03c5e8e:	9118      	str	r1, [sp, #96]	; 0x60
d03c5e90:	b110      	cbz	r0, d03c5e98 <ui_load_selected_file+0x6c>
d03c5e92:	4d98      	ldr	r5, [pc, #608]	; (d03c60f4 <ui_load_selected_file+0x2c8>)
d03c5e94:	682b      	ldr	r3, [r5, #0]
d03c5e96:	b933      	cbnz	r3, d03c5ea6 <ui_load_selected_file+0x7a>
d03c5e98:	4897      	ldr	r0, [pc, #604]	; (d03c60f8 <ui_load_selected_file+0x2cc>)
d03c5e9a:	f7fb faa7 	bl	d03c13ec <ui_set_status>
d03c5e9e:	4b97      	ldr	r3, [pc, #604]	; (d03c60fc <ui_load_selected_file+0x2d0>)
d03c5ea0:	2201      	movs	r2, #1
d03c5ea2:	701a      	strb	r2, [r3, #0]
d03c5ea4:	e7cf      	b.n	d03c5e46 <ui_load_selected_file+0x1a>
d03c5ea6:	4c96      	ldr	r4, [pc, #600]	; (d03c6100 <ui_load_selected_file+0x2d4>)
d03c5ea8:	f24c 02c2 	movw	r2, #49346	; 0xc0c2
d03c5eac:	f003 fd54 	bl	d03c9958 <memset>
d03c5eb0:	4994      	ldr	r1, [pc, #592]	; (d03c6104 <ui_load_selected_file+0x2d8>)
d03c5eb2:	7923      	ldrb	r3, [r4, #4]
d03c5eb4:	7962      	ldrb	r2, [r4, #5]
d03c5eb6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5eba:	79a2      	ldrb	r2, [r4, #6]
d03c5ebc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5ec0:	79e2      	ldrb	r2, [r4, #7]
d03c5ec2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5ec6:	2201      	movs	r2, #1
d03c5ec8:	681b      	ldr	r3, [r3, #0]
d03c5eca:	4610      	mov	r0, r2
d03c5ecc:	681b      	ldr	r3, [r3, #0]
d03c5ece:	4798      	blx	r3
d03c5ed0:	b108      	cbz	r0, d03c5ed6 <ui_load_selected_file+0xaa>
d03c5ed2:	488d      	ldr	r0, [pc, #564]	; (d03c6108 <ui_load_selected_file+0x2dc>)
d03c5ed4:	e7e1      	b.n	d03c5e9a <ui_load_selected_file+0x6e>
d03c5ed6:	7923      	ldrb	r3, [r4, #4]
d03c5ed8:	2001      	movs	r0, #1
d03c5eda:	7962      	ldrb	r2, [r4, #5]
d03c5edc:	6831      	ldr	r1, [r6, #0]
d03c5ede:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5ee2:	79a2      	ldrb	r2, [r4, #6]
d03c5ee4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5ee8:	79e2      	ldrb	r2, [r4, #7]
d03c5eea:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5eee:	f24c 02c2 	movw	r2, #49346	; 0xc0c2
d03c5ef2:	681b      	ldr	r3, [r3, #0]
d03c5ef4:	689f      	ldr	r7, [r3, #8]
d03c5ef6:	ab18      	add	r3, sp, #96	; 0x60
d03c5ef8:	47b8      	blx	r7
d03c5efa:	7922      	ldrb	r2, [r4, #4]
d03c5efc:	7963      	ldrb	r3, [r4, #5]
d03c5efe:	4607      	mov	r7, r0
d03c5f00:	2001      	movs	r0, #1
d03c5f02:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03c5f06:	79a3      	ldrb	r3, [r4, #6]
d03c5f08:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d03c5f0c:	79e3      	ldrb	r3, [r4, #7]
d03c5f0e:	ea42 6203 	orr.w	r2, r2, r3, lsl #24
d03c5f12:	6813      	ldr	r3, [r2, #0]
d03c5f14:	68db      	ldr	r3, [r3, #12]
d03c5f16:	4798      	blx	r3
d03c5f18:	b96f      	cbnz	r7, d03c5f36 <ui_load_selected_file+0x10a>
d03c5f1a:	9b18      	ldr	r3, [sp, #96]	; 0x60
d03c5f1c:	2b1f      	cmp	r3, #31
d03c5f1e:	d90a      	bls.n	d03c5f36 <ui_load_selected_file+0x10a>
d03c5f20:	6834      	ldr	r4, [r6, #0]
d03c5f22:	2207      	movs	r2, #7
d03c5f24:	4979      	ldr	r1, [pc, #484]	; (d03c610c <ui_load_selected_file+0x2e0>)
d03c5f26:	4620      	mov	r0, r4
d03c5f28:	f003 fcfa 	bl	d03c9920 <memcmp>
d03c5f2c:	4606      	mov	r6, r0
d03c5f2e:	b910      	cbnz	r0, d03c5f36 <ui_load_selected_file+0x10a>
d03c5f30:	8923      	ldrh	r3, [r4, #8]
d03c5f32:	2b01      	cmp	r3, #1
d03c5f34:	d901      	bls.n	d03c5f3a <ui_load_selected_file+0x10e>
d03c5f36:	4876      	ldr	r0, [pc, #472]	; (d03c6110 <ui_load_selected_file+0x2e4>)
d03c5f38:	e7af      	b.n	d03c5e9a <ui_load_selected_file+0x6e>
d03c5f3a:	f104 010c 	add.w	r1, r4, #12
d03c5f3e:	2210      	movs	r2, #16
d03c5f40:	4874      	ldr	r0, [pc, #464]	; (d03c6114 <ui_load_selected_file+0x2e8>)
d03c5f42:	f104 0b42 	add.w	fp, r4, #66	; 0x42
d03c5f46:	f003 fcf9 	bl	d03c993c <memcpy>
d03c5f4a:	f104 011c 	add.w	r1, r4, #28
d03c5f4e:	2210      	movs	r2, #16
d03c5f50:	4871      	ldr	r0, [pc, #452]	; (d03c6118 <ui_load_selected_file+0x2ec>)
d03c5f52:	f003 fcf3 	bl	d03c993c <memcpy>
d03c5f56:	f104 012c 	add.w	r1, r4, #44	; 0x2c
d03c5f5a:	2210      	movs	r2, #16
d03c5f5c:	486f      	ldr	r0, [pc, #444]	; (d03c611c <ui_load_selected_file+0x2f0>)
d03c5f5e:	f003 fced 	bl	d03c993c <memcpy>
d03c5f62:	8fa2      	ldrh	r2, [r4, #60]	; 0x3c
d03c5f64:	4b6e      	ldr	r3, [pc, #440]	; (d03c6120 <ui_load_selected_file+0x2f4>)
d03c5f66:	34c2      	adds	r4, #194	; 0xc2
d03c5f68:	f8df a1e8 	ldr.w	sl, [pc, #488]	; d03c6154 <ui_load_selected_file+0x328>
d03c5f6c:	801a      	strh	r2, [r3, #0]
d03c5f6e:	f834 2c84 	ldrh.w	r2, [r4, #-132]
d03c5f72:	4b6c      	ldr	r3, [pc, #432]	; (d03c6124 <ui_load_selected_file+0x2f8>)
d03c5f74:	801a      	strh	r2, [r3, #0]
d03c5f76:	f814 3c82 	ldrb.w	r3, [r4, #-130]
d03c5f7a:	4a6b      	ldr	r2, [pc, #428]	; (d03c6128 <ui_load_selected_file+0x2fc>)
d03c5f7c:	3b00      	subs	r3, #0
d03c5f7e:	bf18      	it	ne
d03c5f80:	2301      	movne	r3, #1
d03c5f82:	7013      	strb	r3, [r2, #0]
d03c5f84:	f814 3c81 	ldrb.w	r3, [r4, #-129]
d03c5f88:	4a68      	ldr	r2, [pc, #416]	; (d03c612c <ui_load_selected_file+0x300>)
d03c5f8a:	2b0f      	cmp	r3, #15
d03c5f8c:	bf98      	it	ls
d03c5f8e:	461f      	movls	r7, r3
d03c5f90:	4b67      	ldr	r3, [pc, #412]	; (d03c6130 <ui_load_selected_file+0x304>)
d03c5f92:	701f      	strb	r7, [r3, #0]
d03c5f94:	08bb      	lsrs	r3, r7, #2
d03c5f96:	7013      	strb	r3, [r2, #0]
d03c5f98:	f7fb f98c 	bl	d03c12b4 <ui_vm_editor_clear_ram_patch>
d03c5f9c:	f81b 9b01 	ldrb.w	r9, [fp], #1
d03c5fa0:	f04f 0800 	mov.w	r8, #0
d03c5fa4:	f109 32ff 	add.w	r2, r9, #4294967295	; 0xffffffff
d03c5fa8:	2a5f      	cmp	r2, #95	; 0x5f
d03c5faa:	bf88      	it	hi
d03c5fac:	f04f 0960 	movhi.w	r9, #96	; 0x60
d03c5fb0:	682f      	ldr	r7, [r5, #0]
d03c5fb2:	eb04 0188 	add.w	r1, r4, r8, lsl #2
d03c5fb6:	2204      	movs	r2, #4
d03c5fb8:	4437      	add	r7, r6
d03c5fba:	eb07 0088 	add.w	r0, r7, r8, lsl #2
d03c5fbe:	f108 0801 	add.w	r8, r8, #1
d03c5fc2:	f003 fcbb 	bl	d03c993c <memcpy>
d03c5fc6:	2300      	movs	r3, #0
d03c5fc8:	fa5f f288 	uxtb.w	r2, r8
d03c5fcc:	4591      	cmp	r9, r2
d03c5fce:	d8ef      	bhi.n	d03c5fb0 <ui_load_selected_file+0x184>
d03c5fd0:	f506 76c0 	add.w	r6, r6, #384	; 0x180
d03c5fd4:	f887 317c 	strb.w	r3, [r7, #380]	; 0x17c
d03c5fd8:	f504 74c0 	add.w	r4, r4, #384	; 0x180
d03c5fdc:	f84a 7b04 	str.w	r7, [sl], #4
d03c5fe0:	f5b6 4f40 	cmp.w	r6, #49152	; 0xc000
d03c5fe4:	d1da      	bne.n	d03c5f9c <ui_load_selected_file+0x170>
d03c5fe6:	f7fb fd37 	bl	d03c1a58 <sid_midi_all_notes_off>
d03c5fea:	f7fb fbed 	bl	d03c17c8 <midi_update_all_active_volume>
d03c5fee:	4851      	ldr	r0, [pc, #324]	; (d03c6134 <ui_load_selected_file+0x308>)
d03c5ff0:	f7fb f9fc 	bl	d03c13ec <ui_set_status>
d03c5ff4:	4b50      	ldr	r3, [pc, #320]	; (d03c6138 <ui_load_selected_file+0x30c>)
d03c5ff6:	2200      	movs	r2, #0
d03c5ff8:	701a      	strb	r2, [r3, #0]
d03c5ffa:	e750      	b.n	d03c5e9e <ui_load_selected_file+0x72>
d03c5ffc:	2d01      	cmp	r5, #1
d03c5ffe:	f040 84ff 	bne.w	d03c6a00 <ui_load_selected_file+0xbd4>
d03c6002:	4b4b      	ldr	r3, [pc, #300]	; (d03c6130 <ui_load_selected_file+0x304>)
d03c6004:	2100      	movs	r1, #0
d03c6006:	4a43      	ldr	r2, [pc, #268]	; (d03c6114 <ui_load_selected_file+0x2e8>)
d03c6008:	781b      	ldrb	r3, [r3, #0]
d03c600a:	9118      	str	r1, [sp, #96]	; 0x60
d03c600c:	5cd6      	ldrb	r6, [r2, r3]
d03c600e:	56d3      	ldrsb	r3, [r2, r3]
d03c6010:	428b      	cmp	r3, r1
d03c6012:	da01      	bge.n	d03c6018 <ui_load_selected_file+0x1ec>
d03c6014:	4849      	ldr	r0, [pc, #292]	; (d03c613c <ui_load_selected_file+0x310>)
d03c6016:	e740      	b.n	d03c5e9a <ui_load_selected_file+0x6e>
d03c6018:	4f49      	ldr	r7, [pc, #292]	; (d03c6140 <ui_load_selected_file+0x314>)
d03c601a:	6838      	ldr	r0, [r7, #0]
d03c601c:	b908      	cbnz	r0, d03c6022 <ui_load_selected_file+0x1f6>
d03c601e:	4849      	ldr	r0, [pc, #292]	; (d03c6144 <ui_load_selected_file+0x318>)
d03c6020:	e73b      	b.n	d03c5e9a <ui_load_selected_file+0x6e>
d03c6022:	4c37      	ldr	r4, [pc, #220]	; (d03c6100 <ui_load_selected_file+0x2d4>)
d03c6024:	f44f 72c7 	mov.w	r2, #398	; 0x18e
d03c6028:	f003 fc96 	bl	d03c9958 <memset>
d03c602c:	4935      	ldr	r1, [pc, #212]	; (d03c6104 <ui_load_selected_file+0x2d8>)
d03c602e:	7923      	ldrb	r3, [r4, #4]
d03c6030:	4628      	mov	r0, r5
d03c6032:	7962      	ldrb	r2, [r4, #5]
d03c6034:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6038:	79a2      	ldrb	r2, [r4, #6]
d03c603a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c603e:	79e2      	ldrb	r2, [r4, #7]
d03c6040:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6044:	462a      	mov	r2, r5
d03c6046:	681b      	ldr	r3, [r3, #0]
d03c6048:	681b      	ldr	r3, [r3, #0]
d03c604a:	4798      	blx	r3
d03c604c:	b108      	cbz	r0, d03c6052 <ui_load_selected_file+0x226>
d03c604e:	483e      	ldr	r0, [pc, #248]	; (d03c6148 <ui_load_selected_file+0x31c>)
d03c6050:	e723      	b.n	d03c5e9a <ui_load_selected_file+0x6e>
d03c6052:	7923      	ldrb	r3, [r4, #4]
d03c6054:	4628      	mov	r0, r5
d03c6056:	7962      	ldrb	r2, [r4, #5]
d03c6058:	6839      	ldr	r1, [r7, #0]
d03c605a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c605e:	79a2      	ldrb	r2, [r4, #6]
d03c6060:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6064:	79e2      	ldrb	r2, [r4, #7]
d03c6066:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c606a:	f44f 72c7 	mov.w	r2, #398	; 0x18e
d03c606e:	681b      	ldr	r3, [r3, #0]
d03c6070:	f8d3 8008 	ldr.w	r8, [r3, #8]
d03c6074:	ab18      	add	r3, sp, #96	; 0x60
d03c6076:	47c0      	blx	r8
d03c6078:	7923      	ldrb	r3, [r4, #4]
d03c607a:	7962      	ldrb	r2, [r4, #5]
d03c607c:	4680      	mov	r8, r0
d03c607e:	4628      	mov	r0, r5
d03c6080:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6084:	79a2      	ldrb	r2, [r4, #6]
d03c6086:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c608a:	79e2      	ldrb	r2, [r4, #7]
d03c608c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6090:	681b      	ldr	r3, [r3, #0]
d03c6092:	68db      	ldr	r3, [r3, #12]
d03c6094:	4798      	blx	r3
d03c6096:	f1b8 0f00 	cmp.w	r8, #0
d03c609a:	d113      	bne.n	d03c60c4 <ui_load_selected_file+0x298>
d03c609c:	9b18      	ldr	r3, [sp, #96]	; 0x60
d03c609e:	2b1f      	cmp	r3, #31
d03c60a0:	d910      	bls.n	d03c60c4 <ui_load_selected_file+0x298>
d03c60a2:	683d      	ldr	r5, [r7, #0]
d03c60a4:	2207      	movs	r2, #7
d03c60a6:	4929      	ldr	r1, [pc, #164]	; (d03c614c <ui_load_selected_file+0x320>)
d03c60a8:	4628      	mov	r0, r5
d03c60aa:	f003 fc39 	bl	d03c9920 <memcmp>
d03c60ae:	4604      	mov	r4, r0
d03c60b0:	b940      	cbnz	r0, d03c60c4 <ui_load_selected_file+0x298>
d03c60b2:	892b      	ldrh	r3, [r5, #8]
d03c60b4:	2b01      	cmp	r3, #1
d03c60b6:	d805      	bhi.n	d03c60c4 <ui_load_selected_file+0x298>
d03c60b8:	f895 800d 	ldrb.w	r8, [r5, #13]
d03c60bc:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
d03c60c0:	2b5f      	cmp	r3, #95	; 0x5f
d03c60c2:	d949      	bls.n	d03c6158 <ui_load_selected_file+0x32c>
d03c60c4:	4822      	ldr	r0, [pc, #136]	; (d03c6150 <ui_load_selected_file+0x324>)
d03c60c6:	e6e8      	b.n	d03c5e9a <ui_load_selected_file+0x6e>
d03c60c8:	d03cda18 	.word	0xd03cda18
d03c60cc:	d03ce2ba 	.word	0xd03ce2ba
d03c60d0:	d03cba5f 	.word	0xd03cba5f
d03c60d4:	d03cda79 	.word	0xd03cda79
d03c60d8:	d03cba70 	.word	0xd03cba70
d03c60dc:	d03cba88 	.word	0xd03cba88
d03c60e0:	d03cba9e 	.word	0xd03cba9e
d03c60e4:	d03cbab4 	.word	0xd03cbab4
d03c60e8:	d03cbac7 	.word	0xd03cbac7
d03c60ec:	d03cdab9 	.word	0xd03cdab9
d03c60f0:	d03cf340 	.word	0xd03cf340
d03c60f4:	d03cf338 	.word	0xd03cf338
d03c60f8:	d03cbada 	.word	0xd03cbada
d03c60fc:	d03cd0e0 	.word	0xd03cd0e0
d03c6100:	2001f000 	.word	0x2001f000
d03c6104:	d03cf2d1 	.word	0xd03cf2d1
d03c6108:	d03cbaf6 	.word	0xd03cbaf6
d03c610c:	d03cb40a 	.word	0xd03cb40a
d03c6110:	d03cbb0f 	.word	0xd03cbb0f
d03c6114:	d03ccd04 	.word	0xd03ccd04
d03c6118:	d03ccd14 	.word	0xd03ccd14
d03c611c:	d03cccf4 	.word	0xd03cccf4
d03c6120:	d03ccf2e 	.word	0xd03ccf2e
d03c6124:	d03ccd2a 	.word	0xd03ccd2a
d03c6128:	d03ccd28 	.word	0xd03ccd28
d03c612c:	d03cd9d2 	.word	0xd03cd9d2
d03c6130:	d03cf36a 	.word	0xd03cf36a
d03c6134:	d03cbb20 	.word	0xd03cbb20
d03c6138:	d03cd9d4 	.word	0xd03cd9d4
d03c613c:	d03cbb2f 	.word	0xd03cbb2f
d03c6140:	d03cf33c 	.word	0xd03cf33c
d03c6144:	d03cbb49 	.word	0xd03cbb49
d03c6148:	d03cbb65 	.word	0xd03cbb65
d03c614c:	d03cb485 	.word	0xd03cb485
d03c6150:	d03cbb7e 	.word	0xd03cbb7e
d03c6154:	d03cc608 	.word	0xd03cc608
d03c6158:	4fa3      	ldr	r7, [pc, #652]	; (d03c63e8 <ui_load_selected_file+0x5bc>)
d03c615a:	f7fb f8ab 	bl	d03c12b4 <ui_vm_editor_clear_ram_patch>
d03c615e:	4ba3      	ldr	r3, [pc, #652]	; (d03c63ec <ui_load_selected_file+0x5c0>)
d03c6160:	350e      	adds	r5, #14
d03c6162:	f857 2026 	ldr.w	r2, [r7, r6, lsl #2]
d03c6166:	4621      	mov	r1, r4
d03c6168:	f8df 9284 	ldr.w	r9, [pc, #644]	; d03c63f0 <ui_load_selected_file+0x5c4>
d03c616c:	601a      	str	r2, [r3, #0]
d03c616e:	f44f 72c0 	mov.w	r2, #384	; 0x180
d03c6172:	489f      	ldr	r0, [pc, #636]	; (d03c63f0 <ui_load_selected_file+0x5c4>)
d03c6174:	f003 fbf0 	bl	d03c9958 <memset>
d03c6178:	eb05 0184 	add.w	r1, r5, r4, lsl #2
d03c617c:	2204      	movs	r2, #4
d03c617e:	eb09 0084 	add.w	r0, r9, r4, lsl #2
d03c6182:	3401      	adds	r4, #1
d03c6184:	f003 fbda 	bl	d03c993c <memcpy>
d03c6188:	b2e3      	uxtb	r3, r4
d03c618a:	4598      	cmp	r8, r3
d03c618c:	d8f4      	bhi.n	d03c6178 <ui_load_selected_file+0x34c>
d03c618e:	4a99      	ldr	r2, [pc, #612]	; (d03c63f4 <ui_load_selected_file+0x5c8>)
d03c6190:	2101      	movs	r1, #1
d03c6192:	2300      	movs	r3, #0
d03c6194:	f847 9026 	str.w	r9, [r7, r6, lsl #2]
d03c6198:	7016      	strb	r6, [r2, #0]
d03c619a:	4a97      	ldr	r2, [pc, #604]	; (d03c63f8 <ui_load_selected_file+0x5cc>)
d03c619c:	f889 317c 	strb.w	r3, [r9, #380]	; 0x17c
d03c61a0:	7011      	strb	r1, [r2, #0]
d03c61a2:	4a96      	ldr	r2, [pc, #600]	; (d03c63fc <ui_load_selected_file+0x5d0>)
d03c61a4:	7013      	strb	r3, [r2, #0]
d03c61a6:	4a96      	ldr	r2, [pc, #600]	; (d03c6400 <ui_load_selected_file+0x5d4>)
d03c61a8:	7013      	strb	r3, [r2, #0]
d03c61aa:	4a96      	ldr	r2, [pc, #600]	; (d03c6404 <ui_load_selected_file+0x5d8>)
d03c61ac:	7013      	strb	r3, [r2, #0]
d03c61ae:	f7fb fc53 	bl	d03c1a58 <sid_midi_all_notes_off>
d03c61b2:	4895      	ldr	r0, [pc, #596]	; (d03c6408 <ui_load_selected_file+0x5dc>)
d03c61b4:	e71c      	b.n	d03c5ff0 <ui_load_selected_file+0x1c4>
d03c61b6:	4c95      	ldr	r4, [pc, #596]	; (d03c640c <ui_load_selected_file+0x5e0>)
d03c61b8:	2224      	movs	r2, #36	; 0x24
d03c61ba:	f003 fbcd 	bl	d03c9958 <memset>
d03c61be:	4994      	ldr	r1, [pc, #592]	; (d03c6410 <ui_load_selected_file+0x5e4>)
d03c61c0:	7923      	ldrb	r3, [r4, #4]
d03c61c2:	7962      	ldrb	r2, [r4, #5]
d03c61c4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c61c8:	79a2      	ldrb	r2, [r4, #6]
d03c61ca:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c61ce:	79e2      	ldrb	r2, [r4, #7]
d03c61d0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c61d4:	2201      	movs	r2, #1
d03c61d6:	681b      	ldr	r3, [r3, #0]
d03c61d8:	4610      	mov	r0, r2
d03c61da:	681b      	ldr	r3, [r3, #0]
d03c61dc:	4798      	blx	r3
d03c61de:	b108      	cbz	r0, d03c61e4 <ui_load_selected_file+0x3b8>
d03c61e0:	488c      	ldr	r0, [pc, #560]	; (d03c6414 <ui_load_selected_file+0x5e8>)
d03c61e2:	e65a      	b.n	d03c5e9a <ui_load_selected_file+0x6e>
d03c61e4:	7923      	ldrb	r3, [r4, #4]
d03c61e6:	2001      	movs	r0, #1
d03c61e8:	7962      	ldrb	r2, [r4, #5]
d03c61ea:	6829      	ldr	r1, [r5, #0]
d03c61ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c61f0:	79a2      	ldrb	r2, [r4, #6]
d03c61f2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c61f6:	79e2      	ldrb	r2, [r4, #7]
d03c61f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c61fc:	2224      	movs	r2, #36	; 0x24
d03c61fe:	681b      	ldr	r3, [r3, #0]
d03c6200:	689e      	ldr	r6, [r3, #8]
d03c6202:	ab14      	add	r3, sp, #80	; 0x50
d03c6204:	47b0      	blx	r6
d03c6206:	b988      	cbnz	r0, d03c622c <ui_load_selected_file+0x400>
d03c6208:	9b14      	ldr	r3, [sp, #80]	; 0x50
d03c620a:	2b1f      	cmp	r3, #31
d03c620c:	d90e      	bls.n	d03c622c <ui_load_selected_file+0x400>
d03c620e:	682f      	ldr	r7, [r5, #0]
d03c6210:	2207      	movs	r2, #7
d03c6212:	4981      	ldr	r1, [pc, #516]	; (d03c6418 <ui_load_selected_file+0x5ec>)
d03c6214:	4638      	mov	r0, r7
d03c6216:	f003 fb83 	bl	d03c9920 <memcmp>
d03c621a:	4606      	mov	r6, r0
d03c621c:	b930      	cbnz	r0, d03c622c <ui_load_selected_file+0x400>
d03c621e:	893b      	ldrh	r3, [r7, #8]
d03c6220:	2b01      	cmp	r3, #1
d03c6222:	d803      	bhi.n	d03c622c <ui_load_selected_file+0x400>
d03c6224:	6938      	ldr	r0, [r7, #16]
d03c6226:	f5b0 5f00 	cmp.w	r0, #8192	; 0x2000
d03c622a:	d90f      	bls.n	d03c624c <ui_load_selected_file+0x420>
d03c622c:	7923      	ldrb	r3, [r4, #4]
d03c622e:	2001      	movs	r0, #1
d03c6230:	7962      	ldrb	r2, [r4, #5]
d03c6232:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6236:	79a2      	ldrb	r2, [r4, #6]
d03c6238:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c623c:	79e2      	ldrb	r2, [r4, #7]
d03c623e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6242:	681b      	ldr	r3, [r3, #0]
d03c6244:	68db      	ldr	r3, [r3, #12]
d03c6246:	4798      	blx	r3
d03c6248:	4874      	ldr	r0, [pc, #464]	; (d03c641c <ui_load_selected_file+0x5f0>)
d03c624a:	e626      	b.n	d03c5e9a <ui_load_selected_file+0x6e>
d03c624c:	f7fb f860 	bl	d03c1310 <seq_reserve_notes>
d03c6250:	b978      	cbnz	r0, d03c6272 <ui_load_selected_file+0x446>
d03c6252:	7923      	ldrb	r3, [r4, #4]
d03c6254:	2001      	movs	r0, #1
d03c6256:	7962      	ldrb	r2, [r4, #5]
d03c6258:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c625c:	79a2      	ldrb	r2, [r4, #6]
d03c625e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6262:	79e2      	ldrb	r2, [r4, #7]
d03c6264:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6268:	681b      	ldr	r3, [r3, #0]
d03c626a:	68db      	ldr	r3, [r3, #12]
d03c626c:	4798      	blx	r3
d03c626e:	486c      	ldr	r0, [pc, #432]	; (d03c6420 <ui_load_selected_file+0x5f4>)
d03c6270:	e613      	b.n	d03c5e9a <ui_load_selected_file+0x6e>
d03c6272:	2001      	movs	r0, #1
d03c6274:	4f6b      	ldr	r7, [pc, #428]	; (d03c6424 <ui_load_selected_file+0x5f8>)
d03c6276:	f7fb fc1f 	bl	d03c1ab8 <seq_stop_transport>
d03c627a:	f8df 81e0 	ldr.w	r8, [pc, #480]	; d03c645c <ui_load_selected_file+0x630>
d03c627e:	f7fa fffd 	bl	d03c127c <seq_clear_note_storage>
d03c6282:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c6286:	4631      	mov	r1, r6
d03c6288:	4867      	ldr	r0, [pc, #412]	; (d03c6428 <ui_load_selected_file+0x5fc>)
d03c628a:	f003 fb65 	bl	d03c9958 <memset>
d03c628e:	682e      	ldr	r6, [r5, #0]
d03c6290:	4b66      	ldr	r3, [pc, #408]	; (d03c642c <ui_load_selected_file+0x600>)
d03c6292:	6931      	ldr	r1, [r6, #16]
d03c6294:	681b      	ldr	r3, [r3, #0]
d03c6296:	4d66      	ldr	r5, [pc, #408]	; (d03c6430 <ui_load_selected_file+0x604>)
d03c6298:	4299      	cmp	r1, r3
d03c629a:	bf34      	ite	cc
d03c629c:	460b      	movcc	r3, r1
d03c629e:	2300      	movcs	r3, #0
d03c62a0:	f9b6 000c 	ldrsh.w	r0, [r6, #12]
d03c62a4:	6029      	str	r1, [r5, #0]
d03c62a6:	603b      	str	r3, [r7, #0]
d03c62a8:	f7fa fcc8 	bl	d03c0c3c <seq_set_bpm>
d03c62ac:	6973      	ldr	r3, [r6, #20]
d03c62ae:	4a61      	ldr	r2, [pc, #388]	; (d03c6434 <ui_load_selected_file+0x608>)
d03c62b0:	4861      	ldr	r0, [pc, #388]	; (d03c6438 <ui_load_selected_file+0x60c>)
d03c62b2:	6013      	str	r3, [r2, #0]
d03c62b4:	7e33      	ldrb	r3, [r6, #24]
d03c62b6:	3b00      	subs	r3, #0
d03c62b8:	bf18      	it	ne
d03c62ba:	2301      	movne	r3, #1
d03c62bc:	7003      	strb	r3, [r0, #0]
d03c62be:	7e73      	ldrb	r3, [r6, #25]
d03c62c0:	4616      	mov	r6, r2
d03c62c2:	485e      	ldr	r0, [pc, #376]	; (d03c643c <ui_load_selected_file+0x610>)
d03c62c4:	f003 0303 	and.w	r3, r3, #3
d03c62c8:	7003      	strb	r3, [r0, #0]
d03c62ca:	4b5d      	ldr	r3, [pc, #372]	; (d03c6440 <ui_load_selected_file+0x614>)
d03c62cc:	6818      	ldr	r0, [r3, #0]
d03c62ce:	4b5d      	ldr	r3, [pc, #372]	; (d03c6444 <ui_load_selected_file+0x618>)
d03c62d0:	6018      	str	r0, [r3, #0]
d03c62d2:	2900      	cmp	r1, #0
d03c62d4:	d02d      	beq.n	d03c6332 <ui_load_selected_file+0x506>
d03c62d6:	7923      	ldrb	r3, [r4, #4]
d03c62d8:	2001      	movs	r0, #1
d03c62da:	7962      	ldrb	r2, [r4, #5]
d03c62dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c62e0:	79a2      	ldrb	r2, [r4, #6]
d03c62e2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c62e6:	79e2      	ldrb	r2, [r4, #7]
d03c62e8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c62ec:	010a      	lsls	r2, r1, #4
d03c62ee:	f8d8 1000 	ldr.w	r1, [r8]
d03c62f2:	681b      	ldr	r3, [r3, #0]
d03c62f4:	f8d3 9008 	ldr.w	r9, [r3, #8]
d03c62f8:	ab18      	add	r3, sp, #96	; 0x60
d03c62fa:	47c8      	blx	r9
d03c62fc:	b920      	cbnz	r0, d03c6308 <ui_load_selected_file+0x4dc>
d03c62fe:	682a      	ldr	r2, [r5, #0]
d03c6300:	9b18      	ldr	r3, [sp, #96]	; 0x60
d03c6302:	ebb3 1f02 	cmp.w	r3, r2, lsl #4
d03c6306:	d014      	beq.n	d03c6332 <ui_load_selected_file+0x506>
d03c6308:	7923      	ldrb	r3, [r4, #4]
d03c630a:	2001      	movs	r0, #1
d03c630c:	7962      	ldrb	r2, [r4, #5]
d03c630e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6312:	79a2      	ldrb	r2, [r4, #6]
d03c6314:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6318:	79e2      	ldrb	r2, [r4, #7]
d03c631a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c631e:	681b      	ldr	r3, [r3, #0]
d03c6320:	68db      	ldr	r3, [r3, #12]
d03c6322:	4798      	blx	r3
d03c6324:	2300      	movs	r3, #0
d03c6326:	602b      	str	r3, [r5, #0]
d03c6328:	603b      	str	r3, [r7, #0]
d03c632a:	f7fa ffa7 	bl	d03c127c <seq_clear_note_storage>
d03c632e:	4846      	ldr	r0, [pc, #280]	; (d03c6448 <ui_load_selected_file+0x61c>)
d03c6330:	e5b3      	b.n	d03c5e9a <ui_load_selected_file+0x6e>
d03c6332:	7923      	ldrb	r3, [r4, #4]
d03c6334:	2001      	movs	r0, #1
d03c6336:	7962      	ldrb	r2, [r4, #5]
d03c6338:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c633c:	79a2      	ldrb	r2, [r4, #6]
d03c633e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6342:	79e2      	ldrb	r2, [r4, #7]
d03c6344:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6348:	681b      	ldr	r3, [r3, #0]
d03c634a:	68db      	ldr	r3, [r3, #12]
d03c634c:	4798      	blx	r3
d03c634e:	2100      	movs	r1, #0
d03c6350:	682c      	ldr	r4, [r5, #0]
d03c6352:	2001      	movs	r0, #1
d03c6354:	f8d8 3000 	ldr.w	r3, [r8]
d03c6358:	460d      	mov	r5, r1
d03c635a:	42a1      	cmp	r1, r4
d03c635c:	d109      	bne.n	d03c6372 <ui_load_selected_file+0x546>
d03c635e:	f7fa fc61 	bl	d03c0c24 <seq_playback_mark_dirty>
d03c6362:	6830      	ldr	r0, [r6, #0]
d03c6364:	f7fb fa54 	bl	d03c1810 <seq_playback_sync>
d03c6368:	4b38      	ldr	r3, [pc, #224]	; (d03c644c <ui_load_selected_file+0x620>)
d03c636a:	2201      	movs	r2, #1
d03c636c:	4838      	ldr	r0, [pc, #224]	; (d03c6450 <ui_load_selected_file+0x624>)
d03c636e:	701a      	strb	r2, [r3, #0]
d03c6370:	e63e      	b.n	d03c5ff0 <ui_load_selected_file+0x1c4>
d03c6372:	7a5a      	ldrb	r2, [r3, #9]
d03c6374:	2a0f      	cmp	r2, #15
d03c6376:	685a      	ldr	r2, [r3, #4]
d03c6378:	bf88      	it	hi
d03c637a:	725d      	strbhi	r5, [r3, #9]
d03c637c:	b902      	cbnz	r2, d03c6380 <ui_load_selected_file+0x554>
d03c637e:	6058      	str	r0, [r3, #4]
d03c6380:	7a5a      	ldrb	r2, [r3, #9]
d03c6382:	3101      	adds	r1, #1
d03c6384:	7358      	strb	r0, [r3, #13]
d03c6386:	3310      	adds	r3, #16
d03c6388:	f002 0207 	and.w	r2, r2, #7
d03c638c:	3220      	adds	r2, #32
d03c638e:	f803 2c04 	strb.w	r2, [r3, #-4]
d03c6392:	e7e2      	b.n	d03c635a <ui_load_selected_file+0x52e>
d03c6394:	792b      	ldrb	r3, [r5, #4]
d03c6396:	796a      	ldrb	r2, [r5, #5]
d03c6398:	491d      	ldr	r1, [pc, #116]	; (d03c6410 <ui_load_selected_file+0x5e4>)
d03c639a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c639e:	79aa      	ldrb	r2, [r5, #6]
d03c63a0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c63a4:	79ea      	ldrb	r2, [r5, #7]
d03c63a6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c63aa:	2201      	movs	r2, #1
d03c63ac:	681b      	ldr	r3, [r3, #0]
d03c63ae:	4610      	mov	r0, r2
d03c63b0:	681b      	ldr	r3, [r3, #0]
d03c63b2:	4798      	blx	r3
d03c63b4:	4602      	mov	r2, r0
d03c63b6:	b108      	cbz	r0, d03c63bc <ui_load_selected_file+0x590>
d03c63b8:	4826      	ldr	r0, [pc, #152]	; (d03c6454 <ui_load_selected_file+0x628>)
d03c63ba:	e56e      	b.n	d03c5e9a <ui_load_selected_file+0x6e>
d03c63bc:	2104      	movs	r1, #4
d03c63be:	a80d      	add	r0, sp, #52	; 0x34
d03c63c0:	f7fc f960 	bl	d03c2684 <ui_file_read_exact.constprop.0>
d03c63c4:	2800      	cmp	r0, #0
d03c63c6:	d14b      	bne.n	d03c6460 <ui_load_selected_file+0x634>
d03c63c8:	7923      	ldrb	r3, [r4, #4]
d03c63ca:	2001      	movs	r0, #1
d03c63cc:	7962      	ldrb	r2, [r4, #5]
d03c63ce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c63d2:	79a2      	ldrb	r2, [r4, #6]
d03c63d4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c63d8:	79e2      	ldrb	r2, [r4, #7]
d03c63da:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c63de:	681b      	ldr	r3, [r3, #0]
d03c63e0:	68db      	ldr	r3, [r3, #12]
d03c63e2:	4798      	blx	r3
d03c63e4:	481c      	ldr	r0, [pc, #112]	; (d03c6458 <ui_load_selected_file+0x62c>)
d03c63e6:	e558      	b.n	d03c5e9a <ui_load_selected_file+0x6e>
d03c63e8:	d03cc608 	.word	0xd03cc608
d03c63ec:	d03cf524 	.word	0xd03cf524
d03c63f0:	d03cf3a2 	.word	0xd03cf3a2
d03c63f4:	d03cf528 	.word	0xd03cf528
d03c63f8:	d03cf523 	.word	0xd03cf523
d03c63fc:	d03cf529 	.word	0xd03cf529
d03c6400:	d03cf522 	.word	0xd03cf522
d03c6404:	d03cf531 	.word	0xd03cf531
d03c6408:	d03cbb8f 	.word	0xd03cbb8f
d03c640c:	2001f000 	.word	0x2001f000
d03c6410:	d03cf2d1 	.word	0xd03cf2d1
d03c6414:	d03cbbbf 	.word	0xd03cbbbf
d03c6418:	d03cb3ae 	.word	0xd03cb3ae
d03c641c:	d03cbbd5 	.word	0xd03cbbd5
d03c6420:	d03cbbe3 	.word	0xd03cbbe3
d03c6424:	d03ccf6c 	.word	0xd03ccf6c
d03c6428:	d03ccf8c 	.word	0xd03ccf8c
d03c642c:	d03ccf70 	.word	0xd03ccf70
d03c6430:	d03ccf74 	.word	0xd03ccf74
d03c6434:	d03cd0a0 	.word	0xd03cd0a0
d03c6438:	d03cd0a6 	.word	0xd03cd0a6
d03c643c:	d03cd0a7 	.word	0xd03cd0a7
d03c6440:	d03ccf50 	.word	0xd03ccf50
d03c6444:	d03ccf64 	.word	0xd03ccf64
d03c6448:	d03cbbf9 	.word	0xd03cbbf9
d03c644c:	d03cf36b 	.word	0xd03cf36b
d03c6450:	d03cbc0c 	.word	0xd03cbc0c
d03c6454:	d03cbc26 	.word	0xd03cbc26
d03c6458:	d03cbc3c 	.word	0xd03cbc3c
d03c645c:	d03ccf78 	.word	0xd03ccf78
d03c6460:	2204      	movs	r2, #4
d03c6462:	498e      	ldr	r1, [pc, #568]	; (d03c669c <ui_load_selected_file+0x870>)
d03c6464:	a80d      	add	r0, sp, #52	; 0x34
d03c6466:	f003 fa5b 	bl	d03c9920 <memcmp>
d03c646a:	4605      	mov	r5, r0
d03c646c:	2800      	cmp	r0, #0
d03c646e:	d1ab      	bne.n	d03c63c8 <ui_load_selected_file+0x59c>
d03c6470:	a80e      	add	r0, sp, #56	; 0x38
d03c6472:	f7fc f949 	bl	d03c2708 <ui_file_read_be32.constprop.0>
d03c6476:	2800      	cmp	r0, #0
d03c6478:	d0a6      	beq.n	d03c63c8 <ui_load_selected_file+0x59c>
d03c647a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
d03c647c:	2b05      	cmp	r3, #5
d03c647e:	d9a3      	bls.n	d03c63c8 <ui_load_selected_file+0x59c>
d03c6480:	f10d 002a 	add.w	r0, sp, #42	; 0x2a
d03c6484:	f7fc f92e 	bl	d03c26e4 <ui_file_read_be16.constprop.0>
d03c6488:	2800      	cmp	r0, #0
d03c648a:	d09d      	beq.n	d03c63c8 <ui_load_selected_file+0x59c>
d03c648c:	a80b      	add	r0, sp, #44	; 0x2c
d03c648e:	f7fc f929 	bl	d03c26e4 <ui_file_read_be16.constprop.0>
d03c6492:	2800      	cmp	r0, #0
d03c6494:	d098      	beq.n	d03c63c8 <ui_load_selected_file+0x59c>
d03c6496:	f10d 002e 	add.w	r0, sp, #46	; 0x2e
d03c649a:	f7fc f923 	bl	d03c26e4 <ui_file_read_be16.constprop.0>
d03c649e:	2800      	cmp	r0, #0
d03c64a0:	d092      	beq.n	d03c63c8 <ui_load_selected_file+0x59c>
d03c64a2:	980e      	ldr	r0, [sp, #56]	; 0x38
d03c64a4:	2806      	cmp	r0, #6
d03c64a6:	d905      	bls.n	d03c64b4 <ui_load_selected_file+0x688>
d03c64a8:	4629      	mov	r1, r5
d03c64aa:	3806      	subs	r0, #6
d03c64ac:	f7fc f93b 	bl	d03c2726 <ui_file_skip.constprop.0>
d03c64b0:	2800      	cmp	r0, #0
d03c64b2:	d089      	beq.n	d03c63c8 <ui_load_selected_file+0x59c>
d03c64b4:	f8bd 302a 	ldrh.w	r3, [sp, #42]	; 0x2a
d03c64b8:	2b01      	cmp	r3, #1
d03c64ba:	d806      	bhi.n	d03c64ca <ui_load_selected_file+0x69e>
d03c64bc:	f8bd 002c 	ldrh.w	r0, [sp, #44]	; 0x2c
d03c64c0:	b118      	cbz	r0, d03c64ca <ui_load_selected_file+0x69e>
d03c64c2:	f9bd 302e 	ldrsh.w	r3, [sp, #46]	; 0x2e
d03c64c6:	2b00      	cmp	r3, #0
d03c64c8:	da0f      	bge.n	d03c64ea <ui_load_selected_file+0x6be>
d03c64ca:	7923      	ldrb	r3, [r4, #4]
d03c64cc:	2001      	movs	r0, #1
d03c64ce:	7962      	ldrb	r2, [r4, #5]
d03c64d0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c64d4:	79a2      	ldrb	r2, [r4, #6]
d03c64d6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c64da:	79e2      	ldrb	r2, [r4, #7]
d03c64dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c64e0:	681b      	ldr	r3, [r3, #0]
d03c64e2:	68db      	ldr	r3, [r3, #12]
d03c64e4:	4798      	blx	r3
d03c64e6:	486e      	ldr	r0, [pc, #440]	; (d03c66a0 <ui_load_selected_file+0x874>)
d03c64e8:	e4d7      	b.n	d03c5e9a <ui_load_selected_file+0x6e>
d03c64ea:	9b0e      	ldr	r3, [sp, #56]	; 0x38
d03c64ec:	2701      	movs	r7, #1
d03c64ee:	f04f 08ff 	mov.w	r8, #255	; 0xff
d03c64f2:	496c      	ldr	r1, [pc, #432]	; (d03c66a4 <ui_load_selected_file+0x878>)
d03c64f4:	f103 0208 	add.w	r2, r3, #8
d03c64f8:	4b6b      	ldr	r3, [pc, #428]	; (d03c66a8 <ui_load_selected_file+0x87c>)
d03c64fa:	2500      	movs	r5, #0
d03c64fc:	4e6b      	ldr	r6, [pc, #428]	; (d03c66ac <ui_load_selected_file+0x880>)
d03c64fe:	701f      	strb	r7, [r3, #0]
d03c6500:	4b6b      	ldr	r3, [pc, #428]	; (d03c66b0 <ui_load_selected_file+0x884>)
d03c6502:	8035      	strh	r5, [r6, #0]
d03c6504:	f883 8000 	strb.w	r8, [r3]
d03c6508:	4b6a      	ldr	r3, [pc, #424]	; (d03c66b4 <ui_load_selected_file+0x888>)
d03c650a:	8018      	strh	r0, [r3, #0]
d03c650c:	4628      	mov	r0, r5
d03c650e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d03c6510:	42bb      	cmp	r3, r7
d03c6512:	bf38      	it	cc
d03c6514:	463b      	movcc	r3, r7
d03c6516:	600b      	str	r3, [r1, #0]
d03c6518:	4967      	ldr	r1, [pc, #412]	; (d03c66b8 <ui_load_selected_file+0x88c>)
d03c651a:	429a      	cmp	r2, r3
d03c651c:	bf94      	ite	ls
d03c651e:	600a      	strls	r2, [r1, #0]
d03c6520:	600b      	strhi	r3, [r1, #0]
d03c6522:	4639      	mov	r1, r7
d03c6524:	f7fb fd46 	bl	d03c1fb4 <ui_midi_import_progress_add>
d03c6528:	4638      	mov	r0, r7
d03c652a:	f7fb fac5 	bl	d03c1ab8 <seq_stop_transport>
d03c652e:	f7fa fea5 	bl	d03c127c <seq_clear_note_storage>
d03c6532:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c6536:	4629      	mov	r1, r5
d03c6538:	4860      	ldr	r0, [pc, #384]	; (d03c66bc <ui_load_selected_file+0x890>)
d03c653a:	f003 fa0d 	bl	d03c9958 <memset>
d03c653e:	f44f 5280 	mov.w	r2, #4096	; 0x1000
d03c6542:	4641      	mov	r1, r8
d03c6544:	485e      	ldr	r0, [pc, #376]	; (d03c66c0 <ui_load_selected_file+0x894>)
d03c6546:	f003 fa07 	bl	d03c9958 <memset>
d03c654a:	2210      	movs	r2, #16
d03c654c:	495d      	ldr	r1, [pc, #372]	; (d03c66c4 <ui_load_selected_file+0x898>)
d03c654e:	a814      	add	r0, sp, #80	; 0x50
d03c6550:	f003 f9f4 	bl	d03c993c <memcpy>
d03c6554:	4a5c      	ldr	r2, [pc, #368]	; (d03c66c8 <ui_load_selected_file+0x89c>)
d03c6556:	4b5d      	ldr	r3, [pc, #372]	; (d03c66cc <ui_load_selected_file+0x8a0>)
d03c6558:	6015      	str	r5, [r2, #0]
d03c655a:	4a5d      	ldr	r2, [pc, #372]	; (d03c66d0 <ui_load_selected_file+0x8a4>)
d03c655c:	601d      	str	r5, [r3, #0]
d03c655e:	6811      	ldr	r1, [r2, #0]
d03c6560:	4b5c      	ldr	r3, [pc, #368]	; (d03c66d4 <ui_load_selected_file+0x8a8>)
d03c6562:	4a5d      	ldr	r2, [pc, #372]	; (d03c66d8 <ui_load_selected_file+0x8ac>)
d03c6564:	601d      	str	r5, [r3, #0]
d03c6566:	6011      	str	r1, [r2, #0]
d03c6568:	9501      	str	r5, [sp, #4]
d03c656a:	9305      	str	r3, [sp, #20]
d03c656c:	9606      	str	r6, [sp, #24]
d03c656e:	f8bd 302c 	ldrh.w	r3, [sp, #44]	; 0x2c
d03c6572:	9a01      	ldr	r2, [sp, #4]
d03c6574:	4293      	cmp	r3, r2
d03c6576:	d83c      	bhi.n	d03c65f2 <ui_load_selected_file+0x7c6>
d03c6578:	f8bd 102e 	ldrh.w	r1, [sp, #46]	; 0x2e
d03c657c:	4608      	mov	r0, r1
d03c657e:	f7fa fd59 	bl	d03c1034 <ui_midi_import_close_open_notes>
d03c6582:	7923      	ldrb	r3, [r4, #4]
d03c6584:	7962      	ldrb	r2, [r4, #5]
d03c6586:	2001      	movs	r0, #1
d03c6588:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c658c:	79a2      	ldrb	r2, [r4, #6]
d03c658e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6592:	79e2      	ldrb	r2, [r4, #7]
d03c6594:	4c44      	ldr	r4, [pc, #272]	; (d03c66a8 <ui_load_selected_file+0x87c>)
d03c6596:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c659a:	681b      	ldr	r3, [r3, #0]
d03c659c:	68db      	ldr	r3, [r3, #12]
d03c659e:	4798      	blx	r3
d03c65a0:	7822      	ldrb	r2, [r4, #0]
d03c65a2:	b13a      	cbz	r2, d03c65b4 <ui_load_selected_file+0x788>
d03c65a4:	4b3f      	ldr	r3, [pc, #252]	; (d03c66a4 <ui_load_selected_file+0x878>)
d03c65a6:	2101      	movs	r1, #1
d03c65a8:	2000      	movs	r0, #0
d03c65aa:	681a      	ldr	r2, [r3, #0]
d03c65ac:	4b42      	ldr	r3, [pc, #264]	; (d03c66b8 <ui_load_selected_file+0x88c>)
d03c65ae:	601a      	str	r2, [r3, #0]
d03c65b0:	f7fb fd00 	bl	d03c1fb4 <ui_midi_import_progress_add>
d03c65b4:	2300      	movs	r3, #0
d03c65b6:	4a49      	ldr	r2, [pc, #292]	; (d03c66dc <ui_load_selected_file+0x8b0>)
d03c65b8:	7023      	strb	r3, [r4, #0]
d03c65ba:	4c44      	ldr	r4, [pc, #272]	; (d03c66cc <ui_load_selected_file+0x8a0>)
d03c65bc:	6812      	ldr	r2, [r2, #0]
d03c65be:	6823      	ldr	r3, [r4, #0]
d03c65c0:	4293      	cmp	r3, r2
d03c65c2:	bf28      	it	cs
d03c65c4:	2300      	movcs	r3, #0
d03c65c6:	9a05      	ldr	r2, [sp, #20]
d03c65c8:	6013      	str	r3, [r2, #0]
d03c65ca:	f7fa fb2b 	bl	d03c0c24 <seq_playback_mark_dirty>
d03c65ce:	4b3e      	ldr	r3, [pc, #248]	; (d03c66c8 <ui_load_selected_file+0x89c>)
d03c65d0:	6818      	ldr	r0, [r3, #0]
d03c65d2:	f7fb f91d 	bl	d03c1810 <seq_playback_sync>
d03c65d6:	4b42      	ldr	r3, [pc, #264]	; (d03c66e0 <ui_load_selected_file+0x8b4>)
d03c65d8:	2201      	movs	r2, #1
d03c65da:	2128      	movs	r1, #40	; 0x28
d03c65dc:	a818      	add	r0, sp, #96	; 0x60
d03c65de:	701a      	strb	r2, [r3, #0]
d03c65e0:	2205      	movs	r2, #5
d03c65e2:	4b40      	ldr	r3, [pc, #256]	; (d03c66e4 <ui_load_selected_file+0x8b8>)
d03c65e4:	701a      	strb	r2, [r3, #0]
d03c65e6:	6823      	ldr	r3, [r4, #0]
d03c65e8:	4a3f      	ldr	r2, [pc, #252]	; (d03c66e8 <ui_load_selected_file+0x8bc>)
d03c65ea:	f003 fcbf 	bl	d03c9f6c <sniprintf>
d03c65ee:	a818      	add	r0, sp, #96	; 0x60
d03c65f0:	e4fe      	b.n	d03c5ff0 <ui_load_selected_file+0x1c4>
d03c65f2:	9b01      	ldr	r3, [sp, #4]
d03c65f4:	2600      	movs	r6, #0
d03c65f6:	2101      	movs	r1, #1
d03c65f8:	3301      	adds	r3, #1
d03c65fa:	4630      	mov	r0, r6
d03c65fc:	9611      	str	r6, [sp, #68]	; 0x44
d03c65fe:	b29b      	uxth	r3, r3
d03c6600:	9301      	str	r3, [sp, #4]
d03c6602:	9a01      	ldr	r2, [sp, #4]
d03c6604:	9b06      	ldr	r3, [sp, #24]
d03c6606:	801a      	strh	r2, [r3, #0]
d03c6608:	f7fb fcd4 	bl	d03c1fb4 <ui_midi_import_progress_add>
d03c660c:	4632      	mov	r2, r6
d03c660e:	2104      	movs	r1, #4
d03c6610:	a80d      	add	r0, sp, #52	; 0x34
d03c6612:	f7fc f837 	bl	d03c2684 <ui_file_read_exact.constprop.0>
d03c6616:	b990      	cbnz	r0, d03c663e <ui_load_selected_file+0x812>
d03c6618:	4b23      	ldr	r3, [pc, #140]	; (d03c66a8 <ui_load_selected_file+0x87c>)
d03c661a:	2200      	movs	r2, #0
d03c661c:	2001      	movs	r0, #1
d03c661e:	701a      	strb	r2, [r3, #0]
d03c6620:	7923      	ldrb	r3, [r4, #4]
d03c6622:	7962      	ldrb	r2, [r4, #5]
d03c6624:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6628:	79a2      	ldrb	r2, [r4, #6]
d03c662a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c662e:	79e2      	ldrb	r2, [r4, #7]
d03c6630:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6634:	681b      	ldr	r3, [r3, #0]
d03c6636:	68db      	ldr	r3, [r3, #12]
d03c6638:	4798      	blx	r3
d03c663a:	482c      	ldr	r0, [pc, #176]	; (d03c66ec <ui_load_selected_file+0x8c0>)
d03c663c:	e42d      	b.n	d03c5e9a <ui_load_selected_file+0x6e>
d03c663e:	a811      	add	r0, sp, #68	; 0x44
d03c6640:	f7fc f862 	bl	d03c2708 <ui_file_read_be32.constprop.0>
d03c6644:	2800      	cmp	r0, #0
d03c6646:	d0e7      	beq.n	d03c6618 <ui_load_selected_file+0x7ec>
d03c6648:	2204      	movs	r2, #4
d03c664a:	4929      	ldr	r1, [pc, #164]	; (d03c66f0 <ui_load_selected_file+0x8c4>)
d03c664c:	a80d      	add	r0, sp, #52	; 0x34
d03c664e:	f003 f967 	bl	d03c9920 <memcmp>
d03c6652:	4605      	mov	r5, r0
d03c6654:	9811      	ldr	r0, [sp, #68]	; 0x44
d03c6656:	b1b5      	cbz	r5, d03c6686 <ui_load_selected_file+0x85a>
d03c6658:	4631      	mov	r1, r6
d03c665a:	f7fc f864 	bl	d03c2726 <ui_file_skip.constprop.0>
d03c665e:	2800      	cmp	r0, #0
d03c6660:	d185      	bne.n	d03c656e <ui_load_selected_file+0x742>
d03c6662:	4b11      	ldr	r3, [pc, #68]	; (d03c66a8 <ui_load_selected_file+0x87c>)
d03c6664:	7018      	strb	r0, [r3, #0]
d03c6666:	2001      	movs	r0, #1
d03c6668:	7923      	ldrb	r3, [r4, #4]
d03c666a:	7962      	ldrb	r2, [r4, #5]
d03c666c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6670:	79a2      	ldrb	r2, [r4, #6]
d03c6672:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6676:	79e2      	ldrb	r2, [r4, #7]
d03c6678:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c667c:	681b      	ldr	r3, [r3, #0]
d03c667e:	68db      	ldr	r3, [r3, #12]
d03c6680:	4798      	blx	r3
d03c6682:	481c      	ldr	r0, [pc, #112]	; (d03c66f4 <ui_load_selected_file+0x8c8>)
d03c6684:	e409      	b.n	d03c5e9a <ui_load_selected_file+0x6e>
d03c6686:	f8bd 902e 	ldrh.w	r9, [sp, #46]	; 0x2e
d03c668a:	46a8      	mov	r8, r5
d03c668c:	9012      	str	r0, [sp, #72]	; 0x48
d03c668e:	9b12      	ldr	r3, [sp, #72]	; 0x48
d03c6690:	bb93      	cbnz	r3, d03c66f8 <ui_load_selected_file+0x8cc>
d03c6692:	4649      	mov	r1, r9
d03c6694:	4640      	mov	r0, r8
d03c6696:	f7fa fccd 	bl	d03c1034 <ui_midi_import_close_open_notes>
d03c669a:	e768      	b.n	d03c656e <ui_load_selected_file+0x742>
d03c669c:	d03cbc4c 	.word	0xd03cbc4c
d03c66a0:	d03cbc51 	.word	0xd03cbc51
d03c66a4:	d03cf2c8 	.word	0xd03cf2c8
d03c66a8:	d03cf2be 	.word	0xd03cf2be
d03c66ac:	d03cf2cc 	.word	0xd03cf2cc
d03c66b0:	d03cf2c4 	.word	0xd03cf2c4
d03c66b4:	d03cf2ce 	.word	0xd03cf2ce
d03c66b8:	d03cf2c0 	.word	0xd03cf2c0
d03c66bc:	d03ccf8c 	.word	0xd03ccf8c
d03c66c0:	d03ce2be 	.word	0xd03ce2be
d03c66c4:	d03ccd04 	.word	0xd03ccd04
d03c66c8:	d03cd0a0 	.word	0xd03cd0a0
d03c66cc:	d03ccf74 	.word	0xd03ccf74
d03c66d0:	d03ccf50 	.word	0xd03ccf50
d03c66d4:	d03ccf6c 	.word	0xd03ccf6c
d03c66d8:	d03ccf64 	.word	0xd03ccf64
d03c66dc:	d03ccf70 	.word	0xd03ccf70
d03c66e0:	d03cf36b 	.word	0xd03cf36b
d03c66e4:	d03cf2d0 	.word	0xd03cf2d0
d03c66e8:	d03cbca0 	.word	0xd03cbca0
d03c66ec:	d03cbc67 	.word	0xd03cbc67
d03c66f0:	d03cbc76 	.word	0xd03cbc76
d03c66f4:	d03cbc7b 	.word	0xd03cbc7b
d03c66f8:	2700      	movs	r7, #0
d03c66fa:	a912      	add	r1, sp, #72	; 0x48
d03c66fc:	a813      	add	r0, sp, #76	; 0x4c
d03c66fe:	9713      	str	r7, [sp, #76]	; 0x4c
d03c6700:	f88d 7026 	strb.w	r7, [sp, #38]	; 0x26
d03c6704:	f88d 7027 	strb.w	r7, [sp, #39]	; 0x27
d03c6708:	f88d 7028 	strb.w	r7, [sp, #40]	; 0x28
d03c670c:	f7fc fbc4 	bl	d03c2e98 <ui_midi_read_varlen.constprop.0>
d03c6710:	2800      	cmp	r0, #0
d03c6712:	d057      	beq.n	d03c67c4 <ui_load_selected_file+0x998>
d03c6714:	aa12      	add	r2, sp, #72	; 0x48
d03c6716:	2101      	movs	r1, #1
d03c6718:	f10d 0026 	add.w	r0, sp, #38	; 0x26
d03c671c:	f7fb ffb2 	bl	d03c2684 <ui_file_read_exact.constprop.0>
d03c6720:	2800      	cmp	r0, #0
d03c6722:	d04f      	beq.n	d03c67c4 <ui_load_selected_file+0x998>
d03c6724:	f89d 6026 	ldrb.w	r6, [sp, #38]	; 0x26
d03c6728:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d03c672a:	2eff      	cmp	r6, #255	; 0xff
d03c672c:	4498      	add	r8, r3
d03c672e:	d15c      	bne.n	d03c67ea <ui_load_selected_file+0x9be>
d03c6730:	aa12      	add	r2, sp, #72	; 0x48
d03c6732:	2101      	movs	r1, #1
d03c6734:	f10d 0029 	add.w	r0, sp, #41	; 0x29
d03c6738:	f88d 7029 	strb.w	r7, [sp, #41]	; 0x29
d03c673c:	9718      	str	r7, [sp, #96]	; 0x60
d03c673e:	f7fb ffa1 	bl	d03c2684 <ui_file_read_exact.constprop.0>
d03c6742:	2800      	cmp	r0, #0
d03c6744:	d03e      	beq.n	d03c67c4 <ui_load_selected_file+0x998>
d03c6746:	a912      	add	r1, sp, #72	; 0x48
d03c6748:	a818      	add	r0, sp, #96	; 0x60
d03c674a:	f7fc fba5 	bl	d03c2e98 <ui_midi_read_varlen.constprop.0>
d03c674e:	2800      	cmp	r0, #0
d03c6750:	d038      	beq.n	d03c67c4 <ui_load_selected_file+0x998>
d03c6752:	f89d 3029 	ldrb.w	r3, [sp, #41]	; 0x29
d03c6756:	9818      	ldr	r0, [sp, #96]	; 0x60
d03c6758:	2b51      	cmp	r3, #81	; 0x51
d03c675a:	d12e      	bne.n	d03c67ba <ui_load_selected_file+0x98e>
d03c675c:	2803      	cmp	r0, #3
d03c675e:	d12c      	bne.n	d03c67ba <ui_load_selected_file+0x98e>
d03c6760:	4601      	mov	r1, r0
d03c6762:	aa12      	add	r2, sp, #72	; 0x48
d03c6764:	a80c      	add	r0, sp, #48	; 0x30
d03c6766:	f7fb ff8d 	bl	d03c2684 <ui_file_read_exact.constprop.0>
d03c676a:	b358      	cbz	r0, d03c67c4 <ui_load_selected_file+0x998>
d03c676c:	f89d 0031 	ldrb.w	r0, [sp, #49]	; 0x31
d03c6770:	f89d 3030 	ldrb.w	r3, [sp, #48]	; 0x30
d03c6774:	0200      	lsls	r0, r0, #8
d03c6776:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
d03c677a:	f89d 3032 	ldrb.w	r3, [sp, #50]	; 0x32
d03c677e:	4303      	orrs	r3, r0
d03c6780:	d019      	beq.n	d03c67b6 <ui_load_selected_file+0x98a>
d03c6782:	48a6      	ldr	r0, [pc, #664]	; (d03c6a1c <ui_load_selected_file+0xbf0>)
d03c6784:	eb00 0053 	add.w	r0, r0, r3, lsr #1
d03c6788:	fbb0 f0f3 	udiv	r0, r0, r3
d03c678c:	b280      	uxth	r0, r0
d03c678e:	f1a0 0314 	sub.w	r3, r0, #20
d03c6792:	f5b3 7f8c 	cmp.w	r3, #280	; 0x118
d03c6796:	d802      	bhi.n	d03c679e <ui_load_selected_file+0x972>
d03c6798:	b200      	sxth	r0, r0
d03c679a:	f7fa fa4f 	bl	d03c0c3c <seq_set_bpm>
d03c679e:	f89d 3029 	ldrb.w	r3, [sp, #41]	; 0x29
d03c67a2:	2b2f      	cmp	r3, #47	; 0x2f
d03c67a4:	d133      	bne.n	d03c680e <ui_load_selected_file+0x9e2>
d03c67a6:	a912      	add	r1, sp, #72	; 0x48
d03c67a8:	9812      	ldr	r0, [sp, #72]	; 0x48
d03c67aa:	f7fb ffbc 	bl	d03c2726 <ui_file_skip.constprop.0>
d03c67ae:	2800      	cmp	r0, #0
d03c67b0:	f47f aedd 	bne.w	d03c656e <ui_load_selected_file+0x742>
d03c67b4:	e006      	b.n	d03c67c4 <ui_load_selected_file+0x998>
d03c67b6:	2078      	movs	r0, #120	; 0x78
d03c67b8:	e7ee      	b.n	d03c6798 <ui_load_selected_file+0x96c>
d03c67ba:	a912      	add	r1, sp, #72	; 0x48
d03c67bc:	f7fb ffb3 	bl	d03c2726 <ui_file_skip.constprop.0>
d03c67c0:	2800      	cmp	r0, #0
d03c67c2:	d1ec      	bne.n	d03c679e <ui_load_selected_file+0x972>
d03c67c4:	4b96      	ldr	r3, [pc, #600]	; (d03c6a20 <ui_load_selected_file+0xbf4>)
d03c67c6:	2200      	movs	r2, #0
d03c67c8:	2001      	movs	r0, #1
d03c67ca:	701a      	strb	r2, [r3, #0]
d03c67cc:	7923      	ldrb	r3, [r4, #4]
d03c67ce:	7962      	ldrb	r2, [r4, #5]
d03c67d0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c67d4:	79a2      	ldrb	r2, [r4, #6]
d03c67d6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c67da:	79e2      	ldrb	r2, [r4, #7]
d03c67dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c67e0:	681b      	ldr	r3, [r3, #0]
d03c67e2:	68db      	ldr	r3, [r3, #12]
d03c67e4:	4798      	blx	r3
d03c67e6:	f7ff bb5a 	b.w	d03c5e9e <ui_load_selected_file+0x72>
d03c67ea:	2ef0      	cmp	r6, #240	; 0xf0
d03c67ec:	d001      	beq.n	d03c67f2 <ui_load_selected_file+0x9c6>
d03c67ee:	2ef7      	cmp	r6, #247	; 0xf7
d03c67f0:	d10f      	bne.n	d03c6812 <ui_load_selected_file+0x9e6>
d03c67f2:	2300      	movs	r3, #0
d03c67f4:	a912      	add	r1, sp, #72	; 0x48
d03c67f6:	a818      	add	r0, sp, #96	; 0x60
d03c67f8:	9318      	str	r3, [sp, #96]	; 0x60
d03c67fa:	f7fc fb4d 	bl	d03c2e98 <ui_midi_read_varlen.constprop.0>
d03c67fe:	2800      	cmp	r0, #0
d03c6800:	d0e0      	beq.n	d03c67c4 <ui_load_selected_file+0x998>
d03c6802:	a912      	add	r1, sp, #72	; 0x48
d03c6804:	9818      	ldr	r0, [sp, #96]	; 0x60
d03c6806:	f7fb ff8e 	bl	d03c2726 <ui_file_skip.constprop.0>
d03c680a:	2800      	cmp	r0, #0
d03c680c:	d0da      	beq.n	d03c67c4 <ui_load_selected_file+0x998>
d03c680e:	462e      	mov	r6, r5
d03c6810:	e024      	b.n	d03c685c <ui_load_selected_file+0xa30>
d03c6812:	0632      	lsls	r2, r6, #24
d03c6814:	d524      	bpl.n	d03c6860 <ui_load_selected_file+0xa34>
d03c6816:	aa12      	add	r2, sp, #72	; 0x48
d03c6818:	2101      	movs	r1, #1
d03c681a:	f10d 0027 	add.w	r0, sp, #39	; 0x27
d03c681e:	f7fb ff31 	bl	d03c2684 <ui_file_read_exact.constprop.0>
d03c6822:	2800      	cmp	r0, #0
d03c6824:	d0ce      	beq.n	d03c67c4 <ui_load_selected_file+0x998>
d03c6826:	f006 07f0 	and.w	r7, r6, #240	; 0xf0
d03c682a:	f006 050f 	and.w	r5, r6, #15
d03c682e:	2fc0      	cmp	r7, #192	; 0xc0
d03c6830:	f000 8085 	beq.w	d03c693e <ui_load_selected_file+0xb12>
d03c6834:	2fd0      	cmp	r7, #208	; 0xd0
d03c6836:	d011      	beq.n	d03c685c <ui_load_selected_file+0xa30>
d03c6838:	aa12      	add	r2, sp, #72	; 0x48
d03c683a:	2101      	movs	r1, #1
d03c683c:	a80a      	add	r0, sp, #40	; 0x28
d03c683e:	f7fb ff21 	bl	d03c2684 <ui_file_read_exact.constprop.0>
d03c6842:	2800      	cmp	r0, #0
d03c6844:	d0be      	beq.n	d03c67c4 <ui_load_selected_file+0x998>
d03c6846:	2f80      	cmp	r7, #128	; 0x80
d03c6848:	d110      	bne.n	d03c686c <ui_load_selected_file+0xa40>
d03c684a:	f89d 1027 	ldrb.w	r1, [sp, #39]	; 0x27
d03c684e:	464b      	mov	r3, r9
d03c6850:	4642      	mov	r2, r8
d03c6852:	4628      	mov	r0, r5
d03c6854:	f001 017f 	and.w	r1, r1, #127	; 0x7f
d03c6858:	f7fb fb44 	bl	d03c1ee4 <ui_midi_import_note_off.part.0>
d03c685c:	4635      	mov	r5, r6
d03c685e:	e716      	b.n	d03c668e <ui_load_selected_file+0x862>
d03c6860:	f88d 6027 	strb.w	r6, [sp, #39]	; 0x27
d03c6864:	2d00      	cmp	r5, #0
d03c6866:	d0ad      	beq.n	d03c67c4 <ui_load_selected_file+0x998>
d03c6868:	462e      	mov	r6, r5
d03c686a:	e7dc      	b.n	d03c6826 <ui_load_selected_file+0x9fa>
d03c686c:	2f90      	cmp	r7, #144	; 0x90
d03c686e:	d171      	bne.n	d03c6954 <ui_load_selected_file+0xb28>
d03c6870:	f89d 3028 	ldrb.w	r3, [sp, #40]	; 0x28
d03c6874:	9304      	str	r3, [sp, #16]
d03c6876:	2b00      	cmp	r3, #0
d03c6878:	d0e7      	beq.n	d03c684a <ui_load_selected_file+0xa1e>
d03c687a:	f89d 3027 	ldrb.w	r3, [sp, #39]	; 0x27
d03c687e:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d03c6882:	9302      	str	r3, [sp, #8]
d03c6884:	ab22      	add	r3, sp, #136	; 0x88
d03c6886:	442b      	add	r3, r5
d03c6888:	f813 3c38 	ldrb.w	r3, [r3, #-56]
d03c688c:	9303      	str	r3, [sp, #12]
d03c688e:	9b02      	ldr	r3, [sp, #8]
d03c6890:	eb03 12c5 	add.w	r2, r3, r5, lsl #7
d03c6894:	4b63      	ldr	r3, [pc, #396]	; (d03c6a24 <ui_load_selected_file+0xbf8>)
d03c6896:	f833 2012 	ldrh.w	r2, [r3, r2, lsl #1]
d03c689a:	f64f 73ff 	movw	r3, #65535	; 0xffff
d03c689e:	429a      	cmp	r2, r3
d03c68a0:	d005      	beq.n	d03c68ae <ui_load_selected_file+0xa82>
d03c68a2:	464b      	mov	r3, r9
d03c68a4:	4642      	mov	r2, r8
d03c68a6:	9902      	ldr	r1, [sp, #8]
d03c68a8:	4628      	mov	r0, r5
d03c68aa:	f7fb fb1b 	bl	d03c1ee4 <ui_midi_import_note_off.part.0>
d03c68ae:	4f5e      	ldr	r7, [pc, #376]	; (d03c6a28 <ui_load_selected_file+0xbfc>)
d03c68b0:	f8d7 a000 	ldr.w	sl, [r7]
d03c68b4:	f5ba 5f00 	cmp.w	sl, #8192	; 0x2000
d03c68b8:	d23d      	bcs.n	d03c6936 <ui_load_selected_file+0xb0a>
d03c68ba:	f10a 0b01 	add.w	fp, sl, #1
d03c68be:	4658      	mov	r0, fp
d03c68c0:	f7fa fd26 	bl	d03c1310 <seq_reserve_notes>
d03c68c4:	2800      	cmp	r0, #0
d03c68c6:	d036      	beq.n	d03c6936 <ui_load_selected_file+0xb0a>
d03c68c8:	4a58      	ldr	r2, [pc, #352]	; (d03c6a2c <ui_load_selected_file+0xc00>)
d03c68ca:	ea4f 130a 	mov.w	r3, sl, lsl #4
d03c68ce:	f8c7 b000 	str.w	fp, [r7]
d03c68d2:	2100      	movs	r1, #0
d03c68d4:	f8d2 b000 	ldr.w	fp, [r2]
d03c68d8:	2210      	movs	r2, #16
d03c68da:	9307      	str	r3, [sp, #28]
d03c68dc:	eb0b 170a 	add.w	r7, fp, sl, lsl #4
d03c68e0:	4638      	mov	r0, r7
d03c68e2:	f003 f839 	bl	d03c9958 <memset>
d03c68e6:	2201      	movs	r2, #1
d03c68e8:	4649      	mov	r1, r9
d03c68ea:	4640      	mov	r0, r8
d03c68ec:	737a      	strb	r2, [r7, #13]
d03c68ee:	f7fa fb8b 	bl	d03c1008 <ui_midi_import_tick_to_seq>
d03c68f2:	9b07      	ldr	r3, [sp, #28]
d03c68f4:	f84b 0003 	str.w	r0, [fp, r3]
d03c68f8:	2300      	movs	r3, #0
d03c68fa:	727d      	strb	r5, [r7, #9]
d03c68fc:	607b      	str	r3, [r7, #4]
d03c68fe:	9b02      	ldr	r3, [sp, #8]
d03c6900:	723b      	strb	r3, [r7, #8]
d03c6902:	9b03      	ldr	r3, [sp, #12]
d03c6904:	061b      	lsls	r3, r3, #24
d03c6906:	d502      	bpl.n	d03c690e <ui_load_selected_file+0xae2>
d03c6908:	4b49      	ldr	r3, [pc, #292]	; (d03c6a30 <ui_load_selected_file+0xc04>)
d03c690a:	5d5b      	ldrb	r3, [r3, r5]
d03c690c:	9303      	str	r3, [sp, #12]
d03c690e:	9b03      	ldr	r3, [sp, #12]
d03c6910:	72bb      	strb	r3, [r7, #10]
d03c6912:	9b04      	ldr	r3, [sp, #16]
d03c6914:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d03c6918:	2b01      	cmp	r3, #1
d03c691a:	bf38      	it	cc
d03c691c:	2301      	movcc	r3, #1
d03c691e:	72fb      	strb	r3, [r7, #11]
d03c6920:	f006 0307 	and.w	r3, r6, #7
d03c6924:	3320      	adds	r3, #32
d03c6926:	733b      	strb	r3, [r7, #12]
d03c6928:	9b02      	ldr	r3, [sp, #8]
d03c692a:	eb03 15c5 	add.w	r5, r3, r5, lsl #7
d03c692e:	4b3d      	ldr	r3, [pc, #244]	; (d03c6a24 <ui_load_selected_file+0xbf8>)
d03c6930:	f823 a015 	strh.w	sl, [r3, r5, lsl #1]
d03c6934:	e792      	b.n	d03c685c <ui_load_selected_file+0xa30>
d03c6936:	483f      	ldr	r0, [pc, #252]	; (d03c6a34 <ui_load_selected_file+0xc08>)
d03c6938:	f7fa fd58 	bl	d03c13ec <ui_set_status>
d03c693c:	e742      	b.n	d03c67c4 <ui_load_selected_file+0x998>
d03c693e:	f89d 3027 	ldrb.w	r3, [sp, #39]	; 0x27
d03c6942:	aa22      	add	r2, sp, #136	; 0x88
d03c6944:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d03c6948:	442a      	add	r2, r5
d03c694a:	f802 3c38 	strb.w	r3, [r2, #-56]
d03c694e:	4a3a      	ldr	r2, [pc, #232]	; (d03c6a38 <ui_load_selected_file+0xc0c>)
d03c6950:	5553      	strb	r3, [r2, r5]
d03c6952:	e783      	b.n	d03c685c <ui_load_selected_file+0xa30>
d03c6954:	2fb0      	cmp	r7, #176	; 0xb0
d03c6956:	d181      	bne.n	d03c685c <ui_load_selected_file+0xa30>
d03c6958:	f89d 3027 	ldrb.w	r3, [sp, #39]	; 0x27
d03c695c:	f89d 2028 	ldrb.w	r2, [sp, #40]	; 0x28
d03c6960:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d03c6964:	f002 027f 	and.w	r2, r2, #127	; 0x7f
d03c6968:	2b07      	cmp	r3, #7
d03c696a:	d102      	bne.n	d03c6972 <ui_load_selected_file+0xb46>
d03c696c:	4b33      	ldr	r3, [pc, #204]	; (d03c6a3c <ui_load_selected_file+0xc10>)
d03c696e:	555a      	strb	r2, [r3, r5]
d03c6970:	e774      	b.n	d03c685c <ui_load_selected_file+0xa30>
d03c6972:	2b0b      	cmp	r3, #11
d03c6974:	d101      	bne.n	d03c697a <ui_load_selected_file+0xb4e>
d03c6976:	4b32      	ldr	r3, [pc, #200]	; (d03c6a40 <ui_load_selected_file+0xc14>)
d03c6978:	e7f9      	b.n	d03c696e <ui_load_selected_file+0xb42>
d03c697a:	2b78      	cmp	r3, #120	; 0x78
d03c697c:	d001      	beq.n	d03c6982 <ui_load_selected_file+0xb56>
d03c697e:	2b7b      	cmp	r3, #123	; 0x7b
d03c6980:	d10a      	bne.n	d03c6998 <ui_load_selected_file+0xb6c>
d03c6982:	2700      	movs	r7, #0
d03c6984:	b2f9      	uxtb	r1, r7
d03c6986:	3701      	adds	r7, #1
d03c6988:	464b      	mov	r3, r9
d03c698a:	4642      	mov	r2, r8
d03c698c:	4628      	mov	r0, r5
d03c698e:	f7fb faa9 	bl	d03c1ee4 <ui_midi_import_note_off.part.0>
d03c6992:	2f80      	cmp	r7, #128	; 0x80
d03c6994:	d1f6      	bne.n	d03c6984 <ui_load_selected_file+0xb58>
d03c6996:	e761      	b.n	d03c685c <ui_load_selected_file+0xa30>
d03c6998:	2b79      	cmp	r3, #121	; 0x79
d03c699a:	f47f af5f 	bne.w	d03c685c <ui_load_selected_file+0xa30>
d03c699e:	237f      	movs	r3, #127	; 0x7f
d03c69a0:	4a26      	ldr	r2, [pc, #152]	; (d03c6a3c <ui_load_selected_file+0xc10>)
d03c69a2:	5553      	strb	r3, [r2, r5]
d03c69a4:	4a26      	ldr	r2, [pc, #152]	; (d03c6a40 <ui_load_selected_file+0xc14>)
d03c69a6:	5553      	strb	r3, [r2, r5]
d03c69a8:	2200      	movs	r2, #0
d03c69aa:	4b26      	ldr	r3, [pc, #152]	; (d03c6a44 <ui_load_selected_file+0xc18>)
d03c69ac:	f823 2015 	strh.w	r2, [r3, r5, lsl #1]
d03c69b0:	e754      	b.n	d03c685c <ui_load_selected_file+0xa30>
d03c69b2:	2d04      	cmp	r5, #4
d03c69b4:	f47f aa73 	bne.w	d03c5e9e <ui_load_selected_file+0x72>
d03c69b8:	2300      	movs	r3, #0
d03c69ba:	4d23      	ldr	r5, [pc, #140]	; (d03c6a48 <ui_load_selected_file+0xc1c>)
d03c69bc:	a910      	add	r1, sp, #64	; 0x40
d03c69be:	4823      	ldr	r0, [pc, #140]	; (d03c6a4c <ui_load_selected_file+0xc20>)
d03c69c0:	930e      	str	r3, [sp, #56]	; 0x38
d03c69c2:	462c      	mov	r4, r5
d03c69c4:	f8ad 302a 	strh.w	r3, [sp, #42]	; 0x2a
d03c69c8:	f8ad 302c 	strh.w	r3, [sp, #44]	; 0x2c
d03c69cc:	f8ad 302e 	strh.w	r3, [sp, #46]	; 0x2e
d03c69d0:	930f      	str	r3, [sp, #60]	; 0x3c
d03c69d2:	9310      	str	r3, [sp, #64]	; 0x40
d03c69d4:	792b      	ldrb	r3, [r5, #4]
d03c69d6:	796a      	ldrb	r2, [r5, #5]
d03c69d8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c69dc:	79aa      	ldrb	r2, [r5, #6]
d03c69de:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c69e2:	79ea      	ldrb	r2, [r5, #7]
d03c69e4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c69e8:	aa0f      	add	r2, sp, #60	; 0x3c
d03c69ea:	681b      	ldr	r3, [r3, #0]
d03c69ec:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d03c69ee:	4798      	blx	r3
d03c69f0:	b918      	cbnz	r0, d03c69fa <ui_load_selected_file+0xbce>
d03c69f2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d03c69f4:	2b0d      	cmp	r3, #13
d03c69f6:	f63f accd 	bhi.w	d03c6394 <ui_load_selected_file+0x568>
d03c69fa:	4815      	ldr	r0, [pc, #84]	; (d03c6a50 <ui_load_selected_file+0xc24>)
d03c69fc:	f7ff ba4d 	b.w	d03c5e9a <ui_load_selected_file+0x6e>
d03c6a00:	2d03      	cmp	r5, #3
d03c6a02:	d1d6      	bne.n	d03c69b2 <ui_load_selected_file+0xb86>
d03c6a04:	4d13      	ldr	r5, [pc, #76]	; (d03c6a54 <ui_load_selected_file+0xc28>)
d03c6a06:	2100      	movs	r1, #0
d03c6a08:	6828      	ldr	r0, [r5, #0]
d03c6a0a:	9114      	str	r1, [sp, #80]	; 0x50
d03c6a0c:	9118      	str	r1, [sp, #96]	; 0x60
d03c6a0e:	2800      	cmp	r0, #0
d03c6a10:	f47f abd1 	bne.w	d03c61b6 <ui_load_selected_file+0x38a>
d03c6a14:	4810      	ldr	r0, [pc, #64]	; (d03c6a58 <ui_load_selected_file+0xc2c>)
d03c6a16:	f7ff ba40 	b.w	d03c5e9a <ui_load_selected_file+0x6e>
d03c6a1a:	bf00      	nop
d03c6a1c:	03938700 	.word	0x03938700
d03c6a20:	d03cf2be 	.word	0xd03cf2be
d03c6a24:	d03ce2be 	.word	0xd03ce2be
d03c6a28:	d03ccf74 	.word	0xd03ccf74
d03c6a2c:	d03ccf78 	.word	0xd03ccf78
d03c6a30:	d03cc520 	.word	0xd03cc520
d03c6a34:	d03cbc8a 	.word	0xd03cbc8a
d03c6a38:	d03ccd04 	.word	0xd03ccd04
d03c6a3c:	d03ccd14 	.word	0xd03ccd14
d03c6a40:	d03cccf4 	.word	0xd03cccf4
d03c6a44:	d03cccd4 	.word	0xd03cccd4
d03c6a48:	2001f000 	.word	0x2001f000
d03c6a4c:	d03cf2d1 	.word	0xd03cf2d1
d03c6a50:	d03cbc18 	.word	0xd03cbc18
d03c6a54:	d03cf374 	.word	0xd03cf374
d03c6a58:	d03cbba6 	.word	0xd03cbba6

d03c6a5c <ui_midi_export_path.constprop.0>:
d03c6a5c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c6a60:	4bae      	ldr	r3, [pc, #696]	; (d03c6d1c <ui_midi_export_path.constprop.0+0x2c0>)
d03c6a62:	2700      	movs	r7, #0
d03c6a64:	4cae      	ldr	r4, [pc, #696]	; (d03c6d20 <ui_midi_export_path.constprop.0+0x2c4>)
d03c6a66:	b08d      	sub	sp, #52	; 0x34
d03c6a68:	881e      	ldrh	r6, [r3, #0]
d03c6a6a:	2001      	movs	r0, #1
d03c6a6c:	7923      	ldrb	r3, [r4, #4]
d03c6a6e:	7962      	ldrb	r2, [r4, #5]
d03c6a70:	42be      	cmp	r6, r7
d03c6a72:	49ac      	ldr	r1, [pc, #688]	; (d03c6d24 <ui_midi_export_path.constprop.0+0x2c8>)
d03c6a74:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6a78:	79a2      	ldrb	r2, [r4, #6]
d03c6a7a:	9705      	str	r7, [sp, #20]
d03c6a7c:	bf08      	it	eq
d03c6a7e:	2678      	moveq	r6, #120	; 0x78
d03c6a80:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6a84:	79e2      	ldrb	r2, [r4, #7]
d03c6a86:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6a8a:	220a      	movs	r2, #10
d03c6a8c:	681b      	ldr	r3, [r3, #0]
d03c6a8e:	e9cd 7706 	strd	r7, r7, [sp, #24]
d03c6a92:	681b      	ldr	r3, [r3, #0]
d03c6a94:	4798      	blx	r3
d03c6a96:	4605      	mov	r5, r0
d03c6a98:	b120      	cbz	r0, d03c6aa4 <ui_midi_export_path.constprop.0+0x48>
d03c6a9a:	48a3      	ldr	r0, [pc, #652]	; (d03c6d28 <ui_midi_export_path.constprop.0+0x2cc>)
d03c6a9c:	2500      	movs	r5, #0
d03c6a9e:	f7fa fca5 	bl	d03c13ec <ui_set_status>
d03c6aa2:	e016      	b.n	d03c6ad2 <ui_midi_export_path.constprop.0+0x76>
d03c6aa4:	aa06      	add	r2, sp, #24
d03c6aa6:	2104      	movs	r1, #4
d03c6aa8:	48a0      	ldr	r0, [pc, #640]	; (d03c6d2c <ui_midi_export_path.constprop.0+0x2d0>)
d03c6aaa:	f7fb fe51 	bl	d03c2750 <ui_file_write_exact.constprop.0>
d03c6aae:	b9a0      	cbnz	r0, d03c6ada <ui_midi_export_path.constprop.0+0x7e>
d03c6ab0:	7923      	ldrb	r3, [r4, #4]
d03c6ab2:	2001      	movs	r0, #1
d03c6ab4:	7962      	ldrb	r2, [r4, #5]
d03c6ab6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6aba:	79a2      	ldrb	r2, [r4, #6]
d03c6abc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6ac0:	79e2      	ldrb	r2, [r4, #7]
d03c6ac2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6ac6:	681b      	ldr	r3, [r3, #0]
d03c6ac8:	68db      	ldr	r3, [r3, #12]
d03c6aca:	4798      	blx	r3
d03c6acc:	4898      	ldr	r0, [pc, #608]	; (d03c6d30 <ui_midi_export_path.constprop.0+0x2d4>)
d03c6ace:	f7fa fc8d 	bl	d03c13ec <ui_set_status>
d03c6ad2:	4628      	mov	r0, r5
d03c6ad4:	b00d      	add	sp, #52	; 0x34
d03c6ad6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c6ada:	a906      	add	r1, sp, #24
d03c6adc:	2006      	movs	r0, #6
d03c6ade:	f7fb feac 	bl	d03c283a <ui_file_write_be32.constprop.0>
d03c6ae2:	2800      	cmp	r0, #0
d03c6ae4:	d0e4      	beq.n	d03c6ab0 <ui_midi_export_path.constprop.0+0x54>
d03c6ae6:	aa06      	add	r2, sp, #24
d03c6ae8:	2102      	movs	r1, #2
d03c6aea:	a808      	add	r0, sp, #32
d03c6aec:	f8ad 5020 	strh.w	r5, [sp, #32]
d03c6af0:	f7fb fe2e 	bl	d03c2750 <ui_file_write_exact.constprop.0>
d03c6af4:	2800      	cmp	r0, #0
d03c6af6:	d0db      	beq.n	d03c6ab0 <ui_midi_export_path.constprop.0+0x54>
d03c6af8:	f44f 7380 	mov.w	r3, #256	; 0x100
d03c6afc:	aa06      	add	r2, sp, #24
d03c6afe:	2102      	movs	r1, #2
d03c6b00:	a808      	add	r0, sp, #32
d03c6b02:	f8ad 3020 	strh.w	r3, [sp, #32]
d03c6b06:	f7fb fe23 	bl	d03c2750 <ui_file_write_exact.constprop.0>
d03c6b0a:	2800      	cmp	r0, #0
d03c6b0c:	d0d0      	beq.n	d03c6ab0 <ui_midi_export_path.constprop.0+0x54>
d03c6b0e:	f24e 0301 	movw	r3, #57345	; 0xe001
d03c6b12:	aa06      	add	r2, sp, #24
d03c6b14:	2102      	movs	r1, #2
d03c6b16:	a808      	add	r0, sp, #32
d03c6b18:	f8ad 3020 	strh.w	r3, [sp, #32]
d03c6b1c:	f7fb fe18 	bl	d03c2750 <ui_file_write_exact.constprop.0>
d03c6b20:	2800      	cmp	r0, #0
d03c6b22:	d0c5      	beq.n	d03c6ab0 <ui_midi_export_path.constprop.0+0x54>
d03c6b24:	aa06      	add	r2, sp, #24
d03c6b26:	2104      	movs	r1, #4
d03c6b28:	4882      	ldr	r0, [pc, #520]	; (d03c6d34 <ui_midi_export_path.constprop.0+0x2d8>)
d03c6b2a:	f7fb fe11 	bl	d03c2750 <ui_file_write_exact.constprop.0>
d03c6b2e:	2800      	cmp	r0, #0
d03c6b30:	d0be      	beq.n	d03c6ab0 <ui_midi_export_path.constprop.0+0x54>
d03c6b32:	a906      	add	r1, sp, #24
d03c6b34:	4628      	mov	r0, r5
d03c6b36:	f7fb fe80 	bl	d03c283a <ui_file_write_be32.constprop.0>
d03c6b3a:	2800      	cmp	r0, #0
d03c6b3c:	d0b8      	beq.n	d03c6ab0 <ui_midi_export_path.constprop.0+0x54>
d03c6b3e:	a905      	add	r1, sp, #20
d03c6b40:	4628      	mov	r0, r5
d03c6b42:	f7fb fe37 	bl	d03c27b4 <ui_midi_write_varlen.constprop.0>
d03c6b46:	b978      	cbnz	r0, d03c6b68 <ui_midi_export_path.constprop.0+0x10c>
d03c6b48:	7923      	ldrb	r3, [r4, #4]
d03c6b4a:	2001      	movs	r0, #1
d03c6b4c:	7962      	ldrb	r2, [r4, #5]
d03c6b4e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6b52:	79a2      	ldrb	r2, [r4, #6]
d03c6b54:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6b58:	79e2      	ldrb	r2, [r4, #7]
d03c6b5a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6b5e:	681b      	ldr	r3, [r3, #0]
d03c6b60:	68db      	ldr	r3, [r3, #12]
d03c6b62:	4798      	blx	r3
d03c6b64:	4874      	ldr	r0, [pc, #464]	; (d03c6d38 <ui_midi_export_path.constprop.0+0x2dc>)
d03c6b66:	e7b2      	b.n	d03c6ace <ui_midi_export_path.constprop.0+0x72>
d03c6b68:	a905      	add	r1, sp, #20
d03c6b6a:	20ff      	movs	r0, #255	; 0xff
d03c6b6c:	f7fb fe16 	bl	d03c279c <ui_file_write_u8.constprop.0>
d03c6b70:	2800      	cmp	r0, #0
d03c6b72:	d0e9      	beq.n	d03c6b48 <ui_midi_export_path.constprop.0+0xec>
d03c6b74:	a905      	add	r1, sp, #20
d03c6b76:	2051      	movs	r0, #81	; 0x51
d03c6b78:	f7fb fe10 	bl	d03c279c <ui_file_write_u8.constprop.0>
d03c6b7c:	2800      	cmp	r0, #0
d03c6b7e:	d0e3      	beq.n	d03c6b48 <ui_midi_export_path.constprop.0+0xec>
d03c6b80:	a905      	add	r1, sp, #20
d03c6b82:	2003      	movs	r0, #3
d03c6b84:	f7fb fe0a 	bl	d03c279c <ui_file_write_u8.constprop.0>
d03c6b88:	2800      	cmp	r0, #0
d03c6b8a:	d0dd      	beq.n	d03c6b48 <ui_midi_export_path.constprop.0+0xec>
d03c6b8c:	4b6b      	ldr	r3, [pc, #428]	; (d03c6d3c <ui_midi_export_path.constprop.0+0x2e0>)
d03c6b8e:	2103      	movs	r1, #3
d03c6b90:	a808      	add	r0, sp, #32
d03c6b92:	fbb3 f3f6 	udiv	r3, r3, r6
d03c6b96:	0c1a      	lsrs	r2, r3, #16
d03c6b98:	f88d 3022 	strb.w	r3, [sp, #34]	; 0x22
d03c6b9c:	f88d 2020 	strb.w	r2, [sp, #32]
d03c6ba0:	0a1a      	lsrs	r2, r3, #8
d03c6ba2:	f88d 2021 	strb.w	r2, [sp, #33]	; 0x21
d03c6ba6:	aa05      	add	r2, sp, #20
d03c6ba8:	f7fb fdd2 	bl	d03c2750 <ui_file_write_exact.constprop.0>
d03c6bac:	2800      	cmp	r0, #0
d03c6bae:	d0cb      	beq.n	d03c6b48 <ui_midi_export_path.constprop.0+0xec>
d03c6bb0:	2210      	movs	r2, #16
d03c6bb2:	21ff      	movs	r1, #255	; 0xff
d03c6bb4:	a808      	add	r0, sp, #32
d03c6bb6:	f04f 0800 	mov.w	r8, #0
d03c6bba:	f002 fecd 	bl	d03c9958 <memset>
d03c6bbe:	aa07      	add	r2, sp, #28
d03c6bc0:	2101      	movs	r1, #1
d03c6bc2:	2000      	movs	r0, #0
d03c6bc4:	f7fa f9d2 	bl	d03c0f6c <ui_midi_find_next_time>
d03c6bc8:	f8df 9184 	ldr.w	r9, [pc, #388]	; d03c6d50 <ui_midi_export_path.constprop.0+0x2f4>
d03c6bcc:	4606      	mov	r6, r0
d03c6bce:	b9b6      	cbnz	r6, d03c6bfe <ui_midi_export_path.constprop.0+0x1a2>
d03c6bd0:	a905      	add	r1, sp, #20
d03c6bd2:	4630      	mov	r0, r6
d03c6bd4:	f7fb fdee 	bl	d03c27b4 <ui_midi_write_varlen.constprop.0>
d03c6bd8:	2800      	cmp	r0, #0
d03c6bda:	f040 80fa 	bne.w	d03c6dd2 <ui_midi_export_path.constprop.0+0x376>
d03c6bde:	7923      	ldrb	r3, [r4, #4]
d03c6be0:	2001      	movs	r0, #1
d03c6be2:	7962      	ldrb	r2, [r4, #5]
d03c6be4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6be8:	79a2      	ldrb	r2, [r4, #6]
d03c6bea:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6bee:	79e2      	ldrb	r2, [r4, #7]
d03c6bf0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6bf4:	681b      	ldr	r3, [r3, #0]
d03c6bf6:	68db      	ldr	r3, [r3, #12]
d03c6bf8:	4798      	blx	r3
d03c6bfa:	4851      	ldr	r0, [pc, #324]	; (d03c6d40 <ui_midi_export_path.constprop.0+0x2e4>)
d03c6bfc:	e74e      	b.n	d03c6a9c <ui_midi_export_path.constprop.0+0x40>
d03c6bfe:	9f07      	ldr	r7, [sp, #28]
d03c6c00:	f04f 0b00 	mov.w	fp, #0
d03c6c04:	f8df a13c 	ldr.w	sl, [pc, #316]	; d03c6d44 <ui_midi_export_path.constprop.0+0x2e8>
d03c6c08:	eba7 0708 	sub.w	r7, r7, r8
d03c6c0c:	465e      	mov	r6, fp
d03c6c0e:	f8da 2000 	ldr.w	r2, [sl]
d03c6c12:	4296      	cmp	r6, r2
d03c6c14:	d30d      	bcc.n	d03c6c32 <ui_midi_export_path.constprop.0+0x1d6>
d03c6c16:	2600      	movs	r6, #0
d03c6c18:	4b4a      	ldr	r3, [pc, #296]	; (d03c6d44 <ui_midi_export_path.constprop.0+0x2e8>)
d03c6c1a:	f8dd 801c 	ldr.w	r8, [sp, #28]
d03c6c1e:	681a      	ldr	r2, [r3, #0]
d03c6c20:	4296      	cmp	r6, r2
d03c6c22:	d33c      	bcc.n	d03c6c9e <ui_midi_export_path.constprop.0+0x242>
d03c6c24:	aa07      	add	r2, sp, #28
d03c6c26:	2100      	movs	r1, #0
d03c6c28:	4640      	mov	r0, r8
d03c6c2a:	f7fa f99f 	bl	d03c0f6c <ui_midi_find_next_time>
d03c6c2e:	4606      	mov	r6, r0
d03c6c30:	e7cd      	b.n	d03c6bce <ui_midi_export_path.constprop.0+0x172>
d03c6c32:	f8d9 2000 	ldr.w	r2, [r9]
d03c6c36:	eb02 1806 	add.w	r8, r2, r6, lsl #4
d03c6c3a:	f898 200d 	ldrb.w	r2, [r8, #13]
d03c6c3e:	b362      	cbz	r2, d03c6c9a <ui_midi_export_path.constprop.0+0x23e>
d03c6c40:	4640      	mov	r0, r8
d03c6c42:	f7fa f984 	bl	d03c0f4e <ui_seq_note_end_midi_tick>
d03c6c46:	9a07      	ldr	r2, [sp, #28]
d03c6c48:	4290      	cmp	r0, r2
d03c6c4a:	d126      	bne.n	d03c6c9a <ui_midi_export_path.constprop.0+0x23e>
d03c6c4c:	f898 1009 	ldrb.w	r1, [r8, #9]
d03c6c50:	ab05      	add	r3, sp, #20
d03c6c52:	f1bb 0f00 	cmp.w	fp, #0
d03c6c56:	f898 2008 	ldrb.w	r2, [r8, #8]
d03c6c5a:	f001 010f 	and.w	r1, r1, #15
d03c6c5e:	9300      	str	r3, [sp, #0]
d03c6c60:	f04f 0300 	mov.w	r3, #0
d03c6c64:	bf08      	it	eq
d03c6c66:	4638      	moveq	r0, r7
d03c6c68:	f041 0180 	orr.w	r1, r1, #128	; 0x80
d03c6c6c:	bf18      	it	ne
d03c6c6e:	4618      	movne	r0, r3
d03c6c70:	f7fb fdc2 	bl	d03c27f8 <ui_midi_write_channel_event.constprop.0>
d03c6c74:	b978      	cbnz	r0, d03c6c96 <ui_midi_export_path.constprop.0+0x23a>
d03c6c76:	7923      	ldrb	r3, [r4, #4]
d03c6c78:	2001      	movs	r0, #1
d03c6c7a:	7962      	ldrb	r2, [r4, #5]
d03c6c7c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6c80:	79a2      	ldrb	r2, [r4, #6]
d03c6c82:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6c86:	79e2      	ldrb	r2, [r4, #7]
d03c6c88:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6c8c:	681b      	ldr	r3, [r3, #0]
d03c6c8e:	68db      	ldr	r3, [r3, #12]
d03c6c90:	4798      	blx	r3
d03c6c92:	482d      	ldr	r0, [pc, #180]	; (d03c6d48 <ui_midi_export_path.constprop.0+0x2ec>)
d03c6c94:	e702      	b.n	d03c6a9c <ui_midi_export_path.constprop.0+0x40>
d03c6c96:	f04f 0b01 	mov.w	fp, #1
d03c6c9a:	3601      	adds	r6, #1
d03c6c9c:	e7b7      	b.n	d03c6c0e <ui_midi_export_path.constprop.0+0x1b2>
d03c6c9e:	f8d9 1000 	ldr.w	r1, [r9]
d03c6ca2:	ea4f 1a06 	mov.w	sl, r6, lsl #4
d03c6ca6:	eb01 1206 	add.w	r2, r1, r6, lsl #4
d03c6caa:	7b50      	ldrb	r0, [r2, #13]
d03c6cac:	9202      	str	r2, [sp, #8]
d03c6cae:	2800      	cmp	r0, #0
d03c6cb0:	f000 808d 	beq.w	d03c6dce <ui_midi_export_path.constprop.0+0x372>
d03c6cb4:	f851 000a 	ldr.w	r0, [r1, sl]
d03c6cb8:	f7fa f938 	bl	d03c0f2c <ui_seq_tick_to_midi_tick>
d03c6cbc:	4580      	cmp	r8, r0
d03c6cbe:	9a02      	ldr	r2, [sp, #8]
d03c6cc0:	f040 8085 	bne.w	d03c6dce <ui_midi_export_path.constprop.0+0x372>
d03c6cc4:	f892 8009 	ldrb.w	r8, [r2, #9]
d03c6cc8:	7a93      	ldrb	r3, [r2, #10]
d03c6cca:	f992 200a 	ldrsb.w	r2, [r2, #10]
d03c6cce:	f008 080f 	and.w	r8, r8, #15
d03c6cd2:	9302      	str	r3, [sp, #8]
d03c6cd4:	2a00      	cmp	r2, #0
d03c6cd6:	db72      	blt.n	d03c6dbe <ui_midi_export_path.constprop.0+0x362>
d03c6cd8:	ab0c      	add	r3, sp, #48	; 0x30
d03c6cda:	4443      	add	r3, r8
d03c6cdc:	f813 2c10 	ldrb.w	r2, [r3, #-16]
d03c6ce0:	9303      	str	r3, [sp, #12]
d03c6ce2:	9b02      	ldr	r3, [sp, #8]
d03c6ce4:	429a      	cmp	r2, r3
d03c6ce6:	d06a      	beq.n	d03c6dbe <ui_midi_export_path.constprop.0+0x362>
d03c6ce8:	f1bb 0f00 	cmp.w	fp, #0
d03c6cec:	a905      	add	r1, sp, #20
d03c6cee:	bf0c      	ite	eq
d03c6cf0:	4638      	moveq	r0, r7
d03c6cf2:	2000      	movne	r0, #0
d03c6cf4:	f7fb fd5e 	bl	d03c27b4 <ui_midi_write_varlen.constprop.0>
d03c6cf8:	bb60      	cbnz	r0, d03c6d54 <ui_midi_export_path.constprop.0+0x2f8>
d03c6cfa:	7923      	ldrb	r3, [r4, #4]
d03c6cfc:	2001      	movs	r0, #1
d03c6cfe:	7962      	ldrb	r2, [r4, #5]
d03c6d00:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6d04:	79a2      	ldrb	r2, [r4, #6]
d03c6d06:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6d0a:	79e2      	ldrb	r2, [r4, #7]
d03c6d0c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6d10:	681b      	ldr	r3, [r3, #0]
d03c6d12:	68db      	ldr	r3, [r3, #12]
d03c6d14:	4798      	blx	r3
d03c6d16:	480d      	ldr	r0, [pc, #52]	; (d03c6d4c <ui_midi_export_path.constprop.0+0x2f0>)
d03c6d18:	e6d9      	b.n	d03c6ace <ui_midi_export_path.constprop.0+0x72>
d03c6d1a:	bf00      	nop
d03c6d1c:	d03ccf4c 	.word	0xd03ccf4c
d03c6d20:	2001f000 	.word	0x2001f000
d03c6d24:	d03cf2d1 	.word	0xd03cf2d1
d03c6d28:	d03cbcb7 	.word	0xd03cbcb7
d03c6d2c:	d03cbc4c 	.word	0xd03cbc4c
d03c6d30:	d03cbccf 	.word	0xd03cbccf
d03c6d34:	d03cbc76 	.word	0xd03cbc76
d03c6d38:	d03cbce9 	.word	0xd03cbce9
d03c6d3c:	03938700 	.word	0x03938700
d03c6d40:	d03cbd54 	.word	0xd03cbd54
d03c6d44:	d03ccf74 	.word	0xd03ccf74
d03c6d48:	d03cbd02 	.word	0xd03cbd02
d03c6d4c:	d03cbd1e 	.word	0xd03cbd1e
d03c6d50:	d03ccf78 	.word	0xd03ccf78
d03c6d54:	a905      	add	r1, sp, #20
d03c6d56:	f048 00c0 	orr.w	r0, r8, #192	; 0xc0
d03c6d5a:	f7fb fd1f 	bl	d03c279c <ui_file_write_u8.constprop.0>
d03c6d5e:	2800      	cmp	r0, #0
d03c6d60:	d0cb      	beq.n	d03c6cfa <ui_midi_export_path.constprop.0+0x29e>
d03c6d62:	9b02      	ldr	r3, [sp, #8]
d03c6d64:	a905      	add	r1, sp, #20
d03c6d66:	f003 007f 	and.w	r0, r3, #127	; 0x7f
d03c6d6a:	f7fb fd17 	bl	d03c279c <ui_file_write_u8.constprop.0>
d03c6d6e:	2800      	cmp	r0, #0
d03c6d70:	d0c3      	beq.n	d03c6cfa <ui_midi_export_path.constprop.0+0x29e>
d03c6d72:	f8d9 3000 	ldr.w	r3, [r9]
d03c6d76:	2000      	movs	r0, #0
d03c6d78:	9a03      	ldr	r2, [sp, #12]
d03c6d7a:	4453      	add	r3, sl
d03c6d7c:	7a9b      	ldrb	r3, [r3, #10]
d03c6d7e:	f802 3c10 	strb.w	r3, [r2, #-16]
d03c6d82:	f8d9 3000 	ldr.w	r3, [r9]
d03c6d86:	a905      	add	r1, sp, #20
d03c6d88:	449a      	add	sl, r3
d03c6d8a:	f89a 300b 	ldrb.w	r3, [sl, #11]
d03c6d8e:	f89a 2008 	ldrb.w	r2, [sl, #8]
d03c6d92:	9100      	str	r1, [sp, #0]
d03c6d94:	f048 0190 	orr.w	r1, r8, #144	; 0x90
d03c6d98:	f7fb fd2e 	bl	d03c27f8 <ui_midi_write_channel_event.constprop.0>
d03c6d9c:	b9a8      	cbnz	r0, d03c6dca <ui_midi_export_path.constprop.0+0x36e>
d03c6d9e:	7923      	ldrb	r3, [r4, #4]
d03c6da0:	2001      	movs	r0, #1
d03c6da2:	7962      	ldrb	r2, [r4, #5]
d03c6da4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6da8:	79a2      	ldrb	r2, [r4, #6]
d03c6daa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6dae:	79e2      	ldrb	r2, [r4, #7]
d03c6db0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6db4:	681b      	ldr	r3, [r3, #0]
d03c6db6:	68db      	ldr	r3, [r3, #12]
d03c6db8:	4798      	blx	r3
d03c6dba:	482d      	ldr	r0, [pc, #180]	; (d03c6e70 <ui_midi_export_path.constprop.0+0x414>)
d03c6dbc:	e66e      	b.n	d03c6a9c <ui_midi_export_path.constprop.0+0x40>
d03c6dbe:	f1bb 0f00 	cmp.w	fp, #0
d03c6dc2:	bf0c      	ite	eq
d03c6dc4:	4638      	moveq	r0, r7
d03c6dc6:	2000      	movne	r0, #0
d03c6dc8:	e7db      	b.n	d03c6d82 <ui_midi_export_path.constprop.0+0x326>
d03c6dca:	f04f 0b01 	mov.w	fp, #1
d03c6dce:	3601      	adds	r6, #1
d03c6dd0:	e722      	b.n	d03c6c18 <ui_midi_export_path.constprop.0+0x1bc>
d03c6dd2:	a905      	add	r1, sp, #20
d03c6dd4:	20ff      	movs	r0, #255	; 0xff
d03c6dd6:	f7fb fce1 	bl	d03c279c <ui_file_write_u8.constprop.0>
d03c6dda:	2800      	cmp	r0, #0
d03c6ddc:	f43f aeff 	beq.w	d03c6bde <ui_midi_export_path.constprop.0+0x182>
d03c6de0:	a905      	add	r1, sp, #20
d03c6de2:	202f      	movs	r0, #47	; 0x2f
d03c6de4:	f7fb fcda 	bl	d03c279c <ui_file_write_u8.constprop.0>
d03c6de8:	2800      	cmp	r0, #0
d03c6dea:	f43f aef8 	beq.w	d03c6bde <ui_midi_export_path.constprop.0+0x182>
d03c6dee:	a905      	add	r1, sp, #20
d03c6df0:	4630      	mov	r0, r6
d03c6df2:	f7fb fcd3 	bl	d03c279c <ui_file_write_u8.constprop.0>
d03c6df6:	2800      	cmp	r0, #0
d03c6df8:	f43f aef1 	beq.w	d03c6bde <ui_midi_export_path.constprop.0+0x182>
d03c6dfc:	7923      	ldrb	r3, [r4, #4]
d03c6dfe:	2112      	movs	r1, #18
d03c6e00:	7962      	ldrb	r2, [r4, #5]
d03c6e02:	2001      	movs	r0, #1
d03c6e04:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6e08:	79a2      	ldrb	r2, [r4, #6]
d03c6e0a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6e0e:	79e2      	ldrb	r2, [r4, #7]
d03c6e10:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6e14:	681b      	ldr	r3, [r3, #0]
d03c6e16:	695b      	ldr	r3, [r3, #20]
d03c6e18:	4798      	blx	r3
d03c6e1a:	b178      	cbz	r0, d03c6e3c <ui_midi_export_path.constprop.0+0x3e0>
d03c6e1c:	7923      	ldrb	r3, [r4, #4]
d03c6e1e:	2001      	movs	r0, #1
d03c6e20:	7962      	ldrb	r2, [r4, #5]
d03c6e22:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6e26:	79a2      	ldrb	r2, [r4, #6]
d03c6e28:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6e2c:	79e2      	ldrb	r2, [r4, #7]
d03c6e2e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6e32:	681b      	ldr	r3, [r3, #0]
d03c6e34:	68db      	ldr	r3, [r3, #12]
d03c6e36:	4798      	blx	r3
d03c6e38:	480e      	ldr	r0, [pc, #56]	; (d03c6e74 <ui_midi_export_path.constprop.0+0x418>)
d03c6e3a:	e62f      	b.n	d03c6a9c <ui_midi_export_path.constprop.0+0x40>
d03c6e3c:	4631      	mov	r1, r6
d03c6e3e:	9805      	ldr	r0, [sp, #20]
d03c6e40:	f7fb fcfb 	bl	d03c283a <ui_file_write_be32.constprop.0>
d03c6e44:	2800      	cmp	r0, #0
d03c6e46:	d0e9      	beq.n	d03c6e1c <ui_midi_export_path.constprop.0+0x3c0>
d03c6e48:	7923      	ldrb	r3, [r4, #4]
d03c6e4a:	2001      	movs	r0, #1
d03c6e4c:	7962      	ldrb	r2, [r4, #5]
d03c6e4e:	2501      	movs	r5, #1
d03c6e50:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6e54:	79a2      	ldrb	r2, [r4, #6]
d03c6e56:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6e5a:	79e2      	ldrb	r2, [r4, #7]
d03c6e5c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6e60:	681b      	ldr	r3, [r3, #0]
d03c6e62:	68db      	ldr	r3, [r3, #12]
d03c6e64:	4798      	blx	r3
d03c6e66:	4804      	ldr	r0, [pc, #16]	; (d03c6e78 <ui_midi_export_path.constprop.0+0x41c>)
d03c6e68:	f7fa fac0 	bl	d03c13ec <ui_set_status>
d03c6e6c:	e631      	b.n	d03c6ad2 <ui_midi_export_path.constprop.0+0x76>
d03c6e6e:	bf00      	nop
d03c6e70:	d03cbd39 	.word	0xd03cbd39
d03c6e74:	d03cbd6b 	.word	0xd03cbd6b
d03c6e78:	d03cbd85 	.word	0xd03cbd85

d03c6e7c <ui_keyboard_commit_save>:
d03c6e7c:	b537      	push	{r0, r1, r2, r4, r5, lr}
d03c6e7e:	4604      	mov	r4, r0
d03c6e80:	4823      	ldr	r0, [pc, #140]	; (d03c6f10 <ui_keyboard_commit_save+0x94>)
d03c6e82:	7803      	ldrb	r3, [r0, #0]
d03c6e84:	b923      	cbnz	r3, d03c6e90 <ui_keyboard_commit_save+0x14>
d03c6e86:	4823      	ldr	r0, [pc, #140]	; (d03c6f14 <ui_keyboard_commit_save+0x98>)
d03c6e88:	f7fa fab0 	bl	d03c13ec <ui_set_status>
d03c6e8c:	b003      	add	sp, #12
d03c6e8e:	bd30      	pop	{r4, r5, pc}
d03c6e90:	4b21      	ldr	r3, [pc, #132]	; (d03c6f18 <ui_keyboard_commit_save+0x9c>)
d03c6e92:	4621      	mov	r1, r4
d03c6e94:	4d21      	ldr	r5, [pc, #132]	; (d03c6f1c <ui_keyboard_commit_save+0xa0>)
d03c6e96:	701c      	strb	r4, [r3, #0]
d03c6e98:	f7fc f9d0 	bl	d03c323c <ui_file_make_path.constprop.0>
d03c6e9c:	4a20      	ldr	r2, [pc, #128]	; (d03c6f20 <ui_keyboard_commit_save+0xa4>)
d03c6e9e:	2300      	movs	r3, #0
d03c6ea0:	4820      	ldr	r0, [pc, #128]	; (d03c6f24 <ui_keyboard_commit_save+0xa8>)
d03c6ea2:	e9cd 3300 	strd	r3, r3, [sp]
d03c6ea6:	7913      	ldrb	r3, [r2, #4]
d03c6ea8:	7951      	ldrb	r1, [r2, #5]
d03c6eaa:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c6eae:	7991      	ldrb	r1, [r2, #6]
d03c6eb0:	79d2      	ldrb	r2, [r2, #7]
d03c6eb2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c6eb6:	4669      	mov	r1, sp
d03c6eb8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6ebc:	aa01      	add	r2, sp, #4
d03c6ebe:	681b      	ldr	r3, [r3, #0]
d03c6ec0:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d03c6ec2:	4798      	blx	r3
d03c6ec4:	b940      	cbnz	r0, d03c6ed8 <ui_keyboard_commit_save+0x5c>
d03c6ec6:	9b00      	ldr	r3, [sp, #0]
d03c6ec8:	07db      	lsls	r3, r3, #31
d03c6eca:	d405      	bmi.n	d03c6ed8 <ui_keyboard_commit_save+0x5c>
d03c6ecc:	4b16      	ldr	r3, [pc, #88]	; (d03c6f28 <ui_keyboard_commit_save+0xac>)
d03c6ece:	2203      	movs	r2, #3
d03c6ed0:	701a      	strb	r2, [r3, #0]
d03c6ed2:	2301      	movs	r3, #1
d03c6ed4:	702b      	strb	r3, [r5, #0]
d03c6ed6:	e7d9      	b.n	d03c6e8c <ui_keyboard_commit_save+0x10>
d03c6ed8:	2c02      	cmp	r4, #2
d03c6eda:	d109      	bne.n	d03c6ef0 <ui_keyboard_commit_save+0x74>
d03c6edc:	f7fb fd72 	bl	d03c29c4 <ui_project_save_path.constprop.0>
d03c6ee0:	2800      	cmp	r0, #0
d03c6ee2:	d0f6      	beq.n	d03c6ed2 <ui_keyboard_commit_save+0x56>
d03c6ee4:	4b10      	ldr	r3, [pc, #64]	; (d03c6f28 <ui_keyboard_commit_save+0xac>)
d03c6ee6:	2200      	movs	r2, #0
d03c6ee8:	701a      	strb	r2, [r3, #0]
d03c6eea:	f7fc f9e7 	bl	d03c32bc <ui_file_refresh>
d03c6eee:	e7f0      	b.n	d03c6ed2 <ui_keyboard_commit_save+0x56>
d03c6ef0:	2c01      	cmp	r4, #1
d03c6ef2:	d004      	beq.n	d03c6efe <ui_keyboard_commit_save+0x82>
d03c6ef4:	2c03      	cmp	r4, #3
d03c6ef6:	d105      	bne.n	d03c6f04 <ui_keyboard_commit_save+0x88>
d03c6ef8:	f7fb fcac 	bl	d03c2854 <ui_song_save_path.constprop.0>
d03c6efc:	e7f0      	b.n	d03c6ee0 <ui_keyboard_commit_save+0x64>
d03c6efe:	f7fb fe37 	bl	d03c2b70 <ui_program_save_path.constprop.0>
d03c6f02:	e7ed      	b.n	d03c6ee0 <ui_keyboard_commit_save+0x64>
d03c6f04:	2c04      	cmp	r4, #4
d03c6f06:	d1e4      	bne.n	d03c6ed2 <ui_keyboard_commit_save+0x56>
d03c6f08:	f7ff fda8 	bl	d03c6a5c <ui_midi_export_path.constprop.0>
d03c6f0c:	e7e8      	b.n	d03c6ee0 <ui_keyboard_commit_save+0x64>
d03c6f0e:	bf00      	nop
d03c6f10:	d03cf34a 	.word	0xd03cf34a
d03c6f14:	d03cbd93 	.word	0xd03cbd93
d03c6f18:	d03cf349 	.word	0xd03cf349
d03c6f1c:	d03cd0e0 	.word	0xd03cd0e0
d03c6f20:	2001f000 	.word	0x2001f000
d03c6f24:	d03cf2d1 	.word	0xd03cf2d1
d03c6f28:	d03cd9d4 	.word	0xd03cd9d4

d03c6f2c <main>:
d03c6f2c:	2201      	movs	r2, #1
d03c6f2e:	4bb2      	ldr	r3, [pc, #712]	; (d03c71f8 <main+0x2cc>)
d03c6f30:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c6f34:	4fb1      	ldr	r7, [pc, #708]	; (d03c71fc <main+0x2d0>)
d03c6f36:	ed2d 8b02 	vpush	{d8}
d03c6f3a:	b0b1      	sub	sp, #196	; 0xc4
d03c6f3c:	701a      	strb	r2, [r3, #0]
d03c6f3e:	f7f9 f87d 	bl	d03c003c <initMalloc>
d03c6f42:	f44f 4040 	mov.w	r0, #49152	; 0xc000
d03c6f46:	f002 fcdb 	bl	d03c9900 <malloc>
d03c6f4a:	6038      	str	r0, [r7, #0]
d03c6f4c:	4680      	mov	r8, r0
d03c6f4e:	f24c 00c2 	movw	r0, #49346	; 0xc0c2
d03c6f52:	f002 fcd5 	bl	d03c9900 <malloc>
d03c6f56:	4baa      	ldr	r3, [pc, #680]	; (d03c7200 <main+0x2d4>)
d03c6f58:	4606      	mov	r6, r0
d03c6f5a:	6018      	str	r0, [r3, #0]
d03c6f5c:	f44f 70c7 	mov.w	r0, #398	; 0x18e
d03c6f60:	f002 fcce 	bl	d03c9900 <malloc>
d03c6f64:	4ba7      	ldr	r3, [pc, #668]	; (d03c7204 <main+0x2d8>)
d03c6f66:	4605      	mov	r5, r0
d03c6f68:	6018      	str	r0, [r3, #0]
d03c6f6a:	2024      	movs	r0, #36	; 0x24
d03c6f6c:	f002 fcc8 	bl	d03c9900 <malloc>
d03c6f70:	4ba5      	ldr	r3, [pc, #660]	; (d03c7208 <main+0x2dc>)
d03c6f72:	4604      	mov	r4, r0
d03c6f74:	6018      	str	r0, [r3, #0]
d03c6f76:	f1b8 0f00 	cmp.w	r8, #0
d03c6f7a:	d005      	beq.n	d03c6f88 <main+0x5c>
d03c6f7c:	f44f 4240 	mov.w	r2, #49152	; 0xc000
d03c6f80:	2100      	movs	r1, #0
d03c6f82:	4640      	mov	r0, r8
d03c6f84:	f002 fce8 	bl	d03c9958 <memset>
d03c6f88:	b12e      	cbz	r6, d03c6f96 <main+0x6a>
d03c6f8a:	f24c 02c2 	movw	r2, #49346	; 0xc0c2
d03c6f8e:	2100      	movs	r1, #0
d03c6f90:	4630      	mov	r0, r6
d03c6f92:	f002 fce1 	bl	d03c9958 <memset>
d03c6f96:	b12d      	cbz	r5, d03c6fa4 <main+0x78>
d03c6f98:	f44f 72c7 	mov.w	r2, #398	; 0x18e
d03c6f9c:	2100      	movs	r1, #0
d03c6f9e:	4628      	mov	r0, r5
d03c6fa0:	f002 fcda 	bl	d03c9958 <memset>
d03c6fa4:	b124      	cbz	r4, d03c6fb0 <main+0x84>
d03c6fa6:	2224      	movs	r2, #36	; 0x24
d03c6fa8:	2100      	movs	r1, #0
d03c6faa:	4620      	mov	r0, r4
d03c6fac:	f002 fcd4 	bl	d03c9958 <memset>
d03c6fb0:	4c96      	ldr	r4, [pc, #600]	; (d03c720c <main+0x2e0>)
d03c6fb2:	f44f 7000 	mov.w	r0, #512	; 0x200
d03c6fb6:	f7fa f9ab 	bl	d03c1310 <seq_reserve_notes>
d03c6fba:	2000      	movs	r0, #0
d03c6fbc:	7823      	ldrb	r3, [r4, #0]
d03c6fbe:	2601      	movs	r6, #1
d03c6fc0:	7862      	ldrb	r2, [r4, #1]
d03c6fc2:	46a2      	mov	sl, r4
d03c6fc4:	f8df 8258 	ldr.w	r8, [pc, #600]	; d03c7220 <main+0x2f4>
d03c6fc8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6fcc:	78a2      	ldrb	r2, [r4, #2]
d03c6fce:	f8df 9254 	ldr.w	r9, [pc, #596]	; d03c7224 <main+0x2f8>
d03c6fd2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6fd6:	78e2      	ldrb	r2, [r4, #3]
d03c6fd8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6fdc:	681b      	ldr	r3, [r3, #0]
d03c6fde:	4798      	blx	r3
d03c6fe0:	7923      	ldrb	r3, [r4, #4]
d03c6fe2:	7962      	ldrb	r2, [r4, #5]
d03c6fe4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6fe8:	79a2      	ldrb	r2, [r4, #6]
d03c6fea:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6fee:	79e2      	ldrb	r2, [r4, #7]
d03c6ff0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6ff4:	689b      	ldr	r3, [r3, #8]
d03c6ff6:	4798      	blx	r3
d03c6ff8:	7d23      	ldrb	r3, [r4, #20]
d03c6ffa:	7d62      	ldrb	r2, [r4, #21]
d03c6ffc:	2080      	movs	r0, #128	; 0x80
d03c6ffe:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c7002:	7da2      	ldrb	r2, [r4, #22]
d03c7004:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7008:	7de2      	ldrb	r2, [r4, #23]
d03c700a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c700e:	681b      	ldr	r3, [r3, #0]
d03c7010:	681b      	ldr	r3, [r3, #0]
d03c7012:	4798      	blx	r3
d03c7014:	7d23      	ldrb	r3, [r4, #20]
d03c7016:	7d62      	ldrb	r2, [r4, #21]
d03c7018:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c701c:	7da2      	ldrb	r2, [r4, #22]
d03c701e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7022:	7de2      	ldrb	r2, [r4, #23]
d03c7024:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c7028:	681b      	ldr	r3, [r3, #0]
d03c702a:	685b      	ldr	r3, [r3, #4]
d03c702c:	701e      	strb	r6, [r3, #0]
d03c702e:	7d23      	ldrb	r3, [r4, #20]
d03c7030:	7d62      	ldrb	r2, [r4, #21]
d03c7032:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c7036:	7da2      	ldrb	r2, [r4, #22]
d03c7038:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c703c:	7de2      	ldrb	r2, [r4, #23]
d03c703e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c7042:	681b      	ldr	r3, [r3, #0]
d03c7044:	699b      	ldr	r3, [r3, #24]
d03c7046:	4798      	blx	r3
d03c7048:	7b23      	ldrb	r3, [r4, #12]
d03c704a:	7b62      	ldrb	r2, [r4, #13]
d03c704c:	2190      	movs	r1, #144	; 0x90
d03c704e:	20dc      	movs	r0, #220	; 0xdc
d03c7050:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c7054:	7ba2      	ldrb	r2, [r4, #14]
d03c7056:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c705a:	7be2      	ldrb	r2, [r4, #15]
d03c705c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c7060:	681b      	ldr	r3, [r3, #0]
d03c7062:	691b      	ldr	r3, [r3, #16]
d03c7064:	4798      	blx	r3
d03c7066:	7b23      	ldrb	r3, [r4, #12]
d03c7068:	7b62      	ldrb	r2, [r4, #13]
d03c706a:	f44f 70f0 	mov.w	r0, #480	; 0x1e0
d03c706e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c7072:	7ba2      	ldrb	r2, [r4, #14]
d03c7074:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7078:	7be2      	ldrb	r2, [r4, #15]
d03c707a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c707e:	2206      	movs	r2, #6
d03c7080:	681b      	ldr	r3, [r3, #0]
d03c7082:	9200      	str	r2, [sp, #0]
d03c7084:	f44f 7270 	mov.w	r2, #960	; 0x3c0
d03c7088:	695d      	ldr	r5, [r3, #20]
d03c708a:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03c708e:	4619      	mov	r1, r3
d03c7090:	47a8      	blx	r5
d03c7092:	7b23      	ldrb	r3, [r4, #12]
d03c7094:	7b62      	ldrb	r2, [r4, #13]
d03c7096:	485e      	ldr	r0, [pc, #376]	; (d03c7210 <main+0x2e4>)
d03c7098:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c709c:	7ba2      	ldrb	r2, [r4, #14]
d03c709e:	4d5d      	ldr	r5, [pc, #372]	; (d03c7214 <main+0x2e8>)
d03c70a0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c70a4:	7be2      	ldrb	r2, [r4, #15]
d03c70a6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c70aa:	681b      	ldr	r3, [r3, #0]
d03c70ac:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d03c70ae:	4798      	blx	r3
d03c70b0:	7b23      	ldrb	r3, [r4, #12]
d03c70b2:	7b62      	ldrb	r2, [r4, #13]
d03c70b4:	4856      	ldr	r0, [pc, #344]	; (d03c7210 <main+0x2e4>)
d03c70b6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c70ba:	7ba2      	ldrb	r2, [r4, #14]
d03c70bc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c70c0:	7be2      	ldrb	r2, [r4, #15]
d03c70c2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c70c6:	681b      	ldr	r3, [r3, #0]
d03c70c8:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d03c70ca:	4798      	blx	r3
d03c70cc:	7b23      	ldrb	r3, [r4, #12]
d03c70ce:	7b62      	ldrb	r2, [r4, #13]
d03c70d0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c70d4:	7ba2      	ldrb	r2, [r4, #14]
d03c70d6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c70da:	7be2      	ldrb	r2, [r4, #15]
d03c70dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c70e0:	681b      	ldr	r3, [r3, #0]
d03c70e2:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d03c70e4:	4798      	blx	r3
d03c70e6:	7b23      	ldrb	r3, [r4, #12]
d03c70e8:	7b62      	ldrb	r2, [r4, #13]
d03c70ea:	f8c9 0000 	str.w	r0, [r9]
d03c70ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c70f2:	7ba2      	ldrb	r2, [r4, #14]
d03c70f4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c70f8:	7be2      	ldrb	r2, [r4, #15]
d03c70fa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c70fe:	681b      	ldr	r3, [r3, #0]
d03c7100:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d03c7102:	4798      	blx	r3
d03c7104:	4b44      	ldr	r3, [pc, #272]	; (d03c7218 <main+0x2ec>)
d03c7106:	f8c8 0000 	str.w	r0, [r8]
d03c710a:	f44f 2096 	mov.w	r0, #307200	; 0x4b000
d03c710e:	60e8      	str	r0, [r5, #12]
d03c7110:	606b      	str	r3, [r5, #4]
d03c7112:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03c7116:	812b      	strh	r3, [r5, #8]
d03c7118:	f002 fbf2 	bl	d03c9900 <malloc>
d03c711c:	6028      	str	r0, [r5, #0]
d03c711e:	7b23      	ldrb	r3, [r4, #12]
d03c7120:	4628      	mov	r0, r5
d03c7122:	7b62      	ldrb	r2, [r4, #13]
d03c7124:	2500      	movs	r5, #0
d03c7126:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c712a:	7ba2      	ldrb	r2, [r4, #14]
d03c712c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7130:	7be2      	ldrb	r2, [r4, #15]
d03c7132:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c7136:	681b      	ldr	r3, [r3, #0]
d03c7138:	6a1b      	ldr	r3, [r3, #32]
d03c713a:	4798      	blx	r3
d03c713c:	7b23      	ldrb	r3, [r4, #12]
d03c713e:	7b62      	ldrb	r2, [r4, #13]
d03c7140:	f8d9 0000 	ldr.w	r0, [r9]
d03c7144:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c7148:	7ba2      	ldrb	r2, [r4, #14]
d03c714a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c714e:	7be2      	ldrb	r2, [r4, #15]
d03c7150:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c7154:	681b      	ldr	r3, [r3, #0]
d03c7156:	69db      	ldr	r3, [r3, #28]
d03c7158:	4798      	blx	r3
d03c715a:	7b23      	ldrb	r3, [r4, #12]
d03c715c:	7b62      	ldrb	r2, [r4, #13]
d03c715e:	2100      	movs	r1, #0
d03c7160:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c7164:	7ba2      	ldrb	r2, [r4, #14]
d03c7166:	4608      	mov	r0, r1
d03c7168:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c716c:	7be2      	ldrb	r2, [r4, #15]
d03c716e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c7172:	681b      	ldr	r3, [r3, #0]
d03c7174:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d03c7176:	4798      	blx	r3
d03c7178:	7b23      	ldrb	r3, [r4, #12]
d03c717a:	7b62      	ldrb	r2, [r4, #13]
d03c717c:	f8d8 0000 	ldr.w	r0, [r8]
d03c7180:	f04f 0802 	mov.w	r8, #2
d03c7184:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c7188:	7ba2      	ldrb	r2, [r4, #14]
d03c718a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c718e:	7be2      	ldrb	r2, [r4, #15]
d03c7190:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c7194:	681b      	ldr	r3, [r3, #0]
d03c7196:	699b      	ldr	r3, [r3, #24]
d03c7198:	4798      	blx	r3
d03c719a:	4b20      	ldr	r3, [pc, #128]	; (d03c721c <main+0x2f0>)
d03c719c:	701d      	strb	r5, [r3, #0]
d03c719e:	7e23      	ldrb	r3, [r4, #24]
d03c71a0:	7e62      	ldrb	r2, [r4, #25]
d03c71a2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c71a6:	7ea2      	ldrb	r2, [r4, #26]
d03c71a8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c71ac:	7ee2      	ldrb	r2, [r4, #27]
d03c71ae:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c71b2:	681b      	ldr	r3, [r3, #0]
d03c71b4:	4798      	blx	r3
d03c71b6:	7d23      	ldrb	r3, [r4, #20]
d03c71b8:	7d62      	ldrb	r2, [r4, #21]
d03c71ba:	2118      	movs	r1, #24
d03c71bc:	4628      	mov	r0, r5
d03c71be:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c71c2:	7da2      	ldrb	r2, [r4, #22]
d03c71c4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c71c8:	7de2      	ldrb	r2, [r4, #23]
d03c71ca:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c71ce:	220f      	movs	r2, #15
d03c71d0:	681b      	ldr	r3, [r3, #0]
d03c71d2:	69db      	ldr	r3, [r3, #28]
d03c71d4:	4798      	blx	r3
d03c71d6:	7d23      	ldrb	r3, [r4, #20]
d03c71d8:	7d62      	ldrb	r2, [r4, #21]
d03c71da:	2118      	movs	r1, #24
d03c71dc:	4630      	mov	r0, r6
d03c71de:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c71e2:	7da2      	ldrb	r2, [r4, #22]
d03c71e4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c71e8:	7de2      	ldrb	r2, [r4, #23]
d03c71ea:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c71ee:	220f      	movs	r2, #15
d03c71f0:	681b      	ldr	r3, [r3, #0]
d03c71f2:	69db      	ldr	r3, [r3, #28]
d03c71f4:	e018      	b.n	d03c7228 <main+0x2fc>
d03c71f6:	bf00      	nop
d03c71f8:	d03cccc8 	.word	0xd03cccc8
d03c71fc:	d03cf338 	.word	0xd03cf338
d03c7200:	d03cf340 	.word	0xd03cf340
d03c7204:	d03cf33c 	.word	0xd03cf33c
d03c7208:	d03cf374 	.word	0xd03cf374
d03c720c:	2001f000 	.word	0x2001f000
d03c7210:	d03cc808 	.word	0xd03cc808
d03c7214:	d03cf6a0 	.word	0xd03cf6a0
d03c7218:	014003c0 	.word	0x014003c0
d03c721c:	d03cccc9 	.word	0xd03cccc9
d03c7220:	d03cccd0 	.word	0xd03cccd0
d03c7224:	d03ccccc 	.word	0xd03ccccc
d03c7228:	4798      	blx	r3
d03c722a:	f7f9 fa0f 	bl	d03c064c <sid_soundfont_init>
d03c722e:	f44f 7200 	mov.w	r2, #512	; 0x200
d03c7232:	4629      	mov	r1, r5
d03c7234:	48b4      	ldr	r0, [pc, #720]	; (d03c7508 <main+0x5dc>)
d03c7236:	f002 fb8f 	bl	d03c9958 <memset>
d03c723a:	2230      	movs	r2, #48	; 0x30
d03c723c:	4629      	mov	r1, r5
d03c723e:	48b3      	ldr	r0, [pc, #716]	; (d03c750c <main+0x5e0>)
d03c7240:	f002 fb8a 	bl	d03c9958 <memset>
d03c7244:	2210      	movs	r2, #16
d03c7246:	49b2      	ldr	r1, [pc, #712]	; (d03c7510 <main+0x5e4>)
d03c7248:	48b2      	ldr	r0, [pc, #712]	; (d03c7514 <main+0x5e8>)
d03c724a:	f002 fb77 	bl	d03c993c <memcpy>
d03c724e:	2210      	movs	r2, #16
d03c7250:	217f      	movs	r1, #127	; 0x7f
d03c7252:	48b1      	ldr	r0, [pc, #708]	; (d03c7518 <main+0x5ec>)
d03c7254:	f002 fb80 	bl	d03c9958 <memset>
d03c7258:	2210      	movs	r2, #16
d03c725a:	217f      	movs	r1, #127	; 0x7f
d03c725c:	48af      	ldr	r0, [pc, #700]	; (d03c751c <main+0x5f0>)
d03c725e:	f002 fb7b 	bl	d03c9958 <memset>
d03c7262:	4baf      	ldr	r3, [pc, #700]	; (d03c7520 <main+0x5f4>)
d03c7264:	22c8      	movs	r2, #200	; 0xc8
d03c7266:	4629      	mov	r1, r5
d03c7268:	48ae      	ldr	r0, [pc, #696]	; (d03c7524 <main+0x5f8>)
d03c726a:	801a      	strh	r2, [r3, #0]
d03c726c:	22b4      	movs	r2, #180	; 0xb4
d03c726e:	4bae      	ldr	r3, [pc, #696]	; (d03c7528 <main+0x5fc>)
d03c7270:	801a      	strh	r2, [r3, #0]
d03c7272:	2220      	movs	r2, #32
d03c7274:	4bad      	ldr	r3, [pc, #692]	; (d03c752c <main+0x600>)
d03c7276:	701e      	strb	r6, [r3, #0]
d03c7278:	f002 fb6e 	bl	d03c9958 <memset>
d03c727c:	4bac      	ldr	r3, [pc, #688]	; (d03c7530 <main+0x604>)
d03c727e:	2203      	movs	r2, #3
d03c7280:	4629      	mov	r1, r5
d03c7282:	48ac      	ldr	r0, [pc, #688]	; (d03c7534 <main+0x608>)
d03c7284:	701d      	strb	r5, [r3, #0]
d03c7286:	4bac      	ldr	r3, [pc, #688]	; (d03c7538 <main+0x60c>)
d03c7288:	701d      	strb	r5, [r3, #0]
d03c728a:	4bac      	ldr	r3, [pc, #688]	; (d03c753c <main+0x610>)
d03c728c:	601d      	str	r5, [r3, #0]
d03c728e:	4bac      	ldr	r3, [pc, #688]	; (d03c7540 <main+0x614>)
d03c7290:	701d      	strb	r5, [r3, #0]
d03c7292:	4bac      	ldr	r3, [pc, #688]	; (d03c7544 <main+0x618>)
d03c7294:	701d      	strb	r5, [r3, #0]
d03c7296:	4bac      	ldr	r3, [pc, #688]	; (d03c7548 <main+0x61c>)
d03c7298:	701d      	strb	r5, [r3, #0]
d03c729a:	4bac      	ldr	r3, [pc, #688]	; (d03c754c <main+0x620>)
d03c729c:	701d      	strb	r5, [r3, #0]
d03c729e:	4bac      	ldr	r3, [pc, #688]	; (d03c7550 <main+0x624>)
d03c72a0:	701d      	strb	r5, [r3, #0]
d03c72a2:	4bac      	ldr	r3, [pc, #688]	; (d03c7554 <main+0x628>)
d03c72a4:	701d      	strb	r5, [r3, #0]
d03c72a6:	4bac      	ldr	r3, [pc, #688]	; (d03c7558 <main+0x62c>)
d03c72a8:	701d      	strb	r5, [r3, #0]
d03c72aa:	4bac      	ldr	r3, [pc, #688]	; (d03c755c <main+0x630>)
d03c72ac:	701d      	strb	r5, [r3, #0]
d03c72ae:	705e      	strb	r6, [r3, #1]
d03c72b0:	70da      	strb	r2, [r3, #3]
d03c72b2:	22f0      	movs	r2, #240	; 0xf0
d03c72b4:	f883 8002 	strb.w	r8, [r3, #2]
d03c72b8:	4ba9      	ldr	r3, [pc, #676]	; (d03c7560 <main+0x634>)
d03c72ba:	701d      	strb	r5, [r3, #0]
d03c72bc:	4ba9      	ldr	r3, [pc, #676]	; (d03c7564 <main+0x638>)
d03c72be:	701d      	strb	r5, [r3, #0]
d03c72c0:	4ba9      	ldr	r3, [pc, #676]	; (d03c7568 <main+0x63c>)
d03c72c2:	701d      	strb	r5, [r3, #0]
d03c72c4:	4ba9      	ldr	r3, [pc, #676]	; (d03c756c <main+0x640>)
d03c72c6:	701d      	strb	r5, [r3, #0]
d03c72c8:	4ba9      	ldr	r3, [pc, #676]	; (d03c7570 <main+0x644>)
d03c72ca:	701d      	strb	r5, [r3, #0]
d03c72cc:	4ba9      	ldr	r3, [pc, #676]	; (d03c7574 <main+0x648>)
d03c72ce:	701d      	strb	r5, [r3, #0]
d03c72d0:	4ba9      	ldr	r3, [pc, #676]	; (d03c7578 <main+0x64c>)
d03c72d2:	701d      	strb	r5, [r3, #0]
d03c72d4:	4ba9      	ldr	r3, [pc, #676]	; (d03c757c <main+0x650>)
d03c72d6:	701d      	strb	r5, [r3, #0]
d03c72d8:	4ba9      	ldr	r3, [pc, #676]	; (d03c7580 <main+0x654>)
d03c72da:	801a      	strh	r2, [r3, #0]
d03c72dc:	22a0      	movs	r2, #160	; 0xa0
d03c72de:	4ba9      	ldr	r3, [pc, #676]	; (d03c7584 <main+0x658>)
d03c72e0:	801a      	strh	r2, [r3, #0]
d03c72e2:	4ba9      	ldr	r3, [pc, #676]	; (d03c7588 <main+0x65c>)
d03c72e4:	4aa9      	ldr	r2, [pc, #676]	; (d03c758c <main+0x660>)
d03c72e6:	701d      	strb	r5, [r3, #0]
d03c72e8:	4ba9      	ldr	r3, [pc, #676]	; (d03c7590 <main+0x664>)
d03c72ea:	701d      	strb	r5, [r3, #0]
d03c72ec:	4ba9      	ldr	r3, [pc, #676]	; (d03c7594 <main+0x668>)
d03c72ee:	701e      	strb	r6, [r3, #0]
d03c72f0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d03c72f4:	6013      	str	r3, [r2, #0]
d03c72f6:	4aa8      	ldr	r2, [pc, #672]	; (d03c7598 <main+0x66c>)
d03c72f8:	7015      	strb	r5, [r2, #0]
d03c72fa:	4aa8      	ldr	r2, [pc, #672]	; (d03c759c <main+0x670>)
d03c72fc:	7015      	strb	r5, [r2, #0]
d03c72fe:	4aa8      	ldr	r2, [pc, #672]	; (d03c75a0 <main+0x674>)
d03c7300:	7015      	strb	r5, [r2, #0]
d03c7302:	4aa8      	ldr	r2, [pc, #672]	; (d03c75a4 <main+0x678>)
d03c7304:	7015      	strb	r5, [r2, #0]
d03c7306:	4aa8      	ldr	r2, [pc, #672]	; (d03c75a8 <main+0x67c>)
d03c7308:	7015      	strb	r5, [r2, #0]
d03c730a:	4aa8      	ldr	r2, [pc, #672]	; (d03c75ac <main+0x680>)
d03c730c:	7015      	strb	r5, [r2, #0]
d03c730e:	4aa8      	ldr	r2, [pc, #672]	; (d03c75b0 <main+0x684>)
d03c7310:	7013      	strb	r3, [r2, #0]
d03c7312:	f44f 6200 	mov.w	r2, #2048	; 0x800
d03c7316:	4ba7      	ldr	r3, [pc, #668]	; (d03c75b4 <main+0x688>)
d03c7318:	701d      	strb	r5, [r3, #0]
d03c731a:	4ba7      	ldr	r3, [pc, #668]	; (d03c75b8 <main+0x68c>)
d03c731c:	701d      	strb	r5, [r3, #0]
d03c731e:	4ba7      	ldr	r3, [pc, #668]	; (d03c75bc <main+0x690>)
d03c7320:	701d      	strb	r5, [r3, #0]
d03c7322:	4ba7      	ldr	r3, [pc, #668]	; (d03c75c0 <main+0x694>)
d03c7324:	701e      	strb	r6, [r3, #0]
d03c7326:	4ba7      	ldr	r3, [pc, #668]	; (d03c75c4 <main+0x698>)
d03c7328:	4ea7      	ldr	r6, [pc, #668]	; (d03c75c8 <main+0x69c>)
d03c732a:	701d      	strb	r5, [r3, #0]
d03c732c:	4ba7      	ldr	r3, [pc, #668]	; (d03c75cc <main+0x6a0>)
d03c732e:	7035      	strb	r5, [r6, #0]
d03c7330:	701d      	strb	r5, [r3, #0]
d03c7332:	4ba7      	ldr	r3, [pc, #668]	; (d03c75d0 <main+0x6a4>)
d03c7334:	701d      	strb	r5, [r3, #0]
d03c7336:	4ba7      	ldr	r3, [pc, #668]	; (d03c75d4 <main+0x6a8>)
d03c7338:	701d      	strb	r5, [r3, #0]
d03c733a:	f002 fb0d 	bl	d03c9958 <memset>
d03c733e:	4ba6      	ldr	r3, [pc, #664]	; (d03c75d8 <main+0x6ac>)
d03c7340:	f44f 72c0 	mov.w	r2, #384	; 0x180
d03c7344:	4629      	mov	r1, r5
d03c7346:	48a5      	ldr	r0, [pc, #660]	; (d03c75dc <main+0x6b0>)
d03c7348:	701d      	strb	r5, [r3, #0]
d03c734a:	4ba5      	ldr	r3, [pc, #660]	; (d03c75e0 <main+0x6b4>)
d03c734c:	701d      	strb	r5, [r3, #0]
d03c734e:	4ba5      	ldr	r3, [pc, #660]	; (d03c75e4 <main+0x6b8>)
d03c7350:	701d      	strb	r5, [r3, #0]
d03c7352:	4ba5      	ldr	r3, [pc, #660]	; (d03c75e8 <main+0x6bc>)
d03c7354:	701d      	strb	r5, [r3, #0]
d03c7356:	4ba5      	ldr	r3, [pc, #660]	; (d03c75ec <main+0x6c0>)
d03c7358:	701d      	strb	r5, [r3, #0]
d03c735a:	4ba5      	ldr	r3, [pc, #660]	; (d03c75f0 <main+0x6c4>)
d03c735c:	f883 8000 	strb.w	r8, [r3]
d03c7360:	4ba4      	ldr	r3, [pc, #656]	; (d03c75f4 <main+0x6c8>)
d03c7362:	701d      	strb	r5, [r3, #0]
d03c7364:	4ba4      	ldr	r3, [pc, #656]	; (d03c75f8 <main+0x6cc>)
d03c7366:	601d      	str	r5, [r3, #0]
d03c7368:	f002 faf6 	bl	d03c9958 <memset>
d03c736c:	6838      	ldr	r0, [r7, #0]
d03c736e:	9610      	str	r6, [sp, #64]	; 0x40
d03c7370:	b120      	cbz	r0, d03c737c <main+0x450>
d03c7372:	f44f 4240 	mov.w	r2, #49152	; 0xc000
d03c7376:	4629      	mov	r1, r5
d03c7378:	f002 faee 	bl	d03c9958 <memset>
d03c737c:	2400      	movs	r4, #0
d03c737e:	4b9f      	ldr	r3, [pc, #636]	; (d03c75fc <main+0x6d0>)
d03c7380:	2501      	movs	r5, #1
d03c7382:	2278      	movs	r2, #120	; 0x78
d03c7384:	601c      	str	r4, [r3, #0]
d03c7386:	4b9e      	ldr	r3, [pc, #632]	; (d03c7600 <main+0x6d4>)
d03c7388:	601c      	str	r4, [r3, #0]
d03c738a:	4b9e      	ldr	r3, [pc, #632]	; (d03c7604 <main+0x6d8>)
d03c738c:	601c      	str	r4, [r3, #0]
d03c738e:	4b9e      	ldr	r3, [pc, #632]	; (d03c7608 <main+0x6dc>)
d03c7390:	601c      	str	r4, [r3, #0]
d03c7392:	4b9e      	ldr	r3, [pc, #632]	; (d03c760c <main+0x6e0>)
d03c7394:	601c      	str	r4, [r3, #0]
d03c7396:	4b9e      	ldr	r3, [pc, #632]	; (d03c7610 <main+0x6e4>)
d03c7398:	601c      	str	r4, [r3, #0]
d03c739a:	4b9e      	ldr	r3, [pc, #632]	; (d03c7614 <main+0x6e8>)
d03c739c:	601c      	str	r4, [r3, #0]
d03c739e:	4b9e      	ldr	r3, [pc, #632]	; (d03c7618 <main+0x6ec>)
d03c73a0:	601c      	str	r4, [r3, #0]
d03c73a2:	4b9e      	ldr	r3, [pc, #632]	; (d03c761c <main+0x6f0>)
d03c73a4:	601c      	str	r4, [r3, #0]
d03c73a6:	4b9e      	ldr	r3, [pc, #632]	; (d03c7620 <main+0x6f4>)
d03c73a8:	601c      	str	r4, [r3, #0]
d03c73aa:	4b9e      	ldr	r3, [pc, #632]	; (d03c7624 <main+0x6f8>)
d03c73ac:	601c      	str	r4, [r3, #0]
d03c73ae:	4b9e      	ldr	r3, [pc, #632]	; (d03c7628 <main+0x6fc>)
d03c73b0:	601c      	str	r4, [r3, #0]
d03c73b2:	4b9e      	ldr	r3, [pc, #632]	; (d03c762c <main+0x700>)
d03c73b4:	601c      	str	r4, [r3, #0]
d03c73b6:	4b9e      	ldr	r3, [pc, #632]	; (d03c7630 <main+0x704>)
d03c73b8:	601c      	str	r4, [r3, #0]
d03c73ba:	4b9e      	ldr	r3, [pc, #632]	; (d03c7634 <main+0x708>)
d03c73bc:	701d      	strb	r5, [r3, #0]
d03c73be:	4b9e      	ldr	r3, [pc, #632]	; (d03c7638 <main+0x70c>)
d03c73c0:	701c      	strb	r4, [r3, #0]
d03c73c2:	4b9e      	ldr	r3, [pc, #632]	; (d03c763c <main+0x710>)
d03c73c4:	801a      	strh	r2, [r3, #0]
d03c73c6:	2202      	movs	r2, #2
d03c73c8:	4b9d      	ldr	r3, [pc, #628]	; (d03c7640 <main+0x714>)
d03c73ca:	701c      	strb	r4, [r3, #0]
d03c73cc:	4b9d      	ldr	r3, [pc, #628]	; (d03c7644 <main+0x718>)
d03c73ce:	701c      	strb	r4, [r3, #0]
d03c73d0:	4b9d      	ldr	r3, [pc, #628]	; (d03c7648 <main+0x71c>)
d03c73d2:	701c      	strb	r4, [r3, #0]
d03c73d4:	4b9d      	ldr	r3, [pc, #628]	; (d03c764c <main+0x720>)
d03c73d6:	701c      	strb	r4, [r3, #0]
d03c73d8:	4b9d      	ldr	r3, [pc, #628]	; (d03c7650 <main+0x724>)
d03c73da:	701c      	strb	r4, [r3, #0]
d03c73dc:	4b9d      	ldr	r3, [pc, #628]	; (d03c7654 <main+0x728>)
d03c73de:	801c      	strh	r4, [r3, #0]
d03c73e0:	4b9d      	ldr	r3, [pc, #628]	; (d03c7658 <main+0x72c>)
d03c73e2:	701c      	strb	r4, [r3, #0]
d03c73e4:	4b9d      	ldr	r3, [pc, #628]	; (d03c765c <main+0x730>)
d03c73e6:	701c      	strb	r4, [r3, #0]
d03c73e8:	4b9d      	ldr	r3, [pc, #628]	; (d03c7660 <main+0x734>)
d03c73ea:	701d      	strb	r5, [r3, #0]
d03c73ec:	4b9d      	ldr	r3, [pc, #628]	; (d03c7664 <main+0x738>)
d03c73ee:	701a      	strb	r2, [r3, #0]
d03c73f0:	4b9d      	ldr	r3, [pc, #628]	; (d03c7668 <main+0x73c>)
d03c73f2:	701c      	strb	r4, [r3, #0]
d03c73f4:	4b9d      	ldr	r3, [pc, #628]	; (d03c766c <main+0x740>)
d03c73f6:	701c      	strb	r4, [r3, #0]
d03c73f8:	4b9d      	ldr	r3, [pc, #628]	; (d03c7670 <main+0x744>)
d03c73fa:	801c      	strh	r4, [r3, #0]
d03c73fc:	4b9d      	ldr	r3, [pc, #628]	; (d03c7674 <main+0x748>)
d03c73fe:	601c      	str	r4, [r3, #0]
d03c7400:	f7f9 ff3c 	bl	d03c127c <seq_clear_note_storage>
d03c7404:	4b9c      	ldr	r3, [pc, #624]	; (d03c7678 <main+0x74c>)
d03c7406:	4621      	mov	r1, r4
d03c7408:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c740c:	489b      	ldr	r0, [pc, #620]	; (d03c767c <main+0x750>)
d03c740e:	701d      	strb	r5, [r3, #0]
d03c7410:	4b9b      	ldr	r3, [pc, #620]	; (d03c7680 <main+0x754>)
d03c7412:	701c      	strb	r4, [r3, #0]
d03c7414:	4b9b      	ldr	r3, [pc, #620]	; (d03c7684 <main+0x758>)
d03c7416:	601c      	str	r4, [r3, #0]
d03c7418:	f002 fa9e 	bl	d03c9958 <memset>
d03c741c:	f89a 3020 	ldrb.w	r3, [sl, #32]
d03c7420:	f89a 2021 	ldrb.w	r2, [sl, #33]	; 0x21
d03c7424:	4898      	ldr	r0, [pc, #608]	; (d03c7688 <main+0x75c>)
d03c7426:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c742a:	f89a 2022 	ldrb.w	r2, [sl, #34]	; 0x22
d03c742e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7432:	f89a 2023 	ldrb.w	r2, [sl, #35]	; 0x23
d03c7436:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c743a:	681b      	ldr	r3, [r3, #0]
d03c743c:	4798      	blx	r3
d03c743e:	f89a 3020 	ldrb.w	r3, [sl, #32]
d03c7442:	f89a 2021 	ldrb.w	r2, [sl, #33]	; 0x21
d03c7446:	4891      	ldr	r0, [pc, #580]	; (d03c768c <main+0x760>)
d03c7448:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c744c:	f89a 2022 	ldrb.w	r2, [sl, #34]	; 0x22
d03c7450:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7454:	f89a 2023 	ldrb.w	r2, [sl, #35]	; 0x23
d03c7458:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c745c:	685b      	ldr	r3, [r3, #4]
d03c745e:	4798      	blx	r3
d03c7460:	f7fd fbbe 	bl	d03c4be0 <ui_redraw_backbuffer>
d03c7464:	f8df b228 	ldr.w	fp, [pc, #552]	; d03c7690 <main+0x764>
d03c7468:	f7fb fd60 	bl	d03c2f2c <midi_process_events>
d03c746c:	f7fa f956 	bl	d03c171c <midi_process_ui_requests>
d03c7470:	f7fa ffb6 	bl	d03c23e0 <seq_update_transport>
d03c7474:	f89b 300c 	ldrb.w	r3, [fp, #12]
d03c7478:	f89b 200d 	ldrb.w	r2, [fp, #13]
d03c747c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c7480:	f89b 200e 	ldrb.w	r2, [fp, #14]
d03c7484:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7488:	f89b 200f 	ldrb.w	r2, [fp, #15]
d03c748c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c7490:	681b      	ldr	r3, [r3, #0]
d03c7492:	68db      	ldr	r3, [r3, #12]
d03c7494:	4798      	blx	r3
d03c7496:	f7fb fd49 	bl	d03c2f2c <midi_process_events>
d03c749a:	f7fa f93f 	bl	d03c171c <midi_process_ui_requests>
d03c749e:	f7fa ff9f 	bl	d03c23e0 <seq_update_transport>
d03c74a2:	4b34      	ldr	r3, [pc, #208]	; (d03c7574 <main+0x648>)
d03c74a4:	781b      	ldrb	r3, [r3, #0]
d03c74a6:	930e      	str	r3, [sp, #56]	; 0x38
d03c74a8:	4b35      	ldr	r3, [pc, #212]	; (d03c7580 <main+0x654>)
d03c74aa:	f9b3 7000 	ldrsh.w	r7, [r3]
d03c74ae:	4b35      	ldr	r3, [pc, #212]	; (d03c7584 <main+0x658>)
d03c74b0:	f8ad 7048 	strh.w	r7, [sp, #72]	; 0x48
d03c74b4:	463e      	mov	r6, r7
d03c74b6:	f9b3 5000 	ldrsh.w	r5, [r3]
d03c74ba:	2300      	movs	r3, #0
d03c74bc:	f8ad 704c 	strh.w	r7, [sp, #76]	; 0x4c
d03c74c0:	9314      	str	r3, [sp, #80]	; 0x50
d03c74c2:	462c      	mov	r4, r5
d03c74c4:	9318      	str	r3, [sp, #96]	; 0x60
d03c74c6:	f89b 3018 	ldrb.w	r3, [fp, #24]
d03c74ca:	f89b 2019 	ldrb.w	r2, [fp, #25]
d03c74ce:	f8ad 504a 	strh.w	r5, [sp, #74]	; 0x4a
d03c74d2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c74d6:	f89b 201a 	ldrb.w	r2, [fp, #26]
d03c74da:	f8ad 504e 	strh.w	r5, [sp, #78]	; 0x4e
d03c74de:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c74e2:	f89b 201b 	ldrb.w	r2, [fp, #27]
d03c74e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c74ea:	685b      	ldr	r3, [r3, #4]
d03c74ec:	4798      	blx	r3
d03c74ee:	f89b 3018 	ldrb.w	r3, [fp, #24]
d03c74f2:	f89b 2019 	ldrb.w	r2, [fp, #25]
d03c74f6:	4680      	mov	r8, r0
d03c74f8:	f10d 014a 	add.w	r1, sp, #74	; 0x4a
d03c74fc:	a812      	add	r0, sp, #72	; 0x48
d03c74fe:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c7502:	f89b 201a 	ldrb.w	r2, [fp, #26]
d03c7506:	e0c5      	b.n	d03c7694 <main+0x768>
d03c7508:	d03ccd2d 	.word	0xd03ccd2d
d03c750c:	d03cd0a8 	.word	0xd03cd0a8
d03c7510:	d03cc26b 	.word	0xd03cc26b
d03c7514:	d03ccd04 	.word	0xd03ccd04
d03c7518:	d03ccd14 	.word	0xd03ccd14
d03c751c:	d03cccf4 	.word	0xd03cccf4
d03c7520:	d03ccf2e 	.word	0xd03ccf2e
d03c7524:	d03cccd4 	.word	0xd03cccd4
d03c7528:	d03ccd2a 	.word	0xd03ccd2a
d03c752c:	d03ccd28 	.word	0xd03ccd28
d03c7530:	d03ccd2c 	.word	0xd03ccd2c
d03c7534:	d03cdab9 	.word	0xd03cdab9
d03c7538:	d03ccf2d 	.word	0xd03ccf2d
d03c753c:	d03cd0dc 	.word	0xd03cd0dc
d03c7540:	d03cd0d8 	.word	0xd03cd0d8
d03c7544:	d03ccf44 	.word	0xd03ccf44
d03c7548:	d03ccf35 	.word	0xd03ccf35
d03c754c:	d03ccf31 	.word	0xd03ccf31
d03c7550:	d03ccf34 	.word	0xd03ccf34
d03c7554:	d03ccf30 	.word	0xd03ccf30
d03c7558:	d03cf36a 	.word	0xd03cf36a
d03c755c:	d03cf344 	.word	0xd03cf344
d03c7560:	d03cf2d0 	.word	0xd03cf2d0
d03c7564:	d03cd9d2 	.word	0xd03cd9d2
d03c7568:	d03cf531 	.word	0xd03cf531
d03c756c:	d03cda17 	.word	0xd03cda17
d03c7570:	d03ce2bc 	.word	0xd03ce2bc
d03c7574:	d03ce2bb 	.word	0xd03ce2bb
d03c7578:	d03cf331 	.word	0xd03cf331
d03c757c:	d03cf332 	.word	0xd03cf332
d03c7580:	d03cf334 	.word	0xd03cf334
d03c7584:	d03cf336 	.word	0xd03cf336
d03c7588:	d03cf378 	.word	0xd03cf378
d03c758c:	d03cd0e4 	.word	0xd03cd0e4
d03c7590:	d03cf3a0 	.word	0xd03cf3a0
d03c7594:	d03cd0e0 	.word	0xd03cd0e0
d03c7598:	d03cf52c 	.word	0xd03cf52c
d03c759c:	d03cf52d 	.word	0xd03cf52d
d03c75a0:	d03cf52f 	.word	0xd03cf52f
d03c75a4:	d03cf52e 	.word	0xd03cf52e
d03c75a8:	d03cf530 	.word	0xd03cf530
d03c75ac:	d03cf523 	.word	0xd03cf523
d03c75b0:	d03cf528 	.word	0xd03cf528
d03c75b4:	d03cf529 	.word	0xd03cf529
d03c75b8:	d03cf522 	.word	0xd03cf522
d03c75bc:	d03cf52b 	.word	0xd03cf52b
d03c75c0:	d03cf52a 	.word	0xd03cf52a
d03c75c4:	d03cd9d3 	.word	0xd03cd9d3
d03c75c8:	d03cd0e8 	.word	0xd03cd0e8
d03c75cc:	d03cd9d5 	.word	0xd03cd9d5
d03c75d0:	d03cda16 	.word	0xd03cda16
d03c75d4:	d03cd9d4 	.word	0xd03cd9d4
d03c75d8:	d03cda18 	.word	0xd03cda18
d03c75dc:	d03cf3a2 	.word	0xd03cf3a2
d03c75e0:	d03ce2b9 	.word	0xd03ce2b9
d03c75e4:	d03ce2ba 	.word	0xd03ce2ba
d03c75e8:	d03cf34a 	.word	0xd03cf34a
d03c75ec:	d03cf348 	.word	0xd03cf348
d03c75f0:	d03cf349 	.word	0xd03cf349
d03c75f4:	d03cf2d1 	.word	0xd03cf2d1
d03c75f8:	d03cf524 	.word	0xd03cf524
d03c75fc:	d03ccf3c 	.word	0xd03ccf3c
d03c7600:	d03ccf38 	.word	0xd03ccf38
d03c7604:	d03ccd24 	.word	0xd03ccd24
d03c7608:	d03ccf40 	.word	0xd03ccf40
d03c760c:	d03ccf48 	.word	0xd03ccf48
d03c7610:	d03ccf50 	.word	0xd03ccf50
d03c7614:	d03ccf64 	.word	0xd03ccf64
d03c7618:	d03cd0a0 	.word	0xd03cd0a0
d03c761c:	d03ccf74 	.word	0xd03ccf74
d03c7620:	d03ccf6c 	.word	0xd03ccf6c
d03c7624:	d03ccf7c 	.word	0xd03ccf7c
d03c7628:	d03cd098 	.word	0xd03cd098
d03c762c:	d03cd094 	.word	0xd03cd094
d03c7630:	d03cd090 	.word	0xd03cd090
d03c7634:	d03ccf80 	.word	0xd03ccf80
d03c7638:	d03cd08c 	.word	0xd03cd08c
d03c763c:	d03ccf4c 	.word	0xd03ccf4c
d03c7640:	d03cd09c 	.word	0xd03cd09c
d03c7644:	d03cd0a5 	.word	0xd03cd0a5
d03c7648:	d03cd0a4 	.word	0xd03cd0a4
d03c764c:	d03ccf54 	.word	0xd03ccf54
d03c7650:	d03ccf58 	.word	0xd03ccf58
d03c7654:	d03ccf56 	.word	0xd03ccf56
d03c7658:	d03ccf69 	.word	0xd03ccf69
d03c765c:	d03ccf68 	.word	0xd03ccf68
d03c7660:	d03cd0a6 	.word	0xd03cd0a6
d03c7664:	d03cd0a7 	.word	0xd03cd0a7
d03c7668:	d03ccf6a 	.word	0xd03ccf6a
d03c766c:	d03ccf62 	.word	0xd03ccf62
d03c7670:	d03ccf60 	.word	0xd03ccf60
d03c7674:	d03ccf5c 	.word	0xd03ccf5c
d03c7678:	d03cf36b 	.word	0xd03cf36b
d03c767c:	d03ccf8c 	.word	0xd03ccf8c
d03c7680:	d03cf370 	.word	0xd03cf370
d03c7684:	d03cf36c 	.word	0xd03cf36c
d03c7688:	d03c2265 	.word	0xd03c2265
d03c768c:	d03c2d15 	.word	0xd03c2d15
d03c7690:	2001f000 	.word	0x2001f000
d03c7694:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7698:	f89b 201b 	ldrb.w	r2, [fp, #27]
d03c769c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c76a0:	689b      	ldr	r3, [r3, #8]
d03c76a2:	4798      	blx	r3
d03c76a4:	2800      	cmp	r0, #0
d03c76a6:	f000 8088 	beq.w	d03c77ba <main+0x88e>
d03c76aa:	f04f 0901 	mov.w	r9, #1
d03c76ae:	f9bd 7048 	ldrsh.w	r7, [sp, #72]	; 0x48
d03c76b2:	f9bd 504a 	ldrsh.w	r5, [sp, #74]	; 0x4a
d03c76b6:	4648      	mov	r0, r9
d03c76b8:	f240 13df 	movw	r3, #479	; 0x1df
d03c76bc:	ea27 74e7 	bic.w	r4, r7, r7, asr #31
d03c76c0:	ea25 71e5 	bic.w	r1, r5, r5, asr #31
d03c76c4:	429c      	cmp	r4, r3
d03c76c6:	bfa8      	it	ge
d03c76c8:	461c      	movge	r4, r3
d03c76ca:	f240 133f 	movw	r3, #319	; 0x13f
d03c76ce:	4299      	cmp	r1, r3
d03c76d0:	bfa8      	it	ge
d03c76d2:	4619      	movge	r1, r3
d03c76d4:	2800      	cmp	r0, #0
d03c76d6:	f000 80b6 	beq.w	d03c7846 <main+0x91a>
d03c76da:	4bb1      	ldr	r3, [pc, #708]	; (d03c79a0 <main+0xa74>)
d03c76dc:	781a      	ldrb	r2, [r3, #0]
d03c76de:	fab2 f282 	clz	r2, r2
d03c76e2:	0952      	lsrs	r2, r2, #5
d03c76e4:	f019 0801 	ands.w	r8, r9, #1
d03c76e8:	b2d3      	uxtb	r3, r2
d03c76ea:	4aae      	ldr	r2, [pc, #696]	; (d03c79a4 <main+0xa78>)
d03c76ec:	9305      	str	r3, [sp, #20]
d03c76ee:	bf0c      	ite	eq
d03c76f0:	4646      	moveq	r6, r8
d03c76f2:	4bac      	ldrne	r3, [pc, #688]	; (d03c79a4 <main+0xa78>)
d03c76f4:	f8df e2a8 	ldr.w	lr, [pc, #680]	; d03c79a0 <main+0xa74>
d03c76f8:	bf18      	it	ne
d03c76fa:	781e      	ldrbne	r6, [r3, #0]
d03c76fc:	f88e 0000 	strb.w	r0, [lr]
d03c7700:	bf18      	it	ne
d03c7702:	f006 0601 	andne.w	r6, r6, #1
d03c7706:	f8df e2f0 	ldr.w	lr, [pc, #752]	; d03c79f8 <main+0xacc>
d03c770a:	f8ad 4054 	strh.w	r4, [sp, #84]	; 0x54
d03c770e:	bf18      	it	ne
d03c7710:	f1c6 0601 	rsbne	r6, r6, #1
d03c7714:	f019 0302 	ands.w	r3, r9, #2
d03c7718:	f8ae 1000 	strh.w	r1, [lr]
d03c771c:	bf18      	it	ne
d03c771e:	4ba1      	ldrne	r3, [pc, #644]	; (d03c79a4 <main+0xa78>)
d03c7720:	fa5f fc86 	uxtb.w	ip, r6
d03c7724:	f8ad 1056 	strh.w	r1, [sp, #86]	; 0x56
d03c7728:	bf18      	it	ne
d03c772a:	781b      	ldrbne	r3, [r3, #0]
d03c772c:	f882 9000 	strb.w	r9, [r2]
d03c7730:	bf18      	it	ne
d03c7732:	f083 0302 	eorne.w	r3, r3, #2
d03c7736:	4a9c      	ldr	r2, [pc, #624]	; (d03c79a8 <main+0xa7c>)
d03c7738:	f88d 0058 	strb.w	r0, [sp, #88]	; 0x58
d03c773c:	bf18      	it	ne
d03c773e:	f3c3 0340 	ubfxne	r3, r3, #1, #1
d03c7742:	8014      	strh	r4, [r2, #0]
d03c7744:	9a05      	ldr	r2, [sp, #20]
d03c7746:	f88d 905a 	strb.w	r9, [sp, #90]	; 0x5a
d03c774a:	f88d 2059 	strb.w	r2, [sp, #89]	; 0x59
d03c774e:	f88d c05b 	strb.w	ip, [sp, #91]	; 0x5b
d03c7752:	f88d 305c 	strb.w	r3, [sp, #92]	; 0x5c
d03c7756:	f1b8 0f00 	cmp.w	r8, #0
d03c775a:	d076      	beq.n	d03c784a <main+0x91e>
d03c775c:	f1c6 0201 	rsb	r2, r6, #1
d03c7760:	f009 0903 	and.w	r9, r9, #3
d03c7764:	f1b9 0f03 	cmp.w	r9, #3
d03c7768:	d171      	bne.n	d03c784e <main+0x922>
d03c776a:	2300      	movs	r3, #0
d03c776c:	4a8f      	ldr	r2, [pc, #572]	; (d03c79ac <main+0xa80>)
d03c776e:	7013      	strb	r3, [r2, #0]
d03c7770:	2201      	movs	r2, #1
d03c7772:	4b8f      	ldr	r3, [pc, #572]	; (d03c79b0 <main+0xa84>)
d03c7774:	701a      	strb	r2, [r3, #0]
d03c7776:	4d8f      	ldr	r5, [pc, #572]	; (d03c79b4 <main+0xa88>)
d03c7778:	4f8f      	ldr	r7, [pc, #572]	; (d03c79b8 <main+0xa8c>)
d03c777a:	782b      	ldrb	r3, [r5, #0]
d03c777c:	783c      	ldrb	r4, [r7, #0]
d03c777e:	42a3      	cmp	r3, r4
d03c7780:	f000 8766 	beq.w	d03c8650 <main+0x1724>
d03c7784:	4b8d      	ldr	r3, [pc, #564]	; (d03c79bc <main+0xa90>)
d03c7786:	2204      	movs	r2, #4
d03c7788:	a814      	add	r0, sp, #80	; 0x50
d03c778a:	461e      	mov	r6, r3
d03c778c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
d03c7790:	f002 f8d4 	bl	d03c993c <memcpy>
d03c7794:	eb06 0384 	add.w	r3, r6, r4, lsl #2
d03c7798:	f816 1024 	ldrb.w	r1, [r6, r4, lsl #2]
d03c779c:	3401      	adds	r4, #1
d03c779e:	2901      	cmp	r1, #1
d03c77a0:	8858      	ldrh	r0, [r3, #2]
d03c77a2:	f004 040f 	and.w	r4, r4, #15
d03c77a6:	703c      	strb	r4, [r7, #0]
d03c77a8:	d1e6      	bne.n	d03c7778 <main+0x84c>
d03c77aa:	1e43      	subs	r3, r0, #1
d03c77ac:	b29a      	uxth	r2, r3
d03c77ae:	2a05      	cmp	r2, #5
d03c77b0:	f200 81b1 	bhi.w	d03c7b16 <main+0xbea>
d03c77b4:	4a82      	ldr	r2, [pc, #520]	; (d03c79c0 <main+0xa94>)
d03c77b6:	7013      	strb	r3, [r2, #0]
d03c77b8:	e7dd      	b.n	d03c7776 <main+0x84a>
d03c77ba:	f1b8 0f00 	cmp.w	r8, #0
d03c77be:	d140      	bne.n	d03c7842 <main+0x916>
d03c77c0:	f89b 3000 	ldrb.w	r3, [fp]
d03c77c4:	f10d 014e 	add.w	r1, sp, #78	; 0x4e
d03c77c8:	f89b 2001 	ldrb.w	r2, [fp, #1]
d03c77cc:	a813      	add	r0, sp, #76	; 0x4c
d03c77ce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c77d2:	f89b 2002 	ldrb.w	r2, [fp, #2]
d03c77d6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c77da:	f89b 2003 	ldrb.w	r2, [fp, #3]
d03c77de:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c77e2:	691b      	ldr	r3, [r3, #16]
d03c77e4:	4798      	blx	r3
d03c77e6:	f89b 3000 	ldrb.w	r3, [fp]
d03c77ea:	f89b 2001 	ldrb.w	r2, [fp, #1]
d03c77ee:	4681      	mov	r9, r0
d03c77f0:	a918      	add	r1, sp, #96	; 0x60
d03c77f2:	a814      	add	r0, sp, #80	; 0x50
d03c77f4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c77f8:	f89b 2002 	ldrb.w	r2, [fp, #2]
d03c77fc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7800:	f89b 2003 	ldrb.w	r2, [fp, #3]
d03c7804:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c7808:	699b      	ldr	r3, [r3, #24]
d03c780a:	4798      	blx	r3
d03c780c:	f89b 3000 	ldrb.w	r3, [fp]
d03c7810:	f89b 2001 	ldrb.w	r2, [fp, #1]
d03c7814:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c7818:	f89b 2002 	ldrb.w	r2, [fp, #2]
d03c781c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7820:	f89b 2003 	ldrb.w	r2, [fp, #3]
d03c7824:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c7828:	69db      	ldr	r3, [r3, #28]
d03c782a:	4798      	blx	r3
d03c782c:	9f14      	ldr	r7, [sp, #80]	; 0x50
d03c782e:	9d18      	ldr	r5, [sp, #96]	; 0x60
d03c7830:	f1b9 0000 	subs.w	r0, r9, #0
d03c7834:	4437      	add	r7, r6
d03c7836:	4425      	add	r5, r4
d03c7838:	bf18      	it	ne
d03c783a:	2001      	movne	r0, #1
d03c783c:	b23f      	sxth	r7, r7
d03c783e:	b22d      	sxth	r5, r5
d03c7840:	e73a      	b.n	d03c76b8 <main+0x78c>
d03c7842:	4681      	mov	r9, r0
d03c7844:	e738      	b.n	d03c76b8 <main+0x78c>
d03c7846:	4602      	mov	r2, r0
d03c7848:	e74c      	b.n	d03c76e4 <main+0x7b8>
d03c784a:	4642      	mov	r2, r8
d03c784c:	e788      	b.n	d03c7760 <main+0x834>
d03c784e:	f8df 91ac 	ldr.w	r9, [pc, #428]	; d03c79fc <main+0xad0>
d03c7852:	b153      	cbz	r3, d03c786a <main+0x93e>
d03c7854:	4b55      	ldr	r3, [pc, #340]	; (d03c79ac <main+0xa80>)
d03c7856:	2400      	movs	r4, #0
d03c7858:	701c      	strb	r4, [r3, #0]
d03c785a:	f7fa f8fd 	bl	d03c1a58 <sid_midi_all_notes_off>
d03c785e:	4859      	ldr	r0, [pc, #356]	; (d03c79c4 <main+0xa98>)
d03c7860:	f7f9 fdc4 	bl	d03c13ec <ui_set_status>
d03c7864:	f889 4000 	strb.w	r4, [r9]
d03c7868:	e785      	b.n	d03c7776 <main+0x84a>
d03c786a:	f899 0000 	ldrb.w	r0, [r9]
d03c786e:	b328      	cbz	r0, d03c78bc <main+0x990>
d03c7870:	4a4e      	ldr	r2, [pc, #312]	; (d03c79ac <main+0xa80>)
d03c7872:	7013      	strb	r3, [r2, #0]
d03c7874:	4a54      	ldr	r2, [pc, #336]	; (d03c79c8 <main+0xa9c>)
d03c7876:	7013      	strb	r3, [r2, #0]
d03c7878:	4a54      	ldr	r2, [pc, #336]	; (d03c79cc <main+0xaa0>)
d03c787a:	7013      	strb	r3, [r2, #0]
d03c787c:	2e00      	cmp	r6, #0
d03c787e:	f43f af7a 	beq.w	d03c7776 <main+0x84a>
d03c7882:	4620      	mov	r0, r4
d03c7884:	f7fb fadc 	bl	d03c2e40 <ui_button_hit>
d03c7888:	b138      	cbz	r0, d03c789a <main+0x96e>
d03c788a:	8800      	ldrh	r0, [r0, #0]
d03c788c:	f1a0 0326 	sub.w	r3, r0, #38	; 0x26
d03c7890:	2b01      	cmp	r3, #1
d03c7892:	d802      	bhi.n	d03c789a <main+0x96e>
d03c7894:	f7fb fa24 	bl	d03c2ce0 <ui_event_push.constprop.0>
d03c7898:	e76d      	b.n	d03c7776 <main+0x84a>
d03c789a:	3c60      	subs	r4, #96	; 0x60
d03c789c:	b2a4      	uxth	r4, r4
d03c789e:	f5b4 7f90 	cmp.w	r4, #288	; 0x120
d03c78a2:	d204      	bcs.n	d03c78ae <main+0x982>
d03c78a4:	3970      	subs	r1, #112	; 0x70
d03c78a6:	b289      	uxth	r1, r1
d03c78a8:	296b      	cmp	r1, #107	; 0x6b
d03c78aa:	f67f af64 	bls.w	d03c7776 <main+0x84a>
d03c78ae:	2300      	movs	r3, #0
d03c78b0:	4847      	ldr	r0, [pc, #284]	; (d03c79d0 <main+0xaa4>)
d03c78b2:	f889 3000 	strb.w	r3, [r9]
d03c78b6:	f7f9 fd99 	bl	d03c13ec <ui_set_status>
d03c78ba:	e75c      	b.n	d03c7776 <main+0x84a>
d03c78bc:	4845      	ldr	r0, [pc, #276]	; (d03c79d4 <main+0xaa8>)
d03c78be:	fa5f fc82 	uxtb.w	ip, r2
d03c78c2:	7800      	ldrb	r0, [r0, #0]
d03c78c4:	b378      	cbz	r0, d03c7926 <main+0x9fa>
d03c78c6:	4839      	ldr	r0, [pc, #228]	; (d03c79ac <main+0xa80>)
d03c78c8:	7003      	strb	r3, [r0, #0]
d03c78ca:	483f      	ldr	r0, [pc, #252]	; (d03c79c8 <main+0xa9c>)
d03c78cc:	f880 c000 	strb.w	ip, [r0]
d03c78d0:	483e      	ldr	r0, [pc, #248]	; (d03c79cc <main+0xaa0>)
d03c78d2:	b1ee      	cbz	r6, d03c7910 <main+0x9e4>
d03c78d4:	7003      	strb	r3, [r0, #0]
d03c78d6:	4620      	mov	r0, r4
d03c78d8:	f7fb fab2 	bl	d03c2e40 <ui_button_hit>
d03c78dc:	2800      	cmp	r0, #0
d03c78de:	f43f af4a 	beq.w	d03c7776 <main+0x84a>
d03c78e2:	8803      	ldrh	r3, [r0, #0]
d03c78e4:	f1a3 02b4 	sub.w	r2, r3, #180	; 0xb4
d03c78e8:	2a06      	cmp	r2, #6
d03c78ea:	d908      	bls.n	d03c78fe <main+0x9d2>
d03c78ec:	f1a3 02dc 	sub.w	r2, r3, #220	; 0xdc
d03c78f0:	2a27      	cmp	r2, #39	; 0x27
d03c78f2:	d904      	bls.n	d03c78fe <main+0x9d2>
d03c78f4:	f1a3 0228 	sub.w	r2, r3, #40	; 0x28
d03c78f8:	2a12      	cmp	r2, #18
d03c78fa:	f63f af3c 	bhi.w	d03c7776 <main+0x84a>
d03c78fe:	b91e      	cbnz	r6, d03c7908 <main+0x9dc>
d03c7900:	7a82      	ldrb	r2, [r0, #10]
d03c7902:	2a00      	cmp	r2, #0
d03c7904:	f43f af37 	beq.w	d03c7776 <main+0x84a>
d03c7908:	4618      	mov	r0, r3
d03c790a:	f7fb f9e9 	bl	d03c2ce0 <ui_event_push.constprop.0>
d03c790e:	e732      	b.n	d03c7776 <main+0x84a>
d03c7910:	b12a      	cbz	r2, d03c791e <main+0x9f2>
d03c7912:	7803      	ldrb	r3, [r0, #0]
d03c7914:	2b0e      	cmp	r3, #14
d03c7916:	d8de      	bhi.n	d03c78d6 <main+0x9aa>
d03c7918:	3301      	adds	r3, #1
d03c791a:	7003      	strb	r3, [r0, #0]
d03c791c:	e72b      	b.n	d03c7776 <main+0x84a>
d03c791e:	4b2b      	ldr	r3, [pc, #172]	; (d03c79cc <main+0xaa0>)
d03c7920:	2200      	movs	r2, #0
d03c7922:	701a      	strb	r2, [r3, #0]
d03c7924:	e727      	b.n	d03c7776 <main+0x84a>
d03c7926:	4826      	ldr	r0, [pc, #152]	; (d03c79c0 <main+0xa94>)
d03c7928:	f890 9000 	ldrb.w	r9, [r0]
d03c792c:	f1b9 0f05 	cmp.w	r9, #5
d03c7930:	d166      	bne.n	d03c7a00 <main+0xad4>
d03c7932:	b326      	cbz	r6, d03c797e <main+0xa52>
d03c7934:	f1a4 000a 	sub.w	r0, r4, #10
d03c7938:	b280      	uxth	r0, r0
d03c793a:	f5b0 7fe6 	cmp.w	r0, #460	; 0x1cc
d03c793e:	d21e      	bcs.n	d03c797e <main+0xa52>
d03c7940:	f1a1 0040 	sub.w	r0, r1, #64	; 0x40
d03c7944:	b280      	uxth	r0, r0
d03c7946:	28bb      	cmp	r0, #187	; 0xbb
d03c7948:	d819      	bhi.n	d03c797e <main+0xa52>
d03c794a:	2201      	movs	r2, #1
d03c794c:	4917      	ldr	r1, [pc, #92]	; (d03c79ac <main+0xa80>)
d03c794e:	700a      	strb	r2, [r1, #0]
d03c7950:	4a21      	ldr	r2, [pc, #132]	; (d03c79d8 <main+0xaac>)
d03c7952:	8014      	strh	r4, [r2, #0]
d03c7954:	4a21      	ldr	r2, [pc, #132]	; (d03c79dc <main+0xab0>)
d03c7956:	6811      	ldr	r1, [r2, #0]
d03c7958:	4a21      	ldr	r2, [pc, #132]	; (d03c79e0 <main+0xab4>)
d03c795a:	6011      	str	r1, [r2, #0]
d03c795c:	4a21      	ldr	r2, [pc, #132]	; (d03c79e4 <main+0xab8>)
d03c795e:	4922      	ldr	r1, [pc, #136]	; (d03c79e8 <main+0xabc>)
d03c7960:	7812      	ldrb	r2, [r2, #0]
d03c7962:	7809      	ldrb	r1, [r1, #0]
d03c7964:	430a      	orrs	r2, r1
d03c7966:	4921      	ldr	r1, [pc, #132]	; (d03c79ec <main+0xac0>)
d03c7968:	7809      	ldrb	r1, [r1, #0]
d03c796a:	430a      	orrs	r2, r1
d03c796c:	d002      	beq.n	d03c7974 <main+0xa48>
d03c796e:	4618      	mov	r0, r3
d03c7970:	f7fa f8a2 	bl	d03c1ab8 <seq_stop_transport>
d03c7974:	4b1e      	ldr	r3, [pc, #120]	; (d03c79f0 <main+0xac4>)
d03c7976:	681a      	ldr	r2, [r3, #0]
d03c7978:	4b1e      	ldr	r3, [pc, #120]	; (d03c79f4 <main+0xac8>)
d03c797a:	601a      	str	r2, [r3, #0]
d03c797c:	e6fb      	b.n	d03c7776 <main+0x84a>
d03c797e:	4b0b      	ldr	r3, [pc, #44]	; (d03c79ac <main+0xa80>)
d03c7980:	781b      	ldrb	r3, [r3, #0]
d03c7982:	2b00      	cmp	r3, #0
d03c7984:	d03e      	beq.n	d03c7a04 <main+0xad8>
d03c7986:	4620      	mov	r0, r4
d03c7988:	f1b8 0f00 	cmp.w	r8, #0
d03c798c:	d002      	beq.n	d03c7994 <main+0xa68>
d03c798e:	f7fb fc29 	bl	d03c31e4 <seq_set_position_from_drag>
d03c7992:	e6f0      	b.n	d03c7776 <main+0x84a>
d03c7994:	f7fb fc26 	bl	d03c31e4 <seq_set_position_from_drag>
d03c7998:	4b04      	ldr	r3, [pc, #16]	; (d03c79ac <main+0xa80>)
d03c799a:	f883 8000 	strb.w	r8, [r3]
d03c799e:	e6ea      	b.n	d03c7776 <main+0x84a>
d03c79a0:	d03ce2bc 	.word	0xd03ce2bc
d03c79a4:	d03ce2bb 	.word	0xd03ce2bb
d03c79a8:	d03cf334 	.word	0xd03cf334
d03c79ac:	d03ccf62 	.word	0xd03ccf62
d03c79b0:	d03cda17 	.word	0xd03cda17
d03c79b4:	d03cd9d5 	.word	0xd03cd9d5
d03c79b8:	d03cda16 	.word	0xd03cda16
d03c79bc:	d03cd9d6 	.word	0xd03cd9d6
d03c79c0:	d03cf2d0 	.word	0xd03cf2d0
d03c79c4:	d03cbdd9 	.word	0xd03cbdd9
d03c79c8:	d03cf331 	.word	0xd03cf331
d03c79cc:	d03cf332 	.word	0xd03cf332
d03c79d0:	d03cbdeb 	.word	0xd03cbdeb
d03c79d4:	d03cd9d4 	.word	0xd03cd9d4
d03c79d8:	d03ccf60 	.word	0xd03ccf60
d03c79dc:	d03cd0a0 	.word	0xd03cd0a0
d03c79e0:	d03ccf5c 	.word	0xd03ccf5c
d03c79e4:	d03cd09c 	.word	0xd03cd09c
d03c79e8:	d03cd0a5 	.word	0xd03cd0a5
d03c79ec:	d03ccf54 	.word	0xd03ccf54
d03c79f0:	d03ccf50 	.word	0xd03ccf50
d03c79f4:	d03ccf64 	.word	0xd03ccf64
d03c79f8:	d03cf336 	.word	0xd03cf336
d03c79fc:	d03cd9d3 	.word	0xd03cd9d3
d03c7a00:	489e      	ldr	r0, [pc, #632]	; (d03c7c7c <main+0xd50>)
d03c7a02:	7003      	strb	r3, [r0, #0]
d03c7a04:	4b9e      	ldr	r3, [pc, #632]	; (d03c7c80 <main+0xd54>)
d03c7a06:	489f      	ldr	r0, [pc, #636]	; (d03c7c84 <main+0xd58>)
d03c7a08:	f883 c000 	strb.w	ip, [r3]
d03c7a0c:	b186      	cbz	r6, d03c7a30 <main+0xb04>
d03c7a0e:	2300      	movs	r3, #0
d03c7a10:	7003      	strb	r3, [r0, #0]
d03c7a12:	4620      	mov	r0, r4
d03c7a14:	f7fb fa14 	bl	d03c2e40 <ui_button_hit>
d03c7a18:	4680      	mov	r8, r0
d03c7a1a:	b190      	cbz	r0, d03c7a42 <main+0xb16>
d03c7a1c:	b91e      	cbnz	r6, d03c7a26 <main+0xafa>
d03c7a1e:	7a83      	ldrb	r3, [r0, #10]
d03c7a20:	2b00      	cmp	r3, #0
d03c7a22:	f43f aea8 	beq.w	d03c7776 <main+0x84a>
d03c7a26:	f8b8 0000 	ldrh.w	r0, [r8]
d03c7a2a:	f7fb f959 	bl	d03c2ce0 <ui_event_push.constprop.0>
d03c7a2e:	e6a2      	b.n	d03c7776 <main+0x84a>
d03c7a30:	2a00      	cmp	r2, #0
d03c7a32:	f43f af74 	beq.w	d03c791e <main+0x9f2>
d03c7a36:	7803      	ldrb	r3, [r0, #0]
d03c7a38:	2b0e      	cmp	r3, #14
d03c7a3a:	d8ea      	bhi.n	d03c7a12 <main+0xae6>
d03c7a3c:	3301      	adds	r3, #1
d03c7a3e:	7003      	strb	r3, [r0, #0]
d03c7a40:	e699      	b.n	d03c7776 <main+0x84a>
d03c7a42:	2e00      	cmp	r6, #0
d03c7a44:	f43f ae97 	beq.w	d03c7776 <main+0x84a>
d03c7a48:	f1b9 0f01 	cmp.w	r9, #1
d03c7a4c:	d036      	beq.n	d03c7abc <main+0xb90>
d03c7a4e:	f1b9 0f04 	cmp.w	r9, #4
d03c7a52:	f47f ae90 	bne.w	d03c7776 <main+0x84a>
d03c7a56:	4b8c      	ldr	r3, [pc, #560]	; (d03c7c88 <main+0xd5c>)
d03c7a58:	781b      	ldrb	r3, [r3, #0]
d03c7a5a:	2b00      	cmp	r3, #0
d03c7a5c:	f43f ae8b 	beq.w	d03c7776 <main+0x84a>
d03c7a60:	4b8a      	ldr	r3, [pc, #552]	; (d03c7c8c <main+0xd60>)
d03c7a62:	4a8b      	ldr	r2, [pc, #556]	; (d03c7c90 <main+0xd64>)
d03c7a64:	781b      	ldrb	r3, [r3, #0]
d03c7a66:	5cd3      	ldrb	r3, [r2, r3]
d03c7a68:	4a8a      	ldr	r2, [pc, #552]	; (d03c7c94 <main+0xd68>)
d03c7a6a:	7810      	ldrb	r0, [r2, #0]
d03c7a6c:	4298      	cmp	r0, r3
d03c7a6e:	f47f ae82 	bne.w	d03c7776 <main+0x84a>
d03c7a72:	3c1e      	subs	r4, #30
d03c7a74:	b2a4      	uxth	r4, r4
d03c7a76:	2cb3      	cmp	r4, #179	; 0xb3
d03c7a78:	f63f ae7d 	bhi.w	d03c7776 <main+0x84a>
d03c7a7c:	3d86      	subs	r5, #134	; 0x86
d03c7a7e:	b2ad      	uxth	r5, r5
d03c7a80:	2d7f      	cmp	r5, #127	; 0x7f
d03c7a82:	f63f ae78 	bhi.w	d03c7776 <main+0x84a>
d03c7a86:	4b84      	ldr	r3, [pc, #528]	; (d03c7c98 <main+0xd6c>)
d03c7a88:	3986      	subs	r1, #134	; 0x86
d03c7a8a:	781c      	ldrb	r4, [r3, #0]
d03c7a8c:	eb04 1121 	add.w	r1, r4, r1, asr #4
d03c7a90:	b2cc      	uxtb	r4, r1
d03c7a92:	f7f9 f9fb 	bl	d03c0e8c <vm_program_length>
d03c7a96:	4284      	cmp	r4, r0
d03c7a98:	f4bf ae6d 	bcs.w	d03c7776 <main+0x84a>
d03c7a9c:	4b7f      	ldr	r3, [pc, #508]	; (d03c7c9c <main+0xd70>)
d03c7a9e:	701c      	strb	r4, [r3, #0]
d03c7aa0:	2401      	movs	r4, #1
d03c7aa2:	4b7f      	ldr	r3, [pc, #508]	; (d03c7ca0 <main+0xd74>)
d03c7aa4:	f883 8000 	strb.w	r8, [r3]
d03c7aa8:	4b7e      	ldr	r3, [pc, #504]	; (d03c7ca4 <main+0xd78>)
d03c7aaa:	701c      	strb	r4, [r3, #0]
d03c7aac:	f7fa f99c 	bl	d03c1de8 <ui_vm_editor_clamp_selection>
d03c7ab0:	2f9d      	cmp	r7, #157	; 0x9d
d03c7ab2:	dd24      	ble.n	d03c7afe <main+0xbd2>
d03c7ab4:	4b7c      	ldr	r3, [pc, #496]	; (d03c7ca8 <main+0xd7c>)
d03c7ab6:	2202      	movs	r2, #2
d03c7ab8:	701a      	strb	r2, [r3, #0]
d03c7aba:	e65c      	b.n	d03c7776 <main+0x84a>
d03c7abc:	3c18      	subs	r4, #24
d03c7abe:	2024      	movs	r0, #36	; 0x24
d03c7ac0:	b2a4      	uxth	r4, r4
d03c7ac2:	f5b4 7fd2 	cmp.w	r4, #420	; 0x1a4
d03c7ac6:	fa5f f288 	uxtb.w	r2, r8
d03c7aca:	d20b      	bcs.n	d03c7ae4 <main+0xbb8>
d03c7acc:	eb08 03c8 	add.w	r3, r8, r8, lsl #3
d03c7ad0:	009b      	lsls	r3, r3, #2
d03c7ad2:	3377      	adds	r3, #119	; 0x77
d03c7ad4:	b21b      	sxth	r3, r3
d03c7ad6:	4299      	cmp	r1, r3
d03c7ad8:	db04      	blt.n	d03c7ae4 <main+0xbb8>
d03c7ada:	fb00 f308 	mul.w	r3, r0, r8
d03c7ade:	3397      	adds	r3, #151	; 0x97
d03c7ae0:	4299      	cmp	r1, r3
d03c7ae2:	db05      	blt.n	d03c7af0 <main+0xbc4>
d03c7ae4:	f108 0801 	add.w	r8, r8, #1
d03c7ae8:	f1b8 0f04 	cmp.w	r8, #4
d03c7aec:	d1e9      	bne.n	d03c7ac2 <main+0xb96>
d03c7aee:	e642      	b.n	d03c7776 <main+0x84a>
d03c7af0:	4b6e      	ldr	r3, [pc, #440]	; (d03c7cac <main+0xd80>)
d03c7af2:	781b      	ldrb	r3, [r3, #0]
d03c7af4:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d03c7af8:	4b64      	ldr	r3, [pc, #400]	; (d03c7c8c <main+0xd60>)
d03c7afa:	701a      	strb	r2, [r3, #0]
d03c7afc:	e63b      	b.n	d03c7776 <main+0x84a>
d03c7afe:	2f85      	cmp	r7, #133	; 0x85
d03c7b00:	dd02      	ble.n	d03c7b08 <main+0xbdc>
d03c7b02:	4b69      	ldr	r3, [pc, #420]	; (d03c7ca8 <main+0xd7c>)
d03c7b04:	701c      	strb	r4, [r3, #0]
d03c7b06:	e636      	b.n	d03c7776 <main+0x84a>
d03c7b08:	2f3d      	cmp	r7, #61	; 0x3d
d03c7b0a:	f77f ae34 	ble.w	d03c7776 <main+0x84a>
d03c7b0e:	4b66      	ldr	r3, [pc, #408]	; (d03c7ca8 <main+0xd7c>)
d03c7b10:	2200      	movs	r2, #0
d03c7b12:	701a      	strb	r2, [r3, #0]
d03c7b14:	e62f      	b.n	d03c7776 <main+0x84a>
d03c7b16:	f1a0 0364 	sub.w	r3, r0, #100	; 0x64
d03c7b1a:	b29a      	uxth	r2, r3
d03c7b1c:	2a03      	cmp	r2, #3
d03c7b1e:	d802      	bhi.n	d03c7b26 <main+0xbfa>
d03c7b20:	4a62      	ldr	r2, [pc, #392]	; (d03c7cac <main+0xd80>)
d03c7b22:	7013      	strb	r3, [r2, #0]
d03c7b24:	e627      	b.n	d03c7776 <main+0x84a>
d03c7b26:	f1a0 0378 	sub.w	r3, r0, #120	; 0x78
d03c7b2a:	2b03      	cmp	r3, #3
d03c7b2c:	d80c      	bhi.n	d03c7b48 <main+0xc1c>
d03c7b2e:	4b5f      	ldr	r3, [pc, #380]	; (d03c7cac <main+0xd80>)
d03c7b30:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d03c7b34:	781b      	ldrb	r3, [r3, #0]
d03c7b36:	eb00 0083 	add.w	r0, r0, r3, lsl #2
d03c7b3a:	4b54      	ldr	r3, [pc, #336]	; (d03c7c8c <main+0xd60>)
d03c7b3c:	3878      	subs	r0, #120	; 0x78
d03c7b3e:	b2c0      	uxtb	r0, r0
d03c7b40:	7018      	strb	r0, [r3, #0]
d03c7b42:	f7fa fc05 	bl	d03c2350 <ui_select_program_delta>
d03c7b46:	e616      	b.n	d03c7776 <main+0x84a>
d03c7b48:	f1a0 038c 	sub.w	r3, r0, #140	; 0x8c
d03c7b4c:	2b03      	cmp	r3, #3
d03c7b4e:	d80a      	bhi.n	d03c7b66 <main+0xc3a>
d03c7b50:	4b56      	ldr	r3, [pc, #344]	; (d03c7cac <main+0xd80>)
d03c7b52:	781b      	ldrb	r3, [r3, #0]
d03c7b54:	eb00 0083 	add.w	r0, r0, r3, lsl #2
d03c7b58:	4b4c      	ldr	r3, [pc, #304]	; (d03c7c8c <main+0xd60>)
d03c7b5a:	3074      	adds	r0, #116	; 0x74
d03c7b5c:	b2c0      	uxtb	r0, r0
d03c7b5e:	7018      	strb	r0, [r3, #0]
d03c7b60:	f7fa fbf6 	bl	d03c2350 <ui_select_program_delta>
d03c7b64:	e607      	b.n	d03c7776 <main+0x84a>
d03c7b66:	f1a0 03b4 	sub.w	r3, r0, #180	; 0xb4
d03c7b6a:	2b06      	cmp	r3, #6
d03c7b6c:	d80e      	bhi.n	d03c7b8c <main+0xc60>
d03c7b6e:	4b50      	ldr	r3, [pc, #320]	; (d03c7cb0 <main+0xd84>)
d03c7b70:	781b      	ldrb	r3, [r3, #0]
d03c7b72:	334c      	adds	r3, #76	; 0x4c
d03c7b74:	4418      	add	r0, r3
d03c7b76:	4b4f      	ldr	r3, [pc, #316]	; (d03c7cb4 <main+0xd88>)
d03c7b78:	b2c0      	uxtb	r0, r0
d03c7b7a:	781b      	ldrb	r3, [r3, #0]
d03c7b7c:	4283      	cmp	r3, r0
d03c7b7e:	f67f adfa 	bls.w	d03c7776 <main+0x84a>
d03c7b82:	4b4d      	ldr	r3, [pc, #308]	; (d03c7cb8 <main+0xd8c>)
d03c7b84:	7018      	strb	r0, [r3, #0]
d03c7b86:	4b4d      	ldr	r3, [pc, #308]	; (d03c7cbc <main+0xd90>)
d03c7b88:	7019      	strb	r1, [r3, #0]
d03c7b8a:	e5f4      	b.n	d03c7776 <main+0x84a>
d03c7b8c:	f1a0 03dc 	sub.w	r3, r0, #220	; 0xdc
d03c7b90:	2b27      	cmp	r3, #39	; 0x27
d03c7b92:	d827      	bhi.n	d03c7be4 <main+0xcb8>
d03c7b94:	3024      	adds	r0, #36	; 0x24
d03c7b96:	b2c4      	uxtb	r4, r0
d03c7b98:	2c27      	cmp	r4, #39	; 0x27
d03c7b9a:	f43f adec 	beq.w	d03c7776 <main+0x84a>
d03c7b9e:	4848      	ldr	r0, [pc, #288]	; (d03c7cc0 <main+0xd94>)
d03c7ba0:	f002 fa2a 	bl	d03c9ff8 <strlen>
d03c7ba4:	281a      	cmp	r0, #26
d03c7ba6:	f63f ade6 	bhi.w	d03c7776 <main+0x84a>
d03c7baa:	4b46      	ldr	r3, [pc, #280]	; (d03c7cc4 <main+0xd98>)
d03c7bac:	b2c2      	uxtb	r2, r0
d03c7bae:	b200      	sxth	r0, r0
d03c7bb0:	5d1c      	ldrb	r4, [r3, r4]
d03c7bb2:	4b45      	ldr	r3, [pc, #276]	; (d03c7cc8 <main+0xd9c>)
d03c7bb4:	7819      	ldrb	r1, [r3, #0]
d03c7bb6:	4291      	cmp	r1, r2
d03c7bb8:	4941      	ldr	r1, [pc, #260]	; (d03c7cc0 <main+0xd94>)
d03c7bba:	bf88      	it	hi
d03c7bbc:	701a      	strbhi	r2, [r3, #0]
d03c7bbe:	781a      	ldrb	r2, [r3, #0]
d03c7bc0:	4290      	cmp	r0, r2
d03c7bc2:	da09      	bge.n	d03c7bd8 <main+0xcac>
d03c7bc4:	1c50      	adds	r0, r2, #1
d03c7bc6:	548c      	strb	r4, [r1, r2]
d03c7bc8:	2200      	movs	r2, #0
d03c7bca:	7018      	strb	r0, [r3, #0]
d03c7bcc:	4b34      	ldr	r3, [pc, #208]	; (d03c7ca0 <main+0xd74>)
d03c7bce:	701a      	strb	r2, [r3, #0]
d03c7bd0:	2201      	movs	r2, #1
d03c7bd2:	4b34      	ldr	r3, [pc, #208]	; (d03c7ca4 <main+0xd78>)
d03c7bd4:	701a      	strb	r2, [r3, #0]
d03c7bd6:	e5ce      	b.n	d03c7776 <main+0x84a>
d03c7bd8:	5c0e      	ldrb	r6, [r1, r0]
d03c7bda:	180d      	adds	r5, r1, r0
d03c7bdc:	3801      	subs	r0, #1
d03c7bde:	706e      	strb	r6, [r5, #1]
d03c7be0:	b200      	sxth	r0, r0
d03c7be2:	e7ed      	b.n	d03c7bc0 <main+0xc94>
d03c7be4:	3807      	subs	r0, #7
d03c7be6:	283e      	cmp	r0, #62	; 0x3e
d03c7be8:	f63f adc5 	bhi.w	d03c7776 <main+0x84a>
d03c7bec:	e8df f010 	tbh	[pc, r0, lsl #1]
d03c7bf0:	0070003f 	.word	0x0070003f
d03c7bf4:	009a008a 	.word	0x009a008a
d03c7bf8:	00a700a1 	.word	0x00a700a1
d03c7bfc:	00a700ae 	.word	0x00a700ae
d03c7c00:	00b500ae 	.word	0x00b500ae
d03c7c04:	00d200c3 	.word	0x00d200c3
d03c7c08:	00ef00e0 	.word	0x00ef00e0
d03c7c0c:	010900f9 	.word	0x010900f9
d03c7c10:	01250119 	.word	0x01250119
d03c7c14:	01350130 	.word	0x01350130
d03c7c18:	01a601a2 	.word	0x01a601a2
d03c7c1c:	01bd01aa 	.word	0x01bd01aa
d03c7c20:	01c701c1 	.word	0x01c701c1
d03c7c24:	01d301cd 	.word	0x01d301cd
d03c7c28:	01df01d9 	.word	0x01df01d9
d03c7c2c:	02290224 	.word	0x02290224
d03c7c30:	02a902a1 	.word	0x02a902a1
d03c7c34:	02be02b2 	.word	0x02be02b2
d03c7c38:	030a0305 	.word	0x030a0305
d03c7c3c:	0314030f 	.word	0x0314030f
d03c7c40:	03210319 	.word	0x03210319
d03c7c44:	034e0348 	.word	0x034e0348
d03c7c48:	035f0353 	.word	0x035f0353
d03c7c4c:	03690364 	.word	0x03690364
d03c7c50:	0373036e 	.word	0x0373036e
d03c7c54:	0409037b 	.word	0x0409037b
d03c7c58:	04310411 	.word	0x04310411
d03c7c5c:	04920468 	.word	0x04920468
d03c7c60:	04b204aa 	.word	0x04b204aa
d03c7c64:	04c504ba 	.word	0x04c504ba
d03c7c68:	04dd04d1 	.word	0x04dd04d1
d03c7c6c:	04e2      	.short	0x04e2
d03c7c6e:	f7f9 fef3 	bl	d03c1a58 <sid_midi_all_notes_off>
d03c7c72:	4816      	ldr	r0, [pc, #88]	; (d03c7ccc <main+0xda0>)
d03c7c74:	f7f9 fbba 	bl	d03c13ec <ui_set_status>
d03c7c78:	e57d      	b.n	d03c7776 <main+0x84a>
d03c7c7a:	bf00      	nop
d03c7c7c:	d03ccf62 	.word	0xd03ccf62
d03c7c80:	d03cf331 	.word	0xd03cf331
d03c7c84:	d03cf332 	.word	0xd03cf332
d03c7c88:	d03cf523 	.word	0xd03cf523
d03c7c8c:	d03cf36a 	.word	0xd03cf36a
d03c7c90:	d03ccd04 	.word	0xd03ccd04
d03c7c94:	d03cf528 	.word	0xd03cf528
d03c7c98:	d03cf531 	.word	0xd03cf531
d03c7c9c:	d03cf529 	.word	0xd03cf529
d03c7ca0:	d03cf52b 	.word	0xd03cf52b
d03c7ca4:	d03cf52a 	.word	0xd03cf52a
d03c7ca8:	d03cf522 	.word	0xd03cf522
d03c7cac:	d03cd9d2 	.word	0xd03cd9d2
d03c7cb0:	d03ce2b9 	.word	0xd03ce2b9
d03c7cb4:	d03cda18 	.word	0xd03cda18
d03c7cb8:	d03ce2ba 	.word	0xd03ce2ba
d03c7cbc:	d03cd0e0 	.word	0xd03cd0e0
d03c7cc0:	d03cf34a 	.word	0xd03cf34a
d03c7cc4:	d03cc4f8 	.word	0xd03cc4f8
d03c7cc8:	d03cf348 	.word	0xd03cf348
d03c7ccc:	d03cbdfc 	.word	0xd03cbdfc
d03c7cd0:	f7fa fb04 	bl	d03c22dc <ui_project_ensure_dir>
d03c7cd4:	2800      	cmp	r0, #0
d03c7cd6:	f43f ad4e 	beq.w	d03c7776 <main+0x84a>
d03c7cda:	49b7      	ldr	r1, [pc, #732]	; (d03c7fb8 <main+0x108c>)
d03c7cdc:	2402      	movs	r4, #2
d03c7cde:	48b7      	ldr	r0, [pc, #732]	; (d03c7fbc <main+0x1090>)
d03c7ce0:	f002 f982 	bl	d03c9fe8 <strcpy>
d03c7ce4:	4bb6      	ldr	r3, [pc, #728]	; (d03c7fc0 <main+0x1094>)
d03c7ce6:	48b5      	ldr	r0, [pc, #724]	; (d03c7fbc <main+0x1090>)
d03c7ce8:	701c      	strb	r4, [r3, #0]
d03c7cea:	f002 f985 	bl	d03c9ff8 <strlen>
d03c7cee:	4bb5      	ldr	r3, [pc, #724]	; (d03c7fc4 <main+0x1098>)
d03c7cf0:	2200      	movs	r2, #0
d03c7cf2:	7018      	strb	r0, [r3, #0]
d03c7cf4:	4bb4      	ldr	r3, [pc, #720]	; (d03c7fc8 <main+0x109c>)
d03c7cf6:	701a      	strb	r2, [r3, #0]
d03c7cf8:	2201      	movs	r2, #1
d03c7cfa:	4bb4      	ldr	r3, [pc, #720]	; (d03c7fcc <main+0x10a0>)
d03c7cfc:	701c      	strb	r4, [r3, #0]
d03c7cfe:	4bb4      	ldr	r3, [pc, #720]	; (d03c7fd0 <main+0x10a4>)
d03c7d00:	701a      	strb	r2, [r3, #0]
d03c7d02:	e538      	b.n	d03c7776 <main+0x84a>
d03c7d04:	f7fa faea 	bl	d03c22dc <ui_project_ensure_dir>
d03c7d08:	48b2      	ldr	r0, [pc, #712]	; (d03c7fd4 <main+0x10a8>)
d03c7d0a:	7803      	ldrb	r3, [r0, #0]
d03c7d0c:	b913      	cbnz	r3, d03c7d14 <main+0xde8>
d03c7d0e:	49b2      	ldr	r1, [pc, #712]	; (d03c7fd8 <main+0x10ac>)
d03c7d10:	f002 f96a 	bl	d03c9fe8 <strcpy>
d03c7d14:	f7fb fad2 	bl	d03c32bc <ui_file_refresh>
d03c7d18:	2301      	movs	r3, #1
d03c7d1a:	4aac      	ldr	r2, [pc, #688]	; (d03c7fcc <main+0x10a0>)
d03c7d1c:	7013      	strb	r3, [r2, #0]
d03c7d1e:	4aac      	ldr	r2, [pc, #688]	; (d03c7fd0 <main+0x10a4>)
d03c7d20:	7013      	strb	r3, [r2, #0]
d03c7d22:	e528      	b.n	d03c7776 <main+0x84a>
d03c7d24:	4bad      	ldr	r3, [pc, #692]	; (d03c7fdc <main+0x10b0>)
d03c7d26:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d03c7d2a:	7818      	ldrb	r0, [r3, #0]
d03c7d2c:	f7fa fb10 	bl	d03c2350 <ui_select_program_delta>
d03c7d30:	e521      	b.n	d03c7776 <main+0x84a>
d03c7d32:	4baa      	ldr	r3, [pc, #680]	; (d03c7fdc <main+0x10b0>)
d03c7d34:	2101      	movs	r1, #1
d03c7d36:	7818      	ldrb	r0, [r3, #0]
d03c7d38:	f7fa fb0a 	bl	d03c2350 <ui_select_program_delta>
d03c7d3c:	e51b      	b.n	d03c7776 <main+0x84a>
d03c7d3e:	4ba8      	ldr	r3, [pc, #672]	; (d03c7fe0 <main+0x10b4>)
d03c7d40:	8818      	ldrh	r0, [r3, #0]
d03c7d42:	380a      	subs	r0, #10
d03c7d44:	b200      	sxth	r0, r0
d03c7d46:	f7f9 fd55 	bl	d03c17f4 <midi_set_global_gain>
d03c7d4a:	e514      	b.n	d03c7776 <main+0x84a>
d03c7d4c:	4ba4      	ldr	r3, [pc, #656]	; (d03c7fe0 <main+0x10b4>)
d03c7d4e:	8818      	ldrh	r0, [r3, #0]
d03c7d50:	300a      	adds	r0, #10
d03c7d52:	b200      	sxth	r0, r0
d03c7d54:	f7f9 fd4e 	bl	d03c17f4 <midi_set_global_gain>
d03c7d58:	e50d      	b.n	d03c7776 <main+0x84a>
d03c7d5a:	4ba0      	ldr	r3, [pc, #640]	; (d03c7fdc <main+0x10b0>)
d03c7d5c:	7818      	ldrb	r0, [r3, #0]
d03c7d5e:	280f      	cmp	r0, #15
d03c7d60:	f63f ad09 	bhi.w	d03c7776 <main+0x84a>
d03c7d64:	4a9f      	ldr	r2, [pc, #636]	; (d03c7fe4 <main+0x10b8>)
d03c7d66:	5c13      	ldrb	r3, [r2, r0]
d03c7d68:	3b08      	subs	r3, #8
d03c7d6a:	f383 0307 	usat	r3, #7, r3
d03c7d6e:	5413      	strb	r3, [r2, r0]
d03c7d70:	f7f9 fd10 	bl	d03c1794 <midi_update_active_channel_volume>
d03c7d74:	e4ff      	b.n	d03c7776 <main+0x84a>
d03c7d76:	4b99      	ldr	r3, [pc, #612]	; (d03c7fdc <main+0x10b0>)
d03c7d78:	7818      	ldrb	r0, [r3, #0]
d03c7d7a:	280f      	cmp	r0, #15
d03c7d7c:	f63f acfb 	bhi.w	d03c7776 <main+0x84a>
d03c7d80:	4a98      	ldr	r2, [pc, #608]	; (d03c7fe4 <main+0x10b8>)
d03c7d82:	5c13      	ldrb	r3, [r2, r0]
d03c7d84:	3308      	adds	r3, #8
d03c7d86:	2b7f      	cmp	r3, #127	; 0x7f
d03c7d88:	bfa8      	it	ge
d03c7d8a:	237f      	movge	r3, #127	; 0x7f
d03c7d8c:	5413      	strb	r3, [r2, r0]
d03c7d8e:	f7f9 fd01 	bl	d03c1794 <midi_update_active_channel_volume>
d03c7d92:	e4f0      	b.n	d03c7776 <main+0x84a>
d03c7d94:	4b91      	ldr	r3, [pc, #580]	; (d03c7fdc <main+0x10b0>)
d03c7d96:	7818      	ldrb	r0, [r3, #0]
d03c7d98:	280f      	cmp	r0, #15
d03c7d9a:	f63f acec 	bhi.w	d03c7776 <main+0x84a>
d03c7d9e:	4a92      	ldr	r2, [pc, #584]	; (d03c7fe8 <main+0x10bc>)
d03c7da0:	5c13      	ldrb	r3, [r2, r0]
d03c7da2:	3b08      	subs	r3, #8
d03c7da4:	f383 0307 	usat	r3, #7, r3
d03c7da8:	5413      	strb	r3, [r2, r0]
d03c7daa:	f7f9 fcf3 	bl	d03c1794 <midi_update_active_channel_volume>
d03c7dae:	e4e2      	b.n	d03c7776 <main+0x84a>
d03c7db0:	4b8a      	ldr	r3, [pc, #552]	; (d03c7fdc <main+0x10b0>)
d03c7db2:	7818      	ldrb	r0, [r3, #0]
d03c7db4:	280f      	cmp	r0, #15
d03c7db6:	f63f acde 	bhi.w	d03c7776 <main+0x84a>
d03c7dba:	4a8b      	ldr	r2, [pc, #556]	; (d03c7fe8 <main+0x10bc>)
d03c7dbc:	5c13      	ldrb	r3, [r2, r0]
d03c7dbe:	3308      	adds	r3, #8
d03c7dc0:	2b7f      	cmp	r3, #127	; 0x7f
d03c7dc2:	bfa8      	it	ge
d03c7dc4:	237f      	movge	r3, #127	; 0x7f
d03c7dc6:	5413      	strb	r3, [r2, r0]
d03c7dc8:	f7f9 fce4 	bl	d03c1794 <midi_update_active_channel_volume>
d03c7dcc:	e4d3      	b.n	d03c7776 <main+0x84a>
d03c7dce:	4a87      	ldr	r2, [pc, #540]	; (d03c7fec <main+0x10c0>)
d03c7dd0:	2009      	movs	r0, #9
d03c7dd2:	7813      	ldrb	r3, [r2, #0]
d03c7dd4:	fab3 f383 	clz	r3, r3
d03c7dd8:	095b      	lsrs	r3, r3, #5
d03c7dda:	7013      	strb	r3, [r2, #0]
d03c7ddc:	f7f9 fc7c 	bl	d03c16d8 <sid_midi_all_notes_off_event>
d03c7de0:	e4c9      	b.n	d03c7776 <main+0x84a>
d03c7de2:	4a83      	ldr	r2, [pc, #524]	; (d03c7ff0 <main+0x10c4>)
d03c7de4:	2009      	movs	r0, #9
d03c7de6:	8813      	ldrh	r3, [r2, #0]
d03c7de8:	3b0a      	subs	r3, #10
d03c7dea:	b21b      	sxth	r3, r3
d03c7dec:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
d03c7df0:	bfa8      	it	ge
d03c7df2:	f44f 7396 	movge.w	r3, #300	; 0x12c
d03c7df6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d03c7dfa:	8013      	strh	r3, [r2, #0]
d03c7dfc:	f7f9 fcca 	bl	d03c1794 <midi_update_active_channel_volume>
d03c7e00:	e4b9      	b.n	d03c7776 <main+0x84a>
d03c7e02:	4a7b      	ldr	r2, [pc, #492]	; (d03c7ff0 <main+0x10c4>)
d03c7e04:	2009      	movs	r0, #9
d03c7e06:	8813      	ldrh	r3, [r2, #0]
d03c7e08:	330a      	adds	r3, #10
d03c7e0a:	b21b      	sxth	r3, r3
d03c7e0c:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
d03c7e10:	bfa8      	it	ge
d03c7e12:	f44f 7396 	movge.w	r3, #300	; 0x12c
d03c7e16:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d03c7e1a:	8013      	strh	r3, [r2, #0]
d03c7e1c:	f7f9 fcba 	bl	d03c1794 <midi_update_active_channel_volume>
d03c7e20:	e4a9      	b.n	d03c7776 <main+0x84a>
d03c7e22:	4b6e      	ldr	r3, [pc, #440]	; (d03c7fdc <main+0x10b0>)
d03c7e24:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d03c7e28:	7818      	ldrb	r0, [r3, #0]
d03c7e2a:	f7fa fa91 	bl	d03c2350 <ui_select_program_delta>
d03c7e2e:	4b71      	ldr	r3, [pc, #452]	; (d03c7ff4 <main+0x10c8>)
d03c7e30:	2200      	movs	r2, #0
d03c7e32:	701a      	strb	r2, [r3, #0]
d03c7e34:	f7f9 f840 	bl	d03c0eb8 <ui_clamp_vm_scroll>
d03c7e38:	e49d      	b.n	d03c7776 <main+0x84a>
d03c7e3a:	4b68      	ldr	r3, [pc, #416]	; (d03c7fdc <main+0x10b0>)
d03c7e3c:	2101      	movs	r1, #1
d03c7e3e:	7818      	ldrb	r0, [r3, #0]
d03c7e40:	f7fa fa86 	bl	d03c2350 <ui_select_program_delta>
d03c7e44:	4b6b      	ldr	r3, [pc, #428]	; (d03c7ff4 <main+0x10c8>)
d03c7e46:	2200      	movs	r2, #0
d03c7e48:	701a      	strb	r2, [r3, #0]
d03c7e4a:	f7f9 f835 	bl	d03c0eb8 <ui_clamp_vm_scroll>
d03c7e4e:	e492      	b.n	d03c7776 <main+0x84a>
d03c7e50:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c7e54:	f7f9 f84a 	bl	d03c0eec <ui_scroll_vm>
d03c7e58:	e48d      	b.n	d03c7776 <main+0x84a>
d03c7e5a:	4b60      	ldr	r3, [pc, #384]	; (d03c7fdc <main+0x10b0>)
d03c7e5c:	4a66      	ldr	r2, [pc, #408]	; (d03c7ff8 <main+0x10cc>)
d03c7e5e:	781b      	ldrb	r3, [r3, #0]
d03c7e60:	f8df 8190 	ldr.w	r8, [pc, #400]	; d03c7ff4 <main+0x10c8>
d03c7e64:	5cd4      	ldrb	r4, [r2, r3]
d03c7e66:	f898 3000 	ldrb.w	r3, [r8]
d03c7e6a:	b153      	cbz	r3, d03c7e82 <main+0xf56>
d03c7e6c:	4b63      	ldr	r3, [pc, #396]	; (d03c7ffc <main+0x10d0>)
d03c7e6e:	781b      	ldrb	r3, [r3, #0]
d03c7e70:	42a3      	cmp	r3, r4
d03c7e72:	d106      	bne.n	d03c7e82 <main+0xf56>
d03c7e74:	2300      	movs	r3, #0
d03c7e76:	4862      	ldr	r0, [pc, #392]	; (d03c8000 <main+0x10d4>)
d03c7e78:	f888 3000 	strb.w	r3, [r8]
d03c7e7c:	f7f9 fab6 	bl	d03c13ec <ui_set_status>
d03c7e80:	e479      	b.n	d03c7776 <main+0x84a>
d03c7e82:	0621      	lsls	r1, r4, #24
d03c7e84:	d503      	bpl.n	d03c7e8e <main+0xf62>
d03c7e86:	485f      	ldr	r0, [pc, #380]	; (d03c8004 <main+0x10d8>)
d03c7e88:	f7f9 fab0 	bl	d03c13ec <ui_set_status>
d03c7e8c:	e473      	b.n	d03c7776 <main+0x84a>
d03c7e8e:	4f5e      	ldr	r7, [pc, #376]	; (d03c8008 <main+0x10dc>)
d03c7e90:	f857 3024 	ldr.w	r3, [r7, r4, lsl #2]
d03c7e94:	9305      	str	r3, [sp, #20]
d03c7e96:	b91b      	cbnz	r3, d03c7ea0 <main+0xf74>
d03c7e98:	485c      	ldr	r0, [pc, #368]	; (d03c800c <main+0x10e0>)
d03c7e9a:	f7f9 faa7 	bl	d03c13ec <ui_set_status>
d03c7e9e:	e46a      	b.n	d03c7776 <main+0x84a>
d03c7ea0:	4b56      	ldr	r3, [pc, #344]	; (d03c7ffc <main+0x10d0>)
d03c7ea2:	781b      	ldrb	r3, [r3, #0]
d03c7ea4:	429c      	cmp	r4, r3
d03c7ea6:	d037      	beq.n	d03c7f18 <main+0xfec>
d03c7ea8:	2bff      	cmp	r3, #255	; 0xff
d03c7eaa:	4a59      	ldr	r2, [pc, #356]	; (d03c8010 <main+0x10e4>)
d03c7eac:	d007      	beq.n	d03c7ebe <main+0xf92>
d03c7eae:	f857 1023 	ldr.w	r1, [r7, r3, lsl #2]
d03c7eb2:	4858      	ldr	r0, [pc, #352]	; (d03c8014 <main+0x10e8>)
d03c7eb4:	4281      	cmp	r1, r0
d03c7eb6:	bf04      	itt	eq
d03c7eb8:	6811      	ldreq	r1, [r2, #0]
d03c7eba:	f847 1023 	streq.w	r1, [r7, r3, lsl #2]
d03c7ebe:	9b05      	ldr	r3, [sp, #20]
d03c7ec0:	4620      	mov	r0, r4
d03c7ec2:	2600      	movs	r6, #0
d03c7ec4:	f8df 914c 	ldr.w	r9, [pc, #332]	; d03c8014 <main+0x10e8>
d03c7ec8:	6013      	str	r3, [r2, #0]
d03c7eca:	f7f8 ffdf 	bl	d03c0e8c <vm_program_length>
d03c7ece:	1e43      	subs	r3, r0, #1
d03c7ed0:	4605      	mov	r5, r0
d03c7ed2:	f44f 72c0 	mov.w	r2, #384	; 0x180
d03c7ed6:	2100      	movs	r1, #0
d03c7ed8:	b2db      	uxtb	r3, r3
d03c7eda:	484e      	ldr	r0, [pc, #312]	; (d03c8014 <main+0x10e8>)
d03c7edc:	2b60      	cmp	r3, #96	; 0x60
d03c7ede:	bf28      	it	cs
d03c7ee0:	2560      	movcs	r5, #96	; 0x60
d03c7ee2:	f001 fd39 	bl	d03c9958 <memset>
d03c7ee6:	9b05      	ldr	r3, [sp, #20]
d03c7ee8:	eb09 0086 	add.w	r0, r9, r6, lsl #2
d03c7eec:	2204      	movs	r2, #4
d03c7eee:	eb03 0186 	add.w	r1, r3, r6, lsl #2
d03c7ef2:	3601      	adds	r6, #1
d03c7ef4:	f001 fd22 	bl	d03c993c <memcpy>
d03c7ef8:	b2f3      	uxtb	r3, r6
d03c7efa:	429d      	cmp	r5, r3
d03c7efc:	d8f3      	bhi.n	d03c7ee6 <main+0xfba>
d03c7efe:	4a3f      	ldr	r2, [pc, #252]	; (d03c7ffc <main+0x10d0>)
d03c7f00:	2300      	movs	r3, #0
d03c7f02:	f847 9024 	str.w	r9, [r7, r4, lsl #2]
d03c7f06:	7014      	strb	r4, [r2, #0]
d03c7f08:	4a43      	ldr	r2, [pc, #268]	; (d03c8018 <main+0x10ec>)
d03c7f0a:	f889 317c 	strb.w	r3, [r9, #380]	; 0x17c
d03c7f0e:	7013      	strb	r3, [r2, #0]
d03c7f10:	4a42      	ldr	r2, [pc, #264]	; (d03c801c <main+0x10f0>)
d03c7f12:	7013      	strb	r3, [r2, #0]
d03c7f14:	4a42      	ldr	r2, [pc, #264]	; (d03c8020 <main+0x10f4>)
d03c7f16:	7013      	strb	r3, [r2, #0]
d03c7f18:	2100      	movs	r1, #0
d03c7f1a:	4a42      	ldr	r2, [pc, #264]	; (d03c8024 <main+0x10f8>)
d03c7f1c:	2301      	movs	r3, #1
d03c7f1e:	7011      	strb	r1, [r2, #0]
d03c7f20:	4a41      	ldr	r2, [pc, #260]	; (d03c8028 <main+0x10fc>)
d03c7f22:	f888 3000 	strb.w	r3, [r8]
d03c7f26:	7013      	strb	r3, [r2, #0]
d03c7f28:	f7f9 ff5e 	bl	d03c1de8 <ui_vm_editor_clamp_selection>
d03c7f2c:	483f      	ldr	r0, [pc, #252]	; (d03c802c <main+0x1100>)
d03c7f2e:	f7f9 fa5d 	bl	d03c13ec <ui_set_status>
d03c7f32:	e420      	b.n	d03c7776 <main+0x84a>
d03c7f34:	2001      	movs	r0, #1
d03c7f36:	f7f8 ffd9 	bl	d03c0eec <ui_scroll_vm>
d03c7f3a:	e41c      	b.n	d03c7776 <main+0x84a>
d03c7f3c:	4b3c      	ldr	r3, [pc, #240]	; (d03c8030 <main+0x1104>)
d03c7f3e:	2201      	movs	r2, #1
d03c7f40:	701a      	strb	r2, [r3, #0]
d03c7f42:	e418      	b.n	d03c7776 <main+0x84a>
d03c7f44:	4a35      	ldr	r2, [pc, #212]	; (d03c801c <main+0x10f0>)
d03c7f46:	7813      	ldrb	r3, [r2, #0]
d03c7f48:	3301      	adds	r3, #1
d03c7f4a:	b25b      	sxtb	r3, r3
d03c7f4c:	2b00      	cmp	r3, #0
d03c7f4e:	db0a      	blt.n	d03c7f66 <main+0x103a>
d03c7f50:	2b03      	cmp	r3, #3
d03c7f52:	bfa8      	it	ge
d03c7f54:	2300      	movge	r3, #0
d03c7f56:	7013      	strb	r3, [r2, #0]
d03c7f58:	2200      	movs	r2, #0
d03c7f5a:	4b32      	ldr	r3, [pc, #200]	; (d03c8024 <main+0x10f8>)
d03c7f5c:	701a      	strb	r2, [r3, #0]
d03c7f5e:	2201      	movs	r2, #1
d03c7f60:	4b31      	ldr	r3, [pc, #196]	; (d03c8028 <main+0x10fc>)
d03c7f62:	701a      	strb	r2, [r3, #0]
d03c7f64:	e407      	b.n	d03c7776 <main+0x84a>
d03c7f66:	2302      	movs	r3, #2
d03c7f68:	e7f5      	b.n	d03c7f56 <main+0x102a>
d03c7f6a:	4832      	ldr	r0, [pc, #200]	; (d03c8034 <main+0x1108>)
d03c7f6c:	f7f9 ff6e 	bl	d03c1e4c <ui_vm_editor_adjust>
d03c7f70:	e401      	b.n	d03c7776 <main+0x84a>
d03c7f72:	f06f 00ff 	mvn.w	r0, #255	; 0xff
d03c7f76:	f7f9 ff69 	bl	d03c1e4c <ui_vm_editor_adjust>
d03c7f7a:	f7ff bbfc 	b.w	d03c7776 <main+0x84a>
d03c7f7e:	f44f 7080 	mov.w	r0, #256	; 0x100
d03c7f82:	f7f9 ff63 	bl	d03c1e4c <ui_vm_editor_adjust>
d03c7f86:	f7ff bbf6 	b.w	d03c7776 <main+0x84a>
d03c7f8a:	f44f 5080 	mov.w	r0, #4096	; 0x1000
d03c7f8e:	f7f9 ff5d 	bl	d03c1e4c <ui_vm_editor_adjust>
d03c7f92:	f7ff bbf0 	b.w	d03c7776 <main+0x84a>
d03c7f96:	f06f 000f 	mvn.w	r0, #15
d03c7f9a:	f7f9 ff57 	bl	d03c1e4c <ui_vm_editor_adjust>
d03c7f9e:	f7ff bbea 	b.w	d03c7776 <main+0x84a>
d03c7fa2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c7fa6:	f7f9 ff51 	bl	d03c1e4c <ui_vm_editor_adjust>
d03c7faa:	f7ff bbe4 	b.w	d03c7776 <main+0x84a>
d03c7fae:	2001      	movs	r0, #1
d03c7fb0:	f7f9 ff4c 	bl	d03c1e4c <ui_vm_editor_adjust>
d03c7fb4:	f7ff bbdf 	b.w	d03c7776 <main+0x84a>
d03c7fb8:	d03cb593 	.word	0xd03cb593
d03c7fbc:	d03cf34a 	.word	0xd03cf34a
d03c7fc0:	d03cf349 	.word	0xd03cf349
d03c7fc4:	d03cf348 	.word	0xd03cf348
d03c7fc8:	d03cf2d1 	.word	0xd03cf2d1
d03c7fcc:	d03cd9d4 	.word	0xd03cd9d4
d03c7fd0:	d03cd0e0 	.word	0xd03cd0e0
d03c7fd4:	d03cda19 	.word	0xd03cda19
d03c7fd8:	d03cb338 	.word	0xd03cb338
d03c7fdc:	d03cf36a 	.word	0xd03cf36a
d03c7fe0:	d03ccf2e 	.word	0xd03ccf2e
d03c7fe4:	d03ccd14 	.word	0xd03ccd14
d03c7fe8:	d03cccf4 	.word	0xd03cccf4
d03c7fec:	d03ccd28 	.word	0xd03ccd28
d03c7ff0:	d03ccd2a 	.word	0xd03ccd2a
d03c7ff4:	d03cf523 	.word	0xd03cf523
d03c7ff8:	d03ccd04 	.word	0xd03ccd04
d03c7ffc:	d03cf528 	.word	0xd03cf528
d03c8000:	d03cbe14 	.word	0xd03cbe14
d03c8004:	d03cbe28 	.word	0xd03cbe28
d03c8008:	d03cc608 	.word	0xd03cc608
d03c800c:	d03cbe49 	.word	0xd03cbe49
d03c8010:	d03cf524 	.word	0xd03cf524
d03c8014:	d03cf3a2 	.word	0xd03cf3a2
d03c8018:	d03cf529 	.word	0xd03cf529
d03c801c:	d03cf522 	.word	0xd03cf522
d03c8020:	d03cf531 	.word	0xd03cf531
d03c8024:	d03cf52b 	.word	0xd03cf52b
d03c8028:	d03cf52a 	.word	0xd03cf52a
d03c802c:	d03cbe5f 	.word	0xd03cbe5f
d03c8030:	d03cd9d3 	.word	0xd03cd9d3
d03c8034:	fffff000 	.word	0xfffff000
d03c8038:	2010      	movs	r0, #16
d03c803a:	f7f9 ff07 	bl	d03c1e4c <ui_vm_editor_adjust>
d03c803e:	f7ff bb9a 	b.w	d03c7776 <main+0x84a>
d03c8042:	4eb9      	ldr	r6, [pc, #740]	; (d03c8328 <main+0x13fc>)
d03c8044:	7833      	ldrb	r3, [r6, #0]
d03c8046:	2b01      	cmp	r3, #1
d03c8048:	d147      	bne.n	d03c80da <main+0x11ae>
d03c804a:	4bb8      	ldr	r3, [pc, #736]	; (d03c832c <main+0x1400>)
d03c804c:	4ab8      	ldr	r2, [pc, #736]	; (d03c8330 <main+0x1404>)
d03c804e:	f893 8000 	ldrb.w	r8, [r3]
d03c8052:	f993 3000 	ldrsb.w	r3, [r3]
d03c8056:	f8d2 9000 	ldr.w	r9, [r2]
d03c805a:	2b00      	cmp	r3, #0
d03c805c:	db02      	blt.n	d03c8064 <main+0x1138>
d03c805e:	f1b9 0f00 	cmp.w	r9, #0
d03c8062:	d103      	bne.n	d03c806c <main+0x1140>
d03c8064:	48b3      	ldr	r0, [pc, #716]	; (d03c8334 <main+0x1408>)
d03c8066:	f7f9 f9c1 	bl	d03c13ec <ui_set_status>
d03c806a:	e032      	b.n	d03c80d2 <main+0x11a6>
d03c806c:	2300      	movs	r3, #0
d03c806e:	1c5a      	adds	r2, r3, #1
d03c8070:	f819 3023 	ldrb.w	r3, [r9, r3, lsl #2]
d03c8074:	b2d7      	uxtb	r7, r2
d03c8076:	b11b      	cbz	r3, d03c8080 <main+0x1154>
d03c8078:	2a60      	cmp	r2, #96	; 0x60
d03c807a:	4613      	mov	r3, r2
d03c807c:	d1f7      	bne.n	d03c806e <main+0x1142>
d03c807e:	4617      	mov	r7, r2
d03c8080:	2400      	movs	r4, #0
d03c8082:	4dad      	ldr	r5, [pc, #692]	; (d03c8338 <main+0x140c>)
d03c8084:	f44f 72c0 	mov.w	r2, #384	; 0x180
d03c8088:	2100      	movs	r1, #0
d03c808a:	48ab      	ldr	r0, [pc, #684]	; (d03c8338 <main+0x140c>)
d03c808c:	f001 fc64 	bl	d03c9958 <memset>
d03c8090:	eb09 0184 	add.w	r1, r9, r4, lsl #2
d03c8094:	2204      	movs	r2, #4
d03c8096:	eb05 0084 	add.w	r0, r5, r4, lsl #2
d03c809a:	3401      	adds	r4, #1
d03c809c:	f001 fc4e 	bl	d03c993c <memcpy>
d03c80a0:	b2e3      	uxtb	r3, r4
d03c80a2:	429f      	cmp	r7, r3
d03c80a4:	d8f4      	bhi.n	d03c8090 <main+0x1164>
d03c80a6:	4aa5      	ldr	r2, [pc, #660]	; (d03c833c <main+0x1410>)
d03c80a8:	2300      	movs	r3, #0
d03c80aa:	2401      	movs	r4, #1
d03c80ac:	f842 5028 	str.w	r5, [r2, r8, lsl #2]
d03c80b0:	4aa3      	ldr	r2, [pc, #652]	; (d03c8340 <main+0x1414>)
d03c80b2:	f885 317c 	strb.w	r3, [r5, #380]	; 0x17c
d03c80b6:	7013      	strb	r3, [r2, #0]
d03c80b8:	4aa2      	ldr	r2, [pc, #648]	; (d03c8344 <main+0x1418>)
d03c80ba:	7013      	strb	r3, [r2, #0]
d03c80bc:	4aa2      	ldr	r2, [pc, #648]	; (d03c8348 <main+0x141c>)
d03c80be:	7013      	strb	r3, [r2, #0]
d03c80c0:	4ba2      	ldr	r3, [pc, #648]	; (d03c834c <main+0x1420>)
d03c80c2:	701c      	strb	r4, [r3, #0]
d03c80c4:	f7f9 fcc8 	bl	d03c1a58 <sid_midi_all_notes_off>
d03c80c8:	48a1      	ldr	r0, [pc, #644]	; (d03c8350 <main+0x1424>)
d03c80ca:	f7f9 f98f 	bl	d03c13ec <ui_set_status>
d03c80ce:	4ba1      	ldr	r3, [pc, #644]	; (d03c8354 <main+0x1428>)
d03c80d0:	701c      	strb	r4, [r3, #0]
d03c80d2:	2300      	movs	r3, #0
d03c80d4:	7033      	strb	r3, [r6, #0]
d03c80d6:	f7ff bb4e 	b.w	d03c7776 <main+0x84a>
d03c80da:	2b02      	cmp	r3, #2
d03c80dc:	d1f9      	bne.n	d03c80d2 <main+0x11a6>
d03c80de:	f7f9 fcd7 	bl	d03c1a90 <seq_stop_playback_notes>
d03c80e2:	2400      	movs	r4, #0
d03c80e4:	4b9c      	ldr	r3, [pc, #624]	; (d03c8358 <main+0x142c>)
d03c80e6:	701c      	strb	r4, [r3, #0]
d03c80e8:	4b9c      	ldr	r3, [pc, #624]	; (d03c835c <main+0x1430>)
d03c80ea:	701c      	strb	r4, [r3, #0]
d03c80ec:	4b9c      	ldr	r3, [pc, #624]	; (d03c8360 <main+0x1434>)
d03c80ee:	701c      	strb	r4, [r3, #0]
d03c80f0:	4b9c      	ldr	r3, [pc, #624]	; (d03c8364 <main+0x1438>)
d03c80f2:	701c      	strb	r4, [r3, #0]
d03c80f4:	4b9c      	ldr	r3, [pc, #624]	; (d03c8368 <main+0x143c>)
d03c80f6:	701c      	strb	r4, [r3, #0]
d03c80f8:	4b9c      	ldr	r3, [pc, #624]	; (d03c836c <main+0x1440>)
d03c80fa:	801c      	strh	r4, [r3, #0]
d03c80fc:	4b9c      	ldr	r3, [pc, #624]	; (d03c8370 <main+0x1444>)
d03c80fe:	601c      	str	r4, [r3, #0]
d03c8100:	4b9c      	ldr	r3, [pc, #624]	; (d03c8374 <main+0x1448>)
d03c8102:	681a      	ldr	r2, [r3, #0]
d03c8104:	4b9c      	ldr	r3, [pc, #624]	; (d03c8378 <main+0x144c>)
d03c8106:	601a      	str	r2, [r3, #0]
d03c8108:	4b9c      	ldr	r3, [pc, #624]	; (d03c837c <main+0x1450>)
d03c810a:	701c      	strb	r4, [r3, #0]
d03c810c:	4b9c      	ldr	r3, [pc, #624]	; (d03c8380 <main+0x1454>)
d03c810e:	601c      	str	r4, [r3, #0]
d03c8110:	4b9c      	ldr	r3, [pc, #624]	; (d03c8384 <main+0x1458>)
d03c8112:	601c      	str	r4, [r3, #0]
d03c8114:	f7f9 f8b2 	bl	d03c127c <seq_clear_note_storage>
d03c8118:	f7f8 fd84 	bl	d03c0c24 <seq_playback_mark_dirty>
d03c811c:	4b9a      	ldr	r3, [pc, #616]	; (d03c8388 <main+0x145c>)
d03c811e:	2201      	movs	r2, #1
d03c8120:	4621      	mov	r1, r4
d03c8122:	489a      	ldr	r0, [pc, #616]	; (d03c838c <main+0x1460>)
d03c8124:	701a      	strb	r2, [r3, #0]
d03c8126:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c812a:	f001 fc15 	bl	d03c9958 <memset>
d03c812e:	4898      	ldr	r0, [pc, #608]	; (d03c8390 <main+0x1464>)
d03c8130:	e799      	b.n	d03c8066 <main+0x113a>
d03c8132:	4b7d      	ldr	r3, [pc, #500]	; (d03c8328 <main+0x13fc>)
d03c8134:	2200      	movs	r2, #0
d03c8136:	4897      	ldr	r0, [pc, #604]	; (d03c8394 <main+0x1468>)
d03c8138:	701a      	strb	r2, [r3, #0]
d03c813a:	f7f9 f957 	bl	d03c13ec <ui_set_status>
d03c813e:	f7ff bb1a 	b.w	d03c7776 <main+0x84a>
d03c8142:	4a95      	ldr	r2, [pc, #596]	; (d03c8398 <main+0x146c>)
d03c8144:	7813      	ldrb	r3, [r2, #0]
d03c8146:	2b00      	cmp	r3, #0
d03c8148:	f43f ab15 	beq.w	d03c7776 <main+0x84a>
d03c814c:	3b01      	subs	r3, #1
d03c814e:	7013      	strb	r3, [r2, #0]
d03c8150:	f7ff bb11 	b.w	d03c7776 <main+0x84a>
d03c8154:	4a90      	ldr	r2, [pc, #576]	; (d03c8398 <main+0x146c>)
d03c8156:	4991      	ldr	r1, [pc, #580]	; (d03c839c <main+0x1470>)
d03c8158:	7813      	ldrb	r3, [r2, #0]
d03c815a:	7809      	ldrb	r1, [r1, #0]
d03c815c:	1dd8      	adds	r0, r3, #7
d03c815e:	4288      	cmp	r0, r1
d03c8160:	f4bf ab09 	bcs.w	d03c7776 <main+0x84a>
d03c8164:	3301      	adds	r3, #1
d03c8166:	7013      	strb	r3, [r2, #0]
d03c8168:	f7ff bb05 	b.w	d03c7776 <main+0x84a>
d03c816c:	4b8b      	ldr	r3, [pc, #556]	; (d03c839c <main+0x1470>)
d03c816e:	781a      	ldrb	r2, [r3, #0]
d03c8170:	b13a      	cbz	r2, d03c8182 <main+0x1256>
d03c8172:	4b8b      	ldr	r3, [pc, #556]	; (d03c83a0 <main+0x1474>)
d03c8174:	781b      	ldrb	r3, [r3, #0]
d03c8176:	429a      	cmp	r2, r3
d03c8178:	d903      	bls.n	d03c8182 <main+0x1256>
d03c817a:	4a8a      	ldr	r2, [pc, #552]	; (d03c83a4 <main+0x1478>)
d03c817c:	5cd2      	ldrb	r2, [r2, r3]
d03c817e:	2a05      	cmp	r2, #5
d03c8180:	d004      	beq.n	d03c818c <main+0x1260>
d03c8182:	4889      	ldr	r0, [pc, #548]	; (d03c83a8 <main+0x147c>)
d03c8184:	f7f9 f932 	bl	d03c13ec <ui_set_status>
d03c8188:	f7ff baf5 	b.w	d03c7776 <main+0x84a>
d03c818c:	4e87      	ldr	r6, [pc, #540]	; (d03c83ac <main+0x1480>)
d03c818e:	4988      	ldr	r1, [pc, #544]	; (d03c83b0 <main+0x1484>)
d03c8190:	eb06 1643 	add.w	r6, r6, r3, lsl #5
d03c8194:	4c87      	ldr	r4, [pc, #540]	; (d03c83b4 <main+0x1488>)
d03c8196:	4630      	mov	r0, r6
d03c8198:	f001 ff1c 	bl	d03c9fd4 <strcmp>
d03c819c:	4605      	mov	r5, r0
d03c819e:	b9c8      	cbnz	r0, d03c81d4 <main+0x12a8>
d03c81a0:	4985      	ldr	r1, [pc, #532]	; (d03c83b8 <main+0x148c>)
d03c81a2:	4620      	mov	r0, r4
d03c81a4:	f001 ff16 	bl	d03c9fd4 <strcmp>
d03c81a8:	b158      	cbz	r0, d03c81c2 <main+0x1296>
d03c81aa:	212f      	movs	r1, #47	; 0x2f
d03c81ac:	4620      	mov	r0, r4
d03c81ae:	f001 ff2b 	bl	d03ca008 <strrchr>
d03c81b2:	b110      	cbz	r0, d03c81ba <main+0x128e>
d03c81b4:	3407      	adds	r4, #7
d03c81b6:	42a0      	cmp	r0, r4
d03c81b8:	d80a      	bhi.n	d03c81d0 <main+0x12a4>
d03c81ba:	497f      	ldr	r1, [pc, #508]	; (d03c83b8 <main+0x148c>)
d03c81bc:	487d      	ldr	r0, [pc, #500]	; (d03c83b4 <main+0x1488>)
d03c81be:	f001 ff13 	bl	d03c9fe8 <strcpy>
d03c81c2:	f7fb f87b 	bl	d03c32bc <ui_file_refresh>
d03c81c6:	4b63      	ldr	r3, [pc, #396]	; (d03c8354 <main+0x1428>)
d03c81c8:	2201      	movs	r2, #1
d03c81ca:	701a      	strb	r2, [r3, #0]
d03c81cc:	f7ff bad3 	b.w	d03c7776 <main+0x84a>
d03c81d0:	7005      	strb	r5, [r0, #0]
d03c81d2:	e7f6      	b.n	d03c81c2 <main+0x1296>
d03c81d4:	7822      	ldrb	r2, [r4, #0]
d03c81d6:	2160      	movs	r1, #96	; 0x60
d03c81d8:	4b78      	ldr	r3, [pc, #480]	; (d03c83bc <main+0x1490>)
d03c81da:	eb0d 0001 	add.w	r0, sp, r1
d03c81de:	9600      	str	r6, [sp, #0]
d03c81e0:	2a00      	cmp	r2, #0
d03c81e2:	bf18      	it	ne
d03c81e4:	4623      	movne	r3, r4
d03c81e6:	4a76      	ldr	r2, [pc, #472]	; (d03c83c0 <main+0x1494>)
d03c81e8:	f001 fec0 	bl	d03c9f6c <sniprintf>
d03c81ec:	ab18      	add	r3, sp, #96	; 0x60
d03c81ee:	4a75      	ldr	r2, [pc, #468]	; (d03c83c4 <main+0x1498>)
d03c81f0:	2160      	movs	r1, #96	; 0x60
d03c81f2:	4620      	mov	r0, r4
d03c81f4:	f001 feba 	bl	d03c9f6c <sniprintf>
d03c81f8:	e7e3      	b.n	d03c81c2 <main+0x1296>
d03c81fa:	2002      	movs	r0, #2
d03c81fc:	f7fd fe16 	bl	d03c5e2c <ui_load_selected_file>
d03c8200:	f7ff bab9 	b.w	d03c7776 <main+0x84a>
d03c8204:	2001      	movs	r0, #1
d03c8206:	f7fd fe11 	bl	d03c5e2c <ui_load_selected_file>
d03c820a:	f7ff bab4 	b.w	d03c7776 <main+0x84a>
d03c820e:	2003      	movs	r0, #3
d03c8210:	f7fd fe0c 	bl	d03c5e2c <ui_load_selected_file>
d03c8214:	f7ff baaf 	b.w	d03c7776 <main+0x84a>
d03c8218:	2004      	movs	r0, #4
d03c821a:	f7fd fe07 	bl	d03c5e2c <ui_load_selected_file>
d03c821e:	f7ff baaa 	b.w	d03c7776 <main+0x84a>
d03c8222:	4b69      	ldr	r3, [pc, #420]	; (d03c83c8 <main+0x149c>)
d03c8224:	2200      	movs	r2, #0
d03c8226:	4869      	ldr	r0, [pc, #420]	; (d03c83cc <main+0x14a0>)
d03c8228:	701a      	strb	r2, [r3, #0]
d03c822a:	f7f9 f8df 	bl	d03c13ec <ui_set_status>
d03c822e:	f7ff baa2 	b.w	d03c7776 <main+0x84a>
d03c8232:	4867      	ldr	r0, [pc, #412]	; (d03c83d0 <main+0x14a4>)
d03c8234:	f001 fee0 	bl	d03c9ff8 <strlen>
d03c8238:	4966      	ldr	r1, [pc, #408]	; (d03c83d4 <main+0x14a8>)
d03c823a:	b2c4      	uxtb	r4, r0
d03c823c:	780b      	ldrb	r3, [r1, #0]
d03c823e:	42a3      	cmp	r3, r4
d03c8240:	bf88      	it	hi
d03c8242:	700c      	strbhi	r4, [r1, #0]
d03c8244:	2800      	cmp	r0, #0
d03c8246:	f43f aa96 	beq.w	d03c7776 <main+0x84a>
d03c824a:	780b      	ldrb	r3, [r1, #0]
d03c824c:	2b00      	cmp	r3, #0
d03c824e:	f43f aa92 	beq.w	d03c7776 <main+0x84a>
d03c8252:	3b01      	subs	r3, #1
d03c8254:	4a5e      	ldr	r2, [pc, #376]	; (d03c83d0 <main+0x14a4>)
d03c8256:	b2d8      	uxtb	r0, r3
d03c8258:	fa52 f383 	uxtab	r3, r2, r3
d03c825c:	4602      	mov	r2, r0
d03c825e:	4294      	cmp	r4, r2
d03c8260:	d808      	bhi.n	d03c8274 <main+0x1348>
d03c8262:	4b5d      	ldr	r3, [pc, #372]	; (d03c83d8 <main+0x14ac>)
d03c8264:	2200      	movs	r2, #0
d03c8266:	7008      	strb	r0, [r1, #0]
d03c8268:	701a      	strb	r2, [r3, #0]
d03c826a:	2201      	movs	r2, #1
d03c826c:	4b5b      	ldr	r3, [pc, #364]	; (d03c83dc <main+0x14b0>)
d03c826e:	701a      	strb	r2, [r3, #0]
d03c8270:	f7ff ba81 	b.w	d03c7776 <main+0x84a>
d03c8274:	785d      	ldrb	r5, [r3, #1]
d03c8276:	3201      	adds	r2, #1
d03c8278:	f803 5b01 	strb.w	r5, [r3], #1
d03c827c:	b2d2      	uxtb	r2, r2
d03c827e:	e7ee      	b.n	d03c825e <main+0x1332>
d03c8280:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c8284:	f7f9 fb84 	bl	d03c1990 <ui_keyboard_move_caret>
d03c8288:	f7ff ba75 	b.w	d03c7776 <main+0x84a>
d03c828c:	2001      	movs	r0, #1
d03c828e:	f7f9 fb7f 	bl	d03c1990 <ui_keyboard_move_caret>
d03c8292:	f7ff ba70 	b.w	d03c7776 <main+0x84a>
d03c8296:	2300      	movs	r3, #0
d03c8298:	4a4d      	ldr	r2, [pc, #308]	; (d03c83d0 <main+0x14a4>)
d03c829a:	7013      	strb	r3, [r2, #0]
d03c829c:	4a4d      	ldr	r2, [pc, #308]	; (d03c83d4 <main+0x14a8>)
d03c829e:	7013      	strb	r3, [r2, #0]
d03c82a0:	4a4d      	ldr	r2, [pc, #308]	; (d03c83d8 <main+0x14ac>)
d03c82a2:	7013      	strb	r3, [r2, #0]
d03c82a4:	2201      	movs	r2, #1
d03c82a6:	4b4d      	ldr	r3, [pc, #308]	; (d03c83dc <main+0x14b0>)
d03c82a8:	701a      	strb	r2, [r3, #0]
d03c82aa:	f7ff ba64 	b.w	d03c7776 <main+0x84a>
d03c82ae:	2002      	movs	r0, #2
d03c82b0:	f7fe fde4 	bl	d03c6e7c <ui_keyboard_commit_save>
d03c82b4:	f7ff ba5f 	b.w	d03c7776 <main+0x84a>
d03c82b8:	2001      	movs	r0, #1
d03c82ba:	f7fe fddf 	bl	d03c6e7c <ui_keyboard_commit_save>
d03c82be:	f7ff ba5a 	b.w	d03c7776 <main+0x84a>
d03c82c2:	2003      	movs	r0, #3
d03c82c4:	f7fe fdda 	bl	d03c6e7c <ui_keyboard_commit_save>
d03c82c8:	f7ff ba55 	b.w	d03c7776 <main+0x84a>
d03c82cc:	2004      	movs	r0, #4
d03c82ce:	f7fe fdd5 	bl	d03c6e7c <ui_keyboard_commit_save>
d03c82d2:	f7ff ba50 	b.w	d03c7776 <main+0x84a>
d03c82d6:	4b3c      	ldr	r3, [pc, #240]	; (d03c83c8 <main+0x149c>)
d03c82d8:	2200      	movs	r2, #0
d03c82da:	4841      	ldr	r0, [pc, #260]	; (d03c83e0 <main+0x14b4>)
d03c82dc:	701a      	strb	r2, [r3, #0]
d03c82de:	f7f9 f885 	bl	d03c13ec <ui_set_status>
d03c82e2:	f7ff ba48 	b.w	d03c7776 <main+0x84a>
d03c82e6:	4b3f      	ldr	r3, [pc, #252]	; (d03c83e4 <main+0x14b8>)
d03c82e8:	781b      	ldrb	r3, [r3, #0]
d03c82ea:	2b00      	cmp	r3, #0
d03c82ec:	f43f aa43 	beq.w	d03c7776 <main+0x84a>
d03c82f0:	4c3d      	ldr	r4, [pc, #244]	; (d03c83e8 <main+0x14bc>)
d03c82f2:	7823      	ldrb	r3, [r4, #0]
d03c82f4:	2b02      	cmp	r3, #2
d03c82f6:	d079      	beq.n	d03c83ec <main+0x14c0>
d03c82f8:	7823      	ldrb	r3, [r4, #0]
d03c82fa:	2b01      	cmp	r3, #1
d03c82fc:	d103      	bne.n	d03c8306 <main+0x13da>
d03c82fe:	f7fa fc37 	bl	d03c2b70 <ui_program_save_path.constprop.0>
d03c8302:	2800      	cmp	r0, #0
d03c8304:	d176      	bne.n	d03c83f4 <main+0x14c8>
d03c8306:	7823      	ldrb	r3, [r4, #0]
d03c8308:	2b03      	cmp	r3, #3
d03c830a:	d103      	bne.n	d03c8314 <main+0x13e8>
d03c830c:	f7fa faa2 	bl	d03c2854 <ui_song_save_path.constprop.0>
d03c8310:	2800      	cmp	r0, #0
d03c8312:	d16f      	bne.n	d03c83f4 <main+0x14c8>
d03c8314:	7823      	ldrb	r3, [r4, #0]
d03c8316:	2b04      	cmp	r3, #4
d03c8318:	f47f aa2d 	bne.w	d03c7776 <main+0x84a>
d03c831c:	f7fe fb9e 	bl	d03c6a5c <ui_midi_export_path.constprop.0>
d03c8320:	2800      	cmp	r0, #0
d03c8322:	d167      	bne.n	d03c83f4 <main+0x14c8>
d03c8324:	f7ff ba27 	b.w	d03c7776 <main+0x84a>
d03c8328:	d03cd9d3 	.word	0xd03cd9d3
d03c832c:	d03cf528 	.word	0xd03cf528
d03c8330:	d03cf524 	.word	0xd03cf524
d03c8334:	d03cbe78 	.word	0xd03cbe78
d03c8338:	d03cf3a2 	.word	0xd03cf3a2
d03c833c:	d03cc608 	.word	0xd03cc608
d03c8340:	d03cf529 	.word	0xd03cf529
d03c8344:	d03cf522 	.word	0xd03cf522
d03c8348:	d03cf531 	.word	0xd03cf531
d03c834c:	d03cf523 	.word	0xd03cf523
d03c8350:	d03cbe91 	.word	0xd03cbe91
d03c8354:	d03cd0e0 	.word	0xd03cd0e0
d03c8358:	d03cd09c 	.word	0xd03cd09c
d03c835c:	d03cd0a5 	.word	0xd03cd0a5
d03c8360:	d03cd0a4 	.word	0xd03cd0a4
d03c8364:	d03ccf54 	.word	0xd03ccf54
d03c8368:	d03ccf58 	.word	0xd03ccf58
d03c836c:	d03ccf56 	.word	0xd03ccf56
d03c8370:	d03cd0a0 	.word	0xd03cd0a0
d03c8374:	d03ccf50 	.word	0xd03ccf50
d03c8378:	d03ccf64 	.word	0xd03ccf64
d03c837c:	d03ccf62 	.word	0xd03ccf62
d03c8380:	d03ccf74 	.word	0xd03ccf74
d03c8384:	d03ccf6c 	.word	0xd03ccf6c
d03c8388:	d03cf36b 	.word	0xd03cf36b
d03c838c:	d03ccf8c 	.word	0xd03ccf8c
d03c8390:	d03cbea9 	.word	0xd03cbea9
d03c8394:	d03cbdeb 	.word	0xd03cbdeb
d03c8398:	d03ce2b9 	.word	0xd03ce2b9
d03c839c:	d03cda18 	.word	0xd03cda18
d03c83a0:	d03ce2ba 	.word	0xd03ce2ba
d03c83a4:	d03cda79 	.word	0xd03cda79
d03c83a8:	d03cbebb 	.word	0xd03cbebb
d03c83ac:	d03cdab9 	.word	0xd03cdab9
d03c83b0:	d03cb513 	.word	0xd03cb513
d03c83b4:	d03cda19 	.word	0xd03cda19
d03c83b8:	d03cb50b 	.word	0xd03cb50b
d03c83bc:	d03cb338 	.word	0xd03cb338
d03c83c0:	d03cb4fd 	.word	0xd03cb4fd
d03c83c4:	d03cb944 	.word	0xd03cb944
d03c83c8:	d03cd9d4 	.word	0xd03cd9d4
d03c83cc:	d03cbecb 	.word	0xd03cbecb
d03c83d0:	d03cf34a 	.word	0xd03cf34a
d03c83d4:	d03cf348 	.word	0xd03cf348
d03c83d8:	d03cf52b 	.word	0xd03cf52b
d03c83dc:	d03cf52a 	.word	0xd03cf52a
d03c83e0:	d03cbeda 	.word	0xd03cbeda
d03c83e4:	d03cf2d1 	.word	0xd03cf2d1
d03c83e8:	d03cf349 	.word	0xd03cf349
d03c83ec:	f7fa faea 	bl	d03c29c4 <ui_project_save_path.constprop.0>
d03c83f0:	2800      	cmp	r0, #0
d03c83f2:	d081      	beq.n	d03c82f8 <main+0x13cc>
d03c83f4:	4b79      	ldr	r3, [pc, #484]	; (d03c85dc <main+0x16b0>)
d03c83f6:	2200      	movs	r2, #0
d03c83f8:	701a      	strb	r2, [r3, #0]
d03c83fa:	f7fa ff5f 	bl	d03c32bc <ui_file_refresh>
d03c83fe:	f7ff b9ba 	b.w	d03c7776 <main+0x84a>
d03c8402:	4b76      	ldr	r3, [pc, #472]	; (d03c85dc <main+0x16b0>)
d03c8404:	2202      	movs	r2, #2
d03c8406:	4876      	ldr	r0, [pc, #472]	; (d03c85e0 <main+0x16b4>)
d03c8408:	701a      	strb	r2, [r3, #0]
d03c840a:	f7f8 ffef 	bl	d03c13ec <ui_set_status>
d03c840e:	f7ff b9b2 	b.w	d03c7776 <main+0x84a>
d03c8412:	f7f9 fb3d 	bl	d03c1a90 <seq_stop_playback_notes>
d03c8416:	2400      	movs	r4, #0
d03c8418:	4b72      	ldr	r3, [pc, #456]	; (d03c85e4 <main+0x16b8>)
d03c841a:	4620      	mov	r0, r4
d03c841c:	701c      	strb	r4, [r3, #0]
d03c841e:	4b72      	ldr	r3, [pc, #456]	; (d03c85e8 <main+0x16bc>)
d03c8420:	701c      	strb	r4, [r3, #0]
d03c8422:	4b72      	ldr	r3, [pc, #456]	; (d03c85ec <main+0x16c0>)
d03c8424:	801c      	strh	r4, [r3, #0]
d03c8426:	4b72      	ldr	r3, [pc, #456]	; (d03c85f0 <main+0x16c4>)
d03c8428:	601c      	str	r4, [r3, #0]
d03c842a:	4b72      	ldr	r3, [pc, #456]	; (d03c85f4 <main+0x16c8>)
d03c842c:	681a      	ldr	r2, [r3, #0]
d03c842e:	4b72      	ldr	r3, [pc, #456]	; (d03c85f8 <main+0x16cc>)
d03c8430:	601a      	str	r2, [r3, #0]
d03c8432:	f7f9 f9ed 	bl	d03c1810 <seq_playback_sync>
d03c8436:	4b71      	ldr	r3, [pc, #452]	; (d03c85fc <main+0x16d0>)
d03c8438:	2201      	movs	r2, #1
d03c843a:	4621      	mov	r1, r4
d03c843c:	4870      	ldr	r0, [pc, #448]	; (d03c8600 <main+0x16d4>)
d03c843e:	701a      	strb	r2, [r3, #0]
d03c8440:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c8444:	f001 fa88 	bl	d03c9958 <memset>
d03c8448:	486e      	ldr	r0, [pc, #440]	; (d03c8604 <main+0x16d8>)
d03c844a:	f7f8 ffcf 	bl	d03c13ec <ui_set_status>
d03c844e:	f7ff b992 	b.w	d03c7776 <main+0x84a>
d03c8452:	4b6d      	ldr	r3, [pc, #436]	; (d03c8608 <main+0x16dc>)
d03c8454:	781a      	ldrb	r2, [r3, #0]
d03c8456:	b1a2      	cbz	r2, d03c8482 <main+0x1556>
d03c8458:	2100      	movs	r1, #0
d03c845a:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c845e:	4868      	ldr	r0, [pc, #416]	; (d03c8600 <main+0x16d4>)
d03c8460:	7019      	strb	r1, [r3, #0]
d03c8462:	4b6a      	ldr	r3, [pc, #424]	; (d03c860c <main+0x16e0>)
d03c8464:	7019      	strb	r1, [r3, #0]
d03c8466:	f001 fa77 	bl	d03c9958 <memset>
d03c846a:	4b69      	ldr	r3, [pc, #420]	; (d03c8610 <main+0x16e4>)
d03c846c:	4a69      	ldr	r2, [pc, #420]	; (d03c8614 <main+0x16e8>)
d03c846e:	7818      	ldrb	r0, [r3, #0]
d03c8470:	4b69      	ldr	r3, [pc, #420]	; (d03c8618 <main+0x16ec>)
d03c8472:	2800      	cmp	r0, #0
d03c8474:	bf14      	ite	ne
d03c8476:	4610      	movne	r0, r2
d03c8478:	4618      	moveq	r0, r3
d03c847a:	f7f8 ffb7 	bl	d03c13ec <ui_set_status>
d03c847e:	f7ff b97a 	b.w	d03c7776 <main+0x84a>
d03c8482:	4b58      	ldr	r3, [pc, #352]	; (d03c85e4 <main+0x16b8>)
d03c8484:	7819      	ldrb	r1, [r3, #0]
d03c8486:	b139      	cbz	r1, d03c8498 <main+0x156c>
d03c8488:	2001      	movs	r0, #1
d03c848a:	f7f9 fb15 	bl	d03c1ab8 <seq_stop_transport>
d03c848e:	4863      	ldr	r0, [pc, #396]	; (d03c861c <main+0x16f0>)
d03c8490:	f7f8 ffac 	bl	d03c13ec <ui_set_status>
d03c8494:	f7ff b96f 	b.w	d03c7776 <main+0x84a>
d03c8498:	4a5c      	ldr	r2, [pc, #368]	; (d03c860c <main+0x16e0>)
d03c849a:	4859      	ldr	r0, [pc, #356]	; (d03c8600 <main+0x16d4>)
d03c849c:	7814      	ldrb	r4, [r2, #0]
d03c849e:	fab4 f384 	clz	r3, r4
d03c84a2:	095b      	lsrs	r3, r3, #5
d03c84a4:	7013      	strb	r3, [r2, #0]
d03c84a6:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c84aa:	f001 fa55 	bl	d03c9958 <memset>
d03c84ae:	4b5c      	ldr	r3, [pc, #368]	; (d03c8620 <main+0x16f4>)
d03c84b0:	485c      	ldr	r0, [pc, #368]	; (d03c8624 <main+0x16f8>)
d03c84b2:	2c00      	cmp	r4, #0
d03c84b4:	bf18      	it	ne
d03c84b6:	4618      	movne	r0, r3
d03c84b8:	f7f8 ff98 	bl	d03c13ec <ui_set_status>
d03c84bc:	f7ff b95b 	b.w	d03c7776 <main+0x84a>
d03c84c0:	4d53      	ldr	r5, [pc, #332]	; (d03c8610 <main+0x16e4>)
d03c84c2:	4c51      	ldr	r4, [pc, #324]	; (d03c8608 <main+0x16dc>)
d03c84c4:	782b      	ldrb	r3, [r5, #0]
d03c84c6:	7822      	ldrb	r2, [r4, #0]
d03c84c8:	4313      	orrs	r3, r2
d03c84ca:	4a46      	ldr	r2, [pc, #280]	; (d03c85e4 <main+0x16b8>)
d03c84cc:	7812      	ldrb	r2, [r2, #0]
d03c84ce:	4313      	orrs	r3, r2
d03c84d0:	d007      	beq.n	d03c84e2 <main+0x15b6>
d03c84d2:	2001      	movs	r0, #1
d03c84d4:	f7f9 faf0 	bl	d03c1ab8 <seq_stop_transport>
d03c84d8:	4853      	ldr	r0, [pc, #332]	; (d03c8628 <main+0x16fc>)
d03c84da:	f7f8 ff87 	bl	d03c13ec <ui_set_status>
d03c84de:	f7ff b94a 	b.w	d03c7776 <main+0x84a>
d03c84e2:	4b4a      	ldr	r3, [pc, #296]	; (d03c860c <main+0x16e0>)
d03c84e4:	781e      	ldrb	r6, [r3, #0]
d03c84e6:	b11e      	cbz	r6, d03c84f0 <main+0x15c4>
d03c84e8:	f7f9 fc1c 	bl	d03c1d24 <seq_begin_count_in>
d03c84ec:	f7ff b943 	b.w	d03c7776 <main+0x84a>
d03c84f0:	f7f9 face 	bl	d03c1a90 <seq_stop_playback_notes>
d03c84f4:	2301      	movs	r3, #1
d03c84f6:	7026      	strb	r6, [r4, #0]
d03c84f8:	702b      	strb	r3, [r5, #0]
d03c84fa:	4b3e      	ldr	r3, [pc, #248]	; (d03c85f4 <main+0x16c8>)
d03c84fc:	681a      	ldr	r2, [r3, #0]
d03c84fe:	4b3e      	ldr	r3, [pc, #248]	; (d03c85f8 <main+0x16cc>)
d03c8500:	601a      	str	r2, [r3, #0]
d03c8502:	4b3b      	ldr	r3, [pc, #236]	; (d03c85f0 <main+0x16c4>)
d03c8504:	6818      	ldr	r0, [r3, #0]
d03c8506:	f7f9 f983 	bl	d03c1810 <seq_playback_sync>
d03c850a:	4848      	ldr	r0, [pc, #288]	; (d03c862c <main+0x1700>)
d03c850c:	f7f8 ff6e 	bl	d03c13ec <ui_set_status>
d03c8510:	f7ff b931 	b.w	d03c7776 <main+0x84a>
d03c8514:	4b3d      	ldr	r3, [pc, #244]	; (d03c860c <main+0x16e0>)
d03c8516:	781c      	ldrb	r4, [r3, #0]
d03c8518:	2c00      	cmp	r4, #0
d03c851a:	d1e5      	bne.n	d03c84e8 <main+0x15bc>
d03c851c:	f7f9 fab8 	bl	d03c1a90 <seq_stop_playback_notes>
d03c8520:	4b3b      	ldr	r3, [pc, #236]	; (d03c8610 <main+0x16e4>)
d03c8522:	2201      	movs	r2, #1
d03c8524:	701a      	strb	r2, [r3, #0]
d03c8526:	4b38      	ldr	r3, [pc, #224]	; (d03c8608 <main+0x16dc>)
d03c8528:	701c      	strb	r4, [r3, #0]
d03c852a:	4b32      	ldr	r3, [pc, #200]	; (d03c85f4 <main+0x16c8>)
d03c852c:	681a      	ldr	r2, [r3, #0]
d03c852e:	4b32      	ldr	r3, [pc, #200]	; (d03c85f8 <main+0x16cc>)
d03c8530:	601a      	str	r2, [r3, #0]
d03c8532:	4b2f      	ldr	r3, [pc, #188]	; (d03c85f0 <main+0x16c4>)
d03c8534:	6818      	ldr	r0, [r3, #0]
d03c8536:	f7f9 f96b 	bl	d03c1810 <seq_playback_sync>
d03c853a:	483d      	ldr	r0, [pc, #244]	; (d03c8630 <main+0x1704>)
d03c853c:	f7f8 ff56 	bl	d03c13ec <ui_set_status>
d03c8540:	f7ff b919 	b.w	d03c7776 <main+0x84a>
d03c8544:	4b3b      	ldr	r3, [pc, #236]	; (d03c8634 <main+0x1708>)
d03c8546:	8818      	ldrh	r0, [r3, #0]
d03c8548:	3801      	subs	r0, #1
d03c854a:	b200      	sxth	r0, r0
d03c854c:	f7f8 fb76 	bl	d03c0c3c <seq_set_bpm>
d03c8550:	f7ff b911 	b.w	d03c7776 <main+0x84a>
d03c8554:	4b37      	ldr	r3, [pc, #220]	; (d03c8634 <main+0x1708>)
d03c8556:	8818      	ldrh	r0, [r3, #0]
d03c8558:	3001      	adds	r0, #1
d03c855a:	b200      	sxth	r0, r0
d03c855c:	f7f8 fb6e 	bl	d03c0c3c <seq_set_bpm>
d03c8560:	f7ff b909 	b.w	d03c7776 <main+0x84a>
d03c8564:	4a34      	ldr	r2, [pc, #208]	; (d03c8638 <main+0x170c>)
d03c8566:	7813      	ldrb	r3, [r2, #0]
d03c8568:	fab3 f383 	clz	r3, r3
d03c856c:	095b      	lsrs	r3, r3, #5
d03c856e:	7013      	strb	r3, [r2, #0]
d03c8570:	2201      	movs	r2, #1
d03c8572:	4b22      	ldr	r3, [pc, #136]	; (d03c85fc <main+0x16d0>)
d03c8574:	701a      	strb	r2, [r3, #0]
d03c8576:	f7ff b8fe 	b.w	d03c7776 <main+0x84a>
d03c857a:	4a30      	ldr	r2, [pc, #192]	; (d03c863c <main+0x1710>)
d03c857c:	7813      	ldrb	r3, [r2, #0]
d03c857e:	2b00      	cmp	r3, #0
d03c8580:	f43f a8f9 	beq.w	d03c7776 <main+0x84a>
d03c8584:	3b01      	subs	r3, #1
d03c8586:	7013      	strb	r3, [r2, #0]
d03c8588:	2201      	movs	r2, #1
d03c858a:	4b1c      	ldr	r3, [pc, #112]	; (d03c85fc <main+0x16d0>)
d03c858c:	701a      	strb	r2, [r3, #0]
d03c858e:	f7ff b8f2 	b.w	d03c7776 <main+0x84a>
d03c8592:	4a2a      	ldr	r2, [pc, #168]	; (d03c863c <main+0x1710>)
d03c8594:	7813      	ldrb	r3, [r2, #0]
d03c8596:	2b02      	cmp	r3, #2
d03c8598:	f63f a8ed 	bhi.w	d03c7776 <main+0x84a>
d03c859c:	3301      	adds	r3, #1
d03c859e:	7013      	strb	r3, [r2, #0]
d03c85a0:	2201      	movs	r2, #1
d03c85a2:	4b16      	ldr	r3, [pc, #88]	; (d03c85fc <main+0x16d0>)
d03c85a4:	701a      	strb	r2, [r3, #0]
d03c85a6:	f7ff b8e6 	b.w	d03c7776 <main+0x84a>
d03c85aa:	4b25      	ldr	r3, [pc, #148]	; (d03c8640 <main+0x1714>)
d03c85ac:	2202      	movs	r2, #2
d03c85ae:	701a      	strb	r2, [r3, #0]
d03c85b0:	f7ff b8e1 	b.w	d03c7776 <main+0x84a>
d03c85b4:	4c23      	ldr	r4, [pc, #140]	; (d03c8644 <main+0x1718>)
d03c85b6:	7823      	ldrb	r3, [r4, #0]
d03c85b8:	b143      	cbz	r3, d03c85cc <main+0x16a0>
d03c85ba:	f7f9 fa3b 	bl	d03c1a34 <seq_midi_out_all_notes_off>
d03c85be:	2300      	movs	r3, #0
d03c85c0:	4821      	ldr	r0, [pc, #132]	; (d03c8648 <main+0x171c>)
d03c85c2:	7023      	strb	r3, [r4, #0]
d03c85c4:	f7f8 ff12 	bl	d03c13ec <ui_set_status>
d03c85c8:	f7ff b8d5 	b.w	d03c7776 <main+0x84a>
d03c85cc:	2301      	movs	r3, #1
d03c85ce:	481f      	ldr	r0, [pc, #124]	; (d03c864c <main+0x1720>)
d03c85d0:	7023      	strb	r3, [r4, #0]
d03c85d2:	f7f8 ff0b 	bl	d03c13ec <ui_set_status>
d03c85d6:	f7ff b8ce 	b.w	d03c7776 <main+0x84a>
d03c85da:	bf00      	nop
d03c85dc:	d03cd9d4 	.word	0xd03cd9d4
d03c85e0:	d03cbee9 	.word	0xd03cbee9
d03c85e4:	d03ccf54 	.word	0xd03ccf54
d03c85e8:	d03ccf58 	.word	0xd03ccf58
d03c85ec:	d03ccf56 	.word	0xd03ccf56
d03c85f0:	d03cd0a0 	.word	0xd03cd0a0
d03c85f4:	d03ccf50 	.word	0xd03ccf50
d03c85f8:	d03ccf64 	.word	0xd03ccf64
d03c85fc:	d03cf36b 	.word	0xd03cf36b
d03c8600:	d03ccf8c 	.word	0xd03ccf8c
d03c8604:	d03cbefd 	.word	0xd03cbefd
d03c8608:	d03cd0a5 	.word	0xd03cd0a5
d03c860c:	d03cd0a4 	.word	0xd03cd0a4
d03c8610:	d03cd09c 	.word	0xd03cd09c
d03c8614:	d03cbda5 	.word	0xd03cbda5
d03c8618:	d03cbdb1 	.word	0xd03cbdb1
d03c861c:	d03cbf0f 	.word	0xd03cbf0f
d03c8620:	d03cbdc9 	.word	0xd03cbdc9
d03c8624:	d03cbdbc 	.word	0xd03cbdbc
d03c8628:	d03cbf20 	.word	0xd03cbf20
d03c862c:	d03cbf32 	.word	0xd03cbf32
d03c8630:	d03cbf44 	.word	0xd03cbf44
d03c8634:	d03ccf4c 	.word	0xd03ccf4c
d03c8638:	d03cd0a6 	.word	0xd03cd0a6
d03c863c:	d03cd0a7 	.word	0xd03cd0a7
d03c8640:	d03cd9d3 	.word	0xd03cd9d3
d03c8644:	d03ccf6a 	.word	0xd03ccf6a
d03c8648:	d03cbf55 	.word	0xd03cbf55
d03c864c:	d03cbf6c 	.word	0xd03cbf6c
d03c8650:	4ab3      	ldr	r2, [pc, #716]	; (d03c8920 <main+0x19f4>)
d03c8652:	7813      	ldrb	r3, [r2, #0]
d03c8654:	b12b      	cbz	r3, d03c8662 <main+0x1736>
d03c8656:	3b01      	subs	r3, #1
d03c8658:	b2db      	uxtb	r3, r3
d03c865a:	7013      	strb	r3, [r2, #0]
d03c865c:	b90b      	cbnz	r3, d03c8662 <main+0x1736>
d03c865e:	4ab1      	ldr	r2, [pc, #708]	; (d03c8924 <main+0x19f8>)
d03c8660:	7013      	strb	r3, [r2, #0]
d03c8662:	4bb1      	ldr	r3, [pc, #708]	; (d03c8928 <main+0x19fc>)
d03c8664:	781d      	ldrb	r5, [r3, #0]
d03c8666:	2d00      	cmp	r5, #0
d03c8668:	f040 86dc 	bne.w	d03c9424 <main+0x24f8>
d03c866c:	4eaf      	ldr	r6, [pc, #700]	; (d03c892c <main+0x1a00>)
d03c866e:	4bb0      	ldr	r3, [pc, #704]	; (d03c8930 <main+0x1a04>)
d03c8670:	f896 8000 	ldrb.w	r8, [r6]
d03c8674:	f88d 5054 	strb.w	r5, [sp, #84]	; 0x54
d03c8678:	f813 9008 	ldrb.w	r9, [r3, r8]
d03c867c:	f88d 5060 	strb.w	r5, [sp, #96]	; 0x60
d03c8680:	4648      	mov	r0, r9
d03c8682:	f7f8 fc03 	bl	d03c0e8c <vm_program_length>
d03c8686:	4bab      	ldr	r3, [pc, #684]	; (d03c8934 <main+0x1a08>)
d03c8688:	4604      	mov	r4, r0
d03c868a:	701d      	strb	r5, [r3, #0]
d03c868c:	4daa      	ldr	r5, [pc, #680]	; (d03c8938 <main+0x1a0c>)
d03c868e:	782b      	ldrb	r3, [r5, #0]
d03c8690:	2b04      	cmp	r3, #4
d03c8692:	d105      	bne.n	d03c86a0 <main+0x1774>
d03c8694:	f019 0f80 	tst.w	r9, #128	; 0x80
d03c8698:	d102      	bne.n	d03c86a0 <main+0x1774>
d03c869a:	2800      	cmp	r0, #0
d03c869c:	f040 82a7 	bne.w	d03c8bee <main+0x1cc2>
d03c86a0:	4ca6      	ldr	r4, [pc, #664]	; (d03c893c <main+0x1a10>)
d03c86a2:	7823      	ldrb	r3, [r4, #0]
d03c86a4:	b13b      	cbz	r3, d03c86b6 <main+0x178a>
d03c86a6:	4ba6      	ldr	r3, [pc, #664]	; (d03c8940 <main+0x1a14>)
d03c86a8:	781a      	ldrb	r2, [r3, #0]
d03c86aa:	4ba6      	ldr	r3, [pc, #664]	; (d03c8944 <main+0x1a18>)
d03c86ac:	701a      	strb	r2, [r3, #0]
d03c86ae:	f7f8 fc03 	bl	d03c0eb8 <ui_clamp_vm_scroll>
d03c86b2:	2300      	movs	r3, #0
d03c86b4:	7023      	strb	r3, [r4, #0]
d03c86b6:	782d      	ldrb	r5, [r5, #0]
d03c86b8:	4ba3      	ldr	r3, [pc, #652]	; (d03c8948 <main+0x1a1c>)
d03c86ba:	48a4      	ldr	r0, [pc, #656]	; (d03c894c <main+0x1a20>)
d03c86bc:	442b      	add	r3, r5
d03c86be:	7831      	ldrb	r1, [r6, #0]
d03c86c0:	4058      	eors	r0, r3
d03c86c2:	f7f8 fdd1 	bl	d03c1268 <ui_hash_step>
d03c86c6:	4ba2      	ldr	r3, [pc, #648]	; (d03c8950 <main+0x1a24>)
d03c86c8:	7819      	ldrb	r1, [r3, #0]
d03c86ca:	f7f8 fdcd 	bl	d03c1268 <ui_hash_step>
d03c86ce:	4aa1      	ldr	r2, [pc, #644]	; (d03c8954 <main+0x1a28>)
d03c86d0:	4603      	mov	r3, r0
d03c86d2:	4614      	mov	r4, r2
d03c86d4:	920f      	str	r2, [sp, #60]	; 0x3c
d03c86d6:	2200      	movs	r2, #0
d03c86d8:	4618      	mov	r0, r3
d03c86da:	f814 1b01 	ldrb.w	r1, [r4], #1
d03c86de:	f7f8 fdc3 	bl	d03c1268 <ui_hash_step>
d03c86e2:	3201      	adds	r2, #1
d03c86e4:	4603      	mov	r3, r0
d03c86e6:	b2d2      	uxtb	r2, r2
d03c86e8:	2a04      	cmp	r2, #4
d03c86ea:	d1f5      	bne.n	d03c86d8 <main+0x17ac>
d03c86ec:	4b95      	ldr	r3, [pc, #596]	; (d03c8944 <main+0x1a18>)
d03c86ee:	f893 9000 	ldrb.w	r9, [r3]
d03c86f2:	4649      	mov	r1, r9
d03c86f4:	f7f8 fdb8 	bl	d03c1268 <ui_hash_step>
d03c86f8:	4b97      	ldr	r3, [pc, #604]	; (d03c8958 <main+0x1a2c>)
d03c86fa:	781a      	ldrb	r2, [r3, #0]
d03c86fc:	4611      	mov	r1, r2
d03c86fe:	f7f8 fdb3 	bl	d03c1268 <ui_hash_step>
d03c8702:	4b96      	ldr	r3, [pc, #600]	; (d03c895c <main+0x1a30>)
d03c8704:	f893 8000 	ldrb.w	r8, [r3]
d03c8708:	4641      	mov	r1, r8
d03c870a:	f7f8 fdad 	bl	d03c1268 <ui_hash_step>
d03c870e:	4b94      	ldr	r3, [pc, #592]	; (d03c8960 <main+0x1a34>)
d03c8710:	7819      	ldrb	r1, [r3, #0]
d03c8712:	f7f8 fda9 	bl	d03c1268 <ui_hash_step>
d03c8716:	4b93      	ldr	r3, [pc, #588]	; (d03c8964 <main+0x1a38>)
d03c8718:	7819      	ldrb	r1, [r3, #0]
d03c871a:	f7f8 fda5 	bl	d03c1268 <ui_hash_step>
d03c871e:	2d04      	cmp	r5, #4
d03c8720:	f040 8286 	bne.w	d03c8c30 <main+0x1d04>
d03c8724:	2a00      	cmp	r2, #0
d03c8726:	f000 8285 	beq.w	d03c8c34 <main+0x1d08>
d03c872a:	4b8f      	ldr	r3, [pc, #572]	; (d03c8968 <main+0x1a3c>)
d03c872c:	7819      	ldrb	r1, [r3, #0]
d03c872e:	b2c9      	uxtb	r1, r1
d03c8730:	f7f8 fd9a 	bl	d03c1268 <ui_hash_step>
d03c8734:	4b8d      	ldr	r3, [pc, #564]	; (d03c896c <main+0x1a40>)
d03c8736:	7819      	ldrb	r1, [r3, #0]
d03c8738:	f7f8 fd96 	bl	d03c1268 <ui_hash_step>
d03c873c:	4b8c      	ldr	r3, [pc, #560]	; (d03c8970 <main+0x1a44>)
d03c873e:	781a      	ldrb	r2, [r3, #0]
d03c8740:	4611      	mov	r1, r2
d03c8742:	f7f8 fd91 	bl	d03c1268 <ui_hash_step>
d03c8746:	4b8b      	ldr	r3, [pc, #556]	; (d03c8974 <main+0x1a48>)
d03c8748:	781b      	ldrb	r3, [r3, #0]
d03c874a:	4619      	mov	r1, r3
d03c874c:	9305      	str	r3, [sp, #20]
d03c874e:	f7f8 fd8b 	bl	d03c1268 <ui_hash_step>
d03c8752:	4b89      	ldr	r3, [pc, #548]	; (d03c8978 <main+0x1a4c>)
d03c8754:	781f      	ldrb	r7, [r3, #0]
d03c8756:	4639      	mov	r1, r7
d03c8758:	f7f8 fd86 	bl	d03c1268 <ui_hash_step>
d03c875c:	4b87      	ldr	r3, [pc, #540]	; (d03c897c <main+0x1a50>)
d03c875e:	7819      	ldrb	r1, [r3, #0]
d03c8760:	f7f8 fd82 	bl	d03c1268 <ui_hash_step>
d03c8764:	4b86      	ldr	r3, [pc, #536]	; (d03c8980 <main+0x1a54>)
d03c8766:	7819      	ldrb	r1, [r3, #0]
d03c8768:	f7f8 fd7e 	bl	d03c1268 <ui_hash_step>
d03c876c:	4b85      	ldr	r3, [pc, #532]	; (d03c8984 <main+0x1a58>)
d03c876e:	7819      	ldrb	r1, [r3, #0]
d03c8770:	f7f8 fd7a 	bl	d03c1268 <ui_hash_step>
d03c8774:	2a02      	cmp	r2, #2
d03c8776:	f040 825f 	bne.w	d03c8c38 <main+0x1d0c>
d03c877a:	4b7b      	ldr	r3, [pc, #492]	; (d03c8968 <main+0x1a3c>)
d03c877c:	7819      	ldrb	r1, [r3, #0]
d03c877e:	b2c9      	uxtb	r1, r1
d03c8780:	f7f8 fd72 	bl	d03c1268 <ui_hash_step>
d03c8784:	4b80      	ldr	r3, [pc, #512]	; (d03c8988 <main+0x1a5c>)
d03c8786:	4c81      	ldr	r4, [pc, #516]	; (d03c898c <main+0x1a60>)
d03c8788:	7819      	ldrb	r1, [r3, #0]
d03c878a:	f7f8 fd6d 	bl	d03c1268 <ui_hash_step>
d03c878e:	4b80      	ldr	r3, [pc, #512]	; (d03c8990 <main+0x1a64>)
d03c8790:	8819      	ldrh	r1, [r3, #0]
d03c8792:	f7f8 fd69 	bl	d03c1268 <ui_hash_step>
d03c8796:	4b7f      	ldr	r3, [pc, #508]	; (d03c8994 <main+0x1a68>)
d03c8798:	8819      	ldrh	r1, [r3, #0]
d03c879a:	f7f8 fd65 	bl	d03c1268 <ui_hash_step>
d03c879e:	4b7e      	ldr	r3, [pc, #504]	; (d03c8998 <main+0x1a6c>)
d03c87a0:	7819      	ldrb	r1, [r3, #0]
d03c87a2:	f7f8 fd61 	bl	d03c1268 <ui_hash_step>
d03c87a6:	4b7d      	ldr	r3, [pc, #500]	; (d03c899c <main+0x1a70>)
d03c87a8:	7819      	ldrb	r1, [r3, #0]
d03c87aa:	f7f8 fd5d 	bl	d03c1268 <ui_hash_step>
d03c87ae:	4b7c      	ldr	r3, [pc, #496]	; (d03c89a0 <main+0x1a74>)
d03c87b0:	7819      	ldrb	r1, [r3, #0]
d03c87b2:	f7f8 fd59 	bl	d03c1268 <ui_hash_step>
d03c87b6:	4b7b      	ldr	r3, [pc, #492]	; (d03c89a4 <main+0x1a78>)
d03c87b8:	7819      	ldrb	r1, [r3, #0]
d03c87ba:	f7f8 fd55 	bl	d03c1268 <ui_hash_step>
d03c87be:	4b7a      	ldr	r3, [pc, #488]	; (d03c89a8 <main+0x1a7c>)
d03c87c0:	7819      	ldrb	r1, [r3, #0]
d03c87c2:	f7f8 fd51 	bl	d03c1268 <ui_hash_step>
d03c87c6:	4b79      	ldr	r3, [pc, #484]	; (d03c89ac <main+0x1a80>)
d03c87c8:	7819      	ldrb	r1, [r3, #0]
d03c87ca:	f7f8 fd4d 	bl	d03c1268 <ui_hash_step>
d03c87ce:	4b78      	ldr	r3, [pc, #480]	; (d03c89b0 <main+0x1a84>)
d03c87d0:	8819      	ldrh	r1, [r3, #0]
d03c87d2:	f7f8 fd49 	bl	d03c1268 <ui_hash_step>
d03c87d6:	4b77      	ldr	r3, [pc, #476]	; (d03c89b4 <main+0x1a88>)
d03c87d8:	7819      	ldrb	r1, [r3, #0]
d03c87da:	f7f8 fd45 	bl	d03c1268 <ui_hash_step>
d03c87de:	4b76      	ldr	r3, [pc, #472]	; (d03c89b8 <main+0x1a8c>)
d03c87e0:	7819      	ldrb	r1, [r3, #0]
d03c87e2:	f7f8 fd41 	bl	d03c1268 <ui_hash_step>
d03c87e6:	4b75      	ldr	r3, [pc, #468]	; (d03c89bc <main+0x1a90>)
d03c87e8:	7819      	ldrb	r1, [r3, #0]
d03c87ea:	f7f8 fd3d 	bl	d03c1268 <ui_hash_step>
d03c87ee:	4b74      	ldr	r3, [pc, #464]	; (d03c89c0 <main+0x1a94>)
d03c87f0:	6819      	ldr	r1, [r3, #0]
d03c87f2:	f7f8 fd39 	bl	d03c1268 <ui_hash_step>
d03c87f6:	2200      	movs	r2, #0
d03c87f8:	4684      	mov	ip, r0
d03c87fa:	f814 1b01 	ldrb.w	r1, [r4], #1
d03c87fe:	4660      	mov	r0, ip
d03c8800:	f7f8 fd32 	bl	d03c1268 <ui_hash_step>
d03c8804:	4684      	mov	ip, r0
d03c8806:	b119      	cbz	r1, d03c8810 <main+0x18e4>
d03c8808:	3201      	adds	r2, #1
d03c880a:	b2d2      	uxtb	r2, r2
d03c880c:	2a20      	cmp	r2, #32
d03c880e:	d1f4      	bne.n	d03c87fa <main+0x18ce>
d03c8810:	4c6c      	ldr	r4, [pc, #432]	; (d03c89c4 <main+0x1a98>)
d03c8812:	2200      	movs	r2, #0
d03c8814:	f814 1b01 	ldrb.w	r1, [r4], #1
d03c8818:	4660      	mov	r0, ip
d03c881a:	f7f8 fd25 	bl	d03c1268 <ui_hash_step>
d03c881e:	4684      	mov	ip, r0
d03c8820:	b119      	cbz	r1, d03c882a <main+0x18fe>
d03c8822:	3201      	adds	r2, #1
d03c8824:	b2d2      	uxtb	r2, r2
d03c8826:	2a60      	cmp	r2, #96	; 0x60
d03c8828:	d1f4      	bne.n	d03c8814 <main+0x18e8>
d03c882a:	4a67      	ldr	r2, [pc, #412]	; (d03c89c8 <main+0x1a9c>)
d03c882c:	2600      	movs	r6, #0
d03c882e:	4b67      	ldr	r3, [pc, #412]	; (d03c89cc <main+0x1aa0>)
d03c8830:	eb02 1247 	add.w	r2, r2, r7, lsl #5
d03c8834:	443b      	add	r3, r7
d03c8836:	9306      	str	r3, [sp, #24]
d03c8838:	19bb      	adds	r3, r7, r6
d03c883a:	9905      	ldr	r1, [sp, #20]
d03c883c:	b2db      	uxtb	r3, r3
d03c883e:	4299      	cmp	r1, r3
d03c8840:	d91a      	bls.n	d03c8878 <main+0x194c>
d03c8842:	9b06      	ldr	r3, [sp, #24]
d03c8844:	4660      	mov	r0, ip
d03c8846:	2400      	movs	r4, #0
d03c8848:	f813 1b01 	ldrb.w	r1, [r3], #1
d03c884c:	9306      	str	r3, [sp, #24]
d03c884e:	f7f8 fd0b 	bl	d03c1268 <ui_hash_step>
d03c8852:	4684      	mov	ip, r0
d03c8854:	4613      	mov	r3, r2
d03c8856:	f813 1b01 	ldrb.w	r1, [r3], #1
d03c885a:	4660      	mov	r0, ip
d03c885c:	9311      	str	r3, [sp, #68]	; 0x44
d03c885e:	f7f8 fd03 	bl	d03c1268 <ui_hash_step>
d03c8862:	4684      	mov	ip, r0
d03c8864:	b121      	cbz	r1, d03c8870 <main+0x1944>
d03c8866:	3401      	adds	r4, #1
d03c8868:	9b11      	ldr	r3, [sp, #68]	; 0x44
d03c886a:	b2e4      	uxtb	r4, r4
d03c886c:	2c20      	cmp	r4, #32
d03c886e:	d1f2      	bne.n	d03c8856 <main+0x192a>
d03c8870:	3601      	adds	r6, #1
d03c8872:	3220      	adds	r2, #32
d03c8874:	2e07      	cmp	r6, #7
d03c8876:	d1df      	bne.n	d03c8838 <main+0x190c>
d03c8878:	f1b8 0fff 	cmp.w	r8, #255	; 0xff
d03c887c:	d018      	beq.n	d03c88b0 <main+0x1984>
d03c887e:	4a54      	ldr	r2, [pc, #336]	; (d03c89d0 <main+0x1aa4>)
d03c8880:	2400      	movs	r4, #0
d03c8882:	eb02 0289 	add.w	r2, r2, r9, lsl #2
d03c8886:	eb09 0304 	add.w	r3, r9, r4
d03c888a:	b2db      	uxtb	r3, r3
d03c888c:	2b5f      	cmp	r3, #95	; 0x5f
d03c888e:	d80f      	bhi.n	d03c88b0 <main+0x1984>
d03c8890:	7811      	ldrb	r1, [r2, #0]
d03c8892:	4660      	mov	r0, ip
d03c8894:	f7f8 fce8 	bl	d03c1268 <ui_hash_step>
d03c8898:	3401      	adds	r4, #1
d03c889a:	7851      	ldrb	r1, [r2, #1]
d03c889c:	f7f8 fce4 	bl	d03c1268 <ui_hash_step>
d03c88a0:	8851      	ldrh	r1, [r2, #2]
d03c88a2:	f7f8 fce1 	bl	d03c1268 <ui_hash_step>
d03c88a6:	2c08      	cmp	r4, #8
d03c88a8:	4684      	mov	ip, r0
d03c88aa:	f102 0204 	add.w	r2, r2, #4
d03c88ae:	d1ea      	bne.n	d03c8886 <main+0x195a>
d03c88b0:	4a1f      	ldr	r2, [pc, #124]	; (d03c8930 <main+0x1a04>)
d03c88b2:	4e48      	ldr	r6, [pc, #288]	; (d03c89d4 <main+0x1aa8>)
d03c88b4:	4c48      	ldr	r4, [pc, #288]	; (d03c89d8 <main+0x1aac>)
d03c88b6:	f102 0710 	add.w	r7, r2, #16
d03c88ba:	f812 1b01 	ldrb.w	r1, [r2], #1
d03c88be:	4660      	mov	r0, ip
d03c88c0:	f7f8 fcd2 	bl	d03c1268 <ui_hash_step>
d03c88c4:	f816 1b01 	ldrb.w	r1, [r6], #1
d03c88c8:	f7f8 fcce 	bl	d03c1268 <ui_hash_step>
d03c88cc:	f814 1b01 	ldrb.w	r1, [r4], #1
d03c88d0:	f7f8 fcca 	bl	d03c1268 <ui_hash_step>
d03c88d4:	4297      	cmp	r7, r2
d03c88d6:	4684      	mov	ip, r0
d03c88d8:	d1ef      	bne.n	d03c88ba <main+0x198e>
d03c88da:	4b40      	ldr	r3, [pc, #256]	; (d03c89dc <main+0x1ab0>)
d03c88dc:	4c40      	ldr	r4, [pc, #256]	; (d03c89e0 <main+0x1ab4>)
d03c88de:	781a      	ldrb	r2, [r3, #0]
d03c88e0:	4e40      	ldr	r6, [pc, #256]	; (d03c89e4 <main+0x1ab8>)
d03c88e2:	f002 0101 	and.w	r1, r2, #1
d03c88e6:	f7f8 fcbf 	bl	d03c1268 <ui_hash_step>
d03c88ea:	493f      	ldr	r1, [pc, #252]	; (d03c89e8 <main+0x1abc>)
d03c88ec:	680b      	ldr	r3, [r1, #0]
d03c88ee:	4283      	cmp	r3, r0
d03c88f0:	d106      	bne.n	d03c8900 <main+0x19d4>
d03c88f2:	2d05      	cmp	r5, #5
d03c88f4:	f000 81b2 	beq.w	d03c8c5c <main+0x1d30>
d03c88f8:	9b0e      	ldr	r3, [sp, #56]	; 0x38
d03c88fa:	4293      	cmp	r3, r2
d03c88fc:	f000 83b6 	beq.w	d03c906c <main+0x2140>
d03c8900:	2301      	movs	r3, #1
d03c8902:	2d05      	cmp	r5, #5
d03c8904:	6008      	str	r0, [r1, #0]
d03c8906:	7033      	strb	r3, [r6, #0]
d03c8908:	f000 81aa 	beq.w	d03c8c60 <main+0x1d34>
d03c890c:	f7fc f968 	bl	d03c4be0 <ui_redraw_backbuffer>
d03c8910:	2300      	movs	r3, #0
d03c8912:	7033      	strb	r3, [r6, #0]
d03c8914:	4d32      	ldr	r5, [pc, #200]	; (d03c89e0 <main+0x1ab4>)
d03c8916:	f7f9 fb19 	bl	d03c1f4c <flip_front_buffer>
d03c891a:	4f07      	ldr	r7, [pc, #28]	; (d03c8938 <main+0x1a0c>)
d03c891c:	7b2b      	ldrb	r3, [r5, #12]
d03c891e:	e065      	b.n	d03c89ec <main+0x1ac0>
d03c8920:	d03cf3a0 	.word	0xd03cf3a0
d03c8924:	d03cf378 	.word	0xd03cf378
d03c8928:	d03cda17 	.word	0xd03cda17
d03c892c:	d03cf36a 	.word	0xd03cf36a
d03c8930:	d03ccd04 	.word	0xd03ccd04
d03c8934:	d03cf52f 	.word	0xd03cf52f
d03c8938:	d03cf2d0 	.word	0xd03cf2d0
d03c893c:	d03cf52c 	.word	0xd03cf52c
d03c8940:	d03cf52d 	.word	0xd03cf52d
d03c8944:	d03cf531 	.word	0xd03cf531
d03c8948:	05a6126a 	.word	0x05a6126a
d03c894c:	811c9dc5 	.word	0x811c9dc5
d03c8950:	d03cd9d2 	.word	0xd03cd9d2
d03c8954:	d03cf344 	.word	0xd03cf344
d03c8958:	d03cf523 	.word	0xd03cf523
d03c895c:	d03cf528 	.word	0xd03cf528
d03c8960:	d03cf529 	.word	0xd03cf529
d03c8964:	d03cf522 	.word	0xd03cf522
d03c8968:	d03cf52a 	.word	0xd03cf52a
d03c896c:	d03cd9d3 	.word	0xd03cd9d3
d03c8970:	d03cd9d4 	.word	0xd03cd9d4
d03c8974:	d03cda18 	.word	0xd03cda18
d03c8978:	d03ce2b9 	.word	0xd03ce2b9
d03c897c:	d03ce2ba 	.word	0xd03ce2ba
d03c8980:	d03cf348 	.word	0xd03cf348
d03c8984:	d03cf349 	.word	0xd03cf349
d03c8988:	d03cf331 	.word	0xd03cf331
d03c898c:	d03cf34a 	.word	0xd03cf34a
d03c8990:	d03ccf2e 	.word	0xd03ccf2e
d03c8994:	d03ccd2a 	.word	0xd03ccd2a
d03c8998:	d03ccd28 	.word	0xd03ccd28
d03c899c:	d03cd09c 	.word	0xd03cd09c
d03c89a0:	d03cd0a5 	.word	0xd03cd0a5
d03c89a4:	d03cd0a4 	.word	0xd03cd0a4
d03c89a8:	d03ccf54 	.word	0xd03ccf54
d03c89ac:	d03ccf58 	.word	0xd03ccf58
d03c89b0:	d03ccf4c 	.word	0xd03ccf4c
d03c89b4:	d03cd0a6 	.word	0xd03cd0a6
d03c89b8:	d03cd0a7 	.word	0xd03cd0a7
d03c89bc:	d03ccf6a 	.word	0xd03ccf6a
d03c89c0:	d03ccf74 	.word	0xd03ccf74
d03c89c4:	d03cda19 	.word	0xd03cda19
d03c89c8:	d03cdab9 	.word	0xd03cdab9
d03c89cc:	d03cda79 	.word	0xd03cda79
d03c89d0:	d03cf3a2 	.word	0xd03cf3a2
d03c89d4:	d03ccd14 	.word	0xd03ccd14
d03c89d8:	d03cccf4 	.word	0xd03cccf4
d03c89dc:	d03ce2bb 	.word	0xd03ce2bb
d03c89e0:	2001f000 	.word	0x2001f000
d03c89e4:	d03cd0e0 	.word	0xd03cd0e0
d03c89e8:	d03cd0e4 	.word	0xd03cd0e4
d03c89ec:	462e      	mov	r6, r5
d03c89ee:	7b6a      	ldrb	r2, [r5, #13]
d03c89f0:	46b8      	mov	r8, r7
d03c89f2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c89f6:	7baa      	ldrb	r2, [r5, #14]
d03c89f8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c89fc:	7bea      	ldrb	r2, [r5, #15]
d03c89fe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8a02:	685b      	ldr	r3, [r3, #4]
d03c8a04:	681b      	ldr	r3, [r3, #0]
d03c8a06:	4798      	blx	r3
d03c8a08:	783b      	ldrb	r3, [r7, #0]
d03c8a0a:	2b05      	cmp	r3, #5
d03c8a0c:	f040 8352 	bne.w	d03c90b4 <main+0x2188>
d03c8a10:	2600      	movs	r6, #0
d03c8a12:	9b10      	ldr	r3, [sp, #64]	; 0x40
d03c8a14:	20e0      	movs	r0, #224	; 0xe0
d03c8a16:	4f89      	ldr	r7, [pc, #548]	; (d03c8c3c <main+0x1d10>)
d03c8a18:	701e      	strb	r6, [r3, #0]
d03c8a1a:	46b3      	mov	fp, r6
d03c8a1c:	7b2b      	ldrb	r3, [r5, #12]
d03c8a1e:	f04f 091c 	mov.w	r9, #28
d03c8a22:	7b6a      	ldrb	r2, [r5, #13]
d03c8a24:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8a28:	7baa      	ldrb	r2, [r5, #14]
d03c8a2a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8a2e:	7bea      	ldrb	r2, [r5, #15]
d03c8a30:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8a34:	685b      	ldr	r3, [r3, #4]
d03c8a36:	68db      	ldr	r3, [r3, #12]
d03c8a38:	4798      	blx	r3
d03c8a3a:	7b2b      	ldrb	r3, [r5, #12]
d03c8a3c:	7b6a      	ldrb	r2, [r5, #13]
d03c8a3e:	4631      	mov	r1, r6
d03c8a40:	4630      	mov	r0, r6
d03c8a42:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8a46:	7baa      	ldrb	r2, [r5, #14]
d03c8a48:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8a4c:	7bea      	ldrb	r2, [r5, #15]
d03c8a4e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8a52:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c8a56:	685b      	ldr	r3, [r3, #4]
d03c8a58:	685c      	ldr	r4, [r3, #4]
d03c8a5a:	2340      	movs	r3, #64	; 0x40
d03c8a5c:	47a0      	blx	r4
d03c8a5e:	7b2b      	ldrb	r3, [r5, #12]
d03c8a60:	7b6a      	ldrb	r2, [r5, #13]
d03c8a62:	2015      	movs	r0, #21
d03c8a64:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8a68:	7baa      	ldrb	r2, [r5, #14]
d03c8a6a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8a6e:	7bea      	ldrb	r2, [r5, #15]
d03c8a70:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8a74:	685b      	ldr	r3, [r3, #4]
d03c8a76:	68db      	ldr	r3, [r3, #12]
d03c8a78:	4798      	blx	r3
d03c8a7a:	7b2b      	ldrb	r3, [r5, #12]
d03c8a7c:	7b6a      	ldrb	r2, [r5, #13]
d03c8a7e:	4631      	mov	r1, r6
d03c8a80:	4630      	mov	r0, r6
d03c8a82:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8a86:	7baa      	ldrb	r2, [r5, #14]
d03c8a88:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8a8c:	7bea      	ldrb	r2, [r5, #15]
d03c8a8e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8a92:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c8a96:	685b      	ldr	r3, [r3, #4]
d03c8a98:	685c      	ldr	r4, [r3, #4]
d03c8a9a:	2302      	movs	r3, #2
d03c8a9c:	47a0      	blx	r4
d03c8a9e:	7b2b      	ldrb	r3, [r5, #12]
d03c8aa0:	7b6a      	ldrb	r2, [r5, #13]
d03c8aa2:	201a      	movs	r0, #26
d03c8aa4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8aa8:	7baa      	ldrb	r2, [r5, #14]
d03c8aaa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8aae:	7bea      	ldrb	r2, [r5, #15]
d03c8ab0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8ab4:	685b      	ldr	r3, [r3, #4]
d03c8ab6:	68db      	ldr	r3, [r3, #12]
d03c8ab8:	4798      	blx	r3
d03c8aba:	7b2b      	ldrb	r3, [r5, #12]
d03c8abc:	7b6a      	ldrb	r2, [r5, #13]
d03c8abe:	213f      	movs	r1, #63	; 0x3f
d03c8ac0:	4630      	mov	r0, r6
d03c8ac2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8ac6:	7baa      	ldrb	r2, [r5, #14]
d03c8ac8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8acc:	7bea      	ldrb	r2, [r5, #15]
d03c8ace:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8ad2:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c8ad6:	685b      	ldr	r3, [r3, #4]
d03c8ad8:	685c      	ldr	r4, [r3, #4]
d03c8ada:	2301      	movs	r3, #1
d03c8adc:	47a0      	blx	r4
d03c8ade:	7b2b      	ldrb	r3, [r5, #12]
d03c8ae0:	7b6a      	ldrb	r2, [r5, #13]
d03c8ae2:	20e8      	movs	r0, #232	; 0xe8
d03c8ae4:	2408      	movs	r4, #8
d03c8ae6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8aea:	7baa      	ldrb	r2, [r5, #14]
d03c8aec:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8af0:	7bea      	ldrb	r2, [r5, #15]
d03c8af2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8af6:	685b      	ldr	r3, [r3, #4]
d03c8af8:	68db      	ldr	r3, [r3, #12]
d03c8afa:	4798      	blx	r3
d03c8afc:	7b2b      	ldrb	r3, [r5, #12]
d03c8afe:	7b6a      	ldrb	r2, [r5, #13]
d03c8b00:	2108      	movs	r1, #8
d03c8b02:	200c      	movs	r0, #12
d03c8b04:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8b08:	7baa      	ldrb	r2, [r5, #14]
d03c8b0a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8b0e:	7bea      	ldrb	r2, [r5, #15]
d03c8b10:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8b14:	4a4a      	ldr	r2, [pc, #296]	; (d03c8c40 <main+0x1d14>)
d03c8b16:	685b      	ldr	r3, [r3, #4]
d03c8b18:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c8b1a:	4798      	blx	r3
d03c8b1c:	7b2b      	ldrb	r3, [r5, #12]
d03c8b1e:	7b6a      	ldrb	r2, [r5, #13]
d03c8b20:	20e7      	movs	r0, #231	; 0xe7
d03c8b22:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8b26:	7baa      	ldrb	r2, [r5, #14]
d03c8b28:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8b2c:	7bea      	ldrb	r2, [r5, #15]
d03c8b2e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8b32:	685b      	ldr	r3, [r3, #4]
d03c8b34:	68db      	ldr	r3, [r3, #12]
d03c8b36:	4798      	blx	r3
d03c8b38:	7b2b      	ldrb	r3, [r5, #12]
d03c8b3a:	7b6a      	ldrb	r2, [r5, #13]
d03c8b3c:	2108      	movs	r1, #8
d03c8b3e:	f44f 7087 	mov.w	r0, #270	; 0x10e
d03c8b42:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8b46:	7baa      	ldrb	r2, [r5, #14]
d03c8b48:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8b4c:	7bea      	ldrb	r2, [r5, #15]
d03c8b4e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8b52:	4a3c      	ldr	r2, [pc, #240]	; (d03c8c44 <main+0x1d18>)
d03c8b54:	685b      	ldr	r3, [r3, #4]
d03c8b56:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c8b58:	4798      	blx	r3
d03c8b5a:	4633      	mov	r3, r6
d03c8b5c:	f857 1b04 	ldr.w	r1, [r7], #4
d03c8b60:	1c5e      	adds	r6, r3, #1
d03c8b62:	f8cd b00c 	str.w	fp, [sp, #12]
d03c8b66:	b2db      	uxtb	r3, r3
d03c8b68:	f898 2000 	ldrb.w	r2, [r8]
d03c8b6c:	b2b0      	uxth	r0, r6
d03c8b6e:	9101      	str	r1, [sp, #4]
d03c8b70:	b221      	sxth	r1, r4
d03c8b72:	1ad2      	subs	r2, r2, r3
d03c8b74:	f8cd 9000 	str.w	r9, [sp]
d03c8b78:	344c      	adds	r4, #76	; 0x4c
d03c8b7a:	4253      	negs	r3, r2
d03c8b7c:	b2a4      	uxth	r4, r4
d03c8b7e:	4153      	adcs	r3, r2
d03c8b80:	2220      	movs	r2, #32
d03c8b82:	9302      	str	r3, [sp, #8]
d03c8b84:	2344      	movs	r3, #68	; 0x44
d03c8b86:	f7fa fcad 	bl	d03c34e4 <ui_create_button>
d03c8b8a:	2e06      	cmp	r6, #6
d03c8b8c:	4633      	mov	r3, r6
d03c8b8e:	d1e5      	bne.n	d03c8b5c <main+0x1c30>
d03c8b90:	7b2b      	ldrb	r3, [r5, #12]
d03c8b92:	20e0      	movs	r0, #224	; 0xe0
d03c8b94:	7b6a      	ldrb	r2, [r5, #13]
d03c8b96:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8b9a:	7baa      	ldrb	r2, [r5, #14]
d03c8b9c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8ba0:	7bea      	ldrb	r2, [r5, #15]
d03c8ba2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8ba6:	685b      	ldr	r3, [r3, #4]
d03c8ba8:	68db      	ldr	r3, [r3, #12]
d03c8baa:	4798      	blx	r3
d03c8bac:	7b2b      	ldrb	r3, [r5, #12]
d03c8bae:	7b6a      	ldrb	r2, [r5, #13]
d03c8bb0:	21fc      	movs	r1, #252	; 0xfc
d03c8bb2:	2000      	movs	r0, #0
d03c8bb4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8bb8:	7baa      	ldrb	r2, [r5, #14]
d03c8bba:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8bbe:	7bea      	ldrb	r2, [r5, #15]
d03c8bc0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8bc4:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c8bc8:	685b      	ldr	r3, [r3, #4]
d03c8bca:	685c      	ldr	r4, [r3, #4]
d03c8bcc:	2344      	movs	r3, #68	; 0x44
d03c8bce:	47a0      	blx	r4
d03c8bd0:	f7fb fcde 	bl	d03c4590 <ui_draw_seq>
d03c8bd4:	4b1c      	ldr	r3, [pc, #112]	; (d03c8c48 <main+0x1d1c>)
d03c8bd6:	781b      	ldrb	r3, [r3, #0]
d03c8bd8:	2b00      	cmp	r3, #0
d03c8bda:	f040 824c 	bne.w	d03c9076 <main+0x214a>
d03c8bde:	4b1b      	ldr	r3, [pc, #108]	; (d03c8c4c <main+0x1d20>)
d03c8be0:	781b      	ldrb	r3, [r3, #0]
d03c8be2:	2b00      	cmp	r3, #0
d03c8be4:	f040 8249 	bne.w	d03c907a <main+0x214e>
d03c8be8:	f7f8 fc30 	bl	d03c144c <ui_draw_seq_overlay>
d03c8bec:	e247      	b.n	d03c907e <main+0x2152>
d03c8bee:	4b18      	ldr	r3, [pc, #96]	; (d03c8c50 <main+0x1d24>)
d03c8bf0:	781b      	ldrb	r3, [r3, #0]
d03c8bf2:	b123      	cbz	r3, d03c8bfe <main+0x1cd2>
d03c8bf4:	4b17      	ldr	r3, [pc, #92]	; (d03c8c54 <main+0x1d28>)
d03c8bf6:	781b      	ldrb	r3, [r3, #0]
d03c8bf8:	454b      	cmp	r3, r9
d03c8bfa:	f43f ad51 	beq.w	d03c86a0 <main+0x1774>
d03c8bfe:	4b16      	ldr	r3, [pc, #88]	; (d03c8c58 <main+0x1d2c>)
d03c8c00:	2200      	movs	r2, #0
d03c8c02:	7819      	ldrb	r1, [r3, #0]
d03c8c04:	b2d7      	uxtb	r7, r2
d03c8c06:	b131      	cbz	r1, d03c8c16 <main+0x1cea>
d03c8c08:	7859      	ldrb	r1, [r3, #1]
d03c8c0a:	4541      	cmp	r1, r8
d03c8c0c:	d103      	bne.n	d03c8c16 <main+0x1cea>
d03c8c0e:	7919      	ldrb	r1, [r3, #4]
d03c8c10:	4549      	cmp	r1, r9
d03c8c12:	f000 84b2 	beq.w	d03c957a <main+0x264e>
d03c8c16:	3201      	adds	r2, #1
d03c8c18:	3308      	adds	r3, #8
d03c8c1a:	2a06      	cmp	r2, #6
d03c8c1c:	d1f1      	bne.n	d03c8c02 <main+0x1cd6>
d03c8c1e:	e53f      	b.n	d03c86a0 <main+0x1774>
d03c8c20:	3208      	adds	r2, #8
d03c8c22:	b2d2      	uxtb	r2, r2
d03c8c24:	4293      	cmp	r3, r2
d03c8c26:	f0c0 84d5 	bcc.w	d03c95d4 <main+0x26a8>
d03c8c2a:	3b07      	subs	r3, #7
d03c8c2c:	f000 bcd1 	b.w	d03c95d2 <main+0x26a6>
d03c8c30:	2100      	movs	r1, #0
d03c8c32:	e57d      	b.n	d03c8730 <main+0x1804>
d03c8c34:	4611      	mov	r1, r2
d03c8c36:	e57b      	b.n	d03c8730 <main+0x1804>
d03c8c38:	2100      	movs	r1, #0
d03c8c3a:	e5a1      	b.n	d03c8780 <main+0x1854>
d03c8c3c:	d03cc480 	.word	0xd03cc480
d03c8c40:	d03cb7fd 	.word	0xd03cb7fd
d03c8c44:	d03cb812 	.word	0xd03cb812
d03c8c48:	d03cd9d3 	.word	0xd03cd9d3
d03c8c4c:	d03cd9d4 	.word	0xd03cd9d4
d03c8c50:	d03cf523 	.word	0xd03cf523
d03c8c54:	d03cf528 	.word	0xd03cf528
d03c8c58:	d03cd0a8 	.word	0xd03cd0a8
d03c8c5c:	7833      	ldrb	r3, [r6, #0]
d03c8c5e:	b123      	cbz	r3, d03c8c6a <main+0x1d3e>
d03c8c60:	4ba4      	ldr	r3, [pc, #656]	; (d03c8ef4 <main+0x1fc8>)
d03c8c62:	2201      	movs	r2, #1
d03c8c64:	701a      	strb	r2, [r3, #0]
d03c8c66:	2300      	movs	r3, #0
d03c8c68:	7033      	strb	r3, [r6, #0]
d03c8c6a:	7b23      	ldrb	r3, [r4, #12]
d03c8c6c:	7b62      	ldrb	r2, [r4, #13]
d03c8c6e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8c72:	7ba2      	ldrb	r2, [r4, #14]
d03c8c74:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8c78:	7be2      	ldrb	r2, [r4, #15]
d03c8c7a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8c7e:	681b      	ldr	r3, [r3, #0]
d03c8c80:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d03c8c82:	4798      	blx	r3
d03c8c84:	4b9c      	ldr	r3, [pc, #624]	; (d03c8ef8 <main+0x1fcc>)
d03c8c86:	ee08 0a10 	vmov	s16, r0
d03c8c8a:	681b      	ldr	r3, [r3, #0]
d03c8c8c:	2b00      	cmp	r3, #0
d03c8c8e:	f43f ae41 	beq.w	d03c8914 <main+0x19e8>
d03c8c92:	4b9a      	ldr	r3, [pc, #616]	; (d03c8efc <main+0x1fd0>)
d03c8c94:	4897      	ldr	r0, [pc, #604]	; (d03c8ef4 <main+0x1fc8>)
d03c8c96:	681e      	ldr	r6, [r3, #0]
d03c8c98:	4b99      	ldr	r3, [pc, #612]	; (d03c8f00 <main+0x1fd4>)
d03c8c9a:	4d9a      	ldr	r5, [pc, #616]	; (d03c8f04 <main+0x1fd8>)
d03c8c9c:	781b      	ldrb	r3, [r3, #0]
d03c8c9e:	b18b      	cbz	r3, d03c8cc4 <main+0x1d98>
d03c8ca0:	6829      	ldr	r1, [r5, #0]
d03c8ca2:	2300      	movs	r3, #0
d03c8ca4:	1a72      	subs	r2, r6, r1
d03c8ca6:	eb63 73e1 	sbc.w	r3, r3, r1, asr #31
d03c8caa:	0fd9      	lsrs	r1, r3, #31
d03c8cac:	1852      	adds	r2, r2, r1
d03c8cae:	f143 0300 	adc.w	r3, r3, #0
d03c8cb2:	0851      	lsrs	r1, r2, #1
d03c8cb4:	ea41 71c3 	orr.w	r1, r1, r3, lsl #31
d03c8cb8:	f5a1 73ae 	sub.w	r3, r1, #348	; 0x15c
d03c8cbc:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d03c8cc0:	f240 80d4 	bls.w	d03c8e6c <main+0x1f40>
d03c8cc4:	2301      	movs	r3, #1
d03c8cc6:	f5a6 7670 	sub.w	r6, r6, #960	; 0x3c0
d03c8cca:	7003      	strb	r3, [r0, #0]
d03c8ccc:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d03c8cd0:	602e      	str	r6, [r5, #0]
d03c8cd2:	930e      	str	r3, [sp, #56]	; 0x38
d03c8cd4:	f89b 300c 	ldrb.w	r3, [fp, #12]
d03c8cd8:	26bc      	movs	r6, #188	; 0xbc
d03c8cda:	f89b 200d 	ldrb.w	r2, [fp, #13]
d03c8cde:	f04f 0906 	mov.w	r9, #6
d03c8ce2:	4885      	ldr	r0, [pc, #532]	; (d03c8ef8 <main+0x1fcc>)
d03c8ce4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8ce8:	f89b 200e 	ldrb.w	r2, [fp, #14]
d03c8cec:	f8df 8218 	ldr.w	r8, [pc, #536]	; d03c8f08 <main+0x1fdc>
d03c8cf0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8cf4:	f89b 200f 	ldrb.w	r2, [fp, #15]
d03c8cf8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8cfc:	681b      	ldr	r3, [r3, #0]
d03c8cfe:	6a1b      	ldr	r3, [r3, #32]
d03c8d00:	4798      	blx	r3
d03c8d02:	f89b 300c 	ldrb.w	r3, [fp, #12]
d03c8d06:	f89b 200d 	ldrb.w	r2, [fp, #13]
d03c8d0a:	487b      	ldr	r0, [pc, #492]	; (d03c8ef8 <main+0x1fcc>)
d03c8d0c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8d10:	f89b 200e 	ldrb.w	r2, [fp, #14]
d03c8d14:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8d18:	f89b 200f 	ldrb.w	r2, [fp, #15]
d03c8d1c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8d20:	681b      	ldr	r3, [r3, #0]
d03c8d22:	699b      	ldr	r3, [r3, #24]
d03c8d24:	4798      	blx	r3
d03c8d26:	682b      	ldr	r3, [r5, #0]
d03c8d28:	9305      	str	r3, [sp, #20]
d03c8d2a:	f7fa f8d7 	bl	d03c2edc <seq_grid_ticks>
d03c8d2e:	9b05      	ldr	r3, [sp, #20]
d03c8d30:	4605      	mov	r5, r0
d03c8d32:	2000      	movs	r0, #0
d03c8d34:	4619      	mov	r1, r3
d03c8d36:	17da      	asrs	r2, r3, #31
d03c8d38:	4613      	mov	r3, r2
d03c8d3a:	460a      	mov	r2, r1
d03c8d3c:	e9cd 2306 	strd	r2, r3, [sp, #24]
d03c8d40:	9b05      	ldr	r3, [sp, #20]
d03c8d42:	2b00      	cmp	r3, #0
d03c8d44:	bfd8      	it	le
d03c8d46:	2300      	movle	r3, #0
d03c8d48:	9305      	str	r3, [sp, #20]
d03c8d4a:	9b06      	ldr	r3, [sp, #24]
d03c8d4c:	f513 63f0 	adds.w	r3, r3, #1920	; 0x780
d03c8d50:	9308      	str	r3, [sp, #32]
d03c8d52:	9b07      	ldr	r3, [sp, #28]
d03c8d54:	f143 0300 	adc.w	r3, r3, #0
d03c8d58:	9309      	str	r3, [sp, #36]	; 0x24
d03c8d5a:	e9dd 2308 	ldrd	r2, r3, [sp, #32]
d03c8d5e:	2a00      	cmp	r2, #0
d03c8d60:	f173 0300 	sbcs.w	r3, r3, #0
d03c8d64:	bfbe      	ittt	lt
d03c8d66:	2200      	movlt	r2, #0
d03c8d68:	2300      	movlt	r3, #0
d03c8d6a:	e9cd 2308 	strdlt	r2, r3, [sp, #32]
d03c8d6e:	7b23      	ldrb	r3, [r4, #12]
d03c8d70:	7b62      	ldrb	r2, [r4, #13]
d03c8d72:	f8dd b020 	ldr.w	fp, [sp, #32]
d03c8d76:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8d7a:	7ba2      	ldrb	r2, [r4, #14]
d03c8d7c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8d80:	7be2      	ldrb	r2, [r4, #15]
d03c8d82:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8d86:	685b      	ldr	r3, [r3, #4]
d03c8d88:	68db      	ldr	r3, [r3, #12]
d03c8d8a:	4798      	blx	r3
d03c8d8c:	7b23      	ldrb	r3, [r4, #12]
d03c8d8e:	7b62      	ldrb	r2, [r4, #13]
d03c8d90:	2100      	movs	r1, #0
d03c8d92:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8d96:	7ba2      	ldrb	r2, [r4, #14]
d03c8d98:	4608      	mov	r0, r1
d03c8d9a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8d9e:	7be2      	ldrb	r2, [r4, #15]
d03c8da0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8da4:	f44f 7270 	mov.w	r2, #960	; 0x3c0
d03c8da8:	685b      	ldr	r3, [r3, #4]
d03c8daa:	685f      	ldr	r7, [r3, #4]
d03c8dac:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03c8db0:	47b8      	blx	r7
d03c8db2:	7b23      	ldrb	r3, [r4, #12]
d03c8db4:	7b62      	ldrb	r2, [r4, #13]
d03c8db6:	2014      	movs	r0, #20
d03c8db8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8dbc:	7ba2      	ldrb	r2, [r4, #14]
d03c8dbe:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8dc2:	7be2      	ldrb	r2, [r4, #15]
d03c8dc4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8dc8:	685b      	ldr	r3, [r3, #4]
d03c8dca:	68db      	ldr	r3, [r3, #12]
d03c8dcc:	4798      	blx	r3
d03c8dce:	7b23      	ldrb	r3, [r4, #12]
d03c8dd0:	7b62      	ldrb	r2, [r4, #13]
d03c8dd2:	2140      	movs	r1, #64	; 0x40
d03c8dd4:	2000      	movs	r0, #0
d03c8dd6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8dda:	7ba2      	ldrb	r2, [r4, #14]
d03c8ddc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8de0:	7be2      	ldrb	r2, [r4, #15]
d03c8de2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8de6:	f44f 7270 	mov.w	r2, #960	; 0x3c0
d03c8dea:	685b      	ldr	r3, [r3, #4]
d03c8dec:	685f      	ldr	r7, [r3, #4]
d03c8dee:	23bc      	movs	r3, #188	; 0xbc
d03c8df0:	47b8      	blx	r7
d03c8df2:	7b23      	ldrb	r3, [r4, #12]
d03c8df4:	7b62      	ldrb	r2, [r4, #13]
d03c8df6:	2015      	movs	r0, #21
d03c8df8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8dfc:	7ba2      	ldrb	r2, [r4, #14]
d03c8dfe:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8e02:	7be2      	ldrb	r2, [r4, #15]
d03c8e04:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8e08:	685b      	ldr	r3, [r3, #4]
d03c8e0a:	68db      	ldr	r3, [r3, #12]
d03c8e0c:	4798      	blx	r3
d03c8e0e:	f898 300c 	ldrb.w	r3, [r8, #12]
d03c8e12:	2000      	movs	r0, #0
d03c8e14:	f898 200d 	ldrb.w	r2, [r8, #13]
d03c8e18:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8e1c:	f898 200e 	ldrb.w	r2, [r8, #14]
d03c8e20:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8e24:	f898 200f 	ldrb.w	r2, [r8, #15]
d03c8e28:	fbb6 f1f9 	udiv	r1, r6, r9
d03c8e2c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8e30:	3140      	adds	r1, #64	; 0x40
d03c8e32:	36bc      	adds	r6, #188	; 0xbc
d03c8e34:	f44f 7270 	mov.w	r2, #960	; 0x3c0
d03c8e38:	685b      	ldr	r3, [r3, #4]
d03c8e3a:	b209      	sxth	r1, r1
d03c8e3c:	685b      	ldr	r3, [r3, #4]
d03c8e3e:	461f      	mov	r7, r3
d03c8e40:	2301      	movs	r3, #1
d03c8e42:	47b8      	blx	r7
d03c8e44:	f5b6 6f8d 	cmp.w	r6, #1128	; 0x468
d03c8e48:	d1e1      	bne.n	d03c8e0e <main+0x1ee2>
d03c8e4a:	b15d      	cbz	r5, d03c8e64 <main+0x1f38>
d03c8e4c:	9b05      	ldr	r3, [sp, #20]
d03c8e4e:	455b      	cmp	r3, fp
d03c8e50:	d808      	bhi.n	d03c8e64 <main+0x1f38>
d03c8e52:	1e6f      	subs	r7, r5, #1
d03c8e54:	f8df 80b0 	ldr.w	r8, [pc, #176]	; d03c8f08 <main+0x1fdc>
d03c8e58:	441f      	add	r7, r3
d03c8e5a:	fbb7 f7f5 	udiv	r7, r7, r5
d03c8e5e:	436f      	muls	r7, r5
d03c8e60:	45bb      	cmp	fp, r7
d03c8e62:	d21b      	bcs.n	d03c8e9c <main+0x1f70>
d03c8e64:	f04f 0800 	mov.w	r8, #0
d03c8e68:	4d27      	ldr	r5, [pc, #156]	; (d03c8f08 <main+0x1fdc>)
d03c8e6a:	e0e3      	b.n	d03c9034 <main+0x2108>
d03c8e6c:	7803      	ldrb	r3, [r0, #0]
d03c8e6e:	910e      	str	r1, [sp, #56]	; 0x38
d03c8e70:	2b00      	cmp	r3, #0
d03c8e72:	f47f af2f 	bne.w	d03c8cd4 <main+0x1da8>
d03c8e76:	4a24      	ldr	r2, [pc, #144]	; (d03c8f08 <main+0x1fdc>)
d03c8e78:	7b13      	ldrb	r3, [r2, #12]
d03c8e7a:	7b51      	ldrb	r1, [r2, #13]
d03c8e7c:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c8e80:	7b91      	ldrb	r1, [r2, #14]
d03c8e82:	7bd2      	ldrb	r2, [r2, #15]
d03c8e84:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c8e88:	2100      	movs	r1, #0
d03c8e8a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8e8e:	9a0e      	ldr	r2, [sp, #56]	; 0x38
d03c8e90:	681b      	ldr	r3, [r3, #0]
d03c8e92:	f1a2 00ec 	sub.w	r0, r2, #236	; 0xec
d03c8e96:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d03c8e98:	4798      	blx	r3
d03c8e9a:	e53b      	b.n	d03c8914 <main+0x19e8>
d03c8e9c:	9a06      	ldr	r2, [sp, #24]
d03c8e9e:	1abb      	subs	r3, r7, r2
d03c8ea0:	930a      	str	r3, [sp, #40]	; 0x28
d03c8ea2:	9b07      	ldr	r3, [sp, #28]
d03c8ea4:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d03c8ea8:	930b      	str	r3, [sp, #44]	; 0x2c
d03c8eaa:	0fd9      	lsrs	r1, r3, #31
d03c8eac:	e9dd 230a 	ldrd	r2, r3, [sp, #40]	; 0x28
d03c8eb0:	1852      	adds	r2, r2, r1
d03c8eb2:	f143 0300 	adc.w	r3, r3, #0
d03c8eb6:	0850      	lsrs	r0, r2, #1
d03c8eb8:	ea40 70c3 	orr.w	r0, r0, r3, lsl #31
d03c8ebc:	b283      	uxth	r3, r0
d03c8ebe:	f5b3 7f70 	cmp.w	r3, #960	; 0x3c0
d03c8ec2:	d215      	bcs.n	d03c8ef0 <main+0x1fc4>
d03c8ec4:	f898 300c 	ldrb.w	r3, [r8, #12]
d03c8ec8:	2140      	movs	r1, #64	; 0x40
d03c8eca:	f898 200d 	ldrb.w	r2, [r8, #13]
d03c8ece:	b200      	sxth	r0, r0
d03c8ed0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8ed4:	f898 200e 	ldrb.w	r2, [r8, #14]
d03c8ed8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8edc:	f898 200f 	ldrb.w	r2, [r8, #15]
d03c8ee0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8ee4:	2201      	movs	r2, #1
d03c8ee6:	685b      	ldr	r3, [r3, #4]
d03c8ee8:	f8d3 9004 	ldr.w	r9, [r3, #4]
d03c8eec:	23bc      	movs	r3, #188	; 0xbc
d03c8eee:	47c8      	blx	r9
d03c8ef0:	442f      	add	r7, r5
d03c8ef2:	e7b5      	b.n	d03c8e60 <main+0x1f34>
d03c8ef4:	d03cf36b 	.word	0xd03cf36b
d03c8ef8:	d03cf6a0 	.word	0xd03cf6a0
d03c8efc:	d03cd0a0 	.word	0xd03cd0a0
d03c8f00:	d03cf370 	.word	0xd03cf370
d03c8f04:	d03cf36c 	.word	0xd03cf36c
d03c8f08:	2001f000 	.word	0x2001f000
d03c8f0c:	4b64      	ldr	r3, [pc, #400]	; (d03c90a0 <main+0x2174>)
d03c8f0e:	ea4f 1208 	mov.w	r2, r8, lsl #4
d03c8f12:	681b      	ldr	r3, [r3, #0]
d03c8f14:	eb03 1008 	add.w	r0, r3, r8, lsl #4
d03c8f18:	7b41      	ldrb	r1, [r0, #13]
d03c8f1a:	2900      	cmp	r1, #0
d03c8f1c:	f000 8088 	beq.w	d03c9030 <main+0x2104>
d03c8f20:	589b      	ldr	r3, [r3, r2]
d03c8f22:	f8d0 c004 	ldr.w	ip, [r0, #4]
d03c8f26:	9905      	ldr	r1, [sp, #20]
d03c8f28:	eb03 020c 	add.w	r2, r3, ip
d03c8f2c:	4291      	cmp	r1, r2
d03c8f2e:	d87f      	bhi.n	d03c9030 <main+0x2104>
d03c8f30:	459b      	cmp	fp, r3
d03c8f32:	d37d      	bcc.n	d03c9030 <main+0x2104>
d03c8f34:	9a06      	ldr	r2, [sp, #24]
d03c8f36:	1a9b      	subs	r3, r3, r2
d03c8f38:	930c      	str	r3, [sp, #48]	; 0x30
d03c8f3a:	9b07      	ldr	r3, [sp, #28]
d03c8f3c:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d03c8f40:	930d      	str	r3, [sp, #52]	; 0x34
d03c8f42:	0fdb      	lsrs	r3, r3, #31
d03c8f44:	e9dd 120c 	ldrd	r1, r2, [sp, #48]	; 0x30
d03c8f48:	18c9      	adds	r1, r1, r3
d03c8f4a:	f142 0200 	adc.w	r2, r2, #0
d03c8f4e:	084b      	lsrs	r3, r1, #1
d03c8f50:	ea43 73c2 	orr.w	r3, r3, r2, lsl #31
d03c8f54:	f34c 024f 	sbfx	r2, ip, #1, #16
d03c8f58:	b21f      	sxth	r7, r3
d03c8f5a:	2a04      	cmp	r2, #4
d03c8f5c:	bfb8      	it	lt
d03c8f5e:	2204      	movlt	r2, #4
d03c8f60:	2f00      	cmp	r7, #0
d03c8f62:	4691      	mov	r9, r2
d03c8f64:	bfbe      	ittt	lt
d03c8f66:	18d2      	addlt	r2, r2, r3
d03c8f68:	2700      	movlt	r7, #0
d03c8f6a:	fa0f f982 	sxthlt.w	r9, r2
d03c8f6e:	eb07 0309 	add.w	r3, r7, r9
d03c8f72:	f5b3 7f70 	cmp.w	r3, #960	; 0x3c0
d03c8f76:	bfc4      	itt	gt
d03c8f78:	f5c7 7270 	rsbgt	r2, r7, #960	; 0x3c0
d03c8f7c:	fa0f f982 	sxthgt.w	r9, r2
d03c8f80:	f1b9 0f00 	cmp.w	r9, #0
d03c8f84:	dd54      	ble.n	d03c9030 <main+0x2104>
d03c8f86:	7a03      	ldrb	r3, [r0, #8]
d03c8f88:	21b0      	movs	r1, #176	; 0xb0
d03c8f8a:	7b00      	ldrb	r0, [r0, #12]
d03c8f8c:	2b54      	cmp	r3, #84	; 0x54
d03c8f8e:	bf28      	it	cs
d03c8f90:	2354      	movcs	r3, #84	; 0x54
d03c8f92:	2b24      	cmp	r3, #36	; 0x24
d03c8f94:	bf38      	it	cc
d03c8f96:	2324      	movcc	r3, #36	; 0x24
d03c8f98:	3b24      	subs	r3, #36	; 0x24
d03c8f9a:	b29b      	uxth	r3, r3
d03c8f9c:	4359      	muls	r1, r3
d03c8f9e:	2330      	movs	r3, #48	; 0x30
d03c8fa0:	fbb1 f1f3 	udiv	r1, r1, r3
d03c8fa4:	7b2b      	ldrb	r3, [r5, #12]
d03c8fa6:	f1c1 01f4 	rsb	r1, r1, #244	; 0xf4
d03c8faa:	f895 c00d 	ldrb.w	ip, [r5, #13]
d03c8fae:	b209      	sxth	r1, r1
d03c8fb0:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d03c8fb4:	f895 c00e 	ldrb.w	ip, [r5, #14]
d03c8fb8:	9111      	str	r1, [sp, #68]	; 0x44
d03c8fba:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d03c8fbe:	f895 c00f 	ldrb.w	ip, [r5, #15]
d03c8fc2:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d03c8fc6:	685b      	ldr	r3, [r3, #4]
d03c8fc8:	68db      	ldr	r3, [r3, #12]
d03c8fca:	4798      	blx	r3
d03c8fcc:	7b2b      	ldrb	r3, [r5, #12]
d03c8fce:	7b68      	ldrb	r0, [r5, #13]
d03c8fd0:	464a      	mov	r2, r9
d03c8fd2:	9911      	ldr	r1, [sp, #68]	; 0x44
d03c8fd4:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03c8fd8:	7ba8      	ldrb	r0, [r5, #14]
d03c8fda:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03c8fde:	7be8      	ldrb	r0, [r5, #15]
d03c8fe0:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d03c8fe4:	4638      	mov	r0, r7
d03c8fe6:	685b      	ldr	r3, [r3, #4]
d03c8fe8:	685b      	ldr	r3, [r3, #4]
d03c8fea:	461e      	mov	r6, r3
d03c8fec:	2306      	movs	r3, #6
d03c8fee:	47b0      	blx	r6
d03c8ff0:	7b2b      	ldrb	r3, [r5, #12]
d03c8ff2:	7b68      	ldrb	r0, [r5, #13]
d03c8ff4:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03c8ff8:	7ba8      	ldrb	r0, [r5, #14]
d03c8ffa:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03c8ffe:	7be8      	ldrb	r0, [r5, #15]
d03c9000:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d03c9004:	2010      	movs	r0, #16
d03c9006:	685b      	ldr	r3, [r3, #4]
d03c9008:	68db      	ldr	r3, [r3, #12]
d03c900a:	4798      	blx	r3
d03c900c:	7b2b      	ldrb	r3, [r5, #12]
d03c900e:	7b68      	ldrb	r0, [r5, #13]
d03c9010:	464a      	mov	r2, r9
d03c9012:	9911      	ldr	r1, [sp, #68]	; 0x44
d03c9014:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03c9018:	7ba8      	ldrb	r0, [r5, #14]
d03c901a:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03c901e:	7be8      	ldrb	r0, [r5, #15]
d03c9020:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d03c9024:	4638      	mov	r0, r7
d03c9026:	685b      	ldr	r3, [r3, #4]
d03c9028:	685b      	ldr	r3, [r3, #4]
d03c902a:	461e      	mov	r6, r3
d03c902c:	2301      	movs	r3, #1
d03c902e:	47b0      	blx	r6
d03c9030:	f108 0801 	add.w	r8, r8, #1
d03c9034:	4b1b      	ldr	r3, [pc, #108]	; (d03c90a4 <main+0x2178>)
d03c9036:	681b      	ldr	r3, [r3, #0]
d03c9038:	4598      	cmp	r8, r3
d03c903a:	f4ff af67 	bcc.w	d03c8f0c <main+0x1fe0>
d03c903e:	4a1a      	ldr	r2, [pc, #104]	; (d03c90a8 <main+0x217c>)
d03c9040:	ee18 0a10 	vmov	r0, s16
d03c9044:	7b13      	ldrb	r3, [r2, #12]
d03c9046:	7b51      	ldrb	r1, [r2, #13]
d03c9048:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c904c:	7b91      	ldrb	r1, [r2, #14]
d03c904e:	7bd2      	ldrb	r2, [r2, #15]
d03c9050:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c9054:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9058:	681b      	ldr	r3, [r3, #0]
d03c905a:	699b      	ldr	r3, [r3, #24]
d03c905c:	4798      	blx	r3
d03c905e:	4b13      	ldr	r3, [pc, #76]	; (d03c90ac <main+0x2180>)
d03c9060:	2200      	movs	r2, #0
d03c9062:	701a      	strb	r2, [r3, #0]
d03c9064:	2201      	movs	r2, #1
d03c9066:	4b12      	ldr	r3, [pc, #72]	; (d03c90b0 <main+0x2184>)
d03c9068:	701a      	strb	r2, [r3, #0]
d03c906a:	e704      	b.n	d03c8e76 <main+0x1f4a>
d03c906c:	7833      	ldrb	r3, [r6, #0]
d03c906e:	2b00      	cmp	r3, #0
d03c9070:	f43f ac50 	beq.w	d03c8914 <main+0x19e8>
d03c9074:	e44a      	b.n	d03c890c <main+0x19e0>
d03c9076:	f7fa fc9d 	bl	d03c39b4 <ui_draw_confirm_modal.part.0>
d03c907a:	f7fa fd6d 	bl	d03c3b58 <ui_draw_dialog>
d03c907e:	f7f8 f813 	bl	d03c10a8 <ui_draw_cursor>
d03c9082:	7b2b      	ldrb	r3, [r5, #12]
d03c9084:	7b6a      	ldrb	r2, [r5, #13]
d03c9086:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c908a:	7baa      	ldrb	r2, [r5, #14]
d03c908c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9090:	7bea      	ldrb	r2, [r5, #15]
d03c9092:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9096:	681b      	ldr	r3, [r3, #0]
d03c9098:	681b      	ldr	r3, [r3, #0]
d03c909a:	4798      	blx	r3
d03c909c:	f7fe b9e2 	b.w	d03c7464 <main+0x538>
d03c90a0:	d03ccf78 	.word	0xd03ccf78
d03c90a4:	d03ccf74 	.word	0xd03ccf74
d03c90a8:	2001f000 	.word	0x2001f000
d03c90ac:	d03cf36b 	.word	0xd03cf36b
d03c90b0:	d03cf370 	.word	0xd03cf370
d03c90b4:	4b9c      	ldr	r3, [pc, #624]	; (d03c9328 <main+0x23fc>)
d03c90b6:	781a      	ldrb	r2, [r3, #0]
d03c90b8:	4b9c      	ldr	r3, [pc, #624]	; (d03c932c <main+0x2400>)
d03c90ba:	781b      	ldrb	r3, [r3, #0]
d03c90bc:	4313      	orrs	r3, r2
d03c90be:	d1de      	bne.n	d03c907e <main+0x2152>
d03c90c0:	7b2b      	ldrb	r3, [r5, #12]
d03c90c2:	2018      	movs	r0, #24
d03c90c4:	7b6a      	ldrb	r2, [r5, #13]
d03c90c6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c90ca:	7baa      	ldrb	r2, [r5, #14]
d03c90cc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c90d0:	7bea      	ldrb	r2, [r5, #15]
d03c90d2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c90d6:	685b      	ldr	r3, [r3, #4]
d03c90d8:	68db      	ldr	r3, [r3, #12]
d03c90da:	4798      	blx	r3
d03c90dc:	4a94      	ldr	r2, [pc, #592]	; (d03c9330 <main+0x2404>)
d03c90de:	7813      	ldrb	r3, [r2, #0]
d03c90e0:	2b00      	cmp	r3, #0
d03c90e2:	f000 80e0 	beq.w	d03c92a6 <main+0x237a>
d03c90e6:	7b2b      	ldrb	r3, [r5, #12]
d03c90e8:	7b69      	ldrb	r1, [r5, #13]
d03c90ea:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c90ee:	7ba9      	ldrb	r1, [r5, #14]
d03c90f0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c90f4:	7be9      	ldrb	r1, [r5, #15]
d03c90f6:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d03c90fa:	685b      	ldr	r3, [r3, #4]
d03c90fc:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c90fe:	f44f 7192 	mov.w	r1, #292	; 0x124
d03c9102:	2058      	movs	r0, #88	; 0x58
d03c9104:	4798      	blx	r3
d03c9106:	783b      	ldrb	r3, [r7, #0]
d03c9108:	2b01      	cmp	r3, #1
d03c910a:	f000 80da 	beq.w	d03c92c2 <main+0x2396>
d03c910e:	2b04      	cmp	r3, #4
d03c9110:	f000 8130 	beq.w	d03c9374 <main+0x2448>
d03c9114:	2b00      	cmp	r3, #0
d03c9116:	d1b2      	bne.n	d03c907e <main+0x2152>
d03c9118:	4a86      	ldr	r2, [pc, #536]	; (d03c9334 <main+0x2408>)
d03c911a:	4987      	ldr	r1, [pc, #540]	; (d03c9338 <main+0x240c>)
d03c911c:	7817      	ldrb	r7, [r2, #0]
d03c911e:	461a      	mov	r2, r3
d03c9120:	f811 0032 	ldrb.w	r0, [r1, r2, lsl #3]
d03c9124:	b108      	cbz	r0, d03c912a <main+0x21fe>
d03c9126:	3301      	adds	r3, #1
d03c9128:	b2db      	uxtb	r3, r3
d03c912a:	3201      	adds	r2, #1
d03c912c:	2a06      	cmp	r2, #6
d03c912e:	d1f7      	bne.n	d03c9120 <main+0x21f4>
d03c9130:	2160      	movs	r1, #96	; 0x60
d03c9132:	9200      	str	r2, [sp, #0]
d03c9134:	4a81      	ldr	r2, [pc, #516]	; (d03c933c <main+0x2410>)
d03c9136:	eb0d 0001 	add.w	r0, sp, r1
d03c913a:	f000 ff17 	bl	d03c9f6c <sniprintf>
d03c913e:	7b23      	ldrb	r3, [r4, #12]
d03c9140:	7b62      	ldrb	r2, [r4, #13]
d03c9142:	201e      	movs	r0, #30
d03c9144:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c9148:	7ba2      	ldrb	r2, [r4, #14]
d03c914a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c914e:	7be2      	ldrb	r2, [r4, #15]
d03c9150:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9154:	685b      	ldr	r3, [r3, #4]
d03c9156:	68db      	ldr	r3, [r3, #12]
d03c9158:	4798      	blx	r3
d03c915a:	7b23      	ldrb	r3, [r4, #12]
d03c915c:	7b62      	ldrb	r2, [r4, #13]
d03c915e:	215c      	movs	r1, #92	; 0x5c
d03c9160:	2018      	movs	r0, #24
d03c9162:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c9166:	7ba2      	ldrb	r2, [r4, #14]
d03c9168:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c916c:	7be2      	ldrb	r2, [r4, #15]
d03c916e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9172:	aa18      	add	r2, sp, #96	; 0x60
d03c9174:	685b      	ldr	r3, [r3, #4]
d03c9176:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c9178:	4798      	blx	r3
d03c917a:	4b71      	ldr	r3, [pc, #452]	; (d03c9340 <main+0x2414>)
d03c917c:	2160      	movs	r1, #96	; 0x60
d03c917e:	4a71      	ldr	r2, [pc, #452]	; (d03c9344 <main+0x2418>)
d03c9180:	681b      	ldr	r3, [r3, #0]
d03c9182:	eb0d 0001 	add.w	r0, sp, r1
d03c9186:	9300      	str	r3, [sp, #0]
d03c9188:	4b6f      	ldr	r3, [pc, #444]	; (d03c9348 <main+0x241c>)
d03c918a:	681b      	ldr	r3, [r3, #0]
d03c918c:	f000 feee 	bl	d03c9f6c <sniprintf>
d03c9190:	7b23      	ldrb	r3, [r4, #12]
d03c9192:	7b62      	ldrb	r2, [r4, #13]
d03c9194:	2018      	movs	r0, #24
d03c9196:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c919a:	7ba2      	ldrb	r2, [r4, #14]
d03c919c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c91a0:	7be2      	ldrb	r2, [r4, #15]
d03c91a2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c91a6:	685b      	ldr	r3, [r3, #4]
d03c91a8:	68db      	ldr	r3, [r3, #12]
d03c91aa:	4798      	blx	r3
d03c91ac:	7b23      	ldrb	r3, [r4, #12]
d03c91ae:	7b62      	ldrb	r2, [r4, #13]
d03c91b0:	2170      	movs	r1, #112	; 0x70
d03c91b2:	2018      	movs	r0, #24
d03c91b4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c91b8:	7ba2      	ldrb	r2, [r4, #14]
d03c91ba:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c91be:	7be2      	ldrb	r2, [r4, #15]
d03c91c0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c91c4:	aa18      	add	r2, sp, #96	; 0x60
d03c91c6:	685b      	ldr	r3, [r3, #4]
d03c91c8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c91ca:	4798      	blx	r3
d03c91cc:	4b5f      	ldr	r3, [pc, #380]	; (d03c934c <main+0x2420>)
d03c91ce:	2160      	movs	r1, #96	; 0x60
d03c91d0:	4a5f      	ldr	r2, [pc, #380]	; (d03c9350 <main+0x2424>)
d03c91d2:	881b      	ldrh	r3, [r3, #0]
d03c91d4:	eb0d 0001 	add.w	r0, sp, r1
d03c91d8:	9300      	str	r3, [sp, #0]
d03c91da:	4b5e      	ldr	r3, [pc, #376]	; (d03c9354 <main+0x2428>)
d03c91dc:	881b      	ldrh	r3, [r3, #0]
d03c91de:	f000 fec5 	bl	d03c9f6c <sniprintf>
d03c91e2:	7b23      	ldrb	r3, [r4, #12]
d03c91e4:	7b62      	ldrb	r2, [r4, #13]
d03c91e6:	2184      	movs	r1, #132	; 0x84
d03c91e8:	2018      	movs	r0, #24
d03c91ea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c91ee:	7ba2      	ldrb	r2, [r4, #14]
d03c91f0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c91f4:	7be2      	ldrb	r2, [r4, #15]
d03c91f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c91fa:	aa18      	add	r2, sp, #96	; 0x60
d03c91fc:	685b      	ldr	r3, [r3, #4]
d03c91fe:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c9200:	4798      	blx	r3
d03c9202:	4b55      	ldr	r3, [pc, #340]	; (d03c9358 <main+0x242c>)
d03c9204:	2160      	movs	r1, #96	; 0x60
d03c9206:	4a55      	ldr	r2, [pc, #340]	; (d03c935c <main+0x2430>)
d03c9208:	f933 3017 	ldrsh.w	r3, [r3, r7, lsl #1]
d03c920c:	eb0d 0001 	add.w	r0, sp, r1
d03c9210:	9301      	str	r3, [sp, #4]
d03c9212:	4b53      	ldr	r3, [pc, #332]	; (d03c9360 <main+0x2434>)
d03c9214:	5ddb      	ldrb	r3, [r3, r7]
d03c9216:	9300      	str	r3, [sp, #0]
d03c9218:	4b52      	ldr	r3, [pc, #328]	; (d03c9364 <main+0x2438>)
d03c921a:	5ddb      	ldrb	r3, [r3, r7]
d03c921c:	f000 fea6 	bl	d03c9f6c <sniprintf>
d03c9220:	7b23      	ldrb	r3, [r4, #12]
d03c9222:	7b62      	ldrb	r2, [r4, #13]
d03c9224:	2170      	movs	r1, #112	; 0x70
d03c9226:	4f50      	ldr	r7, [pc, #320]	; (d03c9368 <main+0x243c>)
d03c9228:	20e6      	movs	r0, #230	; 0xe6
d03c922a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c922e:	7ba2      	ldrb	r2, [r4, #14]
d03c9230:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9234:	7be2      	ldrb	r2, [r4, #15]
d03c9236:	24c8      	movs	r4, #200	; 0xc8
d03c9238:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c923c:	aa18      	add	r2, sp, #96	; 0x60
d03c923e:	685b      	ldr	r3, [r3, #4]
d03c9240:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c9242:	4798      	blx	r3
d03c9244:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d03c9246:	f813 0b01 	ldrb.w	r0, [r3], #1
d03c924a:	930f      	str	r3, [sp, #60]	; 0x3c
d03c924c:	f7f7 fd08 	bl	d03c0c60 <midi_channel_active_count>
d03c9250:	4603      	mov	r3, r0
d03c9252:	b318      	cbz	r0, d03c929c <main+0x2370>
d03c9254:	2160      	movs	r1, #96	; 0x60
d03c9256:	463a      	mov	r2, r7
d03c9258:	eb0d 0001 	add.w	r0, sp, r1
d03c925c:	f000 fe86 	bl	d03c9f6c <sniprintf>
d03c9260:	7b33      	ldrb	r3, [r6, #12]
d03c9262:	7b72      	ldrb	r2, [r6, #13]
d03c9264:	200e      	movs	r0, #14
d03c9266:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c926a:	7bb2      	ldrb	r2, [r6, #14]
d03c926c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9270:	7bf2      	ldrb	r2, [r6, #15]
d03c9272:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9276:	685b      	ldr	r3, [r3, #4]
d03c9278:	68db      	ldr	r3, [r3, #12]
d03c927a:	4798      	blx	r3
d03c927c:	7b33      	ldrb	r3, [r6, #12]
d03c927e:	7b72      	ldrb	r2, [r6, #13]
d03c9280:	4621      	mov	r1, r4
d03c9282:	20cc      	movs	r0, #204	; 0xcc
d03c9284:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c9288:	7bb2      	ldrb	r2, [r6, #14]
d03c928a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c928e:	7bf2      	ldrb	r2, [r6, #15]
d03c9290:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9294:	aa18      	add	r2, sp, #96	; 0x60
d03c9296:	685b      	ldr	r3, [r3, #4]
d03c9298:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c929a:	4798      	blx	r3
d03c929c:	3410      	adds	r4, #16
d03c929e:	f5b4 7f84 	cmp.w	r4, #264	; 0x108
d03c92a2:	d1cf      	bne.n	d03c9244 <main+0x2318>
d03c92a4:	e6eb      	b.n	d03c907e <main+0x2152>
d03c92a6:	7b2b      	ldrb	r3, [r5, #12]
d03c92a8:	7b6a      	ldrb	r2, [r5, #13]
d03c92aa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c92ae:	7baa      	ldrb	r2, [r5, #14]
d03c92b0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c92b4:	7bea      	ldrb	r2, [r5, #15]
d03c92b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c92ba:	4a2c      	ldr	r2, [pc, #176]	; (d03c936c <main+0x2440>)
d03c92bc:	685b      	ldr	r3, [r3, #4]
d03c92be:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c92c0:	e71d      	b.n	d03c90fe <main+0x21d2>
d03c92c2:	4b2b      	ldr	r3, [pc, #172]	; (d03c9370 <main+0x2444>)
d03c92c4:	2400      	movs	r4, #0
d03c92c6:	f04f 0824 	mov.w	r8, #36	; 0x24
d03c92ca:	781f      	ldrb	r7, [r3, #0]
d03c92cc:	230e      	movs	r3, #14
d03c92ce:	00bf      	lsls	r7, r7, #2
d03c92d0:	f8ad 3060 	strh.w	r3, [sp, #96]	; 0x60
d03c92d4:	b2ff      	uxtb	r7, r7
d03c92d6:	1938      	adds	r0, r7, r4
d03c92d8:	b2c0      	uxtb	r0, r0
d03c92da:	f7f7 fcc1 	bl	d03c0c60 <midi_channel_active_count>
d03c92de:	b1f8      	cbz	r0, d03c9320 <main+0x23f4>
d03c92e0:	7b33      	ldrb	r3, [r6, #12]
d03c92e2:	200e      	movs	r0, #14
d03c92e4:	7b72      	ldrb	r2, [r6, #13]
d03c92e6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c92ea:	7bb2      	ldrb	r2, [r6, #14]
d03c92ec:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c92f0:	7bf2      	ldrb	r2, [r6, #15]
d03c92f2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c92f6:	685b      	ldr	r3, [r3, #4]
d03c92f8:	68db      	ldr	r3, [r3, #12]
d03c92fa:	4798      	blx	r3
d03c92fc:	7b33      	ldrb	r3, [r6, #12]
d03c92fe:	7b72      	ldrb	r2, [r6, #13]
d03c9300:	fb08 f104 	mul.w	r1, r8, r4
d03c9304:	2020      	movs	r0, #32
d03c9306:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c930a:	7bb2      	ldrb	r2, [r6, #14]
d03c930c:	317c      	adds	r1, #124	; 0x7c
d03c930e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9312:	7bf2      	ldrb	r2, [r6, #15]
d03c9314:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9318:	aa18      	add	r2, sp, #96	; 0x60
d03c931a:	685b      	ldr	r3, [r3, #4]
d03c931c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c931e:	4798      	blx	r3
d03c9320:	3401      	adds	r4, #1
d03c9322:	2c04      	cmp	r4, #4
d03c9324:	d1d7      	bne.n	d03c92d6 <main+0x23aa>
d03c9326:	e6aa      	b.n	d03c907e <main+0x2152>
d03c9328:	d03cd9d4 	.word	0xd03cd9d4
d03c932c:	d03cd9d3 	.word	0xd03cd9d3
d03c9330:	d03cf378 	.word	0xd03cf378
d03c9334:	d03cf36a 	.word	0xd03cf36a
d03c9338:	d03cd0a8 	.word	0xd03cd0a8
d03c933c:	d03cbf9f 	.word	0xd03cbf9f
d03c9340:	d03ccf48 	.word	0xd03ccf48
d03c9344:	d03cbfac 	.word	0xd03cbfac
d03c9348:	d03ccf40 	.word	0xd03ccf40
d03c934c:	d03ccd2a 	.word	0xd03ccd2a
d03c9350:	d03cbfbf 	.word	0xd03cbfbf
d03c9354:	d03ccf2e 	.word	0xd03ccf2e
d03c9358:	d03cccd4 	.word	0xd03cccd4
d03c935c:	d03cbfd5 	.word	0xd03cbfd5
d03c9360:	d03cccf4 	.word	0xd03cccf4
d03c9364:	d03ccd14 	.word	0xd03ccd14
d03c9368:	d03cb309 	.word	0xd03cb309
d03c936c:	d03cbf82 	.word	0xd03cbf82
d03c9370:	d03cd9d2 	.word	0xd03cd9d2
d03c9374:	4b99      	ldr	r3, [pc, #612]	; (d03c95dc <main+0x26b0>)
d03c9376:	781b      	ldrb	r3, [r3, #0]
d03c9378:	2b00      	cmp	r3, #0
d03c937a:	f43f ae80 	beq.w	d03c907e <main+0x2152>
d03c937e:	4f98      	ldr	r7, [pc, #608]	; (d03c95e0 <main+0x26b4>)
d03c9380:	4b98      	ldr	r3, [pc, #608]	; (d03c95e4 <main+0x26b8>)
d03c9382:	783c      	ldrb	r4, [r7, #0]
d03c9384:	781e      	ldrb	r6, [r3, #0]
d03c9386:	42b4      	cmp	r4, r6
d03c9388:	d324      	bcc.n	d03c93d4 <main+0x24a8>
d03c938a:	f106 0308 	add.w	r3, r6, #8
d03c938e:	b2db      	uxtb	r3, r3
d03c9390:	429c      	cmp	r4, r3
d03c9392:	d21f      	bcs.n	d03c93d4 <main+0x24a8>
d03c9394:	7b2b      	ldrb	r3, [r5, #12]
d03c9396:	200e      	movs	r0, #14
d03c9398:	7b6a      	ldrb	r2, [r5, #13]
d03c939a:	1ba4      	subs	r4, r4, r6
d03c939c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c93a0:	7baa      	ldrb	r2, [r5, #14]
d03c93a2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c93a6:	7bea      	ldrb	r2, [r5, #15]
d03c93a8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c93ac:	685b      	ldr	r3, [r3, #4]
d03c93ae:	68db      	ldr	r3, [r3, #12]
d03c93b0:	4798      	blx	r3
d03c93b2:	7b2b      	ldrb	r3, [r5, #12]
d03c93b4:	7b6a      	ldrb	r2, [r5, #13]
d03c93b6:	0121      	lsls	r1, r4, #4
d03c93b8:	2014      	movs	r0, #20
d03c93ba:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c93be:	7baa      	ldrb	r2, [r5, #14]
d03c93c0:	3186      	adds	r1, #134	; 0x86
d03c93c2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c93c6:	7bea      	ldrb	r2, [r5, #15]
d03c93c8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c93cc:	4a86      	ldr	r2, [pc, #536]	; (d03c95e8 <main+0x26bc>)
d03c93ce:	685b      	ldr	r3, [r3, #4]
d03c93d0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c93d2:	4798      	blx	r3
d03c93d4:	4b85      	ldr	r3, [pc, #532]	; (d03c95ec <main+0x26c0>)
d03c93d6:	2118      	movs	r1, #24
d03c93d8:	4a85      	ldr	r2, [pc, #532]	; (d03c95f0 <main+0x26c4>)
d03c93da:	a818      	add	r0, sp, #96	; 0x60
d03c93dc:	781b      	ldrb	r3, [r3, #0]
d03c93de:	9300      	str	r3, [sp, #0]
d03c93e0:	783b      	ldrb	r3, [r7, #0]
d03c93e2:	f000 fdc3 	bl	d03c9f6c <sniprintf>
d03c93e6:	7b2b      	ldrb	r3, [r5, #12]
d03c93e8:	7b6a      	ldrb	r2, [r5, #13]
d03c93ea:	200e      	movs	r0, #14
d03c93ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c93f0:	7baa      	ldrb	r2, [r5, #14]
d03c93f2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c93f6:	7bea      	ldrb	r2, [r5, #15]
d03c93f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c93fc:	685b      	ldr	r3, [r3, #4]
d03c93fe:	68db      	ldr	r3, [r3, #12]
d03c9400:	4798      	blx	r3
d03c9402:	7b2b      	ldrb	r3, [r5, #12]
d03c9404:	7b6a      	ldrb	r2, [r5, #13]
d03c9406:	21fa      	movs	r1, #250	; 0xfa
d03c9408:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c940c:	7baa      	ldrb	r2, [r5, #14]
d03c940e:	4608      	mov	r0, r1
d03c9410:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9414:	7bea      	ldrb	r2, [r5, #15]
d03c9416:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c941a:	aa18      	add	r2, sp, #96	; 0x60
d03c941c:	685b      	ldr	r3, [r3, #4]
d03c941e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c9420:	4798      	blx	r3
d03c9422:	e62c      	b.n	d03c907e <main+0x2152>
d03c9424:	f89a 300c 	ldrb.w	r3, [sl, #12]
d03c9428:	f89a 200d 	ldrb.w	r2, [sl, #13]
d03c942c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c9430:	f89a 200e 	ldrb.w	r2, [sl, #14]
d03c9434:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9438:	f89a 200f 	ldrb.w	r2, [sl, #15]
d03c943c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9440:	2202      	movs	r2, #2
d03c9442:	681b      	ldr	r3, [r3, #0]
d03c9444:	9200      	str	r2, [sp, #0]
d03c9446:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c944a:	695c      	ldr	r4, [r3, #20]
d03c944c:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03c9450:	4610      	mov	r0, r2
d03c9452:	4619      	mov	r1, r3
d03c9454:	47a0      	blx	r4
d03c9456:	f89a 300c 	ldrb.w	r3, [sl, #12]
d03c945a:	f89a 200d 	ldrb.w	r2, [sl, #13]
d03c945e:	2100      	movs	r1, #0
d03c9460:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c9464:	f89a 200e 	ldrb.w	r2, [sl, #14]
d03c9468:	4608      	mov	r0, r1
d03c946a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c946e:	f89a 200f 	ldrb.w	r2, [sl, #15]
d03c9472:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9476:	681b      	ldr	r3, [r3, #0]
d03c9478:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d03c947a:	4798      	blx	r3
d03c947c:	f89a 3004 	ldrb.w	r3, [sl, #4]
d03c9480:	f89a 2005 	ldrb.w	r2, [sl, #5]
d03c9484:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c9488:	f89a 2006 	ldrb.w	r2, [sl, #6]
d03c948c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9490:	f89a 2007 	ldrb.w	r2, [sl, #7]
d03c9494:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9498:	685b      	ldr	r3, [r3, #4]
d03c949a:	4798      	blx	r3
d03c949c:	f89a 3000 	ldrb.w	r3, [sl]
d03c94a0:	f89a 2001 	ldrb.w	r2, [sl, #1]
d03c94a4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c94a8:	f89a 2002 	ldrb.w	r2, [sl, #2]
d03c94ac:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c94b0:	f89a 2003 	ldrb.w	r2, [sl, #3]
d03c94b4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c94b8:	685b      	ldr	r3, [r3, #4]
d03c94ba:	4798      	blx	r3
d03c94bc:	f89a 3020 	ldrb.w	r3, [sl, #32]
d03c94c0:	f89a 2021 	ldrb.w	r2, [sl, #33]	; 0x21
d03c94c4:	2000      	movs	r0, #0
d03c94c6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c94ca:	f89a 2022 	ldrb.w	r2, [sl, #34]	; 0x22
d03c94ce:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c94d2:	f89a 2023 	ldrb.w	r2, [sl, #35]	; 0x23
d03c94d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c94da:	685b      	ldr	r3, [r3, #4]
d03c94dc:	4798      	blx	r3
d03c94de:	f89a 3020 	ldrb.w	r3, [sl, #32]
d03c94e2:	f89a 2021 	ldrb.w	r2, [sl, #33]	; 0x21
d03c94e6:	2000      	movs	r0, #0
d03c94e8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c94ec:	f89a 2022 	ldrb.w	r2, [sl, #34]	; 0x22
d03c94f0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c94f4:	f89a 2023 	ldrb.w	r2, [sl, #35]	; 0x23
d03c94f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c94fc:	681b      	ldr	r3, [r3, #0]
d03c94fe:	4798      	blx	r3
d03c9500:	f7f8 faaa 	bl	d03c1a58 <sid_midi_all_notes_off>
d03c9504:	f89a 3014 	ldrb.w	r3, [sl, #20]
d03c9508:	f89a 2015 	ldrb.w	r2, [sl, #21]
d03c950c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c9510:	f89a 2016 	ldrb.w	r2, [sl, #22]
d03c9514:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9518:	f89a 2017 	ldrb.w	r2, [sl, #23]
d03c951c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9520:	685b      	ldr	r3, [r3, #4]
d03c9522:	68db      	ldr	r3, [r3, #12]
d03c9524:	4798      	blx	r3
d03c9526:	f89a 3014 	ldrb.w	r3, [sl, #20]
d03c952a:	f89a 2015 	ldrb.w	r2, [sl, #21]
d03c952e:	f44f 4080 	mov.w	r0, #16384	; 0x4000
d03c9532:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c9536:	f89a 2016 	ldrb.w	r2, [sl, #22]
d03c953a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c953e:	f89a 2017 	ldrb.w	r2, [sl, #23]
d03c9542:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9546:	681b      	ldr	r3, [r3, #0]
d03c9548:	681b      	ldr	r3, [r3, #0]
d03c954a:	4798      	blx	r3
d03c954c:	f89a 3014 	ldrb.w	r3, [sl, #20]
d03c9550:	f89a 2015 	ldrb.w	r2, [sl, #21]
d03c9554:	2000      	movs	r0, #0
d03c9556:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c955a:	f89a 2016 	ldrb.w	r2, [sl, #22]
d03c955e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9562:	f89a 2017 	ldrb.w	r2, [sl, #23]
d03c9566:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c956a:	681b      	ldr	r3, [r3, #0]
d03c956c:	685b      	ldr	r3, [r3, #4]
d03c956e:	7018      	strb	r0, [r3, #0]
d03c9570:	b031      	add	sp, #196	; 0xc4
d03c9572:	ecbd 8b02 	vpop	{d8}
d03c9576:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c957a:	aa18      	add	r2, sp, #96	; 0x60
d03c957c:	a915      	add	r1, sp, #84	; 0x54
d03c957e:	4638      	mov	r0, r7
d03c9580:	f7f7 f840 	bl	d03c0604 <sid_voice_get_vm_debug>
d03c9584:	2800      	cmp	r0, #0
d03c9586:	f43f a88b 	beq.w	d03c86a0 <main+0x1774>
d03c958a:	f89d 3060 	ldrb.w	r3, [sp, #96]	; 0x60
d03c958e:	2b00      	cmp	r3, #0
d03c9590:	f43f a886 	beq.w	d03c86a0 <main+0x1774>
d03c9594:	4b17      	ldr	r3, [pc, #92]	; (d03c95f4 <main+0x26c8>)
d03c9596:	4913      	ldr	r1, [pc, #76]	; (d03c95e4 <main+0x26b8>)
d03c9598:	7818      	ldrb	r0, [r3, #0]
d03c959a:	780a      	ldrb	r2, [r1, #0]
d03c959c:	b918      	cbnz	r0, d03c95a6 <main+0x267a>
d03c959e:	4816      	ldr	r0, [pc, #88]	; (d03c95f8 <main+0x26cc>)
d03c95a0:	7002      	strb	r2, [r0, #0]
d03c95a2:	2001      	movs	r0, #1
d03c95a4:	7018      	strb	r0, [r3, #0]
d03c95a6:	f89d 3054 	ldrb.w	r3, [sp, #84]	; 0x54
d03c95aa:	480c      	ldr	r0, [pc, #48]	; (d03c95dc <main+0x26b0>)
d03c95ac:	42a3      	cmp	r3, r4
d03c95ae:	f04f 0301 	mov.w	r3, #1
d03c95b2:	bf28      	it	cs
d03c95b4:	f104 34ff 	addcs.w	r4, r4, #4294967295	; 0xffffffff
d03c95b8:	7003      	strb	r3, [r0, #0]
d03c95ba:	4809      	ldr	r0, [pc, #36]	; (d03c95e0 <main+0x26b4>)
d03c95bc:	bf28      	it	cs
d03c95be:	f88d 4054 	strbcs.w	r4, [sp, #84]	; 0x54
d03c95c2:	f89d 3054 	ldrb.w	r3, [sp, #84]	; 0x54
d03c95c6:	7003      	strb	r3, [r0, #0]
d03c95c8:	4293      	cmp	r3, r2
d03c95ca:	4808      	ldr	r0, [pc, #32]	; (d03c95ec <main+0x26c0>)
d03c95cc:	7007      	strb	r7, [r0, #0]
d03c95ce:	f4bf ab27 	bcs.w	d03c8c20 <main+0x1cf4>
d03c95d2:	700b      	strb	r3, [r1, #0]
d03c95d4:	f7f7 fc70 	bl	d03c0eb8 <ui_clamp_vm_scroll>
d03c95d8:	f7ff b86d 	b.w	d03c86b6 <main+0x178a>
d03c95dc:	d03cf52f 	.word	0xd03cf52f
d03c95e0:	d03cf52e 	.word	0xd03cf52e
d03c95e4:	d03cf531 	.word	0xd03cf531
d03c95e8:	d03cb6c8 	.word	0xd03cb6c8
d03c95ec:	d03cf530 	.word	0xd03cf530
d03c95f0:	d03cbff1 	.word	0xd03cbff1
d03c95f4:	d03cf52c 	.word	0xd03cf52c
d03c95f8:	d03cf52d 	.word	0xd03cf52d

d03c95fc <__aeabi_uldivmod>:
d03c95fc:	b953      	cbnz	r3, d03c9614 <__aeabi_uldivmod+0x18>
d03c95fe:	b94a      	cbnz	r2, d03c9614 <__aeabi_uldivmod+0x18>
d03c9600:	2900      	cmp	r1, #0
d03c9602:	bf08      	it	eq
d03c9604:	2800      	cmpeq	r0, #0
d03c9606:	bf1c      	itt	ne
d03c9608:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
d03c960c:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
d03c9610:	f000 b96e 	b.w	d03c98f0 <__aeabi_idiv0>
d03c9614:	f1ad 0c08 	sub.w	ip, sp, #8
d03c9618:	e96d ce04 	strd	ip, lr, [sp, #-16]!
d03c961c:	f000 f806 	bl	d03c962c <__udivmoddi4>
d03c9620:	f8dd e004 	ldr.w	lr, [sp, #4]
d03c9624:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
d03c9628:	b004      	add	sp, #16
d03c962a:	4770      	bx	lr

d03c962c <__udivmoddi4>:
d03c962c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03c9630:	9d08      	ldr	r5, [sp, #32]
d03c9632:	4604      	mov	r4, r0
d03c9634:	468c      	mov	ip, r1
d03c9636:	2b00      	cmp	r3, #0
d03c9638:	f040 8083 	bne.w	d03c9742 <__udivmoddi4+0x116>
d03c963c:	428a      	cmp	r2, r1
d03c963e:	4617      	mov	r7, r2
d03c9640:	d947      	bls.n	d03c96d2 <__udivmoddi4+0xa6>
d03c9642:	fab2 f282 	clz	r2, r2
d03c9646:	b142      	cbz	r2, d03c965a <__udivmoddi4+0x2e>
d03c9648:	f1c2 0020 	rsb	r0, r2, #32
d03c964c:	fa24 f000 	lsr.w	r0, r4, r0
d03c9650:	4091      	lsls	r1, r2
d03c9652:	4097      	lsls	r7, r2
d03c9654:	ea40 0c01 	orr.w	ip, r0, r1
d03c9658:	4094      	lsls	r4, r2
d03c965a:	ea4f 4817 	mov.w	r8, r7, lsr #16
d03c965e:	0c23      	lsrs	r3, r4, #16
d03c9660:	fbbc f6f8 	udiv	r6, ip, r8
d03c9664:	fa1f fe87 	uxth.w	lr, r7
d03c9668:	fb08 c116 	mls	r1, r8, r6, ip
d03c966c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c9670:	fb06 f10e 	mul.w	r1, r6, lr
d03c9674:	4299      	cmp	r1, r3
d03c9676:	d909      	bls.n	d03c968c <__udivmoddi4+0x60>
d03c9678:	18fb      	adds	r3, r7, r3
d03c967a:	f106 30ff 	add.w	r0, r6, #4294967295	; 0xffffffff
d03c967e:	f080 8119 	bcs.w	d03c98b4 <__udivmoddi4+0x288>
d03c9682:	4299      	cmp	r1, r3
d03c9684:	f240 8116 	bls.w	d03c98b4 <__udivmoddi4+0x288>
d03c9688:	3e02      	subs	r6, #2
d03c968a:	443b      	add	r3, r7
d03c968c:	1a5b      	subs	r3, r3, r1
d03c968e:	b2a4      	uxth	r4, r4
d03c9690:	fbb3 f0f8 	udiv	r0, r3, r8
d03c9694:	fb08 3310 	mls	r3, r8, r0, r3
d03c9698:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
d03c969c:	fb00 fe0e 	mul.w	lr, r0, lr
d03c96a0:	45a6      	cmp	lr, r4
d03c96a2:	d909      	bls.n	d03c96b8 <__udivmoddi4+0x8c>
d03c96a4:	193c      	adds	r4, r7, r4
d03c96a6:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d03c96aa:	f080 8105 	bcs.w	d03c98b8 <__udivmoddi4+0x28c>
d03c96ae:	45a6      	cmp	lr, r4
d03c96b0:	f240 8102 	bls.w	d03c98b8 <__udivmoddi4+0x28c>
d03c96b4:	3802      	subs	r0, #2
d03c96b6:	443c      	add	r4, r7
d03c96b8:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
d03c96bc:	eba4 040e 	sub.w	r4, r4, lr
d03c96c0:	2600      	movs	r6, #0
d03c96c2:	b11d      	cbz	r5, d03c96cc <__udivmoddi4+0xa0>
d03c96c4:	40d4      	lsrs	r4, r2
d03c96c6:	2300      	movs	r3, #0
d03c96c8:	e9c5 4300 	strd	r4, r3, [r5]
d03c96cc:	4631      	mov	r1, r6
d03c96ce:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03c96d2:	b902      	cbnz	r2, d03c96d6 <__udivmoddi4+0xaa>
d03c96d4:	deff      	udf	#255	; 0xff
d03c96d6:	fab2 f282 	clz	r2, r2
d03c96da:	2a00      	cmp	r2, #0
d03c96dc:	d150      	bne.n	d03c9780 <__udivmoddi4+0x154>
d03c96de:	1bcb      	subs	r3, r1, r7
d03c96e0:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d03c96e4:	fa1f f887 	uxth.w	r8, r7
d03c96e8:	2601      	movs	r6, #1
d03c96ea:	fbb3 fcfe 	udiv	ip, r3, lr
d03c96ee:	0c21      	lsrs	r1, r4, #16
d03c96f0:	fb0e 331c 	mls	r3, lr, ip, r3
d03c96f4:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d03c96f8:	fb08 f30c 	mul.w	r3, r8, ip
d03c96fc:	428b      	cmp	r3, r1
d03c96fe:	d907      	bls.n	d03c9710 <__udivmoddi4+0xe4>
d03c9700:	1879      	adds	r1, r7, r1
d03c9702:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
d03c9706:	d202      	bcs.n	d03c970e <__udivmoddi4+0xe2>
d03c9708:	428b      	cmp	r3, r1
d03c970a:	f200 80e9 	bhi.w	d03c98e0 <__udivmoddi4+0x2b4>
d03c970e:	4684      	mov	ip, r0
d03c9710:	1ac9      	subs	r1, r1, r3
d03c9712:	b2a3      	uxth	r3, r4
d03c9714:	fbb1 f0fe 	udiv	r0, r1, lr
d03c9718:	fb0e 1110 	mls	r1, lr, r0, r1
d03c971c:	ea43 4401 	orr.w	r4, r3, r1, lsl #16
d03c9720:	fb08 f800 	mul.w	r8, r8, r0
d03c9724:	45a0      	cmp	r8, r4
d03c9726:	d907      	bls.n	d03c9738 <__udivmoddi4+0x10c>
d03c9728:	193c      	adds	r4, r7, r4
d03c972a:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d03c972e:	d202      	bcs.n	d03c9736 <__udivmoddi4+0x10a>
d03c9730:	45a0      	cmp	r8, r4
d03c9732:	f200 80d9 	bhi.w	d03c98e8 <__udivmoddi4+0x2bc>
d03c9736:	4618      	mov	r0, r3
d03c9738:	eba4 0408 	sub.w	r4, r4, r8
d03c973c:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
d03c9740:	e7bf      	b.n	d03c96c2 <__udivmoddi4+0x96>
d03c9742:	428b      	cmp	r3, r1
d03c9744:	d909      	bls.n	d03c975a <__udivmoddi4+0x12e>
d03c9746:	2d00      	cmp	r5, #0
d03c9748:	f000 80b1 	beq.w	d03c98ae <__udivmoddi4+0x282>
d03c974c:	2600      	movs	r6, #0
d03c974e:	e9c5 0100 	strd	r0, r1, [r5]
d03c9752:	4630      	mov	r0, r6
d03c9754:	4631      	mov	r1, r6
d03c9756:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03c975a:	fab3 f683 	clz	r6, r3
d03c975e:	2e00      	cmp	r6, #0
d03c9760:	d14a      	bne.n	d03c97f8 <__udivmoddi4+0x1cc>
d03c9762:	428b      	cmp	r3, r1
d03c9764:	d302      	bcc.n	d03c976c <__udivmoddi4+0x140>
d03c9766:	4282      	cmp	r2, r0
d03c9768:	f200 80b8 	bhi.w	d03c98dc <__udivmoddi4+0x2b0>
d03c976c:	1a84      	subs	r4, r0, r2
d03c976e:	eb61 0103 	sbc.w	r1, r1, r3
d03c9772:	2001      	movs	r0, #1
d03c9774:	468c      	mov	ip, r1
d03c9776:	2d00      	cmp	r5, #0
d03c9778:	d0a8      	beq.n	d03c96cc <__udivmoddi4+0xa0>
d03c977a:	e9c5 4c00 	strd	r4, ip, [r5]
d03c977e:	e7a5      	b.n	d03c96cc <__udivmoddi4+0xa0>
d03c9780:	f1c2 0320 	rsb	r3, r2, #32
d03c9784:	fa20 f603 	lsr.w	r6, r0, r3
d03c9788:	4097      	lsls	r7, r2
d03c978a:	fa01 f002 	lsl.w	r0, r1, r2
d03c978e:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d03c9792:	40d9      	lsrs	r1, r3
d03c9794:	4330      	orrs	r0, r6
d03c9796:	0c03      	lsrs	r3, r0, #16
d03c9798:	fbb1 f6fe 	udiv	r6, r1, lr
d03c979c:	fa1f f887 	uxth.w	r8, r7
d03c97a0:	fb0e 1116 	mls	r1, lr, r6, r1
d03c97a4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c97a8:	fb06 f108 	mul.w	r1, r6, r8
d03c97ac:	4299      	cmp	r1, r3
d03c97ae:	fa04 f402 	lsl.w	r4, r4, r2
d03c97b2:	d909      	bls.n	d03c97c8 <__udivmoddi4+0x19c>
d03c97b4:	18fb      	adds	r3, r7, r3
d03c97b6:	f106 3cff 	add.w	ip, r6, #4294967295	; 0xffffffff
d03c97ba:	f080 808d 	bcs.w	d03c98d8 <__udivmoddi4+0x2ac>
d03c97be:	4299      	cmp	r1, r3
d03c97c0:	f240 808a 	bls.w	d03c98d8 <__udivmoddi4+0x2ac>
d03c97c4:	3e02      	subs	r6, #2
d03c97c6:	443b      	add	r3, r7
d03c97c8:	1a5b      	subs	r3, r3, r1
d03c97ca:	b281      	uxth	r1, r0
d03c97cc:	fbb3 f0fe 	udiv	r0, r3, lr
d03c97d0:	fb0e 3310 	mls	r3, lr, r0, r3
d03c97d4:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d03c97d8:	fb00 f308 	mul.w	r3, r0, r8
d03c97dc:	428b      	cmp	r3, r1
d03c97de:	d907      	bls.n	d03c97f0 <__udivmoddi4+0x1c4>
d03c97e0:	1879      	adds	r1, r7, r1
d03c97e2:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
d03c97e6:	d273      	bcs.n	d03c98d0 <__udivmoddi4+0x2a4>
d03c97e8:	428b      	cmp	r3, r1
d03c97ea:	d971      	bls.n	d03c98d0 <__udivmoddi4+0x2a4>
d03c97ec:	3802      	subs	r0, #2
d03c97ee:	4439      	add	r1, r7
d03c97f0:	1acb      	subs	r3, r1, r3
d03c97f2:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d03c97f6:	e778      	b.n	d03c96ea <__udivmoddi4+0xbe>
d03c97f8:	f1c6 0c20 	rsb	ip, r6, #32
d03c97fc:	fa03 f406 	lsl.w	r4, r3, r6
d03c9800:	fa22 f30c 	lsr.w	r3, r2, ip
d03c9804:	431c      	orrs	r4, r3
d03c9806:	fa20 f70c 	lsr.w	r7, r0, ip
d03c980a:	fa01 f306 	lsl.w	r3, r1, r6
d03c980e:	ea4f 4e14 	mov.w	lr, r4, lsr #16
d03c9812:	fa21 f10c 	lsr.w	r1, r1, ip
d03c9816:	431f      	orrs	r7, r3
d03c9818:	0c3b      	lsrs	r3, r7, #16
d03c981a:	fbb1 f9fe 	udiv	r9, r1, lr
d03c981e:	fa1f f884 	uxth.w	r8, r4
d03c9822:	fb0e 1119 	mls	r1, lr, r9, r1
d03c9826:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
d03c982a:	fb09 fa08 	mul.w	sl, r9, r8
d03c982e:	458a      	cmp	sl, r1
d03c9830:	fa02 f206 	lsl.w	r2, r2, r6
d03c9834:	fa00 f306 	lsl.w	r3, r0, r6
d03c9838:	d908      	bls.n	d03c984c <__udivmoddi4+0x220>
d03c983a:	1861      	adds	r1, r4, r1
d03c983c:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
d03c9840:	d248      	bcs.n	d03c98d4 <__udivmoddi4+0x2a8>
d03c9842:	458a      	cmp	sl, r1
d03c9844:	d946      	bls.n	d03c98d4 <__udivmoddi4+0x2a8>
d03c9846:	f1a9 0902 	sub.w	r9, r9, #2
d03c984a:	4421      	add	r1, r4
d03c984c:	eba1 010a 	sub.w	r1, r1, sl
d03c9850:	b2bf      	uxth	r7, r7
d03c9852:	fbb1 f0fe 	udiv	r0, r1, lr
d03c9856:	fb0e 1110 	mls	r1, lr, r0, r1
d03c985a:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d03c985e:	fb00 f808 	mul.w	r8, r0, r8
d03c9862:	45b8      	cmp	r8, r7
d03c9864:	d907      	bls.n	d03c9876 <__udivmoddi4+0x24a>
d03c9866:	19e7      	adds	r7, r4, r7
d03c9868:	f100 31ff 	add.w	r1, r0, #4294967295	; 0xffffffff
d03c986c:	d22e      	bcs.n	d03c98cc <__udivmoddi4+0x2a0>
d03c986e:	45b8      	cmp	r8, r7
d03c9870:	d92c      	bls.n	d03c98cc <__udivmoddi4+0x2a0>
d03c9872:	3802      	subs	r0, #2
d03c9874:	4427      	add	r7, r4
d03c9876:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
d03c987a:	eba7 0708 	sub.w	r7, r7, r8
d03c987e:	fba0 8902 	umull	r8, r9, r0, r2
d03c9882:	454f      	cmp	r7, r9
d03c9884:	46c6      	mov	lr, r8
d03c9886:	4649      	mov	r1, r9
d03c9888:	d31a      	bcc.n	d03c98c0 <__udivmoddi4+0x294>
d03c988a:	d017      	beq.n	d03c98bc <__udivmoddi4+0x290>
d03c988c:	b15d      	cbz	r5, d03c98a6 <__udivmoddi4+0x27a>
d03c988e:	ebb3 020e 	subs.w	r2, r3, lr
d03c9892:	eb67 0701 	sbc.w	r7, r7, r1
d03c9896:	fa07 fc0c 	lsl.w	ip, r7, ip
d03c989a:	40f2      	lsrs	r2, r6
d03c989c:	ea4c 0202 	orr.w	r2, ip, r2
d03c98a0:	40f7      	lsrs	r7, r6
d03c98a2:	e9c5 2700 	strd	r2, r7, [r5]
d03c98a6:	2600      	movs	r6, #0
d03c98a8:	4631      	mov	r1, r6
d03c98aa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03c98ae:	462e      	mov	r6, r5
d03c98b0:	4628      	mov	r0, r5
d03c98b2:	e70b      	b.n	d03c96cc <__udivmoddi4+0xa0>
d03c98b4:	4606      	mov	r6, r0
d03c98b6:	e6e9      	b.n	d03c968c <__udivmoddi4+0x60>
d03c98b8:	4618      	mov	r0, r3
d03c98ba:	e6fd      	b.n	d03c96b8 <__udivmoddi4+0x8c>
d03c98bc:	4543      	cmp	r3, r8
d03c98be:	d2e5      	bcs.n	d03c988c <__udivmoddi4+0x260>
d03c98c0:	ebb8 0e02 	subs.w	lr, r8, r2
d03c98c4:	eb69 0104 	sbc.w	r1, r9, r4
d03c98c8:	3801      	subs	r0, #1
d03c98ca:	e7df      	b.n	d03c988c <__udivmoddi4+0x260>
d03c98cc:	4608      	mov	r0, r1
d03c98ce:	e7d2      	b.n	d03c9876 <__udivmoddi4+0x24a>
d03c98d0:	4660      	mov	r0, ip
d03c98d2:	e78d      	b.n	d03c97f0 <__udivmoddi4+0x1c4>
d03c98d4:	4681      	mov	r9, r0
d03c98d6:	e7b9      	b.n	d03c984c <__udivmoddi4+0x220>
d03c98d8:	4666      	mov	r6, ip
d03c98da:	e775      	b.n	d03c97c8 <__udivmoddi4+0x19c>
d03c98dc:	4630      	mov	r0, r6
d03c98de:	e74a      	b.n	d03c9776 <__udivmoddi4+0x14a>
d03c98e0:	f1ac 0c02 	sub.w	ip, ip, #2
d03c98e4:	4439      	add	r1, r7
d03c98e6:	e713      	b.n	d03c9710 <__udivmoddi4+0xe4>
d03c98e8:	3802      	subs	r0, #2
d03c98ea:	443c      	add	r4, r7
d03c98ec:	e724      	b.n	d03c9738 <__udivmoddi4+0x10c>
d03c98ee:	bf00      	nop

d03c98f0 <__aeabi_idiv0>:
d03c98f0:	4770      	bx	lr
d03c98f2:	bf00      	nop

d03c98f4 <__errno>:
d03c98f4:	4b01      	ldr	r3, [pc, #4]	; (d03c98fc <__errno+0x8>)
d03c98f6:	6818      	ldr	r0, [r3, #0]
d03c98f8:	4770      	bx	lr
d03c98fa:	bf00      	nop
d03c98fc:	d03ccc08 	.word	0xd03ccc08

d03c9900 <malloc>:
d03c9900:	4b02      	ldr	r3, [pc, #8]	; (d03c990c <malloc+0xc>)
d03c9902:	4601      	mov	r1, r0
d03c9904:	6818      	ldr	r0, [r3, #0]
d03c9906:	f000 b87f 	b.w	d03c9a08 <_malloc_r>
d03c990a:	bf00      	nop
d03c990c:	d03ccc08 	.word	0xd03ccc08

d03c9910 <free>:
d03c9910:	4b02      	ldr	r3, [pc, #8]	; (d03c991c <free+0xc>)
d03c9912:	4601      	mov	r1, r0
d03c9914:	6818      	ldr	r0, [r3, #0]
d03c9916:	f000 b827 	b.w	d03c9968 <_free_r>
d03c991a:	bf00      	nop
d03c991c:	d03ccc08 	.word	0xd03ccc08

d03c9920 <memcmp>:
d03c9920:	b530      	push	{r4, r5, lr}
d03c9922:	3901      	subs	r1, #1
d03c9924:	2400      	movs	r4, #0
d03c9926:	42a2      	cmp	r2, r4
d03c9928:	d101      	bne.n	d03c992e <memcmp+0xe>
d03c992a:	2000      	movs	r0, #0
d03c992c:	e005      	b.n	d03c993a <memcmp+0x1a>
d03c992e:	5d03      	ldrb	r3, [r0, r4]
d03c9930:	3401      	adds	r4, #1
d03c9932:	5d0d      	ldrb	r5, [r1, r4]
d03c9934:	42ab      	cmp	r3, r5
d03c9936:	d0f6      	beq.n	d03c9926 <memcmp+0x6>
d03c9938:	1b58      	subs	r0, r3, r5
d03c993a:	bd30      	pop	{r4, r5, pc}

d03c993c <memcpy>:
d03c993c:	440a      	add	r2, r1
d03c993e:	4291      	cmp	r1, r2
d03c9940:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d03c9944:	d100      	bne.n	d03c9948 <memcpy+0xc>
d03c9946:	4770      	bx	lr
d03c9948:	b510      	push	{r4, lr}
d03c994a:	f811 4b01 	ldrb.w	r4, [r1], #1
d03c994e:	f803 4f01 	strb.w	r4, [r3, #1]!
d03c9952:	4291      	cmp	r1, r2
d03c9954:	d1f9      	bne.n	d03c994a <memcpy+0xe>
d03c9956:	bd10      	pop	{r4, pc}

d03c9958 <memset>:
d03c9958:	4402      	add	r2, r0
d03c995a:	4603      	mov	r3, r0
d03c995c:	4293      	cmp	r3, r2
d03c995e:	d100      	bne.n	d03c9962 <memset+0xa>
d03c9960:	4770      	bx	lr
d03c9962:	f803 1b01 	strb.w	r1, [r3], #1
d03c9966:	e7f9      	b.n	d03c995c <memset+0x4>

d03c9968 <_free_r>:
d03c9968:	b537      	push	{r0, r1, r2, r4, r5, lr}
d03c996a:	2900      	cmp	r1, #0
d03c996c:	d048      	beq.n	d03c9a00 <_free_r+0x98>
d03c996e:	f851 3c04 	ldr.w	r3, [r1, #-4]
d03c9972:	9001      	str	r0, [sp, #4]
d03c9974:	2b00      	cmp	r3, #0
d03c9976:	f1a1 0404 	sub.w	r4, r1, #4
d03c997a:	bfb8      	it	lt
d03c997c:	18e4      	addlt	r4, r4, r3
d03c997e:	f000 fd35 	bl	d03ca3ec <__malloc_lock>
d03c9982:	4a20      	ldr	r2, [pc, #128]	; (d03c9a04 <_free_r+0x9c>)
d03c9984:	9801      	ldr	r0, [sp, #4]
d03c9986:	6813      	ldr	r3, [r2, #0]
d03c9988:	4615      	mov	r5, r2
d03c998a:	b933      	cbnz	r3, d03c999a <_free_r+0x32>
d03c998c:	6063      	str	r3, [r4, #4]
d03c998e:	6014      	str	r4, [r2, #0]
d03c9990:	b003      	add	sp, #12
d03c9992:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d03c9996:	f000 bd2f 	b.w	d03ca3f8 <__malloc_unlock>
d03c999a:	42a3      	cmp	r3, r4
d03c999c:	d90b      	bls.n	d03c99b6 <_free_r+0x4e>
d03c999e:	6821      	ldr	r1, [r4, #0]
d03c99a0:	1862      	adds	r2, r4, r1
d03c99a2:	4293      	cmp	r3, r2
d03c99a4:	bf04      	itt	eq
d03c99a6:	681a      	ldreq	r2, [r3, #0]
d03c99a8:	685b      	ldreq	r3, [r3, #4]
d03c99aa:	6063      	str	r3, [r4, #4]
d03c99ac:	bf04      	itt	eq
d03c99ae:	1852      	addeq	r2, r2, r1
d03c99b0:	6022      	streq	r2, [r4, #0]
d03c99b2:	602c      	str	r4, [r5, #0]
d03c99b4:	e7ec      	b.n	d03c9990 <_free_r+0x28>
d03c99b6:	461a      	mov	r2, r3
d03c99b8:	685b      	ldr	r3, [r3, #4]
d03c99ba:	b10b      	cbz	r3, d03c99c0 <_free_r+0x58>
d03c99bc:	42a3      	cmp	r3, r4
d03c99be:	d9fa      	bls.n	d03c99b6 <_free_r+0x4e>
d03c99c0:	6811      	ldr	r1, [r2, #0]
d03c99c2:	1855      	adds	r5, r2, r1
d03c99c4:	42a5      	cmp	r5, r4
d03c99c6:	d10b      	bne.n	d03c99e0 <_free_r+0x78>
d03c99c8:	6824      	ldr	r4, [r4, #0]
d03c99ca:	4421      	add	r1, r4
d03c99cc:	1854      	adds	r4, r2, r1
d03c99ce:	42a3      	cmp	r3, r4
d03c99d0:	6011      	str	r1, [r2, #0]
d03c99d2:	d1dd      	bne.n	d03c9990 <_free_r+0x28>
d03c99d4:	681c      	ldr	r4, [r3, #0]
d03c99d6:	685b      	ldr	r3, [r3, #4]
d03c99d8:	6053      	str	r3, [r2, #4]
d03c99da:	4421      	add	r1, r4
d03c99dc:	6011      	str	r1, [r2, #0]
d03c99de:	e7d7      	b.n	d03c9990 <_free_r+0x28>
d03c99e0:	d902      	bls.n	d03c99e8 <_free_r+0x80>
d03c99e2:	230c      	movs	r3, #12
d03c99e4:	6003      	str	r3, [r0, #0]
d03c99e6:	e7d3      	b.n	d03c9990 <_free_r+0x28>
d03c99e8:	6825      	ldr	r5, [r4, #0]
d03c99ea:	1961      	adds	r1, r4, r5
d03c99ec:	428b      	cmp	r3, r1
d03c99ee:	bf04      	itt	eq
d03c99f0:	6819      	ldreq	r1, [r3, #0]
d03c99f2:	685b      	ldreq	r3, [r3, #4]
d03c99f4:	6063      	str	r3, [r4, #4]
d03c99f6:	bf04      	itt	eq
d03c99f8:	1949      	addeq	r1, r1, r5
d03c99fa:	6021      	streq	r1, [r4, #0]
d03c99fc:	6054      	str	r4, [r2, #4]
d03c99fe:	e7c7      	b.n	d03c9990 <_free_r+0x28>
d03c9a00:	b003      	add	sp, #12
d03c9a02:	bd30      	pop	{r4, r5, pc}
d03c9a04:	d03cf534 	.word	0xd03cf534

d03c9a08 <_malloc_r>:
d03c9a08:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03c9a0a:	1ccd      	adds	r5, r1, #3
d03c9a0c:	f025 0503 	bic.w	r5, r5, #3
d03c9a10:	3508      	adds	r5, #8
d03c9a12:	2d0c      	cmp	r5, #12
d03c9a14:	bf38      	it	cc
d03c9a16:	250c      	movcc	r5, #12
d03c9a18:	2d00      	cmp	r5, #0
d03c9a1a:	4606      	mov	r6, r0
d03c9a1c:	db01      	blt.n	d03c9a22 <_malloc_r+0x1a>
d03c9a1e:	42a9      	cmp	r1, r5
d03c9a20:	d903      	bls.n	d03c9a2a <_malloc_r+0x22>
d03c9a22:	230c      	movs	r3, #12
d03c9a24:	6033      	str	r3, [r6, #0]
d03c9a26:	2000      	movs	r0, #0
d03c9a28:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c9a2a:	f000 fcdf 	bl	d03ca3ec <__malloc_lock>
d03c9a2e:	4921      	ldr	r1, [pc, #132]	; (d03c9ab4 <_malloc_r+0xac>)
d03c9a30:	680a      	ldr	r2, [r1, #0]
d03c9a32:	4614      	mov	r4, r2
d03c9a34:	b99c      	cbnz	r4, d03c9a5e <_malloc_r+0x56>
d03c9a36:	4f20      	ldr	r7, [pc, #128]	; (d03c9ab8 <_malloc_r+0xb0>)
d03c9a38:	683b      	ldr	r3, [r7, #0]
d03c9a3a:	b923      	cbnz	r3, d03c9a46 <_malloc_r+0x3e>
d03c9a3c:	4621      	mov	r1, r4
d03c9a3e:	4630      	mov	r0, r6
d03c9a40:	f7f6 fb4e 	bl	d03c00e0 <_sbrk_r>
d03c9a44:	6038      	str	r0, [r7, #0]
d03c9a46:	4629      	mov	r1, r5
d03c9a48:	4630      	mov	r0, r6
d03c9a4a:	f7f6 fb49 	bl	d03c00e0 <_sbrk_r>
d03c9a4e:	1c43      	adds	r3, r0, #1
d03c9a50:	d123      	bne.n	d03c9a9a <_malloc_r+0x92>
d03c9a52:	230c      	movs	r3, #12
d03c9a54:	6033      	str	r3, [r6, #0]
d03c9a56:	4630      	mov	r0, r6
d03c9a58:	f000 fcce 	bl	d03ca3f8 <__malloc_unlock>
d03c9a5c:	e7e3      	b.n	d03c9a26 <_malloc_r+0x1e>
d03c9a5e:	6823      	ldr	r3, [r4, #0]
d03c9a60:	1b5b      	subs	r3, r3, r5
d03c9a62:	d417      	bmi.n	d03c9a94 <_malloc_r+0x8c>
d03c9a64:	2b0b      	cmp	r3, #11
d03c9a66:	d903      	bls.n	d03c9a70 <_malloc_r+0x68>
d03c9a68:	6023      	str	r3, [r4, #0]
d03c9a6a:	441c      	add	r4, r3
d03c9a6c:	6025      	str	r5, [r4, #0]
d03c9a6e:	e004      	b.n	d03c9a7a <_malloc_r+0x72>
d03c9a70:	6863      	ldr	r3, [r4, #4]
d03c9a72:	42a2      	cmp	r2, r4
d03c9a74:	bf0c      	ite	eq
d03c9a76:	600b      	streq	r3, [r1, #0]
d03c9a78:	6053      	strne	r3, [r2, #4]
d03c9a7a:	4630      	mov	r0, r6
d03c9a7c:	f000 fcbc 	bl	d03ca3f8 <__malloc_unlock>
d03c9a80:	f104 000b 	add.w	r0, r4, #11
d03c9a84:	1d23      	adds	r3, r4, #4
d03c9a86:	f020 0007 	bic.w	r0, r0, #7
d03c9a8a:	1ac2      	subs	r2, r0, r3
d03c9a8c:	d0cc      	beq.n	d03c9a28 <_malloc_r+0x20>
d03c9a8e:	1a1b      	subs	r3, r3, r0
d03c9a90:	50a3      	str	r3, [r4, r2]
d03c9a92:	e7c9      	b.n	d03c9a28 <_malloc_r+0x20>
d03c9a94:	4622      	mov	r2, r4
d03c9a96:	6864      	ldr	r4, [r4, #4]
d03c9a98:	e7cc      	b.n	d03c9a34 <_malloc_r+0x2c>
d03c9a9a:	1cc4      	adds	r4, r0, #3
d03c9a9c:	f024 0403 	bic.w	r4, r4, #3
d03c9aa0:	42a0      	cmp	r0, r4
d03c9aa2:	d0e3      	beq.n	d03c9a6c <_malloc_r+0x64>
d03c9aa4:	1a21      	subs	r1, r4, r0
d03c9aa6:	4630      	mov	r0, r6
d03c9aa8:	f7f6 fb1a 	bl	d03c00e0 <_sbrk_r>
d03c9aac:	3001      	adds	r0, #1
d03c9aae:	d1dd      	bne.n	d03c9a6c <_malloc_r+0x64>
d03c9ab0:	e7cf      	b.n	d03c9a52 <_malloc_r+0x4a>
d03c9ab2:	bf00      	nop
d03c9ab4:	d03cf534 	.word	0xd03cf534
d03c9ab8:	d03cf538 	.word	0xd03cf538

d03c9abc <swapfunc>:
d03c9abc:	2b02      	cmp	r3, #2
d03c9abe:	b510      	push	{r4, lr}
d03c9ac0:	d00a      	beq.n	d03c9ad8 <swapfunc+0x1c>
d03c9ac2:	0892      	lsrs	r2, r2, #2
d03c9ac4:	3a01      	subs	r2, #1
d03c9ac6:	6803      	ldr	r3, [r0, #0]
d03c9ac8:	680c      	ldr	r4, [r1, #0]
d03c9aca:	f840 4b04 	str.w	r4, [r0], #4
d03c9ace:	2a00      	cmp	r2, #0
d03c9ad0:	f841 3b04 	str.w	r3, [r1], #4
d03c9ad4:	dcf6      	bgt.n	d03c9ac4 <swapfunc+0x8>
d03c9ad6:	bd10      	pop	{r4, pc}
d03c9ad8:	4402      	add	r2, r0
d03c9ada:	780c      	ldrb	r4, [r1, #0]
d03c9adc:	7803      	ldrb	r3, [r0, #0]
d03c9ade:	f800 4b01 	strb.w	r4, [r0], #1
d03c9ae2:	f801 3b01 	strb.w	r3, [r1], #1
d03c9ae6:	1a13      	subs	r3, r2, r0
d03c9ae8:	2b00      	cmp	r3, #0
d03c9aea:	dcf6      	bgt.n	d03c9ada <swapfunc+0x1e>
d03c9aec:	e7f3      	b.n	d03c9ad6 <swapfunc+0x1a>

d03c9aee <med3.isra.0>:
d03c9aee:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03c9af0:	460f      	mov	r7, r1
d03c9af2:	4614      	mov	r4, r2
d03c9af4:	4606      	mov	r6, r0
d03c9af6:	461d      	mov	r5, r3
d03c9af8:	4798      	blx	r3
d03c9afa:	2800      	cmp	r0, #0
d03c9afc:	4621      	mov	r1, r4
d03c9afe:	4638      	mov	r0, r7
d03c9b00:	da0c      	bge.n	d03c9b1c <med3.isra.0+0x2e>
d03c9b02:	47a8      	blx	r5
d03c9b04:	2800      	cmp	r0, #0
d03c9b06:	da02      	bge.n	d03c9b0e <med3.isra.0+0x20>
d03c9b08:	463c      	mov	r4, r7
d03c9b0a:	4620      	mov	r0, r4
d03c9b0c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c9b0e:	4621      	mov	r1, r4
d03c9b10:	4630      	mov	r0, r6
d03c9b12:	47a8      	blx	r5
d03c9b14:	2800      	cmp	r0, #0
d03c9b16:	dbf8      	blt.n	d03c9b0a <med3.isra.0+0x1c>
d03c9b18:	4634      	mov	r4, r6
d03c9b1a:	e7f6      	b.n	d03c9b0a <med3.isra.0+0x1c>
d03c9b1c:	47a8      	blx	r5
d03c9b1e:	2800      	cmp	r0, #0
d03c9b20:	dcf2      	bgt.n	d03c9b08 <med3.isra.0+0x1a>
d03c9b22:	4621      	mov	r1, r4
d03c9b24:	4630      	mov	r0, r6
d03c9b26:	47a8      	blx	r5
d03c9b28:	2800      	cmp	r0, #0
d03c9b2a:	daee      	bge.n	d03c9b0a <med3.isra.0+0x1c>
d03c9b2c:	e7f4      	b.n	d03c9b18 <med3.isra.0+0x2a>

d03c9b2e <qsort>:
d03c9b2e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c9b32:	469a      	mov	sl, r3
d03c9b34:	ea40 0302 	orr.w	r3, r0, r2
d03c9b38:	079b      	lsls	r3, r3, #30
d03c9b3a:	b097      	sub	sp, #92	; 0x5c
d03c9b3c:	4606      	mov	r6, r0
d03c9b3e:	4614      	mov	r4, r2
d03c9b40:	d11a      	bne.n	d03c9b78 <qsort+0x4a>
d03c9b42:	f1b2 0804 	subs.w	r8, r2, #4
d03c9b46:	bf18      	it	ne
d03c9b48:	f04f 0801 	movne.w	r8, #1
d03c9b4c:	2300      	movs	r3, #0
d03c9b4e:	9302      	str	r3, [sp, #8]
d03c9b50:	1933      	adds	r3, r6, r4
d03c9b52:	fb04 f701 	mul.w	r7, r4, r1
d03c9b56:	9301      	str	r3, [sp, #4]
d03c9b58:	2906      	cmp	r1, #6
d03c9b5a:	eb06 0307 	add.w	r3, r6, r7
d03c9b5e:	9303      	str	r3, [sp, #12]
d03c9b60:	d82a      	bhi.n	d03c9bb8 <qsort+0x8a>
d03c9b62:	9b01      	ldr	r3, [sp, #4]
d03c9b64:	9a03      	ldr	r2, [sp, #12]
d03c9b66:	4293      	cmp	r3, r2
d03c9b68:	d310      	bcc.n	d03c9b8c <qsort+0x5e>
d03c9b6a:	9b02      	ldr	r3, [sp, #8]
d03c9b6c:	2b00      	cmp	r3, #0
d03c9b6e:	f040 811f 	bne.w	d03c9db0 <qsort+0x282>
d03c9b72:	b017      	add	sp, #92	; 0x5c
d03c9b74:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c9b78:	f04f 0802 	mov.w	r8, #2
d03c9b7c:	e7e6      	b.n	d03c9b4c <qsort+0x1e>
d03c9b7e:	4643      	mov	r3, r8
d03c9b80:	4622      	mov	r2, r4
d03c9b82:	4639      	mov	r1, r7
d03c9b84:	4628      	mov	r0, r5
d03c9b86:	f7ff ff99 	bl	d03c9abc <swapfunc>
d03c9b8a:	e00e      	b.n	d03c9baa <qsort+0x7c>
d03c9b8c:	9d01      	ldr	r5, [sp, #4]
d03c9b8e:	e00d      	b.n	d03c9bac <qsort+0x7e>
d03c9b90:	1b2f      	subs	r7, r5, r4
d03c9b92:	4629      	mov	r1, r5
d03c9b94:	4638      	mov	r0, r7
d03c9b96:	47d0      	blx	sl
d03c9b98:	2800      	cmp	r0, #0
d03c9b9a:	dd09      	ble.n	d03c9bb0 <qsort+0x82>
d03c9b9c:	f1b8 0f00 	cmp.w	r8, #0
d03c9ba0:	d1ed      	bne.n	d03c9b7e <qsort+0x50>
d03c9ba2:	682b      	ldr	r3, [r5, #0]
d03c9ba4:	683a      	ldr	r2, [r7, #0]
d03c9ba6:	602a      	str	r2, [r5, #0]
d03c9ba8:	603b      	str	r3, [r7, #0]
d03c9baa:	463d      	mov	r5, r7
d03c9bac:	42ae      	cmp	r6, r5
d03c9bae:	d3ef      	bcc.n	d03c9b90 <qsort+0x62>
d03c9bb0:	9b01      	ldr	r3, [sp, #4]
d03c9bb2:	4423      	add	r3, r4
d03c9bb4:	9301      	str	r3, [sp, #4]
d03c9bb6:	e7d4      	b.n	d03c9b62 <qsort+0x34>
d03c9bb8:	ea4f 0951 	mov.w	r9, r1, lsr #1
d03c9bbc:	1b3f      	subs	r7, r7, r4
d03c9bbe:	2907      	cmp	r1, #7
d03c9bc0:	fb04 6909 	mla	r9, r4, r9, r6
d03c9bc4:	4437      	add	r7, r6
d03c9bc6:	d022      	beq.n	d03c9c0e <qsort+0xe0>
d03c9bc8:	2928      	cmp	r1, #40	; 0x28
d03c9bca:	d945      	bls.n	d03c9c58 <qsort+0x12a>
d03c9bcc:	08c9      	lsrs	r1, r1, #3
d03c9bce:	fb04 f501 	mul.w	r5, r4, r1
d03c9bd2:	4653      	mov	r3, sl
d03c9bd4:	eb06 0245 	add.w	r2, r6, r5, lsl #1
d03c9bd8:	1971      	adds	r1, r6, r5
d03c9bda:	4630      	mov	r0, r6
d03c9bdc:	f7ff ff87 	bl	d03c9aee <med3.isra.0>
d03c9be0:	4649      	mov	r1, r9
d03c9be2:	eb09 0205 	add.w	r2, r9, r5
d03c9be6:	4653      	mov	r3, sl
d03c9be8:	4683      	mov	fp, r0
d03c9bea:	1b48      	subs	r0, r1, r5
d03c9bec:	f7ff ff7f 	bl	d03c9aee <med3.isra.0>
d03c9bf0:	463a      	mov	r2, r7
d03c9bf2:	4681      	mov	r9, r0
d03c9bf4:	4653      	mov	r3, sl
d03c9bf6:	1b79      	subs	r1, r7, r5
d03c9bf8:	eba7 0045 	sub.w	r0, r7, r5, lsl #1
d03c9bfc:	f7ff ff77 	bl	d03c9aee <med3.isra.0>
d03c9c00:	4602      	mov	r2, r0
d03c9c02:	4649      	mov	r1, r9
d03c9c04:	4653      	mov	r3, sl
d03c9c06:	4658      	mov	r0, fp
d03c9c08:	f7ff ff71 	bl	d03c9aee <med3.isra.0>
d03c9c0c:	4681      	mov	r9, r0
d03c9c0e:	f1b8 0f00 	cmp.w	r8, #0
d03c9c12:	d124      	bne.n	d03c9c5e <qsort+0x130>
d03c9c14:	6833      	ldr	r3, [r6, #0]
d03c9c16:	f8d9 2000 	ldr.w	r2, [r9]
d03c9c1a:	6032      	str	r2, [r6, #0]
d03c9c1c:	f8c9 3000 	str.w	r3, [r9]
d03c9c20:	eb06 0b04 	add.w	fp, r6, r4
d03c9c24:	46b9      	mov	r9, r7
d03c9c26:	465d      	mov	r5, fp
d03c9c28:	2300      	movs	r3, #0
d03c9c2a:	45bb      	cmp	fp, r7
d03c9c2c:	d835      	bhi.n	d03c9c9a <qsort+0x16c>
d03c9c2e:	4631      	mov	r1, r6
d03c9c30:	4658      	mov	r0, fp
d03c9c32:	9304      	str	r3, [sp, #16]
d03c9c34:	47d0      	blx	sl
d03c9c36:	2800      	cmp	r0, #0
d03c9c38:	9b04      	ldr	r3, [sp, #16]
d03c9c3a:	dc3e      	bgt.n	d03c9cba <qsort+0x18c>
d03c9c3c:	d10a      	bne.n	d03c9c54 <qsort+0x126>
d03c9c3e:	f1b8 0f00 	cmp.w	r8, #0
d03c9c42:	d113      	bne.n	d03c9c6c <qsort+0x13e>
d03c9c44:	682b      	ldr	r3, [r5, #0]
d03c9c46:	f8db 2000 	ldr.w	r2, [fp]
d03c9c4a:	602a      	str	r2, [r5, #0]
d03c9c4c:	f8cb 3000 	str.w	r3, [fp]
d03c9c50:	4425      	add	r5, r4
d03c9c52:	2301      	movs	r3, #1
d03c9c54:	44a3      	add	fp, r4
d03c9c56:	e7e8      	b.n	d03c9c2a <qsort+0xfc>
d03c9c58:	463a      	mov	r2, r7
d03c9c5a:	46b3      	mov	fp, r6
d03c9c5c:	e7d1      	b.n	d03c9c02 <qsort+0xd4>
d03c9c5e:	4643      	mov	r3, r8
d03c9c60:	4622      	mov	r2, r4
d03c9c62:	4649      	mov	r1, r9
d03c9c64:	4630      	mov	r0, r6
d03c9c66:	f7ff ff29 	bl	d03c9abc <swapfunc>
d03c9c6a:	e7d9      	b.n	d03c9c20 <qsort+0xf2>
d03c9c6c:	4643      	mov	r3, r8
d03c9c6e:	4622      	mov	r2, r4
d03c9c70:	4659      	mov	r1, fp
d03c9c72:	4628      	mov	r0, r5
d03c9c74:	f7ff ff22 	bl	d03c9abc <swapfunc>
d03c9c78:	e7ea      	b.n	d03c9c50 <qsort+0x122>
d03c9c7a:	d10b      	bne.n	d03c9c94 <qsort+0x166>
d03c9c7c:	f1b8 0f00 	cmp.w	r8, #0
d03c9c80:	d114      	bne.n	d03c9cac <qsort+0x17e>
d03c9c82:	683b      	ldr	r3, [r7, #0]
d03c9c84:	f8d9 2000 	ldr.w	r2, [r9]
d03c9c88:	603a      	str	r2, [r7, #0]
d03c9c8a:	f8c9 3000 	str.w	r3, [r9]
d03c9c8e:	eba9 0904 	sub.w	r9, r9, r4
d03c9c92:	2301      	movs	r3, #1
d03c9c94:	9f04      	ldr	r7, [sp, #16]
d03c9c96:	45bb      	cmp	fp, r7
d03c9c98:	d90f      	bls.n	d03c9cba <qsort+0x18c>
d03c9c9a:	2b00      	cmp	r3, #0
d03c9c9c:	d143      	bne.n	d03c9d26 <qsort+0x1f8>
d03c9c9e:	9b01      	ldr	r3, [sp, #4]
d03c9ca0:	9a03      	ldr	r2, [sp, #12]
d03c9ca2:	4293      	cmp	r3, r2
d03c9ca4:	f4bf af61 	bcs.w	d03c9b6a <qsort+0x3c>
d03c9ca8:	9d01      	ldr	r5, [sp, #4]
d03c9caa:	e036      	b.n	d03c9d1a <qsort+0x1ec>
d03c9cac:	4643      	mov	r3, r8
d03c9cae:	4622      	mov	r2, r4
d03c9cb0:	4649      	mov	r1, r9
d03c9cb2:	4638      	mov	r0, r7
d03c9cb4:	f7ff ff02 	bl	d03c9abc <swapfunc>
d03c9cb8:	e7e9      	b.n	d03c9c8e <qsort+0x160>
d03c9cba:	4631      	mov	r1, r6
d03c9cbc:	4638      	mov	r0, r7
d03c9cbe:	9305      	str	r3, [sp, #20]
d03c9cc0:	47d0      	blx	sl
d03c9cc2:	1b3b      	subs	r3, r7, r4
d03c9cc4:	2800      	cmp	r0, #0
d03c9cc6:	9304      	str	r3, [sp, #16]
d03c9cc8:	9b05      	ldr	r3, [sp, #20]
d03c9cca:	dad6      	bge.n	d03c9c7a <qsort+0x14c>
d03c9ccc:	f1b8 0f00 	cmp.w	r8, #0
d03c9cd0:	d006      	beq.n	d03c9ce0 <qsort+0x1b2>
d03c9cd2:	4643      	mov	r3, r8
d03c9cd4:	4622      	mov	r2, r4
d03c9cd6:	4639      	mov	r1, r7
d03c9cd8:	4658      	mov	r0, fp
d03c9cda:	f7ff feef 	bl	d03c9abc <swapfunc>
d03c9cde:	e005      	b.n	d03c9cec <qsort+0x1be>
d03c9ce0:	f8db 3000 	ldr.w	r3, [fp]
d03c9ce4:	683a      	ldr	r2, [r7, #0]
d03c9ce6:	f8cb 2000 	str.w	r2, [fp]
d03c9cea:	603b      	str	r3, [r7, #0]
d03c9cec:	9f04      	ldr	r7, [sp, #16]
d03c9cee:	e7b0      	b.n	d03c9c52 <qsort+0x124>
d03c9cf0:	4643      	mov	r3, r8
d03c9cf2:	4622      	mov	r2, r4
d03c9cf4:	4639      	mov	r1, r7
d03c9cf6:	4628      	mov	r0, r5
d03c9cf8:	f7ff fee0 	bl	d03c9abc <swapfunc>
d03c9cfc:	e00c      	b.n	d03c9d18 <qsort+0x1ea>
d03c9cfe:	1b2f      	subs	r7, r5, r4
d03c9d00:	4629      	mov	r1, r5
d03c9d02:	4638      	mov	r0, r7
d03c9d04:	47d0      	blx	sl
d03c9d06:	2800      	cmp	r0, #0
d03c9d08:	dd09      	ble.n	d03c9d1e <qsort+0x1f0>
d03c9d0a:	f1b8 0f00 	cmp.w	r8, #0
d03c9d0e:	d1ef      	bne.n	d03c9cf0 <qsort+0x1c2>
d03c9d10:	682b      	ldr	r3, [r5, #0]
d03c9d12:	683a      	ldr	r2, [r7, #0]
d03c9d14:	602a      	str	r2, [r5, #0]
d03c9d16:	603b      	str	r3, [r7, #0]
d03c9d18:	463d      	mov	r5, r7
d03c9d1a:	42ae      	cmp	r6, r5
d03c9d1c:	d3ef      	bcc.n	d03c9cfe <qsort+0x1d0>
d03c9d1e:	9b01      	ldr	r3, [sp, #4]
d03c9d20:	4423      	add	r3, r4
d03c9d22:	9301      	str	r3, [sp, #4]
d03c9d24:	e7bb      	b.n	d03c9c9e <qsort+0x170>
d03c9d26:	ebab 0305 	sub.w	r3, fp, r5
d03c9d2a:	1baa      	subs	r2, r5, r6
d03c9d2c:	429a      	cmp	r2, r3
d03c9d2e:	bfa8      	it	ge
d03c9d30:	461a      	movge	r2, r3
d03c9d32:	9301      	str	r3, [sp, #4]
d03c9d34:	b12a      	cbz	r2, d03c9d42 <qsort+0x214>
d03c9d36:	4643      	mov	r3, r8
d03c9d38:	ebab 0102 	sub.w	r1, fp, r2
d03c9d3c:	4630      	mov	r0, r6
d03c9d3e:	f7ff febd 	bl	d03c9abc <swapfunc>
d03c9d42:	9b03      	ldr	r3, [sp, #12]
d03c9d44:	eba3 0209 	sub.w	r2, r3, r9
d03c9d48:	eba9 0707 	sub.w	r7, r9, r7
d03c9d4c:	1b12      	subs	r2, r2, r4
d03c9d4e:	42ba      	cmp	r2, r7
d03c9d50:	bf28      	it	cs
d03c9d52:	463a      	movcs	r2, r7
d03c9d54:	b12a      	cbz	r2, d03c9d62 <qsort+0x234>
d03c9d56:	9903      	ldr	r1, [sp, #12]
d03c9d58:	4643      	mov	r3, r8
d03c9d5a:	1a89      	subs	r1, r1, r2
d03c9d5c:	4658      	mov	r0, fp
d03c9d5e:	f7ff fead 	bl	d03c9abc <swapfunc>
d03c9d62:	f8dd 9004 	ldr.w	r9, [sp, #4]
d03c9d66:	9b03      	ldr	r3, [sp, #12]
d03c9d68:	454f      	cmp	r7, r9
d03c9d6a:	eba3 0007 	sub.w	r0, r3, r7
d03c9d6e:	d904      	bls.n	d03c9d7a <qsort+0x24c>
d03c9d70:	4633      	mov	r3, r6
d03c9d72:	46b9      	mov	r9, r7
d03c9d74:	9f01      	ldr	r7, [sp, #4]
d03c9d76:	4606      	mov	r6, r0
d03c9d78:	4618      	mov	r0, r3
d03c9d7a:	42a7      	cmp	r7, r4
d03c9d7c:	d921      	bls.n	d03c9dc2 <qsort+0x294>
d03c9d7e:	fbb7 f1f4 	udiv	r1, r7, r4
d03c9d82:	9b02      	ldr	r3, [sp, #8]
d03c9d84:	2b07      	cmp	r3, #7
d03c9d86:	d80d      	bhi.n	d03c9da4 <qsort+0x276>
d03c9d88:	fbb9 f7f4 	udiv	r7, r9, r4
d03c9d8c:	aa16      	add	r2, sp, #88	; 0x58
d03c9d8e:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
d03c9d92:	f843 6c40 	str.w	r6, [r3, #-64]
d03c9d96:	f843 7c3c 	str.w	r7, [r3, #-60]
d03c9d9a:	9b02      	ldr	r3, [sp, #8]
d03c9d9c:	3301      	adds	r3, #1
d03c9d9e:	9302      	str	r3, [sp, #8]
d03c9da0:	4606      	mov	r6, r0
d03c9da2:	e6d5      	b.n	d03c9b50 <qsort+0x22>
d03c9da4:	4653      	mov	r3, sl
d03c9da6:	4622      	mov	r2, r4
d03c9da8:	f7ff fec1 	bl	d03c9b2e <qsort>
d03c9dac:	45a1      	cmp	r9, r4
d03c9dae:	d80b      	bhi.n	d03c9dc8 <qsort+0x29a>
d03c9db0:	9b02      	ldr	r3, [sp, #8]
d03c9db2:	aa16      	add	r2, sp, #88	; 0x58
d03c9db4:	3b01      	subs	r3, #1
d03c9db6:	9302      	str	r3, [sp, #8]
d03c9db8:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
d03c9dbc:	e953 0110 	ldrd	r0, r1, [r3, #-64]	; 0x40
d03c9dc0:	e7ee      	b.n	d03c9da0 <qsort+0x272>
d03c9dc2:	45a1      	cmp	r9, r4
d03c9dc4:	f67f aed1 	bls.w	d03c9b6a <qsort+0x3c>
d03c9dc8:	fbb9 f1f4 	udiv	r1, r9, r4
d03c9dcc:	4630      	mov	r0, r6
d03c9dce:	e7e7      	b.n	d03c9da0 <qsort+0x272>

d03c9dd0 <setbuf>:
d03c9dd0:	2900      	cmp	r1, #0
d03c9dd2:	f44f 6380 	mov.w	r3, #1024	; 0x400
d03c9dd6:	bf0c      	ite	eq
d03c9dd8:	2202      	moveq	r2, #2
d03c9dda:	2200      	movne	r2, #0
d03c9ddc:	f000 b800 	b.w	d03c9de0 <setvbuf>

d03c9de0 <setvbuf>:
d03c9de0:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d03c9de4:	461d      	mov	r5, r3
d03c9de6:	4b5d      	ldr	r3, [pc, #372]	; (d03c9f5c <setvbuf+0x17c>)
d03c9de8:	681f      	ldr	r7, [r3, #0]
d03c9dea:	4604      	mov	r4, r0
d03c9dec:	460e      	mov	r6, r1
d03c9dee:	4690      	mov	r8, r2
d03c9df0:	b127      	cbz	r7, d03c9dfc <setvbuf+0x1c>
d03c9df2:	69bb      	ldr	r3, [r7, #24]
d03c9df4:	b913      	cbnz	r3, d03c9dfc <setvbuf+0x1c>
d03c9df6:	4638      	mov	r0, r7
d03c9df8:	f000 fa34 	bl	d03ca264 <__sinit>
d03c9dfc:	4b58      	ldr	r3, [pc, #352]	; (d03c9f60 <setvbuf+0x180>)
d03c9dfe:	429c      	cmp	r4, r3
d03c9e00:	d167      	bne.n	d03c9ed2 <setvbuf+0xf2>
d03c9e02:	687c      	ldr	r4, [r7, #4]
d03c9e04:	f1b8 0f02 	cmp.w	r8, #2
d03c9e08:	d006      	beq.n	d03c9e18 <setvbuf+0x38>
d03c9e0a:	f1b8 0f01 	cmp.w	r8, #1
d03c9e0e:	f200 809f 	bhi.w	d03c9f50 <setvbuf+0x170>
d03c9e12:	2d00      	cmp	r5, #0
d03c9e14:	f2c0 809c 	blt.w	d03c9f50 <setvbuf+0x170>
d03c9e18:	6e63      	ldr	r3, [r4, #100]	; 0x64
d03c9e1a:	07db      	lsls	r3, r3, #31
d03c9e1c:	d405      	bmi.n	d03c9e2a <setvbuf+0x4a>
d03c9e1e:	89a3      	ldrh	r3, [r4, #12]
d03c9e20:	0598      	lsls	r0, r3, #22
d03c9e22:	d402      	bmi.n	d03c9e2a <setvbuf+0x4a>
d03c9e24:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03c9e26:	f000 fabb 	bl	d03ca3a0 <__retarget_lock_acquire_recursive>
d03c9e2a:	4621      	mov	r1, r4
d03c9e2c:	4638      	mov	r0, r7
d03c9e2e:	f000 f985 	bl	d03ca13c <_fflush_r>
d03c9e32:	6b61      	ldr	r1, [r4, #52]	; 0x34
d03c9e34:	b141      	cbz	r1, d03c9e48 <setvbuf+0x68>
d03c9e36:	f104 0344 	add.w	r3, r4, #68	; 0x44
d03c9e3a:	4299      	cmp	r1, r3
d03c9e3c:	d002      	beq.n	d03c9e44 <setvbuf+0x64>
d03c9e3e:	4638      	mov	r0, r7
d03c9e40:	f7ff fd92 	bl	d03c9968 <_free_r>
d03c9e44:	2300      	movs	r3, #0
d03c9e46:	6363      	str	r3, [r4, #52]	; 0x34
d03c9e48:	2300      	movs	r3, #0
d03c9e4a:	61a3      	str	r3, [r4, #24]
d03c9e4c:	6063      	str	r3, [r4, #4]
d03c9e4e:	89a3      	ldrh	r3, [r4, #12]
d03c9e50:	0619      	lsls	r1, r3, #24
d03c9e52:	d503      	bpl.n	d03c9e5c <setvbuf+0x7c>
d03c9e54:	6921      	ldr	r1, [r4, #16]
d03c9e56:	4638      	mov	r0, r7
d03c9e58:	f7ff fd86 	bl	d03c9968 <_free_r>
d03c9e5c:	89a3      	ldrh	r3, [r4, #12]
d03c9e5e:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d03c9e62:	f023 0303 	bic.w	r3, r3, #3
d03c9e66:	f1b8 0f02 	cmp.w	r8, #2
d03c9e6a:	81a3      	strh	r3, [r4, #12]
d03c9e6c:	d06c      	beq.n	d03c9f48 <setvbuf+0x168>
d03c9e6e:	ab01      	add	r3, sp, #4
d03c9e70:	466a      	mov	r2, sp
d03c9e72:	4621      	mov	r1, r4
d03c9e74:	4638      	mov	r0, r7
d03c9e76:	f000 fa95 	bl	d03ca3a4 <__swhatbuf_r>
d03c9e7a:	89a3      	ldrh	r3, [r4, #12]
d03c9e7c:	4318      	orrs	r0, r3
d03c9e7e:	81a0      	strh	r0, [r4, #12]
d03c9e80:	2d00      	cmp	r5, #0
d03c9e82:	d130      	bne.n	d03c9ee6 <setvbuf+0x106>
d03c9e84:	9d00      	ldr	r5, [sp, #0]
d03c9e86:	4628      	mov	r0, r5
d03c9e88:	f7ff fd3a 	bl	d03c9900 <malloc>
d03c9e8c:	4606      	mov	r6, r0
d03c9e8e:	2800      	cmp	r0, #0
d03c9e90:	d155      	bne.n	d03c9f3e <setvbuf+0x15e>
d03c9e92:	f8dd 9000 	ldr.w	r9, [sp]
d03c9e96:	45a9      	cmp	r9, r5
d03c9e98:	d14a      	bne.n	d03c9f30 <setvbuf+0x150>
d03c9e9a:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d03c9e9e:	2200      	movs	r2, #0
d03c9ea0:	60a2      	str	r2, [r4, #8]
d03c9ea2:	f104 0247 	add.w	r2, r4, #71	; 0x47
d03c9ea6:	6022      	str	r2, [r4, #0]
d03c9ea8:	6122      	str	r2, [r4, #16]
d03c9eaa:	2201      	movs	r2, #1
d03c9eac:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d03c9eb0:	6162      	str	r2, [r4, #20]
d03c9eb2:	6e62      	ldr	r2, [r4, #100]	; 0x64
d03c9eb4:	f043 0302 	orr.w	r3, r3, #2
d03c9eb8:	07d2      	lsls	r2, r2, #31
d03c9eba:	81a3      	strh	r3, [r4, #12]
d03c9ebc:	d405      	bmi.n	d03c9eca <setvbuf+0xea>
d03c9ebe:	f413 7f00 	tst.w	r3, #512	; 0x200
d03c9ec2:	d102      	bne.n	d03c9eca <setvbuf+0xea>
d03c9ec4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03c9ec6:	f000 fa6c 	bl	d03ca3a2 <__retarget_lock_release_recursive>
d03c9eca:	4628      	mov	r0, r5
d03c9ecc:	b003      	add	sp, #12
d03c9ece:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d03c9ed2:	4b24      	ldr	r3, [pc, #144]	; (d03c9f64 <setvbuf+0x184>)
d03c9ed4:	429c      	cmp	r4, r3
d03c9ed6:	d101      	bne.n	d03c9edc <setvbuf+0xfc>
d03c9ed8:	68bc      	ldr	r4, [r7, #8]
d03c9eda:	e793      	b.n	d03c9e04 <setvbuf+0x24>
d03c9edc:	4b22      	ldr	r3, [pc, #136]	; (d03c9f68 <setvbuf+0x188>)
d03c9ede:	429c      	cmp	r4, r3
d03c9ee0:	bf08      	it	eq
d03c9ee2:	68fc      	ldreq	r4, [r7, #12]
d03c9ee4:	e78e      	b.n	d03c9e04 <setvbuf+0x24>
d03c9ee6:	2e00      	cmp	r6, #0
d03c9ee8:	d0cd      	beq.n	d03c9e86 <setvbuf+0xa6>
d03c9eea:	69bb      	ldr	r3, [r7, #24]
d03c9eec:	b913      	cbnz	r3, d03c9ef4 <setvbuf+0x114>
d03c9eee:	4638      	mov	r0, r7
d03c9ef0:	f000 f9b8 	bl	d03ca264 <__sinit>
d03c9ef4:	f1b8 0f01 	cmp.w	r8, #1
d03c9ef8:	bf08      	it	eq
d03c9efa:	89a3      	ldrheq	r3, [r4, #12]
d03c9efc:	6026      	str	r6, [r4, #0]
d03c9efe:	bf04      	itt	eq
d03c9f00:	f043 0301 	orreq.w	r3, r3, #1
d03c9f04:	81a3      	strheq	r3, [r4, #12]
d03c9f06:	89a2      	ldrh	r2, [r4, #12]
d03c9f08:	f012 0308 	ands.w	r3, r2, #8
d03c9f0c:	e9c4 6504 	strd	r6, r5, [r4, #16]
d03c9f10:	d01c      	beq.n	d03c9f4c <setvbuf+0x16c>
d03c9f12:	07d3      	lsls	r3, r2, #31
d03c9f14:	bf41      	itttt	mi
d03c9f16:	2300      	movmi	r3, #0
d03c9f18:	426d      	negmi	r5, r5
d03c9f1a:	60a3      	strmi	r3, [r4, #8]
d03c9f1c:	61a5      	strmi	r5, [r4, #24]
d03c9f1e:	bf58      	it	pl
d03c9f20:	60a5      	strpl	r5, [r4, #8]
d03c9f22:	6e65      	ldr	r5, [r4, #100]	; 0x64
d03c9f24:	f015 0501 	ands.w	r5, r5, #1
d03c9f28:	d115      	bne.n	d03c9f56 <setvbuf+0x176>
d03c9f2a:	f412 7f00 	tst.w	r2, #512	; 0x200
d03c9f2e:	e7c8      	b.n	d03c9ec2 <setvbuf+0xe2>
d03c9f30:	4648      	mov	r0, r9
d03c9f32:	f7ff fce5 	bl	d03c9900 <malloc>
d03c9f36:	4606      	mov	r6, r0
d03c9f38:	2800      	cmp	r0, #0
d03c9f3a:	d0ae      	beq.n	d03c9e9a <setvbuf+0xba>
d03c9f3c:	464d      	mov	r5, r9
d03c9f3e:	89a3      	ldrh	r3, [r4, #12]
d03c9f40:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d03c9f44:	81a3      	strh	r3, [r4, #12]
d03c9f46:	e7d0      	b.n	d03c9eea <setvbuf+0x10a>
d03c9f48:	2500      	movs	r5, #0
d03c9f4a:	e7a8      	b.n	d03c9e9e <setvbuf+0xbe>
d03c9f4c:	60a3      	str	r3, [r4, #8]
d03c9f4e:	e7e8      	b.n	d03c9f22 <setvbuf+0x142>
d03c9f50:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d03c9f54:	e7b9      	b.n	d03c9eca <setvbuf+0xea>
d03c9f56:	2500      	movs	r5, #0
d03c9f58:	e7b7      	b.n	d03c9eca <setvbuf+0xea>
d03c9f5a:	bf00      	nop
d03c9f5c:	d03ccc08 	.word	0xd03ccc08
d03c9f60:	d03cc584 	.word	0xd03cc584
d03c9f64:	d03cc5a4 	.word	0xd03cc5a4
d03c9f68:	d03cc564 	.word	0xd03cc564

d03c9f6c <sniprintf>:
d03c9f6c:	b40c      	push	{r2, r3}
d03c9f6e:	b530      	push	{r4, r5, lr}
d03c9f70:	4b17      	ldr	r3, [pc, #92]	; (d03c9fd0 <sniprintf+0x64>)
d03c9f72:	1e0c      	subs	r4, r1, #0
d03c9f74:	681d      	ldr	r5, [r3, #0]
d03c9f76:	b09d      	sub	sp, #116	; 0x74
d03c9f78:	da08      	bge.n	d03c9f8c <sniprintf+0x20>
d03c9f7a:	238b      	movs	r3, #139	; 0x8b
d03c9f7c:	602b      	str	r3, [r5, #0]
d03c9f7e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c9f82:	b01d      	add	sp, #116	; 0x74
d03c9f84:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d03c9f88:	b002      	add	sp, #8
d03c9f8a:	4770      	bx	lr
d03c9f8c:	f44f 7302 	mov.w	r3, #520	; 0x208
d03c9f90:	f8ad 3014 	strh.w	r3, [sp, #20]
d03c9f94:	bf14      	ite	ne
d03c9f96:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d03c9f9a:	4623      	moveq	r3, r4
d03c9f9c:	9304      	str	r3, [sp, #16]
d03c9f9e:	9307      	str	r3, [sp, #28]
d03c9fa0:	f64f 73ff 	movw	r3, #65535	; 0xffff
d03c9fa4:	9002      	str	r0, [sp, #8]
d03c9fa6:	9006      	str	r0, [sp, #24]
d03c9fa8:	f8ad 3016 	strh.w	r3, [sp, #22]
d03c9fac:	9a20      	ldr	r2, [sp, #128]	; 0x80
d03c9fae:	ab21      	add	r3, sp, #132	; 0x84
d03c9fb0:	a902      	add	r1, sp, #8
d03c9fb2:	4628      	mov	r0, r5
d03c9fb4:	9301      	str	r3, [sp, #4]
d03c9fb6:	f000 fa81 	bl	d03ca4bc <_svfiprintf_r>
d03c9fba:	1c43      	adds	r3, r0, #1
d03c9fbc:	bfbc      	itt	lt
d03c9fbe:	238b      	movlt	r3, #139	; 0x8b
d03c9fc0:	602b      	strlt	r3, [r5, #0]
d03c9fc2:	2c00      	cmp	r4, #0
d03c9fc4:	d0dd      	beq.n	d03c9f82 <sniprintf+0x16>
d03c9fc6:	9b02      	ldr	r3, [sp, #8]
d03c9fc8:	2200      	movs	r2, #0
d03c9fca:	701a      	strb	r2, [r3, #0]
d03c9fcc:	e7d9      	b.n	d03c9f82 <sniprintf+0x16>
d03c9fce:	bf00      	nop
d03c9fd0:	d03ccc08 	.word	0xd03ccc08

d03c9fd4 <strcmp>:
d03c9fd4:	f810 2b01 	ldrb.w	r2, [r0], #1
d03c9fd8:	f811 3b01 	ldrb.w	r3, [r1], #1
d03c9fdc:	2a01      	cmp	r2, #1
d03c9fde:	bf28      	it	cs
d03c9fe0:	429a      	cmpcs	r2, r3
d03c9fe2:	d0f7      	beq.n	d03c9fd4 <strcmp>
d03c9fe4:	1ad0      	subs	r0, r2, r3
d03c9fe6:	4770      	bx	lr

d03c9fe8 <strcpy>:
d03c9fe8:	4603      	mov	r3, r0
d03c9fea:	f811 2b01 	ldrb.w	r2, [r1], #1
d03c9fee:	f803 2b01 	strb.w	r2, [r3], #1
d03c9ff2:	2a00      	cmp	r2, #0
d03c9ff4:	d1f9      	bne.n	d03c9fea <strcpy+0x2>
d03c9ff6:	4770      	bx	lr

d03c9ff8 <strlen>:
d03c9ff8:	4603      	mov	r3, r0
d03c9ffa:	f813 2b01 	ldrb.w	r2, [r3], #1
d03c9ffe:	2a00      	cmp	r2, #0
d03ca000:	d1fb      	bne.n	d03c9ffa <strlen+0x2>
d03ca002:	1a18      	subs	r0, r3, r0
d03ca004:	3801      	subs	r0, #1
d03ca006:	4770      	bx	lr

d03ca008 <strrchr>:
d03ca008:	b538      	push	{r3, r4, r5, lr}
d03ca00a:	4603      	mov	r3, r0
d03ca00c:	460c      	mov	r4, r1
d03ca00e:	b969      	cbnz	r1, d03ca02c <strrchr+0x24>
d03ca010:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d03ca014:	f000 bd29 	b.w	d03caa6a <strchr>
d03ca018:	1c43      	adds	r3, r0, #1
d03ca01a:	4605      	mov	r5, r0
d03ca01c:	4621      	mov	r1, r4
d03ca01e:	4618      	mov	r0, r3
d03ca020:	f000 fd23 	bl	d03caa6a <strchr>
d03ca024:	2800      	cmp	r0, #0
d03ca026:	d1f7      	bne.n	d03ca018 <strrchr+0x10>
d03ca028:	4628      	mov	r0, r5
d03ca02a:	bd38      	pop	{r3, r4, r5, pc}
d03ca02c:	2500      	movs	r5, #0
d03ca02e:	e7f5      	b.n	d03ca01c <strrchr+0x14>

d03ca030 <__sflush_r>:
d03ca030:	898a      	ldrh	r2, [r1, #12]
d03ca032:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03ca036:	4605      	mov	r5, r0
d03ca038:	0710      	lsls	r0, r2, #28
d03ca03a:	460c      	mov	r4, r1
d03ca03c:	d458      	bmi.n	d03ca0f0 <__sflush_r+0xc0>
d03ca03e:	684b      	ldr	r3, [r1, #4]
d03ca040:	2b00      	cmp	r3, #0
d03ca042:	dc05      	bgt.n	d03ca050 <__sflush_r+0x20>
d03ca044:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d03ca046:	2b00      	cmp	r3, #0
d03ca048:	dc02      	bgt.n	d03ca050 <__sflush_r+0x20>
d03ca04a:	2000      	movs	r0, #0
d03ca04c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03ca050:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d03ca052:	2e00      	cmp	r6, #0
d03ca054:	d0f9      	beq.n	d03ca04a <__sflush_r+0x1a>
d03ca056:	2300      	movs	r3, #0
d03ca058:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d03ca05c:	682f      	ldr	r7, [r5, #0]
d03ca05e:	602b      	str	r3, [r5, #0]
d03ca060:	d032      	beq.n	d03ca0c8 <__sflush_r+0x98>
d03ca062:	6d60      	ldr	r0, [r4, #84]	; 0x54
d03ca064:	89a3      	ldrh	r3, [r4, #12]
d03ca066:	075a      	lsls	r2, r3, #29
d03ca068:	d505      	bpl.n	d03ca076 <__sflush_r+0x46>
d03ca06a:	6863      	ldr	r3, [r4, #4]
d03ca06c:	1ac0      	subs	r0, r0, r3
d03ca06e:	6b63      	ldr	r3, [r4, #52]	; 0x34
d03ca070:	b10b      	cbz	r3, d03ca076 <__sflush_r+0x46>
d03ca072:	6c23      	ldr	r3, [r4, #64]	; 0x40
d03ca074:	1ac0      	subs	r0, r0, r3
d03ca076:	2300      	movs	r3, #0
d03ca078:	4602      	mov	r2, r0
d03ca07a:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d03ca07c:	6a21      	ldr	r1, [r4, #32]
d03ca07e:	4628      	mov	r0, r5
d03ca080:	47b0      	blx	r6
d03ca082:	1c43      	adds	r3, r0, #1
d03ca084:	89a3      	ldrh	r3, [r4, #12]
d03ca086:	d106      	bne.n	d03ca096 <__sflush_r+0x66>
d03ca088:	6829      	ldr	r1, [r5, #0]
d03ca08a:	291d      	cmp	r1, #29
d03ca08c:	d82c      	bhi.n	d03ca0e8 <__sflush_r+0xb8>
d03ca08e:	4a2a      	ldr	r2, [pc, #168]	; (d03ca138 <__sflush_r+0x108>)
d03ca090:	40ca      	lsrs	r2, r1
d03ca092:	07d6      	lsls	r6, r2, #31
d03ca094:	d528      	bpl.n	d03ca0e8 <__sflush_r+0xb8>
d03ca096:	2200      	movs	r2, #0
d03ca098:	6062      	str	r2, [r4, #4]
d03ca09a:	04d9      	lsls	r1, r3, #19
d03ca09c:	6922      	ldr	r2, [r4, #16]
d03ca09e:	6022      	str	r2, [r4, #0]
d03ca0a0:	d504      	bpl.n	d03ca0ac <__sflush_r+0x7c>
d03ca0a2:	1c42      	adds	r2, r0, #1
d03ca0a4:	d101      	bne.n	d03ca0aa <__sflush_r+0x7a>
d03ca0a6:	682b      	ldr	r3, [r5, #0]
d03ca0a8:	b903      	cbnz	r3, d03ca0ac <__sflush_r+0x7c>
d03ca0aa:	6560      	str	r0, [r4, #84]	; 0x54
d03ca0ac:	6b61      	ldr	r1, [r4, #52]	; 0x34
d03ca0ae:	602f      	str	r7, [r5, #0]
d03ca0b0:	2900      	cmp	r1, #0
d03ca0b2:	d0ca      	beq.n	d03ca04a <__sflush_r+0x1a>
d03ca0b4:	f104 0344 	add.w	r3, r4, #68	; 0x44
d03ca0b8:	4299      	cmp	r1, r3
d03ca0ba:	d002      	beq.n	d03ca0c2 <__sflush_r+0x92>
d03ca0bc:	4628      	mov	r0, r5
d03ca0be:	f7ff fc53 	bl	d03c9968 <_free_r>
d03ca0c2:	2000      	movs	r0, #0
d03ca0c4:	6360      	str	r0, [r4, #52]	; 0x34
d03ca0c6:	e7c1      	b.n	d03ca04c <__sflush_r+0x1c>
d03ca0c8:	6a21      	ldr	r1, [r4, #32]
d03ca0ca:	2301      	movs	r3, #1
d03ca0cc:	4628      	mov	r0, r5
d03ca0ce:	47b0      	blx	r6
d03ca0d0:	1c41      	adds	r1, r0, #1
d03ca0d2:	d1c7      	bne.n	d03ca064 <__sflush_r+0x34>
d03ca0d4:	682b      	ldr	r3, [r5, #0]
d03ca0d6:	2b00      	cmp	r3, #0
d03ca0d8:	d0c4      	beq.n	d03ca064 <__sflush_r+0x34>
d03ca0da:	2b1d      	cmp	r3, #29
d03ca0dc:	d001      	beq.n	d03ca0e2 <__sflush_r+0xb2>
d03ca0de:	2b16      	cmp	r3, #22
d03ca0e0:	d101      	bne.n	d03ca0e6 <__sflush_r+0xb6>
d03ca0e2:	602f      	str	r7, [r5, #0]
d03ca0e4:	e7b1      	b.n	d03ca04a <__sflush_r+0x1a>
d03ca0e6:	89a3      	ldrh	r3, [r4, #12]
d03ca0e8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d03ca0ec:	81a3      	strh	r3, [r4, #12]
d03ca0ee:	e7ad      	b.n	d03ca04c <__sflush_r+0x1c>
d03ca0f0:	690f      	ldr	r7, [r1, #16]
d03ca0f2:	2f00      	cmp	r7, #0
d03ca0f4:	d0a9      	beq.n	d03ca04a <__sflush_r+0x1a>
d03ca0f6:	0793      	lsls	r3, r2, #30
d03ca0f8:	680e      	ldr	r6, [r1, #0]
d03ca0fa:	bf08      	it	eq
d03ca0fc:	694b      	ldreq	r3, [r1, #20]
d03ca0fe:	600f      	str	r7, [r1, #0]
d03ca100:	bf18      	it	ne
d03ca102:	2300      	movne	r3, #0
d03ca104:	eba6 0807 	sub.w	r8, r6, r7
d03ca108:	608b      	str	r3, [r1, #8]
d03ca10a:	f1b8 0f00 	cmp.w	r8, #0
d03ca10e:	dd9c      	ble.n	d03ca04a <__sflush_r+0x1a>
d03ca110:	6a21      	ldr	r1, [r4, #32]
d03ca112:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d03ca114:	4643      	mov	r3, r8
d03ca116:	463a      	mov	r2, r7
d03ca118:	4628      	mov	r0, r5
d03ca11a:	47b0      	blx	r6
d03ca11c:	2800      	cmp	r0, #0
d03ca11e:	dc06      	bgt.n	d03ca12e <__sflush_r+0xfe>
d03ca120:	89a3      	ldrh	r3, [r4, #12]
d03ca122:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d03ca126:	81a3      	strh	r3, [r4, #12]
d03ca128:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03ca12c:	e78e      	b.n	d03ca04c <__sflush_r+0x1c>
d03ca12e:	4407      	add	r7, r0
d03ca130:	eba8 0800 	sub.w	r8, r8, r0
d03ca134:	e7e9      	b.n	d03ca10a <__sflush_r+0xda>
d03ca136:	bf00      	nop
d03ca138:	20400001 	.word	0x20400001

d03ca13c <_fflush_r>:
d03ca13c:	b538      	push	{r3, r4, r5, lr}
d03ca13e:	690b      	ldr	r3, [r1, #16]
d03ca140:	4605      	mov	r5, r0
d03ca142:	460c      	mov	r4, r1
d03ca144:	b913      	cbnz	r3, d03ca14c <_fflush_r+0x10>
d03ca146:	2500      	movs	r5, #0
d03ca148:	4628      	mov	r0, r5
d03ca14a:	bd38      	pop	{r3, r4, r5, pc}
d03ca14c:	b118      	cbz	r0, d03ca156 <_fflush_r+0x1a>
d03ca14e:	6983      	ldr	r3, [r0, #24]
d03ca150:	b90b      	cbnz	r3, d03ca156 <_fflush_r+0x1a>
d03ca152:	f000 f887 	bl	d03ca264 <__sinit>
d03ca156:	4b14      	ldr	r3, [pc, #80]	; (d03ca1a8 <_fflush_r+0x6c>)
d03ca158:	429c      	cmp	r4, r3
d03ca15a:	d11b      	bne.n	d03ca194 <_fflush_r+0x58>
d03ca15c:	686c      	ldr	r4, [r5, #4]
d03ca15e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d03ca162:	2b00      	cmp	r3, #0
d03ca164:	d0ef      	beq.n	d03ca146 <_fflush_r+0xa>
d03ca166:	6e62      	ldr	r2, [r4, #100]	; 0x64
d03ca168:	07d0      	lsls	r0, r2, #31
d03ca16a:	d404      	bmi.n	d03ca176 <_fflush_r+0x3a>
d03ca16c:	0599      	lsls	r1, r3, #22
d03ca16e:	d402      	bmi.n	d03ca176 <_fflush_r+0x3a>
d03ca170:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03ca172:	f000 f915 	bl	d03ca3a0 <__retarget_lock_acquire_recursive>
d03ca176:	4628      	mov	r0, r5
d03ca178:	4621      	mov	r1, r4
d03ca17a:	f7ff ff59 	bl	d03ca030 <__sflush_r>
d03ca17e:	6e63      	ldr	r3, [r4, #100]	; 0x64
d03ca180:	07da      	lsls	r2, r3, #31
d03ca182:	4605      	mov	r5, r0
d03ca184:	d4e0      	bmi.n	d03ca148 <_fflush_r+0xc>
d03ca186:	89a3      	ldrh	r3, [r4, #12]
d03ca188:	059b      	lsls	r3, r3, #22
d03ca18a:	d4dd      	bmi.n	d03ca148 <_fflush_r+0xc>
d03ca18c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03ca18e:	f000 f908 	bl	d03ca3a2 <__retarget_lock_release_recursive>
d03ca192:	e7d9      	b.n	d03ca148 <_fflush_r+0xc>
d03ca194:	4b05      	ldr	r3, [pc, #20]	; (d03ca1ac <_fflush_r+0x70>)
d03ca196:	429c      	cmp	r4, r3
d03ca198:	d101      	bne.n	d03ca19e <_fflush_r+0x62>
d03ca19a:	68ac      	ldr	r4, [r5, #8]
d03ca19c:	e7df      	b.n	d03ca15e <_fflush_r+0x22>
d03ca19e:	4b04      	ldr	r3, [pc, #16]	; (d03ca1b0 <_fflush_r+0x74>)
d03ca1a0:	429c      	cmp	r4, r3
d03ca1a2:	bf08      	it	eq
d03ca1a4:	68ec      	ldreq	r4, [r5, #12]
d03ca1a6:	e7da      	b.n	d03ca15e <_fflush_r+0x22>
d03ca1a8:	d03cc584 	.word	0xd03cc584
d03ca1ac:	d03cc5a4 	.word	0xd03cc5a4
d03ca1b0:	d03cc564 	.word	0xd03cc564

d03ca1b4 <std>:
d03ca1b4:	2300      	movs	r3, #0
d03ca1b6:	b510      	push	{r4, lr}
d03ca1b8:	4604      	mov	r4, r0
d03ca1ba:	e9c0 3300 	strd	r3, r3, [r0]
d03ca1be:	e9c0 3304 	strd	r3, r3, [r0, #16]
d03ca1c2:	6083      	str	r3, [r0, #8]
d03ca1c4:	8181      	strh	r1, [r0, #12]
d03ca1c6:	6643      	str	r3, [r0, #100]	; 0x64
d03ca1c8:	81c2      	strh	r2, [r0, #14]
d03ca1ca:	6183      	str	r3, [r0, #24]
d03ca1cc:	4619      	mov	r1, r3
d03ca1ce:	2208      	movs	r2, #8
d03ca1d0:	305c      	adds	r0, #92	; 0x5c
d03ca1d2:	f7ff fbc1 	bl	d03c9958 <memset>
d03ca1d6:	4b05      	ldr	r3, [pc, #20]	; (d03ca1ec <std+0x38>)
d03ca1d8:	6263      	str	r3, [r4, #36]	; 0x24
d03ca1da:	4b05      	ldr	r3, [pc, #20]	; (d03ca1f0 <std+0x3c>)
d03ca1dc:	62a3      	str	r3, [r4, #40]	; 0x28
d03ca1de:	4b05      	ldr	r3, [pc, #20]	; (d03ca1f4 <std+0x40>)
d03ca1e0:	62e3      	str	r3, [r4, #44]	; 0x2c
d03ca1e2:	4b05      	ldr	r3, [pc, #20]	; (d03ca1f8 <std+0x44>)
d03ca1e4:	6224      	str	r4, [r4, #32]
d03ca1e6:	6323      	str	r3, [r4, #48]	; 0x30
d03ca1e8:	bd10      	pop	{r4, pc}
d03ca1ea:	bf00      	nop
d03ca1ec:	d03ca9e5 	.word	0xd03ca9e5
d03ca1f0:	d03caa07 	.word	0xd03caa07
d03ca1f4:	d03caa3f 	.word	0xd03caa3f
d03ca1f8:	d03caa63 	.word	0xd03caa63

d03ca1fc <_cleanup_r>:
d03ca1fc:	4901      	ldr	r1, [pc, #4]	; (d03ca204 <_cleanup_r+0x8>)
d03ca1fe:	f000 b8af 	b.w	d03ca360 <_fwalk_reent>
d03ca202:	bf00      	nop
d03ca204:	d03ca13d 	.word	0xd03ca13d

d03ca208 <__sfmoreglue>:
d03ca208:	b570      	push	{r4, r5, r6, lr}
d03ca20a:	1e4a      	subs	r2, r1, #1
d03ca20c:	2568      	movs	r5, #104	; 0x68
d03ca20e:	4355      	muls	r5, r2
d03ca210:	460e      	mov	r6, r1
d03ca212:	f105 0174 	add.w	r1, r5, #116	; 0x74
d03ca216:	f7ff fbf7 	bl	d03c9a08 <_malloc_r>
d03ca21a:	4604      	mov	r4, r0
d03ca21c:	b140      	cbz	r0, d03ca230 <__sfmoreglue+0x28>
d03ca21e:	2100      	movs	r1, #0
d03ca220:	e9c0 1600 	strd	r1, r6, [r0]
d03ca224:	300c      	adds	r0, #12
d03ca226:	60a0      	str	r0, [r4, #8]
d03ca228:	f105 0268 	add.w	r2, r5, #104	; 0x68
d03ca22c:	f7ff fb94 	bl	d03c9958 <memset>
d03ca230:	4620      	mov	r0, r4
d03ca232:	bd70      	pop	{r4, r5, r6, pc}

d03ca234 <__sfp_lock_acquire>:
d03ca234:	4801      	ldr	r0, [pc, #4]	; (d03ca23c <__sfp_lock_acquire+0x8>)
d03ca236:	f000 b8b3 	b.w	d03ca3a0 <__retarget_lock_acquire_recursive>
d03ca23a:	bf00      	nop
d03ca23c:	d03cf6c8 	.word	0xd03cf6c8

d03ca240 <__sfp_lock_release>:
d03ca240:	4801      	ldr	r0, [pc, #4]	; (d03ca248 <__sfp_lock_release+0x8>)
d03ca242:	f000 b8ae 	b.w	d03ca3a2 <__retarget_lock_release_recursive>
d03ca246:	bf00      	nop
d03ca248:	d03cf6c8 	.word	0xd03cf6c8

d03ca24c <__sinit_lock_acquire>:
d03ca24c:	4801      	ldr	r0, [pc, #4]	; (d03ca254 <__sinit_lock_acquire+0x8>)
d03ca24e:	f000 b8a7 	b.w	d03ca3a0 <__retarget_lock_acquire_recursive>
d03ca252:	bf00      	nop
d03ca254:	d03cf6c3 	.word	0xd03cf6c3

d03ca258 <__sinit_lock_release>:
d03ca258:	4801      	ldr	r0, [pc, #4]	; (d03ca260 <__sinit_lock_release+0x8>)
d03ca25a:	f000 b8a2 	b.w	d03ca3a2 <__retarget_lock_release_recursive>
d03ca25e:	bf00      	nop
d03ca260:	d03cf6c3 	.word	0xd03cf6c3

d03ca264 <__sinit>:
d03ca264:	b510      	push	{r4, lr}
d03ca266:	4604      	mov	r4, r0
d03ca268:	f7ff fff0 	bl	d03ca24c <__sinit_lock_acquire>
d03ca26c:	69a3      	ldr	r3, [r4, #24]
d03ca26e:	b11b      	cbz	r3, d03ca278 <__sinit+0x14>
d03ca270:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d03ca274:	f7ff bff0 	b.w	d03ca258 <__sinit_lock_release>
d03ca278:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d03ca27c:	6523      	str	r3, [r4, #80]	; 0x50
d03ca27e:	4b13      	ldr	r3, [pc, #76]	; (d03ca2cc <__sinit+0x68>)
d03ca280:	4a13      	ldr	r2, [pc, #76]	; (d03ca2d0 <__sinit+0x6c>)
d03ca282:	681b      	ldr	r3, [r3, #0]
d03ca284:	62a2      	str	r2, [r4, #40]	; 0x28
d03ca286:	42a3      	cmp	r3, r4
d03ca288:	bf04      	itt	eq
d03ca28a:	2301      	moveq	r3, #1
d03ca28c:	61a3      	streq	r3, [r4, #24]
d03ca28e:	4620      	mov	r0, r4
d03ca290:	f000 f820 	bl	d03ca2d4 <__sfp>
d03ca294:	6060      	str	r0, [r4, #4]
d03ca296:	4620      	mov	r0, r4
d03ca298:	f000 f81c 	bl	d03ca2d4 <__sfp>
d03ca29c:	60a0      	str	r0, [r4, #8]
d03ca29e:	4620      	mov	r0, r4
d03ca2a0:	f000 f818 	bl	d03ca2d4 <__sfp>
d03ca2a4:	2200      	movs	r2, #0
d03ca2a6:	60e0      	str	r0, [r4, #12]
d03ca2a8:	2104      	movs	r1, #4
d03ca2aa:	6860      	ldr	r0, [r4, #4]
d03ca2ac:	f7ff ff82 	bl	d03ca1b4 <std>
d03ca2b0:	68a0      	ldr	r0, [r4, #8]
d03ca2b2:	2201      	movs	r2, #1
d03ca2b4:	2109      	movs	r1, #9
d03ca2b6:	f7ff ff7d 	bl	d03ca1b4 <std>
d03ca2ba:	68e0      	ldr	r0, [r4, #12]
d03ca2bc:	2202      	movs	r2, #2
d03ca2be:	2112      	movs	r1, #18
d03ca2c0:	f7ff ff78 	bl	d03ca1b4 <std>
d03ca2c4:	2301      	movs	r3, #1
d03ca2c6:	61a3      	str	r3, [r4, #24]
d03ca2c8:	e7d2      	b.n	d03ca270 <__sinit+0xc>
d03ca2ca:	bf00      	nop
d03ca2cc:	d03cc560 	.word	0xd03cc560
d03ca2d0:	d03ca1fd 	.word	0xd03ca1fd

d03ca2d4 <__sfp>:
d03ca2d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03ca2d6:	4607      	mov	r7, r0
d03ca2d8:	f7ff ffac 	bl	d03ca234 <__sfp_lock_acquire>
d03ca2dc:	4b1e      	ldr	r3, [pc, #120]	; (d03ca358 <__sfp+0x84>)
d03ca2de:	681e      	ldr	r6, [r3, #0]
d03ca2e0:	69b3      	ldr	r3, [r6, #24]
d03ca2e2:	b913      	cbnz	r3, d03ca2ea <__sfp+0x16>
d03ca2e4:	4630      	mov	r0, r6
d03ca2e6:	f7ff ffbd 	bl	d03ca264 <__sinit>
d03ca2ea:	3648      	adds	r6, #72	; 0x48
d03ca2ec:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d03ca2f0:	3b01      	subs	r3, #1
d03ca2f2:	d503      	bpl.n	d03ca2fc <__sfp+0x28>
d03ca2f4:	6833      	ldr	r3, [r6, #0]
d03ca2f6:	b30b      	cbz	r3, d03ca33c <__sfp+0x68>
d03ca2f8:	6836      	ldr	r6, [r6, #0]
d03ca2fa:	e7f7      	b.n	d03ca2ec <__sfp+0x18>
d03ca2fc:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d03ca300:	b9d5      	cbnz	r5, d03ca338 <__sfp+0x64>
d03ca302:	4b16      	ldr	r3, [pc, #88]	; (d03ca35c <__sfp+0x88>)
d03ca304:	60e3      	str	r3, [r4, #12]
d03ca306:	f104 0058 	add.w	r0, r4, #88	; 0x58
d03ca30a:	6665      	str	r5, [r4, #100]	; 0x64
d03ca30c:	f000 f847 	bl	d03ca39e <__retarget_lock_init_recursive>
d03ca310:	f7ff ff96 	bl	d03ca240 <__sfp_lock_release>
d03ca314:	e9c4 5501 	strd	r5, r5, [r4, #4]
d03ca318:	e9c4 5504 	strd	r5, r5, [r4, #16]
d03ca31c:	6025      	str	r5, [r4, #0]
d03ca31e:	61a5      	str	r5, [r4, #24]
d03ca320:	2208      	movs	r2, #8
d03ca322:	4629      	mov	r1, r5
d03ca324:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d03ca328:	f7ff fb16 	bl	d03c9958 <memset>
d03ca32c:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d03ca330:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d03ca334:	4620      	mov	r0, r4
d03ca336:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03ca338:	3468      	adds	r4, #104	; 0x68
d03ca33a:	e7d9      	b.n	d03ca2f0 <__sfp+0x1c>
d03ca33c:	2104      	movs	r1, #4
d03ca33e:	4638      	mov	r0, r7
d03ca340:	f7ff ff62 	bl	d03ca208 <__sfmoreglue>
d03ca344:	4604      	mov	r4, r0
d03ca346:	6030      	str	r0, [r6, #0]
d03ca348:	2800      	cmp	r0, #0
d03ca34a:	d1d5      	bne.n	d03ca2f8 <__sfp+0x24>
d03ca34c:	f7ff ff78 	bl	d03ca240 <__sfp_lock_release>
d03ca350:	230c      	movs	r3, #12
d03ca352:	603b      	str	r3, [r7, #0]
d03ca354:	e7ee      	b.n	d03ca334 <__sfp+0x60>
d03ca356:	bf00      	nop
d03ca358:	d03cc560 	.word	0xd03cc560
d03ca35c:	ffff0001 	.word	0xffff0001

d03ca360 <_fwalk_reent>:
d03ca360:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d03ca364:	4606      	mov	r6, r0
d03ca366:	4688      	mov	r8, r1
d03ca368:	f100 0448 	add.w	r4, r0, #72	; 0x48
d03ca36c:	2700      	movs	r7, #0
d03ca36e:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d03ca372:	f1b9 0901 	subs.w	r9, r9, #1
d03ca376:	d505      	bpl.n	d03ca384 <_fwalk_reent+0x24>
d03ca378:	6824      	ldr	r4, [r4, #0]
d03ca37a:	2c00      	cmp	r4, #0
d03ca37c:	d1f7      	bne.n	d03ca36e <_fwalk_reent+0xe>
d03ca37e:	4638      	mov	r0, r7
d03ca380:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d03ca384:	89ab      	ldrh	r3, [r5, #12]
d03ca386:	2b01      	cmp	r3, #1
d03ca388:	d907      	bls.n	d03ca39a <_fwalk_reent+0x3a>
d03ca38a:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d03ca38e:	3301      	adds	r3, #1
d03ca390:	d003      	beq.n	d03ca39a <_fwalk_reent+0x3a>
d03ca392:	4629      	mov	r1, r5
d03ca394:	4630      	mov	r0, r6
d03ca396:	47c0      	blx	r8
d03ca398:	4307      	orrs	r7, r0
d03ca39a:	3568      	adds	r5, #104	; 0x68
d03ca39c:	e7e9      	b.n	d03ca372 <_fwalk_reent+0x12>

d03ca39e <__retarget_lock_init_recursive>:
d03ca39e:	4770      	bx	lr

d03ca3a0 <__retarget_lock_acquire_recursive>:
d03ca3a0:	4770      	bx	lr

d03ca3a2 <__retarget_lock_release_recursive>:
d03ca3a2:	4770      	bx	lr

d03ca3a4 <__swhatbuf_r>:
d03ca3a4:	b570      	push	{r4, r5, r6, lr}
d03ca3a6:	460e      	mov	r6, r1
d03ca3a8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03ca3ac:	2900      	cmp	r1, #0
d03ca3ae:	b096      	sub	sp, #88	; 0x58
d03ca3b0:	4614      	mov	r4, r2
d03ca3b2:	461d      	mov	r5, r3
d03ca3b4:	da07      	bge.n	d03ca3c6 <__swhatbuf_r+0x22>
d03ca3b6:	2300      	movs	r3, #0
d03ca3b8:	602b      	str	r3, [r5, #0]
d03ca3ba:	89b3      	ldrh	r3, [r6, #12]
d03ca3bc:	061a      	lsls	r2, r3, #24
d03ca3be:	d410      	bmi.n	d03ca3e2 <__swhatbuf_r+0x3e>
d03ca3c0:	f44f 6380 	mov.w	r3, #1024	; 0x400
d03ca3c4:	e00e      	b.n	d03ca3e4 <__swhatbuf_r+0x40>
d03ca3c6:	466a      	mov	r2, sp
d03ca3c8:	f000 fb6c 	bl	d03caaa4 <_fstat_r>
d03ca3cc:	2800      	cmp	r0, #0
d03ca3ce:	dbf2      	blt.n	d03ca3b6 <__swhatbuf_r+0x12>
d03ca3d0:	9a01      	ldr	r2, [sp, #4]
d03ca3d2:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d03ca3d6:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d03ca3da:	425a      	negs	r2, r3
d03ca3dc:	415a      	adcs	r2, r3
d03ca3de:	602a      	str	r2, [r5, #0]
d03ca3e0:	e7ee      	b.n	d03ca3c0 <__swhatbuf_r+0x1c>
d03ca3e2:	2340      	movs	r3, #64	; 0x40
d03ca3e4:	2000      	movs	r0, #0
d03ca3e6:	6023      	str	r3, [r4, #0]
d03ca3e8:	b016      	add	sp, #88	; 0x58
d03ca3ea:	bd70      	pop	{r4, r5, r6, pc}

d03ca3ec <__malloc_lock>:
d03ca3ec:	4801      	ldr	r0, [pc, #4]	; (d03ca3f4 <__malloc_lock+0x8>)
d03ca3ee:	f7ff bfd7 	b.w	d03ca3a0 <__retarget_lock_acquire_recursive>
d03ca3f2:	bf00      	nop
d03ca3f4:	d03cf6c4 	.word	0xd03cf6c4

d03ca3f8 <__malloc_unlock>:
d03ca3f8:	4801      	ldr	r0, [pc, #4]	; (d03ca400 <__malloc_unlock+0x8>)
d03ca3fa:	f7ff bfd2 	b.w	d03ca3a2 <__retarget_lock_release_recursive>
d03ca3fe:	bf00      	nop
d03ca400:	d03cf6c4 	.word	0xd03cf6c4

d03ca404 <__ssputs_r>:
d03ca404:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03ca408:	688e      	ldr	r6, [r1, #8]
d03ca40a:	429e      	cmp	r6, r3
d03ca40c:	4682      	mov	sl, r0
d03ca40e:	460c      	mov	r4, r1
d03ca410:	4690      	mov	r8, r2
d03ca412:	461f      	mov	r7, r3
d03ca414:	d838      	bhi.n	d03ca488 <__ssputs_r+0x84>
d03ca416:	898a      	ldrh	r2, [r1, #12]
d03ca418:	f412 6f90 	tst.w	r2, #1152	; 0x480
d03ca41c:	d032      	beq.n	d03ca484 <__ssputs_r+0x80>
d03ca41e:	6825      	ldr	r5, [r4, #0]
d03ca420:	6909      	ldr	r1, [r1, #16]
d03ca422:	eba5 0901 	sub.w	r9, r5, r1
d03ca426:	6965      	ldr	r5, [r4, #20]
d03ca428:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d03ca42c:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d03ca430:	3301      	adds	r3, #1
d03ca432:	444b      	add	r3, r9
d03ca434:	106d      	asrs	r5, r5, #1
d03ca436:	429d      	cmp	r5, r3
d03ca438:	bf38      	it	cc
d03ca43a:	461d      	movcc	r5, r3
d03ca43c:	0553      	lsls	r3, r2, #21
d03ca43e:	d531      	bpl.n	d03ca4a4 <__ssputs_r+0xa0>
d03ca440:	4629      	mov	r1, r5
d03ca442:	f7ff fae1 	bl	d03c9a08 <_malloc_r>
d03ca446:	4606      	mov	r6, r0
d03ca448:	b950      	cbnz	r0, d03ca460 <__ssputs_r+0x5c>
d03ca44a:	230c      	movs	r3, #12
d03ca44c:	f8ca 3000 	str.w	r3, [sl]
d03ca450:	89a3      	ldrh	r3, [r4, #12]
d03ca452:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d03ca456:	81a3      	strh	r3, [r4, #12]
d03ca458:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03ca45c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03ca460:	6921      	ldr	r1, [r4, #16]
d03ca462:	464a      	mov	r2, r9
d03ca464:	f7ff fa6a 	bl	d03c993c <memcpy>
d03ca468:	89a3      	ldrh	r3, [r4, #12]
d03ca46a:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d03ca46e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d03ca472:	81a3      	strh	r3, [r4, #12]
d03ca474:	6126      	str	r6, [r4, #16]
d03ca476:	6165      	str	r5, [r4, #20]
d03ca478:	444e      	add	r6, r9
d03ca47a:	eba5 0509 	sub.w	r5, r5, r9
d03ca47e:	6026      	str	r6, [r4, #0]
d03ca480:	60a5      	str	r5, [r4, #8]
d03ca482:	463e      	mov	r6, r7
d03ca484:	42be      	cmp	r6, r7
d03ca486:	d900      	bls.n	d03ca48a <__ssputs_r+0x86>
d03ca488:	463e      	mov	r6, r7
d03ca48a:	4632      	mov	r2, r6
d03ca48c:	6820      	ldr	r0, [r4, #0]
d03ca48e:	4641      	mov	r1, r8
d03ca490:	f000 fb7e 	bl	d03cab90 <memmove>
d03ca494:	68a3      	ldr	r3, [r4, #8]
d03ca496:	6822      	ldr	r2, [r4, #0]
d03ca498:	1b9b      	subs	r3, r3, r6
d03ca49a:	4432      	add	r2, r6
d03ca49c:	60a3      	str	r3, [r4, #8]
d03ca49e:	6022      	str	r2, [r4, #0]
d03ca4a0:	2000      	movs	r0, #0
d03ca4a2:	e7db      	b.n	d03ca45c <__ssputs_r+0x58>
d03ca4a4:	462a      	mov	r2, r5
d03ca4a6:	f000 fb8d 	bl	d03cabc4 <_realloc_r>
d03ca4aa:	4606      	mov	r6, r0
d03ca4ac:	2800      	cmp	r0, #0
d03ca4ae:	d1e1      	bne.n	d03ca474 <__ssputs_r+0x70>
d03ca4b0:	6921      	ldr	r1, [r4, #16]
d03ca4b2:	4650      	mov	r0, sl
d03ca4b4:	f7ff fa58 	bl	d03c9968 <_free_r>
d03ca4b8:	e7c7      	b.n	d03ca44a <__ssputs_r+0x46>
	...

d03ca4bc <_svfiprintf_r>:
d03ca4bc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03ca4c0:	4698      	mov	r8, r3
d03ca4c2:	898b      	ldrh	r3, [r1, #12]
d03ca4c4:	061b      	lsls	r3, r3, #24
d03ca4c6:	b09d      	sub	sp, #116	; 0x74
d03ca4c8:	4607      	mov	r7, r0
d03ca4ca:	460d      	mov	r5, r1
d03ca4cc:	4614      	mov	r4, r2
d03ca4ce:	d50e      	bpl.n	d03ca4ee <_svfiprintf_r+0x32>
d03ca4d0:	690b      	ldr	r3, [r1, #16]
d03ca4d2:	b963      	cbnz	r3, d03ca4ee <_svfiprintf_r+0x32>
d03ca4d4:	2140      	movs	r1, #64	; 0x40
d03ca4d6:	f7ff fa97 	bl	d03c9a08 <_malloc_r>
d03ca4da:	6028      	str	r0, [r5, #0]
d03ca4dc:	6128      	str	r0, [r5, #16]
d03ca4de:	b920      	cbnz	r0, d03ca4ea <_svfiprintf_r+0x2e>
d03ca4e0:	230c      	movs	r3, #12
d03ca4e2:	603b      	str	r3, [r7, #0]
d03ca4e4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03ca4e8:	e0d1      	b.n	d03ca68e <_svfiprintf_r+0x1d2>
d03ca4ea:	2340      	movs	r3, #64	; 0x40
d03ca4ec:	616b      	str	r3, [r5, #20]
d03ca4ee:	2300      	movs	r3, #0
d03ca4f0:	9309      	str	r3, [sp, #36]	; 0x24
d03ca4f2:	2320      	movs	r3, #32
d03ca4f4:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d03ca4f8:	f8cd 800c 	str.w	r8, [sp, #12]
d03ca4fc:	2330      	movs	r3, #48	; 0x30
d03ca4fe:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d03ca6a8 <_svfiprintf_r+0x1ec>
d03ca502:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d03ca506:	f04f 0901 	mov.w	r9, #1
d03ca50a:	4623      	mov	r3, r4
d03ca50c:	469a      	mov	sl, r3
d03ca50e:	f813 2b01 	ldrb.w	r2, [r3], #1
d03ca512:	b10a      	cbz	r2, d03ca518 <_svfiprintf_r+0x5c>
d03ca514:	2a25      	cmp	r2, #37	; 0x25
d03ca516:	d1f9      	bne.n	d03ca50c <_svfiprintf_r+0x50>
d03ca518:	ebba 0b04 	subs.w	fp, sl, r4
d03ca51c:	d00b      	beq.n	d03ca536 <_svfiprintf_r+0x7a>
d03ca51e:	465b      	mov	r3, fp
d03ca520:	4622      	mov	r2, r4
d03ca522:	4629      	mov	r1, r5
d03ca524:	4638      	mov	r0, r7
d03ca526:	f7ff ff6d 	bl	d03ca404 <__ssputs_r>
d03ca52a:	3001      	adds	r0, #1
d03ca52c:	f000 80aa 	beq.w	d03ca684 <_svfiprintf_r+0x1c8>
d03ca530:	9a09      	ldr	r2, [sp, #36]	; 0x24
d03ca532:	445a      	add	r2, fp
d03ca534:	9209      	str	r2, [sp, #36]	; 0x24
d03ca536:	f89a 3000 	ldrb.w	r3, [sl]
d03ca53a:	2b00      	cmp	r3, #0
d03ca53c:	f000 80a2 	beq.w	d03ca684 <_svfiprintf_r+0x1c8>
d03ca540:	2300      	movs	r3, #0
d03ca542:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d03ca546:	e9cd 2305 	strd	r2, r3, [sp, #20]
d03ca54a:	f10a 0a01 	add.w	sl, sl, #1
d03ca54e:	9304      	str	r3, [sp, #16]
d03ca550:	9307      	str	r3, [sp, #28]
d03ca552:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d03ca556:	931a      	str	r3, [sp, #104]	; 0x68
d03ca558:	4654      	mov	r4, sl
d03ca55a:	2205      	movs	r2, #5
d03ca55c:	f814 1b01 	ldrb.w	r1, [r4], #1
d03ca560:	4851      	ldr	r0, [pc, #324]	; (d03ca6a8 <_svfiprintf_r+0x1ec>)
d03ca562:	f000 fac5 	bl	d03caaf0 <memchr>
d03ca566:	9a04      	ldr	r2, [sp, #16]
d03ca568:	b9d8      	cbnz	r0, d03ca5a2 <_svfiprintf_r+0xe6>
d03ca56a:	06d0      	lsls	r0, r2, #27
d03ca56c:	bf44      	itt	mi
d03ca56e:	2320      	movmi	r3, #32
d03ca570:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d03ca574:	0711      	lsls	r1, r2, #28
d03ca576:	bf44      	itt	mi
d03ca578:	232b      	movmi	r3, #43	; 0x2b
d03ca57a:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d03ca57e:	f89a 3000 	ldrb.w	r3, [sl]
d03ca582:	2b2a      	cmp	r3, #42	; 0x2a
d03ca584:	d015      	beq.n	d03ca5b2 <_svfiprintf_r+0xf6>
d03ca586:	9a07      	ldr	r2, [sp, #28]
d03ca588:	4654      	mov	r4, sl
d03ca58a:	2000      	movs	r0, #0
d03ca58c:	f04f 0c0a 	mov.w	ip, #10
d03ca590:	4621      	mov	r1, r4
d03ca592:	f811 3b01 	ldrb.w	r3, [r1], #1
d03ca596:	3b30      	subs	r3, #48	; 0x30
d03ca598:	2b09      	cmp	r3, #9
d03ca59a:	d94e      	bls.n	d03ca63a <_svfiprintf_r+0x17e>
d03ca59c:	b1b0      	cbz	r0, d03ca5cc <_svfiprintf_r+0x110>
d03ca59e:	9207      	str	r2, [sp, #28]
d03ca5a0:	e014      	b.n	d03ca5cc <_svfiprintf_r+0x110>
d03ca5a2:	eba0 0308 	sub.w	r3, r0, r8
d03ca5a6:	fa09 f303 	lsl.w	r3, r9, r3
d03ca5aa:	4313      	orrs	r3, r2
d03ca5ac:	9304      	str	r3, [sp, #16]
d03ca5ae:	46a2      	mov	sl, r4
d03ca5b0:	e7d2      	b.n	d03ca558 <_svfiprintf_r+0x9c>
d03ca5b2:	9b03      	ldr	r3, [sp, #12]
d03ca5b4:	1d19      	adds	r1, r3, #4
d03ca5b6:	681b      	ldr	r3, [r3, #0]
d03ca5b8:	9103      	str	r1, [sp, #12]
d03ca5ba:	2b00      	cmp	r3, #0
d03ca5bc:	bfbb      	ittet	lt
d03ca5be:	425b      	neglt	r3, r3
d03ca5c0:	f042 0202 	orrlt.w	r2, r2, #2
d03ca5c4:	9307      	strge	r3, [sp, #28]
d03ca5c6:	9307      	strlt	r3, [sp, #28]
d03ca5c8:	bfb8      	it	lt
d03ca5ca:	9204      	strlt	r2, [sp, #16]
d03ca5cc:	7823      	ldrb	r3, [r4, #0]
d03ca5ce:	2b2e      	cmp	r3, #46	; 0x2e
d03ca5d0:	d10c      	bne.n	d03ca5ec <_svfiprintf_r+0x130>
d03ca5d2:	7863      	ldrb	r3, [r4, #1]
d03ca5d4:	2b2a      	cmp	r3, #42	; 0x2a
d03ca5d6:	d135      	bne.n	d03ca644 <_svfiprintf_r+0x188>
d03ca5d8:	9b03      	ldr	r3, [sp, #12]
d03ca5da:	1d1a      	adds	r2, r3, #4
d03ca5dc:	681b      	ldr	r3, [r3, #0]
d03ca5de:	9203      	str	r2, [sp, #12]
d03ca5e0:	2b00      	cmp	r3, #0
d03ca5e2:	bfb8      	it	lt
d03ca5e4:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d03ca5e8:	3402      	adds	r4, #2
d03ca5ea:	9305      	str	r3, [sp, #20]
d03ca5ec:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d03ca6b8 <_svfiprintf_r+0x1fc>
d03ca5f0:	7821      	ldrb	r1, [r4, #0]
d03ca5f2:	2203      	movs	r2, #3
d03ca5f4:	4650      	mov	r0, sl
d03ca5f6:	f000 fa7b 	bl	d03caaf0 <memchr>
d03ca5fa:	b140      	cbz	r0, d03ca60e <_svfiprintf_r+0x152>
d03ca5fc:	2340      	movs	r3, #64	; 0x40
d03ca5fe:	eba0 000a 	sub.w	r0, r0, sl
d03ca602:	fa03 f000 	lsl.w	r0, r3, r0
d03ca606:	9b04      	ldr	r3, [sp, #16]
d03ca608:	4303      	orrs	r3, r0
d03ca60a:	3401      	adds	r4, #1
d03ca60c:	9304      	str	r3, [sp, #16]
d03ca60e:	f814 1b01 	ldrb.w	r1, [r4], #1
d03ca612:	4826      	ldr	r0, [pc, #152]	; (d03ca6ac <_svfiprintf_r+0x1f0>)
d03ca614:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d03ca618:	2206      	movs	r2, #6
d03ca61a:	f000 fa69 	bl	d03caaf0 <memchr>
d03ca61e:	2800      	cmp	r0, #0
d03ca620:	d038      	beq.n	d03ca694 <_svfiprintf_r+0x1d8>
d03ca622:	4b23      	ldr	r3, [pc, #140]	; (d03ca6b0 <_svfiprintf_r+0x1f4>)
d03ca624:	bb1b      	cbnz	r3, d03ca66e <_svfiprintf_r+0x1b2>
d03ca626:	9b03      	ldr	r3, [sp, #12]
d03ca628:	3307      	adds	r3, #7
d03ca62a:	f023 0307 	bic.w	r3, r3, #7
d03ca62e:	3308      	adds	r3, #8
d03ca630:	9303      	str	r3, [sp, #12]
d03ca632:	9b09      	ldr	r3, [sp, #36]	; 0x24
d03ca634:	4433      	add	r3, r6
d03ca636:	9309      	str	r3, [sp, #36]	; 0x24
d03ca638:	e767      	b.n	d03ca50a <_svfiprintf_r+0x4e>
d03ca63a:	fb0c 3202 	mla	r2, ip, r2, r3
d03ca63e:	460c      	mov	r4, r1
d03ca640:	2001      	movs	r0, #1
d03ca642:	e7a5      	b.n	d03ca590 <_svfiprintf_r+0xd4>
d03ca644:	2300      	movs	r3, #0
d03ca646:	3401      	adds	r4, #1
d03ca648:	9305      	str	r3, [sp, #20]
d03ca64a:	4619      	mov	r1, r3
d03ca64c:	f04f 0c0a 	mov.w	ip, #10
d03ca650:	4620      	mov	r0, r4
d03ca652:	f810 2b01 	ldrb.w	r2, [r0], #1
d03ca656:	3a30      	subs	r2, #48	; 0x30
d03ca658:	2a09      	cmp	r2, #9
d03ca65a:	d903      	bls.n	d03ca664 <_svfiprintf_r+0x1a8>
d03ca65c:	2b00      	cmp	r3, #0
d03ca65e:	d0c5      	beq.n	d03ca5ec <_svfiprintf_r+0x130>
d03ca660:	9105      	str	r1, [sp, #20]
d03ca662:	e7c3      	b.n	d03ca5ec <_svfiprintf_r+0x130>
d03ca664:	fb0c 2101 	mla	r1, ip, r1, r2
d03ca668:	4604      	mov	r4, r0
d03ca66a:	2301      	movs	r3, #1
d03ca66c:	e7f0      	b.n	d03ca650 <_svfiprintf_r+0x194>
d03ca66e:	ab03      	add	r3, sp, #12
d03ca670:	9300      	str	r3, [sp, #0]
d03ca672:	462a      	mov	r2, r5
d03ca674:	4b0f      	ldr	r3, [pc, #60]	; (d03ca6b4 <_svfiprintf_r+0x1f8>)
d03ca676:	a904      	add	r1, sp, #16
d03ca678:	4638      	mov	r0, r7
d03ca67a:	f3af 8000 	nop.w
d03ca67e:	1c42      	adds	r2, r0, #1
d03ca680:	4606      	mov	r6, r0
d03ca682:	d1d6      	bne.n	d03ca632 <_svfiprintf_r+0x176>
d03ca684:	89ab      	ldrh	r3, [r5, #12]
d03ca686:	065b      	lsls	r3, r3, #25
d03ca688:	f53f af2c 	bmi.w	d03ca4e4 <_svfiprintf_r+0x28>
d03ca68c:	9809      	ldr	r0, [sp, #36]	; 0x24
d03ca68e:	b01d      	add	sp, #116	; 0x74
d03ca690:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03ca694:	ab03      	add	r3, sp, #12
d03ca696:	9300      	str	r3, [sp, #0]
d03ca698:	462a      	mov	r2, r5
d03ca69a:	4b06      	ldr	r3, [pc, #24]	; (d03ca6b4 <_svfiprintf_r+0x1f8>)
d03ca69c:	a904      	add	r1, sp, #16
d03ca69e:	4638      	mov	r0, r7
d03ca6a0:	f000 f87a 	bl	d03ca798 <_printf_i>
d03ca6a4:	e7eb      	b.n	d03ca67e <_svfiprintf_r+0x1c2>
d03ca6a6:	bf00      	nop
d03ca6a8:	d03cc5c4 	.word	0xd03cc5c4
d03ca6ac:	d03cc5ce 	.word	0xd03cc5ce
d03ca6b0:	00000000 	.word	0x00000000
d03ca6b4:	d03ca405 	.word	0xd03ca405
d03ca6b8:	d03cc5ca 	.word	0xd03cc5ca

d03ca6bc <_printf_common>:
d03ca6bc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03ca6c0:	4616      	mov	r6, r2
d03ca6c2:	4699      	mov	r9, r3
d03ca6c4:	688a      	ldr	r2, [r1, #8]
d03ca6c6:	690b      	ldr	r3, [r1, #16]
d03ca6c8:	f8dd 8020 	ldr.w	r8, [sp, #32]
d03ca6cc:	4293      	cmp	r3, r2
d03ca6ce:	bfb8      	it	lt
d03ca6d0:	4613      	movlt	r3, r2
d03ca6d2:	6033      	str	r3, [r6, #0]
d03ca6d4:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d03ca6d8:	4607      	mov	r7, r0
d03ca6da:	460c      	mov	r4, r1
d03ca6dc:	b10a      	cbz	r2, d03ca6e2 <_printf_common+0x26>
d03ca6de:	3301      	adds	r3, #1
d03ca6e0:	6033      	str	r3, [r6, #0]
d03ca6e2:	6823      	ldr	r3, [r4, #0]
d03ca6e4:	0699      	lsls	r1, r3, #26
d03ca6e6:	bf42      	ittt	mi
d03ca6e8:	6833      	ldrmi	r3, [r6, #0]
d03ca6ea:	3302      	addmi	r3, #2
d03ca6ec:	6033      	strmi	r3, [r6, #0]
d03ca6ee:	6825      	ldr	r5, [r4, #0]
d03ca6f0:	f015 0506 	ands.w	r5, r5, #6
d03ca6f4:	d106      	bne.n	d03ca704 <_printf_common+0x48>
d03ca6f6:	f104 0a19 	add.w	sl, r4, #25
d03ca6fa:	68e3      	ldr	r3, [r4, #12]
d03ca6fc:	6832      	ldr	r2, [r6, #0]
d03ca6fe:	1a9b      	subs	r3, r3, r2
d03ca700:	42ab      	cmp	r3, r5
d03ca702:	dc26      	bgt.n	d03ca752 <_printf_common+0x96>
d03ca704:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d03ca708:	1e13      	subs	r3, r2, #0
d03ca70a:	6822      	ldr	r2, [r4, #0]
d03ca70c:	bf18      	it	ne
d03ca70e:	2301      	movne	r3, #1
d03ca710:	0692      	lsls	r2, r2, #26
d03ca712:	d42b      	bmi.n	d03ca76c <_printf_common+0xb0>
d03ca714:	f104 0243 	add.w	r2, r4, #67	; 0x43
d03ca718:	4649      	mov	r1, r9
d03ca71a:	4638      	mov	r0, r7
d03ca71c:	47c0      	blx	r8
d03ca71e:	3001      	adds	r0, #1
d03ca720:	d01e      	beq.n	d03ca760 <_printf_common+0xa4>
d03ca722:	6823      	ldr	r3, [r4, #0]
d03ca724:	68e5      	ldr	r5, [r4, #12]
d03ca726:	6832      	ldr	r2, [r6, #0]
d03ca728:	f003 0306 	and.w	r3, r3, #6
d03ca72c:	2b04      	cmp	r3, #4
d03ca72e:	bf08      	it	eq
d03ca730:	1aad      	subeq	r5, r5, r2
d03ca732:	68a3      	ldr	r3, [r4, #8]
d03ca734:	6922      	ldr	r2, [r4, #16]
d03ca736:	bf0c      	ite	eq
d03ca738:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d03ca73c:	2500      	movne	r5, #0
d03ca73e:	4293      	cmp	r3, r2
d03ca740:	bfc4      	itt	gt
d03ca742:	1a9b      	subgt	r3, r3, r2
d03ca744:	18ed      	addgt	r5, r5, r3
d03ca746:	2600      	movs	r6, #0
d03ca748:	341a      	adds	r4, #26
d03ca74a:	42b5      	cmp	r5, r6
d03ca74c:	d11a      	bne.n	d03ca784 <_printf_common+0xc8>
d03ca74e:	2000      	movs	r0, #0
d03ca750:	e008      	b.n	d03ca764 <_printf_common+0xa8>
d03ca752:	2301      	movs	r3, #1
d03ca754:	4652      	mov	r2, sl
d03ca756:	4649      	mov	r1, r9
d03ca758:	4638      	mov	r0, r7
d03ca75a:	47c0      	blx	r8
d03ca75c:	3001      	adds	r0, #1
d03ca75e:	d103      	bne.n	d03ca768 <_printf_common+0xac>
d03ca760:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03ca764:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03ca768:	3501      	adds	r5, #1
d03ca76a:	e7c6      	b.n	d03ca6fa <_printf_common+0x3e>
d03ca76c:	18e1      	adds	r1, r4, r3
d03ca76e:	1c5a      	adds	r2, r3, #1
d03ca770:	2030      	movs	r0, #48	; 0x30
d03ca772:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d03ca776:	4422      	add	r2, r4
d03ca778:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d03ca77c:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d03ca780:	3302      	adds	r3, #2
d03ca782:	e7c7      	b.n	d03ca714 <_printf_common+0x58>
d03ca784:	2301      	movs	r3, #1
d03ca786:	4622      	mov	r2, r4
d03ca788:	4649      	mov	r1, r9
d03ca78a:	4638      	mov	r0, r7
d03ca78c:	47c0      	blx	r8
d03ca78e:	3001      	adds	r0, #1
d03ca790:	d0e6      	beq.n	d03ca760 <_printf_common+0xa4>
d03ca792:	3601      	adds	r6, #1
d03ca794:	e7d9      	b.n	d03ca74a <_printf_common+0x8e>
	...

d03ca798 <_printf_i>:
d03ca798:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d03ca79c:	460c      	mov	r4, r1
d03ca79e:	4691      	mov	r9, r2
d03ca7a0:	7e27      	ldrb	r7, [r4, #24]
d03ca7a2:	990c      	ldr	r1, [sp, #48]	; 0x30
d03ca7a4:	2f78      	cmp	r7, #120	; 0x78
d03ca7a6:	4680      	mov	r8, r0
d03ca7a8:	469a      	mov	sl, r3
d03ca7aa:	f104 0243 	add.w	r2, r4, #67	; 0x43
d03ca7ae:	d807      	bhi.n	d03ca7c0 <_printf_i+0x28>
d03ca7b0:	2f62      	cmp	r7, #98	; 0x62
d03ca7b2:	d80a      	bhi.n	d03ca7ca <_printf_i+0x32>
d03ca7b4:	2f00      	cmp	r7, #0
d03ca7b6:	f000 80d8 	beq.w	d03ca96a <_printf_i+0x1d2>
d03ca7ba:	2f58      	cmp	r7, #88	; 0x58
d03ca7bc:	f000 80a3 	beq.w	d03ca906 <_printf_i+0x16e>
d03ca7c0:	f104 0642 	add.w	r6, r4, #66	; 0x42
d03ca7c4:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d03ca7c8:	e03a      	b.n	d03ca840 <_printf_i+0xa8>
d03ca7ca:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d03ca7ce:	2b15      	cmp	r3, #21
d03ca7d0:	d8f6      	bhi.n	d03ca7c0 <_printf_i+0x28>
d03ca7d2:	a001      	add	r0, pc, #4	; (adr r0, d03ca7d8 <_printf_i+0x40>)
d03ca7d4:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d03ca7d8:	d03ca831 	.word	0xd03ca831
d03ca7dc:	d03ca845 	.word	0xd03ca845
d03ca7e0:	d03ca7c1 	.word	0xd03ca7c1
d03ca7e4:	d03ca7c1 	.word	0xd03ca7c1
d03ca7e8:	d03ca7c1 	.word	0xd03ca7c1
d03ca7ec:	d03ca7c1 	.word	0xd03ca7c1
d03ca7f0:	d03ca845 	.word	0xd03ca845
d03ca7f4:	d03ca7c1 	.word	0xd03ca7c1
d03ca7f8:	d03ca7c1 	.word	0xd03ca7c1
d03ca7fc:	d03ca7c1 	.word	0xd03ca7c1
d03ca800:	d03ca7c1 	.word	0xd03ca7c1
d03ca804:	d03ca951 	.word	0xd03ca951
d03ca808:	d03ca875 	.word	0xd03ca875
d03ca80c:	d03ca933 	.word	0xd03ca933
d03ca810:	d03ca7c1 	.word	0xd03ca7c1
d03ca814:	d03ca7c1 	.word	0xd03ca7c1
d03ca818:	d03ca973 	.word	0xd03ca973
d03ca81c:	d03ca7c1 	.word	0xd03ca7c1
d03ca820:	d03ca875 	.word	0xd03ca875
d03ca824:	d03ca7c1 	.word	0xd03ca7c1
d03ca828:	d03ca7c1 	.word	0xd03ca7c1
d03ca82c:	d03ca93b 	.word	0xd03ca93b
d03ca830:	680b      	ldr	r3, [r1, #0]
d03ca832:	1d1a      	adds	r2, r3, #4
d03ca834:	681b      	ldr	r3, [r3, #0]
d03ca836:	600a      	str	r2, [r1, #0]
d03ca838:	f104 0642 	add.w	r6, r4, #66	; 0x42
d03ca83c:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d03ca840:	2301      	movs	r3, #1
d03ca842:	e0a3      	b.n	d03ca98c <_printf_i+0x1f4>
d03ca844:	6825      	ldr	r5, [r4, #0]
d03ca846:	6808      	ldr	r0, [r1, #0]
d03ca848:	062e      	lsls	r6, r5, #24
d03ca84a:	f100 0304 	add.w	r3, r0, #4
d03ca84e:	d50a      	bpl.n	d03ca866 <_printf_i+0xce>
d03ca850:	6805      	ldr	r5, [r0, #0]
d03ca852:	600b      	str	r3, [r1, #0]
d03ca854:	2d00      	cmp	r5, #0
d03ca856:	da03      	bge.n	d03ca860 <_printf_i+0xc8>
d03ca858:	232d      	movs	r3, #45	; 0x2d
d03ca85a:	426d      	negs	r5, r5
d03ca85c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d03ca860:	485e      	ldr	r0, [pc, #376]	; (d03ca9dc <_printf_i+0x244>)
d03ca862:	230a      	movs	r3, #10
d03ca864:	e019      	b.n	d03ca89a <_printf_i+0x102>
d03ca866:	f015 0f40 	tst.w	r5, #64	; 0x40
d03ca86a:	6805      	ldr	r5, [r0, #0]
d03ca86c:	600b      	str	r3, [r1, #0]
d03ca86e:	bf18      	it	ne
d03ca870:	b22d      	sxthne	r5, r5
d03ca872:	e7ef      	b.n	d03ca854 <_printf_i+0xbc>
d03ca874:	680b      	ldr	r3, [r1, #0]
d03ca876:	6825      	ldr	r5, [r4, #0]
d03ca878:	1d18      	adds	r0, r3, #4
d03ca87a:	6008      	str	r0, [r1, #0]
d03ca87c:	0628      	lsls	r0, r5, #24
d03ca87e:	d501      	bpl.n	d03ca884 <_printf_i+0xec>
d03ca880:	681d      	ldr	r5, [r3, #0]
d03ca882:	e002      	b.n	d03ca88a <_printf_i+0xf2>
d03ca884:	0669      	lsls	r1, r5, #25
d03ca886:	d5fb      	bpl.n	d03ca880 <_printf_i+0xe8>
d03ca888:	881d      	ldrh	r5, [r3, #0]
d03ca88a:	4854      	ldr	r0, [pc, #336]	; (d03ca9dc <_printf_i+0x244>)
d03ca88c:	2f6f      	cmp	r7, #111	; 0x6f
d03ca88e:	bf0c      	ite	eq
d03ca890:	2308      	moveq	r3, #8
d03ca892:	230a      	movne	r3, #10
d03ca894:	2100      	movs	r1, #0
d03ca896:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d03ca89a:	6866      	ldr	r6, [r4, #4]
d03ca89c:	60a6      	str	r6, [r4, #8]
d03ca89e:	2e00      	cmp	r6, #0
d03ca8a0:	bfa2      	ittt	ge
d03ca8a2:	6821      	ldrge	r1, [r4, #0]
d03ca8a4:	f021 0104 	bicge.w	r1, r1, #4
d03ca8a8:	6021      	strge	r1, [r4, #0]
d03ca8aa:	b90d      	cbnz	r5, d03ca8b0 <_printf_i+0x118>
d03ca8ac:	2e00      	cmp	r6, #0
d03ca8ae:	d04d      	beq.n	d03ca94c <_printf_i+0x1b4>
d03ca8b0:	4616      	mov	r6, r2
d03ca8b2:	fbb5 f1f3 	udiv	r1, r5, r3
d03ca8b6:	fb03 5711 	mls	r7, r3, r1, r5
d03ca8ba:	5dc7      	ldrb	r7, [r0, r7]
d03ca8bc:	f806 7d01 	strb.w	r7, [r6, #-1]!
d03ca8c0:	462f      	mov	r7, r5
d03ca8c2:	42bb      	cmp	r3, r7
d03ca8c4:	460d      	mov	r5, r1
d03ca8c6:	d9f4      	bls.n	d03ca8b2 <_printf_i+0x11a>
d03ca8c8:	2b08      	cmp	r3, #8
d03ca8ca:	d10b      	bne.n	d03ca8e4 <_printf_i+0x14c>
d03ca8cc:	6823      	ldr	r3, [r4, #0]
d03ca8ce:	07df      	lsls	r7, r3, #31
d03ca8d0:	d508      	bpl.n	d03ca8e4 <_printf_i+0x14c>
d03ca8d2:	6923      	ldr	r3, [r4, #16]
d03ca8d4:	6861      	ldr	r1, [r4, #4]
d03ca8d6:	4299      	cmp	r1, r3
d03ca8d8:	bfde      	ittt	le
d03ca8da:	2330      	movle	r3, #48	; 0x30
d03ca8dc:	f806 3c01 	strble.w	r3, [r6, #-1]
d03ca8e0:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d03ca8e4:	1b92      	subs	r2, r2, r6
d03ca8e6:	6122      	str	r2, [r4, #16]
d03ca8e8:	f8cd a000 	str.w	sl, [sp]
d03ca8ec:	464b      	mov	r3, r9
d03ca8ee:	aa03      	add	r2, sp, #12
d03ca8f0:	4621      	mov	r1, r4
d03ca8f2:	4640      	mov	r0, r8
d03ca8f4:	f7ff fee2 	bl	d03ca6bc <_printf_common>
d03ca8f8:	3001      	adds	r0, #1
d03ca8fa:	d14c      	bne.n	d03ca996 <_printf_i+0x1fe>
d03ca8fc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03ca900:	b004      	add	sp, #16
d03ca902:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03ca906:	4835      	ldr	r0, [pc, #212]	; (d03ca9dc <_printf_i+0x244>)
d03ca908:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d03ca90c:	6823      	ldr	r3, [r4, #0]
d03ca90e:	680e      	ldr	r6, [r1, #0]
d03ca910:	061f      	lsls	r7, r3, #24
d03ca912:	f856 5b04 	ldr.w	r5, [r6], #4
d03ca916:	600e      	str	r6, [r1, #0]
d03ca918:	d514      	bpl.n	d03ca944 <_printf_i+0x1ac>
d03ca91a:	07d9      	lsls	r1, r3, #31
d03ca91c:	bf44      	itt	mi
d03ca91e:	f043 0320 	orrmi.w	r3, r3, #32
d03ca922:	6023      	strmi	r3, [r4, #0]
d03ca924:	b91d      	cbnz	r5, d03ca92e <_printf_i+0x196>
d03ca926:	6823      	ldr	r3, [r4, #0]
d03ca928:	f023 0320 	bic.w	r3, r3, #32
d03ca92c:	6023      	str	r3, [r4, #0]
d03ca92e:	2310      	movs	r3, #16
d03ca930:	e7b0      	b.n	d03ca894 <_printf_i+0xfc>
d03ca932:	6823      	ldr	r3, [r4, #0]
d03ca934:	f043 0320 	orr.w	r3, r3, #32
d03ca938:	6023      	str	r3, [r4, #0]
d03ca93a:	2378      	movs	r3, #120	; 0x78
d03ca93c:	4828      	ldr	r0, [pc, #160]	; (d03ca9e0 <_printf_i+0x248>)
d03ca93e:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d03ca942:	e7e3      	b.n	d03ca90c <_printf_i+0x174>
d03ca944:	065e      	lsls	r6, r3, #25
d03ca946:	bf48      	it	mi
d03ca948:	b2ad      	uxthmi	r5, r5
d03ca94a:	e7e6      	b.n	d03ca91a <_printf_i+0x182>
d03ca94c:	4616      	mov	r6, r2
d03ca94e:	e7bb      	b.n	d03ca8c8 <_printf_i+0x130>
d03ca950:	680b      	ldr	r3, [r1, #0]
d03ca952:	6826      	ldr	r6, [r4, #0]
d03ca954:	6960      	ldr	r0, [r4, #20]
d03ca956:	1d1d      	adds	r5, r3, #4
d03ca958:	600d      	str	r5, [r1, #0]
d03ca95a:	0635      	lsls	r5, r6, #24
d03ca95c:	681b      	ldr	r3, [r3, #0]
d03ca95e:	d501      	bpl.n	d03ca964 <_printf_i+0x1cc>
d03ca960:	6018      	str	r0, [r3, #0]
d03ca962:	e002      	b.n	d03ca96a <_printf_i+0x1d2>
d03ca964:	0671      	lsls	r1, r6, #25
d03ca966:	d5fb      	bpl.n	d03ca960 <_printf_i+0x1c8>
d03ca968:	8018      	strh	r0, [r3, #0]
d03ca96a:	2300      	movs	r3, #0
d03ca96c:	6123      	str	r3, [r4, #16]
d03ca96e:	4616      	mov	r6, r2
d03ca970:	e7ba      	b.n	d03ca8e8 <_printf_i+0x150>
d03ca972:	680b      	ldr	r3, [r1, #0]
d03ca974:	1d1a      	adds	r2, r3, #4
d03ca976:	600a      	str	r2, [r1, #0]
d03ca978:	681e      	ldr	r6, [r3, #0]
d03ca97a:	6862      	ldr	r2, [r4, #4]
d03ca97c:	2100      	movs	r1, #0
d03ca97e:	4630      	mov	r0, r6
d03ca980:	f000 f8b6 	bl	d03caaf0 <memchr>
d03ca984:	b108      	cbz	r0, d03ca98a <_printf_i+0x1f2>
d03ca986:	1b80      	subs	r0, r0, r6
d03ca988:	6060      	str	r0, [r4, #4]
d03ca98a:	6863      	ldr	r3, [r4, #4]
d03ca98c:	6123      	str	r3, [r4, #16]
d03ca98e:	2300      	movs	r3, #0
d03ca990:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d03ca994:	e7a8      	b.n	d03ca8e8 <_printf_i+0x150>
d03ca996:	6923      	ldr	r3, [r4, #16]
d03ca998:	4632      	mov	r2, r6
d03ca99a:	4649      	mov	r1, r9
d03ca99c:	4640      	mov	r0, r8
d03ca99e:	47d0      	blx	sl
d03ca9a0:	3001      	adds	r0, #1
d03ca9a2:	d0ab      	beq.n	d03ca8fc <_printf_i+0x164>
d03ca9a4:	6823      	ldr	r3, [r4, #0]
d03ca9a6:	079b      	lsls	r3, r3, #30
d03ca9a8:	d413      	bmi.n	d03ca9d2 <_printf_i+0x23a>
d03ca9aa:	68e0      	ldr	r0, [r4, #12]
d03ca9ac:	9b03      	ldr	r3, [sp, #12]
d03ca9ae:	4298      	cmp	r0, r3
d03ca9b0:	bfb8      	it	lt
d03ca9b2:	4618      	movlt	r0, r3
d03ca9b4:	e7a4      	b.n	d03ca900 <_printf_i+0x168>
d03ca9b6:	2301      	movs	r3, #1
d03ca9b8:	4632      	mov	r2, r6
d03ca9ba:	4649      	mov	r1, r9
d03ca9bc:	4640      	mov	r0, r8
d03ca9be:	47d0      	blx	sl
d03ca9c0:	3001      	adds	r0, #1
d03ca9c2:	d09b      	beq.n	d03ca8fc <_printf_i+0x164>
d03ca9c4:	3501      	adds	r5, #1
d03ca9c6:	68e3      	ldr	r3, [r4, #12]
d03ca9c8:	9903      	ldr	r1, [sp, #12]
d03ca9ca:	1a5b      	subs	r3, r3, r1
d03ca9cc:	42ab      	cmp	r3, r5
d03ca9ce:	dcf2      	bgt.n	d03ca9b6 <_printf_i+0x21e>
d03ca9d0:	e7eb      	b.n	d03ca9aa <_printf_i+0x212>
d03ca9d2:	2500      	movs	r5, #0
d03ca9d4:	f104 0619 	add.w	r6, r4, #25
d03ca9d8:	e7f5      	b.n	d03ca9c6 <_printf_i+0x22e>
d03ca9da:	bf00      	nop
d03ca9dc:	d03cc5d5 	.word	0xd03cc5d5
d03ca9e0:	d03cc5e6 	.word	0xd03cc5e6

d03ca9e4 <__sread>:
d03ca9e4:	b510      	push	{r4, lr}
d03ca9e6:	460c      	mov	r4, r1
d03ca9e8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03ca9ec:	f000 f910 	bl	d03cac10 <_read_r>
d03ca9f0:	2800      	cmp	r0, #0
d03ca9f2:	bfab      	itete	ge
d03ca9f4:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d03ca9f6:	89a3      	ldrhlt	r3, [r4, #12]
d03ca9f8:	181b      	addge	r3, r3, r0
d03ca9fa:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d03ca9fe:	bfac      	ite	ge
d03caa00:	6563      	strge	r3, [r4, #84]	; 0x54
d03caa02:	81a3      	strhlt	r3, [r4, #12]
d03caa04:	bd10      	pop	{r4, pc}

d03caa06 <__swrite>:
d03caa06:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03caa0a:	461f      	mov	r7, r3
d03caa0c:	898b      	ldrh	r3, [r1, #12]
d03caa0e:	05db      	lsls	r3, r3, #23
d03caa10:	4605      	mov	r5, r0
d03caa12:	460c      	mov	r4, r1
d03caa14:	4616      	mov	r6, r2
d03caa16:	d505      	bpl.n	d03caa24 <__swrite+0x1e>
d03caa18:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03caa1c:	2302      	movs	r3, #2
d03caa1e:	2200      	movs	r2, #0
d03caa20:	f000 f852 	bl	d03caac8 <_lseek_r>
d03caa24:	89a3      	ldrh	r3, [r4, #12]
d03caa26:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d03caa2a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d03caa2e:	81a3      	strh	r3, [r4, #12]
d03caa30:	4632      	mov	r2, r6
d03caa32:	463b      	mov	r3, r7
d03caa34:	4628      	mov	r0, r5
d03caa36:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d03caa3a:	f7f5 bb0b 	b.w	d03c0054 <_write_r>

d03caa3e <__sseek>:
d03caa3e:	b510      	push	{r4, lr}
d03caa40:	460c      	mov	r4, r1
d03caa42:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03caa46:	f000 f83f 	bl	d03caac8 <_lseek_r>
d03caa4a:	1c43      	adds	r3, r0, #1
d03caa4c:	89a3      	ldrh	r3, [r4, #12]
d03caa4e:	bf15      	itete	ne
d03caa50:	6560      	strne	r0, [r4, #84]	; 0x54
d03caa52:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d03caa56:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d03caa5a:	81a3      	strheq	r3, [r4, #12]
d03caa5c:	bf18      	it	ne
d03caa5e:	81a3      	strhne	r3, [r4, #12]
d03caa60:	bd10      	pop	{r4, pc}

d03caa62 <__sclose>:
d03caa62:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03caa66:	f000 b80d 	b.w	d03caa84 <_close_r>

d03caa6a <strchr>:
d03caa6a:	b2c9      	uxtb	r1, r1
d03caa6c:	4603      	mov	r3, r0
d03caa6e:	f810 2b01 	ldrb.w	r2, [r0], #1
d03caa72:	b11a      	cbz	r2, d03caa7c <strchr+0x12>
d03caa74:	428a      	cmp	r2, r1
d03caa76:	d1f9      	bne.n	d03caa6c <strchr+0x2>
d03caa78:	4618      	mov	r0, r3
d03caa7a:	4770      	bx	lr
d03caa7c:	2900      	cmp	r1, #0
d03caa7e:	bf18      	it	ne
d03caa80:	2300      	movne	r3, #0
d03caa82:	e7f9      	b.n	d03caa78 <strchr+0xe>

d03caa84 <_close_r>:
d03caa84:	b538      	push	{r3, r4, r5, lr}
d03caa86:	4d06      	ldr	r5, [pc, #24]	; (d03caaa0 <_close_r+0x1c>)
d03caa88:	2300      	movs	r3, #0
d03caa8a:	4604      	mov	r4, r0
d03caa8c:	4608      	mov	r0, r1
d03caa8e:	602b      	str	r3, [r5, #0]
d03caa90:	f7f5 fb1a 	bl	d03c00c8 <_close>
d03caa94:	1c43      	adds	r3, r0, #1
d03caa96:	d102      	bne.n	d03caa9e <_close_r+0x1a>
d03caa98:	682b      	ldr	r3, [r5, #0]
d03caa9a:	b103      	cbz	r3, d03caa9e <_close_r+0x1a>
d03caa9c:	6023      	str	r3, [r4, #0]
d03caa9e:	bd38      	pop	{r3, r4, r5, pc}
d03caaa0:	d03cf6cc 	.word	0xd03cf6cc

d03caaa4 <_fstat_r>:
d03caaa4:	b538      	push	{r3, r4, r5, lr}
d03caaa6:	4d07      	ldr	r5, [pc, #28]	; (d03caac4 <_fstat_r+0x20>)
d03caaa8:	2300      	movs	r3, #0
d03caaaa:	4604      	mov	r4, r0
d03caaac:	4608      	mov	r0, r1
d03caaae:	4611      	mov	r1, r2
d03caab0:	602b      	str	r3, [r5, #0]
d03caab2:	f7f5 fb0d 	bl	d03c00d0 <_fstat>
d03caab6:	1c43      	adds	r3, r0, #1
d03caab8:	d102      	bne.n	d03caac0 <_fstat_r+0x1c>
d03caaba:	682b      	ldr	r3, [r5, #0]
d03caabc:	b103      	cbz	r3, d03caac0 <_fstat_r+0x1c>
d03caabe:	6023      	str	r3, [r4, #0]
d03caac0:	bd38      	pop	{r3, r4, r5, pc}
d03caac2:	bf00      	nop
d03caac4:	d03cf6cc 	.word	0xd03cf6cc

d03caac8 <_lseek_r>:
d03caac8:	b538      	push	{r3, r4, r5, lr}
d03caaca:	4d07      	ldr	r5, [pc, #28]	; (d03caae8 <_lseek_r+0x20>)
d03caacc:	4604      	mov	r4, r0
d03caace:	4608      	mov	r0, r1
d03caad0:	4611      	mov	r1, r2
d03caad2:	2200      	movs	r2, #0
d03caad4:	602a      	str	r2, [r5, #0]
d03caad6:	461a      	mov	r2, r3
d03caad8:	f7f5 fb00 	bl	d03c00dc <_lseek>
d03caadc:	1c43      	adds	r3, r0, #1
d03caade:	d102      	bne.n	d03caae6 <_lseek_r+0x1e>
d03caae0:	682b      	ldr	r3, [r5, #0]
d03caae2:	b103      	cbz	r3, d03caae6 <_lseek_r+0x1e>
d03caae4:	6023      	str	r3, [r4, #0]
d03caae6:	bd38      	pop	{r3, r4, r5, pc}
d03caae8:	d03cf6cc 	.word	0xd03cf6cc
d03caaec:	00000000 	.word	0x00000000

d03caaf0 <memchr>:
d03caaf0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d03caaf4:	2a10      	cmp	r2, #16
d03caaf6:	db2b      	blt.n	d03cab50 <memchr+0x60>
d03caaf8:	f010 0f07 	tst.w	r0, #7
d03caafc:	d008      	beq.n	d03cab10 <memchr+0x20>
d03caafe:	f810 3b01 	ldrb.w	r3, [r0], #1
d03cab02:	3a01      	subs	r2, #1
d03cab04:	428b      	cmp	r3, r1
d03cab06:	d02d      	beq.n	d03cab64 <memchr+0x74>
d03cab08:	f010 0f07 	tst.w	r0, #7
d03cab0c:	b342      	cbz	r2, d03cab60 <memchr+0x70>
d03cab0e:	d1f6      	bne.n	d03caafe <memchr+0xe>
d03cab10:	b4f0      	push	{r4, r5, r6, r7}
d03cab12:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d03cab16:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d03cab1a:	f022 0407 	bic.w	r4, r2, #7
d03cab1e:	f07f 0700 	mvns.w	r7, #0
d03cab22:	2300      	movs	r3, #0
d03cab24:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d03cab28:	3c08      	subs	r4, #8
d03cab2a:	ea85 0501 	eor.w	r5, r5, r1
d03cab2e:	ea86 0601 	eor.w	r6, r6, r1
d03cab32:	fa85 f547 	uadd8	r5, r5, r7
d03cab36:	faa3 f587 	sel	r5, r3, r7
d03cab3a:	fa86 f647 	uadd8	r6, r6, r7
d03cab3e:	faa5 f687 	sel	r6, r5, r7
d03cab42:	b98e      	cbnz	r6, d03cab68 <memchr+0x78>
d03cab44:	d1ee      	bne.n	d03cab24 <memchr+0x34>
d03cab46:	bcf0      	pop	{r4, r5, r6, r7}
d03cab48:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d03cab4c:	f002 0207 	and.w	r2, r2, #7
d03cab50:	b132      	cbz	r2, d03cab60 <memchr+0x70>
d03cab52:	f810 3b01 	ldrb.w	r3, [r0], #1
d03cab56:	3a01      	subs	r2, #1
d03cab58:	ea83 0301 	eor.w	r3, r3, r1
d03cab5c:	b113      	cbz	r3, d03cab64 <memchr+0x74>
d03cab5e:	d1f8      	bne.n	d03cab52 <memchr+0x62>
d03cab60:	2000      	movs	r0, #0
d03cab62:	4770      	bx	lr
d03cab64:	3801      	subs	r0, #1
d03cab66:	4770      	bx	lr
d03cab68:	2d00      	cmp	r5, #0
d03cab6a:	bf06      	itte	eq
d03cab6c:	4635      	moveq	r5, r6
d03cab6e:	3803      	subeq	r0, #3
d03cab70:	3807      	subne	r0, #7
d03cab72:	f015 0f01 	tst.w	r5, #1
d03cab76:	d107      	bne.n	d03cab88 <memchr+0x98>
d03cab78:	3001      	adds	r0, #1
d03cab7a:	f415 7f80 	tst.w	r5, #256	; 0x100
d03cab7e:	bf02      	ittt	eq
d03cab80:	3001      	addeq	r0, #1
d03cab82:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d03cab86:	3001      	addeq	r0, #1
d03cab88:	bcf0      	pop	{r4, r5, r6, r7}
d03cab8a:	3801      	subs	r0, #1
d03cab8c:	4770      	bx	lr
d03cab8e:	bf00      	nop

d03cab90 <memmove>:
d03cab90:	4288      	cmp	r0, r1
d03cab92:	b510      	push	{r4, lr}
d03cab94:	eb01 0402 	add.w	r4, r1, r2
d03cab98:	d902      	bls.n	d03caba0 <memmove+0x10>
d03cab9a:	4284      	cmp	r4, r0
d03cab9c:	4623      	mov	r3, r4
d03cab9e:	d807      	bhi.n	d03cabb0 <memmove+0x20>
d03caba0:	1e43      	subs	r3, r0, #1
d03caba2:	42a1      	cmp	r1, r4
d03caba4:	d008      	beq.n	d03cabb8 <memmove+0x28>
d03caba6:	f811 2b01 	ldrb.w	r2, [r1], #1
d03cabaa:	f803 2f01 	strb.w	r2, [r3, #1]!
d03cabae:	e7f8      	b.n	d03caba2 <memmove+0x12>
d03cabb0:	4402      	add	r2, r0
d03cabb2:	4601      	mov	r1, r0
d03cabb4:	428a      	cmp	r2, r1
d03cabb6:	d100      	bne.n	d03cabba <memmove+0x2a>
d03cabb8:	bd10      	pop	{r4, pc}
d03cabba:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d03cabbe:	f802 4d01 	strb.w	r4, [r2, #-1]!
d03cabc2:	e7f7      	b.n	d03cabb4 <memmove+0x24>

d03cabc4 <_realloc_r>:
d03cabc4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03cabc6:	4607      	mov	r7, r0
d03cabc8:	4614      	mov	r4, r2
d03cabca:	460e      	mov	r6, r1
d03cabcc:	b921      	cbnz	r1, d03cabd8 <_realloc_r+0x14>
d03cabce:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d03cabd2:	4611      	mov	r1, r2
d03cabd4:	f7fe bf18 	b.w	d03c9a08 <_malloc_r>
d03cabd8:	b922      	cbnz	r2, d03cabe4 <_realloc_r+0x20>
d03cabda:	f7fe fec5 	bl	d03c9968 <_free_r>
d03cabde:	4625      	mov	r5, r4
d03cabe0:	4628      	mov	r0, r5
d03cabe2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03cabe4:	f000 f826 	bl	d03cac34 <_malloc_usable_size_r>
d03cabe8:	42a0      	cmp	r0, r4
d03cabea:	d20f      	bcs.n	d03cac0c <_realloc_r+0x48>
d03cabec:	4621      	mov	r1, r4
d03cabee:	4638      	mov	r0, r7
d03cabf0:	f7fe ff0a 	bl	d03c9a08 <_malloc_r>
d03cabf4:	4605      	mov	r5, r0
d03cabf6:	2800      	cmp	r0, #0
d03cabf8:	d0f2      	beq.n	d03cabe0 <_realloc_r+0x1c>
d03cabfa:	4631      	mov	r1, r6
d03cabfc:	4622      	mov	r2, r4
d03cabfe:	f7fe fe9d 	bl	d03c993c <memcpy>
d03cac02:	4631      	mov	r1, r6
d03cac04:	4638      	mov	r0, r7
d03cac06:	f7fe feaf 	bl	d03c9968 <_free_r>
d03cac0a:	e7e9      	b.n	d03cabe0 <_realloc_r+0x1c>
d03cac0c:	4635      	mov	r5, r6
d03cac0e:	e7e7      	b.n	d03cabe0 <_realloc_r+0x1c>

d03cac10 <_read_r>:
d03cac10:	b538      	push	{r3, r4, r5, lr}
d03cac12:	4d07      	ldr	r5, [pc, #28]	; (d03cac30 <_read_r+0x20>)
d03cac14:	4604      	mov	r4, r0
d03cac16:	4608      	mov	r0, r1
d03cac18:	4611      	mov	r1, r2
d03cac1a:	2200      	movs	r2, #0
d03cac1c:	602a      	str	r2, [r5, #0]
d03cac1e:	461a      	mov	r2, r3
d03cac20:	f7f5 fa48 	bl	d03c00b4 <_read>
d03cac24:	1c43      	adds	r3, r0, #1
d03cac26:	d102      	bne.n	d03cac2e <_read_r+0x1e>
d03cac28:	682b      	ldr	r3, [r5, #0]
d03cac2a:	b103      	cbz	r3, d03cac2e <_read_r+0x1e>
d03cac2c:	6023      	str	r3, [r4, #0]
d03cac2e:	bd38      	pop	{r3, r4, r5, pc}
d03cac30:	d03cf6cc 	.word	0xd03cf6cc

d03cac34 <_malloc_usable_size_r>:
d03cac34:	f851 3c04 	ldr.w	r3, [r1, #-4]
d03cac38:	1f18      	subs	r0, r3, #4
d03cac3a:	2b00      	cmp	r3, #0
d03cac3c:	bfbc      	itt	lt
d03cac3e:	580b      	ldrlt	r3, [r1, r0]
d03cac40:	18c0      	addlt	r0, r0, r3
d03cac42:	4770      	bx	lr

d03cac44 <CSWTCH.7>:
d03cac44:	ac98 d03c ac98 d03c ac84 d03c accc d03c     ..<...<...<...<.
d03cac54:	ac84 d03c accc d03c acfc d03c ac84 d03c     ..<...<...<...<.
d03cac64:	acfc d03c ac84 d03c acfc d03c acb8 d03c     ..<...<...<...<.
d03cac74:	acfc d03c acfc d03c ac84 d03c acfc d03c     ..<...<...<...<.

d03cac84 <drv_closed_hat_patch>:
d03cac84:	0003 0041 4f0a 0700 0002 0081 0001 0001     ..A..O..........
d03cac94:	0000 0000                                   ....

d03cac98 <drv_kick_patch>:
d03cac98:	0003 00b2 0005 0024 0002 0011 000d f9c0     ......$.........
d03caca8:	0001 0003 000d 0000 0002 0010 0000 0000     ................

d03cacb8 <drv_open_hat_patch>:
d03cacb8:	0003 00a5 4f0a 0700 0002 0081 0001 0005     .....O..........
d03cacc8:	0000 0000                                   ....

d03caccc <drv_snare_patch>:
d03caccc:	0003 0092 4f0a 1800 0005 003c 0002 0091     .....O....<.....
d03cacdc:	0001 0001 0005 0012 4f0a 0a00 0002 0081     .........O......
d03cacec:	0001 0002 4f0a 0200 0002 0080 0000 0000     .....O..........

d03cacfc <drv_tom_patch>:
d03cacfc:	0003 00a3 0002 0011 000d ff6a 0001 0004     ..........j.....
d03cad0c:	000d 0000 0000 0000                         ........

d03cad14 <prg_acoustic_bass>:
d03cad14:	0003 0581 0002 0011 0005 000c 0001 0000     ................
d03cad24:	0005 0000 000f 0000 0000 0000               ............

d03cad30 <prg_acoustic_piano>:
d03cad30:	0003 0342 0004 0900 0002 0041 0001 0001     ..B.......A.....
d03cad40:	0004 0300 0001 0003 0004 0700 000f 0000     ................
d03cad50:	0000 0000                                   ....

d03cad54 <prg_bass_lead>:
d03cad54:	0003 00e3 0004 0400 0002 0041 0009 000c     ..........A.....
d03cad64:	000e 1405 000f 0000 0000 0000               ............

d03cad70 <prg_bright_key>:
d03cad70:	0003 0242 0004 0a00 0002 0041 0001 0001     ..B.......A.....
d03cad80:	0004 0280 0001 0002 0004 0600 000f 0000     ................
d03cad90:	0000 0000                                   ....

d03cad94 <prg_charang_lead>:
d03cad94:	0003 00d3 0004 0180 0002 0041 000e 3004     ..........A....0
d03cada4:	0009 070c 000f 0000 0000 0000               ............

d03cadb0 <prg_chiff_lead>:
d03cadb0:	0003 00e3 0004 0700 0002 0081 0001 0001     ................
d03cadc0:	0002 0041 000e 2005 0010 0105 000f 0000     ..A.... ........
d03cadd0:	0000 0000                                   ....

d03cadd4 <prg_church_organ>:
d03cadd4:	0003 00f5 0002 0031 000e 1807 0010 0209     ......1.........
d03cade4:	000f 0000 0000 0000                         ........

d03cadec <prg_clav_pluck>:
d03cadec:	0003 0121 0004 0180 0002 0041 0001 0001     ..!.......A.....
d03cadfc:	0004 0c00 000f 0000 0000 0000               ............

d03cae08 <prg_conditional_loop_demo>:
d03cae08:	0003 00fc 0004 0200 0002 0041 0011 000a     ..........A.....
d03cae18:	0014 0405 0006 0100 0001 0001 0012 ffff     ................
d03cae28:	0015 0004 0013 000d 0006 0040 0001 0001     ..........@.....
d03cae38:	0007 0040 0001 0001 0015 0005 0000 0000     ..@.............

d03cae48 <prg_crystal_fx>:
d03cae48:	0003 02e5 0004 0500 0002 0041 0009 0c13     ..........A.....
d03cae58:	000e 1004 0010 0104 000f 0000 0000 0000     ................

d03cae68 <prg_distortion_guitar>:
d03cae68:	0003 0652 0004 0180 0005 000c 0002 0041     ..R...........A.
d03cae78:	0001 0000 0005 0000 0004 0d00 0009 070c     ................
d03cae88:	000f 0000 0000 0000                         ........

d03cae90 <prg_electric_key>:
d03cae90:	0003 0464 0004 0440 0002 0041 000e 0807     ..d...@...A.....
d03caea0:	0010 0108 000f 0000 0000 0000               ............

d03caeac <prg_gunshot>:
d03caeac:	0003 0ef0 0002 0081 0001 0014 0000 0000     ................

d03caebc <prg_honkytonk_piano>:
d03caebc:	0003 0432 0004 0240 0002 0041 0001 0002     ..2...@...A.....
d03caecc:	0004 0500 0001 0004 0004 0340 000f 0000     ..........@.....
d03caedc:	0000 0000                                   ....

d03caee0 <prg_hubbard_arp_hardware>:
d03caee0:	0003 00f3 0004 0480 0002 0041 000e 1806     ..........A.....
d03caef0:	0010 0104 0009 0407 000f 0000 0000 0000     ................

d03caf00 <prg_hubbard_arp_lead>:
d03caf00:	0003 00f3 0004 0600 0002 0041 000e 1806     ..........A.....
d03caf10:	0005 0000 0004 0600 0001 0000 0005 0004     ................
d03caf20:	0004 0380 0001 0000 0005 0007 0004 0a00     ................
d03caf30:	0001 0000 0005 000c 0004 0500 0001 0000     ................
d03caf40:	000f 000c 0000 0000                         ........

d03caf48 <prg_hubbard_pwm_lead>:
d03caf48:	0003 00f4 0004 0180 0002 0041 000e 2005     ..........A.... 
d03caf58:	0010 0206 0006 0060 0001 0001 200b 0002     ......`...... ..
d03caf68:	0007 0060 0001 0001 200b 0002 000f 0006     ..`...... ......
d03caf78:	0000 0000                                   ....

d03caf7c <prg_lead_square>:
d03caf7c:	0003 00d3 0004 0600 0002 0041 000e 2404     ..........A....$
d03caf8c:	0010 0105 0006 0080 0001 0001 080b 0002     ................
d03caf9c:	0007 0080 0001 0001 080b 0002 000f 0006     ................
d03cafac:	0000 0000                                   ....

d03cafb0 <prg_muted_guitar>:
d03cafb0:	0003 0111 0004 0100 0002 0041 0001 0001     ..........A.....
d03cafc0:	0004 0f00 000f 0000 0000 0000               ............

d03cafcc <prg_percussive_organ>:
d03cafcc:	0003 02c3 0004 0380 0002 0051 0010 0105     ..........Q.....
d03cafdc:	000f 0000 0000 0000                         ........

d03cafe4 <prg_pizzicato>:
d03cafe4:	0003 0262 0004 0a00 0002 0041 0001 0001     ..b.......A.....
d03caff4:	0004 0300 000f 0000 0000 0000               ............

d03cb000 <prg_sid_bell>:
d03cb000:	0003 04a6 0002 0011 000e 0803 0005 000c     ................
d03cb010:	0001 0001 0005 0000 000f 0000 0000 0000     ................

d03cb020 <prg_sid_brass>:
d03cb020:	0003 12d4 0004 0700 0002 0061 000e 1006     ..........a.....
d03cb030:	0010 0106 000f 0000 0000 0000               ............

d03cb03c <prg_sid_drawbar_organ>:
d03cb03c:	0003 00e4 0004 0700 0002 0051 000e 1008     ..........Q.....
d03cb04c:	0010 0207 000f 0000 0000 0000               ............

d03cb058 <prg_sid_flute>:
d03cb058:	0003 34b4 0002 0011 000e 2006 0010 0107     ...4....... ....
d03cb068:	000f 0000 0000 0000                         ........

d03cb070 <prg_sid_guitar>:
d03cb070:	0003 0352 0004 0280 0002 0041 0001 0001     ..R.......A.....
d03cb080:	0004 0900 000f 0000 0000 0000               ............

d03cb08c <prg_sid_reed>:
d03cb08c:	0003 01c4 0004 0300 0002 0041 000e 2006     ..........A.... 
d03cb09c:	0010 0108 000f 0000 0000 0000               ............

d03cb0a8 <prg_sid_strings>:
d03cb0a8:	0003 45c5 0004 0800 0002 0051 000e 1807     ...E......Q.....
d03cb0b8:	0010 0109 000f 0000 0000 0000               ............

d03cb0c4 <prg_sitar_sid>:
d03cb0c4:	0003 0273 0004 0180 0002 0041 0009 0c13     ..s.......A.....
d03cb0d4:	0001 0003 0009 0000 000f 0000 0000 0000     ................

d03cb0e4 <prg_slap_bass>:
d03cb0e4:	0003 0471 0004 0140 0002 0041 0005 000c     ..q...@...A.....
d03cb0f4:	0001 0000 0005 0000 0009 000c 000f 0000     ................
d03cb104:	0000 0000                                   ....

d03cb108 <prg_sweep_pad>:
d03cb108:	0003 45f6 0004 0180 0002 0041 000e 1808     ...E......A.....
d03cb118:	0010 0208 0006 0040 0001 0001 280b 0002     ......@......(..
d03cb128:	0007 0040 0001 0001 280b 0002 000f 0006     ..@......(......
d03cb138:	0000 0000                                   ....

d03cb13c <prg_synth_bass_1>:
d03cb13c:	0003 0671 0004 0280 0005 000c 0002 0041     ..q...........A.
d03cb14c:	0001 0000 0005 0000 0009 000c 000f 0000     ................
d03cb15c:	0000 0000                                   ....

d03cb160 <prg_synth_brass>:
d03cb160:	0003 01f4 0004 0200 0002 0041 000e 1805     ..........A.....
d03cb170:	0010 0205 0006 0080 0001 0001 040b 0002     ................
d03cb180:	0007 0080 0001 0001 040b 0002 000f 0006     ................
d03cb190:	0000 0000                                   ....

d03cb194 <prg_synth_drum_program>:
d03cb194:	0003 00a2 0005 0018 0002 0011 000d fe0c     ................
d03cb1a4:	0001 0004 000d 0000 0000 0000               ............

d03cb1b0 <prg_warm_pad>:
d03cb1b0:	0003 55f6 0004 0800 0002 0051 000e 1809     ...U......Q.....
d03cb1c0:	0010 020a 000f 0000 0000 0000               ............

d03cb1cc <sid_note_to_freq>:
d03cb1cc:	0111 0121 0133 0145 0158 016d 0182 019a     ..!.3.E.X.m.....
d03cb1dc:	01b2 01cc 01e7 0204 0223 0243 0266 028a     ........#.C.f...
d03cb1ec:	02b1 02da 0305 0333 0364 0398 03cf 0409     ......3.d.......
d03cb1fc:	0446 0487 04cc 0515 0562 05b4 060b 0667     F.......b.....g.
d03cb20c:	06c9 0730 079d 0811 088c 090e 0998 0a2a     ..0...........*.
d03cb21c:	0ac5 0b69 0c17 0ccf 0d92 0e61 0f3c 1023     ..i.......a.<.#.
d03cb22c:	1119 121d 1331 1455 158a 16d2 182d 199d     ....1.U.....-...
d03cb23c:	1b23 1cc0 1e76 2046 2232 243a 2662 28aa     #...v.F 2":$b&.(
d03cb24c:	2b15 2da5 305b 333b 3647 3981 3cec 408c     .+.-[0;3G6.9.<.@
d03cb25c:	4464 4875 4cc4 5154 562a 5b4a 60b7 6676     dDuH.LTQ*VJ[.`vf
d03cb26c:	6c8e 7302 79d9 8118 88c9 90ea 9988 a2a9     .l.s.y..........
d03cb27c:	ac55 b694 c16f ccee d91d e605 f3b3 ffff     U...o...........
d03cb28c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d03cb29c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d03cb2ac:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d03cb2bc:	ffff ffff ffff ffff ffff ffff ffff ffff     ................

d03cb2cc <sid_release_ticks_50hz>:
d03cb2cc:	0001 0002 0003 0004 0006 0009 000b 000d     ................
d03cb2dc:	0010 0026 004c 0079 0097 01c3 02ef 04b1     ..&.L.y.........
d03cb2ec:	254e 3330 2075 4843 3025 7532 2500 756c     N%03u CH%02u.%lu
d03cb2fc:	252e 3230 756c 4300 554f 544e 2520 0075     .%02lu.COUNT %u.
d03cb30c:	6f43 6e75 2074 6e69 3420 4900 504d 524f     Count in 4.IMPOR
d03cb31c:	4954 474e 4d20 4449 0049 5254 4341 204b     TING MIDI.TRACK 
d03cb32c:	7525 252f 0075 6c25 2575 0025 6473 6163     %u/%u.%lu%%.sdca
d03cb33c:	6472 2f3a 7973 746e 7068 6f72 7367 4300     rd:/synthprogs.C
d03cb34c:	6e61 6f6e 2074 7263 6165 6574 7320 6e79     annot create syn
d03cb35c:	6874 7270 676f 2073 6f66 646c 7265 4300     thprogs folder.C
d03cb36c:	3148 2030 7375 7365 7420 6568 7020 7265     H10 uses the per
d03cb37c:	7563 7373 6f69 206e 6f72 7475 7265 5200     cussion router.R
d03cb38c:	6365 726f 6964 676e 5300 6e6f 2067 6173     ecording.Song sa
d03cb39c:	6576 6220 6675 6566 2072 696d 7373 6e69     ve buffer missin
d03cb3ac:	0067 4953 5344 474e 0031 6f53 676e 7320     g.SIDSNG1.Song s
d03cb3bc:	7661 2065 706f 6e65 6620 6961 656c 0064     ave open failed.
d03cb3cc:	6f53 676e 7320 7661 2065 7277 7469 2065     Song save write 
d03cb3dc:	6166 6c69 6465 5300 6e6f 2067 6173 6576     failed.Song save
d03cb3ec:	0064 7250 6a6f 6365 2074 6173 6576 6220     d.Project save b
d03cb3fc:	6675 6566 2072 696d 7373 6e69 0067 4953     uffer missing.SI
d03cb40c:	5344 5050 0031 7250 6a6f 6365 2074 6173     DSPP1.Project sa
d03cb41c:	6576 6f20 6570 206e 6166 6c69 6465 5000     ve open failed.P
d03cb42c:	6f72 656a 7463 7320 7661 2065 7277 7469     roject save writ
d03cb43c:	2065 6166 6c69 6465 5000 6f72 656a 7463     e failed.Project
d03cb44c:	7320 7661 6465 4e00 206f 4d56 7020 6f72      saved.No VM pro
d03cb45c:	7267 6d61 7420 206f 6173 6576 5000 6f72     gram to save.Pro
d03cb46c:	7267 6d61 7320 7661 2065 7562 6666 7265     gram save buffer
d03cb47c:	6d20 7369 6973 676e 5300 4449 5053 3147      missing.SIDSPG1
d03cb48c:	5000 6f72 7267 6d61 7320 7661 2065 706f     .Program save op
d03cb49c:	6e65 6620 6961 656c 0064 7250 676f 6172     en failed.Progra
d03cb4ac:	206d 6173 6576 7720 6972 6574 6620 6961     m save write fai
d03cb4bc:	656c 0064 7250 676f 6172 206d 6173 6576     led.Program save
d03cb4cc:	0064 6553 7571 6e65 6563 2072 6f6e 6574     d.Sequencer note
d03cb4dc:	6d20 6d65 726f 2079 7566 6c6c 2e00 6e73      memory full..sn
d03cb4ec:	0067 732e 6770 2e00 7073 0070 6d2e 6469     g..spg..spp..mid
d03cb4fc:	2500 2f73 7325 2500 2f73 7325 7325 7300     .%s/%s.%s/%s%s.s
d03cb50c:	6364 7261 3a64 2e00 002e 6143 6e6e 746f     dcard:....Cannot
d03cb51c:	6f20 6570 206e 6f66 646c 7265 4600 6c61      open folder.Fal
d03cb52c:	626c 6361 006b 4550 4652 524f 414d 434e     lback.PERFORMANC
d03cb53c:	0045 4553 454c 5443 4445 4320 4148 4e4e     E.SELECTED CHANN
d03cb54c:	4c45 4300 2548 3230 2075 2550 3330 2075     EL.CH%02u P%03u 
d03cb55c:	2e25 3831 0073 502d 2b00 0050 472d 2b00     %.18s.-P.+P.-G.+
d03cb56c:	0047 4552 4543 544e 5220 554f 4954 474e     G.RECENT ROUTING
d03cb57c:	4300 2548 3230 2075 2550 3330 2075 2d25     .CH%02u P%03u %-
d03cb58c:	3031 312e 7330 5000 4f52 454a 5443 5300     10.10s.PROJECT.S
d03cb59c:	7661 2f65 6f6c 6461 6820 6f6f 736b 7220     ave/load hooks r
d03cb5ac:	6165 7964 002e 6150 6374 2068 6162 6b6e     eady..Patch bank
d03cb5bc:	2073 616c 6574 2e72 4200 7475 6f74 736e     s later..Buttons
d03cb5cc:	6120 6572 6320 696c 6b63 6261 656c 002e      are clickable..
d03cb5dc:	4552 5453 524f 0045 4c43 4145 0052 4f43     RESTORE.CLEAR.CO
d03cb5ec:	464e 5249 204d 4341 4954 4e4f 5200 7365     NFIRM ACTION.Res
d03cb5fc:	6f74 6572 7320 6c65 6365 6574 2064 4d56     tore selected VM
d03cb60c:	7020 6f72 7267 6d61 6600 6f72 206d 7469      program.from it
d03cb61c:	2073 7270 7365 7465 6420 6665 7561 746c     s preset default
d03cb62c:	003f 6c43 6165 2072 6c61 206c 6573 7571     ?.Clear all sequ
d03cb63c:	6e65 6563 2072 6f6e 6574 0073 6e61 2064     encer notes.and 
d03cb64c:	6572 6977 646e 7420 206f 6874 2065 7473     rewind to the st
d03cb65c:	7261 3f74 4300 4e41 4543 004c 005f 4f4c     art?.CANCEL._.LO
d03cb66c:	4441 4620 4c49 3a45 0020 6f4e 6c20 616f     AD FILE: .No loa
d03cb67c:	6164 6c62 2065 6966 656c 2073 6f66 6e75     dable files foun
d03cb68c:	2e64 5b00 4944 5d52 2520 0073 4d5b 4449     d..[DIR] %s.[MID
d03cb69c:	205d 7325 5500 0050 4e44 4f00 004b 5250     ] %s.UP.DN.OK.PR
d03cb6ac:	4a4f 4d00 4449 5300 5641 2045 5953 544e     OJ.MID.SAVE SYNT
d03cb6bc:	2048 5250 474f 4152 004d 003c 003e 4153     H PROGRAM.<.>.SA
d03cb6cc:	4556 4120 4c4c 5300 5641 2045 5250 0047     VE ALL.SAVE PRG.
d03cb6dc:	4153 4556 5320 4e4f 0047 564f 5245 5257     SAVE SONG.OVERWR
d03cb6ec:	5449 2045 4946 454c 003f 6854 7369 6e20     ITE FILE?.This n
d03cb6fc:	6d61 2065 6c61 6572 6461 2079 7865 7369     ame already exis
d03cb70c:	7374 003a 4559 0053 4f4e 4300 554f 544e     ts:.YES.NO.COUNT
d03cb71c:	5200 4345 4100 4d52 5300 4f54 0050 4c50     .REC.ARM.STOP.PL
d03cb72c:	5941 4f00 4646 5300 414e 0050 5246 4545     AY.OFF.SNAP.FREE
d03cb73c:	4200 4d50 2520 3330 2075 2520 2073 7525     .BPM %03u  %s %u
d03cb74c:	2020 4e53 5041 2520 2073 2f31 7525 2020       SNAP %s 1/%u  
d03cb75c:	554f 2054 7325 2020 4f4e 4554 2053 6c25     OUT %s  NOTES %l
d03cb76c:	0075 5042 204d 3025 7533 2020 7325 2020     u.BPM %03u  %s  
d03cb77c:	4e53 5041 2520 2073 2f31 7525 2020 554f     SNAP %s 1/%u  OU
d03cb78c:	2054 7325 2020 4f4e 4554 2053 6c25 0075     T %s  NOTES %lu.
d03cb79c:	5752 4600 4f52 004d 4c43 0052 002d 002b     RW.FROM.CLR.-.+.
d03cb7ac:	4e45 4241 454c 0044 554d 4554 0044 554d     ENABLED.MUTED.MU
d03cb7bc:	4554 4500 414e 4c42 0045 4d56 5220 4d41     TE.ENABLE.VM RAM
d03cb7cc:	4520 4944 4f54 0052 4d56 4320 444f 2045      EDITOR.VM CODE 
d03cb7dc:	4956 5745 5245 3f00 3f3f 5600 4549 0057     VIEWER.???.VIEW.
d03cb7ec:	4445 5449 5000 5241 4f00 4350 5600 4c41     EDIT.PAR.OPC.VAL
d03cb7fc:	5300 4449 4f42 2058 494d 4944 5320 4449     .SIDBOX MIDI SID
d03cb80c:	5620 2e30 0039 494c 4556 5320 4e59 4854      V0.9.LIVE SYNTH
d03cb81c:	4320 4e4f 5254 4c4f 4300 4148 4e4e 4c45      CONTROL.CHANNEL
d03cb82c:	4120 5353 4749 4d4e 4e45 5354 3100 342d      ASSIGNMENTS.1-4
d03cb83c:	3500 382d 3900 312d 0032 3331 312d 0036     .5-8.9-12.13-16.
d03cb84c:	4843 2020 5020 4752 2020 5020 4f52 2047     CH   PRG   PROG 
d03cb85c:	414e 454d 2500 3230 2075 2020 3025 7533     NAME.%02u   %03u
d03cb86c:	2020 2520 322d 2e35 3532 0073 4c47 424f        %-25.25s.GLOB
d03cb87c:	4c41 4f20 5455 5550 2054 4147 4e49 5300     AL OUTPUT GAIN.S
d03cb88c:	4c45 4345 4554 2044 4843 4e41 454e 204c     ELECTED CHANNEL 
d03cb89c:	4f56 554c 454d 4300 2548 3230 2075 2520     VOLUME.CH%02u  %
d03cb8ac:	3330 0075 4553 454c 5443 4445 4320 4148     03u.SELECTED CHA
d03cb8bc:	4e4e 4c45 4520 5058 4552 5353 4f49 004e     NNEL EXPRESSION.
d03cb8cc:	5845 2050 3025 7533 4d00 4449 2049 4343     EXP %03u.MIDI CC
d03cb8dc:	2f37 4343 3131 7320 6974 6c6c 7520 6470     7/CC11 still upd
d03cb8ec:	7461 2065 6877 6c69 2065 6c70 7961 6e69     ate while playin
d03cb8fc:	2e67 5000 5245 5543 5353 4f49 204e 4553     g..PERCUSSION SE
d03cb90c:	5454 4e49 5347 4700 204d 6863 6e61 656e     TTINGS.GM channe
d03cb91c:	206c 3031 7220 756f 6574 2064 6f74 5320     l 10 routed to S
d03cb92c:	4449 6420 7572 206d 7270 676f 6172 736d     ID drum programs
d03cb93c:	5300 4154 4554 203a 7325 4400 5552 204d     .STATE: %s.DRUM 
d03cb94c:	4147 4e49 2520 2575 0025 614d 7070 6465     GAIN %u%%.Mapped
d03cb95c:	203a 696b 6b63 202c 6e73 7261 2c65 6820     : kick, snare, h
d03cb96c:	7461 2c73 7420 6d6f 2e73 4600 7475 7275     ats, toms..Futur
d03cb97c:	3a65 7020 7265 6e2d 746f 2065 696b 2074     e: per-note kit 
d03cb98c:	7262 776f 6573 2e72 4300 3148 2030 6769     browser..CH10 ig
d03cb99c:	6f6e 6572 2073 7270 676f 6172 206d 6863     nores program ch
d03cb9ac:	6e61 6567 2e73 4300 2548 3230 2075 2550     anges..CH%02u P%
d03cb9bc:	3330 2075 2e25 3432 0073 4d47 6420 7572     03u %.24s.GM dru
d03cb9cc:	736d 7520 6573 7020 7265 7563 7373 6f69     ms use percussio
d03cb9dc:	206e 6f72 7475 7265 002e 6f4e 5620 204d     n router..No VM 
d03cb9ec:	7270 676f 6172 206d 7361 6973 6e67 6465     program assigned
d03cb9fc:	002e 4449 2058 504f 4f43 4544 2020 5020     ..IDX OPCODE   P
d03cba0c:	2020 4156 554c 0045 3025 7532 203a 2d25       VALUE.%02u: %-
d03cba1c:	7338 2520 3230 2058 2520 3430 0058 4946     8s %02X  %04X.FI
d03cba2c:	4c45 0044 4f52 2557 3230 2075 7325 4800     ELD.ROW%02u %s.H
d03cba3c:	0049 312b 0036 4f4c 2500 3230 2f75 3025     I.+16.LO.%02u/%0
d03cba4c:	7532 5000 4e41 4349 5300 5641 0045 4f4c     2u.PANIC.SAVE.LO
d03cba5c:	4441 4e00 206f 6966 656c 7320 6c65 6365     AD.No file selec
d03cba6c:	6574 0064 7250 7365 2073 4b4f 7420 206f     ted.Press OK to 
d03cba7c:	706f 6e65 6620 6c6f 6564 0072 6553 656c     open folder.Sele
d03cba8c:	7463 6120 2e20 7073 2070 7270 6a6f 6365     ct a .spp projec
d03cba9c:	0074 6553 656c 7463 6120 2e20 7073 2067     t.Select a .spg 
d03cbaac:	7270 676f 6172 006d 6553 656c 7463 6120     program.Select a
d03cbabc:	2e20 6e73 2067 6f73 676e 5300 6c65 6365      .sng song.Selec
d03cbacc:	2074 2061 6d2e 6469 6620 6c69 0065 7250     t a .mid file.Pr
d03cbadc:	6a6f 6365 2074 6f6c 6461 6220 6675 6566     oject load buffe
d03cbaec:	2072 696d 7373 6e69 0067 7250 6a6f 6365     r missing.Projec
d03cbafc:	2074 6f6c 6461 6f20 6570 206e 6166 6c69     t load open fail
d03cbb0c:	6465 4200 6461 7020 6f72 656a 7463 6620     ed.Bad project f
d03cbb1c:	6c69 0065 7250 6a6f 6365 2074 6f6c 6461     ile.Project load
d03cbb2c:	6465 5300 6c65 6365 2074 2061 4d56 7020     ed.Select a VM p
d03cbb3c:	6f72 7267 6d61 6620 7269 7473 5000 6f72     rogram first.Pro
d03cbb4c:	7267 6d61 6c20 616f 2064 7562 6666 7265     gram load buffer
d03cbb5c:	6d20 7369 6973 676e 5000 6f72 7267 6d61      missing.Program
d03cbb6c:	6c20 616f 2064 706f 6e65 6620 6961 656c      load open faile
d03cbb7c:	0064 6142 2064 7270 676f 6172 206d 6966     d.Bad program fi
d03cbb8c:	656c 5000 6f72 7267 6d61 6c20 616f 6564     le.Program loade
d03cbb9c:	2064 6e69 6f74 5620 004d 6f53 676e 6c20     d into VM.Song l
d03cbbac:	616f 2064 7562 6666 7265 6d20 7369 6973     oad buffer missi
d03cbbbc:	676e 5300 6e6f 2067 6f6c 6461 6f20 6570     ng.Song load ope
d03cbbcc:	206e 6166 6c69 6465 4200 6461 7320 6e6f     n failed.Bad son
d03cbbdc:	2067 6966 656c 5300 6e6f 2067 6f6e 6574     g file.Song note
d03cbbec:	6d20 6d65 726f 2079 7566 6c6c 4200 6461      memory full.Bad
d03cbbfc:	7320 6e6f 2067 6f6e 6574 6420 7461 0061      song note data.
d03cbc0c:	6f53 676e 6c20 616f 6564 0064 6142 2064     Song loaded.Bad 
d03cbc1c:	494d 4944 6620 6c69 0065 494d 4944 6c20     MIDI file.MIDI l
d03cbc2c:	616f 2064 706f 6e65 6620 6961 656c 0064     oad open failed.
d03cbc3c:	6142 2064 494d 4944 6820 6165 6564 0072     Bad MIDI header.
d03cbc4c:	544d 6468 5500 736e 7075 6f70 7472 6465     MThd.Unsupported
d03cbc5c:	4d20 4449 2049 6966 656c 4200 6461 4d20      MIDI file.Bad M
d03cbc6c:	4449 2049 7274 6361 006b 544d 6b72 4200     IDI track.MTrk.B
d03cbc7c:	6461 4d20 4449 2049 6863 6e75 006b 494d     ad MIDI chunk.MI
d03cbc8c:	4944 6e20 746f 2065 656d 6f6d 7972 6620     DI note memory f
d03cbc9c:	6c75 006c 494d 4944 6c20 616f 6564 3a64     ull.MIDI loaded:
d03cbcac:	2520 756c 6e20 746f 7365 4d00 4449 2049      %lu notes.MIDI 
d03cbcbc:	7865 6f70 7472 6f20 6570 206e 6166 6c69     export open fail
d03cbccc:	6465 4d00 4449 2049 7865 6f70 7472 6820     ed.MIDI export h
d03cbcdc:	6165 6564 2072 6166 6c69 6465 4d00 4449     eader failed.MID
d03cbcec:	2049 7865 6f70 7472 7420 6d65 6f70 6620     I export tempo f
d03cbcfc:	6961 656c 0064 494d 4944 6520 7078 726f     ailed.MIDI expor
d03cbd0c:	2074 6f6e 6574 6f2d 6666 6620 6961 656c     t note-off faile
d03cbd1c:	0064 494d 4944 6520 7078 726f 2074 7270     d.MIDI export pr
d03cbd2c:	676f 6172 206d 6166 6c69 6465 4d00 4449     ogram failed.MID
d03cbd3c:	2049 7865 6f70 7472 6e20 746f 2d65 6e6f     I export note-on
d03cbd4c:	6620 6961 656c 0064 494d 4944 6520 7078      failed.MIDI exp
d03cbd5c:	726f 2074 6e65 2064 6166 6c69 6465 4d00     ort end failed.M
d03cbd6c:	4449 2049 7865 6f70 7472 6c20 6e65 7467     IDI export lengt
d03cbd7c:	2068 6166 6c69 6465 4d00 4449 2049 7865     h failed.MIDI ex
d03cbd8c:	6f70 7472 6465 4500 746e 7265 6120 6620     ported.Enter a f
d03cbd9c:	6c69 2065 616e 656d 4f00 6576 6472 6275     ile name.Overdub
d03cbdac:	6f20 6666 5200 6365 726f 2064 666f 0066      off.Record off.
d03cbdbc:	6552 6f63 6472 6120 6d72 6465 5200 6365     Record armed.Rec
d03cbdcc:	726f 2064 6964 6173 6d72 6465 5200 6769     ord disarmed.Rig
d03cbddc:	7468 6320 696c 6b63 7020 6e61 6369 4100     ht click panic.A
d03cbdec:	7463 6f69 206e 6163 636e 6c65 656c 0064     ction cancelled.
d03cbdfc:	6150 696e 3a63 6120 6c6c 6e20 746f 7365     Panic: all notes
d03cbe0c:	6b20 6c69 656c 0064 4d56 6520 6964 2074      killed.VM edit 
d03cbe1c:	6976 7765 6320 6f6c 6573 0064 6550 6372     view closed.Perc
d03cbe2c:	7375 6973 6e6f 7220 756f 6574 2072 6168     ussion router ha
d03cbe3c:	2073 6f6e 5620 204d 6465 7469 4e00 206f     s no VM edit.No 
d03cbe4c:	4d56 7020 6f72 7267 6d61 7420 206f 6465     VM program to ed
d03cbe5c:	7469 5600 204d 6465 7469 726f 7520 6573     it.VM editor use
d03cbe6c:	2073 4152 204d 6170 6374 0068 6f4e 5620     s RAM patch.No V
d03cbe7c:	204d 6564 6166 6c75 2074 6f74 7220 7365     M default to res
d03cbe8c:	6f74 6572 5600 204d 6572 7473 726f 6465     tore.VM restored
d03cbe9c:	6620 6f72 206d 7270 7365 7465 5300 7165      from preset.Seq
d03cbeac:	6575 636e 7265 6320 656c 7261 6465 5300     uencer cleared.S
d03cbebc:	6c65 6365 2074 2061 6f66 646c 7265 4c00     elect a folder.L
d03cbecc:	616f 2064 6163 636e 6c65 656c 0064 6153     oad cancelled.Sa
d03cbedc:	6576 6320 6e61 6563 6c6c 6465 4f00 6576     ve cancelled.Ove
d03cbeec:	7772 6972 6574 6320 6e61 6563 6c6c 6465     rwrite cancelled
d03cbefc:	5300 7165 6575 636e 7265 7220 7765 756f     .Sequencer rewou
d03cbf0c:	646e 5200 6365 726f 2064 6163 636e 6c65     nd.Record cancel
d03cbf1c:	656c 0064 6553 7571 6e65 6563 2072 7473     led.Sequencer st
d03cbf2c:	706f 6570 0064 6553 7571 6e65 6563 2072     opped.Sequencer 
d03cbf3c:	6c70 7961 6e69 0067 6c50 7961 6620 6f72     playing.Play fro
d03cbf4c:	206d 7563 7372 726f 5300 7165 6575 636e     m cursor.Sequenc
d03cbf5c:	7265 4d20 4449 2049 756f 2074 666f 0066     er MIDI out off.
d03cbf6c:	6553 7571 6e65 6563 2072 494d 4944 6f20     Sequencer MIDI o
d03cbf7c:	7475 6f20 006e 6952 6867 2074 6c63 6369     ut on.Right clic
d03cbf8c:	206b 6170 696e 2063 4c20 522b 6520 6978     k panic  L+R exi
d03cbf9c:	7374 2500 2f75 7525 7620 696f 6563 0073     ts.%u/%u voices.
d03cbfac:	6170 696e 2063 6c25 2075 7420 6f6d 2520     panic %lu  tmo %
d03cbfbc:	756c 6700 6961 206e 7525 2525 2020 7264     lu.gain %u%%  dr
d03cbfcc:	6d75 2073 7525 2525 5600 4c4f 2520 3330     ums %u%%.VOL %03
d03cbfdc:	2075 4520 5058 2520 3330 2075 4220 4e45     u  EXP %03u  BEN
d03cbfec:	2044 6425 5000 2543 3230 2075 2556 0075     D %d.PC%02u V%u.
d03cbffc:	4e45 0044 4157 5449 5700 5641 0045 4441     END.WAIT.WAVE.AD
d03cc00c:	5253 5000 4c55 4553 5000 5449 4843 4100     SR.PULSE.PITCH.A
d03cc01c:	4444 5750 004d 4544 5043 4d57 5000 524f     DDPWM.DECPWM.POR
d03cc02c:	4154 4100 5052 4600 4c49 4554 0052 4f4c     TA.ARP.FILTER.LO
d03cc03c:	504f 4a00 4d55 0050 5753 4545 0050 4956     OP.JUMP.SWEEP.VI
d03cc04c:	0042 4f48 444c 5400 4552 004d 4553 5654     B.HOLD.TREM.SETV
d03cc05c:	5241 4100 4444 4156 0052 4857 4f4e 4554     AR.ADDVAR.WHNOTE
d03cc06c:	5700 4748 0054 4f4c 504f 4b42 4800 4d4f     .WHGT.LOOPBK.HOM
d03cc07c:	0045 4843 4c4e 0053 494d 4558 0052 4550     E.CHNLS.MIXER.PE
d03cc08c:	4352 5300 5145 4100 6f63 7375 6974 2063     RC.SEQ.Acoustic 
d03cc09c:	6950 6e61 006f 7242 6769 7468 4b20 7965     Piano.Bright Key
d03cc0ac:	4800 6e6f 796b 742d 6e6f 006b 6c45 6365     .Honky-tonk.Elec
d03cc0bc:	7274 6369 4b20 7965 4300 616c 2076 6c50     tric Key.Clav Pl
d03cc0cc:	6375 006b 4953 2044 6542 6c6c 4400 6172     uck.SID Bell.Dra
d03cc0dc:	6277 7261 4f20 6772 6e61 4300 7568 6372     wbar Organ.Churc
d03cc0ec:	2068 724f 6167 006e 6552 6465 4f20 6772     h Organ.Reed Org
d03cc0fc:	6e61 5300 4449 4720 6975 6174 0072 754d     an.SID Guitar.Mu
d03cc10c:	6574 2064 7547 7469 7261 4f00 6576 6472     ted Guitar.Overd
d03cc11c:	6972 6576 4720 7274 4400 7369 2074 7547     rive Gtr.Dist Gu
d03cc12c:	7469 7261 4d00 7475 6465 4e20 696f 6573     itar.Muted Noise
d03cc13c:	4100 6f63 7375 6974 2063 6142 7373 5300     .Acoustic Bass.S
d03cc14c:	4449 4220 7361 0073 7953 746e 2068 6142     ID Bass.Synth Ba
d03cc15c:	7373 3120 5300 616c 2070 6142 7373 5300     ss 1.Slap Bass.S
d03cc16c:	4449 5320 7274 6e69 7367 5000 7a69 697a     ID Strings.Pizzi
d03cc17c:	6163 6f74 5300 4449 4520 736e 6d65 6c62     cato.SID Ensembl
d03cc18c:	0065 4953 2044 7242 7361 0073 7953 746e     e.SID Brass.Synt
d03cc19c:	2068 7242 7361 0073 4953 2044 6552 6465     h Brass.SID Reed
d03cc1ac:	5300 4449 4620 756c 6574 4c00 6165 2064     .SID Flute.Lead 
d03cc1bc:	7153 6175 6572 5000 4d57 4c20 6165 0064     Square.PWM Lead.
d03cc1cc:	6146 7473 4120 7072 4c20 6165 0064 5748     Fast Arp Lead.HW
d03cc1dc:	4120 7072 4c20 6165 0064 6843 6669 2066      Arp Lead.Chiff 
d03cc1ec:	654c 6461 4300 6168 6172 676e 4c20 6165     Lead.Charang Lea
d03cc1fc:	0064 5750 204d 7753 6565 0070 6142 7373     d.PWM Sweep.Bass
d03cc20c:	4c2b 6165 0064 6157 6d72 5020 6461 5300     +Lead.Warm Pad.S
d03cc21c:	6577 7065 5020 6461 5300 4449 4620 0058     weep Pad.SID FX.
d03cc22c:	4953 2044 6c50 6375 006b 7953 746e 2068     SID Pluck.Synth 
d03cc23c:	7244 6d75 4e00 696f 6573 4620 0058 4d56     Drum.Noise FX.VM
d03cc24c:	4c20 6f6f 2070 6544 6f6d 4700 6e75 6873      Loop Demo.Gunsh
d03cc25c:	746f 4620 0058 4d47 4420 7572 736d 5000     ot FX.GM Drums.P
d03cc26c:	5326 0051 1e13 0452 5080 5326 0051 007f     &SQ...R..P&SQ...

d03cc27c <CSWTCH.1516>:
d03cc27c:	c093 d03c c0a2 d03c c0a2 d03c c0a2 d03c     ..<...<...<...<.
d03cc28c:	c0ad d03c c0b8 d03c c0b8 d03c c0c5 d03c     ..<...<...<...<.
d03cc29c:	c0c5 d03c c0d0 d03c c0d0 d03c c0d0 d03c     ..<...<...<...<.
d03cc2ac:	c0d0 d03c c0d0 d03c c0d0 d03c c0d0 d03c     ..<...<...<...<.
d03cc2bc:	c0d9 d03c c0d9 d03c c0d9 d03c c0e7 d03c     ..<...<...<...<.
d03cc2cc:	c0f4 d03c c0f4 d03c c0f4 d03c c0f4 d03c     ..<...<...<...<.
d03cc2dc:	c0ff d03c c0ff d03c c0ff d03c c0ff d03c     ..<...<...<...<.
d03cc2ec:	c10a d03c c117 d03c c125 d03c c131 d03c     ..<...<.%.<.1.<.
d03cc2fc:	c13d d03c c14b d03c c14b d03c c14b d03c     =.<.K.<.K.<.K.<.
d03cc30c:	c14b d03c c14b d03c c154 d03c c161 d03c     K.<.K.<.T.<.a.<.
d03cc31c:	c16b d03c c16b d03c c16b d03c c16b d03c     k.<.k.<.k.<.k.<.
d03cc32c:	c16b d03c c16b d03c c177 d03c c181 d03c     k.<.k.<.w.<...<.
d03cc33c:	c181 d03c c181 d03c c181 d03c c181 d03c     ..<...<...<...<.
d03cc34c:	c181 d03c c181 d03c c181 d03c c181 d03c     ..<...<...<...<.
d03cc35c:	c18e d03c c18e d03c c18e d03c c18e d03c     ..<...<...<...<.
d03cc36c:	c18e d03c c18e d03c c198 d03c c198 d03c     ..<...<...<...<.
d03cc37c:	c1a4 d03c c1a4 d03c c1a4 d03c c1a4 d03c     ..<...<...<...<.
d03cc38c:	c1a4 d03c c1a4 d03c c1a4 d03c c1a4 d03c     ..<...<...<...<.
d03cc39c:	c1ad d03c c1ad d03c c1ad d03c c1ad d03c     ..<...<...<...<.
d03cc3ac:	c1ad d03c c1ad d03c c1ad d03c c1ad d03c     ..<...<...<...<.
d03cc3bc:	c1b7 d03c c1c3 d03c c1cc d03c c1da d03c     ..<...<...<...<.
d03cc3cc:	c1e6 d03c c1f1 d03c c1fe d03c c208 d03c     ..<...<...<...<.
d03cc3dc:	c212 d03c c212 d03c c212 d03c c212 d03c     ..<...<...<...<.
d03cc3ec:	c212 d03c c212 d03c c212 d03c c21b d03c     ..<...<...<...<.
d03cc3fc:	c225 d03c c225 d03c c225 d03c c225 d03c     %.<.%.<.%.<.%.<.
d03cc40c:	c225 d03c c225 d03c c225 d03c c225 d03c     %.<.%.<.%.<.%.<.
d03cc41c:	c22c d03c c22c d03c c22c d03c c22c d03c     ,.<.,.<.,.<.,.<.
d03cc42c:	c22c d03c c22c d03c c22c d03c c22c d03c     ,.<.,.<.,.<.,.<.
d03cc43c:	c0d0 d03c c0d0 d03c c0d0 d03c c0d0 d03c     ..<...<...<...<.
d03cc44c:	c0d0 d03c c0d0 d03c c236 d03c c236 d03c     ..<...<.6.<.6.<.
d03cc45c:	c241 d03c c241 d03c c241 d03c c241 d03c     A.<.A.<.A.<.A.<.
d03cc46c:	c241 d03c c241 d03c c24a d03c c257 d03c     A.<.A.<.J.<.W.<.
d03cc47c:	c262 d03c                                   b.<.

d03cc480 <CSWTCH.1531>:
d03cc480:	c079 d03c c07e d03c c084 d03c c08a d03c     y.<.~.<...<...<.
d03cc490:	bba3 d03c c08f d03c                         ..<...<.

d03cc498 <CSWTCH.1533>:
d03cc498:	bffc d03c c000 d03c c005 d03c c00a d03c     ..<...<...<...<.
d03cc4a8:	c00f d03c c015 d03c c01b d03c c022 d03c     ..<...<...<.".<.
d03cc4b8:	c029 d03c c02f d03c c033 d03c c03a d03c     ).<./.<.3.<.:.<.
d03cc4c8:	c03f d03c c044 d03c c04a d03c c04e d03c     ?.<.D.<.J.<.N.<.
d03cc4d8:	c053 d03c c058 d03c c05f d03c c066 d03c     S.<.X.<._.<.f.<.
d03cc4e8:	c06d d03c c072 d03c                         m.<.r.<.

d03cc4f0 <bands.10363>:
d03cc4f0:	e0e0 e0e0 e0e0 e0e0                         ........

d03cc4f8 <keys.11011>:
d03cc4f8:	3231 3433 3635 3837 3039 5751 5245 5954     1234567890QWERTY
d03cc508:	4955 504f 5341 4644 4847 4b4a 2d4c 585a     UIOPASDFGHJKL-ZX
d03cc518:	5643 4e42 5f4d 002e                         CVBNM_..

d03cc520 <midi_default_channel_program>:
d03cc520:	2650 5153 1300 521e 8004 2650 5153 7f00     P&SQ...R..P&SQ..

d03cc530 <rows.11248>:
d03cc530:	3231 3433 3635 3837 3039 5100 4557 5452     1234567890.QWERT
d03cc540:	5559 4f49 0050 5341 4644 4847 4b4a 2d4c     YUIOP.ASDFGHJKL-
d03cc550:	5a00 4358 4256 4d4e 2e5f 0000               .ZXCVBNM_...

d03cc55c <snaps.9936>:
d03cc55c:	0804 2010                                   ... 

d03cc560 <_global_impure_ptr>:
d03cc560:	cc0c d03c                                   ..<.

d03cc564 <__sf_fake_stderr>:
	...

d03cc584 <__sf_fake_stdin>:
	...

d03cc5a4 <__sf_fake_stdout>:
	...
d03cc5c4:	2d23 2b30 0020 6c68 004c 6665 4567 4746     #-0+ .hlL.efgEFG
d03cc5d4:	3000 3231 3433 3635 3837 4139 4342 4544     .0123456789ABCDE
d03cc5e4:	0046 3130 3332 3534 3736 3938 6261 6463     F.0123456789abcd
d03cc5f4:	6665                                         ef.

Disassembly of section .init:

d03cc5f8 <_init>:
d03cc5f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03cc5fa:	bf00      	nop

Disassembly of section .fini:

d03cc5fc <_fini>:
d03cc5fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03cc5fe:	bf00      	nop
