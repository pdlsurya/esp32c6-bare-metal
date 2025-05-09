
/Users/pdlsurya/Documents/EmbeddedProjects/esp32c6-bare-metal-sdk/examples/blinky/build/app.elf:     file format elf32-littleriscv


Disassembly of section .text:

42000008 <_start>:
42000008:	408007b7          	lui	a5,0x40800
4200000c:	50078793          	addi	a5,a5,1280 # 40800500 <vector_table>
42000010:	84be                	mv	s1,a5
42000012:	0014e793          	ori	a5,s1,1
42000016:	30579073          	csrw	mtvec,a5
4200001a:	0001                	nop
4200001c:	fe880117          	auipc	sp,0xfe880
42000020:	fe410113          	addi	sp,sp,-28 # 40880000 <__stack_top>
42000024:	5330006f          	j	42000d56 <reset_handler>
42000028:	0001                	nop

4200002a <main>:
4200002a:	7131                	addi	sp,sp,-192
4200002c:	df06                	sw	ra,188(sp)
4200002e:	dd22                	sw	s0,184(sp)
42000030:	db4a                	sw	s2,180(sp)
42000032:	d94e                	sw	s3,176(sp)
42000034:	d752                	sw	s4,172(sp)
42000036:	d556                	sw	s5,168(sp)
42000038:	d35a                	sw	s6,164(sp)
4200003a:	d15e                	sw	s7,160(sp)
4200003c:	cf62                	sw	s8,156(sp)
4200003e:	cd66                	sw	s9,152(sp)
42000040:	cb6a                	sw	s10,148(sp)
42000042:	c96e                	sw	s11,144(sp)
42000044:	0180                	addi	s0,sp,192
42000046:	600917b7          	lui	a5,0x60091
4200004a:	00078793          	mv	a5,a5
4200004e:	fcf42423          	sw	a5,-56(s0)
42000052:	47bd                	li	a5,15
42000054:	fcf42223          	sw	a5,-60(s0)
42000058:	fc442783          	lw	a5,-60(s0)
4200005c:	4705                	li	a4,1
4200005e:	00f717b3          	sll	a5,a4,a5
42000062:	873e                	mv	a4,a5
42000064:	fc842783          	lw	a5,-56(s0)
42000068:	d3d8                	sw	a4,36(a5)
4200006a:	0001                	nop
4200006c:	2d1000ef          	jal	42000b3c <ws2812_init>
42000070:	fc042623          	sw	zero,-52(s0)
42000074:	600917b7          	lui	a5,0x60091
42000078:	00078793          	mv	a5,a5
4200007c:	f8f42623          	sw	a5,-116(s0)
42000080:	47bd                	li	a5,15
42000082:	f8f42423          	sw	a5,-120(s0)
42000086:	4785                	li	a5,1
42000088:	f8f42223          	sw	a5,-124(s0)
4200008c:	f8442783          	lw	a5,-124(s0)
42000090:	cb99                	beqz	a5,420000a6 <main+0x7c>
42000092:	f8842783          	lw	a5,-120(s0)
42000096:	4705                	li	a4,1
42000098:	00f717b3          	sll	a5,a4,a5
4200009c:	873e                	mv	a4,a5
4200009e:	f8c42783          	lw	a5,-116(s0)
420000a2:	c798                	sw	a4,8(a5)
420000a4:	a811                	j	420000b8 <main+0x8e>
420000a6:	f8842783          	lw	a5,-120(s0)
420000aa:	4705                	li	a4,1
420000ac:	00f717b3          	sll	a5,a4,a5
420000b0:	873e                	mv	a4,a5
420000b2:	f8c42783          	lw	a5,-116(s0)
420000b6:	c7d8                	sw	a4,12(a5)
420000b8:	0001                	nop
420000ba:	4781                	li	a5,0
420000bc:	0ff7e793          	ori	a5,a5,255
420000c0:	7741                	lui	a4,0xffff0
420000c2:	0ff70713          	addi	a4,a4,255 # ffff00ff <LP_WDT+0x9ff3e4ff>
420000c6:	8f7d                	and	a4,a4,a5
420000c8:	67a1                	lui	a5,0x8
420000ca:	8fd9                	or	a5,a5,a4
420000cc:	853e                	mv	a0,a5
420000ce:	7ec000ef          	jal	420008ba <ws2812_send>
420000d2:	0c800793          	li	a5,200
420000d6:	faf42023          	sw	a5,-96(s0)
420000da:	200027b7          	lui	a5,0x20002
420000de:	80478793          	addi	a5,a5,-2044 # 20001804 <rtc_get_reset_reason-0x1fffe814>
420000e2:	479c                	lw	a5,8(a5)
420000e4:	f6f42023          	sw	a5,-160(s0)
420000e8:	f6042223          	sw	zero,-156(s0)
420000ec:	f6042783          	lw	a5,-160(s0)
420000f0:	00079b93          	slli	s7,a5,0x0
420000f4:	4b01                	li	s6,0
420000f6:	200027b7          	lui	a5,0x20002
420000fa:	80478793          	addi	a5,a5,-2044 # 20001804 <rtc_get_reset_reason-0x1fffe814>
420000fe:	43dc                	lw	a5,4(a5)
42000100:	f4f42c23          	sw	a5,-168(s0)
42000104:	f4042e23          	sw	zero,-164(s0)
42000108:	f5842583          	lw	a1,-168(s0)
4200010c:	f5c42603          	lw	a2,-164(s0)
42000110:	86ae                	mv	a3,a1
42000112:	00db0733          	add	a4,s6,a3
42000116:	86ba                	mv	a3,a4
42000118:	0166b6b3          	sltu	a3,a3,s6
4200011c:	00cb87b3          	add	a5,s7,a2
42000120:	96be                	add	a3,a3,a5
42000122:	87b6                	mv	a5,a3
42000124:	f8e42c23          	sw	a4,-104(s0)
42000128:	f8f42e23          	sw	a5,-100(s0)
4200012c:	fa042703          	lw	a4,-96(s0)
42000130:	000277b7          	lui	a5,0x27
42000134:	10078793          	addi	a5,a5,256 # 27100 <rtc_get_reset_reason-0x3ffd8f18>
42000138:	02f707b3          	mul	a5,a4,a5
4200013c:	f8f42823          	sw	a5,-112(s0)
42000140:	f8042a23          	sw	zero,-108(s0)
42000144:	0001                	nop
42000146:	200027b7          	lui	a5,0x20002
4200014a:	80478793          	addi	a5,a5,-2044 # 20001804 <rtc_get_reset_reason-0x1fffe814>
4200014e:	479c                	lw	a5,8(a5)
42000150:	f4f42823          	sw	a5,-176(s0)
42000154:	f4042a23          	sw	zero,-172(s0)
42000158:	f5042783          	lw	a5,-176(s0)
4200015c:	00079c93          	slli	s9,a5,0x0
42000160:	4c01                	li	s8,0
42000162:	200027b7          	lui	a5,0x20002
42000166:	80478793          	addi	a5,a5,-2044 # 20001804 <rtc_get_reset_reason-0x1fffe814>
4200016a:	43dc                	lw	a5,4(a5)
4200016c:	f4f42423          	sw	a5,-184(s0)
42000170:	f4042623          	sw	zero,-180(s0)
42000174:	f4842583          	lw	a1,-184(s0)
42000178:	f4c42603          	lw	a2,-180(s0)
4200017c:	86ae                	mv	a3,a1
4200017e:	00dc0733          	add	a4,s8,a3
42000182:	86ba                	mv	a3,a4
42000184:	0186b6b3          	sltu	a3,a3,s8
42000188:	00cc87b3          	add	a5,s9,a2
4200018c:	96be                	add	a3,a3,a5
4200018e:	87b6                	mv	a5,a3
42000190:	f9842603          	lw	a2,-104(s0)
42000194:	f9c42683          	lw	a3,-100(s0)
42000198:	40c70533          	sub	a0,a4,a2
4200019c:	882a                	mv	a6,a0
4200019e:	01073833          	sltu	a6,a4,a6
420001a2:	40d785b3          	sub	a1,a5,a3
420001a6:	410587b3          	sub	a5,a1,a6
420001aa:	85be                	mv	a1,a5
420001ac:	862a                	mv	a2,a0
420001ae:	86ae                	mv	a3,a1
420001b0:	f9442703          	lw	a4,-108(s0)
420001b4:	87b6                	mv	a5,a3
420001b6:	f8e7e8e3          	bltu	a5,a4,42000146 <main+0x11c>
420001ba:	f9442703          	lw	a4,-108(s0)
420001be:	87b6                	mv	a5,a3
420001c0:	00f71763          	bne	a4,a5,420001ce <main+0x1a4>
420001c4:	f9042783          	lw	a5,-112(s0)
420001c8:	8732                	mv	a4,a2
420001ca:	f6f76ee3          	bltu	a4,a5,42000146 <main+0x11c>
420001ce:	0001                	nop
420001d0:	600917b7          	lui	a5,0x60091
420001d4:	00078793          	mv	a5,a5
420001d8:	faf42623          	sw	a5,-84(s0)
420001dc:	47bd                	li	a5,15
420001de:	faf42423          	sw	a5,-88(s0)
420001e2:	fa042223          	sw	zero,-92(s0)
420001e6:	fa442783          	lw	a5,-92(s0)
420001ea:	cb99                	beqz	a5,42000200 <main+0x1d6>
420001ec:	fa842783          	lw	a5,-88(s0)
420001f0:	4705                	li	a4,1
420001f2:	00f717b3          	sll	a5,a4,a5
420001f6:	873e                	mv	a4,a5
420001f8:	fac42783          	lw	a5,-84(s0)
420001fc:	c798                	sw	a4,8(a5)
420001fe:	a811                	j	42000212 <main+0x1e8>
42000200:	fa842783          	lw	a5,-88(s0)
42000204:	4705                	li	a4,1
42000206:	00f717b3          	sll	a5,a4,a5
4200020a:	873e                	mv	a4,a5
4200020c:	fac42783          	lw	a5,-84(s0)
42000210:	c7d8                	sw	a4,12(a5)
42000212:	0001                	nop
42000214:	4781                	li	a5,0
42000216:	853e                	mv	a0,a5
42000218:	254d                	jal	420008ba <ws2812_send>
4200021a:	0c800793          	li	a5,200
4200021e:	fcf42023          	sw	a5,-64(s0)
42000222:	200027b7          	lui	a5,0x20002
42000226:	80478793          	addi	a5,a5,-2044 # 20001804 <rtc_get_reset_reason-0x1fffe814>
4200022a:	479c                	lw	a5,8(a5)
4200022c:	f6f42c23          	sw	a5,-136(s0)
42000230:	f6042e23          	sw	zero,-132(s0)
42000234:	f7842783          	lw	a5,-136(s0)
42000238:	00079993          	slli	s3,a5,0x0
4200023c:	4901                	li	s2,0
4200023e:	200027b7          	lui	a5,0x20002
42000242:	80478793          	addi	a5,a5,-2044 # 20001804 <rtc_get_reset_reason-0x1fffe814>
42000246:	43dc                	lw	a5,4(a5)
42000248:	8d3e                	mv	s10,a5
4200024a:	4d81                	li	s11,0
4200024c:	01a90733          	add	a4,s2,s10
42000250:	86ba                	mv	a3,a4
42000252:	0126b6b3          	sltu	a3,a3,s2
42000256:	01b987b3          	add	a5,s3,s11
4200025a:	96be                	add	a3,a3,a5
4200025c:	87b6                	mv	a5,a3
4200025e:	fae42c23          	sw	a4,-72(s0)
42000262:	faf42e23          	sw	a5,-68(s0)
42000266:	fc042703          	lw	a4,-64(s0)
4200026a:	000277b7          	lui	a5,0x27
4200026e:	10078793          	addi	a5,a5,256 # 27100 <rtc_get_reset_reason-0x3ffd8f18>
42000272:	02f707b3          	mul	a5,a4,a5
42000276:	faf42823          	sw	a5,-80(s0)
4200027a:	fa042a23          	sw	zero,-76(s0)
4200027e:	0001                	nop
42000280:	200027b7          	lui	a5,0x20002
42000284:	80478793          	addi	a5,a5,-2044 # 20001804 <rtc_get_reset_reason-0x1fffe814>
42000288:	479c                	lw	a5,8(a5)
4200028a:	f6f42823          	sw	a5,-144(s0)
4200028e:	f6042a23          	sw	zero,-140(s0)
42000292:	f7042783          	lw	a5,-144(s0)
42000296:	00079a93          	slli	s5,a5,0x0
4200029a:	4a01                	li	s4,0
4200029c:	200027b7          	lui	a5,0x20002
420002a0:	80478793          	addi	a5,a5,-2044 # 20001804 <rtc_get_reset_reason-0x1fffe814>
420002a4:	43dc                	lw	a5,4(a5)
420002a6:	f6f42423          	sw	a5,-152(s0)
420002aa:	f6042623          	sw	zero,-148(s0)
420002ae:	f6842583          	lw	a1,-152(s0)
420002b2:	f6c42603          	lw	a2,-148(s0)
420002b6:	86ae                	mv	a3,a1
420002b8:	00da0733          	add	a4,s4,a3
420002bc:	86ba                	mv	a3,a4
420002be:	0146b6b3          	sltu	a3,a3,s4
420002c2:	00ca87b3          	add	a5,s5,a2
420002c6:	96be                	add	a3,a3,a5
420002c8:	87b6                	mv	a5,a3
420002ca:	fb842603          	lw	a2,-72(s0)
420002ce:	fbc42683          	lw	a3,-68(s0)
420002d2:	40c70533          	sub	a0,a4,a2
420002d6:	882a                	mv	a6,a0
420002d8:	01073833          	sltu	a6,a4,a6
420002dc:	40d785b3          	sub	a1,a5,a3
420002e0:	410587b3          	sub	a5,a1,a6
420002e4:	85be                	mv	a1,a5
420002e6:	862a                	mv	a2,a0
420002e8:	86ae                	mv	a3,a1
420002ea:	fb442703          	lw	a4,-76(s0)
420002ee:	87b6                	mv	a5,a3
420002f0:	f8e7e8e3          	bltu	a5,a4,42000280 <main+0x256>
420002f4:	fb442703          	lw	a4,-76(s0)
420002f8:	87b6                	mv	a5,a3
420002fa:	00f71763          	bne	a4,a5,42000308 <main+0x2de>
420002fe:	fb042783          	lw	a5,-80(s0)
42000302:	8732                	mv	a4,a2
42000304:	f6f76ee3          	bltu	a4,a5,42000280 <main+0x256>
42000308:	0001                	nop
4200030a:	fcc42783          	lw	a5,-52(s0)
4200030e:	00178713          	addi	a4,a5,1
42000312:	fce42623          	sw	a4,-52(s0)
42000316:	85be                	mv	a1,a5
42000318:	420037b7          	lui	a5,0x42003
4200031c:	34078513          	addi	a0,a5,832 # 42003340 <__getreent+0x6>
42000320:	287d                	jal	420003de <serial_printf>
42000322:	bb89                	j	42000074 <main+0x4a>

42000324 <msi_clear>:
42000324:	1141                	addi	sp,sp,-16
42000326:	c606                	sw	ra,12(sp)
42000328:	c422                	sw	s0,8(sp)
4200032a:	0800                	addi	s0,sp,16
4200032c:	200027b7          	lui	a5,0x20002
42000330:	80078793          	addi	a5,a5,-2048 # 20001800 <rtc_get_reset_reason-0x1fffe818>
42000334:	0007a023          	sw	zero,0(a5)
42000338:	0001                	nop
4200033a:	40b2                	lw	ra,12(sp)
4200033c:	4422                	lw	s0,8(sp)
4200033e:	0141                	addi	sp,sp,16
42000340:	8082                	ret

42000342 <generic_interrupt_handler>:
42000342:	7179                	addi	sp,sp,-48
42000344:	d606                	sw	ra,44(sp)
42000346:	d422                	sw	s0,40(sp)
42000348:	1800                	addi	s0,sp,48
4200034a:	87aa                	mv	a5,a0
4200034c:	fcf40fa3          	sb	a5,-33(s0)
42000350:	fdf44783          	lbu	a5,-33(s0)
42000354:	fef42623          	sw	a5,-20(s0)
42000358:	fec42783          	lw	a5,-20(s0)
4200035c:	e38d                	bnez	a5,4200037e <generic_interrupt_handler+0x3c>
4200035e:	420037b7          	lui	a5,0x42003
42000362:	35478693          	addi	a3,a5,852 # 42003354 <__getreent+0x1a>
42000366:	420037b7          	lui	a5,0x42003
4200036a:	59078613          	addi	a2,a5,1424 # 42003590 <__func__.0>
4200036e:	03000593          	li	a1,48
42000372:	420037b7          	lui	a5,0x42003
42000376:	38878513          	addi	a0,a5,904 # 42003388 <__getreent+0x4e>
4200037a:	048010ef          	jal	420013c2 <__assert_func>
4200037e:	0001                	nop
42000380:	fdf44783          	lbu	a5,-33(s0)
42000384:	40800737          	lui	a4,0x40800
42000388:	6fc70713          	addi	a4,a4,1788 # 408006fc <interrupt_handlers>
4200038c:	078a                	slli	a5,a5,0x2
4200038e:	97ba                	add	a5,a5,a4
42000390:	439c                	lw	a5,0(a5)
42000392:	cb99                	beqz	a5,420003a8 <generic_interrupt_handler+0x66>
42000394:	fdf44783          	lbu	a5,-33(s0)
42000398:	40800737          	lui	a4,0x40800
4200039c:	6fc70713          	addi	a4,a4,1788 # 408006fc <interrupt_handlers>
420003a0:	078a                	slli	a5,a5,0x2
420003a2:	97ba                	add	a5,a5,a4
420003a4:	439c                	lw	a5,0(a5)
420003a6:	9782                	jalr	a5
420003a8:	0001                	nop
420003aa:	50b2                	lw	ra,44(sp)
420003ac:	5422                	lw	s0,40(sp)
420003ae:	6145                	addi	sp,sp,48
420003b0:	8082                	ret

420003b2 <ecall_handler>:
420003b2:	1141                	addi	sp,sp,-16
420003b4:	c606                	sw	ra,12(sp)
420003b6:	c422                	sw	s0,8(sp)
420003b8:	0800                	addi	s0,sp,16
420003ba:	a001                	j	420003ba <ecall_handler+0x8>

420003bc <usb_serial_jtag_ll_txfifo_flush>:
420003bc:	1141                	addi	sp,sp,-16
420003be:	c606                	sw	ra,12(sp)
420003c0:	c422                	sw	s0,8(sp)
420003c2:	0800                	addi	s0,sp,16
420003c4:	6000f7b7          	lui	a5,0x6000f
420003c8:	00078793          	mv	a5,a5
420003cc:	43d8                	lw	a4,4(a5)
420003ce:	00176713          	ori	a4,a4,1
420003d2:	c3d8                	sw	a4,4(a5)
420003d4:	0001                	nop
420003d6:	40b2                	lw	ra,12(sp)
420003d8:	4422                	lw	s0,8(sp)
420003da:	0141                	addi	sp,sp,16
420003dc:	8082                	ret

420003de <serial_printf>:
420003de:	710d                	addi	sp,sp,-352
420003e0:	12112e23          	sw	ra,316(sp)
420003e4:	12812c23          	sw	s0,312(sp)
420003e8:	13212a23          	sw	s2,308(sp)
420003ec:	13312823          	sw	s3,304(sp)
420003f0:	13412623          	sw	s4,300(sp)
420003f4:	13512423          	sw	s5,296(sp)
420003f8:	13612223          	sw	s6,292(sp)
420003fc:	13712023          	sw	s7,288(sp)
42000400:	11812e23          	sw	s8,284(sp)
42000404:	11912c23          	sw	s9,280(sp)
42000408:	11a12a23          	sw	s10,276(sp)
4200040c:	11b12823          	sw	s11,272(sp)
42000410:	0280                	addi	s0,sp,320
42000412:	eca42623          	sw	a0,-308(s0)
42000416:	c04c                	sw	a1,4(s0)
42000418:	c410                	sw	a2,8(s0)
4200041a:	c454                	sw	a3,12(s0)
4200041c:	c818                	sw	a4,16(s0)
4200041e:	c85c                	sw	a5,20(s0)
42000420:	01042c23          	sw	a6,24(s0)
42000424:	01142e23          	sw	a7,28(s0)
42000428:	02040793          	addi	a5,s0,32
4200042c:	ecf42423          	sw	a5,-312(s0)
42000430:	ec842783          	lw	a5,-312(s0)
42000434:	1791                	addi	a5,a5,-28 # 6000efe4 <TIMERG1+0x5fe4>
42000436:	ecf42e23          	sw	a5,-292(s0)
4200043a:	edc42703          	lw	a4,-292(s0)
4200043e:	ee040793          	addi	a5,s0,-288
42000442:	863a                	mv	a2,a4
42000444:	ecc42583          	lw	a1,-308(s0)
42000448:	853e                	mv	a0,a5
4200044a:	03e010ef          	jal	42001488 <vsiprintf>
4200044e:	faa42e23          	sw	a0,-68(s0)
42000452:	fbc42783          	lw	a5,-68(s0)
42000456:	fcf42623          	sw	a5,-52(s0)
4200045a:	fbc42783          	lw	a5,-68(s0)
4200045e:	03f7f793          	andi	a5,a5,63
42000462:	ef91                	bnez	a5,4200047e <serial_printf+0xa0>
42000464:	fbc42703          	lw	a4,-68(s0)
42000468:	41f75793          	srai	a5,a4,0x1f
4200046c:	83e9                	srli	a5,a5,0x1a
4200046e:	973e                	add	a4,a4,a5
42000470:	03f77713          	andi	a4,a4,63
42000474:	40f707b3          	sub	a5,a4,a5
42000478:	0ff7f793          	zext.b	a5,a5
4200047c:	a005                	j	4200049c <serial_printf+0xbe>
4200047e:	fbc42703          	lw	a4,-68(s0)
42000482:	41f75793          	srai	a5,a4,0x1f
42000486:	83e9                	srli	a5,a5,0x1a
42000488:	973e                	add	a4,a4,a5
4200048a:	03f77713          	andi	a4,a4,63
4200048e:	40f707b3          	sub	a5,a4,a5
42000492:	0ff7f793          	zext.b	a5,a5
42000496:	0785                	addi	a5,a5,1
42000498:	0ff7f793          	zext.b	a5,a5
4200049c:	faf40da3          	sb	a5,-69(s0)
420004a0:	6785                	lui	a5,0x1
420004a2:	5e078793          	addi	a5,a5,1504 # 15e0 <rtc_get_reset_reason-0x3fffea38>
420004a6:	fcf41523          	sh	a5,-54(s0)
420004aa:	fc042223          	sw	zero,-60(s0)
420004ae:	a2bd                	j	4200061c <serial_printf+0x23e>
420004b0:	fc042023          	sw	zero,-64(s0)
420004b4:	a235                	j	420005e0 <serial_printf+0x202>
420004b6:	4785                	li	a5,1
420004b8:	faf42a23          	sw	a5,-76(s0)
420004bc:	200027b7          	lui	a5,0x20002
420004c0:	80478793          	addi	a5,a5,-2044 # 20001804 <rtc_get_reset_reason-0x1fffe814>
420004c4:	479c                	lw	a5,8(a5)
420004c6:	8d3e                	mv	s10,a5
420004c8:	4d81                	li	s11,0
420004ca:	000d1993          	slli	s3,s10,0x0
420004ce:	4901                	li	s2,0
420004d0:	200027b7          	lui	a5,0x20002
420004d4:	80478793          	addi	a5,a5,-2044 # 20001804 <rtc_get_reset_reason-0x1fffe814>
420004d8:	43dc                	lw	a5,4(a5)
420004da:	8b3e                	mv	s6,a5
420004dc:	4b81                	li	s7,0
420004de:	01690733          	add	a4,s2,s6
420004e2:	86ba                	mv	a3,a4
420004e4:	0126b6b3          	sltu	a3,a3,s2
420004e8:	017987b3          	add	a5,s3,s7
420004ec:	96be                	add	a3,a3,a5
420004ee:	87b6                	mv	a5,a3
420004f0:	fae42423          	sw	a4,-88(s0)
420004f4:	faf42623          	sw	a5,-84(s0)
420004f8:	fb442703          	lw	a4,-76(s0)
420004fc:	87ba                	mv	a5,a4
420004fe:	078a                	slli	a5,a5,0x2
42000500:	97ba                	add	a5,a5,a4
42000502:	0796                	slli	a5,a5,0x5
42000504:	faf42023          	sw	a5,-96(s0)
42000508:	fa042223          	sw	zero,-92(s0)
4200050c:	0001                	nop
4200050e:	200027b7          	lui	a5,0x20002
42000512:	80478793          	addi	a5,a5,-2044 # 20001804 <rtc_get_reset_reason-0x1fffe814>
42000516:	479c                	lw	a5,8(a5)
42000518:	ecf42023          	sw	a5,-320(s0)
4200051c:	ec042223          	sw	zero,-316(s0)
42000520:	ec042783          	lw	a5,-320(s0)
42000524:	00079a93          	slli	s5,a5,0x0
42000528:	4a01                	li	s4,0
4200052a:	200027b7          	lui	a5,0x20002
4200052e:	80478793          	addi	a5,a5,-2044 # 20001804 <rtc_get_reset_reason-0x1fffe814>
42000532:	43dc                	lw	a5,4(a5)
42000534:	8c3e                	mv	s8,a5
42000536:	4c81                	li	s9,0
42000538:	018a0733          	add	a4,s4,s8
4200053c:	86ba                	mv	a3,a4
4200053e:	0146b6b3          	sltu	a3,a3,s4
42000542:	019a87b3          	add	a5,s5,s9
42000546:	96be                	add	a3,a3,a5
42000548:	87b6                	mv	a5,a3
4200054a:	863a                	mv	a2,a4
4200054c:	86be                	mv	a3,a5
4200054e:	fa842503          	lw	a0,-88(s0)
42000552:	fac42583          	lw	a1,-84(s0)
42000556:	40a60733          	sub	a4,a2,a0
4200055a:	883a                	mv	a6,a4
4200055c:	01063833          	sltu	a6,a2,a6
42000560:	40b687b3          	sub	a5,a3,a1
42000564:	410786b3          	sub	a3,a5,a6
42000568:	87b6                	mv	a5,a3
4200056a:	fa442683          	lw	a3,-92(s0)
4200056e:	863e                	mv	a2,a5
42000570:	f8d66fe3          	bltu	a2,a3,4200050e <serial_printf+0x130>
42000574:	fa442683          	lw	a3,-92(s0)
42000578:	863e                	mv	a2,a5
4200057a:	00c69763          	bne	a3,a2,42000588 <serial_printf+0x1aa>
4200057e:	fa042683          	lw	a3,-96(s0)
42000582:	87ba                	mv	a5,a4
42000584:	f8d7e5e3          	bltu	a5,a3,4200050e <serial_printf+0x130>
42000588:	0001                	nop
4200058a:	fca45783          	lhu	a5,-54(s0)
4200058e:	17fd                	addi	a5,a5,-1
42000590:	fcf41523          	sh	a5,-54(s0)
42000594:	fca45783          	lhu	a5,-54(s0)
42000598:	e399                	bnez	a5,4200059e <serial_printf+0x1c0>
4200059a:	57fd                	li	a5,-1
4200059c:	a841                	j	4200062c <serial_printf+0x24e>
4200059e:	6000f7b7          	lui	a5,0x6000f
420005a2:	00078793          	mv	a5,a5
420005a6:	43dc                	lw	a5,4(a5)
420005a8:	8385                	srli	a5,a5,0x1
420005aa:	8b85                	andi	a5,a5,1
420005ac:	0ff7f793          	zext.b	a5,a5
420005b0:	d399                	beqz	a5,420004b6 <serial_printf+0xd8>
420005b2:	fc442783          	lw	a5,-60(s0)
420005b6:	00679713          	slli	a4,a5,0x6
420005ba:	fc042783          	lw	a5,-64(s0)
420005be:	97ba                	add	a5,a5,a4
420005c0:	fd078793          	addi	a5,a5,-48 # 6000efd0 <TIMERG1+0x5fd0>
420005c4:	97a2                	add	a5,a5,s0
420005c6:	f107c783          	lbu	a5,-240(a5)
420005ca:	873e                	mv	a4,a5
420005cc:	6000f7b7          	lui	a5,0x6000f
420005d0:	00078793          	mv	a5,a5
420005d4:	c398                	sw	a4,0(a5)
420005d6:	fc042783          	lw	a5,-64(s0)
420005da:	0785                	addi	a5,a5,1 # 6000f001 <USB_SERIAL_JTAG+0x1>
420005dc:	fcf42023          	sw	a5,-64(s0)
420005e0:	fcc42783          	lw	a5,-52(s0)
420005e4:	04000713          	li	a4,64
420005e8:	00f75463          	bge	a4,a5,420005f0 <serial_printf+0x212>
420005ec:	04000793          	li	a5,64
420005f0:	fc042703          	lw	a4,-64(s0)
420005f4:	faf745e3          	blt	a4,a5,4200059e <serial_printf+0x1c0>
420005f8:	fcc42703          	lw	a4,-52(s0)
420005fc:	03f00793          	li	a5,63
42000600:	00e7c363          	blt	a5,a4,42000606 <serial_printf+0x228>
42000604:	3b65                	jal	420003bc <usb_serial_jtag_ll_txfifo_flush>
42000606:	fcc42783          	lw	a5,-52(s0)
4200060a:	fc078793          	addi	a5,a5,-64
4200060e:	fcf42623          	sw	a5,-52(s0)
42000612:	fc442783          	lw	a5,-60(s0)
42000616:	0785                	addi	a5,a5,1
42000618:	fcf42223          	sw	a5,-60(s0)
4200061c:	fbb44783          	lbu	a5,-69(s0)
42000620:	fc442703          	lw	a4,-60(s0)
42000624:	e8f746e3          	blt	a4,a5,420004b0 <serial_printf+0xd2>
42000628:	fbc42783          	lw	a5,-68(s0)
4200062c:	853e                	mv	a0,a5
4200062e:	13c12083          	lw	ra,316(sp)
42000632:	13812403          	lw	s0,312(sp)
42000636:	13412903          	lw	s2,308(sp)
4200063a:	13012983          	lw	s3,304(sp)
4200063e:	12c12a03          	lw	s4,300(sp)
42000642:	12812a83          	lw	s5,296(sp)
42000646:	12412b03          	lw	s6,292(sp)
4200064a:	12012b83          	lw	s7,288(sp)
4200064e:	11c12c03          	lw	s8,284(sp)
42000652:	11812c83          	lw	s9,280(sp)
42000656:	11412d03          	lw	s10,276(sp)
4200065a:	11012d83          	lw	s11,272(sp)
4200065e:	6135                	addi	sp,sp,352
42000660:	8082                	ret

42000662 <rmt_ll_set_group_clock_src>:
42000662:	7139                	addi	sp,sp,-64
42000664:	de06                	sw	ra,60(sp)
42000666:	dc22                	sw	s0,56(sp)
42000668:	0080                	addi	s0,sp,64
4200066a:	fca42e23          	sw	a0,-36(s0)
4200066e:	fcb42c23          	sw	a1,-40(s0)
42000672:	fcd42823          	sw	a3,-48(s0)
42000676:	fce42623          	sw	a4,-52(s0)
4200067a:	fcf42423          	sw	a5,-56(s0)
4200067e:	87b2                	mv	a5,a2
42000680:	fcf40ba3          	sb	a5,-41(s0)
42000684:	600967b7          	lui	a5,0x60096
42000688:	00078793          	mv	a5,a5
4200068c:	5b9c                	lw	a5,48(a5)
4200068e:	fef42623          	sw	a5,-20(s0)
42000692:	fec42783          	lw	a5,-20(s0)
42000696:	fef42423          	sw	a5,-24(s0)
4200069a:	fd042783          	lw	a5,-48(s0)
4200069e:	0ff7f793          	zext.b	a5,a5
420006a2:	17fd                	addi	a5,a5,-1 # 60095fff <GPIO+0x4fff>
420006a4:	0ff7f793          	zext.b	a5,a5
420006a8:	07b2                	slli	a5,a5,0xc
420006aa:	fe842683          	lw	a3,-24(s0)
420006ae:	fff01737          	lui	a4,0xfff01
420006b2:	177d                	addi	a4,a4,-1 # fff00fff <LP_WDT+0x9fe4f3ff>
420006b4:	8f75                	and	a4,a4,a3
420006b6:	8fd9                	or	a5,a5,a4
420006b8:	fef42423          	sw	a5,-24(s0)
420006bc:	fe842703          	lw	a4,-24(s0)
420006c0:	600967b7          	lui	a5,0x60096
420006c4:	00078793          	mv	a5,a5
420006c8:	db98                	sw	a4,48(a5)
420006ca:	fc842783          	lw	a5,-56(s0)
420006ce:	03f7f793          	andi	a5,a5,63
420006d2:	0ff7f713          	zext.b	a4,a5
420006d6:	600967b7          	lui	a5,0x60096
420006da:	00078793          	mv	a5,a5
420006de:	03f77713          	andi	a4,a4,63
420006e2:	5b94                	lw	a3,48(a5)
420006e4:	fc06f693          	andi	a3,a3,-64
420006e8:	8f55                	or	a4,a4,a3
420006ea:	db98                	sw	a4,48(a5)
420006ec:	fcc42783          	lw	a5,-52(s0)
420006f0:	03f7f793          	andi	a5,a5,63
420006f4:	0ff7f713          	zext.b	a4,a5
420006f8:	600967b7          	lui	a5,0x60096
420006fc:	00078793          	mv	a5,a5
42000700:	03f77713          	andi	a4,a4,63
42000704:	071a                	slli	a4,a4,0x6
42000706:	5b90                	lw	a2,48(a5)
42000708:	76fd                	lui	a3,0xfffff
4200070a:	03f68693          	addi	a3,a3,63 # fffff03f <LP_WDT+0x9ff4d43f>
4200070e:	8ef1                	and	a3,a3,a2
42000710:	8f55                	or	a4,a4,a3
42000712:	db98                	sw	a4,48(a5)
42000714:	fd744783          	lbu	a5,-41(s0)
42000718:	4725                	li	a4,9
4200071a:	04e78863          	beq	a5,a4,4200076a <rmt_ll_set_group_clock_src+0x108>
4200071e:	4725                	li	a4,9
42000720:	04f74f63          	blt	a4,a5,4200077e <rmt_ll_set_group_clock_src+0x11c>
42000724:	4711                	li	a4,4
42000726:	00e78663          	beq	a5,a4,42000732 <rmt_ll_set_group_clock_src+0xd0>
4200072a:	4721                	li	a4,8
4200072c:	02e78163          	beq	a5,a4,4200074e <rmt_ll_set_group_clock_src+0xec>
42000730:	a0b9                	j	4200077e <rmt_ll_set_group_clock_src+0x11c>
42000732:	600967b7          	lui	a5,0x60096
42000736:	00078793          	mv	a5,a5
4200073a:	5b94                	lw	a3,48(a5)
4200073c:	ffd00737          	lui	a4,0xffd00
42000740:	177d                	addi	a4,a4,-1 # ffcfffff <LP_WDT+0x9fc4e3ff>
42000742:	8ef9                	and	a3,a3,a4
42000744:	00100737          	lui	a4,0x100
42000748:	8f55                	or	a4,a4,a3
4200074a:	db98                	sw	a4,48(a5)
4200074c:	a80d                	j	4200077e <rmt_ll_set_group_clock_src+0x11c>
4200074e:	600967b7          	lui	a5,0x60096
42000752:	00078793          	mv	a5,a5
42000756:	5b94                	lw	a3,48(a5)
42000758:	ffd00737          	lui	a4,0xffd00
4200075c:	177d                	addi	a4,a4,-1 # ffcfffff <LP_WDT+0x9fc4e3ff>
4200075e:	8ef9                	and	a3,a3,a4
42000760:	00200737          	lui	a4,0x200
42000764:	8f55                	or	a4,a4,a3
42000766:	db98                	sw	a4,48(a5)
42000768:	a819                	j	4200077e <rmt_ll_set_group_clock_src+0x11c>
4200076a:	600967b7          	lui	a5,0x60096
4200076e:	00078793          	mv	a5,a5
42000772:	5b94                	lw	a3,48(a5)
42000774:	00300737          	lui	a4,0x300
42000778:	8f55                	or	a4,a4,a3
4200077a:	db98                	sw	a4,48(a5)
4200077c:	a009                	j	4200077e <rmt_ll_set_group_clock_src+0x11c>
4200077e:	0001                	nop
42000780:	50f2                	lw	ra,60(sp)
42000782:	5462                	lw	s0,56(sp)
42000784:	6121                	addi	sp,sp,64
42000786:	8082                	ret

42000788 <rmt_ll_tx_set_channel_clock_div>:
42000788:	7179                	addi	sp,sp,-48
4200078a:	d606                	sw	ra,44(sp)
4200078c:	d422                	sw	s0,40(sp)
4200078e:	1800                	addi	s0,sp,48
42000790:	fca42e23          	sw	a0,-36(s0)
42000794:	fcb42c23          	sw	a1,-40(s0)
42000798:	fcc42a23          	sw	a2,-44(s0)
4200079c:	fd442783          	lw	a5,-44(s0)
420007a0:	00f037b3          	snez	a5,a5
420007a4:	0ff7f793          	zext.b	a5,a5
420007a8:	cb81                	beqz	a5,420007b8 <rmt_ll_tx_set_channel_clock_div+0x30>
420007aa:	fd442783          	lw	a5,-44(s0)
420007ae:	1017b793          	sltiu	a5,a5,257
420007b2:	0ff7f793          	zext.b	a5,a5
420007b6:	e389                	bnez	a5,420007b8 <rmt_ll_tx_set_channel_clock_div+0x30>
420007b8:	fd442703          	lw	a4,-44(s0)
420007bc:	0ff00793          	li	a5,255
420007c0:	00e7f463          	bgeu	a5,a4,420007c8 <rmt_ll_tx_set_channel_clock_div+0x40>
420007c4:	fc042a23          	sw	zero,-44(s0)
420007c8:	fdc42703          	lw	a4,-36(s0)
420007cc:	fd842783          	lw	a5,-40(s0)
420007d0:	0791                	addi	a5,a5,4 # 60096004 <PCR+0x4>
420007d2:	078a                	slli	a5,a5,0x2
420007d4:	97ba                	add	a5,a5,a4
420007d6:	439c                	lw	a5,0(a5)
420007d8:	fef42623          	sw	a5,-20(s0)
420007dc:	fec42783          	lw	a5,-20(s0)
420007e0:	fef42423          	sw	a5,-24(s0)
420007e4:	fd442783          	lw	a5,-44(s0)
420007e8:	0ff7f793          	zext.b	a5,a5
420007ec:	fef404a3          	sb	a5,-23(s0)
420007f0:	fe842703          	lw	a4,-24(s0)
420007f4:	fdc42683          	lw	a3,-36(s0)
420007f8:	fd842783          	lw	a5,-40(s0)
420007fc:	0791                	addi	a5,a5,4
420007fe:	078a                	slli	a5,a5,0x2
42000800:	97b6                	add	a5,a5,a3
42000802:	c398                	sw	a4,0(a5)
42000804:	0001                	nop
42000806:	50b2                	lw	ra,44(sp)
42000808:	5422                	lw	s0,40(sp)
4200080a:	6145                	addi	sp,sp,48
4200080c:	8082                	ret

4200080e <rmt_ll_tx_enable_carrier_modulation>:
4200080e:	1101                	addi	sp,sp,-32
42000810:	ce06                	sw	ra,28(sp)
42000812:	cc22                	sw	s0,24(sp)
42000814:	1000                	addi	s0,sp,32
42000816:	fea42623          	sw	a0,-20(s0)
4200081a:	feb42423          	sw	a1,-24(s0)
4200081e:	87b2                	mv	a5,a2
42000820:	fef403a3          	sb	a5,-25(s0)
42000824:	fec42703          	lw	a4,-20(s0)
42000828:	fe842783          	lw	a5,-24(s0)
4200082c:	0791                	addi	a5,a5,4
4200082e:	078a                	slli	a5,a5,0x2
42000830:	97ba                	add	a5,a5,a4
42000832:	fe744703          	lbu	a4,-25(s0)
42000836:	8b05                	andi	a4,a4,1
42000838:	0756                	slli	a4,a4,0x15
4200083a:	4390                	lw	a2,0(a5)
4200083c:	ffe006b7          	lui	a3,0xffe00
42000840:	16fd                	addi	a3,a3,-1 # ffdfffff <LP_WDT+0x9fd4e3ff>
42000842:	8ef1                	and	a3,a3,a2
42000844:	8f55                	or	a4,a4,a3
42000846:	c398                	sw	a4,0(a5)
42000848:	0001                	nop
4200084a:	40f2                	lw	ra,28(sp)
4200084c:	4462                	lw	s0,24(sp)
4200084e:	6105                	addi	sp,sp,32
42000850:	8082                	ret

42000852 <rmt_gpio_config>:
42000852:	1141                	addi	sp,sp,-16
42000854:	c606                	sw	ra,12(sp)
42000856:	c422                	sw	s0,8(sp)
42000858:	0800                	addi	s0,sp,16
4200085a:	600917b7          	lui	a5,0x60091
4200085e:	00078793          	mv	a5,a5
42000862:	10000713          	li	a4,256
42000866:	d3d8                	sw	a4,36(a5)
42000868:	420037b7          	lui	a5,0x42003
4200086c:	5a878793          	addi	a5,a5,1448 # 420035a8 <GPIO_PIN_MUX_REG>
42000870:	539c                	lw	a5,32(a5)
42000872:	4398                	lw	a4,0(a5)
42000874:	77e5                	lui	a5,0xffff9
42000876:	17fd                	addi	a5,a5,-1 # ffff8fff <LP_WDT+0x9ff473ff>
42000878:	8f7d                	and	a4,a4,a5
4200087a:	420037b7          	lui	a5,0x42003
4200087e:	5a878793          	addi	a5,a5,1448 # 420035a8 <GPIO_PIN_MUX_REG>
42000882:	539c                	lw	a5,32(a5)
42000884:	86be                	mv	a3,a5
42000886:	6785                	lui	a5,0x1
42000888:	8fd9                	or	a5,a5,a4
4200088a:	c29c                	sw	a5,0(a3)
4200088c:	600917b7          	lui	a5,0x60091
42000890:	00078793          	mv	a5,a5
42000894:	04700713          	li	a4,71
42000898:	56e78a23          	sb	a4,1396(a5) # 60091574 <GPIO+0x574>
4200089c:	600917b7          	lui	a5,0x60091
420008a0:	00078793          	mv	a5,a5
420008a4:	5747a703          	lw	a4,1396(a5) # 60091574 <GPIO+0x574>
420008a8:	20076713          	ori	a4,a4,512
420008ac:	56e7aa23          	sw	a4,1396(a5)
420008b0:	0001                	nop
420008b2:	40b2                	lw	ra,12(sp)
420008b4:	4422                	lw	s0,8(sp)
420008b6:	0141                	addi	sp,sp,16
420008b8:	8082                	ret

420008ba <ws2812_send>:
420008ba:	7139                	addi	sp,sp,-64
420008bc:	de06                	sw	ra,60(sp)
420008be:	dc22                	sw	s0,56(sp)
420008c0:	0080                	addi	s0,sp,64
420008c2:	fca42623          	sw	a0,-52(s0)
420008c6:	fcc44783          	lbu	a5,-52(s0)
420008ca:	853e                	mv	a0,a5
420008cc:	23f000ef          	jal	4200130a <__floatsidf>
420008d0:	872a                	mv	a4,a0
420008d2:	87ae                	mv	a5,a1
420008d4:	420036b7          	lui	a3,0x42003
420008d8:	4306a603          	lw	a2,1072(a3) # 42003430 <__getreent+0xf6>
420008dc:	4346a683          	lw	a3,1076(a3)
420008e0:	853a                	mv	a0,a4
420008e2:	85be                	mv	a1,a5
420008e4:	2351                	jal	42000e68 <__muldf3>
420008e6:	872a                	mv	a4,a0
420008e8:	87ae                	mv	a5,a1
420008ea:	853a                	mv	a0,a4
420008ec:	85be                	mv	a1,a5
420008ee:	1bb000ef          	jal	420012a8 <__fixunsdfsi>
420008f2:	87aa                	mv	a5,a0
420008f4:	0ff7f793          	zext.b	a5,a5
420008f8:	fcf40623          	sb	a5,-52(s0)
420008fc:	fcd44783          	lbu	a5,-51(s0)
42000900:	853e                	mv	a0,a5
42000902:	209000ef          	jal	4200130a <__floatsidf>
42000906:	872a                	mv	a4,a0
42000908:	87ae                	mv	a5,a1
4200090a:	420036b7          	lui	a3,0x42003
4200090e:	4306a603          	lw	a2,1072(a3) # 42003430 <__getreent+0xf6>
42000912:	4346a683          	lw	a3,1076(a3)
42000916:	853a                	mv	a0,a4
42000918:	85be                	mv	a1,a5
4200091a:	23b9                	jal	42000e68 <__muldf3>
4200091c:	872a                	mv	a4,a0
4200091e:	87ae                	mv	a5,a1
42000920:	853a                	mv	a0,a4
42000922:	85be                	mv	a1,a5
42000924:	185000ef          	jal	420012a8 <__fixunsdfsi>
42000928:	87aa                	mv	a5,a0
4200092a:	0ff7f793          	zext.b	a5,a5
4200092e:	fcf406a3          	sb	a5,-51(s0)
42000932:	fce44783          	lbu	a5,-50(s0)
42000936:	853e                	mv	a0,a5
42000938:	1d3000ef          	jal	4200130a <__floatsidf>
4200093c:	872a                	mv	a4,a0
4200093e:	87ae                	mv	a5,a1
42000940:	420036b7          	lui	a3,0x42003
42000944:	4306a603          	lw	a2,1072(a3) # 42003430 <__getreent+0xf6>
42000948:	4346a683          	lw	a3,1076(a3)
4200094c:	853a                	mv	a0,a4
4200094e:	85be                	mv	a1,a5
42000950:	2b21                	jal	42000e68 <__muldf3>
42000952:	872a                	mv	a4,a0
42000954:	87ae                	mv	a5,a1
42000956:	853a                	mv	a0,a4
42000958:	85be                	mv	a1,a5
4200095a:	14f000ef          	jal	420012a8 <__fixunsdfsi>
4200095e:	87aa                	mv	a5,a0
42000960:	0ff7f793          	zext.b	a5,a5
42000964:	fcf40723          	sb	a5,-50(s0)
42000968:	600067b7          	lui	a5,0x60006
4200096c:	00078793          	mv	a5,a5
42000970:	fef42423          	sw	a5,-24(s0)
42000974:	fe042223          	sw	zero,-28(s0)
42000978:	fe842703          	lw	a4,-24(s0)
4200097c:	fe442783          	lw	a5,-28(s0)
42000980:	0791                	addi	a5,a5,4 # 60006004 <RMT+0x4>
42000982:	078a                	slli	a5,a5,0x2
42000984:	97ba                	add	a5,a5,a4
42000986:	4398                	lw	a4,0(a5)
42000988:	00276713          	ori	a4,a4,2
4200098c:	c398                	sw	a4,0(a5)
4200098e:	fe842703          	lw	a4,-24(s0)
42000992:	fe442783          	lw	a5,-28(s0)
42000996:	0791                	addi	a5,a5,4
42000998:	078a                	slli	a5,a5,0x2
4200099a:	97ba                	add	a5,a5,a4
4200099c:	4398                	lw	a4,0(a5)
4200099e:	9b75                	andi	a4,a4,-3
420009a0:	c398                	sw	a4,0(a5)
420009a2:	fe842703          	lw	a4,-24(s0)
420009a6:	fe442783          	lw	a5,-28(s0)
420009aa:	0791                	addi	a5,a5,4
420009ac:	078a                	slli	a5,a5,0x2
420009ae:	97ba                	add	a5,a5,a4
420009b0:	4398                	lw	a4,0(a5)
420009b2:	00476713          	ori	a4,a4,4
420009b6:	c398                	sw	a4,0(a5)
420009b8:	fe842703          	lw	a4,-24(s0)
420009bc:	fe442783          	lw	a5,-28(s0)
420009c0:	0791                	addi	a5,a5,4
420009c2:	078a                	slli	a5,a5,0x2
420009c4:	97ba                	add	a5,a5,a4
420009c6:	4398                	lw	a4,0(a5)
420009c8:	9b6d                	andi	a4,a4,-5
420009ca:	c398                	sw	a4,0(a5)
420009cc:	0001                	nop
420009ce:	fc042c23          	sw	zero,-40(s0)
420009d2:	47dd                	li	a5,23
420009d4:	fef42623          	sw	a5,-20(s0)
420009d8:	a0c1                	j	42000a98 <ws2812_send+0x1de>
420009da:	fcc42703          	lw	a4,-52(s0)
420009de:	fec42783          	lw	a5,-20(s0)
420009e2:	4685                	li	a3,1
420009e4:	00f697b3          	sll	a5,a3,a5
420009e8:	8ff9                	and	a5,a5,a4
420009ea:	cbb1                	beqz	a5,42000a3e <ws2812_send+0x184>
420009ec:	fd842703          	lw	a4,-40(s0)
420009f0:	77e1                	lui	a5,0xffff8
420009f2:	8ff9                	and	a5,a5,a4
420009f4:	0087e793          	ori	a5,a5,8
420009f8:	fcf42c23          	sw	a5,-40(s0)
420009fc:	fd842703          	lw	a4,-40(s0)
42000a00:	77e1                	lui	a5,0xffff8
42000a02:	17fd                	addi	a5,a5,-1 # ffff7fff <LP_WDT+0x9ff463ff>
42000a04:	8ff9                	and	a5,a5,a4
42000a06:	fcf42c23          	sw	a5,-40(s0)
42000a0a:	fd842703          	lw	a4,-40(s0)
42000a0e:	800107b7          	lui	a5,0x80010
42000a12:	17fd                	addi	a5,a5,-1 # 8000ffff <LP_WDT+0x1ff5e3ff>
42000a14:	8f7d                	and	a4,a4,a5
42000a16:	001007b7          	lui	a5,0x100
42000a1a:	8fd9                	or	a5,a5,a4
42000a1c:	fcf42c23          	sw	a5,-40(s0)
42000a20:	fd842703          	lw	a4,-40(s0)
42000a24:	800007b7          	lui	a5,0x80000
42000a28:	8fd9                	or	a5,a5,a4
42000a2a:	fcf42c23          	sw	a5,-40(s0)
42000a2e:	fd842703          	lw	a4,-40(s0)
42000a32:	600067b7          	lui	a5,0x60006
42000a36:	00078793          	mv	a5,a5
42000a3a:	c398                	sw	a4,0(a5)
42000a3c:	a889                	j	42000a8e <ws2812_send+0x1d4>
42000a3e:	fd842703          	lw	a4,-40(s0)
42000a42:	77e1                	lui	a5,0xffff8
42000a44:	8ff9                	and	a5,a5,a4
42000a46:	0107e793          	ori	a5,a5,16
42000a4a:	fcf42c23          	sw	a5,-40(s0)
42000a4e:	fd842703          	lw	a4,-40(s0)
42000a52:	77e1                	lui	a5,0xffff8
42000a54:	17fd                	addi	a5,a5,-1 # ffff7fff <LP_WDT+0x9ff463ff>
42000a56:	8ff9                	and	a5,a5,a4
42000a58:	fcf42c23          	sw	a5,-40(s0)
42000a5c:	fd842703          	lw	a4,-40(s0)
42000a60:	800107b7          	lui	a5,0x80010
42000a64:	17fd                	addi	a5,a5,-1 # 8000ffff <LP_WDT+0x1ff5e3ff>
42000a66:	8f7d                	and	a4,a4,a5
42000a68:	000807b7          	lui	a5,0x80
42000a6c:	8fd9                	or	a5,a5,a4
42000a6e:	fcf42c23          	sw	a5,-40(s0)
42000a72:	fd842703          	lw	a4,-40(s0)
42000a76:	800007b7          	lui	a5,0x80000
42000a7a:	8fd9                	or	a5,a5,a4
42000a7c:	fcf42c23          	sw	a5,-40(s0)
42000a80:	fd842703          	lw	a4,-40(s0)
42000a84:	600067b7          	lui	a5,0x60006
42000a88:	00078793          	mv	a5,a5
42000a8c:	c398                	sw	a4,0(a5)
42000a8e:	fec42783          	lw	a5,-20(s0)
42000a92:	17fd                	addi	a5,a5,-1 # 60005fff <I2C0+0x1fff>
42000a94:	fef42623          	sw	a5,-20(s0)
42000a98:	fec42783          	lw	a5,-20(s0)
42000a9c:	f207dfe3          	bgez	a5,420009da <ws2812_send+0x120>
42000aa0:	fd842703          	lw	a4,-40(s0)
42000aa4:	77e1                	lui	a5,0xffff8
42000aa6:	8ff9                	and	a5,a5,a4
42000aa8:	3e87e793          	ori	a5,a5,1000
42000aac:	fcf42c23          	sw	a5,-40(s0)
42000ab0:	fd842703          	lw	a4,-40(s0)
42000ab4:	77e1                	lui	a5,0xffff8
42000ab6:	17fd                	addi	a5,a5,-1 # ffff7fff <LP_WDT+0x9ff463ff>
42000ab8:	8ff9                	and	a5,a5,a4
42000aba:	fcf42c23          	sw	a5,-40(s0)
42000abe:	fd842703          	lw	a4,-40(s0)
42000ac2:	800107b7          	lui	a5,0x80010
42000ac6:	17fd                	addi	a5,a5,-1 # 8000ffff <LP_WDT+0x1ff5e3ff>
42000ac8:	8f7d                	and	a4,a4,a5
42000aca:	001007b7          	lui	a5,0x100
42000ace:	8fd9                	or	a5,a5,a4
42000ad0:	fcf42c23          	sw	a5,-40(s0)
42000ad4:	fd842703          	lw	a4,-40(s0)
42000ad8:	800007b7          	lui	a5,0x80000
42000adc:	17fd                	addi	a5,a5,-1 # 7fffffff <LP_WDT+0x1ff4e3ff>
42000ade:	8ff9                	and	a5,a5,a4
42000ae0:	fcf42c23          	sw	a5,-40(s0)
42000ae4:	600067b7          	lui	a5,0x60006
42000ae8:	00078793          	mv	a5,a5
42000aec:	3e800713          	li	a4,1000
42000af0:	c398                	sw	a4,0(a5)
42000af2:	600067b7          	lui	a5,0x60006
42000af6:	00078793          	mv	a5,a5
42000afa:	fef42023          	sw	a5,-32(s0)
42000afe:	fc042e23          	sw	zero,-36(s0)
42000b02:	fe042703          	lw	a4,-32(s0)
42000b06:	fdc42783          	lw	a5,-36(s0)
42000b0a:	0791                	addi	a5,a5,4 # 60006004 <RMT+0x4>
42000b0c:	078a                	slli	a5,a5,0x2
42000b0e:	97ba                	add	a5,a5,a4
42000b10:	4394                	lw	a3,0(a5)
42000b12:	01000737          	lui	a4,0x1000
42000b16:	8f55                	or	a4,a4,a3
42000b18:	c398                	sw	a4,0(a5)
42000b1a:	fe042703          	lw	a4,-32(s0)
42000b1e:	fdc42783          	lw	a5,-36(s0)
42000b22:	0791                	addi	a5,a5,4
42000b24:	078a                	slli	a5,a5,0x2
42000b26:	97ba                	add	a5,a5,a4
42000b28:	4398                	lw	a4,0(a5)
42000b2a:	00176713          	ori	a4,a4,1
42000b2e:	c398                	sw	a4,0(a5)
42000b30:	0001                	nop
42000b32:	0001                	nop
42000b34:	50f2                	lw	ra,60(sp)
42000b36:	5462                	lw	s0,56(sp)
42000b38:	6121                	addi	sp,sp,64
42000b3a:	8082                	ret

42000b3c <ws2812_init>:
42000b3c:	1101                	addi	sp,sp,-32
42000b3e:	ce06                	sw	ra,28(sp)
42000b40:	cc22                	sw	s0,24(sp)
42000b42:	1000                	addi	s0,sp,32
42000b44:	3339                	jal	42000852 <rmt_gpio_config>
42000b46:	4781                	li	a5,0
42000b48:	4701                	li	a4,0
42000b4a:	4689                	li	a3,2
42000b4c:	4625                	li	a2,9
42000b4e:	4581                	li	a1,0
42000b50:	60006537          	lui	a0,0x60006
42000b54:	00050513          	mv	a0,a0
42000b58:	3629                	jal	42000662 <rmt_ll_set_group_clock_src>
42000b5a:	4601                	li	a2,0
42000b5c:	4581                	li	a1,0
42000b5e:	600067b7          	lui	a5,0x60006
42000b62:	00078513          	mv	a0,a5
42000b66:	3165                	jal	4200080e <rmt_ll_tx_enable_carrier_modulation>
42000b68:	4605                	li	a2,1
42000b6a:	4581                	li	a1,0
42000b6c:	600067b7          	lui	a5,0x60006
42000b70:	00078513          	mv	a0,a5
42000b74:	3911                	jal	42000788 <rmt_ll_tx_set_channel_clock_div>
42000b76:	fe042623          	sw	zero,-20(s0)
42000b7a:	fec42503          	lw	a0,-20(s0)
42000b7e:	3b35                	jal	420008ba <ws2812_send>
42000b80:	0001                	nop
42000b82:	40f2                	lw	ra,28(sp)
42000b84:	4462                	lw	s0,24(sp)
42000b86:	6105                	addi	sp,sp,32
42000b88:	8082                	ret

42000b8a <watchdog_disable>:
42000b8a:	715d                	addi	sp,sp,-80
42000b8c:	c686                	sw	ra,76(sp)
42000b8e:	c4a2                	sw	s0,72(sp)
42000b90:	0880                	addi	s0,sp,80
42000b92:	600b27b7          	lui	a5,0x600b2
42000b96:	c0078793          	addi	a5,a5,-1024 # 600b1c00 <LP_WDT>
42000b9a:	faf42a23          	sw	a5,-76(s0)
42000b9e:	fb442783          	lw	a5,-76(s0)
42000ba2:	50d84737          	lui	a4,0x50d84
42000ba6:	aa170713          	addi	a4,a4,-1375 # 50d83aa1 <__text_end+0xed80401>
42000baa:	cf98                	sw	a4,24(a5)
42000bac:	0001                	nop
42000bae:	600b27b7          	lui	a5,0x600b2
42000bb2:	c0078793          	addi	a5,a5,-1024 # 600b1c00 <LP_WDT>
42000bb6:	faf42c23          	sw	a5,-72(s0)
42000bba:	fb842783          	lw	a5,-72(s0)
42000bbe:	4394                	lw	a3,0(a5)
42000bc0:	80000737          	lui	a4,0x80000
42000bc4:	177d                	addi	a4,a4,-1 # 7fffffff <LP_WDT+0x1ff4e3ff>
42000bc6:	8f75                	and	a4,a4,a3
42000bc8:	c398                	sw	a4,0(a5)
42000bca:	0001                	nop
42000bcc:	600b27b7          	lui	a5,0x600b2
42000bd0:	c0078793          	addi	a5,a5,-1024 # 600b1c00 <LP_WDT>
42000bd4:	fcf42023          	sw	a5,-64(s0)
42000bd8:	fa040fa3          	sb	zero,-65(s0)
42000bdc:	fbf44703          	lbu	a4,-65(s0)
42000be0:	fc042783          	lw	a5,-64(s0)
42000be4:	8b05                	andi	a4,a4,1
42000be6:	0732                	slli	a4,a4,0xc
42000be8:	4390                	lw	a2,0(a5)
42000bea:	76fd                	lui	a3,0xfffff
42000bec:	16fd                	addi	a3,a3,-1 # ffffefff <LP_WDT+0x9ff4d3ff>
42000bee:	8ef1                	and	a3,a3,a2
42000bf0:	8f55                	or	a4,a4,a3
42000bf2:	c398                	sw	a4,0(a5)
42000bf4:	0001                	nop
42000bf6:	600b27b7          	lui	a5,0x600b2
42000bfa:	c0078793          	addi	a5,a5,-1024 # 600b1c00 <LP_WDT>
42000bfe:	fcf42223          	sw	a5,-60(s0)
42000c02:	fc442783          	lw	a5,-60(s0)
42000c06:	0007ac23          	sw	zero,24(a5)
42000c0a:	0001                	nop
42000c0c:	600087b7          	lui	a5,0x60008
42000c10:	00078793          	mv	a5,a5
42000c14:	fcf42423          	sw	a5,-56(s0)
42000c18:	fc842783          	lw	a5,-56(s0)
42000c1c:	50d84737          	lui	a4,0x50d84
42000c20:	aa170713          	addi	a4,a4,-1375 # 50d83aa1 <__text_end+0xed80401>
42000c24:	d3f8                	sw	a4,100(a5)
42000c26:	0001                	nop
42000c28:	600087b7          	lui	a5,0x60008
42000c2c:	00078793          	mv	a5,a5
42000c30:	fcf42623          	sw	a5,-52(s0)
42000c34:	fcc42783          	lw	a5,-52(s0)
42000c38:	47b4                	lw	a3,72(a5)
42000c3a:	80000737          	lui	a4,0x80000
42000c3e:	177d                	addi	a4,a4,-1 # 7fffffff <LP_WDT+0x1ff4e3ff>
42000c40:	8f75                	and	a4,a4,a3
42000c42:	c7b8                	sw	a4,72(a5)
42000c44:	0001                	nop
42000c46:	600087b7          	lui	a5,0x60008
42000c4a:	00078793          	mv	a5,a5
42000c4e:	fcf42a23          	sw	a5,-44(s0)
42000c52:	fc0409a3          	sb	zero,-45(s0)
42000c56:	fd344703          	lbu	a4,-45(s0)
42000c5a:	fd442783          	lw	a5,-44(s0)
42000c5e:	8b05                	andi	a4,a4,1
42000c60:	073a                	slli	a4,a4,0xe
42000c62:	47b0                	lw	a2,72(a5)
42000c64:	76f1                	lui	a3,0xffffc
42000c66:	16fd                	addi	a3,a3,-1 # ffffbfff <LP_WDT+0x9ff4a3ff>
42000c68:	8ef1                	and	a3,a3,a2
42000c6a:	8f55                	or	a4,a4,a3
42000c6c:	c7b8                	sw	a4,72(a5)
42000c6e:	fd442783          	lw	a5,-44(s0)
42000c72:	47b4                	lw	a3,72(a5)
42000c74:	00400737          	lui	a4,0x400
42000c78:	8f55                	or	a4,a4,a3
42000c7a:	c7b8                	sw	a4,72(a5)
42000c7c:	0001                	nop
42000c7e:	600087b7          	lui	a5,0x60008
42000c82:	00078793          	mv	a5,a5
42000c86:	fcf42c23          	sw	a5,-40(s0)
42000c8a:	fd842783          	lw	a5,-40(s0)
42000c8e:	0607a223          	sw	zero,100(a5) # 60008064 <TIMERG0+0x64>
42000c92:	0001                	nop
42000c94:	600097b7          	lui	a5,0x60009
42000c98:	00078793          	mv	a5,a5
42000c9c:	fcf42e23          	sw	a5,-36(s0)
42000ca0:	fdc42783          	lw	a5,-36(s0)
42000ca4:	50d84737          	lui	a4,0x50d84
42000ca8:	aa170713          	addi	a4,a4,-1375 # 50d83aa1 <__text_end+0xed80401>
42000cac:	d3f8                	sw	a4,100(a5)
42000cae:	0001                	nop
42000cb0:	600097b7          	lui	a5,0x60009
42000cb4:	00078793          	mv	a5,a5
42000cb8:	fef42023          	sw	a5,-32(s0)
42000cbc:	fe042783          	lw	a5,-32(s0)
42000cc0:	47b4                	lw	a3,72(a5)
42000cc2:	80000737          	lui	a4,0x80000
42000cc6:	177d                	addi	a4,a4,-1 # 7fffffff <LP_WDT+0x1ff4e3ff>
42000cc8:	8f75                	and	a4,a4,a3
42000cca:	c7b8                	sw	a4,72(a5)
42000ccc:	0001                	nop
42000cce:	600097b7          	lui	a5,0x60009
42000cd2:	00078793          	mv	a5,a5
42000cd6:	fef42423          	sw	a5,-24(s0)
42000cda:	fe0403a3          	sb	zero,-25(s0)
42000cde:	fe744703          	lbu	a4,-25(s0)
42000ce2:	fe842783          	lw	a5,-24(s0)
42000ce6:	8b05                	andi	a4,a4,1
42000ce8:	073a                	slli	a4,a4,0xe
42000cea:	47b0                	lw	a2,72(a5)
42000cec:	76f1                	lui	a3,0xffffc
42000cee:	16fd                	addi	a3,a3,-1 # ffffbfff <LP_WDT+0x9ff4a3ff>
42000cf0:	8ef1                	and	a3,a3,a2
42000cf2:	8f55                	or	a4,a4,a3
42000cf4:	c7b8                	sw	a4,72(a5)
42000cf6:	fe842783          	lw	a5,-24(s0)
42000cfa:	47b4                	lw	a3,72(a5)
42000cfc:	00400737          	lui	a4,0x400
42000d00:	8f55                	or	a4,a4,a3
42000d02:	c7b8                	sw	a4,72(a5)
42000d04:	0001                	nop
42000d06:	600097b7          	lui	a5,0x60009
42000d0a:	00078793          	mv	a5,a5
42000d0e:	fef42623          	sw	a5,-20(s0)
42000d12:	fec42783          	lw	a5,-20(s0)
42000d16:	0607a223          	sw	zero,100(a5) # 60009064 <TIMERG1+0x64>
42000d1a:	0001                	nop
42000d1c:	600b27b7          	lui	a5,0x600b2
42000d20:	c0078793          	addi	a5,a5,-1024 # 600b1c00 <LP_WDT>
42000d24:	50d84737          	lui	a4,0x50d84
42000d28:	aa170713          	addi	a4,a4,-1375 # 50d83aa1 <__text_end+0xed80401>
42000d2c:	d398                	sw	a4,32(a5)
42000d2e:	600b27b7          	lui	a5,0x600b2
42000d32:	c0078793          	addi	a5,a5,-1024 # 600b1c00 <LP_WDT>
42000d36:	4fd4                	lw	a3,28(a5)
42000d38:	00040737          	lui	a4,0x40
42000d3c:	8f55                	or	a4,a4,a3
42000d3e:	cfd8                	sw	a4,28(a5)
42000d40:	600b27b7          	lui	a5,0x600b2
42000d44:	c0078793          	addi	a5,a5,-1024 # 600b1c00 <LP_WDT>
42000d48:	0207a023          	sw	zero,32(a5)
42000d4c:	0001                	nop
42000d4e:	40b6                	lw	ra,76(sp)
42000d50:	4426                	lw	s0,72(sp)
42000d52:	6161                	addi	sp,sp,80
42000d54:	8082                	ret

42000d56 <reset_handler>:
42000d56:	1101                	addi	sp,sp,-32
42000d58:	ce06                	sw	ra,28(sp)
42000d5a:	cc22                	sw	s0,24(sp)
42000d5c:	1000                	addi	s0,sp,32
42000d5e:	3535                	jal	42000b8a <watchdog_disable>
42000d60:	4785                	li	a5,1
42000d62:	fef401a3          	sb	a5,-29(s0)
42000d66:	fe344783          	lbu	a5,-29(s0)
42000d6a:	4709                	li	a4,2
42000d6c:	04e78663          	beq	a5,a4,42000db8 <reset_handler+0x62>
42000d70:	4709                	li	a4,2
42000d72:	06f74363          	blt	a4,a5,42000dd8 <reset_handler+0x82>
42000d76:	c789                	beqz	a5,42000d80 <reset_handler+0x2a>
42000d78:	4705                	li	a4,1
42000d7a:	02e78063          	beq	a5,a4,42000d9a <reset_handler+0x44>
42000d7e:	a8a9                	j	42000dd8 <reset_handler+0x82>
42000d80:	600967b7          	lui	a5,0x60096
42000d84:	00078793          	mv	a5,a5
42000d88:	1107a683          	lw	a3,272(a5) # 60096110 <PCR+0x110>
42000d8c:	fffd0737          	lui	a4,0xfffd0
42000d90:	177d                	addi	a4,a4,-1 # fffcffff <LP_WDT+0x9ff1e3ff>
42000d92:	8f75                	and	a4,a4,a3
42000d94:	10e7a823          	sw	a4,272(a5)
42000d98:	a089                	j	42000dda <reset_handler+0x84>
42000d9a:	600967b7          	lui	a5,0x60096
42000d9e:	00078793          	mv	a5,a5
42000da2:	1107a683          	lw	a3,272(a5) # 60096110 <PCR+0x110>
42000da6:	fffd0737          	lui	a4,0xfffd0
42000daa:	177d                	addi	a4,a4,-1 # fffcffff <LP_WDT+0x9ff1e3ff>
42000dac:	8ef9                	and	a3,a3,a4
42000dae:	6741                	lui	a4,0x10
42000db0:	8f55                	or	a4,a4,a3
42000db2:	10e7a823          	sw	a4,272(a5)
42000db6:	a015                	j	42000dda <reset_handler+0x84>
42000db8:	600967b7          	lui	a5,0x60096
42000dbc:	00078793          	mv	a5,a5
42000dc0:	1107a683          	lw	a3,272(a5) # 60096110 <PCR+0x110>
42000dc4:	fffd0737          	lui	a4,0xfffd0
42000dc8:	177d                	addi	a4,a4,-1 # fffcffff <LP_WDT+0x9ff1e3ff>
42000dca:	8ef9                	and	a3,a3,a4
42000dcc:	00020737          	lui	a4,0x20
42000dd0:	8f55                	or	a4,a4,a3
42000dd2:	10e7a823          	sw	a4,272(a5)
42000dd6:	a011                	j	42000dda <reset_handler+0x84>
42000dd8:	2bf1                	jal	420013b4 <abort>
42000dda:	0001                	nop
42000ddc:	420037b7          	lui	a5,0x42003
42000de0:	6a078793          	addi	a5,a5,1696 # 420036a0 <__text_end>
42000de4:	fef42623          	sw	a5,-20(s0)
42000de8:	408007b7          	lui	a5,0x40800
42000dec:	00078793          	mv	a5,a5
42000df0:	fef42423          	sw	a5,-24(s0)
42000df4:	a839                	j	42000e12 <reset_handler+0xbc>
42000df6:	fec42703          	lw	a4,-20(s0)
42000dfa:	00470793          	addi	a5,a4,4 # 20004 <rtc_get_reset_reason-0x3ffe0014>
42000dfe:	fef42623          	sw	a5,-20(s0)
42000e02:	fe842783          	lw	a5,-24(s0)
42000e06:	00478693          	addi	a3,a5,4 # 40800004 <__sglue+0x4>
42000e0a:	fed42423          	sw	a3,-24(s0)
42000e0e:	4318                	lw	a4,0(a4)
42000e10:	c398                	sw	a4,0(a5)
42000e12:	fe842703          	lw	a4,-24(s0)
42000e16:	408007b7          	lui	a5,0x40800
42000e1a:	58c78793          	addi	a5,a5,1420 # 4080058c <__data_end>
42000e1e:	fcf76ce3          	bltu	a4,a5,42000df6 <reset_handler+0xa0>
42000e22:	408007b7          	lui	a5,0x40800
42000e26:	59078793          	addi	a5,a5,1424 # 40800590 <__stdio_exit_handler>
42000e2a:	fef42223          	sw	a5,-28(s0)
42000e2e:	a809                	j	42000e40 <reset_handler+0xea>
42000e30:	fe442783          	lw	a5,-28(s0)
42000e34:	00478713          	addi	a4,a5,4
42000e38:	fee42223          	sw	a4,-28(s0)
42000e3c:	0007a023          	sw	zero,0(a5)
42000e40:	fe442703          	lw	a4,-28(s0)
42000e44:	408007b7          	lui	a5,0x40800
42000e48:	79078793          	addi	a5,a5,1936 # 40800790 <__bss_end>
42000e4c:	fef762e3          	bltu	a4,a5,42000e30 <reset_handler+0xda>
42000e50:	200027b7          	lui	a5,0x20002
42000e54:	80478793          	addi	a5,a5,-2044 # 20001804 <rtc_get_reset_reason-0x1fffe814>
42000e58:	4398                	lw	a4,0(a5)
42000e5a:	00176713          	ori	a4,a4,1
42000e5e:	c398                	sw	a4,0(a5)
42000e60:	0001                	nop
42000e62:	9c8ff0ef          	jal	4200002a <main>
42000e66:	a001                	j	42000e66 <reset_handler+0x110>

42000e68 <__muldf3>:
42000e68:	7179                	addi	sp,sp,-48
42000e6a:	c65e                	sw	s7,12(sp)
42000e6c:	0145db93          	srli	s7,a1,0x14
42000e70:	d422                	sw	s0,40(sp)
42000e72:	d226                	sw	s1,36(sp)
42000e74:	ca56                	sw	s5,20(sp)
42000e76:	c85a                	sw	s6,16(sp)
42000e78:	c462                	sw	s8,8(sp)
42000e7a:	00c59493          	slli	s1,a1,0xc
42000e7e:	d606                	sw	ra,44(sp)
42000e80:	d04a                	sw	s2,32(sp)
42000e82:	ce4e                	sw	s3,28(sp)
42000e84:	cc52                	sw	s4,24(sp)
42000e86:	c266                	sw	s9,4(sp)
42000e88:	7ffbfb93          	andi	s7,s7,2047
42000e8c:	842a                	mv	s0,a0
42000e8e:	8c32                	mv	s8,a2
42000e90:	8ab6                	mv	s5,a3
42000e92:	80b1                	srli	s1,s1,0xc
42000e94:	01f5db13          	srli	s6,a1,0x1f
42000e98:	080b8b63          	beqz	s7,42000f2e <__muldf3+0xc6>
42000e9c:	7ff00793          	li	a5,2047
42000ea0:	0cfb8f63          	beq	s7,a5,42000f7e <__muldf3+0x116>
42000ea4:	048e                	slli	s1,s1,0x3
42000ea6:	01d55793          	srli	a5,a0,0x1d
42000eaa:	8fc5                	or	a5,a5,s1
42000eac:	008004b7          	lui	s1,0x800
42000eb0:	8cdd                	or	s1,s1,a5
42000eb2:	00351a13          	slli	s4,a0,0x3
42000eb6:	c01b8b93          	addi	s7,s7,-1023
42000eba:	4c81                	li	s9,0
42000ebc:	014ad693          	srli	a3,s5,0x14
42000ec0:	00ca9413          	slli	s0,s5,0xc
42000ec4:	7ff6f693          	andi	a3,a3,2047
42000ec8:	8031                	srli	s0,s0,0xc
42000eca:	01fada93          	srli	s5,s5,0x1f
42000ece:	c6f1                	beqz	a3,42000f9a <__muldf3+0x132>
42000ed0:	7ff00793          	li	a5,2047
42000ed4:	10f68a63          	beq	a3,a5,42000fe8 <__muldf3+0x180>
42000ed8:	040e                	slli	s0,s0,0x3
42000eda:	01dc5793          	srli	a5,s8,0x1d
42000ede:	8fc1                	or	a5,a5,s0
42000ee0:	00800437          	lui	s0,0x800
42000ee4:	8c5d                	or	s0,s0,a5
42000ee6:	c0168693          	addi	a3,a3,-1023
42000eea:	003c1793          	slli	a5,s8,0x3
42000eee:	4501                	li	a0,0
42000ef0:	002c9713          	slli	a4,s9,0x2
42000ef4:	9bb6                	add	s7,s7,a3
42000ef6:	8f49                	or	a4,a4,a0
42000ef8:	46a9                	li	a3,10
42000efa:	001b8593          	addi	a1,s7,1
42000efe:	12e6c063          	blt	a3,a4,4200101e <__muldf3+0x1b6>
42000f02:	4809                	li	a6,2
42000f04:	015b4633          	xor	a2,s6,s5
42000f08:	4685                	li	a3,1
42000f0a:	0ee84c63          	blt	a6,a4,42001002 <__muldf3+0x19a>
42000f0e:	177d                	addi	a4,a4,-1
42000f10:	12e6e163          	bltu	a3,a4,42001032 <__muldf3+0x1ca>
42000f14:	8caa                	mv	s9,a0
42000f16:	4709                	li	a4,2
42000f18:	36ec8f63          	beq	s9,a4,42001296 <__muldf3+0x42e>
42000f1c:	470d                	li	a4,3
42000f1e:	36ec8863          	beq	s9,a4,4200128e <__muldf3+0x426>
42000f22:	4705                	li	a4,1
42000f24:	24ec9c63          	bne	s9,a4,4200117c <__muldf3+0x314>
42000f28:	4401                	li	s0,0
42000f2a:	4681                	li	a3,0
42000f2c:	a625                	j	42001254 <__muldf3+0x3ec>
42000f2e:	00a4ea33          	or	s4,s1,a0
42000f32:	040a0d63          	beqz	s4,42000f8c <__muldf3+0x124>
42000f36:	c49d                	beqz	s1,42000f64 <__muldf3+0xfc>
42000f38:	8526                	mv	a0,s1
42000f3a:	293d                	jal	42001378 <__clzsi2>
42000f3c:	ff550713          	addi	a4,a0,-11 # 60005ff5 <I2C0+0x1ff5>
42000f40:	47f5                	li	a5,29
42000f42:	ff850693          	addi	a3,a0,-8
42000f46:	8f99                	sub	a5,a5,a4
42000f48:	00d494b3          	sll	s1,s1,a3
42000f4c:	00f457b3          	srl	a5,s0,a5
42000f50:	8fc5                	or	a5,a5,s1
42000f52:	00d414b3          	sll	s1,s0,a3
42000f56:	c0d00b93          	li	s7,-1011
42000f5a:	8a26                	mv	s4,s1
42000f5c:	40ab8bb3          	sub	s7,s7,a0
42000f60:	84be                	mv	s1,a5
42000f62:	bfa1                	j	42000eba <__muldf3+0x52>
42000f64:	2911                	jal	42001378 <__clzsi2>
42000f66:	87aa                	mv	a5,a0
42000f68:	01578713          	addi	a4,a5,21
42000f6c:	46f1                	li	a3,28
42000f6e:	02050513          	addi	a0,a0,32
42000f72:	fce6d7e3          	bge	a3,a4,42000f40 <__muldf3+0xd8>
42000f76:	17e1                	addi	a5,a5,-8
42000f78:	00f417b3          	sll	a5,s0,a5
42000f7c:	bfe9                	j	42000f56 <__muldf3+0xee>
42000f7e:	00a4ea33          	or	s4,s1,a0
42000f82:	000a1963          	bnez	s4,42000f94 <__muldf3+0x12c>
42000f86:	4481                	li	s1,0
42000f88:	4c89                	li	s9,2
42000f8a:	bf0d                	j	42000ebc <__muldf3+0x54>
42000f8c:	4481                	li	s1,0
42000f8e:	4b81                	li	s7,0
42000f90:	4c85                	li	s9,1
42000f92:	b72d                	j	42000ebc <__muldf3+0x54>
42000f94:	8a2a                	mv	s4,a0
42000f96:	4c8d                	li	s9,3
42000f98:	b715                	j	42000ebc <__muldf3+0x54>
42000f9a:	018467b3          	or	a5,s0,s8
42000f9e:	cbb9                	beqz	a5,42000ff4 <__muldf3+0x18c>
42000fa0:	c415                	beqz	s0,42000fcc <__muldf3+0x164>
42000fa2:	8522                	mv	a0,s0
42000fa4:	2ed1                	jal	42001378 <__clzsi2>
42000fa6:	ff550693          	addi	a3,a0,-11
42000faa:	4775                	li	a4,29
42000fac:	ff850793          	addi	a5,a0,-8
42000fb0:	8f15                	sub	a4,a4,a3
42000fb2:	00f41433          	sll	s0,s0,a5
42000fb6:	00ec5733          	srl	a4,s8,a4
42000fba:	8f41                	or	a4,a4,s0
42000fbc:	00fc1433          	sll	s0,s8,a5
42000fc0:	c0d00693          	li	a3,-1011
42000fc4:	87a2                	mv	a5,s0
42000fc6:	8e89                	sub	a3,a3,a0
42000fc8:	843a                	mv	s0,a4
42000fca:	b715                	j	42000eee <__muldf3+0x86>
42000fcc:	8562                	mv	a0,s8
42000fce:	266d                	jal	42001378 <__clzsi2>
42000fd0:	87aa                	mv	a5,a0
42000fd2:	01578693          	addi	a3,a5,21
42000fd6:	4771                	li	a4,28
42000fd8:	02050513          	addi	a0,a0,32
42000fdc:	fcd757e3          	bge	a4,a3,42000faa <__muldf3+0x142>
42000fe0:	17e1                	addi	a5,a5,-8
42000fe2:	00fc1733          	sll	a4,s8,a5
42000fe6:	bfe9                	j	42000fc0 <__muldf3+0x158>
42000fe8:	018467b3          	or	a5,s0,s8
42000fec:	eb81                	bnez	a5,42000ffc <__muldf3+0x194>
42000fee:	4401                	li	s0,0
42000ff0:	4509                	li	a0,2
42000ff2:	bdfd                	j	42000ef0 <__muldf3+0x88>
42000ff4:	4401                	li	s0,0
42000ff6:	4681                	li	a3,0
42000ff8:	4505                	li	a0,1
42000ffa:	bddd                	j	42000ef0 <__muldf3+0x88>
42000ffc:	87e2                	mv	a5,s8
42000ffe:	450d                	li	a0,3
42001000:	bdc5                	j	42000ef0 <__muldf3+0x88>
42001002:	00e69733          	sll	a4,a3,a4
42001006:	53077693          	andi	a3,a4,1328
4200100a:	e28d                	bnez	a3,4200102c <__muldf3+0x1c4>
4200100c:	24077813          	andi	a6,a4,576
42001010:	26081963          	bnez	a6,42001282 <__muldf3+0x41a>
42001014:	08877713          	andi	a4,a4,136
42001018:	cf09                	beqz	a4,42001032 <__muldf3+0x1ca>
4200101a:	8656                	mv	a2,s5
4200101c:	bde5                	j	42000f14 <__muldf3+0xac>
4200101e:	46bd                	li	a3,15
42001020:	26d70763          	beq	a4,a3,4200128e <__muldf3+0x426>
42001024:	46ad                	li	a3,11
42001026:	865a                	mv	a2,s6
42001028:	fed709e3          	beq	a4,a3,4200101a <__muldf3+0x1b2>
4200102c:	8426                	mv	s0,s1
4200102e:	87d2                	mv	a5,s4
42001030:	b5dd                	j	42000f16 <__muldf3+0xae>
42001032:	010a5693          	srli	a3,s4,0x10
42001036:	0107d893          	srli	a7,a5,0x10
4200103a:	0a42                	slli	s4,s4,0x10
4200103c:	07c2                	slli	a5,a5,0x10
4200103e:	010a5a13          	srli	s4,s4,0x10
42001042:	83c1                	srli	a5,a5,0x10
42001044:	02fa0533          	mul	a0,s4,a5
42001048:	02f68e33          	mul	t3,a3,a5
4200104c:	01055813          	srli	a6,a0,0x10
42001050:	03488333          	mul	t1,a7,s4
42001054:	9372                	add	t1,t1,t3
42001056:	981a                	add	a6,a6,t1
42001058:	03168733          	mul	a4,a3,a7
4200105c:	01c87463          	bgeu	a6,t3,42001064 <__muldf3+0x1fc>
42001060:	6341                	lui	t1,0x10
42001062:	971a                	add	a4,a4,t1
42001064:	0542                	slli	a0,a0,0x10
42001066:	8141                	srli	a0,a0,0x10
42001068:	01085f93          	srli	t6,a6,0x10
4200106c:	0842                	slli	a6,a6,0x10
4200106e:	982a                	add	a6,a6,a0
42001070:	01045513          	srli	a0,s0,0x10
42001074:	0442                	slli	s0,s0,0x10
42001076:	8041                	srli	s0,s0,0x10
42001078:	028a0e33          	mul	t3,s4,s0
4200107c:	02868eb3          	mul	t4,a3,s0
42001080:	010e5313          	srli	t1,t3,0x10
42001084:	03450a33          	mul	s4,a0,s4
42001088:	9a76                	add	s4,s4,t4
4200108a:	9352                	add	t1,t1,s4
4200108c:	02a686b3          	mul	a3,a3,a0
42001090:	01d37463          	bgeu	t1,t4,42001098 <__muldf3+0x230>
42001094:	6ec1                	lui	t4,0x10
42001096:	96f6                	add	a3,a3,t4
42001098:	01035f13          	srli	t5,t1,0x10
4200109c:	9f36                	add	t5,t5,a3
4200109e:	01031693          	slli	a3,t1,0x10
420010a2:	0104d313          	srli	t1,s1,0x10
420010a6:	04c2                	slli	s1,s1,0x10
420010a8:	80c1                	srli	s1,s1,0x10
420010aa:	02f48eb3          	mul	t4,s1,a5
420010ae:	0e42                	slli	t3,t3,0x10
420010b0:	010e5e13          	srli	t3,t3,0x10
420010b4:	96f2                	add	a3,a3,t3
420010b6:	9fb6                	add	t6,t6,a3
420010b8:	02f307b3          	mul	a5,t1,a5
420010bc:	010ede13          	srli	t3,t4,0x10
420010c0:	026882b3          	mul	t0,a7,t1
420010c4:	029888b3          	mul	a7,a7,s1
420010c8:	98be                	add	a7,a7,a5
420010ca:	98f2                	add	a7,a7,t3
420010cc:	00f8f463          	bgeu	a7,a5,420010d4 <__muldf3+0x26c>
420010d0:	67c1                	lui	a5,0x10
420010d2:	92be                	add	t0,t0,a5
420010d4:	028487b3          	mul	a5,s1,s0
420010d8:	0ec2                	slli	t4,t4,0x10
420010da:	0108de13          	srli	t3,a7,0x10
420010de:	010ede93          	srli	t4,t4,0x10
420010e2:	08c2                	slli	a7,a7,0x10
420010e4:	98f6                	add	a7,a7,t4
420010e6:	9e16                	add	t3,t3,t0
420010e8:	02830433          	mul	s0,t1,s0
420010ec:	0107de93          	srli	t4,a5,0x10
420010f0:	02650333          	mul	t1,a0,t1
420010f4:	02950533          	mul	a0,a0,s1
420010f8:	9522                	add	a0,a0,s0
420010fa:	9eaa                	add	t4,t4,a0
420010fc:	008ef463          	bgeu	t4,s0,42001104 <__muldf3+0x29c>
42001100:	6541                	lui	a0,0x10
42001102:	932a                	add	t1,t1,a0
42001104:	07c2                	slli	a5,a5,0x10
42001106:	010e9513          	slli	a0,t4,0x10
4200110a:	83c1                	srli	a5,a5,0x10
4200110c:	977e                	add	a4,a4,t6
4200110e:	953e                	add	a0,a0,a5
42001110:	9f2a                	add	t5,t5,a0
42001112:	00d737b3          	sltu	a5,a4,a3
42001116:	97fa                	add	a5,a5,t5
42001118:	98ba                	add	a7,a7,a4
4200111a:	9e3e                	add	t3,t3,a5
4200111c:	00e8b6b3          	sltu	a3,a7,a4
42001120:	96f2                	add	a3,a3,t3
42001122:	00af3533          	sltu	a0,t5,a0
42001126:	01e7bf33          	sltu	t5,a5,t5
4200112a:	00fe3733          	sltu	a4,t3,a5
4200112e:	01e56533          	or	a0,a0,t5
42001132:	01c6be33          	sltu	t3,a3,t3
42001136:	010ede93          	srli	t4,t4,0x10
4200113a:	00989793          	slli	a5,a7,0x9
4200113e:	9576                	add	a0,a0,t4
42001140:	01c76733          	or	a4,a4,t3
42001144:	972a                	add	a4,a4,a0
42001146:	0107e7b3          	or	a5,a5,a6
4200114a:	971a                	add	a4,a4,t1
4200114c:	00f037b3          	snez	a5,a5
42001150:	0178d893          	srli	a7,a7,0x17
42001154:	0726                	slli	a4,a4,0x9
42001156:	0176d413          	srli	s0,a3,0x17
4200115a:	0117e7b3          	or	a5,a5,a7
4200115e:	06a6                	slli	a3,a3,0x9
42001160:	8fd5                	or	a5,a5,a3
42001162:	00771693          	slli	a3,a4,0x7
42001166:	8c59                	or	s0,s0,a4
42001168:	0806d563          	bgez	a3,420011f2 <__muldf3+0x38a>
4200116c:	0017d713          	srli	a4,a5,0x1
42001170:	8b85                	andi	a5,a5,1
42001172:	8f5d                	or	a4,a4,a5
42001174:	01f41793          	slli	a5,s0,0x1f
42001178:	8fd9                	or	a5,a5,a4
4200117a:	8005                	srli	s0,s0,0x1
4200117c:	3ff58713          	addi	a4,a1,1023
42001180:	06e05b63          	blez	a4,420011f6 <__muldf3+0x38e>
42001184:	0077f693          	andi	a3,a5,7
42001188:	ce81                	beqz	a3,420011a0 <__muldf3+0x338>
4200118a:	00f7f693          	andi	a3,a5,15
4200118e:	4511                	li	a0,4
42001190:	00a68863          	beq	a3,a0,420011a0 <__muldf3+0x338>
42001194:	00a786b3          	add	a3,a5,a0
42001198:	00f6b533          	sltu	a0,a3,a5
4200119c:	942a                	add	s0,s0,a0
4200119e:	87b6                	mv	a5,a3
420011a0:	00741693          	slli	a3,s0,0x7
420011a4:	0006d863          	bgez	a3,420011b4 <__muldf3+0x34c>
420011a8:	ff000737          	lui	a4,0xff000
420011ac:	177d                	addi	a4,a4,-1 # feffffff <LP_WDT+0x9ef4e3ff>
420011ae:	8c79                	and	s0,s0,a4
420011b0:	40058713          	addi	a4,a1,1024
420011b4:	7fe00693          	li	a3,2046
420011b8:	0ce6cf63          	blt	a3,a4,42001296 <__muldf3+0x42e>
420011bc:	01d41693          	slli	a3,s0,0x1d
420011c0:	838d                	srli	a5,a5,0x3
420011c2:	8edd                	or	a3,a3,a5
420011c4:	800d                	srli	s0,s0,0x3
420011c6:	0432                	slli	s0,s0,0xc
420011c8:	8031                	srli	s0,s0,0xc
420011ca:	0752                	slli	a4,a4,0x14
420011cc:	50b2                	lw	ra,44(sp)
420011ce:	8f41                	or	a4,a4,s0
420011d0:	5422                	lw	s0,40(sp)
420011d2:	067e                	slli	a2,a2,0x1f
420011d4:	00c767b3          	or	a5,a4,a2
420011d8:	5492                	lw	s1,36(sp)
420011da:	5902                	lw	s2,32(sp)
420011dc:	49f2                	lw	s3,28(sp)
420011de:	4a62                	lw	s4,24(sp)
420011e0:	4ad2                	lw	s5,20(sp)
420011e2:	4b42                	lw	s6,16(sp)
420011e4:	4bb2                	lw	s7,12(sp)
420011e6:	4c22                	lw	s8,8(sp)
420011e8:	4c92                	lw	s9,4(sp)
420011ea:	8536                	mv	a0,a3
420011ec:	85be                	mv	a1,a5
420011ee:	6145                	addi	sp,sp,48
420011f0:	8082                	ret
420011f2:	85de                	mv	a1,s7
420011f4:	b761                	j	4200117c <__muldf3+0x314>
420011f6:	4505                	li	a0,1
420011f8:	cb09                	beqz	a4,4200120a <__muldf3+0x3a2>
420011fa:	8d19                	sub	a0,a0,a4
420011fc:	03800693          	li	a3,56
42001200:	d2a6c4e3          	blt	a3,a0,42000f28 <__muldf3+0xc0>
42001204:	46fd                	li	a3,31
42001206:	04a6c963          	blt	a3,a0,42001258 <__muldf3+0x3f0>
4200120a:	41e58593          	addi	a1,a1,1054
4200120e:	00a7d733          	srl	a4,a5,a0
42001212:	00b797b3          	sll	a5,a5,a1
42001216:	00f037b3          	snez	a5,a5
4200121a:	00b415b3          	sll	a1,s0,a1
4200121e:	8fcd                	or	a5,a5,a1
42001220:	8fd9                	or	a5,a5,a4
42001222:	00a45433          	srl	s0,s0,a0
42001226:	0077f713          	andi	a4,a5,7
4200122a:	cf01                	beqz	a4,42001242 <__muldf3+0x3da>
4200122c:	00f7f713          	andi	a4,a5,15
42001230:	4691                	li	a3,4
42001232:	00d70863          	beq	a4,a3,42001242 <__muldf3+0x3da>
42001236:	00d78733          	add	a4,a5,a3
4200123a:	00f736b3          	sltu	a3,a4,a5
4200123e:	9436                	add	s0,s0,a3
42001240:	87ba                	mv	a5,a4
42001242:	00841713          	slli	a4,s0,0x8
42001246:	04074d63          	bltz	a4,420012a0 <__muldf3+0x438>
4200124a:	01d41693          	slli	a3,s0,0x1d
4200124e:	838d                	srli	a5,a5,0x3
42001250:	8edd                	or	a3,a3,a5
42001252:	800d                	srli	s0,s0,0x3
42001254:	4701                	li	a4,0
42001256:	bf85                	j	420011c6 <__muldf3+0x35e>
42001258:	5685                	li	a3,-31
4200125a:	40e68733          	sub	a4,a3,a4
4200125e:	02000813          	li	a6,32
42001262:	00e45733          	srl	a4,s0,a4
42001266:	4681                	li	a3,0
42001268:	01050663          	beq	a0,a6,42001274 <__muldf3+0x40c>
4200126c:	43e58593          	addi	a1,a1,1086
42001270:	00b416b3          	sll	a3,s0,a1
42001274:	8edd                	or	a3,a3,a5
42001276:	00d036b3          	snez	a3,a3
4200127a:	00d767b3          	or	a5,a4,a3
4200127e:	4401                	li	s0,0
42001280:	b75d                	j	42001226 <__muldf3+0x3be>
42001282:	00080437          	lui	s0,0x80
42001286:	7ff00713          	li	a4,2047
4200128a:	4601                	li	a2,0
4200128c:	bf2d                	j	420011c6 <__muldf3+0x35e>
4200128e:	00080437          	lui	s0,0x80
42001292:	4681                	li	a3,0
42001294:	bfcd                	j	42001286 <__muldf3+0x41e>
42001296:	4401                	li	s0,0
42001298:	4681                	li	a3,0
4200129a:	7ff00713          	li	a4,2047
4200129e:	b725                	j	420011c6 <__muldf3+0x35e>
420012a0:	4401                	li	s0,0
420012a2:	4681                	li	a3,0
420012a4:	4705                	li	a4,1
420012a6:	b705                	j	420011c6 <__muldf3+0x35e>

420012a8 <__fixunsdfsi>:
420012a8:	0145d713          	srli	a4,a1,0x14
420012ac:	00100837          	lui	a6,0x100
420012b0:	fff80793          	addi	a5,a6,-1 # fffff <rtc_get_reset_reason-0x3ff00019>
420012b4:	7ff77713          	andi	a4,a4,2047
420012b8:	3fe00613          	li	a2,1022
420012bc:	8fed                	and	a5,a5,a1
420012be:	86aa                	mv	a3,a0
420012c0:	81fd                	srli	a1,a1,0x1f
420012c2:	04e65263          	bge	a2,a4,42001306 <__fixunsdfsi+0x5e>
420012c6:	41f00613          	li	a2,1055
420012ca:	8e0d                	sub	a2,a2,a1
420012cc:	fff58513          	addi	a0,a1,-1
420012d0:	02c75c63          	bge	a4,a2,42001308 <__fixunsdfsi+0x60>
420012d4:	4501                	li	a0,0
420012d6:	e98d                	bnez	a1,42001308 <__fixunsdfsi+0x60>
420012d8:	43300613          	li	a2,1075
420012dc:	8e19                	sub	a2,a2,a4
420012de:	45fd                	li	a1,31
420012e0:	0107e7b3          	or	a5,a5,a6
420012e4:	00c5ca63          	blt	a1,a2,420012f8 <__fixunsdfsi+0x50>
420012e8:	bed70713          	addi	a4,a4,-1043
420012ec:	00e797b3          	sll	a5,a5,a4
420012f0:	00c6d533          	srl	a0,a3,a2
420012f4:	8d5d                	or	a0,a0,a5
420012f6:	8082                	ret
420012f8:	41300693          	li	a3,1043
420012fc:	40e68733          	sub	a4,a3,a4
42001300:	00e7d533          	srl	a0,a5,a4
42001304:	8082                	ret
42001306:	4501                	li	a0,0
42001308:	8082                	ret

4200130a <__floatsidf>:
4200130a:	1101                	addi	sp,sp,-32
4200130c:	ce06                	sw	ra,28(sp)
4200130e:	cc22                	sw	s0,24(sp)
42001310:	ca26                	sw	s1,20(sp)
42001312:	c84a                	sw	s2,16(sp)
42001314:	c64e                	sw	s3,12(sp)
42001316:	87aa                	mv	a5,a0
42001318:	cd29                	beqz	a0,42001372 <__floatsidf+0x68>
4200131a:	41f55713          	srai	a4,a0,0x1f
4200131e:	00a74933          	xor	s2,a4,a0
42001322:	40e90933          	sub	s2,s2,a4
42001326:	01f55993          	srli	s3,a0,0x1f
4200132a:	854a                	mv	a0,s2
4200132c:	20b1                	jal	42001378 <__clzsi2>
4200132e:	41e00793          	li	a5,1054
42001332:	4729                	li	a4,10
42001334:	8f89                	sub	a5,a5,a0
42001336:	02a74963          	blt	a4,a0,42001368 <__floatsidf+0x5e>
4200133a:	472d                	li	a4,11
4200133c:	8f09                	sub	a4,a4,a0
4200133e:	0555                	addi	a0,a0,21 # 10015 <rtc_get_reset_reason-0x3fff0003>
42001340:	00e95733          	srl	a4,s2,a4
42001344:	00a91933          	sll	s2,s2,a0
42001348:	0732                	slli	a4,a4,0xc
4200134a:	40f2                	lw	ra,28(sp)
4200134c:	4462                	lw	s0,24(sp)
4200134e:	8331                	srli	a4,a4,0xc
42001350:	07d2                	slli	a5,a5,0x14
42001352:	09fe                	slli	s3,s3,0x1f
42001354:	8fd9                	or	a5,a5,a4
42001356:	0137e733          	or	a4,a5,s3
4200135a:	44d2                	lw	s1,20(sp)
4200135c:	49b2                	lw	s3,12(sp)
4200135e:	854a                	mv	a0,s2
42001360:	85ba                	mv	a1,a4
42001362:	4942                	lw	s2,16(sp)
42001364:	6105                	addi	sp,sp,32
42001366:	8082                	ret
42001368:	1555                	addi	a0,a0,-11
4200136a:	00a91733          	sll	a4,s2,a0
4200136e:	4901                	li	s2,0
42001370:	bfe1                	j	42001348 <__floatsidf+0x3e>
42001372:	4981                	li	s3,0
42001374:	4701                	li	a4,0
42001376:	bfe5                	j	4200136e <__floatsidf+0x64>

42001378 <__clzsi2>:
42001378:	67c1                	lui	a5,0x10
4200137a:	02f57663          	bgeu	a0,a5,420013a6 <__clzsi2+0x2e>
4200137e:	10053793          	sltiu	a5,a0,256
42001382:	0017b793          	seqz	a5,a5
42001386:	078e                	slli	a5,a5,0x3
42001388:	42003737          	lui	a4,0x42003
4200138c:	02000693          	li	a3,32
42001390:	8e9d                	sub	a3,a3,a5
42001392:	00f55533          	srl	a0,a0,a5
42001396:	43870793          	addi	a5,a4,1080 # 42003438 <__clz_tab>
4200139a:	97aa                	add	a5,a5,a0
4200139c:	0007c503          	lbu	a0,0(a5) # 10000 <rtc_get_reset_reason-0x3fff0018>
420013a0:	40a68533          	sub	a0,a3,a0
420013a4:	8082                	ret
420013a6:	01000737          	lui	a4,0x1000
420013aa:	47e1                	li	a5,24
420013ac:	fce57ee3          	bgeu	a0,a4,42001388 <__clzsi2+0x10>
420013b0:	47c1                	li	a5,16
420013b2:	bfd9                	j	42001388 <__clzsi2+0x10>

420013b4 <abort>:
420013b4:	1141                	addi	sp,sp,-16
420013b6:	4519                	li	a0,6
420013b8:	c606                	sw	ra,12(sp)
420013ba:	2229                	jal	420014c4 <raise>
420013bc:	4505                	li	a0,1
420013be:	77b010ef          	jal	42003338 <_exit>

420013c2 <__assert_func>:
420013c2:	1101                	addi	sp,sp,-32
420013c4:	cc22                	sw	s0,24(sp)
420013c6:	c432                	sw	a2,8(sp)
420013c8:	ce06                	sw	ra,28(sp)
420013ca:	842a                	mv	s0,a0
420013cc:	c62e                	sw	a1,12(sp)
420013ce:	c236                	sw	a3,4(sp)
420013d0:	76b010ef          	jal	4200333a <__getreent>
420013d4:	4822                	lw	a6,8(sp)
420013d6:	4548                	lw	a0,12(a0)
420013d8:	4612                	lw	a2,4(sp)
420013da:	4732                	lw	a4,12(sp)
420013dc:	00080d63          	beqz	a6,420013f6 <__assert_func+0x34>
420013e0:	420037b7          	lui	a5,0x42003
420013e4:	62478793          	addi	a5,a5,1572 # 42003624 <GPIO_PIN_MUX_REG+0x7c>
420013e8:	420035b7          	lui	a1,0x42003
420013ec:	86a2                	mv	a3,s0
420013ee:	63458593          	addi	a1,a1,1588 # 42003634 <GPIO_PIN_MUX_REG+0x8c>
420013f2:	281d                	jal	42001428 <fiprintf>
420013f4:	37c1                	jal	420013b4 <abort>
420013f6:	42003837          	lui	a6,0x42003
420013fa:	63080793          	addi	a5,a6,1584 # 42003630 <GPIO_PIN_MUX_REG+0x88>
420013fe:	63080813          	addi	a6,a6,1584
42001402:	b7dd                	j	420013e8 <__assert_func+0x26>

42001404 <__assert>:
42001404:	1141                	addi	sp,sp,-16
42001406:	86b2                	mv	a3,a2
42001408:	4601                	li	a2,0
4200140a:	c606                	sw	ra,12(sp)
4200140c:	3f5d                	jal	420013c2 <__assert_func>

4200140e <_fiprintf_r>:
4200140e:	7139                	addi	sp,sp,-64
42001410:	d636                	sw	a3,44(sp)
42001412:	1074                	addi	a3,sp,44
42001414:	ce06                	sw	ra,28(sp)
42001416:	d83a                	sw	a4,48(sp)
42001418:	da3e                	sw	a5,52(sp)
4200141a:	dc42                	sw	a6,56(sp)
4200141c:	de46                	sw	a7,60(sp)
4200141e:	c636                	sw	a3,12(sp)
42001420:	2575                	jal	42001acc <_vfiprintf_r>
42001422:	40f2                	lw	ra,28(sp)
42001424:	6121                	addi	sp,sp,64
42001426:	8082                	ret

42001428 <fiprintf>:
42001428:	7139                	addi	sp,sp,-64
4200142a:	da3e                	sw	a5,52(sp)
4200142c:	103c                	addi	a5,sp,40
4200142e:	ce06                	sw	ra,28(sp)
42001430:	cc22                	sw	s0,24(sp)
42001432:	ca26                	sw	s1,20(sp)
42001434:	842a                	mv	s0,a0
42001436:	84ae                	mv	s1,a1
42001438:	d432                	sw	a2,40(sp)
4200143a:	d636                	sw	a3,44(sp)
4200143c:	d83a                	sw	a4,48(sp)
4200143e:	dc42                	sw	a6,56(sp)
42001440:	de46                	sw	a7,60(sp)
42001442:	c63e                	sw	a5,12(sp)
42001444:	6f7010ef          	jal	4200333a <__getreent>
42001448:	46b2                	lw	a3,12(sp)
4200144a:	8626                	mv	a2,s1
4200144c:	85a2                	mv	a1,s0
4200144e:	2dbd                	jal	42001acc <_vfiprintf_r>
42001450:	40f2                	lw	ra,28(sp)
42001452:	4462                	lw	s0,24(sp)
42001454:	44d2                	lw	s1,20(sp)
42001456:	6121                	addi	sp,sp,64
42001458:	8082                	ret

4200145a <_vsiprintf_r>:
4200145a:	800007b7          	lui	a5,0x80000
4200145e:	7119                	addi	sp,sp,-128
42001460:	17fd                	addi	a5,a5,-1 # 7fffffff <LP_WDT+0x1ff4e3ff>
42001462:	ce3e                	sw	a5,28(sp)
42001464:	c83e                	sw	a5,16(sp)
42001466:	77c1                	lui	a5,0xffff0
42001468:	c42e                	sw	a1,8(sp)
4200146a:	cc2e                	sw	a1,24(sp)
4200146c:	20878793          	addi	a5,a5,520 # ffff0208 <LP_WDT+0x9ff3e608>
42001470:	002c                	addi	a1,sp,8
42001472:	de86                	sw	ra,124(sp)
42001474:	dca2                	sw	s0,120(sp)
42001476:	ca3e                	sw	a5,20(sp)
42001478:	2ea1                	jal	420017d0 <_svfiprintf_r>
4200147a:	47a2                	lw	a5,8(sp)
4200147c:	00078023          	sb	zero,0(a5)
42001480:	50f6                	lw	ra,124(sp)
42001482:	5466                	lw	s0,120(sp)
42001484:	6109                	addi	sp,sp,128
42001486:	8082                	ret

42001488 <vsiprintf>:
42001488:	1101                	addi	sp,sp,-32
4200148a:	cc22                	sw	s0,24(sp)
4200148c:	ca26                	sw	s1,20(sp)
4200148e:	ce06                	sw	ra,28(sp)
42001490:	84ae                	mv	s1,a1
42001492:	842a                	mv	s0,a0
42001494:	c632                	sw	a2,12(sp)
42001496:	6a5010ef          	jal	4200333a <__getreent>
4200149a:	85a2                	mv	a1,s0
4200149c:	4462                	lw	s0,24(sp)
4200149e:	46b2                	lw	a3,12(sp)
420014a0:	40f2                	lw	ra,28(sp)
420014a2:	8626                	mv	a2,s1
420014a4:	44d2                	lw	s1,20(sp)
420014a6:	6105                	addi	sp,sp,32
420014a8:	bf4d                	j	4200145a <_vsiprintf_r>

420014aa <_raise_r>:
420014aa:	1101                	addi	sp,sp,-32
420014ac:	cc22                	sw	s0,24(sp)
420014ae:	ce06                	sw	ra,28(sp)
420014b0:	842a                	mv	s0,a0
420014b2:	c62e                	sw	a1,12(sp)
420014b4:	2891                	jal	42001508 <_getpid_r>
420014b6:	85aa                	mv	a1,a0
420014b8:	8522                	mv	a0,s0
420014ba:	4462                	lw	s0,24(sp)
420014bc:	4632                	lw	a2,12(sp)
420014be:	40f2                	lw	ra,28(sp)
420014c0:	6105                	addi	sp,sp,32
420014c2:	a811                	j	420014d6 <_kill_r>

420014c4 <raise>:
420014c4:	1101                	addi	sp,sp,-32
420014c6:	ce06                	sw	ra,28(sp)
420014c8:	c62a                	sw	a0,12(sp)
420014ca:	671010ef          	jal	4200333a <__getreent>
420014ce:	45b2                	lw	a1,12(sp)
420014d0:	40f2                	lw	ra,28(sp)
420014d2:	6105                	addi	sp,sp,32
420014d4:	bfd9                	j	420014aa <_raise_r>

420014d6 <_kill_r>:
420014d6:	1141                	addi	sp,sp,-16
420014d8:	c422                	sw	s0,8(sp)
420014da:	c226                	sw	s1,4(sp)
420014dc:	842a                	mv	s0,a0
420014de:	408004b7          	lui	s1,0x40800
420014e2:	852e                	mv	a0,a1
420014e4:	85b2                	mv	a1,a2
420014e6:	c606                	sw	ra,12(sp)
420014e8:	5804aa23          	sw	zero,1428(s1) # 40800594 <errno>
420014ec:	5ef010ef          	jal	420032da <_kill>
420014f0:	57fd                	li	a5,-1
420014f2:	00f51663          	bne	a0,a5,420014fe <_kill_r+0x28>
420014f6:	5944a783          	lw	a5,1428(s1)
420014fa:	c391                	beqz	a5,420014fe <_kill_r+0x28>
420014fc:	c01c                	sw	a5,0(s0)
420014fe:	40b2                	lw	ra,12(sp)
42001500:	4422                	lw	s0,8(sp)
42001502:	4492                	lw	s1,4(sp)
42001504:	0141                	addi	sp,sp,16
42001506:	8082                	ret

42001508 <_getpid_r>:
42001508:	5c30106f          	j	420032ca <_getpid>

4200150c <memset>:
4200150c:	433d                	li	t1,15
4200150e:	872a                	mv	a4,a0
42001510:	02c37363          	bgeu	t1,a2,42001536 <memset+0x2a>
42001514:	00f77793          	andi	a5,a4,15
42001518:	efbd                	bnez	a5,42001596 <memset+0x8a>
4200151a:	e5ad                	bnez	a1,42001584 <memset+0x78>
4200151c:	ff067693          	andi	a3,a2,-16
42001520:	8a3d                	andi	a2,a2,15
42001522:	96ba                	add	a3,a3,a4
42001524:	c30c                	sw	a1,0(a4)
42001526:	c34c                	sw	a1,4(a4)
42001528:	c70c                	sw	a1,8(a4)
4200152a:	c74c                	sw	a1,12(a4)
4200152c:	0741                	addi	a4,a4,16 # 1000010 <rtc_get_reset_reason-0x3f000008>
4200152e:	fed76be3          	bltu	a4,a3,42001524 <memset+0x18>
42001532:	e211                	bnez	a2,42001536 <memset+0x2a>
42001534:	8082                	ret
42001536:	40c306b3          	sub	a3,t1,a2
4200153a:	068a                	slli	a3,a3,0x2
4200153c:	00000297          	auipc	t0,0x0
42001540:	9696                	add	a3,a3,t0
42001542:	00a68067          	jr	10(a3)
42001546:	00b70723          	sb	a1,14(a4)
4200154a:	00b706a3          	sb	a1,13(a4)
4200154e:	00b70623          	sb	a1,12(a4)
42001552:	00b705a3          	sb	a1,11(a4)
42001556:	00b70523          	sb	a1,10(a4)
4200155a:	00b704a3          	sb	a1,9(a4)
4200155e:	00b70423          	sb	a1,8(a4)
42001562:	00b703a3          	sb	a1,7(a4)
42001566:	00b70323          	sb	a1,6(a4)
4200156a:	00b702a3          	sb	a1,5(a4)
4200156e:	00b70223          	sb	a1,4(a4)
42001572:	00b701a3          	sb	a1,3(a4)
42001576:	00b70123          	sb	a1,2(a4)
4200157a:	00b700a3          	sb	a1,1(a4)
4200157e:	00b70023          	sb	a1,0(a4)
42001582:	8082                	ret
42001584:	0ff5f593          	zext.b	a1,a1
42001588:	00859693          	slli	a3,a1,0x8
4200158c:	8dd5                	or	a1,a1,a3
4200158e:	01059693          	slli	a3,a1,0x10
42001592:	8dd5                	or	a1,a1,a3
42001594:	b761                	j	4200151c <memset+0x10>
42001596:	00279693          	slli	a3,a5,0x2
4200159a:	00000297          	auipc	t0,0x0
4200159e:	9696                	add	a3,a3,t0
420015a0:	8286                	mv	t0,ra
420015a2:	fa8680e7          	jalr	-88(a3)
420015a6:	8096                	mv	ra,t0
420015a8:	17c1                	addi	a5,a5,-16
420015aa:	8f1d                	sub	a4,a4,a5
420015ac:	963e                	add	a2,a2,a5
420015ae:	f8c374e3          	bgeu	t1,a2,42001536 <memset+0x2a>
420015b2:	b7a5                	j	4200151a <memset+0xe>

420015b4 <__ssputs_r>:
420015b4:	1101                	addi	sp,sp,-32
420015b6:	c84a                	sw	s2,16(sp)
420015b8:	0085a903          	lw	s2,8(a1)
420015bc:	cc22                	sw	s0,24(sp)
420015be:	c64e                	sw	s3,12(sp)
420015c0:	c452                	sw	s4,8(sp)
420015c2:	ce06                	sw	ra,28(sp)
420015c4:	ca26                	sw	s1,20(sp)
420015c6:	c256                	sw	s5,4(sp)
420015c8:	c05a                	sw	s6,0(sp)
420015ca:	842e                	mv	s0,a1
420015cc:	8a32                	mv	s4,a2
420015ce:	89b6                	mv	s3,a3
420015d0:	0d26e963          	bltu	a3,s2,420016a2 <__ssputs_r+0xee>
420015d4:	00c59783          	lh	a5,12(a1)
420015d8:	874a                	mv	a4,s2
420015da:	4807f693          	andi	a3,a5,1152
420015de:	c6b5                	beqz	a3,4200164a <__ssputs_r+0x96>
420015e0:	4844                	lw	s1,20(s0)
420015e2:	470d                	li	a4,3
420015e4:	498c                	lw	a1,16(a1)
420015e6:	02e484b3          	mul	s1,s1,a4
420015ea:	4709                	li	a4,2
420015ec:	00042a83          	lw	s5,0(s0) # 80000 <rtc_get_reset_reason-0x3ff80018>
420015f0:	8b2a                	mv	s6,a0
420015f2:	40ba8ab3          	sub	s5,s5,a1
420015f6:	02e4c4b3          	div	s1,s1,a4
420015fa:	00198713          	addi	a4,s3,1
420015fe:	9756                	add	a4,a4,s5
42001600:	8626                	mv	a2,s1
42001602:	00e4f463          	bgeu	s1,a4,4200160a <__ssputs_r+0x56>
42001606:	84ba                	mv	s1,a4
42001608:	863a                	mv	a2,a4
4200160a:	4007f793          	andi	a5,a5,1024
4200160e:	c7b5                	beqz	a5,4200167a <__ssputs_r+0xc6>
42001610:	85b2                	mv	a1,a2
42001612:	855a                	mv	a0,s6
42001614:	658010ef          	jal	42002c6c <_malloc_r>
42001618:	892a                	mv	s2,a0
4200161a:	c92d                	beqz	a0,4200168c <__ssputs_r+0xd8>
4200161c:	480c                	lw	a1,16(s0)
4200161e:	8656                	mv	a2,s5
42001620:	46e010ef          	jal	42002a8e <memcpy>
42001624:	00c45783          	lhu	a5,12(s0)
42001628:	b7f7f793          	andi	a5,a5,-1153
4200162c:	0807e793          	ori	a5,a5,128
42001630:	00f41623          	sh	a5,12(s0)
42001634:	01242823          	sw	s2,16(s0)
42001638:	c844                	sw	s1,20(s0)
4200163a:	9956                	add	s2,s2,s5
4200163c:	415484b3          	sub	s1,s1,s5
42001640:	01242023          	sw	s2,0(s0)
42001644:	c404                	sw	s1,8(s0)
42001646:	894e                	mv	s2,s3
42001648:	874e                	mv	a4,s3
4200164a:	89ba                	mv	s3,a4
4200164c:	4008                	lw	a0,0(s0)
4200164e:	864e                	mv	a2,s3
42001650:	85d2                	mv	a1,s4
42001652:	3f2010ef          	jal	42002a44 <memmove>
42001656:	441c                	lw	a5,8(s0)
42001658:	4501                	li	a0,0
4200165a:	412787b3          	sub	a5,a5,s2
4200165e:	c41c                	sw	a5,8(s0)
42001660:	401c                	lw	a5,0(s0)
42001662:	97ce                	add	a5,a5,s3
42001664:	c01c                	sw	a5,0(s0)
42001666:	40f2                	lw	ra,28(sp)
42001668:	4462                	lw	s0,24(sp)
4200166a:	44d2                	lw	s1,20(sp)
4200166c:	4942                	lw	s2,16(sp)
4200166e:	49b2                	lw	s3,12(sp)
42001670:	4a22                	lw	s4,8(sp)
42001672:	4a92                	lw	s5,4(sp)
42001674:	4b02                	lw	s6,0(sp)
42001676:	6105                	addi	sp,sp,32
42001678:	8082                	ret
4200167a:	855a                	mv	a0,s6
4200167c:	71c010ef          	jal	42002d98 <_realloc_r>
42001680:	892a                	mv	s2,a0
42001682:	f94d                	bnez	a0,42001634 <__ssputs_r+0x80>
42001684:	480c                	lw	a1,16(s0)
42001686:	855a                	mv	a0,s6
42001688:	4ee010ef          	jal	42002b76 <_free_r>
4200168c:	47b1                	li	a5,12
4200168e:	00fb2023          	sw	a5,0(s6)
42001692:	00c45783          	lhu	a5,12(s0)
42001696:	557d                	li	a0,-1
42001698:	0407e793          	ori	a5,a5,64
4200169c:	00f41623          	sh	a5,12(s0)
420016a0:	b7d9                	j	42001666 <__ssputs_r+0xb2>
420016a2:	8936                	mv	s2,a3
420016a4:	b765                	j	4200164c <__ssputs_r+0x98>

420016a6 <__ssprint_r>:
420016a6:	461c                	lw	a5,8(a2)
420016a8:	7179                	addi	sp,sp,-48
420016aa:	ce4e                	sw	s3,28(sp)
420016ac:	d606                	sw	ra,44(sp)
420016ae:	d422                	sw	s0,40(sp)
420016b0:	d226                	sw	s1,36(sp)
420016b2:	d04a                	sw	s2,32(sp)
420016b4:	cc52                	sw	s4,24(sp)
420016b6:	ca56                	sw	s5,20(sp)
420016b8:	c85a                	sw	s6,16(sp)
420016ba:	c65e                	sw	s7,12(sp)
420016bc:	c462                	sw	s8,8(sp)
420016be:	c266                	sw	s9,4(sp)
420016c0:	c06a                	sw	s10,0(sp)
420016c2:	89b2                	mv	s3,a2
420016c4:	cfcd                	beqz	a5,4200177e <__ssprint_r+0xd8>
420016c6:	00062a83          	lw	s5,0(a2)
420016ca:	8a2a                	mv	s4,a0
420016cc:	842e                	mv	s0,a1
420016ce:	4b8d                	li	s7,3
420016d0:	4c09                	li	s8,2
420016d2:	004aad03          	lw	s10,4(s5)
420016d6:	000aab03          	lw	s6,0(s5)
420016da:	0aa1                	addi	s5,s5,8
420016dc:	fe0d0be3          	beqz	s10,420016d2 <__ssprint_r+0x2c>
420016e0:	00842903          	lw	s2,8(s0)
420016e4:	84ca                	mv	s1,s2
420016e6:	0f2d6363          	bltu	s10,s2,420017cc <__ssprint_r+0x126>
420016ea:	00c41783          	lh	a5,12(s0)
420016ee:	4807f713          	andi	a4,a5,1152
420016f2:	c33d                	beqz	a4,42001758 <__ssprint_r+0xb2>
420016f4:	4844                	lw	s1,20(s0)
420016f6:	480c                	lw	a1,16(s0)
420016f8:	00042c83          	lw	s9,0(s0)
420016fc:	037484b3          	mul	s1,s1,s7
42001700:	40bc8cb3          	sub	s9,s9,a1
42001704:	001c8713          	addi	a4,s9,1
42001708:	976a                	add	a4,a4,s10
4200170a:	0384c4b3          	div	s1,s1,s8
4200170e:	8626                	mv	a2,s1
42001710:	00e4f463          	bgeu	s1,a4,42001718 <__ssprint_r+0x72>
42001714:	84ba                	mv	s1,a4
42001716:	863a                	mv	a2,a4
42001718:	4007f793          	andi	a5,a5,1024
4200171c:	c3d1                	beqz	a5,420017a0 <__ssprint_r+0xfa>
4200171e:	85b2                	mv	a1,a2
42001720:	8552                	mv	a0,s4
42001722:	54a010ef          	jal	42002c6c <_malloc_r>
42001726:	892a                	mv	s2,a0
42001728:	c549                	beqz	a0,420017b2 <__ssprint_r+0x10c>
4200172a:	480c                	lw	a1,16(s0)
4200172c:	8666                	mv	a2,s9
4200172e:	360010ef          	jal	42002a8e <memcpy>
42001732:	00c45783          	lhu	a5,12(s0)
42001736:	b7f7f793          	andi	a5,a5,-1153
4200173a:	0807e793          	ori	a5,a5,128
4200173e:	00f41623          	sh	a5,12(s0)
42001742:	01242823          	sw	s2,16(s0)
42001746:	c844                	sw	s1,20(s0)
42001748:	9966                	add	s2,s2,s9
4200174a:	419484b3          	sub	s1,s1,s9
4200174e:	01242023          	sw	s2,0(s0)
42001752:	c404                	sw	s1,8(s0)
42001754:	896a                	mv	s2,s10
42001756:	84ea                	mv	s1,s10
42001758:	4008                	lw	a0,0(s0)
4200175a:	8626                	mv	a2,s1
4200175c:	85da                	mv	a1,s6
4200175e:	2e6010ef          	jal	42002a44 <memmove>
42001762:	441c                	lw	a5,8(s0)
42001764:	412787b3          	sub	a5,a5,s2
42001768:	c41c                	sw	a5,8(s0)
4200176a:	401c                	lw	a5,0(s0)
4200176c:	97a6                	add	a5,a5,s1
4200176e:	c01c                	sw	a5,0(s0)
42001770:	0089a783          	lw	a5,8(s3)
42001774:	41a787b3          	sub	a5,a5,s10
42001778:	00f9a423          	sw	a5,8(s3)
4200177c:	fbb9                	bnez	a5,420016d2 <__ssprint_r+0x2c>
4200177e:	4501                	li	a0,0
42001780:	50b2                	lw	ra,44(sp)
42001782:	5422                	lw	s0,40(sp)
42001784:	0009a223          	sw	zero,4(s3)
42001788:	5492                	lw	s1,36(sp)
4200178a:	5902                	lw	s2,32(sp)
4200178c:	49f2                	lw	s3,28(sp)
4200178e:	4a62                	lw	s4,24(sp)
42001790:	4ad2                	lw	s5,20(sp)
42001792:	4b42                	lw	s6,16(sp)
42001794:	4bb2                	lw	s7,12(sp)
42001796:	4c22                	lw	s8,8(sp)
42001798:	4c92                	lw	s9,4(sp)
4200179a:	4d02                	lw	s10,0(sp)
4200179c:	6145                	addi	sp,sp,48
4200179e:	8082                	ret
420017a0:	8552                	mv	a0,s4
420017a2:	5f6010ef          	jal	42002d98 <_realloc_r>
420017a6:	892a                	mv	s2,a0
420017a8:	fd49                	bnez	a0,42001742 <__ssprint_r+0x9c>
420017aa:	480c                	lw	a1,16(s0)
420017ac:	8552                	mv	a0,s4
420017ae:	3c8010ef          	jal	42002b76 <_free_r>
420017b2:	47b1                	li	a5,12
420017b4:	00fa2023          	sw	a5,0(s4)
420017b8:	00c45783          	lhu	a5,12(s0)
420017bc:	557d                	li	a0,-1
420017be:	0407e793          	ori	a5,a5,64
420017c2:	00f41623          	sh	a5,12(s0)
420017c6:	0009a423          	sw	zero,8(s3)
420017ca:	bf5d                	j	42001780 <__ssprint_r+0xda>
420017cc:	896a                	mv	s2,s10
420017ce:	b761                	j	42001756 <__ssprint_r+0xb0>

420017d0 <_svfiprintf_r>:
420017d0:	00c5d783          	lhu	a5,12(a1)
420017d4:	7135                	addi	sp,sp,-160
420017d6:	cd22                	sw	s0,152(sp)
420017d8:	cb26                	sw	s1,148(sp)
420017da:	c94a                	sw	s2,144(sp)
420017dc:	c552                	sw	s4,136(sp)
420017de:	cf06                	sw	ra,156(sp)
420017e0:	c74e                	sw	s3,140(sp)
420017e2:	c356                	sw	s5,132(sp)
420017e4:	c15a                	sw	s6,128(sp)
420017e6:	dede                	sw	s7,124(sp)
420017e8:	dce2                	sw	s8,120(sp)
420017ea:	dae6                	sw	s9,116(sp)
420017ec:	0807f793          	andi	a5,a5,128
420017f0:	8a2a                	mv	s4,a0
420017f2:	892e                	mv	s2,a1
420017f4:	84b2                	mv	s1,a2
420017f6:	8436                	mv	s0,a3
420017f8:	c3a9                	beqz	a5,4200183a <_svfiprintf_r+0x6a>
420017fa:	499c                	lw	a5,16(a1)
420017fc:	ef9d                	bnez	a5,4200183a <_svfiprintf_r+0x6a>
420017fe:	04000593          	li	a1,64
42001802:	46a010ef          	jal	42002c6c <_malloc_r>
42001806:	00a92023          	sw	a0,0(s2)
4200180a:	00a92823          	sw	a0,16(s2)
4200180e:	e115                	bnez	a0,42001832 <_svfiprintf_r+0x62>
42001810:	47b1                	li	a5,12
42001812:	00fa2023          	sw	a5,0(s4)
42001816:	557d                	li	a0,-1
42001818:	40fa                	lw	ra,156(sp)
4200181a:	446a                	lw	s0,152(sp)
4200181c:	44da                	lw	s1,148(sp)
4200181e:	494a                	lw	s2,144(sp)
42001820:	49ba                	lw	s3,140(sp)
42001822:	4a2a                	lw	s4,136(sp)
42001824:	4a9a                	lw	s5,132(sp)
42001826:	4b0a                	lw	s6,128(sp)
42001828:	5bf6                	lw	s7,124(sp)
4200182a:	5c66                	lw	s8,120(sp)
4200182c:	5cd6                	lw	s9,116(sp)
4200182e:	610d                	addi	sp,sp,160
42001830:	8082                	ret
42001832:	04000793          	li	a5,64
42001836:	00f92a23          	sw	a5,20(s2)
4200183a:	02000793          	li	a5,32
4200183e:	02f104a3          	sb	a5,41(sp)
42001842:	03000793          	li	a5,48
42001846:	d202                	sw	zero,36(sp)
42001848:	02f10523          	sb	a5,42(sp)
4200184c:	c622                	sw	s0,12(sp)
4200184e:	02500b93          	li	s7,37
42001852:	5afd                	li	s5,-1
42001854:	4c05                	li	s8,1
42001856:	4b29                	li	s6,10
42001858:	8426                	mv	s0,s1
4200185a:	00044783          	lbu	a5,0(s0)
4200185e:	c399                	beqz	a5,42001864 <_svfiprintf_r+0x94>
42001860:	09779d63          	bne	a5,s7,420018fa <_svfiprintf_r+0x12a>
42001864:	40940cb3          	sub	s9,s0,s1
42001868:	00940c63          	beq	s0,s1,42001880 <_svfiprintf_r+0xb0>
4200186c:	86e6                	mv	a3,s9
4200186e:	8626                	mv	a2,s1
42001870:	85ca                	mv	a1,s2
42001872:	8552                	mv	a0,s4
42001874:	3381                	jal	420015b4 <__ssputs_r>
42001876:	1b550163          	beq	a0,s5,42001a18 <_svfiprintf_r+0x248>
4200187a:	5792                	lw	a5,36(sp)
4200187c:	97e6                	add	a5,a5,s9
4200187e:	d23e                	sw	a5,36(sp)
42001880:	00044783          	lbu	a5,0(s0)
42001884:	18078a63          	beqz	a5,42001a18 <_svfiprintf_r+0x248>
42001888:	00140493          	addi	s1,s0,1
4200188c:	c802                	sw	zero,16(sp)
4200188e:	ce02                	sw	zero,28(sp)
42001890:	ca56                	sw	s5,20(sp)
42001892:	cc02                	sw	zero,24(sp)
42001894:	040109a3          	sb	zero,83(sp)
42001898:	d482                	sw	zero,104(sp)
4200189a:	42003cb7          	lui	s9,0x42003
4200189e:	0004c583          	lbu	a1,0(s1)
420018a2:	4615                	li	a2,5
420018a4:	664c8513          	addi	a0,s9,1636 # 42003664 <GPIO_PIN_MUX_REG+0xbc>
420018a8:	09e010ef          	jal	42002946 <memchr>
420018ac:	4742                	lw	a4,16(sp)
420018ae:	87aa                	mv	a5,a0
420018b0:	00148413          	addi	s0,s1,1
420018b4:	e529                	bnez	a0,420018fe <_svfiprintf_r+0x12e>
420018b6:	01077793          	andi	a5,a4,16
420018ba:	c789                	beqz	a5,420018c4 <_svfiprintf_r+0xf4>
420018bc:	02000793          	li	a5,32
420018c0:	04f109a3          	sb	a5,83(sp)
420018c4:	00877793          	andi	a5,a4,8
420018c8:	c789                	beqz	a5,420018d2 <_svfiprintf_r+0x102>
420018ca:	02b00793          	li	a5,43
420018ce:	04f109a3          	sb	a5,83(sp)
420018d2:	0004c683          	lbu	a3,0(s1)
420018d6:	02a00793          	li	a5,42
420018da:	02f68b63          	beq	a3,a5,42001910 <_svfiprintf_r+0x140>
420018de:	47f2                	lw	a5,28(sp)
420018e0:	8426                	mv	s0,s1
420018e2:	4681                	li	a3,0
420018e4:	4625                	li	a2,9
420018e6:	00044703          	lbu	a4,0(s0)
420018ea:	00140593          	addi	a1,s0,1
420018ee:	fd070713          	addi	a4,a4,-48
420018f2:	06e67563          	bgeu	a2,a4,4200195c <_svfiprintf_r+0x18c>
420018f6:	e685                	bnez	a3,4200191e <_svfiprintf_r+0x14e>
420018f8:	a81d                	j	4200192e <_svfiprintf_r+0x15e>
420018fa:	0405                	addi	s0,s0,1
420018fc:	bfb9                	j	4200185a <_svfiprintf_r+0x8a>
420018fe:	664c8693          	addi	a3,s9,1636
42001902:	8f95                	sub	a5,a5,a3
42001904:	00fc17b3          	sll	a5,s8,a5
42001908:	8fd9                	or	a5,a5,a4
4200190a:	c83e                	sw	a5,16(sp)
4200190c:	84a2                	mv	s1,s0
4200190e:	bf41                	j	4200189e <_svfiprintf_r+0xce>
42001910:	47b2                	lw	a5,12(sp)
42001912:	00478693          	addi	a3,a5,4
42001916:	439c                	lw	a5,0(a5)
42001918:	c636                	sw	a3,12(sp)
4200191a:	0007c463          	bltz	a5,42001922 <_svfiprintf_r+0x152>
4200191e:	ce3e                	sw	a5,28(sp)
42001920:	a039                	j	4200192e <_svfiprintf_r+0x15e>
42001922:	40f007b3          	neg	a5,a5
42001926:	00276713          	ori	a4,a4,2
4200192a:	ce3e                	sw	a5,28(sp)
4200192c:	c83a                	sw	a4,16(sp)
4200192e:	00044703          	lbu	a4,0(s0)
42001932:	02e00793          	li	a5,46
42001936:	04f71763          	bne	a4,a5,42001984 <_svfiprintf_r+0x1b4>
4200193a:	00144703          	lbu	a4,1(s0)
4200193e:	02a00793          	li	a5,42
42001942:	02f71363          	bne	a4,a5,42001968 <_svfiprintf_r+0x198>
42001946:	47b2                	lw	a5,12(sp)
42001948:	0409                	addi	s0,s0,2
4200194a:	00478713          	addi	a4,a5,4
4200194e:	439c                	lw	a5,0(a5)
42001950:	c63a                	sw	a4,12(sp)
42001952:	0007d363          	bgez	a5,42001958 <_svfiprintf_r+0x188>
42001956:	57fd                	li	a5,-1
42001958:	ca3e                	sw	a5,20(sp)
4200195a:	a02d                	j	42001984 <_svfiprintf_r+0x1b4>
4200195c:	036787b3          	mul	a5,a5,s6
42001960:	842e                	mv	s0,a1
42001962:	4685                	li	a3,1
42001964:	97ba                	add	a5,a5,a4
42001966:	b741                	j	420018e6 <_svfiprintf_r+0x116>
42001968:	0405                	addi	s0,s0,1
4200196a:	ca02                	sw	zero,20(sp)
4200196c:	4681                	li	a3,0
4200196e:	4781                	li	a5,0
42001970:	4625                	li	a2,9
42001972:	00044703          	lbu	a4,0(s0)
42001976:	00140593          	addi	a1,s0,1
4200197a:	fd070713          	addi	a4,a4,-48
4200197e:	06e67463          	bgeu	a2,a4,420019e6 <_svfiprintf_r+0x216>
42001982:	faf9                	bnez	a3,42001958 <_svfiprintf_r+0x188>
42001984:	00044583          	lbu	a1,0(s0)
42001988:	420034b7          	lui	s1,0x42003
4200198c:	460d                	li	a2,3
4200198e:	66c48513          	addi	a0,s1,1644 # 4200366c <GPIO_PIN_MUX_REG+0xc4>
42001992:	7b5000ef          	jal	42002946 <memchr>
42001996:	cd01                	beqz	a0,420019ae <_svfiprintf_r+0x1de>
42001998:	47c2                	lw	a5,16(sp)
4200199a:	66c48493          	addi	s1,s1,1644
4200199e:	8d05                	sub	a0,a0,s1
420019a0:	04000713          	li	a4,64
420019a4:	00a71733          	sll	a4,a4,a0
420019a8:	8fd9                	or	a5,a5,a4
420019aa:	0405                	addi	s0,s0,1
420019ac:	c83e                	sw	a5,16(sp)
420019ae:	00044583          	lbu	a1,0(s0)
420019b2:	42003537          	lui	a0,0x42003
420019b6:	4619                	li	a2,6
420019b8:	67050513          	addi	a0,a0,1648 # 42003670 <GPIO_PIN_MUX_REG+0xc8>
420019bc:	00140493          	addi	s1,s0,1
420019c0:	02b10423          	sb	a1,40(sp)
420019c4:	783000ef          	jal	42002946 <memchr>
420019c8:	c125                	beqz	a0,42001a28 <_svfiprintf_r+0x258>
420019ca:	00000793          	li	a5,0
420019ce:	e795                	bnez	a5,420019fa <_svfiprintf_r+0x22a>
420019d0:	4742                	lw	a4,16(sp)
420019d2:	47b2                	lw	a5,12(sp)
420019d4:	10077713          	andi	a4,a4,256
420019d8:	cf09                	beqz	a4,420019f2 <_svfiprintf_r+0x222>
420019da:	0791                	addi	a5,a5,4
420019dc:	c63e                	sw	a5,12(sp)
420019de:	5792                	lw	a5,36(sp)
420019e0:	97ce                	add	a5,a5,s3
420019e2:	d23e                	sw	a5,36(sp)
420019e4:	bd95                	j	42001858 <_svfiprintf_r+0x88>
420019e6:	036787b3          	mul	a5,a5,s6
420019ea:	842e                	mv	s0,a1
420019ec:	4685                	li	a3,1
420019ee:	97ba                	add	a5,a5,a4
420019f0:	b749                	j	42001972 <_svfiprintf_r+0x1a2>
420019f2:	079d                	addi	a5,a5,7
420019f4:	9be1                	andi	a5,a5,-8
420019f6:	07a1                	addi	a5,a5,8
420019f8:	b7d5                	j	420019dc <_svfiprintf_r+0x20c>
420019fa:	420016b7          	lui	a3,0x42001
420019fe:	0078                	addi	a4,sp,12
42001a00:	5b468693          	addi	a3,a3,1460 # 420015b4 <__ssputs_r>
42001a04:	864a                	mv	a2,s2
42001a06:	080c                	addi	a1,sp,16
42001a08:	8552                	mv	a0,s4
42001a0a:	00000097          	auipc	ra,0x0
42001a0e:	000000e7          	jalr	zero # 0 <rtc_get_reset_reason-0x40000018>
42001a12:	89aa                	mv	s3,a0
42001a14:	fd5515e3          	bne	a0,s5,420019de <_svfiprintf_r+0x20e>
42001a18:	00c95783          	lhu	a5,12(s2)
42001a1c:	0407f793          	andi	a5,a5,64
42001a20:	de079be3          	bnez	a5,42001816 <_svfiprintf_r+0x46>
42001a24:	5512                	lw	a0,36(sp)
42001a26:	bbcd                	j	42001818 <_svfiprintf_r+0x48>
42001a28:	420016b7          	lui	a3,0x42001
42001a2c:	0078                	addi	a4,sp,12
42001a2e:	5b468693          	addi	a3,a3,1460 # 420015b4 <__ssputs_r>
42001a32:	864a                	mv	a2,s2
42001a34:	080c                	addi	a1,sp,16
42001a36:	8552                	mv	a0,s4
42001a38:	21b5                	jal	42001ea4 <_printf_i>
42001a3a:	bfe1                	j	42001a12 <_svfiprintf_r+0x242>

42001a3c <__sfputc_r>:
42001a3c:	461c                	lw	a5,8(a2)
42001a3e:	17fd                	addi	a5,a5,-1
42001a40:	c61c                	sw	a5,8(a2)
42001a42:	0007da63          	bgez	a5,42001a56 <__sfputc_r+0x1a>
42001a46:	4e18                	lw	a4,24(a2)
42001a48:	00e7c563          	blt	a5,a4,42001a52 <__sfputc_r+0x16>
42001a4c:	47a9                	li	a5,10
42001a4e:	00f59463          	bne	a1,a5,42001a56 <__sfputc_r+0x1a>
42001a52:	5850006f          	j	420027d6 <__swbuf_r>
42001a56:	421c                	lw	a5,0(a2)
42001a58:	852e                	mv	a0,a1
42001a5a:	00178713          	addi	a4,a5,1
42001a5e:	c218                	sw	a4,0(a2)
42001a60:	00b78023          	sb	a1,0(a5)
42001a64:	8082                	ret

42001a66 <__sfputs_r>:
42001a66:	1101                	addi	sp,sp,-32
42001a68:	cc22                	sw	s0,24(sp)
42001a6a:	ca26                	sw	s1,20(sp)
42001a6c:	c84a                	sw	s2,16(sp)
42001a6e:	c64e                	sw	s3,12(sp)
42001a70:	c452                	sw	s4,8(sp)
42001a72:	ce06                	sw	ra,28(sp)
42001a74:	892a                	mv	s2,a0
42001a76:	89ae                	mv	s3,a1
42001a78:	8432                	mv	s0,a2
42001a7a:	00d604b3          	add	s1,a2,a3
42001a7e:	5a7d                	li	s4,-1
42001a80:	00941463          	bne	s0,s1,42001a88 <__sfputs_r+0x22>
42001a84:	4501                	li	a0,0
42001a86:	a809                	j	42001a98 <__sfputs_r+0x32>
42001a88:	00044583          	lbu	a1,0(s0)
42001a8c:	864e                	mv	a2,s3
42001a8e:	854a                	mv	a0,s2
42001a90:	3775                	jal	42001a3c <__sfputc_r>
42001a92:	0405                	addi	s0,s0,1
42001a94:	ff4516e3          	bne	a0,s4,42001a80 <__sfputs_r+0x1a>
42001a98:	40f2                	lw	ra,28(sp)
42001a9a:	4462                	lw	s0,24(sp)
42001a9c:	44d2                	lw	s1,20(sp)
42001a9e:	4942                	lw	s2,16(sp)
42001aa0:	49b2                	lw	s3,12(sp)
42001aa2:	4a22                	lw	s4,8(sp)
42001aa4:	6105                	addi	sp,sp,32
42001aa6:	8082                	ret

42001aa8 <__sprint_r>:
42001aa8:	461c                	lw	a5,8(a2)
42001aaa:	1141                	addi	sp,sp,-16
42001aac:	c422                	sw	s0,8(sp)
42001aae:	c606                	sw	ra,12(sp)
42001ab0:	8432                	mv	s0,a2
42001ab2:	cb99                	beqz	a5,42001ac8 <__sprint_r+0x20>
42001ab4:	125000ef          	jal	420023d8 <__sfvwrite_r>
42001ab8:	00042423          	sw	zero,8(s0)
42001abc:	40b2                	lw	ra,12(sp)
42001abe:	00042223          	sw	zero,4(s0)
42001ac2:	4422                	lw	s0,8(sp)
42001ac4:	0141                	addi	sp,sp,16
42001ac6:	8082                	ret
42001ac8:	4501                	li	a0,0
42001aca:	bfcd                	j	42001abc <__sprint_r+0x14>

42001acc <_vfiprintf_r>:
42001acc:	7135                	addi	sp,sp,-160
42001ace:	cd22                	sw	s0,152(sp)
42001ad0:	cb26                	sw	s1,148(sp)
42001ad2:	c94a                	sw	s2,144(sp)
42001ad4:	c74e                	sw	s3,140(sp)
42001ad6:	cf06                	sw	ra,156(sp)
42001ad8:	c552                	sw	s4,136(sp)
42001ada:	c356                	sw	s5,132(sp)
42001adc:	c15a                	sw	s6,128(sp)
42001ade:	dede                	sw	s7,124(sp)
42001ae0:	dce2                	sw	s8,120(sp)
42001ae2:	dae6                	sw	s9,116(sp)
42001ae4:	89aa                	mv	s3,a0
42001ae6:	84ae                	mv	s1,a1
42001ae8:	8932                	mv	s2,a2
42001aea:	8436                	mv	s0,a3
42001aec:	c509                	beqz	a0,42001af6 <_vfiprintf_r+0x2a>
42001aee:	551c                	lw	a5,40(a0)
42001af0:	e399                	bnez	a5,42001af6 <_vfiprintf_r+0x2a>
42001af2:	07d000ef          	jal	4200236e <__sinit>
42001af6:	50fc                	lw	a5,100(s1)
42001af8:	8b85                	andi	a5,a5,1
42001afa:	eb89                	bnez	a5,42001b0c <_vfiprintf_r+0x40>
42001afc:	00c4d783          	lhu	a5,12(s1)
42001b00:	2007f793          	andi	a5,a5,512
42001b04:	e781                	bnez	a5,42001b0c <_vfiprintf_r+0x40>
42001b06:	4ca8                	lw	a0,88(s1)
42001b08:	72f000ef          	jal	42002a36 <__retarget_lock_acquire_recursive>
42001b0c:	00c4d783          	lhu	a5,12(s1)
42001b10:	8ba1                	andi	a5,a5,8
42001b12:	c399                	beqz	a5,42001b18 <_vfiprintf_r+0x4c>
42001b14:	489c                	lw	a5,16(s1)
42001b16:	e3a1                	bnez	a5,42001b56 <_vfiprintf_r+0x8a>
42001b18:	85a6                	mv	a1,s1
42001b1a:	854e                	mv	a0,s3
42001b1c:	56f000ef          	jal	4200288a <__swsetup_r>
42001b20:	c91d                	beqz	a0,42001b56 <_vfiprintf_r+0x8a>
42001b22:	50fc                	lw	a5,100(s1)
42001b24:	8b85                	andi	a5,a5,1
42001b26:	cf99                	beqz	a5,42001b44 <_vfiprintf_r+0x78>
42001b28:	557d                	li	a0,-1
42001b2a:	40fa                	lw	ra,156(sp)
42001b2c:	446a                	lw	s0,152(sp)
42001b2e:	44da                	lw	s1,148(sp)
42001b30:	494a                	lw	s2,144(sp)
42001b32:	49ba                	lw	s3,140(sp)
42001b34:	4a2a                	lw	s4,136(sp)
42001b36:	4a9a                	lw	s5,132(sp)
42001b38:	4b0a                	lw	s6,128(sp)
42001b3a:	5bf6                	lw	s7,124(sp)
42001b3c:	5c66                	lw	s8,120(sp)
42001b3e:	5cd6                	lw	s9,116(sp)
42001b40:	610d                	addi	sp,sp,160
42001b42:	8082                	ret
42001b44:	00c4d783          	lhu	a5,12(s1)
42001b48:	2007f793          	andi	a5,a5,512
42001b4c:	fff1                	bnez	a5,42001b28 <_vfiprintf_r+0x5c>
42001b4e:	4ca8                	lw	a0,88(s1)
42001b50:	6f3000ef          	jal	42002a42 <__retarget_lock_release_recursive>
42001b54:	bfd1                	j	42001b28 <_vfiprintf_r+0x5c>
42001b56:	02000793          	li	a5,32
42001b5a:	02f104a3          	sb	a5,41(sp)
42001b5e:	03000793          	li	a5,48
42001b62:	d202                	sw	zero,36(sp)
42001b64:	02f10523          	sb	a5,42(sp)
42001b68:	c622                	sw	s0,12(sp)
42001b6a:	02500b93          	li	s7,37
42001b6e:	5afd                	li	s5,-1
42001b70:	4c05                	li	s8,1
42001b72:	4b29                	li	s6,10
42001b74:	844a                	mv	s0,s2
42001b76:	00044783          	lbu	a5,0(s0)
42001b7a:	c399                	beqz	a5,42001b80 <_vfiprintf_r+0xb4>
42001b7c:	09779d63          	bne	a5,s7,42001c16 <_vfiprintf_r+0x14a>
42001b80:	41240cb3          	sub	s9,s0,s2
42001b84:	01240c63          	beq	s0,s2,42001b9c <_vfiprintf_r+0xd0>
42001b88:	86e6                	mv	a3,s9
42001b8a:	864a                	mv	a2,s2
42001b8c:	85a6                	mv	a1,s1
42001b8e:	854e                	mv	a0,s3
42001b90:	3dd9                	jal	42001a66 <__sfputs_r>
42001b92:	1b550263          	beq	a0,s5,42001d36 <_vfiprintf_r+0x26a>
42001b96:	5792                	lw	a5,36(sp)
42001b98:	97e6                	add	a5,a5,s9
42001b9a:	d23e                	sw	a5,36(sp)
42001b9c:	00044783          	lbu	a5,0(s0)
42001ba0:	18078b63          	beqz	a5,42001d36 <_vfiprintf_r+0x26a>
42001ba4:	00140913          	addi	s2,s0,1
42001ba8:	c802                	sw	zero,16(sp)
42001baa:	ce02                	sw	zero,28(sp)
42001bac:	ca56                	sw	s5,20(sp)
42001bae:	cc02                	sw	zero,24(sp)
42001bb0:	040109a3          	sb	zero,83(sp)
42001bb4:	d482                	sw	zero,104(sp)
42001bb6:	42003cb7          	lui	s9,0x42003
42001bba:	00094583          	lbu	a1,0(s2)
42001bbe:	4615                	li	a2,5
42001bc0:	664c8513          	addi	a0,s9,1636 # 42003664 <GPIO_PIN_MUX_REG+0xbc>
42001bc4:	583000ef          	jal	42002946 <memchr>
42001bc8:	4742                	lw	a4,16(sp)
42001bca:	87aa                	mv	a5,a0
42001bcc:	00190413          	addi	s0,s2,1
42001bd0:	e529                	bnez	a0,42001c1a <_vfiprintf_r+0x14e>
42001bd2:	01077793          	andi	a5,a4,16
42001bd6:	c789                	beqz	a5,42001be0 <_vfiprintf_r+0x114>
42001bd8:	02000793          	li	a5,32
42001bdc:	04f109a3          	sb	a5,83(sp)
42001be0:	00877793          	andi	a5,a4,8
42001be4:	c789                	beqz	a5,42001bee <_vfiprintf_r+0x122>
42001be6:	02b00793          	li	a5,43
42001bea:	04f109a3          	sb	a5,83(sp)
42001bee:	00094683          	lbu	a3,0(s2)
42001bf2:	02a00793          	li	a5,42
42001bf6:	02f68b63          	beq	a3,a5,42001c2c <_vfiprintf_r+0x160>
42001bfa:	47f2                	lw	a5,28(sp)
42001bfc:	844a                	mv	s0,s2
42001bfe:	4681                	li	a3,0
42001c00:	4625                	li	a2,9
42001c02:	00044703          	lbu	a4,0(s0)
42001c06:	00140593          	addi	a1,s0,1
42001c0a:	fd070713          	addi	a4,a4,-48
42001c0e:	06e67563          	bgeu	a2,a4,42001c78 <_vfiprintf_r+0x1ac>
42001c12:	e685                	bnez	a3,42001c3a <_vfiprintf_r+0x16e>
42001c14:	a81d                	j	42001c4a <_vfiprintf_r+0x17e>
42001c16:	0405                	addi	s0,s0,1
42001c18:	bfb9                	j	42001b76 <_vfiprintf_r+0xaa>
42001c1a:	664c8693          	addi	a3,s9,1636
42001c1e:	8f95                	sub	a5,a5,a3
42001c20:	00fc17b3          	sll	a5,s8,a5
42001c24:	8fd9                	or	a5,a5,a4
42001c26:	c83e                	sw	a5,16(sp)
42001c28:	8922                	mv	s2,s0
42001c2a:	bf41                	j	42001bba <_vfiprintf_r+0xee>
42001c2c:	47b2                	lw	a5,12(sp)
42001c2e:	00478693          	addi	a3,a5,4
42001c32:	439c                	lw	a5,0(a5)
42001c34:	c636                	sw	a3,12(sp)
42001c36:	0007c463          	bltz	a5,42001c3e <_vfiprintf_r+0x172>
42001c3a:	ce3e                	sw	a5,28(sp)
42001c3c:	a039                	j	42001c4a <_vfiprintf_r+0x17e>
42001c3e:	40f007b3          	neg	a5,a5
42001c42:	00276713          	ori	a4,a4,2
42001c46:	ce3e                	sw	a5,28(sp)
42001c48:	c83a                	sw	a4,16(sp)
42001c4a:	00044703          	lbu	a4,0(s0)
42001c4e:	02e00793          	li	a5,46
42001c52:	04f71763          	bne	a4,a5,42001ca0 <_vfiprintf_r+0x1d4>
42001c56:	00144703          	lbu	a4,1(s0)
42001c5a:	02a00793          	li	a5,42
42001c5e:	02f71363          	bne	a4,a5,42001c84 <_vfiprintf_r+0x1b8>
42001c62:	47b2                	lw	a5,12(sp)
42001c64:	0409                	addi	s0,s0,2
42001c66:	00478713          	addi	a4,a5,4
42001c6a:	439c                	lw	a5,0(a5)
42001c6c:	c63a                	sw	a4,12(sp)
42001c6e:	0007d363          	bgez	a5,42001c74 <_vfiprintf_r+0x1a8>
42001c72:	57fd                	li	a5,-1
42001c74:	ca3e                	sw	a5,20(sp)
42001c76:	a02d                	j	42001ca0 <_vfiprintf_r+0x1d4>
42001c78:	036787b3          	mul	a5,a5,s6
42001c7c:	842e                	mv	s0,a1
42001c7e:	4685                	li	a3,1
42001c80:	97ba                	add	a5,a5,a4
42001c82:	b741                	j	42001c02 <_vfiprintf_r+0x136>
42001c84:	0405                	addi	s0,s0,1
42001c86:	ca02                	sw	zero,20(sp)
42001c88:	4681                	li	a3,0
42001c8a:	4781                	li	a5,0
42001c8c:	4625                	li	a2,9
42001c8e:	00044703          	lbu	a4,0(s0)
42001c92:	00140593          	addi	a1,s0,1
42001c96:	fd070713          	addi	a4,a4,-48
42001c9a:	06e67563          	bgeu	a2,a4,42001d04 <_vfiprintf_r+0x238>
42001c9e:	faf9                	bnez	a3,42001c74 <_vfiprintf_r+0x1a8>
42001ca0:	00044583          	lbu	a1,0(s0)
42001ca4:	42003937          	lui	s2,0x42003
42001ca8:	460d                	li	a2,3
42001caa:	66c90513          	addi	a0,s2,1644 # 4200366c <GPIO_PIN_MUX_REG+0xc4>
42001cae:	499000ef          	jal	42002946 <memchr>
42001cb2:	cd09                	beqz	a0,42001ccc <_vfiprintf_r+0x200>
42001cb4:	47c2                	lw	a5,16(sp)
42001cb6:	66c90913          	addi	s2,s2,1644
42001cba:	41250533          	sub	a0,a0,s2
42001cbe:	04000713          	li	a4,64
42001cc2:	00a71733          	sll	a4,a4,a0
42001cc6:	8fd9                	or	a5,a5,a4
42001cc8:	0405                	addi	s0,s0,1
42001cca:	c83e                	sw	a5,16(sp)
42001ccc:	00044583          	lbu	a1,0(s0)
42001cd0:	42003537          	lui	a0,0x42003
42001cd4:	4619                	li	a2,6
42001cd6:	67050513          	addi	a0,a0,1648 # 42003670 <GPIO_PIN_MUX_REG+0xc8>
42001cda:	00140913          	addi	s2,s0,1
42001cde:	02b10423          	sb	a1,40(sp)
42001ce2:	465000ef          	jal	42002946 <memchr>
42001ce6:	c93d                	beqz	a0,42001d5c <_vfiprintf_r+0x290>
42001ce8:	00000793          	li	a5,0
42001cec:	e795                	bnez	a5,42001d18 <_vfiprintf_r+0x24c>
42001cee:	4742                	lw	a4,16(sp)
42001cf0:	47b2                	lw	a5,12(sp)
42001cf2:	10077713          	andi	a4,a4,256
42001cf6:	cf09                	beqz	a4,42001d10 <_vfiprintf_r+0x244>
42001cf8:	0791                	addi	a5,a5,4
42001cfa:	c63e                	sw	a5,12(sp)
42001cfc:	5792                	lw	a5,36(sp)
42001cfe:	97d2                	add	a5,a5,s4
42001d00:	d23e                	sw	a5,36(sp)
42001d02:	bd8d                	j	42001b74 <_vfiprintf_r+0xa8>
42001d04:	036787b3          	mul	a5,a5,s6
42001d08:	842e                	mv	s0,a1
42001d0a:	4685                	li	a3,1
42001d0c:	97ba                	add	a5,a5,a4
42001d0e:	b741                	j	42001c8e <_vfiprintf_r+0x1c2>
42001d10:	079d                	addi	a5,a5,7
42001d12:	9be1                	andi	a5,a5,-8
42001d14:	07a1                	addi	a5,a5,8
42001d16:	b7d5                	j	42001cfa <_vfiprintf_r+0x22e>
42001d18:	420026b7          	lui	a3,0x42002
42001d1c:	0078                	addi	a4,sp,12
42001d1e:	a6668693          	addi	a3,a3,-1434 # 42001a66 <__sfputs_r>
42001d22:	8626                	mv	a2,s1
42001d24:	080c                	addi	a1,sp,16
42001d26:	854e                	mv	a0,s3
42001d28:	00000097          	auipc	ra,0x0
42001d2c:	000000e7          	jalr	zero # 0 <rtc_get_reset_reason-0x40000018>
42001d30:	8a2a                	mv	s4,a0
42001d32:	fd5515e3          	bne	a0,s5,42001cfc <_vfiprintf_r+0x230>
42001d36:	50fc                	lw	a5,100(s1)
42001d38:	8b85                	andi	a5,a5,1
42001d3a:	eb89                	bnez	a5,42001d4c <_vfiprintf_r+0x280>
42001d3c:	00c4d783          	lhu	a5,12(s1)
42001d40:	2007f793          	andi	a5,a5,512
42001d44:	e781                	bnez	a5,42001d4c <_vfiprintf_r+0x280>
42001d46:	4ca8                	lw	a0,88(s1)
42001d48:	4fb000ef          	jal	42002a42 <__retarget_lock_release_recursive>
42001d4c:	00c4d783          	lhu	a5,12(s1)
42001d50:	0407f793          	andi	a5,a5,64
42001d54:	dc079ae3          	bnez	a5,42001b28 <_vfiprintf_r+0x5c>
42001d58:	5512                	lw	a0,36(sp)
42001d5a:	bbc1                	j	42001b2a <_vfiprintf_r+0x5e>
42001d5c:	420026b7          	lui	a3,0x42002
42001d60:	0078                	addi	a4,sp,12
42001d62:	a6668693          	addi	a3,a3,-1434 # 42001a66 <__sfputs_r>
42001d66:	8626                	mv	a2,s1
42001d68:	080c                	addi	a1,sp,16
42001d6a:	854e                	mv	a0,s3
42001d6c:	2a25                	jal	42001ea4 <_printf_i>
42001d6e:	b7c9                	j	42001d30 <_vfiprintf_r+0x264>

42001d70 <vfiprintf>:
42001d70:	1101                	addi	sp,sp,-32
42001d72:	cc22                	sw	s0,24(sp)
42001d74:	ca26                	sw	s1,20(sp)
42001d76:	ce06                	sw	ra,28(sp)
42001d78:	84ae                	mv	s1,a1
42001d7a:	842a                	mv	s0,a0
42001d7c:	c632                	sw	a2,12(sp)
42001d7e:	5bc010ef          	jal	4200333a <__getreent>
42001d82:	85a2                	mv	a1,s0
42001d84:	4462                	lw	s0,24(sp)
42001d86:	46b2                	lw	a3,12(sp)
42001d88:	40f2                	lw	ra,28(sp)
42001d8a:	8626                	mv	a2,s1
42001d8c:	44d2                	lw	s1,20(sp)
42001d8e:	6105                	addi	sp,sp,32
42001d90:	bb35                	j	42001acc <_vfiprintf_r>

42001d92 <_printf_common>:
42001d92:	7179                	addi	sp,sp,-48
42001d94:	ca56                	sw	s5,20(sp)
42001d96:	499c                	lw	a5,16(a1)
42001d98:	8aba                	mv	s5,a4
42001d9a:	4598                	lw	a4,8(a1)
42001d9c:	d422                	sw	s0,40(sp)
42001d9e:	d04a                	sw	s2,32(sp)
42001da0:	ce4e                	sw	s3,28(sp)
42001da2:	cc52                	sw	s4,24(sp)
42001da4:	d606                	sw	ra,44(sp)
42001da6:	d226                	sw	s1,36(sp)
42001da8:	c85a                	sw	s6,16(sp)
42001daa:	c65e                	sw	s7,12(sp)
42001dac:	89aa                	mv	s3,a0
42001dae:	842e                	mv	s0,a1
42001db0:	8932                	mv	s2,a2
42001db2:	8a36                	mv	s4,a3
42001db4:	00e7d363          	bge	a5,a4,42001dba <_printf_common+0x28>
42001db8:	87ba                	mv	a5,a4
42001dba:	00f92023          	sw	a5,0(s2)
42001dbe:	04344703          	lbu	a4,67(s0)
42001dc2:	c701                	beqz	a4,42001dca <_printf_common+0x38>
42001dc4:	0785                	addi	a5,a5,1
42001dc6:	00f92023          	sw	a5,0(s2)
42001dca:	401c                	lw	a5,0(s0)
42001dcc:	0207f793          	andi	a5,a5,32
42001dd0:	c791                	beqz	a5,42001ddc <_printf_common+0x4a>
42001dd2:	00092783          	lw	a5,0(s2)
42001dd6:	0789                	addi	a5,a5,2
42001dd8:	00f92023          	sw	a5,0(s2)
42001ddc:	4004                	lw	s1,0(s0)
42001dde:	8899                	andi	s1,s1,6
42001de0:	e891                	bnez	s1,42001df4 <_printf_common+0x62>
42001de2:	01940b13          	addi	s6,s0,25
42001de6:	5bfd                	li	s7,-1
42001de8:	445c                	lw	a5,12(s0)
42001dea:	00092703          	lw	a4,0(s2)
42001dee:	8f99                	sub	a5,a5,a4
42001df0:	04f4cd63          	blt	s1,a5,42001e4a <_printf_common+0xb8>
42001df4:	04344783          	lbu	a5,67(s0)
42001df8:	00f036b3          	snez	a3,a5
42001dfc:	401c                	lw	a5,0(s0)
42001dfe:	0207f793          	andi	a5,a5,32
42001e02:	ebad                	bnez	a5,42001e74 <_printf_common+0xe2>
42001e04:	04340613          	addi	a2,s0,67
42001e08:	85d2                	mv	a1,s4
42001e0a:	854e                	mv	a0,s3
42001e0c:	9a82                	jalr	s5
42001e0e:	57fd                	li	a5,-1
42001e10:	04f50463          	beq	a0,a5,42001e58 <_printf_common+0xc6>
42001e14:	401c                	lw	a5,0(s0)
42001e16:	4711                	li	a4,4
42001e18:	4481                	li	s1,0
42001e1a:	8b99                	andi	a5,a5,6
42001e1c:	00e79a63          	bne	a5,a4,42001e30 <_printf_common+0x9e>
42001e20:	00092783          	lw	a5,0(s2)
42001e24:	4444                	lw	s1,12(s0)
42001e26:	8c9d                	sub	s1,s1,a5
42001e28:	fff4c793          	not	a5,s1
42001e2c:	87fd                	srai	a5,a5,0x1f
42001e2e:	8cfd                	and	s1,s1,a5
42001e30:	441c                	lw	a5,8(s0)
42001e32:	4818                	lw	a4,16(s0)
42001e34:	00f75463          	bge	a4,a5,42001e3c <_printf_common+0xaa>
42001e38:	8f99                	sub	a5,a5,a4
42001e3a:	94be                	add	s1,s1,a5
42001e3c:	4901                	li	s2,0
42001e3e:	0469                	addi	s0,s0,26
42001e40:	5b7d                	li	s6,-1
42001e42:	05249863          	bne	s1,s2,42001e92 <_printf_common+0x100>
42001e46:	4501                	li	a0,0
42001e48:	a809                	j	42001e5a <_printf_common+0xc8>
42001e4a:	4685                	li	a3,1
42001e4c:	865a                	mv	a2,s6
42001e4e:	85d2                	mv	a1,s4
42001e50:	854e                	mv	a0,s3
42001e52:	9a82                	jalr	s5
42001e54:	01751e63          	bne	a0,s7,42001e70 <_printf_common+0xde>
42001e58:	557d                	li	a0,-1
42001e5a:	50b2                	lw	ra,44(sp)
42001e5c:	5422                	lw	s0,40(sp)
42001e5e:	5492                	lw	s1,36(sp)
42001e60:	5902                	lw	s2,32(sp)
42001e62:	49f2                	lw	s3,28(sp)
42001e64:	4a62                	lw	s4,24(sp)
42001e66:	4ad2                	lw	s5,20(sp)
42001e68:	4b42                	lw	s6,16(sp)
42001e6a:	4bb2                	lw	s7,12(sp)
42001e6c:	6145                	addi	sp,sp,48
42001e6e:	8082                	ret
42001e70:	0485                	addi	s1,s1,1
42001e72:	bf9d                	j	42001de8 <_printf_common+0x56>
42001e74:	00d40733          	add	a4,s0,a3
42001e78:	03000613          	li	a2,48
42001e7c:	04c701a3          	sb	a2,67(a4)
42001e80:	04544703          	lbu	a4,69(s0)
42001e84:	00168793          	addi	a5,a3,1
42001e88:	97a2                	add	a5,a5,s0
42001e8a:	0689                	addi	a3,a3,2
42001e8c:	04e781a3          	sb	a4,67(a5)
42001e90:	bf95                	j	42001e04 <_printf_common+0x72>
42001e92:	4685                	li	a3,1
42001e94:	8622                	mv	a2,s0
42001e96:	85d2                	mv	a1,s4
42001e98:	854e                	mv	a0,s3
42001e9a:	9a82                	jalr	s5
42001e9c:	fb650ee3          	beq	a0,s6,42001e58 <_printf_common+0xc6>
42001ea0:	0905                	addi	s2,s2,1
42001ea2:	b745                	j	42001e42 <_printf_common+0xb0>

42001ea4 <_printf_i>:
42001ea4:	7179                	addi	sp,sp,-48
42001ea6:	d422                	sw	s0,40(sp)
42001ea8:	d226                	sw	s1,36(sp)
42001eaa:	d04a                	sw	s2,32(sp)
42001eac:	ce4e                	sw	s3,28(sp)
42001eae:	d606                	sw	ra,44(sp)
42001eb0:	cc52                	sw	s4,24(sp)
42001eb2:	ca56                	sw	s5,20(sp)
42001eb4:	c85a                	sw	s6,16(sp)
42001eb6:	0185c883          	lbu	a7,24(a1)
42001eba:	07800793          	li	a5,120
42001ebe:	84aa                	mv	s1,a0
42001ec0:	842e                	mv	s0,a1
42001ec2:	8932                	mv	s2,a2
42001ec4:	89b6                	mv	s3,a3
42001ec6:	0117ee63          	bltu	a5,a7,42001ee2 <_printf_i+0x3e>
42001eca:	06200793          	li	a5,98
42001ece:	04358693          	addi	a3,a1,67
42001ed2:	0117ed63          	bltu	a5,a7,42001eec <_printf_i+0x48>
42001ed6:	1a088c63          	beqz	a7,4200208e <_printf_i+0x1ea>
42001eda:	05800793          	li	a5,88
42001ede:	16f88863          	beq	a7,a5,4200204e <_printf_i+0x1aa>
42001ee2:	04240a93          	addi	s5,s0,66
42001ee6:	05140123          	sb	a7,66(s0)
42001eea:	a80d                	j	42001f1c <_printf_i+0x78>
42001eec:	f9d88793          	addi	a5,a7,-99
42001ef0:	0ff7f793          	zext.b	a5,a5
42001ef4:	4655                	li	a2,21
42001ef6:	fef666e3          	bltu	a2,a5,42001ee2 <_printf_i+0x3e>
42001efa:	42003637          	lui	a2,0x42003
42001efe:	078a                	slli	a5,a5,0x2
42001f00:	53860613          	addi	a2,a2,1336 # 42003538 <__clz_tab+0x100>
42001f04:	97b2                	add	a5,a5,a2
42001f06:	439c                	lw	a5,0(a5)
42001f08:	8782                	jr	a5
42001f0a:	431c                	lw	a5,0(a4)
42001f0c:	04258a93          	addi	s5,a1,66
42001f10:	00478693          	addi	a3,a5,4
42001f14:	439c                	lw	a5,0(a5)
42001f16:	c314                	sw	a3,0(a4)
42001f18:	04f58123          	sb	a5,66(a1)
42001f1c:	4785                	li	a5,1
42001f1e:	aa61                	j	420020b6 <_printf_i+0x212>
42001f20:	419c                	lw	a5,0(a1)
42001f22:	4308                	lw	a0,0(a4)
42001f24:	0807f613          	andi	a2,a5,128
42001f28:	00450593          	addi	a1,a0,4
42001f2c:	c20d                	beqz	a2,42001f4e <_printf_i+0xaa>
42001f2e:	411c                	lw	a5,0(a0)
42001f30:	c30c                	sw	a1,0(a4)
42001f32:	42003837          	lui	a6,0x42003
42001f36:	0007d863          	bgez	a5,42001f46 <_printf_i+0xa2>
42001f3a:	02d00713          	li	a4,45
42001f3e:	40f007b3          	neg	a5,a5
42001f42:	04e401a3          	sb	a4,67(s0)
42001f46:	67880813          	addi	a6,a6,1656 # 42003678 <GPIO_PIN_MUX_REG+0xd0>
42001f4a:	48a9                	li	a7,10
42001f4c:	a089                	j	42001f8e <_printf_i+0xea>
42001f4e:	0407f613          	andi	a2,a5,64
42001f52:	411c                	lw	a5,0(a0)
42001f54:	c30c                	sw	a1,0(a4)
42001f56:	de71                	beqz	a2,42001f32 <_printf_i+0x8e>
42001f58:	07c2                	slli	a5,a5,0x10
42001f5a:	87c1                	srai	a5,a5,0x10
42001f5c:	bfd9                	j	42001f32 <_printf_i+0x8e>
42001f5e:	418c                	lw	a1,0(a1)
42001f60:	4310                	lw	a2,0(a4)
42001f62:	0805f513          	andi	a0,a1,128
42001f66:	421c                	lw	a5,0(a2)
42001f68:	0611                	addi	a2,a2,4
42001f6a:	e511                	bnez	a0,42001f76 <_printf_i+0xd2>
42001f6c:	0405f593          	andi	a1,a1,64
42001f70:	c199                	beqz	a1,42001f76 <_printf_i+0xd2>
42001f72:	07c2                	slli	a5,a5,0x10
42001f74:	83c1                	srli	a5,a5,0x10
42001f76:	c310                	sw	a2,0(a4)
42001f78:	42003837          	lui	a6,0x42003
42001f7c:	06f00713          	li	a4,111
42001f80:	67880813          	addi	a6,a6,1656 # 42003678 <GPIO_PIN_MUX_REG+0xd0>
42001f84:	0ce89f63          	bne	a7,a4,42002062 <_printf_i+0x1be>
42001f88:	48a1                	li	a7,8
42001f8a:	040401a3          	sb	zero,67(s0)
42001f8e:	4058                	lw	a4,4(s0)
42001f90:	c418                	sw	a4,8(s0)
42001f92:	00074863          	bltz	a4,42001fa2 <_printf_i+0xfe>
42001f96:	4010                	lw	a2,0(s0)
42001f98:	8f5d                	or	a4,a4,a5
42001f9a:	8ab6                	mv	s5,a3
42001f9c:	9a6d                	andi	a2,a2,-5
42001f9e:	c010                	sw	a2,0(s0)
42001fa0:	cf19                	beqz	a4,42001fbe <_printf_i+0x11a>
42001fa2:	8ab6                	mv	s5,a3
42001fa4:	0317f733          	remu	a4,a5,a7
42001fa8:	1afd                	addi	s5,s5,-1
42001faa:	9742                	add	a4,a4,a6
42001fac:	00074703          	lbu	a4,0(a4)
42001fb0:	00ea8023          	sb	a4,0(s5)
42001fb4:	873e                	mv	a4,a5
42001fb6:	0317d7b3          	divu	a5,a5,a7
42001fba:	ff1775e3          	bgeu	a4,a7,42001fa4 <_printf_i+0x100>
42001fbe:	47a1                	li	a5,8
42001fc0:	00f89e63          	bne	a7,a5,42001fdc <_printf_i+0x138>
42001fc4:	401c                	lw	a5,0(s0)
42001fc6:	8b85                	andi	a5,a5,1
42001fc8:	cb91                	beqz	a5,42001fdc <_printf_i+0x138>
42001fca:	4058                	lw	a4,4(s0)
42001fcc:	481c                	lw	a5,16(s0)
42001fce:	00e7c763          	blt	a5,a4,42001fdc <_printf_i+0x138>
42001fd2:	03000793          	li	a5,48
42001fd6:	fefa8fa3          	sb	a5,-1(s5)
42001fda:	1afd                	addi	s5,s5,-1
42001fdc:	415686b3          	sub	a3,a3,s5
42001fe0:	c814                	sw	a3,16(s0)
42001fe2:	874e                	mv	a4,s3
42001fe4:	86ca                	mv	a3,s2
42001fe6:	0070                	addi	a2,sp,12
42001fe8:	85a2                	mv	a1,s0
42001fea:	8526                	mv	a0,s1
42001fec:	335d                	jal	42001d92 <_printf_common>
42001fee:	5a7d                	li	s4,-1
42001ff0:	0d451763          	bne	a0,s4,420020be <_printf_i+0x21a>
42001ff4:	557d                	li	a0,-1
42001ff6:	50b2                	lw	ra,44(sp)
42001ff8:	5422                	lw	s0,40(sp)
42001ffa:	5492                	lw	s1,36(sp)
42001ffc:	5902                	lw	s2,32(sp)
42001ffe:	49f2                	lw	s3,28(sp)
42002000:	4a62                	lw	s4,24(sp)
42002002:	4ad2                	lw	s5,20(sp)
42002004:	4b42                	lw	s6,16(sp)
42002006:	6145                	addi	sp,sp,48
42002008:	8082                	ret
4200200a:	419c                	lw	a5,0(a1)
4200200c:	0207e793          	ori	a5,a5,32
42002010:	c19c                	sw	a5,0(a1)
42002012:	42003837          	lui	a6,0x42003
42002016:	07800893          	li	a7,120
4200201a:	68c80813          	addi	a6,a6,1676 # 4200368c <GPIO_PIN_MUX_REG+0xe4>
4200201e:	051402a3          	sb	a7,69(s0)
42002022:	4010                	lw	a2,0(s0)
42002024:	430c                	lw	a1,0(a4)
42002026:	08067513          	andi	a0,a2,128
4200202a:	419c                	lw	a5,0(a1)
4200202c:	0591                	addi	a1,a1,4
4200202e:	e511                	bnez	a0,4200203a <_printf_i+0x196>
42002030:	04067513          	andi	a0,a2,64
42002034:	c119                	beqz	a0,4200203a <_printf_i+0x196>
42002036:	07c2                	slli	a5,a5,0x10
42002038:	83c1                	srli	a5,a5,0x10
4200203a:	c30c                	sw	a1,0(a4)
4200203c:	00167713          	andi	a4,a2,1
42002040:	c701                	beqz	a4,42002048 <_printf_i+0x1a4>
42002042:	02066613          	ori	a2,a2,32
42002046:	c010                	sw	a2,0(s0)
42002048:	cb81                	beqz	a5,42002058 <_printf_i+0x1b4>
4200204a:	48c1                	li	a7,16
4200204c:	bf3d                	j	42001f8a <_printf_i+0xe6>
4200204e:	42003837          	lui	a6,0x42003
42002052:	67880813          	addi	a6,a6,1656 # 42003678 <GPIO_PIN_MUX_REG+0xd0>
42002056:	b7e1                	j	4200201e <_printf_i+0x17a>
42002058:	4018                	lw	a4,0(s0)
4200205a:	fdf77713          	andi	a4,a4,-33
4200205e:	c018                	sw	a4,0(s0)
42002060:	b7ed                	j	4200204a <_printf_i+0x1a6>
42002062:	48a9                	li	a7,10
42002064:	b71d                	j	42001f8a <_printf_i+0xe6>
42002066:	4190                	lw	a2,0(a1)
42002068:	431c                	lw	a5,0(a4)
4200206a:	49cc                	lw	a1,20(a1)
4200206c:	08067813          	andi	a6,a2,128
42002070:	00478513          	addi	a0,a5,4
42002074:	00080663          	beqz	a6,42002080 <_printf_i+0x1dc>
42002078:	c308                	sw	a0,0(a4)
4200207a:	439c                	lw	a5,0(a5)
4200207c:	c38c                	sw	a1,0(a5)
4200207e:	a801                	j	4200208e <_printf_i+0x1ea>
42002080:	c308                	sw	a0,0(a4)
42002082:	04067613          	andi	a2,a2,64
42002086:	439c                	lw	a5,0(a5)
42002088:	da75                	beqz	a2,4200207c <_printf_i+0x1d8>
4200208a:	00b79023          	sh	a1,0(a5)
4200208e:	00042823          	sw	zero,16(s0)
42002092:	8ab6                	mv	s5,a3
42002094:	b7b9                	j	42001fe2 <_printf_i+0x13e>
42002096:	431c                	lw	a5,0(a4)
42002098:	41d0                	lw	a2,4(a1)
4200209a:	4581                	li	a1,0
4200209c:	00478693          	addi	a3,a5,4
420020a0:	c314                	sw	a3,0(a4)
420020a2:	0007aa83          	lw	s5,0(a5)
420020a6:	8556                	mv	a0,s5
420020a8:	09f000ef          	jal	42002946 <memchr>
420020ac:	c501                	beqz	a0,420020b4 <_printf_i+0x210>
420020ae:	41550533          	sub	a0,a0,s5
420020b2:	c048                	sw	a0,4(s0)
420020b4:	405c                	lw	a5,4(s0)
420020b6:	c81c                	sw	a5,16(s0)
420020b8:	040401a3          	sb	zero,67(s0)
420020bc:	b71d                	j	42001fe2 <_printf_i+0x13e>
420020be:	4814                	lw	a3,16(s0)
420020c0:	8656                	mv	a2,s5
420020c2:	85ca                	mv	a1,s2
420020c4:	8526                	mv	a0,s1
420020c6:	9982                	jalr	s3
420020c8:	f34506e3          	beq	a0,s4,42001ff4 <_printf_i+0x150>
420020cc:	401c                	lw	a5,0(s0)
420020ce:	8b89                	andi	a5,a5,2
420020d0:	e78d                	bnez	a5,420020fa <_printf_i+0x256>
420020d2:	47b2                	lw	a5,12(sp)
420020d4:	4448                	lw	a0,12(s0)
420020d6:	f2f550e3          	bge	a0,a5,42001ff6 <_printf_i+0x152>
420020da:	853e                	mv	a0,a5
420020dc:	bf29                	j	42001ff6 <_printf_i+0x152>
420020de:	4685                	li	a3,1
420020e0:	865a                	mv	a2,s6
420020e2:	85ca                	mv	a1,s2
420020e4:	8526                	mv	a0,s1
420020e6:	9982                	jalr	s3
420020e8:	f14506e3          	beq	a0,s4,42001ff4 <_printf_i+0x150>
420020ec:	0a85                	addi	s5,s5,1
420020ee:	445c                	lw	a5,12(s0)
420020f0:	4732                	lw	a4,12(sp)
420020f2:	8f99                	sub	a5,a5,a4
420020f4:	fefac5e3          	blt	s5,a5,420020de <_printf_i+0x23a>
420020f8:	bfe9                	j	420020d2 <_printf_i+0x22e>
420020fa:	4a81                	li	s5,0
420020fc:	01940b13          	addi	s6,s0,25
42002100:	b7fd                	j	420020ee <_printf_i+0x24a>

42002102 <std>:
42002102:	1141                	addi	sp,sp,-16
42002104:	c422                	sw	s0,8(sp)
42002106:	c606                	sw	ra,12(sp)
42002108:	842a                	mv	s0,a0
4200210a:	00b51623          	sh	a1,12(a0)
4200210e:	00c51723          	sh	a2,14(a0)
42002112:	00052023          	sw	zero,0(a0)
42002116:	00052223          	sw	zero,4(a0)
4200211a:	00052423          	sw	zero,8(a0)
4200211e:	06052223          	sw	zero,100(a0)
42002122:	00052823          	sw	zero,16(a0)
42002126:	00052a23          	sw	zero,20(a0)
4200212a:	00052c23          	sw	zero,24(a0)
4200212e:	4621                	li	a2,8
42002130:	4581                	li	a1,0
42002132:	05c50513          	addi	a0,a0,92
42002136:	bd6ff0ef          	jal	4200150c <memset>
4200213a:	420027b7          	lui	a5,0x42002
4200213e:	71878793          	addi	a5,a5,1816 # 42002718 <__sread>
42002142:	d05c                	sw	a5,36(s0)
42002144:	420027b7          	lui	a5,0x42002
42002148:	74c78793          	addi	a5,a5,1868 # 4200274c <__swrite>
4200214c:	d41c                	sw	a5,40(s0)
4200214e:	420027b7          	lui	a5,0x42002
42002152:	79a78793          	addi	a5,a5,1946 # 4200279a <__sseek>
42002156:	d45c                	sw	a5,44(s0)
42002158:	420027b7          	lui	a5,0x42002
4200215c:	7d078793          	addi	a5,a5,2000 # 420027d0 <__sclose>
42002160:	d81c                	sw	a5,48(s0)
42002162:	408007b7          	lui	a5,0x40800
42002166:	d000                	sw	s0,32(s0)
42002168:	5c478793          	addi	a5,a5,1476 # 408005c4 <__sf>
4200216c:	00f40a63          	beq	s0,a5,42002180 <std+0x7e>
42002170:	06878713          	addi	a4,a5,104
42002174:	00e40663          	beq	s0,a4,42002180 <std+0x7e>
42002178:	0d078793          	addi	a5,a5,208
4200217c:	00f41963          	bne	s0,a5,4200218e <std+0x8c>
42002180:	05840513          	addi	a0,s0,88
42002184:	4422                	lw	s0,8(sp)
42002186:	40b2                	lw	ra,12(sp)
42002188:	0141                	addi	sp,sp,16
4200218a:	0a50006f          	j	42002a2e <__retarget_lock_init_recursive>
4200218e:	40b2                	lw	ra,12(sp)
42002190:	4422                	lw	s0,8(sp)
42002192:	0141                	addi	sp,sp,16
42002194:	8082                	ret

42002196 <stdio_exit_handler>:
42002196:	40800637          	lui	a2,0x40800
4200219a:	420035b7          	lui	a1,0x42003
4200219e:	40800537          	lui	a0,0x40800
420021a2:	00060613          	mv	a2,a2
420021a6:	e0c58593          	addi	a1,a1,-500 # 42002e0c <_fclose_r>
420021aa:	00c50513          	addi	a0,a0,12 # 4080000c <_impure_data>
420021ae:	a309                	j	420026b0 <_fwalk_sglue>

420021b0 <cleanup_stdio>:
420021b0:	1141                	addi	sp,sp,-16
420021b2:	414c                	lw	a1,4(a0)
420021b4:	c226                	sw	s1,4(sp)
420021b6:	408004b7          	lui	s1,0x40800
420021ba:	c422                	sw	s0,8(sp)
420021bc:	c606                	sw	ra,12(sp)
420021be:	5c448493          	addi	s1,s1,1476 # 408005c4 <__sf>
420021c2:	842a                	mv	s0,a0
420021c4:	00958463          	beq	a1,s1,420021cc <cleanup_stdio+0x1c>
420021c8:	445000ef          	jal	42002e0c <_fclose_r>
420021cc:	440c                	lw	a1,8(s0)
420021ce:	06848793          	addi	a5,s1,104
420021d2:	00f58563          	beq	a1,a5,420021dc <cleanup_stdio+0x2c>
420021d6:	8522                	mv	a0,s0
420021d8:	435000ef          	jal	42002e0c <_fclose_r>
420021dc:	444c                	lw	a1,12(s0)
420021de:	0d048493          	addi	s1,s1,208
420021e2:	00958963          	beq	a1,s1,420021f4 <cleanup_stdio+0x44>
420021e6:	8522                	mv	a0,s0
420021e8:	4422                	lw	s0,8(sp)
420021ea:	40b2                	lw	ra,12(sp)
420021ec:	4492                	lw	s1,4(sp)
420021ee:	0141                	addi	sp,sp,16
420021f0:	41d0006f          	j	42002e0c <_fclose_r>
420021f4:	40b2                	lw	ra,12(sp)
420021f6:	4422                	lw	s0,8(sp)
420021f8:	4492                	lw	s1,4(sp)
420021fa:	0141                	addi	sp,sp,16
420021fc:	8082                	ret

420021fe <__fp_lock>:
420021fe:	51fc                	lw	a5,100(a1)
42002200:	8b85                	andi	a5,a5,1
42002202:	ef99                	bnez	a5,42002220 <__fp_lock+0x22>
42002204:	00c5d783          	lhu	a5,12(a1)
42002208:	2007f793          	andi	a5,a5,512
4200220c:	eb91                	bnez	a5,42002220 <__fp_lock+0x22>
4200220e:	4da8                	lw	a0,88(a1)
42002210:	1141                	addi	sp,sp,-16
42002212:	c606                	sw	ra,12(sp)
42002214:	023000ef          	jal	42002a36 <__retarget_lock_acquire_recursive>
42002218:	40b2                	lw	ra,12(sp)
4200221a:	4501                	li	a0,0
4200221c:	0141                	addi	sp,sp,16
4200221e:	8082                	ret
42002220:	4501                	li	a0,0
42002222:	8082                	ret

42002224 <__fp_unlock>:
42002224:	51fc                	lw	a5,100(a1)
42002226:	8b85                	andi	a5,a5,1
42002228:	ef99                	bnez	a5,42002246 <__fp_unlock+0x22>
4200222a:	00c5d783          	lhu	a5,12(a1)
4200222e:	2007f793          	andi	a5,a5,512
42002232:	eb91                	bnez	a5,42002246 <__fp_unlock+0x22>
42002234:	4da8                	lw	a0,88(a1)
42002236:	1141                	addi	sp,sp,-16
42002238:	c606                	sw	ra,12(sp)
4200223a:	009000ef          	jal	42002a42 <__retarget_lock_release_recursive>
4200223e:	40b2                	lw	ra,12(sp)
42002240:	4501                	li	a0,0
42002242:	0141                	addi	sp,sp,16
42002244:	8082                	ret
42002246:	4501                	li	a0,0
42002248:	8082                	ret

4200224a <global_stdio_init.part.0>:
4200224a:	1141                	addi	sp,sp,-16
4200224c:	40800537          	lui	a0,0x40800
42002250:	420027b7          	lui	a5,0x42002
42002254:	c422                	sw	s0,8(sp)
42002256:	40800737          	lui	a4,0x40800
4200225a:	5c450413          	addi	s0,a0,1476 # 408005c4 <__sf>
4200225e:	19678793          	addi	a5,a5,406 # 42002196 <stdio_exit_handler>
42002262:	4601                	li	a2,0
42002264:	4591                	li	a1,4
42002266:	5c450513          	addi	a0,a0,1476
4200226a:	c606                	sw	ra,12(sp)
4200226c:	58f72823          	sw	a5,1424(a4) # 40800590 <__stdio_exit_handler>
42002270:	3d49                	jal	42002102 <std>
42002272:	06840513          	addi	a0,s0,104
42002276:	4605                	li	a2,1
42002278:	45a1                	li	a1,8
4200227a:	3561                	jal	42002102 <std>
4200227c:	0d040513          	addi	a0,s0,208
42002280:	4422                	lw	s0,8(sp)
42002282:	40b2                	lw	ra,12(sp)
42002284:	4609                	li	a2,2
42002286:	45c9                	li	a1,18
42002288:	0141                	addi	sp,sp,16
4200228a:	bda5                	j	42002102 <std>

4200228c <__sfp_lock_acquire>:
4200228c:	40800537          	lui	a0,0x40800
42002290:	5b450513          	addi	a0,a0,1460 # 408005b4 <__lock___sfp_recursive_mutex>
42002294:	7a20006f          	j	42002a36 <__retarget_lock_acquire_recursive>

42002298 <__sfp_lock_release>:
42002298:	40800537          	lui	a0,0x40800
4200229c:	5b450513          	addi	a0,a0,1460 # 408005b4 <__lock___sfp_recursive_mutex>
420022a0:	7a20006f          	j	42002a42 <__retarget_lock_release_recursive>

420022a4 <__sfp>:
420022a4:	1141                	addi	sp,sp,-16
420022a6:	c04a                	sw	s2,0(sp)
420022a8:	c606                	sw	ra,12(sp)
420022aa:	c422                	sw	s0,8(sp)
420022ac:	c226                	sw	s1,4(sp)
420022ae:	892a                	mv	s2,a0
420022b0:	3ff1                	jal	4200228c <__sfp_lock_acquire>
420022b2:	408007b7          	lui	a5,0x40800
420022b6:	5907a783          	lw	a5,1424(a5) # 40800590 <__stdio_exit_handler>
420022ba:	e391                	bnez	a5,420022be <__sfp+0x1a>
420022bc:	3779                	jal	4200224a <global_stdio_init.part.0>
420022be:	408004b7          	lui	s1,0x40800
420022c2:	00048493          	mv	s1,s1
420022c6:	4480                	lw	s0,8(s1)
420022c8:	40dc                	lw	a5,4(s1)
420022ca:	17fd                	addi	a5,a5,-1
420022cc:	0207d263          	bgez	a5,420022f0 <__sfp+0x4c>
420022d0:	4080                	lw	s0,0(s1)
420022d2:	ec41                	bnez	s0,4200236a <__sfp+0xc6>
420022d4:	1ac00593          	li	a1,428
420022d8:	854a                	mv	a0,s2
420022da:	193000ef          	jal	42002c6c <_malloc_r>
420022de:	842a                	mv	s0,a0
420022e0:	e92d                	bnez	a0,42002352 <__sfp+0xae>
420022e2:	0004a023          	sw	zero,0(s1) # 40800000 <__sglue>
420022e6:	3f4d                	jal	42002298 <__sfp_lock_release>
420022e8:	47b1                	li	a5,12
420022ea:	00f92023          	sw	a5,0(s2)
420022ee:	a881                	j	4200233e <__sfp+0x9a>
420022f0:	00c41703          	lh	a4,12(s0)
420022f4:	ef21                	bnez	a4,4200234c <__sfp+0xa8>
420022f6:	77c1                	lui	a5,0xffff0
420022f8:	0785                	addi	a5,a5,1 # ffff0001 <LP_WDT+0x9ff3e401>
420022fa:	c45c                	sw	a5,12(s0)
420022fc:	05840513          	addi	a0,s0,88
42002300:	06042223          	sw	zero,100(s0)
42002304:	72a000ef          	jal	42002a2e <__retarget_lock_init_recursive>
42002308:	3f41                	jal	42002298 <__sfp_lock_release>
4200230a:	4621                	li	a2,8
4200230c:	00042023          	sw	zero,0(s0)
42002310:	00042423          	sw	zero,8(s0)
42002314:	00042223          	sw	zero,4(s0)
42002318:	00042823          	sw	zero,16(s0)
4200231c:	00042a23          	sw	zero,20(s0)
42002320:	00042c23          	sw	zero,24(s0)
42002324:	4581                	li	a1,0
42002326:	05c40513          	addi	a0,s0,92
4200232a:	9e2ff0ef          	jal	4200150c <memset>
4200232e:	02042a23          	sw	zero,52(s0)
42002332:	02042c23          	sw	zero,56(s0)
42002336:	04042423          	sw	zero,72(s0)
4200233a:	04042623          	sw	zero,76(s0)
4200233e:	40b2                	lw	ra,12(sp)
42002340:	8522                	mv	a0,s0
42002342:	4422                	lw	s0,8(sp)
42002344:	4492                	lw	s1,4(sp)
42002346:	4902                	lw	s2,0(sp)
42002348:	0141                	addi	sp,sp,16
4200234a:	8082                	ret
4200234c:	06840413          	addi	s0,s0,104
42002350:	bfad                	j	420022ca <__sfp+0x26>
42002352:	4791                	li	a5,4
42002354:	00052023          	sw	zero,0(a0)
42002358:	c15c                	sw	a5,4(a0)
4200235a:	0531                	addi	a0,a0,12
4200235c:	c408                	sw	a0,8(s0)
4200235e:	1a000613          	li	a2,416
42002362:	4581                	li	a1,0
42002364:	9a8ff0ef          	jal	4200150c <memset>
42002368:	c080                	sw	s0,0(s1)
4200236a:	84a2                	mv	s1,s0
4200236c:	bfa9                	j	420022c6 <__sfp+0x22>

4200236e <__sinit>:
4200236e:	1141                	addi	sp,sp,-16
42002370:	c422                	sw	s0,8(sp)
42002372:	c606                	sw	ra,12(sp)
42002374:	842a                	mv	s0,a0
42002376:	3f19                	jal	4200228c <__sfp_lock_acquire>
42002378:	541c                	lw	a5,40(s0)
4200237a:	c789                	beqz	a5,42002384 <__sinit+0x16>
4200237c:	4422                	lw	s0,8(sp)
4200237e:	40b2                	lw	ra,12(sp)
42002380:	0141                	addi	sp,sp,16
42002382:	bf19                	j	42002298 <__sfp_lock_release>
42002384:	420027b7          	lui	a5,0x42002
42002388:	1b078793          	addi	a5,a5,432 # 420021b0 <cleanup_stdio>
4200238c:	d41c                	sw	a5,40(s0)
4200238e:	408007b7          	lui	a5,0x40800
42002392:	5907a783          	lw	a5,1424(a5) # 40800590 <__stdio_exit_handler>
42002396:	f3fd                	bnez	a5,4200237c <__sinit+0xe>
42002398:	3d4d                	jal	4200224a <global_stdio_init.part.0>
4200239a:	b7cd                	j	4200237c <__sinit+0xe>

4200239c <__fp_lock_all>:
4200239c:	1141                	addi	sp,sp,-16
4200239e:	c606                	sw	ra,12(sp)
420023a0:	35f5                	jal	4200228c <__sfp_lock_acquire>
420023a2:	40b2                	lw	ra,12(sp)
420023a4:	40800637          	lui	a2,0x40800
420023a8:	420025b7          	lui	a1,0x42002
420023ac:	00060613          	mv	a2,a2
420023b0:	1fe58593          	addi	a1,a1,510 # 420021fe <__fp_lock>
420023b4:	4501                	li	a0,0
420023b6:	0141                	addi	sp,sp,16
420023b8:	ace5                	j	420026b0 <_fwalk_sglue>

420023ba <__fp_unlock_all>:
420023ba:	40800637          	lui	a2,0x40800
420023be:	420025b7          	lui	a1,0x42002
420023c2:	1141                	addi	sp,sp,-16
420023c4:	00060613          	mv	a2,a2
420023c8:	22458593          	addi	a1,a1,548 # 42002224 <__fp_unlock>
420023cc:	4501                	li	a0,0
420023ce:	c606                	sw	ra,12(sp)
420023d0:	24c5                	jal	420026b0 <_fwalk_sglue>
420023d2:	40b2                	lw	ra,12(sp)
420023d4:	0141                	addi	sp,sp,16
420023d6:	b5c9                	j	42002298 <__sfp_lock_release>

420023d8 <__sfvwrite_r>:
420023d8:	461c                	lw	a5,8(a2)
420023da:	e399                	bnez	a5,420023e0 <__sfvwrite_r+0x8>
420023dc:	4501                	li	a0,0
420023de:	8082                	ret
420023e0:	00c5d783          	lhu	a5,12(a1)
420023e4:	7139                	addi	sp,sp,-64
420023e6:	dc22                	sw	s0,56(sp)
420023e8:	d64e                	sw	s3,44(sp)
420023ea:	d256                	sw	s5,36(sp)
420023ec:	de06                	sw	ra,60(sp)
420023ee:	da26                	sw	s1,52(sp)
420023f0:	d84a                	sw	s2,48(sp)
420023f2:	d452                	sw	s4,40(sp)
420023f4:	d05a                	sw	s6,32(sp)
420023f6:	ce5e                	sw	s7,28(sp)
420023f8:	cc62                	sw	s8,24(sp)
420023fa:	ca66                	sw	s9,20(sp)
420023fc:	c86a                	sw	s10,16(sp)
420023fe:	c66e                	sw	s11,12(sp)
42002400:	8ba1                	andi	a5,a5,8
42002402:	89aa                	mv	s3,a0
42002404:	842e                	mv	s0,a1
42002406:	8ab2                	mv	s5,a2
42002408:	cfc9                	beqz	a5,420024a2 <__sfvwrite_r+0xca>
4200240a:	499c                	lw	a5,16(a1)
4200240c:	cbd9                	beqz	a5,420024a2 <__sfvwrite_r+0xca>
4200240e:	00c41783          	lh	a5,12(s0)
42002412:	000aaa03          	lw	s4,0(s5)
42002416:	0027f713          	andi	a4,a5,2
4200241a:	0e071663          	bnez	a4,42002506 <__sfvwrite_r+0x12e>
4200241e:	8b85                	andi	a5,a5,1
42002420:	14078563          	beqz	a5,4200256a <__sfvwrite_r+0x192>
42002424:	4b81                	li	s7,0
42002426:	4501                	li	a0,0
42002428:	4b01                	li	s6,0
4200242a:	4901                	li	s2,0
4200242c:	24090463          	beqz	s2,42002674 <__sfvwrite_r+0x29c>
42002430:	e919                	bnez	a0,42002446 <__sfvwrite_r+0x6e>
42002432:	864a                	mv	a2,s2
42002434:	45a9                	li	a1,10
42002436:	855a                	mv	a0,s6
42002438:	2339                	jal	42002946 <memchr>
4200243a:	00190b93          	addi	s7,s2,1
4200243e:	c501                	beqz	a0,42002446 <__sfvwrite_r+0x6e>
42002440:	0505                	addi	a0,a0,1
42002442:	41650bb3          	sub	s7,a0,s6
42002446:	8c5e                	mv	s8,s7
42002448:	01797363          	bgeu	s2,s7,4200244e <__sfvwrite_r+0x76>
4200244c:	8c4a                	mv	s8,s2
4200244e:	4008                	lw	a0,0(s0)
42002450:	481c                	lw	a5,16(s0)
42002452:	4854                	lw	a3,20(s0)
42002454:	22a7f763          	bgeu	a5,a0,42002682 <__sfvwrite_r+0x2aa>
42002458:	4404                	lw	s1,8(s0)
4200245a:	94b6                	add	s1,s1,a3
4200245c:	2384d363          	bge	s1,s8,42002682 <__sfvwrite_r+0x2aa>
42002460:	85da                	mv	a1,s6
42002462:	8626                	mv	a2,s1
42002464:	23c5                	jal	42002a44 <memmove>
42002466:	401c                	lw	a5,0(s0)
42002468:	85a2                	mv	a1,s0
4200246a:	854e                	mv	a0,s3
4200246c:	97a6                	add	a5,a5,s1
4200246e:	c01c                	sw	a5,0(s0)
42002470:	3a7000ef          	jal	42003016 <_fflush_r>
42002474:	14051263          	bnez	a0,420025b8 <__sfvwrite_r+0x1e0>
42002478:	409b8bb3          	sub	s7,s7,s1
4200247c:	4505                	li	a0,1
4200247e:	000b9863          	bnez	s7,4200248e <__sfvwrite_r+0xb6>
42002482:	85a2                	mv	a1,s0
42002484:	854e                	mv	a0,s3
42002486:	391000ef          	jal	42003016 <_fflush_r>
4200248a:	12051763          	bnez	a0,420025b8 <__sfvwrite_r+0x1e0>
4200248e:	008aa783          	lw	a5,8(s5)
42002492:	9b26                	add	s6,s6,s1
42002494:	40990933          	sub	s2,s2,s1
42002498:	8f85                	sub	a5,a5,s1
4200249a:	00faa423          	sw	a5,8(s5)
4200249e:	f7d9                	bnez	a5,4200242c <__sfvwrite_r+0x54>
420024a0:	a099                	j	420024e6 <__sfvwrite_r+0x10e>
420024a2:	85a2                	mv	a1,s0
420024a4:	854e                	mv	a0,s3
420024a6:	26d5                	jal	4200288a <__swsetup_r>
420024a8:	d13d                	beqz	a0,4200240e <__sfvwrite_r+0x36>
420024aa:	557d                	li	a0,-1
420024ac:	a835                	j	420024e8 <__sfvwrite_r+0x110>
420024ae:	000a2903          	lw	s2,0(s4)
420024b2:	004a2483          	lw	s1,4(s4)
420024b6:	0a21                	addi	s4,s4,8
420024b8:	d8fd                	beqz	s1,420024ae <__sfvwrite_r+0xd6>
420024ba:	86a6                	mv	a3,s1
420024bc:	009b7663          	bgeu	s6,s1,420024c8 <__sfvwrite_r+0xf0>
420024c0:	800006b7          	lui	a3,0x80000
420024c4:	f8068693          	addi	a3,a3,-128 # 7fffff80 <LP_WDT+0x1ff4e380>
420024c8:	541c                	lw	a5,40(s0)
420024ca:	500c                	lw	a1,32(s0)
420024cc:	864a                	mv	a2,s2
420024ce:	854e                	mv	a0,s3
420024d0:	9782                	jalr	a5
420024d2:	0ea05363          	blez	a0,420025b8 <__sfvwrite_r+0x1e0>
420024d6:	008aa783          	lw	a5,8(s5)
420024da:	992a                	add	s2,s2,a0
420024dc:	8c89                	sub	s1,s1,a0
420024de:	8f89                	sub	a5,a5,a0
420024e0:	00faa423          	sw	a5,8(s5)
420024e4:	fbf1                	bnez	a5,420024b8 <__sfvwrite_r+0xe0>
420024e6:	4501                	li	a0,0
420024e8:	50f2                	lw	ra,60(sp)
420024ea:	5462                	lw	s0,56(sp)
420024ec:	54d2                	lw	s1,52(sp)
420024ee:	5942                	lw	s2,48(sp)
420024f0:	59b2                	lw	s3,44(sp)
420024f2:	5a22                	lw	s4,40(sp)
420024f4:	5a92                	lw	s5,36(sp)
420024f6:	5b02                	lw	s6,32(sp)
420024f8:	4bf2                	lw	s7,28(sp)
420024fa:	4c62                	lw	s8,24(sp)
420024fc:	4cd2                	lw	s9,20(sp)
420024fe:	4d42                	lw	s10,16(sp)
42002500:	4db2                	lw	s11,12(sp)
42002502:	6121                	addi	sp,sp,64
42002504:	8082                	ret
42002506:	80000b37          	lui	s6,0x80000
4200250a:	4901                	li	s2,0
4200250c:	4481                	li	s1,0
4200250e:	f80b0b13          	addi	s6,s6,-128 # 7fffff80 <LP_WDT+0x1ff4e380>
42002512:	b75d                	j	420024b8 <__sfvwrite_r+0xe0>
42002514:	000a2b03          	lw	s6,0(s4)
42002518:	004a2483          	lw	s1,4(s4)
4200251c:	0a21                	addi	s4,s4,8
4200251e:	d8fd                	beqz	s1,42002514 <__sfvwrite_r+0x13c>
42002520:	00c41783          	lh	a5,12(s0)
42002524:	4008                	lw	a0,0(s0)
42002526:	00842d03          	lw	s10,8(s0)
4200252a:	2007f713          	andi	a4,a5,512
4200252e:	0e070563          	beqz	a4,42002618 <__sfvwrite_r+0x240>
42002532:	8dea                	mv	s11,s10
42002534:	05a4f363          	bgeu	s1,s10,4200257a <__sfvwrite_r+0x1a2>
42002538:	8d26                	mv	s10,s1
4200253a:	8926                	mv	s2,s1
4200253c:	8da6                	mv	s11,s1
4200253e:	4008                	lw	a0,0(s0)
42002540:	866e                	mv	a2,s11
42002542:	85da                	mv	a1,s6
42002544:	2301                	jal	42002a44 <memmove>
42002546:	441c                	lw	a5,8(s0)
42002548:	41a787b3          	sub	a5,a5,s10
4200254c:	c41c                	sw	a5,8(s0)
4200254e:	401c                	lw	a5,0(s0)
42002550:	97ee                	add	a5,a5,s11
42002552:	c01c                	sw	a5,0(s0)
42002554:	008aa783          	lw	a5,8(s5)
42002558:	9b4a                	add	s6,s6,s2
4200255a:	412484b3          	sub	s1,s1,s2
4200255e:	412787b3          	sub	a5,a5,s2
42002562:	00faa423          	sw	a5,8(s5)
42002566:	ffc5                	bnez	a5,4200251e <__sfvwrite_r+0x146>
42002568:	bfbd                	j	420024e6 <__sfvwrite_r+0x10e>
4200256a:	80000bb7          	lui	s7,0x80000
4200256e:	4b01                	li	s6,0
42002570:	4481                	li	s1,0
42002572:	1bfd                	addi	s7,s7,-1 # 7fffffff <LP_WDT+0x1ff4e3ff>
42002574:	4c0d                	li	s8,3
42002576:	4c89                	li	s9,2
42002578:	b75d                	j	4200251e <__sfvwrite_r+0x146>
4200257a:	4807f713          	andi	a4,a5,1152
4200257e:	cb59                	beqz	a4,42002614 <__sfvwrite_r+0x23c>
42002580:	01442903          	lw	s2,20(s0)
42002584:	480c                	lw	a1,16(s0)
42002586:	03890933          	mul	s2,s2,s8
4200258a:	40b50db3          	sub	s11,a0,a1
4200258e:	001d8713          	addi	a4,s11,1
42002592:	9726                	add	a4,a4,s1
42002594:	03994933          	div	s2,s2,s9
42002598:	864a                	mv	a2,s2
4200259a:	00e97463          	bgeu	s2,a4,420025a2 <__sfvwrite_r+0x1ca>
4200259e:	893a                	mv	s2,a4
420025a0:	863a                	mv	a2,a4
420025a2:	4007f793          	andi	a5,a5,1024
420025a6:	cba1                	beqz	a5,420025f6 <__sfvwrite_r+0x21e>
420025a8:	85b2                	mv	a1,a2
420025aa:	854e                	mv	a0,s3
420025ac:	25c1                	jal	42002c6c <_malloc_r>
420025ae:	8d2a                	mv	s10,a0
420025b0:	e919                	bnez	a0,420025c6 <__sfvwrite_r+0x1ee>
420025b2:	47b1                	li	a5,12
420025b4:	00f9a023          	sw	a5,0(s3)
420025b8:	00c45783          	lhu	a5,12(s0)
420025bc:	0407e793          	ori	a5,a5,64
420025c0:	00f41623          	sh	a5,12(s0)
420025c4:	b5dd                	j	420024aa <__sfvwrite_r+0xd2>
420025c6:	480c                	lw	a1,16(s0)
420025c8:	866e                	mv	a2,s11
420025ca:	21d1                	jal	42002a8e <memcpy>
420025cc:	00c45783          	lhu	a5,12(s0)
420025d0:	b7f7f793          	andi	a5,a5,-1153
420025d4:	0807e793          	ori	a5,a5,128
420025d8:	00f41623          	sh	a5,12(s0)
420025dc:	01a42823          	sw	s10,16(s0)
420025e0:	01242a23          	sw	s2,20(s0)
420025e4:	9d6e                	add	s10,s10,s11
420025e6:	41b90933          	sub	s2,s2,s11
420025ea:	01a42023          	sw	s10,0(s0)
420025ee:	01242423          	sw	s2,8(s0)
420025f2:	8d26                	mv	s10,s1
420025f4:	b799                	j	4200253a <__sfvwrite_r+0x162>
420025f6:	854e                	mv	a0,s3
420025f8:	7a0000ef          	jal	42002d98 <_realloc_r>
420025fc:	8d2a                	mv	s10,a0
420025fe:	fd79                	bnez	a0,420025dc <__sfvwrite_r+0x204>
42002600:	480c                	lw	a1,16(s0)
42002602:	854e                	mv	a0,s3
42002604:	2b8d                	jal	42002b76 <_free_r>
42002606:	00c45783          	lhu	a5,12(s0)
4200260a:	f7f7f793          	andi	a5,a5,-129
4200260e:	00f41623          	sh	a5,12(s0)
42002612:	b745                	j	420025b2 <__sfvwrite_r+0x1da>
42002614:	8926                	mv	s2,s1
42002616:	b725                	j	4200253e <__sfvwrite_r+0x166>
42002618:	481c                	lw	a5,16(s0)
4200261a:	00a7e563          	bltu	a5,a0,42002624 <__sfvwrite_r+0x24c>
4200261e:	4854                	lw	a3,20(s0)
42002620:	02d4f963          	bgeu	s1,a3,42002652 <__sfvwrite_r+0x27a>
42002624:	896a                	mv	s2,s10
42002626:	01a4f363          	bgeu	s1,s10,4200262c <__sfvwrite_r+0x254>
4200262a:	8926                	mv	s2,s1
4200262c:	864a                	mv	a2,s2
4200262e:	85da                	mv	a1,s6
42002630:	2911                	jal	42002a44 <memmove>
42002632:	441c                	lw	a5,8(s0)
42002634:	4018                	lw	a4,0(s0)
42002636:	412787b3          	sub	a5,a5,s2
4200263a:	974a                	add	a4,a4,s2
4200263c:	c41c                	sw	a5,8(s0)
4200263e:	c018                	sw	a4,0(s0)
42002640:	f0079ae3          	bnez	a5,42002554 <__sfvwrite_r+0x17c>
42002644:	85a2                	mv	a1,s0
42002646:	854e                	mv	a0,s3
42002648:	1cf000ef          	jal	42003016 <_fflush_r>
4200264c:	f00504e3          	beqz	a0,42002554 <__sfvwrite_r+0x17c>
42002650:	b7a5                	j	420025b8 <__sfvwrite_r+0x1e0>
42002652:	87a6                	mv	a5,s1
42002654:	009bf363          	bgeu	s7,s1,4200265a <__sfvwrite_r+0x282>
42002658:	87de                	mv	a5,s7
4200265a:	02d7c7b3          	div	a5,a5,a3
4200265e:	5418                	lw	a4,40(s0)
42002660:	500c                	lw	a1,32(s0)
42002662:	865a                	mv	a2,s6
42002664:	854e                	mv	a0,s3
42002666:	02d786b3          	mul	a3,a5,a3
4200266a:	9702                	jalr	a4
4200266c:	892a                	mv	s2,a0
4200266e:	eea043e3          	bgtz	a0,42002554 <__sfvwrite_r+0x17c>
42002672:	b799                	j	420025b8 <__sfvwrite_r+0x1e0>
42002674:	000a2b03          	lw	s6,0(s4)
42002678:	004a2903          	lw	s2,4(s4)
4200267c:	4501                	li	a0,0
4200267e:	0a21                	addi	s4,s4,8
42002680:	b375                	j	4200242c <__sfvwrite_r+0x54>
42002682:	00dc4b63          	blt	s8,a3,42002698 <__sfvwrite_r+0x2c0>
42002686:	541c                	lw	a5,40(s0)
42002688:	500c                	lw	a1,32(s0)
4200268a:	865a                	mv	a2,s6
4200268c:	854e                	mv	a0,s3
4200268e:	9782                	jalr	a5
42002690:	84aa                	mv	s1,a0
42002692:	dea043e3          	bgtz	a0,42002478 <__sfvwrite_r+0xa0>
42002696:	b70d                	j	420025b8 <__sfvwrite_r+0x1e0>
42002698:	8662                	mv	a2,s8
4200269a:	85da                	mv	a1,s6
4200269c:	2665                	jal	42002a44 <memmove>
4200269e:	441c                	lw	a5,8(s0)
420026a0:	84e2                	mv	s1,s8
420026a2:	418787b3          	sub	a5,a5,s8
420026a6:	c41c                	sw	a5,8(s0)
420026a8:	401c                	lw	a5,0(s0)
420026aa:	97e2                	add	a5,a5,s8
420026ac:	c01c                	sw	a5,0(s0)
420026ae:	b3e9                	j	42002478 <__sfvwrite_r+0xa0>

420026b0 <_fwalk_sglue>:
420026b0:	7179                	addi	sp,sp,-48
420026b2:	d422                	sw	s0,40(sp)
420026b4:	d04a                	sw	s2,32(sp)
420026b6:	ce4e                	sw	s3,28(sp)
420026b8:	cc52                	sw	s4,24(sp)
420026ba:	c85a                	sw	s6,16(sp)
420026bc:	c65e                	sw	s7,12(sp)
420026be:	d606                	sw	ra,44(sp)
420026c0:	d226                	sw	s1,36(sp)
420026c2:	ca56                	sw	s5,20(sp)
420026c4:	89aa                	mv	s3,a0
420026c6:	8a2e                	mv	s4,a1
420026c8:	8432                	mv	s0,a2
420026ca:	4901                	li	s2,0
420026cc:	4b05                	li	s6,1
420026ce:	5bfd                	li	s7,-1
420026d0:	4404                	lw	s1,8(s0)
420026d2:	00442a83          	lw	s5,4(s0)
420026d6:	1afd                	addi	s5,s5,-1
420026d8:	020ad063          	bgez	s5,420026f8 <_fwalk_sglue+0x48>
420026dc:	4000                	lw	s0,0(s0)
420026de:	f86d                	bnez	s0,420026d0 <_fwalk_sglue+0x20>
420026e0:	50b2                	lw	ra,44(sp)
420026e2:	5422                	lw	s0,40(sp)
420026e4:	5492                	lw	s1,36(sp)
420026e6:	49f2                	lw	s3,28(sp)
420026e8:	4a62                	lw	s4,24(sp)
420026ea:	4ad2                	lw	s5,20(sp)
420026ec:	4b42                	lw	s6,16(sp)
420026ee:	4bb2                	lw	s7,12(sp)
420026f0:	854a                	mv	a0,s2
420026f2:	5902                	lw	s2,32(sp)
420026f4:	6145                	addi	sp,sp,48
420026f6:	8082                	ret
420026f8:	00c4d783          	lhu	a5,12(s1)
420026fc:	00fb7b63          	bgeu	s6,a5,42002712 <_fwalk_sglue+0x62>
42002700:	00e49783          	lh	a5,14(s1)
42002704:	01778763          	beq	a5,s7,42002712 <_fwalk_sglue+0x62>
42002708:	85a6                	mv	a1,s1
4200270a:	854e                	mv	a0,s3
4200270c:	9a02                	jalr	s4
4200270e:	00a96933          	or	s2,s2,a0
42002712:	06848493          	addi	s1,s1,104
42002716:	b7c1                	j	420026d6 <_fwalk_sglue+0x26>

42002718 <__sread>:
42002718:	1141                	addi	sp,sp,-16
4200271a:	c422                	sw	s0,8(sp)
4200271c:	842e                	mv	s0,a1
4200271e:	00e59583          	lh	a1,14(a1)
42002722:	c606                	sw	ra,12(sp)
42002724:	2445                	jal	420029c4 <_read_r>
42002726:	00054963          	bltz	a0,42002738 <__sread+0x20>
4200272a:	487c                	lw	a5,84(s0)
4200272c:	97aa                	add	a5,a5,a0
4200272e:	c87c                	sw	a5,84(s0)
42002730:	40b2                	lw	ra,12(sp)
42002732:	4422                	lw	s0,8(sp)
42002734:	0141                	addi	sp,sp,16
42002736:	8082                	ret
42002738:	00c45783          	lhu	a5,12(s0)
4200273c:	777d                	lui	a4,0xfffff
4200273e:	177d                	addi	a4,a4,-1 # ffffefff <LP_WDT+0x9ff4d3ff>
42002740:	8ff9                	and	a5,a5,a4
42002742:	00f41623          	sh	a5,12(s0)
42002746:	b7ed                	j	42002730 <__sread+0x18>

42002748 <__seofread>:
42002748:	4501                	li	a0,0
4200274a:	8082                	ret

4200274c <__swrite>:
4200274c:	00c5d783          	lhu	a5,12(a1)
42002750:	1101                	addi	sp,sp,-32
42002752:	cc22                	sw	s0,24(sp)
42002754:	ca26                	sw	s1,20(sp)
42002756:	c84a                	sw	s2,16(sp)
42002758:	c64e                	sw	s3,12(sp)
4200275a:	ce06                	sw	ra,28(sp)
4200275c:	1007f793          	andi	a5,a5,256
42002760:	84aa                	mv	s1,a0
42002762:	842e                	mv	s0,a1
42002764:	8932                	mv	s2,a2
42002766:	89b6                	mv	s3,a3
42002768:	c791                	beqz	a5,42002774 <__swrite+0x28>
4200276a:	00e59583          	lh	a1,14(a1)
4200276e:	4689                	li	a3,2
42002770:	4601                	li	a2,0
42002772:	2c39                	jal	42002990 <_lseek_r>
42002774:	00c45783          	lhu	a5,12(s0)
42002778:	777d                	lui	a4,0xfffff
4200277a:	177d                	addi	a4,a4,-1 # ffffefff <LP_WDT+0x9ff4d3ff>
4200277c:	8ff9                	and	a5,a5,a4
4200277e:	00e41583          	lh	a1,14(s0)
42002782:	00f41623          	sh	a5,12(s0)
42002786:	4462                	lw	s0,24(sp)
42002788:	40f2                	lw	ra,28(sp)
4200278a:	86ce                	mv	a3,s3
4200278c:	864a                	mv	a2,s2
4200278e:	49b2                	lw	s3,12(sp)
42002790:	4942                	lw	s2,16(sp)
42002792:	8526                	mv	a0,s1
42002794:	44d2                	lw	s1,20(sp)
42002796:	6105                	addi	sp,sp,32
42002798:	a485                	j	420029f8 <_write_r>

4200279a <__sseek>:
4200279a:	1141                	addi	sp,sp,-16
4200279c:	c422                	sw	s0,8(sp)
4200279e:	842e                	mv	s0,a1
420027a0:	00e59583          	lh	a1,14(a1)
420027a4:	c606                	sw	ra,12(sp)
420027a6:	22ed                	jal	42002990 <_lseek_r>
420027a8:	577d                	li	a4,-1
420027aa:	00c41783          	lh	a5,12(s0)
420027ae:	00e51b63          	bne	a0,a4,420027c4 <__sseek+0x2a>
420027b2:	777d                	lui	a4,0xfffff
420027b4:	177d                	addi	a4,a4,-1 # ffffefff <LP_WDT+0x9ff4d3ff>
420027b6:	8ff9                	and	a5,a5,a4
420027b8:	00f41623          	sh	a5,12(s0)
420027bc:	40b2                	lw	ra,12(sp)
420027be:	4422                	lw	s0,8(sp)
420027c0:	0141                	addi	sp,sp,16
420027c2:	8082                	ret
420027c4:	6705                	lui	a4,0x1
420027c6:	8fd9                	or	a5,a5,a4
420027c8:	00f41623          	sh	a5,12(s0)
420027cc:	c868                	sw	a0,84(s0)
420027ce:	b7fd                	j	420027bc <__sseek+0x22>

420027d0 <__sclose>:
420027d0:	00e59583          	lh	a1,14(a1)
420027d4:	a271                	j	42002960 <_close_r>

420027d6 <__swbuf_r>:
420027d6:	1101                	addi	sp,sp,-32
420027d8:	cc22                	sw	s0,24(sp)
420027da:	ca26                	sw	s1,20(sp)
420027dc:	c84a                	sw	s2,16(sp)
420027de:	ce06                	sw	ra,28(sp)
420027e0:	c64e                	sw	s3,12(sp)
420027e2:	892a                	mv	s2,a0
420027e4:	84ae                	mv	s1,a1
420027e6:	8432                	mv	s0,a2
420027e8:	c501                	beqz	a0,420027f0 <__swbuf_r+0x1a>
420027ea:	551c                	lw	a5,40(a0)
420027ec:	e391                	bnez	a5,420027f0 <__swbuf_r+0x1a>
420027ee:	3641                	jal	4200236e <__sinit>
420027f0:	4c1c                	lw	a5,24(s0)
420027f2:	c41c                	sw	a5,8(s0)
420027f4:	00c45783          	lhu	a5,12(s0)
420027f8:	8ba1                	andi	a5,a5,8
420027fa:	c399                	beqz	a5,42002800 <__swbuf_r+0x2a>
420027fc:	481c                	lw	a5,16(s0)
420027fe:	ef91                	bnez	a5,4200281a <__swbuf_r+0x44>
42002800:	85a2                	mv	a1,s0
42002802:	854a                	mv	a0,s2
42002804:	2059                	jal	4200288a <__swsetup_r>
42002806:	c911                	beqz	a0,4200281a <__swbuf_r+0x44>
42002808:	54fd                	li	s1,-1
4200280a:	40f2                	lw	ra,28(sp)
4200280c:	4462                	lw	s0,24(sp)
4200280e:	4942                	lw	s2,16(sp)
42002810:	49b2                	lw	s3,12(sp)
42002812:	8526                	mv	a0,s1
42002814:	44d2                	lw	s1,20(sp)
42002816:	6105                	addi	sp,sp,32
42002818:	8082                	ret
4200281a:	401c                	lw	a5,0(s0)
4200281c:	4818                	lw	a4,16(s0)
4200281e:	0ff4f993          	zext.b	s3,s1
42002822:	0ff4f493          	zext.b	s1,s1
42002826:	40e78533          	sub	a0,a5,a4
4200282a:	485c                	lw	a5,20(s0)
4200282c:	00f54763          	blt	a0,a5,4200283a <__swbuf_r+0x64>
42002830:	85a2                	mv	a1,s0
42002832:	854a                	mv	a0,s2
42002834:	7e2000ef          	jal	42003016 <_fflush_r>
42002838:	f961                	bnez	a0,42002808 <__swbuf_r+0x32>
4200283a:	441c                	lw	a5,8(s0)
4200283c:	17fd                	addi	a5,a5,-1
4200283e:	c41c                	sw	a5,8(s0)
42002840:	401c                	lw	a5,0(s0)
42002842:	00178713          	addi	a4,a5,1
42002846:	c018                	sw	a4,0(s0)
42002848:	01378023          	sb	s3,0(a5)
4200284c:	4858                	lw	a4,20(s0)
4200284e:	00150793          	addi	a5,a0,1
42002852:	00f70963          	beq	a4,a5,42002864 <__swbuf_r+0x8e>
42002856:	00c45783          	lhu	a5,12(s0)
4200285a:	8b85                	andi	a5,a5,1
4200285c:	d7dd                	beqz	a5,4200280a <__swbuf_r+0x34>
4200285e:	47a9                	li	a5,10
42002860:	faf495e3          	bne	s1,a5,4200280a <__swbuf_r+0x34>
42002864:	85a2                	mv	a1,s0
42002866:	854a                	mv	a0,s2
42002868:	7ae000ef          	jal	42003016 <_fflush_r>
4200286c:	dd59                	beqz	a0,4200280a <__swbuf_r+0x34>
4200286e:	bf69                	j	42002808 <__swbuf_r+0x32>

42002870 <__swbuf>:
42002870:	1101                	addi	sp,sp,-32
42002872:	cc22                	sw	s0,24(sp)
42002874:	ce06                	sw	ra,28(sp)
42002876:	842a                	mv	s0,a0
42002878:	c62e                	sw	a1,12(sp)
4200287a:	2c1000ef          	jal	4200333a <__getreent>
4200287e:	85a2                	mv	a1,s0
42002880:	4462                	lw	s0,24(sp)
42002882:	4632                	lw	a2,12(sp)
42002884:	40f2                	lw	ra,28(sp)
42002886:	6105                	addi	sp,sp,32
42002888:	b7b9                	j	420027d6 <__swbuf_r>

4200288a <__swsetup_r>:
4200288a:	1141                	addi	sp,sp,-16
4200288c:	c422                	sw	s0,8(sp)
4200288e:	c226                	sw	s1,4(sp)
42002890:	c606                	sw	ra,12(sp)
42002892:	84aa                	mv	s1,a0
42002894:	842e                	mv	s0,a1
42002896:	2a5000ef          	jal	4200333a <__getreent>
4200289a:	c501                	beqz	a0,420028a2 <__swsetup_r+0x18>
4200289c:	551c                	lw	a5,40(a0)
4200289e:	e391                	bnez	a5,420028a2 <__swsetup_r+0x18>
420028a0:	34f9                	jal	4200236e <__sinit>
420028a2:	00c41783          	lh	a5,12(s0)
420028a6:	0087f713          	andi	a4,a5,8
420028aa:	e729                	bnez	a4,420028f4 <__swsetup_r+0x6a>
420028ac:	0107f713          	andi	a4,a5,16
420028b0:	eb09                	bnez	a4,420028c2 <__swsetup_r+0x38>
420028b2:	4725                	li	a4,9
420028b4:	c098                	sw	a4,0(s1)
420028b6:	0407e793          	ori	a5,a5,64
420028ba:	00f41623          	sh	a5,12(s0)
420028be:	557d                	li	a0,-1
420028c0:	a0bd                	j	4200292e <__swsetup_r+0xa4>
420028c2:	0047f713          	andi	a4,a5,4
420028c6:	c31d                	beqz	a4,420028ec <__swsetup_r+0x62>
420028c8:	584c                	lw	a1,52(s0)
420028ca:	c989                	beqz	a1,420028dc <__swsetup_r+0x52>
420028cc:	04440793          	addi	a5,s0,68
420028d0:	00f58463          	beq	a1,a5,420028d8 <__swsetup_r+0x4e>
420028d4:	8526                	mv	a0,s1
420028d6:	2445                	jal	42002b76 <_free_r>
420028d8:	02042a23          	sw	zero,52(s0)
420028dc:	00c41783          	lh	a5,12(s0)
420028e0:	4818                	lw	a4,16(s0)
420028e2:	00042223          	sw	zero,4(s0)
420028e6:	fdb7f793          	andi	a5,a5,-37
420028ea:	c018                	sw	a4,0(s0)
420028ec:	0087e793          	ori	a5,a5,8
420028f0:	00f41623          	sh	a5,12(s0)
420028f4:	4818                	lw	a4,16(s0)
420028f6:	eb19                	bnez	a4,4200290c <__swsetup_r+0x82>
420028f8:	2807f793          	andi	a5,a5,640
420028fc:	20000713          	li	a4,512
42002900:	00e78663          	beq	a5,a4,4200290c <__swsetup_r+0x82>
42002904:	85a2                	mv	a1,s0
42002906:	8526                	mv	a0,s1
42002908:	01b000ef          	jal	42003122 <__smakebuf_r>
4200290c:	00c41783          	lh	a5,12(s0)
42002910:	0017f713          	andi	a4,a5,1
42002914:	c315                	beqz	a4,42002938 <__swsetup_r+0xae>
42002916:	4858                	lw	a4,20(s0)
42002918:	00042423          	sw	zero,8(s0)
4200291c:	40e00733          	neg	a4,a4
42002920:	cc18                	sw	a4,24(s0)
42002922:	4818                	lw	a4,16(s0)
42002924:	4501                	li	a0,0
42002926:	e701                	bnez	a4,4200292e <__swsetup_r+0xa4>
42002928:	0807f713          	andi	a4,a5,128
4200292c:	f749                	bnez	a4,420028b6 <__swsetup_r+0x2c>
4200292e:	40b2                	lw	ra,12(sp)
42002930:	4422                	lw	s0,8(sp)
42002932:	4492                	lw	s1,4(sp)
42002934:	0141                	addi	sp,sp,16
42002936:	8082                	ret
42002938:	0027f713          	andi	a4,a5,2
4200293c:	4681                	li	a3,0
4200293e:	e311                	bnez	a4,42002942 <__swsetup_r+0xb8>
42002940:	4854                	lw	a3,20(s0)
42002942:	c414                	sw	a3,8(s0)
42002944:	bff9                	j	42002922 <__swsetup_r+0x98>

42002946 <memchr>:
42002946:	0ff5f593          	zext.b	a1,a1
4200294a:	962a                	add	a2,a2,a0
4200294c:	00c51463          	bne	a0,a2,42002954 <memchr+0xe>
42002950:	4501                	li	a0,0
42002952:	8082                	ret
42002954:	00054783          	lbu	a5,0(a0)
42002958:	feb78de3          	beq	a5,a1,42002952 <memchr+0xc>
4200295c:	0505                	addi	a0,a0,1
4200295e:	b7fd                	j	4200294c <memchr+0x6>

42002960 <_close_r>:
42002960:	1141                	addi	sp,sp,-16
42002962:	c422                	sw	s0,8(sp)
42002964:	c226                	sw	s1,4(sp)
42002966:	842a                	mv	s0,a0
42002968:	408004b7          	lui	s1,0x40800
4200296c:	852e                	mv	a0,a1
4200296e:	c606                	sw	ra,12(sp)
42002970:	5804aa23          	sw	zero,1428(s1) # 40800594 <errno>
42002974:	137000ef          	jal	420032aa <_close>
42002978:	57fd                	li	a5,-1
4200297a:	00f51663          	bne	a0,a5,42002986 <_close_r+0x26>
4200297e:	5944a783          	lw	a5,1428(s1)
42002982:	c391                	beqz	a5,42002986 <_close_r+0x26>
42002984:	c01c                	sw	a5,0(s0)
42002986:	40b2                	lw	ra,12(sp)
42002988:	4422                	lw	s0,8(sp)
4200298a:	4492                	lw	s1,4(sp)
4200298c:	0141                	addi	sp,sp,16
4200298e:	8082                	ret

42002990 <_lseek_r>:
42002990:	1141                	addi	sp,sp,-16
42002992:	c422                	sw	s0,8(sp)
42002994:	c226                	sw	s1,4(sp)
42002996:	842a                	mv	s0,a0
42002998:	408004b7          	lui	s1,0x40800
4200299c:	852e                	mv	a0,a1
4200299e:	85b2                	mv	a1,a2
420029a0:	8636                	mv	a2,a3
420029a2:	c606                	sw	ra,12(sp)
420029a4:	5804aa23          	sw	zero,1428(s1) # 40800594 <errno>
420029a8:	143000ef          	jal	420032ea <_lseek>
420029ac:	57fd                	li	a5,-1
420029ae:	00f51663          	bne	a0,a5,420029ba <_lseek_r+0x2a>
420029b2:	5944a783          	lw	a5,1428(s1)
420029b6:	c391                	beqz	a5,420029ba <_lseek_r+0x2a>
420029b8:	c01c                	sw	a5,0(s0)
420029ba:	40b2                	lw	ra,12(sp)
420029bc:	4422                	lw	s0,8(sp)
420029be:	4492                	lw	s1,4(sp)
420029c0:	0141                	addi	sp,sp,16
420029c2:	8082                	ret

420029c4 <_read_r>:
420029c4:	1141                	addi	sp,sp,-16
420029c6:	c422                	sw	s0,8(sp)
420029c8:	c226                	sw	s1,4(sp)
420029ca:	842a                	mv	s0,a0
420029cc:	408004b7          	lui	s1,0x40800
420029d0:	852e                	mv	a0,a1
420029d2:	85b2                	mv	a1,a2
420029d4:	8636                	mv	a2,a3
420029d6:	c606                	sw	ra,12(sp)
420029d8:	5804aa23          	sw	zero,1428(s1) # 40800594 <errno>
420029dc:	11f000ef          	jal	420032fa <_read>
420029e0:	57fd                	li	a5,-1
420029e2:	00f51663          	bne	a0,a5,420029ee <_read_r+0x2a>
420029e6:	5944a783          	lw	a5,1428(s1)
420029ea:	c391                	beqz	a5,420029ee <_read_r+0x2a>
420029ec:	c01c                	sw	a5,0(s0)
420029ee:	40b2                	lw	ra,12(sp)
420029f0:	4422                	lw	s0,8(sp)
420029f2:	4492                	lw	s1,4(sp)
420029f4:	0141                	addi	sp,sp,16
420029f6:	8082                	ret

420029f8 <_write_r>:
420029f8:	1141                	addi	sp,sp,-16
420029fa:	c422                	sw	s0,8(sp)
420029fc:	c226                	sw	s1,4(sp)
420029fe:	842a                	mv	s0,a0
42002a00:	408004b7          	lui	s1,0x40800
42002a04:	852e                	mv	a0,a1
42002a06:	85b2                	mv	a1,a2
42002a08:	8636                	mv	a2,a3
42002a0a:	c606                	sw	ra,12(sp)
42002a0c:	5804aa23          	sw	zero,1428(s1) # 40800594 <errno>
42002a10:	119000ef          	jal	42003328 <_write>
42002a14:	57fd                	li	a5,-1
42002a16:	00f51663          	bne	a0,a5,42002a22 <_write_r+0x2a>
42002a1a:	5944a783          	lw	a5,1428(s1)
42002a1e:	c391                	beqz	a5,42002a22 <_write_r+0x2a>
42002a20:	c01c                	sw	a5,0(s0)
42002a22:	40b2                	lw	ra,12(sp)
42002a24:	4422                	lw	s0,8(sp)
42002a26:	4492                	lw	s1,4(sp)
42002a28:	0141                	addi	sp,sp,16
42002a2a:	8082                	ret

42002a2c <__retarget_lock_init>:
42002a2c:	8082                	ret

42002a2e <__retarget_lock_init_recursive>:
42002a2e:	8082                	ret

42002a30 <__retarget_lock_close>:
42002a30:	8082                	ret

42002a32 <__retarget_lock_close_recursive>:
42002a32:	8082                	ret

42002a34 <__retarget_lock_acquire>:
42002a34:	8082                	ret

42002a36 <__retarget_lock_acquire_recursive>:
42002a36:	8082                	ret

42002a38 <__retarget_lock_try_acquire>:
42002a38:	4505                	li	a0,1
42002a3a:	8082                	ret

42002a3c <__retarget_lock_try_acquire_recursive>:
42002a3c:	4505                	li	a0,1
42002a3e:	8082                	ret

42002a40 <__retarget_lock_release>:
42002a40:	8082                	ret

42002a42 <__retarget_lock_release_recursive>:
42002a42:	8082                	ret

42002a44 <memmove>:
42002a44:	00a5f663          	bgeu	a1,a0,42002a50 <memmove+0xc>
42002a48:	00c586b3          	add	a3,a1,a2
42002a4c:	00d56663          	bltu	a0,a3,42002a58 <memmove+0x14>
42002a50:	4781                	li	a5,0
42002a52:	02f61463          	bne	a2,a5,42002a7a <memmove+0x36>
42002a56:	8082                	ret
42002a58:	fff64593          	not	a1,a2
42002a5c:	4781                	li	a5,0
42002a5e:	17fd                	addi	a5,a5,-1
42002a60:	00f59363          	bne	a1,a5,42002a66 <memmove+0x22>
42002a64:	8082                	ret
42002a66:	00f68733          	add	a4,a3,a5
42002a6a:	00074803          	lbu	a6,0(a4) # 1000 <rtc_get_reset_reason-0x3ffff018>
42002a6e:	00f60733          	add	a4,a2,a5
42002a72:	972a                	add	a4,a4,a0
42002a74:	01070023          	sb	a6,0(a4)
42002a78:	b7dd                	j	42002a5e <memmove+0x1a>
42002a7a:	00f58733          	add	a4,a1,a5
42002a7e:	00074683          	lbu	a3,0(a4)
42002a82:	00f50733          	add	a4,a0,a5
42002a86:	0785                	addi	a5,a5,1
42002a88:	00d70023          	sb	a3,0(a4)
42002a8c:	b7d9                	j	42002a52 <memmove+0xe>

42002a8e <memcpy>:
42002a8e:	00a5c7b3          	xor	a5,a1,a0
42002a92:	8b8d                	andi	a5,a5,3
42002a94:	00c506b3          	add	a3,a0,a2
42002a98:	e781                	bnez	a5,42002aa0 <memcpy+0x12>
42002a9a:	478d                	li	a5,3
42002a9c:	00c7ef63          	bltu	a5,a2,42002aba <memcpy+0x2c>
42002aa0:	87aa                	mv	a5,a0
42002aa2:	00d56963          	bltu	a0,a3,42002ab4 <memcpy+0x26>
42002aa6:	8082                	ret
42002aa8:	0005c703          	lbu	a4,0(a1)
42002aac:	0785                	addi	a5,a5,1
42002aae:	0585                	addi	a1,a1,1
42002ab0:	fee78fa3          	sb	a4,-1(a5)
42002ab4:	fed7eae3          	bltu	a5,a3,42002aa8 <memcpy+0x1a>
42002ab8:	8082                	ret
42002aba:	00357793          	andi	a5,a0,3
42002abe:	e7b1                	bnez	a5,42002b0a <memcpy+0x7c>
42002ac0:	87aa                	mv	a5,a0
42002ac2:	ffc6f713          	andi	a4,a3,-4
42002ac6:	40f70833          	sub	a6,a4,a5
42002aca:	02000613          	li	a2,32
42002ace:	09064863          	blt	a2,a6,42002b5e <memcpy+0xd0>
42002ad2:	863e                	mv	a2,a5
42002ad4:	882e                	mv	a6,a1
42002ad6:	08e66963          	bltu	a2,a4,42002b68 <memcpy+0xda>
42002ada:	ffd78813          	addi	a6,a5,-3
42002ade:	4601                	li	a2,0
42002ae0:	01076663          	bltu	a4,a6,42002aec <memcpy+0x5e>
42002ae4:	070d                	addi	a4,a4,3
42002ae6:	8f1d                	sub	a4,a4,a5
42002ae8:	ffc77613          	andi	a2,a4,-4
42002aec:	97b2                	add	a5,a5,a2
42002aee:	95b2                	add	a1,a1,a2
42002af0:	fcd7e2e3          	bltu	a5,a3,42002ab4 <memcpy+0x26>
42002af4:	8082                	ret
42002af6:	0005c703          	lbu	a4,0(a1)
42002afa:	0785                	addi	a5,a5,1
42002afc:	0585                	addi	a1,a1,1
42002afe:	fee78fa3          	sb	a4,-1(a5)
42002b02:	0037f713          	andi	a4,a5,3
42002b06:	fb65                	bnez	a4,42002af6 <memcpy+0x68>
42002b08:	bf6d                	j	42002ac2 <memcpy+0x34>
42002b0a:	87aa                	mv	a5,a0
42002b0c:	bfdd                	j	42002b02 <memcpy+0x74>
42002b0e:	0005a383          	lw	t2,0(a1)
42002b12:	0045a283          	lw	t0,4(a1)
42002b16:	0085af83          	lw	t6,8(a1)
42002b1a:	00c5af03          	lw	t5,12(a1)
42002b1e:	0105ae83          	lw	t4,16(a1)
42002b22:	0145ae03          	lw	t3,20(a1)
42002b26:	0185a303          	lw	t1,24(a1)
42002b2a:	01c5a883          	lw	a7,28(a1)
42002b2e:	0077a023          	sw	t2,0(a5)
42002b32:	0057a223          	sw	t0,4(a5)
42002b36:	0205a803          	lw	a6,32(a1)
42002b3a:	01f7a423          	sw	t6,8(a5)
42002b3e:	01e7a623          	sw	t5,12(a5)
42002b42:	01d7a823          	sw	t4,16(a5)
42002b46:	01c7aa23          	sw	t3,20(a5)
42002b4a:	0067ac23          	sw	t1,24(a5)
42002b4e:	0117ae23          	sw	a7,28(a5)
42002b52:	02458593          	addi	a1,a1,36
42002b56:	02478793          	addi	a5,a5,36
42002b5a:	ff07ae23          	sw	a6,-4(a5)
42002b5e:	40f70833          	sub	a6,a4,a5
42002b62:	fb0646e3          	blt	a2,a6,42002b0e <memcpy+0x80>
42002b66:	b7b5                	j	42002ad2 <memcpy+0x44>
42002b68:	00082883          	lw	a7,0(a6)
42002b6c:	0811                	addi	a6,a6,4
42002b6e:	01162023          	sw	a7,0(a2) # 40800000 <__sglue>
42002b72:	0611                	addi	a2,a2,4
42002b74:	b78d                	j	42002ad6 <memcpy+0x48>

42002b76 <_free_r>:
42002b76:	c1c5                	beqz	a1,42002c16 <_free_r+0xa0>
42002b78:	ffc5a783          	lw	a5,-4(a1)
42002b7c:	1101                	addi	sp,sp,-32
42002b7e:	cc22                	sw	s0,24(sp)
42002b80:	ce06                	sw	ra,28(sp)
42002b82:	ffc58413          	addi	s0,a1,-4
42002b86:	0007d363          	bgez	a5,42002b8c <_free_r+0x16>
42002b8a:	943e                	add	s0,s0,a5
42002b8c:	c62a                	sw	a0,12(sp)
42002b8e:	2add                	jal	42002d84 <__malloc_lock>
42002b90:	40800737          	lui	a4,0x40800
42002b94:	5bc72783          	lw	a5,1468(a4) # 408005bc <__malloc_free_list>
42002b98:	4532                	lw	a0,12(sp)
42002b9a:	eb89                	bnez	a5,42002bac <_free_r+0x36>
42002b9c:	00042223          	sw	zero,4(s0)
42002ba0:	5a872e23          	sw	s0,1468(a4)
42002ba4:	4462                	lw	s0,24(sp)
42002ba6:	40f2                	lw	ra,28(sp)
42002ba8:	6105                	addi	sp,sp,32
42002baa:	a2d5                	j	42002d8e <__malloc_unlock>
42002bac:	00f47d63          	bgeu	s0,a5,42002bc6 <_free_r+0x50>
42002bb0:	4010                	lw	a2,0(s0)
42002bb2:	00c406b3          	add	a3,s0,a2
42002bb6:	00d79663          	bne	a5,a3,42002bc2 <_free_r+0x4c>
42002bba:	4394                	lw	a3,0(a5)
42002bbc:	43dc                	lw	a5,4(a5)
42002bbe:	96b2                	add	a3,a3,a2
42002bc0:	c014                	sw	a3,0(s0)
42002bc2:	c05c                	sw	a5,4(s0)
42002bc4:	bff1                	j	42002ba0 <_free_r+0x2a>
42002bc6:	873e                	mv	a4,a5
42002bc8:	43dc                	lw	a5,4(a5)
42002bca:	c399                	beqz	a5,42002bd0 <_free_r+0x5a>
42002bcc:	fef47de3          	bgeu	s0,a5,42002bc6 <_free_r+0x50>
42002bd0:	4314                	lw	a3,0(a4)
42002bd2:	00d70633          	add	a2,a4,a3
42002bd6:	00861f63          	bne	a2,s0,42002bf4 <_free_r+0x7e>
42002bda:	4010                	lw	a2,0(s0)
42002bdc:	96b2                	add	a3,a3,a2
42002bde:	c314                	sw	a3,0(a4)
42002be0:	00d70633          	add	a2,a4,a3
42002be4:	fcc790e3          	bne	a5,a2,42002ba4 <_free_r+0x2e>
42002be8:	4390                	lw	a2,0(a5)
42002bea:	43dc                	lw	a5,4(a5)
42002bec:	96b2                	add	a3,a3,a2
42002bee:	c314                	sw	a3,0(a4)
42002bf0:	c35c                	sw	a5,4(a4)
42002bf2:	bf4d                	j	42002ba4 <_free_r+0x2e>
42002bf4:	00c47563          	bgeu	s0,a2,42002bfe <_free_r+0x88>
42002bf8:	47b1                	li	a5,12
42002bfa:	c11c                	sw	a5,0(a0)
42002bfc:	b765                	j	42002ba4 <_free_r+0x2e>
42002bfe:	4010                	lw	a2,0(s0)
42002c00:	00c406b3          	add	a3,s0,a2
42002c04:	00d79663          	bne	a5,a3,42002c10 <_free_r+0x9a>
42002c08:	4394                	lw	a3,0(a5)
42002c0a:	43dc                	lw	a5,4(a5)
42002c0c:	96b2                	add	a3,a3,a2
42002c0e:	c014                	sw	a3,0(s0)
42002c10:	c05c                	sw	a5,4(s0)
42002c12:	c340                	sw	s0,4(a4)
42002c14:	bf41                	j	42002ba4 <_free_r+0x2e>
42002c16:	8082                	ret

42002c18 <sbrk_aligned>:
42002c18:	1141                	addi	sp,sp,-16
42002c1a:	c04a                	sw	s2,0(sp)
42002c1c:	40800937          	lui	s2,0x40800
42002c20:	5b892783          	lw	a5,1464(s2) # 408005b8 <__malloc_sbrk_start>
42002c24:	c422                	sw	s0,8(sp)
42002c26:	c226                	sw	s1,4(sp)
42002c28:	c606                	sw	ra,12(sp)
42002c2a:	84aa                	mv	s1,a0
42002c2c:	842e                	mv	s0,a1
42002c2e:	e789                	bnez	a5,42002c38 <sbrk_aligned+0x20>
42002c30:	4581                	li	a1,0
42002c32:	23d5                	jal	42003216 <_sbrk_r>
42002c34:	5aa92c23          	sw	a0,1464(s2)
42002c38:	85a2                	mv	a1,s0
42002c3a:	8526                	mv	a0,s1
42002c3c:	2be9                	jal	42003216 <_sbrk_r>
42002c3e:	597d                	li	s2,-1
42002c40:	01251a63          	bne	a0,s2,42002c54 <sbrk_aligned+0x3c>
42002c44:	547d                	li	s0,-1
42002c46:	40b2                	lw	ra,12(sp)
42002c48:	8522                	mv	a0,s0
42002c4a:	4422                	lw	s0,8(sp)
42002c4c:	4492                	lw	s1,4(sp)
42002c4e:	4902                	lw	s2,0(sp)
42002c50:	0141                	addi	sp,sp,16
42002c52:	8082                	ret
42002c54:	00350413          	addi	s0,a0,3
42002c58:	9871                	andi	s0,s0,-4
42002c5a:	fe8506e3          	beq	a0,s0,42002c46 <sbrk_aligned+0x2e>
42002c5e:	40a405b3          	sub	a1,s0,a0
42002c62:	8526                	mv	a0,s1
42002c64:	2b4d                	jal	42003216 <_sbrk_r>
42002c66:	ff2510e3          	bne	a0,s2,42002c46 <sbrk_aligned+0x2e>
42002c6a:	bfe9                	j	42002c44 <sbrk_aligned+0x2c>

42002c6c <_malloc_r>:
42002c6c:	1101                	addi	sp,sp,-32
42002c6e:	ca26                	sw	s1,20(sp)
42002c70:	00358493          	addi	s1,a1,3
42002c74:	98f1                	andi	s1,s1,-4
42002c76:	c84a                	sw	s2,16(sp)
42002c78:	ce06                	sw	ra,28(sp)
42002c7a:	cc22                	sw	s0,24(sp)
42002c7c:	c64e                	sw	s3,12(sp)
42002c7e:	c452                	sw	s4,8(sp)
42002c80:	04a1                	addi	s1,s1,8
42002c82:	47b1                	li	a5,12
42002c84:	892a                	mv	s2,a0
42002c86:	06f4f563          	bgeu	s1,a5,42002cf0 <_malloc_r+0x84>
42002c8a:	84be                	mv	s1,a5
42002c8c:	06b4e463          	bltu	s1,a1,42002cf4 <_malloc_r+0x88>
42002c90:	854a                	mv	a0,s2
42002c92:	28cd                	jal	42002d84 <__malloc_lock>
42002c94:	408009b7          	lui	s3,0x40800
42002c98:	5bc9a783          	lw	a5,1468(s3) # 408005bc <__malloc_free_list>
42002c9c:	843e                	mv	s0,a5
42002c9e:	e435                	bnez	s0,42002d0a <_malloc_r+0x9e>
42002ca0:	85a6                	mv	a1,s1
42002ca2:	854a                	mv	a0,s2
42002ca4:	3f95                	jal	42002c18 <sbrk_aligned>
42002ca6:	57fd                	li	a5,-1
42002ca8:	842a                	mv	s0,a0
42002caa:	0cf51863          	bne	a0,a5,42002d7a <_malloc_r+0x10e>
42002cae:	5bc9a403          	lw	s0,1468(s3)
42002cb2:	87a2                	mv	a5,s0
42002cb4:	ebc5                	bnez	a5,42002d64 <_malloc_r+0xf8>
42002cb6:	cc45                	beqz	s0,42002d6e <_malloc_r+0x102>
42002cb8:	00042a03          	lw	s4,0(s0)
42002cbc:	4581                	li	a1,0
42002cbe:	854a                	mv	a0,s2
42002cc0:	9a22                	add	s4,s4,s0
42002cc2:	2b91                	jal	42003216 <_sbrk_r>
42002cc4:	0aaa1563          	bne	s4,a0,42002d6e <_malloc_r+0x102>
42002cc8:	401c                	lw	a5,0(s0)
42002cca:	854a                	mv	a0,s2
42002ccc:	8c9d                	sub	s1,s1,a5
42002cce:	85a6                	mv	a1,s1
42002cd0:	37a1                	jal	42002c18 <sbrk_aligned>
42002cd2:	57fd                	li	a5,-1
42002cd4:	08f50d63          	beq	a0,a5,42002d6e <_malloc_r+0x102>
42002cd8:	401c                	lw	a5,0(s0)
42002cda:	97a6                	add	a5,a5,s1
42002cdc:	c01c                	sw	a5,0(s0)
42002cde:	5bc9a783          	lw	a5,1468(s3)
42002ce2:	cfd1                	beqz	a5,42002d7e <_malloc_r+0x112>
42002ce4:	43d8                	lw	a4,4(a5)
42002ce6:	08871263          	bne	a4,s0,42002d6a <_malloc_r+0xfe>
42002cea:	0007a223          	sw	zero,4(a5)
42002cee:	a83d                	j	42002d2c <_malloc_r+0xc0>
42002cf0:	f804dee3          	bgez	s1,42002c8c <_malloc_r+0x20>
42002cf4:	00f92023          	sw	a5,0(s2)
42002cf8:	4501                	li	a0,0
42002cfa:	40f2                	lw	ra,28(sp)
42002cfc:	4462                	lw	s0,24(sp)
42002cfe:	44d2                	lw	s1,20(sp)
42002d00:	4942                	lw	s2,16(sp)
42002d02:	49b2                	lw	s3,12(sp)
42002d04:	4a22                	lw	s4,8(sp)
42002d06:	6105                	addi	sp,sp,32
42002d08:	8082                	ret
42002d0a:	4014                	lw	a3,0(s0)
42002d0c:	8e85                	sub	a3,a3,s1
42002d0e:	0406c863          	bltz	a3,42002d5e <_malloc_r+0xf2>
42002d12:	472d                	li	a4,11
42002d14:	02d77d63          	bgeu	a4,a3,42002d4e <_malloc_r+0xe2>
42002d18:	c004                	sw	s1,0(s0)
42002d1a:	00940733          	add	a4,s0,s1
42002d1e:	02879663          	bne	a5,s0,42002d4a <_malloc_r+0xde>
42002d22:	5ae9ae23          	sw	a4,1468(s3)
42002d26:	405c                	lw	a5,4(s0)
42002d28:	c314                	sw	a3,0(a4)
42002d2a:	c35c                	sw	a5,4(a4)
42002d2c:	854a                	mv	a0,s2
42002d2e:	2085                	jal	42002d8e <__malloc_unlock>
42002d30:	00b40513          	addi	a0,s0,11
42002d34:	00440793          	addi	a5,s0,4
42002d38:	9961                	andi	a0,a0,-8
42002d3a:	40f50733          	sub	a4,a0,a5
42002d3e:	faf50ee3          	beq	a0,a5,42002cfa <_malloc_r+0x8e>
42002d42:	943a                	add	s0,s0,a4
42002d44:	8f89                	sub	a5,a5,a0
42002d46:	c01c                	sw	a5,0(s0)
42002d48:	bf4d                	j	42002cfa <_malloc_r+0x8e>
42002d4a:	c3d8                	sw	a4,4(a5)
42002d4c:	bfe9                	j	42002d26 <_malloc_r+0xba>
42002d4e:	4058                	lw	a4,4(s0)
42002d50:	00879563          	bne	a5,s0,42002d5a <_malloc_r+0xee>
42002d54:	5ae9ae23          	sw	a4,1468(s3)
42002d58:	bfd1                	j	42002d2c <_malloc_r+0xc0>
42002d5a:	c3d8                	sw	a4,4(a5)
42002d5c:	bfc1                	j	42002d2c <_malloc_r+0xc0>
42002d5e:	87a2                	mv	a5,s0
42002d60:	4040                	lw	s0,4(s0)
42002d62:	bf35                	j	42002c9e <_malloc_r+0x32>
42002d64:	843e                	mv	s0,a5
42002d66:	43dc                	lw	a5,4(a5)
42002d68:	b7b1                	j	42002cb4 <_malloc_r+0x48>
42002d6a:	87ba                	mv	a5,a4
42002d6c:	bf9d                	j	42002ce2 <_malloc_r+0x76>
42002d6e:	47b1                	li	a5,12
42002d70:	00f92023          	sw	a5,0(s2)
42002d74:	854a                	mv	a0,s2
42002d76:	2821                	jal	42002d8e <__malloc_unlock>
42002d78:	b741                	j	42002cf8 <_malloc_r+0x8c>
42002d7a:	c104                	sw	s1,0(a0)
42002d7c:	bf45                	j	42002d2c <_malloc_r+0xc0>
42002d7e:	00002223          	sw	zero,4(zero) # 4 <rtc_get_reset_reason-0x40000014>
42002d82:	9002                	ebreak

42002d84 <__malloc_lock>:
42002d84:	40800537          	lui	a0,0x40800
42002d88:	5a850513          	addi	a0,a0,1448 # 408005a8 <__lock___malloc_recursive_mutex>
42002d8c:	b16d                	j	42002a36 <__retarget_lock_acquire_recursive>

42002d8e <__malloc_unlock>:
42002d8e:	40800537          	lui	a0,0x40800
42002d92:	5a850513          	addi	a0,a0,1448 # 408005a8 <__lock___malloc_recursive_mutex>
42002d96:	b175                	j	42002a42 <__retarget_lock_release_recursive>

42002d98 <_realloc_r>:
42002d98:	1101                	addi	sp,sp,-32
42002d9a:	cc22                	sw	s0,24(sp)
42002d9c:	ce06                	sw	ra,28(sp)
42002d9e:	ca26                	sw	s1,20(sp)
42002da0:	c84a                	sw	s2,16(sp)
42002da2:	c64e                	sw	s3,12(sp)
42002da4:	c452                	sw	s4,8(sp)
42002da6:	8432                	mv	s0,a2
42002da8:	e991                	bnez	a1,42002dbc <_realloc_r+0x24>
42002daa:	4462                	lw	s0,24(sp)
42002dac:	40f2                	lw	ra,28(sp)
42002dae:	44d2                	lw	s1,20(sp)
42002db0:	4942                	lw	s2,16(sp)
42002db2:	49b2                	lw	s3,12(sp)
42002db4:	4a22                	lw	s4,8(sp)
42002db6:	85b2                	mv	a1,a2
42002db8:	6105                	addi	sp,sp,32
42002dba:	bd4d                	j	42002c6c <_malloc_r>
42002dbc:	ee01                	bnez	a2,42002dd4 <_realloc_r+0x3c>
42002dbe:	3b65                	jal	42002b76 <_free_r>
42002dc0:	4481                	li	s1,0
42002dc2:	40f2                	lw	ra,28(sp)
42002dc4:	4462                	lw	s0,24(sp)
42002dc6:	4942                	lw	s2,16(sp)
42002dc8:	49b2                	lw	s3,12(sp)
42002dca:	4a22                	lw	s4,8(sp)
42002dcc:	8526                	mv	a0,s1
42002dce:	44d2                	lw	s1,20(sp)
42002dd0:	6105                	addi	sp,sp,32
42002dd2:	8082                	ret
42002dd4:	8a2a                	mv	s4,a0
42002dd6:	84ae                	mv	s1,a1
42002dd8:	294d                	jal	4200328a <_malloc_usable_size_r>
42002dda:	892a                	mv	s2,a0
42002ddc:	00856663          	bltu	a0,s0,42002de8 <_realloc_r+0x50>
42002de0:	00155793          	srli	a5,a0,0x1
42002de4:	fc87efe3          	bltu	a5,s0,42002dc2 <_realloc_r+0x2a>
42002de8:	85a2                	mv	a1,s0
42002dea:	8552                	mv	a0,s4
42002dec:	3541                	jal	42002c6c <_malloc_r>
42002dee:	89aa                	mv	s3,a0
42002df0:	e119                	bnez	a0,42002df6 <_realloc_r+0x5e>
42002df2:	84ce                	mv	s1,s3
42002df4:	b7f9                	j	42002dc2 <_realloc_r+0x2a>
42002df6:	8622                	mv	a2,s0
42002df8:	00897363          	bgeu	s2,s0,42002dfe <_realloc_r+0x66>
42002dfc:	864a                	mv	a2,s2
42002dfe:	85a6                	mv	a1,s1
42002e00:	854e                	mv	a0,s3
42002e02:	3171                	jal	42002a8e <memcpy>
42002e04:	85a6                	mv	a1,s1
42002e06:	8552                	mv	a0,s4
42002e08:	33bd                	jal	42002b76 <_free_r>
42002e0a:	b7e5                	j	42002df2 <_realloc_r+0x5a>

42002e0c <_fclose_r>:
42002e0c:	1141                	addi	sp,sp,-16
42002e0e:	c606                	sw	ra,12(sp)
42002e10:	c422                	sw	s0,8(sp)
42002e12:	c226                	sw	s1,4(sp)
42002e14:	c04a                	sw	s2,0(sp)
42002e16:	c995                	beqz	a1,42002e4a <_fclose_r+0x3e>
42002e18:	84aa                	mv	s1,a0
42002e1a:	842e                	mv	s0,a1
42002e1c:	c509                	beqz	a0,42002e26 <_fclose_r+0x1a>
42002e1e:	551c                	lw	a5,40(a0)
42002e20:	e399                	bnez	a5,42002e26 <_fclose_r+0x1a>
42002e22:	d4cff0ef          	jal	4200236e <__sinit>
42002e26:	507c                	lw	a5,100(s0)
42002e28:	8b85                	andi	a5,a5,1
42002e2a:	eb81                	bnez	a5,42002e3a <_fclose_r+0x2e>
42002e2c:	00c45783          	lhu	a5,12(s0)
42002e30:	2007f793          	andi	a5,a5,512
42002e34:	e39d                	bnez	a5,42002e5a <_fclose_r+0x4e>
42002e36:	4c28                	lw	a0,88(s0)
42002e38:	3efd                	jal	42002a36 <__retarget_lock_acquire_recursive>
42002e3a:	00c41783          	lh	a5,12(s0)
42002e3e:	ef91                	bnez	a5,42002e5a <_fclose_r+0x4e>
42002e40:	507c                	lw	a5,100(s0)
42002e42:	8b85                	andi	a5,a5,1
42002e44:	e399                	bnez	a5,42002e4a <_fclose_r+0x3e>
42002e46:	4c28                	lw	a0,88(s0)
42002e48:	3eed                	jal	42002a42 <__retarget_lock_release_recursive>
42002e4a:	4901                	li	s2,0
42002e4c:	40b2                	lw	ra,12(sp)
42002e4e:	4422                	lw	s0,8(sp)
42002e50:	4492                	lw	s1,4(sp)
42002e52:	854a                	mv	a0,s2
42002e54:	4902                	lw	s2,0(sp)
42002e56:	0141                	addi	sp,sp,16
42002e58:	8082                	ret
42002e5a:	85a2                	mv	a1,s0
42002e5c:	8526                	mv	a0,s1
42002e5e:	2885                	jal	42002ece <__sflush_r>
42002e60:	581c                	lw	a5,48(s0)
42002e62:	892a                	mv	s2,a0
42002e64:	c799                	beqz	a5,42002e72 <_fclose_r+0x66>
42002e66:	500c                	lw	a1,32(s0)
42002e68:	8526                	mv	a0,s1
42002e6a:	9782                	jalr	a5
42002e6c:	00055363          	bgez	a0,42002e72 <_fclose_r+0x66>
42002e70:	597d                	li	s2,-1
42002e72:	00c45783          	lhu	a5,12(s0)
42002e76:	0807f793          	andi	a5,a5,128
42002e7a:	c781                	beqz	a5,42002e82 <_fclose_r+0x76>
42002e7c:	480c                	lw	a1,16(s0)
42002e7e:	8526                	mv	a0,s1
42002e80:	39dd                	jal	42002b76 <_free_r>
42002e82:	584c                	lw	a1,52(s0)
42002e84:	c989                	beqz	a1,42002e96 <_fclose_r+0x8a>
42002e86:	04440793          	addi	a5,s0,68
42002e8a:	00f58463          	beq	a1,a5,42002e92 <_fclose_r+0x86>
42002e8e:	8526                	mv	a0,s1
42002e90:	31dd                	jal	42002b76 <_free_r>
42002e92:	02042a23          	sw	zero,52(s0)
42002e96:	442c                	lw	a1,72(s0)
42002e98:	c589                	beqz	a1,42002ea2 <_fclose_r+0x96>
42002e9a:	8526                	mv	a0,s1
42002e9c:	39e9                	jal	42002b76 <_free_r>
42002e9e:	04042423          	sw	zero,72(s0)
42002ea2:	beaff0ef          	jal	4200228c <__sfp_lock_acquire>
42002ea6:	507c                	lw	a5,100(s0)
42002ea8:	00041623          	sh	zero,12(s0)
42002eac:	8b85                	andi	a5,a5,1
42002eae:	e399                	bnez	a5,42002eb4 <_fclose_r+0xa8>
42002eb0:	4c28                	lw	a0,88(s0)
42002eb2:	3e41                	jal	42002a42 <__retarget_lock_release_recursive>
42002eb4:	4c28                	lw	a0,88(s0)
42002eb6:	3eb5                	jal	42002a32 <__retarget_lock_close_recursive>
42002eb8:	be0ff0ef          	jal	42002298 <__sfp_lock_release>
42002ebc:	bf41                	j	42002e4c <_fclose_r+0x40>

42002ebe <fclose>:
42002ebe:	1101                	addi	sp,sp,-32
42002ec0:	ce06                	sw	ra,28(sp)
42002ec2:	c62a                	sw	a0,12(sp)
42002ec4:	299d                	jal	4200333a <__getreent>
42002ec6:	45b2                	lw	a1,12(sp)
42002ec8:	40f2                	lw	ra,28(sp)
42002eca:	6105                	addi	sp,sp,32
42002ecc:	b781                	j	42002e0c <_fclose_r>

42002ece <__sflush_r>:
42002ece:	00c59783          	lh	a5,12(a1)
42002ed2:	1101                	addi	sp,sp,-32
42002ed4:	cc22                	sw	s0,24(sp)
42002ed6:	ca26                	sw	s1,20(sp)
42002ed8:	ce06                	sw	ra,28(sp)
42002eda:	c84a                	sw	s2,16(sp)
42002edc:	c64e                	sw	s3,12(sp)
42002ede:	0087f713          	andi	a4,a5,8
42002ee2:	84aa                	mv	s1,a0
42002ee4:	842e                	mv	s0,a1
42002ee6:	ef69                	bnez	a4,42002fc0 <__sflush_r+0xf2>
42002ee8:	6705                	lui	a4,0x1
42002eea:	80070713          	addi	a4,a4,-2048 # 800 <rtc_get_reset_reason-0x3ffff818>
42002eee:	8f5d                	or	a4,a4,a5
42002ef0:	00e59623          	sh	a4,12(a1)
42002ef4:	41d8                	lw	a4,4(a1)
42002ef6:	00e04563          	bgtz	a4,42002f00 <__sflush_r+0x32>
42002efa:	41b8                	lw	a4,64(a1)
42002efc:	0ce05063          	blez	a4,42002fbc <__sflush_r+0xee>
42002f00:	5458                	lw	a4,44(s0)
42002f02:	cf4d                	beqz	a4,42002fbc <__sflush_r+0xee>
42002f04:	0004a903          	lw	s2,0(s1)
42002f08:	01379693          	slli	a3,a5,0x13
42002f0c:	0004a023          	sw	zero,0(s1)
42002f10:	0806d363          	bgez	a3,42002f96 <__sflush_r+0xc8>
42002f14:	4870                	lw	a2,84(s0)
42002f16:	00c45783          	lhu	a5,12(s0)
42002f1a:	8b91                	andi	a5,a5,4
42002f1c:	c799                	beqz	a5,42002f2a <__sflush_r+0x5c>
42002f1e:	405c                	lw	a5,4(s0)
42002f20:	8e1d                	sub	a2,a2,a5
42002f22:	585c                	lw	a5,52(s0)
42002f24:	c399                	beqz	a5,42002f2a <__sflush_r+0x5c>
42002f26:	403c                	lw	a5,64(s0)
42002f28:	8e1d                	sub	a2,a2,a5
42002f2a:	545c                	lw	a5,44(s0)
42002f2c:	500c                	lw	a1,32(s0)
42002f2e:	4681                	li	a3,0
42002f30:	8526                	mv	a0,s1
42002f32:	9782                	jalr	a5
42002f34:	577d                	li	a4,-1
42002f36:	00c41783          	lh	a5,12(s0)
42002f3a:	00e51d63          	bne	a0,a4,42002f54 <__sflush_r+0x86>
42002f3e:	4094                	lw	a3,0(s1)
42002f40:	4775                	li	a4,29
42002f42:	0ad76a63          	bltu	a4,a3,42002ff6 <__sflush_r+0x128>
42002f46:	20400737          	lui	a4,0x20400
42002f4a:	0705                	addi	a4,a4,1 # 20400001 <rtc_get_reset_reason-0x1fc00017>
42002f4c:	00d75733          	srl	a4,a4,a3
42002f50:	8b05                	andi	a4,a4,1
42002f52:	c355                	beqz	a4,42002ff6 <__sflush_r+0x128>
42002f54:	777d                	lui	a4,0xfffff
42002f56:	7ff70713          	addi	a4,a4,2047 # fffff7ff <LP_WDT+0x9ff4dbff>
42002f5a:	8f7d                	and	a4,a4,a5
42002f5c:	00e41623          	sh	a4,12(s0)
42002f60:	4818                	lw	a4,16(s0)
42002f62:	00042223          	sw	zero,4(s0)
42002f66:	c018                	sw	a4,0(s0)
42002f68:	01379713          	slli	a4,a5,0x13
42002f6c:	00075863          	bgez	a4,42002f7c <__sflush_r+0xae>
42002f70:	57fd                	li	a5,-1
42002f72:	00f51463          	bne	a0,a5,42002f7a <__sflush_r+0xac>
42002f76:	409c                	lw	a5,0(s1)
42002f78:	e391                	bnez	a5,42002f7c <__sflush_r+0xae>
42002f7a:	c868                	sw	a0,84(s0)
42002f7c:	584c                	lw	a1,52(s0)
42002f7e:	0124a023          	sw	s2,0(s1)
42002f82:	cd8d                	beqz	a1,42002fbc <__sflush_r+0xee>
42002f84:	04440793          	addi	a5,s0,68
42002f88:	00f58463          	beq	a1,a5,42002f90 <__sflush_r+0xc2>
42002f8c:	8526                	mv	a0,s1
42002f8e:	36e5                	jal	42002b76 <_free_r>
42002f90:	02042a23          	sw	zero,52(s0)
42002f94:	a025                	j	42002fbc <__sflush_r+0xee>
42002f96:	500c                	lw	a1,32(s0)
42002f98:	4601                	li	a2,0
42002f9a:	4685                	li	a3,1
42002f9c:	8526                	mv	a0,s1
42002f9e:	9702                	jalr	a4
42002fa0:	57fd                	li	a5,-1
42002fa2:	862a                	mv	a2,a0
42002fa4:	f6f519e3          	bne	a0,a5,42002f16 <__sflush_r+0x48>
42002fa8:	409c                	lw	a5,0(s1)
42002faa:	d7b5                	beqz	a5,42002f16 <__sflush_r+0x48>
42002fac:	4775                	li	a4,29
42002fae:	00e78563          	beq	a5,a4,42002fb8 <__sflush_r+0xea>
42002fb2:	4759                	li	a4,22
42002fb4:	02e79f63          	bne	a5,a4,42002ff2 <__sflush_r+0x124>
42002fb8:	0124a023          	sw	s2,0(s1)
42002fbc:	4501                	li	a0,0
42002fbe:	a089                	j	42003000 <__sflush_r+0x132>
42002fc0:	0105a983          	lw	s3,16(a1)
42002fc4:	fe098ce3          	beqz	s3,42002fbc <__sflush_r+0xee>
42002fc8:	0005a903          	lw	s2,0(a1)
42002fcc:	8b8d                	andi	a5,a5,3
42002fce:	0135a023          	sw	s3,0(a1)
42002fd2:	41390933          	sub	s2,s2,s3
42002fd6:	4701                	li	a4,0
42002fd8:	e391                	bnez	a5,42002fdc <__sflush_r+0x10e>
42002fda:	49d8                	lw	a4,20(a1)
42002fdc:	c418                	sw	a4,8(s0)
42002fde:	fd205fe3          	blez	s2,42002fbc <__sflush_r+0xee>
42002fe2:	541c                	lw	a5,40(s0)
42002fe4:	500c                	lw	a1,32(s0)
42002fe6:	86ca                	mv	a3,s2
42002fe8:	864e                	mv	a2,s3
42002fea:	8526                	mv	a0,s1
42002fec:	9782                	jalr	a5
42002fee:	02a04063          	bgtz	a0,4200300e <__sflush_r+0x140>
42002ff2:	00c41783          	lh	a5,12(s0)
42002ff6:	0407e793          	ori	a5,a5,64
42002ffa:	00f41623          	sh	a5,12(s0)
42002ffe:	557d                	li	a0,-1
42003000:	40f2                	lw	ra,28(sp)
42003002:	4462                	lw	s0,24(sp)
42003004:	44d2                	lw	s1,20(sp)
42003006:	4942                	lw	s2,16(sp)
42003008:	49b2                	lw	s3,12(sp)
4200300a:	6105                	addi	sp,sp,32
4200300c:	8082                	ret
4200300e:	99aa                	add	s3,s3,a0
42003010:	40a90933          	sub	s2,s2,a0
42003014:	b7e9                	j	42002fde <__sflush_r+0x110>

42003016 <_fflush_r>:
42003016:	499c                	lw	a5,16(a1)
42003018:	1141                	addi	sp,sp,-16
4200301a:	c606                	sw	ra,12(sp)
4200301c:	c422                	sw	s0,8(sp)
4200301e:	c226                	sw	s1,4(sp)
42003020:	eb81                	bnez	a5,42003030 <_fflush_r+0x1a>
42003022:	4481                	li	s1,0
42003024:	40b2                	lw	ra,12(sp)
42003026:	4422                	lw	s0,8(sp)
42003028:	8526                	mv	a0,s1
4200302a:	4492                	lw	s1,4(sp)
4200302c:	0141                	addi	sp,sp,16
4200302e:	8082                	ret
42003030:	84aa                	mv	s1,a0
42003032:	842e                	mv	s0,a1
42003034:	c509                	beqz	a0,4200303e <_fflush_r+0x28>
42003036:	551c                	lw	a5,40(a0)
42003038:	e399                	bnez	a5,4200303e <_fflush_r+0x28>
4200303a:	b34ff0ef          	jal	4200236e <__sinit>
4200303e:	00c41783          	lh	a5,12(s0)
42003042:	d3e5                	beqz	a5,42003022 <_fflush_r+0xc>
42003044:	5078                	lw	a4,100(s0)
42003046:	8b05                	andi	a4,a4,1
42003048:	e719                	bnez	a4,42003056 <_fflush_r+0x40>
4200304a:	2007f793          	andi	a5,a5,512
4200304e:	e781                	bnez	a5,42003056 <_fflush_r+0x40>
42003050:	4c28                	lw	a0,88(s0)
42003052:	9e5ff0ef          	jal	42002a36 <__retarget_lock_acquire_recursive>
42003056:	8526                	mv	a0,s1
42003058:	85a2                	mv	a1,s0
4200305a:	3d95                	jal	42002ece <__sflush_r>
4200305c:	507c                	lw	a5,100(s0)
4200305e:	84aa                	mv	s1,a0
42003060:	8b85                	andi	a5,a5,1
42003062:	f3e9                	bnez	a5,42003024 <_fflush_r+0xe>
42003064:	00c45783          	lhu	a5,12(s0)
42003068:	2007f793          	andi	a5,a5,512
4200306c:	ffc5                	bnez	a5,42003024 <_fflush_r+0xe>
4200306e:	4c28                	lw	a0,88(s0)
42003070:	9d3ff0ef          	jal	42002a42 <__retarget_lock_release_recursive>
42003074:	bf45                	j	42003024 <_fflush_r+0xe>

42003076 <fflush>:
42003076:	ed19                	bnez	a0,42003094 <fflush+0x1e>
42003078:	40800637          	lui	a2,0x40800
4200307c:	420035b7          	lui	a1,0x42003
42003080:	40800537          	lui	a0,0x40800
42003084:	00060613          	mv	a2,a2
42003088:	01658593          	addi	a1,a1,22 # 42003016 <_fflush_r>
4200308c:	00c50513          	addi	a0,a0,12 # 4080000c <_impure_data>
42003090:	e20ff06f          	j	420026b0 <_fwalk_sglue>
42003094:	1101                	addi	sp,sp,-32
42003096:	ce06                	sw	ra,28(sp)
42003098:	c62a                	sw	a0,12(sp)
4200309a:	2445                	jal	4200333a <__getreent>
4200309c:	45b2                	lw	a1,12(sp)
4200309e:	40f2                	lw	ra,28(sp)
420030a0:	6105                	addi	sp,sp,32
420030a2:	bf95                	j	42003016 <_fflush_r>

420030a4 <__swhatbuf_r>:
420030a4:	7159                	addi	sp,sp,-112
420030a6:	d2a6                	sw	s1,100(sp)
420030a8:	84ae                	mv	s1,a1
420030aa:	00e59583          	lh	a1,14(a1)
420030ae:	d4a2                	sw	s0,104(sp)
420030b0:	d0ca                	sw	s2,96(sp)
420030b2:	d686                	sw	ra,108(sp)
420030b4:	8432                	mv	s0,a2
420030b6:	8936                	mv	s2,a3
420030b8:	0005dc63          	bgez	a1,420030d0 <__swhatbuf_r+0x2c>
420030bc:	00c4d783          	lhu	a5,12(s1)
420030c0:	00092023          	sw	zero,0(s2)
420030c4:	0807f793          	andi	a5,a5,128
420030c8:	ef9d                	bnez	a5,42003106 <__swhatbuf_r+0x62>
420030ca:	08000793          	li	a5,128
420030ce:	a835                	j	4200310a <__swhatbuf_r+0x66>
420030d0:	0030                	addi	a2,sp,8
420030d2:	20dd                	jal	420031b8 <_fstat_r>
420030d4:	fe0544e3          	bltz	a0,420030bc <__swhatbuf_r+0x18>
420030d8:	4732                	lw	a4,12(sp)
420030da:	67bd                	lui	a5,0xf
420030dc:	8f7d                	and	a4,a4,a5
420030de:	77f9                	lui	a5,0xffffe
420030e0:	97ba                	add	a5,a5,a4
420030e2:	0017b793          	seqz	a5,a5
420030e6:	00f92023          	sw	a5,0(s2)
420030ea:	47c6                	lw	a5,80(sp)
420030ec:	02f05763          	blez	a5,4200311a <__swhatbuf_r+0x76>
420030f0:	c01c                	sw	a5,0(s0)
420030f2:	c8bc                	sw	a5,80(s1)
420030f4:	67a1                	lui	a5,0x8
420030f6:	40000513          	li	a0,1024
420030fa:	00f70a63          	beq	a4,a5,4200310e <__swhatbuf_r+0x6a>
420030fe:	6505                	lui	a0,0x1
42003100:	80050513          	addi	a0,a0,-2048 # 800 <rtc_get_reset_reason-0x3ffff818>
42003104:	a029                	j	4200310e <__swhatbuf_r+0x6a>
42003106:	04000793          	li	a5,64
4200310a:	c01c                	sw	a5,0(s0)
4200310c:	4501                	li	a0,0
4200310e:	50b6                	lw	ra,108(sp)
42003110:	5426                	lw	s0,104(sp)
42003112:	5496                	lw	s1,100(sp)
42003114:	5906                	lw	s2,96(sp)
42003116:	6165                	addi	sp,sp,112
42003118:	8082                	ret
4200311a:	08000793          	li	a5,128
4200311e:	c01c                	sw	a5,0(s0)
42003120:	bff9                	j	420030fe <__swhatbuf_r+0x5a>

42003122 <__smakebuf_r>:
42003122:	00c5d783          	lhu	a5,12(a1)
42003126:	7179                	addi	sp,sp,-48
42003128:	d422                	sw	s0,40(sp)
4200312a:	d606                	sw	ra,44(sp)
4200312c:	d226                	sw	s1,36(sp)
4200312e:	d04a                	sw	s2,32(sp)
42003130:	ce4e                	sw	s3,28(sp)
42003132:	8b89                	andi	a5,a5,2
42003134:	842e                	mv	s0,a1
42003136:	cf91                	beqz	a5,42003152 <__smakebuf_r+0x30>
42003138:	04740793          	addi	a5,s0,71
4200313c:	c01c                	sw	a5,0(s0)
4200313e:	c81c                	sw	a5,16(s0)
42003140:	4785                	li	a5,1
42003142:	c85c                	sw	a5,20(s0)
42003144:	50b2                	lw	ra,44(sp)
42003146:	5422                	lw	s0,40(sp)
42003148:	5492                	lw	s1,36(sp)
4200314a:	5902                	lw	s2,32(sp)
4200314c:	49f2                	lw	s3,28(sp)
4200314e:	6145                	addi	sp,sp,48
42003150:	8082                	ret
42003152:	0074                	addi	a3,sp,12
42003154:	0030                	addi	a2,sp,8
42003156:	84aa                	mv	s1,a0
42003158:	37b1                	jal	420030a4 <__swhatbuf_r>
4200315a:	49a2                	lw	s3,8(sp)
4200315c:	892a                	mv	s2,a0
4200315e:	8526                	mv	a0,s1
42003160:	85ce                	mv	a1,s3
42003162:	b0bff0ef          	jal	42002c6c <_malloc_r>
42003166:	00c41783          	lh	a5,12(s0)
4200316a:	e911                	bnez	a0,4200317e <__smakebuf_r+0x5c>
4200316c:	2007f713          	andi	a4,a5,512
42003170:	fb71                	bnez	a4,42003144 <__smakebuf_r+0x22>
42003172:	9bf1                	andi	a5,a5,-4
42003174:	0027e793          	ori	a5,a5,2
42003178:	00f41623          	sh	a5,12(s0)
4200317c:	bf75                	j	42003138 <__smakebuf_r+0x16>
4200317e:	0807e793          	ori	a5,a5,128
42003182:	00f41623          	sh	a5,12(s0)
42003186:	47b2                	lw	a5,12(sp)
42003188:	c008                	sw	a0,0(s0)
4200318a:	c808                	sw	a0,16(s0)
4200318c:	01342a23          	sw	s3,20(s0)
42003190:	cf89                	beqz	a5,420031aa <__smakebuf_r+0x88>
42003192:	00e41583          	lh	a1,14(s0)
42003196:	8526                	mv	a0,s1
42003198:	2881                	jal	420031e8 <_isatty_r>
4200319a:	c901                	beqz	a0,420031aa <__smakebuf_r+0x88>
4200319c:	00c45783          	lhu	a5,12(s0)
420031a0:	9bf1                	andi	a5,a5,-4
420031a2:	0017e793          	ori	a5,a5,1
420031a6:	00f41623          	sh	a5,12(s0)
420031aa:	00c45783          	lhu	a5,12(s0)
420031ae:	0127e533          	or	a0,a5,s2
420031b2:	00a41623          	sh	a0,12(s0)
420031b6:	b779                	j	42003144 <__smakebuf_r+0x22>

420031b8 <_fstat_r>:
420031b8:	1141                	addi	sp,sp,-16
420031ba:	c422                	sw	s0,8(sp)
420031bc:	c226                	sw	s1,4(sp)
420031be:	842a                	mv	s0,a0
420031c0:	408004b7          	lui	s1,0x40800
420031c4:	852e                	mv	a0,a1
420031c6:	85b2                	mv	a1,a2
420031c8:	c606                	sw	ra,12(sp)
420031ca:	5804aa23          	sw	zero,1428(s1) # 40800594 <errno>
420031ce:	20f5                	jal	420032ba <_fstat>
420031d0:	57fd                	li	a5,-1
420031d2:	00f51663          	bne	a0,a5,420031de <_fstat_r+0x26>
420031d6:	5944a783          	lw	a5,1428(s1)
420031da:	c391                	beqz	a5,420031de <_fstat_r+0x26>
420031dc:	c01c                	sw	a5,0(s0)
420031de:	40b2                	lw	ra,12(sp)
420031e0:	4422                	lw	s0,8(sp)
420031e2:	4492                	lw	s1,4(sp)
420031e4:	0141                	addi	sp,sp,16
420031e6:	8082                	ret

420031e8 <_isatty_r>:
420031e8:	1141                	addi	sp,sp,-16
420031ea:	c422                	sw	s0,8(sp)
420031ec:	c226                	sw	s1,4(sp)
420031ee:	842a                	mv	s0,a0
420031f0:	408004b7          	lui	s1,0x40800
420031f4:	852e                	mv	a0,a1
420031f6:	c606                	sw	ra,12(sp)
420031f8:	5804aa23          	sw	zero,1428(s1) # 40800594 <errno>
420031fc:	20a1                	jal	42003244 <_isatty>
420031fe:	57fd                	li	a5,-1
42003200:	00f51663          	bne	a0,a5,4200320c <_isatty_r+0x24>
42003204:	5944a783          	lw	a5,1428(s1)
42003208:	c391                	beqz	a5,4200320c <_isatty_r+0x24>
4200320a:	c01c                	sw	a5,0(s0)
4200320c:	40b2                	lw	ra,12(sp)
4200320e:	4422                	lw	s0,8(sp)
42003210:	4492                	lw	s1,4(sp)
42003212:	0141                	addi	sp,sp,16
42003214:	8082                	ret

42003216 <_sbrk_r>:
42003216:	1141                	addi	sp,sp,-16
42003218:	c422                	sw	s0,8(sp)
4200321a:	c226                	sw	s1,4(sp)
4200321c:	842a                	mv	s0,a0
4200321e:	408004b7          	lui	s1,0x40800
42003222:	852e                	mv	a0,a1
42003224:	c606                	sw	ra,12(sp)
42003226:	5804aa23          	sw	zero,1428(s1) # 40800594 <errno>
4200322a:	20c5                	jal	4200330a <_sbrk>
4200322c:	57fd                	li	a5,-1
4200322e:	00f51663          	bne	a0,a5,4200323a <_sbrk_r+0x24>
42003232:	5944a783          	lw	a5,1428(s1)
42003236:	c391                	beqz	a5,4200323a <_sbrk_r+0x24>
42003238:	c01c                	sw	a5,0(s0)
4200323a:	40b2                	lw	ra,12(sp)
4200323c:	4422                	lw	s0,8(sp)
4200323e:	4492                	lw	s1,4(sp)
42003240:	0141                	addi	sp,sp,16
42003242:	8082                	ret

42003244 <_isatty>:
42003244:	7159                	addi	sp,sp,-112
42003246:	002c                	addi	a1,sp,8
42003248:	d686                	sw	ra,108(sp)
4200324a:	2025                	jal	42003272 <fstat>
4200324c:	00055963          	bgez	a0,4200325e <_isatty+0x1a>
42003250:	20b9                	jal	4200329e <__errno>
42003252:	47a5                	li	a5,9
42003254:	c11c                	sw	a5,0(a0)
42003256:	4501                	li	a0,0
42003258:	50b6                	lw	ra,108(sp)
4200325a:	6165                	addi	sp,sp,112
4200325c:	8082                	ret
4200325e:	47b2                	lw	a5,12(sp)
42003260:	673d                	lui	a4,0xf
42003262:	4505                	li	a0,1
42003264:	8ff9                	and	a5,a5,a4
42003266:	6709                	lui	a4,0x2
42003268:	fee788e3          	beq	a5,a4,42003258 <_isatty+0x14>
4200326c:	280d                	jal	4200329e <__errno>
4200326e:	47e5                	li	a5,25
42003270:	b7d5                	j	42003254 <_isatty+0x10>

42003272 <fstat>:
42003272:	1101                	addi	sp,sp,-32
42003274:	cc22                	sw	s0,24(sp)
42003276:	ce06                	sw	ra,28(sp)
42003278:	842a                	mv	s0,a0
4200327a:	c62e                	sw	a1,12(sp)
4200327c:	287d                	jal	4200333a <__getreent>
4200327e:	85a2                	mv	a1,s0
42003280:	4462                	lw	s0,24(sp)
42003282:	4632                	lw	a2,12(sp)
42003284:	40f2                	lw	ra,28(sp)
42003286:	6105                	addi	sp,sp,32
42003288:	bf05                	j	420031b8 <_fstat_r>

4200328a <_malloc_usable_size_r>:
4200328a:	ffc5a783          	lw	a5,-4(a1)
4200328e:	ffc78513          	addi	a0,a5,-4 # 7ffc <rtc_get_reset_reason-0x3fff801c>
42003292:	0007d563          	bgez	a5,4200329c <_malloc_usable_size_r+0x12>
42003296:	95aa                	add	a1,a1,a0
42003298:	419c                	lw	a5,0(a1)
4200329a:	953e                	add	a0,a0,a5
4200329c:	8082                	ret

4200329e <__errno>:
4200329e:	1141                	addi	sp,sp,-16
420032a0:	c606                	sw	ra,12(sp)
420032a2:	2861                	jal	4200333a <__getreent>
420032a4:	40b2                	lw	ra,12(sp)
420032a6:	0141                	addi	sp,sp,16
420032a8:	8082                	ret

420032aa <_close>:
420032aa:	408007b7          	lui	a5,0x40800
420032ae:	05800713          	li	a4,88
420032b2:	58e7aa23          	sw	a4,1428(a5) # 40800594 <errno>
420032b6:	557d                	li	a0,-1
420032b8:	8082                	ret

420032ba <_fstat>:
420032ba:	408007b7          	lui	a5,0x40800
420032be:	05800713          	li	a4,88
420032c2:	58e7aa23          	sw	a4,1428(a5) # 40800594 <errno>
420032c6:	557d                	li	a0,-1
420032c8:	8082                	ret

420032ca <_getpid>:
420032ca:	408007b7          	lui	a5,0x40800
420032ce:	05800713          	li	a4,88
420032d2:	58e7aa23          	sw	a4,1428(a5) # 40800594 <errno>
420032d6:	557d                	li	a0,-1
420032d8:	8082                	ret

420032da <_kill>:
420032da:	408007b7          	lui	a5,0x40800
420032de:	05800713          	li	a4,88
420032e2:	58e7aa23          	sw	a4,1428(a5) # 40800594 <errno>
420032e6:	557d                	li	a0,-1
420032e8:	8082                	ret

420032ea <_lseek>:
420032ea:	408007b7          	lui	a5,0x40800
420032ee:	05800713          	li	a4,88
420032f2:	58e7aa23          	sw	a4,1428(a5) # 40800594 <errno>
420032f6:	557d                	li	a0,-1
420032f8:	8082                	ret

420032fa <_read>:
420032fa:	408007b7          	lui	a5,0x40800
420032fe:	05800713          	li	a4,88
42003302:	58e7aa23          	sw	a4,1428(a5) # 40800594 <errno>
42003306:	557d                	li	a0,-1
42003308:	8082                	ret

4200330a <_sbrk>:
4200330a:	408006b7          	lui	a3,0x40800
4200330e:	872a                	mv	a4,a0
42003310:	5c06a503          	lw	a0,1472(a3) # 408005c0 <heap_end.0>
42003314:	e509                	bnez	a0,4200331e <_sbrk+0x14>
42003316:	408007b7          	lui	a5,0x40800
4200331a:	79078513          	addi	a0,a5,1936 # 40800790 <__bss_end>
4200331e:	00e507b3          	add	a5,a0,a4
42003322:	5cf6a023          	sw	a5,1472(a3)
42003326:	8082                	ret

42003328 <_write>:
42003328:	408007b7          	lui	a5,0x40800
4200332c:	05800713          	li	a4,88
42003330:	58e7aa23          	sw	a4,1428(a5) # 40800594 <errno>
42003334:	557d                	li	a0,-1
42003336:	8082                	ret

42003338 <_exit>:
42003338:	a001                	j	42003338 <_exit>

4200333a <__getreent>:
4200333a:	4501                	li	a0,0
4200333c:	8082                	ret
4200333e:	0000                	unimp
42003340:	6548                	.insn	2, 0x6548
42003342:	6c6c                	.insn	2, 0x6c6c
42003344:	6f77206f          	j	4207623a <__text_end+0x72b9a>
42003348:	6c72                	.insn	2, 0x6c72
4200334a:	2164                	.insn	2, 0x2164
4200334c:	3e2d                	jal	42002e86 <_fclose_r+0x7a>
4200334e:	6425                	lui	s0,0x9
42003350:	000a                	c.slli	zero,0x2
42003352:	0000                	unimp
42003354:	7672                	.insn	2, 0x7672
42003356:	746e695f          	.insn	4, 0x746e695f
4200335a:	6d756e5f          	.insn	4, 0x6d756e5f
4200335e:	2120                	.insn	2, 0x2120
42003360:	203d                	jal	4200338e <__getreent+0x54>
42003362:	2030                	.insn	2, 0x2030
42003364:	2626                	.insn	2, 0x2626
42003366:	2220                	.insn	2, 0x2220
42003368:	6e49                	lui	t3,0x12
4200336a:	6176                	.insn	2, 0x6176
4200336c:	696c                	.insn	2, 0x696c
4200336e:	2064                	.insn	2, 0x2064
42003370:	20555043          	.insn	4, 0x20555043
42003374:	6e69                	lui	t3,0x1a
42003376:	6574                	.insn	2, 0x6574
42003378:	7272                	.insn	2, 0x7272
4200337a:	7075                	c.lui	zero,0xffffd
4200337c:	2074                	.insn	2, 0x2074
4200337e:	756e                	.insn	2, 0x756e
42003380:	626d                	lui	tp,0x1b
42003382:	7265                	lui	tp,0xffff9
42003384:	0022                	c.slli	zero,0x8
42003386:	0000                	unimp
42003388:	6573552f          	.insn	4, 0x6573552f
4200338c:	7372                	.insn	2, 0x7372
4200338e:	6c64702f          	.insn	4, 0x6c64702f
42003392:	79727573          	csrrci	a0,0x797,4
42003396:	2f61                	jal	42003b2e <__text_end+0x48e>
42003398:	6f44                	.insn	2, 0x6f44
4200339a:	656d7563          	bgeu	s10,s6,420039e4 <__text_end+0x344>
4200339e:	746e                	.insn	2, 0x746e
420033a0:	6d452f73          	csrrs	t5,0x6d4,a0
420033a4:	6562                	.insn	2, 0x6562
420033a6:	6464                	.insn	2, 0x6464
420033a8:	6465                	lui	s0,0x19
420033aa:	7250                	.insn	2, 0x7250
420033ac:	63656a6f          	jal	s4,420599e2 <__text_end+0x56342>
420033b0:	7374                	.insn	2, 0x7374
420033b2:	7073652f          	.insn	4, 0x7073652f
420033b6:	36633233          	.insn	4, 0x36633233
420033ba:	622d                	lui	tp,0xb
420033bc:	7261                	lui	tp,0xffff8
420033be:	2d65                	jal	42003a76 <__text_end+0x3d6>
420033c0:	656d                	lui	a0,0x1b
420033c2:	6174                	.insn	2, 0x6174
420033c4:	2d6c                	.insn	2, 0x2d6c
420033c6:	2f6b6473          	csrrsi	s0,0x2f6,22
420033ca:	706d6f63          	bltu	s10,t1,42003ae8 <__text_end+0x448>
420033ce:	6e656e6f          	jal	t3,42059ab4 <__text_end+0x56414>
420033d2:	7374                	.insn	2, 0x7374
420033d4:	746e692f          	.insn	4, 0x746e692f
420033d8:	7265                	lui	tp,0xffff9
420033da:	7572                	.insn	2, 0x7572
420033dc:	7470                	.insn	2, 0x7470
420033de:	6e692f73          	csrrs	t5,0x6e6,s2
420033e2:	6574                	.insn	2, 0x6574
420033e4:	7272                	.insn	2, 0x7272
420033e6:	7075                	c.lui	zero,0xffffd
420033e8:	5f74                	lw	a3,124(a4)
420033ea:	6c70                	.insn	2, 0x6c70
420033ec:	6369                	lui	t1,0x1a
420033ee:	682e                	.insn	2, 0x682e
420033f0:	0000                	unimp
420033f2:	0000                	unimp
420033f4:	65726f43          	.insn	4, 0x65726f43
420033f8:	7020                	.insn	2, 0x7020
420033fa:	6e61                	lui	t3,0x18
420033fc:	6369                	lui	t1,0x1a
420033fe:	2164656b          	.insn	4, 0x2164656b
42003402:	450a                	lw	a0,128(sp)
42003404:	6378                	.insn	2, 0x6378
42003406:	7065                	c.lui	zero,0xffff9
42003408:	6974                	.insn	2, 0x6974
4200340a:	49206e6f          	jal	t3,4200989c <__text_end+0x61fc>
4200340e:	2064                	.insn	2, 0x2064
42003410:	253d                	jal	42003a3e <__text_end+0x39e>
42003412:	646c                	.insn	2, 0x646c
42003414:	6d0a                	.insn	2, 0x6d0a
42003416:	7674                	.insn	2, 0x7674
42003418:	6c61                	lui	s8,0x18
4200341a:	253d                	jal	42003a48 <__text_end+0x3a8>
4200341c:	786c                	.insn	2, 0x786c
4200341e:	6d0a                	.insn	2, 0x6d0a
42003420:	7065                	c.lui	zero,0xffff9
42003422:	6c253d63          	.insn	4, 0x6c253d63
42003426:	0a78                	addi	a4,sp,284
	...
42003434:	0000                	unimp
42003436:	3fe0                	.insn	2, 0x3fe0

42003438 <__clz_tab>:
42003438:	0100 0202 0303 0303 0404 0404 0404 0404     ................
42003448:	0505 0505 0505 0505 0505 0505 0505 0505     ................
42003458:	0606 0606 0606 0606 0606 0606 0606 0606     ................
42003468:	0606 0606 0606 0606 0606 0606 0606 0606     ................
42003478:	0707 0707 0707 0707 0707 0707 0707 0707     ................
42003488:	0707 0707 0707 0707 0707 0707 0707 0707     ................
42003498:	0707 0707 0707 0707 0707 0707 0707 0707     ................
420034a8:	0707 0707 0707 0707 0707 0707 0707 0707     ................
420034b8:	0808 0808 0808 0808 0808 0808 0808 0808     ................
420034c8:	0808 0808 0808 0808 0808 0808 0808 0808     ................
420034d8:	0808 0808 0808 0808 0808 0808 0808 0808     ................
420034e8:	0808 0808 0808 0808 0808 0808 0808 0808     ................
420034f8:	0808 0808 0808 0808 0808 0808 0808 0808     ................
42003508:	0808 0808 0808 0808 0808 0808 0808 0808     ................
42003518:	0808 0808 0808 0808 0808 0808 0808 0808     ................
42003528:	0808 0808 0808 0808 0808 0808 0808 0808     ................
42003538:	1f0a 4200 1f20 4200 1ee2 4200 1ee2 4200     ...B ..B...B...B
42003548:	1ee2 4200 1ee2 4200 1f20 4200 1ee2 4200     ...B...B ..B...B
42003558:	1ee2 4200 1ee2 4200 1ee2 4200 2066 4200     ...B...B...Bf .B
42003568:	1f5e 4200 200a 4200 1ee2 4200 1ee2 4200     ^..B. .B...B...B
42003578:	2096 4200 1ee2 4200 1f5e 4200 1ee2 4200     . .B...B^..B...B
42003588:	1ee2 4200 2012 4200                         ...B. .B

42003590 <__func__.0>:
42003590:	7361 6573 7472 765f 6c61 6469 725f 5f76     assert_valid_rv_
420035a0:	6e69 5f74 756e 006d                         int_num.

420035a8 <GPIO_PIN_MUX_REG>:
420035a8:	0004 6009 0008 6009 000c 6009 0010 6009     ...`...`...`...`
420035b8:	0014 6009 0018 6009 001c 6009 0020 6009     ...`...`...` ..`
420035c8:	0024 6009 0028 6009 002c 6009 0030 6009     $..`(..`,..`0..`
420035d8:	0034 6009 0038 6009 003c 6009 0040 6009     4..`8..`<..`@..`
420035e8:	0044 6009 0048 6009 004c 6009 0050 6009     D..`H..`L..`P..`
420035f8:	0054 6009 0058 6009 005c 6009 0060 6009     T..`X..`\..``..`
42003608:	0064 6009 0068 6009 006c 6009 0070 6009     d..`h..`l..`p..`
42003618:	0074 6009 0078 6009 007c 6009 202c 7566     t..`x..`|..`, fu
42003628:	636e 6974 6e6f 203a 0000 0000 7361 6573     nction: ....asse
42003638:	7472 6f69 206e 2522 2273 6620 6961 656c     rtion "%s" faile
42003648:	3a64 6620 6c69 2065 2522 2273 202c 696c     d: file "%s", li
42003658:	656e 2520 2564 2573 0a73 0000 2d23 2b30     ne %d%s%s...#-0+
42003668:	0020 0000 6c68 004c 6665 4567 4746 0000      ...hlL.efgEFG..
42003678:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
42003688:	0000 0000 3130 3332 3534 3736 3938 6261     ....0123456789ab
42003698:	6463 6665 0000 0000                         cdef....

Disassembly of section .data:

40800000 <__sglue>:
40800000:	0000 0000 0003 0000 05c4 4080               ...........@

4080000c <_impure_data>:
4080000c:	0000 0000 05c4 4080 062c 4080 0694 4080     .......@,..@...@
	...

408000fc <m_software_interrupt_handler>:
408000fc:	715d                	addi	sp,sp,-80
408000fe:	c686                	sw	ra,76(sp)
40800100:	c496                	sw	t0,72(sp)
40800102:	c29a                	sw	t1,68(sp)
40800104:	c09e                	sw	t2,64(sp)
40800106:	de22                	sw	s0,60(sp)
40800108:	dc2a                	sw	a0,56(sp)
4080010a:	da2e                	sw	a1,52(sp)
4080010c:	d832                	sw	a2,48(sp)
4080010e:	d636                	sw	a3,44(sp)
40800110:	d43a                	sw	a4,40(sp)
40800112:	d23e                	sw	a5,36(sp)
40800114:	d042                	sw	a6,32(sp)
40800116:	ce46                	sw	a7,28(sp)
40800118:	cc72                	sw	t3,24(sp)
4080011a:	ca76                	sw	t4,20(sp)
4080011c:	c87a                	sw	t5,16(sp)
4080011e:	c67e                	sw	t6,12(sp)
40800120:	0880                	addi	s0,sp,80
40800122:	01800097          	auipc	ra,0x1800
40800126:	202080e7          	jalr	514(ra) # 42000324 <msi_clear>
4080012a:	a001                	j	4080012a <m_software_interrupt_handler+0x2e>

4080012c <u_timer_interrupt_handler>:
4080012c:	1101                	addi	sp,sp,-32
4080012e:	ce06                	sw	ra,28(sp)
40800130:	cc22                	sw	s0,24(sp)
40800132:	ca3e                	sw	a5,20(sp)
40800134:	1000                	addi	s0,sp,32
40800136:	87aa                	mv	a5,a0
40800138:	fef42623          	sw	a5,-20(s0) # 18fec <rtc_get_reset_reason-0x3ffe702c>
4080013c:	a001                	j	4080013c <u_timer_interrupt_handler+0x10>

4080013e <ext_interrupt_handler>:
4080013e:	7159                	addi	sp,sp,-112
40800140:	d686                	sw	ra,108(sp)
40800142:	d496                	sw	t0,104(sp)
40800144:	d29a                	sw	t1,100(sp)
40800146:	d09e                	sw	t2,96(sp)
40800148:	cea2                	sw	s0,92(sp)
4080014a:	ccaa                	sw	a0,88(sp)
4080014c:	caae                	sw	a1,84(sp)
4080014e:	c8b2                	sw	a2,80(sp)
40800150:	c6b6                	sw	a3,76(sp)
40800152:	c4ba                	sw	a4,72(sp)
40800154:	c2be                	sw	a5,68(sp)
40800156:	c0c2                	sw	a6,64(sp)
40800158:	de46                	sw	a7,60(sp)
4080015a:	dc72                	sw	t3,56(sp)
4080015c:	da76                	sw	t4,52(sp)
4080015e:	d87a                	sw	t5,48(sp)
40800160:	d67e                	sw	t6,44(sp)
40800162:	1880                	addi	s0,sp,112
40800164:	342027f3          	csrr	a5,mcause
40800168:	faf42623          	sw	a5,-84(s0)
4080016c:	fac42783          	lw	a5,-84(s0)
40800170:	faf42423          	sw	a5,-88(s0)
40800174:	341027f3          	csrr	a5,mepc
40800178:	faf42223          	sw	a5,-92(s0)
4080017c:	fa442783          	lw	a5,-92(s0)
40800180:	faf42023          	sw	a5,-96(s0)
40800184:	300027f3          	csrr	a5,mstatus
40800188:	f8f42e23          	sw	a5,-100(s0)
4080018c:	f9c42783          	lw	a5,-100(s0)
40800190:	f8f42c23          	sw	a5,-104(s0)
40800194:	fa842703          	lw	a4,-88(s0)
40800198:	800007b7          	lui	a5,0x80000
4080019c:	17fd                	addi	a5,a5,-1 # 7fffffff <LP_WDT+0x1ff4e3ff>
4080019e:	8ff9                	and	a5,a5,a4
408001a0:	f8f42a23          	sw	a5,-108(s0)
408001a4:	300467f3          	csrrsi	a5,mstatus,8
408001a8:	f8f42823          	sw	a5,-112(s0)
408001ac:	f9442783          	lw	a5,-108(s0)
408001b0:	0ff7f793          	zext.b	a5,a5
408001b4:	853e                	mv	a0,a5
408001b6:	01800097          	auipc	ra,0x1800
408001ba:	18c080e7          	jalr	396(ra) # 42000342 <generic_interrupt_handler>
408001be:	f9842783          	lw	a5,-104(s0)
408001c2:	30079073          	csrw	mstatus,a5
408001c6:	fa842783          	lw	a5,-88(s0)
408001ca:	34279073          	csrw	mcause,a5
408001ce:	fa042783          	lw	a5,-96(s0)
408001d2:	34179073          	csrw	mepc,a5
408001d6:	0001                	nop
408001d8:	50b6                	lw	ra,108(sp)
408001da:	52a6                	lw	t0,104(sp)
408001dc:	5316                	lw	t1,100(sp)
408001de:	5386                	lw	t2,96(sp)
408001e0:	4476                	lw	s0,92(sp)
408001e2:	4566                	lw	a0,88(sp)
408001e4:	45d6                	lw	a1,84(sp)
408001e6:	4646                	lw	a2,80(sp)
408001e8:	46b6                	lw	a3,76(sp)
408001ea:	4726                	lw	a4,72(sp)
408001ec:	4796                	lw	a5,68(sp)
408001ee:	4806                	lw	a6,64(sp)
408001f0:	58f2                	lw	a7,60(sp)
408001f2:	5e62                	lw	t3,56(sp)
408001f4:	5ed2                	lw	t4,52(sp)
408001f6:	5f42                	lw	t5,48(sp)
408001f8:	5fb2                	lw	t6,44(sp)
408001fa:	6165                	addi	sp,sp,112
408001fc:	30200073          	mret

40800200 <exception_handler>:
40800200:	7159                	addi	sp,sp,-112
40800202:	d686                	sw	ra,108(sp)
40800204:	d496                	sw	t0,104(sp)
40800206:	d29a                	sw	t1,100(sp)
40800208:	d09e                	sw	t2,96(sp)
4080020a:	cea2                	sw	s0,92(sp)
4080020c:	ccaa                	sw	a0,88(sp)
4080020e:	caae                	sw	a1,84(sp)
40800210:	c8b2                	sw	a2,80(sp)
40800212:	c6b6                	sw	a3,76(sp)
40800214:	c4ba                	sw	a4,72(sp)
40800216:	c2be                	sw	a5,68(sp)
40800218:	c0c2                	sw	a6,64(sp)
4080021a:	de46                	sw	a7,60(sp)
4080021c:	dc72                	sw	t3,56(sp)
4080021e:	da76                	sw	t4,52(sp)
40800220:	d87a                	sw	t5,48(sp)
40800222:	d67e                	sw	t6,44(sp)
40800224:	1880                	addi	s0,sp,112
40800226:	342027f3          	csrr	a5,mcause
4080022a:	faf42623          	sw	a5,-84(s0)
4080022e:	fac42783          	lw	a5,-84(s0)
40800232:	faf42423          	sw	a5,-88(s0)
40800236:	343027f3          	csrr	a5,mtval
4080023a:	faf42223          	sw	a5,-92(s0)
4080023e:	fa442783          	lw	a5,-92(s0)
40800242:	faf42023          	sw	a5,-96(s0)
40800246:	341027f3          	csrr	a5,mepc
4080024a:	f8f42e23          	sw	a5,-100(s0)
4080024e:	f9c42783          	lw	a5,-100(s0)
40800252:	f8f42c23          	sw	a5,-104(s0)
40800256:	341027f3          	csrr	a5,mepc
4080025a:	f8f42a23          	sw	a5,-108(s0)
4080025e:	f9442783          	lw	a5,-108(s0)
40800262:	f8f42c23          	sw	a5,-104(s0)
40800266:	f9842783          	lw	a5,-104(s0)
4080026a:	0791                	addi	a5,a5,4
4080026c:	f8f42c23          	sw	a5,-104(s0)
40800270:	f9842783          	lw	a5,-104(s0)
40800274:	34179073          	csrw	mepc,a5
40800278:	fa842703          	lw	a4,-88(s0)
4080027c:	47ad                	li	a5,11
4080027e:	00f70763          	beq	a4,a5,4080028c <exception_handler+0x8c>
40800282:	fa842703          	lw	a4,-88(s0)
40800286:	47a1                	li	a5,8
40800288:	00f71763          	bne	a4,a5,40800296 <exception_handler+0x96>
4080028c:	01800097          	auipc	ra,0x1800
40800290:	126080e7          	jalr	294(ra) # 420003b2 <ecall_handler>
40800294:	a02d                	j	408002be <exception_handler+0xbe>
40800296:	f9842683          	lw	a3,-104(s0)
4080029a:	fa042603          	lw	a2,-96(s0)
4080029e:	fa842583          	lw	a1,-88(s0)
408002a2:	420037b7          	lui	a5,0x42003
408002a6:	3f478513          	addi	a0,a5,1012 # 420033f4 <__getreent+0xba>
408002aa:	01800097          	auipc	ra,0x1800
408002ae:	134080e7          	jalr	308(ra) # 420003de <serial_printf>
408002b2:	4501                	li	a0,0
408002b4:	ff800097          	auipc	ra,0xff800
408002b8:	de0080e7          	jalr	-544(ra) # 40000094 <esp_rom_software_reset_cpu>
408002bc:	0001                	nop
408002be:	0001                	nop
408002c0:	50b6                	lw	ra,108(sp)
408002c2:	52a6                	lw	t0,104(sp)
408002c4:	5316                	lw	t1,100(sp)
408002c6:	5386                	lw	t2,96(sp)
408002c8:	4476                	lw	s0,92(sp)
408002ca:	4566                	lw	a0,88(sp)
408002cc:	45d6                	lw	a1,84(sp)
408002ce:	4646                	lw	a2,80(sp)
408002d0:	46b6                	lw	a3,76(sp)
408002d2:	4726                	lw	a4,72(sp)
408002d4:	4796                	lw	a5,68(sp)
408002d6:	4806                	lw	a6,64(sp)
408002d8:	58f2                	lw	a7,60(sp)
408002da:	5e62                	lw	t3,56(sp)
408002dc:	5ed2                	lw	t4,52(sp)
408002de:	5f42                	lw	t5,48(sp)
408002e0:	5fb2                	lw	t6,44(sp)
408002e2:	6165                	addi	sp,sp,112
408002e4:	30200073          	mret

408002e8 <m_timer_interrupt_handler>:
408002e8:	7159                	addi	sp,sp,-112
408002ea:	d686                	sw	ra,108(sp)
408002ec:	d496                	sw	t0,104(sp)
408002ee:	d29a                	sw	t1,100(sp)
408002f0:	d09e                	sw	t2,96(sp)
408002f2:	cea2                	sw	s0,92(sp)
408002f4:	ccaa                	sw	a0,88(sp)
408002f6:	caae                	sw	a1,84(sp)
408002f8:	c8b2                	sw	a2,80(sp)
408002fa:	c6b6                	sw	a3,76(sp)
408002fc:	c4ba                	sw	a4,72(sp)
408002fe:	c2be                	sw	a5,68(sp)
40800300:	c0c2                	sw	a6,64(sp)
40800302:	de46                	sw	a7,60(sp)
40800304:	dc72                	sw	t3,56(sp)
40800306:	da76                	sw	t4,52(sp)
40800308:	d87a                	sw	t5,48(sp)
4080030a:	d67e                	sw	t6,44(sp)
4080030c:	1880                	addi	s0,sp,112
4080030e:	20002337          	lui	t1,0x20002
40800312:	80430313          	addi	t1,t1,-2044 # 20001804 <rtc_get_reset_reason-0x1fffe814>
40800316:	00832303          	lw	t1,8(t1)
4080031a:	8e1a                	mv	t3,t1
4080031c:	4e81                	li	t4,0
4080031e:	20002337          	lui	t1,0x20002
40800322:	80430313          	addi	t1,t1,-2044 # 20001804 <rtc_get_reset_reason-0x1fffe814>
40800326:	00432e03          	lw	t3,4(t1)
4080032a:	40800337          	lui	t1,0x40800
4080032e:	78030313          	addi	t1,t1,1920 # 40800780 <cb_init>
40800332:	00432383          	lw	t2,4(t1)
40800336:	00032303          	lw	t1,0(t1)
4080033a:	8e9a                	mv	t4,t1
4080033c:	20002337          	lui	t1,0x20002
40800340:	80430313          	addi	t1,t1,-2044 # 20001804 <rtc_get_reset_reason-0x1fffe814>
40800344:	9e76                	add	t3,t3,t4
40800346:	01c32623          	sw	t3,12(t1)
4080034a:	20002337          	lui	t1,0x20002
4080034e:	80430313          	addi	t1,t1,-2044 # 20001804 <rtc_get_reset_reason-0x1fffe814>
40800352:	00832303          	lw	t1,8(t1)
40800356:	861a                	mv	a2,t1
40800358:	4681                	li	a3,0
4080035a:	00061793          	slli	a5,a2,0x0
4080035e:	4701                	li	a4,0
40800360:	200026b7          	lui	a3,0x20002
40800364:	80468693          	addi	a3,a3,-2044 # 20001804 <rtc_get_reset_reason-0x1fffe814>
40800368:	42d4                	lw	a3,4(a3)
4080036a:	8536                	mv	a0,a3
4080036c:	4581                	li	a1,0
4080036e:	00a70633          	add	a2,a4,a0
40800372:	8332                	mv	t1,a2
40800374:	00e33333          	sltu	t1,t1,a4
40800378:	00b786b3          	add	a3,a5,a1
4080037c:	00d307b3          	add	a5,t1,a3
40800380:	86be                	mv	a3,a5
40800382:	408007b7          	lui	a5,0x40800
40800386:	78078793          	addi	a5,a5,1920 # 40800780 <cb_init>
4080038a:	4388                	lw	a0,0(a5)
4080038c:	43cc                	lw	a1,4(a5)
4080038e:	00a60733          	add	a4,a2,a0
40800392:	833a                	mv	t1,a4
40800394:	00c33333          	sltu	t1,t1,a2
40800398:	00b687b3          	add	a5,a3,a1
4080039c:	00f306b3          	add	a3,t1,a5
408003a0:	87b6                	mv	a5,a3
408003a2:	0007d813          	srli	a6,a5,0x0
408003a6:	4881                	li	a7,0
408003a8:	200027b7          	lui	a5,0x20002
408003ac:	80478793          	addi	a5,a5,-2044 # 20001804 <rtc_get_reset_reason-0x1fffe814>
408003b0:	8742                	mv	a4,a6
408003b2:	cb98                	sw	a4,16(a5)
408003b4:	342027f3          	csrr	a5,mcause
408003b8:	faf42623          	sw	a5,-84(s0)
408003bc:	fac42783          	lw	a5,-84(s0)
408003c0:	faf42423          	sw	a5,-88(s0)
408003c4:	341027f3          	csrr	a5,mepc
408003c8:	faf42223          	sw	a5,-92(s0)
408003cc:	fa442783          	lw	a5,-92(s0)
408003d0:	faf42023          	sw	a5,-96(s0)
408003d4:	300027f3          	csrr	a5,mstatus
408003d8:	f8f42e23          	sw	a5,-100(s0)
408003dc:	f9c42783          	lw	a5,-100(s0)
408003e0:	f8f42c23          	sw	a5,-104(s0)
408003e4:	408007b7          	lui	a5,0x40800
408003e8:	78078793          	addi	a5,a5,1920 # 40800780 <cb_init>
408003ec:	479c                	lw	a5,8(a5)
408003ee:	9782                	jalr	a5
408003f0:	f9842783          	lw	a5,-104(s0)
408003f4:	30079073          	csrw	mstatus,a5
408003f8:	fa842783          	lw	a5,-88(s0)
408003fc:	34279073          	csrw	mcause,a5
40800400:	fa042783          	lw	a5,-96(s0)
40800404:	34179073          	csrw	mepc,a5
40800408:	0001                	nop
4080040a:	50b6                	lw	ra,108(sp)
4080040c:	52a6                	lw	t0,104(sp)
4080040e:	5316                	lw	t1,100(sp)
40800410:	5386                	lw	t2,96(sp)
40800412:	4476                	lw	s0,92(sp)
40800414:	4566                	lw	a0,88(sp)
40800416:	45d6                	lw	a1,84(sp)
40800418:	4646                	lw	a2,80(sp)
4080041a:	46b6                	lw	a3,76(sp)
4080041c:	4726                	lw	a4,72(sp)
4080041e:	4796                	lw	a5,68(sp)
40800420:	4806                	lw	a6,64(sp)
40800422:	58f2                	lw	a7,60(sp)
40800424:	5e62                	lw	t3,56(sp)
40800426:	5ed2                	lw	t4,52(sp)
40800428:	5f42                	lw	t5,48(sp)
4080042a:	5fb2                	lw	t6,44(sp)
4080042c:	6165                	addi	sp,sp,112
4080042e:	30200073          	mret
	...

40800500 <vector_table>:
40800500:	d01ff06f          	j	40800200 <exception_handler>
40800504:	c3bff06f          	j	4080013e <ext_interrupt_handler>
40800508:	c37ff06f          	j	4080013e <ext_interrupt_handler>
4080050c:	bf1ff06f          	j	408000fc <m_software_interrupt_handler>
40800510:	c1dff06f          	j	4080012c <u_timer_interrupt_handler>
40800514:	c2bff06f          	j	4080013e <ext_interrupt_handler>
40800518:	c27ff06f          	j	4080013e <ext_interrupt_handler>
4080051c:	dcdff06f          	j	408002e8 <m_timer_interrupt_handler>
40800520:	c1fff06f          	j	4080013e <ext_interrupt_handler>
40800524:	c1bff06f          	j	4080013e <ext_interrupt_handler>
40800528:	c17ff06f          	j	4080013e <ext_interrupt_handler>
4080052c:	c13ff06f          	j	4080013e <ext_interrupt_handler>
40800530:	c0fff06f          	j	4080013e <ext_interrupt_handler>
40800534:	c0bff06f          	j	4080013e <ext_interrupt_handler>
40800538:	c07ff06f          	j	4080013e <ext_interrupt_handler>
4080053c:	c03ff06f          	j	4080013e <ext_interrupt_handler>
40800540:	bffff06f          	j	4080013e <ext_interrupt_handler>
40800544:	bfbff06f          	j	4080013e <ext_interrupt_handler>
40800548:	bf7ff06f          	j	4080013e <ext_interrupt_handler>
4080054c:	bf3ff06f          	j	4080013e <ext_interrupt_handler>
40800550:	befff06f          	j	4080013e <ext_interrupt_handler>
40800554:	bebff06f          	j	4080013e <ext_interrupt_handler>
40800558:	be7ff06f          	j	4080013e <ext_interrupt_handler>
4080055c:	be3ff06f          	j	4080013e <ext_interrupt_handler>
40800560:	bdfff06f          	j	4080013e <ext_interrupt_handler>
40800564:	bdbff06f          	j	4080013e <ext_interrupt_handler>
40800568:	bd7ff06f          	j	4080013e <ext_interrupt_handler>
4080056c:	bd3ff06f          	j	4080013e <ext_interrupt_handler>
40800570:	bcfff06f          	j	4080013e <ext_interrupt_handler>
40800574:	bcbff06f          	j	4080013e <ext_interrupt_handler>
40800578:	bc7ff06f          	j	4080013e <ext_interrupt_handler>
4080057c:	bc3ff06f          	j	4080013e <ext_interrupt_handler>
40800580:	bbfff06f          	j	4080013e <ext_interrupt_handler>
40800584:	bbbff06f          	j	4080013e <ext_interrupt_handler>
40800588:	0001                	nop
	...
