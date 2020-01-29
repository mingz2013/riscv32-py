# -*- coding: utf-8 -*-
"""
@FileName: parse
@Time: 2020/1/29 19:17
@Author: zhaojm

Module Description

"""
import struct

from cpu.abi import register_abi


class Parse(object):
    def do_cmd(self, *args):
        """

        :param args:
        :type args:
        :return:
        :rtype:
        """
        print(*args)

    def log(self, *args):
        print(">>>>---->", *args)

    def do_cmd_r_type(self, cmd, rd, rs1, rs2):
        self.log(cmd, register_abi(rd), ",", register_abi(rs1), ",", register_abi(rs2))

    def do_cmd_i_type(self, cmd, rd, imm, rs1):
        self.log(cmd, register_abi(rd), ",", hex(imm), ",", register_abi(rs1))

    def do_cmd_i_type_2(self, cmd, rd, rs1, imm):
        self.log(cmd, register_abi(rd), ",", register_abi(rs1), ",", hex(imm))

    def do_cmd_fence(self, cmd, pred, succ):
        self.log(cmd, hex(pred), ",", hex(succ))

    def do_cmd_ecall(self, cmd):
        self.log(cmd)

    def do_cmd_ebreak(self, cmd):
        self.log(cmd)

    def do_cmd_s_type(self, cmd, rs2, imm, rs1):
        self.log(cmd, register_abi(rs2), ",", hex(imm), ",", register_abi(rs1))

    def do_cmd_b_type(self, cmd, rs1, rs2, imm):
        self.log(cmd, register_abi(rs1), ",", register_abi(rs2), ",", hex(imm))

    def do_cmd_u_type(self, cmd, rd, imm):
        self.log(cmd, register_abi(rd), ",", hex(imm))

    def do_cmd_j_type(self, cmd, rd, imm):
        self.log(cmd, register_abi(rd), ",", hex(imm))

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
                    return self.do_cmd_r_type('add', rd, rs1, rs2)
                if funct7 == 0b0100000:
                    return self.do_cmd_r_type('sub', rd, rs1, rs2)
            if funct3 == 0b001:
                if funct7 == 0b0000000:
                    return self.do_cmd_r_type('sll', rd, rs1, rs2)
            if funct3 == 0b010:
                if funct7 == 0b0000000:
                    return self.do_cmd_r_type('slt', rd, rs1, rs2)
            if funct3 == 0b011:
                if funct7 == 0b0000000:
                    return self.do_cmd_r_type('sltu', rd, rs1, rs2)
            if funct3 == 0b100:
                if funct7 == 0b0000000:
                    return self.do_cmd_r_type('xor', rd, rs1, rs2)
            if funct3 == 0b101:
                if funct7 == 0b0000000:
                    return self.do_cmd_r_type('srl', rd, rs1, rs2)
                if funct7 == 0b0100000:
                    return self.do_cmd_r_type('sra', rd, rs1, rs2)
            if funct3 == 0b110:
                if funct7 == 0b0000000:
                    return self.do_cmd_r_type('or', rd, rs1, rs2)
            if funct3 == 0b111:
                if funct7 == 0b0000000:
                    return self.do_cmd_r_type('and', rd, rs1, rs2)

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
            return self.do_cmd_i_type('jalr', rd, imm, rs1)
        elif opcode == 0b0000011:
            if funct3 == 0b000:
                return self.do_cmd_i_type('lb', rd, imm, rs1)
            elif funct3 == 0b001:
                return self.do_cmd_i_type('lh', rd, imm, rs1)
            elif funct3 == 0b010:
                return self.do_cmd_i_type('lw', rd, imm, rs1)
            elif funct3 == 0b100:
                return self.do_cmd_i_type('lbu', rd, imm, rs1)
            elif funct3 == 0b101:
                return self.do_cmd_i_type('lhu', rd, imm, rs1)
        elif opcode == 0b0010011:
            if funct3 == 0b000:
                return self.do_cmd_i_type_2('addi', rd, rs1, imm)
            if funct3 == 0b010:
                return self.do_cmd_i_type_2('slti', rd, rs1, imm)
            if funct3 == 0b011:
                return self.do_cmd_i_type_2('sltiu', rd, rs1, imm)
            if funct3 == 0b100:
                return self.do_cmd_i_type_2('xori', rd, rs1, imm)
            if funct3 == 0b110:
                return self.do_cmd_i_type_2('ori', rd, rs1, imm)
            if funct3 == 0b111:
                return self.do_cmd_i_type_2('andi', rd, rs1, imm)
            if funct3 == 0b001:
                return self.do_cmd_i_type_2('slli', rd, rs1, imm)
            if funct3 == 0b101:
                funct7 = imm >> 5
                if funct7 == 0b0000000:
                    return self.do_cmd_i_type_2('srli', rd, rs1, imm)
                elif funct7 == 0b0100000:
                    return self.do_cmd_i_type_2('srai', rd, rs1, imm)
            pass
        elif opcode == 0b0001111:
            fm, pred, succ = imm & 0b1111 << 8, imm & 0b1111 << 4, imm & 0b1111
            return self.do_cmd_fence('fence', pred, succ)
        elif opcode == 0b1110011:
            if imm == 0b0:
                return self.do_cmd_ecall('ecall')
            elif imm == 0b1:
                return self.do_cmd_ebreak('ebreak')

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
                return self.do_cmd_s_type('sb', rs2, imm, rs1)
            elif funct3 == 0b001:
                return self.do_cmd_s_type('sh', rs2, imm, rs1)
            elif funct3 == 0b010:
                return self.do_cmd_s_type('sw', rs2, imm, rs1)

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
                return self.do_cmd_b_type('beq', rs1, rs2, imm)
            elif funct3 == 0b001:
                return self.do_cmd_b_type('bne', rs1, rs2, imm)
            elif funct3 == 0b100:
                return self.do_cmd_b_type('blt', rs1, rs2, imm)
            elif funct3 == 0b101:
                return self.do_cmd_b_type('bge', rs1, rs2, imm)
            elif funct3 == 0b110:
                return self.do_cmd_b_type('bltu', rs1, rs2, imm)
            elif funct3 == 0b111:
                return self.do_cmd_b_type('bgeu', rs1, rs2, imm)

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
            return self.do_cmd_u_type('lui', rd, imm)
        elif opcode == 0b0010111:
            return self.do_cmd_u_type('auipc', rd, imm)

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
        # print("imm_20_10_1_11_19_12", bin(imm_20_10_1_11_19_12))
        # imm = imm_20_10_1_11_19_12
        imm_20 = imm_20_10_1_11_19_12 >> 19
        imm_10_1 = imm_20_10_1_11_19_12 >> 9 & 0b1111111111
        imm_11 = imm_20_10_1_11_19_12 >> 8 & 0b1
        imm_19_12 = imm_20_10_1_11_19_12 & 0b11111111

        # print("imm_20 = ", bin(imm_20))
        # print("imm_10_1 = ", bin(imm_10_1))
        # print("imm_11 = ", bin(imm_11))
        # print("imm_19_12 = ", bin(imm_19_12))

        imm = (imm_20 << 20) + (imm_19_12 << 12) + (imm_11 << 11) + (imm_10_1 << 1)
        # print("imm = ", imm)
        # imm >>= 1
        # print("imm = ", imm)

        if opcode == 0b1101111:
            return self.do_cmd_j_type('jal', rd, imm)

        raise Exception(d)

    def do_instruction(self, d):
        """
        入口，解析执行指令
        :param d:
        :type d:
        :return:
        :rtype:
        """
        # print("do_instruction << ", hex(d), bin(d))
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

    def read_file(self):
        with open('../hello/hello.bin', 'rb') as f:
            # index = 20
            count = 0
            while True:
                # while index > 0:
                # index -= 1
                b = f.read(4)
                # print("b:", b)
                if len(b) == 0:
                    print("over....b == 0")
                    break
                # print(type(b), len(b))
                i, = struct.unpack('<i', b)
                # print(i, type(i), bin(i), hex(i))
                # print(type(bin(i)))
                if i == 0:
                    print("i is 0")
                    break
                # parse(i)
                self.do_instruction(i)
                count += 1
                # print("count ...", count)


if __name__ == '__main__':
    p = Parse()
    p.read_file()
