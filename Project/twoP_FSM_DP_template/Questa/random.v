module lfsr_rng(
    input clk,
    output reg [7:0] lfsr_out,
    output reg [7:0] period
);

reg [7:0] start_state;
reg [7:0] lfsr;
reg [0:0] bit;

initial begin
    start_state = 8'hAC; // Any nonzero start state will work.
    lfsr = start_state;
    bit = 1'b0;
    period = 0;
end

always @(posedge clk) begin
    // LFSR update logic
    lfsr <= {lfsr[6:0], bit};
    period <= period + 1;
       
    // Feedback polynomial: x^8 + x^6 + x^5 + x^4 + 1
    bit <= lfsr[0] ^ lfsr[2] ^ lfsr[3] ^ lfsr[5];
    assign lfsr_out = lfsr;
end



endmodule

