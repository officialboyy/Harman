## Clock signal
set_property -dict { PACKAGE_PIN W5 IOSTANDARD LVCMOS33 } [get_ports sys_clock]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports sys_clock]
## Switches
set_property -dict { PACKAGE_PIN R2 IOSTANDARD LVCMOS33 } [get_ports {reset}]
## LEDs
set_property -dict { PACKAGE_PIN E19 IOSTANDARD LVCMOS33 } [get_ports {pwm_out[0]}]; #LED4
set_property -dict { PACKAGE_PIN U19 IOSTANDARD LVCMOS33 } [get_ports {pwm_out[1]}]; #LED5
set_property -dict { PACKAGE_PIN V19 IOSTANDARD LVCMOS33 } [get_ports {pwm_out[2]}]; #LED6
set_property -dict { PACKAGE_PIN W18 IOSTANDARD LVCMOS33 } [get_ports {pwm_out[3]}]; #LED7
##Pmod Header JB
set_property -dict { PACKAGE_PIN A14 IOSTANDARD LVCMOS33 } [get_ports {w5500_miso}];#Sch name = JB1 , w5500_miso
set_property -dict { PACKAGE_PIN A16 IOSTANDARD LVCMOS33 } [get_ports {w5500_mosi}];#Sch name = JB2 , w5500_mosi
set_property -dict { PACKAGE_PIN B15 IOSTANDARD LVCMOS33 } [get_ports {w5500_scs}];#Sch name = JB3 , w5500_scs
set_property -dict { PACKAGE_PIN B16 IOSTANDARD LVCMOS33 } [get_ports {w5500_sck}];#Sch name = JB4 , w5500_sck
set_property -dict { PACKAGE_PIN A15 IOSTANDARD LVCMOS33 } [get_ports {w5500_rst}];#Sch name = JB7 , w5500_rst
set_property -dict { PACKAGE_PIN A17 IOSTANDARD LVCMOS33 } [get_ports {w5500_int}];#Sch name = JB8 , w5500_int
##Pmod Header JC
set_property -dict { PACKAGE_PIN K17 IOSTANDARD LVCMOS33 } [get_ports {gpio[0]}];#Sch name = JC1
set_property -dict { PACKAGE_PIN M18 IOSTANDARD LVCMOS33 } [get_ports {gpio[1]}];#Sch name = JC2
set_property -dict { PACKAGE_PIN N17 IOSTANDARD LVCMOS33 } [get_ports {gpio[2]}];#Sch name = JC3
set_property -dict { PACKAGE_PIN P18 IOSTANDARD LVCMOS33 } [get_ports {gpio[3]}];#Sch name = JC4
##USB-RS232 Interface
set_property -dict { PACKAGE_PIN B18 IOSTANDARD LVCMOS33 } [get_ports uart_rxd]
set_property -dict { PACKAGE_PIN A18 IOSTANDARD LVCMOS33 } [get_ports uart_txd]
## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
## SPI configuration mode options for QSPI boot, can be used for all designs
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]