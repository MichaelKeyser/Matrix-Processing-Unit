module mux2to1
#( parameter num_bits = 512) 
(
    input [num_bits-1:0] in0, in1,
    input sel,
    output [num_bits-1:0] out
);

    assign out = sel ? in1 : in0;
    //If sel is 1, then out is in1, else out is in0

endmodule