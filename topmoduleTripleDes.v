module tripledes (output reg [63:0] password, input e, input [63:0] key1, key2, input [63:0] intext);

	wire [63:0]  out;

	genvar d;
	generate
		for (d=1; d<=3; d=d+1) begin : creatingdes
			if ((d==1|d==3)) 
			begin
				des em (.out(out), .in(intext), .k(key1), .e(e));
				equals #(64) u0(.out(intext),.in(out));//in = out;
			end
			else begin
					des em1 (.out(out), .in(intext), .k(key2), .e(e));
					equals #(64) u6(.out(intext), .in(out));//in = out;
			end
		end
	endgenerate

	always @ (out) begin
		password = out;
	end

endmodule

