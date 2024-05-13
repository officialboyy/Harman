`timescale 1ns / 1ps

module register4withload_tb;
    parameter N=4;
    reg clk, load;
    reg [N-1:0] I;
    wire [N-1:0] Q;
    parameter t=5;

    register4withload dut(.clk(clk), .load(load), .I(I), .Q(Q));

    initial begin
        clk = 0;
        repeat(10)
        #t clk = ~clk;
    end

    initial begin
        load = 0; #5
        load = 1; #20
        load = 0; #5
        load = 1; #20
        load = 0; #5
        $finish;
    end

    initial begin
        I=4'b0000; #5
        I=4'b0001; #5
        I=4'b0010; #5
        I=4'b0011; #5
        I=4'b0100; #5
        I=4'b0101; #5
        I=4'b0110; #5
        I=4'b0111; #5
        I=4'b1000; #5
        I=4'b1010; #5
        I=4'b1111; #20
        $finish;
    end
endmodule

/*
module simple_register_tb;
    parameter N=4;
    reg clk;
    reg [N-1:0] I;
    wire [N-1:0] Q;
    parameter t=5;

    simple_register dut(.clk(clk), .I(I), .Q(Q));

    initial begin
        clk = 0;
        repeat(10)
        #t clk = ~clk;
    end

    initial begin
        I=4'b0000; #5
        I=4'b0001; #5
        I=4'b0010; #5
        I=4'b0011; #5
        I=4'b0100; #5
        I=4'b0101; #5
        I=4'b0110; #5
        I=4'b0111; #5
        I=4'b1000; #5
        I=4'b1010; #5
        I=4'b1111; #20
        $finish;
    end
endmodule
*/

/*
module piso_tb;
    reg CLK, SH_LDN;
    reg [3:0] D;
    wire [3:0] Q;
    parameter t = 5;

    piso dut(.SH_LDN(SH_LDN), .D(D), .CLK(CLK), .Q(Q));

    initial begin
        CLK = 0;
        repeat(10)
        #t CLK = ~CLK;
    end
    initial begin
        SH_LDN = 0; #10
        SH_LDN = 1; #50
        SH_LDN = 0; #5
        $finish;
    end
    initial begin
        D = 4'b1011; #70
        $finish;
    end
endmodule
*/

/*
module shift4_tb;
    reg RESTN, DATA_IN, CLK;
    wire [3:0] Q;
    parameter t = 5;

    shift4 dut(.RESTN(RESTN), .DATA_IN(DATA_IN), .CLK(CLK), .Q(Q));

    initial begin
        CLK = 0;
        repeat(10)
        #t CLK = ~CLK;
    end
    initial begin
        RESTN = 1; #2
        RESTN = 0; #2
        RESTN = 0; #35
        RESTN = 0; #10
        RESTN = 1; #10
        RESTN = 0; #10
        $finish;
    end
    initial begin
        DATA_IN = 0; #5
        DATA_IN = 1; #5
        DATA_IN = 1; #5
        DATA_IN = 1; #5
        DATA_IN = 1; #5
        DATA_IN = 0; #5
        DATA_IN = 0; #5
        DATA_IN = 0; #5
        DATA_IN = 0; #5
        $finish;
    end
endmodule
*/

/*
module siso_tb;
    reg CLK, RESTN, DIN;
    wire Q;
    parameter t = 5;

    siso dut(.CLK(CLK), .RESTN(RESTN), .DIN(DIN), .Q(Q));

    initial begin
        CLK = 0;
        repeat(10)
        #t CLK = ~CLK;
    end

    initial begin
        RESTN = 1; #2
        RESTN = 0; #2
        RESTN = 1; #35
        RESTN = 0; #10
        RESTN = 1; #10
        RESTN = 0; #10
        $finish;
    end

    initial begin
        DIN = 0; #5
        DIN = 1; #5
        DIN = 1; #5
        DIN = 1; #5
        DIN = 1; #5
        DIN = 1; #5
        DIN = 0; #5
        DIN = 0; #5
        DIN = 1; #5
        DIN = 0; #5
        $finish;
    end
endmodule
*/