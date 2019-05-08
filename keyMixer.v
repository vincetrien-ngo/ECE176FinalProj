
module keyMixer (output reg [27:0] nextkey, input t, input [27:0] in);
//(output reg [55:0] nextkey, output [47:0] newkey, input [4:0] t, input [55:0] in);

  //reg [27:0] a, b;
  always @(*) begin
    if (t) begin
      nextkey ={in[26:0],in[27]};
      //b =in[55:28] <<< 1; 
	  end
    else begin
      nextkey ={in[25:0],in[27:26]};
      //b =in[55:28] <<< 2; 
	  end

    //nextkey = {b,a};
    //change p into a function and put here
  end
  //p_key2 pf (.in(nextkey), .out(newkey));
endmodule
