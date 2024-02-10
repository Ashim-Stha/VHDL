all:	result.vcd
result.vcd:	fullAdder.vhdl	fullAdder_tb.vhdl
	ghdl	-a	-fsynopsys	fullAdder.vhdl
	ghdl	-a	-fsynopsys	fullAdder_tb.vhdl
	ghdl	-e	-fsynopsys	fa_test
	ghdl	-r	-fsynopsys	fa_test	--vcd=result.vcd
clean:
	rm	-rf	result.vcd