#!/usr/bin/env python3
"""Lower the documented rank-2 tensor extension to C-compatible arrays."""

from pathlib import Path
import re
import sys


DECLARATION = re.compile(
    r"tensor\s*<\s*float\s*,\s*(\d+)\s*,\s*(\d+)\s*>\s+([A-Za-z_]\w*)"
)
PARAMETER = re.compile(
    r"tensor\s*<\s*float\s*,\s*(\d+)\s*,\s*(\d+)\s*>\s+([A-Za-z_]\w*)"
)


def lower(source: str) -> str:
    lines = source.splitlines()
    output: list[str] = [
        "float getfloat(void);",
        "void putfloat(float value);",
        "void putch(int value);",
        "",
    ]

    in_parameter_list = False
    for line in lines:
        stripped = line.lstrip()
        if "tensor<" in line:
            if stripped.startswith("tensor<") and "=" in line:
                line = DECLARATION.sub(
                    lambda match: (
                        f"float {match.group(3)}"
                        f"[{match.group(1)}][{match.group(2)}]"
                    ),
                    line,
                )
            else:
                line = PARAMETER.sub(
                    lambda match: f"float {match.group(3)}[][{match.group(2)}]",
                    line,
                )

        in_parameter_list = in_parameter_list or "(" in line
        if in_parameter_list and ")" in line:
            in_parameter_list = False
        output.append(line)

    lowered = "\n".join(output) + "\n"
    if "tensor<" in lowered:
        raise ValueError("unsupported tensor declaration remains after lowering")
    return lowered


def main() -> None:
    if len(sys.argv) != 3:
        raise SystemExit("usage: lower_tensor.py INPUT.esy OUTPUT.c")

    input_path = Path(sys.argv[1])
    output_path = Path(sys.argv[2])
    output_path.write_text(lower(input_path.read_text(encoding="utf-8")), encoding="utf-8")


if __name__ == "__main__":
    main()
