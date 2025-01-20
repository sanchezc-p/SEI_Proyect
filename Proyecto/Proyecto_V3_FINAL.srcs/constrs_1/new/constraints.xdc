# Reloj del sistema
set_property PACKAGE_PIN E3 [get_ports sys_clock]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clock]
create_clock -period 8.000 -name sys_clock [get_ports sys_clock]  # 125 MHz

# Botón de reset
set_property PACKAGE_PIN C12 [get_ports reset_rtl]
set_property IOSTANDARD LVCMOS33 [get_ports reset_rtl]

# Botones (btns_4bits)
set_property PACKAGE_PIN N17 [get_ports btns_4bits[0]]
set_property PACKAGE_PIN P18 [get_ports btns_4bits[1]]
set_property PACKAGE_PIN R18 [get_ports btns_4bits[2]]
set_property PACKAGE_PIN T18 [get_ports btns_4bits[3]]
set_property IOSTANDARD LVCMOS33 [get_ports btns_4bits[*]]

# LEDs (leds_4bits)
set_property PACKAGE_PIN G14 [get_ports leds_4bits[0]]
set_property PACKAGE_PIN G13 [get_ports leds_4bits[1]]
set_property PACKAGE_PIN E13 [get_ports leds_4bits[2]]
set_property PACKAGE_PIN D14 [get_ports leds_4bits[3]]
set_property IOSTANDARD LVCMOS33 [get_ports leds_4bits[*]]
