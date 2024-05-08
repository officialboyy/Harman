`timescale 1ns / 1ps

module MUX_gatelevel(
    input a, b,
    input A, B, C, D,
    output Q
    );
    wire a_not, b_not;
    wire A_pick, B_pick, C_pick, D_pick;
    
    not(a_not, a);
    not(b_not, b);
    
    and(A_pick, A, b_not, a_not);
    and(B_pick, B, b_not, a);
    and(C_pick, C, b, a_not);
    and(D_pick, D, a, b);
    
    or(Q, A_pick, B_pick, C_pick, D_pick);
endmodule
