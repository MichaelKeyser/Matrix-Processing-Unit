module tb_mux4to1;

parameter num_bits = 512;

reg [num_bits-1:0] in0, in1, in2, in3;
reg [1:0] sel;
wire [num_bits-1:0] out;

mux4to1 #(.num_bits(num_bits)) uut
(
    .in0(in0),
    .in1(in1),
    .in2(in2),
    .in3(in3),
    .sel(sel),
    .out(out)
);

initial begin
    #10;
    in0 = {510'b0, 2'b00};
    in1 = {510'b0, 2'b01};
    in2 = {510'b0, 2'b10};
    in3 = {510'b0, 2'b11};
    
    sel = 2'b00;
    #10;
    if(out != {510'b0, 2'b00}) begin
        $display("Select 0 failed");
        $finish;
    end
    
    sel = 2'b01;
    #10;
    if(out != {510'b0, 2'b01}) begin
        $display("Select 1 failed");
        $finish;
    end
    
    sel = 2'b10;
    #10;
    if(out != {510'b0, 2'b10}) begin
        $display("Select 2 failed");
        $finish;
    end

    sel = 2'b11;
    #10;
    if(out != {510'b0, 2'b11}) begin
        $display("Select 3 failed");
        $finish;
    end
    $finish;
    
end

endmodule