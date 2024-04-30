|
| top_module.cmd
|
| Comments
| Elec422/527 Sudoku project
| define vectors for easier display

vector rand_setup rand_setup\[3\] rand_setup\[2\] rand_setup\[1\] rand_setup\[0\]
vector rand_A rand_A\[3\] rand_A\[2\] rand_A\[1\] rand_A\[0\]
vector rand_B rand_B\[3\] rand_B\[2\] rand_B\[1\] rand_B\[0\]

logfile top_module_sudoku.log
ana clka clkb restart new_game 
ana gen_rand_flag 
ana rand_setup
ana rand_A
ana rand_B 

| Two phase clock with non-overlap period - same as Questa testbench
clock clka 0 1 0 0
clock clkb 0 0 0 1
R

|   cycle               1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 
V   restart             1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
V   new_game            0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
V   gen_rand_flag       0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1
R
