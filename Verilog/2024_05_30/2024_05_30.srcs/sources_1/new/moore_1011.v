`timescale 1ns / 1ps

module moore1011dector(
    input clk, rstn, din,
    output reg [2:0] state,
    output dout
    ); parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100;
    always@(posedge clk or negedge rstn)begin
        if(!rstn) state <= S0;
        else begin
            case(state)
                S0: if(din) state <= S1;
                    else state <= S0;
                S1: if(din) state <= S1;
                    else state <= S2;
                S2: if(din) state <= S3;
                    else state <= S0;   
                S3: if(din) state <= S4;
                    else state <= S2; 
                S4: if(din) state <= S1;
                    else state <= S2;
            endcase end end
            assign dout = (state == S4);                                                                            
endmodule
