module des (output reg [63:0] out, input e, [63:0] k, [63:0] in);	
wire [63:0] dec, enc, w_in, w_ind, w_in2, enc2;
wire [55:0] kp;
encrypt en (.out(enc), .in(w_in), .key(kp));
decrypt dn (.out(dec), .in(w_ind), .key(kp));
//encrypt en2 (.out(enc2), .in(w_in2), .key(kp));
always @(*) begin
	out = dec;
//else out=dec;
end
p_keyinit kper (.in(k), .out(kp));  //need to pass a parameter setting it to 56 bits!!!!
p_initial init (.in(in), .out(w_in));
p_initial init2 (.in(enc), .out(w_ind));
//p_initial init3 (.in(dec), .out(w_in2));
endmodule

