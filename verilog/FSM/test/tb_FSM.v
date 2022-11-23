module tb_FSM;

parameter num_bits = 512;

parameter B0 = 2'b00;//BRAM 0
parameter B1 = 2'b01;//BRAM 1
parameter B2 = 2'b10;//BRAM 2
parameter B3 = 2'b11;//BRAM 3

parameter ADDER = 2'b00;//Adder
parameter SHIFTER = 2'b01;//Shifter
parameter SUBTRACTOR = 2'b10;//Subtractor
parameter MULTIPLIER = 2'b11;//Multiplier

reg [7:0] host_instruction;
reg clk, reset;
wire [8:0] offset;
wire [1:0] aa_MUX, dd_MUX, bram_MUX;
wire [1:0] out_MUX;
wire busy, bram_in_MUX, b0_rst, b1_rst, b2_rst, b3_rst;
wire b0_en, b1_en, b2_en, b3_en;//bram enable chunk write
wire b0_en1, b1_en1, b2_en1, b3_en1;//bram enable single byte write

FSM #(.num_bits(num_bits))uut (
    .host_instruction(host_instruction),
    .clk(clk), .reset(reset),
    .offset(offset),
    .aa_MUX(aa_MUX), .dd_MUX(dd_MUX),
    .out_MUX(out_MUX),
    .busy(busy), .bram_in_MUX(bram_in_MUX), .b0_rst(b0_rst), .b1_rst(b1_rst), .b2_rst(b2_rst), .b3_rst(b3_rst),
    .b0_en(b0_en), .b1_en(b1_en), .b2_en(b2_en), .b3_en(b3_en),
    .b0_en1(b0_en1), .b1_en1(b1_en1), .b2_en1(b2_en1), .b3_en1(b3_en1)
);

wire [3:0] b_en, b_rst, b_en1;

assign b_en = {b3_en, b2_en, b1_en, b0_en};
assign b_en1 = {b3_en1, b2_en1, b1_en1, b0_en1};
assign b_rst = {b3_rst, b2_rst, b1_rst, b0_rst};

always begin
    #5;
    clk = ~clk;
    //$display("state = %h", uut.state);
end

integer i;

initial begin
    host_instruction = 8'b00000000;
    clk = 1'b0; reset = 1'b0;
    #10;
    reset = 1'b1;
    #10;
    reset = 1'b0;
    #20;

    host_instruction = 8'b00_00_00_00;//NOP
    #20;
    if(b_en != 4'b0000 || b_en1 != 4'b0000 || b_rst != 4'b0000 || busy) begin
        #10;
        $display("NOP failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $finish;
    end
    #30;

    /* TESTING LOAD COMMAND for each BRAM */

    host_instruction = 8'b00_00_01_00;//LOAD from host to BRAM 0
    #10;
    for(i = 0; i < 63; i = i + 1)begin
        #10;
        host_instruction = 8'b00000000;
        //.$display("%d", offset);
        if(b_en != 4'b0000 || b_en1 != 4'b0001 || b_rst != 4'b0000 || !busy) begin
            $display("LOAD from host to BRAM 0: Failed on i = %d", i);
            $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
            $display("counter = %d", uut.counter);
            $finish;
        end
    end
    while(busy) begin
        #10;
    end

    host_instruction = 8'b01_00_01_00;//LOAD from host to BRAM 1
    #10;
    for(i = 0; i < 64; i = i + 1)begin
        #10;
        if(b_en != 4'b0000 || b_en1 != 4'b0010 || b_rst != 4'b0000 || !busy) begin
            $display("LOAD from host to BRAM 1: Failed on i = %d", i);
            $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
            $display("counter = %d, dd_MUX = %d", uut.counter, uut.DD);
        end
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b10_00_01_00;//LOAD from host to BRAM 2
    #10;
    for(i = 0; i < 64; i = i + 1)begin
        #10;
        if(b_en != 4'b0000 || b_en1 != 4'b0100 || b_rst != 4'b0000 || !busy) begin
            $display("LOAD from host to BRAM 2: Failed on i = %d", i);
            $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
            $display("counter = %d, dd_MUX = %d", uut.counter, uut.DD);
        end
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b11_00_01_00;//LOAD from host to BRAM 3
    #10;
    for(i = 0; i < 64; i = i + 1)begin
        #10;
        if(b_en != 4'b0000 || b_en1 != 4'b1000 || b_rst != 4'b0000 || !busy) begin
            $display("LOAD from host to BRAM 3: Failed on i = %d", i);
            $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
            $display("counter = %d, dd_MUX = %d", uut.counter, uut.DD);
        end
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    /* TESTING UNLOAD COMMMAND FOR ALL BRAMS */

    host_instruction = 8'b00_00_01_10;//UNLOAD BRAM 0 to Host
    #10;
    for(i = 0; i < 64; i = i + 1)begin
        #10;
        if(b_en != 4'b0000 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || dd_MUX != B0) begin
            $display("UNLOAD BRAM 0 to Host: Failed on i = %d", i);
            $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
            $display("counter = %d, bram_MUX = %d", uut.counter, uut.DD);
        end
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b01_00_01_10;//UNLOAD BRAM 1 to Host
    #10;
    for(i = 0; i < 64; i = i + 1)begin
        #10;
        if(b_en != 4'b0000 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || dd_MUX != B1) begin
            $display("UNLOAD BRAM 1 to Host: Failed on i = %d", i);
            $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
            $display("counter = %d, bram_MUX = %b", uut.counter, bram_MUX);
            $finish;
        end
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b10_00_01_10;//UNLOAD BRAM 2 to Host
    #10;
    for(i = 0; i < 64; i = i + 1)begin
        #10;
        if(b_en != 4'b0000 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || dd_MUX != B2) begin
            $display("UNLOAD BRAM 2 to Host: Failed on i = %d", i);
            $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
            $display("counter = %d, bram_MUX = %b", uut.counter, bram_MUX);
            $finish;
        end
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b11_00_01_10;//UNLOAD BRAM 3 to Host
    #10;
    for(i = 0; i < 64; i = i + 1)begin
        #10;
        if(b_en != 4'b0000 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || dd_MUX != B3) begin
            $display("UNLOAD BRAM 3 to Host: Failed on i = %d", i);
            $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
            $finish;
        end
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    /* TESTING COPY COMMAND FOR ALL BRAMS */
    host_instruction = 8'b01_00_01_01;//COPY BRAM 0 to BRAM 1
    #20;
    if(b_en != 4'b0010 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B0 || bram_in_MUX != 1'b1) begin
        $display("COPY BRAM 0 to BRAM 1: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b10_01_01_01;//COPY BRAM 1 to BRAM 2
    #20;
    if(b_en != 4'b0100 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B1 || bram_in_MUX != 1'b1) begin
        $display("COPY BRAM 1 to BRAM 2: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b11_10_01_01;//COPY BRAM 2 to BRAM 3
    #20;
    if(b_en != 4'b1000 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B2 || bram_in_MUX != 1'b1) begin
        $display("COPY BRAM 2 to BRAM 3: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b00_11_01_01;//COPY BRAM 3 to BRAM 0
    #20;
    if(b_en != 4'b0001 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B3 || bram_in_MUX != 1'b1) begin
        $display("COPY BRAM 3 to BRAM 0: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end
    
    /* TESTING CLEAR COMMAND FOR ALL BRAMS */
    host_instruction = 8'b00_00_01_11;//CLEAR BRAM 0
    #20;
    if(b_en != 4'b0000 || b_en1 != 4'b0000 || b_rst != 4'b0001 || !busy) begin
        $display("CLEAR BRAM 0: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b01_00_01_11;//CLEAR BRAM 1
    #20;
    if(b_en != 4'b0000 || b_en1 != 4'b0000 || b_rst != 4'b0010 || !busy) begin
        $display("CLEAR BRAM 1: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b10_00_01_11;//CLEAR BRAM 2
    #20;
    if(b_en != 4'b0000 || b_en1 != 4'b0000 || b_rst != 4'b0100 || !busy) begin
        $display("CLEAR BRAM 2: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b11_00_01_11;//CLEAR BRAM 3
    #20;
    if(b_en != 4'b0000 || b_en1 != 4'b0000 || b_rst != 4'b1000 || !busy) begin
        $display("CLEAR BRAM 3: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    /* TESTING ADD COMMAND FOR ALL BRAMS */
    host_instruction = 8'b00_01_11_00;//BRAM 0 = BRAM 0 + BRAM 1
    #20;
    if(b_en != 4'b0001 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B1 || dd_MUX != B0 || out_MUX != ADDER || bram_in_MUX != 0) begin
        $display("BRAM 0 = BRAM 0 + BRAM 1: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b01_10_11_00;//BRAM 1 = BRAM 1 + BRAM 2
    #20;
    if(b_en != 4'b0010 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B2 || dd_MUX != B1 || out_MUX != ADDER || bram_in_MUX != 0) begin
        $display("BRAM 1 = BRAM 1 + BRAM 2: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b10_11_11_00;//BRAM 2 = BRAM 2 + BRAM 3
    #20;
    if(b_en != 4'b0100 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B3 || dd_MUX != B2 || out_MUX != ADDER || bram_in_MUX != 0) begin
        $display("BRAM 0 = BRAM 0 + BRAM 1: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b11_00_11_00;//BRAM 3 = BRAM 3 + BRAM 0
    #20;
    if(b_en != 4'b1000 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B0 || dd_MUX != B3 || out_MUX != ADDER || bram_in_MUX != 0) begin
        $display("BRAM 0 = BRAM 0 + BRAM 1: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    /* TESTING SHIFT COMMAND FOR ALL BRAMS */
    host_instruction = 8'b00_01_11_01;//BRAM 0 = BRAM 0 << BRAM 1
    #20;
    if(b_en != 4'b0001 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B1 || dd_MUX != B0 || out_MUX != SHIFTER || bram_in_MUX != 0) begin
        $display("BRAM 0 = BRAM 0 << BRAM 1: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b01_10_11_01;//BRAM 1 = BRAM 1 << BRAM 2
    #20;
    if(b_en != 4'b0010 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B2 || dd_MUX != B1 || out_MUX != SHIFTER || bram_in_MUX != 0) begin
        $display("BRAM 1 = BRAM 1 << BRAM 2: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b10_11_11_01;//BRAM 2 = BRAM 2 << BRAM 3
    #20;
    if(b_en != 4'b0100 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B3 || dd_MUX != B2 || out_MUX != SHIFTER || bram_in_MUX != 0) begin
        $display("BRAM 0 = BRAM 0 << BRAM 1: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b11_00_11_01;//BRAM 3 = BRAM 3 << BRAM 0
    #20;
    if(b_en != 4'b1000 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B0 || dd_MUX != B3 || out_MUX != SHIFTER || bram_in_MUX != 0) begin
        $display("BRAM 0 = BRAM 0 << BRAM 1: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    /* TESTING SUB COMMAND FOR ALL BRAMS */
    host_instruction = 8'b00_01_11_10;//BRAM 0 = BRAM 0 - BRAM 1
    #20;
    if(b_en != 4'b0001 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B1 || dd_MUX != B0 || out_MUX != SUBTRACTOR || bram_in_MUX != 0) begin
        $display("BRAM 0 = BRAM 0 - BRAM 1: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b01_10_11_10;//BRAM 1 = BRAM 1 - BRAM 2
    #20;
    if(b_en != 4'b0010 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B2 || dd_MUX != B1 || out_MUX != SUBTRACTOR || bram_in_MUX != 0) begin
        $display("BRAM 1 = BRAM 1 - BRAM 2: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b10_11_11_10;//BRAM 2 = BRAM 2 - BRAM 3
    #20;
    if(b_en != 4'b0100 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B3 || dd_MUX != B2 || out_MUX != SUBTRACTOR || bram_in_MUX != 0) begin
        $display("BRAM 0 = BRAM 0 - BRAM 1: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b11_00_11_10;//BRAM 3 = BRAM 3 - BRAM 0
    #20;
    if(b_en != 4'b1000 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B0 || dd_MUX != B3 || out_MUX != SUBTRACTOR || bram_in_MUX != 0) begin
        $display("BRAM 0 = BRAM 0 - BRAM 1: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    /* TESTING MULT COMMAND FOR ALL BRAMS */
    host_instruction = 8'b00_01_11_11;//BRAM 0 = BRAM 0 * BRAM 1
    #20;
    if(b_en != 4'b0001 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B1 || dd_MUX != B0 || out_MUX != MULTIPLIER || bram_in_MUX != 0) begin
        $display("BRAM 0 = BRAM 0 * BRAM 1: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b01_10_11_11;//BRAM 1 = BRAM 1 * BRAM 2
    #20;
    if(b_en != 4'b0010 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B2 || dd_MUX != B1 || out_MUX != MULTIPLIER || bram_in_MUX != 0) begin
        $display("BRAM 1 = BRAM 1 * BRAM 2: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b10_11_11_11;//BRAM 2 = BRAM 2 * BRAM 3
    #20;
    if(b_en != 4'b0100 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B3 || dd_MUX != B2 || out_MUX != MULTIPLIER || bram_in_MUX != 0) begin
        $display("BRAM 0 = BRAM 0 * BRAM 1: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    host_instruction = 8'b11_00_11_11;//BRAM 3 = BRAM 3 * BRAM 0
    #20;
    if(b_en != 4'b1000 || b_en1 != 4'b0000 || b_rst != 4'b0000 || !busy || aa_MUX != B0 || dd_MUX != B3 || out_MUX != MULTIPLIER || bram_in_MUX != 0) begin
        $display("BRAM 0 = BRAM 0 * BRAM 1: Failed");
        $display("state = %h, b_en = %b, b_en1 = %b, b_rst = %b, busy = %b, rst_fsm = %b", uut.state, b_en, b_en1, b_rst, busy, uut.reset);
        $display("bram_in_MUX = %d, bram_MUX = %b", bram_in_MUX, bram_MUX);
        $finish;
    end
    while(busy) begin
        host_instruction = 8'b00000000;
        #10;
    end

    $display("All tests passed successfully");

    $finish;
end

endmodule