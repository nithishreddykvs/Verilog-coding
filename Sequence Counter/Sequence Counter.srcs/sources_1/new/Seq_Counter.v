module top_module (
    input clk,
    input reset,
    output reg [2:0] out
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            out <= 3'b000;
        else begin
            case (out)
                3'b000: out <= 3'b010;
                3'b010: out <= 3'b101;
                3'b101: out <= 3'b111;
                3'b111: out <= 3'b001;
                3'b001: out <= 3'b000;
                default: out <= 3'b000; // safe default
            endcase
        end
    end

endmodule
