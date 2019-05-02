module des (output reg [63:0] out, input s, e, [63:0] k, [63:0] in);
genvar t;
reg [47:0] exp, is, kc;
reg [31:0] sr, pr, R_i, L_i;
reg [55:0] kp, ks;
reg [15:0] round;
wire [31:0] wL_i;

generate
	
if (e) begin   //this is the encryption order
	p_function #(64, 56, 4) kper (.in(k), .out(kp));  //need to pass a parameter setting it to 56 bits!!!!
	R_i = in[31:0];
	L_i = in[63:32];
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
	s=s+1'b1; // what is s? only 1 bit?
	e=~e;
	out = {L_i, R_i};
end
else begin   //this is the decryption order
	p_function #(64, 56, 4) kper (.in(k), .out(kp));  //need to pass a parameter setting it to 56 bits!!!!
	R_i = in[31:0];
	L_i = in[63:32];
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
	s=s+1'b1; // what is s? only 1 bit?
	e=~e;
	out = {L_i, R_i};
end
endgenerate


endmodule
