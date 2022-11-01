module tb_Adder;

parameter num_bits = 512;

reg [num_bits-1:0] dd, aa;
wire[num_bits - 1:0] sum;

Adder #(num_bits) uut
(.dd(dd), .aa(aa),
.sum(sum));

initial begin

$display("test");
$finish;
end

endmodule 