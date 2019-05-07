module tripledes (output reg [63:0] password, input clk, e_i,input [55:0] key1, key2, input [63:0] intext);
	reg [63:0] in, out;
	reg e;

	initial begin
		assign in = intext;
		assign e = e_i;
	end
	
	genvar d;
	generate
		for (d=1; d<=3; d=d+1) begin : forloop 
			if (d==1|d==3) begin
				des dm (.out(), .in(), .k(key1));
				equals u0(
					.out(in)	, 
					.in(out)
				);//in = out;
				enot u2(
					.e_o(e)	,
					.e(e)	
				);
			end
			else begin
				des dm1 (.out, .in, .k(key2));
				equals u1(
					.out(in)	, 
					.in(out)
				);//in = out;
				enot u3(
					.e_o(e)	,
					.e(e)	
				);
			end
		end
	endgenerate
// always @(posedge clk)
// begin

// end
endmodule

