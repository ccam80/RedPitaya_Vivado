
################################################################
# This is a generated script based on design: system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source system_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# AXI4_multi_adder, output_binary_converter

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z010clg400-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name system

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

  # Add USER_COMMENTS on $design_name
  set_property USER_COMMENTS.comment_0 "Hardware
" [get_bd_designs $design_name]
  set_property USER_COMMENTS.comment_1 "I/O
" [get_bd_designs $design_name]
  set_property USER_COMMENTS.comment_2 "Reg Breakout
" [get_bd_designs $design_name]
  set_property USER_COMMENTS.comment_3 "Processing/sig generation
" [get_bd_designs $design_name]
  set_property USER_COMMENTS.comment_4 "Demux output and DAC

" [get_bd_designs $design_name]
  set_property USER_COMMENTS.comment_5 "Save to RAM
" [get_bd_designs $design_name]

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]

  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  set Vaux0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux0 ]

  set Vaux1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux1 ]

  set Vaux8 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux8 ]

  set Vaux9 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux9 ]

  set Vp_Vn [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vp_Vn ]


  # Create ports
  set adc_clk_n_i [ create_bd_port -dir I adc_clk_n_i ]
  set adc_clk_p_i [ create_bd_port -dir I adc_clk_p_i ]
  set adc_csn_o [ create_bd_port -dir O adc_csn_o ]
  set adc_dat_a_i [ create_bd_port -dir I -from 15 -to 0 adc_dat_a_i ]
  set adc_dat_b_i [ create_bd_port -dir I -from 15 -to 0 adc_dat_b_i ]
  set adc_enc_n_o [ create_bd_port -dir O adc_enc_n_o ]
  set adc_enc_p_o [ create_bd_port -dir O adc_enc_p_o ]
  set dac_clk_o [ create_bd_port -dir O dac_clk_o ]
  set dac_dat_o [ create_bd_port -dir O -from 13 -to 0 dac_dat_o ]
  set dac_pwm_o [ create_bd_port -dir O -from 3 -to 0 dac_pwm_o ]
  set dac_rst_o [ create_bd_port -dir O dac_rst_o ]
  set dac_sel_o [ create_bd_port -dir O dac_sel_o ]
  set dac_wrt_o [ create_bd_port -dir O dac_wrt_o ]
  set exp_n_tri_io [ create_bd_port -dir IO -from 7 -to 0 exp_n_tri_io ]
  set exp_p_tri_io [ create_bd_port -dir IO -from 7 -to 0 exp_p_tri_io ]
  set led_o [ create_bd_port -dir O -from 7 -to 0 led_o ]

  # Create instance: AXI4_multi_adder_0, and set properties
  set block_name AXI4_multi_adder
  set block_cell_name AXI4_multi_adder_0
  if { [catch {set AXI4_multi_adder_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $AXI4_multi_adder_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.ADC_DATA_WIDTH {16} \
   CONFIG.ADD_CONST_WIDTH {16} \
   CONFIG.AXIS_TDATA_WIDTH {16} \
   CONFIG.MULT_CONST_WIDTH {32} \
 ] $AXI4_multi_adder_0

  # Create instance: CIC_config_replicator, and set properties
  set CIC_config_replicator [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_broadcaster:1.1 CIC_config_replicator ]
  set_property -dict [ list \
   CONFIG.M00_TDATA_REMAP {tdata[15:0]} \
   CONFIG.M01_TDATA_REMAP {tdata[15:0]} \
   CONFIG.M_TDATA_NUM_BYTES {2} \
   CONFIG.S_TDATA_NUM_BYTES {2} \
 ] $CIC_config_replicator

  # Create instance: a_const_16Q16, and set properties
  set a_const_16Q16 [ create_bd_cell -type ip -vlnv pavel-demin:user:axis_constant:1.0 a_const_16Q16 ]
  set_property -dict [ list \
   CONFIG.AXIS_TDATA_WIDTH {32} \
 ] $a_const_16Q16

  # Create instance: adc_0, and set properties
  set adc_0 [ create_bd_cell -type ip -vlnv pavel-demin:user:axis_red_pitaya_adc:3.0 adc_0 ]
  set_property -dict [ list \
   CONFIG.ADC_DATA_WIDTH {14} \
 ] $adc_0

  # Create instance: axis_combiner_0, and set properties
  set axis_combiner_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_combiner:1.1 axis_combiner_0 ]
  set_property -dict [ list \
   CONFIG.TDATA_NUM_BYTES {2} \
 ] $axis_combiner_0

  # Create instance: b_const_16b, and set properties
  set b_const_16b [ create_bd_cell -type ip -vlnv pavel-demin:user:axis_constant:1.0 b_const_16b ]
  set_property -dict [ list \
   CONFIG.AXIS_TDATA_WIDTH {16} \
 ] $b_const_16b

  # Create instance: cfg_0, and set properties
  set cfg_0 [ create_bd_cell -type ip -vlnv pavel-demin:user:axi_cfg_register:1.0 cfg_0 ]
  set_property -dict [ list \
   CONFIG.AXI_ADDR_WIDTH {32} \
   CONFIG.AXI_DATA_WIDTH {32} \
   CONFIG.CFG_DATA_WIDTH {160} \
 ] $cfg_0

  # Create instance: ch1_mem_fb_split, and set properties
  set ch1_mem_fb_split [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_broadcaster:1.1 ch1_mem_fb_split ]
  set_property -dict [ list \
   CONFIG.M00_TDATA_REMAP {tdata[15:0]} \
   CONFIG.M01_TDATA_REMAP {tdata[15:0]} \
   CONFIG.M_TDATA_NUM_BYTES {2} \
   CONFIG.S_TDATA_NUM_BYTES {2} \
 ] $ch1_mem_fb_split

  # Create instance: ch1_output_dac_mem_split, and set properties
  set ch1_output_dac_mem_split [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_broadcaster:1.1 ch1_output_dac_mem_split ]
  set_property -dict [ list \
   CONFIG.M00_TDATA_REMAP {tdata[15:0]} \
   CONFIG.M01_TDATA_REMAP {tdata[15:0]} \
   CONFIG.M_TDATA_NUM_BYTES {2} \
   CONFIG.S_TDATA_NUM_BYTES {2} \
 ] $ch1_output_dac_mem_split

  # Create instance: channel_split, and set properties
  set channel_split [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_broadcaster:1.1 channel_split ]
  set_property -dict [ list \
   CONFIG.M00_TDATA_REMAP {tdata[15:0]} \
   CONFIG.M01_TDATA_REMAP {tdata[31:16]} \
   CONFIG.M_TDATA_NUM_BYTES {2} \
   CONFIG.S_TDATA_NUM_BYTES {4} \
 ] $channel_split

  # Create instance: cic_0, and set properties
  set cic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:cic_compiler:4.0 cic_0 ]
  set_property -dict [ list \
   CONFIG.Clock_Frequency {125} \
   CONFIG.Filter_Type {Decimation} \
   CONFIG.Fixed_Or_Initial_Rate {4} \
   CONFIG.HAS_ARESETN {true} \
   CONFIG.Input_Data_Width {16} \
   CONFIG.Input_Sample_Frequency {125} \
   CONFIG.Maximum_Rate {6250} \
   CONFIG.Minimum_Rate {4} \
   CONFIG.Number_Of_Stages {6} \
   CONFIG.Output_Data_Width {16} \
   CONFIG.Quantization {Truncation} \
   CONFIG.Sample_Rate_Changes {Programmable} \
   CONFIG.Use_Xtreme_DSP_Slice {false} \
 ] $cic_0

  # Create instance: cic_1, and set properties
  set cic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:cic_compiler:4.0 cic_1 ]
  set_property -dict [ list \
   CONFIG.Clock_Frequency {125} \
   CONFIG.Filter_Type {Decimation} \
   CONFIG.Fixed_Or_Initial_Rate {4} \
   CONFIG.HAS_ARESETN {true} \
   CONFIG.Input_Data_Width {16} \
   CONFIG.Input_Sample_Frequency {125} \
   CONFIG.Maximum_Rate {6250} \
   CONFIG.Minimum_Rate {4} \
   CONFIG.Number_Of_Stages {6} \
   CONFIG.Output_Data_Width {16} \
   CONFIG.Quantization {Truncation} \
   CONFIG.Sample_Rate_Changes {Programmable} \
   CONFIG.Use_Xtreme_DSP_Slice {false} \
 ] $cic_1

  # Create instance: const_0, and set properties
  set const_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_0 ]

  # Create instance: const_1, and set properties
  set const_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {2} \
 ] $const_1

  # Create instance: conv_0, and set properties
  set conv_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 conv_0 ]
  set_property -dict [ list \
   CONFIG.M_TDATA_NUM_BYTES {8} \
   CONFIG.S_TDATA_NUM_BYTES {4} \
 ] $conv_0

  # Create instance: dac_0, and set properties
  set dac_0 [ create_bd_cell -type ip -vlnv pavel-demin:user:axis_red_pitaya_dac:2.0 dac_0 ]
  set_property -dict [ list \
   CONFIG.DAC_DATA_WIDTH {14} \
 ] $dac_0

  # Create instance: dds_0, and set properties
  set dds_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dds_compiler:6.0 dds_0 ]
  set_property -dict [ list \
   CONFIG.DDS_Clock_Rate {125} \
   CONFIG.DSP48_Use {Minimal} \
   CONFIG.Frequency_Resolution {0.2} \
   CONFIG.Has_Phase_Out {false} \
   CONFIG.Negative_Sine {true} \
   CONFIG.Output_Width {24} \
   CONFIG.Phase_Increment {Streaming} \
   CONFIG.Phase_Width {30} \
   CONFIG.Spurious_Free_Dynamic_Range {138} \
 ] $dds_0

  # Create instance: dds_stream, and set properties
  set dds_stream [ create_bd_cell -type ip -vlnv pavel-demin:user:axis_constant:1.0 dds_stream ]
  set_property -dict [ list \
   CONFIG.AXIS_TDATA_WIDTH {16} \
 ] $dds_stream

  # Create instance: dna_0, and set properties
  set dna_0 [ create_bd_cell -type ip -vlnv pavel-demin:user:dna_reader:1.0 dna_0 ]

  # Create instance: mult_0, and set properties
  set mult_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xbip_dsp48_macro:3.0 mult_0 ]
  set_property -dict [ list \
   CONFIG.a_binarywidth {0} \
   CONFIG.a_width {24} \
   CONFIG.areg_3 {true} \
   CONFIG.areg_4 {true} \
   CONFIG.b_binarywidth {0} \
   CONFIG.b_width {16} \
   CONFIG.breg_3 {true} \
   CONFIG.breg_4 {true} \
   CONFIG.c_binarywidth {0} \
   CONFIG.cinreg_3 {false} \
   CONFIG.cinreg_4 {false} \
   CONFIG.cinreg_5 {false} \
   CONFIG.concat_binarywidth {0} \
   CONFIG.concat_width {48} \
   CONFIG.d_width {18} \
   CONFIG.instruction1 {RNDSIMPLE(A*B)} \
   CONFIG.mreg_5 {true} \
   CONFIG.output_properties {User_Defined} \
   CONFIG.p_width {15} \
   CONFIG.pcin_binarywidth {0} \
   CONFIG.preg_6 {true} \
 ] $mult_0

  # Create instance: output_binary_conver_0, and set properties
  set block_name output_binary_converter
  set block_cell_name output_binary_conver_0
  if { [catch {set output_binary_conver_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $output_binary_conver_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: output_combiner, and set properties
  set output_combiner [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_combiner:1.1 output_combiner ]
  set_property -dict [ list \
   CONFIG.TDATA_NUM_BYTES {2} \
 ] $output_combiner

  # Create instance: phase_0, and set properties
  set phase_0 [ create_bd_cell -type ip -vlnv pavel-demin:user:axis_constant:1.0 phase_0 ]
  set_property -dict [ list \
   CONFIG.AXIS_TDATA_WIDTH {32} \
 ] $phase_0

  # Create instance: pll_0, and set properties
  set pll_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 pll_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {125.0} \
   CONFIG.CLKOUT1_USED {true} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {250.0} \
   CONFIG.CLKOUT2_REQUESTED_PHASE {157.5} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {250.0} \
   CONFIG.CLKOUT3_REQUESTED_PHASE {202.5} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_JITTER {119.348} \
   CONFIG.CLKOUT4_PHASE_ERROR {96.948} \
   CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {125} \
   CONFIG.CLKOUT4_USED {false} \
   CONFIG.CLKOUT5_JITTER {119.348} \
   CONFIG.CLKOUT5_PHASE_ERROR {96.948} \
   CONFIG.CLKOUT5_REQUESTED_OUT_FREQ {125} \
   CONFIG.CLKOUT5_USED {false} \
   CONFIG.CLKOUT6_JITTER {119.348} \
   CONFIG.CLKOUT6_PHASE_ERROR {96.948} \
   CONFIG.CLKOUT6_REQUESTED_OUT_FREQ {125} \
   CONFIG.CLKOUT6_USED {false} \
   CONFIG.MMCM_CLKOUT3_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT4_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT5_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {3} \
   CONFIG.PRIMITIVE {PLL} \
   CONFIG.PRIM_IN_FREQ {125.0} \
   CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
   CONFIG.USE_RESET {false} \
 ] $pll_0

  # Create instance: ps_0, and set properties
  set ps_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 ps_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {50.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {166.666672} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_ACT_USB1_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_APU_CLK_RATIO_ENABLE {6:2:1} \
   CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {666.666666} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN0_GRP_CLK_ENABLE {0} \
   CONFIG.PCW_CAN0_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_CAN0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_CAN1_GRP_CLK_ENABLE {0} \
   CONFIG.PCW_CAN1_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_CAN1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_CAN_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_CAN_PERIPHERAL_VALID {0} \
   CONFIG.PCW_CLK0_FREQ {50000000} \
   CONFIG.PCW_CLK1_FREQ {10000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE {667} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_CLKSRC {ARM PLL} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.333333} \
   CONFIG.PCW_DCI_PERIPHERAL_CLKSRC {DDR PLL} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DCI_PERIPHERAL_FREQMHZ {10.159} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
   CONFIG.PCW_DDR_HPRLPR_QUEUE_PARTITION {HPR(0)/LPR(32)} \
   CONFIG.PCW_DDR_HPR_TO_CRITICAL_PRIORITY_LEVEL {15} \
   CONFIG.PCW_DDR_LPR_TO_CRITICAL_PRIORITY_LEVEL {2} \
   CONFIG.PCW_DDR_PERIPHERAL_CLKSRC {DDR PLL} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_PORT0_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT1_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT2_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT3_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x1FFFFFFF} \
   CONFIG.PCW_DDR_WRITE_TO_CRITICAL_PRIORITY_LEVEL {2} \
   CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
   CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
   CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
   CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET1_GRP_MDIO_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {1} \
   CONFIG.PCW_ENET_RESET_POLARITY {Active Low} \
   CONFIG.PCW_ENET_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_EN_4K_TIMER {0} \
   CONFIG.PCW_EN_CAN0 {0} \
   CONFIG.PCW_EN_CAN1 {0} \
   CONFIG.PCW_EN_CLK0_PORT {1} \
   CONFIG.PCW_EN_CLK1_PORT {0} \
   CONFIG.PCW_EN_CLK2_PORT {0} \
   CONFIG.PCW_EN_CLK3_PORT {0} \
   CONFIG.PCW_EN_DDR {1} \
   CONFIG.PCW_EN_EMIO_CAN0 {0} \
   CONFIG.PCW_EN_EMIO_CAN1 {0} \
   CONFIG.PCW_EN_EMIO_CD_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_CD_SDIO1 {0} \
   CONFIG.PCW_EN_EMIO_ENET0 {0} \
   CONFIG.PCW_EN_EMIO_ENET1 {0} \
   CONFIG.PCW_EN_EMIO_GPIO {1} \
   CONFIG.PCW_EN_EMIO_I2C0 {0} \
   CONFIG.PCW_EN_EMIO_I2C1 {0} \
   CONFIG.PCW_EN_EMIO_MODEM_UART0 {0} \
   CONFIG.PCW_EN_EMIO_MODEM_UART1 {0} \
   CONFIG.PCW_EN_EMIO_PJTAG {0} \
   CONFIG.PCW_EN_EMIO_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_SDIO1 {0} \
   CONFIG.PCW_EN_EMIO_SPI0 {1} \
   CONFIG.PCW_EN_EMIO_SPI1 {0} \
   CONFIG.PCW_EN_EMIO_SRAM_INT {0} \
   CONFIG.PCW_EN_EMIO_TRACE {0} \
   CONFIG.PCW_EN_EMIO_TTC0 {0} \
   CONFIG.PCW_EN_EMIO_TTC1 {0} \
   CONFIG.PCW_EN_EMIO_UART0 {0} \
   CONFIG.PCW_EN_EMIO_UART1 {0} \
   CONFIG.PCW_EN_EMIO_WDT {0} \
   CONFIG.PCW_EN_EMIO_WP_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_WP_SDIO1 {0} \
   CONFIG.PCW_EN_ENET0 {1} \
   CONFIG.PCW_EN_ENET1 {0} \
   CONFIG.PCW_EN_GPIO {1} \
   CONFIG.PCW_EN_I2C0 {1} \
   CONFIG.PCW_EN_I2C1 {0} \
   CONFIG.PCW_EN_MODEM_UART0 {0} \
   CONFIG.PCW_EN_MODEM_UART1 {0} \
   CONFIG.PCW_EN_PJTAG {0} \
   CONFIG.PCW_EN_QSPI {0} \
   CONFIG.PCW_EN_SDIO0 {1} \
   CONFIG.PCW_EN_SDIO1 {0} \
   CONFIG.PCW_EN_SMC {0} \
   CONFIG.PCW_EN_SPI0 {1} \
   CONFIG.PCW_EN_SPI1 {1} \
   CONFIG.PCW_EN_TRACE {0} \
   CONFIG.PCW_EN_TTC0 {0} \
   CONFIG.PCW_EN_TTC1 {0} \
   CONFIG.PCW_EN_UART0 {1} \
   CONFIG.PCW_EN_UART1 {1} \
   CONFIG.PCW_EN_USB0 {1} \
   CONFIG.PCW_EN_USB1 {0} \
   CONFIG.PCW_EN_WDT {0} \
   CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {4} \
   CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK_CLK0_BUF {TRUE} \
   CONFIG.PCW_FCLK_CLK1_BUF {FALSE} \
   CONFIG.PCW_FCLK_CLK2_BUF {FALSE} \
   CONFIG.PCW_FCLK_CLK3_BUF {FALSE} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_EMIO_GPIO_IO {64} \
   CONFIG.PCW_GPIO_EMIO_GPIO_WIDTH {64} \
   CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
   CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C0_GRP_INT_ENABLE {0} \
   CONFIG.PCW_I2C0_I2C0_IO {MIO 50 .. 51} \
   CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_GRP_INT_ENABLE {0} \
   CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_I2C_RESET_ENABLE {1} \
   CONFIG.PCW_I2C_RESET_POLARITY {Active Low} \
   CONFIG.PCW_I2C_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_IMPORT_BOARD_PRESET {cfg/red_pitaya.xml} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {30} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1000.000} \
   CONFIG.PCW_IRQ_F2P_MODE {DIRECT} \
   CONFIG.PCW_MIO_0_DIRECTION {inout} \
   CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_0_PULLUP {disabled} \
   CONFIG.PCW_MIO_0_SLEW {slow} \
   CONFIG.PCW_MIO_10_DIRECTION {inout} \
   CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_10_PULLUP {enabled} \
   CONFIG.PCW_MIO_10_SLEW {slow} \
   CONFIG.PCW_MIO_11_DIRECTION {inout} \
   CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_11_PULLUP {enabled} \
   CONFIG.PCW_MIO_11_SLEW {slow} \
   CONFIG.PCW_MIO_12_DIRECTION {inout} \
   CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_12_PULLUP {enabled} \
   CONFIG.PCW_MIO_12_SLEW {slow} \
   CONFIG.PCW_MIO_13_DIRECTION {inout} \
   CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_13_PULLUP {enabled} \
   CONFIG.PCW_MIO_13_SLEW {slow} \
   CONFIG.PCW_MIO_14_DIRECTION {in} \
   CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_14_PULLUP {enabled} \
   CONFIG.PCW_MIO_14_SLEW {slow} \
   CONFIG.PCW_MIO_15_DIRECTION {out} \
   CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_15_PULLUP {enabled} \
   CONFIG.PCW_MIO_15_SLEW {slow} \
   CONFIG.PCW_MIO_16_DIRECTION {out} \
   CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_16_PULLUP {disabled} \
   CONFIG.PCW_MIO_16_SLEW {fast} \
   CONFIG.PCW_MIO_17_DIRECTION {out} \
   CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_17_PULLUP {disabled} \
   CONFIG.PCW_MIO_17_SLEW {fast} \
   CONFIG.PCW_MIO_18_DIRECTION {out} \
   CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_18_PULLUP {disabled} \
   CONFIG.PCW_MIO_18_SLEW {fast} \
   CONFIG.PCW_MIO_19_DIRECTION {out} \
   CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_19_PULLUP {disabled} \
   CONFIG.PCW_MIO_19_SLEW {fast} \
   CONFIG.PCW_MIO_1_DIRECTION {inout} \
   CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_1_PULLUP {enabled} \
   CONFIG.PCW_MIO_1_SLEW {slow} \
   CONFIG.PCW_MIO_20_DIRECTION {out} \
   CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_20_PULLUP {disabled} \
   CONFIG.PCW_MIO_20_SLEW {fast} \
   CONFIG.PCW_MIO_21_DIRECTION {out} \
   CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_21_PULLUP {disabled} \
   CONFIG.PCW_MIO_21_SLEW {fast} \
   CONFIG.PCW_MIO_22_DIRECTION {in} \
   CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_22_PULLUP {disabled} \
   CONFIG.PCW_MIO_22_SLEW {fast} \
   CONFIG.PCW_MIO_23_DIRECTION {in} \
   CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_23_PULLUP {disabled} \
   CONFIG.PCW_MIO_23_SLEW {fast} \
   CONFIG.PCW_MIO_24_DIRECTION {in} \
   CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_24_PULLUP {disabled} \
   CONFIG.PCW_MIO_24_SLEW {fast} \
   CONFIG.PCW_MIO_25_DIRECTION {in} \
   CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_25_PULLUP {disabled} \
   CONFIG.PCW_MIO_25_SLEW {fast} \
   CONFIG.PCW_MIO_26_DIRECTION {in} \
   CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_26_PULLUP {disabled} \
   CONFIG.PCW_MIO_26_SLEW {fast} \
   CONFIG.PCW_MIO_27_DIRECTION {in} \
   CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_27_PULLUP {disabled} \
   CONFIG.PCW_MIO_27_SLEW {fast} \
   CONFIG.PCW_MIO_28_DIRECTION {inout} \
   CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_28_PULLUP {enabled} \
   CONFIG.PCW_MIO_28_SLEW {fast} \
   CONFIG.PCW_MIO_29_DIRECTION {in} \
   CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_29_PULLUP {enabled} \
   CONFIG.PCW_MIO_29_SLEW {fast} \
   CONFIG.PCW_MIO_2_DIRECTION {inout} \
   CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_2_PULLUP {disabled} \
   CONFIG.PCW_MIO_2_SLEW {slow} \
   CONFIG.PCW_MIO_30_DIRECTION {out} \
   CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_30_PULLUP {enabled} \
   CONFIG.PCW_MIO_30_SLEW {fast} \
   CONFIG.PCW_MIO_31_DIRECTION {in} \
   CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_31_PULLUP {enabled} \
   CONFIG.PCW_MIO_31_SLEW {fast} \
   CONFIG.PCW_MIO_32_DIRECTION {inout} \
   CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_32_PULLUP {enabled} \
   CONFIG.PCW_MIO_32_SLEW {fast} \
   CONFIG.PCW_MIO_33_DIRECTION {inout} \
   CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_33_PULLUP {enabled} \
   CONFIG.PCW_MIO_33_SLEW {fast} \
   CONFIG.PCW_MIO_34_DIRECTION {inout} \
   CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_34_PULLUP {enabled} \
   CONFIG.PCW_MIO_34_SLEW {fast} \
   CONFIG.PCW_MIO_35_DIRECTION {inout} \
   CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_35_PULLUP {enabled} \
   CONFIG.PCW_MIO_35_SLEW {fast} \
   CONFIG.PCW_MIO_36_DIRECTION {in} \
   CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_36_PULLUP {enabled} \
   CONFIG.PCW_MIO_36_SLEW {fast} \
   CONFIG.PCW_MIO_37_DIRECTION {inout} \
   CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_37_PULLUP {enabled} \
   CONFIG.PCW_MIO_37_SLEW {fast} \
   CONFIG.PCW_MIO_38_DIRECTION {inout} \
   CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_38_PULLUP {enabled} \
   CONFIG.PCW_MIO_38_SLEW {fast} \
   CONFIG.PCW_MIO_39_DIRECTION {inout} \
   CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_39_PULLUP {enabled} \
   CONFIG.PCW_MIO_39_SLEW {fast} \
   CONFIG.PCW_MIO_3_DIRECTION {inout} \
   CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_3_PULLUP {disabled} \
   CONFIG.PCW_MIO_3_SLEW {slow} \
   CONFIG.PCW_MIO_40_DIRECTION {inout} \
   CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_40_PULLUP {enabled} \
   CONFIG.PCW_MIO_40_SLEW {slow} \
   CONFIG.PCW_MIO_41_DIRECTION {inout} \
   CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_41_PULLUP {enabled} \
   CONFIG.PCW_MIO_41_SLEW {slow} \
   CONFIG.PCW_MIO_42_DIRECTION {inout} \
   CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_42_PULLUP {enabled} \
   CONFIG.PCW_MIO_42_SLEW {slow} \
   CONFIG.PCW_MIO_43_DIRECTION {inout} \
   CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_43_PULLUP {enabled} \
   CONFIG.PCW_MIO_43_SLEW {slow} \
   CONFIG.PCW_MIO_44_DIRECTION {inout} \
   CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_44_PULLUP {enabled} \
   CONFIG.PCW_MIO_44_SLEW {slow} \
   CONFIG.PCW_MIO_45_DIRECTION {inout} \
   CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_45_PULLUP {enabled} \
   CONFIG.PCW_MIO_45_SLEW {slow} \
   CONFIG.PCW_MIO_46_DIRECTION {in} \
   CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_46_PULLUP {enabled} \
   CONFIG.PCW_MIO_46_SLEW {slow} \
   CONFIG.PCW_MIO_47_DIRECTION {in} \
   CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_47_PULLUP {enabled} \
   CONFIG.PCW_MIO_47_SLEW {slow} \
   CONFIG.PCW_MIO_48_DIRECTION {out} \
   CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_48_PULLUP {enabled} \
   CONFIG.PCW_MIO_48_SLEW {slow} \
   CONFIG.PCW_MIO_49_DIRECTION {inout} \
   CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_49_PULLUP {enabled} \
   CONFIG.PCW_MIO_49_SLEW {slow} \
   CONFIG.PCW_MIO_4_DIRECTION {inout} \
   CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_4_PULLUP {disabled} \
   CONFIG.PCW_MIO_4_SLEW {slow} \
   CONFIG.PCW_MIO_50_DIRECTION {inout} \
   CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_50_PULLUP {enabled} \
   CONFIG.PCW_MIO_50_SLEW {slow} \
   CONFIG.PCW_MIO_51_DIRECTION {inout} \
   CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_51_PULLUP {enabled} \
   CONFIG.PCW_MIO_51_SLEW {slow} \
   CONFIG.PCW_MIO_52_DIRECTION {out} \
   CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_52_PULLUP {enabled} \
   CONFIG.PCW_MIO_52_SLEW {slow} \
   CONFIG.PCW_MIO_53_DIRECTION {inout} \
   CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_53_PULLUP {enabled} \
   CONFIG.PCW_MIO_53_SLEW {slow} \
   CONFIG.PCW_MIO_5_DIRECTION {inout} \
   CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_5_PULLUP {disabled} \
   CONFIG.PCW_MIO_5_SLEW {slow} \
   CONFIG.PCW_MIO_6_DIRECTION {inout} \
   CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_6_PULLUP {disabled} \
   CONFIG.PCW_MIO_6_SLEW {slow} \
   CONFIG.PCW_MIO_7_DIRECTION {out} \
   CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_7_PULLUP {disabled} \
   CONFIG.PCW_MIO_7_SLEW {slow} \
   CONFIG.PCW_MIO_8_DIRECTION {out} \
   CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_8_PULLUP {disabled} \
   CONFIG.PCW_MIO_8_SLEW {slow} \
   CONFIG.PCW_MIO_9_DIRECTION {in} \
   CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_9_PULLUP {enabled} \
   CONFIG.PCW_MIO_9_SLEW {slow} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS { \
     0#Enet 0 \
     0#Enet 0 \
     0#Enet 0 \
     0#Enet 0 \
     0#Enet 0 \
     0#Enet 0 \
     0#Enet 0 \
     0#I2C 0#Enet \
     0#SD 0#SD \
     0#SD 0#SD \
     0#SD 0#SD \
     0#SD 0#SD \
     0#USB Reset#GPIO#I2C \
     0#USB Reset#GPIO#I2C \
     0#USB Reset#GPIO#I2C \
     0#USB Reset#GPIO#I2C \
     0#USB Reset#GPIO#I2C \
     0#USB Reset#GPIO#I2C \
     0#USB Reset#GPIO#I2C \
     1#SPI 1#SPI \
     1#SPI 1#SPI \
     1#UART 0#UART \
     GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#UART 1#UART \
   } \
   CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#gpio[1]#gpio[2]#gpio[3]#gpio[4]#gpio[5]#gpio[6]#gpio[7]#tx#rx#mosi#miso#sclk#ss[0]#rx#tx#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#cd#wp#reset#gpio[49]#scl#sda#mdc#mdio} \
   CONFIG.PCW_NAND_CYCLES_T_AR {1} \
   CONFIG.PCW_NAND_CYCLES_T_CLR {1} \
   CONFIG.PCW_NAND_CYCLES_T_RC {11} \
   CONFIG.PCW_NAND_CYCLES_T_REA {1} \
   CONFIG.PCW_NAND_CYCLES_T_RR {1} \
   CONFIG.PCW_NAND_CYCLES_T_WC {11} \
   CONFIG.PCW_NAND_CYCLES_T_WP {1} \
   CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
   CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_CS0_T_CEOE {1} \
   CONFIG.PCW_NOR_CS0_T_PC {1} \
   CONFIG.PCW_NOR_CS0_T_RC {11} \
   CONFIG.PCW_NOR_CS0_T_TR {1} \
   CONFIG.PCW_NOR_CS0_T_WC {11} \
   CONFIG.PCW_NOR_CS0_T_WP {1} \
   CONFIG.PCW_NOR_CS0_WE_TIME {0} \
   CONFIG.PCW_NOR_CS1_T_CEOE {1} \
   CONFIG.PCW_NOR_CS1_T_PC {1} \
   CONFIG.PCW_NOR_CS1_T_RC {11} \
   CONFIG.PCW_NOR_CS1_T_TR {1} \
   CONFIG.PCW_NOR_CS1_T_WC {11} \
   CONFIG.PCW_NOR_CS1_T_WP {1} \
   CONFIG.PCW_NOR_CS1_WE_TIME {0} \
   CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
   CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_SRAM_CS0_T_CEOE {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_PC {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_RC {11} \
   CONFIG.PCW_NOR_SRAM_CS0_T_TR {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_WC {11} \
   CONFIG.PCW_NOR_SRAM_CS0_T_WP {1} \
   CONFIG.PCW_NOR_SRAM_CS0_WE_TIME {0} \
   CONFIG.PCW_NOR_SRAM_CS1_T_CEOE {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_PC {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_RC {11} \
   CONFIG.PCW_NOR_SRAM_CS1_T_TR {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_WC {11} \
   CONFIG.PCW_NOR_SRAM_CS1_T_WP {1} \
   CONFIG.PCW_NOR_SRAM_CS1_WE_TIME {0} \
   CONFIG.PCW_OVERRIDE_BASIC_CLOCK {0} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.080} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.063} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.057} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.068} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {-0.047} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {-0.025} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {-0.006} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.017} \
   CONFIG.PCW_PCAP_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_PCAP_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PLL_BYPASSMODE_ENABLE {0} \
   CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 2.5V} \
   CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_QSPI_INTERNAL_HIGHADDRESS {0xFCFFFFFF} \
   CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_CD_IO {MIO 46} \
   CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_WP_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_WP_IO {MIO 47} \
   CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
   CONFIG.PCW_SD1_GRP_CD_ENABLE {0} \
   CONFIG.PCW_SD1_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD1_GRP_WP_ENABLE {0} \
   CONFIG.PCW_SD1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {10} \
   CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
   CONFIG.PCW_SMC_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SMC_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_SMC_PERIPHERAL_VALID {0} \
   CONFIG.PCW_SPI0_GRP_SS0_ENABLE {1} \
   CONFIG.PCW_SPI0_GRP_SS0_IO {EMIO} \
   CONFIG.PCW_SPI0_GRP_SS1_ENABLE {1} \
   CONFIG.PCW_SPI0_GRP_SS1_IO {EMIO} \
   CONFIG.PCW_SPI0_GRP_SS2_ENABLE {1} \
   CONFIG.PCW_SPI0_GRP_SS2_IO {EMIO} \
   CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SPI0_SPI0_IO {EMIO} \
   CONFIG.PCW_SPI1_GRP_SS0_ENABLE {1} \
   CONFIG.PCW_SPI1_GRP_SS0_IO {MIO 13} \
   CONFIG.PCW_SPI1_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_SPI1_GRP_SS2_ENABLE {0} \
   CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SPI1_SPI1_IO {MIO 10 .. 15} \
   CONFIG.PCW_SPI_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {6} \
   CONFIG.PCW_SPI_PERIPHERAL_FREQMHZ {166.666666} \
   CONFIG.PCW_SPI_PERIPHERAL_VALID {1} \
   CONFIG.PCW_S_AXI_HP0_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP1_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP2_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP3_DATA_WIDTH {64} \
   CONFIG.PCW_TPIU_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_TRACE_GRP_16BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_2BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_32BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_4BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_8BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_INTERNAL_WIDTH {2} \
   CONFIG.PCW_TRACE_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART0_BAUD_RATE {115200} \
   CONFIG.PCW_UART0_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART0_UART0_IO {MIO 14 .. 15} \
   CONFIG.PCW_UART1_BAUD_RATE {115200} \
   CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART1_UART1_IO {MIO 8 .. 9} \
   CONFIG.PCW_UART_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {10} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
   CONFIG.PCW_UIPARAM_DDR_ADV_ENABLE {0} \
   CONFIG.PCW_UIPARAM_DDR_AL {0} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_BL {8} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {16 Bit} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PACKAGE_LENGTH {54.563} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PACKAGE_LENGTH {54.563} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PACKAGE_LENGTH {54.563} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PACKAGE_LENGTH {54.563} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_STOP_EN {0} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {6} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {4096 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_PACKAGE_LENGTH {101.239} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_PACKAGE_LENGTH {79.5025} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_PACKAGE_LENGTH {60.536} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_PACKAGE_LENGTH {71.7715} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_PACKAGE_LENGTH {104.5365} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_PACKAGE_LENGTH {70.676} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_PACKAGE_LENGTH {59.1615} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_PACKAGE_LENGTH {81.319} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
   CONFIG.PCW_UIPARAM_DDR_ECC {Disabled} \
   CONFIG.PCW_UIPARAM_DDR_ENABLE {1} \
   CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533.333333} \
   CONFIG.PCW_UIPARAM_DDR_HIGH_TEMP {Normal (0-85)} \
   CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41J256M16 RE-125} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {15} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {48.91} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {0} \
   CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB0_RESET_ENABLE {1} \
   CONFIG.PCW_USB0_RESET_IO {MIO 48} \
   CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
   CONFIG.PCW_USB1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_USB1_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB1_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_ENABLE {1} \
   CONFIG.PCW_USB_RESET_POLARITY {Active Low} \
   CONFIG.PCW_USB_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_USE_AXI_NONSECURE {0} \
   CONFIG.PCW_USE_CROSS_TRIGGER {0} \
   CONFIG.PCW_USE_DEFAULT_ACP_USER_VAL {1} \
   CONFIG.PCW_USE_S_AXI_ACP {1} \
   CONFIG.PCW_WDT_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_WDT_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_WDT_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_WDT_PERIPHERAL_FREQMHZ {133.333333} \
 ] $ps_0

  # Create instance: ps_0_axi_periph, and set properties
  set ps_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
 ] $ps_0_axi_periph

  # Create instance: rate_0, and set properties
  set rate_0 [ create_bd_cell -type ip -vlnv pavel-demin:user:axis_variable:1.0 rate_0 ]
  set_property -dict [ list \
   CONFIG.AXIS_TDATA_WIDTH {16} \
 ] $rate_0

  # Create instance: rst_0, and set properties
  set rst_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_0 ]

  # Create instance: slice_0, and set properties
  set slice_0 [ create_bd_cell -type ip -vlnv pavel-demin:user:port_slicer:1.0 slice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {160} \
 ] $slice_0

  # Create instance: slice_1, and set properties
  set slice_1 [ create_bd_cell -type ip -vlnv pavel-demin:user:port_slicer:1.0 slice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {160} \
 ] $slice_1

  # Create instance: slice_2, and set properties
  set slice_2 [ create_bd_cell -type ip -vlnv pavel-demin:user:port_slicer:1.0 slice_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {16} \
   CONFIG.DIN_WIDTH {160} \
 ] $slice_2

  # Create instance: slice_3, and set properties
  set slice_3 [ create_bd_cell -type ip -vlnv pavel-demin:user:port_slicer:1.0 slice_3 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {63} \
   CONFIG.DIN_TO {32} \
   CONFIG.DIN_WIDTH {160} \
 ] $slice_3

  # Create instance: slice_4, and set properties
  set slice_4 [ create_bd_cell -type ip -vlnv pavel-demin:user:port_slicer:1.0 slice_4 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {95} \
   CONFIG.DIN_TO {64} \
   CONFIG.DIN_WIDTH {160} \
 ] $slice_4

  # Create instance: slice_5, and set properties
  set slice_5 [ create_bd_cell -type ip -vlnv pavel-demin:user:port_slicer:1.0 slice_5 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {127} \
   CONFIG.DIN_TO {96} \
   CONFIG.DIN_WIDTH {160} \
 ] $slice_5

  # Create instance: slice_6, and set properties
  set slice_6 [ create_bd_cell -type ip -vlnv pavel-demin:user:port_slicer:1.0 slice_6 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {143} \
   CONFIG.DIN_TO {128} \
   CONFIG.DIN_WIDTH {160} \
 ] $slice_6

  # Create instance: slice_7, and set properties
  set slice_7 [ create_bd_cell -type ip -vlnv pavel-demin:user:port_slicer:1.0 slice_7 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {159} \
   CONFIG.DIN_TO {144} \
   CONFIG.DIN_WIDTH {160} \
 ] $slice_7

  # Create instance: status_concat_1, and set properties
  set status_concat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 status_concat_1 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {32} \
   CONFIG.IN1_WIDTH {64} \
   CONFIG.IN2_WIDTH {32} \
   CONFIG.NUM_PORTS {3} \
 ] $status_concat_1

  # Create instance: sts_0, and set properties
  set sts_0 [ create_bd_cell -type ip -vlnv pavel-demin:user:axi_sts_register:1.0 sts_0 ]
  set_property -dict [ list \
   CONFIG.AXI_ADDR_WIDTH {32} \
   CONFIG.AXI_DATA_WIDTH {32} \
   CONFIG.STS_DATA_WIDTH {128} \
 ] $sts_0

  # Create instance: writer_0, and set properties
  set writer_0 [ create_bd_cell -type ip -vlnv pavel-demin:user:axis_ram_writer:1.0 writer_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {16} \
   CONFIG.AXI_ID_WIDTH {3} \
 ] $writer_0

  # Create interface connections
  connect_bd_intf_net -intf_net AXI4_multi_adder_0_M_AXIS [get_bd_intf_pins AXI4_multi_adder_0/M_AXIS] [get_bd_intf_pins ch1_output_dac_mem_split/S_AXIS]
  connect_bd_intf_net -intf_net a_const_16Q16_M_AXIS [get_bd_intf_pins AXI4_multi_adder_0/S_AXIS_MULT] [get_bd_intf_pins a_const_16Q16/M_AXIS]
  connect_bd_intf_net -intf_net adc_0_M_AXIS [get_bd_intf_pins adc_0/M_AXIS] [get_bd_intf_pins channel_split/S_AXIS]
  connect_bd_intf_net -intf_net axis_combiner_0_M_AXIS [get_bd_intf_pins axis_combiner_0/M_AXIS] [get_bd_intf_pins conv_0/S_AXIS]
  connect_bd_intf_net -intf_net axis_combiner_1_M_AXIS [get_bd_intf_pins dac_0/S_AXIS] [get_bd_intf_pins output_combiner/M_AXIS]
  connect_bd_intf_net -intf_net b_const_16b_M_AXIS [get_bd_intf_pins AXI4_multi_adder_0/S_AXIS_ADD] [get_bd_intf_pins b_const_16b/M_AXIS]
  connect_bd_intf_net -intf_net ch1_mem_fb_split_M00_AXIS [get_bd_intf_pins ch1_mem_fb_split/M00_AXIS] [get_bd_intf_pins cic_0/S_AXIS_DATA]
  connect_bd_intf_net -intf_net ch1_mem_fb_split_M01_AXIS [get_bd_intf_pins AXI4_multi_adder_0/S_AXIS_ADC] [get_bd_intf_pins ch1_mem_fb_split/M01_AXIS]
  connect_bd_intf_net -intf_net ch1_output_dac_mem_split1_M00_AXIS [get_bd_intf_pins CIC_config_replicator/M00_AXIS] [get_bd_intf_pins cic_0/S_AXIS_CONFIG]
  connect_bd_intf_net -intf_net ch1_output_dac_mem_split1_M01_AXIS [get_bd_intf_pins CIC_config_replicator/M01_AXIS] [get_bd_intf_pins cic_1/S_AXIS_CONFIG]
  connect_bd_intf_net -intf_net ch1_output_dac_mem_split_M00_AXIS [get_bd_intf_pins ch1_output_dac_mem_split/M00_AXIS] [get_bd_intf_pins output_binary_conver_0/S_AXIS]
  connect_bd_intf_net -intf_net ch1_output_dac_mem_split_M01_AXIS [get_bd_intf_pins ch1_output_dac_mem_split/M01_AXIS] [get_bd_intf_pins output_combiner/S00_AXIS]
  connect_bd_intf_net -intf_net channel_split_M00_AXIS [get_bd_intf_pins ch1_mem_fb_split/S_AXIS] [get_bd_intf_pins channel_split/M00_AXIS]
  connect_bd_intf_net -intf_net cic_0_M_AXIS_DATA [get_bd_intf_pins axis_combiner_0/S00_AXIS] [get_bd_intf_pins cic_0/M_AXIS_DATA]
  connect_bd_intf_net -intf_net cic_1_M_AXIS_DATA [get_bd_intf_pins axis_combiner_0/S01_AXIS] [get_bd_intf_pins cic_1/M_AXIS_DATA]
  connect_bd_intf_net -intf_net conv_0_M_AXIS [get_bd_intf_pins conv_0/M_AXIS] [get_bd_intf_pins writer_0/S_AXIS]
  connect_bd_intf_net -intf_net output_binary_conver_0_M_AXIS [get_bd_intf_pins cic_1/S_AXIS_DATA] [get_bd_intf_pins output_binary_conver_0/M_AXIS]
  connect_bd_intf_net -intf_net phase_0_M_AXIS [get_bd_intf_pins dds_0/S_AXIS_PHASE] [get_bd_intf_pins phase_0/M_AXIS]
  connect_bd_intf_net -intf_net phase_1_M_AXIS [get_bd_intf_pins dds_stream/M_AXIS] [get_bd_intf_pins output_combiner/S01_AXIS]
  connect_bd_intf_net -intf_net ps_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins ps_0/DDR]
  connect_bd_intf_net -intf_net ps_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins ps_0/FIXED_IO]
  connect_bd_intf_net -intf_net ps_0_M_AXI_GP0 [get_bd_intf_pins ps_0/M_AXI_GP0] [get_bd_intf_pins ps_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps_0_axi_periph_M00_AXI [get_bd_intf_pins ps_0_axi_periph/M00_AXI] [get_bd_intf_pins sts_0/S_AXI]
  connect_bd_intf_net -intf_net ps_0_axi_periph_M01_AXI [get_bd_intf_pins cfg_0/S_AXI] [get_bd_intf_pins ps_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net rate_0_M_AXIS [get_bd_intf_pins CIC_config_replicator/S_AXIS] [get_bd_intf_pins rate_0/M_AXIS]
  connect_bd_intf_net -intf_net writer_0_M_AXI [get_bd_intf_pins ps_0/S_AXI_ACP] [get_bd_intf_pins writer_0/M_AXI]

  # Create port connections
  connect_bd_net -net adc_0_adc_csn [get_bd_ports adc_csn_o] [get_bd_pins adc_0/adc_csn]
  connect_bd_net -net adc_clk_n_i_1 [get_bd_ports adc_clk_n_i] [get_bd_pins pll_0/clk_in1_n]
  connect_bd_net -net adc_clk_p_i_1 [get_bd_ports adc_clk_p_i] [get_bd_pins pll_0/clk_in1_p]
  connect_bd_net -net adc_dat_a_i_1 [get_bd_ports adc_dat_a_i] [get_bd_pins adc_0/adc_dat_a]
  connect_bd_net -net adc_dat_b_i_1 [get_bd_ports adc_dat_b_i] [get_bd_pins adc_0/adc_dat_b]
  connect_bd_net -net cfg_0_cfg_data [get_bd_pins cfg_0/cfg_data] [get_bd_pins slice_0/din] [get_bd_pins slice_1/din] [get_bd_pins slice_2/din] [get_bd_pins slice_3/din] [get_bd_pins slice_4/din] [get_bd_pins slice_5/din] [get_bd_pins slice_6/din] [get_bd_pins slice_7/din]
  connect_bd_net -net concat_1_dout [get_bd_pins status_concat_1/dout] [get_bd_pins sts_0/sts_data]
  connect_bd_net -net const_0_dout [get_bd_pins const_0/dout] [get_bd_pins rst_0/ext_reset_in] [get_bd_pins status_concat_1/In0]
  connect_bd_net -net const_1_dout [get_bd_pins AXI4_multi_adder_0/sel] [get_bd_pins const_1/dout]
  connect_bd_net -net dac_0_dac_clk [get_bd_ports dac_clk_o] [get_bd_pins dac_0/dac_clk]
  connect_bd_net -net dac_0_dac_dat [get_bd_ports dac_dat_o] [get_bd_pins dac_0/dac_dat]
  connect_bd_net -net dac_0_dac_rst [get_bd_ports dac_rst_o] [get_bd_pins dac_0/dac_rst]
  connect_bd_net -net dac_0_dac_sel [get_bd_ports dac_sel_o] [get_bd_pins dac_0/dac_sel]
  connect_bd_net -net dac_0_dac_wrt [get_bd_ports dac_wrt_o] [get_bd_pins dac_0/dac_wrt]
  connect_bd_net -net dds_0_m_axis_data_tdata [get_bd_pins dds_0/m_axis_data_tdata] [get_bd_pins mult_0/A]
  connect_bd_net -net dna_0_dna_data [get_bd_pins dna_0/dna_data] [get_bd_pins status_concat_1/In1]
  connect_bd_net -net mult_0_P [get_bd_pins dds_stream/cfg_data] [get_bd_pins mult_0/P]
  connect_bd_net -net pll_0_clk_out1 [get_bd_pins AXI4_multi_adder_0/aclk] [get_bd_pins CIC_config_replicator/aclk] [get_bd_pins a_const_16Q16/aclk] [get_bd_pins adc_0/aclk] [get_bd_pins axis_combiner_0/aclk] [get_bd_pins b_const_16b/aclk] [get_bd_pins cfg_0/aclk] [get_bd_pins ch1_mem_fb_split/aclk] [get_bd_pins ch1_output_dac_mem_split/aclk] [get_bd_pins channel_split/aclk] [get_bd_pins cic_0/aclk] [get_bd_pins cic_1/aclk] [get_bd_pins conv_0/aclk] [get_bd_pins dac_0/aclk] [get_bd_pins dds_0/aclk] [get_bd_pins dds_stream/aclk] [get_bd_pins dna_0/aclk] [get_bd_pins mult_0/CLK] [get_bd_pins output_binary_conver_0/aclk] [get_bd_pins output_combiner/aclk] [get_bd_pins phase_0/aclk] [get_bd_pins pll_0/clk_out1] [get_bd_pins ps_0/M_AXI_GP0_ACLK] [get_bd_pins ps_0/S_AXI_ACP_ACLK] [get_bd_pins ps_0_axi_periph/ACLK] [get_bd_pins ps_0_axi_periph/M00_ACLK] [get_bd_pins ps_0_axi_periph/M01_ACLK] [get_bd_pins ps_0_axi_periph/S00_ACLK] [get_bd_pins rate_0/aclk] [get_bd_pins rst_0/slowest_sync_clk] [get_bd_pins sts_0/aclk] [get_bd_pins writer_0/aclk]
  connect_bd_net -net pll_0_clk_out2 [get_bd_pins dac_0/ddr_clk] [get_bd_pins pll_0/clk_out2]
  connect_bd_net -net pll_0_clk_out3 [get_bd_pins dac_0/wrt_clk] [get_bd_pins pll_0/clk_out3]
  connect_bd_net -net pll_0_locked [get_bd_pins dac_0/locked] [get_bd_pins pll_0/locked] [get_bd_pins rst_0/dcm_locked]
  connect_bd_net -net rst_0_peripheral_aresetn [get_bd_pins CIC_config_replicator/aresetn] [get_bd_pins axis_combiner_0/aresetn] [get_bd_pins cfg_0/aresetn] [get_bd_pins ch1_mem_fb_split/aresetn] [get_bd_pins ch1_output_dac_mem_split/aresetn] [get_bd_pins channel_split/aresetn] [get_bd_pins cic_0/aresetn] [get_bd_pins cic_1/aresetn] [get_bd_pins dna_0/aresetn] [get_bd_pins output_combiner/aresetn] [get_bd_pins ps_0_axi_periph/ARESETN] [get_bd_pins ps_0_axi_periph/M00_ARESETN] [get_bd_pins ps_0_axi_periph/M01_ARESETN] [get_bd_pins ps_0_axi_periph/S00_ARESETN] [get_bd_pins rate_0/aresetn] [get_bd_pins rst_0/peripheral_aresetn] [get_bd_pins sts_0/aresetn]
  connect_bd_net -net slice_0_dout [get_bd_pins conv_0/aresetn] [get_bd_pins slice_0/dout]
  connect_bd_net -net slice_1_dout [get_bd_pins slice_1/dout] [get_bd_pins writer_0/aresetn]
  connect_bd_net -net slice_2_dout [get_bd_pins rate_0/cfg_data] [get_bd_pins slice_2/dout]
  connect_bd_net -net slice_3_dout [get_bd_pins slice_3/dout] [get_bd_pins writer_0/cfg_data]
  connect_bd_net -net slice_4_dout [get_bd_pins phase_0/cfg_data] [get_bd_pins slice_4/dout]
  connect_bd_net -net slice_5_dout [get_bd_pins a_const_16Q16/cfg_data] [get_bd_pins slice_5/dout]
  connect_bd_net -net slice_6_dout [get_bd_pins mult_0/B] [get_bd_pins slice_6/dout]
  connect_bd_net -net slice_7_dout [get_bd_pins b_const_16b/cfg_data] [get_bd_pins slice_7/dout]
  connect_bd_net -net writer_0_sts_data [get_bd_pins status_concat_1/In2] [get_bd_pins writer_0/sts_data]

  # Create address segments
  assign_bd_address -offset 0x40001000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps_0/Data] [get_bd_addr_segs cfg_0/s_axi/reg0] -force
  assign_bd_address -offset 0x40000000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps_0/Data] [get_bd_addr_segs sts_0/s_axi/reg0] -force
  assign_bd_address -offset 0x00000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces writer_0/M_AXI] [get_bd_addr_segs ps_0/S_AXI_ACP/ACP_DDR_LOWOCM] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


