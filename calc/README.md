<h3>Pixel Calculations</h3> 
<p>Generated from calculations.cpd sheet. Use with calcpadCE. </p>
<span style="color: red">WARNING! Export to .md does not support rendering of fractions yet. Check original file.</span> 
<h4>Unit Definitions</h4> 
<p>We operate in the low current domain so we define fX units. </p>
<p><span class="eq"><i>ec</i> = 1.6 · 10<sup>-19</sup> <i>C</i> = 1.6×10<sup>-19</sup> <i>C</i></span></p>
<p><span class="eq"><i>fA</i> = 0.001 <i>pA</i></span></p>
<p><span class="eq"><i>fC</i> = 0.001 <i>pC</i></span></p>
<p><span class="eq"><i>fF</i> = 0.001 <i>pF</i></span></p>
<h4>Photo Current Calculation</h4> 
<p>The desired full-well capacity is defined. All calculations in electrons since QE cannot be estimated and will be poor due to <i>metal5</i> and lack of AR-coating and passivation. </p>
<p><span class="eq"><var>N</var><sub>WELL</sub> = 200000</span></p>
<p><span class="eq"><var>C</var><sub>WELL</sub> = <var>N</var><sub>WELL</sub> · 1 <i>ec</i> = 200000 · 1 <i>ec</i> = 32.04 <i>fC</i></span></p>
<p>Typical integration time to fill the well from experience with similar test setups. </p>
<p><span class="eq"><var>t</var><sub>MAX</sub> = 1 <i>s</i></span></p>
<p>Resulting photo current for full well within one second: </p>
<p><span class="eq"><var>I</var><sub>PHOTO</sub> = <span class="dvc"><var>C</var><sub>WELL</sub><span class="dvl"></span><var>t</var><sub>MAX</sub></span> = <span class="dvc">32.04 <i>fC</i><span class="dvl"></span>1 <i>s</i></span> = 32.04 <i>fA</i></span></p>
<h4>Diode Voltage and Sensitivity</h4> 
<p>Diode capacitance based on size. </p>
<p><span class="eq"><var>CJ</var><sub>ND2PS</sub> = 1 <span class="dvc"><i>fF</i><span class="dvl"></span><i>μm</i><sup class="unit">2</sup></span></span></p>
<p><span class="eq"><var>W</var><sub>D</sub> = 12 <i>μm</i></span></p>
<p><span class="eq"><var>L</var><sub>D</sub> = 10 <i>μm</i></span></p>
<p><span class="eq"><var>C</var><sub>D</sub> = <var>CJ</var><sub>ND2PS</sub> · <var>W</var><sub>D</sub> · <var>L</var><sub>D</sub> = 1 <i>fF</i><i class="unit"> ∕ </i><i>μm</i><sup class="unit">2</sup> · 12 <i>μm</i> · 10 <i>μm</i> = 120 <i>fF</i></span></p>
<p>Resulting diode voltage at full well. </p>
<p><span class="eq"><var>V</var><sub>D</sub> = <span class="dvc"><var>I</var><sub>PHOTO</sub><span class="dvl"></span><var>C</var><sub>D</sub></span> · <var>t</var><sub>MAX</sub> = <span class="dvc">32.04 <i>fA</i><span class="dvl"></span>120 <i>fF</i></span> · 1 <i>s</i> = 0.267 <i>V</i></span></p>
<p>Sensitivity assuming unity gain source follower. </p>
<p><span class="eq"><var>B</var> = <span class="dvc"><var>V</var><sub>D</sub><span class="dvl"></span><var>C</var><sub>WELL</sub></span> = <span class="dvc">0.267 <i>V</i><span class="dvl"></span>32.04 <i>fC</i></span> = 1.34 <i>μV</i><i class="unit"> ∕ </i><i>ec</i></span></p>
<p>Noise estimation from source follower simulation. </p>
<p><span class="eq"><var>V</var><sub>N</sub> = 35 <i>μV</i></span></p>
<p><span class="eq"><var>N</var><sub>N</sub> = <span class="dvc"><var>V</var><sub>N</sub><span class="dvl"></span><var>B</var></span> = <span class="dvc">35 <i>μV</i><span class="dvl"></span>1.34 <i>μV</i><i class="unit"> ∕ </i><i>ec</i></span> = 26.21 <i>ec</i></span></p>
<h4>Dark current estimate</h4> 
<p>Diffusion method only valid around room temperature </p>
<p><span class="eq"><var>kB</var> = 1.38 · 10<sup>-23</sup> <span class="dvc"><i>J</i><span class="dvl"></span><i>K</i></span> = 8.62×10<sup>-5</sup> <i>eV</i><i class="unit"> ∕ </i><i>K</i></span></p>
<p><span class="eq"><var>T</var><sub>OP</sub> = 293.15 <i>K</i></span></p>
<p><span class="eq"><var>T</var><sub>REF</sub> = 298.15 <i>K</i></span></p>
<p>Reference temperature from GF180 spice model. </p>
<p>Area and perimeter dependent current. Parameters frm GF180 diode spice model </p>
<p><span class="eq"><var>I</var><sub>SA</sub> = 2.3 · 10<sup>-7</sup> <span class="dvc"><i>A</i><span class="dvl"></span><i>m</i><sup class="unit">2</sup></span> = 2.3×10<sup>-7</sup> <i>A</i><i class="unit"> ∕ </i><i>m</i><sup class="unit">2</sup></span></p>
<p><span class="eq"><var>A</var> = <var>W</var><sub>D</sub> · <var>L</var><sub>D</sub> = 12 <i>μm</i> · 10 <i>μm</i> = 120 <i>μm</i><sup class="unit">2</sup></span></p>
<p><span class="eq"><var>J</var><sub>SW</sub> = 2.12 · 10<sup>-13</sup> <span class="dvc"><i>A</i><span class="dvl"></span><i>m</i></span> = 2.12×10<sup>-13</sup> <i>A</i><i class="unit"> ∕ </i><i>m</i></span></p>
<p><span class="eq"><var>P</var> = 2 · <var>W</var><sub>D</sub> + 2 · <var>L</var><sub>D</sub> = 2 · 12 <i>μm</i> + 2 · 10 <i>μm</i> = 44 <i>μm</i></span></p>
<p>Total base current. </p>
<p><span class="eq"><var>I</var><sub>S</sub> = <var>I</var><sub>SA</sub> · <var>A</var> + <var>J</var><sub>SW</sub> · <var>P</var> = 2.3×10<sup>-7</sup> <i>A</i><i class="unit"> ∕ </i><i>m</i><sup class="unit">2</sup> · 120 <i>μm</i><sup class="unit">2</sup> + 2.12×10<sup>-13</sup> <i>A</i><i class="unit"> ∕ </i><i>m</i> · 44 <i>μm</i> = 3.69×10<sup>-17</sup> <i>A</i></span></p>
<p>Exponential parameters </p>
<p><span class="eq"><var>XTI</var> = 3</span></p>
<p><span class="eq"><var>N</var> = 1.01</span></p>
<p><span class="eq"><var>EA</var> = 1.17 <i>eV</i></span></p>
<p>Resulting dark-current according to diffusion method: </p>
<p><span class="eq"><var>I</var><sub>DARK_DIFF</sub> ( <var>T</var> )  = <var>I</var><sub>S</sub> · <span class="b1">(</span><span class="dvc"><var>T</var><span class="dvl"></span><var>T</var><sub>REF</sub></span><span class="b1">)</span><sup class="raised"><span class="dvc"><var>XTI</var><span class="dvl"></span><var>N</var></span></sup> · <var>e</var><sup><span class="dvc"><var>EA</var><span class="dvl"></span><var>N</var> · <var>kB</var> · <var>T</var></span> · <span class="b1">(</span><span class="dvc"><var>T</var><span class="dvl"></span><var>T</var><sub>REF</sub></span> − 1<span class="b1">)</span></sup></span></p>
<p><span class="eq"><var>I</var><sub>DARK_DIFF</sub>  ( <var>T</var><sub>OP</sub> )  = <var>I</var><sub>DARK_DIFF</sub>  ( 293.15 <i>K</i> )  = 0.0163 <i>fA</i></span></p>
<p><span class="eq"><var>I</var><sub>DARK_DIFF</sub>  ( <var>T</var><sub>OP</sub> )  = <var>I</var><sub>DARK_DIFF</sub>  ( 293.15 <i>K</i> )  = 101.46 <i>ec</i><i class="unit"> ∕ </i><i>s</i></span></p>