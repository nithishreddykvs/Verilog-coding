`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2024 21:14:26
// Design Name: 
// Module Name: comparator_4bit_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_Comp_4bit;

    reg [3:0] A, B; // 4-bit inputs
    wire eq, le, gr; // Outputs from comparator
    
    // Instantiate the comparator module
    Comp_4bit uut (
        .eq(eq),
        .le(le),
        .gr(gr),
        .A(A),
        .B(B)
    );

    initial begin
        // Display output
        $monitor("Time = %0t: A = %b, B = %b => eq = %b, le = %b, gr = %b", 
                 $time, A, B, eq, le, gr);
                 
        // Test Cases
        A = 4'b0000; B = 4'b0000; #10; // A == B
        A = 4'b0001; B = 4'b0000; #10; // A > B
        A = 4'b0000; B = 4'b0001; #10; // A < B
        A = 4'b1010; B = 4'b0101; #10; // A > B
        A = 4'b1111; B = 4'b1111; #10; // A == B
        A = 4'b0010; B = 4'b1100; #10; // A < B
        
        // End simulation
        $finish;
    end

endmodule


