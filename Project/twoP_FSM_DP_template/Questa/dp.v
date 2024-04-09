//-----------------------------------------------------
// Design Name : dp
// File Name   : dp.v
// Function    : Data path with 4-bit adder and done signal
//-----------------------------------------------------
//
//
module dp (clka, clkb, restart, difficulty, won, set_board, register_inp_flag, try_again_flag, dp_check, ridx_a, ridx_b, fill_flag, solved, reg_choose, value_inp, user_board_0,
user_board_1, user_board_2, user_board_3, user_board_4, user_board_5, user_board_6, user_board_7, user_board_8,
user_board_9, user_board_10, user_board_11, user_board_12, user_board_13, user_board_14, user_board_15, real_board_0,
real_board_1, real_board_2, real_board_3, real_board_4, real_board_5, real_board_6, real_board_7, real_board_8, real_board_9, real_board_10,
real_board_11, real_board_12, real_board_13, real_board_14, real_board_15);
//-----------Input Ports---------------
input clka, clkb, restart, set_board, register_inp_flag, dp_check, won, try_again_flag;
input [3:0] ridx_a, ridx_b;
input [1:0] difficulty;
input [3:0] reg_choose; // the place in the board you need to choose that you are going to input
input [1:0] value_inp; // the value you are going to input the board

//-----------Output Ports---------------
output reg [2:0] user_board_0;
output reg [2:0] user_board_1;
output reg [2:0] user_board_2;
output reg [2:0] user_board_3;
output reg [2:0] user_board_4;
output reg [2:0] user_board_5;
output reg [2:0] user_board_6;
output reg [2:0] user_board_7;
output reg [2:0] user_board_8;
output reg [2:0] user_board_9;
output reg [2:0] user_board_10;
output reg [2:0] user_board_11;
output reg [2:0] user_board_12;
output reg [2:0] user_board_13;
output reg [2:0] user_board_14;
output reg [2:0] user_board_15;

output reg [2:0] real_board_0;
output reg [2:0] real_board_1;
output reg [2:0] real_board_2;
output reg [2:0] real_board_3;
output reg [2:0] real_board_4;
output reg [2:0] real_board_5;
output reg [2:0] real_board_6;
output reg [2:0] real_board_7;
output reg [2:0] real_board_8;
output reg [2:0] real_board_9;
output reg [2:0] real_board_10;
output reg [2:0] real_board_11;
output reg [2:0] real_board_12;
output reg [2:0] real_board_13;
output reg [2:0] real_board_14;
output reg [2:0] real_board_15;

output reg [15:0] fill_flag;
output reg solved;
//------------Internal Variables--------
reg [2:0] A;
reg [2:0] B;
reg [2:0] temp_user_board_0;
reg [2:0] temp_user_board_1;
reg [2:0] temp_user_board_2;
reg [2:0] temp_user_board_3;
reg [2:0] temp_user_board_4;
reg [2:0] temp_user_board_5;
reg [2:0] temp_user_board_6;
reg [2:0] temp_user_board_7;
reg [2:0] temp_user_board_8;
reg [2:0] temp_user_board_9;
reg [2:0] temp_user_board_10;
reg [2:0] temp_user_board_11;
reg [2:0] temp_user_board_12;
reg [2:0] temp_user_board_13;
reg [2:0] temp_user_board_14;
reg [2:0] temp_user_board_15;

reg [2:0] temp_real_board_0;
reg [2:0] temp_real_board_1;
reg [2:0] temp_real_board_2;
reg [2:0] temp_real_board_3;
reg [2:0] temp_real_board_4;
reg [2:0] temp_real_board_5;
reg [2:0] temp_real_board_6;
reg [2:0] temp_real_board_7;
reg [2:0] temp_real_board_8;
reg [2:0] temp_real_board_9;
reg [2:0] temp_real_board_10;
reg [2:0] temp_real_board_11;
reg [2:0] temp_real_board_12;
reg [2:0] temp_real_board_13;
reg [2:0] temp_real_board_14;
reg [2:0] temp_real_board_15;

reg  temp_solved;
//-------------Code Starts Here---------
// Qualify the control signal by clka and clkb for the d1 and d2 and d_out registers

always @ (negedge clka)
   begin
   if (restart == 1'b1) begin
      temp_user_board_0 <= 3'b000;
      temp_user_board_1 <= 3'b000;
      temp_user_board_2 <= 3'b000;
      temp_user_board_3 <= 3'b000;
      temp_user_board_4 <= 3'b000;
      temp_user_board_5 <= 3'b000;
      temp_user_board_6 <= 3'b000;
      temp_user_board_7 <= 3'b000;
      temp_user_board_8 <= 3'b000;
      temp_user_board_9 <= 3'b000;
      temp_user_board_10 <= 3'b000;
      temp_user_board_11 <= 3'b000;
      temp_user_board_12 <= 3'b000;
      temp_user_board_13 <= 3'b000;
      temp_user_board_14 <= 3'b000;
      temp_user_board_15 <= 3'b000;

      temp_real_board_0 <= 3'b000;
      temp_real_board_1 <= 3'b000;
      temp_real_board_2 <= 3'b000;
      temp_real_board_3 <= 3'b000;
      temp_real_board_4 <= 3'b000;
      temp_real_board_5 <= 3'b000;
      temp_real_board_6 <= 3'b000;
      temp_real_board_7 <= 3'b000;
      temp_real_board_8 <= 3'b000;
      temp_real_board_9 <= 3'b000;
      temp_real_board_10 <= 3'b000;
      temp_real_board_11 <= 3'b000;
      temp_real_board_12 <= 3'b000;
      temp_real_board_13 <= 3'b000;
      temp_real_board_14 <= 3'b000;
      temp_real_board_15 <= 3'b000;

      temp_solved <= 1'b0;
      end else if (set_board == 1'b1) begin
         if (ridx_a[1] == 1'b0) begin
            // A = 1 or 4, B = 2 or 3
            if (ridx_a[0] == 1'b0) begin
               A = 3'b001;
            end else begin
               A = 3'b100;
            end
            if (ridx_b[0] == 1'b0) begin
               B = 3'b010;
            end else begin
               B = 3'b011;
            end
         end else begin
            // A = 2 or 3, B = 1 or 4
            if (ridx_a[0] == 1'b0) begin
               A = 3'b010;
            end else begin
               A = 3'b011;
            end
            if (ridx_b[0] == 1'b0) begin
               B = 3'b001;
            end else begin
               B = 3'b100;
            end
         end
         temp_real_board_0 <= A;
         temp_real_board_1 <= ~B;
         temp_real_board_2 <= B;
         temp_real_board_3 <= ~A;
         temp_real_board_4 <= B;
         temp_real_board_5 <= ~A;
         temp_real_board_6 <= A;
         temp_real_board_7 <= ~B;
         temp_real_board_8 <= ~B;
         temp_real_board_9 <= A;
         temp_real_board_10 <= ~A;
         temp_real_board_11 <= B;
         temp_real_board_12 <= ~A;
         temp_real_board_13 <= B;
         temp_real_board_14 <= ~B;
         temp_real_board_15 <= A;
   end else if (difficulty == 2'b01) begin
      // update 8 hints on temp_user_board
      // update fill flag
      case(ridx_a[1:0])
         2'b00: begin
                  temp_user_board_0 <= A;
                  fill_flag[0] <= 1'b1;
                end 
         2'b01: begin 
                  temp_user_board_1 <= ~B;
                  fill_flag[1] <= 1'b1;
                end
         2'b10: begin 
                  temp_user_board_2 <= B;
                  fill_flag[2] <= 1'b1; 
               end
         2'b11: begin 
                  temp_user_board_3 <= ~A;
                  fill_flag[3] <= 1'b1;
               end
      endcase
      case(ridx_a[3:2])
         2'b00: begin
                  temp_user_board_4 <= B;
                  temp_user_board_7 <= ~B;
                  fill_flag[4] <= 1'b1;
                  fill_flag[7] <= 1'b1;
               end
         2'b01: begin
                  temp_user_board_5 <= ~A;
                  temp_user_board_6 <= A;
                  fill_flag[5] <= 1'b1;
                  fill_flag[6] <= 1'b1;
               end
         2'b10: begin
                  temp_user_board_5 <= ~A;
                  temp_user_board_6 <= A;
                  fill_flag[5] <= 1'b1;
                  fill_flag[6] <= 1'b1;
               end
         2'b11: begin
                  temp_user_board_4 <= B;
                  temp_user_board_7 <= ~B;
                  fill_flag[4] <= 1'b1;
                  fill_flag[7] <= 1'b1;
               end
      endcase
      case(ridx_b[1:0])
         2'b00: begin
                  temp_user_board_8 <= ~B;
                  temp_user_board_11 <= B;
                  fill_flag[8] <= 1'b1;
                  fill_flag[11] <= 1'b1;
               end
         2'b01: begin
                  temp_user_board_9 <= A;
                  temp_user_board_10 <= ~A;
                  fill_flag[9] <= 1'b1;
                  fill_flag[10] <= 1'b1;
               end
         2'b10: begin
                  temp_user_board_9 <= A;
                  temp_user_board_10 <= ~A;
                  fill_flag[9] <= 1'b1;
                  fill_flag[10] <= 1'b1;
               end
         2'b11: begin
                  temp_user_board_8 <= ~B;
                  temp_user_board_11 <= B;
                  fill_flag[8] <= 1'b1;
                  fill_flag[11] <= 1'b1;
               end
      endcase
      case(ridx_b[3:2])
         2'b00: begin 
                  temp_user_board_12 <= ~A;
                  fill_flag[12] <= 1'b1;
               end
         2'b01: begin 
                  temp_user_board_13 <= B;
                  fill_flag[13] <= 1'b1;
               end
         2'b10: begin 
                  temp_user_board_14 <= ~B;
                  fill_flag[14] <= 1'b1;
               end
         2'b11: begin 
                  temp_user_board_15 <= A;
                  fill_flag[15] <= 1'b1;
               end
      endcase
   end else if (difficulty == 2'b10) begin
      // update 5 hints on temp_user_board
      // update fill flag
      case(ridx_a[1:0])
         2'b00: begin 
                  temp_user_board_0 <= A;
                  fill_flag[0] <= 1'b1;
               end
         2'b01: begin 
                  temp_user_board_1 <= ~B;
                  fill_flag[1] <= 1'b1;
               end
         2'b10: begin 
                  temp_user_board_2 <= B;
                  fill_flag[2] <= 1'b1;
               end
         2'b11: begin 
                  temp_user_board_3 <= ~A;
                  fill_flag[3] <= 1'b1;
               end
      endcase
      case(ridx_a[3:2])
         2'b00: begin 
                  temp_user_board_4 <= B;
                  fill_flag[4] <= 1'b1;
               end
         2'b01: begin 
                  temp_user_board_5 <= ~A;
                  fill_flag[5] <= 1'b1;
               end
         2'b10: begin 
                  temp_user_board_6 <= A;
                  fill_flag[6] <= 1'b1;
               end
         2'b11: begin 
                  temp_user_board_7 <= ~B;
                  fill_flag[7] <= 1'b1;
               end
      endcase
      case(ridx_b[1:0])
         2'b00: begin
                  temp_user_board_8 <= ~B;
                  temp_user_board_11 <= B;
                  fill_flag[8] <= 1'b1;
                  fill_flag[11] <= 1'b1;
               end
         2'b01: begin
                  temp_user_board_9 <= A;
                  temp_user_board_10 <= ~A;
                  fill_flag[9] <= 1'b1;
                  fill_flag[10] <= 1'b1;
               end
         2'b10: begin
                  temp_user_board_9 <= A;
                  temp_user_board_10 <= ~A;
                  fill_flag[9] <= 1'b1;
                  fill_flag[10] <= 1'b1;
               end
         2'b11: begin
                  temp_user_board_8 <= ~B;
                  temp_user_board_11 <= B;
                  fill_flag[8] <= 1'b1;
                  fill_flag[11] <= 1'b1;
               end
      endcase
      case(ridx_b[3:2])
         2'b00: begin 
                  temp_user_board_12 <= ~A;
                  fill_flag[12] <= 1'b1;
               end
         2'b01: begin 
                  temp_user_board_13 <= B;
                  fill_flag[13] <= 1'b1;
               end
         2'b10: begin 
                  temp_user_board_14 <= ~B;
                  fill_flag[14] <= 1'b1;
               end
         2'b11: begin 
                  temp_user_board_15 <= A;
                  fill_flag[15] <= 1'b1;
               end
      endcase
   end else if (difficulty == 2'b11) begin
      // update 4 hints on temp_user_board
      // update fill flag
      case(ridx_a[1:0])
         2'b00: begin 
                  temp_user_board_0 <= A;
                  fill_flag[0] <= 1'b1;
               end
         2'b01: begin 
                  temp_user_board_1 <= ~B;
                  fill_flag[1] <= 1'b1;
               end
         2'b10: begin 
                  temp_user_board_2 <= B;
                  fill_flag[2] <= 1'b1;
               end
         2'b11: begin 
                  temp_user_board_3 <= ~A;
                  fill_flag[3] <= 1'b1;
               end
      endcase
      case(ridx_a[3:2])
         2'b00: begin 
                  temp_user_board_4 <= B;
                  fill_flag[4] <= 1'b1;
               end
         2'b01: begin 
                  temp_user_board_5 <= ~A;
                  fill_flag[5] <= 1'b1;
               end
         2'b10: begin 
                  temp_user_board_6 <= A;
                  fill_flag[6] <= 1'b1;
               end
         2'b11: begin 
                  temp_user_board_7 <= ~B;
                  fill_flag[7] <= 1'b1;
               end
      endcase
      case(ridx_b[1:0])
         2'b00: begin 
                  temp_user_board_8 <= ~B;
                  fill_flag[8] <= 1'b1;
               end
         2'b01: begin 
                  temp_user_board_9 <= A;
                  fill_flag[9] <= 1'b1;
               end
         2'b10: begin 
                  temp_user_board_10 <= ~A;
                  fill_flag[10] <= 1'b1;
               end
         2'b11: begin 
                  temp_user_board_11 <= B;
                  fill_flag[11] <= 1'b1;
               end
      endcase
      case(ridx_b[3:2])
         2'b00: begin 
                  temp_user_board_12 <= ~A;
                  fill_flag[12] <= 1'b1;
               end
         2'b01: begin 
                  temp_user_board_13 <= B;
                  fill_flag[13] <= 1'b1;
               end
         2'b10: begin 
                  temp_user_board_14 <= ~B;
                  fill_flag[14] <= 1'b1;
               end
         2'b11: begin 
                  temp_user_board_15 <= A;
                  fill_flag[15] <= 1'b1;
               end
      endcase
   end else if (register_inp_flag == 1'b1) begin
      if (fill_flag[reg_choose] == 0) begin
         if (reg_choose == 0) begin
            temp_user_board_0 = value_inp+1; //making value from 1-4 instead of 0 to 1
         end else if (reg_choose == 1) begin
            temp_user_board_1 = value_inp+1;
         end else if (reg_choose == 2) begin
            temp_user_board_2 = value_inp+1;
         end else if (reg_choose == 3) begin
            temp_user_board_3 = value_inp+1;
         end else if (reg_choose == 4) begin
            temp_user_board_4 = value_inp+1;
         end else if (reg_choose == 5) begin
            temp_user_board_5 = value_inp+1;
         end else if (reg_choose == 6) begin
            temp_user_board_6 = value_inp+1;
         end else if (reg_choose == 7) begin
            temp_user_board_7 = value_inp+1;
         end else if (reg_choose == 8) begin
            temp_user_board_8 = value_inp+1;
         end else if (reg_choose == 9) begin
            temp_user_board_9 = value_inp+1;
         end else if (reg_choose == 10) begin
            temp_user_board_10 = value_inp+1;
         end else if (reg_choose == 11) begin
            temp_user_board_11 = value_inp+1;
         end else if (reg_choose == 12) begin
            temp_user_board_12 = value_inp+1;
         end else if (reg_choose == 13) begin
            temp_user_board_13 = value_inp+1;
         end else if (reg_choose == 14) begin
            temp_user_board_14 = value_inp+1;
         end else if (reg_choose == 15) begin
            temp_user_board_15 = value_inp+1;
         end
      end
   end else if (dp_check == 1'b1) begin
      if ((temp_user_board_0 == temp_real_board_0) & (temp_user_board_1 == temp_real_board_1) & (temp_user_board_2 == temp_real_board_2) &(temp_user_board_3 == temp_real_board_3) &(temp_user_board_4 == temp_real_board_4) &(temp_user_board_5 == temp_real_board_5) &(temp_user_board_6 == temp_real_board_6) &(temp_user_board_7 == temp_real_board_7) &(temp_user_board_8 == temp_real_board_8) &(temp_user_board_9 == temp_real_board_9) &(temp_user_board_10 == temp_real_board_10) &(temp_user_board_11 == temp_real_board_11) &(temp_user_board_12 == temp_real_board_12) &(temp_user_board_13 == temp_real_board_13) &(temp_user_board_14 == temp_real_board_14) &(temp_user_board_15 == temp_real_board_15)) begin
         temp_solved <= 1'b1;
      end else begin
         temp_solved <= 1'b0;
      end
   end else if (try_again_flag == 1'b1) begin
      // do nothing
   end else if (won == 1'b1) begin
      // do nothing
   end
end

always @ (negedge clkb)begin
   if (restart == 1'b1) begin
      real_board_0 <= temp_real_board_0;
      real_board_1 <= temp_real_board_1;
      real_board_2 <= temp_real_board_2;
      real_board_3 <= temp_real_board_3;
      real_board_4 <= temp_real_board_4;
      real_board_5 <= temp_real_board_5;
      real_board_6 <= temp_real_board_6;
      real_board_7 <= temp_real_board_7;
      real_board_8 <= temp_real_board_8;
      real_board_9 <= temp_real_board_9;
      real_board_10 <= temp_real_board_10;
      real_board_11 <= temp_real_board_11;
      real_board_12 <= temp_real_board_12;
      real_board_13 <= temp_real_board_13;
      real_board_14 <= temp_real_board_14;
      real_board_15 <= temp_real_board_15;

      user_board_0 <= temp_user_board_0;
      user_board_1 <= temp_user_board_1;
      user_board_2 <= temp_user_board_2;
      user_board_3 <= temp_user_board_3;
      user_board_4 <= temp_user_board_4;
      user_board_5 <= temp_user_board_5;
      user_board_6 <= temp_user_board_6;
      user_board_7 <= temp_user_board_7;
      user_board_8 <= temp_user_board_8;
      user_board_9 <= temp_user_board_9;
      user_board_10 <= temp_user_board_10;
      user_board_11 <= temp_user_board_11;
      user_board_12 <= temp_user_board_12;
      user_board_13 <= temp_user_board_13;
      user_board_14 <= temp_user_board_14;
      user_board_15 <= temp_user_board_15;

      solved <= temp_solved;
   end 
   else if (register_inp_flag == 1'b1) begin
      user_board_0 <= temp_user_board_0;
      user_board_1 <= temp_user_board_1;
      user_board_2 <= temp_user_board_2;
      user_board_3 <= temp_user_board_3;
      user_board_4 <= temp_user_board_4;
      user_board_5 <= temp_user_board_5;
      user_board_6 <= temp_user_board_6;
      user_board_7 <= temp_user_board_7;
      user_board_8 <= temp_user_board_8;
      user_board_9 <= temp_user_board_9;
      user_board_10 <= temp_user_board_10;
      user_board_11 <= temp_user_board_11;
      user_board_12 <= temp_user_board_12;
      user_board_13 <= temp_user_board_13;
      user_board_14 <= temp_user_board_14;
      user_board_15 <= temp_user_board_15;
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
