# PPT 进阶要求的准确定位

## 基础要求

Clang、LLVM 和 GCC 属于基础编译器工具范围。使用它们观察预处理、编译、汇编、链接，编写 LLVM IR 和 ARM/RISC-V 汇编，并链接 SysY 运行时，属于基础任务主线。

## 自由探索

细微修改程序，加入调试、优化和自动并行化等选项，观察各阶段输出变化，属于 PPT 鼓励的自由探索。程序 B 和程序 C 主要承担这一部分。

## 进阶要求

当前进阶要求的核心是 MLIR 编译器中端框架与 AscendNPU IR VecAdd：

1. 理解为什么需要多级中间表示；
2. 观察 VecAdd 在不同方言/层级中的表达；
3. 研究从较高层 Tensor/Arith 或 HFusion，逐步 lowering 到 HIVM、HACC，再到 LLVM/NPU intrinsic 和目标文件的过程；
4. 说明每一步新增的目标信息，例如融合与调度、GM/UB 存储层次、显式 load/vadd/store、同步和设备入口语义；
5. 具备 CANN/BiShengIR 和 Ascend 设备时保存真实 pass 日志、IR 与 `kernel.o`；环境配置困难时，可按课件和官方文档完成分层复核，但必须标注文档证据与实测证据的边界。

因此，增加 Clang 编译选项会加强自由探索，但不能代替 MLIR/AscendNPU IR 进阶章节。
