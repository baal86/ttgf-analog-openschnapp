import pytest
from spicelib import RawRead
import matplotlib.pyplot as plt

CURRENTS = [0.0 , 8e-12, 16e-12, 24e-12, 32e-12]
COLORS   = ["aqua","blue","teal", "navy", "royalblue"]

plt.rcParams['lines.linewidth'] = 0.5

@pytest.fixture
def data():
    raw_data = RawRead("../simulation/tb_pixel_nd2ps_tran.raw",dialect="ngspice")
    return raw_data


def test_plot_voltage(data):
    plt.figure(figsize= [6.4, 4.8*2])
    plt.subplot(2,1,1)
    for n,i,col in zip(range(len(CURRENTS)),CURRENTS,COLORS):
        current_plot = data.plots[n]
        axis = current_plot.get_trace(0).get_wave()
        voltage = current_plot.get_trace("v(inj)").get_wave()
        reset = current_plot.get_trace("v(reset)").get_wave()
        read = current_plot.get_trace("v(read)").get_wave()
        plt.plot(axis,voltage,col,label=f"V(inj) @ {i*1e12:.0f}pA")
    plt.plot(axis,reset,"red",label="V(reset)")
    plt.plot(axis,read,"maroon",label="V(read)")

    plt.xlabel("Time [s]")
    plt.ylabel("Voltage [V]")
    plt.legend(loc="lower center")

    plt.subplot(2,1,2)
    for n,i,col in zip(range(len(CURRENTS)),CURRENTS,COLORS):
        current_plot = data.plots[n]
        axis = current_plot.get_trace(0).get_wave()
        voltage = current_plot.get_trace("v(out)").get_wave()
        read = current_plot.get_trace("v(read)").get_wave()

        mask = (axis > 0.98e-3) & (axis < 1.03e-3)

        plt.plot(axis[mask],voltage[mask],col,label=f"V(inj) @ {i*1e12:.0f}pA")
    plt.plot(axis[mask],read[mask],"maroon",label="V(read)")

    plt.xlabel("Time [s]")
    plt.ylabel("Voltage [V]")
    plt.legend(loc="upper right")

    plt.savefig("tb_pixel_nd2ps_tran.png")