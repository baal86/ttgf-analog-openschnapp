#!/usr/bin/env python3

from pathlib import Path
import re
import sys

HERE = Path.cwd()

# Primitive GF180 cell prefixes.
# Add/remove prefixes here as needed.
PRIMITIVE_PREFIXES = (
    "nfet_",
    "pfet_",
    "nmoscap_",
    "pmoscap_",
    "ppolyf_",
    "npolyf_",
    "cap_",
    "diode_",
    "nwell_",
    "pwell_",
    "res_",
    "rpoly_",
    "rppoly_",
    "rhighpoly_",
    "rlpoly_",
)

# Magic .mag hierarchy references:
#     use <cellname>
USE_RE = re.compile(r"^\s*use\s+(\S+)", re.MULTILINE)


def is_primitive(name):
    """Return True if this is one of the primitive cell families we care about."""
    return name.startswith(PRIMITIVE_PREFIXES)


# Find IP layout files.
ip_files = sorted(HERE.glob("ip_*.mag"))

used_primitives = set()

for mag_file in ip_files:
    try:
        text = mag_file.read_text(errors="replace")
    except OSError as e:
        print(f"ERROR: cannot read {mag_file}: {e}", file=sys.stderr)
        sys.exit(1)

    for match in USE_RE.finditer(text):
        cell = match.group(1)

        if is_primitive(cell):
            used_primitives.add(cell)


# Existing primitive .mag files.
#
# Only files whose names look like one of our primitive families
# are considered here. This means arbitrary IP blocks and logic
# cells do not count as "superfluous".
available_primitives = {
    p.stem
    for p in HERE.glob("*.mag")
    if is_primitive(p.stem)
}

missing = sorted(used_primitives - available_primitives)
superfluous = sorted(available_primitives - used_primitives)


print("=== PRIMITIVE COMPONENT CHECK ===")
print(f"IP files checked       : {len(ip_files)}")
print(f"Primitives referenced  : {len(used_primitives)}")
print(f"Primitive .mag files   : {len(available_primitives)}")
print()

print("=== MISSING PRIMITIVE .mag FILES ===")

if missing:
    for cell in missing:
        print(f"  {cell}.mag")
else:
    print("  None")

print()
print("=== SUPERFLUOUS PRIMITIVE .mag FILES ===")

if superfluous:
    for cell in superfluous:
        print(f"  {cell}.mag")
else:
    print("  None")

print()

if missing or superfluous:
    print("FAIL")
    sys.exit(1)

print("OK")
sys.exit(0)