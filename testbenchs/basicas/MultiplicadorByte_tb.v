`timescale 1ns/1ns
`include "MultiplicadorByte.v"
module MultiplicadorByte_tb;
    reg [7:0] A, B;
    wire [15:0] O;
    MultiplicadorByte M(A, B, O);
    initial begin
        $dumpfile("MultiplicadorByte.vcd");
        $dumpvars(0, MultiplicadorByte_tb);
        A=8'b11111111;
        B=8'b11111111;
        #10;
    end
endmodule
