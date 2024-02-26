//-----------------------------------------------------
// Design Name : top_module
// File Name   : top_module.v
//
// Function    : top file call main_FSM controller.
//               When in_load goes high as Stable_A1, main_FSM issues start as
//               Valid_B1_Stable_A2 (A of next cycle)
//               to load the two input registers.
//               The dp datapath then receives the start Valid_B1_Stable_A2
//               and expects data to be Stable_A2. The datapath then add the
//               two register values and stores the result in the output latch
//               on clkb which is on clock cycle 2 so that the output is
//               Valid_B2_Stable_A3. The output should not change until a new
//               in_load is received. 
//               The dp makes the output latch value visible through
//               this top module.
//-----------------------------------------------------
module top_module (in_clka, in_clkb, in_restart, in_load, out_start, out_state_main, in_d1_in, in_d2_in, out_d_out, out_done);
//-------------Input Ports-----------------------------
input   in_clka, in_clkb, in_restart, in_load, in_d1_in, in_d2_in;
//-------------Output Ports----------------------------
output out_start;
output [1:0] out_state_main; 
output [3:0] out_d_out;
output out_done;
//-------------Input ports Data Type-------------------
wire   in_clka, in_clkb, in_restart, in_load;
wire   [3:0] in_d1_in;
wire   [3:0] in_d2_in;
//-------------Output Ports Data Type------------------
wire   out_start;
wire   [1:0] out_state_main;
wire   [3:0] out_d_out;
wire   out_done;

//----------Code startes Here------------------------


main_FSM main (.clka (in_clka),
           .clkb (in_clkb),
           .restart (in_restart),
           .load (in_load),
           .state (out_state_main),
           .start (out_start),
           .done (out_done)
          );

dp dp_add  (.clka (in_clka),
           .clkb (in_clkb),
           .restart (in_restart),
           .start (out_start),
	   .d1_in (in_d1_in),
	   .d2_in (in_d2_in),
	   .d_out (out_d_out),
           .done  (out_done)
          );


endmodule // End of Module top_module
                                    
