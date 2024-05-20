`timescale 1ns / 1ps

module fnd_2(
    input clk, 
    input [3:0] sw0, input [3:0] sw1, input [3:0] sw2, input [3:0] sw3,
    output reg[6:0] fnd, reg[3:0] an
    //output reg fndsel1, output reg fndsel2, output reg fndsel3, output reg fndsel4
    );
reg [6:0] fnd0; reg [6:0] fnd1; reg [6:0] fnd2; reg [6:0] fnd3;
integer seg_cnt;

always@(posedge clk) begin
case(sw0)
    4'b0000: fnd0 = 7'b1000000;     4'b0001: fnd0 = 7'b1111001;
    4'b0010: fnd0 = 7'b0100100;     4'b0011: fnd0 = 7'b0110000;
    4'b0100: fnd0 = 7'b0011001;     4'b0101: fnd0 = 7'b0010010;
    4'b0110: fnd0 = 7'b0000010;     4'b0111: fnd0 = 7'b1111000;
    4'b1000: fnd0 = 7'b0000000;     4'b1001: fnd0 = 7'b0010000;
endcase

case(sw1)
    4'b0000: fnd1 = 7'b1000000;     4'b0001: fnd1 = 7'b1111001;
    4'b0010: fnd1 = 7'b0100100;     4'b0011: fnd1 = 7'b0110000;
    4'b0100: fnd1 = 7'b0011001;     4'b0101: fnd1 = 7'b0010010;
    4'b0110: fnd1 = 7'b0000010;     4'b0111: fnd1 = 7'b1111000;
    4'b1000: fnd1 = 7'b0000000;     4'b1001: fnd1 = 7'b0010000;
endcase

case(sw2)
    4'b0000: fnd2 = 7'b1000000;     4'b0001: fnd2 = 7'b1111001;
    4'b0010: fnd2 = 7'b0100100;     4'b0011: fnd2 = 7'b0110000;
    4'b0100: fnd2 = 7'b0011001;     4'b0101: fnd2 = 7'b0010010;
    4'b0110: fnd2 = 7'b0000010;     4'b0111: fnd2 = 7'b1111000;
    4'b1000: fnd2 = 7'b0000000;     4'b1001: fnd2 = 7'b0010000;
endcase

case(sw3)
    4'b0000: fnd3 = 7'b1000000;     4'b0001: fnd3 = 7'b1111001;
    4'b0010: fnd3 = 7'b0100100;     4'b0011: fnd3 = 7'b0110000;
    4'b0100: fnd3 = 7'b0011001;     4'b0101: fnd3 = 7'b0010010;
    4'b0110: fnd3 = 7'b0000010;     4'b0111: fnd3 = 7'b1111000;
    4'b1000: fnd3 = 7'b0000000;     4'b1001: fnd3 = 7'b0010000;
endcase
end
always@(posedge clk) begin
if(seg_cnt == 400000-1) begin
    seg_cnt <=32'b0;
end else
    seg_cnt <= seg_cnt + 1'b1;
end

always@(posedge clk)
begin
    case(seg_cnt)
        0       : begin
                    an <= 4'b1110;
                    fnd <= fnd0;
                    end
        100000-1   : begin
                    an <= 4'b1101;
                    fnd <= fnd1;
                    end
        200000-1   : begin
                    an <= 4'b1011;
                    fnd <= fnd2;
                    end
        300000-1   : begin
                    an <= 4'b0111;
                    fnd <= fnd3;
                    end
        default : an <= an;                        
    endcase 
end        
endmodule

/*
module ringcounter(resetn,clk,y);
input resetn; input clk; output reg[7:0]y; reg[2:0]ring_state;
parameter s1=3'b000, s2=3'b001, s3=3'b010, s4=3'b011;
parameter s5=3'b100, s6=3'b101, s7=3'b110, s8=3'b111;
always@(posedge resetn or negedge clk)begin
if(!resetn) ring_state = s1;
else
case(ring_state)
s1:ring_state <=s2;  s2: ring_state <=s3;
s3:ring_state <=s4;  s4: ring_state <=s5;
s5:ring_state <=s6;  s6: ring_state <=s7;
s7:ring_state <=s8;  s8: ring_state <=s1;
default : ring_state <= s1;
endcase end
always@(ring_state)begin
case(ring_state)
s1 : y = 8'b10000000; s2 : y = 8'b01000000; s3 : y = 8'b00100000; s4 : y = 8'b00010000;
s5 : y = 8'b00001000; s6 : y = 8'b00000100; s7 : y = 8'b00000010; s8 : y = 8'b00000001;
default : y = 8'b00000000;
endcase end endmodule
*/

/*
module design_parity(
    input [3:0] pkt_h,
    input [7:0] pkt_d,
    output par_h, par_d, par_w
);
    parity_check #(.N(4)) u_parity_h(pkt_h, par_h);
    parity_check #(.N(8)) u_parity_d(pkt_d, par_d);
    parity_check #(.N(12)) u_parity_w({pkt_h, pkt_d}, par_w);
endmodule
module parity_check
#(parameter N = 8) (
    input [N-1:0] pkt,
    output par
);
    assign par = ^pkt;
endmodule
*/

/*
module sr7(
    input rst, din, clk,
    output dout,
    output reg [6:0] sr
);
    always@(posedge clk or negedge rst) begin
        if(!rst)
            sr <= 7'b0;
        else sr[6:0] <= {sr[5:0], din};
    end
    assign dout = (sr[6:0] == 7'b1010111)?1:0;
endmodule
*/

/*
module universal_register
#(parameter N = 4) (
    input clk, reset_n, input [N-1:0] I, input [1:0] s, input MSB_in, LSB_in, output [N-1:0] Q
);
    reg [N-1:0] Q_reg, Q_next;
    always@(posedge clk, negedge reset_n) begin
        if(!reset_n)
            Q_reg <= 4'b0;
        else Q_reg <= Q_next;
    end
    always@(Q_reg, MSB_in, LSB_in, I, s) begin
        Q_next = Q_reg;
        case (s)
            2'b00: Q_next = Q_reg;
            2'b01: Q_next = {MSB_in, Q_reg[N-1:1]};
            2'b10: Q_next = {Q_reg[2:0], LSB_in};
            2'b11: Q_next = I;
            default: Q_next = Q_reg;
        endcase
    end
    assign Q = Q_reg;
endmodule
*/

/*
module serialadder(
    input clk,rstb, load, [7:0] a, b,
    output [7:0] sum    );
wire [7:0] b_in;
parallel8shift dut1(.clk(clk), .rstb(rstb), .sin(sum_1bit), .din(a), .pout(sum), .load(load));
parallel8shift dut2(.clk(clk), .rstb(rstb), .sin(1'b0), .din(b), .pout(b_in), .load(load)); 
register_1     dut3(.clk(clk), .rstb(rstb), .din(cout), .dout(cin));
full_adder     dut4(.a(sum[0]), .b(b_in[0]), .cin(cin), .cout(cout), .s(sum_1bit));   
endmodule

module parallel8shift(
    input clk, rstb, load, sin,
    input [7:0] din,
    output reg [7:0] pout   );
always@(posedge clk or negedge rstb) begin
    if(!rstb) pout[7:0] <= 8'b0;
    else if(load) pout[7:0] <= din[7:0];
    else pout[7:0] <= {sin, pout[7:1]};
end
endmodule

module register_1(
    input clk, rstb, din,
    output reg dout );
always@(posedge clk or negedge rstb)begin
    if(!rstb) dout <= 1'b0;
    else dout <= din;
end
endmodule

module full_adder(
    input a,b,cin,
    output s,cout   );
assign cout = a&b | b&cin | cin&a;
assign s = a^b^cin;
endmodule
*/