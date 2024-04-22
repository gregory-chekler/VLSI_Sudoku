//-----------------------------------------------------
//// Design Name : Testbench for top_module
//// File Name   : top_module_tb.v
//// Function    : Testbench for top module of pipeline adder
////-----------------------------------------------------
module top_module_tb();
// Inputs to top_module
reg in_clka, in_clkb, in_restart, in_enter;
reg [3:0] in_rand_setup, in_rand_A, in_rand_B;
reg [1:0] in_diff_cell_val;

// Outputs from top_module
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

parameter SIZE = 92;
wire [0:SIZE-1] restart_seq = 	   		92'b11000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
wire [0:SIZE-1] enter_seq =    			92'b00010101011100111001110011100111001110011100111001110011100111001110011100111001110010101010;
wire [0:4*SIZE-1] rand_setup_seq =    	368'haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa;
wire [0:4*SIZE-1] rand_A_seq = 			368'hbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb;
wire [0:4*SIZE-1] rand_B_seq = 			368'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
wire [0:2*SIZE-1] diff_cell_val_seq = 	184'b0000000000000101000000110000000110000000100100000011000000010001000001010000000110110000011110000010001000001001110000101000000010110100001100000000110101000011101000001111111111000000;

// b000101010 11100 11100 11100 11100 11100 11100 11100 11100 11100 11100 11100 11100 11100 11100 11100 11100 
// b00000000000001010000 0000110000 0001100000 0010010000 0011000000 0100010000 0101000000 0110110000 0111100000 1000100000 1001110000 1010000000 1011010000 1100000000 1101010000 1110100000 1111110000;
// create a top FSM system instance.
top_module top (.in_clka (in_clka), 
				.in_clkb (in_clkb),
				.in_restart (in_restart),
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

for (i=0; i<SIZE; i = i+1)begin
	in_restart = restart_seq[i];
	in_enter = enter_seq[i];
	in_rand_setup = rand_setup_seq[4*i +:4];
	in_rand_A = rand_A_seq[4*i +:4];
	in_rand_B = rand_B_seq[4*i +:4];
	in_diff_cell_val = diff_cell_val_seq[2*i +:2];
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