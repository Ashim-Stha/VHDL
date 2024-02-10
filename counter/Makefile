all: result.vcd

result.vcd: counter.vhdl counter_tb.vhdl 
	ghdl -a counter.vhdl
	ghdl -a counter_tb.vhdl
	ghdl -e counter_tb
	ghdl -r counter_tb --vcd=result.vcd

clean:
	rm -rf result.vcd