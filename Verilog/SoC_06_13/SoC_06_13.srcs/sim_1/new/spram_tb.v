`timescale 1ns / 1ps

module spram_tb();

// from this point
reg reset, clock;

initial begin
    reset = 0;
    clock = 0;
    #10000 reset = 1;
end

always #5 clock = ~clock; // 100Mhz
// to this point => reset, clock(100Mhz) make

// from this point
reg [10:0] cnt; // cnt : 11 bit -> 0 ~ 2047
always @(posedge clock or negedge reset) begin
    if (~reset)
        cnt <= 11'b0;
    else
        cnt <= cnt+1'b1;
end
// to this point => cnt make (0 ~ 2047)

// from
reg [9:0] addr; // 10bit
always @(posedge clock or negedge reset) begin
    if (~reset)
        addr <= 10'b0;
    else
        addr <= ~cnt[10] ? 10'b0 : cnt[9:0];
end
// to => addr -> If cnt value=1024 ~ 2047, 0x00 ~ 0x3ff.

// from
reg ena;
always @(posedge clock or negedge reset) begin
    if (~reset)
        ena <= 1'b0;
    else
        ena <= ~cnt[10] ? 1'b0 : 1'b1;
end
// to => ena -> If cnt value=1024~2047, Enable(1).

// from
reg wea;
always @(posedge clock or negedge reset) begin
    if (~reset)
        wea <= 1'b0;
    else
        wea <= (cnt==11'b0) ? ~wea : wea;
end
// to => wea -> cnt value, write/read repeats in 2048 cycle.

// from
reg [3:0] line;
always @(posedge clock or negedge reset) begin
    if (~reset)
        line <= 4'b0;
    else
        line <= (~wea & (cnt==11'h7ff)) ? line+1'b1 : line;
end
// to => din -> high 4bits value(line)=increase 1 in (cnt value's 2048*2 cycle). Low 10 bits=addr value.

wire [15:0] din = {line, 2'b0, addr};
wire [15:0] dout1;
// spram1 module add -> output value : dout1
spram1 spram1_u1 (
    .clka(clock), .ena(ena), .wea(wea), .addra(addr), .dina(din), .douta(dout1)
);
wire [15:0] dout2 ;
// spram2
spram2 spram2_u1 (
    .clka(clock), .ena(ena), .wea(wea), .addra(addr), .dina(din), .douta(dout2)
);
wire [15:0] dout3 ;
// spram3
spram3 spram3_u1 (
    .clka(clock), .ena(ena), .wea(wea), .addra(addr), .dina(din), .douta(dout3)
);
wire [15:0] dout4 ;
// spram4
spram4 spram4_u1 (
    .clka(clock), .ena(ena), .regcea (1'b1), .wea(wea), .addra(addr), .dina(din), .douta(dout4)
);
wire [15:0] dout5 ;
// spram5
spram5 spram5_u1 (
    .clka(clock), .ena(ena), .regcea (1'b1), .wea(wea), .addra(addr), .dina(din), .douta(dout5)
);
wire [15:0] dout6 ;
// spram6
spram6 spram6_u1 (
    .clka(clock), .ena(ena), .regcea (1'b1), .wea(wea), .addra(addr), .dina(din), .douta(dout6)
);

// spram1 ~ spram3 : no regcea port
// spram4 ~ spram6 : 1'b1 in regcea port
endmodule
