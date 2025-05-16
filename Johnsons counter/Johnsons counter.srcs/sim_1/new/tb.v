`timescale 1ns / 1ps

module tb_johnson_counter;

    reg clk;
    reg rst;
    wire [3:0] out;

    // Instantiate the DUT (Device Under Test)
    johnson_counter uut (
        .clk(clk),
        .rst(rst),
        .out(out)
    );

    // Clock generation
    always #5 clk = ~clk; // 10ns clock period (100MHz)

    initial begin
        // Initialize signals
        clk = 0;
        rst = 1;
        
        // Reset pulse
        #10 rst = 0;

        // Run simulation for a few cycles
        #100 $finish;
    end

    // Optional: Monitor output
    initial begin
        $display("Time\tclk\trst\tout");
        $monitor("%0t\t%b\t%b\t%b", $time, clk, rst, out);
    end

endmodule
