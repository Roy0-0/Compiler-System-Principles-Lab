# 编译器与 LLVM IR 预备工作

本工程采用“双程序 + MLIR 进阶”结构：

- `program_a_factorial/`：小型阶乘程序，完成完整编译阶段、手写 LLVM IR、RISC-V 汇编和等价性验证。
- `program_b_optimization/`：数组变换与校验和，完成调试、优化、内联、别名、向量化、循环依赖、自动并行化和规模实验。
- `program_c_kernel_probe/`：纯内核 C 探针，隔离分配/初始化开销，研究向量化、LTO、OpenMP 线程扩展和硬件计数器可用性。
- `mlir_ascend/`：VecAdd 多级 lowering 与证据边界。
- `appendix/sysy_extended/`：交接包中的综合 SysY/LLVM 扩展材料，不承担主线重复实验。
- `evidence/`：工具版本、命令记录、来源清单和文件哈希。

## 快速验证

在 WSL2 Ubuntu 22.04 中执行：

```bash
cd ~/compiler-lab/prework
bash scripts/collect_environment.sh
bash scripts/build_program_a.sh
bash scripts/verify_program_a.sh
bash program_c_kernel_probe/tests/test_kernel_probe.sh
bash program_c_kernel_probe/tests/test_experiments.sh
```

程序 A 的成功标志为：

```text
PROGRAM_A_VERIFY_PASS cases=8 implementations=2
```

当 RISC-V 交叉链接器和 QEMU 可用时，验证脚本会自动增加第三种实现；否则仍会验证手写汇编能够生成 RISC-V 目标文件，并在结果中明确记录运行验证状态。

当前集成项目也可从上一级目录执行 `bash verify_all.sh`。MLIR 脚本会依次查找 `MLIR_TOOLS_DIR`、`PATH`、常见 LLVM 14 安装目录和历史 `/mnt/f` 目录，不再依赖原机器的固定项目路径。
