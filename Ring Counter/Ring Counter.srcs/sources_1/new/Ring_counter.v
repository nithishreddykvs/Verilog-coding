`timescale 1ns / 1ps

module ring_counter (
    input wire clk,     // Clock signal
    input wire rst,     // Reset signal
    output reg [3:0] out  // 4-bit output
);

    always @(posedge clk or posedge rst) begin
        if (rst)
            out <= 4'b1000; // Initialize with only MSB high
        else
            out <= {out[2:0], out[3]}; // Rotate left
    end

endmodule
