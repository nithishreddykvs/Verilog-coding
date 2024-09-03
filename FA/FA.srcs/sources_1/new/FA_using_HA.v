`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2024 19:59:12
// Design Name: 
// Module Name: FA_using_HA
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


module FA_using_HA(output s,c, input x,y,z);
wire w1,w2,w3;
HA (w1,w2,x,y);
HA (s,w3,w1,z);
and (c,w3,w2);
endmodule


module HA(a,b,sum,carry);
input a,b;
output sum,carry;

assign sum = a^b;
assign carry = a&b;

endmodule
