import pytest
from spicelib import RawRead
import matplotlib.pyplot as plt
import numpy as np

MIN_DC = 0.5
MIN_CURRENT = 0.8 * 1.0e-6
MAX_CURRENT = 1.2 * 1.0e-6

@pytest.fixture
def data():
    raw_data = RawRead("../simulation/tb_current_source_dc.raw",dialect="ngspice")
    return raw_data

@pytest.fixture
def steps(data):
    return range(len(data.plots))

@pytest.mark.parametrize("trace",["i(vimir)","i(vimir1)"])
def test_minmax_current(data,steps,trace):
    for i in steps:
        plot = data.plots[i]
        axis = plot.get_trace(0).get_wave()
        current = plot.get_trace(trace).get_wave()

        mask = axis > MIN_DC

        ok = np.all(current[mask] >= MIN_CURRENT)
        assert ok, f"Minimum current not met for {trace}, step {i}"

        ok = np.all(current <= MAX_CURRENT)
        assert ok, f"Maximum current not met for {trace}, step {i}"


def test_plot_current(data,steps):
    plt.figure()
    for i in steps:
        current_plot = data.plots[i]
        axis = current_plot.get_trace(0).get_wave()
        current = current_plot.get_trace("i(vimir)").get_wave()
        plt.plot(axis,current,"b")
        current = current_plot.get_trace("i(vimir1)").get_wave()
        plt.plot(axis,current,"g")
    plt.hlines(MIN_CURRENT,MIN_DC,3.3,"r")
    plt.hlines(MAX_CURRENT,0.0,3.3,"r")

    plt.savefig("tb_current_source_dc.png")