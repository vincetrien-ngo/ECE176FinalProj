module des (output reg [63:0] out, input e, [63:0] k, [63:0] in);	
wire [63:0] dec, enc;
encrypt en (.out(enc), .in, .k);
decrypt dn (.out(dec), .in, .k);
always @(*) begin
if (e) out = enc;
else out=dec;
end
endmodule

