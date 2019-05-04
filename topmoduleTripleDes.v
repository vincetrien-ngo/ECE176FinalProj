module tripledes (output reg [63:0] password, input clk, e, s,[55:0] key1, key2, [63:0] intext);
reg [63:0] in, out;
initial begin
	assign in = intext;
end
genvar d;
generate
	for (d=1; d<=3; d=d+1) begin
		if (s==1|s==3) begin
			des dm (.out, .in, .s, .k(key1), .e);
			in = out;
		end
		else begin
			des dm1 (.out, .in, .s, .k(key2), .e);
			in = out;
		end
	end
endgenerate
always @(posedge clk)
begin

end
endmodule

