`timescale 1ns / 1ps

module AND(
    input a,    // ���� ���� ������, wire �������� �����. 1bit wire.
    input b,
    output y0
    );
    and(y0, a, b);
endmodule
