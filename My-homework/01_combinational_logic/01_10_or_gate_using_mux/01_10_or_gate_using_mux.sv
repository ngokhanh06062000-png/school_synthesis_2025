//----------------------------------------------------------------------------
// Example
//----------------------------------------------------------------------------

module mux
(
  input  d0, d1,
  input  sel,
  output y
);

  assign y = sel ? d1 : d0;

endmodule

//----------------------------------------------------------------------------
// Task
//----------------------------------------------------------------------------

module or_gate_using_mux
(
    input  a,
    input  b,
    output o
);
  
  logic mux_1, mux_2;
  wire one = 1;
  wire zero = 0;
  
  mux mux_2_1 (zero, one, a, mux_1);
  mux mux_2_2 (one, one, a, mux_2);
  mux or_gate (mux_1, mux_2, b, o);
  
endmodule
