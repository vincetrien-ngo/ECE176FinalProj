module s_function(input [47:0] in, output reg [31:0] out);
// need to import funtions s1-s8 once finished
	
	always@(in) begin
		// S1
		out[31:28] <= s1(in[47:42]);
		out[27:24] <= s2(in[41:36]);
		out[23:20] <= s3(in[35:30]);
		out[19:16] <= s4(in[29:24]);
		out[15:12] <= s5(in[23:18]);
		out[11:8] <= s6(in[17:12]);
		out[7:4] <= s7(in[11:6]);
		out[3:0] <= s8(in[5:0]);

endmodule		
