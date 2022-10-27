
module MCU
#( parameter num_bits = 512)
(
	input [num_bits-1:0] chunk_input,
	input [7:0] host_input,
	input host_write_en, chunk_read_en, host_read_en, rst, clk,
	output reg [7:0] host_out,
	output [num_bits-1:0] chunk_out
);

	bram #(.num_bits(num_bits)) bram_inst
	(
		.chunk_input(chunk_input),
		.host_input(host_input),
		.offset(offset),
		.host_write(host_write),
		.chunk_read(chunk_read),
		.host_read(host_read),
		.rst(rst),
		.clk(clk),
		.host_out(host_out),
		.chunk_out(chunk_out)
	);

	reg host_read, host_write, chunk_read, chunk_write;
	reg [7:0] offset;
	reg [5:0] counter;

	always @ (posedge host_read_en)
	begin
		counter <= 6'b0;
		host_read <= 1'b1;
	end

	always @ (posedge host_write_en)
	begin
		counter <= 6'b0;
		host_write <= 1'b1;
	end

	always @ (posedge chunk_read_en)
	begin
		chunk_read <= 1'b1;
	end

	always @ (posedge clk)
	begin
		if (rst) 
		begin
			counter <= 6'b0;
			host_read <= 1'b0;
			host_write <= 1'b0;
			chunk_read <= 1'b0;
			chunk_write <= 1'b0;
			offset <= 8'b0;
		end

		else if (host_read) 
		begin
			offset = counter * 8;
			counter = counter + 1;

			if (counter == 63) 
			begin
				counter = 0;
				host_read = 0;
			end
		end
	end

	
endmodule