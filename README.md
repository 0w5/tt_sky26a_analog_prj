![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)  
# A Temperature Sensor with Delta-sigma Modulator

## Overview
This experimental project demonstrates a sensing circuit with a bandgap reference (BGR), a delta-sigma modulator (DSM), and a simple decimation filter.
A BGR generates a proportional-to-absolute-temperature (PTAT) voltage and a first-order 1-bit continuous-time DSM converts it to a digital bitstream. This design cannot calculate the actual temperature directly due to chip variations. Hence, a chip measurement for calibration and an off-chip calculation are required.
Instead of a conventional CIC filter, a ripple-counter-based decimation filter is experimentally implemented. This filter occupies a small area and provides lower bit depth and throughput.
An analog multiplexer connects the unbuffered BGR and PTAT voltages to an analog I/O pin. Thus, the DSM input and the internal reference voltage can be controlled by an external voltage source for debugging. 

### General Specifications
- Technology: SKY130A 
- Area: 160 x 225 μm (1x2 tiles)
- Power Supply: 3.3+-0.3 V (VAPWR), 1.8+-0.1 V (VDPWR)
- Operating temperature range: -40℃ to 140℃
- Input Clock frequency (fs): 2 MHz (nom.)
- Output data rate: 1 bit@fs, optional: 8 bit@fs/(256+1), 10 bit@fs/(1024+1)
- Output data precision is not fully characterized yet.
### Pin Functions
| Pin Name       | Pin Attribute   | Function Name | Description                                                                                       | 
| -------------- | --------------- | ------------- | ------------------------------------------------------------------------------------------------- | 
| `VAPWR`        | Power 3.3 V     | VDD           | Analog power                                                                                      | 
| `VDPWR`        | Power 1.8 V     | DVDD          | Digital power                                                                                       | 
| `VGND`         | GND             | GND           | GND                                                                                               | 
| `clk`          | Clock In 1.8 V  | CK            | Sampling clock for DSM quantizer. 2 MHz by default. An acceptable DSM input voltage range depends on the clock frequency. | 
| `ui_in[0]`     | In 1.8 V        | AIOSEL        | Selection for analog multiplexer output. L:VPTAT, H:VREF                                          | 
| `ui_in[1]`     | In 1.8 V        | BITSEL        | Selection for bit depth of decimated data. L: 8 bit, H: 10 bit                                    | 
| `ui_in[2]`     | In 1.8 V        | EN            | Enable the decimation filter. L: disable, H: enable.                                              | 
| `uo_out[0]`    | Out 1.8 V       | BITOUT        | Bitstream output from DSM                                                                         | 
| `uo_out[7:1]`  | Out 1.8 V       | OUT[6:0]      | Data output from the decimation filter                                                            | 
| `uio_out[2:0]` | Out 1.8 V       | OUT[9:7]      | Data output from the decimation filter. OUT[7:0] are valid if 8-bit mode is selected.                      | 
| `uio_out[3]`   | Clock Out 1.8 V | DCK           | Downsampled clock for decimated data                                                              | 
| `ua[0]`        | InOut 3.3 V     | AIO           | Analog multiplexer input/output for debugging. Keep open during default operation.                                                 | 


### Circuit Diagram
!["circuit diagram"](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/circuit.png)


### Layout
!["layout"](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/layout.png)

### Design Tools and Verification Results
- Schematic: xschem
- Layout and DRC: MAGIC, Klayout
- Spice simulation: ngspice
- LVS: netgen
- Functional verification across PVT corners: ✅
- LVS: ✅
- DRC: ✅
- Antenna: ✅


### Known Issues
- Unused `u*_out` pins should be pulled down to prevent floating nodes.
- Specifications are not characterized with Monte Carlo simulation or post-layout simulation.
- Timing verifications of a 3.3-V custom DFF and a decimation filter implemented with 1.8-V standard cells are not executed.
- Netlists between extracted layouts and spice models are not fully matched for standard cells.
- A functional bug has been reported in the decimation filter. 

### Author
しもみ (Shimomi) 
 - Twitter: @0w5
 - Email: shimomi at starholic. net

## Subcircuit Descriptions

### Bandgap Reference (BGR3V3_v2)
Specifications
|                              | Minimum    | Typical   | Maximum    | Note                              | 
| ---------------------------- | ---------- | --------- | ---------- | --------------------------------- | 
| VREF voltage                 | 1.116 V    | 1.153 V   | 1.217 V    |                                   | 
| VREF temperature dependency  | -80 μV/℃ | 60 μV/℃ | 440 μV/℃ |                                       | 
| VREF PSRR                    | 4.0 dB    | -         | -          | worst value from DC to 1 GHz        | 
| VPTAT                        | 0.80 V      | 1.16 V    | 1.85 V      | -40℃ to 140℃                    | 
| VPTAT temperature dependency | 3.9 mV/℃  | 4.4 mV/℃ | 5.4 mV/℃  |                                   | 
| VPTAT PSRR                   | 1.0 dB    | -         | -          | worst value from DC to 1 GHz       | 
| IREF output current          | 15.3 μA   | 18.0 μA  | 20.7 μA   | changed from 30μA to 18μA in v2 | 

Temperature dependency
corner: tt, temperature: sweep℃, power typ.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/bgr_temp_tt.png)

corner: ff, temperature: sweep℃, power max.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/bgr_temp_ff.png)

corner: ss, temperature: sweep℃, power min.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/bgr_temp_ss.png)

Line regulation
corner: tt, temperature: 25℃, power sweep.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/bgr_dc_tt.png)

corner: ff, temperature: 140℃, power sweep.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/bgr_dc_ff.png)

corner: ss, temperature: -40℃, power sweep.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/bgr_dc_ss.png)

PSRR
corner: tt, temperature: 25℃, power typ.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/bgr_psrr_tt.png)

corner: ff, temperature: 140℃, power max.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/bgr_psrr_ff.png)

corner: ss, temperature: -40℃, power min.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/bgr_psrr_ss.png)

Known Issues
 - The start-up circuit may oscillate when VDD ~ 1 V.

### Opamp (opamp3V3_v2)
Specifications
|                      | Minimum     | Typical     | Maximum | Note                                    | 
| -------------------- | ----------- | ----------- | ------- | --------------------------------------- | 
| Input IREF current   | -           | 18 μA        | -       | Reduced target current from 30 uA in v2        | 
| Open-loop gain       | 65 dB       | 75 dB       |         |                                         | 
| Bandwidth            | 1.8 MHz     | 2.0 MHz     | -       | 10-pF output load                       | 
| Phase margin         | 60 deg      | 70 deg      | -       | 10-pF output load                       | 
| Output voltage range | 0.4 ~ 1.8 V | 0.3 ~ 2.1 V | -       | Gain = +1                               | 
| PSRR                 | 39 dB       | 40 dB       | -       | Gain = +1, worst value from DC to 1 GHz | 

Bode plot
corner: tt, temperature: 25℃, power typ.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/op_bode_tt.png)

corner: ff, temperature: 140℃, power max.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/op_bode_ff.png)

corner: ss, temperature: -40℃, power min.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/op_bode_ss.png)

  Output voltage range (gain = +1)
corner: tt, temperature: 25℃, power typ.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/op_range_tt.png)

corner: ff, temperature: 140℃, power max.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/op_range_ff.png)

corner: ss, temperature: -40℃, power min.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/op_range_ss.png)
  
PSRR
corner: tt, temperature: 25℃, power typ.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/op_psrr_tt.png)

corner: ff, temperature: 140℃, power max.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/op_psrr_ff.png)

corner: ss, temperature: -40℃, power min.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/op_psrr_ss.png)
 
### Comparator (comp3V3_v2)
Specifications
|                    | Minimum | Typical | Maximum | Note                                                 | 
| ------------------ | ------- | ------- | ------- | ---------------------------------------------------- | 
| Input IREF current | -       | 18 μA  | -       |                                                      | 
| Output delay       | -       | 13 ns   | 18 ns   | 1-pF output load, 10 MHz / 1 Vpeak ramp wave input, | 

Transient waveform
corner: tt, temperature: 25℃, power typ.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/comp_tt.png)

corner: ff, temperature: 140℃, power max.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/comp_ff.png)

corner: ss, temperature: -40℃, power min.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/comp_ss.png)


### 1.8-V to 3.3-V Level Shifter with Power Rail HiZ Detection  (LVSHFTL2H_v1)
Specifications
|                     | Minimum | Typical | Maximum | Note             | 
| ------------------- | ------- | ------- | ------- | ---------------- | 
| Output delay        | -       | 9 ns    | 10 ns   | 1-pF output load | 
| Operating frequency | 10 MHz  | -       | -       | 1-pF output load | 

Transient waveform
corner: tt, temperature: 25℃, power typ.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/L2H_tt.png)

corner: ff, temperature: 140℃, power max.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/L2H_ff.png)

corner: ss, temperature: -40℃, power min.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/L2H_ss.png)


### 3.3-V to 1.8-V Level Shifter with Power Rail HiZ Detection (LVSHFTH2L_v1)
Specifications
|                     | Minimum | Typical | Maximum | Note             | 
| ------------------- | ------- | ------- | ------- | ---------------- | 
| Output delay        | -       | 7 ns    | 9 ns    | 5-pF output load | 
| Operating frequency | 25 MHz  |         |         | 5-pF output load | 

Transient waveform
corner: tt, temperature: 25℃, power typ.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/H2L_tt.png)

corner: ff, temperature: 140℃, power max.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/H2L_ff.png)

corner: ss, temperature: -40℃, power min.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/H2L_ss.png)


### 3.3-V Positive Edge Triggered Flip-flop (DFF3V3_v1)
Specifications
|                     | Minimum | Typical | Maximum | Note             | 
| ------------------- | ------- | ------- | ------- | ---------------- | 
| Output delay        | -       | 5 ns    | 9 ns    | 1-pF output load | 
| Operating frequency | 25 MHz  |         |         | 1-pF output load | 

Note that setup time and hold time are not characterized yet.

Transient waveform
corner: tt, temperature: 25℃, power typ.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/dff_tt.png)

corner: ff, temperature: 140℃, power max.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/dff_ff.png)

corner: ss, temperature: -40℃, power min.  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/dff_ss.png)

### 2-Channel Analog Multiplexer (MUX_v1)
Specifications
|               | Minimum | Typical | Maximum | Note | 
| ------------- | ------- | ------- | ------- | ---- | 
| On Resistance | 1 kΩ   |         |         |      | 

### Temperature Sensor with Delta-sigma Modulator (DSMANA_v1)
corner: tt, temperature: 25℃, power typ.  
!["tt25deg"](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/dsm_tt.png)
where bitout=DSM output, in=VPTAT, integ=DSM integrator output, v2=VAPWR, and v6=VDPWR.

corner: ff, temperature: 100℃, power max.  
!["ff100deg"](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/dsm_ff_100C.png)
where bitout=DSM output, in=VPTAT, integ=DSM integrator output, v2=VAPWR, and v6=VDPWR.

corner: ss, temperature: -40℃, power min.  
!["ss-40deg"](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/dsmana_ss.png)
where bitout=DSM output, in=VPTAT, integ=DSM integrator output, v2=VAPWR, and v6=VDPWR.

### Ripple-Counter-Based Decimation Filter (CNTDIG_v1)
Function
 - This experimental decimation filter counts the number of pulses over 256 or 1024 clock cycles.
 - Two ripple counters are implemented, one is a pulse counter and the other is a period counter.
 - When the period counter overflows, output data are latched and both counters are reset with 1-cycle latency. Thus, output data rate is calculated as clock frequency / (overflow bitlength + 1).
 - Overflow bitlength can be selected with BITSEL.

Transient waveform (input clock frequency = period counting clock frequency)  
![""](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/cntdig_tt.png)
where o*= output from the pulse counter, out* = latched data output
 
Known Issues
 -  **BUG** : Since the implemented DSM outputs an NRZ bitstream, the ripple countercannot detect consecutive identical output states, such as  H→H. This may cause output noise or input range limitation and must be fixed in future work.
