module keyMixer (output [55:0] nextkey, newkey, input [4:0] t, [55:0] in);
  reg [27:0] a, b;
  reg [1:0] l;
  always @(*) begin
    if (t==4'b0001|t==4'b0010|t==4'b01001|t==4'b10000) begin
      l=2'b01;
      a =in[27:0] <<< l;
      b =in[55:28] <<< l; end
    else begin
      l=2'b10;
      a =in[27:0] <<< l;
      b =in[55:28] <<< l; end
    nextkey = {b,a};
    //change p into a function and put here
  end
  p_function #(56, 48) pf (.in(nextkey), .out(newkey));
endmodule
