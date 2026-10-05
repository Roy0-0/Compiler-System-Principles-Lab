# VecAdd 多级 Lowering 观察表

| 层级 | 代表操作 | 新增信息 | 丢失/降低的抽象 | 当前证据等级 |
|---|---|---|---|---|
| Tensor/Arith MLIR | `arith.addi` | 张量形状和元素类型 | 仍未包含目标存储层次 | 文本复核 |
| HFusion | `hfusion.vadd` | 融合、调度和算子语义 | 通用算术被改写为 NPU 高层操作 | 文档示意 |
| HIVM | `load/vadd/store` | GM/UB 地址空间、显式搬运、同步 | 单一高层向量操作被拆成存储与计算步骤 | 文档示意 |
| HACC | device entry | 异构函数种类与启动语义 | 普通函数语义进一步目标化 | 文档示意 |
| LLVM/NPU | intrinsic calls | 目标 intrinsic 和底层接口 | 高层 tensor/fusion 信息基本消失 | 文档示意 |

这一部分研究的问题不是“记住方言名称”，而是观察编译器在每次 lowering 中逐步加入目标相关信息：先确定计算，再确定调度，然后显式化存储层次、异构入口和硬件接口。
