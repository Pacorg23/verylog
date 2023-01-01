`include "arquitectura.v"
`timescale 1ps/1ps
module arquitectura_tb ();
    reg[7:0] A , B;
    wire[15:0] C;
    wire D, E;
    arquitectura A0(A, B, C , D, E);
    initial begin
        $dumpfile("arquitectura_tb.vcd");
        $dumpvars(0, arquitectura_tb);
        B=8'b00000000;
        A=8'b00000001;//inserta 1 en el reg0
        #2;
        A=8'b10000001;// copia el contenido del rego 0 al 1
        #2;
        B=8'b10101010;
        A=8'b10110010;//copia el contenido de input al registro 2
        #2;
        A=8'b00001010;//copia el contenido del registro 1 al registro 2
        #2;
        /*A=8'b10000000;
        #2;
        A=8'b10001001;
        #2;
        A=8'b10010010;
        #2;
        A=8'b10011011;
        #2;
        A=8'b10100100;
        #2;
        A=8'b10101101;
        #2;
        A=8'b10110110;
        #2;
        A=8'b10111111;
        #2;
        A=8'b11000000;
        #2;
        A=8'b11000001;
        #2;
        A=8'b11000010;
        #2;
        A=8'b11000011;
        #2;
        A=8'b11000100;
        #2;
        A=8'b11000101;
        #2;
        A=8'b11000110;
        #2;
        A=8'b11000111;
        #2;*/
    end
endmodule