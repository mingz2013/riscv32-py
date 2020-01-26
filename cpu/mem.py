# -*- coding: utf-8 -*-
"""
@FileName: mem
@Time: 2020/1/26 14:37
@Author: zhaojm

Module Description

"""


from memory.memory import Memory


class MEM(object):
    """
    访存, Memory Access

    """
    def __init__(self, cpu):
        self.cpu = cpu
        self.memory = Memory()
        self.memory.load_bin()

    def load_instruction(self, pc):
        """

        """
        return self.memory.load_instruction(pc)

    def read_byte(self, pc, len=1):
        return self.memory.read_byte(pc, len=len)

