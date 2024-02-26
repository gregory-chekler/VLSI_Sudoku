//-----------------------------------------------------
// Design Name : main_FSM
// File Name   : main_FSM.v
// Function    : 2 Phase Clock main_FSM
// 		 Controller processes load input and issues
// 		 start signal to data path dp.
// 		 Waits then for done signal from the datapath.
//-----------------------------------------------------
module main_FSM (clka, clkb, restart, load, state, start, done);
//-------------Input Ports-----------------------------
input   clka, clkb, restart, load, done;
//-------------Output Ports----------------------------
output  start, state[1:0];
//-------------Input ports Data Type-------------------
wire    clka, clkb, restart, load, done;
//-------------Output Ports Data Type------------------
reg     start;
//——————Internal Constants--------------------------
parameter SIZE = 2;
parameter IDLE  = 2'b00, START_LOAD = 2'b01, WAIT = 2'b10;
//-------------Internal Variables---------------------------
reg   [SIZE-1:0]          state;    	// Initial FSM state reg and then after
					// processing new output FSM state reg
wire  [SIZE-1:0]          temp_state; 	// Internal wire for output of function
					// for setting next state
reg   [SIZE-1:0]          next_state; 	// Temporary reg to hold next state to
					// update state on output
//----------Code startes Here------------------------
assign temp_state = fsm_function(state, load, done);
//----------Function for Combinational Logic to read inputs -----------
function [SIZE-1:0] fsm_function;
  input  [SIZE-1:0] state ;
  input load;
  input done;

case(state)
   IDLE: begin
             if (load == 1) begin
               fsm_function = START_LOAD;
             end else begin
               fsm_function = IDLE;
             end
         end 
   START_LOAD: begin
             fsm_function = WAIT;
         end
   WAIT: begin
             if (done == 1) begin
               fsm_function = IDLE;
             end else begin
               fsm_function = WAIT;
             end
         end
   default: fsm_function = IDLE;
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
  IDLE: begin
          state <= next_state;
          start <= 1'b0;
        end
  START_LOAD: begin
          state <= next_state;
          start <= 1'b1;
        end
  WAIT: begin
          state <= next_state;
          start <= 1'b0;
          end
 default: begin
          state <= next_state;
          start <= 1'b0;
         end
  endcase
end // End Of Block OUTPUT_LOGIC

endmodule // End of Module main_FSM
                                    
