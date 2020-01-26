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
    print("cmd--:=>", *args)


def register_abi(r):
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
    def __init__(self, cpu):
        self.cpu = cpu

    def lui(self, rd, imm):
        """
        lui
        """
        log("lui", register_abi(rd), hex(imm))
        self.cpu.registerFile[rd] = imm << 12

    def auipc(self, rd, imm):
        """
        auipc
        """
        log("auipc", register_abi(rd), hex(imm))
        # self.cpu.registerFile.pc += imm << 12
        self.cpu.registerFile[rd] = self.cpu.registerFile.pc + (imm << 12)

    def jal(self, rd, imm):
        """

        """
        log("jal", register_abi(rd), hex(imm))
        self.cpu.registerFile[rd] = self.cpu.registerFile.pc + 4
        self.cpu.registerFile.pc += imm

    def jalr(self, rd, imm, rs1=1):
        """

        """
        log("jalr", register_abi(rd), hex(imm), register_abi(rs1))
        t = self.cpu.registerFile.pc + 4
        self.cpu.registerFile.pc = self.cpu.registerFile[rs1] + imm
        self.cpu.registerFile[rd] = t


    def beq(self, rs1, rs2, imm):
        """

        """
        log("beq", register_abi(rs1), register_abi(rs2), hex(imm))
        if self.cpu.registerFile[rs1] == self.cpu.registerFile[rs2]:
            self.cpu.registerFile.pc += imm

    def bne(self, rs1, rs2, imm):
        """

        """
        log("bne", register_abi(rs1), register_abi(rs2), hex(imm))
        if self.cpu.registerFile[rs1] != self.cpu.registerFile[rs2]:
            self.cpu.registerFile.pc += imm

    def blt(self, rs1, rs2, imm):
        """

        """
        log("blt", register_abi(rs1), register_abi(rs2), hex(imm))
        if self.cpu.registerFile[rs1] < self.cpu.registerFile[rs2]:
            self.cpu.registerFile.pc += imm

    def bge(self, rs1, rs2, imm):
        """

        """
        log("bge", register_abi(rs1), register_abi(rs2), hex(imm))
        if self.cpu.registerFile[rs1] >= self.cpu.registerFile[rs2]:
            self.cpu.registerFile.pc += imm

    def bltu(self, rs1, rs2, imm):
        """

        """
        log("bltu", register_abi(rs1), register_abi(rs2), hex(imm))
        if self.cpu.registerFile[rs1] < self.cpu.registerFile[rs2]:
            self.cpu.registerFile.pc += imm

    def bgeu(self, rs1, rs2, imm):
        """"""
        log("bgeu", register_abi(rs1), register_abi(rs2), hex(imm))
        if self.cpu.registerFile[rs1] >= self.cpu.registerFile[rs2]:
            self.cpu.registerFile.pc += imm

    def lb(self, rd, imm, rs1):
        """

        """
        log("lb", register_abi(rd), hex(imm), register_abi(rs1))
        pc = self.cpu.registerFile[rs1] + imm

        self.cpu.registerFile[rd] = self.cpu.mem.read_byte(pc)

    def lh(self, rd, imm, rs1):
        """

        """
        log("lh", register_abi(rd), hex(imm), register_abi(rs1))
        pc = self.cpu.registerFile[rs1] + imm

        self.cpu.registerFile[rd] = self.cpu.mem.read_byte(pc, 2)

    def lw(self, rd, imm, rs1):
        """

        """
        log("lw", register_abi(rd), hex(imm), register_abi(rs1))
        pc = self.cpu.registerFile[rs1] + imm

        self.cpu.registerFile[rd] = self.cpu.mem.read_byte(pc, 4)

    def lbu(self, rd, imm, rs1):
        """"""
        log("lbu", register_abi(rd), hex(imm), register_abi(rs1))
        pc = self.cpu.registerFile[rs1] + imm

        self.cpu.registerFile[rd] = self.cpu.mem.read_byte(pc, 1)

    def lhu(self, rd, imm, rs1):
        """"""
        log("lhu", register_abi(rd), hex(imm), register_abi(rs1))
        pc = self.cpu.registerFile[rs1] + imm

        self.cpu.registerFile[rd] = self.cpu.mem.read_byte(pc, 2)

    def sb(self, rs2, imm, rs1):
        """"""
        log("sb", register_abi(rs2), hex(imm), register_abi(rs1))
        addr = self.cpu.registerFile[rs1] + imm
        self.cpu.mem.write_byte(addr, rs2 & 0xff)

    def sh(self, rs2, imm, rs1):
        """

        """
        log("sh", register_abi(rs1), register_abi(rs2), hex(imm))
        addr = self.cpu.registerFile[rs1] + imm
        self.cpu.mem.write_byte(addr, rs2 & 0xffff)

    def sw(self, rs1, rs2, imm):
        """"""
        log("sw", register_abi(rs1), register_abi(rs2), hex(imm))
        addr = self.cpu.registerFile[rs1] + imm
        self.cpu.mem.write_byte(addr, rs2 & 0xffffffff)

    def addi(self, rd, rs1, imm):
        """

        """
        log("addi", register_abi(rd), register_abi(rs1), hex(imm))
        self.cpu.registerFile[rd] = self.cpu.registerFile[rs1] + imm

    # def addiw(self, rd, rs1, imm):
    #     log("addiw", register_abi(rd), register_abi(rs1), hex(imm))
    #     self.cpu.registerFile[rd] = self.cpu.registerFile[rs1] + imm
    #
    # def addw(self, rd, rs1, rs2):
    #     log("addw", register_abi(rd), register_abi(rs1), register_abi(rs2))
    #     self.cpu.registerFile[rd] = self.cpu.registerFile[rs1] + self.cpu.registerFile[rs2]
    #

    def slti(self, rd, rs1, imm):
        """"""
        log("slti", register_abi(rd), register_abi(rs1), hex(imm))
        self.cpu.registerFile[rd] = 1 if self.cpu.registerFile[rs1] < imm else 0

    def sltiu(self, rd, rs1, imm):
        """"""
        log("sltiu", register_abi(rd), register_abi(rs1), hex(imm))

    def xori(self, rd, rs1, imm):
        """"""
        log("xori", register_abi(rd), register_abi(rs1), hex(imm))
        self.cpu.registerFile[rd] = self.cpu.registerFile[rs1] ^ imm

    def ori(self, rd, rs1, imm):
        """"""
        log("ori", register_abi(rd), register_abi(rs1), hex(imm))
        self.cpu.registerFile[rd] = self.cpu.registerFile[rs1] | imm

    def andi(self, rd, rs1, imm):
        """"""
        log("andi", register_abi(rd), register_abi(rs1), hex(imm))
        self.cpu.registerFile[rd] = self.cpu.registerFile[rs1] & imm

    def slli(self, rd, rs1, shamt):
        """"""
        log("slli", register_abi(rd), register_abi(rs1), hex(shamt))
        self.cpu.registerFile[rd] = self.cpu.registerFile[rs1] << shamt

    def srli(self, rd, rs1, shamt):
        """"""
        log("srli", register_abi(rd), register_abi(rs1), hex(shamt))
        self.cpu.registerFile[rd] = self.cpu.registerFile[rs1] >> shamt

    def srai(self, rd, rs1, shamt):
        """"""
        log("srai", register_abi(rd), register_abi(rs1), hex(shamt))
        self.cpu.registerFile[rd] = self.cpu.registerFile[rs1] >> shamt

    def add(self, rd, rs1, rs2):
        """"""
        log("add", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.registerFile[rd] = self.cpu.registerFile[rs1] + self.cpu.registerFile[rs2]

    def sub(self, rd, rs1, rs2):
        """"""
        log("sub", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.registerFile[rd] = self.cpu.registerFile[rs1] - self.cpu.registerFile[rs2]

    def sll(self, rd, rs1, rs2):
        """"""
        log("sll", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.registerFile[rd] = self.cpu.registerFile[rs1] << self.cpu.registerFile[rs2]

    def slt(self, rd, rs1, rs2):
        """"""
        log("slt", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.registerFile[rd] = 1 if self.cpu.registerFile[rs1] < self.cpu.registerFile[rs2] else 0

    def sltu(self, rd, rs1, rs2):
        """"""
        log("sltu", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.registerFile[rd] = 1 if self.cpu.registerFile[rs1] < self.cpu.registerFile[rs2] else 0

    def xor(self, rd, rs1, rs2):
        """"""
        log("xor", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.registerFile[rd] = self.cpu.registerFile[rs1] ^ self.cpu.registerFile[rs2]

    def srl(self, rd, rs1, rs2):
        """"""
        log("srl", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.registerFile[rd] = self.cpu.registerFile[rs1] >> self.cpu.registerFile[rs2]

    def sra(self, rd, rs1, rs2):
        """"""
        log("sra", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.registerFile[rd] = self.cpu.registerFile[rs1] >> self.cpu.registerFile[rs2]

    def or_(self, rd, rs1, rs2):
        """"""
        log("or", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.registerFile[rd] = self.cpu.registerFile[rs1] | self.cpu.registerFile[rs2]

    def and_(self, rd, rs1, rs2):
        """"""
        log("and", register_abi(rd), register_abi(rs1), register_abi(rs2))
        self.cpu.registerFile[rd] = self.cpu.registerFile[rs1] & self.cpu.registerFile[rs2]

    def fence(self, pred, succ):
        """"""
        log("fence", hex(pred), hex(succ))
        raise Exception()

    def ecall(self):
        """"""
        log("ecall")
        raise Exception()

    def ebreak(self):
        """"""
        log("ebreak")
        raise Exception()

    # instruction = RV32I()
    #
    # inst = instruction

    def do_r_type(self, opcode, d):
        # log("do_r_type << ", bin(opcode), bin(d))
        # opcode = d & 0b1111111
        rd = d >> 7 & 0b11111
        funct3 = d >> 12 & 0b111
        rs1 = d >> 15 & 0b11111
        rs2 = d >> 20 & 0b11111
        funct7 = d >> 25 & 0b1111111

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
        # log("do_i_type", opcode, d)
        # opcode = d & 0b1111111
        rd = d >> 7 & 0b11111
        funct3 = d >> 12 & 0b111
        rs1 = d >> 15 & 0b11111
        imm_11_0 = d >> 20 & 0b11111111111
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
        # log("do_s_type", opcode, d)
        # opcode = d & 0b1111111
        imm_4_0 = d >> 7 & 0b11111
        funct3 = d >> 12 & 0b111
        rs1 = d >> 15 & 0b11111
        rs2 = d >> 20 & 0b11111
        imm_11_5 = d >> 25 & 0b1111111

        imm = imm_11_5 << 5 + imm_4_0
        if opcode == 0b0100011:
            if funct3 == 0b000:
                return self.sb(rs2, imm, rs1)
            elif funct3 == 0b001:
                return self.sh(rs2, imm, rs1)
            elif funct3 == 0b010:
                return self.sw(rs2, imm, rs1)

        raise Exception(d)

    def do_b_type(self, opcode, d):
        # log("do_b_type", opcode, d)
        # opcode = d & 0b1111111
        imm_4_1_11 = d >> 7 & 0b11111
        funct3 = d >> 12 & 0b111
        rs1 = d >> 15 & 0b11111
        rs2 = d >> 20 & 0b11111
        imm_12_10_5 = d >> 25 & 0b1111111

        imm_4_1 = imm_4_1_11 >> 1
        imm_11 = imm_4_1_11 & 0b1
        imm_12 = imm_12_10_5 >> 6
        imm_10_5 = imm_12_10_5 & 0b111111
        imm = imm_4_1 << 1 + imm_11 << 11 + imm_12 << 12 + imm_10_5 << 5

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
        # log("do_u_type << ", bin(opcode), d)
        # opcode = d & 0b1111111
        rd = d >> 7 & 0b11111
        imm_31_12 = d >> 12 & 0b1111111111111111111

        imm = imm_31_12

        if opcode == 0b0110111:
            return self.lui(rd, imm)
        elif opcode == 0b0010111:
            return self.auipc(rd, imm)

        raise Exception(d)

    def do_j_type(self, opcode, d):
        # log("do_j_type", opcode, d)
        # opcode = d & 0b1111111
        rd = d >> 7 & 0b11111
        imm_20_10_1_11_19_12 = d >> 12 & 0b1111111111111111111

        # imm = imm_20_10_1_11_19_12
        imm_20 = imm_20_10_1_11_19_12 >> 19 & 0b1
        imm_10_1 = imm_20_10_1_11_19_12 >> 9 & 0b1111111111
        imm_11 = imm_20_10_1_11_19_12 >> 8 & 0b1
        imm_19_12 = imm_20_10_1_11_19_12 & 0b11111111

        imm = imm_20 << 20 + imm_19_12 << 12 + imm_11 << 11 + imm_10_1 << 1
        imm >>= 1

        if opcode == 0b1101111:
            return self.jal(rd, imm)

        raise Exception(d)

    def do_instruction(self, d):
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
