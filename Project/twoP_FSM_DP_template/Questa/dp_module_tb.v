//-----------------------------------------------------
//// Design Name : Testbench for top_module
//// File Name   : top_module_tb.v
//// Function    : Testbench for top module and total project.
////-----------------------------------------------------
//

module dp_module_tb();

// Inputs to top_module
reg in_clka, in_clkb, in_restart, in_set_board_flag, in_set_diff_flag, in_play_flag, in_check_flag, in_win_flag, in_try_again_flag;
reg [3:0] in_rand_A, in_rand_B;
reg [1:0] in_difficulty;
reg [3:0] in_cell_in;
reg [1:0] in_val_in;

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

parameter SIZE = 27;
wire [0:SIZE-1] restart_seq = 	   		27'b110000000000000000000000000;
wire [0:SIZE-1] set_board_flag_seq =    27'b000100000000000000000000000;
wire [0:SIZE-1] set_diff_flag_seq =     27'b000001000000000000000000000;
wire [0:SIZE-1] play_flag_seq = 		27'b000000011111111111111110000;
wire [0:SIZE-1] check_flag_seq =    	27'b000000000000000000000001000;
wire [0:SIZE-1] win_flag_seq = 			27'b000000000000000000000000000;
wire [0:SIZE-1] try_again_flag_seq =    27'b000000000000000000000000100;
wire [0:4*SIZE-1] rand_A_seq = 			108'hbbbbbbbbbbbbbbbbbbbbbbbbbbb;
wire [0:4*SIZE-1] rand_B_seq = 			108'hfffffffffffffffffffffffffff;
wire [0:2*SIZE-1] difficulty_seq = 		54'b000000000001000000000000000000000000000000000000000000;
wire [0:4*SIZE-1] cell_in_seq = 		108'h00000000123456789abcdef0000;
wire [0:2*SIZE-1]	val_in_seq = 		54'b000000000000001000110111011000001001110111001000000000;

dp U2(.clka(in_clka), 
	.clkb(in_clkb),
	.restart(in_restart),
	.set_board_flag(in_set_board_flag),
	.set_diff_flag(in_set_diff_flag),
	.play_flag(in_play_flag),
	.check_flag(in_check_flag),
	.win_flag(in_win_flag),
	.try_again_flag(in_try_again_flag),
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

integer i;

initial
begin

for (i=0; i<SIZE; i = i+1)begin
	in_restart = restart_seq[i];
	in_set_board_flag = set_board_flag_seq[i];
	in_set_diff_flag = set_diff_flag_seq[i];
	in_play_flag = play_flag_seq[i];
	in_check_flag = check_flag_seq[i];
	in_win_flag = win_flag_seq[i];
	in_try_again_flag = try_again_flag_seq[i];
	in_rand_A = rand_A_seq[4*i +:4];
	in_rand_B = rand_B_seq[4*i +:4];
	in_difficulty = difficulty_seq[2*i +:2];
	in_cell_in = cell_in_seq[4*i +:4];
	in_val_in = val_in_seq[2*i +:2];
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
