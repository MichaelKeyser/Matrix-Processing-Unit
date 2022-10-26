module Multiplier
#(parameter num_bits = 512)
(input  [num_bits-1:0] dd, aa,
output [num_bits-1:0] product);

genvar i;
generate
    for (i = 0; i < num_bits; i = i + 8) // Go through the 64 8-bit numbers in the 512-bit chunk
    begin
        assign product[i+7:i] = dd[i+7:i] * aa[i+7:i]; // Multiply each 8-bit number, ignore overflow errors
    end
endgenerate

endmodule