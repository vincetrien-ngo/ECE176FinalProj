module des (output reg [63:0] out, input s, e, k, in);
genvar t;
reg [47:0] exp, is, kc;
reg [31:0] sr, pr;
reg [55:0] kp;
generate
if (e) begin   //this is the encryption order
	p_function kp (.in(key1), .out(kp));  //need to pass a parameter setting it to 56 bits!!!!
	for (t=1; t<=16; t=t+1) begin  //repeats it 16 times just like specified in the algorithm
	expansion ex (.in(in[63:32]), .out(exp));    //expands to 48
	keyMixer km (.in(kc), .nextkey(ks), .newkey(kp));  //pass to key mixer which breaks shifts does func and returns a 48 bit change key
	kp= ks;
	is= exp ^ kc;    //xor of the changed jey and expanded part of text
	s_function st (.in(is), .out(sr));
	p_function tp (.in(sr), .out(pr)); //this one is dealing with 32 bits, need parameter
	out[63:32]= pr ^ in[31:0];
	out[31:0]= in[63:32];
	in = out;
	end
	s=s+1'b1;
	e=~e;
end
else begin   //this is the decryption order
	s=s+1'b1;
	e=~e;
end
endgenerate

endmodule
