//-----------------------------------------------------
// Design Name : dp
// File Name   : dp.v
// Function    : Data path with 4-bit adder and done signal
//-----------------------------------------------------
//
//
module dp (clka, clkb, restart, new_game, set_board_flag, set_diff_flag, row_flag, col_flag, val_flag, check_flag, 
rand_setup, rand_A, rand_B, diff_cell_val, solved, fill_flag,
user_board_0, user_board_1, user_board_2, user_board_3, user_board_4, user_board_5, user_board_6, user_board_7, 
user_board_8, user_board_9, user_board_10, user_board_11, user_board_12, user_board_13, user_board_14, user_board_15, 
real_board_0, real_board_1, real_board_2, real_board_3, real_board_4, real_board_5, real_board_6, real_board_7, 
real_board_8, real_board_9, real_board_10, real_board_11, real_board_12, real_board_13, real_board_14, real_board_15);

//-----------Input Ports---------------
input clka, clkb, restart, new_game, set_board_flag, set_diff_flag, row_flag, col_flag, val_flag, check_flag;
input [3:0] rand_setup, rand_A, rand_B;
input [1:0] diff_cell_val;    // difficulty, row, column, and value input depending on state

//-----------Output Ports---------------
output [2:0] user_board_0;
output [2:0] user_board_1;
output [2:0] user_board_2;
output [2:0] user_board_3;
output [2:0] user_board_4;
output [2:0] user_board_5;
output [2:0] user_board_6;
output [2:0] user_board_7;
output [2:0] user_board_8;
output [2:0] user_board_9;
output [2:0] user_board_10;
output [2:0] user_board_11;
output [2:0] user_board_12;
output [2:0] user_board_13;
output [2:0] user_board_14;
output [2:0] user_board_15;

output [2:0] real_board_0;
output [2:0] real_board_1;
output [2:0] real_board_2;
output [2:0] real_board_3;
output [2:0] real_board_4;
output [2:0] real_board_5;
output [2:0] real_board_6;
output [2:0] real_board_7;
output [2:0] real_board_8;
output [2:0] real_board_9;
output [2:0] real_board_10;
output [2:0] real_board_11;
output [2:0] real_board_12;
output [2:0] real_board_13;
output [2:0] real_board_14;
output [2:0] real_board_15;

output [15:0] fill_flag;
output solved;
//------------Internal Variables--------
reg [2:0] A;
reg [2:0] B;
reg [2:0] inv_A;
reg [2:0] inv_B;
reg [1:0] current_row;
reg [3:0] current_cell;

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

reg [15:0] temp_fill_flag;
reg temp_solved;
//-----------Output Registers---------------
reg [2:0] user_board_0;
reg [2:0] user_board_1;
reg [2:0] user_board_2;
reg [2:0] user_board_3;
reg [2:0] user_board_4;
reg [2:0] user_board_5;
reg [2:0] user_board_6;
reg [2:0] user_board_7;
reg [2:0] user_board_8;
reg [2:0] user_board_9;
reg [2:0] user_board_10;
reg [2:0] user_board_11;
reg [2:0] user_board_12;
reg [2:0] user_board_13;
reg [2:0] user_board_14;
reg [2:0] user_board_15;

reg [2:0] real_board_0;
reg [2:0] real_board_1;
reg [2:0] real_board_2;
reg [2:0] real_board_3;
reg [2:0] real_board_4;
reg [2:0] real_board_5;
reg [2:0] real_board_6;
reg [2:0] real_board_7;
reg [2:0] real_board_8;
reg [2:0] real_board_9;
reg [2:0] real_board_10;
reg [2:0] real_board_11;
reg [2:0] real_board_12;
reg [2:0] real_board_13;
reg [2:0] real_board_14;
reg [2:0] real_board_15;

reg [15:0] fill_flag;
reg solved;
//-------------Code Starts Here---------
// Qualify the control signal by clka and clkb for the d1 and d2 and d_out registers
always @ (negedge clka)
begin
   if (restart == 1'b1 || new_game == 1'b1) begin
      A = 3'b000;
      B = 3'b000;
      inv_A = 3'b000;
      inv_B = 3'b000;
      current_row = 2'b00;
      current_cell = 4'b0000;

      temp_user_board_0 = 3'b000;
      temp_user_board_1 = 3'b000;
      temp_user_board_2 = 3'b000;
      temp_user_board_3 = 3'b000;
      temp_user_board_4 = 3'b000;
      temp_user_board_5 = 3'b000;
      temp_user_board_6 = 3'b000;
      temp_user_board_7 = 3'b000;
      temp_user_board_8 = 3'b000;
      temp_user_board_9 = 3'b000;
      temp_user_board_10 = 3'b000;
      temp_user_board_11 = 3'b000;
      temp_user_board_12 = 3'b000;
      temp_user_board_13 = 3'b000;
      temp_user_board_14 = 3'b000;
      temp_user_board_15 = 3'b000;

      temp_real_board_0 = 3'b000;
      temp_real_board_1 = 3'b000;
      temp_real_board_2 = 3'b000;
      temp_real_board_3 = 3'b000;
      temp_real_board_4 = 3'b000;
      temp_real_board_5 = 3'b000;
      temp_real_board_6 = 3'b000;
      temp_real_board_7 = 3'b000;
      temp_real_board_8 = 3'b000;
      temp_real_board_9 = 3'b000;
      temp_real_board_10 = 3'b000;
      temp_real_board_11 = 3'b000;
      temp_real_board_12 = 3'b000;
      temp_real_board_13 = 3'b000;
      temp_real_board_14 = 3'b000;
      temp_real_board_15 = 3'b000;

      temp_fill_flag = 16'b0000000000000000;
      temp_solved = 1'b0;
   end else if (set_board_flag == 1'b1) begin
      // rand_A = 0101, rand_B = 1010
      // A = 011 (4), B = 001 (2) 
      if (rand_setup[2] == 1'b0) begin
         // A = 1 or 4, B = 2 or 3
         if (rand_setup[1] == 1'b0) begin
            A = 3'b001;
            inv_A = 3'b100;
         end else begin
            A = 3'b100;
            inv_A = 3'b001;
         end
         if (rand_setup[0] == 1'b0) begin
            B = 3'b010;
            inv_B = 3'b011;
         end else begin
            B = 3'b011;
            inv_B = 3'b010;
         end
      end else begin
         // A = 2 or 3, B = 1 or 4
         if (rand_setup[1] == 1'b0) begin
            A = 3'b010;
            inv_A = 3'b011;
         end else begin
            A = 3'b011;
            inv_A = 3'b010;
         end
         if (rand_setup[0] == 1'b0) begin
            B = 3'b001;
            inv_B = 3'b100;
         end else begin
            B = 3'b100;
            inv_B = 3'b001;
         end
      end
      // open to other variation of A, inv_A, B, and inv_B
      if (rand_setup[3] == 1'b0) begin
         temp_real_board_0 = A;      
         temp_real_board_1 = inv_B;  
         temp_real_board_2 = B;      
         temp_real_board_3 = inv_A;  
         temp_real_board_4 = B;
         temp_real_board_5 = inv_A;
         temp_real_board_6 = A;
         temp_real_board_7 = inv_B;
         temp_real_board_8 = inv_B;
         temp_real_board_9 = A;
         temp_real_board_10 = inv_A;
         temp_real_board_11 = B;
         temp_real_board_12 = inv_A;
         temp_real_board_13 = B;
         temp_real_board_14 = inv_B;
         temp_real_board_15 = A;
      end else begin
         temp_real_board_0 = inv_A;      
         temp_real_board_1 = A;  
         temp_real_board_2 = inv_B;      
         temp_real_board_3 = B;  
         temp_real_board_4 = inv_B;
         temp_real_board_5 = B;
         temp_real_board_6 = inv_A;
         temp_real_board_7 = A;
         temp_real_board_8 = A;
         temp_real_board_9 = inv_A;
         temp_real_board_10 = B;
         temp_real_board_11 = inv_B;
         temp_real_board_12 = B;
         temp_real_board_13 = inv_B;
         temp_real_board_14 = A;
         temp_real_board_15 = inv_A;
      end

   end else if (set_diff_flag == 1'b1) begin 
      if (diff_cell_val == 2'b01) begin
         // update temp_user_board with 6 hints for EASY mode
         case(rand_A[1:0])
            2'b00: begin
                     temp_user_board_0 = temp_real_board_0;
                     temp_fill_flag[0] = 1'b1;
                  end 
            2'b01: begin 
                     temp_user_board_1 = temp_real_board_1;
                     temp_fill_flag[1] = 1'b1;
                  end
            2'b10: begin 
                     temp_user_board_2 = temp_real_board_2;
                     temp_fill_flag[2] = 1'b1; 
                  end
            2'b11: begin 
                     temp_user_board_3 = temp_real_board_3;
                     temp_fill_flag[3] = 1'b1;
                  end
         endcase
         case(rand_A[3:2])
            2'b00: begin
                     temp_user_board_4 = temp_real_board_4;
                     temp_user_board_7 = temp_real_board_7;
                     temp_fill_flag[4] = 1'b1;
                     temp_fill_flag[7] = 1'b1;
                  end
            2'b01: begin
                     temp_user_board_5 = temp_real_board_5;
                     temp_user_board_6 = temp_real_board_6;
                     temp_fill_flag[5] = 1'b1;
                     temp_fill_flag[6] = 1'b1;
                  end
            2'b10: begin
                     temp_user_board_4 = temp_real_board_4;
                     temp_user_board_6 = temp_real_board_6;
                     temp_fill_flag[4] = 1'b1;
                     temp_fill_flag[6] = 1'b1;
                  end
            2'b11: begin
                     temp_user_board_5 = temp_real_board_5;
                     temp_user_board_7 = temp_real_board_7;
                     temp_fill_flag[5] = 1'b1;
                     temp_fill_flag[7] = 1'b1;
                  end
         endcase
         case(rand_B[1:0])
            2'b00: begin
                     temp_user_board_8 = temp_real_board_8;
                     temp_user_board_11 = temp_real_board_11;
                     temp_fill_flag[8] = 1'b1;
                     temp_fill_flag[11] = 1'b1;
                  end
            2'b01: begin
                     temp_user_board_9 = temp_real_board_9;
                     temp_user_board_10 = temp_real_board_10;
                     temp_fill_flag[9] = 1'b1;
                     temp_fill_flag[10] = 1'b1;
                  end
            2'b10: begin
                     temp_user_board_8 = temp_real_board_8;
                     temp_user_board_10 = temp_real_board_10;
                     temp_fill_flag[8] = 1'b1;
                     temp_fill_flag[10] = 1'b1;
                  end
            2'b11: begin
                     temp_user_board_9 = temp_real_board_9;
                     temp_user_board_11 = temp_real_board_11;
                     temp_fill_flag[9] = 1'b1;
                     temp_fill_flag[11] = 1'b1;
                  end
         endcase
         case(rand_B[3:2])
            2'b00: begin 
                     temp_user_board_12 = temp_real_board_12;
                     temp_fill_flag[12] = 1'b1;
                  end
            2'b01: begin 
                     temp_user_board_13 = temp_real_board_13;
                     temp_fill_flag[13] = 1'b1;
                  end
            2'b10: begin 
                     temp_user_board_14 = temp_real_board_14;
                     temp_fill_flag[14] = 1'b1;
                  end
            2'b11: begin 
                     temp_user_board_15 = temp_real_board_15;
                     temp_fill_flag[15] = 1'b1;
                  end
         endcase
      end else if (diff_cell_val == 2'b10) begin
         // update temp_user_board with 5 hints for MEDIUM mode
         case(rand_A[1:0])
            2'b00: begin 
                     temp_user_board_0 = temp_real_board_0;
                     temp_fill_flag[0] = 1'b1;
                  end
            2'b01: begin 
                     temp_user_board_1 = temp_real_board_1;
                     temp_fill_flag[1] = 1'b1;
                  end
            2'b10: begin 
                     temp_user_board_2 = temp_real_board_2;
                     temp_fill_flag[2] = 1'b1;
                  end
            2'b11: begin 
                     temp_user_board_3 = temp_real_board_3;
                     temp_fill_flag[3] = 1'b1;
                  end
         endcase
         case(rand_A[3:2])
            2'b00: begin 
                     temp_user_board_4 = temp_real_board_4;
                     temp_fill_flag[4] = 1'b1;
                  end
            2'b01: begin 
                     temp_user_board_5 = temp_real_board_5;
                     temp_fill_flag[5] = 1'b1;
                  end
            2'b10: begin 
                     temp_user_board_6 = temp_real_board_6;
                     temp_fill_flag[6] = 1'b1;
                  end
            2'b11: begin 
                     temp_user_board_7 = temp_real_board_7;
                     temp_fill_flag[7] = 1'b1;
                  end
         endcase
         case(rand_B[1:0])
            2'b00: begin
                     temp_user_board_8 = temp_real_board_8;
                     temp_user_board_11 = temp_real_board_11;
                     temp_fill_flag[8] = 1'b1;
                     temp_fill_flag[11] = 1'b1;
                  end
            2'b01: begin
                     temp_user_board_9 = temp_real_board_9;
                     temp_user_board_10 = temp_real_board_10;
                     temp_fill_flag[9] = 1'b1;
                     temp_fill_flag[10] = 1'b1;
                  end
            2'b10: begin
                     temp_user_board_8 = temp_real_board_8;
                     temp_user_board_10 = temp_real_board_10;
                     temp_fill_flag[8] = 1'b1;
                     temp_fill_flag[10] = 1'b1;
                  end
            2'b11: begin
                     temp_user_board_9 = temp_real_board_9;
                     temp_user_board_11 = temp_real_board_11;
                     temp_fill_flag[9] = 1'b1;
                     temp_fill_flag[11] = 1'b1;
                  end
         endcase
         case(rand_B[3:2])
            2'b00: begin 
                     temp_user_board_12 = temp_real_board_12;
                     temp_fill_flag[12] = 1'b1;
                  end
            2'b01: begin 
                     temp_user_board_13 = temp_real_board_13;
                     temp_fill_flag[13] = 1'b1;
                  end
            2'b10: begin 
                     temp_user_board_14 = temp_real_board_14;
                     temp_fill_flag[14] = 1'b1;
                  end
            2'b11: begin 
                     temp_user_board_15 = temp_real_board_15;
                     temp_fill_flag[15] = 1'b1;
                  end
         endcase
      end else if (diff_cell_val == 2'b11) begin
         // update temp_user_board with 4 hints for HARD mode
         case(rand_A[1:0])
            2'b00: begin 
                     temp_user_board_0 = temp_real_board_0;
                     temp_fill_flag[0] = 1'b1;
                  end
            2'b01: begin 
                     temp_user_board_1 = temp_real_board_1;
                     temp_fill_flag[1] = 1'b1;
                  end
            2'b10: begin 
                     temp_user_board_2 = temp_real_board_2;
                     temp_fill_flag[2] = 1'b1;
                  end
            2'b11: begin 
                     temp_user_board_3 = temp_real_board_3;
                     temp_fill_flag[3] = 1'b1;
                  end
         endcase
         case(rand_A[3:2])
            2'b00: begin 
                     temp_user_board_4 = temp_real_board_4;
                     temp_fill_flag[4] = 1'b1;
                  end
            2'b01: begin 
                     temp_user_board_5 = temp_real_board_5;
                     temp_fill_flag[5] = 1'b1;
                  end
            2'b10: begin 
                     temp_user_board_6 = temp_real_board_6;
                     temp_fill_flag[6] = 1'b1;
                  end
            2'b11: begin 
                     temp_user_board_7 = temp_real_board_7;
                     temp_fill_flag[7] = 1'b1;
                  end
         endcase
         case(rand_B[1:0])
            2'b00: begin 
                     temp_user_board_8 = temp_real_board_8;
                     temp_fill_flag[8] = 1'b1;
                  end
            2'b01: begin 
                     temp_user_board_9 = temp_real_board_9;
                     temp_fill_flag[9] = 1'b1;
                  end
            2'b10: begin 
                     temp_user_board_10 = temp_real_board_10;
                     temp_fill_flag[10] = 1'b1;
                  end
            2'b11: begin 
                     temp_user_board_11 = temp_real_board_11;
                     temp_fill_flag[11] = 1'b1;
                  end
         endcase
         case(rand_B[3:2])
            2'b00: begin 
                     temp_user_board_12 = temp_real_board_12;
                     temp_fill_flag[12] = 1'b1;
                  end
            2'b01: begin 
                     temp_user_board_13 = temp_real_board_13;
                     temp_fill_flag[13] = 1'b1;
                  end
            2'b10: begin 
                     temp_user_board_14 = temp_real_board_14;
                     temp_fill_flag[14] = 1'b1;
                  end
            2'b11: begin 
                     temp_user_board_15 = temp_real_board_15;
                     temp_fill_flag[15] = 1'b1;
                  end
         endcase
      end
   end else if (row_flag == 1'b1) begin
      current_row = diff_cell_val;
   end else if (col_flag == 1'b1) begin
      case ({current_row, diff_cell_val})
         4'b0000: current_cell = 4'b0000;
         4'b0001: current_cell = 4'b0001;
         4'b0010: current_cell = 4'b0010;
         4'b0011: current_cell = 4'b0011;
         4'b0100: current_cell = 4'b0100;
         4'b0101: current_cell = 4'b0101;
         4'b0110: current_cell = 4'b0110;
         4'b0111: current_cell = 4'b0111;
         4'b1000: current_cell = 4'b1000;
         4'b1001: current_cell = 4'b1001;
         4'b1010: current_cell = 4'b1010;
         4'b1011: current_cell = 4'b1011;
         4'b1100: current_cell = 4'b1100;
         4'b1101: current_cell = 4'b1101;
         4'b1110: current_cell = 4'b1110;
         4'b1111: current_cell = 4'b1111;
      endcase
   end else if (val_flag == 1'b1) begin
      if (temp_fill_flag[current_cell] == 1'b0) begin
         case (current_cell)
            4'd0: temp_user_board_0 = diff_cell_val + 1;
            4'd1: temp_user_board_1 = diff_cell_val + 1;
            4'd2: temp_user_board_2 = diff_cell_val + 1;
            4'd3: temp_user_board_3 = diff_cell_val + 1;
            4'd4: temp_user_board_4 = diff_cell_val + 1;
            4'd5: temp_user_board_5 = diff_cell_val + 1;
            4'd6: temp_user_board_6 = diff_cell_val + 1;
            4'd7: temp_user_board_7 = diff_cell_val + 1;
            4'd8: temp_user_board_8 = diff_cell_val + 1;
            4'd9: temp_user_board_9 = diff_cell_val + 1;
            4'd10: temp_user_board_10 = diff_cell_val + 1;
            4'd11: temp_user_board_11 = diff_cell_val + 1;
            4'd12: temp_user_board_12 = diff_cell_val + 1;
            4'd13: temp_user_board_13 = diff_cell_val + 1;
            4'd14: temp_user_board_14 = diff_cell_val + 1;
            4'd15: temp_user_board_15 = diff_cell_val + 1;
         endcase
      end
   end else if (check_flag == 1'b1) begin
      if ((temp_user_board_0 == temp_real_board_0) & (temp_user_board_1 == temp_real_board_1) 
      & (temp_user_board_2 == temp_real_board_2) & (temp_user_board_3 == temp_real_board_3) 
      & (temp_user_board_4 == temp_real_board_4) & (temp_user_board_5 == temp_real_board_5) 
      & (temp_user_board_6 == temp_real_board_6) & (temp_user_board_7 == temp_real_board_7) 
      & (temp_user_board_8 == temp_real_board_8) & (temp_user_board_9 == temp_real_board_9) 
      & (temp_user_board_10 == temp_real_board_10) & (temp_user_board_11 == temp_real_board_11) 
      & (temp_user_board_12 == temp_real_board_12) & (temp_user_board_13 == temp_real_board_13) 
      & (temp_user_board_14 == temp_real_board_14) & (temp_user_board_15 == temp_real_board_15)) begin
         temp_solved = 1'b1;
      end else begin
         temp_solved = 1'b0;
      end
   end 
end

always @ (negedge clkb)
begin
   if (restart == 1'b1 || new_game == 1'b1) begin
      real_board_0 = 3'b000;
      real_board_1 = 3'b000;
      real_board_2 = 3'b000;
      real_board_3 = 3'b000;
      real_board_4 = 3'b000;
      real_board_5 = 3'b000;
      real_board_6 = 3'b000;
      real_board_7 = 3'b000;
      real_board_8 = 3'b000;
      real_board_9 = 3'b000;
      real_board_10 = 3'b000;
      real_board_11 = 3'b000;
      real_board_12 = 3'b000;
      real_board_13 = 3'b000;
      real_board_14 = 3'b000;
      real_board_15 = 3'b000;

      user_board_0 = 3'b000;
      user_board_1 = 3'b000;
      user_board_2 = 3'b000;
      user_board_3 = 3'b000;
      user_board_4 = 3'b000;
      user_board_5 = 3'b000;
      user_board_6 = 3'b000;
      user_board_7 = 3'b000;
      user_board_8 = 3'b000;
      user_board_9 = 3'b000;
      user_board_10 = 3'b000;
      user_board_11 = 3'b000;
      user_board_12 = 3'b000;
      user_board_13 = 3'b000;
      user_board_14 = 3'b000;
      user_board_15 = 3'b000;
      
      fill_flag = 16'b000000000000000;
      solved = 1'b0;
   end else begin
      real_board_0 = temp_real_board_0;
      real_board_1 = temp_real_board_1;
      real_board_2 = temp_real_board_2;
      real_board_3 = temp_real_board_3;
      real_board_4 = temp_real_board_4;
      real_board_5 = temp_real_board_5;
      real_board_6 = temp_real_board_6;
      real_board_7 = temp_real_board_7;
      real_board_8 = temp_real_board_8;
      real_board_9 = temp_real_board_9;
      real_board_10 = temp_real_board_10;
      real_board_11 = temp_real_board_11;
      real_board_12 = temp_real_board_12;
      real_board_13 = temp_real_board_13;
      real_board_14 = temp_real_board_14;
      real_board_15 = temp_real_board_15;

      user_board_0 = temp_user_board_0;
      user_board_1 = temp_user_board_1;
      user_board_2 = temp_user_board_2;
      user_board_3 = temp_user_board_3;
      user_board_4 = temp_user_board_4;
      user_board_5 = temp_user_board_5;
      user_board_6 = temp_user_board_6;
      user_board_7 = temp_user_board_7;
      user_board_8 = temp_user_board_8;
      user_board_9 = temp_user_board_9;
      user_board_10 = temp_user_board_10;
      user_board_11 = temp_user_board_11;
      user_board_12 = temp_user_board_12;
      user_board_13 = temp_user_board_13;
      user_board_14 = temp_user_board_14;
      user_board_15 = temp_user_board_15;

      fill_flag = temp_fill_flag;
      solved = temp_solved;
   end
end

endmodule //End Of Module dp  datapath