`timescale 1ns / 1ps

module AND_tb;
reg a;      // reg�� ���� ���� �Ҵ�Ǳ���� ���� ���� �����Ѵ�. 
reg b;  
wire y0;    // wire�� �ٸ� element���� ������ �ִµ� ���ȴ�. ��, ������ ���ἱ. Ư�� �� ���� �Ұ���.

// 04_22 dut(a,b,y0);   // ��ü ���� ( ������ ���� ��� )
AND dut(.a(a), .b(b), .y0(y0));   // ( �̸��� ���� ��� )
// .a(a) -> �տ� a�� module.. �ڿ� a�� stimulus..

initial begin
    a=0;    b=0;
    #10 a=0;    b=0;
    #10 a=1;    b=0;
    #10 a=0;    b=1;
    #10 a=1;    b=1;
    #10 $finish;
end

endmodule
