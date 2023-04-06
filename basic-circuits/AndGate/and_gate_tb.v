module and_gate_tb ();
  reg a, b;
  wire out;

  and_gate G1 (
      a,
      b,
      out
  );

  initial begin
    $dumpfile("and_gate.vcd");
    $dumpvars(0, and_gate_tb);
    a = 1'b0;
    b = 1'b0;
    #10;
    a = 1'b0;
    b = 1'b1;
    #10;
    a = 1'b1;
    b = 1'b0;
    #10;
    a = 1'b1;
    b = 1'b1;
    #10;
  end
endmodule
