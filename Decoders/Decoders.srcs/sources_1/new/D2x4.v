`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2024 17:56:46
// Design Name: 
// Module Name: D2x4
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


module D2x4(input [1:0]X, input E, output [3:0]Y);
    assign Y[0] = E&(~X[1])&(~X[0]);
    assign Y[1] = E&(~X[1])&(X[0]);
    assign Y[2] = E&(X[1])&(~X[0]);
    assign Y[3] = E&(X[1])&(X[0]);
endmodule

