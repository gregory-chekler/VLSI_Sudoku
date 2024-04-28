//-----------------------------------------------------
//// Design Name : Testbench for top_module
//// File Name   : top_module_tb.v
//// Function    : Testbench for top module and total project.
////-----------------------------------------------------
//

module lfsr_module_tb();

// Inputs to top_module
reg in_clka, in_clkb, in_restart, in_new_game, in_gen_rand_flag;

// Outputs from top_module
wire [3:0] out_rand_setup, out_rand_A, out_rand_B;

parameter SIZE = 18;

//----Testbench Sequences-----
wire [0:SIZE-1] restart_seq = 	   		18'b100000000001000000;
wire [0:SIZE-1] new_game_seq =    		18'b000000010000000000;
wire [0:SIZE-1] gen_rand_flag_seq = 	18'b011111101110111111;

lfsr_rng Sudoku_lfsr (.clka(in_clka), 
					.clkb(in_clkb),
					.restart(in_restart),
					.new_game(in_new_game),
					.gen_rand_flag(in_gen_rand_flag),
					.rand_setup(out_rand_setup),
					.rand_A(out_rand_A),
					.rand_B(out_rand_B));

integer i;

initial
begin

// Cycle 0
in_restart = 1'b1;
in_new_game = 1'b0;
in_gen_rand_flag = 1'b0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

for (i=0; i<SIZE; i = i+1)begin
	in_restart = restart_seq[i];
	in_new_game = new_game_seq[i];
	in_gen_rand_flag = gen_rand_flag_seq[i];
	in_clka = 0; in_clkb = 0; #10;
    in_clka = 1; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 1; #10;
end

$dumpfile ("lfsr_module_tb.vcd"); 
$dumpvars; 

$stop;
end 

endmodule
