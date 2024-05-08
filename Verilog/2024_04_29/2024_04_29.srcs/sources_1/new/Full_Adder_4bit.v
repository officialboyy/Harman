`timescale 1ns / 1ps

module Full_Adder_4bit(
    input [3:0]a,
    input [3:0]b,
    input Cin,
    output [3:0]sum,
    output carry
    );
    wire w_carry1, w_carry2, w_carry3;
    Full_Adder fa_1(.a(a[0]), .b(b[0]), .Cin(Cin), .sum(sum[0]), .carry(w_carry1));
    Full_Adder fa_2(.a(a[1]), .b(b[1]), .Cin(w_carry1), .sum(sum[1]), .carry(w_carry2));
    Full_Adder fa_3(.a(a[2]), .b(b[2]), .Cin(w_carry2), .sum(sum[2]), .carry(w_carry3));
    Full_Adder fa_4(.a(a[3]), .b(b[3]), .Cin(w_carry3), .sum(sum[3]), .carry(carry));
    
endmodule
