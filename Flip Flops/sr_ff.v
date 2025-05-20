module sr_ff(input s,r,clk,rst, output reg Q,Qn);

    always@(posedge clk or posedge rst) begin
    if (rst) begin
    Q <= 0; Qn <=1;
    end else begin
    if (s==1 && r==0) begin
    Q <= 1; Qn <= 0;
    end else if (s==0 && r==1) begin
    Q <= 0; Qn <= 1;
    end else if (s==0 && r==0) begin
    Q <= Q; Qn <= Qn;
    end else begin
    Q = 1'bx;Qn = 1'bx;
    end
    end
    end
    
endmodule
