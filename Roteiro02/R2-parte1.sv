module semaforo(input logic A,
             output logic VDA, VMA, VDB, VMB);

    always_comb VDA <= A;
    always_comb VDB <= ~A;
    always_comb VMA <= ~A;
    always_comb VMB <= A; 

endmodule