`timescale 1ns / 1ps

module Blocking(
    input clk, data,
    output reg rega, regb, regc
    );
    always@ (posedge clk)begin
        rega = data;
        regb = rega;
        regc = regb;
    end
endmodule

module nonBlocking(
    input clk, data,
    output reg regd, rege, regf
    );
    always@ (posedge clk)begin
        regd <= data;
        rege <= regd;
        regf <= rege;
    end
endmodule