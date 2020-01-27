<< cmd--:======> auipc gp 0x17
<< cmd--:======> addi gp gp -0x2e8
<< cmd--:======> addi a0 gp 0x1cc
<< cmd--:======> addi a2 gp 0x228
<< cmd--:======> sub a2 a2 a0
<< cmd--:======> addi a1 zero 0x0
<< cmd--:======> jal ra 0x1cc
<< cmd--:======> addi t1 zero 0xf
<< cmd--:======> addi a4 a0 0x0
<< cmd--:======> bgeu t1 a2 0x3c
<< cmd--:======> andi a5 a4 0xf
<< cmd--:======> bne a5 zero 0xa0
<< cmd--:======> slli a3 a5 0x2
<< cmd--:======> auipc t0 0x0
<< cmd--:======> add a3 a3 t0
<< cmd--:======> addi t0 ra 0x0
<< cmd--:======> jalr ra -0x60 a3
<< cmd--:======> sb a1 0xb a4
<< cmd--:======> sb a1 0xa a4
<< cmd--:======> sb a1 0x9 a4
<< cmd--:======> sb a1 0x8 a4
<< cmd--:======> sb a1 0x7 a4
<< cmd--:======> sb a1 0x6 a4
<< cmd--:======> sb a1 0x5 a4
<< cmd--:======> sb a1 0x4 a4
<< cmd--:======> sb a1 0x3 a4
<< cmd--:======> sb a1 0x2 a4
<< cmd--:======> sb a1 0x1 a4
<< cmd--:======> sb a1 0x0 a4
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> addi ra t0 0x0
<< cmd--:======> addi a5 a5 -0x10
<< cmd--:======> sub a4 a4 a5
<< cmd--:======> add a2 a2 a5
<< cmd--:======> bgeu t1 a2 -0x90
<< cmd--:======> jal zero -0xc4
<< cmd--:======> bne a1 zero 0x84
<< cmd--:======> andi a3 a2 -0x10
<< cmd--:======> andi a2 a2 0xf
<< cmd--:======> add a3 a3 a4
<< cmd--:======> sw a1 0x0 a4
<< cmd--:======> sw a1 0x4 a4
<< cmd--:======> sw a1 0x8 a4
<< cmd--:======> sw a1 0xc a4
<< cmd--:======> addi a4 a4 0x10
<< cmd--:======> bltu a4 a3 -0x14
<< cmd--:======> sw a1 0x0 a4
<< cmd--:======> sw a1 0x4 a4
<< cmd--:======> sw a1 0x8 a4
<< cmd--:======> sw a1 0xc a4
<< cmd--:======> addi a4 a4 0x10
<< cmd--:======> bltu a4 a3 -0x14
<< cmd--:======> sw a1 0x0 a4
<< cmd--:======> sw a1 0x4 a4
<< cmd--:======> sw a1 0x8 a4
<< cmd--:======> sw a1 0xc a4
<< cmd--:======> addi a4 a4 0x10
<< cmd--:======> bltu a4 a3 -0x14
<< cmd--:======> sw a1 0x0 a4
<< cmd--:======> sw a1 0x4 a4
<< cmd--:======> sw a1 0x8 a4
<< cmd--:======> sw a1 0xc a4
<< cmd--:======> addi a4 a4 0x10
<< cmd--:======> bltu a4 a3 -0x14
<< cmd--:======> sw a1 0x0 a4
<< cmd--:======> sw a1 0x4 a4
<< cmd--:======> sw a1 0x8 a4
<< cmd--:======> sw a1 0xc a4
<< cmd--:======> addi a4 a4 0x10
<< cmd--:======> bltu a4 a3 -0x14
<< cmd--:======> bne a2 zero 0x8
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> auipc a0 0x3
<< cmd--:======> addi a0 a0 0x2a4
<< cmd--:======> beq a0 zero 0x10
<< cmd--:======> auipc a0 0x4
<< cmd--:======> addi a0 a0 -0x710
<< cmd--:======> jal ra 0x3290
<< cmd--:======> addi a1 a0 0x0
<< cmd--:======> addi a3 zero 0x0
<< cmd--:======> addi a2 zero 0x0
<< cmd--:======> addi a0 zero 0x0
<< cmd--:======> jal zero 0xa344
<< cmd--:======> lw a4 0x1b8 gp
<< cmd--:======> lw a5 0x148 a4
<< cmd--:======> beq a5 zero 0x58
<< cmd--:======> addi a5 a4 0x14c
<< cmd--:======> sw a5 0x148 a4
<< cmd--:======> jal zero -0x5c
<< cmd--:======> lw a4 0x4 a5
<< cmd--:======> addi a6 zero 0x1f
<< cmd--:======> blt a6 a4 0x7c
<< cmd--:======> slli a6 a4 0x2
<< cmd--:======> beq a0 zero 0x2c
<< cmd--:======> addi a4 a4 0x1
<< cmd--:======> sw a4 0x4 a5
<< cmd--:======> add a5 a5 a6
<< cmd--:======> sw a1 0x8 a5
<< cmd--:======> addi a0 zero 0x0
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> jal ra 0x114
<< cmd--:======> addi sp sp -0x10
<< cmd--:======> sw s0 0x8 sp
<< cmd--:======> sw s2 0x0 sp
<< cmd--:======> lui s0 0x26
<< cmd--:======> lui s2 0x26
<< cmd--:======> addi a5 s0 0x598
<< cmd--:======> addi s2 s2 0x598
<< cmd--:======> sub s2 s2 a5
<< cmd--:======> sw ra 0xc sp
<< cmd--:======> sw s1 0x4 sp
<< cmd--:======> srai s2 s2 0x402
<< cmd--:======> beq s2 zero 0x20
<< cmd--:======> lui s0 0x26
<< cmd--:======> lui s2 0x26
<< cmd--:======> addi a5 s0 0x598
<< cmd--:======> addi s2 s2 0x5a0
<< cmd--:======> sub s2 s2 a5
<< cmd--:======> srai s2 s2 0x402
<< cmd--:======> beq s2 zero 0x20
<< cmd--:======> lw ra 0xc sp
<< cmd--:======> lw s0 0x8 sp
<< cmd--:======> lw s1 0x4 sp
<< cmd--:======> lw s2 0x0 sp
<< cmd--:======> addi sp sp 0x10
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> lw a0 0x0 sp
<< cmd--:======> addi a1 sp 0x4
<< cmd--:======> addi a2 zero 0x0
<< cmd--:======> jal ra 0x7c
<< cmd--:======> addi sp sp -0x20
<< cmd--:======> sw ra 0x1c sp
<< cmd--:======> sw s0 0x18 sp
<< cmd--:======> addi s0 sp 0x20
<< cmd--:======> lui a5 0x24
<< cmd--:======> addi a0 a5 0x7e8
<< cmd--:======> jal ra 0x344
<< cmd--:======> addi a1 a0 0x0
<< cmd--:======> lw a0 0x1c0 gp
<< cmd--:======> jal zero -0xd8
<< cmd--:======> addi sp sp -0x40
<< cmd--:======> sw s0 0x38 sp
<< cmd--:======> addi s0 a0 0x0
<< cmd--:======> addi a0 a1 0x0
<< cmd--:======> sw s1 0x34 sp
<< cmd--:======> sw ra 0x3c sp
<< cmd--:======> addi s1 a1 0x0
<< cmd--:======> jal ra 0xc0
<< cmd--:======> andi a5 a0 0x3
<< cmd--:======> addi a4 a0 0x0
<< cmd--:======> bne a5 zero 0x58
<< cmd--:======> lui a3 0x7f7f8
<< cmd--:======> addi a3 a3 -0x81
<< cmd--:======> addi a1 zero -0x1
<< cmd--:======> lw a2 0x0 a4
<< cmd--:======> addi a4 a4 0x4
<< cmd--:======> and a5 a2 a3
<< cmd--:======> add a5 a5 a3
<< cmd--:======> or a5 a5 a2
<< cmd--:======> or a5 a5 a3
<< cmd--:======> beq a5 a1 -0x18
<< cmd--:======> lbu a3 -0x4 a4
<< cmd--:======> lbu a2 -0x3 a4
<< cmd--:======> lbu a5 -0x2 a4
<< cmd--:======> sub a4 a4 a0
<< cmd--:======> beq a3 zero 0x40
<< cmd--:======> beq a2 zero 0x34
<< cmd--:======> sltu a0 zero a5
<< cmd--:======> add a0 a0 a4
<< cmd--:======> addi a0 a0 -0x2
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> lui a5 0x25
<< cmd--:======> addi a5 a5 -0x800
<< cmd--:======> sw a5 0x28 sp
<< cmd--:======> addi a5 zero 0x1
<< cmd--:======> sw a5 0x2c sp
<< cmd--:======> lw a4 0x38 s0
<< cmd--:======> addi a5 sp 0x20
<< cmd--:======> addi a3 a0 0x1
<< cmd--:======> sw a5 0x14 sp
<< cmd--:======> addi a5 zero 0x2
<< cmd--:======> sw s1 0x20 sp
<< cmd--:======> sw a0 0x24 sp
<< cmd--:======> sw a3 0x1c sp
<< cmd--:======> sw a5 0x18 sp
<< cmd--:======> lw a1 0x8 s0
<< cmd--:======> beq a4 zero 0x60
<< cmd--:======> addi a0 s0 0x0
<< cmd--:======> sw a1 0xc sp
<< cmd--:======> jal ra 0x34c8
<< cmd--:======> lw a5 0x38 a0
<< cmd--:======> beq a5 zero 0x8
<< cmd--:======> jal zero -0x320
<< cmd--:======> addi sp sp -0x20
<< cmd--:======> lui a5 0x13
<< cmd--:======> sw ra 0x1c sp
<< cmd--:======> sw s0 0x18 sp
<< cmd--:======> sw s1 0x14 sp
<< cmd--:======> sw s2 0x10 sp
<< cmd--:======> sw s3 0xc sp
<< cmd--:======> sw s4 0x8 sp
<< cmd--:======> sw s5 0x4 sp
<< cmd--:======> sw s6 0x0 sp
<< cmd--:======> lw s0 0x4 a0
<< cmd--:======> addi a5 a5 0x648
<< cmd--:======> sw a5 0x3c a0
<< cmd--:======> addi a4 a0 0x2ec
<< cmd--:======> addi a5 zero 0x3
<< cmd--:======> sw a4 0x2e8 a0
<< cmd--:======> sw a5 0x2e4 a0
<< cmd--:======> sw zero 0x2e0 a0
<< cmd--:======> addi a5 zero 0x4
<< cmd--:======> addi s2 a0 0x0
<< cmd--:======> sw a5 0xc s0
<< cmd--:======> addi a2 zero 0x8
<< cmd--:======> addi a1 zero 0x0
<< cmd--:======> sw zero 0x64 s0
<< cmd--:======> sw zero 0x0 s0
<< cmd--:======> sw zero 0x4 s0
<< cmd--:======> sw zero 0x8 s0
<< cmd--:======> sw zero 0x10 s0
<< cmd--:======> sw zero 0x14 s0
<< cmd--:======> sw zero 0x18 s0
<< cmd--:======> addi a0 s0 0x5c
<< cmd--:======> jal ra -0x345c
<< cmd--:======> addi t1 zero 0xf
<< cmd--:======> addi a4 a0 0x0
<< cmd--:======> bgeu t1 a2 0x3c
<< cmd--:======> sub a3 t1 a2
<< cmd--:======> slli a3 a3 0x2
<< cmd--:======> auipc t0 0x0
<< cmd--:======> add a3 a3 t0
<< cmd--:======> jalr zero 0xc a3
<< cmd--:======> sb a1 0x7 a4
<< cmd--:======> sb a1 0x6 a4
<< cmd--:======> sb a1 0x5 a4
<< cmd--:======> sb a1 0x4 a4
<< cmd--:======> sb a1 0x3 a4
<< cmd--:======> sb a1 0x2 a4
<< cmd--:======> sb a1 0x1 a4
<< cmd--:======> sb a1 0x0 a4
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> lui s6 0x19
<< cmd--:======> lw s1 0x8 s2
<< cmd--:======> lui s5 0x19
<< cmd--:======> lui s4 0x19
<< cmd--:======> lui s3 0x19
<< cmd--:======> addi s6 s6 0x528
<< cmd--:======> addi s5 s5 0x58c
<< cmd--:======> addi s4 s4 0x614
<< cmd--:======> addi s3 s3 0x67c
<< cmd--:======> lui a5 0x10
<< cmd--:======> sw s6 0x20 s0
<< cmd--:======> sw s5 0x24 s0
<< cmd--:======> sw s4 0x28 s0
<< cmd--:======> sw s3 0x2c s0
<< cmd--:======> sw s0 0x1c s0
<< cmd--:======> addi a5 a5 0x9
<< cmd--:======> sw a5 0xc s1
<< cmd--:======> addi a2 zero 0x8
<< cmd--:======> addi a1 zero 0x0
<< cmd--:======> sw zero 0x64 s1
<< cmd--:======> sw zero 0x0 s1
<< cmd--:======> sw zero 0x4 s1
<< cmd--:======> sw zero 0x8 s1
<< cmd--:======> sw zero 0x10 s1
<< cmd--:======> sw zero 0x14 s1
<< cmd--:======> sw zero 0x18 s1
<< cmd--:======> addi a0 s1 0x5c
<< cmd--:======> jal ra -0x34cc
<< cmd--:======> addi t1 zero 0xf
<< cmd--:======> addi a4 a0 0x0
<< cmd--:======> bgeu t1 a2 0x3c
<< cmd--:======> sub a3 t1 a2
<< cmd--:======> slli a3 a3 0x2
<< cmd--:======> auipc t0 0x0
<< cmd--:======> add a3 a3 t0
<< cmd--:======> jalr zero 0xc a3
<< cmd--:======> sb a1 0x7 a4
<< cmd--:======> sb a1 0x6 a4
<< cmd--:======> sb a1 0x5 a4
<< cmd--:======> sb a1 0x4 a4
<< cmd--:======> sb a1 0x3 a4
<< cmd--:======> sb a1 0x2 a4
<< cmd--:======> sb a1 0x1 a4
<< cmd--:======> sb a1 0x0 a4
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> lw s0 0xc s2
<< cmd--:======> lui a5 0x20
<< cmd--:======> sw s6 0x20 s1
<< cmd--:======> sw s5 0x24 s1
<< cmd--:======> sw s4 0x28 s1
<< cmd--:======> sw s3 0x2c s1
<< cmd--:======> sw s1 0x1c s1
<< cmd--:======> addi a5 a5 0x12
<< cmd--:======> sw a5 0xc s0
<< cmd--:======> sw zero 0x64 s0
<< cmd--:======> sw zero 0x0 s0
<< cmd--:======> sw zero 0x4 s0
<< cmd--:======> sw zero 0x8 s0
<< cmd--:======> sw zero 0x10 s0
<< cmd--:======> sw zero 0x14 s0
<< cmd--:======> sw zero 0x18 s0
<< cmd--:======> addi a0 s0 0x5c
<< cmd--:======> addi a2 zero 0x8
<< cmd--:======> addi a1 zero 0x0
<< cmd--:======> jal ra -0x351c
<< cmd--:======> addi t1 zero 0xf
<< cmd--:======> addi a4 a0 0x0
<< cmd--:======> bgeu t1 a2 0x3c
<< cmd--:======> sub a3 t1 a2
<< cmd--:======> slli a3 a3 0x2
<< cmd--:======> auipc t0 0x0
<< cmd--:======> add a3 a3 t0
<< cmd--:======> jalr zero 0xc a3
<< cmd--:======> sb a1 0x7 a4
<< cmd--:======> sb a1 0x6 a4
<< cmd--:======> sb a1 0x5 a4
<< cmd--:======> sb a1 0x4 a4
<< cmd--:======> sb a1 0x3 a4
<< cmd--:======> sb a1 0x2 a4
<< cmd--:======> sb a1 0x1 a4
<< cmd--:======> sb a1 0x0 a4
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> lw ra 0x1c sp
<< cmd--:======> sw s6 0x20 s0
<< cmd--:======> sw s5 0x24 s0
<< cmd--:======> sw s4 0x28 s0
<< cmd--:======> sw s3 0x2c s0
<< cmd--:======> sw s0 0x1c s0
<< cmd--:======> lw s0 0x18 sp
<< cmd--:======> addi a5 zero 0x1
<< cmd--:======> sw a5 0x38 s2
<< cmd--:======> lw s1 0x14 sp
<< cmd--:======> lw s2 0x10 sp
<< cmd--:======> lw s3 0xc sp
<< cmd--:======> lw s4 0x8 sp
<< cmd--:======> lw s5 0x4 sp
<< cmd--:======> lw s6 0x0 sp
<< cmd--:======> addi sp sp 0x20
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> lw a1 0xc sp
<< cmd--:======> jal zero -0x6c
<< cmd--:======> lh a5 0xc a1
<< cmd--:======> slli a4 a5 0x12
<< cmd--:======> blt a4 zero 0x24
<< cmd--:======> lw a4 0x64 a1
<< cmd--:======> lui a3 0x2
<< cmd--:======> or a5 a5 a3
<< cmd--:======> lui a3 -0x2
<< cmd--:======> addi a3 a3 -0x1
<< cmd--:======> and a4 a4 a3
<< cmd--:======> sh a1 a5 0xc
<< cmd--:======> sw a4 0x64 a1
<< cmd--:======> addi a2 sp 0x14
<< cmd--:======> addi a0 s0 0x0
<< cmd--:======> jal ra 0x39c4
<< cmd--:======> lw a5 0x8 a2
<< cmd--:======> beq a5 zero 0x33c
<< cmd--:======> lhu a5 0xc a1
<< cmd--:======> addi sp sp -0x30
<< cmd--:======> sw s0 0x28 sp
<< cmd--:======> sw s4 0x18 sp
<< cmd--:======> sw s5 0x14 sp
<< cmd--:======> sw ra 0x2c sp
<< cmd--:======> sw s1 0x24 sp
<< cmd--:======> sw s2 0x20 sp
<< cmd--:======> sw s3 0x1c sp
<< cmd--:======> sw s6 0x10 sp
<< cmd--:======> sw s7 0xc sp
<< cmd--:======> sw s8 0x8 sp
<< cmd--:======> sw s9 0x4 sp
<< cmd--:======> sw s10 0x0 sp
<< cmd--:======> andi a4 a5 0x8
<< cmd--:======> addi s4 a2 0x0
<< cmd--:======> addi s5 a0 0x0
<< cmd--:======> addi s0 a1 0x0
<< cmd--:======> beq a4 zero 0x8c
<< cmd--:======> addi a1 s0 0x0
<< cmd--:======> addi a0 s5 0x0
<< cmd--:======> jal ra -0xe44
<< cmd--:======> lw a5 0x1c0 gp
<< cmd--:======> addi sp sp -0x10
<< cmd--:======> sw s0 0x8 sp
<< cmd--:======> sw s1 0x4 sp
<< cmd--:======> sw ra 0xc sp
<< cmd--:======> addi s1 a0 0x0
<< cmd--:======> addi s0 a1 0x0
<< cmd--:======> beq a5 zero 0xc
<< cmd--:======> lw a4 0x38 a5
<< cmd--:======> beq a4 zero 0xe0
<< cmd--:======> lh a4 0xc s0
<< cmd--:======> slli a5 a4 0x10
<< cmd--:======> andi a3 a4 0x8
<< cmd--:======> srli a5 a5 0x10
<< cmd--:======> beq a3 zero 0x40
<< cmd--:======> andi a3 a5 0x10
<< cmd--:======> beq a3 zero 0xc8
<< cmd--:======> addi a5 zero 0x9
<< cmd--:======> sw a5 0x0 s1
<< cmd--:======> ori a4 a4 0x40
<< cmd--:======> sh s0 a4 0xc
<< cmd--:======> addi a0 zero -0x1
<< cmd--:======> jal zero -0xf4
<< cmd--:======> lw ra 0xc sp
<< cmd--:======> lw s0 0x8 sp
<< cmd--:======> lw s1 0x4 sp
<< cmd--:======> addi sp sp 0x10
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> bne a0 zero 0x3c4
<< cmd--:======> addi a0 zero -0x1
<< cmd--:======> jal zero -0x1e4
<< cmd--:======> lw ra 0x2c sp
<< cmd--:======> lw s0 0x28 sp
<< cmd--:======> lw s1 0x24 sp
<< cmd--:======> lw s2 0x20 sp
<< cmd--:======> lw s3 0x1c sp
<< cmd--:======> lw s4 0x18 sp
<< cmd--:======> lw s5 0x14 sp
<< cmd--:======> lw s6 0x10 sp
<< cmd--:======> lw s7 0xc sp
<< cmd--:======> lw s8 0x8 sp
<< cmd--:======> lw s9 0x4 sp
<< cmd--:======> lw s10 0x0 sp
<< cmd--:======> addi sp sp 0x30
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> lw ra 0x3c sp
<< cmd--:======> lw s0 0x38 sp
<< cmd--:======> sltu a0 zero a0
<< cmd--:======> sub a0 zero a0
<< cmd--:======> andi a0 a0 -0xb
<< cmd--:======> lw s1 0x34 sp
<< cmd--:======> addi a0 a0 0xa
<< cmd--:======> addi sp sp 0x40
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> addi a5 zero 0x1
<< cmd--:======> sw a5 -0x14 s0
<< cmd--:======> lw a5 -0x14 s0
<< cmd--:======> addi a5 a5 0x1
<< cmd--:======> sw a5 -0x14 s0
<< cmd--:======> lw a1 -0x14 s0
<< cmd--:======> lui a5 0x24
<< cmd--:======> addi a0 a5 0x7f8
<< cmd--:======> jal ra 0x204
<< cmd--:======> lw t1 0x1c0 gp
<< cmd--:======> addi sp sp -0x40
<< cmd--:======> sw a2 0x28 sp
<< cmd--:======> sw a3 0x2c sp
<< cmd--:======> sw a1 0x24 sp
<< cmd--:======> sw a4 0x30 sp
<< cmd--:======> sw a5 0x34 sp
<< cmd--:======> sw a6 0x38 sp
<< cmd--:======> sw a7 0x3c sp
<< cmd--:======> lw a1 0x8 t1
<< cmd--:======> addi a3 sp 0x24
<< cmd--:======> addi a2 a0 0x0
<< cmd--:======> addi a0 t1 0x0
<< cmd--:======> sw ra 0x1c sp
<< cmd--:======> sw a3 0xc sp
<< cmd--:======> jal ra 0x178
<< cmd--:======> addi sp sp -0x1f0
<< cmd--:======> sw ra 0x1ec sp
<< cmd--:======> sw s2 0x1e0 sp
<< cmd--:======> sw s8 0x1c8 sp
<< cmd--:======> sw s10 0x1c0 sp
<< cmd--:======> addi s8 a1 0x0
<< cmd--:======> addi s2 a2 0x0
<< cmd--:======> sw a3 0x14 sp
<< cmd--:======> sw s0 0x1e8 sp
<< cmd--:======> sw s1 0x1e4 sp
<< cmd--:======> sw s3 0x1dc sp
<< cmd--:======> sw s4 0x1d8 sp
<< cmd--:======> sw s5 0x1d4 sp
<< cmd--:======> sw s6 0x1d0 sp
<< cmd--:======> sw s7 0x1cc sp
<< cmd--:======> sw s9 0x1c4 sp
<< cmd--:======> sw s11 0x1bc sp
<< cmd--:======> addi s10 a0 0x0
<< cmd--:======> jal ra 0x6a78
<< cmd--:======> addi a0 gp 0x120
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> lw a5 0x0 a0
<< cmd--:======> addi a0 a5 0x0
<< cmd--:======> sw a5 0x30 sp
<< cmd--:======> jal ra -0xe4
<< cmd--:======> andi a5 a0 0x3
<< cmd--:======> addi a4 a0 0x0
<< cmd--:======> bne a5 zero 0x58
<< cmd--:======> lui a3 0x7f7f8
<< cmd--:======> addi a3 a3 -0x81
<< cmd--:======> addi a1 zero -0x1
<< cmd--:======> lw a2 0x0 a4
<< cmd--:======> addi a4 a4 0x4
<< cmd--:======> and a5 a2 a3
<< cmd--:======> add a5 a5 a3
<< cmd--:======> or a5 a5 a2
<< cmd--:======> or a5 a5 a3
<< cmd--:======> beq a5 a1 -0x18
<< cmd--:======> lbu a3 -0x4 a4
<< cmd--:======> lbu a2 -0x3 a4
<< cmd--:======> lbu a5 -0x2 a4
<< cmd--:======> sub a4 a4 a0
<< cmd--:======> beq a3 zero 0x40
<< cmd--:======> beq a2 zero 0x34
<< cmd--:======> addi a0 a4 -0x3
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> sw a0 0x2c sp
<< cmd--:======> sw zero 0xf0 sp
<< cmd--:======> sw zero 0xf4 sp
<< cmd--:======> sw zero 0xf8 sp
<< cmd--:======> sw zero 0xfc sp
<< cmd--:======> beq s10 zero 0xc
<< cmd--:======> lw a4 0x38 s10
<< cmd--:======> beq a4 zero 0x8d0
<< cmd--:======> lh a3 0xc s8
<< cmd--:======> slli a4 a3 0x10
<< cmd--:======> slli a5 a3 0x12
<< cmd--:======> srli a4 a4 0x10
<< cmd--:======> blt a5 zero 0x34
<< cmd--:======> lui a4 0x2
<< cmd--:======> lw a2 0x64 s8
<< cmd--:======> or a4 a3 a4
<< cmd--:======> slli a4 a4 0x10
<< cmd--:======> lui a3 -0x2
<< cmd--:======> srai a4 a4 0x410
<< cmd--:======> addi a3 a3 -0x1
<< cmd--:======> and a3 a2 a3
<< cmd--:======> sh s8 a4 0xc
<< cmd--:======> slli a4 a4 0x10
<< cmd--:======> sw a3 0x64 s8
<< cmd--:======> srli a4 a4 0x10
<< cmd--:======> andi a3 a4 0x8
<< cmd--:======> beq a3 zero 0x2f0
<< cmd--:======> addi a1 s8 0x0
<< cmd--:======> addi a0 s10 0x0
<< cmd--:======> jal ra 0x27d4
<< cmd--:======> lw a5 0x1c0 gp
<< cmd--:======> addi sp sp -0x10
<< cmd--:======> sw s0 0x8 sp
<< cmd--:======> sw s1 0x4 sp
<< cmd--:======> sw ra 0xc sp
<< cmd--:======> addi s1 a0 0x0
<< cmd--:======> addi s0 a1 0x0
<< cmd--:======> beq a5 zero 0xc
<< cmd--:======> lw a4 0x38 a5
<< cmd--:======> beq a4 zero 0xe0
<< cmd--:======> lh a4 0xc s0
<< cmd--:======> slli a5 a4 0x10
<< cmd--:======> andi a3 a4 0x8
<< cmd--:======> srli a5 a5 0x10
<< cmd--:======> beq a3 zero 0x40
<< cmd--:======> andi a3 a5 0x10
<< cmd--:======> beq a3 zero 0xc8
<< cmd--:======> addi a5 zero 0x9
<< cmd--:======> sw a5 0x0 s1
<< cmd--:======> ori a4 a4 0x40
<< cmd--:======> sh s0 a4 0xc
<< cmd--:======> addi a0 zero -0x1
<< cmd--:======> jal zero -0xf4
<< cmd--:======> lw ra 0xc sp
<< cmd--:======> lw s0 0x8 sp
<< cmd--:======> lw s1 0x4 sp
<< cmd--:======> addi sp sp 0x10
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> beq a0 zero 0x8
<< cmd--:======> jal zero 0x21fc
<< cmd--:======> addi a5 zero -0x1
<< cmd--:======> sw a5 0xc sp
<< cmd--:======> jal zero -0x2254
<< cmd--:======> lw ra 0x1ec sp
<< cmd--:======> lw s0 0x1e8 sp
<< cmd--:======> lw a0 0xc sp
<< cmd--:======> lw s1 0x1e4 sp
<< cmd--:======> lw s2 0x1e0 sp
<< cmd--:======> lw s3 0x1dc sp
<< cmd--:======> lw s4 0x1d8 sp
<< cmd--:======> lw s5 0x1d4 sp
<< cmd--:======> lw s6 0x1d0 sp
<< cmd--:======> lw s7 0x1cc sp
<< cmd--:======> lw s8 0x1c8 sp
<< cmd--:======> lw s9 0x1c4 sp
<< cmd--:======> lw s10 0x1c0 sp
<< cmd--:======> lw s11 0x1bc sp
<< cmd--:======> addi sp sp 0x1f0
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> lw ra 0x1c sp
<< cmd--:======> addi sp sp 0x40
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> addi a5 zero 0x0
<< cmd--:======> addi a0 a5 0x0
<< cmd--:======> lw ra 0x1c sp
<< cmd--:======> lw s0 0x18 sp
<< cmd--:======> addi sp sp 0x20
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> jal zero 0xd0
<< cmd--:======> addi sp sp -0x10
<< cmd--:======> addi a1 zero 0x0
<< cmd--:======> sw s0 0x8 sp
<< cmd--:======> sw ra 0xc sp
<< cmd--:======> addi s0 a0 0x0
<< cmd--:======> jal ra 0x3074
<< cmd--:======> addi sp sp -0x30
<< cmd--:======> sw s4 0x18 sp
<< cmd--:======> lw s4 0x1b8 gp
<< cmd--:======> sw s2 0x20 sp
<< cmd--:======> sw ra 0x2c sp
<< cmd--:======> lw s2 0x148 s4
<< cmd--:======> sw s0 0x28 sp
<< cmd--:======> sw s1 0x24 sp
<< cmd--:======> sw s3 0x1c sp
<< cmd--:======> sw s5 0x14 sp
<< cmd--:======> sw s6 0x10 sp
<< cmd--:======> sw s7 0xc sp
<< cmd--:======> sw s8 0x8 sp
<< cmd--:======> beq s2 zero 0x40
<< cmd--:======> addi s6 a0 0x0
<< cmd--:======> addi s7 a1 0x0
<< cmd--:======> addi s5 zero 0x1
<< cmd--:======> addi s3 zero -0x1
<< cmd--:======> lw s1 0x4 s2
<< cmd--:======> addi s0 s1 -0x1
<< cmd--:======> blt s0 zero 0x24
<< cmd--:======> slli s1 s1 0x2
<< cmd--:======> add s1 s2 s1
<< cmd--:======> beq s7 zero 0x48
<< cmd--:======> lw a5 0x4 s2
<< cmd--:======> lw a3 0x4 s1
<< cmd--:======> addi a5 a5 -0x1
<< cmd--:======> beq a5 s0 0x5c
<< cmd--:======> sw s0 0x4 s2
<< cmd--:======> jal zero -0x58
<< cmd--:======> beq a3 zero -0x50
<< cmd--:======> lw a5 0x188 s2
<< cmd--:======> sll a4 s5 s0
<< cmd--:======> lw s8 0x4 s2
<< cmd--:======> and a5 a4 a5
<< cmd--:======> bne a5 zero 0x24
<< cmd--:======> jalr ra 0x0 a3
<< cmd--:======> addi sp sp -0x10
<< cmd--:======> sw s0 0x8 sp
<< cmd--:======> lui a5 0x26
<< cmd--:======> lui s0 0x26
<< cmd--:======> addi s0 s0 0x5a0
<< cmd--:======> addi a5 a5 0x5a4
<< cmd--:======> sub a5 a5 s0
<< cmd--:======> sw s1 0x4 sp
<< cmd--:======> sw ra 0xc sp
<< cmd--:======> srai s1 a5 0x402
<< cmd--:======> beq s1 zero 0x20
<< cmd--:======> lw ra 0xc sp
<< cmd--:======> lw s0 0x8 sp
<< cmd--:======> lw s1 0x4 sp
<< cmd--:======> addi sp sp 0x10
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> lw a4 0x4 s2
<< cmd--:======> lw a5 0x148 s4
<< cmd--:======> bne a4 s8 0x8
<< cmd--:======> beq s2 a5 -0x78
<< cmd--:======> addi s0 s0 -0x1
<< cmd--:======> addi s1 s1 -0x4
<< cmd--:======> bne s0 s3 -0x14
<< cmd--:======> lw ra 0x2c sp
<< cmd--:======> lw s0 0x28 sp
<< cmd--:======> lw s1 0x24 sp
<< cmd--:======> lw s2 0x20 sp
<< cmd--:======> lw s3 0x1c sp
<< cmd--:======> lw s4 0x18 sp
<< cmd--:======> lw s5 0x14 sp
<< cmd--:======> lw s6 0x10 sp
<< cmd--:======> lw s7 0xc sp
<< cmd--:======> lw s8 0x8 sp
<< cmd--:======> addi sp sp 0x30
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> lw a0 0x1b8 gp
<< cmd--:======> lw a5 0x3c a0
<< cmd--:======> beq a5 zero 0x8
<< cmd--:======> jalr ra 0x0 a5
<< cmd--:======> lui a1 0x1e
<< cmd--:======> addi a1 a1 -0x7a4
<< cmd--:======> jal zero 0xd3c
<< cmd--:======> addi sp sp -0x30
<< cmd--:======> sw s2 0x20 sp
<< cmd--:======> sw s3 0x1c sp
<< cmd--:======> sw s4 0x18 sp
<< cmd--:======> sw s5 0x14 sp
<< cmd--:======> sw s6 0x10 sp
<< cmd--:======> sw s7 0xc sp
<< cmd--:======> sw ra 0x2c sp
<< cmd--:======> sw s0 0x28 sp
<< cmd--:======> sw s1 0x24 sp
<< cmd--:======> addi s5 a0 0x0
<< cmd--:======> addi s7 a1 0x0
<< cmd--:======> addi s6 a0 0x2e0
<< cmd--:======> addi s4 zero 0x0
<< cmd--:======> addi s3 zero 0x1
<< cmd--:======> addi s2 zero -0x1
<< cmd--:======> lw s1 0x4 s6
<< cmd--:======> lw s0 0x8 s6
<< cmd--:======> addi s1 s1 -0x1
<< cmd--:======> blt s1 zero 0x30
<< cmd--:======> lhu a5 0xc s0
<< cmd--:======> addi s1 s1 -0x1
<< cmd--:======> bgeu s3 a5 0x1c
<< cmd--:======> lh a5 0xe s0
<< cmd--:======> addi a1 s0 0x0
<< cmd--:======> addi a0 s5 0x0
<< cmd--:======> beq a5 s2 0xc
<< cmd--:======> jalr ra 0x0 s7
<< cmd--:======> addi sp sp -0x10
<< cmd--:======> sw ra 0xc sp
<< cmd--:======> sw s0 0x8 sp
<< cmd--:======> sw s1 0x4 sp
<< cmd--:======> sw s2 0x0 sp
<< cmd--:======> beq a1 zero 0x20
<< cmd--:======> addi s0 a1 0x0
<< cmd--:======> addi s1 a0 0x0
<< cmd--:======> beq a0 zero 0xc
<< cmd--:======> lw a5 0x38 a0
<< cmd--:======> beq a5 zero 0xb8
<< cmd--:======> lh a5 0xc s0
<< cmd--:======> bne a5 zero 0x24
<< cmd--:======> addi a1 s0 0x0
<< cmd--:======> addi a0 s1 0x0
<< cmd--:======> jal ra -0xa554
<< cmd--:======> lh a5 0xc a1
<< cmd--:======> addi sp sp -0x20
<< cmd--:======> sw s0 0x18 sp
<< cmd--:======> sw s3 0xc sp
<< cmd--:======> sw ra 0x1c sp
<< cmd--:======> sw s1 0x14 sp
<< cmd--:======> sw s2 0x10 sp
<< cmd--:======> andi a3 a5 0x8
<< cmd--:======> addi s0 a1 0x0
<< cmd--:======> addi s3 a0 0x0
<< cmd--:======> bne a3 zero 0x114
<< cmd--:======> lui a4 0x1
<< cmd--:======> addi a4 a4 -0x800
<< cmd--:======> lw a3 0x4 a1
<< cmd--:======> or a5 a5 a4
<< cmd--:======> sh a1 a5 0xc
<< cmd--:======> bge zero a3 0x188
<< cmd--:======> lw a4 0x3c a1
<< cmd--:======> blt zero a4 -0x188
<< cmd--:======> jal zero -0xb4
<< cmd--:======> addi a0 zero 0x0
<< cmd--:======> lw ra 0x1c sp
<< cmd--:======> lw s0 0x18 sp
<< cmd--:======> lw s1 0x14 sp
<< cmd--:======> lw s2 0x10 sp
<< cmd--:======> lw s3 0xc sp
<< cmd--:======> addi sp sp 0x20
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> lw a5 0x2c s0
<< cmd--:======> addi s2 a0 0x0
<< cmd--:======> beq a5 zero 0x14
<< cmd--:======> lw a1 0x1c s0
<< cmd--:======> addi a0 s1 0x0
<< cmd--:======> jalr ra 0x0 a5
<< cmd--:======> lh a1 0xe a1
<< cmd--:======> jal zero 0x4180
<< cmd--:======> addi sp sp -0x10
<< cmd--:======> sw s0 0x8 sp
<< cmd--:======> sw s1 0x4 sp
<< cmd--:======> addi s0 a0 0x0
<< cmd--:======> addi a0 a1 0x0
<< cmd--:======> sw ra 0xc sp
<< cmd--:======> sw zero 0x224 gp
<< cmd--:======> jal ra 0x1dd4
<< cmd--:======> addi sp sp -0x10
<< cmd--:======> sw ra 0xc sp
<< cmd--:======> sw s0 0x8 sp
<< cmd--:======> addi a1 zero 0x0
<< cmd--:======> addi a2 zero 0x0
<< cmd--:======> addi a3 zero 0x0
<< cmd--:======> addi a4 zero 0x0
<< cmd--:======> addi a5 zero 0x0
<< cmd--:======> addi a7 zero 0x39
<< cmd--:======> ecall
<< cmd--:======> addi s0 a0 0x0
<< cmd--:======> blt a0 zero 0x18
<< cmd--:======> lw ra 0xc sp
<< cmd--:======> addi a0 s0 0x0
<< cmd--:======> lw s0 0x8 sp
<< cmd--:======> addi sp sp 0x10
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> addi a5 zero -0x1
<< cmd--:======> beq a0 a5 0x18
<< cmd--:======> lw ra 0xc sp
<< cmd--:======> lw s0 0x8 sp
<< cmd--:======> lw s1 0x4 sp
<< cmd--:======> addi sp sp 0x10
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> blt a0 zero 0x78
<< cmd--:======> lhu a5 0xc s0
<< cmd--:======> andi a5 a5 0x80
<< cmd--:======> bne a5 zero 0x7c
<< cmd--:======> lw a1 0x30 s0
<< cmd--:======> beq a1 zero 0x18
<< cmd--:======> lw a1 0x44 s0
<< cmd--:======> beq a1 zero 0x10
<< cmd--:======> jal ra -0x9f9c
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> sh s0 zero 0xc
<< cmd--:======> jal ra -0x9fa0
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> lw ra 0xc sp
<< cmd--:======> lw s0 0x8 sp
<< cmd--:======> lw s1 0x4 sp
<< cmd--:======> addi a0 s2 0x0
<< cmd--:======> lw s2 0x0 sp
<< cmd--:======> addi sp sp 0x10
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> or s4 s4 a0
<< cmd--:======> addi s0 s0 0x68
<< cmd--:======> bne s1 s2 -0x28
<< cmd--:======> lhu a5 0xc s0
<< cmd--:======> addi s1 s1 -0x1
<< cmd--:======> bgeu s3 a5 0x1c
<< cmd--:======> lh a5 0xe s0
<< cmd--:======> addi a1 s0 0x0
<< cmd--:======> addi a0 s5 0x0
<< cmd--:======> beq a5 s2 0xc
<< cmd--:======> jalr ra 0x0 s7
<< cmd--:======> addi sp sp -0x10
<< cmd--:======> sw ra 0xc sp
<< cmd--:======> sw s0 0x8 sp
<< cmd--:======> sw s1 0x4 sp
<< cmd--:======> sw s2 0x0 sp
<< cmd--:======> beq a1 zero 0x20
<< cmd--:======> addi s0 a1 0x0
<< cmd--:======> addi s1 a0 0x0
<< cmd--:======> beq a0 zero 0xc
<< cmd--:======> lw a5 0x38 a0
<< cmd--:======> beq a5 zero 0xb8
<< cmd--:======> lh a5 0xc s0
<< cmd--:======> bne a5 zero 0x24
<< cmd--:======> addi a1 s0 0x0
<< cmd--:======> addi a0 s1 0x0
<< cmd--:======> jal ra -0xa554
<< cmd--:======> lh a5 0xc a1
<< cmd--:======> addi sp sp -0x20
<< cmd--:======> sw s0 0x18 sp
<< cmd--:======> sw s3 0xc sp
<< cmd--:======> sw ra 0x1c sp
<< cmd--:======> sw s1 0x14 sp
<< cmd--:======> sw s2 0x10 sp
<< cmd--:======> andi a3 a5 0x8
<< cmd--:======> addi s0 a1 0x0
<< cmd--:======> addi s3 a0 0x0
<< cmd--:======> bne a3 zero 0x114
<< cmd--:======> lui a4 0x1
<< cmd--:======> addi a4 a4 -0x800
<< cmd--:======> lw a3 0x4 a1
<< cmd--:======> or a5 a5 a4
<< cmd--:======> sh a1 a5 0xc
<< cmd--:======> bge zero a3 0x188
<< cmd--:======> lw a4 0x3c a1
<< cmd--:======> blt zero a4 -0x188
<< cmd--:======> jal zero -0xb4
<< cmd--:======> addi a0 zero 0x0
<< cmd--:======> lw ra 0x1c sp
<< cmd--:======> lw s0 0x18 sp
<< cmd--:======> lw s1 0x14 sp
<< cmd--:======> lw s2 0x10 sp
<< cmd--:======> lw s3 0xc sp
<< cmd--:======> addi sp sp 0x20
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> lw a5 0x2c s0
<< cmd--:======> addi s2 a0 0x0
<< cmd--:======> beq a5 zero 0x14
<< cmd--:======> lw a1 0x1c s0
<< cmd--:======> addi a0 s1 0x0
<< cmd--:======> jalr ra 0x0 a5
<< cmd--:======> lh a1 0xe a1
<< cmd--:======> jal zero 0x4180
<< cmd--:======> addi sp sp -0x10
<< cmd--:======> sw s0 0x8 sp
<< cmd--:======> sw s1 0x4 sp
<< cmd--:======> addi s0 a0 0x0
<< cmd--:======> addi a0 a1 0x0
<< cmd--:======> sw ra 0xc sp
<< cmd--:======> sw zero 0x224 gp
<< cmd--:======> jal ra 0x1dd4
<< cmd--:======> addi sp sp -0x10
<< cmd--:======> sw ra 0xc sp
<< cmd--:======> sw s0 0x8 sp
<< cmd--:======> addi a1 zero 0x0
<< cmd--:======> addi a2 zero 0x0
<< cmd--:======> addi a3 zero 0x0
<< cmd--:======> addi a4 zero 0x0
<< cmd--:======> addi a5 zero 0x0
<< cmd--:======> addi a7 zero 0x39
<< cmd--:======> ecall
<< cmd--:======> addi s0 a0 0x0
<< cmd--:======> blt a0 zero 0x18
<< cmd--:======> lw ra 0xc sp
<< cmd--:======> addi a0 s0 0x0
<< cmd--:======> lw s0 0x8 sp
<< cmd--:======> addi sp sp 0x10
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> addi a5 zero -0x1
<< cmd--:======> beq a0 a5 0x18
<< cmd--:======> lw ra 0xc sp
<< cmd--:======> lw s0 0x8 sp
<< cmd--:======> lw s1 0x4 sp
<< cmd--:======> addi sp sp 0x10
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> blt a0 zero 0x78
<< cmd--:======> lhu a5 0xc s0
<< cmd--:======> andi a5 a5 0x80
<< cmd--:======> bne a5 zero 0x7c
<< cmd--:======> lw a1 0x30 s0
<< cmd--:======> beq a1 zero 0x18
<< cmd--:======> lw a1 0x44 s0
<< cmd--:======> beq a1 zero 0x10
<< cmd--:======> jal ra -0x9f9c
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> sh s0 zero 0xc
<< cmd--:======> jal ra -0x9fa0
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> lw ra 0xc sp
<< cmd--:======> lw s0 0x8 sp
<< cmd--:======> lw s1 0x4 sp
<< cmd--:======> addi a0 s2 0x0
<< cmd--:======> lw s2 0x0 sp
<< cmd--:======> addi sp sp 0x10
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> or s4 s4 a0
<< cmd--:======> addi s0 s0 0x68
<< cmd--:======> bne s1 s2 -0x28
<< cmd--:======> lhu a5 0xc s0
<< cmd--:======> addi s1 s1 -0x1
<< cmd--:======> bgeu s3 a5 0x1c
<< cmd--:======> lh a5 0xe s0
<< cmd--:======> addi a1 s0 0x0
<< cmd--:======> addi a0 s5 0x0
<< cmd--:======> beq a5 s2 0xc
<< cmd--:======> jalr ra 0x0 s7
<< cmd--:======> addi sp sp -0x10
<< cmd--:======> sw ra 0xc sp
<< cmd--:======> sw s0 0x8 sp
<< cmd--:======> sw s1 0x4 sp
<< cmd--:======> sw s2 0x0 sp
<< cmd--:======> beq a1 zero 0x20
<< cmd--:======> addi s0 a1 0x0
<< cmd--:======> addi s1 a0 0x0
<< cmd--:======> beq a0 zero 0xc
<< cmd--:======> lw a5 0x38 a0
<< cmd--:======> beq a5 zero 0xb8
<< cmd--:======> lh a5 0xc s0
<< cmd--:======> bne a5 zero 0x24
<< cmd--:======> addi a1 s0 0x0
<< cmd--:======> addi a0 s1 0x0
<< cmd--:======> jal ra -0xa554
<< cmd--:======> lh a5 0xc a1
<< cmd--:======> addi sp sp -0x20
<< cmd--:======> sw s0 0x18 sp
<< cmd--:======> sw s3 0xc sp
<< cmd--:======> sw ra 0x1c sp
<< cmd--:======> sw s1 0x14 sp
<< cmd--:======> sw s2 0x10 sp
<< cmd--:======> andi a3 a5 0x8
<< cmd--:======> addi s0 a1 0x0
<< cmd--:======> addi s3 a0 0x0
<< cmd--:======> bne a3 zero 0x114
<< cmd--:======> lui a4 0x1
<< cmd--:======> addi a4 a4 -0x800
<< cmd--:======> lw a3 0x4 a1
<< cmd--:======> or a5 a5 a4
<< cmd--:======> sh a1 a5 0xc
<< cmd--:======> bge zero a3 0x188
<< cmd--:======> lw a4 0x3c a1
<< cmd--:======> blt zero a4 -0x188
<< cmd--:======> jal zero -0xb4
<< cmd--:======> addi a0 zero 0x0
<< cmd--:======> lw ra 0x1c sp
<< cmd--:======> lw s0 0x18 sp
<< cmd--:======> lw s1 0x14 sp
<< cmd--:======> lw s2 0x10 sp
<< cmd--:======> lw s3 0xc sp
<< cmd--:======> addi sp sp 0x20
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> lw a5 0x2c s0
<< cmd--:======> addi s2 a0 0x0
<< cmd--:======> beq a5 zero 0x14
<< cmd--:======> lw a1 0x1c s0
<< cmd--:======> addi a0 s1 0x0
<< cmd--:======> jalr ra 0x0 a5
<< cmd--:======> lh a1 0xe a1
<< cmd--:======> jal zero 0x4180
<< cmd--:======> addi sp sp -0x10
<< cmd--:======> sw s0 0x8 sp
<< cmd--:======> sw s1 0x4 sp
<< cmd--:======> addi s0 a0 0x0
<< cmd--:======> addi a0 a1 0x0
<< cmd--:======> sw ra 0xc sp
<< cmd--:======> sw zero 0x224 gp
<< cmd--:======> jal ra 0x1dd4
<< cmd--:======> addi sp sp -0x10
<< cmd--:======> sw ra 0xc sp
<< cmd--:======> sw s0 0x8 sp
<< cmd--:======> addi a1 zero 0x0
<< cmd--:======> addi a2 zero 0x0
<< cmd--:======> addi a3 zero 0x0
<< cmd--:======> addi a4 zero 0x0
<< cmd--:======> addi a5 zero 0x0
<< cmd--:======> addi a7 zero 0x39
<< cmd--:======> ecall
<< cmd--:======> addi s0 a0 0x0
<< cmd--:======> blt a0 zero 0x18
<< cmd--:======> lw ra 0xc sp
<< cmd--:======> addi a0 s0 0x0
<< cmd--:======> lw s0 0x8 sp
<< cmd--:======> addi sp sp 0x10
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> addi a5 zero -0x1
<< cmd--:======> beq a0 a5 0x18
<< cmd--:======> lw ra 0xc sp
<< cmd--:======> lw s0 0x8 sp
<< cmd--:======> lw s1 0x4 sp
<< cmd--:======> addi sp sp 0x10
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> blt a0 zero 0x78
<< cmd--:======> lhu a5 0xc s0
<< cmd--:======> andi a5 a5 0x80
<< cmd--:======> bne a5 zero 0x7c
<< cmd--:======> lw a1 0x30 s0
<< cmd--:======> beq a1 zero 0x18
<< cmd--:======> lw a1 0x44 s0
<< cmd--:======> beq a1 zero 0x10
<< cmd--:======> jal ra -0x9f9c
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> sh s0 zero 0xc
<< cmd--:======> jal ra -0x9fa0
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> lw ra 0xc sp
<< cmd--:======> lw s0 0x8 sp
<< cmd--:======> lw s1 0x4 sp
<< cmd--:======> addi a0 s2 0x0
<< cmd--:======> lw s2 0x0 sp
<< cmd--:======> addi sp sp 0x10
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> or s4 s4 a0
<< cmd--:======> addi s0 s0 0x68
<< cmd--:======> bne s1 s2 -0x28
<< cmd--:======> lw s6 0x0 s6
<< cmd--:======> bne s6 zero -0x40
<< cmd--:======> lw ra 0x2c sp
<< cmd--:======> lw s0 0x28 sp
<< cmd--:======> lw s1 0x24 sp
<< cmd--:======> lw s2 0x20 sp
<< cmd--:======> lw s3 0x1c sp
<< cmd--:======> lw s5 0x14 sp
<< cmd--:======> lw s6 0x10 sp
<< cmd--:======> lw s7 0xc sp
<< cmd--:======> addi a0 s4 0x0
<< cmd--:======> lw s4 0x18 sp
<< cmd--:======> addi sp sp 0x30
<< cmd--:======> jalr zero 0x0 ra
<< cmd--:======> addi a0 s0 0x0
<< cmd--:======> jal ra 0xf474
<< cmd--:======> addi a1 zero 0x0
<< cmd--:======> addi a2 zero 0x0
<< cmd--:======> addi a3 zero 0x0
<< cmd--:======> addi a4 zero 0x0
<< cmd--:======> addi a5 zero 0x0
<< cmd--:======> addi a7 zero 0x5d
<< cmd--:======> ecall
<< cmd--:======> blt a0 zero 0x8
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
<< cmd--:======> jal zero 0x0
