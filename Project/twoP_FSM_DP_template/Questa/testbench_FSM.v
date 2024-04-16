module Sudoku_FSM_tb();

reg in_clka, in_clkb, in_restart, in_enter, in_solved;

wire out_gen_rand_flag, out_set_board_flag, out_set_diff_flag, out_cell_flag, out_val_flag, out_check_flag;
wire [2:0] out_state;

parameter SIZE = 18;
wire [0:SIZE-1] restart_seq =      18'b110000000000000000;
wire [0:SIZE-1] enter_seq =        18'b000101010101000100;
wire [0:SIZE-1] solved_seq =       18'b000000000000000000;

// 0    1    2      3           4       5           6       7       8
// NA   IDLE EMPTY  SET_DIFF    EASY    REG_INP     GUESS   CHECK   FIN
//create an FSM instance.
main_FSM Sudoku_FSM (.clka (in_clka), 
             .clkb (in_clkb),
             .restart (in_restart),
             .enter(in_enter),
             .check(in_check),
             .solved (in_solved),
             .gen_rand_flag (out_gen_rand_flag),
             .set_board_flag (out_set_board_flag),
             .set_diff_flag(out_set_diff_flag),
             .cell_flag(out_cell_flag),
             .val_flag(out_val_flag)
             .check_flag(out_check_flag),
             .state(out_state));

integer i;

initial
begin

for (i=0; i<SIZE; i = i + 1)begin
    in_restart = restart_seq[i];
    in_enter = enter_seq[i];
    in_solved = solved_seq[i];
    in_clka = 0; in_clkb = 0; #10;
    in_clka = 1; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 1; #10;
end

// // NA
// in_restart = 1'b1;
// in_enter = 1'b0;
// in_solved = 1'b0;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 1; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 1; #10

$dumpfile ("Sudoku_FSM_tb.vcd"); 
$dumpvars; 
    
$stop;
end 

endmodule