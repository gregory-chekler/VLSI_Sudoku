|
| top_module.cmd
|
| Comments
| Elec422/527 Sudoku project
| define vectors for easier display

vector in_diff_cell_val in_diff_cell_val\[1\] in_diff_cell_val\[0\]
vector in_rand_setup in_rand_setup\[3\] in_rand_setup\[2\] in_rand_setup\[1\] in_rand_setup\[0\]
vector in_rand_A in_rand_A\[3\] in_rand_A\[2\] in_rand_A\[1\] in_rand_A\[0\]
vector in_rand_B in_rand_B\[3\] in_rand_B\[2\] in_rand_B\[1\] in_rand_B\[0\]

vector out_state out_state\[3\] out_state\[2\] out_state\[1\] out_state\[0\]
vector out_fill_flag out_fill_flag\[15\] out_fill_flag\[14\] out_fill_flag\[13\] out_fill_flag\[12\] out_fill_flag\[11\] out_fill_flag\[10\] out_fill_flag\[9\] out_fill_flag\[8\] out_fill_flag\[7\] out_fill_flag\[6\] out_fill_flag\[5\] out_fill_flag\[4\] out_fill_flag\[3\] out_fill_flag\[2\] out_fill_flag\[1\] out_fill_flag\[0\]

vector out_real_board_0 out_real_board_0\[2\] out_real_board_0\[1\] out_real_board_0\[0\]
vector out_real_board_1 out_real_board_1\[2\] out_real_board_1\[1\] out_real_board_1\[0\]
vector out_real_board_2 out_real_board_2\[2\] out_real_board_2\[1\] out_real_board_2\[0\]
vector out_real_board_3 out_real_board_3\[2\] out_real_board_3\[1\] out_real_board_3\[0\]
vector out_real_board_4 out_real_board_4\[2\] out_real_board_4\[1\] out_real_board_4\[0\]
vector out_real_board_5 out_real_board_5\[2\] out_real_board_5\[1\] out_real_board_5\[0\]
vector out_real_board_6 out_real_board_6\[2\] out_real_board_6\[1\] out_real_board_6\[0\]
vector out_real_board_7 out_real_board_7\[2\] out_real_board_7\[1\] out_real_board_7\[0\]
vector out_real_board_8 out_real_board_8\[2\] out_real_board_8\[1\] out_real_board_8\[0\]
vector out_real_board_9 out_real_board_9\[2\] out_real_board_9\[1\] out_real_board_9\[0\]
vector out_real_board_10 out_real_board_10\[2\] out_real_board_10\[1\] out_real_board_10\[0\]
vector out_real_board_11 out_real_board_11\[2\] out_real_board_11\[1\] out_real_board_11\[0\]
vector out_real_board_12 out_real_board_12\[2\] out_real_board_12\[1\] out_real_board_12\[0\]
vector out_real_board_13 out_real_board_13\[2\] out_real_board_13\[1\] out_real_board_13\[0\]
vector out_real_board_14 out_real_board_14\[2\] out_real_board_14\[1\] out_real_board_14\[0\]
vector out_real_board_15 out_real_board_15\[2\] out_real_board_15\[1\] out_real_board_15\[0\]

vector out_user_board_0 out_user_board_0\[2\] out_user_board_0\[1\] out_user_board_0\[0\]
vector out_user_board_1 out_user_board_1\[2\] out_user_board_1\[1\] out_user_board_1\[0\]
vector out_user_board_2 out_user_board_2\[2\] out_user_board_2\[1\] out_user_board_2\[0\]
vector out_user_board_3 out_user_board_3\[2\] out_user_board_3\[1\] out_user_board_3\[0\]
vector out_user_board_4 out_user_board_4\[2\] out_user_board_4\[1\] out_user_board_4\[0\]
vector out_user_board_5 out_user_board_5\[2\] out_user_board_5\[1\] out_user_board_5\[0\]
vector out_user_board_6 out_user_board_6\[2\] out_user_board_6\[1\] out_user_board_6\[0\]
vector out_user_board_7 out_user_board_7\[2\] out_user_board_7\[1\] out_user_board_7\[0\]
vector out_user_board_8 out_user_board_8\[2\] out_user_board_8\[1\] out_user_board_8\[0\]
vector out_user_board_9 out_user_board_9\[2\] out_user_board_9\[1\] out_user_board_9\[0\]
vector out_user_board_10 out_user_board_10\[2\] out_user_board_10\[1\] out_user_board_10\[0\]
vector out_user_board_11 out_user_board_11\[2\] out_user_board_11\[1\] out_user_board_11\[0\]
vector out_user_board_12 out_user_board_12\[2\] out_user_board_12\[1\] out_user_board_12\[0\]
vector out_user_board_13 out_user_board_13\[2\] out_user_board_13\[1\] out_user_board_13\[0\]
vector out_user_board_14 out_user_board_14\[2\] out_user_board_14\[1\] out_user_board_14\[0\]
vector out_user_board_15 out_user_board_15\[2\] out_user_board_15\[1\] out_user_board_15\[0\]

| 

logfile top_module_sudoku.log
ana in_clka in_clkb in_restart in_new_game in_enter in_diff_cell_val
ana in_rand_setup in_rand_A in_rand_B 
ana out_state 

ana out_user_board_0 out_user_board_1 out_user_board_2 out_user_board_3
ana out_user_board_4 out_user_board_5 out_user_board_6 out_user_board_7
ana out_user_board_8 out_user_board_9 out_user_board_10 out_user_board_11
ana out_user_board_12 out_user_board_13 out_user_board_14 out_user_board_15

ana out_solved
ana out_fill_flag

| ana out_real_board_0 out_real_board_0 out_real_board_3 out_real_board_3
| ana out_real_board_4 out_real_board_0 out_real_board_6 out_real_board_7
| ana out_real_board_8 out_real_board_0 out_real_board_10 out_real_board_11
| ana out_real_board_12 out_real_board_13 out_real_board_14 out_real_board_15

| Two phase clock with non-overlap period - same as Questa testbench
clock in_clka 0 1 0 0
clock in_clkb 0 0 0 1
R

|   cycle               1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 98 90 91 92 93 94 95 96 97 98 99 100
V   in_restart          1  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  1  0  0  0  0  0  0  0  0  0  1  0  0  0  0  0  0 
V   in_new_game         0  0  0  0  0  0  0  0  0  0  0  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  
V   in_enter            0  0  0  0  0  0  1  0  1  0  0  0  0  0  1  0  1  0  0  0  0  0  0  0  1  0  1  0  0  0  0  1  0  1  0  0  
V   in_diff_cell_val    00 00 00 00 00 01 01 01 01 01 01 00 00 00 00 10 10 10 10 00 00 00 00 00 00 01 01 01 01 00 00 00 11 11 11 11
R