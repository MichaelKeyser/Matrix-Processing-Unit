###################################################################

# Created by write_sdc on Tue Nov 29 18:34:36 2022

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_area 0
create_clock [get_ports clk]  -period 20  -waveform {0 10}
