module MAU
#(parameter matrix_dim = 8)
(
    input [7:0] host_instruction, data_in,
    input clk, reset,
    output wire  [7:0] data_out,
    output wire busy
);

parameter num_bits = matrix_dim * matrix_dim * 8;

// Global wires
wire  rst, clk;

/************** BRAMs **************/

// Wires to all BRAMs
wire [num_bits-1:0] chunk_input;
wire [7:0] host_input;
wire [8:0] offset;


// BRAM0
wire [num_bits-1:0] b0_chunk_out;
wire [7:0] b0_bram_to_host;
wire b0_line_read_from_host, b0_chunk_read_from_bram;

bram #(.num_bits(num_bits)) B0
	(
		.chunk_input(chunk_input),
		.host_input(host_input),
		.offset(offset),
		.line_read_from_host(b0_line_read_from_host),
		.chunk_read_from_bram(b0_chunk_read_from_bram),
		.rst(rst),
		.clk(clk),
		.bram_to_host(b0_bram_to_host),
		.chunk_out(b0_chunk_out)
	);

// BRAM1
wire [num_bits-1:0] b1_chunk_out;
wire [7:0] b1_bram_to_host;
wire b1_line_read_from_host, b1_chunk_read_from_bram;

bram #(.num_bits(num_bits)) B1
	(
		.chunk_input(chunk_input),
		.host_input(host_input),
		.offset(offset),
		.line_read_from_host(b1_line_read_from_host),
		.chunk_read_from_bram(b1_chunk_read_from_bram),
		.rst(rst),
		.clk(clk),
		.bram_to_host(b1_bram_to_host),
		.chunk_out(b1_chunk_out)
	);

// BRAM2
wire [num_bits-1:0] b2_chunk_out;
wire [7:0] b2_bram_to_host;
wire b2_line_read_from_host, b2_chunk_read_from_bram;

bram #(.num_bits(num_bits)) B2
	(
		.chunk_input(chunk_input),
		.host_input(host_input),
		.offset(offset),
		.line_read_from_host(b2_line_read_from_host),
		.chunk_read_from_bram(b2_chunk_read_from_bram),
		.rst(rst),
		.clk(clk),
		.bram_to_host(b2_bram_to_host),
		.chunk_out(b2_chunk_out)
	);

// BRAM3
wire [num_bits-1:0] b3_chunk_out;
wire [7:0] b3_bram_to_host;
wire b3_line_read_from_host, b3_chunk_read_from_bram;

bram #(.num_bits(num_bits)) B3
	(
		.chunk_input(chunk_input),
		.host_input(host_input),
		.offset(offset),
		.line_read_from_host(b3_line_read_from_host),
		.chunk_read_from_bram(b3_chunk_read_from_bram),
		.rst(rst),
		.clk(clk),
		.bram_to_host(b3_bram_to_host),
		.chunk_out(b3_chunk_out)
	);




/************** MUXes **************/

// BRAM output select muxes
wire [1:0] aa_mux_sel;
wire [num_bits-1:0] aa_mux_out;
mux4to1#(num_bits) AA_MUX
(
    .in0(b0_chunk_out),
    .in1(b1_chunk_out),
    .in2(b2_chunk_out),
    .in3(b3_chunk_out),
    .sel(aa_mux_sel),
    .out(aa_mux_out)
);

wire [1:0] dd_mux_sel;
wire [num_bits-1:0] dd_mux_out;
mux4to1#(num_bits) DD_MUX
(
    .in0(b0_chunk_out),
    .in1(b1_chunk_out),
    .in2(b2_chunk_out),
    .in3(b3_chunk_out),
    .sel(dd_mux_sel),
    .out(dd_mux_out)
);


// Arithmetic units output mux
wire [num_bits-1:0] adder_out, shifter_out, subtractor_out, multiplier_out, arithmetic_mux_out;
wire [1:0] arithmetic_mux_sel;

mux4to1#(num_bits) ARITHMETIC_MUX
(
    .in0(adder_out),
    .in1(shifter_out),
    .in2(subtractor_out),
    .in3(multiplier_out),
    .sel(arithmetic_mux_sel),
    .out(arithmetic_mux_out)
);

// BRAM copy MUX
mux4to1#(num_bits) BRAM_COPY_MUX 
(
    .in0(b0)
);







// BRAM input select mux
wire[num_bits-1:0] BRAM_copy_mux_out;
wire BRAM_copy_mux_sel;

mux2to1 #(num_bits) BRAM_IN_MUX
(
    .in0(arithmetic_mux_out),
    .in1(BRAM_copy_mux_out),
    .sel(BRAM_in_mux_sel),
    .out(chunk_input)
);





endmodule