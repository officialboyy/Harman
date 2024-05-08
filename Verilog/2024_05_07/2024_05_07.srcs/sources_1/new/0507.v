`timescale 1ns / 1ps

module fnd2(
input clk,
input [3:0] sw0,
input [3:0] sw1,
output reg[6:0]  fnd,
output  reg fndsel2,
output  reg fndsel1

    );
 reg clk100hz;
 integer m = 0 ; 
  reg [6:0] fnd0;
 reg [6:0] fnd1; 
 
    
    
always@(posedge clk) begin
    case(sw0)
    4'b0000: fnd0 = 7'b1000000;
    4'b0001: fnd0 = 7'b1111001;
    4'b0010: fnd0 = 7'b0100100;
    4'b0011: fnd0 = 7'b0110000;
    4'b0100: fnd0 = 7'b0011001;
    4'b0101: fnd0 = 7'b0010010;
    4'b0110: fnd0 = 7'b0000010;
    4'b0111: fnd0 = 7'b1111000;
    4'b1000: fnd0 = 7'b0000000;
    4'b1001: fnd0 = 7'b0011000;
    endcase
    
    case(sw1)
    4'b0000 : fnd0 = 7'b1000000;
    4'b0001 : fnd0 = 7'b1111001;
    4'b0010 : fnd0 = 7'b0100100;
    4'b0011 : fnd0 = 7'b0110000;
    4'b0100 : fnd0 = 7'b0011001;
    4'b0101 : fnd0 = 7'b0010010;
    4'b0110 : fnd0 = 7'b0000010;
    4'b0111 : fnd0 = 7'b1011000;
    4'b1000 : fnd0 = 7'b0000000;
    4'b1001 : fnd0 = 7'b0010000;
    endcase
    end
    
    always@(posedge clk) begin
    if(m >=499999) begin 
        m <= 0;
        clk100hz = ~clk100hz ;
     end else
        m <= m +1 ;
     end      

    always@(clk100hz, fnd0, fnd1)
    begin
        if(clk100hz)
        begin
            fndsel1 = 1'b0;
            fndsel2 = 1'b1;
            fnd = fnd0 ;
         end 
         else
          begin
            fndsel1 = 1'b1;
            fndsel2 = 1'b0;
            fnd = fnd1 ;
          end
       end 
  
endmodule
/*
module up_down(
    input rstn, clk, up, down,
    output reg [3:0] state
);
    reg [3:0] next_state;
    always@(posedge clk or negedge rstn)begin
        if(!rstn)   state=4'h0;
        else state<=next_state;
    end
    always@(up or down or state)begin
        if(up & !down)begin
            if(state==9)    next_state=0;
            else next_state=state+1;
        end
        else if(!up & down)begin
            if(state==0)    next_state=9;
            else next_state=state-1;
        end
        else next_state=state;
    end
endmodule
*/
/*
module counter2fsm(
    input clk, rstn,
    output reg [1:0] cnt,
    output y
);
    reg [1:0] next_cnt;
    always@(posedge clk, negedge rstn)begin     // state[Sequential Circuit]
        if(!rstn) cnt<=2'b00;
        else cnt<=next_cnt;     // This 'cnt' is present state.
    end
    always@(cnt)begin
        case(cnt)
            2'b00 : next_cnt=2'b01;     2'b01 : next_cnt=2'b10;
            2'b10 : next_cnt=2'b11;     2'b11 : next_cnt=2'b00;
        endcase
    end
    assign y=cnt==2'b11;    // y=1 when cnt == 2'b11
endmodule
*/
/*
module jkff(
    input j, k, clk, reset,
    output reg q
);
//reg buff
    always@(posedge clk, negedge reset)
    begin
        if(!reset)  q<=0;
        else if({j,k}==2'b00)   q<=q;
        else if({j,k}==2'b10)   q<=1'b1;
        else if({j,k}==2'b01)   q<=1'b0;
        else    q<=~q;
    end
endmodule
*/
/*
module dff(
    input d, clk, reset,
    output reg q
);
    always@(posedge clk, negedge reset)begin
        if(!reset)
            q<=0;
        else
            q<=d;
    end
endmodule
*/
/*
module dlatch(
    input en,
    input d,
    output q
);
    reg q;
    always@(en or d)
    if(en)q = d;
    // assign q = en? d:q;
endmodule
*/
/*
module onecounter(
    input [11:0] d,
    output [15:0] a
);
    reg [3:0] thousands, hundreds, tens, ones;
    reg [9:0] temp_reg1;
    reg [6:0] temp_reg2;
    always@(d)begin
        thousands = d/1000;
        temp_reg1 = d%1000;
        hundreds = temp_reg1/100;
        temp_reg2 = temp_reg1%100;
        tens = temp_reg2/10;
        ones = temp_reg2%10;
    end
    assign a = {thousands, hundreds, tens, ones};
endmodule
*/
/*
module bytetobcd(
    input [7:0] d,
    output [11:0] a
    );

    reg [3:0] hundreds, tens, ones;
    reg [6:0] temp_reg;
    always@(d)begin
        hundreds = d/100;
        temp_reg = d%100;
        tens = temp_reg/10;
        ones = temp_reg%10;
    end
    assign a = {hundreds, tens, ones};
endmodule
*/