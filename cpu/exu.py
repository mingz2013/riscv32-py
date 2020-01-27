# -*- coding: utf-8 -*-
"""
@FileName: exu
@Time: 2020/1/26 13:34
@Author: zhaojm

Module Description

"""


class EXU(object):
    """
    执行单元
    Execution Unit


    译码, 将寄存器索引读出来。
    将操作数从通用寄存器组(Regfile)中读取出来。





    执行, 根据指令的具体操作类型，发射给具体的运算单元进行执行。


    常见的运算单元为以下几种：
    算术逻辑计算单元(Arithmetic Logical Unit, ALU), 主要负责普通逻辑运算，加减法运算和移位运算等基本运算。
    整数乘法单元
    整数除法单元
    浮点运算单元

    """

    def __init__(self, cpu):
        self.cpu = cpu

    def _is_32bit_instruction(self, b):
        """
        32位的指令，验证
        """
        print(b & 0b11)
        if b & 0b11 != 0b11:  # 匹配11
            return False

        print(b & 0b11100)
        if b & 0b11100 == 0b11100:  # 不匹配11100
            return False

        return True

    def instruction_decode(self):
        """
        译码

        """
        ir = self.cpu.register_file.ir

        if ir == 0:
            print("b is 0...")
            raise Exception('b is 0')
            return
        if not self._is_32bit_instruction(ir):
            print('not 32 bit instruction', hex(ir))
            raise Exception("error instruction", bin(ir))

        self.cpu.rv32i.do_instruction(ir)

    def instruction_execute(self):
        """
        执行
        """
