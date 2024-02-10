all: result.vcd

result.vcd: d.vhdl d_tb.vhdl 
	ghdl -a d.vhdl
	ghdl -a d_tb.vhdl
	ghdl -e d_tb
	ghdl -r d_tb --vcd=result.vcd

clean:
	rm -rf result.vcd