`timescale 1ns/1ps

module tb_MAU;

parameter matrix_dim = 8;

parameter B0 = 2'b00;//BRAM 0
parameter B1 = 2'b01;//BRAM 1
parameter B2 = 2'b10;//BRAM 2
parameter B3 = 2'b11;//BRAM 3

reg [7:0] host_instruction, data_in;
reg clk, rst;  
wire [7:0] data_out;
wire busy_flag, busy;

assign busy_flag = busy;

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
end

//always @ (posedge clk) if(uut.b3_line_read_from_host && clk) $display("data_in = %h | Offset = %d", uut.B3.host_input, uut.B3.offset);

integer i;
integer do;
reg [7:0] test_load_val;
initial begin
$display("begin");
host_instruction = 8'b00_00_00_00;
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
data_in = 8'h01;
#40;
test_load_val = 8'b0;
data_in = 8'h00;
host_instruction = 8'b00_00_01_00;//LOAD from host to BRAM 0
#20;
while(busy_flag == BUSY) begin
    host_instruction = 8'b00_00_00_00;//NOP
    data_in = data_in + 8'h01;
    #10;
end

host_instruction = 8'b00_00_00_00;//NOP
test_load_val = 8'h00;
for(i = 7; i < 512; i = i + 8) begin
    test_load_val = test_load_val + 8'h01;
    if(uut.b0_chunk_out[i-:8] != test_load_val) $display("LOAD B0 failed at %d | Got = %h | Expected = %h", i, uut.b0_chunk_out[i], test_load_val);
end
#50;

// BRAM 1
data_in = 8'h01;
#40;
test_load_val = 8'h00;
data_in = 8'h00;
host_instruction = 8'b01_00_01_00;//LOAD from host to BRAM 1
#20;
while(busy_flag == BUSY) begin
    host_instruction = 8'b01_00_00_00;//NOP
    data_in = data_in + 8'h01;
    #10;
end
host_instruction = 8'b00_00_00_00;//NOP
test_load_val = 8'h00;
for(i = 7; i < 512; i = i + 8) begin
    test_load_val = test_load_val + 8'h01;
    if(uut.b1_chunk_out[i-:8] != test_load_val) $display("LOAD B1 failed at %d | Got = %h | Expected = %h", i, uut.b1_chunk_out[i], test_load_val);
end
#20;

// BRAM 2
data_in = 8'h01;
#40;
test_load_val = 8'b0;
data_in = 8'h00;
host_instruction = 8'b10_00_01_00;//LOAD from host to BRAM 2
#20;
while(busy_flag == BUSY) begin
    data_in = data_in + 8'h01;
    host_instruction = 8'b10_00_00_00;//NOP
    #10;
end
host_instruction = 8'b00_00_00_00;//NOP
test_load_val = 8'h00;
for(i = 7; i < 512; i = i + 8) begin
    test_load_val = test_load_val + 8'h01;
    if(uut.b2_chunk_out[i-:8] != test_load_val) $display("LOAD B2 failed at %d | Got = %h | Expected = %h", i, uut.b2_chunk_out[i], test_load_val);
end
#20;

// BRAM 3
data_in = 8'h01;
#40;
test_load_val = 8'b0;
data_in = 8'h00;
host_instruction = 8'b11_00_01_00;//LOAD from host to BRAM 0
#20;
while(busy_flag == BUSY) begin
    data_in = data_in + 8'h01;
    host_instruction = 8'b11_00_00_00;//NOP
    #10;
end
host_instruction = 8'b00_00_00_00;//NOP
test_load_val = 8'h00;
for(i = 7; i < 512; i = i + 8) begin
    test_load_val = test_load_val + 8'h01;
    if(uut.b3_chunk_out[i-:8] != test_load_val) $display("LOAD B3 failed at %d | Got = %h | Expected = %h", i, uut.b2_chunk_out[i], test_load_val);
end
#20;

/* TESTING UNLOAD COMMAND for each BRAM */
// BRAM 0
#40;
host_instruction = 8'b00_00_01_10;//UNLOAD from BRAM 0 to host
test_load_val = 8'h00;
#20;
while(busy_flag == BUSY) begin
    test_load_val = test_load_val + 8'h01;
    if(data_out != test_load_val && uut.dd_mux_sel == B0) $display("UNLOAD B0 failed at %d | Got = %h | Expected = %h", i, data_out, test_load_val);
    host_instruction = 8'b00_00_00_00;//NOP
    #10;
end
host_instruction = 8'b00_00_00_00;//NOP
#10;

// BRAM 1
#40;
host_instruction = 8'b01_00_01_10;//UNLOAD from BRAM 1 to host
test_load_val = 8'h00;
#20;
while(busy_flag == BUSY) begin
    test_load_val = test_load_val + 8'h01;
    if(data_out != test_load_val && uut.dd_mux_sel == B1) $display("LOAD B1 failed at %d | Got = %h | Expected = %h", i, data_out, test_load_val);
    host_instruction = 8'b01_00_00_00;//NOP
    #10;
end
host_instruction = 8'b00_00_00_00;//NOP
#10;

// BRAM 2
#40;
host_instruction = 8'b10_00_01_10;//UNLOAD from BRAM 2 to host
test_load_val = 8'h00;
#20;
while(busy_flag == BUSY) begin
    test_load_val = test_load_val + 8'h01;
    if(data_out != test_load_val  && uut.dd_mux_sel == B2) $display("LOAD B2 failed at %d | Got = %h | Expected = %h", i, data_out, test_load_val);
    host_instruction = 8'b10_00_00_00;//NOP
    #10;
end
host_instruction = 8'b00_00_00_00;//NOP
#10;

// BRAM 3
#40;
host_instruction = 8'b11_00_01_10;//UNLOAD from BRAM 3 to host
test_load_val = 8'h00;
#20;
while(busy_flag == BUSY) begin
    test_load_val = test_load_val + 8'h01;
    if(data_out != test_load_val && uut.dd_mux_sel == B3) $display("LOAD B3 failed at %d | Got = %h | Expected = %h", i, data_out, test_load_val);
    host_instruction = 8'b11_00_00_00;//NOP
    #10;
end
host_instruction = 8'b00_00_00_00;//NOP
#10;

/* TESTING CLEAR COMMAND for all BRAMS */
//CLEAR BRAM 0
host_instruction = 8'b00_00_01_11;
#30;
if(uut.b0_chunk_out != 0) begin
    $display("CLEAR BRAM 0: Failed");
    $display("%b", uut.b0_chunk_out);
    end
while(busy_flag) begin
    host_instruction = 8'b00000000;
    #10;
end

//CLEAR BRAM 1
host_instruction = 8'b01_00_01_11;
#30;
if(uut.b1_chunk_out != 0) begin
    $display("CLEAR BRAM 1: Failed");
    end
while(busy_flag) begin
    host_instruction = 8'b00000000;
    #10;
end

//CLEAR BRAM 2
host_instruction = 8'b10_00_01_11;
#30;
if(uut.b2_chunk_out != 0) begin
    $display("CLEAR BRAM 2: Failed");
end
while(busy_flag) begin
    host_instruction = 8'b00000000;
    #10;
end

//CLEAR BRAM 3
host_instruction = 8'b11_00_01_11;
#30;
if(uut.b3_chunk_out != 0) begin
    $display("CLEAR BRAM 3: Failed");
end
while(busy_flag) begin
    host_instruction = 8'b00000000;
    #10;
end

/* TESTING COPY COMMAND for all BRAMS */
//First Load data into BRAM 0
data_in = 8'h01;
#40;
test_load_val = 8'b0;
data_in = 8'h00;
host_instruction = 8'b00_00_01_00;//LOAD from host to BRAM 0
#20;
while(busy_flag == BUSY) begin
    host_instruction = 8'b00_00_00_00;//NOP
    data_in = data_in + 8'h01;
    #10;
end

host_instruction = 8'b00_00_00_00;//NOP
test_load_val = 8'h00;
for(i = 7; i < 512; i = i + 8) begin
    test_load_val = test_load_val + 8'h01;
    if(uut.b0_chunk_out[i-:8] != test_load_val) $display("LOAD B0 for COPY failed at %d | Got = %h | Expected = %h", i, uut.b0_chunk_out[i], test_load_val);
end
#50;

//COPY BRAM 0 to BRAM 1
host_instruction = 8'b01_00_01_01;//COPY BRAM 0 to BRAM 1
#30;
test_load_val = 8'h00;
for(i = 7; i < 512; i = i + 8) begin
    test_load_val = test_load_val + 8'h01;
    if(uut.b1_chunk_out[i-:8] != test_load_val) $display("COPY B0 to B1 failed at %d | Got = %h | Expected = %h", i, uut.b1_chunk_out[i], test_load_val);
end
while(busy) begin
    host_instruction = 8'b00000000;
    #10;
end

//COPY BRAM 1 to BRAM 2
host_instruction = 8'b10_01_01_01;//COPY BRAM 1 to BRAM 2
#30;
test_load_val = 8'h00;
for(i = 7; i < 512; i = i + 8) begin
    test_load_val = test_load_val + 8'h01;
    if(uut.b2_chunk_out[i-:8] != test_load_val) $display("COPY B1 to B3 failed at %d | Got = %h | Expected = %h", i, uut.b2_chunk_out[i], test_load_val);
end
while(busy) begin
    host_instruction = 8'b00000000;
    #10;
end

//COPY BRAM 2 to BRAM 3
host_instruction = 8'b11_10_01_01;//COPY BRAM 1 to BRAM 2
#30;
test_load_val = 8'h00;
for(i = 7; i < 512; i = i + 8) begin
    test_load_val = test_load_val + 8'h01;
    if(uut.b3_chunk_out[i-:8] != test_load_val) $display("COPY B2 to B3 failed at %d | Got = %h | Expected = %h", i, uut.b3_chunk_out[i], test_load_val);
end
while(busy) begin
    host_instruction = 8'b00000000;
    #10;
end

/* TESTING ADD COMMAND for all BRAMS */
host_instruction = 8'b00_01_11_00;//BRAM 0 = BRAM 0 + BRAM 1
#40;
test_load_val = 8'h00;
for(i = 7; i < 512; i = i + 8) begin
    test_load_val = test_load_val + 8'h01;
    if(uut.b0_chunk_out[i-:8] != test_load_val*2) $display("B0 = B0 + B1  failed at %d | Got = %h | Expected = %h", i, uut.b0_chunk_out[i], test_load_val*2);
end
while(busy) begin
    host_instruction = 8'b00000000;
    #10;
end
#50;

host_instruction = 8'b10_11_11_00;//BRAM 2 = BRAM 2 + BRAM 3
#40;
test_load_val = 8'h00;
while(busy) begin
    host_instruction = 8'b00000000;
    #10;
end
for(i = 7; i < 512; i = i + 8) begin
    test_load_val = test_load_val + 8'h01;
    if(uut.b2_chunk_out[i-:8] != test_load_val*2) $display("B2 = B2 + B3  failed at %d | Got = %h | Expected = %h", i, uut.b2_chunk_out[i], test_load_val*2);
end

$finish;
end

endmodule