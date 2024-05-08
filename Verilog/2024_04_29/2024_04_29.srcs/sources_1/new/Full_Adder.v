`timescale 1ns / 1ps

module Full_Adder(
    input a,b,Cin,
    output sum, carry
    );
    wire w_sum1, w_carry1, w_carry2;
    Half_Adder ha_1(.a(a), .b(b), .sum(w_sum1), .carry(w_carry2));
    Half_Adder ha_2(.a(w_sum1), .b(Cin), .sum(sum), .carry(w_carry1));

    assign carry = w_carry1 | w_carry2;
endmodule
