`include "test.v"
`timescale 1ps/1ps
module test_tb;
    reg[7:0] a, b;
    wire [7:0]c;
    test A0(a, b, c);
    initial begin
        $dumpfile("test_tb.vcd");
        $dumpvars(0, test_tb);
        a=8'b00000000;
        #1;
        a=8'b10110101;
        #1;
        a=8'b10110111;
        #1;
        a=8'b10110000;
        #1;
        a=8'b11110000;
        #1;
    end
endmodule