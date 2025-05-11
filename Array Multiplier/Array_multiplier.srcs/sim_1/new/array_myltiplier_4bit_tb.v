module array_multiplier_4bit_tb;
    reg [3:0] A, B;       // Inputs
    wire [7:0] Product;   // Output

    // Instantiate the 4-bit array multiplier
    array_multiplier_4bit uut (
        .A(A),
        .B(B),
        .Product(Product)
    );
    
    integer i,j;

    initial begin
        
        for (i=0;i<16;i=i+1) begin
            for (j=0;j<16;j=j+1) begin
                
                A=i;
                B=j;
                #10;
            end
       end 

        $finish;
    end
endmodule