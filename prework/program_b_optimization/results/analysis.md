# 程序 B 探索结果

## 正确性

- 基线在 `n=10000` 时校验和为 `1092486`；
- 除 `SCALE=5` 和有意引入循环依赖的版本外，全部语义保持型变体与基线一致；
- 依赖版本在 `n=10000` 时校验和为 `5451273629`，单独作为不同算法记录。

## 已确认的编译器行为

### 向量化

Clang 的 remark 明确显示：

- 初始化循环：向量宽度 4，interleave count 2；
- 独立变换循环：向量宽度 4，interleave count 2；
- 校验和循环：向量宽度 2，interleave count 2；
- 使用 `c[i - 1]` 的依赖变换循环：明确报告 `loop not vectorized`。

在 2026-10-04 当前机器的 `n=5000000` 测量中，关闭 loop/SLP vectorization 的中位时间约为 `23.14 ms`，普通 `-O3` 约为 `19.58 ms`。这是当前主机上的观测，报告应同时展示 remark 和汇编证据，而不是只依赖时间。

### 函数内联

普通 `-O3` 中，Clang 明确报告把 `adjust_value`、`initialize`、`transform` 和 `checksum` 内联。加入 `DISABLE_INLINE` 后，`adjust_value` 因 `noinline` 属性被保留为独立本地符号，二进制中可由 `nm` 观察到 `adjust_value`。

### 调试信息

`-O0` 文件大小为 16336 字节，`-O0 -g` 为 18696 字节。后者增加 `.debug_info`、`.debug_abbrev`、`.debug_line`、`.debug_str`、`.debug_addr` 等 DWARF 节区；程序代码段统计不因此改变。

### GCC 自动并行化

GCC 优化报告明确记录：

```text
optimized: parallelizing inner loop 2
optimized: parallelizing inner loop 3
```

生成程序还出现 `__builtin_GOMP_parallel`，说明本轮不是“只接受了编译选项”，而是实际生成了 OpenMP/GOMP 并行区域。当前 `n=5000000` 的中位时间约为 `10.40 ms`，同轮 GCC `-O3` 约为 `21.02 ms`；正式报告仍需注明主机负载和重复测量方法。

### 额外探索

- 保存了 Clang 与 GCC `-O3` 的对照；
- 保存了 `-march=native` 版本；
- 完成了 Clang instrumentation PGO 的采样、`llvm-profdata merge` 和 profile-use 重编译；
- PGO 与 `-march=native` 在本轮短程序上没有稳定优于普通 `-O3`，这属于有效的负结果，不应改写成“必然加速”。

## 计时边界

当前时间包含进程启动、内存分配、初始化、变换、校验和及释放。它适合做端到端比较，但不能直接解释为单独 `transform` 内核耗时。正式报告将以编译器 remark、IR/汇编结构为主要因果证据，以中位时间作为辅助证据。
