module MAU
#(parameter matrix_dim = 8)
(
    input [7:0] host_instruction, data_in,
    input clk, rst,
    output wire  [7:0] data_out,
    output wire busy_flag
);

parameter num_bits = matrix_dim * matrix_dim * 8;

// Wires to all BRAMs
wire [num_bits-1:0] chunk_input;
wire [7:0] host_input;
wire [8:0] offset;
assign host_input = data_in;
wire BRAM_in_mux_sel;
wire b0_rst, b1_rst, b2_rst, b3_rst;


// BRAM0
wire [num_bits-1:0] b0_chunk_out;
wire [7:0] b0_bram_to_host;
wire b0_line_read_from_host, b0_chunk_read_from_bram;

// BRAM1
wire [num_bits-1:0] b1_chunk_out;
wire [7:0] b1_bram_to_host;
wire b1_line_read_from_host, b1_chunk_read_from_bram;

// BRAM2
wire [num_bits-1:0] b2_chunk_out;
wire [7:0] b2_bram_to_host;
wire b2_line_read_from_host, b2_chunk_read_from_bram;

// BRAM3
wire [num_bits-1:0] b3_chunk_out;
wire [7:0] b3_bram_to_host;
wire b3_line_read_from_host, b3_chunk_read_from_bram;

// BRAM output select muxes
wire [1:0] aa_mux_sel;
wire [num_bits-1:0] aa_mux_out;

wire [1:0] dd_mux_sel;
wire [num_bits-1:0] dd_mux_out;

// Arithmetic units output mux
wire [num_bits-1:0] adder_out, shifter_out, subtractor_out, multiplier_out, arithmetic_mux_out;
wire [1:0] arithmetic_mux_out_sel;

// BRAM input select mux
wire[num_bits-1:0] BRAM_copy_mux_out;
wire BRAM_copy_mux_sel;

/************** FSM **************/
FSM #(num_bits)CHIP_FSM 
(
    .host_instruction(host_instruction),
    .clk(clk), .reset(rst),
    .offset(offset),
    .aa_MUX(aa_mux_sel), .dd_MUX(dd_mux_sel),
    .out_MUX(arithmetic_mux_out_sel),
    .busy(busy_flag), .bram_in_MUX(BRAM_in_mux_sel), .b0_rst(b0_rst), .b1_rst(b1_rst), .b2_rst(b2_rst), .b3_rst(b3_rst),
    .b0_en(b0_chunk_read_from_bram), .b1_en(b1_chunk_read_from_bram), .b2_en(b2_chunk_read_from_bram), .b3_en(b3_chunk_read_from_bram),
    .b0_en1(b0_line_read_from_host), .b1_en1(b1_line_read_from_host), .b2_en1(b2_line_read_from_host), .b3_en1(b3_line_read_from_host)
);


/************** BRAMs **************/
bram #(.num_bits(num_bits)) B0
	(
		.chunk_input(chunk_input),
		.host_input(host_input),
		.offset(offset),
		.line_read_from_host(b0_line_read_from_host),
		.chunk_read_from_bram(b0_chunk_read_from_bram),
		.rst(b0_rst),
		.clk(clk),
		.bram_to_host(b0_bram_to_host),
		.chunk_out(b0_chunk_out)
	);



bram #(.num_bits(num_bits)) B1
	(
		.chunk_input(chunk_input),
		.host_input(host_input),
		.offset(offset),
		.line_read_from_host(b1_line_read_from_host),
		.chunk_read_from_bram(b1_chunk_read_from_bram),
		.rst(b1_rst),
		.clk(clk),
		.bram_to_host(b1_bram_to_host),
		.chunk_out(b1_chunk_out)
	);



bram #(.num_bits(num_bits)) B2
	(
		.chunk_input(chunk_input),
		.host_input(host_input),
		.offset(offset),
		.line_read_from_host(b2_line_read_from_host),
		.chunk_read_from_bram(b2_chunk_read_from_bram),
		.rst(b2_rst),
		.clk(clk),
		.bram_to_host(b2_bram_to_host),
		.chunk_out(b2_chunk_out)
	);



bram #(.num_bits(num_bits)) B3
	(
		.chunk_input(chunk_input),
		.host_input(host_input),
		.offset(offset),
		.line_read_from_host(b3_line_read_from_host),
		.chunk_read_from_bram(b3_chunk_read_from_bram),
		.rst(b3_rst),
		.clk(clk),
		.bram_to_host(b3_bram_to_host),
		.chunk_out(b3_chunk_out)
	);




/************** MUXes **************/


mux4to1#(num_bits) AA_MUX
(
    .in0(b0_chunk_out),
    .in1(b1_chunk_out),
    .in2(b2_chunk_out),
    .in3(b3_chunk_out),
    .sel(aa_mux_sel),
    .out(aa_mux_out)
);


mux4to1#(num_bits) DD_MUX
(
    .in0(b0_chunk_out),
    .in1(b1_chunk_out),
    .in2(b2_chunk_out),
    .in3(b3_chunk_out),
    .sel(dd_mux_sel),
    .out(dd_mux_out)
);




mux4to1#(num_bits) ARITHMETIC_MUX
(
    .in0(adder_out),
    .in1(shifter_out),
    .in2(subtractor_out),
    .in3(multiplier_out),
    .sel(arithmetic_mux_out_sel),
    .out(arithmetic_mux_out)
);


mux4to1#(8) HOST_OUT_MUX
(
    .in0(b0_bram_to_host),
    .in1(b1_bram_to_host),
    .in2(b2_bram_to_host),
    .in3(b3_bram_to_host),
    .sel(dd_mux_sel),
    .out(data_out)
);


mux2to1 #(num_bits) BRAM_IN_MUX
(
    .in0(arithmetic_mux_out),
    .in1(aa_mux_out),
    .sel(BRAM_in_mux_sel),
    .out(chunk_input)
);


/************** Arithmetic Units **************/
Adder #(num_bits) ADDER
(
   .aa(aa_mux_out),
   .dd(dd_mux_out),
   .sum(adder_out)
);

Shifter#(num_bits) SHIFT
(
   .aa(aa_mux_out),
   .dd(dd_mux_out),
   .shift(shifter_out)
);

Subtractor#(num_bits) SUBTRACTOR
(
   .aa(aa_mux_out),
   .dd(dd_mux_out),
   .difference(subtractor_out)
);

Multiplier#(num_bits) MULTIPLIER
(
   .aa(aa_mux_out),
   .dd(dd_mux_out),
   .product(multiplier_out)
);



endmodule
