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
        # self.max_len = 0

    @property
    def max_len(self):
        return len(self.memory)

    def load_bin(self):
        with open('./hello/hello.bin', 'rb') as f:
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
            # self.max_len = len(self.memory)
            print("load bin: ", "len: ", self.max_len)

    def load_instruction(self, pc):
        print("load_instruction pc: ", pc)
        if pc > self.max_len:
            raise Exception(pc, self.max_len)
        b = self.memory[pc:pc + 4]
        i, = struct.unpack('<i', b)
        print(bin(i), hex(i))
        return i

    def read_byte(self, pc, len=1):
        print("read_byte pc: ", pc, "len: ", len)
        if pc > self.max_len:
            raise Exception(pc, self.max_len)
        b = self.memory[pc:pc + len]
        print("b: ", b)
        i, = struct.unpack('<i', b)
        print(bin(i), hex(i))
        return i

    def write_byte(self, addr, b):
        print('write_byte: ', addr, b)
        if addr > self.max_len:
            raise Exception(addr, self.max_len)
        for i in range(len(b)):
            self.memory[addr + i] = b[i]

    def read_file(self):
        with open('./hello/hello.bin', 'rb') as f:
            index = 20
            count = 0
            while True:
                # while index > 0:
                index -= 1
                b = f.read(4)
                # print("b:", b)
                if len(b) == 0:
                    print("over....b == 0")
                    break
                # print(type(b), len(b))
                i, = struct.unpack('<i', b)
                print(i, type(i), bin(i), hex(i))
                # print(type(bin(i)))
                if i == 0:
                    break
                # parse(i)
                count += 1
                print("count ...", count)


if __name__ == '__main__':
    memory = Memory()
    m = memory
    m.load_bin()

    print(m.memory)
    print(type(m.memory))
    # pc = 0x0000004c
    pc = 0x1c  # offset = 0x10090 - 0x10074, 根据汇编代码的偏移，计算偏移，copy出代码段后，用0+offset = 0x1c， eip
    i = m.load_instruction(pc)
