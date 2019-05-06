task s7;
	output [3:0] s7;
	input [5:0] in;
	begin

		case({in[5],in[0]}) 
			0: begin
				case(in[4:1]) 
					0: begin
						s7 = 4'd4;
					end
					1: begin
						s7 = 4'd11;
					end
					2: begin
						s7 = 4'd2;
					end
					3: begin
						s7 = 4'd14;
					end
					4: begin
						s7 = 4'd15;
					end
					5: begin
						s7 = 4'd0;
					end
					6: begin
						s7 = 4'd8;
					end
					7: begin
						s7 = 4'd13;
					end
					8: begin
						s7 = 4'd3;
					end
					9: begin
						s7 = 4'd12;
					end
					10: begin
						s7 = 4'd9;
					end
					11: begin
						s7 = 4'd7;
					end
					12: begin
						s7 = 4'd5;
					end
					13: begin
						s7 = 4'd10;
					end
					14: begin
						s7 = 4'd6;
					end
					15: begin
						s7 = 4'd1;
					end
				endcase
			end	
			1: begin
				case(in[4:1]) 
					0: begin
						s7 = 4'd13;
					end
					1: begin
						s7 = 4'd0;
					end
					2: begin
						s7 = 4'd11;
					end
					3: begin
						s7 = 4'd7;
					end
					4: begin
						s7 = 4'd4;
					end
					5: begin
						s7 = 4'd9;
					end
					6: begin
						s7 = 4'd1;
					end
					7: begin
						s7 = 4'd10;
					end
					8: begin
						s7 = 4'd14;
					end
					9: begin
						s7 = 4'd3;
					end
					10: begin
						s7 = 4'd5;
					end
					11: begin
						s7 = 4'd12;
					end
					12: begin
						s7 = 4'd2;
					end
					13: begin
						s7 = 4'd15;
					end
					14: begin
						s7 = 4'd8;
					end
					15: begin
						s7 = 4'd6;
					end
				endcase			
			end
			2: begin
				case(in[4:1]) 
					0: begin
						s7 = 4'd1;
					end
					1: begin
						s7 = 4'd4;
					end
					2: begin
						s7 = 4'd11;
					end
					3: begin
						s7 = 4'd13;
					end
					4: begin
						s7 = 4'd12;
					end
					5: begin
						s7 = 4'd3;
					end
					6: begin
						s7 = 4'd7;
					end
					7: begin
						s7 = 4'd14;
					end
					8: begin
						s7 = 4'd10;
					end
					9: begin
						s7 = 4'd15;
					end
					10: begin
						s7 = 4'd6;
					end
					11: begin
						s7 = 4'd8;
					end
					12: begin
						s7 = 4'd0;
					end
					13: begin
						s7 = 4'd5;
					end
					14: begin
						s7 = 4'd9;
					end
					15: begin
						s7 = 4'd2;
					end
				endcase
			end
			3: begin
				case(in[4:1]) 
					0: begin
						s7 = 4'd6;
					end
					1: begin
						s7 = 4'd11;
					end
					2: begin
						s7 = 4'd13;
					end
					3: begin
						s7 = 4'd8;
					end
					4: begin
						s7 = 4'd1;
					end
					5: begin
						s7 = 4'd4;
					end
					6: begin
						s7 = 4'd10;
					end
					7: begin
						s7 = 4'd7;
					end
					8: begin
						s7 = 4'd9;
					end
					9: begin
						s7 = 4'd5;
					end
					10: begin
						s7 = 4'd0;
					end
					11: begin
						s7 = 4'd15;
					end
					12: begin
						s7 = 4'd14;
					end
					13: begin
						s7 = 4'd2;
					end
					14: begin
						s7 = 4'd3;
					end
					15: begin
						s7 = 4'd12;
					end
				endcase
			end
		endcase
	end
endtask