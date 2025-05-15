module d_ff (
    input wire clk,    // Clock signal
    input wire rst,    // Active-high reset
    input wire d,      // Data input
    output reg q,      // Output Q
    output reg qn      // Complement Output Q'
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        q <= 1'b0;   // Reset Q to 0
        qn <= 1'b1;  // Reset Q' to 1
    end else begin
        q <= d;      // Store D into Q at the rising edge of the clock
        qn <= ~d;    // Complement of Q
    end
end

endmodule
