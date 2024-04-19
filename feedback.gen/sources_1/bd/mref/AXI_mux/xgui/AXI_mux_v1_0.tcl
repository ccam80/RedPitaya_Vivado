# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CHANNEL_WIDTH_IN_FAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CHANNEL_WIDTH_IN_SLOW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CHANNEL_WIDTH_OUT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FAST_AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FAST_SHIFT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SEL_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SLOW_AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SLOW_SHIFT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S_AXIS_TDATA_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.CHANNEL_WIDTH_IN_FAST { PARAM_VALUE.CHANNEL_WIDTH_IN_FAST } {
	# Procedure called to update CHANNEL_WIDTH_IN_FAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CHANNEL_WIDTH_IN_FAST { PARAM_VALUE.CHANNEL_WIDTH_IN_FAST } {
	# Procedure called to validate CHANNEL_WIDTH_IN_FAST
	return true
}

proc update_PARAM_VALUE.CHANNEL_WIDTH_IN_SLOW { PARAM_VALUE.CHANNEL_WIDTH_IN_SLOW } {
	# Procedure called to update CHANNEL_WIDTH_IN_SLOW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CHANNEL_WIDTH_IN_SLOW { PARAM_VALUE.CHANNEL_WIDTH_IN_SLOW } {
	# Procedure called to validate CHANNEL_WIDTH_IN_SLOW
	return true
}

proc update_PARAM_VALUE.CHANNEL_WIDTH_OUT { PARAM_VALUE.CHANNEL_WIDTH_OUT } {
	# Procedure called to update CHANNEL_WIDTH_OUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CHANNEL_WIDTH_OUT { PARAM_VALUE.CHANNEL_WIDTH_OUT } {
	# Procedure called to validate CHANNEL_WIDTH_OUT
	return true
}

proc update_PARAM_VALUE.FAST_AXIS_TDATA_WIDTH { PARAM_VALUE.FAST_AXIS_TDATA_WIDTH } {
	# Procedure called to update FAST_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FAST_AXIS_TDATA_WIDTH { PARAM_VALUE.FAST_AXIS_TDATA_WIDTH } {
	# Procedure called to validate FAST_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.FAST_SHIFT { PARAM_VALUE.FAST_SHIFT } {
	# Procedure called to update FAST_SHIFT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FAST_SHIFT { PARAM_VALUE.FAST_SHIFT } {
	# Procedure called to validate FAST_SHIFT
	return true
}

proc update_PARAM_VALUE.SEL_WIDTH { PARAM_VALUE.SEL_WIDTH } {
	# Procedure called to update SEL_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SEL_WIDTH { PARAM_VALUE.SEL_WIDTH } {
	# Procedure called to validate SEL_WIDTH
	return true
}

proc update_PARAM_VALUE.SLOW_AXIS_TDATA_WIDTH { PARAM_VALUE.SLOW_AXIS_TDATA_WIDTH } {
	# Procedure called to update SLOW_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SLOW_AXIS_TDATA_WIDTH { PARAM_VALUE.SLOW_AXIS_TDATA_WIDTH } {
	# Procedure called to validate SLOW_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.SLOW_SHIFT { PARAM_VALUE.SLOW_SHIFT } {
	# Procedure called to update SLOW_SHIFT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SLOW_SHIFT { PARAM_VALUE.SLOW_SHIFT } {
	# Procedure called to validate SLOW_SHIFT
	return true
}

proc update_PARAM_VALUE.S_AXIS_TDATA_WIDTH { PARAM_VALUE.S_AXIS_TDATA_WIDTH } {
	# Procedure called to update S_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S_AXIS_TDATA_WIDTH { PARAM_VALUE.S_AXIS_TDATA_WIDTH } {
	# Procedure called to validate S_AXIS_TDATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.FAST_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.FAST_AXIS_TDATA_WIDTH PARAM_VALUE.FAST_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FAST_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.FAST_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.SLOW_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.SLOW_AXIS_TDATA_WIDTH PARAM_VALUE.SLOW_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SLOW_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.SLOW_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.SLOW_SHIFT { MODELPARAM_VALUE.SLOW_SHIFT PARAM_VALUE.SLOW_SHIFT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SLOW_SHIFT}] ${MODELPARAM_VALUE.SLOW_SHIFT}
}

proc update_MODELPARAM_VALUE.CHANNEL_WIDTH_OUT { MODELPARAM_VALUE.CHANNEL_WIDTH_OUT PARAM_VALUE.CHANNEL_WIDTH_OUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CHANNEL_WIDTH_OUT}] ${MODELPARAM_VALUE.CHANNEL_WIDTH_OUT}
}

proc update_MODELPARAM_VALUE.CHANNEL_WIDTH_IN_SLOW { MODELPARAM_VALUE.CHANNEL_WIDTH_IN_SLOW PARAM_VALUE.CHANNEL_WIDTH_IN_SLOW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CHANNEL_WIDTH_IN_SLOW}] ${MODELPARAM_VALUE.CHANNEL_WIDTH_IN_SLOW}
}

proc update_MODELPARAM_VALUE.CHANNEL_WIDTH_IN_FAST { MODELPARAM_VALUE.CHANNEL_WIDTH_IN_FAST PARAM_VALUE.CHANNEL_WIDTH_IN_FAST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CHANNEL_WIDTH_IN_FAST}] ${MODELPARAM_VALUE.CHANNEL_WIDTH_IN_FAST}
}

proc update_MODELPARAM_VALUE.FAST_SHIFT { MODELPARAM_VALUE.FAST_SHIFT PARAM_VALUE.FAST_SHIFT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FAST_SHIFT}] ${MODELPARAM_VALUE.FAST_SHIFT}
}

proc update_MODELPARAM_VALUE.S_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.S_AXIS_TDATA_WIDTH PARAM_VALUE.S_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.S_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.SEL_WIDTH { MODELPARAM_VALUE.SEL_WIDTH PARAM_VALUE.SEL_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SEL_WIDTH}] ${MODELPARAM_VALUE.SEL_WIDTH}
}

