module FSM
#(parameter = 512)
(
    input [7:0] host_instruction,
    input add1_done, add2_done, sub_done, mult_done, bram0_done, bram1_done, bram2_done, bram3_done, clk, reset,
	output reg [8:0] offset,
	output reg [1:0] aa_MUX, dd_MUX, bram_MUX, out_MUX, host_out_MUX,
    output reg busy, bram_in_MUX, b0_en, b1_en, b2_en, b3_en, b0_rst, b1_rst, b2_rst, b3_rst, b0_en1, b1_en1, b2_en1, b3_en1
);

parameter [3:0] RESET = 4'h0, IDLE = 4'h0, ADD = 4'h1, SUB = 4'h2, SHIFT = 4'h3, MULT = 4'h4, LOAD = 4'h5, UNLOAD = 4'h6, COPY = 4'h7, CLEAR = 4'h8;
					 
parameter NA_OP =     8'bXXXX00XX;//Do Nothing
parameter LOAD_OP =   8'bXXXX0100;//Load to BRAM from Host
parameter UNLOAD_OP = 8'bXXXX0110;//Unload from BRAM to Host
parameter COPY_OP =   8'bXXXX0101;//Copy from BRAM to BRAM
parameter CLEAR_OP =  8'bXXXX0111;//Clear BRAM
parameter ADD_OP =   8'bXXXX1100;//Add from BRAM to BRAM using addr 1
parameter SHIFT_OP =   8'bXXXX1101;//Add from BRAM to BRAM using addr 2
parameter SUB_OP =    8'bXXXX1110;//Subtract from BRAM to BRAM
parameter MULT_OP =   8'bXXXX1111;//Multiply from BRAM to BRAM

parameter B1 = 2'b00;//BRAM 1
parameter B2 = 2'b01;//BRAM 2
parameter B3 = 2'b10;//BRAM 3
parameter B4 = 2'b11;//BRAM 4

parameter ADDER = 2'b00;//Adder
parameter SUBTRACTOR = 2'b10;//Subtractor
parameter MULTIPLIER = 2'b11;//Multiplier
parameter SHIFTER = 2'b01;//Shifter

parameter DD = host_instruction[7-:2];//Shortcut to control lines for DD
parameter AA = host_instruction[5-:2];//Shortcut to control lines for AA

reg [3:0] state;//Register for the state of the FSM
reg [5:0] counter;//Register for the counter

assign aa_MUX = AA;//Control the AA MUX with the AA bits from the instruction
assign dd_MUX = DD;//Control the DD MUX with the DD bits from the instruction
assign bram_MUX = AA;//Control the BRAM MUX with the AA bits from the instruction

always @(posedge clk, posedge rst)begin
	if(rst == 1) state <= RESET;

	busy = 1;//It's busy in all states but IDLE

	//Default BRAM controls
	b0_en1 = 0; b0_en = 0; b0_rst = 0;
	b1_en1 = 0; b1_en = 0; b1_rst = 0;
	b2_en1 = 0; b2_en = 0; b2_rst = 0;
	b3_en1 = 0; b3_en = 0; b3_rst = 0;

	bram_in_MUX = 0;//Only COPY sets to 1

	case(state)
		RESET: begin//Reset all BRAMS and state
			b0_rst = 1;
			b1_rst = 1;
			b2_rst = 1;
			b3_rst = 1;

			state <= IDLE;//Return to IDLE	
		end

		IDLE: begin//Check for instruction
			busy = 0;//Indicate that it's not busy
			counter = 0;//Reset counter
			offset = 7;//Reset offset

			//Check for instruction and set state
			if(host_instruction == LOAD_OP) begin
				state = LOAD;
			end
			else if(host_instruction == UNLOAD_OP) begin
				state = UNLOAD;
			end
			else if(host_instruction == COPY_OP) begin
				state = COPY;
			end
			else if(host_instruction == CLEAR_OP) begin
				state = CLEAR;
			end
			else if(host_instruction == ADD_OP) begin
				state = ADD;
			end
			else if(host_instruction == SHIFT_OP) begin
				state = SHIFT;
			end
			else if(host_instruction == SUB_OP) begin
				state = SUB;
			end
			else if(host_instruction == MULT_OP) begin
				state = MULT;
			end
			else begin
				state = IDLE;//Return to IDLE
			end
		end

		ADD: begin
			//Enable correct BRAM
			if(DD = B0) b0_en = 1;
			else if(DD = B1) b1_en = 1;
			else if(DD = B2) b2_en = 1;
			else b3_en = 1;

			out_MUX = ADDER;//Select correct output

			state = IDLE;//Return to IDLE
		end

		SUB: begin
			//Enable correct BRAM
			if(DD = B0) b0_en = 1;
			else if(DD = B1) b1_en = 1;
			else if(DD = B2) b2_en = 1;
			else b3_en = 1;

			out_MUX = SUBTRACTOR;//Select correct output

			state = IDLE;//Return to IDLE
		end

		SHIFT: begin
			//Enable correct BRAM
			if(DD = B0) b0_en = 1;
			else if(DD = B1) b1_en = 1;
			else if(DD = B2) b2_en = 1;
			else b3_en = 1;

			out_MUX = SHIFTER;//Select correct output

			state = IDLE;//Return to IDLE
		end

		MULT: begin
			//Enable correct BRAM
			if(DD = B0) b0_en = 1;
			else if(DD = B1) b1_en = 1;
			else if(DD = B2) b2_en = 1;
			else b3_en = 1;

			out_MUX = MULTIPLIER;//Select correct output

			state = IDLE;//Return to IDLE
		end

		LOAD: begin
			//Enable correct BRAM single load
			if(DD = B0) b0_en1 = 1;
			else if(DD = B1) b1_en1 = 1;
			else if(DD = B2) b2_en 1= 1;
			else b3_en1 = 1;

			if(counter >= 63) begin//Check if done 64 loads
				state = IDLE;//Return to IDLE
			end

			else state = LOAD;//Stay in LOAD

			counter = counter + 1;//Increment counter
			offset = offset + 7;//Increment offset by 7
		end

		UNLOAD: begin
			if(counter >= 63) state = IDLE;//If done 64 unloads, return to IDLE
			else state = UNLOAD;//Stay in UNLOAD

			counter = counter + 1;//Increment counter
			offset = offset + 7;//Increment offset by 7

		end

		COPY: begin
			//Enable correct BRAM
			if(DD = B0) b0_en = 1;
			else if(DD = B1) b1_en = 1;
			else if(DD = B2) b2_en = 1;
			else b3_en = 1;

			bram_in_MUX = 1;//Select BRAM input

			state = IDLE;//Return to IDLE
		end

		CLEAR: begin
			if(DD = B0) b0_rst = 1;
			else if(DD = B1) b1_rst = 1;
			else if(DD = B2) b2_rst = 1;
			else b3_rst = 1;

			state = IDLE;//Return to IDLE
		end
		
		default: state = RESET;//Reset if something goes wrong
	endcase
end

endmodule