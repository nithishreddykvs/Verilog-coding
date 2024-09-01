`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2024 17:47:47
// Design Name: 
// Module Name: half_sub_tb
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

module half_sub_tb;

  // Inputs
  reg a;
  reg b;

  // Outputs
  wire d;
  wire bo;

  // Instantiate the Unit Under Test (UUT)
  half_sub uut (
    .d(d), 
    .bo(bo), 
    .a(a), 
    .b(b)
  );

  initial begin
    // Initialize Inputs
    a = 0;
    b = 0;

    // Test all combinations of inputs a and b
    // Test case 1: a = 0, b = 0
    a = 0; b = 0;
    #10;
    $display("a = %b, b = %b, d = %b, bo = %b", a, b, d, bo);

    // Test case 2: a = 0, b = 1
    a = 0; b = 1;
    #10;
    $display("a = %b, b = %b, d = %b, bo = %b", a, b, d, bo);

    // Test case 3: a = 1, b = 0
    a = 1; b = 0;
    #10;
    $display("a = %b, b = %b, d = %b, bo = %b", a, b, d, bo);

    // Test case 4: a = 1, b = 1
    a = 1; b = 1;
    #10;
    $display("a = %b, b = %b, d = %b, bo = %b", a, b, d, bo);

    // End simulation
    $finish;
  end
      
endmodule
