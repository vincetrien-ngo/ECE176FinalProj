module decrypt(output reg [63:0] out, input [63:0] k, [63:0] in);
    p_function #(64, 56, 4) kper (.in(k), .out(kp));  //need to pass a parameter setting it to 56 bits!!!!
		p_function #(64, 64, 0) init (.in(in), .out(w_in));
		desRounds ureal0(.new_L(L_i),.new_R(R_i), .R_L_input(w_in),.round(round));
		// R_i = w_in[31:0];
		// L_i = w_in[63:32];
		// round = 0;
		for (t=1; t<=16; t=t+1) begin  //repeats it 16 times just like specified in the algorithm
			// round = round + 1;
			// wL_i = L_i;
			// L_i = R_i;
			desRounds uneg0(.new_L(wL_i), .new_R(L_i), .R_L_input({L_i,R_i})	,.round(round));
			expansion ex (.in(R_i), .out(exp));    //expands to 48
			keyMixer km (.in(kp), .nextkey(ks), .newkey(kc), .t(round));  //pass to key mixer which breaks shifts does func and returns a 48 bit change key
			equals uneg1(.out(kp), .in(ks));// kp= ks;
			expon uneg2(.out(is)	,.thisto(exp),.that(kc));//is= exp ^ kc;
			s_function st (.in(is), .out(sr));
			p_function #(32, 32, 3) tp (.in(sr), .out(pr)); //this one is dealing with 32 bits, need parameter
			expon uneg3(.out(R_i),.thisto(pr),.that(wL_i));
			//R_i = pr ^ wL_i;
		end
		//s=s+1'b1; // s is the start signal, it tells the topmodule how many iterations have been done and keeps trak of which key to use. 
		//e=~e;
		p_function #(64, 64, 1) inv_init (.in({R_i,L_i}), .out(out));