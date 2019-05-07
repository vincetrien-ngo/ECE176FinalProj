module des (output reg [63:0] out, input e, [55:0] k, [63:0] in);	
reg [63:0] dec, enc;
encrypt en (.out(enc), .in, .k);
decrypt dn (.out(dec), .in, .k);
always @(*) begin
if (e) out = enc;
else out=dec;
end
endmodule

