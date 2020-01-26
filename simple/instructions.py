# -*- coding: utf-8 -*-
"""
@FileName: instructions
@Time: 2020/1/26 17:46
@Author: zhaojm

Module Description

"""

# log = print
import sys


def log(*args):
    # f_name = sys._getframe().f_code.co_name
    # f_name = sys._getframe().f_back.f_back.f_code.co_name
    print(*args)


class Instruction(object):

    def lui(self, rd, imm):
        """
        lui
        """
        log("lui", rd, hex(imm))

    def auipc(self, rd, imm):
        """
        auipc
        """
        log("auipc", rd, hex(imm))

    def jal(self, rd, imm):
        """

        """
        log("jal", rd, hex(imm))

    def jalr(self, rs1, rd, imm):
        """

        """
        log("jalr", rs1, rd, hex(imm))

    def beq(self, rs1, rs2, imm):
        """

        """
        log("beq", rs1, rs2, hex(imm))

    def bne(self, rs1, rs2, imm):
        """

        """
        log("bne", rs1, rs2, hex(imm))

    def blt(self, rs1, rs2, imm):
        """

        """
        log("blt", rs1, rs2, hex(imm))

    def bge(self, rs1, rs2, imm):
        """

        """
        log("bge", rs1, rs2, hex(imm))

    def bltu(self, rs1, rs2, imm):
        """

        """
        log("bltu", rs1, rs2, hex(imm))

    def bgeu(self, rs1, rs2, imm):
        """"""
        log("bgeu", rs1, rs2, hex(imm))

    def lb(self, rs1, rd, imm):
        """

        """
        log("lb", rs1, rd, hex(imm))

    def lh(self, rs1, rd, imm):
        """

        """
        log("lh", rs1, rd, hex(imm))

    def lw(self, rs1, rd, imm):
        """

        """
        log("lw", rs1, rd, hex(imm))

    def lbu(self, rs1, rd, imm):
        """"""
        log("lbu", rs1, rd, hex(imm))

    def lhu(self, rs1, rd, imm):
        """"""
        log("lhu", rs1, rd, hex(imm))

    def sb(self, rs1, rs2, imm):
        """"""
        log("sb", rs1, rs2, hex(imm))

    def sh(self, rs1, rs2, imm):
        """

        """
        log("sh", rs1, rs2, hex(imm))

    def sw(self, rs1, rs2, imm):
        """"""
        log("sw", rs1, rs2, hex(imm))

    def addi(self, rs1, rd, imm):
        """

        """
        log("addi", rs1, rd, hex(imm))

    def slti(self, rs1, rd, imm):
        """"""
        log("slti", rs1, rd, hex(imm))

    def sltiu(self, rs1, rd, imm):
        """"""
        log("sltiu", rs1, rd, hex(imm))

    def xori(self, rs1, rd, imm):
        """"""
        log("xori", rs1, rd, hex(imm))

    def ori(self, rs1, rd, imm):
        """"""
        log("ori", rs1, rd, hex(imm))

    def andi(self, rs1, rd, imm):
        """"""
        log("andi", rs1, rd, hex(imm))

    def slli(self, rs1, rd, imm):
        """"""
        log("slli", rs1, rd, hex(imm))

    def srli(self, rs1, rd):
        """"""
        log("srli", rs1, rd)

    def srai(self, rs1, rd):
        """"""
        log("srai", rs1, rd)

    def add(self, rs1, rs2, rd):
        """"""
        log("add", rs1, rs2, rd)

    def sub(self, rs1, rs2, rd):
        """"""
        log("sub", rs1, rs2, rd)

    def sll(self, rs1, rs2, rd):
        """"""
        log("sll", rs1, rs2, rd)

    def slt(self, rs1, rs2, rd):
        """"""
        log("slt", rs1, rs2, rd)

    def sltu(self, rs1, rs2, rd):
        """"""
        log("sltu", rs1, rs2, rd)

    def xor(self, rs1, rs2, rd):
        """"""
        log("xor", rs1, rs2, rd)

    def srl(self, rs1, rs2, rd):
        """"""
        log("srl", rs1, rs2, rd)

    def sra(self, rs1, rs2, rd):
        """"""
        log("sra", rs1, rs2, rd)

    def or_(self, rs1, rs2, rd):
        """"""
        log("or", rs1, rs2, rd)

    def and_(self, rs1, rs2, rd):
        """"""
        log("and", rs1, rs2, rd)

    def fence(self, rs1, rd, fm, pred, succ):
        """"""
        log("fence", rs1, rd, hex(fm), hex(pred), hex(succ))

    def ecall(self):
        """"""
        log("ecall")

    def ebreak(self):
        """"""
        log("ebreak")


instruction = Instruction()

inst = instruction


def do_r_type(opcode, d):
    log("do_r_type << ", bin(opcode), bin(d))
    # opcode = d & 0b1111111
    rd = d & 0b11111 << 7
    funct3 = d >> 12 & 0b111
    rs1 = d >> 15 & 0b11111
    rs2 = d >> 20 & 0b11111
    funct7 = d >> 25 & 0b1111111

    log("do_r_type <<", bin(funct3), bin(funct7))

    if not opcode ^ 0b0110011:
        if not funct3 ^ 0b000:
            if not funct7 ^ 0b0000000:
                return inst.add(rs1, rs2, rd)
            if not funct7 ^ 0b0100000:
                return inst.sub(rs1, rs2, rd)
        if not funct3 ^ 0b001:
            if not funct7 ^ 0b0000000:
                return inst.sll(rs1, rs2, rd)
        if not funct3 ^ 0b010:
            if not funct7 ^ 0b0000000:
                return inst.slt(rs1, rs2, rd)
        if not funct3 ^ 0b011:
            if not funct7 ^ 0b0000000:
                return inst.sltu(rs1, rs2, rd)
        if not funct3 ^ 0b100:
            if not funct7 ^ 0b0000000:
                return inst.xor(rs1, rs2, rd)
        if not funct3 ^ 0b101:
            if not funct7 ^ 0b0000000:
                return inst.srl(rs1, rs2, rd)
            if not funct7 ^ 0b0100000:
                return inst.sra(rs1, rs2, rd)
        if not funct3 ^ 0b110:
            if not funct7 ^ 0b0000000:
                return inst.or_(rs1, rs2, rd)
        if not funct3 ^ 0b111:
            if not funct7 ^ 0b0000000:
                return inst.and_(rs1, rs2, rd)

    raise Exception(d)


def do_i_type(opcode, d):
    log("do_i_type", opcode, d)
    # opcode = d & 0b1111111
    rd = d >> 7 & 0b11111
    funct3 = d >> 12 & 0b111
    rs1 = d >> 15 & 0b11111
    imm_11_0 = d >> 20 & 0b11111111111
    imm = imm_11_0

    if not opcode ^ 0b1100111:
        return inst.jalr(rs1, rd, imm)
    elif not opcode ^ 0b0000011:
        if not funct3 ^ 0b000:
            return inst.lb(rs1, rd, imm)
        elif not funct3 ^ 0b001:
            return inst.lh(rs1, rd, imm)
        elif not funct3 ^ 0b010:
            return inst.lw(rs1, rd, imm)
        elif not funct3 ^ 0b100:
            return inst.lbu(rs1, rd, imm)
        elif not funct3 ^ 0b101:
            return inst.lhu(rs1, rd, imm)
    elif not opcode ^ 0b0010011:
        if not funct3 ^ 0b000:
            return inst.addi(rs1, rd, imm)
        if not funct3 ^ 0b010:
            return inst.slti(rs1, rd, imm)
        if not funct3 ^ 0b011:
            return inst.sltiu(rs1, rd, imm)
        if not funct3 ^ 0b100:
            return inst.xori(rs1, rd, imm)
        if not funct3 ^ 0b110:
            return inst.ori(rs1, rd, imm)
        if not funct3 ^ 0b111:
            return inst.andi(rs1, rd, imm)
        if not funct3 ^ 0b001:
            return inst.slli(rs1, rd, imm)
        if not funct3 ^ 0b101:
            funct7 = imm >> 5
            if not funct7 ^ 0b0000000:
                return inst.srli(rs1, rd)
            elif not funct7 ^ 0b0100000:
                return inst.srai(rs1, rd)
        pass
    elif not opcode ^ 0b0001111:
        fm, pred, succ = imm & 0b1111 << 8, imm & 0b1111 << 4, imm & 0b1111
        return inst.fence(rs1, rd, fm, pred, succ)
    elif not opcode ^ 0b1110011:
        if not imm ^ 0b0:
            return inst.ecall()
        elif not imm ^ 0b1:
            return inst.ebreak()

    raise Exception(d)


def do_s_type(opcode, d):
    log("do_s_type", opcode, d)
    # opcode = d & 0b1111111
    imm_4_0 = d >> 7  & 0b11111
    funct3 = d >> 12 & 0b111
    rs1 = d >> 15 & 0b11111
    rs2 = d >> 20 & 0b11111
    imm_11_5 = d >> 25 & 0b1111111

    imm = imm_11_5 << 5 + imm_4_0
    if not opcode ^ 0b0100011:
        if not funct3 ^ 0b000:
            return inst.sb(rs1, rs2, imm)
        elif not funct3 ^ 0b001:
            return inst.sh(rs1, rs2, imm)
        elif not funct3 ^ 0b010:
            return inst.sw(rs1, rs2, imm)

    raise Exception(d)


def do_b_type(opcode, d):
    log("do_b_type", opcode, d)
    # opcode = d & 0b1111111
    imm_4_1_11 = d >> 7 & 0b11111
    funct3 = d >> 12 & 0b111
    rs1 = d  >> 15 & 0b11111
    rs2 = d >> 20 & 0b11111
    imm_12_10_5 = d>> 25 & 0b1111111

    imm_4_1 = imm_4_1_11 >> 1
    imm_11 = imm_4_1_11 & 0b1
    imm_12 = imm_12_10_5 >> 6
    imm_10_5 = imm_12_10_5 & 0b111111
    imm = imm_4_1 << 1 + imm_11 << 11 + imm_12 << 12 + imm_10_5 << 5

    if not opcode ^ 0b1100011:
        if not funct3 ^ 0b000:
            return inst.beq(rs1, rs2, imm)
        elif not funct3 ^ 0b001:
            return inst.bne(rs1, rs2, imm)
        elif not funct3 ^ 0b100:
            return inst.blt(rs1, rs2, imm)
        elif not funct3 ^ 0b101:
            return inst.bge(rs1, rs2, imm)
        elif not funct3 ^ 0b110:
            return inst.bltu(rs1, rs2, imm)
        elif not funct3 ^ 0b111:
            return inst.bgeu(rs1, rs2, imm)

    raise Exception(d)


def do_u_type(opcode, d):
    log("do_u_type << ", bin(opcode), d)
    # opcode = d & 0b1111111
    rd = d >> 7 & 0b11111
    imm_31_12 = d >> 12 & 0b1111111111111111111

    imm = imm_31_12

    if not opcode ^ 0b0110111:
        return inst.lui(rd, imm)
    elif not opcode ^ 0b0010111:
        return inst.auipc(rd, imm)

    raise Exception(d)


def do_j_type(opcode, d):
    log("do_j_type", opcode, d)
    # opcode = d & 0b1111111
    rd = d >> 7 & 0b11111
    imm_20_10_1_11_19_12 = d >> 12 & 0b1111111111111111111

    imm = imm_20_10_1_11_19_12

    if not opcode ^ 0b1101111:
        return inst.jal(rd, imm)

    raise Exception(d)


def do_instruction(d):
    log("do_instruction << ", hex(d), bin(d))
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

    for k, v in instructions_map.items():
        # print("d & 0b1111111 = ", bin(d & 0b1111111))
        # print("k = ", bin(k))
        # print("d & 0b1111111 ^ k = ", bin(d & 0b1111111 ^ k))
        if not d & 0b1111111 ^ k:
            return v(k, d)

    raise Exception(d)
