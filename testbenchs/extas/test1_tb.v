`timescale 1ns/1ns
`include "test1.v"
module test_tb;
reg A, B, X;
output out1;
test t1(A, B, X, out1);
initial begin
    $dumpfile("test1.vcd");
    $dumpvars(0, test_tb);
    X=0; A=0; B=0;
    #10;
    A = 1; 
    #10;
    B=1;X=1;
    #10;
     A=0;
    #10;
end
endmodule