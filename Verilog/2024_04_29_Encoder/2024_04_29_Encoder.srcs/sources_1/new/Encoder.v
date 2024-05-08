`timescale 1ns / 1ps

module Encoder(
    input [7:0] d, en,
    output reg [2:0] a, v
    );
    always @(en, d) begin
        if(d[7])begin
            a=7;    v=1'b1;
        end else if(d[6])begin
            a=6;    v=1'b1;
        end else if(d[5])begin
            a=5;    v=1'b1;
        end else if(d[4])begin
            a=4;    v=1'b1;
        end else if(d[3])begin
            a=3;    v=1'b1;
        end else if(d[2])begin
            a=2;    v=1'b1;
        end else if(d[1])begin
            a=1;    v=1'b1;
        end else if(d[0])begin
            a=0;    v=1'b1;
        end else begin
            a=0;    v=1'b0;
        end
    end
endmodule
