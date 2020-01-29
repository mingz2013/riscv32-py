# -*- coding: utf-8 -*-
"""
@FileName: instructions
@Time: 2020/1/26 17:46
@Author: zhaojm

Module Description

"""


# log = print


def log(*args):
    # f_name = sys._getframe().f_code.co_name
    # f_name = sys._getframe().f_back.f_back.f_code.co_name
    print("<< cmd--:======>", *args)


def register_abi(r):
    """
    abi 翻译
    :param r:
    :type r:
    :return:
    :rtype:
    """
    _register_abi = [
        'zero',
        'ra',
        'sp',
        'gp',
        'tp',
        't0',
        't1',
        't2',
        's0',  # 'fp',
        's1',
        'a0',
        'a1',
        'a2',
        'a3',
        'a4',
        'a5',
        'a6',
        'a7',
        's2',
        's3',
        's4',
        's5',
        's6',
        's7',
        's8',
        's9',
        's10',
        's11',
        't3',
        't4',
        't5',
        't6'
    ]
    return _register_abi[r]


class RV32I(object):
    """
    rv32i 指令实现
    """

    def __init__(self, cpu):
        self.cpu = cpu

    def lui(self, rd, imm):
        """
        lui

        高位立即数加载 (Load Upper Immediate). U-type, RV32I and RV64I.
        将符号位扩展的 20 位立即数 immediate 左移 12 位，并将低 12 位置零，写入 x[rd]中。

        x[rd] = sext(immediate[31:12] << 12)

        """
        log("lui", register_abi(rd), hex(imm))
        self.cpu.register_file[rd] = imm << 12

    def auipc(self, rd, imm):
        """
        auipc

        PC 加立即数 (Add Upper Immediate to PC). U-type, RV32I and RV64I.
        把符号位扩展的 20 位(左移 12 位)立即数加到 pc 上，结果写入 x[rd]。

        x[rd] = pc + sext(immediate[31:12] << 12)
        """
        log("auipc", register_abi(rd), hex(imm))
        # self.cpu.register_file.pc += imm << 12
        self.cpu.register_file[rd] = self.cpu.register_file.pc - 4 + (imm << 12)

    def jal(self, rd, imm):
        """
        跳转并链接 (Jump and Link). J-type, RV32I and RV64I.
        把下一条指令的地址(pc+4)，然后把 pc 设置为当前值加上符号位扩展的 offset。rd 默认为 x1。 压缩形式:c.joffset; c.jaloffset

        x[rd] = pc+4; pc += sext(offset)

        """
        log("jal", register_abi(rd), hex(imm))
        print("jal, ..pc", hex(self.cpu.register_file.pc))
        self.cpu.register_file[rd] = self.cpu.register_file.pc  # + 4
        self.cpu.register_file.pc += imm - 4  # 这里-4，是因为pc 加了4，自动加了4, 需要优化
        print("jal", "<jump>>------->>", "pc", hex(self.cpu.register_file.pc))

    def jalr(self, rd, imm, rs1=1):
        """
        jalr rd, offset(rs1)

        t =pc+4; pc=(x[rs1]+sext(offset))&~1; x[rd]=t

        跳转并寄存器链接 (Jump and Link Register). I-type, RV32I and RV64I.
        把 pc 设置为 x[rs1] + sign-extend(offset)，把计算出的地址的最低有效位设为 0，并将原 pc+4 的值写入 f[rd]。rd 默认为 x1。

        压缩形式:c.jrrs1; c.jalrrs1

        """
        log("jalr", register_abi(rd), hex(imm), register_abi(rs1))

        t = self.cpu.register_file.pc  # + 4

        print("jalr", "rs1:", hex(self.cpu.register_file[rs1]), ", imm:", hex(imm))

        self.cpu.register_file.pc = (self.cpu.register_file[rs1] + imm) & ~1

        print("jalr", "<jump>>------->>", "pc", hex(self.cpu.register_file.pc))

        self.cpu.register_file[rd] = t

    def beq(self, rs1, rs2, imm):
        """
        相等时分支 (Branch if Equal). B-type, RV32I and RV64I.
        若寄存器 x[rs1]和寄存器 x[rs2]的值相等，把 pc 的值设为当前值加上符号位扩展的偏移 offset。 压缩形式:c.beqz rs1, offset

        if (rs1 == rs2) pc += sext(offset)
        """
        log("beq", register_abi(rs1), register_abi(rs2), hex(imm))

        if self.cpu.register_file[rs1] == self.cpu.register_file[rs2]:
            self.cpu.register_file.pc += imm - 4
            print("beq", "<jump>>------->>", "pc", hex(self.cpu.register_file.pc))

    def bne(self, rs1, rs2, imm):
        """
        不相等时分支 (Branch if Not Equal). B-type, RV32I and RV64I.
        若寄存器 x[rs1]和寄存器 x[rs2]的值不相等，把 pc 的值设为当前值加上符号位扩展的偏移 offset。
        压缩形式:c.bnez rs1, offset

        if (rs1 ≠ rs2) pc += sext(offset)

        """
        log("bne", register_abi(rs1), register_abi(rs2), hex(imm))

        if self.cpu.register_file[rs1] != self.cpu.register_file[rs2]:
            self.cpu.register_file.pc += imm - 4
            print("bne", "<jump>>------->>", "pc", hex(self.cpu.register_file.pc))

    def blt(self, rs1, rs2, imm):
        """
        小于时分支 (Branch if Less Than). B-type, RV32I and RV64I.
        若寄存器 x[rs1]的值小于寄存器 x[rs2]的值(均视为二进制补码)，把 pc 的值设为当前值加 上符号位扩展的偏移 offset。

        if (rs1 <s rs2) pc += sext(offset)

        """
        log("blt", register_abi(rs1), register_abi(rs2), hex(imm))

        if self.cpu.register_file[rs1] < self.cpu.register_file[rs2]:
            self.cpu.register_file.pc += imm - 4
            print("blt", "<jump>>------->>", "pc", hex(self.cpu.register_file.pc))

    def bge(self, rs1, rs2, imm):
        """
        大于等于时分支 (Branch if Greater Than or Equal). B-type, RV32I and RV64I.
        若寄存器 x[rs1]的值大于等于寄存器 x[rs2]的值(均视为二进制补码)，把 pc 的值设为当前 值加上符号位扩展的偏移 offset。

        if (rs1 ≥s rs2) pc += sext(offset)
        """

        log("bge", register_abi(rs1), register_abi(rs2), hex(imm))
        if self.cpu.register_file[rs1] >= self.cpu.register_file[rs2]:
            self.cpu.register_file.pc += imm - 4
            print("bge", "<jump>>------->>", "pc", hex(self.cpu.register_file.pc))

    def bltu(self, rs1, rs2, imm):
        """
        无符号小于时分支 (Branch if Less Than, Unsigned). B-type, RV32I and RV64I.
        若寄存器 x[rs1]的值小于寄存器 x[rs2]的值(均视为无符号数)，把 pc 的值设为当前值加上 符号位扩展的偏移 offset。

        if (rs1 <u rs2) pc += sext(offset)

        """
        log("bltu", register_abi(rs1), register_abi(rs2), hex(imm))
        if self.cpu.register_file[rs1] < self.cpu.register_file[rs2]:
            self.cpu.register_file.pc += imm - 4
            print("bltu", "<jump>>------->>", "pc", hex(self.cpu.register_file.pc))

    def bgeu(self, rs1, rs2, imm):
        """
        无符号大于等于时分支 (BranchifGreaterThanorEqual,Unsigned).B-type,RV32IandRV64I.
        若寄存器 x[rs1]的值大于等于寄存器 x[rs2]的值(均视为无符号数)，把 pc 的值设为当前值 加上符号位扩展的偏移 offset。



        if (rs1 ≥u rs2) pc += sext(offset)

        """
        log("bgeu", register_abi(rs1), register_abi(rs2), hex(imm))

        if self.cpu.register_file[rs1] >= self.cpu.register_file[rs2]:
            self.cpu.register_file.pc += imm - 4
            print("bgeu", "<jump>>------->>", "pc", hex(self.cpu.register_file.pc))

    def lb(self, rd, imm, rs1):
        """
        字节加载 (Load Byte). I-type, RV32I and RV64I.
        从地址 x[rs1] + sign-extend(offset)读取一个字节，经符号位扩展后写入 x[rd]。

        x[rd] = sext(M[x[rs1] + sext(offset)][7:0])

        """
        log("lb", register_abi(rd), hex(imm), register_abi(rs1))
        pc = self.cpu.register_file[rs1] + imm

        self.cpu.register_file[rd] = self.cpu.mem.read_byte(pc)

    def lh(self, rd, imm, rs1):
        """
        半字加载 (Load Halfword). I-type, RV32I and RV64I.
        从地址 x[rs1] + sign-extend(offset)读取两个字节，经符号位扩展后写入 x[rd]。


        x[rd] = sext(M[x[rs1] + sext(offset)][15:0])
        """
        log("lh", register_abi(rd), hex(imm), register_abi(rs1))
        pc = self.cpu.register_file[rs1] + imm

        self.cpu.register_file[rd] = self.cpu.mem.read_byte(pc, 2)

    def lw(self, rd, imm, rs1):
        """
        字加载 (Load Word). I-type, RV32I and RV64I.
        从地址 x[rs1] + sign-extend(offset)读取四个字节，写入 x[rd]。对于 RV64I，结果要进行符号 位扩展。
        压缩形式:c.lwsp rd, offset;c.lw rd, offset(rs1)


        x[rd] = sext(M[x[rs1] + sext(offset)][31:0])

        """
        log("lw", register_abi(rd), hex(imm), register_abi(rs1))
        pc = self.cpu.register_file[rs1] + imm

        print("lw", "pc", hex(pc), ", rs1", hex(self.cpu.register_file[rs1]), ", imm", hex(imm))

        self.cpu.register_file[rd] = self.cpu.mem.read_byte(pc, 4)

    def lbu(self, rd, imm, rs1):
        """
        无符号字节加载 (Load Byte, Unsigned). I-type, RV32I and RV64I.
        从地址 x[rs1] + sign-extend(offset)读取一个字节，经零扩展后写入 x[rd]。

        x[rd] = M[x[rs1] + sext(offset)][7:0]
        """
        log("lbu", register_abi(rd), hex(imm), register_abi(rs1))
        pc = self.cpu.register_file[rs1] + imm

        self.cpu.register_file[rd] = self.cpu.mem.read_byte(pc, 1)

    def lhu(self, rd, imm, rs1):
        """
        无符号半字加载 (Load Halfword, Unsigned). I-type, RV32I and RV64I.
        从地址 x[rs1] + sign-extend(offset)读取两个字节，经零扩展后写入 x[rd]。

        x[rd] = M[x[rs1] + sext(offset)][15:0]

        """
        log("lhu", register_abi(rd), hex(imm), register_abi(rs1))
        pc = self.cpu.register_file[rs1] + imm

        self.cpu.register_file[rd] = self.cpu.mem.read_byte(pc, 2)

    def sb(self, rs2, imm, rs1):
        """
        sb rs2, offset(rs1)

        M[x[rs1] + sext(offset) = x[rs2][7: 0]

        存字节(Store Byte). S-type, RV32I and RV64I.
        将 x[rs2]的低位字节存入内存地址 x[rs1]+sign-extend(offset)。

        """
        log("sb", register_abi(rs2), hex(imm), register_abi(rs1))
        addr = self.cpu.register_file[rs1] + imm

        v = self.cpu.register_file[rs2] & 0xff
        self.cpu.mem.write_byte(addr, v)

    def sh(self, rs2, imm, rs1):
        """
        sh rs2, offset(rs1)
        M[x[rs1] + sext(offset) = x[rs2][15: 0]
        存半字(Store Halfword). S-type, RV32I and RV64I.
        将 x[rs2]的低位 2 个字节存入内存地址 x[rs1]+sign-extend(offset)。

        """
        log("sh", register_abi(rs1), register_abi(rs2), hex(imm))
        addr = self.cpu.register_file[rs1] + imm

        v = self.cpu.register_file[rs2] & 0xffff
        self.cpu.mem.write_byte(addr, v)

    def sw(self, rs2, imm, rs1):
        """
        sw rs2, offset(rs1)
        存字(Store Word). S-type, RV32I and RV64I.
        将 x[rs2]的低位 4 个字节存入内存地址 x[rs1]+sign-extend(offset)。
        压缩形式:c.swsp rs2, offset; c.sw rs2, offset(rs1)

        M[x[rs1] + sext(offset)] = x[rs2][31: 0]
        """
        log("sw", register_abi(rs2), hex(imm), register_abi(rs1))

        addr = self.cpu.register_file[rs1] + imm

        v = self.cpu.register_file[rs2]

        print("sw", "addr:", hex(addr), ", rs1:", hex(v), ", imm:", hex(imm))

        self.cpu.mem.write_byte(addr, v)

    def addi(self, rd, rs1, imm):
        """
        加立即数(Add Immediate). I-type, RV32I and RV64I.
        把符号位扩展的立即数加到寄存器 x[rs1]上，结果写入 x[rd]。忽略算术溢出。
        压缩形式:c.li rd, imm; c.addi rd, imm; c.addi16sp imm; c.addi4spn rd, imm


        x[rd] = x[rs1] + sext(immediate)

        """
        log("addi", register_abi(rd), register_abi(rs1), hex(imm))

        print("addi", "rs1:", hex(self.cpu.register_file[rs1]), ", imm:", hex(imm))

        self.cpu.register_file[rd] = self.cpu.register_file[rs1] + imm

    # def addiw(self, rd, rs1, imm):
    #     log("addiw", register_abi(rd), register_abi(rs1), hex(imm))
    #     self.cpu.register_file[rd] = self.cpu.register_file[rs1] + imm
    #
    # def addw(self, rd, rs1, rs2):
    #     log("addw", register_abi(rd), register_abi(rs1), register_abi(rs2))
    #     self.cpu.register_file[rd] = self.cpu.register_file[rs1] + self.cpu.register_file[rs2]
    #

    def slti(self, rd, rs1, imm):
        """
        slti rd, rs1, immediate
        小于立即数则置位(Set if Less Than Immediate). I-type, RV32I and RV64I.
        比较 x[rs1]和有符号扩展的 immediate，如果 x[rs1]更小，向 x[rd]写入 1，否则写入 0。

        x[rd] = (x[rs1] <𝑠 sext(immediate))

        """
        log("slti", register_abi(rd), register_abi(rs1), hex(imm))
        self.cpu.register_file[rd] = 1 if self.cpu.register_file[rs1] < imm else 0

    def sltiu(self, rd, rs1, imm):
        """
        sltiu rd, rs1, immediate
        无符号小于立即数则置位(Set if Less Than Immediate, Unsigned). I-type, RV32I and RV64I.
        比较 x[rs1]和有符号扩展的 immediate，比较时视为无符号数。如果 x[rs1]更小，向 x[rd]写入 1，否则写入 0。

        x[rd] = (x[rs1] <𝑢 sext(immediate))

        """
        log("sltiu", register_abi(rd), register_abi(rs1), hex(imm))
        self.cpu.register_file[rd] = 1 if self.cpu.register_file[rs1] < imm else 0

    def xori(self, rd, rs1, imm):
        """
        xori rd, rs1, immediate
        立即数异或(Exclusive-OR Immediate). I-type, RV32I and RV64I.
        x[rs1]和有符号扩展的 immediate 按位异或，结果写入 x[rd]。 压缩形式:c.xor rd, rs2

        x[rd] = x[rs1] ^ sext(immediate)
        """
        log("xori", register_abi(rd), register_abi(rs1), hex(imm))
        self.cpu.register_file[rd] = self.cpu.register_file[rs1] ^ imm

    def ori(self, rd, rs1, imm):
        """"""
        log("ori", register_abi(rd), register_abi(rs1), hex(imm))
        self.cpu.register_file[rd] = self.cpu.register_file[rs1] | imm

    def andi(self, rd, rs1, imm):
        """
        与立即数 (And Immediate). I-type, RV32I and RV64I.
        把符号位扩展的立即数和寄存器 x[rs1]上的值进行位与，结果写入 x[rd]。
        压缩形式:c.andi rd, imm

        x[rd] = x[rs1] & sext(immediate)

        """
        log("andi", register_abi(rd), register_abi(rs1), hex(imm))
        self.cpu.register_file[rd] = self.cpu.register_file[rs1] & imm

    def slli(self, rd, rs1, shamt):
        """
        slli rd, rs1, shamt
        立即数逻辑左移(Shift Left Logical Immediate). I-type, RV32I and RV64I.
        把寄存器 x[rs1]左移 shamt 位，空出的位置填入 0，结果写入 x[rd]。对于 RV32I，仅当 shamt[5]=0 时，指令才是有效的。
        压缩形式:c.slli rd, shamt




        x[rd] = x[rs1] ≪ shamt

        """
        log("slli", register_abi(rd), register_abi(rs1), hex(shamt))
        self.cpu.register_file[rd] = self.cpu.register_file[rs1] << shamt

    def srli(self, rd, rs1, shamt):
        """
        srli rd, rs1, shamt
        立即数逻辑右移(Shift Right Logical Immediate). I-type, RV32I and RV64I.
        把寄存器 x[rs1]右移 shamt 位，空出的位置填入 0，结果写入 x[rd]。对于 RV32I，仅当 shamt[5]=0 时，指令才是有效的。
        压缩形式:c.srli rd, shamt

        x[rd] = (x[rs1] ≫𝑢 shamt)

        """
        log("srli", register_abi(rd), register_abi(rs1), hex(shamt))
        self.cpu.register_file[rd] = self.cpu.register_file[rs1] >> shamt

    def srai(self, rd, rs1, shamt):
        """
        srai rd, rs1, shamt

        立即数算术右移(Shift Right Arithmetic Immediate). I-type, RV32I and RV64I.
        把寄存器 x[rs1]右移 shamt 位，空位用 x[rs1]的最高位填充，结果写入 x[rd]。对于 RV32I， 仅当 shamt[5]=0 时指令有效。
        压缩形式:c.srai rd, shamt

        x[rd] = (x[rs1] ≫𝑠 shamt)

        """
        log("srai", register_abi(rd), register_abi(rs1), hex(shamt))
        self.cpu.register_file[rd] = self.cpu.register_file[rs1] >> shamt

    def add(self, rd, rs1, rs2):
        """
        加 (Add). R-type, RV32I and RV64I.
        把寄存器 x[rs2]加到寄存器 x[rs1]上，结果写入 x[rd]。忽略算术溢出。
        压缩形式:c.add rd, rs2; c.mv rd, rs2

        x[rd] = x[rs1] + x[rs2]

        """
        log("add", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.register_file[rd] = self.cpu.register_file[rs1] + self.cpu.register_file[rs2]

    def sub(self, rd, rs1, rs2):
        """
        sub rd, rs1, rs2
        减(Substract). R-type, RV32I and RV64I.
        x[rs1]减去 x[rs2]，结果写入 x[rd]。忽略算术溢出。 压缩形式:c.sub rd, rs2

        x[rd] = x[rs1] − x[rs2]
        """
        log("sub", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.register_file[rd] = self.cpu.register_file[rs1] - self.cpu.register_file[rs2]

    def sll(self, rd, rs1, rs2):
        """
        sll rd, rs1, rs2
        逻辑左移(Shift Left Logical). R-type, RV32I and RV64I.
        把寄存器 x[rs1]左移 x[rs2]位，空出的位置填入 0，结果写入 x[rd]。
        x[rs2]的低 5 位(如果是 RV64I 则是低 6 位)代表移动位数，其高位则被忽略。

        x[rd] = x[rs1] ≪ x[rs2]
        """
        log("sll", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.register_file[rd] = self.cpu.register_file[rs1] << self.cpu.register_file[rs2]

    def slt(self, rd, rs1, rs2):
        """

        slt rd, rs1, rs2
        小于则置位(Set if Less Than). R-type, RV32I and RV64I.
        比较 x[rs1]和 x[rs2]中的数，如果 x[rs1]更小，向 x[rd]写入 1，否则写入 0。

        x[rd] = (x[rs1] <𝑠 x[rs2])
        """
        log("slt", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.register_file[rd] = 1 if self.cpu.register_file[rs1] < self.cpu.register_file[rs2] else 0

    def sltu(self, rd, rs1, rs2):
        """

        sltu rd, rs1, rs2
        无符号小于则置位(Set if Less Than, Unsigned). R-type, RV32I and RV64I.
        比较 x[rs1]和 x[rs2]，比较时视为无符号数。如果 x[rs1]更小，向 x[rd]写入 1，否则写入 0。


        x[rd] = (x[rs1] <𝑢 x[rs2])

        """
        log("sltu", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.register_file[rd] = 1 if self.cpu.register_file[rs1] < self.cpu.register_file[rs2] else 0

    def xor(self, rd, rs1, rs2):
        """
        xor rd, rs1, rs2
        异或(Exclusive-OR). R-type, RV32I and RV64I. x[rs1]和 x[rs2]按位异或，结果写入 x[rd]。
        压缩形式:c.xor rd, rs2

        x[rd] = x[rs1] ^ x[rs2]

        """
        log("xor", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.register_file[rd] = self.cpu.register_file[rs1] ^ self.cpu.register_file[rs2]

    def srl(self, rd, rs1, rs2):
        """
        srl rd, rs1, rs2
        逻辑右移(Shift Right Logical). R-type, RV32I and RV64I.
        把寄存器 x[rs1]右移 x[rs2]位，空出的位置填入 0，结果写入 x[rd]。
        x[rs2]的低 5 位(如果是 RV64I 则是低 6 位)代表移动位数，其高位则被忽略。

        x[rd] = (x[rs1] ≫𝑢 x[rs2])

        """
        log("srl", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.register_file[rd] = self.cpu.register_file[rs1] >> self.cpu.register_file[rs2]

    def sra(self, rd, rs1, rs2):
        """
        sra rd, rs1, rs2
        x[rd] = (x[rs1] ≫𝑠 x[rs2])
        算术右移(Shift Right Arithmetic). R-type, RV32I and RV64I.
        把寄存器 x[rs1]右移 x[rs2]位，空位用 x[rs1]的最高位填充，结果写入 x[rd]。
        x[rs2]的低 5 位 (如果是 RV64I 则是低 6 位)为移动位数，高位则被忽略。

        """
        log("sra", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.register_file[rd] = self.cpu.register_file[rs1] >> self.cpu.register_file[rs2]

    def or_(self, rd, rs1, rs2):
        """

        取或(OR). R-type, RV32I and RV64I.
        把寄存器 x[rs1]和寄存器 x[rs2]按位取或，结果写入 x[rd]。
        压缩形式:c.or rd, rs2

        x[rd] = x[rs1] | 𝑥[𝑟𝑠2]

        """
        log("or", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.register_file[rd] = self.cpu.register_file[rs1] | self.cpu.register_file[rs2]

    def and_(self, rd, rs1, rs2):
        """
        与 (And). R-type, RV32I and RV64I.
        将寄存器 x[rs1]和寄存器 x[rs2]位与的结果写入 x[rd]。
        压缩形式:c.and rd, rs2

        x[rd] = x[rs1] & x[rs2]
        """
        log("and", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.register_file[rd] = self.cpu.register_file[rs1] & self.cpu.register_file[rs2]

    def fence(self, pred, succ):
        """
        同步内存和 I/O(Fence Memory and I/O). I-type, RV32I and RV64I.
        在后续指令中的内存和 I/O 访问对外部(例如其他线程)可见之前，使这条指令之前的内存 及 I/O 访问对外部可见。
        比特中的第 3,2,1 和 0 位分别对应于设备输入，设备输出，内存读 写。
        例如 fence r, rw，将前面读取与后面的读取和写入排序，使用 pred = 0010 和 succ = 0011 进行编码。
        如果省略了参数，则表示 fence iorw, iorw，即对所有访存请求进行排序。

        Fence(pred, succ)
        """
        log("fence", hex(pred), hex(succ))
        raise Exception()

    def fence_i(self):
        """"""


    def ecall(self):
        """
        环境调用 (Environment Call). I-type, RV32I and RV64I. 通过引发环境调用异常来请求执行环境。

        RaiseException(EnvironmentCall)

        """
        log("ecall")
        # raise Exception()

    def ebreak(self):
        """
        环境断点 (Environment Breakpoint). I-type, RV32I and RV64I. 通过抛出断点异常的方式请求调试器。

        RaiseException(Breakpoint)

        """
        log("ebreak")
        raise Exception()


    def csrrw(self):
        """"""

    def csrrs(self):
        """"""

    def csrrc(self):
        """"""

    def csrrwi(self):
        """"""

    def csrrsi(self):
        """"""

    def csrrci(self):
        """

        :return:
        :rtype:
        """




    def do_r_type(self, opcode, d):
        """
        r-type指令格式
        :param opcode:
        :type opcode:
        :param d:
        :type d:
        :return:
        :rtype:
        """
        # log("do_r_type << ", bin(opcode), bin(d))
        # opcode = d & 0b1111111
        rd = d >> 7 & 0b11111
        funct3 = d >> 12 & 0b111
        rs1 = d >> 15 & 0b11111
        rs2 = d >> 20 & 0b11111
        funct7 = d >> 25

        # log("do_r_type <<", bin(funct3), bin(funct7))

        if opcode == 0b0110011:
            if funct3 == 0b000:
                if funct7 == 0b0000000:
                    return self.add(rd, rs1, rs2)
                if funct7 == 0b0100000:
                    return self.sub(rd, rs1, rs2)
            if funct3 == 0b001:
                if funct7 == 0b0000000:
                    return self.sll(rd, rs1, rs2)
            if funct3 == 0b010:
                if funct7 == 0b0000000:
                    return self.slt(rd, rs1, rs2)
            if funct3 == 0b011:
                if funct7 == 0b0000000:
                    return self.sltu(rd, rs1, rs2)
            if funct3 == 0b100:
                if funct7 == 0b0000000:
                    return self.xor(rd, rs1, rs2)
            if funct3 == 0b101:
                if funct7 == 0b0000000:
                    return self.srl(rd, rs1, rs2)
                if funct7 == 0b0100000:
                    return self.sra(rd, rs1, rs2)
            if funct3 == 0b110:
                if funct7 == 0b0000000:
                    return self.or_(rd, rs1, rs2)
            if funct3 == 0b111:
                if funct7 == 0b0000000:
                    return self.and_(rd, rs1, rs2)

        raise Exception(d)

    def do_i_type(self, opcode, d):
        """
        i-type指令格式
        :param opcode:
        :type opcode:
        :param d:
        :type d:
        :return:
        :rtype:
        """
        # log("do_i_type", opcode, d)
        # opcode = d & 0b1111111
        rd = d >> 7 & 0b11111
        funct3 = d >> 12 & 0b111
        rs1 = d >> 15 & 0b11111
        imm_11_0 = d >> 20
        imm = imm_11_0

        if opcode == 0b1100111:
            return self.jalr(rd, imm, rs1)
        elif opcode == 0b0000011:
            if funct3 == 0b000:
                return self.lb(rd, imm, rs1)
            elif funct3 == 0b001:
                return self.lh(rd, imm, rs1)
            elif funct3 == 0b010:
                return self.lw(rd, imm, rs1)
            elif funct3 == 0b100:
                return self.lbu(rd, imm, rs1)
            elif funct3 == 0b101:
                return self.lhu(rd, imm, rs1)
        elif opcode == 0b0010011:
            if funct3 == 0b000:
                return self.addi(rd, rs1, imm)
            if funct3 == 0b010:
                return self.slti(rd, rs1, imm)
            if funct3 == 0b011:
                return self.sltiu(rd, rs1, imm)
            if funct3 == 0b100:
                return self.xori(rd, rs1, imm)
            if funct3 == 0b110:
                return self.ori(rd, rs1, imm)
            if funct3 == 0b111:
                return self.andi(rd, rs1, imm)
            if funct3 == 0b001:
                return self.slli(rd, rs1, imm)
            if funct3 == 0b101:
                funct7 = imm >> 5
                if funct7 == 0b0000000:
                    return self.srli(rd, rs1, imm)
                elif funct7 == 0b0100000:
                    return self.srai(rd, rs1, imm)
            pass
        elif opcode == 0b0001111:
            fm, pred, succ = imm & 0b1111 << 8, imm & 0b1111 << 4, imm & 0b1111
            return self.fence(pred, succ)
        elif opcode == 0b1110011:
            if imm == 0b0:
                return self.ecall()
            elif imm == 0b1:
                return self.ebreak()

        raise Exception(d)

    def do_s_type(self, opcode, d):
        """
        s-type指令格式
        :param opcode:
        :type opcode:
        :param d:
        :type d:
        :return:
        :rtype:
        """
        # log("do_s_type", opcode, d)
        # opcode = d & 0b1111111
        imm_4_0 = d >> 7 & 0b11111
        funct3 = d >> 12 & 0b111
        rs1 = d >> 15 & 0b11111
        rs2 = d >> 20 & 0b11111
        imm_11_5 = d >> 25

        imm = (imm_11_5 << 5) + imm_4_0
        if opcode == 0b0100011:
            if funct3 == 0b000:
                return self.sb(rs2, imm, rs1)
            elif funct3 == 0b001:
                return self.sh(rs2, imm, rs1)
            elif funct3 == 0b010:
                return self.sw(rs2, imm, rs1)

        raise Exception(d)

    def do_b_type(self, opcode, d):
        """
        b-type指令格式
        :param opcode:
        :type opcode:
        :param d:
        :type d:
        :return:
        :rtype:
        """
        # log("do_b_type", opcode, d)
        # opcode = d & 0b1111111
        imm_4_1_11 = d >> 7 & 0b11111
        funct3 = d >> 12 & 0b111
        rs1 = d >> 15 & 0b11111
        rs2 = d >> 20 & 0b11111
        imm_12_10_5 = d >> 25

        imm_4_1 = imm_4_1_11 >> 1
        imm_11 = imm_4_1_11 & 0b1
        imm_12 = imm_12_10_5 >> 6
        imm_10_5 = imm_12_10_5 & 0b111111
        imm = (imm_4_1 << 1) + (imm_11 << 11) + (imm_12 << 12) + (imm_10_5 << 5)

        if opcode == 0b1100011:
            if funct3 == 0b000:
                return self.beq(rs1, rs2, imm)
            elif funct3 == 0b001:
                return self.bne(rs1, rs2, imm)
            elif funct3 == 0b100:
                return self.blt(rs1, rs2, imm)
            elif funct3 == 0b101:
                return self.bge(rs1, rs2, imm)
            elif funct3 == 0b110:
                return self.bltu(rs1, rs2, imm)
            elif funct3 == 0b111:
                return self.bgeu(rs1, rs2, imm)

        raise Exception(d)

    def do_u_type(self, opcode, d):
        """
        u-type指令格式
        :param opcode:
        :type opcode:
        :param d:
        :type d:
        :return:
        :rtype:
        """
        # log("do_u_type << ", bin(opcode), d)
        # opcode = d & 0b1111111
        rd = d >> 7 & 0b11111
        imm_31_12 = d >> 12

        imm = imm_31_12

        if opcode == 0b0110111:
            return self.lui(rd, imm)
        elif opcode == 0b0010111:
            return self.auipc(rd, imm)

        raise Exception(d)

    def do_j_type(self, opcode, d):
        """
        j-type指令格式
        :param opcode:
        :type opcode:
        :param d:
        :type d:
        :return:
        :rtype:
        """
        # log("do_j_type", opcode, d)
        # opcode = d & 0b1111111
        rd = d >> 7 & 0b11111
        imm_20_10_1_11_19_12 = d >> 12
        print("imm_20_10_1_11_19_12", bin(imm_20_10_1_11_19_12))
        # imm = imm_20_10_1_11_19_12
        imm_20 = imm_20_10_1_11_19_12 >> 19
        imm_10_1 = imm_20_10_1_11_19_12 >> 9 & 0b1111111111
        imm_11 = imm_20_10_1_11_19_12 >> 8 & 0b1
        imm_19_12 = imm_20_10_1_11_19_12 & 0b11111111

        print("imm_20 = ", bin(imm_20))
        print("imm_10_1 = ", bin(imm_10_1))
        print("imm_11 = ", bin(imm_11))
        print("imm_19_12 = ", bin(imm_19_12))

        imm = (imm_20 << 20) + (imm_19_12 << 12) + (imm_11 << 11) + (imm_10_1 << 1)
        print("imm = ", imm)
        # imm >>= 1
        print("imm = ", imm)

        if opcode == 0b1101111:
            return self.jal(rd, imm)

        raise Exception(d)

    def do_instruction(self, d):
        """
        入口，解析执行指令
        :param d:
        :type d:
        :return:
        :rtype:
        """
        print("do_instruction << ", hex(d), bin(d))
        instructions_map = {
            0b0110111: self.do_u_type,
            0b0010111: self.do_u_type,
            0b1101111: self.do_j_type,
            0b1100111: self.do_i_type,
            0b1100011: self.do_b_type,
            0b0000011: self.do_i_type,
            0b0100011: self.do_s_type,
            0b0010011: self.do_i_type,
            0b0110011: self.do_r_type,
            0b0001111: self.do_i_type,
            0b1110011: self.do_i_type,
        }

        opcode = d & 0b1111111
        f = instructions_map.get(opcode)
        assert f, 'opcode error'
        return f(opcode, d)
