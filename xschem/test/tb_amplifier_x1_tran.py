import pytest
from spicelib import RawRead
import matplotlib.pyplot as plt

VOLTAGES = ["out","out_parax"]
COLORS   = ["aqua","blue"]

plt.rcParams['lines.linewidth'] = 0.5

@pytest.fixture
def data():
    raw_data = RawRead("../simulation/tb_amplifier_x1_tran.raw",dialect="ngspice")
    return raw_data

def test_plot_voltage(data):
    plt.figure()
    
    current_plot = data.plots[0]
    axis = current_plot.get_trace(0).get_wave()
    sig = current_plot.get_trace("v(sig)").get_wave()
    out = current_plot.get_trace("v(out)").get_wave()
    out_parax = current_plot.get_trace("v(out_parax)").get_wave()

    plt.plot(axis,sig,"maroon",label="V(sig)")
    plt.plot(axis,out,"aqua",label="V(out)")
    plt.plot(axis,out_parax,"blue",label="V(out_parax)")

    plt.xlabel("Time [s]")
    plt.ylabel("Voltage [V]")
    plt.legend(loc="upper right")
    plt.xlim(0,5e-5)
    plt.title("Amplifier Gain=1 Voltage Follower")

    plt.savefig("tb_amplifier_x1_tran.png")