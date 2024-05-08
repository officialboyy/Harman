`timescale 1ns / 1ps

module comparator_tb;
reg a;
reg b;
reg [2:0] y;
comparator dut( .a(a), .b(b), .y(y) );   // ê°ì²´ ?ƒ?„± 
initial begin
a=0; b=0;
#10 a=0; b=0;  // # : ?‹œê°?
#10 a=1; b=0;
#10 a=0; b=1;
#10 a=1; b=1;
#10 $finish;
end
endmodule
