
module bram
#( parameter num_bits = 512)
(
	input [num_bits-1:0] chunk_input,
	input [7:0] host_input,
	input [num_bits/8:0] offset,
	input host_write, chunk_read, rst, clk,
	output reg [7:0] host_out,
	output [num_bits-1:0] chunk_out
);

	// Declare the RAM variable
	reg [num_bits-1:0] ram;

	// RAM Counter
	integer ram_counter;//Need 9 bits to count up to 512
	reg reading, writing;

	always @ (posedge clk)
	begin
		if (rst)
		begin
			for (integer i = 0; i < num_bits; i = i + 1) ram[i] <= 1'b0;
			ram_counter <= 0;
			reading <= 0;
			writing <= 0;
		end

		if (reading)
		begin
			ram[ram_counter*8-:8] = host_input;
			ram_counter = ram_counter + 1;
		end

		else if (writing) reading <= 0;

		//else if (host_read) reading <= 1;
		
		else if (host_write) writing <= 1;

		if (chunk_read)
		begin
			for (integer i = 0; i < num_bits; i = i + 1) ram[i] <= chunk_input[i];
			ram_counter <= 0;
		end

	end

	assign qall = ram;
	
endmodule