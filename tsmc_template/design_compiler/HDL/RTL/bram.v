
module bram
#( parameter num_bits = 512)
(
	input [num_bits-1:0] chunk_input,
	input [7:0] host_input,
	input [8:0] offset,
	input line_read_from_host, chunk_read_from_bram, rst, clk,
	output [7:0] bram_to_host,
	output [num_bits-1:0] chunk_out
);

	// Declare the RAM variable
	reg [num_bits-1:0] ram;

	always @ (posedge clk)
	begin
		if (rst)
		begin
			ram <= 0;
		end

		else if (chunk_read_from_bram)
		begin
			ram[num_bits-1:0] <= chunk_input[num_bits-1:0];
		end

		else if (line_read_from_host)
		begin
			ram[offset-:8] <= host_input[7:0];
		end

		else
		begin
			ram <= ram;
		end

	end

	assign chunk_out = ram;
	assign bram_to_host = ram[offset-:8];
	
endmodule