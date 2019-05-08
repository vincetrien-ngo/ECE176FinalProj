module des (output reg [63:0] out, input e, input [63:0] k, in);	
wire [63:0] dec, enc;
encrypt en (.out(enc), .in(in), .k(k));
decrypt dn (.out(dec), .in(in), .k(k));
always @(*) begin
if (e) out = enc;
else out=dec;
end
endmodule

