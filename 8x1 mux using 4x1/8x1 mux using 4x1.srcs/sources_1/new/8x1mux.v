module mux8x1(input [7:0]d,input [2:0]s, output y);
    
    wire [1:0]w;
    
    mux4x1 M1(d[3:0],s[1:0],w[0]);
    mux4x1 M2(d[7:4],s[1:0],w[1]);
    
    assign y = (s[2])?w[1]:w[0];
    
endmodule

