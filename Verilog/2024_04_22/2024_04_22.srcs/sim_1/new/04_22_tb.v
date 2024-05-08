`timescale 1ns / 1ps

module AND_tb;
reg a;      // reg는 다음 값이 할당되기까지 현재 값을 유지한다. 
reg b;  
wire y0;    // wire는 다른 element들을 연결해 주는데 사용된다. 즉, 물리적 연결선. 특정 값 저장 불가능.

// 04_22 dut(a,b,y0);   // 객체 생성 ( 순서에 의한 방법 )
AND dut(.a(a), .b(b), .y0(y0));   // ( 이름에 의한 방법 )
// .a(a) -> 앞에 a는 module.. 뒤에 a는 stimulus..

initial begin
    a=0;    b=0;
    #10 a=0;    b=0;
    #10 a=1;    b=0;
    #10 a=0;    b=1;
    #10 a=1;    b=1;
    #10 $finish;
end

endmodule
