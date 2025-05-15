module ALU(input [3:0]a,b,input [2:0]sel,output reg [7:0]result);
    
    always@(*) begin
        case(sel)
            3'b000: result = a+b;
            3'b001: result = a-b;
            3'b010: result = a&b;
            3'b011: result = a|b;
            3'b100: result = a*b;
            3'b101: result = (b!=0)?a/b:8'b0;
            3'b110: result = (b!=0)?a%b:a;
            default : result = 8'b0;
        endcase
    end
            
endmodule
