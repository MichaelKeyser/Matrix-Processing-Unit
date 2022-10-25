module FSM
#(parameter = 512)
(
    input [7:0] host_instruction,
    input add1_done, add2_done, sub_done, mult_done, bram0_done, bram1_done, bram2_done, bram3_done, clk, reset,
    output FILL_ME_IN
);