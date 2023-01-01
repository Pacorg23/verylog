`include "switch.v"
`timescale 1ps/1ps
module switch_tb();
    reg [7:0]A;
    reg enable;
    wire [7:0] B;
    switch A0(A, enable, B);
    initial begin
        $dumpfile("switch_tb.vcd");
        $dumpvars(0, switch_tb);
        A=8'b0001010;
        enable=0;
        #1;
        enable=1;
        #1;
        enable=0;
        #1;
    end
endmodule