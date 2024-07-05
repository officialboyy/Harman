`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/23 13:29:29
// Design Name: 
// Module Name: led_control
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


module led_counter(
    reset, clock, led
    );
    input reset;
    input clock;
    output [3:0] led;

    reg [25:0] cnt;
    always @(posedge clock or negedge reset) begin
        if(~reset)  cnt <= 26'd0;
        else    cnt <= (cnt==26'd50000000) ? 26'd0 : cnt+1'b1;
    end

    reg [3:0] led;
    always @(posedge clock or negedge reset) begin
        if(~reset)  led <= 4'b0;
        else    led <= (cnt==26'd50000000) ? led+1'b1 : led;
    end
endmodule
