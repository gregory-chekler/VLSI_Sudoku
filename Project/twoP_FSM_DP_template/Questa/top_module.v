//-----------------------------------------------------
// Design Name : top_module
// File Name   : top_module.v
//
// Function    : top file call main_FSM controller.
//               When in_load goes high as Stable_A1, main_FSM issues start as
//               Valid_B1_Stable_A2 (A of next cycle)
//               to load the two input registers.
//               The dp datapath then receives the start Valid_B1_Stable_A2
//               and expects data to be Stable_A2. The datapath then adds the
//               two register values and stores the result in the output latch
//               on clkb which is on clock cycle 2 so that the output is
//               Valid_B2_Stable_A3. The output should not change until a new
//               in_load is received. 
//               The dp makes the output latch value visible through
//               this top module.
//-----------------------------------------------------
module top_module (in_clka, in_clkb, in_restart, in_load, out_start, out_state_main, in_d1_in, in_d2_in, out_d_out, out_done);
//-------------Input Ports-----------------------------
input in_clka, in_clkb, in_restart, in_enter, in_check;
input in_rand_A, in_rand_B;
input [1:0] in_difficulty;
input [3:0] in_cell_in;
input [1:0] in_val_in;

//-------------Output Ports----------------------------
output out_gen_rand_flag, out_set_board_flag, out_set_diff_flag, out_play_flag, out_check_flag, out_win_flag, out_try_again_flag;
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
wire       in_clka, in_clkb, in_restart, in_enter, in_check;
wire       in_rand_A, in_rand_B;
wire [1:0] in_difficulty;
wire [3:0] in_cell_in;
wire [1:0] in_val_in;
//-------------Output Ports Data Type------------------
wire out_gen_rand_flag, out_set_board_flag, out_set_diff_flag, out_play_flag, out_check_flag, out_win_flag, out_try_again_flag;
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
main_FSM sudoku_FSM (.clka (in_clka), 
                    .clkb (in_clkb),
                    .restart (in_restart),
                    .enter(in_enter),
                    .check(in_check),
                    .solved (out_solved),
                    .gen_rand_flag (out_gen_rand_flag),
                    .set_board_flag (out_set_board_flag),
                    .set_diff_flag(out_set_diff_flag),
                    .play_flag(out_play_flag),
                    .check_flag(out_check_flag),
                    .win_flag(out_win_flag),
                    .try_again_flag(out_try_again_flag),
                    .state(out_state));

dp sudoku_DP (.clka(in_clka), 
            .clkb(in_clkb),
            .restart(in_restart),
            .set_board_flag(out_set_board_flag),
            .set_diff_flag(out_set_diff_flag),
            .play_flag(out_play_flag),
            .check_flag(out_check_flag),
            .win_flag(out_win_flag),
            .try_again_flag(out_try_again_flag),
            .rand_A(in_rand_A),
            .rand_B(in_rand_B),
            .difficulty(in_difficulty),
            .cell_in(in_cell_in),
            .val_in(in_val_in),
            .fill_flag(out_fill_flag),
            .solved(out_solved),
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
                                    
