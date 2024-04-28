//-----------------------------------------------------
//// Design Name : Testbench for top_module
//// File Name   : top_module_tb.v
//// Function    : Testbench for top module of pipeline adder
////-----------------------------------------------------
module top_module_tb_win();
// Inputs to top_module
reg in_clka, in_clkb, in_restart, in_new_game, in_enter;
reg [1:0] in_diff_cell_val;
// reg [3:0] in_rand_setup, in_rand_A, in_rand_B;

// Outputs from top_module
wire [3:0] in_rand_setup, in_rand_A, in_rand_B;
wire out_gen_rand_flag, out_set_board_flag, out_set_diff_flag, out_row_flag, out_col_flag, out_val_flag, out_check_flag;
wire [3:0] out_state; 

wire [2:0] out_user_board_0, out_user_board_1, out_user_board_2, out_user_board_3,
out_user_board_4, out_user_board_5, out_user_board_6, out_user_board_7, out_user_board_8, out_user_board_9, out_user_board_10, out_user_board_11,
out_user_board_12, out_user_board_13, out_user_board_14, out_user_board_15;

wire [2:0] out_real_board_0, out_real_board_1, out_real_board_2, out_real_board_3,
out_real_board_4, out_real_board_5, out_real_board_6, out_real_board_7, out_real_board_8, out_real_board_9, out_real_board_10, out_real_board_11,
out_real_board_12, out_real_board_13, out_real_board_14, out_real_board_15;

wire [15:0] out_fill_flag;
wire out_solved;

// most precise to reach win + restart
// parameter SIZE = 95;
// wire [0:SIZE-1] restart_seq = 	   		95'b11000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010;
// wire [0:SIZE-1] new_game_seq =    		95'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
// wire [0:SIZE-1] enter_seq =    			95'b00000010101011100111001110011100111001110011100111001110011100111001110011100111001110011100000;
// wire [0:2*SIZE-1] diff_cell_val_seq = 	190'b0000000000000000000101000000101000000100000000101111000011010101010011110101010101010110101001011111111010000000101001111110101011111010111111111100111111110111111111100000111111101010101010;
// wire [0:2*SIZE-1] diff_cell_val_seq = 	190'b0000000000000000000101 0000001010 0000010000 0000101111 0000110101 
																	// 0101001111 0101010101 0101101010 0101111111 
																	// 1010000000 1010011111 1010101111 1010111111 
																	// 1111001111 1111011111 1111100000 1111111111 11111111;

// win, can't write hint, overwrite cell 0, cell output changes
parameter SIZE = 109;
wire [0:SIZE-1] restart_seq = 	   		109'b1100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
wire [0:SIZE-1] new_game_seq =    		109'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
wire [0:SIZE-1] enter_seq =    			109'b0000001010101110011100111001110011100111001110011100111001110011100111001110011100111001110010100000001000000;
wire [0:2*SIZE-1] diff_cell_val_seq = 	218'b00000000000000000001010000001111000001000000001011110000110101010100111101010101010101101010010111111110100000001010011111101010111110101111111111001111111101111111111000000000001010111111110000111101011010101010101010;

// wire [0:SIZE-1] restart_seq = 	   		109'b11000000000000000000000000000000000000000000000000000000000000000000000000000000000000 00000 000000000000000000;
// wire [0:SIZE-1] new_game_seq =    		109'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000 00000 000000000000000000;
// wire [0:SIZE-1] enter_seq =    			109'b00000010101011100111001110011100111001110011100111001110011100111001110011100111001110 01110 010100000001000000;
// wire [0:2*SIZE-1] diff_cell_val_seq = 	218'b0000000000000000000101000000111100000100000000101111000011010101010011110101010101010110101001011111111010000000101001111110101011111010111111111100111111110111111111100000 0000001010 111111110000111101011010101010101010;

// create a top FSM system instance.
top_module top (.in_clka (in_clka), 
				.in_clkb (in_clkb),
				.in_restart (in_restart),
				.in_new_game(in_new_game),
				.in_enter(in_enter),
				.in_diff_cell_val(in_diff_cell_val),
				.out_solved(out_solved),
				.out_state(out_state),
				.in_rand_setup(in_rand_setup),
				.in_rand_A(in_rand_A),
				.in_rand_B(in_rand_B),				
				.out_gen_rand_flag(out_gen_rand_flag),
				.out_set_board_flag(out_set_board_flag),
				.out_set_diff_flag(out_set_diff_flag),
				.out_row_flag(out_row_flag),
				.out_col_flag(out_col_flag),
				.out_val_flag(out_val_flag),
				.out_check_flag(out_check_flag),
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

// Cycle 0
in_restart = 1'b1;
in_new_game = 1'b0;
in_enter = 1'b0;
in_diff_cell_val = 2'b00;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

for (i=0; i<SIZE; i = i+1)begin
	in_restart = restart_seq[i];
	in_enter = enter_seq[i];
	in_new_game = new_game_seq[i];
	in_diff_cell_val = diff_cell_val_seq[2*i +:2];
	// in_rand_setup = rand_setup_seq[4*i +:4];
	// in_rand_A = rand_A_seq[4*i +:4];
	// in_rand_B = rand_B_seq[4*i +:4];
	in_clka = 0; in_clkb = 0; #10;
    in_clka = 1; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 1; #10;
end

$dumpfile ("top_module_tb_win.vcd"); 
$dumpvars; 
$stop;
end 
endmodule