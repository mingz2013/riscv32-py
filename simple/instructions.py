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
        's0', # 'fp',
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


class Instruction(object):

    def lui(self, rd, imm):
        """
        lui
        """
        log("lui", register_abi(rd), hex(imm))

    def auipc(self, rd, imm):
        """
        auipc
        """
        log("auipc", register_abi(rd), hex(imm))

    def jal(self, rd, imm):
        """

        """
        log("jal", register_abi(rd), hex(imm))

    def jalr(self, rs1, rd, imm):
        """

        """
        log("jalr", register_abi(rs1), register_abi(rd), hex(imm))

    def beq(self, rs1, rs2, imm):
        """

        """
        log("beq", register_abi(rs1), register_abi(rs2), hex(imm))

    def bne(self, rs1, rs2, imm):
        """

        """
        log("bne", register_abi(rs1), register_abi(rs2), hex(imm))

    def blt(self, rs1, rs2, imm):
        """

        """
        log("blt", register_abi(rs1), register_abi(rs2), hex(imm))

    def bge(self, rs1, rs2, imm):
        """

        """
        log("bge", register_abi(rs1), register_abi(rs2), hex(imm))

    def bltu(self, rs1, rs2, imm):
        """

        """
        log("bltu", register_abi(rs1), register_abi(rs2), hex(imm))

    def bgeu(self, rs1, rs2, imm):
        """"""
        log("bgeu", register_abi(rs1), register_abi(rs2), hex(imm))

    def lb(self, rs1, rd, imm):
        """

        """
        log("lb", register_abi(rs1), register_abi(rd), hex(imm))

    def lh(self, rs1, rd, imm):
        """

        """
        log("lh", register_abi(rs1), register_abi(rd), hex(imm))

    def lw(self, rs1, rd, imm):
        """

        """
        log("lw", register_abi(rs1), register_abi(rd), hex(imm))

    def lbu(self, rs1, rd, imm):
        """"""
        log("lbu", register_abi(rs1), register_abi(rd), hex(imm))

    def lhu(self, rs1, rd, imm):
        """"""
        log("lhu", register_abi(rs1), register_abi(rd), hex(imm))

    def sb(self, rs1, rs2, imm):
        """"""
        log("sb", register_abi(rs1), (rs2), hex(imm))

    def sh(self, rs1, rs2, imm):
        """

        """
        log("sh", register_abi(rs1), register_abi(rs2), hex(imm))

    def sw(self, rs1, rs2, imm):
        """"""
        log("sw", register_abi(rs1), register_abi(rs2), hex(imm))

    def addi(self, rs1, rd, imm):
        """

        """
        log("addi", register_abi(rs1), register_abi(rd), hex(imm))

    def slti(self, rs1, rd, imm):
        """"""
        log("slti", register_abi(rs1), register_abi(rd), hex(imm))

    def sltiu(self, rs1, rd, imm):
        """"""
        log("sltiu", register_abi(rs1), register_abi(rd), hex(imm))

    def xori(self, rs1, rd, imm):
        """"""
        log("xori", register_abi(rs1), register_abi(rd), hex(imm))

    def ori(self, rs1, rd, imm):
        """"""
        log("ori", register_abi(rs1), register_abi(rd), hex(imm))

    def andi(self, rs1, rd, imm):
        """"""
        log("andi", register_abi(rs1), register_abi(rd), hex(imm))

    def slli(self, rs1, rd, imm):
        """"""
        log("slli", register_abi(rs1), register_abi(rd), hex(imm))

    def srli(self, rs1, rd):
        """"""
        log("srli", register_abi(rs1), register_abi(rd))

    def srai(self, rs1, rd):
        """"""
        log("srai", register_abi(rs1), register_abi(rd))

    def add(self, rs1, rs2, rd):
        """"""
        log("add", register_abi(rs1), register_abi(rs2), register_abi(rd))

    def sub(self, rs1, rs2, rd):
        """"""
        log("sub", register_abi(rs1), register_abi(rs2), register_abi(rd))

    def sll(self, rs1, rs2, rd):
        """"""
        log("sll", register_abi(rs1), register_abi(rs2), register_abi(rd))

    def slt(self, rs1, rs2, rd):
        """"""
        log("slt", register_abi(rs1), register_abi(rs2), register_abi(rd))

    def sltu(self, rs1, rs2, rd):
        """"""
        log("sltu", register_abi(rs1), register_abi(rs2), register_abi(rd))

    def xor(self, rs1, rs2, rd):
        """"""
        log("xor", register_abi(rs1), register_abi(rs2), register_abi(rd))

    def srl(self, rs1, rs2, rd):
        """"""
        log("srl", register_abi(rs1), register_abi(rs2), register_abi(rd))

    def sra(self, rs1, rs2, rd):
        """"""
        log("sra", register_abi(rs1), register_abi(rs2), register_abi(rd))

    def or_(self, rs1, rs2, rd):
        """"""
        log("or", register_abi(rs1), register_abi(rs2), register_abi(rd))

    def and_(self, rs1, rs2, rd):
        """"""
        log("and", register_abi(rs1), register_abi(rs2), register_abi(rd))

    def fence(self, rs1, rd, fm, pred, succ):
        """"""
        log("fence", register_abi(rs1), register_abi(rd), hex(fm), hex(pred), hex(succ))

    def ecall(self):
        """"""
        log("ecall")

    def ebreak(self):
        """"""
        log("ebreak")


instruction = Instruction()

inst = instruction


def do_r_type(opcode, d):
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
                return inst.add(rs1, rs2, rd)
            if funct7 == 0b0100000:
                return inst.sub(rs1, rs2, rd)
        if funct3 == 0b001:
            if funct7 == 0b0000000:
                return inst.sll(rs1, rs2, rd)
        if funct3 == 0b010:
            if funct7 == 0b0000000:
                return inst.slt(rs1, rs2, rd)
        if funct3 == 0b011:
            if funct7 == 0b0000000:
                return inst.sltu(rs1, rs2, rd)
        if funct3 == 0b100:
            if funct7 == 0b0000000:
                return inst.xor(rs1, rs2, rd)
        if funct3 == 0b101:
            if funct7 == 0b0000000:
                return inst.srl(rs1, rs2, rd)
            if funct7 == 0b0100000:
                return inst.sra(rs1, rs2, rd)
        if funct3 == 0b110:
            if funct7 == 0b0000000:
                return inst.or_(rs1, rs2, rd)
        if funct3 == 0b111:
            if funct7 == 0b0000000:
                return inst.and_(rs1, rs2, rd)

    raise Exception(d)


def do_i_type(opcode, d):
    # log("do_i_type", opcode, d)
    # opcode = d & 0b1111111
    rd = d >> 7 & 0b11111
    funct3 = d >> 12 & 0b111
    rs1 = d >> 15 & 0b11111
    imm_11_0 = d >> 20 & 0b11111111111
    imm = imm_11_0

    if opcode == 0b1100111:
        return inst.jalr(rs1, rd, imm)
    elif opcode == 0b0000011:
        if funct3 == 0b000:
            return inst.lb(rs1, rd, imm)
        elif funct3 == 0b001:
            return inst.lh(rs1, rd, imm)
        elif funct3 == 0b010:
            return inst.lw(rs1, rd, imm)
        elif funct3 == 0b100:
            return inst.lbu(rs1, rd, imm)
        elif funct3 == 0b101:
            return inst.lhu(rs1, rd, imm)
    elif opcode == 0b0010011:
        if funct3 == 0b000:
            return inst.addi(rs1, rd, imm)
        if funct3 == 0b010:
            return inst.slti(rs1, rd, imm)
        if funct3 == 0b011:
            return inst.sltiu(rs1, rd, imm)
        if funct3 == 0b100:
            return inst.xori(rs1, rd, imm)
        if funct3 == 0b110:
            return inst.ori(rs1, rd, imm)
        if funct3 == 0b111:
            return inst.andi(rs1, rd, imm)
        if funct3 == 0b001:
            return inst.slli(rs1, rd, imm)
        if funct3 == 0b101:
            funct7 = imm >> 5
            if funct7 == 0b0000000:
                return inst.srli(rs1, rd)
            elif funct7 == 0b0100000:
                return inst.srai(rs1, rd)
        pass
    elif opcode == 0b0001111:
        fm, pred, succ = imm & 0b1111 << 8, imm & 0b1111 << 4, imm & 0b1111
        return inst.fence(rs1, rd, fm, pred, succ)
    elif opcode == 0b1110011:
        if imm == 0b0:
            return inst.ecall()
        elif imm == 0b1:
            return inst.ebreak()

    raise Exception(d)


def do_s_type(opcode, d):
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
            return inst.sb(rs1, rs2, imm)
        elif funct3 == 0b001:
            return inst.sh(rs1, rs2, imm)
        elif funct3 == 0b010:
            return inst.sw(rs1, rs2, imm)

    raise Exception(d)


def do_b_type(opcode, d):
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
            return inst.beq(rs1, rs2, imm)
        elif funct3 == 0b001:
            return inst.bne(rs1, rs2, imm)
        elif funct3 == 0b100:
            return inst.blt(rs1, rs2, imm)
        elif funct3 == 0b101:
            return inst.bge(rs1, rs2, imm)
        elif funct3 == 0b110:
            return inst.bltu(rs1, rs2, imm)
        elif funct3 == 0b111:
            return inst.bgeu(rs1, rs2, imm)

    raise Exception(d)


def do_u_type(opcode, d):
    # log("do_u_type << ", bin(opcode), d)
    # opcode = d & 0b1111111
    rd = d >> 7 & 0b11111
    imm_31_12 = d >> 12 & 0b1111111111111111111

    imm = imm_31_12

    if opcode == 0b0110111:
        return inst.lui(rd, imm)
    elif opcode == 0b0010111:
        return inst.auipc(rd, imm)

    raise Exception(d)


def do_j_type(opcode, d):
    # log("do_j_type", opcode, d)
    # opcode = d & 0b1111111
    rd = d >> 7 & 0b11111
    imm_20_10_1_11_19_12 = d >> 12 & 0b1111111111111111111

    imm = imm_20_10_1_11_19_12

    if opcode == 0b1101111:
        return inst.jal(rd, imm)

    raise Exception(d)


def do_instruction(d):
    print("do_instruction << ", hex(d), bin(d))
    instructions_map = {
        0b0110111: do_u_type,
        0b0010111: do_u_type,
        0b1101111: do_j_type,
        0b1100111: do_i_type,
        0b1100011: do_b_type,
        0b0000011: do_i_type,
        0b0100011: do_s_type,
        0b0010011: do_i_type,
        0b0110011: do_r_type,
        0b0001111: do_i_type,
        0b1110011: do_i_type,
    }

    opcode = d & 0b1111111
    f = instructions_map.get(opcode)
    assert f, 'opcode error'
    return f(opcode, d)
