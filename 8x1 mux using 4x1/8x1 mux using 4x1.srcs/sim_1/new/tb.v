`timescale 1ns / 1ps

module tb;

    reg [7:0]d;
    reg [2:0]s;
    wire y;
    mux8x1 UUT(d,s,y);
    
    initial begin
    d = 8'b11000111;
    s = 3'b000;#10;
    s = 3'b001;#10;
    s = 3'b010;#10;
    s = 3'b011;#10;
    s = 3'b100;#10;
    s = 3'b101;#10;
    s = 3'b110;#10;
    s = 3'b111;#10;
    end
    
endmodule
