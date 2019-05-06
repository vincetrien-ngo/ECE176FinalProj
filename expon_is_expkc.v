module expon(output reg [47:0] is, input [47:0] exp, [47:0] kc);
    initial begin
        assign is = exp ^ kc;
    end
endmodule

