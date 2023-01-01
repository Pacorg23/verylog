`timescale 1ns / 1ns
`include "hola.v"

module hola_tb;

reg A;
wire B;

hola uut(A,B);

initial begin
    $dumpfile("hola.vcd");
    $dumpvars(0, hola_tb);

    A=0;
    #20;
    A=1;
    #20;
    A=0;
    #20;

    $display("test complete");
end
endmodule
