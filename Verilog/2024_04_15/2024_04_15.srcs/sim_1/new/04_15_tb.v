`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/15 14:03:38
// Design Name: 
// Module Name: 04_15_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module comparator_tb;
reg a;
reg b;
reg [2:0] y;
comparator dut(.a(a), .b(b), .y(y));    // 객체 생성 
initial begin
a=0; b=0;
#10 a=0; b=0;  // # : 시간
#10 a=1; b=0;
#10 a=0; b=1;
#10 a=1; b=1;
#10 $finish;
end
endmodule