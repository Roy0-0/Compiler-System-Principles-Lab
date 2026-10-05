CC := clang
LLVM_AS := llvm-as
PYTHON := python3
CFLAGS := -O0 -g -Wall -Wextra

.PHONY: all test clean

all: sysy_demo ir_demo advanced_sysy_demo advanced_ir_demo

sysy_demo: comprehensive.sy sysy_runtime.c
	$(CC) $(CFLAGS) -x c comprehensive.sy sysy_runtime.c -o $@

comprehensive.bc: comprehensive.ll
	$(LLVM_AS) comprehensive.ll -o $@

ir_demo: comprehensive.bc sysy_runtime.c
	$(CC) $(CFLAGS) comprehensive.bc sysy_runtime.c -o $@

advanced_complete.c: advanced_complete.esy lower_tensor.py
	$(PYTHON) lower_tensor.py advanced_complete.esy advanced_complete.c

advanced_sysy_demo: advanced_complete.c sysy_runtime_extended.c
	$(CC) $(CFLAGS) advanced_complete.c sysy_runtime_extended.c -o $@

advanced_complete.bc: advanced_complete.ll
	$(LLVM_AS) advanced_complete.ll -o $@

advanced_ir_demo: advanced_complete.bc sysy_runtime_extended.c
	$(CC) $(CFLAGS) advanced_complete.bc sysy_runtime_extended.c -o $@

test: all
	mkdir -p build
	./sysy_demo < test-input.txt > build/sysy.out
	./ir_demo < test-input.txt > build/ir.out
	cmp expected-output.txt build/sysy.out
	cmp expected-output.txt build/ir.out
	cmp build/sysy.out build/ir.out
	./advanced_sysy_demo < advanced-test-input.txt > build/advanced-sysy.out
	./advanced_ir_demo < advanced-test-input.txt > build/advanced-ir.out
	cmp advanced-expected-output.txt build/advanced-sysy.out
	cmp advanced-expected-output.txt build/advanced-ir.out
	cmp build/advanced-sysy.out build/advanced-ir.out
	@printf 'PASS: SysY/C and LLVM IR outputs are identical.\n'

clean:
	rm -rf build comprehensive.bc advanced_complete.bc advanced_complete.c \
		sysy_demo ir_demo advanced_sysy_demo advanced_ir_demo
