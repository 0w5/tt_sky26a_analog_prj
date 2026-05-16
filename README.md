![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)

# A Temperature Sensor with Delta-sigma Modulator

## Overview
This project contains a bandgap reference (BGR), a delta-sigma modulator (DSM), and a simple decimation filter.  
A BGR generates a proportional-to-absolute-temperature (PTAT) voltage and a first-order 1-bit continuous-time DSM converts it to a digital bitstream. This design cannot calculate the actual temperature directly due to chip variations. Hence, a chip measurement for calibration and an off-chip calculation are required.  
Instead of a conventional CIC filter, a ripple-counter-based decimation filter is experimentally implemented. This filter occupies a small area and provides lower bit depth and throughput.  
An analog multiplexer connects the unbuffered BGR and PTAT voltages to an analog I/O pin. Thus, the DSM input and the internal reference voltage can be controlled by an external voltage source for debugging.   

### General Specifications
- Technology: SKY130A 
- Area: 160 x 225 μm (1x2 tiles)
- Power Supply: 3.3+-0.3 V (VAPWR), 1.8+-0.1 V (VDPWR)
- Operating temperature range: -40℃ to 140℃
- Input Clock frequency (fs): 2 MHz (typ.)
- Output data: 1 bit@fs, 8 bit@fs/(256+2), 10 bit@fs/(1024+2)

### Pin Functions
| Pin Name       | Pin Attribute   | Function Name | Description                                                                                       | 
| -------------- | --------------- | ------------- | ------------------------------------------------------------------------------------------------- | 
| `VAPWR`        | Power 3.3 V     | VDD           | Analog power                                                                                      | 
| `VDPWR`        | Power 1.8 V     | DVDD          | Logic Power                                                                                       | 
| `VGND`         | GND             | GND           | GND                                                                                               | 
| `clk`          | Clock In 1.8 V  | CK            | Sampling clock for quantizer. 2 MHz at default. An acceptable DSM input voltage range depends on the clock frequency. | 
| `ui_in[0]`     | In 1.8 V        | AIOSEL        | Selection for analog multiplexer output. L:VPTAT, H:VREF                                          | 
| `ui_in[1]`     | In 1.8 V        | BITSEL        | Selection for bit depth of decimated data. L: 8 bit, H: 10 bit                                    | 
| `ui_in[2]`     | In 1.8 V        | EN            | Enable the decimation filter. L: disable, H: enable.                                              | 
| `uo_out[0]`    | Out 1.8 V       | BITOUT        | Bitstream output from DSM                                                                         | 
| `uo_out[7:1]`  | Out 1.8 V       | OUT[6:0]      | Data output from the decimation filter                                                            | 
| `uio_out[2:0]` | Out 1.8 V       | OUT[9:7]      | Data output from the decimation filter. OUT[7:0] are valid if 8-bit mode is selected.                      | 
| `uio_out[3]`   | Clock Out 1.8 V | DCK           | Downsampled clock for decimated data                                                              | 
| `ua[0]`        | InOut 3.3 V     | AIO           | Analog multiplexer Input/Output for debugging. Keep open during default operation.                                                 | 

### Circuit Diagram
!["circuit diagram"](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/circuit.png)


### Layout
!["layout"](https://github.com/0w5/tt_sky26a_analog_prj/blob/temp/img/layout.png)

### Design Tools and Verification Results
- Schematic: xschem
- Layout and DRC: MAGIC, Klayout
- Spice simulation: ngspice
- LVS: netgen
- Circuit function with PVT variation: ✅
- LVS: ✅
- DRC: ✅
- Antenna: ✅


### Known Issues
- Unused `u*_out` pins should be pulled down to prevent floating nodes.
- Specifications are not characterized with Monte Carlo simulation or post-layout simulation.
- Timing verifications of a 3.3-V custom DFF and a decimation filter implemented with 1.8-V standard cells are not executed.

### Author
しもみ (Shimomi)  

## Subcircuit Descriptions

### Bandgap Reference (BGR3V3_v2)
Specifications
|                              | Minimum    | Typical   | Maximum    | Note                              | 
| ---------------------------- | ---------- | --------- | ---------- | --------------------------------- | 
| VREF voltage                 | 1.116 V    | 1.153 V   | 1.217 V    |                                   | 
| VREF temperature dependency  | -80 μV/℃ | 60 μV/℃ | 440 μV/℃ |                                   | 
| VREF PSRR                    | -4.0 dB    | -         | -          | DC to 1 GHz                        | 
| VPTAT                        | 0.80 V      | 1.16 V    | 1.85 V      | -40℃ to 140℃                    | 
| VPTAT temperature dependency | 3.9 mV/℃  | 4.4 mV/℃ | 5.4 mV/℃  |                                   | 
| VPTAT PSRR                   | -1.0 dB    | -         | -          | DC to 1 GHz                         | 
| IREF output current          | 15.3 μA   | 18.0 μA  | 20.7 μA   | changed from 30μA to 18μA in v2 | 


Known Issues
 - The start-up circuit may oscillate when VDD ~ 1 V.

### Opamp (opamp3V3_v2)
TBE

### Comparator (opamp3V3_v2)
TBE

### 1.8-V to 3.3-V Level Shifter with HiZ prevention (LVSHFTL2H_v1)
TBE

### 3.3-V to 1.8-V Level Shifter with HiZ prevention (LVSHFTH2L_v1)
TBE

### 3.3-V Positive Edge Triggered Flip-flop (DFF3V3_v1)
TBE

### Ripple-Counter-Based Decimation Filter (CNTDIG_v1)
TBE
