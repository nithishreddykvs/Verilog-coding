`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2025 11:27:37
// Design Name: 
// Module Name: seven_segment_tb
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

`timescale 1ns / 1ps

module seven_segment_tb;

    reg [15:0] in;
    wire a, b, c, d;
    wire [7:0] out;

    // Instantiate the seven_segment module
    seven_segment uut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .in(in),
        .out(out)
    );

    initial begin
        // Apply different test inputs
        in = 16'b1000000000000000; #100;
        in = 16'b0100000000000000; #100;
        in = 16'b0010000000000000; #100;
        in = 16'b0001000000000000; #100;
        in = 16'b0000100000000000; #100;
        in = 16'b0000010000000000; #100;
        in = 16'b0000001000000000; #100;
        in = 16'b0000000100000000; #100;
        in = 16'b0000000010000000; #100;
        in = 16'b0000000001000000; #100;
        in = 16'b0000000000100000; #100;
        in = 16'b0000000000010000; #100;
        in = 16'b0000000000001000; #100;
        in = 16'b0000000000000100; #100;
        in = 16'b0000000000000010; #100;
        in = 16'b0000000000000001; #100;

        // End simulation
        $stop;
    end

endmodule



