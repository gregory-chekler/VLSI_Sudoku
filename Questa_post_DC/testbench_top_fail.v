//-----------------------------------------------------
//// Design Name : Testbench for top_module
//// File Name   : top_module_tb.v
//// Function    : Testbench for top module of pipeline adder
////-----------------------------------------------------
module top_module_tb_fail();
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

// fill 4 cells and give up for new game
parameter SIZE = 44;
wire [0:SIZE-1] restart_seq = 	   		44'b10000000000000000000000000000000000000000000;
wire [0:SIZE-1] new_game_seq =    		44'b00000000000000000000000000000000001000000000;
wire [0:SIZE-1] enter_seq =    			44'b00101010001110010011001100100101000000101010;
wire [0:2*SIZE-1] diff_cell_val_seq = 	88'b0000000000010101100011000101000010011001011010100110111100110011010100000000000000101010;

// parameter SIZE = 95;
// wire [0:SIZE-1] restart_seq = 	   		95'b10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010;
// wire [0:SIZE-1] new_game_seq =    		95'b00000000000000 0000000 0000000 000000 1000000000;
// wire [0:SIZE-1] enter_seq =    			95'b00101010001110 0100110 0110010 010100 0000101010;
// wire [0:2*SIZE-1] diff_cell_val_seq = 	190'b00000000000101 01100011000101 00001001100101 10101001101111 001100110101 00000000000000101010;

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

$dumpfile ("top_module_tb_fail.vcd"); 
$dumpvars; 
$stop;
end 
endmodule