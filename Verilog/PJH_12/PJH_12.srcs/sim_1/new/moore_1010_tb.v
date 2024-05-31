`timescale 1ns / 1ps

module moore_1010_tb;
    reg clk, rstn, din;
    wire [2:0] state;
    wire dout;

    moore_1010 dut(.clk(clk), .rstn(rstn), .din(din), .state(state), .dout(dout));

    initial clk = 0;
    always #5 clk = ~clk;  

    initial begin 
        rstn = 1; #2
        rstn = 0; #2 
        rstn = 1; 
    end

    initial begin
        din=0; #10 din=1; #10 din=0; #10 din=1; #10 din=0; #10
        din=1; #10 din=0; #10 din=1; #10 din=0; #10 din=1; #10
        din=1; #10 din=0; #10 din=1; #10 din=0; #10 din=0; #10
        $finish;
    end
endmodule
