task s5;
	output [3:0] s5;
	input [5:0] in;
	begin

		case({in[5],in[0]}) 
			0: begin
				case(in[4:1]) 
					0: begin
						s5 = 4'd2;
					end
					1: begin
						s5 = 4'd12;
					end
					2: begin
						s5 = 4'd4;
					end
					3: begin
						s5 = 4'd1;
					end
					4: begin
						s5 = 4'd7;
					end
					5: begin
						s5 = 4'd10;
					end
					6: begin
						s5 = 4'd11;
					end
					7: begin
						s5 = 4'd6;
					end
					8: begin
						s5 = 4'd8;
					end
					9: begin
						s5 = 4'd5;
					end
					10: begin
						s5 = 4'd3;
					end
					11: begin
						s5 = 4'd15;
					end
					12: begin
						s5 = 4'd13;
					end
					13: begin
						s5 = 4'd0;
					end
					14: begin
						s5 = 4'd14;
					end
					15: begin
						s5 = 4'd9;
					end
				endcase
			end	
			1: begin
				case(in[4:1]) 
					0: begin
						s5 = 4'd14;
					end
					1: begin
						s5 = 4'd11;
					end
					2: begin
						s5 = 4'd2;
					end
					3: begin
						s5 = 4'd12;
					end
					4: begin
						s5 = 4'd4;
					end
					5: begin
						s5 = 4'd7;
					end
					6: begin
						s5 = 4'd13;
					end
					7: begin
						s5 = 4'd1;
					end
					8: begin
						s5 = 4'd5;
					end
					9: begin
						s5 = 4'd0;
					end
					10: begin
						s5 = 4'd15;
					end
					11: begin
						s5 = 4'd10;
					end
					12: begin
						s5 = 4'd3;
					end
					13: begin
						s5 = 4'd9;
					end
					14: begin
						s5 = 4'd8;
					end
					15: begin
						s5 = 4'd6;
					end
				endcase			
			end
			2: begin
				case(in[4:1]) 
					0: begin
						s5 = 4'd4;
					end
					1: begin
						s5 = 4'd2;
					end
					2: begin
						s5 = 4'd1;
					end
					3: begin
						s5 = 4'd11;
					end
					4: begin
						s5 = 4'd10;
					end
					5: begin
						s5 = 4'd13;
					end
					6: begin
						s5 = 4'd7;
					end
					7: begin
						s5 = 4'd8;
					end
					8: begin
						s5 = 4'd15;
					end
					9: begin
						s5 = 4'd9;
					end
					10: begin
						s5 = 4'd12;
					end
					11: begin
						s5 = 4'd5;
					end
					12: begin
						s5 = 4'd6;
					end
					13: begin
						s5 = 4'd3;
					end
					14: begin
						s5 = 4'd0;
					end
					15: begin
						s5 = 4'd14;
					end
				endcase
			end
			3: begin
				case(in[4:1]) 
					0: begin
						s5 = 4'd11;
					end
					1: begin
						s5 = 4'd8;
					end
					2: begin
						s5 = 4'd12;
					end
					3: begin
						s5 = 4'd7;
					end
					4: begin
						s5 = 4'd1;
					end
					5: begin
						s5 = 4'd14;
					end
					6: begin
						s5 = 4'd2;
					end
					7: begin
						s5 = 4'd13;
					end
					8: begin
						s5 = 4'd6;
					end
					9: begin
						s5 = 4'd15;
					end
					10: begin
						s5 = 4'd0;
					end
					11: begin
						s5 = 4'd9;
					end
					12: begin
						s5 = 4'd10;
					end
					13: begin
						s5 = 4'd4;
					end
					14: begin
						s5 = 4'd5;
					end
					15: begin
						s5 = 4'd3;
					end
				endcase
			end
		endcase
	end
endtask