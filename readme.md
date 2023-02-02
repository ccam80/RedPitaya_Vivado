# Getting started:
## IP Core location
if project location is not
```
C:/GitHub/RedPitaya_Vivado/
```
the IP Core location have to be changed. Therefore got to Tools --> Settings --> IP --> Repository
## Generate and implement new bit file
- Open Vivado and press Generate Bitstream, after all changes have been saved
- Wihile bit file generation in the upper right corner a runing circle is shown, if the operation is finished there is written ""
- the new bit file is located in ``*/feedback.runs/impl_1`` and is named ``system_wrapper.bit`` (don't change this name)
- Coppy ``system_wrapper.bit`` with a FTP client (e.g. WinSCP) to the FPGA into ``/usr/src``
- if starting the server (<https://github.com/ccam80/RedPitaya_Onboard>) it is automatic implemented

# System behaviour:
!!! In1 and In2 are in V if jumper is in LV Position (+-1V must not be exceeded)<br>
If jumper is in HV Position In1 and In2 are in V/20 (+-20V must not be exceeded)
## fixed
Out1[V] = (param_b * sin(2pi*(param_a-0.5)/2^30*125MHz*t) * 2^15 + param_c) / (2^15 * 2^13)
## sweep
frequenzy sweep from<br>
Out1[V] = (param_c * sin(2pi*(param_a-0.5)/2^30*125MHz*t) * 2^15) / (2^15 * 2^13)<br>
to<br>
Out1[V] = (param_c * sin(2pi*(param_b-0.5)/2^30*125MHz*t) * 2^15) / (2^15 * 2^13)
## linear
Out1[V] = ((param_a * 2^15) + (param_c * In1 * 2^13 * In2 * 2^13)/2^8 + (param_d * In1 * 2^13 * In1 * 2^13)/2^8 + (param_e * In1 * 2^13 * In1 * 2^13 * In1 * 2^13)/2^21) / (2^15 * 2^13)<br>
simplified:<br>
Out1[V] = ((param_a * 2^15) + (param_c * In1 * In2 * 2^18) + (param_d * In1^2 * 2^18) + (param_e * In1^3 * 2^18)) / (2^28)
## parametric
Out1[V] = ((param_a * 2^15) + (param_c * In1 * 2^13 * sin(2pi*(param_f-0.5)/2^30*125MHz*t) * 2^15)/2^10 + (param_d * In1 * 2^13 * In1 * 2^13)/2^8 + (param_e * In1 * 2^13 * In1 * 2^13 * In1 * 2^13)/2^21) / (2^15 * 2^13)<br>
simplified:<br>
Out1[V] = ((param_a * 2^15) + (param_c * In1 * sin(2pi*(param_f-0.5)/2^30*125MHz*t) * 2^18) + (param_d * In1^2 * 2^18) + (param_e * In1^3 * 2^18)) / (2^28)

# Math Implementation:
Arguments to feeback equations are collected by the multiplier_breakout module, which performs narrow 16x16 multiplications, then feeds operands to multiplier cores. The feedback\_combined module then sums the products of these multiplications. The inputs and outputs for each stimulation mode are given by:

| **Mode**     |     OP1     | OP2 |   OP3  |   OP4  |   OP5   |  OP6  |   OP7  | LONG_F | OFFSET |
|--------------|:-----------:|:---:|:------:|:------:|:-------:|:-----:|:------:|:------:|:------:|
| fixed        |  {DDS << 8} |  B  |    0   |    0   |    0    |   0   |    0   |    0   |    C   |
| sweep        |  {DDS << 8} |  C  |    0   |    0   |    0    |   0   |    0   |    0   |    D   |
| lin          | {ADC1\*ADC2} |  C  |    D   | ADC1^2 |    E    | ADC*3 |    A   |  7FFF  |    0   |
| parametric   |  {ADC1\*DDS} |  C  |    D   | ADC1^2 |    E    | ADC*3 |    A   |  7FFF  |    0   |
| random       |  {RNG << 8} |  C  |    0   |    0   |    0    |   0   |    0   |    0   |    D   |
| Result Slice |    [63:8]   |     | [63:8] |        | [63:21] |       | [63:0] |        | [31:0] |
|              |             |     |        |        |         |       |        |        |        |
|     Width    |      32     |  32 |   32   |   32   |    32   |   48  |   32   |   64   |   32   |

V_out is then calculated by: <br>

V_out =	Product\_1 + Product\_2 + Product\_3 + Product\_4 + OFFSET
