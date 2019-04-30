task s2;
	output [3:0] s2;
	input [5:0] in;
	begin

		case(in{5,0}) begin
			0: begin
				case(in[4:1]) begin
					0: begin
						s2 = 4'd15;
					end
					1: begin
						s2 = 4'd1;
					end
					2: begin
						s2 = 4'd8;
					end
					3: begin
						s2 = 4'd14;
					end
					4: begin
						s2 = 4'd6;
					end
					5: begin
						s2 = 4'd11;
					end
					6: begin
						s2 = 4'd3;
					end
					7: begin
						s2 = 4'd4;
					end
					8: begin
						s2 = 4'd9;
					end
					9: begin
						s2 = 4'd7;
					end
					10: begin
						s2 = 4'd2;
					end
					11: begin
						s2 = 4'd13;
					end
					12: begin
						s2 = 4'd12;
					end
					13: begin
						s2 = 4'd0;
					end
					14: begin
						s2 = 4'd5;
					end
					15: begin
						s2 = 4'd10;
					end
				endcase
			end	
			1: begin
				case(in[4:1]) begin
					0: begin
						s2 = 4'd3;
					end
					1: begin
						s2 = 4'd13;
					end
					2: begin
						s2 = 4'd4;
					end
					3: begin
						s2 = 4'd7;
					end
					4: begin
						s2 = 4'd15;
					end
					5: begin
						s2 = 4'd2;
					end
					6: begin
						s2 = 4'd8;
					end
					7: begin
						s2 = 4'd14;
					end
					8: begin
						s2 = 4'd12;
					end
					9: begin
						s2 = 4'd0;
					end
					10: begin
						s2 = 4'd1;
					end
					11: begin
						s2 = 4'd10;
					end
					12: begin
						s2 = 4'd6;
					end
					13: begin
						s2 = 4'd9;
					end
					14: begin
						s2 = 4'd11;
					end
					15: begin
						s2 = 4'd5;
					end
				endcase			
			end
			2: begin
				case(in[4:1]) begin
					0: begin
						s2 = 4'd0;
					end
					1: begin
						s2 = 4'd14;
					end
					2: begin
						s2 = 4'd7;
					end
					3: begin
						s2 = 4'd11;
					end
					4: begin
						s2 = 4'd10;
					end
					5: begin
						s2 = 4'd4;
					end
					6: begin
						s2 = 4'd13;
					end
					7: begin
						s2 = 4'd1;
					end
					8: begin
						s2 = 4'd5;
					end
					9: begin
						s2 = 4'd8;
					end
					10: begin
						s2 = 4'd12;
					end
					11: begin
						s2 = 4'd6;
					end
					12: begin
						s2 = 4'd9;
					end
					13: begin
						s2 = 4'd3;
					end
					14: begin
						s2 = 4'd2;
					end
					15: begin
						s2 = 4'd15;
					end
				endcase
			end
			3: begin
				case(in[4:1]) begin
					0: begin
						s2 = 4'd13;
					end
					1: begin
						s2 = 4'd8;
					end
					2: begin
						s2 = 4'd10;
					end
					3: begin
						s2 = 4'd1;
					end
					4: begin
						s2 = 4'd3;
					end
					5: begin
						s2 = 4'd15;
					end
					6: begin
						s2 = 4'd4;
					end
					7: begin
						s2 = 4'd2;
					end
					8: begin
						s2 = 4'd11;
					end
					9: begin
						s2 = 4'd6;
					end
					10: begin
						s2 = 4'd7;
					end
					11: begin
						s2 = 4'd12;
					end
					12: begin
						s2 = 4'd0;
					end
					13: begin
						s2 = 4'd5;
					end
					14: begin
						s2 = 4'd14;
					end
					15: begin
						s2 = 4'd9;
					end
				endcase
			end
		endcase
	end
endtask