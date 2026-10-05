# 程序 A 编译阶段观察

| 阶段 | 输入 | 主要输出 | 重点观察 |
|---|---|---|---|
| 预处理 | `factorial.c` | `factorial.i` | 本程序没有头文件和宏，结构基本保持；该结果作为后续前端的真实输入 |
| 语法/语义 | `factorial.i` | AST 文本 | `IfStmt`、`WhileStmt`、`CallExpr` 与源码结构对应 |
| LLVM IR | AST/前端内部表示 | `factorial_O0.ll`、`factorial_O2.ll` | `-O0` 保留栈变量，`-O2` 将循环和边界判断简化 |
| 汇编 | LLVM IR | `factorial_x86_O0.s` | 比较、跳转、乘法与调用已变成目标指令 |
| 汇编器 | 汇编 | `factorial.o` | 生成 ELF 可重定位目标文件，外部 I/O 符号仍未解析 |
| 链接器 | 目标文件 + `runtime_shim.c` | `factorial_c`、link map | 解析 `getint`/`putint` 并形成可执行文件 |

## 逐 Pass 观察链

`factorial_raw.ll` 使用 `-Xclang -disable-O0-optnone` 生成，使独立 Pass 能够实际改写函数：

```text
factorial_raw.ll
  -> mem2reg
  -> instcombine
  -> simplifycfg
  -> opt -O2
```

- `mem2reg` 将可提升的局部栈变量改写为 SSA 值与 `phi`；
- `instcombine` 合并局部算术和比较模式；
- `simplifycfg` 合并可简化基本块与分支；
- `opt -O2` 进一步进行循环、函数属性和全局层面的组合优化。

## 源码—IR—汇编对应关系

| 源码结构 | LLVM IR | x86/RISC-V 汇编 |
|---|---|---|
| `n < 0 || n > 12` | `icmp` 与条件分支 | 比较、条件跳转 |
| `while (i <= n)` | loop header、back edge、`phi` 或栈变量 | 循环标签与反向跳转 |
| `result * i` | `mul` | `imul`/`mulw` |
| `factorial(n)` | `call @factorial` | `a0` 传参并执行 `call` |

这里的“手写 LLVM IR”是 `ir/factorial_manual.ll`；`stages/factorial_O0.ll` 和 `factorial_O2.ll` 是 Clang 生成结果，二者不会混称。
