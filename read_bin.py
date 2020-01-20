import struct


with open('./hello/hello.bin', 'rb') as f:
    index = 10
    while index > 0:
        index -= 1
        b = f.read(4)
        print(type(b), len(b))
        i, = struct.unpack('<i', b)
        print(bin(i))
