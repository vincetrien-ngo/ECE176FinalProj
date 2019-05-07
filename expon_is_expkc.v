module expon #(parameter N = 48)(output  [N-1:0] out, input [N-1:0] in1, [N-1:0] in2);
    
        assign out = in1 ^ in2;
    
endmodule

