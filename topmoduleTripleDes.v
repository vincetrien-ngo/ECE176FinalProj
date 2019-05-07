module tripledes (output reg [63:0] password, input clk, e,[55:0] key1, key2, [63:0] intext);
wire [63:0]  out;


genvar d;
generate
	for (d=1; d<=3; d=d+1) begin
		if ((d==1|d==3)) 
		begin
			des em (.out, .in(intext), .k(key1), .e);
			equals u0(.out(intext),.in(out));//in = out;
		end
		else begin
				des em1 (.out, .in(intext), .k(key2), .e);
				equals u6(.out(intextt), .in(out));//in = out;
		end
	end
endgenerate

endmodule

