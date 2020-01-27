BASEDIR=$(CURDIR)

DOCKER-RUN := docker run --rm -i -t -v${BASEDIR}/:/app -w/app mingz2013/riscv-gnu-toolchain

.PHONY: build
build:
	#${DOCKER-RUN}  /riscv/bin/riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -o hello  hello.c
	${DOCKER-RUN}  /riscv/bin/riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -E -o hello.i hello.c
	${DOCKER-RUN}  /riscv/bin/riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -S -o hello.s hello.i
	${DOCKER-RUN}  /riscv/bin/riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -c -o hello.o hello.s
	${DOCKER-RUN}  /riscv/bin/riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -o hello.elf hello.o
#	${DOCKER-RUN}  /riscv/bin/riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -o hello  hello.c
	${DOCKER-RUN}  /riscv/bin/riscv64-unknown-elf-objcopy -R .comment -R .note -O binary hello.o hello.o.bin
	${DOCKER-RUN}  /riscv/bin/riscv64-unknown-elf-objcopy -R .comment -R .note -O binary hello.elf hello.bin
	${DOCKER-RUN}  /riscv/bin/riscv64-unknown-elf-objdump -S hello.elf > hello.objdump.s
	${DOCKER-RUN}  /riscv/bin/riscv64-unknown-elf-objdump -D hello.elf > hello.objdump.dis
	${DOCKER-RUN}  /riscv/bin/riscv64-unknown-elf-objdump -S hello.o > hello.o.objdump.s
