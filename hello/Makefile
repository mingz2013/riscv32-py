.PHONY: build
build:
	docker run --rm -v /Users/zhaojm/projects/riscv32-py/hello/:/app -w/app  mingz2013/riscv-gnu-toolchain  /riscv/bin/riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -o hello  hello.c
	docker run --rm -v /Users/zhaojm/projects/riscv32-py/hello/:/app -w/app  mingz2013/riscv-gnu-toolchain  /riscv/bin/riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -E -o hello.i hello.c
	docker run --rm -v /Users/zhaojm/projects/riscv32-py/hello/:/app -w/app  mingz2013/riscv-gnu-toolchain  /riscv/bin/riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -S -o hello.s hello.i
	docker run --rm -v /Users/zhaojm/projects/riscv32-py/hello/:/app -w/app  mingz2013/riscv-gnu-toolchain  /riscv/bin/riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -c -o hello.o hello.s
	docker run --rm -v /Users/zhaojm/projects/riscv32-py/hello/:/app -w/app  mingz2013/riscv-gnu-toolchain  /riscv/bin/riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -o hello hello.o
	docker run --rm -v /Users/zhaojm/projects/riscv32-py/hello/:/app -w/app  mingz2013/riscv-gnu-toolchain  /riscv/bin/riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -o hello  hello.c
	docker run --rm -v /Users/zhaojm/projects/riscv32-py/hello/:/app -w/app  mingz2013/riscv-gnu-toolchain  /riscv/bin/riscv64-unknown-elf-objcopy -R .comment -R .note -O binary hello.o hello.o.bin
	docker run --rm -v /Users/zhaojm/projects/riscv32-py/hello/:/app -w/app  mingz2013/riscv-gnu-toolchain  /riscv/bin/riscv64-unknown-elf-objcopy -R .comment -R .note -O binary hello hello.bin
	docker run --rm -v /Users/zhaojm/projects/riscv32-py/hello/:/app -w/app  mingz2013/riscv-gnu-toolchain  /riscv/bin/riscv64-unknown-elf-objdump -S hello > s.s
