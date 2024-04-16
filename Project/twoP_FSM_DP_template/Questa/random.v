module lfsr_rng(
    input in_clka,
    input in_clkb,
    input gen_rand_flag,
    output reg [23:0] lfsr_out,
    output reg [3:0] rand_A,
    output reg [3:0] rand_B,
    output reg [2:0] rand_setup
);

reg [23:0] start_state;
reg [23:0] lfsr;
reg [0:0] bit;
reg [23:0] period;

initial begin
    start_state = 24'hACE1E;
    lfsr = start_state;
    bit = 1'b0;
    period = 0;
end


always @(negedge in_clka) begin
    if (gen_rand_flag == 1) begin
        // LFSR update logic
        lfsr <= {lfsr[22:0], bit};
        period <= period + 1;
        
        // Feedback polynomial: x^24 + x^23 + x^22 + x^17 + 1
        bit <= lfsr[0] ^ lfsr[1] ^ lfsr[2] ^ lfsr[7];

        assign lfsr_out = lfsr;
     end 
    
end

always @(negedge in_clkb) begin
    assign rand_setup = lfsr_out[2:0];
    assign rand_A = lfsr_out[6:3];
    assign rand_B = lfsr_out[10:7];

end

endmodule

module lfsr_rng(
    input in_clka,
    input in_clkb,
    input gen_rand_flag,
    output reg [23:0] lfsr_out,
    output reg [3:0] rand_A,
    output reg [3:0] rand_B,
    output reg [2:0] rand_setup
);

reg [23:0] start_state;
reg [23:0] lfsr;
reg [0:0] bit;
reg [23:0] period;

initial begin
    start_state = 24'hACE1E;
    lfsr = start_state;
    bit = 1'b0;
    period = 0;
end


always @(negedge in_clka) begin
    if (gen_rand_flag == 1) begin
        // LFSR update logic
        lfsr <= {lfsr[22:0], bit};
        period <= period + 1;
        
        // Feedback polynomial: x^24 + x^23 + x^22 + x^17 + 1
        bit <= lfsr[0] ^ lfsr[1] ^ lfsr[2] ^ lfsr[7];

        assign lfsr_out = lfsr;
     end 
    
end

always @(negedge in_clkb) begin
    assign rand_setup = lfsr_out[2:0];
    assign rand_A = lfsr_out[6:3];
    assign rand_B = lfsr_out[10:7];

end

endmodule

