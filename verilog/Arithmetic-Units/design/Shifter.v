module Shifter
#(parameter num_bits = 512)
(input  [num_bits-1:0] dd, aa,
output wire[num_bits-1:0] shift);

genvar i;
generate
    for (i = 7; i < num_bits; i = i + 8) // Go through the 64 8-bit numbers in the 512-bit chunk
    begin
       assign shift[i:i-7] = dd[i:i-7] << aa[i:i-7]; // Add each 8-bit number
    end
endgenerate
endmodule