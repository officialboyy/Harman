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
	
	
	