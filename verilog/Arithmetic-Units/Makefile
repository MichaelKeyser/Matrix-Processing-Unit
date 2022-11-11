# Compiles the module, its dependencies and the test programs
adder:
	iverilog -o adder.ext design/Adder.v test/tb_Adder.v
	vvp adder.ext

mult:
	iverilog -o mult.ext design/Multiplier.v test/tb_Multiplier.v
	vvp mult.ext

sub:
	iverilog -o sub.ext design/Subtractor.v test/tb_Subtractor.v
	vvp sub.ext

clean:
	rm -f adder.ext mult.ext sub.ext
