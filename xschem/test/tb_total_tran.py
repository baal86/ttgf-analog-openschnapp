import pytest
from spicelib import RawRead
import matplotlib.pyplot as plt
import numpy as np

NROWS    = 17
NCOLUMNS = 21
FIRST_PIXEL = 1213
DT_PIXEL = 10

plt.rcParams['lines.linewidth'] = 0.5

@pytest.fixture
def data():
    raw_data = RawRead("../simulation/tb_total_tran.raw",dialect="ngspice")
    return raw_data


def test_plot_samples(data):
    plt.figure(figsize=[6.4*1.5, 4.8])

    
    plot = data.plots[0]
    axis = plot.get_trace(0).get_wave()
    voltage = plot.get_trace("v(out)").get_wave()

    rimage = [[0.0] * NCOLUMNS for _ in range(NROWS)]
    qimage = [[0] * NCOLUMNS for _ in range(NROWS)]

    for y in range(NROWS):
        for x in range(NCOLUMNS):
            IPIX = x * NROWS + y
            tst = FIRST_PIXEL + DT_PIXEL * IPIX
            idx = (np.abs(axis - tst * 1e-6)).argmin()
            rval = voltage[idx]
            rimage[y][x] = float(rval)
            qval = int(rval / 3.3 * 2**12)
            qimage[y][x] = int(qval)
            
    plt.subplot(1,2,1)
    plt.title("Analog Image")
    plt.imshow(rimage)
    plt.subplot(1,2,2)
    plt.title("12-bit Quantized Image")
    plt.imshow(qimage)
    plt.savefig("tb_total_tran.png")
