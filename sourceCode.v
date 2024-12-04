module sourceCode(clock, reset, in, out);
	
	input wire clock, reset, in;
	output reg out;

	parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100;

	reg[2:0] currentState;

	always @(posedge clock or posedge reset) begin
		if(reset) begin
			currentState <= S0;
			out <= 1'b0;
		end
		else begin
			case(currentState) begin
				S0 : 
					if(in == 1'b0) begin
						currentState <= S0;
						out <= 1'b0;
					end		
					else begin	
						currentState <= S1;
						out <= 1'b0;
					end
				S1 : 
					if(in == 1'b0) begin
						currentState <= S0;
						out <= 1'b0;
					end		
					else begin	
						currentState <= S2;
						out <= 1'b0;
					end
				S2 : 
					if(in == 1'b0) begin
						currentState <= S3;
						out <= 1'b0;
					end		
					else begin	
						currentState <= S2;
						out <= 1'b0;
					end
				S3 : 
					if(in == 1'b0) begin
						currentState <= S4;
						out <= 1'b0;
					end		
					else begin	
						currentState <= S1;
						out <= 1'b0;
					end
				S4 : 
					if(in == 1'b0) begin
						currentState <= S0;
						out <= 1'b0;
					end		
					else begin	
						currentState <= S1;
						out <= 1'b1;
					end
			endcase
		end
	end
endmodule


