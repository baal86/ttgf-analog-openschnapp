import cocotb
from cocotb.triggers import Timer

CLOCK_PERIOD = 10000    # ns
YLENGTH = 17

async def apply_and_clock(dut, sel: int) -> int:
    dut.clk.value = 0
    dut.A.value = sel
    await Timer(CLOCK_PERIOD/2, unit="ns")
    dut.clk.value = 1
    await Timer(CLOCK_PERIOD/2, unit="ns")
    return dut.Y.value

@cocotb.test()
@cocotb.parametrize(a=range(1,YLENGTH+1))
async def test_all_codes_enabled(dut,a):
    y = await apply_and_clock(dut,a)
    assert y == 1 << (a-1)

@cocotb.test()
@cocotb.parametrize(a=range(1,YLENGTH+1))
async def test_only_one_bit_set(dut,a):
    y = await apply_and_clock(dut,a)
    popcount = bin(y).count("1")
    assert popcount == 1

@cocotb.test()
async def test_zero_code_enabled(dut):
    y = await apply_and_clock(dut,0)
    assert y == 0