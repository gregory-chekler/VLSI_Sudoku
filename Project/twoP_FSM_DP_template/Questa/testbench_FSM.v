module Sudoku_FSM_tb();

reg in_clka, in_clkb, in_restart, in_enter, in_check, in_solved;

wire out_gen_rand_flag, out_set_board_flag, out_set_diff_flag, out_play_flag, out_check_flag, out_win_flag, out_try_again_flag;
wire [2:0] out_state;

parameter SIZE = 12;
wire [0:SIZE-1] in_restart_seq =      12'b110000000000;
wire [0:SIZE-1] in_enter_seq =        12'b000101010100;
wire [0:SIZE-1] in_check_seq =        12'b000000000010;
wire [0:SIZE-1] in_solved_seq =       12'b000000000000;

// 0    1    2      3           4       5           6       7       8
// NA   IDLE EMPTY  SET_DIFF    EASY    REG_INP     GUESS   CHECK   FIN
//create an FSM instance.
main_FSM U1 (.clka (in_clka), 
             .clkb (in_clkb),
             .restart (in_restart),
             .enter(in_enter),
             .check(in_check),
             .solved (in_solved),
             .gen_rand_flag (out_gen_rand_flag),
             .set_board_flag (out_set_board_flag),
             .set_diff_flag(out_set_diff_flag),
             .play_flag(out_play_flag),
             .check_flag(out_check_flag),
             .win_flag(out_win_flag),
             .try_again_flag(out_try_again_flag),
             .state(out_state)
          );

integer i;

initial
begin

for (i=0; i<SIZE; i = i + 1)begin
    in_restart = in_restart_seq[i];
    in_enter = in_enter_seq[i];
    in_check = in_check_seq[i];
    in_solved = in_solved_seq[i];
    in_clka = 0; in_clkb = 0; #10;
    in_clka = 1; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 1; #10;
end

// // NA
// in_restart = 1'b1;
// in_solved = 1'b0;
// in_enter = 1'b0;
// in_difficulty = 2'b00;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 1; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 1; #10

// // IDLE
// in_restart = 1'b0;
// in_solved = 1'b0;
// in_enter = 1'b1;
// in_difficulty = 2'b00;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 1; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 1; #10

// // EMPTY
// in_restart = 1'b0;
// in_solved = 1'b0;
// in_enter = 1'b1;
// in_difficulty = 2'b00;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 1; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 1; #10

// // SET_DIFF
// in_restart = 1'b0;
// in_solved = 1'b0;
// in_enter = 1'b1;
// in_difficulty = 2'b11;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 1; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 1; #10

// // EASY or MEDIUM or HARD
// in_restart = 1'b0;
// in_solved = 1'b0;
// in_enter = 1'b0;
// in_difficulty = 2'b11; 
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 1; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 1; #10

// // EASY or MEDIUM or HARD
// in_restart = 1'b0;
// in_solved = 1'b0;
// in_enter = 1'b1;
// in_difficulty = 2'b00;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 1; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 1; #10

// // REG_INP
// in_restart = 1'b0;
// in_solved = 1'b0;
// in_enter = 1'b1;
// in_difficulty = 1'b0;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 1; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 1; #10

// // GUESS
// in_restart = 1'b0;
// in_solved = 1'b0;
// in_enter = 1'b1;
// in_difficulty = 1'b0;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 1; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 1; #10

// // CHECK
// in_restart = 1'b0;
// in_solved = 1'b1;
// in_enter = 1'b0;
// in_difficulty = 1'b0;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 1; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 1; #10

// // FIN or WRONG
// in_restart = 1'b0;
// in_solved = 1'b0;
// in_enter = 1'b0;
// in_difficulty = 1'b0;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 1; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 1; #10

$dumpfile ("Sudoku_FSM_tb.vcd"); 
$dumpvars; 
    
$stop;
end 

endmodule