`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2024 18:52:53
// Design Name: 
// Module Name: RCA
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


module RCA(output [3:0] s, output c_out, input [3:0] A, input [3:0] B, input cin);
    wire c1, c2, c3;
    FA X0(s[0], c1, A[0], B[0], cin);
    FA X1(s[1], c2, A[1], B[1], c1);
    FA X2(s[2], c3, A[2], B[2], c2);
    FA X3(s[3], c_out, A[3], B[3], c3);
endmodule





module FA(output s, c_out, input A, B, cin);
    assign s = A ^ B ^ cin;        // Sum
    assign c_out = (A & B) | (cin & (A ^ B));  // Carry-out
endmodule
