
>
Refreshing IP repositories
234*coregenZ19-234h px? 
?
 Loaded user IP repository '%s'.
1135*coregen2F
2/home/acoustics/Documents/RP/Pavel_Demin/tmp/cores2default:defaultZ19-1700h px? 
?
"Loaded Vivado IP repository '%s'.
1332*coregen27
#/tools/Xilinx/Vivado/2020.2/data/ip2default:defaultZ19-2313h px? 
?
Command: %s
53*	vivadotcl2?
?synth_design -top system_wrapper -part xc7z010clg400-1 -directive PerformanceOptimized -fsm_extraction one_hot -keep_equivalent_registers -resource_sharing off -no_lc -shreg_min_size 52default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0102default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0102default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7z010clg400-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
100852default:defaultZ8-7075h px? 
?
%s*synth2?
?Starting RTL Elaboration : Time (s): cpu = 00:00:16 ; elapsed = 00:00:28 . Memory (MB): peak = 2292.738 ; gain = 0.000 ; free physical = 8847 ; free virtual = 14650
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2"
system_wrapper2default:default2
 2default:default2s
]/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/sources_1/imports/system_wrapper.v2default:default2
122default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
system2default:default2
 2default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
5882default:default8@Z8-6157h px? 
?
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
8442default:default8@Z8-4446h px? 
?
synthesizing module '%s'%s4497*oasys2$
system_phase_1_02default:default2
 2default:default2?
z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_phase_1_0/synth/system_phase_1_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2!
axis_constant2default:default2
 2default:default2?
o/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/457f/src/axis_constant.v2default:default2
42default:default8@Z8-6157h px? 
f
%s
*synth2N
:	Parameter AXIS_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
axis_constant2default:default2
 2default:default2
12default:default2
12default:default2?
o/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/457f/src/axis_constant.v2default:default2
42default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
system_phase_1_02default:default2
 2default:default2
22default:default2
12default:default2?
z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_phase_1_0/synth/system_phase_1_0.v2default:default2
572default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
m_axis_tdata2default:default2$
system_phase_1_02default:default2!
a_const_16Q162default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
8442default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
m_axis_tvalid2default:default2$
system_phase_1_02default:default2!
a_const_16Q162default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
8442default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2!
a_const_16Q162default:default2$
system_phase_1_02default:default2
42default:default2
22default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
8442default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2"
system_adc_0_02default:default2
 2default:default2?
v/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_adc_0_0/synth/system_adc_0_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2'
axis_red_pitaya_adc2default:default2
 2default:default2?
u/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/afda/src/axis_red_pitaya_adc.v2default:default2
42default:default8@Z8-6157h px? 
d
%s
*synth2L
8	Parameter ADC_DATA_WIDTH bound to: 14 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter PADDING_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
axis_red_pitaya_adc2default:default2
 2default:default2
32default:default2
12default:default2?
u/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/afda/src/axis_red_pitaya_adc.v2default:default2
42default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
system_adc_0_02default:default2
 2default:default2
42default:default2
12default:default2?
v/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_adc_0_0/synth/system_adc_0_0.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2/
system_axis_broadcaster_0_02default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_axis_broadcaster_0_0/synth/system_axis_broadcaster_0_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys23
top_system_axis_broadcaster_0_02default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_axis_broadcaster_0_0/hdl/top_system_axis_broadcaster_0_0.v2default:default2
602default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_NUM_MI_SLOTS bound to: 2 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_S_AXIS_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_M_AXIS_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_AXIS_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXIS_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_S_AXIS_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_M_AXIS_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXIS_SIGNAL_SET bound to: 2 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_TPAYLOAD_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys21
axis_broadcaster_v1_1_21_core2default:default2
 2default:default2?
~/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/30ef/hdl/axis_broadcaster_v1_1_vl_rfs.v2default:default2
592default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_AXIS_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_AXIS_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXIS_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXIS_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXIS_SIGNAL_SET bound to: 2 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_NUM_MI_SLOTS bound to: 2 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_TPAYLOAD_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2?
+axis_infrastructure_v1_1_0_util_vector2axis2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
9922default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter C_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_TPAYLOAD_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_SIGNAL_SET bound to: 2 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter P_TDATA_INDX bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TSTRB_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TKEEP_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TLAST_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter P_TID_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TDEST_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TUSER_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+axis_infrastructure_v1_1_0_util_vector2axis2default:default2
 2default:default2
52default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
9922default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2?
+axis_infrastructure_v1_1_0_util_axis2vector2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
8102default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter C_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_TPAYLOAD_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_SIGNAL_SET bound to: 2 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter P_TDATA_INDX bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TSTRB_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TKEEP_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TLAST_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter P_TID_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TDEST_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TUSER_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+axis_infrastructure_v1_1_0_util_axis2vector2default:default2
 2default:default2
62default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
8102default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
axis_broadcaster_v1_1_21_core2default:default2
 2default:default2
72default:default2
12default:default2?
~/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/30ef/hdl/axis_broadcaster_v1_1_vl_rfs.v2default:default2
592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys25
!tdata_system_axis_broadcaster_0_02default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_axis_broadcaster_0_0/hdl/tdata_system_axis_broadcaster_0_0.v2default:default2
492default:default8@Z8-6157h px? 
j
%s
*synth2R
>	Parameter C_S_AXIS_TDATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_M_AXIS_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!tdata_system_axis_broadcaster_0_02default:default2
 2default:default2
82default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_axis_broadcaster_0_0/hdl/tdata_system_axis_broadcaster_0_0.v2default:default2
492default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys25
!tuser_system_axis_broadcaster_0_02default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_axis_broadcaster_0_0/hdl/tuser_system_axis_broadcaster_0_0.v2default:default2
492default:default8@Z8-6157h px? 
i
%s
*synth2Q
=	Parameter C_S_AXIS_TUSER_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_M_AXIS_TUSER_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!tuser_system_axis_broadcaster_0_02default:default2
 2default:default2
92default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_axis_broadcaster_0_0/hdl/tuser_system_axis_broadcaster_0_0.v2default:default2
492default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
top_system_axis_broadcaster_0_02default:default2
 2default:default2
102default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_axis_broadcaster_0_0/hdl/top_system_axis_broadcaster_0_0.v2default:default2
602default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
system_axis_broadcaster_0_02default:default2
 2default:default2
112default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_axis_broadcaster_0_0/synth/system_axis_broadcaster_0_0.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2/
system_axis_broadcaster_0_12default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_axis_broadcaster_0_1/synth/system_axis_broadcaster_0_1.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys23
top_system_axis_broadcaster_0_12default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_axis_broadcaster_0_1/hdl/top_system_axis_broadcaster_0_1.v2default:default2
602default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_NUM_MI_SLOTS bound to: 2 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_S_AXIS_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_M_AXIS_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_AXIS_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXIS_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_S_AXIS_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_M_AXIS_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXIS_SIGNAL_SET bound to: 3 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_TPAYLOAD_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2A
-axis_broadcaster_v1_1_21_core__parameterized02default:default2
 2default:default2?
~/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/30ef/hdl/axis_broadcaster_v1_1_vl_rfs.v2default:default2
592default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_AXIS_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_AXIS_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXIS_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXIS_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXIS_SIGNAL_SET bound to: 3 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_NUM_MI_SLOTS bound to: 2 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_TPAYLOAD_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2O
;axis_infrastructure_v1_1_0_util_vector2axis__parameterized02default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
9922default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter C_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_TPAYLOAD_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_SIGNAL_SET bound to: 3 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter P_TDATA_INDX bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TSTRB_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TKEEP_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TLAST_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter P_TID_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TDEST_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TUSER_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;axis_infrastructure_v1_1_0_util_vector2axis__parameterized02default:default2
 2default:default2
112default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
9922default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2O
;axis_infrastructure_v1_1_0_util_axis2vector__parameterized02default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
8102default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter C_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_TPAYLOAD_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_SIGNAL_SET bound to: 3 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter P_TDATA_INDX bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TSTRB_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TKEEP_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TLAST_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter P_TID_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TDEST_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TUSER_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;axis_infrastructure_v1_1_0_util_axis2vector__parameterized02default:default2
 2default:default2
112default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
8102default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-axis_broadcaster_v1_1_21_core__parameterized02default:default2
 2default:default2
112default:default2
12default:default2?
~/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/30ef/hdl/axis_broadcaster_v1_1_vl_rfs.v2default:default2
592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys25
!tdata_system_axis_broadcaster_0_12default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_axis_broadcaster_0_1/hdl/tdata_system_axis_broadcaster_0_1.v2default:default2
492default:default8@Z8-6157h px? 
j
%s
*synth2R
>	Parameter C_S_AXIS_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_M_AXIS_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!tdata_system_axis_broadcaster_0_12default:default2
 2default:default2
122default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_axis_broadcaster_0_1/hdl/tdata_system_axis_broadcaster_0_1.v2default:default2
492default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys25
!tuser_system_axis_broadcaster_0_12default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_axis_broadcaster_0_1/hdl/tuser_system_axis_broadcaster_0_1.v2default:default2
492default:default8@Z8-6157h px? 
i
%s
*synth2Q
=	Parameter C_S_AXIS_TUSER_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_M_AXIS_TUSER_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!tuser_system_axis_broadcaster_0_12default:default2
 2default:default2
132default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_axis_broadcaster_0_1/hdl/tuser_system_axis_broadcaster_0_1.v2default:default2
492default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
top_system_axis_broadcaster_0_12default:default2
 2default:default2
142default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_axis_broadcaster_0_1/hdl/top_system_axis_broadcaster_0_1.v2default:default2
602default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
system_axis_broadcaster_0_12default:default2
 2default:default2
152default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_axis_broadcaster_0_1/synth/system_axis_broadcaster_0_1.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
system_axis_combiner_0_02default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_axis_combiner_0_0/synth/system_axis_combiner_0_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2-
axis_combiner_v1_1_20_top2default:default2
 2default:default2?
{/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/23ef/hdl/axis_combiner_v1_1_vl_rfs.v2default:default2
562default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_AXIS_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_AXIS_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXIS_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXIS_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXIS_SIGNAL_SET bound to: 3 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_MASTER_PORT_NUM bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_NUM_SI_SLOTS bound to: 2 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_TPAYLOAD_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_MASTER_PORT_NUM bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2O
;axis_infrastructure_v1_1_0_util_axis2vector__parameterized12default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
8102default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter C_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TUSER_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_TPAYLOAD_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_SIGNAL_SET bound to: 3 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter P_TDATA_INDX bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TSTRB_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TKEEP_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TLAST_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter P_TID_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TDEST_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TUSER_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;axis_infrastructure_v1_1_0_util_axis2vector__parameterized12default:default2
 2default:default2
152default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
8102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2O
;axis_infrastructure_v1_1_0_util_vector2axis__parameterized12default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
9922default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter C_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TUSER_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_TPAYLOAD_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_SIGNAL_SET bound to: 3 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter P_TDATA_INDX bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TSTRB_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TKEEP_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TLAST_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter P_TID_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TDEST_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TUSER_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;axis_infrastructure_v1_1_0_util_vector2axis__parameterized12default:default2
 2default:default2
152default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
9922default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
axis_combiner_v1_1_20_top2default:default2
 2default:default2
162default:default2
12default:default2?
{/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/23ef/hdl/axis_combiner_v1_1_vl_rfs.v2default:default2
562default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
system_axis_combiner_0_02default:default2
 2default:default2
172default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_axis_combiner_0_0/synth/system_axis_combiner_0_0.v2default:default2
572default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
s_axis_tready2default:default2,
system_axis_combiner_0_02default:default2#
axis_combiner_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
8702default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2#
axis_combiner_02default:default2,
system_axis_combiner_0_02default:default2
82default:default2
72default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
8702default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2"
system_cfg_0_02default:default2
 2default:default2?
v/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_cfg_0_0/synth/system_cfg_0_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2$
axi_cfg_register2default:default2
 2default:default2?
r/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/df40/src/axi_cfg_register.v2default:default2
42default:default8@Z8-6157h px? 
e
%s
*synth2M
9	Parameter CFG_DATA_WIDTH bound to: 160 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter ADDR_LSB bound to: 2 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter CFG_SIZE bound to: 5 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter CFG_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
FDRE2default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
137242default:default8@Z8-6157h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_C_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_D_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_R_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FDRE2default:default2
 2default:default2
182default:default2
12default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
137242default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
axi_cfg_register2default:default2
 2default:default2
192default:default2
12default:default2?
r/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/df40/src/axi_cfg_register.v2default:default2
42default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
system_cfg_0_02default:default2
 2default:default2
202default:default2
12default:default2?
v/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_cfg_0_0/synth/system_cfg_0_0.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'638*oasys2"
system_cic_0_02default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_cic_0_0/synth/system_cic_0_0.vhd2default:default2
742default:default8@Z8-638h px? 
q
%s
*synth2Y
E	Parameter C_COMPONENT_NAME bound to: system_cic_0_0 - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_FILTER_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_NUM_STAGES bound to: 6 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_DIFF_DELAY bound to: 1 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter C_RATE bound to: 4 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_INPUT_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_OUTPUT_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_USE_DSP bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_HAS_ROUNDING bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_NUM_CHANNELS bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_RATE_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_MIN_RATE bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_MAX_RATE bound to: 6250 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_SAMPLE_FREQ bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_CLK_FREQ bound to: 1 - type: integer 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter C_USE_STREAMING_INTERFACE bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_C1 bound to: 23 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_C2 bound to: 22 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_C3 bound to: 21 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_C4 bound to: 20 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_C5 bound to: 20 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_C6 bound to: 19 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_I1 bound to: 87 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_I2 bound to: 74 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_I3 bound to: 62 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_I4 bound to: 51 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_I5 bound to: 40 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_I6 bound to: 29 - type: integer 
2default:defaulth p
x
? 
q
%s
*synth2Y
E	Parameter C_S_AXIS_CONFIG_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
o
%s
*synth2W
C	Parameter C_S_AXIS_DATA_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
o
%s
*synth2W
C	Parameter C_M_AXIS_DATA_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter C_M_AXIS_DATA_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_HAS_DOUT_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_HAS_ACLKEN bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_HAS_ARESETN bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
cic_compiler_v4_0_152default:default2?
|/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/0aa2/hdl/cic_compiler_v4_0_vh_rfs.vhd2default:default2
161332default:default2
U02default:default2(
cic_compiler_v4_0_152default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_cic_0_0/synth/system_cic_0_0.vhd2default:default2
1692default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2"
system_cic_0_02default:default2
332default:default2
12default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_cic_0_0/synth/system_cic_0_0.vhd2default:default2
742default:default8@Z8-256h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2&
s_axis_data_tready2default:default2"
system_cic_0_02default:default2
cic_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
8992default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
cic_02default:default2"
system_cic_0_02default:default2
102default:default2
92default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
8992default:default8@Z8-7023h px? 
?
synthesizing module '%s'638*oasys2"
system_cic_0_12default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_cic_0_1/synth/system_cic_0_1.vhd2default:default2
742default:default8@Z8-638h px? 
q
%s
*synth2Y
E	Parameter C_COMPONENT_NAME bound to: system_cic_0_1 - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_FILTER_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_NUM_STAGES bound to: 6 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_DIFF_DELAY bound to: 1 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter C_RATE bound to: 4 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_INPUT_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_OUTPUT_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_USE_DSP bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_HAS_ROUNDING bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_NUM_CHANNELS bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_RATE_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_MIN_RATE bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_MAX_RATE bound to: 6250 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_SAMPLE_FREQ bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_CLK_FREQ bound to: 1 - type: integer 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter C_USE_STREAMING_INTERFACE bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_C1 bound to: 23 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_C2 bound to: 22 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_C3 bound to: 21 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_C4 bound to: 20 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_C5 bound to: 20 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_C6 bound to: 19 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_I1 bound to: 87 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_I2 bound to: 74 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_I3 bound to: 62 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_I4 bound to: 51 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_I5 bound to: 40 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter C_I6 bound to: 29 - type: integer 
2default:defaulth p
x
? 
q
%s
*synth2Y
E	Parameter C_S_AXIS_CONFIG_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
o
%s
*synth2W
C	Parameter C_S_AXIS_DATA_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
o
%s
*synth2W
C	Parameter C_M_AXIS_DATA_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter C_M_AXIS_DATA_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_HAS_DOUT_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_HAS_ACLKEN bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_HAS_ARESETN bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
cic_compiler_v4_0_152default:default2?
|/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/0aa2/hdl/cic_compiler_v4_0_vh_rfs.vhd2default:default2
161332default:default2
U02default:default2(
cic_compiler_v4_0_152default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_cic_0_1/synth/system_cic_0_1.vhd2default:default2
1692default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2"
system_cic_0_12default:default2
342default:default2
12default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_cic_0_1/synth/system_cic_0_1.vhd2default:default2
742default:default8@Z8-256h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2&
s_axis_data_tready2default:default2"
system_cic_0_12default:default2
cic_12default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9092default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
cic_12default:default2"
system_cic_0_12default:default2
102default:default2
92default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9092default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2$
system_const_0_02default:default2
 2default:default2?
z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_const_0_0/synth/system_const_0_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys20
xlconstant_v1_1_7_xlconstant2default:default2
 2default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v2default:default2
232default:default8@Z8-6157h px? 
Q
%s
*synth29
%	Parameter CONST_VAL bound to: 1'b1 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter CONST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
xlconstant_v1_1_7_xlconstant2default:default2
 2default:default2
352default:default2
12default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
system_const_0_02default:default2
 2default:default2
362default:default2
12default:default2?
z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_const_0_0/synth/system_const_0_0.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2#
system_conv_0_02default:default2
 2default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_conv_0_0/synth/system_conv_0_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2G
3axis_dwidth_converter_v1_1_21_axis_dwidth_converter2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/6614/hdl/axis_dwidth_converter_v1_1_vl_rfs.v2default:default2
8102default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_S_AXIS_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_M_AXIS_TDATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_AXIS_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXIS_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_S_AXIS_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_M_AXIS_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXIS_SIGNAL_SET bound to: 3 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter P_SS_TKEEP_REQUIRED bound to: 0 - type: integer 
2default:defaulth p
x
? 
y
%s
*synth2a
M	Parameter P_AXIS_SIGNAL_SET bound to: 32'b00000000000000000000000000000011 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_S_RATIO bound to: 2 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_M_RATIO bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_D2_TDATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter P_D1_TUSER_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter P_D2_TUSER_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter P_D3_TUSER_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter P_D1_REG_CONFIG bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter P_D3_REG_CONFIG bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2?
+axis_dwidth_converter_v1_1_21_axisc_upsizer2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/6614/hdl/axis_dwidth_converter_v1_1_vl_rfs.v2default:default2
4372default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_S_AXIS_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_M_AXIS_TDATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_AXIS_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXIS_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_S_AXIS_TUSER_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_M_AXIS_TUSER_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
y
%s
*synth2a
M	Parameter C_AXIS_SIGNAL_SET bound to: 32'b00000000000000000000000000000011 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_RATIO bound to: 2 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter P_READY_EXIST bound to: 1'b1 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter P_DATA_EXIST bound to: 1'b1 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter P_STRB_EXIST bound to: 1'b0 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter P_KEEP_EXIST bound to: 1'b0 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter P_LAST_EXIST bound to: 1'b0 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter P_ID_EXIST bound to: 1'b0 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter P_DEST_EXIST bound to: 1'b0 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter P_USER_EXIST bound to: 1'b0 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_S_AXIS_TSTRB_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_M_AXIS_TSTRB_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter SM_RESET bound to: 3'b000 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter SM_IDLE bound to: 3'b001 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter SM_ACTIVE bound to: 3'b101 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter SM_END bound to: 3'b011 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter SM_END_TO_ACTIVE bound to: 3'b010 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+axis_dwidth_converter_v1_1_21_axisc_upsizer2default:default2
 2default:default2
372default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/6614/hdl/axis_dwidth_converter_v1_1_vl_rfs.v2default:default2
4372default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2C
/axis_register_slice_v1_1_22_axis_register_slice2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ebcc/hdl/axis_register_slice_v1_1_vl_rfs.v2default:default2
28382default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_AXIS_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_AXIS_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXIS_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXIS_TUSER_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
y
%s
*synth2a
M	Parameter C_AXIS_SIGNAL_SET bound to: 32'b00000000000000000000000000000011 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_REG_CONFIG bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_NUM_SLR_CROSSINGS bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_PIPELINES_MASTER bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_PIPELINES_SLAVE bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_PIPELINES_MIDDLE bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_TPAYLOAD_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2O
;axis_infrastructure_v1_1_0_util_axis2vector__parameterized22default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
8102default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter C_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TUSER_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_TPAYLOAD_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
t
%s
*synth2\
H	Parameter C_SIGNAL_SET bound to: 32'b00000000000000000000000000000011 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter P_TDATA_INDX bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TSTRB_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TKEEP_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TLAST_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter P_TID_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TDEST_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TUSER_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;axis_infrastructure_v1_1_0_util_axis2vector__parameterized22default:default2
 2default:default2
372default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
8102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2D
0axis_register_slice_v1_1_22_axisc_register_slice2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ebcc/hdl/axis_register_slice_v1_1_vl_rfs.v2default:default2
19362default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_REG_CONFIG bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_NUM_SLR_CROSSINGS bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_PIPELINES_MASTER bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_PIPELINES_SLAVE bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_PIPELINES_MIDDLE bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2D
0axis_register_slice_v1_1_22_axisc_register_slice2default:default2
 2default:default2
382default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ebcc/hdl/axis_register_slice_v1_1_vl_rfs.v2default:default2
19362default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2O
;axis_infrastructure_v1_1_0_util_vector2axis__parameterized22default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
9922default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter C_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TUSER_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_TPAYLOAD_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
t
%s
*synth2\
H	Parameter C_SIGNAL_SET bound to: 32'b00000000000000000000000000000011 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter P_TDATA_INDX bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TSTRB_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TKEEP_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TLAST_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter P_TID_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TDEST_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TUSER_INDX bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;axis_infrastructure_v1_1_0_util_vector2axis__parameterized22default:default2
 2default:default2
382default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
9922default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2C
/axis_register_slice_v1_1_22_axis_register_slice2default:default2
 2default:default2
392default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ebcc/hdl/axis_register_slice_v1_1_vl_rfs.v2default:default2
28382default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2S
?axis_register_slice_v1_1_22_axis_register_slice__parameterized02default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ebcc/hdl/axis_register_slice_v1_1_vl_rfs.v2default:default2
28382default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_AXIS_TDATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_AXIS_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXIS_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXIS_TUSER_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
y
%s
*synth2a
M	Parameter C_AXIS_SIGNAL_SET bound to: 32'b00000000000000000000000000000011 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_REG_CONFIG bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_NUM_SLR_CROSSINGS bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_PIPELINES_MASTER bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_PIPELINES_SLAVE bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_PIPELINES_MIDDLE bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_TPAYLOAD_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2O
;axis_infrastructure_v1_1_0_util_axis2vector__parameterized32default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
8102default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter C_TDATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TUSER_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_TPAYLOAD_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
t
%s
*synth2\
H	Parameter C_SIGNAL_SET bound to: 32'b00000000000000000000000000000011 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter P_TDATA_INDX bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TSTRB_INDX bound to: 64 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TKEEP_INDX bound to: 64 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TLAST_INDX bound to: 64 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter P_TID_INDX bound to: 64 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TDEST_INDX bound to: 64 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TUSER_INDX bound to: 64 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;axis_infrastructure_v1_1_0_util_axis2vector__parameterized32default:default2
 2default:default2
392default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
8102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2T
@axis_register_slice_v1_1_22_axisc_register_slice__parameterized02default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ebcc/hdl/axis_register_slice_v1_1_vl_rfs.v2default:default2
19362default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_REG_CONFIG bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_NUM_SLR_CROSSINGS bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_PIPELINES_MASTER bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_PIPELINES_SLAVE bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_PIPELINES_MIDDLE bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2T
@axis_register_slice_v1_1_22_axisc_register_slice__parameterized02default:default2
 2default:default2
392default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ebcc/hdl/axis_register_slice_v1_1_vl_rfs.v2default:default2
19362default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2O
;axis_infrastructure_v1_1_0_util_vector2axis__parameterized32default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
9922default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter C_TDATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TUSER_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_TPAYLOAD_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
t
%s
*synth2\
H	Parameter C_SIGNAL_SET bound to: 32'b00000000000000000000000000000011 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter P_TDATA_INDX bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TSTRB_INDX bound to: 64 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TKEEP_INDX bound to: 64 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TLAST_INDX bound to: 64 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter P_TID_INDX bound to: 64 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TDEST_INDX bound to: 64 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TUSER_INDX bound to: 64 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;axis_infrastructure_v1_1_0_util_vector2axis__parameterized32default:default2
 2default:default2
392default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
9922default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2S
?axis_register_slice_v1_1_22_axis_register_slice__parameterized02default:default2
 2default:default2
392default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ebcc/hdl/axis_register_slice_v1_1_vl_rfs.v2default:default2
28382default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2G
3axis_dwidth_converter_v1_1_21_axis_dwidth_converter2default:default2
 2default:default2
402default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/6614/hdl/axis_dwidth_converter_v1_1_vl_rfs.v2default:default2
8102default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
system_conv_0_02default:default2
 2default:default2
412default:default2
12default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_conv_0_0/synth/system_conv_0_0.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2#
system_conv_0_12default:default2
 2default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_conv_0_1/synth/system_conv_0_1.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2W
Caxis_dwidth_converter_v1_1_21_axis_dwidth_converter__parameterized02default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/6614/hdl/axis_dwidth_converter_v1_1_vl_rfs.v2default:default2
8102default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_S_AXIS_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_M_AXIS_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_AXIS_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXIS_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_S_AXIS_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_M_AXIS_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXIS_SIGNAL_SET bound to: 3 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter P_SS_TKEEP_REQUIRED bound to: 0 - type: integer 
2default:defaulth p
x
? 
y
%s
*synth2a
M	Parameter P_AXIS_SIGNAL_SET bound to: 32'b00000000000000000000000000000011 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_S_RATIO bound to: 2 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_M_RATIO bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_D2_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter P_D1_TUSER_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter P_D2_TUSER_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter P_D3_TUSER_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter P_D1_REG_CONFIG bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter P_D3_REG_CONFIG bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2O
;axis_dwidth_converter_v1_1_21_axisc_upsizer__parameterized02default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/6614/hdl/axis_dwidth_converter_v1_1_vl_rfs.v2default:default2
4372default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_S_AXIS_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_M_AXIS_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_AXIS_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXIS_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_S_AXIS_TUSER_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_M_AXIS_TUSER_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
y
%s
*synth2a
M	Parameter C_AXIS_SIGNAL_SET bound to: 32'b00000000000000000000000000000011 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_RATIO bound to: 2 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter P_READY_EXIST bound to: 1'b1 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter P_DATA_EXIST bound to: 1'b1 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter P_STRB_EXIST bound to: 1'b0 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter P_KEEP_EXIST bound to: 1'b0 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter P_LAST_EXIST bound to: 1'b0 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter P_ID_EXIST bound to: 1'b0 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter P_DEST_EXIST bound to: 1'b0 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter P_USER_EXIST bound to: 1'b0 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_S_AXIS_TSTRB_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_M_AXIS_TSTRB_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter SM_RESET bound to: 3'b000 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter SM_IDLE bound to: 3'b001 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter SM_ACTIVE bound to: 3'b101 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter SM_END bound to: 3'b011 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter SM_END_TO_ACTIVE bound to: 3'b010 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;axis_dwidth_converter_v1_1_21_axisc_upsizer__parameterized02default:default2
 2default:default2
412default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/6614/hdl/axis_dwidth_converter_v1_1_vl_rfs.v2default:default2
4372default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2S
?axis_register_slice_v1_1_22_axis_register_slice__parameterized12default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ebcc/hdl/axis_register_slice_v1_1_vl_rfs.v2default:default2
28382default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_AXIS_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_AXIS_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXIS_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXIS_TUSER_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
y
%s
*synth2a
M	Parameter C_AXIS_SIGNAL_SET bound to: 32'b00000000000000000000000000000011 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_REG_CONFIG bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_NUM_SLR_CROSSINGS bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_PIPELINES_MASTER bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_PIPELINES_SLAVE bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_PIPELINES_MIDDLE bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_TPAYLOAD_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2O
;axis_infrastructure_v1_1_0_util_axis2vector__parameterized42default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
8102default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter C_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TUSER_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_TPAYLOAD_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
t
%s
*synth2\
H	Parameter C_SIGNAL_SET bound to: 32'b00000000000000000000000000000011 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter P_TDATA_INDX bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TSTRB_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TKEEP_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TLAST_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter P_TID_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TDEST_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TUSER_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;axis_infrastructure_v1_1_0_util_axis2vector__parameterized42default:default2
 2default:default2
412default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
8102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2T
@axis_register_slice_v1_1_22_axisc_register_slice__parameterized12default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ebcc/hdl/axis_register_slice_v1_1_vl_rfs.v2default:default2
19362default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_REG_CONFIG bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_NUM_SLR_CROSSINGS bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_PIPELINES_MASTER bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_PIPELINES_SLAVE bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_PIPELINES_MIDDLE bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2T
@axis_register_slice_v1_1_22_axisc_register_slice__parameterized12default:default2
 2default:default2
412default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ebcc/hdl/axis_register_slice_v1_1_vl_rfs.v2default:default2
19362default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2O
;axis_infrastructure_v1_1_0_util_vector2axis__parameterized42default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
9922default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter C_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_TUSER_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_TPAYLOAD_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
t
%s
*synth2\
H	Parameter C_SIGNAL_SET bound to: 32'b00000000000000000000000000000011 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter P_TDATA_INDX bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TSTRB_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TKEEP_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TLAST_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter P_TID_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TDEST_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_TUSER_INDX bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;axis_infrastructure_v1_1_0_util_vector2axis__parameterized42default:default2
 2default:default2
412default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
9922default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2S
?axis_register_slice_v1_1_22_axis_register_slice__parameterized12default:default2
 2default:default2
412default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ebcc/hdl/axis_register_slice_v1_1_vl_rfs.v2default:default2
28382default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2W
Caxis_dwidth_converter_v1_1_21_axis_dwidth_converter__parameterized02default:default2
 2default:default2
412default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/6614/hdl/axis_dwidth_converter_v1_1_vl_rfs.v2default:default2
8102default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
system_conv_0_12default:default2
 2default:default2
422default:default2
12default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_conv_0_1/synth/system_conv_0_1.v2default:default2
572default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
s_axis_tready2default:default2#
system_conv_0_12default:default2
conv_12default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9302default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
conv_12default:default2#
system_conv_0_12default:default2
82default:default2
72default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9302default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2"
system_dac_0_02default:default2
 2default:default2?
v/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_dac_0_0/synth/system_dac_0_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2'
axis_red_pitaya_dac2default:default2
 2default:default2?
u/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/f42e/src/axis_red_pitaya_dac.v2default:default2
42default:default8@Z8-6157h px? 
d
%s
*synth2L
8	Parameter DAC_DATA_WIDTH bound to: 14 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter AXIS_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
ODDR2default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
497912default:default8@Z8-6157h px? 
h
%s
*synth2P
<	Parameter DDR_CLK_EDGE bound to: SAME_EDGE - type: string 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_C_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_D1_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_D2_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter SRTYPE bound to: SYNC - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ODDR2default:default2
 2default:default2
432default:default2
12default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
497912default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
axis_red_pitaya_dac2default:default2
 2default:default2
442default:default2
12default:default2?
u/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/f42e/src/axis_red_pitaya_dac.v2default:default2
42default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
system_dac_0_02default:default2
 2default:default2
452default:default2
12default:default2?
v/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_dac_0_0/synth/system_dac_0_0.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'638*oasys2"
system_dds_0_02default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_dds_0_0/synth/system_dds_0_0.vhd2default:default2
692default:default8@Z8-638h px? 
?
-Port '%s' is missing in component declaration4102*oasys2%
debug_axi_pinc_in2default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_dds_0_0/synth/system_dds_0_0.vhd2default:default2
722default:default8@Z8-5640h px? 
?
-Port '%s' is missing in component declaration4102*oasys2%
debug_axi_poff_in2default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_dds_0_0/synth/system_dds_0_0.vhd2default:default2
722default:default8@Z8-5640h px? 
?
-Port '%s' is missing in component declaration4102*oasys2'
debug_axi_resync_in2default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_dds_0_0/synth/system_dds_0_0.vhd2default:default2
722default:default8@Z8-5640h px? 
?
-Port '%s' is missing in component declaration4102*oasys2%
debug_axi_chan_in2default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_dds_0_0/synth/system_dds_0_0.vhd2default:default2
722default:default8@Z8-5640h px? 
?
-Port '%s' is missing in component declaration4102*oasys2!
debug_core_nd2default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_dds_0_0/synth/system_dds_0_0.vhd2default:default2
722default:default8@Z8-5640h px? 
?
-Port '%s' is missing in component declaration4102*oasys2
debug_phase2default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_dds_0_0/synth/system_dds_0_0.vhd2default:default2
722default:default8@Z8-5640h px? 
?
-Port '%s' is missing in component declaration4102*oasys2"
debug_phase_nd2default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_dds_0_0/synth/system_dds_0_0.vhd2default:default2
722default:default8@Z8-5640h px? 
f
%s
*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_MODE_OF_OPERATION bound to: 0 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_MODULUS bound to: 9 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_ACCUMULATOR_WIDTH bound to: 30 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_CHANNELS bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_HAS_PHASE_OUT bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_HAS_PHASEGEN bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_HAS_SINCOS bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_LATENCY bound to: 10 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_MEM_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_NEGATIVE_COSINE bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_NEGATIVE_SINE bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_NOISE_SHAPING bound to: 2 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_OUTPUTS_REQUIRED bound to: 2 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_OUTPUT_FORM bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_OUTPUT_WIDTH bound to: 24 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_PHASE_ANGLE_WIDTH bound to: 11 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_PHASE_INCREMENT bound to: 3 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2q
]	Parameter C_PHASE_INCREMENT_VALUE bound to: 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 - type: string 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_RESYNC bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_PHASE_OFFSET bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2n
Z	Parameter C_PHASE_OFFSET_VALUE bound to: 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_OPTIMISE_GOAL bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_USE_DSP48 bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_POR_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_AMPLITUDE bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_HAS_ACLKEN bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_HAS_ARESETN bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_HAS_TLAST bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_HAS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_HAS_S_PHASE bound to: 1 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter C_S_PHASE_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_S_PHASE_HAS_TUSER bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_S_PHASE_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_HAS_S_CONFIG bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_S_CONFIG_SYNC_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter C_S_CONFIG_TDATA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_HAS_M_DATA bound to: 1 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_M_DATA_TDATA_WIDTH bound to: 48 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_M_DATA_HAS_TUSER bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_M_DATA_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_HAS_M_PHASE bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_M_PHASE_TDATA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_M_PHASE_HAS_TUSER bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_M_PHASE_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_DEBUG_INTERFACE bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_CHAN_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
dds_compiler_v6_0_202default:default2?
|/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/398e/hdl/dds_compiler_v6_0_vh_rfs.vhd2default:default2
473082default:default2
U02default:default2(
dds_compiler_v6_0_202default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_dds_0_0/synth/system_dds_0_0.vhd2default:default2
1822default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2"
system_dds_0_02default:default2
592default:default2
12default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_dds_0_0/synth/system_dds_0_0.vhd2default:default2
692default:default8@Z8-256h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2&
m_axis_data_tvalid2default:default2"
system_dds_0_02default:default2
dds_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9512default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
dds_02default:default2"
system_dds_0_02default:default2
52default:default2
42default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9512default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2$
system_phase_0_22default:default2
 2default:default2?
z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_phase_0_2/synth/system_phase_0_2.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys21
axis_constant__parameterized02default:default2
 2default:default2?
o/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/457f/src/axis_constant.v2default:default2
42default:default8@Z8-6157h px? 
f
%s
*synth2N
:	Parameter AXIS_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
axis_constant__parameterized02default:default2
 2default:default2
592default:default2
12default:default2?
o/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/457f/src/axis_constant.v2default:default2
42default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
system_phase_0_22default:default2
 2default:default2
602default:default2
12default:default2?
z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_phase_0_2/synth/system_phase_0_2.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
system_dna_0_02default:default2
 2default:default2?
v/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_dna_0_0/synth/system_dna_0_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2

dna_reader2default:default2
 2default:default2?
l/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5f76/src/dna_reader.v2default:default2
42default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter CNTR_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 57 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
DNA_PORT2default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
119842default:default8@Z8-6157h px? 
?
%s
*synth2v
b	Parameter SIM_DNA_VALUE bound to: 57'b000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DNA_PORT2default:default2
 2default:default2
612default:default2
12default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
119842default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

dna_reader2default:default2
 2default:default2
622default:default2
12default:default2?
l/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5f76/src/dna_reader.v2default:default2
42default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
system_dna_0_02default:default2
 2default:default2
632default:default2
12default:default2?
v/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_dna_0_0/synth/system_dna_0_0.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'638*oasys2#
system_mult_0_02default:default2?
z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_mult_0_0/synth/system_mult_0_0.vhd2default:default2
682default:default8@Z8-638h px? 
`
%s
*synth2H
4	Parameter C_VERBOSITY bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_MODEL_TYPE bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_HAS_CE bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_HAS_INDEP_CE bound to: 0 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_HAS_CED bound to: 0 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_HAS_CEA bound to: 0 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_HAS_CEB bound to: 0 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_HAS_CEC bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_HAS_CECONCAT bound to: 0 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_HAS_CEM bound to: 0 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_HAS_CEP bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_HAS_CESEL bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_SCLR bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_HAS_INDEP_SCLR bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_HAS_SCLRD bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_HAS_SCLRA bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_HAS_SCLRB bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_HAS_SCLRC bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_HAS_SCLRM bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_HAS_SCLRP bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_HAS_SCLRCONCAT bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_HAS_SCLRSEL bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_HAS_CARRYCASCIN bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_HAS_CARRYIN bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_ACIN bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_BCIN bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_PCIN bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_HAS_A bound to: 1 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_HAS_B bound to: 1 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_HAS_D bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_HAS_CONCAT bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_HAS_C bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_A_WIDTH bound to: 24 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_B_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_C_WIDTH bound to: 48 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_D_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_CONCAT_WIDTH bound to: 48 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_P_MSB bound to: 39 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_P_LSB bound to: 25 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_SEL_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_HAS_ACOUT bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_HAS_BCOUT bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_HAS_CARRYCASCOUT bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_HAS_CARRYOUT bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_HAS_PCOUT bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_CONSTANT_1 bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_LATENCY bound to: -1 - type: integer 
2default:defaulth p
x
? 
t
%s
*synth2\
H	Parameter C_OPMODES bound to: 000000000011010101000000 - type: string 
2default:defaulth p
x
? 

%s
*synth2g
S	Parameter C_REG_CONFIG bound to: 00000000000011000011000001000100 - type: string 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_TEST_CORE bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2,
xbip_dsp48_macro_v3_0_182default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/f5aa/hdl/xbip_dsp48_macro_v3_0_vh_rfs.vhd2default:default2
50132default:default2
U02default:default2,
xbip_dsp48_macro_v3_0_182default:default2?
z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_mult_0_0/synth/system_mult_0_0.vhd2default:default2
2082default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2#
system_mult_0_02default:default2
672default:default2
12default:default2?
z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_mult_0_0/synth/system_mult_0_0.vhd2default:default2
682default:default8@Z8-256h px? 
?
synthesizing module '%s'%s4497*oasys2$
system_phase_0_02default:default2
 2default:default2?
z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_phase_0_0/synth/system_phase_0_0.v2default:default2
572default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
system_phase_0_02default:default2
 2default:default2
682default:default2
12default:default2?
z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_phase_0_0/synth/system_phase_0_0.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
system_pll_0_02default:default2
 2default:default2?
p/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_pll_0_0/system_pll_0_0.v2default:default2
722default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2*
system_pll_0_0_clk_wiz2default:default2
 2default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_pll_0_0/system_pll_0_0_clk_wiz.v2default:default2
702default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
IBUFDS2default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
329982default:default8@Z8-6157h px? 
g
%s
*synth2O
;	Parameter CAPACITANCE bound to: DONT_CARE - type: string 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter DIFF_TERM bound to: FALSE - type: string 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DQS_BIAS bound to: FALSE - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter IBUF_DELAY_VALUE bound to: 0 - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter IBUF_LOW_PWR bound to: TRUE - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter IFD_DELAY_VALUE bound to: AUTO - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter IOSTANDARD bound to: DEFAULT - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IBUFDS2default:default2
 2default:default2
692default:default2
12default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
329982default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	PLLE2_ADV2default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
615262default:default8@Z8-6157h px? 
e
%s
*synth2M
9	Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter CLKFBOUT_MULT bound to: 8 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKIN1_PERIOD bound to: 8.000000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKIN2_PERIOD bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT0_DIVIDE bound to: 8 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT0_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT0_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT1_DIVIDE bound to: 4 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT1_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter CLKOUT1_PHASE bound to: 157.500000 - type: double 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT2_DIVIDE bound to: 4 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT2_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter CLKOUT2_PHASE bound to: 202.500000 - type: double 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT3_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT3_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT3_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT4_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT4_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT4_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT5_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT5_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT5_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter COMPENSATION bound to: ZHOLD - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter DIVCLK_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter IS_CLKINSEL_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter IS_PWRDWN_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter IS_RST_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter REF_JITTER1 bound to: 0.010000 - type: double 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter REF_JITTER2 bound to: 0.010000 - type: double 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter STARTUP_WAIT bound to: FALSE - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	PLLE2_ADV2default:default2
 2default:default2
702default:default2
12default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
615262default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
BUFG2default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
10832default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2default:default2
 2default:default2
712default:default2
12default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
10832default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
system_pll_0_0_clk_wiz2default:default2
 2default:default2
722default:default2
12default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_pll_0_0/system_pll_0_0_clk_wiz.v2default:default2
702default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
system_pll_0_02default:default2
 2default:default2
732default:default2
12default:default2?
p/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_pll_0_0/system_pll_0_0.v2default:default2
722default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
system_ps_0_02default:default2
 2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/synth/system_ps_0_0.v2default:default2
602default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2>
*processing_system7_v5_5_processing_system72default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/hdl/verilog/processing_system7_v5_5_processing_system7.v2default:default2
1612default:default8@Z8-6157h px? 
o
%s
*synth2W
C	Parameter C_USE_DEFAULT_ACP_USER_VAL bound to: 1 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter C_S_AXI_ACP_ARUSER_VAL bound to: 31 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter C_S_AXI_ACP_AWUSER_VAL bound to: 31 - type: integer 
2default:defaulth p
x
? 
q
%s
*synth2Y
E	Parameter C_M_AXI_GP0_THREAD_ID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
q
%s
*synth2Y
E	Parameter C_M_AXI_GP1_THREAD_ID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
t
%s
*synth2\
H	Parameter C_M_AXI_GP0_ENABLE_STATIC_REMAP bound to: 0 - type: integer 
2default:defaulth p
x
? 
t
%s
*synth2\
H	Parameter C_M_AXI_GP1_ENABLE_STATIC_REMAP bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_M_AXI_GP0_ID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_M_AXI_GP1_ID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_S_AXI_GP0_ID_WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_S_AXI_GP1_ID_WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_S_AXI_HP0_ID_WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_S_AXI_HP1_ID_WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_S_AXI_HP2_ID_WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_S_AXI_HP3_ID_WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_S_AXI_ACP_ID_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter C_S_AXI_HP0_DATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter C_S_AXI_HP1_DATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter C_S_AXI_HP2_DATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter C_S_AXI_HP3_DATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter C_INCLUDE_ACP_TRANS_CHECK bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_NUM_F2P_INTR_INPUTS bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_FCLK_CLK0_BUF bound to: TRUE - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_FCLK_CLK1_BUF bound to: FALSE - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_FCLK_CLK2_BUF bound to: FALSE - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_FCLK_CLK3_BUF bound to: FALSE - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_EMIO_GPIO_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter C_INCLUDE_TRACE_BUFFER bound to: 0 - type: integer 
2default:defaulth p
x
? 
o
%s
*synth2W
C	Parameter C_TRACE_BUFFER_FIFO_SIZE bound to: 128 - type: integer 
2default:defaulth p
x
? 
p
%s
*synth2X
D	Parameter C_TRACE_BUFFER_CLOCK_DELAY bound to: 12 - type: integer 
2default:defaulth p
x
? 
q
%s
*synth2Y
E	Parameter USE_TRACE_DATA_EDGE_DETECTOR bound to: 0 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter C_TRACE_PIPELINE_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_PS7_SI_REV bound to: PRODUCTION - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_EN_EMIO_ENET0 bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_EN_EMIO_ENET1 bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_EN_EMIO_TRACE bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_DQ_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_DQS_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_DM_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_MIO_PRIMITIVE bound to: 54 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_PACKAGE_NAME bound to: clg400 - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_IRQ_F2P_MODE bound to: DIRECT - type: string 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter C_TRACE_INTERNAL_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_EN_EMIO_PJTAG bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_USE_AXI_NONSECURE bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_USE_S_AXI_HP0 bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_USE_S_AXI_HP1 bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_USE_S_AXI_HP2 bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_USE_S_AXI_HP3 bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_USE_M_AXI_GP0 bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_USE_M_AXI_GP1 bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_USE_S_AXI_GP0 bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_USE_S_AXI_GP1 bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_USE_S_AXI_ACP bound to: 1 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter C_GP0_EN_MODIFIABLE_TXN bound to: 1 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter C_GP1_EN_MODIFIABLE_TXN bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
BIBUF2default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
7302default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BIBUF2default:default2
 2default:default2
742default:default2
12default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
7302default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
PS72default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
620342default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PS72default:default2
 2default:default2
752default:default2
12default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
620342default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2>
*processing_system7_v5_5_processing_system72default:default2
 2default:default2
762default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/hdl/verilog/processing_system7_v5_5_processing_system7.v2default:default2
1612default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
M_AXI_GP0_ARESETN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/synth/system_ps_0_0.v2default:default2
5002default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
M_AXI_GP1_ARESETN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/synth/system_ps_0_0.v2default:default2
5002default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
S_AXI_GP0_ARESETN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/synth/system_ps_0_0.v2default:default2
5002default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
S_AXI_GP1_ARESETN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/synth/system_ps_0_0.v2default:default2
5002default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
S_AXI_ACP_ARESETN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/synth/system_ps_0_0.v2default:default2
5002default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
S_AXI_HP0_ARESETN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/synth/system_ps_0_0.v2default:default2
5002default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
S_AXI_HP1_ARESETN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/synth/system_ps_0_0.v2default:default2
5002default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
S_AXI_HP2_ARESETN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/synth/system_ps_0_0.v2default:default2
5002default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
S_AXI_HP3_ARESETN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/synth/system_ps_0_0.v2default:default2
5002default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	DMA0_RSTN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/synth/system_ps_0_0.v2default:default2
5002default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	DMA1_RSTN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/synth/system_ps_0_0.v2default:default2
5002default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	DMA2_RSTN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/synth/system_ps_0_0.v2default:default2
5002default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	DMA3_RSTN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/synth/system_ps_0_0.v2default:default2
5002default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
inst2default:default2>
*processing_system7_v5_5_processing_system72default:default2
6852default:default2
6722default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/synth/system_ps_0_0.v2default:default2
5002default:default8@Z8-7023h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
system_ps_0_02default:default2
 2default:default2
772default:default2
12default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/synth/system_ps_0_0.v2default:default2
602default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
GPIO_O2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
GPIO_T2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
SPI0_SCLK_O2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
SPI0_SCLK_T2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
SPI0_MOSI_O2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
SPI0_MOSI_T2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
SPI0_MISO_O2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
SPI0_MISO_T2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	SPI0_SS_O2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

SPI0_SS1_O2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

SPI0_SS2_O2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	SPI0_SS_T2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
USB0_PORT_INDCTL2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2'
USB0_VBUS_PWRSELECT2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
S_AXI_ACP_ARREADY2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2#
S_AXI_ACP_RLAST2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
S_AXI_ACP_RVALID2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2#
S_AXI_ACP_BRESP2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2#
S_AXI_ACP_RRESP2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
S_AXI_ACP_BID2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
S_AXI_ACP_RID2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2#
S_AXI_ACP_RDATA2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	FCLK_CLK02default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
FCLK_RESET0_N2default:default2!
system_ps_0_02default:default2
ps_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
ps_02default:default2!
system_ps_0_02default:default2
1232default:default2
992default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
9822default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2,
system_ps_0_axi_periph_02default:default2
 2default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
12482default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2,
m00_couplers_imp_1TR9QEX2default:default2
 2default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
122default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m00_couplers_imp_1TR9QEX2default:default2
 2default:default2
782default:default2
12default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
122default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
m01_couplers_imp_IH42942default:default2
 2default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
1372default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m01_couplers_imp_IH42942default:default2
 2default:default2
792default:default2
12default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
1372default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
s00_couplers_imp_1OVXGTK2default:default2
 2default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
2692default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2$
system_auto_pc_02default:default2
 2default:default2?
z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_auto_pc_0/synth/system_auto_pc_0.v2default:default2
582default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2I
5axi_protocol_converter_v2_1_22_axi_protocol_converter2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
48082default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_M_AXI_PROTOCOL bound to: 2 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_S_AXI_PROTOCOL bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_IGNORE_ID bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_AXI_ID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_AXI_SUPPORTS_WRITE bound to: 1 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_AXI_SUPPORTS_READ bound to: 1 - type: integer 
2default:defaulth p
x
? 
p
%s
*synth2X
D	Parameter C_AXI_SUPPORTS_USER_SIGNALS bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_AWUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_ARUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_WUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_RUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_BUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_TRANSLATION_MODE bound to: 2 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter P_AXI4 bound to: 0 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter P_AXI3 bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_AXILITE bound to: 2 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter P_AXILITE_SIZE bound to: 3'b010 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter P_INCR bound to: 2'b01 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter P_DECERR bound to: 2'b11 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter P_SLVERR bound to: 2'b10 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter P_PROTECTION bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter P_CONVERSION bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys26
"axi_protocol_converter_v2_1_22_b2s2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
42262default:default8@Z8-6157h px? 
e
%s
*synth2M
9	Parameter C_S_AXI_PROTOCOL bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_AXI_ID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_AXI_SUPPORTS_WRITE bound to: 1 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_AXI_SUPPORTS_READ bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2A
-axi_protocol_converter_v2_1_22_b2s_aw_channel2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
39712default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter C_ID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2E
1axi_protocol_converter_v2_1_22_b2s_cmd_translator2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
34642default:default8@Z8-6157h px? 
f
%s
*synth2N
:	Parameter C_AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter P_AXBURST_FIXED bound to: 2'b00 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter P_AXBURST_INCR bound to: 2'b01 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter P_AXBURST_WRAP bound to: 2'b10 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2?
+axi_protocol_converter_v2_1_22_b2s_incr_cmd2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
30922default:default8@Z8-6157h px? 
f
%s
*synth2N
:	Parameter C_AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter L_AXI_ADDR_LOW_BIT bound to: 12 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+axi_protocol_converter_v2_1_22_b2s_incr_cmd2default:default2
 2default:default2
802default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
30922default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2?
+axi_protocol_converter_v2_1_22_b2s_wrap_cmd2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
29022default:default8@Z8-6157h px? 
f
%s
*synth2N
:	Parameter C_AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter L_AXI_ADDR_LOW_BIT bound to: 12 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+axi_protocol_converter_v2_1_22_b2s_wrap_cmd2default:default2
 2default:default2
812default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
29022default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1axi_protocol_converter_v2_1_22_b2s_cmd_translator2default:default2
 2default:default2
822default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
34642default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2A
-axi_protocol_converter_v2_1_22_b2s_wr_cmd_fsm2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
32242default:default8@Z8-6157h px? 
P
%s
*synth28
$	Parameter SM_IDLE bound to: 2'b00 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter SM_CMD_EN bound to: 2'b01 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter SM_CMD_ACCEPTED bound to: 2'b10 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter SM_DONE_WAIT bound to: 2'b11 
2default:defaulth p
x
? 
?
default block is never used226*oasys2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
32772default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-axi_protocol_converter_v2_1_22_b2s_wr_cmd_fsm2default:default2
 2default:default2
832default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
32242default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-axi_protocol_converter_v2_1_22_b2s_aw_channel2default:default2
 2default:default2
842default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
39712default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2@
,axi_protocol_converter_v2_1_22_b2s_b_channel2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
36062default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter C_ID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter LP_RESP_OKAY bound to: 2'b00 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter LP_RESP_EXOKAY bound to: 2'b01 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter LP_RESP_SLVERROR bound to: 2'b10 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter LP_RESP_DECERR bound to: 2'b11 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter P_WIDTH bound to: 20 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter P_DEPTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter P_AWIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter P_RWIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter P_RDEPTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_RAWIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2B
.axi_protocol_converter_v2_1_22_b2s_simple_fifo2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
28162default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter C_WIDTH bound to: 20 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_AWIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_DEPTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter C_EMPTY bound to: 2'b11 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter C_EMPTY_PRE bound to: 2'b00 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter C_FULL bound to: 2'b10 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter C_FULL_PRE bound to: 2'b01 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2B
.axi_protocol_converter_v2_1_22_b2s_simple_fifo2default:default2
 2default:default2
852default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
28162default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_protocol_converter_v2_1_22_b2s_simple_fifo__parameterized02default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
28162default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter C_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_AWIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_DEPTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter C_EMPTY bound to: 2'b11 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter C_EMPTY_PRE bound to: 2'b00 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter C_FULL bound to: 2'b10 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter C_FULL_PRE bound to: 2'b01 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_protocol_converter_v2_1_22_b2s_simple_fifo__parameterized02default:default2
 2default:default2
852default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
28162default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
,axi_protocol_converter_v2_1_22_b2s_b_channel2default:default2
 2default:default2
862default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
36062default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2A
-axi_protocol_converter_v2_1_22_b2s_ar_channel2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
40822default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter C_ID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2A
-axi_protocol_converter_v2_1_22_b2s_rd_cmd_fsm2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
33342default:default8@Z8-6157h px? 
P
%s
*synth28
$	Parameter SM_IDLE bound to: 2'b00 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter SM_CMD_EN bound to: 2'b01 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter SM_CMD_ACCEPTED bound to: 2'b10 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter SM_DONE bound to: 2'b11 
2default:defaulth p
x
? 
?
default block is never used226*oasys2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
33952default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-axi_protocol_converter_v2_1_22_b2s_rd_cmd_fsm2default:default2
 2default:default2
872default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
33342default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-axi_protocol_converter_v2_1_22_b2s_ar_channel2default:default2
 2default:default2
882default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
40822default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2@
,axi_protocol_converter_v2_1_22_b2s_r_channel2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
38112default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter C_ID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter P_WIDTH bound to: 13 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter P_DEPTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter P_AWIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter P_D_WIDTH bound to: 34 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter P_D_DEPTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter P_D_AWIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_protocol_converter_v2_1_22_b2s_simple_fifo__parameterized12default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
28162default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter C_WIDTH bound to: 34 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_AWIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_DEPTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter C_EMPTY bound to: 5'b11111 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter C_EMPTY_PRE bound to: 5'b00000 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter C_FULL bound to: 5'b11110 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter C_FULL_PRE bound to: 5'b11010 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_protocol_converter_v2_1_22_b2s_simple_fifo__parameterized12default:default2
 2default:default2
882default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
28162default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_protocol_converter_v2_1_22_b2s_simple_fifo__parameterized22default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
28162default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter C_WIDTH bound to: 13 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_AWIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_DEPTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter C_EMPTY bound to: 5'b11111 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter C_EMPTY_PRE bound to: 5'b00000 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter C_FULL bound to: 5'b11110 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter C_FULL_PRE bound to: 5'b11010 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_protocol_converter_v2_1_22_b2s_simple_fifo__parameterized22default:default2
 2default:default2
882default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
28162default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
,axi_protocol_converter_v2_1_22_b2s_r_channel2default:default2
 2default:default2
892default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
38112default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2A
-axi_register_slice_v2_1_22_axi_register_slice2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
37262default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_AXI_PROTOCOL bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_AXI_ID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
p
%s
*synth2X
D	Parameter C_AXI_SUPPORTS_USER_SIGNALS bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_AWUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_ARUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_WUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_RUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_BUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_REG_CONFIG_AW bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_REG_CONFIG_W bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_REG_CONFIG_B bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_REG_CONFIG_AR bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_REG_CONFIG_R bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_RESERVE_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_NUM_SLR_CROSSINGS bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_PIPELINES_MASTER_AW bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_PIPELINES_MASTER_W bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_PIPELINES_MASTER_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_PIPELINES_MASTER_AR bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_PIPELINES_MASTER_R bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_PIPELINES_SLAVE_AW bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_PIPELINES_SLAVE_W bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_PIPELINES_SLAVE_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_PIPELINES_SLAVE_AR bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_PIPELINES_SLAVE_R bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_PIPELINES_MIDDLE_AW bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_PIPELINES_MIDDLE_W bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_PIPELINES_MIDDLE_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_PIPELINES_MIDDLE_AR bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_PIPELINES_MIDDLE_R bound to: 0 - type: integer 
2default:defaulth p
x
? 
r
%s
*synth2Z
F	Parameter C_AXI_SUPPORTS_REGION_SIGNALS bound to: 0 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_FORWARD bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter P_RESPONSE bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWADDR_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWPROT_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWPROT_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWSIZE_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWSIZE_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_AWBURST_INDEX bound to: 38 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWBURST_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_AWCACHE_INDEX bound to: 40 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWCACHE_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWLEN_INDEX bound to: 44 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWLEN_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWLOCK_INDEX bound to: 48 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWLOCK_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWID_INDEX bound to: 50 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWQOS_INDEX bound to: 62 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWQOS_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_AWREGION_INDEX bound to: 66 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_AWREGION_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWUSER_INDEX bound to: 66 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter G_AXI_AWPAYLOAD_WIDTH bound to: 66 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARADDR_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARPROT_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARPROT_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARSIZE_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARSIZE_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_ARBURST_INDEX bound to: 38 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARBURST_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_ARCACHE_INDEX bound to: 40 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARCACHE_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARLEN_INDEX bound to: 44 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARLEN_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARLOCK_INDEX bound to: 48 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARLOCK_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARID_INDEX bound to: 50 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARQOS_INDEX bound to: 62 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARQOS_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_ARREGION_INDEX bound to: 66 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_ARREGION_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARUSER_INDEX bound to: 66 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter G_AXI_ARPAYLOAD_WIDTH bound to: 66 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WDATA_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WSTRB_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WSTRB_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WLAST_INDEX bound to: 36 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WLAST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_WID_INDEX bound to: 37 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_WID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WUSER_INDEX bound to: 49 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_WPAYLOAD_WIDTH bound to: 49 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BRESP_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BRESP_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_AXI_BID_INDEX bound to: 2 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_BID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_BUSER_INDEX bound to: 14 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_BPAYLOAD_WIDTH bound to: 14 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RDATA_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RRESP_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RRESP_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RLAST_INDEX bound to: 34 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RLAST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_RID_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_RID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RUSER_INDEX bound to: 47 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_RPAYLOAD_WIDTH bound to: 47 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys28
$axi_infrastructure_v1_1_0_axi2vector2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2default:default2
602default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter C_AXI_PROTOCOL bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_AXI_ID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
p
%s
*synth2X
D	Parameter C_AXI_SUPPORTS_USER_SIGNALS bound to: 0 - type: integer 
2default:defaulth p
x
? 
r
%s
*synth2Z
F	Parameter C_AXI_SUPPORTS_REGION_SIGNALS bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_AWUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_WUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_BUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_ARUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_RUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AWPAYLOAD_WIDTH bound to: 66 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_WPAYLOAD_WIDTH bound to: 49 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_BPAYLOAD_WIDTH bound to: 14 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_ARPAYLOAD_WIDTH bound to: 66 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_RPAYLOAD_WIDTH bound to: 47 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWADDR_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWPROT_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWPROT_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWSIZE_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWSIZE_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_AWBURST_INDEX bound to: 38 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWBURST_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_AWCACHE_INDEX bound to: 40 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWCACHE_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWLEN_INDEX bound to: 44 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWLEN_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWLOCK_INDEX bound to: 48 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWLOCK_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWID_INDEX bound to: 50 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWQOS_INDEX bound to: 62 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWQOS_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_AWREGION_INDEX bound to: 66 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_AWREGION_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWUSER_INDEX bound to: 66 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter G_AXI_AWPAYLOAD_WIDTH bound to: 66 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARADDR_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARPROT_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARPROT_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARSIZE_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARSIZE_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_ARBURST_INDEX bound to: 38 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARBURST_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_ARCACHE_INDEX bound to: 40 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARCACHE_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARLEN_INDEX bound to: 44 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARLEN_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARLOCK_INDEX bound to: 48 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARLOCK_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARID_INDEX bound to: 50 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARQOS_INDEX bound to: 62 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARQOS_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_ARREGION_INDEX bound to: 66 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_ARREGION_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARUSER_INDEX bound to: 66 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter G_AXI_ARPAYLOAD_WIDTH bound to: 66 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WDATA_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WSTRB_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WSTRB_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WLAST_INDEX bound to: 36 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WLAST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_WID_INDEX bound to: 37 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_WID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WUSER_INDEX bound to: 49 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_WPAYLOAD_WIDTH bound to: 49 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BRESP_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BRESP_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_AXI_BID_INDEX bound to: 2 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_BID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_BUSER_INDEX bound to: 14 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_BPAYLOAD_WIDTH bound to: 14 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RDATA_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RRESP_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RRESP_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RLAST_INDEX bound to: 34 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RLAST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_RID_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_RID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RUSER_INDEX bound to: 47 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_RPAYLOAD_WIDTH bound to: 47 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$axi_infrastructure_v1_1_0_axi2vector2default:default2
 2default:default2
902default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2default:default2
602default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys28
$axi_infrastructure_v1_1_0_vector2axi2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2default:default2
4742default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter C_AXI_PROTOCOL bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_AXI_ID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
p
%s
*synth2X
D	Parameter C_AXI_SUPPORTS_USER_SIGNALS bound to: 0 - type: integer 
2default:defaulth p
x
? 
r
%s
*synth2Z
F	Parameter C_AXI_SUPPORTS_REGION_SIGNALS bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_AWUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_WUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_BUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_ARUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_RUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AWPAYLOAD_WIDTH bound to: 66 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_WPAYLOAD_WIDTH bound to: 49 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_BPAYLOAD_WIDTH bound to: 14 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_ARPAYLOAD_WIDTH bound to: 66 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_RPAYLOAD_WIDTH bound to: 47 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWADDR_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWPROT_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWPROT_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWSIZE_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWSIZE_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_AWBURST_INDEX bound to: 38 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWBURST_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_AWCACHE_INDEX bound to: 40 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWCACHE_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWLEN_INDEX bound to: 44 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWLEN_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWLOCK_INDEX bound to: 48 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWLOCK_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWID_INDEX bound to: 50 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWQOS_INDEX bound to: 62 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWQOS_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_AWREGION_INDEX bound to: 66 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_AWREGION_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWUSER_INDEX bound to: 66 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter G_AXI_AWPAYLOAD_WIDTH bound to: 66 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARADDR_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARPROT_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARPROT_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARSIZE_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARSIZE_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_ARBURST_INDEX bound to: 38 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARBURST_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_ARCACHE_INDEX bound to: 40 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARCACHE_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARLEN_INDEX bound to: 44 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARLEN_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARLOCK_INDEX bound to: 48 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARLOCK_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARID_INDEX bound to: 50 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARQOS_INDEX bound to: 62 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARQOS_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_ARREGION_INDEX bound to: 66 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_ARREGION_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARUSER_INDEX bound to: 66 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter G_AXI_ARPAYLOAD_WIDTH bound to: 66 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WDATA_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WSTRB_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WSTRB_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WLAST_INDEX bound to: 36 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WLAST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_WID_INDEX bound to: 37 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_WID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WUSER_INDEX bound to: 49 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_WPAYLOAD_WIDTH bound to: 49 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BRESP_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BRESP_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_AXI_BID_INDEX bound to: 2 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_BID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_BUSER_INDEX bound to: 14 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_BPAYLOAD_WIDTH bound to: 14 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RDATA_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RRESP_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RRESP_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RLAST_INDEX bound to: 34 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RLAST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_RID_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_RID_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RUSER_INDEX bound to: 47 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_RPAYLOAD_WIDTH bound to: 47 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$axi_infrastructure_v1_1_0_vector2axi2default:default2
 2default:default2
912default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2default:default2
4742default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2B
.axi_register_slice_v2_1_22_axic_register_slice2default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14982default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 66 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_REG_CONFIG bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2B
.axi_register_slice_v2_1_22_axic_register_slice2default:default2
 2default:default2
922default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14982default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_register_slice_v2_1_22_axic_register_slice__parameterized02default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14982default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 49 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_REG_CONFIG bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_register_slice_v2_1_22_axic_register_slice__parameterized02default:default2
 2default:default2
922default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14982default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_register_slice_v2_1_22_axic_register_slice__parameterized12default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14982default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 14 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_REG_CONFIG bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_register_slice_v2_1_22_axic_register_slice__parameterized12default:default2
 2default:default2
922default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14982default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_register_slice_v2_1_22_axic_register_slice__parameterized22default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14982default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 47 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_REG_CONFIG bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_register_slice_v2_1_22_axic_register_slice__parameterized22default:default2
 2default:default2
922default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14982default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-axi_register_slice_v2_1_22_axi_register_slice2default:default2
 2default:default2
932default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
37262default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
aclk2x2default:default2A
-axi_register_slice_v2_1_22_axi_register_slice2default:default2
SI_REG2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
43922default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
SI_REG2default:default2A
-axi_register_slice_v2_1_22_axi_register_slice2default:default2
932default:default2
922default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
43922default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2Q
=axi_register_slice_v2_1_22_axi_register_slice__parameterized02default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
37262default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_AXI_PROTOCOL bound to: 2 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_AXI_ID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
p
%s
*synth2X
D	Parameter C_AXI_SUPPORTS_USER_SIGNALS bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_AWUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_ARUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_WUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_RUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_BUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_REG_CONFIG_AW bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_REG_CONFIG_W bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_REG_CONFIG_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_REG_CONFIG_AR bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_REG_CONFIG_R bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_RESERVE_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_NUM_SLR_CROSSINGS bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_PIPELINES_MASTER_AW bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_PIPELINES_MASTER_W bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_PIPELINES_MASTER_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_PIPELINES_MASTER_AR bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_PIPELINES_MASTER_R bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_PIPELINES_SLAVE_AW bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_PIPELINES_SLAVE_W bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_PIPELINES_SLAVE_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_PIPELINES_SLAVE_AR bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_PIPELINES_SLAVE_R bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_PIPELINES_MIDDLE_AW bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_PIPELINES_MIDDLE_W bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_PIPELINES_MIDDLE_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_PIPELINES_MIDDLE_AR bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_PIPELINES_MIDDLE_R bound to: 0 - type: integer 
2default:defaulth p
x
? 
r
%s
*synth2Z
F	Parameter C_AXI_SUPPORTS_REGION_SIGNALS bound to: 0 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_FORWARD bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter P_RESPONSE bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWADDR_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWPROT_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWPROT_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWSIZE_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWSIZE_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_AWBURST_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWBURST_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_AWCACHE_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWCACHE_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWLEN_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWLEN_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWLOCK_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWLOCK_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWID_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_AWID_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWQOS_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWQOS_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_AWREGION_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_AWREGION_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWUSER_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter G_AXI_AWPAYLOAD_WIDTH bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARADDR_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARPROT_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARPROT_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARSIZE_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARSIZE_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_ARBURST_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARBURST_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_ARCACHE_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARCACHE_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARLEN_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARLEN_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARLOCK_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARLOCK_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARID_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_ARID_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARQOS_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARQOS_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_ARREGION_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_ARREGION_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARUSER_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter G_AXI_ARPAYLOAD_WIDTH bound to: 35 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WDATA_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WSTRB_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WSTRB_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WLAST_INDEX bound to: 36 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WLAST_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_WID_INDEX bound to: 36 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_AXI_WID_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WUSER_INDEX bound to: 36 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_WPAYLOAD_WIDTH bound to: 36 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BRESP_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BRESP_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_AXI_BID_INDEX bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_AXI_BID_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BUSER_INDEX bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_BPAYLOAD_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RDATA_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RRESP_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RRESP_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RLAST_INDEX bound to: 34 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RLAST_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_RID_INDEX bound to: 34 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_AXI_RID_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RUSER_INDEX bound to: 34 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_RPAYLOAD_WIDTH bound to: 34 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2H
4axi_infrastructure_v1_1_0_axi2vector__parameterized02default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2default:default2
602default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter C_AXI_PROTOCOL bound to: 2 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_AXI_ID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
p
%s
*synth2X
D	Parameter C_AXI_SUPPORTS_USER_SIGNALS bound to: 0 - type: integer 
2default:defaulth p
x
? 
r
%s
*synth2Z
F	Parameter C_AXI_SUPPORTS_REGION_SIGNALS bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_AWUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_WUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_BUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_ARUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_RUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AWPAYLOAD_WIDTH bound to: 35 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_WPAYLOAD_WIDTH bound to: 36 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_BPAYLOAD_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_ARPAYLOAD_WIDTH bound to: 35 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_RPAYLOAD_WIDTH bound to: 34 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWADDR_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWPROT_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWPROT_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWSIZE_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWSIZE_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_AWBURST_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWBURST_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_AWCACHE_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWCACHE_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWLEN_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWLEN_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWLOCK_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWLOCK_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWID_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_AWID_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWQOS_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWQOS_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_AWREGION_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_AWREGION_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWUSER_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter G_AXI_AWPAYLOAD_WIDTH bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARADDR_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARPROT_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARPROT_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARSIZE_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARSIZE_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_ARBURST_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARBURST_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_ARCACHE_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARCACHE_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARLEN_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARLEN_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARLOCK_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARLOCK_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARID_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_ARID_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARQOS_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARQOS_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_ARREGION_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_ARREGION_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARUSER_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter G_AXI_ARPAYLOAD_WIDTH bound to: 35 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WDATA_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WSTRB_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WSTRB_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WLAST_INDEX bound to: 36 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WLAST_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_WID_INDEX bound to: 36 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_AXI_WID_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WUSER_INDEX bound to: 36 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_WPAYLOAD_WIDTH bound to: 36 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BRESP_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BRESP_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_AXI_BID_INDEX bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_AXI_BID_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BUSER_INDEX bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_BPAYLOAD_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RDATA_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RRESP_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RRESP_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RLAST_INDEX bound to: 34 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RLAST_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_RID_INDEX bound to: 34 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_AXI_RID_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RUSER_INDEX bound to: 34 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_RPAYLOAD_WIDTH bound to: 34 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2H
4axi_infrastructure_v1_1_0_axi2vector__parameterized02default:default2
 2default:default2
932default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2default:default2
602default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2H
4axi_infrastructure_v1_1_0_vector2axi__parameterized02default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2default:default2
4742default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter C_AXI_PROTOCOL bound to: 2 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_AXI_ID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
p
%s
*synth2X
D	Parameter C_AXI_SUPPORTS_USER_SIGNALS bound to: 0 - type: integer 
2default:defaulth p
x
? 
r
%s
*synth2Z
F	Parameter C_AXI_SUPPORTS_REGION_SIGNALS bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_AWUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_WUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_BUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_ARUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_RUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AWPAYLOAD_WIDTH bound to: 35 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_WPAYLOAD_WIDTH bound to: 36 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_BPAYLOAD_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_ARPAYLOAD_WIDTH bound to: 35 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_RPAYLOAD_WIDTH bound to: 34 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWADDR_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWPROT_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWPROT_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWSIZE_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWSIZE_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_AWBURST_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWBURST_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_AWCACHE_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWCACHE_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWLEN_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWLEN_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWLOCK_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWLOCK_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWID_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_AWID_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWQOS_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_AWQOS_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_AWREGION_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_AWREGION_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_AWUSER_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_AWUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter G_AXI_AWPAYLOAD_WIDTH bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARADDR_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARPROT_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARPROT_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARSIZE_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARSIZE_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_ARBURST_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARBURST_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_ARCACHE_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARCACHE_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARLEN_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARLEN_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARLOCK_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARLOCK_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARID_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_ARID_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARQOS_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_ARQOS_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_ARREGION_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_ARREGION_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter G_AXI_ARUSER_INDEX bound to: 35 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_ARUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter G_AXI_ARPAYLOAD_WIDTH bound to: 35 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WDATA_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WSTRB_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WSTRB_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WLAST_INDEX bound to: 36 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WLAST_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_WID_INDEX bound to: 36 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_AXI_WID_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_WUSER_INDEX bound to: 36 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_WUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_WPAYLOAD_WIDTH bound to: 36 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BRESP_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BRESP_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_AXI_BID_INDEX bound to: 2 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_AXI_BID_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BUSER_INDEX bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_BUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter G_AXI_BPAYLOAD_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RDATA_INDEX bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RRESP_INDEX bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RRESP_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RLAST_INDEX bound to: 34 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RLAST_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter G_AXI_RID_INDEX bound to: 34 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_AXI_RID_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter G_AXI_RUSER_INDEX bound to: 34 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_AXI_RUSER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter G_AXI_RPAYLOAD_WIDTH bound to: 34 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2H
4axi_infrastructure_v1_1_0_vector2axi__parameterized02default:default2
 2default:default2
932default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2default:default2
4742default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_register_slice_v2_1_22_axic_register_slice__parameterized32default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14982default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 35 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_REG_CONFIG bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_register_slice_v2_1_22_axic_register_slice__parameterized32default:default2
 2default:default2
932default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14982default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_register_slice_v2_1_22_axic_register_slice__parameterized42default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14982default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 36 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_REG_CONFIG bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_register_slice_v2_1_22_axic_register_slice__parameterized42default:default2
 2default:default2
932default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14982default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_register_slice_v2_1_22_axic_register_slice__parameterized52default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14982default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_DATA_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_REG_CONFIG bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_register_slice_v2_1_22_axic_register_slice__parameterized52default:default2
 2default:default2
932default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14982default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_register_slice_v2_1_22_axic_register_slice__parameterized62default:default2
 2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14982default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 34 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_REG_CONFIG bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_register_slice_v2_1_22_axic_register_slice__parameterized62default:default2
 2default:default2
932default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14982default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2Q
=axi_register_slice_v2_1_22_axi_register_slice__parameterized02default:default2
 2default:default2
932default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
37262default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
aclk2x2default:default2A
-axi_register_slice_v2_1_22_axi_register_slice2default:default2
MI_REG2default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
46472default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
MI_REG2default:default2A
-axi_register_slice_v2_1_22_axi_register_slice2default:default2
932default:default2
922default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
46472default:default8@Z8-7023h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys26
"axi_protocol_converter_v2_1_22_b2s2default:default2
 2default:default2
942default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
42262default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2I
5axi_protocol_converter_v2_1_22_axi_protocol_converter2default:default2
 2default:default2
952default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
48082default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
system_auto_pc_02default:default2
 2default:default2
962default:default2
12default:default2?
z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_auto_pc_0/synth/system_auto_pc_0.v2default:default2
582default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
s00_couplers_imp_1OVXGTK2default:default2
 2default:default2
972default:default2
12default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
2692default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
system_xbar_02default:default2
 2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_xbar_0/synth/system_xbar_0.v2default:default2
592default:default8@Z8-6157h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-61572default:default2
1002default:defaultZ17-14h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_NUM_SLAVE_SLOTS bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_NUM_MASTER_SLOTS bound to: 2 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_AXI_ID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_AXI_PROTOCOL bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_NUM_ADDR_RANGES bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter C_M_AXI_BASE_ADDR bound to: 128'b00000000000000000000000000000000010000000000000000010000000000000000000000000000000000000000000001000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
n	Parameter C_M_AXI_ADDR_WIDTH bound to: 64'b0000000000000000000000000000110000000000000000000000000000001100 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_S_AXI_BASE_ID bound to: 0 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter C_S_AXI_THREAD_ID_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
p
%s
*synth2X
D	Parameter C_AXI_SUPPORTS_USER_SIGNALS bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_AWUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_ARUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_WUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_RUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_BUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2?
v	Parameter C_M_AXI_WRITE_CONNECTIVITY bound to: 64'b1111111111111111111111111111111111111111111111111111111111111111 
2default:defaulth p
x
? 
?
%s
*synth2?
u	Parameter C_M_AXI_READ_CONNECTIVITY bound to: 64'b1111111111111111111111111111111111111111111111111111111111111111 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_R_REGISTER bound to: 1 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_S_AXI_SINGLE_THREAD bound to: 1 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter C_S_AXI_WRITE_ACCEPTANCE bound to: 1 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter C_S_AXI_READ_ACCEPTANCE bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2?
q	Parameter C_M_AXI_WRITE_ISSUING bound to: 64'b0000000000000000000000000000000100000000000000000000000000000001 
2default:defaulth p
x
? 
?
%s
*synth2?
p	Parameter C_M_AXI_READ_ISSUING bound to: 64'b0000000000000000000000000000000100000000000000000000000000000001 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_S_AXI_ARB_PRIORITY bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2~
j	Parameter C_M_AXI_SECURE bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_CONNECTIVITY_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2w
c	Parameter P_ONES bound to: 65'b11111111111111111111111111111111111111111111111111111111111111111 
2default:defaulth p
x
? 
?
%s
*synth2
k	Parameter P_S_AXI_BASE_ID bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2
k	Parameter P_S_AXI_HIGH_ID bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter P_AXI4 bound to: 0 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter P_AXI3 bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_AXILITE bound to: 2 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter P_AXILITE_SIZE bound to: 3'b010 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter P_INCR bound to: 2'b01 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter P_M_AXI_SUPPORTS_WRITE bound to: 2'b11 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_M_AXI_SUPPORTS_READ bound to: 2'b11 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_S_AXI_SUPPORTS_WRITE bound to: 1'b1 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter P_S_AXI_SUPPORTS_READ bound to: 1'b1 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_DEBUG bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_RANGE_CHECK bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_ADDR_DECODE bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2?
l	Parameter P_M_AXI_ERR_MODE bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter P_LEN bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter P_LOCK bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter P_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_NUM_SLAVE_SLOTS bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_NUM_MASTER_SLOTS bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_NUM_ADDR_RANGES bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_AXI_ID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_AXI_PROTOCOL bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter C_M_AXI_BASE_ADDR bound to: 128'b00000000000000000000000000000000010000000000000000010000000000000000000000000000000000000000000001000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter C_M_AXI_HIGH_ADDR bound to: 128'b00000000000000000000000000000000010000000000000000011111111111110000000000000000000000000000000001000000000000000000111111111111 
2default:defaulth p
x
? 
?
%s
*synth2
k	Parameter C_S_AXI_BASE_ID bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2
k	Parameter C_S_AXI_HIGH_ID bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
p
%s
*synth2X
D	Parameter C_AXI_SUPPORTS_USER_SIGNALS bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_AWUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_ARUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_WUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_RUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_BUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_S_AXI_SUPPORTS_WRITE bound to: 1'b1 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_S_AXI_SUPPORTS_READ bound to: 1'b1 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_M_AXI_SUPPORTS_WRITE bound to: 2'b11 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_M_AXI_SUPPORTS_READ bound to: 2'b11 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_S_AXI_ARB_PRIORITY bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2~
j	Parameter C_M_AXI_SECURE bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
l	Parameter C_M_AXI_ERR_MODE bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_R_REGISTER bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_RANGE_CHECK bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_ADDR_DECODE bound to: 1 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_DEBUG bound to: 1 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter P_AXI4 bound to: 0 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter P_AXI3 bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_AXILITE bound to: 2 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter P_NUM_MASTER_SLOTS_DE bound to: 3 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter P_NUM_MASTER_SLOTS_LOG bound to: 1 - type: integer 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter P_NUM_MASTER_SLOTS_DE_LOG bound to: 2 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter P_NUM_SLAVE_SLOTS_LOG bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_AXI_AUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter P_AXI_WID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter P_AMESG_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_BMESG_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter P_RMESG_WIDTH bound to: 36 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter P_WMESG_WIDTH bound to: 39 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_AXILITE_ERRMODE bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter P_NONSECURE_BIT bound to: 1 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter P_M_SECURE_MASK bound to: 2'b00 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter P_M_AXILITE_MASK bound to: 2'b00 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter P_FIXED bound to: 2'b00 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter P_BYPASS bound to: 0 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_LIGHTWT bound to: 7 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter P_FULLY_REG bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter P_R_REG_CONFIG bound to: 1 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter P_DECERR bound to: 2'b11 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_NUM_TARGETS bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_NUM_TARGETS_LOG bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_NUM_RANGES bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_TARGET_ENC bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_TARGET_HOT bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_REGION_ENC bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter C_BASE_ADDR bound to: 128'b00000000000000000000000000000000010000000000000000010000000000000000000000000000000000000000000001000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter C_HIGH_ADDR bound to: 128'b00000000000000000000000000000000010000000000000000011111111111110000000000000000000000000000000001000000000000000000111111111111 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter C_TARGET_QUAL bound to: 3'b011 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_RESOLUTION bound to: 2 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter C_COMPARATOR_THRESHOLD bound to: 6 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter C_VALUE bound to: 30'b010000000000000000000000000000 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 30 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_BITS_PER_LUT bound to: 6 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_NUM_LUT bound to: 5 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_FIX_DATA_WIDTH bound to: 30 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys27
#generic_baseblocks_v2_1_0_carry_and2default:default2
 2default:default2
982default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
622default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+generic_baseblocks_v2_1_0_comparator_static2default:default2
 2default:default2
992default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21332default:default8@Z8-6155h px? 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter C_VALUE bound to: 30'b010000000000000000010000000000 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 30 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_BITS_PER_LUT bound to: 6 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_NUM_LUT bound to: 5 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_FIX_DATA_WIDTH bound to: 30 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized02default:default2
 2default:default2
992default:default2
12default:default2?
?/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21332default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!axi_crossbar_v2_1_23_addr_decoder2default:default2
 2default:default2
1002default:default2
12default:default2?
z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
7942default:default8@Z8-6155h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-61552default:default2
1002default:defaultZ17-14h px? 
c
%s
*synth2K
7	Parameter C_AXI_ID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_BUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_RUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_AXI_PROTOCOL bound to: 2 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter C_RESP bound to: 3 - type: integer 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter P_WRITE_IDLE bound to: 2'b00 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter P_WRITE_DATA bound to: 2'b01 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter P_WRITE_RESP bound to: 2'b10 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter P_READ_IDLE bound to: 1'b0 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter P_READ_DATA bound to: 1'b1 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter P_AXI4 bound to: 0 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter P_AXI3 bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_AXILITE bound to: 2 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_NUM_S bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_NUM_S_LOG bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_AMESG_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_GRANT_ENC bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_ARB_PRIORITY bound to: 0 - type: integer 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter P_PRIO_MASK bound to: 1'b0 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_NUM_M bound to: 3 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_NUM_M bound to: 2 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_RATIO bound to: 3 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_SEL_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_DATA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_RATIO bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_SEL_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_DATA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_RATIO bound to: 3 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_SEL_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 36 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 36 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_REG_CONFIG bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_RATIO bound to: 3 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_SEL_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_DATA_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
m_axi_awprot2default:default2!
system_xbar_02default:default2
xbar2default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
17462default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
m_axi_arprot2default:default2!
system_xbar_02default:default2
xbar2default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
17462default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
xbar2default:default2!
system_xbar_02default:default2
402default:default2
382default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
17462default:default8@Z8-7023h px? 
f
%s
*synth2N
:	Parameter AXIS_TDATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'638*oasys2"
system_rst_0_02default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_rst_0_0/synth/system_rst_0_0.vhd2default:default2
742default:default8@Z8-638h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_EXT_RST_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_AUX_RST_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter C_EXT_RESET_HIGH bound to: 1'b0 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter C_AUX_RESET_HIGH bound to: 1'b0 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_NUM_BUS_RST bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_NUM_PERP_RST bound to: 1 - type: integer 
2default:defaulth p
x
? 
o
%s
*synth2W
C	Parameter C_NUM_INTERCONNECT_ARESETN bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_NUM_PERP_ARESETN bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
proc_sys_reset2default:default2?
~/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
12642default:default2
U02default:default2"
proc_sys_reset2default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_rst_0_0/synth/system_rst_0_0.vhd2default:default2
1292default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2"
proc_sys_reset2default:default2?
~/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
13232default:default8@Z8-638h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_EXT_RST_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_AUX_RST_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter C_EXT_RESET_HIGH bound to: 1'b0 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter C_AUX_RESET_HIGH bound to: 1'b0 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_NUM_BUS_RST bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_NUM_PERP_RST bound to: 1 - type: integer 
2default:defaulth p
x
? 
o
%s
*synth2W
C	Parameter C_NUM_INTERCONNECT_ARESETN bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_NUM_PERP_ARESETN bound to: 1 - type: integer 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b1 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_C_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_D_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_R_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2
	FDRE_inst2default:default2
FDRE2default:default2?
~/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
13922default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b1 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_C_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_D_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_R_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2
FDRE_BSR2default:default2
FDRE2default:default2?
~/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
14082default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_C_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_D_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_R_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2

FDRE_BSR_N2default:default2
FDRE2default:default2?
~/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
14342default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b1 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_C_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_D_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_R_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2
FDRE_PER2default:default2
FDRE2default:default2?
~/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
14572default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_C_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_D_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_R_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2

FDRE_PER_N2default:default2
FDRE2default:default2?
~/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
14812default:default8@Z8-113h px? 
?
synthesizing module '%s'638*oasys2
lpf2default:default2?
~/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
8162default:default8@Z8-638h px? 
d
%s
*synth2L
8	Parameter C_EXT_RST_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_AUX_RST_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter C_EXT_RESET_HIGH bound to: 1'b0 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter C_AUX_RESET_HIGH bound to: 1'b0 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
SRL162default:default2M
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
780182default:default2
	POR_SRL_I2default:default2
SRL162default:default2?
~/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
8682default:default8@Z8-3491h px? 
\
%s
*synth2D
0	Parameter INIT bound to: 16'b0000000000000000 
2default:defaulth p
x
? 
?
synthesizing module '%s'638*oasys2
cdc_sync2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
1062default:default8@Z8-638h px? 
_
%s
*synth2G
3	Parameter C_CDC_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_RESET_STATE bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_SINGLE_BIT bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_FLOP_INPUT bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_VECTOR_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_MTBF_STAGES bound to: 4 - type: integer 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys24
 CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
5142default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys29
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d22default:default2
FDR2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
5452default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys29
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d32default:default2
FDR2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
5542default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys29
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d42default:default2
FDR2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
5642default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys29
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d52default:default2
FDR2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
5742default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys29
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d62default:default2
FDR2default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
5842default:default8@Z8-113h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
cdc_sync2default:default2
1122default:default2
12default:default2?
t/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
1062default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
lpf2default:default2
1132default:default2
12default:default2?
~/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
8162default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2 
sequence_psr2default:default2?
~/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
3012default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2
upcnt_n2default:default2?
~/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
1252default:default8@Z8-638h px? 
[
%s
*synth2C
/	Parameter C_SIZE bound to: 6 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
upcnt_n2default:default2
1142default:default2
12default:default2?
~/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
1252default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
sequence_psr2default:default2
1152default:default2
12default:default2?
~/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
3012default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2"
proc_sys_reset2default:default2
1162default:default2
12default:default2?
~/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
13232default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2"
system_rst_0_02default:default2
1172default:default2
12default:default2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_rst_0_0/synth/system_rst_0_0.vhd2default:default2
742default:default8@Z8-256h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
mb_reset2default:default2"
system_rst_0_02default:default2
rst_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
11692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
bus_struct_reset2default:default2"
system_rst_0_02default:default2
rst_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
11692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
peripheral_reset2default:default2"
system_rst_0_02default:default2
rst_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
11692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2(
interconnect_aresetn2default:default2"
system_rst_0_02default:default2
rst_02default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
11692default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
rst_02default:default2"
system_rst_0_02default:default2
102default:default2
62default:default2r
\/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/synth/system.v2default:default2
11692default:default8@Z8-7023h px? 
`
%s
*synth2H
4	Parameter DIN_WIDTH bound to: 160 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DIN_FROM bound to: 0 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DIN_TO bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DIN_WIDTH bound to: 160 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DIN_FROM bound to: 1 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DIN_TO bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DIN_WIDTH bound to: 160 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter DIN_FROM bound to: 31 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DIN_TO bound to: 16 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DIN_WIDTH bound to: 160 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter DIN_FROM bound to: 63 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DIN_TO bound to: 32 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DIN_WIDTH bound to: 160 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter DIN_FROM bound to: 95 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DIN_TO bound to: 64 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DIN_WIDTH bound to: 160 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DIN_FROM bound to: 127 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DIN_TO bound to: 96 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DIN_WIDTH bound to: 160 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DIN_FROM bound to: 143 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DIN_TO bound to: 128 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN0_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN1_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN2_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN3_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN4_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN5_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN6_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN7_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN8_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN9_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN10_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN11_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN12_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN13_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN14_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN15_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN16_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN17_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN18_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN19_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN20_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN21_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN22_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN23_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN24_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN25_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN26_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN27_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN28_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN29_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN30_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN31_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN32_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN33_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN34_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN35_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN36_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN37_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN38_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN39_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN40_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN41_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN42_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN43_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN44_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN45_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN46_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN47_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN48_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN49_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN50_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN51_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN52_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN53_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN54_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN55_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN56_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN57_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN58_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN59_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN60_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN61_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN62_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN63_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN64_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN65_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN66_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN67_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN68_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN69_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN70_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN71_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN72_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN73_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN74_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN75_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN76_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN77_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN78_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN79_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN80_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN81_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN82_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN83_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN84_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN85_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN86_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN87_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN88_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN89_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN90_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN91_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN92_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN93_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN94_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN95_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN96_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN97_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN98_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN99_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN100_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN101_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN102_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN103_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN104_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN105_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN106_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN107_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN108_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN109_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN110_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN111_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN112_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN113_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN114_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN115_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN116_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN117_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN118_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN119_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN120_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN121_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN122_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN123_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN124_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN125_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN126_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN127_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter dout_width bound to: 128 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter NUM_PORTS bound to: 3 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter STS_DATA_WIDTH bound to: 128 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter ADDR_LSB bound to: 2 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter STS_SIZE bound to: 4 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter STS_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter ADDR_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter AXI_ID_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter AXI_DATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter AXIS_TDATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter ADDR_SIZE bound to: 3 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter ALMOST_EMPTY_OFFSET bound to: 13'b0000000001111 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter ALMOST_FULL_OFFSET bound to: 13'b0000010000000 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 72 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DO_REG bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter EN_ECC_READ bound to: FALSE - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter EN_ECC_WRITE bound to: FALSE - type: string 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter EN_SYN bound to: FALSE - type: string 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter FIFO_MODE bound to: FIFO36_72 - type: string 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter FIRST_WORD_FALL_THROUGH bound to: TRUE - type: string 
2default:defaulth p
x
? 
?
%s
*synth2|
h	Parameter INIT bound to: 72'b000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter IS_RDCLK_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter IS_RDEN_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter IS_RSTREG_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter IS_RST_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter IS_WRCLK_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter IS_WREN_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:defaulth p
x
? 
?
%s
*synth2}
i	Parameter SRVAL bound to: 72'b000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
722default:default2
DI2default:default2
642default:default2
FIFO36E12default:default2?
q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8cfb/src/axis_ram_writer.v2default:default2
742default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
722default:default2
DO2default:default2
642default:default2
FIFO36E12default:default2?
q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8cfb/src/axis_ram_writer.v2default:default2
772default:default8@Z8-689h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

ALMOSTFULL2default:default2
FIFO36E12default:default2
fifo_02default:default2?
q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8cfb/src/axis_ram_writer.v2default:default2
682default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
DBITERR2default:default2
FIFO36E12default:default2
fifo_02default:default2?
q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8cfb/src/axis_ram_writer.v2default:default2
682default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
DOP2default:default2
FIFO36E12default:default2
fifo_02default:default2?
q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8cfb/src/axis_ram_writer.v2default:default2
682default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	ECCPARITY2default:default2
FIFO36E12default:default2
fifo_02default:default2?
q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8cfb/src/axis_ram_writer.v2default:default2
682default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
EMPTY2default:default2
FIFO36E12default:default2
fifo_02default:default2?
q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8cfb/src/axis_ram_writer.v2default:default2
682default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
RDCOUNT2default:default2
FIFO36E12default:default2
fifo_02default:default2?
q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8cfb/src/axis_ram_writer.v2default:default2
682default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
RDERR2default:default2
FIFO36E12default:default2
fifo_02default:default2?
q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8cfb/src/axis_ram_writer.v2default:default2
682default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
SBITERR2default:default2
FIFO36E12default:default2
fifo_02default:default2?
q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8cfb/src/axis_ram_writer.v2default:default2
682default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
WRCOUNT2default:default2
FIFO36E12default:default2
fifo_02default:default2?
q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8cfb/src/axis_ram_writer.v2default:default2
682default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
WRERR2default:default2
FIFO36E12default:default2
fifo_02default:default2?
q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8cfb/src/axis_ram_writer.v2default:default2
682default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
DIP2default:default2
FIFO36E12default:default2
fifo_02default:default2?
q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8cfb/src/axis_ram_writer.v2default:default2
682default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
INJECTDBITERR2default:default2
FIFO36E12default:default2
fifo_02default:default2?
q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8cfb/src/axis_ram_writer.v2default:default2
682default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
INJECTSBITERR2default:default2
FIFO36E12default:default2
fifo_02default:default2?
q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8cfb/src/axis_ram_writer.v2default:default2
682default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
REGCE2default:default2
FIFO36E12default:default2
fifo_02default:default2?
q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8cfb/src/axis_ram_writer.v2default:default2
682default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
RSTREG2default:default2
FIFO36E12default:default2
fifo_02default:default2?
q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8cfb/src/axis_ram_writer.v2default:default2
682default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
fifo_02default:default2
FIFO36E12default:default2
242default:default2
92default:default2?
q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ipshared/8cfb/src/axis_ram_writer.v2default:default2
682default:default8@Z8-7023h px? 
?
%s*synth2?
?Finished RTL Elaboration : Time (s): cpu = 00:01:23 ; elapsed = 00:01:48 . Memory (MB): peak = 2645.656 ; gain = 352.918 ; free physical = 8661 ; free virtual = 14474
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:01:26 ; elapsed = 00:01:52 . Memory (MB): peak = 2654.562 ; gain = 361.824 ; free physical = 8687 ; free virtual = 14502
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:01:26 ; elapsed = 00:01:52 . Memory (MB): peak = 2654.562 ; gain = 361.824 ; free physical = 8687 ; free virtual = 14502
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2
00:00:012default:default2
2657.5312default:default2
0.0002default:default2
86692default:default2
144842default:defaultZ17-722h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
23882default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_pll_0_0/system_pll_0_0_board.xdc2default:default2)
system_i/pll_0/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_pll_0_0/system_pll_0_0_board.xdc2default:default2)
system_i/pll_0/inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
r/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_pll_0_0/system_pll_0_0.xdc2default:default2)
system_i/pll_0/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
r/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_pll_0_0/system_pll_0_0.xdc2default:default2)
system_i/pll_0/inst	2default:default8Z20-847h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
r/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_pll_0_0/system_pll_0_0.xdc2default:default24
 .Xil/system_wrapper_propImpl.xdc2default:defaultZ1-236h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
p/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/system_ps_0_0.xdc2default:default2(
system_i/ps_0/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
p/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/system_ps_0_0.xdc2default:default2(
system_i/ps_0/inst	2default:default8Z20-847h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
p/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_ps_0_0/system_ps_0_0.xdc2default:default24
 .Xil/system_wrapper_propImpl.xdc2default:defaultZ1-236h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_rst_0_0/system_rst_0_0_board.xdc2default:default2'
system_i/rst_0/U0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
x/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_rst_0_0/system_rst_0_0_board.xdc2default:default2'
system_i/rst_0/U0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
r/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_rst_0_0/system_rst_0_0.xdc2default:default2'
system_i/rst_0/U0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
r/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_rst_0_0/system_rst_0_0.xdc2default:default2'
system_i/rst_0/U0	2default:default8Z20-847h px? 
8
Deriving generated clocks
2*timingZ38-2h px? 
?
Parsing XDC File [%s]
179*designutils2q
[/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/clocks.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2q
[/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/clocks.xdc2default:default8Z20-178h px? 
?
Parsing XDC File [%s]
179*designutils2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
	Vp_Vn_v_p2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1272default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	Vp_Vn_v_n2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1282default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	Vaux0_v_p2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1292default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	Vaux0_v_n2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1302default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	Vaux1_v_p2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1312default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	Vaux1_v_n2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1322default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	Vaux8_v_p2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1332default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	Vaux8_v_n2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1342default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	Vaux9_v_p2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1352default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	Vaux9_v_n2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1362default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	Vp_Vn_v_p2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1382default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	Vp_Vn_v_n2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1392default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	Vaux0_v_p2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1402default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	Vaux0_v_n2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1412default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	Vaux1_v_p2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1422default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	Vaux1_v_n2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1432default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	Vaux8_v_p2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1442default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	Vaux8_v_n2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1452default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	Vaux9_v_p2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1462default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	Vaux9_v_n2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1472default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2 
daisy_p_o[*]2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1772default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2 
daisy_n_o[*]2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1782default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2 
daisy_p_i[*]2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1802default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2 
daisy_n_i[*]2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1812default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2 
daisy_p_o[0]2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1832default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2 
daisy_n_o[0]2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1842default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2 
daisy_p_o[1]2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1862default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2 
daisy_n_o[1]2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1872default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2 
daisy_p_i[0]2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1892default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2 
daisy_n_i[0]2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1902default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2 
daisy_p_i[1]2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1922default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2 
daisy_n_i[1]2default:default2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default2
1932default:default8@Z12-584h px?
?
Finished Parsing XDC File [%s]
178*designutils2p
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default8Z20-178h px? 
?
?One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2n
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default24
 .Xil/system_wrapper_propImpl.xdc2default:defaultZ1-498h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2n
Z/home/acoustics/Documents/RP/RP_feedback/oscilloscope.srcs/constrs_1/imports/cfg/ports.xdc2default:default24
 .Xil/system_wrapper_propImpl.xdc2default:defaultZ1-236h px? 
?
Parsing XDC File [%s]
179*designutils2g
Q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2g
Q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2e
Q/home/acoustics/Documents/RP/RP_feedback/oscilloscope.runs/synth_1/dont_touch.xdc2default:default24
 .Xil/system_wrapper_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
2710.3592default:default2
0.0002default:default2
85502default:default2
143792default:defaultZ17-722h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 1573 instances were transformed.
  FDR => FDRE: 12 instances
  FDRSE => FDRSE (FDRE, LUT4, VCC): 788 instances
  MUXCY_L => MUXCY: 772 instances
  SRL16 => SRL16E: 1 instance 
2default:defaultZ1-111h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.212default:default2
00:00:00.222default:default2
2710.3592default:default2
0.0002default:default2
85502default:default2
143792default:defaultZ17-722h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Constraint Validation : Time (s): cpu = 00:01:49 ; elapsed = 00:02:15 . Memory (MB): peak = 2710.359 ; gain = 417.621 ; free physical = 8658 ; free virtual = 14487
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7z010clg400-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:01:49 ; elapsed = 00:02:15 . Memory (MB): peak = 2710.359 ; gain = 417.621 ; free physical = 8658 ; free virtual = 14487
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:01:50 ; elapsed = 00:02:16 . Memory (MB): peak = 2710.359 ; gain = 417.621 ; free physical = 8658 ; free virtual = 14488
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
@FSM extraction disabled for register '%s' through user attribute3641*oasys2
	state_reg2default:defaultZ8-4490h px? 
?
@FSM extraction disabled for register '%s' through user attribute3641*oasys2
	state_reg2default:defaultZ8-4490h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2A
-axi_protocol_converter_v2_1_22_b2s_wr_cmd_fsm2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2A
-axi_protocol_converter_v2_1_22_b2s_rd_cmd_fsm2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 SM_IDLE |                             0010 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_               SM_CMD_EN |                             1000 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_         SM_CMD_ACCEPTED |                             0100 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_            SM_DONE_WAIT |                             0001 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2A
-axi_protocol_converter_v2_1_22_b2s_wr_cmd_fsm2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 SM_IDLE |                             0010 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_               SM_CMD_EN |                             1000 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_         SM_CMD_ACCEPTED |                             0100 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                 SM_DONE |                             0001 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2A
-axi_protocol_converter_v2_1_22_b2s_rd_cmd_fsm2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:02:00 ; elapsed = 00:02:26 . Memory (MB): peak = 2710.359 ; gain = 417.621 ; free physical = 8631 ; free virtual = 14467
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
$decloning instance '%s' (%s) to '%s'223*oasys2a
Msystem_i/axis_broadcaster_0/inst/broadcaster_core/MI_SLOT[0].util_vector2axis2default:default2?
+axis_infrastructure_v1_1_0_util_vector2axis2default:default2a
Msystem_i/axis_broadcaster_0/inst/broadcaster_core/MI_SLOT[1].util_vector2axis2default:defaultZ8-223h px? 
?
$decloning instance '%s' (%s) to '%s'223*oasys2a
Msystem_i/axis_broadcaster_1/inst/broadcaster_core/MI_SLOT[0].util_vector2axis2default:default2O
;axis_infrastructure_v1_1_0_util_vector2axis__parameterized02default:default2a
Msystem_i/axis_broadcaster_1/inst/broadcaster_core/MI_SLOT[1].util_vector2axis2default:defaultZ8-223h px? 
?
$decloning instance '%s' (%s) to '%s'223*oasys2y
edecimate:/comb/gen_stages[0].gen_folded.int_comb_stage/gen_split_accum[0].gen_comb_mem_src.gen_en_dly2default:default2-
delay_bit__parameterized12default:default2h
Tdecimate:/comb/gen_stages[0].gen_folded.int_comb_stage/gen_split_accum[0].gen_mem_we2default:defaultZ8-223h px? 
?
$decloning instance '%s' (%s) to '%s'223*oasys2y
edecimate:/comb/gen_stages[1].gen_folded.int_comb_stage/gen_split_accum[0].gen_comb_mem_src.gen_en_dly2default:default2-
delay_bit__parameterized12default:default2h
Tdecimate:/comb/gen_stages[1].gen_folded.int_comb_stage/gen_split_accum[0].gen_mem_we2default:defaultZ8-223h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 80 (col length:40)
BRAMs: 120 (col length: RAMB18 40 RAMB36 20)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:02:36 ; elapsed = 00:03:03 . Memory (MB): peak = 2726.375 ; gain = 433.637 ; free physical = 8574 ; free virtual = 14427
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
$%s for constraint at line %s of %s.
3321*oasys22
set_false_path : Empty to list2default:default2
492default:default2?
r/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_rst_0_0/system_rst_0_0.xdc2default:default2?
r/home/acoustics/Documents/RP/RP_feedback/oscilloscope.gen/sources_1/bd/system/ip/system_rst_0_0/system_rst_0_0.xdc2default:default2
492default:default8@Z8-3321h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:02:56 ; elapsed = 00:03:24 . Memory (MB): peak = 2726.375 ; gain = 433.637 ; free physical = 8248 ; free virtual = 14108
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Timing Optimization : Time (s): cpu = 00:03:02 ; elapsed = 00:03:31 . Memory (MB): peak = 2726.375 ; gain = 433.637 ; free physical = 8223 ; free virtual = 14083
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Technology Mapping : Time (s): cpu = 00:03:13 ; elapsed = 00:03:41 . Memory (MB): peak = 2734.383 ; gain = 441.645 ; free physical = 8204 ; free virtual = 14065
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished IO Insertion : Time (s): cpu = 00:03:21 ; elapsed = 00:03:50 . Memory (MB): peak = 2734.383 ; gain = 441.645 ; free physical = 8217 ; free virtual = 14079
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:03:21 ; elapsed = 00:03:50 . Memory (MB): peak = 2734.383 ; gain = 441.645 ; free physical = 8217 ; free virtual = 14079
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:03:22 ; elapsed = 00:03:51 . Memory (MB): peak = 2734.383 ; gain = 441.645 ; free physical = 8217 ; free virtual = 14079
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:03:22 ; elapsed = 00:03:51 . Memory (MB): peak = 2734.383 ; gain = 441.645 ; free physical = 8217 ; free virtual = 14079
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:03:23 ; elapsed = 00:03:52 . Memory (MB): peak = 2734.383 ; gain = 441.645 ; free physical = 8217 ; free virtual = 14079
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:03:23 ; elapsed = 00:03:52 . Memory (MB): peak = 2734.383 ; gain = 441.645 ; free physical = 8217 ; free virtual = 14079
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
G
%s*synth2/
+------+----------+------+
2default:defaulth px? 
G
%s*synth2/
|      |Cell      |Count |
2default:defaulth px? 
G
%s*synth2/
+------+----------+------+
2default:defaulth px? 
G
%s*synth2/
|1     |BIBUF     |   130|
2default:defaulth px? 
G
%s*synth2/
|2     |BUFG      |     5|
2default:defaulth px? 
G
%s*synth2/
|3     |CARRY4    |    56|
2default:defaulth px? 
G
%s*synth2/
|4     |DNA_PORT  |     1|
2default:defaulth px? 
G
%s*synth2/
|5     |DSP48E1   |     4|
2default:defaulth px? 
G
%s*synth2/
|7     |FIFO36E1  |     1|
2default:defaulth px? 
G
%s*synth2/
|8     |LUT1      |   176|
2default:defaulth px? 
G
%s*synth2/
|9     |LUT2      |   816|
2default:defaulth px? 
G
%s*synth2/
|10    |LUT3      |   411|
2default:defaulth px? 
G
%s*synth2/
|11    |LUT4      |   229|
2default:defaulth px? 
G
%s*synth2/
|12    |LUT5      |   418|
2default:defaulth px? 
G
%s*synth2/
|13    |LUT6      |  1429|
2default:defaulth px? 
G
%s*synth2/
|14    |MUXCY_L   |   772|
2default:defaulth px? 
G
%s*synth2/
|15    |MUXF7     |    14|
2default:defaulth px? 
G
%s*synth2/
|16    |MUXF8     |     4|
2default:defaulth px? 
G
%s*synth2/
|17    |ODDR      |    18|
2default:defaulth px? 
G
%s*synth2/
|18    |PLLE2_ADV |     1|
2default:defaulth px? 
G
%s*synth2/
|19    |PS7       |     1|
2default:defaulth px? 
G
%s*synth2/
|20    |RAMB18E1  |     1|
2default:defaulth px? 
G
%s*synth2/
|21    |RAMB36E1  |     1|
2default:defaulth px? 
G
%s*synth2/
|22    |SRL16     |     1|
2default:defaulth px? 
G
%s*synth2/
|23    |SRL16E    |   132|
2default:defaulth px? 
G
%s*synth2/
|24    |SRLC32E   |    47|
2default:defaulth px? 
G
%s*synth2/
|25    |XORCY     |   772|
2default:defaulth px? 
G
%s*synth2/
|26    |FDRE      |  4137|
2default:defaulth px? 
G
%s*synth2/
|27    |FDSE      |    43|
2default:defaulth px? 
G
%s*synth2/
|28    |IBUF      |    44|
2default:defaulth px? 
G
%s*synth2/
|29    |IBUFDS    |     1|
2default:defaulth px? 
G
%s*synth2/
|30    |OBUF      |    19|
2default:defaulth px? 
G
%s*synth2/
|31    |OBUFT     |    14|
2default:defaulth px? 
G
%s*synth2/
+------+----------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:03:23 ; elapsed = 00:03:52 . Memory (MB): peak = 2734.383 ; gain = 441.645 ; free physical = 8217 ; free virtual = 14079
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:03:09 ; elapsed = 00:03:38 . Memory (MB): peak = 2734.383 ; gain = 385.848 ; free physical = 8293 ; free virtual = 14155
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:03:23 ; elapsed = 00:03:52 . Memory (MB): peak = 2734.391 ; gain = 441.645 ; free physical = 8293 ; free virtual = 14155
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.572default:default2
00:00:00.572default:default2
2734.3912default:default2
0.0002default:default2
83732default:default2
142372default:defaultZ17-722h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
16462default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:00.012default:default2
2737.3522default:default2
0.0002default:default2
83222default:default2
141872default:defaultZ17-722h px? 
?
!Unisim Transformation Summary:
%s111*project2?
u  A total of 203 instances were transformed.
  (MUXCY,XORCY) => CARRY4: 202 instances
  SRL16 => SRL16E: 1 instance 
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2752default:default2
1242default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:03:442default:default2
00:04:082default:default2
2737.3522default:default2
444.6952default:default2
86282default:default2
144932default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2i
U/home/acoustics/Documents/RP/RP_feedback/oscilloscope.runs/synth_1/system_wrapper.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
rExecuting : report_utilization -file system_wrapper_utilization_synth.rpt -pb system_wrapper_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Oct 14 11:39:28 20212default:defaultZ17-206h px? 


End Record