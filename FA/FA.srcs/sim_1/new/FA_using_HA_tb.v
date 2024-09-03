`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2024 20:04:48
// Design Name: 
// Module Name: FA_using_HA_tb
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

module FA_using_HA_tb;

  // Inputs
  reg x;
  reg y;
  reg z;

  // Outputs
  wire s;
  wire c;

  // Instantiate the Unit Under Test (UUT)
  FA_using_HA uut (
    .s(s), 
    .c(c), 
    .x(x), 
    .y(y), 
    .z(z)
  );

  initial begin
    // Initialize Inputs
    x = 0;
    y = 0;
    z = 0;

    // Test all combinations of inputs x, y, z
    // Test case 1: x = 0, y = 0, z = 0
    x = 0; y = 0; z = 0;
    #10;
    $display("x = %b, y = %b, z = %b, s = %b, c = %b", x, y, z, s, c);

    // Test case 2: x = 0, y = 0, z = 1
    x = 0; y = 0; z = 1;
    #10;
    $display("x = %b, y = %b, z = %b, s = %b, c = %b", x, y, z, s, c);

    // Test case 3: x = 0, y = 1, z = 0
    x = 0; y = 1; z = 0;
    #10;
    $display("x = %b, y = %b, z = %b, s = %b, c = %b", x, y, z, s, c);

    // Test case 4: x = 0, y = 1, z = 1
    x = 0; y = 1; z = 1;
    #10;
    $display("x = %b, y = %b, z = %b, s = %b, c = %b", x, y, z, s, c);

    // Test case 5: x = 1, y = 0, z = 0
    x = 1; y = 0; z = 0;
    #10;
    $display("x = %b, y = %b, z = %b, s = %b, c = %b", x, y, z, s, c);

    // Test case 6: x = 1, y = 0, z = 1
    x = 1; y = 0; z = 1;
    #10;
    $display("x = %b, y = %b, z = %b, s = %b, c = %b", x, y, z, s, c);

    // Test case 7: x = 1, y = 1, z = 0
    x = 1; y = 1; z = 0;
    #10;
    $display("x = %b, y = %b, z = %b, s = %b, c = %b", x, y, z, s, c);

    // Test case 8: x = 1, y = 1, z = 1
    x = 1; y = 1; z = 1;
    #10;
    $display("x = %b, y = %b, z = %b, s = %b, c = %b", x, y, z, s, c);

    // End simulation
    $finish;
  end
      
endmodule

