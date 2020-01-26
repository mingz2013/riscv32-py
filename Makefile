.PHONY: run
run:
	python read_bin.py | \grep --color cmd | awk -F '=> ' '{print $2}'  > 1.s