module array_multiplier_4bit(
    input [3:0] A, B,      // 4-bit inputs
    output [7:0] Product   // 8-bit product
);
    wire [3:0] p0, p1, p2, p3; // Partial products
    wire [7:0] sum1, sum2;     // Summation stages

    // Generate partial products
    assign p0 = A & {4{B[0]}}; // Partial product for B[0]
    assign p1 = A & {4{B[1]}}; // Partial product for B[1]
    assign p2 = A & {4{B[2]}}; // Partial product for B[2]
    assign p3 = A & {4{B[3]}}; // Partial product for B[3]

    // Add partial products with proper shifting
    assign sum1 = {4'b0, p0} + {3'b0, p1, 1'b0}; // Add p0 and shifted p1
    assign sum2 = sum1 + {2'b0, p2, 2'b0};       // Add sum1 and shifted p2
    assign Product = sum2 + {1'b0, p3, 3'b0};    // Add sum2 and shifted p3 to get final product
endmodule