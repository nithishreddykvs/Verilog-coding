`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2024 18:17:02
// Design Name: 
// Module Name: E8x3_tb
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


module E8x3_tb;
    
    reg [7:0]x;
    wire [2:0]y;
    
    E8x3 uut(.y(y),.x(x));
    
    initial begin
        
        $monitor("Time = %0t | x = %b | y = %b", $time,x,y);
        
        x = 8'b00000001;#10;
        x = 8'b00000010;#10;
        x = 8'b00000100;#10;
        x = 8'b00001000;#10;
        x = 8'b00010000;#10;
        x = 8'b00100000;#10;
        x = 8'b01000000;#10;
        x = 8'b10000000;#10;
        
        $finish;
    end
        
endmodule
