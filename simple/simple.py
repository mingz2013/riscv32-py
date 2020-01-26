# -*- coding: utf-8 -*-
"""
@FileName: simple
@Time: 2020/1/26 17:08
@Author: zhaojm

Module Description

"""

import struct

from . import instructions

registers = []


def is_32bit_instruction(b):
    """
    32位的指令
    """
    print(b & 0b11)
    if b & 0b11 != 0b11:  # 匹配11
        return False

    print(b & 0b11100)
    if b & 0b11100 == 0b11100:  # 不匹配11100
        return False

    return True


def parse(b):
    # print(b, type(b))
    # print(b[0])
    # print(1 if b & (1 << 10) else 0)
    if b == 0:
        print("b is 0...")
        return
    if not is_32bit_instruction(b):
        print('not 32 bit instruction', hex(b))
        return

    # instructions.do_instruction(b)


def read_file():
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
            parse(i)
            count += 1
            print("count ...", count)


def run():
    read_file()
