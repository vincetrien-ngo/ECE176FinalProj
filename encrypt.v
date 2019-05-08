/*
module encrypt (output [63:0] out, input [63:0] in, input [55:0] key);

	
	wire [31:0] w_Li [0:0] [0:16];
	wire [31:0] w_Ri [0:0] [0:16];
	wire [47:0] w_ex [0:0] [0:15];
	wire [47:0] w_xor [0:0] [0:15];
	wire [31:0] w_sf [0:0] [0:15];
	wire [31:0] w_pf [0:0] [0:15];
	
	
	wire [27:0] w_Ci [0:0] [0:16];
	wire [27:0] w_Di [0:0] [0:16];
	wire [27:0] w_CLs [0:0] [0:15];
	wire [27:0] w_DLs [0:0] [0:15];
	wire [47:0] w_Ki [0:0] [0:15];
	
	wire [15:0] round;
	
	genvar i;
	
	generate
		for(i=0; i<=15; i=i+1) begin
			expansion ex (.in(w_Ri[0][i]), .out(w_ex[0][i]));
			expon #(48) u2(.out(w_xor[0][i]),.in1(w_ex[0][i]),.in2(w_Ki[0][i]));
			s_function st (.in(w_xor[0][i]), .out(w_sf[0][i]));
			p_post_sf tp (.in(w_sf[0][i]), .out(w_pf[0][i]));
			expon #(32) u(.out(w_Ri[0][i+1]),.in1(w_pf[0][i]),.in2(w_Li[0][i]));
			equals #(32) u1(.out(w_Li[0][i+1]),.in(w_Ri[0][i]));
			
			keyMixer km (.in(w_Ci[0][i]), .nextkey(w_CLs[0][i]), .t(round[i]));
			keyMixer km1 (.in(w_Di[0][i]), .nextkey(w_DLs[0][i]), .t(round[i]));
			p_key2 pf (.in({w_CLs[0][i],w_DLs[0][i]}), .out(w_Ki[0][i]));
			equals #(28) u3(.out(w_Ci[0][i+1]),.in(w_CLs[0][i]));
			equals #(28) u5(.out(w_Di[0][i+1]),.in(w_DLs[0][i]));
			
	
		end
		p_inverse inv_init (.in({w_Ri[0][16],w_Li[0][16]}), .out(out));
	endgenerate
	
	assign w_Ri [0][0] = in[31:0];
	assign w_Li [0][0] = in[63:32];
	assign w_Ci [0][0] = key[27:0];
	assign w_Di [0][0] = key[55:28];
	assign round = 16'b1000000100000011;
	
	
endmodule
	*/
	
module encrypt (output [63:0] out, input [63:0] in, input [55:0] key);

	
	wire [31:0] w_Li  [0:16];
	wire [31:0] w_Ri  [0:16];
	wire [47:0] w_ex  [0:15];
	wire [47:0] w_xor  [0:15];
	wire [31:0] w_sf  [0:15];
	wire [31:0] w_pf  [0:15];
	
	
	wire [27:0] w_Ci  [0:16];
	wire [27:0] w_Di  [0:16];
	wire [27:0] w_CLs  [0:15];
	wire [27:0] w_DLs  [0:15];
	wire [47:0] w_Ki  [0:15];
	
	wire [15:0] round;
	wire [63:0] tout;

	genvar i;
	
	generate
		for(i=0; i<=15; i=i+1) begin
			expansion ex (.in(w_Ri[i]), .out(w_ex[i]));
			expon #(48) u2(.out(w_xor[i]),.in1(w_ex[i]),.in2(w_Ki[i]));
			s_function st (.in(w_xor[i]), .out(w_sf[i]));
			p_post_sf tp (.in(w_sf[i]), .out(w_pf[i]));
			expon #(32) u(.out(w_Ri[i+1]),.in1(w_pf[i]),.in2(w_Li[i]));
			equals #(32) u1(.out(w_Li[i+1]),.in(w_Ri[i]));
			
			keyMixer km (.in(w_Ci[i]), .nextkey(w_CLs[i]), .t(round[i]));
			keyMixer km1 (.in(w_Di[i]), .nextkey(w_DLs[i]), .t(round[i]));
			p_key2 pf (.in({w_CLs[i],w_DLs[i]}), .out(w_Ki[i]));
			equals #(28) u3(.out(w_Ci[i+1]),.in(w_CLs[i]));
			equals #(28) u5(.out(w_Di[i+1]),.in(w_DLs[i]));
			
	
		end
		p_inverse inv_init (.in({w_Ri[16],w_Li[16]}), .out(out));
		//equals #(64) u5(.out(kout),.in({w_Ri[16],w_Li[16]}));
	endgenerate
	
	assign w_Ri [0] = in[31:0];
	assign w_Li [0] = in[63:32];
	assign w_Di [0] = key[27:0];
	assign w_Ci [0] = key[55:28];
	assign round = 16'b1000000100000011;
	//assign out = {tout[31:0],tout[63:32]};

	
	
endmodule
	