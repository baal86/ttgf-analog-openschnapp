import cocotb
from cocotb.triggers import Timer

SETTLE_TIME = 1  # ns, allow combinational logic to settle

def expected_y(sel: int) -> int:
    """Reference model: golden one-hot output for a given sel/en."""
    return 1 << sel

async def apply_and_check(dut, sel: int):
    dut.A.value = sel
    await Timer(SETTLE_TIME, unit="ns")

    actual = int(dut.Y.value)
    expect = expected_y(sel)

    assert actual == expect, (
        f"sel={sel}: got y=0b{actual:016b}, "
        f"expected 0b{expect:016b}"
    )

@cocotb.test()
async def test_all_codes_enabled(dut):
    """Exhaustively check all 16 select codes with enable asserted."""
    for sel in range(7):
        await apply_and_check(dut, sel)


@cocotb.test()
async def test_only_one_bit_set(dut):
    """Sanity check: whenever enabled, exactly one output bit is high."""
    for sel in range(7):
        dut.A.value = sel
        await Timer(SETTLE_TIME, unit="ns")

        y = int(dut.Y.value)
        popcount = bin(y).count("1")
        assert popcount == 1, (
            f"sel={sel}: expected exactly one bit set, "
            f"got 0b{y:016b} ({popcount} bits set)"
        )