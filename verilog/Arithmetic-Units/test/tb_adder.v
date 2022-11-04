module tb_Adder;

parameter num_bits = 512;

reg [num_bits-1:0] dd, aa;
wire [num_bits - 1:0] sum;

Adder #(num_bits) uut
(.dd(dd), .aa(aa),
.sum(sum));

integer i;
initial begin



aa = 512'b1;
#10;

// Test each section
for (i = 7; i < num_bits; i = i + 8) begin
    //$display("Testing Addresses %d to %d", i, i-7);
    // Add 8 bit chunk with 1s at the beginning and end
    if(i == 7)  
    begin
        dd[i-:8] = 8'b10000001;
        #10;
        if(sum != {504'b0, 8'b10000010}) $display("Addresses 7 to 0 incorrect.\n");
        dd = 512'b0;
    end
    // Add 8 bit chunk with 1 at end
    else if (i == 311) begin
    dd[i-:8] = 8'b10000001; 
    #10;
    if(sum != {200'b0, 8'b10000001, 303'b0, 1'b1}) $display("Addresses 311 to 304 incorrect.\n");
    end
    else if(i == 511) begin
        dd[i-:8] = 8'b11000001;
        #10;
        if(sum != {8'b11000001, 192'b0, 8'b10000001, 303'b0, 1'b1}) $display("Addresses 511 to 504 incorrect.\n");
    end
    else begin
    dd[i-:8] = 8'b00000000; // add 8 bit chunk  at beginning and last two digits
    #10;
    end
end

end
endmodule 

/*
dd = {512{1'b1}};
    aa = {512{1'b1}};
    */