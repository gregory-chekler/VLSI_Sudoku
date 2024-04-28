###################################################################

# Created by write_sdc on Sun Apr 28 02:16:38 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_driving_cell -lib_cell INVX1 [get_ports clka]
set_driving_cell -lib_cell INVX1 [get_ports clkb]
set_driving_cell -lib_cell INVX1 [get_ports restart]
set_driving_cell -lib_cell INVX1 [get_ports new_game]
set_driving_cell -lib_cell INVX1 [get_ports gen_rand_flag]
create_clock -name vclk  -period 50  -waveform {0 25}
set_input_delay -clock vclk  1  [get_ports clka]
set_input_delay -clock vclk  1  [get_ports clkb]
set_input_delay -clock vclk  1  [get_ports restart]
set_input_delay -clock vclk  1  [get_ports new_game]
set_input_delay -clock vclk  1  [get_ports gen_rand_flag]
set_output_delay -clock vclk  1  [get_ports {rand_setup[3]}]
set_output_delay -clock vclk  1  [get_ports {rand_setup[2]}]
set_output_delay -clock vclk  1  [get_ports {rand_setup[1]}]
set_output_delay -clock vclk  1  [get_ports {rand_setup[0]}]
set_output_delay -clock vclk  1  [get_ports {rand_A[3]}]
set_output_delay -clock vclk  1  [get_ports {rand_A[2]}]
set_output_delay -clock vclk  1  [get_ports {rand_A[1]}]
set_output_delay -clock vclk  1  [get_ports {rand_A[0]}]
set_output_delay -clock vclk  1  [get_ports {rand_B[3]}]
set_output_delay -clock vclk  1  [get_ports {rand_B[2]}]
set_output_delay -clock vclk  1  [get_ports {rand_B[1]}]
set_output_delay -clock vclk  1  [get_ports {rand_B[0]}]
