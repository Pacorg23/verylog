`include "3bitsDec.v"
`timescale 1ps/1ps
module decodificador_tb();
    reg [2:0] ent;
    reg ena;
    wire [7:0] sal;
    decodificador A0(ent, sal, ena);
    initial begin
        $dumpfile("decodificador.vcd");
        $dumpvars(0, decodificador_tb);
        ena=0;
        ent=3'b000;
        #1;
        ena=1;
        ent=3'b000;
        #1;
        ent=3'b001;
        #1;
        ent=3'b010;
        #1;
        ent=3'b011;
        #1;
        ent=3'b100;
        #1;
        ena=0;
        ent=3'b101;
        #1;
        ent=3'b110;
        #1;
        ent=3'b111;
        #1;
    end
endmodule