`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/15 14:02:21
// Design Name: 
// Module Name: 04_15
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

module comparator(
input a,
input b,
output reg [2:0] y
);
/*
always@(a or b)begin    // always : behavior ���� 
    if(a>b)begin
    y[0] = 1; y[1] = 0; y[2] = 0;
    end else if(a==b) begin
    y[0] = 0; y[1] = 1; y[2] = 0;
    end else begin
    y[0] = 0; y[1] = 0; y[2] = 1;
    end
end
*/
always@(a or b) begin
    case({a,b})
        2'b00 : begin y[0] = 0; y[1] = 1; y[2] = 0; end     // 2'b00���� 2 : 2bit, b : bit�� ǥ���϶�. => 00, 01, 10..
        2'b01 : begin y[0] = 0; y[1] = 0; y[2] = 1; end     // ������� ���� 4'd5�̸� 4bit decimal 
        2'b10 : begin y[0] = 1; y[1] = 0; y[2] = 0; end     // 4'hd : hexa decimal
        2'b11 : begin y[0] = 1; y[1] = 0; y[2] = 0; end
    endcase
end
endmodule

/*
module and1(    // and1 : �̸�
input a,
input b,
output y1,
output y2
	);
	and(y1, a, b);  // AND Gate, y1 : ���, (a, b) : �Է�
	assign y2 = a & b;  // assign : �Ҵ��ϴ�   // dataflow type
	
	& : bit ����
	&& : ����
	
endmodule


module and1_tb ;
reg a,b;  // register
wire y1;
wire y2;
and1 dut(.a(a), .b(b), .y1(y1), .y2(y2));  // ��ü ����
initial begin  // initial : �ʱ⿡ �ѹ��� ���� �ϰԲ�.
a=0; b=0;
#10 a=0; b=1;  // # : �ð�
#10 a=1; b=0;
#10 a=0; b=1;
#10 a=1; b=1;
#10 $finish;
end
*/
/*
module comp(    // comparator
    input a,
    input b,
    output y0,  
    output y1,
    output y2
);
    wire abar;
    wire bbar;
    wire abxor;
    
    not(bbar, b);   
    and(y0, bbar, a);
    xor(abxor, a, b);
    not(y1, abxor);             
    not(abar, a);
    and(y2, abar, b);
endmodule
*/
