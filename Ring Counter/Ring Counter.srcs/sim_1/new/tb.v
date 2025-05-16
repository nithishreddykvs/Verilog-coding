`timescale 1ns / 1ps

module tb_ring_counter;

    reg clk, rst;
    wire [3:0] out;

    // Instantiate the Ring Counter
    ring_counter uut (
        .clk(clk),
        .rst(rst),
        .out(out)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;  // Start with reset
        #10 rst = 0;  // Release reset after 10 ns

        #100 $finish;  // End simulation after 100 ns
    end
endmodule
