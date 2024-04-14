//-----------------------------------------------------
//// Design Name : Testbench for top_module
//// File Name   : top_module_tb.v
//// Function    : Testbench for top module and total project.
////-----------------------------------------------------
//

module dp_module_tb();

// Inputs to top_module
reg in_clka, in_clkb, in_restart, in_set_board, in_register_inp_flag, in_dp_check, in_won, in_try_again_flag;
reg [3:0] in_ridx_a, in_ridx_b;
reg [1:0] in_difficulty;
reg [3:0] in_reg_choose;
reg [1:0] in_value_inp;

// Outputs from top_module
wire [2:0] out_user_board_0, out_user_board_1, out_user_board_2, out_user_board_3,
out_user_board_4, out_user_board_5, out_user_board_6, out_user_board_7, out_user_board_8, out_user_board_9, out_user_board_10, out_user_board_11,
out_user_board_12, out_user_board_13, out_user_board_14, out_user_board_15;

wire [2:0] out_real_board_0, out_real_board_1, out_real_board_2, out_real_board_3,
out_real_board_4, out_real_board_5, out_real_board_6, out_real_board_7, out_real_board_8, out_real_board_9, out_real_board_10, out_real_board_11,
out_real_board_12, out_real_board_13, out_real_board_14, out_real_board_15;

wire [15:0] out_fill_flag;

wire out_solved;

//----Testbench Sequences-----

// wire [0:23] restart_seq = 	   			24'b110000000000000000000000;
// wire [0:23] set_board_seq =        		24'b001000000000000000000000;
// wire [0:23] register_inp_flag_seq =  	24'b000010101000000000000000;
// wire [0:23] dp_check_seq =    			24'b000001010000000000000000;
// wire [0:23] won_seq = 					24'b000000000000000000000000;
// wire [0:23] try_again_flag_seq =     	24'b000000000000000000000000;
// wire [0:95] ridx_a_seq = 				96'h00A000000000000000000000;
// wire [0:95] ridx_b_seq = 				96'h00F000000000000000000000;
// wire [0:47] difficulty_seq = 			48'b000000010000000000000000000000000000000000000000;
// wire [0:95] reg_choose_seq = 			96'h000030A0C000000000000000;
// wire [0:47]	value_inp_seq = 			48'b000000001100100001000000000000000000000000000000;

integer j = 26;
wire [0:25] restart_seq = 	   		26'b11000000000000000000000000;
wire [0:25] set_board_seq =        	26'b00010000000000000000000000;
wire [0:51] difficulty_seq = 		52'b0000000000010000000000000000000000000000000000000000;
wire [0:25] register_inp_flag_seq =  26'b00000001111111111111000000;
wire [0:25] dp_check_seq =    		26'b00000000000000000000000100;
wire [0:103] ridx_a_seq = 			104'hbbbbbbbbbbbbbbbbbbbbbbbbbb;
wire [0:103] ridx_b_seq = 			104'hffffffffffffffffffffffffff;
wire [0:103] reg_choose_seq = 		104'h00000000123456789abcdef000;
wire [0:51]	value_inp_seq = 		52'b0000000000000010001101110110000010011101110010000000;
wire [0:25] won_seq = 				26'b00000000000000000000000000;
wire [0:25] try_again_flag_seq =     26'b00000000000000000000000000;

dp U2(.clka(in_clka), 
	.clkb(in_clkb),
	.restart(in_restart),
	.difficulty(in_difficulty),
	.won(in_won),
	.set_board(in_set_board),
	.register_inp_flag(in_register_inp_flag),
	.try_again_flag(in_try_again_flag),
	.dp_check(in_dp_check),
	.ridx_a(in_ridx_a),
	.ridx_b(in_ridx_b),
	.fill_flag(out_fill_flag),
	.solved(out_solved),
	.reg_choose(in_reg_choose),
	.value_inp(in_value_inp),
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

integer i;

initial
begin

for (i=0; i<j; i = i+1)begin
	in_restart = restart_seq[i];
	in_difficulty = difficulty_seq[2*i +:2];
	in_won = won_seq[i];
	in_set_board = set_board_seq[i];
	in_register_inp_flag = register_inp_flag_seq[i];
	in_try_again_flag = try_again_flag_seq[i];
	in_dp_check = dp_check_seq[i];
	in_ridx_a = ridx_a_seq[4*i +:4];
	in_ridx_b = ridx_b_seq[4*i +:4];
	in_reg_choose = reg_choose_seq[4*i +:4];
	in_value_inp = value_inp_seq[2*i +:2];
	in_clka = 0; in_clkb = 0; #10;
    in_clka = 1; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 1; #10;
end

$dumpfile ("dp_module_tb.vcd"); 
$dumpvars; 

    
$stop;
end 

endmodule
