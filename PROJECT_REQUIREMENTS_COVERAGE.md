# 项目与题目要求契合度分析

更新日期：2026-10-04

## 结论

当前项目已经从“SysY + LLVM IR 示例”提升为包含完整编译阶段、手写 LLVM IR、手写 RISC-V、官方 SysY 运行时、优化实验、上游 MLIR 实验和报告草稿的完整实验工程。

按交接包对题目的拆分，即基础 4 分、进阶 1 分，当前**技术实验覆盖度估计约为 4.8/5（约 96%）**。这不是教师评分承诺，而是依据现有可执行证据作出的工程审计估算。

若按“可以直接提交”的标准衡量，当前**提交就绪度约为 75%**：最终 PDF、小组成员姓名学号、真实分工、图表排版和部分引用尚未补齐。

## 逐项匹配

| 题目要求 | 当前证据 | 状态 | 说明 |
|---|---|---|---|
| 研究预处理、编译、汇编、链接全过程 | `prework/program_a_factorial/stages/`、`results/chain_summary.md` | 完成 | 保存 `.i`、AST、O0/O2 IR、逐 Pass IR、x86 汇编、ELF、符号/重定位、反汇编和 link map |
| SysY 示例覆盖运算、赋值、分支、循环、函数 | 根目录综合示例及程序 A | 完成 | 综合示例还覆盖短路逻辑、数组、float、多维数组和补充文法 |
| 编写等价 LLVM IR | `comprehensive.ll`、`advanced_complete.ll`、`factorial_manual.ll` | 完成 | 通过 `llvm-as` 和 `opt -verify`，多组输入与源程序一致 |
| 编写 ARM 或 RISC-V 汇编 | `factorial_manual_rv64.s` | 完成 | 已交叉静态链接并由 QEMU 执行 8 组边界用例 |
| 链接 SysY 运行库 | 根目录和程序 A | 完成 | x86 SysY/LLVM 均链接课程官方库；RISC-V 链接未修改的官方 `libsysy_riscv.a`，通过最小 `_impure_ptr` 桥接在 QEMU/Linux 验证 |
| 验证结果正确 | `verify_all.sh`、等价性 TSV、测试脚本 | 完成 | 当前机器已重跑 SysY/LLVM、程序 A 三实现和程序 C 单元测试 |
| 修改程序和编译选项进行自由探索 | 程序 B、程序 C | 完成且充分 | 覆盖优化等级、调试信息、内联、restrict、依赖、向量化、自动并行、PGO、LTO 和 OpenMP |
| 比较各阶段输出变化 | Pass 统计、IR、汇编、remark、ELF 报告 | 完成 | `mem2reg`、`instcombine`、`simplifycfg` 有量化结果 |
| MLIR/AscendNPU IR 进阶 | `prework/mlir_ascend/` | 大部分完成 | 项目内 MLIR 14 已在当前机器重跑 150/150 次，故障注入 2/2 被检出；HFusion/HIVM/HACC 仍为文档复核 |
| 科技论文结构报告 | `prework/report/report.md` | 草稿完成 | 已有摘要、关键词、引言、实验、结论和参考文献入口，但尚未最终排版 |
| PDF 提交 | 无最终 PDF | 未完成 | 需要填入成员信息、统一图表与引用后导出 |
| 两人分组与真实分工 | 占位说明 | 未完成 | 必须由实际成员填写，不能代拟或虚构 |

## 基础 4 分估算

| 基础部分 | 估算 | 依据 |
|---|---:|---|
| 编译阶段链与分析 | 0.8/0.8 | 阶段产物齐全且可重建 |
| SysY 示例与语言特性 | 0.8/0.8 | 基础和综合示例互补，覆盖范围超过最低要求 |
| 手写 LLVM IR | 0.8/0.8 | verifier 与多输入等价性均通过 |
| RISC-V 汇编 | 0.8/0.8 | 链接未修改的课程 RISC-V 官方库，经 ABI 桥接和 QEMU 完成 8 组实测 |
| 运行库与结果验证 | 0.8/0.8 | x86 官方库和自动化验证充分 |
| **基础小计** | **4.0/4.0** | 基础技术项均有可执行证据；提交格式与人员信息另行处理 |

## 进阶 1 分估算

进阶部分估计为 **0.8/1.0**：

- 已完成上游 MLIR Affine/Arith/MemRef/Vector 到 LLVM IR 的真实实验；
- 已用项目内安装的 MLIR 14 在当前机器重跑 150/150 次，并重建 Pass 探针；
- 两组负向控制均被验证程序检出；
- 已解释 HFusion、HIVM、HACC、GM/UB 和 load/vadd/store 的逐层语义；
- 更没有 CANN、BiShengIR、Ascend 设备、厂商 Pass 日志或真实 `kernel.o`。

因此不能把进阶部分写成“AscendNPU 已完成端到端实测”。

## 本轮实际验证结果

```text
INTEGRATION_SOURCE_MANIFEST_PASS
PASS: LLVM verification and all comparison cases succeeded.
PROGRAM_A_BUILD_PASS stages=16
PROGRAM_A_VERIFY_PASS cases=8 implementations=3 riscv=EXECUTED_OFFICIAL_RUNTIME_BRIDGE_PASS
PROGRAM_C_UNIT_PASS checksum=1092486 invalid_args=2
PROGRAM_B_EXPERIMENTS_PASS variants=14 sizes=4
PROGRAM_C_EXPERIMENTS_PASS variants=9 n=5000000 repeats=20 runs=7 perf=UNAVAILABLE
PROGRAM_C_EXPERIMENT_TEST_PASS variants=9
MLIR_EXPLORATION_PASS executions=150 failures=0
MLIR_NEGATIVE_CONTROLS_PASS detected=2 total=2
MLIR_REPORT_PASS executions=150 failures=0
```

程序 B 和 C 的最新数值以各自 CSV 为准，报告草稿已同步到 2026-10-04 本次重跑结果。

## 提交前必须完成

1. 填写两名成员姓名、学号和真实分工。
2. 检查报告正文、CSV、图表中的性能数值属于同一次实验快照。
3. 为关键阶段产物和优化结果制作图表或代码对照图。
4. 补全规范引用和参考文献格式。
5. 导出 PDF 并逐页检查中文字体、表格、代码换行和图片清晰度。

## 可选补强

1. 若能获得 CANN/BiShengIR 和 Ascend 设备，再补厂商方言真实 Pass 输出、`kernel.o` 和上板结果。
2. 若需验证裸机 Newlib 场景，另建匹配的 Newlib 工具链；当前桥接只覆盖官方归档中实际观察到的 `_impure_ptr` stdout/stderr 槽位，不代表 Newlib/glibc 的通用 ABI 等价。
3. 获取 `perf` 权限后补 cycles、instructions、IPC 和 cache miss 指标。
