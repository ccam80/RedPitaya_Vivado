# Getting started:
## Vivado version
Use Vivado 2020.2
<https://www.xilinx.com/member/forms/download/xef.html?filename=Xilinx_Unified_2020.2_1118_1232_Win64.exe>

## IP Core location
if project location is not
```
C:/GitHub/RedPitaya_Vivado/
```
the IP Core location have to be changed. Therefore got to Tools --> Settings --> IP --> Repository
## Generate and implement new bit file
- Open Vivado and press Generate Bitstream, after all changes have been saved
- Wihile bit file generation in the upper right corner a runing circle is shown, if the operation is finished there is written ""
- the new bit file is located in ``*/feedback.runs/impl_1`` and is named ``system_wrapper.bit``
- Coppy ``system_wrapper.bit`` with a FTP client (e.g. WinSCP) to the FPGA into ``/usr/src``, and rename to ``v2.bit``. 
_Note_ in the UC RedPitaya, the default "onboard" directory is ``/usr/adc_test``. After pulling from Git in to this directory, 
execute ``cp ./v2.bit /usr/src/v2.bit`` to overwrite the auto-loaded bitstream.
- if starting the server (<https://github.com/ccam80/RedPitaya_Onboard>) it is automatic implemented

#Operations (high-level):
Each output channel can be in a number of feedback modes, involving one or both inputs. CBC uses both output channels, so we can't set channels independently when CBC is active.
The intended math for each, without examining slicing and scaling (so as to match API inputs), where A, B, C, and D are user inputs, is:

##Fixed frequency
OUT[CH] = B * sin(2*pi*f*t) [f constant]

##Frequency sweep
OUT[CH] = B * sin(2*pi*f*t) [f swept]

##Artificial Nonlinearity (external)
OUT[CH] = IN1 * IN2 * C + IN1^2 * D + IN1^3 * A

##Artificial Nonlinearity (internal)
OUT[CH] = IN1 * sin(2*pi*f*t) * C + IN1^2 * D + IN1^3 * A

##Linear Feedback
OUT[CH] = B * INPUT + C

##White noise
OUT[CH] = C * RAND(GAUSSIAN) + D

##Cubic Feedback
OUT[CH] = A * INPUT + B * INPUT^2 + C * INPUT^3 + E

##CBC
OUT1 = KP * error + Kd * error_dot
OUt2 = A\*target^3 + B\*target^2 + C\*target + D

Additionally, some parameters can be swept during a recording.

# System behaviour:
!!! In1 and In2 are in V if jumper is in LV Position (+-1V must not be exceeded)<br>
If jumper is in HV Position In1 and In2 are in V/20 (+-20V must not be exceeded)

Each channel can produce an output independently of the other. CH1 controls OUT1, CH2 controls OUT2, and either can use either IN1 or IN2 dependent on their input_select bit.

CH1 and CH2 have indepenent state/mode variables. CBC is activated when CH1's state variable is set to CBC, which deactivates CH2. Mapping from state to mode is:

| State | Mode                               |
|:-----:|:----------------------------------:|
| 0     | Fixed frequency                    |
| 1     | Frequency Sweep                    |
| 2     | Artificial Nonlinearity (external) |
| 3     | Artificial Nonlinearity (DDS)      |
| 4     | Linear Feedback                    |
| 5     | White Noise                        |
| 6     | Cubic feedback                     |
| 7     | CBC                                |
| X     | X                                  |


## In "Channel" mode
 
## Math Implementation:
Arguments to feeback equations are collected by the multiplier\_breakout module, which performs narrow multiplications, then feeds operands to multiplier cores. There is one multiplier_breakout per channel. CBC has its own multiplier breakout, with multiple multiplexable signal pathways as described below. The feedback\_combined module then sums the products of these multiplications. The inputs and outputs for each stimulation mode are given by:


| **Mode**     |     OP1     | OP2 |   OP3  |   OP4  |   OP5   |  OP6   |    OP7    | OFFSET |
|--------------|:-----------:|:---:|:------:|:------:|:-------:|:------:|:---------:|:------:|
| fixed        |  {DDS << 8} |  B  |    0   |    0   |    0    |    0   |     0     |    C   |
| sweep        |  {DDS << 8} |  C  |    0   |    0   |    0    |    0   |     0     |    D   |
| lin          | {ADC1\*ADC2}|  C  |    D   | ADC1^2 |    E    |ADC1\^3 | A<<15 - 1 |    0   |
| parametric   |  {ADC1\*DDS}|  C  |    D   | ADC1^2 |    E    |ADC1\^3 | A<<15 - 1 |    0   |
| Ax + b       | {ADC << 16} |  B+ |    0   |    0   |    0    |    0   |     0     |    C+  |
| random       |  {RNG << 8} |  C  |    0   |    0   |    0    |    0   |     0     |    D   | 	
| polynomial   | {ADC << 16} |  A+ |   B+   | ADC^2  |   C+    | ADC\^3 |     0     |    E+  |
| CBC	       |  0          |  0  |    0   |    0   |    0    |    0   |     0     |    0   | 
| Result Slice |    [63:8]   |     | [63:8] |        | [63:21] |        |   [63:0]  | [31:0] |
|              |             |     |        |        |         |        |           |        |
|--------------|:-----------:|:---:|:------:|:------:|:-------:|:------:|:---------:|:------:|
|     Width    |      32     |  32 |   32   |   32   |    32   |   48   |     64    |   32   |

This module in fabric has all outputs set to zero in CBC mode - CBC outputs are muxed separately into the multipliers, so come from the CBC module instead.
ADC (without a number) refers to the input channel selected with input\_select.
\+ is included where parameter is sweeping.

V_out is then calculated by: <br>

	V_out =	(Product\_1 + Product\_2 + Product\_3 + Product\_4 + OFFSET<<15) >> 15

Except in Ax + b (linear feedback mode), where:

	V_out = (Product\_1 << 9 + OFFSET << 15) >> 15

## Control Based Continuation Mode


| **Mode**     | OP1 | OP2 | OP3 |   OP4    | OP5 |  OP6  | OP7 |  OP8  | OP9 |  OP10  | OFFSET |
|--------------|:---:|:---:|:---:|:--------:|:---:|:-----:|:---:|:-----:|:---:|:------:|:------:|
|     CBC      | KP  |e<<8 | KD  | e_dot<<8 |  A  |  p^3  |  B  |  p^2  |  C  | p<<16  |    D   |
|--------------|:---:|:---:|:---:|:--------:|:---:|:-----:|:---:|:-----:|:---:|:------:|:------:|
|    Width     | 32  | 32  | 32  |    32    |  32 |   48  |  32 |   32  |  32 |   32   |   32   |
| Result Slice |   [63:8]  ||   [63:8] |        | [63:21] |        |   [63:0]  | [31:0] |

where variables are selected by toggles in memory, such that:

|variable | 				formula 		  	|
|---------|:-----------------------------------:|
|    e    | 		disp - ref_disp 	  		|
|  e\_dot | 		vel - vel_disp   	 		|
| ref_disp| 		rhat * sin(2/*pi/*f/*t)		|
| ref_vel |     	rhat * cos(2/*pi/*f/*t)    	|
|  rhat   | Ref amplitude (Q32 fraction of max) |
|  disp   |   			ADC1 or ADC2		 	|
|   vel	  |   			ADC1 or ADC2 	 		|
|    p    | 		  	disp or vel				|

Constants rhat, f, A, B, C, D are taken from memory (input via GUI), and all may be swept or constant.


Outputs are then given by:
OUT1: (Product\_1 <<1 + Product\_2 << 1) >> 15
OUT2: (Product\_1 + Product\_2 + Product\_3 + Product\_4 + OFFSET<<15) >> 15

# Frequency inputs
All frequency inputs are fed to the system as an integer "phase". This represents the proportion of a single cycle that the generator should advance along the sine wave at each clock cycle. The phase input is 30 bits wide, and the clock frequency is 125MHz, so the phase is calculated (at the python API level) using:
frequency = (125MHz * phase / 2^30)
phase = frequency * 2^30 / 125MHz 

#Final scaling factors
The tables here show all shifts and scales that happen inside the FPGA. Additionally, parameters are scaled in the Python API before they get to this system, so that they are intuitive to use (e.g. a linear feedback constant of 1 means that input=output). These details are handled in the mem_mapping.py file.

#Sampling & feedback rates
THe RedPitaya runs at 125MHz, and calculates feedback values at that rate, with about 20 cycles (160ns) round-trip latency.
Recording rate is limited by memory and network bandwidth. Input and output signals are filtered, downsampled, and saved at one of two rates:

slow: 488.281kHz (sampling / 256)
fast: 2.5MHz (sampling / 50)

The filtering operation is resource-constrained, and so is not maximally flat in the pass-band, nor is the rolloff particularly steep. This means that behaviour recorded through the software doesn't completely match the real behaviour, and oscilloscope measurements will be more reliable. This should not reflect feedback operations.

