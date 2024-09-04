`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2024 08:54:28
// Design Name: 
// Module Name: RCS
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


module RCS(output [3:0] s, output c_out1, input [3:0] A, input [3:0] B, input cin);

    wire [3:0] B_inverted, P, W;
    wire c_out, c_inverted;

    // Invert B to get its 1's complement
    assign B_inverted = ~B;

    // Add A and the 1's complement of B
    RCA adder1 (
        .s(P),
        .c_out(c_out),
        .A(A),
        .B(B_inverted),
        .cin(cin)
    );

    // Invert the carry-out to get the final carry (c_inverted)
    assign c_inverted = ~c_out;

    // XOR the sum P with the inverted carry to get the final result W
    assign W = P ^ {4{c_inverted}};

    // Add the zero vector and W
    RCA adder2 (
        .s(s),
        .c_out(c_out1),
        .A(4'b0000),   // Zero vector
        .B(W),
        .cin(c_inverted)
    );

endmodule


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