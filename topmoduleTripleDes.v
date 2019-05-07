module tripledes (output reg [63:0] password, input clk, e,[63:0] key1, key2, [63:0] intext);
wire [63:0]  out;


genvar d;
generate
	for (d=1; d<=3; d=d+1) begin
		if ((d==1|d==3)) 
		begin
			des em (.out, .in(intext), .k(key1), .e);
			equals #(64) u0(.out(intext),.in(out));//in = out;
		end
		else begin
				des em1 (.out, .in(intext), .k(key2), .e);
				equals #(64) u6(.out(intext), .in(out));//in = out;
		end
	end
endgenerate

endmodule

