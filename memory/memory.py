# -*- coding: utf-8 -*-
"""
@FileName: memory
@Time: 2020/1/25 09:46
@Author: zhaojm

Module Description

"""


class Memory(object):
    def __init__(self):
        self.memory = None

    def load_bin(self):
        with open('./hello/hello.bin', 'rb') as f:
            # index = 20
            # while True:
            #     # index -= 1
            #     b = f.read(4)
            #     # print(type(b), len(b))
            #     # i, = struct.unpack('<i', b)
            #     # print(bin(i), hex(i))
            #     self.memory.append(b)
            self.memory = f.read()
