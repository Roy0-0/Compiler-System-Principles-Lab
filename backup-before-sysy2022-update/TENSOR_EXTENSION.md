# Provisional tensor extension

The assignment names `tensor type` as an optional SysY feature, but the supplied
files do not define its grammar or semantics. This project therefore uses a
small, explicit extension that can be replaced once the official definition is
available.

## Syntax

```text
TensorType ::= "tensor" "<" "float" "," IntegerConstant "," IntegerConstant ">"
```

Only rank-2, statically shaped float tensors are used in this example:

```text
tensor<float, 2, 3> value;
```

Global tensor initializers use nested array initializer syntax. Tensor function
parameters are passed by reference. Element access uses `value[row][column]`.

## Semantics and lowering

`tensor<float, R, C>` has a fixed row-major layout of `R * C` IEEE-754
single-precision values. The example lowers it as follows:

| Extended SysY | C-compatible form | LLVM IR form |
| --- | --- | --- |
| local/global tensor | `float value[R][C]` | `[R x [C x float]]` |
| tensor parameter | `float value[][C]` | `[C x float]*` |
| element access | `value[r][c]` | nested `getelementptr` or flattened GEP |

`lower_tensor.py` implements this lowering for the declarations used by
`advanced_complete.esy`. It is deliberately small and rejects any tensor form
outside this documented subset.

## Covered operations

The example covers declaration, nested initialization, parameter passing,
element access, float multiplication, and reduction through a tensor dot
product. It does not claim compatibility with an unspecified official tensor
extension.
