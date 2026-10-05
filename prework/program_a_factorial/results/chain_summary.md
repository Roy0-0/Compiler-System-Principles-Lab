# 程序 A 构建链结果

## 验证结论

- SysY 源码、手写 LLVM IR、手写 RISC-V 三种实现均完成真实可执行验证；
- 八组边界输入全部一致；
- 手写 LLVM IR 通过 `llvm-as` 和 `opt -verify`；
- 手写 RISC-V 已生成 ELF64 RISC-V 目标文件，并经静态交叉链接后由 QEMU 执行；
- SysY 源码版与手写 LLVM IR 均链接课程提供的官方 x86 SysY 运行时；手写 RISC-V 链接未修改的官方 `libsysy_riscv.a`；
- 官方 RISC-V 归档中的 `putf`/`after_main` 经反汇编确认只从 `_impure_ptr` 的字节偏移 16/24 读取 stdout/stderr，`newlib_glibc_bridge.c` 仅为这两个槽位提供 glibc `FILE *`；这不是通用 Newlib/glibc ABI 等价，也不是裸机运行证据；
- 完整阶段目录包含预处理、AST、LLVM IR、逐 Pass IR、x86 汇编、目标文件、符号/重定位、反汇编和链接映射。

详细结果见 `equivalence.tsv`。

## 逐 Pass 量化结果

| 阶段 | `alloca` | `load` | `store` | `phi` | 分支 |
|---|---:|---:|---:|---:|---:|
| Clang `-O0` | 7 | 11 | 10 | 0 | 7 |
| `mem2reg` 后 | 0 | 0 | 0 | 3 | 7 |
| `instcombine` 后 | 0 | 0 | 0 | 3 | 7 |
| `simplifycfg` 后 | 0 | 0 | 0 | 3 | 3 |
| `opt -O2` 后 | 0 | 0 | 0 | 6 | 5 |

这里可以直接观察到：`mem2reg` 消除了可提升的局部变量内存访问并引入 `phi`；`simplifycfg` 将 IR 中的显式分支从 7 条减少为 3 条。完整统计保存在 `pass_statistics.tsv`。

## 生成汇编与手写汇编

| 版本 | 行数 | 字节数 | 定位 |
|---|---:|---:|---|
| Clang 生成 RISC-V | 94 | 2387 | 展示编译器保守栈帧和完整指令选择 |
| 手写 RISC-V | 41 | 706 | 展示 ABI、边界分支和最小循环实现 |

手写版更短不代表能够直接宣布性能更高；正式结论只陈述结构差异和等价性，性能需要在相同目标机器上独立测量。
