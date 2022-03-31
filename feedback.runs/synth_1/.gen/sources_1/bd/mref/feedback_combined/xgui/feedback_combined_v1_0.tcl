# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADC_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADD_CONST_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADD_CONST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CFG_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DAC_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DDS_OUT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FIXED_PHASE_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FIXED_PHASE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FREQ_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INTERVAL_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INTERVAL_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MULT_CONST_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MULT_CONST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SELECT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "START_FREQ_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STOP_FREQ_OFFSET" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADC_DATA_WIDTH { PARAM_VALUE.ADC_DATA_WIDTH } {
	# Procedure called to update ADC_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_DATA_WIDTH { PARAM_VALUE.ADC_DATA_WIDTH } {
	# Procedure called to validate ADC_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.ADD_CONST_OFFSET { PARAM_VALUE.ADD_CONST_OFFSET } {
	# Procedure called to update ADD_CONST_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADD_CONST_OFFSET { PARAM_VALUE.ADD_CONST_OFFSET } {
	# Procedure called to validate ADD_CONST_OFFSET
	return true
}

proc update_PARAM_VALUE.ADD_CONST_WIDTH { PARAM_VALUE.ADD_CONST_WIDTH } {
	# Procedure called to update ADD_CONST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADD_CONST_WIDTH { PARAM_VALUE.ADD_CONST_WIDTH } {
	# Procedure called to validate ADD_CONST_WIDTH
	return true
}

proc update_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to update AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to validate AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.CFG_WIDTH { PARAM_VALUE.CFG_WIDTH } {
	# Procedure called to update CFG_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CFG_WIDTH { PARAM_VALUE.CFG_WIDTH } {
	# Procedure called to validate CFG_WIDTH
	return true
}

proc update_PARAM_VALUE.DAC_DATA_WIDTH { PARAM_VALUE.DAC_DATA_WIDTH } {
	# Procedure called to update DAC_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DAC_DATA_WIDTH { PARAM_VALUE.DAC_DATA_WIDTH } {
	# Procedure called to validate DAC_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.DDS_OUT_WIDTH { PARAM_VALUE.DDS_OUT_WIDTH } {
	# Procedure called to update DDS_OUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DDS_OUT_WIDTH { PARAM_VALUE.DDS_OUT_WIDTH } {
	# Procedure called to validate DDS_OUT_WIDTH
	return true
}

proc update_PARAM_VALUE.FIXED_PHASE_OFFSET { PARAM_VALUE.FIXED_PHASE_OFFSET } {
	# Procedure called to update FIXED_PHASE_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIXED_PHASE_OFFSET { PARAM_VALUE.FIXED_PHASE_OFFSET } {
	# Procedure called to validate FIXED_PHASE_OFFSET
	return true
}

proc update_PARAM_VALUE.FIXED_PHASE_WIDTH { PARAM_VALUE.FIXED_PHASE_WIDTH } {
	# Procedure called to update FIXED_PHASE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIXED_PHASE_WIDTH { PARAM_VALUE.FIXED_PHASE_WIDTH } {
	# Procedure called to validate FIXED_PHASE_WIDTH
	return true
}

proc update_PARAM_VALUE.FREQ_WIDTH { PARAM_VALUE.FREQ_WIDTH } {
	# Procedure called to update FREQ_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FREQ_WIDTH { PARAM_VALUE.FREQ_WIDTH } {
	# Procedure called to validate FREQ_WIDTH
	return true
}

proc update_PARAM_VALUE.INTERVAL_OFFSET { PARAM_VALUE.INTERVAL_OFFSET } {
	# Procedure called to update INTERVAL_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INTERVAL_OFFSET { PARAM_VALUE.INTERVAL_OFFSET } {
	# Procedure called to validate INTERVAL_OFFSET
	return true
}

proc update_PARAM_VALUE.INTERVAL_WIDTH { PARAM_VALUE.INTERVAL_WIDTH } {
	# Procedure called to update INTERVAL_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INTERVAL_WIDTH { PARAM_VALUE.INTERVAL_WIDTH } {
	# Procedure called to validate INTERVAL_WIDTH
	return true
}

proc update_PARAM_VALUE.MULT_CONST_OFFSET { PARAM_VALUE.MULT_CONST_OFFSET } {
	# Procedure called to update MULT_CONST_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MULT_CONST_OFFSET { PARAM_VALUE.MULT_CONST_OFFSET } {
	# Procedure called to validate MULT_CONST_OFFSET
	return true
}

proc update_PARAM_VALUE.MULT_CONST_WIDTH { PARAM_VALUE.MULT_CONST_WIDTH } {
	# Procedure called to update MULT_CONST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MULT_CONST_WIDTH { PARAM_VALUE.MULT_CONST_WIDTH } {
	# Procedure called to validate MULT_CONST_WIDTH
	return true
}

proc update_PARAM_VALUE.SELECT_WIDTH { PARAM_VALUE.SELECT_WIDTH } {
	# Procedure called to update SELECT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SELECT_WIDTH { PARAM_VALUE.SELECT_WIDTH } {
	# Procedure called to validate SELECT_WIDTH
	return true
}

proc update_PARAM_VALUE.START_FREQ_OFFSET { PARAM_VALUE.START_FREQ_OFFSET } {
	# Procedure called to update START_FREQ_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.START_FREQ_OFFSET { PARAM_VALUE.START_FREQ_OFFSET } {
	# Procedure called to validate START_FREQ_OFFSET
	return true
}

proc update_PARAM_VALUE.STOP_FREQ_OFFSET { PARAM_VALUE.STOP_FREQ_OFFSET } {
	# Procedure called to update STOP_FREQ_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STOP_FREQ_OFFSET { PARAM_VALUE.STOP_FREQ_OFFSET } {
	# Procedure called to validate STOP_FREQ_OFFSET
	return true
}


proc update_MODELPARAM_VALUE.ADC_DATA_WIDTH { MODELPARAM_VALUE.ADC_DATA_WIDTH PARAM_VALUE.ADC_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_DATA_WIDTH}] ${MODELPARAM_VALUE.ADC_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.DDS_OUT_WIDTH { MODELPARAM_VALUE.DDS_OUT_WIDTH PARAM_VALUE.DDS_OUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DDS_OUT_WIDTH}] ${MODELPARAM_VALUE.DDS_OUT_WIDTH}
}

proc update_MODELPARAM_VALUE.MULT_CONST_OFFSET { MODELPARAM_VALUE.MULT_CONST_OFFSET PARAM_VALUE.MULT_CONST_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MULT_CONST_OFFSET}] ${MODELPARAM_VALUE.MULT_CONST_OFFSET}
}

proc update_MODELPARAM_VALUE.MULT_CONST_WIDTH { MODELPARAM_VALUE.MULT_CONST_WIDTH PARAM_VALUE.MULT_CONST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MULT_CONST_WIDTH}] ${MODELPARAM_VALUE.MULT_CONST_WIDTH}
}

proc update_MODELPARAM_VALUE.FIXED_PHASE_OFFSET { MODELPARAM_VALUE.FIXED_PHASE_OFFSET PARAM_VALUE.FIXED_PHASE_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FIXED_PHASE_OFFSET}] ${MODELPARAM_VALUE.FIXED_PHASE_OFFSET}
}

proc update_MODELPARAM_VALUE.FIXED_PHASE_WIDTH { MODELPARAM_VALUE.FIXED_PHASE_WIDTH PARAM_VALUE.FIXED_PHASE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FIXED_PHASE_WIDTH}] ${MODELPARAM_VALUE.FIXED_PHASE_WIDTH}
}

proc update_MODELPARAM_VALUE.ADD_CONST_WIDTH { MODELPARAM_VALUE.ADD_CONST_WIDTH PARAM_VALUE.ADD_CONST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADD_CONST_WIDTH}] ${MODELPARAM_VALUE.ADD_CONST_WIDTH}
}

proc update_MODELPARAM_VALUE.ADD_CONST_OFFSET { MODELPARAM_VALUE.ADD_CONST_OFFSET PARAM_VALUE.ADD_CONST_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADD_CONST_OFFSET}] ${MODELPARAM_VALUE.ADD_CONST_OFFSET}
}

proc update_MODELPARAM_VALUE.FREQ_WIDTH { MODELPARAM_VALUE.FREQ_WIDTH PARAM_VALUE.FREQ_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FREQ_WIDTH}] ${MODELPARAM_VALUE.FREQ_WIDTH}
}

proc update_MODELPARAM_VALUE.START_FREQ_OFFSET { MODELPARAM_VALUE.START_FREQ_OFFSET PARAM_VALUE.START_FREQ_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.START_FREQ_OFFSET}] ${MODELPARAM_VALUE.START_FREQ_OFFSET}
}

proc update_MODELPARAM_VALUE.STOP_FREQ_OFFSET { MODELPARAM_VALUE.STOP_FREQ_OFFSET PARAM_VALUE.STOP_FREQ_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STOP_FREQ_OFFSET}] ${MODELPARAM_VALUE.STOP_FREQ_OFFSET}
}

proc update_MODELPARAM_VALUE.INTERVAL_OFFSET { MODELPARAM_VALUE.INTERVAL_OFFSET PARAM_VALUE.INTERVAL_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INTERVAL_OFFSET}] ${MODELPARAM_VALUE.INTERVAL_OFFSET}
}

proc update_MODELPARAM_VALUE.INTERVAL_WIDTH { MODELPARAM_VALUE.INTERVAL_WIDTH PARAM_VALUE.INTERVAL_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INTERVAL_WIDTH}] ${MODELPARAM_VALUE.INTERVAL_WIDTH}
}

proc update_MODELPARAM_VALUE.DAC_DATA_WIDTH { MODELPARAM_VALUE.DAC_DATA_WIDTH PARAM_VALUE.DAC_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DAC_DATA_WIDTH}] ${MODELPARAM_VALUE.DAC_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.CFG_WIDTH { MODELPARAM_VALUE.CFG_WIDTH PARAM_VALUE.CFG_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_WIDTH}] ${MODELPARAM_VALUE.CFG_WIDTH}
}

proc update_MODELPARAM_VALUE.AXIS_TDATA_WIDTH { MODELPARAM_VALUE.AXIS_TDATA_WIDTH PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.SELECT_WIDTH { MODELPARAM_VALUE.SELECT_WIDTH PARAM_VALUE.SELECT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SELECT_WIDTH}] ${MODELPARAM_VALUE.SELECT_WIDTH}
}

