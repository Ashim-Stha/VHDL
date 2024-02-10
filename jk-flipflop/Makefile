all: result.vcd

result.vcd: jk.vhdl jk_tb.vhdl 
	ghdl -a jk.vhdl
	ghdl -a jk_tb.vhdl
	ghdl -e jk_tb
	ghdl -r jk_tb --vcd=result.vcd

clean:
	rm -rf result.vcd

# all: result.vcd

# result.vcd: jk.vhdl
# 	ghdl -a jk.vhdl

# clean:
# 	rm -rf *.o work-obj93.cf result.vcd
