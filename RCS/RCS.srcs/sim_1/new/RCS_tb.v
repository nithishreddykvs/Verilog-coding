`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2024 08:58:52
// Design Name: 
// Module Name: RCS_tb
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


module RCS_tb;

    // Inputs
    reg [3:0] A;
    reg [3:0] B;
    reg cin;

    // Outputs
    wire [3:0] s;
    wire c_out1;

    // Instantiate the Unit Under Test (UUT)
    RCS uut (
        .s(s),
        .c_out1(c_out1),
        .A(A),
        .B(B),
        .cin(cin)
    );

    initial begin
        // Initialize Inputs
        A = 4'b0000;
        B = 4'b0000;
        cin = 1;

        // Monitor outputs
        $monitor("Time = %0t: A = %b, B = %b, cin = %b => s = %b, c_out1 = %b", $time, A, B, cin, s, c_out1);

        // Test cases
        #10 A = 4'b0100; B = 4'b0010; cin = 1; // 4 - 2 = 2
        #10 A = 4'b0111; B = 4'b0011; cin = 1; // 7 - 3 = 4
        #10 A = 4'b1010; B = 4'b0101; cin = 1; // 10 - 5 = 5
        #10 A = 4'b1111; B = 4'b0001; cin = 1; // 15 - 1 = 14
        #10 A = 4'b1000; B = 4'b1000; cin = 1; // 8 - 8 = 0
        #10 A = 4'b0010; B = 4'b0100; cin = 1; // 2 - 4 = -2 (overflow, result should be in 2's complement)

        // Stop simulation after the tests
        #10 $finish;
    end

endmodule

