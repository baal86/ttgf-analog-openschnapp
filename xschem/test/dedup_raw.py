#!/usr/bin/env python3
"""
dedup_raw.py — Fix ngspice .raw files with duplicate variable names.

ngspice sometimes emits multiple variables with the identical name (e.g. several
`i(auto_dac4)` branch currents from auto-inserted/cosim instances that share a
netname). spicelib (and numpy structured arrays in general) require unique
field names, so parsing such a file fails with:

    ValueError: field 'i(auto_dac4)' occurs more than once

This script rewrites only the ASCII header of the raw file, suffixing repeated
names with _1, _2, ... in the order they appear, and leaves the binary data
block completely untouched. Works for both ASCII (Values:) and binary
(Binary:) raw files.

Usage:
    python3 dedup_raw.py input.raw [output.raw]

If output.raw is omitted, writes "<input>_dedup.raw" next to the input.
"""

import sys
from pathlib import Path


def dedup_raw(in_path: Path, out_path: Path) -> None:
    data = in_path.read_bytes()

    # Raw files end their header with either "Binary:\n" or "Values:\n"
    for marker in (b"Binary:\n", b"Values:\n"):
        idx = data.find(marker)
        if idx != -1:
            break
    else:
        raise ValueError("Could not find 'Binary:' or 'Values:' marker — "
                          "is this a valid ngspice raw file?")

    header = data[:idx].decode("ascii")
    rest = data[idx:]  # marker + body, copied through untouched

    lines = header.split("\n")
    out_lines = []
    seen = {}

    for line in lines:
        parts = line.split("\t")
        # Variable lines look like: ['', '2', 'i(auto_dac4)', 'current']
        if len(parts) == 4 and parts[1].strip().isdigit():
            name = parts[2]
            count = seen.get(name, 0)
            if count > 0:
                if name.endswith(")"):
                    new_name = f"{name[:-1]}_{count})"
                else:
                    new_name = f"{name}_{count}"
                parts[2] = new_name
            seen[name] = count + 1
            out_lines.append("\t".join(parts))
        else:
            out_lines.append(line)

    new_header = "\n".join(out_lines)
    out_path.write_bytes(new_header.encode("ascii") + rest)

    dupes = {name: c for name, c in seen.items() if c > 1}
    if dupes:
        print(f"Renamed {sum(c - 1 for c in dupes.values())} duplicate "
              f"variable(s) across {len(dupes)} name(s):")
        for name, c in dupes.items():
            if name.endswith(")"):
                renamed = [f"{name[:-1]}_{i})" for i in range(1, c)]
            else:
                renamed = [f"{name}_{i}" for i in range(1, c)]
            print(f"  {name}  ->  kept as {name}, plus {', '.join(renamed)}")
    else:
        print("No duplicate variable names found — file written unchanged.")

    print(f"Wrote: {out_path}")


def main():
    if len(sys.argv) not in (2, 3):
        print(__doc__)
        sys.exit(1)

    in_path = Path(sys.argv[1])
    if len(sys.argv) == 3:
        out_path = Path(sys.argv[2])
    else:
        out_path = in_path.with_name(f"{in_path.stem}_dedup{in_path.suffix}")

    dedup_raw(in_path, out_path)


if __name__ == "__main__":
    main()
