`timescale 1ns/1ps

module clock_counter (
    resetn, clk, sw, led
);
    input resetn;
    input clk;
    input [1:0] sw;
    output [3:0] led;

    wire [3:0] led0, led1, led2;
    wire w_locked ;
    wire w_clk200, w_clk100, w_clk50 ;
    wire w_clk2hz, w_clk1hz, w_clk1_2hz;
    wire [3:0] led = (sw==2'b00) ? led0 : (sw==2'b01) ? led1 : led2;
    
    clockdivider #(.N(50_000_000)) U0 (
        .clk(w_clk200),
        .reset(resetn),
        .clk1000Hz(w_clk2hz)
    );

    counter U1 (
        .inclk(w_clk2hz),
        .reset(resetn),
        .out_counter(led0) 
    );

    clockdivider #(.N(50_000_000)) U2 (
        .clk(w_clk100),
        .reset(resetn),
        .clk1000Hz(w_clk1hz)
    );
    
    counter U3 (
        .inclk(w_clk1hz),
        .reset(resetn),
        .out_counter(led1)
    );

    clockdivider #(.N(50_000_000)) U4 (
        .clk(w_clk100),
        .reset(resetn),
        .clk1000Hz(w_clk1_2hz)
    );

    counter U5 (
        .inclk(w_clk1_2hz),
        .reset(resetn),
        .out_counter(led2)
    );

    clk_wiz_0 U6
    (
        // Clock out ports
        .clk_out1(w_clk100),     // output clk_out1
        .clk_out2(w_clk50),     // output clk_out2
        .clk_out3(w_clk200),     // output clk_out3
        // Status and control signals
        .resetn(resetn), // input resetn
        .locked(w_locked),       // output locked
        // Clock in ports
        .clk_in1(clk)      // input clk_in1
    );
endmodule