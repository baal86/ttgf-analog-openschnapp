import pytest
from spicelib import RawRead
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.lines import Line2D

MIN_VOLTAGE = 0.5
MIN_CURRENT = 0.8e-6
MAX_CURRENT = 1.3e-6

CURRENTS = ["i(vimir)","i(vimir1)","i(vimir_parax)","i(vimir_parax1)"]
COLORS   = ["aqua","blue", "teal", "navy"]

plt.rcParams['lines.linewidth'] = 0.5

@pytest.fixture
def data():
    raw_data = RawRead("../simulation/tb_current_source_dc.raw",dialect="ngspice")
    return raw_data

@pytest.fixture
def steps(data):
    return range(len(data.plots))


@pytest.mark.parametrize("trace",CURRENTS)
def test_minmax_current(data,steps,trace):
    for i in steps:
        plot = data.plots[i]
        axis = plot.get_trace(0).get_wave()
        current = plot.get_trace(trace).get_wave()

        mask = axis > MIN_VOLTAGE

        ok = np.all(current[mask] >= MIN_CURRENT)
        assert ok, f"Minimum current not met for {trace}, step {i}"

        ok = np.all(current <= MAX_CURRENT)
        assert ok, f"Maximum current not met for {trace}, step {i}"


def test_plot_current(data,steps):
    plt.figure()
    for c,col in zip(CURRENTS,COLORS):
        for i in steps:
            current_plot = data.plots[i]
            axis = current_plot.get_trace(0).get_wave()
            current = current_plot.get_trace(c).get_wave()
            plt.plot(axis,current,col)
    plt.hlines(MIN_CURRENT,MIN_VOLTAGE,3.3,"r")
    plt.hlines(MAX_CURRENT,0.0,3.3,"r")

    plt.grid(which="both")  
    handles = [
        Line2D([0], [0], color=color, lw=2, label=current)
        for current, color in zip(CURRENTS, COLORS)
    ]

    plt.legend(handles=handles)
    plt.savefig("tb_current_source_dc.png")