`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2024 21:15:43
// Design Name: 
// Module Name: Comp_4bit
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


module Comp_4bit(
    output eq, le, gr,
    input [3:0] A, B
);

    wire [3:0] X, W, P;

    // Equality check using XOR
    assign X[0] = A[0] ~^ B[0];
    assign X[1] = A[1] ~^ B[1];
    assign X[2] = A[2] ~^ B[2];
    assign X[3] = A[3] ~^ B[3];
    
    // Equality condition
    assign eq = X[0] & X[1] & X[2] & X[3];
    
    // Less than or equal condition
    assign W[0] = (~A[3]) & B[3];
    assign W[1] = (X[3] & (~A[2]) & B[2]);
    assign W[2] = (X[3] & X[2] & (~A[1]) & B[1]);
    assign W[3] = (X[3] & X[2] & X[1] & (~A[0]) & B[0]);
    
    assign le = W[0] | W[1] | W[2] | W[3];
    
    // Greater than condition
    assign P[0] = A[3] & (~B[3]);
    assign P[1] = (X[3] & A[2] & (~B[2]));
    assign P[2] = (X[3] & X[2] & A[1] & (~B[1]));
    assign P[3] = (X[3] & X[2] & X[1] & A[0] & (~B[0]));
    
    assign gr = P[0] | P[1] | P[2] | P[3];
    
endmodule

