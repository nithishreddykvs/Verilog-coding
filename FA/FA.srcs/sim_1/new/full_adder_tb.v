`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2024 11:34:59
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;

  // Inputs
  reg a;
  reg b;
  reg c;

  // Outputs
  wire s;
  wire carry;

  // Instantiate the Unit Under Test (UUT)
  full_adder uut (
    .s(s), 
    .carry(carry), 
    .a(a), 
    .b(b), 
    .c(c)
  );

  initial begin
    // Initialize Inputs
    a = 0;
    b = 0;
    c = 0;

    
    // Test all combinations of inputs a, b, and c
    // Test case 1: a = 0, b = 0, c = 0
    a = 0; b = 0; c = 0;
    #10;
    $display("a = %b, b = %b, c = %b, s = %b, carry = %b", a, b, c, s, carry);

    // Test case 2: a = 0, b = 0, c = 1
    a = 0; b = 0; c = 1;
    #10;
    $display("a = %b, b = %b, c = %b, s = %b, carry = %b", a, b, c, s, carry);

    // Test case 3: a = 0, b = 1, c = 0
    a = 0; b = 1; c = 0;
    #10;
    $display("a = %b, b = %b, c = %b, s = %b, carry = %b", a, b, c, s, carry);

    // Test case 4: a = 0, b = 1, c = 1
    a = 0; b = 1; c = 1;
    #10;
    $display("a = %b, b = %b, c = %b, s = %b, carry = %b", a, b, c, s, carry);

    // Test case 5: a = 1, b = 0, c = 0
    a = 1; b = 0; c = 0;
    #10;
    $display("a = %b, b = %b, c = %b, s = %b, carry = %b", a, b, c, s, carry);

    // Test case 6: a = 1, b = 0, c = 1
    a = 1; b = 0; c = 1;
    #10;
    $display("a = %b, b = %b, c = %b, s = %b, carry = %b", a, b, c, s, carry);

    // Test case 7: a = 1, b = 1, c = 0
    a = 1; b = 1; c = 0;
    #10;
    $display("a = %b, b = %b, c = %b, s = %b, carry = %b", a, b, c, s, carry);

    // Test case 8: a = 1, b = 1, c = 1
    a = 1; b = 1; c = 1;
    #10;
    $display("a = %b, b = %b, c = %b, s = %b, carry = %b", a, b, c, s, carry);

    // End simulation
    $finish;
  end
      
endmodule

