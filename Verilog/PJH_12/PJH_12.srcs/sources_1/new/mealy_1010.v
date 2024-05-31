`timescale 1ns / 1ps

module mealy_1010(
    input clk, rstn, din,
    output reg [0:1] state,
    output dout
    );
    parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;

    always @(posedge clk or negedge rstn) begin
        if(!rstn) state <= S0;
        else begin
            case(state)
            S0: if(din) state <= S1;
                else state <= S0;
            S1: if(din) state <= S1;
                else state <= S2;
            S2: if(din) state <= S3;
                else state <= S0;
            S3: if(din) state <= S1;
                else state <= S0;
            endcase
        end
    end
    assign dout = (state ==3) && (din == 0);
endmodule
