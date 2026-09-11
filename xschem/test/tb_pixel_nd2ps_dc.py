import pytest
from spicelib import RawRead
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.lines import Line2D

MIN_VOLTAGE = 2.0
MIN_GAIN = 0.70
TYP_GAIN = 0.75
MAX_GAIN = 0.80

VOLTAGES = ["v(out)","v(out_parax)"]
COLORS   = ["aqua","blue"]

plt.rcParams['lines.linewidth'] = 0.5

@pytest.fixture
def data():
    raw_data = RawRead("../simulation/tb_pixel_nd2ps_dc.raw",dialect="ngspice")
    return raw_data

@pytest.fixture
def steps(data):
    return range(len(data.plots))


@pytest.mark.parametrize("trace",VOLTAGES)
def test_voltage_gain(data,steps,trace):
    for i in steps:
        plot = data.plots[i]
        axis = plot.get_trace(0).get_wave()
        voltage = plot.get_trace(trace).get_wave()

        mask = axis > MIN_VOLTAGE

        g,_ = np.polyfit(axis[mask],voltage[mask],1)

        assert g > MIN_GAIN, f"Minimum gain not met for {trace}, step {i}"
        assert g < MAX_GAIN, f"Maximum gain not met for {trace}, step {i}"


def test_plot_voltage(data,steps):
    plt.figure()
    for c,col in zip(VOLTAGES,COLORS):
        for i in steps:
            current_plot = data.plots[i]
            axis = current_plot.get_trace(0).get_wave()
            voltage = current_plot.get_trace(c).get_wave()
            plt.plot(axis,voltage,col)

    valA = voltage[(np.abs(axis - 2.0)).argmin()]
    valB = voltage[(np.abs(axis - 3.0)).argmin()]    
    plt.hlines(valA,2.0,3.0,"r")
    plt.vlines(3.0,valA,valB,"r")
    plt.text(3.0,valA,f"g={TYP_GAIN:.2f}",c="r",va="top")

    plt.grid(which="both")  
    handles = [
        Line2D([0], [0], color=color, lw=2, label=current)
        for current, color in zip(VOLTAGES, COLORS)
    ]

    plt.legend(handles=handles)
    plt.xlabel("Diode Voltage [V]")
    plt.ylabel("Output Voltage [A]")
    plt.savefig("tb_pixel_nd2ps_dc.png")
