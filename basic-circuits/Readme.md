# And Gate

![](and_gate.png)

## Files
- and_gate.v: Verilog code for and gate
- and_gate_tb.v: Verilog test case code for and gate

## To Compile

Compilation usage of iverilog:
    iverilog -o [output_path] [verilog_source_files]

To compile and_gate code:

    iverilog -o and_gate.vvp and_gate.v and_gate_tb.v

## Creating a wave file

One need to import these lines in the test code:

    $dumpfile(file_name);
    $dumpvars(0, test_module_name);

This example uses:

    $dumpfile("and_gate.vcd");
    $dumpvars(0, and_gate_tb);

After compilation:
    
    vvp [vvp_source_file]

- vvp_source_file will be created by compiling the source code

![](and_gate_wave.png)
