#!/usr/bin/env python3
"""
Parse a Magic VLSI (.mag) layout file and report the device (cell) types
used, collapsing Magic's random per-instance suffix.

Magic writes each instantiated cell as a line like:
    use nfet_06v0_7SUWJ3  nfet_06v0_7SUWJ3_0

The trailing "_7SUWJ3" is a random 6-character tag Magic assigns per unique
parameter set, not a meaningful part of the device type. This script strips
that tag so "nfet_06v0_7SUWJ3", "nfet_06v0_L9ZDMB", "nfet_06v0_LMYCPE", ...
all collapse to a single device type "nfet_06v0", and prints a count of
instances per type.

Usage:
    python3 parse_mag_devices.py path/to/layout.mag [more.mag ...]
"""

import re
import sys
from collections import Counter, defaultdict

# Matches a "use <cellname> <instname>" line. The cellname is what we parse.
USE_RE = re.compile(r'^\s*use\s+(\S+)\s+(\S+)')

# Magic's random per-parameterization suffix: an underscore followed by
# exactly 6 alphanumeric characters at the end of the cell name.
SUFFIX_RE = re.compile(r'_[A-Za-z0-9]{6}$')


def device_type(cellname: str) -> str:
    """Strip Magic's trailing random suffix to get the base device type."""
    return SUFFIX_RE.sub('', cellname)


def parse_mag_file(path: str):
    """Return a list of (full_cellname, device_type) for every 'use' line."""
    devices = []
    with open(path, 'r') as f:
        for line in f:
            m = USE_RE.match(line)
            if m:
                cellname = m.group(1)
                devices.append((cellname, device_type(cellname)))
    return devices


def main(argv):
    if len(argv) < 2:
        print(f"Usage: {argv[0]} layout.mag [more.mag ...]", file=sys.stderr)
        return 1

    type_counts = Counter()
    variants_by_type = defaultdict(set)

    for path in argv[1:]:
        for cellname, dtype in parse_mag_file(path):
            type_counts[dtype] += 1
            variants_by_type[dtype].add(cellname)

    if not type_counts:
        print("No 'use' (device instance) lines found.")
        return 0

    for dtype in sorted(type_counts):
        print(dtype)
        for cellname in sorted(variants_by_type[dtype]):
            print(f"    {cellname}")

    print()
    print(f"Total device types:     {len(type_counts)}")
    print(f"Total sized variants:   {sum(len(v) for v in variants_by_type.values())}")
    print(f"Total instances:        {sum(type_counts.values())}")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
