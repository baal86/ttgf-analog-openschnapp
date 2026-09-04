import cocotb
from cocotb.triggers import Timer

CLOCK_PERIOD = 10000    # ns

@cocotb.test()
async def test_all(dut):
    dut.clk.value = 0
    dut.A.value = 0
    await Timer(CLOCK_PERIOD/2, unit="ns")
    dut.clk.value = 1
    await Timer(CLOCK_PERIOD/2, unit="ns")
    assert dut.Y.value == 0
    dut.clk.value = 0
    dut.A.value = 1
    await Timer(CLOCK_PERIOD/2, unit="ns")
    dut.clk.value = 1
    await Timer(CLOCK_PERIOD/2, unit="ns")
    assert dut.Y.value == 1