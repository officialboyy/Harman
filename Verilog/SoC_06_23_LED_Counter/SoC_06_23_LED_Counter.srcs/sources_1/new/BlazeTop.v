`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/23 13:33:51
// Design Name: 
// Module Name: BlazeTop
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


module BlazeTop(
    reset, sys_clk, uart_rxd, uart_txd, led
    );
    input reset;
    input sys_clk;
    input uart_rxd;
    output uart_txd;
    output [3:0] led;

    system_wrapper  system_wrapper(
        .reset(reset),
        .sys_clk(sys_clk),
        .uart_rxd(uart_rxd),
        .uart_txd(uart_txd)
    );

    wire [3:0] led;
    led_counter led_counter(
        .reset(reset),
        .clock(sys_clk),
        .led(led)
    );
endmodule
