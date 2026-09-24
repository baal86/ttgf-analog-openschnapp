## Signal Processing
Using the basic OP-amp building block, a signal processing chain is built, containing two stages.

1) A unity gain buffer to isolate the pixel array source follower from the inverting amplifier input impedance.
2) A gain x10 inverting amplifier amplifying the difference voltage between pixel array and dummy pixel.

![Schematics](../../xschem/docs/ip_sigproc.png)

### Transient Simulation
The transient behavior is simulated for the worst case detector signal with a swing of $0.1V$ relative to a dummy pixel reference of $1.0V$. The OP amp has been thoroughly simulated so here only the correct choice of POLY resistors needs to be validated.

![Signal Processing](../../xschem/docs/tb_sigproc_tran.png)
