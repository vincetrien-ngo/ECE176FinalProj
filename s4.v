function [3:0] s4;
	input [5:0] in;
	

		case(in{5,0}) begin
			0: begin
				case(in[4:1]) begin
					0: begin
						s4 = 4'd7;
					end
					1: begin
						s4 = 4'd13;
					end
					2: begin
						s4 = 4'd14;
					end
					3: begin
						s4 = 4'd3;
					end
					4: begin
						s4 = 4'd0;
					end
					5: begin
						s4 = 4'd6;
					end
					6: begin
						s4 = 4'd9;
					end
					7: begin
						s4 = 4'd10;
					end
					8: begin
						s4 = 4'd1;
					end
					9: begin
						s4 = 4'd2;
					end
					10: begin
						s4 = 4'd8;
					end
					11: begin
						s4 = 4'd5;
					end
					12: begin
						s4 = 4'd11;
					end
					13: begin
						s4 = 4'd12;
					end
					14: begin
						s4 = 4'd4;
					end
					15: begin
						s4 = 4'd15;
					end
				endcase
			end	
			1: begin
				case(in[4:1]) begin
					0: begin
						s4 = 4'd13;
					end
					1: begin
						s4 = 4'd8;
					end
					2: begin
						s4 = 4'd11;
					end
					3: begin
						s4 = 4'd5;
					end
					4: begin
						s4 = 4'd6;
					end
					5: begin
						s4 = 4'd15;
					end
					6: begin
						s4 = 4'd0;
					end
					7: begin
						s4 = 4'd3;
					end
					8: begin
						s4 = 4'd4;
					end
					9: begin
						s4 = 4'd7;
					end
					10: begin
						s4 = 4'd2;
					end
					11: begin
						s4 = 4'd12;
					end
					12: begin
						s4 = 4'd1;
					end
					13: begin
						s4 = 4'd10;
					end
					14: begin
						s4 = 4'd14;
					end
					15: begin
						s4 = 4'd9;
					end
				endcase			
			end
			2: begin
				case(in[4:1]) begin
					0: begin
						s4 = 4'd10;
					end
					1: begin
						s4 = 4'd6;
					end
					2: begin
						s4 = 4'd9;
					end
					3: begin
						s4 = 4'd0;
					end
					4: begin
						s4 = 4'd12;
					end
					5: begin
						s4 = 4'd11;
					end
					6: begin
						s4 = 4'd7;
					end
					7: begin
						s4 = 4'd13;
					end
					8: begin
						s4 = 4'd15;
					end
					9: begin
						s4 = 4'd1;
					end
					10: begin
						s4 = 4'd3;
					end
					11: begin
						s4 = 4'd14;
					end
					12: begin
						s4 = 4'd5;
					end
					13: begin
						s4 = 4'd2;
					end
					14: begin
						s4 = 4'd8;
					end
					15: begin
						s4 = 4'd4;
					end
				endcase
			end
			3: begin
				case(in[4:1]) begin
					0: begin
						s4 = 4'd3;
					end
					1: begin
						s4 = 4'd15;
					end
					2: begin
						s4 = 4'd0;
					end
					3: begin
						s4 = 4'd6;
					end
					4: begin
						s4 = 4'd10;
					end
					5: begin
						s4 = 4'd1;
					end
					6: begin
						s4 = 4'd13;
					end
					7: begin
						s4 = 4'd8;
					end
					8: begin
						s4 = 4'd9;
					end
					9: begin
						s4 = 4'd4;
					end
					10: begin
						s4 = 4'd5;
					end
					11: begin
						s4 = 4'd11;
					end
					12: begin
						s4 = 4'd12;
					end
					13: begin
						s4 = 4'd7;
					end
					14: begin
						s4 = 4'd2;
					end
					15: begin
						s4 = 4'd14;
					end
				endcase
			end
		endcase