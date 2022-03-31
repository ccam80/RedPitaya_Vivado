# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DURATION_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FREQ_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PHASE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SELECT_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to update AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to validate AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.DURATION_WIDTH { PARAM_VALUE.DURATION_WIDTH } {
	# Procedure called to update DURATION_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DURATION_WIDTH { PARAM_VALUE.DURATION_WIDTH } {
	# Procedure called to validate DURATION_WIDTH
	return true
}

proc update_PARAM_VALUE.FREQ_WIDTH { PARAM_VALUE.FREQ_WIDTH } {
	# Procedure called to update FREQ_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FREQ_WIDTH { PARAM_VALUE.FREQ_WIDTH } {
	# Procedure called to validate FREQ_WIDTH
	return true
}

proc update_PARAM_VALUE.PHASE_WIDTH { PARAM_VALUE.PHASE_WIDTH } {
	# Procedure called to update PHASE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PHASE_WIDTH { PARAM_VALUE.PHASE_WIDTH } {
	# Procedure called to validate PHASE_WIDTH
	return true
}

proc update_PARAM_VALUE.SELECT_WIDTH { PARAM_VALUE.SELECT_WIDTH } {
	# Procedure called to update SELECT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SELECT_WIDTH { PARAM_VALUE.SELECT_WIDTH } {
	# Procedure called to validate SELECT_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.PHASE_WIDTH { MODELPARAM_VALUE.PHASE_WIDTH PARAM_VALUE.PHASE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PHASE_WIDTH}] ${MODELPARAM_VALUE.PHASE_WIDTH}
}

proc update_MODELPARAM_VALUE.FREQ_WIDTH { MODELPARAM_VALUE.FREQ_WIDTH PARAM_VALUE.FREQ_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FREQ_WIDTH}] ${MODELPARAM_VALUE.FREQ_WIDTH}
}

proc update_MODELPARAM_VALUE.DURATION_WIDTH { MODELPARAM_VALUE.DURATION_WIDTH PARAM_VALUE.DURATION_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DURATION_WIDTH}] ${MODELPARAM_VALUE.DURATION_WIDTH}
}

proc update_MODELPARAM_VALUE.AXIS_TDATA_WIDTH { MODELPARAM_VALUE.AXIS_TDATA_WIDTH PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.SELECT_WIDTH { MODELPARAM_VALUE.SELECT_WIDTH PARAM_VALUE.SELECT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SELECT_WIDTH}] ${MODELPARAM_VALUE.SELECT_WIDTH}
}

