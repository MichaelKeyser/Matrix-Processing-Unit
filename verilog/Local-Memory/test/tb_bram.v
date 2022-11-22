module tb_bram;

parameter num_bits = 512;

reg [num_bits-1:0] chunk_input;
reg [7:0] host_input;
reg [8:0] offset;
reg line_read_from_host, chunk_read_from_bram, rst, clk;
reg [7:0] test_input;
wire [7:0] bram_to_host;
wire [num_bits-1:0] chunk_out;

bram #(.num_bits(num_bits)) uut
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

always #5 clk = ~clk;

integer i;

initial begin
    clk = 1'b0; rst = 1'b0;
    #10;
    rst = 1'b1;
    #10;
    rst = 1'b0;

    // Write to alternating bits and check that they are read back correctly
    for (i = 0; i < num_bits; i = i + 2) 
    begin
        chunk_input[i] = 1'b1;
        chunk_input[i+1] = 1'b0;
    end

    chunk_read_from_bram = 1'b1;
    #10;
    chunk_read_from_bram = 1'b0;
    #10;

    for (i = 0; i < num_bits; i = i + 2) 
    begin
        if (chunk_out[i] != 1'b1 || chunk_out[i+1] != 1'b0)
            begin
                $display("chunk_out[%d] = %b%b", i, chunk_out[i], chunk_out[i+1]);
            end
    end

    // Write to alternating bits and check opposite way and check that they are read back correctly

    for (i = 0; i < num_bits; i = i + 2) 
    begin
        chunk_input[i] = 1'b0;
        chunk_input[i+1] = 1'b1;
    end

    chunk_read_from_bram = 1'b1;
    #10;
    chunk_read_from_bram = 1'b0;
    #10;

    for (i = 0; i < num_bits; i = i + 2) 
    begin
        if (chunk_out[i] != 1'b0 || chunk_out[i+1] != 1'b1)
            begin
                $display("chunk_out[%d] = %b%b", i, chunk_out[i], chunk_out[i+1]);
            end
    end

    // Reset and check that the bram is zeroed  
    rst = 1'b1;
    #10;
    rst = 1'b0;
    #10;

    if (chunk_out != 0)
    begin
        $display("Reset Failed");
    end

    // Write to host sequentaly and check that it is read back correctly

    line_read_from_host = 1'b1;
    host_input = 8'h01;
    for (i = 7; i < num_bits; i = i + 8)
    begin
        offset = i;
        #10;
        host_input = host_input + 1;
    end

    line_read_from_host = 1'b0;
    #10;

    test_input = 8'h01;
    for (i = 7; i < num_bits; i = i + 8) 
    begin
        offset = i;
        #10;
        if (bram_to_host != test_input)
            begin
                $display("offset[%d] = %d %d", i, bram_to_host, test_input);
            end
        test_input = test_input + 1;
    end

    $display("Testing Finished");
    $finish;
end
endmodule