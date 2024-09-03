`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2024 18:19:11
// Design Name: 
// Module Name: full_sub_tb
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

module full_sub_tb;

  // Inputs
  reg a;
  reg b;
  reg b_in;

  // Outputs
  wire d;
  wire bo;

  // Instantiate the Unit Under Test (UUT)
  full_sub uut (
    .d(d), 
    .bo(bo), 
    .a(a), 
    .b(b), 
    .b_in(b_in)
  );

  initial begin
    // Initialize Inputs
    a = 0;
    b = 0;
    b_in = 0;
    end
    always #4 a=a+1'b1;
    always #2 b=b+1'b1;
    always #1 b_in=b_in+1'b1;
    initial #20 $finish;
endmodule
