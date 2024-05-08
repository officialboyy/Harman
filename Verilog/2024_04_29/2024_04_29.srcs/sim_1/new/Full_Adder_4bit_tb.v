`timescale 1ns / 1ps

module Full_Adder_4bit_tb;
    reg [3:0]a;
    reg [3:0]b;
    reg Cin;
    wire [3:0]sum;
    wire carry;
    Full_Adder_4bit dut(.a(a), .b(b), .Cin(Cin), .sum(sum), .carry(carry));

    initial begin
        a=0; b=0; Cin=0;

        #10 a=0; b=1;
        #10 a=2; b=3;
        #10 a=1; b=4;
        #10 a=1; b=1;
        #10 a=8; b=8;
        #10 a=2; b=5;
        #10 a=11; b=5;

        #10 $finish;
    end
endmodule