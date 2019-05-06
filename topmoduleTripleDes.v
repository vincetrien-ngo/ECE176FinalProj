module tripledes (output reg [63:0] password, input clk, e, s,[55:0] key1, key2, [63:0] intext);
reg [63:0] in, out;
initial begin
	assign in = intext;
end
genvar d;
generate
	for (d=1; d<=3; d=d+1) begin
		if (d==1|d==3) begin
			des dm (.out, .in, .k(key1), .e);
			equals u0(
				.out(in)	, 
				.in(out)
			);//in = out;
			enot u2(
				e_o(e)	,
				e(e)	
			);
		end
		else begin
			des dm1 (.out, .in, .k(key2), .e);
			equals u1(
				.out(in)	, 
				.in(out)
			);//in = out;
			enot u3(
				e_o(e)	,
				e(e)	
			);
		end
	end
endgenerate
// always @(posedge clk)
// begin

// end
endmodule

