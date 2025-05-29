module FullAdder (
    input  A, B, Cin,
    output Sum, Cout
);
    assign Sum = A ^ B ^ Cin;
    assign Cout = (A & B) | (Cin & (A ^ B));
endmodule

module CLA (
    input  [3:0] A, B,
    input  Cin,
    output [3:0] Sum,
    output Cout
);
    wire [3:0] G, P, C;

    // Generate (G) and Propagate (P) signals
    assign G = A & B;
    assign P = A ^ B;

    // Carry signals
    assign C[0] = Cin;
    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & C[1]);
    assign C[3] = G[2] | (P[2] & C[2]);
    assign Cout = G[3] | (P[3] & C[3]);

    // Sum calculation using Full Adders
    FullAdder FA0 (.A(A[0]), .B(B[0]), .Cin(C[0]), .Sum(Sum[0]), .Cout());
    FullAdder FA1 (.A(A[1]), .B(B[1]), .Cin(C[1]), .Sum(Sum[1]), .Cout());
    FullAdder FA2 (.A(A[2]), .B(B[2]), .Cin(C[2]), .Sum(Sum[2]), .Cout());
    FullAdder FA3 (.A(A[3]), .B(B[3]), .Cin(C[3]), .Sum(Sum[3]), .Cout());
endmodule
