module decrypt(output reg [63:0] out,input [63:0] in, k);


wire [47:0] exp, is, kc;
wire [31:0] sr, pr;
wire [55:0]  ks;
wire [31:0] wL_i, R_i, L_i, L_i2, R_i2;
wire [63:0] w_in;
wire [55:0] kp;
reg [4:0] round;
wire [63:0] tempout;
genvar t;
generate
		desRounds unot0(.new_L(L_i),.new_R(R_i),.R_L_input(w_in));


		//for (t=1; t<=16; t=t+1) begin

			expansion ex (.in(R_i), .out(exp));    //expands to 48
			keyMixer km (.in(k1), .nextkey(ks), .newkey(kc), .t(round));  //pass to key mixer which breaks shifts does func and returns a 48 bit change key
			equals #(56) u1(.out(kp2),.in(ks));// kp= ks;
			expon #(48) u2(.out(is),.in1(exp),.in2(kc));//is= exp ^ kc;    //xor of the changed key and expanded part of text
			s_function st (.in(is), .out(sr));
			p_post_sf tp (.in(sr), .out(pr)); //this one is dealing with 32 bits, need parameter
			expon #(32) u3(.out(R_i2),.in1(pr),.in2(wL_i));

		//end
		p_inverse inv_init (.in({R_i2,L_i2}), .out(tempout));

endgenerate 
always @ (*) out <= tempout;

endmodule

		
