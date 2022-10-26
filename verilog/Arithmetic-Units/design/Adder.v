module Adder
#(parameter num_bits = 512)
(input  [num_bits-1:0] dd, aa,
output wire[num_bits-1:0] sum);

genvar i;
generate
    for (i = 0; i < num_bits; i = i + 8) // Go through the 64 8-bit numbers in the 512-bit chunk
    begin
        assign sum[i+7:i] = dd[i+7:i] + aa[i+7:i]; // Add each 8-bit number
    end
endgenerate

endmodule