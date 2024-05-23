# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADC_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "A_INTERVAL_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "A_START_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "B_INTERVAL_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "B_START_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CFG_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_INTERVAL_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_START_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DDS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "D_INTERVAL_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "D_START_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FREQ_INTERVAL_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FREQ_START_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "KD_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "KP_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OPERAND_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PARAM_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RHAT_INTERVAL_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RHAT_START_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SEL_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADC_WIDTH { PARAM_VALUE.ADC_WIDTH } {
	# Procedure called to update ADC_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_WIDTH { PARAM_VALUE.ADC_WIDTH } {
	# Procedure called to validate ADC_WIDTH
	return true
}

proc update_PARAM_VALUE.A_INTERVAL_OFFSET { PARAM_VALUE.A_INTERVAL_OFFSET } {
	# Procedure called to update A_INTERVAL_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.A_INTERVAL_OFFSET { PARAM_VALUE.A_INTERVAL_OFFSET } {
	# Procedure called to validate A_INTERVAL_OFFSET
	return true
}

proc update_PARAM_VALUE.A_START_OFFSET { PARAM_VALUE.A_START_OFFSET } {
	# Procedure called to update A_START_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.A_START_OFFSET { PARAM_VALUE.A_START_OFFSET } {
	# Procedure called to validate A_START_OFFSET
	return true
}

proc update_PARAM_VALUE.B_INTERVAL_OFFSET { PARAM_VALUE.B_INTERVAL_OFFSET } {
	# Procedure called to update B_INTERVAL_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.B_INTERVAL_OFFSET { PARAM_VALUE.B_INTERVAL_OFFSET } {
	# Procedure called to validate B_INTERVAL_OFFSET
	return true
}

proc update_PARAM_VALUE.B_START_OFFSET { PARAM_VALUE.B_START_OFFSET } {
	# Procedure called to update B_START_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.B_START_OFFSET { PARAM_VALUE.B_START_OFFSET } {
	# Procedure called to validate B_START_OFFSET
	return true
}

proc update_PARAM_VALUE.CFG_WIDTH { PARAM_VALUE.CFG_WIDTH } {
	# Procedure called to update CFG_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CFG_WIDTH { PARAM_VALUE.CFG_WIDTH } {
	# Procedure called to validate CFG_WIDTH
	return true
}

proc update_PARAM_VALUE.C_INTERVAL_OFFSET { PARAM_VALUE.C_INTERVAL_OFFSET } {
	# Procedure called to update C_INTERVAL_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_INTERVAL_OFFSET { PARAM_VALUE.C_INTERVAL_OFFSET } {
	# Procedure called to validate C_INTERVAL_OFFSET
	return true
}

proc update_PARAM_VALUE.C_START_OFFSET { PARAM_VALUE.C_START_OFFSET } {
	# Procedure called to update C_START_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_START_OFFSET { PARAM_VALUE.C_START_OFFSET } {
	# Procedure called to validate C_START_OFFSET
	return true
}

proc update_PARAM_VALUE.DDS_WIDTH { PARAM_VALUE.DDS_WIDTH } {
	# Procedure called to update DDS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DDS_WIDTH { PARAM_VALUE.DDS_WIDTH } {
	# Procedure called to validate DDS_WIDTH
	return true
}

proc update_PARAM_VALUE.D_INTERVAL_OFFSET { PARAM_VALUE.D_INTERVAL_OFFSET } {
	# Procedure called to update D_INTERVAL_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.D_INTERVAL_OFFSET { PARAM_VALUE.D_INTERVAL_OFFSET } {
	# Procedure called to validate D_INTERVAL_OFFSET
	return true
}

proc update_PARAM_VALUE.D_START_OFFSET { PARAM_VALUE.D_START_OFFSET } {
	# Procedure called to update D_START_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.D_START_OFFSET { PARAM_VALUE.D_START_OFFSET } {
	# Procedure called to validate D_START_OFFSET
	return true
}

proc update_PARAM_VALUE.FREQ_INTERVAL_OFFSET { PARAM_VALUE.FREQ_INTERVAL_OFFSET } {
	# Procedure called to update FREQ_INTERVAL_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FREQ_INTERVAL_OFFSET { PARAM_VALUE.FREQ_INTERVAL_OFFSET } {
	# Procedure called to validate FREQ_INTERVAL_OFFSET
	return true
}

proc update_PARAM_VALUE.FREQ_START_OFFSET { PARAM_VALUE.FREQ_START_OFFSET } {
	# Procedure called to update FREQ_START_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FREQ_START_OFFSET { PARAM_VALUE.FREQ_START_OFFSET } {
	# Procedure called to validate FREQ_START_OFFSET
	return true
}

proc update_PARAM_VALUE.KD_OFFSET { PARAM_VALUE.KD_OFFSET } {
	# Procedure called to update KD_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.KD_OFFSET { PARAM_VALUE.KD_OFFSET } {
	# Procedure called to validate KD_OFFSET
	return true
}

proc update_PARAM_VALUE.KP_OFFSET { PARAM_VALUE.KP_OFFSET } {
	# Procedure called to update KP_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.KP_OFFSET { PARAM_VALUE.KP_OFFSET } {
	# Procedure called to validate KP_OFFSET
	return true
}

proc update_PARAM_VALUE.OPERAND_WIDTH { PARAM_VALUE.OPERAND_WIDTH } {
	# Procedure called to update OPERAND_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OPERAND_WIDTH { PARAM_VALUE.OPERAND_WIDTH } {
	# Procedure called to validate OPERAND_WIDTH
	return true
}

proc update_PARAM_VALUE.PARAM_WIDTH { PARAM_VALUE.PARAM_WIDTH } {
	# Procedure called to update PARAM_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PARAM_WIDTH { PARAM_VALUE.PARAM_WIDTH } {
	# Procedure called to validate PARAM_WIDTH
	return true
}

proc update_PARAM_VALUE.RHAT_INTERVAL_OFFSET { PARAM_VALUE.RHAT_INTERVAL_OFFSET } {
	# Procedure called to update RHAT_INTERVAL_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RHAT_INTERVAL_OFFSET { PARAM_VALUE.RHAT_INTERVAL_OFFSET } {
	# Procedure called to validate RHAT_INTERVAL_OFFSET
	return true
}

proc update_PARAM_VALUE.RHAT_START_OFFSET { PARAM_VALUE.RHAT_START_OFFSET } {
	# Procedure called to update RHAT_START_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RHAT_START_OFFSET { PARAM_VALUE.RHAT_START_OFFSET } {
	# Procedure called to validate RHAT_START_OFFSET
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

proc update_MODELPARAM_VALUE.RHAT_START_OFFSET { MODELPARAM_VALUE.RHAT_START_OFFSET PARAM_VALUE.RHAT_START_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RHAT_START_OFFSET}] ${MODELPARAM_VALUE.RHAT_START_OFFSET}
}

proc update_MODELPARAM_VALUE.RHAT_INTERVAL_OFFSET { MODELPARAM_VALUE.RHAT_INTERVAL_OFFSET PARAM_VALUE.RHAT_INTERVAL_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RHAT_INTERVAL_OFFSET}] ${MODELPARAM_VALUE.RHAT_INTERVAL_OFFSET}
}

proc update_MODELPARAM_VALUE.FREQ_START_OFFSET { MODELPARAM_VALUE.FREQ_START_OFFSET PARAM_VALUE.FREQ_START_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FREQ_START_OFFSET}] ${MODELPARAM_VALUE.FREQ_START_OFFSET}
}

proc update_MODELPARAM_VALUE.FREQ_INTERVAL_OFFSET { MODELPARAM_VALUE.FREQ_INTERVAL_OFFSET PARAM_VALUE.FREQ_INTERVAL_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FREQ_INTERVAL_OFFSET}] ${MODELPARAM_VALUE.FREQ_INTERVAL_OFFSET}
}

proc update_MODELPARAM_VALUE.KP_OFFSET { MODELPARAM_VALUE.KP_OFFSET PARAM_VALUE.KP_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.KP_OFFSET}] ${MODELPARAM_VALUE.KP_OFFSET}
}

proc update_MODELPARAM_VALUE.KD_OFFSET { MODELPARAM_VALUE.KD_OFFSET PARAM_VALUE.KD_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.KD_OFFSET}] ${MODELPARAM_VALUE.KD_OFFSET}
}

proc update_MODELPARAM_VALUE.A_START_OFFSET { MODELPARAM_VALUE.A_START_OFFSET PARAM_VALUE.A_START_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.A_START_OFFSET}] ${MODELPARAM_VALUE.A_START_OFFSET}
}

proc update_MODELPARAM_VALUE.A_INTERVAL_OFFSET { MODELPARAM_VALUE.A_INTERVAL_OFFSET PARAM_VALUE.A_INTERVAL_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.A_INTERVAL_OFFSET}] ${MODELPARAM_VALUE.A_INTERVAL_OFFSET}
}

proc update_MODELPARAM_VALUE.B_START_OFFSET { MODELPARAM_VALUE.B_START_OFFSET PARAM_VALUE.B_START_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.B_START_OFFSET}] ${MODELPARAM_VALUE.B_START_OFFSET}
}

proc update_MODELPARAM_VALUE.B_INTERVAL_OFFSET { MODELPARAM_VALUE.B_INTERVAL_OFFSET PARAM_VALUE.B_INTERVAL_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.B_INTERVAL_OFFSET}] ${MODELPARAM_VALUE.B_INTERVAL_OFFSET}
}

proc update_MODELPARAM_VALUE.C_START_OFFSET { MODELPARAM_VALUE.C_START_OFFSET PARAM_VALUE.C_START_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_START_OFFSET}] ${MODELPARAM_VALUE.C_START_OFFSET}
}

proc update_MODELPARAM_VALUE.C_INTERVAL_OFFSET { MODELPARAM_VALUE.C_INTERVAL_OFFSET PARAM_VALUE.C_INTERVAL_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_INTERVAL_OFFSET}] ${MODELPARAM_VALUE.C_INTERVAL_OFFSET}
}

proc update_MODELPARAM_VALUE.D_START_OFFSET { MODELPARAM_VALUE.D_START_OFFSET PARAM_VALUE.D_START_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.D_START_OFFSET}] ${MODELPARAM_VALUE.D_START_OFFSET}
}

proc update_MODELPARAM_VALUE.D_INTERVAL_OFFSET { MODELPARAM_VALUE.D_INTERVAL_OFFSET PARAM_VALUE.D_INTERVAL_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.D_INTERVAL_OFFSET}] ${MODELPARAM_VALUE.D_INTERVAL_OFFSET}
}

proc update_MODELPARAM_VALUE.ADC_WIDTH { MODELPARAM_VALUE.ADC_WIDTH PARAM_VALUE.ADC_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_WIDTH}] ${MODELPARAM_VALUE.ADC_WIDTH}
}

proc update_MODELPARAM_VALUE.DDS_WIDTH { MODELPARAM_VALUE.DDS_WIDTH PARAM_VALUE.DDS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DDS_WIDTH}] ${MODELPARAM_VALUE.DDS_WIDTH}
}

proc update_MODELPARAM_VALUE.OPERAND_WIDTH { MODELPARAM_VALUE.OPERAND_WIDTH PARAM_VALUE.OPERAND_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OPERAND_WIDTH}] ${MODELPARAM_VALUE.OPERAND_WIDTH}
}

proc update_MODELPARAM_VALUE.SEL_WIDTH { MODELPARAM_VALUE.SEL_WIDTH PARAM_VALUE.SEL_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SEL_WIDTH}] ${MODELPARAM_VALUE.SEL_WIDTH}
}

