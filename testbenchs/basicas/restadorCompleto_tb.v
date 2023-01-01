`timescale 1ns / 1ns
`include "restadorCompleto.v"

module restadorCompleto_tb;

reg a,b,c;
wire d,e;

restadorCompleto uut(a,b,c,d,e);

initial begin
    $dumpfile("restadorCompleto.vcd");
    $dumpvars(0, restadorCompleto_tb);

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