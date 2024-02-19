<div align="center">
  <h1>VHDL</h1>
</div>

<div align="justify">
  Welcome to the VHDL lab repository, dedicated to Embedded System (III/II) projects. Before delving deeper, take a moment to go through this documentation to grasp the essence of the lab.
</div>

<div align="center">
  <b>HAPPY LEARNING!!!</b>
</div>

## Introduction

<div align="justify">
  VHDL stands for Very High-Speed Integrated Circuit Hardware Description Language. It's a language used in digital circuit design and simulation. VHDL allows engineers to model complex digital circuits, specifying their functionality and simulating their behavior before hardware implementation.
</div>

## About directories

<div align="justify">
  This repository comprises past questions from the 6th Semester Electronics exam paper taken by IoE, TU. Each folder contains a README.md file providing further details about the questions and includes the achieved output.
</div>

## Compatibility

<div align="justify">
  This lab is conducted on Linux OS - Ubuntu 22.04, using GHDL version `GHDL 1.0.0 (Ubuntu 1.0.0+dfsg-6) [Dunoon edition] Compiled with GNAT Version: 10.3.1 20211117`. Ensure your compiler and waveform viewer are compatible with your device. For optimal utilization of this repository, consider installing a virtual machine and Ubuntu OS. All code is written and executed in the Ubuntu 22.04 terminal.
</div>

## Setting Up

1. Open the terminal (Ctrl + Alt + T)
2. Enter these commands line by line to install the compiler and waveform viewer:
```bash
$ sudo apt update && sudo apt upgrade -y
$ sudo apt install ghdl
$ ghdl --version # Check the version of GHDL
$ sudo apt install gtkwave 
$ sudo apt install make
```

2. Clone the repository to the local directory
```bash
$ git clone https://github.com/Ashim-Stha/VHDL
```

## Coding in VHDL
1. You need a text editor and that can be Visual Studio Code or you can write in teh terminal using keywords: `nano`, `vim`
- Install VSC (Visual Studio Code) and start writing code for any modification
```bash
$ sudo apt install code
```
- Write in a new file with extension `.vhd` in the terminal using keywords 
```bash
$ nano newfile.vhd
$ vim newfile.vhd
```
If vim isn't install in you device, make sure you install it as: `sudo apt install vim` and code with it in the terminal.

2. Compiling the files
- Analyze: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`$ ghdl -a newfile.vhd`; &nbsp;&nbsp;-a flag represents to analyze the code
- Elaborate: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`$ ghdl -e newwfile`;&nbsp;&nbsp; -e flag represents to elaborate the design, newfile here is the design unit
- Run: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`$ ghdl -r newfile`; &nbsp;&nbsp;-r flag represents to run the simulation 
- Convert `.vhd` file to `.vcd`: &nbsp; `$ ghdl -r newfile --vcd=newfile.vcd`
- Visualize: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`$ gtkwave newfile.vcd`

Instead we created a `Makefile` with the instructions for `ghdl` on how to compile code and test the testbench:

This is the general Makefile and it varies with the filename, source code and testbench.
```bash
all:	simulation_result.vcd
simulation_result.vcd:	vhdl_source_code.vhdl	testbench_source_code.vhdl
	ghdl	-a	-fsynopsys	vhdl_source_code.vhdl
	ghdl	-a	 testbench_source_code.vhdl
	ghdl	-e	-fsynopsys testbench_entity_name
	ghdl	-r	-fsynopsys testbench_entity_name	--vcd=simulation_result.vcd	--stop-time=20us
clean:
	rm	-rf	simulation_result.vcd
```
**Example: Makefile of the FullAdder**
```bash
all:	result.vcd
result.vcd:	fullAdder.vhdl	fullAdder_tb.vhdl
	ghdl	-a	-fsynopsys	fullAdder.vhdl
	ghdl	-a	 fullAdder_tb.vhdl
	ghdl	-e	-fsynopsys fullAdder_tb
	ghdl	-r	-fsynopsys fullAdder_tb	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd
```

## Test Output
- Open the directory you want to test the output: Let's say we want to view output of the `FullAdder`. Open the terminal, I guess you are in the path:
```bash
.../VHDL$ cd fullAdder # Note: three dot represents the root path of your directory
.../VHDL/fullAdder$ make # Runs the Makefile and gives result.vcd output 
```

## About Us
<div align = 'justify'>
We are BEI (Bachelor in Electronics, Communication and Information Engineering) student in Pashchimancal Campus, IoE, TU. </div>

**COLLABORATORS:**

Ashim Shrestha (PAS077BEI007)

Chandrasekhar Giri (PAS077BEI017)

