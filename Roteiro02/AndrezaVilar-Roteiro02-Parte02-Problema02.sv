module semaforo(input logic [2:0]ABC,
                 output logic VDA, VMA, VDB, VMB, VDC, VMC);

    always_comb begin
        case(ABC)
            3'b000: begin
                VDA <= 1;
                VMB <= 1;
                VDB <= 0;
                VMA <= 0;
                VMC <= 1;
                VDC <= 0;
            end

            3'b001: begin
                VDA <= 0;
                VMB <= 1;
                VDB <= 0;
                VMA <= 1;
                VMC <= 0;
                VDC <= 1;
            end
            3'b010: begin
                VDA <= 0;
                VMB <= 0;
                VDB <= 1;
                VMA <= 1;
                VMC <= 1;
                VDC <= 0;
            end
            3'b011: begin
                VDA <= 0;
                VMB <= 0;
                VDB <= 1;
                VMA <= 1;
                VMC <= 1;
                VDC <= 0;
            end
            3'b100: begin
                VDA <= 1;
                VMB <= 1;
                VDB <= 0;
                VMA <= 0;
                VMC <= 1;
                VDC <= 0;
            end
            3'b101: begin
                VDA <= 0;
                VMB <= 1;
                VDB <= 0;
                VMA <= 1;
                VMC <= 0;
                VDC <= 1;
            end
            3'b110: begin
                VDA <= 1;
                VMB <= 1;
                VDB <= 0;
                VMA <= 0;
                VMC <= 1;
                VDC <= 0;
            end
            3'b111: begin
                VDA <= 1;
                VMB <= 1;
                VDB <= 0;
                VMA <= 0;
                VMC <= 1;
                VDC <= 0;
            end


        endcase
    end

endmodule