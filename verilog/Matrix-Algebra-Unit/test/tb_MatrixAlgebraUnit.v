module tb_MAU;

parameter matrix_dim = 8;

reg [7:0] host_instruction, data_in;
reg clk, reset;
wire [7:0] data_out;
wire busy_flag;

MAU #(matrix_dim) uut
(
    .host_instruction(host_instruction),
    .data_in(data_in),
    .clk(clk),
    .reset(reset),
    .data_out(data_out),
    .busy_flag(busy_flag)
);



endmodule