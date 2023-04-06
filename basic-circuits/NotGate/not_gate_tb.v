module not_gate_tb ();
  reg a;
  wire out;

  not_gate G1 (
      a,
      out
  );

  initial begin
    $dumpfile("not_gate.vcd");
    $dumpvars(0, not_gate_tb);
    a = 1'b0;
    #10;
    a = 1'b1;
    #10;
  end
endmodule
