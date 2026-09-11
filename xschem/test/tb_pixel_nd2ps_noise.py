import pytest
from spicelib import RawRead
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.lines import Line2D

TYP_RMS_NOISE = 36e-6

plt.rcParams['lines.linewidth'] = 0.5

@pytest.fixture
def data():
    raw_data = RawRead("../simulation/tb_pixel_nd2ps_noise.raw",dialect="ngspice")
    return raw_data

@pytest.fixture
def rms_noise(data):
    plot = data.plots[0]
    axis = plot.get_trace(0).get_wave()
    spectrum = plot.get_trace("onoise_spectrum").get_wave()
    power = np.trapezoid(spectrum * spectrum,axis)
    return np.sqrt(power)



def test_rms_noise(rms_noise):
    assert rms_noise == pytest.approx(TYP_RMS_NOISE,rel=0.05), f"Typical noise performance not achived. {rms_noise}"


def test_plot_noise(data,rms_noise):
    plt.figure()
    
    plot = data.plots[0]
    axis = plot.get_trace(0).get_wave()
    spectrum = plot.get_trace("onoise_spectrum").get_wave()
    plt.loglog(axis,spectrum,"b",label=f"${rms_noise * 1e6:.2f}μV_{{RMS}}$")
    plt.grid(which="both")
    plt.xlabel("Frequency [Hz]")
    plt.ylabel("Noise Spectral Density [V/√Hz]")
    plt.legend()
    plt.savefig("tb_pixel_nd2ps_noise.png")