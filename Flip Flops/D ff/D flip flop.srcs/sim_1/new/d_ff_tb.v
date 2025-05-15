`timescale 1ns/1ps

module tb_d_ff;
    reg clk;    // Clock signal
    reg rst;    // Reset signal
    reg d;      // Data input
    wire q;     // Output Q
    wire qn;    // Output Q'

    // Instantiate the D Flip-Flop
    d_ff uut (
        .clk(clk),
        .rst(rst),
        .d(d),
        .q(q),
        .qn(qn)
    );

    // Clock generation: Toggle every 10 time units (100MHz)
    always #10 clk = ~clk;

    // Test sequence
    initial begin
        // Initialize signals
        clk = 0;
        rst = 1;
        d = 0;

        // Apply reset
        #15 rst = 0;  // Deassert reset at 15ns

        // Apply test cases
        #10 d = 1;  // Set D to 1
        #20 d = 0;  // Set D to 0
        #20 d = 1;  // Set D to 1
        #10 rst = 1; // Apply reset
        #10 rst = 0; // Remove reset
        #20 d = 0;
        #20 d = 1;

        #30 $stop; // End simulation
    end

    // Monitor changes
    initial begin
        $monitor("Time = %0t | clk = %b | rst = %b | d = %b | q = %b | qn = %b", 
                  $time, clk, rst, d, q, qn);
    end

endmodule
