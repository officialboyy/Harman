`timescale 1ns / 1ps

module AND(
    input a,    // 별도 선언 없으면, wire 형식으로 선언됨. 1bit wire.
    input b,
    output y0
    );
    and(y0, a, b);
endmodule
