
w
Command: %s
1870*	planAhead2B
.open_checkpoint axis_red_pitaya_dac_routed.dcp2default:defaultZ12-2866h px? 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.07 ; elapsed = 00:00:00.11 . Memory (MB): peak = 2290.664 ; gain = 0.000 ; free physical = 7266 ; free virtual = 145112default:defaulth px? 
V
Loading part %s157*device2#
xc7z010clg400-12default:defaultZ21-403h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
2290.7702default:default2
0.0002default:default2
69682default:default2
142142default:defaultZ17-722h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
182default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2020.22default:defaultZ1-479h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
?
Reading XDEF placement.
206*designutilsZ20-206h px? 
D
Reading placer database...
1602*designutilsZ20-1892h px? 
=
Reading XDEF routing.
207*designutilsZ20-207h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2$
Read XDEF File: 2default:default2
00:00:00.162default:default2
00:00:00.202default:default2
2290.7702default:default2
0.0002default:default2
68792default:default2
141242default:defaultZ17-722h px? 
?
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
0.2100002default:default2
1.2538452default:defaultZ20-1924h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common20
Finished XDEF File Restore: 2default:default2
00:00:00.162default:default2
00:00:00.202default:default2
2290.7702default:default2
0.0002default:default2
68792default:default2
141242default:defaultZ17-722h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
2290.7702default:default2
0.0002default:default2
65842default:default2
138292default:defaultZ17-722h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
'Checkpoint was created with %s build %s378*project2+
Vivado v2020.2 (64-bit)2default:default2
30647662default:defaultZ1-604h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2%
open_checkpoint: 2default:default2
00:00:132default:default2
00:00:142default:default2
2290.7702default:default2
0.1052default:default2
65842default:default2
138292default:defaultZ17-722h px? 
s
Command: %s
53*	vivadotcl2B
.write_bitstream -force axis_red_pitaya_dac.bit2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
>
Refreshing IP repositories
234*coregenZ19-234h px? 
G
"No user IP repositories specified
1154*coregenZ19-1704h px? 
?
"Loaded Vivado IP repository '%s'.
1332*coregen27
#/tools/Xilinx/Vivado/2020.2/data/ip2default:defaultZ19-2313h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px? 
?
?Unspecified I/O Standard: 52 out of 52 logical ports use I/O standard (IOSTANDARD) value 'DEFAULT', instead of a user assigned specific value. This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all I/O standards. This design will fail to generate a bitstream unless all logical ports have a user specified I/O standard value defined. To allow bitstream creation with unspecified I/O standard values (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks NSTD-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run. Problem ports: %s.%s*DRC2?
 ",
dac_dat[13:0]dac_dat2default:default"8
s_axis_tdata[29]s_axis_tdata[29]2default:default"8
s_axis_tdata[28]s_axis_tdata[28]2default:default"8
s_axis_tdata[27]s_axis_tdata[27]2default:default"8
s_axis_tdata[26]s_axis_tdata[26]2default:default"8
s_axis_tdata[25]s_axis_tdata[25]2default:default"8
s_axis_tdata[24]s_axis_tdata[24]2default:default"8
s_axis_tdata[23]s_axis_tdata[23]2default:default"8
s_axis_tdata[22]s_axis_tdata[22]2default:default"8
s_axis_tdata[21]s_axis_tdata[21]2default:default"8
s_axis_tdata[20]s_axis_tdata[20]2default:default"8
s_axis_tdata[19]s_axis_tdata[19]2default:default"8
s_axis_tdata[18]s_axis_tdata[18]2default:default"8
s_axis_tdata[17]s_axis_tdata[17]2default:default"4
s_axis_tdata[16]s_axis_tdata[16]2default:..."/
(the first 15 of 39 listed)2default:default2default:default2(
 DRC|Pin Planning2default:default8ZNSTD-1h px? 
?
?Unconstrained Logical Port: 52 out of 52 logical ports have no user assigned specific location constraint (LOC). This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all pin locations. This design will fail to generate a bitstream unless all logical ports have a user specified site LOC constraint defined.  To allow bitstream creation with unspecified pin locations (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks UCIO-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run.  Problem ports: %s.%s*DRC2?
 ",
dac_dat[13:0]dac_dat2default:default"8
s_axis_tdata[29]s_axis_tdata[29]2default:default"8
s_axis_tdata[28]s_axis_tdata[28]2default:default"8
s_axis_tdata[27]s_axis_tdata[27]2default:default"8
s_axis_tdata[26]s_axis_tdata[26]2default:default"8
s_axis_tdata[25]s_axis_tdata[25]2default:default"8
s_axis_tdata[24]s_axis_tdata[24]2default:default"8
s_axis_tdata[23]s_axis_tdata[23]2default:default"8
s_axis_tdata[22]s_axis_tdata[22]2default:default"8
s_axis_tdata[21]s_axis_tdata[21]2default:default"8
s_axis_tdata[20]s_axis_tdata[20]2default:default"8
s_axis_tdata[19]s_axis_tdata[19]2default:default"8
s_axis_tdata[18]s_axis_tdata[18]2default:default"8
s_axis_tdata[17]s_axis_tdata[17]2default:default"4
s_axis_tdata[16]s_axis_tdata[16]2default:..."/
(the first 15 of 39 listed)2default:default2default:default2(
 DRC|Pin Planning2default:default8ZUCIO-1h px? 
?
uPS7 block required: The PS7 cell must be used in this Zynq design in order to enable correct default configuration.%s*DRC2;
 #DRC|PS7|Zynq requires PS7 block|PS72default:default8ZZPS7-1h px? 
f
DRC finished with %s
1905*	planAhead2(
2 Errors, 1 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
R
+Error(s) found during DRC. Bitgen not run.
1345*	planAheadZ12-1345h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
162default:default2
12default:default2
02default:default2
32default:defaultZ4-41h px? 
Q

%s failed
30*	vivadotcl2#
write_bitstream2default:defaultZ4-43h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2%
write_bitstream: 2default:default2
00:00:192default:default2
00:00:212default:default2
2591.7972default:default2
301.0272default:default2
64762default:default2
137222default:defaultZ17-722h px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Oct  7 11:43:07 20212default:defaultZ17-206h px? 


End Record