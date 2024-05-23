
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
# gng, AXI_mux, CBC, multiplier_breakout, multiplier_breakout, feedback_combined, bus_multiplexer_combin, bus_multiplexer_combin, bus_multiplexer_combin, bus_multiplexer_combin, bus_multiplexer_combin

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


# Hierarchical cell: Shared_mult_5
proc create_hier_cell_Shared_mult_5 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_Shared_mult_5() - Empty argument(s)!"}
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
  create_bd_pin -dir I -from 31 -to 0 CBC_input_A
  create_bd_pin -dir I -from 31 -to 0 CBC_input_B
  create_bd_pin -dir I -from 31 -to 0 Channel_input_A
  create_bd_pin -dir I -from 31 -to 0 Channel_input_B
  create_bd_pin -dir O -from 55 -to 0 -type data P
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -from 3 -to 0 sel

  # Create instance: Shared_mult5, and set properties
  set Shared_mult5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 Shared_mult5 ]
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
 ] $Shared_mult5

  # Create instance: bus_multiplexer_comb5, and set properties
  set block_name bus_multiplexer_combin
  set block_cell_name bus_multiplexer_comb5
  if { [catch {set bus_multiplexer_comb5 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $bus_multiplexer_comb5 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net CBC_0_OP7 [get_bd_pins CBC_input_A] [get_bd_pins bus_multiplexer_comb5/CBC_input_A]
  connect_bd_net -net CBC_0_OP8 [get_bd_pins CBC_input_B] [get_bd_pins bus_multiplexer_comb5/CBC_input_B]
  connect_bd_net -net CH2_mult1_P [get_bd_pins P] [get_bd_pins Shared_mult5/P]
  connect_bd_net -net CH2_multiplier_breakout_OP1 [get_bd_pins Channel_input_A] [get_bd_pins bus_multiplexer_comb5/Channel_input_A]
  connect_bd_net -net CH2_multiplier_breakout_OP2 [get_bd_pins Channel_input_B] [get_bd_pins bus_multiplexer_comb5/Channel_input_B]
  connect_bd_net -net bus_multiplexer_comb_1_mult_output_A [get_bd_pins Shared_mult5/A] [get_bd_pins bus_multiplexer_comb5/mult_output_A]
  connect_bd_net -net bus_multiplexer_comb_1_mult_output_B [get_bd_pins Shared_mult5/B] [get_bd_pins bus_multiplexer_comb5/mult_output_B]
  connect_bd_net -net pll_0_clk_out1 [get_bd_pins aclk] [get_bd_pins Shared_mult5/CLK]
  connect_bd_net -net sel_1 [get_bd_pins sel] [get_bd_pins bus_multiplexer_comb5/sel]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Shared_mult_4
proc create_hier_cell_Shared_mult_4 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_Shared_mult_4() - Empty argument(s)!"}
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
  create_bd_pin -dir I -from 31 -to 0 CBC_input_A
  create_bd_pin -dir I -from 47 -to 0 CBC_input_B
  create_bd_pin -dir I -from 31 -to 0 Channel_input_A
  create_bd_pin -dir I -from 47 -to 0 Channel_input_B
  create_bd_pin -dir O -from 42 -to 0 -type data P
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -from 3 -to 0 sel

  # Create instance: Shared_mult4, and set properties
  set Shared_mult4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 Shared_mult4 ]
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
 ] $Shared_mult4

  # Create instance: bus_multiplexer_comb4, and set properties
  set block_name bus_multiplexer_combin
  set block_cell_name bus_multiplexer_comb4
  if { [catch {set bus_multiplexer_comb4 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $bus_multiplexer_comb4 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.B_WIDTH {48} \
 ] $bus_multiplexer_comb4

  # Create port connections
  connect_bd_net -net CBC_0_OP5 [get_bd_pins CBC_input_A] [get_bd_pins bus_multiplexer_comb4/CBC_input_A]
  connect_bd_net -net CBC_0_OP6 [get_bd_pins CBC_input_B] [get_bd_pins bus_multiplexer_comb4/CBC_input_B]
  connect_bd_net -net CH2_mult3_P [get_bd_pins P] [get_bd_pins Shared_mult4/P]
  connect_bd_net -net CH2_multiplier_breakout_OP5 [get_bd_pins Channel_input_A] [get_bd_pins bus_multiplexer_comb4/Channel_input_A]
  connect_bd_net -net CH2_multiplier_breakout_OP6 [get_bd_pins Channel_input_B] [get_bd_pins bus_multiplexer_comb4/Channel_input_B]
  connect_bd_net -net bus_multiplexer_comb_3_mult_output_A [get_bd_pins Shared_mult4/A] [get_bd_pins bus_multiplexer_comb4/mult_output_A]
  connect_bd_net -net bus_multiplexer_comb_3_mult_output_B [get_bd_pins Shared_mult4/B] [get_bd_pins bus_multiplexer_comb4/mult_output_B]
  connect_bd_net -net pll_0_clk_out1 [get_bd_pins aclk] [get_bd_pins Shared_mult4/CLK]
  connect_bd_net -net sel_1 [get_bd_pins sel] [get_bd_pins bus_multiplexer_comb4/sel]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Shared_mult_3
proc create_hier_cell_Shared_mult_3 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_Shared_mult_3() - Empty argument(s)!"}
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
  create_bd_pin -dir I -from 31 -to 0 CBC_input_A
  create_bd_pin -dir I -from 31 -to 0 CBC_input_B
  create_bd_pin -dir I -from 31 -to 0 Channel_input_A
  create_bd_pin -dir I -from 31 -to 0 Channel_input_B
  create_bd_pin -dir O -from 55 -to 0 -type data P
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -from 3 -to 0 sel

  # Create instance: Shared_mult3, and set properties
  set Shared_mult3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 Shared_mult3 ]
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
 ] $Shared_mult3

  # Create instance: bus_multiplexer_comb3, and set properties
  set block_name bus_multiplexer_combin
  set block_cell_name bus_multiplexer_comb3
  if { [catch {set bus_multiplexer_comb3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $bus_multiplexer_comb3 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net CBC_0_OP9 [get_bd_pins CBC_input_A] [get_bd_pins bus_multiplexer_comb3/CBC_input_A]
  connect_bd_net -net CBC_0_OP10 [get_bd_pins CBC_input_B] [get_bd_pins bus_multiplexer_comb3/CBC_input_B]
  connect_bd_net -net CH2_OP3 [get_bd_pins Channel_input_A] [get_bd_pins bus_multiplexer_comb3/Channel_input_A]
  connect_bd_net -net CH2_OP4 [get_bd_pins Channel_input_B] [get_bd_pins bus_multiplexer_comb3/Channel_input_B]
  connect_bd_net -net CH2_mult2_P [get_bd_pins P] [get_bd_pins Shared_mult3/P]
  connect_bd_net -net bus_multiplexer_comb_0_mult_output_A [get_bd_pins Shared_mult3/A] [get_bd_pins bus_multiplexer_comb3/mult_output_A]
  connect_bd_net -net bus_multiplexer_comb_0_mult_output_B [get_bd_pins Shared_mult3/B] [get_bd_pins bus_multiplexer_comb3/mult_output_B]
  connect_bd_net -net pll_0_clk_out1 [get_bd_pins aclk] [get_bd_pins Shared_mult3/CLK]
  connect_bd_net -net sel_1 [get_bd_pins sel] [get_bd_pins bus_multiplexer_comb3/sel]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Shared_mult_2
proc create_hier_cell_Shared_mult_2 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_Shared_mult_2() - Empty argument(s)!"}
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
  create_bd_pin -dir I -from 31 -to 0 CBC_input_A
  create_bd_pin -dir I -from 31 -to 0 CBC_input_B
  create_bd_pin -dir I -from 31 -to 0 Channel_input_A
  create_bd_pin -dir I -from 31 -to 0 Channel_input_B
  create_bd_pin -dir O -from 55 -to 0 -type data P
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -from 3 -to 0 sel

  # Create instance: Shared_mult2, and set properties
  set Shared_mult2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 Shared_mult2 ]
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
 ] $Shared_mult2

  # Create instance: bus_multiplexer_comb2, and set properties
  set block_name bus_multiplexer_combin
  set block_cell_name bus_multiplexer_comb2
  if { [catch {set bus_multiplexer_comb2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $bus_multiplexer_comb2 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net CBC_0_OP3 [get_bd_pins CBC_input_A] [get_bd_pins bus_multiplexer_comb2/CBC_input_A]
  connect_bd_net -net CBC_0_OP4 [get_bd_pins CBC_input_B] [get_bd_pins bus_multiplexer_comb2/CBC_input_B]
  connect_bd_net -net CH1_OP3 [get_bd_pins Channel_input_A] [get_bd_pins bus_multiplexer_comb2/Channel_input_A]
  connect_bd_net -net CH1_OP4 [get_bd_pins Channel_input_B] [get_bd_pins bus_multiplexer_comb2/Channel_input_B]
  connect_bd_net -net CH1_mult2_P [get_bd_pins P] [get_bd_pins Shared_mult2/P]
  connect_bd_net -net bus_multiplexer_comb_5_mult_output_A [get_bd_pins Shared_mult2/A] [get_bd_pins bus_multiplexer_comb2/mult_output_A]
  connect_bd_net -net bus_multiplexer_comb_5_mult_output_B [get_bd_pins Shared_mult2/B] [get_bd_pins bus_multiplexer_comb2/mult_output_B]
  connect_bd_net -net pll_0_clk_out1 [get_bd_pins aclk] [get_bd_pins Shared_mult2/CLK]
  connect_bd_net -net sel_1 [get_bd_pins sel] [get_bd_pins bus_multiplexer_comb2/sel]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Shared_mult_1
proc create_hier_cell_Shared_mult_1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_Shared_mult_1() - Empty argument(s)!"}
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
  create_bd_pin -dir I -from 31 -to 0 CBC_input_A
  create_bd_pin -dir I -from 31 -to 0 CBC_input_B
  create_bd_pin -dir I -from 31 -to 0 Channel_input_A
  create_bd_pin -dir I -from 31 -to 0 Channel_input_B
  create_bd_pin -dir O -from 55 -to 0 -type data P
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -from 3 -to 0 sel

  # Create instance: Shared_mult1, and set properties
  set Shared_mult1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 Shared_mult1 ]
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
 ] $Shared_mult1

  # Create instance: bus_multiplexer_comb1, and set properties
  set block_name bus_multiplexer_combin
  set block_cell_name bus_multiplexer_comb1
  if { [catch {set bus_multiplexer_comb1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $bus_multiplexer_comb1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net CBC_0_OP1 [get_bd_pins CBC_input_A] [get_bd_pins bus_multiplexer_comb1/CBC_input_A]
  connect_bd_net -net CBC_0_OP2 [get_bd_pins CBC_input_B] [get_bd_pins bus_multiplexer_comb1/CBC_input_B]
  connect_bd_net -net CH1_OP1 [get_bd_pins Channel_input_A] [get_bd_pins bus_multiplexer_comb1/Channel_input_A]
  connect_bd_net -net CH1_OP2 [get_bd_pins Channel_input_B] [get_bd_pins bus_multiplexer_comb1/Channel_input_B]
  connect_bd_net -net CH1_mult1_P [get_bd_pins P] [get_bd_pins Shared_mult1/P]
  connect_bd_net -net bus_multiplexer_comb_4_mult_output_A [get_bd_pins Shared_mult1/A] [get_bd_pins bus_multiplexer_comb1/mult_output_A]
  connect_bd_net -net bus_multiplexer_comb_4_mult_output_B [get_bd_pins Shared_mult1/B] [get_bd_pins bus_multiplexer_comb1/mult_output_B]
  connect_bd_net -net pll_0_clk_out1 [get_bd_pins aclk] [get_bd_pins Shared_mult1/CLK]
  connect_bd_net -net sel_1 [get_bd_pins sel] [get_bd_pins bus_multiplexer_comb1/sel]

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
  create_bd_pin -dir I -from 511 -to 0 Din1
  create_bd_pin -dir O -from 0 -to 0 Dout8
  create_bd_pin -dir O -from 0 -to 0 Dout15
  create_bd_pin -dir O -from 31 -to 0 dout1
  create_bd_pin -dir O -from 0 -to 0 dout4
  create_bd_pin -dir O -from 0 -to 0 dout5
  create_bd_pin -dir O -from 0 -to 0 dout6

  # Create instance: Fast_mode, and set properties
  set Fast_mode [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 Fast_mode ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {4} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {512} \
   CONFIG.DOUT_WIDTH {1} \
 ] $Fast_mode

  # Create instance: RAM_addres, and set properties
  set RAM_addres [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 RAM_addres ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {63} \
   CONFIG.DIN_TO {32} \
   CONFIG.DIN_WIDTH {512} \
   CONFIG.DOUT_WIDTH {32} \
 ] $RAM_addres

  # Create instance: continuous_output, and set properties
  set continuous_output [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 continuous_output ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {3} \
   CONFIG.DIN_WIDTH {512} \
   CONFIG.DOUT_WIDTH {1} \
 ] $continuous_output

  # Create instance: feedback_trigger, and set properties
  set feedback_trigger [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 feedback_trigger ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {512} \
   CONFIG.DOUT_WIDTH {1} \
 ] $feedback_trigger

  # Create instance: pre_memory_reset, and set properties
  set pre_memory_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 pre_memory_reset ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {512} \
   CONFIG.DOUT_WIDTH {1} \
 ] $pre_memory_reset

  # Create instance: ram_writer_reset, and set properties
  set ram_writer_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 ram_writer_reset ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {512} \
   CONFIG.DOUT_WIDTH {1} \
 ] $ram_writer_reset

  # Create port connections
  connect_bd_net -net Din1_1 [get_bd_pins Din1] [get_bd_pins Fast_mode/Din] [get_bd_pins RAM_addres/Din] [get_bd_pins continuous_output/Din] [get_bd_pins feedback_trigger/Din] [get_bd_pins pre_memory_reset/Din] [get_bd_pins ram_writer_reset/Din]
  connect_bd_net -net Fast_mode_Dout [get_bd_pins Dout15] [get_bd_pins Fast_mode/Dout]
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
  create_bd_pin -dir I -from 511 -to 0 Din1
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
   CONFIG.DIN_WIDTH {512} \
   CONFIG.DOUT_WIDTH {4} \
 ] $Feedback_State_1

  # Create instance: input_select_2, and set properties
  set input_select_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 input_select_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {16} \
   CONFIG.DIN_TO {16} \
   CONFIG.DIN_WIDTH {512} \
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
  create_bd_pin -dir I -from 511 -to 0 Din1
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
   CONFIG.DIN_WIDTH {512} \
   CONFIG.DOUT_WIDTH {4} \
 ] $Feedback_State

  # Create instance: input_select, and set properties
  set input_select [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 input_select ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {8} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {512} \
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
  create_bd_pin -dir I -from 511 -to 0 Din1
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
   CONFIG.DIN_WIDTH {512} \
   CONFIG.DOUT_WIDTH {1} \
 ] $Displacement_int_ext

  # Create instance: Polynomial_target, and set properties
  set Polynomial_target [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 Polynomial_target ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {27} \
   CONFIG.DIN_TO {27} \
   CONFIG.DIN_WIDTH {512} \
   CONFIG.DOUT_WIDTH {1} \
 ] $Polynomial_target

  # Create instance: Velocity_int_ext, and set properties
  set Velocity_int_ext [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 Velocity_int_ext ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {25} \
   CONFIG.DIN_TO {25} \
   CONFIG.DIN_WIDTH {512} \
   CONFIG.DOUT_WIDTH {1} \
 ] $Velocity_int_ext

  # Create instance: input_order, and set properties
  set input_order [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 input_order ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {24} \
   CONFIG.DIN_TO {24} \
   CONFIG.DIN_WIDTH {512} \
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
  
  # Create instance: CH1_mult2, and set properties
  set CH1_mult2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 CH1_mult2 ]
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
 ] $CH1_mult2

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
  
  # Create instance: Shared_mult_1
  create_hier_cell_Shared_mult_1 $hier_obj Shared_mult_1

  # Create instance: Shared_mult_2
  create_hier_cell_Shared_mult_2 $hier_obj Shared_mult_2

  # Create instance: Shared_mult_3
  create_hier_cell_Shared_mult_3 $hier_obj Shared_mult_3

  # Create instance: Shared_mult_4
  create_hier_cell_Shared_mult_4 $hier_obj Shared_mult_4

  # Create instance: Shared_mult_5
  create_hier_cell_Shared_mult_5 $hier_obj Shared_mult_5

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
  
  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins M00_AXIS] [get_bd_intf_pins ch1_output_dac_mem_split/M00_AXIS]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins S_AXIS_ADC1] [get_bd_intf_pins CH1_multiplier_breakout/S_AXIS_ADC1]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins S_AXIS_ADC2] [get_bd_intf_pins CH1_multiplier_breakout/S_AXIS_ADC2]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins M01_AXIS] [get_bd_intf_pins ch1_output_dac_mem_split/M01_AXIS]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins S_AXIS_ADC3] [get_bd_intf_pins CH2_multiplier_breakout/S_AXIS_ADC1]
  connect_bd_intf_net -intf_net Conn7 [get_bd_intf_pins S_AXIS_ADC4] [get_bd_intf_pins CH2_multiplier_breakout/S_AXIS_ADC2]
  connect_bd_intf_net -intf_net Conn8 [get_bd_intf_pins S_AXIS_ADC5] [get_bd_intf_pins CBC_0/S_AXIS_ADC1]
  connect_bd_intf_net -intf_net Conn9 [get_bd_intf_pins S_AXIS_ADC6] [get_bd_intf_pins CBC_0/S_AXIS_ADC2]
  connect_bd_intf_net -intf_net Conn10 [get_bd_intf_pins S_AXIS_CFG2] [get_bd_intf_pins CBC_0/S_AXIS_CFG]
  connect_bd_intf_net -intf_net S_AXIS_CFG1_1 [get_bd_intf_pins S_AXIS_CFG1] [get_bd_intf_pins CH1_multiplier_breakout/S_AXIS_CFG]
  connect_bd_intf_net -intf_net S_AXIS_CFG_1 [get_bd_intf_pins S_AXIS_CFG] [get_bd_intf_pins CH2_multiplier_breakout/S_AXIS_CFG]
  connect_bd_intf_net -intf_net S_AXIS_RNG1_1 [get_bd_intf_pins S_AXIS_RNG1] [get_bd_intf_pins CH1_multiplier_breakout/S_AXIS_RNG]
  connect_bd_intf_net -intf_net S_AXIS_RNG2_1 [get_bd_intf_pins S_AXIS_RNG2] [get_bd_intf_pins CH2_multiplier_breakout/S_AXIS_RNG]
  connect_bd_intf_net -intf_net feedback_combined_0_M_AXIS [get_bd_intf_pins ch1_output_dac_mem_split/S_AXIS] [get_bd_intf_pins feedback_combined_0/M_AXIS]

  # Create port connections
  connect_bd_net -net CBC_0_OP1 [get_bd_pins CBC_0/OP1] [get_bd_pins Shared_mult_1/CBC_input_A]
  connect_bd_net -net CBC_0_OP2 [get_bd_pins CBC_0/OP2] [get_bd_pins Shared_mult_1/CBC_input_B]
  connect_bd_net -net CBC_0_OP3 [get_bd_pins CBC_0/OP3] [get_bd_pins Shared_mult_2/CBC_input_A]
  connect_bd_net -net CBC_0_OP4 [get_bd_pins CBC_0/OP4] [get_bd_pins Shared_mult_2/CBC_input_B]
  connect_bd_net -net CBC_0_OP5 [get_bd_pins CBC_0/OP5] [get_bd_pins Shared_mult_4/CBC_input_A]
  connect_bd_net -net CBC_0_OP6 [get_bd_pins CBC_0/OP6] [get_bd_pins Shared_mult_4/CBC_input_B]
  connect_bd_net -net CBC_0_OP7 [get_bd_pins CBC_0/OP7] [get_bd_pins Shared_mult_5/CBC_input_A]
  connect_bd_net -net CBC_0_OP8 [get_bd_pins CBC_0/OP8] [get_bd_pins Shared_mult_5/CBC_input_B]
  connect_bd_net -net CBC_0_OP9 [get_bd_pins CBC_0/OP9] [get_bd_pins Shared_mult_3/CBC_input_A]
  connect_bd_net -net CBC_0_OP10 [get_bd_pins CBC_0/OP10] [get_bd_pins Shared_mult_3/CBC_input_B]
  connect_bd_net -net CBC_OFFSET [get_bd_pins CBC_0/OFFSET] [get_bd_pins feedback_combined_0/CBC_offset]
  connect_bd_net -net CBC_trigger_out [get_bd_pins CBC_0/trigger_out] [get_bd_pins feedback_combined_0/trig_in_CBC]
  connect_bd_net -net CH1_OP1 [get_bd_pins CH1_multiplier_breakout/OP1] [get_bd_pins Shared_mult_1/Channel_input_A]
  connect_bd_net -net CH1_OP2 [get_bd_pins CH1_multiplier_breakout/OP2] [get_bd_pins Shared_mult_1/Channel_input_B]
  connect_bd_net -net CH1_OP3 [get_bd_pins CH1_multiplier_breakout/OP3] [get_bd_pins Shared_mult_2/Channel_input_A]
  connect_bd_net -net CH1_OP4 [get_bd_pins CH1_multiplier_breakout/OP4] [get_bd_pins Shared_mult_2/Channel_input_B]
  connect_bd_net -net CH1_mult2_P [get_bd_pins CH1_mult2/P] [get_bd_pins feedback_combined_0/CH1_product_2]
  connect_bd_net -net CH1_multiplier_breakout_OFFSET [get_bd_pins CH1_multiplier_breakout/OFFSET] [get_bd_pins feedback_combined_0/CH1_offset]
  connect_bd_net -net CH1_multiplier_breakout_OP7 [get_bd_pins CH1_multiplier_breakout/OP7] [get_bd_pins feedback_combined_0/CH1_product_1]
  connect_bd_net -net CH2_OP3 [get_bd_pins CH2_multiplier_breakout/OP3] [get_bd_pins Shared_mult_3/Channel_input_A]
  connect_bd_net -net CH2_OP4 [get_bd_pins CH2_multiplier_breakout/OP4] [get_bd_pins Shared_mult_3/Channel_input_B]
  connect_bd_net -net CH2_multiplier_breakout_OFFSET [get_bd_pins CH2_multiplier_breakout/OFFSET] [get_bd_pins feedback_combined_0/CH2_offset]
  connect_bd_net -net CH2_multiplier_breakout_OP1 [get_bd_pins CH2_multiplier_breakout/OP1] [get_bd_pins Shared_mult_5/Channel_input_A]
  connect_bd_net -net CH2_multiplier_breakout_OP2 [get_bd_pins CH2_multiplier_breakout/OP2] [get_bd_pins Shared_mult_5/Channel_input_B]
  connect_bd_net -net CH2_multiplier_breakout_OP5 [get_bd_pins CH2_multiplier_breakout/OP5] [get_bd_pins Shared_mult_4/Channel_input_A]
  connect_bd_net -net CH2_multiplier_breakout_OP6 [get_bd_pins CH2_multiplier_breakout/OP6] [get_bd_pins Shared_mult_4/Channel_input_B]
  connect_bd_net -net CH2_multiplier_breakout_OP7 [get_bd_pins CH2_multiplier_breakout/OP7] [get_bd_pins feedback_combined_0/CH2_product_1]
  connect_bd_net -net Net1 [get_bd_pins CH2_sel] [get_bd_pins CH2_multiplier_breakout/sel] [get_bd_pins feedback_combined_0/CH2_sel]
  connect_bd_net -net Shared_mult_1_P [get_bd_pins Shared_mult_1/P] [get_bd_pins feedback_combined_0/Shared_product_1]
  connect_bd_net -net Shared_mult_2_P [get_bd_pins Shared_mult_2/P] [get_bd_pins feedback_combined_0/Shared_product_2]
  connect_bd_net -net Shared_mult_3_P [get_bd_pins Shared_mult_3/P] [get_bd_pins feedback_combined_0/Shared_product_3]
  connect_bd_net -net Shared_mult_4_P [get_bd_pins Shared_mult_4/P] [get_bd_pins feedback_combined_0/Shared_product_4]
  connect_bd_net -net Shared_mult_5_P [get_bd_pins Shared_mult_5/P] [get_bd_pins feedback_combined_0/Shared_product_5]
  connect_bd_net -net continuous_output_in_1 [get_bd_pins continuous_output_in] [get_bd_pins feedback_combined_0/continuous_output_in]
  connect_bd_net -net displacement_int_ext_1 [get_bd_pins displacement_int_ext] [get_bd_pins CBC_0/displacement_int_ext]
  connect_bd_net -net feedback_combined_0_trig_out [get_bd_pins exp_p_tri_io] [get_bd_pins feedback_combined_0/trig_out]
  connect_bd_net -net input_select1_1 [get_bd_pins input_select1] [get_bd_pins CH2_multiplier_breakout/input_select]
  connect_bd_net -net input_select2_1 [get_bd_pins input_select2] [get_bd_pins CBC_0/input_select]
  connect_bd_net -net input_select_1 [get_bd_pins input_select] [get_bd_pins CH1_multiplier_breakout/input_select]
  connect_bd_net -net multiplier_breakout_0_OP5 [get_bd_pins CH1_mult2/A] [get_bd_pins CH1_multiplier_breakout/OP5]
  connect_bd_net -net multiplier_breakout_0_OP6 [get_bd_pins CH1_mult2/B] [get_bd_pins CH1_multiplier_breakout/OP6]
  connect_bd_net -net multiplier_breakout_0_trigger_out [get_bd_pins CH1_multiplier_breakout/trigger_out] [get_bd_pins feedback_combined_0/trig_in_channels]
  connect_bd_net -net pll_0_clk_out1 [get_bd_pins aclk] [get_bd_pins CBC_0/aclk] [get_bd_pins CH1_mult2/CLK] [get_bd_pins CH1_multiplier_breakout/aclk] [get_bd_pins CH2_multiplier_breakout/aclk] [get_bd_pins Shared_mult_1/aclk] [get_bd_pins Shared_mult_2/aclk] [get_bd_pins Shared_mult_3/aclk] [get_bd_pins Shared_mult_4/aclk] [get_bd_pins Shared_mult_5/aclk] [get_bd_pins ch1_output_dac_mem_split/aclk] [get_bd_pins feedback_combined_0/aclk]
  connect_bd_net -net polynomial_target_1 [get_bd_pins polynomial_target] [get_bd_pins CBC_0/polynomial_target]
  connect_bd_net -net rst_0_peripheral_aresetn [get_bd_pins aresetn] [get_bd_pins ch1_output_dac_mem_split/aresetn]
  connect_bd_net -net sel_1 [get_bd_pins sel] [get_bd_pins CBC_0/sel] [get_bd_pins CH1_multiplier_breakout/sel] [get_bd_pins Shared_mult_1/sel] [get_bd_pins Shared_mult_2/sel] [get_bd_pins Shared_mult_3/sel] [get_bd_pins Shared_mult_4/sel] [get_bd_pins Shared_mult_5/sel] [get_bd_pins feedback_combined_0/CH1_sel]
  connect_bd_net -net trig_in_1 [get_bd_pins trig_in] [get_bd_pins CBC_0/trigger_in] [get_bd_pins CH1_multiplier_breakout/trigger_in] [get_bd_pins CH2_multiplier_breakout/trigger_in]
  connect_bd_net -net velocity_int_ext_1 [get_bd_pins velocity_int_ext] [get_bd_pins CBC_0/velocity_int_ext]

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
  create_bd_pin -dir I -from 0 -to 0 select1

  # Create instance: AXI_mux_0, and set properties
  set block_name AXI_mux
  set block_cell_name AXI_mux_0
  if { [catch {set AXI_mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $AXI_mux_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.AXIS_TDATA_WIDTH {64} \
 ] $AXI_mux_0

  # Create instance: axis_broadcaster_0, and set properties
  set axis_broadcaster_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_broadcaster:1.1 axis_broadcaster_0 ]

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
   CONFIG.CoefficientVector {0.00085820726119532236061265839666134525 , 0.000847445614500919822825730776116870402, 0.000836589486417519214746241207336652224, 0.000825640267321946360809525877755277179, 0.000814599362046454717259380551297454076, 0.000803468189727183723994330399875707371, 0.000792248183650667544067336400814838271, 0.000780940791098336186022710325715934232, 0.000769547473189178144609146059451632027, 0.000758069704720390003319097083078759169, 0.000746508974006252932695271162799599551, 0.000734866782715011762974754994104387151, 0.000723144645704005021788485230160858919, 0.000711344090852875175073899427502510662, 0.000699466658895013895270997839048732203, 0.000687513903247200398177740865435225714, 0.00067548738983741235704372218862090449 , 0.000663388696930951207546278691751240331, 0.000651219414954746209957259228673365214, 0.000638981146319990466267424444879452494, 0.000626675505243084172458944980377282263, 0.00061430411756482482428520786044146007 , 0.000601868620568014379458576801340541351, 0.000589370662793375281289509626247991037, 0.00057681190385390848380381401128147445 , 0.000564194014247549496289535486681643306, 0.000551518675168348286586006423704020563, 0.000538787578316058659785858786506196338, 0.000526002425704173541542996161979317549, 0.000513164929466482819080119792687355584, 0.000500276811662107986564129724627036921, 0.000487339804079101089964720650016261061, 0.000474355648036610681901603658872090818, 0.00046132609418555905848868814445040698 , 0.00044825290230800289527010593637612601 , 0.000435137841115073957781039792891419893, 0.00042198268804358705658802408677843232 , 0.000408789229051303700055580714334269032, 0.000395559258410903703383904028711981482, 0.000382294578502700586799395443549087759, 0.00036899699960603522287672095814059503 , 0.000355668339689533131563886625414738774, 0.000342310424200069894108688917100380422, 0.000328925085850599618376988164669683101, 0.000315514164406829108328045307985121326, 0.000302079506472735623452685604917178352, 0.000288622965275019680627538454231739706, 0.000275146400446421937353164155481977105, 0.00026165167780803827218480406280320949 , 0.000248140669150568714956817117922582838, 0.000234615252014599539719802434589723816, 0.000221077309469861626881406757583192757, 0.000207528729893571590309209184965766326, 0.000193971406747860466990296401945670368, 0.000180407238356245788008999642038077127, 0.000166838127679325111049624119630152563, 0.000153265982089504911121263797113556393, 0.000139692713145045095766288989480585769, 0.000126120236363182300787927347940353684, 0.000112550470992602908619842350113060547, 0.000098985339785106005042539245586397101, 0.000085426768766575699115897735147484582, 0.000071876687007300346828053694281379649, 0.000058337026391583072441708590627484909, 0.000044809721386781511606733907626676228, 0.000031296708811719028920858565179230482, 0.000017799927604516442981689994251581766, 0.000004321318589924616945774880905073445,-0.000009137175753920064952490545651109244,-0.000022573611529159602140728879682285424,-0.000035986043652410737523489325795367222,-0.000049372526089292681668319051624393978,-0.000062731112089482545294237547661708732,-0.000076059854422025276361740697694813207,-0.000089356805611054797777378921885826912,-0.000102620018171816526197231977945989456,-0.000115847544846958068237748051831914609,-0.000129037438843130730344380130425463449,-0.000142187754067753686091149512016329481,-0.000155296545366005581990942463477267665,-0.00016836186875802445920072281104751255 ,-0.000181381781676189098809898192499190372,-0.000194354343202558674198396349019901663,-0.000207277614306372603720368674729002123,-0.000220149658081629197780779150228624985,-0.000232968539984663980651341530503373178,-0.000245732328071750780532078728413125646,-0.000258439093236644489536002478047294062,-0.00027108690944809005077612007461596022 ,-0.000283673853987238149855498736684467076,-0.00029619800768490231468454965124692535 ,-0.000308657455158739091154174172260127307,-0.000321050285050172889197289682883251771,-0.000333374590261176358910871764251737659,-0.000345628468190778577722593878362999931,-0.000357810020971321973703993535309564322,-0.000369917355704421635387291189545067027,-0.000381948584696592096775907831940344295,-0.000393901825694551355368233647169518008,-0.000405775202120101726073475578715488155,-0.000417566843304629977534636608993423579,-0.000429274884723148634092099173997780781,-0.000440897468227880882842700804857827279,-0.000452432742281347344010661304380960246,-0.000463878862188908571827922200370153405,-0.0004752339903307798742171375039333725  ,-0.00048649629639342011414027133753279486 ,-0.000497663957600351955327944164508835456,-0.000508735158942310336342707000056861943,-0.000519708093406713806175489800409650343,-0.00053058096220647129812042486207701586 ,-0.000541351975008008603346132403544288536,-0.000552019350158589570953804326336467057,-0.000562581314912813748065067986914300491,-0.000573036105658309758738300221381223309,-0.000583381968140591895648217057868123447,-0.000593617157687043061654874609445187161,-0.000603739939429991318356472085326913657,-0.000613748588528860634407069429840930752,-0.000623641390391386834721187959473809315,-0.000633416640893813315434102140244476686,-0.000643072646600103821172556006757758951,-0.000652607724980102136755344410801171762,-0.000662020204626633597573548417614119899,-0.000671308425471511230515908597027419091,-0.000680470739000407168900474985662185645,-0.000689505508466609290732507453469679604,-0.000698411109103547612757256768389879653,-0.00070718592833616861128426256399848171 ,-0.00071582836599106639680067942776986456 ,-0.000724336834505329000589990418035313269,-0.000732709759134142165661052192859870047,-0.000740945578157055774297379269199836926,-0.00074904274308292299530687152753216651 ,-0.000756999718853482985933545101886466   ,-0.000764814984045548117153057177119990229,-0.00077248703107176764151575731887078291 ,-0.000780014366379989596000932294828089653,-0.000787395510651086824073507930421556011,-0.00079462899899537526963999578555331027 ,-0.000801713381147463322040636057863594033,-0.000808647221659559317132048850140790819,-0.00081542910009323730288061105042629606 ,-0.000822057611209599269942727151061490076,-0.000828531365157821053646358677724492736,-0.000834848987662062933835793732129104683,-0.000841009120206705576040795424574980643,-0.000847010420219906543480570260129525195,-0.000852851561255452985353675554591745822,-0.000858531233172854556581765628209268471,-0.000864048142315702156178447435053158188,-0.000869401011688231877341803688352683821,-0.00087458858113008094200407915863593189 ,-0.000879609607489205479018135047653004222,-0.000884462864793009802440171274184876893,-0.000889147144417481191495944425895459062,-0.000893661255254582140815367008457315023,-0.000898004023877569290852662664548233806,-0.000902174294704501957518905097543893135,-0.000906170930159711494368546258471042165,-0.000909992810833321476120250093089225629,-0.000913638835638755602945593192742990141,-0.000917107921968212292003486130198552928,-0.000920399005846122436093337260132329902,-0.000923511042080506195338374109127244083,-0.000926443004412279237300142931132995727,-0.000929193885662429820866681229318828628,-0.000931762697877056640834159129127556298,-0.000934148472470331184269731750191567698,-0.000936350260365204946355621729026097455,-0.000938367132132004728821417227635492964,-0.000940198178124778327288679768969359429,-0.000941842508615481572090133433050596068,-0.000943299253925846043801473062018203564,-0.000944567564557054640400624023754971859,-0.000945646611317136091476309722736459662,-0.00094653558544603917136728288284075461 ,-0.000947233698738424016207171352021987332,-0.000947740183664121864197393829698512491,-0.00094805429348627113378400466103812505 ,-0.000948175302377045055128579331693572385,-0.000948102505531073528818875040258262743,-0.000947835219276440816942030931357976442,-0.000947372781183261993866173700240551625,-0.000946714550169891282636880358580810935,-0.000945859906606637485318445079940374853,-0.000944808252417076604480483670300827725,-0.00094355901117688120802867723924123311 ,-0.000942111628210165019496613592053790853,-0.000940465570683384475582367034718345167,-0.00093862032769664242685958566170256745 ,-0.000936575410372586210708267806523963372,-0.000934330351942690086504417212864836983,-0.000931884707831032296429518702041150391,-0.000929238055735532274270749297784277587,-0.000926389995706578504852668487501432537,-0.00092334015022312292825246160532515205 ,-0.000920088164266145286385167878506763373,-0.000916633705389556909318149457988056383,-0.000912976463788461433529475286263732414,-0.000909116152364810399186256795189819968,-0.000905052506790451883299242208380519514,-0.000900785285567461796972510423842095406,-0.000896314270085930993835210411901925909,-0.000891639264678983868225858877565315197,-0.000886760096675248753010645241801057637,-0.000881676616448517740110002449682724546,-0.00087638869746483509873269390766381548 ,-0.000870896236326851335730891978670342723,-0.000865199152815448427507327711083462418,-0.000859297389928727621717652329635939168,-0.000853190913918193817415402957493597569,-0.000846879714322323548514326319036626955,-0.00084036380399730818691050870938852313 ,-0.000833643219145125779871718929570079126,-0.000826718019338892624175985091028451279,-0.000819588287545385397840635999244796039,-0.00081225413014491545330569843841317379 ,-0.000804715676948376595553624746059995232,-0.000796973081211615531384284683014129769,-0.000789026519646931893438301930387979155,-0.000780876192431925438344753054309421714,-0.000772522323215537221226256736628101862,-0.000763965159121273579279076670900394674,-0.000755204970747749859162623042863060618,-0.000746242052166367405424685088632941188,-0.000737076720916318532672573127229043166,-0.000727709317996701340013065983924889224,-0.000718140207855933669460479773505312551,-0.000708369778378388254176656335658890384,-0.000698398440868195388535333290036533072,-0.000688226630030348862122890896131366389,-0.000677854803948920977066383564135776396,-0.000667283444062620511097461140082032216,-0.000656513055137493591051356389698412386,-0.000645544165236863753953855393774574623,-0.000634377325688550335394677581746236683,-0.000623013111049205807467910034347369219,-0.000611452119066016228608739790928439106,-0.000599694970635515764087464241072211735,-0.000587742309759711626174216725360111013,-0.000575594803499449394514064781702700202,-0.000563253141924950737236266196106271309,-0.000550718038063684862080948700935323359,-0.000537990227845430040755358991333423546,-0.000525070470044613135315869634212049277,-0.00051195954621993558335268925674199636 ,-0.00049865826065120593627716383267056699 ,-0.000485167440273512144948558910684255352,-0.00047148793460860934307135594600879358 ,-0.000457620615693638758524758314294444972,-0.000443566378007122566733827495610853475,-0.000429326138392258430109826861098554218,-0.000414900835977501309444898103251375687,-0.00040029143209447911374437856224517418 ,-0.000385498910193242784807954315340339235,-0.000370524275754818290494474464225049815,-0.000355368556201091860113211451377424055,-0.000340032800802083756252364166172696969,-0.000324518080580552415598249993422541593,-0.000308825488213937036051370821354566942,-0.000292956137933745675103885952594851005,-0.000276911165422273391947122211931286984,-0.000260691727706744271007149871266506125,-0.000244299003050828808861205665436955314,-0.0002277341908436421845114000506171692  ,-0.000210998511486128355590236038707985244,-0.000194093206274888391889982264260083866,-0.000177019537283483783347490247983557765,-0.00015977878724121092777685215757799142 ,-0.000142372259409317037000264338786337248,-0.000124801277454762303727175964951356946,-0.000107067185321461677853169258689547405,-0.000089171347099071304308920415948591653,-0.000071115146889271714275744529221157109,-0.00005289998866962290497827775537231787 ,-0.000034527296155025629829319472330340091,-0.00001599851265667154081792644682025184 , 0.000002684899061304507705100989151114632, 0.000021521456927654481855417475943959005, 0.000040509659712141876989309474677014578, 0.000059647987176103482568657876417006491, 0.000078934900225255166849105958881693823, 0.00009836884106489222879231293372725986 , 0.000117948233357403702535604050893880412, 0.000137671482381969672442734164974353916, 0.000157536975196682091718280993575262983, 0.000177543080802791680824700981666808275, 0.000197688150311243224319796008003891075, 0.0002179705171114303379614751676740525  , 0.000238388497042110888111954292156724478, 0.000258940388564562779406125203607302865, 0.000279624472937826018450330201048359413, 0.000300439014396112504239749751988597382, 0.000321382260328357388916992176675080373, 0.000342452441459821694830917282459381568, 0.000363647772035824521502656025973010401, 0.000384966450007505150109066160979409688, 0.000406406657219584850453120150604036098, 0.000427966559600200652496021502813050574, 0.000449644307352725159428880052914223597, 0.000471438035149530009979002009856685618, 0.000493345862327678299011357587744441844, 0.000515365893086636270466194265083004211, 0.000537496216687791345326119518688301469, 0.000559734907655875905951869953014465864, 0.00058208002598228501898308673290216575 , 0.000604529617330221797841249831151344551, 0.00062708171324159342648052462010355157 , 0.000649734331345765288821814120723274755, 0.000672485475570055893194953977598515849, 0.000695333136351966411836666992485334049, 0.00071827529085315220801905011782650945 , 0.000741309903174982827780969962816470797, 0.000764434924575943942730293922949158514, 0.000787648293690530179253506126713091362, 0.000810947936749788970793584308438539665, 0.000834331767803525407856124473937597941, 0.00085779768894400599751892677602427284 , 0.000881343590531147129396583039806500892, 0.000904967351419367032998308797431263883, 0.000928666839185779001593357140365014857, 0.000952439910359944566162204715453754034, 0.000976284410654991354622245225414189918, 0.00100019817520018323986352726251425338 , 0.001024179028774834139536853427898677182, 0.001048224786043605799915057197324586014, 0.001072333251793092852993671826311583573, 0.001096502221169785244031524840124802722, 0.00112072947991917535974504271933938071 , 0.001145012804626193954685153819639253925, 0.001169349962956876213399093344946777506, 0.001193738713901121772584246194526258478, 0.00121817680801672954815639826620099484 , 0.00124266198767443848509361981058418678 , 0.001267191987304167001202048759012086521, 0.001291764533642258136816871605390133482, 0.001316377345979830157038370508360003441, 0.001341028136412067807772818817113602563, 0.001365714610088572620455460437938199902, 0.001390434465464561496553241859430727345, 0.001415185394553147542676119208238105784, 0.001439965083178347321143930592768356291, 0.001464771211229083398147610139972130128, 0.00148960145291393781033506549249523232 , 0.001514453477016800648710659338291861786, 0.001539324947153169597519051237100029539, 0.001564213522027307727568778972226937185, 0.00158911685569006482128540103104796799 , 0.001614032597797408199666313599607292417, 0.00163895839386957523076127074546093354 , 0.001663891885550871588966836966960727295, 0.001688830710870081438026990561240836541, 0.001713772504501391309023050624205097847, 0.001738714898025892291802407818579467857, 0.001763655520193555805916196810301244113, 0.00178859199718570224986458061522398566 , 0.001813521952877881864008013934608243289, 0.001838443009103189057507066195285005961, 0.001863352785915931703053516343970841262, 0.001888248901855663856169664782669315173, 0.001913128974211561082394150723473558173, 0.001937990619286953861144517929915309651, 0.001962831452664307464034409989039886568, 0.001987649089470240864468975061640776403, 0.002012441144640873293136795751934187138, 0.002037205233187225870972181240858844831, 0.002061938970460810809093299411642874475, 0.002086639972419289563998479053452683729, 0.002111305855892209055318931021361095191, 0.002135934238846781685339237810694612563, 0.002160522740653563443513629493963890127, 0.00218506898235230765173420230951251142 , 0.002209570586917517735076055274134887441, 0.002234025179524115351653579253365933255, 0.002258430387812807981634533049941637728, 0.002282783842155397969336805275020196859, 0.002307083175919953221127967069037367764, 0.002331326025735551161349734528016597324, 0.002355510031757015749348527222650773183, 0.002379632837929270255256097854612562514, 0.002403692092251236405581193977809562057, 0.002427685447039647226308289873486501165, 0.002451610559192293498781411997811119363, 0.00247546509045092500561624504484825593 , 0.002499246707663703784274566999101807596, 0.002522953083047186403214956484930553415, 0.002546581894447808372405894772327883402, 0.002570130825602769206877917795850407856, 0.002593597566400522840684983449932587973, 0.002616979813140490451067732280421296309, 0.002640275268792137072781933682108501671, 0.00266348164325364835866571944222869206 , 0.002686596653609553929376030367848215974, 0.002709618024387936991576042444762606465, 0.002732543487816686388763853798877789814, 0.002755370784079093360308121418711380102, 0.002778097661568599587023076225023032748, 0.002800721877142636241642126293527326197, 0.002823241196375694556791602352063819126, 0.00284565339381145270339357189470774756 , 0.002867956253213909106197787579617397569, 0.002890147567817656637512158113167970441, 0.002912225140577102966421563223775592633, 0.002934186784414634895090667754402602441, 0.002956030322467855051687957157469099911, 0.002977753588335515805979314407636593387, 0.002999354426322666054144372438372556644, 0.003020830691684271446934006988271903538, 0.003042180250867974194983744951059634332, 0.003063400981755547928392369172456710658, 0.003084490773903039370629208804075460648, 0.003105447528779776370649878813878785877, 0.003126269160006045835786814279799727956, 0.003146953593589393426838141110124524857, 0.003167498768159765758917201239341920882, 0.003187902635202959078508655466066556983, 0.003208163159293042718950283997969563643, 0.003228278318323130231803919087951726397, 0.003248246103734613986907531213432775985, 0.003268064520745282610508786191871877236, 0.003287731588575422241038648252242637682, 0.003307245340672872180309838086031959392, 0.003326603824936138088103065868494923052, 0.003345805103936215843529744518036750378, 0.003364847255136482490761595798289818049, 0.003383728371111221523703793678805595846, 0.003402446559762362706530458567044661322, 0.003420999944534485869701567750666981738, 0.003439386664628224423573277235277600994, 0.003457604875211706899756913813348546682, 0.003475652747630516604948613945680335746, 0.003493528469615618178845117824948829366, 0.0035112302454895316476679578698849582  , 0.003528756296370719278826522113945429737, 0.003546104860376003090755014923729504517, 0.003563274192821145290588358278682790115, 0.003580262566419472811118929200802085688, 0.003597068271478654367251381884784677823, 0.003613689616095306072346415859897206246, 0.003630124926347816794597322953563889314, 0.003646372546487054982361497579290698923, 0.003662430839125005964385106693725902005, 0.003678298185421514064630255091969956993, 0.003693972985268607813619246016401120869, 0.003709453657473169799901890897331213637, 0.003724738639937054743289657210425502853, 0.003739826389835353148693997127338661812, 0.003754715383792334767315557186861951777, 0.003769404118055186790614552450051633059, 0.003783891108665740198729876553329631861, 0.003798174891629595324726853533547910047, 0.003812254023083438535940414837455136876, 0.003826127079459677032824416187395399902, 0.003839792657649044021334061582706453919, 0.003853249375160782211335863678414170863, 0.003866495870280507122368485184438213764, 0.003879530802225749329392723296905387542, 0.003892352851299086310271624356005304435, 0.003904960719038852185597265886940476776, 0.003917353128367627446149157321997336112, 0.003929528823737998659282322222452421556, 0.003941486571276115076500889955468664994, 0.003953225158922703437458512354396589217, 0.003964743396571639849623736040484800469, 0.003976040116205947771987894157064147294, 0.003987114172031337028245800979675550479, 0.003997964440607190174381546654558405862, 0.004008589820975210459008675201175719849, 0.00401898923478503315026566511392047687 , 0.004029161626417773409136735551783203846, 0.004039105963106684980823413155803791597, 0.004048821235055402416314063174240800436, 0.004058306455553308857153727018385325209, 0.004067560661088560208797915151990309823, 0.004076582911458292990403151634382084012, 0.004085372289876203211189675812420318834, 0.004093927903077419078181620193390699569, 0.004102248881420902590355659356191608822, 0.004110334378988847459091005021036835387, 0.004118183573683506168428003491044364637, 0.004125795667321353367429370706531699398, 0.004133169885724482378597244291995593812, 0.00414030547880918278064177329156336782 , 0.004147201720671910701865314763381320518, 0.004153857909672292736402710033871699125, 0.004160273368513612776697918604895676253, 0.004166447444320280427132452416572050424, 0.004172379508712544676773958940430020448, 0.004178068957878681814743782041432496044, 0.00418351521264395502519573000199670787 , 0.004188717718537036949211227465639240108, 0.00419367594585352745223394421714147029 , 0.004198389389716593485257778439745379728, 0.004202857570134877623901914489579212386, 0.00420708003205744369978891228356587817 , 0.004211056345425849729846579094783010078, 0.004214786105223590137458522519864345668, 0.004218268931522274958756391072256519692, 0.004221504469525487121539519819179986371, 0.004224492389609031499364544259833564865, 0.004227232387359036377971754916416102787, 0.004229724183606771090171427829318417935, 0.00423196752446033334221775490391337371 , 0.004233962181334304311630667427834850969, 0.004235707950975465055365454247748857597, 0.004237204655486259512187086073708996992, 0.004238452142345195718109440718990299501, 0.004239450284424330084309673338793800212, 0.004240198980003896320201128844473714707, 0.004240698152783722515990483259429311147, 0.004240947751892258643646727023224229924, 0.004240947751892258643646727023224229924, 0.004240698152783722515990483259429311147, 0.004240198980003896320201128844473714707, 0.004239450284424330084309673338793800212, 0.004238452142345195718109440718990299501, 0.004237204655486259512187086073708996992, 0.004235707950975465055365454247748857597, 0.004233962181334304311630667427834850969, 0.00423196752446033334221775490391337371 , 0.004229724183606771090171427829318417935, 0.004227232387359036377971754916416102787, 0.004224492389609031499364544259833564865, 0.004221504469525487121539519819179986371, 0.004218268931522274958756391072256519692, 0.004214786105223590137458522519864345668, 0.004211056345425849729846579094783010078, 0.00420708003205744369978891228356587817 , 0.004202857570134877623901914489579212386, 0.004198389389716593485257778439745379728, 0.00419367594585352745223394421714147029 , 0.004188717718537036949211227465639240108, 0.00418351521264395502519573000199670787 , 0.004178068957878681814743782041432496044, 0.004172379508712544676773958940430020448, 0.004166447444320280427132452416572050424, 0.004160273368513612776697918604895676253, 0.004153857909672292736402710033871699125, 0.004147201720671910701865314763381320518, 0.00414030547880918278064177329156336782 , 0.004133169885724482378597244291995593812, 0.004125795667321353367429370706531699398, 0.004118183573683506168428003491044364637, 0.004110334378988847459091005021036835387, 0.004102248881420902590355659356191608822, 0.004093927903077419078181620193390699569, 0.004085372289876203211189675812420318834, 0.004076582911458292990403151634382084012, 0.004067560661088560208797915151990309823, 0.004058306455553308857153727018385325209, 0.004048821235055402416314063174240800436, 0.004039105963106684980823413155803791597, 0.004029161626417773409136735551783203846, 0.00401898923478503315026566511392047687 , 0.004008589820975210459008675201175719849, 0.003997964440607190174381546654558405862, 0.003987114172031337028245800979675550479, 0.003976040116205947771987894157064147294, 0.003964743396571639849623736040484800469, 0.003953225158922703437458512354396589217, 0.003941486571276115076500889955468664994, 0.003929528823737998659282322222452421556, 0.003917353128367627446149157321997336112, 0.003904960719038852185597265886940476776, 0.003892352851299086310271624356005304435, 0.003879530802225749329392723296905387542, 0.003866495870280507122368485184438213764, 0.003853249375160782211335863678414170863, 0.003839792657649044021334061582706453919, 0.003826127079459677032824416187395399902, 0.003812254023083438535940414837455136876, 0.003798174891629595324726853533547910047, 0.003783891108665740198729876553329631861, 0.003769404118055186790614552450051633059, 0.003754715383792334767315557186861951777, 0.003739826389835353148693997127338661812, 0.003724738639937054743289657210425502853, 0.003709453657473169799901890897331213637, 0.003693972985268607813619246016401120869, 0.003678298185421514064630255091969956993, 0.003662430839125005964385106693725902005, 0.003646372546487054982361497579290698923, 0.003630124926347816794597322953563889314, 0.003613689616095306072346415859897206246, 0.003597068271478654367251381884784677823, 0.003580262566419472811118929200802085688, 0.003563274192821145290588358278682790115, 0.003546104860376003090755014923729504517, 0.003528756296370719278826522113945429737, 0.0035112302454895316476679578698849582  , 0.003493528469615618178845117824948829366, 0.003475652747630516604948613945680335746, 0.003457604875211706899756913813348546682, 0.003439386664628224423573277235277600994, 0.003420999944534485869701567750666981738, 0.003402446559762362706530458567044661322, 0.003383728371111221523703793678805595846, 0.003364847255136482490761595798289818049, 0.003345805103936215843529744518036750378, 0.003326603824936138088103065868494923052, 0.003307245340672872180309838086031959392, 0.003287731588575422241038648252242637682, 0.003268064520745282610508786191871877236, 0.003248246103734613986907531213432775985, 0.003228278318323130231803919087951726397, 0.003208163159293042718950283997969563643, 0.003187902635202959078508655466066556983, 0.003167498768159765758917201239341920882, 0.003146953593589393426838141110124524857, 0.003126269160006045835786814279799727956, 0.003105447528779776370649878813878785877, 0.003084490773903039370629208804075460648, 0.003063400981755547928392369172456710658, 0.003042180250867974194983744951059634332, 0.003020830691684271446934006988271903538, 0.002999354426322666054144372438372556644, 0.002977753588335515805979314407636593387, 0.002956030322467855051687957157469099911, 0.002934186784414634895090667754402602441, 0.002912225140577102966421563223775592633, 0.002890147567817656637512158113167970441, 0.002867956253213909106197787579617397569, 0.00284565339381145270339357189470774756 , 0.002823241196375694556791602352063819126, 0.002800721877142636241642126293527326197, 0.002778097661568599587023076225023032748, 0.002755370784079093360308121418711380102, 0.002732543487816686388763853798877789814, 0.002709618024387936991576042444762606465, 0.002686596653609553929376030367848215974, 0.00266348164325364835866571944222869206 , 0.002640275268792137072781933682108501671, 0.002616979813140490451067732280421296309, 0.002593597566400522840684983449932587973, 0.002570130825602769206877917795850407856, 0.002546581894447808372405894772327883402, 0.002522953083047186403214956484930553415, 0.002499246707663703784274566999101807596, 0.00247546509045092500561624504484825593 , 0.002451610559192293498781411997811119363, 0.002427685447039647226308289873486501165, 0.002403692092251236405581193977809562057, 0.002379632837929270255256097854612562514, 0.002355510031757015749348527222650773183, 0.002331326025735551161349734528016597324, 0.002307083175919953221127967069037367764, 0.002282783842155397969336805275020196859, 0.002258430387812807981634533049941637728, 0.002234025179524115351653579253365933255, 0.002209570586917517735076055274134887441, 0.00218506898235230765173420230951251142 , 0.002160522740653563443513629493963890127, 0.002135934238846781685339237810694612563, 0.002111305855892209055318931021361095191, 0.002086639972419289563998479053452683729, 0.002061938970460810809093299411642874475, 0.002037205233187225870972181240858844831, 0.002012441144640873293136795751934187138, 0.001987649089470240864468975061640776403, 0.001962831452664307464034409989039886568, 0.001937990619286953861144517929915309651, 0.001913128974211561082394150723473558173, 0.001888248901855663856169664782669315173, 0.001863352785915931703053516343970841262, 0.001838443009103189057507066195285005961, 0.001813521952877881864008013934608243289, 0.00178859199718570224986458061522398566 , 0.001763655520193555805916196810301244113, 0.001738714898025892291802407818579467857, 0.001713772504501391309023050624205097847, 0.001688830710870081438026990561240836541, 0.001663891885550871588966836966960727295, 0.00163895839386957523076127074546093354 , 0.001614032597797408199666313599607292417, 0.00158911685569006482128540103104796799 , 0.001564213522027307727568778972226937185, 0.001539324947153169597519051237100029539, 0.001514453477016800648710659338291861786, 0.00148960145291393781033506549249523232 , 0.001464771211229083398147610139972130128, 0.001439965083178347321143930592768356291, 0.001415185394553147542676119208238105784, 0.001390434465464561496553241859430727345, 0.001365714610088572620455460437938199902, 0.001341028136412067807772818817113602563, 0.001316377345979830157038370508360003441, 0.001291764533642258136816871605390133482, 0.001267191987304167001202048759012086521, 0.00124266198767443848509361981058418678 , 0.00121817680801672954815639826620099484 , 0.001193738713901121772584246194526258478, 0.001169349962956876213399093344946777506, 0.001145012804626193954685153819639253925, 0.00112072947991917535974504271933938071 , 0.001096502221169785244031524840124802722, 0.001072333251793092852993671826311583573, 0.001048224786043605799915057197324586014, 0.001024179028774834139536853427898677182, 0.00100019817520018323986352726251425338 , 0.000976284410654991354622245225414189918, 0.000952439910359944566162204715453754034, 0.000928666839185779001593357140365014857, 0.000904967351419367032998308797431263883, 0.000881343590531147129396583039806500892, 0.00085779768894400599751892677602427284 , 0.000834331767803525407856124473937597941, 0.000810947936749788970793584308438539665, 0.000787648293690530179253506126713091362, 0.000764434924575943942730293922949158514, 0.000741309903174982827780969962816470797, 0.00071827529085315220801905011782650945 , 0.000695333136351966411836666992485334049, 0.000672485475570055893194953977598515849, 0.000649734331345765288821814120723274755, 0.00062708171324159342648052462010355157 , 0.000604529617330221797841249831151344551, 0.00058208002598228501898308673290216575 , 0.000559734907655875905951869953014465864, 0.000537496216687791345326119518688301469, 0.000515365893086636270466194265083004211, 0.000493345862327678299011357587744441844, 0.000471438035149530009979002009856685618, 0.000449644307352725159428880052914223597, 0.000427966559600200652496021502813050574, 0.000406406657219584850453120150604036098, 0.000384966450007505150109066160979409688, 0.000363647772035824521502656025973010401, 0.000342452441459821694830917282459381568, 0.000321382260328357388916992176675080373, 0.000300439014396112504239749751988597382, 0.000279624472937826018450330201048359413, 0.000258940388564562779406125203607302865, 0.000238388497042110888111954292156724478, 0.0002179705171114303379614751676740525  , 0.000197688150311243224319796008003891075, 0.000177543080802791680824700981666808275, 0.000157536975196682091718280993575262983, 0.000137671482381969672442734164974353916, 0.000117948233357403702535604050893880412, 0.00009836884106489222879231293372725986 , 0.000078934900225255166849105958881693823, 0.000059647987176103482568657876417006491, 0.000040509659712141876989309474677014578, 0.000021521456927654481855417475943959005, 0.000002684899061304507705100989151114632,-0.00001599851265667154081792644682025184 ,-0.000034527296155025629829319472330340091,-0.00005289998866962290497827775537231787 ,-0.000071115146889271714275744529221157109,-0.000089171347099071304308920415948591653,-0.000107067185321461677853169258689547405,-0.000124801277454762303727175964951356946,-0.000142372259409317037000264338786337248,-0.00015977878724121092777685215757799142 ,-0.000177019537283483783347490247983557765,-0.000194093206274888391889982264260083866,-0.000210998511486128355590236038707985244,-0.0002277341908436421845114000506171692  ,-0.000244299003050828808861205665436955314,-0.000260691727706744271007149871266506125,-0.000276911165422273391947122211931286984,-0.000292956137933745675103885952594851005,-0.000308825488213937036051370821354566942,-0.000324518080580552415598249993422541593,-0.000340032800802083756252364166172696969,-0.000355368556201091860113211451377424055,-0.000370524275754818290494474464225049815,-0.000385498910193242784807954315340339235,-0.00040029143209447911374437856224517418 ,-0.000414900835977501309444898103251375687,-0.000429326138392258430109826861098554218,-0.000443566378007122566733827495610853475,-0.000457620615693638758524758314294444972,-0.00047148793460860934307135594600879358 ,-0.000485167440273512144948558910684255352,-0.00049865826065120593627716383267056699 ,-0.00051195954621993558335268925674199636 ,-0.000525070470044613135315869634212049277,-0.000537990227845430040755358991333423546,-0.000550718038063684862080948700935323359,-0.000563253141924950737236266196106271309,-0.000575594803499449394514064781702700202,-0.000587742309759711626174216725360111013,-0.000599694970635515764087464241072211735,-0.000611452119066016228608739790928439106,-0.000623013111049205807467910034347369219,-0.000634377325688550335394677581746236683,-0.000645544165236863753953855393774574623,-0.000656513055137493591051356389698412386,-0.000667283444062620511097461140082032216,-0.000677854803948920977066383564135776396,-0.000688226630030348862122890896131366389,-0.000698398440868195388535333290036533072,-0.000708369778378388254176656335658890384,-0.000718140207855933669460479773505312551,-0.000727709317996701340013065983924889224,-0.000737076720916318532672573127229043166,-0.000746242052166367405424685088632941188,-0.000755204970747749859162623042863060618,-0.000763965159121273579279076670900394674,-0.000772522323215537221226256736628101862,-0.000780876192431925438344753054309421714,-0.000789026519646931893438301930387979155,-0.000796973081211615531384284683014129769,-0.000804715676948376595553624746059995232,-0.00081225413014491545330569843841317379 ,-0.000819588287545385397840635999244796039,-0.000826718019338892624175985091028451279,-0.000833643219145125779871718929570079126,-0.00084036380399730818691050870938852313 ,-0.000846879714322323548514326319036626955,-0.000853190913918193817415402957493597569,-0.000859297389928727621717652329635939168,-0.000865199152815448427507327711083462418,-0.000870896236326851335730891978670342723,-0.00087638869746483509873269390766381548 ,-0.000881676616448517740110002449682724546,-0.000886760096675248753010645241801057637,-0.000891639264678983868225858877565315197,-0.000896314270085930993835210411901925909,-0.000900785285567461796972510423842095406,-0.000905052506790451883299242208380519514,-0.000909116152364810399186256795189819968,-0.000912976463788461433529475286263732414,-0.000916633705389556909318149457988056383,-0.000920088164266145286385167878506763373,-0.00092334015022312292825246160532515205 ,-0.000926389995706578504852668487501432537,-0.000929238055735532274270749297784277587,-0.000931884707831032296429518702041150391,-0.000934330351942690086504417212864836983,-0.000936575410372586210708267806523963372,-0.00093862032769664242685958566170256745 ,-0.000940465570683384475582367034718345167,-0.000942111628210165019496613592053790853,-0.00094355901117688120802867723924123311 ,-0.000944808252417076604480483670300827725,-0.000945859906606637485318445079940374853,-0.000946714550169891282636880358580810935,-0.000947372781183261993866173700240551625,-0.000947835219276440816942030931357976442,-0.000948102505531073528818875040258262743,-0.000948175302377045055128579331693572385,-0.00094805429348627113378400466103812505 ,-0.000947740183664121864197393829698512491,-0.000947233698738424016207171352021987332,-0.00094653558544603917136728288284075461 ,-0.000945646611317136091476309722736459662,-0.000944567564557054640400624023754971859,-0.000943299253925846043801473062018203564,-0.000941842508615481572090133433050596068,-0.000940198178124778327288679768969359429,-0.000938367132132004728821417227635492964,-0.000936350260365204946355621729026097455,-0.000934148472470331184269731750191567698,-0.000931762697877056640834159129127556298,-0.000929193885662429820866681229318828628,-0.000926443004412279237300142931132995727,-0.000923511042080506195338374109127244083,-0.000920399005846122436093337260132329902,-0.000917107921968212292003486130198552928,-0.000913638835638755602945593192742990141,-0.000909992810833321476120250093089225629,-0.000906170930159711494368546258471042165,-0.000902174294704501957518905097543893135,-0.000898004023877569290852662664548233806,-0.000893661255254582140815367008457315023,-0.000889147144417481191495944425895459062,-0.000884462864793009802440171274184876893,-0.000879609607489205479018135047653004222,-0.00087458858113008094200407915863593189 ,-0.000869401011688231877341803688352683821,-0.000864048142315702156178447435053158188,-0.000858531233172854556581765628209268471,-0.000852851561255452985353675554591745822,-0.000847010420219906543480570260129525195,-0.000841009120206705576040795424574980643,-0.000834848987662062933835793732129104683,-0.000828531365157821053646358677724492736,-0.000822057611209599269942727151061490076,-0.00081542910009323730288061105042629606 ,-0.000808647221659559317132048850140790819,-0.000801713381147463322040636057863594033,-0.00079462899899537526963999578555331027 ,-0.000787395510651086824073507930421556011,-0.000780014366379989596000932294828089653,-0.00077248703107176764151575731887078291 ,-0.000764814984045548117153057177119990229,-0.000756999718853482985933545101886466   ,-0.00074904274308292299530687152753216651 ,-0.000740945578157055774297379269199836926,-0.000732709759134142165661052192859870047,-0.000724336834505329000589990418035313269,-0.00071582836599106639680067942776986456 ,-0.00070718592833616861128426256399848171 ,-0.000698411109103547612757256768389879653,-0.000689505508466609290732507453469679604,-0.000680470739000407168900474985662185645,-0.000671308425471511230515908597027419091,-0.000662020204626633597573548417614119899,-0.000652607724980102136755344410801171762,-0.000643072646600103821172556006757758951,-0.000633416640893813315434102140244476686,-0.000623641390391386834721187959473809315,-0.000613748588528860634407069429840930752,-0.000603739939429991318356472085326913657,-0.000593617157687043061654874609445187161,-0.000583381968140591895648217057868123447,-0.000573036105658309758738300221381223309,-0.000562581314912813748065067986914300491,-0.000552019350158589570953804326336467057,-0.000541351975008008603346132403544288536,-0.00053058096220647129812042486207701586 ,-0.000519708093406713806175489800409650343,-0.000508735158942310336342707000056861943,-0.000497663957600351955327944164508835456,-0.00048649629639342011414027133753279486 ,-0.0004752339903307798742171375039333725  ,-0.000463878862188908571827922200370153405,-0.000452432742281347344010661304380960246,-0.000440897468227880882842700804857827279,-0.000429274884723148634092099173997780781,-0.000417566843304629977534636608993423579,-0.000405775202120101726073475578715488155,-0.000393901825694551355368233647169518008,-0.000381948584696592096775907831940344295,-0.000369917355704421635387291189545067027,-0.000357810020971321973703993535309564322,-0.000345628468190778577722593878362999931,-0.000333374590261176358910871764251737659,-0.000321050285050172889197289682883251771,-0.000308657455158739091154174172260127307,-0.00029619800768490231468454965124692535 ,-0.000283673853987238149855498736684467076,-0.00027108690944809005077612007461596022 ,-0.000258439093236644489536002478047294062,-0.000245732328071750780532078728413125646,-0.000232968539984663980651341530503373178,-0.000220149658081629197780779150228624985,-0.000207277614306372603720368674729002123,-0.000194354343202558674198396349019901663,-0.000181381781676189098809898192499190372,-0.00016836186875802445920072281104751255 ,-0.000155296545366005581990942463477267665,-0.000142187754067753686091149512016329481,-0.000129037438843130730344380130425463449,-0.000115847544846958068237748051831914609,-0.000102620018171816526197231977945989456,-0.000089356805611054797777378921885826912,-0.000076059854422025276361740697694813207,-0.000062731112089482545294237547661708732,-0.000049372526089292681668319051624393978,-0.000035986043652410737523489325795367222,-0.000022573611529159602140728879682285424,-0.000009137175753920064952490545651109244, 0.000004321318589924616945774880905073445, 0.000017799927604516442981689994251581766, 0.000031296708811719028920858565179230482, 0.000044809721386781511606733907626676228, 0.000058337026391583072441708590627484909, 0.000071876687007300346828053694281379649, 0.000085426768766575699115897735147484582, 0.000098985339785106005042539245586397101, 0.000112550470992602908619842350113060547, 0.000126120236363182300787927347940353684, 0.000139692713145045095766288989480585769, 0.000153265982089504911121263797113556393, 0.000166838127679325111049624119630152563, 0.000180407238356245788008999642038077127, 0.000193971406747860466990296401945670368, 0.000207528729893571590309209184965766326, 0.000221077309469861626881406757583192757, 0.000234615252014599539719802434589723816, 0.000248140669150568714956817117922582838, 0.00026165167780803827218480406280320949 , 0.000275146400446421937353164155481977105, 0.000288622965275019680627538454231739706, 0.000302079506472735623452685604917178352, 0.000315514164406829108328045307985121326, 0.000328925085850599618376988164669683101, 0.000342310424200069894108688917100380422, 0.000355668339689533131563886625414738774, 0.00036899699960603522287672095814059503 , 0.000382294578502700586799395443549087759, 0.000395559258410903703383904028711981482, 0.000408789229051303700055580714334269032, 0.00042198268804358705658802408677843232 , 0.000435137841115073957781039792891419893, 0.00044825290230800289527010593637612601 , 0.00046132609418555905848868814445040698 , 0.000474355648036610681901603658872090818, 0.000487339804079101089964720650016261061, 0.000500276811662107986564129724627036921, 0.000513164929466482819080119792687355584, 0.000526002425704173541542996161979317549, 0.000538787578316058659785858786506196338, 0.000551518675168348286586006423704020563, 0.000564194014247549496289535486681643306, 0.00057681190385390848380381401128147445 , 0.000589370662793375281289509626247991037, 0.000601868620568014379458576801340541351, 0.00061430411756482482428520786044146007 , 0.000626675505243084172458944980377282263, 0.000638981146319990466267424444879452494, 0.000651219414954746209957259228673365214, 0.000663388696930951207546278691751240331, 0.00067548738983741235704372218862090449 , 0.000687513903247200398177740865435225714, 0.000699466658895013895270997839048732203, 0.000711344090852875175073899427502510662, 0.000723144645704005021788485230160858919, 0.000734866782715011762974754994104387151, 0.000746508974006252932695271162799599551, 0.000758069704720390003319097083078759169, 0.000769547473189178144609146059451632027, 0.000780940791098336186022710325715934232, 0.000792248183650667544067336400814838271, 0.000803468189727183723994330399875707371, 0.000814599362046454717259380551297454076, 0.000825640267321946360809525877755277179, 0.000836589486417519214746241207336652224, 0.000847445614500919822825730776116870402, 0.00085820726119532236061265839666134525} \
   CONFIG.Coefficient_Fanout {true} \
   CONFIG.Coefficient_Fractional_Bits {22} \
   CONFIG.Coefficient_Sets {1} \
   CONFIG.Coefficient_Sign {Signed} \
   CONFIG.Coefficient_Structure {Symmetric} \
   CONFIG.Coefficient_Width {16} \
   CONFIG.ColumnConfig {2} \
   CONFIG.Control_Broadcast_Fanout {true} \
   CONFIG.Control_Column_Fanout {true} \
   CONFIG.Control_LUT_Pipeline {true} \
   CONFIG.Control_Path_Fanout {true} \
   CONFIG.Data_Path_Broadcast {false} \
   CONFIG.Data_Path_Fanout {true} \
   CONFIG.Data_Width {16} \
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
   CONFIG.Output_Rounding_Mode {Convergent_Rounding_to_Even} \
   CONFIG.Output_Width {16} \
   CONFIG.Passband_Max {0.002} \
   CONFIG.Pre_Adder_Pipeline {true} \
   CONFIG.Quantization {Quantize_Only} \
   CONFIG.RateSpecification {Frequency_Specification} \
   CONFIG.Sample_Frequency {125} \
   CONFIG.Zero_Pack_Factor {1} \
 ] $fir_compiler_0

  # Create instance: fir_compiler_1, and set properties
  set fir_compiler_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fir_compiler:7.2 fir_compiler_1 ]
  set_property -dict [ list \
   CONFIG.BestPrecision {true} \
   CONFIG.Clock_Frequency {125} \
   CONFIG.CoefficientVector {-0.001538539891099612944361241240187609947,-0.001732974212636380914945299913654253032,-0.001902862797118008058097626822302572691,-0.002045385950219367858504693202803537133,-0.002158011851507008610484561472731002141,-0.002238539166871130088598551566292371717,-0.002285136518755096282640160154642217094,-0.002296378191776754160158269257863139501,-0.002271275485008297095879115090610866901,-0.002209303164642681133883472810452985868,-0.002110420521640382369304989040870168537,-0.001975086597725283794196871056669806421,-0.001804269209160933636754142739277995133,-0.001599447470359002549528115721955146   ,-0.001362607597719929595353471896146402287,-0.001096231857250658508345919628368392296,-0.000803280606439147671672673656217966709,-0.000487167470508927168224705406274210873,-0.000151727784389552895890837524994765317, 0.000198819476656289154505377614334804548, 0.000559915964023554907531832203204658072, 0.000926714017899261856964221450994045881, 0.001294132036571549529413438506253442029, 0.001656914583897016457481043971711187623, 0.002009696590466429708815576660185797664, 0.002347070935273969528173099163836923253, 0.002663658633702458301134585738623172801, 0.00295418080533746624585789142258818174 , 0.003213531552369019821113749202368126134, 0.003436850846872575512835901179187203525, 0.003619596503700080441373598816312551207, 0.00375761430554326673544873749222006154 , 0.003847205348300724876003942043212191493, 0.003885189688385093983308271603505090752, 0.003868965399091290648103669269630700001, 0.003796562180501584018998961767010769108, 0.003666688716360277499467512640762834053, 0.00347877303148971589105697965749186551 , 0.003232995174064644001293844510769304179, 0.002930311627695773944030088742351836117, 0.002572470947935633946157540918875383795, 0.002162020215522944717456699237345674192, 0.001702302003318282002525263507664021745, 0.001197441664242327851591651821649975318, 0.000652324862304007086107049406820124204, 0.000072565386621145533288350371048380794,-0.000535536592247198850458289598464034498,-0.001165045544797333300704456071628101199,-0.001808450486883495184411985157169056038,-0.002457733253519754808291697401045894367,-0.003104444518955281999417206151292702998,-0.003739786834695935351796647339028822898,-0.004354703859253449341193409338757192018,-0.004939974864046592709088123740457376698,-0.005486313520284733305509838885427598143,-0.005984469902956325235154899644385295687,-0.006425334591221396919602515396263697767,-0.006800043700428044964045870557356465724,-0.00710008365034925544023725052511508693 ,-0.007317394457616788715215161431615342735,-0.007444470338092781108718654081712884363,-0.007474456417272238445415055707599094603,-0.007401240373771308944661484474636381492,-0.007219537882371280905491328638845516252,-0.006924970778611934385526893720452790149,-0.006514136936042587422424077203686465509,-0.005984670929248911419584544546523829922,-0.005335294649814420996081221204576650052,-0.004565857147432616884585865335566268186,-0.003677363083288121524405678286484544515,-0.002671989306279337009902841160169373325,-0.001553089193243087015594561250964034116,-0.000325184530551354486222620510105230096, 0.001006055145319038326631733148985858861, 0.002433845688046476149479779849116312107, 0.003950333759097458818931869473090046085, 0.005546654177075693338549999822362224222, 0.007212998713708732717586613603089062963, 0.008938695716450192549351605464380554622, 0.010712299808865574993199665243537310744, 0.012521690798881990325241986283799633384, 0.014354180813122190477071349334892147454, 0.016196628574314569232184268798846460413, 0.01803555964944611109124217307453363901 , 0.019857291420051884772712824656082375441, 0.021648061463791511832566172301994811278, 0.023394157989074310793897737426050298382, 0.025082050932598895509606506948330206797, 0.026698522313728226262874443364125909284, 0.028230794439885763258413220455622649752, 0.029666654573702121167055878458995721303, 0.030994574705331921771200853754635318182, 0.032203825121862303393349691305047599599, 0.03328458052953377904747966908871603664 , 0.034228017562872400936235806057084118947, 0.03502640260690375456631429074150219094 , 0.035673168963321545688049951650100410916, 0.036162982507611581006745637978383456357, 0.036491795110314466377143816089301253669, 0.036656885230386355989384838949263212271, 0.036656885230386355989384838949263212271, 0.036491795110314466377143816089301253669, 0.036162982507611581006745637978383456357, 0.035673168963321545688049951650100410916, 0.03502640260690375456631429074150219094 , 0.034228017562872400936235806057084118947, 0.03328458052953377904747966908871603664 , 0.032203825121862303393349691305047599599, 0.030994574705331921771200853754635318182, 0.029666654573702121167055878458995721303, 0.028230794439885763258413220455622649752, 0.026698522313728226262874443364125909284, 0.025082050932598895509606506948330206797, 0.023394157989074310793897737426050298382, 0.021648061463791511832566172301994811278, 0.019857291420051884772712824656082375441, 0.01803555964944611109124217307453363901 , 0.016196628574314569232184268798846460413, 0.014354180813122190477071349334892147454, 0.012521690798881990325241986283799633384, 0.010712299808865574993199665243537310744, 0.008938695716450192549351605464380554622, 0.007212998713708732717586613603089062963, 0.005546654177075693338549999822362224222, 0.003950333759097458818931869473090046085, 0.002433845688046476149479779849116312107, 0.001006055145319038326631733148985858861,-0.000325184530551354486222620510105230096,-0.001553089193243087015594561250964034116,-0.002671989306279337009902841160169373325,-0.003677363083288121524405678286484544515,-0.004565857147432616884585865335566268186,-0.005335294649814420996081221204576650052,-0.005984670929248911419584544546523829922,-0.006514136936042587422424077203686465509,-0.006924970778611934385526893720452790149,-0.007219537882371280905491328638845516252,-0.007401240373771308944661484474636381492,-0.007474456417272238445415055707599094603,-0.007444470338092781108718654081712884363,-0.007317394457616788715215161431615342735,-0.00710008365034925544023725052511508693 ,-0.006800043700428044964045870557356465724,-0.006425334591221396919602515396263697767,-0.005984469902956325235154899644385295687,-0.005486313520284733305509838885427598143,-0.004939974864046592709088123740457376698,-0.004354703859253449341193409338757192018,-0.003739786834695935351796647339028822898,-0.003104444518955281999417206151292702998,-0.002457733253519754808291697401045894367,-0.001808450486883495184411985157169056038,-0.001165045544797333300704456071628101199,-0.000535536592247198850458289598464034498, 0.000072565386621145533288350371048380794, 0.000652324862304007086107049406820124204, 0.001197441664242327851591651821649975318, 0.001702302003318282002525263507664021745, 0.002162020215522944717456699237345674192, 0.002572470947935633946157540918875383795, 0.002930311627695773944030088742351836117, 0.003232995174064644001293844510769304179, 0.00347877303148971589105697965749186551 , 0.003666688716360277499467512640762834053, 0.003796562180501584018998961767010769108, 0.003868965399091290648103669269630700001, 0.003885189688385093983308271603505090752, 0.003847205348300724876003942043212191493, 0.00375761430554326673544873749222006154 , 0.003619596503700080441373598816312551207, 0.003436850846872575512835901179187203525, 0.003213531552369019821113749202368126134, 0.00295418080533746624585789142258818174 , 0.002663658633702458301134585738623172801, 0.002347070935273969528173099163836923253, 0.002009696590466429708815576660185797664, 0.001656914583897016457481043971711187623, 0.001294132036571549529413438506253442029, 0.000926714017899261856964221450994045881, 0.000559915964023554907531832203204658072, 0.000198819476656289154505377614334804548,-0.000151727784389552895890837524994765317,-0.000487167470508927168224705406274210873,-0.000803280606439147671672673656217966709,-0.001096231857250658508345919628368392296,-0.001362607597719929595353471896146402287,-0.001599447470359002549528115721955146   ,-0.001804269209160933636754142739277995133,-0.001975086597725283794196871056669806421,-0.002110420521640382369304989040870168537,-0.002209303164642681133883472810452985868,-0.002271275485008297095879115090610866901,-0.002296378191776754160158269257863139501,-0.002285136518755096282640160154642217094,-0.002238539166871130088598551566292371717,-0.002158011851507008610484561472731002141,-0.002045385950219367858504693202803537133,-0.001902862797118008058097626822302572691,-0.001732974212636380914945299913654253032,-0.001538539891099612944361241240187609947} \
   CONFIG.Coefficient_Fanout {true} \
   CONFIG.Coefficient_Fractional_Bits {19} \
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
   CONFIG.Data_Width {16} \
   CONFIG.Decimation_Rate {25} \
   CONFIG.Disable_Half_Band_Centre_Tap {false} \
   CONFIG.Filter_Architecture {Systolic_Multiply_Accumulate} \
   CONFIG.Filter_Selection {1} \
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
   CONFIG.Output_Rounding_Mode {Convergent_Rounding_to_Even} \
   CONFIG.Output_Width {16} \
   CONFIG.Passband_Max {0.02} \
   CONFIG.Pre_Adder_Pipeline {true} \
   CONFIG.Quantization {Quantize_Only} \
   CONFIG.RateSpecification {Frequency_Specification} \
   CONFIG.Sample_Frequency {125} \
   CONFIG.Stopband_Max {1.0} \
   CONFIG.Stopband_Min {0.02} \
   CONFIG.Zero_Pack_Factor {1} \
 ] $fir_compiler_1

  # Create interface connections
  connect_bd_intf_net -intf_net AXI_mux_0_M_AXIS [get_bd_intf_pins M_AXIS] [get_bd_intf_pins AXI_mux_0/M_AXIS]
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S00_AXIS1] [get_bd_intf_pins axis_combiner_2/S00_AXIS]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins S01_AXIS1] [get_bd_intf_pins axis_combiner_2/S01_AXIS]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins S01_AXIS] [get_bd_intf_pins axis_combiner_1/S01_AXIS]
  connect_bd_intf_net -intf_net axis_broadcaster_0_M00_AXIS [get_bd_intf_pins axis_broadcaster_0/M00_AXIS] [get_bd_intf_pins fir_compiler_1/S_AXIS_DATA]
  connect_bd_intf_net -intf_net axis_broadcaster_0_M01_AXIS [get_bd_intf_pins axis_broadcaster_0/M01_AXIS] [get_bd_intf_pins fir_compiler_0/S_AXIS_DATA]
  connect_bd_intf_net -intf_net axis_combiner_1_M_AXIS [get_bd_intf_pins axis_broadcaster_0/S_AXIS] [get_bd_intf_pins axis_combiner_1/M_AXIS]
  connect_bd_intf_net -intf_net axis_combiner_2_M_AXIS [get_bd_intf_pins axis_combiner_1/S00_AXIS] [get_bd_intf_pins axis_combiner_2/M_AXIS]
  connect_bd_intf_net -intf_net fir_compiler_0_M_AXIS_DATA [get_bd_intf_pins AXI_mux_0/S_AXIS_SLOW] [get_bd_intf_pins fir_compiler_0/M_AXIS_DATA]
  connect_bd_intf_net -intf_net fir_compiler_1_M_AXIS_DATA [get_bd_intf_pins AXI_mux_0/S_AXIS_FAST] [get_bd_intf_pins fir_compiler_1/M_AXIS_DATA]

  # Create port connections
  connect_bd_net -net pll_0_clk_out1 [get_bd_pins aclk] [get_bd_pins AXI_mux_0/aclk] [get_bd_pins axis_broadcaster_0/aclk] [get_bd_pins axis_combiner_1/aclk] [get_bd_pins axis_combiner_2/aclk] [get_bd_pins fir_compiler_0/aclk] [get_bd_pins fir_compiler_1/aclk]
  connect_bd_net -net select1_1 [get_bd_pins select1] [get_bd_pins AXI_mux_0/sel]
  connect_bd_net -net slice_0_dout [get_bd_pins aresetn] [get_bd_pins axis_broadcaster_0/aresetn] [get_bd_pins axis_combiner_1/aresetn] [get_bd_pins axis_combiner_2/aresetn] [get_bd_pins fir_compiler_0/aresetn] [get_bd_pins fir_compiler_1/aresetn]

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
  create_bd_pin -dir I -from 511 -to 0 Din
  create_bd_pin -dir O -from 3 -to 0 Dout
  create_bd_pin -dir O -from 0 -to 0 Dout7
  create_bd_pin -dir O -from 0 -to 0 Dout8
  create_bd_pin -dir O -from 3 -to 0 Dout9
  create_bd_pin -dir O -from 0 -to 0 Dout10
  create_bd_pin -dir O -from 0 -to 0 Dout11
  create_bd_pin -dir O -from 0 -to 0 Dout12
  create_bd_pin -dir O -from 0 -to 0 Dout13
  create_bd_pin -dir O -from 0 -to 0 Dout14
  create_bd_pin -dir O -from 0 -to 0 Dout15
  create_bd_pin -dir I -from 15 -to 0 In2
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn
  create_bd_pin -dir O -from 31 -to 0 dout1
  create_bd_pin -dir O -from 31 -to 0 dout2
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
   CONFIG.DIN_WIDTH {512} \
   CONFIG.DOUT_WIDTH {192} \
 ] $CH1_params

  # Create instance: CH2_config
  create_hier_cell_CH2_config $hier_obj CH2_config

  # Create instance: CH2_params, and set properties
  set CH2_params [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 CH2_params ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {447} \
   CONFIG.DIN_TO {256} \
   CONFIG.DIN_WIDTH {512} \
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
  set_property -dict [ list \
   CONFIG.CONST_WIDTH {32} \
 ] $external_reset_fake

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
  connect_bd_net -net Din1_1 [get_bd_pins Din] [get_bd_pins CBC_config/Din1] [get_bd_pins CH1_Config/Din1] [get_bd_pins CH1_params/Din] [get_bd_pins CH2_config/Din1] [get_bd_pins CH2_params/Din] [get_bd_pins Feedback_config_bus/Din] [get_bd_pins system_params/Din1]
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
  connect_bd_net -net system_params_Dout15 [get_bd_pins Dout15] [get_bd_pins system_params/Dout15]

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
  create_bd_pin -dir O -from 511 -to 0 cfg_data
  create_bd_pin -dir I -from 31 -to 0 cfg_data1
  create_bd_pin -dir I -from 127 -to 0 sts_data
  create_bd_pin -dir O -from 15 -to 0 sts_data1

  # Create instance: axi_cfg_register_0, and set properties
  set axi_cfg_register_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:axi_cfg_register:1.0 axi_cfg_register_0 ]
  set_property -dict [ list \
   CONFIG.AXI_ADDR_WIDTH {32} \
   CONFIG.CFG_DATA_WIDTH {512} \
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
  create_bd_pin -dir I -from 31 -to 0 -type rst ext_reset_in
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
  connect_bd_net -net Memory_IO_cfg_data [get_bd_pins Memory_IO/cfg_data] [get_bd_pins Reg_Brakeout/Din]
  connect_bd_net -net Memory_IO_sts_data1 [get_bd_pins Memory_IO/sts_data1] [get_bd_pins Reg_Brakeout/In2]
  connect_bd_net -net Reg_Brakeout_Dout [get_bd_pins Reg_Brakeout/Dout] [get_bd_pins feedback_and_generation/sel]
  connect_bd_net -net Reg_Brakeout_Dout9 [get_bd_pins Reg_Brakeout/Dout9] [get_bd_pins feedback_and_generation/CH2_sel]
  connect_bd_net -net Reg_Brakeout_Dout15 [get_bd_pins Reg_Brakeout/Dout15] [get_bd_pins downsampling/select1]
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


