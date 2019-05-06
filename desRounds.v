module desRounds(output reg [31:0] new_L, new_R, [15:0] new_round, input [63:0] R_L_input, [15:0] round);
    initial begin
        new_L = R_L_input[31:0];
        new_R = R_L_input[63:32];

        new_round = round + 1;
    end
endmodule
