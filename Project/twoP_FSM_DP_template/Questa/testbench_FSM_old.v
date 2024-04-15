module Sudoku_FSM_tb();

reg in_clka, in_clkb, in_restart, in_enter, in_solved;
reg [1:0] in_difficulty;

wire out_won, out_dp_check, out_set_board, out_ridx_a, out_ridx_b;
wire [3:0] out_state;
wire [15:0] out_fill_flag;

// parameter SIZE = 9;
// wire [0:SIZE-1] res_instr =          9'b010000000;
// wire [0:SIZE-1] enter_instr =        9'b000111100;
// wire [0:SIZE-1] solved_instr =       9'b000000010;
// wire [0:SIZE*2-1] difficulty_instr =   18'b000000001100000000;

// 0    1    2      3           4       5           6       7       8
// NA   IDLE EMPTY  SET_DIFF    EASY    REG_INP     GUESS   CHECK   FIN

//create an FSM instance.
main_FSM U1 (.clka (in_clka), 
           .clkb (in_clkb),
           .restart (in_restart),
            .enter(in_enter),
            .solved (in_solved),
            .difficulty (in_difficulty),
            .won (out_won),
            .dp_check (out_dp_check),
            .set_board(out_set_board),
            .ridx_a(out_ridx_a),
            .ridx_b(out_ridx_b),
            .state(out_state),
            .fill_flag(out_fill_flag)
          );

// integer i;

initial
begin

// for (i=0; i<SIZE; i = i + 1)begin
//     in_restart = res_instr[i];
//     in_solved = solved_instr[i];
//     in_enter = enter_instr[i];
//     in_difficulty = difficulty_instr[2*i+:2];
//     in_clka = 0; in_clkb = 0; #10;
//     in_clka = 1; in_clkb = 0; #10;
//     in_clka = 0; in_clkb = 0; #10;
//     in_clka = 0; in_clkb = 1; #10;
// end

// NA
in_restart = 1'b1;
in_solved = 1'b0;
in_enter = 1'b0;
in_difficulty = 2'b00;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// IDLE
in_restart = 1'b0;
in_solved = 1'b0;
in_enter = 1'b1;
in_difficulty = 2'b00;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// EMPTY
in_restart = 1'b0;
in_solved = 1'b0;
in_enter = 1'b1;
in_difficulty = 2'b00;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// SET_DIFF
in_restart = 1'b0;
in_solved = 1'b0;
in_enter = 1'b1;
in_difficulty = 2'b11;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// EASY or MEDIUM or HARD
in_restart = 1'b0;
in_solved = 1'b0;
in_enter = 1'b0;
in_difficulty = 2'b11; 
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// EASY or MEDIUM or HARD
in_restart = 1'b0;
in_solved = 1'b0;
in_enter = 1'b1;
in_difficulty = 2'b00;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// REG_INP
in_restart = 1'b0;
in_solved = 1'b0;
in_enter = 1'b1;
in_difficulty = 1'b0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// GUESS
in_restart = 1'b0;
in_solved = 1'b0;
in_enter = 1'b1;
in_difficulty = 1'b0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// CHECK
in_restart = 1'b0;
in_solved = 1'b1;
in_enter = 1'b0;
in_difficulty = 1'b0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// FIN or WRONG
in_restart = 1'b0;
in_solved = 1'b0;
in_enter = 1'b0;
in_difficulty = 1'b0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

$dumpfile ("Sudoku_FSM_tb.vcd"); 
$dumpvars; 
    
$stop;
end 

endmodule