`timescale 1ns/1ps

module tb_Multiplier_wrapper;
    reg [7:0] A_0;
    reg [7:0] B_0;
    wire [15:0] P_0;

    // Instantiate the DUT
    Multiplier_wrapper uut (
        .A_0(A_0),
        .B_0(B_0),
        .P_0(P_0)
    );

    initial begin
        // Monitor the output
        $monitor("Time = %0t | A = %d | B = %d | P = %d", $time, A_0, B_0, P_0);
        
        // Test Case 1
        A_0 = 8'd10;
        B_0 = 8'd3;
        #10;
        
        // Test Case 2
        A_0 = 8'd15;
        B_0 = 8'd4;
        #10;

        // Test Case 3
        A_0 = 8'd255;
        B_0 = 8'd2;
        #10;

        // Test Case 4
        A_0 = 8'd100;
        B_0 = 8'd100;
        #10;

        // Test Case 5
        A_0 = 8'd0;
        B_0 = 8'd200;
        #10;

        $finish;
    end
endmodule
