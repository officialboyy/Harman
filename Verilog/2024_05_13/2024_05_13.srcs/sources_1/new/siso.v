`timescale 1ns / 1ps

module register4withload
#(parameter N=4) (
    input clk, load,
    input [N-1:0] I,
    output [N-1:0] Q
);
    reg [N-1:0] Q_reg, Q_next;
    always @(posedge clk) begin
        Q_reg <= Q_next;
    end

    always @(I, load) begin
        if(load) Q_next = I;
        else Q_next = Q_reg;
    end
    assign Q = Q_reg;
endmodule

/*
module simple_register
#(parameter N=4) (
    input clk,
    input [N-1:0] I,
    output [N-1:0] Q
);
    reg [N-1:0] Q_reg, Q_next;
    always @(posedge clk) begin
        Q_reg <= Q_next;
    end

    always@(I) begin
        Q_next = I;
    end
    assign Q = Q_reg;
endmodule
*/

/*
module piso(
    input CLK, SH_LDN,
    input [3:0] D,
    output [3:0] Q
);
reg [3:0] BUFF;
always @(negedge SH_LDN or posedge CLK) begin
    if(!SH_LDN) BUFF <=D;
    else begin
        BUFF[3:1] <= BUFF[2:0];
        BUFF[0] <= 1'b0;
    end
end
assign Q = BUFF[3:0];
endmodule
*/

/*
module shift4(
    input RESTN, DATA_IN, CLK,
    output reg [3:0] Q
);
    always @(posedge RESTN or posedge CLK) begin
        if(RESTN == 1'b1) Q = 4'b0000;
        else begin
            Q[2:0] <= Q[3:1];
            Q[3] <= DATA_IN;
        end
    end
endmodule
*/

/*
module siso(
    input CLK, RESTN, DIN,
    output Q
    );
    reg [3:0] BUFF;

    always @(negedge RESTN or posedge CLK) begin
        if(RESTN == 1'b0) BUFF = 4'b0000;
        else begin
            BUFF[3:1] <= BUFF[2:0];
            BUFF[0] <= DIN;
        end
    end
    assign Q = BUFF[3];
endmodule
*/