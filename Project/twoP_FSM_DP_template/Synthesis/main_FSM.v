//-----------------------------------------------------
// Design Name : main_FSM
// File Name   : main_FSM.v
// Function    : 2 Phase Clock main_FSM
// 		 Controller processes load input and issues
// 		 start signal to data path dp.
// 		 Waits then for done signal from the datapath.
//-----------------------------------------------------
module main_FSM (clka, clkb, restart, enter, check, solved, gen_rand_flag, set_board_flag, set_diff_flag, play_flag, check_flag, win_flag, try_again_flag, state);
//-------------Input Ports-----------------------------
input clka, clkb, restart, enter, check, solved;
//-------------Output Ports----------------------------
// output to data path
output gen_rand_flag, set_board_flag, set_diff_flag, play_flag, check_flag, win_flag, try_again_flag;
// output to user 
output state[2:0];
//-------------Input ports Data Type-------------------
wire    clka, clkb, restart, enter, check, solved;
//-------------Output Ports Data Type------------------
reg     gen_rand_flag, set_board_flag, set_diff_flag, play_flag, check_flag, win_flag, try_again_flag;

//——————Internal Constants--------------------------
parameter SIZE = 3;
parameter IDLE = 3'b000, SET_BOARD = 3'b001, SET_DIFF = 3'b010;
parameter PLAY = 3'b011, CHECKING = 3'b100, WIN = 3'b101, TRY_AGAIN = 3'b110;

//-------------Internal Variables---------------------------
reg   [SIZE-1:0]          state;    	// Initial FSM state reg and then after
					// processing new output FSM state reg
wire  [SIZE-1:0]          temp_state; 	// Internal wire for output of function
					// for setting next state
reg   [SIZE-1:0]          next_state; 	// Temporary reg to hold next state to
					// update state on output
//----------Code startes Here------------------------
assign temp_state = fsm_function(state, enter, check, solved);
//----------Function for Combinational Logic to read inputs -----------
function [SIZE-1:0] fsm_function;
  input  [SIZE-1:0] state;
  input enter;
  input check;
  input solved;

  case(state)
    IDLE: begin
            if (enter == 1'b1) begin
              fsm_function = SET_BOARD;
            end else begin
              fsm_function = IDLE;
            end
          end 
    SET_BOARD: begin
            if (enter == 1'b1) begin
              fsm_function = SET_DIFF;
            end else begin
              fsm_function = SET_BOARD;
            end
          end
    SET_DIFF: begin
            if (enter == 1'b1) begin
              fsm_function = PLAY;
            end else begin
              fsm_function = SET_DIFF;
            end
        end
    PLAY: begin
            if (check == 1'b1) begin
              fsm_function = CHECKING;
            end else begin
              fsm_function = PLAY;
            end
            // if (enter == 1'b1) begin
            //   fsm_function = GUESS;
            // end else if (check == 1'b1) begin
            //   fsm_function = CHECKING;
            // end else begin
            //   fsm_function = PLAY;
            // end
        end 
    CHECKING: begin
            if (solved == 1'b1) begin
              fsm_function = WIN;
            end
            else begin
              fsm_function = TRY_AGAIN;
            end
        end
    WIN: begin
            if (enter == 1'b1) begin
              fsm_function = IDLE;
            end
            else begin
              fsm_function = WIN;
            end
        end
    TRY_AGAIN: begin
            if (enter == 1'b1) begin
            fsm_function = PLAY;
            end
            else begin
              fsm_function = TRY_AGAIN;
            end
        end
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
          gen_rand_flag <= 1'b1;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          play_flag <= 1'b0;
          check_flag <= 1'b0;
          win_flag <= 1'b0;
          try_again_flag <= 1'b0; 
        end
  SET_BOARD: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b1;
          set_diff_flag <= 1'b0;
          play_flag <= 1'b0;
          check_flag <= 1'b0;
          win_flag <= 1'b0;
          try_again_flag <= 1'b0; 
        end
  SET_DIFF: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b1;
          play_flag <= 1'b0;
          check_flag <= 1'b0;
          win_flag <= 1'b0;
          try_again_flag <= 1'b0; 
          end
  PLAY: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          play_flag <= 1'b1;
          check_flag <= 1'b0;
          win_flag <= 1'b0;
          try_again_flag <= 1'b0; 
        end
  CHECKING: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          play_flag <= 1'b0;
          check_flag <= 1'b1;
          win_flag <= 1'b0;
          try_again_flag <= 1'b0; 
          end
  WIN: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          play_flag <= 1'b0;
          check_flag <= 1'b0;
          win_flag <= 1'b1;
          try_again_flag <= 1'b0; 
        end   
  TRY_AGAIN: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          play_flag <= 1'b0;
          check_flag <= 1'b0;
          win_flag <= 1'b0;
          try_again_flag <= 1'b1; 
        end
 default: begin
          state <= next_state;
          gen_rand_flag <= 1'b1;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          play_flag <= 1'b0;
          check_flag <= 1'b0;
          win_flag <= 1'b0;
          try_again_flag <= 1'b0; 
         end
  endcase
end // End Of Block OUTPUT_LOGIC
endmodule // End of Module main_FSM