module desRounds(output reg [31:0] new_L, new_R, input [63:0] R_L_input);
    initial begin
        new_L = R_L_input[31:0];
        new_R = R_L_input[63:32];

    end
endmodule
