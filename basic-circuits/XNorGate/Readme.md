# Xnor Gate

![](xnor_gate.png)

## Files
- xnor_gate.v: Verilog code for xnor gate
- xnor_gate_tb.v: Verilog test case code for xnor gate

## To Compile

Compilation usage of iverilog:
    iverilog -o [output_path] [verilog_source_files]

To compile xnor_gate code:

    iverilog -o xnor_gate.vvp xnor_gate.v xnor_gate_tb.v

- This command will create a file called `xnor_gate.vvp`

## Creating a wave file

After compilation:
    
    vvp [vvp_source_file]

For this example:
    
    vvp xnor_gate.vvp

- This command will create a file called `xnor_gate.vcd`
- Then this file can be fed to a wave simulation software like gtkwave

### Note on creating a wave file

To be able to create a wave file using iverilog (Icarus Verilog)

One need to import these lines in the test code:

    $dumpfile(file_name);
    $dumpvars(0, test_module_name);

This example uses:

    $dumpfile("xnor_gate.vcd");
    $dumpvars(0, xnor_gate_tb);

![](xnor_gate_wave.png)
