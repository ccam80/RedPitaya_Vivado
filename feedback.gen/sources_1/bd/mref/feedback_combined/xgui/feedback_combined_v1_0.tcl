# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OFFSET_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OUTPUT_CHANNEL_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PRODUCT_1_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PRODUCT_2_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PRODUCT_3_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PRODUCT_4_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PRODUCT_5_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PRODUCT_6_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SELECT_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to update AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to validate AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.OFFSET_WIDTH { PARAM_VALUE.OFFSET_WIDTH } {
	# Procedure called to update OFFSET_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OFFSET_WIDTH { PARAM_VALUE.OFFSET_WIDTH } {
	# Procedure called to validate OFFSET_WIDTH
	return true
}

proc update_PARAM_VALUE.OUTPUT_CHANNEL_WIDTH { PARAM_VALUE.OUTPUT_CHANNEL_WIDTH } {
	# Procedure called to update OUTPUT_CHANNEL_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OUTPUT_CHANNEL_WIDTH { PARAM_VALUE.OUTPUT_CHANNEL_WIDTH } {
	# Procedure called to validate OUTPUT_CHANNEL_WIDTH
	return true
}

proc update_PARAM_VALUE.PRODUCT_1_WIDTH { PARAM_VALUE.PRODUCT_1_WIDTH } {
	# Procedure called to update PRODUCT_1_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PRODUCT_1_WIDTH { PARAM_VALUE.PRODUCT_1_WIDTH } {
	# Procedure called to validate PRODUCT_1_WIDTH
	return true
}

proc update_PARAM_VALUE.PRODUCT_2_WIDTH { PARAM_VALUE.PRODUCT_2_WIDTH } {
	# Procedure called to update PRODUCT_2_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PRODUCT_2_WIDTH { PARAM_VALUE.PRODUCT_2_WIDTH } {
	# Procedure called to validate PRODUCT_2_WIDTH
	return true
}

proc update_PARAM_VALUE.PRODUCT_3_WIDTH { PARAM_VALUE.PRODUCT_3_WIDTH } {
	# Procedure called to update PRODUCT_3_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PRODUCT_3_WIDTH { PARAM_VALUE.PRODUCT_3_WIDTH } {
	# Procedure called to validate PRODUCT_3_WIDTH
	return true
}

proc update_PARAM_VALUE.PRODUCT_4_WIDTH { PARAM_VALUE.PRODUCT_4_WIDTH } {
	# Procedure called to update PRODUCT_4_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PRODUCT_4_WIDTH { PARAM_VALUE.PRODUCT_4_WIDTH } {
	# Procedure called to validate PRODUCT_4_WIDTH
	return true
}

proc update_PARAM_VALUE.PRODUCT_5_WIDTH { PARAM_VALUE.PRODUCT_5_WIDTH } {
	# Procedure called to update PRODUCT_5_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PRODUCT_5_WIDTH { PARAM_VALUE.PRODUCT_5_WIDTH } {
	# Procedure called to validate PRODUCT_5_WIDTH
	return true
}

proc update_PARAM_VALUE.PRODUCT_6_WIDTH { PARAM_VALUE.PRODUCT_6_WIDTH } {
	# Procedure called to update PRODUCT_6_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PRODUCT_6_WIDTH { PARAM_VALUE.PRODUCT_6_WIDTH } {
	# Procedure called to validate PRODUCT_6_WIDTH
	return true
}

proc update_PARAM_VALUE.SELECT_WIDTH { PARAM_VALUE.SELECT_WIDTH } {
	# Procedure called to update SELECT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SELECT_WIDTH { PARAM_VALUE.SELECT_WIDTH } {
	# Procedure called to validate SELECT_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.PRODUCT_1_WIDTH { MODELPARAM_VALUE.PRODUCT_1_WIDTH PARAM_VALUE.PRODUCT_1_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PRODUCT_1_WIDTH}] ${MODELPARAM_VALUE.PRODUCT_1_WIDTH}
}

proc update_MODELPARAM_VALUE.PRODUCT_2_WIDTH { MODELPARAM_VALUE.PRODUCT_2_WIDTH PARAM_VALUE.PRODUCT_2_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PRODUCT_2_WIDTH}] ${MODELPARAM_VALUE.PRODUCT_2_WIDTH}
}

proc update_MODELPARAM_VALUE.PRODUCT_3_WIDTH { MODELPARAM_VALUE.PRODUCT_3_WIDTH PARAM_VALUE.PRODUCT_3_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PRODUCT_3_WIDTH}] ${MODELPARAM_VALUE.PRODUCT_3_WIDTH}
}

proc update_MODELPARAM_VALUE.PRODUCT_4_WIDTH { MODELPARAM_VALUE.PRODUCT_4_WIDTH PARAM_VALUE.PRODUCT_4_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PRODUCT_4_WIDTH}] ${MODELPARAM_VALUE.PRODUCT_4_WIDTH}
}

proc update_MODELPARAM_VALUE.PRODUCT_5_WIDTH { MODELPARAM_VALUE.PRODUCT_5_WIDTH PARAM_VALUE.PRODUCT_5_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PRODUCT_5_WIDTH}] ${MODELPARAM_VALUE.PRODUCT_5_WIDTH}
}

proc update_MODELPARAM_VALUE.PRODUCT_6_WIDTH { MODELPARAM_VALUE.PRODUCT_6_WIDTH PARAM_VALUE.PRODUCT_6_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PRODUCT_6_WIDTH}] ${MODELPARAM_VALUE.PRODUCT_6_WIDTH}
}

proc update_MODELPARAM_VALUE.OFFSET_WIDTH { MODELPARAM_VALUE.OFFSET_WIDTH PARAM_VALUE.OFFSET_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OFFSET_WIDTH}] ${MODELPARAM_VALUE.OFFSET_WIDTH}
}

proc update_MODELPARAM_VALUE.AXIS_TDATA_WIDTH { MODELPARAM_VALUE.AXIS_TDATA_WIDTH PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.OUTPUT_CHANNEL_WIDTH { MODELPARAM_VALUE.OUTPUT_CHANNEL_WIDTH PARAM_VALUE.OUTPUT_CHANNEL_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OUTPUT_CHANNEL_WIDTH}] ${MODELPARAM_VALUE.OUTPUT_CHANNEL_WIDTH}
}

proc update_MODELPARAM_VALUE.SELECT_WIDTH { MODELPARAM_VALUE.SELECT_WIDTH PARAM_VALUE.SELECT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SELECT_WIDTH}] ${MODELPARAM_VALUE.SELECT_WIDTH}
}

