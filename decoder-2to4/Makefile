all: result.vcd

result.vcd: decoder.vhdl decoder_tb.vhdl 
	ghdl -a decoder.vhdl
	ghdl -a decoder_tb.vhdl
	ghdl -e decoder_tb
	ghdl -r decoder_tb --vcd=result.vcd

clean:
	rm -rf result.vcd