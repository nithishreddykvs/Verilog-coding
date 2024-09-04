`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2024 19:04:24
// Design Name: 
// Module Name: RCA_tb
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


module RCA_tb;

    // Inputs
    reg [3:0] A;
    reg [3:0] B;
    reg cin;

    // Outputs
    wire [3:0] s;
    wire c_out;

    // Instantiate the Unit Under Test (UUT)
    RCA uut (
        .s(s),
        .c_out(c_out),
        .A(A),
        .B(B),
        .cin(cin)
    );

    initial begin
        // Initialize inputs
        A = 4'b0000;
        B = 4'b0000;
        cin = 0;

        // Wait 100 ns for global reset to finish
        #100;

        // Apply test vectors
        A = 4'b0001; B = 4'b0001; cin = 0;
        #10; // Wait for some time to observe the result

        A = 4'b0010; B = 4'b0011; cin = 0;
        #10;

        A = 4'b0101; B = 4'b0110; cin = 1;
        #10;

        A = 4'b1111; B = 4'b0001; cin = 1;
        #10;

        A = 4'b1010; B = 4'b0101; cin = 0;
        #10;

        A = 4'b1111; B = 4'b1111; cin = 1;
        #10;

        // Finish simulation
        $finish;
    end

    initial begin
        $monitor("Time = %0d: A = %b, B = %b, cin = %b => s = %b, c_out = %b", $time, A, B, cin, s, c_out);
    end

endmodule
