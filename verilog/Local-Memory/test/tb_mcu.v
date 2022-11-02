module tb_mcu;

parameter num_bits = 512;

reg [num_bits-1:0] chunk_input;
reg [7:0] host_input;
reg line_write_to_host_en, line_read_from_host_en, chunk_read_from_bram_en, rst, clk;
wire [7:0] bram_to_host;
wire [num_bits-1:0] chunk_out;
wire done_flag;

mcu #(.num_bits(num_bits)) uut
(
    .chunk_input(chunk_input),
    .host_input(host_input),
    .line_write_to_host_en(line_write_to_host_en),
    .line_read_from_host_en(line_read_from_host_en),
    .chunk_read_from_bram_en(chunk_read_from_bram_en),
    .rst(rst),
    .clk(clk),
    .bram_to_host(bram_to_host),
    .chunk_out(chunk_out),
    .done_flag(done_flag)
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

    chunk_read_from_bram_en = 1'b1;
    #10;
    chunk_read_from_bram_en = 1'b0;
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

    chunk_read_from_bram_en = 1'b1;
    #10;
    chunk_read_from_bram_en = 1'b0;
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

    line_write_to_host_en = 1'b1;
    host_input = 8'h0;
    
    while (!done_flag) 
    begin
        host_input = host_input + 1;
        #10;
        line_read_from_host_en = 1'b0;
    end

    line_read_from_host_en = 1'b1;
    host_input = 8'h0;
    
    while (!done_flag) 
    begin
        host_input = host_input + 1;
        #10;
        line_read_from_host_en = 1'b0;
    end

    $display("host_input = %d", host_input);

    $display("Testing Finished");
    $finish;
end
endmodule