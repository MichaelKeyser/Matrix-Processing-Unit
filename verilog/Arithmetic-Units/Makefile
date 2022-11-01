# Compiles the module, its dependencies and the test programs
adder:
	iverilog -o adder design/Adder.v test/tb_Adder.v
	vvp adder

clean:
	rm -f adder
