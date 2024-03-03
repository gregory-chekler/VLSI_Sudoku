module Sudoku_FSM_tb();

reg in_clka, in_clkb, in_restart, in_enter, in_solved;
reg in_difficulty;

parameter SIZE = 10;

wire out_won, out_dp_check, out_ridx_a, out_ridx_b;
wire [3:0] out_state;
wire [7:0] out_fill_flag;
wire [0:SIZE-1] res_instr =          10'b1100000000;
wire [0:SIZE-1] enter_instr =        10'b1100000011;
wire [0:SIZE-1] solved_instr =       10'b1100000000;
wire [0:SIZE-1] difficulty_instr =   10'b1111111111;

//create an FSM instance.
main_FSM U1 (.clka (in_clka), 
           .clkb (in_clkb),
           .restart (in_restart),
	   .enter(in_enter),
	   .solved (in_solved),
	   .difficulty (in_difficulty),
       .won (out_won),
       .dp_check (out_dp_check),
       .ridx_a(out_ridx_a),
       .ridx_b(out_ridx_b),
       .state(out_state),
       .fill_flag(out_fill_flag)
          );

integer i;

initial
begin


in_restart = 1'b1;
in_solved = 1'b1;
in_enter = 1'b1;
in_difficulty = 1'b1;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

in_restart = 1'b1;
in_solved = 1'b1;
in_enter = 1'b1;
in_difficulty = 1'b1;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

in_restart = 1'b0;
in_solved = 1'b0;
in_enter = 1'b0;
in_difficulty = 1'b1;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

in_restart = 1'b0;
in_solved = 1'b0;
in_enter = 1'b0;
in_difficulty = 1'b1;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

in_restart = 1'b0;
in_solved = 1'b0;
in_enter = 1'b0;
in_difficulty = 1'b1;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

in_restart = 1'b0;
in_solved = 1'b0;
in_enter = 1'b0;
in_difficulty = 1'b1;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

in_restart = 1'b0;
in_solved = 1'b0;
in_enter = 1'b0;
in_difficulty = 1'b1;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

in_restart = 1'b0;
in_solved = 1'b0;
in_enter = 1'b0;
in_difficulty = 1'b1;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

in_restart = 1'b0;
in_solved = 1'b0;
in_enter = 1'b1;
in_difficulty = 1'b1;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

in_restart = 1'b0;
in_solved = 1'b0;
in_enter = 1'b1;
in_difficulty = 1'b1;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

/*
for (i=0; i<SIZE; i = i + 1)begin
    in_restart = res_instr[i];
    in_solved = solved_instr[i];
    in_enter = enter_instr[i];
    in_difficulty = difficulty_instr[i];
    in_clka = 0; in_clkb = 0; #10;
    in_clka = 1; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 1; #10;
end
*/


$dumpfile ("Sudoku_FSM_tb.vcd"); 
$dumpvars; 
    
$stop;
end 

endmodule
