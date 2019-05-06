module splus1_enot(output reg [47:0] out, input [47:0] thisto, [47:0] that);
    initial begin
        assign out = thisto ^ that;
    end
endmodule


