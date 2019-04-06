# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set C_S00_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXI data bus} ${C_S00_AXI_DATA_WIDTH}
  set C_S00_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of S_AXI address bus} ${C_S00_AXI_ADDR_WIDTH}
  ipgui::add_param $IPINST -name "C_S00_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_HIGHADDR" -parent ${Page_0}

  ipgui::add_param $IPINST -name "servo_bits_resolution"
  ipgui::add_param $IPINST -name "motor_bits_resolution"
  ipgui::add_param $IPINST -name "sys_clk_frequency"
  ipgui::add_param $IPINST -name "motor_pwm_frequency"

}

proc update_PARAM_VALUE.motor_bits_resolution { PARAM_VALUE.motor_bits_resolution } {
	# Procedure called to update motor_bits_resolution when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.motor_bits_resolution { PARAM_VALUE.motor_bits_resolution } {
	# Procedure called to validate motor_bits_resolution
	return true
}

proc update_PARAM_VALUE.motor_pwm_frequency { PARAM_VALUE.motor_pwm_frequency } {
	# Procedure called to update motor_pwm_frequency when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.motor_pwm_frequency { PARAM_VALUE.motor_pwm_frequency } {
	# Procedure called to validate motor_pwm_frequency
	return true
}

proc update_PARAM_VALUE.servo_bits_resolution { PARAM_VALUE.servo_bits_resolution } {
	# Procedure called to update servo_bits_resolution when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.servo_bits_resolution { PARAM_VALUE.servo_bits_resolution } {
	# Procedure called to validate servo_bits_resolution
	return true
}

proc update_PARAM_VALUE.sys_clk_frequency { PARAM_VALUE.sys_clk_frequency } {
	# Procedure called to update sys_clk_frequency when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.sys_clk_frequency { PARAM_VALUE.sys_clk_frequency } {
	# Procedure called to validate sys_clk_frequency
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to validate C_S00_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to update C_S00_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to validate C_S00_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.servo_bits_resolution { MODELPARAM_VALUE.servo_bits_resolution PARAM_VALUE.servo_bits_resolution } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.servo_bits_resolution}] ${MODELPARAM_VALUE.servo_bits_resolution}
}

proc update_MODELPARAM_VALUE.motor_bits_resolution { MODELPARAM_VALUE.motor_bits_resolution PARAM_VALUE.motor_bits_resolution } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.motor_bits_resolution}] ${MODELPARAM_VALUE.motor_bits_resolution}
}

proc update_MODELPARAM_VALUE.sys_clk_frequency { MODELPARAM_VALUE.sys_clk_frequency PARAM_VALUE.sys_clk_frequency } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.sys_clk_frequency}] ${MODELPARAM_VALUE.sys_clk_frequency}
}

proc update_MODELPARAM_VALUE.motor_pwm_frequency { MODELPARAM_VALUE.motor_pwm_frequency PARAM_VALUE.motor_pwm_frequency } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.motor_pwm_frequency}] ${MODELPARAM_VALUE.motor_pwm_frequency}
}

