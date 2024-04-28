//-----------------------------------------------------
//// Design Name : Testbench for top_module
//// File Name   : top_module_tb.v
//// Function    : Testbench for top module and total project.
////-----------------------------------------------------
//

module dp_module_tb();

// Inputs to top_module
reg in_clka, in_clkb, in_restart, in_new_game, in_set_board_flag, in_set_diff_flag, in_row_flag, in_col_flag, in_val_flag, in_check_flag;
reg [3:0] in_rand_setup, in_rand_A, in_rand_B;
reg [3:0] in_diff_cell_val;

// Outputs from top_module
wire [2:0] out_user_board_0, out_user_board_1, out_user_board_2, out_user_board_3,
out_user_board_4, out_user_board_5, out_user_board_6, out_user_board_7, out_user_board_8, out_user_board_9, out_user_board_10, out_user_board_11,
out_user_board_12, out_user_board_13, out_user_board_14, out_user_board_15;

wire [2:0] out_real_board_0, out_real_board_1, out_real_board_2, out_real_board_3,
out_real_board_4, out_real_board_5, out_real_board_6, out_real_board_7, out_real_board_8, out_real_board_9, out_real_board_10, out_real_board_11,
out_real_board_12, out_real_board_13, out_real_board_14, out_real_board_15;

wire [15:0] out_fill_flag;

wire out_solved;

parameter SIZE = 36;

//----Testbench Sequences-----
wire [0:SIZE-1] restart_seq = 	   		36'b100000000000000000000010000000000000;
wire [0:SIZE-1] new_game_seq = 	   		36'b000000000000001000000010000000000000;
wire [0:SIZE-1] set_board_flag_seq =    36'b001100000000000010000001000000000000;
wire [0:SIZE-1] set_diff_flag_seq =     36'b000011000000000001000000100000000000;
wire [0:SIZE-1] row_flag_seq = 			36'b000000110000000000100000010001000000;
wire [0:SIZE-1] col_flag_seq = 			36'b000000001100000000010000001000100000;
wire [0:SIZE-1] val_flag_seq = 			36'b000000000011000000001000000100011100;
wire [0:SIZE-1] check_flag_seq =    	36'b000000000011100000001100000110011110;
wire [0:4*SIZE-1] rand_setup_seq =    	144'h0aaaaaaaaaaaaaa11111177777777777777;
wire [0:4*SIZE-1] rand_A_seq = 			144'h0bbbbbbbbbbbbbb22222288888888888888;
wire [0:4*SIZE-1] rand_B_seq = 			144'h0cccccccccccccc33333399999999999999;
wire [0:2*SIZE-1] diff_cell_val_seq = 	72'b000000000101101001011111110000101010001001101011110111000101111011010101;
										// 74'b000000000101101000001010 10000010101000110110 100011 01110001 011110110101
// Game 1 easy, successful input									0				     0      0        0
// Game 2 medium, can't overwrite hint
// Game 3 hard, can update value, updated value settles after enter

dp Sudoku_DP (.clka(in_clka), 
			.clkb(in_clkb),
			.restart(in_restart),
			.new_game(in_new_game),
			.set_board_flag(in_set_board_flag),
			.set_diff_flag(in_set_diff_flag),
			.row_flag(in_row_flag),
			.col_flag(in_col_flag),
			.val_flag(in_val_flag),
			.check_flag(in_check_flag),
			.rand_setup(in_rand_setup),
			.rand_A(in_rand_A),
			.rand_B(in_rand_B),
			.diff_cell_val(in_diff_cell_val),
			.solved(out_solved),
			.fill_flag(out_fill_flag),
			.user_board_0(out_user_board_0),
			.user_board_1(out_user_board_1),
			.user_board_2(out_user_board_2),
			.user_board_3(out_user_board_3),
			.user_board_4(out_user_board_4),
			.user_board_5(out_user_board_5),
			.user_board_6(out_user_board_6),
			.user_board_7(out_user_board_7),
			.user_board_8(out_user_board_8),
			.user_board_9(out_user_board_9),
			.user_board_10(out_user_board_10),
			.user_board_11(out_user_board_11),
			.user_board_12(out_user_board_12),
			.user_board_13(out_user_board_13),
			.user_board_14(out_user_board_14),
			.user_board_15(out_user_board_15),
			.real_board_0(out_real_board_0),
			.real_board_1(out_real_board_1),
			.real_board_2(out_real_board_2),
			.real_board_3(out_real_board_3),
			.real_board_4(out_real_board_4),
			.real_board_5(out_real_board_5),
			.real_board_6(out_real_board_6),
			.real_board_7(out_real_board_7),
			.real_board_8(out_real_board_8),
			.real_board_9(out_real_board_9),
			.real_board_10(out_real_board_10),
			.real_board_11(out_real_board_11),
			.real_board_12(out_real_board_12),
			.real_board_13(out_real_board_13),
			.real_board_14(out_real_board_14),
			.real_board_15(out_real_board_15));

integer i;

initial
begin

// Cycle 0
in_restart = 1'b1;
in_new_game = 1'b0;
in_set_board_flag = 1'b0;
in_set_diff_flag = 1'b0;
in_row_flag = 1'b0;
in_col_flag = 1'b0;
in_val_flag = 1'b0;
in_check_flag = 1'b0;
in_diff_cell_val = 2'b00;
in_rand_setup = 4'h0;
in_rand_A = 4'h0;
in_rand_B = 4'h0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

for (i=0; i<SIZE; i = i+1)begin
	in_restart = restart_seq[i];
	in_new_game = new_game_seq[i];
	in_set_board_flag = set_board_flag_seq[i];
	in_set_diff_flag = set_diff_flag_seq[i];
	in_row_flag = row_flag_seq[i];
	in_col_flag = col_flag_seq[i];
	in_val_flag = val_flag_seq[i];
	in_check_flag = check_flag_seq[i];
	in_diff_cell_val = diff_cell_val_seq[2*i +:2];
	in_rand_setup = rand_setup_seq[4*i +:4];
	in_rand_A = rand_A_seq[4*i +:4];
	in_rand_B = rand_B_seq[4*i +:4];
	in_clka = 0; in_clkb = 0; #10;
    in_clka = 1; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 1; #10;
end

$dumpfile ("dp_module_tb.vcd"); 
$dumpvars; 

$stop;
end 

endmodule
