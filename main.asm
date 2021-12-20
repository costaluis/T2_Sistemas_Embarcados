
main.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00000037          	lui	zero,0x0

00000004 <__crt0_pointer_init>:
   4:	80002117          	auipc	sp,0x80002
   8:	ff810113          	addi	sp,sp,-8 # 80001ffc <__ctr0_io_space_begin+0x800021fc>
   c:	80000197          	auipc	gp,0x80000
  10:	7f418193          	addi	gp,gp,2036 # 80000800 <__ctr0_io_space_begin+0x80000a00>

00000014 <__crt0_cpu_csr_init>:
  14:	00000517          	auipc	a0,0x0
  18:	0dc50513          	addi	a0,a0,220 # f0 <__crt0_dummy_trap_handler>
  1c:	30551073          	csrw	mtvec,a0
  20:	34151073          	csrw	mepc,a0
  24:	30001073          	csrw	mstatus,zero
  28:	30401073          	csrw	mie,zero
  2c:	30601073          	csrw	mcounteren,zero
  30:	55e9                	li	a1,-6
  32:	32059073          	csrw	mcountinhibit,a1
  36:	b0001073          	csrw	mcycle,zero
  3a:	b8001073          	csrw	mcycleh,zero
  3e:	b0201073          	csrw	minstret,zero
  42:	b8201073          	csrw	minstreth,zero

00000046 <__crt0_reg_file_clear>:
  46:	4081                	li	ra,0
  48:	4201                	li	tp,0
  4a:	4281                	li	t0,0
  4c:	4301                	li	t1,0
  4e:	4381                	li	t2,0
  50:	4701                	li	a4,0
  52:	4781                	li	a5,0
  54:	4801                	li	a6,0
  56:	4881                	li	a7,0
  58:	4901                	li	s2,0
  5a:	4981                	li	s3,0
  5c:	4a01                	li	s4,0
  5e:	4a81                	li	s5,0
  60:	4b01                	li	s6,0
  62:	4b81                	li	s7,0
  64:	4c01                	li	s8,0
  66:	4c81                	li	s9,0
  68:	4d01                	li	s10,0
  6a:	4d81                	li	s11,0
  6c:	4e01                	li	t3,0
  6e:	4e81                	li	t4,0
  70:	4f01                	li	t5,0
  72:	4f81                	li	t6,0

00000074 <__crt0_reset_io>:
  74:	00000417          	auipc	s0,0x0
  78:	d8c40413          	addi	s0,s0,-628 # fffffe00 <__ctr0_io_space_begin+0x0>
  7c:	00000497          	auipc	s1,0x0
  80:	f8448493          	addi	s1,s1,-124 # 0 <_start>

00000084 <__crt0_reset_io_loop>:
  84:	00042023          	sw	zero,0(s0)
  88:	0411                	addi	s0,s0,4
  8a:	fe941de3          	bne	s0,s1,84 <__crt0_reset_io_loop>

0000008e <__crt0_clear_bss>:
  8e:	80000597          	auipc	a1,0x80000
  92:	f7258593          	addi	a1,a1,-142 # 80000000 <__ctr0_io_space_begin+0x80000200>
  96:	87418613          	addi	a2,gp,-1932 # 80000074 <__BSS_END__>

0000009a <__crt0_clear_bss_loop>:
  9a:	00c5d663          	bge	a1,a2,a6 <__crt0_clear_bss_loop_end>
  9e:	00058023          	sb	zero,0(a1)
  a2:	0585                	addi	a1,a1,1
  a4:	bfdd                	j	9a <__crt0_clear_bss_loop>

000000a6 <__crt0_clear_bss_loop_end>:
  a6:	00002597          	auipc	a1,0x2
  aa:	c4658593          	addi	a1,a1,-954 # 1cec <__crt0_copy_data_src_begin>
  ae:	80000617          	auipc	a2,0x80000
  b2:	f5260613          	addi	a2,a2,-174 # 80000000 <__ctr0_io_space_begin+0x80000200>
  b6:	80000697          	auipc	a3,0x80000
  ba:	f4a68693          	addi	a3,a3,-182 # 80000000 <__ctr0_io_space_begin+0x80000200>

000000be <__crt0_copy_data_loop>:
  be:	00d65963          	bge	a2,a3,d0 <__crt0_copy_data_loop_end>
  c2:	00058703          	lb	a4,0(a1)
  c6:	00e60023          	sb	a4,0(a2)
  ca:	0585                	addi	a1,a1,1
  cc:	0605                	addi	a2,a2,1
  ce:	bfc5                	j	be <__crt0_copy_data_loop>

000000d0 <__crt0_copy_data_loop_end>:
  d0:	4501                	li	a0,0
  d2:	4581                	li	a1,0
  d4:	054000ef          	jal	ra,128 <main>

000000d8 <__crt0_main_aftermath>:
  d8:	34051073          	csrw	mscratch,a0
  dc:	00000093          	li	ra,0
  e0:	00008363          	beqz	ra,e6 <__crt0_main_aftermath_end>
  e4:	9082                	jalr	ra

000000e6 <__crt0_main_aftermath_end>:
  e6:	30047073          	csrci	mstatus,8

000000ea <__crt0_main_aftermath_end_loop>:
  ea:	10500073          	wfi
  ee:	bff5                	j	ea <__crt0_main_aftermath_end_loop>

000000f0 <__crt0_dummy_trap_handler>:
  f0:	1161                	addi	sp,sp,-8
  f2:	c022                	sw	s0,0(sp)
  f4:	c226                	sw	s1,4(sp)
  f6:	34202473          	csrr	s0,mcause
  fa:	02044263          	bltz	s0,11e <__crt0_dummy_trap_handler_irq>
  fe:	34102473          	csrr	s0,mepc

00000102 <__crt0_dummy_trap_handler_exc_c_check>:
 102:	00041483          	lh	s1,0(s0)
 106:	888d                	andi	s1,s1,3
 108:	0409                	addi	s0,s0,2
 10a:	34141073          	csrw	mepc,s0
 10e:	440d                	li	s0,3
 110:	00941763          	bne	s0,s1,11e <__crt0_dummy_trap_handler_irq>

00000114 <__crt0_dummy_trap_handler_exc_uncrompressed>:
 114:	34102473          	csrr	s0,mepc
 118:	0409                	addi	s0,s0,2
 11a:	34141073          	csrw	mepc,s0

0000011e <__crt0_dummy_trap_handler_irq>:
 11e:	4402                	lw	s0,0(sp)
 120:	4492                	lw	s1,4(sp)
 122:	0121                	addi	sp,sp,8
 124:	30200073          	mret

00000128 <main>:
 128:	72f9                	lui	t0,0xffffe
 12a:	7179                	addi	sp,sp,-48
 12c:	3f028293          	addi	t0,t0,1008 # ffffe3f0 <__ctr0_io_space_begin+0xffffe5f0>
 130:	d606                	sw	ra,44(sp)
 132:	d422                	sw	s0,40(sp)
 134:	d226                	sw	s1,36(sp)
 136:	d04a                	sw	s2,32(sp)
 138:	ce4e                	sw	s3,28(sp)
 13a:	cc52                	sw	s4,24(sp)
 13c:	6605                	lui	a2,0x1
 13e:	9116                	add	sp,sp,t0
 140:	6585                	lui	a1,0x1
 142:	e1060613          	addi	a2,a2,-496 # e10 <__etext+0x2a8>
 146:	b7858593          	addi	a1,a1,-1160 # b78 <__etext+0x10>
 14a:	850a                	mv	a0,sp
 14c:	0f5000ef          	jal	ra,a40 <memcpy>
 150:	29f5                	jal	64c <neorv32_rte_setup>
 152:	6515                	lui	a0,0x5
 154:	4601                	li	a2,0
 156:	4581                	li	a1,0
 158:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x2e14>
 15c:	2d91                	jal	7b0 <neorv32_uart0_setup>
 15e:	4501                	li	a0,0
 160:	2b31                	jal	67c <neorv32_rte_check_isa>
 162:	017000ef          	jal	ra,978 <neorv32_cpu_get_cycle>
 166:	6485                	lui	s1,0x1
 168:	862a                	mv	a2,a0
 16a:	b6848513          	addi	a0,s1,-1176 # b68 <__etext>
 16e:	6f6000ef          	jal	ra,864 <neorv32_uart0_printf>
 172:	7479                	lui	s0,0xffffe
 174:	6789                	lui	a5,0x2
 176:	3e040413          	addi	s0,s0,992 # ffffe3e0 <__ctr0_io_space_begin+0xffffe5e0>
 17a:	c2078793          	addi	a5,a5,-992 # 1c20 <symbols.0+0x298>
 17e:	737d                	lui	t1,0xfffff
 180:	97a2                	add	a5,a5,s0
 182:	4701                	li	a4,0
 184:	1f030313          	addi	t1,t1,496 # fffff1f0 <__ctr0_io_space_begin+0xfffff3f0>
 188:	002786b3          	add	a3,a5,sp
 18c:	03c00f13          	li	t5,60
 190:	03b00e93          	li	t4,59
 194:	6789                	lui	a5,0x2
 196:	c2078793          	addi	a5,a5,-992 # 1c20 <symbols.0+0x298>
 19a:	979a                	add	a5,a5,t1
 19c:	00278433          	add	s0,a5,sp
 1a0:	00e408b3          	add	a7,s0,a4
 1a4:	00e68833          	add	a6,a3,a4
 1a8:	4601                	li	a2,0
 1aa:	4781                	li	a5,0
 1ac:	a0a1                	j	1f4 <main+0xcc>
 1ae:	0001                	nop
 1b0:	4781                	li	a5,0
 1b2:	05d60163          	beq	a2,t4,1f4 <main+0xcc>
 1b6:	cf1d                	beqz	a4,1f4 <main+0xcc>
 1b8:	03d70e63          	beq	a4,t4,1f4 <main+0xcc>
 1bc:	85c2                	mv	a1,a6
 1be:	478d                	li	a5,3
 1c0:	4e05                	li	t3,1
 1c2:	0001                	nop
 1c4:	fc45cf83          	lbu	t6,-60(a1)
 1c8:	fc35c503          	lbu	a0,-61(a1)
 1cc:	17fd                	addi	a5,a5,-1
 1ce:	0ff7f793          	zext.b	a5,a5
 1d2:	01f57533          	and	a0,a0,t6
 1d6:	fc55cf83          	lbu	t6,-59(a1)
 1da:	03c58593          	addi	a1,a1,60
 1de:	01f57533          	and	a0,a0,t6
 1e2:	00ae7e33          	and	t3,t3,a0
 1e6:	fff9                	bnez	a5,1c4 <main+0x9c>
 1e8:	00084783          	lbu	a5,0(a6)
 1ec:	41c787b3          	sub	a5,a5,t3
 1f0:	0ff7f793          	zext.b	a5,a5
 1f4:	00f88023          	sb	a5,0(a7)
 1f8:	0605                	addi	a2,a2,1
 1fa:	03c88893          	addi	a7,a7,60
 1fe:	03c80813          	addi	a6,a6,60
 202:	fbe617e3          	bne	a2,t5,1b0 <main+0x88>
 206:	0705                	addi	a4,a4,1
 208:	f8c716e3          	bne	a4,a2,194 <main+0x6c>
 20c:	76c000ef          	jal	ra,978 <neorv32_cpu_get_cycle>
 210:	862a                	mv	a2,a0
 212:	b6848513          	addi	a0,s1,-1176
 216:	6485                	lui	s1,0x1
 218:	e1048493          	addi	s1,s1,-496 # e10 <__etext+0x2a8>
 21c:	25a1                	jal	864 <neorv32_uart0_printf>
 21e:	94a2                	add	s1,s1,s0
 220:	03c00993          	li	s3,60
 224:	6a05                	lui	s4,0x1
 226:	0001                	nop
 228:	4901                	li	s2,0
 22a:	0001                	nop
 22c:	012407b3          	add	a5,s0,s2
 230:	0007c503          	lbu	a0,0(a5)
 234:	0905                	addi	s2,s2,1
 236:	2805                	jal	266 <aux_print_hex_byte>
 238:	ff391ae3          	bne	s2,s3,22c <main+0x104>
 23c:	b74a0513          	addi	a0,s4,-1164 # b74 <__etext+0xc>
 240:	03c40413          	addi	s0,s0,60
 244:	23f5                	jal	830 <neorv32_uart0_print>
 246:	fe9411e3          	bne	s0,s1,228 <main+0x100>
 24a:	6289                	lui	t0,0x2
 24c:	c1028293          	addi	t0,t0,-1008 # 1c10 <symbols.0+0x288>
 250:	9116                	add	sp,sp,t0
 252:	50b2                	lw	ra,44(sp)
 254:	5422                	lw	s0,40(sp)
 256:	5492                	lw	s1,36(sp)
 258:	5902                	lw	s2,32(sp)
 25a:	49f2                	lw	s3,28(sp)
 25c:	4a62                	lw	s4,24(sp)
 25e:	4501                	li	a0,0
 260:	6145                	addi	sp,sp,48
 262:	8082                	ret
 264:	0000                	unimp

00000266 <aux_print_hex_byte>:
 266:	6789                	lui	a5,0x2
 268:	893d                	andi	a0,a0,15
 26a:	98878793          	addi	a5,a5,-1656 # 1988 <symbols.0>
 26e:	97aa                	add	a5,a5,a0
 270:	0007c503          	lbu	a0,0(a5)
 274:	a365                	j	81c <neorv32_uart0_putc>
 276:	0000                	unimp

00000278 <__neorv32_rte_core>:
 278:	7139                	addi	sp,sp,-64
 27a:	de06                	sw	ra,60(sp)
 27c:	dc16                	sw	t0,56(sp)
 27e:	da1a                	sw	t1,52(sp)
 280:	d81e                	sw	t2,48(sp)
 282:	d62a                	sw	a0,44(sp)
 284:	d42e                	sw	a1,40(sp)
 286:	d232                	sw	a2,36(sp)
 288:	d036                	sw	a3,32(sp)
 28a:	ce3a                	sw	a4,28(sp)
 28c:	cc3e                	sw	a5,24(sp)
 28e:	ca42                	sw	a6,20(sp)
 290:	c846                	sw	a7,16(sp)
 292:	c672                	sw	t3,12(sp)
 294:	c476                	sw	t4,8(sp)
 296:	c27a                	sw	t5,4(sp)
 298:	c07e                	sw	t6,0(sp)
 29a:	34102773          	csrr	a4,mepc
 29e:	34071073          	csrw	mscratch,a4
 2a2:	342027f3          	csrr	a5,mcause
 2a6:	0207cf63          	bltz	a5,2e4 <__neorv32_rte_core+0x6c>
 2aa:	00071683          	lh	a3,0(a4)
 2ae:	458d                	li	a1,3
 2b0:	8a8d                	andi	a3,a3,3
 2b2:	00270613          	addi	a2,a4,2
 2b6:	00b69563          	bne	a3,a1,2c0 <__neorv32_rte_core+0x48>
 2ba:	00470613          	addi	a2,a4,4
 2be:	0001                	nop
 2c0:	34161073          	csrw	mepc,a2
 2c4:	472d                	li	a4,11
 2c6:	00f77763          	bgeu	a4,a5,2d4 <__neorv32_rte_core+0x5c>
 2ca:	0001                	nop
 2cc:	4c800793          	li	a5,1224
 2d0:	a835                	j	30c <__neorv32_rte_core+0x94>
 2d2:	0001                	nop
 2d4:	6709                	lui	a4,0x2
 2d6:	078a                	slli	a5,a5,0x2
 2d8:	99c70713          	addi	a4,a4,-1636 # 199c <symbols.0+0x14>
 2dc:	97ba                	add	a5,a5,a4
 2de:	439c                	lw	a5,0(a5)
 2e0:	8782                	jr	a5
 2e2:	0001                	nop
 2e4:	80000737          	lui	a4,0x80000
 2e8:	ffd74713          	xori	a4,a4,-3
 2ec:	97ba                	add	a5,a5,a4
 2ee:	4771                	li	a4,28
 2f0:	fcf76ee3          	bltu	a4,a5,2cc <__neorv32_rte_core+0x54>
 2f4:	6709                	lui	a4,0x2
 2f6:	078a                	slli	a5,a5,0x2
 2f8:	9cc70713          	addi	a4,a4,-1588 # 19cc <symbols.0+0x44>
 2fc:	97ba                	add	a5,a5,a4
 2fe:	439c                	lw	a5,0(a5)
 300:	8782                	jr	a5
 302:	0001                	nop
 304:	800007b7          	lui	a5,0x80000
 308:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 30c:	9782                	jalr	a5
 30e:	50f2                	lw	ra,60(sp)
 310:	52e2                	lw	t0,56(sp)
 312:	5352                	lw	t1,52(sp)
 314:	53c2                	lw	t2,48(sp)
 316:	5532                	lw	a0,44(sp)
 318:	55a2                	lw	a1,40(sp)
 31a:	5612                	lw	a2,36(sp)
 31c:	5682                	lw	a3,32(sp)
 31e:	4772                	lw	a4,28(sp)
 320:	47e2                	lw	a5,24(sp)
 322:	4852                	lw	a6,20(sp)
 324:	48c2                	lw	a7,16(sp)
 326:	4e32                	lw	t3,12(sp)
 328:	4ea2                	lw	t4,8(sp)
 32a:	4f12                	lw	t5,4(sp)
 32c:	4f82                	lw	t6,0(sp)
 32e:	6121                	addi	sp,sp,64
 330:	30200073          	mret
 334:	800007b7          	lui	a5,0x80000
 338:	00078793          	mv	a5,a5
 33c:	43dc                	lw	a5,4(a5)
 33e:	b7f9                	j	30c <__neorv32_rte_core+0x94>
 340:	800007b7          	lui	a5,0x80000
 344:	00078793          	mv	a5,a5
 348:	479c                	lw	a5,8(a5)
 34a:	b7c9                	j	30c <__neorv32_rte_core+0x94>
 34c:	800007b7          	lui	a5,0x80000
 350:	00078793          	mv	a5,a5
 354:	47dc                	lw	a5,12(a5)
 356:	bf5d                	j	30c <__neorv32_rte_core+0x94>
 358:	800007b7          	lui	a5,0x80000
 35c:	00078793          	mv	a5,a5
 360:	4b9c                	lw	a5,16(a5)
 362:	b76d                	j	30c <__neorv32_rte_core+0x94>
 364:	800007b7          	lui	a5,0x80000
 368:	00078793          	mv	a5,a5
 36c:	4bdc                	lw	a5,20(a5)
 36e:	bf79                	j	30c <__neorv32_rte_core+0x94>
 370:	800007b7          	lui	a5,0x80000
 374:	00078793          	mv	a5,a5
 378:	4f9c                	lw	a5,24(a5)
 37a:	bf49                	j	30c <__neorv32_rte_core+0x94>
 37c:	800007b7          	lui	a5,0x80000
 380:	00078793          	mv	a5,a5
 384:	4fdc                	lw	a5,28(a5)
 386:	b759                	j	30c <__neorv32_rte_core+0x94>
 388:	800007b7          	lui	a5,0x80000
 38c:	00078793          	mv	a5,a5
 390:	539c                	lw	a5,32(a5)
 392:	bfad                	j	30c <__neorv32_rte_core+0x94>
 394:	800007b7          	lui	a5,0x80000
 398:	00078793          	mv	a5,a5
 39c:	53dc                	lw	a5,36(a5)
 39e:	b7bd                	j	30c <__neorv32_rte_core+0x94>
 3a0:	800007b7          	lui	a5,0x80000
 3a4:	00078793          	mv	a5,a5
 3a8:	579c                	lw	a5,40(a5)
 3aa:	b78d                	j	30c <__neorv32_rte_core+0x94>
 3ac:	800007b7          	lui	a5,0x80000
 3b0:	00078793          	mv	a5,a5
 3b4:	57dc                	lw	a5,44(a5)
 3b6:	bf99                	j	30c <__neorv32_rte_core+0x94>
 3b8:	800007b7          	lui	a5,0x80000
 3bc:	00078793          	mv	a5,a5
 3c0:	5b9c                	lw	a5,48(a5)
 3c2:	b7a9                	j	30c <__neorv32_rte_core+0x94>
 3c4:	800007b7          	lui	a5,0x80000
 3c8:	00078793          	mv	a5,a5
 3cc:	5bdc                	lw	a5,52(a5)
 3ce:	bf3d                	j	30c <__neorv32_rte_core+0x94>
 3d0:	800007b7          	lui	a5,0x80000
 3d4:	00078793          	mv	a5,a5
 3d8:	5f9c                	lw	a5,56(a5)
 3da:	bf0d                	j	30c <__neorv32_rte_core+0x94>
 3dc:	800007b7          	lui	a5,0x80000
 3e0:	00078793          	mv	a5,a5
 3e4:	5fdc                	lw	a5,60(a5)
 3e6:	b71d                	j	30c <__neorv32_rte_core+0x94>
 3e8:	800007b7          	lui	a5,0x80000
 3ec:	00078793          	mv	a5,a5
 3f0:	43bc                	lw	a5,64(a5)
 3f2:	bf29                	j	30c <__neorv32_rte_core+0x94>
 3f4:	800007b7          	lui	a5,0x80000
 3f8:	00078793          	mv	a5,a5
 3fc:	43fc                	lw	a5,68(a5)
 3fe:	b739                	j	30c <__neorv32_rte_core+0x94>
 400:	800007b7          	lui	a5,0x80000
 404:	00078793          	mv	a5,a5
 408:	47bc                	lw	a5,72(a5)
 40a:	b709                	j	30c <__neorv32_rte_core+0x94>
 40c:	800007b7          	lui	a5,0x80000
 410:	00078793          	mv	a5,a5
 414:	47fc                	lw	a5,76(a5)
 416:	bddd                	j	30c <__neorv32_rte_core+0x94>
 418:	800007b7          	lui	a5,0x80000
 41c:	00078793          	mv	a5,a5
 420:	4bbc                	lw	a5,80(a5)
 422:	b5ed                	j	30c <__neorv32_rte_core+0x94>
 424:	800007b7          	lui	a5,0x80000
 428:	00078793          	mv	a5,a5
 42c:	4bfc                	lw	a5,84(a5)
 42e:	bdf9                	j	30c <__neorv32_rte_core+0x94>
 430:	800007b7          	lui	a5,0x80000
 434:	00078793          	mv	a5,a5
 438:	4fbc                	lw	a5,88(a5)
 43a:	bdc9                	j	30c <__neorv32_rte_core+0x94>
 43c:	800007b7          	lui	a5,0x80000
 440:	00078793          	mv	a5,a5
 444:	4ffc                	lw	a5,92(a5)
 446:	b5d9                	j	30c <__neorv32_rte_core+0x94>
 448:	800007b7          	lui	a5,0x80000
 44c:	00078793          	mv	a5,a5
 450:	53bc                	lw	a5,96(a5)
 452:	bd6d                	j	30c <__neorv32_rte_core+0x94>
 454:	800007b7          	lui	a5,0x80000
 458:	00078793          	mv	a5,a5
 45c:	53fc                	lw	a5,100(a5)
 45e:	b57d                	j	30c <__neorv32_rte_core+0x94>
 460:	800007b7          	lui	a5,0x80000
 464:	00078793          	mv	a5,a5
 468:	57bc                	lw	a5,104(a5)
 46a:	b54d                	j	30c <__neorv32_rte_core+0x94>
 46c:	800007b7          	lui	a5,0x80000
 470:	00078793          	mv	a5,a5
 474:	57fc                	lw	a5,108(a5)
 476:	bd59                	j	30c <__neorv32_rte_core+0x94>
 478:	800007b7          	lui	a5,0x80000
 47c:	00078793          	mv	a5,a5
 480:	5bbc                	lw	a5,112(a5)
 482:	b569                	j	30c <__neorv32_rte_core+0x94>

00000484 <__neorv32_rte_print_hex_word>:
 484:	1101                	addi	sp,sp,-32
 486:	c84a                	sw	s2,16(sp)
 488:	892a                	mv	s2,a0
 48a:	6509                	lui	a0,0x2
 48c:	ca26                	sw	s1,20(sp)
 48e:	a4050513          	addi	a0,a0,-1472 # 1a40 <symbols.0+0xb8>
 492:	6489                	lui	s1,0x2
 494:	cc22                	sw	s0,24(sp)
 496:	c64e                	sw	s3,12(sp)
 498:	ce06                	sw	ra,28(sp)
 49a:	4471                	li	s0,28
 49c:	2e51                	jal	830 <neorv32_uart0_print>
 49e:	cbc48493          	addi	s1,s1,-836 # 1cbc <hex_symbols.0>
 4a2:	59f1                	li	s3,-4
 4a4:	008957b3          	srl	a5,s2,s0
 4a8:	8bbd                	andi	a5,a5,15
 4aa:	97a6                	add	a5,a5,s1
 4ac:	0007c503          	lbu	a0,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 4b0:	1471                	addi	s0,s0,-4
 4b2:	26ad                	jal	81c <neorv32_uart0_putc>
 4b4:	ff3418e3          	bne	s0,s3,4a4 <__neorv32_rte_print_hex_word+0x20>
 4b8:	40f2                	lw	ra,28(sp)
 4ba:	4462                	lw	s0,24(sp)
 4bc:	44d2                	lw	s1,20(sp)
 4be:	4942                	lw	s2,16(sp)
 4c0:	49b2                	lw	s3,12(sp)
 4c2:	6105                	addi	sp,sp,32
 4c4:	8082                	ret
 4c6:	0000                	unimp

000004c8 <__neorv32_rte_debug_exc_handler>:
 4c8:	1141                	addi	sp,sp,-16
 4ca:	c606                	sw	ra,12(sp)
 4cc:	c422                	sw	s0,8(sp)
 4ce:	c226                	sw	s1,4(sp)
 4d0:	2cd1                	jal	7a4 <neorv32_uart0_available>
 4d2:	14050563          	beqz	a0,61c <__neorv32_rte_debug_exc_handler+0x154>
 4d6:	6509                	lui	a0,0x2
 4d8:	a4450513          	addi	a0,a0,-1468 # 1a44 <symbols.0+0xbc>
 4dc:	2e91                	jal	830 <neorv32_uart0_print>
 4de:	34202473          	csrr	s0,mcause
 4e2:	4725                	li	a4,9
 4e4:	00f47793          	andi	a5,s0,15
 4e8:	03078493          	addi	s1,a5,48
 4ec:	00f77463          	bgeu	a4,a5,4f4 <__neorv32_rte_debug_exc_handler+0x2c>
 4f0:	05778493          	addi	s1,a5,87
 4f4:	47ad                	li	a5,11
 4f6:	0087eb63          	bltu	a5,s0,50c <__neorv32_rte_debug_exc_handler+0x44>
 4fa:	6709                	lui	a4,0x2
 4fc:	00241793          	slli	a5,s0,0x2
 500:	c0470713          	addi	a4,a4,-1020 # 1c04 <symbols.0+0x27c>
 504:	97ba                	add	a5,a5,a4
 506:	439c                	lw	a5,0(a5)
 508:	8782                	jr	a5
 50a:	0001                	nop
 50c:	800007b7          	lui	a5,0x80000
 510:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 514:	0ee40863          	beq	s0,a4,604 <__neorv32_rte_debug_exc_handler+0x13c>
 518:	02876263          	bltu	a4,s0,53c <__neorv32_rte_debug_exc_handler+0x74>
 51c:	00378713          	addi	a4,a5,3
 520:	0ce40a63          	beq	s0,a4,5f4 <__neorv32_rte_debug_exc_handler+0x12c>
 524:	079d                	addi	a5,a5,7
 526:	0cf40b63          	beq	s0,a5,5fc <__neorv32_rte_debug_exc_handler+0x134>
 52a:	0001                	nop
 52c:	6509                	lui	a0,0x2
 52e:	ba450513          	addi	a0,a0,-1116 # 1ba4 <symbols.0+0x21c>
 532:	2cfd                	jal	830 <neorv32_uart0_print>
 534:	8522                	mv	a0,s0
 536:	37b9                	jal	484 <__neorv32_rte_print_hex_word>
 538:	a831                	j	554 <__neorv32_rte_debug_exc_handler+0x8c>
 53a:	0001                	nop
 53c:	ff07c793          	xori	a5,a5,-16
 540:	97a2                	add	a5,a5,s0
 542:	473d                	li	a4,15
 544:	fef764e3          	bltu	a4,a5,52c <__neorv32_rte_debug_exc_handler+0x64>
 548:	6509                	lui	a0,0x2
 54a:	b9450513          	addi	a0,a0,-1132 # 1b94 <symbols.0+0x20c>
 54e:	24cd                	jal	830 <neorv32_uart0_print>
 550:	8526                	mv	a0,s1
 552:	24e9                	jal	81c <neorv32_uart0_putc>
 554:	9875                	andi	s0,s0,-3
 556:	4795                	li	a5,5
 558:	04f40463          	beq	s0,a5,5a0 <__neorv32_rte_debug_exc_handler+0xd8>
 55c:	6509                	lui	a0,0x2
 55e:	be850513          	addi	a0,a0,-1048 # 1be8 <symbols.0+0x260>
 562:	24f9                	jal	830 <neorv32_uart0_print>
 564:	34002573          	csrr	a0,mscratch
 568:	3f31                	jal	484 <__neorv32_rte_print_hex_word>
 56a:	6509                	lui	a0,0x2
 56c:	bf050513          	addi	a0,a0,-1040 # 1bf0 <symbols.0+0x268>
 570:	24c1                	jal	830 <neorv32_uart0_print>
 572:	34302573          	csrr	a0,mtval
 576:	3739                	jal	484 <__neorv32_rte_print_hex_word>
 578:	4422                	lw	s0,8(sp)
 57a:	40b2                	lw	ra,12(sp)
 57c:	4492                	lw	s1,4(sp)
 57e:	6509                	lui	a0,0x2
 580:	bfc50513          	addi	a0,a0,-1028 # 1bfc <symbols.0+0x274>
 584:	0141                	addi	sp,sp,16
 586:	a46d                	j	830 <neorv32_uart0_print>
 588:	6509                	lui	a0,0x2
 58a:	a4c50513          	addi	a0,a0,-1460 # 1a4c <symbols.0+0xc4>
 58e:	0001                	nop
 590:	2445                	jal	830 <neorv32_uart0_print>
 592:	b7e9                	j	55c <__neorv32_rte_debug_exc_handler+0x94>
 594:	6509                	lui	a0,0x2
 596:	a6c50513          	addi	a0,a0,-1428 # 1a6c <symbols.0+0xe4>
 59a:	0001                	nop
 59c:	2c51                	jal	830 <neorv32_uart0_print>
 59e:	0001                	nop
 5a0:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 5a4:	0607d863          	bgez	a5,614 <__neorv32_rte_debug_exc_handler+0x14c>
 5a8:	8b85                	andi	a5,a5,1
 5aa:	c3ad                	beqz	a5,60c <__neorv32_rte_debug_exc_handler+0x144>
 5ac:	6509                	lui	a0,0x2
 5ae:	bbc50513          	addi	a0,a0,-1092 # 1bbc <symbols.0+0x234>
 5b2:	bff9                	j	590 <__neorv32_rte_debug_exc_handler+0xc8>
 5b4:	6509                	lui	a0,0x2
 5b6:	a8850513          	addi	a0,a0,-1400 # 1a88 <symbols.0+0x100>
 5ba:	bfd9                	j	590 <__neorv32_rte_debug_exc_handler+0xc8>
 5bc:	6509                	lui	a0,0x2
 5be:	a9c50513          	addi	a0,a0,-1380 # 1a9c <symbols.0+0x114>
 5c2:	b7f9                	j	590 <__neorv32_rte_debug_exc_handler+0xc8>
 5c4:	6509                	lui	a0,0x2
 5c6:	aa850513          	addi	a0,a0,-1368 # 1aa8 <symbols.0+0x120>
 5ca:	b7d9                	j	590 <__neorv32_rte_debug_exc_handler+0xc8>
 5cc:	6509                	lui	a0,0x2
 5ce:	ac050513          	addi	a0,a0,-1344 # 1ac0 <symbols.0+0x138>
 5d2:	b7e9                	j	59c <__neorv32_rte_debug_exc_handler+0xd4>
 5d4:	6509                	lui	a0,0x2
 5d6:	ad450513          	addi	a0,a0,-1324 # 1ad4 <symbols.0+0x14c>
 5da:	bf5d                	j	590 <__neorv32_rte_debug_exc_handler+0xc8>
 5dc:	6509                	lui	a0,0x2
 5de:	af050513          	addi	a0,a0,-1296 # 1af0 <symbols.0+0x168>
 5e2:	bf6d                	j	59c <__neorv32_rte_debug_exc_handler+0xd4>
 5e4:	6509                	lui	a0,0x2
 5e6:	b0450513          	addi	a0,a0,-1276 # 1b04 <symbols.0+0x17c>
 5ea:	b75d                	j	590 <__neorv32_rte_debug_exc_handler+0xc8>
 5ec:	6509                	lui	a0,0x2
 5ee:	b2450513          	addi	a0,a0,-1244 # 1b24 <symbols.0+0x19c>
 5f2:	bf79                	j	590 <__neorv32_rte_debug_exc_handler+0xc8>
 5f4:	6509                	lui	a0,0x2
 5f6:	b4450513          	addi	a0,a0,-1212 # 1b44 <symbols.0+0x1bc>
 5fa:	bf59                	j	590 <__neorv32_rte_debug_exc_handler+0xc8>
 5fc:	6509                	lui	a0,0x2
 5fe:	b6050513          	addi	a0,a0,-1184 # 1b60 <symbols.0+0x1d8>
 602:	b779                	j	590 <__neorv32_rte_debug_exc_handler+0xc8>
 604:	6509                	lui	a0,0x2
 606:	b7850513          	addi	a0,a0,-1160 # 1b78 <symbols.0+0x1f0>
 60a:	b759                	j	590 <__neorv32_rte_debug_exc_handler+0xc8>
 60c:	6509                	lui	a0,0x2
 60e:	bcc50513          	addi	a0,a0,-1076 # 1bcc <symbols.0+0x244>
 612:	bfbd                	j	590 <__neorv32_rte_debug_exc_handler+0xc8>
 614:	6509                	lui	a0,0x2
 616:	bdc50513          	addi	a0,a0,-1060 # 1bdc <symbols.0+0x254>
 61a:	bf9d                	j	590 <__neorv32_rte_debug_exc_handler+0xc8>
 61c:	40b2                	lw	ra,12(sp)
 61e:	4422                	lw	s0,8(sp)
 620:	4492                	lw	s1,4(sp)
 622:	0141                	addi	sp,sp,16
 624:	8082                	ret
 626:	0000                	unimp

00000628 <neorv32_rte_exception_uninstall>:
 628:	47fd                	li	a5,31
 62a:	00a7ed63          	bltu	a5,a0,644 <neorv32_rte_exception_uninstall+0x1c>
 62e:	800007b7          	lui	a5,0x80000
 632:	050a                	slli	a0,a0,0x2
 634:	00078793          	mv	a5,a5
 638:	97aa                	add	a5,a5,a0
 63a:	4c800713          	li	a4,1224
 63e:	c398                	sw	a4,0(a5)
 640:	4501                	li	a0,0
 642:	8082                	ret
 644:	4505                	li	a0,1
 646:	8082                	ret
 648:	0000                	unimp
 64a:	0000                	unimp

0000064c <neorv32_rte_setup>:
 64c:	1141                	addi	sp,sp,-16
 64e:	c606                	sw	ra,12(sp)
 650:	c422                	sw	s0,8(sp)
 652:	c226                	sw	s1,4(sp)
 654:	27800793          	li	a5,632
 658:	30579073          	csrw	mtvec,a5
 65c:	4401                	li	s0,0
 65e:	44f5                	li	s1,29
 660:	8522                	mv	a0,s0
 662:	0405                	addi	s0,s0,1
 664:	0ff47413          	zext.b	s0,s0
 668:	37c1                	jal	628 <neorv32_rte_exception_uninstall>
 66a:	fe941be3          	bne	s0,s1,660 <neorv32_rte_setup+0x14>
 66e:	40b2                	lw	ra,12(sp)
 670:	4422                	lw	s0,8(sp)
 672:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 676:	4492                	lw	s1,4(sp)
 678:	0141                	addi	sp,sp,16
 67a:	8082                	ret

0000067c <neorv32_rte_check_isa>:
 67c:	30102673          	csrr	a2,misa
 680:	400005b7          	lui	a1,0x40000
 684:	10458593          	addi	a1,a1,260 # 40000104 <__crt0_copy_data_src_begin+0x3fffe418>
 688:	00b677b3          	and	a5,a2,a1
 68c:	02b78863          	beq	a5,a1,6bc <neorv32_rte_check_isa+0x40>
 690:	c501                	beqz	a0,698 <neorv32_rte_check_isa+0x1c>
 692:	4505                	li	a0,1
 694:	8082                	ret
 696:	0001                	nop
 698:	1101                	addi	sp,sp,-32
 69a:	c632                	sw	a2,12(sp)
 69c:	ce06                	sw	ra,28(sp)
 69e:	2219                	jal	7a4 <neorv32_uart0_available>
 6a0:	400007b7          	lui	a5,0x40000
 6a4:	4632                	lw	a2,12(sp)
 6a6:	10478593          	addi	a1,a5,260 # 40000104 <__crt0_copy_data_src_begin+0x3fffe418>
 6aa:	c509                	beqz	a0,6b4 <neorv32_rte_check_isa+0x38>
 6ac:	6509                	lui	a0,0x2
 6ae:	c3450513          	addi	a0,a0,-972 # 1c34 <symbols.0+0x2ac>
 6b2:	2a4d                	jal	864 <neorv32_uart0_printf>
 6b4:	40f2                	lw	ra,28(sp)
 6b6:	4505                	li	a0,1
 6b8:	6105                	addi	sp,sp,32
 6ba:	8082                	ret
 6bc:	4501                	li	a0,0
 6be:	8082                	ret
 6c0:	0000                	unimp
 6c2:	0000                	unimp

000006c4 <__neorv32_uart_itoa>:
 6c4:	7179                	addi	sp,sp,-48
 6c6:	d422                	sw	s0,40(sp)
 6c8:	d226                	sw	s1,36(sp)
 6ca:	d04a                	sw	s2,32(sp)
 6cc:	ce4e                	sw	s3,28(sp)
 6ce:	cc52                	sw	s4,24(sp)
 6d0:	d606                	sw	ra,44(sp)
 6d2:	ca56                	sw	s5,20(sp)
 6d4:	6a09                	lui	s4,0x2
 6d6:	84aa                	mv	s1,a0
 6d8:	842e                	mv	s0,a1
 6da:	00058523          	sb	zero,10(a1)
 6de:	4981                	li	s3,0
 6e0:	00410913          	addi	s2,sp,4
 6e4:	ccca0a13          	addi	s4,s4,-820 # 1ccc <numbers.1>
 6e8:	45a9                	li	a1,10
 6ea:	8526                	mv	a0,s1
 6ec:	2cc5                	jal	9dc <__umodsi3>
 6ee:	9552                	add	a0,a0,s4
 6f0:	00054783          	lbu	a5,0(a0)
 6f4:	01390ab3          	add	s5,s2,s3
 6f8:	8526                	mv	a0,s1
 6fa:	00fa8023          	sb	a5,0(s5)
 6fe:	45a9                	li	a1,10
 700:	2c51                	jal	994 <__udivsi3>
 702:	0985                	addi	s3,s3,1
 704:	47a9                	li	a5,10
 706:	84aa                	mv	s1,a0
 708:	fef990e3          	bne	s3,a5,6e8 <__neorv32_uart_itoa+0x24>
 70c:	86ca                	mv	a3,s2
 70e:	4725                	li	a4,9
 710:	03000613          	li	a2,48
 714:	0096c583          	lbu	a1,9(a3)
 718:	87ba                	mv	a5,a4
 71a:	177d                	addi	a4,a4,-1
 71c:	0742                	slli	a4,a4,0x10
 71e:	8341                	srli	a4,a4,0x10
 720:	00c59863          	bne	a1,a2,730 <__neorv32_uart_itoa+0x6c>
 724:	000684a3          	sb	zero,9(a3)
 728:	16fd                	addi	a3,a3,-1
 72a:	f76d                	bnez	a4,714 <__neorv32_uart_itoa+0x50>
 72c:	4781                	li	a5,0
 72e:	0001                	nop
 730:	97ca                	add	a5,a5,s2
 732:	4701                	li	a4,0
 734:	0007c683          	lbu	a3,0(a5)
 738:	ca91                	beqz	a3,74c <__neorv32_uart_itoa+0x88>
 73a:	00170613          	addi	a2,a4,1
 73e:	9722                	add	a4,a4,s0
 740:	00d70023          	sb	a3,0(a4)
 744:	01061713          	slli	a4,a2,0x10
 748:	8341                	srli	a4,a4,0x10
 74a:	0001                	nop
 74c:	fff78693          	addi	a3,a5,-1
 750:	00f91e63          	bne	s2,a5,76c <__neorv32_uart_itoa+0xa8>
 754:	943a                	add	s0,s0,a4
 756:	00040023          	sb	zero,0(s0)
 75a:	50b2                	lw	ra,44(sp)
 75c:	5422                	lw	s0,40(sp)
 75e:	5492                	lw	s1,36(sp)
 760:	5902                	lw	s2,32(sp)
 762:	49f2                	lw	s3,28(sp)
 764:	4a62                	lw	s4,24(sp)
 766:	4ad2                	lw	s5,20(sp)
 768:	6145                	addi	sp,sp,48
 76a:	8082                	ret
 76c:	87b6                	mv	a5,a3
 76e:	b7d9                	j	734 <__neorv32_uart_itoa+0x70>
 770:	0000                	unimp
 772:	0000                	unimp

00000774 <__neorv32_uart_tohex>:
 774:	6609                	lui	a2,0x2
 776:	00758693          	addi	a3,a1,7
 77a:	4701                	li	a4,0
 77c:	cd860613          	addi	a2,a2,-808 # 1cd8 <symbols.0>
 780:	02000813          	li	a6,32
 784:	00e557b3          	srl	a5,a0,a4
 788:	8bbd                	andi	a5,a5,15
 78a:	97b2                	add	a5,a5,a2
 78c:	0007c783          	lbu	a5,0(a5)
 790:	0711                	addi	a4,a4,4
 792:	16fd                	addi	a3,a3,-1
 794:	00f680a3          	sb	a5,1(a3)
 798:	ff0716e3          	bne	a4,a6,784 <__neorv32_uart_tohex+0x10>
 79c:	00058423          	sb	zero,8(a1)
 7a0:	8082                	ret
 7a2:	0000                	unimp

000007a4 <neorv32_uart0_available>:
 7a4:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 7a8:	8149                	srli	a0,a0,0x12
 7aa:	8905                	andi	a0,a0,1
 7ac:	8082                	ret
 7ae:	0000                	unimp

000007b0 <neorv32_uart0_setup>:
 7b0:	1141                	addi	sp,sp,-16
 7b2:	c422                	sw	s0,8(sp)
 7b4:	c226                	sw	s1,4(sp)
 7b6:	c606                	sw	ra,12(sp)
 7b8:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 7bc:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 7c0:	842e                	mv	s0,a1
 7c2:	00151593          	slli	a1,a0,0x1
 7c6:	853e                	mv	a0,a5
 7c8:	84b2                	mv	s1,a2
 7ca:	22e9                	jal	994 <__udivsi3>
 7cc:	0542                	slli	a0,a0,0x10
 7ce:	6785                	lui	a5,0x1
 7d0:	8141                	srli	a0,a0,0x10
 7d2:	4701                	li	a4,0
 7d4:	17f9                	addi	a5,a5,-2
 7d6:	0001                	nop
 7d8:	02a7e663          	bltu	a5,a0,804 <neorv32_uart0_setup+0x54>
 7dc:	888d                	andi	s1,s1,3
 7de:	04d2                	slli	s1,s1,0x14
 7e0:	880d                	andi	s0,s0,3
 7e2:	fff50793          	addi	a5,a0,-1
 7e6:	8fc5                	or	a5,a5,s1
 7e8:	045a                	slli	s0,s0,0x16
 7ea:	8fc1                	or	a5,a5,s0
 7ec:	0762                	slli	a4,a4,0x18
 7ee:	40b2                	lw	ra,12(sp)
 7f0:	4422                	lw	s0,8(sp)
 7f2:	8fd9                	or	a5,a5,a4
 7f4:	10001737          	lui	a4,0x10001
 7f8:	8fd9                	or	a5,a5,a4
 7fa:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 7fe:	4492                	lw	s1,4(sp)
 800:	0141                	addi	sp,sp,16
 802:	8082                	ret
 804:	ffe70693          	addi	a3,a4,-2 # 10000ffe <__crt0_copy_data_src_begin+0xffff312>
 808:	0fd6f693          	andi	a3,a3,253
 80c:	e691                	bnez	a3,818 <neorv32_uart0_setup+0x68>
 80e:	810d                	srli	a0,a0,0x3
 810:	0705                	addi	a4,a4,1
 812:	0ff77713          	zext.b	a4,a4
 816:	b7c9                	j	7d8 <neorv32_uart0_setup+0x28>
 818:	8105                	srli	a0,a0,0x1
 81a:	bfdd                	j	810 <neorv32_uart0_setup+0x60>

0000081c <neorv32_uart0_putc>:
 81c:	000406b7          	lui	a3,0x40
 820:	fa000713          	li	a4,-96
 824:	431c                	lw	a5,0(a4)
 826:	8ff5                	and	a5,a5,a3
 828:	ffe5                	bnez	a5,820 <neorv32_uart0_putc+0x4>
 82a:	c348                	sw	a0,4(a4)
 82c:	8082                	ret
 82e:	0000                	unimp

00000830 <neorv32_uart0_print>:
 830:	1141                	addi	sp,sp,-16
 832:	c422                	sw	s0,8(sp)
 834:	c04a                	sw	s2,0(sp)
 836:	c606                	sw	ra,12(sp)
 838:	c226                	sw	s1,4(sp)
 83a:	842a                	mv	s0,a0
 83c:	4929                	li	s2,10
 83e:	0001                	nop
 840:	00044483          	lbu	s1,0(s0)
 844:	0405                	addi	s0,s0,1
 846:	e499                	bnez	s1,854 <neorv32_uart0_print+0x24>
 848:	40b2                	lw	ra,12(sp)
 84a:	4422                	lw	s0,8(sp)
 84c:	4492                	lw	s1,4(sp)
 84e:	4902                	lw	s2,0(sp)
 850:	0141                	addi	sp,sp,16
 852:	8082                	ret
 854:	01249463          	bne	s1,s2,85c <neorv32_uart0_print+0x2c>
 858:	4535                	li	a0,13
 85a:	37c9                	jal	81c <neorv32_uart0_putc>
 85c:	8526                	mv	a0,s1
 85e:	3f7d                	jal	81c <neorv32_uart0_putc>
 860:	b7c5                	j	840 <neorv32_uart0_print+0x10>
 862:	0000                	unimp

00000864 <neorv32_uart0_printf>:
 864:	711d                	addi	sp,sp,-96
 866:	cabe                	sw	a5,84(sp)
 868:	00dc                	addi	a5,sp,68
 86a:	dc22                	sw	s0,56(sp)
 86c:	d84a                	sw	s2,48(sp)
 86e:	d452                	sw	s4,40(sp)
 870:	d256                	sw	s5,36(sp)
 872:	d05a                	sw	s6,32(sp)
 874:	ce5e                	sw	s7,28(sp)
 876:	cc62                	sw	s8,24(sp)
 878:	ca66                	sw	s9,20(sp)
 87a:	de06                	sw	ra,60(sp)
 87c:	da26                	sw	s1,52(sp)
 87e:	d64e                	sw	s3,44(sp)
 880:	842a                	mv	s0,a0
 882:	c2ae                	sw	a1,68(sp)
 884:	c4b2                	sw	a2,72(sp)
 886:	c6b6                	sw	a3,76(sp)
 888:	c8ba                	sw	a4,80(sp)
 88a:	ccc2                	sw	a6,88(sp)
 88c:	cec6                	sw	a7,92(sp)
 88e:	c03e                	sw	a5,0(sp)
 890:	02500a13          	li	s4,37
 894:	4aa9                	li	s5,10
 896:	07300913          	li	s2,115
 89a:	07500b13          	li	s6,117
 89e:	07800b93          	li	s7,120
 8a2:	06300c13          	li	s8,99
 8a6:	06900c93          	li	s9,105
 8aa:	0001                	nop
 8ac:	00044483          	lbu	s1,0(s0)
 8b0:	ec91                	bnez	s1,8cc <neorv32_uart0_printf+0x68>
 8b2:	50f2                	lw	ra,60(sp)
 8b4:	5462                	lw	s0,56(sp)
 8b6:	54d2                	lw	s1,52(sp)
 8b8:	5942                	lw	s2,48(sp)
 8ba:	59b2                	lw	s3,44(sp)
 8bc:	5a22                	lw	s4,40(sp)
 8be:	5a92                	lw	s5,36(sp)
 8c0:	5b02                	lw	s6,32(sp)
 8c2:	4bf2                	lw	s7,28(sp)
 8c4:	4c62                	lw	s8,24(sp)
 8c6:	4cd2                	lw	s9,20(sp)
 8c8:	6125                	addi	sp,sp,96
 8ca:	8082                	ret
 8cc:	09449c63          	bne	s1,s4,964 <neorv32_uart0_printf+0x100>
 8d0:	00240993          	addi	s3,s0,2
 8d4:	00144403          	lbu	s0,1(s0)
 8d8:	03240a63          	beq	s0,s2,90c <neorv32_uart0_printf+0xa8>
 8dc:	00896c63          	bltu	s2,s0,8f4 <neorv32_uart0_printf+0x90>
 8e0:	05840063          	beq	s0,s8,920 <neorv32_uart0_printf+0xbc>
 8e4:	05940663          	beq	s0,s9,930 <neorv32_uart0_printf+0xcc>
 8e8:	02500513          	li	a0,37
 8ec:	3f05                	jal	81c <neorv32_uart0_putc>
 8ee:	8522                	mv	a0,s0
 8f0:	a835                	j	92c <neorv32_uart0_printf+0xc8>
 8f2:	0001                	nop
 8f4:	07640063          	beq	s0,s6,954 <neorv32_uart0_printf+0xf0>
 8f8:	ff7418e3          	bne	s0,s7,8e8 <neorv32_uart0_printf+0x84>
 8fc:	4782                	lw	a5,0(sp)
 8fe:	004c                	addi	a1,sp,4
 900:	4388                	lw	a0,0(a5)
 902:	00478713          	addi	a4,a5,4 # 1004 <__etext+0x49c>
 906:	c03a                	sw	a4,0(sp)
 908:	35b5                	jal	774 <__neorv32_uart_tohex>
 90a:	a099                	j	950 <neorv32_uart0_printf+0xec>
 90c:	4782                	lw	a5,0(sp)
 90e:	4388                	lw	a0,0(a5)
 910:	00478713          	addi	a4,a5,4
 914:	c03a                	sw	a4,0(sp)
 916:	0001                	nop
 918:	3f21                	jal	830 <neorv32_uart0_print>
 91a:	0001                	nop
 91c:	844e                	mv	s0,s3
 91e:	b779                	j	8ac <neorv32_uart0_printf+0x48>
 920:	4782                	lw	a5,0(sp)
 922:	0007c503          	lbu	a0,0(a5)
 926:	00478713          	addi	a4,a5,4
 92a:	c03a                	sw	a4,0(sp)
 92c:	3dc5                	jal	81c <neorv32_uart0_putc>
 92e:	b7fd                	j	91c <neorv32_uart0_printf+0xb8>
 930:	4782                	lw	a5,0(sp)
 932:	4380                	lw	s0,0(a5)
 934:	00478713          	addi	a4,a5,4
 938:	c03a                	sw	a4,0(sp)
 93a:	00045763          	bgez	s0,948 <neorv32_uart0_printf+0xe4>
 93e:	02d00513          	li	a0,45
 942:	40800433          	neg	s0,s0
 946:	3dd9                	jal	81c <neorv32_uart0_putc>
 948:	004c                	addi	a1,sp,4
 94a:	8522                	mv	a0,s0
 94c:	3ba5                	jal	6c4 <__neorv32_uart_itoa>
 94e:	0001                	nop
 950:	0048                	addi	a0,sp,4
 952:	b7d9                	j	918 <neorv32_uart0_printf+0xb4>
 954:	4782                	lw	a5,0(sp)
 956:	004c                	addi	a1,sp,4
 958:	00478713          	addi	a4,a5,4
 95c:	4388                	lw	a0,0(a5)
 95e:	c03a                	sw	a4,0(sp)
 960:	b7f5                	j	94c <neorv32_uart0_printf+0xe8>
 962:	0001                	nop
 964:	01549463          	bne	s1,s5,96c <neorv32_uart0_printf+0x108>
 968:	4535                	li	a0,13
 96a:	3d4d                	jal	81c <neorv32_uart0_putc>
 96c:	00140993          	addi	s3,s0,1
 970:	8526                	mv	a0,s1
 972:	bf6d                	j	92c <neorv32_uart0_printf+0xc8>
 974:	0000                	unimp
 976:	0000                	unimp

00000978 <neorv32_cpu_get_cycle>:
 978:	c80027f3          	rdcycleh	a5
 97c:	c0002573          	rdcycle	a0
 980:	c80025f3          	rdcycleh	a1
 984:	fef59ae3          	bne	a1,a5,978 <neorv32_cpu_get_cycle>
 988:	8082                	ret
 98a:	0000                	unimp

0000098c <__divsi3>:
  li    t0, -1
  beq   a1, t0, .L20
#endif

FUNC_BEGIN (__divdi3)
  bltz  a0, .L10
 98c:	06054063          	bltz	a0,9ec <__umodsi3+0x10>
  bltz  a1, .L11
 990:	0605c663          	bltz	a1,9fc <__umodsi3+0x20>

00000994 <__udivsi3>:
  /* Since the quotient is positive, fall into __udivdi3.  */

FUNC_BEGIN (__udivdi3)
  mv    a2, a1
 994:	00058613          	mv	a2,a1
  mv    a1, a0
 998:	00050593          	mv	a1,a0
  li    a0, -1
 99c:	fff00513          	li	a0,-1
  beqz  a2, .L5
 9a0:	02060c63          	beqz	a2,9d8 <__udivsi3+0x44>
  li    a3, 1
 9a4:	00100693          	li	a3,1
  bgeu  a2, a1, .L2
 9a8:	00b67a63          	bgeu	a2,a1,9bc <__udivsi3+0x28>
.L1:
  blez  a2, .L2
 9ac:	00c05863          	blez	a2,9bc <__udivsi3+0x28>
  slli  a2, a2, 1
 9b0:	00161613          	slli	a2,a2,0x1
  slli  a3, a3, 1
 9b4:	00169693          	slli	a3,a3,0x1
  bgtu  a1, a2, .L1
 9b8:	feb66ae3          	bltu	a2,a1,9ac <__udivsi3+0x18>
.L2:
  li    a0, 0
 9bc:	00000513          	li	a0,0
.L3:
  bltu  a1, a2, .L4
 9c0:	00c5e663          	bltu	a1,a2,9cc <__udivsi3+0x38>
  sub   a1, a1, a2
 9c4:	40c585b3          	sub	a1,a1,a2
  or    a0, a0, a3
 9c8:	00d56533          	or	a0,a0,a3
.L4:
  srli  a3, a3, 1
 9cc:	0016d693          	srli	a3,a3,0x1
  srli  a2, a2, 1
 9d0:	00165613          	srli	a2,a2,0x1
  bnez  a3, .L3
 9d4:	fe0696e3          	bnez	a3,9c0 <__udivsi3+0x2c>
.L5:
  ret
 9d8:	00008067          	ret

000009dc <__umodsi3>:
FUNC_END (__udivdi3)

FUNC_BEGIN (__umoddi3)
  /* Call __udivdi3(a0, a1), then return the remainder, which is in a1.  */
  move  t0, ra
 9dc:	00008293          	mv	t0,ra
  jal   __udivdi3
 9e0:	fb5ff0ef          	jal	ra,994 <__udivsi3>
  move  a0, a1
 9e4:	00058513          	mv	a0,a1
  jr    t0
 9e8:	00028067          	jr	t0
FUNC_END (__umoddi3)

  /* Handle negative arguments to __divdi3.  */
.L10:
  neg   a0, a0
 9ec:	40a00533          	neg	a0,a0
  /* Zero is handled as a negative so that the result will not be inverted.  */
  bgtz  a1, .L12     /* Compute __udivdi3(-a0, a1), then negate the result.  */
 9f0:	00b04863          	bgtz	a1,a00 <__umodsi3+0x24>

  neg   a1, a1
 9f4:	40b005b3          	neg	a1,a1
  j     __udivdi3    /* Compute __udivdi3(-a0, -a1).  */
 9f8:	f9dff06f          	j	994 <__udivsi3>
.L11:                /* Compute __udivdi3(a0, -a1), then negate the result.  */
  neg   a1, a1
 9fc:	40b005b3          	neg	a1,a1
.L12:
  move  t0, ra
 a00:	00008293          	mv	t0,ra
  jal   __udivdi3
 a04:	f91ff0ef          	jal	ra,994 <__udivsi3>
  neg   a0, a0
 a08:	40a00533          	neg	a0,a0
  jr    t0
 a0c:	00028067          	jr	t0

00000a10 <__modsi3>:
FUNC_END (__divdi3)

FUNC_BEGIN (__moddi3)
  move   t0, ra
 a10:	00008293          	mv	t0,ra
  bltz   a1, .L31
 a14:	0005ca63          	bltz	a1,a28 <__modsi3+0x18>
  bltz   a0, .L32
 a18:	00054c63          	bltz	a0,a30 <__modsi3+0x20>
.L30:
  jal    __udivdi3    /* The dividend is not negative.  */
 a1c:	f79ff0ef          	jal	ra,994 <__udivsi3>
  move   a0, a1
 a20:	00058513          	mv	a0,a1
  jr     t0
 a24:	00028067          	jr	t0
.L31:
  neg    a1, a1
 a28:	40b005b3          	neg	a1,a1
  bgez   a0, .L30
 a2c:	fe0558e3          	bgez	a0,a1c <__modsi3+0xc>
.L32:
  neg    a0, a0
 a30:	40a00533          	neg	a0,a0
  jal    __udivdi3    /* The dividend is hella negative.  */
 a34:	f61ff0ef          	jal	ra,994 <__udivsi3>
  neg    a0, a1
 a38:	40b00533          	neg	a0,a1
  jr     t0
 a3c:	00028067          	jr	t0

00000a40 <memcpy>:
 a40:	00b547b3          	xor	a5,a0,a1
 a44:	0037f793          	andi	a5,a5,3
 a48:	00c508b3          	add	a7,a0,a2
 a4c:	06079663          	bnez	a5,ab8 <memcpy+0x78>
 a50:	00300793          	li	a5,3
 a54:	06c7f263          	bgeu	a5,a2,ab8 <memcpy+0x78>
 a58:	00357793          	andi	a5,a0,3
 a5c:	00050713          	mv	a4,a0
 a60:	0c079a63          	bnez	a5,b34 <memcpy+0xf4>
 a64:	ffc8f613          	andi	a2,a7,-4
 a68:	40e606b3          	sub	a3,a2,a4
 a6c:	02000793          	li	a5,32
 a70:	02000293          	li	t0,32
 a74:	06d7c263          	blt	a5,a3,ad8 <memcpy+0x98>
 a78:	00058693          	mv	a3,a1
 a7c:	00070793          	mv	a5,a4
 a80:	02c77863          	bgeu	a4,a2,ab0 <memcpy+0x70>
 a84:	0006a803          	lw	a6,0(a3) # 40000 <__crt0_copy_data_src_begin+0x3e314>
 a88:	00478793          	addi	a5,a5,4
 a8c:	00468693          	addi	a3,a3,4
 a90:	ff07ae23          	sw	a6,-4(a5)
 a94:	fec7e8e3          	bltu	a5,a2,a84 <memcpy+0x44>
 a98:	fff60793          	addi	a5,a2,-1
 a9c:	40e787b3          	sub	a5,a5,a4
 aa0:	ffc7f793          	andi	a5,a5,-4
 aa4:	00478793          	addi	a5,a5,4
 aa8:	00f70733          	add	a4,a4,a5
 aac:	00f585b3          	add	a1,a1,a5
 ab0:	01176863          	bltu	a4,a7,ac0 <memcpy+0x80>
 ab4:	00008067          	ret
 ab8:	00050713          	mv	a4,a0
 abc:	ff157ce3          	bgeu	a0,a7,ab4 <memcpy+0x74>
 ac0:	0005c783          	lbu	a5,0(a1)
 ac4:	00170713          	addi	a4,a4,1
 ac8:	00158593          	addi	a1,a1,1
 acc:	fef70fa3          	sb	a5,-1(a4)
 ad0:	ff1768e3          	bltu	a4,a7,ac0 <memcpy+0x80>
 ad4:	00008067          	ret
 ad8:	0045a683          	lw	a3,4(a1)
 adc:	01c5a783          	lw	a5,28(a1)
 ae0:	0005af83          	lw	t6,0(a1)
 ae4:	0085af03          	lw	t5,8(a1)
 ae8:	00c5ae83          	lw	t4,12(a1)
 aec:	0105ae03          	lw	t3,16(a1)
 af0:	0145a303          	lw	t1,20(a1)
 af4:	0185a803          	lw	a6,24(a1)
 af8:	00d72223          	sw	a3,4(a4)
 afc:	0205a683          	lw	a3,32(a1)
 b00:	01f72023          	sw	t6,0(a4)
 b04:	01e72423          	sw	t5,8(a4)
 b08:	01d72623          	sw	t4,12(a4)
 b0c:	01c72823          	sw	t3,16(a4)
 b10:	00672a23          	sw	t1,20(a4)
 b14:	01072c23          	sw	a6,24(a4)
 b18:	00f72e23          	sw	a5,28(a4)
 b1c:	02470713          	addi	a4,a4,36
 b20:	40e607b3          	sub	a5,a2,a4
 b24:	fed72e23          	sw	a3,-4(a4)
 b28:	02458593          	addi	a1,a1,36
 b2c:	faf2c6e3          	blt	t0,a5,ad8 <memcpy+0x98>
 b30:	f49ff06f          	j	a78 <memcpy+0x38>
 b34:	0005c683          	lbu	a3,0(a1)
 b38:	00170713          	addi	a4,a4,1
 b3c:	00377793          	andi	a5,a4,3
 b40:	fed70fa3          	sb	a3,-1(a4)
 b44:	00158593          	addi	a1,a1,1
 b48:	f0078ee3          	beqz	a5,a64 <memcpy+0x24>
 b4c:	0005c683          	lbu	a3,0(a1)
 b50:	00170713          	addi	a4,a4,1
 b54:	00377793          	andi	a5,a4,3
 b58:	fed70fa3          	sb	a3,-1(a4)
 b5c:	00158593          	addi	a1,a1,1
 b60:	fc079ae3          	bnez	a5,b34 <memcpy+0xf4>
 b64:	f01ff06f          	j	a64 <memcpy+0x24>
