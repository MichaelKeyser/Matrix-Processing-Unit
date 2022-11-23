module tb_mux2to1;

parameter num_bits = 8;

reg [num_bits-1:0] in0, in1;
reg sel;
wire [num_bits-1:0] out;

mux2to1 #(.num_bits(num_bits)) uut
(
    .in0(in0),
    .in1(in1),
    .sel(sel),
    .out(out)
);

initial begin
    #10;
    in0 = 8'b00000000;
    in1 = 8'b11111111;
    sel = 1'b0;
    #10;
    if(out != 8'b00000000) $display("Test 0 failed.");
    sel = 1'b1;
    #10;
    if(out != 8'b11111111) $display("Test 1 failed.");
    $finish;
end

endmodule