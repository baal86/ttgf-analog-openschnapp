import pytest
from spicelib import RawRead
import matplotlib.pyplot as plt
import numpy as np

NROWS    = 4
NCOLUMNS = 4
FIRST_PIXEL = 1.215e-3
DT_PIXEL = 10e-6

plt.rcParams['lines.linewidth'] = 0.5

@pytest.fixture
def data():
    raw_data = RawRead("../simulation/tb_total_tran.raw",dialect="ngspice")
    return raw_data


def test_plot_samples(data):
    plt.figure(figsize= [6.4, 4.8*2])

    plot = data.plots[0]
    axis = plot.get_trace(0).get_wave()
    voltage = plot.get_trace("v(out)").get_wave()

    for y in range(NROWS):
        for x in range(NCOLUMNS):
            tst = FIRST_PIXEL + DT_PIXEL * (x*4 + y)
            val = voltage[(np.abs(axis - tst)).argmin()]
            print(val)

    plt.savefig("tb_total_tran.png")
