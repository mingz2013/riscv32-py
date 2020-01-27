
hello.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <main>:
   0:	ff010113          	addi	sp,sp,-16
   4:	00812623          	sw	s0,12(sp)
   8:	01010413          	addi	s0,sp,16
   c:	00000793          	li	a5,0
  10:	00078513          	mv	a0,a5
  14:	00c12403          	lw	s0,12(sp)
  18:	01010113          	addi	sp,sp,16
  1c:	00008067          	ret
