module mux4to1
#( parameter num_bits = 512) 
(
    input [num_bits-1:0] in0, in1, in2, in3,
    input [1:0] sel,
    output [num_bits-1:0] out
);

    assign out = sel[1] ? (sel[0] ? in3 : in2) : (sel[0] ? in1 : in0);

	

endmodule