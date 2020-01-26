# -*- coding: utf-8 -*-
"""
@FileName: exu
@Time: 2020/1/26 13:34
@Author: zhaojm

Module Description

"""


class EXU(object):
    """
    执行单元
    Execution Unit


    译码, 将寄存器索引读出来。
    将操作数从通用寄存器组(Regfile)中读取出来。





    执行, 根据指令的具体操作类型，发射给具体的运算单元进行执行。


    常见的运算单元为以下几种：
    算术逻辑计算单元(Arithmetic Logical Unit, ALU), 主要负责普通逻辑运算，加减法运算和移位运算等基本运算。
    整数乘法单元
    整数除法单元
    浮点运算单元

    """


    def instruction_decode(self, IR):
        """
        译码

        """









    def instruction_execute(self):
        """
        执行
        """
