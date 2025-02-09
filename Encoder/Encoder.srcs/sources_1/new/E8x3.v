`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2024 18:14:32
// Design Name: 
// Module Name: E8x3
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


module E8x3(output [2:0]y, input [7:0]x);
    assign y[0] = x[1] | x[3] | x[5] | x[7];
    assign y[1] = x[2] | x[3] | x[6] | x[7];
    assign y[2] = x[4] | x[5] | x[6] | x[7];
endmodule
