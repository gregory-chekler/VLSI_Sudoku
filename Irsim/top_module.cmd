|
| top_module.cmd
|
| Comments
| Elec422/527 FSM_DP_timing
| CMOS two phase FSM with two input register data path and adder
| Flip-Flops based on negedge of clocks
| The two state bits are also ouput. Notice escape chararcter needed for state bits
|
| Data in_d1_in and in_d2_in should yield
| test case 1 at cycle 7, 3 + 1 = 4
| test case 2 at cycle 12, 4 + 2 = 6
|
| define vectors for easier display
vector d1 in_d1_in\[3\] in_d1_in\[2\] in_d1_in\[1\] in_d1_in\[0\]
vector d2 in_d2_in\[3\] in_d2_in\[2\] in_d2_in\[1\] in_d2_in\[0\]
vector d_out out_d_out\[3\] out_d_out\[2\] out_d_out\[1\] out_d_out\[0\]
| 
logfile twoP_FSM.log
ana in_clka in_clkb in_restart in_load out_state_main\[1\] out_state_main\[0\] out_start
ana in_d1_in\[3\] in_d1_in\[2\] in_d1_in\[1\] in_d1_in\[0\] d1
ana in_d2_in\[3\] in_d2_in\[2\] in_d2_in\[1\] in_d2_in\[0\] d2
ana  out_d_out\[3\] out_d_out\[2\] out_d_out\[1\] out_d_out\[0\] d_out out_done
|   cycle         1 2 3 4 5 6 7 8 9 10111213141516171819202122
V   in_restart    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V   in_load       0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
V   in_d1_in\[3\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V   in_d1_in\[2\] 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
V   in_d1_in\[1\] 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V   in_d1_in\[0\] 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V   in_d2_in\[3\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V   in_d2_in\[2\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V   in_d2_in\[1\] 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
V   in_d2_in\[0\] 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

| Two phase clock with non-overlap period - same as Questa testbench
clock in_clka 0 1 0 0
clock in_clkb 0 0 0 1
R
