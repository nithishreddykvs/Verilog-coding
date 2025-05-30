`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2025 11:17:35
// Design Name: 
// Module Name: seven_segment
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

module seven_segment(
output a,b,c,d,
input [15:0]in,
output reg [7:0]out
    );
    
assign a=0;
assign b=1;
assign c=1;
assign d=1;
always @(in)
    begin 
    case(in)
    16'b1000000000000000:out=8'b00000011;
    16'b0100000000000000:out=8'b10011111;
    16'b0010000000000000:out=8'b00100101;
    16'b0001000000000000:out=8'b00001101;
    16'b0000100000000000:out=8'b10011001;
    16'b0000010000000000:out=8'b01001001;
    16'b0000001000000000:out=8'b01000001;
    16'b0000000100000000:out=8'b00011111;
    16'b0000000010000000:out=8'b00000001;
    16'b0000000001000000:out=8'b00001001;
    16'b0000000000100000:out=8'b00010001;
    16'b0000000000010000:out=8'b00000001;
    16'b0000000000001000:out=8'b01100011;
    16'b0000000000000100:out=8'b00000011;
    16'b0000000000000010:out=8'b01100001;
    16'b0000000000000001:out=8'b01110001;
    
    endcase
    end
endmodule

