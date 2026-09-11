import pytest
from spicelib import RawRead
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.lines import Line2D

MIN_DIODE_VOLTAGE = 2.25
MAX_DIODE_VOLTAGE = 2.35
MIN_OUTPUT_VOLTAGE = 1.0
MAX_OUTPUT_VOLTAGE = 1.2

DIODE_VOLTAGES  = ["v(x1.siminj)","v(x3.siminj)"]
OUTPUT_VOLTAGES = ["v(out)","v(out_parax)"]
COLORS          = ["aqua","blue"]

plt.rcParams['lines.linewidth'] = 0.5

@pytest.fixture
def data():
    raw_data = RawRead("../simulation/tb_pixel_nd2ps_dc_reset.raw",dialect="ngspice")
    return raw_data

@pytest.fixture
def steps(data):
    return range(len(data.plots))

@pytest.mark.parametrize("trace",DIODE_VOLTAGES)
def test_diode_voltage_level(data,steps,trace):
    for i in steps:
        plot = data.plots[i]
        voltage = plot.get_trace(trace).get_wave()

        v = np.average(voltage)

        assert v > MIN_DIODE_VOLTAGE, f"Minimum diode reset voltage not met for {trace}, step {i}"
        assert v < MAX_DIODE_VOLTAGE, f"Maximum diode reset votlage not met for {trace}, step {i}"

@pytest.mark.parametrize("trace",OUTPUT_VOLTAGES)
def test_output_voltage_level(data,steps,trace):
    for i in steps:
        plot = data.plots[i]
        voltage = plot.get_trace(trace).get_wave()

        v = np.average(voltage)

        assert v > MIN_OUTPUT_VOLTAGE, f"Minimum output reset voltage not met for {trace}, step {i}"
        assert v < MAX_OUTPUT_VOLTAGE, f"Maximum output reset votlage not met for {trace}, step {i}"


def test_plot_voltage(data,steps):
    plt.figure(figsize= [6.4, 4.8*2])

    plt.subplot(2,1,1)
    for c,col in zip(DIODE_VOLTAGES,COLORS):
        vs = []
        for i in steps:
            plot = data.plots[i]
            voltage = plot.get_trace(c).get_wave()
            v = np.average(voltage)
            vs += [v]
        
        plt.hist(vs,bins=20,color=col,label=f"{c}; μ={np.average(vs):.2f}V")
        plt.vlines([MIN_DIODE_VOLTAGE,MAX_DIODE_VOLTAGE],0,25,color="r")

        plt.legend()
        plt.xlabel("Diode Reset Level [V]")
        plt.ylabel("Count [1]")

    plt.subplot(2,1,2)
    for c,col in zip(OUTPUT_VOLTAGES,COLORS):
        vs = []
        for i in steps:
            plot = data.plots[i]
            voltage = plot.get_trace(c).get_wave()
            v = np.average(voltage)
            vs += [v]
        
        plt.hist(vs,bins=20,color=col,label=f"{c}; μ={np.average(vs):.2f}V")
        plt.vlines([MIN_OUTPUT_VOLTAGE,MAX_OUTPUT_VOLTAGE],0,25,color="r")

        plt.legend()
        plt.xlabel("Output Reset Level [V]")
        plt.ylabel("Count [1]")

    plt.savefig("tb_pixel_nd2ps_dc_reset.png")
