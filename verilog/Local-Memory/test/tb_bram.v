module tb_bram;

reg[7:0] data;
reg[11:0] addr;
reg clk, wre;
wire[7:0] q;

bram uut
(
    .data(data),
    .addr(addr),
    .wre(wre),
    .clk(clk),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    #10;
    data = 0; addr = 0; wre = 0; clk = 0;// Initialize all signals
    #10;

    wre = 1;// Set write enable
    addr = 12'hAAA;// Set address
    data = 8'hAA;// Set data
    #10;
    
    addr = 12'hFFF;// Set address
    data = 8'hFF;// Set data
    #10;

    wre = 0;// Clear write enable
    addr = 12'hAAA;// Set address
    #10;
    $display("q = %h", q);// Display output

    addr = 12'hFFF;// Set address
    #10;
    $display("q = %h", q);// Display output

    addr = 12'hAAA;// Set address
    #10;
    $display("q = %h", q);// Display output

    $finish;
end

endmodule