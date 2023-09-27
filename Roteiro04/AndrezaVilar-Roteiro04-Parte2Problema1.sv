module memoria_RAM_RW_4x4 (
    input logic clk,
    input logic [1:0] Addr,
    input logic SEL,
    input logic [3:0] Din,
    output logic [3:0] Dout
);

    logic [3:0] mem[0:3]; 

    always_ff @(posedge clk) begin
        if (SEL == 1'b1) begin
            // escrita na memória quando SEL = 1
            mem[Addr] <= Din;
        end else begin
            // leitura da memória quando SEL = 0
            Dout <= mem[Addr];
        end
    end

endmodule