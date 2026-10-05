# 编译器预备作业项目

当前项目由两部分组成：

- 根目录：综合 SysY2022 与等价 LLVM IR 示例，覆盖整数、浮点、多维数组和补充文法测试。
- `prework/`：预备作业主实验，包含完整编译阶段、手写 LLVM IR、手写 RISC-V、优化实验、上游 MLIR 实验和报告草稿。

## 快速验证

```bash
git clone https://github.com/Roy0-0/Compiler-System-Principles-Lab.git
cd Compiler-System-Principles-Lab
bash verify_all.sh
```

统一脚本默认执行：

1. 根目录 SysY/LLVM IR 等价性验证；
2. 程序 A 完整阶段链及 SysY/LLVM IR/RISC-V 验证；
3. 程序 C 单元行为验证；
4. 交接包原始 SHA-256 快照核验。

程序 B 和程序 C 的完整性能矩阵会覆盖已有结果且耗时较长，需显式执行：

```bash
bash verify_all.sh --performance
```

MLIR 二进制和 Deb 缓存不纳入 Git。首次克隆后，可在 Ubuntu/WSL 中无 `sudo` 安装到项目内 `tools/mlir14/`；验证脚本会自动发现，也可以用 `MLIR_TOOLS_DIR` 指定其他安装：

```bash
bash prework/scripts/install_mlir_local.sh
bash verify_all.sh --mlir
```

## 关键入口

- `SYSY_LAB_README.md`：原综合 SysY 工程说明。
- `prework/README.md`：主实验概览。
- `prework/report/report.md`：科技论文结构的报告草稿。
- `prework/交接文档_2026-10-04.md`：完整实验交接记录与证据边界。
- `PROJECT_REQUIREMENTS_COVERAGE.md`：当前项目与题目要求的逐项匹配分析。

## 证据边界

- x86 SysY、LLVM IR、RISC-V/QEMU、Clang/GCC 优化实验属于本机可复现验证。
- RISC-V 链接未修改的课程 `libsysy_riscv.a`；最小 `_impure_ptr` 桥只提供归档实际读取的 stdout/stderr 槽位，不代表通用 Newlib/glibc ABI 兼容，也不等于裸机验证。
- 上游 MLIR 已使用项目内 MLIR 14 在当前 WSL 重跑，150/150 次成功，2/2 负向控制被检出。
- HFusion/HIVM/HACC 和 Ascend NPU 执行仍属于课件/文档复核，没有 CANN、BiShengIR、`kernel.o` 或上板证据。
- 最终 PDF、小组成员信息和真实分工仍需补齐。
