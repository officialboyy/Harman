`timescale 1ns / 1ps

module up_down_tb;
    reg rstn, clk, up, down;
    wire [3:0] state;
    parameter t=7;
    up_down dut(.rstn(rstn), .clk(clk), .up(up), .down(down), .state(state));

    initial begin
        clk=0;
        repeat(10)
        #t clk=~clk;
    end
    initial begin
        rstn = 1; #2;
        rstn = 0; #2;
        rstn = 1; #35;
        rstn = 0; #10;
        rstn = 1; #10;
        rstn = 0; #10
        $finish;
    end
    initial begin
        up=0; down=1; #5
        up=~up; down=~down; #5
        up=~up; down=~down; #5
        up=~up; down=~down; #5
        up=~up; down=~down; #5
        up=~up; down=~down; #5
        up=~up; down=~down; #5
        up=~up; down=~down; #5
        $finish;
    end
endmodule
/*
module counter2fsm_tb;
    reg clk, rstn;
    wire [1:0] cnt;
    wire y;
    parameter t = 7;
    counter2fsm dut(.clk(clk), .rstn(rstn), .cnt(cnt), .y(y));

    initial begin
        clk=0;
        repeat(10)
        #t clk=~clk;
    end
    initial begin
        rstn = 1; #2;
        rstn = 0; #2;
        rstn = 1; #35;
        rstn = 0; #10;
        rstn = 1; #10;
        rstn = 0;
    end
endmodule
*/
/*
module jkff_tb;
    reg j, k, clk, reset;
    wire q;
    parameter t = 5;
    jkff dut(.j(j), .k(k), .clk(clk), .reset(reset), .q(q));

    initial begin
        reset = 1; #2;
        reset = 0; #2;
        reset = 1; #35;
        reset = 0;
    end
    initial begin
        {j,k} = 2'b00;  #5
        {j,k} = 2'b01;  #5
        {j,k} = 2'b10;  #5
        {j,k} = 2'b11;  #5
        {j,k} = 2'b00;  #5
        $finish;
    end
    initial begin
        clk=0;
        repeat(10)
        #t clk=~clk;
    end
endmodule
*/
/*
module dff_tb;
    reg d, clk, reset;
    wire q;
    parameter t = 7;
    dff dut(.d(d), .clk(clk), .reset(reset), .q(q));

    initial begin
        reset = 1; #2;
        reset = 0; #2 
        reset = 1; #35
        reset = 0;
    end
    initial begin
        d=0; #5 
        d=1; #5 d=0; #10 
        d=0; #5 d=0; #5 
        d=1; #3 d=0; #10 
        d=1; #5 d=0; #10 
        $finish;
    end
    initial begin
        clk=0;
        repeat(10)      
        #t clk = ~clk;
    end
endmodule
*/
/*
module dlatch_tb;
    reg en, d;
    wire q;
    dlatch dut(.en(en), .d(d), .q(q));

    initial begin
        en=0; d=0;
        #10 en=1; d=0;
        #10 en=1; d=1;
        #10 en=0; d=0;
        #10 en=0; d=1;
        #10 $finish;
    end
endmodule
*/
/*
module bytetobcd_tb;
    reg [7:0] d;
    wire [11:0] a;
    integer i;
    bytetobcd dut(.d(d), .a(a));
    
    initial begin
        for(i=0; i<256; i=i+1)begin
            d = i;
            #3 ;
        end
    end
endmodule
*/