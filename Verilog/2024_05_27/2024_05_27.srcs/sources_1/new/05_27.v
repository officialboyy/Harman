`timescale 1ns / 1ps



/*
module mealy110(
    input clk, reset, din,
    output reg [1:0] state,
    output dout
);
    parameter [1:0] S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;
    always @(posedge clk or negedge reset) begin
        if(!reset) begin
            state <= S0;
        end
        else begin
            case(state)
                S0: begin
                    if(din) state <= S1;
                    else state <= S0;
                end
                S1: begin
                    if(din) state <= S2;
                    else state <= S0;
                end
                S2: begin
                    if(din) state <= S2;
                    else state <= S0;
                end
            endcase
        end
    end
    assign dout = (state == S2) && (din == 0);
endmodule
*/

/*
module moore_110dector(
    input clk, reset, din,
    output dout,
    output reg [1:0] state
    );
    always @(posedge clk or negedge reset) begin
        if(!reset) begin
            state <= S0;
        end
        else begin
            case(state)
            S0: begin
                if(din) state <= S1;
                else state <= S0;
            end
            S1: begin
                if(din) state <= S2;
                else state <= S0;
            end
            S2: begin
                if(~din) state <= S3;
                else state <= S2;
            end
            S3: begin
                if(din) state <= S1;
                else state <= S0;
            end
            endcase
        end
    end
    assign dout = (state == S3);
endmodule
*/