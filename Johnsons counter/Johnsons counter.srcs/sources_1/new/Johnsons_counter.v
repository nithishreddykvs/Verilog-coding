module johnson_counter (
    input wire clk,
    input wire rst,
    output wire [3:0] out
);

    wire [3:0] q;

    d_ff FF0 (.clk(clk), .rst(rst), .d(~q[3]), .q(q[0]));
    d_ff FF1 (.clk(clk), .rst(rst), .d(q[0]), .q(q[1]));
    d_ff FF2 (.clk(clk), .rst(rst), .d(q[1]), .q(q[2]));
    d_ff FF3 (.clk(clk), .rst(rst), .d(q[2]), .q(q[3]));

    assign out = q;

endmodule
