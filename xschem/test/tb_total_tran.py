import pytest
from spicelib import RawRead
import matplotlib.pyplot as plt
import numpy as np

NROWS    = 17
NCOLUMNS = 21
FIRST_PIXEL = 200
DT_PIXEL = 10
CDS_TIME = 5000

plt.rcParams['lines.linewidth'] = 0.5

@pytest.fixture
def data():
    raw_data = RawRead("../simulation/tb_total_tran.raw",dialect="ngspice")
    return raw_data

def test_plot_samples(data):
    plt.figure(figsize=[6.4, 4.8])

    
    plot = data.plots[0]
    axis = plot.get_trace(0).get_wave()
    voltage = plot.get_trace("v(out)").get_wave()

    d1image = [[0.0] * NCOLUMNS for _ in range(NROWS)]

    print(FIRST_PIXEL + DT_PIXEL * 0 + (DT_PIXEL / 4.0 * 3.0))
    for y in range(NROWS):
        for x in range(NCOLUMNS):
            IPIX = x * NROWS + y
            tst = FIRST_PIXEL + DT_PIXEL * IPIX + (DT_PIXEL / 4.0 * 3.0)
            idx = (np.abs(axis - tst * 1e-6)).argmin()
            rval = voltage[idx]
            qval = int(rval / 3.3 * 2**12)
            d1image[y][x] = qval

    d2image = [[0.0] * NCOLUMNS for _ in range(NROWS)]

    print(FIRST_PIXEL + CDS_TIME + DT_PIXEL * 0 + (DT_PIXEL / 4.0 * 3.0))
    for y in range(NROWS):
        for x in range(NCOLUMNS):
            IPIX = x * NROWS + y
            tst = FIRST_PIXEL + CDS_TIME + DT_PIXEL * IPIX + (DT_PIXEL / 4.0 * 3.0)
            idx = (np.abs(axis - tst * 1e-6)).argmin()
            rval = voltage[idx]
            qval = int(rval / 3.3 * 2**12)
            d2image[y][x] = qval
            
    plt.title("CDS Frame, 12-bit Quantized")
    plt.imshow(np.array(d2image)-np.array(d1image))
    plt.savefig("tb_total_tran.png")
