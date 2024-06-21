//********************************************************************
//
//  mc_pwm.v : pwm module
//	- Frequency = 100M / ((freq+1)*101), 15 hz ~ 990 Khz
//	- duty -> 0 ~ 100
//  Written by alex
//********************************************************************

module mcu_pwm (
	reset,
	mclk,		// 100 Mhz
	freq,		// 0 : 100M/101 = 990 Khz
			// 1 : 100M/(2*101) = 495 Khz
			// 65535 : 100M / (65536*101) = 15 Hz
	duty,		// 0 ~ 100
	out
);

input 		reset;
input 		mclk;
input 	[15:0]	freq;
input 	[6:0]	duty;
output 		out;

reg	[15:0]	cnt_freq;
reg	[6:0]	cnt_duty;
always @(posedge mclk or negedge reset)
begin
	if(!reset)	begin
		cnt_freq <= 16'd0;
		cnt_duty <= 7'd0;
	end	
	else	begin
		cnt_freq <= (cnt_freq>=freq) ? 16'd0 : cnt_freq + 1'b1;
		cnt_duty <= (cnt_freq==16'd0) ? ((cnt_duty>=7'd100) ? 7'd0 : (cnt_duty+1'b1)) : cnt_duty;
	end
end

reg		out;
always @(posedge mclk or negedge reset)
begin
	if(!reset)	out <= 1'b0;
	else		out <= 	(duty == 7'd0    ) ? 1'b0 :
				(duty == 7'd100  ) ? 1'b1 :
				(cnt_duty == 7'd0) ? 1'b1 :
				(cnt_duty == duty) ? 1'b0 : out;
end


endmodule
				
