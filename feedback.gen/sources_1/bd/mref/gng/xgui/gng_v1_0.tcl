# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "INIT_Z1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INIT_Z2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INIT_Z3" -parent ${Page_0}


}

proc update_PARAM_VALUE.INIT_Z1 { PARAM_VALUE.INIT_Z1 } {
	# Procedure called to update INIT_Z1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INIT_Z1 { PARAM_VALUE.INIT_Z1 } {
	# Procedure called to validate INIT_Z1
	return true
}

proc update_PARAM_VALUE.INIT_Z2 { PARAM_VALUE.INIT_Z2 } {
	# Procedure called to update INIT_Z2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INIT_Z2 { PARAM_VALUE.INIT_Z2 } {
	# Procedure called to validate INIT_Z2
	return true
}

proc update_PARAM_VALUE.INIT_Z3 { PARAM_VALUE.INIT_Z3 } {
	# Procedure called to update INIT_Z3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INIT_Z3 { PARAM_VALUE.INIT_Z3 } {
	# Procedure called to validate INIT_Z3
	return true
}


proc update_MODELPARAM_VALUE.INIT_Z1 { MODELPARAM_VALUE.INIT_Z1 PARAM_VALUE.INIT_Z1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INIT_Z1}] ${MODELPARAM_VALUE.INIT_Z1}
}

proc update_MODELPARAM_VALUE.INIT_Z2 { MODELPARAM_VALUE.INIT_Z2 PARAM_VALUE.INIT_Z2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INIT_Z2}] ${MODELPARAM_VALUE.INIT_Z2}
}

proc update_MODELPARAM_VALUE.INIT_Z3 { MODELPARAM_VALUE.INIT_Z3 PARAM_VALUE.INIT_Z3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INIT_Z3}] ${MODELPARAM_VALUE.INIT_Z3}
}

