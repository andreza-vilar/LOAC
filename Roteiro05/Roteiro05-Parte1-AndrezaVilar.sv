parameter NBITS = 3;
module detector4bits(input logic clk, reset, in_bit,
                    output logic out_bit);
  
  enum logic [NBITS-1:0] {A, B, C, D, E} state; 
  
  always_ff @(posedge clk) begin
    if (reset)
      state <= A;
    else
      unique case(state)
        A:
          if (in_bit == 0)
            state <= A;
         else
           state <= B;
        B:
          if (in_bit == 0)
            state <= A;
         else
           state <= C;
        C:
          if (in_bit == 0)
            state <= A;
         else
           state <= D;
        D:
          if (in_bit == 0)
            state <= A;
         else
           state <= E;
        E:
           state <= A;
      endcase
  end
  always_comb out_bit <= (state == E);
endmodule