
module bram
#( parameter num_bits = 512)
(
	input [num_bits-1:0] chunk_input,
	input [7:0] host_input,
	input [num_bits/8:0] offset,
	input host_write, chunk_read, host_read ,rst, clk,
	output reg [7:0] host_out,
	output [num_bits-1:0] chunk_out
);

	// Declare the RAM variable
	reg [num_bits-1:0] ram;

	always @ (posedge clk)
	begin
		if (rst)
		begin
			for (integer i = 0; i < num_bits; i = i + 1) ram[i] <= 1'b0;
		end

		else if (chunk_read)
		begin
			ram[num_bits-1:0] <= chunk_input[num_bits-1:0];
		end

		else if (host_write)
		begin
			ram[offset-:7] <= host_input[7:0];
		end

		else if (host_read)
		begin
			host_out <= ram[offset-:7];
		end

		else
		begin
			ram <= ram;
		end

	end

	assign chunk_out = ram;
	
endmodule