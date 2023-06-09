
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
# gng, feedback_combined, CBC, multiplier_breakout, multiplier_breakout

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

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: CH2
proc create_hier_cell_CH2 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_CH2() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_ADC1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_ADC2

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_CFG

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_RNG2


  # Create pins
  create_bd_pin -dir I -from 3 -to 0 CH2_sel
  create_bd_pin -dir O -from 31 -to 0 OFFSET
  create_bd_pin -dir O -from 55 -to 0 -type data P
  create_bd_pin -dir O -from 42 -to 0 -type data P1
  create_bd_pin -dir O -from 63 -to 0 -type data P2
  create_bd_pin -dir O -from 55 -to 0 -type data P3
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I input_select1
  create_bd_pin -dir I trig_in

  # Create instance: CH2_mult1, and set properties
  set CH2_mult1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 CH2_mult1 ]
  set_property -dict [ list \
   CONFIG.Multiplier_Construction {Use_Mults} \
   CONFIG.OutputWidthHigh {63} \
   CONFIG.OutputWidthLow {8} \
   CONFIG.PipeStages {4} \
   CONFIG.PortAType {Signed} \
   CONFIG.PortAWidth {32} \
   CONFIG.PortBType {Signed} \
   CONFIG.PortBWidth {32} \
   CONFIG.Use_Custom_Output_Width {true} \
 ] $CH2_mult1

  # Create instance: CH2_mult2, and set properties
  set CH2_mult2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 CH2_mult2 ]
  set_property -dict [ list \
   CONFIG.Multiplier_Construction {Use_Mults} \
   CONFIG.OutputWidthHigh {63} \
   CONFIG.OutputWidthLow {8} \
   CONFIG.PipeStages {4} \
   CONFIG.PortAType {Signed} \
   CONFIG.PortAWidth {32} \
   CONFIG.PortBType {Signed} \
   CONFIG.PortBWidth {32} \
   CONFIG.Use_Custom_Output_Width {true} \
 ] $CH2_mult2

  # Create instance: CH2_mult3, and set properties
  set CH2_mult3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 CH2_mult3 ]
  set_property -dict [ list \
   CONFIG.Multiplier_Construction {Use_Mults} \
   CONFIG.OutputWidthHigh {63} \
   CONFIG.OutputWidthLow {21} \
   CONFIG.PipeStages {4} \
   CONFIG.PortAType {Signed} \
   CONFIG.PortAWidth {32} \
   CONFIG.PortBType {Signed} \
   CONFIG.PortBWidth {48} \
   CONFIG.Use_Custom_Output_Width {true} \
 ] $CH2_mult3

  # Create instance: CH2_mult4, and set properties
  set CH2_mult4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 CH2_mult4 ]
  set_property -dict [ list \
   CONFIG.Multiplier_Construction {Use_Mults} \
   CONFIG.OutputWidthHigh {63} \
   CONFIG.OutputWidthLow {0} \
   CONFIG.PipeStages {4} \
   CONFIG.PortAType {Signed} \
   CONFIG.PortAWidth {32} \
   CONFIG.PortBType {Signed} \
   CONFIG.PortBWidth {64} \
   CONFIG.Use_Custom_Output_Width {true} \
 ] $CH2_mult4

  # Create instance: CH2_multiplier_breakout, and set properties
  set block_name multiplier_breakout
  set block_cell_name CH2_multiplier_breakout
  if { [catch {set CH2_multiplier_breakout [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $CH2_multiplier_breakout eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXIS_RNG2] [get_bd_intf_pins CH2_multiplier_breakout/S_AXIS_RNG]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins S_AXIS_ADC1] [get_bd_intf_pins CH2_multiplier_breakout/S_AXIS_ADC1]
  connect_bd_intf_net -intf_net Conn7 [get_bd_intf_pins S_AXIS_ADC2] [get_bd_intf_pins CH2_multiplier_breakout/S_AXIS_ADC2]
  connect_bd_intf_net -intf_net S_AXIS_CFG_1 [get_bd_intf_pins S_AXIS_CFG] [get_bd_intf_pins CH2_multiplier_breakout/S_AXIS_CFG]

  # Create port connections
  connect_bd_net -net CH2_mult1_P [get_bd_pins P3] [get_bd_pins CH2_mult1/P]
  connect_bd_net -net CH2_mult2_P [get_bd_pins P] [get_bd_pins CH2_mult2/P]
  connect_bd_net -net CH2_mult3_P [get_bd_pins P1] [get_bd_pins CH2_mult3/P]
  connect_bd_net -net CH2_mult4_P [get_bd_pins P2] [get_bd_pins CH2_mult4/P]
  connect_bd_net -net CH2_multiplier_breakout_LONG_7F [get_bd_pins CH2_mult4/B] [get_bd_pins CH2_multiplier_breakout/LONG_7F]
  connect_bd_net -net CH2_multiplier_breakout_OFFSET [get_bd_pins OFFSET] [get_bd_pins CH2_multiplier_breakout/OFFSET]
  connect_bd_net -net CH2_multiplier_breakout_OP1 [get_bd_pins CH2_mult1/A] [get_bd_pins CH2_multiplier_breakout/OP1]
  connect_bd_net -net CH2_multiplier_breakout_OP2 [get_bd_pins CH2_mult1/B] [get_bd_pins CH2_multiplier_breakout/OP2]
  connect_bd_net -net CH2_multiplier_breakout_OP3 [get_bd_pins CH2_mult2/A] [get_bd_pins CH2_multiplier_breakout/OP3]
  connect_bd_net -net CH2_multiplier_breakout_OP4 [get_bd_pins CH2_mult2/B] [get_bd_pins CH2_multiplier_breakout/OP4]
  connect_bd_net -net CH2_multiplier_breakout_OP5 [get_bd_pins CH2_mult3/A] [get_bd_pins CH2_multiplier_breakout/OP5]
  connect_bd_net -net CH2_multiplier_breakout_OP6 [get_bd_pins CH2_mult3/B] [get_bd_pins CH2_multiplier_breakout/OP6]
  connect_bd_net -net CH2_multiplier_breakout_OP7 [get_bd_pins CH2_mult4/A] [get_bd_pins CH2_multiplier_breakout/OP7]
  connect_bd_net -net Net1 [get_bd_pins CH2_sel] [get_bd_pins CH2_multiplier_breakout/sel]
  connect_bd_net -net input_select1_1 [get_bd_pins input_select1] [get_bd_pins CH2_multiplier_breakout/input_select]
  connect_bd_net -net pll_0_clk_out1 [get_bd_pins aclk] [get_bd_pins CH2_mult1/CLK] [get_bd_pins CH2_mult2/CLK] [get_bd_pins CH2_mult3/CLK] [get_bd_pins CH2_mult4/CLK] [get_bd_pins CH2_multiplier_breakout/aclk]
  connect_bd_net -net trig_in_1 [get_bd_pins trig_in] [get_bd_pins CH2_multiplier_breakout/trigger_in]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: CH1
proc create_hier_cell_CH1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_CH1() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_ADC1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_ADC2

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_CFG

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_RNG


  # Create pins
  create_bd_pin -dir O -from 31 -to 0 OFFSET
  create_bd_pin -dir O -from 55 -to 0 -type data P
  create_bd_pin -dir O -from 55 -to 0 -type data P1
  create_bd_pin -dir O -from 42 -to 0 -type data P2
  create_bd_pin -dir O -from 63 -to 0 -type data P3
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I input_select
  create_bd_pin -dir I -from 3 -to 0 sel
  create_bd_pin -dir I trig_in
  create_bd_pin -dir O trigger_out

  # Create instance: CH1_mult1, and set properties
  set CH1_mult1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 CH1_mult1 ]
  set_property -dict [ list \
   CONFIG.Multiplier_Construction {Use_Mults} \
   CONFIG.OutputWidthHigh {63} \
   CONFIG.OutputWidthLow {8} \
   CONFIG.PipeStages {4} \
   CONFIG.PortAType {Signed} \
   CONFIG.PortAWidth {32} \
   CONFIG.PortBType {Signed} \
   CONFIG.PortBWidth {32} \
   CONFIG.Use_Custom_Output_Width {true} \
 ] $CH1_mult1

  # Create instance: CH1_mult2, and set properties
  set CH1_mult2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 CH1_mult2 ]
  set_property -dict [ list \
   CONFIG.Multiplier_Construction {Use_Mults} \
   CONFIG.OutputWidthHigh {63} \
   CONFIG.OutputWidthLow {8} \
   CONFIG.PipeStages {4} \
   CONFIG.PortAType {Signed} \
   CONFIG.PortAWidth {32} \
   CONFIG.PortBType {Signed} \
   CONFIG.PortBWidth {32} \
   CONFIG.Use_Custom_Output_Width {true} \
 ] $CH1_mult2

  # Create instance: CH1_mult3, and set properties
  set CH1_mult3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 CH1_mult3 ]
  set_property -dict [ list \
   CONFIG.Multiplier_Construction {Use_Mults} \
   CONFIG.OutputWidthHigh {63} \
   CONFIG.OutputWidthLow {21} \
   CONFIG.PipeStages {4} \
   CONFIG.PortAType {Signed} \
   CONFIG.PortAWidth {32} \
   CONFIG.PortBType {Signed} \
   CONFIG.PortBWidth {48} \
   CONFIG.Use_Custom_Output_Width {true} \
 ] $CH1_mult3

  # Create instance: CH1_mult4, and set properties
  set CH1_mult4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 CH1_mult4 ]
  set_property -dict [ list \
   CONFIG.Multiplier_Construction {Use_Mults} \
   CONFIG.OutputWidthHigh {63} \
   CONFIG.OutputWidthLow {0} \
   CONFIG.PipeStages {4} \
   CONFIG.PortAType {Signed} \
   CONFIG.PortAWidth {32} \
   CONFIG.PortBType {Signed} \
   CONFIG.PortBWidth {64} \
   CONFIG.Use_Custom_Output_Width {true} \
 ] $CH1_mult4

  # Create instance: CH1_multiplier_breakout, and set properties
  set block_name multiplier_breakout
  set block_cell_name CH1_multiplier_breakout
  if { [catch {set CH1_multiplier_breakout [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $CH1_multiplier_breakout eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins S_AXIS_RNG] [get_bd_intf_pins CH1_multiplier_breakout/S_AXIS_RNG]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins S_AXIS_ADC1] [get_bd_intf_pins CH1_multiplier_breakout/S_AXIS_ADC1]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins S_AXIS_ADC2] [get_bd_intf_pins CH1_multiplier_breakout/S_AXIS_ADC2]
  connect_bd_intf_net -intf_net S_AXIS_CFG1_1 [get_bd_intf_pins S_AXIS_CFG] [get_bd_intf_pins CH1_multiplier_breakout/S_AXIS_CFG]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins sel] [get_bd_pins CH1_multiplier_breakout/sel]
  connect_bd_net -net input_select_1 [get_bd_pins input_select] [get_bd_pins CH1_multiplier_breakout/input_select]
  connect_bd_net -net mult_gen_0_P [get_bd_pins P] [get_bd_pins CH1_mult1/P]
  connect_bd_net -net mult_gen_1_P [get_bd_pins P1] [get_bd_pins CH1_mult2/P]
  connect_bd_net -net multiplier_breakout_0_LONG_7F [get_bd_pins CH1_mult4/B] [get_bd_pins CH1_multiplier_breakout/LONG_7F]
  connect_bd_net -net multiplier_breakout_0_OFFSET [get_bd_pins OFFSET] [get_bd_pins CH1_multiplier_breakout/OFFSET]
  connect_bd_net -net multiplier_breakout_0_OP1 [get_bd_pins CH1_mult1/A] [get_bd_pins CH1_multiplier_breakout/OP1]
  connect_bd_net -net multiplier_breakout_0_OP2 [get_bd_pins CH1_mult1/B] [get_bd_pins CH1_multiplier_breakout/OP2]
  connect_bd_net -net multiplier_breakout_0_OP3 [get_bd_pins CH1_mult2/A] [get_bd_pins CH1_multiplier_breakout/OP3]
  connect_bd_net -net multiplier_breakout_0_OP4 [get_bd_pins CH1_mult2/B] [get_bd_pins CH1_multiplier_breakout/OP4]
  connect_bd_net -net multiplier_breakout_0_OP5 [get_bd_pins CH1_mult3/A] [get_bd_pins CH1_multiplier_breakout/OP5]
  connect_bd_net -net multiplier_breakout_0_OP6 [get_bd_pins CH1_mult3/B] [get_bd_pins CH1_multiplier_breakout/OP6]
  connect_bd_net -net multiplier_breakout_0_OP7 [get_bd_pins CH1_mult4/A] [get_bd_pins CH1_multiplier_breakout/OP7]
  connect_bd_net -net multiplier_breakout_0_trigger_out [get_bd_pins trigger_out] [get_bd_pins CH1_multiplier_breakout/trigger_out]
  connect_bd_net -net pll_0_clk_out1 [get_bd_pins aclk] [get_bd_pins CH1_mult1/CLK] [get_bd_pins CH1_mult2/CLK] [get_bd_pins CH1_mult3/CLK] [get_bd_pins CH1_mult4/CLK] [get_bd_pins CH1_multiplier_breakout/aclk]
  connect_bd_net -net premultiplier_P1 [get_bd_pins P2] [get_bd_pins CH1_mult3/P]
  connect_bd_net -net premultiplier_P2 [get_bd_pins P3] [get_bd_pins CH1_mult4/P]
  connect_bd_net -net trig_in_1 [get_bd_pins trig_in] [get_bd_pins CH1_multiplier_breakout/trigger_in]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: CBC
proc create_hier_cell_CBC { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_CBC() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_ADC1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_ADC2

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_CFG


  # Create pins
  create_bd_pin -dir O -from 31 -to 0 OFFSET
  create_bd_pin -dir O -from 55 -to 0 -type data P
  create_bd_pin -dir O -from 42 -to 0 -type data P1
  create_bd_pin -dir O -from 42 -to 0 -type data P2
  create_bd_pin -dir O -from 55 -to 0 -type data P3
  create_bd_pin -dir O -from 55 -to 0 -type data P4
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I displacement_int_ext
  create_bd_pin -dir I input_select2
  create_bd_pin -dir I polynomial_target
  create_bd_pin -dir I -from 3 -to 0 sel
  create_bd_pin -dir I trig_in
  create_bd_pin -dir O trigger_out
  create_bd_pin -dir I velocity_int_ext

  # Create instance: CBC_0, and set properties
  set block_name CBC
  set block_cell_name CBC_0
  if { [catch {set CBC_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $CBC_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: CBC_Mult1, and set properties
  set CBC_Mult1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 CBC_Mult1 ]
  set_property -dict [ list \
   CONFIG.Multiplier_Construction {Use_Mults} \
   CONFIG.OutputWidthHigh {63} \
   CONFIG.OutputWidthLow {8} \
   CONFIG.PipeStages {4} \
   CONFIG.PortAType {Signed} \
   CONFIG.PortAWidth {32} \
   CONFIG.PortBType {Signed} \
   CONFIG.PortBWidth {16} \
   CONFIG.Use_Custom_Output_Width {true} \
 ] $CBC_Mult1

  # Create instance: CBC_Mult3, and set properties
  set CBC_Mult3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 CBC_Mult3 ]
  set_property -dict [ list \
   CONFIG.Multiplier_Construction {Use_Mults} \
   CONFIG.OutputWidthHigh {63} \
   CONFIG.OutputWidthLow {21} \
   CONFIG.PipeStages {4} \
   CONFIG.PortAType {Signed} \
   CONFIG.PortAWidth {31} \
   CONFIG.PortBType {Signed} \
   CONFIG.PortBWidth {48} \
   CONFIG.Use_Custom_Output_Width {true} \
 ] $CBC_Mult3

  # Create instance: CBC_mult2, and set properties
  set CBC_mult2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 CBC_mult2 ]
  set_property -dict [ list \
   CONFIG.Multiplier_Construction {Use_Mults} \
   CONFIG.OutputWidthHigh {63} \
   CONFIG.OutputWidthLow {21} \
   CONFIG.PipeStages {3} \
   CONFIG.PortAType {Signed} \
   CONFIG.PortAWidth {32} \
   CONFIG.PortBType {Signed} \
   CONFIG.PortBWidth {15} \
   CONFIG.Use_Custom_Output_Width {true} \
 ] $CBC_mult2

  # Create instance: CBC_mult4, and set properties
  set CBC_mult4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 CBC_mult4 ]
  set_property -dict [ list \
   CONFIG.Multiplier_Construction {Use_Mults} \
   CONFIG.OutputWidthHigh {63} \
   CONFIG.OutputWidthLow {8} \
   CONFIG.PipeStages {4} \
   CONFIG.PortAType {Signed} \
   CONFIG.PortAWidth {32} \
   CONFIG.PortBType {Signed} \
   CONFIG.PortBWidth {32} \
   CONFIG.Use_Custom_Output_Width {true} \
 ] $CBC_mult4

  # Create instance: CBC_mult5, and set properties
  set CBC_mult5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 CBC_mult5 ]
  set_property -dict [ list \
   CONFIG.Multiplier_Construction {Use_Mults} \
   CONFIG.OutputWidthHigh {63} \
   CONFIG.OutputWidthLow {8} \
   CONFIG.PipeStages {4} \
   CONFIG.PortAType {Signed} \
   CONFIG.PortAWidth {32} \
   CONFIG.PortBType {Signed} \
   CONFIG.PortBWidth {16} \
   CONFIG.Use_Custom_Output_Width {true} \
 ] $CBC_mult5

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXIS_ADC1] [get_bd_intf_pins CBC_0/S_AXIS_ADC1]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins S_AXIS_ADC2] [get_bd_intf_pins CBC_0/S_AXIS_ADC2]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins S_AXIS_CFG] [get_bd_intf_pins CBC_0/S_AXIS_CFG]

  # Create port connections
  connect_bd_net -net CBC_0_OFFSET [get_bd_pins OFFSET] [get_bd_pins CBC_0/OFFSET]
  connect_bd_net -net CBC_0_OP1 [get_bd_pins CBC_0/OP1] [get_bd_pins CBC_Mult1/A]
  connect_bd_net -net CBC_0_OP2 [get_bd_pins CBC_0/OP2] [get_bd_pins CBC_Mult1/B]
  connect_bd_net -net CBC_0_OP3 [get_bd_pins CBC_0/OP3] [get_bd_pins CBC_mult2/A]
  connect_bd_net -net CBC_0_OP4 [get_bd_pins CBC_0/OP4] [get_bd_pins CBC_mult2/B]
  connect_bd_net -net CBC_0_OP5 [get_bd_pins CBC_0/OP5] [get_bd_pins CBC_Mult3/A]
  connect_bd_net -net CBC_0_OP6 [get_bd_pins CBC_0/OP6] [get_bd_pins CBC_Mult3/B]
  connect_bd_net -net CBC_0_OP7 [get_bd_pins CBC_0/OP7] [get_bd_pins CBC_mult4/A]
  connect_bd_net -net CBC_0_OP8 [get_bd_pins CBC_0/OP8] [get_bd_pins CBC_mult4/B]
  connect_bd_net -net CBC_0_OP9 [get_bd_pins CBC_0/OP9] [get_bd_pins CBC_mult5/A]
  connect_bd_net -net CBC_0_OP10 [get_bd_pins CBC_0/OP10] [get_bd_pins CBC_mult5/B]
  connect_bd_net -net CBC_0_trigger_out [get_bd_pins trigger_out] [get_bd_pins CBC_0/trigger_out]
  connect_bd_net -net CBC_Mult1_P [get_bd_pins P] [get_bd_pins CBC_Mult1/P]
  connect_bd_net -net CBC_Mult3_P [get_bd_pins P2] [get_bd_pins CBC_Mult3/P]
  connect_bd_net -net CBC_mult2_P [get_bd_pins P1] [get_bd_pins CBC_mult2/P]
  connect_bd_net -net CBC_mult4_P [get_bd_pins P3] [get_bd_pins CBC_mult4/P]
  connect_bd_net -net CBC_mult5_P [get_bd_pins P4] [get_bd_pins CBC_mult5/P]
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins CBC_0/aclk] [get_bd_pins CBC_Mult1/CLK] [get_bd_pins CBC_Mult3/CLK] [get_bd_pins CBC_mult2/CLK] [get_bd_pins CBC_mult4/CLK] [get_bd_pins CBC_mult5/CLK]
  connect_bd_net -net displacement_int_ext_1 [get_bd_pins displacement_int_ext] [get_bd_pins CBC_0/displacement_int_ext]
  connect_bd_net -net input_select2_1 [get_bd_pins input_select2] [get_bd_pins CBC_0/input_select]
  connect_bd_net -net polynomial_target_1 [get_bd_pins polynomial_target] [get_bd_pins CBC_0/polynomial_target]
  connect_bd_net -net sel_1 [get_bd_pins sel] [get_bd_pins CBC_0/sel]
  connect_bd_net -net trig_in_1 [get_bd_pins trig_in] [get_bd_pins CBC_0/trigger_in]
  connect_bd_net -net velocity_int_ext_1 [get_bd_pins velocity_int_ext] [get_bd_pins CBC_0/velocity_int_ext]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: system_params
proc create_hier_cell_system_params { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_system_params() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 447 -to 0 Din1
  create_bd_pin -dir O -from 0 -to 0 Dout8
  create_bd_pin -dir O -from 31 -to 0 dout1
  create_bd_pin -dir O -from 0 -to 0 dout4
  create_bd_pin -dir O -from 0 -to 0 dout5
  create_bd_pin -dir O -from 0 -to 0 dout6

  # Create instance: RAM_addres, and set properties
  set RAM_addres [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 RAM_addres ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {63} \
   CONFIG.DIN_TO {32} \
   CONFIG.DIN_WIDTH {448} \
   CONFIG.DOUT_WIDTH {32} \
 ] $RAM_addres

  # Create instance: continuous_output, and set properties
  set continuous_output [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 continuous_output ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {3} \
   CONFIG.DIN_WIDTH {448} \
   CONFIG.DOUT_WIDTH {1} \
 ] $continuous_output

  # Create instance: feedback_trigger, and set properties
  set feedback_trigger [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 feedback_trigger ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {448} \
   CONFIG.DOUT_WIDTH {1} \
 ] $feedback_trigger

  # Create instance: pre_memory_reset, and set properties
  set pre_memory_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 pre_memory_reset ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {448} \
   CONFIG.DOUT_WIDTH {1} \
 ] $pre_memory_reset

  # Create instance: ram_writer_reset, and set properties
  set ram_writer_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 ram_writer_reset ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {448} \
   CONFIG.DOUT_WIDTH {1} \
 ] $ram_writer_reset

  # Create port connections
  connect_bd_net -net Din1_1 [get_bd_pins Din1] [get_bd_pins RAM_addres/Din] [get_bd_pins continuous_output/Din] [get_bd_pins feedback_trigger/Din] [get_bd_pins pre_memory_reset/Din] [get_bd_pins ram_writer_reset/Din]
  connect_bd_net -net RAM_addres_Dout [get_bd_pins dout1] [get_bd_pins RAM_addres/Dout]
  connect_bd_net -net continuous_output_Dout [get_bd_pins Dout8] [get_bd_pins continuous_output/Dout]
  connect_bd_net -net feedback_trigger_Dout [get_bd_pins dout4] [get_bd_pins feedback_trigger/Dout]
  connect_bd_net -net pre_memory_reset_Dout [get_bd_pins dout6] [get_bd_pins pre_memory_reset/Dout]
  connect_bd_net -net ram_writer_reset_Dout [get_bd_pins dout5] [get_bd_pins ram_writer_reset/Dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: CH2_config
proc create_hier_cell_CH2_config { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_CH2_config() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS2


  # Create pins
  create_bd_pin -dir I -from 447 -to 0 Din1
  create_bd_pin -dir O -from 3 -to 0 Dout9
  create_bd_pin -dir O -from 0 -to 0 Dout10
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -from 191 -to 0 cfg_data

  # Create instance: CH2_Feedback_Params_2, and set properties
  set CH2_Feedback_Params_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:axis_constant:1.0 CH2_Feedback_Params_2 ]
  set_property -dict [ list \
   CONFIG.AXIS_TDATA_WIDTH {192} \
 ] $CH2_Feedback_Params_2

  # Create instance: Feedback_State_1, and set properties
  set Feedback_State_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 Feedback_State_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {20} \
   CONFIG.DIN_TO {17} \
   CONFIG.DIN_WIDTH {448} \
   CONFIG.DOUT_WIDTH {4} \
 ] $Feedback_State_1

  # Create instance: input_select_2, and set properties
  set input_select_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 input_select_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {16} \
   CONFIG.DIN_TO {16} \
   CONFIG.DIN_WIDTH {448} \
   CONFIG.DOUT_WIDTH {1} \
 ] $input_select_2

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins M_AXIS2] [get_bd_intf_pins CH2_Feedback_Params_2/M_AXIS]

  # Create port connections
  connect_bd_net -net Din1_1 [get_bd_pins Din1] [get_bd_pins Feedback_State_1/Din] [get_bd_pins input_select_2/Din]
  connect_bd_net -net Feedback_State_1_Dout [get_bd_pins Dout9] [get_bd_pins Feedback_State_1/Dout]
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins CH2_Feedback_Params_2/aclk]
  connect_bd_net -net cfg_data_1 [get_bd_pins cfg_data] [get_bd_pins CH2_Feedback_Params_2/cfg_data]
  connect_bd_net -net input_select_2_Dout [get_bd_pins Dout10] [get_bd_pins input_select_2/Dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: CH1_Config
proc create_hier_cell_CH1_Config { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_CH1_Config() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS3


  # Create pins
  create_bd_pin -dir I -from 447 -to 0 Din1
  create_bd_pin -dir O -from 3 -to 0 Dout
  create_bd_pin -dir O -from 0 -to 0 Dout7
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -from 191 -to 0 cfg_data

  # Create instance: CH1_Feedback_Params_1, and set properties
  set CH1_Feedback_Params_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:axis_constant:1.0 CH1_Feedback_Params_1 ]
  set_property -dict [ list \
   CONFIG.AXIS_TDATA_WIDTH {192} \
 ] $CH1_Feedback_Params_1

  # Create instance: Feedback_State, and set properties
  set Feedback_State [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 Feedback_State ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {12} \
   CONFIG.DIN_TO {9} \
   CONFIG.DIN_WIDTH {448} \
   CONFIG.DOUT_WIDTH {4} \
 ] $Feedback_State

  # Create instance: input_select, and set properties
  set input_select [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 input_select ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {8} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {448} \
   CONFIG.DOUT_WIDTH {1} \
 ] $input_select

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins M_AXIS3] [get_bd_intf_pins CH1_Feedback_Params_1/M_AXIS]

  # Create port connections
  connect_bd_net -net Din1_1 [get_bd_pins Din1] [get_bd_pins Feedback_State/Din] [get_bd_pins input_select/Din]
  connect_bd_net -net Feedback_State_Dout [get_bd_pins Dout] [get_bd_pins Feedback_State/Dout]
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins CH1_Feedback_Params_1/aclk]
  connect_bd_net -net cfg_data_1 [get_bd_pins cfg_data] [get_bd_pins CH1_Feedback_Params_1/cfg_data]
  connect_bd_net -net input_select_Dout [get_bd_pins Dout7] [get_bd_pins input_select/Dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: CBC_config
proc create_hier_cell_CBC_config { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_CBC_config() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS


  # Create pins
  create_bd_pin -dir I -from 447 -to 0 Din1
  create_bd_pin -dir O -from 0 -to 0 Dout11
  create_bd_pin -dir O -from 0 -to 0 Dout12
  create_bd_pin -dir O -from 0 -to 0 Dout13
  create_bd_pin -dir O -from 0 -to 0 Dout14
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -from 447 -to 0 cfg_data

  # Create instance: ALL_Feedback_Params, and set properties
  set ALL_Feedback_Params [ create_bd_cell -type ip -vlnv xilinx.com:user:axis_constant:1.0 ALL_Feedback_Params ]
  set_property -dict [ list \
   CONFIG.AXIS_TDATA_WIDTH {448} \
 ] $ALL_Feedback_Params

  # Create instance: Displacement_int_ext, and set properties
  set Displacement_int_ext [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 Displacement_int_ext ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {26} \
   CONFIG.DIN_TO {26} \
   CONFIG.DIN_WIDTH {448} \
   CONFIG.DOUT_WIDTH {1} \
 ] $Displacement_int_ext

  # Create instance: Polynomial_target, and set properties
  set Polynomial_target [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 Polynomial_target ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {27} \
   CONFIG.DIN_TO {27} \
   CONFIG.DIN_WIDTH {448} \
   CONFIG.DOUT_WIDTH {1} \
 ] $Polynomial_target

  # Create instance: Velocity_int_ext, and set properties
  set Velocity_int_ext [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 Velocity_int_ext ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {25} \
   CONFIG.DIN_TO {25} \
   CONFIG.DIN_WIDTH {448} \
   CONFIG.DOUT_WIDTH {1} \
 ] $Velocity_int_ext

  # Create instance: input_order, and set properties
  set input_order [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 input_order ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {24} \
   CONFIG.DIN_TO {24} \
   CONFIG.DIN_WIDTH {448} \
   CONFIG.DOUT_WIDTH {1} \
 ] $input_order

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins M_AXIS] [get_bd_intf_pins ALL_Feedback_Params/M_AXIS]

  # Create port connections
  connect_bd_net -net Din1_1 [get_bd_pins Din1] [get_bd_pins Displacement_int_ext/Din] [get_bd_pins Polynomial_target/Din] [get_bd_pins Velocity_int_ext/Din] [get_bd_pins input_order/Din]
  connect_bd_net -net Displacement_int_ext_Dout [get_bd_pins Dout14] [get_bd_pins Displacement_int_ext/Dout]
  connect_bd_net -net Polynomial_target_Dout [get_bd_pins Dout13] [get_bd_pins Polynomial_target/Dout]
  connect_bd_net -net Velocity_int_ext_Dout [get_bd_pins Dout12] [get_bd_pins Velocity_int_ext/Dout]
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins ALL_Feedback_Params/aclk]
  connect_bd_net -net cfg_data_1 [get_bd_pins cfg_data] [get_bd_pins ALL_Feedback_Params/cfg_data]
  connect_bd_net -net input_order_Dout [get_bd_pins Dout11] [get_bd_pins input_order/Dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: feedback_and_generation
proc create_hier_cell_feedback_and_generation { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_feedback_and_generation() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M00_AXIS

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M01_AXIS

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_ADC1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_ADC2

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_ADC3

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_ADC4

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_ADC5

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_ADC6

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_CFG

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_CFG1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_CFG2

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_RNG1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_RNG2


  # Create pins
  create_bd_pin -dir I -from 3 -to 0 CH2_sel
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn
  create_bd_pin -dir I -from 0 -to 0 continuous_output_in
  create_bd_pin -dir I displacement_int_ext
  create_bd_pin -dir O exp_p_tri_io
  create_bd_pin -dir I input_select
  create_bd_pin -dir I input_select1
  create_bd_pin -dir I input_select2
  create_bd_pin -dir I polynomial_target
  create_bd_pin -dir I -from 3 -to 0 sel
  create_bd_pin -dir I trig_in
  create_bd_pin -dir I velocity_int_ext

  # Create instance: CBC
  create_hier_cell_CBC $hier_obj CBC

  # Create instance: CH1
  create_hier_cell_CH1 $hier_obj CH1

  # Create instance: CH2
  create_hier_cell_CH2 $hier_obj CH2

  # Create instance: ch1_output_dac_mem_split, and set properties
  set ch1_output_dac_mem_split [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_broadcaster:1.1 ch1_output_dac_mem_split ]
  set_property -dict [ list \
   CONFIG.M00_TDATA_REMAP {tdata[31:0]} \
   CONFIG.M01_TDATA_REMAP {tdata[31:0]} \
   CONFIG.M_TDATA_NUM_BYTES {4} \
   CONFIG.S_TDATA_NUM_BYTES {4} \
 ] $ch1_output_dac_mem_split

  # Create instance: feedback_combined_0, and set properties
  set block_name feedback_combined
  set block_cell_name feedback_combined_0
  if { [catch {set feedback_combined_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $feedback_combined_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.PRODUCT_2_WIDTH {56} \
   CONFIG.PRODUCT_4_WIDTH {64} \
 ] $feedback_combined_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins M00_AXIS] [get_bd_intf_pins ch1_output_dac_mem_split/M00_AXIS]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins S_AXIS_ADC1] [get_bd_intf_pins CH1/S_AXIS_ADC1]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins S_AXIS_ADC2] [get_bd_intf_pins CH1/S_AXIS_ADC2]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins M01_AXIS] [get_bd_intf_pins ch1_output_dac_mem_split/M01_AXIS]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins S_AXIS_ADC3] [get_bd_intf_pins CH2/S_AXIS_ADC1]
  connect_bd_intf_net -intf_net Conn7 [get_bd_intf_pins S_AXIS_ADC4] [get_bd_intf_pins CH2/S_AXIS_ADC2]
  connect_bd_intf_net -intf_net Conn8 [get_bd_intf_pins S_AXIS_ADC5] [get_bd_intf_pins CBC/S_AXIS_ADC1]
  connect_bd_intf_net -intf_net Conn9 [get_bd_intf_pins S_AXIS_ADC6] [get_bd_intf_pins CBC/S_AXIS_ADC2]
  connect_bd_intf_net -intf_net Conn10 [get_bd_intf_pins S_AXIS_CFG2] [get_bd_intf_pins CBC/S_AXIS_CFG]
  connect_bd_intf_net -intf_net S_AXIS_CFG1_1 [get_bd_intf_pins S_AXIS_CFG1] [get_bd_intf_pins CH1/S_AXIS_CFG]
  connect_bd_intf_net -intf_net S_AXIS_CFG_1 [get_bd_intf_pins S_AXIS_CFG] [get_bd_intf_pins CH2/S_AXIS_CFG]
  connect_bd_intf_net -intf_net S_AXIS_RNG1_1 [get_bd_intf_pins S_AXIS_RNG1] [get_bd_intf_pins CH1/S_AXIS_RNG]
  connect_bd_intf_net -intf_net S_AXIS_RNG2_1 [get_bd_intf_pins S_AXIS_RNG2] [get_bd_intf_pins CH2/S_AXIS_RNG2]
  connect_bd_intf_net -intf_net feedback_combined_0_M_AXIS [get_bd_intf_pins ch1_output_dac_mem_split/S_AXIS] [get_bd_intf_pins feedback_combined_0/M_AXIS]

  # Create port connections
  connect_bd_net -net CBC_OFFSET [get_bd_pins CBC/OFFSET] [get_bd_pins feedback_combined_0/CBC_offset]
  connect_bd_net -net CBC_P [get_bd_pins CBC/P] [get_bd_pins feedback_combined_0/CBC_product_1]
  connect_bd_net -net CBC_P1 [get_bd_pins CBC/P1] [get_bd_pins feedback_combined_0/CBC_product_2]
  connect_bd_net -net CBC_P2 [get_bd_pins CBC/P2] [get_bd_pins feedback_combined_0/CBC_product_3]
  connect_bd_net -net CBC_P3 [get_bd_pins CBC/P3] [get_bd_pins feedback_combined_0/CBC_product_4]
  connect_bd_net -net CBC_P4 [get_bd_pins CBC/P4] [get_bd_pins feedback_combined_0/CBC_product_5]
  connect_bd_net -net CBC_trigger_out [get_bd_pins CBC/trigger_out] [get_bd_pins feedback_combined_0/trig_in_CBC]
  connect_bd_net -net CH2_mult1_P [get_bd_pins CH2/P3] [get_bd_pins feedback_combined_0/CH2_product_1]
  connect_bd_net -net CH2_mult2_P [get_bd_pins CH2/P] [get_bd_pins feedback_combined_0/CH2_product_2]
  connect_bd_net -net CH2_mult3_P [get_bd_pins CH2/P1] [get_bd_pins feedback_combined_0/CH2_product_3]
  connect_bd_net -net CH2_mult4_P [get_bd_pins CH2/P2] [get_bd_pins feedback_combined_0/CH2_product_4]
  connect_bd_net -net CH2_multiplier_breakout_OFFSET [get_bd_pins CH2/OFFSET] [get_bd_pins feedback_combined_0/CH2_offset]
  connect_bd_net -net Net1 [get_bd_pins CH2_sel] [get_bd_pins CH2/CH2_sel] [get_bd_pins feedback_combined_0/CH2_sel]
  connect_bd_net -net continuous_output_in_1 [get_bd_pins continuous_output_in] [get_bd_pins feedback_combined_0/continuous_output_in]
  connect_bd_net -net displacement_int_ext_1 [get_bd_pins displacement_int_ext] [get_bd_pins CBC/displacement_int_ext]
  connect_bd_net -net feedback_combined_0_trig_out [get_bd_pins exp_p_tri_io] [get_bd_pins feedback_combined_0/trig_out]
  connect_bd_net -net input_select1_1 [get_bd_pins input_select1] [get_bd_pins CH2/input_select1]
  connect_bd_net -net input_select2_1 [get_bd_pins input_select2] [get_bd_pins CBC/input_select2]
  connect_bd_net -net input_select_1 [get_bd_pins input_select] [get_bd_pins CH1/input_select]
  connect_bd_net -net mult_gen_0_P [get_bd_pins CH1/P] [get_bd_pins feedback_combined_0/CH1_product_1]
  connect_bd_net -net mult_gen_1_P [get_bd_pins CH1/P1] [get_bd_pins feedback_combined_0/CH1_product_2]
  connect_bd_net -net multiplier_breakout_0_OFFSET [get_bd_pins CH1/OFFSET] [get_bd_pins feedback_combined_0/CH1_offset]
  connect_bd_net -net multiplier_breakout_0_trigger_out [get_bd_pins CH1/trigger_out] [get_bd_pins feedback_combined_0/trig_in_channels]
  connect_bd_net -net pll_0_clk_out1 [get_bd_pins aclk] [get_bd_pins CBC/aclk] [get_bd_pins CH1/aclk] [get_bd_pins CH2/aclk] [get_bd_pins ch1_output_dac_mem_split/aclk] [get_bd_pins feedback_combined_0/aclk]
  connect_bd_net -net polynomial_target_1 [get_bd_pins polynomial_target] [get_bd_pins CBC/polynomial_target]
  connect_bd_net -net premultiplier_P1 [get_bd_pins CH1/P2] [get_bd_pins feedback_combined_0/CH1_product_3]
  connect_bd_net -net premultiplier_P2 [get_bd_pins CH1/P3] [get_bd_pins feedback_combined_0/CH1_product_4]
  connect_bd_net -net rst_0_peripheral_aresetn [get_bd_pins aresetn] [get_bd_pins ch1_output_dac_mem_split/aresetn]
  connect_bd_net -net sel_1 [get_bd_pins sel] [get_bd_pins CBC/sel] [get_bd_pins CH1/sel] [get_bd_pins feedback_combined_0/CH1_sel]
  connect_bd_net -net trig_in_1 [get_bd_pins trig_in] [get_bd_pins CBC/trig_in] [get_bd_pins CH1/trig_in] [get_bd_pins CH2/trig_in]
  connect_bd_net -net velocity_int_ext_1 [get_bd_pins velocity_int_ext] [get_bd_pins CBC/velocity_int_ext]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: downsampling
proc create_hier_cell_downsampling { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_downsampling() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S00_AXIS1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S01_AXIS

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S01_AXIS1


  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn

  # Create instance: axis_combiner_1, and set properties
  set axis_combiner_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_combiner:1.1 axis_combiner_1 ]
  set_property -dict [ list \
   CONFIG.TDATA_NUM_BYTES {4} \
 ] $axis_combiner_1

  # Create instance: axis_combiner_2, and set properties
  set axis_combiner_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_combiner:1.1 axis_combiner_2 ]
  set_property -dict [ list \
   CONFIG.TDATA_NUM_BYTES {2} \
 ] $axis_combiner_2

  # Create instance: fir_compiler_0, and set properties
  set fir_compiler_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fir_compiler:7.2 fir_compiler_0 ]
  set_property -dict [ list \
   CONFIG.BestPrecision {true} \
   CONFIG.Clock_Frequency {125} \
   CONFIG.CoefficientVector {0.0004146099090576171875,0.0004093647003173828125,0.0004041194915771484375,0.0003988742828369140625,0.0003936290740966796875,0.0003883838653564453125,0.0003831386566162109375,0.000377655029296875,0.0003721714019775390625,0.000366687774658203125,0.00036144256591796875,0.00035572052001953125,0.0003502368927001953125,0.000344753265380859375,0.000339031219482421875,0.0003335475921630859375,0.0003278255462646484375,0.0003221035003662109375,0.0003163814544677734375,0.0003106594085693359375,0.0003049373626708984375,0.0002992153167724609375,0.0002934932708740234375,0.000287532806396484375,0.000281810760498046875,0.0002758502960205078125,0.0002701282501220703125,0.00026416778564453125,0.0002582073211669921875,0.000252246856689453125,0.0002462863922119140625,0.000240325927734375,0.0002343654632568359375,0.000228404998779296875,0.0002224445343017578125,0.00021648406982421875,0.000210285186767578125,0.0002043247222900390625,0.0001983642578125,0.000192165374755859375,0.0001862049102783203125,0.00018024444580078125,0.000174045562744140625,0.0001680850982666015625,0.0001618862152099609375,0.000155925750732421875,0.00014972686767578125,0.0001437664031982421875,0.0001375675201416015625,0.0001316070556640625,0.000125408172607421875,0.0001194477081298828125,0.0001132488250732421875,0.000107288360595703125,0.0001010894775390625,0.0000951290130615234375,0.000089168548583984375,0.00008296966552734375,0.0000770092010498046875,0.000071048736572265625,0.000064849853515625,0.0000588893890380859375,0.000052928924560546875,0.0000469684600830078125,0.00004100799560546875,0.0000350475311279296875,0.000029087066650390625,0.0000231266021728515625,0.0000174045562744140625,0.000011444091796875,0.0000054836273193359375,-0.0000002384185791015625,-0.000006198883056640625,-0.000011920928955078125,-0.000017642974853515625,-0.000023365020751953125,-0.000029087066650390625,-0.000034809112548828125,-0.000040531158447265625,-0.000046253204345703125,-0.0000517368316650390625,-0.0000574588775634765625,-0.0000629425048828125,-0.00006866455078125,-0.0000741481781005859375,-0.000079631805419921875,-0.00008487701416015625,-0.0000903606414794921875,-0.000095844268798828125,-0.0001010894775390625,-0.000106334686279296875,-0.0001118183135986328125,-0.0001170635223388671875,-0.0001220703125,-0.000127315521240234375,-0.00013256072998046875,-0.0001375675201416015625,-0.000142574310302734375,-0.0001475811004638671875,-0.000152587890625,-0.0001575946807861328125,-0.0001623630523681640625,-0.0001671314239501953125,-0.0001718997955322265625,-0.0001766681671142578125,-0.0001814365386962890625,-0.0001862049102783203125,-0.00019073486328125,-0.0001952648162841796875,-0.000199794769287109375,-0.0002043247222900390625,-0.0002086162567138671875,-0.0002129077911376953125,-0.0002171993255615234375,-0.0002214908599853515625,-0.0002257823944091796875,-0.00022983551025390625,-0.000234127044677734375,-0.0002381801605224609375,-0.0002419948577880859375,-0.0002460479736328125,-0.0002498626708984375,-0.0002536773681640625,-0.0002574920654296875,-0.0002610683441162109375,-0.0002648830413818359375,-0.000268459320068359375,-0.0002720355987548828125,-0.0002753734588623046875,-0.0002787113189697265625,-0.0002820491790771484375,-0.0002853870391845703125,-0.0002887248992919921875,-0.0002918243408203125,-0.0002949237823486328125,-0.000298023223876953125,-0.000300884246826171875,-0.0003039836883544921875,-0.0003068447113037109375,-0.000309467315673828125,-0.000312328338623046875,-0.0003149509429931640625,-0.00031757354736328125,-0.000319957733154296875,-0.0003223419189453125,-0.000324726104736328125,-0.00032711029052734375,-0.000329494476318359375,-0.0003316402435302734375,-0.0003337860107421875,-0.000335693359375,-0.0003378391265869140625,-0.0003397464752197265625,-0.0003414154052734375,-0.00034332275390625,-0.0003449916839599609375,-0.000346660614013671875,-0.00034809112548828125,-0.0003497600555419921875,-0.0003511905670166015625,-0.000352382659912109375,-0.00035381317138671875,-0.0003550052642822265625,-0.0003559589385986328125,-0.000357151031494140625,-0.000358104705810546875,-0.000359058380126953125,-0.0003597736358642578125,-0.0003607273101806640625,-0.00036144256591796875,-0.000361919403076171875,-0.0003626346588134765625,-0.0003631114959716796875,-0.00036334991455078125,-0.000363826751708984375,-0.0003640651702880859375,-0.0003643035888671875,-0.0003643035888671875,-0.0003643035888671875,-0.0003643035888671875,-0.0003643035888671875,-0.0003640651702880859375,-0.000363826751708984375,-0.0003635883331298828125,-0.0003631114959716796875,-0.0003626346588134765625,-0.0003621578216552734375,-0.0003616809844970703125,-0.000360965728759765625,-0.0003602504730224609375,-0.0003592967987060546875,-0.00035858154296875,-0.00035762786865234375,-0.0003564357757568359375,-0.0003554821014404296875,-0.000354290008544921875,-0.0003528594970703125,-0.0003516674041748046875,-0.0003502368927001953125,-0.0003488063812255859375,-0.0003473758697509765625,-0.000345706939697265625,-0.0003440380096435546875,-0.00034236907958984375,-0.00034046173095703125,-0.00033855438232421875,-0.00033664703369140625,-0.00033473968505859375,-0.0003325939178466796875,-0.000330448150634765625,-0.00032806396484375,-0.0003259181976318359375,-0.0003235340118408203125,-0.0003211498260498046875,-0.0003187656402587890625,-0.000316143035888671875,-0.0003135204315185546875,-0.0003108978271484375,-0.00030803680419921875,-0.0003054141998291015625,-0.0003025531768798828125,-0.0002994537353515625,-0.00029659271240234375,-0.0002934932708740234375,-0.000290393829345703125,-0.0002872943878173828125,-0.0002839565277099609375,-0.0002806186676025390625,-0.0002772808074951171875,-0.0002739429473876953125,-0.000270366668701171875,-0.0002667903900146484375,-0.000263214111328125,-0.0002596378326416015625,-0.000256061553955078125,-0.000252246856689453125,-0.000248432159423828125,-0.000244617462158203125,-0.0002405643463134765625,-0.0002367496490478515625,-0.000232696533203125,-0.0002286434173583984375,-0.000224590301513671875,-0.00022029876708984375,-0.000216007232666015625,-0.0002117156982421875,-0.000207424163818359375,-0.00020313262939453125,-0.000198841094970703125,-0.0001943111419677734375,-0.00018978118896484375,-0.0001852512359619140625,-0.000180721282958984375,-0.000175952911376953125,-0.0001714229583740234375,-0.0001666545867919921875,-0.0001618862152099609375,-0.0001571178436279296875,-0.000152111053466796875,-0.000147342681884765625,-0.0001423358917236328125,-0.0001373291015625,-0.00013256072998046875,-0.000127315521240234375,-0.0001223087310791015625,-0.00011730194091796875,-0.000112056732177734375,-0.0001070499420166015625,-0.0001018047332763671875,-0.0000965595245361328125,-0.0000913143157958984375,-0.0000860691070556640625,-0.0000808238983154296875,-0.00007534027099609375,-0.000070095062255859375,-0.0000646114349365234375,-0.0000593662261962890625,-0.000053882598876953125,-0.0000483989715576171875,-0.00004291534423828125,-0.0000374317169189453125,-0.000031948089599609375,-0.000026226043701171875,-0.0000207424163818359375,-0.0000152587890625,-0.0000095367431640625,-0.0000040531158447265625,0.0000016689300537109375,0.000007152557373046875,0.000012874603271484375,0.000018596649169921875,0.000024318695068359375,0.0000298023223876953125,0.0000355243682861328125,0.0000412464141845703125,0.0000469684600830078125,0.0000526905059814453125,0.0000584125518798828125,0.0000641345977783203125,0.0000698566436767578125,0.0000755786895751953125,0.0000813007354736328125,0.0000870227813720703125,0.0000927448272705078125,0.0000984668731689453125,0.0001041889190673828125,0.0001099109649658203125,0.0001156330108642578125,0.0001213550567626953125,0.0001270771026611328125,0.00013256072998046875,0.00013828277587890625,0.00014400482177734375,0.00014972686767578125,0.00015544891357421875,0.0001609325408935546875,0.0001666545867919921875,0.000172138214111328125,0.000177860260009765625,0.0001833438873291015625,0.0001888275146484375,0.000194549560546875,0.0002000331878662109375,0.000205516815185546875,0.0002110004425048828125,0.00021648406982421875,0.0002219676971435546875,0.0002272129058837890625,0.000232696533203125,0.000237941741943359375,0.0002434253692626953125,0.0002486705780029296875,0.0002539157867431640625,0.0002591609954833984375,0.0002644062042236328125,0.0002696514129638671875,0.000274658203125,0.000279903411865234375,0.0002849102020263671875,0.0002899169921875,0.0002949237823486328125,0.000299930572509765625,0.0003049373626708984375,0.0003097057342529296875,0.0003147125244140625,0.00031948089599609375,0.000324249267578125,0.00032901763916015625,0.0003335475921630859375,0.0003383159637451171875,0.000342845916748046875,0.0003473758697509765625,0.00035190582275390625,0.0003564357757568359375,0.0003607273101806640625,0.0003650188446044921875,0.000369548797607421875,0.0003736019134521484375,0.0003778934478759765625,0.000381946563720703125,0.00038623809814453125,0.0003902912139892578125,0.0003941059112548828125,0.000398159027099609375,0.000401973724365234375,0.000405788421630859375,0.000409603118896484375,0.0004131793975830078125,0.00041675567626953125,0.0004203319549560546875,0.000423908233642578125,0.0004274845123291015625,0.0004308223724365234375,0.0004341602325439453125,0.0004374980926513671875,0.0004405975341796875,0.0004436969757080078125,0.000446796417236328125,0.000449657440185546875,0.0004527568817138671875,0.0004556179046630859375,0.000458240509033203125,0.000461101531982421875,0.0004637241363525390625,0.00046634674072265625,0.000468730926513671875,0.0004711151123046875,0.000473499298095703125,0.00047588348388671875,0.0004780292510986328125,0.000480175018310546875,0.0004823207855224609375,0.0004842281341552734375,0.0004861354827880859375,0.0004880428314208984375,0.000489711761474609375,0.0004913806915283203125,0.00049304962158203125,0.000494480133056640625,0.00049591064453125,0.000497341156005859375,0.0004985332489013671875,0.000499725341796875,0.0005009174346923828125,0.000502109527587890625,0.000503063201904296875,0.0005037784576416015625,0.00050449371337890625,0.0005052089691162109375,0.000505924224853515625,0.00050640106201171875,0.000506877899169921875,0.000507354736328125,0.0005075931549072265625,0.000507831573486328125,0.000507831573486328125,0.000507831573486328125,0.000507831573486328125,0.000507831573486328125,0.0005075931549072265625,0.0005071163177490234375,0.000506877899169921875,0.00050640106201171875,0.0005056858062744140625,0.0005052089691162109375,0.0005042552947998046875,0.0005035400390625,0.00050258636474609375,0.0005016326904296875,0.0005004405975341796875,0.000499248504638671875,0.0004980564117431640625,0.0004966259002685546875,0.0004951953887939453125,0.0004937648773193359375,0.000492095947265625,0.0004904270172119140625,0.0004885196685791015625,0.0004866123199462890625,0.0004847049713134765625,0.0004825592041015625,0.0004804134368896484375,0.000478267669677734375,0.00047588348388671875,0.000473499298095703125,0.0004708766937255859375,0.00046825408935546875,0.0004656314849853515625,0.0004627704620361328125,0.0004599094390869140625,0.0004570484161376953125,0.000453948974609375,0.0004508495330810546875,0.000447750091552734375,0.0004444122314453125,0.000441074371337890625,0.0004374980926513671875,0.00043392181396484375,0.0004303455352783203125,0.0004265308380126953125,0.0004227161407470703125,0.0004189014434814453125,0.0004150867462158203125,0.0004107952117919921875,0.000406742095947265625,0.0004024505615234375,0.000398159027099609375,0.00039386749267578125,0.0003893375396728515625,0.000384807586669921875,0.0003802776336669921875,0.0003755092620849609375,0.0003707408905029296875,0.0003659725189208984375,0.000360965728759765625,0.0003559589385986328125,0.0003507137298583984375,0.000345706939697265625,0.00034046173095703125,0.0003349781036376953125,0.000329494476318359375,0.0003240108489990234375,0.0003185272216796875,0.0003130435943603515625,0.0003073215484619140625,0.000301361083984375,0.0002956390380859375,0.0002896785736083984375,0.000283718109130859375,0.0002777576446533203125,0.0002715587615966796875,0.0002653598785400390625,0.0002591609954833984375,0.00025272369384765625,0.0002462863922119140625,0.000239849090576171875,0.0002334117889404296875,0.0002267360687255859375,0.0002200603485107421875,0.0002133846282958984375,0.0002067089080810546875,0.000199794769287109375,0.0001928806304931640625,0.00018596649169921875,0.0001790523529052734375,0.0001718997955322265625,0.0001647472381591796875,0.0001575946807861328125,0.0001504421234130859375,0.0001430511474609375,0.0001356601715087890625,0.000128269195556640625,0.0001208782196044921875,0.00011348724365234375,0.00010585784912109375,0.00009822845458984375,0.00009059906005859375,0.00008296966552734375,0.00007534027099609375,0.0000674724578857421875,0.000059604644775390625,0.000051975250244140625,0.0000438690185546875,0.0000360012054443359375,0.000028133392333984375,0.00002002716064453125,0.0000121593475341796875,0.0000040531158447265625,-0.0000040531158447265625,-0.0000121593475341796875,-0.000020503997802734375,-0.0000286102294921875,-0.000036716461181640625,-0.0000450611114501953125,-0.00005340576171875,-0.0000617504119873046875,-0.000070095062255859375,-0.0000784397125244140625,-0.00008678436279296875,-0.0000951290130615234375,-0.000103473663330078125,-0.000112056732177734375,-0.0001204013824462890625,-0.00012874603271484375,-0.0001373291015625,-0.00014591217041015625,-0.0001542568206787109375,-0.0001628398895263671875,-0.0001714229583740234375,-0.0001800060272216796875,-0.000188350677490234375,-0.000196933746337890625,-0.000205516815185546875,-0.000214099884033203125,-0.000222682952880859375,-0.000231266021728515625,-0.0002396106719970703125,-0.0002481937408447265625,-0.0002567768096923828125,-0.0002653598785400390625,-0.0002739429473876953125,-0.00028228759765625,-0.00029087066650390625,-0.0002994537353515625,-0.0003077983856201171875,-0.0003163814544677734375,-0.0003249645233154296875,-0.000333309173583984375,-0.0003416538238525390625,-0.0003502368927001953125,-0.00035858154296875,-0.0003669261932373046875,-0.000375270843505859375,-0.0003836154937744140625,-0.00039196014404296875,-0.000400066375732421875,-0.0004084110260009765625,-0.0004165172576904296875,-0.000424861907958984375,-0.0004329681396484375,-0.000441074371337890625,-0.00044918060302734375,-0.000457286834716796875,-0.0004651546478271484375,-0.0004732608795166015625,-0.000481128692626953125,-0.0004889965057373046875,-0.00049686431884765625,-0.0005047321319580078125,-0.0005123615264892578125,-0.0005199909210205078125,-0.000527858734130859375,-0.0005352497100830078125,-0.0005428791046142578125,-0.0005505084991455078125,-0.00055789947509765625,-0.0005652904510498046875,-0.0005724430084228515625,-0.000579833984375,-0.000586986541748046875,-0.00059413909912109375,-0.000601291656494140625,-0.0006082057952880859375,-0.0006153583526611328125,-0.000622272491455078125,-0.000628948211669921875,-0.000635623931884765625,-0.000642299652099609375,-0.000648975372314453125,-0.000655651092529296875,-0.0006620883941650390625,-0.00066852569580078125,-0.000674724578857421875,-0.0006809234619140625,-0.000687122344970703125,-0.0006930828094482421875,-0.00069904327392578125,-0.0007050037384033203125,-0.000710964202880859375,-0.000716686248779296875,-0.0007221698760986328125,-0.0007278919219970703125,-0.0007331371307373046875,-0.000738620758056640625,-0.000743865966796875,-0.000749111175537109375,-0.0007541179656982421875,-0.000759124755859375,-0.0007641315460205078125,-0.0007688999176025390625,-0.00077342987060546875,-0.0007781982421875,-0.000782489776611328125,-0.0007870197296142578125,-0.0007913112640380859375,-0.0007953643798828125,-0.0007994174957275390625,-0.000803470611572265625,-0.000807285308837890625,-0.000811100006103515625,-0.0008146762847900390625,-0.0008182525634765625,-0.000821590423583984375,-0.0008246898651123046875,-0.0008280277252197265625,-0.000831127166748046875,-0.000833988189697265625,-0.000836849212646484375,-0.0008394718170166015625,-0.00084209442138671875,-0.000844478607177734375,-0.00084686279296875,-0.0008490085601806640625,-0.0008509159088134765625,-0.000853061676025390625,-0.0008547306060791015625,-0.0008563995361328125,-0.0008580684661865234375,-0.0008594989776611328125,-0.000860691070556640625,-0.0008618831634521484375,-0.0008628368377685546875,-0.0008637905120849609375,-0.000864505767822265625,-0.0008652210235595703125,-0.0008656978607177734375,-0.000865936279296875,-0.0008661746978759765625,-0.0008661746978759765625,-0.0008661746978759765625,-0.000865936279296875,-0.0008656978607177734375,-0.0008652210235595703125,-0.000864505767822265625,-0.0008637905120849609375,-0.0008628368377685546875,-0.000861644744873046875,-0.0008604526519775390625,-0.0008590221405029296875,-0.0008575916290283203125,-0.000855922698974609375,-0.0008542537689208984375,-0.000852108001708984375,-0.000850200653076171875,-0.00084781646728515625,-0.000845432281494140625,-0.0008428096771240234375,-0.00084018707275390625,-0.0008373260498046875,-0.0008342266082763671875,-0.000831127166748046875,-0.000827789306640625,-0.000824451446533203125,-0.000820636749267578125,-0.000816822052001953125,-0.000813007354736328125,-0.0008089542388916015625,-0.0008046627044677734375,-0.0008003711700439453125,-0.0007956027984619140625,-0.000791072845458984375,-0.0007860660552978515625,-0.00078105926513671875,-0.000775814056396484375,-0.00077056884765625,-0.0007650852203369140625,-0.0007593631744384765625,-0.0007536411285400390625,-0.0007474422454833984375,-0.000741481781005859375,-0.0007350444793701171875,-0.000728607177734375,-0.00072193145751953125,-0.0007152557373046875,-0.0007083415985107421875,-0.0007011890411376953125,-0.0006940364837646484375,-0.0006864070892333984375,-0.00067901611328125,-0.0006711483001708984375,-0.000663280487060546875,-0.00065517425537109375,-0.000647068023681640625,-0.0006387233734130859375,-0.0006301403045654296875,-0.000621318817138671875,-0.0006124973297119140625,-0.00060367584228515625,-0.0005943775177001953125,-0.000585079193115234375,-0.000575542449951171875,-0.000566005706787109375,-0.0005562305450439453125,-0.0005462169647216796875,-0.0005359649658203125,-0.0005257129669189453125,-0.000515460968017578125,-0.0005047321319580078125,-0.0004940032958984375,-0.000483036041259765625,-0.00047206878662109375,-0.0004608631134033203125,-0.0004494190216064453125,-0.0004379749298095703125,-0.00042629241943359375,-0.000414371490478515625,-0.0004024505615234375,-0.0003902912139892578125,-0.000378131866455078125,-0.000365734100341796875,-0.0003530979156494140625,-0.00034046173095703125,-0.000327587127685546875,-0.0003144741058349609375,-0.000301361083984375,-0.0002880096435546875,-0.0002744197845458984375,-0.000260829925537109375,-0.00024700164794921875,-0.000233173370361328125,-0.0002191066741943359375,-0.00020503997802734375,-0.00019073486328125,-0.0001761913299560546875,-0.000161647796630859375,-0.0001468658447265625,-0.0001318454742431640625,-0.000116825103759765625,-0.0001018047332763671875,-0.000086307525634765625,-0.000071048736572265625,-0.0000553131103515625,-0.000039577484130859375,-0.00002384185791015625,-0.0000078678131103515625,0.0000083446502685546875,0.0000245571136474609375,0.0000407695770263671875,0.000057220458984375,0.000073909759521484375,0.00009059906005859375,0.0001075267791748046875,0.000124454498291015625,0.000141620635986328125,0.000158786773681640625,0.0001761913299560546875,0.00019359588623046875,0.000211238861083984375,0.0002288818359375,0.0002467632293701171875,0.000264644622802734375,0.000282764434814453125,0.000300884246826171875,0.000319004058837890625,0.0003373622894287109375,0.0003559589385986328125,0.0003745555877685546875,0.0003931522369384765625,0.0004119873046875,0.0004308223724365234375,0.0004498958587646484375,0.0004689693450927734375,0.0004880428314208984375,0.000507354736328125,0.000526905059814453125,0.0005462169647216796875,0.0005657672882080078125,0.0005855560302734375,0.0006053447723388671875,0.000625133514404296875,0.0006449222564697265625,0.0006649494171142578125,0.0006849765777587890625,0.000705242156982421875,0.0007255077362060546875,0.0007457733154296875,0.000766277313232421875,0.00078678131103515625,0.000807285308837890625,0.000827789306640625,0.0008485317230224609375,0.000869274139404296875,0.0008900165557861328125,0.0009109973907470703125,0.0009319782257080078125,0.0009529590606689453125,0.0009739398956298828125,0.000995159149169921875,0.0010163784027099609375,0.00103759765625,0.001059055328369140625,0.0010802745819091796875,0.0011017322540283203125,0.0011231899261474609375,0.0011446475982666015625,0.0011661052703857421875,0.001187801361083984375,0.0012094974517822265625,0.00123119354248046875,0.0012528896331787109375,0.001274585723876953125,0.0012962818145751953125,0.0013182163238525390625,0.00133991241455078125,0.001361846923828125,0.00138378143310546875,0.0014057159423828125,0.00142765045166015625,0.0014495849609375,0.00147151947021484375,0.0014934539794921875,0.0015156269073486328125,0.0015375614166259765625,0.001559734344482421875,0.001581668853759765625,0.0016038417816162109375,0.0016257762908935546875,0.00164794921875,0.00166988372802734375,0.0016920566558837890625,0.001714229583740234375,0.001736164093017578125,0.0017583370208740234375,0.0017802715301513671875,0.0018024444580078125,0.00182437896728515625,0.0018465518951416015625,0.0018684864044189453125,0.0018904209136962890625,0.001912593841552734375,0.001934528350830078125,0.001956462860107421875,0.001978397369384765625,0.0020000934600830078125,0.0020220279693603515625,0.0020439624786376953125,0.0020656585693359375,0.0020873546600341796875,0.0021092891693115234375,0.002130985260009765625,0.00215244293212890625,0.0021741390228271484375,0.002195835113525390625,0.00221729278564453125,0.002238750457763671875,0.0022602081298828125,0.002281665802001953125,0.0023028850555419921875,0.00232410430908203125,0.0023453235626220703125,0.002366542816162109375,0.002387523651123046875,0.0024087429046630859375,0.0024297237396240234375,0.002450466156005859375,0.002471446990966796875,0.0024921894073486328125,0.00251293182373046875,0.002533435821533203125,0.0025539398193359375,0.002574443817138671875,0.00259494781494140625,0.0026152133941650390625,0.002635478973388671875,0.002655506134033203125,0.002675533294677734375,0.002695560455322265625,0.002715587615966796875,0.0027353763580322265625,0.0027549266815185546875,0.0027744770050048828125,0.0027940273284912109375,0.0028135776519775390625,0.002832889556884765625,0.002851963043212890625,0.002871036529541015625,0.002890110015869140625,0.0029089450836181640625,0.0029277801513671875,0.002946376800537109375,0.00296497344970703125,0.0029833316802978515625,0.003001689910888671875,0.003019809722900390625,0.003037929534912109375,0.0030558109283447265625,0.00307369232177734375,0.0030915737152099609375,0.003108978271484375,0.0031263828277587890625,0.003143787384033203125,0.003160953521728515625,0.003178119659423828125,0.0031950473785400390625,0.0032117366790771484375,0.0032284259796142578125,0.003244876861572265625,0.0032613277435302734375,0.0032775402069091796875,0.0032937526702880859375,0.003309726715087890625,0.00332546234130859375,0.0033409595489501953125,0.003356456756591796875,0.0033719539642333984375,0.0033872127532958984375,0.003402233123779296875,0.00341701507568359375,0.003431797027587890625,0.0034463405609130859375,0.00346088409423828125,0.0034749507904052734375,0.003489017486572265625,0.0035030841827392578125,0.0035169124603271484375,0.0035305023193359375,0.003543853759765625,0.0035572052001953125,0.0035703182220458984375,0.0035831928253173828125,0.003595829010009765625,0.0036084651947021484375,0.0036208629608154296875,0.003633022308349609375,0.0036451816558837890625,0.0036571025848388671875,0.00366878509521484375,0.00368022918701171875,0.0036914348602294921875,0.003702640533447265625,0.0037136077880859375,0.0037243366241455078125,0.003735065460205078125,0.0037453174591064453125,0.0037555694580078125,0.003765583038330078125,0.00377559661865234375,0.00378513336181640625,0.00379467010498046875,0.0038039684295654296875,0.0038130283355712890625,0.003821849822998046875,0.003830432891845703125,0.003839015960693359375,0.0038473606109619140625,0.0038554668426513671875,0.00386333465576171875,0.00387096405029296875,0.00387859344482421875,0.003885746002197265625,0.0038928985595703125,0.0038998126983642578125,0.0039064884185791015625,0.00391292572021484375,0.0039193630218505859375,0.003925323486328125,0.0039312839508056640625,0.0039370059967041015625,0.0039424896240234375,0.003947734832763671875,0.0039527416229248046875,0.0039575099945068359375,0.0039622783660888671875,0.0039665699005126953125,0.0039708614349365234375,0.00397491455078125,0.003978729248046875,0.0039823055267333984375,0.0039856433868408203125,0.0039889812469482421875,0.0039918422698974609375,0.0039947032928466796875,0.0039970874786376953125,0.0039994716644287109375,0.004001617431640625,0.0040035247802734375,0.0040051937103271484375,0.004006862640380859375,0.0040080547332763671875,0.0040090084075927734375,0.0040099620819091796875,0.004010677337646484375,0.0040109157562255859375,0.0040111541748046875,0.0040111541748046875,0.0040109157562255859375,0.004010677337646484375,0.0040099620819091796875,0.0040090084075927734375,0.0040080547332763671875,0.004006862640380859375,0.0040051937103271484375,0.0040035247802734375,0.004001617431640625,0.0039994716644287109375,0.0039970874786376953125,0.0039947032928466796875,0.0039918422698974609375,0.0039889812469482421875,0.0039856433868408203125,0.0039823055267333984375,0.003978729248046875,0.00397491455078125,0.0039708614349365234375,0.0039665699005126953125,0.0039622783660888671875,0.0039575099945068359375,0.0039527416229248046875,0.003947734832763671875,0.0039424896240234375,0.0039370059967041015625,0.0039312839508056640625,0.003925323486328125,0.0039193630218505859375,0.00391292572021484375,0.0039064884185791015625,0.0038998126983642578125,0.0038928985595703125,0.003885746002197265625,0.00387859344482421875,0.00387096405029296875,0.00386333465576171875,0.0038554668426513671875,0.0038473606109619140625,0.003839015960693359375,0.003830432891845703125,0.003821849822998046875,0.0038130283355712890625,0.0038039684295654296875,0.00379467010498046875,0.00378513336181640625,0.00377559661865234375,0.003765583038330078125,0.0037555694580078125,0.0037453174591064453125,0.003735065460205078125,0.0037243366241455078125,0.0037136077880859375,0.003702640533447265625,0.0036914348602294921875,0.00368022918701171875,0.00366878509521484375,0.0036571025848388671875,0.0036451816558837890625,0.003633022308349609375,0.0036208629608154296875,0.0036084651947021484375,0.003595829010009765625,0.0035831928253173828125,0.0035703182220458984375,0.0035572052001953125,0.003543853759765625,0.0035305023193359375,0.0035169124603271484375,0.0035030841827392578125,0.003489017486572265625,0.0034749507904052734375,0.00346088409423828125,0.0034463405609130859375,0.003431797027587890625,0.00341701507568359375,0.003402233123779296875,0.0033872127532958984375,0.0033719539642333984375,0.003356456756591796875,0.0033409595489501953125,0.00332546234130859375,0.003309726715087890625,0.0032937526702880859375,0.0032775402069091796875,0.0032613277435302734375,0.003244876861572265625,0.0032284259796142578125,0.0032117366790771484375,0.0031950473785400390625,0.003178119659423828125,0.003160953521728515625,0.003143787384033203125,0.0031263828277587890625,0.003108978271484375,0.0030915737152099609375,0.00307369232177734375,0.0030558109283447265625,0.003037929534912109375,0.003019809722900390625,0.003001689910888671875,0.0029833316802978515625,0.00296497344970703125,0.002946376800537109375,0.0029277801513671875,0.0029089450836181640625,0.002890110015869140625,0.002871036529541015625,0.002851963043212890625,0.002832889556884765625,0.0028135776519775390625,0.0027940273284912109375,0.0027744770050048828125,0.0027549266815185546875,0.0027353763580322265625,0.002715587615966796875,0.002695560455322265625,0.002675533294677734375,0.002655506134033203125,0.002635478973388671875,0.0026152133941650390625,0.00259494781494140625,0.002574443817138671875,0.0025539398193359375,0.002533435821533203125,0.00251293182373046875,0.0024921894073486328125,0.002471446990966796875,0.002450466156005859375,0.0024297237396240234375,0.0024087429046630859375,0.002387523651123046875,0.002366542816162109375,0.0023453235626220703125,0.00232410430908203125,0.0023028850555419921875,0.002281665802001953125,0.0022602081298828125,0.002238750457763671875,0.00221729278564453125,0.002195835113525390625,0.0021741390228271484375,0.00215244293212890625,0.002130985260009765625,0.0021092891693115234375,0.0020873546600341796875,0.0020656585693359375,0.0020439624786376953125,0.0020220279693603515625,0.0020000934600830078125,0.001978397369384765625,0.001956462860107421875,0.001934528350830078125,0.001912593841552734375,0.0018904209136962890625,0.0018684864044189453125,0.0018465518951416015625,0.00182437896728515625,0.0018024444580078125,0.0017802715301513671875,0.0017583370208740234375,0.001736164093017578125,0.001714229583740234375,0.0016920566558837890625,0.00166988372802734375,0.00164794921875,0.0016257762908935546875,0.0016038417816162109375,0.001581668853759765625,0.001559734344482421875,0.0015375614166259765625,0.0015156269073486328125,0.0014934539794921875,0.00147151947021484375,0.0014495849609375,0.00142765045166015625,0.0014057159423828125,0.00138378143310546875,0.001361846923828125,0.00133991241455078125,0.0013182163238525390625,0.0012962818145751953125,0.001274585723876953125,0.0012528896331787109375,0.00123119354248046875,0.0012094974517822265625,0.001187801361083984375,0.0011661052703857421875,0.0011446475982666015625,0.0011231899261474609375,0.0011017322540283203125,0.0010802745819091796875,0.001059055328369140625,0.00103759765625,0.0010163784027099609375,0.000995159149169921875,0.0009739398956298828125,0.0009529590606689453125,0.0009319782257080078125,0.0009109973907470703125,0.0008900165557861328125,0.000869274139404296875,0.0008485317230224609375,0.000827789306640625,0.000807285308837890625,0.00078678131103515625,0.000766277313232421875,0.0007457733154296875,0.0007255077362060546875,0.000705242156982421875,0.0006849765777587890625,0.0006649494171142578125,0.0006449222564697265625,0.000625133514404296875,0.0006053447723388671875,0.0005855560302734375,0.0005657672882080078125,0.0005462169647216796875,0.000526905059814453125,0.000507354736328125,0.0004880428314208984375,0.0004689693450927734375,0.0004498958587646484375,0.0004308223724365234375,0.0004119873046875,0.0003931522369384765625,0.0003745555877685546875,0.0003559589385986328125,0.0003373622894287109375,0.000319004058837890625,0.000300884246826171875,0.000282764434814453125,0.000264644622802734375,0.0002467632293701171875,0.0002288818359375,0.000211238861083984375,0.00019359588623046875,0.0001761913299560546875,0.000158786773681640625,0.000141620635986328125,0.000124454498291015625,0.0001075267791748046875,0.00009059906005859375,0.000073909759521484375,0.000057220458984375,0.0000407695770263671875,0.0000245571136474609375,0.0000083446502685546875,-0.0000078678131103515625,-0.00002384185791015625,-0.000039577484130859375,-0.0000553131103515625,-0.000071048736572265625,-0.000086307525634765625,-0.0001018047332763671875,-0.000116825103759765625,-0.0001318454742431640625,-0.0001468658447265625,-0.000161647796630859375,-0.0001761913299560546875,-0.00019073486328125,-0.00020503997802734375,-0.0002191066741943359375,-0.000233173370361328125,-0.00024700164794921875,-0.000260829925537109375,-0.0002744197845458984375,-0.0002880096435546875,-0.000301361083984375,-0.0003144741058349609375,-0.000327587127685546875,-0.00034046173095703125,-0.0003530979156494140625,-0.000365734100341796875,-0.000378131866455078125,-0.0003902912139892578125,-0.0004024505615234375,-0.000414371490478515625,-0.00042629241943359375,-0.0004379749298095703125,-0.0004494190216064453125,-0.0004608631134033203125,-0.00047206878662109375,-0.000483036041259765625,-0.0004940032958984375,-0.0005047321319580078125,-0.000515460968017578125,-0.0005257129669189453125,-0.0005359649658203125,-0.0005462169647216796875,-0.0005562305450439453125,-0.000566005706787109375,-0.000575542449951171875,-0.000585079193115234375,-0.0005943775177001953125,-0.00060367584228515625,-0.0006124973297119140625,-0.000621318817138671875,-0.0006301403045654296875,-0.0006387233734130859375,-0.000647068023681640625,-0.00065517425537109375,-0.000663280487060546875,-0.0006711483001708984375,-0.00067901611328125,-0.0006864070892333984375,-0.0006940364837646484375,-0.0007011890411376953125,-0.0007083415985107421875,-0.0007152557373046875,-0.00072193145751953125,-0.000728607177734375,-0.0007350444793701171875,-0.000741481781005859375,-0.0007474422454833984375,-0.0007536411285400390625,-0.0007593631744384765625,-0.0007650852203369140625,-0.00077056884765625,-0.000775814056396484375,-0.00078105926513671875,-0.0007860660552978515625,-0.000791072845458984375,-0.0007956027984619140625,-0.0008003711700439453125,-0.0008046627044677734375,-0.0008089542388916015625,-0.000813007354736328125,-0.000816822052001953125,-0.000820636749267578125,-0.000824451446533203125,-0.000827789306640625,-0.000831127166748046875,-0.0008342266082763671875,-0.0008373260498046875,-0.00084018707275390625,-0.0008428096771240234375,-0.000845432281494140625,-0.00084781646728515625,-0.000850200653076171875,-0.000852108001708984375,-0.0008542537689208984375,-0.000855922698974609375,-0.0008575916290283203125,-0.0008590221405029296875,-0.0008604526519775390625,-0.000861644744873046875,-0.0008628368377685546875,-0.0008637905120849609375,-0.000864505767822265625,-0.0008652210235595703125,-0.0008656978607177734375,-0.000865936279296875,-0.0008661746978759765625,-0.0008661746978759765625,-0.0008661746978759765625,-0.000865936279296875,-0.0008656978607177734375,-0.0008652210235595703125,-0.000864505767822265625,-0.0008637905120849609375,-0.0008628368377685546875,-0.0008618831634521484375,-0.000860691070556640625,-0.0008594989776611328125,-0.0008580684661865234375,-0.0008563995361328125,-0.0008547306060791015625,-0.000853061676025390625,-0.0008509159088134765625,-0.0008490085601806640625,-0.00084686279296875,-0.000844478607177734375,-0.00084209442138671875,-0.0008394718170166015625,-0.000836849212646484375,-0.000833988189697265625,-0.000831127166748046875,-0.0008280277252197265625,-0.0008246898651123046875,-0.000821590423583984375,-0.0008182525634765625,-0.0008146762847900390625,-0.000811100006103515625,-0.000807285308837890625,-0.000803470611572265625,-0.0007994174957275390625,-0.0007953643798828125,-0.0007913112640380859375,-0.0007870197296142578125,-0.000782489776611328125,-0.0007781982421875,-0.00077342987060546875,-0.0007688999176025390625,-0.0007641315460205078125,-0.000759124755859375,-0.0007541179656982421875,-0.000749111175537109375,-0.000743865966796875,-0.000738620758056640625,-0.0007331371307373046875,-0.0007278919219970703125,-0.0007221698760986328125,-0.000716686248779296875,-0.000710964202880859375,-0.0007050037384033203125,-0.00069904327392578125,-0.0006930828094482421875,-0.000687122344970703125,-0.0006809234619140625,-0.000674724578857421875,-0.00066852569580078125,-0.0006620883941650390625,-0.000655651092529296875,-0.000648975372314453125,-0.000642299652099609375,-0.000635623931884765625,-0.000628948211669921875,-0.000622272491455078125,-0.0006153583526611328125,-0.0006082057952880859375,-0.000601291656494140625,-0.00059413909912109375,-0.000586986541748046875,-0.000579833984375,-0.0005724430084228515625,-0.0005652904510498046875,-0.00055789947509765625,-0.0005505084991455078125,-0.0005428791046142578125,-0.0005352497100830078125,-0.000527858734130859375,-0.0005199909210205078125,-0.0005123615264892578125,-0.0005047321319580078125,-0.00049686431884765625,-0.0004889965057373046875,-0.000481128692626953125,-0.0004732608795166015625,-0.0004651546478271484375,-0.000457286834716796875,-0.00044918060302734375,-0.000441074371337890625,-0.0004329681396484375,-0.000424861907958984375,-0.0004165172576904296875,-0.0004084110260009765625,-0.000400066375732421875,-0.00039196014404296875,-0.0003836154937744140625,-0.000375270843505859375,-0.0003669261932373046875,-0.00035858154296875,-0.0003502368927001953125,-0.0003416538238525390625,-0.000333309173583984375,-0.0003249645233154296875,-0.0003163814544677734375,-0.0003077983856201171875,-0.0002994537353515625,-0.00029087066650390625,-0.00028228759765625,-0.0002739429473876953125,-0.0002653598785400390625,-0.0002567768096923828125,-0.0002481937408447265625,-0.0002396106719970703125,-0.000231266021728515625,-0.000222682952880859375,-0.000214099884033203125,-0.000205516815185546875,-0.000196933746337890625,-0.000188350677490234375,-0.0001800060272216796875,-0.0001714229583740234375,-0.0001628398895263671875,-0.0001542568206787109375,-0.00014591217041015625,-0.0001373291015625,-0.00012874603271484375,-0.0001204013824462890625,-0.000112056732177734375,-0.000103473663330078125,-0.0000951290130615234375,-0.00008678436279296875,-0.0000784397125244140625,-0.000070095062255859375,-0.0000617504119873046875,-0.00005340576171875,-0.0000450611114501953125,-0.000036716461181640625,-0.0000286102294921875,-0.000020503997802734375,-0.0000121593475341796875,-0.0000040531158447265625,0.0000040531158447265625,0.0000121593475341796875,0.00002002716064453125,0.000028133392333984375,0.0000360012054443359375,0.0000438690185546875,0.000051975250244140625,0.000059604644775390625,0.0000674724578857421875,0.00007534027099609375,0.00008296966552734375,0.00009059906005859375,0.00009822845458984375,0.00010585784912109375,0.00011348724365234375,0.0001208782196044921875,0.000128269195556640625,0.0001356601715087890625,0.0001430511474609375,0.0001504421234130859375,0.0001575946807861328125,0.0001647472381591796875,0.0001718997955322265625,0.0001790523529052734375,0.00018596649169921875,0.0001928806304931640625,0.000199794769287109375,0.0002067089080810546875,0.0002133846282958984375,0.0002200603485107421875,0.0002267360687255859375,0.0002334117889404296875,0.000239849090576171875,0.0002462863922119140625,0.00025272369384765625,0.0002591609954833984375,0.0002653598785400390625,0.0002715587615966796875,0.0002777576446533203125,0.000283718109130859375,0.0002896785736083984375,0.0002956390380859375,0.000301361083984375,0.0003073215484619140625,0.0003130435943603515625,0.0003185272216796875,0.0003240108489990234375,0.000329494476318359375,0.0003349781036376953125,0.00034046173095703125,0.000345706939697265625,0.0003507137298583984375,0.0003559589385986328125,0.000360965728759765625,0.0003659725189208984375,0.0003707408905029296875,0.0003755092620849609375,0.0003802776336669921875,0.000384807586669921875,0.0003893375396728515625,0.00039386749267578125,0.000398159027099609375,0.0004024505615234375,0.000406742095947265625,0.0004107952117919921875,0.0004150867462158203125,0.0004189014434814453125,0.0004227161407470703125,0.0004265308380126953125,0.0004303455352783203125,0.00043392181396484375,0.0004374980926513671875,0.000441074371337890625,0.0004444122314453125,0.000447750091552734375,0.0004508495330810546875,0.000453948974609375,0.0004570484161376953125,0.0004599094390869140625,0.0004627704620361328125,0.0004656314849853515625,0.00046825408935546875,0.0004708766937255859375,0.000473499298095703125,0.00047588348388671875,0.000478267669677734375,0.0004804134368896484375,0.0004825592041015625,0.0004847049713134765625,0.0004866123199462890625,0.0004885196685791015625,0.0004904270172119140625,0.000492095947265625,0.0004937648773193359375,0.0004951953887939453125,0.0004966259002685546875,0.0004980564117431640625,0.000499248504638671875,0.0005004405975341796875,0.0005016326904296875,0.00050258636474609375,0.0005035400390625,0.0005042552947998046875,0.0005052089691162109375,0.0005056858062744140625,0.00050640106201171875,0.000506877899169921875,0.0005071163177490234375,0.0005075931549072265625,0.000507831573486328125,0.000507831573486328125,0.000507831573486328125,0.000507831573486328125,0.000507831573486328125,0.0005075931549072265625,0.000507354736328125,0.000506877899169921875,0.00050640106201171875,0.000505924224853515625,0.0005052089691162109375,0.00050449371337890625,0.0005037784576416015625,0.000503063201904296875,0.000502109527587890625,0.0005009174346923828125,0.000499725341796875,0.0004985332489013671875,0.000497341156005859375,0.00049591064453125,0.000494480133056640625,0.00049304962158203125,0.0004913806915283203125,0.000489711761474609375,0.0004880428314208984375,0.0004861354827880859375,0.0004842281341552734375,0.0004823207855224609375,0.000480175018310546875,0.0004780292510986328125,0.00047588348388671875,0.000473499298095703125,0.0004711151123046875,0.000468730926513671875,0.00046634674072265625,0.0004637241363525390625,0.000461101531982421875,0.000458240509033203125,0.0004556179046630859375,0.0004527568817138671875,0.000449657440185546875,0.000446796417236328125,0.0004436969757080078125,0.0004405975341796875,0.0004374980926513671875,0.0004341602325439453125,0.0004308223724365234375,0.0004274845123291015625,0.000423908233642578125,0.0004203319549560546875,0.00041675567626953125,0.0004131793975830078125,0.000409603118896484375,0.000405788421630859375,0.000401973724365234375,0.000398159027099609375,0.0003941059112548828125,0.0003902912139892578125,0.00038623809814453125,0.000381946563720703125,0.0003778934478759765625,0.0003736019134521484375,0.000369548797607421875,0.0003650188446044921875,0.0003607273101806640625,0.0003564357757568359375,0.00035190582275390625,0.0003473758697509765625,0.000342845916748046875,0.0003383159637451171875,0.0003335475921630859375,0.00032901763916015625,0.000324249267578125,0.00031948089599609375,0.0003147125244140625,0.0003097057342529296875,0.0003049373626708984375,0.000299930572509765625,0.0002949237823486328125,0.0002899169921875,0.0002849102020263671875,0.000279903411865234375,0.000274658203125,0.0002696514129638671875,0.0002644062042236328125,0.0002591609954833984375,0.0002539157867431640625,0.0002486705780029296875,0.0002434253692626953125,0.000237941741943359375,0.000232696533203125,0.0002272129058837890625,0.0002219676971435546875,0.00021648406982421875,0.0002110004425048828125,0.000205516815185546875,0.0002000331878662109375,0.000194549560546875,0.0001888275146484375,0.0001833438873291015625,0.000177860260009765625,0.000172138214111328125,0.0001666545867919921875,0.0001609325408935546875,0.00015544891357421875,0.00014972686767578125,0.00014400482177734375,0.00013828277587890625,0.00013256072998046875,0.0001270771026611328125,0.0001213550567626953125,0.0001156330108642578125,0.0001099109649658203125,0.0001041889190673828125,0.0000984668731689453125,0.0000927448272705078125,0.0000870227813720703125,0.0000813007354736328125,0.0000755786895751953125,0.0000698566436767578125,0.0000641345977783203125,0.0000584125518798828125,0.0000526905059814453125,0.0000469684600830078125,0.0000412464141845703125,0.0000355243682861328125,0.0000298023223876953125,0.000024318695068359375,0.000018596649169921875,0.000012874603271484375,0.000007152557373046875,0.0000016689300537109375,-0.0000040531158447265625,-0.0000095367431640625,-0.0000152587890625,-0.0000207424163818359375,-0.000026226043701171875,-0.000031948089599609375,-0.0000374317169189453125,-0.00004291534423828125,-0.0000483989715576171875,-0.000053882598876953125,-0.0000593662261962890625,-0.0000646114349365234375,-0.000070095062255859375,-0.00007534027099609375,-0.0000808238983154296875,-0.0000860691070556640625,-0.0000913143157958984375,-0.0000965595245361328125,-0.0001018047332763671875,-0.0001070499420166015625,-0.000112056732177734375,-0.00011730194091796875,-0.0001223087310791015625,-0.000127315521240234375,-0.00013256072998046875,-0.0001373291015625,-0.0001423358917236328125,-0.000147342681884765625,-0.000152111053466796875,-0.0001571178436279296875,-0.0001618862152099609375,-0.0001666545867919921875,-0.0001714229583740234375,-0.000175952911376953125,-0.000180721282958984375,-0.0001852512359619140625,-0.00018978118896484375,-0.0001943111419677734375,-0.000198841094970703125,-0.00020313262939453125,-0.000207424163818359375,-0.0002117156982421875,-0.000216007232666015625,-0.00022029876708984375,-0.000224590301513671875,-0.0002286434173583984375,-0.000232696533203125,-0.0002367496490478515625,-0.0002405643463134765625,-0.000244617462158203125,-0.000248432159423828125,-0.000252246856689453125,-0.000256061553955078125,-0.0002596378326416015625,-0.000263214111328125,-0.0002667903900146484375,-0.000270366668701171875,-0.0002739429473876953125,-0.0002772808074951171875,-0.0002806186676025390625,-0.0002839565277099609375,-0.0002872943878173828125,-0.000290393829345703125,-0.0002934932708740234375,-0.00029659271240234375,-0.0002994537353515625,-0.0003025531768798828125,-0.0003054141998291015625,-0.00030803680419921875,-0.0003108978271484375,-0.0003135204315185546875,-0.000316143035888671875,-0.0003187656402587890625,-0.0003211498260498046875,-0.0003235340118408203125,-0.0003259181976318359375,-0.00032806396484375,-0.000330448150634765625,-0.0003325939178466796875,-0.00033473968505859375,-0.00033664703369140625,-0.00033855438232421875,-0.00034046173095703125,-0.00034236907958984375,-0.0003440380096435546875,-0.000345706939697265625,-0.0003473758697509765625,-0.0003488063812255859375,-0.0003502368927001953125,-0.0003516674041748046875,-0.0003528594970703125,-0.000354290008544921875,-0.0003554821014404296875,-0.0003564357757568359375,-0.00035762786865234375,-0.00035858154296875,-0.0003592967987060546875,-0.0003602504730224609375,-0.000360965728759765625,-0.0003616809844970703125,-0.0003621578216552734375,-0.0003626346588134765625,-0.0003631114959716796875,-0.0003635883331298828125,-0.000363826751708984375,-0.0003640651702880859375,-0.0003643035888671875,-0.0003643035888671875,-0.0003643035888671875,-0.0003643035888671875,-0.0003643035888671875,-0.0003640651702880859375,-0.000363826751708984375,-0.00036334991455078125,-0.0003631114959716796875,-0.0003626346588134765625,-0.000361919403076171875,-0.00036144256591796875,-0.0003607273101806640625,-0.0003597736358642578125,-0.000359058380126953125,-0.000358104705810546875,-0.000357151031494140625,-0.0003559589385986328125,-0.0003550052642822265625,-0.00035381317138671875,-0.000352382659912109375,-0.0003511905670166015625,-0.0003497600555419921875,-0.00034809112548828125,-0.000346660614013671875,-0.0003449916839599609375,-0.00034332275390625,-0.0003414154052734375,-0.0003397464752197265625,-0.0003378391265869140625,-0.000335693359375,-0.0003337860107421875,-0.0003316402435302734375,-0.000329494476318359375,-0.00032711029052734375,-0.000324726104736328125,-0.0003223419189453125,-0.000319957733154296875,-0.00031757354736328125,-0.0003149509429931640625,-0.000312328338623046875,-0.000309467315673828125,-0.0003068447113037109375,-0.0003039836883544921875,-0.000300884246826171875,-0.000298023223876953125,-0.0002949237823486328125,-0.0002918243408203125,-0.0002887248992919921875,-0.0002853870391845703125,-0.0002820491790771484375,-0.0002787113189697265625,-0.0002753734588623046875,-0.0002720355987548828125,-0.000268459320068359375,-0.0002648830413818359375,-0.0002610683441162109375,-0.0002574920654296875,-0.0002536773681640625,-0.0002498626708984375,-0.0002460479736328125,-0.0002419948577880859375,-0.0002381801605224609375,-0.000234127044677734375,-0.00022983551025390625,-0.0002257823944091796875,-0.0002214908599853515625,-0.0002171993255615234375,-0.0002129077911376953125,-0.0002086162567138671875,-0.0002043247222900390625,-0.000199794769287109375,-0.0001952648162841796875,-0.00019073486328125,-0.0001862049102783203125,-0.0001814365386962890625,-0.0001766681671142578125,-0.0001718997955322265625,-0.0001671314239501953125,-0.0001623630523681640625,-0.0001575946807861328125,-0.000152587890625,-0.0001475811004638671875,-0.000142574310302734375,-0.0001375675201416015625,-0.00013256072998046875,-0.000127315521240234375,-0.0001220703125,-0.0001170635223388671875,-0.0001118183135986328125,-0.000106334686279296875,-0.0001010894775390625,-0.000095844268798828125,-0.0000903606414794921875,-0.00008487701416015625,-0.000079631805419921875,-0.0000741481781005859375,-0.00006866455078125,-0.0000629425048828125,-0.0000574588775634765625,-0.0000517368316650390625,-0.000046253204345703125,-0.000040531158447265625,-0.000034809112548828125,-0.000029087066650390625,-0.000023365020751953125,-0.000017642974853515625,-0.000011920928955078125,-0.000006198883056640625,-0.0000002384185791015625,0.0000054836273193359375,0.000011444091796875,0.0000174045562744140625,0.0000231266021728515625,0.000029087066650390625,0.0000350475311279296875,0.00004100799560546875,0.0000469684600830078125,0.000052928924560546875,0.0000588893890380859375,0.000064849853515625,0.000071048736572265625,0.0000770092010498046875,0.00008296966552734375,0.000089168548583984375,0.0000951290130615234375,0.0001010894775390625,0.000107288360595703125,0.0001132488250732421875,0.0001194477081298828125,0.000125408172607421875,0.0001316070556640625,0.0001375675201416015625,0.0001437664031982421875,0.00014972686767578125,0.000155925750732421875,0.0001618862152099609375,0.0001680850982666015625,0.000174045562744140625,0.00018024444580078125,0.0001862049102783203125,0.000192165374755859375,0.0001983642578125,0.0002043247222900390625,0.000210285186767578125,0.00021648406982421875,0.0002224445343017578125,0.000228404998779296875,0.0002343654632568359375,0.000240325927734375,0.0002462863922119140625,0.000252246856689453125,0.0002582073211669921875,0.00026416778564453125,0.0002701282501220703125,0.0002758502960205078125,0.000281810760498046875,0.000287532806396484375,0.0002934932708740234375,0.0002992153167724609375,0.0003049373626708984375,0.0003106594085693359375,0.0003163814544677734375,0.0003221035003662109375,0.0003278255462646484375,0.0003335475921630859375,0.000339031219482421875,0.000344753265380859375,0.0003502368927001953125,0.00035572052001953125,0.00036144256591796875,0.000366687774658203125,0.0003721714019775390625,0.000377655029296875,0.0003831386566162109375,0.0003883838653564453125,0.0003936290740966796875,0.0003988742828369140625,0.0004041194915771484375,0.0004093647003173828125,0.0004146099090576171875} \
   CONFIG.Coefficient_Fanout {true} \
   CONFIG.Coefficient_Fractional_Bits {22} \
   CONFIG.Coefficient_Sets {1} \
   CONFIG.Coefficient_Sign {Signed} \
   CONFIG.Coefficient_Structure {Symmetric} \
   CONFIG.Coefficient_Width {16} \
   CONFIG.ColumnConfig {4} \
   CONFIG.Control_Broadcast_Fanout {true} \
   CONFIG.Control_Column_Fanout {true} \
   CONFIG.Control_LUT_Pipeline {true} \
   CONFIG.Control_Path_Fanout {true} \
   CONFIG.Data_Path_Broadcast {false} \
   CONFIG.Data_Path_Fanout {true} \
   CONFIG.Decimation_Rate {256} \
   CONFIG.Disable_Half_Band_Centre_Tap {false} \
   CONFIG.Filter_Architecture {Systolic_Multiply_Accumulate} \
   CONFIG.Filter_Type {Decimation} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Interpolation_Rate {1} \
   CONFIG.No_BRAM_Read_First_Mode {true} \
   CONFIG.No_SRL_Attributes {false} \
   CONFIG.Number_Channels {1} \
   CONFIG.Number_Paths {4} \
   CONFIG.Optimal_Column_Lengths {true} \
   CONFIG.Optimization_Goal {Speed} \
   CONFIG.Optimization_List {Data_Path_Fanout,Pre-Adder_Pipeline,Coefficient_Fanout,Control_Path_Fanout,Control_Column_Fanout,Control_Broadcast_Fanout,Control_LUT_Pipeline,No_BRAM_Read_First_Mode,Optimal_Column_Lengths,Other} \
   CONFIG.Optimization_Selection {All} \
   CONFIG.Other {true} \
   CONFIG.Output_Rounding_Mode {Symmetric_Rounding_to_Infinity} \
   CONFIG.Output_Width {14} \
   CONFIG.Pre_Adder_Pipeline {true} \
   CONFIG.Quantization {Quantize_Only} \
   CONFIG.RateSpecification {Frequency_Specification} \
   CONFIG.Sample_Frequency {125} \
   CONFIG.Zero_Pack_Factor {1} \
 ] $fir_compiler_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S00_AXIS1] [get_bd_intf_pins axis_combiner_2/S00_AXIS]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins S01_AXIS1] [get_bd_intf_pins axis_combiner_2/S01_AXIS]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins S01_AXIS] [get_bd_intf_pins axis_combiner_1/S01_AXIS]
  connect_bd_intf_net -intf_net axis_combiner_1_M_AXIS [get_bd_intf_pins axis_combiner_1/M_AXIS] [get_bd_intf_pins fir_compiler_0/S_AXIS_DATA]
  connect_bd_intf_net -intf_net axis_combiner_2_M_AXIS [get_bd_intf_pins axis_combiner_1/S00_AXIS] [get_bd_intf_pins axis_combiner_2/M_AXIS]
  connect_bd_intf_net -intf_net fir_compiler_0_M_AXIS_DATA [get_bd_intf_pins M_AXIS] [get_bd_intf_pins fir_compiler_0/M_AXIS_DATA]

  # Create port connections
  connect_bd_net -net pll_0_clk_out1 [get_bd_pins aclk] [get_bd_pins axis_combiner_1/aclk] [get_bd_pins axis_combiner_2/aclk] [get_bd_pins fir_compiler_0/aclk]
  connect_bd_net -net slice_0_dout [get_bd_pins aresetn] [get_bd_pins axis_combiner_1/aresetn] [get_bd_pins axis_combiner_2/aresetn] [get_bd_pins fir_compiler_0/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Reg_Brakeout
proc create_hier_cell_Reg_Brakeout { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_Reg_Brakeout() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS1

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS2

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS3

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS4

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS5


  # Create pins
  create_bd_pin -dir I -from 447 -to 0 Din1
  create_bd_pin -dir O -from 3 -to 0 Dout
  create_bd_pin -dir O -from 0 -to 0 Dout7
  create_bd_pin -dir O -from 0 -to 0 Dout8
  create_bd_pin -dir O -from 3 -to 0 Dout9
  create_bd_pin -dir O -from 0 -to 0 Dout10
  create_bd_pin -dir O -from 0 -to 0 Dout11
  create_bd_pin -dir O -from 0 -to 0 Dout12
  create_bd_pin -dir O -from 0 -to 0 Dout13
  create_bd_pin -dir O -from 0 -to 0 Dout14
  create_bd_pin -dir I -from 15 -to 0 In2
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn
  create_bd_pin -dir O -from 31 -to 0 dout1
  create_bd_pin -dir O -from 0 -to 0 dout2
  create_bd_pin -dir O -from 127 -to 0 dout3
  create_bd_pin -dir O -from 0 -to 0 dout4
  create_bd_pin -dir O -from 0 -to 0 dout5
  create_bd_pin -dir O -from 0 -to 0 dout6

  # Create instance: CBC_config
  create_hier_cell_CBC_config $hier_obj CBC_config

  # Create instance: CH1_Config
  create_hier_cell_CH1_Config $hier_obj CH1_Config

  # Create instance: CH1_params, and set properties
  set CH1_params [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 CH1_params ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {255} \
   CONFIG.DIN_TO {64} \
   CONFIG.DIN_WIDTH {448} \
   CONFIG.DOUT_WIDTH {192} \
 ] $CH1_params

  # Create instance: CH2_config
  create_hier_cell_CH2_config $hier_obj CH2_config

  # Create instance: CH2_params, and set properties
  set CH2_params [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 CH2_params ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {447} \
   CONFIG.DIN_TO {256} \
   CONFIG.DIN_WIDTH {448} \
   CONFIG.DOUT_WIDTH {192} \
 ] $CH2_params

  # Create instance: Feedback_config_bus, and set properties
  set Feedback_config_bus [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 Feedback_config_bus ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {511} \
   CONFIG.DIN_TO {64} \
   CONFIG.DIN_WIDTH {512} \
   CONFIG.DOUT_WIDTH {448} \
 ] $Feedback_config_bus

  # Create instance: dna_reader_0, and set properties
  set dna_reader_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:dna_reader:1.0 dna_reader_0 ]

  # Create instance: external_reset_fake, and set properties
  set external_reset_fake [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 external_reset_fake ]

  # Create instance: gng_0, and set properties
  set block_name gng
  set block_cell_name gng_0
  if { [catch {set gng_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $gng_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: status_concat_1, and set properties
  set status_concat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 status_concat_1 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {32} \
   CONFIG.IN1_WIDTH {64} \
   CONFIG.IN2_WIDTH {32} \
   CONFIG.NUM_PORTS {3} \
 ] $status_concat_1

  # Create instance: system_params
  create_hier_cell_system_params $hier_obj system_params

  # Create interface connections
  connect_bd_intf_net -intf_net CH1_Config_M_AXIS3 [get_bd_intf_pins M_AXIS3] [get_bd_intf_pins CH1_Config/M_AXIS3]
  connect_bd_intf_net -intf_net CH2_config_M_AXIS2 [get_bd_intf_pins M_AXIS2] [get_bd_intf_pins CH2_config/M_AXIS2]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins M_AXIS1] [get_bd_intf_pins CBC_config/M_AXIS]
  connect_bd_intf_net -intf_net gng_0_M_AXIS1 [get_bd_intf_pins M_AXIS4] [get_bd_intf_pins gng_0/M_AXIS1]
  connect_bd_intf_net -intf_net gng_0_M_AXIS2 [get_bd_intf_pins M_AXIS5] [get_bd_intf_pins gng_0/M_AXIS2]

  # Create port connections
  connect_bd_net -net CBC_config_Dout11 [get_bd_pins Dout11] [get_bd_pins CBC_config/Dout11]
  connect_bd_net -net CBC_config_Dout12 [get_bd_pins Dout12] [get_bd_pins CBC_config/Dout12]
  connect_bd_net -net CBC_config_Dout13 [get_bd_pins Dout13] [get_bd_pins CBC_config/Dout13]
  connect_bd_net -net CBC_config_Dout14 [get_bd_pins Dout14] [get_bd_pins CBC_config/Dout14]
  connect_bd_net -net CH1_Config_Dout [get_bd_pins Dout] [get_bd_pins CH1_Config/Dout]
  connect_bd_net -net CH1_params_Dout [get_bd_pins CH1_Config/cfg_data] [get_bd_pins CH1_params/Dout]
  connect_bd_net -net CH2_config_Dout9 [get_bd_pins Dout9] [get_bd_pins CH2_config/Dout9]
  connect_bd_net -net CH2_config_Dout10 [get_bd_pins Dout10] [get_bd_pins CH2_config/Dout10]
  connect_bd_net -net CH2_params_Dout [get_bd_pins CH2_config/cfg_data] [get_bd_pins CH2_params/Dout]
  connect_bd_net -net Din1_1 [get_bd_pins Din1] [get_bd_pins CBC_config/Din1] [get_bd_pins CH1_Config/Din1] [get_bd_pins CH1_params/Din] [get_bd_pins CH2_config/Din1] [get_bd_pins CH2_params/Din] [get_bd_pins Feedback_config_bus/Din] [get_bd_pins system_params/Din1]
  connect_bd_net -net Feedback_config_bus_Dout [get_bd_pins CBC_config/cfg_data] [get_bd_pins Feedback_config_bus/Dout]
  connect_bd_net -net In2_1 [get_bd_pins In2] [get_bd_pins status_concat_1/In2]
  connect_bd_net -net RAM_addres_Dout [get_bd_pins dout1] [get_bd_pins system_params/dout1]
  connect_bd_net -net const_0_dout [get_bd_pins dout2] [get_bd_pins external_reset_fake/dout] [get_bd_pins status_concat_1/In0]
  connect_bd_net -net continuous_output_Dout [get_bd_pins Dout8] [get_bd_pins system_params/Dout8]
  connect_bd_net -net dna_reader_0_dna_data [get_bd_pins dna_reader_0/dna_data] [get_bd_pins status_concat_1/In1]
  connect_bd_net -net feedback_trigger_Dout [get_bd_pins dout4] [get_bd_pins system_params/dout4]
  connect_bd_net -net input_select_Dout [get_bd_pins Dout7] [get_bd_pins CH1_Config/Dout7]
  connect_bd_net -net pll_0_clk_out1 [get_bd_pins aclk] [get_bd_pins CBC_config/aclk] [get_bd_pins CH1_Config/aclk] [get_bd_pins CH2_config/aclk] [get_bd_pins dna_reader_0/aclk] [get_bd_pins gng_0/clk]
  connect_bd_net -net pre_memory_reset_Dout [get_bd_pins dout6] [get_bd_pins system_params/dout6]
  connect_bd_net -net ram_writer_reset_Dout [get_bd_pins dout5] [get_bd_pins system_params/dout5]
  connect_bd_net -net rst_0_peripheral_aresetn [get_bd_pins aresetn] [get_bd_pins dna_reader_0/aresetn] [get_bd_pins gng_0/rstn]
  connect_bd_net -net status_concat_1_dout [get_bd_pins dout3] [get_bd_pins status_concat_1/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Memory_IO
proc create_hier_cell_Memory_IO { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_Memory_IO() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS


  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn
  create_bd_pin -dir I -type rst aresetn1
  create_bd_pin -dir O -from 447 -to 0 cfg_data
  create_bd_pin -dir I -from 31 -to 0 cfg_data1
  create_bd_pin -dir I -from 127 -to 0 sts_data
  create_bd_pin -dir O -from 15 -to 0 sts_data1

  # Create instance: axi_cfg_register_0, and set properties
  set axi_cfg_register_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:axi_cfg_register:1.0 axi_cfg_register_0 ]
  set_property -dict [ list \
   CONFIG.AXI_ADDR_WIDTH {32} \
   CONFIG.CFG_DATA_WIDTH {448} \
 ] $axi_cfg_register_0

  # Create instance: axi_sts_register_0, and set properties
  set axi_sts_register_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:axi_sts_register:1.0 axi_sts_register_0 ]
  set_property -dict [ list \
   CONFIG.AXI_ADDR_WIDTH {32} \
   CONFIG.STS_DATA_WIDTH {128} \
 ] $axi_sts_register_0

  # Create instance: axis_ram_writer_0, and set properties
  set axis_ram_writer_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:axis_ram_writer:2.0 axis_ram_writer_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {16} \
   CONFIG.AXI_ID_WIDTH {3} \
 ] $axis_ram_writer_0

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXI1_1 [get_bd_intf_pins S_AXI1] [get_bd_intf_pins axi_sts_register_0/S_AXI]
  connect_bd_intf_net -intf_net S_AXIS_1 [get_bd_intf_pins S_AXIS] [get_bd_intf_pins axis_ram_writer_0/S_AXIS]
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_cfg_register_0/S_AXI]
  connect_bd_intf_net -intf_net axis_ram_writer_0_M_AXI [get_bd_intf_pins M_AXI] [get_bd_intf_pins axis_ram_writer_0/M_AXI]

  # Create port connections
  connect_bd_net -net aresetn1_1 [get_bd_pins aresetn1] [get_bd_pins axis_ram_writer_0/aresetn]
  connect_bd_net -net axi_cfg_register_0_cfg_data [get_bd_pins cfg_data] [get_bd_pins axi_cfg_register_0/cfg_data]
  connect_bd_net -net axis_ram_writer_0_sts_data [get_bd_pins sts_data1] [get_bd_pins axis_ram_writer_0/sts_data]
  connect_bd_net -net cfg_data1_1 [get_bd_pins cfg_data1] [get_bd_pins axis_ram_writer_0/cfg_data]
  connect_bd_net -net pll_0_clk_out1 [get_bd_pins aclk] [get_bd_pins axi_cfg_register_0/aclk] [get_bd_pins axi_sts_register_0/aclk] [get_bd_pins axis_ram_writer_0/aclk]
  connect_bd_net -net rst_0_peripheral_aresetn [get_bd_pins aresetn] [get_bd_pins axi_cfg_register_0/aresetn] [get_bd_pins axi_sts_register_0/aresetn]
  connect_bd_net -net sts_data_1 [get_bd_pins sts_data] [get_bd_pins axi_sts_register_0/sts_data]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Core
proc create_hier_cell_Core { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_Core() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M01_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_ACP


  # Create pins
  create_bd_pin -dir O -from 0 -to 0 -type rst S00_ARESETN
  create_bd_pin -dir I adc_clk_n_i
  create_bd_pin -dir I adc_clk_p_i
  create_bd_pin -dir O -type clk clk_out1
  create_bd_pin -dir O -type clk clk_out2
  create_bd_pin -dir O -type clk clk_out3
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir O locked

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
   CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT4_USED {false} \
   CONFIG.CLKOUT5_JITTER {119.348} \
   CONFIG.CLKOUT5_PHASE_ERROR {96.948} \
   CONFIG.CLKOUT5_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT5_USED {false} \
   CONFIG.CLKOUT6_JITTER {119.348} \
   CONFIG.CLKOUT6_PHASE_ERROR {96.948} \
   CONFIG.CLKOUT6_REQUESTED_OUT_FREQ {100.000} \
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

  # Create instance: rst_0, and set properties
  set rst_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net ps_0_DDR [get_bd_intf_pins DDR] [get_bd_intf_pins ps_0/DDR]
  connect_bd_intf_net -intf_net ps_0_FIXED_IO [get_bd_intf_pins FIXED_IO] [get_bd_intf_pins ps_0/FIXED_IO]
  connect_bd_intf_net -intf_net ps_0_M_AXI_GP0 [get_bd_intf_pins ps_0/M_AXI_GP0] [get_bd_intf_pins ps_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps_0_axi_periph_M00_AXI [get_bd_intf_pins M00_AXI] [get_bd_intf_pins ps_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net ps_0_axi_periph_M01_AXI [get_bd_intf_pins M01_AXI] [get_bd_intf_pins ps_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net writer_0_M_AXI [get_bd_intf_pins S_AXI_ACP] [get_bd_intf_pins ps_0/S_AXI_ACP]

  # Create port connections
  connect_bd_net -net adc_clk_n_i_1 [get_bd_pins adc_clk_n_i] [get_bd_pins pll_0/clk_in1_n]
  connect_bd_net -net adc_clk_p_i_1 [get_bd_pins adc_clk_p_i] [get_bd_pins pll_0/clk_in1_p]
  connect_bd_net -net const_0_dout [get_bd_pins ext_reset_in] [get_bd_pins rst_0/ext_reset_in]
  connect_bd_net -net pll_0_clk_out1 [get_bd_pins clk_out1] [get_bd_pins pll_0/clk_out1] [get_bd_pins ps_0/M_AXI_GP0_ACLK] [get_bd_pins ps_0/S_AXI_ACP_ACLK] [get_bd_pins ps_0_axi_periph/ACLK] [get_bd_pins ps_0_axi_periph/M00_ACLK] [get_bd_pins ps_0_axi_periph/M01_ACLK] [get_bd_pins ps_0_axi_periph/S00_ACLK] [get_bd_pins rst_0/slowest_sync_clk]
  connect_bd_net -net pll_0_clk_out2 [get_bd_pins clk_out2] [get_bd_pins pll_0/clk_out2]
  connect_bd_net -net pll_0_clk_out3 [get_bd_pins clk_out3] [get_bd_pins pll_0/clk_out3]
  connect_bd_net -net pll_0_locked [get_bd_pins locked] [get_bd_pins pll_0/locked] [get_bd_pins rst_0/dcm_locked]
  connect_bd_net -net rst_0_peripheral_aresetn [get_bd_pins S00_ARESETN] [get_bd_pins ps_0_axi_periph/ARESETN] [get_bd_pins ps_0_axi_periph/M00_ARESETN] [get_bd_pins ps_0_axi_periph/M01_ARESETN] [get_bd_pins ps_0_axi_periph/S00_ARESETN] [get_bd_pins rst_0/peripheral_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}


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

  # Create instance: Core
  create_hier_cell_Core [current_bd_instance .] Core

  # Create instance: Memory_IO
  create_hier_cell_Memory_IO [current_bd_instance .] Memory_IO

  # Create instance: Reg_Brakeout
  create_hier_cell_Reg_Brakeout [current_bd_instance .] Reg_Brakeout

  # Create instance: axis_red_pitaya_adc_0, and set properties
  set axis_red_pitaya_adc_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:axis_red_pitaya_adc:3.0 axis_red_pitaya_adc_0 ]

  # Create instance: axis_red_pitaya_dac_0, and set properties
  set axis_red_pitaya_dac_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:axis_red_pitaya_dac:2.0 axis_red_pitaya_dac_0 ]

  # Create instance: ch1_mem_fb_split, and set properties
  set ch1_mem_fb_split [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_broadcaster:1.1 ch1_mem_fb_split ]
  set_property -dict [ list \
   CONFIG.M00_TDATA_REMAP {tdata[15:0]} \
   CONFIG.M01_TDATA_REMAP {tdata[31:16]} \
   CONFIG.M02_TDATA_REMAP {tdata[15:0]} \
   CONFIG.M03_TDATA_REMAP {tdata[31:16]} \
   CONFIG.M04_TDATA_REMAP {tdata[15:0]} \
   CONFIG.M05_TDATA_REMAP {tdata[31:16]} \
   CONFIG.M06_TDATA_REMAP {tdata[15:0]} \
   CONFIG.M07_TDATA_REMAP {tdata[31:16]} \
   CONFIG.M_TDATA_NUM_BYTES {2} \
   CONFIG.NUM_MI {8} \
   CONFIG.S_TDATA_NUM_BYTES {4} \
 ] $ch1_mem_fb_split

  # Create instance: downsampling
  create_hier_cell_downsampling [current_bd_instance .] downsampling

  # Create instance: feedback_and_generation
  create_hier_cell_feedback_and_generation [current_bd_instance .] feedback_and_generation

  # Create interface connections
  connect_bd_intf_net -intf_net Reg_Brakeout_M_AXIS3 [get_bd_intf_pins Reg_Brakeout/M_AXIS3] [get_bd_intf_pins feedback_and_generation/S_AXIS_CFG1]
  connect_bd_intf_net -intf_net Reg_Brakeout_M_AXIS4 [get_bd_intf_pins Reg_Brakeout/M_AXIS4] [get_bd_intf_pins feedback_and_generation/S_AXIS_RNG1]
  connect_bd_intf_net -intf_net S_AXIS_ADC2_1 [get_bd_intf_pins ch1_mem_fb_split/M03_AXIS] [get_bd_intf_pins feedback_and_generation/S_AXIS_ADC2]
  connect_bd_intf_net -intf_net S_AXIS_CFG2_1 [get_bd_intf_pins Reg_Brakeout/M_AXIS1] [get_bd_intf_pins feedback_and_generation/S_AXIS_CFG2]
  connect_bd_intf_net -intf_net S_AXIS_CFG_1 [get_bd_intf_pins Reg_Brakeout/M_AXIS2] [get_bd_intf_pins feedback_and_generation/S_AXIS_CFG]
  connect_bd_intf_net -intf_net S_AXIS_RNG2_1 [get_bd_intf_pins Reg_Brakeout/M_AXIS5] [get_bd_intf_pins feedback_and_generation/S_AXIS_RNG2]
  connect_bd_intf_net -intf_net axis_red_pitaya_adc_0_M_AXIS [get_bd_intf_pins axis_red_pitaya_adc_0/M_AXIS] [get_bd_intf_pins ch1_mem_fb_split/S_AXIS]
  connect_bd_intf_net -intf_net ch1_mem_fb_split_M00_AXIS [get_bd_intf_pins ch1_mem_fb_split/M00_AXIS] [get_bd_intf_pins downsampling/S00_AXIS1]
  connect_bd_intf_net -intf_net ch1_mem_fb_split_M01_AXIS [get_bd_intf_pins ch1_mem_fb_split/M01_AXIS] [get_bd_intf_pins downsampling/S01_AXIS1]
  connect_bd_intf_net -intf_net ch1_mem_fb_split_M02_AXIS [get_bd_intf_pins ch1_mem_fb_split/M02_AXIS] [get_bd_intf_pins feedback_and_generation/S_AXIS_ADC1]
  connect_bd_intf_net -intf_net ch1_mem_fb_split_M04_AXIS [get_bd_intf_pins ch1_mem_fb_split/M04_AXIS] [get_bd_intf_pins feedback_and_generation/S_AXIS_ADC3]
  connect_bd_intf_net -intf_net ch1_mem_fb_split_M05_AXIS [get_bd_intf_pins ch1_mem_fb_split/M05_AXIS] [get_bd_intf_pins feedback_and_generation/S_AXIS_ADC4]
  connect_bd_intf_net -intf_net ch1_mem_fb_split_M06_AXIS [get_bd_intf_pins ch1_mem_fb_split/M06_AXIS] [get_bd_intf_pins feedback_and_generation/S_AXIS_ADC5]
  connect_bd_intf_net -intf_net ch1_mem_fb_split_M07_AXIS [get_bd_intf_pins ch1_mem_fb_split/M07_AXIS] [get_bd_intf_pins feedback_and_generation/S_AXIS_ADC6]
  connect_bd_intf_net -intf_net conv_0_M_AXIS [get_bd_intf_pins Memory_IO/S_AXIS] [get_bd_intf_pins downsampling/M_AXIS]
  connect_bd_intf_net -intf_net feedback_and_generation_M00_AXIS [get_bd_intf_pins downsampling/S01_AXIS] [get_bd_intf_pins feedback_and_generation/M00_AXIS]
  connect_bd_intf_net -intf_net feedback_and_generation_M01_AXIS [get_bd_intf_pins axis_red_pitaya_dac_0/S_AXIS] [get_bd_intf_pins feedback_and_generation/M01_AXIS]
  connect_bd_intf_net -intf_net ps_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins Core/DDR]
  connect_bd_intf_net -intf_net ps_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins Core/FIXED_IO]
  connect_bd_intf_net -intf_net ps_0_axi_periph_M00_AXI [get_bd_intf_pins Core/M00_AXI] [get_bd_intf_pins Memory_IO/S_AXI1]
  connect_bd_intf_net -intf_net ps_0_axi_periph_M01_AXI [get_bd_intf_pins Core/M01_AXI] [get_bd_intf_pins Memory_IO/S_AXI]
  connect_bd_intf_net -intf_net writer_0_M_AXI [get_bd_intf_pins Core/S_AXI_ACP] [get_bd_intf_pins Memory_IO/M_AXI]

  # Create port connections
  connect_bd_net -net Core_clk_out2 [get_bd_pins Core/clk_out2] [get_bd_pins axis_red_pitaya_dac_0/ddr_clk]
  connect_bd_net -net Core_clk_out3 [get_bd_pins Core/clk_out3] [get_bd_pins axis_red_pitaya_dac_0/wrt_clk]
  connect_bd_net -net Core_locked [get_bd_pins Core/locked] [get_bd_pins axis_red_pitaya_dac_0/locked]
  connect_bd_net -net Memory_IO_cfg_data [get_bd_pins Memory_IO/cfg_data] [get_bd_pins Reg_Brakeout/Din1]
  connect_bd_net -net Memory_IO_sts_data1 [get_bd_pins Memory_IO/sts_data1] [get_bd_pins Reg_Brakeout/In2]
  connect_bd_net -net Reg_Brakeout_Dout [get_bd_pins Reg_Brakeout/Dout] [get_bd_pins feedback_and_generation/sel]
  connect_bd_net -net Reg_Brakeout_Dout9 [get_bd_pins Reg_Brakeout/Dout9] [get_bd_pins feedback_and_generation/CH2_sel]
  connect_bd_net -net Reg_Brakeout_dout4 [get_bd_pins Reg_Brakeout/dout4] [get_bd_pins feedback_and_generation/trig_in]
  connect_bd_net -net adc_clk_n_i_1 [get_bd_ports adc_clk_n_i] [get_bd_pins Core/adc_clk_n_i]
  connect_bd_net -net adc_clk_p_i_1 [get_bd_ports adc_clk_p_i] [get_bd_pins Core/adc_clk_p_i]
  connect_bd_net -net adc_dat_a_i_1 [get_bd_ports adc_dat_a_i] [get_bd_pins axis_red_pitaya_adc_0/adc_dat_a]
  connect_bd_net -net adc_dat_b_i_1 [get_bd_ports adc_dat_b_i] [get_bd_pins axis_red_pitaya_adc_0/adc_dat_b]
  connect_bd_net -net axis_red_pitaya_adc_0_adc_csn [get_bd_ports adc_csn_o] [get_bd_pins axis_red_pitaya_adc_0/adc_csn]
  connect_bd_net -net axis_red_pitaya_dac_0_dac_clk [get_bd_ports dac_clk_o] [get_bd_pins axis_red_pitaya_dac_0/dac_clk]
  connect_bd_net -net axis_red_pitaya_dac_0_dac_dat [get_bd_ports dac_dat_o] [get_bd_pins axis_red_pitaya_dac_0/dac_dat]
  connect_bd_net -net axis_red_pitaya_dac_0_dac_rst [get_bd_ports dac_rst_o] [get_bd_pins axis_red_pitaya_dac_0/dac_rst]
  connect_bd_net -net axis_red_pitaya_dac_0_dac_sel [get_bd_ports dac_sel_o] [get_bd_pins axis_red_pitaya_dac_0/dac_sel]
  connect_bd_net -net axis_red_pitaya_dac_0_dac_wrt [get_bd_ports dac_wrt_o] [get_bd_pins axis_red_pitaya_dac_0/dac_wrt]
  connect_bd_net -net const_0_dout [get_bd_pins Core/ext_reset_in] [get_bd_pins Reg_Brakeout/dout2]
  connect_bd_net -net continuous_output_in_1 [get_bd_pins Reg_Brakeout/Dout8] [get_bd_pins feedback_and_generation/continuous_output_in]
  connect_bd_net -net displacement_int_ext_1 [get_bd_pins Reg_Brakeout/Dout14] [get_bd_pins feedback_and_generation/displacement_int_ext]
  connect_bd_net -net feedback_combined_0_trig_out [get_bd_ports exp_p_tri_io] [get_bd_ports led_o] [get_bd_pins feedback_and_generation/exp_p_tri_io]
  connect_bd_net -net input_select1_1 [get_bd_pins Reg_Brakeout/Dout10] [get_bd_pins feedback_and_generation/input_select1]
  connect_bd_net -net input_select2_1 [get_bd_pins Reg_Brakeout/Dout11] [get_bd_pins feedback_and_generation/input_select2]
  connect_bd_net -net input_select_1 [get_bd_pins Reg_Brakeout/Dout7] [get_bd_pins feedback_and_generation/input_select]
  connect_bd_net -net pll_0_clk_out1 [get_bd_pins Core/clk_out1] [get_bd_pins Memory_IO/aclk] [get_bd_pins Reg_Brakeout/aclk] [get_bd_pins axis_red_pitaya_adc_0/aclk] [get_bd_pins axis_red_pitaya_dac_0/aclk] [get_bd_pins ch1_mem_fb_split/aclk] [get_bd_pins downsampling/aclk] [get_bd_pins feedback_and_generation/aclk]
  connect_bd_net -net polynomial_target_1 [get_bd_pins Reg_Brakeout/Dout13] [get_bd_pins feedback_and_generation/polynomial_target]
  connect_bd_net -net rst_0_peripheral_aresetn [get_bd_pins Core/S00_ARESETN] [get_bd_pins Memory_IO/aresetn] [get_bd_pins Reg_Brakeout/aresetn] [get_bd_pins ch1_mem_fb_split/aresetn] [get_bd_pins feedback_and_generation/aresetn]
  connect_bd_net -net slice_0_dout [get_bd_pins Reg_Brakeout/dout6] [get_bd_pins downsampling/aresetn]
  connect_bd_net -net slice_1_dout [get_bd_pins Memory_IO/aresetn1] [get_bd_pins Reg_Brakeout/dout5]
  connect_bd_net -net slice_3_dout [get_bd_pins Memory_IO/cfg_data1] [get_bd_pins Reg_Brakeout/dout1]
  connect_bd_net -net sts_data_1 [get_bd_pins Memory_IO/sts_data] [get_bd_pins Reg_Brakeout/dout3]
  connect_bd_net -net velocity_int_ext_1 [get_bd_pins Reg_Brakeout/Dout12] [get_bd_pins feedback_and_generation/velocity_int_ext]

  # Create address segments
  assign_bd_address -offset 0x40001000 -range 0x00001000 -target_address_space [get_bd_addr_spaces Core/ps_0/Data] [get_bd_addr_segs Memory_IO/axi_cfg_register_0/s_axi/reg0] -force
  assign_bd_address -offset 0x40000000 -range 0x00001000 -target_address_space [get_bd_addr_spaces Core/ps_0/Data] [get_bd_addr_segs Memory_IO/axi_sts_register_0/s_axi/reg0] -force
  assign_bd_address -offset 0x00000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces Memory_IO/axis_ram_writer_0/M_AXI] [get_bd_addr_segs Core/ps_0/S_AXI_ACP/ACP_DDR_LOWOCM] -force


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


