# 程序 B：数组变换与校验和

程序 B 不重复程序 A 的手写 IR/汇编任务，而是用于研究编译器行为。主循环同时具备以下可控因素：

- `SCALE`：观察常量贯穿和指令选择；
- `DISABLE_INLINE`：观察函数内联；
- `USE_RESTRICT`：观察别名信息；
- `USE_DEPENDENT_LOOP`：制造循环携带依赖；
- `-g`：观察调试节区与文件大小；
- `-O0/-O1/-O2/-O3`：观察优化等级；
- `-fno-vectorize`：建立向量化对照；
- GCC `-ftree-parallelize-loops=4`：观察自动并行化报告；
- Clang PGO：观察基于运行画像的优化。

执行：

```bash
cd ~/compiler-lab/prework
bash scripts/run_program_b_experiments.sh
```

输出包括可执行文件、LLVM IR、汇编、编译器 remark、调试节区、实验矩阵和规模测量表。
