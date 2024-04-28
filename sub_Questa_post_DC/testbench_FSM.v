module fsm_module_tb();

reg in_clka, in_clkb, in_restart, in_new_game, in_enter, in_solved;

wire out_gen_rand_flag, out_set_board_flag, out_set_diff_flag, out_row_flag, out_col_flag, out_val_flag, out_check_flag;
wire [3:0] out_state;

parameter SIZE = 35;
wire [0:SIZE-1] restart_seq =      35'b10000000000000000000000100000000000;
wire [0:SIZE-1] new_game_seq =     35'b00000000000000000000000000000000100;
wire [0:SIZE-1] enter_seq =        35'b00101010101010001010111000101010000;
wire [0:SIZE-1] solved_seq =       35'b00000000000000000000011000000000000;

main_FSM Sudoku_FSM (.clka (in_clka), 
             .clkb (in_clkb),
             .restart (in_restart),
			 .new_game(in_new_game),
             .enter(in_enter),
             .solved (in_solved),
             .state(out_state),
             .gen_rand_flag (out_gen_rand_flag),
             .set_board_flag (out_set_board_flag),
             .set_diff_flag(out_set_diff_flag),
			 .row_flag(out_row_flag),
			 .col_flag(out_col_flag),
             .val_flag(out_val_flag),
             .check_flag(out_check_flag));


integer i;

initial
begin

// Cycle 0
in_restart = 1'b1;
in_new_game = 1'b0;
in_enter = 1'b0;
in_solved = 1'b0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

for (i=0; i<SIZE; i = i + 1)begin
    in_restart = restart_seq[i];
    in_new_game = new_game_seq[i];
    in_enter = enter_seq[i];
    in_solved = solved_seq[i];
    in_clka = 0; in_clkb = 0; #10;
    in_clka = 1; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 1; #10;
end

$dumpfile ("fsm_module_tb.vcd"); 
$dumpvars; 
    
$stop;
end 

endmodule