//-----------------------------------------------------
// Design Name : main_FSM
// File Name   : main_FSM.v
// Function    : 2 Phase Clock main_FSM
// 		 Controller processes load input and issues
// 		 start signal to data path dp.
// 		 Waits then for done signal from the datapath.
//-----------------------------------------------------
module main_FSM (clka, clkb, restart, enter, state, dp_check, solved, won);
//-------------Input Ports-----------------------------
input   clka, clkb, restart, enter, solved, difficulty, rand_idx[7:0];
//-------------Output Ports----------------------------
output  won, state[2:0];
//-------------Input ports Data Type-------------------
wire    clka, clkb, restart, load, done;
//-------------Output Ports Data Type------------------
reg     ridx_a, ridx_b, dp_check, fiil_flag[7:0];
//——————Internal Constants--------------------------
parameter SIZE = 4;
parameter easy_mode = 2'b00, medium_mode = 2'b01, hard_mode_a = 2'b10; hard_mode_b = 2'b11;
parameter REG_INP  = 4'b0000, GUESS = 4'b0001, CHECK = 4'b0010, WRONG = 4'b0011, FIN = 4'b0100;
parameter SET_DIFF = 4'b0101, EASY = 4'b0110, MEDIUM = 4'b0111, HARD = 4'b1000, FILL_BOARD = 4'b1001; 
//-------------Internal Variables---------------------------
reg   [SIZE-1:0]          state;    	// Initial FSM state reg and then after
					// processing new output FSM state reg
wire  [SIZE-1:0]          temp_state; 	// Internal wire for output of function
					// for setting next state
reg   [SIZE-1:0]          next_state; 	// Temporary reg to hold next state to
					// update state on output
//----------Code startes Here------------------------
assign temp_state = fsm_function(state, enter, solved);
//----------Function for Combinational Logic to read inputs -----------
function [SIZE-1:0] fsm_function;
  input  [SIZE-1:0] state ;
  input enter;
  input solved;

case(state)
   REG_INP: begin
    if (enter) begin
      fsm_function = GUESS;
    end
    else begin
      fsm_function = REG_INP;
    end
         end 
   GUESS: begin
             if (enter) begin
              fsm_function = CHECK;
              end
              else begin
                fsm_function = GUESS;
              end
         end
   CHECK: begin
              if (solved) begin
              fsm_function = FIN;
              end
              else begin
                fsm_function = WRONG;
              end
         end
  WRONG: begin
              if (enter) begin
              fsm_function = REG_INP;
              end
              else begin
                fsm_function = WRONG;
              end
         end
  FIN: begin
          fsm_function = FIN;
         end
   default: fsm_function = REG_INP;
  endcase
endfunction
//----------Seq Logic-----------------------------
always @ (negedge clka)
begin : FSM_SEQ
  if (restart == 1'b1) begin
    next_state <= IDLE;
  end else begin
    next_state <= temp_state;
  end
end
//----------Output Logic——————————————
always @ (negedge clkb)
begin : OUTPUT_LOGIC
  case(next_state)
  REG_INP: begin
          state <= next_state;
          dp_check <= 1'b0;
        end
  GUESS: begin
          state <= next_state;
          dp_check <= 1'b0;
        end
  CHECK: begin
          state <= next_state;
          dp_check <= 1'b1;
          end
  WRONG: begin
          state <= next_state;
          dp_check <= 1'b0;
          end
  FIN: begin
          state <= next_state;
          dp_check <= 1'b0;
          end
 default: begin
          state <= next_state;
          start <= 1'b0;
         end
  endcase
end // End Of Block OUTPUT_LOGIC

endmodule // End of Module main_FSM