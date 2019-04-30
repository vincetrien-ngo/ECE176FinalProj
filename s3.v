task s3;
	output [3:0] s3;
	input [5:0] in;
	begin

		case(in{5,0}) begin
			0: begin
				case(in[4:1]) begin
					0: begin
						s3 = 4'd10;
					end
					1: begin
						s3 = 4'd0;
					end
					2: begin
						s3 = 4'd9;
					end
					3: begin
						s3 = 4'd14;
					end
					4: begin
						s3 = 4'd6;
					end
					5: begin
						s3 = 4'd3;
					end
					6: begin
						s3 = 4'd15;
					end
					7: begin
						s3 = 4'd5;
					end
					8: begin
						s3 = 4'd1;
					end
					9: begin
						s3 = 4'd13;
					end
					10: begin
						s3 = 4'd12;
					end
					11: begin
						s3 = 4'd7;
					end
					12: begin
						s3 = 4'd11;
					end
					13: begin
						s3 = 4'd4;
					end
					14: begin
						s3 = 4'd2;
					end
					15: begin
						s3 = 4'd8;
					end
				endcase
			end	
			1: begin
				case(in[4:1]) begin
					0: begin
						s3 = 4'd13;
					end
					1: begin
						s3 = 4'd7;
					end
					2: begin
						s3 = 4'd0;
					end
					3: begin
						s3 = 4'd9;
					end
					4: begin
						s3 = 4'd3;
					end
					5: begin
						s3 = 4'd4;
					end
					6: begin
						s3 = 4'd6;
					end
					7: begin
						s3 = 4'd10;
					end
					8: begin
						s3 = 4'd2;
					end
					9: begin
						s3 = 4'd8;
					end
					10: begin
						s3 = 4'd5;
					end
					11: begin
						s3 = 4'd14;
					end
					12: begin
						s3 = 4'd12;
					end
					13: begin
						s3 = 4'd11;
					end
					14: begin
						s3 = 4'd15;
					end
					15: begin
						s3 = 4'd1;
					end
				endcase			
			end
			2: begin
				case(in[4:1]) begin
					0: begin
						s3 = 4'd13;
					end
					1: begin
						s3 = 4'd6;
					end
					2: begin
						s3 = 4'd4;
					end
					3: begin
						s3 = 4'd9;
					end
					4: begin
						s3 = 4'd8;
					end
					5: begin
						s3 = 4'd15;
					end
					6: begin
						s3 = 4'd3;
					end
					7: begin
						s3 = 4'd0;
					end
					8: begin
						s3 = 4'd11;
					end
					9: begin
						s3 = 4'd1;
					end
					10: begin
						s3 = 4'd2;
					end
					11: begin
						s3 = 4'd12;
					end
					12: begin
						s3 = 4'd5;
					end
					13: begin
						s3 = 4'd10;
					end
					14: begin
						s3 = 4'd14;
					end
					15: begin
						s3 = 4'd7;
					end
				endcase
			end
			3: begin
				case(in[4:1]) begin
					0: begin
						s3 = 4'd1;
					end
					1: begin
						s3 = 4'd10;
					end
					2: begin
						s3 = 4'd13;
					end
					3: begin
						s3 = 4'd0;
					end
					4: begin
						s3 = 4'd6;
					end
					5: begin
						s3 = 4'd9;
					end
					6: begin
						s3 = 4'd8;
					end
					7: begin
						s3 = 4'd7;
					end
					8: begin
						s3 = 4'd4;
					end
					9: begin
						s3 = 4'd15;
					end
					10: begin
						s3 = 4'd14;
					end
					11: begin
						s3 = 4'd3;
					end
					12: begin
						s3 = 4'd11;
					end
					13: begin
						s3 = 4'd5;
					end
					14: begin
						s3 = 4'd2;
					end
					15: begin
						s3 = 4'd12;
					end
				endcase
			end
		endcase
	end
endtask