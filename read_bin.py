import struct





def parse(b):
    print(b,type(b))
    print(b[0])

def main():
    with open('./hello/hello.bin', 'rb') as f:
        index = 20
        while index > 0:
            index -= 1
            b = f.read(4)
            print(type(b), len(b))
            i, = struct.unpack('<i', b)
            print(bin(i), hex(i))
            print(type(bin(i)))
            parse(b)







if __name__ == '__main__':
    main()
