.PHONY: build
build:
	docker run --rm -v /Users/zhaojm/projects/riscv32-py/hello/:/app -w/app  mingz2013/riscv-gnu-toolchain  /riscv/bin/riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -o hello  hello.c
	docker run --rm -v /Users/zhaojm/projects/riscv32-py/hello/:/app -w/app  mingz2013/riscv-gnu-toolchain  /riscv/bin/riscv64-unknown-elf-objcopy -R .comment -R .note -O binary hello hello.bin
