`timescale 1ns / 1ps

module Function2(
    input [2:0] x, input [2:0] y, input [2:0] z, input [2:0] w,
    input e,
    output f,
    output [2:0] g
    );
    function myfunction;
        input [2:0] a, b, c, d;
        begin
            myfunction = (a+b) + (c-d);
        end
    endfunction

    function [2:0] myfunction1;
        input [2:0] a, b, c, d;
        begin
            myfunction1 = ((a+b) - (c-d));
        end
    endfunction
    assign f = (myfunction(x,y,z,w)) ?e:0;
    assign g = myfunction1(x,y,z,w);
endmodule
