module Multiplier
#(parameter num_bits = 512)
(input  [num_bits-1:0] dd, aa,
output [num_bits-1:0] product);

genvar i;
generate
    for (i = 7; i < num_bits; i = i + 8) // Go through the 64 8-bit numbers in the 512-bit chunk
    begin
       assign product[i:i-7] = dd[i:i-7] * aa[i:i-7]; // Multiply each 8-bit number
    end
endgenerate

endmodule