module keyMixer (output [55:0] nextkey, newkey, input [55:0] in);
reg [27:0] a, b;
assign a =in[27:0] << 1;
assing b =in[55:28] << 1;
assing nextkey = {b,a};
p_function #(56, 56) pf (.in(nextkey), .out(newkey));
endmodule
