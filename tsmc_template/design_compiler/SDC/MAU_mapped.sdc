###################################################################

# Created by write_sdc on Fri Dec 2 12:58:23 2022

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_area 0
create_clock [get_ports clk]  -period 10  -waveform {0 5}
