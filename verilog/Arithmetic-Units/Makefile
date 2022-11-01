# Compiles the module, its dependencies and the test programs
adder:
	iverilog -o adder.ext design/Adder.v test/tb_Adder.v
	vvp adder.ext

clean:
	rm -f adder.ext
