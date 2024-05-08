`timescale 1ns / 1ps

module Encoder_tb;
reg [7:0]d;
reg en;
wire [2:0]a;
wire v;
Encoder dut(.d(d), .en(en), .a(a), .v(v));

initial begin
    en=0; d=8'b0000_0000;
    #5 en=1;   d=8'b0000_0001;
    #5 en=1;   d=8'b0000_0010;
    // #5 en=1;   d=8'b0000_0011;
    #5 en=1;   d=8'b0000_0100;
    // #5 en=1;   d=8'b0000_0101;
    // #5 en=1;   d=8'b0000_0110;
    // #5 en=1;   d=8'b0000_0111;
    #5 en=1;   d=8'b0000_1000;
    // #5 en=1;   d=8'b0000_1001;
    // #5 en=1;   d=8'b0000_1010;
    // #5 en=1;   d=8'b0000_1011;
    // #5 en=1;   d=8'b0000_1100;
    // #5 en=1;   d=8'b0000_1101;
    // #5 en=1;   d=8'b0000_1110;
    // #5 en=1;   d=8'b0000_1111;
    #5 en=1;   d=8'b0001_0000;
    // #5 en=1;   d=8'b0001_0001;
    #5 en=1;   d=8'b0010_0000;
    #5 en=1;   d=8'b0100_0000;
    #5 en=1;   d=8'b1000_0000;
    #5 $finish;
end
initial $monitor("en=%b, d=%b, a=%b", en, d, a);
endmodule
