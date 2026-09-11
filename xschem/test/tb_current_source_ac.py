import pytest
from spicelib import RawRead
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.lines import Line2D

MAX_FREQUENCY = 10e3
MIN_IMPEDANCE = 100e6

IMPEDANCES = ["zout","zout_parax"]
DATA       = [["v(vmir)","i(Vvmir)"],["v(vmir_parax)","i(Vvmir_parax)"]]
COLORS     = ["aqua","blue"]

plt.rcParams['lines.linewidth'] = 0.5

@pytest.fixture
def data():
    raw_data = RawRead("../simulation/tb_current_source_ac.raw",dialect="ngspice")
    return raw_data

@pytest.fixture
def steps(data):
    return range(len(data.plots))

@pytest.mark.parametrize("trace_v, trace_i",DATA)
def test_min_impedance(data,steps,trace_v,trace_i):
    for i in steps:
        plot = data.plots[i]
        axis = plot.get_trace(0).get_wave()
        voltage = plot.get_trace(trace_v).get_wave()
        current = plot.get_trace(trace_i).get_wave()
        impedance = np.abs(voltage / current)

        mask = axis < MAX_FREQUENCY

        ok = np.all(impedance[mask] >= MIN_IMPEDANCE)
        assert ok, f"Minimum impedance not met for {trace_v}/{trace_i}, step {i}"


def test_plot_impedance(data,steps):
    plt.figure()
    for dat,col in zip(DATA,COLORS):
        trace_v,trace_i = dat
        for i in steps:
            plot = data.plots[i]
            axis =    plot.get_trace(0).get_wave()
            voltage = plot.get_trace(trace_v).get_wave()
            current = plot.get_trace(trace_i).get_wave()
            impedance = np.abs(voltage / current)

            plt.loglog(axis,impedance,col)
    plt.hlines(MIN_IMPEDANCE,0.01,MAX_FREQUENCY,"r")
    plt.xlim(1e-2,1e6)
    plt.ylim(1e7,1e9)

    plt.grid(which="both")  
    handles = [
        Line2D([0], [0], color=color, lw=2, label=impedance)
        for impedance, color in zip(IMPEDANCES, COLORS)
    ]

    plt.xlabel("Frequency [Hz]")
    plt.ylabel("Output Impedance [Ω]")

    plt.legend(handles=handles)
    plt.savefig("tb_current_source_ac.png")