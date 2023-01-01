`timescale 1ns / 1ns
`include "fullAdder.v"

module hola_tb;

reg a,b,c;
wire d,e;

fullAdder uut(a,b,c,d,e);

initial begin
    $dumpfile("fullAdder.vcd");
    $dumpvars(0, hola_tb);

    a=0;
    b=0;
    c=0;
    #20;

    a=1;
    b=0;
    c=0;
    #20;

    a=0;
    b=1;
    c=0;
    #20;

    a=1;
    b=1;
    c=0;
    #20;

    a=0;
    b=0;
    c=1;
    #20;

    a=1;
    b=0;
    c=1;
    #20;

    a=0;
    b=1;
    c=1;
    #20;

    a=1;
    b=1;
    c=1;
    #20;
    $display("test complete");
end
endmodule