# -*- coding: utf-8 -*-
"""
@FileName: memory
@Time: 2020/1/25 09:46
@Author: zhaojm

Module Description

"""
import struct


class Memory(object):
    def __init__(self):
        # 0x0000004c eip
        self.memory = None

    def load_bin(self):
        with open('../hello/hello.bin', 'rb') as f:
            # index = 5
            # while True:
            #     index -= 1
            #     if index < 0:
            #         break
            #     b = f.read(4)
            #     print(type(b), len(b))
            #     i, = struct.unpack('<i', b)
            #     print(bin(i), hex(i))
            #     self.memory.append(b)
            self.memory = f.read()

    def load_instruction(self, pc):
        b = m.memory[pc:pc + 4]
        i, = struct.unpack('<i', b)
        print(bin(i), hex(i))
        return i


if __name__ == '__main__':
    m = Memory()
    m.load_bin()
    print(m.memory)
    print(type(m.memory))
    # pc = 0x0000004c
    pc = 0x1c # offset = 0x10090 - 0x10074, 根据汇编代码的偏移，计算偏移，copy出代码段后，用0+offset = 0x1c， eip
    i = m.load_instruction(pc)



