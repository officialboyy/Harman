`timescale 1ns / 1ps



/*
module ringcounter_tb;
reg resetn; reg clk;
wire [7:0] y;

ringcounter dut(resetn,clk,y);
initial begin
clk = 0;
repeat(20) #10 clk = ~clk;
end

initial begin
resetn = 1; #2 resetn = 0; #2 resetn = 1; end
endmodule
*/

/*
module design_parity_tb;
    reg [3:0] pkt_h; reg [7:0] pkt_d;
    wire par_h, par_d, par_w;
    design_parity u_design_parity(.pkt_h(pkt_h), .pkt_d(pkt_d), .par_h(par_h), .par_d(par_d), .par_w(par_w));
    
    initial begin
        pkt_h = $random; pkt_d = $random; #10
        pkt_h = $random; pkt_d = $random; #10
        pkt_h = $random; pkt_d = $random; #10
        $finish;
    end
endmodule
*/

/*
module sr7_tb;
reg rst, din, clk;
wire dout;
wire [6:0] sr;
sr7 dut(rst, din, clk, dout, sr);

    initial begin
        clk = 0;
        repeat(30)
        #5 clk = ~clk;
    end
    initial begin
        rst = 1; #2
        rst = 0; #2
        rst = 1;
    end
    initial begin
        din = 0; #10
        din = 0; #10
        din = 1; #10
        din = 0; #10
        din = 1; #10
        din = 0; #10
        din = 1; #10
        din = 1; #10
        din = 1; #10
        din = 0; #10
        din = 1; #10
        din = 0; #10
        din = 1; #10
        din = 1; #10
        din = 1; #10
        din = 1; #10
        din = 0;
    end
endmodule
*/

/*
module universal_register_tb;
parameter N = 4;
parameter t = 20;
reg clk, reset_n;
reg [N-1:0] I;
reg [1:0] s;
reg MSB_in, LSB_in;
wire [N-1:0] Q;
universal_register dut(clk, reset_n, I, s, MSB_in, LSB_in, Q);

    initial begin
        clk = 0;
        repeat(40)
        #t clk = ~clk;
    end
    initial begin
        reset_n = 1; #2
        reset_n = 0; #2
        reset_n = 1;
    end
    initial begin
        I = 4'b0111; #250
        I = 4'b1101;
    end
    initial begin
        #5 s = 2'b11;
        #40 s = 2'b01;
        #40 s = 2'b01;
        #40 s = 2'b01;
        #40 s = 2'b10;
        #40 s = 2'b10;
        #40 s = 2'b10;
        #40 s = 2'b10;
        #40 s = 2'b10;
    end
    initial begin
        MSB_in = 0; LSB_in = 0;
    end
endmodule
*/

/*
module serialadder_tb;
reg clk, rstb, load;
reg [7:0] a, b;
wire [7:0] sum;
serialadder tb1(.clk(clk), .rstb(rstb), .load(load), .a(a), .b(b), .sum(sum));

initial clk = 0;
always #5 clk = ~clk;

initial begin
a[7:0] = 8'd23;  b[7:0] = 8'd49; rstb = 0; load = 0;
#10 rstb = 1;
#10 load = 1;
#10 load = 0;
#80 load = 1; a = 8'h03; b = 8'h89ff;
#10 load = 0;
#200 $stop;
end
endmodule
*/