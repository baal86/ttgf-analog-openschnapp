## Pixel Design
The `nd2ps` diode pixel. Designed to be infinitely tiled with no routing in magic.

![Schematics](../../xschem/docs/ip_pixel_nd2ps.png)

### Calculations
<p>Generated from calculations.cpd sheet. Use with calcpadCE. </p>
<h4>Unit Definitions</h4> 
<p>We operate in the low current domain so we define fX units. </p>
<p><span class="eq"><i>ec</i> = 1.6 · 10<sup>-19</sup> <i>C</i> = 1.6×10<sup>-19</sup> <i>C</i></span></p>
<p><span class="eq"><i>fA</i> = 0.001 <i>pA</i></span></p>
<p><span class="eq"><i>fC</i> = 0.001 <i>pC</i></span></p>
<p><span class="eq"><i>fF</i> = 0.001 <i>pF</i></span></p>
<p>&nbsp;</p>
<h4>Photo Current Calculation</h4> 
<p>The desired full-well capacity is defined. All calculations in electrons since QE cannot be estimated and will be poor due to <i>metal5</i> and lack of AR-coating and passivation. </p>
<p><span class="eq"><var>N</var><sub>WELL</sub> = 200000</span></p>
<p><span class="eq"><var>C</var><sub>WELL</sub> = <var>N</var><sub>WELL</sub> · 1 <i>ec</i> = 200000 · 1 <i>ec</i> = 32.04 <i>fC</i></span></p>
<p>&nbsp;</p>
<p>Typical integration time to fill the well from experience with similar test setups. </p>
<p><span class="eq"><var>t</var><sub>MAX</sub> = 1 <i>s</i></span></p>
<p>&nbsp;</p>
<p>Resulting photo current for full well within one second: </p>
<p><span class="eq"><var>I</var><sub>PHOTO</sub> = <var>C</var><sub>WELL</sub><em> / </em><var>t</var><sub>MAX</sub> = 32.04 <i>fC</i><em> / </em>1 <i>s</i> = 32.04 <i>fA</i></span></p>
<p>&nbsp;</p>
<h4>Diode Voltage and Sensitivity</h4> 
<p>Diode capacitance based on size. </p>
<p><span class="eq"><var>CJ</var><sub>ND2PS</sub> = 1 <i>fF</i><i class="unit"> ∕ </i><i>μm</i><sup class="unit">2</sup></span></p>
<p><span class="eq"><var>W</var><sub>D</sub> = 13.5 <i>μm</i></span></p>
<p><span class="eq"><var>L</var><sub>D</sub> = 13.5 <i>μm</i></span></p>
<p><span class="eq"><var>C</var><sub>D</sub> = <var>CJ</var><sub>ND2PS</sub> · <var>W</var><sub>D</sub> · <var>L</var><sub>D</sub> = 1 <i>fF</i><i class="unit"> ∕ </i><i>μm</i><sup class="unit">2</sup> · 13.5 <i>μm</i> · 13.5 <i>μm</i> = 182.25 <i>fF</i></span></p>
<p>&nbsp;</p>
<p>Resulting diode voltage at full well. </p>
<p><span class="eq"><var>V</var><sub>D</sub> = <var>I</var><sub>PHOTO</sub><em> / </em><var>C</var><sub>D</sub> · <var>t</var><sub>MAX</sub> = 32.04 <i>fA</i><em> / </em>182.25 <i>fF</i> · 1 <i>s</i> = 0.176 <i>V</i></span></p>
<p>&nbsp;</p>
<p>Sensitivity with simulated source follower gain. </p>
<p><span class="eq"><var>G</var><sub>SF</sub> = 0.75</span></p>
<p><span class="eq"><var>B</var> = <var>G</var><sub>SF</sub> · <var>V</var><sub>D</sub><em> / </em><var>C</var><sub>WELL</sub> = 0.75 · 0.176 <i>V</i><em> / </em>32.04 <i>fC</i> = 0.659 <i>μV</i><i class="unit"> ∕ </i><i>ec</i></span></p>
<p>&nbsp;</p>
<p>Noise estimation with simulated source follower gain. </p>
<p><span class="eq"><var>V</var><sub>N</sub> = 35 <i>μV</i></span></p>
<p><span class="eq"><var>N</var><sub>N</sub> = <var>V</var><sub>N</sub><em> / </em><var>B</var> = 35 <i>μV</i><em> / </em>0.659 <i>μV</i><i class="unit"> ∕ </i><i>ec</i> = 53.08 <i>ec</i></span></p>
<p>&nbsp;</p>
<h4>Dark current estimate</h4> 
<p>Diffusion method only valid around room temperature </p>
<p><span class="eq"><var>kB</var> = 1.38 · 10<sup>-23</sup> <i>J</i><i class="unit"> ∕ </i><i>K</i> = 8.62×10<sup>-5</sup> <i>eV</i><i class="unit"> ∕ </i><i>K</i></span></p>
<p><span class="eq"><var>T</var><sub>OP</sub> = 293.15 <i>K</i></span></p>
<p><span class="eq"><var>T</var><sub>REF</sub> = 298.15 <i>K</i></span></p>
<p>&nbsp;</p>
<p>Reference temperature from GF180 spice model. </p>
<p>Area and perimeter dependent current. Parameters frm GF180 diode spice model </p>
<p><span class="eq"><var>I</var><sub>SA</sub> = 2.3 · 10<sup>-7</sup> <i>A</i><i class="unit"> ∕ </i><i>m</i><sup class="unit">2</sup> = 2.3×10<sup>-7</sup> <i>A</i><i class="unit"> ∕ </i><i>m</i><sup class="unit">2</sup></span></p>
<p><span class="eq"><var>A</var> = <var>W</var><sub>D</sub> · <var>L</var><sub>D</sub> = 13.5 <i>μm</i> · 13.5 <i>μm</i> = 182.25 <i>μm</i><sup class="unit">2</sup></span></p>
<p><span class="eq"><var>J</var><sub>SW</sub> = 2.12 · 10<sup>-13</sup> <i>A</i><i class="unit"> ∕ </i><i>m</i> = 2.12×10<sup>-13</sup> <i>A</i><i class="unit"> ∕ </i><i>m</i></span></p>
<p><span class="eq"><var>P</var> = 2 · <var>W</var><sub>D</sub> + 2 · <var>L</var><sub>D</sub> = 2 · 13.5 <i>μm</i> + 2 · 13.5 <i>μm</i> = 54 <i>μm</i></span></p>
<p>&nbsp;</p>
<p>Total base current. </p>
<p><span class="eq"><var>I</var><sub>S</sub> = <var>I</var><sub>SA</sub> · <var>A</var> + <var>J</var><sub>SW</sub> · <var>P</var> = 2.3×10<sup>-7</sup> <i>A</i><i class="unit"> ∕ </i><i>m</i><sup class="unit">2</sup> · 182.25 <i>μm</i><sup class="unit">2</sup> + 2.12×10<sup>-13</sup> <i>A</i><i class="unit"> ∕ </i><i>m</i> · 54 <i>μm</i> = 5.33×10<sup>-17</sup> <i>A</i></span></p>
<p>&nbsp;</p>
<p>Exponential parameters </p>
<p><span class="eq"><var>XTI</var> = 3</span></p>
<p><span class="eq"><var>N</var> = 1.01</span></p>
<p><span class="eq"><var>EA</var> = 1.17 <i>eV</i></span></p>
<p>&nbsp;</p>
<p>Resulting dark-current according to diffusion method: </p>
<p><span class="eq"><var>I</var><sub>DARK_DIFF</sub> ( <var>T</var> )  = <var>I</var><sub>S</sub> ·  ( <var>T</var><em> / </em><var>T</var><sub>REF</sub> ) <sup><var>XTI</var><em> / </em><var>N</var></sup> · <var>e</var><sup><var>EA</var><em> / </em> ( <var>N</var> · <var>kB</var> · <var>T</var> )  ·  ( <var>T</var><em> / </em><var>T</var><sub>REF</sub> − 1 ) </sup></span></p>
<p><span class="eq"><var>I</var><sub>DARK_DIFF</sub>  ( <var>T</var><sub>OP</sub> )  = <var>I</var><sub>DARK_DIFF</sub>  ( 293.15 <i>K</i> )  = 0.0235 <i>fA</i></span></p>
<p><span class="eq"><var>I</var><sub>DARK_DIFF</sub>  ( <var>T</var><sub>OP</sub> )  = <var>I</var><sub>DARK_DIFF</sub>  ( 293.15 <i>K</i> )  = 146.61 <i>ec</i><i class="unit"> ∕ </i><i>s</i></span></p>
<p>&nbsp;</p>
<h4>Source Follower</h4> 
<p>The source follower parameters are calculated. </p>
<p>&nbsp;</p>
<p>Process parameters for the gf180mcuD 6.0V NFET: </p>
<p><span class="eq"><var>C</var><sub>OX</sub> = 0.00227 <i>pF</i><i class="unit"> ∕ </i><i>μm</i><sup class="unit">2</sup></span></p>
<p><span class="eq"><var>V</var><sub>TH0</sub> = 0.673 <i>V</i></span></p>
<p><span class="eq"><var>μ</var><sub>N</sub> = 525 <i>cm</i><sup class="unit">2</sup><em> / </em><i>V</i><i> · </i><i>s</i> = 525 <i>cm</i><sup class="unit">2</sup><i class="unit"> ∕ </i> ( <i>V</i><i> · </i><i>s</i> ) </span></p>
<p><span class="eq"><var>k</var><sub>n</sub> = <var>μ</var><sub>N</sub> · <var>C</var><sub>OX</sub> = 525 <i>cm</i><sup class="unit">2</sup><i class="unit"> ∕ </i> ( <i>V</i><i> · </i><i>s</i> )  · 0.00227 <i>pF</i><i class="unit"> ∕ </i><i>μm</i><sup class="unit">2</sup> = 119.18 <i>μA</i><i class="unit"> ∕ </i><i>V</i><sup class="unit">2</sup></span></p>
<p><span class="eq"><var>n</var> = 1.59</span> (Slope factor) </p>
<p><span class="eq"><var>φ</var><sub>F</sub> = 0.431 <i>V</i></span></p>
<p><span class="eq"><var>γ</var> = 0.9 <i>V</i><sup class="unit">1<em> / </em>2</sup></span></p>
<p>&nbsp;</p>
<p>Thermal voltage </p>
<p><span class="eq"><var>T</var> = 300 <i>K</i></span></p>
<p><span class="eq"><var>k</var><sub>B</sub> = 1.38 · 10<sup>-23</sup> <i>J</i><i class="unit"> ∕ </i><i>K</i> = 1.38×10<sup>-23</sup> <i>J</i><i class="unit"> ∕ </i><i>K</i></span></p>
<p><span class="eq"><var>ec</var> = 1.6 · 10<sup>-19</sup> <i>C</i> = 1.6×10<sup>-19</sup> <i>C</i></span></p>
<p><span class="eq"><var>V</var><sub>T</sub> = <var>k</var><sub>B</sub> · <var>T</var><em> / </em><var>ec</var> = 1.38×10<sup>-23</sup> <i>J</i><i class="unit"> ∕ </i><i>K</i> · 300 <i>K</i><em> / </em>1.6×10<sup>-19</sup> <i>C</i> = 0.0259 <i>V</i></span></p>
<p>&nbsp;</p>
<p>Chosen width and length of the source follower FET chosen to balance space efficiency: </p>
<p><span class="eq"><var>W</var> = 3.5 <i>μm</i></span></p>
<p><span class="eq"><var>L</var> = 1.9 <i>μm</i></span></p>
<p>&nbsp;</p>
<p>Specific current </p>
<p><span class="eq"><var>I</var><sub>SPEC</sub> = 2 · <var>n</var> · <var>k</var><sub>n</sub> · <var>W</var><em> / </em><var>L</var> · <var>V</var><sub>T</sub><sup>2</sup> = 2 · 1.59 · 119.18 <i>μA</i><i class="unit"> ∕ </i><i>V</i><sup class="unit">2</sup> · 3.5 <i>μm</i><em> / </em>1.9 <i>μm</i> ·  ( 0.0259 <i>V</i> ) <sup>2</sup> = 0.467 <i>μA</i></span></p>
<p>&nbsp;</p>
<p>Bias current, iteratively set. Inversion coefficient confirms moderate inversion (0.1 < IC < 10) </p>
<p><span class="eq"><var>I</var><sub>D</sub> = 1 <i>μA</i></span></p>
<p><span class="eq"><var>IC</var> = <var>I</var><sub>D</sub><em> / </em><var>I</var><sub>SPEC</sub> = 1 <i>μA</i><em> / </em>0.467 <i>μA</i> = 2.14</span></p>
<p>&nbsp;</p>
<p>Calculating gm at given bias current, considering inversion coefficient. </p>
<p><span class="eq"><var>g′</var><sub>m</sub> = 1<em> / </em> ( <var>n</var> · <var>V</var><sub>T</sub> )  ·  ( 1 − <var>e</var><sup>-&ensp;&hairsp;&hairsp;<span class="o0"><span class="r">√</span>&hairsp;<var>IC</var></span></sup> ) <em> / </em>&ensp;&hairsp;&hairsp;<span class="o0"><span class="r">√</span>&hairsp;<var>IC</var></span> = 1<em> / </em> ( 1.59 · 0.0259 <i>V</i> )  ·  ( 1 − 2.72<sup>-&ensp;&hairsp;&hairsp;<span class="o0"><span class="r">√</span>&hairsp;2.14</span></sup> ) <em> / </em>&ensp;&hairsp;&hairsp;<span class="o0"><span class="r">√</span>&hairsp;2.14</span> = 12.77 <i>V</i><sup class="unit">-1</sup></span></p>
<p><span class="eq"><var>g</var><sub>m</sub> = <var>g′</var><sub>m</sub> · <var>I</var><sub>D</sub> = 12.77 <i>V</i><sup class="unit">-1</sup> · 1 <i>μA</i> = 12.77 <i>μA</i><i class="unit"> ∕ </i><i>V</i></span></p>
<p><span class="eq"><var>g</var><sub>mb</sub> = 0.2 · <var>g</var><sub>m</sub> = 0.2 · 12.77 <i>μA</i><i class="unit"> ∕ </i><i>V</i> = 2.55 <i>μA</i><i class="unit"> ∕ </i><i>V</i></span></p>
<p>&nbsp;</p>
<p>Calculating voltage gain and output impedance. </p>
<p><span class="eq"><var>A</var><sub>v</sub> = <var>g</var><sub>m</sub><em> / </em> ( <var>g</var><sub>m</sub> + <var>g</var><sub>mb</sub> )  = 12.77 <i>μA</i><i class="unit"> ∕ </i><i>V</i><em> / </em> ( 12.77 <i>μA</i><i class="unit"> ∕ </i><i>V</i> + 2.55 <i>μA</i><i class="unit"> ∕ </i><i>V</i> )  = 0.833</span></p>
<p><span class="eq"><var>R</var><sub>OUT</sub> = 1<em> / </em> ( <var>g</var><sub>m</sub> + <var>g</var><sub>mb</sub> )  = 1<em> / </em> ( 12.77 <i>μA</i><i class="unit"> ∕ </i><i>V</i> + 2.55 <i>μA</i><i class="unit"> ∕ </i><i>V</i> )  = 65.24 <i>kΩ</i></span></p>
<p>&nbsp;</p>
<p>Iteratively determining output voltage considering the body effect. 2.3V is the simulated typical reset voltage. </p>
<p><span class="eq"><var>V′</var><sub>OUT</sub> = 1.1 <i>V</i></span></p>
<p><span class="eq"><var>V</var><sub>OUT</sub> ( <var>V</var><sub>IN</sub> )  = <var>V</var><sub>IN</sub> − <var>V</var><sub>TH0</sub> − <var>γ</var> ·  ( &ensp;&hairsp;&hairsp;<span class="o0"><span class="r">√</span>&hairsp;2 · <var>φ</var><sub>F</sub> + <var>V′</var><sub>OUT</sub></span> − &ensp;&hairsp;&hairsp;<span class="o0"><span class="r">√</span>&hairsp;2 · <var>φ</var><sub>F</sub></span> )  − 2 · <var>n</var> · <var>V</var><sub>T</sub> · <b>ln</b> ( <var>e</var><sup>&ensp;&hairsp;&hairsp;<span class="o0"><span class="r">√</span>&hairsp;<var>IC</var></span></sup> − 1 ) </span></p>
<p><span class="eq"><var>V</var><sub>OUT</sub>  ( 2.3 <i>V</i> )  = 1.1 <i>V</i></span></p>

### Source Follower DC Transfer Function
The source follower DC transfer function is simulated. Choice of MOSFETs for the pixel source follower is very constrained due to available space, so some compromise needs to be taken on performance.

![DC Transfer Function](../../xschem/docs/tb_pixel_nd2ps_dc.png)

### Pixel Reset Voltage
Pixel reset voltage both at the diode and at the output of the source follower is an important parameter for following design.

![Pixel Reset Voltage](../../xschem/docs/tb_pixel_nd2ps_dc_reset.png)

### Readout Noise
Readout noise of the source follower and current source is simulated. Note that this does not include kTC noise of the reset process itself.

![Pixel Readout Noise](../../xschem/docs/tb_pixel_nd2ps_noise.png)

### Transient Simulation
A transient simulation of a single pixel is performed. Starting at the nominal reset level (ignoring soft-reset behavior) a compressed integration period of 1ms at various diode currents (higher than normal to compensate for short exposure) is simulated. The lower plot shows the zoomed-in readout phase of the pixel.

![Transient Simulation](../../xschem/docs/tb_pixel_nd2ps_tran.png)
