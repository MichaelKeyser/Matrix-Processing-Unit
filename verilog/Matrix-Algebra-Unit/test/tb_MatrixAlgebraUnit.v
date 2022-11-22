module tb_MAU;

parameter matrix_dim = 8;

reg [7:0] host_instruction, data_in;
reg clk, rst;
wire [7:0] data_out;
wire busy_flag;

MAU #(matrix_dim) uut
(
    .host_instruction(host_instruction),
    .data_in(data_in),
    .clk(clk),
    .rst(rst),
    .data_out(data_out),
    .busy_flag(busy_flag)
);

parameter BUSY = 1'b1;

always begin
    #5;
    clk = ~clk;
    if(uut.b0_line_read_from_host) $display("data_in = %h", data_in);
end

integer i;
integer do;
reg [7:0] test_load_val;
initial begin

host_instruction = 8'b00000000;
clk = 1'b0; rst = 1'b0;
#10;
rst = 1'b1;
#10;
rst = 1'b0;
#20;

host_instruction = 8'b00_00_00_00;//NOP
#20;
if(busy_flag == BUSY) $display("NOP failed\n");


/* TESTING LOAD COMMAND for each BRAM */
// BRAM 0
#10;
test_load_val = 8'b0;
data_in = 8'b10000001;
host_instruction = 8'b00_00_01_00;//LOAD from host to BRAM 0

do = 1;
while(do) begin
    #10;
    if (busy_flag == BUSY) begin
        do = 0;
    end
end
$display("flag just turned busy");
$display("%d", uut.offset);
i = 0;
while(busy_flag == BUSY)
begin
    #10;
    //data_in = data_in + 1'b1;
    i = i + 1;
end
if(uut.B1.ram != 512'b0 || uut.B2.ram != 512'b0 || uut.B3.ram != 512'b0)
begin
$display("BRAM 0 test load failed\n");
$finish;
end
$display("%b", uut.B0.ram);
$display("%d", i);


// force reset B0
uut.B0.ram = 512'b0;

// BRAM 1
#10;
test_load_val = 8'b0;
data_in = 8'b00000000;
host_instruction = 8'b01_00_01_00;//LOAD from host to BRAM 1
while(busy_flag != BUSY) begin
    #10;
end
i = 0;
while(busy_flag == BUSY)
begin
    #10;
    data_in = data_in + 1'b1;
    i = i + 1;
end
if(uut.B0.ram != 512'b0 || uut.B2.ram != 512'b0 || uut.B3.ram != 512'b0)
begin
$display("BRAM 1 test load failed\n");
$finish;
end
$display("%b", uut.B1.ram);
$display("%d", i);
// force reset B1
uut.B1.ram = 512'b0;

// BRAM 2
#10;
test_load_val = 8'b0;
data_in = 8'b00000000;
host_instruction = 8'b10_00_01_00;//LOAD from host to BRAM 2
while(busy_flag != BUSY) begin
    #10;
end
i = 0;
while(busy_flag == BUSY)
begin
    #10;
    data_in = data_in + 1'b1;
    i = i + 1;
end
if(uut.B0.ram != 512'b0 || uut.B1.ram != 512'b0 || uut.B3.ram != 512'b0)
begin
$display("BRAM 2 test load failed\n");
$finish;
end
$display("%b", uut.B2.ram);
$display("%d", i);
// force reset B2
uut.B2.ram = 512'b0;

// BRAM 3
#10;
test_load_val = 8'b0;
data_in = 8'b00000000;
host_instruction = 8'b11_00_01_00;//LOAD from host to BRAM 3
while(busy_flag != BUSY) begin
    #10;
end
i = 0;
while(busy_flag == BUSY)
begin
    #10;
    data_in = data_in + 1'b1;
    i = i + 1;
end
if(uut.B0.ram != 512'b0 || uut.B1.ram != 512'b0 || uut.B2.ram != 512'b0)
begin
$display("BRAM 2 test load failed\n");
$finish;
end
$display("%b", uut.B3.ram);
$display("%d", i);
// force reset B3
uut.B3.ram = 512'b0;


$finish;



end

endmodule