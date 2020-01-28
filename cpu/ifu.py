# -*- coding: utf-8 -*-
"""
@FileName: ifu
@Time: 2020/1/26 13:32
@Author: zhaojm

Module Description

"""


class IFU(object):
    """
    取指单元
    lnstruction Fetch Unit


    PC(Program Counter)寄存器存储了地址。


    * 对取回的地址进行简单译码(Mini-Decode)
    * 简单的分支预测 (Simple-BPU)。
    * 生成取指的PC(PC生成)。
    * 根据PC的地址访问ITCM或BIUC地址判断和 ICB 总线控制〉。

    IFU在取出指令后，会将其放置于和EXU 单元接口的IR（Instruction Register）寄存器中. 该指令的PC值也会被放置于和EXU单元接口的PC寄存器中。

    EXU单元将使用此IR和PC进行后续的执行操作。

    PC生成，
    reset后第一次取指，使用默认值，可以定义一个接口初始化默认值。


    """

    def __init__(self, cpu):
        self.cpu = cpu

    def instruction_fetch(self):
        """
        取指

        自动从pc地址处读取 指令。

        并将pc地址下移。

        这里应当做预判断，如果是跳转或分支相关的指令，并不是默认地址下移。

        所以在跳转和分支指令里面，需要先-4.


        TODO 分支预测

        """
        pc = self.cpu.register_file.pc

        self.cpu.register_file.ir = self.cpu.mem.load_instruction(pc)

        self.cpu.register_file.pc += 4
