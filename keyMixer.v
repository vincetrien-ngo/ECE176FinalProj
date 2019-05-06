
module keyMixer (output reg [55:0] nextkey, output [47:0] newkey, input [4:0] t, [55:0] in);

  reg [27:0] a, b;
  always @(*) begin
    if (t==4'b0001|t==4'b0010|t==4'b1001|t==4'b1000) begin
      a =in[27:0] <<< 1;
      b =in[55:28] <<< 1; end
    else begin
      a =in[27:0] <<< 2;
      b =in[55:28] <<< 2; end

    nextkey = {b,a};
    //change p into a function and put here
  end
  p_function #(56, 48, 5) pf (.in(nextkey), .out(newkey));
endmodule
