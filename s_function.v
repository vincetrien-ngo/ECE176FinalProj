module s_function(input [47:0] in, output reg [31:0] out);
// this will take like 1600 lines of code for case statements. probably a better way to do it but i cant think of how
	
	always@(*) begin
		// S1
		case(in[47:42]) begin
			0: begin
				case(in[46:43]) begin
					0: begin
						out[31:28] <= 4'd14;
					end
					1: begin
						out[31:28] <= 4'd4;
					end
					2: begin
						out[31:28] <= 4'd13;
					end
					3: begin
						out[31:28] <= 4'd1;
					end
					4: begin
						out[31:28] <= 4'd2;
					end
					5: begin
						out[31:28] <= 4'd15;
					end
					6: begin
						out[31:28] <= 4'd11;
					end
					7: begin
						out[31:28] <= 4'd8;
					end
					8: begin
						out[31:28] <= 4'd3;
					end
					9: begin
						out[31:28] <= 4'd10;
					end
					10: begin
						out[31:28] <= 4'd6;
					end
					11: begin
						out[31:28] <= 4'd12;
					end
					12: begin
						out[31:28] <= 4'd5;
					end
					13: begin
						out[31:28] <= 4'd9;
					end
					14: begin
						out[31:28] <= 4'd0;
					end
					15: begin
						out[31:28] <= 4'd7;
					end
				endcase
			end	
			1: begin
				case(in[46:43]) begin
					0: begin
						out[31:28] <= 4'd0;
					end
					1: begin
						out[31:28] <= 4'd15;
					end
					2: begin
						out[31:28] <= 4'd7;
					end
					3: begin
						out[31:28] <= 4'd4;
					end
					4: begin
						out[31:28] <= 4'd14;
					end
					5: begin
						out[31:28] <= 4'd2;
					end
					6: begin
						out[31:28] <= 4'd13;
					end
					7: begin
						out[31:28] <= 4'd1;
					end
					8: begin
						out[31:28] <= 4'd10;
					end
					9: begin
						out[31:28] <= 4'd6;
					end
					10: begin
						out[31:28] <= 4'd12;
					end
					11: begin
						out[31:28] <= 4'd11;
					end
					12: begin
						out[31:28] <= 4'd9;
					end
					13: begin
						out[31:28] <= 4'd5;
					end
					14: begin
						out[31:28] <= 4'd3;
					end
					15: begin
						out[31:28] <= 4'd8;
					end
				endcase			
			end
			2: begin
				case(in[46:43]) begin
					0: begin
						out[31:28] <= 4'd4;
					end
					1: begin
						out[31:28] <= 4'd1;
					end
					2: begin
						out[31:28] <= 4'd14;
					end
					3: begin
						out[31:28] <= 4'd8;
					end
					4: begin
						out[31:28] <= 4'd13;
					end
					5: begin
						out[31:28] <= 4'd6;
					end
					6: begin
						out[31:28] <= 4'd2;
					end
					7: begin
						out[31:28] <= 4'd11;
					end
					8: begin
						out[31:28] <= 4'd15;
					end
					9: begin
						out[31:28] <= 4'd12;
					end
					10: begin
						out[31:28] <= 4'd9;
					end
					11: begin
						out[31:28] <= 4'd7;
					end
					12: begin
						out[31:28] <= 4'd3;
					end
					13: begin
						out[31:28] <= 4'd10;
					end
					14: begin
						out[31:28] <= 4'd5;
					end
					15: begin
						out[31:28] <= 4'd0;
					end
				endcase
			end
			3: begin
				case(in[46:43]) begin
					0: begin
						out[31:28] <= 4'd15;
					end
					1: begin
						out[31:28] <= 4'd12;
					end
					2: begin
						out[31:28] <= 4'd8;
					end
					3: begin
						out[31:28] <= 4'd2;
					end
					4: begin
						out[31:28] <= 4'd4;
					end
					5: begin
						out[31:28] <= 4'd9;
					end
					6: begin
						out[31:28] <= 4'd1;
					end
					7: begin
						out[31:28] <= 4'd7;
					end
					8: begin
						out[31:28] <= 4'd5;
					end
					9: begin
						out[31:28] <= 4'd11;
					end
					10: begin
						out[31:28] <= 4'd3;
					end
					11: begin
						out[31:28] <= 4'd14;
					end
					12: begin
						out[31:28] <= 4'd10;
					end
					13: begin
						out[31:28] <= 4'd0;
					end
					14: begin
						out[31:28] <= 4'd6;
					end
					15: begin
						out[31:28] <= 4'd13;
					end
				endcase
			end
		endcase	
