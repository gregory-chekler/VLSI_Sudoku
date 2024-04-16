//-----------------------------------------------------
//// Design Name : Testbench for top_module
//// File Name   : top_module_tb.v
//// Function    : Testbench for top module and total project.
////-----------------------------------------------------
//

module dp_module_tb();

// Inputs to top_module
reg in_clka, in_clkb, in_restart, in_set_board_flag, in_set_diff_flag, in_cell_flag, in_val_flag, in_check_flag;
reg [3:0] in_rand_setup, in_rand_A, in_rand_B;
reg [3:0] in_diff_cell_val;

// Outputs from top_module
wire [2:0] out_user_board_0, out_user_board_1, out_user_board_2, out_user_board_3,
out_user_board_4, out_user_board_5, out_user_board_6, out_user_board_7, out_user_board_8, out_user_board_9, out_user_board_10, out_user_board_11,
out_user_board_12, out_user_board_13, out_user_board_14, out_user_board_15;

wire [2:0] out_real_board_0, out_real_board_1, out_real_board_2, out_real_board_3,
out_real_board_4, out_real_board_5, out_real_board_6, out_real_board_7, out_real_board_8, out_real_board_9, out_real_board_10, out_real_board_11,
out_real_board_12, out_real_board_13, out_real_board_14, out_real_board_15;

wire [15:0] out_fill_flag;

wire out_solved;

parameter SIZE = 18;

//----Testbench Sequences-----
wire [0:SIZE-1] restart_seq = 	   		18'b110000000000000000;
wire [0:SIZE-1] set_board_flag_seq =    18'b000011000000000000;
wire [0:SIZE-1] set_diff_flag_seq =     18'b000000110000000000;
wire [0:SIZE-1] cell_flag_seq = 		18'b000000001100000100;
wire [0:SIZE-1] val_flag_seq = 			18'b000000000011000010;
wire [0:SIZE-1] check_flag_seq =    	18'b000000000000100000;
wire [0:4*SIZE-1] rand_setup_seq =    	72'h000aaaaaaaaaaaaaaa;
wire [0:4*SIZE-1] rand_A_seq = 			72'h000bbbbbbbbbbbbbbb;
wire [0:4*SIZE-1] rand_B_seq = 			72'h000fffffffffffffff;
wire [0:4*SIZE-1] diff_cell_val_seq = 	72'h000000010104000020;

dp Sudoku_DP (.clka(in_clka), 
			.clkb(in_clkb),
			.restart(in_restart),
			.set_board_flag(in_set_board_flag),
			.set_diff_flag(in_set_diff_flag),
			.cell_flag(in_cell_flag),
			.val_flag(in_val_flag),
			.check_flag(in_check_flag),
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

integer i;

initial
begin

for (i=0; i<SIZE; i = i+1)begin
	in_restart = restart_seq[i];
	in_set_board_flag = set_board_flag_seq[i];
	in_set_diff_flag = set_diff_flag_seq[i];
	in_cell_flag = cell_flag_seq[i];
	in_val_flag = val_flag_seq[i];
	in_check_flag = check_flag_seq[i];
	in_rand_setup = rand_setup_seq[4*i +:4];
	in_rand_A = rand_A_seq[4*i +:4];
	in_rand_B = rand_B_seq[4*i +:4];
	in_diff_cell_val = diff_cell_val_seq[4*i +:4];
	in_clka = 0; in_clkb = 0; #10;
    in_clka = 1; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 0; #10;
    in_clka = 0; in_clkb = 1; #10;
end

$dumpfile ("Sudoku_DP_tb.vcd"); 
$dumpvars; 

$stop;
end 

endmodule
