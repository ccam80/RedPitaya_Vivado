# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADC_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CFG_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DDS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OPERAND_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OPERAND_WIDTH_LONG" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PARAM_A_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PARAM_B_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PARAM_C_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PARAM_D_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PARAM_E_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PARAM_F_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PARAM_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RNG_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SEL_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADC_WIDTH { PARAM_VALUE.ADC_WIDTH } {
	# Procedure called to update ADC_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_WIDTH { PARAM_VALUE.ADC_WIDTH } {
	# Procedure called to validate ADC_WIDTH
	return true
}

proc update_PARAM_VALUE.CFG_WIDTH { PARAM_VALUE.CFG_WIDTH } {
	# Procedure called to update CFG_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CFG_WIDTH { PARAM_VALUE.CFG_WIDTH } {
	# Procedure called to validate CFG_WIDTH
	return true
}

proc update_PARAM_VALUE.DDS_WIDTH { PARAM_VALUE.DDS_WIDTH } {
	# Procedure called to update DDS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DDS_WIDTH { PARAM_VALUE.DDS_WIDTH } {
	# Procedure called to validate DDS_WIDTH
	return true
}

proc update_PARAM_VALUE.OPERAND_WIDTH { PARAM_VALUE.OPERAND_WIDTH } {
	# Procedure called to update OPERAND_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OPERAND_WIDTH { PARAM_VALUE.OPERAND_WIDTH } {
	# Procedure called to validate OPERAND_WIDTH
	return true
}

proc update_PARAM_VALUE.OPERAND_WIDTH_LONG { PARAM_VALUE.OPERAND_WIDTH_LONG } {
	# Procedure called to update OPERAND_WIDTH_LONG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OPERAND_WIDTH_LONG { PARAM_VALUE.OPERAND_WIDTH_LONG } {
	# Procedure called to validate OPERAND_WIDTH_LONG
	return true
}

proc update_PARAM_VALUE.PARAM_A_OFFSET { PARAM_VALUE.PARAM_A_OFFSET } {
	# Procedure called to update PARAM_A_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PARAM_A_OFFSET { PARAM_VALUE.PARAM_A_OFFSET } {
	# Procedure called to validate PARAM_A_OFFSET
	return true
}

proc update_PARAM_VALUE.PARAM_B_OFFSET { PARAM_VALUE.PARAM_B_OFFSET } {
	# Procedure called to update PARAM_B_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PARAM_B_OFFSET { PARAM_VALUE.PARAM_B_OFFSET } {
	# Procedure called to validate PARAM_B_OFFSET
	return true
}

proc update_PARAM_VALUE.PARAM_C_OFFSET { PARAM_VALUE.PARAM_C_OFFSET } {
	# Procedure called to update PARAM_C_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PARAM_C_OFFSET { PARAM_VALUE.PARAM_C_OFFSET } {
	# Procedure called to validate PARAM_C_OFFSET
	return true
}

proc update_PARAM_VALUE.PARAM_D_OFFSET { PARAM_VALUE.PARAM_D_OFFSET } {
	# Procedure called to update PARAM_D_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PARAM_D_OFFSET { PARAM_VALUE.PARAM_D_OFFSET } {
	# Procedure called to validate PARAM_D_OFFSET
	return true
}

proc update_PARAM_VALUE.PARAM_E_OFFSET { PARAM_VALUE.PARAM_E_OFFSET } {
	# Procedure called to update PARAM_E_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PARAM_E_OFFSET { PARAM_VALUE.PARAM_E_OFFSET } {
	# Procedure called to validate PARAM_E_OFFSET
	return true
}

proc update_PARAM_VALUE.PARAM_F_OFFSET { PARAM_VALUE.PARAM_F_OFFSET } {
	# Procedure called to update PARAM_F_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PARAM_F_OFFSET { PARAM_VALUE.PARAM_F_OFFSET } {
	# Procedure called to validate PARAM_F_OFFSET
	return true
}

proc update_PARAM_VALUE.PARAM_WIDTH { PARAM_VALUE.PARAM_WIDTH } {
	# Procedure called to update PARAM_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PARAM_WIDTH { PARAM_VALUE.PARAM_WIDTH } {
	# Procedure called to validate PARAM_WIDTH
	return true
}

proc update_PARAM_VALUE.RNG_WIDTH { PARAM_VALUE.RNG_WIDTH } {
	# Procedure called to update RNG_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RNG_WIDTH { PARAM_VALUE.RNG_WIDTH } {
	# Procedure called to validate RNG_WIDTH
	return true
}

proc update_PARAM_VALUE.SEL_WIDTH { PARAM_VALUE.SEL_WIDTH } {
	# Procedure called to update SEL_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SEL_WIDTH { PARAM_VALUE.SEL_WIDTH } {
	# Procedure called to validate SEL_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.CFG_WIDTH { MODELPARAM_VALUE.CFG_WIDTH PARAM_VALUE.CFG_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_WIDTH}] ${MODELPARAM_VALUE.CFG_WIDTH}
}

proc update_MODELPARAM_VALUE.PARAM_WIDTH { MODELPARAM_VALUE.PARAM_WIDTH PARAM_VALUE.PARAM_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PARAM_WIDTH}] ${MODELPARAM_VALUE.PARAM_WIDTH}
}

proc update_MODELPARAM_VALUE.PARAM_A_OFFSET { MODELPARAM_VALUE.PARAM_A_OFFSET PARAM_VALUE.PARAM_A_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PARAM_A_OFFSET}] ${MODELPARAM_VALUE.PARAM_A_OFFSET}
}

proc update_MODELPARAM_VALUE.PARAM_B_OFFSET { MODELPARAM_VALUE.PARAM_B_OFFSET PARAM_VALUE.PARAM_B_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PARAM_B_OFFSET}] ${MODELPARAM_VALUE.PARAM_B_OFFSET}
}

proc update_MODELPARAM_VALUE.PARAM_C_OFFSET { MODELPARAM_VALUE.PARAM_C_OFFSET PARAM_VALUE.PARAM_C_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PARAM_C_OFFSET}] ${MODELPARAM_VALUE.PARAM_C_OFFSET}
}

proc update_MODELPARAM_VALUE.PARAM_D_OFFSET { MODELPARAM_VALUE.PARAM_D_OFFSET PARAM_VALUE.PARAM_D_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PARAM_D_OFFSET}] ${MODELPARAM_VALUE.PARAM_D_OFFSET}
}

proc update_MODELPARAM_VALUE.PARAM_E_OFFSET { MODELPARAM_VALUE.PARAM_E_OFFSET PARAM_VALUE.PARAM_E_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PARAM_E_OFFSET}] ${MODELPARAM_VALUE.PARAM_E_OFFSET}
}

proc update_MODELPARAM_VALUE.PARAM_F_OFFSET { MODELPARAM_VALUE.PARAM_F_OFFSET PARAM_VALUE.PARAM_F_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PARAM_F_OFFSET}] ${MODELPARAM_VALUE.PARAM_F_OFFSET}
}

proc update_MODELPARAM_VALUE.ADC_WIDTH { MODELPARAM_VALUE.ADC_WIDTH PARAM_VALUE.ADC_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_WIDTH}] ${MODELPARAM_VALUE.ADC_WIDTH}
}

proc update_MODELPARAM_VALUE.DDS_WIDTH { MODELPARAM_VALUE.DDS_WIDTH PARAM_VALUE.DDS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DDS_WIDTH}] ${MODELPARAM_VALUE.DDS_WIDTH}
}

proc update_MODELPARAM_VALUE.RNG_WIDTH { MODELPARAM_VALUE.RNG_WIDTH PARAM_VALUE.RNG_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RNG_WIDTH}] ${MODELPARAM_VALUE.RNG_WIDTH}
}

proc update_MODELPARAM_VALUE.OPERAND_WIDTH { MODELPARAM_VALUE.OPERAND_WIDTH PARAM_VALUE.OPERAND_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OPERAND_WIDTH}] ${MODELPARAM_VALUE.OPERAND_WIDTH}
}

proc update_MODELPARAM_VALUE.OPERAND_WIDTH_LONG { MODELPARAM_VALUE.OPERAND_WIDTH_LONG PARAM_VALUE.OPERAND_WIDTH_LONG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OPERAND_WIDTH_LONG}] ${MODELPARAM_VALUE.OPERAND_WIDTH_LONG}
}

proc update_MODELPARAM_VALUE.SEL_WIDTH { MODELPARAM_VALUE.SEL_WIDTH PARAM_VALUE.SEL_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SEL_WIDTH}] ${MODELPARAM_VALUE.SEL_WIDTH}
}

