# -*- coding: utf-8 -*-
"""
@FileName: mem
@Time: 2020/1/26 14:37
@Author: zhaojm

Module Description

"""

import struct


class MEM(object):
    """
    访存, Memory Access

    """

    def __init__(self, cpu):
        self.cpu = cpu
        self.memory = None  # 申请线性地址，作为程序代码段，堆栈等空间。
        self.load_bin()

    @property
    def max_len(self):
        return len(self.memory)

    def print_memory(self):
        print(self.memory)

    def load_bin(self):
        """
        加载二进制文件到内存中
        """
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
            txt_start_addr = 0x10074  # 定义了一个代码段的载入地址，为了和反汇编文件中的地址一致。便于调试

            self.memory = bytearray([0x0] * txt_start_addr) + bytearray(f.read())

            # self.max_len = len(self.memory)
            print("load bin: ", "len: ", self.max_len)

    def load_instruction(self, pc):
        """
        根据pc取出一条指令
        """
        print("<< load_instruction pc: ", hex(pc), )  # ", show pc:", hex(pc + 0x10074))
        if pc > self.max_len:
            raise Exception(pc, self.max_len)
        b = self.memory[pc:pc + 4]
        print("load_instruction b:", b)
        i, = struct.unpack('<i', b)
        print(">> load_instruction ir: ", i, bin(i), hex(i))
        return i

    def read_byte(self, pc, length=1):
        """
        从pc处读取length长度的字节数据
        """
        print("read_byte pc: ", hex(pc), ", length: ", length)
        if pc < 0:
            raise Exception('read addr < 0')

        if pc + length >= self.max_len:
            print("pc > max len...warn")
            # raise Exception(pc, self.max_len)
            while pc + length >= self.max_len:  # 如果读取的地址未初始化，先初始化
                self.memory.append(0)  # bytearay.append(n)
        # print(self.memory)
        # b = bytearray(4)
        b = self.memory[pc:pc + length]  # 读出数据
        print("b: ", b)

        bb = bytearray(b)
        bbb = bytearray(4 - len(bb)) + bb  # 扩展为32位
        i, = struct.unpack('<i', bbb)  # 转成int
        print(bin(i), hex(i))
        # i = b
        return i

    def write_byte(self, addr, b):
        """
        在addr内存处写入b
        """
        print('write_byte: addr:', hex(addr), ", b: ", hex(b))
        if addr < 0:
            raise Exception('write addr < 0')

        bb = struct.pack('<i', b)
        bbb = bytearray(bb)

        if addr + len(bbb) >= self.max_len:
            print("pc > max len...warn")
            while addr + len(bbb) >= self.max_len:
                self.memory.append(0x0)  # bytearay.append(n)
            # raise Exception(addr, self.max_len)
        # for i in range(len(b)):
        #     self.memory[addr + i] = b[i]

        for i, v in enumerate(bbb):
            print("i, v", i, v)
            self.memory[addr + i] = v

        # self.memory[addr] = b

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
    memory = MEM(None)
    m = memory
    m.load_bin()

    print(m.memory)
    print(type(m.memory))
    # pc = 0x0000004c
    pc = 0x1c  # offset = 0x10090 - 0x10074, 根据汇编代码的偏移，计算偏移，copy出代码段后，用0+offset = 0x1c， eip
    i = m.load_instruction(pc)
