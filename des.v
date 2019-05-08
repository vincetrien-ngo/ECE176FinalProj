
module des (output reg [63:0] out, input e, [63:0] k, [63:0] in);	
    wire [63:0] dec, enc, w_in;
    wire [55:0] kp;
    encrypt en (.out(enc), .in(w_in), .k(kp));
    //decrypt dn (.out(dec), .in(w_in), .k(kp);

    always @(*) begin
    if (e) out = enc;
    //else out=dec;
    end
    p_function #(64, 56, 4) kper (.in(k), .out(kp));  //need to pass a parameter setting it to 56 bits!!!!
    p_function #(64, 64, 0) init (.in(in), .out(w_in));
endmodule

