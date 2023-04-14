# Not Gate

![](not_gate.png)

## Files
- not_gate.v: Verilog code for not gate
- not_gate_tb.v: Verilog test case code for not gate

## To Compile

Compilation usage of iverilog:
    iverilog -o [output_path] [verilog_source_files]

To compile not_gate code:

    iverilog -o not_gate.vvp not_gate.v not_gate_tb.v

- This command will create a file called `not_gate.vvp`

## Creating a wave file

After compilation:
    
    vvp [vvp_source_file]

For this example:
    
    vvp not_gate.vvp

- This command will create a file called `not_gate.vcd`
- Then this file can be fed to a wave simulation software like gtkwave

### Note on creating a wave file

To be able to create a wave file using iverilog (Icarus Verilog)

One need to import these lines in the test code:

    $dumpfile(file_name);
    $dumpvars(0, test_module_name);

This example uses:

    $dumpfile("not_gate.vcd");
    $dumpvars(0, not_gate_tb);

![](not_gate_wave.png)
