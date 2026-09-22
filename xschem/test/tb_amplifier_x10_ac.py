import pytest
from spicelib import RawRead
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.lines import Line2D

MIN_BANDWIDTH    = 1e6
MIN_PHASE_MARGIN = 45

OLTFS      = ["oltf","oltf_parax"]
COLORS     = ["aqua","blue"]

plt.rcParams['lines.linewidth'] = 0.5

@pytest.fixture
def data():
    raw_data = RawRead("../simulation/tb_amplifier_x10_ac.raw",dialect="ngspice")
    rt = []
    for trace in OLTFS:
        rt += [(
                trace,
                dict(zip(OLTFS,COLORS))[trace],
                i,
                raw_data.plots[i].get_trace(0).get_wave(),
                raw_data.plots[i].get_trace(trace).get_wave())
                for i in range(len(raw_data.plots))]
    return rt

@pytest.fixture
def bandwidth(data):
    rt = []
    for _,_,_,axis,trace in data:
        idx = np.where(np.diff(np.sign(np.abs(trace) - 1)) != 0)[0][0]
        f  = axis[idx]
        rt += [f]
    return rt

@pytest.fixture
def phase_margin(data):
    rt = []
    for _,_,_,_,trace in data:
        idx = np.where(np.diff(np.sign(np.abs(trace) - 1)) != 0)[0][0]
        pm = np.angle(trace,deg=True)[idx]
        rt += [pm]
    return rt

def test_min_bandwidth(bandwidth):
    assert all(b > MIN_BANDWIDTH for b in bandwidth),"Minimum bandwidth requirement not met"

def test_min_phase_margin(phase_margin):
    assert all(p > MIN_PHASE_MARGIN for p in phase_margin),"Minimum phase marging requirement not met"

def test_plot_impedance(data,bandwidth,phase_margin):
    plt.figure()

    fig,(mag,phs)=plt.subplots(2,1,sharex=True)
    plt.subplots_adjust(hspace=0.05)
    
    for _,color,_,axis,trace in data:
        mag.semilogx(axis,20 * np.log10(np.abs(trace)),color)
        phs.semilogx(axis,np.angle(trace,deg=True),color)

    mag.grid(True,which="both")
    mag.tick_params(axis="x", which="both", bottom=False, labelbottom=False)
    mag.set_ylabel("Amplitude [dB]")
    mag.set_ylim(-40,100)
    mag.vlines(sum(bandwidth)/len(bandwidth),-40,100,"r")
    
    phs.set_ylim(-200,200)
    phs.grid(True,which="both")
    phs.set_ylabel("Phase [°]")
    phs.set_xlabel("Frequency [Hz]")
    phs.vlines(sum(bandwidth)/len(bandwidth),-200,200,"r")
    phs.hlines(sum(phase_margin)/len(phase_margin),1e3,1e9,"r")
    phs.set_xlim(1e3,1e9)

    handles = [
        Line2D([0], [0], color=color, lw=2, label=impedance)
        for impedance, color in zip(OLTFS, COLORS)
    ]

    plt.legend(handles=handles)
    fig.suptitle("Amplifier, G=-10 Inverting Configuration")
    plt.savefig("tb_amplifier_x10_ac.png")