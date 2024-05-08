`timescale 1ns / 1ps

/*
module task2_tb;
reg [7:0] data_word;
wire [3:0] bit_count;

task2 dut(data_word, bit_count);
initial begin
    data_word = 0;
    #10 data_word = 1;
    #10 data_word = 3;
    #10 data_word = 5;
    #10 data_word = 7;
    #10 data_word = 10;
    #10 $finish;
end
endmodule
/*