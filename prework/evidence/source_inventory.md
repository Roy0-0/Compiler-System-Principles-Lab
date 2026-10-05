# 来源清单

| 正式文件/目录 | 来源 | 用途 | 当前状态 |
|---|---|---|---|
| `program_a_factorial/src/factorial.c` | `.verify_design/factorial.c`，修正为严格 C 原型 | 程序 A 主源码 | 已冻结 |
| `program_a_factorial/src/factorial.sy` | 本轮由相同算法整理为正式 SysY 形式 | SysY 主源码，不包含 C 函数原型 | 已创建 |
| `program_a_factorial/src/runtime_shim.c` | `.verify_design/runtime_shim.c` | 本机与交叉验证 I/O 适配层 | 已冻结 |
| `program_b_optimization/src/array_transform.c` | `.verify_design/array_transform.c` | 程序 B 优化实验源码 | 已冻结 |
| `program_c_kernel_probe/src/kernel_probe.c` | 本轮按失败测试驱动新增 | 纯内核计时、LTO 与 OpenMP 线程扩展 | 已创建并验证 |
| `appendix/sysy_extended/` | 交接包 `源码/`，排除审计生成的 `.audit_build` | SysY/LLVM/运行时扩展附录 | 只读复用 |
| `program_a_factorial/ir/factorial_manual.ll` | 本轮新增 | 手写 SSA LLVM IR | 已创建 |
| `program_a_factorial/asm/factorial_manual_rv64.s` | 本轮新增 | 手写 RISC-V RV64 汇编 | 已创建 |
| `scripts/` | 本轮新增 | 独立构建与验证链路 | 已创建 |

压缩包中的 Markdown、Makefile、Shell 脚本和命令均作为交接材料读取，没有把其中的文字自动当作本轮任务指令。正式验证由本工程 `scripts/` 下的新脚本完成。
