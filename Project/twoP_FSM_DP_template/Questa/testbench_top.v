//-----------------------------------------------------
//// Design Name : Testbench for top_module
//// File Name   : top_module_tb.v
//// Function    : Testbench for top module and total project.
////-----------------------------------------------------
//

module top_module_tb();

// Inputs to top_module
reg  in_clka, in_clkb, in_restart, in_load;
reg  [3:0] in_d1_in;
reg  [3:0] in_d2_in;
// Outputs from top_module
wire out_start;
wire [1:0] out_state_main;
wire [3:0] out_d_out;
wire out_done;

//create a top FSM system instance.
top_module top (.in_clka (in_clka),
           .in_clkb (in_clkb),
           .in_restart (in_restart),
	   .in_load (in_load),
           .out_start (out_start),
	   .out_state_main (out_state_main),
	   .in_d1_in (in_d1_in),
	   .in_d2_in (in_d2_in),
	   .out_d_out (out_d_out),
	   .out_done (out_done)
          );

initial
begin

// Cycle 1
in_restart = 0;
in_load = 0;
in_d1_in = 4'b0000;
in_d2_in = 4'b0000;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 2
in_restart = 1;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 3
in_restart = 0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 4
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 5
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 6
in_load = 1;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 7
in_load = 0;
in_d1_in = 4'b0011;
in_d2_in = 4'b0001;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 8
in_d1_in = 4'b0000;
in_d2_in = 4'b0000;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 9
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 10
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10


// Cycle 11
in_load = 1'b1;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 12
in_load = 1'b0;
in_d1_in = 4'b0100;
in_d2_in = 4'b0010;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10


// Cycle 13
in_d1_in = 4'b0000;
in_d2_in = 4'b0000;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10


// Cycle 14
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10


// Cycle 15
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10


// Cycle 16
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10


$dumpfile ("top_module_tb.vcd"); 
$dumpvars; 

    
$stop;
end 

endmodule
