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
        self._pc = 0 # 0x1c  # program counter
        self._ir = 0  # instruction register

        self.reset()

    def reset(self):
        """
        初始化
        """
        eip = 0x10090
        self._pc = eip # 0x1c  # program counter
        self._ir = 0  # instruction register
        self.sp = self.fp = 0x30000 # stack pointer, 栈顶指针, frame pointer 栈底指针


    def __setitem__(self, key, value):
        if key == 0:
            # x0 zero
            # raise Exception("set x0")
            # print()
            return
        self.registers[key] = value
        # self.registers[key] &= 0xffffffff

        # if self.sp > self.fp:
        #     raise Exception("sp > fp", self.sp, self.fp)

    def __getitem__(self, item):
        return self.registers[item]


    @property
    def pc(self):
        return self._pc

    @pc.setter
    def pc(self, i):
        if i < 0:
            raise Exception('pc < 0')
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

    @sp.setter
    def sp(self, i):
        self.registers[2] = i

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

    @fp.setter
    def fp(self, i):
        self.registers[8] = i

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
