###################################################################

# Created by write_sdc on Sun Apr 28 02:15:46 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_driving_cell -lib_cell INVX1 [get_ports clka]
set_driving_cell -lib_cell INVX1 [get_ports clkb]
set_driving_cell -lib_cell INVX1 [get_ports restart]
set_driving_cell -lib_cell INVX1 [get_ports new_game]
set_driving_cell -lib_cell INVX1 [get_ports enter]
set_driving_cell -lib_cell INVX1 [get_ports solved]
create_clock -name vclk  -period 50  -waveform {0 25}
set_input_delay -clock vclk  1  [get_ports clka]
set_input_delay -clock vclk  1  [get_ports clkb]
set_input_delay -clock vclk  1  [get_ports restart]
set_input_delay -clock vclk  1  [get_ports new_game]
set_input_delay -clock vclk  1  [get_ports enter]
set_input_delay -clock vclk  1  [get_ports solved]
set_output_delay -clock vclk  1  [get_ports {state[3]}]
set_output_delay -clock vclk  1  [get_ports {state[2]}]
set_output_delay -clock vclk  1  [get_ports {state[1]}]
set_output_delay -clock vclk  1  [get_ports {state[0]}]
set_output_delay -clock vclk  1  [get_ports gen_rand_flag]
set_output_delay -clock vclk  1  [get_ports set_board_flag]
set_output_delay -clock vclk  1  [get_ports set_diff_flag]
set_output_delay -clock vclk  1  [get_ports row_flag]
set_output_delay -clock vclk  1  [get_ports col_flag]
set_output_delay -clock vclk  1  [get_ports val_flag]
set_output_delay -clock vclk  1  [get_ports check_flag]
