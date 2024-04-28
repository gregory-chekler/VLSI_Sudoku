module lfsr_rng(clka, clkb, restart, new_game, gen_rand_flag, rand_setup, rand_A, rand_B);
//-----------Input Ports---------------
input clka, clkb, restart, new_game, gen_rand_flag;

//-----------Output Ports---------------
output [3:0] rand_setup;
output [3:0] rand_A;
output [3:0] rand_B;

//------------Internal Variables--------
reg [23:0] start_state;
reg [23:0] lfsr;
reg [23:0] period;
reg bit;
reg [3:0] temp_rand_setup;
reg [3:0] temp_rand_A;
reg [3:0] temp_rand_B;

//-----------Output Registers---------------
reg [3:0] rand_setup;
reg [3:0] rand_A;
reg [3:0] rand_B;

always @(negedge clka) begin
    if (restart == 1'b1) begin 
        // 1st restart only
        start_state = 24'h0ACE1E;
        lfsr = start_state;
        bit = 1'b0;
        // period = 0;
        temp_rand_setup = 4'b0000;
        temp_rand_A = 4'b0000;
        temp_rand_B = 4'b0000;
    end else if (new_game == 1'b1 && restart == 1'b0) begin
        temp_rand_setup = 4'b0000;
        temp_rand_A = 4'b0000;
        temp_rand_B = 4'b0000;
    end else if (gen_rand_flag == 1'b1) begin
        // LFSR update logic
        lfsr = {lfsr[22:0], bit};
        // period = period + 1;

        // Feedback polynomial: x^24 + x^23 + x^22 + x^17 + 1
        bit = lfsr[0] ^ lfsr[1] ^ lfsr[2] ^ lfsr[7];

        temp_rand_setup = lfsr[3:0];
        temp_rand_A = lfsr[7:4];
        temp_rand_B = lfsr[11:8];
     end
end

always @(negedge clkb) begin
    if (restart) begin
        rand_setup = 4'b0000;
        rand_A = 4'b0000;
        rand_B = 4'b0000;
    end else begin
        rand_setup = temp_rand_setup;
        rand_A = temp_rand_A;
        rand_B = temp_rand_B;
    end
end
endmodule