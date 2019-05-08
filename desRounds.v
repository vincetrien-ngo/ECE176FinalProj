module desRounds(output  [31:0] new_L, new_R, input round, input [3:0] rounds, [63:0] R_L_input);

        assign new_L = R_L_input[31:0];
        assign new_R = R_L_input[63:32];
        assign round = rounds + 1;
    
endmodule
