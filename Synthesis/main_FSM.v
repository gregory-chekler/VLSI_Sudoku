//-----------------------------------------------------
// Design Name : main_FSM
// File Name   : main_FSM.v
// Function    : 2 Phase clock main_FSM for user to 
//               play 4x4 Sudoku game and interacts 
//               with the datapath.
//-----------------------------------------------------
module main_FSM (clka, clkb, restart, new_game, enter, solved, state, gen_rand_flag, set_board_flag, set_diff_flag, row_flag, col_flag, val_flag, check_flag);
//-------------Input Ports-----------------------------
input clka, clkb, restart, enter, new_game, solved;
//-------------Output Ports----------------------------
// output to data path
output gen_rand_flag, set_board_flag, set_diff_flag, row_flag, col_flag, val_flag, check_flag;
// output to user
output state[3:0];
//-------------Input ports Data Type-------------------
wire clka, clkb, restart, new_game, enter, solved;
//-------------Output Ports Data Type------------------
reg gen_rand_flag, set_board_flag, set_diff_flag, row_flag, col_flag, val_flag, check_flag;

//——————Internal Constants--------------------------
parameter SIZE = 4;
parameter IDLE = 4'b0000,  GEN_RAND = 4'b0001, SET_BOARD = 4'b0010,  SET_DIFF = 4'b0011, CHOOSE_ROW = 4'b0100, CHOOSE_COL = 4'b0101;
parameter CHOOSE_VAL = 4'b0110, CHECKING = 4'b0111, WAIT = 4'b1000, WIN = 4'b1001, NEW_GAME = 4'b1010;

//-------------Internal Variables---------------------------
reg   [SIZE-1:0]          state;    	  // Initial FSM state reg and then after
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
            // if (enter == 1'b1) begin
            //   fsm_function = SET_BOARD;
            // end else begin
            //   fsm_function = IDLE;
            // end
            fsm_function = GEN_RAND;
          end
    GEN_RAND: begin
            if (enter == 1'b1) begin
              fsm_function = SET_BOARD;
            end else begin
              fsm_function = GEN_RAND;
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
              fsm_function = CHOOSE_ROW;
            end else begin
              fsm_function = SET_DIFF;
            end
        end
    CHOOSE_ROW: begin
            if (enter == 1'b1) begin
              fsm_function = CHOOSE_COL;
            end else begin
              fsm_function = CHOOSE_ROW;
            end
        end 
    CHOOSE_COL: begin
            if (enter == 1'b1) begin
              fsm_function = CHOOSE_VAL;
            end else begin
              fsm_function = CHOOSE_COL;
            end
        end
    CHOOSE_VAL: begin
        if (enter == 1'b1) begin
          fsm_function = CHECKING;
        end else begin
          fsm_function = CHOOSE_VAL;
        end
        end
    CHECKING: begin
        fsm_function = WAIT;
            // if (solved == 1'b1) begin
            //   fsm_function = WIN;
            // end
            // else begin
            //   fsm_function = WRONG;
            // end
    end
    WAIT: begin
            if (solved == 1'b1) begin
              fsm_function = WIN;
            end
            else begin
              fsm_function = CHOOSE_ROW;
            end
        end
    WIN: begin
              fsm_function = WIN;
        end
    NEW_GAME: begin
          // if (enter == 1'b1) begin
          //   fsm_function = SET_BOARD;
          // end else begin
          //   fsm_function = NEW_GAME;
          // end
          fsm_function = GEN_RAND;
        end
  endcase
endfunction
//----------Seq Logic-----------------------------
always @ (negedge clka)
begin : FSM_SEQ
  if (restart == 1'b1) begin
    next_state <= IDLE;
  end else if (new_game == 1'b1) begin
    next_state <= NEW_GAME;
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
          // gen_rand_flag <= 1'b1;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          row_flag <= 1'b0;
          col_flag <= 1'b0;
          val_flag <= 1'b0;
          check_flag <= 1'b0;
        end
  GEN_RAND: begin
        state <= next_state;
        gen_rand_flag <= 1'b1;
        set_board_flag <= 1'b0;
        set_diff_flag <= 1'b0;
        row_flag <= 1'b0;
        col_flag <= 1'b0;
        val_flag <= 1'b0;
        check_flag <= 1'b0;
      end
  SET_BOARD: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b1;
          set_diff_flag <= 1'b0;
          row_flag <= 1'b0;
          col_flag <= 1'b0;
          val_flag <= 1'b0;
          check_flag <= 1'b0;
        end
  SET_DIFF: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b1;
          row_flag <= 1'b0;
          col_flag <= 1'b0;
          val_flag <= 1'b0;
          check_flag <= 1'b0;
          end
  CHOOSE_ROW: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          row_flag <= 1'b1;
          col_flag <= 1'b0;
          val_flag <= 1'b0;
          check_flag <= 1'b0;
        end
  CHOOSE_COL: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          row_flag <= 1'b0;
          col_flag <= 1'b1;
          val_flag <= 1'b0;
          check_flag <= 1'b0;
        end
  CHOOSE_VAL: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          row_flag <= 1'b0;
          col_flag <= 1'b0;
          val_flag <= 1'b1;
          check_flag <= 1'b1;
        end
  CHECKING: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          row_flag <= 1'b0;
          col_flag <= 1'b0;
          val_flag <= 1'b0;
          check_flag <= 1'b1;
        end        
  WAIT: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          row_flag <= 1'b0;
          col_flag <= 1'b0;
          val_flag <= 1'b0;
          check_flag <= 1'b0;
        end   
  WIN: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          row_flag <= 1'b0;
          col_flag <= 1'b0;
          val_flag <= 1'b0;
          check_flag <= 1'b0;
        end
  NEW_GAME: begin
          state <= next_state;
          // gen_rand_flag <= 1'b1;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          row_flag <= 1'b0;
          col_flag <= 1'b0;
          val_flag <= 1'b0;
          check_flag <= 1'b0;
        end
 default: begin
          state <= next_state;
          gen_rand_flag <= 1'b0;
          set_board_flag <= 1'b0;
          set_diff_flag <= 1'b0;
          row_flag <= 1'b0;
          col_flag <= 1'b0;
          val_flag <= 1'b0;
          check_flag <= 1'b0;
         end
  endcase
end // End Of Block OUTPUT_LOGIC
endmodule // End of Module main_FSM