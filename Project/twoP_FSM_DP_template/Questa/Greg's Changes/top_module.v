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
module top_module (in_clka, in_clkb, in_restart, in_enter, in_reg_choose, in_value_inp, in_difficulty, out_solved, out_won, out_register_inp_flag, out_try_again_flag, out_dp_check, out_ridx_a, out_ridx_b, out_fill_flag, out_state_main);

// clka, clkb, restart, enter, solved, difficulty, won, register_inp_flag, try_again_flag, dp_check, ridx_a, ridx_b, state, fill_flag
// clka, clkb, restart, enter, solved, difficulty, won, register_inp_flag, try_again_flag, dp_check, ridx_a, ridx_b, state, fill_flag, reg_choose, value_inp

//-------------Input Ports-----------------------------
input   in_clka, in_clkb, in_restart, in_enter;
input [3:0] in_reg_choose;
input [1:0] in_value_inp, in_difficulty;

//-------------Output Ports----------------------------
output out_solved, out_won, out_register_inp_flag, out_try_again_flag, out_dp_check, out_ridx_a, out_ridx_b;
output [3:0] out_state_main; 
output [7:0] out_fill_flag;
//-------------Input ports Data Type-------------------
wire   in_clka, in_clkb, in_restart, in_enter;
wire   [3:0] in_reg_choose;
wire   [1:0] in_value_inp, in_difficulty;
//-------------Output Ports Data Type------------------
wire   out_solved, out_won, out_register_inp_flag, out_try_again_flag, out_dp_check, out_ridx_a, out_ridx_b;
wire   [3:0] out_state_main;
wire   [7:0] out_fill_flag;

//----------Code startes Here------------------------


main_FSM_difficulty main (.clka (in_clka), //lka, clkb, restart, enter, solved, difficulty, won, register_inp_flag, try_again_flag, dp_check, ridx_a, ridx_b, state, fill_flag
           .clkb (in_clkb),
           .restart (in_restart),
           .enter (in_enter),
           .state (out_state_main),
           .solved (out_solved),
           .difficulty (in_difficulty),
           .won (out_won),
           .register_inp_flag (out_register_inp_flag),
           .try_again_flag (out_try_again_flag),
           .dp_check (out_dp_check),
           .ridx_a (out_ridx_a),
           .ridx_b (out_ridx_b),
           .fill_flag (out_fill_flag)
          );

dp dp_add  (.clka (in_clka),
           .clkb (in_clkb),
           .restart (in_restart),
           .enter (in_enter),
           .state (out_state_main),
           .solved (out_solved),
           .difficulty (in_difficulty),
           .won (out_won),
           .register_inp_flag (out_register_inp_flag),
           .try_again_flag (out_try_again_flag),
           .dp_check (out_dp_check),
           .ridx_a (out_ridx_a),
           .ridx_b (out_ridx_b),
           .fill_flag (out_fill_flag),
           .reg_choose (in_reg_choose),
           .value_inp (in_value_inp)
          );


endmodule // End of Module top_module
                                    
