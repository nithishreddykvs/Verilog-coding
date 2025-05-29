module CLA_tb;
    reg  [3:0] A, B;
    reg  Cin;
    wire [3:0] Sum;
    wire Cout;

    // Instantiate the Carry Look-Ahead Adder
    CLA UUT (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        // Test cases
        A = 4'b0000; B = 4'b0000; Cin = 0; #10;
        $display("A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        A = 4'b0001; B = 4'b0001; Cin = 0; #10;
        $display("A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        A = 4'b0011; B = 4'b0011; Cin = 0; #10;
        $display("A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        A = 4'b0111; B = 4'b0111; Cin = 0; #10;
        $display("A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        A = 4'b1111; B = 4'b1111; Cin = 0; #10;
        $display("A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        A = 4'b1010; B = 4'b0101; Cin = 1; #10;
        $display("A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        $finish;
    end
endmodule