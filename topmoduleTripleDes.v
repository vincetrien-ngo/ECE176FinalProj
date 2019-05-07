module tripledes (output reg [63:0] password, input clk, e,[55:0] key1, key2, [63:0] intext);
reg [63:0] in, out;
initial begin
	assign in = intext;
end
genvar d;
generate
	for (d=1; d<=3; d=d+1) begin
		if ((d==1|d==3)&e) 
		begin
			encrypt em (.out, .in, .k(key1));
			equals u0(.out(in),.in(out));//in = out;
		end
		else if ((d==1|d==3)&!e)begin
			decrypt dm (.out, .in, .k(key1));
			equals u5(.out(in),.in(out));//in = out;
			end 		
		else if (d==2&e) begin		
				decrypt dm1 (.out, .in, .k(key2));
				equals u1(.out(in), .in(out));//in = out;
			end
		else begin
				encrypt em1 (.out, .in, .k(key2));
				equals u6(.out(in), .in(out));//in = out;
		end
	end
endgenerate
//always @(posedge clk)
//begin
 
//end
endmodule
