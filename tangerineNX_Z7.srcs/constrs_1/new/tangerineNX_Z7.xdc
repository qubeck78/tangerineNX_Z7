create_clock -period 20.000 -name plClk -waveform {0.000 10.000} [get_ports plClk]


set_property PACKAGE_PIN M19 [get_ports plClk]
set_property IOSTANDARD LVCMOS33 [get_ports plClk]

set_property PACKAGE_PIN P22 [get_ports plLed]
set_property IOSTANDARD LVCMOS33 [get_ports plLed]

set_property IOSTANDARD LVCMOS33 [get_ports plKey]
set_property PACKAGE_PIN P21 [get_ports plKey]

set_property IOSTANDARD TMDS_33 [get_ports {hdmiDP[2]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmiDP[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmiDP[0]}]
set_property IOSTANDARD TMDS_33 [get_ports hdmiClkP]
set_property PACKAGE_PIN Y20 [get_ports hdmiClkP]
set_property PACKAGE_PIN AA21 [get_ports {hdmiDP[0]}]
set_property PACKAGE_PIN AA22 [get_ports {hdmiDP[1]}]
set_property PACKAGE_PIN V18 [get_ports {hdmiDP[2]}]

set_property PACKAGE_PIN F21 [get_ports ps2aClock]
set_property IOSTANDARD LVCMOS33 [get_ports ps2aClock]

set_property PACKAGE_PIN F22 [get_ports ps2aData]
set_property IOSTANDARD LVCMOS33 [get_ports ps2aData]

set_property PACKAGE_PIN J18 [get_ports ps2bClock]
set_property IOSTANDARD LVCMOS33 [get_ports ps2bClock]

set_property PACKAGE_PIN K18 [get_ports ps2bData]
set_property IOSTANDARD LVCMOS33 [get_ports ps2bData]


set_property PACKAGE_PIN AB20 [get_ports i2sBClk]
set_property IOSTANDARD LVCMOS33 [get_ports i2sBClk]
set_property PACKAGE_PIN Y19 [get_ports i2sDOut]
set_property IOSTANDARD LVCMOS33 [get_ports i2sDOut]
set_property PACKAGE_PIN AA19 [get_ports i2sLRCk]
set_property IOSTANDARD LVCMOS33 [get_ports i2sLRCk]
set_property PACKAGE_PIN AB19 [get_ports i2sSClk]
set_property IOSTANDARD LVCMOS33 [get_ports i2sSClk]

