//-----------------------------------------------------
//// Design Name : Testbench for top_module
//// File Name   : top_module_tb.v
//// Function    : Testbench for top module of pipeline adder
////-----------------------------------------------------
module top_module_tb();
// Inputs to top_module
reg in_clka, in_clkb, in_restart, in_enter, in_insert;
reg [3:0] in_rand_A, in_rand_B;
reg [1:0] in_difficulty;
reg [3:0] in_cell_in;
reg [1:0] in_val_in;

// Outputs from top_module
wire out_gen_rand_flag, out_set_board_flag, out_set_diff_flag, out_insert_flag, out_check_flag, out_win_flag, out_try_again_flag;
wire [2:0] out_state; 

wire [2:0] out_user_board_0, out_user_board_1, out_user_board_2, out_user_board_3,
out_user_board_4, out_user_board_5, out_user_board_6, out_user_board_7, out_user_board_8, out_user_board_9, out_user_board_10, out_user_board_11,
out_user_board_12, out_user_board_13, out_user_board_14, out_user_board_15;

wire [2:0] out_real_board_0, out_real_board_1, out_real_board_2, out_real_board_3,
out_real_board_4, out_real_board_5, out_real_board_6, out_real_board_7, out_real_board_8, out_real_board_9, out_real_board_10, out_real_board_11,
out_real_board_12, out_real_board_13, out_real_board_14, out_real_board_15;

wire [15:0] out_fill_flag;
wire out_solved;

parameter SIZE = 35;
wire [0:SIZE-1] restart_seq = 	   		35'b11000000000000000000000000000000000;
wire [0:SIZE-1] enter_seq =    			35'b00010010100000000000000000100001000;
wire [0:SIZE-1] insert_seq =    		35'b00000000011111111111111110000000000;
wire [0:4*SIZE-1] rand_A_seq = 			136'hbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb;
wire [0:4*SIZE-1] rand_B_seq = 			136'hffffffffffffffffffffffffffffffffff;
wire [0:4*SIZE-1] cell_in_seq = 		136'h0000000000123456789abcdef00000abcd;
wire [0:2*SIZE-1] val_diff_in_seq = 	70'b0000000000000001001000110111011000001001110111001000000000001111111100;

//create a top FSM system instance.
// in_clka, in_clkb, in_restart, in_startPipe, out_state_main, out_loadV, out_loadW, out_loadX, out_loadY, out_loadR1, out_loadR2, 
// in_newV, in_newW, in_newX, in_newY, out_pipe
top_module top (.in_clka (in_clka), 
				.in_clkb (in_clkb),
				.in_restart (in_restart),
				.in_enter(in_enter),
				.in_insert(in_insert),
				.in_rand_A(in_rand_A),
				.in_rand_B(in_rand_B),
				.in_difficulty(in_difficulty),
				.in_cell_in(in_cell_in),
				.in_val_in(in_val_in),
				.out_solved(out_solved),
				.out_state(out_state),
				.out_gen_rand_flag(out_gen_rand_flag),
				.out_set_board_flag(out_set_board_flag),
				.out_set_diff_flag(out_set_diff_flag),
				.out_insert_flag(out_insert_flag),
				.out_check_flag(out_check_flag),
				.out_win_flag(out_win_flag),
				.out_try_again_flag(out_try_again_flag),
				.out_fill_flag(out_fill_flag),
				.out_user_board_0(out_user_board_0),
				.out_user_board_1(out_user_board_1),
				.out_user_board_2(out_user_board_2),
				.out_user_board_3(out_user_board_3),
				.out_user_board_4(out_user_board_4),
				.out_user_board_5(out_user_board_5),
				.out_user_board_6(out_user_board_6),
				.out_user_board_7(out_user_board_7),
				.out_user_board_8(out_user_board_8),
				.out_user_board_9(out_user_board_9),
				.out_user_board_10(out_user_board_10),
				.out_user_board_11(out_user_board_11),
				.out_user_board_12(out_user_board_12),
				.out_user_board_13(out_user_board_13),
				.out_user_board_14(out_user_board_14),
				.out_user_board_15(out_user_board_15),
				.out_real_board_0(out_real_board_0),
				.out_real_board_1(out_real_board_1),
				.out_real_board_2(out_real_board_2),
				.out_real_board_3(out_real_board_3),
				.out_real_board_4(out_real_board_4),
				.out_real_board_5(out_real_board_5),
				.out_real_board_6(out_real_board_6),
				.out_real_board_7(out_real_board_7),
				.out_real_board_8(out_real_board_8),
				.out_real_board_9(out_real_board_9),
				.out_real_board_10(out_real_board_10),
				.out_real_board_11(out_real_board_11),
				.out_real_board_12(out_real_board_12),
				.out_real_board_13(out_real_board_13),
				.out_real_board_14(out_real_board_14),
				.out_real_board_15(out_real_board_15));

integer i;

initial
begin

for (i=0; i<SIZE; i = i+1)begin
	in_restart = restart_seq[i];
	in_enter = enter_seq[i];
	in_insert = insert_seq[i];
	in_rand_A = rand_A_seq[4*i +:4];
	in_rand_B = rand_B_seq[4*i +:4];
	in_difficulty = difficulty_seq[2*i +:2];
	in_cell_in = cell_in_seq[4*i +:4];
	in_val_in = val_in_seq[2*i +:2];
	in_clka = 0; in_clkb = 0; #10;
    in_clka = 1; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 1; #10;
end

// Cycle 10 (IDLE, out = 4)
// in_restart = 1'b0;
// in_enter = 1'b0;
// in_check = 1'b0;
// in_rand_A = 4'hb; 
// in_rand_B = 4'hf;
// in_difficulty = 2'b01;
// in_cell_in = 4'b0000;
// in_val_in = 2'b00;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 1; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 0; #10;
// in_clka = 0; in_clkb = 1; #10

$dumpfile ("top_module_tb.vcd"); 
$dumpvars; 
$stop;
end 
endmodule