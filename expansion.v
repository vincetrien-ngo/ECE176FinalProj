module expansion(output [47:0] out, input [31:0] in);
    reg [7:0] bit8one;
    reg [7:0] bit8two;
    reg [7:0] bit8three;
    reg [7:0] bit8four;

    reg [9:0] bit10one;
    reg [9:0] bit10two;
    reg [9:0] bit10three;
    reg [9:0] bit10four;

    initial begin
        bit8one = in[7:0];
        bit8two = in[15:8];
        bit8three = in[23:16];
        bit8four = in[31:24];
        
        bit10one = {in[31],bit8one,in[8]};
        bit10two = {in[7],bit8two,in[16]};
        bit10three = {in[15],bit8three,in[24]};
        bit10four = {in[23],bit8four,in[0]};

    end

    assign out = {bit10one,bit10two,bit10three,bit10four};

endmodule
