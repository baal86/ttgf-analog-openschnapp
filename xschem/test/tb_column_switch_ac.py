import pytest
from spicelib import RawRead
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.lines import Line2D

MAX_FREQUENCY = 1e6
MIN_TRANSFER  = 0.70
MIN_ISOLATION = 1e-4

VOLTAGES    = ["v(bus)","v(bus_parax)"]
COLORS_OFF  = ["aqua","blue"]
COLORS_ON   = ["teal","navy"]

plt.rcParams['lines.linewidth'] = 0.5

@pytest.fixture
def data():
    raw_data = RawRead("../simulation/tb_column_switch_ac.raw",dialect="ngspice")
    return raw_data

@pytest.mark.parametrize("trace_v",VOLTAGES)
def test_min_transfer(data,trace_v):
    for i in range(10,20):
        plot = data.plots[i]
        axis = plot.get_trace(0).get_wave()
        voltage = plot.get_trace(trace_v).get_wave()

        mask = axis < MAX_FREQUENCY

        ok = np.all(voltage[mask] >= MIN_TRANSFER)
        assert ok, f"Minimum transfer gain not met for {trace_v}, step {i}"

@pytest.mark.parametrize("trace_v",VOLTAGES)
def test_min_isolation(data,trace_v):
    for i in range(0,10):
        plot = data.plots[i]
        axis = plot.get_trace(0).get_wave()
        voltage = plot.get_trace(trace_v).get_wave()

        ok = np.all(voltage <= MIN_ISOLATION)
        assert ok, f"Minimum isolation gain not met for {trace_v}, step {i}"


def test_plot_transfer(data):
    plt.figure()
    for v,col_on,col_off in zip(VOLTAGES,COLORS_ON,COLORS_OFF):
        for i in range(0,10):
            plot = data.plots[i]
            axis =    plot.get_trace(0).get_wave()
            voltage = plot.get_trace(v).get_wave()
            plt.loglog(axis,voltage,col_on)
        for i in range(10,20):
            plot = data.plots[i]
            axis =    plot.get_trace(0).get_wave()
            voltage = plot.get_trace(v).get_wave()
            plt.loglog(axis,voltage,col_off)

    plt.hlines(MIN_TRANSFER,1e0,MAX_FREQUENCY,"r")
    plt.hlines(MIN_ISOLATION,1e0,1e8,"r")
    plt.xlim(1e0,1e8)
    plt.ylim(1e-11,1e1)

    plt.grid(which="both")  
    handles = [
        Line2D([0], [0], color=color, lw=2, label=transfer_function)
        for transfer_function, color in [
                ("v(bus) @ ON", "aqua"),
                ("v(bus_parax) @ ON", "blue"),
                ("v(bus) @ OFF", "teal"),
                ("v(bus_parax) @ OFF", "navy"),
             ]
    ]

    plt.xlabel("Frequency [Hz]")
    plt.ylabel("Transfer Function [1]")

    plt.legend(handles=handles, loc="lower right")
    plt.savefig("tb_column_switch_ac.png")