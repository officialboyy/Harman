`timescale 1ns / 1ps

module Demux(
    input i, [1:0] s,
    output reg [3:0] y
    );
    always @(s,i) begin
        if(s == 2'b00)begin
            y = {1'bz, 1'bz, 1'bz, i};
        end else if(s == 2'b01)begin
            y = {1'bz, 1'bz, i, 1'bz};
        end else if(s == 2'b10)begin
            y = {1'bz, i, 1'bz, 1'bz};
        end else begin
            y = {i, 1'bz, 1'bz, 1'bz};
        end
    end
endmodule
