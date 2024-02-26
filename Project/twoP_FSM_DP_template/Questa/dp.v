//-----------------------------------------------------
// Design Name : dp
// File Name   : dp.v
// Function    : Data path with 4-bit adder and done signal
//-----------------------------------------------------
//
//
module dp (clka, clkb, restart, start, d1_in, d2_in, d_out, done);
//-----------Input Ports---------------
input clka, clkb, restart, start;
input [3:0] d1_in;
input [3:0] d2_in; 
//-----------Output Ports---------------
output [3:0] d_out;
output done;
//------------Internal Variables--------
reg  [3:0] temp_1;
reg  [3:0] temp_2;
reg  [3:0] temp_result;
reg  [3:0] d_out;
reg  done;

//-------------Code Starts Here---------
// Qualify the control signal by clka and clkb for the d1 and d2 and d_out registers

always @ (negedge clka)
begin
if (restart == 1'b1) begin
   temp_1 = 4'b0000;
   temp_2 = 4'b0000;
   temp_result = 4'b0000;
   end else if (start == 1'b1) begin
   temp_1 = d1_in;
   temp_2 = d2_in;
   temp_result = temp_1 + temp_2;
   end
end

always @ (negedge clkb)
begin
if (restart == 1'b1) begin
   d_out  = 4'b0000;
   done   = 1'b0;
   end else if (start == 1'b1) begin
   d_out = temp_result;
   done  = 1'b1;
   end else begin
   done  = 1'b0;
   end
end

endmodule //End Of Module dp  datapath
