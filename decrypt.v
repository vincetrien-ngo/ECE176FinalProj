task decrypt();
output reg [63:0] out;
input [63:0] k, in;
    reg [47:0] exp, is, kc;
    reg [31:0] sr, pr, R_i, L_i;
    reg [55:0] kp, ks;

    wire [31:0] wL_i;
    wire [63:0] w_in;
	 begin
integer t;

p_function #(64, 56, 4) kper (.in(k), .out(kp));  //need to pass a parameter setting it to 56 bits!!!!
p_function #(64, 64, 0) init (.in(in), .out(w_in));
desRounds ureal0(.new_L(L_i),.new_R(R_i), .R_L_input(w_in));

for (t=1; t<=16; t=t+1) begin  //repeats it 16 times just like specified in the algorithm

	desRounds uneg0(.new_L(wL_i), .new_R(L_i), .R_L_input({L_i,R_i}));
	expansion ex (.in(R_i), .out(exp));    //expands to 48
	keyMixer km (.in(kp), .nextkey(ks), .newkey(kc), .t(round));  //pass to key mixer which breaks shifts does func and returns a 48 bit change key
	equals uneg1(.out(kp), .in(ks));// kp= ks;
	expon uneg2(.out(is)	,.thisto(exp),.that(kc));//is= exp ^ kc;
	s_function st (.in(is), .out(sr));
	p_function #(32, 32, 3) tp (.in(sr), .out(pr)); //this one is dealing with 32 bits, need parameter
	expon uneg3(.out(R_i),.thisto(pr),.that(wL_i));
end
p_function #(64, 64, 1) inv_init (.in({R_i,L_i}), .out(out));
end
endtask
