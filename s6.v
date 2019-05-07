module s6(
	output reg[3:0] s6,
	input [5:0] in);
	initial begin

		case({in[5],in[0]}) 
			0: begin
				case(in[4:1]) 
					0: begin
						s6 = 4'd12;
					end
					1: begin
						s6 = 4'd1;
					end
					2: begin
						s6 = 4'd10;
					end
					3: begin
						s6 = 4'd15;
					end
					4: begin
						s6 = 4'd9;
					end
					5: begin
						s6 = 4'd2;
					end
					6: begin
						s6 = 4'd6;
					end
					7: begin
						s6 = 4'd8;
					end
					8: begin
						s6 = 4'd0;
					end
					9: begin
						s6 = 4'd13;
					end
					10: begin
						s6 = 4'd3;
					end
					11: begin
						s6 = 4'd4;
					end
					12: begin
						s6 = 4'd14;
					end
					13: begin
						s6 = 4'd7;
					end
					14: begin
						s6 = 4'd5;
					end
					15: begin
						s6 = 4'd11;
					end
				endcase
			end	
			1: begin
				case(in[4:1]) 
					0: begin
						s6 = 4'd10;
					end
					1: begin
						s6 = 4'd15;
					end
					2: begin
						s6 = 4'd4;
					end
					3: begin
						s6 = 4'd2;
					end
					4: begin
						s6 = 4'd7;
					end
					5: begin
						s6 = 4'd12;
					end
					6: begin
						s6 = 4'd9;
					end
					7: begin
						s6 = 4'd5;
					end
					8: begin
						s6 = 4'd6;
					end
					9: begin
						s6 = 4'd1;
					end
					10: begin
						s6 = 4'd13;
					end
					11: begin
						s6 = 4'd14;
					end
					12: begin
						s6 = 4'd0;
					end
					13: begin
						s6 = 4'd11;
					end
					14: begin
						s6 = 4'd3;
					end
					15: begin
						s6 = 4'd8;
					end
				endcase			
			end
			2: begin
				case(in[4:1]) 
					0: begin
						s6 = 4'd9;
					end
					1: begin
						s6 = 4'd14;
					end
					2: begin
						s6 = 4'd15;
					end
					3: begin
						s6 = 4'd5;
					end
					4: begin
						s6 = 4'd2;
					end
					5: begin
						s6 = 4'd8;
					end
					6: begin
						s6 = 4'd12;
					end
					7: begin
						s6 = 4'd3;
					end
					8: begin
						s6 = 4'd7;
					end
					9: begin
						s6 = 4'd0;
					end
					10: begin
						s6 = 4'd4;
					end
					11: begin
						s6 = 4'd10;
					end
					12: begin
						s6 = 4'd1;
					end
					13: begin
						s6 = 4'd13;
					end
					14: begin
						s6 = 4'd11;
					end
					15: begin
						s6 = 4'd6;
					end
				endcase
			end
			3: begin
				case(in[4:1]) 
					0: begin
						s6 = 4'd4;
					end
					1: begin
						s6 = 4'd3;
					end
					2: begin
						s6 = 4'd2;
					end
					3: begin
						s6 = 4'd12;
					end
					4: begin
						s6 = 4'd9;
					end
					5: begin
						s6 = 4'd5;
					end
					6: begin
						s6 = 4'd15;
					end
					7: begin
						s6 = 4'd10;
					end
					8: begin
						s6 = 4'd11;
					end
					9: begin
						s6 = 4'd14;
					end
					10: begin
						s6 = 4'd1;
					end
					11: begin
						s6 = 4'd7;
					end
					12: begin
						s6 = 4'd6;
					end
					13: begin
						s6 = 4'd0;
					end
					14: begin
						s6 = 4'd8;
					end
					15: begin
						s6 = 4'd13;
					end
				endcase
			end
		endcase
	end
endmodule