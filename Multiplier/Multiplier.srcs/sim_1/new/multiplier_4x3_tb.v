`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2024 20:15:10
// Design Name: 
// Module Name: multiplier_4x3_tb
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

module multiplier_4x3_tb;
    // Inputs
    reg [2:0] A;
    reg [3:0] B;

    // Output
    wire [6:0] C;

    // Instantiate the multiplier module
    multiplier_4x3 uut (
        .C(C),
        .A(A),
        .B(B)
    );

    initial begin
        // Display headers
        $display("Time\tA\tB\tC");
        
        // Monitor changes
        $monitor("%0t\t%b\t%b\t%b", $time, A, B, C);

        // Initialize inputs and apply test cases
        A = 3'b000; B = 4'b0000; #10;  // Test case 1: 0 * 0 = 0000000
        A = 3'b001; B = 4'b0001; #10;  // Test case 2: 1 * 1 = 0000001
        A = 3'b010; B = 4'b0010; #10;  // Test case 3: 2 * 2 = 0000100
        A = 3'b011; B = 4'b0100; #10;  // Test case 4: 3 * 4 = 0001100
        A = 3'b100; B = 4'b0011; #10;  // Test case 5: 4 * 3 = 0011000
        A = 3'b101; B = 4'b1111; #10;  // Test case 6: 5 * 15 = 1001011
        A = 3'b110; B = 4'b0101; #10;  // Test case 7: 6 * 5 = 0011110
        A = 3'b111; B = 4'b0111; #10;  // Test case 8: 7 * 7 = 0110001
        
        // Finish simulation
        $finish;
    end
endmodule


