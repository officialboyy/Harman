`timescale 1ns / 1ps

module MUX_dataflow_tb;
reg a, b;
reg A, B, C, D;
wire Q;

MUX_dataflow dut (.a(a), .b(b), .A(A), .B(B), .C(C), .D(D), .Q(Q));

initial begin
A=0; B=0; C=0; D=0; a=0; b=0;
#10 a=0; b=0; A=1; B=0; C=1; D=0;
#10 a=1; b=0; A=0; B=0; C=1; D=1;
#10 a=0; b=1; A=1; B=0; C=1; D=1;
#10 a=1; b=1; A=1; B=1; C=1; D=1;
#10 a=0; b=0; A=0; B=1; C=0; D=0;
#10 a=0; b=1; A=0; B=1; C=1; D=1;
#10 $finish;
end
endmodule
