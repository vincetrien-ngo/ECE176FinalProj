module p_post_sf(input [1:32] in,  output  [32:1] out);

	assign out = 
				{	in[16], in[7], in[20], in[21], in[29], in[12], in[28], in[17],
					in[1], in[15], in[23], in[26], in[5], in[18], in[31], in[10],
					in[2], in[8], in[24], in[14], in[32], in[27], in[3], in[9],
					in[19], in[13], in[30], in[6], in[22], in[11], in[4], in[25]};
					
endmodule