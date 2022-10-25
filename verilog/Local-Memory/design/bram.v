
module bram
#( parameter SIZE = 64)
(
	input [2**ADDR_WIDTH-1:0] shhbang
	input [7:0] data,
	input wre, wrall, rst, clk,
	output reg [7:0] q,
	output reg [2**ADDR_WIDTH-1:0] qall
);

	// Declare the RAM variable
	reg [7:0] ram[2**ADDR_WIDTH-1:0];

	always @ (posedge clk)
	begin
		if (rst) for (integer i = 0; i < 2**ADDR_WIDTH; i = i + 1) ram[i] <= 8'h00;

		if (wrall) for (integer i = 0; i < 2**ADDR_WIDTH; i = i + 1) ram[i] <= shhbang[i];

		if (wre)
		begin
			ram[addr] <= data;
			q <= data;
		end
		else
		begin
			q <= ram[addr];
		end
	end

	assign qall = ram;
	
endmodule