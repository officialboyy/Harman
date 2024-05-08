`timescale 1ns / 1ps

module Decoder(
    input a, b,
    output reg [3:0] y
    );
    always@(a or b)begin
        if({a,b} == 2'b00) begin
            y = 4'b0001;
        end else if({a,b} == 2'b01) begin
            y = 4'b0010;
        end else if({a,b} == 2'b10) begin
            y = 4'b0100;
        end else if({a,b} == 2'b11) begin
            y = 4'b1000;
        end else begin
            y = 4'b0000;
        end
    end
endmodule
