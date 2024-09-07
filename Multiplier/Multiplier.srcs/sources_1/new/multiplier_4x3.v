`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2024 19:48:29
// Design Name: 
// Module Name: multiplier_4x3
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


module multiplier_4x3(output [6:0] C, input [2:0] A, input [3:0] B);
    wire [15:0] W; // Changed wire size to fit partial products and intermediate sums
    wire [3:0] sum1, sum2; // Intermediate sums from RCA adders
    wire carry1, carry2;   // Carry-outs from RCA adders
    
    // Generate partial products
    assign C[0] = A[0] & B[0]; // LSB of the result
    assign W[0] = A[0] & B[1];
    assign W[1] = A[0] & B[2];
    assign W[2] = A[0] & B[3];
    assign W[3] = 0; // Padding zero for alignment

    assign W[4] = A[1] & B[0];
    assign W[5] = A[1] & B[1];
    assign W[6] = A[1] & B[2];
    assign W[7] = A[1] & B[3];

    // First RCA to add partial products
    RCA adder1 (sum1, carry1, W[3:0], W[7:4], 0);

    assign C[1] = sum1[0]; // Next bit of the result
    assign W[8] = A[2] & B[0];
    assign W[9] = A[2] & B[1];
    assign W[10] = A[2] & B[2];
    assign W[11] = A[2] & B[3];

    // Second RCA to add remaining partial products
    RCA adder2 (sum2, carry2, {carry1, sum1[3:1]}, W[11:8], 0);
    
    // Assign final result bits
    assign C[2] = sum2[0];
    assign C[3] = sum2[1];
    assign C[4] = sum2[2];
    assign C[5] = sum2[3];
    assign C[6] = carry2;

endmodule

// Ripple Carry Adder Module
module RCA(output [3:0] s, output c_out, input [3:0] A, input [3:0] B, input cin);
    wire c1, c2, c3;
    FA X0(s[0], c1, A[0], B[0], cin);
    FA X1(s[1], c2, A[1], B[1], c1);
    FA X2(s[2], c3, A[2], B[2], c2);
    FA X3(s[3], c_out, A[3], B[3], c3);
endmodule

// Full Adder Module
module FA(output s, output c_out, input A, input B, input cin);
    assign s = A ^ B ^ cin;        // Sum
    assign c_out = (A & B) | (cin & (A ^ B));  // Carry-out
endmodule
