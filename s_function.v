
module s_function(input [47:0] in, output reg [31:0] out);
`include "s1.v"
`include "s2.v"
`include "s3.v"
`include "s4.v"
`include "s5.v"
`include "s6.v"
`include "s7.v"
`include "s8.v"
	
	always@(in) begin
		
		s1(out[31:28], in[47:42]);
		s2(out[27:24], in[41:36]);
		s3(out[23:20], in[35:30]);
		s4(out[19:16], in[29:24]);
		s5(out[15:12], in[23:18]);
		s6(out[11:8], in[17:12]);
		s7(out[7:4], in[11:6]);
		s8(out[3:0], in[5:0]);
	end
endmodule		
