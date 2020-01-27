# -*- coding: utf-8 -*-
"""
@FileName: cpu
@Time: 2020/1/22 20:34
@Author: zhaojm

Module Description

"""


class RegisterFile(object):
    """
    32个寄存器
    """

    def __init__(self):
        self.registers = [0] * 32
        self._pc = 0x1c  # program counter
        self._ir = 0  # instruction register
        self.reset()

    def __setitem__(self, key, value):
        if key == 0:
            # x0 zero
            return
        self.registers[key] = value
        self.registers[key] &= 0xffffffff

    def __getitem__(self, item):
        return self.registers[item]

    def reset(self):
        """
        初始化
        """

    @property
    def pc(self):
        return self._pc

    @pc.setter
    def pc(self, i):
        self._pc = i
        self._pc &= 0xffffffff  # 保留32位

    @property
    def zero(self):
        """
        Hardwired zero
        """
        return self.registers[0]

    @property
    def ra(self):
        """
        Return address
        """
        return self.registers[1]

    @property
    def sp(self):
        """
        Stack pointer
        """
        return self.registers[2]

    @property
    def gp(self):
        """
        Global pointer
        """
        return self.registers[3]

    @property
    def tp(self):
        """
        Thread pointer
        """
        return self.registers[4]

    @property
    def t0(self):
        """
        Temporary
        """
        return self.registers[5]

    @property
    def t1(self):
        """
        Temporary
        """
        return self.registers[6]

    @property
    def t2(self):
        """
        Temporary
        """
        return self.registers[7]

    @property
    def fp(self):
        """
        frame pointer
        """
        return self.registers[8]

    @property
    def s0(self):
        """
        Saved register
        """
        return self.registers[8]

    @property
    def s1(self):
        """
        Saved register
        """
        return self.registers[9]

    @property
    def a0(self):
        """
        Function argument, return value
        """
        return self.registers[10]

    @property
    def a1(self):
        """
        Function argument, return value
        """
        return self.registers[11]

    @property
    def a2(self):
        """
        Function argument
        """
        return self.registers[12]

    @property
    def a3(self):
        """
        Function argument
        """
        return self.registers[13]

    @property
    def a4(self):
        """
        Function argument
        """
        return self.registers[14]

    @property
    def a5(self):
        """
        Function argument
        """
        return self.registers[15]

    @property
    def a6(self):
        """
        Function argument
        """
        return self.registers[16]

    @property
    def a7(self):
        """
        Function argument
        """
        return self.registers[17]

    @property
    def s2(self):
        """
        Saved register
        """
        return self.registers[18]

    @property
    def s3(self):
        """
        Saved register
        """
        return self.registers[19]

    @property
    def s4(self):
        """
        Saved register
        """
        return self.registers[20]

    @property
    def s5(self):
        """
        Saved register
        """
        return self.registers[21]

    @property
    def s6(self):
        """
        Saved register
        """
        return self.registers[22]

    @property
    def s7(self):
        """
        Saved register
        """
        return self.registers[23]

    @property
    def s8(self):
        """
        Saved register
        """
        return self.registers[24]

    @property
    def s9(self):
        """
        Saved register
        """
        return self.registers[25]

    @property
    def s10(self):
        """
        Saved register
        """
        return self.registers[26]

    @property
    def s11(self):
        """
        Saved register
        """
        return self.registers[27]

    @property
    def t3(self):
        """
        Temporary
        """
        return self.registers[28]

    @property
    def t4(self):
        """
        Temporary
        """
        return self.registers[29]

    @property
    def t5(self):
        """
        Temporary
        """
        return self.registers[30]

    @property
    def t6(self):
        """
        Temporary
        """
        return self.registers[31]
