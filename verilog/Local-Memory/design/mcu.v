
module mcu
#( parameter num_bits = 512)
(
	input [num_bits-1:0] chunk_input,
	input [7:0] host_input,
	input line_write_to_host_en, line_read_from_host_en, chunk_read_from_bram_en, rst, clk,
	output [7:0] bram_to_host,
	output [num_bits-1:0] chunk_out,
	output reg done_flag
);

	bram #(.num_bits(num_bits)) bram1
	(
		.chunk_input(chunk_input),
		.host_input(host_input),
		.offset(offset),
		.line_read_from_host(line_read_from_host),
		.chunk_read_from_bram(chunk_read_from_bram),
		.rst(rst),
		.clk(clk),
		.bram_to_host(bram_to_host),
		.chunk_out(chunk_out)
	);

	reg line_write_to_host, line_read_from_host, chunk_read_from_bram;
	reg [8:0] offset;
	reg [6:0] counter;

	always @ (posedge line_read_from_host_en)
	begin
		counter <= 6'b0;
		offset <= 7;
		done_flag <= 1'b0;
		line_read_from_host <= 1'b1;
	end

	always @ (posedge line_write_to_host_en)
	begin
		counter <= 6'b0;
		offset <= 7;
		done_flag <= 1'b0;
		line_write_to_host <= 1'b1;
	end

	always @ (posedge chunk_read_from_bram_en)
	begin
		chunk_read_from_bram <= 1'b1;
	end

	always @ (posedge clk)
	begin
		if (rst) 
		begin
			line_read_from_host = 1'b0;
			chunk_read_from_bram = 1'b0;
			line_read_from_host = 1'b0;
			offset = 9'b0;
			counter = 6'b0;
			done_flag = 1'b0;
		end

		else if (line_read_from_host)
		begin
			counter = counter + 1;
			offset = offset + 8;
			if (counter == 64) 
			begin
				counter = 0;
				offset = 0;
				line_read_from_host = 1'b0;
				done_flag = 1'b1;
			end
		end
	
		else if (line_write_to_host && 0)
		begin
			counter = counter + 1;
			offset = offset + 8;
			if (counter == 64) 
			begin
				counter = 0;
				offset = 0;
				line_write_to_host = 1'b0;
				done_flag = 1'b1;
			end
		end

		else if(chunk_read_from_bram && 0)
		begin
			chunk_read_from_bram = 1'b0;
		end
	end

	
endmodule