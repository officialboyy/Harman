`timescale 1ns / 1ps

module SwitchEncoder(
    input clk, [15:0] sw,
    output reg [3:0] keyval
    );
    always @(posedge clk) begin
        if(sw==1)   keyval = 4'b0000;
        else if(sw==2)  keyval = 4'b0001;
        else if(sw==4)  keyval = 4'b0010;
        else if(sw==8)  keyval = 4'b0011;
        else if(sw==16)  keyval = 4'b0100;
        else if(sw==32)  keyval = 4'b0101;
        else if(sw==64)  keyval = 4'b0110;
        else if(sw==128)  keyval = 4'b0111;
        else if(sw==256)  keyval = 4'b1000;
        else if(sw==512)  keyval = 4'b1001;
        else if(sw==1024)  keyval = 4'b1010;
        else if(sw==2048)  keyval = 4'b1011;
        else if(sw==4096)  keyval = 4'b1100;
        else if(sw==8192)  keyval = 4'b1101;
        else if(sw==16384)  keyval = 4'b1110;
        else if(sw==32768)  keyval = 4'b1111;
        else ;
    end
endmodule
