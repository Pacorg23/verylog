`include "nandByte.v"
`timescale 1ps/1ps
module nandByte_tb ();
    reg [7:0] A, B;
    wire [7:0] C;
    nandByte A0(A,B,C);
    initial begin
        $dumpfile("nandByte_tb.vcd");
        $dumpvars(0, nandByte_tb);
        A=8'b01010101;
        B=8'b10101010;
        #2;
        A=8'b10101010;
        #1;
    end
endmodule