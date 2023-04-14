# Or Gate

![](or_gate.png)

## Files
- or_gate.v: Verilog code for or gate
- or_gate_tb.v: Verilog test case code for or gate

## To Compile

Compilation usage of iverilog:
    iverilog -o [output_path] [verilog_source_files]

To compile or_gate code:

    iverilog -o or_gate.vvp or_gate.v or_gate_tb.v

- This command will create a file called `or_gate.vvp`

## Creating a wave file

After compilation:
    
    vvp [vvp_source_file]

For this example:
    
    vvp or_gate.vvp

- This command will create a file called `or_gate.vcd`
- Then this file can be fed to a wave simulation software like gtkwave

### Note on creating a wave file

To be able to create a wave file using iverilog (Icarus Verilog)

One need to import these lines in the test code:

    $dumpfile(file_name);
    $dumpvars(0, test_module_name);

This example uses:

    $dumpfile("or_gate.vcd");
    $dumpvars(0, or_gate_tb);

![](or_gate_wave.png)
