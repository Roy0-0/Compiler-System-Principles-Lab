"""Generate version-pinned MLIR experiments and validate native execution."""
import csv
import hashlib
import json
import os
import pathlib
import shutil
import subprocess
import time

PROJECT = pathlib.Path(__file__).resolve().parent.parent
ROOT = PROJECT / 'mlir_ascend' / 'upstream_experiments'

def find_tool(name):
    tools_dir = os.environ.get('MLIR_TOOLS_DIR')
    candidates = []
    if tools_dir:
        candidates.append(pathlib.Path(tools_dir) / name)
    path_match = shutil.which(name)
    if path_match:
        candidates.append(pathlib.Path(path_match))
    candidates.extend([
        PROJECT.parent / 'tools/mlir14/usr/bin' / name,
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


OPT = find_tool('mlir-opt-14')
TRANSLATE = find_tool('mlir-translate-14')

def command(args, log):
    run = subprocess.run(args, capture_output=True, text=True)
    log.write_text('$ ' + ' '.join(map(str, args)) + '\n' + run.stdout + run.stderr)
    if run.returncode:
        raise RuntimeError(f'command failed {run.returncode}: {log}')
    return run

def source(n, vector):
    vector_end = n - n % 4
    scalar = '''
    affine.for %i = START to END {
      %x = affine.load %a[%i] : memref<Nxi32>
      %y = affine.load %b[%i] : memref<Nxi32>
      %v = arith.addi %x, %y : i32
      affine.store %v, %c[%i] : memref<Nxi32>
    }
'''
    if vector:
        kernel = f'''
    affine.for %i = 0 to {vector_end} step 4 {{
      %x = vector.load %a[%i] : memref<{n}xi32>, vector<4xi32>
      %y = vector.load %b[%i] : memref<{n}xi32>, vector<4xi32>
      %v = arith.addi %x, %y : vector<4xi32>
      vector.store %v, %c[%i] : memref<{n}xi32>, vector<4xi32>
    }}
''' + scalar.replace('START', str(vector_end)).replace('END', str(n)).replace('N', str(n))
    else:
        kernel = scalar.replace('START', '0').replace('END', str(n)).replace('N', str(n))
    return f'''module {{
  func @main() -> i32 {{
    %a = memref.alloc() : memref<{n}xi32>
    %b = memref.alloc() : memref<{n}xi32>
    %c = memref.alloc() : memref<{n}xi32>
    %zero = arith.constant 0 : i32
    %two = arith.constant 2 : i32
    %expected = arith.constant {3*n*(n-1)//2} : i32
    %ok = arith.constant 0 : i32
    %bad = arith.constant 1 : i32
    affine.for %i = 0 to {n} {{
      %idx = arith.index_cast %i : index to i32
      %twice = arith.muli %idx, %two : i32
      affine.store %idx, %a[%i] : memref<{n}xi32>
      affine.store %twice, %b[%i] : memref<{n}xi32>
    }}
{kernel}
    %sum = affine.for %i = 0 to {n} iter_args(%acc = %zero) -> i32 {{
      %value = affine.load %c[%i] : memref<{n}xi32>
      %next = arith.addi %acc, %value : i32
      affine.yield %next : i32
    }}
    %equal = arith.cmpi eq, %sum, %expected : i32
    %status = select %equal, %ok, %bad : i32
    memref.dealloc %a : memref<{n}xi32>
    memref.dealloc %b : memref<{n}xi32>
    memref.dealloc %c : memref<{n}xi32>
    return %status : i32
  }}
}}
'''

def main():
    ROOT.mkdir(parents=True, exist_ok=True)
    pipelines = {
        'baseline': [],
        'canonicalize': ['--canonicalize'],
        'cse': ['--cse'],
        'canonicalize_cse': ['--canonicalize', '--cse'],
        'unroll4': ['--affine-loop-unroll=unroll-factor=4', '--canonicalize', '--cse'],
    }
    rows = []
    for n in (1, 16, 17, 64, 257):
        for mode in ('scalar', 'vector'):
            case = ROOT / f'{mode}_{n}'
            case.mkdir(exist_ok=True)
            input_file = case / 'input.mlir'
            input_file.write_text(source(n, mode == 'vector'))
            command([OPT, str(input_file), '--verify-each', '-o', str(case/'parsed.mlir')], case/'parse.log')
            for name, passes in pipelines.items():
                folder = case / name
                folder.mkdir(exist_ok=True)
                optimized = folder/'01_optimized.mlir'
                scf = folder/'02_scf.mlir'
                cfg = folder/'03_cfg.mlir'
                llvm = folder/'04_llvm.mlir'
                ll = folder/'05_program.ll'
                command([OPT, str(input_file), *passes, '--verify-each', '--print-ir-after-all', '-o', str(optimized)], folder/'01_passes.log')
                command([OPT, str(optimized), '--lower-affine', '--verify-each', '-o', str(scf)], folder/'02_lower_affine.log')
                command([OPT, str(scf), '--convert-scf-to-std', '--verify-each', '-o', str(cfg)], folder/'03_lower_scf.log')
                command([OPT, str(cfg), '--convert-vector-to-llvm', '--convert-memref-to-llvm', '--convert-arith-to-llvm', '--convert-std-to-llvm', '--reconcile-unrealized-casts', '--verify-each', '-o', str(llvm)], folder/'04_lower_llvm.log')
                command([TRANSLATE, str(llvm), '--mlir-to-llvmir', '-o', str(ll)], folder/'05_translate.log')
                command(['opt', '-verify', str(ll), '-disable-output'], folder/'06_verify.log')
                exe = folder/'program'
                command(['clang', '-O2', str(ll), '-o', str(exe)], folder/'07_link.log')
                for repeat in range(1, 4):
                    begin = time.perf_counter_ns()
                    run = subprocess.run([str(exe)], capture_output=True, text=True)
                    elapsed = time.perf_counter_ns() - begin
                    if run.returncode != 0:
                        raise RuntimeError(f'checksum failure: {exe}')
                    rows.append(dict(mode=mode,n=n,pipeline=name,round=repeat,expected_checksum=3*n*(n-1)//2,status='PASS',process_ns=elapsed,optimized_bytes=optimized.stat().st_size,llvm_bytes=ll.stat().st_size))
            print(f'CASE_PASS mode={mode} n={n} pipelines=5 runs=15', flush=True)
    with (ROOT/'results.csv').open('w', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)
    summary = {'cases':10,'pipelines':5,'rounds':3,'executions':len(rows),'failures':0,'mlir_opt':OPT,'mlir_translate':TRANSLATE,'target':'x86_64 CPU','ascend_vendor_execution':False}
    (ROOT/'summary.json').write_text(json.dumps(summary, indent=2))
    manifest = []
    for path in sorted(ROOT.rglob('*')):
        if path.is_file() and path.name != 'manifest.sha256':
            manifest.append(hashlib.sha256(path.read_bytes()).hexdigest()+'  '+str(path.relative_to(ROOT)))
    (ROOT/'manifest.sha256').write_text('\n'.join(manifest)+'\n')
    print('MLIR_EXPLORATION_PASS executions=150 failures=0', flush=True)

if __name__ == '__main__':
    main()
