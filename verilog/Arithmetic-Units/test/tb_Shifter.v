module tb_Shifter;

parameter num_bits = 512;

reg [num_bits-1:0] dd, aa;
wire [num_bits - 1:0] shift;

Shifter #(num_bits) uut
(.dd(dd), .aa(aa),
.shift(shift));

integer i;
initial begin



aa = 512'b0;
dd = 512'b0;
#10;

// Test each section
for (i = 7; i < num_bits; i = i + 8) begin
    //$display("Testing Addresses %d to %d", i, i-7);
    // Add 8 bit chunk with 1s at the beginning and end
    if(i == 7)  
    begin
        dd[i-:8] = 8'b01000011;
        aa[i-:8] = 8'b00000001;
        #10;
        if(shift != {504'b0, 8'b10000110}) $display("Addresses 7 to 0 incorrect.\n");
        #10;
        dd = 512'b0;
        aa = 512'b0;
    end
    // Add 8 bit chunk with 1 at end
    else if (i == 311) begin
    dd[i-:8] = 8'b00011001; 
    aa[i-:8] = 8'b00000100;
    #10;
    if(shift != {200'b0, 8'b10010000, 304'b0}) $display("Addresses 311 to 304 incorrect.\n");
    #10;
    dd = 512'b0;
    aa = 512'b0;
    end
    else if(i == 511) begin
        dd[i-:8] = 8'b00000001;
        aa[i-:8] = 8'b00001001;
        #10;
        if(shift != {8'b00000000, 504'b0}) $display("Addresses 511 to 504 incorrect.\n");
    end
    else begin
    dd = 512'b0;
    aa = 512'b0;
    #10;
    end
    
end

end
endmodule 

/*
dd = {512{1'b1}};
    aa = {512{1'b1}};
    */