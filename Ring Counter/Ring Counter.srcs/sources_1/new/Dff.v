module d_ff (
    input wire clk,
    input wire rst,
    input wire d,
    output reg q
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 1'b0;  // Reset to 0
        else
            q <= d;     // On clock edge, store 'd' in 'q'
    end
endmodule