module tb_Adder;

parameter num_bits = 512;

reg [num_bits-1:0] dd, aa;
wire [num_bits - 1:0] sum;

Adder #(num_bits) uut
(.dd(dd), .aa(aa),
.sum(sum));

integer i;
initial begin

aa = 512'b0;
// Test each section by adding 1
for (i = 7; i < num_bits; i = i + 8) begin
    $display("Addresses %d to %d", i, i-7);
    dd[i-:8] = 8'b00000001;
    #10;
    $display("%b",sum[i-:8]);

end

// Print the final sum to verify the specific 8 bit chunks are the only areas affected in each operation
$display("%b", sum);
end
endmodule 

/*
dd = {512{1'b1}};
    aa = {512{1'b1}};
    */