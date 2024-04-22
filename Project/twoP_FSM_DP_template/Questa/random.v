// module lfsr_rng(
//     input clka,
//     input clkb,
//     input gen_rand_flag,
//     input restart,
//     output reg [23:0] lfsr_out,
//     output reg [3:0] rand_A,
//     output reg [3:0] rand_B,
//     output reg [2:0] rand_setup
// )
module lfsr_rng(clka, clkb, restart, gen_rand_flag, rand_setup, rand_A, rand_B);
//-----------Input Ports---------------
input clka, clkb, restart, gen_rand_flag;

//-----------Output Ports---------------
// output [23:0] lfsr_out;
output [3:0] rand_setup;
output [3:0] rand_A;
output [3:0] rand_B;

//------------Internal Variables--------
reg [23:0] start_state;
reg [23:0] lfsr;
reg [23:0] period;
reg [0:0] bit;

reg [23:0] lfsr_out;
//-----------Output Registers---------------
// reg [23:0] lfsr_out,
reg [3:0] rand_setup;
reg [3:0] rand_A;
reg [3:0] rand_B;

initial begin
    start_state = 24'hACE1E;
    lfsr = start_state;
    bit = 1'b0;
    period = 0;
end

always @(negedge clka) begin
    if (gen_rand_flag == 1) begin
        // LFSR update logic
        lfsr = {lfsr[22:0], bit};
        period = period + 1;
        
        // Feedback polynomial: x^24 + x^23 + x^22 + x^17 + 1
        bit = lfsr[0] ^ lfsr[1] ^ lfsr[2] ^ lfsr[7];
     end
end

always @(negedge clkb) begin
    if (restart) begin
        lfsr_out = 24'b000000000000000000000000;
        rand_setup = 3'b000;
        rand_A = 4'b0000;
        rand_B = 4'b0000;
    end else begin
        lfsr_out = lfsr;
        rand_setup = lfsr_out[3:0];
        rand_A = lfsr_out[7:4];
        rand_B = lfsr_out[11:8];
    end
end
endmodule