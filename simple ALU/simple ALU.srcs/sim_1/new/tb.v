module tb_alu_4bit;
    reg  [3:0] a, b;
    reg  [2:0] sel;
    wire [7:0] result;

    ALU uut (.a(a), .b(b), .sel(sel), .result(result));

    initial begin
        $monitor("a=%d, b=%d, sel=%b, result=%d", a, b, sel, result);

        a = 4'd5; b = 4'd3;

        sel = 3'b000; #10;  // Add: 5 + 3 = 8
        sel = 3'b001; #10;  // Sub: 5 - 3 = 2
        sel = 3'b010; #10;  // AND: 0101 & 0011 = 0001
        sel = 3'b011; #10;  // OR:  0101 | 0011 = 0111
        sel = 3'b100; #10;  // MUL: 5 * 3 = 15
        sel = 3'b101; #10;  // DIV: 5 / 3 = 1
        sel = 3'b110; #10;  // MOD: 5 % 3 = 2

        a = 4'd9; b = 4'd0; sel = 3'b101; #10;  // DIV by 0
    end
endmodule
