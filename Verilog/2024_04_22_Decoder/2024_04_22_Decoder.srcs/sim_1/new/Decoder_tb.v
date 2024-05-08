`timescale 1ns / 1ps

module Decoder_tb;
reg a, b;
wire [3:0] y;
Decoder dut(.a(a), .b(b), .y(y));

initial begin
    a=0; b=0;
    #10 a=0; b=0;
    #10 a=1; b=0;
    #10 a=0; b=1;
    #10 a=1; b=1;
    #10 $finish;
end
endmodule
