module keyMixer (output [55:0] nextkey, newkey, input [55:0] in);
  reg [27:0] a, b;
  initial begin
    assign a =in[27:0] << 1;
    assign b =in[55:28] << 1;
  end
  assign nextkey = {b,a};
  p_function #(56, 48) pf (.in(nextkey), .out(newkey));
endmodule
