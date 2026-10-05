import csv
import json
import pathlib

root = pathlib.Path(__file__).resolve().parent.parent
exp = root / 'mlir_ascend/upstream_experiments'
summary = json.loads((exp/'summary.json').read_text())
rows = list(csv.DictReader((exp/'results.csv').open()))
assert len(rows) == 150 and all(r['status'] == 'PASS' for r in rows)
lines = [
    '# MLIR 安装与多轮探索结果', '',
    '安装日期：2026-10-03。下载包与工具均保存在 F 盘。', '',
    '- 下载目录：`F:/compiler_tools/mlir14/downloads`',
    '- 安装目录：`F:/compiler_tools/mlir14/install`',
    '- 安装方式：Ubuntu 官方 `mlir-14-tools` 包下载后解包到 F 盘；依赖复用 WSL 现有 LLVM 14。',
    '- 工具版本：Ubuntu LLVM/MLIR 14.0.0。', '',
    '## 真实运行链', '',
    '```text',
    'Affine + Arith + MemRef（向量版包含 Vector）',
    ' -> canonicalize / cse / affine-loop-unroll',
    ' -> lower-affine -> SCF',
    ' -> convert-scf-to-std -> CFG',
    ' -> LLVM dialect -> LLVM IR',
    ' -> opt -verify -> Clang 链接 -> CPU 可执行程序',
    '```', '',
    'MLIR 14 使用旧式 `func`、`std` 控制流拼写；这与新版本的 `func.func`、`cf` 拼写不同。', '',
    '## 实验矩阵', '',
    '两种实现：标量与手写 vector<4xi32>；五种长度：1、16、17、64、257；五种 Pass 配置：基线、canonicalize、cse、canonicalize+cse、展开4次+canonicalize+cse。每种组合执行三轮。', '',
    f'共 {summary["executions"]} 次 CPU 执行，失败 {summary["failures"]} 次。每次程序自行比较 VecAdd 校验和与数学预期，匹配时返回0。', '',
    '| 实现 | 长度 | 预期校验和 | 配置数 | 执行次数 | 结果 |',
    '|---|---:|---:|---:|---:|---|',
]
for n in (1,16,17,64,257):
    for mode in ('scalar','vector'):
        lines.append(f'| {mode} | {n} | {3*n*(n-1)//2} | 5 | 15 | PASS |')
lines += ['', '## IR 差异样例', '', '| 配置 | 优化后 MLIR 字节数（标量长度64） | LLVM IR 字节数 |', '|---|---:|---:|']
for row in rows:
    if row['mode']=='scalar' and row['n']=='64' and row['round']=='1':
        lines.append(f'| {row["pipeline"]} | {row["optimized_bytes"]} | {row["llvm_bytes"]} |')
lines += ['', '## 独立 Pass 探针', '',
    '| 配置 | 加法数 | 常量数 |', '|---|---:|---:|',
    '| 基线 | 4 | 1 |', '| canonicalize | 3 | 0 |',
    '| cse | 3 | 1 |', '| canonicalize+cse | 2 | 0 |',
    '| cse+canonicalize | 2 | 0 |', '',
    'canonicalize 删除加零；cse 合并重复的 x+y。二者组合删除两类冗余。本探针两种顺序结果相同，这不是所有 Pass 都可交换的证明。', '',
    '## 故障注入', '',
    '错误预期校验和与向量加法改成减法两种故障均返回1，证明校验机制能检测这两类错误；记录在 `negative_controls/results.csv`。', '',
    '## 结果边界', '',
    '150 次运行是多配置正确性验证；进程时间仅用于运行记录，不作为 VecAdd 性能结论。校验和覆盖可观察结果，尚未等价于逐元素全空间证明。', '',
    'AscendNPU IR 官方 VecAdd 使用 HIVM/HACC 和 GM/UB，真实上板执行需要 BiShengIR、CANN runtime 与昇腾设备；该部分维持官方文档复核证据。', '',
    '## 重现', '', '```bash',
    'python3 scripts/run_mlir_exploration.py',
    'bash scripts/run_mlir_pass_probe.sh',
    'python3 scripts/verify_mlir_negative_controls.py',
    'python3 scripts/summarize_mlir.py',
    '```', '',
    '## 官方资料', '',
    '- [Ubuntu mlir-14-tools](https://packages.ubuntu.com/mlir-14-tools)',
    '- [MLIR Pass 用法](https://mlir.llvm.org/docs/Tutorials/MlirOpt/)',
    '- [MLIR 降低到 LLVM](https://mlir.llvm.org/docs/Tutorials/Toy/Ch-6/)',
    '- [AscendNPU IR 官方 VecAdd](https://ascendnpu-ir.gitcode.com/zh_cn/sources/introduction/quick_start/examples_zh.html)',
]
(root/'mlir_ascend/安装与多轮探索结果.md').write_text('\n'.join(lines)+'\n')
print('MLIR_REPORT_PASS executions=150 failures=0')
