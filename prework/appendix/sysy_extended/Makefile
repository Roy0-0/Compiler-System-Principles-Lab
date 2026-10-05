CC := clang
LLVM_AS := llvm-as
OPT := opt
CFLAGS := -O0 -g -Wall -Wextra
BUILD_DIR := build
RUNTIME_DIR := runtime
RUNTIME_LIB := $(RUNTIME_DIR)/libsysy_x86.a
RUNTIME_DECLS := $(RUNTIME_DIR)/sysy_decl.h

.PHONY: all test verify clean

all: sysy_demo ir_demo advanced_sysy_demo advanced_ir_demo

$(BUILD_DIR):
	mkdir -p $@

$(BUILD_DIR)/comprehensive.o: comprehensive.sy $(RUNTIME_DECLS) | $(BUILD_DIR)
	$(CC) $(CFLAGS) -include $(RUNTIME_DECLS) -x c -c $< -o $@

sysy_demo: $(BUILD_DIR)/comprehensive.o $(RUNTIME_LIB)
	$(CC) $(CFLAGS) $^ -o $@

comprehensive.bc: comprehensive.ll
	$(LLVM_AS) $< -o $@

ir_demo: comprehensive.bc $(RUNTIME_LIB)
	$(CC) $(CFLAGS) $^ -o $@

$(BUILD_DIR)/advanced_complete.o: advanced_complete.sy $(RUNTIME_DECLS) | $(BUILD_DIR)
	$(CC) $(CFLAGS) -include $(RUNTIME_DECLS) -x c -c $< -o $@

advanced_sysy_demo: $(BUILD_DIR)/advanced_complete.o $(RUNTIME_LIB)
	$(CC) $(CFLAGS) $^ -o $@

advanced_complete.bc: advanced_complete.ll
	$(LLVM_AS) $< -o $@

advanced_ir_demo: advanced_complete.bc $(RUNTIME_LIB)
	$(CC) $(CFLAGS) $^ -o $@

test: all
	./sysy_demo < test-input.txt > $(BUILD_DIR)/sysy.out 2> $(BUILD_DIR)/sysy.err
	./ir_demo < test-input.txt > $(BUILD_DIR)/ir.out 2> $(BUILD_DIR)/ir.err
	cmp expected-output.txt $(BUILD_DIR)/sysy.out
	cmp expected-output.txt $(BUILD_DIR)/ir.out
	cmp $(BUILD_DIR)/sysy.out $(BUILD_DIR)/ir.out
	./advanced_sysy_demo < advanced-test-input.txt > $(BUILD_DIR)/advanced-sysy.out 2> $(BUILD_DIR)/advanced-sysy.err
	./advanced_ir_demo < advanced-test-input.txt > $(BUILD_DIR)/advanced-ir.out 2> $(BUILD_DIR)/advanced-ir.err
	cmp advanced-expected-output.txt $(BUILD_DIR)/advanced-sysy.out
	cmp advanced-expected-output.txt $(BUILD_DIR)/advanced-ir.out
	cmp $(BUILD_DIR)/advanced-sysy.out $(BUILD_DIR)/advanced-ir.out
	@printf 'PASS: SysY and LLVM IR outputs match with the official runtime.\n'

verify: test comprehensive.bc advanced_complete.bc
	$(OPT) -verify comprehensive.bc -disable-output
	$(OPT) -verify advanced_complete.bc -disable-output
	./verify.sh --skip-build

clean:
	rm -rf $(BUILD_DIR) comprehensive.bc advanced_complete.bc \
		sysy_demo ir_demo advanced_sysy_demo advanced_ir_demo
