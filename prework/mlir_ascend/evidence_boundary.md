# MLIR/AscendNPU IR 证据边界

当前 WSL 环境已确认具有 Clang/LLVM 工具链，但没有确认到 CANN、BiShengIR 或 Ascend 设备。因此：

- SysY/C、LLVM IR、x86 和 RISC-V 部分属于本地实测；
- Clang/GCC 优化、向量化、并行化和 PGO 属于本地实测；
- 上游 MLIR 14 已安装到 F 盘；Affine/SCF/Vector/MemRef/LLVM 多级 lowering 已完成150次 CPU 正确性执行，另有两组故障注入均被检测；
- HFusion、HIVM、HACC 与 NPU intrinsic 当前属于课件/文档复核；
- `kernel.o`、厂商 pass 日志和设备运行结果目前不列为已完成证据。

若后续具备环境，新增证据必须同时保存工具版本、完整命令、pass 前后 IR、标准输出/错误、`kernel.o` 哈希和设备信息，再将相应行升级为“实测”。
