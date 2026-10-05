# 项目状态

更新时间：2026-10-04

## 已完成链路

- 程序 A：预处理、AST、LLVM IR、逐 Pass IR、x86 汇编、目标文件、符号/重定位、反汇编、链接映射和可执行文件；
- 程序 A：手写 LLVM IR 已通过 verifier；
- 程序 A：手写 RISC-V 已完成汇编、静态交叉链接和 QEMU 运行；
- 程序 A：SysY/官方 x86 运行时、手写 LLVM IR/官方 x86 运行时、手写 RISC-V/官方 RISC-V 运行时三种实现的 8 组测试全部一致；
- 程序 B：14 个编译/程序变体和 4 档规模实验；
- 程序 B：保存 LLVM IR、汇编、DWARF 节区、向量化/内联/并行化诊断和 PGO 数据；
- 程序 C：完成纯内核计时、参考校验、向量化、LTO 和 OpenMP 1/2/4/8 线程扩展；
- Newlib ABI：未修改的`libsysy_riscv.a`通过最小`_impure_ptr`桥接在QEMU/Linux执行；桥只覆盖反汇编确认的stdout/stderr槽位，不代表通用ABI兼容或裸机验证；
- MLIR：项目内安装14.0.0，当前机器完成50个编译配置、150次CPU运行、独立规范化/CSE探针和2组故障注入；Ascend专有方言维持文档复核；
- 报告：形成可继续完善的 Markdown 初稿；
- 证据：正式文件均写入 SHA-256 清单；数量以当前 `manifest.sha256` 为准。

## 最新验证标志

```text
PROGRAM_A_BUILD_PASS stages=16
PROGRAM_A_VERIFY_PASS cases=8 implementations=3 riscv=EXECUTED_OFFICIAL_RUNTIME_BRIDGE_PASS
PROGRAM_B_EXPERIMENTS_PASS variants=14 sizes=4 baseline=1092486 dependent=5451273629
PROGRAM_C_UNIT_PASS checksum=1092486 invalid_args=2
PROGRAM_C_EXPERIMENTS_PASS variants=9 n=5000000 repeats=20 runs=7 perf=UNAVAILABLE
PROGRAM_C_EXPERIMENT_TEST_PASS variants=9
MLIR_EXPLORATION_PASS executions=150 failures=0
MLIR_NEGATIVE_CONTROLS_PASS detected=2 total=2
MLIR_REPORT_PASS executions=150 failures=0
manifest_failures=0
```

## 尚需用户信息或外部环境

- 两名成员姓名、学号和真实分工；
- 最终报告排版与 PDF 导出；
- 如需把 AscendNPU IR 升级为实测，需要 CANN、BiShengIR 和 Ascend 设备；
- 如需更严格的性能论文结论，可增加更多主机重复实验、硬件计数器和跨翻译单元LTO对照。
