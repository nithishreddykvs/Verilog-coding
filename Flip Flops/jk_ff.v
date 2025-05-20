module jk_ff (
    input wire clk,   // Clock signal
    input wire rst,   // Active-high reset
    input wire j,     // J input
    input wire k,     // K input
    output reg q,     // Output Q
    output reg qn     // Complement Output Q'
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        q <= 1'b0;   // Reset Q to 0
        qn <= 1'b1;  // Reset Q' to 1
    end 
    else begin
        case ({j, k})
            2'b00: q <= q;        // No change
            2'b01: q <= 1'b0;     // Reset Q to 0
            2'b10: q <= 1'b1;     // Set Q to 1
            2'b11: q <= ~q;       // Toggle Q
        endcase
        qn <= ~q;  // Complement Q'
    end
end

endmodule
