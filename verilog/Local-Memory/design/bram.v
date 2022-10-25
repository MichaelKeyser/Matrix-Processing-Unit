
module bram
#( parameter num_bits = 512)
(
	input [num_bits-1:0] chunk_input,
	input [7:0] host_input,
	input host_read, chunk_read, rst, clk,
	output reg [7:0] host_out,
	output [num_bits-1:0] chunk_out
	output reg done_flag
);

	// Declare the RAM variable
	reg [7:0] ram[2**ADDR_WIDTH-1:0];

	always @ (posedge clk)
	begin
		if (rst) for (integer i = 0; i < 2**ADDR_WIDTH; i = i + 1) ram[i] <= 8'h00;

		if (wrall) for (integer i = 0; i < 2**ADDR_WIDTH; i = i + 1) ram[i] <= shhbang[i];

		if (wre)
		begin
			ram[addr] <= data;
			q <= data;
		end
		else
		begin
			q <= ram[addr];
		end
	end

	assign qall = ram;
	
endmodule