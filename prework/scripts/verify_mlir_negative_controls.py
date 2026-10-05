import csv
import os
import pathlib
import shutil
import subprocess

root = pathlib.Path(__file__).resolve().parent.parent
base = root/'mlir_ascend/upstream_experiments'
out = root/'mlir_ascend/negative_controls'
out.mkdir(exist_ok=True)

def find_tool(name):
    tools_dir = os.environ.get('MLIR_TOOLS_DIR')
    candidates = []
    if tools_dir:
        candidates.append(pathlib.Path(tools_dir) / name)
    path_match = shutil.which(name)
    if path_match:
        candidates.append(pathlib.Path(path_match))
    candidates.extend([
        root.parent / 'tools/mlir14/usr/bin' / name,
        pathlib.Path('/usr/bin') / name,
        pathlib.Path('/usr/lib/llvm-14/bin') / name.removesuffix('-14'),
        pathlib.Path('/mnt/f/compiler_tools/mlir14/install/usr/bin') / name,
        pathlib.Path('/mnt/f/compiler_tools/mlir14/install/usr/lib/llvm-14/bin') / name.removesuffix('-14'),
    ])
    for candidate in candidates:
        if candidate.is_file() and os.access(candidate, os.X_OK):
            return str(candidate)
    raise SystemExit(
        f'{name} not found; install mlir-14-tools or set MLIR_TOOLS_DIR'
    )


mlir_opt = find_tool('mlir-opt-14')
mlir_translate = find_tool('mlir-translate-14')
cases = {
    'wrong_expected_checksum': (base/'scalar_17/input.mlir', '%expected = arith.constant 408', '%expected = arith.constant 409'),
    'corrupt_vector_add': (base/'vector_17/input.mlir', '%v = arith.addi %x, %y : vector<4xi32>', '%v = arith.subi %x, %y : vector<4xi32>'),
}
rows = []
for name,(original,before,after) in cases.items():
    folder = out/name
    folder.mkdir(exist_ok=True)
    text=original.read_text()
    assert before in text
    src=folder/'mutated.mlir'
    src.write_text(text.replace(before,after))
    llvm=folder/'lowered.mlir'
    ll=folder/'program.ll'
    exe=folder/'program'
    commands=[
        [mlir_opt,str(src),'--lower-affine','--convert-scf-to-std','--convert-vector-to-llvm','--convert-memref-to-llvm','--convert-arith-to-llvm','--convert-std-to-llvm','--reconcile-unrealized-casts','-o',str(llvm)],
        [mlir_translate,str(llvm),'--mlir-to-llvmir','-o',str(ll)],
        ['clang','-O2',str(ll),'-o',str(exe)],
    ]
    log=[]
    for args in commands:
        run=subprocess.run(args,capture_output=True,text=True)
        log.append(' '.join(args)+'\n'+run.stdout+run.stderr)
        assert run.returncode==0
    run=subprocess.run([str(exe)])
    assert run.returncode==1, 'wrong result was not rejected'
    (folder/'commands.log').write_text('\n'.join(log))
    rows.append(dict(control=name,expected_exit=1,actual_exit=run.returncode,status='DETECTED'))
with (out/'results.csv').open('w',newline='') as f:
    writer=csv.DictWriter(f,fieldnames=list(rows[0]))
    writer.writeheader()
    writer.writerows(rows)
print('MLIR_NEGATIVE_CONTROLS_PASS detected=2 total=2')
