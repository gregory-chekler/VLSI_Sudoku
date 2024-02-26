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
input   clka, clkb, restart, enter, solved;
//-------------Output Ports----------------------------
output  won, state[2:0];
//-------------Input ports Data Type-------------------
wire    clka, clkb, restart, load, done;
//-------------Output Ports Data Type------------------
reg     dp_check;
//——————Internal Constants--------------------------
parameter SIZE = 3;
parameter REG_INP  = 3'000, GUESS = 3'b001, CHECK = 3'b010, WRONG = 3'b011, FIN = 3'b100;
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
                                    
