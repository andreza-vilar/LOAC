// REGISTRADOR DE DESLOCAMENTO

parameter NBITS_ENTRADA = 4;
parameter NBITS_SAIDA = 4;

module REG_DESLOCAMENTO(
input logic clk, reset, SEL, Din_serie,
input logic [NBITS_ENTRADA-1:0] Din,
output logic [NBITS_SAIDA-1:0] Dout);

always_ff @ (posedge reset or posedge clk) begin
    if (reset)
      Dout <= 0;
    else 
      if(SEL)
        Dout <= {Din_serie, Dout[NBITS_ENTRADA-1:1]};
    else
        Dout <= Din;
        

end

endmodule
