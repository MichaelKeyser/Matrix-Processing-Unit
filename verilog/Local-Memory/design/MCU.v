
module MCU
#( parameter num_bits = 512)
(
	input [num_bits-1:0] chunk_input,
	input [7:0] host_input,
	input [num_bits/8:0] offset,
	input host_write, chunk_read, host_read ,rst, clk,
	output reg [7:0] host_out,
	output [num_bits-1:0] chunk_out
);


	
endmodule