module tripledes (output reg [63:0] password, input clk, e, s,[55:0] key1, key2, [63:0] intext);
reg [63:0] in, out;
genvar d;
generate
in = intext;
e = 1'b1;
	for (d=1; d<=3; d=d+1) begin
		if (s==1|s==3) begin
		des dm (.out, .in, .s, .key1, .e, .clk);
		in = out;
		end
		else begin
		des dm1 (.out, .in, .s, .key2, .e, .clk);
		in = out;
		end
	end
endgenerate
endmodule

