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

- This command will create a file called `and_gate.vvp`

## Creating a wave file

After compilation:
    
    vvp [vvp_source_file]

For this example:
    
    vvp and_gate.vvp

- This command will create a file called `and_gate.vcd`
- Then this file can be fed to a wave simulation software like gtkwave

### Note on creating a wave file

To be able to create a wave file using iverilog (Icarus Verilog)

One need to import these lines in the test code:

    $dumpfile(file_name);
    $dumpvars(0, test_module_name);

This example uses:

    $dumpfile("and_gate.vcd");
    $dumpvars(0, and_gate_tb);

![](and_gate_wave.png)
