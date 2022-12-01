module Subtractor
#(parameter num_bits = 512)
(input  [num_bits-1:0] dd, aa,
output [num_bits-1:0] difference);

genvar i;
generate
    for (i = 7; i < num_bits; i = i + 8) // Go through the 64 8-bit numbers in the 512-bit chunk
    begin: genBlock_subtractor
       assign difference[i:i-7] = dd[i:i-7] - aa[i:i-7]; // Subtract each 8-bit number
    end
endgenerate
endmodule