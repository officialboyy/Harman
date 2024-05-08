`timescale 1ns / 1ps

module MUX_behavior(
    input a, b,
    input A, B, C, D,
    output reg Q
    );
    
    always @* begin
    if({b,a} == 'b00) begin
    Q=A;
    end else if({b,a} == 'b01) begin
    Q=B;
    end else if({b,a} == 'b10) begin
    Q=C;
    end else begin
    Q=D;
    end
    end
endmodule
