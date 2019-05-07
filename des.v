module des (output reg [63:0] out, input e, [63:0] k, [63:0] in);
always @(e)begin	
if (e)    //this is the encryption order
	encrypt en (.out, .k, .in);
else 
	decrypt d (.out, .k, .in);
end
endmodule

