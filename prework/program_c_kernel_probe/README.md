# 程序 C：纯内核优化探针

程序 C 专门补程序 B 的测量不足。程序 B 的时间包含进程启动、分配、初始化、变换和校验和；程序 C 在同一进程内先初始化数据，再只对 `transform` 内核计时，并在计时后用独立参考计算验证校验和。

## 探索问题

- 自动向量化相对关闭向量化有多大影响；
- `restrict` 是否改变别名分析和目标代码；
- GCC 与 Clang 对同一纯内核的处理差异；
- LTO 对单文件小程序是否仍有收益；
- 手工 OpenMP 在 1、2、4、8 线程下如何扩展；
- 当前环境是否允许采集 cycles、instructions、cache misses 和 branch misses。

## 执行

```bash
cd ~/compiler-lab/prework
bash program_c_kernel_probe/tests/test_kernel_probe.sh
bash program_c_kernel_probe/tests/test_experiments.sh
```

输出：

- `results/kernel_matrix.csv`：九个变体的纯内核中位 `ns/element`；
- `reports/vectorize.txt`：Clang 向量化诊断；
- `reports/gcc_vectorize.txt`：GCC 向量化诊断；
- `reports/perf_status.txt`：硬件计数器可用状态；
- `artifacts/`：可执行文件、LLVM IR 和汇编。
