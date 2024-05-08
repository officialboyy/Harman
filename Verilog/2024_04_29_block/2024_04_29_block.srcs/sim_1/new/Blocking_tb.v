`timescale 1ns / 1ps

module Blocking_tb;
reg clk; reg data;
wire rega, regb, regc, regd, rege, regf;
Blocking dut1(.clk(clk), .data(data), .rega(rega), .regb(regb), .regc(regc));
nonBlocking dut2(.clk(clk), .data(data), .regd(regd), .rege(rege), .regf(regf));
initial begin
    clk = 1'b0;
    repeat(10) #5 clk = ~clk;
end
initial begin
    data = 1'b1;
end
endmodule
