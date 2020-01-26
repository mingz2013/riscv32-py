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
from .register_file import RegisterFile


class CPU(object):
    """
    CPU
    """

    def __init__(self):
        self.registerFile = RegisterFile()
        self.ifu = IFU()
        self.exu = EXU()
        self.alu = ALU()
        self.lsu = LSU()

    def reset(self):
        self.registerFile.reset()

    def run(self):
        """
        执行


        取指，译码，执行，访存，写回

        """
        while True:
            self.ifu.instruction_fetch()
            self.exu.instruction_decode()
            self.alu.instruction_execute()

