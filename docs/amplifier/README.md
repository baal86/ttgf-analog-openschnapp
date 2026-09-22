## Current Source
A basic OP-amp building block for use in signal processing circuitry. Compensation using `PMOSCAP` devices is not ideal and the design would benefit from the availability of `MIM` capacitors in gf180mcu Tiny Tapeout. The compensation is mid-point biased to `VDD` which brings the risk of poor power supply rejection. 

![Schematics](../../xschem/docs/ip_amplifier.png)

### Stability Simulation
The amplifier is compensated to work in two modes needed for the signal processing of the image sensor:

- Unity gain voltage follower
- x10 inverting amplifier 

DC bias for both configurations is simulated in the 0.5V to 1.5V range which is most useful for the signals at hand.

![x1 Mode](../../xschem/docs/tb_amplifier_x1_ac.png)

*Voltage Follower Configuration* 

![x10 Mode](../../xschem/docs/tb_amplifier_x10_ac.png)

*x10 Gain Inverting Amplifier Configuration* 

For both configurations a minimum phase margin of $45\deg$ is required with a typical goal of $60\deg$. Gain bandwidth product is design to be $>10MHz$.