module splus1_enot(output reg s_o, e_o, input s, e);
    initial begin
        assign s_o = s + 1'b1;
        assign e_o = ~e;
    end
endmodule


