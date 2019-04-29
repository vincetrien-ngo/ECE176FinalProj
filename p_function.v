module p_function #(parameter N = 64, M = 64) (input [N-1:0] in, input [2:0] sel, output [M-1:0] out);
	
	// inverse permutation (IP^1)
	if( sel == 3'b001)
		assign out = 
				{	in[40], in[8], in[48], in[16], in[56], in[24], in[64], in[32],
					in[39], in[7], in[47], in[15], in[55], in[23], in[63], in[31],
					in[38], in[6], in[46], in[14], in[54], in[22], in[62], in[30],
					in[37], in[5], in[45], in[13], in[53], in[21], in[61], in[29],
					in[36], in[4], in[44], in[12], in[52], in[20], in[60], in[28],
					in[35], in[3], in[43], in[11], in[51], in[19], in[59], in[27],
					in[34], in[2], in[42], in[10], in[50], in[18], in[58], in[26],
					in[33], in[1], in[41], in[9], in[49], in[17], in[57], in[25]};
	
	// expansion permutation (E)
	else if( sel == 3'b010)
		assign out = 
				{	in[32], in[1], in[2], in[3], in[4], in[5], 
					in[4], in[5], in[6], in[7], in[8], in[9], 
					in[8], in[9], in[10], in[11], in[12], in[13], 
					in[12], in[13], in[14], in[15], in[16], in[17], 
					in[16], in[17], in[18], in[19], in[20], in[21], 
					in[20], in[21], in[22], in[23], in[24], in[25], 
					in[24], in[25], in[26], in[27], in[28], in[29], 
					in[28], in[29], in[30], in[31], in[32], in[1]};
	
	// permutation function (P)
	// after s function	
	else if( sel == 3'b011)
		assign out = 
				{	in[16], in[7], in[20], in[21], in[29], in[12], in[28], in[17],
					in[1], in[15], in[23], in[26], in[5], in[18], in[31], in[10],
					in[2], in[8], in[24], in[14], in[32], in[27], in[3], in[9],
					in[19], in[13], in[30], in[6], in[22], in[11], in[4], in[25]};
	
	// key perm choice one (PC-1)
	else if( sel == 3'b100)
		assign out = 
				{	in[57], in[49], in[41], in[33], in[25], in[17], in[9],
					in[1], in[58], in[50], in[42], in[34], in[26], in[18],
					in[10], in[2], in[59], in[51], in[43], in[35], in[27],
					in[19], in[11], in[3], in[60], in[52], in[44], in[36],
					in[63], in[55], in[47], in[39], in[31], in[23], in[15],
					in[7], in[62], in[54], in[46], in[38], in[30], in[22],
					in[14], in[6], in[61], in[53], in[45], in[37], in[29],
					in[21], in[13], in[5], in[28], in[20], in[12], in[4]};
	
	
	// key perm choice two	(PC-2)
	else if( sel == 3'b101)
		assign out = 
				{	in[14], in[17], in[11], in[24], in[1], in[5], in[3], in[28],
					in[15], in[6], in[21], in[10], in[23], in[19], in[12], in[4],
					in[26], in[8], in[16], in[7], in[27], in[20], in[13], in[2],
					in[41], in[52], in[31], in[37], in[47], in[55], in[30], in[40],
					in[51], in[45], in[33], in[48], in[44], in[49], in[39], in[56],
					in[34], in[53], in[46], in[42], in[50], in[36], in[29], in[32]};
					
	// initial permutation (IP)
	// default case but should instantiate with sel = 0
	else 
		assign out = 
				{	in[58], in[50], in[42], in[34], in[26], in[18], in[10], in[2],
					in[60], in[52], in[44], in[36], in[28], in[20], in[12], in[4],
					in[62], in[54], in[46], in[38], in[30], in[22], in[14], in[6],
					in[64], in[56], in[48], in[40], in[32], in[24], in[16], in[8],
					in[57], in[49], in[41], in[33], in[25], in[17], in[9], in[1],
					in[59], in[51], in[43], in[35], in[27], in[19], in[11], in[3],
					in[61], in[53], in[45], in[37], in[29], in[21], in[13], in[5],
					in[63], in[55], in[47], in[39], in[31], in[23], in[15], in[7]};
					
endmodule					