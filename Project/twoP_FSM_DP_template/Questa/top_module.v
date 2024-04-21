//-----------------------------------------------------
// Design Name : top_module
// File Name   : top_module.v
//
// Function    : 
//-----------------------------------------------------
module top_module (in_clka, in_clkb, in_restart, in_enter, in_diff_cell_val, out_solved, out_state, in_rand_setup, in_rand_A, in_rand_B, 
                    out_gen_rand_flag, out_set_board_flag, out_set_diff_flag, out_cell_flag, out_val_flag, out_check_flag, out_fill_flag,
                    out_user_board_0, out_user_board_1, out_user_board_2, out_user_board_3, out_user_board_4, out_user_board_5, out_user_board_6, out_user_board_7, 
                    out_user_board_8, out_user_board_9, out_user_board_10, out_user_board_11,out_user_board_12, out_user_board_13, out_user_board_14, out_user_board_15,
                    out_real_board_0, out_real_board_1, out_real_board_2, out_real_board_3, out_real_board_4, out_real_board_5, out_real_board_6, out_real_board_7, out_real_board_8, 
                    out_real_board_9, out_real_board_10, out_real_board_11, out_real_board_12, out_real_board_13, out_real_board_14, out_real_board_15);

//-------------Input Ports-----------------------------
input in_clka, in_clkb, in_restart, in_enter;
input [3:0] in_rand_setup, in_rand_A, in_rand_B;
input [3:0] in_diff_cell_val;

//-------------Output Ports----------------------------
output out_gen_rand_flag, out_set_board_flag, out_set_diff_flag, out_cell_flag, out_val_flag, out_check_flag;
output [2:0] out_state; 

output [2:0] out_user_board_0, out_user_board_1, out_user_board_2, out_user_board_3,
out_user_board_4, out_user_board_5, out_user_board_6, out_user_board_7, out_user_board_8, out_user_board_9, out_user_board_10, out_user_board_11,
out_user_board_12, out_user_board_13, out_user_board_14, out_user_board_15;

output [2:0] out_real_board_0, out_real_board_1, out_real_board_2, out_real_board_3,
out_real_board_4, out_real_board_5, out_real_board_6, out_real_board_7, out_real_board_8, out_real_board_9, out_real_board_10, out_real_board_11,
out_real_board_12, out_real_board_13, out_real_board_14, out_real_board_15;

output [15:0] out_fill_flag;
output out_solved;
//-------------Input ports Data Type-------------------
wire in_clka, in_clkb, in_restart, in_enter;
wire [3:0] in_rand_setup, in_rand_A, rand_B;
wire [3:0] in_diff_cell_val;
//-------------Output Ports Data Type------------------
wire out_gen_rand_flag, out_set_board_flag, out_set_diff_flag, out_cell_flag, out_val_flag, out_check_flag;
wire [2:0] out_state; 

wire [2:0] out_user_board_0, out_user_board_1, out_user_board_2, out_user_board_3,
out_user_board_4, out_user_board_5, out_user_board_6, out_user_board_7, out_user_board_8, out_user_board_9, out_user_board_10, out_user_board_11,
out_user_board_12, out_user_board_13, out_user_board_14, out_user_board_15;

wire [2:0] out_real_board_0, out_real_board_1, out_real_board_2, out_real_board_3,
out_real_board_4, out_real_board_5, out_real_board_6, out_real_board_7, out_real_board_8, out_real_board_9, out_real_board_10, out_real_board_11,
out_real_board_12, out_real_board_13, out_real_board_14, out_real_board_15;

wire [15:0] out_fill_flag;
wire out_solved;
//----------Code startes Here------------------------
main_FSM Sudoku_FSM (.clka (in_clka), 
             .clkb (in_clkb),
             .restart (in_restart),
             .enter(in_enter),
             .solved (out_solved),
             .state(out_state),
             .gen_rand_flag (out_gen_rand_flag),
             .set_board_flag (out_set_board_flag),
             .set_diff_flag(out_set_diff_flag),
             .cell_flag(out_cell_flag),
             .val_flag(out_val_flag),
             .check_flag(out_check_flag));

dp Sudoku_DP (.clka(in_clka), 
			.clkb(in_clkb),
			.restart(in_restart),
			.set_board_flag(out_set_board_flag),
			.set_diff_flag(out_set_diff_flag),
			.cell_flag(out_cell_flag),
			.val_flag(out_val_flag),
			.check_flag(out_check_flag),
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

endmodule // End of Module top_module
                                    
