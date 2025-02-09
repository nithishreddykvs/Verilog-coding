`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2024 17:59:00
// Design Name: 
// Module Name: D3x8
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



module D3x8(output [7:0]y, input [2:0]x);
    
    D2x4 decoder_1(x[1:0],~x[2],y[3:0]);
    D2x4 decoder_2(x[1:0],x[2],y[7:4]);
    
endmodule



module D2x4(input [1:0]X, input E, output [3:0]Y);
    assign Y[0] = E&(~X[1])&(~X[0]);
    assign Y[1] = E&(~X[1])&(X[0]);
    assign Y[2] = E&(X[1])&(~X[0]);
    assign Y[3] = E&(X[1])&(X[0]);
endmodule