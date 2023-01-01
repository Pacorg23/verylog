`include "mux.v"
`timescale 1ps/1ps
module mux_tb (
);
    reg [7:0] A, B;
    reg sel;
    wire [7:0] C;
    mux A0(A, B, sel, C);
    initial begin
        $dumpfile("mux_tb.vcd");
        $dumpvars(0, mux_tb);
        A=8'b00000000;
        B=8'b00000001;
        sel=0;
        #1;
        sel=1;
        #1;
    end
endmodule