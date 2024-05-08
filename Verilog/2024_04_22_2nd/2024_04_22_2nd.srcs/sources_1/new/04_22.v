`timescale 1ns / 1ps

module comparator(
input a,
input b,
output reg [2:0] y      // always? ??? reg ?..
    );
    always@(a or b) begin
    case({b,a})
        2'b00 : begin y[0] = 0; y[1] = 1; y[2] = 0; end
        2'b01 : begin y[0] = 0; y[1] = 0; y[2] = 1; end
        2'b10 : begin y[0] = 1; y[1] = 1; y[2] = 0; end
        2'b11 : begin y[0] = 0; y[1] = 1; y[2] = 0; end
    endcase
    end
endmodule
