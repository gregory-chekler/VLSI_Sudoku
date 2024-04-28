//-----------------------------------------------------
//// Design Name : Testbench for top_module
//// File Name   : top_module_tb.v
//// Function    : Testbench for top module of pipeline adder
////-----------------------------------------------------
module top_module_tb_sol();
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

// different solutions with multiple new game and restart
parameter SIZE = 36;
wire [0:SIZE-1] restart_seq = 	   		36'b110000000000000000010000000001000000;
wire [0:SIZE-1] new_game_seq =    		36'b000000000001000000000000000000000000;
wire [0:SIZE-1] enter_seq =    			36'b000000101000001010000000101000010100;
wire [0:2*SIZE-1] diff_cell_val_seq = 	72'b000000000001010101010100000000101010100000000000000101010100000011111111;

// parameter SIZE = 36;
// wire [0:SIZE-1] restart_seq = 	   		36'b11000000000 00000000 1000000000 1000000;
// wire [0:SIZE-1] new_game_seq =    		36'b00000000000 10000000 0000000000 0000000;
// wire [0:SIZE-1] enter_seq =    			36'b00000010100 00010100 0000010100 0010100;
// wire [0:2*SIZE-1] diff_cell_val_seq = 	72'b0000000000010101010101 0000000010101010 00000000000001010101 00000011111111;

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

$dumpfile ("top_module_tb_sol.vcd"); 
$dumpvars; 
$stop;
end 
endmodule