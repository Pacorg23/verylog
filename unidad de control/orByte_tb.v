`include "orByte.v"
`timescale 1ps/1ps
module orByte_tb ();
    reg [7:0] A, B;
    wire [7:0] C;
    orByte A0(A,B,C);
    initial begin
        $dumpfile("orByte_tb.vcd");
        $dumpvars(0, orByte_tb);
        A=8'b01010101;
        B=8'b10101010;
        #2;
    end
endmodule