//Need to include this file which contains the definition of the pads. 
//There is no RTL code as those one will be used for place & route.
//The RTL definition of the pads is available here: 
// /research/ece/lnis-teaching/Designkits/tsmc180nm/full_custom_lib/verilog/padlib_tsmc180.v
`include "/research/ece/lnis-teaching/5710_6710_F20/Lab_files/HDL/padlib_tsmc180_innovus.v" 

//Include the post-synthesis netlist.
`include "/research/ece/lnis-teaching/5710_6710_F20/Lab_files/HDL/shift_register_mapped.v" 

`include "/home/u1081888/Matrix-Processing-Unit/tsmc_template/design_compiler/HDL/GATE/MAU_mapped.v"


//Instantiate the TOP module
module MAU_mapped_pads (clk, rst, 
h0, h1, h2, h3,h4,h5,h6,h7, 
d0, d1, d2, d3, d4, d5, d6, d7,
bf, do0, do1, do2, do3, do4, do5, do6, do7);

input clk, rst, h0, h1, h2, h3,h4,h5,h6,h7, d0, d1, d2, d3, d4, d5, d6, d7;
output bf, do0, do1, do2, do3, do4, do5, do6, do7;

// input pads
pad_in pad_in0 (.pad(clk), .DataIn(clk_pad));
pad_in pad_in1 (.pad(rst), .DataIn(rst_pad));
pad_in pad_in2 (.pad(h0), .DataIn(h0_pad));
pad_in pad_in3 (.pad(h1), .DataIn(h1_pad));
pad_in pad_in4 (.pad(h2), .DataIn(h2_pad));
pad_in pad_in5 (.pad(h3), .DataIn(h3_pad));
pad_in pad_in6 (.pad(h4), .DataIn(h4_pad));
pad_in pad_in7 (.pad(h5), .DataIn(h5_pad));
pad_in pad_in8 (.pad(h6), .DataIn(h6_pad));
pad_in pad_in9 (.pad(h7), .DataIn(h7_pad));
pad_in pad_in10 (.pad(d0), .DataIn(di0_pad));
pad_in pad_in11 (.pad(d1), .DataIn(di1_pad));
pad_in pad_in12 (.pad(d2), .DataIn(di2_pad));
pad_in pad_in13 (.pad(d3), .DataIn(di3_pad));
pad_in pad_in14 (.pad(d4), .DataIn(di4_pad));
pad_in pad_in15 (.pad(d5), .DataIn(di5_pad));
pad_in pad_in16 (.pad(d6), .DataIn(di6_pad));
pad_in pad_in17 (.pad(d7), .DataIn(di7_pad));

// ouput pads
pad_out_buffered pad_out0 (.pad(do0), .out(do0_pad));
pad_out_buffered pad_out1 (.pad(do1), .out(do1_pad));
pad_out_buffered pad_out2 (.pad(do2), .out(do2_pad));
pad_out_buffered pad_out3 (.pad(do3), .out(do3_pad));
pad_out_buffered pad_out4 (.pad(do4), .out(do4_pad));
pad_out_buffered pad_out5 (.pad(do5), .out(do5_pad));
pad_out_buffered pad_out6 (.pad(do6), .out(do6_pad));
pad_out_buffered pad_out7 (.pad(do7), .out(do7_pad));
pad_out_buffered pad_out8 (.pad(bf), .out(bf_pad));


//We also need 1 VDD and 1 GND pad
pad_vdd pad_vdd0 ();
pad_gnd pad_gnd0 ();

//We also need 4 corners pad so the pad ring is continous.
pad_corner corner0 ();
pad_corner corner1 ();
pad_corner corner2 ();
pad_corner corner3 ();

//Finally, we instantiate the verilog moduke obtained after synthesis.
MAU MAU_dut (.clk(clk_pad), .rst(rst_pad), 
.host_instruction({h7_pad, h6_pad, h5_pad, h4_pad, h3_pad, h2_pad, h1_pad, h0_pad}), 
.data_in({di7_pad, di6_pad, di5_pad, di4_pad, di3_pad, di2_pad, di1_pad, di0_pad}),
.data_out({do7_pad, do6_pad, do5_pad, do4_pad, do3_pad, do2_pad, do1_pad, do0_pad}),
.busy_flag(bf_pad)
);
endmodule
