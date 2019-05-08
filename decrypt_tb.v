module decrypt_tb();
	
	reg [47:0] tin;
	wire [31:0] tout;

    reg [63:0] key1, key2;
    reg [63:0] intext;
	reg [63:0] R_L_input;
	
    wire [63:0] password;

	wire [31:0] new_L, new_R;
	wire [55:0] nextkey;
	wire [47:0] newkey;
	reg [4:0] t;
	reg [55:0] in;

    initial begin
        //assign e = 1'b0;
        assign key1 = 64'b01000100;
        //assign key2 = 56'b0;
        assign intext = 64'b1011000011111111101001000110010000000101000110001101111111101101;
		// assign tin = 55;
    end

	decrypt u0(.out(password), .key(key1) , .in(intext));

endmodule

