`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2024 20:47:40
// Design Name: 
// Module Name: full_adder
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


module full_adder(output s,carry, input a,b,c);
wire w1,w2,w3;
xor g1(w1,a,b);
xor g2(s,w1,c);
and A1(w3,a,b);
and A2(w2,w1,c);
or (carry,w2,w3);
endmodule
