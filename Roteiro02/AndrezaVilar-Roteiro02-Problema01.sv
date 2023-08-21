module semaforo(input logic A,
                 output logic VDA, VMA, VDB, VMB);

    always_comb begin
        if (A == 1) begin
            VDA = 1;
            VMB = 1;
            VDB = 0;
            VMA = 0;
        end
        else begin
            VDA = 0;
            VMB = 0;
            VDB = 1;
            VMA = 1;
            
        end
    end

endmodule
