//-----------------------------------------------------
// Design Name : main_FSM
// File Name   : main_FSM.v
// Function    : 2 Phase Clock main_FSM
// 		 Controller processes load input and issues
// 		 start signal to data path dp.
// 		 Waits then for done signal from the datapath.
//-----------------------------------------------------
module main_FSM (clka, clkb, restart, enter, solved, state, gen_rand_flag, set_board_flag, set_diff_flag, cell_flag, val_flag, check_flag);
//-------------Input Ports-----------------------------
input clka, clkb, restart, enter, solved;
//-------------Output Ports----------------------------
// output to data path
output gen_rand_flag, set_board_flag, set_diff_flag, cell_flag, val_flag, check_flag;
// output to user
output state[2:0];
//-------------Input ports Data Type-------------------
wire clka, clkb, restart, enter, solved;
//-------------Output Ports Data Type------------------
reg gen_rand_flag, set_board_flag, set_diff_flag, cell_flag, val_flag, check_flag;

//——————Internal Constants--------------------------
parameter SIZE = 3;
parameter IDLE = 3'b000, SET_BOARD = 3'b001, SET_DIFF = 3'b010;
parameter CHOOSE_CELL = 3'b011, CHOOSE_VAL = 3'b100, CHECKING = 3'b101, WRONG = 3'b110, WIN = 3'b111;

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
  input  [SIZE-1:0] state;
  input enter;
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
              fsm_function = CHOOSE_CELL;
            end else begin
              fsm_function = SET_DIFF;
            end
        end
    CHOOSE_CELL: begin
            if (enter == 1'b1) begin
              fsm_function = CHOOSE_VAL;
            end else begin
              fsm_function = CHOOSE_CELL;
            end
        end 
    CHOOSE_VAL: begin
            if (enter == 1'b1) begin
              fsm_function = CHECKING;
            end else begin
              fsm_function = CHOOSE_CELL;
            end
        end
    CHECKING: begin
            if (solved == 1'b1) begin
              fsm_function = WIN;
            end
            else begin
              fsm_function = CHOOSE_CELL;
            end
    end
    WRONG: begin
            if (enter == 1'b1) begin
              fsm_function = IDLE;
            end
            else begin
              fsm_function = WIN;
            end
        end
    WIN: begin
              fsm_function = WIN;
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
          cell_flag <= 1'b0;
          val_flag <= 1'b0;
          check_flag <= 1'b0;
        end
  SET_BOARD: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b1;
          set_diff_flag <= 1'b0;
          cell_flag <= 1'b0;
          val_flag <= 1'b0;
          check_flag <= 1'b0;
        end
  SET_DIFF: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b1;
          cell_flag <= 1'b0;
          val_flag <= 1'b0;
          check_flag <= 1'b0;
          end
  CHOOSE_CELL: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          cell_flag <= 1'b1;
          val_flag <= 1'b0;
          check_flag <= 1'b0;
        end
  CHOOSE_VAL: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          cell_flag <= 1'b0;
          val_flag <= 1'b1;
          check_flag <= 1'b0;
        end
  CHECKING: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          cell_flag <= 1'b0;
          val_flag <= 1'b0;
          check_flag <= 1'b1;
        end        
  // WAIT: begin
  //         state <= next_state;
  //         gen_rand_flag <= 1'b0;
  //         set_board_flag <= 1'b0;
  //         set_diff_flag <= 1'b0;
  //         cell_flag <= 1'b0;
  //         val_flag <= 1'b0;
  //         check_flag <= 1'b0;
  //       end
  WRONG: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          cell_flag <= 1'b0;
          val_flag <= 1'b0;
          check_flag <= 1'b0;
        end   
  WIN: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          cell_flag <= 1'b0;
          val_flag <= 1'b0;
          check_flag <= 1'b0;
        end
 default: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          cell_flag <= 1'b0;
          val_flag <= 1'b0;
          check_flag <= 1'b0;
         end
  endcase
end // End Of Block OUTPUT_LOGIC
endmodule // End of Module main_FSM