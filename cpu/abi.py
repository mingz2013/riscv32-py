# -*- coding: utf-8 -*-
"""
@FileName: abi
@Time: 2020/1/29 19:34
@Author: zhaojm

Module Description

"""


def register_abi(r):
    """
    abi 翻译
    :param r:
    :type r:
    :return:
    :rtype:
    """
    _register_abi = [
        'zero',
        'ra',
        'sp',
        'gp',
        'tp',
        't0',
        't1',
        't2',
        's0',  # 'fp',
        's1',
        'a0',
        'a1',
        'a2',
        'a3',
        'a4',
        'a5',
        'a6',
        'a7',
        's2',
        's3',
        's4',
        's5',
        's6',
        's7',
        's8',
        's9',
        's10',
        's11',
        't3',
        't4',
        't5',
        't6'
    ]
    return _register_abi[r]
