
hello.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <main>:
   0:	fe010113          	addi	sp,sp,-32
   4:	00112e23          	sw	ra,28(sp)
   8:	00812c23          	sw	s0,24(sp)
   c:	02010413          	addi	s0,sp,32
  10:	000007b7          	lui	a5,0x0
  14:	00078513          	mv	a0,a5
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <main+0x18>
  20:	00100793          	li	a5,1
  24:	fef42623          	sw	a5,-20(s0)
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00178793          	addi	a5,a5,1 # 1 <main+0x1>
  30:	fef42623          	sw	a5,-20(s0)
  34:	fec42583          	lw	a1,-20(s0)
  38:	000007b7          	lui	a5,0x0
  3c:	00078513          	mv	a0,a5
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <main+0x40>
  48:	00000793          	li	a5,0
  4c:	00078513          	mv	a0,a5
  50:	01c12083          	lw	ra,28(sp)
  54:	01812403          	lw	s0,24(sp)
  58:	02010113          	addi	sp,sp,32
  5c:	00008067          	ret
