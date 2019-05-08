module s1(
	output reg[3:0] s1,
	input [5:0] in);
	
always @(in) begin
		case({in[5],in[0]}) 
			0: begin
				case(in[4:1]) 
					0: begin
						s1 = 4'd14;
					end
					1: begin
						s1 = 4'd4;
					end
					2: begin
						s1 = 4'd13;
					end
					3: begin
						s1 = 4'd1;
					end
					4: begin
						s1 = 4'd2;
					end
					5: begin
						s1 = 4'd15;
					end
					6: begin
						s1 = 4'd11;
					end
					7: begin
						s1 = 4'd8;
					end
					8: begin
						s1 = 4'd3;
					end
					9: begin
						s1 = 4'd10;
					end
					10: begin
						s1 = 4'd6;
					end
					11: begin
						s1 = 4'd12;
					end
					12: begin
						s1 = 4'd5;
					end
					13: begin
						s1 = 4'd9;
					end
					14: begin
						s1 = 4'd0;
					end
					15: begin
						s1 = 4'd7;
					end
				endcase
			end	
			1: begin
				case(in[4:1]) 
					0: begin
						s1 = 4'd0;
					end
					1: begin
						s1 = 4'd15;
					end
					2: begin
						s1 = 4'd7;
					end
					3: begin
						s1 = 4'd4;
					end
					4: begin
						s1 = 4'd14;
					end
					5: begin
						s1 = 4'd2;
					end
					6: begin
						s1 = 4'd13;
					end
					7: begin
						s1 = 4'd1;
					end
					8: begin
						s1 = 4'd10;
					end
					9: begin
						s1 = 4'd6;
					end
					10: begin
						s1 = 4'd12;
					end
					11: begin
						s1 = 4'd11;
					end
					12: begin
						s1 = 4'd9;
					end
					13: begin
						s1 = 4'd5;
					end
					14: begin
						s1 = 4'd3;
					end
					15: begin
						s1 = 4'd8;
					end
				endcase			
			end
			2: begin
				case(in[4:1]) 
					0: begin
						s1 = 4'd4;
					end
					1: begin
						s1 = 4'd1;
					end
					2: begin
						s1 = 4'd14;
					end
					3: begin
						s1 = 4'd8;
					end
					4: begin
						s1 = 4'd13;
					end
					5: begin
						s1 = 4'd6;
					end
					6: begin
						s1 = 4'd2;
					end
					7: begin
						s1 = 4'd11;
					end
					8: begin
						s1 = 4'd15;
					end
					9: begin
						s1 = 4'd12;
					end
					10: begin
						s1 = 4'd9;
					end
					11: begin
						s1 = 4'd7;
					end
					12: begin
						s1 = 4'd3;
					end
					13: begin
						s1 = 4'd10;
					end
					14: begin
						s1 = 4'd5;
					end
					15: begin
						s1 = 4'd0;
					end
				endcase
			end
			3: begin
				case(in[4:1]) 
					0: begin
						s1 = 4'd15;
					end
					1: begin
						s1 = 4'd12;
					end
					2: begin
						s1 = 4'd8;
					end
					3: begin
						s1 = 4'd2;
					end
					4: begin
						s1 = 4'd4;
					end
					5: begin
						s1 = 4'd9;
					end
					6: begin
						s1 = 4'd1;
					end
					7: begin
						s1 = 4'd7;
					end
					8: begin
						s1 = 4'd5;
					end
					9: begin
						s1 = 4'd11;
					end
					10: begin
						s1 = 4'd3;
					end
					11: begin
						s1 = 4'd14;
					end
					12: begin
						s1 = 4'd10;
					end
					13: begin
						s1 = 4'd0;
					end
					14: begin
						s1 = 4'd6;
					end
					15: begin
						s1 = 4'd13;
					end
				endcase
			end
		endcase
end	
endmodule