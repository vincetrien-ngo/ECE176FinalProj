
module s_function(input [47:0] in, output [31:0] out);

	//wire [31:0] wout;
	
		
	s1 ss1(.s1(out[31:28]), .in(in[47:42]));
	s2 ss2(.s2(out[27:24]), .in(in[41:36]));
	s3 ss3(.s3(out[23:20]), .in(in[35:30]));
	s4 ss4(.s4(out[19:16]), .in(in[29:24]));
	s5 ss5(.s5(out[15:12]), .in(in[23:18]));
	s6 ss6(.s6(out[11:8]), .in(in[17:12]));
	s7 ss7(.s7(out[7:4]), .in(in[11:6]));
	s8 ss8(.s8(out[3:0]), .in(in[5:0]));
	//assign out = wout;
	

endmodule		
