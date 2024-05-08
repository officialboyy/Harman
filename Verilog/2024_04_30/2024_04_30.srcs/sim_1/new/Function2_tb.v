`timescale 1ns / 1ps

module Function2_tb;
reg [2:0] x,y,z,w;
reg e;
wire f;
wire [2:0] g;

Function2 dut(.x(x), .y(y), .z(z), .w(w), .e(e), .f(f), .g(g));

initial begin
    e = 1; x = 3'b000; y = 3'b000; z = 3'b000; w = 3'b000;
    #5 x=3'b001; y=3'b001; z=3'b001; w=3'b000;
    #5 x=3'b011; y=3'b000; z=3'b010; w=3'b010;
    #5 x=3'b010; y=3'b000; z=3'b010; w=3'b001;
    #5 x=3'b011; y=3'b000; z=3'b010; w=3'b001;
    #5 x=3'b100; y=3'b000; z=3'b010; w=3'b001;
    #5 $finish;
end
endmodule
