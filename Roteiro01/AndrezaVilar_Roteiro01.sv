module alarme(input logic P1, P2, M,
             output logic Alarme);
  always_comb Alarme <= ((P1 | P2) & M);
endmodule
