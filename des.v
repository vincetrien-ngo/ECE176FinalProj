module des (output reg [63:0] out, input e, [63:0] k, [63:0] in);

	genvar t;
	reg [47:0] exp, is, kc;
	reg [31:0] sr, pr, R_i, L_i;
	reg [55:0] kp, ks;
	reg [31:0] wL_i, wR_i;
	reg [63:0] w_in;
	reg [63:0] tmpout;
	reg [3:0] rin, rout;

		
	initial begin
		R_i = w_in[31:0];
		L_i = w_in[63:32];
	end
	
	always @(*) begin
		wL_i = L_i;
		L_i = R_i;
		kp = ks;
		is = exp ^ kc;    //xor of the changed key and expanded part of text
		wR_i = pr ^ wL_i;
		if(rout == 15) begin
			rin = 0;
			out = tmpout;
		end
	end
	for (t=1; t<=16; t=t+1) begin  //repeats it 16 times just like specified in the algorithm
		expansion ex (.in(R_i), .out(exp));    //expands to 48
		keyMixer km (.in(kp), .nextkey(ks), .newkey(kc), .t(t));  //pass to key mixer which breaks shifts does func and returns a 48 bit change key
		s_function st (.in(is), .rin(rin), .rout(rout), .out(sr));
		p_function #(32, 32, 3) tp (.in(sr), .out(pr)); //this one is dealing with 32 bits, need parameter
		
	end
	p_function #(64, 56, 4) kper (.in(k), .out(kp));  //first key perm
	p_function #(64, 64, 0) init (.in(in), .out(w_in)); //initial perm
	p_function #(64, 64, 1) inv_init (.in({R_i,L_i}), .out(tmpout));
		
	
		/*
		else begin   //this is the decryption order
			p_function #(64, 56, 4) kper (.in(k), .out(kp));  //need to pass a parameter setting it to 56 bits!!!!
			p_function #(64, 64, 0) init (.in(in), .out(w_in));
			R_i = w_in[31:0];
			L_i = w_in[63:32];
			round = 0;
			for (t=1; t<=16; t=t+1) begin  //repeats it 16 times just like specified in the algorithm
				round = round + 1;
				wL_i = L_i;
				L_i = R_i;
				expansion ex (.in(R_i), .out(exp));    //expands to 48
				keyMixer km (.in(kp), .nextkey(ks), .newkey(kc), .t(round));  //pass to key mixer which breaks shifts does func and returns a 48 bit change key
				kp= ks;
				is= exp ^ kc;    //xor of the changed key and expanded part of text
				s_function st (.in(is), .out(sr));
				p_function #(32, 32, 3) tp (.in(sr), .out(pr)); //this one is dealing with 32 bits, need parameter
				R_i = pr ^ wL_i;
			end
			p_function #(64, 64, 1) inv_init (.in({R_i,L_i}), .out(out));
			e=~e;
		end
	end
*/


endmodule
