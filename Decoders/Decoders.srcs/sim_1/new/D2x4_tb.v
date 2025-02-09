`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2024 17:57:37
// Design Name: 
// Module Name: D2x4_tb
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


module D2x4_tb;
    
    reg [1:0]X;
    reg E;
    wire [3:0]Y;
    
    D2x4 uut(.X(X),.E(E),.Y(Y));
    
    initial begin
    
        $monitor("Time = %0t | X = %b | E = %b | Y = %b",$time,X,E,Y); 
        
        E = 1;X = 2'b00;#10;
        E = 1;X = 2'b01;#10;
        E = 1;X = 2'b10;#10;
        E = 1;X = 2'b11;#10;
        $finish;
    end
endmodule
