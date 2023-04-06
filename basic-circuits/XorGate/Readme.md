# Xor Gate

![](xor_gate.png)

## Files
- xor_gate.v: Verilog code for xor gate
- xor_gate_tb.v: Verilog test case code for xor gate

## To Compile

Compilation usage of iverilog:
    iverilog -o [output_path] [verilog_source_files]

To compile xor_gate code:

    iverilog -o xor_gate.vvp xor_gate.v xor_gate_tb.v

- This command will create a file called `xor_gate.vvp`

## Creating a wave file

After compilation:
    
    vvp [vvp_source_file]

For this example:
    
    vvp xor_gate.vvp

- This command will create a file called `xor_gate.vcd`
- Then this file can be fed to a wave simulation software like gtkwave

### Note on creating a wave file

To be able to create a wave file using iverilog (Icarus Verilog)

One need to import these lines in the test code:

    $dumpfile(file_name);
    $dumpvars(0, test_module_name);

This example uses:

    $dumpfile("xor_gate.vcd");
    $dumpvars(0, xor_gate_tb);

![](xor_gate_wave.png)
