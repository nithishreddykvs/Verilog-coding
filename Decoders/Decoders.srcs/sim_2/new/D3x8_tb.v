`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2024 18:01:16
// Design Name: 
// Module Name: D3x8_tb
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


module D3x8_tb;

    reg [2:0]x;
    wire [7:0]y;
    
    D3x8 uut(.y(y),.x(x));
    
    initial begin
    
        $monitor("Time = %0t | x = %b | y = %b",$time,x,y);
        
        x = 3'b000;#10; 
        x = 3'b001;#10; 
        x = 3'b010;#10; 
        x = 3'b011;#10; 
        x = 3'b100;#10; 
        x = 3'b101;#10; 
        x = 3'b110;#10; 
        x = 3'b111;#10; 
        
        $finish;
    end
endmodule
