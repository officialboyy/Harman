`timescale 1ns / 1ps

module onecounter(
	input [7:0] d,
	output reg [6:0] fnd,	
	output fndsel1,fndsel2,fndsel3,fndsel4
	);
	
	integer onecount , i=0;
	always@(d or onecount)begin
	onecount =0;
	for(i=0;i<8;i=i+1)
		begin
			if(d[i])
				onecount = onecount +1;
		end
	end
	
	assign fndsel1 = 1'b0;
	assign fndsel2 = 1'b1;
	assign fndsel3 = 1'b1;
	assign fndsel4 = 1'b1;
	always@(onecount)begin
		case(onecount)
			0 : fnd = 7'b1000000;
			1 : fnd = 7'b1111001;
			2 : fnd = 7'b0100100;
			3 : fnd = 7'b0110000;
			4 : fnd = 7'b0011001;
			5 : fnd = 7'b0010010;
			6 : fnd = 7'b0000010;
			7 : fnd = 7'b1111000;
			8 : fnd = 7'b0000000;
			default : fnd = 7'b1111111;
		endcase
	end
endmodule

/*
module taskcal;
    reg[4:0] A; reg[4:0] B; reg[4:0] AB_AND, AB_OR, AB_XOR;
    parameter delay = 10;
    initial begin
        #1 A = 4'b1010; B = 4'b0111;
    end
    always@ (A,B) begin
        bitwise_opr( AB_AND, AB_OR, AB_XOR, A, B);
    end
    task bitwise_opr;
        output [4:0] ab_and, ab_or, ab_xor;
        input [4:0] a,b;
        begin
            #10 ab_and = a&b;
                ab_or = a|b;
                ab_xor = a^b;
        end
    endtask
endmodule
*/
/*
module example_of_task;
    reg [3:0] out1, out2;
    initial begin
        plus_two_numbers(5, 4, out1);
        #1;
    end
    initial begin
        plus_two_numbers(5, 8, out2);
        #1;
    end
    initial begin
        #1 $finish;
    end
    task plus_two_numbers(
        input [3:0] in1, input [3:0] in2, output [3:0] result
    );
    begin
        result = in1 + in2;
    end
    endtask
endmodule
*/

/*
module task2(
    input [7:0] data_word,
    output reg [3:0] bit_count
);
    always @(data_word) begin
        count_ones(data_word, bit_count);
    end
    task count_ones;
        input [7:0] reg_a;
        output reg [3:0] count;
        reg [7:0] temp_reg;
        begin
            count = 0;  temp_reg = reg_a;
            while (temp_reg) begin
                if (temp_reg[0])
                    count = count + 1;
                    temp_reg = temp_reg >> 1;
            end
        end
    endtask
endmodule
*/