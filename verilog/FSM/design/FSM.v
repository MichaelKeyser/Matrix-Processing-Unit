module FSM
#(parameter = 512)
(
    input [7:0] host_instruction,
    input add1_done, add2_done, sub_done, mult_done, bram0_done, bram1_done, bram2_done, bram3_done, clk, reset,
    output FILL_ME_IN
);

parameter [3:0] S0=4'h0,S1=4'h1,S2=4'h2,S3=4'h3,S4=4'h4,S5=4'h5,S6=4'h6,S7=4'h7,S8=4'h8,S9=4'h9,
                SA=4'hA,SB=4'hB,SC=4'hC,SD=4'hD,SE=4'hE,SF=4'hF;
					 
parameter NA =     8'bXXXX00XX;//Do Nothing
parameter LOAD =   8'bXXXX0100;//Load to BRAM from Host
parameter UNLOAD = 8'bXXXX0110;//Unload from BRAM to Host
parameter COPY =   8'bXXXX0101;//Copy from BRAM to BRAM
parameter CLEAR =  8'bXXXX0111;//Clear BRAM
parameter ADD1 =   8'bXXXX1100;//Add from BRAM to BRAM using addr 1
parameter ADD2 =   8'bXXXX1101;//Add from BRAM to BRAM using addr 2
parameter SUB =    8'bXXXX1110;//Subtract from BRAM to BRAM
parameter MULT =   8'bXXXX1111;//Multiply from BRAM to BRAM

parameter B1 = 2'b00;//BRAM 1
parameter B2 = 2'b01;//BRAM 2
parameter B3 = 2'b10;//BRAM 3
parameter B4 = 2'b11;//BRAM 4


always @(posedge clk)begin
	if(rst == 1) y <= S0;
	else begin
		case(y)
			S0: y <= S1;			
			S1: y <= S2;			
			S2: y <= S3;			
			S3: y <= S4;			
			S4: y <= S5;			
			S5: y <= S6;			
			S6: y <= S7;			
			S7: y <= S8;			
			S8: y <= S9;			
			S9: y <= SA;			
			SA: y <= SB;			
			SB: y <= SC;			
			SC: y <= SD;			
			SD: y <= SE;			
			SE: y <= SF;			
			SF: y <= SF;			
			default: y <=4'hx;
			
		endcase
	end
end


always @(y)begin
	regRst = 0;
	register_enable = RNA;
	flgEn = 1'b1;
	imm_value =8'b00000000;
	opcode= NOP;
	a_mux_control = 4'b0000;
	b_mux_control = 4'b0000;
	enable_seven_seg = 1'b0;
	
	
	case(y)
			S0:begin//Reset everything
				regRst = 1;//Reset all registers to 0
			end
	
			S1:begin//1 will be seen on the data path
				register_enable = 16'b1100000000000000;
				imm_value =8'b00000001;

				opcode= ADDUI;		//ADDI (1+0 == 1)
				a_mux_control = 4'h0;//R0
				b_mux_control = 4'hx;//Any since using imm
			end
			
			S2:begin//1+1 =   2 will be seen on the data path, 2 is put in R02
				register_enable = R02;

				opcode= ADDU;		 
				a_mux_control = 4'h0;
				b_mux_control = 4'h1;
			end
			
			S3:begin //1+2 =   3 will be seen on the data path, 3 is put in R03
				register_enable = R03;

				opcode= ADDU;		 
				a_mux_control = 4'h1;
				b_mux_control = 4'h2;
			end
			
			S4:begin//3+2 =   5 will be seen on the data path, 5 is put in R04
				register_enable = R04;

				opcode= ADDU;		 
				a_mux_control = 4'h2;
				b_mux_control = 4'h3;
			end
			
			S5:begin//5+3 =   8 will be seen on the data path, 8 is put in R05
				register_enable = R05;

				opcode= ADDU;		 
				a_mux_control = 4'h3;
				b_mux_control = 4'h4;
			end
			
			S6:begin //etc
				register_enable = R06;

				opcode= ADDU;		 
				a_mux_control = 4'h4;
				b_mux_control = 4'h5;
			end
			
			S7:begin
				register_enable = R07;

				opcode= ADDU;		 
				a_mux_control = 4'h5;
				b_mux_control = 4'h6;
			end
			
			S8:begin
				register_enable = R08;

				opcode= ADDU;		 
				a_mux_control = 4'h6;
				b_mux_control = 4'h7;
			end
			
			S9:begin
				register_enable = R09;

				opcode= ADDU;		 
				a_mux_control = 4'h7;
				b_mux_control = 4'h8;
			end
			
			SA:begin
				register_enable = R10;

				opcode= ADDU;		 
				a_mux_control = 4'h8;
				b_mux_control = 4'h9;
			end
			
			SB:begin
				register_enable = R11;

				opcode= ADDU;		 
				a_mux_control = 4'h9;
				b_mux_control = 4'hA;
			end
			
			SC:begin
				register_enable = R12;

				opcode= ADDU;		 
				a_mux_control = 4'hA;
				b_mux_control = 4'hB;
			end
			
			SD:begin
				register_enable = R13;

				opcode= ADDU;		 
				a_mux_control = 4'hB;
				b_mux_control = 4'hC;
			end
			
			SE:begin
				register_enable = R14;

				opcode= ADDU;		 
				a_mux_control = 4'hC;
				b_mux_control = 4'hD;
			end
			
			SF:begin
				register_enable = R15;

				opcode= ADDU;		 
				a_mux_control = 4'hD;
				b_mux_control = 4'hE;
			end
	endcase
end