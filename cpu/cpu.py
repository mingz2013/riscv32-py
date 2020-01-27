# -*- coding: utf-8 -*-
"""
@FileName: cpu
@Time: 2020/1/26 15:00
@Author: zhaojm

Module Description

"""

from .alu import ALU
from .exu import EXU
from .ifu import IFU
from .lsu import LSU
from .mem import MEM
from .register_file import RegisterFile
from .rv32i import RV32I


def log(*args):
    # f_name = sys._getframe().f_code.co_name
    # f_name = sys._getframe().f_back.f_back.f_code.co_name
    print("", *args)


class CPU(object):
    """
    CPU
    """

    def __init__(self):
        self.register_file = RegisterFile()  # 寄存器组
        self.ifu = IFU(self)  # 取指单元
        self.exu = EXU(self)  # 执行单元
        self.alu = ALU()
        self.lsu = LSU()
        self.mem = MEM(self)  # 内存管理
        self.rv32i = RV32I(self)  # 指令集实现rv32i

    def reset(self):
        self.register_file.reset()

    def run(self):
        """
        执行


        取指，译码，执行，访存，写回

        """
        index = 0
        while True:
            if index > 1100:
                print("index .........break........", index)
                self.mem.print_memory()
                break
            index += 1
            log("count: ", index)
            self.ifu.instruction_fetch()
            self.exu.instruction_decode()
            self.alu.instruction_execute()
