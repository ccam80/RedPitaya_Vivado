
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
# axis_ram_writer, gng, AXI_mux, CBC, multiplier_breakout, multiplier_breakout, feedback_combined, bus_multiplexer_combin, bus_multiplexer_combin, bus_multiplexer_combin, bus_multiplexer_combin, bus_multiplexer_combin

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
   CONFIG.BestPrecision {false} \
   CONFIG.Clock_Frequency {125} \
   CONFIG.CoefficientVector { \
     -1018, -989, \
     -1021, -1044, \
     -104, -76, \
     -1044, -1021, \
     -1046, -1074, \
     -1067, -1090, \
     -1074, -1046, \
     -1090, -1067, \
     -1102, -1129, \
     -111, -150, \
     -1113, -1136, \
     -1129, -1102, \
     -1136, -1113, \
     -1155, -1182, \
     -1158, -1180, \
     -1180, -1158, \
     -1182, -1155, \
     -1202, -1224, \
     -1208, -1233, \
     -1224, -1202, \
     -1233, -1208, \
     -1245, -1267, \
     -1258, -1283, \
     -1267, -1245, \
     -1283, -1258, \
     -1288, -1308, \
     -1307, -1331, \
     -1308, -1288, \
     -132, -160, \
     -1329, -1349, \
     -1331, -1307, \
     -1349, -1329, \
     -1354, -1377, \
     -1369, -1389, \
     -1377, -1354, \
     -1389, -1369, \
     -1400, -1422, \
     -1408, -1428, \
     -1422, -1400, \
     -1428, -1408, \
     -1444, -1465, \
     -1446, -1465, \
     -1465, -1446, \
     -1465, -1446, \
     -1484, -1502, \
     -1486, -1507, \
     -150, -111, \
     -1502, -1484, \
     -1507, -1486, \
     -1520, -1537, \
     -1527, -1546, \
     -1537, -1520, \
     -1546, -1527, \
     -1554, -1571, \
     -1565, -1584, \
     -1571, -1554, \
     -1584, -1565, \
     -1588, -1604, \
     -160, -132, \
     -1603, -1621, \
     -1604, -1588, \
     -1621, -1603, \
     -1621, -1603, \
     -1636, -1621, \
     -1638, -1655, \
     -1652, -1667, \
     -1655, -1638, \
     -1667, -1652, \
     -1672, -1688, \
     -1682, -1696, \
     -1688, -1672, \
     -1696, -1682, \
     -1704, -1719, \
     -1711, -1724, \
     -1719, -1704, \
     -1724, -1711, \
     -1734, -1749, \
     -1738, -1751, \
     -1749, -1734, \
     -1751, -1738, \
     -1763, -1777, \
     -1764, -1777, \
     -1777, -1764, \
     -1777, -1764, \
     -1789, -1801, \
     -1790, -1803, \
     -1801, -1789, \
     -1803, -1790, \
     -1813, -1824, \
     -1815, -1827, \
     -1824, -1813, \
     -1827, -1815, \
     -1835, -1845, \
     -1838, -1850, \
     -1845, -1835, \
     -1850, -1838, \
     -1855, -1865, \
     -1860, -1870, \
     -1865, -1855, \
     -1870, -1860, \
     -1875, -1884, \
     -188, -225, \
     -188, -225, \
     -1880, -1890, \
     -1884, -1875, \
     -1890, -1880, \
     -1892, -1901, \
     -1899, -1907, \
     -1901, -1892, \
     -1907, -1899, \
     -1909, -1917, \
     -1915, -1923, \
     -1917, -1909, \
     -1923, -1915, \
     -1924, -1931, \
     -1930, -1937, \
     -1931, -1924, \
     -1937, -1930, \
     -1937, -1930, \
     -1943, -1937, \
     -1943, -1937, \
     -1949, -1943, \
     -1949, -1943, \
     -1955, -1949, \
     -1955, -1949, \
     -1960, -1955, \
     -1960, -1955, \
     -1964, -1960, \
     -1965, -1969, \
     -1968, -1972, \
     -1969, -1965, \
     -1972, -1968, \
     -1973, -1976, \
     -1976, -1973, \
     -1976, -1973, \
     -1979, -1976, \
     -1979, -1976, \
     -1981, -1984, \
     -1982, -1979, \
     -1984, -1981, \
     -1984, -1981, \
     -1986, -1984, \
     -1986, -1984, \
     -1987, -1986, \
     -1987, -1986, \
     -1988, -1987, \
     -1988, -1987, \
     -1989, -1988, \
     -1989, -1988, \
     -1989, -1988, \
     -20, -48, \
     -216, -188, \
     -225, -188, \
     -243, -271, \
     -262, -299, \
     -271, -243, \
     -299, -262, \
     -299, -262, \
     -326, -299, \
     -336, -372, \
     -34, -73, \
     -354, -381, \
     -372, -336, \
     -381, -354, \
     -408, -443, \
     -408, -443, \
     -435, -408, \
     -443, -408, \
     -462, -489, \
     -478, -513, \
     -48, -20, \
     -489, -462, \
     -513, -478, \
     -516, -542, \
     -542, -516, \
     -547, -581, \
     -569, -595, \
     -581, -547, \
     -595, -569, \
     -615, -648, \
     -622, -648, \
     -648, -622, \
     -648, -622, \
     -674, -700, \
     -681, -714, \
     -700, -674, \
     -714, -681, \
     -725, -751, \
     -73, -34, \
     -746, -778, \
     -751, -725, \
     -76, -104, \
     -776, -802, \
     -778, -746, \
     -802, -776, \
     -809, -840, \
     -827, -851, \
     -840, -809, \
     -851, -827, \
     -871, -901, \
     -876, -901, \
     -901, -876, \
     -901, -876, \
     -925, -949, \
     -931, -960, \
     -949, -925, \
     -960, -931, \
     -973, -997, \
     -989, -1018, \
     -997, -973, \
     1022, 1049, \
     1034, 1080, \
     1049, 1022, \
     1076, 1103, \
     1080, 1034, \
     1103, 1076, \
     1127, 1173, \
     1129, 1156, \
     1156, 1129, \
     1173, 1127, \
     1183, 1209, \
     1209, 1183, \
     122, 150, \
     1220, 1267, \
     1235, 1262, \
     125, 84, \
     1262, 1235, \
     1267, 1220, \
     1288, 1314, \
     1314, 1288, \
     1315, 1362, \
     1340, 1365, \
     1362, 1315, \
     1365, 1340, \
     1391, 1416, \
     1410, 1458, \
     1416, 1391, \
     1441, 1466, \
     1458, 1410, \
     1466, 1441, \
     1491, 1516, \
     150, 122, \
     1506, 1554, \
     1516, 1491, \
     1541, 1565, \
     1554, 1506, \
     1565, 1541, \
     1589, 1613, \
     1603, 1651, \
     1613, 1589, \
     1637, 1661, \
     165, 206, \
     1651, 1603, \
     1661, 1637, \
     1684, 1708, \
     1700, 1749, \
     1708, 1684, \
     1731, 1754, \
     1749, 1700, \
     1754, 1731, \
     1777, 1799 \
     179, 207, \
     1798, 1848, \
     1799, 1777, \
     1848, 1798, \
     1897, 1947, \
     1947, 1897, \
     1997, 2047, \
     2047, 1997, \
     206, 165, \
     207, 179, \
     2097, 2147, \
     2147, 2097, \
     2198, 2248, \
     2248, 2198, \
     2299, 2350, \
     2350, 2299, \
     236, 264, \
     2401, 2452, \
     2452, 2401, \
     247, 288, \
     2503, 2554, \
     2554, 2503, \
     2606, 2657, \
     264, 236, \
     2657, 2606, \
     2709, 2760, \
     2760, 2709, \
     2812, 2864, \
     2864, 2812, \
     288, 247, \
     2915, 2967, \
     292, 321, \
     2967, 2915, \
     3019, 3071, \
     3071, 3019, \
     3123, 3176, \
     3176, 3123, \
     321, 292, \
     3228, 3280, \
     3280, 3228, \
     330, 372, \
     3332, 3384, \
     3384, 3332, \
     3437, 3489, \
     3489, 3437, \
     349, 378, \
     3541, 3594, \
     3594, 3541, \
     3646, 3698, \
     3698, 3646, \
     37, 9, \
     372, 330, \
     3750, 3803, \
     378, 349, \
     3803, 3750, \
     3855, 3907, \
     3907, 3855, \
     3959, 4012, \
     4012, 3959, \
     406, 435, \
     4064, 4116, \
     4116, 4064, \
     414, 457, \
     4168, 4220, \
     4220, 4168, \
     4272, 4324, \
     4324, 4272, \
     435, 406, \
     4376, 4427, \
     4427, 4376, \
     4479, 4530, \
     45, 5, \
     4530, 4479, \
     457, 414, \
     4582, 4633, \
     463, 492, \
     4633, 4582, \
     4685, 4736, \
     4736, 4685, \
     4787, 4838, \
     4838, 4787, \
     4889, 4939, \
     492, 463, \
     4939, 4889, \
     499, 543, \
     4990, 5040, \
     5, 45, \
     5040, 4990, \
     5091, 5141, \
     5141, 5091, \
     5191, 5241, \
     520, 548, \
     5241, 5191, \
     5291, 5340, \
     5340, 5291, \
     5389, 5439, \
     543, 499, \
     5439, 5389, \
     548, 520, \
     5488, 5537, \
     5537, 5488, \
     5585, 5634, \
     5634, 5585, \
     5682, 5730, \
     5730, 5682, \
     577, 605, \
     5778, 5826, \
     5826, 5778, \
     586, 630, \
     5873, 5920, \
     5920, 5873, \
     5967, 6014, \
     6014, 5967, \
     605, 577, \
     6061, 6107, \
     6107, 6061, \
     6153, 6199, \
     6199, 6153, \
     6244, 6290, \
     6290, 6244, \
     630, 586, \
     633, 661, \
     6335, 6379, \
     6379, 6335, \
     6424, 6468, \
     6468, 6424, \
     65, 93, \
     6512, 6556, \
     6556, 6512, \
     6599, 6642, \
     661, 633, \
     6642, 6599, \
     6685, 6728, \
     6728, 6685, \
     673, 718, \
     6770, 6812, \
     6812, 6770, \
     6853, 6894, \
     689, 717, \
     6894, 6853, \
     6935, 6976, \
     6976, 6935, \
     7016, 7056, \
     7056, 7016, \
     7096, 7135, \
     7135, 7096, \
     717, 689, \
     7174, 7212, \
     718, 673, \
     7212, 7174, \
     7251, 7288, \
     7288, 7251, \
     7326, 7363, \
     7363, 7326, \
     7400, 7436, \
     7436, 7400, \
     745, 773, \
     7472, 7508, \
     7508, 7472, \
     7543, 7578, \
     7578, 7543, \
     7612, 7646, \
     762, 807, \
     7646, 7612, \
     7680, 7713, \
     7713, 7680, \
     773, 745, \
     7746, 7779, \
     7779, 7746, \
     7811, 7842, \
     7842, 7811, \
     7874, 7905, \
     7905, 7874, \
     7935, 7965, \
     7965, 7935, \
     7994, 8023, \
     801, 829, \
     8023, 7994, \
     8052, 8080, \
     807, 762, \
     8080, 8052, \
     8108, 8135, \
     8135, 8108, \
     8162, 8189, \
     8189, 8162, \
     8215, 8240, \
     8240, 8215, \
     8265, 8290, \
     829, 801, \
     8290, 8265, \
     8314, 8338, \
     8338, 8314, \
     8361, 8384, \
     8384, 8361, \
     84, 125, \
     8406, 8428, \
     8428, 8406, \
     8449, 8470, \
     8470, 8449, \
     8490, 8510, \
     8510, 8490, \
     852, 897, \
     8530, 8549, \
     8549, 8530, \
     8567, 8585, \
     857, 884, \
     8585, 8567, \
     8603, 8619, \
     8619, 8603, \
     8636, 8652, \
     8652, 8636, \
     8667, 8682, \
     8682, 8667, \
     8697, 8711, \
     8711, 8697, \
     8724, 8737, \
     8737, 8724, \
     8750, 8762, \
     8762, 8750, \
     8773, 8784, \
     8784, 8773, \
     8794, 8804, \
     8804, 8794, \
     8814, 8822, \
     8822, 8814, \
     8831, 8839, \
     8839, 8831, \
     884, 857, \
     8846, 8853, \
     8853, 8846, \
     8859, 8865, \
     8865, 8859, \
     8870, 8875, \
     8875, 8870, \
     8879, 8882, \
     8882, 8879, \
     8886, 8888, \
     8888, 8886, \
     8890, 8892, \
     8892, 8890, \
     8893, 8893, \
     8893, 8893, \
     897, 852, \
     9, 37, \
     912, 940, \
     93, 65, \
     940, 912, \
     942, 988, \
     967, 994, \
     988, 942, \
     994, 967, \
   } \
   CONFIG.Coefficient_Fanout {true} \
   CONFIG.Coefficient_Fractional_Bits {0} \
   CONFIG.Coefficient_Sets {1} \
   CONFIG.Coefficient_Sign {Signed} \
   CONFIG.Coefficient_Structure {Symmetric} \
   CONFIG.Coefficient_Width {17} \
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
   CONFIG.Output_Rounding_Mode {Full_Precision} \
   CONFIG.Output_Width {38} \
   CONFIG.Passband_Max {0.002} \
   CONFIG.Pre_Adder_Pipeline {true} \
   CONFIG.Quantization {Integer_Coefficients} \
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
   CONFIG.ColumnConfig {2} \
   CONFIG.Control_Broadcast_Fanout {true} \
   CONFIG.Control_Column_Fanout {true} \
   CONFIG.Control_LUT_Pipeline {true} \
   CONFIG.Control_Path_Fanout {true} \
   CONFIG.Data_Path_Broadcast {false} \
   CONFIG.Data_Path_Fanout {true} \
   CONFIG.Data_Width {16} \
   CONFIG.Decimation_Rate {50} \
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
  create_bd_pin -dir I -from 17 -to 0 In2
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
  create_bd_pin -dir O -from 17 -to 0 sts_data1

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

  # Create instance: axis_ram_writer_1, and set properties
  set block_name axis_ram_writer
  set block_cell_name axis_ram_writer_1
  if { [catch {set axis_ram_writer_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axis_ram_writer_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.ADDR_WIDTH {18} \
   CONFIG.AXI_ID_WIDTH {3} \
 ] $axis_ram_writer_1

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {262143} \
   CONFIG.CONST_WIDTH {18} \
 ] $xlconstant_0

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXI1_1 [get_bd_intf_pins S_AXI1] [get_bd_intf_pins axi_sts_register_0/S_AXI]
  connect_bd_intf_net -intf_net S_AXIS_1 [get_bd_intf_pins S_AXIS] [get_bd_intf_pins axis_ram_writer_1/s_axis]
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_cfg_register_0/S_AXI]
  connect_bd_intf_net -intf_net axis_ram_writer_1_m_axi [get_bd_intf_pins M_AXI] [get_bd_intf_pins axis_ram_writer_1/m_axi]

  # Create port connections
  connect_bd_net -net aresetn1_1 [get_bd_pins aresetn1] [get_bd_pins axis_ram_writer_1/aresetn]
  connect_bd_net -net axi_cfg_register_0_cfg_data [get_bd_pins cfg_data] [get_bd_pins axi_cfg_register_0/cfg_data]
  connect_bd_net -net axis_ram_writer_1_sts_data [get_bd_pins sts_data1] [get_bd_pins axis_ram_writer_1/sts_data]
  connect_bd_net -net cfg_data1_1 [get_bd_pins cfg_data1] [get_bd_pins axis_ram_writer_1/min_addr]
  connect_bd_net -net pll_0_clk_out1 [get_bd_pins aclk] [get_bd_pins axi_cfg_register_0/aclk] [get_bd_pins axi_sts_register_0/aclk] [get_bd_pins axis_ram_writer_1/aclk]
  connect_bd_net -net rst_0_peripheral_aresetn [get_bd_pins aresetn] [get_bd_pins axi_cfg_register_0/aresetn] [get_bd_pins axi_sts_register_0/aresetn]
  connect_bd_net -net sts_data_1 [get_bd_pins sts_data] [get_bd_pins axi_sts_register_0/sts_data]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins axis_ram_writer_1/cfg_data] [get_bd_pins xlconstant_0/dout]

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
  assign_bd_address -offset 0x00000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces Memory_IO/axis_ram_writer_1/m_axi] [get_bd_addr_segs Core/ps_0/S_AXI_ACP/ACP_DDR_LOWOCM] -force
  assign_bd_address -offset 0xE0000000 -range 0x00400000 -target_address_space [get_bd_addr_spaces Memory_IO/axis_ram_writer_1/m_axi] [get_bd_addr_segs Core/ps_0/S_AXI_ACP/ACP_IOP] -force
  assign_bd_address -offset 0x40000000 -range 0x40000000 -target_address_space [get_bd_addr_spaces Memory_IO/axis_ram_writer_1/m_axi] [get_bd_addr_segs Core/ps_0/S_AXI_ACP/ACP_M_AXI_GP0] -force


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


