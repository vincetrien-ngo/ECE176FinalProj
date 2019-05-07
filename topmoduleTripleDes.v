module tripledes (output reg [63:0] password, input clk, e,[55:0] key1, key2, [63:0] intext);
reg [63:0] in, out;
initial begin
	assign in = intext;
end

genvar d;
generate
	for (d=1; d<=3; d=d+1) begin
		if ((d==1|d==3)) 
		begin
			des em (.out, .in, .k(key1), .e);
			equals u0(.out(in),.in(out));//in = out;
		end
		else begin
				des em1 (.out, .in, .k(key2), .e);
				equals u6(.out(in), .in(out));//in = out;
		end
	end
endgenerate
//always @(posedge clk)
//begin
 
//end
endmodule

