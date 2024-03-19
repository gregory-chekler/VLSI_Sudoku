//-----------------------------------------------------
// Design Name : dp
// File Name   : dp.v
// Function    : Data path with 4-bit adder and done signal
//-----------------------------------------------------
//
//
module dp (clka, clkb, restart, enter, solved, difficulty, won, register_inp_flag, try_again_flag, dp_check, ridx_a, ridx_b, state, fill_flag, reg_choose, value_inp);
//-----------Input Ports---------------
input clka, clkb, restart, enter, won, register_inp_flag, try_again_flag, dp_check, ridx_a, ridx_b;
input [1:0] difficulty;
input [7:0] fill_flag;
input [3:0] state;
input [3:0] reg_choose; // the place in the board you need to choose that you are going to input
input [1:0] value_inp; // the value you are going to input the board
//-----------Output Ports---------------
output [15:0] user_board [1:0];
output [15:0] real_board [1:0];
output solved;
//------------Internal Variables--------
reg  [15:0] temp_user_board [1:0];
reg  [15:0] temp_real_board [1:0];
reg  temp_solved;
integer i; // for resetting the board
//-------------Code Starts Here---------
// Qualify the control signal by clka and clkb for the d1 and d2 and d_out registers

always @ (negedge clka)
begin
if (restart == 1'b1) begin
   temp_user_board[0] <= 2'b00;
   temp_user_board[1] <= 2'b00;
   temp_user_board[2] <= 2'b00;
   temp_user_board[3] <= 2'b00;
   temp_user_board[4] <= 2'b00;
   temp_user_board[5] <= 2'b00;
   temp_user_board[6] <= 2'b00;
   temp_user_board[7] <= 2'b00;
   temp_user_board[8] <= 2'b00;
   temp_user_board[9] <= 2'b00;
   temp_user_board[10] <= 2'b00;
   temp_user_board[11] <= 2'b00;
   temp_user_board[12] <= 2'b00;
   temp_user_board[13] <= 2'b00;
   temp_user_board[14] <= 2'b00;
   temp_user_board[15] <= 2'b00;

   temp_real_board[0] <= 2'b00;
   temp_real_board[1] <= 2'b00;
   temp_real_board[2] <= 2'b00;
   temp_real_board[3] <= 2'b00;
   temp_real_board[4] <= 2'b00;
   temp_real_board[5] <= 2'b00;
   temp_real_board[6] <= 2'b00;
   temp_real_board[7] <= 2'b00;
   temp_real_board[8] <= 2'b00;
   temp_real_board[9] <= 2'b00;
   temp_real_board[10] <= 2'b00;
   temp_real_board[11] <= 2'b00;
   temp_real_board[12] <= 2'b00;
   temp_real_board[13] <= 2'b00;
   temp_real_board[14] <= 2'b00;
   temp_real_board[15] <= 2'b00;
   temp_solved <= 1'b0;
   end else if (register_inp_flag == 1'b1) begin
   temp_user_board[reg_choose] = value_inp;
   end else if (dp_check == 1'b1) begin
      if ((temp_user_board[0] == temp_real_board[0]) & (temp_user_board[1] == temp_real_board[1]) & (temp_user_board[2] == temp_real_board[2]) & (temp_user_board[3] == temp_real_board[3]) & (temp_user_board[4] == temp_real_board[4]) & (temp_user_board[5] == temp_real_board[5]) & (temp_user_board[6] == temp_real_board[6]) & (temp_user_board[7] == temp_real_board[7]) & (temp_user_board[8] == temp_real_board[2]) & (temp_user_board[9] == temp_real_board[9]) & (temp_user_board[10] == temp_real_board[10]) & (temp_user_board[11] == temp_real_board[11]) & (temp_user_board[12] == temp_real_board[12]) & (temp_user_board[13] == temp_real_board[13]) & (temp_user_board[14] == temp_real_board[14]) & (temp_user_board[15] == temp_real_board[15])) begin
            temp_solved <= 1'b1;
          end else
          temp_solved <= 1'b0;
   end else if (try_again_flag == 1'b1) begin
      // do nothing
   end else if (won == 1'b1) begin
      // do nothing
   end
end

always @ (negedge clkb)begin
   if (restart == 1'b1) begin
      real_board <= temp_real_board;
      user_board <= temp_user_board;
      solved <= temp_solved;
      end 
   else if (register_inp_flag == 1'b1) begin
         user_board <= temp_user_board;
      end 
   else if (dp_check == 1'b1) begin
      solved <= temp_solved;
      end
   else if (try_again_flag == 1'b1) begin
         // do nothing
      end 
   else if (won == 1'b1) begin
         // do nothing
      end
end

endmodule //End Of Module dp  datapath
