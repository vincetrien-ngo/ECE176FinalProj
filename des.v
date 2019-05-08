module des (output reg [63:0] out, input e, input [63:0] k, input [63:0] in);	
wire [63:0] dec, enc, w_in, w_ind;
wire [55:0] kp;
encrypt en (.out(enc), .in(w_in), .key(kp));
decrypt dn (.out(dec), .in(w_ind), .key(kp));

always @(*) begin
	out = enc;
//else out=dec;
end
p_keyinit kper (.in(k), .out(kp));  //need to pass a parameter setting it to 56 bits!!!!
p_initial init (.in(in), .out(w_in));
p_initial init2 (.in(enc), .out(w_ind));
endmodule

