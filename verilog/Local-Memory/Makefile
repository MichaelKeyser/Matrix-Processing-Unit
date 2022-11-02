bram:
	iverilog -o bram.ext design/bram.v test/tb_bram.v
	vvp bram.ext

clean:
	rm -f bram.ext

mcu:
	iverilog -o mcu.ext design/*.v test/tb_mcu.v
	vvp mcu.ext