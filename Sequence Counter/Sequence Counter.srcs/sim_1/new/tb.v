module tb_top_module;

    // Testbench signals
    reg clk;
    reg reset;
    wire [2:0] out;

    // Instantiate the design
    top_module uut (
        .clk(clk),
        .reset(reset),
        .out(out)
    );

    
    
    always #10 clk = ~clk;

    // Stimulus
    initial begin
        
        clk = 0;
        
        // Initialize
        reset = 1;
        #10;
        
        reset = 0;

        // Let the simulation run long enough to see a few cycles
        #200;

        $finish;
    end

    // Optional: monitor output
    initial begin
        $display("Time\tclk\treset\tout");
        $monitor("%0t\t%b\t%b\t%b", $time, clk, reset, out);
    end

endmodule
