module t_ff (
    input wire clk,   // Clock signal
    input wire rst,   // Active-high reset
    input wire t,     // Toggle input
    output reg q,     // Output Q
    output reg qn     // Complement Output Q'
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        q <= 1'b0;   // Reset Q to 0
        qn <= 1'b1;  // Reset Q' to 1
    end 
    else if (t) begin
        q <= ~q;     // Toggle Q
        qn <= ~qn;   // Toggle Q'
    end
end

endmodule
