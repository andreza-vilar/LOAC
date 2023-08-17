module semaforo(input logic A, B, C,
             output logic VDA, VMA, VDB, VMB, VDC, VMC);

    always_comb VDA <= (~B&~C) | (A&B);
    always_comb VMA <= ~((~B&~C) | (A&B));
    always_comb VDB <= (~A&B);
    always_comb VMB <= ~(~A&B);
    always_comb VDC <= (~B&C);
    always_comb VMC <= ~(~B&C);


endmodule