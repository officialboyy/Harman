`timescale 1ns / 1ps

module slow_clock_4hz(
    input clk_in,
    output reg clk_out
);
    reg [25:0] count = 0;
    always @(negedge clk_in) begin
        count <= count + 1;
        if(count == 12_500_000)
        begin
            count <=0;
            clk_out = ~clk_out;
        end
    end
endmodule

module d_ff(
    input clk_out, D,
    output reg Q,
    output reg Qbar
);
    always @(posedge clk_out) begin
        Q <= D;
        Qbar <= !Q;
    end
endmodule

module debounce(
    input pb, clk_in,
    output led
);
    wire clk_out;
    wire Q1, Q2, Q2_bar;
    slow_clock_4hz dut(.clk_in(clk_in), .clk_out(clk_out));
    d_ff d1(.clk_out(clk_out), .pb(pb), .Q1(Q1));
    d_ff d2(.clk_out(clk_out), .Q1(Q1), .Q2(Q2));
    assign Q2_bar = ~Q2;
    assign led = Q1 & Q2_bar;
endmodule

/*
module led4(
    input clk, reset, button, output [15:0] outled  );
reg [22:0] delay_count;
wire twenty_ms_enable = (delay_count == 0);
reg [15:0] outleds; reg [3:0] state;
wire [15:0] outled = outleds[15:0];
always@(posedge clk)
    if(reset) delay_count <= 0;
    else delay_count <= delay_count + 1;
always@(posedge clk)
    if(reset) state <= 0;
    else if(twenty_ms_enable) state <= state + 1;
    else state <= state;
always@(state, button)
    if(!button)
        case(state)
            0 : outleds <= 16'b 00000000_10000000 ;
            1 : outleds <= 16'b 00000000_01000000 ;
            2 : outleds <= 16'b 00000000_00100000 ;
            3 : outleds <= 16'b 00000000_00010000 ;
            4 : outleds <= 16'b 00000000_00001000 ;
            5 : outleds <= 16'b 00000000_00000100 ;
            6 : outleds <= 16'b 00000000_00000010 ;
            7 : outleds <= 16'b 00000000_00000001 ;
            8 : outleds <= 16'b 10000000_00000000 ;
            9 : outleds <= 16'b 01000000_00000000 ;
           10 : outleds <= 16'b 00100000_00000000 ;
           11 : outleds <= 16'b 00010000_00000000 ;
           12 : outleds <= 16'b 00001000_00000000 ;
           13 : outleds <= 16'b 00000100_00000000 ;
           14 : outleds <= 16'b 00000010_00000000 ;
           15 : outleds <= 16'b 00000001_00000000 ;
        endcase
        
        else if(button)
            case(state)
                0 : outleds <= 16'b 00000001_00000000 ;
                1 : outleds <= 16'b 00000010_00000000 ;
                2 : outleds <= 16'b 00000100_00000000 ;
                3 : outleds <= 16'b 00001000_00000000 ;
                4 : outleds <= 16'b 00010000_00000000 ;
                5 : outleds <= 16'b 00100000_00000000 ;
                6 : outleds <= 16'b 01000000_00000000 ;
                7 : outleds <= 16'b 10000000_00000000 ;
                8 : outleds <= 16'b 00000000_00000001 ;
                9 : outleds <= 16'b 00000000_00000010 ;
               10 : outleds <= 16'b 00000000_00000100 ;
               11 : outleds <= 16'b 00000000_00001000 ;
               12 : outleds <= 16'b 00000000_00010000 ;
               13 : outleds <= 16'b 00000000_00100000 ;
               14 : outleds <= 16'b 00000000_01000000 ;
               15 : outleds <= 16'b 00000000_10000000 ;
           endcase
       else state <= state;
endmodule
*/